unit frmFinanceiro_Lista;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl, DB, DateUtils, DBCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
   RxLookup, Tabs, RXSpin, DBAccess, MSAccess, Funcoes, ppDBPipe, ppClass, ppReport, ppCtrls, ppPrnabl, system.UITypes,  ppBands, ppVar, ppMemo, ppParameter, Buttons, Menus, ClipBrd, MemDS, ppDesignLayer, ppStrtch, ppCache, ppProd, ppDB,
   ppComm, ppRelatv, Vcl.Mask, RxToolEdit;

type
  TFinanceiro_Lista = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    GroupBox3: TGroupBox;
    cMeses: TTabControl;
    cAno: TRxSpinEdit;
    Label3: TLabel;
    tDias: TMSQuery;
    dstdias: TDataSource;
    tDiasDia: TIntegerField;
    bSP: TButton;
    ppSP: TppDBPipeline;
    tSP_SN: TMSQuery;
    dstSP: TDataSource;
    ppEmpresas: TppDBPipeline;
    tSP_SNNumero: TLargeintField;
    tSP_SNTipo: TStringField;
    tSP_SNClassificacao: TStringField;
    tSP_SNCentro_Custo: TStringField;
    tSP_SNData_Previsao: TDateTimeField;
    tSP_SNData_Documento: TDateTimeField;
    tSP_SNData_Vencimento: TDateTimeField;
    tSP_SNValor_Documento: TCurrencyField;
    tSP_SNValor_Parcela: TCurrencyField;
    tSP_SNMulta: TCurrencyField;
    tSP_SNJuros: TCurrencyField;
    tSP_SNDesconto: TCurrencyField;
    tSP_SNValor_Total: TCurrencyField;
    tSP_SNValor_Operacao: TCurrencyField;
    tSP_SNFornecedor: TSmallintField;
    tSP_SNCliente: TSmallintField;
    tSP_SNOrgao: TStringField;
    tSP_SNBanco: TSmallintField;
    tSP_SNDocumento: TStringField;
    tSP_SNNumero_Documento: TStringField;
    tSP_SNForma_Tipo: TStringField;
    tSP_SNNumero_FormaTipo: TStringField;
    tSP_SNObservacao: TMemoField;
    tSP_SNProcesso: TStringField;
    tSP_SNCustoConta: TBooleanField;
    tSP_SNFiscal: TStringField;
    ppFornecedores: TppDBPipeline;
    tSP_SNDocumento_Nome: TStringField;
    ppClientes: TppDBPipeline;
    ppClassifica: TppDBPipeline;
    ppProcessos: TppDBPipeline;
    tSP_SNFornecedor_Banco: TStringField;
    tSP_SNFornecedor_Agencia: TStringField;
    tSP_SNFornecedor_Conta: TStringField;
    rSP: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppDBImage1: TppDBImage;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppShape4: TppShape;
    lSolicitacao1: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppShape7: TppShape;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppShape11: TppShape;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppShape12: TppShape;
    ppLabel14: TppLabel;
    ppDBText9: TppDBText;
    ppShape13: TppShape;
    ppLabel15: TppLabel;
    ppDBText10: TppDBText;
    ppLabel16: TppLabel;
    ppShape14: TppShape;
    ppLabel17: TppLabel;
    ppDBText11: TppDBText;
    ppShape15: TppShape;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText12: TppDBText;
    ppShape16: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText13: TppDBText;
    ppShape17: TppShape;
    ppLabel23: TppLabel;
    ppDBText14: TppDBText;
    ppShape18: TppShape;
    ppLabel24: TppLabel;
    ppDBText15: TppDBText;
    tSP_SNModalidade_Pgto: TSmallintField;
    tSP_SNModalidade_Descricao: TStringField;
    lBeneficiario: TppDBText;
    ppOrgaos: TppDBPipeline;
    ppLabel18: TppLabel;
    ppDBText2: TppDBText;
    ppLabel25: TppLabel;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppLabel26: TppLabel;
    ppDBText16: TppDBText;
    ppShape22: TppShape;
    ppLabel27: TppLabel;
    ppDBText17: TppDBText;
    ppShape23: TppShape;
    ppLabel28: TppLabel;
    ppDBText18: TppDBText;
    ppShape24: TppShape;
    ppLabel29: TppLabel;
    ppDBText19: TppDBText;
    ppShape25: TppShape;
    ppLabel30: TppLabel;
    ppDBText20: TppDBText;
    ppShape19: TppShape;
    ppLabel31: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLine1: TppLine;
    ppLabel32: TppLabel;
    ppLine2: TppLine;
    ppLabel33: TppLabel;
    ppLine3: TppLine;
    ppLabel34: TppLabel;
    lSolicitante: TppLabel;
    ppParameterList1: TppParameterList;
    ppImage3: TppImage;
    ppLine5: TppLine;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppDBImage2: TppDBImage;
    ppShape29: TppShape;
    ppLabel35: TppLabel;
    ppDBText21: TppDBText;
    ppShape30: TppShape;
    ppLabel36: TppLabel;
    ppShape31: TppShape;
    lSolicitacao2: TppLabel;
    ppLabel38: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppLabel39: TppLabel;
    ppShape34: TppShape;
    ppLabel40: TppLabel;
    ppDBText22: TppDBText;
    ppLabel41: TppLabel;
    ppDBText23: TppDBText;
    ppShape35: TppShape;
    ppLabel42: TppLabel;
    ppDBText24: TppDBText;
    ppShape36: TppShape;
    ppLabel43: TppLabel;
    ppDBText25: TppDBText;
    ppShape37: TppShape;
    ppLabel44: TppLabel;
    ppDBText26: TppDBText;
    ppShape38: TppShape;
    ppLabel45: TppLabel;
    ppDBText27: TppDBText;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppShape39: TppShape;
    ppLabel48: TppLabel;
    ppDBText28: TppDBText;
    ppShape40: TppShape;
    ppLabel49: TppLabel;
    ppDBText29: TppDBText;
    ppLabel50: TppLabel;
    ppShape41: TppShape;
    ppLabel51: TppLabel;
    ppDBText30: TppDBText;
    ppShape42: TppShape;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBText31: TppDBText;
    ppShape43: TppShape;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppShape44: TppShape;
    ppLabel56: TppLabel;
    ppShape45: TppShape;
    ppLabel57: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel58: TppLabel;
    ppDBText36: TppDBText;
    ppLabel59: TppLabel;
    ppShape46: TppShape;
    ppLabel60: TppLabel;
    ppDBText37: TppDBText;
    ppShape47: TppShape;
    ppLabel61: TppLabel;
    ppDBText38: TppDBText;
    ppShape48: TppShape;
    ppLabel62: TppLabel;
    ppDBText39: TppDBText;
    ppShape49: TppShape;
    ppLabel63: TppLabel;
    ppDBText40: TppDBText;
    ppShape50: TppShape;
    ppLabel64: TppLabel;
    ppDBText41: TppDBText;
    ppLabel65: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppLine4: TppLine;
    ppLabel66: TppLabel;
    ppLine6: TppLine;
    ppLabel67: TppLabel;
    ppLine7: TppLine;
    ppLabel68: TppLabel;
    lSolicitante2: TppLabel;
    tSolicitacao: TMSQuery;
    tSP_SNSolicitacao_Pgto: TIntegerField;
    tSP_SNSolicitacao_Numerario: TIntegerField;
    bSN: TButton;
    rSN: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppShape51: TppShape;
    ppShape52: TppShape;
    ppShape53: TppShape;
    ppDBImage3: TppDBImage;
    ppShape54: TppShape;
    ppLabel3: TppLabel;
    ppDBText42: TppDBText;
    ppShape55: TppShape;
    ppLabel37: TppLabel;
    lSolicitacaoSN: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppLabel71: TppLabel;
    ppShape59: TppShape;
    ppLabel72: TppLabel;
    ppDBText43: TppDBText;
    ppLabel73: TppLabel;
    ppDBText44: TppDBText;
    ppShape60: TppShape;
    ppLabel74: TppLabel;
    ppDBText45: TppDBText;
    ppShape61: TppShape;
    ppLabel75: TppLabel;
    ppDBText46: TppDBText;
    ppShape62: TppShape;
    ppLabel76: TppLabel;
    ppDBText47: TppDBText;
    ppShape63: TppShape;
    ppLabel77: TppLabel;
    ppDBText48: TppDBText;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppShape64: TppShape;
    ppLabel80: TppLabel;
    ppDBText49: TppDBText;
    ppShape65: TppShape;
    ppLabel81: TppLabel;
    ppDBText50: TppDBText;
    ppLabel82: TppLabel;
    ppShape66: TppShape;
    ppLabel83: TppLabel;
    ppDBText51: TppDBText;
    ppShape67: TppShape;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppDBText52: TppDBText;
    ppShape68: TppShape;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppShape69: TppShape;
    ppLabel88: TppLabel;
    ppShape70: TppShape;
    ppLabel89: TppLabel;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppLabel90: TppLabel;
    ppDBText57: TppDBText;
    ppLabel91: TppLabel;
    ppShape71: TppShape;
    ppLabel92: TppLabel;
    ppDBText58: TppDBText;
    ppShape72: TppShape;
    ppLabel93: TppLabel;
    ppDBText59: TppDBText;
    ppShape73: TppShape;
    ppLabel94: TppLabel;
    ppDBText60: TppDBText;
    ppShape74: TppShape;
    ppLabel95: TppLabel;
    ppDBText61: TppDBText;
    ppShape75: TppShape;
    ppLabel96: TppLabel;
    ppDBText62: TppDBText;
    ppLabel97: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppLine10: TppLine;
    ppShape56: TppShape;
    ppLine8: TppLine;
    ppLabel69: TppLabel;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel70: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppBancos: TppDBPipeline;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    bBaixaLote: TButton;
    ppDBText67: TppDBText;
    cTipo: TRadioGroup;
    cClassificacao: TDBLookupComboBox;
    tTotais: TMSQuery;
    tPagarReceber: TMSQuery;
    dstPagarReceber: TDataSource;
    tPagarReceberNumero: TLargeintField;
    tPagarReceberClassificacao: TStringField;
    tPagarReceberCentro_Custo: TStringField;
    tPagarReceberData_Previsao: TDateTimeField;
    tPagarReceberData_Documento: TDateTimeField;
    tPagarReceberData_Vencimento: TDateTimeField;
    tPagarReceberValor_Documento: TCurrencyField;
    tPagarReceberValor_Parcela: TCurrencyField;
    tPagarReceberValor_Total: TCurrencyField;
    tPagarReceberValor_Operacao: TCurrencyField;
    tPagarReceberNumero_Documento: TStringField;
    tPagarReceberProcesso: TStringField;
    tPagarReceberParcela: TStringField;
    tPagarReceberValor_Baixado: TCurrencyField;
    tPagarReceberAdiantamento_Numero: TLargeintField;
    tPagarReceberBaixa_Numero: TIntegerField;
    tPagarReceberBeneficiario: TStringField;
    tPagarReceberClassificacao_Descricao: TStringField;
    tPagarReceberBanco_Nome: TStringField;
    bDuplicar: TButton;
    cProcesso: TDBLookupComboBox;
    tPagarReceberBaixa: TStringField;
    lcClassificacao: TStaticText;
    StaticText1: TStaticText;
    cAgrupar: TCheckBox;
    lcBeneficiario: TStaticText;
    tBeneficiario: TMSQuery;
    dstBeneficiario: TDataSource;
    tBeneficiarioNome: TStringField;
    tBeneficiarioCNPJ: TStringField;
    tBeneficiarioCodigo_Fornecedor: TIntegerField;
    tBeneficiarioCodigo_Cliente: TIntegerField;
    tBeneficiarioCodigo_Orgao: TStringField;
    tPagarReceberData_Baixa: TDateTimeField;
    tPagarReceberSaldo: TCurrencyField;
    bPesquisar: TSpeedButton;
    tHistorico: TMSQuery;
    dstHistorico: TDataSource;
    tHistoricoRegistro: TLargeintField;
    tHistoricoData: TDateTimeField;
    tHistoricoValor: TCurrencyField;
    tHistoricoForma_Tipo: TStringField;
    tHistoricoForma_TipoDocumento: TStringField;
    tHistoricoNome_Banco: TStringField;
    tHistoricoObservacao: TStringField;
    GradeBaixas: TRxDBGrid;
    tBeneficiarioCodigo: TStringField;
    tBeneficiarioTipo: TStringField;
    cProvisorio: TCheckBox;
    tPagarReceberCustoConta: TBooleanField;
    tPagarReceberObservacao: TMemoField;
    Menu: TPopupMenu;
    mnCusto: TMenuItem;
    N1: TMenuItem;
    mnExcluir: TMenuItem;
    mnAdicionar: TMenuItem;
    mnModificar: TMenuItem;
    N2: TMenuItem;
    Cancelar1: TMenuItem;
    tPagarReceberTipo: TStringField;
    tPagarReceberCliente: TSmallintField;
    tPagarReceberCusto_Seletivo: TBooleanField;
    mnSeletivo: TMenuItem;
    tPagarReceberCusto_Entrada: TBooleanField;
    mnCustoEntrada: TMenuItem;
    tPagarReceberCusto_Outros: TBooleanField;
    mnCustoOutros: TMenuItem;
    StaticText2: TStaticText;
    cEmpresa: TRxDBLookupCombo;
    tEmpresas: TMSQuery;
    dstEmpresas: TDataSource;
    tEmpresasCodigo: TIntegerField;
    tEmpresasRazao_Social: TStringField;
    tEmpresasCNPJ: TStringField;
    tEmpresasEstado: TStringField;
    tEmpresasNumero_Filial: TSmallintField;
    tEmpresasAmbiente: TSmallintField;
    tEmpresasBanco_Dados: TStringField;
    tEmpresasPagamento: TBooleanField;
    tEmpresasMascara_PlanoContas: TStringField;
    cSituacao: TRadioGroup;
    bLimpar: TSpeedButton;
    StaticText3: TStaticText;
    cBanco: TRxDBLookupCombo;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    tEmpresasMatriz_Filial: TBooleanField;
    cBeneficiario: TDBLookupComboBox;
    tEmpresasLogo: TStringField;
    tBoletos: TMSQuery;
    tPagarReceberMulta: TCurrencyField;
    tPagarReceberJuros: TCurrencyField;
    tPagarReceberDesconto: TCurrencyField;
    tPagarReceberRecuperavel: TBooleanField;
    N3: TMenuItem;
    Recupervel1: TMenuItem;
    tPagarReceberDesconto_Liquidacao: TCurrencyField;
    bPesqCla: TSpeedButton;
    bPesqBene: TSpeedButton;
    bEstornaBaixa: TButton;
    N4: TMenuItem;
    PlanodeContas1: TMenuItem;
    HistoricosContabeis1: TMenuItem;
    LanamentosContabeis1: TMenuItem;
    tPagarReceberVinculo: TIntegerField;
    tPagarReceberFiscal: TStringField;
    tPagarReceberComissao: TBooleanField;
    tPagarReceberQuitado: TBooleanField;
    cPerFim: TDateEdit;
    cPerIni: TDateEdit;
    StaticText4: TStaticText;
    StaticText8: TStaticText;
    bFiltro: TSpeedButton;
    tPagarReceberPedido_Rep: TStringField;
    cDias: TTabControl;
    tBeneficiarioLinha: TLargeintField;
    bFiltroGeral: TSpeedButton;
    tTmp: TMSQuery;
    Panel2: TPanel;
    Panel4: TPanel;
    pCusto: TPanel;
    Panel6: TPanel;
    pPgto: TPanel;
    pCustoSel: TPanel;
    Panel9: TPanel;
    pRec: TPanel;
    pCustoEntrada: TPanel;
    Panel7: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    pCustoOutros: TPanel;
    Panel10: TPanel;
    pBloq: TPanel;
    Panel12: TPanel;
    pPedido: TPanel;
    pPedidoPai: TPanel;
    pPedidoPai2: TPanel;
    Panel11: TPanel;
    Panel13: TPanel;
    StaticText5: TStaticText;
    cRaizCNPJ: TEdit;
    bNFCancel: TButton;
    Panel14: TPanel;
    DBMemo1: TDBMemo;
    tPagarReceberLiquidada: TBooleanField;
    procedure bSairClick(Sender: TObject);
    procedure cDias_OldClick(Sender: TObject);
    procedure cMesesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure FiltraLancamentos(Filtro: Boolean);
    procedure cAnoChange(Sender: TObject);
    procedure cClassificacaoChange(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure GradeDblClick(Sender: TObject);
    procedure bSPClick(Sender: TObject);
    procedure rSPBeforePrint(Sender: TObject);
    procedure rSPPrintingComplete(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Filtra(Tipo: String);
    procedure bSNClick(Sender: TObject);
    procedure rSNBeforePrint(Sender: TObject);
    procedure bBaixaLoteClick(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cClassificacaoClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure bDuplicarClick(Sender: TObject);
    procedure cProcessoClick(Sender: TObject);
    procedure AbrirTabelas;
    procedure StaticText1Click(Sender: TObject);
    procedure lcClassificacaoClick(Sender: TObject);
    procedure cAgruparClick(Sender: TObject);
    procedure PegaDias;
    procedure lcBeneficiarioClick(Sender: TObject);
    procedure cBeneficiarioClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure tPagarReceberAfterScroll(DataSet: TDataSet);
    procedure cBeneficiario1Change(Sender: TObject);
    procedure cProvisorioClick(Sender: TObject);
    procedure mnModificarClick(Sender: TObject);
    procedure mnExcluirClick(Sender: TObject);
    procedure mnAdicionarClick(Sender: TObject);
    procedure mnCustoClick(Sender: TObject);
    procedure MenuPopup(Sender: TObject);
    procedure mnSeletivoClick(Sender: TObject);
    procedure mnCustoEntradaClick(Sender: TObject);
    procedure mnCustoOutrosClick(Sender: TObject);
    procedure pBloqClick(Sender: TObject);
    procedure cEmpresaChange(Sender: TObject);
    procedure bLancamentoNovoBeforeAction(Sender: TObject;Button: TNavigateBtn);
    procedure cSituacaoClick(Sender: TObject);
    procedure cBancoChange(Sender: TObject);
    procedure MudaEmpresa(pEmpresa: Integer);
    procedure FormShow(Sender: TObject);
    procedure Recupervel1Click(Sender: TObject);
    procedure bPesqClaClick(Sender: TObject);
    procedure bPesqBeneClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bEstornaBaixaClick(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure HistoricosContabeis1Click(Sender: TObject);
    procedure LanamentosContabeis1Click(Sender: TObject);
    procedure GradeTitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
    procedure bFiltroClick(Sender: TObject);
    procedure cDiasChange(Sender: TObject);
    procedure bFiltroGeralClick(Sender: TObject);
    procedure cRaizCNPJChange(Sender: TObject);
    procedure bNFCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mData: TDate;
    mFiltra
   ,mOperacional: Boolean;
    mUltimoClick 
   ,mNomeColuna
   ,mNFEProcesso
   ,CompClass  
   ,CompBancos: string;
    mAno
   ,mMes
   ,mContaDias
   ,mEmpresaAntes: Integer;
    mLinha: WideString;
  end;

var
  Financeiro_Lista: TFinanceiro_Lista;

implementation

uses frmDados, frmMenu_Principal, frmFinanceiro_Lancamento, frmFinanceiro_BaixaLote, frmDMContab, frmFinanceiro_Duplicar, frmFinanceiro_BloquearPeriodo, frmFinanceiro_Pesquisa,
     frmPesquisaGerais, frmFinanceiro_EstornoBaixa, frmCadastro_PlanoContas, frmCadastro_HistoricoPadrao, frmContabilidade_Lancamentos, frmFinanceiro_NFCancelada;

{$R *.dfm}

procedure TFinanceiro_Lista.FormCreate(Sender: TObject);
begin
      cMeses.TabWidth := 33;
      cAno.Font.Size  := 10;
//      if Screen.Height <= Height then begin
//         ScaleBy(Height, Menu_Principal.Height);
//      end;
      if Screen.Height <= 768 then begin
         ScaleBy(93, 100);
      end;
      If FileExists('fundo_barra.bmp') then begin
         Image2.Picture.LoadFromFile('fundo_barra.bmp');
      end;
end;

procedure TFinanceiro_Lista.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_Lista.cDiasChange(Sender: TObject);
begin
      mData := StrtoDate( InttoStr(cDias.TabIndex+1)+'/'+InttoStr(cMeses.TabIndex+1)+'/'+cAno.Text);
      FiltraLancamentos(mFiltra);
end;

procedure TFinanceiro_Lista.cDias_OldClick(Sender: TObject);
begin
      mData := StrtoDate( InttoStr(cDias.TabIndex+1)+'/'+InttoStr(cMeses.TabIndex+1)+'/'+cAno.Text);
      FiltraLancamentos(mFiltra);
end;

procedure TFinanceiro_Lista.cMesesChange(Sender: TObject);
var
   mUltDia: integer;
begin
      mUltDia := DayOf(UltimoDiaMes(strtoDate('01/'+InttoStr(cMeses.TabIndex+1)+'/'+cAno.Text)));
      if (cDias.TabIndex+1) > multDia then begin
         cDias.TabIndex := mUltDia;
      end;
      mData := StrtoDate(InttoStr(mUltDia)+'/'+InttoStr(cMeses.TabIndex+1)+'/'+cAno.Text);
      PegaDias;
      FiltraLancamentos(mFiltra);
end;

procedure TFinanceiro_Lista.cTipoClick(Sender: TObject);
begin
     If mFiltra = true then begin
        PegaDias;
     End;
end;

procedure TFinanceiro_Lista.cAnoChange(Sender: TObject);
begin
      PegaDias;
end;

procedure TFinanceiro_Lista.PegaDias;
Var
    mDias: Integer;
begin
      mAno      := cAno.AsInteger;
      mMes      := cMeses.TabIndex+1;
      cDias.Tag := cDias.TabIndex;
      cDias.Tabs.Clear;
      mContaDias := -1;

      // Verificando quais dias tiveram movimento.
      tDias.SQL.Clear;
      tDias.SQL.Add('SELECT DAY(Data_Vencimento) AS Dia');
      tDias.SQL.Add('FROM   PagarReceber PR');
      tDias.SQL.Add('WHERE Numero IS NOT NULL');

      If not cAgrupar.Checked then begin
         tDias.SQL.Add('AND (YEAR(Data_Vencimento) = :pAno) AND (MONTH(Data_Vencimento) = :pMes)');
         tDias.ParamByName('pAno').AsInteger := Round(cAno.Value);
         tDias.ParamByName('pMes').AsInteger := cMeses.TabIndex+1;
      End;
      If (Trim(cClassificacao.Text) <> '') then begin
         tDias.SQL.Add('AND (Classificacao = :pClassificacao)');
         tDias.ParamByName('pClassificacao').AsString := Dados.ClassificacaoFinanceiraCodigo.AsString;
      End;
      If (Trim(cProcesso.Text) <> '') then begin
         tDias.SQL.Add('AND (Processo = :pProcesso)');
         tDias.ParamByName('pProcesso').AsString := Trim(cProcesso.Text);
      End;
      If (Trim(cBeneficiario.Text) <> '') then begin
         If tBeneficiario.FieldByName('Codigo_Fornecedor').AsInteger <> 0 then begin
            tDias.SQL.Add('AND (Fornecedor = :pFornecedor)');
            tDias.ParamByName('pFornecedor').AsInteger := tBeneficiario.FieldByName('Codigo_Fornecedor').AsInteger;
         End;
         If tBeneficiario.FieldByName('Codigo_Cliente').AsInteger <> 0 then begin
            tDias.SQL.Add('AND (Cliente = :pCliente)');
            tDias.ParamByName('pCliente').AsInteger := tBeneficiario.FieldByName('Codigo_Cliente').AsInteger;
         End;
         If tBeneficiario.FieldByName('Codigo_Orgao').AsString <> '' then begin
            tDias.SQL.Add('AND (Orgao = :pOrgao)');
            tDias.ParamByName('pOrgao').AsString := tBeneficiario.FieldByName('Codigo_Orgao').AsString;
         End;
      End;
      If (Trim(cBanco.Text) <> '') then begin
         tDias.SQL.Add('AND (Banco = :pBanco)');
         tDias.ParamByName('pBanco').Asinteger := Dados.BancosCodigo.AsInteger;
      End;
      if Trim(cRaizCNPJ.text) <> '' then begin
         tDias.sql.Add('and (Cliente in(select Codigo from Clientes where substring(CNPJ,1,8) = :pRaiz) or');
         tDias.sql.add('     Fornecedor in(select Codigo from Fornecedores where substring(CNPJ,1,8) = :pRaiz))');
         tDias.ParamByName('pRaiz').Asstring := cRaizCNPJ.Text;
      end;
      if (not DataLimpa(cPerIni.text)) and (not DataLimpa(cPerFim.text)) then begin
         tDias.SQL.Add('AND (Data_Vencimento between :pDtIni and :pDtFim)');
         tDias.ParamByName('pDtIni').value := cPerIni.date;
         tDias.ParamByName('pDtFim').value := cPerFim.date;
      end;

      If cTipo.ItemIndex = 1 then tDias.SQL.Add('AND (Tipo = ''P'')');
      If cTipo.ItemIndex = 2 then tDias.SQL.Add('AND (Tipo = ''R'')');

      If cSituacao.ItemIndex = 1 then tDias.SQL.Add('AND (SELECT ISNULL(SUM(Valor), 0) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.Numero) = 0');
      If cSituacao.ItemIndex = 2 then tDias.SQL.Add('AND (SELECT ISNULL(SUM(Valor), 0) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.Numero) > 0 AND (SELECT SUM(ISNULL(Valor, 0)) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.Numero) < Valor_Total');
      If cSituacao.ItemIndex = 3 then tDias.SQL.Add('AND (SELECT ISNULL(SUM(Valor), 0) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.Numero) = Valor_Total');

      If cProvisorio.Checked then tDias.SQL.Add('AND (Provisorio = 1)');

      tDias.SQL.Add('GROUP BY DAY(Data_Vencimento)' );
      //tDias.SQL.SaveToFile('c:\temp\Financeiro_Dias.sql');
      tDias.Open;

      For mDias := 1 to DaysInaMonth(mAno, mMes) do begin
          If tDias.Locate('Dia', mDias, [loCaseInsensitive]) = True then begin
             cDias.Tabs.Add(FormatFloat(' 00•',mDias));
          end else begin
             cDias.Tabs.Add(FormatFloat(' 00 ' ,mDias));
          End;
          Inc(mContaDias);
      End;

      If cDias.Tag > mContaDias then
         cDias.TabIndex := mContaDias
      else
         cDias.TabIndex := cDias.Tag;

      mData := StrtoDate(InttoStr(cDias.TabIndex+1)+'/'+InttoStr(cMeses.TabIndex+1)+'/'+cAno.Text);
end;

procedure TFinanceiro_Lista.FiltraLancamentos(Filtro:Boolean);
Var
   mData : String;
begin
       If Filtro then begin
          Screen.Cursor := crSQLWait;
          With Dados do begin
               If mNFEProcesso <> '' then begin
                  cProcesso.KeyValue := mNFEProcesso;
                  cAgrupar.Checked   := true;
               End;    

               Configuracao.Open;

               mData := PoeZero(2, cDias.TabIndex+1)+'/'+PoeZero(2, cMeses.TabIndex+1)+'/'+PoeZero(4, cAno.AsInteger);

               with tPagarReceber do begin
                    sql.Clear;
                    sql.add('select Numero');
                    sql.add('      ,Classificacao');
                    sql.add('      ,Centro_Custo');
                    sql.add('      ,Data_Previsao');
                    sql.add('      ,Data_Documento');
                    sql.add('      ,Data_Vencimento');
                    sql.add('      ,Valor_Documento');
                    sql.add('      ,isnull(Valor_Parcela, 0)       as Valor_Parcela');
                    sql.add('      ,isnull(Valor_Total, 0)         as Valor_Total');
                    sql.add('      ,isnull(Valor_Operacao, 0)      as Valor_Operacao');
                    sql.add('      ,isnull(Multa, 0)               as Multa');
                    sql.add('      ,isnull(Juros, 0)               as Juros');
                    sql.add('      ,isnull(Desconto, 0)            as Desconto');
                    sql.add('      ,isnull(Desconto_Liquidacao, 0) as Desconto_Liquidacao');
                    sql.add('      ,Numero_Documento');
                    sql.add('      ,Processo');
                    sql.add('      ,Parcela');
                    sql.add('      ,isnull((select sum(Valor) from PagarReceberBaixas where(PagarReceberBaixas.Numero = pr.Numero)), 0) as Valor_Baixado ');
                    sql.add('      ,(select max(Data) from PagarReceberBaixas where(PagarReceberBaixas.Numero = pr.Numero)) as Data_Baixa ');
                    sql.add('      ,Adiantamento_Numero');
                    sql.add('      ,Baixa_Numero');
                    sql.add('      ,Beneficiario = case when isnull(Fornecedor,0)  <> 0 then (select Nome from Fornecedores where(Fornecedores.Codigo = Fornecedor))');
                    sql.add('                           when isnull(Cliente   ,0)  <> 0 then (select Nome from Clientes     where(Clientes.Codigo = Cliente))');
                    sql.add('                           when isnull(Orgao     ,'''') <> ''''  then (select MAX(Nome) from Cybersoft_Cadastros.dbo.OrgaosPublicos where(Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo = Orgao))');
                    sql.add('                           when Transferencia = 1  then (select Nome from '+CompBancos+' where Codigo = (Banco) ) + ''  •  ''+ (select Nome from '+CompBancos+' where Codigo = (Transferencia_Banco) )');
                    sql.add('                      end');
                    sql.add('      ,Classificacao_Descricao = (select Descricao from '+CompClass+' where(Codigo = Classificacao))');
                    sql.add('      ,Banco_Nome = (select Nome from '+CompBancos+' where(Bancos.Codigo = Banco))');
                    sql.add('      ,Baixa = cast(null as varchar(7))');
                    sql.add('      ,Liquidada = isnull((select Liquidar from EmprestimosDuplicatas where Duplicata= Numero_Documento), 0)');
                    sql.add('      ,Saldo = cast(0 as money)');
                    sql.add('      ,CustoConta');
                    sql.add('      ,Custo_Seletivo');
                    sql.add('      ,Custo_Entrada');
                    sql.add('      ,Custo_Outros');
                    sql.add('      ,Comissao = cast(iif(pr.Classificacao in((select Classificacao_Pagamento from Configuracao), (select Classificacao_PagamentoPF from Configuracao)), 1, 0) as bit)');
                    sql.add('      ,Quitado  = cast(0 as bit)');
                    sql.add('      ,Observacao');
                    sql.add('      ,Tipo');
                    sql.add('      ,Cliente');
                    sql.add('      ,Recuperavel');
                    sql.add('      ,Vinculo');
                    sql.add('      ,Fiscal');
                    sql.add('      ,Pedido_Rep = iif(pr.Tipo_Nota = ''SD'', (select max(Pedido_Representante) from NotasFiscais nf where pr.Tipo_Nota = ''SD'' and nf.Numero = pr.Fiscal), null)');
                    sql.add('into #temp');
                    sql.add('from  PagarReceber pr');
                    sql.Add('where (Numero is not null)');
                    sql.Add('  and (Nivel <= :pNivel) ');
                    ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;

                    If (Trim(cProcesso.Text) = '') and (Trim(cClassificacao.Text) = '') and (Trim(cBeneficiario.Text) = '') and (Trim(cBanco.Text) = '') and (cProvisorio.Checked = false) and (DataLimpa(cPerIni.text))
                       and (trim(cRaizCNPJ.text) = '') then begin
                       sql.Add('  and convert(Date, Data_Vencimento, 103) = :pData');
                       ParamByName('pData').AsDate := StrtoDate(mData);
                       cDias.Enabled  := true;
                       cMeses.Enabled := true;
                       cAno.Enabled   := true;
                    end else begin
                       If not cAgrupar.Checked then begin
                          sql.Add('  and convert(Date, Data_Vencimento, 103) = :pData');
                          ParamByName('pData').AsDate := StrtoDate(mData);
                       End;
                       If Trim(cClassificacao.Text) <> '' then begin
                          sql.Add('  and (Classificacao = :pClassificacao)');
                          ParamByName('pClassificacao').AsString := ClassificacaoFinanceiraCodigo.AsString;
                       End;
                       If Trim(cBeneficiario.Text) <> '' then begin
                          If tBeneficiario.FieldByName('Codigo_Fornecedor').AsInteger <> 0 then begin
                             sql.Add('  and (Fornecedor = :pFornecedor)');
                             ParamByName('pFornecedor').AsInteger := tBeneficiario.FieldByName('Codigo_Fornecedor').AsInteger;
                          End;
                          If tBeneficiario.FieldByName('Codigo_Cliente').AsInteger <> 0 then begin
                             sql.Add('  and (Cliente = :pCliente)');
                             ParamByName('pCliente').AsInteger := tBeneficiario.FieldByName('Codigo_Cliente').AsInteger;
                          End;
                          If Trim(tBeneficiario.FieldByName('Codigo_Orgao').AsString) <> '' then begin
                             sql.Add('  and (Orgao = :pOrgao)');
                             ParamByName('pOrgao').AsString := tBeneficiario.FieldByName('Codigo_Orgao').AsString;
                          End;
                          If Trim(cRaizCNPJ.text) <> '' then begin
                             sql.Add('  and (Orgao = :pOrgao)');
                             ParamByName('pOrgao').AsString := tBeneficiario.FieldByName('Codigo_Orgao').AsString;
                          End;
                       End;
                       If (Trim(cProcesso.Text) <> '') then begin
                          sql.Add('  and (Processo = :pProcesso)');
                          ParamByName('pProcesso').AsString := Trim(ProcessosDOCProcesso.AsString);
                       End;
                       If Trim(cBanco.DisplayValue) <> '' then begin
                          sql.Add('  and (Banco = :pBanco)');
                          ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
                       End;
                       if Trim(cRaizCNPJ.text) <> '' then begin
                          sql.Add('and (Cliente in(select Codigo from Clientes where substring(CNPJ,1,8) = :pRaiz) or');
                          sql.add('     Fornecedor in(select Codigo from Fornecedores where substring(CNPJ,1,8) = :pRaiz))');
                          ParamByName('pRaiz').Asstring := cRaizCNPJ.Text;
                       end;
                       if (not DataLimpa(cPerIni.text)) and (not DataLimpa(cPerFim.text)) then begin
                          sql.Add('and (Data_Vencimento between :pDtIni and :pDtFim)');
                          parambyname('pDtIni').value := cPerIni.date;
                          parambyname('pDtFim').value := cPerFim.date;
                       end;
                       if cProvisorio.Checked = true then sql.Add('and (Provisorio = 1)');
                    end;

                    If cTipo.ItemIndex = 1 then sql.Add('and (Tipo = ''P'')');
                    If cTipo.ItemIndex = 2 then sql.Add('and (Tipo = ''R'')');

                    sql.add('update #temp set Baixa = case when Valor_Baixado >= Valor_Total then ''Total'' ');
                    sql.add('                              when Valor_Baixado <  Valor_Total and Valor_Baixado > 0 then ''Parcial'' ');
                    sql.add('                         end,');
                    sql.add('                 Saldo = (Valor_Parcela + Multa + Juros - (Desconto+Desconto_Liquidacao)) - Valor_Baixado');
                    
                    sql.add('update #temp set Quitado = iif((select sum(Valor) from PagarReceberBaixas prb where prb.Numero in(select Numero from PagarReceber pr where pr.Tipo = ''R'' and pr.Fiscal = #temp.Fiscal)) -');
                    sql.add('                               (select sum(Valor_Total) from PagarReceber pr where pr.Fiscal = #temp.Fiscal and Tipo = ''R'') >= 0, 1, 0)');
                    sql.add('where Comissao = 1');
                    sql.add('and   Tipo = ''P'' ');

                    SQL.Add('select * from #temp');

                    If cSituacao.ItemIndex = 1 then sql.add('where (isnull(Baixa, '''') = '''')');
                    If cSituacao.ItemIndex = 2 then sql.add('where (Baixa = ''Parcial'')');
                    If cSituacao.ItemIndex = 3 then sql.add('where (Baixa = ''Total'')');

                    If (mNomeColuna = '') then begin
                       sql.Add('order by Baixa Desc, Data_Vencimento, Valor_Baixado Desc');
                    end else begin
                       sql.Add('order by ');
                       If mUltimoClick <> mNomeColuna then begin
                          sql.Add(mNomeColuna+' asc');
                       end else begin
                          sql.Add(mNomeColuna+' desc');
                          mNomeColuna := '';
                       End;
                    End;
                    sql.Add('drop table #temp');
                    //sql.SaveToFile('c:\temp\PagarReceber_Lista.sql');
                    open;
                    Navega.Controls[5].Enabled := recordcount > 0;
                    Navega.Controls[6].Enabled := recordcount > 0;
               end;

               cDias.Enabled  := not cAgrupar.Checked;
               cMeses.Enabled := not cAgrupar.Checked;
               cAno.Enabled   := not cAgrupar.Checked;
          End;

          mLinha := '';
          tTotais.SQL.Clear;
          If Trim(cClassificacao.Text) <> '' then mLinha := mLinha + 'AND (Classificacao = :pClassificacao)';
          If Trim(cBeneficiario.Text)  <> '' then begin
             If tBeneficiario.FieldByName('Codigo_Fornecedor').AsInteger <> 0  then mLinha := mLinha + 'AND (Fornecedor = :pFornecedor)';
             If tBeneficiario.FieldByName('Codigo_Cliente').AsInteger    <> 0  then mLinha := mLinha + 'AND (Cliente    = :pCliente)';
             If tBeneficiario.FieldByName('Codigo_Orgao').AsString       <> '' then mLinha := mLinha + 'AND (Orgao      = :pOrgao)';
          End;
          
          If Trim(cProcesso.Text) <> '' then mLinha := mLinha + 'AND (Processo = :pProcesso)';
          If Trim(cBanco.Text)    <> '' then mLinha := mLinha + 'AND (Banco    = :pBanco)';
          if (not DataLimpa(cPerIni.text)) and (not DataLimpa(cPerFim.text)) then begin
             mLinha := mLinha + 'and (Data_Vencimento between :pDtIni and :pDtFim)';
          end;

          If cSituacao.ItemIndex = 1 then mLinha := mLinha + 'AND ISNULL((SELECT SUM(ISNULL(Valor, 0)) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PagarReceber.Numero), 0) <= 0';
          If cSituacao.ItemIndex = 2 then mLinha := mLinha + 'AND ISNULL((SELECT SUM(ISNULL(Valor, 0)) FROM Pagarreceberbaixas PRB WHERE PRB.Numero = PagarReceber.Numero), 0) BETWEEN 0.01 AND (Valor_Total-0.01)';
          If cSituacao.ItemIndex = 3 then mLinha := mLinha + 'AND ISNULL((SELECT SUM(ISNULL(Valor, 0)) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PagarReceber.Numero), 0) >= Valor_Total';
          If cAgrupar.Checked = false then begin
             If cTipo.ItemIndex = 0 then begin
                tTotais.SQL.Add('SELECT (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') AND (CONVERT(Date, Data_Vencimento, 103) = :pData) '+mLinha+') AS Total_Pagamentos,');
                tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''R'') AND (CONVERT(Date, Data_Vencimento, 103) = :pData) '+mLinha+') AS Total_Recebimentos,');
             End;
             If cTipo.ItemIndex = 1 then begin
                tTotais.SQL.Add('SELECT (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') AND (CONVERT(Date, Data_Vencimento, 103) = :pData) '+mLinha+') AS Total_Pagamentos,');
                tTotais.SQL.Add('       0 AS Total_Recebimentos,');
             End;
             If cTipo.ItemIndex = 2 then begin
                tTotais.SQL.Add('SELECT CAST(0 AS money) AS Total_Pagamentos,');
                tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''R'') AND (CONVERT(Date, Data_Vencimento, 103) = :pData) '+mLinha+') AS Total_Recebimentos,');
             End;

             tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') AND (CONVERT(Date, Data_Vencimento, 103) = :pData) AND (CustoConta     = 1) '+mLinha+') AS Total_Custo,');
             tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') AND (CONVERT(Date, Data_Vencimento, 103) = :pData) AND (Custo_Seletivo = 1) '+mLinha+') AS Total_Seletivo,');
             tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') AND (CONVERT(Date, Data_Vencimento, 103) = :pData) AND (Custo_Entrada  = 1) '+mLinha+') AS Total_Entrada,');
             tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') AND (CONVERT(Date, Data_Vencimento, 103) = :pData) AND (Custo_Outros   = 1) '+mLinha+') AS Total_Outros');
             tTotais.ParamByName('pData').AsDate := StrtoDate(mData);
          end else begin
             If cTipo.ItemIndex = 0 then begin
                tTotais.SQL.Add('SELECT (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') '+mLinha+') AS Total_Pagamentos,');
                tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''R'') '+mLinha+') AS Total_Recebimentos,');
             End;
             If cTipo.ItemIndex = 1 then begin
                tTotais.SQL.Add('SELECT (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'')  '+mLinha+') AS Total_Pagamentos,');
                tTotais.SQL.Add('       0 AS Total_Recebimentos,');
             End;
             If cTipo.ItemIndex = 2 then begin
                tTotais.SQL.Add('SELECT CAST(0 AS money) AS Total_Pagamentos,');
                tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''R'')  '+mLinha+') AS Total_Recebimentos,');
             End;

             tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') AND (CustoConta = 1) '+mLinha+') AS Total_Custo,');
             tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') AND (Custo_Seletivo = 1) '+mLinha+') AS Total_Seletivo,');
             tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') AND (Custo_Entrada  = 1) '+mLinha+') AS Total_Entrada,');
             tTotais.SQL.Add('       (SELECT SUM(Valor_Total) FROM PagarReceber WHERE(Tipo = ''P'') AND (Custo_Outros   = 1) '+mLinha+') AS Total_Outros');
          End;
          If Trim(cClassificacao.Text) <> '' then tTotais.ParamByName('pClassificacao').AsString := Dados.ClassificacaoFinanceiraCodigo.AsString;
          If Trim(cBeneficiario.Text)  <> '' then begin
             If tBeneficiario.FieldByName('Codigo_Fornecedor').AsInteger <> 0  then tTotais.ParamByName('pFornecedor').AsInteger := tBeneficiario.FieldByName('Codigo_Fornecedor').AsInteger;
             If tBeneficiario.FieldByName('Codigo_Cliente').AsInteger    <> 0  then tTotais.ParamByName('pCliente').AsInteger    := tBeneficiario.FieldByName('Codigo_Cliente').AsInteger;
             If tBeneficiario.FieldByName('Codigo_Orgao').AsString       <> '' then tTotais.ParamByName('pOrgao').AsString       := tBeneficiario.FieldByName('Codigo_Orgao').AsString;
          End;
          If Trim(cProcesso.Text) <> '' then tTotais.ParamByName('pProcesso').AsString := Trim(Dados.ProcessosDOCProcesso.AsString);
          If Trim(cBanco.Text)    <> '' then tTotais.ParamByName('pBanco').AsInteger   := Dados.BancosCodigo.AsInteger;
          if (not DataLimpa(cPerIni.text)) and (not DataLimpa(cPerFim.text)) then begin
             tTotais.parambyname('pDtIni').value := cPerIni.date;
             tTotais.parambyname('pDtFim').value := cPerFim.date;
          end;
          //tTotais.SQL.SaveToFile('c:\temp\Financeiro_Lista_Totais.sql');
          tTotais.Open;

          pCusto.Caption        := FormatFloat('###,###,###,##0.00', tTotais.FieldByName('Total_Custo').AsCurrency);
          pCustoSel.Caption     := FormatFloat('###,###,###,##0.00', tTotais.FieldByName('Total_Seletivo').AsCurrency);
          pCustoEntrada.Caption := FormatFloat('###,###,###,##0.00', tTotais.FieldByName('Total_Entrada').AsCurrency);
          pCustoOutros.Caption  := FormatFloat('###,###,###,##0.00', tTotais.FieldByName('Total_Outros').AsCurrency);
          pPgto.Caption         := FormatFloat('###,###,###,##0.00', tTotais.FieldByName('Total_Pagamentos').AsCurrency);
          pRec.Caption          := FormatFloat('###,###,###,##0.00', tTotais.FieldByName('Total_Recebimentos').AsCurrency);
          If tPagarReceber.RecordCount > 0 then begin
             //pOBS.Caption := tPagarReceber.FieldByName('Observacao').AsString;
          End;

          mFiltra := true;
          
          Screen.Cursor := crDefault;
       End;
end;

procedure TFinanceiro_Lista.cClassificacaoChange(Sender: TObject);
begin
      FiltraLancamentos(mFiltra);
end;

procedure TFinanceiro_Lista.NavegaClick(Sender: TObject; Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbEdit) and (RemoveCaracter('/','',PagarReceberData_Documento.AsString) <> '') then begin
              // Verifica a data do fechamento financeiro Geral.
              If (PagarReceberData_Vencimento.Value <= EmpresasFechamento_Financeiro.Value) then begin
                 ShowMessage('Este título não pode ser alterado, pois esta dentro de um período já fechado.');
                 Abort;
              End;
              // Verifica a data do fechamento financeiro do banco.
              If (PagarReceberData_Vencimento.Value <= EmpresasFechamento_Financeiro.Value) or (PagarReceberData_Vencimento.Value <= BancosData_Fechamento.Value) then begin
                 ShowMessage('Este título não pode ser alterado, pois esta dentro de um período já fechado.');
                 Abort;
              End;
           End;
           If ConfiguracaoBloquear_ProcessoFechado.AsBoolean = true then begin
              If (Button = nbEdit) and (Trim(PagarReceberProcesso.AsString) <> '') then begin
                 If (ProcessosDOC.Locate('Processo', PagarReceberProcesso.AsString, [loCaseInsensitive]) = true) and (Trim(RemoveCaracter('/', '', ProcessosDOCProcesso_Fechamento.AsString)) <> '') then begin
                    MessageDlg('Atenção!'+#13+#13+'Este título não pode ser alterado, pois o processo já esta fechado.'+#13+#13+'Para modificar este lançamento abra novamento o processo.', mtInformation, [mbOK], 0);
                    Abort;
                 End;
              End;
           End;

           // Verifica se ja houve nota fiscal emitida com o título para não deixar alterar.
           {
           if trim(PagarReceberProcesso.AsString) <> '' then begin
              if PagarReceber.FieldByName('Tipo').Asstring = 'P' then begin
                 tTotais.sql.Clear;
                 tTotais.sql.Add('select Count(*) as Qtde');
                 tTotais.sql.add('from NotasItens');
                 tTotais.sql.add('where Processo = '+QuotedStr(PagarReceberProcesso.asstring) );
                 tTotais.sql.add('and   isnull(Cancelada, 0) = 0');
                 tTotais.sql.add('and   isnull(Nfe_Denegada, 0) = 0');
                 tTotais.open;
                 if tTotais.FieldByName('Qtde').AsInteger > 0 then begin
                    ShowMessage('Este título não pode ser alterado, pois já foi emitido nota fiscal utilizando esta despesa.');
                    Abort;
                 end;
              end;
           end;
           }
           If (Button = nbInsert) or (Button = nbEdit) then begin
               PagarReceber.SQL.Clear;
               PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
               PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
               PagarReceber.Open;

               If (Button = nbInsert) then begin
                  Clientes.SQL.Clear;
                  Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Ativo = 1) ORDER BY Nome');
                  Clientes.Open;
                  PagarReceber.Append;
                               PagarReceber.FieldByName('Recuperavel').value         := false;
                               PagarReceber.FieldByName('Pago_Cliente').value        := false;
                               PagarReceber.FieldByName('Permuta_Recebimento').value := false;
                               PagarReceber.FieldByName('Provisorio').value          := false;
               End;

               If (Button = nbEdit) then begin
                  PagarReceber.Edit;
               End;

               // Abre a tela de lançamentos removendo os processos fechados depois volta todos.
               ProcessosDOC.SQL.Clear;
               ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
               ProcessosDOC.Open;

               Financeiro_Lancamento := TFinanceiro_Lancamento.Create(Self);
               Financeiro_Lancamento.Caption := Caption;
               Financeiro_Lancamento.mOperacional := Usuarios.FieldByName('Financeiro_Operacional').AsBoolean;
               Financeiro_Lancamento.ShowModal;

               tPagarReceber.Refresh;
               
               Clientes.SQL.Clear;
               Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
               Clientes.Open;

               PagarReceber.Close;
          End;
      End;
end;

procedure TFinanceiro_Lista.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      If (Key = VK_INSERT) then begin
          Navega.BtnClick(nbInsert);
      end;
      If (Key = VK_F2) then begin
          Navega.BtnClick(nbEdit);
      end;
      If (Key = VK_DELETE) then begin
          Navega.BtnClick(nbDelete);
      end;
end;

procedure TFinanceiro_Lista.GradeDblClick(Sender: TObject);
begin
     Navega.BtnClick(nbEdit);
end;

procedure TFinanceiro_Lista.bSPClick(Sender: TObject);
begin
      With Dados do begin
           Filtra('P');
           If tSP_SN.RecordCount <> 0 then begin
              rSP.Print;
              rSP.FreeOnRelease;
           End;
      End;
      AbrirTabelas;
end;

procedure TFinanceiro_Lista.rSPBeforePrint(Sender: TObject);
begin
      If tSP_SNFornecedor.Value > 0 then begin
         lBeneficiario.DataPipeline := ppFornecedores;
         lBeneficiario.DataField    := 'Nome';
      End;
      If tSP_SNCliente.Value > 0 then begin
         lBeneficiario.DataPipeline := ppClientes;
         lBeneficiario.DataField    := 'Nome';
      End;
      If Trim(tSP_SNOrgao.Value) <> '' then begin
         lBeneficiario.DataPipeline := ppOrgaos;
         lBeneficiario.DataField    := 'Nome';
      End;
      lSolicitante.Caption  := Menu_Principal.mUsuarioNome;
      lSolicitante2.Caption := Menu_Principal.mUsuarioNome;
      If tSP_SNSolicitacao_Pgto.Value = 0 then begin
         lSolicitacao1.Text := PoeZero( 8, tSolicitacao.FieldByName('Solicitacao').AsInteger+1 );
         lSolicitacao2.Text := PoeZero( 8, tSolicitacao.FieldByName('Solicitacao').AsInteger+1 );
         
         Dados.PagarReceber.Edit;
               Dados.PagarReceberSolicitacao_Pgto.Value := tSolicitacao.FieldByName('Solicitacao').AsInteger+1;
         Dados.PagarReceber.Post;
      end else begin
         lSolicitacao1.Text := PoeZero( 8, tSP_SN.FieldByName('Solicitacao_Pgto').AsInteger );
         lSolicitacao2.Text := PoeZero( 8, tSp_SN.FieldByName('Solicitacao_Pgto').AsInteger );
      End;
end;

procedure TFinanceiro_Lista.rSPPrintingComplete(Sender: TObject);
begin
     ShowMessage('Impressão terminada e número registrado.');
end;

procedure TFinanceiro_Lista.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
    Icon: TBitmap;
begin
      With Dados do begin
           If Odd(tPagarReceber.RecNo) then
              Grade.Canvas.Brush.Color:= $00DEEDDE
           else
              Grade.Canvas.Brush.Color:= clCream;

           If not tPagarReceber.FieldByName('Recuperavel').AsBoolean then
              TDbGrid(Sender).Canvas.font.Color:= clBlack
           else
              TDbGrid(Sender).Canvas.font.Color:= clRed;

           If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := $00FFAAB0;
              FillRect(Rect);
              Font.Style := [fsbold];
              Font.Color := clBlack;
           End;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

           Icon := TBitmap.Create;
           If (Column.FieldName = 'Baixa') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tPagarReceber.FieldByName('Baixa').Value = 'Total')   then ImageList1.GetBitmap(0, Icon);
                   If (tPagarReceber.FieldByName('Baixa').Value = 'Parcial') then ImageList1.GetBitmap(9, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
           If (Column.FieldName = 'Liquidada') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   if tPagarReceber.FieldByName('Liquidada').asboolean then ImageList1.GetBitmap(0, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
           If (Column.FieldName = 'CustoConta') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tPagarReceber.FieldByName('CustoConta').AsBoolean = true) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
           If (Column.FieldName = 'Custo_Seletivo') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tPagarReceber.FieldByName('Custo_Seletivo').AsBoolean = true) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
           If (Column.FieldName = 'Custo_Entrada') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tPagarReceber.FieldByName('Custo_Entrada').AsBoolean = true) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
           If (Column.FieldName = 'Custo_Outros') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tPagarReceber.FieldByName('Custo_Outros').AsBoolean = true) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
           If (Column.FieldName = 'Quitado') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (tPagarReceber.FieldByName('Quitado').AsBoolean = true) then ImageList1.GetBitmap(16, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
      End;
end;

procedure TFinanceiro_Lista.Filtra(Tipo: String);
begin
      With Dados do begin
           tSP_SN.SQL.Clear;
           tSP_SN.SQL.Add('SELECT PagarReceber.*,');
           tSP_SN.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Clientes.Codigo = PagarReceber.Cliente)) AS Cliente_Nome');
           tSP_SN.SQL.Add('FROM PagarReceber WHERE (Numero = :pNumero)');
           tSP_SN.ParamByName('pNumero').AsInteger := PagarReceberNumero.Value;
           tSP_SN.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE (Codigo = :pCodigo)');
           Clientes.ParamByName('pCodigo').AsInteger := PagarReceberCliente.Value;
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE (Codigo = :pCodigo)');
           Fornecedores.ParamByName('pCodigo').AsInteger := PagarReceberFornecedor.Value;
           Fornecedores.Open;

           Orgaos.SQL.Clear;
           Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos WHERE (Codigo = :pCodigo)');
           Orgaos.ParamByName('pCodigo').AsString := PagarReceberOrgao.Value;
           Orgaos.Open;

           with ClassificacaoFinanceira do begin
                sql.Clear;
                sql.Add('select * from ClassificacaoFinanceira where Codigo = :pCodigo and insull(Desativada, 0) =0');
                parambyname('pCodigo').Value := PagarReceberClassificacao.Value;
                open;
           end;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE (Processo = :pProcesso)');
           ProcessosDOC.ParamByName('pProcesso').Value := PagarReceberProcesso.Value;
           ProcessosDOC.Open;
           
           with Bancos do begin
                sql.Clear;
                sql.Add('select * from Bancos where isnull(Desativado, 0) = 0');
                open;
           end;

           tSolicitacao.SQL.Clear;
           If Tipo = 'P' then
              tSolicitacao.SQL.Add('SELECT MAX(Solicitacao_Pgto)      AS Solicitacao FROM PagarReceber')
           else
              tSolicitacao.SQL.Add('SELECT MAX(Solicitacao_Numerario) AS Solicitacao FROM PagarReceber');
           tSolicitacao.Open;
      End;
end;

procedure TFinanceiro_Lista.bSNClick(Sender: TObject);
begin
      With Dados do begin
           Filtra('N');
           If tSP_SN.RecordCount <> 0 then begin
              rSN.Print;
              rSN.FreeOnRelease;
           End;
      End;
      AbrirTabelas;
end;

procedure TFinanceiro_Lista.rSNBeforePrint(Sender: TObject);
begin
      If tSP_SNFornecedor.Value > 0 then begin
         lBeneficiario.DataPipeline := ppFornecedores;
         lBeneficiario.DataField    := 'Nome';
      End;
      If tSP_SNCliente.Value > 0 then begin
         lBeneficiario.DataPipeline := ppClientes;
         lBeneficiario.DataField    := 'Nome';
      End;
      If Trim(tSP_SNOrgao.Value) <> '' then begin
         lBeneficiario.DataPipeline := ppOrgaos;
         lBeneficiario.DataField    := 'Nome';
      End;
      lSolicitante.Caption  := Menu_Principal.mUsuarioNome;
      If tSP_SNSolicitacao_Numerario.Value = 0 then begin
         lSolicitacaoSN.Text := PoeZero( 8, tSolicitacao.FieldByName('Solicitacao').AsInteger+1 );
         Dados.PagarReceber.Edit;
               Dados.PagarReceberSolicitacao_Numerario.Value := tSolicitacao.FieldByName('Solicitacao').AsInteger+1;
         Dados.PagarReceber.Post;
      end else begin
         lSolicitacaoSN.Text := PoeZero( 8, tSP_SN.FieldByName('Solicitacao_Numerario').AsInteger );
      End;
end;

procedure TFinanceiro_Lista.bBaixaLoteClick(Sender: TObject);
begin
      if not Permissao('mnFinanceiro_BaixaLote') then begin
         MessageDlg('Usuario sem permissão para acessar esta rotina!', mtInformation, [mbOK], 0);
         Abort;
      end;
      Financeiro_BaixaLote := TFinanceiro_BaixaLote.Create(Self);
      Financeiro_BaixaLote.Caption := Caption;
      Financeiro_BaixaLote.ShowModal;
      AbrirTabelas;
end;

procedure TFinanceiro_Lista.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
var
   mVinculo: integer;
begin
      If Button = nbDelete then begin
         With Dados, dmContab do begin
              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Numero = :pNumero');
              PagarReceberBaixas.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
              PagarReceberBaixas.Open;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = :pNumero');
              PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
              PagarReceber.Open;

              if PagarReceberNumero.AsInteger = 0 then begin
                 ShowMessage('Nenhum título selecionado para excluir.');
                 Abort;
              end;
              if (PagarReceberData_Vencimento.Value <= EmpresasFechamento_Financeiro.Value) then begin
                 ShowMessage('Este título não pode ser excluído, pois esta dentro de um período já fechado.');
                 Abort;
              end;

              // Verifica se ja houve nota fiscal emitida com o título para não deixar excluir.
              {
              if trim(PagarReceberProcesso.AsString) <> '' then begin
                 if PagarReceber.FieldByName('Tipo').Asstring = 'P' then begin
                    tTotais.sql.Clear;
                    tTotais.sql.Add('select Count(*) as Qtde');
                    tTotais.sql.add('from NotasItens');
                    tTotais.sql.add('where Processo = '+QuotedStr(PagarReceberProcesso.asstring) );
                    tTotais.sql.add('and   isnull(Cancelada, 0) = 0');
                    tTotais.sql.add('and   isnull(Nfe_Denegada, 0) = 0');
                    tTotais.open;
                    if tTotais.FieldByName('Qtde').AsInteger > 0 then begin
                       ShowMessage('Este título não pode ser excluído, pois já foi emitido nota fiscal utilizando esta despesa.');
                       Abort;
                    end;
                 end;
              end;
              }
              if PagarReceberBaixas.RecordCount > 0 then begin
                 MessageDlg('Atenção!'+#13+#13+
                            'O título não pode ser excluído, pois existem baixas realizadas.'+#13+#13+
                            'Estorne as baixas para poder excluir o título.', mtWarning, [mbOK], 0);
                 Abort;
              end else begin
                 if MessageDlg('Deseja realmente excluir o título selecionado?', mtConfirmation, [mbYES, mbNO], 0) = mrYes then begin
                    // Deleta o laçamento contabil de Provisão.
                    if PagarReceberVinculo.AsInteger = 0 then begin
                       mVinculo := PagarReceber.FieldByName('Numero').AsInteger;
                       PagarReceber.SQL.Clear;
                       PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Vinculo = :pVinculo');
                       PagarReceber.ParamByName('pVinculo').AsInteger := mVinculo;
                       PagarReceber.Execute;
                       PagarReceber.SQL.Clear;
                       PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
                       PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
                       PagarReceber.Open;
                    end;

                    // Muda o "Status" do pedido vindo e-commerce ou televendas.
                    if PagarReceberTipo_Nota.AsString = 'EC' then begin
                       PagarReceber.SQL.Clear;
                       PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Vinculo = :pVinculo AND Numero <> :pNumero');
                       PagarReceber.ParamByName('pVinculo').AsInteger := tPagarReceber.FieldByName('Vinculo').AsInteger;
                       PagarReceber.ParamByName('pNumero').AsInteger  := tPagarReceber.FieldByName('Numero').AsInteger;
                       PagarReceber.Execute;
                       PagarReceber.SQL.Clear;
                       PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = :pNumero');
                       PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
                       PagarReceber.Open;

                       PedidosRepresentantes.SQL.Clear;
                       PedidosRepresentantes.SQL.Add('UPDATE PedidosRepresentantes SET Liberado     = 0 ');
                       PedidosRepresentantes.SQL.Add('                                ,Situacao     = NULL');
                       PedidosRepresentantes.SQL.Add('                                ,Cancelado    = 0 ');
                       PedidosRepresentantes.SQL.Add('                                ,Faturamento  = 0 ');
                       PedidosRepresentantes.SQL.Add('                                ,Gerar_Pedido = 0 ');
                       PedidosRepresentantes.SQL.Add('WHERE Pedido        = :pPed');
                       PedidosRepresentantes.SQL.Add('AND   Data          = :pData');
                       PedidosRepresentantes.SQL.Add('AND   Origem_Pedido = ''E-COMMERCE'' ');
                       PedidosRepresentantes.ParamByName('pPed').AsInteger := tPagarReceber.FieldByName('Fiscal').AsInteger;
                       PedidosRepresentantes.ParamByName('pData').AsDate   := tPagarReceber.FieldByName('Data_Documento').AsDateTime;
                       PedidosRepresentantes.Execute;
                       PedidosRepresentantes.SQL.Clear;
                       PedidosRepresentantes.SQL.Add('SELECT * FROM PedidosRepresentantes WHERE Pedido = :pPed');
                       PedidosRepresentantes.ParamByName('pPed').AsInteger := tPagarReceber.FieldByName('Fiscal').AsInteger;
                    end;

                    // Apaga todos os documento relacionados com o titulo.
                    with ttmp do begin
                         sql.Clear;
                         sql.Add('delete from PagarReceberDocs where Titulo = :pNumero');
                         parambyname('pNumero').value := PagarReceber.FieldByName('Numero').AsInteger;
                         execute;
                    end;

                    PagarReceber.Delete;
                    FiltraLancamentos(mFiltra);
                 end;
                 Abort;
              end;
         end;
      end;
end;

procedure TFinanceiro_Lista.cClassificacaoClick(Sender: TObject);
begin
     cAgrupar.Enabled := (Trim(cClassificacao.Text) <> '') or (Trim(cProcesso.Text) <> '') or (Trim(cBeneficiario.Text) <> '') or
                         (Trim(cBanco.Text) <> '') or (cProvisorio.Checked) or (not DataLimpa(cPerIni.text)) or
                         (not DataLimpa(cPerFim.text)) or (trim(cRaizCNPJ.Text) <> '');
     PegaDias;
end;

procedure TFinanceiro_Lista.GradeCellClick(Column: TColumn);
begin
      With Dados do begin
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
           PagarReceber.Open;
      End;
end;

procedure TFinanceiro_Lista.bDuplicarClick(Sender: TObject);
begin
      With Dados do begin
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
           PagarReceber.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Codigo');
           CentroCusto.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Processo = :pProcesso)');
           ProcessosDOC.ParamByName('pProcesso').AsString := tPagarReceber.FieldByName('Processo').AsString;
           ProcessosDOC.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Codigo = :pCodigo)');
           Fornecedores.ParamByName('pCodigo').AsInteger := PagarReceber.FieldByName('Fornecedor').AsInteger;
           Fornecedores.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo = :pCodigo)');
           Clientes.ParamByName('pCodigo').AsInteger := PagarReceber.FieldByName('Cliente').AsInteger;
           Clientes.Open;

           Orgaos.SQL.Clear;
           Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos WHERE(Codigo = :pCodigo)');
           Orgaos.ParamByName('pCodigo').AsString := PagarReceber.FieldByName('Orgao').AsString;
           Orgaos.Open;
      End;

      Financeiro_Duplicar := TFinanceiro_Duplicar.Create(Self);
      Financeiro_Duplicar.Caption := Caption;
      Financeiro_Duplicar.ShowModal;

      AbrirTabelas;
end;

procedure TFinanceiro_Lista.cProcessoClick(Sender: TObject);
begin
     cAgrupar.Enabled := (Trim(cClassificacao.Text) <> '') or (Trim(cProcesso.Text) <> '') or (Trim(cBeneficiario.Text) <> '') or
                         (Trim(cBanco.Text) <> '') or (cProvisorio.Checked) or (not DataLimpa(cPerIni.text)) or
                         (not DataLimpa(cPerFim.text)) or (trim(cRaizCNPJ.Text) <> '');
     PegaDias;
end;

procedure TFinanceiro_Lista.AbrirTabelas;
begin
     Screen.Cursor := crSQLWait;

     With Dados do Begin
          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
          Clientes.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
          Fornecedores.Open;

          with ClassificacaoFinanceira do begin
               sql.Clear;
               sql.Add('select *');
               sql.add('from ClassificacaoFinanceira');
               sql.add('where isnull(Titulo, 0) = 0');
               sql.add('and Nivel <= :pNivel');
               sql.add('and isnull(Desativada, 0) = 0');
               sql.add('order by Descricao');
               ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
               Open;
          end;
          with Bancos do begin
               sql.Clear;
               sql.Add('select * from Bancos where isnull(Desativado,0) = 0 order by Nome');
               open;
          end;

          TiposDocumentos.SQL.Clear;
          TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE(Desativada <> 1) ORDER BY Descricao');
          TiposDocumentos.Open;

          ProcessosDOC.SQL.Clear;
          ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE ISNULL(Desativado, 0) = 0 ORDER BY Processo');
          ProcessosDOC.Open;

          Impostos.SQL.Clear;
          Impostos.SQL.Add('SELECT * FROM Impostos');
          Impostos.Open;

          Usuarios.SQL.Clear;
          Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE(Matricula = :pMatricula)');
          Usuarios.ParamByName('pMatricula').AsString := Menu_Principal.mUsuarioCodigo;
          Usuarios.Open;

          mOperacional := Usuarios.FieldByName('Financeiro_Operacional').AsBoolean;
          Usuarios.Close;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
          Empresas.ParamByName('pEmpresa').AsInteger := mEmpresaAntes;
          Empresas.Open;
          with tBeneficiario do begin
               SQL.Clear;
               SQL.Add('SELECT CAST(Codigo AS VARCHAR(10)) AS Codigo,');
               SQL.Add('       Codigo AS Codigo_Fornecedor,');
               SQL.Add('       0 AS Codigo_Cliente,');
               SQL.Add('       '''' AS Codigo_Orgao,');
               SQL.Add('       Nome,');
               SQL.Add('       CNPJ,');
               SQL.Add('       ''F'' AS Tipo');
               SQL.Add('INTO #tmp');
               SQL.Add('FROM Fornecedores');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT CAST(Codigo AS VARCHAR(10)),');
               SQL.Add('       0,');
               SQL.Add('       Codigo,');
               SQL.Add('       '''',');
               SQL.Add('       Nome,');
               SQL.Add('       CNPJ,');
               SQL.Add('       ''C''');
               SQL.Add('FROM Clientes');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT Codigo,');
               SQL.Add('       0,');
               SQL.Add('       0,');
               SQL.Add('       Codigo,');
               SQL.Add('       Nome,');
               SQL.Add('       '''',');
               SQL.Add('       ''F''');
               SQL.Add('FROM Cybersoft_Cadastros.dbo.OrgaosPublicos');
               SQL.Add('SELECT ROW_NUMBER() OVER(ORDER BY Nome ASC) AS Linha,* FROM #tmp ORDER BY Nome, CNPJ');
               SQL.Add('DROP TABLE #tmp');
               //tBeneficiario.SQL.SaveToFile('c:\temp\Financeiros_Beneficiarios.SQL');
               Open;
          end;
     End;
     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_Lista.StaticText1Click(Sender: TObject);
begin
     cProcesso.KeyValue := Trim(tPagarReceber.FieldbyName('Processo').AsString);
     cProcessoClick(Self);
end;

procedure TFinanceiro_Lista.lcClassificacaoClick(Sender: TObject);
begin
     cClassificacao.KeyValue := Trim(tPagarReceber.FieldbyName('Classificacao').AsString);
     cClassificacaoClick(Self);
end;

procedure TFinanceiro_Lista.cAgruparClick(Sender: TObject);
begin
     FiltraLancamentos(mFiltra);
end;

procedure TFinanceiro_Lista.lcBeneficiarioClick(Sender: TObject);
begin
     cBeneficiario.KeyValue := tPagarReceber.FieldByName('Beneficiario').AsString;
     cBeneficiarioClick(Self);
end;

procedure TFinanceiro_Lista.cBeneficiarioClick(Sender: TObject);
begin
//     cAgrupar.Enabled := (Trim(cClassificacao.Text) <> '') or (Trim(cProcesso.Text) <> '') or (Trim(cBeneficiario.Text) <> '') or (Trim(cBanco.Text) <> '') or (cProvisorio.Checked) or (not DataLimpa(cPerIni.text)) or (not DataLimpa(cPerFim.text));
     cAgrupar.Enabled := (Trim(cClassificacao.Text) <> '') or (Trim(cProcesso.Text) <> '') or (Trim(cBeneficiario.Text) <> '') or
                         (Trim(cBanco.Text) <> '') or (cProvisorio.Checked) or (not DataLimpa(cPerIni.text)) or
                         (not DataLimpa(cPerFim.text)) or (trim(cRaizCNPJ.Text) <> '');
     PegaDias;
end;

procedure TFinanceiro_Lista.bLimparClick(Sender: TObject);
begin
     mFiltra                 := false;
     cClassificacao.KeyValue := '';
     cProcesso.KeyValue      := '';
     cBeneficiario.KeyValue  := '';
     cRaizCNPJ.text          := '';
     cEmpresa.KeyValue       := Menu_Principal.mEmpresa;
     cBanco.KeyValue         := '';
     cAgrupar.Checked        := false;
     cAgrupar.Enabled := (Trim(cClassificacao.Text) <> '') or (Trim(cProcesso.Text) <> '') or (Trim(cBeneficiario.Text) <> '') or
                         (Trim(cBanco.Text) <> '') or (cProvisorio.Checked) or (not DataLimpa(cPerIni.text)) or
                         (not DataLimpa(cPerFim.text)) or (trim(cRaizCNPJ.Text) <> '');

     cProvisorio.Checked     := false;
     cTipo.ItemIndex         := 0;
     cSituacao.ItemIndex     := 0;
     cDias.Enabled           := true;
     cMeses.Enabled          := true;
     cAno.Enabled            := true;
     mFiltra                 := true;
     cPerini.Clear;
     cPerFim.Clear;

     // Quando há alteração em "cDias" o sistema executa PegaDias automaticamente.
     PegaDias;
     cDias.TabIndex := DayOf(Date)-1;
end;

procedure TFinanceiro_Lista.bNFCancelClick(Sender: TObject);
begin
     Financeiro_NFCancelada := TFinanceiro_NFCancelada.create(Self);
     Financeiro_NFCancelada.caption := Caption;
     Financeiro_NFCancelada.Showmodal;
end;

procedure TFinanceiro_Lista.GradeTitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
begin
      mNomeColuna := Grade.Columns[aCol].FieldName;
      FiltraLancamentos(mFiltra);
      mUltimoClick := mNomeColuna;
end;

procedure TFinanceiro_Lista.bPesquisarClick(Sender: TObject);
begin
      Financeiro_Pesquisa := TFinanceiro_Pesquisa.Create(Self);
      Financeiro_Pesquisa.Caption := Caption;
      Financeiro_Pesquisa.mJanela := 'Lista';
      Financeiro_Pesquisa.ShowModal;
end;

procedure TFinanceiro_Lista.tPagarReceberAfterScroll(DataSet: TDataSet);
begin
      GradeBaixas.DisableScroll;
      with tHistorico do begin
           sqL.Clear;
           sqL.Add('SELECT Registro,');
           sqL.Add('       Data,');
           sqL.Add('       Valor,');
           sqL.Add('       Forma_Tipo,');
           sqL.Add('       Forma_TipoDocumento,');
           sqL.Add('       CAST(Observacao AS VARCHAR(100)) AS Observacao,');
           if Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
              SQL.Add('       (SELECT Nome FROM Bancos WHERE(Codigo = Banco)) AS Nome_Banco');
           end else begin
              SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Bancos WHERE(Codigo = Banco)) AS Nome_Banco');
           end;
           sqL.Add('FROM   PagarReceberBaixas WHERE(Numero = :pNumero)');
           paramByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
           open;
           if RecordCount > 0 then GradeBaixas.Color := $00D5FFFF else GradeBaixas.Color := clBtnFace;
      end;
      with tTmp do begin
           sql.clear;
           sql.add('select Pedido_Pai, Pedido_Pai2 from PedidosRepresentantes where Pedido = :pPed');
           parambyname('pPed').asstring := tPagarReceber.FieldByName('Pedido_Rep').AsString;
           open;
      end;
      pPedido.Caption     := tPagarReceber.FieldByName('Pedido_Rep').AsString;
      pPedidoPai.Caption  := iif(tTmp.fieldbyname('Pedido_Pai').asstring <> '', tTmp.fieldbyname('Pedido_Pai').asstring , tTmp.fieldbyname('Pedido_Pai2').asstring);
      pPedidoPai2.Caption := iif(tTmp.fieldbyname('Pedido_Pai').asstring =  '', '', tTmp.fieldbyname('Pedido_Pai2').asstring);


      GradeBaixas.EnableScroll;
end;

procedure TFinanceiro_Lista.cBeneficiario1Change(Sender: TObject);
begin
     cAgrupar.Enabled := (Trim(cClassificacao.Text) <> '') or (Trim(cProcesso.Text) <> '') or (Trim(cBeneficiario.Text) <> '') or
                         (Trim(cBanco.Text) <> '') or (cProvisorio.Checked) or (not DataLimpa(cPerIni.text)) or
                         (not DataLimpa(cPerFim.text)) or (trim(cRaizCNPJ.Text) <> '');
     PegaDias;
end;

procedure TFinanceiro_Lista.cProvisorioClick(Sender: TObject);
begin
     cAgrupar.Enabled := (Trim(cClassificacao.Text) <> '') or (Trim(cProcesso.Text) <> '') or (Trim(cBeneficiario.Text) <> '') or
                         (Trim(cBanco.Text) <> '') or (cProvisorio.Checked) or (not DataLimpa(cPerIni.text)) or
                         (not DataLimpa(cPerFim.text)) or (trim(cRaizCNPJ.Text) <> '');
      PegaDias;
end;

procedure TFinanceiro_Lista.cRaizCNPJChange(Sender: TObject);
begin
     cAgrupar.Enabled := (Trim(cClassificacao.Text) <> '') or (Trim(cProcesso.Text) <> '') or (Trim(cBeneficiario.Text) <> '') or
                         (Trim(cBanco.Text) <> '') or (cProvisorio.Checked) or (not DataLimpa(cPerIni.text)) or
                         (not DataLimpa(cPerFim.text)) or (trim(cRaizCNPJ.Text) <> '');
     PegaDias;
end;

procedure TFinanceiro_Lista.mnModificarClick(Sender: TObject);
begin
     Navega.BtnClick(nbEdit);
end;

procedure TFinanceiro_Lista.mnExcluirClick(Sender: TObject);
begin
     Navega.BtnClick(nbDelete);
end;

procedure TFinanceiro_Lista.mnAdicionarClick(Sender: TObject);
begin
     Navega.BtnClick(nbInsert);
end;

procedure TFinanceiro_Lista.mnCustoClick(Sender: TObject);
Var
    mNumero: Integer;
begin
      With Dados do begin
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('UPDATE PagarReceber SET CustoConta     = :pCusto,');
           PagarReceber.SQL.Add('                        Custo_Seletivo = CASE WHEN CustoConta = 0 THEN 0 END');
           PagarReceber.SQL.Add('WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger   := tPagarReceber.FieldByName('Numero').AsInteger;
           PagarReceber.ParamByName('pCusto').AsBoolean    := not tPagarReceber.FieldByName('CustoConta').AsBoolean;
           PagarReceber.Execute;
           
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;

           mNumero := tPagarReceber.FieldByName('Numero').AsInteger;
           FiltraLancamentos(mFiltra);
           tPagarReceber.Locate('Numero', mNumero, [loCaseInsensitive]);
      End;
end;

procedure TFinanceiro_Lista.MenuPopup(Sender: TObject);
begin
      mnCusto.Enabled        := tPagarReceber.FieldByName('Tipo').AsString = 'P';
      mnSeletivo.Enabled     := tPagarReceber.FieldByName('Tipo').AsString = 'P';
      mnCustoEntrada.Enabled := tPagarReceber.FieldByName('Tipo').AsString = 'P';
      mnCustoOutros.Enabled  := tPagarReceber.FieldByName('Tipo').AsString = 'P';

      If tPagarReceber.FieldByName('CustoConta').AsBoolean then
         mnCusto.Caption := 'Remover do Custo Geral (Saída)'
      else
         mnCusto.Caption := 'Adicionar ao Custo Geral (Saída)';

      If tPagarReceber.FieldByName('Custo_Seletivo').AsBoolean then
         mnSeletivo.Caption := 'Remover do Custo Seletivo'
      else
         mnSeletivo.Caption := 'Adicionar ao Custo Seletivo';

      If tPagarReceber.FieldByName('Custo_Entrada').AsBoolean then
         mnCustoEntrada.Caption := 'Remover do Custo Geral (Entrada)'
      else
         mnCustoEntrada.Caption := 'Adicionar ao Custo Geral (Entrada)';

      If tPagarReceber.FieldByName('Custo_Outros').AsBoolean then
         mnCustoOutros.Caption := 'Remover do Custo Geral (Outros)'
      else
         mnCustoOutros.Caption := 'Adicionar ao Custo Geral (Outros)';
end;

procedure TFinanceiro_Lista.mnSeletivoClick(Sender: TObject);
Var
   mNumero: Integer;
begin
      With Dados do begin
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Seletivo = :pSeletivo,');
           PagarReceber.SQL.Add('                        CustoConta     = CASE WHEN Custo_Seletivo = 0 THEN 0 END,');
           PagarReceber.SQL.Add('                        Custo_Entrada  = CASE WHEN Custo_Seletivo = 0 THEN 0 END');
           PagarReceber.SQL.Add('WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger   := tPagarReceber.FieldByName('Numero').AsInteger;
           PagarReceber.ParamByName('pSeletivo').AsBoolean := not tPagarReceber.FieldByName('Custo_Seletivo').AsBoolean;
           PagarReceber.Execute;
           
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;

           mNumero := tPagarReceber.FieldByName('Numero').AsInteger;
           FiltraLancamentos(mFiltra);
           tPagarReceber.Locate('Numero', mNumero, [loCaseInsensitive]);
      End;
end;

procedure TFinanceiro_Lista.mnCustoEntradaClick(Sender: TObject);
Var
   mNumero: Integer;
begin
      With Dados do begin
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Entrada  = :pCusto,');
           PagarReceber.SQL.Add('                        Custo_Seletivo = CASE WHEN Custo_Entrada = 0 THEN 0 END');
           PagarReceber.SQL.Add('WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger   := tPagarReceber.FieldByName('Numero').AsInteger;
           PagarReceber.ParamByName('pCusto').AsBoolean    := not tPagarReceber.FieldByName('Custo_Entrada').AsBoolean;
           PagarReceber.Execute;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;

           mNumero := tPagarReceber.FieldByName('Numero').AsInteger;
           FiltraLancamentos(mFiltra);
           tPagarReceber.Locate('Numero', mNumero, [loCaseInsensitive]);
      End;
end;

procedure TFinanceiro_Lista.mnCustoOutrosClick(Sender: TObject);
Var
   mNumero: Integer;
begin
      With Dados do begin
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Outros = :pCusto');
           PagarReceber.SQL.Add('WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
           PagarReceber.ParamByName('pCusto').AsBoolean  := not tPagarReceber.FieldByName('Custo_Outros').AsBoolean;
           PagarReceber.Execute;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;

           mNumero := tPagarReceber.FieldByName('Numero').AsInteger;
           FiltraLancamentos(mFiltra);
           tPagarReceber.Locate('Numero', mNumero, [loCaseInsensitive]);
      End;
end;

procedure TFinanceiro_Lista.pBloqClick(Sender: TObject);
begin
      If Menu_Principal.mnFinanceiro_Bloqueio.Enabled = true then begin
         Financeiro_BloquearPeriodo := TFinanceiro_BloquearPeriodo.Create(Self);
         Financeiro_BloquearPeriodo.Caption := Caption;
         Financeiro_BloquearPeriodo.ShowModal;

         // Mensagem informando até quando o movimento esta bloqueado.
         Dados.Empresas.Open;
         pBloq.Caption :='     /  /    ';
         If Trim(RemoveCaracter('/', '', Dados.EmpresasFechamento_Financeiro.AsString)) <> '' then begin;
            pBloq.Caption := Dados.EmpresasFechamento_Financeiro.AsString + ' até '+Dados.EmpresasFechamento_FinanceiroFinal.AsString;
         End;
      End;
end;

procedure TFinanceiro_Lista.cEmpresaChange(Sender: TObject);
begin
      MudaEmpresa(tEmpresasCodigo.Value);
end;

procedure TFinanceiro_Lista.MudaEmpresa(pEmpresa: Integer);
begin
      With Dados do begin
           Menu_Principal.mEmpresa  := pEmpresa;
           Banco_Empresas.Connected := false;
           Banco_Empresas.Server    := Banco.Server;
           Banco_Empresas.Database  := tEmpresasBanco_Dados.AsString;
           Banco_Empresas.Username  := Menu_Principal.mBancoUsuario;
           Banco_Empresas.Password  := Menu_Principal.mBancoSenha;
           Banco_Empresas.Connected := true;

           Menu_Principal.Amb_Producao         := tEmpresasAmbiente.Value;
           Menu_Principal.lEmpresa.Caption     := tEmpresasRazao_Social.Value;
           Menu_Principal.mnNotaFiscal.Enabled := tEmpresasPagamento.AsBoolean;
           Menu_Principal.bNF_Entrada.Enabled  := tEmpresasPagamento.AsBoolean;
           Menu_Principal.bNF_Saida.Enabled    := tEmpresasPagamento.AsBoolean;
           Menu_Principal.bNF_Outros.Enabled   := tEmpresasPagamento.AsBoolean;

           If not tEmpresas.FieldByName('Matriz_Filial').AsBoolean then
              Menu_Principal.lFilial.Caption := 'FILIAL '+tEmpresasNumero_Filial.AsString + ' (' + tEmpresasEstado.AsString+')'
           else
              Menu_Principal.lFilial.Caption := 'MATRIZ (' + tEmpresasEstado.AsString+')';

           Menu_Principal.cFoto.Picture.Assign(nil);
           Application.ProcessMessages;
           If FileExists(tEmpresas.FieldByName('Logo').AsString) then begin
              Menu_Principal.cFoto.Picture.LoadFromFile(tEmpresas.FieldByName('Logo').AsString);
           End;

           If Trim(tEmpresasMascara_PlanoContas.AsString) <> '' then
              dmContab.PlanoContasConta.EditMask := tEmpresasMascara_PlanoContas.Value+';0; '
           else
              dmContab.PlanoContasConta.EditMask := '';

           // Muda o banco das tabelas compartilhadas
           ClassificacaoFinanceira.Close;
           Bancos.Close;
           Configuracao.open;

           If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
              ClassificacaoFinanceira.Connection := Banco
           else
              ClassificacaoFinanceira.Connection := Banco_Empresas;

           If ConfiguracaoCompartilhar_Bancos.AsBoolean = true then
              Bancos.Connection := Banco
           else
              Bancos.Connection := Banco_Empresas;

           AbrirTabelas;

           PegaDias;
      End;
end;

procedure TFinanceiro_Lista.bLancamentoNovoBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      If Button = nbDelete then begin
         With Dados, dmContab do begin
              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
              PagarReceberBaixas.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
              PagarReceberBaixas.Open;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
              PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
              PagarReceber.Open;

              If PagarReceberNumero.AsInteger = 0 then begin
                 ShowMessage('Nenhum título selecionado para excluir.');
                 Abort;
              End;
              If (PagarReceberData_Vencimento.Value <= EmpresasFechamento_Financeiro.Value) then begin
                 ShowMessage('Este título não pode ser excluído, pois esta dentro de um período já fechado.');
                 Abort;
              End;

              If PagarReceberBaixas.RecordCount > 0 then begin
                 MessageDlg('Atenção!'+#13+#13+
                            'O título não pode ser excluído, pois existem baixas realizadas.'+#13+#13+
                            'Estorne as baixas para poder excluir o título.', mtWarning, [mbOK], 0);
                 Abort;
              end else begin
                 If MessageDlg('Deseja realmente excluir o título selecionado?', mtConfirmation, [mbYES, mbNO], 0) = mrYes then begin
                    // Deleta o laçamento contabil de Provisão.
                    {
                    Lancamentos.SQL.Clear;
                    Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE Numero_Financeiro  = :pNumero');
                    Lancamentos.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
                    Lancamentos.Execute;
                    Lancamentos.SQL.Clear;
                    Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE Numero_Financeiro = :pNumero');
                    Lancamentos.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;
                    Lancamentos.Open;
                    }
                    // Log de operação
                    LogDados(PagarReceber, '('+PagarReceberNumero.AsString+') '+PagarReceberClassificacao.AsString+' - '+Dados.PagarReceberDescricaoClassificacao.AsString, dsInactive);

                    PagarReceber.Delete;
                    FiltraLancamentos(mFiltra);
                 End;
                 Abort;
              End;
         End;
      End;
end;

procedure TFinanceiro_Lista.cSituacaoClick(Sender: TObject);
begin
      PegaDias;
end;

procedure TFinanceiro_Lista.cBancoChange(Sender: TObject);
begin
     cAgrupar.Enabled := (Trim(cClassificacao.Text) <> '') or (Trim(cProcesso.Text) <> '') or (Trim(cBeneficiario.Text) <> '') or
                         (Trim(cBanco.Text) <> '') or (cProvisorio.Checked) or (not DataLimpa(cPerIni.text)) or
                         (not DataLimpa(cPerFim.text)) or (trim(cRaizCNPJ.Text) <> '');
     PegaDias;
end;

procedure TFinanceiro_Lista.FormShow(Sender: TObject);
begin
     mFiltra         := false;
     cMeses.TabIndex := MonthOf(Date)-1;
     cAno.Value      := YearOf(Date);
     cDias.TabIndex  := DayOf(Date)-1;
     mData           := StrtoDate(InttoStr(cDias.TabIndex+1)+'/'+InttoStr(cMeses.TabIndex+1)+'/'+cAno.Text);

     cDias.Hint := 'Click aqui para filtrar os lançamentos pelo dia do mês desejado.'+ #13+'O ponto ao lado do dia indica os dias que tiveram movimento.';

     //cDias.BackgroundColor   := Color;
     cClassificacao.KeyValue := '';
     mUltimoClick            := Grade.Columns[0].FieldName;

     With Dados do begin
          Configuracao.Open;
          CompClass       := iif(not ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
          CompBancos      := iif(not ConfiguracaoCompartilhar_Bancos.AsBoolean       , 'Bancos'                 , 'Cybersoft_Cadastros.dbo.Bancos');
           
          // Mensagem informando até quando o movimento esta bloqueado.
          pBloq.Caption :='     /  /    ';
          If Trim(RemoveCaracter('/', '', EmpresasFechamento_Financeiro.AsString)) <> '' then begin;
             pBloq.Caption := EmpresasFechamento_Financeiro.AsString;
          End;

          tEmpresas.SQL.Clear;
          tEmpresas.SQL.Add('SELECT  Codigo');
          tEmpresas.SQL.Add('       ,Razao_Social');
          tEmpresas.SQL.Add('       ,CNPJ');
          tEmpresas.SQL.Add('       ,Estado');
          tEmpresas.SQL.Add('       ,Numero_Filial');
          tEmpresas.SQL.Add('       ,Ambiente');
          tEmpresas.SQL.Add('       ,Banco_Dados');
          tEmpresas.SQL.Add('       ,Pagamento');
          tEmpresas.SQL.Add('       ,Mascara_PlanoContas');
          tEmpresas.SQL.Add('       ,Matriz_Filial');
          tEmpresas.SQL.Add('       ,Logo');
          tEmpresas.SQL.Add('FROM   Empresas');
          tEmpresas.SQL.Add('ORDER  By Razao_Social, Numero_Filial');
          tEmpresas.Open;

          mEmpresaAntes     := Menu_Principal.mEmpresa;
          cEmpresa.KeyValue := mEmpresaAntes;
     End;
     FiltraLancamentos(true);
end;

procedure TFinanceiro_Lista.Recupervel1Click(Sender: TObject);
Var
   mNumero: Integer;
begin
      With Dados do begin
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('UPDATE PagarReceber SET Recuperavel = CASE WHEN ISNULL(Recuperavel, 0) = 0 THEN 1 ELSE 0 END');
           PagarReceber.SQL.Add('WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger   := tPagarReceber.FieldByName('Numero').AsInteger;
           PagarReceber.Execute;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := tPagarReceber.FieldByName('Numero').AsInteger;

           mNumero := tPagarReceber.FieldByName('Numero').AsInteger;
           FiltraLancamentos(mFiltra);
           tPagarReceber.Locate('Numero', mNumero, [loCaseInsensitive]);
      End;
end;

procedure TFinanceiro_Lista.bPesqClaClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := '';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      Dados.Configuracao.open;
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Classificacao.asboolean, 'Dados','Empresa');
      //PesquisaGerais.mFiltro := 'and Desativada <> 1';

      PesquisaGerais.mScript := 'select Codigo,'+#13+
                                '       Descricao'+#13+
                                'from ClassificacaoFinanceira'+#13+
                                'where isnull(Desativada, 0) = 0'+#13+
                                'and Descricao like :pPesq'+#13+
                                'and Nivel <= '+inttostr(Menu_Principal.mUsuarioNivel)+#13;
      PesquisaGerais.Showmodal;

      cClassificacao.KeyValue := Clipboard.asText;
      cAgrupar.Enabled        := true;
      cAgrupar.Checked        := false;
      cAgrupar.Checked        := true;
end;

procedure TFinanceiro_Lista.bPesqBeneClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := '';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mKey    := 'Nome';

      PesquisaGerais.mScript := 'SELECT CAST(Codigo AS VARCHAR(10)) AS Codigo,'+#13+
                                '       Codigo AS Codigo_Fornecedor,'+#13+
                                '       0 AS Codigo_Cliente,'+#13+
                                '       '''' AS Codigo_Orgao,'+#13+
                                '       Nome,'+#13+
                                '       CNPJ,'+#13+
                                '       ''F'' AS Tipo'+#13+
                                'FROM Fornecedores'+#13+
                                'WHERE Ativo = 1'+#13+
                                '  AND Nome LIKE :pPesq'+#13+
                                'UNION ALL'+#13+
                                'SELECT CAST(Codigo AS VARCHAR(10)),'+#13+
                                '       0,'+#13+
                                '       Codigo,'+#13+
                                '       '''','+#13+
                                '       Nome,'+#13+
                                '       CNPJ,'+#13+
                                '       ''C'''+#13+
                                'FROM Clientes'+#13+
                                'WHERE Ativo = 1'+#13+
                                '  AND Nome LIKE :pPesq'+#13+
                                'UNION ALL'+#13+
                                'SELECT Codigo,'+#13+
                                '       0,'+#13+
                                '       0,'+#13+
                                '       Codigo,'+#13+
                                '       Nome,'+#13+
                                '       '''','+#13+
                                '       ''F'''+#13+
                                'FROM Cybersoft_Cadastros.dbo.OrgaosPublicos'+#13+
                                'WHERE Nome LIKE :pPesq';
      PesquisaGerais.Showmodal;

      cBeneficiario.KeyValue := Clipboard.asText;
      cAgrupar.Enabled       := true;
      cAgrupar.Checked       := true;
end;

procedure TFinanceiro_Lista.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      tEmpresas.Locate('Codigo', mEmpresaAntes, [loCaseInsensitive]);
      mFiltra := false;
      MudaEmpresa(mEmpresaAntes);
      FecharTabelas(Dados, dmContab, nil, nil);
      LimpaMemoria;
      Financeiro_Lista.Release;
      Financeiro_Lista := nil;
end;

procedure TFinanceiro_Lista.bEstornaBaixaClick(Sender: TObject);
begin
      if not Permissao('mnFinanceiro_EstornoBaixa') then begin
         MessageDlg('Usuario sem permissão para acessar esta rotina!', mtInformation, [mbOK], 0);
         Abort;
      end;
      Financeiro_EstornoBaixa := TFinanceiro_EstornoBaixa.Create(Self);
      Financeiro_EstornoBaixa.Caption := Caption;
      Financeiro_EstornoBaixa.ShowModal;
      AbrirTabelas;
end;

procedure TFinanceiro_Lista.bFiltroClick(Sender: TObject);
begin
     if (not DataLimpa(cPerIni.Text)) and (not DataLimpa(cPerFim.Text)) then begin
        cAgrupar.Checked := true;
        cAgrupar.Enabled := (Trim(cClassificacao.Text) <> '') or (Trim(cProcesso.Text) <> '') or (Trim(cBeneficiario.Text) <> '') or
                         (Trim(cBanco.Text) <> '') or (cProvisorio.Checked) or (not DataLimpa(cPerIni.text)) or
                         (not DataLimpa(cPerFim.text)) or (trim(cRaizCNPJ.Text) <> '');
        PegaDias;
     end;
end;

procedure TFinanceiro_Lista.bFiltroGeralClick(Sender: TObject);
begin
     FiltraLancamentos(mFiltra);
end;

procedure TFinanceiro_Lista.PlanodeContas1Click(Sender: TObject);
begin
      Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
      Cadastro_PlanoContas.Caption := Caption;
      Cadastro_PlanoContas.ShowModal;
end;

procedure TFinanceiro_Lista.HistoricosContabeis1Click(Sender: TObject);
begin
      Cadastro_HistoricoPadrao := TCadastro_HistoricoPadrao.Create(Self);
      Cadastro_HistoricoPadrao.Caption := Caption;
      Cadastro_HistoricoPadrao.ShowModal;
end;

procedure TFinanceiro_Lista.LanamentosContabeis1Click(Sender: TObject);
begin
      Contabilidade_Lancamentos := TContabilidade_Lancamentos.Create(Self);
      Contabilidade_Lancamentos.Caption := Caption;
      Contabilidade_Lancamentos.Showmodal;
end;

end.






