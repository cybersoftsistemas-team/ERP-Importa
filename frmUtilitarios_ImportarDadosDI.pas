unit frmUtilitarios_ImportarDadosDI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, Mask, xmldom,
  DB, Grids, XMLDoc, XMLIntf, msxmldom, RxLookup, DBCtrls, Buttons, CheckLst, Vcl.ComCtrls, DBAccess, MSAccess,Funcoes, RXDBCtrl, MaskUtils, StrUtils, DateUtils, Math, Menus, IniFiles,
  OleCtrls, system.UITypes, DBGrids, RxCurrEdit, RxToolEdit, MemDS;

type
  TUtilitarios_ImportarDadosDI = class(TForm)
    StaticText91: TStaticText;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel2: TPanel;
    bSair: TButton;
    dstXML: TDataSource;
    Image1: TImage;
    cPasta: TPageControl;
    TabSheet6: TTabSheet;
    Panel3: TPanel;
    StaticText9: TStaticText;
    StaticText13: TStaticText;
    cProcesso: TComboBox;
    StaticText52: TStaticText;
    cTipoMercadoria: TDBLookupComboBox;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    cEstado: TDBLookupComboBox;
    StaticText55: TStaticText;
    cModalidade: TDBLookupComboBox;
    cIncentivo: TDBLookupComboBox;
    StaticText56: TStaticText;
    StaticText57: TStaticText;
    cProcessoMestre: TDBLookupComboBox;
    lBanco: TStaticText;
    StaticText60: TStaticText;
    cExportador: TRxDBLookupCombo;
    cCliente: TRxDBLookupCombo;
    cBanco: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    cTaxas: TMemo;
    cPeso: TRadioGroup;
    GroupBox2: TGroupBox;
    cValoracao: TCheckBox;
    cDA: TCheckBox;
    cAdmissao: TCheckBox;
    cSuspensao: TCheckBox;
    cEntreposto: TCheckBox;
    GroupBox3: TGroupBox;
    StaticText58: TStaticText;
    StaticText59: TStaticText;
    cReducaoPIS: TCurrencyEdit;
    cReducaoCOFINS: TCurrencyEdit;
    TabSheet1: TTabSheet;
    cSituacao: TEdit;
    cURFDespachoNome: TEdit;
    cFUNDAP: TRadioGroup;
    cConhecimento: TEdit;
    cTipoDeclaracao: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cImportador: TEdit;
    StaticText6: TStaticText;
    StaticText10: TStaticText;
    cOperacao: TEdit;
    StaticText11: TStaticText;
    cFatura: TEdit;
    StaticText12: TStaticText;
    StaticText14: TStaticText;
    cRomaneio: TEdit;
    StaticText16: TStaticText;
    cConhecimentoCarga: TEdit;
    StaticText18: TStaticText;
    cProcedencia: TEdit;
    StaticText19: TStaticText;
    cURFEntrada: TEdit;
    StaticText21: TStaticText;
    StaticText20: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    cRecintoAduaneiro: TEdit;
    cSetor: TEdit;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    cArmazem: TEdit;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    cClienteNome: TEdit;
    cMultiModal: TRadioGroup;
    StaticText35: TStaticText;
    cViaTransporte: TEdit;
    StaticText36: TStaticText;
    cTransportador: TEdit;
    StaticText37: TStaticText;
    cNomeEmbarcacao: TEdit;
    cManifestoCarga: TEdit;
    StaticText38: TStaticText;
    cLocalEmbarque: TEdit;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    cTipoConhecimento: TEdit;
    StaticText31: TStaticText;
    StaticText33: TStaticText;
    StaticText15: TStaticText;
    cEspecie: TEdit;
    TabSheet4: TTabSheet;
    gProdutos: TStringGrid;
    TabSheet5: TTabSheet;
    cDumping: TCheckListBox;
    bAdicao: TBitBtn;
    bTodos: TBitBtn;
    bDesmarcar: TBitBtn;
    TabSheet3: TTabSheet;
    cComplemento: TMemo;
    tUFDesemb: TMSQuery;
    tUFDesembCodigo: TStringField;
    tUFDesembNome: TStringField;
    dstUFDesemb: TDataSource;
    cUFDesembaraco: TDBLookupComboBox;
    bImportar: TButton;
    TabSheet2: TTabSheet;
    cFabricantes: TCheckListBox;
    StaticText17: TStaticText;
    GradeProdutos: TRxDBGrid;
    StaticText44: TStaticText;
    cPesquisa: TEdit;
    bAdCodigo: TButton;
    cTituloAD: TStaticText;
    StaticText70: TStaticText;
    StaticText71: TStaticText;
    cFornecedoresCheck: TCheckListBox;
    cFornecedoresAchados: TMemo;
    tPesquisa: TMSQuery;
    TabSheet7: TTabSheet;
    gAdicoes: TStringGrid;
    cDataRegistro: TDateEdit;
    cDataDesembaraco: TDateEdit;
    cDataChegada: TDateEdit;
    cDataReg: TDateEdit;
    StaticText45: TStaticText;
    cDataEmbarque: TDateEdit;
    TabSheet8: TTabSheet;
    cErros: TMemo;
    TabSheet9: TTabSheet;
    cAvisos: TMemo;
    StaticText28: TStaticText;
    cFreteMoedaNome: TEdit;
    cFreteMoedaCodigo: TEdit;
    StaticText29: TStaticText;
    cSeguroMoedaCodigo: TEdit;
    TabSheet10: TTabSheet;
    gAcrescimo: TStringGrid;
    cPesoBruto: TCurrencyEdit;
    cPesoLiquido: TCurrencyEdit;
    StaticText46: TStaticText;
    cSeguroME: TCurrencyEdit;
    cFreteME: TCurrencyEdit;
    cFreteReal: TCurrencyEdit;
    StaticText47: TStaticText;
    cSeguroReal: TCurrencyEdit;
    StaticText48: TStaticText;
    cFOBME: TCurrencyEdit;
    StaticText49: TStaticText;
    cFOBReal: TCurrencyEdit;
    cSeguroMoedaNome: TEdit;
    StaticText50: TStaticText;
    cLocalDesembNome: TEdit;
    cLocalDesembCod: TCurrencyEdit;
    cCanal: TRadioGroup;
    StaticText68: TStaticText;
    StaticText72: TStaticText;
    cTotalCOFINSMaj: TCurrencyEdit;
    StaticText73: TStaticText;
    cTotalIPI: TCurrencyEdit;
    StaticText74: TStaticText;
    cTotalPISMaj: TCurrencyEdit;
    cTotalII: TCurrencyEdit;
    cURFDespachoCod: TEdit;
    cVolumes: TCurrencyEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    cDataBL: TDateEdit;
    cClienteCNPJ: TEdit;
    TabSheet11: TTabSheet;
    gPagamentos: TStringGrid;
    cPaisProcedNome: TEdit;
    StaticText39: TStaticText;
    cPaisProcedCod: TEdit;
    tPesquisa2: TMSQuery;
    StaticText42: TStaticText;
    cAcrescimoME: TCurrencyEdit;
    cAcrescimoReal: TCurrencyEdit;
    StaticText43: TStaticText;
    cFOBMoedaCodigo: TEdit;
    StaticText30: TStaticText;
    cFOBMoedaNome: TEdit;
    cFreteTaxa: TCurrencyEdit;
    cSeguroTaxa: TCurrencyEdit;
    cFOBTaxa: TCurrencyEdit;
    cQuantidade: TCurrencyEdit;
    StaticText69: TStaticText;
    StaticText75: TStaticText;
    cTotalCOFINSNF: TCurrencyEdit;
    StaticText76: TStaticText;
    cTotalPISNF: TCurrencyEdit;
    tContaPlano: TMSQuery;
    tContaPlanoConta: TStringField;
    tCodigoPlano: TMSQuery;
    tTexto: TMSQuery;
    tCodigo: TMSQuery;
    StaticText61: TStaticText;
    StaticText62: TStaticText;
    gFornecedores: TStringGrid;
    tFornecedor: TMSQuery;
    tBaixados: TMSQuery;
    tPagarReceber: TMSQuery;
    tPagarReceberBaixa: TMSQuery;
    tLancamentos: TMSQuery;
    StaticText64: TStaticText;
    cTotalICMS: TCurrencyEdit;
    tMestre: TMSQuery;
    dstMestre: TDataSource;
    cDescricao: TMemo;
    PopupMenu1: TPopupMenu;
    mnBuscar: TMenuItem;
    mnCancelar: TMenuItem;
    OpenDialog1: TOpenDialog;
    cXML: TEdit;
    bAbrir: TBitBtn;
    bVerificar: TButton;
    StaticText65: TStaticText;
    cAFRMM: TCurrencyEdit;
    bCotacao: TBitBtn;
    StaticText32: TStaticText;
    cFOBAdicoesME: TCurrencyEdit;
    StaticText34: TStaticText;
    cFOBAdicoesReal: TCurrencyEdit;
    cDI2: TMaskEdit;
    Shape1: TShape;
    Shape2: TShape;
    cViaCodigo: TEdit;
    TabSheet12: TTabSheet;
    cCAMEX: TCheckListBox;
    bCAMEXAd: TBitBtn;
    bCAMEXTodos: TBitBtn;
    bCAMEXDesm: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bAdicaoClick(Sender: TObject);
    procedure bDesmarcarClick(Sender: TObject);
    procedure bTodosClick(Sender: TObject);
    procedure gProdutosDrawCell(Sender: TObject; ACol, ARow: Integer;Rect: TRect; State: TGridDrawState);
    procedure cPesquisaChange(Sender: TObject);
    procedure bAdCodigoClick(Sender: TObject);
    procedure GradeProdutosMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure gProdutosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure gProdutosDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure gProdutosClick(Sender: TObject);
    procedure gAdicoesDrawCell(Sender: TObject; ACol, ARow: Integer;Rect: TRect; State: TGridDrawState);
    procedure bVerificarClick(Sender: TObject);
    procedure gAcrescimoDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure bImportarClick(Sender: TObject);
    procedure gPagamentosDrawCell(Sender: TObject; ACol, ARow: Integer;Rect: TRect; State: TGridDrawState);
    procedure bAbrirClick(Sender: TObject);
    procedure gFornecedoresDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    Function  PesquisaStringGrid(pGrid: TStringGrid; pCol: Integer; pPesquisa:String): Integer;
    procedure TotalizaFOB;
    procedure cValoracaoClick(Sender: TObject);
    procedure GeraFinanceiro;
    procedure cDescricaoDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure cDescricaoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure mnBuscarClick(Sender: TObject);
    procedure bCotacaoClick(Sender: TObject);
    procedure AbrirDI;
    procedure cXMLClick(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure bCAMEXAdClick(Sender: TObject);
    procedure bCAMEXTodosClick(Sender: TObject);
    procedure bCAMEXDesmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mXML    : TXMLDocument;
    mNodeDI,
    mNodeDoc,
    mNodeAD,
    mNodeMerc,
    mNodeProd,
    mNodeFabr,
    mNodeAcre,
    mNodeVal,
    mNodeICMS,
    mNodeImposto,
    mNodePgto: IXMLNode;
    mMoedas: Integer;
    mContaDebito,
    mContaCredito,
    mCodigoMoedas: String;
    mBrowserPag: Integer;
  end;

var
  Utilitarios_ImportarDadosDI: TUtilitarios_ImportarDadosDI;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal, frmDMContab, frmJanela_Processamento,
  frmCadastro_Cotacao;

{$R *.dfm}

procedure TUtilitarios_ImportarDadosDI.FormCreate(Sender: TObject);
begin
      If FileExists('Fundo_Barra_Roxo.bmp') then Image1.Picture.LoadFromFile('Fundo_Barra_Roxo.bmp');
end;

procedure TUtilitarios_ImportarDadosDI.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor          := crSQLWait;
      cPasta.ActivePageIndex := 0;

      With Dados, dmFiscal, dmContab do Begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.AsString, [loCaseInsensitive]);

           cEstado.KeyValue        := EmpresasEstado.AsString;
           cUFDesembaraco.KeyValue := EmpresasEstado.AsString;

           Cotacao.SQL.Clear;
           Cotacao.SQL.Add('SELECT * FROM Cotacao');
           Cotacao.Open;

           Moedas.SQL.Clear;
           Moedas.SQL.Add('SELECT * FROM Moedas');
           Moedas.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Desativado <> 1)');
           Produtos.Open;

           Unidades.SQL.Clear;
           Unidades.SQL.Add('SELECT * FROM UnidadeMedida');
           Unidades.Open;

           ClasseIPI.SQL.Clear;
           ClasseIPI.SQL.Add('SELECT * FROM ClasseIPI');
           ClasseIPI.Open;

           TipoItem.SQL.Clear;
           TipoItem.SQL.Add('SELECT * FROM TipoItem ORDER BY Descricao');
           TipoItem.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(LTRIM(RTRIM(Tipo)) = :pTipo) AND (Processo_Fechamento IS NULL) AND (Numero_Declaracao LIKE ''%DITMP#%'') ');
           ProcessosDOC.ParamByName('pTipo').AsString := 'IMPORTAÇÃO';
           ProcessosDOC.Open;

           While not ProcessosDoc.Eof do begin
                 cProcesso.Items.Add(ProcessosDOCProcesso.AsString);
                 ProcessosDOC.Next;
           End;
           ProcessosDOC.First;

           Adicoes.SQL.Clear;
           Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI = :pDI)');
           Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.AsString;
           Adicoes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Pais <> 1058) AND (Pais IS NOT NULL) ORDER BY Nome');
           Fornecedores.Open;

           Orgaos.SQL.Clear;
           Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos ORDER BY Codigo');
           Orgaos.Open;

           Fabricantes.SQL.Clear;
           Fabricantes.SQL.Add('SELECT * FROM Fabricantes');
           Fabricantes.Open;

           Incoterms.SQL.Clear;
           Incoterms.SQL.Add('SELECT * FROM Incoterms');
           Incoterms.Open;

           NCM.SQL.Clear;
           NCM.SQL.Add('SELECT * FROM NCM');
           NCM.Open;

           Paises.SQL.Clear;
           Paises.SQL.Add('SELECT * FROM Paises ORDER BY Codigo');
           Paises.Open;

           tUFDesemb.SQL.Clear;
           tUFDesemb.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
           tUFDesemb.Open;

           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
           TiposProcesso.Open;

           RamoAtividade.SQL.Clear;
           RamoAtividade.SQL.Add('SELECT * FROM RamoAtividade ORDER BY Descricao');
           RamoAtividade.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
           IncentivosFiscais.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
           Bancos.Open;

           LocalDesembaraco.SQL.Clear;
           LocalDesembaraco.SQL.Add('SELECT * FROM LocalDesembaraco');
           LocalDesembaraco.Open;

           CSTTabelaA.SQL.Clear;
           CSTTabelaA.SQL.Add('SELECT * FROM CSTTabelaA WHERE Codigo IN(1, 6) ORDER BY Codigo');
           CSTTabelaA.Open;

           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE(Matricula = :pMatricula)');
           Usuarios.ParamByName('pMatricula').AsString := Menu_Principal.mUsuarioCodigo;
           Usuarios.Open;

           cBanco.Enabled := not Usuarios.FieldByName('Financeiro_Operacional').AsBoolean;
           Usuarios.Close;

           Configuracao.Open;

           //cPeso.ItemIndex := ConfiguracaoAdicao_PesoLiquido.Value -1;
           cPeso.ItemIndex := ConfiguracaoAdicao_PesoLiquido.Value;
           cTaxas.Clear;

           aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
           OpenDialog1.InitialDir := aINI.ReadString ('SISCOMEX_WEB', 'Arquivo', ConfiguracaoPasta_Importacao.AsString);
      End;

      With gProdutos do begin
           FixedRows := 1;
           RowCount  := 2;
           ColCount  := 20;

           Cells[00,0]   := 'AD';
           ColWidths[0]  := 20;
           Cells[01,0]   := 'Nº';
           ColWidths[1]  := 20;
           Cells[02,0]   := 'NCM';
           ColWidths[2]  := 55;
           Cells[03,0]   := 'Descrição';
           ColWidths[3]  := 500;
           Cells[04,0]   := 'UM';
           ColWidths[4]  := 60;
           Cells[05,0]   := 'QTDE.';
           ColWidths[5]  := 94;
           Cells[06,0]   := 'Vlr.Unitário';
           ColWidths[6]  := 90;
           Cells[07,0]   := 'Acréscimo';
           ColWidths[7]  := 80;
           Cells[08,0]   := 'Fornecedor';
           ColWidths[8]  := 300;
           Cells[09,0]   := 'Cód.Sistema';
           ColWidths[9]  := 90;
           Cells[10,0]   := 'II %';
           ColWidths[10] := 80;
           Cells[11,0]   := 'II % (Red.)';
           ColWidths[11] := 80;
           Cells[12,0]   := 'II % (Ac.Tarif)';
           ColWidths[12] := 80;
           Cells[13,0]   := 'Cód.Fabricante';
           ColWidths[13] := 90;
           Cells[14,0]   := 'Peso Líquido';
           ColWidths[14] := 90;
           Cells[15,0]   := 'Peso Bruto';
           ColWidths[15] := 90;
           Cells[16,0]   := 'Cód.Fornecedor';
           ColWidths[16] := 90;
           Cells[17,0]   := 'IPI %';
           ColWidths[17] := 90;
           Cells[18,0]   := 'PO';
           ColWidths[18] := 110;
           Cells[19,0]   := 'ITEM';
           ColWidths[19] := 70;
      End;

      With gAdicoes do begin
           FixedRows := 1;
           RowCount  := 2;
           ColCount  := 35;

           Cells[00,0]   := 'Nº';
           ColWidths[0]  := 30;
           Cells[01,0]   := 'NCM';
           ColWidths[1]  := 55;
           Cells[02,0]   := 'COFINS %';
           ColWidths[2]  := 55;
           Cells[03,0]   := 'Vlr.COFINS';
           ColWidths[3]  := 80;
           Cells[04,0]   := 'PIS %';
           ColWidths[4]  := 40;
           Cells[05,0]   := 'Vlr.PIS';
           ColWidths[5]  := 80;
           Cells[06,0]   := 'II %';
           ColWidths[6]  := 40;
           Cells[07,0]   := 'Vlr.II';
           ColWidths[7]  := 80;
           Cells[08,0]   := 'IPI %';
           ColWidths[8]  := 40;
           Cells[09,0]   := 'Vlr.IPI';
           ColWidths[9]  := 80;
           Cells[10,0]   := 'Peso Liq.';
           ColWidths[10] := 100;
           Cells[11,0]   := 'INCOTERM';
           ColWidths[11] := 60;
           Cells[12,0]   := 'Moeda';
           ColWidths[12] := 40;
           Cells[13,0]   := 'Descrição Moeda';
           ColWidths[13] := 120;
           Cells[14,0]   := 'Fornecedor';
           ColWidths[14] := 350;
           Cells[15,0]   := 'País Aquis.(Cód)';
           ColWidths[15] := 85;
           Cells[16,0]   := 'País Aquis.(Nome)';
           ColWidths[16] := 300;
           Cells[17,0]   := 'Acréscimo (ME)';
           ColWidths[17] := 100;
           Cells[18,0]   := 'Acréscimo (Real)';
           ColWidths[18] := 100;
           Cells[19,0]   := 'ICMS %';
           ColWidths[19] := 50;
           Cells[20,0]   := 'Cobertura Câmbial';
           ColWidths[20] := 300;
           Cells[21,0]   := 'B.C.PIS/COFINS';
           ColWidths[21] := 100;
           Cells[22,0]   := 'PIS NFE';
           ColWidths[22] := 50;
           Cells[23,0]   := 'PIS NFS';
           ColWidths[23] := 50;
           Cells[24,0]   := 'COFINS NFE';
           ColWidths[24] := 80;
           Cells[25,0]   := 'COFINS NFS';
           ColWidths[25] := 80;
           Cells[26,0]   := 'Descrição da NCM';
           ColWidths[26] := 400;
           Cells[27,0]   := 'II % (Red.)';
           ColWidths[27] := 80;
           Cells[28,0]   := 'II % (Ac.Tarif)';
           ColWidths[28] := 80;
           Cells[29,0]   := 'IPI % (Red.)';
           ColWidths[29] := 80;
           Cells[30,0]   := 'Unidade';
           ColWidths[30] := 160;
           Cells[31,0]   := 'FOB (ME)';
           ColWidths[31] := 100;
           Cells[32,0]   := 'FOB (Real)';
           ColWidths[32] := 100;
           Cells[33,0]   := 'Quantidade';
           ColWidths[33] := 100;
           Cells[34,0]   := 'Cód.Forn.';
           ColWidths[34] := 60;
      End;
      
      With gAcrescimo do begin
           FixedRows     := 1;
           RowCount      := 2;
           ColCount      := 8;

           Cells[00,0]   := 'AD';
           ColWidths[0]  := 25;
           Cells[01,0]   := 'Código';
           ColWidths[1]  := 40;
           Cells[02,0]   := 'Descrição';
           ColWidths[2]  := 435;
           Cells[03,0]   := 'Moeda(Cód)';
           ColWidths[3]  := 67;
           Cells[04,0]   := 'Moeda(Nome)';
           ColWidths[4]  := 145;
           Cells[05,0]   := 'Valor (ME)';
           ColWidths[5]  := 100;
           Cells[06,0]   := 'Valor (R$)';
           ColWidths[6]  := 100;
           Cells[07,0]   := 'Taxa';
           ColWidths[7]  := 40;
      End;

      With gPagamentos do begin
           FixedRows     := 1;
           RowCount      := 2;
           ColCount      := 10;

           Cells[00,0]   := 'Código';
           ColWidths[0]  := 40;
           Cells[01,0]   := 'Classificação';
           ColWidths[1]  := 72;
           Cells[02,0]   := 'Descrição';
           ColWidths[2]  := 310;
           Cells[03,0]   := 'Ag';
           ColWidths[3]  := 40;
           Cells[04,0]   := 'CC';
           ColWidths[4]  := 60;
           Cells[05,0]   := 'Forma Pgto';
           ColWidths[5]  := 130;
           Cells[06,0]   := 'Data';
           ColWidths[6]  := 64;
           Cells[07,0]   := 'Juros';
           ColWidths[7]  := 70;
           Cells[08,0]   := 'Multa';
           ColWidths[8]  := 70;
           Cells[09,0]   := 'Valor';
           ColWidths[9]  := 94;
      End;

      With gFornecedores do begin
           FixedRows    := 1;
           RowCount     := 2;
           ColCount     := 9;

           Cells[00,0]  := 'Nome';
           ColWidths[0] := 260;
           Cells[01,0]  := 'Cidade';
           ColWidths[1] := 120;
           Cells[02,0]  := 'Estado';
           ColWidths[2] := 100;
           Cells[03,0]  := 'Logradouro';
           ColWidths[3] := 280;
           Cells[04,0]  := 'Número';
           ColWidths[4] := 60;
           Cells[05,0]  := 'Complemento';
           ColWidths[5] := 300;
           Cells[06,0]  := 'País';
           ColWidths[6] := 80;
           Cells[07,0]  := 'Código';
           ColWidths[7] := 60;
           Cells[08,0]  := 'Adição';
           ColWidths[8] := 40;
      End;

      Screen.Cursor := crDefault;
end;

procedure TUtilitarios_ImportarDadosDI.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitarios_ImportarDadosDI.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      SetCurrentDir(ExtractFilePath(Application.ExeName));
      FecharTabelas(Dados, dmContab, nil, nil);
      Utilitarios_ImportarDadosDI.Release;
      Utilitarios_ImportarDadosDI := nil;
end;

procedure TUtilitarios_ImportarDadosDI.bAbrirClick(Sender: TObject);
begin
      If not OpenDialog1.Execute then abort;

      cXML.Text := OpenDialog1.FileName;
      AbrirDI;
end;

procedure TUtilitarios_ImportarDadosDI.AbrirDI;
Var
    f,
    i,
    mTamFab,
    gLinha: integer;
    mFabr,
    mForn,
    mVlr,
    mVlrReal,
    mSoundex,
    mCodigoFab,
    mPedidoFab,
    mOrdemFab,
    mDescricao,
    mMoeda: String;

    mMarcaRef,
    mMarcaPO,
    mMarcaItem,
    mMarcaPOFech,
    mMarcaItemFech:String;

    mAchouPais: boolean;

    mAcrescimoME,
    mSoma,
    mAcrescimoReal: Real;
begin
      If not FileExists(RemoveCaracter('"', '', cXML.Text)) then begin
         Showmessage('Arquivo não encontrado!'+#13+#13+'Verifique se o caminho informado e o nome do arquivo estão corretos.');
         Abort;
      End;

      cProcesso.Text := '';
      cDI2.Clear;
      cDataReg.Clear;

      cPasta.Enabled := true;

      mXML := TXMLDocument.Create(Self);
      mXML.LoadFromFile(RemoveCaracter('"', '', cXML.Text));
      mXML.Active       := True;
      bImportar.Enabled := false;

      With mXML, Dados do begin
           if DocumentElement.ChildNodes.FindNode('declaracaoImportacao') <> nil then
              mNodeDI := DocumentElement.ChildNodes.FindNode('declaracaoImportacao')
           else
              mNodeDI := DocumentElement.ChildNodes.FindNode('declaracao');

           // Verificando se o XML é da empresa.
           if mNodeDI.ChildNodes.FindNode('numeroImportador') <> nil then begin
              if EmpresasCNPJ.Value <> mNodeDI.ChildNodes['numeroImportador'].Text then begin
                 if MessageDlg('Atenção!'+#13+#13+'Este arquivo XML que você esta tentando importar não pertence a '+EmpresasRazao_Social.AsString+#13+#13+
                               ' este XML é da empresa: '+FormatMaskText('##.###.###/####-##;0', mNodeDI.ChildNodes['numeroImportador'].Text)+ ' - '+ mNodeDI.ChildNodes['numeroImportador'].Text+#13+#13+
                               'Deseja importa-lo assim mesmo?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                    Abort;
                 end;
              end;
           end;

           cTaxas.Lines.Clear;
           cDumping.Clear;
           cCAMEX.Clear;
           cTotalII.Value        := 0;
           cTotalIPI.Value       := 0;
           cTotalPISNF.Value     := 0;
           cTotalCOFINSNF.Value  := 0;
           cTotalPISMaj.Value    := 0;
           cTotalCOFINSMaj.Value := 0;
           cModalidade.KeyValue  := 1;

           // Carrega os dados do processo se ja existe processo com a DI do arquivo XML.
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE Numero_Declaracao <> '''' AND Numero_Declaracao = :pDI');
           ProcessosDOC.ParamByName('pDI').AsString := cDI2.Text;
           ProcessosDOC.Open;

           tMestre.SQL.Clear;
           tMestre.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(ISNULL(Processo_Mestre, '''') = '''') AND (Tipo = :pTipo) AND (Processo <> :pProcesso) AND (Processo_Fechamento IS NULL)');
           tMestre.ParamByName('pTipo').AsString     := 'IMPORTAÇÃO';
           tMestre.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           tMestre.SQL.Add('ORDER BY Processo');
           tMestre.Open;

           cProcesso.Enabled := true;

           If ProcessosDOC.RecordCount > 0 then begin
              cProcesso.Text           := ProcessosDOCProcesso.AsString;
              cProcesso.Enabled        := false;
              cProcessoMestre.KeyValue := ProcessosDOCProcesso_Mestre.AsString;
              cEntreposto.Checked      := ProcessosDOCEntreposto.AsBoolean;
              cModalidade.KeyValue     := ProcessosDOCModalidade_Importacao.AsInteger;
              cIncentivo.KeyValue      := ProcessosDOCIncentivo_Fiscal.Text;
              cTipoMercadoria.KeyValue := ProcessosDOCTipo_Mercadoria.AsInteger;
              cUFDesembaraco.KeyValue  := ProcessosDOCUF_Desembaraco.AsString;
              cCliente.KeyValue        := ProcessosDOCCliente.AsInteger;
              //cModalidade.Enabled      := False;
              cDA.Checked              := ProcessosDOCDA.Value;
              cExportador.KeyValue     := ProcessosDOCFornecedor.AsInteger;
              cBanco.KeyValue          := ProcessosDOCBanco.AsInteger;
              //cOrigem.KeyValue         := ProcessosDOCOrigem_Mercadoria.AsInteger;
              cValoracao.Checked       := ProcessosDOCRemover_Valoracao.AsBoolean;
              cSuspensao.Checked       := ProcessosDOCSuspensao_Impostos.AsBoolean;
              cReducaoPIS.Value        := ProcessosDOCReducao_PIS.Value;
              cReducaoCOFINS.Value     := ProcessosDOCReducao_COFINS.Value;
           end else begin
              cProcesso.Text := '';

              If mNodeDI.ChildNodes['indicadorOperacaoFundap'].text = 'S' then
                 cIncentivo.KeyValue := 'FUNDAP'
              else
                 cIncentivo.KeyValue := Trim(EmpresasIncentivo_Fiscal.AsString);

              //cProcesso.Enabled   := not EmpresasProcesso_Automatico.Value;
              //Modalidade.Enabled := True;
           End;

           if mNodeDI.ChildNodes.FindNode('caracterizacaoOperacaoCodigoTipo') <> nil then
              cModalidade.KeyValue := mNodeDI.ChildNodes['caracterizacaoOperacaoCodigoTipo'].text;
              
           cSituacao.Text        := mNodeDI.ChildNodes['situacaoEntregaCarga'].text;
           cURFDespachoCod.Text  := mNodeDI.ChildNodes['codigoUrfDespacho'].text;
           cURFDespachoNome.Text := mNodeDI.ChildNodes['NomeurfDespacho'].text;
           cDataRegistro.Text    := Copy(mNodeDI.ChildNodes['dataRegistro'].text,7,2)+'/'+Copy(mNodeDI.ChildNodes['dataRegistro'].text,5,2)+'/'+Copy(mNodeDI.ChildNodes['dataRegistro'].text,1,4);
           cDataReg.Text         := cDataRegistro.Text;
           cDataDesembaraco.Text := Copy(mNodeDI.ChildNodes['dataDesembaraco'].text,7,2)+'/'+Copy(mNodeDI.ChildNodes['dataDesembaraco'].text,5,2)+'/'+Copy(mNodeDI.ChildNodes['dataDesembaraco'].text,1,4);
           cTipoDeclaracao.Text  := mNodeDI.ChildNodes['tipoDeclaracaoNome'].text;
           cImportador.Text      := FormatMaskText('##.###.###/####-##;0;', mNodeDI.ChildNodes['numeroImportador'].text);
           cOperacao.Text        := mNodeDI.ChildNodes['caracterizacaoOperacaoDescricaoTipo'].text;
           cClienteCNPJ.Text     := FormatMaskText('##.###.###/####-##;0;', mNodeDI.ChildNodes['numeroConsignatario'].text);
           if Clientes.Locate('CNPJ', cClienteCNPJ.Text, [loCaseInsensitive]) then
              cClienteNome.Text := ClientesNome.AsString;

           mNodeDoc := mNodeDI.ChildNodes.FindNode('documentoInstrucaoDespacho');
           if mNodeDoc <> nil then begin
              mNodeDoc.ChildNodes.First;

              cFatura.Text            := mNodeDoc.ChildNodes['numeroDocumentoInstrucaoDespacho'].text;
              mNodeDoc                := mNodeDoc.NextSibling;
              cRomaneio.Text          := mNodeDoc.ChildNodes['numeroDocumentoInstrucaoDespacho'].text;
              mNodeDoc                := mNodeDoc.NextSibling;
              cConhecimento.Text      := mNodeDoc.ChildNodes['numeroDocumentoInstrucaoDespacho'].text;
           end;

           cConhecimentoCarga.Text := mNodeDI.ChildNodes['numeroDocumentoCarga'].text;
           cDataBL.Text            := Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,7,2)+'/'+Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,5,2)+'/'+Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,1,4);

           mAchouPais := Paises.Locate('Codigo', mNodeDI.ChildNodes['codigoPaisProcedenciaCarga'].Text, [loCaseInsensitive]);
           If not mAchouPais then begin
              mAchouPais := Paises.Locate('Codigo', mNodeDI.ChildNodes['codigoPaisProcedenciaCarga'].Text+'0', [loCaseInsensitive]);
              If not mAchouPais then begin
                 mAchouPais := Paises.Locate('Codigo', '0'+mNodeDI.ChildNodes['codigoPaisProcedenciaCarga'].Text, [loCaseInsensitive]);
              End;
           End;
           If mAchouPais then begin
              cProcedencia.text := PaisesNome.AsString;
           End;
             
           cProcedencia.text       := mNodeDI.ChildNodes['cargaPaisProcedenciaNome'].text;
           cURFEntrada.text        := mNodeDI.ChildNodes['cargaUrfEntradaNome'].text;
           cDataChegada.Text       := Copy(mNodeDI.ChildNodes['cargaDataChegada'].text,7,2)+'/'+Copy(mNodeDI.ChildNodes['cargaDataChegada'].text,5,2)+'/'+Copy(mNodeDI.ChildNodes['cargaDataChegada'].text,1,4);

           cPesoBruto.Text         := mNodeDI.ChildNodes['cargaPesoBruto'].text;
           cPesoBruto.Value        := cPesoBruto.Value / 100000;
           cPesoLiquido.Text       := mNodeDI.ChildNodes['cargaPesoLiquido'].text;
           cPesoLiquido.Value      := cPesoLiquido.Value / 100000;
           cRecintoAduaneiro.text  := mNodeDI.ChildNodes['armazenamentoRecintoAduaneiroNome'].text;
           cSetor.text             := mNodeDI.ChildNodes['armazenamentoSetor'].text;

           cFUNDAP.ItemIndex := 1;
           If mNodeDI.ChildNodes['operacaoFundap'].text = 'S' then cFUNDAP.ItemIndex := 0;

           cMultiModal.ItemIndex := 1;
           If mNodeDI.ChildNodes['viaTransporteMultimodal'].text = 'S' then cMultiModal.ItemIndex := 0;

           mNodeDoc := mNodeDI.ChildNodes.FindNode('armazem');
           If mNodeDoc <> nil then begin
              mNodeDoc.ChildNodes.First;
              cArmazem.text := mNodeDoc.ChildNodes['nomeArmazem'].text;
           End;

           mNodeDoc := mNodeDI.ChildNodes.FindNode('embalagem');
           If mNodeDoc <> nil then begin
              mNodeDoc.ChildNodes.First;
              if mNodeDoc.ChildNodes.FindNode('quantidadeVolumeCarga') <> nil then cVolumes.Value := StrtoInt(mNodeDoc.ChildNodes['quantidadeVolumeCarga'].Text);
              cEspecie.text     := mNodeDoc.ChildNodes['nomeEmbalagem'].text;
           end;
           cSeguroReal.Value := 0;
           cSeguroME.Value   := 0;
           cFreteReal.Value  := 0;
           cFreteME.Value    := 0;

           if Trim(mNodeDI.ChildNodes['valorTotalFreteCollect'].text) <> '' then
              cFreteME.Value          := StrtoFloat(mNodeDI.ChildNodes['valorTotalFreteCollect'].text)/100;
           if Trim(mNodeDI.ChildNodes['valorTotalFreteMoedaNacional'].text) <> '' then
              cFreteReal.Value        := StrtoFloat(mNodeDI.ChildNodes['valorTotalFreteMoedaNacional'].text)/100;

           if Trim(mNodeDI.ChildNodes['valorTotalSeguroMoedaNegociada'].text) <> '' then
              cSeguroME.Value := StrtoFloat(mNodeDI.ChildNodes['valorTotalSeguroMoedaNegociada'].text)/100;
           if Trim(mNodeDI.ChildNodes['valorTotalSeguroMoedaNacional'].text) <> '' then
              cSeguroReal.Value := StrtoFloat(mNodeDI.ChildNodes['valorTotalSeguroMoedaNacional'].text)/100;
              
           cFreteMoedaCodigo.Text  := mNodeDI.ChildNodes['codigoMoedaFrete'].text;
           if Moedas.Locate('Codigo', cFreteMoedaCodigo.Text, [loCaseInsensitive]) then
              cFreteMoedaNome.Text := MoedasNome.AsString;

           cSeguroMoedaNome.Text   := mNodeDI.ChildNodes['seguroMoedaNegociadaNome'].text;
           
           if mNodeDI.ChildNodes['codigoViaTransporte'] <> nil then begin
              case StrtoInt(mNodeDI.ChildNodes['codigoViaTransporte'].text) of
                   1: cViaTransporte.text := 'MARITIMA';
                   2: cViaTransporte.text := 'FLUVIAL';
                   3: cViaTransporte.text := 'LACUSTRE';
                   4: cViaTransporte.text := 'AEREA';
                   5: cViaTransporte.text := 'POSTAL';
                   6: cViaTransporte.text := 'FERROVIARIA';
                   7: cViaTransporte.text := 'RODOVIARIA';
                   8: cViaTransporte.text := 'TUBO-CONDUTO';
                   9: cViaTransporte.text := 'MEIOS PROPRIOS';
                  10: cViaTransporte.text := 'ENTRADA FICTA';
              end;
           end;

           cViaCodigo.Text         := mNodeDI.ChildNodes['codigoViaTransporte'].text;
           cTransportador.text     := mNodeDI.ChildNodes['viaTransporteNomeTransportador'].text;
           cNomeEmbarcacao.text    := mNodeDI.ChildNodes['nomeTransportadorViaTransporte'].text;
           cManifestoCarga.text    := mNodeDI.ChildNodes['numeroManifesto'].text;
           cLocalEmbarque.text     := mNodeDI.ChildNodes['conhecimentoCargaEmbarqueLocal'].text;
           cDataEmbarque.Text      := Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,7,2)+'/'+Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,5,2)+'/'+Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,1,4);
           cTipoConhecimento.text  := mNodeDI.ChildNodes['conhecimentoCargaTipoNome'].text;
           cSeguroMoedaCodigo.Text := mNodeDI.ChildNodes['codigoMoedaSeguro'].text;

           If cSeguroMoedaCodigo.Text = '000' then
              cSeguroMoedaCodigo.Clear;
              
           cLocalDesembCod.Text    := mNodeDI.ChildNodes['codigoUrfCargaEntrada'].text;
           cLocalDesembNome.Text   := mNodeDI.ChildNodes['cargaUrfEntradaNome'].text;
           
           if (mNodeDI.ChildNodes['canalSelecaoParametrizada'].text) <> '' then
              cCanal.ItemIndex := StrtoInt(mNodeDI.ChildNodes['canalSelecaoParametrizada'].text)-1;
              
           cPaisProcedCod.Text := mNodeDI.ChildNodes['codigoPaisProcedenciaCarga'].text;

           mAchouPais := Paises.Locate('Codigo', cPaisProcedCod.Text, [loCaseInsensitive]);
           If not mAchouPais then begin
              mAchouPais := Paises.Locate('Codigo', cPaisProcedCod.Text+'0', [loCaseInsensitive]);
              If not mAchouPais then begin
                 mAchouPais := Paises.Locate('Codigo', '0'+cPaisProcedCod.Text, [loCaseInsensitive]);
              End;
           End;
           If mAchouPais then begin
              cPaisProcedCod.Text  := PaisesCodigo.Value;
              cPaisProcedNome.Text := PaisesNome.Value;
           End;

           // Cadastrando o real "Valor fixo 1 para 1.
           Moedas.Locate('Codigo', 790, [loCaseInsensitive]);
           cTaxas.Lines.Add('REAL     :'+Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value)))+ PadR(MoedasSimbolo.AsString,3)+' '+ FormatFloat('#,##0.00000', 1) );
           If Cotacao.Locate('Moeda;Data',VarArrayOf([790,cDataRegistro.Date]), [loCaseInsensitive]) = False then begin
              Cotacao.Append;
                      CotacaoMoeda.Value := 790;
                      CotacaoData.Value  := cDataRegistro.Date;
                      CotacaoValor.Value := 1;
              Cotacao.Post;
           End;

           // Cotação da moeda utilizada para o Total Frete.
           If Trim(mNodeDI.ChildNodes['valorTotalFreteCollect'].Text) <> '' then begin
              mMoeda := iif(mNodeDI.ChildNodes['codigoMoedaFrete'].Text = '', '0', mNodeDI.ChildNodes['codigoMoedaFrete'].Text);
              Moedas.Locate('Codigo', mMoeda, [loCaseInsensitive]);

              mVlrReal := FormatFloat('##0.00', StrtoFloat(mNodeDI.ChildNodes['valorTotalFreteMoedaNacional'].Text)/100);
              mVlr     := FormatFloat('##0.00', StrtoFloat(mNodeDI.ChildNodes['valorTotalFreteCollect'].Text)/100);

              if StrtoFloat(mVlr) > 0 then
                 cTaxas.Lines.Add('FRETE    :'+Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value))) + PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat(',##0.00000', (StrtoFloat(mVlrReal) / StrtoFloat(mVlr)) ) );

              If Cotacao.Locate('Moeda;Data',VarArrayOf([StrtoInt(mMoeda), cDataRegistro.Date]), [loCaseInsensitive]) = False then
                 Cotacao.Append
              else
                 Cotacao.Edit;
                         CotacaoMoeda.Value := StrtoInt(mMoeda);
                         CotacaoData.Value  := cDataRegistro.Date;
                         if StrtoFloat(mVlr) > 0 then
                            CotacaoValor.Value := Roundto(StrtoFloat(mVlrReal) / StrtoFloat(mVlr), -4);
                 Cotacao.Post;
           End;

           // Cotação da moeda utilizada para o Total Seguro.
           If Trim(mNodeDI.ChildNodes['valorTotalSeguroMoedaNegociada'].Text) <> '' then begin
              mMoeda := iif(mNodeDI.ChildNodes['codigoMoedaSeguro'].Text = '', '0', mNodeDI.ChildNodes['codigoMoedaSeguro'].Text);
              Moedas.Locate('Codigo', mMoeda, [loCaseInsensitive]);

              if cSeguroME.Value > 0 then
                 cTaxas.Lines.Add('SEGURO   :'+Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value))) + PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat(',##0.00000', cSeguroReal.Value/cSeguroME.Value ));

              If Cotacao.Locate('Moeda;Data',VarArrayOf([StrtoInt(mMoeda), cDataRegistro.Date]), [loCaseInsensitive]) = False then
                 Cotacao.Append
              else
                 Cotacao.Edit;
                         CotacaoMoeda.Value := StrtoInt(mMoeda);
                         CotacaoData.Value  := cDataRegistro.Date;
                         if cSeguroME.Value > 0 then
                            CotacaoValor.Value := Roundto(cSeguroReal.Value/cSeguroME.Value, -4);
                 Cotacao.Post;
           End;

           mMoeda := '';                                                   
           mForn  := '';
           i      := 0;
           
           cFornecedoresCheck.Items.Clear;
           cFornecedoresAchados.Clear;
           gFornecedores.RowCount := 2;

           cComplemento.Clear;
           cComplemento.Lines.Add(RemoveCaracter('<informacaoComplementar>', '', mNodeDI.ChildNodes['informacaoComplementar'].XML));

           //Carregando as Adições do arquivo XML.
           With gAdicoes do begin
                RowCount := 2;

                mNodeAD  := mNodeDI.ChildNodes.FindNode('adicao');
                mNodeAD.ChildNodes.First;

                While mNodeAD <> nil do begin
                      If mNodeAD.ChildNodes['numeroAdicao'].Text <> '' then begin
                         Cells[00, RowCount-1] := mNodeAD.ChildNodes['numeroAdicao'].Text;
                         Cells[01, RowCount-1] := mNodeAd.ChildNodes['codigoMercadoriaNCM'].Text;

                         mNodeImposto := mNodeAD.ChildNodes.FindNode('tributo');
                         if mNodeImposto <> nil then mNodeImposto.ChildNodes.First;

                         Cells[02, RowCount-1] := '0.00';
                         Cells[03, RowCount-1] := '0.00';
                         Cells[04, RowCount-1] := '0.00';
                         Cells[05, RowCount-1] := '0.00';
                         Cells[06, RowCount-1] := '0.00';
                         Cells[07, RowCount-1] := '0.00';
                         Cells[08, RowCount-1] := '0.00';
                         Cells[09, RowCount-1] := '0.00';

                         for i := 1 to 4 do begin
                             if mNodeImposto.ChildNodes['codigoReceitaImposto'].Text = '0006' then begin  // COFINS.
                                Cells[02, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodeImposto.ChildNodes['percentualAliquotaNormalAdval'].Text)/100);
                                Cells[03, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodeImposto.ChildNodes['valorImpostoDevido'].Text)/100);
                                Cells[21, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodeImposto.ChildNodes['valorBaseCalculoAdval'].Text)/100);
                                if Trim(mNodeImposto.ChildNodes['valorImpostoDevido'].Text) <> '' then
                                   cTotalCOFINSMaj.Value := cTotalCOFINSMaj.Value + StrtoFloat(mNodeImposto.ChildNodes['valorImpostoDevido'].Text)/100;
                             end;
                             if mNodeImposto.ChildNodes['codigoReceitaImposto'].Text = '0005' then begin  // PIS.
                                Cells[04, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodeImposto.ChildNodes['percentualAliquotaNormalAdval'].Text)/100);
                                Cells[05, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodeImposto.ChildNodes['valorBaseCalculoAdval'].Text)/100);
                                if Trim(mNodeImposto.ChildNodes['valorImpostoDevido'].Text) <> '' then
                                   cTotalPISMaj.Value := cTotalPISMaj.Value + StrtoFloat(mNodeImposto.ChildNodes['valorImpostoDevido'].Text)/100;
                             end;
                             if mNodeImposto.ChildNodes['codigoReceitaImposto'].Text = '0001' then begin  // II.
                                Cells[06, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodeImposto.ChildNodes['percentualAliquotaNormalAdval'].Text)/100);
                                Cells[07, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodeImposto.ChildNodes['valorImpostoDevido'].Text)/100);
                                cTotalII.Value        := cTotalII.Value + StrtoFloat(mNodeImposto.ChildNodes['valorImpostoDevido'].Text)/100;
                                if Trim(mNodeImposto.ChildNodes['percentualAliquotaReduzida'].Text) <> '' then
                                   Cells[27, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeImposto.ChildNodes['percentualAliquotaReduzida'].Text)/100);
                                if Trim(mNodeImposto.ChildNodes['percentualAliquotaAcordoTarifario'].Text) <> '' then
                                   Cells[28, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeImposto.ChildNodes['percentualAliquotaAcordoTarifario'].Text)/100);
                             end;
                             if mNodeImposto.ChildNodes['codigoReceitaImposto'].Text = '0002' then begin  // IPI.
                                Cells[08, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodeImposto.ChildNodes['percentualAliquotaNormalAdval'].Text)/100);
                                Cells[09, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodeImposto.ChildNodes['valorImpostoDevido'].Text)/100);
                                cTotalIPI.Value       := cTotalIPI.Value + StrtoFloat(mNodeImposto.ChildNodes['valorImpostoDevido'].Text)/100;
                                Cells[29, RowCount-1] := '0.00';
                                if Trim(mNodeAD.ChildNodes['percentualAliquotaReduzida'].Text) <> '' then
                                   Cells[29, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['percentualAliquotaReduzida'].Text)/100);
                             end;

                             mNodeImposto := mNodeImposto.NextSibling;
                         end;

                         // Calculo do COFINS2 c/alíquota basica.
                         if Trim(Cells[2, RowCount-1]) <> '' then begin
                            Majoracao.SQL.Clear;
                            Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''M'' AND Descricao = ''COFINS'' AND Majorada = :pAliquota AND Modalidade = :pModal');
                            Majoracao.ParamByName('pAliquota').AsFloat := StrValor(Cells[2, RowCount-1]);
                            Majoracao.ParamByName('pModal').AsInteger  := cModalidade.KeyValue;
                            Majoracao.Open;

                            If Majoracao.RecordCount > 0 then begin
                               cTotalCOFINSNF.Value  := cTotalCOFINSNF.VAlue + Roundto((StrValor(Cells[21, RowCount-1]) * MajoracaoEntrada.AsFloat), -2) /100;
                               Cells[24, RowCount-1] := FormatFloat(',##0.00', MajoracaoEntrada.AsFloat);
                               Cells[25, RowCount-1] := FormatFloat(',##0.00', MajoracaoSaida.AsFloat);
                            end else begin
                               cTotalCOFINSNF.Value  := cTotalCOFINSNF.Value + StrValor(Cells[3, RowCount-1]);
                               Cells[24, RowCount-1] := Cells[02, RowCount-1];
                               Cells[25, RowCount-1] := Cells[02, RowCount-1];
                            End;
                         end;
                         // Calculo do PIS2 c/alíquota basica.
                         if Trim(Cells[4, RowCount-1]) <> '' then begin
                            Majoracao.SQL.Clear;
                            Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''M'' AND Descricao = ''PIS'' AND Majorada = :pAliquota AND Modalidade = :pModal');
                            Majoracao.ParamByName('pAliquota').AsFloat := StrValor(Cells[4, RowCount-1]);
                            Majoracao.ParamByName('pModal').AsInteger  := cModalidade.KeyValue;
                            Majoracao.Open;

                            If Majoracao.RecordCount > 0 then begin
                               cTotalPISNF.Value := cTotalPISNF.Value + Roundto( (StrValor(Cells[21, RowCount-1]) * MajoracaoEntrada.AsFloat), -2) /100;
                               Cells[22, RowCount-1] := FormatFloat(',##0.00', MajoracaoEntrada.AsFloat);
                               Cells[23, RowCount-1] := FormatFloat(',##0.00', MajoracaoSaida.AsFloat);
                            end else begin
                               cTotalPISNF.Value := cTotalPISNF.Value + StrValor(Cells[5, RowCount-1]);
                               Cells[22, RowCount-1] := Cells[04, RowCount-1];
                               Cells[23, RowCount-1] := Cells[04, RowCount-1];
                            End;
                         end;
                         
                         // Peso Líquido.
                         if Trim(mNodeAD.ChildNodes['pesoLiquidoMercadoria'].Text) <> '' then
                            Cells[10, RowCount-1] := FormatFloat(',##0.00000', StrtoFloat(mNodeAD.ChildNodes['pesoLiquidoMercadoria'].Text)/100000);

                         // INCOTERM.
                         Cells[11, RowCount-1] := mNodeAD.ChildNodes['codigoIncotermsVenda'].Text;

                         // Moeda.
                         Cells[12, RowCount-1] := mNodeAD.ChildNodes['codigoMoedaNegociada'].Text;
                         if Moedas.Locate('Codigo', Cells[12, RowCount-1], [loCaseInsensitive]) then
                            Cells[13, RowCount-1] := Dados.MoedasNome.AsString;

                         // Fornecedor.
                         Cells[14, RowCount-1] := mNodeAD.ChildNodes['nomeFornecedorEstrangeiro'].Text;

                         // País de procedência da mercadoria.
                         Cells[15, RowCount-1] := mNodeAD.ChildNodes['codigoPaisAquisicaoMercadoria'].Text+DigitoPais(mNodeAD.ChildNodes['codigoPaisAquisicaoMercadoria'].Text);
                         mAchouPais := Paises.Locate('Codigo', Cells[15, RowCount-1], [loCaseInsensitive]);
                         if mAchouPais then begin
                            Cells[16, RowCount-1] := PaisesNome.AsString;
                         end;

                         // Moeda / Cotação da moeda utilizada para o Total FOB.
                         If mMoeda <> mNodeAD.ChildNodes['codigoMoedaNegociada'].Text then begin
                            mMoeda := mNodeAD.ChildNodes['codigoMoedaNegociada'].Text;
                            Moedas.Locate('Codigo', mMoeda, [loCaseInsensitive]);

                            if Trim(mNodeAD.ChildNodes['valorMercadoriaVendaMoedaNacional'].Text) <> '' then
                               mVlrReal := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['valorMercadoriaVendaMoedaNacional'].Text)/100);
                            if Trim(mNodeAD.ChildNodes['valorMercadoriaCondicaoVenda'].Text) <> '' then
                               mVlr     := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['valorMercadoriaCondicaoVenda'].Text)/100);

                            cTaxas.Lines.Add('FOB      :'+ Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value))) + PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat(',##0.00000', (StrtoFloat(mVlrReal) / StrtoFloat(mVlr)) ));

                            If Cotacao.Locate('Moeda;Data',VarArrayOf([StrtoInt(mMoeda), cDataRegistro.Date]), [loCaseInsensitive]) = False then
                               Cotacao.Append
                            else begin
                               Cotacao.Edit;
                            end;   
                                    CotacaoMoeda.Value := StrtoInt(mMoeda);
                                    CotacaoData.Value  := cDataRegistro.Date;
                                    CotacaoValor.Value := Roundto(StrtoFloat(mVlrReal) / StrtoFloat(mVlr), -4);
                            Cotacao.Post;
                         End;

                         // Pega todos os fornecedores do arquivo XML e Relaciona com os fornecedores do sistema.
                         i := 0;
                         If mNodeAD.ChildNodes['nomeFornecedorEstrangeiro'].Text <> mForn then begin
                            mForn := mNodeAD.ChildNodes['nomeFornecedorEstrangeiro'].Text;
                            cFornecedoresCheck.Items.Add(mForn);

                            gFornecedores.Cells[00, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['nomeFornecedorEstrangeiro'].Text;
                            gFornecedores.Cells[01, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['enderecoCidadeFornecedorEstrangeiro'].Text;
                            gFornecedores.Cells[03, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['enderecoLogradouroFornecedorEstrangeiro'].Text;
                            gFornecedores.Cells[04, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['enderecoNumeroFornecedorEstrangeiro'].Text;
                            gFornecedores.Cells[05, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['enderecoComplementoFornecedorEstrangeiro'].Text;
                            gFornecedores.Cells[06, gFornecedores.RowCount-1] := Cells[15, RowCount-1];
                            gFornecedores.Cells[08, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['numeroAdicao'].Text;

                            If Fornecedores.Locate('Nome', Copy(mForn, 1, 60) , [loCaseInsensitive]) then begin
                               cFornecedoresCheck.Checked[i]     := False;
                               cFornecedoresCheck.ItemEnabled[i] := False;
                               cFornecedoresAchados.Lines.Add(FornecedoresNome.Value);
                               gFornecedores.Cells[7, gFornecedores.RowCount-1] := FornecedoresCodigo.AsString;
                            end else begin
                               cFornecedoresCheck.Checked[i] := True;

                               Fornecedores.First;
                               mSoundex := '';
                               While not Fornecedores.Eof do begin
                                     If SoundexSimilar(mForn, Trim(FornecedoresNome.AsString)) then begin
                                        cFornecedoresAchados.Lines.Clear;
                                        mSoundex := Soundex(FornecedoresNome.AsString, 60);
                                        cFornecedoresAchados.Lines.Add(FornecedoresNome.Value);
                                        cFornecedoresCheck.Checked[i] := False;
                                     End;
                                     Fornecedores.Next;
                               End;
                            End;

                            gFornecedores.RowCount := gFornecedores.RowCount + 1;
                            Inc(i);
                         End;

                         // Alíquota e valor do ICMS.
                         Cells[19, RowCount-1] := FormatFloat('##0.00', 0);

                         // Descricao da NCM.
                         if dmFiscal.NCM.Locate('NCM', Cells[01, RowCount-1], [loCaseInsensitive]) then
                            Cells[26, RowCount-1] := dmFiscal.NCMProduto.AsString;

                         Cells[30, RowCount-1] := mNodeAD.ChildNodes['nomeUnidadeMedidaComercializada'].Text;

                         if Trim(mNodeAD.ChildNodes['valorMercadoriaCondicaoVenda'].Text) <> '' then
                            Cells[31, RowCount-1] := FormatFloat('#,##0.000000', StrtoFloat(mNodeAD.ChildNodes['valorMercadoriaCondicaoVenda'].Text)/10000000);

                         RowCount := RowCount + 1;
                      End;

                      mNodeAD := mNodeAD.NextSibling;
                End;

                If RowCount > 2 then RowCount := RowCount -1;
                If gFornecedores.RowCount > 2 then gFornecedores.RowCount := gFornecedores.RowCount -1;

                mMoedas       := 1;
                mCodigoMoedas := Cells[12,1];

                For i := 1 to RowCount -1 do begin
                    // Apura quantidade de moedas negociada para o FOB.
                    If Cells[12,i] <> mCodigoMoedas then begin
                       mCodigoMoedas := Cells[12,i];
                       Inc(mMoedas);
                    End;

                    // Zera as colunas de valoração caso não haja valoração na DI.
                    Cells[17, i] := FormatFloat(',##0.00', 0);
                    Cells[18, i] := FormatFloat(',##0.00', 0);
                End;

                If mMoedas > 1 then begin
                   cFOBMoedaCodigo.Text := Dados.ConfiguracaoMoeda_Importacao.AsString
                end else begin
                   cFOBMoedaCodigo.Text := gAdicoes.Cells[12,1];
                End;
                If Dados.Moedas.Locate('Codigo', cFOBMoedaCodigo.Text, [loCaseInsensitive]) then begin
                   cFOBMoedaNome.Text := MoedasNome.AsString;
                End;
                If Cotacao.Locate('Moeda;Data',VarArrayOf([cFOBMoedaCodigo.Text, cDataReg.Date]), [loCaseInsensitive]) then begin
                   cFOBTaxa.Value := CotacaoValor.Value;
                End;
                If cFreteME.Value > 0 then begin
                   If Cotacao.Locate('Moeda;Data',VarArrayOf([cFreteMoedaCodigo.Text, cDataReg.Date]), [loCaseInsensitive]) then begin
                      cFreteTaxa.Value := CotacaoValor.Value;
                   End;
                End;
                If cSeguroME.Value > 0 then begin
                   If Cotacao.Locate('Moeda;Data',VarArrayOf([cSeguroMoedaCodigo.Text, cDataReg.Date]), [loCaseInsensitive]) then begin
                      cSeguroTaxa.Value := CotacaoValor.Value;
                   End;
                End;

                // Somando os acréscimos da adição.
                mNodeAD  := mNodeDI.ChildNodes.FindNode('adicao');
                mNodeAD.ChildNodes.First;

                i := 1;
                While mNodeAD <> nil do begin
                      mAcrescimoME   := 0;
                      mAcrescimoReal := 0;

                      If mNodeAD.ChildNodes['numeroAdicao'].Text <> '' then begin
                         mNodeAcre := mNodeAD.ChildNodes.FindNode('acrescimo');

                         If mNodeAcre <> nil then mNodeAcre.ChildNodes.First;

                         While mNodeAcre <> nil do begin
                               mNodeVal :=  mNodeAcre.ChildNodes.FindNode('codigoAcrescimo');
                               If mNodeVal <> nil then begin
                                  If mMoedas = 1 then begin
                                     mAcrescimoME := mAcrescimoME + StrValor(mNodeAcre.ChildNodes['valorMoedaNegociada'].Text)/100;
                                  end else begin
                                     If Cotacao.Locate('Moeda;Data', VarArrayOf([Dados.ConfiguracaoMoeda_Importacao.Value, cDataReg.Date]), [loCaseInsensitive]) then begin
                                        mAcrescimoME := mAcrescimoME + (StrValor(mNodeAcre.ChildNodes['valorReais'].Text)/CotacaoValor.AsFloat)/100;
                                     End;
                                  End;
                                  mAcrescimoReal := mAcrescimoReal + StrValor(mNodeAcre.ChildNodes['valorReais'].Text)/100;
                               End;
                               mNodeAcre := mNodeAcre.NextSibling;
                         End;
                      End;

                      If mAcrescimoReal > 0 then begin
                         Cells[17, i] := FormatFloat(',##0.00', mAcrescimoReal/cFobTaxa.Value);
                         Cells[18, i] := FormatFloat(',##0.00', mAcrescimoReal);
                      End;
                      
                      mNodeAD := mNodeAD.NextSibling;
                      Inc(i);
                End;
           End;

           //Carregando os produtos das Adições do arquivo XML.
           cQuantidade.Value := 0;
           cFOBME.Value      := 0;
           cFOBReal.Value    := 0;

           With gProdutos do begin
                RowCount := 2;

                mNodeAD  := mNodeDI.ChildNodes.FindNode('adicao');
                mNodeAD.ChildNodes.First;

                While mNodeAD <> nil do begin
                      mNodeMerc := mNodeAD.ChildNodes.FindNode('mercadoria');
                      If mNodeMerc <> nil then mNodeMerc.ChildNodes.First;

                      While mNodeMerc <> nil do begin
                            mNodeProd := mNodeMerc.ChildNodes.FindNode('textoDetalhamentoMercadoria');
                            If mNodeProd <> nil then begin
                               Cells[0, RowCount-1] := mNodeAd.ChildNodes['numeroAdicao'].Text;
                               Cells[1, RowCount-1] := InttoStr(RowCount -1);
                               Cells[2, RowCount-1] := mNodeAd.ChildNodes['codigoMercadoriaNCM'].Text;
                               Cells[3, RowCount-1] := Trim(mNodeMerc.ChildNodes['textoDetalhamentoMercadoria'].Text);
                               Cells[4, RowCount-1] := Trim(mNodeMerc.ChildNodes['nomeUnidadeMedidaComercializada'].Text);
                               Cells[5, RowCount-1] := FormatFloat(',##0.000', StrtoFloat(mNodeMerc.ChildNodes['quantidadeMercadoriaUnidadeComercializada'].Text)/100000);
                               Cells[6, RowCount-1] := FormatFloat(',##0.0000', Roundto(StrtoFloat(mNodeMerc.ChildNodes['valorUnidadeMedidaCondicaoVenda'].Text)/10000000, -6) );
                               Cells[8, RowCount-1] := mNodeAd.ChildNodes['nomeFornecedorEstrangeiro'].Text;

                               cQuantidade.Value := cQuantidade.Value + StrValor(Cells[5, RowCount-1]);

                               cDumping.Items.Add(PoeZero(3, Strtoint(mNodeAd.ChildNodes['numeroAdicao'].Text))+'/'+PoeZero(4, StrtoInt(Cells[1, RowCount-1]))+ ': '+Cells[3, RowCount-1]);

                               (*
                               // Verifica o código de referência do produto na descrição caso esteja informada a mascara em configurações do sistema processos.
                               mCodigoFab := '';
                               mPedidoFab := '';
                               mOrdemFab  := '';
                               mDescricao := Trim(mNodeMerc.ChildNodes['textoDetalhamentoMercadoria'].Text);

                               If (Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString) <> '') and (Pos('<[', mDescricao) <> 0 ) then begin
                                  mCodigoFab := Copy(mDescricao, 1, Pos(Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString), mDescricao)-1);
                                  mCodigoFab := Copy(mCodigoFab, 1, 20);
                                  mTamFab    := (Pos(']>', mDescricao)-1) - (Pos('<[', mDescricao)+1);
                                  mPedidoFab := Copy(mDescricao, Pos('<[', mDescricao)+2, mTamFab);
                                  mTamFab    := (Pos('>]', mDescricao)-1) - (Pos('[<', mDescricao)+1);
                                  mOrdemFab  := Copy(mDescricao, Pos('[<', mDescricao)+2, mTamFab);
                                  If mOrdemFab = '' then begin
                                     mOrdemFab := '0';
                                  End;
                               End;

                               If ConfiguracaoSISCOMEX_MascaraPosicao.AsInteger = 1 then begin
                                  // Referencia esta no inicio da descrição da mercadoria.
                                  If (Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString) <> '') and (Pos(ConfiguracaoSISCOMEX_MascaraReferencia.AsString, mDescricao) <> 0 ) then begin
                                     mCodigoFab := Copy(mDescricao, 1, Pos(Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString), mDescricao)-1);
                                  End;
                               end else begin
                                  // Referencia esta no final da descrição da mercadoria.
                                  If (Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString) <> '') and (Pos(ConfiguracaoSISCOMEX_MascaraReferencia.AsString, mDescricao) <> 0 ) then begin
                                     mCodigoFab := Copy(mDescricao, Pos(ConfiguracaoSISCOMEX_MascaraReferencia.AsString, mDescricao)+Length(ConfiguracaoSISCOMEX_MascaraReferencia.AsString), 20);
                                  End;
                               end;

                               Cells[13, RowCount-1] := Trim(mCodigoFab);
                               *)
                               
                               // Pega código de referência, PO e Item do produto na descrição caso esteja informada a mascara em configurações do sistema processos.
                               mDescricao     := Trim(mNodeMerc.ChildNodes['textoDetalhamentoMercadoria'].Text);
                               mMarcaRef      := Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString);
                               mMarcaPO       := Trim(ConfiguracaoSISCOMEX_MascaraPO.AsString);
                               mMarcaItem     := Trim(ConfiguracaoSISCOMEX_MascaraItem.AsString);
                               mMarcaPOFech   := Trim(ConfiguracaoSISCOMEX_MascaraPOFech.AsString);
                               mMarcaItemFech := Trim(ConfiguracaoSISCOMEX_MascaraItemFech.AsString);

                               if mMarcaRef <> '' then begin
                                  if mMarcaRef = '*' then begin
                                     Cells[13, RowCount-1] := PegaParte(mDescricao, '', mMarcaRef);
                                     Cells[16, RowCount-1] := PegaParte(mDescricao, '', mMarcaRef);
                                  end else begin
                                     // Referencia esta no inicio da descrição da mercadoria.
                                     if ConfiguracaoSISCOMEX_MascaraPosicao.AsInteger = 1 then begin
                                        Cells[13, RowCount-1] := PegaParte(mDescricao, '', mMarcaRef);
                                        Cells[16, RowCount-1] := PegaParte(mDescricao, '', mMarcaRef);
                                     end else begin
                                        // Referencia esta no final da descrição da mercadoria.
                                        Cells[13, RowCount-1] := PegaParte(mDescricao, mMarcaRef, '');
                                        Cells[16, RowCount-1] := PegaParte(mDescricao, mMarcaRef, '');
                                     end;
                                  end;
                                  //mDescricao := RemoveCaracter(Cells[16, RowCount-1]+mMarcaRef, '', mDescricao);
                               end;
                               
                               // Pegando o numero do PO.
                               if mMarcaPO <> '' then begin
                                  Cells[18, RowCount-1] := PegaParte(mDescricao, mMarcaPO, mMarcaPOFech);
                                  mDescricao            := RemoveCaracter(mMarcaPO+Cells[18, RowCount-1]+mMarcaPOFech, '', mDescricao);
                               end;
                               // Pegando o numero do item.
                               if mMarcaItem <> '' then begin
                                  Cells[19, RowCount-1] := PegaParte(mDescricao, mMarcaItem, mMarcaItemFech);
                                  mDescricao            := RemoveCaracter(mMarcaItem+Cells[19, RowCount-1]+mMarcaItemFech, '', mDescricao);
                               end;

                               if Cells[19, RowCount-1] = '' then Cells[19, RowCount-1] := '0';

                               Cells[03, RowCount-1] := mDescricao;

                               RowCount := RowCount + 1;
                            End;

                            mNodeMerc := mNodeMerc.NextSibling;
                      End;

                      mNodeAd := mNodeAd.NextSibling;
                End;

                If RowCount > 2 then RowCount := RowCount -1;

                cTituloAD.Caption := 'Itens das Adições ['+InttoStr(RowCount-1)+']';
           End;

           cCAMEX.Items.Assign(cDumping.Items);

           cDescricao.Lines.Clear;
           cDescricao.Lines.Add(gProdutos.Cells[3, gProdutos.Row]);

           // Rateia valoração pelo valor FOB ou pelo Peso Líquido.
           With gProdutos do begin
                For i := 1 to RowCount -1 do begin
                    gLinha := PesquisaStringGrid(gAdicoes, 0, Cells[0,i]);
                    If (gLinha > 0) and (Trim(gAdicoes.Cells[17, gLinha]) <> '') then begin
                       Cells[10,i] := gAdicoes.Cells[06, gLinha];
                       Cells[11,i] := gAdicoes.Cells[27, gLinha];
                       Cells[12,i] := gAdicoes.Cells[28, gLinha];

                       If (ConfiguracaoRateio_Valoracao.AsString = 'V') or (Invoice.RecordCount = 0) then begin
                           if Trim(gAdicoes.Cells[31, gLinha]) <> '' then
                              Cells[7, i] := FormatFloat('#,##0.00000000', Roundto( (StrValor(gAdicoes.Cells[17, gLinha]) / StrValor(gAdicoes.Cells[31, gLinha])) * StrValor(Cells[6, i]), -6));
                       end else begin
                           if Trim(gAdicoes.Cells[10, gLinha]) <> '' then
                              Cells[7, i] := FormatFloat('#,##0.00000000', Roundto( (StrValor(gAdicoes.Cells[17, gLinha]) / StrValor(gAdicoes.Cells[10, gLinha])) * StrValor(Cells[6, i]), -6));
                       End;
                    End;
                End;
           End;

           // Converte o valor total FOB das adicões para Real e totaliza as quantidades das Adições.
           With gAdicoes do begin
                For i := 1 to RowCount -1 do begin
                    if Trim(Cells[31, i]) <> '' then begin
                       Cells[32, i] := FormatFloat('#,##0.00', (StrValor(Cells[31, i]) * cFOBTaxa.Value));
                       mSoma := 0;
                       For f := 1 to gProdutos.RowCount -1 do begin
                           If gProdutos.Cells[0, f] = gAdicoes.Cells[0, i] then begin
                              mSoma := mSoma + StrValor(gProdutos.Cells[5, f]);
                           End;
                       End;
                       Cells[33, i] := FormatFloat('#,##0.000', mSoma);
                    end;
                End;
           End;

           // Carregando os valores dos acréscimos e cadastra as cotações de moeda dos acréscimos.
           With gAcrescimo do begin
                RowCount := 2;
                gAcrescimo.Rows[1].Clear;
                cAcrescimoME.Value := 0;
     
                mNodeAD  := mNodeDI.ChildNodes.FindNode('adicao');
                mNodeAD.ChildNodes.First;

                While mNodeAD <> nil do begin
                      mNodeAcre := mNodeAD.ChildNodes.FindNode('acrescimo');
                      If mNodeAcre <> nil then mNodeAcre.ChildNodes.First;

                      While mNodeAcre <> nil do begin
                            mNodeVal := mNodeAcre.ChildNodes.FindNode('codigoAcrescimo');
                            If mNodeVal <> nil then begin
                               Cells[0, RowCount-1] := mNodeAd.ChildNodes['numeroAdicao'].Text;
                               Cells[1, RowCount-1] := mNodeAcre.ChildNodes['codigoAcrescimo'].Text;
                               Cells[2, RowCount-1] := mNodeAcre.ChildNodes['denominacao'].Text;
                               Cells[3, RowCount-1] := mNodeAcre.ChildNodes['moedaNegociadaCodigo'].Text;
                               Cells[4, RowCount-1] := mNodeAcre.ChildNodes['moedaNegociadaNome'].Text;
                               Cells[5, RowCount-1] := FormatFloat(',##0.00', (StrValor(mNodeAcre.ChildNodes['valorReais'].Text)/100)/cFOBTaxa.Value);
                               Cells[6, RowCount-1] := FormatFloat(',##0.00', StrValor(mNodeAcre.ChildNodes['valorReais'].Text)/100);
                               If StrValor(Cells[5, RowCount-1]) > 0 then
                                  Cells[7, RowCount-1] := FormatFloat(',##0.0000', StrValor(Cells[6, RowCount-1])/StrValor(Cells[5, RowCount-1]))
                               else
                                  Cells[7, RowCount-1] := FormatFloat(',##0.0000', 0);

                               // Cotação das moedas da valoração.
                               mMoeda := Cells[3, RowCount-1];
                               Moedas.Locate('Codigo', mMoeda, [loCaseInsensitive]);

                               If Pos('ACRÉSCIMO:'+MoedasNome.Value, cTaxas.Text) = 0 then begin
                                  If StrValor(Cells[5, RowCount-1]) > 0 then begin
                                     if StrValor(Cells[6, RowCount-1]) > 0 then
                                        cTaxas.Lines.Add('ACRÉSCIMO:'+ Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value))) + PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat(',##0.00000', StrValor(Cells[5, RowCount-1]) / StrValor(Cells[6, RowCount-1]) ));

                                     If Cotacao.Locate('Moeda;Data',VarArrayOf([StrtoInt(mMoeda), cDataRegistro.Date]), [loCaseInsensitive]) = False then
                                        Cotacao.Append
                                     else
                                        Cotacao.Edit;
                                                CotacaoMoeda.Value := StrtoInt(mMoeda);
                                                CotacaoData.Value  := cDataRegistro.Date;
                                                CotacaoValor.Value := Roundto(StrValor(Cells[6, RowCount-1]) / StrValor(Cells[5, RowCount-1]), -4);
                                        Cotacao.Post;
                                  End;
                               End;

                               // Totalização dos acrescimos.
                               If Cells[3, RowCount-1] = cFOBMoedaCodigo.Text then begin
                                  If StrValor(Cells[5, RowCount-1]) <> 0 then begin
                                     cAcrescimoME.Value := cAcrescimoME.Value + StrValor(Cells[5, RowCount-1]);
                                  end else begin
                                     cAcrescimoReal.Value := cAcrescimoReal.Value + StrValor(Cells[6, RowCount-1]);
                                  End;
                               end else begin
                                  Cotacao.Locate('Moeda;Data', VarArrayOf([Cells[3, RowCount-1], cDataReg.Date]), [loCaseInsensitive]);
                                  cAcrescimoME.Value := cAcrescimoME.Value + ((StrValor(Cells[5, RowCount-1]) * CotacaoValor.AsFloat) / cFOBTaxa.Value);
                               End;

                               RowCount := RowCount + 1;
                            End;

                            mNodeAcre := mNodeAcre.NextSibling;
                      End;

                      mNodeAd := mNodeAd.NextSibling;
                End;

                If RowCount > 2 then RowCount := RowCount -1;
           End;

           cAcrescimoReal.Value := cAcrescimoME.Value * cFOBTaxa.Value;

           // Calcula a Marinha Mercante - "AFRMM".
           cAFRMM.Value := 0;
           {
           If (cViaTransporte.Text = 'MARíTIMA') or (cViaTransporte.Text = 'MARITIMA')then begin
              cAFRMM.Value := Percentual(cFreteReal.Value + cAcrescimoReal.Value, ConfiguracaoAFRMM_Percentual.AsFloat) + ConfiguracaoAFRMM_Taxa.AsCurrency + ConfiguracaoAFRMM_Tarifa.AsCurrency;
           End;
           }
           If (cViaTransporte.Text = 'MARíTIMA') or (cViaTransporte.Text = 'MARITIMA')then begin
              cAFRMM.Value := Percentual(cFreteReal.Value + cAcrescimoReal.Value, ConfiguracaoAFRMM_Percentual.AsFloat) + ConfiguracaoAFRMM_Taxa.AsCurrency + ConfiguracaoAFRMM_Tarifa.AsCurrency;
           End;

           // Carregando os pagamentos.
           With gPagamentos do begin
                RowCount := 2;
                gPagamentos.Rows[1].Clear;

                mNodePgto  := mNodeDI.ChildNodes.FindNode('pagamento');
                mNodePgto.ChildNodes.First;

                While mNodePgto <> nil do begin
                      If mNodePgto.ChildNodes['codigoReceita'].Text <> '' then begin
                         Cells[0, RowCount-1] := mNodePgto.ChildNodes['codigoReceita'].Text;

                         With Dados do begin
                              // Indentifica os códigos da classificação financeira.
                              tPesquisa2.SQL.Clear;
                              tPesquisa2.SQL.Add('SELECT Codigo, Descricao FROM ClassificacaoFinanceira WHERE Codigo_RFB = :pCodigo AND Modalidade_Importacao = :pModal AND Desativada <> 1');
                              tPesquisa2.ParamByName('pCodigo').AsString := Trim(Cells[0, RowCount-1]);
                              tPesquisa2.ParamByName('pModal').AsString  := Dados.TiposProcessoCodigo.AsString;
                              tPesquisa2.Open;

                              Cells[1, RowCount-1] := tPesquisa2.FieldByName('Codigo').AsString;

                              // Indentifica os códigos da Receita Federal e pega a descrição.
                              tPesquisa.SQL.Clear;
                              tPesquisa.SQL.Add('SELECT Codigo, Descricao FROM CodigosRFB WHERE Codigo = :pCodigo');
                              tPesquisa.ParamByName('pCodigo').AsString := Cells[0, RowCount-1];
                              tPesquisa.Open;

                              Cells[2, RowCount-1] := tPesquisa.FieldByName('Descricao').AsString;

                              tPesquisa.SQL.Clear;
                              tPesquisa.SQL.Add('UPDATE CodigosRFB SET Comex = 1');
                              tPesquisa.SQL.Add('                     ,Ativo = 1');
                              tPesquisa.SQL.Add('WHERE Codigo = :pCodigo');
                              tPesquisa.ParamByName('pCodigo').AsString := Cells[0, RowCount-1];
                              tPesquisa.Execute;
                         End;

                         Cells[3, RowCount-1] := mNodePgto.ChildNodes['agenciaPagamento'].Text;
                         Cells[4, RowCount-1] := RemoveZeros(mNodePgto.ChildNodes['contaPagamento'].Text, 'E');
                         Cells[5, RowCount-1] := mNodePgto.ChildNodes['nomeTipoPagamento'].Text;
                         Cells[6, RowCount-1] := Copy(mNodePgto.ChildNodes['dataPagamento'].Text,7,2)+'/'+Copy(mNodePgto.ChildNodes['dataPagamento'].Text, 5,2)+'/'+Copy(mNodePgto.ChildNodes['dataPagamento'].Text,1,4);
                         Cells[7, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodePgto.ChildNodes['valorJurosEncargos'].Text)/100);
                         Cells[8, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodePgto.ChildNodes['valorMulta'].Text)/100);
                         Cells[9, RowCount-1] := FormatFloat(',##0.00', StrtoFloat(mNodePgto.ChildNodes['valorReceita'].Text)/100);

                         RowCount := RowCount + 1;
                      End;
                      mNodePgto := mNodePgto.NextSibling;
                End;

                If RowCount > 2 then RowCount := RowCount -1;
           End;

           //Carregando os Fornecedores do arquivo XML.
           mNodeAD := mNodeDI.ChildNodes.FindNode('adicao');
           mNodeAD.ChildNodes.First;
           cFabricantes.Items.Clear;
           mFabr := '';

           While mNodeAd <> nil do begin
                 mNodeFabr := mNodeAD.ChildNodes.FindNode('fornecedorNome');
                 If mNodeFabr <> nil then begin
                    If (Trim(mNodeAD.ChildNodes.FindNode('fornecedorNome').Text) <> '') and (mNodeAD.ChildNodes.FindNode('fornecedorNome').Text <> mFabr) then begin
                       cFabricantes.Items.Add(mNodeAD.ChildNodes.FindNode('fornecedorNome').Text);
                       mFabr := mNodeAD.ChildNodes.FindNode('fornecedorNome').Text
                    End;
                 End;

                 mNodeAd := mNodeAd.NextSibling;
           End;

           // Seleciona os fabricantes não encontrados no cadastro pelo nome.
           For f := 0 to cFabricantes.Count-1 do begin
               cFabricantes.Checked[f] := Fabricantes.Locate('Nome', cFabricantes.Items[f], [loCaseInsensitive]) = false;
           End;

           // Totaliza o FOB.
           TotalizaFOB;

           // Pegando os dados do ICMS.
           cTotalICMS.Value := 0;
           With gPagamentos do begin
                mNodeICMS := mNodeDI.ChildNodes.FindNode('icms');
                if mNodeICMS <> nil then begin
                   mNodeICMS.ChildNodes.First;

                   While mNodeICMS <> nil do begin
                         If mNodeICMS.ChildNodes['codigoTipoRecolhimentoIcms'].Text <> '' then begin
                            Cells[0, RowCount] := mNodeICMS.ChildNodes['codigoTipoRecolhimentoIcms'].Text;

                            With Dados do begin
                                 // Indentifica os códigos da classificação financeira.
                                 tPesquisa2.SQL.Clear;
                                 tPesquisa2.SQL.Add('SELECT Codigo, Descricao FROM ClassificacaoFinanceira WHERE Codigo_RFB = :pCodigo');
                                 tPesquisa2.ParamByName('pCodigo').AsString := Cells[0, RowCount];
                                 tPesquisa2.Open;

                                 Cells[1, RowCount] := tPesquisa2.FieldByName('Codigo').AsString;

                                 // Indentifica os códigos da Receita Federal e pega a descrição.
                                 tPesquisa.SQL.Clear;
                                 tPesquisa.SQL.Add('SELECT Codigo, Descricao FROM CodigosRFB WHERE Codigo = :pCodigo');
                                 tPesquisa.ParamByName('pCodigo').AsString := Cells[0, RowCount];
                                 tPesquisa.Open;
                                 If tPesquisa.RecordCount > 0 then
                                    Cells[2, RowCount] := tPesquisa.FieldByName('Descricao').AsString
                                 else
                                    Cells[2, RowCount] := 'ICMS - Importação';
                            End;

                            Cells[3, RowCount] := mNodeICMS.ChildNodes['agenciaIcms'].Text;
                            Cells[4, RowCount] := '';
                            Cells[5, RowCount] := mNodeICMS.ChildNodes['nomeTipoRecolhimentoIcms'].Text;
                            Cells[6, RowCount] := Copy(mNodeICMS.ChildNodes['dataPagamentoIcms'].Text,7,2)+'/'+Copy(mNodeICMS.ChildNodes['dataPagamentoIcms'].Text, 5,2)+'/'+Copy(mNodeICMS.ChildNodes['dataPagamentoIcms'].Text,1,4);
                            Cells[7, RowCount] := FormatFloat(',##0.00', 0);
                            Cells[8, RowCount] := FormatFloat(',##0.00', 0);
                            Cells[9, RowCount] := FormatFloat(',##0.00', StrtoFloat(mNodeICMS.ChildNodes['valorTotalIcms'].Text)/100);

                            cTotalICMS.Value := cTotalICMS.Value + StrValor(Cells[9, RowCount]);

                            RowCount := RowCount + 1;
                         End;
                         mNodeICMS:= mNodeICMS.NextSibling;
                   End;
                end;
           End;

           if cModalidade.KeyValue = null then
              cModalidade.KeyValue := 0;
           
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE Desativado <> 1 AND Modalidade = :pModal');
           Produtos.ParamByName('pModal').AsInteger := cModalidade.KeyValue;
           Produtos.Open;
      End;

      bVerificar.Enabled := true;
End;

procedure TUtilitarios_ImportarDadosDI.bAdicaoClick(Sender: TObject);
var
    i      : Integer;
    mAdicao: String;
begin
      mAdicao := InputBox('Nº da Adição','Nº', mAdicao);
      For i := 0 to cDumping.Count-1 do begin
          If Copy(cDumping.Items[i], 1, 3) = PoeZero(3, StrtoInt(mAdicao)) then cDumping.Checked[i] := true;
      End;
end;

procedure TUtilitarios_ImportarDadosDI.bDesmarcarClick(Sender: TObject);
var
    i: Integer;
begin
      For i := 0 to cDumping.Count-1 do begin
          cDumping.Checked[i] := false;
      End;
end;

procedure TUtilitarios_ImportarDadosDI.bTodosClick(Sender: TObject);
var
    i: Integer;
begin
      For i := 0 to cDumping.Count-1 do begin
          cDumping.Checked[i] := true;
      End;
end;

procedure TUtilitarios_ImportarDadosDI.gProdutosDrawCell(Sender: TObject; aCol, aRow: Integer; Rect: TRect;State: TGridDrawState);
//var
//   strTemp: string;
//   Format: integer;
begin
//      strTemp := gProdutos.Cells[aCol,aRow];
//      gProdutos.Canvas.FillRect(Rect);
//      Format := DT_CENTER;
//
//      If aRow <> 0 then begin
//         If aCol = 3 then Format := DT_LEFT;
//         If aCol = 4 then Format := DT_LEFT;
//         If aCol > 4 then Format := DT_RIGHT;
//         If aCol = 7 then Format := DT_RIGHT;
//         If aCol = 8 then Format := DT_LEFT;
//         If aCol = 9 then Format := DT_LEFT;
//         If aCol > 9 then Format := DT_RIGHT;
//         If aCol = 13 then Format := DT_LEFT;
//      End;
//
//      If (ARow = 0) then
//         gProdutos.Canvas.Font.Style := [fsBold];

//      DrawText(gProdutos.Canvas.Handle, PChar(strTemp), -1, Rect, Format);
end;

procedure TUtilitarios_ImportarDadosDI.cPesquisaChange(Sender: TObject);
begin
     If Dados.Produtos.Locate('Codigo', cPesquisa.Text, [loCaseInsensitive]) = False then begin
        If Dados.Produtos.Locate('Codigo_Fabricante', cPesquisa.Text, [loCaseInsensitive]) = False then begin
           If Dados.Produtos.Locate('Descricao', cPesquisa.Text, [loCaseInsensitive, loPartialKey]) = false then begin
              tPesquisa2.SQL.Clear;
              tPesquisa2.SQL.Add('SELECT Codigo FROM Produtos WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+') AND (Desativado <> 1)');
              tPesquisa2.Open;
              Dados.Produtos.Locate('Codigo', tPesquisa2.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
           End;
        End;
     End;
end;

procedure TUtilitarios_ImportarDadosDI.bAdCodigoClick(Sender: TObject);
begin
      With Dados do begin
           If Pos('<{', gProdutos.Cells[3, gProdutos.Row]) <> 0 then begin
              gProdutos.Cells[3, gProdutos.Row] := Trim(Copy(gProdutos.Cells[3, gProdutos.Row], 1, Pos('<{', gProdutos.Cells[3, gProdutos.Row])-1));
           End;

           gProdutos.Cells[3, gProdutos.Row] := gProdutos.Cells[3, gProdutos.Row] + ' <{'+ Dados.ProdutosCodigo.AsString+'}>';
      End;
      cDescricao.Lines.Clear;
      cDescricao.Lines.Add(gProdutos.Cells[3, gProdutos.Row]);
end;

procedure TUtilitarios_ImportarDadosDI.GradeProdutosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,Y: Integer);
begin
      GradeProdutos.BeginDrag(True);
end;

procedure TUtilitarios_ImportarDadosDI.gProdutosDragDrop(Sender,Source: TObject; X, Y: Integer);
begin
     bAdCodigoClick(Self);
end;

procedure TUtilitarios_ImportarDadosDI.gProdutosDragOver(Sender,Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

procedure TUtilitarios_ImportarDadosDI.gProdutosClick(Sender: TObject);
begin
     cDescricao.Lines.Clear;
     cDescricao.Lines.Add(gProdutos.Cells[3, gProdutos.Row]);
     If Dados.Produtos.Locate('Descricao', gProdutos.Cells[3, gProdutos.Row], [loCaseInsensitive, loPartialKey]) = false then begin
        tPesquisa2.SQL.Clear;
        tPesquisa2.SQL.Add('SELECT Codigo FROM Produtos WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+') AND (Desativado <> 1)');
        tPesquisa2.Open;
        Dados.Produtos.Locate('Codigo', tPesquisa2.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
     End;
end;

procedure TUtilitarios_ImportarDadosDI.gAdicoesDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;State: TGridDrawState);
//var
//   strTemp: string;
//   Format: integer;
begin
//      strTemp := gAdicoes.Cells[ACol,ARow];
//      gAdicoes.Canvas.FillRect(Rect);
//      Format := DT_CENTER;
//
//      If ARow <> 0 then begin
//         If aCol = 0 then Format := DT_CENTER;
//         If aCol = 1 then Format := DT_CENTER;
//         If (aCol > 1) and (aCol < 11) then Format := DT_RIGHT;
//         If aCol > 10 then Format := DT_LEFT;
//         If (aCol > 16) and (aCol < 26) then Format := DT_RIGHT;
//         If aCol = 26 then Format := DT_LEFT;
//         If aCol > 26 then Format := DT_RIGHT;
//         If aCol = 30 then Format := DT_LEFT;
//      End;
//
//      If (ARow = 0) then
//         gAdicoes.Canvas.Font.Style := [fsBold];

//      DrawText(gAdicoes.Canvas.Handle, PChar(strTemp), -1, Rect, Format);
end;

procedure TUtilitarios_ImportarDadosDI.bVerificarClick(Sender: TObject);
Var
     mErros,
     mAvisos,
     mPosIni,
     i,
     mPosFim  : Integer;
     mDI,
     mTexto,
     mPais,
     mCodigo  : String;
begin
      Screen.Cursor := crSQLWait;

      mErros  := 0;
      mAvisos := 0;
      mDI     := ApenasNumeros(cDI2.Text);

      cErros.Clear;
      cAvisos.Clear;

      With Dados do Begin
           // Verifica se o processo esta travado.
           If ProcessosDOC.Locate('Processo', Trim(cProcesso.Text), [loCaseInsensitive]) = True then begin
              If ConfiguracaoProcesso_ImportarFechado.Value = false then begin
                 tPesquisa2.SQL.Clear;
                 tPesquisa2.SQL.Add('SELECT COUNT(*) AS Notas FROM NotasItens WHERE(Processo = :pProcesso) AND (ISNULL(Cancelada, 0) <> 1)');
                 tPesquisa2.ParamByName('pProcesso').AsString := cProcesso.Text;
                 tPesquisa2.Open;

                 If tPesquisa2.FieldByName('Notas').AsInteger > 0 then begin
                    Inc(mErros);
                    cErros.Lines.Add(FormatFloat('000: ',mErros)+' > Processo nº '+cProcesso.Text+', Bloqueado. (Notas fiscais já emitidas).'+ProcessosDOCProcesso.Value );
                 End;
              End;
           End;

           // Verifica se a DI já foi importada para outro processo.
           If ProcessosDOC.Locate('Numero_Declaracao', mDI, [loCaseInsensitive]) = True then begin
              If Trim(ProcessosDOCProcesso.Value) <> Trim(cProcesso.Text) then begin
                 Inc(mErros);
                 cErros.Lines.Add(FormatFloat('000: ',mErros)+' > Declaração nº '+FormatMaskText('99/9999999-9;0',mDI)+', Já importada para o processo '+ProcessosDOCProcesso.Value );
              End;
           End;

           If Trim(cDI2.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta o número da DI.'+cDI2.Text);
           End;
           
           If EmpresasProcesso_Automatico.Value = False then begin
              If Trim(cProcesso.Text) = '' then begin
                 Inc(mErros);
                 cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta o número do processo.' );
              End;
           End;
           If Trim(cTipoMercadoria.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar o tipo da mercadoria.' );
           End;
           If Trim(cModalidade.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta a modalidade de importação.' );
           End;
           If DataLimpa(cDataReg.Text) then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar a data. '+ cDataReg.Text);
           End;
           If Trim(cEstado.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar o estado de origem da importação.' );
           End;
           If Trim(cUFDesembaraco.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar a UF de desembaraço da importação.' );
           End;
           If Trim(cIncentivo.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar o incentivo fiscal da importação.' );
           End;
           If Trim(cCliente.Text) = '' then begin
              If (TiposProcessoCodigo.AsInteger = 2) or (TiposProcessoCodigo.AsInteger = 3) then begin
                 Inc(mErros);
                 cErros.Lines.Add(FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', para processos de "CONTA E ORDEM/ENCOMENDA" Cliente é obrigarório.');
              end else begin
                 Inc(mAvisos);
                 cAvisos.Lines.Add(FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Cliente não informado.');
              End;
           End;
           {
           If Trim(cOrigem.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar a origem da mercadoria.' );
           End;
           }
           // Se o rateio da valoração é por peso, obriga que a fatura esteja cadastrada para pegar o peso líquido.
           If ConfiguracaoRateio_Valoracao.AsString = 'P' then begin
              Invoice.SQL.Clear;
              Invoice.SQL.Add('SELECT * FROM Invoice WHERE(Processo = :pProcesso)');
              Invoice.ParamByName('pProcesso').AsString := cProcesso.Text;
              Invoice.Open;
              If Invoice.RecordCount = 0 then begin
                 Inc(mErros);
                 cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+': Fatura não cadastrada.' );
                 cErros.Lines.Add(Space(34)+'Quando se utiliza o rateio da "Valoração" pelo peso líquido, é obrigatório o cadastro da fatura, Pois o rateio utiliza o peso líquido unitário.');
              end else begin
                 InvoiceItens.SQL.Clear;
                 InvoiceItens.SQL.Add('SELECT *');
                 InvoiceItens.SQL.Add('FROM   InvoiceItens');
                 InvoiceItens.SQL.Add('WHERE  Invoice IN(SELECT Numero FROM Invoice WHERE(Processo = :pProcesso)) AND (Peso_Liquido = 0)');
                 InvoiceItens.ParamByName('pProcesso').AsString := cProcesso.Text;
                 InvoiceItens.Open;
                 If InvoiceItens.RecordCount > 0 then begin
                    cErros.Lines.Add(FormatMaskText('99/9999999-9;0',mDI)+': Falta informar o peso líquido.');
                    InvoiceItens.First;
                    While not InvoiceItens.Eof do begin
                          Inc(mErros);
                          cErros.Lines.Add(Space(17)+FormatFloat('000: ',mErros)+' Número: '+InvoiceItensInvoice.AsString+'   Item: '+InvoiceItensCodigo_Mercadoria.AsString+': Falta informar o peso liquido.' );
                          InvoiceItens.Next;
                    End;
                 End;
              End;
           End;

           For i := 1 to gAdicoes.RowCount -1 do begin
               // Verificando o codigo do pais que vem do siscomex se existe na tabela de paises.
               //mPais := gAdicoes.Cells[15,i]+DigitoPais(gAdicoes.Cells[15,i]);
               mPais := gAdicoes.Cells[15,i];
               If Paises.Locate('Codigo', mPais, [loCaseInsensitive] ) = false then begin
                  Inc(mErros);
                  cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Código do país não encontrado na tabela de países do sistema.' );
               End;
           End;

           // Verificando se os produtos tem a marca do codigo do cadastro de produtos. Marca = <{}>.
           For i := 1 to gProdutos.RowCount-1 do begin
                 mTexto := RemoveCaracter(#13, '', gProdutos.Cells[3, i]);
                 mTexto := RemoveCaracter(#12, '', mTexto);
                 mTexto := RemoveCaracter(#10, '', mTexto);
                 If Pos('<{', mTexto) = 0 then begin
                    If ConfiguracaoSISCOMEX_CodigoProduto.Value = False then begin
                       Inc(mAvisos);
                       cAvisos.Lines.Add(FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Código do produto não encontrado na descrição: '+ Copy(mTexto,1,80)+'. . .' );
                    end else begin
                       Inc(mErros);
                       If Pos('}>', mTexto) = 0 then
                          cErros.Lines.Add(FormatFloat('000: ',mErros )+FormatMaskText('99/9999999-9;0',mDI)+', Código do produto não encontrado na descrição: '+ Copy(mTexto,1,80)+'. . .' )
                       else
                          cErros.Lines.Add(FormatFloat('000: ',mErros )+FormatMaskText('99/9999999-9;0',mDI)+', Formatação do código no SISCOMEX inválida: '+ Copy(mTexto,1,80)+'. . .' );
                    End
                 End else begin
                    mPosIni := Pos('<{', mTexto);
                    mPosFim := Pos('}>', mTexto)+2;
                    mCodigo := Copy( mTexto, mPosIni, (mPosFim-mPosIni));
                    mCodigo := RemoveCaracter('<{','',mCodigo);
                    mCodigo := RemoveCaracter('}>','',mCodigo);
                    Try
                       If Produtos.Locate('Codigo', StrtoInt(mCodigo), [loCaseInsensitive]) = False then begin
                          Inc(mErros);
                          cErros.Lines.Add(FormatFloat('000: ',mErros )+FormatMaskText('99/9999999-9;0',mDI)+', Código do produto não encontrado no cadastro de produtos do sistema: '+ mCodigo + ' = '+Copy(mTexto,1,80)+'. . .' );
                       End;
                    Except
                       Inc(mErros);
                       cErros.Lines.Add(FormatFloat('000: ',mErros )+FormatMaskText('99/9999999-9;0',mDI)+', Formatação do código no SISCOMEX inválida: '+ Copy(mTexto,1,80)+'. . .' );
                    End;
                 End;

                 If Unidades.Locate('Descricao', gProdutos.Cells[4,i], [loCaseInsensitive]) = False then begin
                    Inc(mErros);
                    cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Unidade de medida não cadastrada : '+ gProdutos.Cells[4,i]);
                 End;
           End;

           // Verificando a cotação da moeda do frete.
           If StrtoInt('0'+cFreteMoedaCodigo.Text) > 0 then begin
              Moedas.Locate('Codigo', StrtoInt(cFreteMoedaCodigo.Text), [loCaseInsensitive]);
              If Cotacao.Locate('Moeda;Data', VarArrayOf([StrtoInt(cFreteMoedaCodigo.Text), cDataReg.Date]), [loCaseInsensitive]) = False then begin
                 Inc(mErros);
                 cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda do FRETE:'+ cFreteMoedaCodigo.Text+' - '+ cFreteMoedaNome.Text+ ' não encontrada.' );
              End;
           End;

           // Verificando a cotação da moeda do seguro.
           If StrtoInt('0'+cSeguroMoedaCodigo.Text) > 0 then begin
              Moedas.Locate('Codigo', StrtoInt(cSeguroMoedaCodigo.Text), [loCaseInsensitive]);
              If Cotacao.Locate('Moeda;Data', VarArrayOf([StrtoInt(cSeguroMoedaCodigo.Text), cDataReg.Date]), [loCaseInsensitive]) = False then begin
                 Inc(mErros);
                 cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda do SEGURO:'+ cSeguroMoedaCodigo.Text+' - não encontrada.' );
              End;
           End;

           // Verificando a cotação da moeda padrão de conversão da configuração do sistema.
           If (Dados.ConfiguracaoMoeda_Importacao.Value <> 0) then begin
              Moedas.Locate('Codigo', Dados.ConfiguracaoMoeda_Importacao.Value, [loCaseInsensitive]);
              If Cotacao.Locate('Moeda;Data', VarArrayOf([Dados.ConfiguracaoMoeda_Importacao.Value, cDataReg.Date]), [loCaseInsensitive]) = False then begin
                 Inc(mErros);
                 cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda padrão de conversão :'+ Dados.ConfiguracaoMoeda_Importacao.AsString+' - '+ MoedasNome.Value+ ' não encontrada.' );
              End;
           End;
           
           // Verificando se o ramo de atividade padrão para fornecedores internacionais esta informado.
           If Dados.ConfiguracaoRamo_Atividade.AsInteger = 0 then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', É preciso informar o ramo de atividade padrão para fornecedores novos em "Configurações / Parâmetros / Processo"' );
           End;

           // Verificando a cotação da moeda da valoração.
           If Trim(gAcrescimo.Cells[3, 1]) <> '' then begin
              For i := 1 to gAcrescimo.RowCount-1 do begin
                 If gAcrescimo.Cells[3, i] <> '000' then begin
                    Moedas.Locate('Codigo', gAcrescimo.Cells[3, i], [loCaseInsensitive]);
                    If gAcrescimo.Cells[3, i] <> '790' then begin
                       If Cotacao.Locate('Moeda;Data', VarArrayOf([gAcrescimo.Cells[3, i], cDataReg.Date]), [loCaseInsensitive]) = False then begin
                          Inc(mErros);
                          cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda da VALORAÇÃO:'+ gAcrescimo.Cells[3, i]+' - '+ gAcrescimo.Cells[4, i]+ ' não encontrada.' );
                       End;
                    End;
                 End;
              End;
           End;

           // Verificando o codigo do pais que vem do siscomex se existe na tabela de paises.
           For i := 1 to gAdicoes.RowCount-1 do begin
               //mPais := gAdicoes.Cells[15, i]+DigitoPais(gAdicoes.Cells[15, i]);
               mPais := gAdicoes.Cells[15, i];
               If Paises.Locate('Codigo', mPais, [loCaseInsensitive] ) = false then begin
                  Inc(mErros);
                  cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Código do país '+mPais+' não encontrado na tabela de países do sistema.' );
               End;
           End;

           // Verificando os pesos "Bruto" e "Líquido" da DI.
           If cPesoBruto.Value <= 0 then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta o Peso Bruto da mercadoria na DI.' );
           End;
           If cPesoLiquido.Value = 0 then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta o Peso Líquido da mercadoria na DI.' );
           End;
           If cSeguroReal.Value = 0  then begin
              Inc(mAvisos);
              cAvisos.Lines.Add(FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Náo tem valor de seguro.');
           End;
           If Trim(cViaTransporte.Text) = '' then begin
              Inc(mAvisos);
              cAvisos.Lines.Add( FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Faltou a via de transporte.');
           End;

           // Verificando alíquota do PIS/COFINS.
           For i := 1 to gAdicoes.RowCount-1 do begin
               If (gAdicoes.Cells[4,i] = Dados.ConfiguracaoPIS_AliquotaBasica.AsString) and (gAdicoes.Cells[2,i] <> Dados.ConfiguracaoCOFINS_AliquotaBasica.AsString) then begin
                  Inc(mAvisos);
                  cAvisos.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Divergência entre alíquotas de PIS e COFINS: PIS = '+ FormatFloat('##0.00', StrtoFloat(gAdicoes.Cells[4,i]))+' COFINS = '+FormatFloat('##0.00', StrtoFloat(gAdicoes.Cells[2,i])) );
               End;
               If (gAdicoes.Cells[4,i] <> Dados.ConfiguracaoPIS_AliquotaBasica.AsString) and (gAdicoes.Cells[2,i] = Dados.ConfiguracaoCOFINS_AliquotaBasica.AsString) then begin
                  Inc(mAvisos);
                  cAvisos.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Divergência entre alíquotas de PIS e COFINS: PIS = '+ FormatFloat('##0.00', StrtoFloat(gAdicoes.Cells[4,i]))+' COFINS = '+FormatFloat('##0.00', StrtoFloat(gAdicoes.Cells[2,i])) );
               End;

               // Verifica se a aliquota de PIS esta cadastrada na tabela de PIS/COFINS.
               if StrValor(gAdicoes.Cells[4, i]) <> 0 then begin
                  Majoracao.SQL.Clear;
                  Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''M'' AND Descricao = ''PIS'' AND Majorada = :pAliquota AND Modalidade = :pModal');
                  Majoracao.ParamByName('pAliquota').AsFloat := StrValor(gAdicoes.Cells[4, i]);
                  Majoracao.ParamByName('pModal').AsInteger  := cModalidade.KeyValue;
                  Majoracao.Open;

                  if Majoracao.RecordCount = 0 then begin
                     Inc(mErros);
                     cErros.Lines.Add(FormatFloat('000: ',mErros )+FormatMaskText('99/9999999-9;0',mDI)+' Adição '+gAdicoes.Cells[0, i]+' NCM '+gAdicoes.Cells[1, i]+', Aliquota do PIS '+gAdicoes.Cells[4, i]+' não encontrada na tabela de PIS/COFINS.');
                  end;
               end;

               // Verifica se a aliquota de COFINS esta cadastrada na tabela de PIS/COFINS.
               if StrValor(gAdicoes.Cells[2, i]) <> 0 then begin
                  Majoracao.SQL.Clear;
                  Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''M'' AND Descricao = ''COFINS'' AND Majorada = :pAliquota AND Modalidade = :pModal');
                  Majoracao.ParamByName('pAliquota').AsFloat := StrValor(gAdicoes.Cells[2, i]);
                  Majoracao.ParamByName('pModal').AsInteger  := cModalidade.KeyValue;
                  Majoracao.Open;

                  if Majoracao.RecordCount = 0 then begin
                     Inc(mErros);
                     cErros.Lines.Add(FormatFloat('000: ',mErros )+FormatMaskText('99/9999999-9;0',mDI)+' Adição '+gAdicoes.Cells[0, i]+' NCM '+gAdicoes.Cells[1, i]+', Aliquota da COFINS '+gAdicoes.Cells[2, i]+' não encontrada na tabela de PIS/COFINS.');
                  end;
               end;
           End;

           // Verificando se existe mais de uma invoice para o processo.
           If Trim(cProcesso.Text) <> '' then begin
              Invoice.SQL.Clear;
              Invoice.SQL.Add('SELECT * FROM Invoice WHERE(Processo = :pProcesso)');
              Invoice.ParamByName('pProcesso').AsString := cProcesso.Text;
              Invoice.Open;
              If Invoice.RecordCount > 1 then begin
                 Inc(mAvisos);
                 cAvisos.Lines.Add( FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Invoice cadastrada:'+ cProcesso.Text +' Existe '+InttoStr(Invoice.RecordCount)+' fatura(s) cadastrada(s) para este processo, invoice não será cadastrada.' );
              End;
              Invoice.Close;
           End;

           cPasta.Pages[10].Caption    := '&Erros ('+ InttoStr(mErros)+')';
           cPasta.Pages[10].TabVisible := mErros <> 0;
           cPasta.Pages[11].Caption    := '&Avisos ('+ InttoStr(mAvisos)+')';
           cPasta.Pages[11].TabVisible := mAvisos <> 0;
           bImportar.Enabled           := mErros = 0;

           If mAvisos <> 0 then cPasta.ActivePage := TabSheet9;
           If mErros  <> 0 then cPasta.ActivePage := TabSheet8;
      End;

      Screen.Cursor := crDefault;
end;

procedure TUtilitarios_ImportarDadosDI.gAcrescimoDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;State: TGridDrawState);
//var
//   strTemp: string;
//   Format: integer;
begin
//      strTemp := gAcrescimo.Cells[ACol,ARow];
//      gAcrescimo.Canvas.FillRect(Rect);
//      Format := DT_CENTER;
//
//      If ARow <> 0 then begin
//         If aCol > 4 then
//            Format := DT_RIGHT
//         else
//            Format := DT_LEFT;
//      End;
//
//      If (ARow = 0) then
//         gAcrescimo.Canvas.Font.Style := [fsBold];

//      DrawText(gAcrescimo.Canvas.Handle, PChar(strTemp), -1, Rect, Format);
end;

procedure TUtilitarios_ImportarDadosDI.bImportarClick(Sender: TObject);
Var
   i,x,
   mPosIni,
   mLinha,
   mTamFab,
   mForn,
   mPosFim: Integer;

   mConta,
   mCodigoFab,
   mPedidoFab,
   mOrdemFab,
   mGrupo: String;

   mCodigo,
   mDescricao: String;

   mMoedaOrigem,
   mMoedaDestino: Real;
begin
      bImportar.Enabled  := false;
      bVerificar.Enabled := false;
      bCotacao.Enabled   := false;
      With Dados, dmFiscal, dmContab do Begin
           // Apaga todos os itens dos pedidos que estão com o numero do processo.
           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE(Processo = :pProcesso) AND DI = :pDI');
           PedidosItens.ParamByName('pProcesso').AsString := cProcesso.Text;
           PedidosItens.ParamByName('pDI').AsString       := cDI2.Text;
           PedidosItens.Execute;
           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Processo = :pProcesso)');
           PedidosItens.ParamByName('pProcesso').AsString := cProcesso.Text;
           PedidosItens.Close;

           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('UPDATE Pedidos SET  Valor_TotalProdutos    = 0');
           Pedidos.SQL.Add('                   ,BCIPI                  = 0');
           Pedidos.SQL.Add('                   ,Valor_TotalIPI         = 0');
           Pedidos.SQL.Add('                   ,BCICMS                 = 0');
           Pedidos.SQL.Add('                   ,Valor_ICMS             = 0');
           Pedidos.SQL.Add('                   ,BCICMS_Substitutivo    = 0');
           Pedidos.SQL.Add('                   ,ValorICMS_Substitutivo = 0');
           Pedidos.SQL.Add('                   ,Valor_ICMSReducao      = 0');
           Pedidos.SQL.Add('                   ,Total_Frete            = 0');
           Pedidos.SQL.Add('                   ,Valor_Seguro           = 0');
           Pedidos.SQL.Add('                   ,Valor_TotalNota        = 0');
           Pedidos.SQL.Add('                   ,Valor_TotalMVA         = 0');
           Pedidos.SQL.Add('                   ,Volume_PesoLiquido     = 0');
           Pedidos.SQL.Add('                   ,Volume_PesoBruto       = 0');
           Pedidos.SQL.Add('                   ,Valor_PIS              = 0');
           Pedidos.SQL.Add('                   ,Valor_COFINS           = 0');
           Pedidos.SQL.Add('                   ,Valor_PIS2             = 0');
           Pedidos.SQL.Add('                   ,Valor_COFINS2          = 0');
           Pedidos.SQL.Add('                   ,Valor_TotalII          = 0');
           Pedidos.SQL.Add('                   ,Valor_OutrasDespesas   = 0');
           Pedidos.SQL.Add('                   ,Valor_OutrasICMS       = 0');
           Pedidos.SQL.Add('                   ,Valor_IsentasICMS      = 0');
           Pedidos.SQL.Add('                   ,Valor_OutrasIPI        = 0');
           Pedidos.SQL.Add('                   ,Valor_IsentasIPI       = 0');
           Pedidos.SQL.Add('                   ,Valor_DUMPING          = 0');
           Pedidos.SQL.Add('                   ,Valor_DespesasOutros   = 0');
           Pedidos.SQL.Add('                   ,Valor_BCPIS            = 0');
           Pedidos.SQL.Add('                   ,Total_Impostos         = 0');
           Pedidos.SQL.Add('                   ,Valor_IRPJ             = 0');
           Pedidos.SQL.Add('                   ,Valor_CSLL             = 0');
           Pedidos.SQL.Add('                   ,Valor_Inventario       = 0');
           Pedidos.SQL.Add('WHERE Processo = :pProcesso AND DI = :pDI');
           Pedidos.ParamByName('pProcesso').AsString := cProcesso.Text;
           Pedidos.ParamByName('pDI').AsString       := cDI2.Text;
           Pedidos.Execute;
           
           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE Processo = :pProcesso AND DI = :pDI');
           Pedidos.ParamByName('pProcesso').AsString := cProcesso.Text;
           Pedidos.ParamByName('pDI').AsString       := cDI2.Text;
           Pedidos.Open;

           // Cadastro do local de desembaraço.
           if trim(cLocalDesembCod.Text) <> '' then begin
              if not LocalDesembaraco.Locate('Codigo', cLocalDesembCod.Text, [loCaseInsensitive]) then begin
                 LocalDesembaraco.Append;
                                  LocalDesembaracoCodigo.Value            := cLocalDesembCod.AsInteger;
                                  LocalDesembaracoDescricao.Value         := cLocalDesembNome.Text;
                                  LocalDesembaracoPrazo_Faturamento.Value := 4;
                                  LocalDesembaracoPrazo_Registro.Value    := 8;
                 LocalDesembaraco.Post;
              end;
           end;

           //===============================================================[ DADOS DO PROCESSO ]=================================================================
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add( 'SELECT * FROM ProcessosDocumentos WHERE Processo = '+QuotedStr(Trim(cProcesso.Text)) );
           ProcessosDOC.Open;
           
           If ProcessosDOC.RecordCount = 0 then begin
              // Gerando o log de eventos do sistema.
              GerarLog('('+Menu_Principal.mUsuarioCodigo+')'+Menu_Principal.mUsuarioNome, 'ProcessosDocumentos', 'INCLUSÃO' , ''   , 'Importada processo: '+cProcesso.Text, '', '', '');

              ProcessosDOC.Append;
           end else begin
              // Gerando o log de eventos do sistema.
              GerarLog('('+Menu_Principal.mUsuarioCodigo+')'+Menu_Principal.mUsuarioNome, 'ProcessosDocumentos', 'ALTERAÇÃO' , ''  , 'Importada Processo: '+cProcesso.Text, '', '', '');

              ProcessosDOC.Edit;
           End;

           If EmpresasProcesso_Automatico.Value = True then begin
              If ProcessosDOCProcesso.Value = '' then begin
                 If Trim(EmpresasMascara_Processo.AsString) <> '' then begin
                    ProcessosDOCProcesso.Value := NumeroProcesso(EmpresasMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, YearOf(Date), Trim(ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                 end else begin
                    ProcessosDOCProcesso.Value := NumeroProcesso(ClientesMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, YearOf(Date), Trim(ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                 End;

                 Empresas.Edit;
                          EmpresasProcesso.Value := EmpresasProcesso.Value + 1;
                 Empresas.Post;

              End;
           end else begin
              ProcessosDOCProcesso.Value := Trim(cProcesso.Text);
           End;

           ProcessosDOCProcesso_Mestre.Value   := Trim(cProcessoMestre.Text);
           ProcessosDOCEntreposto.Value        := cEntreposto.Checked;
           ProcessosDOCTipo.Value              := 'IMPORTAÇÃO';
           ProcessosDOCIncoterms.Value         := gAdicoes.Cells[11, gAdicoes.RowCount-1];
           ProcessosDOCDesativado.Value        := False;
           ProcessosDOCNumero_Declaracao.Value := cDI2.Text;

           If cCanal.ItemIndex = 0 then ProcessosDOCCanal_SISCOMEX.Value := 'VD';
           If cCanal.ItemIndex = 1 then ProcessosDOCCanal_SISCOMEX.Value := 'AM';
           If cCanal.ItemIndex = 2 then ProcessosDOCCanal_SISCOMEX.Value := 'VM';
           If cCanal.ItemIndex = 3 then ProcessosDOCCanal_SISCOMEX.Value := 'CZ';

           ProcessosDOCData_RegistroDeclaracao.Value    := cDataReg.Date;
           ProcessosDOCData_PrevRegistro.Value          := (cDataChegada.Date + LocalDesembaracoPrazo_Registro.AsInteger);
           ProcessosDOCData_PrevFaturamento.Value       := (cDataReg.Date + LocalDesembaracoPrazo_Faturamento.AsInteger);
           ProcessosDOCData_DesembaracoDeclaracao.Value := cDataDesembaraco.Date;
           ProcessosDOCFrete.Value                      := cFreteReal.Value;
           ProcessosDOCSeguro.Value                     := cSeguroReal.Value;

           If cDA.Checked = false then begin
              ProcessosDOCII.Value        := cTotalII.Value;
              ProcessosDOCValor_IPI.Value := cTotalIPI.Value;
           End;

           ProcessosDOCRecinto_Alfandegario.Value    := cRecintoAduaneiro.Text;
           ProcessosDOCLocal_DesembaracoCodigo.Value := cLocalDesembCod.AsInteger;
           ProcessosDOCUF_Desembaraco.Value          := tUFDesemb.FieldByName('Codigo').AsString;
           ProcessosDOCPeso_Bruto.Value              := cPesoBruto.Value;
           ProcessosDOCVolumes.Value                 := cVolumes.Value;
           ProcessosDOCEspecie.Value                 := cEspecie.Text;
           ProcessosDOCQuantidade_Liberada.Value     := 0;
           ProcessosDOCPeso_Liquido.Value            := cPesoLiquido.Value;
           ProcessosDOCPeso_Bruto.Value              := cPesoBruto.Value;
           ProcessosDOCLocal_Embarque.Value          := cLocalEmbarque.Text;
           ProcessosDOCLocal_Desembarque.Value       := cLocalDesembNome.Text;
           ProcessosDOCAgencia_Maritima.Value        := cTransportador.Text;
           ProcessosDOCNavio_DataChegada.Value       := cDataChegada.Date;
           ProcessosDOCNavio_DataPrevista.Value      := cDataChegada.Date;
           ProcessosDOCProcesso_Abertura.Value       := date;
           ProcessosDOCCourrier.Value                := false;
           ProcessosDOCICMS_Diferido.Value           := IncentivosFiscaisICMS_Diferido.AsBoolean;
           ProcessosDOCModalidade_Importacao.Value   := TiposProcesso.FieldByName('Codigo').AsInteger;
           ProcessosDOCDocumento_Carga.Value         := cConhecimentoCarga.Text;
           ProcessosDOCTipo_Mercadoria.Value         := TipoItemCodigo.AsInteger;
           ProcessosDOCIncentivo_Fiscal.Value        := cIncentivo.Text;
           ProcessosDOCData_BL.Value                 := cDataBL.Date;
           ProcessosDOCDA.Value                      := cDA.State = cbChecked;
           ProcessosDOCAdmissao_Temporaria.Value     := cAdmissao.Checked;
           ProcessosDOCOrigem_Mercadoria.AsInteger   := 1;
           ProcessosDOCRemover_Valoracao.AsBoolean   := cValoracao.Checked;
           ProcessosDOCSuspensao_Impostos.AsBoolean  := cSuspensao.Checked;
           ProcessosDOCReducao_PIS.Value             := cReducaoPIS.Value;
           ProcessosDOCReducao_COFINS.Value          := cReducaoCOFINS.Value;
           ProcessosDOCConsignatario_CNPJ.Value      := ApenasNumeros(EmpresasCNPJ.Value);
           ProcessosDOCConsignatario_UF.Value        := EmpresasEstado.Value;
           ProcessosDOCFOB_ME.Value                  := cFOBME.Value;
           ProcessosDOCFOB_MEAdicoes.Value           := cFOBAdicoesME.Value;
           ProcessosDOCFOB.Value                     := cFOBReal.Value;
           ProcessosDOCFob_Adicoes.Value             := cFOBAdicoesReal.Value;
           ProcessosDOCValor_ICMS.Value              := cTotalICMS.Value;
           ProcessosDOCQuantidade.Value              := cQuantidade.Value;
           ProcessosDOCAFRMM.Value                   := cAFRMM.Value;

           If (TiposProcessoCodigo.AsInteger = 2) or (TiposProcessoCodigo.AsInteger = 3) then begin
              ProcessosDOCConsignatario_CNPJ.Value := ApenasNumeros(cClienteCNPJ.Text);
              ProcessosDOCConsignatario_UF.Value   := ClientesEstado.AsString;
           End;

           With gPagamentos do begin
                For i := 1 to RowCount -1 do begin
                    If Cells[0, i] = '7811' then begin
                       ProcessosDOCTaxa_SISCOMEX.Value := StrtoFloat(Cells[9,i]);
                       Break;
                    End;  
                End;
           End;

           If Trim(cCliente.Text) <> '' then begin
              ProcessosDOCCliente.Value := ClientesCodigo.AsInteger;
              If ProcessosDOCMargem_Lucro.AsFloat         = 0 then ProcessosDOCMargem_Lucro.Value         := ClientesMargem_Lucro.Value;
              If ProcessosDOCDesconto_Operacional.AsFloat = 0 then ProcessosDOCDesconto_Operacional.Value := ClientesDesconto_Operacional.Value;
              If ProcessosDOCDesconto_Adicional.AsFloat   = 0 then ProcessosDOCDesconto_Adicional.Value   := ClientesDesconto_Adicional.Value;
           End;

           //ProcessosDOCVia_Transporte.Value    := cViaTransporte.Text;
           ProcessosDOCVia_Transporte.Value    := StrtoInt(cViaCodigo.Text);
           ProcessosDOCNome_Transporte.Value   := cNomeEmbarcacao.Text;
           ProcessosDOCCodigo_PaisOrigem.Value := cPaisProcedCod.Text;
           ProcessosDOCOrigem.Value            := cPaisProcedNome.Text;

           // Pegando os numeros das faturas.
           ProcessosDOCNumero_DOC.Value          := cConhecimento.Text;
           ProcessosDOCNumero_Fatura.Value       := cFatura.Text;
           ProcessosDOCMoeda_Frete.Value         := StrtoInt('0'+cFreteMoedaCodigo.Text);
           ProcessosDOCFrete_ME.Value            := cFreteME.Value;
           ProcessosDOCMoeda_Seguro.Value        := StrtoInt('0'+cSeguroMoedaCodigo.Text);
           ProcessosDOCSeguro_ME.Value           := cSeguroME.Value;
           ProcessosDOCAd_Valorem.Value          := cAcrescimoReal.Value;
           ProcessosDOCAliquota_ICMS.Value       := StrValor(gAdicoes.Cells[19,1]);
           ProcessosDOCQuantidade_Digitada.Value := ProcessosDOCQuantidade.Value;

           If cDA.Checked = false then begin
              ProcessosDOCValor_PIS.Value     := cTotalPISMaj.Value;
              ProcessosDOCValor_PIS2.Value    := cTotalPISNF.Value;
              ProcessosDOCValor_COFINS.Value  := cTotalCOFINSMaj.Value;
              ProcessosDOCValor_COFINS2.Value := cTotalCOFINSNF.Value;
           End;
           
           ProcessosDOCVencimento_Cambio.Value := 0;
           
           If mMoedas > 1 then
              ProcessosDOCMoeda_Fob.Value := Dados.ConfiguracaoMoeda_Importacao.Value
           else
              ProcessosDOCMoeda_Fob.Value := StrtoInt(gAdicoes.Cells[12,1]);

           If Cotacao.Locate('Moeda;Data',VarArrayOf([ProcessosDOCMoeda_Fob.Value, cDataReg.Date]), [loCaseInsensitive]) then begin
              ProcessosDOCTaxa_Fob.Value := CotacaoValor.Value;
           End;
           If ProcessosDOCFrete_ME.Value > 0 then begin
              If Cotacao.Locate('Moeda;Data',VarArrayOf([ProcessosDOCMoeda_Frete.Value, cDataReg.Date]), [loCaseInsensitive]) then begin
                 ProcessosDOCTaxa_Frete.Value := CotacaoValor.Value;
              End;
           End;
           If ProcessosDOCSeguro_ME.Value > 0 then begin
              If Cotacao.Locate('Moeda;Data',VarArrayOf([ProcessosDOCMoeda_Seguro.Value, cDataReg.Date]), [loCaseInsensitive]) then begin
                 ProcessosDOCTaxa_Seguro.Value := CotacaoValor.Value;
              End;
           End;

           ProcessosDOC.Post;
           
           // Grava o texto de informações complementares da DI.
           ProcessosTexto.SQL.Clear;
           ProcessosTexto.SQL.Add('SELECT * FROM ProcessosTexto WHERE Processo = '+QuotedStr(ProcessosDOCProcesso.AsString));
           ProcessosTexto.Open;

           If ProcessosTexto.RecordCount = 0 then begin
              tTexto.SQL.Clear;
              tTexto.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProcessosTexto');
              tTexto.Open;
              ProcessosTexto.Append;
                             ProcessosTextoRegistro.Value := tTexto.FieldByName('Registro').AsInteger;
           end else begin
              ProcessosTexto.Edit;
           End;
                          ProcessosTextoProcesso.Value := ProcessosDOCProcesso.Value;
                          ProcessosTextoTexto.Value    := cComplemento.Text;
           ProcessosTexto.Post;

           //=======================================================[ CADASTRO DE FORNECEDORES ]==========================================================
           // Cadastro de novos Fornecedores, cria apenas fornecedores que estão selecionados na caixa "cFornecedoresCheck".
           If Trim(cExportador.DisplayValue) = '' then begin
              For i := 1 to gFornecedores.RowCount-1 do begin
                  If cFornecedoresCheck.Checked[i-1] then begin
                     cFornecedoresCheck.Checked[i-1] := False;

                     tFornecedor.SQL.Clear;
                     tFornecedor.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Fornecedores');
                     tFornecedor.Open;

                     Fornecedores.Append;
                                  FornecedoresCodigo.Value        := tFornecedor.FieldByName('Codigo').AsInteger;
                                  FornecedoresNome.Value          := gFornecedores.Cells[0,i];
                                  FornecedoresNome_Fantasia.Value := gFornecedores.Cells[0,i];
                                  FornecedoresRua.Value           := gFornecedores.Cells[3,i];
                                  FornecedoresRua_Numero.Value    := gFornecedores.Cells[4,i];
                                  FornecedoresBairro.Value        := 'EXTERIOR';

                                  // Pegando o codigo de pais da tabela do sistema pois a do siscomex contem apenas 3 digitos.
                                  FornecedoresPais.Value := ( gFornecedores.Cells[6,i] + DigitoPais(gFornecedores.Cells[6,i]) );
                                  If FornecedoresPais.Value <> '1058' then begin
                                     FornecedoresEstado.Value           := 'EX';
                                     FornecedoresMunicipio_Codigo.Value := 9999999;
                                     FornecedoresMunicipio.Value        := 'EXTERIOR';
                                  end else begin
                                     If Municipios.Locate('Nome', gFornecedores.Cells[1,i], [loCaseInsensitive]) = True then begin
                                        FornecedoresMunicipio_Codigo.Value := MunicipiosCodigo.Value;
                                     End;
                                     FornecedoresEstado.Value    := gFornecedores.Cells[2,i];
                                     FornecedoresMunicipio.Value := gFornecedores.Cells[1,i];
                                  End;
                                  FornecedoresRamo_Atividade.Value := ConfiguracaoRamo_Atividade.AsInteger;
                                  FornecedoresIsento.Value         := true;
                                  FornecedoresAtivo.Value          := true;
                                  FornecedoresIndicador_IE.Value   := '9';
                     Fornecedores.Post;
                     tFornecedor.Close;

                     // Cadastra fabricantes novos.
                     If Fabricantes.Locate('Nome', FornecedoresNome.Value, [loCaseInsensitive]) = false then begin
                        tFornecedor.SQL.Clear;
                        tFornecedor.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Fabricantes');
                        tFornecedor.Open;
                        Fabricantes.Append;
                                    FabricantesCodigo.Value           := tFornecedor.FieldByName('Codigo').AsInteger;
                                    FabricantesNome.Value             := FornecedoresNome.Value;
                                    FabricantesNome_Fantasia.Value    := FornecedoresNome.Value;
                                    FabricantesRua.Value              := FornecedoresRua.Value;
                                    FabricantesRua_Numero.Value       := FornecedoresRua_Numero.Value;
                                    FabricantesBairro.Value           := FornecedoresBairro.Value;
                                    FabricantesPais.Value             := FornecedoresPais.Value;
                                    FabricantesEstado.Value           := FornecedoresEstado.Value;
                                    FabricantesMunicipio_Codigo.Value := FornecedoresMunicipio_Codigo.Value;
                                    FabricantesMunicipio.Value        := FornecedoresMunicipio.Value;
                                    FabricantesEstado.Value           := FornecedoresEstado.Value;
                                    FabricantesIsento.Value           := true;
                                    FabricantesAtivo.Value            := true;
                        Fabricantes.Post;
                        tFornecedor.Close;
                     End;
                  end else begin
                     Fornecedores.Locate('Nome', cFornecedoresAchados.Lines.Strings[i-1], [loCaseInsensitive]);
                  End;

                  gFornecedores.Cells[7,i] := FornecedoresCodigo.AsString;
              End;
              // Registra o código do fornecedor nos dados do processo.
              If cExportador.DisplayValue = '' then
                 cExportador.KeyValue := FornecedoresCodigo.AsInteger;
                 
              ProcessosDOC.Edit;
                           ProcessosDOCFornecedor.Value := cExportador.KeyValue;
              ProcessosDOC.Post;
           End;

           mForn := cExportador.KeyValue;

           If ConfiguracaoRateio_Valoracao.AsString = 'P' then begin
              InvoiceItens.SQL.Clear;
              InvoiceItens.SQL.Add('SELECT *');
              InvoiceItens.SQL.Add('FROM   InvoiceItens');
              InvoiceItens.SQL.Add('WHERE  Invoice IN(SELECT Numero FROM Invoice WHERE(Processo = :pProcesso))');
              InvoiceItens.ParamByName('pProcesso').AsString := cProcesso.Text;
              InvoiceItens.Open;
           End;

           Janela_Processamento                    := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := gAdicoes.RowCount-1;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.bCancelar.Visible  := false;
           Janela_Processamento.lProcesso.Caption  := 'Cadastrando NCM...';
           Janela_Processamento.Show;

           //=============================================================[ CADASTRO DE NCM'S ]===========================================================
           // Verifica o código NCM do produto, pega a aliquota de redução para a NCM na tabela de ICMS.
           ICMS.SQL.Clear;
           ICMS.SQL.Add('SELECT * FROM ICMS WHERE (UF = :pEstado)');
           ICMS.ParamByName('pEstado').AsString := EstadosCodigo.Value;
           ICMS.Open;

           // Cadastro das NCM's.
           With gAdicoes do begin
                For i := 1 to RowCount -1 do begin
                    Unidades.Locate('Descricao', Cells[30,i], [loCaseInsensitive]);
                    
                    If NCM.Locate('NCM', Cells[01, i], [loCaseInsensitive]) then begin
                       NCM.Edit;
                    End else begin
                       NCM.Insert;
                    End;

                        NCMUnidade.Value          := UnidadesCodigo.Value;
                        NCMNCM.Value              := Cells[01,i];
                        NCMDNF.Value              := false;
                        NCMUnidade.Value          := UnidadesCodigo.Value;
                        NCMCodigoTrib_TabA.Value  := '1';
                        NCMCodigoTrib_TabA3.Value := '2';
                        NCMCodigoTrib_TabA2.Value := '0';

                        // Origem da mercadoria.
                        if cCAMEX.Count > 0 then begin
                           for x := 0 to pred(cCAMEX.Count) do begin
                               if Copy(cCAMEX.Items[x], 1, 3) = Copy(Cells[0,i], 1, 3) then break;
                           end;
                           if x <= pred(cCAMEX.Count) then begin
                              if cCAMEX.Checked[x] then begin
                                 NCMCodigoTrib_TabA.Value  := '6';
                              end;
                           end;
                        end;
                        
                        NCMGenero.Value := StrtoInt(Copy(Cells[01,i], 1, 2));
                        If ICMS.FieldByName('Reducao_ICMS').Value <> NULL then NCMICMS_Reducao.Value := ICMS.FieldByName('Reducao_ICMS').Value;
                        If Trim(NCMProduto.Value) = '' then NCMProduto.Value := Cells[26,i];

                        // II.
                        NCMII.Value                 := StrValor(Cells[06,i]);
                        NCMReducao_II.Value         := StrValor(Cells[27,i]);
                        NCMAcordo_TarifarioII.Value := StrValor(Cells[28,i]);

                        // IPI.
                        NCMIPI.Value                 := StrValor(Cells[08, i]);
                        NCMReducao_IPI.Value         := StrValor(Cells[29, i]);
                        NCMAcordo_TarifarioIPI.Value := 0;
                                               
                        // PIS.
                        NCMPIS.Value           := StrValor(Cells[04, i]);
                        NCMPIS_Nota.Value      := StrValor(Cells[22, i]);
                        NCMPIS_NotaSaida.Value := StrValor(Cells[23, i]);

                        // COFINS.
                        Majoracao.SQL.Clear;
                        Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''M'' AND Descricao = ''COFINS'' AND Majorada = :pAliquota AND Modalidade = :pModal');
                        Majoracao.ParamByName('pAliquota').AsFloat := StrValor(Cells[2, i]);
                        Majoracao.ParamByName('pModal').AsInteger  := cModalidade.KeyValue;
                        Majoracao.Open;

                        NCMCOFINS.Value               := StrValor(Cells[02, i]);
                        NCMCOFINS_Nota.Value          := StrValor(Cells[24, i]);
                        NCMCOFINS_NotaSaida.Value     := StrValor(Cells[25, i]);

                        NCMCusto_Seletivo.Value       := Roundto(StrValor(Cells[02, i]), -4) = Roundto(MajoracaoMajorada.Value, -4);
                        NCMIPI_TribAliquotaZero.Value := false;
                        NCMIPI_Suspensao.Value        := false;
                        NCMIPI_Isento.Value           := false;
                        NCMICMS_Suspensao.Value       := false;
                        NCMICMS_Isento.Value          := false;
                    NCM.Post;

                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                    Application.ProcessMessages;
                End;
           End;

           //=====================================================[ CADASTRO DAS ADIÇÕES / PRODUTOS ]====================================================
           Adicoes.SQL.Clear;
           Adicoes.SQL.Add('DELETE FROM Adicoes WHERE (DI = :pDI)');
           Adicoes.ParamByName('pDI').AsString := cDI2.Text;
           Adicoes.Execute;
           Adicoes.SQL.Clear;
           Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI)');
           Adicoes.ParamByName('pDI').AsString := cDI2.Text;
           Adicoes.Open;

           Janela_Processamento.Progresso.Max      := gProdutos.RowCount-1;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Importando Adições: '+FormatMaskText('99/9999999-9;0', cDI2.Text);

           With gProdutos do begin
                For i := 1 to RowCount -1 do begin
                      Unidades.Locate('Descricao', Cells[04,i], [loCaseInsensitive]);

                      // Cadastra o produto ou modifica se já existe na tabela. (Verifica se a descrição contém o código do sistema).
                      mDescricao := RemoveCaracter(#13, '', Cells[03,i]);
                      mDescricao := RemoveCaracter(#12, '', mDescricao);
                      mDescricao := RemoveCaracter(#10, '', mDescricao);

                      If Pos('<{', mDescricao) = 0 then begin
                         Produtos.SQL.Clear;
                         //Produtos.SQL.Add('SELECT * FROM Produtos WHERE (Descricao LIKE '+QuotedStr(mDescricao+'%')+' )' );
                         Produtos.SQL.Add('SELECT * FROM Produtos WHERE Descricao LIKE '+QuotedStr(mDescricao+'%')+' AND Modalidade = :pModal' );
                         Produtos.ParamByName('pModal').AsInteger := ProcessosDOCModalidade_Importacao.AsInteger;
                         Produtos.Open;

                         If Produtos.RecordCount = 0 then begin
                            tCodigo.SQL.Clear;
                            tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Produtos');
                            tCodigo.Open;
                            
                            Produtos.Append;
                                     ProdutosCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger;
                                     mDescricao           := mDescricao + #13+'<{'+tCodigo.FieldByName('Codigo').AsString+'}>';
                                     tCodigo.Close;
                         end else begin
                            Produtos.Edit;
                         End;
                      end else begin
                         mPosIni := Pos('<{', mDescricao)+2;
                         mPosFim := Pos('}>', mDescricao);
                         mCodigo := Copy( mDescricao, mPosIni, (mPosFim-mPosIni));

                         Produtos.SQL.Clear;
                         Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo = :pCodigo)');
                         Produtos.ParamByName('pCodigo').AsString := mCodigo;
                         Produtos.Open;

                         Produtos.Edit;
                      End;

                               // Pegando a alíquota do IPI.
                               If ClasseIPI.Locate('Valor_IPI', NCMIPI.AsFloat, [loCaseInsensitive] ) = True then begin
                                  ProdutosClasseEnquadra_IPI.Value := dmFiscal.ClasseIPIClasse.Value;
                               End;

                               NCM.Locate('NCM', Cells[02,i], [loCaseInsensitive]);

                               ProdutosUnidade.Value            := UnidadesCodigo.Value;
                               ProdutosNCM.Value                := Cells[02,i];
                               ProdutosDescricao_Reduzida.Value := Copy(mDescricao,1,60);
                               ProdutosDescricao.AsString       := mDescricao;
                               ProdutosEstoque_Disponivel.Value := 0;
                               ProdutosEstoque_Terceiros.Value  := 0;
                               ProdutosTipo_Item.Value          := TipoItemCodigo.Value;
                               ProdutosQuantidade_Unidade.Value := 1;
                               ProdutosQuantidade_Volumes.Value := 1;
                               ProdutosDesativado.Value         := false;
                               ProdutosAliquota_IPI.Value       := NCMIPI.Value;
                               ProdutosReducao_IPI.Value        := NCMReducao_IPI.Value;;
                               ProdutosValor_IPI.Value          := NCMIPI_Valor.Value;
                               ProdutosAliquota_II.Value        := StrValor(Cells[10,i]);
                               ProdutosReducao_II.Value         := StrValor(Cells[11,i]);
                               ProdutosAcordo_TarifarioII.Value := StrValor(Cells[12,i]);
                               ProdutosICMS_Reducao.Value       := NCMICMS_Reducao.Value;
                               ProdutosAliquota_PIS.Value       := NCMPIS.Value;
                               ProdutosAliquota_COFINS.Value    := NCMCOFINS.Value;
                               ProdutosPIS_Nota.AsFloat         := NCMPIS_Nota.Value;
                               ProdutosCOFINS_Nota.AsFloat      := NCMCOFINS_Nota.Value;
                               ProdutosPIS_NotaSaida.AsFloat    := NCMPIS_NotaSaida.Value;
                               ProdutosCOFINS_NotaSaida.AsFloat := NCMCOFINS_NotaSaida.Value;
                               ProdutosCusto_Seletivo.Value     := NCMCusto_Seletivo.Value;
                               ProdutosReducao_PIS.Value        := cReducaoPIS.Value;
                               ProdutosReducao_COFINS.Value     := cReducaoCOFINS.Value;
                               ProdutosCodigo_Fabricante.Value  := Cells[13,i];

                               If ProdutosPIS_Nota.AsFloat         = 0 then ProdutosPIS_Nota.Value         := NCMPIS.Value;
                               If ProdutosCOFINS_Nota.AsFloat      = 0 then ProdutosCOFINS_Nota.Value      := NCMCOFINS.Value;
                               If ProdutosPIS_NotaSaida.AsFloat    = 0 then ProdutosPIS_NotaSaida.Value    := NCMPIS.Value;
                               If ProdutosCOFINS_NotaSaida.AsFloat = 0 then ProdutosCOFINS_NotaSaida.Value := NCMCOFINS.Value;
                               
                               If Fornecedores.Locate('Nome', Cells[7,i], [loCaseInsensitive]) then
                                  ProdutosFabricante.Value := FornecedoresCodigo.Value;
                                  
                               ProdutosModalidade.Value := ProcessosDOCModalidade_Importacao.Value;
                               ProdutosOrigem.Value     := 'I';
                               ProdutosCAMEX.Value      := cCAMEX.Checked[i-1];
                      Produtos.Post;

                      Cells[9, i] := ProdutosCodigo.AsString;

                      // Cadastra os itens das adições.
                      mLinha := PesquisaStringGrid(gAdicoes, 0, Cells[0, i]);

                      Cotacao.Locate('Moeda;Data', VarArrayOf([StrtoInt(gAdicoes.Cells[12, mLinha]), cDataReg.Date]), [loCaseInsensitive]);
                      mMoedaOrigem := CotacaoValor.Value;
                      Cotacao.Locate('Moeda;Data', VarArrayOf([ConfiguracaoMoeda_Importacao.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                      mMoedaDestino := CotacaoValor.Value;

                      Adicoes.Append;
                              tCodigo.SQL.Clear;
                              tCodigo.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM Adicoes');
                              tCodigo.Open;

                              AdicoesRegistro.Value := tCodigo.FieldByName('Registro').AsInteger;
                              AdicoesDI.Value       := cDI2.Text;
                              AdicoesAdicao.Value   := StrtoInt(Cells[0, i]);

                              tCodigo.SQL.Clear;
                              tCodigo.SQL.Add('SELECT ISNULL(MAX(Sequencia), 0)+1 AS Sequencia FROM Adicoes WHERE DI = '+QuotedStr(cDI2.Text)+' AND Adicao = '+Cells[0, i]);
                              tCodigo.Open;

                              AdicoesSequencia.Value := tCodigo.FieldByName('Sequencia').AsInteger;

                              AdicoesSequencia_SISCOMEX.Value := StrtoInt(Cells[ 1, i]);
                              AdicoesCodigo_Mercadoria.Value  := StrtoInt(Cells[ 9, i]);
                              AdicoesAliquota_ICMS.Value      := StrValor(gAdicoes.Cells[19, mLinha]);

                              If mMoedas = 1 then begin
                                 If not cValoracao.Checked then
                                    AdicoesValor_Unitario.Value := Roundto(StrValor(Cells[6, i]) + StrValor(Cells[7, i]), -6)
                                 else
                                    AdicoesValor_Unitario.Value := Roundto(StrValor(Cells[6, i]), -6);

                                 AdicoesValor_SemAdValorem.Value := Roundto(StrValor(Cells[6, i]), -6);
                              end else begin
                                 AdicoesValor_SemAdValorem.Value := Roundto(((StrValor(Cells[6, i]) * mMoedaOrigem) / mMoedaDestino), -6);
                                 If not cValoracao.Checked then
                                    AdicoesValor_Unitario.Value := Roundto(((StrValor(Cells[6, i]) * mMoedaOrigem) / mMoedaDestino) + StrValor(Cells[7, i]), -6)
                                 else
                                    AdicoesValor_Unitario.Value := Roundto( (StrValor(Cells[6, i]) * mMoedaOrigem) / mMoedaDestino, -6);
                              End;

                              AdicoesValor_UnitarioReal.Value := Roundto((AdicoesValor_Unitario.Value * cFobTaxa.Value), -6);
                              AdicoesNCM.Value                := Cells[2, i];
                              AdicoesQuantidade.Value         := StrValor(Cells[5, i]);
                              AdicoesLancado_Entrada.Value    := AdicoesQuantidade.Value;
                              AdicoesLancado_Saida.Value      := 0;
                              AdicoesLancado_Terceiros.Value  := 0;
                              AdicoesExportador.Value         := mForn;
                              AdicoesValor_PIS.Value          := (StrValor(gAdicoes.Cells[5, mLinha])/StrValor(gAdicoes.Cells[33, mLinha])) * AdicoesQuantidade.AsFloat;
                              AdicoesValor_COFINS.Value       := (StrValor(gAdicoes.Cells[3, mLinha])/StrValor(gAdicoes.Cells[33, mLinha])) * AdicoesQuantidade.AsFloat;
                              AdicoesDumping.Value            := cDumping.Checked[i-1];
                              AdicoesPeso_Liquido.Value       := StrValor(gAdicoes.Cells[10, mLinha]) / StrValor(gAdicoes.Cells[33, mLinha]);

                              // Verifica qual a forma de pegar o peso líquido do produto.
                              // 0 = Mantem o peso rateado da adição acima.
                              // 1 = Pega o peso do cadastro do produto.
                              If cPeso.ItemIndex = 1 then begin
                                 If ProdutosPeso_Liquido.Value > 0 then begin
                                    AdicoesPeso_Liquido.Value := ProdutosPeso_Liquido.Value;
                                 End;
                              End;

                              // 2 = Pega o peso do cadastro dos itens da fatura.
                              If cPeso.ItemIndex = 2 then begin
                                 If InvoiceItensPeso_Liquido.Value > 0 then begin
                                 End;
                              End;

                              // Verifica o código de referência do produto na descrição caso esteja informada a mascara em configurações do sistema processos.
                              mCodigoFab := '';
                              mPedidoFab := '';
                              mOrdemFab  := '';
                              
                              If (Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString) <> '') and (Pos('<[', mDescricao) <> 0 ) then begin
                                 mCodigoFab := Copy(mDescricao, 1, Pos(Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString), mDescricao)-1);
                                 mCodigoFab := Copy(mCodigoFab, 1, 20);
                                 mTamFab    := (Pos(']>', mDescricao)-1) - (Pos('<[', mDescricao)+1);
                                 mPedidoFab := Copy(mDescricao, Pos('<[', mDescricao)+2, mTamFab);
                                 mTamFab    := (Pos('>]', mDescricao)-1) - (Pos('[<', mDescricao)+1);
                                 mOrdemFab  := Copy(mDescricao, Pos('[<', mDescricao)+2, mTamFab);
                                 If mOrdemFab = '' then begin
                                    mOrdemFab := '0';
                                 End;
                                 //AdicoesPedido.Value := mPedidoFab;
                                 //AdicoesOrdem.Value  := StrtoInt(mOrdemFab);
                              End;
                              AdicoesPedido.Value := Cells[18, i];
                              AdicoesOrdem.Value  := Strtoint(Cells[19, i]);
                      Adicoes.Post;

                      If cPeso.ItemIndex = 0 then begin
                         Produtos.Edit;
                                  ProdutosPeso_Liquido.Value := AdicoesPeso_Liquido.Value;
                         Produtos.Post;
                      End;

                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Application.ProcessMessages;
                End;
           End;

           // Gera os lançamentos dos impostos e taxas no financeiro.
           GeraFinanceiro;
      End;
      
      Janela_Processamento.Close;

      ShowMessage('Importação da DI '+cDI2.Text+' terminada.');
      bImportar.Enabled  := true;
      bVerificar.Enabled := true;
      bCotacao.Enabled   := true;
end;

procedure TUtilitarios_ImportarDadosDI.gPagamentosDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;State: TGridDrawState);
//var
//   strTemp: string;
//   Format: integer;
begin
//      strTemp := gPagamentos.Cells[ACol,ARow];
//      gPagamentos.Canvas.FillRect(Rect);
//      Format := DT_CENTER;
//
//      If aRow <> 0 then begin
//         If (aCol > 0) and (aCol < 6) then Format := DT_LEFT;
//         If aCol > 6 then Format := DT_RIGHT;
//      End;
//
//      If (ARow = 0) then gPagamentos.Canvas.Font.Style := [fsBold];

//      DrawText(gPagamentos.Canvas.Handle, PChar(strTemp), -1, Rect, Format);
end;


procedure TUtilitarios_ImportarDadosDI.gFornecedoresDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;State: TGridDrawState);
//var
//   strTemp: string;
//   Format: integer;
begin
//      strTemp := gFornecedores.Cells[ACol,ARow];
//      gFornecedores.Canvas.FillRect(Rect);
//      Format := DT_CENTER;
//
//      If aRow <> 0 then Format := DT_LEFT;
//
//      If (ARow = 0) then gFornecedores.Canvas.Font.Style := [fsBold];
//      DrawText(gFornecedores.Canvas.Handle, PChar(strTemp), -1, Rect, Format);
end;

Function TUtilitarios_ImportarDadosDI.PesquisaStringGrid(pGrid: TStringGrid; pCol: Integer; pPesquisa:String): Integer;
var
   i: integer;
begin
      result := 0;
      With pGrid do begin
           For i := 0 to RowCount -1 do begin
               result := i;
               If Cells[pCol, i] = pPesquisa then break;
           End;
      End;
end;

procedure TUtilitarios_ImportarDadosDI.TotalizaFOB;
var
   i: Integer;

   mTaxaOrig,
   mTaxaDest,
   mConvertido: Real;
begin
      // Totaliza o FOB.
      If gProdutos.Cells[0,1] <> '' then begin
         cFOBME.Value   := 0;
         cFOBReal.Value := 0;
         With gProdutos do begin
              For i := 1 to RowCount -1 do begin
                  If not cValoracao.Checked then
                     cFOBME.Value := cFOBME.Value + Roundto(( (StrValor(Cells[6, i])+ StrValor(Cells[7, i])) * StrValor(Cells[5, i])), -6)
                  else
                     cFOBME.Value := cFOBME.Value + Roundto(( StrValor(Cells[6, i]) * StrValor(Cells[5, i])), -6);
              End;
         End;

         cFOBAdicoesME.Value   := cFOBME.Value;
         cFOBAdicoesReal.Value := cFOBME.Value * cFOBTaxa.Value;

         // Removendo Frete e Seguro do Valor total do FOB.
         If Dados.Incoterms.Locate('Codigo', gAdicoes.Cells[11, 1], [loCaseInsensitive]) then begin
            If Dados.IncotermsFrete.AsBoolean = false then begin
               If cFOBMoedaCodigo.Text = cFreteMoedaCodigo.Text then
                  cFOBME.Value := cFOBME.Value - cFreteME.Value
               else begin
                  Dados.Cotacao.Locate('Moeda;Data', VarArrayOf([cFreteMoedaCodigo.Text, cDataReg.Date]), [loCaseInsensitive]);
                  mTaxaOrig := Dados.CotacaoValor.Value;
                  Dados.Cotacao.Locate('Moeda;Data', VarArrayOf([cFOBMoedaCodigo.Text, cDataReg.Date]), [loCaseInsensitive]);
                  mTaxaDest    := Dados.CotacaoValor.Value;
                  mConvertido  := ((cFreteME.Value * mTaxaOrig ) / mTaxaDest );
                  cFOBME.Value := (cFOBME.Value - mConvertido);
               End;
            End;
            If not Dados.IncotermsSeguro.AsBoolean then begin
               If cFOBMoedaCOdigo.Text = cSeguroMoedaCodigo.Text then
                  cFOBME.Value := cFOBME.Value - cSeguroME.Value
               else begin
                  Dados.Cotacao.Locate('Moeda;Data', VarArrayOf([cSeguroMoedaCodigo.Text, cDataReg.Date]), [loCaseInsensitive]);
                  mTaxaOrig := Dados.CotacaoValor.Value;
                  Dados.Cotacao.Locate('Moeda;Data', VarArrayOf([cFOBMoedaCodigo.Text, cDataReg.Date]), [loCaseInsensitive]);
                  mTaxaDest    := Dados.CotacaoValor.Value;
                  mConvertido  := ((cSeguroME.Value * mTaxaOrig ) / mTaxaDest );
                  cFOBME.Value := (cFOBME.Value - mConvertido);
               End;
            End;
         End;
         
         cFOBReal.Value := cFOBME.Value * cFOBTaxa.Value;
      End;
end;

procedure TUtilitarios_ImportarDadosDI.cValoracaoClick(Sender: TObject);
begin
      TotalizaFOB;
end;

procedure TUtilitarios_ImportarDadosDI.GeraFinanceiro;
Var
    i: Integer;
begin
      With Dados, dmContab do begin
           Janela_Processamento.Progresso.Max      := gPagamentos.RowCount-1+2;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Gerando lançamentos de impostos no financeiro...';

           // Verifica se os lançamentos de impostos da DI já foram baixados.
           tBaixados.SQL.Clear;
           tBaixados.SQL.Add('SELECT COUNT(*) AS Baixados FROM PagarReceber WHERE(Fiscal = :pFiscal) AND (Tipo_Nota = ''CX'') AND ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)),0) > 0');
           tBaixados.ParamByName('pFiscal').AsString := ProcessosDOC.FieldByName('Numero_Declaracao').AsString;
           tBaixados.Open;

           If tBaixados.FieldByName('Baixados').AsInteger = 0 then begin
              ClassificacaoFinanceira.SQL.Clear;
              ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira');
              ClassificacaoFinanceira.Open;

              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
              PagarReceberBaixas.ParamByName('pNumero').AsInteger := 1;
              PagarReceberBaixas.Open;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE(Fiscal = :pFiscal) AND (Tipo_Nota = ''CX'') AND ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)),0) = 0');
              PagarReceber.ParamByName('pFiscal').AsString := ProcessosDOC.FieldByName('Numero_Declaracao').AsString;
              PagarReceber.Execute;
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pData)');
              PagarReceber.ParamByName('pData').AsDate := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
              PagarReceber.Open;

              tPagarReceberBaixa.SQL.Clear;
              tPagarReceberBaixa.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PagarReceberBaixas');

              tPagarReceber.SQL.Clear;
              tpagarReceber.SQL.Add('SELECT ISNULL(MAX(Numero), 0)+1 AS Numero FROM PagarReceber');
              tPagarReceber.Open;

              If (not cDA.Checked) and (not cSuspensao.Checked) then begin
                 With gPagamentos do begin
                      For i := 1 to RowCount -1 do begin
                          If (Trim(Cells[1, i]) <> '') and (StrValor(Cells[9, i]) > 0) then begin
                             ClassificacaoFinanceira.Locate('Codigo', Cells[1, i], [loCaseInsensitive]);

                             tPagarReceber.Open;
                             PagarReceber.Append;
                                          PagarReceberNumero.Value           := tPagarReceber.FieldByName('Numero').AsInteger;
                                          PagarReceberClassificacao.Value    := Cells[1, i];
                                          PagarReceberOrgao.Value            := TiposProcesso.FieldByName('SISCOMEX_Orgao').AsString;
                                          PagarReceberDocumento.Value        := TiposProcesso.FieldByName('SISCOMEX_Documento').AsString;
                                          PagarReceberCentro_Custo.Value     := TiposProcesso.FieldByName('SISCOMEX_CentroCusto').AsString;
                                          PagarReceberTipo.Value             := ClassificacaoFinanceira.FieldByName('Tipo').AsString;
                                          PagarReceberData_Documento.Value   := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                          PagarReceberData_Vencimento.Value  := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                          PagarReceberNumero_Documento.Value := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                          PagarReceberProcesso.Value         := ProcessosDOC.FieldByName('Processo').AsString;
                                          PagarReceberCustoConta.Value       := ClassificacaoFinanceira.FieldByName('Custo').AsBoolean;
                                          PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceira.FieldByName('Custo_Seletivo').AsBoolean;
                                          PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceira.FieldByName('Custo_Entrada').AsBoolean;
                                          PagarReceberCusto_Outros.Value     := ClassificacaoFinanceira.FieldByName('Custo_Outros').AsBoolean;
                                          PagarReceberNivel.Value            := ClassificacaoFinanceira.FieldByName('Nivel').AsInteger;
                                          PagarReceberFiscal.Value           := ProcessosDOC.FieldByName('Numero_Declaracao').AsString;
                                          PagarReceberTipo_Nota.Value        := 'CX';
                                          PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                          PagarReceberMulta.Value            := 0;
                                          PagarReceberJuros.Value            := 0;
                                          PagarReceberDesconto.Value         := 0;
                                          PagarReceberValor_Baixado.Value    := 0;

                                          // Verifica o código de COFINS para pegar o valor sem a mojoração, pois o resto e lançado na diferença de COFINS.
                                          If Trim(Cells[0, i]) <> '5629' then begin
                                             PagarReceberValor_Documento.Value  := StrValor(Cells[9, i]);
                                             PagarReceberValor_Parcela.Value    := StrValor(Cells[9, i]);
                                             PagarReceberValor_Total.Value      := StrValor(Cells[9, i]);
                                             PagarReceberValor_Operacao.Value   := StrValor(Cells[9, i]);
                                             If Trim(cBanco.Text) <> '' then
                                                PagarReceberValor_Baixado.Value := StrValor(Cells[9, i])
                                          end else begin
                                             PagarReceberValor_Documento.Value  := ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency;
                                             PagarReceberValor_Parcela.Value    := ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency;
                                             PagarReceberValor_Total.Value      := ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency;
                                             PagarReceberValor_Operacao.Value   := ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency;
                                             If Trim(cBanco.Text) <> '' then
                                                PagarReceberValor_Baixado.Value := ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency;
                                          End;
                                          PagarReceberEmpresa.Value := Menu_Principal.mEmpresa;
                                          PagarReceberFilial.Value  := Empresas.FieldByName('Numero_Filial').asinteger;
                             PagarReceber.Post;
                             tPagarReceber.Close;

                             // Lançamento da baixa.
                             If Trim(cBanco.Text) <> '' then begin
                                tPagarReceberBaixa.Open;
                                PagarReceberBaixas.Append;
                                                   PagarReceberBaixasRegistro.Value            := tPagarReceberBaixa.FieldByName('Registro').AsInteger;
                                                   PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                                                   PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.Value;
                                                   PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                                   PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                                   PagarReceberBaixasBanco.Value               := BancosCodigo.AsInteger;
                                                   PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                                   PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                                   PagarReceberBaixasObservacao.Value          := 'Baixa referente a lançamento importado do siscomex DI nº: '+ ProcessosDOC.FieldByName('Numero_Declaracao').AsString + ' Processo nº '+ ProcessosDOC.FieldByName('Processo').AsString;
                                                   PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
                                PagarReceberBaixas.Post;
                                tPagarReceberBaixa.Close;

                                // Grava o numero da baixa no titulo.
                                PagarReceber.Edit;
                                             PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                                             PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
                                             PagarReceberBanco.Value         := PagarReceberBaixasBanco.Value;
                                PagarReceber.Post;
                             End;
                          End;

                          Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                          Application.ProcessMessages;
                      End;
                 End;

                 // Lançamento da DIFERENÇA DO PIS.
                 ClassificacaoFinanceira.Locate('Codigo', TiposProcesso.FieldByName('SISCOMEX_ClassificacaoDifPIS').AsString, [loCaseInsensitive]);
                 If cTotalPISMaj.Value > 0 then begin
                    If (Trim(TiposProcesso.FieldByName('SISCOMEX_ClassificacaoDifPIS').AsString) <> '') and ((ProcessosDOC.FieldByName('Valor_PIS').AsCurrency-ProcessosDOC.FieldByName('Valor_PIS2').AsCurrency) > 0) and (cSuspensao.Checked = false) then begin
                       tPagarReceber.Open;
                       PagarReceber.Append;
                                   PagarReceberNumero.Value           := tPagarReceber.FieldByName('Numero').AsInteger + 1;
                                   PagarReceberClassificacao.Value    := TiposProcesso.FieldByName('SISCOMEX_ClassificacaoDifPIS').AsString;
                                   PagarReceberTipo.Value             := ClassificacaoFinanceira.FieldByName('Tipo').AsString;
                                   PagarReceberData_Documento.Value   := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                   PagarReceberData_Vencimento.Value  := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                   PagarReceberValor_Documento.Value  := (ProcessosDOC.FieldByName('Valor_PIS').AsCurrency-ProcessosDOC.FieldByName('Valor_PIS2').AsCurrency);
                                   PagarReceberValor_Parcela.Value    := (ProcessosDOC.FieldByName('Valor_PIS').AsCurrency-ProcessosDOC.FieldByName('Valor_PIS2').AsCurrency);
                                   PagarReceberMulta.Value            := 0;
                                   PagarReceberJuros.Value            := 0;
                                   PagarReceberDesconto.Value         := 0;
                                   PagarReceberValor_Total.Value      := (ProcessosDOC.FieldByName('Valor_PIS').AsCurrency-ProcessosDOC.FieldByName('Valor_PIS2').AsCurrency);
                                   PagarReceberValor_Operacao.Value   := (ProcessosDOC.FieldByName('Valor_PIS').AsCurrency-ProcessosDOC.FieldByName('Valor_PIS2').AsCurrency);
                                   PagarReceberOrgao.Value            := TiposProcesso.FieldByName('SISCOMEX_Orgao').AsString;
                                   PagarReceberDocumento.Value        := TiposProcesso.FieldByName('SISCOMEX_Documento').AsString;
                                   PagarReceberNumero_Documento.Value := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                   PagarReceberProcesso.Value         := ProcessosDOC.FieldByName('Processo').AsString;
                                   PagarReceberCustoConta.Value       := ClassificacaoFinanceira.FieldByName('Custo').AsBoolean;
                                   PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceira.FieldByName('Custo_Seletivo').AsBoolean;
                                   PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceira.FieldByName('Custo_Entrada').AsBoolean;
                                   PagarReceberCusto_Outros.Value     := ClassificacaoFinanceira.FieldByName('Custo_Outros').AsBoolean;
                                   PagarReceberCentro_Custo.Value     := TiposProcesso.FieldByName('SISCOMEX_CentroCusto').AsString;
                                   PagarReceberNivel.Value            := ClassificacaoFinanceira.FieldByName('Nivel').AsInteger;
                                   PagarReceberFiscal.Value           := ProcessosDOC.FieldByName('Numero_Declaracao').AsString;
                                   PagarReceberTipo_Nota.Value        := 'CX';
                                   PagarReceberObservacao.Value       := 'Diferença de PIS importação';
                                   If Trim(cBanco.Text) <> '' then
                                      PagarReceberValor_Baixado.Value := (ProcessosDOC.FieldByName('Valor_PIS').AsCurrency-ProcessosDOC.FieldByName('Valor_PIS2').AsCurrency);
                                   PagarReceberEmpresa.Value := Menu_Principal.mEmpresa;
                                   PagarReceberFilial.Value  := Empresas.FieldByName('Numero_Filial').asinteger;
                       PagarReceber.Post;
                       tPagarReceber.Close;
              
                       // Lançamento da baixa.
                       If Trim(cBanco.Text) <> '' then begin
                          tPagarReceberBaixa.Open;
                          PagarReceberBaixas.Append;
                                             PagarReceberBaixasRegistro.Value            := tPagarReceberBaixa.FieldByName('Registro').AsInteger + 1;
                                             PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                                             PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.Value;
                                             PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                             PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                             PagarReceberBaixasBanco.Value               := BancosCodigo.AsInteger;
                                             PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                             PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                             PagarReceberBaixasObservacao.Value          := 'Baixa referente a lançamento de Diferença de PIS importado do siscomex DI nº: '+ ProcessosDOC.FieldByName('Numero_Declaracao').AsString + ' Processo nº '+ ProcessosDOC.FieldByName('Processo').AsString;
                                             PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
                          PagarReceberBaixas.Post;
                          tPagarReceberBaixa.Close;

                          // Grava o numero da baixa no titulo.
                          PagarReceber.Edit;
                                       PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                                       PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
                                       PagarReceberBanco.Value         := PagarReceberBaixasBanco.Value;
                          PagarReceber.Post;
                       End;
                    End;
                 End;
                 
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
                 
                 // Lançamento da DIFERENÇA DA COFINS.
                 ClassificacaoFinanceira.Locate('Codigo', TiposProcesso.FieldByName('SISCOMEX_ClassificacaoDifCOFINS').AsString, [loCaseInsensitive]);
                 If cTotalCOFINSMaj.Value > 0 then begin
                    If (Trim(TiposProcesso.FieldByName('SISCOMEX_ClassificacaoDifCOFINS').AsString) <> '') and ((ProcessosDOC.FieldByName('Valor_COFINS').AsCurrency-ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency) > 0) and (cSuspensao.Checked = false) then begin
                       tPagarReceber.Open;
                       PagarReceber.Append;
                                    PagarReceberNumero.Value           := tPagarReceber.FieldByName('Numero').AsInteger + 1;
                                    PagarReceberClassificacao.Value    := TiposProcesso.FieldByName('SISCOMEX_ClassificacaoDifCOFINS').AsString;
                                    PagarReceberTipo.Value             := ClassificacaoFinanceira.FieldByName('Tipo').AsString;
                                    PagarReceberData_Documento.Value   := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                    PagarReceberData_Vencimento.Value  := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                    PagarReceberValor_Documento.Value  := (ProcessosDOC.FieldByName('Valor_COFINS').AsCurrency-ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency);
                                    PagarReceberValor_Parcela.Value    := (ProcessosDOC.FieldByName('Valor_COFINS').AsCurrency-ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency);
                                    PagarReceberMulta.Value            := 0;
                                    PagarReceberJuros.Value            := 0;
                                    PagarReceberDesconto.Value         := 0;
                                    PagarReceberValor_Total.Value      := (ProcessosDOC.FieldByName('Valor_COFINS').AsCurrency-ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency);
                                    PagarReceberValor_Operacao.Value   := (ProcessosDOC.FieldByName('Valor_COFINS').AsCurrency-ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency);
                                    PagarReceberOrgao.Value            := TiposProcesso.FieldByName('SISCOMEX_Orgao').AsString;
                                    PagarReceberDocumento.Value        := TiposProcesso.FieldByName('SISCOMEX_Documento').AsString;
                                    PagarReceberNumero_Documento.Value := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                    PagarReceberProcesso.Value         := ProcessosDOC.FieldByName('Processo').AsString;
                                    PagarReceberCustoConta.Value       := ClassificacaoFinanceira.FieldByName('Custo').AsBoolean;
                                    PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceira.FieldByName('Custo_Seletivo').AsBoolean;
                                    PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceira.FieldByName('Custo_Entrada').AsBoolean;
                                    PagarReceberCusto_Outros.Value     := ClassificacaoFinanceira.FieldByName('Custo_Outros').AsBoolean;
                                    PagarReceberCentro_Custo.Value     := TiposProcesso.FieldByName('SISCOMEX_CentroCusto').AsString;
                                    PagarReceberNivel.Value            := ClassificacaoFinanceira.FieldByName('Nivel').AsInteger;
                                    PagarReceberFiscal.Value           := ProcessosDOC.FieldByName('Numero_Declaracao').AsString;
                                    PagarReceberTipo_Nota.Value        := 'CX';
                                    PagarReceberObservacao.Value       := 'Diferença de COFINS importação';
                                    If Trim(cBanco.Text) <> '' then
                                       PagarReceberValor_Baixado.Value := (ProcessosDOC.FieldByName('Valor_COFINS').AsCurrency-ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency);
                                    PagarReceberEmpresa.Value := Menu_Principal.mEmpresa;
                                    PagarReceberFilial.Value  := Empresas.FieldByName('Numero_Filial').asinteger;
                       PagarReceber.Post;
                       tPagarReceber.Close;

                       // Lançamento da baixa.
                       If Trim(cBanco.Text) <> '' then begin
                          tPagarReceberBaixa.Open;
                          PagarReceberBaixas.Append;
                                             PagarReceberBaixasRegistro.Value            := tPagarReceberBaixa.FieldByName('Registro').AsInteger + 1;
                                             PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                                             PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.Value;
                                             PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                             PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                             PagarReceberBaixasBanco.Value               := BancosCodigo.AsInteger;
                                             PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                             PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                             PagarReceberBaixasObservacao.Value          := 'Baixa referente a lançamento de Diferença de COFINS importado do siscomex DI nº: '+ ProcessosDOC.FieldByName('Numero_Declaracao').AsString + ' Processo nº '+ ProcessosDOC.FieldByName('Processo').AsString;
                                             PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
                          PagarReceberBaixas.Post;
                          tPagarReceberBaixa.Close;

                          // Grava o numero da baixa no titulo.
                          PagarReceber.Edit;
                                       PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                                       PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
                                       PagarReceberBanco.Value         := PagarReceberBaixasBanco.Value;
                          PagarReceber.Post;
                       End;

                       Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                       Application.ProcessMessages;
                    End;
                 End;

                 // Calculo e Lançamento da AFRMM.
                 ClassificacaoFinanceira.Locate('Codigo', TiposProcesso.FieldByName('Classificacao_AFRMM').AsString, [loCaseInsensitive]);
                 If (ConfiguracaoAFRMM_Calcular.AsBoolean) and (cAFRMM.Value > 0) then begin
                    tPagarReceber.Open;
                    PagarReceber.Append;
                                 PagarReceberNumero.Value           := tPagarReceber.FieldByName('Numero').AsInteger + 1;
                                 PagarReceberClassificacao.Value    := TiposProcesso.FieldByName('Classificacao_AFRMM').AsString;
                                 PagarReceberTipo.Value             := ClassificacaoFinanceira.FieldByName('Tipo').AsString;
                                 PagarReceberData_Documento.Value   := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                 PagarReceberData_Vencimento.Value  := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                 PagarReceberValor_Documento.Value  := cAFRMM.Value;
                                 PagarReceberValor_Parcela.Value    := cAFRMM.Value;
                                 PagarReceberMulta.Value            := 0;
                                 PagarReceberJuros.Value            := 0;
                                 PagarReceberDesconto.Value         := 0;
                                 PagarReceberValor_Total.Value      := cAFRMM.Value;
                                 PagarReceberValor_Operacao.Value   := cAFRMM.Value;
                                 PagarReceberOrgao.Value            := TiposProcesso.FieldByName('SISCOMEX_Orgao').AsString;
                                 PagarReceberDocumento.Value        := TiposProcesso.FieldByName('SISCOMEX_Documento').AsString;
                                 PagarReceberNumero_Documento.Value := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                 PagarReceberProcesso.Value         := ProcessosDOC.FieldByName('Processo').AsString;
                                 PagarReceberCustoConta.Value       := ClassificacaoFinanceira.FieldByName('Custo').AsBoolean;
                                 PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceira.FieldByName('Custo_Seletivo').AsBoolean;
                                 PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceira.FieldByName('Custo_Entrada').AsBoolean;
                                 PagarReceberCusto_Outros.Value     := ClassificacaoFinanceira.FieldByName('Custo_Outros').AsBoolean;
                                 PagarReceberCentro_Custo.Value     := TiposProcesso.FieldByName('SISCOMEX_CentroCusto').AsString;
                                 PagarReceberNivel.Value            := ClassificacaoFinanceira.FieldByName('Nivel').AsInteger;
                                 PagarReceberFiscal.Value           := ProcessosDOC.FieldByName('Numero_Declaracao').AsString;
                                 PagarReceberTipo_Nota.Value        := 'CX';
                                 PagarReceberObservacao.Value       := 'Marinha Mercante (AFRMM)';
                                 If Trim(cBanco.Text) <> '' then
                                    PagarReceberValor_Baixado.Value := cAFRMM.Value;
                                 PagarReceberEmpresa.Value := Menu_Principal.mEmpresa;
                                 PagarReceberFilial.Value  := Empresas.FieldByName('Numero_Filial').asinteger;
                    PagarReceber.Post;
                    tPagarReceber.Close;

                    // Lançamento da baixa.
                    If Trim(cBanco.Text) <> '' then begin
                       tPagarReceberBaixa.Open;
                       PagarReceberBaixas.Append;
                                          PagarReceberBaixasRegistro.Value            := tPagarReceberBaixa.FieldByName('Registro').AsInteger + 1;
                                          PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                                          PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.Value;
                                          PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                          PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                          PagarReceberBaixasBanco.Value               := BancosCodigo.AsInteger;
                                          PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                          PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                          PagarReceberBaixasObservacao.Value          := 'Baixa referente a lançamento de AFRMM importado do siscomex DI nº: '+ ProcessosDOC.FieldByName('Numero_Declaracao').AsString + ' Processo nº '+ ProcessosDOC.FieldByName('Processo').AsString;
                                          PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
                       PagarReceberBaixas.Post;
                       tPagarReceberBaixa.Close;
                       
                       // Grava o numero da baixa no titulo.
                       PagarReceber.Edit;
                                    PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                                    PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
                                    PagarReceberBanco.Value         := PagarReceberBaixasBanco.Value;
                       PagarReceber.Post;
                    End;

                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                    Application.ProcessMessages;
                 End;
              End;
           end else begin
              cAvisos.Lines.Add('Lançamentos de impostos não foram recriados pois ja foram baixados.');
              cAvisos.Lines.Add('Estorne as baixas se deseja que o sistema recrie os lançamentos no financeiro.');
           End;
      End;
end;

procedure TUtilitarios_ImportarDadosDI.cDescricaoDragOver(Sender,Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
     Accept := Source is TRxDBGrid;
end;

procedure TUtilitarios_ImportarDadosDI.cDescricaoDragDrop(Sender,Source: TObject; X, Y: Integer);
begin
     bAdCodigo.Click;
end;

procedure TUtilitarios_ImportarDadosDI.mnBuscarClick(Sender: TObject);
begin
     keybd_event(VK_CONTROL,0,KEYEVENTF_EXTENDEDKEY or 0,0);
     keybd_event(ord('C'),0,0,0);
     keybd_event(VK_CONTROL,$45,KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP,0);

     Application.ProcessMessages;

     cPesquisa.Clear;
     cPesquisa.PasteFromClipboard;
end;

procedure TUtilitarios_ImportarDadosDI.bCotacaoClick(Sender: TObject);
begin
     Cadastro_Cotacao := TCadastro_Cotacao.Create(Self);
     Cadastro_Cotacao.Caption := Caption;
     Cadastro_Cotacao.ShowModal;

     Dados.Moedas.SQL.Clear;
     Dados.Moedas.SQL.Add('SELECT * FROM Moedas');
     Dados.Moedas.Open;

     Dados.Cotacao.SQL.Clear;
     Dados.Cotacao.SQL.Add('SELECT * FROM Cotacao');
     Dados.Cotacao.Open;
end;

procedure TUtilitarios_ImportarDadosDI.cXMLClick(Sender: TObject);
begin
      AbrirDI;
end;

procedure TUtilitarios_ImportarDadosDI.cProcessoExit(Sender: TObject);
begin
      tPesquisa2.SQL.Clear;
      tPesquisa2.SQL.Add('SELECT Numero_Declaracao AS DI, Data_RegistroDeclaracao AS Data FROM ProcessosDocumentos WHERE Processo = :pProcesso');
      tPesquisa2.ParamByName('pProcesso').AsString := cProcesso.Text;
      tPesquisa2.Open;
      If tPesquisa2.RecordCount > 0 then begin
         cDI2.Text     := tPesquisa2.FieldByName('DI').AsString;
         cDataReg.Date := tPesquisa2.FieldByName('Data').AsDateTime;
      end else begin
         tPesquisa2.SQL.Clear;
         tPesquisa2.SQL.Add('SELECT ISNULL(MAX(SUBSTRING(Numero_Declaracao, 7, 4)), 0)+1 AS DI from ProcessosDocumentos  WHERE SUBSTRING(Numero_Declaracao,1,6) = ''DITMP#'' ');
         tPesquisa2.Open;

         cDI2.Text     := 'DITMP#'+PoeZero(4, tPesquisa2.FieldByName('DI').AsInteger);
         cDataReg.Date := Date;
      end;
end;

procedure TUtilitarios_ImportarDadosDI.bCAMEXAdClick(Sender: TObject);
var
    i      : Integer;
    mAdicao: String;
begin
      mAdicao := InputBox('Nº da Adição','Nº', mAdicao);
      For i := 0 to cCAMEX.Count-1 do begin
          If Copy(cCAMEX.Items[i], 1, 3) = PoeZero(3, StrtoInt(mAdicao)) then cCAMEX.Checked[i] := true;
      End;
end;

procedure TUtilitarios_ImportarDadosDI.bCAMEXTodosClick(Sender: TObject);
var
    i:Integer;
begin
      For i := 0 to cCAMEX.Count-1 do begin
          cCAMEX.Checked[i] := true;
      End;
end;

procedure TUtilitarios_ImportarDadosDI.bCAMEXDesmClick(Sender: TObject);
var
    i:Integer;
begin
      For i := 0 to cCAMEX.Count-1 do begin
          cCAMEX.Checked[i] := false;
      End;
end;

end.




