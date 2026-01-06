unit frmNotaFiscal_TerceirosEfetivar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Mask, Vcl.StdCtrls, Vcl.ExtCtrls, DB, DBAccess, MSAccess, Funcoes,
  RxLookup, RxCurrEdit, RxToolEdit, system.UITypes, MemDS;

type
  TNotaFiscal_TerceirosEfetivar = class(TForm)
    Panel1: TPanel;
    bCancelar: TButton;
    bSalvar: TButton;
    StaticText1: TStaticText;
    StaticText11: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cNumero: TCurrencyEdit;
    cEmissao: TDateEdit;
    cEntrada: TDateEdit;
    cChave: TMaskEdit;
    tItens: TMSQuery;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cSerie: TMaskEdit;
    cModelo: TRxDBLookupCombo;
    StaticText6: TStaticText;
    cProtocolo: TMaskEdit;
    tEstoque: TMSQuery;
    tItem: TMSQuery;
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSalvarClick(Sender: TObject);
    procedure cModeloChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_TerceirosEfetivar: TNotaFiscal_TerceirosEfetivar;

implementation

uses frmDMFiscal, frmDados;

{$R *.dfm}

procedure TNotaFiscal_TerceirosEfetivar.bCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TNotaFiscal_TerceirosEfetivar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     NotaFiscal_TerceirosEfetivar.Release;
     NotaFiscal_TerceirosEfetivar := nil;
end;

procedure TNotaFiscal_TerceirosEfetivar.bSalvarClick(Sender: TObject);
Var
   mReg: Integer;
begin
      With dmFiscal, Dados do begin
           If cNumero.AsInteger <= 0 then begin
              MessageDlg('Número de notas fiscal informado inválido', mtError, [mbOK], 0);
              cNumero.SetFocus;
              Abort;
           End;
           If DataLimpa(cEmissao.Text) then begin
              MessageDlg('Data de emissão é obrigatória.', mtError, [mbOK], 0);
              cEmissao.SetFocus;
              Abort;
           End;
           If DataLimpa(cEntrada.Text) then begin
              MessageDlg('Data de entrada é obrigatória.', mtError, [mbOK], 0);
              cEntrada.SetFocus;
              Abort;
           End;

           // Atualiza os itens com o novo número da nota fiscal.
           tItens.SQL.Clear;
           tItens.SQL.Add('UPDATE NotasTerceirosItens SET Nota = :pNota');
           tItens.SQL.Add('                              ,Data_Emissao = :pDataEmissao');
           tItens.SQL.Add('                              ,Data_Entrada = :pDataEntrada');
           tItens.SQL.Add('WHERE(Nota = :pNotaProv) AND (Data_Entrada = :pDataProv)');
           tItens.ParamByName('pNota').AsInteger     := cNumero.ASInteger;
           tItens.ParamByName('pDataEmissao').AsDate := cEmissao.Date;
           tItens.ParamByName('pDataEntrada').AsDate := cEntrada.Date;
           tItens.ParamByName('pNotaProv').AsInteger := NotasTerceirosNota.Value;
           tItens.ParamByName('pDataProv').AsDate    := NotasTerceirosData_Entrada.Value;
           tItens.Execute;

           // Salvando o cabeçalho da nota fiscal.
           NotasTerceiros.Edit;
                          NotasTerceirosNota.Value          := cNumero.AsInteger;
                          NotasTerceirosData_Emissao.Value  := cEmissao.Date;
                          NotasTerceirosData_Entrada.Value  := cEntrada.Date;
                          NotasTerceirosNFe_cNF.Value       := cChave.Text;
                          NotasTerceirosProvisoria.Value    := false;
                          NotasTerceirosModelo.Value        := ModelosDocumentosModelo.AsString;
                          NotasTerceirosSerie.Value         := cSerie.Text;
                          NotasTerceirosNFe_cNF.Value       := cChave.Text;
                          NotasTerceirosNFe_Protocolo.Value := cProtocolo.Text;
           NotasTerceiros.Post;

           ReferenciasFiscais.SQL.Clear;
           ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE Codigo = :pCodigo');
           ReferenciasFiscais.ParamByName('pCodigo').AsInteger := NotasTerceirosReferencia_Fiscal.AsInteger;
           ReferenciasFiscais.Open;

           NotasTerceirosItens.SQL.Clear;
           NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn');
           NotasTerceirosItens.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
           NotasTerceirosItens.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
           NotasTerceirosItens.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.Value;
           NotasTerceirosItens.Open;

           // Adiciona todos os itens a ficha de estoque se a referencia fiscal movimenta estoque.
           If (ReferenciasFiscaisMovimenta_Estoque.AsBoolean) then begin
              FichaEstoque.SQL.Clear;
              FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
              FichaEstoque.ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
              FichaEstoque.ParamByName('pData').AsDate    := NotasTerceirosData_Entrada.AsDateTime;
              FichaEstoque.ParamByName('pDest').AsInteger := NotasTerceirosFornecedor.AsInteger;
              FichaEstoque.Open;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
              tEstoque.SQL.Add('FROM   FichaEstoque');
              tEstoque.Open;
              mReg := tEstoque.FieldByName('Registro').AsInteger;

              NotasTerceirosItens.First;
              While not NotasTerceirosItens.Eof do begin
                    tEstoque.SQL.Clear;
                    tEstoque.SQL.Add('SELECT Qtde_Saldo');
                    tEstoque.SQL.Add('      ,Unitario_Saldo');
                    tEstoque.SQL.Add('      ,Total_Saldo');
                    tEstoque.SQL.Add('FROM   FichaEstoque');
                    tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                    tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaEstoque WHERE Codigo = :pCodigo)');
                    tEstoque.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                    tEstoque.Open;

                    tItem.SQL.Clear;
                    tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM FichaEstoque WHERE Codigo = :pCodigo');
                    tItem.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.Value;
                    tItem.Open;

                    FichaEstoque.Append;
                                 FichaEstoqueRegistro.Value  := mReg;
                                 FichaEstoqueItem.Value      := tItem.FieldByName('Item').AsInteger;
                                 FichaEstoqueCodigo.Value    := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                                 FichaEstoqueDescricao.Value := NotasTerceirosItensDescricao_Mercadoria.AsString;
                                 FichaEstoqueUM.Value        := NotasTerceirosItensUnidade_Medida.AsString;
                                 FichaEstoqueCFOP.Value      := NotasTerceirosItensNatureza_Codigo.AsString;

                                 Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                      0: FichaEstoqueHistorico.Value := 'COMPRA - REVENDA';
                                      1: FichaEstoqueHistorico.Value := 'COMPRA - CONSUMO';
                                      2: FichaEstoqueHistorico.Value := 'DEVOLUÇÃO';
                                      3: FichaEstoqueHistorico.Value := 'EXPORTAÇÃO';
                                      4: FichaEstoqueHistorico.Value := 'PRÓPRIAS EM PODER DE TERCEIROS';
                                      5: FichaEstoqueHistorico.Value := 'TERCEIROS EM PODER DA EMPRESA';
                                      6: FichaEstoqueHistorico.Value := 'COMPRA - IMOBILIZADO';
                                      9: FichaEstoqueHistorico.Value := 'OUTRAS';
                                 End;

                                 Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                      0: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                      1: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                      2: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                      3: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                      4: FichaEstoqueEstoque.Value := '1-ARMAZEM';
                                      5: FichaEstoqueEstoque.Value := '2-TERCEIROS';
                                      6: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                      9: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                 End;

                                 FichaEstoqueEmissor.Value             := 'T';
                                 FichaEstoqueNota.Value                := NotasTerceirosItensNota.AsInteger;
                                 FichaEstoqueData.Value                := NotasTerceirosItensData_Entrada.Value;
                                 FichaEstoqueES.Value                  := 'E';
                                 FichaEstoqueDestinatario_Codigo.Value := NotasTerceirosItensFornecedor.AsInteger;
                                 FichaEstoqueDestinatario_Nome.Value   := FornecedoresNome.AsString;

                                 If FornecedoresCNPJ.AsString <> '' then
                                    FichaEstoqueDestinatario_CNPJ.Value := FornecedoresCNPJ.AsString
                                 else
                                    FichaEstoqueDestinatario_CNPJ.Value := FornecedoresCPF.AsString;

                                 FichaEstoqueFinalidade.Value       := ReferenciasFiscaisFinalidade_Mercadoria.AsInteger;
                                 FichaEstoqueQtde_Entrada.Value     := NotasTerceirosItensQuantidade.AsFloat;
                                 FichaEstoqueUnitario_Entrada.Value := NotasTerceirosItensValor_Inventario.Value;
                                 FichaEstoqueTotal_Entrada.Value    := NotasTerceirosItensQuantidade.AsFloat * NotasTerceirosItensValor_Inventario.Value;
                                 FichaEstoqueQtde_Saida.Value       := 0;
                                 FichaEstoqueUnitario_Saida.Value   := 0;
                                 FichaEstoqueTotal_Saida.Value      := 0;
                                 If tEstoque.RecordCount > 0 then begin
                                    FichaEstoqueQtde_Saldo.Value  := tEstoque.FieldByName('Qtde_Saldo').AsFloat  + NotasTerceirosItensQuantidade.AsFloat;
                                    FichaEstoqueTotal_Saldo.Value := tEstoque.FieldByName('Total_Saldo').AsFloat + FichaEstoqueTotal_Entrada.AsFloat;
                                 end else begin
                                    FichaEstoqueQtde_Saldo.Value  := NotasTerceirosItensQuantidade.AsFloat;
                                    FichaEstoqueTotal_Saldo.Value := FichaEstoqueTotal_Entrada.AsFloat;
                                 End;
                                 If FichaEstoqueQtde_Saldo.AsFloat > 0 then begin
                                    FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsFloat / FichaEstoqueQtde_Saldo.AsFloat;
                                 End;
                                 FichaEstoqueOrigem.Value         := 'NFT';
                                 FichaEstoqueProcesso.Value       := NotasTerceirosItensProcesso.Value;
                                 If ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) then begin
                                    FichaEstoqueTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                 End;
                    FichaEstoque.Post;

                    Inc(mReg);

                    NotasTerceirosItens.Next;
              End;
           End;

           // Adiciona todos os itens a ficha de Inventario se a referencia fiscal movimenta inventario.
           If ReferenciasFiscaisMovimenta_Inventario.AsBoolean then begin
              FichaInventario.SQL.Clear;
              FichaInventario.SQL.Add('SELECT * FROM FichaInventario WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
              FichaInventario.ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
              FichaInventario.ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
              FichaInventario.ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
              FichaInventario.Open;

              tEstoque.SQL.Clear;
              tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
              tEstoque.SQL.Add('FROM   FichaInventario');
              tEstoque.Open;
              mReg := tEstoque.FieldByName('Registro').AsInteger;

              NotasTerceirosItens.First;
              While not NotasTerceirosItens.Eof do begin
                    tEstoque.SQL.Clear;
                    tEstoque.SQL.Add('SELECT Qtde_Saldo');
                    tEstoque.SQL.Add('      ,Unitario_Saldo');
                    tEstoque.SQL.Add('      ,Total_Saldo');
                    tEstoque.SQL.Add('FROM   FichaInventario');
                    tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                    tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo)');
                    tEstoque.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                    tEstoque.Open;

                    tItem.SQL.Clear;
                    tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM FichaInventario WHERE Codigo = :pCodigo');
                    tItem.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.Value;
                    tItem.Open;

                    FichaInventario.Append;
                                    FichaInventarioRegistro.Value  := mReg;
                                    FichaInventarioItem.Value      := tItem.FieldByName('Item').AsInteger;
                                    FichaInventarioCodigo.Value    := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                                    FichaInventarioNCM.Value       := NotasTerceirosItensNCM.Value;
                                    FichaInventarioDescricao.Value := NotasTerceirosItensDescricao_Mercadoria.AsString;
                                    FichaInventarioUM.Value        := NotasTerceirosItensUnidade_Medida.AsString;
                                    FichaInventarioCFOP.Value      := NotasTerceirosItensNatureza_Codigo.AsString;

                                    Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                         0: FichaInventarioHistorico.Value := 'COMPRA - REVENDA';
                                         1: FichaInventarioHistorico.Value := 'COMPRA - CONSUMO';
                                         2: FichaInventarioHistorico.Value := 'DEVOLUÇÃO';
                                         3: FichaInventarioHistorico.Value := 'EXPORTAÇÃO';
                                         4: FichaInventarioHistorico.Value := 'PRÓPRIAS EM PODER DE TERCEIROS';
                                         5: FichaInventarioHistorico.Value := 'TERCEIROS EM PODER DA EMPRESA';
                                         6: FichaInventarioHistorico.Value := 'COMPRA - IMOBILIZADO';
                                         9: FichaInventarioHistorico.Value := 'OUTRAS';
                                    End;

                                    Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                         0: FichaInventarioEstoque.Value := '0-EMPRESA';
                                         1: FichaInventarioEstoque.Value := '0-EMPRESA';
                                         2: FichaInventarioEstoque.Value := '0-EMPRESA';
                                         3: FichaInventarioEstoque.Value := '0-EMPRESA';
                                         4: FichaInventarioEstoque.Value := '1-ARMAZEM';
                                         5: FichaInventarioEstoque.Value := '2-TERCEIROS';
                                         6: FichaInventarioEstoque.Value := '0-EMPRESA';
                                         9: FichaInventarioEstoque.Value := '0-EMPRESA';
                                    End;

                                    FichaInventarioEmissor.Value             := 'T';
                                    FichaInventarioNota.Value                := NotasTerceirosItensNota.AsInteger;
                                    FichaInventarioData.Value                := NotasTerceirosItensData_Entrada.Value;
                                    FichaInventarioES.Value                  := 'E';
                                    FichaInventarioDestinatario_Codigo.Value := NotasTerceirosItensFornecedor.AsInteger;
                                    FichaInventarioDestinatario_Nome.Value   := FornecedoresNome.AsString;

                                    If FornecedoresCNPJ.AsString <> '' then
                                       FichaInventarioDestinatario_CNPJ.Value := FornecedoresCNPJ.AsString
                                    else
                                       FichaInventarioDestinatario_CNPJ.Value := FornecedoresCPF.AsString;

                                    FichaInventarioFinalidade.Value       := ReferenciasFiscaisFinalidade_Mercadoria.AsInteger;
                                    FichaInventarioQtde_Entrada.Value     := NotasTerceirosItensQuantidade.AsFloat;
                                    FichaInventarioUnitario_Entrada.Value := NotasTerceirosItensValor_Inventario.Value;
                                    FichaInventarioTotal_Entrada.Value    := NotasTerceirosItensQuantidade.AsFloat * NotasTerceirosItensValor_Inventario.Value;
                                    FichaInventarioQtde_Saida.Value       := 0;
                                    FichaInventarioUnitario_Saida.Value   := 0;
                                    FichaInventarioTotal_Saida.Value      := 0;
                                    If tEstoque.RecordCount > 0 then begin
                                       FichaInventarioQtde_Saldo.Value  := tEstoque.FieldByName('Qtde_Saldo').AsFloat  + NotasTerceirosItensQuantidade.AsFloat;
                                       FichaInventarioTotal_Saldo.Value := tEstoque.FieldByName('Total_Saldo').AsFloat + FichaInventarioTotal_Entrada.AsFloat;
                                    end else begin
                                       FichaInventarioQtde_Saldo.Value  := NotasTerceirosItensQuantidade.AsFloat;
                                       FichaInventarioTotal_Saldo.Value := FichaInventarioTotal_Entrada.AsFloat;
                                    End;
                                    If FichaInventarioQtde_Saldo.AsFloat > 0 then begin
                                       FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsFloat / FichaInventarioQtde_Saldo.AsFloat;
                                    End;
                                    FichaInventarioOrigem.Value         := 'NFT';
                                    FichaInventarioProcesso.Value       := NotasTerceirosItensProcesso.Value;
                                    If ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) then begin
                                       FichaInventarioTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                    End;
                    FichaInventario.Post;

                    Inc(mReg);

                    NotasTerceirosItens.Next;
              End;
           End;

           NotasTerceiros.SQL.Clear;
           NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE(Provisoria = 1)');
           NotasTerceiros.Open;
      End;
      Close;
end;

procedure TNotaFiscal_TerceirosEfetivar.cModeloChange(Sender: TObject);
begin
      cChave.Enabled     := dmFiscal.ModelosDocumentosCodigo.Value = '55';
      cProtocolo.Enabled := dmFiscal.ModelosDocumentosCodigo.Value = '55';
end;

end.
