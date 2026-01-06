unit frmFiscal_TransferenciaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Mask, RxLookup,
  Vcl.ExtCtrls, RXCtrls, DBCtrls, RXDBCtrl, Funcoes, DBGrids, Math, system.UITypes, Grids, RxCurrEdit, MemDS, RxToolEdit;

type
  TFiscal_TransferenciaEstoque = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    tSaldo: TMSQuery;
    tRegistro: TMSQuery;
    tProdutosDest: TMSQuery;
    dstProdutosDest: TDataSource;
    dstProdutosOrig: TDataSource;
    tProdutosOrig: TMSQuery;
    tProdutosDestCodigo: TIntegerField;
    tProdutosDestDescricao: TStringField;
    tProdutosDestDisponivel: TFloatField;
    tProdutosOrigCodigo: TIntegerField;
    tProdutosOrigDescricao: TStringField;
    tProdutosOrigDisponivel: TFloatField;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText6: TStaticText;
    cProdutoOrigem: TRxDBLookupCombo;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    cSaldoOrigem: TCurrencyEdit;
    StaticText3: TStaticText;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    cSaldoDestino: TCurrencyEdit;
    StaticText8: TStaticText;
    cProdutoDestino: TRxDBLookupCombo;
    cData: TDBDateEdit;
    cQuantidade: TDBEdit;
    cObs: TDBMemo;
    DBGrid2: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    cCodigoOrigem: TDBEdit;
    cCodigoDestino: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    StaticText4: TStaticText;
    cProcessoOrigem: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cProcessoDestino: TRxDBLookupCombo;
    StaticText10: TStaticText;
    DBEdit1: TDBEdit;
    tEstoque: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    DBEdit2: TDBEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    cQtdeOrigem: TCurrencyEdit;
    cUnidadeOrigem: TEdit;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    cQtdeDestino: TCurrencyEdit;
    cUnidadeDestino: TEdit;
    tFicha: TMSQuery;
    tAltera: TMSQuery;
    tItem: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cCodigoOrigemExit(Sender: TObject);
    procedure cCodigoDestinoExit(Sender: TObject);
    procedure cQuantidadeExit(Sender: TObject);
    procedure cCodigoOrigemChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fiscal_TransferenciaEstoque: TFiscal_TransferenciaEstoque;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TFiscal_TransferenciaEstoque.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFiscal_TransferenciaEstoque.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFiscal_TransferenciaEstoque.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, dmFiscal, nil, nil);
     Fiscal_TransferenciaEstoque.Release;
     Fiscal_TransferenciaEstoque := nil;
end;

procedure TFiscal_TransferenciaEstoque.FormShow(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           ProdutosTransferencia.SQL.Clear;
           ProdutosTransferencia.SQL.Add('SELECT * FROM ProdutosTransferencia WHERE Motivo = ''TRF'' ');
           ProdutosTransferencia.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Desativado <> 1) ORDER BY Processo');
           ProcessosDOC.Open; 
      End;
end;

procedure TFiscal_TransferenciaEstoque.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
   mReg,
   mOrdem: Integer;
   mUnitSaldo,
   mQtdeSaldo,
   mTotalSaldo: Real;
   mNotas:String;
begin
      With Dados, dmFiscal do begin
           // Verifica se ja houve movimento para os itens apos a data da transferência.
           if (Button = nbEdit) or (Button = nbDelete) then begin
              with Dados, dmFiscal do begin
                   tSaldo.SQL.Clear;
                   tSaldo.SQL.Add('SELECT DISTINCT TOP 10 Nota, Data, (SELECT NFE_cNF FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data) AS Chave');
                   tSaldo.SQL.Add('FROM   NotasItens');
                   tSaldo.SQL.Add('WHERE Codigo_Mercadoria IN('+ProdutosTransferenciaProduto_Entrada.AsString+', '+ProdutosTransferenciaProduto_Saida.AsString+')');
                   tSaldo.SQL.Add('  AND  Data >= :pData');
                   tSaldo.SQL.Add('  AND  Saida_Entrada =  1');
                   tSaldo.SQL.Add('  AND  Cancelada <> 1');
                   tSaldo.SQL.Add('  AND  Nfe_Denegada <> 1');
                   tSaldo.ParamByName('pData').AsDate := ProdutosTransferenciaData_Transferencia.AsDatetime;
                   tSaldo.Open;

                   if tSaldo.RecordCount > 0 then begin
                      mNotas := '';
                      while not tSaldo.Eof do begin
                            mNotas := mNotas + PoeZero(9, tSaldo.FieldByName('Nota').AsInteger)+ '  de  '+ tSaldo.FieldByName('Data').AsString+'     '+tSaldo.FieldByName('Chave').AsString+#13;
                            tSaldo.Next;
                      end;
                      if Button = nbEdit then begin
                         MessageDlg('Atenção!'+#13#13+'As seguintes notas fiscais de saída foram emitidas após esta data de transferência:'+#13+#13+mNotas+#13+
                                    'Registro não pode ser alterado sob o risco de desajustar o estoque.'+#13+#13, mtError, [mbOK], 0);
                      end else begin
                         MessageDlg('Atenção!'+#13#13+'As seguintes notas fiscais de saída foram emitidas após esta data de transferência:'+#13+#13+mNotas+#13+
                                    'Registro não pode ser excluído sob o risco de desajustar o estoque.'+#13+#13, mtError, [mbOK], 0);
                      end;
                      ProdutosTransferencia.Cancel;
                      Abort;
                   end;

                   // Verifica se existe pedidos de saída feitos em caso de nota fiscal de entrada.
                   if Notas.FieldByName('Saida_Entrada').AsInteger = 0 then begin
                      tSaldo.SQL.Clear;
                      tSaldo.SQL.Add('SELECT DISTINCT Pedido, Codigo_Mercadoria AS Codigo, SUBSTRING(Descricao_Mercadoria,1 , 100) AS Descricao');
                      tSaldo.SQL.Add('FROM   PedidosItens');
                      tSaldo.SQL.Add('WHERE Codigo_Mercadoria IN('+ProdutosTransferenciaProduto_Entrada.AsString+', '+ProdutosTransferenciaProduto_Saida.AsString+')');
                      tSaldo.SQL.Add('  AND  Saida_Entrada =  1');
                      tSaldo.Open;

                      if tSaldo.RecordCount > 0 then begin
                         mNotas := '';
                         while not tSaldo.Eof do begin
                               mNotas := mNotas + PoeZero(9, tSaldo.FieldByName('Pedido').AsInteger)+ '  Produto: '+ tSaldo.FieldByName('Codigo').AsString+'   '+tSaldo.FieldByName('Descricao').AsString+#13;
                               tSaldo.Next;
                         end;
                         if Button = nbEdit then begin
                            MessageDlg('Atenção!'+#13#13+'Existem os seguintes pedidos de saída:'+#13+#13+mNotas+#13+
                                       'Remova os itens desses pedidos para poder alterar esta transferência.'+#13+#13, mtError, [mbOK], 0);
                         end else begin
                            MessageDlg('Atenção!'+#13#13+'Existem os seguintes pedidos de saída:'+#13+#13+mNotas+#13+
                                       'Remova os itens desses pedidos para poder excluir esta transferência.'+#13+#13, mtError, [mbOK], 0);
                         end;
                         ProdutosTransferencia.Cancel;
                         Abort;
                      end;
                   end;
              end;
           end;
           If Button = nbPost then begin
              If ProdutosTransferencia.FieldByName('Produto_Entrada').AsInteger = ProdutosTransferencia.FieldByName('Produto_Saida').AsInteger then begin
                 MessageDlg('Produto de origem e de destino são iguais!', mtError, [mbOK], 0);
                 cProdutoOrigem.SetFocus;
                 Abort;
              End;
              If Trim(RemoveCaracter('/', '', ProdutosTransferencia.FieldByName('Data_Transferencia').AsString)) = '' then begin
                 MessageDlg('Data de transferência invalida!', mtError, [mbOK], 0);
                 cData.SetFocus;
                 Abort;
              End;
              If ProdutosTransferencia.FieldByName('Quantidade').AsFloat  <= 0 then begin
                 MessageDlg('Quantidade para transferência invalida!', mtError, [mbOK], 0);
                 cQuantidade.SetFocus;
                 Abort;
              End;
              If ProdutosTransferencia.FieldByName('Quantidade_Entrada').AsFloat  <= 0 then begin
                 MessageDlg('Quantidade de Entrada para transferência invalida!', mtError, [mbOK], 0);
                 cQuantidade.SetFocus;
                 Abort;
              End;
              If (Roundto(ProdutosTransferenciaQuantidade.AsFloat, -4) > Roundto(cSaldoOrigem.Value, -4)) then begin
                 MessageDlg('Quantidade para transferência maior que a disponível!', mtError, [mbOK], 0);
                 cQuantidade.SetFocus;
                 Abort;
              End;
              If ProdutosTransferencia.State = dsInsert then begin
                 tRegistro.Open;
                 ProdutosTransferencia.FieldByName('Registro').Value := tRegistro.FieldByName('Registro').AsInteger + 1;
                 tRegistro.Close;
              End;

              // Adiciona o item a ficha de estoque - (ENTRADA).
              // Apaga os itens se ja existirem.
              If ProdutosTransferencia.State = dsEdit then begin
                 tEstoque.SQL.Clear;
                 tEstoque.SQL.Add('DELETE FROM FichaEstoque WHERE Origem = ''TRF'' AND Nota = :pRegistro');
                 tEstoque.ParamByName('pRegistro').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
                 tEstoque.Execute;
              End;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
              tEstoque.SQL.Add('FROM   FichaEstoque');
              tEstoque.Open;
              mReg := tEstoque.FieldByName('Registro').AsInteger;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Ordem');
              tEstoque.SQL.Add('FROM   FichaEstoque');
              tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
              tEstoque.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Entrada.AsInteger;
              tEstoque.Open;
              mOrdem := tEstoque.FieldByName('Ordem').AsInteger;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT Qtde_Saldo     = ISNULL(Qtde_Saldo, 0)');
              tEstoque.SQL.Add('      ,Unitario_Saldo = ISNULL(Unitario_Saldo, 0)');
              tEstoque.SQL.Add('      ,Total_Saldo    = ISNULL(Total_Saldo, 0)');
              tEstoque.SQL.Add('FROM   FichaEstoque');
              tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
              tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaEstoque WHERE Codigo = :pCodigo)');
              tEstoque.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Entrada.AsInteger;
              tEstoque.Open;

              mQtdeSaldo  := 0;
              mTotalSaldo := 0;
              If tEstoque.RecordCount > 0 then begin
                 mQtdeSaldo  := tEstoque.FieldByName('Qtde_Saldo').AsFloat;
                 mTotalSaldo := tEstoque.FieldByName('Total_Saldo').AsFloat;
              End;

              FichaEstoque.SQL.Clear;
              FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Codigo = :pCodigo AND Registro = :pRegistro');
              FichaEstoque.ParamByName('pCodigo').AsInteger   := ProdutosTransferenciaProduto_Entrada.AsInteger;
              FichaEstoque.ParamByName('pRegistro').AsInteger := mReg;
              FichaEstoque.Open;

              FichaEstoque.Append;
                           FichaEstoqueRegistro.Value            := mReg;
                           FichaEstoqueItem.Value                := mOrdem;
                           FichaEstoqueCodigo.Value              := ProdutosTransferenciaProduto_Entrada.AsInteger;
                           FichaEstoqueDescricao.Value           := Copy(ProdutosDescricao.AsString, 1, 250);
                           FichaEstoqueOrigem.Value              := 'TRF';
                           FichaEstoqueNota.Value                := ProdutosTransferenciaRegistro.Value;  // Salva o registro como nota para indentificar-lo na ficha.
                           FichaEstoqueData.Value                := ProdutosTransferenciaData_Transferencia.Value;
                           FichaEstoqueUM.Value                  := ProdutosUnidade.AsString;
                           FichaEstoqueHistorico.Value           := '* TRANSFERÊNCIA DE SALDO DE ESTOQUE *';
                           FichaEstoqueEstoque.Value             := '0-EMPRESA ';
                           FichaEstoqueEmissor.Value             := 'P';
                           FichaEstoqueES.Value                  := 'E';
                           FichaEstoqueDestinatario_Codigo.Value := Menu_Principal.mEmpresa;
                           FichaEstoqueDestinatario_Nome.Value   := EmpresasRazao_Social.AsString;
                           FichaEstoqueDestinatario_CNPJ.Value   := EmpresasCNPJ.AsString;
                           FichaEstoqueFinalidade.Value          := 0;
                           FichaEstoqueQtde_Entrada.Value        := ProdutosTransferenciaQuantidade_Entrada.AsFloat;
                           FichaEstoqueUnitario_Entrada.Value    := ProdutosTransferenciaValor_Unitario.AsCurrency;
                           FichaEstoqueTotal_Entrada.Value       := ProdutosTransferenciaQuantidade_Entrada.AsFloat * ProdutosTransferenciaValor_Unitario.AsCurrency;
                           FichaEstoqueQtde_Saida.Value          := 0;
                           FichaEstoqueUnitario_Saida.Value      := 0;
                           FichaEstoqueTotal_Saida.Value         := 0;
                           FichaEstoqueQtde_Saldo.Value          := mQtdeSaldo  + ProdutosTransferenciaQuantidade_Entrada.AsFloat;
                           FichaEstoqueTotal_Saldo.Value         := mTotalSaldo + FichaEstoqueTotal_Entrada.AsCurrency;
                           if FichaEstoqueQtde_Saldo.AsCurrency <> 0 then
                              FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsCurrency / FichaEstoqueQtde_Saldo.AsCurrency
                           else
                              FichaEstoqueUnitario_Saldo.Value := 0;

                           FichaEstoqueProcesso.Value := ProdutosTransferenciaProcesso_Entrada.Value;

                           if ProcessosDOC.Locate('Processo', ProdutosTransferenciaProcesso_Entrada.Value, [loCaseInsensitive]) then begin
                              FichaEstoqueTipo_Processo.Value := ProcessosDOCModalidade_Importacao.Value;
                           end;
              FichaEstoque.Post;

              // Adiciona o item a ficha de estoque - (SAÍDA).
              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
              tEstoque.SQL.Add('FROM   FichaEstoque');
              tEstoque.Open;
              mReg := tEstoque.FieldByName('Registro').AsInteger;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Ordem');
              tEstoque.SQL.Add('FROM   FichaEstoque');
              tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
              tEstoque.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Saida.AsInteger;
              tEstoque.Open;
              mOrdem := tEstoque.FieldByName('Ordem').AsInteger;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT Qtde_Saldo     = ISNULL(Qtde_Saldo, 0)');
              tEstoque.SQL.Add('      ,Unitario_Saldo = ISNULL(Unitario_Saldo, 0)');
              tEstoque.SQL.Add('      ,Total_Saldo    = ISNULL(Total_Saldo, 0)');
              tEstoque.SQL.Add('FROM   FichaEstoque');
              tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
              tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaEstoque WHERE Codigo = :pCodigo AND Data <= :pData)');
              tEstoque.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Saida.AsInteger;
              tEstoque.ParamByName('pData').AsDate      := ProdutosTransferenciaData_Transferencia.AsDateTime;
              tEstoque.Open;

              mUnitSaldo  := 0;
              mQtdeSaldo  := 0;
              mTotalSaldo := 0;
              If tEstoque.RecordCount > 0 then begin
                 mUnitSaldo  := tEstoque.FieldByName('Unitario_Saldo').AsFloat;
                 mQtdeSaldo  := tEstoque.FieldByName('Qtde_Saldo').AsFloat;
                 mTotalSaldo := tEstoque.FieldByName('Total_Saldo').AsFloat;
              End;

              FichaEstoque.SQL.Clear;
              FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Codigo = :pCodigo AND Registro = :pRegistro');
              FichaEstoque.ParamByName('pCodigo').AsInteger   := ProdutosTransferenciaProduto_Saida.AsInteger;
              FichaEstoque.ParamByName('pRegistro').AsInteger := mReg;
              FichaEstoque.Open;

              FichaEstoque.Append;
                           FichaEstoqueRegistro.Value            := mReg;
                           FichaEstoqueItem.Value                := mOrdem;
                           FichaEstoqueCodigo.Value              := ProdutosTransferenciaProduto_Saida.AsInteger;
                           FichaEstoqueDescricao.Value           := Copy(ProdutosDescricao.AsString, 1, 250);
                           FichaEstoqueOrigem.Value              := 'TRF';
                           FichaEstoqueNota.Value                := ProdutosTransferenciaRegistro.Value;           // Salva o registro como nota para indentificar-lo na ficha.
                           FichaEstoqueData.Value                := ProdutosTransferenciaData_Transferencia.Value;                           
                           FichaEstoqueUM.Value                  := ProdutosUnidade.AsString;
                           FichaEstoqueHistorico.Value           := '* TRANSFERÊNCIA DE SALDO DE ESTOQUE *';
                           FichaEstoqueEstoque.Value             := '0-EMPRESA ';
                           FichaEstoqueEmissor.Value             := 'P';
                           FichaEstoqueES.Value                  := 'S';
                           FichaEstoqueDestinatario_Codigo.Value := Menu_Principal.mEmpresa;
                           FichaEstoqueDestinatario_Nome.Value   := EmpresasRazao_Social.AsString;
                           FichaEstoqueDestinatario_CNPJ.Value   := EmpresasCNPJ.AsString;
                           FichaEstoqueFinalidade.Value          := 0;
                           FichaEstoqueQtde_Entrada.Value        := 0;
                           FichaEstoqueUnitario_Entrada.Value    := 0;
                           FichaEstoqueTotal_Entrada.Value       := 0;
                           FichaEstoqueQtde_Saida.Value          := ProdutosTransferenciaQuantidade.AsFloat;
                           FichaEstoqueUnitario_Saida.Value      := mUnitSaldo;
                           FichaEstoqueTotal_Saida.Value         := ProdutosTransferenciaQuantidade.AsFloat * mUnitSaldo;
                           FichaEstoqueQtde_Saldo.Value          := mQtdeSaldo  - ProdutosTransferenciaQuantidade.AsFloat;
                           FichaEstoqueTotal_Saldo.Value         := mTotalSaldo - FichaEstoqueTotal_Saida.AsCurrency;
                           If (FichaEstoqueQtde_Saldo.AsCurrency > 0) then
                              FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsCurrency / FichaEstoqueQtde_Saldo.AsFloat
                           else
                              FichaEstoqueUnitario_Saldo.Value := 0;
                              
                           FichaEstoqueProcesso.Value := ProdutosTransferenciaProcesso_Saida.Value;
                           If ProcessosDOC.Locate('Processo', ProdutosTransferenciaProcesso_Saida.Value, [loCaseInsensitive]) then begin
                              FichaEstoqueTipo_Processo.Value := ProcessosDOCModalidade_Importacao.Value;
                           End;
              FichaEstoque.Post;

              // Adiciona o item a ficha de inventario - (ENTRADA).
              // Apaga os itens se ja existirem.
              If ProdutosTransferencia.State = dsEdit then begin
                 tEstoque.SQL.Clear;
                 tEstoque.SQL.Add('DELETE FROM FichaInventario WHERE Origem = ''TRF'' AND Nota = :pRegistro');
                 tEstoque.ParamByName('pRegistro').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
                 tEstoque.Execute;
              End;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
              tEstoque.SQL.Add('FROM   FichaInventario');
              tEstoque.Open;
              mReg := tEstoque.FieldByName('Registro').AsInteger;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Ordem');
              tEstoque.SQL.Add('FROM   FichaInventario');
              tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
              tEstoque.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Entrada.AsInteger;
              tEstoque.Open;
              mOrdem := tEstoque.FieldByName('Ordem').AsInteger;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT Qtde_Saldo     = ISNULL(Qtde_Saldo, 0)');
              tEstoque.SQL.Add('      ,Unitario_Saldo = ISNULL(Unitario_Saldo, 0)');
              tEstoque.SQL.Add('      ,Total_Saldo    = ISNULL(Total_Saldo, 0)');
              tEstoque.SQL.Add('FROM   FichaInventario');
              tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
              tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo)');
              tEstoque.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Entrada.AsInteger;
              tEstoque.Open;

              mQtdeSaldo  := 0;
              mTotalSaldo := 0;
              If tEstoque.RecordCount > 0 then begin
                 mQtdeSaldo  := tEstoque.FieldByName('Qtde_Saldo').AsFloat;
                 mTotalSaldo := tEstoque.FieldByName('Total_Saldo').AsFloat;
              End;

              FichaInventario.SQL.Clear;
              FichaInventario.SQL.Add('SELECT * FROM FichaInventario WHERE Codigo = :pCodigo AND Registro = :pRegistro');
              FichaInventario.ParamByName('pCodigo').AsInteger   := ProdutosTransferenciaProduto_Entrada.AsInteger;
              FichaInventario.ParamByName('pRegistro').AsInteger := mReg;
              FichaInventario.Open;

              FichaInventario.Append;
                              FichaInventarioRegistro.Value            := mReg;
                              FichaInventarioItem.Value                := mOrdem;
                              FichaInventarioCodigo.Value              := ProdutosTransferenciaProduto_Entrada.AsInteger;
                              FichaInventarioNCM.Value                 := ProdutosNCM.Value;
                              FichaInventarioDescricao.Value           := Copy(ProdutosDescricao.AsString, 1, 250);
                              FichaInventarioOrigem.Value              := 'TRF';
                              FichaInventarioNota.Value                := ProdutosTransferenciaRegistro.Value;           // Salva o registro como nota para indentificar-lo na ficha.
                              FichaInventarioData.Value                := ProdutosTransferenciaData_Transferencia.Value;
                              FichaInventarioUM.Value                  := ProdutosUnidade.AsString;
                              FichaInventarioHistorico.Value           := '* TRANSFERÊNCIA DE SALDO DE ESTOQUE *';
                              FichaInventarioEstoque.Value             := '0-EMPRESA ';
                              FichaInventarioEmissor.Value             := 'P';
                              FichaInventarioES.Value                  := 'E';
                              FichaInventarioDestinatario_Codigo.Value := EmpresasCodigo.AsInteger;
                              FichaInventarioDestinatario_Nome.Value   := EmpresasRazao_Social.AsString;
                              FichaInventarioDestinatario_CNPJ.Value   := EmpresasCNPJ.AsString;
                              FichaInventarioFinalidade.Value          := 0;
                              FichaInventarioQtde_Entrada.Value        := ProdutosTransferenciaQuantidade_Entrada.AsFloat;
                              FichaInventarioUnitario_Entrada.Value    := ProdutosTransferenciaValor_Unitario.AsCurrency;
                              FichaInventarioTotal_Entrada.Value       := ProdutosTransferenciaQuantidade_Entrada.AsFloat * ProdutosTransferenciaValor_Unitario.AsCurrency;
                              FichaInventarioQtde_Saida.Value          := 0;
                              FichaInventarioUnitario_Saida.Value      := 0;
                              FichaInventarioTotal_Saida.Value         := 0;
                              FichaInventarioQtde_Saldo.Value          := mQtdeSaldo  + ProdutosTransferenciaQuantidade_Entrada.AsFloat;
                              FichaInventarioTotal_Saldo.Value         := mTotalSaldo + FichaInventarioTotal_Entrada.AsCurrency;

                              if (FichaInventarioQtde_Saldo.AsCurrency > 0) then
                                 FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsCurrency / FichaInventarioQtde_Saldo.AsCurrency
                              else
                                 FichaInventarioUnitario_Saldo.Value := 0;

                              FichaInventarioProcesso.Value            := ProdutosTransferenciaProcesso_Entrada.Value;
                              If ProcessosDOC.Locate('Processo', ProdutosTransferenciaProcesso_Entrada.Value, [loCaseInsensitive]) then begin
                                 FichaInventarioTipo_Processo.Value := ProcessosDOCModalidade_Importacao.Value;
                              End;
              FichaInventario.Post;

              // Adiciona o item a ficha de estoque - (SAÍDA).
              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
              tEstoque.SQL.Add('FROM   FichaInventario');
              tEstoque.Open;
              mReg := tEstoque.FieldByName('Registro').AsInteger;
              
              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Ordem');
              tEstoque.SQL.Add('FROM   FichaInventario');
              tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
              tEstoque.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Saida.AsInteger;
              tEstoque.Open;
              mOrdem := tEstoque.FieldByName('Ordem').AsInteger;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT Qtde_Saldo     = ISNULL(Qtde_Saldo, 0)');
              tEstoque.SQL.Add('      ,Unitario_Saldo = ISNULL(Unitario_Saldo, 0)');
              tEstoque.SQL.Add('      ,Total_Saldo    = ISNULL(Total_Saldo, 0)');
              tEstoque.SQL.Add('FROM   FichaInventario');
              tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
              tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo AND Data <= :pData)');
              tEstoque.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Saida.AsInteger;
              tEstoque.ParamByName('pData').AsDate      := ProdutosTransferenciaData_Transferencia.AsDateTime;
              tEstoque.Open;

              mUnitSaldo  := 0;
              mQtdeSaldo  := 0;
              mTotalSaldo := 0;
              If tEstoque.RecordCount > 0 then begin
                 mUnitSaldo  := tEstoque.FieldByName('Unitario_Saldo').AsFloat;
                 mQtdeSaldo  := tEstoque.FieldByName('Qtde_Saldo').AsFloat;
                 mTotalSaldo := tEstoque.FieldByName('Total_Saldo').AsFloat;
              End;

              FichaInventario.SQL.Clear;
              FichaInventario.SQL.Add('SELECT * FROM FichaInventario WHERE Codigo = :pCodigo AND Registro = :pRegistro');
              FichaInventario.ParamByName('pCodigo').AsInteger   := ProdutosTransferenciaProduto_Saida.AsInteger;
              FichaInventario.ParamByName('pRegistro').AsInteger := mReg;
              FichaInventario.Open;
              
              FichaInventario.Append;
                              FichaInventarioRegistro.Value            := mReg;
                              FichaInventarioItem.Value                := mOrdem;
                              FichaInventarioCodigo.Value              := ProdutosTransferenciaProduto_Saida.AsInteger;
                              FichaInventarioNCM.Value                 := ProdutosNCM.Value;
                              FichaInventarioDescricao.Value           := Copy(ProdutosDescricao.AsString, 1, 250);
                              FichaInventarioOrigem.Value              := 'TRF';
                              FichaInventarioNota.Value                := ProdutosTransferenciaRegistro.Value;           // Salva o registro como nota para indentificar-lo na ficha.
                              FichaInventarioData.Value                := ProdutosTransferenciaData_Transferencia.Value;
                              FichaInventarioUM.Value                  := ProdutosUnidade.AsString;
                              FichaInventarioHistorico.Value           := '* TRANSFERÊNCIA DE SALDO DE ESTOQUE *';
                              FichaInventarioEstoque.Value             := '0-EMPRESA ';
                              FichaInventarioEmissor.Value             := 'P';
                              FichaInventarioES.Value                  := 'S';
                              FichaInventarioDestinatario_Codigo.Value := Menu_Principal.mEmpresa;
                              FichaInventarioDestinatario_Nome.Value   := EmpresasRazao_Social.AsString;
                              FichaInventarioDestinatario_CNPJ.Value   := EmpresasCNPJ.AsString;
                              FichaInventarioFinalidade.Value          := 0;
                              FichaInventarioQtde_Entrada.Value        := 0;
                              FichaInventarioUnitario_Entrada.Value    := 0;
                              FichaInventarioTotal_Entrada.Value       := 0;
                              FichaInventarioQtde_Saida.Value          := ProdutosTransferenciaQuantidade.AsFloat;
                              FichaInventarioUnitario_Saida.Value      := mUnitSaldo;
                              FichaInventarioTotal_Saida.Value         := ProdutosTransferenciaQuantidade.AsFloat * mUnitSaldo;
                              FichaInventarioQtde_Saldo.Value          := mQtdeSaldo  - ProdutosTransferenciaQuantidade.AsFloat;
                              FichaInventarioTotal_Saldo.Value         := mTotalSaldo - FichaInventarioTotal_Saida.AsCurrency;
                              If (FichaInventarioQtde_Saldo.AsCurrency > 0) then
                                 FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsCurrency / FichaInventarioQtde_Saldo.AsFloat
                              else
                                 FichaInventarioUnitario_Saldo.Value := 0;

                              FichaInventarioProcesso.Value := ProdutosTransferenciaProcesso_Saida.Value;
                              If ProcessosDOC.Locate('Processo', ProdutosTransferenciaProcesso_Saida.Value, [loCaseInsensitive]) then begin
                                 FichaInventarioTipo_Processo.Value := ProcessosDOCModalidade_Importacao.Value;
                              End;
              FichaInventario.Post;
           End;

           // Remove os itens da ficha de estoque e da ficha de inventario.
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir esta transferência?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
                 Abort
              end;
              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('DELETE FROM FichaEstoque WHERE Origem = ''TRF'' AND Nota = :pRegistro');
              tEstoque.ParamByName('pRegistro').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
              tEstoque.Execute;
              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('DELETE FROM FichaInventario WHERE Origem = ''TRF'' AND Nota = :pRegistro');
              tEstoque.ParamByName('pRegistro').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
              tEstoque.Execute;
           end;

           // Reprocessa a ficha de estoque e inventario para os produtos envolvidos.
           if (Button = nbPost) or (Button = nbDelete) then begin
              Janela_Processamento := TJanela_Processamento.Create(Self);
              Janela_Processamento.lProcesso.Caption := 'Recalculando Ficha de Inventario...';
              Janela_Processamento.Show;
              AtualizaInv(ProdutosTransferenciaProduto_Entrada.AsString+', '+ProdutosTransferenciaProduto_Saida.AsString);
              Janela_Processamento.lProcesso.Caption := 'Recalculando Ficha de Estoque...';
              AtualizaEst(ProdutosTransferenciaProduto_Entrada.AsString+', '+ProdutosTransferenciaProduto_Saida.AsString);
              Janela_Processamento.Close;
              Beep;
           end;
      end;
end;

procedure TFiscal_TransferenciaEstoque.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      ActiveControl := nil;

      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         Panel2.Enabled := true;
         cProcessoOrigem.SetFocus;
         if Button = nbInsert then begin
            dmFiscal.ProdutosTransferenciaInventario.Value := true;
            dmFiscal.ProdutosTransferenciaEstoque.Value    := true;
            dmFiscal.ProdutosTransferenciaMotivo.Value     := 'TRF';
         end;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor  := crSQLWait;
         Panel2.Enabled := False;
         Screen.Cursor  := crDefault;
      end;
end;

procedure TFiscal_TransferenciaEstoque.cCodigoOrigemExit(Sender: TObject);
begin
     tSaldo.SQL.Clear;
     tSaldo.SQL.Add('SELECT (ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) +');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Estoque = 1)), 0) +');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada   = :pCodigo) ), 0) -');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) ), 0)) -');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = :pCodigo) ), 0)');
     tSaldo.SQL.Add('        AS Disponivel');
     tSaldo.ParamByName('pCodigo').AsInteger := dmFiscal.ProdutosTransferencia.FieldByName('Produto_Saida').AsInteger;
     tSaldo.Open;
     cSaldoOrigem.Value := tSaldo.FieldByName('Disponivel').Value;

     With Dados, dmFiscal do begin
          if ProdutosTransferencia.State = dsEdit then begin
             cSaldoOrigem.Value := cSaldoOrigem.Value + ProdutosTransferencia.fieldByName('Quantidade').AsFloat;
          end;
     end;
     cUnidadeOrigem.Text := Dados.ProdutosUnidade.AsString;
     cQtdeOrigem.Value   := Dados.ProdutosQuantidade_Unidade.Value;
end;

procedure TFiscal_TransferenciaEstoque.cCodigoDestinoExit(Sender: TObject);
begin
     tSaldo.SQL.Clear;
     tSaldo.SQL.Add('SELECT (ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) +');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Estoque = 1)), 0) +');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada   = :pCodigo) ), 0) -');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) ), 0)) -');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = :pCodigo) ), 0)');
     tSaldo.SQL.Add('        AS Disponivel');
     tSaldo.ParamByName('pCodigo').AsInteger := dmFiscal.ProdutosTransferencia.FieldByName('Produto_Entrada').AsInteger;
     tSaldo.Open;
     cSaldoDestino.Value := tSaldo.FieldByName('Disponivel').Value;

     cUnidadeDestino.Text := Dados.ProdutosUnidade.AsString;
     cQtdeDestino.Value   := Dados.ProdutosQuantidade_Unidade.Value;
end;

procedure TFiscal_TransferenciaEstoque.cQuantidadeExit(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          Produtos.Locate('Codigo', Strtoint(cCodigoDestino.Text), [loCaseInsensitive]);
          if ProdutosQuantidade_Unidade.AsInteger > 0 then begin
             if ProdutosTipo_Conversao.Value = 'D' then begin
                ProdutosTransferenciaQuantidade_Entrada.Value := ProdutosTransferenciaQuantidade.Value / ProdutosQuantidade_Unidade.Value;
             end else begin
                ProdutosTransferenciaQuantidade_Entrada.Value := ProdutosTransferenciaQuantidade.Value * ProdutosQuantidade_Unidade.Value;
             end;
          end;
     end;
end;

procedure TFiscal_TransferenciaEstoque.cCodigoOrigemChange(Sender: TObject);
begin
     with dados, dmFiscal do begin
          if (ProdutosTransferencia.state <> dsEdit) and (ProdutosTransferencia.state <> dsInsert) then begin
             tSaldo.SQL.Clear;
             tSaldo.SQL.Add('SELECT (ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) +');
             tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Estoque = 1)), 0) +');
             tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada   = :pCodigo) ), 0) -');
             tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
             tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) ), 0)) -');
             tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = :pCodigo) ), 0)');
             tSaldo.SQL.Add('        AS Disponivel');
             tSaldo.ParamByName('pCodigo').AsInteger := ProdutosTransferencia.FieldByName('Produto_Saida').AsInteger;
             tSaldo.Open;
             cSaldoOrigem.Value := tSaldo.FieldByName('Disponivel').Value;

             if produtos.Active then begin
                produtos.locate('codigo', produtostransferencia.fieldbyname('produto_saida').AsInteger, [locaseinsensitive]);
                cUnidadeOrigem.Text := ProdutosUnidade.AsString;
                cQtdeOrigem.Value   := ProdutosQuantidade_Unidade.Value;
             end;
          end;
     end;
end;


end.
