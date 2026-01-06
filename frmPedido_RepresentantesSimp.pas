unit frmPedido_RepresentantesSimp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, MaskUtils, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS,
  DBAccess, MSAccess, Vcl.Grids, Vcl.DBGrids, RxDBCtrl, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RxCtrls, ppPrnabl, ppClass, ppCtrls, ppBands,
  ppCache, ppDesignLayer, ppParameter, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, ppStrtch, ppMemo, ppVar, ppSubRpt, ppTypes, IniFiles, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage, IdBaseComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, system.UITypes,
  IdSMTP, Funcoes, IdAttachmentFile, IdText, IdAttachment, IdGlobal, IdCoderMIME, Vcl.Buttons, Vcl.Mask, RxToolEdit, DateUtils, Math, CalcExpress, clipbrd, Vcl.Samples.Spin, Vcl.Menus;

type
  TPedido_RepresentantesSimp = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel2: TPanel;
    bSair: TButton;
    dsPedidosRep: TDataSource;
    PedidosRep: TMSQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grade: TDBGrid;
    tConferencia: TMSQuery;
    dstConferencia: TDataSource;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    bCancLib: TButton;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    bCancConf: TButton;
    tTemp: TMSQuery;
    tForn: TMSQuery;
    dstForn: TDataSource;
    pEmpresas: TppDBPipeline;
    pPedidos: TppDBPipeline;
    tPedidos: TMSQuery;
    dstPedidos: TDataSource;
    tItens: TMSQuery;
    dstItens: TDataSource;
    pItens: TppDBPipeline;
    rRomaneio: TppReport;
    ppParameterList2: TppParameterList;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel31: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLabel41: TppLabel;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    iLogo: TppImage;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText34: TppDBText;
    ppLabel45: TppLabel;
    ppDBText35: TppDBText;
    ppLabel46: TppLabel;
    ppDBText36: TppDBText;
    ppLabel47: TppLabel;
    ppDBText37: TppDBText;
    ppLabel48: TppLabel;
    pCliCNPJ: TppDBText;
    ppLabel49: TppLabel;
    ppDBText39: TppDBText;
    ppLabel50: TppLabel;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText42: TppDBText;
    ppLabel55: TppLabel;
    ppDBText43: TppDBText;
    ppLabel56: TppLabel;
    ppDBText44: TppDBText;
    ppLabel57: TppLabel;
    ppDBText45: TppDBText;
    ppLabel58: TppLabel;
    ppDBText46: TppDBText;
    ppLabel59: TppLabel;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLabel60: TppLabel;
    ppDBText49: TppDBText;
    ppLabel61: TppLabel;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLabel62: TppLabel;
    ppDBText52: TppDBText;
    ppLabel64: TppLabel;
    ppLine23: TppLine;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText61: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel73: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppShape2: TppShape;
    ppLabel74: TppLabel;
    ppLine37: TppLine;
    ppLabel75: TppLabel;
    ppLine38: TppLine;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppSystemVariable4: TppSystemVariable;
    ppLine39: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppLabel76: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    bEnviarSep: TButton;
    rPedido: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppLabel18: TppLabel;
    ppDBText13: TppDBText;
    ppLabel19: TppLabel;
    ppDBText14: TppDBText;
    ppLabel20: TppLabel;
    ppDBText15: TppDBText;
    ppLabel21: TppLabel;
    ppDBText16: TppDBText;
    ppLabel22: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel23: TppLabel;
    ppDBText19: TppDBText;
    ppLabel24: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel25: TppLabel;
    ppDBText22: TppDBText;
    ppLabel26: TppLabel;
    ppLine3: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText62: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel36: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppLine20: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppLabel63: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList1: TppParameterList;
    Panel5: TPanel;
    lNome: TStaticText;
    StaticText1: TStaticText;
    cArmazem: TDBLookupComboBox;
    cEmail: TEdit;
    StaticText2: TStaticText;
    cCopia: TMemo;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    DBNavigator3: TDBNavigator;
    bCancFat: TButton;
    tFaturados: TMSQuery;
    dstFaturados: TDataSource;
    ppDBText63: TppDBText;
    ppLabel37: TppLabel;
    ppDBText64: TppDBText;
    ppLabel38: TppLabel;
    iLogo2: TppImage;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    DBNavigator4: TDBNavigator;
    bCancDesp: TButton;
    tDespachados: TMSQuery;
    dstDespachados: TDataSource;
    bDevolucao: TButton;
    tTemp2: TMSQuery;
    bImprimirSep: TButton;
    bImprimirCli: TButton;
    cOrigem: TRadioGroup;
    PedidosRepModal_Nome: TStringField;
    cEnviarEmail: TCheckBox;
    ppDBMemo3: TppDBMemo;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppLabel79: TppLabel;
    ppDBText1: TppDBText;
    ppLabel80: TppLabel;
    ppDBText26: TppDBText;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cOrdem: TEdit;
    cPedido: TEdit;
    Label2: TLabel;
    bSelTodosConf: TButton;
    bSelNenhumCof: TButton;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppDBText38: TppDBText;
    ppLabel86: TppLabel;
    ppDBText60: TppDBText;
    ppLabel87: TppLabel;
    ppDBText65: TppDBText;
    ppLabel88: TppLabel;
    ppDBText66: TppDBText;
    ppLabel89: TppLabel;
    ppDBText67: TppDBText;
    ppLabel90: TppLabel;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppLabel91: TppLabel;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppLabel92: TppLabel;
    ppDBText72: TppDBText;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppDBText73: TppDBText;
    ppLabel97: TppLabel;
    ppDBText74: TppDBText;
    ppLabel98: TppLabel;
    ppDBText75: TppDBText;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppDBText76: TppDBText;
    ppLabel101: TppLabel;
    ppDBText77: TppDBText;
    ppLabel102: TppLabel;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppLabel103: TppLabel;
    ppDBText82: TppDBText;
    ppLabel104: TppLabel;
    ppDBText83: TppDBText;
    ppLabel105: TppLabel;
    ppDBText84: TppDBText;
    ppLabel106: TppLabel;
    ppDBText85: TppDBText;
    ppLabel107: TppLabel;
    ppDBText86: TppDBText;
    ppLabel108: TppLabel;
    ppDBText87: TppDBText;
    ppLabel109: TppLabel;
    ppDBText88: TppDBText;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    DBNavigator5: TDBNavigator;
    bCancSep: TButton;
    tSeparados: TMSQuery;
    dstSeparados: TDataSource;
    bEnviarCli: TButton;
    bGerarFin: TButton;
    bSeparado: TButton;
    bAlterar: TButton;
    bDespachado: TButton;
    tClientes: TMSQuery;
    dstClientes: TDataSource;
    Timer1: TTimer;
    SpeedButton1: TSpeedButton;
    cData: TDateEdit;
    cExcel: TCheckBox;
    StatusBar1: TStatusBar;
    bPesquisa: TSpeedButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    bLimparUsu: TSpeedButton;
    Label4: TLabel;
    cUsuario: TDBLookupComboBox;
    cFiltroCliente: TDBLookupComboBox;
    bLimparCli: TSpeedButton;
    mParcelas: TppMemo;
    ppLabel110: TppLabel;
    bGerarPed: TButton;
    TabSheet6: TTabSheet;
    tAguardando: TMSQuery;
    dstAguardando: TDataSource;
    bFiltroPed: TButton;
    cBoletos: TRadioGroup;
    PedidosRepPedido_Pai: TStringField;
    PedidosRepParcial: TStringField;
    PedidosRepQuantidade: TFloatField;
    bBaixar: TButton;
    TabSheet8: TTabSheet;
    TabSheet7: TTabSheet;
    cFormula: TMemo;
    Panel8: TPanel;
    DBNavigator6: TDBNavigator;
    bCancelBaixa: TButton;
    tBaixados: TMSQuery;
    dstBaixados: TDataSource;
    bPesqCli: TSpeedButton;
    tGradeItens: TMSQuery;
    dstGradeItens: TDataSource;
    tGradeItensItem: TSmallintField;
    tGradeItensCodigo_Mercadoria: TIntegerField;
    tGradeItensDescricao: TStringField;
    tGradeItensQuantidade: TFloatField;
    tGradeItensQuantidade_Master: TFloatField;
    tGradeItensUnidade: TStringField;
    tGradeItensVolumes: TFloatField;
    tGradeItensValor_Unitario: TFloatField;
    tGradeItensValor_Total: TFloatField;
    tGradeItensPedido: TStringField;
    GradeItens1: TDBGrid;
    Label5: TLabel;
    bLimparArm: TSpeedButton;
    cPesqArm: TSpeedButton;
    cFiltroArm: TDBLookupComboBox;
    tArmazem: TMSQuery;
    dstArmazem: TDataSource;
    GradeItens2: TDBGrid;
    GradeItens3: TDBGrid;
    GradeItens4: TDBGrid;
    GradeItens5: TDBGrid;
    GradeItens6: TDBGrid;
    PedidosRepData: TDateTimeField;
    PedidosRepOrdem_Compra: TStringField;
    PedidosRepRepresentante_Nome: TStringField;
    PedidosRepCliente_Nome: TStringField;
    PedidosRepTotal_Pedido: TCurrencyField;
    PedidosRepDesconto: TFloatField;
    PedidosRepComissao: TFloatField;
    PedidosRepCliente_CNPJ: TStringField;
    PedidosRepCliente_Estado: TStringField;
    PedidosRepCliente_MunicipioNome: TStringField;
    PedidosRepModalidade_Nome: TStringField;
    PedidosRepPessoa: TStringField;
    PedidosRepPedido: TStringField;
    PedidosRepModalidade_Pagamento: TSmallintField;
    PedidosRepObservacao: TMemoField;
    PedidosRepArmazem: TSmallintField;
    PedidosRepArmazem_Nome: TStringField;
    GradeConf: TDBGrid;
    tConferenciaPedido: TStringField;
    tConferenciaPedido_Pai: TStringField;
    tConferenciaParcial: TStringField;
    tConferenciaData: TDateTimeField;
    tConferenciaOrdem_Compra: TStringField;
    tConferenciaRepresentante_Nome: TStringField;
    tConferenciaCliente_Nome: TStringField;
    tConferenciaTotal_Pedido: TCurrencyField;
    tConferenciaDesconto: TFloatField;
    tConferenciaComissao: TFloatField;
    tConferenciaQuantidade: TFloatField;
    tConferenciaCliente_CNPJ: TStringField;
    tConferenciaCliente_Estado: TStringField;
    tConferenciaCliente_MunicipioNome: TStringField;
    tConferenciaModalidade_Pagamento: TSmallintField;
    tConferenciaModalidade_Nome: TStringField;
    tConferenciaPessoa: TStringField;
    tConferenciaObservacao: TMemoField;
    tConferenciaArmazem: TSmallintField;
    tConferenciaArmazem_Nome: TStringField;
    tSeparadosPedido: TStringField;
    tSeparadosPedido_Pai: TStringField;
    tSeparadosParcial: TStringField;
    tSeparadosData: TDateTimeField;
    tSeparadosOrdem_Compra: TStringField;
    tSeparadosRepresentante_Nome: TStringField;
    tSeparadosCliente_Nome: TStringField;
    tSeparadosTotal_Pedido: TCurrencyField;
    tSeparadosDesconto: TFloatField;
    tSeparadosComissao: TFloatField;
    tSeparadosQuantidade: TFloatField;
    tSeparadosCliente_CNPJ: TStringField;
    tSeparadosCliente_Estado: TStringField;
    tSeparadosCliente_MunicipioNome: TStringField;
    tSeparadosModalidade_Pagamento: TSmallintField;
    tSeparadosModalidade_Nome: TStringField;
    tSeparadosPessoa: TStringField;
    tSeparadosObservacao: TMemoField;
    tSeparadosArmazem: TSmallintField;
    tSeparadosArmazem_Nome: TStringField;
    GradeSep: TDBGrid;
    tSeparadosTipo_Nota: TSmallintField;
    tAguardandoPedido: TStringField;
    tAguardandoPedido_Pai: TStringField;
    tAguardandoParcial: TStringField;
    tAguardandoData: TDateTimeField;
    tAguardandoOrdem_Compra: TStringField;
    tAguardandoRepresentante_Nome: TStringField;
    tAguardandoCliente_Nome: TStringField;
    tAguardandoTotal_Pedido: TCurrencyField;
    tAguardandoDesconto: TFloatField;
    tAguardandoComissao: TFloatField;
    tAguardandoQuantidade: TFloatField;
    tAguardandoCliente_CNPJ: TStringField;
    tAguardandoCliente_Estado: TStringField;
    tAguardandoCliente_MunicipioNome: TStringField;
    tAguardandoModalidade_Pagamento: TSmallintField;
    tAguardandoModalidade_Nome: TStringField;
    tAguardandoPessoa: TStringField;
    tAguardandoObservacao: TMemoField;
    tAguardandoArmazem: TSmallintField;
    tAguardandoArmazem_Nome: TStringField;
    tAguardandoTipo_Nota: TSmallintField;
    GradeAg: TDBGrid;
    GradeFat: TDBGrid;
    tFaturadosPedido: TStringField;
    tFaturadosPedido_Pai: TStringField;
    tFaturadosParcial: TStringField;
    tFaturadosData: TDateTimeField;
    tFaturadosOrdem_Compra: TStringField;
    tFaturadosRepresentante_Nome: TStringField;
    tFaturadosCliente_Nome: TStringField;
    tFaturadosTotal_Pedido: TCurrencyField;
    tFaturadosDesconto: TFloatField;
    tFaturadosComissao: TFloatField;
    tFaturadosQuantidade: TFloatField;
    tFaturadosCliente_CNPJ: TStringField;
    tFaturadosCliente_Estado: TStringField;
    tFaturadosCliente_MunicipioNome: TStringField;
    tFaturadosModalidade_Pagamento: TSmallintField;
    tFaturadosModalidade_Nome: TStringField;
    tFaturadosPessoa: TStringField;
    tFaturadosObservacao: TMemoField;
    tFaturadosArmazem: TSmallintField;
    tFaturadosArmazem_Nome: TStringField;
    tFaturadosTipo_Nota: TSmallintField;
    tDespachadosPedido: TStringField;
    tDespachadosPedido_Pai: TStringField;
    tDespachadosParcial: TStringField;
    tDespachadosData: TDateTimeField;
    tDespachadosOrdem_Compra: TStringField;
    tDespachadosRepresentante_Nome: TStringField;
    tDespachadosCliente_Nome: TStringField;
    tDespachadosTotal_Pedido: TCurrencyField;
    tDespachadosDesconto: TFloatField;
    tDespachadosComissao: TFloatField;
    tDespachadosQuantidade: TFloatField;
    tDespachadosCliente_CNPJ: TStringField;
    tDespachadosCliente_Estado: TStringField;
    tDespachadosCliente_MunicipioNome: TStringField;
    tDespachadosModalidade_Pagamento: TSmallintField;
    tDespachadosModalidade_Nome: TStringField;
    tDespachadosPessoa: TStringField;
    tDespachadosObservacao: TMemoField;
    tDespachadosArmazem: TSmallintField;
    tDespachadosArmazem_Nome: TStringField;
    tDespachadosTipo_Nota: TSmallintField;
    GradeDesp: TDBGrid;
    tBaixadosPedido: TStringField;
    tBaixadosPedido_Pai: TStringField;
    tBaixadosParcial: TStringField;
    tBaixadosData: TDateTimeField;
    tBaixadosOrdem_Compra: TStringField;
    tBaixadosRepresentante_Nome: TStringField;
    tBaixadosCliente_Nome: TStringField;
    tBaixadosTotal_Pedido: TCurrencyField;
    tBaixadosDesconto: TFloatField;
    tBaixadosComissao: TFloatField;
    tBaixadosQuantidade: TFloatField;
    tBaixadosCliente_CNPJ: TStringField;
    tBaixadosCliente_Estado: TStringField;
    tBaixadosCliente_MunicipioNome: TStringField;
    tBaixadosModalidade_Pagamento: TSmallintField;
    tBaixadosModalidade_Nome: TStringField;
    tBaixadosPessoa: TStringField;
    tBaixadosObservacao: TMemoField;
    tBaixadosArmazem: TSmallintField;
    tBaixadosArmazem_Nome: TStringField;
    tBaixadosTipo_Nota: TSmallintField;
    GradeBx: TDBGrid;
    tSeparadosBloqueado: TBooleanField;
    PedidosRepBloqueado: TBooleanField;
    tDespachadosBloqueado: TBooleanField;
    tBaixadosBloqueado: TBooleanField;
    tConferenciaBloqueado: TBooleanField;
    tFaturadosBloqueado: TBooleanField;
    tAguardandoBloqueado: TBooleanField;
    cAno: TSpinEdit;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    bFaturado: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancLibClick(Sender: TObject);
    procedure cArmazemClick(Sender: TObject);
    procedure bEnviarSepClick(Sender: TObject);
    procedure bImprimirSepClick(Sender: TObject);
    procedure ppHeaderBand2AfterPrint(Sender: TObject);
    procedure bSelTodosConfClick(Sender: TObject);
    procedure bSelNenhumCofClick(Sender: TObject);
    procedure bEnviarCliClick(Sender: TObject);
    procedure bImprimirCliClick(Sender: TObject);
    procedure ppHeaderBand1AfterPrint(Sender: TObject);
    procedure bCancConfClick(Sender: TObject);
    procedure bGerarFinClick(Sender: TObject);
    procedure bCancFatClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure bCancDespClick(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure cOrigemClick(Sender: TObject);
    procedure GradeTitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure cUsuarioClick(Sender: TObject);
    procedure bLimparUsuClick(Sender: TObject);
    procedure bSeparadoClick(Sender: TObject);
    procedure bCancSepClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure bDespachadoClick(Sender: TObject);
    procedure bDevolucaoClick(Sender: TObject);
    procedure bLimparCliClick(Sender: TObject);
    procedure cFiltroClienteClick(Sender: TObject);
    procedure cDataChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GradeConfCellClick(Column: TColumn);
    procedure GradeConfKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GradeSepKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GradeSepCellClick(Column: TColumn);
    procedure GradeFatCellClick(Column: TColumn);
    procedure GradeFatKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GradeDespKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GradeDespCellClick(Column: TColumn);
    procedure bGerarPedClick(Sender: TObject);
    procedure bFiltroPedClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GradeAgCellClick(Column: TColumn);
    procedure GradeAgKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bBaixarClick(Sender: TObject);
    procedure bCancelBaixaClick(Sender: TObject);
    procedure bPesqCliClick(Sender: TObject);
    procedure GradeBxCellClick(Column: TColumn);
    procedure tSeparadosAfterScroll(DataSet: TDataSet);
    procedure PedidosRepAfterScroll(DataSet: TDataSet);
    procedure tConferenciaAfterScroll(DataSet: TDataSet);
    procedure tFaturadosAfterScroll(DataSet: TDataSet);
    procedure tDespachadosAfterScroll(DataSet: TDataSet);
    procedure tAguardandoAfterScroll(DataSet: TDataSet);
    procedure GradeSepDblClick(Sender: TObject);
    procedure bLimparArmClick(Sender: TObject);
    procedure cPesqArmClick(Sender: TObject);
    procedure cFiltroArmClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure bFaturadoClick(Sender: TObject);
  private
    procedure Seleciona(pSel: boolean; pGrade: TDBGrid);
    procedure FiltraPed(Local: integer);
    procedure EnviarEmail;
    procedure EnviarEmailCli;
    procedure FiltraTodos(ordem: string);
    procedure FiltraDespachados(ordem: string);
    procedure Pesquisa(Campo1, Campo2: string);
    function  PegaSel(pGrade: TDBGrid): string;
    procedure FiltraItens(Pedido: string);
    { Private declarations }
  public
    { Public declarations }
    mSel
   ,mErro:boolean;
    mDirecao
   ,mObs
   ,mPed:string;
    mCont
   ,mContFinal
   ,mDest
   ,mCli
   ,mICMSOp
   ,mICMSSt
   ,mTrans:integer;
  end;

var
  Pedido_RepresentantesSimp: TPedido_RepresentantesSimp;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal, frmPedidosRepresentantes_Financeiro, frmPedido_RepresentanteAltera, frmPedido_RepresentanteDevolucao, frmJanela_Processamento, frmDMFiscal, frmDMContab, frmPedidosRepresentantes_PedidoNF, frmPedidosRepresentantes_FiltroFat, frmPesquisaGerais,
  frmPedidosRepresentantes_PedidoNF2;

procedure TPedido_RepresentantesSimp.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedido_RepresentantesSimp.bSelTodosConfClick(Sender: TObject);
begin
      if PageControl1.ActivePageIndex = 0 then Seleciona(true, Grade);
      if PageControl1.ActivePageIndex = 1 then Seleciona(true, GradeConf);
      if PageControl1.ActivePageIndex = 2 then Seleciona(true, GradeSep);
      if PageControl1.ActivePageIndex = 3 then Seleciona(true, GradeFat);
      if PageControl1.ActivePageIndex = 4 then Seleciona(true, GradeDesp);
end;

procedure TPedido_RepresentantesSimp.bSeparadoClick(Sender: TObject);
begin
     if GradeConf.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     with tTemp do begin
          if MessageDlg('Deseja realmente enviar os pedidos para separados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
             Abort;
          end;
          // Mudando o status dos pedidos.
          with tPedidos do begin
               sql.clear;
               sql.Add('update PedidosRepresentantes set Local          = 3');
               sql.Add('                                ,Situacao       = ''SEPARADO'' ');
               sql.Add('                                ,Sel            = 0');
               sql.Add('                                ,Data_Separacao = getdate()');
               sql.Add('                                ,Usuario        = '+quotedstr(Menu_Principal.mUsuarioCodigo));
               sql.Add('where Pedido in ('+PegaSel(GradeConf)+')');
               sql.Add('and Local = 2');
               execute;
          end;

          GerarLog(Menu_Principal.mUsuarioCodigo, 'PedidosRepresentantes', 'DESPACHO' , 'Pedido', 'Pedidos separados', '2', '3', '');
          
          tConferencia.Refresh;
          tSeparados.Refresh;
     end;
end;

procedure TPedido_RepresentantesSimp.bCancelBaixaClick(Sender: TObject);
begin
     if GradeBx.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     if GradeBx.SelectedRows.Count > 1 then begin
        MessageDlg('Por segurança, apenas um pedido pode ser restaurado por vez!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     if MessageDlg('Deseja realmente restaurar o pedidos selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     end;
     with tTemp do begin
          sql.Clear;
          sql.Add('update PedidosRepresentantesItens set Quantidade = Quantidade_Baixada');
          sql.add('                                     ,Quantidade_Baixada = 0');
          sql.Add('where Pedido in ('+PegaSel(GradeBx)+')');
          Execute;
          sql.Clear;
          sql.Add('update PedidosRepresentantes set Situacao         = ''SEPARADO'' ');
          sql.Add('                                ,Gerar_Pedido     = 0');
          sql.Add('                                ,Sel              = 0');
          sql.Add('                                ,Local            = 3');
          sql.add('                                ,Data_Conferencia = null');
          sql.add('                                ,Data_Faturamento = null');
          sql.add('                                ,Data_Separacao   = null');
          sql.add('                                ,Data_Despacho    = null');
          sql.add('                                ,Data_Baixa       = null');
          sql.add('                                ,Usuario          = '+quotedstr(Menu_Principal.mUsuarioCodigo));
          sql.Add('where Pedido in ('+PegaSel(GradeBx)+')');
          sql.Add('and Local = 7');
          Execute;
          tBaixados.Refresh;
          tSeparados.Refresh;
     end;
end;

procedure TPedido_RepresentantesSimp.bGerarFinClick(Sender: TObject);
begin
     if GradeSep.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     PedidosRepresentantes_Financeiro := TPedidosRepresentantes_Financeiro.create(Self);
     PedidosRepresentantes_Financeiro.caption  := caption;
     PedidosRepresentantes_Financeiro.mPedidos := PegaSel(GradeSep);
     PedidosRepresentantes_Financeiro.showmodal;

     tFaturados.close;
     tFaturados.open;
     tConferencia.close;
     tConferencia.open;
     tSeparados.close;
     tSeparados.open;
end;

procedure TPedido_RepresentantesSimp.bGerarPedClick(Sender: TObject);
begin
      if GradeSep.SelectedRows.Count = 0 then begin
         MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
         Abort;
      end;
      with tTemp do begin
           // Verifica se há algum pedido bloqueado.
           sql.clear;
           sql.Add('select isnull(count(*), 0) as Qtde from PedidosRepresentantes where Pedido in('+PegaSel(GradeSep)+') and Bloqueado = 1');
           open;
           if fieldByName('Qtde').asinteger = 0 then begin
              // Bloqueia o pedido para outros usuários.
              sql.clear;
              sql.Add('update PedidosRepresentantes set Bloqueado = 1 where Pedido in('+PegaSel(GradeSep)+')');
              execute;
   
              if Dados.Configuracao.FieldByName('Tela_ItensTelevendas').AsBoolean then begin
                 PedidosRepresentantes_PedidoNF := TPedidosRepresentantes_PedidoNF.create(Self);
                 PedidosRepresentantes_PedidoNF.caption   := caption;
                 PedidosRepresentantes_PedidoNF.mPedidos  := PegaSel(GradeSep);
                 PedidosRepresentantes_PedidoNF.cObs.Text := mObs;
                 PedidosRepresentantes_PedidoNF.mQtdePed  := GradeSep.SelectedRows.Count;
                 PedidosRepresentantes_PedidoNF.showmodal;
              end else begin
                 PedidosRepresentantes_PedidoNF2 := TPedidosRepresentantes_PedidoNF2.create(Self);
                 PedidosRepresentantes_PedidoNF2.caption   := caption;
                 PedidosRepresentantes_PedidoNF2.mPedidos  := PegaSel(GradeSep);
                 PedidosRepresentantes_PedidoNF2.cObs.Text := mObs;
                 PedidosRepresentantes_PedidoNF2.mQtdePed  := GradeSep.SelectedRows.Count;
                 PedidosRepresentantes_PedidoNF2.showmodal;
              end;
                
              // Desbloqueia o pedido para outros usuários.
              sql.clear;
              sql.Add('update PedidosRepresentantes set Bloqueado = 0 where Pedido in('+PegaSel(GradeSep)+')');
              execute;
           end else begin
              MessageDlg('Outro usuário esta editando este(s) pedido(s) no momento!'+#13+#13+'Espere ele concluir a operação.', mtInformation, [mbok], 0);
              Abort;
           end;
      end;
      
      tAguardando.Refresh;
      tSeparados.Refresh;
end;

procedure TPedido_RepresentantesSimp.bCancDespClick(Sender: TObject);
begin
     if GradeDesp.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     with tTemp do begin
          if MessageDlg('Deseja realmente voltar os pedidos para a situação anterior?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
             Abort;
          end;
          // Mudando a situação do pedido.
          sql.clear;
          sql.add('update PedidosRepresentantes set Situacao      = ''FATURADO''');
          sql.add('                                ,Sel           = 0');
          sql.add('                                ,Local         = 5');
          sql.add('                                ,Faturado      = 1');
          sql.add('                                ,Data_Despacho = null');
          sql.Add('where Pedido in ('+PegaSel(GradeDesp)+')');
          sql.add('and Local = 6');
          Execute;
          
          GerarLog(Menu_Principal.mUsuarioCodigo, 'PedidosRepresentantes', 'DESPACHO' , 'Pedido', 'Cancelado Envio de pedidos para expedição', '4', '3', '');

          tDespachados.Refresh;
          tFaturados.Refresh;
     end;
end;

procedure TPedido_RepresentantesSimp.bBaixarClick(Sender: TObject);
begin
     if GradeSep.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     if GradeSep.SelectedRows.Count > 1 then begin
        MessageDlg('Por segurança, apenas um pedido pode ser baixado por vez!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     if MessageDlg('Deseja realmente baixar o pedido selecionado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     end;
     with tTemp do begin
          sql.Clear;
          sql.Add('update PedidosRepresentantesItens set Quantidade_Baixada = Quantidade');
          sql.add('                                     ,Quantidade         = 0');
          sql.Add('where Pedido in ('+PegaSel(GradeSep)+')');
          Execute;
          sql.Clear;
          sql.Add('update PedidosRepresentantes set Situacao         = ''BAIXADO'' ');
          sql.Add('                                ,Gerar_Pedido     = 0');
          sql.Add('                                ,Sel              = 0');
          sql.Add('                                ,Local            = 7');
          sql.Add('                                ,Liberado         = 1');
          sql.add('                                ,Data_Conferencia = null');
          sql.add('                                ,Data_Faturamento = null');
          sql.add('                                ,Data_Separacao   = null');
          sql.add('                                ,Data_Despacho    = null');
          sql.add('                                ,Data_Baixa       = getdate()');
          sql.add('                                ,Usuario          = '+quotedstr(Menu_Principal.mUsuarioCodigo));
          sql.Add('where Pedido in ('+PegaSel(GradeSep)+')');
          sql.Add('and Local = 3');
          Execute;
          tSeparados.Refresh;
          tBaixados.Refresh;
     end;
end;

procedure TPedido_RepresentantesSimp.bCancConfClick(Sender: TObject);
begin
     if MessageDlg('Deseja realmente voltar os pedidos para a situação anterior?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     end;
     if PegaSel(GradeConf) <> '' then begin
        with tTemp do begin
             SQL.Clear;
             SQL.Add('update PedidosRepresentantes set Situacao         = ''LIBERADO'' ');
             SQL.Add('                                ,Gerar_Pedido     = 0');
             SQL.Add('                                ,Sel              = 0');
             SQL.Add('                                ,Local            = 1');
             SQL.Add('                                ,Liberado         = 0');
             sql.add('                                ,Data_Conferencia = null');
             sql.add('                                ,Data_Faturamento = null');
             sql.add('                                ,Data_Separacao   = null');
             sql.add('                                ,Data_Despacho    = null');
             sql.add('                                ,Usuario          = '+quotedstr(Menu_Principal.mUsuarioCodigo));
             sql.Add('where Pedido in ('+PegaSel(GradeConf)+')');
             sql.Add('and Local = 2');
             Execute;
             tConferencia.Refresh;
             PedidosRep.Refresh;
        end;
     end;
end;

procedure TPedido_RepresentantesSimp.bCancFatClick(Sender: TObject);
begin
     if GradeFat.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     with tTemp do begin
          // Apagando os lançamentos do financeiro.
          sql.clear;
          sql.add('select *');
          sql.add('from PedidosRepresentantes');
          sql.add('where Pedido in ('+PegaSel(GradeFat)+')');
          sql.add('and Local = 5');
          open;
          if recordcount = 0 then begin
             MessageDlg('Nenhum pedido encontrado para cancelar!', mtinformation, [mbok], 0);
             abort;
          end;
          // Verifica se houve alguma baixa do pedido.
          with tTemp2 do begin
               sql.clear;
               sql.add('select count(*) as qtde from PagarReceberBaixas where Numero in(select Numero from PagarReceber where Fiscal = :pPedido and Data_Documento = :pData and Tipo_Nota = ''PD'') ');
               ParamByName('pPedido').AsString := tTemp.FieldByName('Pedido').AsString;
               ParamByName('pData').value      := tTemp.FieldByName('Data').AsDateTime;
               open;
               if fieldbyname('qtde').AsInteger > 0 then begin
                  MessageDlg('Atenção!'+#13+#13+'Existem baixas efetuadas para o pedido.'+#13+#13+'Para cancelar o pedido estorne as baixas no financeiro.', mtInformation, [mbok], 0);
                  Abort;
               end else begin
                  if MessageDlg('Deseja realmente cancelar este pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                     Abort;
                  end;
               end;
          end;

          first;
          while not eof do begin
                with tTemp2 do begin
                     sql.Clear;
                     sql.Add('delete from PagarReceber');
                     sql.Add('where Fiscal = :pPedido');
                     sql.Add('and   Tipo_Nota = ''PD'' ');
                     sql.add('and   Data_Documento = :pData');
                     sql.Add('and   (select COUNT(*) from PagarReceberBaixas prb where prb.Numero = PagarReceber.Numero) = 0');
                     ParamByName('pPedido').AsString := tTemp.FieldByName('Pedido').AsString;
                     ParamByName('pData').value      := tTemp.FieldByName('Data').AsDateTime;
                     Execute;

                     // Cancelando o pedido e mudando a situação do pedido.
                     sql.Clear;
                     sql.Add('update PedidosRepresentantes set Situacao         = ''SEPARADO'' ');
                     sql.Add('                                ,Sel              = 0');
                     sql.Add('                                ,Local            = '+iif(Dados.ConfiguracaoTela_LiberaPedidos.AsBoolean = true, '3', '4'));
                     sql.Add('                                ,Faturado         = 0');
                     sql.add('                                ,Data_Faturamento = null');
                     sql.add('                                ,Data_Despacho    = null');
                     sql.Add('                                ,Usuario          = '+quotedstr(Menu_Principal.mUsuarioCodigo));
                     sql.Add('where Pedido = :pPedido ');
                     sql.Add('and   Local  = 5');
                     ParamByName('pPedido').AsString := tTemp.FieldByName('Pedido').AsString;
                     Execute;

                     GerarLog(Menu_Principal.mUsuarioCodigo, 'PedidosRepresentantes', 'FATURAMENTO' , 'Local', 'Cancelado faturamento do pedido ('+tTemp.FieldByName('Pedido').AsString+')', '3', '2', '');
                end;
                next;
          end;
          tSeparados.Refresh;
          tFaturados.Refresh;
     end;
end;

procedure TPedido_RepresentantesSimp.bImprimirCliClick(Sender: TObject);
var
   mSel:boolean;
begin
      // Imprime apenas pedidos selecionados.
      mSel := true;
      with PageControl1 do begin
           if (ActivePageIndex = 0) and (Grade.SelectedRows.Count     = 0) then mSel := false;
           if (ActivePageIndex = 1) and (GradeConf.SelectedRows.Count = 0) then mSel := false;
           if (ActivePageIndex = 2) and (GradeSep.SelectedRows.Count  = 0) then mSel := false;
           if (ActivePageIndex = 3) and (GradeAg.SelectedRows.Count   = 0) then mSel := false;
           if (ActivePageIndex = 4) and (GradeFat.SelectedRows.Count  = 0) then mSel := false;
           if (ActivePageIndex = 5) and (GradeDesp.SelectedRows.Count = 0) then mSel := false;
      end;
      if not mSel then begin
         messagedlg('Nenhum pedido selecionado para impressão!', mtinformation, [mbok], 0);
         abort;
      end;

      FiltraPed(PageControl1.ActivePageIndex);
      
      if tPedidos.RecordCount = 0 then begin
         messagedlg('Nenhum pedido selecionado para impressão!', mtinformation, [mbok], 0);
         Abort;
      end;

      bEnviarCli.Enabled   := not bEnviarCli.Enabled;
      bImprimirCli.Enabled := not bImprimirCli.Enabled;

      if not DirectoryExists('c:\faturamento') then begin
         CreateDir('c:\Faturamento');
      end;
      
      with rPedido do begin
           if not cExcel.Checked then begin
              AllowPrintToArchive := false;
              AllowPrintToFile    := false;
              DeviceType          := 'Screen';
              Print;
              Reset;
              FreeOnRelease;
           end else begin   
              OpenFile                  := true;
              AllowPrintToArchive       := true;
              AllowPrintToFile          := true;
              DeviceType                := 'XlsxReport';
              XLSSettings.AppName       := 'Cybersoft - ERP Importa';
              XLSSettings.Author        := 'Cybersoft';
              XLSSettings.Title         := 'Pedido de Venda ';
              XLSSettings.WorksheetName := 'Pedido de Venda ';
              ArchiveFileName           := 'c:\faturamento\Pedido_Venda.xlsx';
              TextFileName              := 'c:\faturamento\Pedido_Venda.xlsx';
              ShowPrintDialog           := false;
              Print;
              Reset;
              FreeOnRelease;
           end;
      end;

      bEnviarCli.Enabled   := not bEnviarCli.Enabled;
      bImprimirCli.Enabled := not bImprimirCli.Enabled;
end;

procedure TPedido_RepresentantesSimp.bSelNenhumCofClick(Sender: TObject);
begin
      if PageControl1.ActivePageIndex = 0 then Seleciona(false, Grade);
      if PageControl1.ActivePageIndex = 1 then Seleciona(false, GradeConf);
      if PageControl1.ActivePageIndex = 2 then Seleciona(false, GradeSep);
      if PageControl1.ActivePageIndex = 3 then Seleciona(false, GradeFat);
      if PageControl1.ActivePageIndex = 4 then Seleciona(false, GradeDesp);
end;

procedure TPedido_RepresentantesSimp.bEnviarCliClick(Sender: TObject);
var
   mPasta:string;
begin
      bEnviarCli.Enabled   := not bEnviarCli.Enabled;
      bImprimirCli.Enabled := not bImprimirCli.Enabled;
      Screen.Cursor        := crHourGlass;

      with tTemp do begin
           if GradeSep.SelectedRows.Count = 0 then begin
              MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
              bEnviarCli.Enabled   := not bEnviarCli.Enabled;
              bImprimirCli.Enabled := not bImprimirCli.Enabled;
              Screen.Cursor := crDefault;
              Abort;
           end;
      end;

      // Envia apenas os pedidos selecionados.
      FiltraPed(2);

      with Dados do begin
           mPasta := Trim(ConfiguracaoPasta_Boleto.asString) + '\'+removecaracter('/', '', Trim(EmpresasRazao_Social.AsString));
           if EmpresasMatriz_Filial.AsBoolean = true then
              mPasta := mPasta + '_Matriz\'
           else
              mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger)+'\';
           mPasta := mPasta+'Pedidos_Venda\';

           if not DirectoryExists(mPasta) then ForceDirectories(mPasta);

           mPasta := mPasta+'Pedido.pdf';
      end;

      rPedido.DeviceType       := dtPDF;
      rPedido.AllowPrintToFile := True;
      rPedido.TextFileName     := mPasta;
      rPedido.ShowPrintDialog  := False;
      rPedido.print;
      rPedido.FreeOnRelease;
      rPedido.Reset;
      rPedido.DeviceType       := dtScreen;
      rPedido.AllowPrintToFile := false;

      // Envia email com os pdf dos pedidos.
      EnviarEmailCli;

      if not mErro then begin
         Showmessage('E-Mails enviados para os clientes.');
      end;

      bEnviarCli.Enabled   := not bEnviarCli.Enabled;
      bImprimirCli.Enabled := not bImprimirCli.Enabled;
      Screen.Cursor        := crDefault;
end;

procedure TPedido_RepresentantesSimp.bEnviarSepClick(Sender: TObject);
var
   mPasta:string;
begin
      if Grade.SelectedRows.Count = 0 then begin
         MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
         Abort;
      end;
      bEnviarSep.Enabled   := not bEnviarSep.Enabled;
      bImprimirSep.Enabled := not bImprimirSep.Enabled;
      Screen.Cursor        := crHourGlass;

      // Envia apenas os pedidos selecionados.
      FiltraPed(0);

      with Dados do begin
           mPasta := Trim(ConfiguracaoPasta_Boleto.asString) + '\'+Trim(stringreplace(EmpresasRazao_Social.AsString,'/', '',[rfReplaceAll]));
           if EmpresasMatriz_Filial.AsBoolean = true then
              mPasta := mPasta + '_Matriz\'
           else
              mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger)+'\';
           mPasta := mPasta+'Romaneio_Carga\';
           if not DirectoryExists(mPasta) then ForceDirectories(mPasta);
           mPasta := mPasta+'Romaneio_Carga.pdf';
      end;
       rRomaneio.DeviceType       := dtPDF;
       rRomaneio.AllowPrintToFile := True;
       rRomaneio.TextFileName     := mPasta;
       rRomaneio.ShowPrintDialog  := False;
       rRomaneio.print;
       rRomaneio.FreeOnRelease;
       rRomaneio.Reset;
       rRomaneio.DeviceType       := dtScreen;
       rRomaneio.AllowPrintToFile := false;

      // Envia email com os pdf dos romaneios.
      if cEnviarEmail.Checked then begin
         EnviarEmail;
      end else begin
         GerarLog(Menu_Principal.mUsuarioCodigo, 'PedidosRepresentantes', 'SEPARAÇÃO' , 'Local', 'Envio de Pedido para separação (Sem E-Mail)', '1', '2', '');
      end;
      if not mErro then begin
         with tTemp do begin
              sql.Clear;
              sql.Add('update PedidosRepresentantes set Sel                    = 0');
              sql.Add('                                ,Aguardando_Conferencia = 1');
              sql.Add('                                ,Local                  = 2');
              sql.Add('                                ,Situacao               = ''EM SEPARAÇÃO'' ');
              sql.Add('                                ,Data_Conferencia       = getdate()');
              sql.Add('                                ,Usuario                = '+quotedstr(Menu_Principal.mUsuarioCodigo));
              sql.Add('where Pedido in ('+PegaSel(Grade)+')');
              sql.Add('and Local = 1');
              execute;
         end;
         PedidosRep.Refresh;
         tConferencia.Refresh;
      end;
      Screen.Cursor := crDefault;
      bEnviarSep.Enabled   := not bEnviarSep.Enabled;
      bImprimirSep.Enabled := not bImprimirSep.Enabled;
end;

procedure TPedido_RepresentantesSimp.bFiltroPedClick(Sender: TObject);
begin
      PedidosRepresentantes_FiltroFat:= TPedidosRepresentantes_FiltroFat.create(Self);
      PedidosRepresentantes_FiltroFat.caption           := '  Filtros para Faturamento';
      PedidosRepresentantes_FiltroFat.gDest.ItemIndex   := mDest;
      PedidosRepresentantes_FiltroFat.gCli.ItemIndex    := mCli;
      PedidosRepresentantes_FiltroFat.gICMSOp.ItemIndex := mICMSOp;
      PedidosRepresentantes_FiltroFat.gICMSSt.ItemIndex := mICMSST;
      PedidosRepresentantes_FiltroFat.gTrans.ItemIndex  := mTrans;
      PedidosRepresentantes_FiltroFat.showmodal;
      FiltraTodos('Data');
end;

procedure TPedido_RepresentantesSimp.bImprimirSepClick(Sender: TObject);
var
   mSel:boolean;
begin
      // Imprime apenas pedidos selecionados.
      mSel := true;
      with PageControl1 do begin
           if (ActivePageIndex = 0) and (Grade.SelectedRows.Count     = 0) then mSel := false;
           if (ActivePageIndex = 1) and (GradeConf.SelectedRows.Count = 0) then mSel := false;
           if (ActivePageIndex = 2) and (GradeSep.SelectedRows.Count  = 0) then mSel := false;
           if (ActivePageIndex = 3) and (GradeAg.SelectedRows.Count   = 0) then mSel := false;
           if (ActivePageIndex = 4) and (GradeFat.SelectedRows.Count  = 0) then mSel := false;
           if (ActivePageIndex = 5) and (GradeDesp.SelectedRows.Count = 0) then mSel := false;
      end;
      if not mSel then begin
         messagedlg('Nenhum pedido selecionado para impressão!', mtinformation, [mbok], 0);
         abort;
      end;
      // Imprime apenas pedidos selecionados.
      FiltraPed(PageControl1.ActivePageIndex);
      if tPedidos.RecordCount = 0 then begin
         messagedlg('Nenhum pedido selecionado para impressão!', mtinformation, [mbok], 0);
         Abort;
      end;
      bEnviarSep.Enabled   := not bEnviarSep.Enabled;
      bImprimirSep.Enabled := not bImprimirSep.Enabled;
      if not DirectoryExists('c:\faturamento') then begin
         CreateDir('c:\Faturamento');
      end;
      with rRomaneio do begin
           if not cExcel.Checked then begin
              AllowPrintToArchive := false;
              AllowPrintToFile    := false;
              DeviceType          := 'Screen';
              Print;
              Reset;
              FreeOnRelease;
           end else begin
              OpenFile                  := true;
              AllowPrintToArchive       := true;
              AllowPrintToFile          := true;
              DeviceType                := 'XlsxReport';
              XLSSettings.AppName       := 'Cybersoft - ERP Importa';
              XLSSettings.Author        := 'Cybersoft';
              XLSSettings.Title         := 'Romaneio';
              XLSSettings.WorksheetName := 'Romaneio';
              ArchiveFileName           := 'c:\faturamento\Romaneio_Pedido_Venda.xlsx';
              TextFileName              := 'c:\faturamento\Romaneio_Pedido_Venda.xlsx';
              ShowPrintDialog           := false;
              Print;
              Reset;
              FreeOnRelease;
           end;
      end;
      bEnviarSep.Enabled   := not bEnviarSep.Enabled;
      bImprimirSep.Enabled := not bImprimirSep.Enabled;
end;

procedure TPedido_RepresentantesSimp.FiltraPed(Local: integer);
begin
      Local := Local + 1;
      with tPedidos do begin
           sql.Clear;
           sql.add('select Numero = Pedido');
           sql.add('      ,Data');
           sql.add('      ,Representante_Cod    = Representante');
           sql.add('      ,Representante_Nome   = (select Nome from Fornecedores where Representante_Codigo = Representante)');
           sql.add('      ,Representante_Pessoa = iif((select isnull(CNPJ, '''') from Fornecedores where Representante_Codigo = Representante) <> '''', ''J'', ''F'')');
           sql.add('      ,Modalidade = (select Descricao from Cybersoft_Cadastros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)');
           sql.add('      ,Modalidade_Pagamento');
           sql.add('      ,Parcelas   = (select Numero_Parcelas from Cybersoft_Cadastros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)');
           sql.add('      ,Ordem_Compra');
           sql.add('      ,Cliente');
           sql.add('      ,Cliente_Nome');
           sql.add('      ,Cliente_CNPJ = isnull(Cliente_CNPJ, '''')+isnull(Cliente_CPF, '''')');
           sql.add('      ,Cliente_IE   = iif(Cliente_IE = '''', ''ISENTO'', Cliente_IE)');
           sql.add('      ,Cliente_Rua');
           sql.add('      ,Cliente_RuaNumero');
           sql.add('      ,Cliente_Bairro');
           sql.add('      ,Cliente_MunicipioNome');
           sql.add('      ,Cliente_Estado');
           sql.add('      ,Cliente_CEP');
           sql.add('      ,Cliente_Telefone');
           sql.add('      ,Transp_Nome      = (select Nome From Fornecedores where Codigo = Transportador)');
           sql.add('      ,Transp_CNPJ      = (select CNPJ From Fornecedores where Codigo = Transportador)');
           sql.add('      ,Transp_IE        = isnull((select Inscricao_Estadual From Fornecedores where Codigo = Transportador), ''ISENTO'')');
           sql.add('      ,Transp_Rua       = (select Rua From Fornecedores where Codigo = Transportador)');
           sql.add('      ,Transp_RuaNumero = (select Rua_Numero From Fornecedores where Codigo = Transportador)');
           sql.add('      ,Transp_Bairro    = (select Bairro From Fornecedores where Codigo = Transportador)');
           sql.add('      ,Transp_Municipio = (select Municipio From Fornecedores where Codigo = Transportador)');
           sql.add('      ,Transp_Estado    = (select Estado From Fornecedores where Codigo = Transportador)');
           sql.add('      ,Transp_CEP       = (select CEP From Fornecedores where Codigo = Transportador)');
           sql.add('      ,Transp_Telefone  = (select Telefone1 From Fornecedores where Codigo = Transportador)');
           sql.Add('      ,Pessoa           = iif(isnull(Cliente_CNPJ, '''') <> '''', ''J'', ''F'')');
           sql.Add('      ,Observacao       = Inf_Complementares2');
           sql.Add('      ,Vendedor');
           sql.Add('      ,Total_Pedido');
           sql.add('      ,Recebedor_Entrega = (select Recebedor_Entrega from Clientes where Codigo = Cliente)');
           sql.add('      ,CNPJ_Entrega      = (select CNPJ_Entrega from Clientes where Codigo = Cliente)');
           sql.add('      ,IE_Entrega        = isnull((select IE_Entrega from Clientes where Codigo = Cliente), ''ISENTO'')');
           sql.add('      ,Rua_Entrega       = (select Rua_Entrega from Clientes where Codigo = Cliente)');
           sql.add('      ,Rua_EntregaNumero = (select Rua_EntregaNumero from Clientes where Codigo = Cliente)');
           sql.add('      ,Bairro_Entrega    = (select Bairro_Entrega from Clientes where Codigo = Cliente)');
           sql.add('      ,Municipio_Entrega = (select Municipio_Entrega from Clientes where Codigo = Cliente)');
           sql.add('      ,Estado_Entrega    = (select Estado_Entrega from Clientes where Codigo = Cliente)');
           sql.add('      ,CEP_Entrega       = (select CEP_Entrega from Clientes where Codigo = Cliente)');
           sql.add('      ,Telefone_Entrega  = (select Telefone_Entrega from Clientes where Codigo = Cliente)');
           sql.add('      ,Horario_Entrega   = (select Horario_Entrega from Clientes where Codigo = Cliente)');
           sql.add('      ,Faturado');
           sql.add('from PedidosRepresentantes');
           case Local of
                1: sql.Add('where Pedido in ('+PegaSel(Grade)+')');
                2: sql.Add('where Pedido in ('+PegaSel(GradeConf)+')');
                3: sql.Add('where Pedido in ('+PegaSel(GradeSep)+')');
                4: sql.Add('where Pedido in ('+PegaSel(GradeAg)+')');
                5: sql.Add('where Pedido in ('+PegaSel(GradeFat)+')');
                6: sql.Add('where Pedido in ('+PegaSel(GradeDesp)+')');
           end;
           sql.Add('and Local = '+inttostr(Local));
           sql.add('Order By Numero');
           //sql.SaveToFile('c:\temp\Impressao_Pedidos.sql');
           open;
           if FileExists(Dados.Empresas.FieldByName('Logo').asstring) then begin
              if Local = 1 then
                 iLogo.Picture.LoadFromFile(Dados.Empresas.FieldByName('Logo').asstring)
              else
                 iLogo2.Picture.LoadFromFile(Dados.Empresas.FieldByName('Logo').asstring)
           end;
      end;
end;

procedure TPedido_RepresentantesSimp.cArmazemClick(Sender: TObject);
begin
      cEmail.Text := tForn.FieldByName('Email').AsString;
end;

procedure TPedido_RepresentantesSimp.cFiltroArmClick(Sender: TObject);
begin
     FiltraTodos('Data');
end;

procedure TPedido_RepresentantesSimp.cFiltroClienteClick(Sender: TObject);
begin
     FiltraTodos('Data');
end;

procedure TPedido_RepresentantesSimp.cDataChange(Sender: TObject);
begin
     FiltraTodos('Data');
//     FiltraDespachados('Data_Despacho');
end;

procedure TPedido_RepresentantesSimp.cOrigemClick(Sender: TObject);
begin
     FiltraTodos('Data');
end;

procedure TPedido_RepresentantesSimp.cPesqArmClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Fornecedores';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Ativo = 1'+
                                'and Codigo in(select distinct Armazem from PedidosRepresentantes)';
      PesquisaGerais.Showmodal;
      if trim(Clipboard.AsText) <> '' then begin
         cFiltroArm.KeyValue := Clipboard.AsText;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeSepCellClick(Column: TColumn);
begin
      if not mSel then begin
         mSel  := true;
         mCont := GradeSep.DataSource.DataSet.RecNo;
      end;
//      FiltraItens(GradeSep.DataSource.DataSet.FieldByName('Pedido').AsString);
end;

procedure TPedido_RepresentantesSimp.GradeSepDblClick(Sender: TObject);
begin
     bGerarPedClick(self);
end;

procedure TPedido_RepresentantesSimp.GradeSepKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      with GradeSep do begin
           if (mSel) and (Key = 16) and (DataSource.DataSet.RecNo > mCont) then begin
              Enabled := false;
              DataSource.DataSet.DisableControls;
              mContFinal := DataSource.DataSet.RecNo;
              DataSource.DataSet.RecNo := mCont;
              Repeat
                   SelectedRows.CurrentRowSelected := true;
                   DataSource.DataSet.Next
              until
                   (DataSource.DataSet.RecNo = mContFinal) or (DataSource.DataSet.Eof);
                   
              mContfinal := 0;
              mSel       := false;
           end;
           DataSource.DataSet.EnableControls;
           Enabled := true;
      end;
end;

procedure TPedido_RepresentantesSimp.DBGrid1TitleClick(Column: TColumn);
begin
      FiltraTodos(Column.FieldName);
end;

procedure TPedido_RepresentantesSimp.DBGrid2TitleClick(Column: TColumn);
begin
     FiltraTodos(Column.FieldName);
end;

procedure TPedido_RepresentantesSimp.DBGrid3TitleClick(Column: TColumn);
begin
     FiltraTodos(Column.FieldName);
end;

procedure TPedido_RepresentantesSimp.bFaturadoClick(Sender: TObject);
begin
     if GradeSep.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     if MessageDlg('Deseja enviar os pedidos para faturados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     end;
     with tPedidos do begin
          sql.clear;
          sql.Add('update PedidosRepresentantes set Local = 5');
          sql.Add('                                ,Situacao = ''FATURADO'' ');
          sql.Add('                                ,Sel = 0');
          sql.Add('                                ,Faturado = 1');
          sql.Add('                                ,Data_Faturamento = getdate()');
          sql.Add('                                ,Usuario = '+quotedstr(Menu_Principal.mUsuarioCodigo));
          sql.Add('where Pedido in ('+PegaSel(GradeSep)+')');
          execute;
     end;
     tSeparados.Refresh;
end;

procedure TPedido_RepresentantesSimp.bAlterarClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex < 3 then begin
        Pedido_RepresentanteAltera := TPedido_RepresentanteAltera.create(Self);
        Pedido_RepresentanteAltera.caption := Caption;
        case PageControl1.ActivePageIndex of
             0: Pedido_RepresentanteAltera.mPedido := PedidosRep.Fieldbyname('Pedido').asstring;
             1: Pedido_RepresentanteAltera.mPedido := tConferencia.Fieldbyname('Pedido').asstring;
             2: Pedido_RepresentanteAltera.mPedido := tSeparados.Fieldbyname('Pedido').asstring;
        end;
        Pedido_RepresentanteAltera.showmodal;
     end;
     case PageControl1.ActivePageIndex of
          0: PedidosRep.Refresh;
          1: tConferencia.Refresh;
          2: tSeparados.Refresh;
     end;
end;

procedure TPedido_RepresentantesSimp.bCancLibClick(Sender: TObject);
begin
     if Grade.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     if MessageDlg('Deseja realmente voltar os pedidos para a situação anterior?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     end;
     with tTemp do begin
          sql.Clear;
          sql.Add('update PedidosRepresentantes set Situacao         = ''AGUARDANDO'' ');
          sql.Add('                                ,Gerar_Pedido     = 0');
          sql.Add('                                ,Sel              = 0');
          sql.Add('                                ,Local            = 0');
          sql.Add('                                ,Liberado         = 0');
          sql.Add('                                ,Data_Liberacao   = null');
          sql.add('                                ,Data_Conferencia = null');
          sql.add('                                ,Data_Faturamento = null');
          sql.add('                                ,Data_Separacao   = null');
          sql.add('                                ,Data_Despacho    = null');
          sql.add('                                ,Usuario          = '+quotedstr(Menu_Principal.mUsuarioCodigo));
          sql.Add('where Pedido in ('+PegaSel(Grade)+')');
          sql.Add('and local = 1');
          Execute;
          PedidosRep.Refresh;
     end;
end;

procedure TPedido_RepresentantesSimp.bCancSepClick(Sender: TObject);
begin
     if GradeSep.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     if MessageDlg('Deseja realmente voltar os pedidos para a situação anterior?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     end;
     with tTemp do begin
          sql.Clear;
          sql.Add('update PedidosRepresentantes set Situacao         = ''EM SEPARAÇÃO'' ');
          sql.Add('                                ,Gerar_Pedido     = 0');
          sql.Add('                                ,Sel              = 0');
          sql.Add('                                ,Local            = 2');
          sql.Add('                                ,Liberado         = 0');
          sql.add('                                ,Data_Conferencia = null');
          sql.add('                                ,Data_Faturamento = null');
          sql.add('                                ,Data_Separacao   = null');
          sql.add('                                ,Data_Despacho    = null');
          sql.add('                                ,Usuario          = '+quotedstr(Menu_Principal.mUsuarioCodigo));
          sql.Add('where Pedido in ('+PegaSel(GradeSep)+')');
          sql.Add('and Local = 3');
          Execute;
          tSeparados.Refresh;
          tConferencia.Refresh;
     end;
end;

procedure TPedido_RepresentantesSimp.bDespachadoClick(Sender: TObject);
begin
     if GradeFat.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhum pedido selecionado!', mtinformation, [mbok], 0) ;
        Abort;
     end;
     with tTemp do begin
          if MessageDlg('Deseja realmente despachar os pedidos?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
             Abort;
          end;
          // Mudando o status dos pedidos.
          with tPedidos do begin
               sql.clear;
               sql.Add('update PedidosRepresentantes set Local = 6');
               sql.Add('                                ,Situacao = ''DESPACHADO'' ');
               sql.Add('                                ,Sel = 0');
               sql.Add('                                ,Data_Despacho = getdate()');
               sql.Add('                                ,Usuario = '+quotedstr(Menu_Principal.mUsuarioCodigo));
               sql.Add('where Pedido in ('+PegaSel(GradeFat)+')');
               sql.Add('and Local = 5');
               execute;
          end;
          GerarLog(Menu_Principal.mUsuarioCodigo, 'PedidosRepresentantes', 'DESPACHO' , 'Pedido', 'Envio de pedidos para expedição', '3', '4', '');
          tFaturados.Refresh;
          tDespachados.Refresh;
     end;
end;

procedure TPedido_RepresentantesSimp.bDevolucaoClick(Sender: TObject);
begin
     if tFaturados.Fieldbyname('Pedido').asstring <> '' then begin
        Pedido_RepresentanteDevolucao := TPedido_RepresentanteDevolucao.create(Self);
        Pedido_RepresentanteDevolucao.caption := Caption;
        Pedido_RepresentanteDevolucao.mPedido := tFaturados.Fieldbyname('Pedido').asstring;
        Pedido_RepresentanteDevolucao.showmodal;
     end;
end;

procedure TPedido_RepresentantesSimp.Seleciona(pSel: boolean; pGrade: TDBGrid);
var
   l:integer;
begin
     pGrade.Enabled := false;
     with pGrade.DataSource.DataSet do begin
          DisableControls;
          first;
          for l := 0 to pred(RecordCount) do begin
              pGrade.SelectedRows.CurrentRowSelected := pSel;
              next;
          end;
          EnableControls;
          pGrade.SelectedRows.Refresh;
     end;
     pGrade.Enabled := true;
end;

procedure TPedido_RepresentantesSimp.SpeedButton1Click(Sender: TObject);
begin
      cData.Text := '';
end;

procedure TPedido_RepresentantesSimp.SpeedButton2Click(Sender: TObject);
begin
     cAno.Clear;
     FiltraTodos('Data');
end;

procedure TPedido_RepresentantesSimp.SpeedButton3Click(Sender: TObject);
begin
     FiltraTodos('Data');
end;

procedure TPedido_RepresentantesSimp.tAguardandoAfterScroll(DataSet: TDataSet);
begin
      FiltraItens(GradeAg.DataSource.DataSet.FieldByName('Pedido').AsString);
end;

procedure TPedido_RepresentantesSimp.tConferenciaAfterScroll(DataSet: TDataSet);
begin
      FiltraItens(GradeConf.DataSource.DataSet.FieldByName('Pedido').AsString);
end;

procedure TPedido_RepresentantesSimp.tDespachadosAfterScroll(DataSet: TDataSet);
begin
      FiltraItens(GradeDesp.DataSource.DataSet.FieldByName('Pedido').AsString);
end;

procedure TPedido_RepresentantesSimp.tFaturadosAfterScroll(DataSet: TDataSet);
begin
      FiltraItens(GradeFat.DataSource.DataSet.FieldByName('Pedido').AsString);
end;

procedure TPedido_RepresentantesSimp.tSeparadosAfterScroll(DataSet: TDataSet);
begin
      FiltraItens(GradeSep.DataSource.DataSet.FieldByName('Pedido').AsString);
end;

procedure TPedido_RepresentantesSimp.bLimparUsuClick(Sender: TObject);
begin
     cUsuario.KeyValue := null;
     FiltraTodos('Data');
end;

procedure TPedido_RepresentantesSimp.bPesqCliClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Clientes';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Ativo = 1'+
                                'and Codigo in(select distinct Cliente from PedidosRepresentantes)';
      PesquisaGerais.Showmodal;
      if trim(Clipboard.AsText) <> '' then begin
         cFiltroCliente.KeyValue := Clipboard.AsText;
      end;
end;

procedure TPedido_RepresentantesSimp.bPesquisaClick(Sender: TObject);
begin
     if (trim(cPedido.Text) <> '') or (trim(cOrdem.Text) <> '') then begin
        Pesquisa(cPedido.Text, cOrdem.Text);
     end;
end;

procedure TPedido_RepresentantesSimp.Pesquisa(Campo1,Campo2: string);
begin
      cOrigem.ItemIndex := 0;
      with tTemp2 do begin
           sql.clear;
           sql.add('select Pedido');
           sql.Add('      ,Local');
           sql.Add('      ,Usuario');
           sql.Add('      ,Data_Despacho');
           sql.Add('from PedidosRepresentantes');
           sql.Add('where Local > 0');
           sql.Add('and '+iif(Campo1 = '', 'Ordem_Compra', 'Pedido')+' like '+quotedstr('%'+iif(Campo1 = '', Campo2, Campo1)+'%'));
           open;
           cUsuario.KeyValue := null;
           if fieldbyname('Local').asinteger = 6 then begin
              cData.Date := fieldbyname('Data_Despacho').AsDateTime;
              FiltraDespachados('Data_Despacho');
           end else begin
              FiltraTodos('Data');
           end;
           if fieldbyname('Local').AsInteger = 1 then PedidosRep.Locate  ('Pedido', fieldbyname('Pedido').asstring, [loCaseInsensitive]);
           if fieldbyname('Local').AsInteger = 2 then tConferencia.Locate('Pedido', fieldbyname('Pedido').asstring, [loCaseInsensitive]);
           if fieldbyname('Local').AsInteger = 3 then tSeparados.Locate  ('Pedido', fieldbyname('Pedido').asstring, [loCaseInsensitive]);
           if fieldbyname('Local').AsInteger = 4 then tAguardando.Locate ('Pedido', fieldbyname('Pedido').asstring, [loCaseInsensitive]);
           if fieldbyname('Local').AsInteger = 5 then tFaturados.Locate  ('Pedido', fieldbyname('Pedido').asstring, [loCaseInsensitive]);
           if fieldbyname('Local').AsInteger = 6 then tDespachados.Locate('Pedido', fieldbyname('Pedido').asstring, [loCaseInsensitive]);
           case fieldbyname('Local').AsInteger of
                1: PageControl1.ActivePageIndex := 0;
                2: PageControl1.ActivePageIndex := 1;
                3: PageControl1.ActivePageIndex := 2;
                4: PageControl1.ActivePageIndex := 3;
                5: PageControl1.ActivePageIndex := 4;
                6: PageControl1.ActivePageIndex := 5;
           end;
      end;
end;

procedure TPedido_RepresentantesSimp.bLimparArmClick(Sender: TObject);
begin
     cFiltroArm.KeyValue := null;
     FiltraTodos('Data');
end;

procedure TPedido_RepresentantesSimp.bLimparCliClick(Sender: TObject);
begin
     cFiltroCliente.KeyValue := null;
     FiltraTodos('Data');
end;

procedure TPedido_RepresentantesSimp.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI:TIniFile;
begin
      // Salvando as ultimas opções utilizadas como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      if cArmazem.keyvalue = null then
         aINI.WriteString( 'ENVIO_ROMANEIO', 'Armazem', '')
      else
         aINI.WriteString( 'ENVIO_ROMANEIO', 'Armazem', cArmazem.KeyValue);
      aINI.WriteString( 'ENVIO_ROMANEIO', 'Email'  , cEmail.Text);
      aINI.WriteInteger( 'FILTRO_ANO', 'Ano'  , cAno.value);
      aIni.Free;
      cCopia.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'ImportaRomaneio_Mail.ini');

      FecharTabelas(Dados, nil, nil, nil);
      Pedido_RepresentantesSimp.release;
      Pedido_RepresentantesSimp := nil;
      Timer1.Enabled := false;
end;

procedure TPedido_RepresentantesSimp.FormCreate(Sender: TObject);
begin
      if (Screen.Width < width) then ScaleBy(Screen.Width, width+50);
      TabSheet7.TabVisible := false;
      if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
      mDest   := 0;
      mCli    := 0;
      mICMSOp := 0;
      mICMSSt := 0;
      mTrans  := 0;
end;

procedure TPedido_RepresentantesSimp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if TeclaPressionada(VK_MENU) and TeclaPressionada(72) then Begin
        TabSheet7.TabVisible := not TabSheet7.TabVisible;
     end;
end;

procedure TPedido_RepresentantesSimp.FormShow(Sender: TObject);
Var
   aINI:TIniFile;
   i:integer;
begin
      cData.Date := Date();
      cAno.Value := 0;
      // Carregando as ultimas opções utilizadas como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cArmazem.keyvalue := aINI.ReadString('ENVIO_ROMANEIO', 'Armazem', '');
      cEmail.text       := aINI.ReadString('ENVIO_ROMANEIO', 'Email'  , '');
      cAno.value        := aINI.ReadInteger('FILTRO_ANO', 'Ano'  , 0);
      aIni.Free;
      if fileexists(ExtractFilePath(Application.ExeName)+'ImportaRomaneio_Mail.ini') then begin
         cCopia.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'ImportaRomaneio_Mail.ini');
      end;

      with Dados do begin
           Configuracao.Open;
           Timer1.Interval := (60000 * ConfiguracaoTempo_RefreshRep.AsInteger);
           Timer1.Enabled  := ConfiguracaoTempo_RefreshRep.AsInteger > 0;
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas where Codigo = '+inttostr(Menu_Principal.mEmpresa));
                open;
           end;
           with Usuarios do begin
                sql.Clear;
                sql.Add('select * from Usuarios where Ativo = 1');
                open;
                cUsuario.KeyValue := Menu_Principal.mUsuarioCodigo;
           end;
           with tClientes do begin
                sql.Clear;
                sql.Add('select *');
                sql.add('from  Clientes');
                sql.add('where Ativo = 1');
                sql.add('and   Codigo in(select distinct Cliente from PedidosRepresentantes)');
                open;
                cFiltroCliente.KeyValue := null;
           end;
           with tTemp do begin
                sql.Clear;
                sql.add('select PedidoRep_VerLib');
                sql.Add('      ,PedidoRep_VerCof');
                sql.Add('      ,PedidoRep_VerSep');
                sql.Add('      ,PedidoRep_VerAgFat');
                sql.Add('      ,PedidoRep_VerFat');
                sql.Add('      ,PedidoRep_VerDesp');
                sql.Add('      ,PedidoRep_AlterarPed');
                sql.Add('from Cybersoft_Cadastros.dbo.Usuarios');
                sql.Add('where Matricula = '+quotedstr(Menu_Principal.mUsuarioCodigo));
                open;
                with PageControl1 do begin
                     Pages[0].TabVisible := fieldbyname('PedidoRep_VerLib').asboolean;
                     Pages[1].TabVisible := fieldbyname('PedidoRep_VerCof').asboolean;
                     Pages[2].TabVisible := fieldbyname('PedidoRep_VerSep').asboolean;
                     Pages[3].TabVisible := fieldbyname('PedidoRep_VerAgFat').asboolean;
                     Pages[4].TabVisible := fieldbyname('PedidoRep_VerFat').asboolean;
                     Pages[5].TabVisible := fieldbyname('PedidoRep_VerDesp').asboolean;
                     for i := pred(PageCount) downto 0 do begin
                         if Pages[i].TabVisible then ActivePageIndex := i;
                     end;
//                     bAlterar.Tag     := iif(fieldbyname('PedidoRep_VerFat').asboolean, 0, 1);
//                     bAlterar.Enabled := bAlterar.Tag = 0;
                     bAlterar.Enabled := fieldbyname('PedidoRep_AlterarPed').asboolean;
                end;
           end;
           //FiltraTodos('Data');
           with tForn do begin
                sql.Clear;
                sql.Add('select Nome');
                sql.Add('      ,CNPJ');
                sql.Add('      ,Email');
                sql.Add('from  Fornecedores');
                sql.Add('where isnull(Ativo, 0) = 1');
                sql.add('and (select Descricao from RamoAtividade where Codigo = Ramo_Atividade) like ''%ARMAZ%'' ');
                //sql.SaveToFile('c:\temp\Conferencia_Representante.sql');
                open;
           end;
           with tArmazem do begin
                sql.Clear;
                sql.Add('select Nome');
                sql.Add('      ,CNPJ');
                sql.Add('      ,Email');
                sql.Add('      ,Codigo');
                sql.Add('from  Fornecedores');
                sql.Add('where isnull(Ativo, 0) = 1');
                sql.add('and (select Descricao from RamoAtividade where Codigo = Ramo_Atividade) like ''%ARMAZ%'' ');
                //sql.SaveToFile('c:\temp\Conferencia_Representante.sql');
                open;
           end;

           bGerarPed.Enabled                := not ConfiguracaoTela_LiberaPedidos.AsBoolean;
           bGerarFin.Enabled                := ConfiguracaoTela_LiberaPedidos.AsBoolean;
           bCancFat.Enabled                 := ConfiguracaoTela_LiberaPedidos.AsBoolean;
           PageControl1.Pages[3].TabVisible := not ConfiguracaoTela_LiberaPedidos.AsBoolean;
           PageControl1.ActivePageIndex     := 0;
           FiltraItens(Grade.DataSource.DataSet.FieldByName('Pedido').AsString);
      end;
end;

procedure TPedido_RepresentantesSimp.GradeAgCellClick(Column: TColumn);
begin
      if not mSel then begin
         mSel  := true;
         mCont := GradeAg.DataSource.DataSet.RecNo;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeAgKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      with GradeAg do begin
           if (mSel) and (Key = 16) and (DataSource.DataSet.RecNo > mCont) then begin
              Enabled := false;
              DataSource.DataSet.DisableControls;
              mContFinal := DataSource.DataSet.RecNo;
              DataSource.DataSet.RecNo := mCont;
              Repeat
                   SelectedRows.CurrentRowSelected := true;
                   DataSource.DataSet.Next
              until
                   (DataSource.DataSet.RecNo = mContFinal) or (DataSource.DataSet.Eof);
                   
              mContfinal := 0;
              mSel       := false;
           end;
           DataSource.DataSet.EnableControls;
           Enabled := true;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeBxCellClick(Column: TColumn);
begin
      if not mSel then begin
         mSel  := true;
         mCont := GradeBX.DataSource.DataSet.RecNo;
      end;
      FiltraItens(GradeBX.DataSource.DataSet.FieldByName('Pedido').AsString);
end;

procedure TPedido_RepresentantesSimp.GradeCellClick(Column: TColumn);
begin
      if not mSel then begin
         mSel  := true;
         mCont := Grade.DataSource.DataSet.RecNo;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeConfCellClick(Column: TColumn);
begin
      if not mSel then begin
         mSel  := true;
         mCont := GradeConf.DataSource.DataSet.RecNo;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeConfKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      with GradeConf do begin
           if (mSel) and (Key = 16) and (DataSource.DataSet.RecNo > mCont) then begin
              DataSource.DataSet.DisableControls;
              Enabled := false;
              mContFinal := DataSource.DataSet.RecNo;
              DataSource.DataSet.RecNo := mCont;
              Repeat
                   SelectedRows.CurrentRowSelected := true;
                   DataSource.DataSet.Next
              until
                   (DataSource.DataSet.RecNo = mContFinal) or (DataSource.DataSet.Eof);
           end;
           mContfinal := 0;
           mSel       := false;
           DataSource.DataSet.EnableControls;
           Enabled := true;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeDespCellClick(Column: TColumn);
begin
      if not mSel then begin
         mSel  := true;
         mCont := GradeDesp.DataSource.DataSet.RecNo;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeDespKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      with GradeDesp do begin
           if (mSel) and (Key = 16) and (DataSource.DataSet.RecNo > mCont) then begin
              DataSource.DataSet.DisableControls;
              Enabled := false;
              mContFinal := DataSource.DataSet.RecNo;
              DataSource.DataSet.RecNo := mCont;
              Repeat
                   SelectedRows.CurrentRowSelected := true;
                   DataSource.DataSet.Next
              until
                   (DataSource.DataSet.RecNo = mContFinal) or (DataSource.DataSet.Eof);
           end;
           mContfinal := 0;
           mSel       := false;
           DataSource.DataSet.EnableControls;
           Enabled    := true;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeFatCellClick(Column: TColumn);
begin
      if not mSel then begin
         mSel  := true;
         mCont := GradeFat.DataSource.DataSet.RecNo;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeFatKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      with GradeFat do begin
           if (mSel) and (Key = 16) and (DataSource.DataSet.RecNo > mCont) then begin
              DataSource.DataSet.DisableControls;
              Enabled := false;
              mContFinal := DataSource.DataSet.RecNo;
              DataSource.DataSet.RecNo := mCont;
              Repeat
                   SelectedRows.CurrentRowSelected := true;
                   DataSource.DataSet.Next
              until
                   (DataSource.DataSet.RecNo = mContFinal) or (DataSource.DataSet.Eof);
           end;
           mContfinal := 0;
           mSel       := false;
           DataSource.DataSet.EnableControls;
           Enabled := true;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      with Grade do begin
           if (mSel) and (Key = 16) and (DataSource.DataSet.RecNo > mCont) then begin
              DataSource.DataSet.DisableControls;
              Enabled := false;
              mContFinal := DataSource.DataSet.RecNo;
              DataSource.DataSet.RecNo := mCont;
              Repeat
                   SelectedRows.CurrentRowSelected := true;
                   DataSource.DataSet.Next
              until
                   (DataSource.DataSet.RecNo = mContFinal) or (DataSource.DataSet.Eof);
           end;
           mContfinal := 0;
           mSel       := false;
           DataSource.DataSet.EnableControls;
           Enabled := true;
      end;
end;

procedure TPedido_RepresentantesSimp.GradeTitleClick(Column: TColumn);
begin
      FiltraTodos(Column.FieldName);
end;

procedure TPedido_RepresentantesSimp.PageControl1Change(Sender: TObject);
begin
     with PageControl1 do begin
//          bAlterar.Enabled := (ActivePageIndex < 3) and (bAlterar.Tag = 0);
          if ActivePageIndex = 0 then FiltraItens(Grade.DataSource.DataSet.FieldByName('Pedido').AsString);
          if ActivePageIndex = 1 then FiltraItens(GradeConf.DataSource.DataSet.FieldByName('Pedido').AsString);
          if ActivePageIndex = 2 then FiltraItens(GradeSep.DataSource.DataSet.FieldByName('Pedido').AsString);
          if ActivePageIndex = 3 then FiltraItens(GradeAg.DataSource.DataSet.FieldByName('Pedido').AsString);
          if ActivePageIndex = 4 then FiltraItens(GradeFat.DataSource.DataSet.FieldByName('Pedido').AsString);
          if ActivePageIndex = 5 then FiltraItens(GradeDesp.DataSource.DataSet.FieldByName('Pedido').AsString);
     end;
end;

procedure TPedido_RepresentantesSimp.ppHeaderBand1AfterPrint(Sender: TObject);
var
   c
  ,l
  ,p
  ,q
  ,NumParc
  ,PrazoPri
  ,PrazoDem
  ,DiaFixo
  ,mUltimoDia:integer;
   mLinha:string;
   mVenc:TDate;
   mValParc:real;
begin
      with tItens do begin
           sql.clear;
           sql.Add('select Item');
           sql.Add('      ,Codigo_Mercadoria');
           sql.add('      ,Descricao = rtrim((select replace(Descricao, ''<{''+cast(Codigo_Mercadoria as varchar(15))+''}>'', '''') from Produtos where Codigo = Codigo_Mercadoria))');
           sql.Add('      ,Quantidade');
           sql.Add('      ,Quantidade_Master = (select Quantidade_CaixaMaster from Produtos where Codigo = Codigo_Mercadoria)');
           sql.Add('      ,Unidade = (select Unidade from Produtos where Codigo = Codigo_Mercadoria)');
           sql.Add('      ,Volumes = Quantidade / iif((select isnull(Quantidade_CaixaMaster, 0) from Produtos where Codigo = Codigo_Mercadoria) >= 1, (select Quantidade_CaixaMaster from Produtos where Codigo = Codigo_Mercadoria), 1)');
           sql.Add('      ,Valor_Unitario');
           sql.Add('      ,Valor_Total = round(Valor_Unitario * Quantidade, 2)');
           sql.Add('from  PedidosRepresentantesItens');
           sql.Add('where Pedido = :pPed');
           sql.Add('order by Item, Codigo_Mercadoria');
           parambyname('pPed').value := tPedidos.FieldByName('Numero').Asstring;
           open;
      end;
      mParcelas.lines.clear;
      if tPedidos.FieldByName('Faturado').AsBoolean then begin
         with tTemp do begin
              sql.Clear;
              sql.Add('select Data_Vencimento, Valor_Parcela from PagarReceber where Fiscal = :pCod and Tipo = ''R'' ');
              parambyname('pCod').asstring:= tPedidos.FieldByName('Numero').Asstring;
              open;
              mParcelas.lines.clear;
              p := 1;
              while not eof do begin
                  mLinha := '';
                  for c := 1 to 4 do begin
                      mLinha := mLinha + FormatFloat('00', p)+':'+ datetostr(fieldbyname('Data_Vencimento').value)+' '+PadR(formatfloat('#,###,##0.00', fieldbyname('Valor_Parcela').ascurrency), 12)+iif(c<4, ' | ', '');
                      inc(p);
                      next;
                      if eof then Break;
                  end;
                  mParcelas.lines.Add(mLinha);
              end;
          end;    
      end else begin
          with tTemp do begin
               sql.clear;
               sql.add('select Numero_Parcelas');
               sql.add('      ,Prazo_Primeira');
               sql.add('      ,Prazo_Demais');
               sql.add('      ,Prazo_Dia');
               sql.Add('from Cybersoft_Cadastros.dbo.ModalidadesPagamento');
               sql.add('where Codigo = :pCod');
               parambyname('pCod').AsInteger := tPedidos.Fieldbyname('Modalidade_Pagamento').AsInteger;
               open;
               NumParc  := FieldByName('Numero_Parcelas').AsInteger;
               PrazoPri := FieldByName('Prazo_Primeira').AsInteger;
               PrazoDem := FieldByName('Prazo_Demais').AsInteger;
               DiaFixo  := FieldByName('Prazo_Dia').AsInteger;
          end;
          with tPedidos do begin
               mValParc := FieldByName('Total_Pedido').ascurrency / NumParc;
               mVenc    := strtodate(datetostr(FieldByName('Data').value)) + PrazoPri;
               mLinha   := '';
               c        := 1;
               if mValParc > 0 then begin
                  for p := 1 to NumParc do begin
                      if p > 1 then begin
                         mVenc := mVenc + PrazoDem;
                      end;
                      // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
                      if DiaFixo <= 0 then begin
                         if (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
                            if (DayOfWeek(mVenc) = 1) then begin
                               if (Dados.ConfiguracaoDia_Util.Value = '-') then
                                  mVenc := mVenc -2
                               else
                                  mVenc := mVenc +1;
                            end;
                            if (DayOfWeek(mVenc) = 7) then begin
                               If (Dados.ConfiguracaoDia_Util.Value = '-') then
                                  mVenc := mVenc -1
                               else
                                  mVenc := mVenc +2;
                            end;
                         end;
                      end else begin
                         if MonthOf(mVenc) < 12 then
                            mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/'+InttoStr(MonthOf(mVenc)+1)+'/'+InttoStr(YearOf(mVenc)))))
                         else
                            mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/01/'+InttoStr(YearOf(mVenc)+1))));
                         if p > 1 then begin
                            if mUltimoDia > DiaFixo then begin
                               if MonthOf(mVenc) < 12 then
                                  mVenc := StrtoDate(InttoStr(DiaFixo)+'/'+InttoStr(MonthOf(mVenc)+1)+'/'+InttoStr(YearOf(mVenc)))
                               else
                                  mVenc := StrtoDate(InttoStr(DiaFixo)+'/01/'+InttoStr(YearOf(mVenc)+1))
                            end else begin
                               if MonthOf(mVenc) < 12 then
                                  mVenc := StrtoDate(InttoStr(mUltimoDia)+'/'+InttoStr(MonthOf(mVenc)+1)+'/'+InttoStr(YearOf(mVenc)))
                               else
                                  mVenc := StrtoDate(InttoStr(mUltimoDia)+'/01/'+InttoStr(YearOf(mVenc)+1))
                            end;
                         end;
                      end;
                      mLinha := mLinha + FormatFloat('00', p)+':'+ datetostr(mVenc)+' '+PadR(formatfloat('#,###,##0.00', mValParc), 12)+iif(c < 4, ' | ', '');
                      if (c = 4) or (p = NumParc) then begin
                         mParcelas.lines.Add(mLinha);
                         mLinha := '';
                         c      := 1;
                      end else begin
                         Inc(c);
                      end;
                  end;
               end;
          end;
      end;
end;

procedure TPedido_RepresentantesSimp.ppHeaderBand1BeforePrint(Sender: TObject);
begin
     with tPedidos do begin
          pCliCNPJ.DisplayFormat := '##.###.###/####-##;0';
          if fieldbyname('Pessoa').asstring = 'F' then pCliCNPJ.DisplayFormat := '###.###.###-##;0';
     end;
end;

procedure TPedido_RepresentantesSimp.ppHeaderBand2AfterPrint(Sender: TObject);
begin
      with tItens do begin
           sql.clear;
           sql.Add('select Item');
           sql.Add('      ,Codigo_Mercadoria');
           sql.Add('      ,Descricao = (select substring(Descricao, 1, charindex(''<{'', Descricao)-1) from Produtos where Codigo = Codigo_Mercadoria)');
           sql.Add('      ,Quantidade');
           sql.Add('      ,Quantidade_Master = (select Quantidade_CaixaMaster from Produtos where Codigo = Codigo_Mercadoria)');
           sql.Add('      ,Unidade = (select Unidade from Produtos where Codigo = Codigo_Mercadoria)');
           sql.Add('      ,Volumes = Quantidade / iif((select isnull(Quantidade_CaixaMaster, 0) from Produtos where Codigo = Codigo_Mercadoria) >= 1, (select Quantidade_CaixaMaster from Produtos where Codigo = Codigo_Mercadoria), 1)');
           sql.Add('      ,Valor_Unitario');
           sql.Add('      ,Valor_Total = round(Valor_Unitario * Quantidade, 2)');
           sql.Add('from PedidosRepresentantesItens');
           sql.Add('where Pedido = :pPed');
           sql.Add('order by Item, Codigo_Mercadoria');
           parambyname('pPed').value := tPedidos.FieldByName('Numero').AsString;
           open;
      end;
end;

procedure TPedido_RepresentantesSimp.ppHeaderBand2BeforePrint(Sender: TObject);
begin
     with tPedidos do begin
          pCliCNPJ.DisplayFormat := '##.###.###/####-##;0';
          if fieldbyname('Pessoa').asstring = 'F' then pCliCNPJ.DisplayFormat := '###.###.###-##;0';
     end;
end;

procedure TPedido_RepresentantesSimp.cUsuarioClick(Sender: TObject);
begin
     FiltraTodos('Data');
end;

procedure TPedido_RepresentantesSimp.EnviarEmail;
Var
   IdSMTP1 : TIdSMTP;
   EmailMSG: TIdMessage;
   TextoMsg: TidText;
   IdSSL   : TIdSSLIOHandlerSocketOpenSSL;
   nAttach : TIdAttachment;
   i: integer;
   mMensagem
  ,mPasta
  ,mArq
  ,mNumeros: WideString;
   Stream1, Stream2 : TStream;
   img:TMemo;
begin
     mErro := true;
     if trim(cEmail.Text)+trim(cCopia.Text) = '' then Abort;

     Menu_Principal.IdAntiFreeze1.Active := true;

     with Dados do begin
          if (EmpresasEmail_Porta.AsInteger <= 0) then begin
             Showmessage('E-Mail não enviado : Falta informar a porta no cadastro de empresas.');
             Abort;
          end;
          if (Trim(EmpresasEmail_SMTP.AsString) = '') then begin
             Showmessage('E-Mail não enviado : Falta informar o Servidor de envio (SMTP) no cadastro de empresas.');
             Abort;
          end;
          if (Trim(EmpresasEmail_ID.AsString) = '') then begin
             Showmessage('        E-Mail não enviado : Falta informar o Usuário (ID) no cadastro de empresas.');
             Abort;
          End;
          if (Trim(EmpresasEmail_Senha.AsString) = '') then begin
             Showmessage('        E-Mail não enviado : Falta informar a Senha no cadastro de empresas.');
             Abort;
          end;

          mPasta := Trim(ConfiguracaoPasta_Boleto.asString) + '\'+removecaracter('/', '', Trim(EmpresasRazao_Social.AsString));
          if EmpresasMatriz_Filial.AsBoolean = true then
             mPasta := mPasta + '_Matriz\'
          else
             mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger)+'\';

          mPasta := mPasta+'Romaneio_Carga\';

          with idSMTP1 do begin
                IdSSL          := nil;
                IdSMTP1        := TIdSMTP.create(nil);
                ConnectTimeout := 10000;
                ReadTimeout    := 10000;
                Host           := Trim(EmpresasEmail_SMTP.AsString);
                Username       := Trim(EmpresasEmail_ID.AsString);
                Password       := Trim(EmpresasEmail_Senha.AsString);
           end;
           with EmailMSG do begin
                EmailMSG                 := TIdMessage.create(nil);
                Clear;
                CharSet                   := 'iso-8859-1';
                Encoding                  := MeMIME;
                ContentType               := 'multipart/related' ;
                subject                   := 'Romaneio de carga para separação';
                from.address              := idSMTP1.Username;
                recipients.emailaddresses := cEmail.Text;
                ccList.EMailAddresses     := cCopia.Text;
           end;

          // Converte a imagem do logo da empresa para base64 para adicionar corpo do email (Assinatura).
           img         := TMemo.Create(nil);
           img.Visible := False;
           img.Parent  := Pedido_RepresentantesSimp;

           if fileexists(EmpresasLogo.AsString) then begin
              Stream1 := TIdReadFileExclusiveStream.Create(EmpresasLogo.AsString);
              try
                  Stream2 := TIdFileCreateStream.Create(ExtractFilePath(Application.ExeName)+'img.html');
                  try
                      TIdEncoderMIME.EncodeStream(Stream1, Stream2);
                  finally
                      Stream2.Free;
                  end;
              finally
                  Stream1.Free;
              end;
              img.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'img.html');
           end;

           // Anexa arquivos de romaneio.
           mNumeros := '';
           with tPedidos do begin
                while not eof do begin
                      mArq := mPasta + 'Romaneio_Carga_'+trim(fieldbyname('Numero').asstring)+'.pdf';
                      if fileExists(mArq) then begin
                         TIdAttachmentFile.Create(EMailMSG.MessageParts, mArq);
                         mNumeros := mNumeros + fieldbyname('Numero').asstring+'/';
                      end;
                      next;
                end;
           end;

           with TextoMsg do begin
                textomsg    := TIdText.Create(EmailMSG.MessageParts);
                ContentType := 'text/html';
                Body.Add('<html><body>');
                Body.Add('Favor efetuar separação das mercadorias dos pedidos '+mNumeros+' conforme  Romaneios de carga em anexo.');
                Body.Add('<br>');
                Body.Add('<br>');
                Body.Add('<br>');
                Body.Add('<br>');
                Body.Add('<br>');
                //  Body.Add('<img src="data:image/jpeg;base64,'+trim(img.Text)+'">');
                //  if trim(EmpresasNome_Fantasia.Asstring) = '' then
                //     Body.Add('<h2>'+EmpresasRazao_Social.Asstring+'</h2>')
                //  else
                //     Body.Add('<h2>'+EmpresasNome_Fantasia.Asstring+'</h2>');
                Body.Add('<H3>Depto.Financeiro</H3>');
                Body.Add('Responsavel: '+EmpresasResponsavel.AsString+'<br>');
                Body.Add('Função: '+EmpresasResponsavel_Funcao.AsString+'<br>');
                Body.Add('Fone: '+FormatMaskText('(99) 9999-9999;0',EmpresasTelefone1.Text)+' / '+FormatMaskText('(99) 9999-9999;0',EmpresasTelefone2.Text)+'<br>');
                Body.Add('E-mail: '+EmpresasEmail.asstring+'<br>');
                Body.Add('Site: '+EmpresasSite.asstring+'<br>');
                Body.Add('</body></html>');
           end;

           try
              idSMTP1.port      := EmpresasEmail_Porta.AsInteger;
              IdSSL             := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
              IdSMTP1.IOHandler := IdSSL;
              //idSMTP1.UseTLS    := utUseImplicitTLS;
              if EmpresasEmail_Criptografia.AsString = 'utNoTLSSupport'   then idSMTP1.UseTLS := utNoTLSSupport; 
              if EmpresasEmail_Criptografia.AsString = 'utUseExplicitTLS' then idSMTP1.UseTLS := utUseExplicitTLS; 
              if EmpresasEmail_Criptografia.AsString = 'utUseImplicitTLS' then idSMTP1.UseTLS := utUseImplicitTLS; 
              if EmpresasEmail_Criptografia.AsString = 'utUseRequireTLS'  then idSMTP1.UseTLS := utUseRequireTLS; 
           except on E: Exception do
                  begin
                     idSMTP1.IOHandler := TIdIOHandler.MakeDefaultIOHandler(nil);
                     idSMTP1.UseTLS    := utNoTLSSupport;
                  end;
           end;

           // SSLOptions method.
           if Assigned(IdSSL) then begin
              if EmpresasEmail_Metodo.AsString = 'sslvSSLv2'   then IdSSL.SSLOptions.Method := sslvSSLv2;
              if EmpresasEmail_Metodo.AsString = 'sslvSSLv23'  then IdSSL.SSLOptions.Method := sslvSSLv23;
              if EmpresasEmail_Metodo.AsString = 'sslvSSLv3'   then IdSSL.SSLOptions.Method := sslvSSLv3;
              if EmpresasEmail_Metodo.AsString = 'sslvTLSv1'   then IdSSL.SSLOptions.Method := sslvTLSv1;
              if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_1' then IdSSL.SSLOptions.Method := sslvTLSv1_1;
              if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_2' then IdSSL.SSLOptions.Method := sslvTLSv1_2;
              IdSSL.SSLOptions.Mode := sslmClient;
           end;

           idSMTP1.AuthType := satDefault;
           idSMTP1.Connect;

           if idSMTP1.Connected then begin
              idSMTP1.send(EmailMSG);
              mErro := false;

              GerarLog(Menu_Principal.mUsuarioCodigo, 'PedidosRepresentantes', 'SEPARAÇÃO' , 'Local', 'Envio de Pedido para separação '+mNumeros, '1', '2', '');

              Showmessage('E-Mail enviado corretamente para '+cArmazem.Text);
           end else begin
              Showmessage('Falha na conexão, E-Mail não enviado!'+#13+#13+'Verifique as configurações de E-Mail no cadastro da Empresa.');
           end;

           idSMTP1.Disconnect;
           EmailMSG.Free;
           IdSMTP1.Free;
     end;

     Menu_Principal.IdAntiFreeze1.Active := false;
end;

procedure TPedido_RepresentantesSimp.EnviarEmailCli;
Var
   IdSMTP1 : TIdSMTP;
   EmailMSG: TIdMessage;
   TextoMsg: TidText;
   IdSSL   : TIdSSLIOHandlerSocketOpenSSL;
   i: integer;
   mMensagem
  ,mPasta
  ,mArq
  ,mNumeros: WideString;
   Stream1, Stream2 : TStream;
   img:TMemo;
begin
     mErro := true;
     if trim(cEmail.Text)+trim(cCopia.Text) = '' then Abort;

     Menu_Principal.IdAntiFreeze1.Active := true;

     with Dados do begin
          if (EmpresasEmail_Porta.AsInteger <= 0) then begin
             Showmessage('E-Mail não enviado : Falta informar a porta no cadastro de empresas.');
             Abort;
          end;
          if (Trim(EmpresasEmail_SMTP.AsString) = '') then begin
             Showmessage('E-Mail não enviado : Falta informar o Servidor de envio (SMTP) no cadastro de empresas.');
             Abort;
          end;
          if (Trim(EmpresasEmail_ID.AsString) = '') then begin
             Showmessage('E-Mail não enviado : Falta informar o Usuário (ID) no cadastro de empresas.');
             Abort;
          End;
          if (Trim(EmpresasEmail_Senha.AsString) = '') then begin
             Showmessage('E-Mail não enviado : Falta informar a Senha no cadastro de empresas.');
             Abort;
          end;

          mPasta := Trim(ConfiguracaoPasta_Boleto.asString) + '\'+Trim(removecaracter('/', '', EmpresasRazao_Social.AsString));
          if EmpresasMatriz_Filial.AsBoolean = true then
             mPasta := mPasta + '_Matriz\'
          else
             mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger)+'\';

          mPasta := mPasta+'Pedidos_Venda\';

          with idSMTP1 do begin
               IdSSL          := nil;
               IdSMTP1        := TIdSMTP.create(nil);
               ConnectTimeout := 10000;
               ReadTimeout    := 10000;
               Host           := Trim(EmpresasEmail_SMTP.AsString);
               Username       := Trim(EmpresasEmail_ID.AsString);
               Password       := Trim(EmpresasEmail_Senha.AsString);
          end;
          with EmailMSG do begin
               EmailMSG     := TIdMessage.create(nil);
               Clear;
               CharSet      := 'iso-8859-1';
               Encoding     := MeMIME;
               ContentType  := 'multipart/related' ;
               subject      := 'Pedido de Venda';
               from.address := idSMTP1.Username;
          end;

          // Converte a imagem do logo da empresa para base64 para adicionar corpo do email (Assinatura).
          img         := TMemo.Create(nil);
          img.Visible := False;
          img.Parent  := Pedido_RepresentantesSimp;

          if fileexists(EmpresasLogo.AsString) then begin
             Stream1 := TIdReadFileExclusiveStream.Create(EmpresasLogo.AsString);
             try
                 Stream2 := TIdFileCreateStream.Create(ExtractFilePath(Application.ExeName)+'img.html');
                 try
                     TIdEncoderMIME.EncodeStream(Stream1, Stream2);
                 finally
                     Stream2.Free;
                 end;
             finally
                 Stream1.Free;
             end;
             img.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'img.html');
          end;

          // SSLOptions method.
          if Assigned(IdSSL) then begin
             if EmpresasEmail_Metodo.AsString = 'sslvSSLv2'   then IdSSL.SSLOptions.Method := sslvSSLv2;
             if EmpresasEmail_Metodo.AsString = 'sslvSSLv23'  then IdSSL.SSLOptions.Method := sslvSSLv23;
             if EmpresasEmail_Metodo.AsString = 'sslvSSLv3'   then IdSSL.SSLOptions.Method := sslvSSLv3;
             if EmpresasEmail_Metodo.AsString = 'sslvTLSv1'   then IdSSL.SSLOptions.Method := sslvTLSv1;
             if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_1' then IdSSL.SSLOptions.Method := sslvTLSv1_1;
             if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_2' then IdSSL.SSLOptions.Method := sslvTLSv1_2;

             IdSSL.SSLOptions.Mode := sslmClient;
          end;
          try
             idSMTP1.port      := EmpresasEmail_Porta.AsInteger;
             IdSSL             := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
             IdSMTP1.IOHandler := IdSSL;
             //idSMTP1.UseTLS    := utUseImplicitTLS;
             if EmpresasEmail_Criptografia.AsString = 'utNoTLSSupport'   then idSMTP1.UseTLS := utNoTLSSupport; 
             if EmpresasEmail_Criptografia.AsString = 'utUseExplicitTLS' then idSMTP1.UseTLS := utUseExplicitTLS; 
             if EmpresasEmail_Criptografia.AsString = 'utUseImplicitTLS' then idSMTP1.UseTLS := utUseImplicitTLS; 
             if EmpresasEmail_Criptografia.AsString = 'utUseRequireTLS'  then idSMTP1.UseTLS := utUseRequireTLS; 
          except on E: Exception do 
             begin
                 idSMTP1.IOHandler := TIdIOHandler.MakeDefaultIOHandler(nil);
             end;
          end;

          idSMTP1.AuthType := satDefault;
          idSMTP1.Connect;

          if not idSMTP1.Connected then begin
             Showmessage('Falha na conexão, E-Mail não será enviado!'+#13+#13+'Verifique as configurações de E-Mail no cadastro da Empresa.');
             Abort;
          end;

          // Gerando E-Mails do Pedido de Venda.
          with tPedidos do begin
               while not eof do begin
                     with tTemp do begin
                          sql.clear;
                          sql.add('Select Email, Email_Copia from Clientes where Codigo = :pCod');
                          parambyname('pCod').AsInteger := tPedidos.FieldByName('Cliente').AsInteger;
                          open;
                          EmailMsg.recipients.emailaddresses := trim(FieldByName('Email').AsString);
                          EmailMsg.ccList.EMailAddresses     := trim(FieldByName('Email_Copia').AsString);
                          
                          { Para testar envio sem usar email real }
                          //EmailMsg.recipients.emailaddresses := 'edervix@bol.com.br';
                          //EmailMsg.ccList.EMailAddresses     := 'eder@cybersoftsistemas.com.br;elismar@cybersoftsistemas.com.br';
                     end;
                     if trim(EmailMsg.Recipients.EMailAddresses) <> '' then begin
                        with TextoMsg do begin
                             EmailMSG.MessageParts.Clear;
                             textomsg := TIdText.Create(EmailMSG.MessageParts);
                             Body.Clear;

                             mArq := mPasta + 'Pedido_'+trim(fieldbyname('Numero').asstring)+'.pdf';
                             if fileExists(mArq) then begin
                                TIdAttachmentFile.Create(EMailMSG.MessageParts, mArq);
                             end;

                             ContentType := 'text/html';
                             Body.Add('<html><body>');
                             Body.Add('Segue pedido de venda '+ fieldbyname('Numero').asstring+' para confirmação, conforme anexo.');
                             Body.Add('<br>');
                             Body.Add('<br>');
                             Body.Add('<br>');
                             Body.Add('<br>');
                             Body.Add('<br>');
                             Body.Add('<br>');
                             Body.Add(Empresas.fieldbyname('Email_MsgPedidos').AsString + '<br>');
                             Body.Add('<br>');
                             
                             //Body.Add('<img src="data:image/jpeg;base64,'+trim(img.Text)+'">');
                             //if trim(EmpresasNome_Fantasia.Asstring) = '' then
                             //   Body.Add('<h2>'+EmpresasRazao_Social.Asstring+'</h2>')
                             //else
                             //   Body.Add('<h2>'+EmpresasNome_Fantasia.Asstring+'</h2>');
                             Body.Add('<H3>Depto.Financeiro</H3>');
                             Body.Add('Responsavel: '+EmpresasResponsavel.AsString+'<br>');
                             Body.Add('Função: '+EmpresasResponsavel_Funcao.AsString+'<br>');
                             Body.Add('Fone: '+FormatMaskText('(99) 9999-9999;0',EmpresasTelefone1.Text)+' / '+FormatMaskText('(99) 9999-9999;0',EmpresasTelefone2.Text)+'<br>');
                             Body.Add('E-mail: '+EmpresasEmail.asstring+'<br>');
                             Body.Add('Site: '+EmpresasSite.asstring+'<br>');
                             Body.Add('</body></html>');
                        end;

                        // Enviando o email.
                        idSMTP1.send(EmailMSG);
                     end;

                     next;
               end;
          end;

          idSMTP1.Disconnect;
          EmailMSG.Free;
          IdSMTP1.Free;
          mErro := false;
     end;

     Menu_Principal.IdAntiFreeze1.Active := false;
end;

procedure TPedido_RepresentantesSimp.FiltraTodos(ordem: string);
var
   mScript: TMemo;
begin
      screen.Cursor := crsqlwait; 

      mScript         := TMemo.Create(nil);
      mScript.Visible := False;
      mScript.Parent  := Pedido_RepresentantesSimp;
      with mScript.Lines do begin
           Add('select Pedido');   
           Add('      ,Pedido_Pai');
           Add('      ,Parcial');
           Add('      ,Data');
           Add('      ,Ordem_Compra');
           Add('      ,Representante_Nome = case when isnull(Representante, 0) <> 0 then');
           Add('                                      case when (select Nome from Fornecedores where Representante_Codigo = Representante) is not null then ');
           Add('                                           (select Nome from Fornecedores where Representante_Codigo = Representante)');
           Add('                                      else');
           Add('                                           (select Nome from Fornecedores where Codigo = Representante)');
           Add('                                      end');
           Add('                                 when isnull(Atendente, '''') <> '''' then');
           Add('                                      (select Nome from Cybersoft_Cadastros.dbo.Usuarios where Matricula = Atendente)');
           Add('                            else');
           Add('                                 ''VENDA VIA ''+Origem_Pedido');
           Add('                            end');
           Add('      ,Cliente_Nome');
           Add('      ,Total_Pedido');
           Add('      ,Desconto');
           Add('      ,Comissao');
           Add('      ,Quantidade = (select sum(Quantidade) from PedidosRepresentantesItens where Pedido = pr.Pedido)');
           Add('      ,Cliente_CNPJ');
           Add('      ,Cliente_Estado');
           Add('      ,Cliente_MunicipioNome');
           Add('      ,Modalidade_Pagamento');
           Add('      ,Modalidade_Nome =  (select Descricao from Cybersoft_Cadastros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)');
           Add('      ,Pessoa = iif(isnull(Cliente_CNPJ, '''') <> '''', ''J'', ''F'')');
           Add('      ,Observacao');
           Add('      ,Armazem');
           Add('      ,Armazem_Nome = (select Nome from Fornecedores frn where frn.Codigo = pr.Armazem)');
           Add('      ,Tipo_Nota');
           Add('      ,Bloqueado');
           Add('from PedidosRepresentantes pr');
      end;
      if (mDirecao = '') or (mDirecao = 'desc') then
         mDirecao := 'asc'
      else
         mDirecao := 'desc';
      if Ordem = 'Pedido' then Ordem := 'cast(substring(Pedido, 2, 15) as int)';

      // [1] LIBERADO P/SEPARAÇÃO
      with PedidosRep do begin
           sql.Clear;
           sql.Add(mScript.Lines.Text);
           sql.Add('where isnull(Local, 0) = 1');
           if cAno.Value > 0 then begin
              sql.Add('and year(Data) = '+cAno.Text);
           end;
           if Dados.ConfiguracaoAutorizacao_Pedidos.asboolean then begin
              sql.Add('and isnull(Autorizado,0) = 1');
           end;
           sql.Add('and   isnull(Cancelado, 0) = 0');
           if cUsuario.keyvalue <> null then begin
              sql.Add('and Usuario = '+quotedstr(Dados.Usuarios.FieldByName('Matricula').AsString));
           end;
           if cFiltroCliente.keyvalue <> null then begin
              sql.Add('and Cliente = '+tClientes.FieldByName('Codigo').AsString);
           end;
           if cFiltroArm.keyvalue <> null then begin
              sql.Add('and Armazem = '+tArmazem.FieldByName('Codigo').AsString);
           end;
           if cOrigem.ItemIndex = 1 then begin
              sql.Add('and Origem_Pedido = ''REPRESENTA'' ');
           end;
           if cOrigem.ItemIndex = 2 then begin
              sql.Add('and Origem_Pedido = ''E-COMMERCE'' ');
           end;
           if cOrigem.ItemIndex = 3 then begin
              sql.Add('and Origem_Pedido = ''TELEVENDAS'' ');
           end;
           if cBoletos.ItemIndex = 1 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 1');
           end;
           if cBoletos.ItemIndex = 2 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 0');
           end;
           if ordem <> 'Modal_Nome' then begin
              if (ordem <> 'Desc') and (ordem <> 'Comissão') then begin
                 SQL.Add('order by '+ordem+' '+mDirecao);
              end;
           end else begin
              SQL.Add('order by Modalidade_Nome '+mDirecao);
           end;
           //SQL.SaveToFile('c:\temp\Pedidos_Representante_Separacao.sql');
           Open;
           StatusBar1.Panels[0].Text := 'Aguardando : '+inttostr(recordcount);
      end;
      // [2] EM SEPARAÇÃO
      with tConferencia do begin
           sql.Clear;
           sql.Add(mScript.Lines.Text);
           sql.Add('where isnull(Local, 0) = 2');
           if cAno.Value > 0 then begin
              sql.Add('and year(Data) = '+cAno.Text);
           end;
           sql.Add('and   isnull(Cancelado, 0) = 0');
           if cUsuario.keyvalue <> null then begin
              sql.Add('and Usuario = '+quotedstr(Dados.Usuarios.FieldByName('Matricula').AsString));
           end;
           if cFiltroCliente.keyvalue <> null then begin
              sql.Add('and Cliente = '+tClientes.FieldByName('Codigo').AsString);
           end;
           if cFiltroArm.keyvalue <> null then begin
              sql.Add('and Armazem = '+tArmazem.FieldByName('Codigo').AsString);
           end;
           if cOrigem.ItemIndex = 1 then begin
              sql.Add('and Origem_Pedido = ''REPRESENTA'' ');
           end;
           if cOrigem.ItemIndex = 2 then begin
              sql.Add('and Origem_Pedido = ''E-COMMERCE'' ');
           end;
           if cOrigem.ItemIndex = 3 then begin
              sql.Add('and Origem_Pedido = ''TELEVENDAS'' ');
           end;
           if cBoletos.ItemIndex = 1 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 1');
           end;
           if cBoletos.ItemIndex = 2 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 0');
           end;
           if ordem <> 'Modal_Nome' then begin
              if (ordem <> 'Desc') and (ordem <> 'Comissão') then begin
                 SQL.Add('order by '+ordem+' '+mDirecao);
              end;
           end else begin
              SQL.Add('order by Modalidade_Nome '+mDirecao);
           end;
           //SQL.SaveToFile('c:\temp\Conferencia_Representante_EmSeparacao.sql');
           Open;
           StatusBar1.Panels[1].Text := 'Em separação : '+inttostr(recordcount);
      end;
      // [3] SEPARADOS
      with tSeparados do begin
           sql.Clear;
           sql.Add(mScript.Lines.Text);
           sql.Add('where isnull(Local, 0) = 3');
           if cAno.Value > 0 then begin
              sql.Add('and year(Data) = '+cAno.Text);
           end;
           sql.Add('and   isnull(Cancelado, 0) = 0');
           if cUsuario.keyvalue <> null then begin
              sql.Add('and Usuario = '+quotedstr(Dados.Usuarios.FieldByName('Matricula').AsString));
           end;
           if cFiltroCliente.keyvalue <> null then begin
              sql.Add('and Cliente = '+tClientes.FieldByName('Codigo').AsString);
           end;
           if cFiltroArm.keyvalue <> null then begin
              sql.Add('and Armazem = '+tArmazem.FieldByName('Codigo').AsString);
           end;
           if cOrigem.ItemIndex = 1 then begin
              sql.Add('and Origem_Pedido = ''REPRESENTA'' ');
           end;
           if cOrigem.ItemIndex = 2 then begin
              sql.Add('and Origem_Pedido = ''E-COMMERCE'' ');
           end;
           if cOrigem.ItemIndex = 3 then begin
              sql.Add('and Origem_Pedido = ''TELEVENDAS'' ');
           end;
           if mDest = 1 then begin
              sql.Add('and pr.Cliente_Estado = '+quotedstr(Dados.EmpresasEstado.AsString));
           end;
           if mDest = 2 then begin
              sql.add('and pr.Cliente_Estado <> '+quotedstr(Dados.EmpresasEstado.AsString));
           end;
           if mCli = 1 then begin
              sql.add('and isnull(Cliente_ConsumidorFinal, 0) = 1');
           end;
           if mCli = 2 then begin
              sql.add('and isnull(Cliente_ConsumidorFinal, 0) = 0');
           end;
           if mICMSOp = 1 then begin
              sql.add('and (select sum(isnull(Valor_ICMS, 0)) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido) > 0');
           end;
           if mICMSOp = 2 then begin
              sql.add('and (select sum(isnull(Valor_ICMS, 0)) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido) = 0');
           end;
           if mICMSSt = 1 then begin
              sql.add('and (select sum(isnull(Valor_ICMSST, 0)) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido) > 0');
           end;
           if mICMSSt = 2 then begin
              sql.add('and (select sum(isnull(Valor_ICMSST, 0)) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido) = 0');
           end;
           if mTrans = 1 then begin
              sql.add('and isnull(Transportador, 0) <> 0');
           end;
           if mTrans = 2 then begin
              sql.add('and isnull(Transportador, 0) = 0');
           end;
           if cBoletos.ItemIndex = 1 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 1');
           end;
           if cBoletos.ItemIndex = 2 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 0');
           end;
           if ordem <> 'Modal_Nome' then begin
              if (ordem <> 'Desc') and (ordem <> 'Comissão') then begin
                 SQL.Add('order by '+ordem+' '+mDirecao);
              end;
           end else begin
              SQL.Add('order by Modalidade_Nome '+mDirecao);
           end;
           //SQL.SaveToFile('c:\temp\Conferencia_Representante_Separados.sql');
           Open;
           StatusBar1.Panels[2].Text := 'Separados : '+inttostr(recordcount);
      end;
      // [4] EM FATURAMENTO
      with tAguardando do begin
           sql.Clear;
           sql.Add(mScript.Lines.Text);
           sql.Add('where isnull(Local, 0) = 4');
           if cAno.Value > 0 then begin
              sql.Add('and year(Data) = '+cAno.Text);
           end;
           sql.Add('and   isnull(Cancelado, 0) = 0');
           if cUsuario.keyvalue <> null then begin
              sql.Add('and Usuario = '+quotedstr(Dados.Usuarios.FieldByName('Matricula').AsString));
           end;
           if cFiltroCliente.keyvalue <> null then begin
              sql.Add('and Cliente = '+tClientes.FieldByName('Codigo').AsString);
           end;
           if cFiltroArm.keyvalue <> null then begin
              sql.Add('and Armazem = '+tArmazem.FieldByName('Codigo').AsString);
           end;
           if cOrigem.ItemIndex = 1 then begin
              sql.Add('and Origem_Pedido = ''REPRESENTA'' ');
           end;
           if cOrigem.ItemIndex = 2 then begin
              sql.Add('and Origem_Pedido = ''E-COMMERCE'' ');
           end;
           if cOrigem.ItemIndex = 3 then begin
              sql.Add('and Origem_Pedido = ''TELEVENDAS'' ');
           end;
           if cBoletos.ItemIndex = 1 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 1');
           end;
           if cBoletos.ItemIndex = 2 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 0');
           end;
           if cBoletos.ItemIndex = 1 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 1');
           end;
           if cBoletos.ItemIndex = 2 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 0');
           end;
           if ordem <> 'Modal_Nome' then begin
              if (ordem <> 'Desc') and (ordem <> 'Comissão') then begin
                 SQL.Add('order by '+ordem+' '+mDirecao);
              end;
           end else begin
              SQL.Add('order by Modalidade_Nome '+mDirecao);
           end;
           //SQL.SaveToFile('c:\temp\Conferencia_Representante_EmFaturamento.sql');
           Open;
           StatusBar1.Panels[3].Text := 'Em Faturamento: '+inttostr(recordcount);
      end;
      // [5] FATURADOS
      with tFaturados do begin
           sql.Clear;
           sql.Add(mScript.Lines.Text);
           sql.Add('where isnull(Local, 0) = 5');
           if cAno.Value > 0 then begin
              sql.Add('and year(Data) = '+cAno.Text);
           end;
           sql.Add('and   isnull(Cancelado, 0) = 0');
           if cUsuario.keyvalue <> null then begin
              sql.Add('and Usuario = '+quotedstr(Dados.Usuarios.FieldByName('Matricula').AsString));
           end;
           if cFiltroCliente.keyvalue <> null then begin
              sql.Add('and Cliente = '+tClientes.FieldByName('Codigo').AsString);
           end;
           if cFiltroArm.keyvalue <> null then begin
              sql.Add('and Armazem = '+tArmazem.FieldByName('Codigo').AsString);
           end;
           if cOrigem.ItemIndex = 1 then begin
              sql.Add('and Origem_Pedido = ''REPRESENTA'' ');
           end;
           if cOrigem.ItemIndex = 2 then begin
              sql.Add('and Origem_Pedido = ''E-COMMERCE'' ');
           end;
           if cOrigem.ItemIndex = 3 then begin
              sql.Add('and Origem_Pedido = ''TELEVENDAS'' ');
           end;
           if cBoletos.ItemIndex = 1 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 1');
           end;
           if cBoletos.ItemIndex = 2 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 0');
           end;
           if ordem <> 'Modal_Nome' then begin
              if (ordem <> 'Desc') and (ordem <> 'Comissão') then begin
                 SQL.Add('order by '+ordem+' '+mDirecao);
              end;
           end else begin
              SQL.Add('order by Modalidade_Nome '+mDirecao);
           end;
           //SQL.SaveToFile('c:\temp\Conferencia_Representante_Faturados.sql');
           Open;
           StatusBar1.Panels[4].Text := 'Faturados : '+inttostr(recordcount);
      end;

      FiltraDespachados('Data');
      
      // [7] BAIXADOS
      with tBaixados do begin
           sql.Clear;
           sql.Add(mScript.Lines.Text);
           sql.Add('where isnull(Local, 0) = 7');
           if cAno.Value > 0 then begin
              sql.Add('and year(Data) = '+cAno.Text);
           end;
           if cUsuario.keyvalue <> null then begin
              sql.Add('and Usuario = '+quotedstr(Dados.Usuarios.FieldByName('Matricula').AsString));
           end;
           if cFiltroCliente.keyvalue <> null then begin
              sql.Add('and Cliente = '+tClientes.FieldByName('Codigo').AsString);
           end;
           if cFiltroArm.keyvalue <> null then begin
              sql.Add('and Armazem = '+tArmazem.FieldByName('Codigo').AsString);
           end;
           if cOrigem.ItemIndex = 1 then begin
              sql.Add('and Origem_Pedido = ''REPRESENTA'' ');
           end;
           if cOrigem.ItemIndex = 2 then begin
              sql.Add('and Origem_Pedido = ''E-COMMERCE'' ');
           end;
           if cOrigem.ItemIndex = 3 then begin
              sql.Add('and Origem_Pedido = ''TELEVENDAS'' ');
           end;
           if cBoletos.ItemIndex = 1 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 1');
           end;
           if cBoletos.ItemIndex = 2 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 0');
           end;
           if ordem <> 'Modal_Nome' then begin
              if (ordem <> 'Desc') and (ordem <> 'Comissão') then begin
                 SQL.Add('order by '+ordem+' '+mDirecao);
              end;
           end else begin
              SQL.Add('order by Modalidade_Nome '+mDirecao);
           end;
           //SQL.SaveToFile('c:\temp\Conferencia_Representante_Baixados.sql');
           Open;
           StatusBar1.Panels[6].Text := 'Baixados: '+inttostr(recordcount);
      end;
      with PageControl1 do begin
//          bAlterar.Enabled := (ActivePageIndex < 3) and (bAlterar.Tag = 0);
          if ActivePageIndex = 0 then FiltraItens(Grade.DataSource.DataSet.FieldByName('Pedido').AsString);
          if ActivePageIndex = 1 then FiltraItens(GradeConf.DataSource.DataSet.FieldByName('Pedido').AsString);
          if ActivePageIndex = 2 then FiltraItens(GradeSep.DataSource.DataSet.FieldByName('Pedido').AsString);
          if ActivePageIndex = 3 then FiltraItens(GradeAg.DataSource.DataSet.FieldByName('Pedido').AsString);
          if ActivePageIndex = 4 then FiltraItens(GradeFat.DataSource.DataSet.FieldByName('Pedido').AsString);
          if ActivePageIndex = 5 then FiltraItens(GradeDesp.DataSource.DataSet.FieldByName('Pedido').AsString);
      end;
      mScript.free;
      screen.Cursor := crdefault;
end;

procedure TPedido_RepresentantesSimp.FiltraDespachados(ordem: string);
begin
      screen.Cursor := crsqlwait;
      with tDespachados do begin
           sql.Clear;
           sql.Add('select Pedido');   
           sql.Add('      ,Pedido_Pai');
           sql.Add('      ,Parcial');
           sql.Add('      ,Data');
           sql.Add('      ,Ordem_Compra');
           sql.Add('      ,Representante_Nome = case when isnull(Representante, 0) <> 0 then');
           sql.Add('                                     case when (select Nome from Fornecedores where Representante_Codigo = Representante) is not null then ');
           sql.Add('                                          (select Nome from Fornecedores where Representante_Codigo = Representante)');
           sql.Add('                                     else');
           sql.Add('                                          (select Nome from Fornecedores where Codigo = Representante)');
           sql.Add('                                     end');
           sql.Add('                                 when isnull(Atendente, '''') <> '''' then');
           sql.Add('                                      (select Nome from Cybersoft_Cadastros.dbo.Usuarios where Matricula = Atendente)');
           sql.Add('                            else');
           sql.Add('                                 ''VENDA VIA ''+Origem_Pedido');
           sql.Add('                            end');
           sql.Add('      ,Cliente_Nome');
           sql.Add('      ,Total_Pedido');
           sql.Add('      ,Desconto');
           sql.Add('      ,Comissao');
           sql.Add('      ,Quantidade = (select sum(Quantidade) from PedidosRepresentantesItens where Pedido = pr.Pedido)');
           sql.Add('      ,Cliente_CNPJ');
           sql.Add('      ,Cliente_Estado');
           sql.Add('      ,Cliente_MunicipioNome');
           sql.Add('      ,Modalidade_Pagamento');
           sql.Add('      ,Modalidade_Nome =  (select Descricao from Cybersoft_Cadastros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)');
           sql.Add('      ,Pessoa = iif(isnull(Cliente_CNPJ, '''') <> '''', ''J'', ''F'')');
           sql.Add('      ,Observacao');
           sql.Add('      ,Armazem');
           sql.Add('      ,Armazem_Nome = (select Nome from Fornecedores frn where frn.Codigo = pr.Armazem)');
           sql.Add('      ,Tipo_Nota');
           sql.Add('      ,Bloqueado');
           sql.Add('from PedidosRepresentantes pr');
           sql.Add('where isnull(Local, 0) = 6');
           sql.Add('and   isnull(Cancelado, 0) = 0');
           // Filtro por usuário.
           if cUsuario.keyvalue <> null then begin
              sql.Add('and Usuario = '+quotedstr(Dados.Usuarios.FieldByName('Matricula').AsString));
           end;
           // Filtro por cliente.
           if cFiltroCliente.keyvalue <> null then begin
              sql.Add('and Cliente = '+tClientes.FieldByName('Codigo').AsString);
           end;
           // Filtro por armazem.
           if cFiltroArm.keyvalue <> null then begin
              sql.Add('and Armazem = '+tArmazem.FieldByName('Codigo').AsString);
           end;
           // Filtro por origem do pedido.
           if cOrigem.ItemIndex = 1 then begin
              sql.Add('and Origem_Pedido = ''REPRESENTA'' ');
           end;
           if cOrigem.ItemIndex = 2 then begin
              sql.Add('and Origem_Pedido = ''E-COMMERCE'' ');
           end;
           if cOrigem.ItemIndex = 3 then begin
              sql.Add('and Origem_Pedido = ''TELEVENDAS'' ');
           end;
           // Filtro por Data.
           if not DataLimpa(cData.text) then begin
              sql.Add('and cast(Data_Despacho as date) = :pData');
              ParamByName('pData').AsDate := cData.Date;
           end;
           // Filtro por boletos.
           if cBoletos.ItemIndex = 1 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 1');
           end;
           if cBoletos.ItemIndex = 2 then begin
              sql.Add('and isnull(Gera_Boleto, 0) = 0');
           end;
           if ordem <> 'Modal_Nome' then begin
              if (ordem <> 'Desc') and (ordem <> 'Comissão') then begin
                 SQL.Add('order by '+ordem+' '+mDirecao);
              end;
           end else begin
              SQL.Add('order by Modalidade_Nome '+mDirecao);
           end;
           //sql.SaveToFile('c:\temp\Despachados_Representante.sql');
           Open;
           StatusBar1.Panels[5].Text := 'Despachados : '+inttostr(recordcount);
      end;
      screen.Cursor := crdefault;
end;

procedure TPedido_RepresentantesSimp.PedidosRepAfterScroll(DataSet: TDataSet);
begin
      FiltraItens(Grade.DataSource.DataSet.FieldByName('Pedido').AsString);
end;

function TPedido_RepresentantesSimp.PegaSel(pGrade: TDBGrid): string;
var
    mPedidos: widestring;
    i: integer;
begin
     with pGrade do begin
          mPedidos := '';
          mObs     := '';
          for i := 0 to pred(SelectedRows.Count) do begin
              DataSource.DataSet.GotoBookMark(SelectedRows.Items[i]);
              mPedidos := mPedidos + quotedstr(DataSource.DataSet.fieldbyname('Pedido').asstring) + ',';
              mObs     := mObs + DataSource.DataSet.fieldbyname('Pedido').asstring + ': '+ DataSource.DataSet.fieldbyname('Observacao').asstring + #13+#10;
          end;
          mPedidos := copy(mPedidos, 1, length(mPedidos)-1);
     end;
     PegaSel := mPedidos;
end;

procedure TPedido_RepresentantesSimp.FiltraItens(Pedido: string);
begin
      with tGradeItens do begin
           sql.clear;
           sql.Add('select Pedido');
           sql.add('      ,Item');
           sql.Add('      ,Codigo_Mercadoria');
           sql.Add('      ,Descricao = (select substring(Descricao, 1, charindex(''<{'', Descricao)-1) from Produtos where Codigo = Codigo_Mercadoria)');
           sql.Add('      ,Quantidade');
           sql.Add('      ,Quantidade_Master = (select Quantidade_CaixaMaster from Produtos where Codigo = Codigo_Mercadoria)');
           sql.Add('      ,Unidade = (select Unidade from Produtos where Codigo = Codigo_Mercadoria)');
           sql.Add('      ,Volumes = Quantidade / iif((select isnull(Quantidade_CaixaMaster, 0) from Produtos where Codigo = Codigo_Mercadoria) >= 1, (select Quantidade_CaixaMaster from Produtos where Codigo = Codigo_Mercadoria), 1)');
           sql.Add('      ,Valor_Unitario');
           sql.Add('      ,Valor_Total = round(Valor_Unitario * Quantidade, 2)');
           sql.Add('from PedidosRepresentantesItens');
           sql.Add('where Pedido = :pPed');
           sql.Add('order by Item, Codigo_Mercadoria');
           parambyname('pPed').value := Pedido;
           open;
      end;
end;




end.
