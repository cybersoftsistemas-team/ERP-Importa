unit frmFiscal_AberturaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls,
   RxLookup, Vcl.ExtCtrls, RXCtrls, DBCtrls, RXDBCtrl, Funcoes, DBGrids, system.UITypes, Grids, Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TFiscal_AberturaEstoque = class(TForm)
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
    StaticText2: TStaticText;
    cSaldoOrigem: TCurrencyEdit;
    StaticText3: TStaticText;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    cData: TDBDateEdit;
    cQuantidade: TDBEdit;
    cObs: TDBMemo;
    DBGrid2: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    cCodigoOrigem: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    StaticText4: TStaticText;
    cProcessoOrigem: TRxDBLookupCombo;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    tItem: TMSQuery;
    cFiltroProd: TEdit;
    StaticText5: TStaticText;
    cFiltroproc: TEdit;
    StaticText8: TStaticText;
    Button1: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cCodigoOrigemExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fiscal_AberturaEstoque: TFiscal_AberturaEstoque;

implementation

uses frmDados, frmDMFiscal, 
  frmMenu_Principal;

{$R *.dfm}

procedure TFiscal_AberturaEstoque.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFiscal_AberturaEstoque.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFiscal_AberturaEstoque.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Fiscal_AberturaEstoque.Release;
     Fiscal_AberturaEstoque := nil;
end;

procedure TFiscal_AberturaEstoque.FormShow(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           ProdutosTransferencia.SQL.Clear;
           ProdutosTransferencia.SQL.Add('SELECT * FROM ProdutosTransferencia WHERE Motivo = ''A'' ');
           ProdutosTransferencia.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE Desativado <> 1 ORDER BY Processo');
           ProcessosDOC.Open; 
      End;
end;

procedure TFiscal_AberturaEstoque.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados, dmFiscal do begin
           If Button = nbPost then begin
              ProdutosTransferenciaQuantidade_Entrada.Value := ProdutosTransferenciaQuantidade.Value;

              If Trim(RemoveCaracter('/', '', ProdutosTransferencia.FieldByName('Data_Transferencia').AsString)) = '' then begin
                 MessageDlg('Data de entrada invalida!', mtError, [mbOK], 0);
                 cData.SetFocus;
                 Abort;
              End;
              If ProdutosTransferencia.State = dsInsert then begin
                 tRegistro.close;
                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosTransferencia');
                 tRegistro.Open;
                 ProdutosTransferencia.FieldByName('Registro').Value := tRegistro.FieldByName('Registro').AsInteger + 1;
                 tRegistro.Close;
              End;

              // Adiciona os itens a ficha de Estoque/Inventario.
              // Ficha de estoque.
              Empresas.SQL.Clear;
              Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
              Empresas.Open;

              If ProdutosTransferenciaEstoque.AsBoolean then begin
                 FichaEstoque.SQL.Clear;
                 FichaEstoque.SQL.Add('DELETE FROM FichaEstoque WHERE Nota = :pReg AND Data = :pData AND Origem = ''TRF'' ');
                 FichaEstoque.ParamByName('pReg').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
                 FichaEstoque.ParamByName('pData').AsDate   := ProdutosTransferenciaData_Transferencia.AsDateTime;
                 FichaEstoque.Execute;
                 FichaEstoque.SQL.Clear;
                 FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Nota = :pReg AND Data = :pData AND Origem = ''TRF'' ');
                 FichaEstoque.ParamByName('pReg').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
                 FichaEstoque.ParamByName('pData').AsDate   := ProdutosTransferenciaData_Transferencia.AsDateTime;
                 FichaEstoque.Open;

                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM FichaEstoque');
                 tRegistro.Open;

                 tItem.SQL.Clear;
                 tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM FichaEstoque WHERE Codigo = :pCodigo');
                 tItem.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Entrada.AsInteger;
                 tItem.Open;
                 
                 tEstoque.SQL.Clear;
                 tEstoque.SQL.Add('SELECT Qtde_Saldo');
                 tEstoque.SQL.Add('      ,Unitario_Saldo');
                 tEstoque.SQL.Add('      ,Total_Saldo');
                 tEstoque.SQL.Add('FROM   FichaEstoque');
                 tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                 tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaEstoque WHERE Codigo = :pCodigo)');
                 tEstoque.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Entrada.AsInteger;
                 tEstoque.Open;

                 FichaEstoque.Append;
                              FichaEstoqueRegistro.Value            := tRegistro.FieldByName('Registro').AsInteger;
                              FichaEstoqueItem.Value                := tItem.FieldByName('Item').AsInteger;
                              FichaEstoqueCodigo.Value              := ProdutosTransferenciaProduto_Entrada.AsInteger;
                              FichaEstoqueDescricao.Value           := ProdutosDescricao.AsString;
                              FichaEstoqueUM.Value                  := ProdutosUnidade.AsString;
                              FichaEstoqueHistorico.Value           := '* SALDO DE ABERTURA DE ESTOQUE *';
                              FichaEstoqueEstoque.Value             := '0-EMPRESA';
                              FichaEstoqueEmissor.Value             := 'P';
                              FichaEstoqueNota.Value                := ProdutosTransferenciaRegistro.AsInteger;
                              FichaEstoqueData.Value                := ProdutosTransferenciaData_Transferencia.Value;
                              FichaEstoqueES.Value                  := 'E';
                              FichaEstoqueDestinatario_Codigo.Value := EmpresasCodigo.AsInteger;
                              FichaEstoqueDestinatario_Nome.Value   := EmpresasRazao_Social.AsString;
                              FichaEstoqueDestinatario_CNPJ.Value   := EmpresasCNPJ.Value;
                              FichaEstoqueFinalidade.Value          := 0;
                              FichaEstoqueQtde_Entrada.Value        := ProdutosTransferenciaQuantidade_Entrada.AsFloat;
                              FichaEstoqueUnitario_Entrada.Value    := ProdutosTransferenciaValor_Unitario.Value;
                              FichaEstoqueTotal_Entrada.Value       := ProdutosTransferenciaQuantidade_Entrada.AsFloat * ProdutosTransferenciaValor_Unitario.Value;
                              FichaEstoqueQtde_Saida.Value          := 0;
                              FichaEstoqueUnitario_Saida.Value      := 0;
                              FichaEstoqueTotal_Saida.Value         := 0;
                              If tEstoque.RecordCount > 0 then begin
                                 FichaEstoqueQtde_Saldo.Value  := tEstoque.FieldByName('Qtde_Saldo').AsFloat  + ProdutosTransferenciaQuantidade_Entrada.AsFloat;
                                 FichaEstoqueTotal_Saldo.Value := tEstoque.FieldByName('Total_Saldo').AsFloat + FichaEstoqueTotal_Entrada.AsFloat;
                              end else begin
                                 FichaEstoqueQtde_Saldo.Value  := ProdutosTransferenciaQuantidade_Entrada.AsFloat;
                                 FichaEstoqueTotal_Saldo.Value := FichaEstoqueTotal_Entrada.AsFloat;
                              End;
                              FichaEstoqueUnitario_Saldo.Value := 0;
                              if FichaEstoqueQtde_Saldo.AsFloat > 0 then begin
                                 FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsFloat / FichaEstoqueQtde_Saldo.AsFloat;
                              end;   
                              FichaEstoqueOrigem.Value         := 'TRF';
                              FichaEstoqueProcesso.Value       := ProdutosTransferenciaProcesso_Entrada.Value;
                              If ProcessosDOC.Locate('Processo', ProdutosTransferenciaProcesso_Entrada.AsString, [loCaseInsensitive]) then begin
                                 FichaEstoqueTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                              End;
                 FichaEstoque.Post;
              End;

              // Ficha de inventario.
              If ProdutosTransferenciaInventario.AsBoolean then begin
                 FichaInventario.SQL.Clear;
                 FichaInventario.SQL.Add('DELETE FROM FichaInventario WHERE Nota = :pReg AND Data = :pData AND Origem = ''TRF'' ');
                 FichaInventario.ParamByName('pReg').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
                 FichaInventario.ParamByName('pData').AsDate   := ProdutosTransferenciaData_Transferencia.AsDateTime;
                 FichaInventario.Execute;
                 FichaInventario.SQL.Clear;
                 FichaInventario.SQL.Add('SELECT * FROM FichaInventario WHERE Nota = :pReg AND Data = :pData AND Origem = ''TRF'' ');
                 FichaInventario.ParamByName('pReg').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
                 FichaInventario.ParamByName('pData').AsDate   := ProdutosTransferenciaData_Transferencia.AsDateTime;
                 FichaInventario.Open;

                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM FichaInventario');
                 tRegistro.Open;

                 tItem.SQL.Clear;
                 tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM FichaInventario WHERE Codigo = :pCodigo');
                 tItem.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Entrada.AsInteger;
                 tItem.Open;

                 tEstoque.SQL.Clear;
                 tEstoque.SQL.Add('SELECT Qtde_Saldo');
                 tEstoque.SQL.Add('      ,Unitario_Saldo');
                 tEstoque.SQL.Add('      ,Total_Saldo');
                 tEstoque.SQL.Add('FROM   FichaInventario');
                 tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                 tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo)');
                 tEstoque.ParamByName('pCodigo').AsInteger := ProdutosTransferenciaProduto_Entrada.AsInteger;
                 tEstoque.Open;

                 FichaInventario.Append;
                                 FichaInventarioRegistro.Value            := tRegistro.FieldByName('Registro').AsInteger;
                                 FichaInventarioItem.Value                := tItem.FieldByName('Item').AsInteger;
                                 FichaInventarioCodigo.Value              := ProdutosTransferenciaProduto_Entrada.AsInteger;
                                 FichaInventarioNCM.Value                 := ProdutosNCM.Value;
                                 FichaInventarioDescricao.Value           := ProdutosDescricao.AsString;
                                 FichaInventarioUM.Value                  := ProdutosUnidade.AsString;
                                 FichaInventarioHistorico.Value           := '* SALDO DE ABERTURA DE ESTOQUE *';
                                 FichaInventarioEstoque.Value             := '0-EMPRESA';
                                 FichaInventarioEmissor.Value             := 'P';
                                 FichaInventarioNota.Value                := ProdutosTransferenciaRegistro.AsInteger;
                                 FichaInventarioData.Value                := ProdutosTransferenciaData_Transferencia.Value;
                                 FichaInventarioES.Value                  := 'E';
                                 FichaInventarioDestinatario_Codigo.Value := EmpresasCodigo.AsInteger;
                                 FichaInventarioDestinatario_Nome.Value   := EmpresasRazao_Social.AsString;
                                 FichaInventarioDestinatario_CNPJ.Value   := EmpresasCNPJ.Value;
                                 FichaInventarioFinalidade.Value          := 0;
                                 FichaInventarioQtde_Entrada.Value        := ProdutosTransferenciaQuantidade_Entrada.AsFloat;
                                 FichaInventarioUnitario_Entrada.Value    := ProdutosTransferenciaValor_Unitario.Value;
                                 FichaInventarioTotal_Entrada.Value       := ProdutosTransferenciaQuantidade_Entrada.AsFloat * ProdutosTransferenciaValor_Unitario.Value;
                                 FichaInventarioQtde_Saida.Value          := 0;
                                 FichaInventarioUnitario_Saida.Value      := 0;
                                 FichaInventarioTotal_Saida.Value         := 0;
                                 If tEstoque.RecordCount > 0 then begin
                                    FichaInventarioQtde_Saldo.Value  := tEstoque.FieldByName('Qtde_Saldo').AsFloat  + ProdutosTransferenciaQuantidade_Entrada.AsFloat;
                                    FichaInventarioTotal_Saldo.Value := tEstoque.FieldByName('Total_Saldo').AsFloat + FichaInventarioTotal_Entrada.AsFloat;
                                 end else begin
                                    FichaInventarioQtde_Saldo.Value  := ProdutosTransferenciaQuantidade_Entrada.AsFloat;
                                    FichaInventarioTotal_Saldo.Value := FichaInventarioTotal_Entrada.AsFloat;
                                 End;
                                 FichaInventarioUnitario_Saldo.Value := 0;                                 
                                 if FichaInventarioQtde_Saldo.AsFloat > 0 then begin
                                    FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsFloat / FichaInventarioQtde_Saldo.AsFloat;
                                 end;
                                 FichaInventarioOrigem.Value         := 'TRF';
                                 FichaInventarioProcesso.Value       := ProdutosTransferenciaProcesso_Entrada.Value;
                                 If ProcessosDOC.Locate('Processo', ProdutosTransferenciaProcesso_Entrada.AsString, [loCaseInsensitive]) then begin
                                    FichaInventarioTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                 End;
                 FichaInventario.Post;
              End;
           End;

           // Delete o item da ficha de Estoque/Inventario.
           If Button = nbDelete then begin
              FichaEstoque.SQL.Clear;
              FichaEstoque.SQL.Add('DELETE FROM FichaEstoque WHERE Nota = :pReg AND Data = :pData AND Origem = ''TRF'' ');
              FichaEstoque.ParamByName('pReg').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
              FichaEstoque.ParamByName('pData').AsDate   := ProdutosTransferenciaData_Transferencia.AsDateTime;
              FichaEstoque.Execute;
              FichaEstoque.SQL.Clear;
              FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Nota = :pReg AND Data = :pData AND Origem = ''TRF'' ');
              FichaEstoque.ParamByName('pReg').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
              FichaEstoque.ParamByName('pData').AsDate   := ProdutosTransferenciaData_Transferencia.AsDateTime;
              FichaEstoque.Open;
              
              FichaInventario.SQL.Clear;
              FichaInventario.SQL.Add('DELETE FROM FichaInventario WHERE Nota = :pReg AND Data = :pData AND Origem = ''TRF'' ');
              FichaInventario.ParamByName('pReg').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
              FichaInventario.ParamByName('pData').AsDate   := ProdutosTransferenciaData_Transferencia.AsDateTime;
              FichaInventario.Execute;
              FichaInventario.SQL.Clear;
              FichaInventario.SQL.Add('SELECT * FROM FichaInventario WHERE Nota = :pReg AND Data = :pData AND Origem = ''TRF'' ');
              FichaInventario.ParamByName('pReg').AsInteger := ProdutosTransferenciaRegistro.AsInteger;
              FichaInventario.ParamByName('pData').AsDate   := ProdutosTransferenciaData_Transferencia.AsDateTime;
              FichaInventario.Open;
           End;

           with Produtos do begin
                Edit;
                   FieldByName('Desativado').Value := false;
                Post;
           end;
      End;
end;

procedure TFiscal_AberturaEstoque.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      ActiveControl := nil;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := true;
         cProcessoOrigem.SetFocus;
         If Button = nbInsert then begin
            dmFiscal.ProdutosTransferenciaInventario.Value := true;
            dmFiscal.ProdutosTransferenciaEstoque.Value    := true;
            dmFiscal.ProdutosTransferenciaMotivo.Value     := 'A';
         End;
      End;

      // Reprocessa o valor do estoque minímo do produto por percentual caso esteja informado o percentual minímo no cadastro.
      If (Button = nbPost) or (Button = nbDelete) then Begin
         With Dados do begin
              If ProdutosEstoque_MinimoPerc.AsFloat > 0 then begin
                 Produtos.Edit;
                          ProdutosEstoque_Minimo.Value := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger), ProdutosEstoque_MinimoPerc.AsFloat);
                 Produtos.Post;
              End;
         End;
      End;

      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         dmFiscal.ProdutosTransferencia.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TFiscal_AberturaEstoque.Button1Click(Sender: TObject);
begin
      with dmFiscal, ProdutosTransferencia do begin
           sql.Clear;
           sql.Add('SELECT * FROM ProdutosTransferencia WHERE Motivo = ''A'' ');
           if trim(cFiltroProd.Text) <> '' then begin
              sql.Add('and Produto_Entrada = '+cFiltroProd.text);
           end;
           if trim(cFiltroProc.Text) <> '' then begin
              sql.Add('and Processo_Entrada = '+quotedstr(cFiltroProc.text));
           end;
           Open;
      end;
end;

procedure TFiscal_AberturaEstoque.cCodigoOrigemExit(Sender: TObject);
begin
     tSaldo.SQL.Clear;
     tSaldo.SQL.Add('SELECT (ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) +');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Estoque = 1)), 0) +');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Entrada   = :pCodigo) ), 0) -');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) ), 0)) -');
     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = :pCodigo) ), 0)');
     tSaldo.SQL.Add('        AS Disponivel');
     tSaldo.ParamByName('pCodigo').AsInteger := dmFiscal.ProdutosTransferencia.FieldByName('Produto_Saida').AsInteger;
     tSaldo.Open;
     cSaldoOrigem.Value := tSaldo.FieldByName('Disponivel').Value;
end;

end.
