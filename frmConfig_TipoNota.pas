unit frmConfig_TipoNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Mask,  DBCtrls, Grids, DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  Buttons, RXDBCtrl, ImgList, Menus, RXCtrls, ClipBrd, RxLookup, RxToolEdit, system.UITypes, MemDS;

type
  TConfig_TipoNota = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tCodigo: TMSQuery;
    tCodigoCodigo: TIntegerField;
    Pasta: TPageControl;
    TabSheet1: TTabSheet;
    cDescricao: TDBEdit;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    cCodigo: TDBEdit;
    TabSheet3: TTabSheet;
    TabSheet2: TTabSheet;
    StaticText67: TStaticText;
    GradeCampos: TDBGrid;
    cComplemento: TDBRichEdit;
    cEntrada_Saida: TDBRadioGroup;
    StaticText4: TStaticText;
    GroupBox2: TGroupBox;
    cNFReferencia: TDBCheckBox;
    cApuracaoPISCOFINS: TDBCheckBox;
    GroupBox3: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    cGerarFinanceiro: TDBCheckBox;
    TabSheet4: TTabSheet;
    tCopia: TMSQuery;
    StaticText57: TStaticText;
    DBEdit1: TDBEdit;
    cComplementar: TDBCheckBox;
    mnVariavel: TPopupMenu;
    Clientes1: TMenuItem;
    FORNECEDORES1: TMenuItem;
    PROCESSO1: TMenuItem;
    DEVOLUO1: TMenuItem;
    bPesquisar: TButton;
    tClassificacao: TMSQuery;
    dstClassificacao: TDataSource;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    tQtde: TMSQuery;
    tNotas: TMSQuery;
    cRelatorioVendas: TDBCheckBox;
    TabSheet5: TTabSheet;
    cCST: TGroupBox;
    cCSTPIS: TDBLookupComboBox;
    cCSTCOFINS: TDBLookupComboBox;
    lCSTPIS: TStaticText;
    lCSTCOFINS: TStaticText;
    GrupoPIS: TGroupBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    GrupoCOFINS: TGroupBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    GroupBox4: TGroupBox;
    cEstoque: TDBCheckBox;
    cInventario: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    pFormulas: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    DBMemo1: TDBMemo;
    bUnitario: TButton;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    bBCIPI: TButton;
    DBMemo12: TDBMemo;
    bBCICMS: TButton;
    bVlICMS: TButton;
    DBMemo13: TDBMemo;
    bBCMVA: TButton;
    DBMemo14: TDBMemo;
    bValorMVA: TButton;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemo9: TDBMemo;
    DBMemo6: TDBMemo;
    DBMemo7: TDBMemo;
    DBMemo10: TDBMemo;
    bBCISMCSub: TButton;
    bVlICMSSub: TButton;
    bReducaoICMS: TButton;
    bTotalSeguro: TButton;
    bDespesas: TButton;
    bProdutoImpostos: TButton;
    bTotalNota: TButton;
    DBMemo11: TDBMemo;
    Button2: TButton;
    DBMemo15: TDBMemo;
    Button3: TButton;
    DBMemo16: TDBMemo;
    Button4: TButton;
    DBMemo17: TDBMemo;
    Button5: TButton;
    DBMemo18: TDBMemo;
    Button6: TButton;
    DBMemo19: TDBMemo;
    DBCheckBox14: TDBCheckBox;
    bDuplicar: TButton;
    bExportarFormulas: TButton;
    bImportarFormulas: TButton;
    OpenDialog1: TOpenDialog;
    cTipoCredito: TRxDBLookupCombo;
    StaticText18: TStaticText;
    DBMemo20: TDBMemo;
    DBMemo21: TDBMemo;
    bValorPIS: TButton;
    bValorCOFINS: TButton;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    TabSheet8: TTabSheet;
    Grade: TDBGrid;
    cFiltro: TRadioGroup;
    cFinalidade: TDBRadioGroup;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBCheckBox29: TDBCheckBox;
    cICMSDestacar: TDBCheckBox;
    DBMemo22: TDBMemo;
    bBCPIS: TButton;
    DBCheckBox13: TDBCheckBox;
    bFiliais: TButton;
    DBMemo23: TDBMemo;
    bInventario: TButton;
    DBCheckBox30: TDBCheckBox;
    GroupBox6: TGroupBox;
    StaticText60: TStaticText;
    StaticText61: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet9: TTabSheet;
    cII_NomeC: TDBLookupComboBox;
    cCOFINS_NomeC: TDBLookupComboBox;
    cPIS_NomeC: TDBLookupComboBox;
    cDespesas_NomeC: TDBLookupComboBox;
    cFrete_NomeC: TDBLookupComboBox;
    cSeguro_NomeC: TDBLookupComboBox;
    cIPI_NomeC: TDBLookupComboBox;
    cICMSSub_NomeC: TDBLookupComboBox;
    cICMSOper_NomeC: TDBLookupComboBox;
    StaticText2: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    cICMSOper_CodD: TDBEdit;
    StaticText6: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    cICMSSub_CodD: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    cIPI_CodD: TDBEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    cSeguro_CodD: TDBEdit;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    cFrete_CodD: TDBEdit;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    DBEdit18: TDBEdit;
    DBLookupComboBox12: TDBLookupComboBox;
    lPIS: TStaticText;
    DBLookupComboBox13: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBLookupComboBox14: TDBLookupComboBox;
    lCOFINS: TStaticText;
    DBLookupComboBox15: TDBLookupComboBox;
    DBEdit23: TDBEdit;
    DBLookupComboBox16: TDBLookupComboBox;
    StaticText19: TStaticText;
    DBEdit25: TDBEdit;
    DBLookupComboBox18: TDBLookupComboBox;
    cICMSOper_CodC: TDBEdit;
    cIPI_CodC: TDBEdit;
    cSeguro_CodC: TDBEdit;
    cFrete_CodC: TDBEdit;
    cDespesas_CodC: TDBEdit;
    cPIS_CodC: TDBEdit;
    cCOFINS_CodC: TDBEdit;
    cII_CodC: TDBEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText16: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox17: TDBLookupComboBox;
    cICMSSub_CodC: TDBEdit;
    StaticText29: TStaticText;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    StaticText9: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    StaticText28: TStaticText;
    StaticText43: TStaticText;
    TabSheet10: TTabSheet;
    lFOBFornecedor: TStaticText;
    cHistoricoNF1: TDBLookupComboBox;
    cFOB2D: TDBLookupComboBox;
    cFOB1D: TDBEdit;
    lHistoricoNF1: TStaticText;
    lTotalNota: TStaticText;
    cTotalNota4: TDBLookupComboBox;
    cTotalNotaC: TDBEdit;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    cHistoricoFOB1: TDBLookupComboBox;
    StaticText50: TStaticText;
    lFOBProcesso: TStaticText;
    cFOB4: TDBLookupComboBox;
    cTotalFOBD: TDBEdit;
    StaticText52: TStaticText;
    StaticText53: TStaticText;
    cHistoricoFOB2: TDBLookupComboBox;
    StaticText55: TStaticText;
    DBLookupComboBox19: TDBLookupComboBox;
    StaticText27: TStaticText;
    StaticText46: TStaticText;
    StaticText49: TStaticText;
    StaticText51: TStaticText;
    cHistoricoProdutos: TDBLookupComboBox;
    cProdutosD: TDBEdit;
    cTotalNotaD: TDBEdit;
    cTotalNota2: TDBLookupComboBox;
    cFOB1C: TDBEdit;
    cFOB2C: TDBLookupComboBox;
    cTotalFOBC: TDBEdit;
    DBLookupComboBox21: TDBLookupComboBox;
    cProdutosC: TDBEdit;
    DBLookupComboBox22: TDBLookupComboBox;
    cHistoricoEstoque: TDBLookupComboBox;
    StaticText26: TStaticText;
    StaticText54: TStaticText;
    DBLookupComboBox24: TDBLookupComboBox;
    cEstoqueD: TDBEdit;
    StaticText58: TStaticText;
    StaticText59: TStaticText;
    cEstoqueC: TDBEdit;
    DBLookupComboBox26: TDBLookupComboBox;
    cEstoqueRep: TDBCheckBox;
    StaticText62: TStaticText;
    cEnquadra: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    StaticText91: TStaticText;
    cLogo: TFilenameEdit;
    StaticText63: TStaticText;
    cMsg1: TDBEdit;
    Panel2: TPanel;
    iLogo: TImage;
    StaticText64: TStaticText;
    cMsg2: TDBEdit;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    GroupBox7: TGroupBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    StaticText65: TStaticText;
    cPesquisa: TEdit;
    SpeedButton2: TSpeedButton;
    bCopiarContabil: TButton;
    bLimparContabil: TButton;
    StaticText66: TStaticText;
    cPesquisaH: TEdit;
    SpeedButton1: TSpeedButton;
    bCopiarTodos: TButton;
    bFiliaisContas: TButton;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    cPesqCampo: TEdit;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    Button1: TButton;
    DBMemo24: TDBMemo;
    StaticText68: TStaticText;
    cFisco: TDBRichEdit;
    DBCheckBox53: TDBCheckBox;
    DBMemo8: TDBMemo;
    bTotalFrete: TButton;
    DBMemo25: TDBMemo;
    bDIFAL: TButton;
    DBMemo26: TDBMemo;
    Button7: TButton;
    PROCESSOImpostos1: TMenuItem;
    PROCESSOAdiantamento1: TMenuItem;
    StaticText95: TStaticText;
    DBEdit15: TDBEdit;
    DBCheckBox55: TDBCheckBox;
    bICMSDeson: TButton;
    DBMemo27: TDBMemo;
    Button8: TButton;
    DBMemo28: TDBMemo;
    Button9: TButton;
    DBMemo29: TDBMemo;
    Button10: TButton;
    DBMemo30: TDBMemo;
    Button11: TButton;
    DBMemo31: TDBMemo;
    GroupBox8: TGroupBox;
    StaticText69: TStaticText;
    StaticText70: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    CFOPDentro: TMSQuery;
    dsCFOPDentro: TDataSource;
    dsCFOPFora: TDataSource;
    CFOPFora: TMSQuery;
    RxDBLookupCombo4: TRxDBLookupCombo;
    GroupBox9: TGroupBox;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;
    GroupBox10: TGroupBox;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox67: TDBCheckBox;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    cRemessa: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    cLinha: TEdit;
    StaticText71: TStaticText;
    DBMemo32: TDBMemo;
    bValorPISST: TButton;
    DBMemo33: TDBMemo;
    bValorCOFINSST: TButton;
    TabSheet11: TTabSheet;
    GroupBox5: TGroupBox;
    StaticText30: TStaticText;
    cClassificacaoRec: TDBLookupComboBox;
    StaticText3: TStaticText;
    cTipoDoc: TDBLookupComboBox;
    StaticText56: TStaticText;
    DBLookupComboBox20: TDBLookupComboBox;
    StaticText17: TStaticText;
    DBLookupComboBox25: TDBLookupComboBox;
    GroupBox11: TGroupBox;
    StaticText72: TStaticText;
    DBLookupComboBox23: TDBLookupComboBox;
    StaticText73: TStaticText;
    DBLookupComboBox27: TDBLookupComboBox;
    StaticText74: TStaticText;
    DBLookupComboBox28: TDBLookupComboBox;
    StaticText75: TStaticText;
    DBLookupComboBox29: TDBLookupComboBox;
    StaticText76: TStaticText;
    DBLookupComboBox30: TDBLookupComboBox;
    Button12: TButton;
    DBMemo34: TDBMemo;
    Button13: TButton;
    DBMemo35: TDBMemo;
    DBCheckBox36: TDBCheckBox;
    DBMemo36: TDBMemo;
    Button14: TButton;
    DBMemo37: TDBMemo;
    Button15: TButton;
    DBCheckBox38: TDBCheckBox;
    cEstDevol: TDBCheckBox;
    DBMemo38: TDBMemo;
    Button16: TButton;
    DBCheckBox40: TDBCheckBox;
    cDevImp: TDBCheckBox;
    Button17: TButton;
    DBMemo39: TDBMemo;
    Button18: TButton;
    DBMemo40: TDBMemo;
    Button19: TButton;
    DBMemo41: TDBMemo;
    Button20: TButton;
    DBMemo42: TDBMemo;
    DBMemo43: TDBMemo;
    Button21: TButton;
    DBMemo44: TDBMemo;
    Button22: TButton;
    GroupBox12: TGroupBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox57: TDBCheckBox;
    GroupBox13: TGroupBox;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    DBCheckBox69: TDBCheckBox;
    DBCheckBox70: TDBCheckBox;
    StaticText77: TStaticText;
    DBLookupComboBox31: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bBCICMSClick(Sender: TObject);
    procedure bVlICMSClick(Sender: TObject);
    procedure bBCISMCSubClick(Sender: TObject);
    procedure bVlICMSSubClick(Sender: TObject);
    procedure bDespesasClick(Sender: TObject);
    procedure bTotalNotaClick(Sender: TObject);
    procedure GradeCamposDblClick(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bUnitarioClick(Sender: TObject);
    procedure bReducaoICMSClick(Sender: TObject);
    procedure PastaChange(Sender: TObject);
    procedure GradeFormulasDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure GradeCamposMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure cComplementoDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure cComplementoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure bProdutoImpostosClick(Sender: TObject);
    procedure bTotalFreteClick(Sender: TObject);
    procedure bTotalSeguroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bCopiarContabilClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure StaticText30Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure PROCESSO1Click(Sender: TObject);
    procedure cEntrada_SaidaChange(Sender: TObject);
    procedure FORNECEDORES1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure DEVOLUO1Click(Sender: TObject);
    procedure bBCIPIClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure StaticText17Click(Sender: TObject);
    procedure bBCMVAClick(Sender: TObject);
    procedure bValorMVAClick(Sender: TObject);
    procedure cGerarFinanceiroClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure bDuplicarClick(Sender: TObject);
    procedure bExportarFormulasClick(Sender: TObject);
    procedure bImportarFormulasClick(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure bValorPISClick(Sender: TObject);
    procedure bValorCOFINSClick(Sender: TObject);
    procedure cFiltroClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cComplementoChange(Sender: TObject);
    procedure bBCPISClick(Sender: TObject);
    procedure bFiliaisClick(Sender: TObject);
    procedure bInventarioClick(Sender: TObject);
    procedure PegaHint;
    procedure cEnquadraMouseUp(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure cEnquadraChange(Sender: TObject);
    procedure cLogoExit(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure bLimparContabilClick(Sender: TObject);
    procedure cPesquisaHChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bCopiarTodosClick(Sender: TObject);
    procedure bFiliaisContasClick(Sender: TObject);
    procedure cPesqCampoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bDIFALClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure PROCESSOImpostos1Click(Sender: TObject);
    procedure PROCESSOAdiantamento1Click(Sender: TObject);
    procedure bICMSDesonClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure cComplementoClick(Sender: TObject);
    procedure cComplementoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bValorPISSTClick(Sender: TObject);
    procedure bValorCOFINSSTClick(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure cFinalidadeChange(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa   : String;
    mFormata    : Boolean;
    mNFETipoNota: String;
  end;

var
  Config_TipoNota: TConfig_TipoNota;

implementation

Uses frmDados, frmConfig_TipoNotaFormula, frmDMFiscal, frmDMContab, frmCadastro_ClassificacaoFinanceira, frmCadastro_TiposDocumentos,
     frmCadastro_ModalidadesPagamento, frmConfig_TipoNotaFiliais, frmMenu_Principal, Funcoes;

{$R *.dfm}

procedure TConfig_TipoNota.FormShow(Sender: TObject);
var i:integer;
begin
      Screen.Cursor :=crSQLWait;
      With Dados, dmContab, dmFiscal do Begin
           with TipoNota do begin
                close;
                sql.Clear;
                sql.Add('select * from TipoNota order by Codigo');
                open;
                If mNFETipoNota <> '' then Locate('Codigo', mNFETipoNota, [loCaseInsensitive]);
           end;
           with Historicos do begin
                sql.Clear;
                SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Descricao');
                Open;
           end;
           with ClassificacaoFinanceira do begin
                sql.Clear;
                sql.Add('select * from ClassificacaoFinanceira where Tipo = :pTipo and Titulo = 0 and Desativada <> 1 order by Codigo');
                Parambyname('pTipo').asstring := iif(TipoNotaSaida_Entrada.Value = 0, 'P', 'R');
                open;
           end;
           with ModalidadesPgto do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Descricao');
                Open;
           end;
           with tClassificacao do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = ''P'') AND (Desativada <> 1) ORDER BY Codigo');
                Open;
           end;
           with PlanoContas do begin
                SQL.Clear;
                SQL.Add('select * from PlanoContas where isnull(Sintetica, 0) = 0 order by Descricao');
                Open;
           end;
           with CentroCusto do begin
                SQL.Clear;
                //SQL.Add('SELECT * FROM CentroCusto WHERE LEN(Codigo) = 7 ORDER BY Descricao');
                SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
                Open;
           end;
           with TiposDocumentos do begin
                SQL.Clear;
                TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE(Desativada <> 1)');
                TiposDocumentos.Open;
           end;
           with CSTTabelaB do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM CSTTAbelaB WHERE Codigo > 90');
                Open;
           end;
           with CSTPIS do begin
                SQL.Clear;
                if TipoNotaSaida_Entrada.AsInteger = 0 then begin
                   CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo > 49) OR (Codigo = 99) ORDER BY Codigo');
                end else begin
                   CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo <= 49) OR (Codigo = 99) ORDER BY Codigo');
                end;
                Open;
           end;
           with CSTCOFINS do begin
                SQL.Clear;
                if TipoNotaSaida_Entrada.AsInteger = 0 then begin
                   CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo > 49) OR (Codigo = 99) ORDER BY Codigo');
                end else begin
                   CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo <= 49) OR (Codigo = 99) ORDER BY Codigo');
                end;
                Open;
           end;
           with TiposBCCredito do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM BCCredito ORDER BY Descricao');
                Open;
           end;
           with CFOPDentro do begin
                sql.Clear;
                if TipoNota.fieldbyname('Saida_Entrada').AsInteger = 0 then begin
                    sql.Add('select Codigo, Descricao_NF from Natureza where Saida_Entrada = 0 and Ativo = 1');
                end else begin
                    sql.Add('select Codigo, Descricao_NF from Natureza where Saida_Entrada = 1 and substring(Codigo,1,1) < ''6'' and Ativo = 1');
                end;
                open;
           end;
           with CFOPFora do begin
                sql.Clear;
                if TipoNota.fieldbyname('Saida_Entrada').AsInteger = 0 then begin
                    sql.Add('select Codigo, Descricao_NF from Natureza where Saida_Entrada = 0 and Ativo = 1');
                end else begin
                    sql.Add('select Codigo, Descricao_NF from Natureza where Saida_Entrada = 1 and substring(Codigo,1,1) > ''5'' and Ativo = 1');
                end;
                open;
           end;
           with Orgaos do begin
                sql.Clear;
                sql.Add('select * from OrgaosPublicos where Ambito = ''ESTADUAL'' order by Nome');
                open;
           end;
           with ClassTribut do begin
                sql.Clear;
                sql.Add('select * from ClassificacaoTributaria order by Codigo');
                open;
           end;

           CSTIPI.Open;
           EnquadramentoIPI.Open;

           Pasta.ActivePageIndex := 0;
      End;

      Screen.Cursor :=crDefault;
end;

procedure TConfig_TipoNota.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TConfig_TipoNota.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     //FecharTabelas(Dados, nil, nil, nil);
     LimpaMemoria;
     Config_TipoNota.Release;
     Config_TipoNota := nil;
end;

procedure TConfig_TipoNota.bProdutoImpostosClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor unitário do Produto c/Impostos.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_MercadoriaImp';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_MercadoriaImp';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor unitário do Produto c/Impostos';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bUnitarioClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor unitário do Produto.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_Mercadoria';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_Mercadoria';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor unitário do Produto';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bReducaoICMSClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor da Redução do ICMS.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_ReducaoICMS';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_ReducaoICMS';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Redução ICMS';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bBCICMSClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da Base de cálculo do ICMS.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCICMS';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCICMS';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Base de cálculo do ICMS Operacional';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bVlICMSClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do ICMS.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_VlrICMS';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_VlrICMS';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do ICMS Operacional';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bBCISMCSubClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da Base de Cálculo do ICMS Substituição.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCICMSSub';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCICMSSub';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Base de cálculo do ICMS Substitutivo';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bVlICMSSubClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do ICMS Substituição.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_VlrICMSSub';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_VlrICMSSub';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do ICMS Substitutivo';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bDespesasClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor de Outras Despesas Acessórias.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_OutrasDespesas';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_OutrasDespesas';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Outras Despesas Acessórias';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bDIFALClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do DIFAL.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_DIFAL';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_DIFAL';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do DIFAL';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bTotalNotaClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor Total do Pedido.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_TotalPedido';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_TotalPedido';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor Total do Pedido';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bTotalFreteClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor total do Frete.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_VlrFrete';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_VlrFrete';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Total do Frete';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bTotalSeguroClick(Sender: TObject);
begin
     Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
     Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor total do Seguro.';
     Config_TipoNotaFormula.mNomeFormula   := 'Formula_VlrSeguro';
     Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_VlrSeguro';
     Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Total do Seguro';
     Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.GradeCamposDblClick(Sender: TObject);
Var
    mLin   : Integer;
    mPos   : Integer;
    mReg   : TBookMark;
//    mLinha : string;
begin
     mReg   := Dados.Campos.GetBookmark;
     //mLinha := InputBox('Inserir campo', 'Número da Linha:', mLinha );
     mLin := StrtoInt(cLinha.text)-1;
     If cLinha.text <> '' then begin
        mLin := StrtoInt(cLinha.text)-1;
        cComplemento.Lines.Strings[mLin] := Trim(cComplemento.Lines.Strings[mLin]) + ' '+Dados.CamposCampo.Value+' ';

        Dados.Campos.First;
        While not Dados.Campos.Eof do begin
              mPos := cComplemento.FindText((Dados.CamposCampo.Value),0,Length(cComplemento.Text),[stMatchCase]);
              If mPos <> -1 then begin
                 cComplemento.SelStart            := mPos;
                 cComplemento.SelLength           := Length(Dados.CamposCampo.Value);
                 cComplemento.SelAttributes.Color := clGreen;
                 cComplemento.SelAttributes.Style := [fsBold];
              End;
              cComplemento.SelStart            := mPos+Length(Dados.CamposCampo.Value)+3;
              cComplemento.SelLength           := 0;
              cComplemento.SelAttributes.Color := clBlack;
              cComplemento.SelAttributes.Style := [];
              Dados.Campos.Next;
        End;
        Dados.Campos.GotoBookmark(mReg);
        Dados.Campos.FreeBookmark(mReg);
     End;
End;

procedure TConfig_TipoNota.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
var
   mTexto: widestring;
begin
     With dmFiscal, Dados do begin
          If Button = nbPost then begin
             if TipoNotaFinalidade_MErcadoria.AsInteger <> 2 then begin
                TipoNotaEstornar_TituloDev.Value := false;
             end;
             mTexto := cComplemento.Text;
             cComplemento.clear;
             cComplemento.Text := mTexto;
             if TipoNota.State = dsEdit then begin
                TipoNotaObs_Logo.Value := cLogo.FileName;
                NotasItens.SQL.Clear;
                NotasItens.SQL.Add('UPDATE NotasItens SET Movimenta_Inventario  = :pInventario,');
                NotasItens.SQL.Add('                      Apuracao_PISCOFINS    = :pApuracao,');
                NotasItens.SQL.Add('                      Finalidade_Mercadoria = :pFinalidade,');
                NotasItens.SQL.Add('                      Movimenta_EstoqueRep  = :pEstoqueRep');
                NotasItens.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
                NotasItens.ParamByName('pTipoNota').AsInteger   := TipoNotaCodigo.AsInteger;
                NotasItens.ParamByName('pInventario').AsBoolean := cInventario.Checked;
                NotasItens.ParamByName('pApuracao').AsBoolean   := cApuracaoPISCOFINS.Checked;
                NotasItens.ParamByName('pFinalidade').AsInteger := StrtoInt(cFinalidade.Values[cFinalidade.ItemIndex]);
                NotasItens.ParamByName('pEstoqueRep').AsBoolean := cEstoqueRep.Checked;
                NotasItens.Execute;
                NotasItens.SQL.Clear;
                NotasItens.SQL.Add('SELECT * FROM NotasItens');

                PedidosItens.SQL.Clear;
                PedidosItens.SQL.Add('UPDATE PedidosItens SET Movimenta_EstoqueRep  = :pEstoqueRep,');
                PedidosItens.SQL.Add('                        Apuracao_PISCOFINS    = :pApuracao,');
                PedidosItens.SQL.Add('                        Finalidade_Mercadoria = :pFinalidade,');
                PedidosItens.SQL.Add('                        Movimenta_Inventario  = :pInventario');
                PedidosItens.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
                PedidosItens.ParamByName('pTipoNota').AsInteger   := TipoNotaCodigo.AsInteger;
                PedidosItens.ParamByName('pEstoqueRep').AsBoolean := cEstoqueRep.Checked;
                PedidosItens.ParamByName('pApuracao').AsBoolean   := cApuracaoPISCOFINS.Checked;
                PedidosItens.ParamByName('pInventario').AsBoolean := cInventario.Checked;
                PedidosItens.ParamByName('pFinalidade').Value     := cFinalidade.Value;
                PedidosItens.Execute;
                PedidosItens.SQL.Clear;
                PedidosItens.SQL.Add('SELECT * FROM PedidosItens');

                Notas.SQL.Clear;
                Notas.SQL.Add('UPDATE NotasFiscais SET Apuracao_PISCOFINS = :pApuracao');
                Notas.SQL.Add('                       ,Complementar       = :pCompl');
                Notas.SQL.Add('                       ,ICMS_Destacar      = :pDestacar');
                Notas.SQL.Add('                       ,Remessa            = :pRemessa');
                Notas.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
                Notas.ParamByName('pTipoNota').AsInteger := TipoNotaCodigo.AsInteger;
                Notas.ParamByName('pApuracao').AsBoolean := cApuracaoPISCOFINS.Checked;
                Notas.ParamByName('pCompl').AsBoolean    := cComplementar.Checked;
                Notas.ParamByName('pDestacar').AsBoolean := cICMSDestacar.Checked;
                Notas.ParamByName('pRemessa').AsBoolean  := cRemessa.Checked;
                Notas.Execute;
                Notas.SQL.Clear;
                Notas.SQL.Add('SELECT * FROM NotasFiscais');

                Pedidos.SQL.Clear;
                Pedidos.SQL.Add('UPDATE Pedidos SET Apuracao_PISCOFINS = :pApuracao');
                Pedidos.SQL.Add('                  ,Complementar       = :pCompl');
                Pedidos.SQL.Add('                  ,ICMS_Destacar      = :pDestacar');
                Pedidos.SQL.Add('                  ,Remessa            = :pRemessa');
                Pedidos.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
                Pedidos.ParamByName('pTipoNota').AsInteger := TipoNotaCodigo.AsInteger;
                Pedidos.ParamByName('pApuracao').AsBoolean := cApuracaoPISCOFINS.Checked;
                Pedidos.ParamByName('pCompl').AsBoolean    := cComplementar.Checked;
                Pedidos.ParamByName('pDestacar').AsBoolean := cICMSDestacar.Checked;
                Pedidos.ParamByName('pRemessa').AsBoolean  := cRemessa.Checked;
                Pedidos.Execute;
                Pedidos.SQL.Clear;
                Pedidos.SQL.Add('SELECT * FROM Pedidos');
             end;
          end;

          If (Button = nbDelete) then begin
             // Verifica se o tipo de nota foi utilizado.
             If MessageDlg('Confirma excluir este tipo de nota fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

             tQtde.SQL.Clear;
             tQtde.SQL.Add('SELECT COUNT(Tipo_Nota) AS Utilizado FROM NotasFiscais WHERE(Tipo_Nota = :pTipo)');
             tQtde.ParamByName('pTipo').AsInteger := TipoNotaCodigo.AsInteger;
             tQtde.Open;
             If tQtde.FieldByName('Utilizado').AsInteger > 0 then begin
                MessageDlg('Registro Bloqueado!'+#13+#13+'Este tipo de nota já foi utilizado e não pode ser excluído.', mtInformation, [mbOK], 0);
                Abort;
             End;
          End;
     End;
end;

procedure TConfig_TipoNota.PastaChange(Sender: TObject);
begin
      With Dados do begin
           If Pasta.TabIndex = 2 then begin
              Campos.SQL.Clear;
              Campos.SQL.Add('SELECT * FROM Campos WHERE (Visivel = 1) AND (Descricao <> '''') ORDER BY Referencia, Descricao');
              Campos.Open;
           End;
           bCopiarContabil.Enabled := (Pasta.ActivePage = TabSheet4) and ((TipoNota.State = dsInsert) or (TipoNota.State = dsEdit));
           bCopiarTodos.Enabled    := (Pasta.ActivePage = TabSheet4) and ((TipoNota.State = dsInsert) or (TipoNota.State = dsEdit));
           bLimparContabil.Enabled := (Pasta.ActivePage = TabSheet4) and ((TipoNota.State = dsInsert) or (TipoNota.State = dsEdit));
      End;
end;

procedure TConfig_TipoNota.GradeFormulasDragOver(Sender, Source: TObject;X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

procedure TConfig_TipoNota.GradeCamposMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      GradeCampos.BeginDrag(True);
end;

procedure TConfig_TipoNota.cComplementoDragOver(Sender, Source: TObject; X,Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

procedure TConfig_TipoNota.cComplementoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
         cLinha.text := inttostr(cComplemento.caretPos.y+1);
end;

procedure TConfig_TipoNota.cComplementoDragDrop(Sender, Source: TObject; X,Y: Integer);
begin
      GradeCamposDblClick(Self);
end;

procedure TConfig_TipoNota.FormCreate(Sender: TObject);
begin
      if Menu_Principal.Height <= 768 then begin
         ScaleBy(93, 100);
      end;
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TConfig_TipoNota.bCopiarContabilClick(Sender: TObject);
Var
    mInput : String;
    mTipo,i: Integer;
begin
     mInput := Trim(InputBox('Importar Contas', 'Código do Tipo de nota origem:', mInput));
     mTipo  := 0;
     If mInput <> '' then begin
        Try
           mTipo := StrtoInt(mInput);
        Except
           ShowMessage('Código do tipo de nota origem invalído!'+#13+#13+'Digite apenas números no código do tipo de nota.');
           Abort;
        end;

        With Dados do begin
             If mTipo <> TipoNotaCodigo.Value then begin
                Screen.Cursor := crSQLWait;
                tCopia.SQL.Clear;
                tCopia.SQL.Add('SELECT * FROM TipoNota WHERE (Codigo = :pCodigo)');
                tCopia.ParamByName('pCodigo').AsInteger := mTipo;
                tCopia.Open;
                Screen.Cursor := crDefault;
                If TipoNotaSaida_Entrada.Value <> tCopia.FieldByName('Saida_Entrada').Value then begin
                   If TipoNotaSaida_Entrada.Value = 0 then begin
                      If MessageDlg('Atenção!'+#13+#13+'Você esta copiando os parâmetros de um tipo de saída para um de entrada.'+#13+#13+'Tem certeza de que quer copiar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                         Abort;
                      end;
                   end else begin
                      If MessageDlg('Atenção!'+#13+#13+'Você esta copiando os parâmetros de um tipo de entrada para um de saída.'+#13+#13+'Tem certeza de que quer copiar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                         Abort;
                      end;
                   end;
                end else begin
                   // Importando parametrização de contas contabeis de outro tipo de nota.
                   for i := 0 to TipoNota.FieldCount -1 do begin
                       if (Copy(TipoNota.Fields[i].FieldName, 1, 6) = 'Conta_') or (Copy(TipoNota.Fields[i].FieldName, 1, 10) = 'Historico_') then begin
                          TipoNota.FieldByName(TipoNota.Fields[i].FieldName).Value := tCopia.FieldByName(TipoNota.Fields[i].FieldName).Value;
                       end;
                   end;
                end;
              End else begin
                ShowMessage('Informe o código de um tipo de nota diferente do que você esta editando para importar!');
             End;
        End;
     end;
end;

procedure TConfig_TipoNota.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor             := crSQLWait;
      cEstoque.Enabled          := False;
      pFormulas.ActivePageIndex := 0;

      tNotas.SQL.Clear;
      tNotas.SQL.Add('SELECT (SELECT COUNT(*) FROM NotasFiscais WHERE(Tipo_Nota = :pTipo))+(SELECT COUNT(*) FROM Pedidos WHERE(Tipo_Nota = :pTipo)) AS Qtde');
      tNotas.ParamByName('pTipo').AsInteger := Dados.TipoNotaCodigo.AsInteger;
      tNotas.Open;

      cEntrada_Saida.ReadOnly := tNotas.FieldByName('Qtde').AsInteger > 0;
      cEstoque.Enabled        := tNotas.FieldByName('Qtde').AsInteger = 0;

      mFormata := Button = nbInsert;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then begin
            For i := 0 to ComponentCount -1 do begin
                If Components[I] is TDBCheckBox then
                   TDBCheckBox(Components[I]).Checked := false;
            End;

            cEstoque.Enabled                            := True;
            cEntrada_Saida.ReadOnly                     := false;
            Dados.TipoNotaVisiveis_ICMSOper.Value       := True;
            Dados.TipoNotaVisiveis_ICMSSub.Value        := True;
            Dados.TipoNotaVisiveis_Frete.Value          := True;
            Dados.TipoNotaVisiveis_Desconto.Value       := True;
            Dados.TipoNotaVisiveis_Seguro.Value         := True;
            Dados.TipoNotaVisiveis_Despesas.Value       := True;
            Dados.TipoNotaVisiveis_IPI.Value            := True;
            Dados.TipoNotaVisiveis_QuantidadeItem.Value := true;
            Dados.TipoNotaEmail_NFe.Value               := true;
            Dados.TipoNotaAtivo.Value                   := true;
            Dados.TipoNotaFinalidade_Mercadoria.Value   := 0;
            Dados.TipoNotaDevolucao_Importacao.Value    := false;

            tCodigo.Open;
                    Dados.TipoNotaCodigo.Value := tCodigoCodigo.Value+1;
            tCodigo.Close;
         End;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         TabSheet1.Enabled := True;
         TabSheet2.Enabled := True;
         TabSheet3.Enabled := True;
         TabSheet4.Enabled := True;
         TabSheet5.Enabled := True;
         If Pasta.ActivePageIndex = 0 then cDescricao.SetFocus;
         If (Pasta.ActivePageIndex = 1) and (cCSTPIS.Enabled = true) then cCSTPIS.SetFocus;
         If Pasta.ActivePageIndex = 2 then cComplemento.SetFocus;
         If Pasta.ActivePageIndex = 3 then bUnitario.SetFocus;
         If Pasta.ActivePageIndex = 4 then cClassificacaoRec.setfocus;
         If Pasta.ActivePageIndex = 5 then begin
            PageControl1.ActivePageIndex := 0;
            cICMSOper_CodD.SetFocus;
         End;   
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         TabSheet1.Enabled := False;
         TabSheet2.Enabled := False;
         TabSheet3.Enabled := False;
         TabSheet4.Enabled := False;
         TabSheet5.Enabled := False;
      End;

      bCopiarContabil.Enabled := (Pasta.ActivePage = TabSheet4) and ((Dados.TipoNota.State = dsInsert) or (Dados.TipoNota.State = dsEdit));
      bCopiarTodos.Enabled    := (Pasta.ActivePage = TabSheet4) and ((Dados.TipoNota.State = dsInsert) or (Dados.TipoNota.State = dsEdit));
      bLimparContabil.Enabled := (Pasta.ActivePage = TabSheet4) and ((Dados.TipoNota.State = dsInsert) or (Dados.TipoNota.State = dsEdit));
      bFiliaisContas.Enabled  := (Pasta.ActivePage = TabSheet4) and ((Dados.TipoNota.State = dsInsert) or (Dados.TipoNota.State = dsEdit));
      bDuplicar.Enabled       := (Dados.TipoNota.State <> dsInsert) and (Dados.TipoNota.State <> dsEdit);
      cPesquisa.Clear;
      cPesquisaH.Clear;

      Screen.Cursor := crDefault;
end;

procedure TConfig_TipoNota.StaticText30Click(Sender: TObject);
begin
      Cadastro_ClassificacaoFinanceira := TCadastro_ClassificacaoFinanceira.Create(Self);
      Cadastro_ClassificacaoFinanceira.Caption := Caption;
      Cadastro_ClassificacaoFinanceira.ShowModal;
      Dados.ClassificacaoFinanceira.Open;
end;

procedure TConfig_TipoNota.StaticText3Click(Sender: TObject);
begin
      Cadastro_TiposDocumentos := TCadastro_TiposDocumentos.Create(Self);
      Cadastro_TiposDocumentos.Caption := Caption;
      Cadastro_TiposDocumentos.ShowModal;
      Dados.TiposDocumentos.Open;
end;

procedure TConfig_TipoNota.cEntrada_SaidaChange(Sender: TObject);
begin
      With Dados do begin
           cRelatorioVendas.Enabled := TipoNotaSaida_Entrada.Value = 1;
           cCST.Enabled             := TipoNotaSaida_Entrada.Value = 0;
           cCSTPIS.Enabled          := TipoNotaSaida_Entrada.Value = 0;
           cCSTCOFINS.Enabled       := TipoNotaSaida_Entrada.Value = 0;
           lCSTPIS.Enabled          := TipoNotaSaida_Entrada.Value = 0;
           lCSTCOFINS.Enabled       := TipoNotaSaida_Entrada.Value = 0;

           CSTPIS.SQL.Clear;
           CSTCOFINS.SQL.Clear;
           If TipoNotaSaida_Entrada.AsInteger = 0 then begin
              CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo > 49) ORDER BY Codigo');
              CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo > 49) ORDER BY Codigo');
           end else begin
              CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo <= 49) ORDER BY Codigo');
              CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo <= 49) ORDER BY Codigo');
           End;
           CSTPIS.Open;
           CSTCOFINS.Open;

           If TipoNotaSaida_Entrada.Value = 0 then begin
              lPIS.Caption    := 'PIS Importação';
              lCOFINS.Caption := 'COFINS Importação';
           end else begin
              lPIS.Caption    := 'PIS s/Faturam.';
              lCOFINS.Caption := 'COFINS s/Faturam.';
           End;
      End;
end;

procedure TConfig_TipoNota.PROCESSO1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'PROCESSO';
end;

procedure TConfig_TipoNota.PROCESSOAdiantamento1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'PROCESSOAD'
end;

procedure TConfig_TipoNota.PROCESSOImpostos1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'PROCESSOIM'
end;

procedure TConfig_TipoNota.FORNECEDORES1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'FORNECEDOR';
end;

procedure TConfig_TipoNota.Clientes1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'CLIENTE';
end;

procedure TConfig_TipoNota.DEVOLUO1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'DEVOLUÇÃO';
end;

procedure TConfig_TipoNota.bBCIPIClick(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da Base de cálculo do IPI.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCIPI';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCIPI';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Base de cálculo do IPI.';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bPesquisarClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa', 'Codigo', mPesquisa);
      Dados.TipoNota.Locate('Codigo', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TConfig_TipoNota.StaticText17Click(Sender: TObject);
begin
      Cadastro_ModalidadesPagamento := TCadastro_ModalidadesPagamento.Create(Self);
      Cadastro_ModalidadesPagamento.Caption := Caption;
      Cadastro_ModalidadesPagamento.ShowModal;
      Dados.ModalidadesPgto.Open;
end;

procedure TConfig_TipoNota.bBCMVAClick(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da Base de Cálculo do MVA.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCMVA';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCMVA';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Base de cálculo do MVA';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bValorMVAClick(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do MVA.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_VlrMVA';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_VlrMVA';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do MVA';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.cGerarFinanceiroClick(Sender: TObject);
begin
      cRelatorioVendas.Enabled := not cGerarFinanceiro.Checked;
end;

procedure TConfig_TipoNota.Button6Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor Total dos Produtos.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_TotalProdutos';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_TotalProdutos';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor Total dos Produtos';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button7Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da BC.do DIFAL.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCDIFAL';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCDIFAL';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : B.C.do DIFAL';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button8Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do ICMS Monofásico';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_ICMSMono';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_ICMSMono';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do ICMS Monofásico';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button9Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do ICMS Monofásico (Retenção)';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_ICMSMonoRet';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_ICMSMonoRet';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do ICMS Monofásico (Retenção)';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bICMSDesonClick(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor da B.C. do IBS';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCIBS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCIBS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor da BC IBS';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button20Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do IS';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_VlrIS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_VlrIS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do IS';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button21Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do IBS';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_VlrIBS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_VlrIBS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do IBS';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button22Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor da B.C. do IBS';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCIBS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCIBS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor da BC IBS';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button2Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor Total da B.C.do ICMS Operacional.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_TotalBCICMS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_TotalBCICMS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor Total da B.C.ICMS Operacional';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button3Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor Total do ICMS Operacional.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_TotalVLICMS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_TotalVLICMS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor Total do ICMS Operacional';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button4Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor Total da B.C.do ICMS ST.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_TotalBCICMSSub';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_TotalBCICMSSub';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor Total da B.C.ICMS ST';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button5Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor Total do ICMS ST.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_TotalVLICMSSub';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_TotalVLICMSSub';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor Total do ICMS ST';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bDuplicarClick(Sender: TObject);
Var
    i: Integer;
begin
     If MessageDlg('Deseja realmente duplicar o tipo de nota ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        Screen.Cursor := crSQLWait;

        With Dados do begin
             with tCopia do begin
                  sql.Clear;
                  sql.Add('select * from TipoNota where Codigo = :pCodigo');
                  paramByName('pCodigo').AsInteger := TipoNotaCodigo.Value;
                  open;
             end;
             TipoNota.Append;
                      for i := 0 to (TipoNota.FieldCount -1) do begin
                          TipoNota.Fields[i].Value := tCopia.FieldByName(TipoNota.Fields[i].FieldName).Value;
                      end;

                      tCodigo.SQL.Clear;
                      tCodigo.SQL.Add('select max(codigo) as Codigo from TipoNota');
                      tCodigo.Open;

                      TipoNotaCodigo.Value    := tCodigo.FieldByName('Codigo').AsInteger + 1;
                      TipoNotaAtivo.Value     := false;
                      TipoNotaDescricao.Value := Trim(TipoNotaDescricao.Value) + ' (CÓPIA)'; 
             TipoNota.Post;
             TipoNota.Refresh;
             TipoNota.Locate('Codigo', tCodigo.FieldByName('Codigo').AsInteger+1, [loCaseInsensitive]);
             Pasta.ActivePageIndex := 0;
        End;

        Screen.Cursor := crDefault;
     End;
end;

procedure TConfig_TipoNota.bExportarFormulasClick(Sender: TObject);
Var
    mMemo: TMemo;
    b:integer;
begin
      mMemo         := TMemo.Create(Config_TipoNota);
      mMemo.Visible := False;
      mMemo.Parent  := Config_TipoNota;

      // Exporta todos os campos do tipo de nota para um script de importação.
      With Dados do begin
           Configuracao.Open;
           TipoNota.First;
           While not TipoNota.Eof do begin
                 mMemo.Lines.Clear;
                 For b := 0 to (TipoNota.FieldCount -1) do begin
                     If not TipoNota.FieldByName(TipoNota.Fields[b].FieldName).IsNull then begin
                        mMemo.Lines.Add(TipoNota.Fields[b].FieldName+PadR('|<', 32-Length(TipoNota.Fields[b].FieldName))+TipoNota.FieldByName(TipoNota.Fields[b].FieldName).AsString+'>|')
                     end else
                        mMemo.Lines.Add(TipoNota.Fields[b].FieldName+PadR('|<', 32-Length(TipoNota.Fields[b].FieldName))+'NULL>|');
                 End;
                 
                 mMemo.Lines.SaveToFile(ConfiguracaoPasta_Exportacao.Value+'\Formula_TipoNota_Completo_'+TipoNotaCodigo.AsString+'.TXT');

                 TipoNota.Next;
           End;
           Showmessage('Exportação terminada!'+#13+#13+'Arquivo salvo em '+ConfiguracaoPasta_Exportacao.Value+'\Formula_TipoNota_'+TipoNotaCodigo.AsString+'.TXT');
      End;
end;

procedure TConfig_TipoNota.bImportarFormulasClick(Sender: TObject);
Var
    mMemo : TMemo;
    mTam,
    i     : Integer;
    mLinha,
    mValor: WideString;
    mCampo: String;
begin
       Pasta.ActivePageIndex := 0;

       If OpenDialog1.Execute then begin
          mMemo         := TMemo.Create(Config_TipoNota);
          mMemo.Visible := False;
          mMemo.Width   := 5000;
          mMemo.Parent  := Config_TipoNota;

          mMemo.Lines.LoadFromFile(OpenDialog1.FileName);

          With Dados do begin
               TipoNota.Append;
                        i := 0;
                        While i <= mMemo.Lines.Count do begin
                              mLinha := mMemo.Lines[i];
                              mTam   := Pos(widestring('>|'), mLinha) - (Pos(widestring('|<'), mLinha)+2);
                              mCampo := Trim(Copy(mLinha, 1, Pos(widestring('|<'), mLinha)-1));
                              mValor := Copy(mLinha, Pos(widestring('|<'), mLinha)+2, mTam);

                              If Pos(widestring('>|'), mLinha) = 0 then begin
                                 Inc(i);
                                 mLinha := mMemo.Lines[i];
                                 While (Pos(widestring('>|'), mLinha) = 0) and (i <= mMemo.Lines.Count) do begin
                                       mValor := mValor + mLinha;
                                       Inc(i);
                                       mLinha := mMemo.Lines[i];
                                 End;
                              End;

                              If mCampo <> '' then begin
                                 If mValor <> 'NULL' then begin
                                    If TipoNota.FieldByName(mCampo).DataType = ftSmallInt then
                                       TipoNota.FieldByName(mCampo).Value := StrtoInt(mValor);
                                    If TipoNota.FieldByName(mCampo).DataType = ftBoolean then
                                       TipoNota.FieldByName(mCampo).Value := StrtoBool(mValor);
                                    If (TipoNota.FieldByName(mCampo).DataType = ftMemo) or (TipoNota.FieldByName(mCampo).DataType = ftString) then
                                       TipoNota.FieldByName(mCampo).Value := mValor;
                                 End;
                              End;
                              Inc(i);
                        End;

                        tCodigo.SQL.Clear;
                        tCodigo.SQL.Add('SELECT MAX(Codigo)+1 AS Codigo FROM TipoNota');
                        tCodigo.Open;
                        TipoNotaCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger;
               TipoNota.Post;
          End;
       End;
end;

procedure TConfig_TipoNota.cCodigoChange(Sender: TObject);
begin
      With Dados do begin
           Fornecedores1.Enabled := (TipoNotaSaida_Entrada.Value = 0) or ((TipoNotaSaida_Entrada.Value = 1) and (cFinalidade.ItemIndex in[2, 7]));
           Clientes1.Enabled     := (TipoNotaSaida_Entrada.Value = 1) or ((TipoNotaSaida_Entrada.Value = 0) and (cFinalidade.ItemIndex in[2, 7]));
           cEstDevol.Enabled     := TipoNotaFinalidade_Mercadoria.AsInteger = 2;

           ClassificacaoFinanceira.SQL.Clear;
           If TipoNotaSaida_Entrada.Value = 0 then
              ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = ''P'') AND(Titulo = 0) AND (Desativada <> 1) ORDER BY Codigo')
           else
              ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = ''R'') AND(Titulo = 0) AND (Desativada <> 1) ORDER BY Codigo');
           ClassificacaoFinanceira.Open;

           cLogo.FileName := TipoNotaObs_Logo.Value;
           iLogo.Picture  := nil;
           If cLogo.FileName <> '' then begin
              If FileExists(cLogo.FileName) then iLogo.Picture.LoadFromFile(cLogo.FileName);
           End;

           if Active then begin
              with CFOPDentro do begin
                   sql.Clear;
                   if TipoNota.fieldbyname('Saida_Entrada').AsInteger = 0 then begin
                       sql.Add('select Codigo, Descricao_NF from Natureza where Saida_Entrada = 0 and Ativo = 1');
                   end else begin
                       sql.Add('select Codigo, Descricao_NF from Natureza where Saida_Entrada = 1 and substring(Codigo,1,1) < ''6'' and Ativo = 1');
                   end;
                   open;
              end;
              with CFOPFora do begin
                   sql.Clear;
                   if TipoNota.fieldbyname('Saida_Entrada').AsInteger = 0 then begin
                       sql.Add('select Codigo, Descricao_NF from Natureza where Saida_Entrada = 0 and Ativo = 1');
                   end else begin
                       sql.Add('select Codigo, Descricao_NF from Natureza where Saida_Entrada = 1 and substring(Codigo,1,1) > ''5'' and Ativo = 1');
                   end;
                   open;
              end;
           end;
      End;
      cComplemento.Font.Name := 'Courier New';
end;

procedure TConfig_TipoNota.bValorPISClick(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do PIS.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_PIS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_PIS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do PIS';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bValorPISSTClick(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do PIS ST.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_PISST';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_PISST';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do PIS ST';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bValorCOFINSClick(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do COFINS.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_COFINS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_COFINS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do COFINS';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bValorCOFINSSTClick(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do COFINS ST.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_COFINSST';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_COFINSST';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do COFINS ST';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.cFiltroClick(Sender: TObject);
begin
      With Dados do begin
           //Grade.DisableScroll;
           TipoNota.SQL.Clear;
           If cFiltro.ItemIndex < 1 then TipoNota.SQL.Add('SELECT * FROM TipoNota ORDER BY Codigo');
           If cFiltro.ItemIndex = 1 then TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE(Saida_Entrada = 0) ORDER BY Codigo');
           If cFiltro.ItemIndex = 2 then TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE(Saida_Entrada = 1) ORDER BY Codigo');
           If cFiltro.ItemIndex = 3 then TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE(Ativo = 1) ORDER BY Codigo');
           If cFiltro.ItemIndex = 4 then TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE(Ativo <> 1) ORDER BY Codigo');
           TipoNota.Open;
           //Grade.EnableScroll;
      End;
end;

procedure TConfig_TipoNota.cFinalidadeChange(Sender: TObject);
begin
     cDevImp.Enabled := cFinalidade.ItemIndex = 2;
end;

procedure TConfig_TipoNota.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With Dados do Begin
          If (Column.FieldName = 'Ativo') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (TipoNota.FieldByName('Ativo').Value = True)  then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TConfig_TipoNota.cComplementoChange(Sender: TObject);
begin
      If mFormata then begin
         mFormata := false;
         cComplemento.SelStart     := 0;
         cComplemento.SelLength    := 2000;
         cComplemento.Font.Name    := 'Arial';
         Application.Processmessages;
         cComplemento.Font.Name    := 'Courier New';
         Application.Processmessages;
         cComplemento.SelStart     := 0;
         cComplemento.SelLength    := 0;
     End;
end;

procedure TConfig_TipoNota.cComplementoClick(Sender: TObject);
begin
     cLinha.text := inttostr(cComplemento.caretPos.y+1);
end;

procedure TConfig_TipoNota.bBCPISClick(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da Base de Cálculo do PIS/COFINS.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCPIS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCPIS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor da B.C.PIS/COFINS';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.bFiliaisClick(Sender: TObject);
begin
     Config_TipoNotaFiliais := TConfig_TipoNotaFiliais.Create(Self);
     Config_TipoNotaFiliais.Caption := Caption;
     Config_TipoNotaFiliais.ShowModal;
end;

procedure TConfig_TipoNota.bInventarioClick(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do Inventário.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_Inventario';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_Inventario';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do Inventário';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.PegaHint;
var
   i, mTam: integer;
begin
     mTam := 0;
     cEnquadra.Hint := '';
     For i := 1 to Length(cEnquadra.Text) do begin
         cEnquadra.Hint := cEnquadra.Hint + Copy(cEnquadra.Text, i, 1);
         Inc(mTam);
         If mTam = 50 then begin
            cEnquadra.Hint := cEnquadra.Hint + #13;
            mTam    := 1;
         End;
     End;
end;

procedure TConfig_TipoNota.cEnquadraMouseUp(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      PegaHint;
end;

procedure TConfig_TipoNota.cEnquadraChange(Sender: TObject);
begin
      PegaHint;
end;

procedure TConfig_TipoNota.cLogoExit(Sender: TObject);
begin
      If FileExists(cLogo.Text) then iLogo.Picture.LoadFromFile(cLogo.Text);
end;

procedure TConfig_TipoNota.cPesquisaChange(Sender: TObject);
begin
      with dmContab do begin
           with PlanoContas do begin
                SQL.Clear;
                if Trim(cPesquisa.Text) <> '' then
                   sql.add('select * from PlanoContas where isnull(Sintetica, 0) = 0 and Descricao like'+quotedstr('%'+cpesquisa.text+'%')+' and Sintetica <> 1 order by Descricao, Conta, Codigo')
                else
                   sql.add('select * from PlanoContas where isnull(Sintetica, 0) = 0 order by Descricao, Conta, Codigo');
                Open;
           end;
      end;
end;

procedure TConfig_TipoNota.SpeedButton2Click(Sender: TObject);
begin
      cPesquisa.Clear;
end;

procedure TConfig_TipoNota.bLimparContabilClick(Sender: TObject);
var
   i: integer;
begin
      if MessageDlg('Deseja realmente limpar as contas contabeis?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         with Dados do begin
              for i := 0 to TipoNota.FieldCount -1 do begin
                  if (Copy(TipoNota.Fields[i].FieldName, 1, 6) = 'Conta_') or (Copy(TipoNota.Fields[i].FieldName, 1, 10) = 'Historico_') then begin
                     TipoNota.FieldByName(TipoNota.Fields[i].FieldName).Clear;
                  end;
              end;
         end;
      end;
end;

procedure TConfig_TipoNota.cPesquisaHChange(Sender: TObject);
begin
      with dmContab do begin
           Historicos.SQL.Clear;
           if Trim(cPesquisaH.Text) <> '' then
              Historicos.SQL.Add('SELECT * FROM HistoricoPadrao WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisaH.Text+'%')+') ORDER BY Descricao')
           else
              Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Descricao');
           Historicos.Open;
      end;
end;

procedure TConfig_TipoNota.SpeedButton1Click(Sender: TObject);
begin
     cPesquisaH.Clear;
end;

procedure TConfig_TipoNota.bCopiarTodosClick(Sender: TObject);
begin
     if MessageDlg('Atenção!'+#13+#13+'Isto ira exportar as contas contábeis deste Tipo de Nota e substituir de todas as outras.'+#13+#13+'Deseja realmente exportar as contas?', mtConfirmation, [mbYes, mbNO], 0) = mrNo then begin
        Abort;
     end;
     With Dados do begin
          tCopia.SQL.Clear;
          tCopia.SQL.Add('SELECT * FROM TipoNota WHERE Codigo <> :pCodigo AND Saida_Entrada = :pSaiEntra');
          tCopia.ParamByName('pCodigo').AsInteger   := TipoNota.FieldByName('Codigo').AsInteger;
          tCopia.ParamByName('pSaiEntra').AsInteger := TipoNota.FieldByName('Saida_Entrada').AsInteger;
          tCopia.Open;

          Screen.Cursor := crSQLWait;

          while not tCopia.Eof do begin
                tCopia.Edit;
                       tCopia.FieldByName('Conta_ICMSOper_D').Value         := TipoNota.FieldByName('Conta_ICMSOper_D').Value;
                       tCopia.FieldByName('Conta_ICMSOper_C').Value         := TipoNota.FieldByName('Conta_ICMSOper_C').Value;
                       tCopia.FieldByName('Historico_ICMSOper').Value       := TipoNota.FieldByName('Historico_ICMSOper').Value;
                       tCopia.FieldByName('Conta_ICMSSub_D').Value          := TipoNota.FieldByName('Conta_ICMSSub_D').Value;
                       tCopia.FieldByName('Conta_ICMSSub_C').Value          := TipoNota.FieldByName('Conta_ICMSSub_C').Value;
                       tCopia.FieldByName('Historico_ICMSSub').Value        := TipoNota.FieldByName('Historico_ICMSSub').Value;
                       tCopia.FieldByName('Conta_IPI_D').Value              := TipoNota.FieldByName('Conta_IPI_D').Value;
                       tCopia.FieldByName('Conta_IPI_C').Value              := TipoNota.FieldByName('Conta_IPI_C').Value;
                       tCopia.FieldByName('Historico_IPI').Value            := TipoNota.FieldByName('Historico_IPI').Value;
                       tCopia.FieldByName('Conta_Seguro_D').Value           := TipoNota.FieldByName('Conta_Seguro_D').Value;
                       tCopia.FieldByName('Conta_Seguro_C').Value           := TipoNota.FieldByName('Conta_Seguro_C').Value;
                       tCopia.FieldByName('Historico_Seguro').Value         := TipoNota.FieldByName('Historico_Seguro').Value;
                       tCopia.FieldByName('Conta_Frete_D').Value            := TipoNota.FieldByName('Conta_Frete_D').Value;
                       tCopia.FieldByName('Conta_Frete_C').Value            := TipoNota.FieldByName('Conta_Frete_C').Value;
                       tCopia.FieldByName('Historico_Frete').Value          := TipoNota.FieldByName('Historico_Frete').Value;
                       tCopia.FieldByName('Conta_Despesas_D').Value         := TipoNota.FieldByName('Conta_Despesas_D').Value;
                       tCopia.FieldByName('Conta_Despesas_C').Value         := TipoNota.FieldByName('Conta_Despesas_C').Value;
                       tCopia.FieldByName('Historico_Despesas').Value       := TipoNota.FieldByName('Historico_Despesas').Value;
                       tCopia.FieldByName('Conta_PIS_D').Value              := TipoNota.FieldByName('Conta_PIS_D').Value;
                       tCopia.FieldByName('Conta_PIS_C').Value              := TipoNota.FieldByName('Conta_PIS_C').Value;
                       tCopia.FieldByName('Historico_PIS').Value            := TipoNota.FieldByName('Historico_PIS').Value;
                       tCopia.FieldByName('Conta_COFINS_D').Value           := TipoNota.FieldByName('Conta_COFINS_D').Value;
                       tCopia.FieldByName('Conta_COFINS_C').Value           := TipoNota.FieldByName('Conta_COFINS_C').Value;
                       tCopia.FieldByName('Historico_COFINS').Value         := TipoNota.FieldByName('Historico_COFINS').Value;
                       tCopia.FieldByName('Conta_II_D').Value               := TipoNota.FieldByName('Conta_II_D').Value;
                       tCopia.FieldByName('Conta_II_C').Value               := TipoNota.FieldByName('Conta_II_C').Value;
                       tCopia.FieldByName('Historico_II').Value             := TipoNota.FieldByName('Historico_II').Value;
                       tCopia.FieldByName('Conta_FOB_Fornecedor_D').Value   := TipoNota.FieldByName('Conta_FOB_Fornecedor_D').Value;
                       tCopia.FieldByName('Conta_FOB_Fornecedor_C').Value   := TipoNota.FieldByName('Conta_FOB_Fornecedor_C').Value;
                       tCopia.FieldByName('Historico_FOB_Fornecedor').Value := TipoNota.FieldByName('Historico_FOB_Fornecedor').Value;
                       tCopia.FieldByName('Conta_FOB_Processo_D').Value     := TipoNota.FieldByName('Conta_FOB_Processo_D').Value;
                       tCopia.FieldByName('Conta_FOB_Processo_C').Value     := TipoNota.FieldByName('Conta_FOB_Processo_C').Value;
                       tCopia.FieldByName('Historico_FOB_Processo').Value   := TipoNota.FieldByName('Historico_FOB_Processo').Value;
                       tCopia.FieldByName('Conta_TotalProdutos_D').Value    := TipoNota.FieldByName('Conta_TotalProdutos_D').Value;
                       tCopia.FieldByName('Conta_TotalProdutos_C').Value    := TipoNota.FieldByName('Conta_TotalProdutos_C').Value;
                       tCopia.FieldByName('Historico_TotalProdutos').Value  := TipoNota.FieldByName('Historico_TotalProdutos').Value;
                       tCopia.FieldByName('Conta_TotalNota_D').Value        := TipoNota.FieldByName('Conta_TotalNota_D').Value;
                       tCopia.FieldByName('Conta_TotalNota_C').Value        := TipoNota.FieldByName('Conta_TotalNota_C').Value;
                       tCopia.FieldByName('Historico_TotalNota').Value      := TipoNota.FieldByName('Historico_TotalNota').Value;
                       tCopia.FieldByName('Conta_Estoque_D').Value          := TipoNota.FieldByName('Conta_Estoque_D').Value;
                       tCopia.FieldByName('Conta_Estoque_C').Value          := TipoNota.FieldByName('Conta_Estoque_C').Value;
                       tCopia.FieldByName('Historico_Estoque').Value        := TipoNota.FieldByName('Historico_Estoque').Value;
                tCopia.Post;
                tCopia.Next;
          end;
          TipoNota.RefreshRecord;
          Screen.Cursor := crDefault;
     end;
end;

procedure TConfig_TipoNota.bFiliaisContasClick(Sender: TObject);
var
    mCNPJ : String;
begin
     if MessageDlg('Atenção!'+#13+#13+'Isto ira exportar as contas contábeis deste Tipo de Nota e substituir todas as outras da empresa selecionada.'+#13+#13+'Deseja realmente exportar as contas?', mtConfirmation, [mbYes, mbNO], 0) = mrNo then begin
        Abort;
     end;
     with Dados do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
          Empresas.Open;

          mCNPJ := Copy(EmpresasCNPJ.AsString, 1, 8);

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo <> '+InttoStr(Menu_Principal.mEmpresa)+ ' AND SUBSTRING(CNPJ, 1, 8) = '+QuotedStr(mCNPJ));
          Empresas.Open;

          while not Empresas.eof do begin
                tCopia.SQL.Clear;
                tCopia.SQL.Add('SELECT * FROM '+Dados.EmpresasBanco_Dados.AsString+'.dbo.TipoNota WHERE Saida_Entrada = :pSaiEntra');
                tCopia.ParamByName('pSaiEntra').AsInteger := TipoNota.FieldByName('Saida_Entrada').AsInteger;
                tCopia.Open;

                Screen.Cursor := crSQLWait;

                while not tCopia.Eof do begin
                      tCopia.Edit;
                             tCopia.FieldByName('Conta_ICMSOper_D').Value         := TipoNota.FieldByName('Conta_ICMSOper_D').Value;
                             tCopia.FieldByName('Conta_ICMSOper_C').Value         := TipoNota.FieldByName('Conta_ICMSOper_C').Value;
                             tCopia.FieldByName('Historico_ICMSOper').Value       := TipoNota.FieldByName('Historico_ICMSOper').Value;
                             tCopia.FieldByName('Conta_ICMSSub_D').Value          := TipoNota.FieldByName('Conta_ICMSSub_D').Value;
                             tCopia.FieldByName('Conta_ICMSSub_C').Value          := TipoNota.FieldByName('Conta_ICMSSub_C').Value;
                             tCopia.FieldByName('Historico_ICMSSub').Value        := TipoNota.FieldByName('Historico_ICMSSub').Value;
                             tCopia.FieldByName('Conta_IPI_D').Value              := TipoNota.FieldByName('Conta_IPI_D').Value;
                             tCopia.FieldByName('Conta_IPI_C').Value              := TipoNota.FieldByName('Conta_IPI_C').Value;
                             tCopia.FieldByName('Historico_IPI').Value            := TipoNota.FieldByName('Historico_IPI').Value;
                             tCopia.FieldByName('Conta_Seguro_D').Value           := TipoNota.FieldByName('Conta_Seguro_D').Value;
                             tCopia.FieldByName('Conta_Seguro_C').Value           := TipoNota.FieldByName('Conta_Seguro_C').Value;
                             tCopia.FieldByName('Historico_Seguro').Value         := TipoNota.FieldByName('Historico_Seguro').Value;
                             tCopia.FieldByName('Conta_Frete_D').Value            := TipoNota.FieldByName('Conta_Frete_D').Value;
                             tCopia.FieldByName('Conta_Frete_C').Value            := TipoNota.FieldByName('Conta_Frete_C').Value;
                             tCopia.FieldByName('Historico_Frete').Value          := TipoNota.FieldByName('Historico_Frete').Value;
                             tCopia.FieldByName('Conta_Despesas_D').Value         := TipoNota.FieldByName('Conta_Despesas_D').Value;
                             tCopia.FieldByName('Conta_Despesas_C').Value         := TipoNota.FieldByName('Conta_Despesas_C').Value;
                             tCopia.FieldByName('Historico_Despesas').Value       := TipoNota.FieldByName('Historico_Despesas').Value;
                             tCopia.FieldByName('Conta_PIS_D').Value              := TipoNota.FieldByName('Conta_PIS_D').Value;
                             tCopia.FieldByName('Conta_PIS_C').Value              := TipoNota.FieldByName('Conta_PIS_C').Value;
                             tCopia.FieldByName('Historico_PIS').Value            := TipoNota.FieldByName('Historico_PIS').Value;
                             tCopia.FieldByName('Conta_COFINS_D').Value           := TipoNota.FieldByName('Conta_COFINS_D').Value;
                             tCopia.FieldByName('Conta_COFINS_C').Value           := TipoNota.FieldByName('Conta_COFINS_C').Value;
                             tCopia.FieldByName('Historico_COFINS').Value         := TipoNota.FieldByName('Historico_COFINS').Value;
                             tCopia.FieldByName('Conta_II_D').Value               := TipoNota.FieldByName('Conta_II_D').Value;
                             tCopia.FieldByName('Conta_II_C').Value               := TipoNota.FieldByName('Conta_II_C').Value;
                             tCopia.FieldByName('Historico_II').Value             := TipoNota.FieldByName('Historico_II').Value;
                             tCopia.FieldByName('Conta_FOB_Fornecedor_D').Value   := TipoNota.FieldByName('Conta_FOB_Fornecedor_D').Value;
                             tCopia.FieldByName('Conta_FOB_Fornecedor_C').Value   := TipoNota.FieldByName('Conta_FOB_Fornecedor_C').Value;
                             tCopia.FieldByName('Historico_FOB_Fornecedor').Value := TipoNota.FieldByName('Historico_FOB_Fornecedor').Value;
                             tCopia.FieldByName('Conta_FOB_Processo_D').Value     := TipoNota.FieldByName('Conta_FOB_Processo_D').Value;
                             tCopia.FieldByName('Conta_FOB_Processo_C').Value     := TipoNota.FieldByName('Conta_FOB_Processo_C').Value;
                             tCopia.FieldByName('Historico_FOB_Processo').Value   := TipoNota.FieldByName('Historico_FOB_Processo').Value;
                             tCopia.FieldByName('Conta_TotalProdutos_D').Value    := TipoNota.FieldByName('Conta_TotalProdutos_D').Value;
                             tCopia.FieldByName('Conta_TotalProdutos_C').Value    := TipoNota.FieldByName('Conta_TotalProdutos_C').Value;
                             tCopia.FieldByName('Historico_TotalProdutos').Value  := TipoNota.FieldByName('Historico_TotalProdutos').Value;
                             tCopia.FieldByName('Conta_TotalNota_D').Value        := TipoNota.FieldByName('Conta_TotalNota_D').Value;
                             tCopia.FieldByName('Conta_TotalNota_C').Value        := TipoNota.FieldByName('Conta_TotalNota_C').Value;
                             tCopia.FieldByName('Historico_TotalNota').Value      := TipoNota.FieldByName('Historico_TotalNota').Value;
                             tCopia.FieldByName('Conta_Estoque_D').Value          := TipoNota.FieldByName('Conta_Estoque_D').Value;
                             tCopia.FieldByName('Conta_Estoque_C').Value          := TipoNota.FieldByName('Conta_Estoque_C').Value;
                             tCopia.FieldByName('Historico_Estoque').Value        := TipoNota.FieldByName('Historico_Estoque').Value;
                      tCopia.Post;
                      tCopia.Next;
                end;

                Empresas.Next;
          end;
          TipoNota.RefreshRecord;
          Screen.Cursor := crDefault;
     end;
end;

procedure TConfig_TipoNota.cPesqCampoChange(Sender: TObject);
begin
      with Dados do begin
           Campos.sql.clear;
           if cPesqCampo.Text <> '' then begin
              Campos.sql.add('SELECT * FROM Campos WHERE Descricao like '+ QuotedStr('%'+cPesqCampo.Text+'%')+' order by Descricao');
           end else begin
              Campos.sql.add('SELECT * FROM Campos order by Descricao');
           end;
           Campos.Open;
           //Dados.Campos.locate('Referencia', cPesqCampo.Text, [loPartialKey]);
      end;
end;

procedure TConfig_TipoNota.Button10Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da B.C do ICMS Monofásico';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCICMSMono';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCICMSMono';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor da B.C ICMS Monofásico';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button11Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da B.C do ICMS Monofásico Retenção';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCICMSMonoRet';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCICMSMonoRet';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor da B.C ICMS Monofásico Retenção';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button12Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do ICMS Crédito Presumido';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_ICMSPresumido';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_ICMSPresumido';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do ICMS Crédito Presumido';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button13Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da B.C do ICMS de Crédito Presumido';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCICMSPresumido';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCICMSPresumido';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor da B.C ICMS Crédito Presumido';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button14Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do DIFAL ST.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_DIFALST';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_DIFALST';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do DIFAL ST';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button15Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da BC.do DIFAL ST.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCDIFALST';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCDIFALST';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : B.C.do DIFAL ST';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button16Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da Base de Cálculo do PIS/COFINS ST.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCPISST';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCPISST';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor da B.C.PIS/COFINS ST';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button17Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor da B.C. do CBS';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCCBS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCCBS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor da BC CBS';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button18Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor da B.C. do IS';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCIS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCIS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor da BC IS';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button19Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo do Valor do CBS';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_VlrCBS';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_VlrCBS';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Valor do CBS';
      Config_TipoNotaFormula.ShowModal;
end;

procedure TConfig_TipoNota.Button1Click(Sender: TObject);
begin
      Config_TipoNotaFormula := TConfig_TipoNotaFormula.Create(Self);
      Config_TipoNotaFormula.Caption        := 'Fórmula para cálculo da Base de cálculo do Imposto de Importação - II.';
      Config_TipoNotaFormula.mNomeFormula   := 'Formula_BCII';
      Config_TipoNotaFormula.mNomeCalculo   := 'Calculo_BCII';
      Config_TipoNotaFormula.lCampo.Caption := 'Fórmula do campo : Base de cálculo do II.';
      Config_TipoNotaFormula.ShowModal;
end;

end.
