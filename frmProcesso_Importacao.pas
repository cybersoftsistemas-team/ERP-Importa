unit frmProcesso_Importacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.ComCtrls, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, RXDBCtrl, Mask, DB, Grids,
  DBGrids, DBAccess, MSAccess, Buttons, ImgList, Menus, FUNCOES, MaskUtils, RxLookup, DateUtils, RxDBComb, ComObj, system.UITypes, MemDS, RxCurrEdit, RxToolEdit, ShellApi, ClipBrd;

type
  TProcesso_Importacao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    bAdicoes: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox4: TGroupBox;
    StaticText3: TStaticText;
    StaticText14: TStaticText;
    StaticText35: TStaticText;
    cProcesso: TDBEdit;
    StaticText36: TStaticText;
    StaticText44: TStaticText;
    cCliente: TDBLookupComboBox;
    cDataAbertura: TDBDateEdit;
    cDataFechamento: TDBDateEdit;
    StaticText13: TStaticText;
    GroupBox2: TGroupBox;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    StaticText38: TStaticText;
    cFOBReal: TDBEdit;
    cFreteReal: TDBEdit;
    cICMS: TDBEdit;
    StaticText39: TStaticText;
    cSeguroReal: TDBEdit;
    cDiferido: TDBCheckBox;
    GroupBox1: TGroupBox;
    cFatura: TDBEdit;
    StaticText1: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    DBEdit7: TDBEdit;
    StaticText12: TStaticText;
    lDoc: TStaticText;
    cNumeroDOC: TDBEdit;
    StaticText15: TStaticText;
    DBEdit12: TDBEdit;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    cDataPrevista: TDBDateEdit;
    cDataChegada: TDBDateEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    cValor_ICMS: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    StaticText2: TStaticText;
    StaticText11: TStaticText;
    StaticText32: TStaticText;
    bConversor: TButton;
    StaticText34: TStaticText;
    DBEdit2: TDBEdit;
    StaticText41: TStaticText;
    DBEdit6: TDBEdit;
    tCodigoPlano: TMSQuery;
    tContaPlano: TMSQuery;
    StaticText47: TStaticText;
    cII: TDBEdit;
    StaticText48: TStaticText;
    DBEdit9: TDBEdit;
    StaticText49: TStaticText;
    cDataFatura: TDBDateEdit;
    StaticText51: TStaticText;
    tbProcesso: TMSQuery;
    DBCheckBox3: TDBCheckBox;
    TabSheet3: TTabSheet;
    StaticText37: TStaticText;
    StaticText33: TStaticText;
    StaticText45: TStaticText;
    StaticText6: TStaticText;
    DBEdit4: TDBEdit;
    StaticText10: TStaticText;
    DBEdit8: TDBEdit;
    StaticText19: TStaticText;
    DBEdit14: TDBEdit;
    StaticText18: TStaticText;
    cOrigem: TDBEdit;
    StaticText52: TStaticText;
    DBEdit13: TDBEdit;
    GroupBox3: TGroupBox;
    lDIDA: TStaticText;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    cDataRegistro_DI: TDBDateEdit;
    cDI: TDBEdit;
    DBDateEdit7: TDBDateEdit;
    DBRadioGroup1: TDBRadioGroup;
    cMoedaFOB: TDBLookupComboBox;
    cFOBME: TDBEdit;
    StaticText25: TStaticText;
    cMoedaFrete: TDBLookupComboBox;
    cFreteME: TDBEdit;
    StaticText56: TStaticText;
    cMoedaSeguro: TDBLookupComboBox;
    cSeguroME: TDBEdit;
    StaticText58: TStaticText;
    StaticText7: TStaticText;
    cVolumes: TDBEdit;
    StaticText27: TStaticText;
    DBEdit19: TDBEdit;
    StaticText28: TStaticText;
    cPesoLiquido: TDBEdit;
    StaticText29: TStaticText;
    DBEdit21: TDBEdit;
    StaticText42: TStaticText;
    DBEdit15: TDBEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    DBEdit17: TDBEdit;
    cAdValorem: TCurrencyEdit;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    StaticText24: TStaticText;
    cModalidade: TDBLookupComboBox;
    cIncentivo: TRxDBLookupCombo;
    StaticText26: TStaticText;
    cResponsavel: TDBLookupComboBox;
    tHistorico: TMSQuery;
    StaticText59: TStaticText;
    tMestre: TMSQuery;
    cProcessoMestre: TDBLookupComboBox;
    dstMestre: TDataSource;
    tMestreProcesso: TStringField;
    tItens: TMSQuery;
    tSoma: TMSQuery;
    cUFDesembaraco: TDBLookupComboBox;
    DBEdit16: TDBEdit;
    DBEdit23: TDBEdit;
    StaticText60: TStaticText;
    StaticText62: TStaticText;
    StaticText63: TStaticText;
    DBEdit25: TDBEdit;
    StaticText65: TStaticText;
    DBDateEdit4: TDBDateEdit;
    StaticText66: TStaticText;
    cValorFatura: TDBEdit;
    StaticText67: TStaticText;
    cDataBL: TDBDateEdit;
    TabSheet5: TTabSheet;
    GradeLista: TDBGrid;
    tContaLetra: TMSQuery;
    DBLookupComboBox3: TDBLookupComboBox;
    bAtivar: TButton;
    cDesativado: TDBCheckBox;
    tDemurrage: TMSQuery;
    GroupBox6: TGroupBox;
    StaticText75: TStaticText;
    DBDateEdit2: TDBDateEdit;
    DBEdit20: TDBEdit;
    DBEdit24: TDBEdit;
    StaticText71: TStaticText;
    cDataPrevRegistro: TDBDateEdit;
    bTodosTotais: TSpeedButton;
    StaticText73: TStaticText;
    StaticText74: TStaticText;
    StaticText68: TStaticText;
    cDataPrevFaturamento: TDBDateEdit;
    StaticText72: TStaticText;
    StaticText76: TStaticText;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    StaticText57: TStaticText;
    DBEdit30: TDBEdit;
    StaticText50: TStaticText;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    cCondicaoCambio: TRxDBLookupCombo;
    StaticText69: TStaticText;
    cCondicaoVenda: TRxDBLookupCombo;
    lExportador: TStaticText;
    cExportador: TDBLookupComboBox;
    bInvoice: TButton;
    tFatura: TMSQuery;
    RxDBLookupCombo1: TRxDBLookupCombo;
    StaticText70: TStaticText;
    TabSheet6: TTabSheet;
    Panel2: TPanel;
    StaticText77: TStaticText;
    StaticText78: TStaticText;
    StaticText79: TStaticText;
    StaticText80: TStaticText;
    StaticText81: TStaticText;
    StaticText82: TStaticText;
    StaticText83: TStaticText;
    StaticText84: TStaticText;
    cFiltroCondicaoCambio: TRxDBLookupCombo;
    StaticText85: TStaticText;
    cFiltroDataPrevistaIni: TDateEdit;
    cFiltroDataChegadaIni: TDateEdit;
    cFiltroDesembaracoIni: TDateEdit;
    bLimpar: TSpeedButton;
    cFiltroCliente: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    cFiltroCondicao: TRxDBLookupCombo;
    cFiltroResponsavel: TRxDBLookupCombo;
    cFiltroExportador: TRxDBLookupCombo;
    cFiltroFatura: TRxDBLookupCombo;
    tClientes: TMSQuery;
    dstClientes: TDataSource;
    tClientesCodigo: TIntegerField;
    tClientesNome: TStringField;
    tIncoterms: TMSQuery;
    dstCondicao: TDataSource;
    tIncotermsCodigo: TStringField;
    tIncotermsDescricao: TStringField;
    tUsuarios: TMSQuery;
    dstUsuarios: TDataSource;
    tUsuariosMatricula: TStringField;
    tUsuariosNome: TStringField;
    tFornecedores: TMSQuery;
    dstFornecedores: TDataSource;
    tFornecedoresCodigo: TIntegerField;
    tFornecedoresNome: TStringField;
    StaticText86: TStaticText;
    cTAxaSISCOMEX: TDBEdit;
    StaticText88: TStaticText;
    DBEdit31: TDBEdit;
    StaticText43: TStaticText;
    DBMemo2: TDBMemo;
    StaticText89: TStaticText;
    DBEdit32: TDBEdit;
    StaticText87: TStaticText;
    DBEdit18: TDBEdit;
    tMestreRecinto_Alfandegario: TStringField;
    tMestreUF_Desembaraco: TStringField;
    tMestreEspecie: TStringField;
    tMestreMoeda_FOB: TSmallintField;
    tMestreMoeda_Frete: TSmallintField;
    tMestreMoeda_Seguro: TSmallintField;
    tMestreTipo_Mercadoria: TIntegerField;
    tMestreNome_Transporte: TStringField;
    tMestreOrigem: TStringField;
    tMestreLocal_Embarque: TStringField;
    tMestreLocal_Desembarque: TStringField;
    tMestreNumero_DOC: TStringField;
    tMestreData_DOC: TDateTimeField;
    tMestreAgencia_Maritima: TStringField;
    tMestreNavio_DataPrevista: TDateTimeField;
    tMestreNavio_DataChegada: TDateTimeField;
    tMestreCliente: TIntegerField;
    tMestreConta_Impostos: TStringField;
    tMestreConta_Despesas: TStringField;
    tMestreFornecedor: TSmallintField;
    tMestreData_Fatura: TDateTimeField;
    tMestreDocumento_Carga: TStringField;
    tMestreIncentivo_Fiscal: TStringField;
    tMestrePais: TStringField;
    tMestreConta_Adiantamento: TStringField;
    tMestreModalidade_Importacao: TSmallintField;
    tMestreContainer_Numero: TStringField;
    tMestreData_BL: TDateTimeField;
    tMestreLocal_DesembaracoCodigo: TIntegerField;
    tMestreCodigo_PaisOrigem: TStringField;
    tMestreIncoterms: TStringField;
    StaticText90: TStaticText;
    DBDateEdit1: TDBDateEdit;
    DBCheckBox4: TDBCheckBox;
    TabSheet7: TTabSheet;
    DBGrid2: TDBGrid;
    bCadastroContainer: TButton;
    MenuCusto: TPopupMenu;
    mnMarcarCustoTodos: TMenuItem;
    mnDesmarcarCustoTodos: TMenuItem;
    StaticText53: TStaticText;
    cTipo: TRxDBComboBox;
    StaticText91: TStaticText;
    DBEdit26: TDBEdit;
    StaticText92: TStaticText;
    DBEdit33: TDBEdit;
    StaticText93: TStaticText;
    DBEdit34: TDBEdit;
    TabSheet8: TTabSheet;
    Grade2: TRxDBGrid;
    StaticText94: TStaticText;
    cTotalDespesas2: TCurrencyEdit;
    StaticText95: TStaticText;
    cTotalDespesasCusto2: TCurrencyEdit;
    StaticText96: TStaticText;
    cRecebimentos2: TCurrencyEdit;
    cTotalMestreDespesas2: TCurrencyEdit;
    cTotalMestreCusto2: TCurrencyEdit;
    cMestreRecebimentos2: TCurrencyEdit;
    cTotalPagamentos2: TCurrencyEdit;
    cTotalCusto2: TCurrencyEdit;
    cTotalRecebimentos2: TCurrencyEdit;
    StaticText102: TStaticText;
    cTotalDespesasSeletivo2: TCurrencyEdit;
    mnMarcarSeletivoTodos: TMenuItem;
    N1: TMenuItem;
    mnDesmarcarSeletivoTodos: TMenuItem;
    mnMarcarCusto: TMenuItem;
    mnDesmarcarCusto: TMenuItem;
    mnMarcarSeletivo: TMenuItem;
    mnDesmarcarSeletivo: TMenuItem;
    StaticText97: TStaticText;
    StaticText98: TStaticText;
    StaticText99: TStaticText;
    StaticText100: TStaticText;
    StaticText101: TStaticText;
    StaticText103: TStaticText;
    StaticText104: TStaticText;
    cFiltroDataBLIni: TDateEdit;
    StaticText105: TStaticText;
    cFiltroDataRegistroIni: TDateEdit;
    cFiltroDataPrevistaFim: TDateEdit;
    cFiltroDataChegadaFim: TDateEdit;
    cFiltroDesembaracoFim: TDateEdit;
    cFiltroDataBLFim: TDateEdit;
    cFiltroDataRegistroFim: TDateEdit;
    bExcel: TBitBtn;
    cFiltroDesativado: TCheckBox;
    StaticText106: TStaticText;
    cTotalDespesasEntrada: TCurrencyEdit;
    N2: TMenuItem;
    mnMarcarCustoEntrada: TMenuItem;
    mnDesmarcarCustoEntrada: TMenuItem;
    mnMarcarCustoTodosEntrada: TMenuItem;
    mnDesmarcarCustoTodosEntrada: TMenuItem;
    tCambios: TMSQuery;
    StaticText61: TStaticText;
    cTotalDespesasOutros2: TCurrencyEdit;
    N3: TMenuItem;
    mnMarcarCustoOutros: TMenuItem;
    mnDesmarcarCustoOutros: TMenuItem;
    mnMarcarCustoTodosOutros: TMenuItem;
    mnDesmarcarCustoTodosOutros: TMenuItem;
    StaticText64: TStaticText;
    DBEdit10: TDBEdit;
    StaticText107: TStaticText;
    DBCheckBox1: TDBCheckBox;
    StaticText108: TStaticText;
    DBEdit35: TDBEdit;
    StaticText109: TStaticText;
    DBEdit36: TDBEdit;
    StaticText110: TStaticText;
    cDataPrevFrete: TDBDateEdit;
    StaticText111: TStaticText;
    StaticText112: TStaticText;
    StaticText113: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    StaticText114: TStaticText;
    cDataPrevArmazem: TDBDateEdit;
    StaticText115: TStaticText;
    StaticText116: TStaticText;
    StaticText117: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit41: TDBEdit;
    cFiltroSituacao: TRadioGroup;
    tFornecedoresPrevisao: TMSQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dstFornecedoresPrevisao: TDataSource;
    StaticText118: TStaticText;
    DBDateEdit3: TDBDateEdit;
    StaticText119: TStaticText;
    StaticText120: TStaticText;
    cCSTPIS: TRxDBLookupCombo;
    cCSTCOFINS: TRxDBLookupCombo;
    cBCCredito: TRxDBComboBox;
    StaticText121: TStaticText;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    StaticText122: TStaticText;
    cConsignatarioCNPJ: TDBEdit;
    StaticText123: TStaticText;
    cConsignatarioUF: TDBEdit;
    StaticText124: TStaticText;
    DBEdit42: TDBEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    lVencimentoContrato: TRxLabel;
    Image1: TImage;
    tAdicoes: TMSQuery;
    TabSheet9: TTabSheet;
    RxDBGrid1: TRxDBGrid;
    bOrdem: TButton;
    StaticText125: TStaticText;
    DBDateEdit5: TDBDateEdit;
    DBCheckBox5: TDBCheckBox;
    bDespesas: TSpeedButton;
    StaticText126: TStaticText;
    DBEdit43: TDBEdit;
    StaticText127: TStaticText;
    DBDateEdit6: TDBDateEdit;
    StaticText128: TStaticText;
    DBEdit44: TDBEdit;
    StaticText129: TStaticText;
    DBEdit45: TDBEdit;
    tMestreVia_Transporte: TSmallintField;
    cVia: TDBLookupComboBox;
    DBCheckBox6: TDBCheckBox;
    StaticText130: TStaticText;
    cFOB_SemADVal: TCurrencyEdit;
    StaticText131: TStaticText;
    cFOB_SemADValReal: TCurrencyEdit;
    StaticText132: TStaticText;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    StaticText133: TStaticText;
    DBCheckBox7: TDBCheckBox;
    bHistorico: TButton;
    TabSheet10: TTabSheet;
    cListaDOC: TListBox;
    bDocumento: TBitBtn;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    TabSheet11: TTabSheet;
    GroupBox5: TGroupBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    cContaDespesas: TDBLookupComboBox;
    cContaImpostos: TDBLookupComboBox;
    cContaAdiant: TDBLookupComboBox;
    cCodImpostos: TDBEdit;
    cCodProcesso: TDBEdit;
    cCodAdiantamento: TDBEdit;
    StaticText40: TStaticText;
    StaticText46: TStaticText;
    StaticText23: TStaticText;
    bContas: TButton;
    Label2: TLabel;
    Label3: TLabel;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    DBGrid3: TDBGrid;
    tNotasNumero: TIntegerField;
    tNotasData_Emissao: TDateTimeField;
    tNotasHora_EntradaSaida: TStringField;
    tNotasTipo: TStringField;
    tNotasValor_TotalNota: TCurrencyField;
    tNotasOperacao: TStringField;
    tNotasCFOP: TStringField;
    StaticText134: TStaticText;
    cNavioOrdem: TDBLookupComboBox;
    DBEdit48: TDBEdit;
    StaticText135: TStaticText;
    cBloqEst: TDBCheckBox;
    StaticText136: TStaticText;
    DBLookupComboBox5: TDBLookupComboBox;
    tArmazem: TMSQuery;
    dstArmazem: TDataSource;
    StaticText137: TStaticText;
    DBEdit49: TDBEdit;
    StaticText139: TStaticText;
    DBEdit51: TDBEdit;
    StaticText140: TStaticText;
    DBEdit52: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    bFollow: TButton;
    StaticText138: TStaticText;
    DBEdit50: TDBEdit;
    StaticText141: TStaticText;
    DBEdit53: TDBEdit;
    StaticText142: TStaticText;
    DBEdit54: TDBEdit;
    DBDateEdit8: TDBDateEdit;
    StaticText143: TStaticText;
    cAdicoes: TCheckBox;
    cRecintoAlf: TDBLookupComboBox;
    bPesqCla: TSpeedButton;
    DBCheckBox9: TDBCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cDiferidoClick(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure bAdicoesClick(Sender: TObject);
    procedure cViaChange(Sender: TObject);
    procedure StaticText13Click(Sender: TObject);
    procedure StaticText14Click(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure cDIChange(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cProcessoChange(Sender: TObject);
    procedure cDataAberturaChange(Sender: TObject);
    procedure cVolumesChange(Sender: TObject);
    procedure cFOBMEChange(Sender: TObject);
    procedure cMoedaFOBClick(Sender: TObject);
    procedure cFreteMEChange(Sender: TObject);
    procedure cMoedaFreteClick(Sender: TObject);
    procedure cICMSChange(Sender: TObject);
    procedure cDataRegistro_DIChange(Sender: TObject);
    procedure cDataRegistro_DIExit(Sender: TObject);
    procedure bConversorClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure StaticText40Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure cClienteExit(Sender: TObject);
    procedure bAtivarClick(Sender: TObject);
    procedure GradeListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bTodosTotaisClick(Sender: TObject);
    procedure TotalizaDespesas;
    procedure StaticText69Click(Sender: TObject);
    procedure lExportadorClick(Sender: TObject);
    procedure bInvoiceClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure FiltraProcesso;
    procedure SpeedButton1Click(Sender: TObject);
    procedure TabSheet6Enter(Sender: TObject);
    procedure cProcessoMestreExit(Sender: TObject);
    procedure mnMarcarCustoTodosClick(Sender: TObject);
    procedure mnDesmarcarCustoTodosClick(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure bCadastroContainerClick(Sender: TObject);
    procedure Grade2DrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mnMarcarSeletivoTodosClick(Sender: TObject);
    procedure mnDesmarcarSeletivoTodosClick(Sender: TObject);
    procedure mnMarcarCustoClick(Sender: TObject);
    procedure Grade2CellClick(Column: TColumn);
    procedure AjustaMenu;
    procedure mnDesmarcarCustoClick(Sender: TObject);
    procedure bExcelClick(Sender: TObject);
    procedure mnMarcarCustoEntradaClick(Sender: TObject);
    procedure mnDesmarcarCustoEntradaClick(Sender: TObject);
    procedure mnMarcarCustoTodosEntradaClick(Sender: TObject);
    procedure mnDesmarcarCustoTodosEntradaClick(Sender: TObject);
    procedure mnMarcarSeletivoClick(Sender: TObject);
    procedure mnDesmarcarSeletivoClick(Sender: TObject);
    procedure Grade2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cDesativadoClick(Sender: TObject);
    procedure mnMarcarCustoOutrosClick(Sender: TObject);
    procedure mnDesmarcarCustoOutrosClick(Sender: TObject);
    procedure mnMarcarCustoTodosOutrosClick(Sender: TObject);
    procedure mnDesmarcarCustoTodosOutrosClick(Sender: TObject);
    procedure GradeListaCellClick(Column: TColumn);
    procedure cModalidadeExit(Sender: TObject);
    procedure ItensAdicoes;
    procedure bOrdemClick(Sender: TObject);
    procedure bDespesasClick(Sender: TObject);
    procedure bHistoricoClick(Sender: TObject);
    procedure bDocumentoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cListaDOCDblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure bContasClick(Sender: TObject);
    procedure cNavioOrdemExit(Sender: TObject);
    procedure cBloqEstClick(Sender: TObject);
    procedure bPesqClaClick(Sender: TObject);
  private
    procedure SalvaConta(Campo: integer);
    procedure PegaNotas;
    { Private declarations }
  public
    { Public declarations }
    mPesquisa,
    mProcesso,
    mNFEProcesso,
    mDI,
    mConta: String;
    mValorFatura: Real;
    mPlanilha: Variant;
    mLinha
   ,mLinha2: Integer;
    mFechou
   ,mBloq 
   ,mZebra: Boolean;
  end;

var
  Processo_Importacao: TProcesso_Importacao;

implementation

Uses frmDados, frmProcesso_Adicoes, frmCadastro_Incoterms,frmCadastro_Clientes, frmMenu_Principal, frmConversor_Moedas, frmDMContab, frmCadastro_PlanoContas,
     frmJanela_Processamento, frmProcesso_Desativar, frmCadastro_CondicaoCambial, frmCadastro_Fornecedores, frmDMFiscal, frmDMComercial, frmProcesso_Container,
     frmProcesso_PO, frmProcesso_ImportacaoDespesas, frmDMDespacho, frmProcesso_Historico, frmPesquisaGerais;

{$R *.dfm}

procedure TProcesso_Importacao.bSairClick(Sender: TObject);
begin
      mFechou := true;
      Close;
end;

procedure TProcesso_Importacao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         mValorFatura       := Dados.ProcessosDOCValor_FaturaME.AsCurrency;
         GradeLista.Enabled := false;
         If Button = nbInsert then begin
            PageControl1.ActivePageIndex              := 0;
            Dados.ProcessosDOCEntreposto.Value        := False;
            Dados.ProcessosDOCCourrier.Value          := False;
            Dados.ProcessosDOCTipo.Value              := 'IMPORTAÇÃO';
            Dados.ProcessosDOCResponsavel.Value       := Menu_Principal.mUsuarioCodigo;
            Dados.ProcessosDOCProcesso_Abertura.Value := Date;
            cProcessoMestre.Enabled                   := true;
            Dados.ProcessosDOCDesativado.Value        := False;
            Dados.ProcessosDOCExonerado.Value         := False;
         End;
         If Button = nbEdit then begin
            cProcessoMestre.Enabled := (Trim(Dados.ProcessosDOCProcesso_Mestre.AsString) = '') or (Menu_Principal.mUsuarioNome = 'ADMINISTRADOR'); 
         End;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         TabSheet1.Enabled  := True;
         TabSheet3.Enabled  := True;
         TabSheet8.Enabled  := True;
         TabSheet11.Enabled := True;
         bPesquisa.Enabled  := false;
         bConversor.Enabled := false;
         bAdicoes.Enabled   := false;
         bAtivar.Enabled    := false;
         bInvoice.Enabled   := false;
         bOrdem.Enabled     := false;

         cProcesso.Enabled := (not Dados.EmpresasProcesso_Automatico.Value) and (Dados.ProcessosDOC.State = dsInsert) ;
         If PageControl1.ActivePageIndex = 0 then begin
            If cProcesso.Enabled = true then
               cProcesso.SetFocus
            else
               If cProcesso.Enabled = true then
                  cProcessoMestre.SetFocus
               else
                  cIncentivo.SetFocus;
         End;

         bAdicoes.Enabled := False;
      End;

      If (Button = nbPost) or (Button = nbCancel) then Begin
         TabSheet1.Enabled  := False;
         TabSheet3.Enabled  := False;
         TabSheet8.Enabled  := False;
         TabSheet11.Enabled := false;
         bAdicoes.Enabled   := (Dados.ProcessosDOCNumero_Declaracao.Value <> '') or (Dados.ProcessosDOCCourrier.AsBoolean = true) ;
         mProcesso          := Dados.ProcessosDOCProcesso.AsString;
         bPesquisa.Enabled  := true;
         bConversor.Enabled := true;
         bAdicoes.Enabled   := true;
         bAtivar.Enabled    := true;
         bInvoice.Enabled   := true;
         bOrdem.Enabled     := true;
         GradeLista.Enabled := true;
      End;

      If (Button = nbPost) or (Button = nbDelete) then Begin
         Dados.ProcessosDOC.Refresh;
         Dados.ProcessosDOC.Locate('Processo', mProcesso, [loCaseInsensitive]);
      End;

      with Dados do begin
           with ProcessosHistorico do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM ProcessosHistorico WHERE (Processo = :pProcesso)');
                SQL.Add('ORDER BY Data, Hora DESC');
                ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
                Open;
           end;
           with Container do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Container WHERE(Processo = :pProcesso) ORDER BY Numero');
                ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
                Open;
           end;
      end;

      If (Button <> nbEdit) and (button <> nbInsert) then begin 
         TotalizaDespesas;
         PegaNotas;
      end;
end;

procedure TProcesso_Importacao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     If mNFEProcesso = '' then FecharTabelas(Dados, dmContab, dmfiscal, dmComercial);
     LimpaMemoria;
     Processo_Importacao.Release;
     Processo_Importacao := nil;
end;

procedure TProcesso_Importacao.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        mFechou       := false;
        mBloq         := false;
        PageControl1.ActivePageIndex := 0;

        With Dados, dmContab, dmDespacho do Begin
             FiltraProcesso;

             tMestre.SQL.Clear;
             tMestre.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(LTRIM(RTRIM(Processo_Mestre)) = '''' OR Processo_Mestre IS NULL) AND (Tipo = '+QuotedStr('IMPORTAÇÃO')+')');
             tMestre.SQL.Add('ORDER BY Processo');
             tMestre.Open;

             Clientes.SQL.Clear;
             Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
             Clientes.Open;

             Fornecedores.SQL.Clear;
             Fornecedores.SQL.Add('SELECT * FROM Fornecedores, RamoAtividade');
             Fornecedores.SQL.Add('WHERE  (Ramo_Atividade = RamoAtividade.Codigo) AND (RamoAtividade.Modulo_Processo = 1)');
             Fornecedores.SQL.Add('ORDER BY Nome');
             Fornecedores.Open;

             tFornecedoresPrevisao.SQL.Clear;
             tFornecedoresPrevisao.SQL.Add('SELECT Codigo, Nome FROM Fornecedores');
             tFornecedoresPrevisao.SQL.Add('ORDER BY Nome');
             tFornecedoresPrevisao.Open;

             Moedas.SQL.Clear;
             Moedas.SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
             Moedas.Open;

             Paises.SQL.Clear;
             Paises.SQL.Add('SELECT * FROM Paises ORDER BY Nome');
             Paises.Open;

             ClassificacaoFinanceira.SQL.Clear;
             ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) ORDER BY Descricao');
             ClassificacaoFinanceira.Open;
             
             Incoterms.SQL.Clear;
             Incoterms.SQL.Add('SELECT * FROM INCOTERMS ORDER BY Codigo');
             Incoterms.Open;

             Cotacao.SQL.Clear;
             Cotacao.SQL.Add('SELECT * FROM Cotacao');
             Cotacao.Open;

             TipoProduto.Open;

             Configuracao.Open;

             Empresas.SQL.Clear;
             Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
             Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
             Empresas.Open;

             PlanoContas.SQL.Clear;
             PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 0)');
             PlanoContas.Open;

             TiposProcesso.SQL.Clear;
             TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
             TiposProcesso.Open;

             TipoItem.SQL.Clear;
             TipoItem.SQL.Add('SELECT * FROM TipoItem ORDER BY Descricao');
             TipoItem.Open;

             IncentivosFiscais.SQL.Clear;
             IncentivosFiscais.SQL.Add('select * from incentivosfiscais where isnull(desativada,0) = 0 order by nome');
             IncentivosFiscais.Open;

             Usuarios.SQL.Clear;
             Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE (Ativo = 1) ORDER BY Nome');
             Usuarios.Open;

             Estados.SQL.Clear;
             Estados.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
             Estados.Open;

             LocalDesembaraco.SQL.Clear;
             LocalDesembaraco.SQL.Add('SELECT * FROM LocalDesembaraco ORDER BY Descricao');
             LocalDesembaraco.Open;

             with RecintosAduaneiros do begin
                  sql.Clear;
                  sql.Add('select * from RecintosAduaneiros order by Descricao');
                  open;
             end;

             CondicaoCambial.SQL.Clear;
             CondicaoCambial.SQL.Add('SELECT * FROM CondicaoCambial ORDER BY Codigo');
             CondicaoCambial.Open;

             Invoice.SQL.Clear;
             Invoice.SQL.Add('SELECT * FROM Invoice ORDER BY Numero');
             Invoice.Open;

             CSTPIS.SQL.Clear;
             CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo > 49) ORDER BY Codigo');
             CSTPIS.Open;

             CSTCOFINS.SQL.Clear;
             CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo > 49) ORDER BY Codigo');
             CSTCOFINS.Open;

             ViaTransporte.SQL.Clear;
             ViaTransporte.SQL.Add('SELECT * FROM ViaTransporte ORDER BY Descricao');
             ViaTransporte.Open;

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

             with ControleNavios do begin 
                  sql.Clear;
                  sql.Add('select * from ControleNavios where Status <> :pStatus');
                  ParamByName('pStatus').AsString := 'ENCERRADO';
                  Open;
             end;

             TotalizaDespesas;
             PegaNotas;

             If ProcessosDOCAd_Valorem.AsCurrency > 0 then begin
                cAdValorem.Value := (ProcessosDOCAd_Valorem.Value / ProcessosDOCTaxa_FOB.Value);
             End;
        End;

        Screen.Cursor := crDefault;
        cDataFechamento.Enabled := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';
        cTipo.Enabled           := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';
end;

procedure TProcesso_Importacao.cDiferidoClick(Sender: TObject);
begin
      cValor_ICMS.Enabled := not cDiferido.Checked;
      cICMS.Enabled       := not cDiferido.Checked;
end;

procedure TProcesso_Importacao.cProcessoExit(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do Begin
           If (ProcessosDOC.State = dsInsert) or (ProcessosDOC.State = dsEdit) then
               ProcessosDOCProcesso.Value := Trim(ProcessosDOCProcesso.Value);
     
           If ProcessosDOCAd_Valorem.AsCurrency > 0 then
              cAdValorem.Value := (ProcessosDOCAd_Valorem.Value / ProcessosDOCTaxa_FOB.Value);
      End;
      TotalizaDespesas;
      Screen.Cursor := crDefault;
end;

procedure TProcesso_Importacao.bAdicoesClick(Sender: TObject);
begin
      If Dados.ProcessosDOC.RecordCount <> 0 then begin
         Processo_Adicoes := TProcesso_Adicoes.Create(Self);
         Processo_Adicoes.Caption := 'Manutenção das adições da DI';
         Processo_Adicoes.ShowModal;
      End else begin
         MessageDlg('Não existe processo cadastrado !', mtInformation, [mbOK], 0);
      End;
end;

procedure TProcesso_Importacao.cViaChange(Sender: TObject);
begin
      If cVia.Text = 'MARÍTIMO'    then lDOC.Caption := 'BL Nº';
      If cVia.Text = 'AÉREO'       then lDOC.Caption := 'AWB Nº';
      If cVia.Text = 'RODOVIÁRIO'  then lDOC.Caption := 'CTR Nº';
      If cVia.Text = 'FERROVIÁRIO' then lDOC.Caption := 'CTR Nº';
end;

procedure TProcesso_Importacao.StaticText13Click(Sender: TObject);
begin
      {
      Dados.Usuarios.Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseinsensitive]);
      If Dados.UsuariosmnCadastro_Incoterms.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      }
      if not Permissao('mnCadastro_Incoterms') then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      end;
      Cadastro_Incoterms := TCadastro_Incoterms.Create(Self);
      Cadastro_Incoterms.caption := Caption;
      Cadastro_Incoterms.Showmodal;
      Dados.ProcessosDOCIncoterms.Value := Menu_Principal.mMem_Incoterm;
      Dados.Incoterms.Open;
end;

procedure TProcesso_Importacao.StaticText14Click(Sender: TObject);
begin
      {
      Dados.Usuarios.Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseinsensitive]);
      If Dados.UsuariosmnCadastro_Clientes.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      }
      if not Permissao('mnCadastro_Clientes') then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      end;
      
      Cadastro_Clientes := TCadastro_Clientes.Create(Self);
      Cadastro_Clientes.Caption := Caption;
      Cadastro_Clientes.ShowModal;
      Dados.ProcessosDOCCliente.Value := Menu_Principal.mMem_Cliente;
      Dados.Clientes.Open;
end;

procedure TProcesso_Importacao.GradeCellClick(Column: TColumn);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
          If (Column.FieldName = 'CustoConta') and (PagarReceberCustoConta.Value = True) then begin
             If MessageDlg('Deseja remover esta despesa do custo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                PagarReceber.Edit;
                             PagarReceberCustoConta.Value := False;
                PagarReceber.Post;
             End;
          End else begin
             If (Column.FieldName = 'CustoConta') and (PagarReceberCustoConta.Value = False) then begin
                If MessageDlg('Deseja acrecentar esta despesa do custo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                   PagarReceber.Edit;
                                PagarReceberCustoConta.Value := True;
                   PagarReceber.Post;
                End;
             End;
          End;

          // Pegando os despesas de custo do processo no financeiro.
          PagarReceber.First;

          cTotalDespesasCusto2.Value  := 0;
          cTotalDespesasEntrada.Value := 0;
          cTotalDespesas2.Value       := 0;
          cRecebimentos2.Value        := 0;

          While not PagarReceber.Eof do Begin
                If PagarReceberTipo.Value = 'P' then begin
                   cTotalDespesas2.Value := cTotalDespesas2.Value + PagarReceberValor_Total.Value;
                   If PagarReceberCustoConta.Value = True then begin
                      cTotalDespesasCusto2.Value := cTotalDespesasCusto2.Value + PagarReceberValor_Total.Value;
                   End;
                   If PagarReceberCusto_Entrada.Value = True then begin
                      cTotalDespesasEntrada.Value  := cTotalDespesasEntrada.Value + PagarReceberValor_Total.Value;
                   End;
                end else begin
                   cRecebimentos2.Value := cRecebimentos2.Value + PagarReceberValor_Total.Value;
                End;
                PagarReceber.Next;
          End;
      End;
      Screen.Cursor := crDefault;
end;

procedure TProcesso_Importacao.cDIChange(Sender: TObject);
begin
      bAdicoes.Enabled := (Dados.ProcessosDOCNumero_Declaracao.Value <> '') or (Dados.ProcessosDOCCourrier.AsBoolean = true) ;
      CDI.Color := clWindow;
end;

procedure TProcesso_Importacao.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
    mNat,
    mNomeConta,
    mGrupo    : String;
    i,
    mMovimento: Integer;
begin
      Navega.SetFocus;
      With Dados, dmContab do begin
           If Button = nbPost then begin
              cFOBME.Text    := RemoveCaracter('.','',cFOBME.Text);
              cFreteME.Text  := RemoveCaracter('.','',cFreteME.Text);
              cSeguroME.Text := RemoveCaracter('.','',cSeguroME.Text);

              PageControl1.ActivePageIndex := 0;

              If Trim(cCondicaoVenda.Text) = '' then begin
                 ShowMessage('Você deve informar qual a [Condição de Venda].');
                 cCondicaoVenda.SetFocus;
                 Abort;
              End;
              If Trim(RemoveCaracter('/', '', cDataAbertura.EditText)) = '' then begin
                 cDataAbertura.Color := clRed;
                 ShowMessage('Você deve informar a [Data da Abertura] do processo.');
                 cDataAbertura.SetFocus;
                 Abort;
              End;
              If Trim(cModalidade.Text) = '' then begin
                 ShowMessage('Você deve informar qual a [Modalidade] da importação.');
                 cModalidade.SetFocus;
                 Abort;
              End;
              If Trim(cMoedaFOB.Text) = '' then begin
                 ShowMessage('Você deve informar em qual [Moeda] esta o valor do FOB.');
                 cMoedaFOB.SetFocus;
                 Abort;
              End;
              If Trim(cMoedaFrete.Text) = '' then begin
                 ShowMessage('Você deve informar em qual [Moeda] esta o valor do Frete.');
                 cMoedaFrete.SetFocus;
                 Abort;
              End;
              If (Trim(cSeguroME.Text) <> '') and (StrtoCurr(cSeguroME.Text) <> 0) and (Trim(cMoedaSeguro.Text) = '') then begin
                 ShowMessage('Você deve informar em qual [Moeda] esta o valor do Seguro.');
                 cMoedaSeguro.SetFocus;
                 Abort;
              End;
              If (TiposProcesso.FieldByName('Exige_Cliente').AsBoolean = true) AND (Trim(cCliente.Text) = '') then begin
                 ShowMessage('Para esta modalidade de importação você deve informar o [Cliente].');
                 cCliente.SetFocus;
                 Abort;
              End;
              If ProcessosDOCConsignatario_CNPJ.AsString = '' then begin
                 PageControl1.ActivePageIndex := 1;
                 ShowMessage('Você deve informar o CNPJ do Consignatário!');
                 cConsignatarioCNPJ.SetFocus;
                 Abort;
              End;
              If ProcessosDOCConsignatario_UF.AsString = '' then begin
                 PageControl1.ActivePageIndex := 1;
                 ShowMessage('Você deve informar o Estado do Consignatário!');
                 cConsignatarioUF.SetFocus;
                 Abort;
              End;
              If EmpresasPISCOFINS_F100.AsBoolean then begin
                 If (TiposProcesso.FieldByName('Apuracao_PISCOFINS').AsBoolean = true) AND (Trim(cCSTPIS.Text) = '') then begin
                    PageControl1.ActivePageIndex := 1;
                    cCSTPIS.SetFocus;
                    ShowMessage('Para esta modalidade de importação você deve informar a "CST de PIS".');
                    Abort;
                 End;
                 If (TiposProcesso.FieldByName('Apuracao_PISCOFINS').AsBoolean = true) AND (Trim(cCSTCOFINS.Text) = '') then begin
                    PageControl1.ActivePageIndex := 1;
                    cCSTCOFINS.SetFocus;
                    ShowMessage('Para esta modalidade de importação você deve informar a "CST de COFINS".');
                    Abort;
                 End;
                 If (TiposProcesso.FieldByName('Apuracao_PISCOFINS').AsBoolean = true) AND (Trim(cBCCredito.Text) = '') then begin
                    PageControl1.ActivePageIndex := 1;
                    cBCCredito.SetFocus;
                    ShowMessage('Para esta modalidade de importação você deve informar o "Cód.B.C dos Créditos".');
                    Abort;
                 End;
              End;
              If ConfiguracaoProcesso_ObrigarFatura.AsBoolean = true then begin
                 If ProcessosDOCFornecedor.AsInteger <= 0 then begin
                    ShowMessage('Você deve informar qual o [Exportador] nos dados da fatura.');
                    cExportador.SetFocus;
                    Abort;
                 End;
                 If RemoveCaracter('/', '', ProcessosDOCNavio_DataPrevista.AsString) = '' then begin
                    ShowMessage('Você deve informar qual a [Data Prevista] nos dados da fatura.');
                    cDataPrevista.SetFocus;
                    Abort;
                 End;
                 If Trim(ProcessosDOCNumero_Fatura.AsString) = '' then begin
                    ShowMessage('Você deve informar qual o [Número da Fatura] nos dados da fatura.');
                    cFatura.SetFocus;
                    Abort;
                 End;
                 If RemoveCaracter('/', '', ProcessosDOCData_Fatura.AsString) = '' then begin
                    ShowMessage('Você deve informar qual a [Data da Fatura] nos dados da fatura.');
                    cDataFatura.SetFocus;
                    Abort;
                 End;
                 If ProcessosDOCValor_FaturaME.AsCurrency = 0 then begin
                    ShowMessage('Você deve informar qual a [Valor da Fatura] nos dados da fatura.');
                    cValorFatura.SetFocus;
                    Abort;
                 End;
                 If ProcessosDOCCondicao_Cambio.AsInteger = 0 then begin
                    ShowMessage('Você deve informar qual a [Condição de Câmbio] nos dados da fatura.');
                    cCondicaoCambio.SetFocus;
                    Abort;
                 End;
              End;
              If (ProcessosDOCCourrier.AsBoolean = true) and (Trim(ProcessosDOCNumero_DOC.AsString) = '') then begin
                 ShowMessage('Você deve informar qual o campo [Conhec.Embarque] nos dados da fatura.');
                 cNumeroDOC.SetFocus;
                 Abort;
              End;

              // Em caso de mudança do número da DI, ajusta os itens da adição com o novo número.
              if (ProcessosDOC.State = dsEdit) and (ProcessosDOCNumero_Declaracao.AsString <> mDI) then begin
                 Adicoes.SQL.Clear;
                 Adicoes.SQL.Add('UPDATE Adicoes SET DI = :pDINova WHERE DI = :pDIAntes');
                 Adicoes.ParamByName('pDINova').AsString  := ProcessosDOCNumero_Declaracao.Value;
                 Adicoes.ParamByName('pDIAntes').AsString := mDI;
                 Adicoes.Execute;
                 Adicoes.SQL.Clear;
                 Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI)');
                 Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
                 Adicoes.Open;
              end;

              If ProcessosDOC.State = dsInsert then begin
                 tbProcesso.SQL.Clear;
                 //tbProcesso.SQL.Add('SELECT Processo, Numero_Declaracao AS DI, Data_RegistroDeclaracao AS Data FROM ProcessosDocumentos WHERE(Numero_Declaracao = :pDI)');
                 tbProcesso.SQL.Add('SELECT Processo, Numero_Declaracao AS DI, Data_RegistroDeclaracao AS Data FROM ProcessosDocumentos WHERE(Numero_Declaracao = :pDI)');
                 tbProcesso.ParamByName('pDI').AsString := Trim(cDI.Text);
                 tbProcesso.Open;
                 If tbProcesso.RecordCount > 0 then begin
                    ShowMessage('Já existe um outro processo cadastrado com este número de DI!'+#13+#13+'Processo: '+tbProcesso.FieldByName('Processo').AsString+ '   DI: '+tbProcesso.FieldByName('DI').AsString+ '  de  '+tbProcesso.FieldByName('Data').AsString);
                    cProcesso.SetFocus;
                    Abort;
                 End;
              End;

              if ProcessosDOC.State = dsInsert then begin
                 ProcessosDOCApuracao_PISCOFINS.Value := TiposProcessoApuracao_PISCOFINS.AsBoolean;
              end;
              ProcessosDOCUltima_Atualizacao.Value := now;

              If ProcessosDOC.State = dsInsert then begin
                 If EmpresasProcesso_Automatico.AsBoolean then begin
                    // Verificações do número do processo.
                    If Trim(EmpresasMascara_Processo.AsString) <> '' then begin
                       if Trim(Dados.ConfiguracaoProcesso_Numero.AsString) <> 'MNB' then begin
                           ProcessosDOCProcesso.Value := NumeroProcesso(EmpresasMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, YearOf(Date), Trim(Dados.ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                       end else begin
                           ProcessosDOCProcesso.Value := NumeroProcesso(EmpresasMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, EmpresasProcesso.AsInteger+1, Trim(Dados.ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                       end;
                    end else begin
                       ProcessosDOCProcesso.Value := NumeroProcesso(ClientesMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, YearOf(Date), Trim(Dados.ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                    End;

                    // Caso haja um processo mestre informado, adiciona uma letra ao final do numero do processo.
                    If Trim(ProcessosDOCProcesso_Mestre.AsString) <> '' then begin
                       tContaLetra.SQL.Clear;
                       tContaLetra.SQL.Add('SELECT ISNULL(COUNT(Processo_Mestre), 0) AS Letra FROM ProcessosDocumentos WHERE(Processo_Mestre = :pMestre)');
                       tContaLetra.ParamByName('pMestre').AsString := Trim(ProcessosDOCProcesso_Mestre.AsString);
                       tContaLetra.Open;

                       ProcessosDOCProcesso.Value := ProcessosDOCProcesso_Mestre.Value + '-'+ CHR(65+ tContaLetra.FieldByName('Letra').AsInteger);

                       // Reduz o valor da fatura do processo mestre com valor da fatura informado no processo atual.
                       tContaLetra.SQL.Clear;
                       tContaLetra.SQL.Add('UPDATE ProcessosDocumentos SET Valor_FaturaME = Valor_FaturaME - :pValorFatura WHERE(Processo = :pMestre)');
                       tContaLetra.ParamByName('pMestre').AsString        := Trim(ProcessosDOCProcesso_Mestre.AsString);
                       tContaLetra.ParamByName('pValorFatura').AsCurrency := ProcessosDOCValor_FaturaME.AsCurrency;
                       tContaLetra.Execute;
                    End;

                    // Registro o último número utilizado no cadastro da empresa.
                    If Trim(ProcessosDOCProcesso_Mestre.AsString) = '' then begin
                       Empresas.Edit;
                                EmpresasProcesso.Value := EmpresasProcesso.Value + 1;
                       Empresas.Post;
                    End;
                 End;

                 If Trim(cProcesso.Text) = '' then begin
                    cProcesso.Color := clRed;
                    ShowMessage('Você deve informar o [Número do Processo].');
                    cProcesso.SetFocus;
                    Abort;
                 End;

                 tbProcesso.SQL.Clear;
                 tbProcesso.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Processo = :pProcesso) AND Tipo = ''IMPORTAÇÃO'' ');
                 tbProcesso.ParamByName('pProcesso').AsString := Trim(cProcesso.Text);
                 tbProcesso.Open;
                 If tbProcesso.RecordCount > 0 then begin
                    ShowMessage('Já existe um processo cadastrado com o número informado!');
                    cProcesso.SetFocus;
                    Abort;
                 End;

                 // Adiciona o histórico no follow-up do processo.
                 ProcessosHistorico.SQL.Clear;
                 ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE(Processo = :pProcesso) ORDER BY Data Desc, Hora Desc');
                 ProcessosHistorico.ParamByName('pProcesso').AsString := Trim(ProcessosDOCProcesso.AsString);
                 ProcessosHistorico.Open;

                 tHistorico.SQL.Clear;
                 tHistorico.SQL.Add('SELECT MAX(Numero) AS Numero FROM ProcessosHistorico');
                 tHistorico.Open;

                 ProcessosHistorico.Append;
                                    ProcessosHistoricoNumero.Value    := tHistorico.FieldByName('Numero').AsInteger+1;
                                    ProcessosHistoricoData.Value      := Date;
                                    ProcessosHistoricoHora.Value      := TimetoStr(Time);
                                    ProcessosHistoricoProcesso.Value  := ProcessosDOCProcesso.AsString;
                                    ProcessosHistoricoDescricao.Value := 'Abertura do processo (Cadastrado)';
                                    ProcessosHistoricoDocumento.Value := ProcessosDOCProcesso.AsString;
                 ProcessosHistorico.Post;

                 //---------------------------------------------------( ABRE A CONTA DE "IMPOSTOS" DO PROCESSO SE ESTIVER PARÂMETRIZADO. )-----------------------------------------------------
                 (*
                 PlanoContas.SQL.Clear;
                 PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE Codigo = :pCodigo');
                 PlanoContas.ParamByName('pCodigo').AsString := TiposProcessoConta_Impostos.Value;
                 PlanoContas.Open;

                 if PlanoContas.RecordCount > 0 then begin
                    mGrupo     := PlanoContasConta.Value;
                    mNat       := PlanoContasNatureza.Value;
                    mNomeConta := 'PROC '+ProcessosDOCProcesso.AsString + ' DI '+FormatMaskText('##/#######-#;0; ',ProcessosDOCNumero_Declaracao.AsString)+' (IMPOSTO)';
                    // Verifica se já existe uma conta cadastrada com o mesmo nome.
                    PlanoContas.SQL.Clear;
                    PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                    PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                    PlanoContas.ParamByName('pDescricao').AsString := mNomeConta;
                    PlanoContas.Open;

                    if PlanoContas.RecordCount = 0 then begin
                       // Pegando o número da última conta.
                       tContaPlano.SQL.Clear;
                       if ConfiguracaoContab_ContaNova.AsBoolean then
                          // Quando esta configurado para incrementar numero da conta em configurçãoes, incrementa o numero em +1.
                          tContaPlano.SQL.Add('SELECT MAX(CAST(Conta AS Bigint))+1 AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' )
                       else
                          // Quando esta configurado para não incrementar numero da conta em configurçãoes, não incrementa o numero em +1.
                          tContaPlano.SQL.Add('SELECT MAX(CAST(Conta AS Bigint)) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' );
                       tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                       tContaPlano.Open;

                       // Se não houver nenhuma conta analítica no plano cria a primeira, caso contrario pega a última.
                       if tContaPlano.FieldByName('Conta').Value = Null then
                          mConta := CriaAnalitica(mGrupo, Dados.EmpresasMascara_PlanoContas.Value)
                       else
                          mConta := tContaPlano.FieldByName('Conta').AsString;

                       // Pegando o número do último código reduzido sem o último digito.
                       tCodigoPlano.SQL.Clear;
                       tCodigoPlano.SQL.Add('SELECT ISNULL(MAX(CAST(Codigo AS int)), 0)+1 AS Codigo FROM PlanoContas WHERE SUBSTRING(Conta, 1, 1) = :pConta');
                       tCodigoPlano.ParamByName('pConta').AsString := Trim(Copy(mGrupo, 1, 1));
                       tCodigoPlano.Open;

                       PlanoContas.Append;
                                   PlanoContasConta.Value            := mConta;
                                   PlanoContasCodigo.Value           := tCodigoPlano.FieldByName('Codigo').AsString;
                                   PlanoContasDescricao.Value        := mNomeConta;
                                   PlanoContasSaldo_Anterior.Value   := 0;
                                   PlanoContasDebito.Value           := 0;
                                   PlanoContasCredito.Value          := 0;
                                   PlanoContasSintetica.Value        := False;
                                   PlanoContasNatureza.Value         := mNat;
                                   PlanoContasLALUR.Value            := False;
                                   PlanoContasMostrar_Balanco.Value  := True;
                                   PlanoContasImprimir_Razao.Value   := False;
                                   PlanoContasNivel.Value            := NivelConta(PlanoContasConta.Value, EmpresasMascara_PlanoContas.Value);
                                   PlanoContasConta_Grupo.Value      := GrupoConta(PlanoContasConta.Value, EmpresasMascara_PlanoContas.Value, PlanoContasNivel.Value);
                                   PlanoContasData_Inclusao.Value    := Date;
                                   PlanoContasOrigem.Value           := PoeZero(2, StrtoInt(Copy(mConta, 1,1)));
                                   PlanoContasEmpresa.Value          := EmpresasCNPJ.asstring;
                                   PlanoContasTipo_Terceiros.Value   := 'PR';
                                   PlanoContasCodigo_Terceiros.Value := cProcesso.Text;
                                   PlanoContasGrupo.Value            := Copy(mConta,1,1);
                       PlanoContas.Post;

                       // Registra a conta aberta no cadastro do processo.
                       ProcessosDOCConta_Impostos.Value := PlanoContasCodigo.AsString;
                    end;
                 end;

                 //------------------------------------------------( ABRE A CONTA DE "DESPESAS" DO PROCESSO SE ESTIVER PARÂMETRIZADO. )-------------------------------------------------------
                 PlanoContas.SQL.Clear;
                 PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE Codigo = :pCodigo');
                 PlanoContas.ParamByName('pCodigo').AsString := TiposProcessoConta_Despesas.Value;
                 PlanoContas.Open;

                 if PlanoContas.RecordCount > 0 then begin
                    mGrupo     := PlanoContasConta.Value;
                    mNat       := PlanoContasNatureza.Value;
                    mNomeConta := 'PROC '+ProcessosDOCProcesso.AsString + ' DI '+FormatMaskText('##/#######-#;0; ',ProcessosDOCNumero_Declaracao.AsString)+' (DESPESA)';

                    // Verifica se já existe uma conta cadastrada com o mesmo nome.
                    PlanoContas.SQL.Clear;
                    PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                    PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                    PlanoContas.ParamByName('pDescricao').AsString := mNomeConta;
                    PlanoContas.Open;

                    If PlanoContas.RecordCount = 0 then begin
                       // Pegando o número da última conta.
                       tContaPlano.SQL.Clear;
                       if ConfiguracaoContab_ContaNova.AsBoolean then
                          // Quando esta configurado para incrementar numero da conta em configurçãoes, incrementa o numero em +1.
                          tContaPlano.SQL.Add('SELECT MAX(CAST(Conta AS Bigint))+1 AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' )
                       else
                          // Quando esta configurado para não incrementar numero da conta em configurçãoes, não incrementa o numero em +1.
                          tContaPlano.SQL.Add('SELECT MAX(CAST(Conta AS Bigint)) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' );

                       tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                       tContaPlano.Open;

                       // Se não houver nenhuma conta analítica no plano cria a primeira, caso contrario pega a última.
                       If tContaPlano.FieldByName('Conta').Value = Null then
                          mConta := CriaAnalitica(mGrupo, Dados.EmpresasMascara_PlanoContas.Value)
                       else
                          mConta := tContaPlano.FieldByName('Conta').AsString;

                       // Pegando o número do último código reduzido sem o último digito.
                       tCodigoPlano.SQL.Clear;
                       tCodigoPlano.SQL.Add('SELECT ISNULL(MAX(CAST(Codigo AS int)), 0)+1 AS Codigo FROM PlanoContas WHERE SUBSTRING(Conta, 1, 1) = :pConta');
                       tCodigoPlano.ParamByName('pConta').AsString := Trim(Copy(mGrupo, 1, 1));
                       tCodigoPlano.Open;

                       PlanoContas.Append;
                                   PlanoContasConta.Value            := mConta;
                                   PlanoContasCodigo.Value           := tCodigoPlano.FieldByName('Codigo').AsString;
                                   PlanoContasDescricao.Value        := mNomeConta;
                                   PlanoContasSaldo_Anterior.Value   := 0;
                                   PlanoContasDebito.Value           := 0;
                                   PlanoContasCredito.Value          := 0;
                                   PlanoContasSintetica.Value        := False;
                                   PlanoContasNatureza.Value         := mNat;
                                   PlanoContasLALUR.Value            := False;
                                   PlanoContasMostrar_Balanco.Value  := True;
                                   PlanoContasImprimir_Razao.Value   := False;
                                   PlanoContasNivel.Value            := NivelConta(PlanoContasConta.Value, EmpresasMascara_PlanoContas.Value);
                                   PlanoContasConta_Grupo.Value      := GrupoConta(PlanoContasConta.Value, EmpresasMascara_PlanoContas.Value, PlanoContasNivel.Value);
                                   PlanoContasData_Inclusao.Value    := Date;
                                   PlanoContasOrigem.Value           := PoeZero(2, StrtoInt(Copy(mConta, 1,1)));
                                   PlanoContasEmpresa.Value          := EmpresasCNPJ.asstring;
                                   PlanoContasTipo_Terceiros.Value   := 'PR';
                                   PlanoContasCodigo_Terceiros.Value := cProcesso.Text;
                                   PlanoContasGrupo.Value            := Copy(mConta,1,1);
                       PlanoContas.Post;

                       // Registra a conta aberta no cadastro do processo.
                       ProcessosDOCConta_Despesas.Value := PlanoContasCodigo.AsString;
                    end;
                 end;

                 //-------------------------------------------------------( ABRE A CONTA DE "ADIANTAMENTO" DO PROCESSO SE ESTIVER PARÂMETRIZADO. )--------------------------------------------------------------
                 PlanoContas.SQL.Clear;
                 PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE Codigo = :pCodigo');
                 PlanoContas.ParamByName('pCodigo').AsString := TiposProcessoConta_Adiantamento.Value;
                 PlanoContas.Open;

                 if PlanoContas.RecordCount > 0 then begin
                    mGrupo     := PlanoContasConta.Value;
                    mNat       := PlanoContasNatureza.Value;
                    mNomeConta := 'PROC '+ProcessosDOCProcesso.AsString + ' DI '+FormatMaskText('##/#######-#;0; ',ProcessosDOCNumero_Declaracao.AsString)+' (ADIANTAMENTO)';

                    // Verifica se já existe uma conta cadastrada com o mesmo nome.
                    PlanoContas.SQL.Clear;
                    PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                    PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                    PlanoContas.ParamByName('pDescricao').AsString := mNomeConta;
                    PlanoContas.Open;

                    If PlanoContas.RecordCount = 0 then begin
                       // Pegando o número da última conta.
                       tContaPlano.SQL.Clear;
                       if ConfiguracaoContab_ContaNova.AsBoolean then
                          // Quando esta configurado para incrementar numero da conta em configurçãoes, incrementa o numero em +1.
                          tContaPlano.SQL.Add('SELECT MAX(CAST(Conta AS Bigint))+1 AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' )
                       else
                          // Quando esta configurado para não incrementar numero da conta em configurçãoes, não incrementa o numero em +1.
                          tContaPlano.SQL.Add('SELECT MAX(CAST(Conta AS Bigint)) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' );
                       tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                       tContaPlano.Open;

                       // Se não houver nenhuma conta analítica no plano cria a primeira, caso contrario pega a última.
                       If tContaPlano.FieldByName('Conta').Value = Null then
                          mConta := CriaAnalitica(mGrupo, Dados.EmpresasMascara_PlanoContas.Value)
                       else
                          mConta := tContaPlano.FieldByName('Conta').AsString;

                       // Pegando o número do último código reduzido sem o último digito.
                       tCodigoPlano.SQL.Clear;
                       tCodigoPlano.SQL.Add('SELECT ISNULL(MAX(CAST(Codigo AS int)), 0)+1 AS Codigo FROM PlanoContas WHERE SUBSTRING(Conta, 1, 1) = :pConta');
                       tCodigoPlano.ParamByName('pConta').AsString := Trim(Copy(mGrupo, 1, 1));
                       tCodigoPlano.Open;

                       PlanoContas.Append;
                                   PlanoContasConta.Value            := mConta;
                                   PlanoContasCodigo.Value           := tCodigoPlano.FieldByName('Codigo').AsString;
                                   PlanoContasDescricao.Value        := mNomeConta;
                                   PlanoContasSaldo_Anterior.Value   := 0;
                                   PlanoContasDebito.Value           := 0;
                                   PlanoContasCredito.Value          := 0;
                                   PlanoContasSintetica.Value        := False;
                                   PlanoContasNatureza.Value         := mNat;
                                   PlanoContasLALUR.Value            := False;
                                   PlanoContasMostrar_Balanco.Value  := True;
                                   PlanoContasImprimir_Razao.Value   := False;
                                   PlanoContasNivel.Value            := NivelConta(PlanoContasConta.Value, EmpresasMascara_PlanoContas.Value);
                                   PlanoContasConta_Grupo.Value      := GrupoConta(PlanoContasConta.Value, EmpresasMascara_PlanoContas.Value, PlanoContasNivel.Value);
                                   PlanoContasData_Inclusao.Value    := Date;
                                   PlanoContasOrigem.Value           := PoeZero(2, StrtoInt(Copy(mConta, 1,1)));
                                   PlanoContasEmpresa.Value          := EmpresasCNPJ.asstring;
                                   PlanoContasTipo_Terceiros.Value   := 'PR';
                                   PlanoContasCodigo_Terceiros.Value := cProcesso.Text;
                                   PlanoContasGrupo.Value            := Copy(mConta,1,1);
                       PlanoContas.Post;

                       // Registra a conta aberta no cadastro do processo.
                       ProcessosDOCConta_Adiantamento.Value := PlanoContasCodigo.AsString;
                    end;
                 end;
                 *)
              end;
              // Ajusta o valor da fatura no processo mestre em caso de alteração.
              If ProcessosDOC.State = dsEdit then begin
                 tContaLetra.SQL.Clear;
                 tContaLetra.SQL.Add('UPDATE ProcessosDocumentos SET Valor_FaturaME = Valor_FaturaME + :pValorFaturaAntes - :pValorFaturaNovo WHERE(Processo = :pMestre)');
                 tContaLetra.ParamByName('pMestre').AsString             := Trim(ProcessosDOCProcesso_Mestre.AsString);
                 tContaLetra.ParamByName('pValorFaturaAntes').AsCurrency := mValorFatura;
                 tContaLetra.ParamByName('pValorFaturaNovo').AsCurrency  := ProcessosDOCValor_FaturaME.AsCurrency;
                 tContaLetra.Execute;

                 // Grava modificações na tabela de invoice.
                 Invoice.SQL.Clear;
                 Invoice.SQL.Add('SELECT * FROM Invoice WHERE(Processo = :pProcesso)');
                 Invoice.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
                 Invoice.Open;

                 If Invoice.RecordCount > 0 then begin
                    Invoice.Edit;
                            InvoiceNumero.Value             := ProcessosDOCNumero_Fatura.AsString;
                            InvoiceData.Value               := ProcessosDOCData_Fatura.Value;
                            InvoiceImp_Exp.Value            := 'I';
                            InvoiceProcesso.Value           := ProcessosDOCProcesso.Value;
                            InvoiceMoeda.Value              := ProcessosDOCMoeda_FOB.Value;
                            InvoiceData.Value               := ProcessosDOCData_Fatura.Value;
                            InvoiceTaxa_Cambio.Value        := ProcessosDOCTaxa_FOB.Value;
                            InvoiceExportador.Value         := ProcessosDOCFornecedor.Value;
                            InvoicePais_Origem.Value        := ProcessosDOCCodigo_PaisOrigem.Value;
                            InvoiceINCOTERMS.Value          := ProcessosDOCINCOTERMS.Value;
                            InvoiceCondicao_Cambio.Value    := ProcessosDOCCondicao_Cambio.Value;
                            InvoiceVia_Transporte.Value     := ProcessosDOCVia_Transporte.Value;
                            InvoiceLocal_Embarque.Value     := ProcessosDOCLocal_Embarque.Value;
                            InvoiceLocal_Chegada.Value      := ProcessosDOCLocal_Desembarque.Value;
                            InvoiceVolumes_Quantidade.Value := ProcessosDOCQuantidade.Value;
                            InvoicePeso_Liquido.Value       := ProcessosDOCPeso_Liquido.Value;
                            InvoicePeso_Bruto.Value         := ProcessosDOCPeso_Bruto.Value;
                            InvoiceTotal_FaturaME.Value     := ProcessosDOCValor_FaturaME.Value;
                            InvoiceTotal_Fatura.Value       := (ProcessosDOCValor_FaturaME.Value * ProcessosDOCTaxa_FOB.Value);
                            InvoiceData_BL.Value            := ProcessosDOCData_BL.Value;
                            InvoiceData_Vencimento.Clear;
                            if not DataLimpa(cDataBL.Text) then begin
                               InvoiceData_Vencimento.Value := ProcessosDOCData_BL.Value + (CondicaoCambialVencimento1.AsInteger+CondicaoCambialVencimento2.AsInteger+CondicaoCambialVencimento3.AsInteger);
                            end;
                    Invoice.Post;
                 End;
              End;

              // Ajusta os campos dos itens das notas que tem a DI (estoque).
              if mBloq then begin
                 with tItens do begin
                      sql.clear;
                      sql.add('update NotasItens set Movimenta_Estoque = :pEst');
                      sql.add('where DI = :pDI');
                      sql.add('and Saida_Entrada = 0');
                      sql.add('and (select Movimenta_Estoque from TipoNota where Codigo = Tipo_Nota) = 1');
                      parambyname('pDI').AsString   := ProcessosDOC.FieldByName('Numero_Declaracao').asstring;
                      parambyname('pEst').Asboolean := not cBloqEst.Checked;
                      execute;
                 end;
              end;

              // Registra log do usuario.
              LogDados(ProcessosDOC, '('+ProcessosDOCProcesso.AsString+') DI:'+ProcessosDOCNumero_Declaracao.AsString, ProcessosDOC.State);
           End;

           // Deleta todos os itens da adição.
           If Button = nbDelete then begin
              // Verifica se o processo contem movimento.
              tbProcesso.SQL.Clear;
              tbProcesso.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceber WHERE(Processo = :pProcesso) AND (LTRIM(RTRIM(Processo)) <> '''') AND (Processo IS NOT NULL) ');
              tbProcesso.ParamByName('pProcesso').AsString := Trim(ProcessosDOCProcesso.AsString);
              tbProcesso.Open;
              mMovimento := tbProcesso.FieldByName('Qtde').AsInteger;

              tbProcesso.SQL.Clear;
              tbProcesso.SQL.Add('SELECT COUNT(*) AS Qtde FROM NotasTerceirosItens WHERE(Processo = :pProcesso) AND (LTRIM(RTRIM(Processo)) <> '''') AND (Processo IS NOT NULL)');
              tbProcesso.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
              tbProcesso.Open;
              mMovimento := mMovimento + tbProcesso.FieldByName('Qtde').AsInteger;

              tbProcesso.SQL.Clear;
              tbProcesso.SQL.Add('SELECT COUNT(*) AS Qtde FROM NotasItens WHERE(Processo = :pProcesso) AND (LTRIM(RTRIM(Processo)) <> '''') AND (Processo IS NOT NULL)');
              tbProcesso.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
              tbProcesso.Open;
              mMovimento := mMovimento + tbProcesso.FieldByName('Qtde').AsInteger;

              If mMovimento > 0 then begin
                 MessageDlg('Atenção!'+#13+#13+'Existe movimento para este processo.'+#13+#13+'O Processo não pode ser excluído.', mtInformation, [mbOK], 0);
                 Abort;
              End;

              If MessageDlg('Deseja realmente excluir este processo?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                 Adicoes.SQL.Clear;
                 Adicoes.SQL.Add('DELETE FROM Adicoes WHERE (DI = :pDI)');
                 Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
                 Adicoes.Execute;
                 Adicoes.SQL.Clear;
                 Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI)');
                 Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
                 Adicoes.Open;

                 // Adiciona o valor da fatura do processo mestre com valor da fatura informado no processo atual.
                 If Trim(ProcessosDOCProcesso_Mestre.AsString) <> '' then begin
                    tContaLetra.SQL.Clear;
                    tContaLetra.SQL.Add('UPDATE ProcessosDocumentos SET Valor_FaturaME = Valor_FaturaME + :pValorFatura WHERE(Processo = :pMestre)');
                    tContaLetra.ParamByName('pMestre').AsString        := Trim(ProcessosDOCProcesso_Mestre.AsString);
                    tContaLetra.ParamByName('pValorFatura').AsCurrency := ProcessosDOCValor_FaturaME.AsCurrency;
                    tContaLetra.Execute;
                 End;

                 // DELETE A CONTA DO PLANO DE CONTAS.
                 PlanoContas.SQL.Clear;
                 PlanoContas.SQL.Add('DELETE FROM PlanoContas WHERE Codigo IN('+QuotedStr(ProcessosDOCConta_Despesas.AsString)+','+QuotedStr(ProcessosDOCConta_Impostos.AsString)+','+QuotedStr(ProcessosDOCConta_Adiantamento.AsString) +')' );
                 PlanoContas.SQL.Add('                              AND Codigo_Terceiros = :pProcesso');
                 PlanoContas.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
                 PlanoContas.Execute;
                 PlanoContas.SQL.Clear;
                 PlanoContas.SQL.Add('SELECT * FROM PlanoContas');
              end else begin
                 Abort;
              End;

              // Registra log do usuario.
              LogDados(ProcessosDOC, '('+ProcessosDOCProcesso.AsString+') DI:'+ProcessosDOCNumero_Declaracao.AsString, dsInactive);
           End;
           tMestre.Refresh;
      End;

      Screen.Cursor := crDefault;
end;

procedure TProcesso_Importacao.cProcessoChange(Sender: TObject);
Var
   i, mDiferenca: Integer;
begin
       With Dados do begin
            mDI := ProcessosDOCNumero_Declaracao.AsString;
            //ProcessosDOCNumero_Declaracao.EditMask := iif(Length(mDI) = 10, '99/9999999-9;0; ', '99/AA-9999999000-9;0; ');
            If mFechou = false then begin
               cProcesso.Color   := clWindow;
               titens.Connection :=  Dados.Banco_Empresas;
               tItens.SQL.Clear;
               tItens.SQL.Add('SELECT COUNT(*) AS Itens FROM Adicoes WHERE(DI = :pDI) AND (DI <> '''') ');
               tItens.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
               tItens.Open;
               bAdicoes.Caption := '&Itens DI ['+formatfloat('0000', tItens.FieldByName('Itens').Asinteger)+']';
               tItens.Close;
               cAdValorem.Value := (ProcessosDOCAd_Valorem.Value / ProcessosDOCTaxa_FOB.Value);

               tItens.SQL.Clear;
               tItens.SQL.Add('SELECT SUM(Valor_SemAdValorem * Quantidade) AS Valor FROM Adicoes WHERE(DI = :pDI) AND (DI <> '''') ');
               tItens.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
               tItens.Open;

               cFOB_SemAdVal.Value     := tItens.FieldByName('Valor').AsCurrency;
               cFOB_SemAdValReal.Value := cFOB_SemAdVal.Value * ProcessosDOCTaxa_FOB.Value;

               Produtos.SQL.Clear;
               Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo IN(SELECT DISTINCT Codigo_Mercadoria FROM Adicoes WHERE(DI = :pDI)))');
               Produtos.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
               Produtos.Open;
            End;
            
            If PageControl1.ActivePageIndex = 2 then begin
               ProcessosTexto.SQL.Clear;
               ProcessosTexto.SQL.Add('SELECT *');
               ProcessosTexto.SQL.Add('FROM   ProcessosTexto');
               ProcessosTexto.SQL.Add('WHERE  Processo = :pProcesso');
               ProcessosTexto.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
               ProcessosTexto.Open;
            End;

            // Verifica o vencimento do contrato com os clientes.
            Configuracao.Open;
            lVencimentoContrato.Visible := false;
            mDiferenca := StrtoInt(DifDias(Date, ClientesVencimento_Contrato.AsDateTime));
            If (Trim(cCliente.Text) <> '') and (Trim(RemoveCaracter('/', '', ClientesVencimento_Contrato.AsString)) <> '') then begin
               If (mDiferenca <= ConfiguracaoAviso_VencimentoContrato.AsInteger) and (mDiferenca > 0) then begin
                  lVencimentoContrato.Visible := true;
                  lVencimentoContrato.Caption := 'Contrato com o cliente esta vencendo em ' + PoeZero(2, mDiferenca)+' dia(s).';
               End;
               If (mDiferenca <= ConfiguracaoAviso_VencimentoContrato.AsInteger) and (mDiferenca = 0) then begin
                  lVencimentoContrato.Visible := true;
                  lVencimentoContrato.Caption := 'Contrato com o cliente esta vencendo hoje.';
               End;
               If (mDiferenca < 0) then begin
                  mDiferenca := mDiferenca * -1;
                  lVencimentoContrato.Visible := true;
                  lVencimentoContrato.Caption := 'Contrato com o cliente esta vencido à ' + PoeZero(2, mDiferenca)+' dia(s).';
               End;
            End;

            ProcessosDOCDoc.SQL.Clear;
            ProcessosDOCDoc.SQL.Add('SELECT * FROM ProcessosDocumentosDocs WHERE Processo = :pProcesso');
            ProcessosDOCDoc.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
            ProcessosDOCDoc.Open;

            cListaDoc.Items.Clear;
            for i := 1 to ProcessosDOCDoc.RecordCount do begin
                cListaDoc.Items.Add(ProcessosDOCDocDocumento.AsString);
                ProcessosDOCDoc.Next;
            end;
       End;
end;

procedure TProcesso_Importacao.cDataAberturaChange(Sender: TObject);
begin
      cDataAbertura.Color := clWindow;
end;

procedure TProcesso_Importacao.cVolumesChange(Sender: TObject);
begin
     cVolumes.Color := clWindow;
end;

procedure TProcesso_Importacao.cFOBMEChange(Sender: TObject);
begin
     cFOBME.Color := clWindow;
end;

procedure TProcesso_Importacao.cMoedaFOBClick(Sender: TObject);
begin
     cMoedaFOB.Color := clWindow;
end;

procedure TProcesso_Importacao.cFreteMEChange(Sender: TObject);
begin
     cFreteME.Color := clWindow;
end;

procedure TProcesso_Importacao.cMoedaFreteClick(Sender: TObject);
begin
     cMoedaFrete.Color := clWindow;
end;

procedure TProcesso_Importacao.cICMSChange(Sender: TObject);
begin
     cICMS.Color := clWindow;
end;

procedure TProcesso_Importacao.cListaDOCDblClick(Sender: TObject);
begin
      ShellExecute(Handle, 'Open', PChar(cListaDoc.Items[cListaDoc.ItemIndex]), '', '', SW_ShowNormal);
end;

procedure TProcesso_Importacao.cDataRegistro_DIChange(Sender: TObject);
begin
      cDataRegistro_DI.Color := clWindow;
end;

procedure TProcesso_Importacao.cDataRegistro_DIExit(Sender: TObject);
begin
      With Dados do Begin
           If Trim(ProcessosDOCMoeda_FOB.AsString) <> '' then begin
              If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_FOB.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
                 ProcessosDOCTaxa_FOB.Value := CotacaoValor.Value;
                 ProcessosDOCFOB.Value      := (ProcessosDOCFOB_ME.Value * CotacaoValor.Value );
              End;
           End;
           If Trim(ProcessosDOCMoeda_Frete.AsString) <> '' then begin
              If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Frete.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
                 ProcessosDOCTaxa_Frete.Value := CotacaoValor.Value;
                 ProcessosDOCFrete.Value      := (ProcessosDOCFrete_ME.Value * CotacaoValor.Value);
              End;
           End;
           If Trim(ProcessosDOCMoeda_Seguro.AsString) <> '' then begin
              If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Seguro.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
                 ProcessosDOCTaxa_Seguro.Value := CotacaoValor.Value;
                 ProcessosDOCSeguro.Value      := (ProcessosDOCSeguro_ME.Value * CotacaoValor.Value );
              End;
           End;
      End;
end;

procedure TProcesso_Importacao.bConversorClick(Sender: TObject);
begin
     Conversor_Moedas := TConversor_Moedas.Create(Self);
     Conversor_Moedas.ShowModal;
end;

procedure TProcesso_Importacao.bPesqClaClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'RecintosAduaneiros';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.Showmodal;
      with Dados, ProcessosDOC do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Recinto_AlfandegarioCod').value := strtoint(Clipboard.asText);
           end;
      end;
end;

procedure TProcesso_Importacao.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := UpperCase(InputBox('Pesquisa de processos', 'PROCESSO/DI/BL/CONTAINER/Obs.',mPesquisa));
      With Dados do begin
           If ProcessosDOC.Locate('Processo', mPesquisa, [loPartialKey]) = False then begin
              If ProcessosDOC.Locate('Numero_Declaracao', mPesquisa, [loCaseInsensitive]) = False then begin
                 If ProcessosDOC.Locate('Numero_DOC', mPesquisa, [loCaseInsensitive]) = False then begin
                    If ProcessosDOC.Locate('Container_Numero', mPesquisa, [loCaseInsensitive]) = False then begin
                       If ProcessosDOC.Locate('Observacao', mPesquisa, [loCaseInsensitive]) = False then begin
                          ShowMessage('Nenhum "PROCESSO, DI, BL CONTAINER ou Observação" encontrados com este número!');
                          Abort;
                       End
                     End;
                 End;
              End;
           End;

           // Pegando os despesas de custo do processo no financeiro.
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Processo = :pProcesso) AND (ISNULL(Processo, '''') <> '''') ORDER BY Classificacao');
           PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
           PagarReceber.Open;
           PagarReceber.First;

           // Totalizando as despesas.
           cTotalDespesasCusto2.Value  := 0;
           cTotalDespesasEntrada.Value := 0;
           cTotalDespesas2.Value       := 0;
           cRecebimentos2.Value        := 0;
           
           While not PagarReceber.Eof do Begin
                 If PagarReceberTipo.Value = 'P' then begin
                    cTotalDespesas2.Value := cTotalDespesas2.Value + PagarReceberValor_Total.Value;
                    If PagarReceberCustoConta.Value = True then begin
                       cTotalDespesasCusto2.Value := cTotalDespesasCusto2.Value + PagarReceberValor_Total.Value;
                    End;
                    If PagarReceberCusto_Entrada.Value = True then begin
                       cTotalDespesasEntrada.Value := cTotalDespesasEntrada.Value + PagarReceberValor_Total.Value;
                    End;
                 end else begin
                    cRecebimentos2.Value := cRecebimentos2.Value + PagarReceberValor_Total.Value;
                 End;
                 PagarReceber.Next;
           End;
           If ProcessosDOCAd_Valorem.AsCurrency > 0 then
              cAdValorem.Value := (ProcessosDOCAd_Valorem.AsCurrency/ ProcessosDOCTaxa_FOB.AsCurrency);

           ProcessosHistorico.SQL.Clear;
           ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE (Processo = :pProcesso)');
           ProcessosHistorico.SQL.Add('ORDER BY Data Desc, Hora DESC');
           ProcessosHistorico.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           ProcessosHistorico.Open;

           Container.SQL.Clear;
           Container.SQL.Add('SELECT * FROM Container WHERE(Processo = :pProcesso) ORDER BY Numero');
           Container.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           Container.Open;

           TotalizaDespesas;
           
           // Verifica se o processo esta gerando demurrage.
           //VerificaDemurrage;
       End;
end;

procedure TProcesso_Importacao.StaticText40Click(Sender: TObject);
begin
      With Dados, dmContab do begin
           {
           Usuarios.Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseinsensitive]);
           If Dados.UsuariosmnCadastro_PlanoContas.AsBoolean = false then begin
              MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
              Abort;
           End;
           }
           if not Permissao('mnCadastro_PlanoContas') then begin
              MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
              Abort;
           end;
           
           Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
           Cadastro_PlanoContas.Caption := Caption;
           Cadastro_PlanoContas.ShowModal;
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE ( Sintetica = 0) ORDER BY Descricao');
           PlanoContas.Open;
      End;
end;

procedure TProcesso_Importacao.FormCreate(Sender: TObject);
begin
//      if Screen.Height <= 768 then begin
//         ScaleBy(Height, Menu_Principal.Height);
//      end;
      if Menu_Principal.Height <= 768 then begin
         ScaleBy(93, 100);
      end;

      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_Importacao.DBEdit1Change(Sender: TObject);
begin
     with Dados do Begin
          if ProcessosDOC.State = dsEdit then begin
             Adicoes.SQL.Clear;
             Adicoes.SQl.Add('SELECT * FROM Adicoes WHERE(DI = :pDI)');
             Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
             Adicoes.Open;

             Janela_Processamento := TJanela_Processamento.Create(Self);
             Janela_Processamento.Progresso.Max      := Adicoes.RecordCount;
             Janela_Processamento.Progresso.Position := 0;
             Janela_Processamento.lProcesso.Caption  := 'Ajustando o valor dos itens da DI...';
             Janela_Processamento.Show;

             Adicoes.First;
             while not Adicoes.Eof do begin
                   Adicoes.Edit;
                           AdicoesValor_UnitarioReal.Value := ( AdicoesValor_Unitario.Value * ProcessosDOCTaxa_FOB.Value);
                   Adicoes.Post;
                   Adicoes.Next;
                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                   Application.ProcessMessages;
             end;
             Janela_Processamento.Close;
          end;
     end;
end;

procedure TProcesso_Importacao.cNavioOrdemExit(Sender: TObject);
begin
      with Dados, ProcessosDOC do begin
           if trim(cNavioOrdem.Text) <> '' then begin
              if fieldbyname('Nome_Transporte').AsString = '' then begin
                 fieldbyname('Nome_Transporte').value := ControleNavios.fieldbyName('Navio').asstring;
                 fieldbyname('Via_Transporte').value  := 1;
              end;
           end;
      end;
end;

procedure TProcesso_Importacao.cClienteExit(Sender: TObject);
begin
      With Dados do begin
           If (ProcessosDOC.State = dsInsert) or (ProcessosDOC.State = dsEdit) then begin
              If ProcessosDOCMargem_Lucro.AsFloat              = 0 then ProcessosDOCMargem_Lucro.Value              := ClientesMargem_Lucro.Value;
              If ProcessosDOCMargem_LucroValor.AsFloat         = 0 then ProcessosDOCMargem_LucroValor.Value         := ClientesMargem_LucroValor.Value;
              If ProcessosDOCDesconto_Operacional.AsFloat      = 0 then ProcessosDOCDesconto_Operacional.Value      := ClientesDesconto_Operacional.Value;
              If ProcessosDOCDesconto_OperacionalValor.AsFloat = 0 then ProcessosDOCDesconto_OperacionalValor.Value := ClientesDesconto_OperacionalValor.Value;
              If ProcessosDOCDesconto_Adicional.AsFloat        = 0 then ProcessosDOCDesconto_Adicional.Value        := ClientesDesconto_Adicional.Value;
              If ProcessosDOCDesconto_AdicionalValor.AsFloat   = 0 then ProcessosDOCDesconto_AdicionalValor.Value   := ClientesDesconto_AdicionalValor.Value;
              If ProcessosDOCCondicao_Pagamento.AsInteger      = 0 then ProcessosDOCCondicao_Pagamento.Value        := ClientesCondicao_Pagamento.Value;
           End;
           If (ProcessosDOC.State = dsInsert) then begin
              //ProcessosDOCFator_FaturamentoValor.Value := ProcessosDOCFator_FaturamentoValor.Value * ProcessosDOCFOB.Value;
           End;
      End;
end;

procedure TProcesso_Importacao.bAtivarClick(Sender: TObject);
begin
     Processo_Desativar := TProcesso_Desativar.Create(Self);
     Processo_Desativar.Caption := Caption;
     Processo_Desativar.ShowModal;
end;

procedure TProcesso_Importacao.GradeListaDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With Dados do Begin
           If (Column.FieldName = 'Desativado') then begin
              With GradeLista.Canvas do begin
                   If (ProcessosDOC.FieldByName('Desativado').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
           If ProcessosDOC.FieldByName('Desativado').Value = false then begin
              GradeLista.Canvas.Font.Color := clSilver;
              GradeLista.Canvas.Font.Style := [fsItalic];
           End;
      End;
end;

procedure TProcesso_Importacao.bTodosTotaisClick(Sender: TObject);
begin
      With Dados do begin
           If ProcessosDOCFOB.Value > 0 then begin
              ProcessosDOCFator_FaturamentoValor.Value := ClientesFator_Faturamento.Value * ProcessosDOCFOB_ME.Value;
              ProcessosDOCFator_SISCOMEXValor.Value    := ClientesFator_SISCOMEX.Value * ProcessosDOCFOB_ME.Value;
           end else begin
              ProcessosDOCFator_FaturamentoValor.Value := ClientesFator_Faturamento.Value * Dados.ProcessosDOCValor_FaturaME.Value;
              ProcessosDOCFator_SISCOMEXValor.Value    := ClientesFator_SISCOMEX.Value * Dados.ProcessosDOCValor_FaturaME.Value;
           End;
           If ProcessosDOCTaxa_FOB.Value > 0 then begin
              ProcessosDOCFator_FaturamentoValorReal.Value := ProcessosDOCFator_FaturamentoValor.Value * ProcessosDOCTaxa_FOB.Value;
              ProcessosDOCFator_SISCOMEXValorReal.Value    := ProcessosDOCFator_SISCOMEXValor.Value * ProcessosDOCTaxa_FOB.Value;
           End;
      End;
end;

procedure TProcesso_Importacao.TotalizaDespesas;
begin
      Screen.Cursor := crSQLWait;

      With Dados do Begin
           ProcessosHistorico.SQL.Clear;
           ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE (Processo = :pProcesso)');
           ProcessosHistorico.SQL.Add('ORDER BY Data, Hora DESC');
           ProcessosHistorico.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           ProcessosHistorico.Open;
           
           // Seleciona as despesas do processo.
           Grade2.DisableScroll;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Processo = :pProcesso) AND (ISNULL(Processo, '''') <> '''') ORDER BY Classificacao');
           PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           PagarReceber.Open;
           PagarReceber.First;
           Grade2.EnableScroll;

           // Totaliza as despesas do processo.
           tSoma.SQL.Clear;
           If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
              tSoma.SQL.Add('SELECT SUM(CASE WHEN Tipo = ''P'' THEN Valor_Total ELSE 0 END) AS Total_Despesas,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''R'' THEN Valor_Total ELSE 0 END) AS Total_Recebimentos,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND CustoConta     = 1 THEN Valor_Total ELSE 0 END) AS Total_Custo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Seletivo = 1 THEN Valor_Total ELSE 0 END) AS Total_Seletivo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Entrada  = 1 THEN Valor_Total ELSE 0 END) AS Total_Entrada,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Outros   = 1 THEN Valor_Total ELSE 0 END) AS Total_Outros');
           end else begin
              tSoma.SQL.Add('SELECT SUM(CASE WHEN Tipo = ''P'' THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Despesas,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''R'' THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Recebimentos,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND CustoConta     = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Custo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Seletivo = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Seletivo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Entrada  = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Entrada,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Outros   = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Outros');
           End;
           tSoma.SQL.Add('FROM   PagarReceber WHERE(Processo = :pProcesso)');
           tSoma.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
           //tsoma.SQL.SaveToFile('c:\temp\Soma_Financeiro_Processo.sql');
           tSoma.Open;

           cTotalDespesasCusto2.Value    := tSoma.FieldByName('Total_Custo').AsCurrency;
           cTotalDespesasEntrada.Value   := tSoma.FieldByName('Total_Entrada').AsCurrency;
           cTotalDespesasOutros2.Value   := tSoma.FieldByName('Total_Outros').AsCurrency;
           cTotalDespesasSeletivo2.Value := tSoma.FieldByName('Total_Seletivo').AsCurrency;
           cTotalDespesas2.Value         := tSoma.FieldByName('Total_Despesas').AsCurrency;
           cRecebimentos2.Value          := tSoma.FieldByName('Total_Recebimentos').AsCurrency;

           // Totaliza as despesas do processo Mestre.
           If Trim(ProcessosDOCProcesso_Mestre.AsString) <> '' then begin
              tSoma.SQL.Clear;
              If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                 tSoma.SQL.Add('SELECT SUM(CASE WHEN Tipo = ''P'' THEN Valor_Total ELSE 0 END) AS Total_Despesas,');
                 tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''R'' THEN Valor_Total ELSE 0 END) AS Total_Recebimentos,');
                 tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND CustoConta = 1 THEN Valor_Total ELSE 0 END) AS Total_Custo');
              end else begin
                 tSoma.SQL.Add('SELECT SUM(CASE WHEN Tipo = ''P'' THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Despesas,');
                 tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''R'' THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Recebimentos,');
                 tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND CustoConta = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Custo');
              End;
              tSoma.SQL.Add('FROM PagarReceber WHERE(Processo = :pProcesso) AND ((SELECT Adiantamento FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) = 0)');
              tSoma.ParamByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
              tSoma.Open;
           End;

           cTotalCusto2.Value        := cTotalDespesasCusto2.Value + cTotalMestreCusto2.Value + cTotalDespesasSeletivo2.Value;
           cTotalPagamentos2.Value   := cTotalDespesas2.Value      + cTotalMestreDespesas2.Value;
           cTotalRecebimentos2.Value := cRecebimentos2.Value       + cMestreRecebimentos2.Value;

           ProcessosTexto.SQL.Clear;
           ProcessosTexto.SQL.Add('SELECT *');
           ProcessosTexto.SQL.Add('FROM   ProcessosTexto');
           ProcessosTexto.SQL.Add('WHERE  Processo = :pProcesso');
           ProcessosTexto.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           ProcessosTexto.Open;

           // Separa os seriais/Chassi da DI.
           DISeriais.SQL.Clear;
           DISeriais.SQL.Add('SELECT * FROM DISeriais WHERE DI = :pDI ORDER BY DI, Adicao, Item, NCM, Produto_Codigo, Serial');
           DISeriais.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.AsString;
           DISeriais.Open;
      End;

      Screen.Cursor := crDefault;
end;

procedure TProcesso_Importacao.StaticText69Click(Sender: TObject);
begin
       {
       Dados.Usuarios.Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseinsensitive]);
       If Dados.UsuariosmnCadastro_CondicaoCambial.AsBoolean = false then begin
          MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
          Abort;
       End;
       }
       if not Permissao('mnCadastro_CondicaoCambial') then begin
          MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
          Abort;
       end;
       
       Cadastro_CondicaoCambial := TCadastro_CondicaoCambial.Create(Self);
       Cadastro_CondicaoCambial.Caption := Caption;
       Cadastro_CondicaoCambial.Showmodal;
       Dados.ProcessosDOCCondicao_Cambio.Value := Menu_Principal.mMem_CondicaoCambio;
       Dados.CondicaoCambial.Open;
end;

procedure TProcesso_Importacao.lExportadorClick(Sender: TObject);
begin
        {
        Dados.Usuarios.Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseinsensitive]);
        If Dados.UsuariosmnCadastro_Fornecedores.AsBoolean = false then begin
           MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
           Abort;
        End;
        }
        if not Permissao('Cadastro_Fornecedores') then begin
           MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
           Abort;
        end;
        
        Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
        Cadastro_Fornecedores.Caption := Caption;
        Cadastro_Fornecedores.ShowModal;
        Dados.ProcessosDOCFornecedor.Value := Menu_Principal.mMem_Fornecedor;
        Dados.Fornecedores.Open;
end;

procedure TProcesso_Importacao.bInvoiceClick(Sender: TObject);
begin
      If MessageDlg('Atenção!'+#13+#13+'Isso ira criar uma fatura com base nos dados do processo.'+#13+#13+'Deseja realmente criar a fatura?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         Abort;

      with Dados do begin
           Invoice.SQL.Clear;
           Invoice.SQL.Add('SELECT * FROM Invoice WHERE(Numero = :pNumero)');
           Invoice.ParamByName('pNumero').AsString := ProcessosDOCNumero_Fatura.AsString;
           Invoice.Open;

           If Invoice.RecordCount > 0 then begin
              If MessageDlg('Atenção!'+#13+#13+'Já existe uma fatura cadastrada com o nº '+ProcessosDOCNumero_Fatura.AsString+#13+#13+'Deseja substituir a fatura exitente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                 Invoice.Edit
              else
                 Abort;
           end else begin
              tFatura.SQL.Clear;
              tFatura.SQL.Add('SELECT MAX(Registro) AS Registro FROM Invoice');
              tFatura.Open;

              Invoice.Append;
              InvoiceRegistro.Value := tFatura.FieldByName('Registro').AsInteger + 1;
           End;

           If ProcessosDOCFornecedor.AsInteger = 0 then begin
              MessageDlg('Exportador é campo obrigatório, Fatura não foi gerada!', mtError, [mbOK], 0);
              Abort;
           End;
           If Trim(ProcessosDOCNumero_Fatura.AsString) = '' then begin
              MessageDlg('Número da Fatura é campo obrigatório, Fatura não foi gerada!', mtError, [mbOK], 0);
              Abort;
           End;
           If ProcessosDOCValor_FaturaME.AsCurrency = 0 then begin
              MessageDlg('Valor da Fatura é campo obrigatório, Fatura não foi gerada!', mtError, [mbOK], 0);
              Abort;
           End;
           If Trim(RemoveCaracter('/', '', ProcessosDOCData_Fatura.AsString)) = '' then begin
              MessageDlg('Data da Fatura é campo obrigatório, Fatura não foi gerada!', mtError, [mbOK], 0);
              Abort;
           End;
           If ProcessosDOCCondicao_Cambio.AsInteger = 0 then begin
              MessageDlg('Condição Cambial é campo obrigatório, Fatura não foi gerada!', mtError, [mbOK], 0);
              Abort;
           End;

           InvoiceNumero.Value             := Dados.ProcessosDOCNumero_Fatura.AsString;
           InvoiceData.Value               := ProcessosDOCData_Fatura.Value;
           InvoiceImp_Exp.Value            := 'I';
           InvoiceProcesso.Value           := ProcessosDOCProcesso.Value;
           InvoiceMoeda.Value              := ProcessosDOCMoeda_FOB.Value;
           InvoiceData.Value               := ProcessosDOCData_Fatura.Value;
           InvoiceTaxa_Cambio.Value        := ProcessosDOCTaxa_FOB.Value;
           InvoiceExportador.Value         := ProcessosDOCFornecedor.Value;
           InvoicePais_Origem.Value        := ProcessosDOCCodigo_PaisOrigem.Value;
           InvoiceINCOTERMS.Value          := ProcessosDOCINCOTERMS.Value;
           InvoiceCondicao_Cambio.Value    := ProcessosDOCCondicao_Cambio.Value;
           InvoiceVia_Transporte.Value     := ProcessosDOCVia_Transporte.Value;
           InvoiceLocal_Embarque.Value     := ProcessosDOCLocal_Embarque.Value;
           InvoiceLocal_Chegada.Value      := ProcessosDOCLocal_Desembarque.Value;
           InvoiceVolumes_Quantidade.Value := ProcessosDOCQuantidade.Value;
           InvoicePeso_Liquido.Value       := ProcessosDOCPeso_Liquido.Value;
           InvoicePeso_Bruto.Value         := ProcessosDOCPeso_Bruto.Value;
           InvoiceTotal_FaturaME.Value     := ProcessosDOCValor_FaturaME.Value;
           InvoiceTotal_Fatura.Value       := (ProcessosDOCValor_FaturaME.Value * ProcessosDOCTaxa_FOB.Value);

           InvoiceData_BL.Clear;
           InvoiceData_Vencimento.Clear;
           if not DataLimpa(cDataBL.Text) then begin
              InvoiceData_BL.Value         := ProcessosDOCData_BL.Value;
              InvoiceData_Vencimento.Value := ProcessosDOCData_BL.Value + (CondicaoCambialVencimento1.AsInteger+CondicaoCambialVencimento2.AsInteger+CondicaoCambialVencimento3.AsInteger);
           end;

           Invoice.Post;
           tFatura.Close;

           tItens.Close;
           tItens.SQL.Clear;
           tItens.SQL.Add('DELETE FROM InvoiceItens WHERE Invoice = :pInvoice');
           tItens.ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
           tItens.Execute;

           InvoiceItens.SQL.Clear;
           InvoiceItens.SQL.Add('SELECT * FROM InvoiceItens WHERE(Invoice = :pInvoice) ORDER BY Codigo_Mercadoria');
           InvoiceItens.ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
           InvoiceItens.Open;

           Adicoes.SQL.Clear;
           Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI = :pDI) ORDER BY Adicao');
           Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
           Adicoes.Open;

           tItens.Close;
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Registro = ISNULL(MAX(Registro), 0)+1 FROM InvoiceItens');

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := Adicoes.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando os itens a invoice a partir da adição...';
           Janela_Processamento.Show;

           while not Adicoes.Eof do begin
                 Produtos.SQL.Clear;
                 Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo = :pCodigo');
                 Produtos.ParamByName('pCodigo').AsInteger := Adicoes.FieldByName('Codigo_Mercadoria').Value;
                 Produtos.Open;

                 tItens.Open;
                 InvoiceItens.Append;
                              InvoiceItensRegistro.Value          := tItens.FieldByName('Registro').AsInteger;
                              InvoiceItensInvoice.Value           := Invoice.FieldByName('Numero').Value;
                              InvoiceItensCodigo_Mercadoria.Value := Adicoes.FieldByName('Codigo_Mercadoria').Value;
                              InvoiceItensQuantidade.Value        := Adicoes.FieldByName('Quantidade').Value;
                              InvoiceItensValor_Unitario.Value    := Adicoes.FieldByName('Valor_SemAdValorem').Value * ProcessosDOC.FieldByName('Taxa_FOB').AsFloat;
                              InvoiceItensValor_UnitarioME.Value  := Adicoes.FieldByName('Valor_SemAdValorem').Value;
                              InvoiceItensPeso_Liquido.Value      := Adicoes.FieldByName('Peso_Liquido').Value;
                              InvoiceItensPeso_Bruto.Value        := 0;
                 InvoiceItens.Post;
                 tItens.Close;

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;

                 Adicoes.Next;
           end;
           Janela_Processamento.Close;
      end;
      ShowMessage('Invoice criada com sucesso.');
end;

procedure TProcesso_Importacao.BitBtn1Click(Sender: TObject);
begin
     if MessageDlg('Deseja realmente limpar todos os documentos do processo?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
        cListaDoc.Clear;
     end;
end;

procedure TProcesso_Importacao.BitBtn2Click(Sender: TObject);
begin
     if MessageDlg('Deseja realmente remover o documentos do processo?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
        cListaDoc.Items.Delete(cListaDoc.ItemIndex);
     end;
end;

procedure TProcesso_Importacao.BitBtn3Click(Sender: TObject);
var
   i:integer;
begin
     if MessageDlg('Deseja realmente salvar todos os documentos?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
        with Dados, ProcessosDOCDoc do begin
             sql.clear;
             sql.add('delete from ProcessosDocumentosDocs where Processo = '+quotedstr(ProcessosDocProcesso.asstring));
             execute;
             sql.clear;
             sql.add('select * from ProcessosDocumentosDocs where Processo = '+quotedstr(ProcessosDocProcesso.asstring));
             open;
             for i := 0 to cListaDoc.Items.Count-1 do begin
                 if ProcessosDOCDoc.Locate('Documento', cListaDoc.Items[i], [loCaseInsensitive]) = false then begin
                    Append;
                          FieldByName('Processo').Value     := ProcessosDOCProcesso.AsString;
                          FieldByName('Documento').AsString := cListaDoc.Items[i];
                    Post;
                 end;
             end;
        end;
     end;
end;

procedure TProcesso_Importacao.bLimparClick(Sender: TObject);
begin
     cFiltroDesativado.Checked := false;
     cFiltroCliente.KeyValue := -1;
     cFiltroDataPrevistaIni.Clear;
     cFiltroDataPrevistaFim.Clear;
     cFiltroDataChegadaIni.Clear;
     cFiltroDataChegadaFim.Clear;
     cFiltroDesembaracoIni.Clear;
     cFiltroDesembaracoFim.Clear;
     cFiltroDataRegistroIni.Clear;
     cFiltroDataRegistroFim.Clear;
     cFiltroDataBLIni.Clear;
     cFiltroDataBLFim.Clear;
     cFiltroCondicaoCambio.ClearValue;
     cFiltroResponsavel.KeyValue := '';
     cFiltroExportador.KeyValue := -1;
     cFiltroFatura.KeyValue := -1;
     cFiltroCondicao.ClearValue;
     cFiltroSituacao.ItemIndex := 0;
     
     FiltraProcesso;
end;

procedure TProcesso_Importacao.SpeedButton1Click(Sender: TObject);
begin
      FiltraProcesso;
end;

procedure TProcesso_Importacao.SpeedButton2Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND Sintetica <> 1';
      PesquisaGerais.Showmodal;
      with Dados, ProcessosDoc do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Despesas').value := Clipboard.asText;
              cContaDespesas.KeyValue             := trim(Clipboard.asText);
           end;
      end;
end;

procedure TProcesso_Importacao.SpeedButton3Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND Sintetica <> 1';
      PesquisaGerais.Showmodal;
      with Dados, ProcessosDoc do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Impostos').value := Clipboard.asText;
              cContaImpostos.KeyValue             := trim(Clipboard.asText);
           end;
      end;
end;

procedure TProcesso_Importacao.SpeedButton4Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND Sintetica <> 1';
      PesquisaGerais.Showmodal;
      with Dados, ProcessosDoc do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Adiantamento').value := Clipboard.asText;
              cContaAdiant.KeyValue                   := trim(Clipboard.asText);
           end;
      end;
end;

procedure TProcesso_Importacao.TabSheet6Enter(Sender: TObject);
begin
     tClientes.SQL.Clear;
     tClientes.SQL.Add('SELECT * FROM Clientes WHERE Codigo IN(SELECT DISTINCT Cliente FROM ProcessosDocumentos) ORDER BY Nome');
     tClientes.Open;

     tIncoterms.SQL.Clear;
     tIncoterms.SQL.Add('SELECT * FROM INCOTERMS ORDER BY Codigo');
     tIncoterms.Open;

     tUsuarios.SQL.Clear;
     tUsuarios.SQL.Add('SELECT * FROM Usuarios WHERE (Ativo = 1) ORDER BY Nome');
     tUsuarios.Open;

     tFornecedores.SQL.Clear;
     tFornecedores.SQL.Add('SELECT * FROM Fornecedores');
     tFornecedores.SQL.Add('WHERE ((SELECT Modulo_Processo FROM RamoAtividade WHERE(Codigo = Ramo_Atividade)) = 1)');
     tFornecedores.SQL.Add('ORDER BY Nome');
     tFornecedores.Open;
end;

procedure TProcesso_Importacao.FiltraProcesso;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT *');
           ProcessosDOC.SQL.Add('FROM   ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE  (Tipo IN(''IMPORTAÇÃO'', ''COMPRA INTERNA'') )');

           If cFiltroDesativado.Checked = true then begin
              ProcessosDOC.SQL.Add(' AND (Desativado <> 1)');
           End;
           If cFiltroSituacao.ItemIndex = 1 then begin
              ProcessosDOC.SQL.Add(' AND (Data_Encerramento IS NULL)');
           End;
           If cFiltroSituacao.ItemIndex = 2 then begin
              ProcessosDOC.SQL.Add(' AND (Data_Encerramento IS NOT NULL)');
           End;

           If Trim(cFiltroCliente.Text) <> '' then begin
              ProcessosDOC.SQL.Add(' AND (Cliente = :pCliente)');
              ProcessosDOC.ParamByName('pCliente').AsInteger := tClientesCodigo.AsInteger;
           End;

           // Data Prevista.
           If (DataLimpa(cFiltroDataPrevistaIni.Text) = false) and (DataLimpa(cFiltroDataPrevistaFim.Text) = true) then begin
              ProcessosDOC.SQL.Add(' AND (Navio_DataPrevista = :pDataPrev)');
              ProcessosDOC.ParamByName('pDataPrev').AsDate := cFiltroDataPrevistaIni.Date;
           End;
           If (DataLimpa(cFiltroDataPrevistaIni.Text) = true) and (DataLimpa(cFiltroDataPrevistaFim.Text) = false) then begin
              ProcessosDOC.SQL.Add(' AND (Navio_DataPrevista = :pDataPrev)');
              ProcessosDOC.ParamByName('pDataPrev').AsDate := cFiltroDataPrevistaFim.Date;
           End;
           If (DataLimpa(cFiltroDataPrevistaIni.Text) = false) and (DataLimpa(cFiltroDataPrevistafIM.Text) = false) then begin
              ProcessosDOC.SQL.Add(' AND (Navio_DataPrevista BETWEEN :pDataPrevIni AND :pDataPrevFim)');
              ProcessosDOC.ParamByName('pDataPrevIni').AsDate := cFiltroDataPrevistaIni.Date;
              ProcessosDOC.ParamByName('pDataPrevFim').AsDate := cFiltroDataPrevistaFim.Date;
           End;

           // Data Chegada.
           If (DataLimpa(cFiltroDataChegadaIni.Text) = false) and (DataLimpa(cFiltroDataChegadaFim.Text) = true) then begin
              ProcessosDOC.SQL.Add(' AND (Navio_DataChegada = :pDataCheg)');
              ProcessosDOC.ParamByName('pDataCheg').AsDate := cFiltroDataChegadaIni.Date;
           End;
           If (DataLimpa(cFiltroDataChegadaIni.Text) = true) and (DataLimpa(cFiltroDataChegadaFim.Text) = false) then begin
              ProcessosDOC.SQL.Add(' AND (Navio_DataChegada = :pDataCheg)');
              ProcessosDOC.ParamByName('pDataCheg').AsDate := cFiltroDataChegadaFim.Date;
           End;
           If (DataLimpa(cFiltroDataChegadaIni.Text) = false) and (DataLimpa(cFiltroDataChegadaFim.Text) = false) then begin
              ProcessosDOC.SQL.Add(' AND (Navio_DataChegada BETWEEN :pDataChegIni AND :pDataChegFim)');
              ProcessosDOC.ParamByName('pDataChegIni').AsDate := cFiltroDataChegadaIni.Date;
              ProcessosDOC.ParamByName('pDataChegFim').AsDate := cFiltroDataChegadaFim.Date;
           End;

           // Data desembaraço.
           If (DataLimpa(cFiltroDesembaracoIni.Text) = false) and (DataLimpa(cFiltroDesembaracoFim.Text) = true) then begin
              ProcessosDOC.SQL.Add(' AND (Data_DesembaracoDeclaracao = :pDataDesemb)');
              ProcessosDOC.ParamByName('pDataDesemb').AsDate := cFiltroDesembaracoIni.Date;
           End;
           If (DataLimpa(cFiltroDesembaracoIni.Text) = true) and (DataLimpa(cFiltroDesembaracoFim.Text) = false) then begin
              ProcessosDOC.SQL.Add(' AND (Data_DesembaracoDeclaracao = :pDataDesemb)');
              ProcessosDOC.ParamByName('pDataDesemb').AsDate := cFiltroDesembaracoIni.Date;
           End;
           If (DataLimpa(cFiltroDesembaracoIni.Text) = false) and (DataLimpa(cFiltroDesembaracoFim.Text) = false) then begin
              ProcessosDOC.SQL.Add(' AND (Data_DesembaracoDeclaracao BETWEEN :pDataDesembIni AND :pDataDesembFim)');
              ProcessosDOC.ParamByName('pDataDesembIni').AsDate := cFiltroDesembaracoIni.Date;
              ProcessosDOC.ParamByName('pDataDesembFim').AsDate := cFiltroDesembaracoFim.Date;
           End;

           // Data Registro.
           If (DataLimpa(cFiltroDataRegistroIni.Text) = false) and (DataLimpa(cFiltroDataRegistroFim.Text) = true) then begin
              ProcessosDOC.SQL.Add(' AND (Data_RegistroDeclaracao = :pDataReg)');
              ProcessosDOC.ParamByName('pDataReg').AsDate := cFiltroDataRegistroIni.Date;
           End;
           If (DataLimpa(cFiltroDataRegistroIni.Text) = true) and (DataLimpa(cFiltroDataRegistroFim.Text) = false) then begin
              ProcessosDOC.SQL.Add(' AND (Data_RegistroDeclaracao = :pDataReg)');
              ProcessosDOC.ParamByName('pDataReg').AsDate := cFiltroDataRegistroFim.Date;
           End;
           If (DataLimpa(cFiltroDataRegistroIni.Text) = false) and (DataLimpa(cFiltroDataRegistroFim.Text) = false) then begin
              ProcessosDOC.SQL.Add(' AND (Data_RegistroDeclaracao BETWEEN :pDataRegIni AND :pDataRegFim)');
              ProcessosDOC.ParamByName('pDataRegIni').AsDate := cFiltroDataRegistroIni.Date;
              ProcessosDOC.ParamByName('pDataRegFim').AsDate := cFiltroDataRegistroFim.Date;
           End;

           // Data BL.
           If (DataLimpa(cFiltroDataBLIni.Text) = false) and (DataLimpa(cFiltroDataBLFim.Text) = true) then begin
              ProcessosDOC.SQL.Add(' AND (Data_BL = :pDataReg)');
              ProcessosDOC.ParamByName('pDataReg').AsDate := cFiltroDataBLIni.Date;
           End;
           If (DataLimpa(cFiltroDataBLIni.Text) = true) and (DataLimpa(cFiltroDataBLFim.Text) = false) then begin
              ProcessosDOC.SQL.Add(' AND (Data_BL = :pDataReg)');
              ProcessosDOC.ParamByName('pDataReg').AsDate := cFiltroDataBLFim.Date;
           End;
           If (DataLimpa(cFiltroDataBLIni.Text) = false) and (DataLimpa(cFiltroDataBLFim.Text) = false) then begin
              ProcessosDOC.SQL.Add(' AND (Data_BL BETWEEN :pDataBLIni AND :pDataBLFim)');
              ProcessosDOC.ParamByName('pDataBLIni').AsDate := cFiltroDataBLIni.Date;
              ProcessosDOC.ParamByName('pDataBLFim').AsDate := cFiltroDataBLFim.Date;
           End;
           If Trim(cFiltroCondicao.Text) <> '' then begin
              ProcessosDOC.SQL.Add(' AND (Incoterms = :pIncoterms)');
              ProcessosDOC.ParamByName('pIncoterms').AsString := tIncotermsCodigo.AsString;
           End;
           If Trim(cFiltroResponsavel.Text) <> '' then begin
              ProcessosDOC.SQL.Add(' AND (Responsavel = :pResponsavel)');
              ProcessosDOC.ParamByName('pResponsavel').AsString := tUsuariosMatricula.AsString;
           End;
           If Trim(cFiltroExportador.Text) <> '' then begin
              ProcessosDOC.SQL.Add(' AND (Fornecedor = :pExportador)');
              ProcessosDOC.ParamByName('pExportador').AsInteger := tFornecedoresCodigo.AsInteger;
           End;
           If Trim(cFiltroFatura.Text) <> '' then begin
              ProcessosDOC.SQL.Add(' AND (Numero_Fatura = :pFatura)');
              ProcessosDOC.ParamByName('pFatura').AsString := InvoiceNumero.AsString;
           End;
           ProcessosDOC.SQL.Add('ORDER BY Processo');
           //ProcessosDOC.SQL.SaveToFile('c:\temp\Cadastro_Processos.sql');
           ProcessosDOC.Open;

           If mNFEProcesso <> '' then ProcessosDOC.Locate('Processo', mNFEProcesso, [loCaseInsensitive]);                                           
      End;
      Screen.Cursor := crDefault;
end;

procedure TProcesso_Importacao.cProcessoMestreExit(Sender: TObject);
begin
      With Dados do begin
           If (ProcessosDOC.State = dsInsert) and (Trim(ProcessosDOCProcesso_Mestre.AsString) <> '') then begin
              ProcessosDOCIncoterms.Value            := tMestreIncoterms.Value;
              ProcessosDOCRecinto_Alfandegario.Value := tMestreRecinto_Alfandegario.Value;
              ProcessosDOCUF_Desembaraco.Value       := tMestreUF_Desembaraco.Value;
              ProcessosDOCEspecie.Value              := tMestreEspecie.Value;
              ProcessosDOCMoeda_FOB.Value            := tMestreMoeda_FOB.Value;
              ProcessosDOCMoeda_Frete.Value          := tMestreMoeda_Frete.Value;
              ProcessosDOCMoeda_Seguro.Value         := tMestreMoeda_Seguro.Value;
              ProcessosDOCTipo_Mercadoria.Value      := tMestreTipo_Mercadoria.Value;
              ProcessosDOCVia_Transporte.Value       := tMestreVia_Transporte.Value;
              ProcessosDOCNome_Transporte.Value      := tMestreNome_Transporte.Value;
              ProcessosDOCOrigem.Value               := tMestreOrigem.Value;
              ProcessosDOCLocal_Embarque.Value       := tMestreLocal_Embarque.Value;
              ProcessosDOCLocal_Desembarque.Value    := tMestreLocal_Desembarque.Value;
              ProcessosDOCNumero_DOC.Value           := tMestreNumero_DOC.Value;
              ProcessosDOCAgencia_Maritima.Value     := tMestreAgencia_Maritima.Value;

              If not tMestre.FieldByName('Data_DOC').IsNull           then ProcessosDOCData_DOC.Value           := tMestreData_DOC.Value;
              If not tMestre.FieldByName('Navio_DataPrevista').IsNull then ProcessosDOCNavio_DataPrevista.Value := tMestreNavio_DataPrevista.Value;
              If not tMestre.FieldByName('Navio_DataChegada').IsNull  then ProcessosDOCNavio_DataChegada.Value  := tMestreNavio_DataChegada.Value;
              If not tMestre.FieldByName('Data_Fatura').IsNull        then ProcessosDOCData_Fatura.Value        := tMestreData_Fatura.Value;
              If not tMestre.FieldByName('Data_BL').IsNull            then ProcessosDOCData_BL.Value            := tMestreData_BL.Value;

              ProcessosDOCCliente.Value                 := tMestreCliente.Value;
              ProcessosDOCConta_Impostos.Value          := tMestreConta_Impostos.Value;
              ProcessosDOCConta_Despesas.Value          := tMestreConta_Despesas.Value;
              ProcessosDOCConta_Adiantamento.Value      := tMestreConta_Adiantamento.Value;
              ProcessosDOCFornecedor.Value              := tMestreFornecedor.Value;
              ProcessosDOCDocumento_Carga.Value         := tMestreDocumento_Carga.Value;
              ProcessosDOCincentivo_Fiscal.Value        := tMestreincentivo_Fiscal.Value;
              ProcessosDOCPais.Value                    := tMestrePais.Value;
              ProcessosDOCModalidade_Importacao.Value   := tMestreModalidade_Importacao.Value;
              ProcessosDOCContainer_Numero.Value        := tMestreContainer_Numero.Value;
              ProcessosDOCLocal_DesembaracoCodigo.Value := tMestreLocal_DesembaracoCodigo.Value;
              ProcessosDOCCodigo_PaisOrigem.Value       := tMestreCodigo_PaisOrigem.Value;
           End;
      End;
end;

procedure TProcesso_Importacao.mnMarcarCustoTodosClick(Sender: TObject);
begin
      If MessageDlg('Deseja selecionar todas as despesas como custo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
         With Dados do begin
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET CustoConta = 1, Custo_Seletivo = 0 WHERE(Processo = :pProcesso) ');
              PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
              PagarReceber.Execute;

              TotalizaDespesas;
         End;
      End;
end;

procedure TProcesso_Importacao.mnDesmarcarCustoTodosClick(Sender: TObject);
begin
     If MessageDlg('Deseja remover todas as despesas do custo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
        With Dados do begin
             PagarReceber.SQL.Clear;
             PagarReceber.SQL.Add('UPDATE PagarReceber SET CustoConta = 0 WHERE(Processo = :pProcesso) ');
             PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
             PagarReceber.Execute;

             TotalizaDespesas;
        End;
     End;
end;

procedure TProcesso_Importacao.DBCheckBox4Click(Sender: TObject);
begin
     If Dados.ProcessosDOCDA.AsBoolean = false then
        lDIDA.Caption := 'DI Nº'
     else
        lDIDA.Caption := 'DA Nº';
end;

procedure TProcesso_Importacao.cBloqEstClick(Sender: TObject);
begin
     if cBloqEst.Checked then begin
        with tItens do begin
             sql.clear;
             sql.add('select * from NotasItens where DI = :pDI and Saida_Entrada = 1');
             parambyname('pDI').AsString := Dados.ProcessosDOC.FieldByName('Numero_Declaracao').asstring;
             open;
             if Recordcount > 0 then begin          
                messagedlg('Atenção!'+#13+#13+'Essa DI não pode ser bloqueada, pois ja foram emitidas notas de saída.', mtInformation, [mbok], 0);
                Dados.ProcessosDOC.FieldByName('Estoque_Bloqueado').value := false;
                mBloq := false;
                Abort;
             end;
        end;
     end;
     mBloq := true;
end;

procedure TProcesso_Importacao.bCadastroContainerClick(Sender: TObject);
begin
       With Dados do begin
            {
            Usuarios.Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseinsensitive]);
            If UsuariosmnProcesso_Container.AsBoolean = false then begin
               MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
               Abort;
            End;
            }
            if not Permissao('mnProcesso_Container') then begin
               MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
               Abort;
            end;
            Processo_Container               := TProcesso_Container.Create(Self);
            Processo_Container.Caption       := Caption;
            Processo_Container.mProcesso     := ProcessosDOCProcesso.AsString;
            Processo_Container.mConhecimento := ProcessosDOCNumero_DOC.AsString;
            Processo_Container.ShowModal;

            Container.SQL.Clear;
            Container.SQL.Add('SELECT * FROM Container WHERE(Processo = :pProcesso) ORDER BY Numero');
            Container.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
            Container.Open;
       End;
end;

procedure TProcesso_Importacao.Grade2DrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With Dados do Begin
           If Odd(PagarReceber.RecNo) then
              Grade2.Canvas.Brush.Color:= $00DEEDDE
           else
              Grade2.Canvas.Brush.Color:= clCream;

           TDbGrid(Sender).Canvas.font.Color:= clBlack;
           If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := $00FFAAB0;
              FillRect(Rect);
              Font.Style := [fsbold];
              Font.Color := clBlack;
           End;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

           If (Column.FieldName = 'Custo_Entrada') then begin
              With Grade2.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (PagarReceber.FieldByName('Custo_Entrada').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
           If (Column.FieldName = 'CustoConta') then begin
              With Grade2.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (PagarReceber.FieldByName('CustoConta').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
           If (Column.FieldName = 'Custo_Seletivo') then begin
              With Grade2.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (PagarReceber.FieldByName('Custo_Seletivo').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
           If (Column.FieldName = 'Custo_Outros') then begin
              With Grade2.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (PagarReceber.FieldByName('Custo_Outros').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
      End;
end;

procedure TProcesso_Importacao.mnMarcarSeletivoTodosClick(Sender: TObject);
begin
      If MessageDlg('Deseja selecionar todas as despesas como Custo Seletivo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
         With Dados do begin
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Seletivo = 1, CustoConta = 0, Custo_Entrada = 0 WHERE(Processo = :pProcesso) ');
              PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
              PagarReceber.Execute;

              TotalizaDespesas;
         End;
      End;
end;

procedure TProcesso_Importacao.mnDesmarcarSeletivoTodosClick(Sender: TObject);
begin
     If MessageDlg('Deseja remover todas as despesas do Custo Seletivo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
        With Dados do begin
             PagarReceber.SQL.Clear;
             PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Seletivo = 0 WHERE(Processo = :pProcesso) ');
             PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
             PagarReceber.Execute;

             TotalizaDespesas;
        End;
     End;
end;

procedure TProcesso_Importacao.mnMarcarCustoClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Deseja acrecentar esta despesa do custo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCustoConta.Value     := true;
                           PagarReceberCusto_Seletivo.Value := false;
              PagarReceber.Post;
           End;
      End;
      
      TotalizaDespesas;
end;

procedure TProcesso_Importacao.Grade2CellClick(Column: TColumn);
begin
     AjustaMenu;
end;

procedure TProcesso_Importacao.AjustaMenu;
begin
      With Dados do begin
           mnMarcarCusto.Enabled           := not PagarReceberCustoConta.AsBoolean;
           mnDesmarcarCusto.Enabled        := PagarReceberCustoConta.AsBoolean;
           mnMarcarCustoEntrada.Enabled    := not PagarReceberCusto_Entrada.AsBoolean;
           mnDesmarcarCustoEntrada.Enabled := PagarReceberCusto_Entrada.AsBoolean;
           mnMarcarSeletivo.Enabled        := not PagarReceberCusto_Seletivo.AsBoolean;
           mnDesmarcarSeletivo.Enabled     := PagarReceberCusto_Seletivo.AsBoolean;
           mnMarcarCustoOutros.Enabled     := not PagarReceberCusto_Outros.AsBoolean;
           mnDesmarcarCustoOutros.Enabled  := PagarReceberCusto_Outros.AsBoolean;
      End;
end;

procedure TProcesso_Importacao.mnDesmarcarCustoClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Deseja remover esta despesa do custo Geral da Mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCustoConta.Value := False;
              PagarReceber.Post;
           End;
      End;
      
      TotalizaDespesas;
end;

// Envia informações para o excel.
procedure TProcesso_Importacao.bExcelClick(Sender: TObject);
var
    mSel, mAd: Integer;
begin
      With Dados do begin
           ProcessosDOC.DisableControls;
           Adicoes.DisableControls;
           Janela_Processamento                    := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := ProcessosDOC.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
           Janela_Processamento.Show;

           mPlanilha := CreateOleObject('Excel.Application');

           mPlanilha.WorkBooks.add(1);
           mPlanilha.Workbooks[1].Sheets.Add;
           mPlanilha.Workbooks[1].Sheets[1].Name := 'DADOS DA DI';
           if cAdicoes.Checked then begin
              mPlanilha.Workbooks[1].Sheets[2].Name := 'ADIÇÕES';
           end;

           mPlanilha.Visible                            := false;
           mPlanilha.Range['A3','N3'].Interior.Color    := RGB(255, 255, 140);
           mPlanilha.Range['A3','N3'].Interior.Pattern  := 1;
           mPlanilha.Range['A3','N3'].Font.Bold         := true;
           mPlanilha.Range['A3','N3'].Font.Color        := clBlack;
           mPlanilha.Range['A3','N3'].Borders.LineStyle := 1; //xlContinuous;
           mPlanilha.Range['A3','N3'].Borders.Weight    := 2; //xlThin;
           mPlanilha.Range['A3','N3'].Borders.Color     := RGB(0,0,0);

           mPlanilha.Cells[3,01] := 'PROCESSO';
           mPlanilha.Cells[3,02] := 'CLIENTE';
           mPlanilha.Cells[3,03] := 'DI';
           mPlanilha.Cells[3,04] := 'REGISTRO';
           mPlanilha.Cells[3,05] := 'DESEMB.';
           mPlanilha.Cells[3,06] := 'DATA BL';
           mPlanilha.Cells[3,07] := 'CHEGADA';
           mPlanilha.Cells[3,08] := 'EXPORTADOR';
           mPlanilha.Cells[3,09] := 'VLR.FAT (ME)';
           mPlanilha.Cells[3,10] := 'VLR.FOB (ME)';
           mPlanilha.Cells[3,11] := 'MODALIDADE';
           mPlanilha.Cells[3,12] := 'DESATIVADO';
           mPlanilha.Cells[3,13] := 'TAXA SISCOMEX';
           mPlanilha.Cells[3,14] := 'ADIÇÕES';

           mPlanilha.Cells[4,01].ColumnWidth := 12;
           mPlanilha.Cells[4,02].ColumnWidth := 40;
           mPlanilha.Cells[4,03].ColumnWidth := 10;
           mPlanilha.Cells[4,04].ColumnWidth := 10;
           mPlanilha.Cells[4,05].ColumnWidth := 10;
           mPlanilha.Cells[4,06].ColumnWidth := 10;
           mPlanilha.Cells[4,07].ColumnWidth := 10;
           mPlanilha.Cells[4,08].ColumnWidth := 40;
           mPlanilha.Cells[4,09].ColumnWidth := 14;
           mPlanilha.Cells[4,10].ColumnWidth := 14;
           mPlanilha.Cells[4,11].ColumnWidth := 20;
           mPlanilha.Cells[4,12].ColumnWidth := 10;
           mPlanilha.Cells[4,13].ColumnWidth := 14;
           mPlanilha.Cells[4,14].ColumnWidth := 8;

           mPlanilha.Range['A3','N3'].HorizontalAlignment := 3;
           mPlanilha.Range['A3','N3'].VerticalAlignment   := 2;
           mPlanilha.Range['A3','N3'].Font.Size           := 8;

           if cAdicoes.Checked then begin
              mPlanilha.Workbooks[1].Sheets[2];

              mPlanilha.Sheets[2].Range['A1','K1'].Interior.Color    := RGB(255, 255, 140);
              mPlanilha.Sheets[2].Range['A1','K1'].Interior.Pattern  := 1;
              mPlanilha.Sheets[2].Range['A1','K1'].Font.Bold         := true;
              mPlanilha.Sheets[2].Range['A1','K1'].Font.Color        := clBlack;
              mPlanilha.Sheets[2].Range['A1','K1'].Borders.LineStyle := 1; //xlContinuous;
              mPlanilha.Sheets[2].Range['A1','K1'].Borders.Weight    := 2; //xlThin;
              mPlanilha.Sheets[2].Range['A1','K1'].Borders.Color     := RGB(0,0,0);

              mPlanilha.Sheets[2].Cells[1,01] := 'DI';
              mPlanilha.Sheets[2].Cells[1,02] := 'ADIÇÃO';
              mPlanilha.Sheets[2].Cells[1,03] := 'SEQUÊNCIA';
              mPlanilha.Sheets[2].Cells[1,04] := 'NCM';
              mPlanilha.Sheets[2].Cells[1,05] := 'BC II.';
              mPlanilha.Sheets[2].Cells[1,06] := '% II';
              mPlanilha.Sheets[2].Cells[1,07] := 'VALOR II';
              mPlanilha.Sheets[2].Cells[1,08] := 'BC IPI';
              mPlanilha.Sheets[2].Cells[1,09] := '% IPI';
              mPlanilha.Sheets[2].Cells[1,10] := 'VALOR IPI';
              mPlanilha.Sheets[2].Cells[1,11] := 'REGISTRO';

              mPlanilha.Sheets[2].Cells[1,01].ColumnWidth := 11;
              mPlanilha.Sheets[2].Cells[1,02].ColumnWidth := 08;
              mPlanilha.Sheets[2].Cells[1,03].ColumnWidth := 08;
              mPlanilha.Sheets[2].Cells[1,04].ColumnWidth := 09;
              mPlanilha.Sheets[2].Cells[1,05].ColumnWidth := 12;
              mPlanilha.Sheets[2].Cells[1,06].ColumnWidth := 12;
              mPlanilha.Sheets[2].Cells[1,07].ColumnWidth := 12;
              mPlanilha.Sheets[2].Cells[1,08].ColumnWidth := 12;
              mPlanilha.Sheets[2].Cells[1,09].ColumnWidth := 12;
              mPlanilha.Sheets[2].Cells[1,10].ColumnWidth := 12;
              mPlanilha.Sheets[2].Cells[1,11].ColumnWidth := 09;
           end;
           
           mPlanilha.Sheets[2].Range['A1','K1'].HorizontalAlignment := 3;
           mPlanilha.Sheets[2].Range['A1','K1'].VerticalAlignment   := 2;
           mPlanilha.Sheets[2].Range['A1','K1'].Font.Size           := 8;

           mLinha  := 4;
           mLinha2 := 0;
           mZebra  := false;

           While (not ProcessosDOC.Eof) and (not Funcoes.Cancelado) do  Begin
                 mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Size := 8;
                 mPlanilha.Range['C'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;

                 // Adições
                 if cAdicoes.Checked then begin
                    tAdicoes.SQL.Clear;
                    tAdicoes.SQL.Add('SELECT DI');
                    tAdicoes.SQL.Add('      ,Adicao');
                    tAdicoes.SQL.Add('      ,Sequencia');
                    tAdicoes.SQL.Add('      ,NCM');
                    tAdicoes.SQL.Add('      ,Quantidade');
                    tAdicoes.SQL.Add('      ,Valor_UnitarioReal');
                    tAdicoes.SQL.Add('      ,Vlr_BCII     = CAST(0 AS float)');
                    tAdicoes.SQL.Add('      ,Aliquota_II  = (SELECT Aliquota_II FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                    tAdicoes.SQL.Add('      ,Vlr_II       = CAST(0 AS float)');
                    tAdicoes.SQL.Add('      ,Vlr_BCIPI    = CAST(0 AS float)');
                    tAdicoes.SQL.Add('      ,Aliquota_IPI = (SELECT Aliquota_IPI FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                    tAdicoes.SQL.Add('      ,Vlr_IPI      = CAST(0 AS float)');
                    tAdicoes.SQL.Add('      ,Vlr_Frete    = (((SELECT SUM(Frete)  FROM ProcessosDocumentos WHERE Numero_Declaracao = DI)/(SELECT SUM(Peso_Liquido) FROM ProcessosDocumentos WHERE Numero_Declaracao = DI))) * Peso_Liquido');
                    tAdicoes.SQL.Add('      ,Vlr_Seguro   = (((SELECT SUM(Seguro) FROM ProcessosDocumentos WHERE Numero_Declaracao = DI)/(SELECT SUM(FOB_ME) FROM ProcessosDocumentos WHERE Numero_Declaracao = DI))) * Valor_Unitario');
                    tAdicoes.SQL.Add('      ,Data         = (SELECT MAX(Data_RegistroDeclaracao) FROM ProcessosDocumentos WHERE Numero_Declaracao = DI)');
                    tAdicoes.SQL.Add('      ,Rateia_Frete = (SELECT Frete  FROM Cybersoft_Cadastros.dbo.Incoterms WHERE Codigo = (SELECT Incoterms FROM ProcessosDocumentos WHERE Numero_Declaracao = DI))');
                    tAdicoes.SQL.Add('      ,Rateia_Seguro= (SELECT Seguro FROM Cybersoft_Cadastros.dbo.Incoterms WHERE Codigo = (SELECT Incoterms FROM ProcessosDocumentos WHERE Numero_Declaracao = DI))');
                    tAdicoes.SQL.Add('INTO  #TEMP');
                    tAdicoes.SQL.Add('FROM  Adicoes');
                    tAdicoes.SQL.Add('WHERE DI = :pDI');
                    tAdicoes.SQL.Add('UPDATE #TEMP SET Vlr_BCII  = CASE WHEN (Rateia_Frete = 0 AND Rateia_Seguro = 0) THEN ISNULL( Valor_UnitarioReal * Quantidade, 0)');
                    tAdicoes.SQL.Add('                                  WHEN (Rateia_Frete = 0 AND Rateia_Seguro = 1) THEN ISNULL( (Valor_UnitarioReal + Vlr_Seguro) * Quantidade, 0)');
                    tAdicoes.SQL.Add('                                  WHEN (Rateia_Frete = 1 AND Rateia_Seguro = 0) THEN ISNULL( (Valor_UnitarioReal + Vlr_Frete) * Quantidade, 0)');
                    tAdicoes.SQL.Add('                                  WHEN (Rateia_Frete = 1 AND Rateia_Seguro = 1) THEN ISNULL( (Valor_UnitarioReal + Vlr_Frete + Vlr_Seguro) * Quantidade, 0)');
                    tAdicoes.SQL.Add('                             END');
                    tAdicoes.SQL.Add('UPDATE #TEMP SET Vlr_II  = Vlr_BCII  * (Aliquota_II/100)');
                    tAdicoes.SQL.Add('UPDATE #TEMP SET Vlr_BCIPI = CASE WHEN (Rateia_Frete = 0 AND Rateia_Seguro = 0) THEN ISNULL( Valor_UnitarioReal * Quantidade, 0) + Vlr_II');
                    tAdicoes.SQL.Add('                                  WHEN (Rateia_Frete = 0 AND Rateia_Seguro = 1) THEN ISNULL( (Valor_UnitarioReal + Vlr_Seguro) * Quantidade, 0)+ Vlr_II');
                    tAdicoes.SQL.Add('                                  WHEN (Rateia_Frete = 1 AND Rateia_Seguro = 0) THEN ISNULL( (Valor_UnitarioReal + Vlr_Frete) * Quantidade, 0)+ Vlr_II');
                    tAdicoes.SQL.Add('                                  WHEN (Rateia_Frete = 1 AND Rateia_Seguro = 1) THEN ISNULL( (Valor_UnitarioReal + Vlr_Frete + Vlr_Seguro) * Quantidade, 0)+ Vlr_II');
                    tAdicoes.SQL.Add('                             END');
                    tAdicoes.SQL.Add('UPDATE #TEMP SET Vlr_IPI = Vlr_BCIPI * (Aliquota_IPI/100)');
                    tAdicoes.SQL.Add('SELECT * FROM #TEMP');
                    tAdicoes.SQL.Add('ORDER BY DI, Adicao, Sequencia');
                    tAdicoes.SQL.Add('DROP TABLE #TEMP');
                    tAdicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.AsString;
                    //tAdicoes.SQL.SavetoFile('c:\temp\Dados_Processo_Adicoes.sql');
                    tAdicoes.Open;
                    mAD := tAdicoes.RecordCount;
                 end else begin
                    with tSoma do begin 
                         sql.clear;
                         sql.add('select Adicoes = max(ad1.Adicao)');
                         sql.add('from Adicoes Ad1');
                         sql.add('where ad1.DI = :pDI');
                         sql.add('group by ad1.DI');
                         parambyname('pDI').AsString := ProcessosDOCNumero_Declaracao.AsString;
                         open;
                         mAD := fieldbyname('Adicoes').AsInteger;
                    end;
                 end;
                 mPlanilha.Cells[mLinha,01] := ProcessosDOC.FieldByName('Processo').AsString;
                 mPlanilha.Cells[mLinha,02] := ProcessosDOC.FieldByName('Cliente_Nome').AsString;
                 mPlanilha.Cells[mLinha,03] := ProcessosDOC.FieldByName('Numero_Declaracao').asstring;
                 mPlanilha.Cells[mLinha,04] := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value;
                 mPlanilha.Cells[mLinha,05] := ProcessosDOC.FieldByName('Data_DesembaracoDeclaracao').Value;
                 mPlanilha.Cells[mLinha,06] := ProcessosDOC.FieldByName('Data_BL').Value;
                 mPlanilha.Cells[mLinha,07] := ProcessosDOC.FieldByName('Navio_DataChegada').Value;
                 mPlanilha.Cells[mLinha,08] := ProcessosDOC.FieldByName('Exportador_Nome').AsString;
                 mPlanilha.Cells[mLinha,09] := ProcessosDOC.FieldByName('Valor_FaturaME').AsFloat;
                 mPlanilha.Cells[mLinha,10] := ProcessosDOC.FieldByName('FOB_ME').AsFloat;
                 mPlanilha.Cells[mLinha,11] := ProcessosDOC.FieldByName('Modalidade_Nome').AsString;
                 If ProcessosDOC.FieldByName('Desativado').AsBoolean then mPlanilha.Cells[mLinha,12] := 'DESATIVADO';
                 mPlanilha.Cells[mLinha,13] := ProcessosDOC.FieldByName('Taxa_Siscomex').asfloat;
                 mPlanilha.Cells[mLinha,14] := mAd;

                 mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
                 mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';

                 If mZebra = true then
                    mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Interior.Color := clWhite
                 else
                    mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
                 mZebra := not mZebra;

                 mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Borders.Color := clSilver;
                 
                 //if tAdicoes.RecordCount > 0 then ItensAdicoes;
                 if (cAdicoes.Checked) and  (tAdicoes.RecordCount > 0) then ItensAdicoes;

                 ProcessosDOC.Next;
                 Inc(mLinha);
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           end;

           //Fecha o Excel
           If Funcoes.Cancelado = true then begin
              KillTask('Excel.exe');    // Microsoft Excel
              Abort;
              mPlanilha.Free;
              mPlanilha.Destroy;
              ProcessosDOC.EnableControls;
           End;

           mPlanilha.Cells[1,01]                 := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
           mPlanilha.Range['A1','A1'].Font.Size  := 14;
           mPlanilha.Range['A1','A1'].Font.Bold  := true;
           mPlanilha.Range['A1','N1'].Mergecells := True;
           mPlanilha.Range['A1','N1'].HorizontalAlignment := 3;
           mPlanilha.Cells[2,01] := 'Relação de Processos ';
           mPlanilha.Range['A2','A2'].Font.Size  := 10;
           mPlanilha.Range['A2','N2'].Mergecells := True;
           mPlanilha.Range['A2','N2'].HorizontalAlignment := 3;

           Janela_Processamento.Close;
           mPlanilha.Visible := true;
           ProcessosDOC.EnableControls;
           Adicoes.EnableControls;
      End;
end;

procedure TProcesso_Importacao.bHistoricoClick(Sender: TObject);
var
   mProcesso:string;
begin
      with Dados do begin
           mProcesso := ProcessosDOCProcesso.value;
           Processo_Historico := TProcesso_Historico.Create(Self);
           Processo_Historico.Caption := Caption;
           Processo_Historico.ShowModal;

           FiltraProcesso;
           ProcessosDOC.locate('Processo', mProcesso, [loCaseInsensitive]);

           ProcessosHistorico.SQL.Clear;
           ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE (Processo = :pProcesso)');
           ProcessosHistorico.SQL.Add('ORDER BY Data, Hora DESC');
           ProcessosHistorico.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           ProcessosHistorico.Open;
      end;
end;

// Envia informações das adições para o excel.
procedure TProcesso_Importacao.ItensAdicoes;
var
   mTotalBCII,
   mTotalBCIPI,
   mTotalII,
   mTotalIPI: Real;
begin
      With Dados do begin
           Inc(mLinha2, 2);

           mTotalBCII  := 0;
           mTotalII    := 0;
           mTotalBCIPI := 0;
           mTotalIPI   := 0;

           While (not tAdicoes.Eof) and (not Funcoes.Cancelado) do  Begin
                 mPlanilha.Sheets[2].Range['A'+InttoStr(mLinha2),'K'+InttoStr(mLinha2+2)].Font.Size := 8;
                 mPlanilha.Sheets[2].Range['A'+InttoStr(mLinha2),'A'+InttoStr(mLinha2)].HorizontalAlignment := 3;
                 mPlanilha.Sheets[2].Range['D'+InttoStr(mLinha2),'D'+InttoStr(mLinha2)].HorizontalAlignment := 3;
                 mPlanilha.Sheets[2].Range['K'+InttoStr(mLinha2),'K'+InttoStr(mLinha2)].HorizontalAlignment := 3;

                 mPlanilha.Sheets[2].Cells[mLinha2,01] := FormatMaskText('##/#######-#;0; ', tAdicoes.FieldByName('DI').AsString);
                 mPlanilha.Sheets[2].Cells[mLinha2,02] := tAdicoes.FieldByName('Adicao').AsString;
                 mPlanilha.Sheets[2].Cells[mLinha2,03] := tAdicoes.FieldByName('Sequencia').Value;
                 mPlanilha.Sheets[2].Cells[mLinha2,04] := FormatMaskText('####.##.##;0; ', tAdicoes.FieldByName('NCM').Value);
                 mPlanilha.Sheets[2].Cells[mLinha2,05] := tAdicoes.FieldByName('Vlr_BCII').AsFloat;
                 mPlanilha.Sheets[2].Cells[mLinha2,06] := tAdicoes.FieldByName('Aliquota_II').AsFloat;
                 mPlanilha.Sheets[2].Cells[mLinha2,07] := tAdicoes.FieldByName('Vlr_II').AsFloat;
                 mPlanilha.Sheets[2].Cells[mLinha2,08] := tAdicoes.FieldByName('Vlr_BCIPI').AsFloat;
                 mPlanilha.Sheets[2].Cells[mLinha2,09] := tAdicoes.FieldByName('Aliquota_IPI').AsFloat;
                 mPlanilha.Sheets[2].Cells[mLinha2,10] := tAdicoes.FieldByName('Vlr_IPI').AsFloat;
                 mPlanilha.Sheets[2].Cells[mLinha2,11] := ProcessosDOC.FieldByName('Data_RegistroDeclaracao').AsString;

                 mPlanilha.Sheets[2].Cells[mLinha2,05].NumberFormat := '#.##0,00_);(#.##0,00)';
                 mPlanilha.Sheets[2].Cells[mLinha2,06].NumberFormat := '#.##0,00_);(#.##0,00)';
                 mPlanilha.Sheets[2].Cells[mLinha2,07].NumberFormat := '#.##0,00_);(#.##0,00)';
                 mPlanilha.Sheets[2].Cells[mLinha2,08].NumberFormat := '#.##0,00_);(#.##0,00)';
                 mPlanilha.Sheets[2].Cells[mLinha2,09].NumberFormat := '#.##0,00_);(#.##0,00)';
                 mPlanilha.Sheets[2].Cells[mLinha2,10].NumberFormat := '#.##0,00_);(#.##0,00)';

                 mPlanilha.Sheets[2].Range['A'+InttoStr(mLinha2),'K'+InttoStr(mLinha2)].Borders.Color := clSilver;

                 If mZebra = true then
                    mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color := clWhite
                 else
                    mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);

                 mTotalBCII   := mTotalBCII  + tAdicoes.FieldByName('Vlr_BCII').AsFloat;
                 mTotalII     := mTotalII    + tAdicoes.FieldByName('Vlr_II').AsFloat;
                 mTotalBCIPI  := mTotalBCIPI + tAdicoes.FieldByName('Vlr_BCIPI').AsFloat;
                 mTotalIPI    := mTotalIPI   + tAdicoes.FieldByName('Vlr_IPI').AsFloat;

                 tAdicoes.Next;
                 Inc(mLinha2);
           end;

           mPlanilha.Sheets[2].Range['E'+InttoStr(mLinha2),'J'+InttoStr(mLinha2)].Interior.Color    := RGB(255, 255, 140);
           mPlanilha.Sheets[2].Range['E'+InttoStr(mLinha2),'J'+InttoStr(mLinha2)].Interior.Pattern  := 1;
           mPlanilha.Sheets[2].Range['E'+InttoStr(mLinha2),'J'+InttoStr(mLinha2)].Font.Bold         := true;
           mPlanilha.Sheets[2].Range['E'+InttoStr(mLinha2),'J'+InttoStr(mLinha2)].Font.Color        := clBlack;
           mPlanilha.Sheets[2].Range['E'+InttoStr(mLinha2),'J'+InttoStr(mLinha2)].Borders.LineStyle := 1; //xlContinuous;
           mPlanilha.Sheets[2].Range['E'+InttoStr(mLinha2),'J'+InttoStr(mLinha2)].Borders.Weight    := 2; //xlThin;
           mPlanilha.Sheets[2].Range['E'+InttoStr(mLinha2),'J'+InttoStr(mLinha2)].Borders.Color     := RGB(0,0,0);

           mPlanilha.Sheets[2].Cells[mLinha2,05] := mTotalBCII;
           mPlanilha.Sheets[2].Cells[mLinha2,07] := mTotalII;
           mPlanilha.Sheets[2].Cells[mLinha2,08] := mTotalBCIPI;
           mPlanilha.Sheets[2].Cells[mLinha2,10] := mTotalIPI;

           mPlanilha.Sheets[2].Cells[mLinha2,05].NumberFormat := '#.##0,00_);(#.##0,00)';
           mPlanilha.Sheets[2].Cells[mLinha2,07].NumberFormat := '#.##0,00_);(#.##0,00)';
           mPlanilha.Sheets[2].Cells[mLinha2,08].NumberFormat := '#.##0,00_);(#.##0,00)';
           mPlanilha.Sheets[2].Cells[mLinha2,10].NumberFormat := '#.##0,00_);(#.##0,00)';
      End;
end;

procedure TProcesso_Importacao.mnMarcarCustoEntradaClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Deseja acrecentar esta despesa ao custo de entrada da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Entrada.Value  := true;
                           PagarReceberCusto_Seletivo.Value := false;
              PagarReceber.Post;
           End;
      End;

      TotalizaDespesas;
end;

procedure TProcesso_Importacao.mnDesmarcarCustoEntradaClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Deseja remover esta despesa do Custo de Entrada da Mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Entrada.Value := False;
              PagarReceber.Post;
           End;
      End;

      TotalizaDespesas;
end;

procedure TProcesso_Importacao.mnMarcarCustoTodosEntradaClick(Sender: TObject);
begin
      If MessageDlg('Deseja selecionar todas as despesas como Custo de Entrada da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
         With Dados do begin
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Entrada = 1, Custo_Seletivo = 0 WHERE(Processo = :pProcesso) ');
              PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
              PagarReceber.Execute;

              TotalizaDespesas;
         End;
      End;
end;

procedure TProcesso_Importacao.mnDesmarcarCustoTodosEntradaClick(Sender: TObject);
begin
     If MessageDlg('Deseja remover todas as despesas do Custo de Entrada da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
        With Dados do begin
             PagarReceber.SQL.Clear;
             PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Entrada = 0 WHERE(Processo = :pProcesso) ');
             PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
             PagarReceber.Execute;

             TotalizaDespesas;
        End;
     End;
end;

procedure TProcesso_Importacao.mnMarcarSeletivoClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Deseja adicionar esta despesa do Custo Seletivo da Mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Seletivo.Value := true;
                           PagarReceberCustoConta.Value     := false;
                           PagarReceberCusto_Entrada.Value  := false;
              PagarReceber.Post;
           End;
      End;
      TotalizaDespesas;
end;

procedure TProcesso_Importacao.mnDesmarcarSeletivoClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Deseja remover esta despesa do Custo Seletivo da Mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Seletivo.Value := false;
              PagarReceber.Post;
           End;
      End;

      TotalizaDespesas;
end;

procedure TProcesso_Importacao.Grade2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     // Força o click com o botão esquerdo do mouse caso seja clicado o botão direito, para posicionar no registro da tabela.
     If Button = mbRight then begin
        {Simula o pressionamento do botão esquerdo do mouse}
        Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, x, y, 0, 0);
        { Simula soltando o botão esquerdo do mouse }
        Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, x, y, 0, 0);
     End;
end;


procedure TProcesso_Importacao.cDesativadoClick(Sender: TObject);
begin
     // Se o processo contem contrato de câmbio não deixa desativar.
     If (Dados.ProcessosDOC.State = dsEdit) and (cDesativado.Checked = true) then begin
        tCambios.SQL.Clear;
        tCambios.SQL.Add('SELECT COUNT(*) AS Qtde FROM ContratoCambioItens WHERE(Processo = :pProcesso)');
        tCambios.ParamByName('pProcesso').AsString := Dados.ProcessosDOCProcesso.AsString;
        tCambios.Open;
        If tCambios.FieldByName('Qtde').AsInteger > 0 then begin
           cDesativado.Checked := false;
           MessageDlg('Processo não pode ser desativado!'+#13+#13+'Existe contrato(s) de câmbio informados.', mtInformation, [mbOK], 0);
        End;
     End;
end;

procedure TProcesso_Importacao.mnMarcarCustoOutrosClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Deseja acrecentar esta despesa ao custo (Outros)?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Outros.Value  := true;
              PagarReceber.Post;
           End;
      End;

      TotalizaDespesas;
end;

procedure TProcesso_Importacao.mnDesmarcarCustoOutrosClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Deseja remover esta despesa do Custo (Outros)?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Outros.Value := False;
              PagarReceber.Post;
           End;
      End;

      TotalizaDespesas;
end;

procedure TProcesso_Importacao.mnMarcarCustoTodosOutrosClick(Sender: TObject);
begin
      If MessageDlg('Deseja selecionar todas as despesas como Custo (Outros)?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
         With Dados do begin
              Grade2.DisableScroll;
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Outros = 1 WHERE(Processo = :pProcesso) ');
              PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
              PagarReceber.Execute;

              TotalizaDespesas;
         End;
      End;
end;

procedure TProcesso_Importacao.mnDesmarcarCustoTodosOutrosClick(Sender: TObject);
begin
     If MessageDlg('Deseja remover todas as despesas do Custo (Outros)?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
        With Dados do begin
             PagarReceber.SQL.Clear;
             PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Outros = 0 WHERE(Processo = :pProcesso) ');
             PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
             PagarReceber.Execute;

             TotalizaDespesas;
        End;
     End;
end;

procedure TProcesso_Importacao.GradeListaCellClick(Column: TColumn);
begin
     TotalizaDespesas;
end;

procedure TProcesso_Importacao.cModalidadeExit(Sender: TObject);
begin
      With Dados do begin
           If ProcessosDOCModalidade_Importacao.AsInteger = 1 then begin
              ProcessosDOCConsignatario_CNPJ.Value := EmpresasCNPJ.AsString;
              ProcessosDOCConsignatario_UF.Value   := EmpresasEstado.AsString;
           End;
      End;     
end;

procedure TProcesso_Importacao.bOrdemClick(Sender: TObject);
begin
      if DataLimpa(Dados.ProcessosDOCData.AsString) then begin
         MessageDlg('Campo "Data" do processo é obrigatório para o preenchimento da Ordem de Compra!', mtError, [mbOK], 0);
         Abort;
      end;

//      OrdemCompra := TOrdemCompra.Create(Self);
//      OrdemCompra.Caption := Caption;
//      OrdemCompra.ShowModal;
      Processo_PO := TProcesso_PO.Create(Self);
      Processo_PO.Caption := Caption;
      Processo_PO.ShowModal;

      //FiltraProcesso;
      with Dados do begin
           ProcessosDOC.Close;
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE  Tipo IN(''IMPORTAÇÃO'', ''COMPRA INTERNA'')');
           ProcessosDOC.SQL.Add('ORDER BY Processo');
           ProcessosDOC.Open;
      end;
end;

procedure TProcesso_Importacao.bDespesasClick(Sender: TObject);
begin
      Processo_ImportacaoDespesas := TProcesso_ImportacaoDespesas.Create(Self);
      Processo_ImportacaoDespesas.Caption := Caption;
      Processo_ImportacaoDespesas.ShowModal;
end;

procedure TProcesso_Importacao.bDocumentoClick(Sender: TObject);
Var
   i: Integer;
begin
      with Dados do begin
           If OpenDialog1.Execute then begin
              for i := 0 to OpenDialog1.Files.Count-1 do begin
                  if Length(OpenDialog1.Files[i]) > 250 then begin
                     messagedlg('Nome do arquivo tem mais de 250 caracteres!'+#13+#13+'Diminua o nome do arquivo ou da pasta para adicionar.'+#13+#13+'Arquivo: '+OpenDialog1.Files[i], mtError, [mbok], 0);
                  end else begin
                     cListaDoc.Items.Add(OpenDialog1.Files[i]);
                  end;
              end;
           end;
      end;
end;

procedure TProcesso_Importacao.bContasClick(Sender: TObject);
begin
     if messagedlg('Atenção!'+#13+'Isso ira criar as contas no plano de contas caso não existam.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
        screen.Cursor := crSqlWait;
        Panel1.Enabled := false;

        // Abre as contas do processo no plano de contas se estiver parâmetrizado nos tipos de processo.
        SalvaConta(1);
        SalvaConta(2);
        SalvaConta(3);

        Panel1.Enabled := true;
        screen.Cursor := crDefault;
     end;
end;

procedure TProcesso_Importacao.SalvaConta(Campo: integer);
var
    mTerceiros
   ,mnat
   ,mConta: string;
begin
      with Dados, dmContab do begin
           with tContaPlano do begin
                sql.Clear;
                sql.Add('select * from PlanoContas where Codigo = :pCodigo' );
                if Campo = 1 then
                   ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_Despesas').asstring;
                if Campo = 2 then
                   ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_Impostos').asstring;
                if Campo = 3 then
                   ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_Adiantamento').asstring;
                Open;
           end;
           if tContaPlano.RecordCount > 0 then begin
              mNat       := tContaPlano.FieldByName('Natureza').AsString;
              mTerceiros := UpperCase(Trim(tContaPlano.FieldByName('Tipo_Terceiros').AsString));
              mConta     := tContaPlano.FieldByName('Conta').AsString;

              // Pegando o número da última conta criada.
              tContaPlano.SQL.Clear;
              tContaPlano.SQL.Add('select max(cast(Conta as bigint)) as Conta from PlanoContas where (Conta like :pGrupo)' );
              tContaPlano.ParamByName('pGrupo').AsString := mConta;
              tContaPlano.Open;

              if Configuracao.FieldByName('Contab_ContaNova').AsBoolean then
                 mConta := inttostr(tContaPlano.FieldByName('Conta').asinteger + 1)
              else
                 mConta := tContaPlano.FieldByName('Conta').AsString;

              tContaPlano.SQL.Clear;
              tContaPlano.SQL.Add('select Codigo, Conta from PlanoContas where Conta like :pConta and Descricao like :pDesc' );
              tContaPlano.ParamByName('pConta').AsString := AnsiString(mConta);
              tContaPlano.ParamByName('pDesc').AsString  := 'PROCESSO '+trim(ProcessosDOCProcesso.AsString);
              tContaPlano.Open;

              if tContaPlano.RecordCount = 0 then begin
                 // Pegando o número do último código criado no (Plano Principal/Terceiros).
                 tCodigoPlano.SQL.Clear;
                 tCodigoPlano.SQL.Add('select isnull(max(cast(Codigo as int)), 0)+1 as Codigo from PlanoContas where substring(Conta, 1, 1) = :pConta');
                 tCodigoPlano.ParamByName('pConta').AsString := Copy(mConta, 1, 1);
                 tCodigoPlano.Open;

                 PlanoContas.Append;
                             PlanoContasConta.Value             := AnsiString(mConta);
                             PlanoContasCodigo.Value            := tCodigoPlano.FieldByName('Codigo').AsAnsiString;
                             PlanoContasDescricao.Value         := 'PROCESSO '+trim(ProcessosDOCProcesso.AsString)+ ' - DI '+trim(ProcessosDOCNumero_Declaracao.AsString);
                             PlanoContasSaldo_Anterior.Value    := 0;
                             PlanoContasDebito.Value            := 0;
                             PlanoContasCredito.Value           := 0;
                             PlanoContasSintetica.Value         := False;
                             PlanoContasNatureza.AsString       := mNat;
                             PlanoContasLALUR.Value             := False;
                             PlanoContasMostrar_Balanco.Value   := False;
                             PlanoContasImprimir_Razao.Value    := False;
                             PlanoContasEmpresa.Value           := EmpresasCNPJ.asstring;
                             PlanoContasData_Inclusao.Value     := Date;
                             PlanoContasOrigem.Value            := PlanoContasOrigem.Value;
                             PlanoContasCodigo_Terceiros.Value  := ProcessosDOC.FieldByName('Processo').AsAnsiString;
                             PlanoContasGrupo.Value             := Copy(PlanoContasConta.Value, 1, 1);
                             PlanoContasTipo_Terceiros.Value    := 'PR';
                             PlanoContasCNPJ_CPF.AsString       := '';
                             PlanoContasPessoa.Value            := '';
                             PlanoContasSelecao.Value           := false;
                             PlanoContasConta_Resultado.Value   := false;
                             PlanoContasDRE.Value               := false;
                             PlanoContasNivel.Value             := NivelConta(AnsiString(mConta), EmpresasMascara_PlanoContas.AsString);
                             PlanoContasConta_Grupo.value       := GrupoConta(AnsiString(mConta), EmpresasMascara_PlanoContas.AsString, PlanoContasNivel.AsInteger);
                 PlanoContas.Post;

                 tCodigoPlano.Close;
                 tContaPlano.Close;

                 // Registra a conta aberta no plano, no cadastro do processo.
                 with ProcessosDOC do begin
                      edit;
                          if Campo = 1 then FieldByName('Conta_Despesas').Value     := PlanoContasCodigo.Value;
                          if Campo = 2 then FieldByName('Conta_Impostos').Value     := PlanoContasCodigo.Value;
                          if Campo = 3 then FieldByName('Conta_Adiantamento').Value := PlanoContasCodigo.Value;
                      Post;
                 end;
              end else begin
                 // Registra a conta aberta no plano, no cadastro do processo.
                 with ProcessosDOC do begin
                      edit;
                          if Campo = 1 then FieldByName('Conta_Despesas').Value     := tContaPlano.fieldbyName('Codigo').asstring;
                          if Campo = 2 then FieldByName('Conta_Impostos').Value     := tContaPlano.fieldbyName('Codigo').asstring;
                          if Campo = 3 then FieldByName('Conta_Adiantamento').Value := tContaPlano.fieldbyName('Codigo').asstring;
                      Post;
                 end;
              end;
           end;
      end;
end;

procedure TProcesso_Importacao.PegaNotas;
begin
      with tNotas do begin
           sql.Clear;
           sql.Add('select Numero');
           sql.Add('      ,Data_Emissao');
           sql.Add('      ,Hora_EntradaSaida');
           sql.Add('      ,Tipo = iif(Saida_Entrada = 0, ''ENTRADA'', ''SAÍDA'')');
           sql.Add('      ,Valor_TotalNota');
           sql.Add('      ,Operacao = (select Descricao from TipoNota where Codigo = Tipo_Nota)');
           sql.Add('      ,CFOP = Natureza_Codigo +'' ''+ (select Descricao_NF from Cybersoft_Cadastros.dbo.Natureza where Codigo = Natureza_Codigo)');
           sql.Add('from NotasFiscais ');
           sql.Add('where Processo = '+quotedstr(cProcesso.Text));
           sql.Add('union all');
           sql.Add('select Nota');
           sql.Add('      ,Data_Emissao');
           sql.Add('      ,Hora_EntradaSaida = null');
           sql.Add('      ,Tipo = ''TERCEIROS'' ');
           sql.Add('      ,Valor_TotalNota');
           sql.Add('      ,Operacao = (select Descricao from ReferenciasFiscais where Codigo = Referencia_Fiscal)');
           sql.Add('      ,CFOP = Natureza_Codigo +'' ''+ (select Descricao_NF from Cybersoft_Cadastros.dbo.Natureza where Codigo = Natureza_Codigo)');
           sql.Add('from NotasTerceiros');
           sql.Add('where Processo = '+quotedstr(cProcesso.Text));
           sql.Add('order by Tipo, Data_Emissao, Hora_EntradaSaida');
           open;
      end;
end;


end.
