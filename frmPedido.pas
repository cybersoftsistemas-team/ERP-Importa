unit frmPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Mask, Maskutils, RXDBCtrl, Vcl.ComCtrls, DB,
  DBAccess, FUNCOES, RXCtrls, MSAccess,  Grids, DBGrids, Buttons, ppParameter, ppBands, ppClass, ppMemo, ppReport, ppSubRpt, ppCtrls, ppPrnabl, ClipBrd, system.UITypes,
  ppDBPipe, RxLookup, RxDBComb, Menus, jpeg, raCodMod, MemDS, ppDesignLayer, RxCurrEdit, ppDB, ppModule, ppStrtch, ppCache, ppComm, ppRelatv, ppProd, RxToolEdit, ppPageBreak, ppRegion;

type
  TPedido = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tPedido: TMSQuery;
    cRich: TDBRichEdit;
    bItens: TButton;
    bVisualizar: TButton;
    GroupBox2: TGroupBox;
    DANFE_RetratoVis: TppReport;
    ppParameterList1: TppParameterList;
    ppNatureza: TppDBPipeline;
    plEmpresas: TppDBPipeline;
    plItens: TppDBPipeline;
    plPedidos: TppDBPipeline;
    tVisualizar: TMSQuery;
    dstVisualizar: TDataSource;
    bDuplicatas: TButton;
    bPesquisar: TButton;
    cFormula: TMemo;
    tItens: TMSQuery;
    dstitens: TDataSource;
    Transportadores: TMSQuery;
    TransportadoresCodigo: TIntegerField;
    TransportadoresNome: TStringField;
    TransportadoresTipo_Servico: TStringField;
    TransportadoresCNPJ: TStringField;
    dsTransportadores: TDataSource;
    tAtraso: TMSQuery;
    Image1: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image3: TImage;
    Label2: TLabel;
    lBCICMSOper: TDBText;
    Image4: TImage;
    lValorICMSOper: TDBText;
    Label4: TLabel;
    Image5: TImage;
    Label3: TLabel;
    lBCICMSSub: TDBText;
    Label1: TLabel;
    lValorICMSSub: TDBText;
    Image6: TImage;
    Label5: TLabel;
    lTotalProd: TDBText;
    Image7: TImage;
    Image8: TImage;
    Label6: TLabel;
    lValorFrete: TDBText;
    Image9: TImage;
    Label9: TLabel;
    lValorSeguro: TDBText;
    Image10: TImage;
    Label11: TLabel;
    DBText1: TDBText;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Label12: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    lValorIPI: TDBText;
    Label10: TLabel;
    lTotalNota: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    lPercentual: TLabel;
    StaticText1: TStaticText;
    cDI: TDBEdit;
    lDI: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    cNatureza: TDBLookupComboBox;
    lNome: TStaticText;
    cNome: TDBLookupComboBox;
    StaticText8: TStaticText;
    cTransportador: TDBLookupComboBox;
    cProcesso: TDBLookupComboBox;
    cDataDI: TDBEdit;
    StaticText11: TStaticText;
    DBEdit2: TDBEdit;
    cCodigoNatureza: TDBEdit;
    lDesconto: TStaticText;
    cDescPercent: TDBEdit;
    lDataDI: TStaticText;
    cDescontoTipo: TDBComboBox;
    StaticText3: TStaticText;
    cNotaReferencia: TDBLookupComboBox;
    StaticText4: TStaticText;
    DBEdit3: TDBEdit;
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
    Button1: TButton;
    StaticText18: TStaticText;
    cTaxaFechamento: TDBEdit;
    cDescValor: TDBEdit;
    cModalidade: TRxDBComboBox;
    cTipoNota: TRxDBLookupCombo;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    StaticText19: TStaticText;
    cIRPJ: TDBEdit;
    StaticText20: TStaticText;
    cCSLL: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    StaticText22: TStaticText;
    bEntRet: TButton;
    cInfComplementares: TDBMemo;
    cInfComplementares2: TDBMemo;
    TabSheet3: TTabSheet;
    Grade2: TRxDBGrid;
    tSoma: TMSQuery;
    StaticText95: TStaticText;
    cTotalDespesasCusto2: TCurrencyEdit;
    StaticText102: TStaticText;
    cTotalDespesasSeletivo2: TCurrencyEdit;
    StaticText106: TStaticText;
    cTotalDespesasEntrada: TCurrencyEdit;
    StaticText61: TStaticText;
    cTotalDespesasOutros2: TCurrencyEdit;
    MenuCusto: TPopupMenu;
    mnMarcarCustoEntrada: TMenuItem;
    mnDesmarcarCustoEntrada: TMenuItem;
    mnMarcarCustoTodosEntrada: TMenuItem;
    mnDesmarcarCustoTodosEntrada: TMenuItem;
    N2: TMenuItem;
    mnMarcarCusto: TMenuItem;
    mnDesmarcarCusto: TMenuItem;
    mnMarcarCustoTodos: TMenuItem;
    mnDesmarcarCustoTodos: TMenuItem;
    N3: TMenuItem;
    mnMarcarCustoOutros: TMenuItem;
    mnDesmarcarCustoOutros: TMenuItem;
    mnMarcarCustoTodosOutros: TMenuItem;
    mnDesmarcarCustoTodosOutros: TMenuItem;
    N1: TMenuItem;
    mnMarcarSeletivo: TMenuItem;
    mnDesmarcarSeletivo: TMenuItem;
    mnMarcarSeletivoTodos: TMenuItem;
    mnDesmarcarSeletivoTodos: TMenuItem;
    TabSheet4: TTabSheet;
    Grade: TDBGrid;
    StaticText10: TStaticText;
    cIndInter: TRxDBComboBox;
    Image14: TImage;
    Label8: TLabel;
    lValorII: TDBText;
    Image15: TImage;
    Label13: TLabel;
    DBText3: TDBText;
    Image16: TImage;
    Label14: TLabel;
    DBText4: TDBText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    cPgto: TRxDBComboBox;
    cFormaPgto: TDBLookupComboBox;
    StaticText29: TStaticText;
    cDescricaoForma: TDBEdit;
    StaticText21: TStaticText;
    cIndPresenca: TRxDBComboBox;
    StaticText30: TStaticText;
    cIntermediador: TDBLookupComboBox;
    cRich2: TDBRichEdit;
    StaticText51: TStaticText;
    cIncentivo: TRxDBLookupCombo;
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
    ppShape56: TppShape;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText27: TppDBText;
    ppLine12: TppLine;
    ppDBText28: TppDBText;
    ppLine14: TppLine;
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
    ppDBMemo1: TppDBMemo;
    lCodigo: TppDBText;
    pQuantidade: TppDBText;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLine30: TppLine;
    Rodape: TppFooterBand;
    ppGroup1: TppGroup;
    gDadosNF: TppGroupHeaderBand;
    lHomologacao: TppLabel;
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
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    lDestinatario_Telefone: TppLabel;
    lDestinatario_IE: TppLabel;
    lDestinatario_CEP: TppLabel;
    ppShape59: TppShape;
    ppShape12: TppShape;
    ppShape25: TppShape;
    ppLabel26: TppLabel;
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
    ppLabel27: TppLabel;
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
    ppShape28: TppShape;
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
    cAFRMM: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppLabel7: TppLabel;
    ppShape80: TppShape;
    ppShape63: TppShape;
    ppShape64: TppShape;
    ppLabel86: TppLabel;
    ppShape65: TppShape;
    ppLabel87: TppLabel;
    ppShape66: TppShape;
    ppLabel88: TppLabel;
    ppLabel80: TppLabel;
    ppLabel89: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    raCodeModule2: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDBMemo2: TppDBMemo;
    ppLabel81: TppLabel;
    ppLine27: TppLine;
    bPesqCliFor: TSpeedButton;
    bPesqTrans: TSpeedButton;
    tTmp: TMSQuery;
    bPesqArm: TSpeedButton;
    StaticText32: TStaticText;
    cArmazem: TDBLookupComboBox;
    Armazem: TMSQuery;
    dsArmazem: TDataSource;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    Function  MontaComplemento(Texto: String; pCampo:integer):String;
    procedure cProcessoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesquisaClick(Sender: TObject);
    procedure cInfComplementaresEnter(Sender: TObject);
    procedure cInfComplementaresExit(Sender: TObject);
    procedure cCodigoNaturezaExit(Sender: TObject);
    procedure bLimparFormaClick(Sender: TObject);
    procedure cDescontoTipoExit(Sender: TObject);
    procedure bItensClick(Sender: TObject);
    procedure cNomeExit(Sender: TObject);
    procedure cNotaReferenciaClick(Sender: TObject);
    procedure GerarDuplicatas;
    procedure cNomeClick(Sender: TObject);
    procedure bVisualizarClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure lNomeClick(Sender: TObject);
    procedure StaticText8Click(Sender: TObject);
    procedure StaticText6Click(Sender: TObject);
    procedure bDuplicatasClick(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cDescPercentExit(Sender: TObject);
    procedure DANFE_RetratoVisBeforePrint(Sender: TObject);
    procedure cTipoNotaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure bPesquisarClick(Sender: TObject);
    procedure ZerarDupl;
    procedure DuplicataDANFE(pParc:integer);
    procedure bEntRetClick(Sender: TObject);
    procedure Grade2DrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Grade2CellClick(Column: TColumn);
    procedure mnMarcarCustoEntradaClick(Sender: TObject);
    procedure mnDesmarcarCustoEntradaClick(Sender: TObject);
    procedure mnMarcarCustoTodosEntradaClick(Sender: TObject);
    procedure mnDesmarcarCustoTodosEntradaClick(Sender: TObject);
    procedure mnMarcarCustoClick(Sender: TObject);
    procedure mnDesmarcarCustoClick(Sender: TObject);
    procedure mnMarcarCustoTodosClick(Sender: TObject);
    procedure mnDesmarcarCustoTodosClick(Sender: TObject);
    procedure mnDesmarcarCustoOutrosClick(Sender: TObject);
    procedure mnMarcarCustoOutrosClick(Sender: TObject);
    procedure mnMarcarCustoTodosOutrosClick(Sender: TObject);
    procedure mnDesmarcarCustoTodosOutrosClick(Sender: TObject);
    procedure mnMarcarSeletivoClick(Sender: TObject);
    procedure mnDesmarcarSeletivoClick(Sender: TObject);
    procedure mnMarcarSeletivoTodosClick(Sender: TObject);
    procedure mnDesmarcarSeletivoTodosClick(Sender: TObject);
    procedure cIndPresencaChange(Sender: TObject);
    procedure bPesqCliForClick(Sender: TObject);
    procedure bPesqTransClick(Sender: TObject);
    procedure bPesqArmClick(Sender: TObject);
  private
    procedure TotalizaDespesas;
    procedure Ajustamenu;
    { Private declarations }
  public
    Arquivo    : TextFile;
    mNomeArq   : String;
    mTipo      : String;
    mMascara   : String;
    mValor     : String;
    mDescricao : String;
    mQtdeLinha : Integer;
    mPosDesc   : Integer;
    mLinha     : Integer;
    mSai_Entra : Integer;
    mNFEPedido : Integer;
    mVisualizar: Boolean;
    mInfGasol  : widestring;
end;

Const
   mSaiEntra  : array[0..1] of String = ('Entrada','Saída');

var
  Pedido: TPedido;

implementation

uses frmDados, frmMenu_Principal, frmPedido_Itens, frmPedido_ItensCompraInterna, frmJanela_Processamento, frmDMFiscal, frmDMContab, frmCadastro_Fornecedores,
     frmCadastro_NaturezaOperacao, frmModalidadePgto_PedidoParcelas, frmCadastro_Clientes, frmPedido_DadosVeiculo, frmCadastro_ICMS,frmPedido_EndEntregaRetirada, frmPesquisaGerais;

{$R *.dfm}

procedure TPedido.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      PageControl1.ActivePageIndex := 0;
      
      If (mSai_Entra = 0) and (FileExists('fundo_barra_Vermelha.bmp')) then begin
         Image1.Picture.LoadFromFile('fundo_barra_Vermelha.bmp');
      End;
      If (mSai_Entra = 1) and (FileExists('fundo_barra.bmp')) then begin
         Image1.Picture.LoadFromFile('fundo_barra.bmp');
      End;

      If (FileExists('fundo_barra.bmp')) then begin
         Image3.Picture.LoadFromFile('fundo_barra.bmp');
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
         Image15.Picture.Assign(Image3.Picture);
         Image16.Picture.Assign(Image3.Picture);
      End;

      With Dados, dmFiscal do Begin
           Configuracao.Open;

           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE (Saida_Entrada = :pSai_Entra) AND (Importacao = 1) ORDER BY Numero');
           Pedidos.ParamByName('pSai_Entra').AsInteger := mSai_Entra;
           Pedidos.Open;

           If mNFEPedido > 0 then Pedidos.Locate('Numero', mNFEPedido, [loCaseInsensitive]);

           bItens.Enabled             := Pedidos.RecordCount <> 0;
           bVisualizar.Enabled        := Pedidos.RecordCount <> 0;
           bDuplicatas.Enabled        := (Pedidos.RecordCount <> 0) and not ConfiguracaoBotao_Duplicata.AsBoolean;
           Navega.Controls[6].Enabled := Pedidos.RecordCount > 0;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) and (Codigo BETWEEN :pIni AND :pFim) ORDER BY Descricao_NF');
           If mSai_Entra = 0 then begin
              Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_EntradaIni.Value;
              Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_EntradaFim.Value;
           end else begin
              Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_SaidaIni.Value;
              Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_SaidaFim.Value;
           End;
           Natureza.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE (Ativo = 1) ORDER BY Nome');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Codigo IN((SELECT DISTINCT Exportador FROM Adicoes)) ) ORDER BY Nome');
           Fornecedores.Open;

           with Transportadores do begin
                sql.clear;
                sql.add('select *');
                sql.add('from Fornecedores');
                sql.add('where Ramo_Atividade in((select Codigo from RamoAtividade where Descricao like ''%TRANSP%''))');
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

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE Desativado <> 1');
           Bancos.Open;

           Impostos.SQL.Clear;
           Impostos.SQL.Add('SELECT * FROM Impostos');
           Impostos.Open;

           with ProcessosDOC do begin 
                Close;
                SQL.Clear;
                SQL.Add('select *');
                SQL.Add('from ProcessosDocumentos');
                If mSai_Entra = 0 then begin
                   SQL.Add('where (Processo_Fechamento is null and Data_Encerramento is null)');
                   SQL.Add('  and (isnull(Desativado, 0) <> 1)');
                   SQL.Add('  and Tipo = ''IMPORTAÇÃO'' ');
                end else begin
                   SQL.Add('where  (Processo_Fechamento is null)');
                   SQL.Add('  and  (isnull(Desativado, 0) <> 1)');
                   SQL.Add('  and  (select Pedido from TiposProcesso where(Codigo = Modalidade_Importacao)) in(''I'', ''T'')');
                   SQL.Add('  and  isnull(Numero_Declaracao, '''') <> '''' ');
                End;
                SQL.Add('order  by Tipo, Processo');
                Open;
           end;
           with ControleNavios do begin 
                sql.Clear;
                sql.Add('select *');
                sql.Add('from  ControleNavios');
                sql.Add('where  Status <> ''ENCERRADO''');
                sql.Add('order  by Navio');
                open;
           end;

           NCM.SQL.Clear;
           NCM.SQL.Add('SELECT * FROM NCM');
           NCM.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
           CentroCusto.Open;
           
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

           ICMS.SQL.Clear;
           ICMS.SQL.Add('SELECT * FROM ICMS');
           ICMS.Open;

           TipoNota.Close;
           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE(Saida_Entrada = :pSai_Entra) AND (Ativo = 1) ORDER BY Descricao');
           TipoNota.ParamByName('pSai_Entra').AsInteger := mSai_Entra;
           TipoNota.Open;

           FormaPgto.SQL.Clear;
           FormaPgto.SQL.Add('SELECT * FROM FormaPagamento ORDER BY Codigo');
           FormaPgto.Open;

           Intermediadores.SQL.Clear;
           Intermediadores.SQL.Add('SELECT * FROM Intermediadores ORDER BY Nome');
           Intermediadores.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
           IncentivosFiscais.Open;

           Notas.SQL.Clear;
           If PedidosProcesso.AsString <> '' then begin
              Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE Processo = :pProcesso ORDER BY Data_Emissao DESC, Numero DESC');
              Notas.ParamByName('pProcesso').AsString := Dados.PedidosProcesso.Value;
           end else begin
              Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE Data_Emissao = :pData AND Processo <> '''' ORDER BY Data_Emissao DESC, Numero DESC');
              Notas.ParamByName('pData').AsDate := Date;
           End;
           Notas.Open;

           ICMS.Locate('UF', EmpresasEstado.Value, [loCaseInsensitive]);
           Incoterms.Locate('Codigo', ProcessosDOCIncoterms.Value, [loCaseInsensitive]);
           bItens.Enabled := PedidosProcesso.Value <> '';

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
                 if (Trim(Dados.ClientesRua_Entrega.AsString) <> '') and (Trim(Dados.ClientesRua_Retirada.AsString) <> '') then begin
                    bEntRet.Visible  := true;
                 end;
              end;
           end;
      End;
      Screen.Cursor := crDefault;
end;

procedure TPedido.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   mPedidos: WideString;
   mErro:integer;
begin
     With Dados, dmFiscal do begin
          If (TipoNotaGerar_Financeiro.AsBoolean = true) and (ConfiguracaoFaturamento_AvisoDuplicata.AsBoolean = true) then begin
             with tPedido do begin 
                  sql.clear;
                  sql.add('select Numero');
                  sql.add('from Pedidos');
                  sql.add('where Saida_Entrada = 1');
                  sql.add('and Importacao = 1');
                  sql.add('and (select Gerar_Financeiro from TipoNota where Codigo = Tipo_Nota) = 1');
                  sql.add('and (select count(*) FROM PedidosFatura where Pedido = Numero) = 0');
                  open;
                  while not Eof do begin
                        mPedidos := mPedidos + ' '+FieldByName('Numero').AsString;
                        next;
                  end;
             end;

             If PedidosFatura.RecordCount = 0 then begin
                MessageDlg('Atenção!'+#13+#13+'Não foram geradas duplicatas para o(s) pedido(s) '+#13+#13+mPedidos, mtInformation, [MBOK], 0);
             End;
          End;

          // Verificando se os valores das duplicatas esta batendo com o total da nota fiscal.
          with Pedidos do begin 
               sql.clear;
               sql.add('select *');
               sql.add('from Pedidos PD');
               sql.add('where Importacao = 1');
               sql.add('and Valor_TotalNota <> (select Valor_Total from PedidosFatura where Pedido = Numero)');
               open;
               first;
               mErro    := 0;
               mPedidos := '';
               if RecordCount > 0 then begin
                  while not Pedidos.Eof do begin
                        Inc(mErro);
                        mPedidos := mPedidos + fieldbyname('Numero').AsString+ ', ';
                        Pedidos.Next;
                  end;
               end;
          end;
          if mSai_Entra = 1 then begin
             if mErro > 0 then begin
                if mErro = 1 then
                   MessageDlg('Erro!'+#13+#13+ 'O Pedido '+mPedidos+#13+#13+'Esta com o "Valor total da Nota Fiscal" diferente do "Total das duplicatas" geradas anteriormente.', mtError, [mbOK], 0)
                else
                   MessageDlg('Erro!'+#13+#13+ 'Os Pedidos '+mPedidos+#13+#13+'Estão com o "Valor total da Nota Fiscal" diferente do "Total das duplicatas" geradas anteriormente.', mtError, [mbOK], 0);
                bDuplicatas.Click;
                Abort;
             end;
          end;
     End;

     If mNFEPedido = 0 then
        FecharTabelas(Dados, dmFiscal, dmContab, nil);
        
     LimpaMemoria;
     Pedido.Release;
     Pedido := nil;
end;

procedure TPedido.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin                                                    
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         PageControl1.ActivePageIndex := 0;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         bSair.Enabled      := false;
         bPesquisar.Enabled := false;
         Panel2.Enabled     := True;
         TabSheet2.Enabled  := true;
         cProcesso.SetFocus;
         if (Dados.Clientes.FieldByName('Endereco_Entrega').AsBoolean) or (Dados.Clientes.FieldByName('Endereco_Retirada').AsBoolean) then begin
            bEntRet.Enabled := true;
            if (Trim(Dados.ClientesRua_Entrega.AsString) = '') and (Trim(Dados.ClientesRua_Retirada.AsString) = '') then begin
               bEntRet.Enabled := false;
            end;
         end;
         with tItens do begin
              sql.Clear;
              sql.Add('select count(*) as Itens from PedidosItens where Pedido = :pPedido');
              parambyname('pPedido').AsInteger := Dados.PedidosNumero.AsInteger;
              open;
              cTipoNota.Enabled := FieldbyName('Itens').AsInteger = 0;
         end;
      End;

      If (Button = nbInsert) then begin
         Dados.PedidosTotal_Descontos.Value := 0;
      End;

      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled     := False;
         TabSheet2.Enabled  := false;
         bSair.Enabled      := true;
         bPesquisar.Enabled := true;
         TotalizaDespesas;
      End;
      If (Dados.ProcessosDocTipo.Value <> 'COMPRA INTERNA') then begin
          lDI.Enabled     := True;
          lDataDI.Enabled := True;
      end else begin
          lDI.Enabled     := False;
          lDataDI.Enabled := False;
      End;
      bItens.Enabled      := (Dados.Pedidos.RecordCount <> 0) and (Button <> nbInsert) and (Button <> nbEdit);
      bVisualizar.Enabled := (Dados.Pedidos.RecordCount <> 0) and (Button <> nbInsert) and (Button <> nbEdit);
      bDuplicatas.Enabled := (Dados.Pedidos.RecordCount <> 0) and (Button <> nbInsert) and (Button <> nbEdit) and not Dados.ConfiguracaoBotao_Duplicata.AsBoolean;
      Navega.Controls[6].Enabled := Dados.Pedidos.RecordCount > 0;

      cOperacaoVeiculo.ItemIndex := -1;
      If Dados.PedidosOperacao_Veiculo.AsString <> '' then begin
         If Dados.PedidosOperacao_Veiculo.AsString <> '9' then
            cOperacaoVeiculo.ItemIndex := Dados.PedidosOperacao_Veiculo.AsInteger
         else
            cOperacaoVeiculo.ItemIndex := 4;
      End;

      Dados.TipoNota.Locate('Codigo', Dados.PedidosTipo_Nota.AsInteger, [loCaseInsensitive]);

      dmFiscal.Notas.SQL.Clear;
      dmFiscal.Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Processo = :pProcesso) ORDER BY Data_Emissao DESC');
      dmFiscal.Notas.ParamByName('pProcesso').AsString := Dados.PedidosProcesso.Value;
      dmFiscal.Notas.Open;

      Screen.Cursor := crDefault;
end;

procedure TPedido.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
var
   mErro:Boolean;
begin
      ActiveControl := nil;
      with Dados, dmFiscal do begin
           If (Button = nbPost) then begin
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

              If cModalidade.ItemIndex = -1 then begin
                 ShowMessage('Modalidade de frete é campo obrigatório!'+#13+#13+'Selecione uma modalidade para salvar o pedido.');
                 cModalidade.SetFocus;
                 Abort;
              End;
              If (TipoNotaApuracao_PISCOFINS.AsBoolean = true) and (NaturezaApuracao_PISCOFINS.AsBoolean = false) then begin
                 ShowMessage('Divergência na Opção de "PIS/COFINS" entre o "Tipo de Nota" e a "Natureza da Operação".'+#13+#13+'Se o "Tipo de Nota" apura PIS/COFINS a "Natureza da Operação" também deve apurar.');
                 cNatureza.SetFocus;
                 Abort;
              End;
              If (TipoNotaApuracao_PISCOFINS.AsBoolean = true) and (ConfiguracaoPIS_AliquotaBasica.AsFloat <= 0) then begin
                 ShowMessage('Falta informar a alíquota basica do PIS nas configurações do sistema.'+#13+#13+'Se o "Tipo de Nota" apura PIS/COFINS e obrigatório informar a "Alíquota básica do PIS".');
                 cTipoNota.SetFocus;
                 Abort;
              End;
              If (TipoNotaApuracao_PISCOFINS.AsBoolean = true) and (ConfiguracaoCOFINS_AliquotaBasica.AsFloat <= 0) then begin
                 ShowMessage('Falta informar a alíquota básica da COFINS nas configurações do sistema.'+#13+#13+'Se o "Tipo de Nota" apura PIS/COFINS e obrigatório informar a "Alíquota básica da COFINS".');
                 cTipoNota.SetFocus;
                 Abort;
              End;
              If (Trim(PedidosVolume_Especie.AsString) = '') and (PedidosVolume_Quantidade.Value <> 0) then begin
                 ShowMessage('Falta informar a "ESPÉCIE" dos volumes.'+#13+#13+'Se a quantidade de volumes é maior que zero a espécie dos volumes deve ser informada.');
                 cEspecie.SetFocus;
                 Abort;
              End;
              If (Trim(PedidosVolume_Especie.AsString) <> '') and (PedidosVolume_Quantidade.Value <= 0) then begin
                 ShowMessage('Falta informar a "QUANTIDADE" dos volumes.'+#13+#13+'A quantidade de volumes deve maior que zero se a espécie de volumes for informada.');
                 cVolumes.SetFocus;
                 Abort;
              End;
              If Trim(cIndPresenca.Text) = '' then begin
                 ShowMessage('Indicador de Presença do Comprador é campo obrigatório!'+#13+#13+'Selecione um Indicador de Presença do Comprador para salvar o pedido.');
                 cIndPresenca.SetFocus;
                 Abort;
              End;
              If PedidosSaida_Entrada.Value = 0 then begin
                 If Trim(FornecedoresIndicador_IE.Value) = '' then begin
                    ShowMessage('"Indicador de Inscrição Estadual" do Fornecedor não informado no cadastro de Fornecedores.');
                    cNome.SetFocus;
                    Abort;
                 End;
              End;
              If PedidosSaida_Entrada.Value = 1 then begin
                 If Trim(ClientesIndicador_IE.Value) = '' then begin
                    ShowMessage('"Indicador de Inscrição Estadual" do Cliente não informado no cadastro de Clientes.');
                    cNome.SetFocus;
                    Abort;
                 End;
              End;
              // Verifica a descrição da forma de pagamento.
              if (PedidosForma_Pagamento.AsInteger = 99) and (PedidosDescricao_Forma.AsString = '') then begin
                 ShowMessage('"Descrição da Forma de Pagamento" é obrigatório para "99 Outros".');
                 cDescricaoForma.SetFocus;
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
              if Trim(cIncentivo.Text) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'Incentivo Fiscal não informado.', mtError, [mbOK], 0);
                 cIncentivo.SetFocus;
                 Abort;
              end;
              // Verifica se o produto e combustivel e obriga o transportador.
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

              // Bloqueia o faturamento caso o estado não esteja cadastrado na tabela de ICMS.
              If PedidosSaida_Entrada.AsInteger = 1 then begin
                 If not ICMS.Locate('UF', ClientesEstado.Value, [loCaseInsensitive]) then begin
                    Estados.Open;
                    Estados.Locate('Codigo', ClientesEstado.Value, [loCaseInsensitive]);
                    MessageDlg('Erro!'+#13+#13+'Estado do Cliente '+ EstadosNome.AsString+' ('+ClientesEstado.AsString+') não cadastrado na tabela de ICMS.', mtError, [mbOK], 0);
                    cNome.SetFocus;
                    Abort;
                 End;
              End;

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
              // Verificando se existe o estado cadastrado na tabela de ICMS.
              If Button <> nbCancel then begin
                 If mSai_Entra = 1 then begin
                    If ICMS.Locate('UF', Trim(ClientesEstado.AsString), [loCaseInsensitive]) = false then begin
                       If MessageDlg('Atenção!'+#13+#13+ 'O estado do cliente ('+ClientesEstado.AsString+') não foi encontrado na tabela de ICMS.' +#13+
                                     'Cadastre o estado e suas alíquotas na tabela de ICMS, para que o sistema possa calcular o imposto.'+#13+
                                     'Deseja Cadastrar o estado na tabela de ICMS agora?', mtError, [mbYes, mbNo], 0) = mrYes then begin

                           Cadastro_ICMS := TCadastro_ICMS.Create(Self);
                           Cadastro_ICMS.Caption := Caption;
                           Cadastro_ICMS.ShowModal;

                           ICMS.Open;
                           If not ICMS.Locate('UF', Trim(ClientesEstado.AsString), [loCaseInsensitive]) then begin
                              Showmessage('Estado ('+ClientesEstado.AsString+') não cadastrado na tabela de ICMS.');
                              cNome.SetFocus;
                              Abort;
                           End;
                       end else begin
                          cNome.SetFocus;
                          Abort;
                       End;
                    end else begin
                       If ClientesSimples_Nacional.AsBoolean = true then begin
                          If ICMSSimples_Nacional.AsFloat <= 0 then begin
                             If MessageDlg('Atenção!'+#13+#13+ 'A alíquota do ICMS para SIMPLES Nacional do estado ('+ClientesEstado.AsString+'), não foi informada na tabela de ICMS.' +#13+
                                           'Informe a alíquota na tabela de ICMS, para que o sistema possa calcular o imposto.'+#13+
                                           'Deseja alterar a tabela de ICMS agora?', mtError, [mbYes, mbNo], 0) = mrYes then begin

                                Cadastro_ICMS := TCadastro_ICMS.Create(Self);
                                Cadastro_ICMS.Caption := Caption;
                                Cadastro_ICMS.ShowModal;
                                ICMS.Open;

                                If not ICMS.Locate('UF', Trim(ClientesEstado.AsString), [loCaseInsensitive]) then begin
                                   Showmessage('Estado ('+ClientesEstado.AsString+') não cadastrado na tabela de ICMS.');
                                   cNome.SetFocus;
                                   Abort;
                                End;
                             End;
                          End;
                       End;
                    End;
                 End;
              End;
              Natureza.Open;

              // Verifica se a alíquota interna do estado destino esta cadastrada para o DIFAL.
              if TipoNotaSaida_Entrada.AsInteger = 1 then begin
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

              If Trim(cIndInter.Text) = '' then
                 PedidosIndicador_Intermediario.clear;

              Screen.Cursor := crSQLWait;
              If mSai_Entra = 0 then begin
                 Fornecedores.Locate('Codigo', PedidosFornecedor_Codigo.Value, [loCaseInsensitive]);
                 PedidosEstado.Value         := FornecedoresEstado.Value;
                 PedidosCliente_Codigo.Value := 0;

                 If (Trim(FornecedoresCNPJ.Value) <> '') or (FornecedoresEstado.Value = 'EX') then begin
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
                 PedidosDestinatario_MunicipioNome.Value := FornecedoresMunicipio.Value;
                 PedidosDestinatario_Estado.Value        := FornecedoresEstado.Value;
                 PedidosDestinatario_CEP.Value           := FornecedoresCEP.Value;
                 PedidosDestinatario_Pais.Value          := FornecedoresPais.Value;
                 PedidosDestinatario_Telefone1.Value     := FornecedoresTelefone1.Value;

                 If FornecedoresIsento.AsBoolean = false then
                    PedidosDestinatario_IE.Value := FornecedoresInscricao_Estadual.Value
                 else
                    PedidosDestinatario_IE.Value := 'ISENTO';
              end else begin
                 Clientes.Locate('Codigo', PedidosCliente_Codigo.Value, [loCaseInsensitive]);
                 PedidosEstado.Value            := ClientesEstado.Value;
                 PedidosFornecedor_Codigo.Value := 0;

                 If Trim(ClientesCNPJ.Value) <> '' then begin
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
                 PedidosDestinatario_MunicipioNome.Value := ClientesMunicipio.Value;
                 PedidosDestinatario_Estado.Value        := ClientesEstado.Value;
                 PedidosDestinatario_CEP.Value           := ClientesCEP.Value;
                 PedidosDestinatario_Pais.Value          := ClientesPais.Value;
                 PedidosDestinatario_Telefone1.Value     := ClientesTelefone1.Value;

                 If ClientesIsento.AsBoolean = false then
                    PedidosDestinatario_IE.Value := ClientesInscricao_Estadual.Value
                 else
                    PedidosDestinatario_IE.Value := 'ISENTO';
              End;

              PedidosData_Emissao.Value := Date;
              PedidosAjuste.Value       := TipoNotaNFE_Estorno.AsBoolean;
              PedidosImportacao.Value   := True;
              PedidosAguardando.Value   := false;

              ICMS.Locate('UF', PedidosDestinatario_Estado.Value, [loCaseInsensitive]);
              PedidosInscricao_Substituto.Value := ICMSInscricao.Value;
              PedidosApuracao_PISCOFINS.Value   := NaturezaApuracao_PISCOFINS.Value;
              PedidosICMS_Destacar.Value        := TipoNotaICMS_Destacar.Value;

              if Pedidos.State = dsInsert then begin
                 PedidosAliquota_FCP.Value   := ICMSFCP.Value;
                 PedidosAliquota_FCPST.Value := ICMSFCP.Value;
              end;

              If Trim(cOperacaoVeiculo.Text) <> '' then
                 PedidosOperacao_Veiculo.Value := Copy(cOperacaoVeiculo.Text,1,1)
              else
                 PedidosOperacao_Veiculo.Clear;

              If Pedidos.State = dsInsert then begin
                 tPedido.SQL.Clear;
                 tPedido.SQL.Add('SELECT MAX(Numero) AS Numero FROM Pedidos');
                 tPedido.Open;
                 PedidosNumero.Value := tPedido.FieldByName('Numero').AsInteger+1;
                 tPedido.Close;

                 PedidosPedido_Nota.Value := EmpresasPedido_Nota.AsInteger + 1;
                 Empresas.Edit;
                          EmpresasPedido_Nota.Value := EmpresasPedido_Nota.AsInteger + 1;
                 Empresas.Post;
              End;
              if PedidosArmazem.AsInteger <> 0 then begin
                 PedidosArmazem_Nome.Value     := Armazem.FieldByName('Nome').asstring;
                 PedidosArmazem_CNPJ.Value     := Armazem.FieldByName('CNPJ').asstring;
                 PedidosArmazem_IE.Value       := Armazem.FieldByName('Inscricao_Estadual').asstring;
                 PedidosArmazem_Endereco.Value := Armazem.FieldByName('Endereco').asstring;
              end;

              PedidosIncentivo_Codigo.Value := IncentivosFiscaisCodigo.Value;

              // Log de operações do sistema.
              LogDados(Pedidos, '('+PedidosNumero.AsString+') '+mSaiEntra[PedidosSaida_Entrada.AsInteger]+ ' de '+PedidosData_Emissao.AsString+' Processo nº '+PedidosProcesso.AsString, Pedidos.State);
           End;

           If (Button = nbDelete) then begin
              If MessageDlg('Deseja realmente excluir este pedido?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                 If PedidosDPEC.AsBoolean = false then begin
                    PedidosItens.Close;
                    PedidosItens.SQL.Clear;
                    PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido)');
                    PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                    PedidosItens.Open;

                    If TipoNotaMovimenta_Estoque.Value = true then begin
                       // Disponibilizando o estoque nas adicoes.
                       If PedidosDI.Value <> '' then begin
                          Adicoes.SQL.Clear;
                          Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI IN(SELECT DISTINCT DI FROM PedidosItens WHERE(Pedido = :pPedido)))');
                          Adicoes.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                          Adicoes.Open;

                          If Adicoes.RecordCount > 0 then begin
                             PedidosItens.First;
                             While not PedidosItens.Eof do begin
                                   Adicoes.Locate( 'DI;Codigo_Mercadoria;Adicao;Sequencia_SISCOMEX', VarArrayOf([PedidosItensDI.Value, PedidosItensCodigo_Mercadoria.Value, PedidosItensAdicao.Value, PedidosItensSequencia_SISCOMEX.AsInteger]), [loCaseInsensitive] );
                                   Produtos.Locate( 'Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive] );
                                   Adicoes.Edit;
                                           If PedidosSaida_Entrada.Value = 0 then begin
                                              If ProdutosTipo_Conversao.Value <> 'M' then
                                                 AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                                              else
                                                 AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                                           end else begin
                                              If ProdutosTipo_Conversao.Value <> 'M' then
                                                 AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                                              else
                                                 AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                                           End;

                                           If AdicoesLancado_Entrada.Value < 0                       then AdicoesLancado_Entrada.Value := 0;
                                           If AdicoesLancado_Entrada.Value > AdicoesQuantidade.Value then AdicoesLancado_Entrada.Value := AdicoesQuantidade.Value;
                                           If AdicoesLancado_Saida.Value   < 0 then AdicoesLancado_Saida.Value := 0;
                                           If AdicoesLancado_Saida.Value   > AdicoesQuantidade.Value then AdicoesLancado_Saida.Value := AdicoesQuantidade.Value;
                                   Adicoes.Post;

                                   PedidosItens.Next;
                             End;
                          End;

                          Adicoes.Close;
                       end else begin
                          // Disponibilizando o estoque nas notas de terceiros.
                          NotasTerceirosItens.SQL.Clear;
                          NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso)');
                          NotasTerceirosItens.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
                          NotasTerceirosItens.Open;

                          If NotasTerceirosItens.RecordCount > 0 then begin
                             PedidosItens.First;
                             While not PedidosItens.Eof do begin
                                   NotasTerceirosItens.Locate( 'Processo;Codigo_Mercadoria', VarArrayOf([PedidosProcesso.Value,PedidosItensCodigo_Mercadoria.Value]), [loCaseInsensitive] );
                                   Produtos.Locate( 'Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive] );
                                   NotasTerceirosItens.Edit;
                                                       NotasTerceirosItensDisponivel.Value := NotasTerceirosItensDisponivel.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                   NotasTerceirosItens.Post;
                                   PedidosItens.Next;
                             End;
                          End;
                    
                          NotasTerceirosItens.Close;
                       End;
                    End;

                    // Disponibiliza os numeros seriais no cadastro.
                    ProdutosSeriais.SQL.Clear;
                    ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL, Disponivel = 1 WHERE(Pedido = :pPedido)');
                    ProdutosSeriais.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                    ProdutosSeriais.Execute;
                    ProdutosSeriais.SQL.Clear;
                    ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Codigo = 1)');

                    // Deleta os itens do pedidos.
                    PedidosItens.SQL.Clear;
                    PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE (Pedido = :pPedido)');
                    PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                    PedidosItens.Execute;

                    // Apagando as duplicatas do pedido.
                    PedidosFatura.SQL.Clear;
                    PedidosFatura.SQL.Add('DELETE FROM PedidosFatura WHERE (Pedido = :pPedido) AND (Origem_Pedido = 1)');
                    PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                    PedidosFatura.Execute;
                    PedidosFatura.SQL.Clear;
                    PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE (Pedido = :pPedido) AND (Origem_Pedido = 1)');
                    PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                    PedidosFatura.Open;

                    PedidosDuplicata.SQL.Clear;
                    PedidosDuplicata.SQL.Add('DELETE FROM PedidosDuplicata WHERE(Fatura = :pFatura)');
                    PedidosDuplicata.ParamByName('pFatura').AsInteger := PedidosNumero.Value;
                    PedidosDuplicata.Execute;
                    PedidosDuplicata.SQL.Clear;
                    PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE(Fatura = :pFatura) ORDER BY CAST(Duplicata AS int)');
                    PedidosDuplicata.ParamByName('pFatura').AsInteger := PedidosNumero.Value;
                    PedidosDuplicata.Execute;

                    // Deleta as despesas registradas do pedido.
                    PedidosDespesas.SQL.Clear;
                    PedidosDespesas.SQL.Add('DELETE FROM PedidosDespesas WHERE(Pedido = :pPedido)');
                    PedidosDespesas.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                    PedidosDespesas.Execute;

                    // Deleta os navios do pedido.
                    with tTmp do begin
                         sql.Clear;
                         sql.Add('delete from PedidosItensNavios where Pedido = :pPedido');
                         parambyname('pPedido').AsInteger := PedidosNumero.Value;
                         execute;
                    end;
                 end else begin
                    MessageDlg('Este Pedido não pode ser excluido, pois foi enviado em contigência (DPEC).', mtInformation, [mbOK], 0);
                    Pedidos.Cancel;
                    Screen.Cursor := crDefault;
                    Abort;
                 End;
              end else begin
                 Screen.Cursor := crDefault;
                 Abort;
              End;
           End;
      end;
      Screen.Cursor := crDefault;
end;

function TPedido.MontaComplemento(Texto: String; pCampo:integer):String;
Var
    mTexto,
    mBusca,
    mTroca,
    mCampo,
    mTabela: wideString;
    mAchou : Boolean;
begin
     Screen.Cursor := crAppStart;
     cRich.Width   := 1200;
     if pCampo = 1 then mTexto := cRich.Text;
     if pCampo = 2 then mTexto := cRich2.Text;

     ActiveControl := nil;

     with Dados, dmFiscal, dmContab do Begin
          Tab_Origem.DisableControls;
          Tab_Origem.FetchAll := not Tab_Origem.FetchAll;
          Campos.DisableControls;

          Campos.SQL.Clear;
          Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, pCampo)+') ORDER BY Tabela');
          //Campos.SQL.SaveToFile('c:\temp\campos.sql');
          Campos.Open;
          
          // Varre toda a tabela de campos para montar o campo de informações complementares.
          Campos.First;
          while not Campos.Eof do begin
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
                   mAchou  := False;

                   while (CamposTabela.Value = mTabela) and (not Campos.Eof) do begin
                         if (Trim(CamposComando_SQL.Value) <> '') and (CamposTipo.AsString <> 'Lista') then Begin
                            Tab_Origem.Close;
                            Tab_Origem.SQL.Clear;
                            if Trim(CamposTabela_LookUpOrigem.AsString) = '' then begin
                                Tab_Origem.SQL.Add('SELECT * FROM '+CamposTabela.Value+' '+CamposComando_SQL.AsString);
                                if Pos('pProcesso', CamposComando_SQL.Value) <> 0 then
                                   Tab_Origem.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
                                if Pos('pCliente', CamposComando_SQL.Value) <> 0 then
                                   Tab_Origem.ParamByName('pCliente').AsString := ClientesCodigo.AsString;
                                 If Pos('pArmazem', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pArmazem').Asinteger := PedidosArmazem.asinteger;
                                if Pos('pPedido', CamposComando_SQL.Value) <> 0 then
                                   Tab_Origem.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                                if Pos('pLocalDesembaraco', CamposComando_SQL.Value) <> 0 then
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

                         If (UpperCase(CamposTipo.Value) = 'CURRENCY') or (UpperCase(CamposTipo.Value) = 'FLOAT') then begin
                            If Length(Trim(CamposMascara.Value)) <> 0 then begin
                               If mAchou then
                                  mTroca := FormatFloat(CamposMascara.Value, Tab_Origem.FieldByName(mCampo).AsCurrency)
                               else
                                  mTroca := FormatFloat(CamposMascara.Value, 0.00 );

                               mTroca := PadR(mTroca, Length(CamposMascara.Value)-4);
                               mTexto := RemoveCaracter( mBusca, mTroca, mTexto );
                             End else begin
                               mTroca := Tab_Origem.FieldByName(mCampo).AsString;
                               mTexto := RemoveCaracter( mBusca, mTroca, mTexto );
                            End;
                         End else begin
                            if CamposTipo.AsString <> 'Lista' then begin
                               mTroca := Tab_Origem.FieldByName(mCampo).AsString;
                               if Length(Trim(CamposMascara.Value)) <> 0 then
                                  mTexto := RemoveCaracter( mBusca, FormatMaskText(CamposMascara.Value,mTroca), mTexto )
                               else
                                  mTexto := RemoveCaracter( mBusca, mTroca, mTexto );
                            end else begin
                               mTroca := '';
                               Tab_Origem.sql.clear;
                               Tab_Origem.SQL.Add(CamposComando_SQL.AsString);
                               if Pos(':pProcesso ', CamposComando_SQL.Value) <> 0 then
                                  Tab_Origem.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
                               if Pos(':pPedido ', CamposComando_SQL.Value) <> 0 then
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
                         End;

                         Campos.Next;
                   End;
                End;
          End;

          //Janela_Processamento.Close;
          Campos.EnableControls;
          Tab_Origem.EnableControls;
          Tab_Origem.FetchAll := not Tab_Origem.FetchAll;

          if PedidosDIFAL_Valor.Value > 0 then begin
             if length(trim(mtexto)) > 0 then mTexto := mTexto + CHR(13);
             mTexto := mTexto           + 'DIFAL ICMS RECOLHIDO ESTADO ORIGEM : '+PadR(FormatFloat('##0%', 100 - ConfiguracaoDIFAL_ICMSPart.AsFloat), 4) + '  R$'+PadR(FormatFloat(',##0.00', PedidosDIFAL_ValorOrig.AsFloat), 14);
             mTexto := mTexto + CHR(13) + 'DIFAL ICMS RECOLHIDO ESTADO DESTINO: '+PadR(FormatFloat('##0%', ConfiguracaoDIFAL_ICMSPart.AsFloat), 4)       + '  R$'+PadR(FormatFloat(',##0.00', PedidosDIFAL_ValorDest.AsFloat), 14);
          end;

          if PedidosValor_FCP.Value > 0 then begin
             mTexto := mTexto + CHR(13) + 'FCP RECOLHIDO ESTADO DESTINO       : '+PadR(FormatFloat('##0%', ICMSFCP.AsFloat), 4)+'  R$'+PadR(FormatFloat(',##0.00', PedidosValor_FCP.AsFloat), 14);
          end;
          if PedidosValor_FCPST.Value > 0 then begin
             mTexto := mTexto + CHR(13) + 'FCP ST RECOLHIDO ESTADO DESTINO    : '+PadR(FormatFloat('##0%', ICMSFCP.AsFloat), 4)+'  R$'+PadR(FormatFloat(',##0.00', PedidosValor_FCPST.AsFloat), 14);
          end;

          // Monta relação de despesas do processo quando informado no tipo de nota.
          if TipoNota.fieldByName('Mostrar_Despesas').AsBoolean then begin
             with PagarReceber do begin
                  SQL.Clear;
                  SQL.Add('SELECT * FROM PagarReceber WHERE Processo = :pProcesso AND ISNULL(Processo, '''') <> '''' AND Custo_Entrada = 1 ORDER BY Classificacao');
                  ParamByName('pProcesso').AsString := PedidosProcesso.AsString;
                  Open;

                  mAchou := false;

                  first;
                  while not eof do begin
                        mTroca := Trim(Copy(FieldbyName('DescricaoClassificacao').asString, 1, 30));
                        mTroca := mTroca+Replicate('.', 30-Length(mTroca));
                        mTroca := mTroca+':R$'+PadR(FormatFloat(',##0.00', FieldByName('Valor_Total').AsCurrency), 14);
                        if not mAchou then begin
                           mTexto := mTexto + #13 + mTroca;
                        end else begin
                           mTexto := mTexto + '   ' + mTroca;
                        end;
                        mAchou := not mAchou;

                        next;
                  end;
             end;
          end;
     end;
     Screen.Cursor := crDefault;
     Result        := mTexto+mInfGasol;
End;

procedure TPedido.cProcessoClick(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     With Dados, dmFiscal do Begin
          If (Pedidos.State = dsInsert) or (Pedidos.State = dsEdit) then begin
             If (ProcessosDocTipo.Value <> 'COMPRA INTERNA') then begin
                // Verifica se existe contrato de cãmbio para o processo e pega a taxa de cãmbio se houver.
                tSoma.SQL.Clear;
                tSoma.SQL.Add('SELECT Taxa_Cambial FROM ContratoCambioItens WHERE Processo = :pProcesso');
                tSoma.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
                tSoma.Open;

                if tSoma.FieldByName('Taxa_Cambial').AsFloat <> 0 then
                   PedidosTaxa_Cambio.Value := ContratoCambioTaxa_Cambial.AsFloat
                else
                   PedidosTaxa_Cambio.Value := ProcessosDOCTaxa_FOB.Value;

                TipoProduto.Locate('Codigo', ProcessosDOCTipo_Mercadoria.Value, [loCaseInsensitive]);
                PedidosDI.Value               := ProcessosDOCNumero_Declaracao.Value;
                PedidosData_DI.Value          := ProcessosDOCData_RegistroDeclaracao.Value;
                PedidosIncentivo_Fiscal.Value := ProcessosDOCIncentivo_Fiscal.Value;
                PedidosTipo_Processo.Value    := Copy(ProcessosDOCTipo.Value, 1, 1);

                If mSai_Entra = 0 then begin
                   If ConfiguracaoVolumes_Entrada.AsBoolean = true then begin
                      If (PedidosVolume_Quantidade.AsInteger = 0) or (Pedidos.State = dsInsert) then begin
                         PedidosVolume_Quantidade.Value := ProcessosDOCVolumes.Value;
                         PedidosVolume_Especie.Value    := Trim(ProcessosDOCEspecie.Value);
                      End;
                   End;
                end else begin
                   If ConfiguracaoVolumes_Saida.AsBoolean = true then begin
                      If (PedidosVolume_Quantidade.AsInteger = 0) or (Pedidos.State = dsInsert) then begin
                         PedidosVolume_Quantidade.Value := ProcessosDOCVolumes.Value;
                         PedidosVolume_Especie.Value    := Trim(ProcessosDOCEspecie.Value);
                      End;   
                   End;
                End;

                lDI.Enabled     := True;
                lDataDI.Enabled := True;
             end else begin
                lDI.Enabled     := False;
                lDataDI.Enabled := False;
             End;
          End;

          Notas.SQL.Clear;
          Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Processo = :pProcesso) ORDER BY Data_Emissao DESC');
          Notas.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
          Notas.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE (Codigo IN((SELECT DISTINCT Exportador FROM Adicoes WHERE(DI = :pDI)))) ORDER BY Nome');
          Fornecedores.ParamByName('pDI').AsString := PedidosDI.AsString;
          Fornecedores.Open;
          If Pedidos.State = dsInsert then begin
             If mSai_Entra = 0 then begin
                PedidosArmazem.AsInteger := ProcessosDOC.fieldbyname('Armazem').AsInteger;
                If Fornecedores.RecordCount = 1 then begin
                   PedidosFornecedor_Codigo.AsInteger := FornecedoresCodigo.AsInteger;
                End;
             end else begin
                If (PedidosProcesso.AsString <> '') and (ProcessosDOCCliente.AsInteger <> 0) then begin
                   PedidosCliente_Codigo.AsInteger := ProcessosDOCCliente.AsInteger;
                End;
             End;
          End;
     End;
     Screen.Cursor := crDefault;
end;

procedure TPedido.bPesqArmClick(Sender: TObject);
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

procedure TPedido.bPesqCliForClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := iif(mSai_Entra = 0, 'Fornecedores', 'Clientes');
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and isnull(Ativo, 0) = 1';
      PesquisaGerais.mScript := 'select Codigo, Nome, CNPJ = ''  ''+isnull(CNPJ,'''')+isnull(CPF,'''')+''  '' from '+iif(mSai_Entra = 0,'Fornecedores', 'Clientes')+' Fornecedores where Nome like :pPesq and isnull(Ativo, 0) = 1';
      PesquisaGerais.Showmodal;
      cNome.keyValue := Clipboard.AsText;
end;

procedure TPedido.bPesqTransClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Fornecedores';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and isnull(Ativo, 0) = 1';
      PesquisaGerais.Showmodal;
      cTransportador.keyValue := Clipboard.AsText;
end;

procedure TPedido.bPesquisaClick(Sender: TObject);
begin
      If Dados.Pedidos.Locate('Pedido', InputBox('Pesquisa pedido', 'Nº Pedido:', ''), [loCaseInsensitive]) = False then
         ShowMessage('Número de pedido não encontrado no banco de dados.');
end;

procedure TPedido.cIndPresencaChange(Sender: TObject);
begin
      Dados.PedidosIndicador_Intermediario.clear;
      if cIndPresenca.ItemIndex in [2]       then Dados.PedidosIndicador_Intermediario.AsInteger := 1;
      if cIndPresenca.ItemIndex in [3, 4, 6] then Dados.PedidosIndicador_Intermediario.AsInteger := 0;
      cIndInter.Enabled := cIndPresenca.ItemIndex in [2, 3, 4, 6];
end;

procedure TPedido.cInfComplementaresEnter(Sender: TObject);
begin
     cinfComplementares.ShowHint := True;
end;

procedure TPedido.cInfComplementaresExit(Sender: TObject);
begin
     cInfComplementares.ShowHint := False;
end;

procedure TPedido.cCodigoNaturezaExit(Sender: TObject);
begin
      With Dados do begin
           If mSai_Entra = 1 then begin
              If (ClientesEstado.Value = EmpresasEstado.Value) and (Copy(cCodigoNatureza.Text,1,1) <> '5') then
                 ShowMessage('Natureza da operação invalida!'+#13+'Cliente de dentro do próprio estado.');
              If (ClientesEstado.Value <> EmpresasEstado.Value) and (ClientesEstado.Value <> 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '6') then
                 ShowMessage('Natureza da operação invalida!'+#13+'Cliente de fora do estado.');
              If (ClientesEstado.Value <> EmpresasEstado.Value) and (ClientesEstado.Value = 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '7') then
                 ShowMessage('Natureza da operação invalida!'+#13+'Cliente do exterior (Estado = EX).');
           End else begin
              If (FornecedoresEstado.Value = EmpresasEstado.Value) and (Copy(cCodigoNatureza.Text,1,1) <> '1') then
                 ShowMessage('Natureza da operação invalida!'+#13+'Fornecedor de dentro do próprio estado.');
              If (FornecedoresEstado.Value <> EmpresasEstado.Value) and (FornecedoresEstado.Value <> 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '2') then
                 ShowMessage('Natureza da operação invalida!'+#13+'Fornecedor de fora do estado.');
              If (FornecedoresEstado.Value <> EmpresasEstado.Value) and (FornecedoresEstado.Value = 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '3') then
                 ShowMessage('Natureza da operação invalida!'+#13+'Fornecedor do exterior (Estado = EX).');
           End;
           If Dados.Natureza.Locate('Codigo', cCodigoNatureza.Text, [loCaseInsensitive]) = false then begin
              MessageDlg('Erro!'+#13+#13+'Código de Natureza da Operação não "Cadastrado" ou "Desativado".', mtError, [mbOK], 0);
              If (Pedidos.State = dsInsert) or (Pedidos.State = dsEdit) then cCodigoNatureza.SetFocus;
           End;
      End;
end;

procedure TPedido.bLimparFormaClick(Sender: TObject);
begin
      Dados.PedidosModalidade_Pgto.Clear;
end;

procedure TPedido.cDescontoTipoExit(Sender: TObject);
begin
       If (Dados.Pedidos.State = dsInsert) or (Dados.Pedidos.State = dsEdit) then begin
          If Dados.PedidosDesconto_Tipo.Value = '' then begin
             Dados.PedidosDesconto_Percentual.Value := 0;
             cDescPercent.Enabled := False;
             cDescValor.Enabled   := False;
             cIRPJ.SetFocus;
          end else begin
             cDescPercent.Enabled := True;
             cDescValor.Enabled   := True;
             cDescPercent.SetFocus;
          End;
       End;
end;

procedure TPedido.bItensClick(Sender: TObject);
begin
     If Dados.ProcessosDOCTipo.Value = 'IMPORTAÇÃO' then begin
        Pedido_Itens := TPedido_Itens.Create(Self);
        Pedido_Itens.Caption := Caption;
        Pedido_Itens.ShowModal;
     end else begin
        Pedido_ItensCompraInterna := TPedido_ItensCompraInterna.Create(Self);
        Pedido_ItensCompraInterna.Caption := Caption;
        Pedido_ItensCompraInterna.ShowModal;
     End;

     GerarDuplicatas;

     With Dados do begin
          TipoNota.Locate('Codigo', PedidosTipo_Nota.Value, [loCaseInsensitive]);
          Pedidos.Edit;
                  PedidosInf_Complementares.Clear;
                  PedidosInf_Complementares.Value := MontaComplemento(TipoNotaInf_Complementares.Value, 1);
                  if trim(TipoNotaInf_Complementares2.asstring) <> '' then begin
                     PedidosInf_Complementares2.Clear;
                     PedidosInf_Complementares2.Value := MontaComplemento(TipoNotaInf_Complementares2.Value, 2);
                  end;
          Pedidos.Post;

          // Verifica o limite de compra do cliente.
          If (ClientesLimite_Credito.Value > 0) and (Dados.TipoNotaGerar_Financeiro.AsBoolean = true) then begin
             If (PedidosValor_TotalNota.Value+ClientesLimite_Utilizado.Value) > ClientesLimite_Credito.Value then begin
                 MessageDlg('Atenção!'+#13+#13+'Este pedido esta passando o limite do cliente em R$ '+FormatFloat('###,###,###,##0.00;0', PedidosValor_TotalNota.Value+ClientesLimite_Utilizado.Value-ClientesLimite_Credito.Value), mtInformation, [mbOK], 0);
             End;
          End;
          
          tItens.SQL.Clear;
          tItens.SQL.Add('SELECT COUNT(*) AS Itens FROM PedidosItens WHERE(Pedido = :pPedido)');
          tItens.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
          tItens.Open;
          bItens.Caption := '&Itens ['+PoeZero(4, tItens.FieldbyName('Itens').AsInteger)+']';

          Natureza.SQL.Clear;
          Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) and (Codigo BETWEEN :pIni AND :pFim) ORDER BY Descricao_NF');
          If mSai_Entra = 0 then begin
             Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_EntradaIni.Value;
             Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_EntradaFim.Value;
          end else begin
             Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_SaidaIni.Value;
             Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_SaidaFim.Value;
          End;
          Natureza.Open;
     End;
     TotalizaDespesas;
end;

procedure TPedido.cNomeExit(Sender: TObject);
begin
      With Dados do begin
           If mSai_Entra = 1 then begin
              Natureza.Close;
              Natureza.SQL.Clear;
              If (ClientesEstado.Value = EmpresasEstado.Value) then
                 Natureza.SQL.Add('SELECT * FROM Natureza WHERE (SUBSTRING(Codigo,1,1) = 5) AND (Ativo = 1)');
              If (ClientesEstado.Value <> EmpresasEstado.Value) and (ClientesEstado.Value <> 'EX') then
                 Natureza.SQL.Add('SELECT * FROM Natureza WHERE (SUBSTRING(Codigo,1,1) = 6) AND (Ativo = 1)');
              If (ClientesEstado.Value = 'EX') then
                 Natureza.SQL.Add('SELECT * FROM Natureza WHERE (SUBSTRING(Codigo,1,1) = 7) AND (Ativo = 1)');
              If ClientesCobranca_TipoFrete.AsString <> '' then PedidosModalidade_Frete.Value := ClientesCobranca_TipoFrete.Value;
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
           end else begin
              bEntRet.Enabled := false;
              Natureza.Close;
              Natureza.SQL.Clear;
              If (FornecedoresEstado.Value = EmpresasEstado.Value) then
                 Natureza.SQL.Add('SELECT * FROM Natureza WHERE (SUBSTRING(Codigo,1,1) = 1) AND (Ativo = 1)');
              If (FornecedoresEstado.Value <> EmpresasEstado.Value) and (FornecedoresEstado.Value <> 'EX') then
                 Natureza.SQL.Add('SELECT * FROM Natureza WHERE (SUBSTRING(Codigo,1,1) = 2) AND (Ativo = 1)');
              If (FornecedoresEstado.Value = 'EX') then
                 Natureza.SQL.Add('SELECT * FROM Natureza WHERE (SUBSTRING(Codigo,1,1) = 3) AND (Ativo = 1)');
           End;
           Natureza.Open;
      End;
end;

procedure TPedido.cNotaReferenciaClick(Sender: TObject);
begin
     With Dados, dmFiscal do begin
          PedidosData_Referencia.Value := NotasData_Emissao.Value;
     End;
End;

procedure TPedido.GerarDuplicatas;
begin
     If (mSai_Entra = 1) and (Dados.PedidosValor_TotalNota.Value <> 0) then begin
        With Dados, dmFiscal do Begin
             PedidosFatura.SQL.Clear;
             PedidosFatura.SQL.Add('DELETE FROM PedidosFatura WHERE (Pedido = :pPedido) AND (Origem_Pedido = 1)');
             PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
             PedidosFatura.Execute;

             PedidosDuplicata.SQL.Clear;
             PedidosDuplicata.SQL.Add('DELETE FROM PedidosDuplicata WHERE (Fatura = :pPedido)');
             PedidosDuplicata.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
             PedidosDuplicata.Execute;

             PedidosFatura.SQL.Clear;
             PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE (Pedido = :pPedido) AND (Origem_Pedido = 1)');
             PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
             PedidosFatura.Open;

             PedidosDuplicata.SQL.Clear;
             PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE(Fatura = :pPedido) ORDER BY CAST(Duplicata AS int)');
             PedidosDuplicata.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
             PedidosDuplicata.Open;

             PedidosFatura.Append;
                           PedidosFaturaFatura.Value        := PedidosNumero.AsString;
                           PedidosFaturaData_Emissao.Value  := Date;
                           PedidosFaturaPedido.Value        := PedidosNumero.Value;
                           PedidosFaturaData_Pedido.Value   := Date;
                           PedidosFaturaForma_Pgto.Value    := PedidosModalidade_Pgto.Value;
                           PedidosFaturaCliente.Value       := PedidosCliente_Codigo.Value;
                           PedidosFaturaValor_Total.Value   := PedidosValor_TotalNota.Value;
                           PedidosFaturaOrigem_Pedido.Value := true;
             PedidosFatura.Post;
        End;
     End;
End;

procedure TPedido.cNomeClick(Sender: TObject);
begin
      With Dados do begin
           If PedidosSaida_Entrada.Value = 0 then begin
              Adicoes.SQL.Clear;
              Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI) AND (Exportador = :pExportador)');
              Adicoes.ParamByName('pDI').AsString          := PedidosDI.Value;
              Adicoes.ParamByName('pExportador').AsInteger := PedidosFornecedor_Codigo.Value;
              Adicoes.Open;
              If Adicoes.RecordCount = 0 then begin
                 MessageDlg('Fornecedor inválido!'+#13+#13+'Não existe produtos deste fornecedor neste processo.', mtInformation, [mbOK], 0);
              End;
           End;
      End;
end;

procedure TPedido.bVisualizarClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           with tPedido do begin 
                sql.Clear;
                sql.Add('select *');
                sql.add('      ,Inf_Compl = concat(Inf_Complementares, Inf_Complementares2)');
                sql.add('from Pedidos');
                sql.add('where Numero = :pPedido');
                ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                Open;
           end;

           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Pedido,');
           tItens.SQL.Add('       Codigo_Mercadoria,');
           tItens.SQL.Add('       Codigo_Fabricante,');
           tItens.SQL.Add('       CASE WHEN (Total_Impostos > 0) AND (Valor_Total > 0) THEN');
           tItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))+ CHAR(13)+CHAR(13)+''                              TRIBUTOS : R$ ''+ CONVERT(VARCHAR, CAST(Total_Impostos AS money),-1) +');
           tItens.SQL.Add('                 ''  (''+CONVERT(VARCHAR, CAST( ROUND((Total_Impostos/Valor_Total)*100,2) AS money),-1)+''%)'' ');
           tItens.SQL.Add('       ELSE');
           tItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))');
           tItens.SQL.Add('       END AS Descricao_Mercadoria,');
           tItens.SQL.Add('       NCM,');
           tItens.SQL.Add('       Unidade_Medida,');
           tItens.SQL.Add('       CodigoTrib_TabA,');
           tItens.SQL.Add('       CodigoTrib_TabB,');
           tItens.SQL.Add('       CSTIPI,');
           tItens.SQL.Add('       CSTPIS,');
           tItens.SQL.Add('       CSTCOFINS,');
           tItens.SQL.Add('       Quantidade,');
           tItens.SQL.Add('       Valor_Unitario,');
           tItens.SQL.Add('       Valor_Total,');
           tItens.SQL.Add('       Aliquota_IPI,');
           tItens.SQL.Add('       Valor_IPI,');
           tItens.SQL.Add('       Total_IPI,');
           tItens.SQL.Add('       Aliquota_ICMSOper,');
           tItens.SQL.Add('       Valor_BCICMSOper,');
           tItens.SQL.Add('       Valor_ICMSOper,');
           tItens.SQL.Add('       Valor_BCICMSSub,');
           tItens.SQL.Add('       Aliquota_ICMSSub,');
           tItens.SQL.Add('       Valor_ICMSSub,');
           tItens.SQL.Add('       Aliquota_PIS,');
           tItens.SQL.Add('       Valor_PIS,');
           tItens.SQL.Add('       Aliquota_COFINS,');
           tItens.SQL.Add('       Valor_COFINS,');
           tItens.SQL.Add('       Total_Item,');
           tItens.SQL.Add('       Total_Impostos,');
           tItens.SQL.Add('       Natureza_Codigo');
           tItens.SQL.Add('FROM   PedidosItens');
           tItens.SQL.Add('WHERE  Pedido = :pPedido');
           tItens.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           //tItens.SQL.SaveToFile('c:\temp\Visualizar_Pedido_itens.sql');
           tItens.Open;
      End;

      cAFRMM.Visible := Dados.TipoNotaVisiveis_AFRMM.AsBoolean;
      DANFE_RetratoVis.Print;
      DANFE_RetratoVis.FreeOnRelease;
      DANFE_RetratoVis.Reset;
end;

procedure TPedido.ppDetailBand2BeforePrint(Sender: TObject);
begin
      // Limpando codigos de controle da descrição do item.
      lItem_CST.Caption := Trim(tItens.FieldByName('CodigoTrib_TabA').AsString)+Trim(tItens.FieldByName('CodigoTrib_TabB').AsString);

      If Dados.ConfiguracaoNFE_DANFE_CodigoProduto.AsString = 'I' then begin
         lCodigo.DataField := 'Codigo_Mercadoria'
      end else begin
         If Trim(tItens.FieldByName('Codigo_Fabricante').AsString) = '' then
            lCodigo.DataField := 'Codigo_Mercadoria'
         else
            lCodigo.DataField := 'Codigo_Fabricante';
      End;
      pQuantidade.Visible := Dados.TipoNotaVisiveis_QuantidadeItem.AsBoolean;
end;

procedure TPedido.ppHeaderBand1BeforePrint(Sender: TObject);
Var
    mParcela : Integer;
begin
      With Dados, dmFiscal do Begin
           with tVisualizar do begin
                sql.Clear;
                sql.Add('select *');
                sql.add('      ,Inf_Compl = concat(Inf_Complementares, Inf_Complementares2)');
                sql.add('from Pedidos');
                sql.add('where Numero = :pPedido');
                parambyname('pPedido').AsInteger := PedidosNumero.Value;
                open;
           end;

           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE (Pedido = :pPedido) ORDER BY Item');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.Open;

           PedidosFatura.SQL.Clear;
           PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE (Pedido = :pPedido) AND (Origem_Pedido = 1)');
           PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosFatura.Open;

           PedidosDuplicata.SQL.Clear;
           PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Fatura = :pFatura) ORDER BY CAST(Duplicata AS int)');
           PedidosDuplicata.ParamByName('pFatura').AsInteger := PedidosFaturaPedido.Value;
           PedidosDuplicata.Open;

           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

           Natureza.Open;
           Natureza.Locate('Codigo', PedidosNatureza_Codigo.Value, [loCaseInsensitive]);

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

           Clientes.Open;
           Clientes.Locate('Codigo', PedidosCliente_Codigo.Value, [loCaseInsensitive]);

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.Open;
           Fornecedores.Locate('Codigo', PedidosFornecedor_Codigo.Value, [loCaseInsensitive]);

           // Campos do cebeçalho visiveis apenas na primeira pagina.
           gDadosNF.Visible               := DANFE_RetratoVis.PageNo = 1;
           lRazaoSocial.Caption           := 'RECEBEMOS DE '+Trim(EmpresasRazao_Social.Value)+' OS PRODUTOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO.';
           lEmpresa.Caption               := Trim(EmpresasRazao_Social.Value);
           lEndereco.Caption              := Trim(EmpresasRua.Value) + ',Nº '+Trim(EmpresasRua_Numero.AsString)+', '+Trim(EmpresasComplemento.AsString);
           lBairroMunicipio.Caption       := Trim(EmpresasBairro.Value)+', '+Trim(MunicipiosNome.Value)+' ('+Trim(EmpresasEstado.Value)+')   '+'CEP:'+FormatMaskText('#####-###;0',EmpresasCEP.Value);
           lCEP.Caption                   := 'TEL:'+FormatMaskText('(##) #########;0', EmpresasTelefone1.Value)+'  FAX:'+FormatMaskText('(##) #########;0',EmpresasFAX.Value);
           lSerie.Caption                 := 'Série: '+PoeZero(3,EmpresasNFEletronica_Serie.AsInteger);
           lSerie2.Caption                := 'Série: '+PoeZero(3,EmpresasNFEletronica_Serie.AsInteger);
           lNumero.Caption                := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, PedidosNumero.AsInteger) );
           lNumero_Folha.Caption          := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, PedidosNumero.AsInteger) )+' FL'+InttoStr(DANFE_RetratoVis.PageNo)+'/'+InttoStr(DANFE_RetratoVis.PageCount);
           lIE.DisplayFormat              := EstadosMascara_Inscricao.Value;
           lNatureza.Caption              := TipoNotaDescricao_CFOP_Nota.AsString;
           lDestinatario_Telefone.Caption := '';
           lDestinatario_IE.Caption       := Trim(PedidosDestinatario_IE.Value);

           If Trim(lNatureza.Caption) = '' then lNatureza.Caption := NaturezaDescricao_NF.AsString;

           // Dados do destinatário.
           lDestinatario_Nome.Caption      := PedidosDestinatario_Nome.AsString;
           lDestinatario_Rua.Caption       := Trim(PedidosDestinatario_Rua.Value)+', Nº '+Trim(PedidosDestinatario_RuaNumero.Value)+', '+Trim(PedidosDestinatario_Complemento.AsString);
           lDestinatario_Bairro.Caption    := Trim(PedidosDestinatario_Bairro.Value);
           lDestinatario_CEP.Caption       := FormatMaskText('#####-###;0', PedidosDestinatario_CEP.Value);
           lDestinatario_Municipio.Caption := AnsiUpperCase(Trim(PedidosDestinatario_MunicipioNome.Value));
           lDestinatario_Telefone.Caption  := FormatMaskText('(##) #########;0', PedidosDestinatario_Telefone1.Value);
           lDestinatario_UF.Caption        := Trim(PedidosDestinatario_Estado.Value);
           If PedidosDestinatario_Juridica.AsBoolean = true then begin
              lDestinatario_CNPJ.Caption := FormatMaskText('##.###.###/####-##;0', PedidosDestinatario_CNPJ_CPF.Value);
           end else begin
              lDestinatario_CNPJ.Caption := FormatMaskText('###.###.###-##;0', PedidosDestinatario_CNPJ_CPF.Value);
           end;

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

           ppDBText7.Visible  := not TipoNota.FieldByName('TTD').AsBoolean;
           ppDBText33.Visible := not TipoNota.FieldByName('TTD').AsBoolean;

//           lInf_Complementares.Text  := tVisualizar.FieldByName('Inf_Complementares').AsString+#13+tVisualizar.FieldByName('Inf_Complementares2').AsString;

           Rodape.PrintOnLastPage := DANFE_RetratoVis.PageCount = 1;
           Rodape.Visible         := DANFE_RetratoVis.PageNo = 1;
      End;
end;

procedure TPedido.lNomeClick(Sender: TObject);
begin
      If mSai_Entra = 0 then begin
         Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
         Cadastro_Fornecedores.Caption := Caption;
         Cadastro_Fornecedores.ShowModal;
         Dados.Fornecedores.Open;
         Dados.TipoProduto.Open;
      end else begin
         Cadastro_Clientes := TCadastro_Clientes.Create(Self);
         Cadastro_Clientes.Caption := Caption;
         Cadastro_Clientes.ShowModal;
         Dados.Clientes.Open;
      End;
end;

procedure TPedido.StaticText8Click(Sender: TObject);
begin
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.ShowModal;

      Dados.TipoProduto.Open;
      Transportadores.Close;
      Transportadores.Open;
end;

procedure TPedido.StaticText6Click(Sender: TObject);
begin
      Cadastro_NaturezaOperacao := TCadastro_NaturezaOperacao.Create(Self);
      Cadastro_NaturezaOperacao.Caption := Caption;
      Cadastro_NaturezaOperacao.ShowModal;
      Dados.Natureza.Open;
end;

procedure TPedido.bDuplicatasClick(Sender: TObject);
begin
      If Dados.PedidosValor_TotalNota.Value > 0 then begin
         ModalidadePgto_PedidoParcelas := TModalidadePgto_PedidoParcelas.Create(Self);
         ModalidadePgto_PedidoParcelas.mTipo   := 'R';
         ModalidadePgto_PedidoParcelas.mTipoNF := 4;
         ModalidadePgto_PedidoParcelas.ShowModal;
      end else begin
         ShowMessage('Não é possivel gerar duplicatas!'+#13+#13+'O Valor do pedido não pode ser igual a zero.'+#13+#13+'Informe os itens do pedido e gere as duplicatas.'); 
      End;
end;

procedure TPedido.DBEdit2Change(Sender: TObject);
begin
      cOperacaoVeiculo.ItemIndex := -1;
      With Dados do begin
           If PedidosOperacao_Veiculo.AsString <> '' then begin
              If PedidosOperacao_Veiculo.AsString <> '9' then
                 cOperacaoVeiculo.ItemIndex := PedidosOperacao_Veiculo.AsInteger
              else
                 cOperacaoVeiculo.ItemIndex := 4;
           End;
           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE( Codigo IN((SELECT DISTINCT Exportador FROM Adicoes WHERE(DI = :pDI)))) ORDER BY Nome');
           Fornecedores.ParamByName('pDI').AsString := PedidosDI.AsString;
           Fornecedores.Open;

           titens.Connection := Dados.Banco_Empresas;
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT COUNT(*) AS Itens FROM PedidosItens WHERE(Pedido = :pPedido)');
           tItens.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tItens.Open;
           bItens.Caption := '&Itens ['+PoeZero(4, tItens.FieldbyName('Itens').AsInteger)+']';

           if (Clientes.FieldByName('Endereco_Entrega').AsBoolean) or (Clientes.FieldByName('Endereco_Retirada').AsBoolean) then begin
              bEntRet.Enabled := true;
              if (Trim(ClientesRua_Entrega.AsString) = '') and (Trim(ClientesRua_Retirada.AsString) = '') then begin
                 bEntRet.Enabled := false;
              end;
           end;
      End;

      TotalizaDespesas;
end;

procedure TPedido.Button1Click(Sender: TObject);
begin
       Pedido_DadosVeiculo := TPedido_DadosVeiculo.Create(Self);
       Pedido_DadosVeiculo.ShowModal;
end;

procedure TPedido.cDescPercentExit(Sender: TObject);
begin
      With Dados do begin
           If (PedidosDesconto_Percentual.AsFloat > 0) AND (Trim(PedidosDesconto_Tipo.AsString) = 'COMERCIAL') then begin
              PedidosTotal_Descontos.Value := (PedidosValor_TotalProdutos.AsCurrency * (PedidosDesconto_Percentual.AsFloat/100));
           End;
      End;
end;

procedure TPedido.DANFE_RetratoVisBeforePrint(Sender: TObject);
begin
      pDescontos.Visible := Dados.TipoNotaVisiveis_Desconto.Value;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         iLogo.Width := Dados.EmpresasLogomarca_Largura.Value;
         iLogo.Left  := (lQuadroEmpresa.Width - Dados.EmpresasLogomarca_Largura.Value)/2;
      end;
      
//      With Dados do begin
//           Obs_Logo.Visible := false;
//           Obs_Msg1.Visible := false;
//           Obs_Msg2.Visible := false;
//           lII.Visible      := PedidosSaida_Entrada.asinteger = 0;
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
//      End;
end;

procedure TPedido.cTipoNotaClick(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With Dados do Begin
             PedidosSaida_Entrada.Value        := TipoNotaSaida_Entrada.Value;
             PedidosMovimenta_Inventario.Value := TipoNotaMovimenta_Inventario.Value;
             PedidosComplementar.Value         := TipoNotaComplementar.Value;
             PedidosBaixa_Estoque.Value        := TipoNotaBaixa_Estoque.Value;
             PedidosRemessa.Value              := TipoNotaRemessa.asboolean;
             If TipoNotaNota_Referencia.Value = False then begin
                PedidosNota_Referencia.Clear;
                PedidosData_Referencia.Clear;
             End;
             cNotaReferencia.Enabled := TipoNotaNota_Referencia.Value;
        End;
        Screen.Cursor := crDefault;
end;

procedure TPedido.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
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

procedure TPedido.bPesquisarClick(Sender: TObject);
Var
    mPesquisa : String;
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Número / Processo', mPesquisa));
     If Dados.Pedidos.Locate('Numero', mPesquisa, [loCaseInsensitive]) = false then begin
        If Dados.Pedidos.Locate('Processo', mPesquisa, [loCaseInsensitive]) = false then begin
           MessageDlg('Nenhum pedido encontrado com o número ou processo informados!', mtInformation, [mbOk], 0);
        End;
     End;
end;

procedure TPedido.ZerarDupl;
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
      Obj.free;
end;

procedure TPedido.DuplicataDANFE(pParc:integer);
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

procedure TPedido.bEntRetClick(Sender: TObject);
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

procedure TPedido.TotalizaDespesas;
begin
      Screen.Cursor := crSQLWait;

      With Dados do Begin
           // Seleciona as despesas do processo.
           Grade2.DisableScroll;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Processo = :pProcesso) AND (ISNULL(Processo, '''') <> '''') ORDER BY Classificacao');
           PagarReceber.ParamByName('pProcesso').AsString := PedidosProcesso.AsString;
           PagarReceber.Open;
           PagarReceber.First;
           Grade2.EnableScroll;

           // Totaliza as despesas do processo.
           tSoma.SQL.Clear;
           If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
              tSoma.SQL.Add('SELECT SUM(CASE WHEN Tipo = ''P'' AND CustoConta     = 1 THEN Valor_Total ELSE 0 END) AS Total_Custo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Seletivo = 1 THEN Valor_Total ELSE 0 END) AS Total_Seletivo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Entrada  = 1 THEN Valor_Total ELSE 0 END) AS Total_Entrada,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Outros   = 1 THEN Valor_Total ELSE 0 END) AS Total_Outros');
           end else begin
              tSoma.SQL.Add('SELECT SUM(CASE WHEN Tipo = ''P'' AND CustoConta     = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Custo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Seletivo = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Seletivo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Entrada  = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Entrada,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Outros   = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Outros');
           End;
           tSoma.SQL.Add('FROM   PagarReceber WHERE(Processo = :pProcesso)');
           tSoma.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
           tSoma.Open;

           cTotalDespesasCusto2.Value    := tSoma.FieldByName('Total_Custo').AsCurrency;
           cTotalDespesasEntrada.Value   := tSoma.FieldByName('Total_Entrada').AsCurrency;
           cTotalDespesasOutros2.Value   := tSoma.FieldByName('Total_Outros').AsCurrency;
           cTotalDespesasSeletivo2.Value := tSoma.FieldByName('Total_Seletivo').AsCurrency;
      End;

      Screen.Cursor := crDefault;
end;

procedure TPedido.Grade2DrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TPedido.Grade2CellClick(Column: TColumn);
begin
     AjustaMenu;
end;

procedure TPedido.Ajustamenu;
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

procedure TPedido.mnMarcarCustoEntradaClick(Sender: TObject);
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

procedure TPedido.mnDesmarcarCustoEntradaClick(Sender: TObject);
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

procedure TPedido.mnMarcarCustoTodosEntradaClick(Sender: TObject);
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

procedure TPedido.mnDesmarcarCustoTodosEntradaClick(Sender: TObject);
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

procedure TPedido.mnMarcarCustoClick(Sender: TObject);
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

procedure TPedido.mnDesmarcarCustoClick(Sender: TObject);
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

procedure TPedido.mnMarcarCustoTodosClick(Sender: TObject);
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

procedure TPedido.mnDesmarcarCustoTodosClick(Sender: TObject);
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

procedure TPedido.mnMarcarCustoOutrosClick(Sender: TObject);
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

procedure TPedido.mnDesmarcarCustoOutrosClick(Sender: TObject);
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

procedure TPedido.mnMarcarCustoTodosOutrosClick(Sender: TObject);
begin
      If MessageDlg('Deseja selecionar todas as despesas como Custo (Outros)?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
         With Dados do begin
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Outros = 1 WHERE(Processo = :pProcesso) ');
              PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
              PagarReceber.Execute;

              TotalizaDespesas;
         End;
      End;
end;

procedure TPedido.mnDesmarcarCustoTodosOutrosClick(Sender: TObject);
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

procedure TPedido.mnMarcarSeletivoClick(Sender: TObject);
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

procedure TPedido.mnDesmarcarSeletivoClick(Sender: TObject);
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

procedure TPedido.mnMarcarSeletivoTodosClick(Sender: TObject);
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

procedure TPedido.mnDesmarcarSeletivoTodosClick(Sender: TObject);
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

End.
