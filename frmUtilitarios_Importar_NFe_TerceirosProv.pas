unit frmUtilitarios_Importar_NFe_TerceirosProv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Mask, RXCtrls, Vcl.ExtCtrls, DB, XMLDoc, XMLIntf, xmldom,
  msxmldom, Grids, RXDBCtrl, Vcl.ComCtrls, DBCtrls, Funcoes, DBAccess, MSAccess, system.UITypes, RxCurrEdit, MemDS, RxToolEdit;

type
  TUtilitarios_Importar_NFe_TerceirosProv = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImportar: TButton;
    cPasta: TPageControl;
    TabSheet1: TTabSheet;
    cDadosNfe: TGroupBox;
    StaticText3: TStaticText;
    StaticText1: TStaticText;
    StaticText8: TStaticText;
    StaticText13: TStaticText;
    cdEmi: TMaskEdit;
    cdSaiEnt: TMaskEdit;
    StaticText4: TStaticText;
    ccNF: TMaskEdit;
    cNatOp: TMaskEdit;
    StaticText24: TStaticText;
    ccUF: TMaskEdit;
    cChave: TMaskEdit;
    cnNF: TMaskEdit;
    StaticText35: TStaticText;
    cmod: TMaskEdit;
    StaticText27: TStaticText;
    cSerie: TMaskEdit;
    StaticText32: TStaticText;
    ctpNF: TMaskEdit;
    StaticText34: TStaticText;
    ccMunFG: TMaskEdit;
    ccMunFGNome: TMaskEdit;
    StaticText36: TStaticText;
    ctpEmis: TMaskEdit;
    ctpEmisDesc: TMaskEdit;
    StaticText37: TStaticText;
    ctpAmb: TMaskEdit;
    StaticText38: TStaticText;
    cfinNFe: TMaskEdit;
    cfinNFeDesc: TMaskEdit;
    StaticText39: TStaticText;
    cprocEmi: TMaskEdit;
    cprocEmiDesc: TMaskEdit;
    StaticText40: TStaticText;
    cverProc: TMaskEdit;
    cProtocolo: TMaskEdit;
    StaticText67: TStaticText;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    lFornecedor: TLabel;
    StaticText12: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    cCNPJ: TMaskEdit;
    cxNome: TMaskEdit;
    cxFant: TMaskEdit;
    cxLgr: TMaskEdit;
    cCpl: TMaskEdit;
    cNro: TMaskEdit;
    cxBairro: TMaskEdit;
    cMun: TMaskEdit;
    cxMun: TMaskEdit;
    cUF: TMaskEdit;
    cCEP: TMaskEdit;
    cPais: TMaskEdit;
    cxPais: TMaskEdit;
    cFone: TMaskEdit;
    StaticText2: TStaticText;
    cIE: TMaskEdit;
    StaticText56: TStaticText;
    cCodigo: TMaskEdit;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText26: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    StaticText33: TStaticText;
    cDestCNPJ: TMaskEdit;
    cDestxNome: TMaskEdit;
    cDestxLgr: TMaskEdit;
    cDestNro: TMaskEdit;
    cDestxBairro: TMaskEdit;
    cDestcMun: TMaskEdit;
    cDestxMun: TMaskEdit;
    cDestUF: TMaskEdit;
    cDestcPais: TMaskEdit;
    cDestxPais: TMaskEdit;
    cDestIE: TMaskEdit;
    TabSheet5: TTabSheet;
    GroupBox3: TGroupBox;
    StaticText7: TStaticText;
    StaticText25: TStaticText;
    cBCICMS: TCurrencyEdit;
    cValorICMS: TCurrencyEdit;
    StaticText31: TStaticText;
    StaticText41: TStaticText;
    cBCICMSSub: TCurrencyEdit;
    cValorICMSSub: TCurrencyEdit;
    StaticText42: TStaticText;
    cProdutos: TCurrencyEdit;
    StaticText43: TStaticText;
    cFrete: TCurrencyEdit;
    StaticText44: TStaticText;
    cSeguro: TCurrencyEdit;
    StaticText45: TStaticText;
    cDesconto: TCurrencyEdit;
    StaticText46: TStaticText;
    cII: TCurrencyEdit;
    StaticText47: TStaticText;
    cIPI: TCurrencyEdit;
    StaticText48: TStaticText;
    cPIS: TCurrencyEdit;
    StaticText49: TStaticText;
    cCOFINS: TCurrencyEdit;
    StaticText50: TStaticText;
    cDespesas: TCurrencyEdit;
    StaticText51: TStaticText;
    cTotalNota: TCurrencyEdit;
    StaticText52: TStaticText;
    cIsentasIPI: TCurrencyEdit;
    StaticText53: TStaticText;
    cOutrasIPI: TCurrencyEdit;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    cIsentasICMS: TCurrencyEdit;
    cOutrasICMS: TCurrencyEdit;
    StaticText62: TStaticText;
    cBCIPI: TCurrencyEdit;
    StaticText63: TStaticText;
    cQtdeTotal: TCurrencyEdit;
    StaticText64: TStaticText;
    cLiquido: TCurrencyEdit;
    StaticText65: TStaticText;
    cPesoLiquido: TCurrencyEdit;
    StaticText66: TStaticText;
    cPesoBruto: TCurrencyEdit;
    TabSheet4: TTabSheet;
    GradeItens: TStringGrid;
    tExiste: TMSQuery;
    tItens: TMSQuery;
    tItem: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure cNotasClick(Sender: TObject);
    procedure GradeItensDrawCell(Sender: TObject; ACol, ARow: Integer;Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    mArquivos      : Array[0..1000] of String;
    mTamanho       : Integer;
    mTipo          : String;
    mAliquotaPIS   : Real;
    mAliquotaCOFINS: Real;
  end;

var
  Utilitarios_Importar_NFe_TerceirosProv: TUtilitarios_Importar_NFe_TerceirosProv;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmDMContab;

{$R *.dfm}

procedure TUtilitarios_Importar_NFe_TerceirosProv.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitarios_Importar_NFe_TerceirosProv.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Utilitarios_Importar_NFe_TerceirosProv.Release;
      Utilitarios_Importar_NFe_TerceirosProv := nil;
end;

procedure TUtilitarios_Importar_NFe_TerceirosProv.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     With Dados do begin
          CSTIPI.SQL.Clear;
          CSTIPI.SQL.Add('SELECT * FROM CSTIPI ORDER BY Codigo');
          CSTIPI.Open;

          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos');
          Produtos.Open;
          
          Configuracao.Open;
     End;

     cNotasClick(Self);
     cPasta.ActivePageIndex := 0;
     Screen.Cursor := crDefault;
end;

procedure TUtilitarios_Importar_NFe_TerceirosProv.bImportarClick(Sender: TObject);
Var
 mReg: Integer;
begin
     With Dados, dmFiscal, dmContab do begin
          // Verifica o último período contabil encerrado.
          If StrtoDate(cdSaiEnt.Text) <= EmpresasUltimo_Encerramento.Value then begin
             MessageDlg('Lançamento inválido!'+#13+#13+'Data da entrada da nota fiscal é maior que o último período contabil encerrado.'+#13+#13+'O último período encerrado foi '+EmpresasUltimo_Encerramento.AsString+'.', mtError, [mbOK], 0);
             Abort;
          End;

          If MessageDlg('Deseja realmente importar esta nota fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
             tExiste.SQL.Clear;
             tExiste.SQL.Add('SELECT * FROM NotasTerceiros WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
             tExiste.ParamByName('pNota').AsInteger       := Strtoint(cnNF.Text);
             tExiste.ParamByName('pData').AsDate          := StrtoDate(cdEmi.Text);
             tExiste.ParamByName('pFornecedor').AsInteger := StrtoInt(cCodigo.Text);
             tExiste.Open;

             If tExiste.RecordCount > 0 then begin
                MessageDlg('Ja existe uma nota fiscal cadastrada com este número nesta data deste fornecedor.'+#13+#13+'Deseja substituir a nota fiscal existente?', mtInformation, [mbYes, mbNo], 0);
                Abort;
             End;

             // Atualiza os itens com o novo número da nota fiscal.
             tItens.SQL.Clear;
             tItens.SQL.Add('UPDATE NotasTerceirosItens SET Nota = :pNota, Data_Emissao = :pDataEmissao, Data_Entrada = :pDataEntrada WHERE(Nota = :pNotaProv) AND (Data_Entrada = :pDataProv)');
             tItens.ParamByName('pNota').AsInteger     := StrtoInt(cnNF.Text);
             tItens.ParamByName('pDataEmissao').AsDate := StrtoDate(cdEmi.Text);
             tItens.ParamByName('pDataEntrada').AsDate := StrtoDate(cdSaiEnt.Text);
             tItens.ParamByName('pNotaProv').AsInteger := NotasTerceirosNota.Value;
             tItens.ParamByName('pDataProv').AsDate    := NotasTerceirosData_Entrada.Value;
             tItens.Execute;

             // Importando o cabeçalho da nota fiscal.
             NotasTerceiros.Edit;
                            NotasTerceirosNota.Value          := StrtoInt(cnNF.Text);
                            NotasTerceirosData_Emissao.Value  := StrtoDate(cdEmi.Text);
                            NotasTerceirosData_Entrada.Value  := StrtoDate(cdEmi.Text);
                            NotasTerceirosModelo.Value        := cMod.Text;
                            NotasTerceirosSerie.Value         := cSerie.Text;
                            NotasTerceirosNFe_cNF.Value       := cChave.Text;
                            NotasTerceirosNFe_Protocolo.Value := cProtocolo.Text;
                            NotasTerceirosProvisoria.Value    := false;
             NotasTerceiros.Post;

             // Remove e Adiciona todos os itens a ficha de estoque/Inventario se a referencia fiscal movimenta estoque.
             // Ficha de estoque.
             NotasTerceirosItens.SQL.Clear;
             NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor) AND (Referencia_Fiscal = :pReferencia) ORDER BY Item');
             NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
             NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
             NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
             NotasTerceirosItens.ParamByName('pReferencia').AsInteger := NotasTerceirosReferencia_Fiscal.AsInteger;
             NotasTerceirosItens.Open;

             If ReferenciasFiscaisMovimenta_Estoque.AsBoolean then begin
                FichaEstoque.SQL.Clear;
                FichaEstoque.SQL.Add('DELETE FROM FichaEstoque WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
                FichaEstoque.ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                FichaEstoque.ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                FichaEstoque.ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                FichaEstoque.Execute;
                FichaEstoque.SQL.Clear;
                FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
                FichaEstoque.ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                FichaEstoque.ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                FichaEstoque.ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
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
                                   FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsFloat / FichaEstoqueQtde_Saldo.AsFloat;
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

             // Ficha de inventario.
             If ReferenciasFiscaisMovimenta_Inventario.AsBoolean then begin
                FichaInventario.SQL.Clear;
                FichaInventario.SQL.Add('DELETE FROM FichaInventario WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
                FichaInventario.ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                FichaInventario.ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                FichaInventario.ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                FichaInventario.Execute;
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
                                   FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsFloat / FichaInventarioQtde_Saldo.AsFloat;
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

             bSair.Click;

             NotasTerceiros.SQL.Clear;
             NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE(Provisoria = 1)');
             NotasTerceiros.Open;
          End;
     End;
end;

procedure TUtilitarios_Importar_NFe_TerceirosProv.cNotasClick(Sender: TObject);
var
   mXML                  : TXMLDocument;
   mNodeNFe              : IXMLNode;
   mNodeInfNFe           : IXMLNode;
   mNodeIde              : IXMLNode;
   mNodeEmit             : IXMLNode;
   mNodeEmitEnd          : IXMLNode;
   mNodeDest             : IXMLNode;
   mNodeDestEnd          : IXMLNode;
   mNodedet              : IXMLNode;
   mNodeTransp           : IXMLNode;
   mNodeTranspVol        : IXMLNode;
   mNodeProtNFe          : IXMLNode;
   mNodeProtNFeInf       : IXMLNode;
   mNodedetProd          : IXMLNode;
   mNodedetProdDI        : IXMLNode;
   mNodedetProdDIAdi     : IXMLNode;
   mNodedetImposto       : IXMLNode;
   mNodedetImpostoICMS   : IXMLNode;
   mNodedetImpostoICMSCST: IXMLNode;
   mNodeDetImpostoIPI    : IXMLNode;
   mNodeDetImpostoIPITrib: IXMLNode;
   mNodeDetImpostoII     : IXMLNode;
   mNodeDetImpostoPIS    : IXMLNode;
   mNodeDetImpostoPISAliq: IXMLNode;
   mNodeDetImpostoCOF    : IXMLNode;
   mNodeDetImpostoCOFAliq: IXMLNode;
   mNodeTotal            : IXMLNode;
   mNodeTotalICMSTot     : IXMLNode;
   mdEmi                 : WideString;
   mdSaiEnt              : WideString;
   mdDI                  : WideString;
   mdDesemb              : WideString;
   mChave                : String;
   mEstado               : Integer;
   mMunicipio            : Integer;
   mtpEmis               : Array[1..5] of String;
   mfinNFe               : Array[1..3] of String;
   mprocEmi              : Array[0..4] of String;
   mOrigemMerc           : Array[0..2] of String;
   mModalidade           : Array[0..3] of String;
   mAmbiente             : Integer;
   mCodigoCSTICMS        : String;
   mApuracao1            : Real;
   mApuracao2            : Real;
   mBCICMS               : Real;
   mValorTotal           : Real;
   i                     : Integer;
begin
      // O XML caso haja caracteres invalidos.
      Try
          // Típos de emissao da NF-e.
          mtpEmis[1] := 'Normal – emissão normal';
          mtpEmis[2] := 'Contingência FS – emissão em contingência com impressão do DANFE em Formulário de Segurança';
          mtpEmis[3] := 'Contingência SCAN – emissão em contingência no Sistema de Contingência do Ambiente Nacional – SCAN';
          mtpEmis[4] := 'Contingência DPEC - emissão em contingência com envio da Declaração Prévia de Emissão em Contingência – DPEC';
          mtpEmis[5] := 'Contingência FS-DA - emissão em contingência c/impressão DANFE Formulário Seg.p/Impressão Doc.Aux.de Doc.Fiscal Eletrônico (FS-DA)';

          // Finalidades de emissão.
          mfinNFe[1] := 'NF-e Normal';
          mfinNFe[2] := 'NF-e Complementar';
          mfinNFe[3] := 'NF-e de Ajuste';

          // Processo de emissão.
          mprocEmi[0] := 'Emissão de NF-e com aplicativo do contribuinte.';
          mprocEmi[1] := 'Emissão de NF-e avulsa pelo Fisco.';
          mprocEmi[2] := 'Emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco.';
          mprocEmi[3] := 'Emissão NF-e pelo contribuinte com aplicativo fornecido pelo Fisco.';

          // Origem da mercadoria:
          mOrigemMerc[0] := 'Nacional';
          mOrigemMerc[1] := 'Estrangeira – Importação direta';
          mOrigemMerc[2] := 'Estrangeira – Adquirida no mercado interno';

          // Modalidade de determinação da BC do ICMS.
          mModalidade[0] := 'Margem Valor Agregado (%)';
          mModalidade[1] := 'Pauta (Valor)';
          mModalidade[2] := 'Preço Tabelado Máx. (valor)';
          mModalidade[3] := 'Valor da operação.';

          mXML := TXMLDocument.Create(Self);
          mXML.LoadFromFile(mArquivos[0]);
          mXML.Active := True;

          For i := 0 to Gradeitens.RowCount -1 do Gradeitens.Rows[I].Clear;

          Try
              mNodeNFe          := mXML.DocumentElement.ChildNodes.FindNode('NFe');
              mNodeInfNFe       := mNodeNfe.ChildNodes.FindNode('infNFe');
              mNodeIde          := mNodeinfNFe.ChildNodes.FindNode('ide');
              mNodeEmit         := mNodeinfNFe.ChildNodes.FindNode('emit');
              mNodeEmitEnd      := mNodeEmit.ChildNodes.FindNode('enderEmit');
              mNodeDest         := mNodeinfNFe.ChildNodes.FindNode('dest');
              mNodeDestEnd      := mNodeDest.ChildNodes.FindNode('enderDest');
              mNodeDet          := mNodeinfNFe.ChildNodes.FindNode('det');
              mNodeTransp       := mNodeinfNFe.ChildNodes.FindNode('transp');
              mNodeTranspVol    := mNodeTransp.ChildNodes.FindNode('vol');
              mNodeDetProd      := mNodeDet.ChildNodes.FindNode('prod');
              mNodeTotal        := mNodeinfNFe.ChildNodes.FindNode('total');
              mNodeTotalICMSTot := mNodeTotal.ChildNodes.FindNode('ICMSTot');
              mNodeProtNFe      := mXML.DocumentElement.ChildNodes.FindNode('protNFe');
              mNodeProtNFeInf   := mNodeProtNFe.ChildNodes.FindNode('infProt');
              mChave            := mNodeInfNFe.AttributeNodes.Nodes[1].Text;
              cProtocolo.Text   := mNodeProtNFeInf.ChildNodes.FindNode('nProt').Text;
              cChave.Text       := mNodeProtNFeInf.ChildNodes.FindNode('chNFe').Text;
              mEstado           := mNodeIde.ChildNodes['cUF'].NodeValue;
          Except
              mNodeInfNFe       := mXML.DocumentElement.ChildNodes.FindNode('infNFe');
              mNodeIde          := mNodeinfNFe.ChildNodes.FindNode('ide');
              mNodeEmit         := mNodeinfNFe.ChildNodes.FindNode('emit');
              mNodeEmitEnd      := mNodeEmit.ChildNodes.FindNode('enderEmit');
              mNodeDest         := mNodeinfNFe.ChildNodes.FindNode('dest');
              mNodeDestEnd      := mNodeDest.ChildNodes.FindNode('enderDest');
              mNodeDet          := mNodeinfNFe.ChildNodes.FindNode('det');
              mNodeTransp       := mNodeinfNFe.ChildNodes.FindNode('transp');
              mNodeTranspVol    := mNodeTransp.ChildNodes.FindNode('vol');
              mNodeDetProd      := mNodeDet.ChildNodes.FindNode('prod');
              mNodeTotal        := mNodeinfNFe.ChildNodes.FindNode('total');
              mNodeTotalICMSTot := mNodeTotal.ChildNodes.FindNode('ICMSTot');
              mChave            := mNodeInfNFe.AttributeNodes.Nodes[1].Text;
              cChave.Text       := ApenasNumeros(mChave);
              mEstado           := mNodeIde.ChildNodes['cUF'].NodeValue;
          End;

          Dados.Estados.Locate('Numero', mEstado, [loCaseInsensitive]);

          If mNodeIde.ChildNodes['tpNF'].NodeValue = 0 then ctpNF.Text := 'ENTRADA' else ctpNF.Text := 'SAÍDA';

          ccNF.Text     := mNodeIde.ChildNodes['cNF'].text;
          cnNF.Text     := mNodeIde.ChildNodes['nNF'].text;
          ccUF.Text     := Dados.EstadosCodigo.Value;
          cNatOp.Text   := mNodeIde.ChildNodes['natOp'].text;
          //mdEmi         := mNodeIde.ChildNodes['dEmi'].text;
          If mNodeIde.ChildNodes.FindNode('dEmi') <> nil then
             mdEmi := mNodeIde.ChildNodes['dEmi'].text
          else
             mdEmi := mNodeIde.ChildNodes['dhEmi'].text;

          cdEmi.Text    := Copy(mdEmi, 9,2)+'/'+Copy(mdEmi, 6,2)+'/'+Copy(mdEmi, 1, 4);
          mdSaiEnt      := DatetoStr(dmFiscal.NotasTerceirosData_Entrada.Value);
          cdSaiEnt.Text := mdSaiEnt;

          If Trim(RemoveCaracter('/', '', cdSaiEnt.Text)) = '' then begin
             cdSaiEnt.Text := DatetoStr(Date);
          End;   

          cMod.Text    := mNodeIde.ChildNodes['mod'].text;
          cSerie.Text  := mNodeIde.ChildNodes['serie'].text;
          ccMunFG.Text := mNodeIde.ChildNodes['cMunFG'].text;
          mMunicipio   := mNodeIde.ChildNodes['cMunFG'].NodeValue;

          Dados.Municipios.Locate('Codigo; Estado', VarArrayOf([mMunicipio,mEstado]), [loCaseInsensitive]);
          ccMunFGNome.Text := Dados.MunicipiosNome.AsString;
          ctpEmis.Text     := mNodeIde.ChildNodes['tpEmis'].Text;
          ctpEmisDesc.Text := mtpEmis[strtoInt(ctpEmis.Text)];
          mAmbiente        := mNodeIde.ChildNodes['tpAmb'].NodeValue;

          If mAmbiente = 1 then
             ctpAmb.Text := 'PRODUÇÃO'
          else begin
             ctpAmb.Text := 'HOMOLOGAÇÃO';
             ShowMessage('Atenção!'+#13+#13+'A nota fiscal selecionada foi emitida em modo de <HOMOLOGAÇÃO> sem valor fiscal.'+#13+#13+'A nota fiscal não será importada.');
             bImportar.Enabled := False;
          End;

          cfinNFe.Text      := mNodeIde.ChildNodes['finNFe'].Text;
          cfinNFeDesc.Text  := mfinNFe[strtoInt(cfinNFe.Text)];
          cprocEmi.Text     := mNodeIde.ChildNodes['procEmi'].Text;
          cprocEmiDesc.Text := mprocEmi[strtoInt(cprocEmi.Text)];
          cverProc.Text     := mNodeIde.ChildNodes['verProc'].Text;

          // Dados do emitente.
          If Dados.Fornecedores.Locate('CNPJ', mNodeEmit.ChildNodes['CNPJ'].Text, [loCaseInsensitive] ) = True then begin
             cCodigo.Text        := Dados.FornecedoresCodigo.AsString;
             lFornecedor.Caption := 'Fornecedor já cadastrado.';
          end else begin
             cCodigo.Text        := '0';
             lFornecedor.Caption := 'Fornecedor Novo.';
          End;
          cCNPJ.Text    := mNodeEmit.ChildNodes['CNPJ'].Text;
          cxNome.Text   := mNodeEmit.ChildNodes['xNome'].Text;
          cxFant.Text   := mNodeEmit.ChildNodes['xFant'].Text;
          cIE.Text      := mNodeEmit.ChildNodes['IE'].Text;
          cxLgr.Text    := mNodeEmitEnd.ChildNodes['xLgr'].Text;
          cxLgr.Text    := mNodeEmitEnd.ChildNodes['xLgr'].Text;
          cCpl.Text     := mNodeEmitEnd.ChildNodes['xCpl'].Text;
          cNro.Text     := mNodeEmitEnd.ChildNodes['nro'].Text;
          cxBairro.Text := mNodeEmitEnd.ChildNodes['xBairro'].Text;
          cMun.Text     := mNodeEmitEnd.ChildNodes['cMun'].Text;
          cxMun.Text    := mNodeEmitEnd.ChildNodes['xMun'].Text;
          cUF.Text      := mNodeEmitEnd.ChildNodes['UF'].Text;
          cCEP.Text     := mNodeEmitEnd.ChildNodes['CEP'].Text;
          cPais.Text    := mNodeEmitEnd.ChildNodes['cPais'].Text;
          cxPais.Text   := mNodeEmitEnd.ChildNodes['xPais'].Text;

          // Dados do destinatario.
          cDestCNPJ.Text    := mNodeDest.ChildNodes['CNPJ'].Text;
          cDestxNome.Text   := mNodeDest.ChildNodes['xNome'].Text;
          cDestIE.Text      := mNodeDest.ChildNodes['IE'].Text;
          cDestxLgr.Text    := mNodeDestEnd.ChildNodes['xLgr'].Text;
          cDestxLgr.Text    := mNodeDestEnd.ChildNodes['xLgr'].Text;
          cDestNro.Text     := mNodeDestEnd.ChildNodes['nro'].Text;
          cDestxBairro.Text := mNodeDestEnd.ChildNodes['xBairro'].Text;
          cDestcMun.Text    := mNodeDestEnd.ChildNodes['cMun'].Text;
          cDestxMun.Text    := mNodeDestEnd.ChildNodes['xMun'].Text;
          cDestUF.Text      := mNodeDestEnd.ChildNodes['UF'].Text;
          cDestcPais.Text   := mNodeDestEnd.ChildNodes['cPais'].Text;
          cDestxPais.Text   := mNodeDestEnd.ChildNodes['xPais'].Text;

          // Dados do volume.
          If mNodeinfNFe.ChildNodes.FindNode('transp').ChildNodes.FindNode('pesoL') <> nil then begin
             cPesoLiquido.Text := RemoveCaracter('.', ',', mNodeTranspVol.ChildNodes['pesoL'].Text);
             cPesoBruto.Text   := RemoveCaracter('.', ',', mNodeTranspVol.ChildNodes['pesoB'].Text);
          End;   

          Janela_Processamento := TJanela_Processamento.Create(Self);
          Janela_Processamento.lProcesso.Caption  := 'Lendo os itens do arquivo XML...';
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := 500;
          Janela_Processamento.Show;

          // Dados do item.
          With GradeItens do begin
               RowCount  := 2;
               FixedRows := 1;
               ColCount  := 49;

               Cells[00,0]  := 'Item';
               ColWidths[0] := 30;
               Cells[01,0]  := 'Código';
               ColWidths[1] := 120;
               Cells[02,0]  := 'Descrição';
               ColWidths[2] := 400;

               Cells[03,0] := 'EAN';
               Cells[04,0] := 'NCM';
               Cells[05,0] := 'Genero';
               Cells[06,0] := 'CFOP';
               Cells[07,0] := 'Unidade';
               Cells[08,0] := 'Quantidade';
               Cells[09,0] := 'Vlr.Unitário';
               Cells[10,0] := 'Nº DI';
               Cells[11,0] := 'Data DI';
               Cells[12,0] := 'Loc.Des.';
               Cells[13,0] := 'UF Des.';
               Cells[14,0] := 'Data Des.';
               Cells[15,0] := 'Exportador';
               Cells[16,0] := 'Adição';
               Cells[17,0] := 'Seq Ad.';
               Cells[18,0] := 'Fabric.';

               Cells[19,0] := 'Origem';
               Cells[20,0] := 'CST ICMS';
               Cells[21,0] := 'Mod.BC ICMS';
               Cells[22,0] := 'Red.BC ICMS';
               Cells[23,0] := 'Vlr.BC ICMS';
               Cells[24,0] := 'Aliq.ICMS';
               Cells[25,0] := 'Vlr ICMS';

               Cells[26,0] := 'Enquad.IPI';
               Cells[27,0] := 'CST IPI';
               Cells[28,0] := 'BC IPI';
               Cells[29,0] := 'Aliq.IPI';
               Cells[30,0] := 'Vlr.IPI';

               Cells[31,0] := 'BC II';
               Cells[32,0] := 'Vlr Desp.';
               Cells[33,0] := 'Vlr.II';
               Cells[34,0] := 'Vlr.IOF';

               Cells[35,0] := 'CST PIS';
               Cells[36,0] := 'BC PIS';
               Cells[37,0] := 'Aliq.PIS';
               Cells[38,0] := 'Vlr.PIS';

               Cells[39,0] := 'CST COFINS';
               Cells[40,0] := 'BC COFINS';
               Cells[41,0] := 'Aliq.COFINS';
               Cells[42,0] := 'Vlr.COFINS';

               Cells[43,0] := 'Isentas ICMS';
               Cells[44,0] := 'Outras ICMS';
               Cells[45,0] := 'Isentas IPI';
               Cells[46,0] := 'Outras IPI';

               Cells[47,0] := 'Desconto';

               Cells[48,0] := 'Total';

               mNodeDet.ChildNodes.First;

               cBCIPI.Value     := 0;
               cQtdeTotal.Value := 0;

               Repeat
                     mNodeDetProd := mNodeDet.ChildNodes.FindNode('prod');

                     If mNodeDetProd <> nil then begin
                        If mNodeDet.ChildNodes.FindNode('prod').ChildNodes.FindNode('DI') <> nil then begin
                           mNodeDetProdDI    := mNodeDetProd.ChildNodes.FindNode('DI');
                           mNodeDetProdDIAdi := mNodeDetProdDI.ChildNodes.FindNode('adi');
                        End;
                        mNodeDetImposto     := mNodeDet.ChildNodes.FindNode('imposto');
                        mNodeDetImpostoICMS := mNodeDetImposto.ChildNodes.FindNode('ICMS');

                        If mNodeDetImposto.ChildNodes.FindNode('IPI') <> nil then begin
                           mNodeDetImpostoIPI := mNodeDetImposto.ChildNodes.FindNode('IPI');
                           If mNodeDetImpostoIPI.ChildNodes.FindNode('IPITrib') <> nil then
                              mNodeDetImpostoIPITrib := mNodeDetImpostoIPI.ChildNodes.FindNode('IPITrib');
                        End;
                        
                        mNodeDetImpostoII  := mNodeDetImposto.ChildNodes.FindNode('II');
                        mNodeDetImpostoPIS := mNodeDetImposto.ChildNodes.FindNode('PIS');
                        
                        If mNodeDetImpostoPIS.ChildNodes.FindNode('PISAliq') <> nil then
                           mNodeDetImpostoPISAliq := mNodeDetImpostoPIS.ChildNodes.FindNode('PISAliq');
                        If mNodeDetImpostoPIS.ChildNodes.FindNode('PISOutr') <> nil then
                           mNodeDetImpostoPISAliq := mNodeDetImpostoPIS.ChildNodes.FindNode('PISOutr');

                        mNodeDetImpostoCOF     := mNodeDetImposto.ChildNodes.FindNode('COFINS');
                        If mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSAliq') <> nil then
                           mNodeDetImpostoCOFAliq := mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSAliq');
                        If mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSOutr') <> nil then
                           mNodeDetImpostoCOFAliq := mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSOutr');

                        // Procurando o campo de ICMS.
                        Dados.CSTTabelaB.Open;
                        Dados.CSTTabelaB.First;
                        While not Dados.CSTTabelaB.Eof do begin
                              mCodigoCSTICMS := 'ICMS'+Trim(Dados.CSTTabelaBCodigo.AsString);
                              If mNodeDetImpostoICMS.ChildNodes.FindNode(mCodigoCSTICMS) <> nil then begin
                                 mNodeDetImpostoICMSCST := mNodeDetImpostoICMS.ChildNodes.FindNode(mCodigoCSTICMS);
                                 Break;
                              End;
                              Dados.CSTTabelaB.Next
                        End;

                        // Dados do produto.
                        Cells[ 0, RowCount-1] := PoeZero(4,RowCount-1);
                        Cells[ 1, RowCount-1] := mNodeDetProd.ChildNodes['cProd'].Text;
                        Cells[ 2, RowCount-1] := mNodeDetProd.ChildNodes['xProd'].Text;
                        Cells[ 3, RowCount-1] := mNodeDetProd.ChildNodes['cEAN'].Text;
                        Cells[ 4, RowCount-1] := mNodeDetProd.ChildNodes['NCM'].Text;
                        Cells[ 5, RowCount-1] := mNodeDetProd.ChildNodes['genero'].Text;

                        // CFOP.
                        If Trim(Dados.FornecedoresEstado.AsString) = Trim(Dados.EmpresasEstado.Value) then
                           Cells[ 6, RowCount-1] := Dados.ReferenciasFiscaisNatureza_Dentro.AsString
                        else
                           Cells[ 6, RowCount-1] := Dados.ReferenciasFiscaisNatureza_Fora.AsString;

                        Cells[ 7, RowCount-1] := mNodeDetProd.ChildNodes['uCom'].Text;
                        Cells[ 8, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['qCom'].Text);
                        Cells[ 9, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vUnCom'].Text);
                        Cells[48, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vProd'].Text);

                        cQtdeTotal.Value := cQtdeTotal.Value + StrtoFloat(Cells[ 8, RowCount-1]);

                        // Dados da DI.
                        If mNodeDet.ChildNodes.FindNode('prod').ChildNodes.FindNode('DI') <> nil then begin
                           Cells[10, RowCount-1] := mNodeDetProdDI.ChildNodes['nDI'].Text;
                           mdDI                  := mNodeDetProdDI.ChildNodes['dDI'].Text;
                           Cells[11, RowCount-1] := Copy(mdDI, 9,2)+'/'+Copy(mdDI, 6,2)+'/'+Copy(mdDI, 1, 4);
                           Cells[12, RowCount-1] := mNodeDetProdDI.ChildNodes['xLocDesemb'].Text;
                           Cells[13, RowCount-1] := mNodeDetProdDI.ChildNodes['UFDesemb'].Text;
                           mdDesemb              := mNodeDetProdDI.ChildNodes['dDesemb'].Text;
                           Cells[14, RowCount-1] := Copy(mdDesemb, 9,2)+'/'+Copy(mdDesemb, 6,2)+'/'+Copy(mdDesemb, 1, 4);
                           Cells[15, RowCount-1] := mNodeDetProdDI.ChildNodes['cExportador'].Text;
                           Cells[16, RowCount-1] := mNodeDetProdDIAdi.ChildNodes['nAdicao'].NodeValue;
                           Cells[17, RowCount-1] := mNodeDetProdDIAdi.ChildNodes['nSeqAdic'].NodeValue;
                           Cells[18, RowCount-1] := mNodeDetProdDIAdi.ChildNodes['cFabricante'].Text;
                        end else begin
                           Cells[16, RowCount-1] := '0';
                           Cells[17, RowCount-1] := '0';
                        End;

                        // Impostos ICMS.
                        Cells[19, RowCount-1] := mNodeDetImpostoICMSCST.ChildNodes['orig'].Text;
                        Cells[20, RowCount-1] := mNodeDetImpostoICMSCST.ChildNodes['CST'].Text;
                        Cells[21, RowCount-1] := mNodeDetImpostoICMSCST.ChildNodes['modBC'].Text;
                        Cells[22, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['pRedBC'].Text);
                        Cells[23, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vBC'].Text);
                        Cells[24, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['pICMS'].Text);
                        Cells[25, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vICMS'].Text);

                        // Impostos IPI.
                        If mNodeDetImposto.ChildNodes.FindNode('IPI') <> nil then begin
                           If mNodeDetImposto.ChildNodes.FindNode('IPI').ChildNodes.FindNode('IPITrib') <> nil then begin
                              Cells[26, RowCount-1] := mNodeDetImpostoIPI.ChildNodes['cEnq'].Text;
                              Cells[27, RowCount-1] := mNodeDetImpostoIPITrib.ChildNodes['CST'].Text;
                              Cells[28, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoIPITrib.ChildNodes['vBC'].Text);
                              Cells[29, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoIPITrib.ChildNodes['pIPI'].Text);
                              Cells[30, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoIPITrib.ChildNodes['vIPI'].Text);
                           End;
                        end else begin
                           Cells[26, RowCount-1] := '';
                           Cells[27, RowCount-1] := '';
                           Cells[28, RowCount-1] := '0,00';
                           Cells[29, RowCount-1] := '0,00';
                           Cells[30, RowCount-1] := '0,00';
                        End;

                        If Trim(Cells[30, RowCount-1]) <> '' then begin
                           If StrtoFloat(Cells[30, RowCount-1]) > 0 then cBCIPI.Value := cBCIPI.Value + StrtoFloat(Cells[28, RowCount-1]);
                        End;

                        // Impostos II.
                        If mNodeDetImposto.ChildNodes.FindNode('II') <> nil then begin
                           Cells[31, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['vBC'].Text);
                           Cells[32, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['pDespAdu'].Text);
                           Cells[33, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['vII'].Text);
                           Cells[34, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['vIOF'].Text);
                        End;

                        // Impostos PIS.
                        If mNodeDetImposto.ChildNodes.FindNode('PIS') <> nil then begin
                           If mNodeDetImposto.ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISAliq') <> nil then begin
                              Cells[35, RowCount-1] := mNodeDetImpostoPISAliq.ChildNodes['CST'].Text;
                              Cells[36, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vBC'].Text);
                              Cells[37, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['pPIS'].Text);
                              Cells[38, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vPIS'].Text);
                           end;
                           If mNodeDetImposto.ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISOutr') <> nil then begin
                              Cells[35, RowCount-1] := mNodeDetImpostoPISAliq.ChildNodes['CST'].Text;
                              Cells[36, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vBC'].Text);
                              Cells[37, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['pPIS'].Text);
                              Cells[38, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vPIS'].Text);
                           end;
                        End;

                        // Impostos COFINS.
                        If mNodeDetImposto.ChildNodes.FindNode('COFINS') <> nil then begin
                           If mNodeDetImposto.ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSAliq') <> nil then begin
                              Cells[39, RowCount-1] := mNodeDetImpostoCOFAliq.ChildNodes['CST'].Text;
                              Cells[40, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vBC'].Text);
                              Cells[41, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['pCOFINS'].Text);
                              Cells[42, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vCOFINS'].Text);
                           End;
                           If mNodeDetImposto.ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSOutr') <> nil then begin
                              Cells[39, RowCount-1] := mNodeDetImpostoCOFAliq.ChildNodes['CST'].Text;
                              Cells[40, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vBC'].Text);
                              Cells[41, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['pCOFINS'].Text);
                              Cells[42, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vCOFINS'].Text);
                           End;
                        End;

                        // Isentas e Outras de ICMS.
                        mBCICMS := 0;
                        If Cells[23, RowCount-1] <> '' then begin
                           mBCICMS := StrtoCurr(Cells[23, RowCount-1]);
                        End;

                        mValorTotal := StrtoFloat(Cells[48, RowCount-1]);
                        mApuracao1  := (mValorTotal - mBCICMS);
                        If mApuracao1 < 0 then mApuracao1 := 0;

                        mApuracao2 := mValorTotal - mBCICMS - mApuracao1;
                        If Trim(Cells[30, RowCount-1]) <> '' then begin
                           mApuracao2 := mApuracao2 + StrtoFloat(Cells[30, RowCount-1]);
                        End;
                        
                        If mApuracao2 < 0 then mApuracao2 := 0;

                        Dados.CSTTabelaB.Locate('Codigo', Cells[20, RowCount-1], [loCaseInsensitive]);

                        If Dados.CSTTabelaBApuracao1.Value <> Dados.CSTTabelaBApuracao2.Value then begin
                           If Dados.CSTTabelaBApuracao1.Value = 'I' then begin
                              Cells[43, RowCount-1] := CurrtoStr(mApuracao1);
                              Cells[44, RowCount-1] := CurrtoStr(mApuracao2);
                              cIsentasICMS.Value    := cIsentasICMS.Value + mApuracao1;
                              cOutrasICMS.Value     := cOutrasICMS.Value  + mApuracao2;
                           End;
                           If Dados.CSTTabelaBApuracao1.Value = 'O' then begin
                              Cells[43, RowCount-1] := CurrtoStr(mApuracao2);
                              Cells[44, RowCount-1] := CurrtoStr(mApuracao1);
                              cIsentasICMS.Value    := cIsentasICMS.Value + mApuracao2;
                              cOutrasICMS.Value     := cOutrasICMS.Value  + mApuracao1;
                           End;
                        end else begin
                           If Dados.CSTTabelaBApuracao1.Value = 'I' then begin
                              Cells[43, RowCount-1] := CurrtoStr(mApuracao1 + mApuracao2);
                              Cells[44, RowCount-1] := '0';
                              cIsentasICMS.Value    := cIsentasICMS.Value + mApuracao1 + mApuracao2
                           End;
                           If Dados.CSTTabelaBApuracao1.Value = 'O' then begin
                              Cells[43, RowCount-1] := '0';
                              Cells[44, RowCount-1] := CurrtoStr(mApuracao1 + mApuracao2);
                              cOutrasICMS.Value     := cOutrasICMS.Value + mApuracao1 + mApuracao2;
                           End;
                        End;

                        // Isentas e Outras de IPI.
                        Dados.CSTIPI.Locate('Codigo', Cells[27, RowCount-1], [loCaseInsensitive]);
                        mApuracao1 := 0;
                        If Trim(Cells[30, RowCount-1]) = '' then
                           mApuracao1 := mApuracao1 + mValorTotal;

                        If Dados.CSTIPI.FieldByName('Apuracao').Value = 'O' then begin
                           Cells[46, RowCount-1] := CurrtoStr(mApuracao1);
                           cOutrasIPI.Value      := cOutrasIPI.Value + mApuracao1;
                        end else begin
                           Cells[45, RowCount-1] := CurrtoStr(mApuracao1);
                           cIsentasIPI.Value     := cIsentasIPI.Value + mApuracao1;
                        End;

                        // Desconto.
                        Cells[47, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vDesc'].Text);

                        RowCount  := RowCount + 1;
                     End;

                     mNodeDet := mNodeDet.NextSibling;
                     Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                     Application.ProcessMessages;
               Until mNodeDet = nil;
          End;
          Janela_Processamento.Close;

          cBCICMS.Text       := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vBC'].Text);
          cValorICMS.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vICMS'].Text);
          cValorICMS.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vICMS'].Text);
          cBCICMSSub.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vBCST'].Text);
          cValorICMSSub.Text := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vST'].Text);
          cProdutos.Text     := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vProd'].Text);
          cFrete.Text        := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vFrete'].Text);
          cSeguro.Text       := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vSeg'].Text);
          cDesconto.Text     := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vDesc'].Text);
          cII.Text           := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vII'].Text);
          cIPI.Text          := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vIPI'].Text);
          cPIS.Text          := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vPIS'].Text);
          cCOFINS.Text       := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vCOFINS'].Text);
          cDespesas.Text     := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vOutro'].Text);
          cTotalNota.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vNF'].Text);
          cLiquido.Value     := cTotalNota.Value;

          mXML.Free;

          bImportar.Enabled := True;
      Except
          bImportar.Enabled := False;
          ShowMessage('Arquivos XML de nota fiscal eletrônica inválido!');
      End;
end;

procedure TUtilitarios_Importar_NFe_TerceirosProv.GradeItensDrawCell(Sender: TObject;ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
      If (ARow = 0) and (GradeItens.Cells[ACol,ARow] <> '') then begin
         With GradeItens.Canvas do begin
              FillRect(Rect);
              TextOut(StrToInt(FloatToStr(Int((Rect.Right-Rect.Left-TextWidth(GradeItens.Cells[ACol,ARow]))/2)))+Rect.Left,
              Rect.Top+2, GradeItens.Cells[ACol,ARow]);
         end;
      End;   
end;

end.
