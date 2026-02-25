unit frmPedido_Outros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, RXCtrls, Vcl.ExtCtrls, Mask,
  DB, DBAccess, MSAccess, Funcoes, MaskUtils, Vcl.ComCtrls, ppParameter, ppBands, ppClass, ppMemo, raCodMod, ppReport, ppSubRpt, ppCtrls, ppPrnabl, ppDBPipe, CalcExpress, RxLookup, ClipBrd,
  RxDBComb, RXDBCtrl, jpeg, Grids, DBGrids, ppDesignLayer, ppModule, ppStrtch, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS, System.UITypes, Vcl.Buttons, math;

type
  TPedido_Outros = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bItens: TButton;
    bVisualizar: TButton;
    bDuplicatas: TButton;
    tPedido: TMSQuery;
    Transportadores: TMSQuery;
    TransportadoresCodigo: TIntegerField;
    TransportadoresNome: TStringField;
    TransportadoresTipo_Servico: TStringField;
    TransportadoresCNPJ: TStringField;
    dsTransportadores: TDataSource;
    plPedidos: TppDBPipeline;
    plItens: TppDBPipeline;
    plEmpresas: TppDBPipeline;
    ppNatureza: TppDBPipeline;
    tVisualizar: TMSQuery;
    dstVisualizar: TDataSource;
    tItensReferencia: TMSQuery;
    mMacro: TCalcExpress;
    Representantes: TMSQuery;
    dsRepresentantes: TDataSource;
    RepresentantesCodigo: TIntegerField;
    RepresentantesNome: TStringField;
    RepresentantesTipo_Servico: TStringField;
    RepresentantesCNPJ: TStringField;
    RepresentantesComissao: TFloatField;
    tSequencia: TMSQuery;
    DANFE_RetratoVis: TppReport;
    ppParameterList1: TppParameterList;
    cFormula: TMemo;
    bDuplicar: TButton;
    tItens: TMSQuery;
    tPedidosItens: TMSQuery;
    dstPedidosItens: TDataSource;
    bPesquisar: TButton;
    tAtraso: TMSQuery;
    Image1: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    cRich: TDBRichEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    lPercentual: TLabel;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    cNatureza: TDBLookupComboBox;
    lNome: TStaticText;
    cNome: TDBLookupComboBox;
    lTransportador: TStaticText;
    cTransportador: TDBLookupComboBox;
    StaticText11: TStaticText;
    cPedido: TDBEdit;
    cCodigoNatureza: TDBEdit;
    lDesconto: TStaticText;
    cDescPercent: TDBEdit;
    cDescontoTipo: TDBComboBox;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    cOperacaoVeiculo: TComboBox;
    StaticText12: TStaticText;
    cEspecie: TDBEdit;
    StaticText13: TStaticText;
    cVolumes: TDBEdit;
    StaticText16: TStaticText;
    DBEdit8: TDBEdit;
    StaticText14: TStaticText;
    DBEdit6: TDBEdit;
    StaticText15: TStaticText;
    DBEdit7: TDBEdit;
    StaticText17: TStaticText;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    StaticText3: TStaticText;
    cICMS: TDBEdit;
    StaticText4: TStaticText;
    DBEdit2: TDBEdit;
    StaticText18: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText19: TStaticText;
    DBEdit3: TDBEdit;
    StaticText51: TStaticText;
    cIncentivo: TRxDBLookupCombo;
    Button1: TButton;
    StaticText8: TStaticText;
    cFrete: TDBEdit;
    cModalidade: TRxDBComboBox;
    cTipoNota: TRxDBLookupCombo;
    StaticText20: TStaticText;
    DBEdit11: TDBEdit;
    cCodigoTipoNota: TDBEdit;
    cProcesso: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    cICMSAnterior: TCheckBox;
    StaticText21: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText22: TStaticText;
    DBEdit4: TDBEdit;
    StaticText23: TStaticText;
    cIndPresenca: TRxDBComboBox;
    RxDBComboBox1: TRxDBComboBox;
    StaticText24: TStaticText;
    DBCheckBox2: TDBCheckBox;
    StaticText25: TStaticText;
    DBEdit5: TDBEdit;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    cPgto: TRxDBComboBox;
    cFormaPgto: TDBLookupComboBox;
    StaticText28: TStaticText;
    cLote: TRxDBComboBox;
    cInfComplementares: TDBMemo;
    cInfComplementares2: TDBMemo;
    bEntRet: TButton;
    TabSheet3: TTabSheet;
    Grade: TDBGrid;
    tSoma: TMSQuery;
    StaticText10: TStaticText;
    cIndInter: TRxDBComboBox;
    GroupBox2: TGroupBox;
    Image5: TImage;
    Image17: TImage;
    Image9: TImage;
    Image3: TImage;
    Label2: TLabel;
    lBCICMSOper: TDBText;
    Image4: TImage;
    lValorICMSOper: TDBText;
    Label4: TLabel;
    Image6: TImage;
    Label3: TLabel;
    lBCICMSSub: TDBText;
    Label1: TLabel;
    lValorICMSSub: TDBText;
    Label5: TLabel;
    lTotalProd: TDBText;
    Image10: TImage;
    Label6: TLabel;
    lValorFrete: TDBText;
    Image11: TImage;
    Label9: TLabel;
    lValorSeguro: TDBText;
    Image12: TImage;
    Label11: TLabel;
    DBText1: TDBText;
    Image13: TImage;
    Image16: TImage;
    Label7: TLabel;
    DBText13: TDBText;
    Label8: TLabel;
    lValorIPI: TDBText;
    Label10: TLabel;
    lTotalNota: TDBText;
    Image8: TImage;
    Label23: TLabel;
    lValorII: TDBText;
    Image14: TImage;
    Label24: TLabel;
    DBText14: TDBText;
    Image7: TImage;
    Label25: TLabel;
    DBText15: TDBText;
    StaticText29: TStaticText;
    cDescricaoForma: TDBEdit;
    StaticText30: TStaticText;
    cIntermediador: TDBLookupComboBox;
    cRich2: TDBRichEdit;
    StaticText31: TStaticText;
    DBEdit12: TDBEdit;
    ppHeaderBand1: TppHeaderBand;
    ppShape58: TppShape;
    ppShape6: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppShape2: TppShape;
    lRazaoSocial: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    lSerie: TppLabel;
    ppLine1: TppLine;
    lQuadroEmpresa: TppShape;
    lEndereco: TppLabel;
    lBairroMunicipio: TppLabel;
    lCEP: TppLabel;
    lEmpresa: TppLabel;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppDBText2: TppDBText;
    lSerie2: TppLabel;
    lNumero_Folha: TppLabel;
    lNumero: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    lIE: TppDBText;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    ppShape11: TppShape;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppLabel74: TppLabel;
    ppLabel3: TppLabel;
    ppShape55: TppShape;
    ppLabel77: TppLabel;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppLabel76: TppLabel;
    ppDBText5: TppDBText;
    ppLabel79: TppLabel;
    ppShape60: TppShape;
    ppLabel85: TppLabel;
    ppDBText26: TppDBText;
    ppDBText37: TppDBText;
    lNatureza: TppLabel;
    ppDBText1: TppDBText;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText27: TppDBText;
    ppLine12: TppLine;
    ppDBText28: TppDBText;
    ppLine14: TppLine;
    pQuantidade: TppDBText;
    ppLine16: TppLine;
    ppDBText30: TppDBText;
    ppLine18: TppLine;
    ppDBText31: TppDBText;
    ppLine20: TppLine;
    ppDBText32: TppDBText;
    ppLine22: TppLine;
    ppDBText33: TppDBText;
    ppLine24: TppLine;
    ppDBText34: TppDBText;
    ppLine26: TppLine;
    ppDBText35: TppDBText;
    ppLine31: TppLine;
    ppDBText36: TppDBText;
    ppLine32: TppLine;
    ppDBText25: TppDBText;
    lItem_CST: TppLabel;
    ppLine7: TppLine;
    lItem_Descricao: TppDBMemo;
    lCodigo: TppDBText;
    ppLine10: TppLine;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLine30: TppLine;
    Rodape: TppFooterBand;
    ppLine27: TppLine;
    ppGroup1: TppGroup;
    gDadosNF: TppGroupHeaderBand;
    ppShape28: TppShape;
    ppShape59: TppShape;
    ppShape12: TppShape;
    ppShape25: TppShape;
    ppShape21: TppShape;
    ppShape17: TppShape;
    ppShape45: TppShape;
    ppShape40: TppShape;
    ppLabel13: TppLabel;
    ppShape13: TppShape;
    ppLabel14: TppLabel;
    lDestinatario_Nome: TppLabel;
    ppShape14: TppShape;
    ppLabel15: TppLabel;
    ppShape15: TppShape;
    ppLabel16: TppLabel;
    lData_Emissao: TppDBText;
    lDestinatario_CNPJ: TppLabel;
    ppShape16: TppShape;
    ppLabel100: TppLabel;
    lDestinatario_Rua: TppLabel;
    lDestinatario_Bairro: TppLabel;
    ppShape18: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppShape19: TppShape;
    ppLabel17: TppLabel;
    lData_EntradaSaida: TppDBText;
    ppShape20: TppShape;
    ppLabel18: TppLabel;
    lDestinatario_Municipio: TppLabel;
    ppLabel19: TppLabel;
    ppShape22: TppShape;
    ppLabel22: TppLabel;
    lDestinatario_UF: TppLabel;
    ppShape23: TppShape;
    ppLabel24: TppLabel;
    ppShape24: TppShape;
    ppLabel25: TppLabel;
    lHora_Saida: TppDBText;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel38: TppLabel;
    ppShape37: TppShape;
    ppLabel39: TppLabel;
    lTransportador_Nome: TppLabel;
    ppShape38: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppShape39: TppShape;
    ppDBText17: TppDBText;
    ppLabel43: TppLabel;
    ppShape41: TppShape;
    ppLabel44: TppLabel;
    ppShape42: TppShape;
    ppLabel46: TppLabel;
    ppShape43: TppShape;
    ppLabel45: TppLabel;
    ppShape44: TppShape;
    ppLabel47: TppLabel;
    lTransportador_Endereco: TppLabel;
    ppLabel49: TppLabel;
    lTransportador_Municipio: TppLabel;
    ppShape46: TppShape;
    ppLabel51: TppLabel;
    lTransportador_UF: TppLabel;
    ppShape47: TppShape;
    ppLabel52: TppLabel;
    lTransportador_CNPJ: TppLabel;
    lTransportador_IE: TppLabel;
    ppShape48: TppShape;
    ppLabel48: TppLabel;
    ppDBText18: TppDBText;
    ppShape49: TppShape;
    ppLabel50: TppLabel;
    ppDBText19: TppDBText;
    ppShape50: TppShape;
    ppLabel53: TppLabel;
    ppDBText20: TppDBText;
    ppShape51: TppShape;
    ppLabel54: TppLabel;
    ppDBText21: TppDBText;
    ppShape52: TppShape;
    ppLabel55: TppLabel;
    ppDBText22: TppDBText;
    ppShape53: TppShape;
    ppLabel56: TppLabel;
    ppDBText23: TppDBText;
    ppLabel12: TppLabel;
    ppLine33: TppLine;
    ppLabel75: TppLabel;
    ppLabel78: TppLabel;
    ppLine34: TppLine;
    lNumDupl1: TppLabel;
    lDataDupl1: TppLabel;
    lValorDupl1: TppLabel;
    ppLabel90: TppLabel;
    ppLine35: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLine36: TppLine;
    ppLabel96: TppLabel;
    ppLine37: TppLine;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine38: TppLine;
    lNumDupl2: TppLabel;
    lNumDupl3: TppLabel;
    lDataDupl2: TppLabel;
    lValorDupl2: TppLabel;
    lValorDupl3: TppLabel;
    lNumDupl4: TppLabel;
    lNumDupl5: TppLabel;
    lNumDupl6: TppLabel;
    lDataDupl4: TppLabel;
    lDataDupl5: TppLabel;
    lDataDupl6: TppLabel;
    lValorDupl4: TppLabel;
    lValorDupl5: TppLabel;
    lValorDupl6: TppLabel;
    lNumDupl7: TppLabel;
    lNumDupl8: TppLabel;
    lNumDupl9: TppLabel;
    lDataDupl7: TppLabel;
    lDataDupl8: TppLabel;
    lDataDupl9: TppLabel;
    lValorDupl7: TppLabel;
    lValorDupl8: TppLabel;
    lValorDupl9: TppLabel;
    lNumDupl10: TppLabel;
    lDataDupl10: TppLabel;
    lNumDupl11: TppLabel;
    lDataDupl11: TppLabel;
    lValorDupl11: TppLabel;
    lNumDupl12: TppLabel;
    lDataDupl12: TppLabel;
    lValorDupl12: TppLabel;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    lDestinatario_Telefone: TppLabel;
    lDestinatario_IE: TppLabel;
    lDestinatario_CEP: TppLabel;
    lValorDupl10: TppLabel;
    lDataDupl3: TppLabel;
    lNumDupl13: TppLabel;
    lNumDupl14: TppLabel;
    lNumDupl15: TppLabel;
    lDataDupl13: TppLabel;
    lDataDupl14: TppLabel;
    lDataDupl15: TppLabel;
    lValorDupl13: TppLabel;
    lValorDupl14: TppLabel;
    lValorDupl15: TppLabel;
    lNumDupl17: TppLabel;
    lNumDupl18: TppLabel;
    lNumDupl19: TppLabel;
    lNumDupl20: TppLabel;
    lNumDupl21: TppLabel;
    lNumDupl22: TppLabel;
    lNumDupl23: TppLabel;
    lDataDupl17: TppLabel;
    lDataDupl18: TppLabel;
    lDataDupl19: TppLabel;
    lDataDupl20: TppLabel;
    lDataDupl21: TppLabel;
    lDataDupl22: TppLabel;
    lDataDupl23: TppLabel;
    lValorDupl17: TppLabel;
    lValorDupl18: TppLabel;
    lValorDupl19: TppLabel;
    lValorDupl20: TppLabel;
    lValorDupl21: TppLabel;
    lValorDupl22: TppLabel;
    lValorDupl23: TppLabel;
    lNumDupl16: TppLabel;
    lDataDupl16: TppLabel;
    lValorDupl16: TppLabel;
    lNumDupl24: TppLabel;
    lDataDupl24: TppLabel;
    lValorDupl24: TppLabel;
    ppShape74: TppShape;
    lTituloEntrega_Retirada: TppLabel;
    ppShape75: TppShape;
    ppLabel103: TppLabel;
    lEntregaNome: TppLabel;
    ppShape76: TppShape;
    ppLabel105: TppLabel;
    ppShape77: TppShape;
    ppLabel106: TppLabel;
    lEntregaCNPJ: TppLabel;
    ppShape78: TppShape;
    ppLabel108: TppLabel;
    lEntregaRua: TppLabel;
    lEntregaBairro: TppLabel;
    ppShape79: TppShape;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppShape81: TppShape;
    ppLabel114: TppLabel;
    lEntregaMunicipio: TppLabel;
    ppShape82: TppShape;
    ppLabel117: TppLabel;
    lEntregaUF: TppLabel;
    ppShape84: TppShape;
    ppLabel120: TppLabel;
    lEntregaCEP: TppLabel;
    lEntregaIE: TppLabel;
    lEntregaTelefone: TppLabel;
    ppLabel57: TppLabel;
    ppShape54: TppShape;
    ppLabel58: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel59: TppLabel;
    ppLine4: TppLine;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine5: TppLine;
    ppLabel62: TppLabel;
    ppLine11: TppLine;
    ppLabel63: TppLabel;
    ppLine13: TppLine;
    ppLabel64: TppLabel;
    ppLine15: TppLine;
    ppLabel65: TppLabel;
    ppLine17: TppLine;
    ppLabel66: TppLabel;
    ppLine19: TppLine;
    ppLabel67: TppLabel;
    ppLine21: TppLine;
    ppLabel68: TppLabel;
    ppLine23: TppLine;
    ppLabel69: TppLabel;
    ppLine25: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLine29: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppShape31: TppShape;
    ppShape27: TppShape;
    ppShape26: TppShape;
    ppLabel28: TppLabel;
    ppLabel23: TppLabel;
    ppLabel29: TppLabel;
    ppDBText8: TppDBText;
    ppShape29: TppShape;
    ppLabel30: TppLabel;
    ppDBText9: TppDBText;
    ppShape30: TppShape;
    ppLabel31: TppLabel;
    ppDBText10: TppDBText;
    ppLabel32: TppLabel;
    ppDBText11: TppDBText;
    ppShape32: TppShape;
    ppLabel33: TppLabel;
    ppDBText12: TppDBText;
    ppShape33: TppShape;
    ppLabel34: TppLabel;
    ppDBText13: TppDBText;
    ppShape34: TppShape;
    pDescontos: TppDBText;
    ppLabel35: TppLabel;
    ppShape35: TppShape;
    ppDBText15: TppDBText;
    ppLabel36: TppLabel;
    ppShape36: TppShape;
    ppDBText16: TppDBText;
    ppLabel37: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape5: TppShape;
    ppLabel84: TppLabel;
    lII: TppDBText;
    ppShape68: TppShape;
    ppLabel93: TppLabel;
    ppDBText29: TppDBText;
    ppShape67: TppShape;
    ppLabel94: TppLabel;
    ppDBText41: TppDBText;
    ppShape69: TppShape;
    ppLabel95: TppLabel;
    ppShape70: TppShape;
    ppLabel99: TppLabel;
    ppDBText44: TppDBText;
    ppShape71: TppShape;
    ppLabel101: TppLabel;
    ppDBText45: TppDBText;
    ppShape72: TppShape;
    ppLabel102: TppLabel;
    ppDBText46: TppDBText;
    lHomologacao: TppLabel;
    cAFRMM: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppLabel7: TppLabel;
    ppShape80: TppShape;
    ppShape73: TppShape;
    ppShape83: TppShape;
    ppLabel104: TppLabel;
    ppShape85: TppShape;
    ppLabel107: TppLabel;
    ppShape86: TppShape;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel113: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppLabel115: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    raCodeModule2: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    tTemp: TMSQuery;
    bPesqCliFor: TSpeedButton;
    bPesqTrans: TSpeedButton;
    lArmazem: TStaticText;
    cArmazem: TDBLookupComboBox;
    Armazem: TMSQuery;
    dsArmazem: TDataSource;
    bPesqArm: TSpeedButton;
    titem: TMSQuery;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    Function  MontaComplemento(Texto: String; pCampo:integer):String;
    procedure bItensClick(Sender: TObject);
    procedure bVisualizarClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure bDuplicatasClick(Sender: TObject);
    procedure lNomeClick(Sender: TObject);
    procedure lTransportadorClick(Sender: TObject);
    procedure StaticText6Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cCodigoTipoNotaExit(Sender: TObject);
    procedure cTipoNotaExit(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure DANFE_RetratoVisBeforePrint(Sender: TObject);
    procedure cNomeExit(Sender: TObject);
    procedure bDuplicarClick(Sender: TObject);
    procedure cPedidoChange(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DuplicataDANFE(pParc:integer);
    procedure ZerarDupl;
    procedure cTransportadorExit(Sender: TObject);
    procedure bEntRetClick(Sender: TObject);
    procedure cProcessoClick(Sender: TObject);
    procedure cIndPresencaChange(Sender: TObject);
    procedure bPesqCliForClick(Sender: TObject);
    procedure bPesqTransClick(Sender: TObject);
    procedure bPesqArmClick(Sender: TObject);
    procedure lArmazemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mSai_Entra: Integer;
    mCFOP:string;
 end;

Const
   mSaiEntra  : array[0..1] of String = ('Entrada','Saída');

var
  Pedido_Outros: TPedido_Outros;

implementation

uses frmDados,frmMenu_Principal,frmDMFiscal,frmPedido_DadosVeiculo,frmJanela_Processamento,frmPedido_ItensOutros,frmPedido_NotaRefComplementar,
     frmDMContab,frmModalidadePgto_PedidoParcelas, frmCadastro_Fornecedores, frmCadastro_Clientes, frmCadastro_NaturezaOperacao, frmCadastro_ICMS,
     frmPedido_OutrosDuplicar, frmPedido_EndEntregaRetirada, frmPesquisaGerais;

{$R *.dfm}

procedure TPedido_Outros.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      PageControl1.ActivePageIndex := 0;
      cFormula.Hide;

      With Dados, dmFiscal do Begin
           Configuracao.SQL.Clear;
           Configuracao.SQL.Add('SELECT * FROM Configuracao');
           Configuracao.Open;

           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE (Saida_Entrada = :pSai_Entra) AND (ISNULL(Importacao, 0) <> 1) ORDER BY Numero');
           Pedidos.ParamByName('pSai_Entra').AsInteger := mSai_Entra;
           Pedidos.Open;

           bItens.Enabled             := Pedidos.RecordCount <> 0;
           bVisualizar.Enabled        := Pedidos.RecordCount <> 0;
           bDuplicatas.Enabled        := (Pedidos.RecordCount <> 0) and not ConfiguracaoBotao_Duplicata.AsBoolean;
           Navega.Controls[6].Enabled := Pedidos.RecordCount > 0;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) and (Codigo BETWEEN :pIni AND :pFim) ORDER BY Descricao_NF');
           If mSai_Entra = 0 then begin
              Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_EntradaIni.AsString;
              Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_EntradaFim.AsString;
           end else begin
              Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_SaidaIni.AsString;
              Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_SaidaFim.AsString;
           End;
           Natureza.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Ativo = 1) ORDER BY Nome');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;

           with Transportadores do begin
                sql.clear;
                sql.add('select * from Fornecedores');
                sql.add('where Ativo = 1');
                sql.add('and Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%TRANSP%'')');
                sql.add('order by Nome');
                open;
           end;
           with Armazem do begin
                sql.clear;
                sql.add('select Codigo');
                sql.Add('      ,Nome');
                sql.Add('      ,CNPJ');
                sql.Add('      ,Inscricao_Estadual');
                sql.Add('      ,Tipo_Servico');
                sql.Add('      ,Endereco = concat(Rua,'', Nº ''+Rua_Numero,'', '',Bairro,'' - '',Municipio,'' (''+Estado+'') - CEP: ''+substring(CEP,1,5)+''-''+substring(CEP,6,3))');
                sql.Add('from Fornecedores');
                sql.add('where Ativo = 1');
                sql.add('and Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%ARMAZ%'')');
                sql.add('order by Nome');
                open;
           end;

           Representantes.SQL.Clear;
           Representantes.SQL.Add('SELECT * FROM Fornecedores FR');
           Representantes.SQL.Add('WHERE  ISNULL(Ativo, 0) = 1');
           Representantes.SQL.Add('  AND  ISNULL((SELECT Comissionado FROM RamoAtividade RA WHERE RA.Codigo = FR.Ramo_Atividade), 0) = 1');
           Representantes.SQL.Add('ORDER BY Nome');
           Representantes.Open;

           Impostos.SQL.Clear;
           Impostos.SQL.Add('SELECT * FROM Impostos');
           Impostos.Open;

           ProcessosDOC.Close;
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Tipo, Processo');
           ProcessosDOC.Open;

           NCM.Open;
           Cotacao.Open;
           Incoterms.Open;
           TipoProduto.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           ModalidadesPgto.SQL.Clear;
           ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento');
           ModalidadesPgto.Open;

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE Desativado <> 1 ORDER BY Nome');
           Bancos.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
           CentroCusto.Open;

           ICMS.SQL.Clear;
           ICMS.SQL.Add('SELECT * FROM ICMS');
           ICMS.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE(Saida_Entrada = :pSai_Entra) AND (Ativo = 1) ORDER BY Descricao');
           TipoNota.ParamByName('pSai_Entra').AsInteger := mSai_Entra;
           TipoNota.Open;

           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados');
           Estados.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
           IncentivosFiscais.Open;

           FormaPgto.SQL.Clear;
           FormaPgto.SQL.Add('SELECT * FROM FormaPagamento ORDER BY Codigo');
           FormaPgto.Open;

           Intermediadores.SQL.Clear;
           Intermediadores.SQL.Add('SELECT * FROM Intermediadores ORDER BY Nome');
           Intermediadores.Open;
           
           with ControleNavios do begin 
                sql.Clear;
                sql.Add('select *');
                sql.Add('from  ControleNavios');
                sql.Add('where  Status <> ''ENCERRADO''');
                sql.Add('order  by Navio');
                open;
           end;

           tPedido.Close;
           tPedido.SQL.Clear;
           tPedido.SQL.Add('SELECT DISTINCT Lote FROM NotasFiscais WHERE Lote IS NOT NULL');
           tPedido.Open;
           tPedido.First;
           cLote.Items.Clear;
           while not tPedido.Eof do begin
                 cLote.Items.Add(tPedido.FieldByName('Lote').AsString);
                 tPedido.Next;
           end;
           tPedido.Close;

           ICMS.Locate('UF', EmpresasEstado.Value, [loCaseInsensitive]);
           Incoterms.Locate('Codigo', ProcessosDOCIncoterms.Value, [loCaseInsensitive]);

           if mSai_Entra = 0 then begin
              lNome.Caption    := 'Fornecedor';
              cNome.ListSource := dsFornecedores;
              cNome.DataField  := 'Fornecedor_Codigo';
              bEntRet.Visible  := false;
           end else begin
              lNome.Caption    := 'Cliente';
              cNome.ListSource := dsClientes;
              cNome.DataField  := 'Cliente_Codigo';
              if (Clientes.FieldByName('Endereco_Entrega').AsBoolean) or (Clientes.FieldByName('Endereco_Retirada').AsBoolean) then begin
                 if (Trim(Dados.ClientesRua_Entrega.AsString) = '') and (Trim(Dados.ClientesRua_Retirada.AsString) = '') then begin
                    bEntRet.Visible  := true;
                 end;   
              end;
           end;
      End;
      Screen.Cursor := crDefault;
end;

procedure TPedido_Outros.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra_Amarela.bmp') then begin
         Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'fundo_barra_Amarela.bmp');
      end;
      if FileExists('fundo_barra.bmp') then begin
         Image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'fundo_barra.bmp');
         Image4.Picture.Assign(Image3.Picture);
         Image5.Picture.Assign(Image3.Picture);
         Image6.Picture.Assign(Image3.Picture);
         Image7.Picture.Assign(Image3.Picture);
         Image8.Picture.Assign(Image3.Picture);
         Image9.Picture.Assign(Image3.Picture);
         Image10.Picture.Assign(Image3.Picture);
         Image11.Picture.Assign(Image3.Picture);
         Image12.Picture.Assign(Image3.Picture);
         Image13.Picture.Assign(Image3.Picture);
         Image14.Picture.Assign(Image3.Picture);
         Image16.Picture.Assign(Image3.Picture);
         Image17.Picture.Assign(Image3.Picture);
      end;
end;

procedure TPedido_Outros.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_Outros.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   mPedidos: WideString;
   mErro:integer;
begin
     With Dados, dmFiscal do begin
          If (TipoNotaGerar_Financeiro.AsBoolean = true) and (ConfiguracaoFaturamento_AvisoDuplicata.AsBoolean = true) then begin
             tPedido.SQL.Clear;
             tPedido.SQL.Add('SELECT Numero');
             tPedido.SQL.Add('FROM   Pedidos');
             tPedido.SQL.Add('WHERE  (SELECT Gerar_Financeiro FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 AND');
             tPedido.SQL.Add('       (SELECT COUNT(*) FROM PedidosFatura WHERE Pedido = Numero) = 0');
             tPedido.Open;
             While not tPedido.Eof do begin
                   mPedidos := mPedidos + ' '+tpedido.FieldByName('Numero').AsString;
                   tPedido.Next;
             End;

             If PedidosFatura.RecordCount = 0 then begin
                MessageDlg('Atenção!'+#13+#13+'Não foram geradas duplicatas para o(s) pedido(s) '+#13+#13+mPedidos, mtInformation, [MBOK], 0);
             End;
          End;

          // Verificando se os valores das duplicatas esta batendo com o total da nota fiscal.
          Pedidos.SQL.Clear;
          Pedidos.SQL.Add('SELECT *');
          Pedidos.SQL.Add('FROM   Pedidos PD');
          Pedidos.SQL.Add('WHERE Valor_TotalNota <> (SELECT Valor_Total FROM PedidosFatura WHERE Pedido = Numero)');
          Pedidos.Open;
          Pedidos.First;
          
          mErro    := 0;
          mPedidos := '';

          if Pedidos.RecordCount > 0 then begin
             while not Pedidos.Eof do begin
                   Inc(mErro);
                   mPedidos := mPedidos + PedidosNumero.AsString+ ', ';
                   Pedidos.Next;
             end;
          end;
          if mErro > 0 then begin
             if mErro = 1 then
                MessageDlg('Erro!'+#13+#13+ 'O Pedido '+mPedidos+#13+#13+'Esta com o "Valor total da Nota Fiscal" diferente do "Total das duplicatas" geradas anteriormente.', mtError, [mbOK], 0)
             else
                MessageDlg('Erro!'+#13+#13+ 'Os Pedidos '+mPedidos+#13+#13+'Estão com o "Valor total da Nota Fiscal" diferente do "Total das duplicatas" geradas anteriormente.', mtError, [mbOK], 0);
             bDuplicatas.Click;
             Abort;
          end;

          // Apaga Pedidos e Itens que tenha o numero = 0 causado por erros.
          PedidosItens.SQL.Clear;
          PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE (ISNULL(Pedido, 0) = 0)');
          PedidosItens.Execute;
          PedidosItens.SQL.Clear;
          PedidosItens.SQL.Add('SELECT * FROM PedidosItens');

          Pedidos.SQL.Clear;
          Pedidos.SQL.Add('DELETE FROM Pedidos WHERE (ISNULL(Numero, 0) = 0)');
          Pedidos.Execute;
          Pedidos.SQL.Clear;
          Pedidos.SQL.Add('SELECT * FROM Pedidos');
     End;

     FecharTabelas(Dados, dmFiscal, dmContab, nil);

     LimpaMemoria;

     Pedido_Outros.Release;
     Pedido_Outros := nil;
end;

procedure TPedido_Outros.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor  := crSQLWait;
      ActiveControl  := nil;
      bItens.Enabled := (Dados.Pedidos.RecordCount <> 0);

      If (Button = nbEdit) or (Button = nbInsert) then begin
         PageControl1.ActivePageIndex := 0;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         bItens.Enabled    := False;
         Panel2.Enabled    := True;
         TabSheet2.Enabled := true;
      End;
      If Button = nbInsert then begin
         //Dados.PedidosCalculo_Reverso.Value := Dados.ConfiguracaoCalculo_Reverso.asboolean and (Dados.TipoNotaOrigem_ValorUnitario.AsInteger <> 4);
         Dados.PedidosCalculo_Reverso.Value := Dados.ConfiguracaoCalculo_Reverso.asboolean;
         Dados.PedidosRatear_Despesa.Value  := false;
         cCodigoTipoNota.SetFocus;
      End;
      If Button = nbEdit then begin
         cLote.SetFocus;
         if (Dados.Clientes.FieldByName('Endereco_Entrega').AsBoolean) or (Dados.Clientes.FieldByName('Endereco_Retirada').AsBoolean) then begin
            bEntRet.Enabled := true;
            if (Trim(Dados.ClientesRua_Entrega.AsString) = '') and (Trim(Dados.ClientesRua_Retirada.AsString) = '') then begin
               bEntRet.Enabled := false;
            end;   
         end;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled    := False;
         TabSheet2.Enabled := false;
         bItens.Enabled    := true;
      End;

      bVisualizar.Enabled := (Dados.Pedidos.RecordCount <> 0) and (Button <> nbInsert) and (Button <> nbEdit);
      bDuplicatas.Enabled := (Dados.Pedidos.RecordCount <> 0) and (Button <> nbInsert) and (Button <> nbEdit) and not Dados.ConfiguracaoBotao_Duplicata.AsBoolean;
      bDuplicar.Enabled   := (Dados.Pedidos.RecordCount <> 0) and (Button <> nbInsert) and (Button <> nbEdit) and not Dados.ConfiguracaoBotao_Duplicata.AsBoolean;

      cOperacaoVeiculo.ItemIndex := -1;
      If Dados.PedidosOperacao_Veiculo.AsString <> '' then begin
         If Dados.PedidosOperacao_Veiculo.AsString <> '9' then
            cOperacaoVeiculo.ItemIndex := Dados.PedidosOperacao_Veiculo.AsInteger
         else
            cOperacaoVeiculo.ItemIndex := 4;
      End;

      if (Button = nbPost) and (titensReferencia.RecordCount > 0) then Begin
         bitens.Click;
      End;
      

      Navega.Controls[6].Enabled := Dados.Pedidos.RecordCount > 0;
      Screen.Cursor := crDefault;
end;

procedure TPedido_Outros.Button1Click(Sender: TObject);
begin
      Pedido_DadosVeiculo := TPedido_DadosVeiculo.Create(Self);
      Pedido_DadosVeiculo.caption := caption;
      Pedido_DadosVeiculo.ShowModal;
end;

procedure TPedido_Outros.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
var
   mErro:Boolean;
   mCredPres:string;
begin
     ActiveControl := nil;

     With Dados do begin
          If (Button = nbInsert) or (Button = nbEdit) then begin
             mCFOP := Dados.PedidosNatureza_Codigo.Value;
             tPedido.Close;
             tPedido.SQL.Clear;
             tPedido.SQL.Add('SELECT DISTINCT Lote FROM NotasFiscais WHERE Lote IS NOT NULL');
             tPedido.Open;
             tPedido.First;
             cLote.Items.Clear;
             while not tPedido.Eof do begin
                   cLote.Items.Add(tPedido.FieldByName('Lote').AsString);
                   tPedido.Next;
             end;
             tPedido.Close;
          end;
          If Button = nbPost then begin
             if Trim(cNome.Text) = '' then begin
                if PedidosSaida_Entrada.Value = 1 then begin
                   ShowMessage('Cliente é campo obrigatório!'+#13+#13+'Informe um cliente para salvar o pedido.');
                end else begin
                   ShowMessage('Fornecedor é campo obrigatório!'+#13+#13+'Informe um fornecedor para salvar o pedido.');
                end;
                cNome.SetFocus;
                Abort;
             End;

             // Verifica se CFOP esta correta.
             mErro := false;
             if mSai_Entra = 1 then begin
                if (ClientesEstado.Value = EmpresasEstado.Value) and (Copy(cCodigoNatureza.Text,1,1) <> '5') then begin
                   ShowMessage('Natureza da operação invalida!'+#13+'Cliente de dentro do próprio estado.');
                   mErro := true;
                end;
                if (ClientesEstado.Value <> EmpresasEstado.Value) and (ClientesEstado.Value <> 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '6') then begin
                   ShowMessage('Natureza da operação invalida!'+#13+'Cliente de fora do estado.');
                   mErro := true;
                end;
                if (ClientesEstado.Value <> EmpresasEstado.Value) and (ClientesEstado.Value = 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '7') then begin
                   ShowMessage('Natureza da operação invalida!'+#13+'Cliente do exterior (Estado = EX).');
                   mErro := true;
                end;
             end else begin
                if (FornecedoresEstado.Value = EmpresasEstado.Value) and (Copy(cCodigoNatureza.Text,1,1) <> '1') then begin
                   ShowMessage('Natureza da operação invalida!'+#13+'Fornecedor de dentro do próprio estado.');
                   mErro := true;
                end;
                if (FornecedoresEstado.Value <> EmpresasEstado.Value) and (FornecedoresEstado.Value <> 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '2') then begin
                   ShowMessage('Natureza da operação invalida!'+#13+'Fornecedor de fora do estado.');
                   mErro := true;
                end;
                if (FornecedoresEstado.Value <> EmpresasEstado.Value) and (FornecedoresEstado.Value = 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '3') then begin
                   ShowMessage('Natureza da operação invalida!'+#13+'Fornecedor do exterior (Estado = EX).');
                   mErro := true;
                end;
             end;
             if mErro then begin
                cCodigoNatureza.Setfocus;
                Abort;
             end;

             If Dados.Natureza.Locate('Codigo', cCodigoNatureza.Text, [loCaseInsensitive]) = false then begin
                MessageDlg('Erro!'+#13+#13+'Código de Natureza da Operação não "Cadastrado" ou "Desativado".', mtError, [mbOK], 0);
                If (Pedidos.State = dsInsert) or (Pedidos.State = dsEdit) then cCodigoNatureza.SetFocus;
             End;

             If cModalidade.ItemIndex = -1 then begin
                ShowMessage('Modalidade de frete é campo obrigatório!'+#13+#13+'Selecione uma modalidade para salvar o pedido.');
                cModalidade.SetFocus;
                Abort;
             End;
             if not TipoNotaComplementar.AsBoolean then begin
                if ((TipoNotaApuracao_PISCOFINS.AsBoolean = true)  and (NaturezaApuracao_PISCOFINS.AsBoolean = false)) or
                   ((TipoNotaApuracao_PISCOFINS.AsBoolean = false) and (NaturezaApuracao_PISCOFINS.AsBoolean = true )) then begin
                   ShowMessage('Divergencia na Opção de "PIS/COFINS" entre o "Tipo de Nota" e a "Natureza da Operação".'+#13+#13+'Se o "Tipo de Nota" apura PIS/COFINS a "Natureza da Operação" tambem deve apurar.');
                   cNatureza.SetFocus;
                   Abort;
                end;
             end;
             If (TipoNotaApuracao_PISCOFINS.AsBoolean) and (ConfiguracaoPIS_AliquotaBasica.AsFloat <= 0) then begin
                ShowMessage('Falta informar a aliquota basica do PIS nas configuraçoes do sistema.'+#13+#13+'Se o "Tipo de Nota" apura PIS/COFINS e obrigatorio informar a "Aliquota Basica do PIS".');
                cTipoNota.SetFocus;
                Abort;
             End;
             If (TipoNotaApuracao_PISCOFINS.AsBoolean) and (ConfiguracaoCOFINS_AliquotaBasica.AsFloat <= 0) then begin
                ShowMessage('Falta informar a aliquota basica da COFINS nas configuraçoes do sistema.'+#13+#13+'Se o "Tipo de Nota" apura PIS/COFINS e obrigatorio informar a "Aliquota Basica da COFINS".');
                cTipoNota.SetFocus;
                Abort;
             End;
             If (Trim(Dados.PedidosVolume_Especie.AsString) = '') and (Dados.PedidosVolume_Quantidade.Value <> 0) then begin
                ShowMessage('Falta informar a "ESPÉCIE" dos volumes.'+#13+#13+'Se a quantidade de volumes é maior que zero a espécie dos volumes deve ser informada.');
                cEspecie.SetFocus;
                Abort;
             End;
             If (Trim(Dados.PedidosVolume_Especie.AsString) <> '') and (Dados.PedidosVolume_Quantidade.Value <= 0) then begin
                ShowMessage('Falta informar a "QUANTIDADE" dos volumes.'+#13+#13+'A quantidade de volumes deve ser maior que zero se a espécie de volumes for informada.');
                cVolumes.SetFocus;
                Abort;
             End;
             If Trim(cIndPresenca.Text) = '' then begin
                ShowMessage('Indicador de Presença do Comprador é campo obrigatório!'+#13+#13+'Selecione um Indicador de Presença do Comprador para salvar o pedido.');
                cIndPresenca.SetFocus;
                Abort;
             End;
             If Dados.PedidosSaida_Entrada.Value = 0 then begin
                If Trim(Dados.FornecedoresIndicador_IE.Value) = '' then begin
                   ShowMessage('"Indicador de Inscrição Estadual" do Fornecedor não informado no cadastro de Fornecedores.');
                   cNome.SetFocus;
                   Abort;
                End;
             End;
             If Dados.PedidosSaida_Entrada.Value = 1 then begin
                If Trim(Dados.ClientesIndicador_IE.Value) = '' then begin
                   ShowMessage('"Indicador de Inscrição Estadual" do Cliente não informado no cadastro de Clientes.');
                   cNome.SetFocus;
                   Abort;
                End;
             End;
             If Trim(cTipoNota.Text) = '' then begin
                ShowMessage('"Tipo de Nota" não cadastrado ou desativado.');
                cTipoNota.SetFocus;
                Abort;
             End;
             if Trim(cPgto.Text) = '' then begin
                ShowMessage('"Tipo de Pagamento" não informado.');
                cPgto.SetFocus;
                Abort;
             end;
             if Trim(cFormaPgto.Text) = '' then begin
                ShowMessage('"Forma de Pagamento" não informado.');
                cFormaPgto.SetFocus;
                Abort;
             end;
             if Trim(cIncentivo.Text) = '' then begin
                MessageDlg('Erro!'+#13+#13+'Incentivo Fiscal não informado.', mtError, [mbOK], 0);
                cIncentivo.SetFocus;
                Abort;
             end;

             // Verifica o Intermediador.
             if PedidosIndicador_Presenca.AsInteger in[2, 3, 4] then begin
                if PedidosIntermediador.AsInteger = 0 then begin
                   MessageDlg('Erro!'+#13+#13+'Intermediador é obrigatório para indicador de presença = 2, 3 e 4 !', mtError, [mbOK], 0);
                   cIntermediador.SetFocus;
                   Abort;
                end;
             end;

             // Verifica a descrição da forma de pagamento.
             if (PedidosForma_Pagamento.AsInteger = 99) and (PedidosDescricao_Forma.AsString = '') then begin
                ShowMessage('"Descrição da Forma de Pagamento" é obrigatório para "99 Outros".');
                cDescricaoForma.SetFocus;
                Abort;
             end;

             // Caso esteja selecionado em configurações, bloqueia o cliente em caso de atraso de pagamento.
             If ConfiguracaoFaturamento_BloquearAtraso.AsBoolean = true then begin
                tAtraso.SQL.Clear;
                tAtraso.SQL.Add('SELECT COUNT(*) AS Atraso');
                tAtraso.SQL.Add('FROM   PagarReceber PR');
                tAtraso.SQL.Add('WHERE  Cliente = :pCliente');
                tAtraso.SQL.Add('  AND  DATEDIFF(Day, Data_Vencimento, GETDATE()) > (SELECT Atraso_Maximo FROM Clientes WHERE Codigo = Cliente)');
                tAtraso.SQL.Add('  AND  ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero), 2),0) < ROUND(Valor_Total, 2)');
                tAtraso.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
                tAtraso.Open;

                If tAtraso.FieldByName('Atraso').AsInteger > 0 then begin
                   MessageDlg('Atenção!'+#13+#13+'Constam pagamentos em atraso para o cliente informado.'+#13+#13+'Não é possível emitir notas para este cliente.', mtInformation, [mbOK], 0);
                   cNome.SetFocus;
                   Abort;
                End;
             End;
             // Bloqueia o faturamento caso o estado não esteja cadastrado na tabela de ICMS.
             If not ICMS.Locate('UF', ClientesEstado.Value, [loCaseInsensitive]) then begin
                Estados.Locate('Codigo', ClientesEstado.Value, [loCaseInsensitive]);
                MessageDlg('Erro!'+#13+#13+'Estado do Cliente '+ EstadosNome.AsString+' ('+ClientesEstado.AsString+') não cadastrado na tabela de ICMS.', mtError, [mbOK], 0);
                cNome.SetFocus;
                Abort;
             End;
             // Verifica se a alíquota interna do estado destino esta cadastrada para o DIFAL.
             if EmpresasRegime_Apuracao.AsInteger = 3 then begin
               if ClientesConsumidor_Final.AsBoolean then begin
                   if ClientesEstado.AsString <> EmpresasEstado.AsString then begin
                      if ICMSICMS_Interno.Value <= 0 then begin
                         MessageDlg('Erro!'+#13+#13+ 'Para consumidor final de fora do estado é necessário informar a alíquota de ''ICMS Interna'' do Estado destino na tabela de ICMS.',mtError, [mbOK], 0);
                         Abort;
                      end;
                   end;
                end;
             end;
             // Verifica se o cliente informado é uma das filias para pedidos de transferência.
             if TipoNotaTransferencia.AsBoolean then begin
                // Verifica se o CNPJ do Destinatário igual Emissor. 
                if ClientesCNPJ.AsString = Empresas.FieldByName('CNPJ').AsString then begin
                   MessageDlg('Atenção!'+#13+#13+'CNPJ inválido para Pedido de transferência.'+#13+#13+'Não é possível emitir notas de transferência para a própria empresa.', mtInformation, [mbOK], 0);
                   cNome.SetFocus;
                   Abort;
                end;
                
                // Verifica se o CNPJ do Destinatario é de uma filial. 
                tAtraso.SQL.Clear;
                tAtraso.SQL.Add('SELECT COUNT(*) AS Empresas');
                tAtraso.SQL.Add('FROM   Cybersoft_Cadastros.dbo.Empresas');
                tAtraso.SQL.Add('WHERE  CNPJ LIKE '+QuotedStr(Copy(ClientesCNPJ.AsString, 1, 8)+'%'));
                tAtraso.Open;

                if tAtraso.FieldByName('Empresas').AsInteger = 0 then begin
                   MessageDlg('Atenção!'+#13+#13+'CNPJ inválido para Pedido de transferência.'+#13+#13+'CNPJ do destinatário não compatível com o da empresa atual.', mtInformation, [mbOK], 0);
                   cNome.SetFocus;
                   Abort;
                end;
             end;
             // Verifica se o tipo de nota obriga o transportador.
             if (TipoNotaTransportador.asboolean) and (PedidosTransportador_Codigo.AsInteger = 0) then begin
                with tSoma do begin
                     sql.clear;
                     sql.add('select count(Codigo_Mercadoria) as qtde');
                     sql.add('from PedidosItens');
                     sql.add('where Pedido =  :pPedido');
                     sql.add('and (select Detalhe_Especifico from Produtos where Codigo = Codigo_Mercadoria) = ''C'' ');
                     parambyname('pPedido').asinteger := PedidosNumero.AsInteger;
                     open;
                end;
                if tSoma.fieldbyname('qtde').AsInteger > 0 then begin
                   MessageDlg('Erro!'+#13+#13+'Para vendas de combustivel o transportador e obrigatório!', mtError, [mbOK], 0);
                   cTransportador.SetFocus;
                   Abort;
                end;
             end;

             // Verifica se o cliente informado tem mais de um endereço cadastrado Entrega/Retirada.
             if (Trim(ClientesRua_Entrega.AsString) <> '') and (Trim(ClientesRua_Retirada.AsString) <> '') then begin
                if Trim(PedidosEntrega_Retirada.AsString) = '' then begin
                   Pedido_EndEntregaRetirada         := TPedido_EndEntregaRetirada.Create(Self);
                   Pedido_EndEntregaRetirada.Caption := 'PEDIDOS - ENDEREÇO DE ENTREGA / RETIRADA';
                   Pedido_EndEntregaRetirada.ShowModal;
                end;
             end;
             
             Screen.Cursor := crSQLWait;
             // Em caso de novo pedido gera o numero do pedido.
             If mSai_Entra = 0 then begin
                PedidosEstado.Value := FornecedoresEstado.Value;

                If Trim(Dados.FornecedoresCNPJ.Value) <> '' then begin
                   PedidosDestinatario_CNPJ_CPF.Value := FornecedoresCNPJ.Value;
                   PedidosDestinatario_Juridica.Value := true;
                end else begin
                   PedidosDestinatario_CNPJ_CPF.Value := FornecedoresCPF.Value;
                   PedidosDestinatario_Juridica.Value := false;
                End;

                PedidosDestinatario_Nome.Value          := FornecedoresNome.Value;
                PedidosDestinatario_Rua.Value           := FornecedoresRua.Value;
                PedidosDestinatario_RuaNumero.Value     := FornecedoresRua_Numero.Value;
                PedidosDestinatario_Complemento.Value   := FornecedoresComplemento.Value;
                PedidosDestinatario_Bairro.Value        := FornecedoresBairro.Value;
                PedidosDestinatario_Municipio.Value     := FornecedoresMunicipio_Codigo.Value;
                PedidosDestinatario_MunicipioNome.Value := AnsiUpperCase(FornecedoresMunicipio.Value);
                PedidosDestinatario_Estado.Value        := FornecedoresEstado.Value;
                PedidosDestinatario_CEP.Value           := FornecedoresCEP.Value;
                PedidosDestinatario_Pais.Value          := FornecedoresPais.Value;
                PedidosDestinatario_Telefone1.Value     := FornecedoresTelefone1.Value;

                If FornecedoresIsento.AsBoolean = false then
                   PedidosDestinatario_IE.Value := FornecedoresInscricao_Estadual.Value
                else
                   PedidosDestinatario_IE.Value := 'ISENTO';
             end else begin
                PedidosEstado.Value := ClientesEstado.Value;

                If Trim(Dados.ClientesCNPJ.Value) <> '' then begin
                   PedidosDestinatario_CNPJ_CPF.Value := ClientesCNPJ.Value;
                   PedidosDestinatario_Juridica.Value := true;
                end else begin
                   PedidosDestinatario_CNPJ_CPF.Value := ClientesCPF.Value;
                   PedidosDestinatario_Juridica.Value := false;
                End;

                PedidosDestinatario_Nome.Value          := ClientesNome.Value;
                PedidosDestinatario_Rua.Value           := ClientesRua.Value;
                PedidosDestinatario_RuaNumero.Value     := ClientesRua_Numero.Value;
                PedidosDestinatario_Complemento.Value   := ClientesComplemento.Value;
                PedidosDestinatario_Bairro.Value        := ClientesBairro.Value;
                PedidosDestinatario_Municipio.Value     := ClientesMunicipio_Codigo.Value;
                PedidosDestinatario_MunicipioNome.Value := AnsiUpperCase(ClientesMunicipio.Value);
                PedidosDestinatario_Estado.Value        := ClientesEstado.Value;
                PedidosDestinatario_CEP.Value           := ClientesCEP.Value;
                PedidosDestinatario_Pais.Value          := ClientesPais.Value;
                PedidosDestinatario_Telefone1.Value     := ClientesTelefone1.Value;
                If ClientesIsento.AsBoolean = false then
                   PedidosDestinatario_IE.Value := ClientesInscricao_Estadual.Value
                else
                   PedidosDestinatario_IE.Value := 'ISENTO';
             End;

             ICMS.Locate('UF', PedidosDestinatario_Estado.Value, [loCaseInsensitive]);

             PedidosSaida_Entrada.Value        := TipoNotaSaida_Entrada.Value;
             PedidosData_Emissao.Value         := Date;
             PedidosAjuste.Value               := TipoNotaNFE_Estorno.AsBoolean;
             PedidosImportacao.Value           := False;
             PedidosApuracao_PISCOFINS.Value   := NaturezaApuracao_PISCOFINS.Value;
             PedidosComplementar.Value         := TipoNotaComplementar.Value;
             PedidosBaixa_Estoque.Value        := TipoNotaBaixa_Estoque.Value;
             PedidosDevolucao.Value            := TipoNotaFinalidade_Mercadoria.AsInteger = 2;
             PedidosMovimenta_Inventario.Value := TipoNotaMovimenta_Inventario.Value;
             PedidosICMS_Destacar.Value        := TipoNotaICMS_Destacar.Value;
             PedidosInscricao_Substituto.Value := ICMSInscricao.Value;
             PedidosRemessa.Value              := TipoNotaRemessa.Value;

             // Dados do armazem.
             if PedidosArmazem.AsInteger <> 0 then begin
                PedidosArmazem_Nome.Value     := Armazem.FieldByName('Nome').asstring;
                PedidosArmazem_CNPJ.Value     := Armazem.FieldByName('CNPJ').asstring;
                PedidosArmazem_IE.Value       := Armazem.FieldByName('Inscricao_Estadual').asstring;
                PedidosArmazem_Endereco.Value := Armazem.FieldByName('Endereco').asstring;
             end;

             if Pedidos.State = dsInsert then begin
                PedidosAliquota_FCP.Value   := ICMSFCP.Value;
                PedidosAliquota_FCPST.Value := ICMSFCP.Value;
             end;

             If Trim(cOperacaoVeiculo.Text) <> '' then
                PedidosOperacao_Veiculo.Value := Copy(cOperacaoVeiculo.Text,1,1)
             else
                PedidosOperacao_Veiculo.Clear;

             If Trim(cIndInter.Text) = '' then
                PedidosIndicador_Intermediario.clear;

             If Pedidos.State = dsInsert then begin
                tPedido.SQL.Clear;
                tPedido.SQL.Add('SELECT MAX(Numero) AS Numero FROM Pedidos');
                tPedido.Open;
                PedidosNumero.Value := tPedido.FieldByName('Numero').AsInteger + 1;
                tPedido.Close;

                PedidosPedido_Nota.Value := EmpresasPedido_Nota.AsInteger + 1;
                Empresas.Edit;
                         EmpresasPedido_Nota.Value := (EmpresasPedido_Nota.value + 1);
                Empresas.Post;

                // Pegando os itens da nota de referência.
                tItensReferencia.SQL.Clear;
                tItensReferencia.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData)');
                tItensReferencia.ParamByName('pNota').AsInteger := PedidosNota_Referencia.AsInteger;
                tItensReferencia.ParamByName('pData').AsDate    := PedidosData_Referencia.AsDateTime;
                tItensReferencia.Open;

                PedidosItens.SQL.Clear;
                PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido)');
                PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                PedidosItens.Open;

                Janela_Processamento                    := TJanela_Processamento.Create(Self);
                Janela_Processamento.Progresso.Max      := tItensReferencia.RecordCount;
                Janela_Processamento.Progresso.Position := 0;
                Janela_Processamento.lProcesso.Caption  := 'Buscando os itens da nota de referência...';
                Janela_Processamento.Show;

                PedidosItens.DisableControls;
                tItensReferencia.First;
                While not tItensReferencia.Eof do begin
                      PedidosItens.Append;
                                   PedidosItensPedido.Value                := PedidosNumero.AsInteger;
                                   PedidosItensItem.Value                  := tItensReferencia.FieldByName('Item').AsInteger;
                                   PedidosItensSequencia_SISCOMEX.Value    := tItensReferencia.FieldByName('Sequencia_SISCOMEX').AsInteger;
                                   PedidosItensCodigo_Mercadoria.Value     := tItensReferencia.FieldByName('Codigo_Mercadoria').AsInteger;
                                   PedidosItensCodigo_Fabricante.Value     := tItensReferencia.FieldByName('Codigo_Fabricante').Value;
                                   PedidosItensDescricao_Mercadoria.Value  := tItensReferencia.FieldByName('Descricao_Mercadoria').Value;
                                   PedidosItensNCM.Value                   := tItensReferencia.FieldByName('NCM').AsString;
                                   PedidosItensEXTIPI.Value                := tItensReferencia.FieldByName('EXTIPI').AsInteger;
                                   PedidosItensUnidade_Medida.Value        := tItensReferencia.FieldByName('Unidade_Medida').AsString;
                                   PedidosItensCodigoTrib_TabA.Value       := tItensReferencia.FieldByName('CodigoTrib_TabA').Value;
                                   PedidosItensCodigoTrib_TabB.Value       := tItensReferencia.FieldByName('CodigoTrib_TabB').Value;
                                   PedidosItensCSTIPI.Value                := tItensReferencia.FieldByName('CSTIPI').Value;
                                   PedidosItensCSTPIS.Value                := tItensReferencia.FieldByName('CSTPIS').Value;
                                   PedidosItensCSTCOFINS.Value             := tItensReferencia.FieldByName('CSTCOFINS').Value;
                                   PedidosItensAdicao.Value                := tItensReferencia.FieldByName('Adicao').Value;
                                   PedidosItensQuantidade.Value            := tItensReferencia.FieldByName('Quantidade').Value;
                                   PedidosItensValor_Unitario.Value        := tItensReferencia.FieldByName('Valor_Unitario').Value;
                                   PedidosItensValor_Total.Value           := tItensReferencia.FieldByName('Valor_Unitario').Value * tItensReferencia.FieldByName('Quantidade').Value;
                                   PedidosItensValor_BCIPI.Value           := tItensReferencia.FieldByName('Valor_BCIPI').Value;
                                   PedidosItensAliquota_IPI.Value          := tItensReferencia.FieldByName('Aliquota_IPI').Value;
                                   PedidosItensValor_IPI.Value             := tItensReferencia.FieldByName('Valor_IPI').Value;
                                   PedidosItensTotal_IPI.Value             := tItensReferencia.FieldByName('Total_IPI').Value;
                                   PedidosItensAliquota_II.Value           := tItensReferencia.FieldByName('Aliquota_II').Value;
                                   PedidosItensValor_II.Value              := tItensReferencia.FieldByName('Valor_II').Value;
                                   PedidosItensValor_BCII.Value            := tItensReferencia.FieldByName('Valor_BCII').Value;
                                   PedidosItensAliquota_ICMSOper.Value     := tItensReferencia.FieldByName('Aliquota_ICMSOper').asfloat;
                                   PedidosItensValor_BCICMSOper.Value      := 0;
                                   PedidosItensValor_ICMSOper.Value        := 0;
                                   PedidosItensValor_BCICMSSub.Value       := 0;
                                   PedidosItensAliquota_ICMSSub.Value      := 0;
                                   PedidosItensValor_ICMSSub.Value         := 0;
                                   PedidosItensAliquota_MVA.Value          := 0;
                                   PedidosItensValor_MVA.Value             := 0;
                                   PedidosItensAliquota_ICMSReducao.Value  := 0;
                                   PedidosItensValor_ICMSReducao.Value     := 0;
                                   PedidosItensAliquota_PIS.Value          := tItensReferencia.FieldByName('Aliquota_PIS').AsFloat;
                                   PedidosItensAliquota_PISRed.Value       := tItensReferencia.FieldByName('Aliquota_PISRed').AsFloat;
                                   PedidosItensValor_PIS.Value             := tItensReferencia.FieldByName('Valor_PIS').AsFloat;
                                   PedidosItensAliquota_COFINS.Value       := tItensReferencia.FieldByName('Aliquota_COFINS').AsFloat;
                                   PedidosItensAliquota_COFINSRed.Value    := tItensReferencia.FieldByName('Aliquota_COFINSRed').AsFloat;
                                   PedidosItensValor_COFINS.Value          := tItensReferencia.FieldByName('Valor_COFINS').AsFloat;
                                   PedidosItensValor_Frete.Value           := 0;
                                   PedidosItensValor_Seguro.Value          := 0;
                                   PedidosItensValor_Despesa.Value         := 0;
                                   PedidosItensPeso_Liquido.Value          := tItensReferencia.FieldByName('Peso_Liquido').AsFloat;
                                   PedidosItensPeso_Bruto.Value            := tItensReferencia.FieldByName('Peso_Bruto').AsFloat;
                                   PedidosItensMovimenta_Inventario.Value  := TipoNotaMovimenta_Inventario.AsBoolean;
                                   PedidosItensMovimenta_Estoque.Value     := TipoNotaMovimenta_Estoque.AsBoolean;
                                   PedidosItensMovimenta_EstoqueRep.Value  := TipoNotaMovimenta_EstoqueRep.AsBoolean;
                                   PedidosItensModalidade_BCICMS.Value     := tItensReferencia.FieldByName('Modalidade_BCICMS').AsInteger;
                                   PedidosItensModalidade_BCICMSST.Value   := tItensReferencia.FieldByName('Modalidade_BCICMSST').AsInteger;
                                   PedidosItensVeiculo.Value               := tItensReferencia.FieldByName('Veiculo').AsBoolean;
                                   PedidosItensSaida_Entrada.Value         := PedidosSaida_Entrada.AsInteger;
                                   PedidosItensProcesso.Value              := tItensReferencia.FieldByName('Processo').AsString;
                                   PedidosItensDI.Value                    := tItensReferencia.FieldByName('DI').AsString;
                                   PedidosItensValor_IsentasICMS.Value     := 0;
                                   PedidosItensValor_OutrasICMS.Value      := 0;
                                   PedidosItensValor_IsentasIPI.Value      := 0;
                                   PedidosItensValor_OutrasIPI.Value       := 0;
                                   PedidosItensLucro.Value                 := 0;
                                   PedidosItensLucro_Valor.Value           := 0;
                                   PedidosItensRateio_ICMSProcesso.Value   := 0;
                                   PedidosItensNota_Terceiros.Value        := 0;
                                   PedidosItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.AsInteger;
                                   PedidosItensRegistro_Adicao.Value       := tItensReferencia.FieldByName('Registro_Adicao').AsInteger;
                                   PedidosItensTipo_Nota.Value             := PedidosTipo_Nota.AsInteger;
                                   PedidosItensNota_Referencia.Value       := PedidosNFe_cNFRef.Value;
                                   PedidosItensData_Referencia.Value       := PedidosData_Referencia.AsDateTime;
                                   PedidosItensNumero_Referencia.Value     := PedidosNota_Referencia.AsInteger;

                                   If tItensReferencia.FieldByName('Sequencia').AsInteger > 0 then begin
                                      PedidosItensSequencia.Value := tItensReferencia.FieldByName('Sequencia').Value;
                                   end else begin
                                      tSequencia.SQL.Clear;
                                      tSequencia.SQL.Add('SELECT ISNULL(MAX(Sequencia), 0) AS Sequencia FROM PedidosItens WHERE(Pedido = :pPedido)');
                                      tSequencia.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                                      tSequencia.Open;
                                      PedidosItensSequencia.Value := tSequencia.FieldByName('Sequencia').AsInteger + 1;
                                      tSequencia.Close;
                                   End;
                                   PedidosItensCEST.Value                   := tItensReferencia.FieldByName('CEST').AsString;
                                   PedidosItensNatureza_Codigo.Value        := tItensReferencia.FieldByName('Natureza_Codigo').AsString;
                                   PedidosItensOrdem.Value                  := tItensReferencia.FieldByName('Ordem').asinteger;
                                   PedidosItensPO.Value                     := tItensReferencia.FieldByName('PO').AsString;
                                   PedidosItensCodigo_CredPres.Value        := tItensReferencia.FieldByName('Codigo_CredPres').asstring;
                                   PedidosItensBeneficio_Fiscal.Value       := tItensReferencia.FieldByName('Beneficio_Fiscal').asstring;
                                   PedidosItensValor_BCICMSPresumido.Value  := tItensReferencia.FieldByName('Valor_BCICMSPresumido').Value;
                                   PedidosItensAliquota_ICMSPresumido.Value := tItensReferencia.FieldByName('Aliquota_ICMSPresumido').Value;
                                   PedidosItensValor_ICMSPresumido.Value    := tItensReferencia.FieldByName('Valor_ICMSPresumido').Value;

                                   PedidosItensAliquota_CBS.Value := tItensReferencia.FieldByName('Aliquota_CBS').asfloat;
                                   PedidosItensValor_BCCBS.Value  := tItensReferencia.FieldByName('Valor_BCCBS').ascurrency;
                                   PedidosItensValor_CBS.Value    := tItensReferencia.FieldByName('Valor_CBS').ascurrency;
                                   PedidosItensAliquota_IBS.Value := tItensReferencia.FieldByName('Aliquota_IBS').asfloat;
                                   PedidosItensValor_BCIBS.Value  := tItensReferencia.FieldByName('Valor_BCIBS').ascurrency;
                                   PedidosItensValor_IBS.Value    := tItensReferencia.FieldByName('Valor_IBS').ascurrency;
                                   PedidosItensAliquota_IS.Value  := tItensReferencia.FieldByName('Aliquota_IS').asfloat;
                                   PedidosItensValor_BCIS.Value   := tItensReferencia.FieldByName('Valor_BCIS').ascurrency;
                                   PedidosItensValor_IS.Value     := tItensReferencia.FieldByName('Valor_IS').ascurrency;
                                   PedidosItensCSTCBS.Value       := tItensReferencia.FieldByName('CSTCBS').asstring;
                                   PedidosItensCSTIBS.Value       := tItensReferencia.FieldByName('CSTIBS').asstring;
                      PedidosItens.Post;
                      tItensReferencia.Next;

                      Janela_Processamento.Progresso.Position  := Janela_Processamento.Progresso.Position +1;
                      Application.ProcessMessages;
                end;

                PedidosItens.EnableControls;
                Janela_Processamento.Close;
                PedidosItens.EnableControls;

                tItens.SQL.Clear;
                tItens.SQL.Add('SELECT COUNT(*) AS Itens FROM PedidosItens WHERE(Pedido = :pPedido)');
                tItens.ParamByName('pPedido').AsInteger := Dados.PedidosNumero.AsInteger;
                tItens.Open;
                bItens.Caption := '&Itens ['+PoeZero(4, tItens.FieldbyName('Itens').AsInteger)+']';
             End;
             If (Pedidos.State = dsEdit) and (mCFOP <> cCodigoNatureza.Text) then begin
                tItens.SQL.Clear;
                tItens.SQL.Add('UPDATE PedidosItens SET Natureza_Codigo = :pCFOP WHERE Pedido = :pPedido AND Natureza_Codigo = :pCFOPAntes');
                tItens.ParamByName('pCFOP').AsString      := Dados.PedidosNatureza_Codigo.Value;
                tItens.ParamByName('pCFOPAntes').AsString := mCFOP;
                tItens.ParamByName('ppedido').AsInteger   := Dados.PedidosNumero.AsInteger;
                tItens.Execute;
                tItens.SQL.Clear;
             end;

             // Pegando o valor do "AFRMM - Marinha Mercante" no financeiro.
             if (PedidosSaida_Entrada.asInteger = 0) and (Trim(PedidosProcesso.AsString) <> '') then begin
                if ProcessosDOCVia_Transporte.AsInteger = 1 then begin
                   tSoma.SQL.Clear;
                   tSoma.SQL.Add('SELECT Valor_Operacao = SUM(Valor_Operacao)');
                   tSoma.SQL.Add('FROM   PagarReceber');
                   tSoma.SQL.Add('WHERE  Processo = :pProcesso');
                   tSoma.SQL.Add('AND    Classificacao = (SELECT Classificacao_AFRMM FROM TiposProcesso WHERE Codigo = :pModal)');
                   tSoma.ParamByName('pProcesso').AsString := PedidosProcesso.AsString;
                   tSoma.ParamByName('pModal').AsInteger   := ProcessosDOCModalidade_Importacao.asInteger;
                   tSoma.Open;
                   PedidosValor_AFRMM.Value := tSoma.FieldByName('Valor_Operacao').AsCurrency;
                end;
             end;
             
             PedidosIncentivo_Codigo.Value := IncentivosFiscaisCodigo.Value;

             // Log de operações do sistema.
             LogDados(Dados.Pedidos, '('+Dados.PedidosNumero.AsString+') '+mSaiEntra[Dados.PedidosSaida_Entrada.AsInteger]+ ' [Outras], de '+Dados.PedidosData_Emissao.AsString+' Processo nº '+Dados.PedidosProcesso.AsString, Dados.Pedidos.State);
          End;

          If (Button = nbDelete) then begin
             If MessageDlg('Deseja realmente excluir este pedido?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                Screen.Cursor := crSQLWait;
                With Dados, dmFiscal do Begin
                     // Ajusta o campo Lancado_Pedidos do cadastro de produtos.
                     with Produtos do begin
                          SQL.Clear;
                          SQL.Add('select * from produtos where(codigo in(select codigo_mercadoria from pedidositens where(pedido = :ppedido)))');
                          ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                          Open;
                     end;
                     with tTemp do begin
                          SQL.Clear;
                          SQL.Add('delete from pedidositens where (pedido = :ppedido)');
                          ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                          Execute;
                     end;
                     // Apagando os Lotes/Seriais adicionados no pedido.
                     with tTemp do begin
                          SQL.Clear;
                          SQL.Add('delete from pedidositensdetalhe where (pedido = :ppedido)');
                          ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                          Execute;
                     end;
                     // Apagando as duplicatas do pedido.
                     with tTemp do begin
                          SQL.Clear;
                          SQL.Add('delete from pedidosfatura where (pedido = :ppedido) and (origem_pedido = 1)');
                          ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                          Execute;
                     end;
                     with tTemp do begin
                          SQL.Clear;
                          SQL.Add('DELETE FROM PedidosDuplicata WHERE (Pedido = :pPedido)');
                          ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                          Execute;
                     end;
                     // Disponibiliza o pedido do representante.
                     with tTemp do begin
                          // Reajusta o Total do Pedido pai, caso haja.
                          sql.clear;
                          sql.add('update PedidosRepresentantes set Total_Pedido = Total_Pedido + (select sum(Quantidade * Valor_Unitario) from PedidosRepresentantesItens where Pedido = :pPed)');
                          sql.add('                                ,Local = 3');
                          sql.add('where Pedido = (select Pedido_Pai2 from PedidosRepresentantes where Pedido = :pPed)');
                          ParamByName('pPed').AsString := PedidosPedido_Representante.AsString;
                          execute;
                          // Reajusta a quantidade do Pedido pai, caso haja.
                          sql.clear;
                          sql.add('update PedidosRepresentantesItens set Quantidade = Quantidade + (select Quantidade from PedidosRepresentantesItens pri where pri.Pedido = :pPed and pri.Codigo_Mercadoria = Codigo_Mercadoria)');
                          sql.add('where Pedido = (select Pedido_Pai2 from PedidosRepresentantes where Pedido = :pPed)');
                          ParamByName('pPed').AsString := PedidosPedido_Representante.AsString;
                          execute;
                          // Deleta os pedidos do representante.
                          sql.Clear;
                          sql.Add('delete from PedidosRepresentantes      where Pedido = :pPed and isnull(Pedido_Pai2, '''') <> '''' ');
                          sql.Add('delete from PedidosRepresentantesItens where Pedido = :pPed and isnull(Pedido_Pai2, '''') <> '''' ');
                          ParamByName('pPed').AsString := PedidosPedido_Representante.AsString;
                          execute;
                          sql.Clear;
                          sql.Add('update PedidosRepresentantes set Faturado = 0');
                          sql.Add('                                ,Situacao = ''SEPARADO'' ');
                          sql.Add('                                ,Gerar_Pedido = 0');
                          sql.Add('                                ,Faturamento = 0');
                          sql.Add('                                ,Local = 3');
                          sql.Add('where Pedido = :pPedido');
                          ParamByName('pPedido').AsString := PedidosPedido_Representante.AsString;
                          execute;
                          sql.Clear;
                          sql.Add('SELECT * FROM PedidosRepresentantes WHERE Pedido = :pPedido');
                          ParamByName('pPedido').AsString := PedidosPedido_Representante.AsString;
                     end;
                     with tTemp do begin
                          sql.Clear;
                          sql.Add('update PedidosRepresentantesItens set Faturamento = 0 where Pedido = :pPedido');
                          ParamByName('pPedido').AsString := PedidosPedido_Representante.AsString;
                          execute;
                     end;
                     with tTemp do begin
                          SQL.Clear;
                          SQL.Add('delete from PedidositensNavios where pedido = :pPedido');
                          ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                          Execute;
                     end;
                     with tTemp do begin
                          SQL.Clear;
                          SQL.Add('delete from PedidositensNaviosRemessa where pedido = :pPedido');
                          ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                          Execute;
                     end;
                     with tTemp do begin
                          SQL.Clear;
                          SQL.Add('update produtosseriais set pedido = null, disponivel = 1 where (pedido = :ppedido)');
                          ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                          Execute;
                     end;
                     with tTemp do begin
                          SQL.Clear;
                          SQL.Add('delete from lotenotas where pedido = :ppedido and lote = '+quotedstr(pedidoslote.asstring));
                          ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                          Execute;
                     end;
                End;
                Screen.Cursor := crDefault;
             end else begin
                Abort;
             End;
          End;
     End;
     
     Screen.Cursor := crDefault;
end;

Function TPedido_Outros.MontaComplemento(Texto: String; pCampo:integer):String;
Var
   mTexto,
   mBusca,
   mTroca,
   mCampo,
   mTabela: String;
   mAchou: Boolean;
begin
       Screen.Cursor := crAppStart;
       if pCampo = 1 then mTexto := cRich.Text;
       if pCampo = 2 then mTexto := cRich2.Text;
       ActiveControl := nil;

       With Dados, dmFiscal, dmContab do Begin
            Tab_Origem.DisableControls;
            Tab_Origem.FetchAll := not Tab_Origem.FetchAll;

            Campos.DisableControls;
            Campos.SQL.Clear;
            Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, pCampo)+') ORDER BY Tabela');
            //campos.sql.SaveToFile('c:\temp\Campos.sql');
            Campos.Open;

            // Varre toda a tabela de campos para montar o campo de informações complementares.
            Campos.First;
            While not Campos.Eof do begin
                  If CamposTabela.Value <> '' then begin
                     Tab_Origem.Close;
                     If UpperCase(CamposBanco_Dados.Value) = 'CYBERSOFT' then
                        Tab_Origem.Connection := Banco_Empresas;
                     If UpperCase(CamposBanco_Dados.Value) = 'CADASTROS' then
                        Tab_Origem.Connection := Banco;
                     If UpperCase(CamposBanco_Dados.Value) = 'CONTABILIDADE' then
                        Tab_Origem.Connection := Banco_Contabilidade;
                     Tab_Origem.TableName := CamposTabela.Value;
                     Tab_Origem.Open;

                     mTabela := CamposTabela.Value;
                     mAchou  := false;

                     While (CamposTabela.Value = mTabela) and (not Campos.Eof) do begin
                           if (Trim(CamposComando_SQL.Value) <> '') and (CamposTipo.AsString <> 'Lista') then Begin
                              Tab_Origem.Close;
                              Tab_Origem.SQL.Clear;
                              if Trim(CamposTabela_LookUpOrigem.AsString) = '' then begin
                                 Tab_Origem.SQL.Add('SELECT * FROM '+CamposTabela.Value+' '+CamposComando_SQL.AsString);
                                 If Pos('pProcesso', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
                                 If Pos('pCliente', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pCliente').AsString := ClientesCodigo.AsString;
                                 If Pos('pArmazem', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pArmazem').Asinteger := PedidosArmazem.asinteger;
                                 If Pos('pPedido', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                                 If Pos('pLocalDesembaraco', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pLocalDesembaraco').AsString := ProcessosDOCLocal_DesembaracoCodigo.AsString;
                                 if Pos('pItemPedido', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pItemPedido').Asinteger := PedidosNumero.AsInteger;
                                 Tab_Origem.Open;

                                 if (trim(CamposPesquisa.Value) <> '') and (trim(CamposCampo_Chave.Value) <> '') then
                                    mAchou := Tab_Origem.Locate(CamposCampo_Chave.Value, CamposPesquisa.Value, [loCaseInsensitive])
                                 else
                                    mAchou := true;
                              end else begin
                                 Tab_Origem.SQL.Add('SELECT * FROM '+CamposTabela.AsString+' '+CamposComando_SQL.AsString);
                                 If UpperCase(CamposTabela_LookUpOrigem.AsString) = 'PROCESSOSDOCUMENTOS' then
                                    Tab_Origem.ParamByName('pCodigo').AsString := ProcessosDOC.FieldByName(CamposCampo_LookUpPesquisa.AsString).AsString;

                                 Tab_Origem.Open;

                                 If UpperCase(CamposTabela_LookUpOrigem.AsString) = 'PROCESSOSDOCUMENTOS' then
                                    mAChou := Tab_Origem.Locate(CamposCampo_LookUpChave.Value, ProcessosDOC.FieldBYName(CamposCampo_LookUpPesquisa.VAlue).Value, [loCaseInsensitive]);
                              end;
                           end else begin
                              mAchou := true;
                           end;
                           mBusca := CamposCampo.Value;
                           If Trim(CamposPesquisa.Value) <> '' then Begin
                              mCampo := Copy(mBusca, Pos('[',mBusca)+1, Pos(']',mBusca) - (Pos('[',mBusca)+1) );
                           end else begin
                              If Trim(CamposCampo_Chave.Value) = '' then begin
                                 mCampo := Copy(mBusca, Pos('[',mBusca)+1, Pos(']',mBusca) - (Pos('[',mBusca)+1) );
                              end else
                                 mCampo := CamposCampo_Chave.Value;
                           End;

                           if (UpperCase(CamposTipo.Value) = 'CURRENCY') or (UpperCase(CamposTipo.Value) = 'FLOAT') then begin
                              if Length(Trim(CamposMascara.Value)) <> 0 then begin
                                 if mAchou then
                                    mTroca := FormatFloat(CamposMascara.Value, Tab_Origem.FieldByName(mCampo).AsCurrency)
                                 else
                                    mTroca := FormatFloat(CamposMascara.Value, 0.00 );

                                 mTroca := PadR(mTroca, Length(CamposMascara.Value)-4);
                                 mTexto := RemoveCaracter( mBusca, mTroca, mTexto );
                              end else begin
                                 mTroca := Tab_Origem.FieldByName(mCampo).AsString;
                                 mTexto := RemoveCaracter( mBusca, mTroca, mTexto );
                              end;
                           end else begin
                              if CamposTipo.AsString <> 'Lista' then begin
                                 mTroca := Tab_Origem.FieldByName(mCampo).AsString;
                                 if Length(Trim(CamposMascara.Value)) <> 0 then
                                    mTexto := RemoveCaracter( mBusca, FormatMaskText(CamposMascara.Value,mTroca), mTexto )
                                 else
                                    mTexto := RemoveCaracter( mBusca, mTroca, mTexto )
                              end else begin
                                 mTroca := '';
                                 Tab_Origem.SQL.clear;
                                 Tab_Origem.SQL.Add(CamposComando_SQL.AsString);
                                 if Pos(':pProcesso', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
                                 if Pos(':pPedido', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                                 Tab_Origem.Open;
                                 Tab_Origem.First;

                                 while not Tab_Origem.eof do begin
                                       if Trim(CamposMascara.AsString) <> '' then
                                          mTroca := mTroca + FormatMaskText(CamposMascara.AsString, Tab_Origem.FieldByName(mCampo).AsString) + ', '
                                       else
                                          mTroca := mTroca + Tab_Origem.FieldByName(mCampo).AsString + ', ';
                                       Tab_Origem.next;
                                 end;
                                 mTroca := Copy(mTroca, 1, Length(mTroca)-2);
                                 mTexto := RemoveCaracter(mBusca, mTroca, mTexto);
                              end;
                           end;

                           Campos.Next;
                     end;
                  end;
            end;

            //Janela_Processamento.Close;
            Campos.EnableControls;
            Tab_Origem.EnableControls;
            Tab_Origem.FetchAll := not Tab_Origem.FetchAll;

            if PedidosDIFAL_Valor.Value > 0 then begin
               if length(trim(mtexto)) > 0 then mTexto := mTexto + CHR(13);
               mTexto := mTexto           + 'DIFAL ICMS RECOLHIDO ESTADO ORIGEM : '+PadR(FormatFloat('##0%', 100 - ConfiguracaoDIFAL_ICMSPart.AsFloat), 4) + '  '+PadR(FormatFloat(',##0.00', PedidosDIFAL_ValorOrig.AsFloat), 12);
               mTexto := mTexto + CHR(13) + 'DIFAL ICMS RECOLHIDO ESTADO DESTINO: '+PadR(FormatFloat('##0%', ConfiguracaoDIFAL_ICMSPart.AsFloat)      , 4) + '  '+PadR(FormatFloat(',##0.00', PedidosDIFAL_ValorDest.AsFloat), 12);
            end;
            if PedidosValor_FCP.Value > 0 then begin
               mTexto := mTexto + CHR(13) + 'FCP RECOLHIDO ESTADO DESTINO       : '+PadR(FormatFloat('##0%', ICMSFCP.AsFloat), 4)+'  '+PadR(FormatFloat(',##0.00', PedidosValor_FCP.AsFloat), 12);
            end;
            if PedidosValor_FCPST.Value > 0 then begin
               mTexto := mTexto + CHR(13) + 'FCP ST RECOLHIDO ESTADO DESTINO    : '+PadR(FormatFloat('##0%', ICMSFCP.AsFloat), 4)+'  '+PadR(FormatFloat(',##0.00', PedidosValor_FCPST.AsFloat), 12);
            end;
       end;

       Screen.Cursor := crDefault;

       Result := mTexto;
End;

procedure TPedido_Outros.bItensClick(Sender: TObject);
begin
     Pedido_ItensOutros := TPedido_ItensOutros.Create(Self);
     Pedido_ItensOutros.Caption := Caption;
     Pedido_ItensOutros.ShowModal;
     
     // Verifica o limite de compra do cliente.
     Screen.Cursor := crSQLWait;
     with Dados do begin
          if (ClientesLimite_Credito.Value > 0) and (TipoNotaGerar_Financeiro.AsBoolean = true) then begin
             if (PedidosValor_TotalNota.Value+ClientesLimite_Utilizado.Value) > ClientesLimite_Credito.Value then begin
                MessageDlg('Atenção!'+#13+#13+'Este pedido esta passando o limite do cliente em R$ '+FormatFloat('###,###,###,##0.00;0', PedidosValor_TotalNota.Value+ClientesLimite_Utilizado.Value-ClientesLimite_Credito.Value), mtInformation, [mbOK], 0);
             end;
          end;

          // Gera as informaçãoes complementares.
          Pedidos.Edit;
                  PedidosInf_Complementares.Clear;
                  PedidosInf_Complementares.Value := MontaComplemento(TipoNotaInf_Complementares.Value, 1);
                  if trim(TipoNotaInf_Complementares2.asstring) <> '' then begin
                     PedidosInf_Complementares2.Clear;
                     PedidosInf_Complementares2.Value := MontaComplemento(TipoNotaInf_Complementares2.Value, 2);
                  end;
          Pedidos.Post;

          tItens.SQL.Clear;
          tItens.SQL.Add('SELECT COUNT(*) AS Itens FROM PedidosItens WHERE(Pedido = :pPedido)');
          tItens.ParamByName('pPedido').AsInteger := Dados.PedidosNumero.AsInteger;
          tItens.Open;
          bItens.Caption := '&Itens ['+PoeZero(4, tItens.FieldbyName('Itens').AsInteger)+']';

          ProcessosDOC.Close;
          ProcessosDOC.SQL.Clear;
          ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Tipo, Processo');
          ProcessosDOC.Open;
     end;
     cFormula.Show;
     cFormula.Hide;
     Screen.Cursor := crDefault;
end;

procedure TPedido_Outros.bVisualizarClick(Sender: TObject);
begin
      with tVisualizar do begin
           sql.Clear;
           sql.Add('select *');
           sql.add('      ,Inf_Compl = concat(Inf_Complementares, Inf_Complementares2)');
           sql.add('from Pedidos');
           sql.add('where Numero = :pPedido');
           parambyname('pPedido').AsInteger := Dados.PedidosNumero.Value;
           open;
      end;

      cAFRMM.Visible := Dados.TipoNotaVisiveis_AFRMM.AsBoolean;
      DANFE_RetratoVis.Reset;
      DANFE_RetratoVis.Print;
      DANFE_RetratoVis.FreeOnRelease;
      DANFE_RetratoVis.CloseDataPipelines;
end;

procedure TPedido_Outros.ppHeaderBand1BeforePrint(Sender: TObject);
Var
    mParcela : Integer;
begin
      With Dados, dmFiscal do Begin
           tPedidosItens.SQL.Clear;
           tPedidosItens.SQL.Add('SELECT Pedido,');
           tPedidosItens.SQL.Add('       Codigo_Mercadoria,');
           tPedidosItens.SQL.Add('       Codigo_Fabricante,');
           {
           tPedidosItens.SQL.Add('       CASE WHEN (Total_Impostos > 0) AND (Valor_Total > 0) THEN');
           tPedidosItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))+ CHAR(13)+CHAR(13)+''                              TRIBUTOS : R$ ''+ CONVERT(VARCHAR, CAST(Total_Impostos AS money),-1) +');
           tPedidosItens.SQL.Add('                 ''  (''+CONVERT(VARCHAR, CAST( ROUND((Total_Impostos/Valor_Total)*100,2) AS money),-1)+''%)''+CASE WHEN PO <> '''' THEN CHAR(13)+''PEDIDO DE COMPRA:''+PO+''     ORDEM:''+CAST(ISNULL(Ordem, '''') AS VARCHAR(4)) ELSE '''' END');
           tPedidosItens.SQL.Add('       ELSE');
           tPedidosItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))+CASE WHEN PO <> '''' THEN CHAR(13)+''PEDIDO DE COMPRA:''+PO+''     ORDEM:''+CAST(ISNULL(Ordem, '''') AS VARCHAR(4)) ELSE '''' END');
           tPedidosItens.SQL.Add('       END AS Descricao_Mercadoria,');
           }
           tPedidosItens.SQL.Add('       CASE WHEN (Total_Impostos > 0) AND (Valor_Total > 0) THEN');
           tPedidosItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))+ CHAR(13)+CHAR(13)+''                              TRIBUTOS : R$ ''+ CONVERT(VARCHAR, CAST(Total_Impostos AS money),-1) +');
           tPedidosItens.SQL.Add('                 ''  (''+CONVERT(VARCHAR, CAST( ROUND((Total_Impostos/Valor_Total)*100,2) AS money),-1)+''%)'' ');
           tPedidosItens.SQL.Add('       ELSE');
           tPedidosItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))');
           tPedidosItens.SQL.Add('       END AS Descricao_Mercadoria,');
           
           tPedidosItens.SQL.Add('       NCM,');
           tPedidosItens.SQL.Add('       Unidade_Medida,');
           tPedidosItens.SQL.Add('       CodigoTrib_TabA,');
           tPedidosItens.SQL.Add('       CodigoTrib_TabB,');
           tPedidosItens.SQL.Add('       CSTIPI,');
           tPedidosItens.SQL.Add('       CSTPIS,');
           tPedidosItens.SQL.Add('       CSTCOFINS,');
           tPedidosItens.SQL.Add('       Quantidade,');
           tPedidosItens.SQL.Add('       Valor_Unitario,');
           tPedidosItens.SQL.Add('       Valor_Total,');
           tPedidosItens.SQL.Add('       Aliquota_IPI,');
           tPedidosItens.SQL.Add('       Valor_IPI,');
           tPedidosItens.SQL.Add('       Total_IPI,');
           tPedidosItens.SQL.Add('       Aliquota_ICMSOper,');
           tPedidosItens.SQL.Add('       Valor_BCICMSOper,');
           tPedidosItens.SQL.Add('       Valor_ICMSOper,');
           tPedidosItens.SQL.Add('       Valor_BCICMSSub,');
           tPedidosItens.SQL.Add('       Aliquota_ICMSSub,');
           tPedidosItens.SQL.Add('       Valor_ICMSSub,');
           tPedidosItens.SQL.Add('       Aliquota_PIS,');
           tPedidosItens.SQL.Add('       Valor_PIS,');
           tPedidosItens.SQL.Add('       Aliquota_COFINS,');
           tPedidosItens.SQL.Add('       Valor_COFINS,');
           tPedidosItens.SQL.Add('       Total_Item,');
           tPedidosItens.SQL.Add('       Total_Impostos,');
           tPedidosItens.SQL.Add('       Natureza_Codigo');
           tPedidosItens.SQL.Add('FROM   PedidosItens');
           tPedidosItens.SQL.Add('WHERE  Pedido = :pPedido');
           tPedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           //tPedidosItens.SQL.SaveToFile('c:\temp\Pedidositens_Impressao.sql');
           tPedidosItens.Open;
           
           PedidosFatura.SQL.Clear;
           PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE (Pedido = :pPedido) AND (Origem_Pedido = 1)');
           PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosFatura.Open;

           PedidosDuplicata.SQL.Clear;
           PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Fatura = :pFatura) ORDER BY CAST(Duplicata AS int)');
           PedidosDuplicata.ParamByName('pFatura').AsInteger := PedidosFaturaPedido.Value;
           PedidosDuplicata.Open;
           
           {
           with PedidosFatura do begin
                sql.Clear;
                sql.Add('select * from PedidosFatura where Pedido = :pPedido and Data_Emissao = :pData and Cliente = :pCliente and Origem_Pedido = 1');
                parambyname('pPedido').AsInteger  := PedidosNumero.AsInteger;
                parambyname('pData').value        := PedidosData_Emissao.value;
                parambyname('pCliente').AsInteger := PedidosCliente_Codigo.AsInteger;
                open;
           end;
           with PedidosDuplicata do begin 
                sql.Clear;
                sql.Add('select * from PedidosDuplicata where Fatura = :pFatura and Data_Emissao = :pData order by cast(Duplicata as int)');
                parambyname('pFatura').AsInteger := PedidosFaturaPedido.Value;
                parambyname('pData').value       := PedidosData_Emissao.Value;
                open;
           end;
           }
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

           Natureza.Open;
           Natureza.Locate('Codigo', PedidosNatureza_Codigo.Value, [loCaseInsensitive]);

           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

           Clientes.Open;
           Clientes.Locate('Codigo', PedidosCliente_Codigo.Value, [loCaseInsensitive]);

           Fornecedores.Open;
           Fornecedores.Locate('Codigo', PedidosFornecedor_Codigo.Value, [loCaseInsensitive]);

           // Campos do cebeçalho visiveis apenas na primeira pagina.
           gDadosNF.Visible := DANFE_RetratoVis.PageNo = 1;

           lRazaoSocial.Caption     := 'RECEBEMOS DE '+Trim(EmpresasRazao_Social.Value)+' OS PRODUTOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO.';
           lEmpresa.Caption         := Trim(EmpresasRazao_Social.Value);
           lEndereco.Caption        := Trim(EmpresasRua.Value) + ',Nº '+Trim(EmpresasRua_Numero.AsString)+', '+Trim(EmpresasComplemento.AsString);
           lBairroMunicipio.Caption := Trim(EmpresasBairro.Value)+', '+Trim(MunicipiosNome.Value)+' ('+Trim(EmpresasEstado.Value)+')   '+'CEP:'+FormatMaskText('#####-###;0',EmpresasCEP.Value);
           lCEP.Caption             := 'TEL:'+FormatMaskText('(##) #########;0', EmpresasTelefone1.Value)+'  FAX:'+FormatMaskText('(##) #########;0',EmpresasFAX.Value);
           lNumero.Caption          := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, PedidosNumero.AsInteger) );
           lNumero_Folha.Caption    := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, PedidosNumero.AsInteger) )+' FL'+InttoStr(DANFE_RetratoVis.PageNo)+'/'+InttoStr(DANFE_RetratoVis.PageCount);
           lNatureza.Caption        := TipoNotaDescricao_CFOP_Nota.AsString;

           If Trim(lNatureza.Caption) = '' then lNatureza.Caption := NaturezaDescricao_NF.AsString;

           If PedidosSaida_Entrada.Value = 0 then begin
              lSerie.Caption  := 'Série: '+PoeZero(3,EmpresasNFEletronica_SerieEntrada.AsInteger);
              lSerie2.Caption := 'Série: '+PoeZero(3,EmpresasNFEletronica_SerieEntrada.AsInteger);
           end else begin
              lSerie.Caption  := 'Série: '+PoeZero(3,EmpresasNFEletronica_Serie.AsInteger);
              lSerie2.Caption := 'Série: '+PoeZero(3,EmpresasNFEletronica_Serie.AsInteger);
           End;

           // Dados do Destinatario.
           lDestinatario_Nome.Caption      := Trim(PedidosDestinatario_Nome.Value);
           lDestinatario_Rua.Caption       := Trim(PedidosDestinatario_Rua.Value)+', Nº '+Trim(PedidosDestinatario_RuaNumero.Value)+', '+Trim(PedidosDestinatario_Complemento.AsString);
           lDestinatario_Bairro.Caption    := Trim(PedidosDestinatario_Bairro.AsString);
           lDestinatario_CEP.Caption       := FormatMaskText('#####-###;0', PedidosDestinatario_CEP.Value);
           lDestinatario_Municipio.Caption := Trim(PedidosDestinatario_MunicipioNome.AsString);
           lDestinatario_Telefone.Caption  := iif(Trim(PedidosDestinatario_Telefone1.AsString) <> '', FormatMaskText('(##) #########;0', PedidosDestinatario_Telefone1.Value), '');
           lDestinatario_UF.Caption        := Trim(PedidosDestinatario_Estado.Value);
           lDestinatario_IE.Caption        := Trim(PedidosDestinatario_IE.Value);

           If PedidosDestinatario_Juridica.AsBoolean = true then
              lDestinatario_CNPJ.Caption := FormatMaskText('##.###.###/####-##;0', PedidosDestinatario_CNPJ_CPF.Value)
           else
              lDestinatario_CNPJ.Caption := FormatMaskText('###.###.###-##;0', PedidosDestinatario_CNPJ_CPF.Value);

           lDestinatario_IE.Caption := Trim(PedidosDestinatario_IE.Value);

           // Endereço de entrega / Retirada.
           lTituloEntrega_Retirada.Caption := 'INFORMAÇÕES DO LOCAL DE ENTREGA/RETIRADA';
           lEntregaNome.Caption            := '';
           lEntregaCNPJ.Caption            := '';
           lEntregaIE.Caption              := '';
           lEntregaRua.Caption             := '';
           lEntregaBairro.Caption          := '';
           lEntregaCEP.Caption             := '';
           lEntregaMunicipio.Caption       := '';
           lEntregaUF.Caption              := '';
           lEntregaTelefone.Caption        := '';

           if PedidosEntrega_Retirada.AsString = 'E' then begin
              lTituloEntrega_Retirada.Caption := 'INFORMAÇÕES DO LOCAL DE ENTREGA';
              lEntregaNome.Caption      := Trim(ClientesRecebedor_Entrega.Value);
              if Trim(ClientesCNPJ_Entrega.Value) <> '' then
                 lEntregaCNPJ.Caption := FormatMaskText('##.###.###/####-##;0',ClientesCNPJ_Entrega.Value)
              else
                 lEntregaCNPJ.Caption := FormatMaskText('###.###.###-##;0',ClientesCPF_Entrega.Value);
              lEntregaIE.Caption        := Trim(ClientesIE_Entrega.Value);
              lEntregaRua.Caption       := Trim(ClientesRua_Entrega.Value)+', Nº '+Trim(ClientesRua_EntregaNumero.Value)+', '+Trim(ClientesRua_ComplEntrega.AsString);
              lEntregaBairro.Caption    := Trim(ClientesBairro_Entrega.AsString);
              lEntregaCEP.Caption       := FormatMaskText('#####-###;0', ClientesCEP_Entrega.Value);
              lEntregaMunicipio.Caption := AnsiUpperCase(Trim(ClientesMunicipio_EntregaNome.AsString));
              lEntregaUF.Caption        := Trim(ClientesEstado_Entrega.Value);
              lEntregaTelefone.Caption  := iif(Trim(ClientesTelefone_Entrega.AsString) <> '', FormatMaskText('(##) #########;0', ClientesTelefone_Entrega.Value), '');
           end;
           if PedidosEntrega_Retirada.AsString = 'R' then begin
              Municipios.Locate('Codigo', ClientesMunicipio_Retirada.Value, [loCaseInsensitive]);

              lTituloEntrega_Retirada.Caption := 'INFORMAÇÕES DO LOCAL DE RETIRADA';
              lEntregaNome.Caption      := Trim(ClientesExpedidor_Retirada.Value);
              if Trim(ClientesCNPJ_Retirada.Value) <> '' then
                 lEntregaCNPJ.Caption := FormatMaskText('##.###.###/####-##;0',ClientesCNPJ_Retirada.Value)
              else
                 lEntregaCNPJ.Caption := FormatMaskText('###.###.###-##;0',ClientesCPF_Retirada.Value);

              lEntregaIE.Caption        := Trim(ClientesIE_Retirada.Value);
              lEntregaRua.Caption       := Trim(ClientesRua_Retirada.Value)+', Nº '+Trim(ClientesRua_NumeroRetirada.Value)+', '+Trim(ClientesRua_ComplRetirada.AsString);
              lEntregaBairro.Caption    := Trim(ClientesBairro_Retirada.AsString);
              lEntregaCEP.Caption       := FormatMaskText('#####-###;0', ClientesCEP_Retirada.Value);
              lEntregaMunicipio.Caption := AnsiUpperCase(Trim(MunicipiosNome.AsString));
              lEntregaUF.Caption        := Trim(ClientesEstado_Retirada.Value);
              lEntregaTelefone.Caption  := iif(Trim(ClientesTelefone_Retirada.AsString) <> '', FormatMaskText('(##) #########;0', ClientesTelefone_Retirada.Value), '');
           end;

           // Zera os valores do labels.
           ZerarDupl;
           
           // Dados da Fatura / Duplicata.
           if PedidosFatura.RecordCount <> 0 then begin
              PedidosDuplicata.First;
              mParcela := 1;

              while not PedidosDuplicata.Eof do begin
                    if mParcela < 25 then DuplicataDANFE(mParcela);
                    PedidosDuplicata.Next;
                    Inc(mParcela);
              end;
           end;

           // Dados do Transportador.
           lTransportador_CNPJ.Caption      := '';
           lTransportador_Nome.Caption      := '';
           lTransportador_Endereco.Caption  := '';
           lTransportador_Municipio.Caption := '';
           lTransportador_UF.Caption        := '';
           lTransportador_IE.Caption        := '';

           If PedidosTransportador_Codigo.Value <> 0 then begin
              Fornecedores.Locate('Codigo', PedidosTransportador_Codigo.Value, [loCaseInsensitive]);
              If Trim(FornecedoresCNPJ.Value) <> '' then
                 lTransportador_CNPJ.Caption := FormatMaskText('##.###.###/####-##;0', FornecedoresCNPJ.Value)
              else
                 lTransportador_CNPJ.Caption := FormatMaskText('###.###.###-##;0', FornecedoresCPF.Value);

              lTransportador_Nome.Caption      := Trim(FornecedoresNome.Value);
              lTransportador_Endereco.Caption  := Trim(FornecedoresRua.Value) + ',Nº '+Trim(FornecedoresRua_Numero.AsString)+', '+Trim(FornecedoresBairro.Value);
              lTransportador_Municipio.Caption := Trim(FornecedoresMunicipio.Value);
              lTransportador_UF.Caption        := Trim(FornecedoresEstado.Value);
              Estados.Locate('Codigo', FornecedoresEstado.Value, [loCaseInsensitive]);
              lTransportador_IE.Caption        := FormatMaskText(EstadosMascara_Inscricao.Value, FornecedoresInscricao_Estadual.Value);
           End;

           Rodape.PrintOnLastPage := DANFE_RetratoVis.PageCount = 1;
           Rodape.Visible         := DANFE_RetratoVis.PageNo = 1;
      End;
end;

procedure TPedido_Outros.ppDetailBand2BeforePrint(Sender: TObject);
begin
      // Limpando codigos de controle da descrição do item.
      lItem_Descricao.Lines.Clear;
      lItem_CST.Caption := Trim(tPedidosItens.FieldByName('CodigoTrib_TabA').AsString)+Trim(tPedidosItens.FieldByName('CodigoTrib_TabB').AsString);

      If Dados.ConfiguracaoNFE_DANFE_CodigoProduto.AsString = 'I' then begin
         lCodigo.DataField := 'Codigo_Mercadoria'
      end else begin
         If Trim(tPedidosItens.FieldByName('Codigo_Fabricante').AsString) = '' then
            lCodigo.DataField := 'Codigo_Mercadoria'
         else
            lCodigo.DataField := 'Codigo_Fabricante';
      End;

      pQuantidade.Visible := Dados.TipoNotaVisiveis_QuantidadeItem.AsBoolean;
end;

procedure TPedido_Outros.DBLookupComboBox1Click(Sender: TObject);
begin
      If Dados.PedidosRepresentante_Comissao.AsFloat = 0 then
         Dados.PedidosRepresentante_Comissao.Value := Representantes.FieldByName('Comissao').AsFloat;
end;

procedure TPedido_Outros.bDuplicatasClick(Sender: TObject);
begin
      if Dados.PedidosValor_TotalNota.Value > 0 then begin
         ModalidadePgto_PedidoParcelas := TModalidadePgto_PedidoParcelas.Create(Self);
         ModalidadePgto_PedidoParcelas.mTipo   := 'R';
         ModalidadePgto_PedidoParcelas.mTipoNF := 4;
         ModalidadePgto_PedidoParcelas.ShowModal;
      end else begin
         ShowMessage('Não é possivel gerar duplicatas!'+#13+#13+'O Valor do pedido não pode ser igual a zero.'+#13+#13+'Informe os itens do pedido e gere as duplicatas.');
      end;
end;

procedure TPedido_Outros.lArmazemClick(Sender: TObject);
begin
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.mTransp := Dados.PedidosArmazem.AsInteger;
      Cadastro_Fornecedores.ShowModal;

      Dados.Fornecedores.Open;
      Dados.TipoProduto.Open;

      Armazem.Close;
      Armazem.Open;
      Dados.PedidosArmazem.AsString := Clipboard.AsText;
end;

procedure TPedido_Outros.lNomeClick(Sender: TObject);
begin
      if mSai_Entra = 0 then begin
         Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
         Cadastro_Fornecedores.Caption := Caption;
         Cadastro_Fornecedores.ShowModal;
         Dados.Fornecedores.Open;
         Dados.TipoProduto.Open;
         Dados.PedidosFornecedor_Codigo.AsString := Clipboard.AsText;
      end else begin
         Cadastro_Clientes := TCadastro_Clientes.Create(Self);
         Cadastro_Clientes.Caption := Caption;
         Cadastro_Clientes.ShowModal;
         Dados.Clientes.Open;
         Dados.PedidosCliente_Codigo.AsString := Clipboard.AsText;
      end;
end;

procedure TPedido_Outros.lTransportadorClick(Sender: TObject);
begin
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.mTransp := Dados.PedidosTransportador_Codigo.AsInteger;
      Cadastro_Fornecedores.ShowModal;

      Dados.Fornecedores.Open;
      Dados.TipoProduto.Open;

      Transportadores.Close;
      Transportadores.Open;
      Dados.PedidosTransportador_Codigo.AsString := Clipboard.AsText;
end;

procedure TPedido_Outros.StaticText6Click(Sender: TObject);
begin
      Cadastro_NaturezaOperacao := TCadastro_NaturezaOperacao.Create(Self);
      Cadastro_NaturezaOperacao.Caption := Caption;
      Cadastro_NaturezaOperacao.ShowModal;
      Dados.Natureza.Open;
      Dados.PedidosNatureza_Codigo.AsString := Clipboard.AsText;
end;

procedure TPedido_Outros.StaticText3Click(Sender: TObject);
begin
      Cadastro_ICMS := TCadastro_ICMS.Create(Self);
      Cadastro_ICMS.Caption := Caption;
      Cadastro_ICMS.ShowModal;
      Dados.ICMS.Open;
end;

procedure TPedido_Outros.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      If TeclaPressionada(VK_MENU) and TeclaPressionada(72) then Begin
         If cFormula.Visible = False then begin
            cFormula.Align   := alClient;
            cFormula.BringToFront;
            cFormula.Visible := True;
            cFormula.Repaint;
         end else begin
            cFormula.Visible := False;
         End;
      End;
end;

procedure TPedido_Outros.cCodigoTipoNotaExit(Sender: TObject);
begin
      With Dados do begin
           If PedidosTipo_Nota.Value <> 0 then begin
              If TipoNotaNota_Referencia.Value = False then begin
                 PedidosNota_Referencia.Clear;
                 PedidosData_Referencia.Clear;
              end else begin
                 If Dados.TipoNotaComplementar.AsBoolean then begin
                    Pedido_NotaRefComplementar := TPedido_NotaRefComplementar.Create(Self);
                    Pedido_NotaRefComplementar.cNotaReferencia.Value := PedidosNota_Referencia.Value;
                    Pedido_NotaRefComplementar.cDataReferencia.Date  := PedidosData_Referencia.Value;
                    Pedido_NotaRefComplementar.ShowModal;

                    If PedidosNota_Referencia.Value = 0 then begin
                       Navega.BtnClick(nbCancel);
                    End;
                 End;
              End;
              
           if TipoNotaTransferencia.AsBoolean then begin
              Natureza.SQL.Clear;
              Natureza.SQL.Add('SELECT *');
              Natureza.SQL.Add('FROM   Natureza');
              Natureza.SQL.Add('WHERE Ativo = 1');
              Natureza.SQL.Add('AND   Saida_Entrada = '+inttoStr(mSai_Entra));
              Natureza.SQL.Add('AND   (Descricao_NF LIKE '+QuotedStr('%TRANSFER%')+' OR Observacao LIKE '+QuotedStr('%TRANSFER%')+')' );
              Natureza.SQL.Add('ORDER BY Codigo');
              //Natureza.SQL.SaveToFile('c:\temp\Pedidos_Outros_Natureza.sql');
              Natureza.Open;
           end;
              If (Pedidos.State = dsEdit) or (Pedidos.State = dsInsert) then begin
                 PedidosSaida_Entrada.Value        := TipoNotaSaida_Entrada.Value;
                 PedidosComplementar.Value         := TipoNotaComplementar.Value;
                 PedidosBaixa_Estoque.Value        := TipoNotaBaixa_Estoque.Value;
                 PedidosDevolucao.Value            := TipoNotaFinalidade_Mercadoria.AsInteger = 2;
                 PedidosMovimenta_Inventario.Value := TipoNotaMovimenta_Inventario.Value;
                 PedidosRemessa.Value              := TipoNotaRemessa.Value;
              End;
           End;
      End;
end;

procedure TPedido_Outros.cIndPresencaChange(Sender: TObject);
begin
      Dados.PedidosIndicador_Intermediario.clear;

      if cIndPresenca.ItemIndex in [2]       then Dados.PedidosIndicador_Intermediario.AsInteger := 1;
      if cIndPresenca.ItemIndex in [3, 4, 6] then Dados.PedidosIndicador_Intermediario.AsInteger := 0;
      cIndInter.Enabled := cIndPresenca.ItemIndex in [2, 3, 4, 6];
end;

procedure TPedido_Outros.cTipoNotaExit(Sender: TObject);
begin
      With Dados do begin
           If PedidosTipo_Nota.Value <> 0 then begin
              If TipoNotaNota_Referencia.Value = False then begin
                 PedidosNota_Referencia.Clear;
                 PedidosData_Referencia.Clear;
              end else begin
                 If Dados.TipoNotaComplementar.AsBoolean then begin
                    If PedidosNota_Referencia.Value = 0 then begin
                       Pedido_NotaRefComplementar := TPedido_NotaRefComplementar.Create(Self);
                       Pedido_NotaRefComplementar.cNotaReferencia.Value := PedidosNota_Referencia.Value;
                       Pedido_NotaRefComplementar.cDataReferencia.Date  := PedidosData_Referencia.Value;
                       Pedido_NotaRefComplementar.ShowModal;

                       If PedidosNota_Referencia.Value = 0 then begin
                          Navega.BtnClick(nbCancel);
                       End;
                    End;
                 End;
              End;
              If (Pedidos.State = dsEdit) or (Pedidos.State = dsInsert) then begin
                 PedidosSaida_Entrada.Value        := TipoNotaSaida_Entrada.Value;
                 PedidosComplementar.Value         := TipoNotaComplementar.Value;
                 PedidosBaixa_Estoque.Value        := TipoNotaBaixa_Estoque.Value;
                 PedidosDevolucao.Value            := TipoNotaFinalidade_Mercadoria.AsInteger = 2;
                 PedidosMovimenta_Inventario.Value := TipoNotaMovimenta_Inventario.Value;
                 PedidosRemessa.Value              := TipoNotaRemessa.Value;
              End;
           End;
      End;
end;

procedure TPedido_Outros.cProcessoExit(Sender: TObject);
begin
      With Dados do begin
           PedidosDI.Clear;
           PedidosData_DI.Clear;
           //PedidosIncentivo_Fiscal.Clear;
           If Trim(PedidosProcesso.Text) <> '' then begin
              PedidosDI.Value               := ProcessosDOCNumero_Declaracao.Value;
              PedidosData_DI.Value          := ProcessosDOCData_RegistroDeclaracao.Value;
              PedidosIncentivo_Fiscal.Value := ProcessosDOCIncentivo_Fiscal.Value;
              PedidosTipo_Processo.Value    := Copy(ProcessosDOCTipo.Value, 1, 1);
           End;
      End;
end;

procedure TPedido_Outros.DANFE_RetratoVisBeforePrint(Sender: TObject);
begin
      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         iLogo.Width := Dados.EmpresasLogomarca_Largura.Value;
         iLogo.Left  := (lQuadroEmpresa.Width - Dados.EmpresasLogomarca_Largura.Value)/2;
      end;
      //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);

      With Dados do begin
//           Obs_Logo.Visible := false;
//           Obs_Msg1.Visible := false;
//           Obs_Msg2.Visible := false;
           lII.Visible      := PedidosSaida_Entrada.asinteger = 0;
//           If Trim(TipoNotaObs_Logo.Value) <> '' then begin
//              If FileExists(ExtractFilePath(Application.ExeName)+TipoNotaObs_Logo.Value) then begin
//                 Obs_Logo.Visible := true;
//                 Obs_Logo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+TipoNotaObs_Logo.Value);
//              end;
//           End;
//           If Trim(TipoNotaObs_Msg1.Value) <> '' then begin
//              Obs_Msg1.Visible := true;
//              Obs_Msg1.Text    := TipoNotaObs_Msg1.AsString;
//           End;
//           If Trim(TipoNotaObs_Msg2.Value) <> '' then begin
//              Obs_Msg2.Visible := true;
//              Obs_Msg2.Text    := TipoNotaObs_Msg2.AsString;
//           End;
      End;
end;

procedure TPedido_Outros.cNomeExit(Sender: TObject);
begin
      if mSai_Entra = 1 then begin
         with Dados do begin
              PedidosRepresentante.Value := ClientesRepresentante.Value;
              if ClientesRepresentante_Comissao.AsFloat > 0 then
                 PedidosRepresentante_Comissao.Value := ClientesRepresentante_Comissao.Value;

              if (Clientes.FieldByName('Endereco_Entrega').AsBoolean) or (Clientes.FieldByName('Endereco_Retirada').AsBoolean) then begin
                 bEntRet.Enabled := true;
                 if (Trim(ClientesRua_Entrega.AsString) = '') and (Trim(ClientesRua_Retirada.AsString) = '') then begin
                    bEntRet.Enabled := false;
                 end;
                 if (Trim(ClientesRua_Entrega.AsString) <> '') and (Trim(ClientesRua_Retirada.AsString) = '') then begin
                    PedidosEntrega_Retirada.Value := 'E';
                 end;
                 if (Trim(ClientesRua_Entrega.AsString) = '') and (Trim(ClientesRua_Retirada.AsString) <> '') then begin
                    PedidosEntrega_Retirada.Value := 'R';
                 end;
              end;
         end;
      end;
end;

procedure TPedido_Outros.bDuplicarClick(Sender: TObject);
begin
     If MessageDlg('Deseja realmente duplicar o pedido atual?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        Abort;

     Pedido_OutrosDuplicar := TPedido_OutrosDuplicar.Create(Self);
     Pedido_OutrosDuplicar.Caption := Caption;
     Pedido_OutrosDuplicar.ShowModal;
end;

procedure TPedido_Outros.cPedidoChange(Sender: TObject);
begin
     tItens.SQL.Clear;
     tItens.SQL.Add('SELECT COUNT(*) AS Itens FROM PedidosItens WHERE(Pedido = :pPedido)');
     tItens.ParamByName('pPedido').AsInteger := Dados.PedidosNumero.AsInteger;
     tItens.Open;
     bItens.Caption          := '&Itens ['+PoeZero(4, tItens.FieldbyName('Itens').AsInteger)+']';
     cCodigoTipoNota.Enabled := tItens.FieldbyName('Itens').AsInteger = 0;
     cTipoNota.Enabled       := tItens.FieldbyName('Itens').AsInteger = 0;
     with dados do begin
          if (Clientes.FieldByName('Endereco_Entrega').AsBoolean) or (Clientes.FieldByName('Endereco_Retirada').AsBoolean) then begin
             bEntRet.Enabled := true;
             if (Trim(ClientesRua_Entrega.AsString) = '') and (Trim(ClientesRua_Retirada.AsString) = '') then begin
                bEntRet.Enabled := false;
             end;
          end;
     end;
end;

procedure TPedido_Outros.bPesqArmClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Fornecedores';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and isnull(Ativo, 0) = 1 and Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%ARMAZ%'')';
      PesquisaGerais.Showmodal;
      Dados.PedidosArmazem.value := strtoint(Clipboard.AsText);
end;

procedure TPedido_Outros.bPesqCliForClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := iif(mSai_Entra = 0, 'Fornecedores', 'Clientes');
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and isnull(Ativo, 0) = 1';
      PesquisaGerais.mScript := 'select Codigo, Nome, CNPJ = ''  ''+isnull(CNPJ,'''')+isnull(CPF,'''')+''  '' from '+iif(mSai_Entra = 0,'Fornecedores', 'Clientes')+' Fornecedores where Nome like :pPesq and isnull(Ativo, 0) = 1';
      PesquisaGerais.Showmodal;
      cNome.keyValue := strtoint(Clipboard.AsText);
end;

procedure TPedido_Outros.bPesqTransClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Fornecedores';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and isnull(Ativo, 0) = 1 and Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%TRANSP%'')';
      PesquisaGerais.Showmodal;
      Dados.PedidosTransportador_Codigo.value := strtoint(Clipboard.AsText);
end;

procedure TPedido_Outros.bPesquisarClick(Sender: TObject);
Var
    mPesquisa: String;
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Número / Processo / Cliente', mPesquisa));
     If Dados.Pedidos.Locate('Numero', mPesquisa, [loCaseInsensitive]) = false then begin
        If Dados.Pedidos.Locate('Processo', mPesquisa, [loCaseInsensitive]) = false then begin
            If Dados.Pedidos.Locate('Destinatario_Nome', mPesquisa, [loPartialKey]) = false then begin
               MessageDlg('Nenhum pedido encontrado com o Número/ Processo ou Cliente informados!', mtInformation, [mbOk], 0);
            End;
        End;
     End;
end;

procedure TPedido_Outros.DBEdit2Exit(Sender: TObject);
begin
      With Dados do begin
           If PedidosValor_OutrasDespesas.Value > 0 then begin
              PedidosRatear_Despesa.Value := true;
           End;
      End;
end;

procedure TPedido_Outros.DuplicataDANFE(pParc:integer);
var
   Obj:TObject;
begin
      // Pega o numero da duplicata.
      Obj := FindComponent('lNumDupl'+InttoStr(pParc));
      if Obj <> nil then begin
         If Dados.ConfiguracaoSequencial_Duplicata.AsInteger = 0 then
            (Obj as TppLabel).Caption := FormatMaskText('999999999-A;0; ',dmFiscal.PedidosDuplicataDuplicata.Value)
         else
            (Obj as TppLabel).Caption := FormatMaskText('999999999-A;0; ',dmFIscal.PedidosDuplicataNumero.Value);
      end;
      // Pega a data da duplicata.
      Obj := FindComponent('lDataDupl'+InttoStr(pParc));
      if Obj <> nil then (Obj as TppLabel).Caption := dmFiscal.PedidosDuplicataData_Vencimento.AsString;
      // Pega o valor da duplicata.
      Obj := FindComponent('lValorDupl'+InttoStr(pParc));
      if Obj <> nil then (Obj as TppLabel).Caption := FormatFloat('###,###,##0.00', dmFiscal.PedidosDuplicataValor_Liquido.Value);
end;

procedure TPedido_Outros.ZerarDupl;
var
   Obj:TObject;
   i:Integer;
begin
      for i := 1 to 24 do begin
          // Zera o numero da duplicata.
          Obj := FindComponent('lNumDupl'+InttoStr(i));
          if Obj <> nil then (Obj as TppLabel).Caption := '';
          // Zera a data da duplicata.
          Obj := FindComponent('lDataDupl'+InttoStr(i));
          if Obj <> nil then (Obj as TppLabel).Caption := '';
          // Zera o valor da duplicata.
          Obj := FindComponent('lValorDupl'+InttoStr(i));
          if Obj <> nil then (Obj as TppLabel).Caption := '';
      end;
end;

procedure TPedido_Outros.cTransportadorExit(Sender: TObject);
begin
     with dados do begin
          if TipoNotaDados_Veiculo.AsBoolean then begin
             Pedido_DadosVeiculo := TPedido_DadosVeiculo.Create(Self);
             Pedido_DadosVeiculo.ShowModal;
          end;
     end;
end;

procedure TPedido_Outros.bEntRetClick(Sender: TObject);
begin
     // Verifica se o cliente informado tem mais de um endereço cadastrado Entrega/ Retirada.
     with Dados do begin
          if (Clientes.FieldByName('Endereco_Entrega').AsBoolean) or (Clientes.FieldByName('Endereco_Retirada').AsBoolean) then begin
             if (Trim(ClientesRua_Entrega.AsString) <> '') and (Trim(ClientesRua_Retirada.AsString) <> '') then begin
                Pedido_EndEntregaRetirada         := TPedido_EndEntregaRetirada.Create(Self);
                Pedido_EndEntregaRetirada.Caption := 'PEDIDOS - ENDEREÇO DE ENTREGA / RETIRADA';
                Pedido_EndEntregaRetirada.ShowModal;
             end;
          end;
     end;
end;

procedure TPedido_Outros.cProcessoClick(Sender: TObject);
begin
      with Dados do begin
           PedidosDI.Clear;
           PedidosData_DI.Clear;
           //PedidosIncentivo_Fiscal.Clear;
           if Trim(PedidosProcesso.Text) <> '' then begin
              PedidosDI.Value               := ProcessosDOCNumero_Declaracao.Value;
              PedidosData_DI.Value          := ProcessosDOCData_RegistroDeclaracao.Value;
              PedidosIncentivo_Fiscal.Value := ProcessosDOCIncentivo_Fiscal.Value;
              PedidosTipo_Processo.Value    := Copy(ProcessosDOCTipo.Value, 1, 1);
              PedidosArmazem.Value          := ProcessosDOCArmazem.asinteger;
           end;
      end;
end;





end.
