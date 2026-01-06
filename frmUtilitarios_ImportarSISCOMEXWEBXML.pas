unit frmUtilitarios_ImportarSISCOMEXWEBXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, Mask, xmldom, system.UITypes,
  DB, Grids, XMLDoc, XMLIntf, msxmldom, RxLookup, DBCtrls, Buttons, CheckLst, Vcl.ComCtrls, DBAccess, MSAccess, Funcoes, RXDBCtrl, MaskUtils, StrUtils, DateUtils, Math, Menus, IniFiles, OleCtrls, SHDocVw,
  ClipBrd, IdHTTP, DBGrids, RxCurrEdit, RxToolEdit, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, MemDS;

type
  TUtilitarios_ImportarSISCOMEXWEBXML = class(TForm)
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
    cProcesso: TComboBox;
    StaticText52: TStaticText;
    cTipoMercadoria: TDBLookupComboBox;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    cEstado: TDBLookupComboBox;
    StaticText55: TStaticText;
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
    cDI2: TMaskEdit;
    StaticText51: TStaticText;
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
    GradeProdutos: TDBGrid;
    StaticText44: TStaticText;
    cPesquisa: TEdit;
    bAdCodigo: TButton;
    cTituloAD: TStaticText;
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
    TabSheet12: TTabSheet;
    StaticText65: TStaticText;
    cAFRMMReal: TCurrencyEdit;
    bCotacao: TBitBtn;
    StaticText32: TStaticText;
    cFOBAdicoesME: TCurrencyEdit;
    StaticText34: TStaticText;
    cFOBAdicoesReal: TCurrencyEdit;
    Panel4: TPanel;
    Panel1: TPanel;
    bVolta: TSpeedButton;
    bAdianta: TSpeedButton;
    bAtualiza: TSpeedButton;
    cBrowser: TWebBrowser;
    Label1: TLabel;
    cDI: TMaskEdit;
    bBuscar: TBitBtn;
    StaticText66: TStaticText;
    cURL: TEdit;
    TabSheet13: TTabSheet;
    ImportarSeriais1: TMenuItem;
    gSeriais: TStringGrid;
    cTotalSeriais: TCurrencyEdit;
    StaticText67: TStaticText;
    bLimpar: TBitBtn;
    N1: TMenuItem;
    bUnidade: TBitBtn;
    IdHTTP1: TIdHTTP;
    cViaCodigo: TEdit;
    TabSheet14: TTabSheet;
    cCAMEX: TCheckListBox;
    bCAMEXAd: TBitBtn;
    bCAMEXTodos: TBitBtn;
    bCAMEXDesm: TBitBtn;
    bTabPC: TBitBtn;
    StaticText13: TStaticText;
    cModalidade: TDBLookupComboBox;
    cFreteNecME: TStaticText;
    StaticText77: TStaticText;
    cFreteNacME: TCurrencyEdit;
    cFreteNacReal: TCurrencyEdit;
    cFreteNacional: TCheckBox;
    cRecintoAduaneiroCod: TEdit;
    bVincular: TBitBtn;
    bRemCodigo: TButton;
    StaticText78: TStaticText;
    cTUPReal: TCurrencyEdit;
    tTmp: TMSQuery;
    StaticText79: TStaticText;
    cTUPME: TCurrencyEdit;
    cAFRMMME: TCurrencyEdit;
    StaticText80: TStaticText;
    StaticText63: TStaticText;
    cNavio: TDBLookupComboBox;
    bPesqNav: TSpeedButton;
    StaticText70: TStaticText;
    StaticText71: TStaticText;
    cFornecedoresCheck: TCheckListBox;
    cFornecedoresAchados: TMemo;
    StaticText81: TStaticText;
    cArmazemCod: TRxDBLookupCombo;
    tArmazem: TMSQuery;
    dstArmazem: TDataSource;
    StaticText82: TStaticText;
    tBL: TMSQuery;
    dstBL: TDataSource;
    cBL: TRxDBLookupCombo;
    tBLBL: TStringField;
    tBLLaudo: TStringField;
    tBLData_Emissao: TDateTimeField;
    tBLNavio: TIntegerField;
    tBLNavio_Nome: TStringField;
    StaticText83: TStaticText;
    cCIDEValor_Devido: TCurrencyEdit;
    StaticText84: TStaticText;
    cCIDEValor_Recolher: TCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bAdicaoClick(Sender: TObject);
    procedure bDesmarcarClick(Sender: TObject);
    procedure bTodosClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure bAdCodigoClick(Sender: TObject);
    procedure GradeProdutosMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure gProdutosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure gProdutosDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure gProdutosClick(Sender: TObject);
    procedure bVerificarClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure bAbrirClick(Sender: TObject);
    Function  PesquisaStringGrid(pGrid: TStringGrid; pCol: Integer; pPesquisa:String): Integer;
    procedure TotalizaFOB;
    procedure cValoracaoClick(Sender: TObject);
    procedure GeraFinanceiro;
    procedure ChecaConta(ContaD:String; ContaC:String);
    Function  ConverteHistorico(Historico: String):String;
    procedure cDescricaoDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure cDescricaoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure mnBuscarClick(Sender: TObject);
    procedure cURLClick(Sender: TObject);
    procedure bAtualizaClick(Sender: TObject);
    procedure cBrowserDocumentComplete(Sender: TObject;const pDisp: IDispatch; var URL: OleVariant);
    procedure bBuscarClick(Sender: TObject);
    procedure bCotacaoClick(Sender: TObject);
    procedure AbrirDI;
    procedure Timer1Timer(Sender: TObject);
    procedure ImportarSeriais1Click(Sender: TObject);
    procedure gProdutosSelectCell(Sender: TObject; ACol, ARow: Integer;var CanSelect: Boolean);
    function  ProcuraSerial(Numero: String):Boolean;
    procedure bLimparClick(Sender: TObject);
    procedure bUnidadeClick(Sender: TObject);
    procedure bCAMEXAdClick(Sender: TObject);
    procedure bCAMEXTodosClick(Sender: TObject);
    procedure bCAMEXDesmClick(Sender: TObject);
    procedure bTabPCClick(Sender: TObject);
    procedure cModalidadeExit(Sender: TObject);
    procedure bVincularClick(Sender: TObject);
    procedure bRemCodigoClick(Sender: TObject);
    procedure bPesqNavClick(Sender: TObject);
    procedure cNavioExit(Sender: TObject);
    procedure cBLChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mXML: TXMLDocument;
    mNodeDI,
    mNodeDoc,
    mNodeAD,
    mNodeMerc,
    mNodeProd,
    mNodeFabr,
    mNodeAcre,
    mNodeVal,
    mNodeICMS,
    mNodePgto: IXMLNode;
    mMoedas: Integer;
    mContaDebito,
    mContaCredito,
    mCodigoMoedas: String;
    mBrowserPag: Integer;
    mgLin:Integer;
    mTotalCIDEDev
   ,mTotalCIDERec: real;
  end;

var
  Utilitarios_ImportarSISCOMEXWEBXML: TUtilitarios_ImportarSISCOMEXWEBXML;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal, frmDMContab, frmJanela_Processamento, frmCadastro_Cotacao, frmCadastro_UnidadeMedida,
     frmCadastro_Majoracao, frmPesquisaGerais;

{$R *.dfm}

procedure TUtilitarios_ImportarSISCOMEXWEBXML.FormCreate(Sender: TObject);
begin
      if Menu_Principal.Height <= 768 then begin
         ScaleBy(93, 100);
      end;
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.FormShow(Sender: TObject);
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
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE isnull(Desativado, 0) = 0');
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
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(LTRIM(RTRIM(Tipo)) = :pTipo) AND (Processo_Fechamento IS NULL)');
           ProcessosDOC.ParamByName('pTipo').AsString := 'IMPORTAÇÃO';
           ProcessosDOC.Open;

           While not ProcessosDoc.Eof do begin
                 cProcesso.Items.Add(ProcessosDOCProcesso.AsString);
                 ProcessosDOC.Next;
           End;
           ProcessosDOC.First;

           Adicoes.SQL.Clear;
           Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (ISNULL(DI, '''') <> '''') AND (DI = :pDI)');
           Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.AsString;
           Adicoes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Pais <> ''1058'') AND (Pais IS NOT NULL) ORDER BY Nome');
           Fornecedores.Open;

           with tArmazem do begin
                sql.clear;
                sql.add('select Codigo');
                sql.Add('      ,Nome');
                sql.Add('      ,CNPJ');
                sql.Add('from Fornecedores');
                sql.add('where Ativo = 1');
                sql.add('and Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%ARMAZ%'')');
                sql.add('order by Nome');
                open;
           end;

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

           with Paises do begin
                sql.Clear;
                sql.Add('select * from Paises order by Codigo');
                Open;
           end;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 0) ORDER BY Descricao');
           PlanoContas.Open;

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
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais where isnull(Desativada, 0) = 0 ORDER BY Nome');
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
           ColWidths[0]  := 30;
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
           ColWidths[13] := 100;
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
           ColCount  := 38;

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
           Cells[35,0]   := 'CIDE Aliquota';
           ColWidths[35] := 60;
           Cells[36,0]   := 'CIDE Vlr.Devido';
           ColWidths[36] := 80;
           Cells[37,0]   := 'CIDE Vlr.Recoher';
           ColWidths[37] := 80;
      End;
      
      With gAcrescimo do begin
           FixedRows := 1;
           RowCount  := 2;
           ColCount  := 8;

           Cells[00,0]  := 'AD';
           ColWidths[0] := 25;
           Cells[01,0]  := 'Código';
           ColWidths[1] := 40;
           Cells[02,0]  := 'Descrição';
           ColWidths[2] := 435;
           Cells[03,0]  := 'Moeda(Cód)';
           ColWidths[3] := 67;
           Cells[04,0]  := 'Moeda(Nome)';
           ColWidths[4] := 145;
           Cells[05,0]  := 'Valor (ME)';
           ColWidths[5] := 100;
           Cells[06,0]  := 'Valor (R$)';
           ColWidths[6] := 100;
           Cells[07,0]  := 'Taxa';
           ColWidths[7] := 40;
      End;

      With gPagamentos do begin
           FixedRows := 1;
           RowCount  := 2;
           ColCount  := 10;

           Cells[00,0]  := 'Código';
           ColWidths[0] := 40;
           Cells[01,0]  := 'Classificação';
           ColWidths[1] := 72;
           Cells[02,0]  := 'Descrição';
           ColWidths[2] := 310;
           Cells[03,0]  := 'Ag';
           ColWidths[3] := 40;
           Cells[04,0]  := 'CC';
           ColWidths[4] := 60;
           Cells[05,0]  := 'Forma Pgto';
           ColWidths[5] := 130;
           Cells[06,0]  := 'Data';
           ColWidths[6] := 64;
           Cells[07,0]  := 'Juros';
           ColWidths[7] := 70;
           Cells[08,0]  := 'Multa';
           ColWidths[8] := 70;
           Cells[09,0]  := 'Valor';
           ColWidths[9] := 94;
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

      With gSeriais do begin
           FixedRows := 1;
           RowCount  := 2;
           ColCount  := 5;

           Cells[00,0]  := 'AD';
           ColWidths[0] := 30;
           Cells[01,0]  := 'Item';
           ColWidths[1] := 30;
           Cells[02,0]  := 'NCM';
           ColWidths[2] := 80;
           Cells[03,0]  := 'Produto';
           ColWidths[3] := 160;
           Cells[04,0]  := 'Serial/Chassi';
           ColWidths[4] := 400;
      End;

      Screen.Cursor := crDefault;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ('SISCOMEX_WEB', 'Arquivo'   , RemoveCaracter(cDI2.Text+'.xml', '', OpenDialog1.FileName));
      SetCurrentDir(ExtractFilePath(Application.ExeName));
      FecharTabelas(Dados, dmContab, nil, nil);
      Utilitarios_ImportarSISCOMEXWEBXML.Release;
      Utilitarios_ImportarSISCOMEXWEBXML := nil;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bAbrirClick(Sender: TObject);
begin
      If not OpenDialog1.Execute then abort;

      cXML.Text := OpenDialog1.FileName;
      AbrirDI;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.AbrirDI;
Var
    f,
    i,
    t,
    gLinha: integer;
    mFabr,
    mForn,
    mVlr,
    mVlrReal,
    mSoundex,
    mDescricao,
    mMoeda: String;
    mAchouPais: boolean;
    mAcrescimoME,
    mSoma,
    mAcrescimoReal: Real;
    aINI: TIniFile;
    mMarcaRef,
    mMarcaPO,
    mMarcaItem,
    mMarcaPOFech,
    preNome,
    mMarcaItemFech:String;
    mTUP, mAFRMM: TStringList;    
begin
      If not FileExists(RemoveCaracter('"', '', cXML.Text)) then begin
         Showmessage('Arquivo não encontrado!'+#13+#13+'Verifique se o caminho informado e o nome do arquivo estão corretos.');
         Abort;
      End;

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
           if mNodeDI.ChildNodes.FindNode('importadorNumero') <> nil then begin
              if EmpresasCNPJ.Value <> mNodeDI.ChildNodes['importadorNumero'].Text then begin
                 if MessageDlg('Atenção!'+#13+#13+'Este arquivo XML que você esta tentando importar não pertence a '+EmpresasRazao_Social.AsString+#13+#13+
                               ' este XML é da empresa: '+FormatMaskText('##.###.###/####-##;0', mNodeDI.ChildNodes['importadorNumero'].Text)+ ' - '+ mNodeDI.ChildNodes['importadorNome'].Text+#13+#13+
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
           cDI2.Text             := mNodeDI.ChildNodes['numeroDI'].text;

           // Carrega os dados do processo se ja existe processo com a DI do arquivo XML.
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE Numero_Declaracao = :pDI');
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
              cDA.Checked              := ProcessosDOCDA.Value;
              cExportador.KeyValue     := ProcessosDOCFornecedor.AsInteger;
              cBanco.KeyValue          := ProcessosDOCBanco.AsInteger;
              cValoracao.Checked       := ProcessosDOCRemover_Valoracao.AsBoolean;
              cSuspensao.Checked       := ProcessosDOCSuspensao_Impostos.AsBoolean;
              cReducaoPIS.Value        := ProcessosDOCReducao_PIS.Value;
              cReducaoCOFINS.Value     := ProcessosDOCReducao_COFINS.Value;
              cFreteNacional.Checked   := ProcessosDOCRemover_FreteNacBC.AsBoolean;
           end else begin
              cProcesso.Text := '';

              If mNodeDI.ChildNodes['operacaoFundap'].text = 'S' then
                 cIncentivo.KeyValue := 'FUNDAP'
              else
                 cIncentivo.KeyValue := Trim(EmpresasIncentivo_Fiscal.AsString);

              cProcesso.Enabled   := not EmpresasProcesso_Automatico.Value;
              //cModalidade.Enabled := True;
           End;

           cSituacao.Text        := mNodeDI.ChildNodes['situacaoEntregaCarga'].text;
           cURFDespachoCod.Text  := mNodeDI.ChildNodes['urfDespachoCodigo'].text;
           cURFDespachoNome.Text := mNodeDI.ChildNodes['urfDespachoNome'].text;
           cDataRegistro.Text    := Copy(mNodeDI.ChildNodes['dataRegistro'].text,7,2)+'/'+Copy(mNodeDI.ChildNodes['dataRegistro'].text,5,2)+'/'+Copy(mNodeDI.ChildNodes['dataRegistro'].text,1,4);
           cDataReg.Text         := cDataRegistro.Text;
           cDataDesembaraco.Text := Copy(mNodeDI.ChildNodes['dataDesembaraco'].text,7,2)+'/'+Copy(mNodeDI.ChildNodes['dataDesembaraco'].text,5,2)+'/'+Copy(mNodeDI.ChildNodes['dataDesembaraco'].text,1,4);
           cTipoDeclaracao.Text  := mNodeDI.ChildNodes['tipoDeclaracaoNome'].text;
           cImportador.Text      := FormatMaskText('##.###.###/####-##;0;', mNodeDI.ChildNodes['importadorNumero'].text);
           cOperacao.Text        := mNodeDI.ChildNodes['caracterizacaoOperacaoDescricaoTipo'].text;
           cClienteNome.Text     := mNodeDI.ChildNodes['caracterizacaoOperacaoNome'].text;
           cClienteCNPJ.Text     := FormatMaskText('##.###.###/####-##;0;', mNodeDI.ChildNodes['caracterizacaoOperacaoNumero'].text);
                                                                               
           mNodeDoc := mNodeDI.ChildNodes.FindNode('documentoInstrucaoDespacho');
           mNodeDoc.ChildNodes.First;

           if trim(mNodeDoc.ChildNodes['codigoTipoDocumentoDespacho'].text) = '01' then cFatura.Text       := mNodeDoc.ChildNodes['numeroDocumentoDespacho'].text;
           if trim(mNodeDoc.ChildNodes['codigoTipoDocumentoDespacho'].text) = '28' then cConhecimento.Text := mNodeDoc.ChildNodes['numeroDocumentoDespacho'].text;
           if trim(mNodeDoc.ChildNodes['codigoTipoDocumentoDespacho'].text) = '29' then cRomaneio.Text     := mNodeDoc.ChildNodes['numeroDocumentoDespacho'].text;
           mNodeDoc := mNodeDoc.NextSibling;
           if trim(mNodeDoc.ChildNodes['codigoTipoDocumentoDespacho'].text) = '01' then cFatura.Text       := mNodeDoc.ChildNodes['numeroDocumentoDespacho'].text;
           if trim(mNodeDoc.ChildNodes['codigoTipoDocumentoDespacho'].text) = '28' then cConhecimento.Text := mNodeDoc.ChildNodes['numeroDocumentoDespacho'].text;
           if trim(mNodeDoc.ChildNodes['codigoTipoDocumentoDespacho'].text) = '29' then cRomaneio.Text     := mNodeDoc.ChildNodes['numeroDocumentoDespacho'].text;
           mNodeDoc := mNodeDoc.NextSibling;
           if trim(mNodeDoc.ChildNodes['codigoTipoDocumentoDespacho'].text) = '01' then cFatura.Text       := mNodeDoc.ChildNodes['numeroDocumentoDespacho'].text;
           if trim(mNodeDoc.ChildNodes['codigoTipoDocumentoDespacho'].text) = '28' then cConhecimento.Text := mNodeDoc.ChildNodes['numeroDocumentoDespacho'].text;
           if trim(mNodeDoc.ChildNodes['codigoTipoDocumentoDespacho'].text) = '29' then cRomaneio.Text     := mNodeDoc.ChildNodes['numeroDocumentoDespacho'].text;

           cConhecimentoCarga.Text := mNodeDI.ChildNodes['conhecimentoCargaId'].text;
           cDataBL.Text            := Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,7,2)+'/'+Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,5,2)+'/'+Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,1,4);
           cProcedencia.text       := mNodeDI.ChildNodes['cargaPaisProcedenciaNome'].text;
           cURFEntrada.text        := mNodeDI.ChildNodes['cargaUrfEntradaNome'].text;
           cDataChegada.Text       := Copy(mNodeDI.ChildNodes['cargaDataChegada'].text,7,2)+'/'+Copy(mNodeDI.ChildNodes['cargaDataChegada'].text,5,2)+'/'+Copy(mNodeDI.ChildNodes['cargaDataChegada'].text,1,4);

           cPesoBruto.Text           := mNodeDI.ChildNodes['cargaPesoBruto'].text;
           cPesoBruto.Value          := cPesoBruto.Value / 100000;
           cPesoLiquido.Text         := mNodeDI.ChildNodes['cargaPesoLiquido'].text;
           cPesoLiquido.Value        := cPesoLiquido.Value / 100000;
           cRecintoAduaneiroCod.text := mNodeDI.ChildNodes['armazenamentoRecintoAduaneiroCodigo'].text;
           cRecintoAduaneiro.text    := mNodeDI.ChildNodes['armazenamentoRecintoAduaneiroNome'].text;
           cSetor.text               := mNodeDI.ChildNodes['armazenamentoSetor'].text;

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
           mNodeDoc.ChildNodes.First;
           
           if mNodeDoc.ChildNodes.FindNode('quantidadeVolume') <> nil then
              cVolumes.Value := StrtoInt(mNodeDoc.ChildNodes['quantidadeVolume'].Text);
              
           cEspecie.text := mNodeDoc.ChildNodes['nomeEmbalagem'].text;
           if trim(mNodeDI.ChildNodes['freteTotalMoeda'].text) <> '' then begin
              cFreteME.Value   := StrtoFloat(mNodeDI.ChildNodes['freteTotalMoeda'].text)/100;
              cFreteReal.Value := StrtoFloat(mNodeDI.ChildNodes['freteTotalReais'].text)/100;
           end;
           if trim(mNodeDI.ChildNodes['seguroTotalMoedaNegociada'].text) <> '' then begin
              cSeguroME.Value   := StrtoFloat(mNodeDI.ChildNodes['seguroTotalMoedaNegociada'].text)/100;
              cSeguroReal.Value := StrtoFloat(mNodeDI.ChildNodes['seguroTotalReais'].text)/100;
           end;
           cFreteMoedaCodigo.Text  := mNodeDI.ChildNodes['freteMoedaNegociadaCodigo'].text;
           cFreteMoedaNome.Text    := mNodeDI.ChildNodes['freteMoedaNegociadaNome'].text;
           cSeguroMoedaNome.Text   := mNodeDI.ChildNodes['seguroMoedaNegociadaNome'].text;
           cViaTransporte.text     := AnsiUpperCase(RemoveAcentos(mNodeDI.ChildNodes['viaTransporteNome'].text));
           cViaCodigo.text         := AnsiUpperCase(RemoveAcentos(mNodeDI.ChildNodes['viaTransporteCodigo'].text));
           cTransportador.text     := mNodeDI.ChildNodes['viaTransporteNomeTransportador'].text;
           cNomeEmbarcacao.text    := mNodeDI.ChildNodes['viaTransporteNomeVeiculo'].text;
           cManifestoCarga.text    := mNodeDI.ChildNodes['documentoChegadaCargaNumero'].text;
           cLocalEmbarque.text     := mNodeDI.ChildNodes['conhecimentoCargaEmbarqueLocal'].text;
           cDataEmbarque.Text      := Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,7,2)+'/'+Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,5,2)+'/'+Copy(mNodeDI.ChildNodes['conhecimentoCargaEmbarqueData'].text,1,4);
           cTipoConhecimento.text  := mNodeDI.ChildNodes['conhecimentoCargaTipoNome'].text;
           cSeguroMoedaCodigo.Text := mNodeDI.ChildNodes['seguroMoedaNegociadaCodigo'].text;
           if cSeguroMoedaCodigo.Text = '000' then cSeguroMoedaCodigo.Clear;
           cLocalDesembCod.Text    := mNodeDI.ChildNodes['cargaUrfEntradaCodigo'].text;
           cLocalDesembNome.Text   := mNodeDI.ChildNodes['cargaUrfEntradaNome'].text;
           if trim(mNodeDI.ChildNodes['canalSelecaoParametrizada'].text) <> '' then begin
              cCanal.ItemIndex        := StrtoInt(mNodeDI.ChildNodes['canalSelecaoParametrizada'].text)-1;
           end;   
           cPaisProcedCod.Text := mNodeDI.ChildNodes['cargaPaisProcedenciaCodigo'].text;

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
           If trim(mNodeDI.ChildNodes['freteTotalDolares'].Text) <> '' then begin
              If StrValor(mNodeDI.ChildNodes['freteTotalDolares'].Text) > 0 then begin
                 mMoeda := mNodeDI.ChildNodes['freteMoedaNegociadaCodigo'].Text;
                 Moedas.Locate('Codigo', mMoeda, [loCaseInsensitive]);

                 mVlrReal := FormatFloat('##0.00', StrtoFloat(mNodeDI.ChildNodes['freteTotalReais'].Text)/100);
                 mVlr     := FormatFloat('##0.00', StrtoFloat(mNodeDI.ChildNodes['freteTotalDolares'].Text)/100);

                 cTaxas.Lines.Add('FRETE    :'+Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value))) + PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat(',##0.00000', (StrtoFloat(mVlrReal) / StrtoFloat(mVlr)) ) );

                 If Cotacao.Locate('Moeda;Data',VarArrayOf([StrtoInt(mMoeda), cDataRegistro.Date]), [loCaseInsensitive]) = False then
                    Cotacao.Append
                 else
                    Cotacao.Edit;
                            CotacaoMoeda.Value := StrtoInt(mMoeda);
                            CotacaoData.Value  := cDataRegistro.Date;
                            CotacaoValor.Value := Roundto(StrtoFloat(mVlrReal) / StrtoFloat(mVlr), -4);
                    Cotacao.Post;
              End;
           end;

           // Cotação da moeda utilizada para o Total Seguro.
           if trim(mNodeDI.ChildNodes['seguroTotalDolares'].Text) <> '' then begin
              If StrtoFloat(mNodeDI.ChildNodes['seguroTotalDolares'].Text) > 0 then begin
                 Moedas.Locate('Codigo', mMoeda, [loCaseInsensitive]);

                 cTaxas.Lines.Add('SEGURO   :'+Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value))) + PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat(',##0.00000', cSeguroReal.Value/cSeguroME.Value ));
                 If Cotacao.Locate('Moeda;Data',VarArrayOf([StrtoInt(mMoeda), cDataRegistro.Date]), [loCaseInsensitive]) = False then
                    Cotacao.Append
                 else
                    Cotacao.Edit;
                         CotacaoMoeda.Value := StrtoInt(mMoeda);
                         CotacaoData.Value  := cDataRegistro.Date;
                         CotacaoValor.Value := Roundto(cSeguroReal.Value/cSeguroME.Value, -4);
                    Cotacao.Post;
              End;
           end;

           mMoeda := '';
           mForn  := '';
           i      := 0;

           cFornecedoresCheck.Items.Clear;
           cFornecedoresAchados.Clear;
           gFornecedores.RowCount := 2;

           cComplemento.Clear;
           cComplemento.Lines.Add(RemoveCaracter('<informacaoComplementar>', '', mNodeDI.ChildNodes['informacaoComplementar'].XML));

           // Pega o valor do TUP dentro das informações complementares e coloca no stringlist.
           cTUPME.text   := '0.00';
           cTUPReal.text := '0.00';
           mTUP          := TStringList.Create;
           if pos('TUP', cComplemento.lines.Text) > 0 then begin
              for t := 0 to cComplemento.Lines.Count do begin
                  if pos('TUP', cComplemento.lines[t]) > 0 then begin
                     mTUP := QuebraString(cComplemento.lines[t], ' ');
                     break;
                  end;
              end;
              if mTUP.Count > 0 then begin
                 // Limpas as linhas sem valor.
                 for t := 0 to pred(mTUP.Count) do begin
                     if ApenasNumeros(mTUP[t]) = '' then mTUP[t] := '';
                 end;
                 for t := 0 to pred(mTUP.Count) do begin
                     if (trim(mTUP[t]) <> '') and (cTUPME.Text = '') then begin
                        cTUPME.text := mTUP[t];
                        mTUP[t]     := '';
                     end;
                     if trim(mTUP[t]) <> '' then begin
                        cTUPReal.text := mTUP[t];
                     end;
                 end;
              end;
           end;
           // Pega o valor do AFRMM dentro das informações complementares e coloca no stringlist.
           cAFRMMReal.text := '0.00';
           mAFRMM          := TStringList.Create;
           if pos('AFRMM', cComplemento.lines.Text) > 0 then begin
              for t := 0 to cComplemento.Lines.Count do begin
                  if pos('AFRMM', cComplemento.lines[t]) > 0 then begin
                     mAFRMM := QuebraString(cComplemento.lines[t], ' ');
                     break;
                  end;
              end;
              if mAFRMM.Count > 0 then begin
                 // Limpas as linhas sem valor.
                 for t := 0 to pred(mAFRMM.Count) do begin
                     if ApenasNumeros(mAFRMM[t]) = '' then mAFRMM[t] := '';
                 end;
                 for t := 0 to pred(mAFRMM.Count) do begin
                     if (trim(mAFRMM[t]) <> '') and (cAFRMMReal.Text = '') then begin
                        cAFRMMReal.text := mAFRMM[t];
                        mAFRMM[t]       := '';
                     end;
                 end;
              end;
           end;
           if trim(mNodeDI.ChildNodes['freteEmTerritorioNacional'].text) <> '' then
              cFreteNacMe.Value := StrtoFloat(mNodeDI.ChildNodes['freteEmTerritorioNacional'].text)/100;

           //Carregando as Adições do arquivo XML.
           With gAdicoes do begin
                RowCount := 2;

                mNodeAD  := mNodeDI.ChildNodes.FindNode('adicao');
                mNodeAD.ChildNodes.First;

                While mNodeAD <> nil do begin
                      If mNodeAD.ChildNodes['numeroAdicao'].Text <> '' then begin
                         Cells[00, RowCount-1] := mNodeAD.ChildNodes['numeroAdicao'].Text;
                         Cells[01, RowCount-1] := mNodeAd.ChildNodes['dadosMercadoriaCodigoNcm'].Text;

                         // COFINS.
                         if trim(mNodeAD.ChildNodes['pisCofinsBaseCalculoValor'].Text) <> '' then begin
                            Cells[21, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['pisCofinsBaseCalculoValor'].Text)/100);
                            Cells[02, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['cofinsAliquotaAdValorem'].Text)/100);
                            Cells[03, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['cofinsAliquotaValorRecolher'].Text)/100);
                            cTotalCOFINSMaj.Value := cTotalCOFINSMaj.Value + StrtoFloat(mNodeAD.ChildNodes['cofinsAliquotaValorRecolher'].Text)/100;

                            // Calculo do COFINS2 c/alíquota basica.
                            Majoracao.SQL.Clear;
                            Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''M'' AND Descricao = ''COFINS'' AND Majorada = :pAliquota AND Modalidade = :pModal');
                            Majoracao.ParamByName('pAliquota').AsFloat := StrValor(Cells[2, RowCount-1]);
                            Majoracao.ParamByName('pModal').AsInteger  := cModalidade.KeyValue;
                            Majoracao.Open;

                            If Majoracao.RecordCount > 0 then begin
                               cTotalCOFINSNF.Value  := cTotalCOFINSNF.Value + Roundto((StrValor(Cells[21, RowCount-1]) * MajoracaoEntrada.AsFloat), -2) /100;
                               Cells[24, RowCount-1] := FormatFloat('##0.00', MajoracaoEntrada.AsFloat);
                               Cells[25, RowCount-1] := FormatFloat('##0.00', MajoracaoSaida.AsFloat);
                            end else begin
                               cTotalCOFINSNF.Value  := cTotalCOFINSNF.Value + StrValor(Cells[3, RowCount-1]);
                               Cells[24, RowCount-1] := Cells[02, RowCount-1];
                               Cells[25, RowCount-1] := Cells[02, RowCount-1];
                            End;

                            // PIS.
                            Cells[04, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['pisPasepAliquotaAdValorem'].Text)/100);
                            Cells[05, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['pisPasepAliquotaValorRecolher'].Text)/100);

                            cTotalPISMaj.Value := cTotalPISMaj.Value + StrtoFloat(mNodeAD.ChildNodes['pisPasepAliquotaValorRecolher'].Text)/100;

                            // Calculo do PIS2 c/alíquota basica.
                            Majoracao.SQL.Clear;
                            Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''M'' AND Descricao = ''PIS'' AND Majorada = :pAliquota AND Modalidade = :pModal');
                            Majoracao.ParamByName('pAliquota').AsFloat := StrValor(Cells[4, RowCount-1]);
                            Majoracao.ParamByName('pModal').AsInteger  := cModalidade.KeyValue;
                            Majoracao.Open;

                            If Majoracao.RecordCount > 0 then begin
                               cTotalPISNF.Value := cTotalPISNF.Value + Roundto( (StrValor(Cells[21, RowCount-1]) * MajoracaoEntrada.AsFloat), -2) /100;
                               Cells[22, RowCount-1] := FormatFloat('##0.00', MajoracaoEntrada.AsFloat);
                               Cells[23, RowCount-1] := FormatFloat('##0.00', MajoracaoSaida.AsFloat);
                            end else begin
                               cTotalPISNF.Value := cTotalPISNF.Value + StrValor(Cells[5, RowCount-1]);
                               Cells[22, RowCount-1] := Cells[04, RowCount-1];
                               Cells[23, RowCount-1] := Cells[04, RowCount-1];
                            End;
                         end;

                         // II.
                         Cells[06, RowCount-1] := FormatFloat('##0.00', 0);
                         Cells[07, RowCount-1] := FormatFloat('##0.00', 0);
 
                         if Trim(mNodeAD.ChildNodes['iiAliquotaValorRecolher'].Text) <> '' then begin
                            if (StrtoFloat(mNodeAD.ChildNodes['iiAliquotaValorRecolher'].Text)/100) > 0 then begin
                               Cells[06, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['iiAliquotaAdValorem'].Text)/100);
                               Cells[07, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['iiAliquotaValorCalculado'].Text)/100);
                            end;
                            cTotalII.Value := cTotalII.Value + StrtoFloat(mNodeAD.ChildNodes['iiAliquotaValorCalculado'].Text)/100;
                         end;

                         // IPI.
                         Cells[08, RowCount-1] := FormatFloat('##0.00', 0);
                         Cells[09, RowCount-1] := FormatFloat('##0.00', 0);
                         if Trim(mNodeAD.ChildNodes['ipiAliquotaAdValorem'].Text) <> '' then begin
                            Cells[08, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['ipiAliquotaAdValorem'].Text)/100);
                            Cells[09, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['ipiAliquotaValorDevido'].Text)/100);
                            cTotalIPI.Value := cTotalIPI.Value + StrtoFloat(mNodeAD.ChildNodes['ipiAliquotaValorDevido'].Text)/100;
                         end;

                         // Peso Líquido.
                         Cells[10, RowCount-1] := FormatFloat(',##0.00000', StrtoFloat(mNodeAD.ChildNodes['dadosMercadoriaPesoLiquido'].Text)/100000);

                         // INCOTERM.
                         Cells[11, RowCount-1] := mNodeAD.ChildNodes['condicaoVendaIncoterm'].Text;

                         // Moeda.
                         Cells[12, RowCount-1] := mNodeAD.ChildNodes['condicaoVendaMoedaCodigo'].Text;
                         Cells[13, RowCount-1] := mNodeAD.ChildNodes['condicaoVendaMoedaNome'].Text;

                         // Fornecedor.
                         Cells[14, RowCount-1] := mNodeAD.ChildNodes['fornecedorNome'].Text;

                         // País de procedência da mercadoria.
                         Cells[15, RowCount-1] := mNodeAD.ChildNodes['paisAquisicaoMercadoriaCodigo'].Text;
                         Cells[16, RowCount-1] := mNodeAD.ChildNodes['paisAquisicaoMercadoriaNome'].Text;

                         // Zera o II para paises que fazem parte do Mercosul
                         if Paises.FieldByName('Mercosul').AsBoolean then begin
                            cTotalII.Value := 0;
                         end;

                         // Moeda / Cotação da moeda utilizada para o Total FOB.
                         If mMoeda <> mNodeAD.ChildNodes['condicaoVendaMoedaCodigo'].Text then begin
                            mMoeda := mNodeAD.ChildNodes['condicaoVendaMoedaCodigo'].Text;
                            Moedas.Locate('Codigo', mMoeda, [loCaseInsensitive]);

                            mVlrReal := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['condicaoVendaValorReais'].Text)/100);
                            mVlr     := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['condicaoVendaValorMoeda'].Text)/100);

                            cTaxas.Lines.Add('FOB      :'+ Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value))) + PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat(',##0.00000', (StrtoFloat(mVlrReal) / StrtoFloat(mVlr)) ));

                            If Cotacao.Locate('Moeda;Data',VarArrayOf([StrtoInt(mMoeda), cDataRegistro.Date]), [loCaseInsensitive]) = False then
                               Cotacao.Append
                            else
                               Cotacao.Edit;
                                       CotacaoMoeda.Value := StrtoInt(mMoeda);
                                       CotacaoData.Value  := cDataRegistro.Date;
                                       CotacaoValor.Value := Roundto(StrtoFloat(mVlrReal) / StrtoFloat(mVlr), -4);
                               Cotacao.Post;
                         End;

                         // Pega todos os fornecedores do arquivo XML e Relaciona com os fornecedores do sistema.
                         If mNodeAD.ChildNodes['fornecedorNome'].Text <> mForn then begin
                            mForn := mNodeAD.ChildNodes['fornecedorNome'].Text;
                            cFornecedoresCheck.Items.Add(mForn);

                            gFornecedores.Cells[00, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['fornecedorNome'].Text;
                            gFornecedores.Cells[01, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['fornecedorCidade'].Text;
                            gFornecedores.Cells[02, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['fornecedorEstado'].Text;
                            gFornecedores.Cells[03, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['fornecedorLogradouro'].Text;
                            gFornecedores.Cells[04, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['fornecedorNumero'].Text;
                            gFornecedores.Cells[05, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['fornecedorComplemento'].Text;
                            gFornecedores.Cells[06, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['paisAquisicaoMercadoriaCodigo'].Text;
                            gFornecedores.Cells[08, gFornecedores.RowCount-1] := mNodeAD.ChildNodes['numeroAdicao'].Text;
                            cFornecedoresCheck.Checked[i] := True;
                            if Fornecedores.Locate('Nome', Copy(mForn, 1, 60) , [loCaseInsensitive]) then begin
                               cFornecedoresCheck.Checked[i]     := False;
                               cFornecedoresCheck.ItemEnabled[i] := False;
                               cFornecedoresAchados.Lines.Add(FornecedoresNome.Value);
                               gFornecedores.Cells[7, gFornecedores.RowCount-1] := FornecedoresCodigo.AsString;
                            end;
                            
                            gFornecedores.RowCount := gFornecedores.RowCount + 1;
                            Inc(i);
                         End;

                         // Alíquota e valor do ICMS.
                         Cells[19, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['pisCofinsBaseCalculoAliquotaICMS'].Text)/100);

                         // Descricao da NCM.
                         Cells[26, RowCount-1] := mNodeAD.ChildNodes['dadosMercadoriaNomeNcm'].Text;

                         // Alíquota reduzida do II.
                         Cells[27, RowCount-1] := FormatFloat('##0.00', 0);
                         Cells[28, RowCount-1] := FormatFloat('##0.00', 0);
                         if Trim(mNodeAD.ChildNodes['iiAliquotaReduzida'].Text) <> '' then begin
                            Cells[27, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['iiAliquotaReduzida'].Text)/100);
                            Cells[28, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['iiAliquotaAcordo'].Text)/100);
                         end;
                         Cells[29, RowCount-1] := FormatFloat('##0.00', 0);
                         if Trim(mNodeAD.ChildNodes['ipiAliquotaReduzida'].Text) <> '' then begin
                            Cells[29, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['ipiAliquotaReduzida'].Text)/100);
                         end;   
                         Cells[30, RowCount-1] := mNodeAD.ChildNodes['dadosMercadoriaMedidaEstatisticaUnidade'].Text;
                         Cells[31, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['valorTotalCondicaoVenda'].Text)/10000000);

                         // Pegando os valores do CIDE.
                         Cells[35, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['cideValorAliquotaEspecifica'].Text)/100000);
                         Cells[36, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['cideValorDevido'].Text)/100);
                         Cells[37, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodeAD.ChildNodes['cideValorRecolher'].Text)/100);

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
                    Cells[17, i] := FormatFloat('##0.00', 0);
                    Cells[18, i] := FormatFloat('##0.00', 0);
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

                cFreteNacReal.Value := cFreteNacMe.Value * cFreteTaxa.Value;
                cAFRMMME.value := cAFRMMReal.value / cFOBTaxa.Value;

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
                         Cells[17, i] := FormatFloat('##0.00', mAcrescimoReal/cFobTaxa.Value);
                         Cells[18, i] := FormatFloat('##0.00', mAcrescimoReal);
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
                            mNodeProd := mNodeMerc.ChildNodes.FindNode('descricaoMercadoria');
                            If mNodeProd <> nil then begin
                               Cells[0, RowCount-1] := mNodeAd.ChildNodes['numeroAdicao'].Text;
                               Cells[1, RowCount-1] := mNodeMerc.ChildNodes['numeroSequencialItem'].Text;
                               Cells[2, RowCount-1] := mNodeAd.ChildNodes['dadosMercadoriaCodigoNcm'].Text;
                               Cells[3, RowCount-1] := Trim(mNodeMerc.ChildNodes['descricaoMercadoria'].Text);
                               Cells[4, RowCount-1] := Trim(mNodeMerc.ChildNodes['unidadeMedida'].Text);
                               Cells[5, RowCount-1] := FormatFloat('##0.000', StrtoFloat(mNodeMerc.ChildNodes['quantidade'].Text)/100000);
                               Cells[6, RowCount-1] := FormatFloat('##0.0000000', Roundto(StrtoFloat(mNodeMerc.ChildNodes['valorUnitario'].Text)/10000000, -6) );
                               Cells[8, RowCount-1] := mNodeAd.ChildNodes['fornecedorNome'].Text;

                               cQuantidade.Value := cQuantidade.Value + StrValor(Cells[5, RowCount-1]);

                               cDumping.Items.Add(PoeZero(3, StrtoInt(mNodeAd.ChildNodes['numeroAdicao'].Text))+'/'+PoeZero(4, StrtoInt(mNodeMerc.ChildNodes['numeroSequencialItem'].Text))+ ': '+mNodeMerc.ChildNodes['descricaoMercadoria'].Text);

                               // Pega código de referência, PO e Item do produto na descrição caso esteja informada a mascara em configurações do sistema processos.
                               mDescricao     := Trim(mNodeMerc.ChildNodes['descricaoMercadoria'].Text);
                               mMarcaRef      := Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString);
                               mMarcaPO       := Trim(ConfiguracaoSISCOMEX_MascaraPO.AsString);
                               mMarcaItem     := Trim(ConfiguracaoSISCOMEX_MascaraItem.AsString);
                               mMarcaPOFech   := Trim(ConfiguracaoSISCOMEX_MascaraPOFech.AsString);
                               mMarcaItemFech := Trim(ConfiguracaoSISCOMEX_MascaraItemFech.AsString);

                               if mMarcaRef <> '' then begin
                                  if mMarcaRef = '*' then begin
                                     Cells[13, RowCount-1] := Trim(PegaParte(mDescricao, '', mMarcaRef));
                                     //Cells[16, RowCount-1] := Trim(PegaParte(mDescricao, '', mMarcaRef));
                                  end else begin
                                     // Referencia esta no inicio da descrição da mercadoria.
                                     if ConfiguracaoSISCOMEX_MascaraPosicao.AsInteger = 1 then begin
                                        Cells[13, RowCount-1] := Trim(PegaParte(mDescricao, '', mMarcaRef));
                                        //Cells[16, RowCount-1] := Trim(PegaParte(mDescricao, '', mMarcaRef));
                                     end else begin
                                        // Referencia esta no final da descrição da mercadoria.
                                        Cells[13, RowCount-1] := Trim(PegaParte(mDescricao, mMarcaRef, ''));
                                        //Cells[16, RowCount-1] := Trim(PegaParte(mDescricao, mMarcaRef, ''));
                                     end;
                                  end;
                               end;

                               // Pegando o numero do PO.
                               if mMarcaPO <> '' then begin
                                  Cells[18, RowCount-1] := Trim(PegaParte(mDescricao, mMarcaPO, mMarcaPOFech));
                                  mDescricao            := RemoveCaracter(mMarcaPO+Cells[18, RowCount-1]+mMarcaPOFech, '', mDescricao);
                               end;
                               // Pegando o numero do item.
                               if mMarcaItem <> '' then begin
                                  Cells[19, RowCount-1] := PegaParte(mDescricao, mMarcaItem, mMarcaItemFech);
                                  mDescricao            := RemoveCaracter(mMarcaItem+Cells[19, RowCount-1]+mMarcaItemFech, '', mDescricao);
                               end;

                               if Cells[19, RowCount-1] = '' then Cells[19, RowCount-1] := '0';

                               mDescricao := RemoveCaracter(#10, '', mDescricao);
                               mDescricao := RemoveCaracter(#12, '', mDescricao);
                               mDescricao := RemoveCaracter(#13, '', mDescricao);
                               mDescricao := AnsiToUtf8(mDescricao);
                               //Cells[03, RowCount-1] := mDescricao;
                               Cells[03, RowCount-1] := EliminaEspaco(mDescricao);

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
                       Cells[17,i] := gAdicoes.Cells[08, gLinha];
                       Cells[11,i] := gAdicoes.Cells[27, gLinha];
                       Cells[12,i] := gAdicoes.Cells[28, gLinha];

                       If (ConfiguracaoRateio_Valoracao.AsString = 'V') or (Invoice.RecordCount = 0) then begin
                           Cells[7, i] := FormatFloat('##0.00000000', Roundto( (StrValor(gAdicoes.Cells[17, gLinha]) / StrValor(gAdicoes.Cells[31, gLinha])) * StrValor(Cells[6, i]), -6));
                       end else begin
                           Cells[7, i] := FormatFloat('##0.00000000', Roundto( (StrValor(gAdicoes.Cells[17, gLinha]) / StrValor(gAdicoes.Cells[10, gLinha])) * StrValor(Cells[6, i]), -6));
                       End;
                    End;
                End;
           End;

           // Converte o valor total FOB das adicões para Real e totaliza as quantidades das Adições.
           With gAdicoes do begin
                For i := 1 to RowCount -1 do begin
                    Cells[32, i] := FormatFloat('##0.00', (StrValor(Cells[31, i]) * cFOBTaxa.Value));
                    mSoma := 0;
                    For f := 1 to gProdutos.RowCount -1 do begin
                        If gProdutos.Cells[0, f] = gAdicoes.Cells[0, i] then begin
                           mSoma := mSoma + StrValor(gProdutos.Cells[5, f]);
                        End;
                    End;
                    Cells[33, i] := FormatFloat('##0.000', mSoma);
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
                               Cells[5, RowCount-1] := FormatFloat('##0.00', (StrValor(mNodeAcre.ChildNodes['valorReais'].Text)/100)/cFOBTaxa.Value);
                               Cells[6, RowCount-1] := FormatFloat('##0.00', StrValor(mNodeAcre.ChildNodes['valorReais'].Text)/100);
                               If StrValor(Cells[5, RowCount-1]) > 0 then
                                  Cells[7, RowCount-1] := FormatFloat('##0.0000', StrValor(Cells[6, RowCount-1])/StrValor(Cells[5, RowCount-1]))
                               else
                                  Cells[7, RowCount-1] := FormatFloat('##0.0000', 0);

                               // Cotação das moedas da valoração.
                               mMoeda := Cells[3, RowCount-1];
                               Moedas.Locate('Codigo', mMoeda, [loCaseInsensitive]);

                               If Pos('ACRÉSCIMO:'+MoedasNome.Value, cTaxas.Text) = 0 then begin
                                  If StrValor(Cells[5, RowCount-1]) > 0 then begin
                                     cTaxas.Lines.Add('ACRÉSCIMO:'+ Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value))) + PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat(',##0.00000', StrValor(Cells[5, RowCount-1]) / StrValor(Cells[6, RowCount-1]) ));

                                     If Cotacao.Locate('Moeda;Data',VarArrayOf([StrtoInt(mMoeda), cDataRegistro.Date]), [loCaseInsensitive]) = False then
                                        Cotacao.Append;
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
           if cAFRMMReal.Value = 0 then begin
              cAFRMMReal.Value := 0;
              if Strtoint(cViaCodigo.Text) = 1 then begin
                 cAFRMMReal.Value := Percentual(cFreteReal.Value + cAcrescimoReal.Value + cTUPReal.Value, ConfiguracaoAFRMM_Percentual.AsFloat) + ConfiguracaoAFRMM_Taxa.AsCurrency + ConfiguracaoAFRMM_Tarifa.AsCurrency;
              end;
           end;

           // Carregando os pagamentos.
           With gPagamentos do begin
                RowCount := 2;
                gPagamentos.Rows[1].Clear;

                mNodePgto  := mNodeDI.ChildNodes.FindNode('pagamento');
                if mNodePgto <> nil then begin
                   mNodePgto.ChildNodes.First;

                   While mNodePgto <> nil do begin
                         If mNodePgto.ChildNodes['codigoReceita'].Text <> '' then begin
                            Cells[0, RowCount-1] := mNodePgto.ChildNodes['codigoReceita'].Text;

                            With Dados do begin
                                 // Indentifica os códigos da classificação financeira.
                                 tPesquisa2.SQL.Clear;
                                 if not ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
                                    tPesquisa2.SQL.Add('SELECT Codigo, Descricao FROM ClassificacaoFinanceira WHERE Codigo_RFB = :pCodigo AND Modalidade_Importacao = :pModal AND isnull(Desativada,0) = 0');
                                 end else begin
                                    tPesquisa2.SQL.Add('SELECT Codigo, Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo_RFB = :pCodigo AND Modalidade_Importacao = :pModal AND isnull(Desativada, 0) = 0');
                                 end;
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
                            Cells[7, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodePgto.ChildNodes['valorJurosEncargos'].Text)/100);
                            Cells[8, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodePgto.ChildNodes['valorMulta'].Text)/100);
                            Cells[9, RowCount-1] := FormatFloat('##0.00', StrtoFloat(mNodePgto.ChildNodes['valorReceita'].Text)/100);

                            RowCount := RowCount + 1;
                         End;
                         mNodePgto := mNodePgto.NextSibling;
                   end;
                end;

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
                mNodeICMS.ChildNodes.First;

                While mNodeICMS <> nil do begin
                      If mNodeICMS.ChildNodes['codigoTipoRecolhimentoIcms'].Text <> '' then begin
                         Cells[0, RowCount] := mNodeICMS.ChildNodes['codigoTipoRecolhimentoIcms'].Text;

                         With Dados do begin
                              // Indentifica os códigos da classificação financeira.
                              tPesquisa2.SQL.Clear;
                              if not ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
                                 tPesquisa2.SQL.Add('SELECT Codigo, Descricao FROM ClassificacaoFinanceira WHERE Codigo_RFB = :pCodigo AND Modalidade_Importacao = :pModal AND Desativada <> 1');
                              end else begin
                                 tPesquisa2.SQL.Add('SELECT Codigo, Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo_RFB = :pCodigo AND Modalidade_Importacao = :pModal AND Desativada <> 1');
                              end;
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
                         Cells[7, RowCount] := FormatFloat('##0.00', 0);
                         Cells[8, RowCount] := FormatFloat('##0.00', 0);
                         Cells[9, RowCount] := FormatFloat('##0.00', StrtoFloat(mNodeICMS.ChildNodes['valorTotalIcms'].Text)/100);

                         cTotalICMS.Value := cTotalICMS.Value + StrValor(Cells[9, RowCount]);

                         RowCount := RowCount + 1;
                      End;
                      mNodeICMS:= mNodeICMS.NextSibling;
                End;
           End;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE isnull(Desativado, 0) = 0 AND Modalidade = :pModal');
           Produtos.ParamByName('pModal').AsInteger := cModalidade.KeyValue;
           Produtos.Open;

           // Carregando os Seriais/Chassis importados anteriormente.
           DISeriais.SQL.Clear;
           DISeriais.SQL.Add('SELECT * FROM DISeriais WHERE DI = :pDI ORDER BY Registro');
           DISeriais.ParamByName('pDI').AsString := cDI2.Text;
           DISeriais.Open;

           i := 1;
           while not DISeriais.Eof do begin
                 with gSeriais do begin
                      Cells[0,i] := DISeriaisAdicao.AsString;
                      Cells[1,i] := DISeriaisItem.AsString;
                      Cells[2,i] := DISeriaisNCM.AsString;
                      Cells[3,i] := DISeriaisProduto_Codigo.AsString;
                      Cells[4,i] := DISeriaisSerial.AsString;
                      RowCount := RowCount + 1;
                 end;
                 DISeriais.Next;
                 Inc(i);
           end;
           if DISeriais.RecordCount > 0 then begin
              gSeriais.RowCount   := gSeriais.RowCount -1;
              cTotalSeriais.Value := gSeriais.RowCount -1;
           end;

           // Pegando Navio e BL
           with ControleNavios do begin
                sql.Clear;
                sql.Add('select * from ControleNavios where Status <> ''ENCERRADO'' ');
                Open;
           end;
           with tTmp do begin
                sql.clear;
                sql.add('select Navio, BL from ControleNaviosBl where DI = :pDI');
                ParamByName('pDI').AsString := cDI2.Text;
                open;
                cNavio.KeyValue := fieldbyname('Navio').value;
                cBL.KeyValue    := fieldbyname('BL').value;
           end;
           with tBL do begin
                sql.Clear;
                sql.Add('select Navio');
                sql.add('      ,Navio_Nome = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)');
                sql.Add('      ,BL');
                sql.Add('      ,Laudo');
                sql.Add('      ,Data_Emissao');
                sql.add('from ControleNaviosBL cnb');
                sql.add('where cnb.Navio = :pNavio');
                sql.add('and BL not in(select Numero_BL from ProcessosDocumentos where Navio_Ordem = :pNavio)');
                ParamByName('pNavio').Asinteger := tTmp.fieldbyname('Navio').asinteger;
                //sql.savetofile('c:\temp\Importacao_DI_Navios_BL.sql');
                Open;
           end;
      End;

      bVerificar.Enabled := true;

      //Carrega relacionamentos feitos anteriormente do arquivo INI caso exista.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\DI'+cDI2.Text+'.ini');
      for i := 1 to gProdutos.RowCount-1 do begin
          If Pos('<{', gProdutos.Cells[3, i]) <> 0 then begin
             gProdutos.Cells[3, i] := Trim(Copy(gProdutos.Cells[3, i], 1, Pos('<{', gProdutos.Cells[3, i])-1));
          End;
          if aINI.ReadString('DI'+cDI2.Text, gProdutos.Cells[0, i]+gProdutos.Cells[1, i], '') <> '' then begin
             gProdutos.Cells[3, i] := gProdutos.Cells[3, i] + ' <{'+aINI.ReadString('DI'+cDI2.Text, gProdutos.Cells[0, i]+gProdutos.Cells[1, i], '')+'}>';
          end;   
      end;
      gProdutos.OnClick(Self);
      cExportador.KeyValue := null;
End;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bAdicaoClick(Sender: TObject);
var
    i      : Integer;
    mAdicao: String;
begin
      mAdicao := InputBox('Nº da Adição','Nº', mAdicao);
      For i := 0 to cDumping.Count-1 do begin
          If Copy(cDumping.Items[i], 1, 3) = PoeZero(3, StrtoInt(mAdicao)) then cDumping.Checked[i] := true;
      End;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bDesmarcarClick(Sender: TObject);
var
    i: Integer;
begin
      For i := 0 to cDumping.Count-1 do begin
          cDumping.Checked[i] := false;
      End;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bTodosClick(Sender: TObject);
var
    i: Integer;
begin
      For i := 0 to cDumping.Count-1 do begin
          cDumping.Checked[i] := true;
      End;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.cPesquisaChange(Sender: TObject);
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

procedure TUtilitarios_ImportarSISCOMEXWEBXML.GradeProdutosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,Y: Integer);
begin
     GradeProdutos.BeginDrag(True);
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.gProdutosDragDrop(Sender,Source: TObject; X, Y: Integer);
begin
     bAdCodigoClick(Self);
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.gProdutosDragOver(Sender,Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
     Accept := Source is TRxDBGrid;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.gProdutosClick(Sender: TObject);
var
   mCodigo:string;
begin
     cDescricao.Lines.Clear;
     cDescricao.Lines.Add(gProdutos.Cells[3, gProdutos.Row]);
     if pos('<{',gProdutos.Cells[3, gProdutos.Row]) = 0 then begin
        if not Dados.Produtos.Locate('Descricao;Desativado', VarArrayOf([gProdutos.Cells[3, gProdutos.Row], false]), [loCaseInsensitive, loPartialKey]) then begin
           tPesquisa2.SQL.Clear;
           tPesquisa2.SQL.Add('SELECT Codigo FROM Produtos WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+') AND (Desativado <> 1)');
           tPesquisa2.Open;
           Dados.Produtos.Locate('Codigo', tPesquisa2.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
        end;
     end else begin
        mCodigo := Copy(gProdutos.Cells[3, gProdutos.Row], Pos('<{', gProdutos.Cells[3, gProdutos.Row])+2, 10);
        mCodigo := ApenasNumeros(mCodigo);
        if mCodigo <> '' then
           Dados.Produtos.Locate('Codigo', Strtoint(mCodigo), [loCaseInsensitive]);
     end;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bVerificarClick(Sender: TObject);
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
           tPesquisa2.SQL.Clear;
           tPesquisa2.SQL.Add( 'SELECT * FROM ProcessosDocumentos WHERE Processo = :pProcesso');
           tPesquisa2.ParamByName('pProcesso').AsString := Trim(cProcesso.Text);
           tPesquisa2.Open;

           if tPesquisa2.RecordCount > 0 then begin
              if not ConfiguracaoProcesso_ImportarFechado.Value then begin
                 tPesquisa2.SQL.Clear;
                 tPesquisa2.SQL.Add('SELECT COUNT(*) AS Notas FROM NotasItens WHERE(Processo = :pProcesso) AND (ISNULL(Cancelada, 0) <> 1)');
                 tPesquisa2.ParamByName('pProcesso').AsString := cProcesso.Text;
                 tPesquisa2.Open;

                 if tPesquisa2.FieldByName('Notas').AsInteger > 0 then begin
                    Inc(mErros);
                    cErros.Lines.Add(FormatFloat('000: ',mErros)+' > Processo nº '+cProcesso.Text+', Bloqueado. (Notas fiscais já emitidas).'+ProcessosDOCProcesso.Value );
                 end;
              end;
           end;

           // Verifica se a DI já foi importada para outro processo.
           if ProcessosDOC.Locate('Numero_Declaracao', mDI, [loCaseInsensitive]) = True then begin
              if Trim(ProcessosDOCProcesso.Value) <> Trim(cProcesso.Text) then begin
                 Inc(mErros);
                 cErros.Lines.Add(FormatFloat('000: ',mErros)+' > Declaração nº '+FormatMaskText('99/9999999-9;0',mDI)+', Já importada para o processo '+ProcessosDOCProcesso.Value );
              end;
           end;
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

           if (ConfiguracaoObrigar_NavioPedido.AsBoolean) and (Trim(cNavio.Text) = '') then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar o navio.' );
           End;
           If Trim(cModalidade.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta a modalidade de importação.' );
           End;
           If DataLimpa(cDataReg.Text) then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta a data de registro da DI. '+ cDataReg.Text);
           End;
           If DataLimpa(cDataDesembaraco.Text) then begin
              Inc(mAvisos);
              cAvisos.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta a data de desembaraço da DI. '+cDataDesembaraco.Text);
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
           if Trim(cArmazemCod.Text) = '' then begin
              Inc(mAvisos);
              cAvisos.Lines.Add(FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Armazém não informado.');
           end;

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
               mPais := gAdicoes.Cells[15,i]+DigitoPais(gAdicoes.Cells[15,i]);
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
                    If ConfiguracaoSISCOMEX_CodigoProduto.AsBoolean then begin
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
               mPais := gAdicoes.Cells[15, i]+DigitoPais(gAdicoes.Cells[15, i]);
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
           
           case AnsiIndexStr(cViaTransporte.Text, ['AEREA','ENTRADA FICTA','FERROVIARIA','FLUVIAL','LACUSTRE','MARITIMA','MEIOS PROPRIOS','POSTAL','RODOVIARIA','TUBO-CONDUTO']) of
                -1: begin
                         Inc(mAvisos);
                         cAvisos.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Via de transporte ('+cViaTransporte.Text+') incorreta, corrija no processo após importar esta DI. ');
                    end;
           end;

           // Desmarca os fornecedores da caixa de fornecedores caso seja informado o exportador.
           if trim(cExportador.Text) <> '' then begin
              for i := 0 to pred(cFornecedoresCheck.Items.Count) do begin
                  cFornecedoresCheck.Checked[i]     := False;
                  cFornecedoresCheck.ItemEnabled[i] := False;
              end;
           end;

           cPasta.Pages[11].Caption := '&Erros ('+ InttoStr(mErros)+')';
           cPasta.Pages[12].Caption := '&Avisos ('+ InttoStr(mAvisos)+')';
           bImportar.Enabled        := mErros = 0;

           If mAvisos <> 0 then cPasta.TabIndex := 12;
           If mErros  <> 0 then cPasta.TabIndex := 11;

           case AnsiIndexStr(cViaTransporte.Text, ['AEREA','ENTRADA FICTA','FERROVIARIA','FLUVIAL','LACUSTRE','MARITIMA','MEIOS PROPRIOS','POSTAL','RODOVIARIA','TUBO-CONDUTO']) of
                -1: begin
                         cPasta.ActivePageIndex := 1;
                         cViaTransporte.SetFocus;
                         cViaTransporte.Color := clRed;
                    end;
           end;
      End;
      
      with gFornecedores do begin
           for i := 1 to pred(gFornecedores.RowCount) do begin
               if cExportador.DisplayValue <> '' then begin
                  cells[7, i] := Dados.FornecedoresCodigo.asstring;
               end else begin
                  cells[7, i] := '';
               end;
           end;
      end;

      Screen.Cursor := crDefault;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bVincularClick(Sender: TObject);
var
   mMarcaRef, mDescricao, mCodigo:string;
   l:integer;
begin
     // Pega código de referência do produto na descrição e vincula produto se ja existe.
     cPasta.ActivePageIndex := 3;
     with Dados, gProdutos do begin
          for l := 1 to pred(RowCount) do begin
              Row := l;
              mMarcaRef  := Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString);
              mDescricao := cells[3,l];

              if mMarcaRef <> '' then begin
                 if mMarcaRef = '*' then begin
                    mCodigo := PegaParte(mDescricao, '', mMarcaRef);
                 end else begin
                    // Referencia esta no inicio da descrição da mercadoria.
                    if ConfiguracaoSISCOMEX_MascaraPosicao.AsInteger = 1 then begin
                       mCodigo := PegaParte(mDescricao, '', mMarcaRef);
                    end else begin
                       // Referencia esta no final da descrição da mercadoria.
                       mCodigo := PegaParte(mDescricao, mMarcaRef, '');
                    end;
                 end;
              end;
              if mCodigo <> '' then begin
                 with tCodigo do begin
                      sql.clear;
                      sql.add('select Codigo, Codigo_Fabricante from Produtos where LTRIM(RTRIM(Codigo_Fabricante)) = '+quotedstr(Trim(mCodigo))+' and Desativado = 0');
                      //sql.savetofile('c:\temp\Produtos_Importacao_SISCOMEX.sql');
                      open;
                      if recordCount > 0 then begin
                         if Produtos.Locate('Codigo', FieldByName('Codigo').AsInteger, [loCaseInsensitive]) then begin
                            if Pos('<{', gProdutos.Cells[3, gProdutos.Row]) > 0 then begin
                               gProdutos.Cells[3, gProdutos.Row] := Trim(Copy(gProdutos.Cells[3, gProdutos.Row], 1, Pos('<{', gProdutos.Cells[3, gProdutos.Row])-1));
                            end;
                            gProdutos.Cells[3, gProdutos.Row] := gProdutos.Cells[3, gProdutos.Row] + ' <{'+ Dados.ProdutosCodigo.AsString+'}>';
                            cDescricao.Lines.Clear;
                            cDescricao.Lines.Add(gProdutos.Cells[3, gProdutos.Row]);
                         end;
                      end;
                 end;
              end;
          end;
     end;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bImportarClick(Sender: TObject);
Var
   i, x,
   mPosIni,
   mLinha,
   mForn,
   mPosFim: Integer;
   mConta,
   mGrupo: String;
   mCodigo,
   mDescricao: WideString;
   mMoedaOrigem,
   mMoedaDestino: Real;
begin
      bImportar.Enabled  := false;
      bVerificar.Enabled := false;
      bCotacao.Enabled   := false;
      bUnidade.Enabled   := false;
      bSair.Enabled      := false;
      mTotalCIDEDev      := 0;
      mTotalCIDERec      := 0;
      With Dados, dmFiscal, dmContab do Begin
           PedidosItens.DisableControls;
           Pedidos.DisableControls;
           ProcessosDOC.DisableControls;
           Adicoes.DisableControls;
           Produtos.DisableControls;
           LocalDesembaraco.DisableControls;
           ProcessosTexto.DisableControls;
           Fornecedores.DisableControls;
           Fabricantes.DisableControls;
           PlanoContas.DisableControls;
           NCM.DisableControls;
           PagarReceber.DisableControls;

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
           Pedidos.SQL.Add('UPDATE Pedidos SET Valor_TotalProdutos    = 0');
           Pedidos.SQL.Add('                  ,BCIPI                  = 0');
           Pedidos.SQL.Add('                  ,Valor_TotalIPI         = 0');
           Pedidos.SQL.Add('                  ,BCICMS                 = 0');
           Pedidos.SQL.Add('                  ,Valor_ICMS             = 0');
           Pedidos.SQL.Add('                  ,BCICMS_Substitutivo    = 0');
           Pedidos.SQL.Add('                  ,ValorICMS_Substitutivo = 0');
           Pedidos.SQL.Add('                  ,Valor_ICMSReducao      = 0');
           Pedidos.SQL.Add('                  ,Total_Frete            = 0');
           Pedidos.SQL.Add('                  ,Valor_Seguro           = 0');
           Pedidos.SQL.Add('                  ,Valor_TotalNota        = 0');
           Pedidos.SQL.Add('                  ,Valor_TotalMVA         = 0');
           Pedidos.SQL.Add('                  ,Volume_PesoLiquido     = 0');
           Pedidos.SQL.Add('                  ,Volume_PesoBruto       = 0');
           Pedidos.SQL.Add('                  ,Valor_PIS              = 0');
           Pedidos.SQL.Add('                  ,Valor_COFINS           = 0');
           Pedidos.SQL.Add('                  ,Valor_PIS2             = 0');
           Pedidos.SQL.Add('                  ,Valor_COFINS2          = 0');
           Pedidos.SQL.Add('                  ,Valor_TotalII          = 0');
           Pedidos.SQL.Add('                  ,Valor_OutrasDespesas   = 0');
           Pedidos.SQL.Add('                  ,Valor_OutrasICMS       = 0');
           Pedidos.SQL.Add('                  ,Valor_IsentasICMS      = 0');
           Pedidos.SQL.Add('                  ,Valor_OutrasIPI        = 0');
           Pedidos.SQL.Add('                  ,Valor_IsentasIPI       = 0');
           Pedidos.SQL.Add('                  ,Valor_DUMPING          = 0');
           Pedidos.SQL.Add('                  ,Valor_DespesasOutros   = 0');
           Pedidos.SQL.Add('                  ,Valor_BCPIS            = 0');
           Pedidos.SQL.Add('                  ,Total_Impostos         = 0');
           Pedidos.SQL.Add('                  ,Valor_IRPJ             = 0');
           Pedidos.SQL.Add('                  ,Valor_CSLL             = 0');
           Pedidos.SQL.Add('                  ,Valor_Inventario       = 0');
           Pedidos.SQL.Add('WHERE Processo = :pProcesso');
           Pedidos.SQL.Add('AND   DI = :pDI');
           Pedidos.ParamByName('pProcesso').AsString := cProcesso.Text;
           Pedidos.ParamByName('pDI').AsString       := cDI2.Text;
           Pedidos.Execute;

           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE Processo = :pProcesso AND DI = :pDI');
           Pedidos.ParamByName('pProcesso').AsString := cProcesso.Text;
           Pedidos.ParamByName('pDI').AsString       := cDI2.Text;
           Pedidos.Open;

           // Cadastro do local de desembaraço.
           If LocalDesembaraco.Locate('Codigo', cLocalDesembCod.Text, [loCaseInsensitive]) = false then begin
              LocalDesembaraco.Append;
                               LocalDesembaracoCodigo.Value            := cLocalDesembCod.AsInteger;
                               LocalDesembaracoDescricao.Value         := cLocalDesembNome.Text;
                               LocalDesembaracoPrazo_Faturamento.Value := 4;
                               LocalDesembaracoPrazo_Registro.Value    := 8;
              LocalDesembaraco.Post;
           End;

           //===============================================================[ DADOS DO PROCESSO ]=================================================================
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add( 'SELECT * FROM ProcessosDocumentos WHERE Processo = '+QuotedStr(Trim(cProcesso.Text)) );
           ProcessosDOC.Open;

           If ProcessosDOC.RecordCount = 0 then begin
              // Gerando o log de eventos do sistema.
              GerarLog('('+Menu_Principal.mUsuarioCodigo+')'+Menu_Principal.mUsuarioNome, 'ProcessosDocumentos', 'INCLUSÃO' , ''   , 'Importada a DI Nº '+FormatMaskText('99/9999999-9;0; ', cDI2.Text)+' de '+cDataReg.Text+'  Processo: '+cProcesso.Text, '','' ,'');

              ProcessosDOC.Append;
           end else begin
              // Gerando o log de eventos do sistema.
              GerarLog('('+Menu_Principal.mUsuarioCodigo+')'+Menu_Principal.mUsuarioNome, 'ProcessosDocumentos', 'ALTERAÇÃO' , ''   , 'Importada a DI Nº '+FormatMaskText('99/9999999-9;0; ', cDI2.Text)+' de '+cDataReg.Text+'  Processo: '+cProcesso.Text, '', '', '');

              ProcessosDOC.Edit;
           End;

           If EmpresasProcesso_Automatico.asboolean then begin
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
           if not DataLimpa(cDataDesembaraco.Text) then ProcessosDOCData_DesembaracoDeclaracao.Value := cDataDesembaraco.Date;
           ProcessosDOCFrete.Value                      := cFreteReal.Value;
           ProcessosDOCSeguro.Value                     := cSeguroReal.Value;

           If cDA.Checked = false then begin
              ProcessosDOCII.Value        := cTotalII.Value;
              ProcessosDOCValor_IPI.Value := cTotalIPI.Value;
           End;

           ProcessosDOCRecinto_AlfandegarioCod.Value := strtoint(cRecintoAduaneiroCod.Text);
           ProcessosDOCRecinto_Alfandegario.Value    := cRecintoAduaneiro.Text;
           ProcessosDOCLocal_DesembaracoCodigo.Value := StrtoInt(cURFDespachoCod.Text);
           ProcessosDOCUF_Desembaraco.Value          := tUFDesemb.FieldByName('Codigo').AsString;
           //ProcessosDOCPeso_Bruto.Value              := cPesoBruto.Value;
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
           ProcessosDOCProcesso_Abertura.Value       := iif(ProcessosDOCProcesso_Abertura.Value = null, date, ProcessosDOCProcesso_Abertura.Value);
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
           ProcessosDOCAFRMM.Value                   := cAFRMMReal.Value;
           ProcessosDOCTUP.Value                     := cTUPReal.Value;
           ProcessosDOCFrete_NacionalME.Value        := cFreteNacME.Value;
           ProcessosDOCFrete_NacionalReal.Value      := cFreteNacReal.Value;
           ProcessosDOCNavio_Ordem.Value             := ControleNavios.FieldByName('Ordem').AsInteger;
           ProcessosDOCArmazem.Value                 := iif(cArmazemCod.text <> '', tArmazem.FieldByName('Codigo').AsInteger, 0);
           ProcessosDOCNumero_BL.Value               := tBL.fieldbyname('BL').asstring;

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
           ProcessosDOCRemover_FreteNacBC.Value  := cFreteNacional.Checked;

           If cDA.Checked = false then begin
              ProcessosDOCValor_PIS.Value     := cTotalPISMaj.Value;
              ProcessosDOCValor_PIS2.Value    := cTotalPISNF.Value;
              ProcessosDOCValor_COFINS.Value  := cTotalCOFINSMaj.Value;
              ProcessosDOCValor_COFINS2.Value := cTotalCOFINSNF.Value;
           End;

           ProcessosDOCApuracao_PISCOFINS.Value := TiposProcessoApuracao_PISCOFINS.AsBoolean;
           if ProcessosDOCValor_PIS.AsCurrency = 0 then begin
              ProcessosDOCApuracao_PISCOFINS.Value := false;
           end;
           
           ProcessosDOCVencimento_Cambio.Value  := 0;
          
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

           // Abre a conta de "Despesas" do processo se estiver parametrizado.
           // Pegando o grupo da conta.
           If Trim(TiposProcesso.FieldByName('Conta_Despesas').AsString) <> '' then begin
              PlanoContas.SQL.Clear;
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas');
              PlanoContas.Open;

              PlanoContas.Locate('Codigo', Trim(TiposProcesso.FieldByName('Conta_Despesas').AsString), [loCaseInsensitive]);
              mGrupo := PlanoContasConta.Value;

              If PlanoContasSintetica.Value = False then begin
                 ProcessosDOCConta_Despesas.Value := PlanoContasCodigo.AsString;
              end else begin
                 If mGrupo <> '' then begin
                    // Verifica se já existe uma conta cadastrada com o mesmo nome.
                    PlanoContas.SQL.Clear;
                    PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                    PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                    PlanoContas.ParamByName('pDescricao').AsString := 'DI '+FormatMaskText('##/#######-#;0; ', cDI2.Text)+' ('+cProcesso.Text+')';
                    PlanoContas.Open;

                    If PlanoContas.RecordCount = 0 then begin
                       // Pegando o número da última conta.
                       tContaPlano.SQL.Clear;
                       tContaPlano.SQL.Add('SELECT MAX(Conta) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' );
                       tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                       tContaPlano.Open;

                       // Se não houver nenhuma conta analítica no plano cria a primeira, caso contrario pega a última.
                       If tContaPlano.FieldByName('Conta').Value = Null then
                          mConta := CriaAnalitica( mGrupo, Dados.EmpresasMascara_PlanoContas.Value )
                       else
                          If Configuracao.FieldByName('Contab_ContaNova').AsBoolean = true then
                             mConta := InttoStr(tContaPlano.FieldByName('Conta').AsInteger + 1)
                          else
                             mConta := tContaPlano.FieldByName('Conta').AsString;

                       // Pegando o número do último código reduzido sem o último digito.
                       tCodigoPlano.SQL.Clear;
                       tCodigoPlano.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM PlanoContas');
                       tCodigoPlano.Open;

                       PlanoContas.Append;
                                   PlanoContasConta.Value           := mConta;
                                   PlanoContasCodigo.Value          := tCodigoPlano.FieldByName('Codigo').AsString;
                                   PlanoContasDescricao.Value       := 'DI '+FormatMaskText('##/#######-#;0; ',cDI2.Text)+' ('+cProcesso.Text+')';
                                   PlanoContasSaldo_Anterior.Value  := 0;
                                   PlanoContasDebito.Value          := 0;
                                   PlanoContasCredito.Value         := 0;
                                   PlanoContasSintetica.Value       := False;
                                   PlanoContasNatureza.Value        := 'C';
                                   PlanoContasOrigem.Value          := PoeZero(2, StrtoInt(Copy(mConta, 1,1)));
                                   PlanoContasLALUR.Value           := False;
                                   PlanoContasMostrar_Balanco.Value := True;
                                   PlanoContasImprimir_Razao.Value  := False;
                                   PlanoContasData_Inclusao.Value   := now;
                                   PlanoContasNivel.Value           := NivelConta(PlanoContasConta.AsString, PlanoContasConta.EditMask);
                                   PlanoContasConta_Grupo.Value     := GrupoConta(PlanoContasConta.AsString, PlanoContasConta.EditMask,PlanoContasNivel.AsInteger);
                       PlanoContas.Post;
                    End;

                    // Registra a conta aberta no cadastro do processo.
                    ProcessosDOCConta_Despesas.Value := PlanoContasCodigo.AsString;
                 End;
              End;
           End;

           // Abre a conta de "impostos" do processo se estiver habilitado em confgurações
           If Trim(TiposProcesso.FieldByName('Conta_Impostos').AsString) <> '' then begin
              // Pegando o grupo da conta.
              PlanoContas.SQL.Clear;
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas');
              PlanoContas.Open;

              PlanoContas.Locate('Codigo', Trim(TiposProcesso.FieldByName('Conta_Impostos').AsString), [loCaseInsensitive]);
              mGrupo := PlanoContasConta.Value;

              If PlanoContasSintetica.Value = False then begin
                 ProcessosDOCConta_Impostos.Value := PlanoContasCodigo.AsString
              end else begin
                 If mGrupo <> '' then begin
                    // Verifica se já existe uma conta cadastrada com o mesmo nome.
                    PlanoContas.SQL.Clear;
                    PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                    PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                    PlanoContas.ParamByName('pDescricao').AsString := 'DI '+FormatMaskText('##/#######-#;0; ', cDI2.Text)+' ('+cProcesso.Text+')';
                    PlanoContas.Open;

                    If PlanoContas.RecordCount = 0 then begin
                       // Pegando o número da última conta.
                       tContaPlano.SQL.Clear;
                       tContaPlano.SQL.Add('SELECT MAX(Conta) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' );
                       tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                       tContaPlano.Open;

                       // Se não houver nenhuma conta analítica no plano cria a primeira, caso contrario pega a última.
                       If tContaPlano.FieldByName('Conta').Value = Null then
                          mConta := CriaAnalitica( mGrupo, Dados.EmpresasMascara_PlanoContas.Value )
                       else
                          If Configuracao.FieldByName('Contab_ContaNova').AsBoolean = true then
                             mConta := InttoStr(tContaPlano.FieldByName('Conta').AsInteger + 1)
                          else
                             mConta := tContaPlano.FieldByName('Conta').AsString;

                       // Pegando o número do último código reduzido sem o último digito.
                       tCodigoPlano.SQL.Clear;
                       tCodigoPlano.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM PlanoContas');
                       tCodigoPlano.Open;

                       PlanoContas.Append;
                                   PlanoContasConta.Value           := mConta;
                                   PlanoContasCodigo.Value          := InttoStr(tCodigoPlano.FieldByName('Codigo').AsInteger);
                                   PlanoContasDescricao.Value       := 'DI '+FormatMaskText('##/#######-#;0; ', cDI2.Text)+' ('+cProcesso.Text+')';
                                   PlanoContasSaldo_Anterior.Value  := 0;
                                   PlanoContasDebito.Value          := 0;
                                   PlanoContasCredito.Value         := 0;
                                   PlanoContasSintetica.Value       := False;
                                   PlanoContasNatureza.Value        := 'C';
                                   PlanoContasOrigem.Value          := PoeZero(2, StrtoInt(Copy(mConta, 1,1)));
                                   PlanoContasLALUR.Value           := False;
                                   PlanoContasMostrar_Balanco.Value := True;
                                   PlanoContasImprimir_Razao.Value  := False;
                                   PlanoContasData_Inclusao.Value   := now;
                                   PlanoContasNivel.Value           := NivelConta(PlanoContasConta.AsString, PlanoContasConta.EditMask);
                                   PlanoContasConta_Grupo.Value     := GrupoConta(PlanoContasConta.AsString, PlanoContasConta.EditMask,PlanoContasNivel.AsInteger);
                       PlanoContas.Post;
                    End;

                    // Registra a conta aberta no cadastro do processo.
                    ProcessosDOCConta_Impostos.Value := PlanoContasCodigo.AsString;
                 End;
              End;
              If Trim(ProcessosDOCConta_Impostos.Value) = '' then ProcessosDOCConta_Impostos.Value := ProcessosDOCConta_Despesas.Value;
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
                  if cFornecedoresCheck.Checked[i-1] then begin
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
                                  FornecedoresPais.Value := (gFornecedores.Cells[6,i] + DigitoPais(gFornecedores.Cells[6,i]));
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
                                  FornecedoresModalidade_Importacao.Value := cModalidade.KeyValue;
                     Fornecedores.Post;
                     tFornecedor.Close;

                     gFornecedores.Cells[7,i] := Fornecedores.FieldByName('Codigo').asstring;
                     
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
                     if not Fornecedores.Locate('Nome', cFornecedoresAchados.Lines.Strings[i-1], [loCaseInsensitive]) then begin
                        Fornecedores.First;
                        while not Fornecedores.Eof do begin
                              if SoundexSimilar(gFornecedores.Cells[0,i], Trim(FornecedoresNome.AsString)) then begin
                                 Break;
                              end;
                              Fornecedores.Next;
                        end;
                     end;
                  end;

                  gFornecedores.Cells[7,i] := FornecedoresCodigo.AsString;

                  // Procura o fornecedor no plano de contas não encontrando abre a conta se estiver habilitado em configuração.
                  // Pegando o grupo do cadastro de fornecedores.
                  PlanoContas.SQL.Clear;
                  PlanoContas.SQL.Add('SELECT * FROM PlanoContas');
                  PlanoContas.Open;

                  If Trim(TiposProcessoConta_Fornecedor.AsString) <> '' then begin
                     PlanoContas.Locate('Codigo', Trim(TiposProcessoConta_Fornecedor.AsString), [loCaseInsensitive]);
                  end else begin
                     PlanoContas.Locate('Codigo', Trim(RamoAtividadeConta_Fornecedor.AsString), [loCaseInsensitive]);
                  End;
                  mGrupo := Trim(PlanoContasConta.Value);

                  If PlanoContasSintetica.Value = False then begin
                     Fornecedores.Edit;
                                  FornecedoresConta.Value := PlanoContasCodigo.Value;
                     Fornecedores.Post;
                  end else begin
                     If mGrupo <> '' then begin
                        // Verificando se a conta ja esta cadastrada.
                        PlanoContas.SQL.Clear;
                        PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                        PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                        PlanoContas.ParamByName('pDescricao').AsString := FornecedoresNome.Value;
                        PlanoContas.Open;

                        If PlanoContas.RecordCount = 0 then begin
                           // Pegando o número da última conta.
                           tContaPlano.SQL.Clear;
                           tContaPlano.SQL.Add('SELECT MAX(Conta) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' );
                           tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                           tContaPlano.Open;

                           // Se não houver nenhuma conta analítica no plano cria a primeira, caso contrario pega a última.
                           If tContaPlano.FieldByName('Conta').Value = Null then
                              mConta := CriaAnalitica( mGrupo, Dados.EmpresasMascara_PlanoContas.Value )
                           else
                              If Configuracao.FieldByName('Contab_ContaNova').AsBoolean = true then
                                 mConta := InttoStr(tContaPlano.FieldByName('Conta').AsInteger + 1)
                              else
                                 mConta := tContaPlano.FieldByName('Conta').AsString;

                           // Pegando o número do último código reduzido sem o último digito.
                           tCodigoPlano.SQL.Clear;
                           tCodigoPlano.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM PlanoContas');
                           tCodigoPlano.Open;

                           PlanoContas.Append;
                                       PlanoContasConta.Value           := mConta;
                                       PlanoContasCodigo.Value          := InttoStr(tCodigoPlano.FieldByName('Codigo').AsInteger);
                                       PlanoContasDescricao.Value       := FornecedoresNome.Value;
                                       PlanoContasSaldo_Anterior.Value  := 0;
                                       PlanoContasDebito.Value          := 0;
                                       PlanoContasCredito.Value         := 0;
                                       PlanoContasSintetica.Value       := False;
                                       PlanoContasNatureza.Value        := 'C';
                                       PlanoContasOrigem.Value          := PoeZero(2, StrtoInt(Copy(mConta, 1,1)));
                                       PlanoContasLALUR.Value           := False;
                                       PlanoContasMostrar_Balanco.Value := False;
                                       PlanoContasImprimir_Razao.Value  := False;
                                       PlanoContasData_Inclusao.Value   := Now;
                                       PlanoContasNivel.Value           := NivelConta(PlanoContasConta.AsString, PlanoContasConta.EditMask);
                                       PlanoContasConta_Grupo.Value     := GrupoConta(PlanoContasConta.AsString, PlanoContasConta.EditMask,PlanoContasNivel.AsInteger);
                           PlanoContas.Post;

                           // Registra a conta aberta no plano no cadastro do fornecedor.
                           Fornecedores.Edit;
                                        FornecedoresConta.Value := PlanoContasCodigo.Value;
                           Fornecedores.Post;
                        End;
                     End;
                  End;
              End;

              // Registra o código do fornecedor nos dados do processo.
              If cExportador.DisplayValue = '' then
                 cExportador.KeyValue := FornecedoresCodigo.AsInteger;

              ProcessosDOC.Edit;
                           ProcessosDOCFornecedor.Value := cExportador.KeyValue;
              ProcessosDOC.Post;
           End else begin
              for i := 1 to gFornecedores.RowCount-1 do begin
                  gFornecedores.Cells[7,i] := cExportador.KeyValue;
              end;
           end;
           
           // Preenche as adições com o código do fornecedor.
           for i := 1 to pred(gFornecedores.RowCount) do begin
               for x := 1 to pred(gAdicoes.RowCount) do begin
                   if gAdicoes.Cells[14,x] = gFornecedores.Cells[0,i] then begin
                      gAdicoes.Cells[34,x] := gFornecedores.Cells[7,i];
                   end;
               end;
           end;
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
           Janela_Processamento.lProcesso.Caption  := 'Cadastrando NCM da DI: '+FormatMaskText('99/9999999-9;0', cDI2.Text);
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

                    // PIS / COFINS.
                    NCMPIS.Value              := 0;
                    NCMPIS_Nota.Value         := 0;
                    NCMPIS_NotaSaida.Value    := 0;
                    NCMCOFINS.Value           := 0;
                    NCMCOFINS_Nota.Value      := 0;
                    NCMCOFINS_NotaSaida.Value := 0;

                    // Verifica se existe valor de PIS/COFINS na DI, caso seja zero não cadastra as alíquotas na tabela de NCM/Produtos.
                    if StrValor(Cells[03, i])+StrValor(Cells[05, i]) > 0 then begin
                       NCMPIS.Value           := StrValor(Cells[04, i]);
                       NCMPIS_Nota.Value      := StrValor(Cells[22, i]);
                       NCMPIS_NotaSaida.Value := StrValor(Cells[23, i]);

                       Majoracao.SQL.Clear;
                       Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''M'' AND Descricao = ''COFINS'' AND Majorada = :pAliquota AND Modalidade = :pModal');
                       Majoracao.ParamByName('pAliquota').AsFloat := StrValor(Cells[2, i]);
                       Majoracao.ParamByName('pModal').AsInteger  := cModalidade.KeyValue;
                       Majoracao.Open;

                       NCMCOFINS.Value           := StrValor(Cells[02, i]);
                       NCMCOFINS_Nota.Value      := StrValor(Cells[24, i]);
                       NCMCOFINS_NotaSaida.Value := StrValor(Cells[25, i]);
                    end;

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
           Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (ISNULL(DI,'''') <> '''') AND (DI = :pDI)');
           Adicoes.ParamByName('pDI').AsString := cDI2.Text;
           Adicoes.Open;

           Janela_Processamento.Progresso.Max      := gProdutos.RowCount-1;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Importando Adições: '+FormatMaskText('99/9999999-9;0', cDI2.Text);

           with gProdutos do begin
                for i := 1 to RowCount -1 do begin
                    // Coloca os códigos dos fornecedores nas adições.
                    if Fornecedores.Locate('Nome', Cells[8, i], [loCaseInsensitive]) then begin
                       Cells[16, i] := FornecedoresCodigo.AsString;
                    end;
                    
                    Unidades.Locate('Descricao', Cells[04,i], [loCaseInsensitive]);
                    mLinha := PesquisaStringGrid(gAdicoes, 0, Cells[0, i]);

                    // Cadastra o produto ou modifica se já existe na tabela. (Verifica se a descrição contém o código do sistema).
                    mDescricao := RemoveCaracter(#13, '', Cells[03,i]);
                    mDescricao := RemoveCaracter(#12, '', mDescricao);
                    mDescricao := RemoveCaracter(#10, '', mDescricao);

                    if Pos(widestring('<{'), mDescricao) = 0 then begin
                       Produtos.SQL.Clear;
                       Produtos.SQL.Add('SELECT * FROM Produtos WHERE Descricao LIKE '+QuotedStr(mDescricao+'%')+' AND Modalidade = :pModal AND isnull(Desativado, 0) = 0' );
                       Produtos.ParamByName('pModal').AsInteger := ProcessosDOCModalidade_Importacao.AsInteger;
                       Produtos.Open;
                       if Produtos.RecordCount = 0 then begin
                          tCodigo.SQL.Clear;
                          tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Produtos');
                          tCodigo.Open;

                          Produtos.Append;
                                   ProdutosCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger;
                                   mDescricao           := mDescricao + #13+'<{'+tCodigo.FieldByName('Codigo').AsString+'}>';
                                   tCodigo.Close;
                       end else begin
                          Produtos.Edit;
                       end;
                    end else begin
                       mPosIni := Pos(widestring('<{'), mDescricao)+2;
                       mPosFim := Pos(widestring('}>'), mDescricao);
                       mCodigo := Copy(mDescricao, mPosIni, (mPosFim-mPosIni));

                       Produtos.SQL.Clear;
                       Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo = :pCodigo AND isnull(Desativado, 0) = 0 AND Modalidade = :pModal');
                       Produtos.ParamByName('pModal').AsInteger := ProcessosDOCModalidade_Importacao.AsInteger;
                       Produtos.ParamByName('pCodigo').AsString := mCodigo;
                       Produtos.Open;
                       Produtos.Edit;
                    end;
                             // Pegando a alíquota do IPI.
                             If ClasseIPI.Locate('Valor_IPI', NCMIPI.AsFloat, [loCaseInsensitive] ) = True then begin
                                ProdutosClasseEnquadra_IPI.Value := dmFiscal.ClasseIPIClasse.Value;
                             End;

                             NCM.Locate('NCM', Cells[02,i], [loCaseInsensitive]);

                             if trim(ProdutosUnidade.asstring)        = '' then ProdutosUnidade.asstring     := UnidadesCodigo.Value;
                             if Trim(ProdutosUnidade_Origem.AsString) = '' then ProdutosUnidade_Origem.Value := UnidadesCodigo.Value;
                             ProdutosNCM.Value := Cells[02,i];
                             {
                             if mCodigo = '' then begin
                                ProdutosDescricao_Reduzida.Value := Copy(mDescricao,1,60);
                                ProdutosDescricao.AsString       := mDescricao;
                             end;
                             }
                             if Produtos.State = dsInsert then begin
                                ProdutosDescricao_Reduzida.Value := Copy(mDescricao,1,60);
                                ProdutosDescricao.AsString       := mDescricao;
                             end;
                             ProdutosEstoque_Disponivel.Value := 0;    
                             ProdutosEstoque_Terceiros.Value  := 0;
                             ProdutosTipo_Item.Value          := TipoItemCodigo.Value;
                             if ProdutosQuantidade_Unidade.asfloat = 0 then begin
                                ProdutosQuantidade_Unidade.Value := 1;
                             end;
                             if ProdutosQuantidade_Volumes.asfloat = 0 then begin
                                ProdutosQuantidade_Volumes.Value := 1;
                             end;
                             ProdutosDesativado.Value         := false;
                             ProdutosAliquota_IPI.Value       := StrtoFloat(Cells[17,i]);
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
                             if Cells[13,i] <> '' then
                                ProdutosCodigo_Fabricante.Value  := Cells[13,i];

                             If ProdutosPIS_Nota.AsFloat         = 0 then ProdutosPIS_Nota.Value         := NCMPIS.Value;
                             If ProdutosCOFINS_Nota.AsFloat      = 0 then ProdutosCOFINS_Nota.Value      := NCMCOFINS.Value;
                             If ProdutosPIS_NotaSaida.AsFloat    = 0 then ProdutosPIS_NotaSaida.Value    := NCMPIS.Value;
                             If ProdutosCOFINS_NotaSaida.AsFloat = 0 then ProdutosCOFINS_NotaSaida.Value := NCMCOFINS.Value;

                             ProdutosFornecedor.Value       := FornecedoresCodigo.AsInteger;
                             ProdutosFabricante.Value       := FornecedoresCodigo.AsInteger;
                             ProdutosModalidade.Value       := cModalidade.KeyValue;
                             ProdutosOrigem.Value           := 'I';
                             ProdutosEscala_Relevante.Value := true;

                             if cPeso.ItemIndex = 0 then begin
                                ProdutosPeso_Liquido.Value := StrValor(gAdicoes.Cells[10, mLinha]) / StrValor(gAdicoes.Cells[33, mLinha]);
                             end;
                             ProdutosTabela_CAMEX.Value := cCAMEX.Checked[i-1];
                             ProdutosAliquota_CBS.value := ConfiguracaoAliquota_CBS.AsFloat;
                    Produtos.Post;

                    Cells[9, i] := ProdutosCodigo.AsString;

                    // Cadastra os itens das adições.
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

                            AdicoesSequencia.Value          := tCodigo.FieldByName('Sequencia').AsInteger;
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
                            AdicoesExportador.Value         := ProdutosFornecedor.Value;
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
                               if InvoiceItensPeso_Liquido.Value > 0 then begin
                               end;
                            End;

                            AdicoesPedido.Value             := Cells[18, i];
                            AdicoesOrdem.Value              := Strtoint(Cells[19, i]);
                            AdicoesCIDE_Aliquota.Value      := StrValor(gAdicoes.Cells[35, mLinha]);
                            AdicoesCIDE_ValorDevido.Value   := StrValor(gAdicoes.Cells[36, mLinha]);
                            AdicoesCIDE_ValorRecolher.Value := StrValor(gAdicoes.Cells[37, mLinha]);
                    Adicoes.Post;

                    mTotalCIDEDev := mTotalCIDEDev + AdicoesCIDE_ValorDevido.Value;
                    mTotalCIDERec := mTotalCIDERec + AdicoesCIDE_ValorRecolher.Value;

                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                    Application.ProcessMessages;
                end;
           end;

           // Gera os lançamentos dos impostos e taxas no financeiro.
           GeraFinanceiro;

           // Verifica todos itens da di pra saber se o código do fornecedor e o numero do pedido foram importados corretamente.
           if Trim(ConfiguracaoSISCOMEX_MascaraReferencia.AsString) <> '' then begin
              tPesquisa2.SQL.Clear;
              tPesquisa2.SQL.Add('SELECT * FROM Adicoes WHERE DI = :pDI AND ISNULL(Ordem, 0) = 0 AND ISNULL(Pedido, '''') = '''' ');
              tPesquisa2.Open;

              if tPesquisa2.RecordCount > 0 then begin
                 while not tPesquisa2.Eof do begin
                       cAvisos.Lines.Add( 'DI: '+cDI.Text + '      Adição:'+tPesquisa2.FieldByName('Adicao').AsString+ '     Item:'+tPesquisa2.FieldByName('Sequencia').AsString + '           Faltando o código do fabricante e/ou número do pedido do cliente.');
                       tPesquisa2.Next;
                 end;
              end;
           end;

           // Cadastro dos Serias/Chassis caso aja.
           DISeriais.SQL.Clear;
           DISeriais.SQL.Add('DELETE FROM DISeriais WHERE DI = :pDI');
           DISeriais.ParamByName('pDI').AsString := cDI2.Text;
           DISeriais.Execute;
           DISeriais.SQL.Clear;
           DISeriais.SQL.Add('SELECT * FROM DISeriais WHERE DI = :pDI');
           DISeriais.ParamByName('pDI').AsString := cDI2.Text;
           DISeriais.Open;

           Janela_Processamento.Progresso.Max      := gSeriais.RowCount -1;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Importando os Seriais/Chassis: '+FormatMaskText('99/9999999-9;0', cDI2.Text);

           with gSeriais do begin
                tCodigo.SQL.Clear;
                tCodigo.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM DISeriais');
                for i := 1 to RowCount -1 do begin
                    if cells[4,i] <> '' then begin
                       tCodigo.Open;
                       DISeriais.Append;
                                 DISeriaisRegistro.Value        := tCodigo.FieldByName('Registro').AsInteger;
                                 DISeriaisDI.Value              := cDI2.Text;
                                 DISeriaisAdicao.Value          := StrtoInt(Cells[0, i]);
                                 DISeriaisItem.Value            := StrtoInt(Cells[1, i]);
                                 DISeriaisNCM.Value             := Cells[2, i];
                                 DISeriaisProduto_Codigo.Value  := StrtoInt(Cells[3, i]);
                                 DISeriaisSerial.Value          := Cells[4, i];
                       DISeriais.Post;
                       tCodigo.Close;

                       Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                       Application.ProcessMessages;
                    end;
                end;
           end;

           // Adiciona o histórico no follow-up do processo.
           ProcessosHistorico.SQL.Clear;
           ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE(Processo = :pProcesso) ORDER BY Data Desc, Hora Desc');
           ProcessosHistorico.ParamByName('pProcesso').AsString := Trim(ProcessosDOCProcesso.AsString);
           ProcessosHistorico.Open;

           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT ISNULL(MAX(Numero), 0)+1 AS Numero FROM ProcessosHistorico');
           tCodigo.Open;

           ProcessosHistorico.Append;
                              ProcessosHistoricoNumero.Value    := tCodigo.FieldByName('Numero').AsInteger;
                              ProcessosHistoricoData.Value      := Date;
                              ProcessosHistoricoHora.Value      := TimetoStr(Time);
                              ProcessosHistoricoProcesso.Value  := ProcessosDOCProcesso.AsString;
                              ProcessosHistoricoDescricao.Value := 'Abertura do processo (Importada a DI).';
                              ProcessosHistoricoDocumento.Value := ProcessosDOCProcesso.AsString;
           ProcessosHistorico.Post;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE isnull(Desativado, 0) = 0 AND Modalidade = :pModal ');
           Produtos.ParamByName('pModal').AsInteger := cModalidade.KeyValue;
           Produtos.Open;

           // Coloca o numero da DI no cadastro do BL.
           if trim(cBL.Text) <> '' then begin
              with ControleNaviosBL do begin
                   sql.clear;
                   sql.add('select * from ControleNaviosBL where Navio = :pNavio and BL = :pBL');
                   ParamByName('pNavio').value := tBL.fieldbyname('Navio').asinteger;
                   ParamByName('pBL').value    := tBL.fieldbyname('BL').asstring;
                   open;
                   if recordcount > 0 then begin
                      edit;
                          fieldbyname('DI').Value := cDI2.Text;
                      post;
                   end;
              end;
           end;

           ProcessosDOC.Edit;
                        ProcessosDOCCIDE_ValorDevido.Value   := mTotalCIDEDev;
                        ProcessosDOCCIDE_ValorRecolher.Value := mTotalCIDERec;
           ProcessosDOC.Post;

           PedidosItens.EnableControls;
           Pedidos.EnableControls;
           ProcessosDOC.EnableControls;
           Adicoes.EnableControls;
           Produtos.EnableControls;
           LocalDesembaraco.EnableControls;
           ProcessosTexto.EnableControls;
           Fornecedores.EnableControls;
           Fabricantes.EnableControls;
           PlanoContas.EnableControls;
           NCM.EnableControls;
           PagarReceber.EnableControls;
      End;

      Janela_Processamento.Close;

      // Exclui o arquivo ini de relacionamentos depois da DI importada.
      if FileExists(ExtractFilePath(Application.ExeName)+'\DI'+cDI2.Text+'.ini') then begin
         DeleteFile(ExtractFilePath(Application.ExeName)+'\DI'+cDI2.Text+'.ini');
      end;

      ShowMessage('Importação da DI '+cDI2.Text+' terminada.');
      bImportar.Enabled  := true;
      bVerificar.Enabled := true;
      bCotacao.Enabled   := true;
      bUnidade.Enabled   := true;
      bSair.Enabled      := true;
end;

Function TUtilitarios_ImportarSISCOMEXWEBXML.PesquisaStringGrid(pGrid: TStringGrid; pCol: Integer; pPesquisa:String): Integer;
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

procedure TUtilitarios_ImportarSISCOMEXWEBXML.TotalizaFOB;
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
                     cFOBME.Value := cFOBME.Value + Roundto(( (StrValor(Cells[6, i]) + StrValor(Cells[7, i])) * StrValor(Cells[5, i])), -6)
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

procedure TUtilitarios_ImportarSISCOMEXWEBXML.cValoracaoClick(Sender: TObject);
begin
      TotalizaFOB;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.GeraFinanceiro;
Var
    i: Integer;
begin
      With Dados, dmContab do begin
           Janela_Processamento.Progresso.Max      := gPagamentos.RowCount-1+3;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Gerando lançamentos de impostos no financeiro...';

           // Verifica se os lançamentos de impostos da DI já foram baixados.
           tBaixados.SQL.Clear;
           tBaixados.SQL.Add('SELECT COUNT(*) AS Baixados FROM PagarReceber WHERE(Fiscal = :pFiscal) AND (Tipo_Nota = ''CX'') AND ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)),0) > 0');
           tBaixados.ParamByName('pFiscal').AsString := ProcessosDOC.FieldByName('Numero_Declaracao').AsString;
           tBaixados.Open;

           if tBaixados.FieldByName('Baixados').AsInteger = 0 then begin
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

              with tPagarReceberBaixa do begin
                   sql.Clear;
                   SQL.Add('select isnull(max(Registro), 0)+1 AS Registro from PagarReceberBaixas');
              end;
              with tPagarReceber do begin 
                   sql.Clear;
                   sql.Add('select isnull(max(Numero), 0)+1 AS Numero from PagarReceber');
              end;
              {
              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE Documento = :pDoc AND Data_Documento = :pData');
              Lancamentos.ParamByName('pDoc').AsString := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
              Lancamentos.ParamByName('pData').AsDate  := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
              Lancamentos.Execute;

              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE Data = :pData');
              Lancamentos.ParamByName('pData').AsDate := Date;
              Lancamentos.Open;

              tLancamentos.SQL.Clear;
              tLancamentos.SQL.Add('SELECT  Numero   = (SELECT MAX(Numero)   FROM Lancamentos WHERE YEAR(Data) = :pAno)');
              tLancamentos.SQL.Add('       ,Registro = (SELECT MAX(Registro) FROM Lancamentos)');
              tLancamentos.ParamByName('pAno').AsInteger := YearOf(Date);
              tLancamentos.Open;

              Historicos.SQL.Clear;
              Historicos.SQL.Add('SELECT * FROM HistoricoPadrao');
              Historicos.Open;
              }
              if (not cDA.Checked) and (not cSuspensao.Checked) then begin
                 with gPagamentos do begin
                      for i := 1 to RowCount -1 do begin
                          if (Trim(Cells[1, i]) <> '') and (StrValor(Cells[9, i]) > 0) then begin
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
                                          PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                                          PagarReceberMulta.Value            := 0;
                                          PagarReceberJuros.Value            := 0;
                                          PagarReceberDesconto.Value         := 0;
                                          PagarReceberValor_Baixado.Value    := 0;

                                          // Verifica o código de COFINS para pegar o valor sem a mojoração, pois o resto e lançado na diferença de COFINS.
                                          if Trim(Cells[0, i]) <> '5629' then begin
                                             PagarReceberValor_Documento.Value := StrValor(Cells[9, i]);
                                             PagarReceberValor_Parcela.Value   := StrValor(Cells[9, i]);
                                             PagarReceberValor_Total.Value     := StrValor(Cells[9, i]);
                                             PagarReceberValor_Operacao.Value  := StrValor(Cells[9, i]);
                                             if Trim(cBanco.Text) <> '' then
                                                PagarReceberValor_Baixado.Value := StrValor(Cells[9, i])
                                          end else begin
                                             PagarReceberValor_Documento.Value := ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency;
                                             PagarReceberValor_Parcela.Value   := ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency;
                                             PagarReceberValor_Total.Value     := ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency;
                                             PagarReceberValor_Operacao.Value  := ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency;
                                             if Trim(cBanco.Text) <> '' then
                                                PagarReceberValor_Baixado.Value := ProcessosDOC.FieldByName('Valor_COFINS2').AsCurrency;
                                          end;
                                          PagarReceberEmpresa.Value := Menu_Principal.mEmpresa;
                                          PagarReceberFilial.Value  := Empresas.FieldByName('Numero_Filial').asinteger;
                             PagarReceber.Post;
                             tPagarReceber.Close;

                             // Lançamento da baixa.
                             if Trim(cBanco.Text) <> '' then begin
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
                             end;

                             {
                             // Lançamento contabil - Provisão.
                             ChecaConta(ClassificacaoFinanceiraProvisao_ContaD.AsString, ClassificacaoFinanceiraProvisao_ContaC.AsString);
                             if (mContaDebito <> '') or (mContaCredito <> '') then begin
                                Historicos.Locate('Codigo', ClassificacaoFinanceiraProvisao_Historico.AsInteger, [loCaseInsensitive]);
                                tLancamentos.Open;
                                Lancamentos.Append;
                                            LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').AsInteger+1;
                                            LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').AsInteger+1;
                                            LancamentosData.Value                  := PagarReceberData_Documento.AsDateTime;
                                            LancamentosEmpresa.Value               := EmpresasCNPJ.asstring;
                                            LancamentosConta_Debito.Value          := mContaDebito;
                                            LancamentosConta_Credito.Value         := mContaCredito;
                                            LancamentosValor.Value                 := PagarReceberValor_Total.AsCurrency;
                                            LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.AsInteger;
                                            LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                                            LancamentosDocumento.Value             := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                            LancamentosData_Documento.Value        := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                            LancamentosTipo_Documento.Value        := 'CX';
                                            LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                            LancamentosOrigem.Value                := 'IMPORTAÇÃO DE DI> ' + FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                            LancamentosNumero_Financeiro.Value     := PagarReceber.FieldByName('Numero').Value;
                                Lancamentos.Post;
                                tLancamentos.Close;
                             end;

                             // Lançamento contabil - Pagamento.
                             if Trim(cBanco.Text) <> '' then begin
                                if PagarReceberTipo.Value = 'P' then
                                   ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, BancosPlano_Contas.AsString)
                                else
                                   ChecaConta(BancosPlano_Contas.AsString, ClassificacaoFinanceiraPagamento_Conta.AsString);

                                if (mContaDebito <> '') or (mContaCredito <> '') then begin
                                   Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);
                                   tLancamentos.Open;
                                   Lancamentos.Append;
                                               LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').AsInteger+1;
                                               LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').AsInteger;
                                               LancamentosData.Value                  := PagarReceberBaixasData.AsDateTime;
                                               LancamentosConta_Debito.Value          := mContaDebito;
                                               LancamentosConta_Credito.Value         := mContaCredito;
                                               LancamentosValor.Value                 := PagarReceberBaixasValor.AsCurrency;
                                               LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraPagamento_Historico.AsInteger;
                                               LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                                               LancamentosDocumento.Value             := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                               LancamentosData_Documento.Value        := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                               LancamentosTipo_Documento.Value        := 'CX';
                                               LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                               LancamentosOrigem.Value                := 'IMPORTAÇÃO DE DI> ' + FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                               LancamentosNumero_Financeiro.Value     := PagarReceber.FieldByName('Numero').Value;
                                   Lancamentos.Post;
                                   tLancamentos.Close;
                                end;
                             end;
                             }
                          end;

                          Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                          Application.ProcessMessages;
                      end;
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
                                    PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                    PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
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
                       {
                       // Lançamento contabil - Provisão.
                       ChecaConta(ClassificacaoFinanceiraProvisao_ContaD.AsString, ClassificacaoFinanceiraProvisao_ContaC.AsString);
                       If (mContaDebito <> '') or (mContaCredito <> '') then begin
                          Historicos.Locate('Codigo', ClassificacaoFinanceiraProvisao_Historico.AsInteger, [loCaseInsensitive]);
                          tLancamentos.Open;
                          Lancamentos.Append;
                                      LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').AsInteger+1;
                                      LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').AsInteger+1;
                                      LancamentosData.Value                  := PagarReceberData_Documento.AsDateTime;
                                      LancamentosConta_Debito.Value          := mContaDebito;
                                      LancamentosConta_Credito.Value         := mContaCredito;
                                      LancamentosValor.Value                 := PagarReceberValor_Total.AsCurrency;
                                      LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.AsInteger;
                                      LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                                      LancamentosDocumento.Value             := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                      LancamentosData_Documento.Value        := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                      LancamentosTipo_Documento.Value        := 'CX';
                                      LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                      LancamentosOrigem.Value                := 'IMPORTAÇÃO DE DI> ' + FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                      LancamentosNumero_Financeiro.Value     := PagarReceber.FieldByName('Numero').Value;
                          Lancamentos.Post;
                          tLancamentos.Close;
                       End;

                       // Lançamento contabil - Pagamento.
                       If Trim(cBanco.Text) <> '' then begin
                          If PagarReceberTipo.Value = 'P' then
                             ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, BancosPlano_Contas.AsString)
                          else
                             ChecaConta(BancosPlano_Contas.AsString, ClassificacaoFinanceiraPagamento_Conta.AsString);

                          If (mContaDebito <> '') or (mContaCredito <> '') then begin
                             Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);

                             tLancamentos.Open;
                             Lancamentos.Append;
                                         LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').AsInteger+1;
                                         LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').AsInteger+1;
                                         LancamentosData.Value                  := PagarReceberBaixasData.AsDateTime;
                                         LancamentosConta_Debito.Value          := mContaDebito;
                                         LancamentosConta_Credito.Value         := mContaCredito;
                                         LancamentosValor.Value                 := PagarReceberBaixasValor.AsCurrency;
                                         LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraPagamento_Historico.AsInteger;
                                         LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                                         LancamentosDocumento.Value             := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                         LancamentosData_Documento.Value        := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                         LancamentosTipo_Documento.Value        := 'CX';
                                         LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                         LancamentosOrigem.Value                := 'IMPORTAÇÃO DE DI> ' + FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                         LancamentosNumero_Financeiro.Value     := PagarReceber.FieldByName('Numero').Value;
                             Lancamentos.Post;
                             tLancamentos.Close;
                          End;
                       End;
                       }
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
                                    PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                    PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
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
                       {
                       // Lançamento contabil - Provisão.
                       ChecaConta(ClassificacaoFinanceiraProvisao_ContaD.AsString, ClassificacaoFinanceiraProvisao_ContaC.AsString);
                       If (mContaDebito <> '') or (mContaCredito <> '') then begin
                          Historicos.Locate('Codigo', ClassificacaoFinanceiraProvisao_Historico.AsInteger, [loCaseInsensitive]);
                          tLancamentos.Open;
                          Lancamentos.Append;
                                      LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').AsInteger+1;
                                      LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').AsInteger+1;
                                      LancamentosData.Value                  := PagarReceberData_Documento.AsDateTime;
                                      LancamentosConta_Debito.Value          := mContaDebito;
                                      LancamentosConta_Credito.Value         := mContaCredito;
                                      LancamentosValor.Value                 := PagarReceberValor_Total.AsCurrency;
                                      LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.AsInteger;
                                      LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                                      LancamentosDocumento.Value             := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                      LancamentosData_Documento.Value        := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                      LancamentosTipo_Documento.Value        := 'CX';
                                      LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                      LancamentosOrigem.Value                := 'IMPORTAÇÃO DE DI> ' + FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                      LancamentosNumero_Financeiro.Value     := PagarReceber.FieldByName('Numero').Value;
                          Lancamentos.Post;
                          tLancamentos.Close;
                       End;

                       // Lançamento contabil - Pagamento.
                       If Trim(cBanco.Text) <> '' then begin
                          If PagarReceberTipo.Value = 'P' then
                             ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, BancosPlano_Contas.AsString)
                          else
                             ChecaConta(BancosPlano_Contas.AsString, ClassificacaoFinanceiraPagamento_Conta.AsString);

                          If (mContaDebito <> '') or (mContaCredito <> '') then begin
                             Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);
                             tLancamentos.Open;
                             Lancamentos.Append;
                                         LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').AsInteger+1;
                                         LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').AsInteger+1;
                                         LancamentosData.Value                  := PagarReceberBaixasData.AsDateTime;
                                         LancamentosConta_Debito.Value          := mContaDebito;
                                         LancamentosConta_Credito.Value         := mContaCredito;
                                         LancamentosValor.Value                 := PagarReceberBaixasValor.AsCurrency;
                                         LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraPagamento_Historico.AsInteger;
                                         LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                                         LancamentosDocumento.Value             := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                         LancamentosData_Documento.Value        := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                         LancamentosTipo_Documento.Value        := 'CX';
                                         LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                         LancamentosOrigem.Value                := 'IMPORTAÇÃO DE DI> ' + FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                         LancamentosNumero_Financeiro.Value     := PagarReceber.FieldByName('Numero').Value;
                             Lancamentos.Post;
                             tLancamentos.Close;
                          End;
                       End;
                       }
                       Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                       Application.ProcessMessages;
                    End;
                 End;

                 // Lançamento da AFRMM.
                 if TiposProcesso.FieldByName('Classificacao_AFRMM').AsString <> '' then begin
                    if cAFRMMReal.Value > 0 then begin
                       ClassificacaoFinanceira.Locate('Codigo', TiposProcesso.FieldByName('Classificacao_AFRMM').AsString, [loCaseInsensitive]);
                       tPagarReceber.Open;
                       PagarReceber.Append;
                                    PagarReceberNumero.Value           := tPagarReceber.FieldByName('Numero').AsInteger + 1;
                                    PagarReceberClassificacao.Value    := TiposProcesso.FieldByName('Classificacao_AFRMM').AsString;
                                    PagarReceberTipo.Value             := ClassificacaoFinanceira.FieldByName('Tipo').AsString;
                                    PagarReceberData_Documento.Value   := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                    PagarReceberData_Vencimento.Value  := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                    PagarReceberValor_Documento.Value  := cAFRMMReal.Value;
                                    PagarReceberValor_Parcela.Value    := cAFRMMReal.Value;
                                    PagarReceberMulta.Value            := 0;
                                    PagarReceberJuros.Value            := 0;
                                    PagarReceberDesconto.Value         := 0;
                                    PagarReceberValor_Total.Value      := cAFRMMReal.Value;
                                    PagarReceberValor_Operacao.Value   := cAFRMMReal.Value;
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
                                    PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                    PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                                    If Trim(cBanco.Text) <> '' then
                                       PagarReceberValor_Baixado.Value := cAFRMMReal.Value;
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
                       {
                       // Lançamento contabil - Provisão.
                       ChecaConta(ClassificacaoFinanceiraProvisao_ContaD.AsString, ClassificacaoFinanceiraProvisao_ContaC.AsString);
                       If (mContaDebito <> '') or (mContaCredito <> '') then begin
                          Historicos.Locate('Codigo', ClassificacaoFinanceiraProvisao_Historico.AsInteger, [loCaseInsensitive]);
                          tLancamentos.Open;
                          Lancamentos.Append;
                                      LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').AsInteger+1;
                                      LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').AsInteger+1;
                                      LancamentosData.Value                  := PagarReceberData_Documento.AsDateTime;
                                      LancamentosConta_Debito.Value          := mContaDebito;
                                      LancamentosConta_Credito.Value         := mContaCredito;
                                      LancamentosValor.Value                 := PagarReceberValor_Total.AsCurrency;
                                      LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.AsInteger;
                                      LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                                      LancamentosDocumento.Value             := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                      LancamentosData_Documento.Value        := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                      LancamentosTipo_Documento.Value        := 'CX';
                                      LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                      LancamentosOrigem.Value                := 'IMPORTAÇÃO DE DI> ' + FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                      LancamentosNumero_Financeiro.Value     := PagarReceber.FieldByName('Numero').Value;
                          Lancamentos.Post;
                          tLancamentos.Close;
                       End;

                       // Lançamento contabil - Pagamento.
                       If Trim(cBanco.Text) <> '' then begin
                          If PagarReceberTipo.Value = 'P' then
                             ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, BancosPlano_Contas.AsString)
                          else
                             ChecaConta(BancosPlano_Contas.AsString, ClassificacaoFinanceiraPagamento_Conta.AsString);

                          If (mContaDebito <> '') or (mContaCredito <> '') then begin
                             Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);
                             tLancamentos.Open;
                             Lancamentos.Append;
                                         LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').AsInteger+1;
                                         LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').AsInteger+1;
                                         LancamentosData.Value                  := PagarReceberBaixasData.AsDateTime;
                                         LancamentosConta_Debito.Value          := mContaDebito;
                                         LancamentosConta_Credito.Value         := mContaCredito;
                                         LancamentosValor.Value                 := PagarReceberBaixasValor.AsCurrency;
                                         LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraPagamento_Historico.AsInteger;
                                         LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                                         LancamentosDocumento.Value             := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                         LancamentosData_Documento.Value        := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                         LancamentosTipo_Documento.Value        := 'CX';
                                         LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                         LancamentosOrigem.Value                := 'IMPORTAÇÃO DE DI> ' + FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                         LancamentosNumero_Financeiro.Value     := PagarReceber.FieldByName('Numero').Value;
                             Lancamentos.Post;
                             tLancamentos.Close;
                          End;
                       End;
                       }
                       Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                       Application.ProcessMessages;
                    end;
                 end;
                 
                 // Lançamento da TUP.
                 if TiposProcesso.FieldByName('Classificacao_TUP').AsString <> '' then begin
                    if cTUPReal.Value > 0 then begin
                       ClassificacaoFinanceira.Locate('Codigo', TiposProcesso.FieldByName('Classificacao_TUP').AsString, [loCaseInsensitive]);
                       tPagarReceber.Open;
                       PagarReceber.Append;
                                    PagarReceberNumero.Value           := tPagarReceber.FieldByName('Numero').AsInteger + 1;
                                    PagarReceberClassificacao.Value    := TiposProcesso.FieldByName('Classificacao_TUP').AsString;
                                    PagarReceberTipo.Value             := ClassificacaoFinanceira.FieldByName('Tipo').AsString;
                                    PagarReceberData_Documento.Value   := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                    PagarReceberData_Vencimento.Value  := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsDateTime;
                                    PagarReceberValor_Documento.Value  := cTUPReal.Value;
                                    PagarReceberValor_Parcela.Value    := cTUPReal.Value;
                                    PagarReceberMulta.Value            := 0;
                                    PagarReceberJuros.Value            := 0;
                                    PagarReceberDesconto.Value         := 0;
                                    PagarReceberValor_Total.Value      := cTUPReal.Value;
                                    PagarReceberValor_Operacao.Value   := cTUPReal.Value;
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
                                    PagarReceberObservacao.Value       := 'Tarifa utilização Portuário (TUP)';
                                    PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                    PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                                    if Trim(cBanco.Text) <> '' then PagarReceberValor_Baixado.Value := cAFRMMReal.Value;
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
                       {
                       // Lançamento contabil - Provisão.
                       ChecaConta(ClassificacaoFinanceiraProvisao_ContaD.AsString, ClassificacaoFinanceiraProvisao_ContaC.AsString);
                       If (mContaDebito <> '') or (mContaCredito <> '') then begin
                          Historicos.Locate('Codigo', ClassificacaoFinanceiraProvisao_Historico.AsInteger, [loCaseInsensitive]);
                          tLancamentos.Open;
                          Lancamentos.Append;
                                      LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').AsInteger+1;
                                      LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').AsInteger+1;
                                      LancamentosData.Value                  := PagarReceberData_Documento.AsDateTime;
                                      LancamentosConta_Debito.Value          := mContaDebito;
                                      LancamentosConta_Credito.Value         := mContaCredito;
                                      LancamentosValor.Value                 := PagarReceberValor_Total.AsCurrency;
                                      LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.AsInteger;
                                      LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                                      LancamentosDocumento.Value             := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                      LancamentosData_Documento.Value        := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                      LancamentosTipo_Documento.Value        := 'CX';
                                      LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                      LancamentosOrigem.Value                := 'IMPORTAÇÃO DE DI> ' + FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                      LancamentosNumero_Financeiro.Value     := PagarReceber.FieldByName('Numero').Value;
                          Lancamentos.Post;
                          tLancamentos.Close;
                       End;

                       // Lançamento contabil - Pagamento.
                       If Trim(cBanco.Text) <> '' then begin
                          If PagarReceberTipo.Value = 'P' then
                             ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, BancosPlano_Contas.AsString)
                          else
                             ChecaConta(BancosPlano_Contas.AsString, ClassificacaoFinanceiraPagamento_Conta.AsString);

                          If (mContaDebito <> '') or (mContaCredito <> '') then begin
                             Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);
                             tLancamentos.Open;
                             Lancamentos.Append;
                                         LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').AsInteger+1;
                                         LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').AsInteger+1;
                                         LancamentosData.Value                  := PagarReceberBaixasData.AsDateTime;
                                         LancamentosConta_Debito.Value          := mContaDebito;
                                         LancamentosConta_Credito.Value         := mContaCredito;
                                         LancamentosValor.Value                 := PagarReceberBaixasValor.AsCurrency;
                                         LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraPagamento_Historico.AsInteger;
                                         LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                                         LancamentosDocumento.Value             := FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                         LancamentosData_Documento.Value        := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                                         LancamentosTipo_Documento.Value        := 'CX';
                                         LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                         LancamentosOrigem.Value                := 'IMPORTAÇÃO DE DI> ' + FormatMaskText('##/#######-#;0', ProcessosDOC.FieldByName('Numero_Declaracao').AsString);
                                         LancamentosNumero_Financeiro.Value     := PagarReceber.FieldByName('Numero').Value;
                             Lancamentos.Post;
                             tLancamentos.Close;
                          End;
                       End;
                       }
                       Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                       Application.ProcessMessages;
                    end;
                 end;
              end;
           end else begin
              cAvisos.Lines.Add('Lançamentos de impostos não foram recriados pois ja foram baixados.');
              cAvisos.Lines.Add('Estorne as baixas se deseja que o sistema recrie os lançamentos no financeiro.');
           end;
      End;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.ChecaConta(ContaD:String; ContaC:String);
begin
      mContaDebito  := '';
      mContaCredito := '';
      If (ApenasNumeros(ContaD) <> '') then mContaDebito  := Trim(ContaD);
      If (ApenasNumeros(ContaC) <> '') then mContaCredito := Trim(ContaC);

      Dados.Fornecedores.Locate('Codigo', Dados.PagarReceberFornecedor.Value, [loCaseInsensitive]);
      Dados.Clientes.Locate('Codigo', Dados.PagarReceberCliente.Value, [loCaseInsensitive]);
      Dados.Orgaos.Locate('Codigo', Dados.PagarReceberOrgao.Value, [loCaseInsensitive]);

      // Conta Debito.
      If ContaD = 'PROCESSO'     then mContaDebito := Trim(Dados.ProcessosDOCConta_Despesas.Value);
      If ContaD = 'CLIENTE'      then mContaDebito := Trim(Dados.ClientesConta_Ativo.AsString);
      If ContaD = 'FORNECEDOR'   then mContaDebito := Trim(Dados.OrgaosConta.AsString);
      If ContaD = 'DEVOLUÇÃO '   then mContaDebito := Trim(Dados.FornecedoresConta_Devolucao.AsString);
      If ContaD = 'BANCO'        then mContaDebito := Trim(Dados.BancosPlano_Contas.Value);
      If ContaD = 'ADIANTAMENTO' then begin
         If Dados.ClassificacaoFinanceiraTipo.AsString = 'R' then begin
            Dados.Clientes.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
            mContaDebito := Trim(Dados.ClientesConta_Adiantamento.AsString)
         end else begin
            Dados.Fornecedores.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
            mContaDebito := Trim(Dados.FornecedoresConta_Adiantamento.AsString);
         End;
      End;

      // Conta Credito.
      If ContaC = 'PROCESSO'     then mContaCredito := Trim(Dados.ProcessosDOCConta_Despesas.Value);
      If ContaC = 'CLIENTE'      then mContaCredito := Trim(Dados.ClientesConta_Ativo.AsString);
      If ContaC = 'FORNECEDOR'   then mContaCredito := Trim(Dados.OrgaosConta.AsString);
      If ContaC = 'DEVOLUÇÃO '   then mContaCredito := Trim(Dados.FornecedoresConta_Devolucao.AsString);
      If ContaC = 'BANCO'        then mContaCredito := Trim(Dados.BancosPlano_Contas.Value);
      If ContaC = 'ADIANTAMENTO' then begin
         If Dados.ClassificacaoFinanceiraTipo.AsString = 'R' then begin
            Dados.Clientes.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
            mContaCredito := Trim(Dados.ClientesConta_Adiantamento.AsString)
         end else begin
            Dados.Fornecedores.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
            mContaCredito := Trim(Dados.FornecedoresConta_Adiantamento.AsString);
         End;
      End;
end;

Function TUtilitarios_ImportarSISCOMEXWEBXML.ConverteHistorico(Historico: String):String;
Var
    i      : Integer;
    mPos   : Integer;
    mMacros: array[0..8] of String;
begin
      mMacros[0] := '<{BENEFICIARIO}>';
      mMacros[1] := '<{PROCESSO}>';
      mMacros[2] := '<{DI}>';
      mMacros[3] := '<{DESCRIÇÃO CLASSIFICAÇÃO FINANCEIRA}>';
      mMacros[4] := '<{TIPO DE DOCUMENTO}>';
      mMacros[5] := '<{Nº DOCUMENTO}>';
      mMacros[6] := '<{DATA DOCUMENTO}>';
      mMacros[7] := '<{BANCO}>';
      mMacros[8] := '<{OBSERVAÇÃO}>';
      Result     := Historico;

      For i := 0 to 8 do begin
          mPos := Pos(mMacros[i], Result);
          While mPos <> 0 do begin
                If mPos <> -1 then begin
                   If i = 0 then Result := RemoveCaracter(mMacros[0], Dados.TiposProcessoSISCOMEX_Orgao.AsString, Result);
                   If i = 1 then Result := RemoveCaracter(mMacros[1], Dados.ProcessosDOCProcesso.Text, Result);
                   If i = 2 then Result := RemoveCaracter(mMacros[2], Dados.ProcessosDOCNumero_Declaracao.AsString, Result);
                   If i = 3 then Result := RemoveCaracter(mMacros[3], Dados.ClassificacaoFinanceiraDescricao.AsString, Result);
                   If i = 4 then Result := RemoveCaracter(mMacros[4], Dados.TiposDocumentosDescricao.AsString, Result);
                   If i = 5 then Result := RemoveCaracter(mMacros[5], Dados.PagarReceberNumero_Documento.AsString, Result);
                   If i = 6 then Result := RemoveCaracter(mMacros[6], Dados.PagarReceberData_Documento.AsString, Result);
                   If i = 7 then Result := RemoveCaracter(mMacros[7], Dados.BancosNome.AsString, Result);
                   If i = 8 then Result := RemoveCaracter(mMacros[8], '', Result);

                   mPos := Pos(mMacros[i], Result );
                End;
          End;
      End;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.cDescricaoDragOver(Sender,Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
     Accept := Source is TRxDBGrid;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.cDescricaoDragDrop(Sender,Source: TObject; X, Y: Integer);
begin
     bAdCodigo.Click;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.mnBuscarClick(Sender: TObject);
begin
     keybd_event(VK_CONTROL,0,KEYEVENTF_EXTENDEDKEY or 0,0);
     keybd_event(ord('C'),0,0,0);
     keybd_event(VK_CONTROL,$45,KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP,0);

     Application.ProcessMessages;

     cPesquisa.Clear;
     cPesquisa.PasteFromClipboard;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.cURLClick(Sender: TObject);
begin
     If Internet then
        cBrowser.Navigate(cURL.Text)
     else
        Showmessage('Você esta sem conexão com a internet no momento!');
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bAtualizaClick(Sender: TObject);
begin
     cURLClick(Self);
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.cBLChange(Sender: TObject);
begin
     with Dados do begin
          if ConfiguracaoProcesso_Numero.AsString = 'MNB' then begin
             cProcesso.Text := concat(EmpresasMascara_Processo.AsString, ControleNaviosReferencia.AsString, ' - BL', tBL.FieldByName('BL').asstring);
          end;
     end;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.cBrowserDocumentComplete(Sender: TObject; const pDisp: IDispatch; var URL: OleVariant);
Var
    mMemo: TMemo;
    mHTML: TMemo;
    S:Variant;
begin
     S             := cBrowser.Document;
     mMemo         := TMemo.Create(Utilitarios_ImportarSISCOMEXWEBXML);
     mMemo.Visible := False;
     mMemo.Parent  := Utilitarios_ImportarSISCOMEXWEBXML;
     mMemo.Lines.Add(s.Body.innerHTML);

     if not DirectoryExists(Dados.ConfiguracaoPasta_SISCOMEXWEB.Value) then begin
        ForceDirectories(Dados.ConfiguracaoPasta_SISCOMEXWEB.Value);
     end;

     mMemo.Lines.SaveToFile(Dados.ConfiguracaoPasta_SISCOMEXWEB.Value+'\'+cDI.Text+'_'+inttostr(mBrowserPag)+'.txt');

     mHTML         := TMemo.Create(Utilitarios_ImportarSISCOMEXWEBXML);
     mHTML.Visible := False;
     mHTML.Parent  := Utilitarios_ImportarSISCOMEXWEBXML;

     If mBrowserPag = 1 then begin
        cUrl.Text := 'https://www1c.siscomex.receita.fazenda.gov.br/importacaoweb-7/ConsultarDIMenu.do';
        cBrowser.Navigate('https://www1c.siscomex.receita.fazenda.gov.br/importacaoweb-7/ConsultarDIMenu.do');
     End;
     If mBrowserPag = 2 then begin
        // Preenche o campo de DI na pagina de consulta.
        cBrowser.OleObject.Document.all.Item('nrDeclaracao', 0).Value := FormatMaskText('##/#######-#;0',cDI.text);

        // Executa o click no botão de consulta da DI.
        cBrowser.OleObject.Document.all.Item('enviar', 0).Click;
     End;
     If mBrowserPag = 3 then begin
        // Busca o XML do site da RFB.
        mHTML.Lines.Add('<html>');
        mHTML.Lines.Add('<HEAD>');
        mHTML.Lines.Add('</HEAD>');
        mHTML.Lines.Add('<BODY>');
        mHTML.Lines.Add('<FORM id=frmConsultaDiXML method=post name=ConsultarDiXmlForm action=https://www1c.siscomex.receita.fazenda.gov.br/importacaoweb-7/ConsultarDiXml.do>');
        mHTML.Lines.Add('<INPUT id=nrDeclaracaoXml type=hidden name=xml value= '+FormatMaskText('##/#######-#;0',cDI.text)+'@00' +'>');
        mHTML.Lines.Add('<INPUT id=consultarXmlDi type=submit value=XML>');
        mHTML.Lines.Add('</FORM><BR>');
        mHTML.Lines.Add('</BODY>');
        mHTML.Lines.Add('</HTML>');
        mHTML.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\Importa_HTML.html');
        cBrowser.Navigate('file:///'+ExtractFilePath(Application.ExeName)+'Importa_HTML.html');
     End;
     If mBrowserPag = 4 then begin
        // Executa o click no botão "XML" para efetuar o download da DI.
        //Timer1.Enabled := true;
        cBrowser.OleObject.Document.all.Item('consultarXmlDi', 0).Click;
     End;

     Inc(mBrowserPag);
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bBuscarClick(Sender: TObject);
begin
     If Trim(cDI.Text) <> '' then begin
        If FileExists(Dados.ConfiguracaoPasta_SISCOMEXWEB.Value+'\'+cDI.Text+'.xml') then begin
           DeleteFile(Dados.ConfiguracaoPasta_SISCOMEXWEB.Value+'\'+cDI.Text+'.xml');
        End;

        mBrowserPag := 1;
        cURL.Text   := 'https://www1c.siscomex.receita.fazenda.gov.br/siscomexImpweb-7/private_siscomeximpweb_inicio.do';
        cBrowser.Navigate('https://www1c.siscomex.receita.fazenda.gov.br/siscomexImpweb-7/private_siscomeximpweb_inicio.do');
     end else begin
        Showmessage('Não existe nenhum número de DI informado para consulta!');
     End;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bCotacaoClick(Sender: TObject);
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

procedure TUtilitarios_ImportarSISCOMEXWEBXML.Timer1Timer(Sender: TObject);
begin
     If FileExists(Dados.ConfiguracaoPasta_SISCOMEXWEB.Value+'\'+cDI.Text+'.xml') then begin
        //Timer1.Enabled := false;
        cXML.Text := Dados.ConfiguracaoPasta_SISCOMEXWEB.Value+'\'+cDI.Text+'.xml';
        AbrirDI;
        cPasta.ActivePageIndex := 1;
     End;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.ImportarSeriais1Click(Sender: TObject);
var
   i,Lin : integer;
   mMemo : TMemo;
   mProd : String;
begin
     mMemo         := TMemo.Create(Utilitarios_ImportarSISCOMEXWEBXML);
     mMemo.Visible := False;
     mMemo.Parent  := Utilitarios_ImportarSISCOMEXWEBXML;

     mProd := Copy(cDescricao.Text, Pos('<{', cDescricao.Text)+2, 15);
     mProd := Trim(Copy(mProd, 1, Pos('}>', mProd)-1));

     if mProd = '' then begin
        MessageDlg('o produto ainda não foi vinculado a um produto no cadastro de produtos!', mtError, [mbOK], 0);
        Abort;
     end;
     if cDescricao.SelLength = 0 then begin
        MessageDlg('Não há nenhum texto selecionado na caixa de descrição da mercadoria!'+#13+#13+'Selecione os números seriais que deseja importar.', mtInformation, [mbOK], 0);
        Abort;
     end;

     mMemo.Clear;
     mMemo.Text := RemoveCaracter('<{'+mProd+'}>', '', cDescricao.SelText);
     mMemo.Text := Trim(RemoveCaracter(',', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter(';', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter('|', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter(':', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter('/', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter('\', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter('.', #12, mMemo.Text));
     mMemo.Text := Trim(RemoveCaracter(' ', #12, mMemo.Text));
     
     with gSeriais do begin
          Lin := RowCount;
          if RowCount = 2 then Lin := 1;

          for i := 0 to mMemo.Lines.Count do begin
              if Trim(mMemo.Lines[i]) <> '' then begin
                 if not ProcuraSerial(RemoveCaracter(#12, '', mMemo.Lines[i])) then begin
                    Cells[00, Lin+i] := gProdutos.Cells[0, mgLin];
                    Cells[01, Lin+i] := gProdutos.Cells[1, mgLin];
                    Cells[02, Lin+i] := gProdutos.Cells[2, mgLin];
                    Cells[03, Lin+i] := mProd;
                    Cells[04, Lin+i] := RemoveCaracter(#12, '', mMemo.Lines[i]);
                 end;
                 RowCount := RowCount + 1;
              end;
          end;

          Lin := 0;
          for i := RowCount-1 downto 1 do begin
              if Trim(gSeriais.Cells[4, i]) = '' then Inc(Lin);
          end;
          RowCount := RowCount -Lin;

          cTotalSeriais.Value := RowCount -1;
     end;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.gProdutosSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
      mgLin := ARow;
end;

function TUtilitarios_ImportarSISCOMEXWEBXML.ProcuraSerial(Numero: String): boolean;
var
    i:integer;
begin
     result := false;
     with gSeriais do begin
          for i := 0 to RowCount-1 do begin
              if Cells[4, i] = Numero then result := true;
          end;
     end;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bLimparClick(Sender: TObject);
var i : integer;
begin
      with gSeriais do begin
           for i := 0 to RowCount -1 do Rows[i].Clear;
           FixedRows     := 1;
           RowCount      := 2;
           ColCount      := 5;

           Cells[00,0]  := 'AD';
           ColWidths[0] := 30;
           Cells[01,0]  := 'Item';
           ColWidths[1] := 30;
           Cells[02,0]  := 'NCM';
           ColWidths[2] := 80;
           Cells[03,0]  := 'Produto';
           ColWidths[3] := 160;
           Cells[04,0]  := 'Serial/Chassi';
           ColWidths[4] := 400;

           Cells[0, 1] := '';
           Cells[1, 1] := '';
           Cells[2, 1] := '';
           Cells[3, 1] := '';
           Cells[4, 1] := '';
           
           cTotalSeriais.Value := 0;
      end;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bPesqNavClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ControleNavios';
      PesquisaGerais.mCampo  := 'Ordem';
      PesquisaGerais.mCampo2 := 'Navio';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Status <> ''ENCERRADO'' ';
      PesquisaGerais.Showmodal;
      cNavio.keyvalue := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bUnidadeClick(Sender: TObject);
begin
     Cadastro_UnidadeMedida := TCadastro_UnidadeMedida.Create(Self);
     Cadastro_UnidadeMedida.Caption := Caption;
     Cadastro_UnidadeMedida.ShowModal;

     Dados.Unidades.SQL.Clear;
     Dados.Unidades.SQL.Add('SELECT * FROM UnidadeMedida');
     Dados.Unidades.Open;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bAdCodigoClick(Sender: TObject);
var
   aINI: TIniFile;
begin
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\DI'+cDI2.Text+'.ini');

      With Dados do begin
           // Registro o código do produto amarrado em um arquivo INI para evitar retrabalho de relacionamento.
           aINI.WriteString ('DI'+cDI2.Text, gProdutos.Cells[0, gProdutos.Row]+gProdutos.Cells[1, gProdutos.Row], ProdutosCodigo.AsString);

           If Pos('<{', gProdutos.Cells[3, gProdutos.Row]) <> 0 then begin
              gProdutos.Cells[3, gProdutos.Row] := Trim(Copy(gProdutos.Cells[3, gProdutos.Row], 1, Pos('<{', gProdutos.Cells[3, gProdutos.Row])-1));
           End;
           gProdutos.Cells[3, gProdutos.Row] := gProdutos.Cells[3, gProdutos.Row] + ' <{'+ Dados.ProdutosCodigo.AsString+'}>';
      End;
      cDescricao.Lines.Clear;
      cDescricao.Lines.Add(gProdutos.Cells[3, gProdutos.Row]);
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bRemCodigoClick(Sender: TObject);
var
   aINI: TIniFile;
begin
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\DI'+cDI2.Text+'.ini');

      with Dados do begin
           gProdutos.Cells[3, gProdutos.Row] := Trim(Copy(gProdutos.Cells[3, gProdutos.Row], 1, Pos('<{', gProdutos.Cells[3, gProdutos.Row])-1));
           // Remove o código do produto amarrado do arquivo INI.
           aINI.DeleteKey('Seção','Chave');
           aINI.DeleteKey('DI'+cDI2.Text, gProdutos.Cells[0, gProdutos.Row]+gProdutos.Cells[1, gProdutos.Row]);
      end;
      cDescricao.Lines.Clear;
      cDescricao.Lines.Add(gProdutos.Cells[3, gProdutos.Row]);
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bCAMEXAdClick(Sender: TObject);
var
    i      : Integer;
    mAdicao: String;
begin
      mAdicao := InputBox('Nº da Adição','Nº', mAdicao);
      For i := 0 to cCAMEX.Count-1 do begin
          If Copy(cCAMEX.Items[i], 1, 3) = PoeZero(3, StrtoInt(mAdicao)) then cCAMEX.Checked[i] := true;
      End;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bCAMEXTodosClick(Sender: TObject);
var
    i:Integer;
begin
      For i := 0 to cCAMEX.Count-1 do begin
          cCAMEX.Checked[i] := true;
      End;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bCAMEXDesmClick(Sender: TObject);
var
    i:Integer;
begin
      For i := 0 to cCAMEX.Count-1 do begin
          cCAMEX.Checked[i] := false;
      End;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.bTabPCClick(Sender: TObject);
begin
      Cadastro_Majoracao := TCadastro_Majoracao.Create(Self);
      Cadastro_Majoracao.Caption := Caption;
      Cadastro_Majoracao.Showmodal;
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.cModalidadeExit(Sender: TObject);
begin
      cXML.Enabled    := Trim(cModalidade.Text) <> '';
      bAbrir.Enabled  := Trim(cModalidade.Text) <> '';
      cDI.Enabled     := Trim(cModalidade.Text) <> '';
      bBuscar.Enabled := Trim(cModalidade.Text) <> '';
end;

procedure TUtilitarios_ImportarSISCOMEXWEBXML.cNavioExit(Sender: TObject);
begin
      with tBL do begin
           sql.Clear;
           sql.Add('select Navio');
           sql.add('      ,Navio_Nome = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)');
           sql.Add('      ,BL');
           sql.Add('      ,Laudo');
           sql.Add('      ,Data_Emissao');
           sql.add('from ControleNaviosBL cnb');
           sql.add('where cnb.Navio = :pNavio');
           sql.add('and BL not in(select Numero_BL from ProcessosDocumentos where Navio_Ordem = :pNavio)');
           ParamByName('pNavio').Asinteger := Dados.ControleNavios.fieldbyname('Ordem').asinteger;
           //sql.savetofile('c:\temp\Importacao_DI_Navios_BL.sql');
           Open;
      end;
end;



end.
