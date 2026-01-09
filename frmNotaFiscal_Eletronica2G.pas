unit frmNotaFiscal_Eletronica2G;

interface

uses
    Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, MSAccess, DBAccess, Vcl.StdCtrls, Vcl.ExtCtrls,DBCtrls, DBGrids, RXDBCtrl,
    RXCtrls, Funcoes, Mask, DateUtils, MMSystem, NFe_util_2G_tlb, Vcl.ComCtrls, ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppClass, ppProd, ppReport, MaskUtils, ppBarCod, ppMemo, ppParameter, ppSubRpt,
    Math, IdIOHandler, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, ppTypes, ShellApi, IdMessage, IdTCPConnection, IdSMTP, ppVar, RxLookup, IdAttachmentFile, inifiles, IdTCPClient, IdExplicitTLSClientServerBase,
    raCodMod, Grids, ppDesignLayer, RxToolEdit, IdIOHandlerSocket, IdBaseComponent, idText, IdComponent, IdMessageClient, IdSMTPBase, ppModule, ppStrtch, ppCache, ppDB, ppComm, ppRelatv, system.UITypes, 
    MemDS, Service.APIDominio;

type
    TNotaFiscal_Eletronica2G = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bEnviar: TButton;
    cDataEmissao: TDateEdit;
    StaticText2: TStaticText;
    tNotasRef: TMSQuery;
    Navega: TDBNavigator;
    tChecaData: TMSQuery;
    tChecaDataData_Emissao: TDateTimeField;
    cDataEntradaSaida: TDateEdit;
    StaticText1: TStaticText;
    bDANFE: TButton;
    plNotas: TppDBPipeline;
    plItens: TppDBPipeline;
    tbNotas: TMSQuery;
    dsNotas: TDataSource;
    tbItens: TMSQuery;
    dsItens: TDataSource;
    plEmpresas: TppDBPipeline;
    tLancamento: TMSQuery;
    ppNatureza: TppDBPipeline;
    tTempo: TTimer;
    DANFE_Retrato: TppReport;
    ppParameterList1: TppParameterList;
    bSelecionar: TButton;
    bDesmarcar: TButton;
    tProvisao: TMSQuery;
    tProvisaoNumero: TLargeintField;
    tPISCOFINS: TMSQuery;
    tProcessos: TMSQuery;
    tHistorico: TMSQuery;
    tAguardando: TMSQuery;
    tCIAP: TMSQuery;
    tRateios: TMSQuery;
    tDespesas: TMSQuery;
    tItens: TMSQuery;
    cTipo: TRadioGroup;
    StaticText3: TStaticText;
    cProcesso: TRxDBLookupCombo;
    tAdicoes: TMSQuery;
    tAdicoesDI: TStringField;
    tAdicoesAdicao: TSmallintField;
    tAdicoesSequencia: TSmallintField;
    tAdicoesSequencia_SISCOMEX: TSmallintField;
    tAdicoesCodigo_Mercadoria: TIntegerField;
    tAdicoesQuantidade: TFloatField;
    tAdicoesLancado_Entrada: TFloatField;
    tAdicoesLancado_Saida: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grade: TRxDBGrid;
    RxDBGrid1: TRxDBGrid;
    dstContainers: TDataSource;
    tContainers: TMSQuery;
    tContainersNumero: TIntegerField;
    tContainersSaida_Entrada: TSmallintField;
    tContainersProcesso: TStringField;
    tContainersDI: TStringField;
    tContainersValor_TotalNota: TCurrencyField;
    tContainersComplementar: TBooleanField;
    tContainersErros: TSmallintField;
    tContainersDestinatario_Nome: TStringField;
    tContainersAguardando: TBooleanField;
    tContainersSaida_EntradaTexto: TStringField;
    tAdicoesLancado_Terceiros: TFloatField;
    Button1: TButton;
    tUltimoNumero: TMSQuery;
    tRegistro: TMSQuery;
    bXML: TButton;
    tPedidos: TMSQuery;
    tDetalhes: TMSQuery;
    TabSheet3: TTabSheet;
    cMensagens: TMemo;
    tErro: TMSQuery;
    GradeErros: TRxDBGrid;
    tEstoque: TMSQuery;
    lTitulo: TRxLabel;
    lDescricao: TRxLabel;
    Image2: TImage;
    tAdicoesRegistro: TLargeintField;
    tLote: TMSQuery;
    tDetalhe: TMSQuery;
    tLoteNotas: TMSQuery;
    cDataHora: TCheckBox;
    ppHeaderBand1: TppHeaderBand;
    ppShape60: TppShape;
    lQuadroEmpresa: TppShape;
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
    CodigoBarras: TppDBBarCode;
    lIE: TppDBText;
    ppMemo1: TppMemo;
    ppLabel81: TppLabel;
    lProtocolo: TppDBText;
    lDataProtocolo: TppDBText;
    lNatureza: TppLabel;
    ppDBText1: TppDBText;
    lDPEC: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine10: TppLine;
    lCodigo: TppDBText;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText27: TppDBText;
    ppLine12: TppLine;
    ppDBText28: TppDBText;
    ppLine14: TppLine;
    lQuantidade: TppDBText;
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
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLine27: TppLine;
    Rodape: TppFooterBand;
    ppLine28: TppLine;
    ppGroup1: TppGroup;
    gDadosNF: TppGroupHeaderBand;
    lHomologacao: TppLabel;
    ppShape28: TppShape;
    ppShape13: TppShape;
    ppShape45: TppShape;
    ppShape40: TppShape;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    lDestinatario_Nome: TppLabel;
    ppShape14: TppShape;
    ppLabel15: TppLabel;
    ppShape15: TppShape;
    ppLabel16: TppLabel;
    lData_Emissao: TppDBText;
    lDestinatario_CNPJ: TppLabel;
    ppShape16: TppShape;
    lDestinatario_Endereco: TppLabel;
    lDestinatario_Rua: TppLabel;
    ppShape17: TppShape;
    lDestinatario_Bairro: TppLabel;
    ppShape18: TppShape;
    lDestinatario_CEP: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppShape19: TppShape;
    ppLabel17: TppLabel;
    lData_EntradaSaida: TppDBText;
    ppShape20: TppShape;
    ppLabel18: TppLabel;
    lDestinatario_Municipio: TppLabel;
    ppShape21: TppShape;
    ppLabel19: TppLabel;
    lDestinatario_Telefone: TppLabel;
    ppShape22: TppShape;
    ppLabel22: TppLabel;
    lDestinatario_UF: TppLabel;
    ppShape23: TppShape;
    ppLabel24: TppLabel;
    ppShape24: TppShape;
    ppLabel25: TppLabel;
    lHora_Saida: TppDBText;
    ppLabel27: TppLabel;
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
    lDestinatario_IE: TppLabel;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
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
    ppLabel38: TppLabel;
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
    ppLabel7: TppLabel;
    lII: TppDBText;
    ppShape68: TppShape;
    ppLabel80: TppLabel;
    ppDBText29: TppDBText;
    ppShape67: TppShape;
    ppLabel93: TppLabel;
    ppDBText41: TppDBText;
    ppShape69: TppShape;
    ppLabel94: TppLabel;
    cAFRMM: TppDBText;
    ppShape70: TppShape;
    ppLabel95: TppLabel;
    ppDBText44: TppDBText;
    ppShape71: TppShape;
    ppLabel99: TppLabel;
    ppDBText45: TppDBText;
    ppShape72: TppShape;
    ppLabel101: TppLabel;
    ppDBText46: TppDBText;
    lDenegada: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppLabel79: TppLabel;
    ppShape80: TppShape;
    ppShape63: TppShape;
    ppShape64: TppShape;
    ppLabel86: TppLabel;
    ppShape65: TppShape;
    ppLabel87: TppLabel;
    ppShape66: TppShape;
    ppLabel88: TppLabel;
    ppLabel82: TppLabel;
    ppLabel89: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppLabel83: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    raCodeModule2: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    tTmp: TMSQuery;
    Banco_Tmp: TMSConnection;
    tCli: TMSQuery;
    SMTP: TIdSMTP;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;
    EmailMSg: TIdMessage;
    TabSheet4: TTabSheet;
    mAnalise: TMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
    procedure bDANFEClick(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GerarXML;
    procedure AssinarNFe;
    procedure EnviarNFe;
    procedure BuscarNFe;
    Procedure SalvarNFe;
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure tTempoTimer(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bDesmarcarClick(Sender: TObject);
    procedure ValidarXML;
    procedure BuscarChave;
    procedure EnviarEmail(Tipo: String);
    procedure DANFE_RetratoBeforePrint(Sender: TObject);
    procedure GeraDuplicatas(Tipo: Integer; Subsequente: Boolean; Dias: Integer; Classificacao: String; PercentualCambio: Real);
    Function  MontaDetalhe(item:integer; i:Integer; Qtde:double; Valor:double): string;
    procedure Consistencia;
    procedure ItemGrade(Item: Integer; Tabela, Produto, NCM, Processo, Descricao: String);
    procedure PegaErros;
    procedure GradeCellClick(Column: TColumn);
    procedure GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GradeEditChange(Sender: TObject);
    procedure cProcessoChange(Sender: TObject);
    procedure FiltraPedidos;
    procedure cTipoClick(Sender: TObject);
    procedure tContainersCalcFields(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bXMLClick(Sender: TObject);
    procedure GradeErrosCellClick(Column: TColumn);
    function  MontaHistorico(Historico: integer): String;
    procedure RegistraPasso(pPasso: string);
    procedure DuplicataDANFE(pParc:integer);
    procedure ZerarDupl;
    procedure BloqueiaEmissao(Tipo: Boolean);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FAPI: TServiceAPIDominio;
    procedure EnviarEPEC;
    function ConsultaContig: boolean;
    procedure EnviarNFESinc;
  public
    { Public declarations }
    mTotalDuplicatas
   ,mValor: real;
    mHist
   ,mLote
   ,mCliFin
   ,mSinc
   ,ide_tpEmis: Integer;
    mTipoEnvio
   ,mOrig: string;
   mPasta: String;
  end;

var
  NotaFiscal_Eletronica2G: TNotaFiscal_Eletronica2G;

  //====== Identificação do documento =======
  ide,
  ide_natOp,
  ide_cMunFG,
  ide_NFref,
  ide_xJust,
  ide_dEmi310,
  ide_dSaiEnt310,
  ide_verProc:widestring;

  ide_cUF,
  ide_cNF,
  ide_indPag,
  ide_mode,
  ide_serie,
  ide_nNF,
  ide_tpNF,
  ide_tpIMP,
  ide_cDV,
  ide_tpAmb,
  ide_finNFe,
  ide_Dest,
  ide_Final,
  ide_Pres,
  ide_Interm,
  ide_procEmi:integer;

  ide_dEmi,
  ide_dhCont,
  ide_dSaiEnt:Tdatetime;

  //====== Dados do Emitente ==========
  emi,
  emi_CNPJ,
  emi_xNome,
  emi_xFant,
  emi_xLgr,
  emi_nro,
  emi_xCpl,
  emi_xBairro,
  emi_cMun,
  emi_xMun,
  emi_UF,
  emi_CEP,
  emi_cPais,
  emi_xPais,
  emi_fone,
  emi_IE,
  emi_IEST,
  emi_IM,
  emi_CNAE,
  emi_CRT : widestring;

  //====== Dados do Destinatário ==========
  dest,
  dest_CNPJ,
  dest_CPF,
  dest_xNome,
  dest_xLgr,
  dest_nro,
  dest_xCpl,
  dest_xBairro,
  dest_cMun,
  dest_xMun,
  dest_UF,
  dest_CEP,
  dest_cPais,
  dest_xPais,
  dest_fone,
  dest_IE,
  dest_Estr,
  dest_indIE,
  dest_Email,
  dest_IESUF : widestring;

  //====== Valor total da NF-e ============
  total,
  _gIBSTot,
  _gCBSTot,
  _gMonoTot,
  _gEstornoCred,
  _IBSCBSTotv130,
  totICMS : widestring;
  //====== Dados do Transportador =========
  Transp,
  TranspModFrete,
  Transportador,
  Veiculo,
  Reboque,
  Vagao,
  Balsa,
  Transp_CNPJ,
  Transp_CPF,
  Transp_xNome,
  Transp_xEnder,
  Transp_IE,
  Transp_xMun,
  Transp_UF,
  VeicTransp_placa,
  VeicTransp_UF,
  VeicTransp_RNTC,
  Reboque_placa,
  Reboque_UF,
  Reboque_RNTC,
  Balsa_placa,
  Balsa_UF,
  Balsa_RNTC,
  Vagao_placa,
  Vagao_UF,
  Vagao_RNTC : widestring;

  // Local de entrega e Retirada.
  Ent_CNPJ,
  Ent_CPF,
  Ent_xNome,
  Ent_xLgr,
  Ent_nro,
  Ent_xCpl,
  Ent_xBairro,
  Ent_cMun,
  Ent_xMun,
  Ent_UF,
  Ent_CEP,
  Ent_cPais,
  Ent_xPais,
  Ent_fone,
  Ent_email,
  Ent_IE,

  Ret_CNPJ,
  Ret_CPF,
  Ret_xNome,
  Ret_xLgr,
  Ret_nro,
  Ret_xCpl,
  Ret_xBairro,
  Ret_cMun,
  Ret_xMun,
  Ret_UF,
  Ret_CEP,
  Ret_cPais,
  Ret_xPais,
  Ret_fone,
  Ret_email,
  Ret_IE:widestring;

  //====== Dados de exportação =======
  UFEmbarq,
  xLocDespacho,
  xLocEmbarq: widestring;

  //====== Informações Adicionais  =======
  infAdic,
  infAdic_infAdiFisco,
  infAdic_infCPL : widestring;

  //====== Dados do contador quando obirgatório =======
  xmlAut : Widestring;

  //====== Nota Fiscal  =======
  NFe,
  ChaveNFE,
  Versao,
  mVersaoNFE,
  id,
  Retirada,
  Entrega,
  Compra,
  Exporta,
  Cobr,
  Pagamento,
  DetPag,
  Dupl,
  mDetalhes,
  Intermediador,
  NF_Ref: widestring;

  //======= Assinatura NFe  ========
  NFE_xmlDoc,
  xmlassinado,
  MsgResultado: WideString;
  xmlProtocolo: TMemo;
  mDir        : string;
  mAnexo      : String;
  mNota,
  mNotaIni,
  mResultado  : Integer;

  //======= Envio Nfe  =========
  RetWS,
  CabMsg,
  NomeCertificado,
  SiglaUF,
  Msg,
  Licenca,
  DadosMsg,
  Proxy,
  Usuario,
  Senha,
  SiglaWS,
  NroRecibo,
  NFeAssinada,
  Protocolo_EPEC,
  DataHora_EPEC,
  mProtocolo,
  mProtocoloData: WideString;
  mQtdErros,
  TpAmb,
  mEnviadas,
  mRejeitadas: Integer;
  mTamanhoArquivo: Real;
  mDenegada,
  mProcessamento: Boolean;

  //======= Diversas  ========
  mContaDebito,
  mContaCredito: String;
  dhRecbto,
  tMed,
  tAssinado,
  cMsg,
  DPECAssinado,
  dhRegDPEC,
  nRegDPEC,
  xMsg       : WideString;
  cStat,
  mNormalDPEC: Integer;
  tMemoXML   : TMemo;
  mParcelas  : Integer;
  mDataDupl  : TDate;

  mVia,
  mUltimoDia : Integer;

  //============== Duplicatas ===============
  mLetra: Integer;
  mDias: Integer;

  //mTotalDespesa : Real;
  mDupValorFrete  : Currency;
  mDupValorSeguro : Currency;

implementation

uses frmDMFiscal, frmDados, frmMenu_Principal, frmDMContab, frmProcesso_Importacao, frmPedido, frmPedido_Outros, frmDMComercial, frmCadastro_NCM, frmCadastro_Fornecedores, frmCadastro_Clientes,
     frmCadastro_TiposProcesso, frmFinanceiro_Lista, frmConfig_TipoNota, frmProcesso_Exportacao, frmCadastro_Empresas, frmJanela_Processamento, frmCadastro_Produtos;

{$R *.dfm}

procedure TNotaFiscal_Eletronica2G.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TNotaFiscal_Eletronica2G.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI:TIniFile;
begin
      // Desconecta o banco temporario e volta o Financeiro para o banco de origem.
      Banco_Tmp.Disconnect;
      Dados.PagarReceber.Connection := Dados.Banco_Empresas;

      // Salvando a configuração de data e hora de entrada/saída.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteBool('EnvioNFE', 'DataHora', cDataHora.Checked);
      aINI.Free;

      With Dados, dmFiscal do begin
           tPedidos.SQL.Clear;
           tPedidos.SQL.Add('UPDATE Pedidos SET Erros = 0');
           tPedidos.Execute;

           Notas.SQL.Clear;
           Notas.SQL.Add('UPDATE NotasFiscais SET Imprimir_DANFE = 0 WHERE (Imprimir_DANFE = 1)');
           Notas.Execute;
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais');
      End;

      FecharTabelas(Dados, dmFiscal, dmContab, dmComercial);

      LimpaMemoria;

      NotaFiscal_Eletronica2G.Release;
      NotaFiscal_Eletronica2G := nil;
end;

procedure TNotaFiscal_Eletronica2G.FormShow(Sender: TObject);
Var
   aINI:TIniFile;
begin
      // Carregando configuração de data e hora de entra/saida.
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataHora.Checked := aINI.ReadBool('EnvioNFE', 'DataHora', true);

      Screen.Cursor                := crSQLWait;
      PageControl1.ActivePageIndex := 0;

      With Dados, dmFiscal do begin
           // Ajusta o banco de dados do financeiro quando configurado pra gerar os lançamentos financeiros em outra empresa.
           //================================================================================================================
           Banco_Tmp.Server   := Banco_Empresas.Server;
           Banco_Tmp.Username := Banco_Empresas.Username;
           Banco_Tmp.Password := Banco_Empresas.Password;
           Banco_Tmp.Database := Banco_Empresas.Database;
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas where Codigo = :pEmpresa');
                parambyname('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                open;
//                lTitulo.Caption := lTitulo.Caption + ' ('+EmpresasVersao_DLL.Text+')';
           end;
           with Configuracao do begin
                Open;
                if trim(fieldbyname('Empresa_Financeiro').AsString) <> '' then begin
                   with tTmp do begin
                        sql.clear;
                        sql.add('select Banco_Dados from Cybersoft_Cadastros.dbo.Empresas where CNPJ = :pCNPJ');
                        parambyname('pCNPJ').value := Configuracao.FieldByName('Empresa_Financeiro').AsString;
                        open;
                        Banco_Tmp.Database := fieldbyname('Banco_Dados').asstring;
                   end;
                end;
           end;
           PagarReceber.Connection := Banco_Tmp;
           tProvisao.Connection    := Banco_Tmp;
           tDespesas.Connection    := Banco_Tmp;
           Banco_Tmp.Connected     := true;
           //================================================================================================================
           
           Consistencia;

           TabSheet2.TabVisible := ConfiguracaoFaturamento_TravaContainer.AsBoolean;

           // Para os casos de erro antes de receber autorização ou salvar a nota no sistema.
           tPedidos.SQL.Clear;
           tPedidos.SQL.Add('UPDATE Pedidos SET Aguardando = 1');
           tPedidos.SQL.Add('WHERE Passo IN(''3.0'', ''4.0'', ''5.0'', ''6.6'')');
           tPedidos.Execute;

           tPedidos.SQL.Clear;
           tPedidos.SQL.Add('UPDATE Pedidos SET Nota    = NULL,');
           tPedidos.SQL.Add('                   NFe_CNF = NULL');
           tPedidos.SQL.Add('WHERE ISNULL(Aguardando, 0) = 0 AND ISNULL(NFe_Protocolo, '''') = '''' ');
           tPedidos.Execute;
           tPedidos.SQL.Clear;

           FiltraPedidos;

           // Bloqueia os pedidos que estão aguardando resposta do web service.
           with tAguardando do begin
                sql.Clear;
                sql.Add('select count(*) as qtde from pedidos where aguardando = 1');
                open;
           end;
           If tAguardando.FieldByName('Qtde').AsInteger > 0 then begin
              While not Pedidos.Eof do begin
                    If Pedidos.FieldByName('Aguardando').AsBoolean = true then begin
                       Grade.SelectedRows.CurrentRowSelected := True;
                    End;
                    Pedidos.Next;
              End;
              cDataEmissao.Date      := PedidosData_Emissao.Value;
              cDataEntradaSaida.Date := PedidosData_EntradaSaida.Value;
              Grade.Enabled          := false;
              bEnviar.Enabled        := (mTipoEnvio = 'ENVIO EPEC') or (mTipoEnvio = 'EPEC');
           End;

           If mTipoEnvio = 'ENVIO EPEC' then Grade.SelectAll;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

//           lTitulo.Caption := lTitulo.Caption + ' ('+EmpresasVersao_DLL.Text+')';

           ICMS.sql.clear;
           ICMS.sql.add('Select * from ICMS where uf = :pUF');
           ICMS.parambyname('pUF').asstring := EmpresasEstado.AsString;
           ICMS.open;
           mSinc := ICMS.FieldByName('NFe_Envio').AsInteger;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Codigo');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Codigo');
           Fornecedores.Open;

           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Data_Emissao = :pData)');
           Notas.ParamByName('pData').AsDate := Date;
           Notas.Open;

           ClassificacaoDuplicata.SQL.Clear;
           ClassificacaoDuplicata.SQL.Add('SELECT * FROM ClassificacaoDuplicata');
           ClassificacaoDuplicata.Open;

           INCOTERMS.SQL.Clear;
           INCOTERMS.SQL.Add('SELECT * FROM INCOTERMS');
           INCOTERMS.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Processo IN(SELECT DISTINCT Processo FROM Pedidos WHERE ISNULL(Processo, '''') <> ''''))');
           ProcessosDOC.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota');
           TipoNota.Open;

           Intermediadores.sql.clear;
           Intermediadores.sql.add('SELECT * FROM Intermediadores ORDER BY Codigo');
           Intermediadores.Open;
      End;
      If tAguardando.FieldByName('Qtde').AsInteger = 0 then begin
         cDataEmissao.Date      := Date;
         cDataEntradaSaida.Date := Date;
      End;

      xmlProtocolo         := TMemo.Create(NotaFiscal_Eletronica2G);
      xmlProtocolo.Visible := False;
      xmlProtocolo.Parent  := NotaFiscal_Eletronica2G;
      Screen.Cursor        := crDefault;
end;

procedure TNotaFiscal_Eletronica2G.bEnviarClick(Sender: TObject);
Var
    mSel    : Integer;
    mParcela: Integer;
begin
       if not bEnviar.Enabled then Abort;
       bEnviar.Enabled := false;

       If not Internet then begin
          MessageDlg('Erro de comunicação!'+#13+#13+'Você esta sem conexão com a Internet.', mtError, [mbOK], 0);
          Abort;
       End;

       cMensagens.Clear;
       PageControl1.ActivePageIndex := 2;
       Screen.Cursor                := crDefault;
       bEnviar.Tag                  := 0;

       With Dados do begin
            Empresas.Close;
            Empresas.SQL.Clear;
            Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
            Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
            Empresas.Open;

            If Trim(EmpresasCertificado_Digital.AsString) = '' then begin
               MessageDlg( 'Não é possivel emitir notas fiscais!'+#13+#13+'Nome do titular do Certificado não informado no cadastro da empresa'+#13+#13+'Operação cancelada...', mtError, [mbOk], 0);
               Abort;
            End;
            If Grade.SelCount = 0 then begin
               ShowMessage('Não há nenhum pedido selecionado para gerar notas eletrônicas!');
               Abort;
            End;
            If Trim(EmpresasNFEletronica_Layout.Value) = '' then begin
               MessageDlg( 'Não é possivel emitir notas fiscais!'+#13+#13+'É necessário informar a versão do layout do XML da NF-e no cadastro da empresa.'+#13+#13+'Operação cancelada...', mtError, [mbOk], 0);
               Abort;
            End;
            If (EmpresasNFEletronica_Numeracao.AsBoolean = true) and (EmpresasNota_Eletronica.Value <> EmpresasNota_EletronicaEntrada.Value) then begin
               MessageDlg( 'Não é possivel emitir notas fiscais!'+#13+#13+'A numeração das notas de entrada e saída estão diferentes no cadastro da empresa.'+#13+#13+'Operação cancelada...', mtError, [mbOk], 0);
               Abort;
            End;
            If Trim(EmpresasVersao_DLL.AsString) = '' then begin
               MessageDlg( 'Não é possivel emitir notas fiscais!'+#13+#13+'É necessário informar o campo "Versão DLL" no cadastro da empresa.'+#13+#13+'Operação cancelada...', mtError, [mbOk], 0);
               Abort;
            end;

            // Verifica se o ultimo número do registro bate com o numero do cadastro da empresa.
            tUltimoNumero.SQL.Clear;
            tUltimoNumero.SQl.Add('SELECT MAX(Numero) AS Numero FROM NotasFiscais WHERE(Serie = :pSerie) AND (YEAR(Data_Emissao) = YEAR(GETDATE()))');
            If PedidosSaida_Entrada.Value = 0 then begin
               tUltimoNumero.ParamByName('pSerie').AsString := EmpresasNFEletronica_SerieEntrada.Value;
            end else begin
               tUltimoNumero.ParamByName('pSerie').AsString := EmpresasNFEletronica_Serie.Value;
            End;
            tUltimoNumero.Open;

            If PedidosSaida_Entrada.Value = 0 then begin
               If tUltimoNumero.FieldByName('Numero').AsInteger > EmpresasNota_EletronicaEntrada.Value then begin
                  MessageDlg( 'Não é possivel emitir notas fiscais!'+#13+#13+'Já existe nota fiscal emitida com o número informado no cadastro da empresa.'+#13+#13+'Operação cancelada...', mtError, [mbOk], 0);
                  Abort;
               End;
            End;
            // Verifica se a pasta temporária esta informada nas configurações do sistema.
            If Trim(Dados.ConfiguracaoPasta_Temporaria.Value) = '' then begin
               MessageDlg('A "Pasta temporária" informada nas configurações do sistemas é inválida.', mtError, [mbOK], 0);
               cMensagens.Clear;
               Abort;
            End;
            if MessageDlg( 'Deseja realmente enviar esta notas para a SEFAZ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
               PageCOntrol1.ActivePageIndex := 0;
               Abort;
            end;

            // Verifica a validade da data e Chama a procedure de geração das notas fiscais.
            tChecaData.Close;
            tChecaData.Open;
            if StrtoDateTime(cDataEmissao.Text+' '+Timetostr(Time)) < tChecaDataData_Emissao.Value then begin
               If Dados.ConfiguracaoAtivar_Som.Value = True then SndPlaySound('Erro.wav',SND_ASYNC);
               ShowMessage('Atenção!'+#13+'Você não pode gerar Notas Fiscais com data inferior a da última emitida.'+#13+'Data da última Nota Fiscal emitida:'+DatetoStr(tChecaDataData_Emissao.Value));
               Screen.Cursor := crDefault;
               Abort;
            end;

            Empresas.Refresh;
            if (EmpresasEmissaoNFE_Bloqueada.AsBoolean) and (EmpresasEmissaoNFE_BloqueadaUsuario.Value <> (Menu_Principal.mUsuarioNome + ' ('+NomeComputador+')')) then begin
               MessageDlg('Um outro usuário esta com pedidos aguardando confirmação da SEFAZ.'+#13+#13+
                           EmpresasEmissaoNFE_BloqueadaUsuario.AsString+#13+#13+
                          'Espere até o outro usuário terminar para enviar seus pedidos.', mtError, [mbOK], 0);
               PageControl1.ActivePageIndex := 0;
               Abort;
            end else begin
               BloqueiaEmissao(true);
               Screen.Cursor := crDefault;
            end;
       end;
       Screen.Cursor := crSQLWait;

       With Dados, dmFiscal do begin
            Notas.Close;
            Notas.SQL.Clear;
            Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Data_Emissao = :pData)');
            Notas.ParamByName('pData').AsDate := cDataEmissao.Date;
            Notas.Open;

            // Faz a leitura da "Grade" e pega todos os pedidos selecionados.
            mEnviadas   := 0;
            mRejeitadas := Grade.SelectedRows.Count;
            mNotaIni    := 0;

            For mSel := 0 to Grade.SelectedRows.Count-1 do begin
                Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
                cMensagens.Lines.Add('Pedido Nº '+PedidosNumero.AsString);

                mQtdErros := 0;

                RegistraPasso('1.0');
                cMensagens.Lines.Add('    1. Gerando o arquivo XML.');
                GerarXML;
                RegistraPasso('1.1');
{
                If mQtdErros = 0 then begin
                   If mTamanhoArquivo > 0.500 then begin
                      cMensagens.Lines.Add('Erro no Tamanho do XML: O tamanho máximo permitido é de 500Kb por arquivo e o tamanho do arquivo atual é '+FloattoStr(mTamanhoArquivo) + 'Kb' );
                      cMensagens.Lines.Add('Reduza o número de itens da nota fiscal e tente novamente...');
                      Inc(mQtdErros);
                   End;
                End;
}                
                If mQtdErros = 0 then begin
                   RegistraPasso('2.0');
                   cMensagens.Lines.Add('    2. Assinando o arquivo XML.');
                   AssinarNFe;
                   RegistraPasso('2.1');
                End;
                If mQtdErros = 0 then begin
                   RegistraPasso('3.0');
                   // Emissão NF-e "NORMAL" ou Contigência "SVC".
                   if ide_tpEmis in[1, 6, 7] then begin
                      // Em caso de contigência verifica se o "WEB SERVICE" esta ativo.
                      if ide_tpEmis in[6, 7] then begin
                         cMensagens.Lines.Add('    2.1. Verificando se servidor de contigência esta ativo.');
                         if not ConsultaContig then Abort;
                      end;
                      if Pedidos.FieldByName('Aguardando').AsBoolean = false then begin
                         if ide_tpEmis = 1 then
                             cMensagens.Lines.Add('    3. Enviando o arquivo XML das notas para SEFAZ (Normal).')
                         else
                             cMensagens.Lines.Add('    3. Enviando o arquivo XML das notas para SEFAZ (Contigência SVC)');
                         Application.ProcessMessages;
                         //EnviarNFE;
                         if mSinc = 0 then begin
                            EnviarNFE;
                         end else begin
                            EnviarNFESinc;
                         end;
                      end else begin
                         cMensagens.Lines.Add('    3. Arquivo XML da nota já enviado anteriormente.');
                      end;
                      RegistraPasso('3.1');
                   end;

                   // Emissão NF-e em contigência "EPEC".
                   if ide_tpEmis = 4 then begin
                      mQtdErros := 0;
                      cMensagens.Lines.Add('    3. Enviando o arquivo XML da EPEC para SEFAZ.');
                      EnviarEPEC;
                      RegistraPasso('3.1');
                      if mQtdErros > 0 then begin
                         messagedlg('Erro no envio, nota fiscal não foi enviada!',mtError, [mbok], 0);
                         Screen.Cursor := crDefault;
                         Abort;
                      end;
                   end;
                end;

                // Se todos os passos ocorreram sem erros, verifica se a nota foi autorizada p/Emissão Normal.
                if ide_tpEmis in[1, 6, 7] then begin
                   if mQtdErros = 0 then begin
                      if mSinc = 0 then begin
                         // Verifica o estado da nota fiscal.
                         if not Pedidos.FieldByName('Aguardando').AsBoolean then begin
                            RegistraPasso('4.0');
                            cMensagens.Lines.Add('    4. Solicitando autorização para a nota fiscal a SEFAZ...');
                            BuscarNFE;
                         end else begin
                            RegistraPasso('4.A');
                            cMensagens.Lines.Add('    4. Solicitando autorização para a nota fiscal enviada anteriormente...');
                            BuscarChave;
                         end;
                      
                         tTempo.Enabled := mProcessamento;
                         Application.ProcessMessages;
                      
                         // Verifica por 30 segundos ou retorno diferente de 105.
                         while mProcessamento = true do begin
                               if tTempo.Enabled = true then begin
                                  Sleep(3000);
                                  BuscarNFE;
                               end;
                               Application.ProcessMessages;
                         end;
                      
                         tTempo.Enabled := false;
                         RegistraPasso('4.1');
                      end;
                   end;
                   
                   // Registrando o numero e a data do protocolo de autorização.
                   Pedidos.Edit;
                           if Trim(mProtocolo) <> '' then begin
                              RegistraPasso('5.0');
                              cMensagens.Lines.Add('    5. Registrando o protocolo de autorização da NF-e...');
//                              PedidosNFe_Protocolo.Value     := mProtocolo;
//                              PedidosNFe_DataProtocolo.Value := StrtoDateTime(Copy(mProtocoloData,9,2)+'/'+Copy(mProtocoloData,6,2)+'/'+Copy(mProtocoloData,1,4)+' '+Copy(mProtocoloData,12,11));
                              PedidosAguardando.Value        := false;
                              RegistraPasso('5.1');
                           end else begin
                              Inc(mQtdErros);
                              if (mProtocolo = '') and (PedidosAguardando.AsBoolean = false) and (not PedidosDPEC.AsBoolean) then begin
                                 PedidosNFe_cNF.Clear;
                                 PedidosNota.Clear;
                              end;
                              cMensagens.Lines.Add('* '+PedidosNota.AsString + 'ENVIO DE NF-e P/SEFAZ (FALHA) *');

                              // Volta o número da duplicata com o número do pedido em caso de nota fiscal não autorizada.
                              If (PedidosSaida_Entrada.Value = 1) and (PedidosComplementar.Value = False) and (PedidosBaixa_Estoque.Value = false) then begin
                                 PedidosFatura.SQL.Clear;
                                 PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE(Pedido = :pPedido)');
                                 PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                                 PedidosFatura.Open;

                                 If PedidosFatura.RecordCount <> 0 then begin
                                    PedidosFatura.Edit;
                                                  PedidosFaturaData_Emissao.Value := PedidosData_Emissao.Value;
                                                  PedidosFaturaData_Pedido.Value  := PedidosData_Emissao.Value;
                                    PedidosFatura.Post;

                                    PedidosDuplicata.SQL.Clear;
                                    PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Fatura = :pFatura) ORDER BY CAST(Duplicata AS int)');
                                    PedidosDuplicata.ParamByName('pFatura').AsInteger := PedidosNumero.Value;
                                    PedidosDuplicata.Open;
                                    PedidosDuplicata.First;

                                    mParcela := 1;
                                    While not PedidosDuplicata.Eof do begin
                                          PedidosDuplicata.Edit;
                                                           PedidosDuplicataDuplicata.Value    := PoeZero(9, PedidosNumero.Value) + InttoStr(mParcela);
                                                           PedidosDuplicataNumero.Value       := PoeZero(9, PedidosNumero.Value) + CHR(64+mParcela);
                                                           PedidosDuplicataData_Emissao.Value := PedidosFaturaData_Emissao.Value;
                                          PedidosDuplicata.Post;
                                          PedidosDuplicata.Next;
                                          Inc(mParcela);
                                    End;
                                 End;
                              End;
                           End;
                   Pedidos.Post;
                end;

                // Se todos os passos ocorreram sem erros, registra a ultima nota emitida no cadastro da empresa.
                If mQtdErros = 0 then begin
                   Empresas.Edit;
                            if EmpresasNFEletronica_Numeracao.AsBoolean then begin
                               EmpresasNota_EletronicaEntrada.Value := mNota;
                               EmpresasNota_Eletronica.Value        := mNota;
                            end else begin
                               if PedidosSaida_Entrada.Value = 0 then
                                  EmpresasNota_EletronicaEntrada.Value := mNota
                               else
                                  EmpresasNota_Eletronica.Value := mNota;
                            end;
                   Empresas.Post;

                   // Salva a nota fiscal no banco de dados.
                   RegistraPasso('6.0');
                   cMensagens.Lines.Add('    6. Salvando a nota fiscal enviada no banco de dados...');
                   Application.ProcessMessages;

                   SalvarNFe;

                   Inc(mEnviadas);
                   Dec(mRejeitadas);
                   RegistraPasso('6.1');

                   // Gerando o PDF do DANFE.
                   RegistraPasso('7.0');
                   cMensagens.Lines.Add('    7. Criando o arquivo PDF do DANFE...');

                   with tbNotas do begin
                        SQL.Clear;
                        SQL.Add('select *');
                        sql.add('      ,Inf_Compl = concat(Inf_Complementares, Inf_Complementares2)');
                        sql.add('from NotasFiscais');
                        sql.add('where Numero = :pNota');
                        sql.add('and Data_Emissao = :pData');
                        sql.add('order by Numero');
                        ParamByName('pNota').AsInteger := NotasNumero.Value;
                        ParamByName('pData').AsDate    := cDataEmissao.Date;
                        Open;
                   end;

                   tbItens.SQL.Clear;
                   tbItens.SQL.Add('SELECT Nota,');
                   tbItens.SQL.Add('       Data,');
                   tbItens.SQL.Add('       Codigo_Mercadoria,');
                   tbItens.SQL.Add('       Codigo_Fabricante,');
                   tbItens.SQL.Add('       CASE WHEN (Total_Impostos > 0) AND (Valor_Total > 0) THEN');
                   tbItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))+ CHAR(13)+CHAR(13)+''                              TRIBUTOS : R$ ''+ CONVERT(VARCHAR, CAST(Total_Impostos AS money),-1) +');
                   tbItens.SQL.Add('                 ''  (''+CONVERT(VARCHAR, CAST( ROUND((Total_Impostos/Valor_Total)*100,2) AS money),-1)+''%)''+CASE WHEN PO <> '''' THEN CHAR(13)+''PEDIDO DE COMPRA:''+PO+''     ORDEM:''+CAST(Ordem AS VARCHAR(4)) ELSE '''' END');
                   tbItens.SQL.Add('       ELSE');
                   tbItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))+CASE WHEN PO <> '''' THEN CHAR(13)+''PEDIDO DE COMPRA:''+PO+''     ORDEM:''+CAST(Ordem AS VARCHAR(4)) ELSE '''' END');
                   tbItens.SQL.Add('       END AS Descricao_Mercadoria,');
                   tbItens.SQL.Add('       NCM,');
                   tbItens.SQL.Add('       Unidade_Medida,');
                   tbItens.SQL.Add('       CodigoTrib_TabA,');
                   tbItens.SQL.Add('       CodigoTrib_TabB,');
                   tbItens.SQL.Add('       CSTIPI,');
                   tbItens.SQL.Add('       CSTPIS,');
                   tbItens.SQL.Add('       CSTCOFINS,');
                   tbItens.SQL.Add('       Quantidade,');
                   tbItens.SQL.Add('       Valor_Unitario,');
                   tbItens.SQL.Add('       Valor_Total,');
                   tbItens.SQL.Add('       Aliquota_IPI,');
                   tbItens.SQL.Add('       Valor_IPI,');
                   tbItens.SQL.Add('       Total_IPI,');
                   tbItens.SQL.Add('       Aliquota_ICMSOper,');
                   tbItens.SQL.Add('       Valor_BCICMSOper,');
                   tbItens.SQL.Add('       Valor_ICMSOper,');
                   tbItens.SQL.Add('       Valor_BCICMSSub,');
                   tbItens.SQL.Add('       Aliquota_ICMSSub,');
                   tbItens.SQL.Add('       Valor_ICMSSub,');
                   tbItens.SQL.Add('       Aliquota_PIS,');
                   tbItens.SQL.Add('       Valor_PIS,');
                   tbItens.SQL.Add('       Aliquota_COFINS,');
                   tbItens.SQL.Add('       Valor_COFINS,');
                   tbItens.SQL.Add('       Total_Item,');
                   tbItens.SQL.Add('       Total_Impostos,');
                   tbItens.SQL.Add('       Natureza_Codigo');
                   tbItens.SQL.Add('FROM   NotasItens');
                   tbItens.SQL.Add('WHERE  (Nota = :pNota) AND (Data = :pData)');
                   tbItens.SQL.Add('ORDER  BY Item');
                   tbItens.ParamByName('pNota').AsInteger := tbNotas.FieldByName('Numero').Value;
                   tbItens.ParamByName('pData').AsDate    := tbNotas.FieldByName('Data_Emissao').AsDateTime;
                   //tbItens.SQL.SaveToFile('c:\temp\NFe_tbItens.sql');
                   tbItens.Open;

                   mAnexo := Trim(Dados.ConfiguracaoPasta_NFE.Value) + '\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
                   If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                      mAnexo := mAnexo + '_Matriz'
                   else
                      mAnexo := mAnexo + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);

                   if Dados.ConfiguracaoSeparar_NFE.AsBoolean then begin
                      if PedidosSaida_Entrada.AsInteger = 0 then
                         mAnexo := mAnexo + '\ENTRADAS'
                      else
                         mAnexo := mAnexo + '\SAIDAS'
                   end;
                   if Dados.ConfiguracaoSeparar_NFEMes.AsBoolean then begin
                      mAnexo := mAnexo + '\Ano_'+InttoStr(YearOf(NotasData_Emissao.AsDateTime))+'\'+Trim(NomeMes(MonthOf(NotasData_Emissao.AsDateTime)));
                   end;

                   mAnexo := mAnexo + '\NFe_'+PedidosNFe_CNF.Value+'.PDF';

                   lDenegada.Visible := False;
                   If tbNotas.FieldByName('Nfe_Denegada').AsBoolean then begin
                      lDenegada.Visible := True;
                   End;

                   TipoNota.Locate('Codigo', tbNotas.FieldByName('Tipo_Nota').AsInteger, [loCaseInsensitive]);

                   DANFE_Retrato.AllowPrintToFile := True;
                   DANFE_Retrato.DeviceType       := dtPDF;
                   DANFE_Retrato.TextFileName     := mAnexo;
                   DANFE_Retrato.ShowPrintDialog  := False;
                   cAFRMM.Visible                 := TipoNotaVisiveis_AFRMM.AsBoolean;

                   DANFE_Retrato.Print;
                   DANFE_Retrato.FreeOnRelease;
                   DANFE_Retrato.Reset;

                   RegistraPasso('7.1');

                   // Enviando o XML da nota fiscal para "Cliente/Fornecedor/Armazém".
                   if not TipoNotaEmail_NFE.AsBoolean then begin
                      if (Pedidos.FieldByName('Saida_Entrada').AsInteger = 1) and (ide_tpEmis in[1, 6, 7]) and (not Clientes.FieldByName('Enviar_Email').AsBoolean) then begin
                         RegistraPasso('7.2');
                         cMensagens.Lines.Add('    7.2. Enviando o "XML" e o "PDF" do DANFE da NF-e para o(s) E-Mail(s): ');
                         //cmensagens.Lines.Add('       ' + ClientesEmail.AsString+'; '+ClientesEmail_Copia.AsString+'; '+EmpresasEmail.AsString+'; '+EmpresasEmail_Copia.AsString+'; '+ConfiguracaoEmail_NFE.AsString);
                         try
                             If Trim(ClientesEmail.AsString) <> '' then
                                EnviarEmail('CLIENTE');
                         except
                             cMensagens.Lines.Add('       Houve falha no envio do email, contacte o suporte técnico da Cybersoft.');
                         end;
                      end else begin
                         if (Pedidos.FieldByName('Saida_Entrada').AsInteger = 1) then begin
                            if Trim(ClientesEmail.AsString) = '' then
                               cMensagens.Lines.Add('XML da NF-e não enviado para o cliente por falto do E-Mail.');
                         end;
                      end;
                      // Envio do E-Mail fixo configurado em "Configuração / Faturamento".
                      if Trim(ConfiguracaoEmail_NFE.AsString) <> '' then begin
                         try
                             EnviarEmail('FIXO');
                         except
                             cMensagens.Lines.Add('       Houve falha no envio do email fixo, contacte o suporte técnico da Cybersoft.');
                         end;
                      end;
                   end;
{
                   // Enviando o XML da nota fiscal para "API de integração (DOMINIO - Thomson Reuters)".
                   RegistraPasso('7.3');
                   cMensagens.Lines.Add('    7.3. Enviando o "XML" da NF-e para API DOMÍNIO (Thomson Reuters)');
                   try
                        FAPI.enviaXML;
                   except
                       cMensagens.Lines.Add('       Houve falha no envio do XML da NFe para a API, XML não enviado.');
                   end;
 }                  
                   RegistraPasso('8.0');
                   If mDenegada = false then begin
                      // Abre o pdf do DANFE no final do envio.
                      If ConfiguracaoAbrir_PDFDANFE.AsBoolean = true then begin
                         If Grade.SelCount < 3 then begin
                            ShellExecute(0, nil, PChar(mAnexo), nil, nil, SW_NORMAL);
                         End;
                      End;
                      bDANFE.Enabled := True;
                   End;
                End;

                If mQtdErros > 0 then begin
                   // Deleta o arquivo XML gerado em caso de erro.
                   mPasta := Trim(Dados.ConfiguracaoPasta_NFE.Value) + '\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
                   If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                      mPasta := mPasta + '_Matriz'
                   else
                      mPasta := mPasta + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

                   if Dados.ConfiguracaoSeparar_NFE.AsBoolean then begin
                      if PedidosSaida_Entrada.AsInteger = 0 then
                         mPasta := mPasta + '\ENTRADAS'
                      else
                         mPasta := mPasta + '\SAIDAS'
                   end;

                   if Dados.ConfiguracaoSeparar_NFEMes.AsBoolean then begin
                      mPasta := mPasta + '\Ano_'+InttoStr(YearOf(NotasData_Emissao.AsDateTime))+'\'+Trim(NomeMes(MonthOf(NotasData_Emissao.AsDateTime)));
                   end;
                End;

                If (Trim(Pedidos.FieldByName('Nfe_Recibo').AsString) = '') and (not PedidosDPEC.AsBoolean) then begin
                   Pedidos.Edit;
                           PedidosNfe_cNF.Clear;
                           If Pedidos.FieldByName('DPEC').AsBoolean = false then
                              PedidosNota.Clear;

                           PedidosNFe_Protocolo.Clear;
                           PedidosNFe_DataProtocolo.Clear;
                   Pedidos.Post;
                End;

                // Volta o numero da duplicata para o pedido para evitar erro de duplicidade em caso de falha de envio da nota fiscal.
                If Trim(Pedidos.FieldByName('Nfe_Protocolo').AsString) = '' then begin
                   PedidosDuplicata.SQL.Clear;
                   PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata ORDER BY Duplicata');
                   PedidosDuplicata.Open;
                   PedidosDuplicata.First;
                   While not PedidosDuplicata.Eof do begin
                         PedidosDuplicata.Edit;
                                          PedidosDuplicataDuplicata.Value := PoeZero(9, PedidosDuplicataPedido.AsInteger)+InttoStr(PedidosDuplicataOrdem.AsInteger);
                                          PedidosDuplicataNumero.Value    := PoeZero(9, PedidosDuplicataPedido.AsInteger)+CHR(64+PedidosDuplicataOrdem.AsInteger);
                         PedidosDuplicata.Post;
                         PedidosDuplicata.Next;
                   End;
                End;

                cMensagens.Lines.Add(Replicate('_', 97));
            End;

            // Deleta todos os pedidos que foram enviados - "Deve existir o campo protocolo".
            Pedidos.First;
            while not Pedidos.Eof do begin
                  if (Trim(PedidosNFe_Protocolo.AsString) <> '') then begin
                     // Deleta os Itens do pedido.
                     PedidosItens.SQL.Clear;
                     PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE (Pedido = :pPedido)');
                     PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                     PedidosItens.Execute;

                     // Deleta as duplicatas do pedido.
                     if PedidosSaida_Entrada.Value = 1 then begin
                        PedidosFatura.SQL.Clear;
                        PedidosFatura.SQL.Add('DELETE FROM PedidosFatura WHERE (Pedido = :pPedido)');
                        PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                        PedidosFatura.Execute;

                        PedidosDuplicata.SQL.Clear;
                        PedidosDuplicata.SQL.Add('DELETE FROM PedidosDuplicata WHERE (Fatura = :pFatura)');
                        PedidosDuplicata.ParamByName('pFatura').AsInteger := PedidosNumero.Value;
                        PedidosDuplicata.Execute;
                     end;
                  end;
                  with tTmp do begin
                       sql.clear;
                       sql.Add('update PedidosRepresentantes set Local = 5');
                       sql.Add('                                ,Situacao = ''FATURADO'' ');
                       sql.Add('                                ,Sel = 0');
                       sql.Add('                                ,Faturado = 1');
                       sql.Add('                                ,Data_Faturamento = getdate()');
                       sql.Add('                                ,Usuario = '+quotedstr(Menu_Principal.mUsuarioCodigo));
                       sql.Add('where Pedido = :pPedido');
                       sql.Add('and Local = 4');
                       ParamByName('pPedido').AsString := PedidosPedido_Representante.AsString;
                       execute;
                       sql.clear;
                       sql.Add('update PedidosRepresentantesItens set Faturado = 1');
                       sql.Add('where Pedido = :pPedido');
                       ParamByName('pPedido').AsString := PedidosPedido_Representante.AsString;
                       execute;
                  end;

                  Pedidos.Next;
            end;

            PedidosRepresentantes.SQL.Clear;
            PedidosRepresentantes.SQL.Add('SELECT * FROM PedidosRepresentantes');

            with tTmp do begin
                 SQL.Clear;
                 SQL.Add('DELETE FROM Pedidos WHERE ISNULL(NFe_Protocolo, '''') <> '''' ');
                 Execute;
            end;
            with Pedidos do begin
                 sql.Clear;
                 //If (mTipoEnvio = 'NORMAL') or  then begin
                 If (mTipoEnvio = 'NORMAL') or (mTipoEnvio = 'SVC') then begin
                    sql.Add('SELECT * FROM Pedidos WHERE(Valor_TotalNota > 0 OR Complementar = 1) ORDER BY Numero');
                 End;
                 If mTipoEnvio = 'EPEC' then begin
                    sql.Add('SELECT * FROM Pedidos WHERE(Valor_TotalNota > 0 OR Complementar = 1) AND (ISNULL(DPEC,0) <> 1) ORDER BY Numero');
                 End;
                 If mTipoEnvio = 'ENVIO EPEC' then begin
                    SQL.Add('SELECT * FROM Pedidos WHERE(Valor_TotalNota > 0 OR Complementar = 1) AND (DPEC = 1) ORDER BY Numero');
                    Grade.SelectAll;
                    bSelecionar.Enabled := false;
                    bDesmarcar.Enabled  := false;
                    Grade.Enabled       := false;
                 End;
                 Open;
            end;

            // Bloqueia os pedidos que estão aguardando resposta do web service.
            with tAguardando do begin 
                 sql.Clear;
                 sql.Add('select count(*) as Qtde from Pedidos where isnull(Aguardando, 0) = 1');
                 open;
            end;
            If tAguardando.FieldByName('Qtde').AsInteger > 0 then begin
               While not Pedidos.Eof do begin
                     if Pedidos.FieldByName('Aguardando').AsBoolean = true then begin
                        Grade.SelectedRows.CurrentRowSelected := True;
                     end;
                     Pedidos.Next;
               End;
               cDataEmissao.Date      := PedidosData_Emissao.Value;
               cDataEntradaSaida.Date := PedidosData_EntradaSaida.Value;
               Grade.Enabled          := false;

               // Em caso de pedidos bloqueados bloqueia o envio de NFE.
               BloqueiaEmissao(true);
            end else begin
               Grade.Enabled := true;
            end;

            PedidosItens.SQL.Clear;
            PedidosItens.SQL.Add('SELECT * FROM PedidosItens');

            if ide_tpEmis = 1 then begin
               MessageDlg( 'Envio de notas fiscais concluído !'+#13+#13+'Notas enviadas: '+InttoStr(mEnviadas)+#13+#13+'Notas rejeitadas: '+InttoStr(mRejeitadas), mtInformation, [mbOk], 0 );
            end;
            if ide_tpEmis in[6, 7] then begin
               MessageDlg( 'Envio de notas fiscais em contigência concluído !'+#13+#13+'Notas enviadas: '+InttoStr(mEnviadas)+#13+#13+'Notas rejeitadas: '+InttoStr(mRejeitadas), mtInformation, [mbOk], 0 );
            end;
            if ide_tpEmis = 4 then begin
               MessageDlg( 'Envio de notas fiscais em contigência EPEC concluído !'+#13+#13+'Notas enviadas: '+InttoStr(mEnviadas)+#13+#13+'Notas rejeitadas: '+InttoStr(mRejeitadas), mtInformation, [mbOk], 0 );
            end;

            bDANFE.Enabled := mEnviadas > 0;

            // Em caso de rejeição de qualquer tipo desbloqueia o envio de NFE.
            BloqueiaEmissao(false);
       End;
End;

// Gerando as notas com base nos pedidos selecionados.
Procedure TNotaFiscal_Eletronica2G.SalvarNFe;
var
   i
  ,mOrdem
  ,mReg: Integer;
  mUnitSaldo
 ,mQtdeSaldo
 ,mTotalSaldo
 ,mPercentual: Real;
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal, dmContab do Begin
           // Inicio do processo de salvamento da nota.
           Pedidos.Edit;
                   PedidosOK.value := 0;
           Pedidos.Post;

           // Salva o arquivo com o XML da NF-e com o protocolo de autorização.
           If ide_tpEmis = 1 then begin
              Try
                 xmlProtocolo.Lines.SaveToFile(mPasta);
              except
                 If not DirectoryExists('C:\TEMP\NFE') then ForceDirectories('C:\TEMP\NFE');
                 xmlProtocolo.Lines.SaveToFile('C:\TEMP\NFE\Erro_Salvar_NFe_'+PedidosNFe_CNF.Value+'.xml');
              End;
           End;
           If ide_tpEmis = 4 then begin
              xmlProtocolo.Lines.Clear;
              xmlProtocolo.Lines.Add(NfeAssinada);
              Try
                  xmlProtocolo.Lines.SaveToFile(mPasta);
              except
                 If not DirectoryExists('C:\TEMP\NFE') then ForceDirectories('C:\TEMP\NFE');
                 xmlProtocolo.Lines.SaveToFile('C:\TEMP\NFE\Erro_Salvar_NFe_'+Dados.PedidosNFe_CNF.Value+'.xml');
              End;
           End;

           // Deleta a nota fiscal criada anteriormente do banco de dados.
           if mTipoEnvio = 'ENVIO EPEC' then begin
              if Notas.Locate('NFe_cNF', PedidosDPEC_Nfe.AsString, [loCaseInsensitive]) = true then begin
                 with tTmp do begin
                      sql.Clear;
                      sql.Add('delete from NotasItens where Nota = :pNota and Data = :pData');
                      parambyname('pNota').AsInteger := NotasNumero.AsInteger;
                      parambyname('pData').AsDate    := NotasData_Emissao.AsDateTime;
                      execute;
                 end;
                 Notas.Delete;
              end;
           end;

           // Copiando os dados do pedido para a nota fiscal.
           Notas.Append;
                 NotasNumero.Value        := mNota;
                 NotasPedido.Value        := PedidosNumero.Value;
                 NotasLote.Value          := PedidosLote.Value;
                 NotasPedido_Nota.Value   := PedidosPedido_Nota.Value;
                 NotasSaida_Entrada.Value := PedidosSaida_Entrada.Value;
                 NotasData_Emissao.Value  := cDataEmissao.Date;

                 If Trim(RemoveCaracter('/','',cDataEntradaSaida.Text)) <> '' then begin
                    NotasData_EntradaSaida.Value := cDataEntradaSaida.Date;
                    NotasHora_EntradaSaida.Value := Copy(TimetoStr(Time), 1, 5);
                 End;

                 NotasTipo_Nota.Value        := PedidosTipo_Nota.Value;
                 NotasProcesso.Value         := PedidosProcesso.Value;
                 NotasFUNDAP.Value           := PedidosFUNDAP.Value;
                 NotasIncentivo_Fiscal.Value := PedidosIncentivo_Fiscal.Value;
                 If PedidosSaida_Entrada.Value = 0 then begin
                    NotasModelo.Value := EmpresasNFEletronica_ModeloEntrada.Value;
                    NotasSerie.Value  := EmpresasNFEletronica_SerieEntrada.Value;
                 end else begin
                    NotasModelo.Value := EmpresasNFEletronica_Modelo.Value;
                    NotasSerie.Value  := EmpresasNFEletronica_Serie.Value;
                 End;
                 NotasDI.Value                     := PedidosDI.Value;
                 NotasData_DI.Value                := PedidosData_DI.Value;
                 NotasNatureza_Codigo.Value        := PedidosNatureza_Codigo.Value;
                 NotasInscricao_Substituto.Value   := PedidosInscricao_Substituto.Value;
                 NotasInf_Complementares.Value     := PedidosInf_Complementares.Value;
                 NotasInf_Complementares2.Value    := PedidosInf_Complementares2.Value;
                 NotasCliente_Codigo.Value         := PedidosCliente_Codigo.Value;
                 NotasFornecedor_Codigo.Value      := PedidosFornecedor_Codigo.Value;
                 NotasEstado.Value                 := PedidosEstado.Value;
                 NotasTransportador_Codigo.Value   := PedidosTransportador_Codigo.Value;
                 NotasModalidade_Frete.Value       := PedidosModalidade_Frete.Value;
                 NotasModalidade_Pgto.Value        := PedidosModalidade_Pgto.Value;
                 NotasVolume_Quantidade.Value      := PedidosVolume_Quantidade.Value;
                 NotasVolume_Especie.Value         := PedidosVolume_Especie.Value;
                 NotasVolume_Marca.Value           := PedidosVolume_Marca.Value;
                 NotasVolume_Numero.Value          := PedidosVolume_Numero.Value;
                 NotasVolume_PesoLiquido.Value     := PedidosVolume_PesoLiquido.Value;
                 NotasVolume_PesoBruto.Value       := PedidosVolume_PesoBruto.Value;
                 
                 NotasValor_BCPIS.Value            := PedidosValor_BCPIS.Value;
                 NotasValor_PIS.Value              := PedidosValor_PIS.Value;
                 NotasValor_BCPISST.Value          := PedidosValor_BCPISST.Value;
                 NotasValor_PISST.Value            := PedidosValor_PISST.Value;
                 NotasValor_COFINS.Value           := PedidosValor_COFINS.Value;
                 NotasValor_BCCOFINSST.Value       := PedidosValor_BCCOFINSST.Value;
                 NotasValor_COFINSST.Value         := PedidosValor_COFINSST.Value;
                 
                 NotasAliquota_ICMSOper.Value      := PedidosAliquota_ICMSOper.Value;
                 NotasBCICMS.Value                 := PedidosBCICMS.Value;
                 NotasValor_ICMS.Value             := PedidosValor_ICMS.Value;
                 NotasAliquota_ICMSSub.Value       := PedidosAliquota_ICMSSub.Value;
                 NotasBCICMS_Substitutivo.Value    := PedidosBCICMS_Substitutivo.Value;
                 NotasValorICMS_Substitutivo.Value := PedidosValorICMS_Substitutivo.Value;
                 NotasValor_TotalProdutos.Value    := PedidosValor_TotalProdutos.Value;
                 NotasTotal_Frete.Value            := PedidosTotal_Frete.Value;
                 NotasValor_Seguro.Value           := PedidosValor_Seguro.Value;
                 NotasValor_OutrasDespesas.Value   := PedidosValor_OutrasDespesas.Value;
                 NotasBCIPI.Value                  := PedidosBCIPI.Value;
                 NotasValor_TotalIPI.Value         := PedidosValor_TotalIPI.Value;
                 NotasValor_IPIDevol.Value         := PedidosValor_IPIDevol.Value;
                 NotasValor_TotalII.Value          := PedidosValor_TotalII.Value;
                 NotasValor_TotalNota.Value        := PedidosValor_TotalNota.Value;
                 NotasValor_TotalMVA.Value         := PedidosValor_TotalMVA.Value;
                 NotasValor_ICMSReducao.Value      := PedidosValor_ICMSReducao.Value;
                 NotasDesconto_Percentual.Value    := PedidosDesconto_Percentual.Value;
                 NotasDesconto_Tipo.Value          := PedidosDesconto_Tipo.Value;
                 NotasTotal_Descontos.Value        := PedidosTotal_Descontos.Value;
                 NotasNota_Referencia.Value        := PedidosNota_Referencia.Value;

                 If NotasNota_Referencia.Value <> 0 then NotasData_Referencia.Value := PedidosData_Referencia.Value;

                 NotasCancelada.Value              := False;
                 NotasAjuste.Value                 := PedidosAjuste.Value;
                 NotasNFe_cNF.Value                := PedidosNFe_cNF.Value;
                 NotasNfe_cNFRef.Value             := PedidosNfe_cNFRef.Value;
                 NotasNFe_Lote.Value               := PedidosNFe_Lote.Value;
                 NotasNFe_Recibo.Value             := PedidosNFe_Recibo.Value;
                 NotasNfe_DataRecibo.Value         := PedidosNfe_DataRecibo.Value;
                 NotasRepresentante.Value          := PedidosRepresentante.Value;
                 NotasRepresentante_Comissao.Value := PedidosRepresentante_Comissao.Value;
                 If ide_tpEmis = 1 then begin
                    NotasNFe_Protocolo.Value     := PedidosNFe_Protocolo.Value;
                    NotasNFe_DataProtocolo.Value := PedidosNFe_DataProtocolo.Value;
                 End;
                 NotasDPEC.Value                       := ide_tpEmis = 4;
                 NotasDPEC_Protocolo.Value             := PedidosDPEC_Protocolo.Value;
                 NotasDPEC_DataProtocolo.Value         := PedidosDPEC_DataProtocolo.Value;
                 NotasImprimir_DANFE.Value             := True;
                 NotasOperacao_Veiculo.Value           := PedidosOperacao_Veiculo.Value;
                 NotasTransporte_Placa.Value           := PedidosTransporte_Placa.Value;
                 NotasTransporte_PlacaUF.Value         := PedidosTransporte_PlacaUF.Value;
                 NotasTransporte_NomeMotorista.Value   := PedidosTransporte_NomeMotorista.Value;
                 NotasTransporte_RGMotorista.Value     := PedidosTransporte_RGMotorista.Value;
                 NotasTransporte_CPFMotorista.Value    := PedidosTransporte_CPFMotorista.Value;
                 NotasTransporte_CodigoANTT.Value      := PedidosTransporte_CodigoANTT.Value;
                 NotasTransporte_Lacre.Value           := PedidosTransporte_Lacre.Value;
                 NotasReboque_Placa.Value              := PedidosReboque_Placa.Value;
                 NotasReboque_UF.Value                 := PedidosReboque_UF.Value;
                 NotasReboque_ANTT.Value               := PedidosReboque_ANTT.Value;
                 NotasReboque_Lacre.Value              := PedidosReboque_Lacre.Value;
                 NotasTaxa_Cambio.Value                := PedidosTaxa_Cambio.Value;
                 NotasValor_IsentasICMS.Value          := PedidosValor_IsentasICMS.Value;
                 NotasValor_OutrasICMS.Value           := PedidosValor_OutrasICMS.Value;
                 NotasValor_IsentasIPI.Value           := PedidosValor_IsentasIPI.Value;
                 NotasValor_OutrasIPI.Value            := PedidosValor_OutrasIPI.Value;
                 NotasDevolucao.Value                  := PedidosDevolucao.Value;
                 NotasRepresentante.Value              := PedidosRepresentante.Value;
                 NotasRepresentante_Comissao.Value     := PedidosRepresentante_Comissao.Value;
                 NotasImportacao.Value                 := PedidosImportacao.Value;
                 NotasDestinatario_CNPJ_CPF.Value      := PedidosDestinatario_CNPJ_CPF.Value;
                 NotasDestinatario_Nome.Value          := PedidosDestinatario_Nome.Value;
                 NotasDestinatario_Rua.Value           := PedidosDestinatario_Rua.Value;
                 NotasDestinatario_RuaNumero.Value     := PedidosDestinatario_RuaNumero.Value;
                 NotasDestinatario_Complemento.Value   := PedidosDestinatario_Complemento.Value;
                 NotasDestinatario_Bairro.Value        := PedidosDestinatario_Bairro.Value;
                 NotasDestinatario_Municipio.Value     := PedidosDestinatario_Municipio.Value;
                 NotasDestinatario_MunicipioNome.Value := PedidosDestinatario_MunicipioNome.Value;
                 NotasDestinatario_Estado.Value        := PedidosDestinatario_Estado.Value;
                 NotasDestinatario_CEP.Value           := PedidosDestinatario_CEP.Value;
                 NotasDestinatario_Pais.Value          := PedidosDestinatario_Pais.Value;
                 NotasDestinatario_Telefone1.Value     := PedidosDestinatario_Telefone1.Value;
                 NotasDestinatario_IE.Value            := PedidosDestinatario_IE.Value;
                 NotasDestinatario_Juridica.Value      := PedidosDestinatario_Juridica.Value;
                 NotasValor_DUMPING.Value              := PedidosValor_DUMPING.Value;
                 NotasReducao_ICMSOper.Value           := PedidosReducao_ICMSOper.Value;
                 NotasApuracao_PISCOFINS.Value         := PedidosApuracao_PISCOFINS.Value;
                 NotasComplementar.Value               := PedidosComplementar.Value;
                 NotasBaixa_Estoque.Value              := PedidosBaixa_Estoque.Value;
                 NotasNFe_Denegada.Value               := mDenegada;
                 NotasTotal_Impostos.Value             := PedidosTotal_Impostos.Value;
                 NotasRepresentante.Value              := PedidosRepresentante.Value;
                 NotasRepresentante_Comissao.Value     := PedidosRepresentante_Comissao.Value;
                 NotasComissao.Value                   := PedidosComissao.Value;
                 NotasComissao_Valor.Value             := PedidosComissao_Valor.Value;
                 NotasPedido_Representante.Value       := PedidosPedido_Representante.Value;
                 NotasAtendente.Value                  := PedidosAtendente.Value;
                 NotasAtendente_Comissao.Value         := PedidosAtendente_Comissao.Value;
                 NotasValor_Inventario.Value           := PedidosValor_Inventario.Value;
                 NotasRatear_Despesa.Value             := PedidosRatear_Despesa.Value;
                 NotasIndicador_Presenca.Value         := PedidosIndicador_Presenca.Value;
                 NotasIndicador_Intermediario.Value    := PedidosIndicador_Intermediario.Value;
                 NotasNFE_Estorno.Value                := PedidosNFE_Estorno.Value;
                 NotasRepresentante_ComissaoGer.Value  := PedidosRepresentante_ComissaoGer.Value;
                 NotasVendedor.Value                   := PedidosVendedor.Value;
                 NotasLucro_Valor.Value                := PedidosLucro_Valor.Value;
                 NotasValor_BCICMSDest.Value           := PedidosValor_BCICMSDest.Value;
                 NotasValor_ICMSDest.Value             := PedidosValor_ICMSDest.Value;
                 NotasValor_BCDIFAL.Value              := PedidosValor_BCDIFAL.Value;
                 NotasDIFAL_Valor.Value                := PedidosDIFAL_Valor.Value;
                 NotasDIFAL_ValorOrig.Value            := PedidosDIFAL_ValorOrig.Value;
                 NotasDIFAL_ValorDest.Value            := PedidosDIFAL_ValorDest.Value;
                 NotasFCP_ValorDest.Value              := PedidosFCP_ValorDest.Value;
                 NotasFCP_ICMSDest.Value               := PedidosFCP_ICMSDest.Value;
                 NotasFCP_ICMSORIG.Value               := PedidosFCP_ICMSORIG.Value;
                 NotasAliquota_CSLL.Value              := PedidosAliquota_CSLL.Value;
                 NotasValor_CSLL.Value                 := PedidosValor_CSLL.Value;
                 NotasAliquota_IRPJ.Value              := PedidosAliquota_IRPJ.Value;
                 NotasValor_IRPJ.Value                 := PedidosValor_IRPJ.Value;
                 NotasValor_IRPJ.Value                 := PedidosValor_IRPJ.Value;
                 NotasDIFAL_AliqInterna.Value          := PedidosDIFAL_AliqInterna.Value;
                 NotasValor_BCFCP.Value                := PedidosValor_BCFCP.Value;
                 NotasAliquota_FCP.Value               := PedidosAliquota_FCP.Value;
                 NotasValor_FCP.Value                  := PedidosValor_FCP.Value;
                 NotasValor_BCFCPST.Value              := PedidosValor_BCFCPST.Value;
                 NotasAliquota_FCPST.Value             := PedidosAliquota_FCPST.Value;
                 NotasValor_FCPST.Value                := PedidosValor_FCPST.Value;
                 NotasTipo_Pagamento.Value             := PedidosTipo_Pagamento.Value;
                 NotasForma_Pagamento.Value            := PedidosForma_Pagamento.Value;
                 NotasValor_ICMSDesonerado.Value       := PedidosValor_ICMSDesonerado.Value;
                 NotasLote.Value                       := PedidosLote.Value;
                 NotasEntrega_Retirada.Value           := PedidosEntrega_Retirada.Value;
                 NotasTipo_Processo.Value              := PedidosTipo_Processo.Value;
                 NotasValor_AFRMM.Value                := PedidosValor_AFRMM.Value;
                 NotasDescricao_Forma.Value            := PedidosDescricao_Forma.AsString;
                 NotasIntermediador.Value              := PedidosIntermediador.AsInteger;
                 NotasValor_BCICMSMono.value           := PedidosValor_BCICMSMono.value;
                 NotasValor_BCICMSMonoRet.value        := PedidosValor_BCICMSMonoRet.value;
                 NotasValor_ICMSMono.value             := PedidosValor_ICMSMono.value;
                 NotasValor_ICMSMonoRet.value          := PedidosValor_ICMSMonoRet.value;
                 NotasArmazem.Value                    := PedidosArmazem.asinteger;
                 NotasArmazem_Nome.Value               := PedidosArmazem_Nome.asstring;
                 NotasArmazem_CNPJ.Value               := PedidosArmazem_CNPJ.asstring;
                 NotasArmazem_IE.Value                 := PedidosArmazem_IE.asstring;
                 NotasArmazem_Endereco.value           := PedidosArmazem_Endereco.asstring;
                 NotasRemessa.Value                    := PedidosRemessa.Value;
                 NotasValor_BCICMSPresumido.value      := PedidosValor_BCICMSPresumido.value;
                 NotasValor_ICMSPresumido.value        := PedidosValor_ICMSPresumido.value;
                 NotasValor_ICMSPresumido.value        := PedidosValor_ICMSPresumido.value;
                 NotasIncentivo_Codigo.value           := PedidosIncentivo_Codigo.value;
           Notas.Post;

           // Capa da nota salva.
           Pedidos.Edit;
                   PedidosOK.value := 1;
           Pedidos.Post;

           if not NotasNFe_Denegada.AsBoolean then begin
              // Registra o número da nota fiscal no serial do produto.
              ProdutosSeriais.SQL.Clear;
              ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE Pedido = :pPedido');
              ProdutosSeriais.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
              ProdutosSeriais.Open;

              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosSeriaisNotas');

              if ProdutosSeriais.RecordCount > 0 then begin
                 ProdutosSeriaisNotas.Open;
                 while not ProdutosSeriais.Eof do begin
                       tRegistro.Open;
                       ProdutosSeriaisNotas.Append;
                                            ProdutosSeriaisNotasRegistro.Value       := tRegistro.FieldByName('Registro').AsInteger;
                                            ProdutosSeriaisNotasProduto_Codigo.Value := ProdutosSeriaisProduto_Codigo.Value;
                                            ProdutosSeriaisNotasNumero.Value         := ProdutosSeriaisNumero.Value;
                                            ProdutosSeriaisNotasNota.Value           := mNota;
                                            ProdutosSeriaisNotasData.Value           := cDataEmissao.Date;
                                            ProdutosSeriaisNotasSaida_Entrada.Value  := NotasSaida_Entrada.AsInteger;
                                            ProdutosSeriaisNotasEmissor.Value        := 'P';
                       ProdutosSeriaisNotas.Post;
                       tRegistro.Close;

                       ProdutosSeriais.Next;
                 end;
                 ProdutosSeriaisNotas.Close;

                 ProdutosSeriais.SQL.Clear;
                 ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL');
                 if NotasSaida_Entrada.AsInteger = 0 then begin
                    ProdutosSeriais.SQL.Add(',Disponivel   = 1');
                    ProdutosSeriais.SQL.Add(',Nota_Entrada = :pNota');
                    ProdutosSeriais.SQL.Add(',Data_Entrada = :pData');
                 end else begin
                    ProdutosSeriais.SQL.Add(',Disponivel = 0');
                    ProdutosSeriais.SQL.Add(',Nota_Saida = :pNota');
                    ProdutosSeriais.SQL.Add(',Data_Saida = :pData');
                 end;
                 ProdutosSeriais.SQL.Add('WHERE(Pedido = :pPedido)');
                 ProdutosSeriais.ParamByName('pNota').AsInteger   := mNota;
                 ProdutosSeriais.ParamByName('pData').AsDate      := cDataEmissao.Date;
                 ProdutosSeriais.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                 ProdutosSeriais.Execute;
                 ProdutosSeriais.SQL.Clear;
                 ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Pedido = 1)');
              end;

              // Seriais salvos.
              Pedidos.Edit;
                      PedidosOK.value := 2;
              Pedidos.Post;

              // Atualiza o arquivo do Imobilizado (CIAP), Quando há "ICMS" na nota de saída.
              If (NotasSaida_Entrada.AsInteger = 1) And (NotasValor_ICMS.AsCurrency > 0) then begin
                 tCIAP.SQL.Clear;
                 tCIAP.SQL.Add('SELECT COUNT(*) AS Qtde FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao, '''') = '''') AND (ISNULL(AnoMes_Faturamento, ''000000'') < :pAnoMes) ');
                 tCIAP.ParamByName('pAnoMes').AsString := PoeZero(4, YearOf(NotasData_Emissao.AsDateTime)) + PoeZero(2, MonthOf(NotasData_Emissao.AsDateTime));
                 tCIAP.Open;
                 If tCIAP.FieldByName('Qtde').AsInteger > 0 then begin
                    // Aumenta em 1 a percela "Apropriada" para os itens em aberto.
                    tCIAP.SQL.Clear;
                    tCIAP.SQL.Add('UPDATE Imobilizado SET Apropriadas = (Apropriadas + 1) WHERE(Apropriadas < Parcelas) AND (ISNULL(Fim_Apropriacao, '''') = '''') AND (ISNULL(AnoMes_Faturamento, '''') < :pAnoMes)');
                    tCIAP.ParamByName('pAnoMes').AsString := PoeZero(4, YearOf(NotasData_Emissao.AsDateTime)) + PoeZero(2, MonthOf(NotasData_Emissao.AsDateTime));
                    tCIAP.Execute;

                    // Salva o ano e o mês nos itens que estão em aberto para não incrementar para toda nota emitida.
                    tCIAP.SQL.Clear;
                    tCIAP.SQL.Add('UPDATE Imobilizado SET AnoMes_Faturamento = :pAnoMes WHERE(Apropriadas < Parcelas) AND (ISNULL(Fim_Apropriacao, '''') = '''') AND (ISNULL(AnoMes_Faturamento, '''') < :pAnoMes)');
                    tCIAP.ParamByName('pAnoMes').AsString := (PoeZero(4, YearOf(NotasData_Emissao.AsDateTime)) + PoeZero(2, MonthOf(NotasData_Emissao.AsDateTime)));
                    tCIAP.Execute;

                    // Verifica se as apropriações atingiram o limite e atualiza o campo "Fim_Apropriacao" com o mês e o ano da nota.
                    tCIAP.SQL.Clear;
                    tCIAP.SQL.Add('UPDATE Imobilizado SET Fim_Apropriacao = :pFimApropriacao WHERE(Apropriadas = Parcelas) AND (ISNULL(Fim_Apropriacao, '''') = '''')');
                    tCIAP.ParamByName('pFimApropriacao').AsString := PoeZero(2, MonthOf(NotasData_Emissao.AsDateTime))+PoeZero(4, YearOf(NotasData_Emissao.AsDateTime));
                    tCIAP.Execute;
                 End;
              End;

              // Atualiza o limite de crédito no cadastro do cliente.
              If NotasSaida_Entrada.AsInteger = 1 then begin
                 If TipoNotaGerar_Financeiro.AsBoolean = true then begin
                    Clientes.Edit;
                             ClientesLimite_Utilizado.Value := ClientesLimite_Utilizado.Value + NotasValor_TotalNota.Value;
                    Clientes.Post;
                 End;
              End;
           end;
           
           // CIAP Salvo.
           Pedidos.Edit;
                   PedidosOK.value := 3;
           Pedidos.Post;

           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido)');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.Open;

           NotasItens.SQL.Clear;
           NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData) ORDER BY NCM');
           NotasItens.ParamByName('pNota').AsInteger := mNota;
           NotasItens.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
           NotasItens.Open;

           // Selecionando os itens da adição da DI para disponibilizar o estoque.
           Adicoes.SQL.Clear;
           Adicoes.SQL.Add('UPDATE Adicoes SET Pedido = 0 WHERE Pedido = NULL AND DI IN(SELECT DISTINCT DI FROM PedidosItens WHERE Pedido = :pPedido)');
           Adicoes.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           Adicoes.Execute;
           Adicoes.SQL.Clear;
           Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE DI IN(SELECT DISTINCT DI FROM PedidosItens WHERE(Pedido = :pPedido))');
           Adicoes.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           Adicoes.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota');
           TipoNota.Open;
           TipoNota.Locate('Codigo', PedidosTipo_Nota.AsInteger, [loCaseInsensitive]);

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE (Processo IN(SELECT DISTINCT Processo FROM PedidosItens WHERE(Pedido = :pPedido)))');
           ProcessosDOC.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           ProcessosDOC.Open;

           tProcessos.SQL.Clear;
           tProcessos.SQL.Add('SELECT DISTINCT Processo FROM PedidosItens WHERE(Pedido = :pPedido)');
           tProcessos.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           tProcessos.Open;

           tHistorico.SQL.Clear;
           tHistorico.SQL.Add('SELECT ISNULL(MAX(Numero), 0) AS Numero FROM ProcessosHistorico');

           ProcessosHistorico.SQL.Clear;
           ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE(Processo = :pProcesso)');
           ProcessosHistorico.ParamByName('pProcesso').AsString := PedidosProcesso.AsString;
           ProcessosHistorico.Open;

           // Gera o histórico da emissão da nota fiscal no processo.
           While not tProcessos.Eof do begin
                 tHistorico.Open;
                 ProcessosHistorico.Append;
                                    ProcessosHistoricoNumero.Value    := tHistorico.FieldByName('Numero').AsInteger+1;;
                                    ProcessosHistoricoProcesso.Value  := Trim(tProcessos.FieldByName('Processo').AsString);
                                    ProcessosHistoricoData.Value      := Date;
                                    ProcessosHistoricoHora.Value      := TimetoStr(Time);
                                    ProcessosHistoricoDocumento.Value := Poezero(9, NotasNumero.AsInteger);
                                    If NotasSaida_Entrada.Value = 0 then begin
                                       ProcessosHistoricoDescricao.Value := 'Emitida a nota fiscal de entrada nº '+Poezero(9, NotasNumero.AsInteger)+ ' de '+NotasData_Emissao.AsString;
                                    end else begin
                                       ProcessosHistoricoDescricao.Value := 'Emitida a nota fiscal de saida nº '+Poezero(9, NotasNumero.AsInteger)+ ' de '+NotasData_Emissao.AsString;
                                       tHistorico.Close;
                                       tHistorico.Open;
                                       ProcessosHistoricoDescricao.Value := 'Encerramento do processo pela NF nº'+Poezero(9, NotasNumero.AsInteger)+ ' de '+NotasData_Emissao.AsString;
                                    End;
                 ProcessosHistorico.Post;
                 tProcessos.Next;
                 tHistorico.Close;
           End;
           
           // Histórico do processo salvo.
           Pedidos.Edit;
                   PedidosOK.value := 4;
           Pedidos.Post;

           // Copiando os itens do pedido para os itens da nota fiscal.
           PedidosItens.First;
           While not PedidosItens.Eof do begin
                 with Produtos do begin
                      sql.Clear;
                      sql.Add('select * from Produtos where Codigo = :pCodigo');
                      ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                      Open;
                 end;

                 NotasItens.Append;
                            NotasItensNota.Value                   := mNota;
                            NotasItensItem.Value                   := PedidosItensItem.Value;
                            NotasItensSequencia_SISCOMEX.Value     := PedidosItensSequencia_SISCOMEX.Value;
                            NotasItensCodigo_Mercadoria.Value      := PedidosItensCodigo_Mercadoria.Value;
                            NotasItensCodigo_Fabricante.Value      := PedidosItensCodigo_Fabricante.Value;
                            NotasItensData.Value                   := NotasData_Emissao.Value;
                            NotasItensDescricao_Mercadoria.Value   := PedidosItensDescricao_Mercadoria.Value;
                            NotasItensNCM.Value                    := PedidosItensNCM.Value;
                            NotasItensEXTIPI.Value                 := PedidosItensEXTIPI.Value;
                            NotasItensUnidade_Medida.Value         := PedidosItensUnidade_Medida.Value;
                            NotasItensQuantidade.Value             := PedidosItensQuantidade.value;
                            NotasItensDisponivel.Value             := PedidosItensQuantidade.Value;
                            NotasItensValor_Unitario.Value         := PedidosItensValor_Unitario.Value;
                            NotasItensValor_Total.Value            := PedidosItensValor_Total.Value;
                            NotasItensAliquota_IPI.Value           := PedidosItensAliquota_IPI.Value;
                            NotasItensValor_IPI.Value              := PedidosItensValor_IPI.Value;
                            NotasItensTotal_IPI.Value              := PedidosItensTotal_IPI.Value;
                            NotasItensValor_IPIDevol.Value         := PedidosItensValor_IPIDevol.Value;
                            NotasItensPercentual_IPIDevol.Value    := PedidosItensPercentual_IPIDevol.Value;
                            NotasItensValor_BCIPI.Value            := PedidosItensValor_BCIPI.Value;
                            NotasItensCodigoTrib_TabA.Value        := PedidosItensCodigoTrib_TabA.Value;
                            NotasItensCodigoTrib_TabB.Value        := PedidosItensCodigoTrib_TabB.Value;
                            NotasItensCSTIPI.Value                 := PedidosItensCSTIPI.Value;
                            NotasItensCSTPIS.Value                 := PedidosItensCSTPIS.Value;
                            NotasItensCSTCOFINS.Value              := PedidosItensCSTCOFINS.Value;
                            NotasItensAdicao.Value                 := PedidosItensAdicao.Value;
                            NotasItensAliquota_II.Value            := PedidosItensAliquota_II.Value;
                            NotasItensValor_BCII.Value             := PedidosItensValor_BCII.Value;
                            NotasItensValor_II.Value               := PedidosItensValor_II.Value;
                            NotasItensValor_BCICMSOper.Value       := PedidosItensValor_BCICMSOper.Value;
                            NotasItensAliquota_ICMSOper.Value      := PedidosItensAliquota_ICMSOper.Value;
                            NotasItensValor_ICMSOper.Value         := PedidosItensValor_ICMSOper.Value;
                            NotasItensValor_BCICMSSub.Value        := PedidosItensValor_BCICMSSub.Value;
                            NotasItensAliquota_ICMSSub.Value       := PedidosItensAliquota_ICMSSub.Value;
                            NotasItensValor_ICMSSub.Value          := PedidosItensValor_ICMSSub.Value;
                            NotasItensAliquota_MVA.Value           := PedidosItensAliquota_MVA.Value;
                            NotasItensValor_MVA.Value              := PedidosItensValor_MVA.Value;
                            NotasItensAliquota_ICMSReducao.Value   := iif(PedidosItensAliquota_ICMSReducao.asfloat >0, PedidosItensAliquota_ICMSReducao.asfloat, PedidosItensAliquota_ICMSReducao2.asfloat);
                            NotasItensValor_ICMSReducao.Value      := PedidosItensValor_ICMSReducao.Value;
                            NotasItensValor_Seguro.Value           := PedidosItensValor_Seguro.Value;
                            NotasItensValor_Frete.Value            := PedidosItensValor_Frete.Value;
                            NotasItensValor_Despesa.Value          := PedidosItensValor_Despesa.Value;
                            
                            NotasItensValor_BCPIS.Value            := PedidosItensValor_BCPIS.Value;
                            NotasItensAliquota_PIS.Value           := PedidosItensAliquota_PIS.Value;
                            NotasItensValor_PIS.Value              := PedidosItensValor_PIS.Value;
                            NotasItensValor_PISST.Value            := PedidosItensValor_PISST.Value;
                            NotasItensAliquota_COFINS.Value        := PedidosItensAliquota_COFINS.Value;
                            NotasItensValor_COFINS.Value           := PedidosItensValor_COFINS.Value;
                            NotasItensValor_BCCOFINSST.Value       := PedidosItensValor_BCCOFINSST.Value;
                            NotasItensValor_COFINSST.Value         := PedidosItensValor_COFINSST.Value;
                            NotasItensApuracao_PISCOFINS.Value     := PedidosItensApuracao_PISCOFINS.Value;
                            NotasItensAliquota_COFINSRed.Value     := PedidosItensAliquota_COFINSRed.Value;
                            
                            NotasItensPeso_Liquido.Value           := PedidosItensPeso_Liquido.Value;
                            NotasItensPeso_Bruto.Value             := PedidosItensPeso_Bruto.Value;
                            NotasItensVeiculo.Value                := ProdutosDetalhe_Especifico.Value = 'V';
                            NotasItensSaida_Entrada.Value          := PedidosSaida_Entrada.Value;
                            NotasItensMovimenta_Inventario.Value   := PedidosItensMovimenta_Inventario.Value;
                            NotasItensMovimenta_Estoque.Value      := PedidosItensMovimenta_Estoque.Value;
                            NotasItensCancelada.Value              := False;
                            NotasItensModalidade_BCICMS.Value      := PedidosItensModalidade_BCICMS.Value;
                            NotasItensModalidade_BCICMSST.Value    := PedidosItensModalidade_BCICMSST.Value;
                            NotasItensProcesso.Value               := PedidosItensProcesso.Value;
                            NotasItensDI.Value                     := PedidosItensDI.Value;
                            NotasItensValor_IsentasICMS.Value      := PedidosItensValor_IsentasICMS.Value;
                            NotasItensValor_OutrasICMS.Value       := PedidosItensValor_OutrasICMS.Value;
                            NotasItensValor_IsentasIPI.Value       := PedidosItensValor_IsentasIPI.Value;
                            NotasItensValor_OutrasIPI.Value        := PedidosItensValor_OutrasIPI.Value;
                            NotasItensLucro.Value                  := PedidosItensLucro.Value;
                            NotasItensLucro_Valor.Value            := PedidosItensLucro_Valor.Value;
                            NotasItensSequencia.Value              := PedidosItensSequencia.Value;
                            NotasItensDesconto.Value               := PedidosItensDesconto.Value;
                            NotasItensDesconto_Valor.Value         := PedidosItensDesconto_Valor.Value;
                            NotasItensNota_Terceiros.Value         := PedidosItensNota_Terceiros.Value;
                            NotasItensRateio_ICMSProcesso.Value    := PedidosItensRateio_ICMSProcesso.Value;
                            NotasItensAliquota_PISRed.Value        := PedidosItensAliquota_PISRed.Value;
                            NotasItensAliquota_ICMSIntegral.Value  := PedidosItensAliquota_ICMSIntegral.Value;
                            NotasItensValor_Dumping.Value          := PedidosItensValor_Dumping.Value;
                            NotasItensValor_BCMVA.Value            := PedidosItensValor_BCMVA.Value;
                            NotasItensFinalidade_Mercadoria.Value  := PedidosItensFinalidade_Mercadoria.Value;
                            NotasItensRateio_SISCOMEX.Value        := PedidosItensRateio_SISCOMEX.Value;
                            NotasItensRegistro_Adicao.Value        := PedidosItensRegistro_Adicao.Value;
                            NotasItensTipo_Nota.Value              := PedidosItensTipo_Nota.Value;
                            NotasItensTotal_Impostos.Value         := PedidosItensTotal_Impostos.Value;
                            NotasItensICMSST_Anterior.Value        := PedidosItensICMSST_Anterior.Value;
                            NotasItensComissao.Value               := PedidosItensComissao.Value;
                            NotasItensComissao_Valor.Value         := PedidosItensComissao_Valor.Value;
                            NotasItensNfe_Denegada.Value           := NotasNFe_Denegada.Value;
                            NotasItensReducao_ICMSST.Value         := PedidosItensReducao_ICMSST.Value;
                            NotasItensValor_Inventario.Value       := PedidosItensValor_Inventario.Value;
                            NotasItensNota_Referencia.Value        := PedidosItensNota_Referencia.Value;
                            NotasItensData_Referencia.Value        := PedidosItensData_Referencia.Value;
                            NotasItensNUmero_Referencia.Value      := PedidosItensNumero_Referencia.Value;
                            NotasItensMovimenta_EstoqueRep.Value   := PedidosItensMovimenta_EstoqueRep.Value;
                            NotasItensCEST.Value                   := PedidosItensCEST.Value;
                            NotasItensValor_BCICMSDest.Value       := PedidosItensValor_BCICMSDest.Value;
                            NotasItensAliquota_ICMSDest.Value      := PedidosItensAliquota_ICMSDest.Value;
                            NotasItensValor_ICMSDest.Value         := PedidosItensValor_ICMSDest.Value;
                            NotasItensValor_BCDIFAL.Value          := PedidosItensValor_BCDIFAL.Value;
                            NotasItensDIFAL_Valor.Value            := PedidosItensDIFAL_Valor.Value;
                            NotasItensDIFAL_PercOrig.Value         := PedidosItensDIFAL_PercOrig.Value;
                            NotasItensDIFAL_ValorOrig.Value        := PedidosItensDIFAL_ValorOrig.Value;
                            NotasItensDIFAL_PercDest.Value         := PedidosItensDIFAL_PercDest.Value;
                            NotasItensDIFAL_ValorDest.Value        := PedidosItensDIFAL_ValorDest.Value;
                            NotasItensFCP_Aliquota.Value           := PedidosItensFCP_Aliquota.Value;
                            NotasItensFCP_ValorDest.Value          := PedidosItensFCP_ValorDest.Value;
                            NotasItensFCP_ICMSOrig.Value           := PedidosItensFCP_ICMSOrig.Value;
                            NotasItensFCP_ICMSDest.Value           := PedidosItensFCP_ICMSDest.Value;
                            NotasItensAliquota_CSLL.Value          := PedidosItensAliquota_CSLL.Value;
                            NotasItensValor_CSLL.Value             := PedidosItensValor_CSLL.Value;
                            NotasItensAliquota_IRPJ.Value          := PedidosItensAliquota_IRPJ.Value;
                            NotasItensValor_IRPJ.Value             := PedidosItensValor_IRPJ.Value;
                            NotasItensNatureza_Codigo.Value        := PedidosItensNatureza_Codigo.Value;
                            NotasItensValor_BCFCP.Value            := PedidosItensValor_BCFCP.Value;
                            NotasItensValor_FCP.Value              := PedidosItensValor_FCP.Value;
                            NotasItensValor_BCFCPST.Value          := PedidosItensValor_BCFCPST.Value;
                            NotasItensValor_FCPST.Value            := PedidosItensValor_FCPST.Value;
                            NotasItensPO.Value                     := PedidosItensPO.Value;
                            NotasItensOrdem.Value                  := PedidosItensOrdem.Value;
                            NotasItensMedia_BCR.Value              := PedidosItensMedia_BCR.Value;
                            NotasItensValor_ICMSSubAnt.Value       := PedidosItensValor_ICMSSubAnt.Value;
                            NotasItensAliquota_ICMSSubAnt.Value    := PedidosItensAliquota_ICMSSubAnt.Value;
                            NotasItensValor_ICMSAnt.Value          := PedidosItensValor_ICMSAnt.Value;
                            NotasItensFator_Cambio.Value           := PedidosItensFator_Cambio.Value;
                            NotasItensValor_AFRMM.Value            := PedidosItensValor_AFRMM.Value;
                            NotasItensRateio_FreteTerrNac.Value    := PedidosItensRateio_FreteTerrNac.Value;
                            NotasItensPercentual_Beneficio.value   := PedidosItensPercentual_Beneficio.asfloat;
                            NotasItensValor_BCICMSMono.value       := PedidosItensValor_BCICMSMono.value;
                            NotasItensValor_BCICMSMonoRet.value    := PedidosItensValor_BCICMSMonoRet.value;
                            NotasItensValor_ICMSMono.value         := PedidosItensValor_ICMSMono.value;
                            NotasItensValor_ICMSMonoRet.value      := PedidosItensValor_ICMSMonoRet.value;
                            NotasItensPercentual_ICMSMono.value    := PedidosItensPercentual_ICMSMono.value;
                            NotasItensPercentual_ICMSMonoRet.value := PedidosItensPercentual_ICMSMonoRet.value;
                            NotasItensNavio.value                  := PedidosItensNavio.value;
                            NotasItensBL.Value                     := PedidosItensBL.Value;
                            NotasItensValor_BCICMSPresumido.Value  := PedidosItensValor_BCICMSPresumido.Value;
                            NotasItensAliquota_ICMSPresumido.Value := PedidosItensAliquota_ICMSPresumido.Value;
                            NotasItensValor_ICMSPresumido.Value    := PedidosItensValor_ICMSPresumido.Value;
                            NotasItensBeneficio_Fiscal.value       := PedidosItensBeneficio_Fiscal.AsString;
                            NotasItensCodigo_CredPres.value        := PedidosItensCodigo_CredPres.AsString;
                            NotasItensValor_COFINSDiferenca.Value  := PedidosItensValor_COFINSDiferenca.Value;
                 NotasItens.Post;

                 // Adiciona o item a ficha de Estoque.
                 if not NotasNFe_Denegada.AsBoolean then begin
                    if NotasItensMovimenta_Estoque.AsBoolean then begin
                       Try
                           tEstoque.SQL.Clear;
                           tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
                           tEstoque.SQL.Add('FROM   FichaEstoque');
                           tEstoque.Open;
                           mReg := tEstoque.FieldByName('Registro').AsInteger;

                           tEstoque.SQL.Clear;
                           tEstoque.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Ordem');
                           tEstoque.SQL.Add('FROM   FichaEstoque');
                           tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                           tEstoque.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                           tEstoque.Open;
                           mOrdem := tEstoque.FieldByName('Ordem').AsInteger;

                           tEstoque.SQL.Clear;
                           tEstoque.SQL.Add('SELECT Qtde_Saldo     = ISNULL(Qtde_Saldo, 0)');
                           tEstoque.SQL.Add('      ,Unitario_Saldo = ISNULL(Unitario_Saldo, 0)');
                           tEstoque.SQL.Add('      ,Total_Saldo    = ISNULL(Total_Saldo, 0)');
                           tEstoque.SQL.Add('FROM   FichaEstoque');
                           tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                           tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaEstoque WHERE Codigo = :pCodigo)');
                           tEstoque.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                           tEstoque.Open;

                           mUnitSaldo  := 0;
                           mQtdeSaldo  := 0;
                           mTotalSaldo := 0;
                           If tEstoque.RecordCount > 0 then begin
                              mUnitSaldo  := tEstoque.FieldByName('Unitario_Saldo').AsFloat;
                              mQtdeSaldo  := tEstoque.FieldByName('Qtde_Saldo').AsFloat;
                              mTotalSaldo := tEstoque.FieldByName('Total_Saldo').AsFloat;
                           End;

                           FichaEstoque.SQL.Clear;
                           FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Codigo = :pCodigo AND Registro = :pRegistro');
                           FichaEstoque.ParamByName('pCodigo').AsInteger   := NotasItensCodigo_Mercadoria.AsInteger;
                           FichaEstoque.ParamByName('pRegistro').AsInteger := mReg;
                           FichaEstoque.Open;

                           FichaEstoque.Append;
                                        FichaEstoqueRegistro.Value  := mReg;
                                        FichaEstoqueItem.Value      := mOrdem;
                                        FichaEstoqueCodigo.Value    := NotasItensCodigo_Mercadoria.AsInteger;
                                        FichaEstoqueDescricao.Value := NotasItensDescricao_Mercadoria.AsString;
                                        FichaEstoqueUM.Value        := NotasItensUnidade_Medida.AsString;
                                        FichaEstoqueCFOP.Value      := NotasItensNatureza_Codigo.AsString;

                                        Case TipoNotaFinalidade_Mercadoria.AsInteger of
                                             0: FichaEstoqueHistorico.Value := 'COMPRA - REVENDA';
                                             1: FichaEstoqueHistorico.Value := 'COMPRA - CONSUMO';
                                             2: FichaEstoqueHistorico.Value := 'DEVOLUÇÃO';
                                             3: FichaEstoqueHistorico.Value := 'EXPORTAÇÃO';
                                             4: FichaEstoqueHistorico.Value := 'PRÓPRIAS EM PODER DE TERCEIROS';
                                             5: FichaEstoqueHistorico.Value := 'TERCEIROS EM PODER DA EMPRESA';
                                             6: FichaEstoqueHistorico.Value := 'COMPRA - IMOBILIZADO';
                                             9: FichaEstoqueHistorico.Value := 'OUTRAS';
                                        End;

                                        Case TipoNotaFinalidade_Mercadoria.AsInteger of
                                             0: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                             1: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                             2: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                             3: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                             4: FichaEstoqueEstoque.Value := '1-ARMAZEM';
                                             5: FichaEstoqueEstoque.Value := '2-TERCEIROS';
                                             6: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                             9: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                        End;

                                        FichaEstoqueEmissor.Value := 'P';
                                        FichaEstoqueOrigem.Value  := 'NFP';
                                        FichaEstoqueNota.Value    := NotasItensNota.AsInteger;
                                        FichaEstoqueData.Value    := NotasItensData.Value;

                                        If NotasItensSaida_Entrada.AsInteger = 0 then begin
                                           FichaEstoqueES.Value                  := 'E';
                                           FichaEstoqueDestinatario_Codigo.Value := NotasFornecedor_Codigo.AsInteger;
                                        end else begin
                                           FichaEstoqueES.Value := 'S';
                                           FichaEstoqueDestinatario_Codigo.Value := NotasCliente_Codigo.AsInteger;
                                        End;

                                        FichaEstoqueDestinatario_Nome.Value := Trim(NotasDestinatario_Nome.AsString);
                                        FichaEstoqueDestinatario_CNPJ.Value := NotasDestinatario_CNPJ_CPF.AsString;
                                        FichaEstoqueFinalidade.Value        := TipoNotaFinalidade_Mercadoria.AsInteger;

                                        If NotasItensSaida_Entrada.AsInteger = 0 then begin
                                           FichaEstoqueQtde_Entrada.Value     := NotasItensQuantidade.AsFloat;
                                           FichaEstoqueUnitario_Entrada.Value := NotasItensValor_Inventario.Value;
                                           FichaEstoqueTotal_Entrada.Value    := NotasItensQuantidade.AsFloat * NotasItensValor_Inventario.AsCurrency;
                                           FichaEstoqueQtde_Saida.Value       := 0;
                                           FichaEstoqueUnitario_Saida.Value   := 0;
                                           FichaEstoqueTotal_Saida.Value      := 0;
                                           FichaEstoqueQtde_Saldo.Value       := mQtdeSaldo  + NotasItensQuantidade.AsFloat;
                                           FichaEstoqueTotal_Saldo.Value      := mTotalSaldo + FichaEstoqueTotal_Entrada.AsCurrency;
                                           FichaEstoqueUnitario_Saldo.Value   := FichaEstoqueTotal_Saldo.AsCurrency / FichaEstoqueQtde_Saldo.AsCurrency;
                                        end else begin
                                           FichaEstoqueQtde_Entrada.Value     := 0;
                                           FichaEstoqueUnitario_Entrada.Value := 0;
                                           FichaEstoqueTotal_Entrada.Value    := 0;
                                           FichaEstoqueQtde_Saida.Value       := NotasItensQuantidade.AsFloat;
                                           FichaEstoqueUnitario_Saida.Value   := mUnitSaldo;
                                           FichaEstoqueTotal_Saida.Value      := NotasItensQuantidade.AsFloat * mUnitSaldo;
                                           FichaEstoqueQtde_Saldo.Value       := mQtdeSaldo - NotasItensQuantidade.AsFloat;
                                           FichaEstoqueTotal_Saldo.Value      := mTotalSaldo - FichaEstoqueTotal_Saida.AsCurrency;
                                           If (FichaEstoqueTotal_Saldo.AsCurrency > 0) then
                                              FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsCurrency / FichaEstoqueQtde_Saldo.AsFloat
                                           else
                                              FichaEstoqueUnitario_Saldo.Value := 0;
                                        End;

                                        FichaEstoqueProcesso.Value := NotasItensProcesso.Value;
                                        If ProcessosDOC.Locate('Processo', NotasItensProcesso.AsString, [loCaseInsensitive]) then begin
                                           FichaEstoqueTipo_Processo.Value := ProcessosDOCModalidade_Importacao.Value;
                                        End;
                           FichaEstoque.Post;

                           // Registro o log.
                           LogDados(Dados.FichaEstoque, '('+Dados.PedidosNota.AsString+') Nota fiscal adicionada na ficha de estoque', dsInsert);
                       Except
                           LogDados(Dados.FichaEstoque, '('+Dados.PedidosNota.AsString+') Nota fiscal não adicionada na ficha de estoque', dsInsert);
                       End;
                    End;

                    // Adiciona o item a ficha de Inventario.
                    If NotasItensMovimenta_Inventario.AsBoolean then begin
                       Try
                           tEstoque.SQL.Clear;
                           tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
                           tEstoque.SQL.Add('FROM   FichaInventario');
                           tEstoque.Open;
                           mReg := tEstoque.FieldByName('Registro').AsInteger;

                           tEstoque.SQL.Clear;
                           tEstoque.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Ordem');
                           tEstoque.SQL.Add('FROM   FichaInventario');
                           tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                           tEstoque.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                           tEstoque.Open;
                           mOrdem := tEstoque.FieldByName('Ordem').AsInteger;

                           tEstoque.SQL.Clear;
                           tEstoque.SQL.Add('SELECT Qtde_Saldo     = ISNULL(Qtde_Saldo, 0)');
                           tEstoque.SQL.Add('      ,Unitario_Saldo = ISNULL(Unitario_Saldo, 0)');
                           tEstoque.SQL.Add('      ,Total_Saldo    = ISNULL(Total_Saldo, 0)');
                           tEstoque.SQL.Add('FROM   FichaInventario');
                           tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                           tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo)');
                           tEstoque.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                           tEstoque.Open;

                           mUnitSaldo  := 0;
                           mQtdeSaldo  := 0;
                           mTotalSaldo := 0;
                           If tEstoque.RecordCount > 0 then begin
                              mUnitSaldo  := tEstoque.FieldByName('Unitario_Saldo').AsFloat;
                              mQtdeSaldo  := tEstoque.FieldByName('Qtde_Saldo').AsFloat;
                              mTotalSaldo := tEstoque.FieldByName('Total_Saldo').AsFloat;
                           End;

                           FichaInventario.SQL.Clear;
                           FichaInventario.SQL.Add('SELECT * FROM FichaInventario WHERE Codigo = :pCodigo AND Registro = :pRegistro');
                           FichaInventario.ParamByName('pCodigo').AsInteger   := NotasItensCodigo_Mercadoria.AsInteger;
                           FichaInventario.ParamByName('pRegistro').AsInteger := mReg;
                           FichaInventario.Open;

                           FichaInventario.Append;
                                           FichaInventarioRegistro.Value  := mReg;
                                           FichaInventarioItem.Value      := mOrdem;
                                           FichaInventarioCodigo.Value    := NotasItensCodigo_Mercadoria.AsInteger;
                                           FichaInventarioNCM.Value       := NotasItensNCM.Value;
                                           FichaInventarioDescricao.Value := NotasItensDescricao_Mercadoria.AsString;
                                           FichaInventarioUM.Value        := NotasItensUnidade_Medida.AsString;
                                           FichaInventarioCFOP.Value      := NotasItensNatureza_Codigo.AsString;

                                           Case TipoNotaFinalidade_Mercadoria.AsInteger of
                                                0: FichaInventarioHistorico.Value := 'COMPRA - REVENDA';
                                                1: FichaInventarioHistorico.Value := 'COMPRA - CONSUMO';
                                                2: FichaInventarioHistorico.Value := 'DEVOLUÇÃO';
                                                3: FichaInventarioHistorico.Value := 'EXPORTAÇÃO';
                                                4: FichaInventarioHistorico.Value := 'PRÓPRIAS EM PODER DE TERCEIROS';
                                                5: FichaInventarioHistorico.Value := 'TERCEIROS EM PODER DA EMPRESA';
                                                6: FichaInventarioHistorico.Value := 'COMPRA - IMOBILIZADO';
                                                9: FichaInventarioHistorico.Value := 'OUTRAS';
                                           End;

                                           Case TipoNotaFinalidade_Mercadoria.AsInteger of
                                                0: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                1: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                2: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                3: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                4: FichaInventarioEstoque.Value := '1-ARMAZEM';
                                                5: FichaInventarioEstoque.Value := '2-TERCEIROS';
                                                6: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                9: FichaInventarioEstoque.Value := '0-EMPRESA';
                                           End;

                                           FichaInventarioEmissor.Value := 'P';
                                           FichaInventarioOrigem.Value  := 'NFP';
                                           FichaInventarioNota.Value    := NotasItensNota.AsInteger;
                                           FichaInventarioData.Value    := NotasItensData.Value;

                                           If NotasItensSaida_Entrada.AsInteger = 0 then begin
                                              FichaInventarioES.Value                  := 'E';
                                              FichaInventarioDestinatario_Codigo.Value := NotasFornecedor_Codigo.AsInteger;
                                           end else begin
                                              FichaInventarioES.Value := 'S';
                                              FichaInventarioDestinatario_Codigo.Value := NotasCliente_Codigo.AsInteger;
                                           End;

                                           FichaInventarioDestinatario_Nome.Value := Trim(NotasDestinatario_Nome.AsString);
                                           FichaInventarioDestinatario_CNPJ.Value := NotasDestinatario_CNPJ_CPF.AsString;
                                           FichaInventarioFinalidade.Value        := TipoNotaFinalidade_Mercadoria.AsInteger;

                                           If NotasItensSaida_Entrada.AsInteger = 0 then begin
                                              FichaInventarioQtde_Entrada.Value     := NotasItensQuantidade.AsFloat;
                                              FichaInventarioUnitario_Entrada.Value := NotasItensValor_Inventario.Value;
                                              FichaInventarioTotal_Entrada.Value    := NotasItensQuantidade.AsFloat * NotasItensValor_Inventario.AsCurrency;
                                              FichaInventarioQtde_Saida.Value       := 0;
                                              FichaInventarioUnitario_Saida.Value   := 0;
                                              FichaInventarioTotal_Saida.Value      := 0;
                                              FichaInventarioQtde_Saldo.Value       := mQtdeSaldo  + NotasItensQuantidade.AsFloat;
                                              FichaInventarioTotal_Saldo.Value      := mTotalSaldo + FichaInventarioTotal_Entrada.AsCurrency;
                                              FichaInventarioUnitario_Saldo.Value   := FichaInventarioTotal_Saldo.AsCurrency / FichaInventarioQtde_Saldo.AsCurrency;
                                           end else begin
                                              FichaInventarioQtde_Entrada.Value     := 0;
                                              FichaInventarioUnitario_Entrada.Value := 0;
                                              FichaInventarioTotal_Entrada.Value    := 0;
                                              FichaInventarioQtde_Saida.Value       := NotasItensQuantidade.AsFloat;

                                              If tEstoque.RecordCount > 0 then begin
                                                 FichaInventarioUnitario_Saida.Value := mUnitSaldo;
                                                 FichaInventarioTotal_Saida.Value    := NotasItensQuantidade.AsFloat * mUnitSaldo;
                                              End;
                                              FichaInventarioQtde_Saldo.Value  := mQtdeSaldo - NotasItensQuantidade.AsFloat;
                                              FichaInventarioTotal_Saldo.Value := mTotalSaldo - FichaInventarioTotal_Saida.AsCurrency;
                                              If (FichaInventarioTotal_Saldo.AsCurrency > 0) then
                                                 FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsCurrency / FichaInventarioQtde_Saldo.AsFloat
                                              else
                                                 FichaInventarioUnitario_Saldo.Value := 0;
                                           End;

                                           FichaInventarioProcesso.Value := NotasItensProcesso.Value;
                                           If ProcessosDOC.Locate('Processo', NotasItensProcesso.AsString, [loCaseInsensitive]) then begin
                                              FichaInventarioTipo_Processo.Value := ProcessosDOCModalidade_Importacao.Value;
                                           End;
                           FichaInventario.Post;
                           FichaInventario.Close;

                           // Log de operações.
                           LogDados(Dados.FichaInventario, '('+Dados.PedidosNota.AsString+') Nota fiscal adicionada na ficha de inventario', dsInsert);
                       except
                           LogDados(Dados.FichaInventario, '('+Dados.PedidosNota.AsString+') Nota fiscal não adicionada na ficha de inventario', dsInsert);
                       End;
                    end;

                    // Transferindo os registros de notas referenciadas da tabela de "PedidosItensReferencia para a tabela NotasItensReferencia.
                    if (TipoNotaNota_Referencia.AsBoolean) or (TipoNotaFinalidade_Mercadoria.AsInteger = 2) then begin
                       PedidosItensReferencia.SQL.Clear;
                       PedidosItensReferencia.SQL.Add('SELECT * FROM PedidosItensReferencia');
                       PedidosItensReferencia.SQL.Add('WHERE ISNULL(Chave_Referencia, '''') <> '''' ');
                       PedidosItensReferencia.SQL.Add('AND   Pedido = :pPed');
                       PedidosItensReferencia.SQL.Add('AND Data_Pedido = :pData');
                       PedidosItensReferencia.SQL.Add('ORDER BY Chave_Referencia');
                       PedidosItensReferencia.ParamByName('pPed').AsInteger := PedidosNumero.AsInteger;
                       PedidosItensReferencia.ParamByName('pData').AsDate   := PedidosData_Emissao.AsDateTime;
                       PedidosItensReferencia.Open;

                       if PedidosItensReferencia.RecordCount > 0 then begin
                          NotasItensReferencia.SQL.Clear;
                          NotasItensReferencia.SQL.Add('SELECT * FROM NotasItensReferencia WHERE Pedido = :pPed AND Data_Pedido = :pData');
                          NotasItensReferencia.ParamByName('pPed').AsInteger := PedidosNumero.AsInteger;
                          NotasItensReferencia.ParamByName('pData').AsDate   := PedidosData_Emissao.AsDateTime;
                          NotasItensReferencia.Open;
                          NotasItensReferencia.First;
                          while not PedidosItensReferencia.Eof do begin
                                NotasItensReferencia.Append;
                                                     NotasItensReferenciaPedido.Value            := PedidosItensReferenciaPedido.Value;
                                                     NotasItensReferenciaData_Pedido.Value       := PedidosItensReferenciaData_Pedido.Value;
                                                     NotasItensReferenciaChave.Value             := NotasNFe_cNF.Value;
                                                     NotasItensReferenciaNota.Value              := NotasNumero.Value;
                                                     NotasItensReferenciaData_Nota.Value         := NotasData_Emissao.Value;
                                                     NotasItensReferenciaChave_Referencia.Value  := PedidosItensReferenciaChave_Referencia.Value;
                                                     NotasItensReferenciaNota_Referencia.Value   := PedidosItensReferenciaNota_Referencia.Value;
                                                     NotasItensReferenciaData_Referencia.Value   := PedidosItensReferenciaData_Referencia.Value;
                                                     NotasItensReferenciaCodigo_Mercadoria.Value := PedidosItensReferenciaCodigo_Mercadoria.Value;
                                                     NotasItensReferenciaItem.Value              := PedidosItensReferenciaItem.Value;
                                                     NotasItensReferenciaLote.Value              := PedidosItensReferenciaLote.Value;
                                                     NotasItensReferenciaDenegada.Value          := mDenegada;
                                NotasItensReferencia.Post;
                                PedidosItensReferencia.Next;
                          end;
                       end;
                    end;
                    NotasItensReferencia.Close;
                    PedidosItensReferencia.Close;

                    // Dando entrada nos seriais/chassis que estão vinculados a DI com a NF de entrada, que ainda não foram cadastrados.
                    if NotasSaida_Entrada.AsInteger = 0 then begin
                       DISeriais.SQL.Clear;
                       DISeriais.SQL.Add('SELECT * FROM DISeriais WHERE DI = :pDI AND Produto_Codigo = :pCodigo');
                       DISeriais.ParamByName('pDI').AsString      := NotasItensDI.AsString;
                       DISeriais.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                       DISeriais.Open;

                       while not DISeriais.Eof do begin
                             // Verifica se o serial já esta cadastrado previamente.
                             tEstoque.SQL.Clear;
                             tEstoque.SQL.Add('SELECT COUNT(*) AS Qtde FROM ProdutosSeriais WHERE Produto_Codigo = :pCodigo AND Numero = :pNumero');
                             tEstoque.ParamByName('pNumero').AsString  := DISeriaisSerial.AsString;
                             tEstoque.ParamByName('pCodigo').AsInteger := DISeriaisProduto_Codigo.AsInteger;
                             tEstoque.Open;
                             if tEstoque.FieldByName('Qtde').AsInteger = 0 then begin
                                tRegistro.SQL.Clear;
                                tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosSeriais');
                                tRegistro.Open;
                                ProdutosSeriais.Open;
                                ProdutosSeriais.Append;
                                                ProdutosSeriaisRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger;
                                                ProdutosSeriaisProduto_Codigo.Value    := DISeriaisProduto_Codigo.Value;
                                                ProdutosSeriaisCodigo_Fabricante.Value := NotasItensCodigo_Fabricante.Value;
                                                ProdutosSeriaisNumero.Value            := DISeriaisSerial.Value;
                                                ProdutosSeriaisEntrada.Value           := false;
                                                ProdutosSeriaisSaida.Value             := false;
                                                ProdutosSeriaisTipo.Value              := 'SERIAL';
                                                ProdutosSeriaisNota_Entrada.Value      := NotasItensNota.Value;
                                                ProdutosSeriaisProcesso.Value          := NotasItensProcesso.Value;
                                                ProdutosSeriaisData_Entrada.Value      := NotasItensData.Value;
                                ProdutosSeriais.Post;
                                tRegistro.Close;
                             end;

                             tEstoque.SQL.Clear;
                             tEstoque.SQL.Add('SELECT COUNT(*) AS Qtde FROM ProdutosSeriaisNotas WHERE Produto_Codigo = :pCodigo AND Numero = :pNumero AND Nota = :pNota');
                             tEstoque.ParamByName('pNumero').AsString  := DISeriaisSerial.AsString;
                             tEstoque.ParamByName('pCodigo').AsInteger := DISeriaisProduto_Codigo.AsInteger;
                             tEstoque.ParamByName('pNota').AsInteger   := DISeriaisProduto_Codigo.AsInteger;
                             tEstoque.Open;
                             if tEstoque.FieldByName('Qtde').AsInteger = 0 then begin
                                tRegistro.SQL.Clear;
                                tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosSeriaisNotas');
                                tRegistro.Open;

                                ProdutosSeriaisNotas.Open;
                                ProdutosSeriaisNotas.Append;
                                                     ProdutosSeriaisNotasRegistro.Value       := tRegistro.FieldByName('Registro').AsInteger;
                                                     ProdutosSeriaisNotasProduto_Codigo.Value := NotasItensCodigo_Mercadoria.Value;
                                                     ProdutosSeriaisNotasNumero.Value         := DISeriaisSerial.Value;
                                                     ProdutosSeriaisNotasNota.Value           := NotasItensNota.Value;
                                                     ProdutosSeriaisNotasData.Value           := NotasItensData.Value;
                                                     ProdutosSeriaisNotasSaida_Entrada.Value  := 0;
                                                     ProdutosSeriaisNotasEmissor.Value        := 'P';
                                ProdutosSeriaisNotas.Post;
                                tRegistro.Close;
                             end;
                             
                             DISeriais.Next;
                       end;
                    end;
                 end else begin
                     // Em caso de nota fiscal denegada, restaura o saldo do estoque das adições.
                     Adicoes.SQL.Clear;
                     Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI = :pDI) AND (Codigo_Mercadoria = :pCodigo) AND (Adicao = :pAdicao) AND (Sequencia_SISCOMEX = :pSequencia)');
                     Adicoes.ParamByName('pDI').AsString         := PedidosItensDI.AsString;
                     Adicoes.ParamByName('pCodigo').AsInteger    := PedidosItensCodigo_Mercadoria.AsInteger;
                     Adicoes.ParamByName('pAdicao').AsInteger    := PedidosItensAdicao.AsInteger;
                     Adicoes.ParamByName('pSequencia').AsInteger := PedidosItensSequencia_SISCOMEX.AsInteger;
                     Adicoes.Open;

                     if Adicoes.RecordCount > 0 then begin
                        Produtos.Locate( 'Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive] );

                        Adicoes.Edit;
                                If TipoNotaMovimenta_Estoque.Value = True then begin
                                   If TipoNotaSaida_Entrada.Value = 0 then begin
                                      If ProdutosTipo_Conversao.Value <> 'M' then
                                         AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                                      else
                                         AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                                   End;
                                   If (TipoNotaSaida_Entrada.Value = 1) then begin
                                      If ProdutosTipo_Conversao.Value <> 'M' then
                                         AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                                      else
                                         AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                                   End;
                                End;

                                If AdicoesLancado_Entrada.Value < 0                       then AdicoesLancado_Entrada.Value := 0;
                                If AdicoesLancado_Entrada.Value > AdicoesQuantidade.Value then AdicoesLancado_Entrada.Value := AdicoesQuantidade.Value;
                                If AdicoesLancado_Saida.Value   < 0                       then AdicoesLancado_Saida.Value   := 0;
                                If AdicoesLancado_Saida.Value   > AdicoesQuantidade.Value then AdicoesLancado_Saida.Value   := AdicoesQuantidade.Value;
                        Adicoes.Post;
                     end;
                 end;

                 // Atualiza o valor de venda do cadastro de produtos com o valor de entrada caso esteja marcado no processo.
                 if (NotasSaida_Entrada.Value = 0) and (ProcessosDOCPreco_Venda.AsBoolean) then begin
                    Produtos.Edit;
                             ProdutosValor_Venda.Value := NotasItensValor_Unitario.Value;
                    Produtos.Post;
                 end;

                 PedidosItens.Next;
           End;
           
           // Todos os itens salvos.
           Pedidos.Edit;
                   PedidosOK.value := 5;
           Pedidos.Post;

           // Marcando os itens da nota como cancelados (Lotes).
           if mDenegada = true then begin
              try
                  NotasItensDetalhe.Close;
                  NotasItensDetalhe.SQL.Clear;
                  NotasItensDetalhe.SQL.Add('UPDATE NotasItensDetalhe SET Denegada = 1');
                  NotasItensDetalhe.SQL.Add(' WHERE (Nota = :pNota) AND (Data_Emissao = :pData)');
                  NotasItensDetalhe.ParamByName('pNota').AsInteger := NotasNumero.Value;
                  NotasItensDetalhe.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
                  NotasItensDetalhe.Execute;
                  NotasItensDetalhe.SQL.Clear;
                  NotasItensDetalhe.SQL.Add('SELECT * FROM NotasItensDetalhe WHERE (Nota_Emissao = :pNota) AND (Data_Emissao = :pData)');
                  NotasItensDetalhe.ParamByName('pNota').AsInteger := NotasNumero.Value;
                  NotasItensDetalhe.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
              except
                  cMensagens.Lines.Add('*** TENTATIVA DE MARCAR ITENS DO LOTE DA NF DENEGADA FALHOU...CONTACTE O SUPORTE TÉCNICO. ***' );
              end;
           end;

           // Salva a GNRE no banco de dados.
           if not NotasNFe_Denegada.AsBoolean then begin
              if PedidosDIFAL_Valor.Value > 0 then begin
                 GNRE.SQL.Clear;
                 GNRE.SQL.Add('SELECT * FROM GNRE WHERE Nota = '+NotasNumero.AsString);
                 GNRE.Open;

                 ICMS.SQL.Clear;
                 ICMS.SQL.Add('SELECT * FROM ICMS WHERE UF = :pUF');
                 ICMS.ParamByName('pUF').AsString := NotasDestinatario_Estado.AsString;
                 ICMS.Open;

                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM GNRE');
                 tRegistro.Open;

                 tProvisao.Connection := Dados.Banco_Empresas;
                 tProvisao.SQL.Clear;
                 tProvisao.SQL.Add('SELECT isnull(max(Numero), 0)+1 AS Numero FROM PagarReceber');
                 tProvisao.Open;
                 
                 PagarReceber.Connection := Dados.Banco_Empresas;
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData) ');
                 PagarReceber.ParamByName('pData').AsDate := NotasData_Emissao.Value;
                 PagarReceber.Open;

                 GNRE.Append;
                      GNRERegistro.Value                  := tRegistro.FieldByName('Registro').AsInteger;
                      GNREEmpresa.Value                   := EmpresasCodigo.AsInteger;
                      GNRENota.Value                      := NotasNumero.Value;
                      GNREChave.Value                     := NotasNFE_cNF.Value;
                      GNREData_Nota.Value                 := NotasData_Emissao.Value;
                      GNREUF_Favorecido.Value             := NotasDestinatario_Estado.Value;
                      GNREUF_FavorecidoCod.Value          := ICMSCodigo_GNRE.Value;
                      GNREDestinatario_CNPJ_CPF.Value     := NotasDestinatario_CNPJ_CPF.AsString;
                      GNREDestinatario_IE.Value           := NotasDestinatario_IE.AsString;
                      GNREDestinatario_RazaoSocial.Value  := NotasDestinatario_Nome.AsString;
                      GNREDestinatario_Municipio.Value    := NotasDestinatario_MunicipioNome.AsString;
                      GNREDestinatario_MunicipioCod.Value := Copy(NotasDestinatario_Municipio.AsString, 3,5);
                      GNRECodigo_Receita.Value            := ICMSGNRE_DIFAL.Value;
                      GNREValor.Value                     := PedidosDIFAL_ValorDest.Value;
                      GNREData_Vencimento.Value           := NotasData_Emissao.Value;
                      GNREFinanceiro_Numero.Value         := tProvisaoNumero.Value;
                 GNRE.Post;

                 // Contas a pagar GNRE.
                 if (Trim(ICMSGNRE_Classificacao.AsString) <> '') and (Trim(ICMSGNRE_Orgao.AsString) <> '') then begin
                    PagarReceber.Append;
                                 PagarReceberNumero.Value           := GNREFinanceiro_Numero.Value;
                                 PagarReceberTipo.Value             := 'P';
                                 PagarReceberClassificacao.Value    := ICMSGNRE_Classificacao.AsString;
                                 PagarReceberCentro_Custo.Value     := ICMSGNRE_CentroCusto.AsString;
                                 PagarReceberData_Documento.Value   := GNREData_Nota.Value;
                                 PagarReceberData_Vencimento.Value  := GNREData_Vencimento.Value;
                                 PagarReceberValor_Documento.Value  := GNREValor.Value;
                                 PagarReceberValor_Parcela.Value    := GNREValor.Value;
                                 PagarReceberMulta.Value            := 0;
                                 PagarReceberJuros.Value            := 0;
                                 PagarReceberDesconto.Value         := 0;
                                 PagarReceberValor_Total.Value      := GNREValor.Value;
                                 PagarReceberValor_Operacao.Value   := GNREValor.Value;
                                 PagarReceberOrgao.Value            := ICMSGNRE_Orgao.Value;
                                 PagarReceberDocumento.Value        := ICMSGNRE_TipoDocumento.Value;
                                 PagarReceberNumero_Documento.Value := GNRENota.AsString;
                                 PagarReceberProcesso.Value         := NotasProcesso.Value;
                                 PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                 PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                                 PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                                 PagarReceberFiscal.Value           := NotasNumero.AsString;
                                 PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                 PagarReceberTipo_Nota.Value        := 'SD';
                                 PagarReceberObservacao.Value       := 'Pagamento de GNRE de Nota Fiscal :'+PoeZero(9, GNRENota.AsInteger)+' de '+GNREData_Nota.AsString;
                                 PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                 PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                                 PagarReceberObservacao.Value       := iif(PedidosPedido_Representante.AsString <> '', concat('PEDIDO: '+PedidosPedido_Representante.AsString), '');
                    PagarReceber.Post;
                    tProvisao.Close;
                 end;
              end;
              // GNRE Salva.
              Pedidos.Edit;
                      PedidosOK.value := 6;
              Pedidos.Post;

              PedidosItens.First;
              While not PedidosItens.Eof do begin
                    Produtos.SQL.Clear;
                    Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo = :pCodigo)');
                    Produtos.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                    Produtos.Open;

                    Produtos.Edit;
                             If PedidosItensMovimenta_Estoque.AsBoolean = true then begin
                                If PedidosItensSaida_Entrada.Value = 0 then begin
                                   ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);

                                   // Reprocessa o valor do estoque minímo do produto por percentual caso esteja informado o percentual minímo no cadastro para as notas de Entrada.
                                   If ProdutosEstoque_MinimoPerc.AsFloat > 0 then begin
                                      ProdutosEstoque_Minimo.Value := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger), ProdutosEstoque_MinimoPerc.AsFloat);
                                   End;
                                end else begin
                                   ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value - (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                End;
                             End;
                    Produtos.Post;

                    // Bloqueia o processo após a autorização da nota fiscal.
                    If Trim(PedidosItensProcesso.AsString) <> '' then begin
                       If ProcessosDOC.Locate('Processo', Trim(PedidosItensProcesso.AsString), [loCaseInsensitive]) = true then begin
                          ProcessosDOC.Edit;
                                       ProcessosDOCBloqueado.Value := true;
                                       If NotasSaida_Entrada.AsInteger = 1 then begin
                                          If (TipoNotaFinalidade_Mercadoria.Value = 0) or (TipoNotaFinalidade_Mercadoria.Value = 3) then begin
                                              ProcessosDOCData_Encerramento.Value := NotasData_Emissao.Value;
                                          End;
                                       End;
                          ProcessosDOC.Post;
                       End;
                    End;

                    // Ajusta o estoque nas adições.
                    if not NotasNFe_Denegada.AsBoolean then begin
                       If PedidosItensMovimenta_Estoque.AsBoolean = True then begin
                          tAdicoes.SQL.Clear;
                          tAdicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI = :pDI) AND (Codigo_Mercadoria = :pCodigo) AND (Adicao = :pAdicao) AND (Sequencia_SISCOMEX = :pSequencia)');
                          tAdicoes.ParamByName('pDI').AsString         := PedidosItensDI.AsString;
                          tAdicoes.ParamByName('pCodigo').AsInteger    := PedidosItensCodigo_Mercadoria.AsInteger;
                          tAdicoes.ParamByName('pAdicao').AsInteger    := PedidosItensAdicao.AsInteger;
                          tAdicoes.ParamByName('pSequencia').AsInteger := PedidosItensSequencia_SISCOMEX.AsInteger;
                          tAdicoes.Open;

                          If NotasSaida_Entrada.Value = 0 then begin
                             If tAdicoes.RecordCount > 0 then begin
                                tAdicoes.Edit;
                                If TipoNotaFinalidade_Mercadoria.Value <> 4 then begin
                                   tAdicoesLancado_Saida.Value := tAdicoesLancado_Saida.AsFloat + (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat);
                                end else begin
                                   tAdicoesLancado_Saida.Value     := tAdicoesLancado_Saida.AsFloat     + (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat);
                                   tAdicoesLancado_Terceiros.Value := tAdicoesLancado_Terceiros.AsFloat - (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat);
                                End;
                                tAdicoes.Post;
                             End;
                          end else begin
                             If TipoNotaFinalidade_Mercadoria.Value = 4 then begin
                                If tAdicoes.RecordCount > 0 then begin
                                   tAdicoes.Edit;
                                            tAdicoesLancado_Terceiros.Value := tAdicoesLancado_Terceiros.AsFloat + (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat);
                                   tAdicoes.Post;
                                End;
                             End;
                          End;
                       End;
                    end;
                    PedidosItens.Next;
              end;
           end;

           // Estoque das adições ajustados.
           Pedidos.Edit;
                   PedidosOK.value := 7;
           Pedidos.Post;

           Adicoes.SQL.Clear;
           Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE DI IN(SELECT DISTINCT DI FROM PedidosItens WHERE(Pedido = :pPedido))');
           Adicoes.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           Adicoes.Open;

           // Salvando os rateios de FOB/FRETE/SEGURO... utilizados na nota fiscal.
           PedidosRateio.SQL.Clear;
           PedidosRateio.SQL.Add('SELECT * FROM PedidosRateio WHERE(Pedido = :pPedido)');
           PedidosRateio.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosRateio.Open;

           if PedidosRateio.RecordCount > 0 then begin
              NotasRateio.SQL.Clear;
              NotasRateio.SQL.Add('SELECT * FROM NotasRateio WHERE(Nota = :pNota) AND (Data = :pData)');
              NotasRateio.ParamByName('pNota').AsInteger := mNota;
              NotasRateio.ParamByName('pData').AsDate    := cDataEmissao.Date;
              NotasRateio.Open;

              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0) AS Registro FROM NotasRateio');
              tRegistro.Open;

              NotasRateio.Append;
                          NotasRateioRegistro.Value    := tRegistro.FieldByName('Registro').AsInteger + 1;
                          NotasRateioNota.Value        := NotasNumero.Value;
                          NotasRateioData.Value        := NotasData_Emissao.Value;
                          NotasRateioFOB_ME.Value      := PedidosRateio.FieldByName('FOB_ME').Value;
                          NotasRateioFOB_Real.Value    := PedidosRateio.FieldByName('FOB_Real').Value;
                          NotasRateioII.Value          := PedidosRateio.FieldByName('II').Value;
                          NotasRateioDumping.Value     := PedidosRateio.FieldByName('Dumping').Value;
                          NotasRateioFrete_Real.Value  := PedidosRateio.FieldByName('Frete_Real').Value;
                          NotasRateioFrete_ME.Value    := PedidosRateio.FieldByName('Frete_ME').Value;
                          NotasRateioSeguro_Real.Value := PedidosRateio.FieldByName('Seguro_Real').Value;
                          NotasRateioSeguro_ME.Value   := PedidosRateio.FieldByName('Seguro_ME').Value;
              NotasRateio.Post;

              PedidosRateio.SQL.Clear;
              PedidosRateio.SQL.Add('DELETE FROM PedidosRateio WHERE(Pedido = :pPedido)');
              PedidosRateio.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
              PedidosRateio.Execute;
              PedidosRateio.SQL.Clear;
              PedidosRateio.SQL.Add('SELECT * FROM PedidosRateio WHERE(Pedido = :pPedido)');
              PedidosRateio.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           end;

           // Rateios das notas salvos.
           Pedidos.Edit;
                   PedidosOK.value := 8;
           Pedidos.Post;

           // Salvando as despesas da tabela "PedidosDespesas" para "NotasDespesas".
           PedidosDespesas.SQL.Clear;
           PedidosDespesas.SQL.Add('SELECT * FROM PedidosDespesas WHERE(Pedido = :pPedido)');
           PedidosDespesas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosDespesas.Open;

           NotasDespesas.SQL.Clear;
           NotasDespesas.SQL.Add('SELECT * FROM NotasDespesas WHERE(Nota = :pNota) AND (Data_Emissao = :pData)');
           NotasDespesas.ParamByName('pNota').AsInteger := mNota;
           NotasDespesas.ParamByName('pData').AsDate    := cDataEmissao.Date;
           NotasDespesas.Open;

           PedidosDespesas.First;
           While not PedidosDespesas.Eof do Begin
                 NotasDespesas.Append;
                               NotasDespesasNota.Value          := mNota;
                               NotasDespesasData_Emissao.Value  := NotasData_Emissao.Value;
                               NotasDespesasClassificacao.Value := PedidosDespesas.FieldByName('Classificacao').AsString;
                               NotasDespesasProcesso.Value      := PedidosDespesas.FieldByName('Processo').AsString;
                               NotasDespesasDescricao.Value     := PedidosDespesas.FieldByName('Descricao').AsString;
                               NotasDespesasValor_Total.Value   := PedidosDespesas.FieldByName('Valor_Total').Value;
                               NotasDespesasValor_Nota.Value    := PedidosDespesas.FieldByName('Valor_Nota').Value;
                 NotasDespesas.Post;
                 PedidosDespesas.Next;
           End;
           // Despesas das notas salvos.
           Pedidos.Edit;
                   PedidosOK.value := 9;
           Pedidos.Post;

           PedidosDespesas.SQL.Clear;
           PedidosDespesas.SQL.Add('DELETE FROM PedidosDespesas WHERE(Pedido = :pPedido)');
           PedidosDespesas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosDespesas.Execute;

           PedidosDespesas.SQL.Clear;
           PedidosDespesas.SQL.Add('SELECT * FROM PedidosDespesas WHERE(Pedido = :pPedido)');
           PedidosDespesas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosDespesas.Open;

           // Salvando os detalhamentos dos itens do pedido para a nota.
           if not NotasNFe_Denegada.AsBoolean then begin
              PedidosItensDetalhe.SQL.Clear;
              PedidosItensDetalhe.SQL.Add('SELECT * FROM PedidosItensDetalhe WHERE(Pedido = :pPedido)');
              PedidosItensDetalhe.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
              PedidosItensDetalhe.Open;

              NotasItensDetalhe.SQL.Clear;
              NotasItensDetalhe.SQL.Add('SELECT * FROM NotasItensDetalhe WHERE(Nota = :pNota) AND (Data_Emissao = :pData)');
              NotasItensDetalhe.ParamByName('pNota').AsInteger := mNota;
              NotasItensDetalhe.ParamByName('pData').AsDate    := cDataEmissao.Date;
              NotasItensDetalhe.Open;

              PedidosItensDetalhe.First;
              While not PedidosItensDetalhe.Eof do Begin
                    tRegistro.SQL.Clear;
                    tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0) AS Registro FROM NotasItensDetalhe');
                    tRegistro.Open;
                    NotasItensDetalhe.Append;
                                      NotasItensDetalheRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger+1;
                                      NotasItensDetalheNota.Value              := NotasNumero.AsInteger;
                                      NotasItensDetalheData_Emissao.Value      := NotasData_Emissao.Value;
                                      NotasItensDetalheProduto_Codigo.Value    := PedidosItensDetalhe.FieldByName('Produto_Codigo').AsInteger;
                                      NotasItensDetalheDetalhe.Value           := PedidosItensDetalhe.FieldByName('Detalhe').AsInteger;
                                      NotasItensDetalheDetalhe_Descricao.Value := PedidosItensDetalhe.FieldByName('Detalhe_Descricao').AsString;
                                      NotasItensDetalheQuantidade.Value        := PedidosItensDetalhe.FieldByName('Quantidade').AsFloat;
                                      NotasItensDetalheSaida_Entrada.Value     := PedidosItensDetalhe.FieldByName('Saida_Entrada').AsInteger;
                                      NotasItensDetalheLote.Value              := PedidosItensDetalhe.FieldByName('Lote').AsString;
                                      NotasItensDetalheCancelada.Value         := false;
                                      NotasItensDetalheDenegada.Value          := false;
                    NotasItensDetalhe.Post;
                    PedidosItensDetalhe.Next;
              End;
              // Detalhamento dos itens salvos.
              Pedidos.Edit;
                      PedidosOK.value := 10;
              Pedidos.Post;

              PedidosItensDetalhe.SQL.Clear;
              PedidosItensDetalhe.SQL.Add('DELETE FROM PedidosItensDetalhe WHERE(Pedido = :pPedido)');
              PedidosItensDetalhe.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
              PedidosItensDetalhe.Execute;
              PedidosItensDetalhe.SQL.Clear;
              PedidosItensDetalhe.SQL.Add('SELECT * FROM PedidosItensDetalhe WHERE(Pedido = :pPedido)');
              PedidosItensDetalhe.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           end;

           // Salvando os navios dos itens do pedido para a nota.
           if not NotasNFe_Denegada.AsBoolean then begin
              if NotasItensMovimenta_Estoque.AsBoolean then begin
                 with tTmp do begin
                      sql.Clear;
                      sql.Add('delete from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData');
                      ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
                      ParamByName('pData').AsDate    := NotasData_Emissao.Value;
                      execute;
                 end;
                 with NotasItensNavios do begin
                      sql.Clear;
                      sql.Add('select * from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData');
                      ParamByName('pNota').AsInteger := mNota;
                      ParamByName('pData').AsDate    := cDataEmissao.Date;
                      open;
                 end;
                 //mNavios := '';
                 with PedidosItensNavios do begin
                      sql.Clear;
                      sql.Add('select * from PedidosItensNavios where Pedido = :pPedido');
                      ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                      open;
                      first;
                      if recordcount > 0 then begin
                         while not eof do Begin
                               with tRegistro do begin
                                    sql.Clear;
                                    sql.Add('select isnull(max(Registro), 0)+1 as Registro from NotasItensNavios');
                                    open;
                               end;
                               NotasItensNavios.Append;
                                                NotasItensNaviosRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger;
                                                NotasItensNaviosNota.Value              := NotasNumero.AsInteger;
                                                NotasItensNaviosData_Emissao.Value      := NotasData_Emissao.Value;
                                                NotasItensNaviosSaida_Entrada.Value     := FieldByName('Saida_Entrada').AsInteger;
                                                NotasItensNaviosCodigo_Mercadoria.Value := FieldByName('Codigo_Mercadoria').AsInteger;
                                                NotasItensNaviosItem.Value              := FieldByName('Item').AsInteger;
                                                NotasItensNaviosNavio.Value             := FieldByName('Navio').AsInteger;
                                                NotasItensNaviosQuantidade.Value        := FieldByName('Quantidade').AsFloat;
                                                NotasItensNaviosEmissor.Value           := 'P';
                                                NotasItensNaviosDI.Value                := fieldByName('DI').asstring;
                                                NotasItensNaviosArmazem.Value           := NotasArmazem.Value;
                               NotasItensNavios.Post;
                               next;
                         end;

                         if trim(NotasNfe_Protocolo.AsString) <> '' then begin
                            with tTmp do begin
                                 sql.clear;
                                 sql.add('delete from PedidosItensNavios where Pedido = :pPed');
                                 parambyname('pPed').value := PedidosNumero.AsInteger;
                                 execute;
                            end;
                         end;
                      end;
                 end;
              end;
              // Detalhamento dos itens salvos.
              Pedidos.Edit;
                      PedidosOK.value := 11;
              Pedidos.Post;

              with PedidosItensDetalhe do begin
                   sql.clear;
                   sql.add('delete from PedidosItensDetalhe where Pedido = :pPedido');
                   parambyName('pPedido').AsInteger := PedidosNumero.AsInteger;
                   execute;
                   sql.clear;
                   sql.add('select * from PedidosItensDetalhe where Pedido = :pPedido');
                   parambyName('pPedido').AsInteger := PedidosNumero.AsInteger;
              end;
           end;

           // Pegando o código do cliente na tabela de destino pelo.
           mCliFin := PedidosCliente_Codigo.Value;
           if trim(Configuracao.fieldbyname('Empresa_Financeiro').AsString) <> '' then begin
              with tCli do begin
                   sql.Clear;
                   if PedidosDestinatario_Juridica.AsBoolean then begin
                      sql.Add('select Codigo, Nome from Clientes where CNPJ = :pCliente');
                   end else begin
                      sql.Add('select Codigo from Clientes where CPF  = :pCliente');
                   end;
                   ParamByName('pCliente').value := PedidosDestinatario_CNPJ_CPF.Value;
                   open;
                   mCliFin := fieldbyname('Codigo').asinteger;
              end;
           end;
           
           // Copiando as duplicatas da tabela de pedido para a de duplicatas.
           If (PedidosSaida_Entrada.Value = 1) and (not PedidosComplementar.AsBoolean) and (mTipoEnvio <> 'ENVIO EPEC') then begin
              Fatura.SQL.Clear;
              Fatura.SQL.Add('SELECT * FROM Fatura WHERE(Fatura = :pFatura) AND (Data_Emissao = :pDataEmissao)');
              Fatura.ParamByName('pFatura').AsInteger   := NotasNumero.Value;
              Fatura.ParamByName('pDataEmissao').AsDate := NotasData_Emissao.Value;
              Fatura.Open;

              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE(Fatura = :pFatura) AND (Data_Emissao = :pDataEmissao) ORDER BY Fatura, Duplicata');
              Duplicatas.ParamByName('pFatura').AsInteger   := NotasNumero.Value;
              Duplicatas.ParamByName('pDataEmissao').AsDate := NotasData_Emissao.Value;
              Duplicatas.Open;
              
              PedidosFatura.SQL.Clear;
              PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE(Pedido = :pPedido) ORDER BY Fatura');
              PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
              PedidosFatura.Open;

              PedidosDuplicata.SQL.Clear;
              PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE(Fatura = :pFatura) ORDER BY CAST(Duplicata AS int)');
              PedidosDuplicata.ParamByName('pFatura').AsInteger := PedidosNumero.Value;
              PedidosDuplicata.Open;
              PedidosDuplicata.First;
              {
              with PedidosFatura do begin
                   sql.Clear;
                   sql.Add('select * from PedidosFatura where Pedido = :pPedido and Data_Emissao = :pData and Cliente = :pCliente order by Fatura');
                   parambyname('pPedido').AsInteger  := PedidosNumero.Value;
                   parambyname('pCliente').AsInteger := PedidosCliente_Codigo.Value;
                   parambyname('pData').value        := PedidosData_Emissao.Value;
                   open;
              end;
              with PedidosDuplicata do begin 
                   sql.clear;
                   sql.add('select * from PedidosDuplicata where Fatura = :pFatura and Data_Emissao = :pData order by cast(Duplicata as int)');
                   parambyname('pFatura').AsInteger := PedidosNumero.Value;
                   parambyname('pData').value       := PedidosData_Emissao.Value;
                   open;
                   first;
              end;
              }
              if PedidosDuplicata.RecordCount > 0 then begin
                 // Cria o registro de cabeçalho das duplicatas "FATURA".
                 Fatura.Append;
                        FaturaFatura.Value        := NotasNumero.AsString;
                        FaturaData_Emissao.Value  := NotasData_Emissao.Value;
                        FaturaNota.Value          := NotasNumero.Value;
                        FaturaData_Nota.Value     := NotasData_Emissao.Value;
                        FaturaCliente.Value       := mCliFin;
                        FaturaForma_Pgto.Value    := NotasModalidade_Pgto.Value;
                        FaturaValor_Total.Value   := NotasValor_TotalNota.Value;
                        FaturaOrigem_Pedido.Value := PedidosFaturaOrigem_Pedido.Value;
                        FaturaBanco.Value         := PedidosFaturaBanco.Value;
                        FaturaProcesso.Value      := NotasProcesso.AsString;
                        FaturaCentro_Custo.Value  := PedidosFaturaCentro_Custo.Value;
                 Fatura.Post;

                 with ClassificacaoFinanceira do begin 
                      SQL.Clear;
                      SQL.Add('select * from ClassificacaoFinanceira where Codigo = :pClassificacao');
                      ParamByName('pClassificacao').AsString := TipoNotaClassificacao_Saida.AsString;
                      Open;
                 end;

                 While not PedidosDuplicata.Eof do begin
                       Duplicatas.Append;
                                  DuplicatasDuplicata.Value := PedidosDuplicataDuplicata.Value;
                                  DuplicatasFatura.Value    := PoeZero(9, NotasNumero.Value);
                                  If ModalidadesPgtoNumero_Parcelas.Value > 1 then begin
                                     DuplicatasVencimento.Value := 'A PRAZO';
                                  end else begin
                                     DuplicatasVencimento.Value := 'A VISTA';
                                  End;
                                  DuplicatasData_Vencimento.Value   := PedidosDuplicataData_Vencimento.Value;
                                  DuplicatasValor.Value             := PedidosDuplicataValor.Value;
                                  DuplicatasAliquota_Desconto.Value := 0;
                                  DuplicatasDesconto.Value          := 0;
                                  DuplicatasValor_Liquido.Value     := PedidosDuplicataValor_Liquido.Value;
                                  DuplicatasData_Emissao.Value      := PedidosDuplicataData_Emissao.Value;
                                  DuplicatasClassificacao.Value     := TipoNotaClassificacao_Saida.AsString;
                                  DuplicatasNumero.Value            := PedidosDuplicataNumero.Value;
                       Duplicatas.Post;

                       if not NotasNFe_Denegada.AsBoolean then begin
                          // Gerando o lançamento no financeiro para cada duplicata.
                          if TipoNotaGerar_Financeiro.asboolean and (Trim(TipoNotaClassificacao_Saida.AsString) <> '')  then begin
                             // Contas a Receber (Recebimento de clientes).
                             tProvisao.Connection    := Banco_Tmp;
                             PagarReceber.Connection := Banco_Tmp;
                             with tProvisao do begin
                                  sql.Clear;
                                  sql.Add('select isnull(max(Numero), 0)+1 as Numero from PagarReceber');
                                  open;
                             end;
                             with PagarReceber do begin
                                  sql.Clear;
                                  sql.Add('select * from PagarReceber where Data_Documento = :pdata');
                                  ParamByName('pData').AsDate := NotasData_Emissao.Value;
                                  open;
                             end;
                             PagarReceber.Append;
                                          PagarReceberNumero.Value              := tProvisaoNumero.Value;
                                          PagarReceberTipo.Value                := 'R';
                                          PagarReceberClassificacao.Value       := TipoNotaClassificacao_Saida.AsString;
                                          PagarReceberCentro_Custo.Value        := PedidosFaturaCentro_Custo.Value;
                                          PagarReceberData_Documento.Value      := NotasData_Emissao.Value;
                                          PagarReceberData_Vencimento.Value     := PedidosDuplicataData_Vencimento.Value;
                                          PagarReceberValor_Documento.Value     := RoundTo(NotasValor_TotalNota.Value, -2);
                                          PagarReceberValor_Parcela.Value       := RoundTo(PedidosDuplicataValor.Value, -2);
                                          PagarReceberMulta.Value               := 0;
                                          PagarReceberJuros.Value               := 0;
                                          PagarReceberDesconto.Value            := 0;
                                          PagarReceberValor_Total.Value         := RoundTo(PedidosDuplicataValor.Value, -2);
                                          PagarReceberValor_Operacao.Value      := RoundTo(PedidosDuplicataValor.Value, -2);
                                          PagarReceberCliente.Value             := mCliFin;
                                          PagarReceberDocumento.Value           := TipoNotaTipo_Documento.Value;
                                          PagarReceberNumero_Documento.Value    := iif(ConfiguracaoSequencial_Duplicata.AsInteger = 0, FormatMaskText('999999999-A;0; ',DuplicatasDuplicata.Value), FormatMaskText('999999999-A;0; ',DuplicatasNumero.Value));
                                          PagarReceberProcesso.Value            := NotasProcesso.Value;
                                          PagarReceberCustoConta.Value          := ClassificacaoFinanceiraCusto.Value;
                                          PagarReceberCusto_Seletivo.Value      := ClassificacaoFinanceiraCusto_Seletivo.Value;
                                          PagarReceberCusto_Entrada.Value       := ClassificacaoFinanceiraCusto_Entrada.Value;
                                          PagarReceberFiscal.Value              := NotasNumero.AsString;
                                          PagarReceberNivel.Value               := ClassificacaoFinanceiraNivel.Value;
                                          PagarReceberBanco.Value               := PedidosFaturaBanco.AsInteger;
                                          PagarReceberTipo_Nota.Value           := iif(NotasSaida_Entrada.Value = 0, 'ET', 'SD');
                                          PagarReceberEmpresa.Value             := Menu_Principal.mEmpresa;
                                          PagarReceberFilial.Value              := EmpresasNumero_Filial.AsInteger;
                                          PagarReceberAdiantamento_Numero.Value := iif(PedidosDuplicataAdiantamento.asboolean, mCliFin, 0);
                                          PagarReceberObservacao.Value          := iif(PedidosPedido_Representante.AsString <> '', concat('PEDIDO: '+PedidosPedido_Representante.AsString), '');
                                          PagarReceberModalidade_Pgto.Value     := PedidosModalidade_Pgto.Value;
                             PagarReceber.Post;
                             tProvisao.Close;

                             // Contas a Pagar (Pagamento de comissão a Representantes).
                             if (NotasRepresentante.Value > 0) and (NotasRepresentante_Comissao.Value > 0) and (trim(ConfiguracaoClassificacao_Pagamento.AsString) <> '') then begin
                                with ClassificacaoFinanceira do begin
                                     sql.Clear;
                                     sql.add('select * from ClassificacaoFinanceira where (Codigo = :pClassificacao)');
                                     parambyname('pClassificacao').AsString := ConfiguracaoClassificacao_Pagamento.AsString;
                                     open;
                                end;

                                tProvisao.Connection    := Banco_Tmp;
                                PagarReceber.Connection := Banco_Tmp;
                                with tProvisao do begin
                                     sql.Clear;
                                     sql.Add('select max(Numero) as Numero from PagarReceber');
                                     open;
                                end;

                                PagarReceber.Append;
                                             PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                                             PagarReceberTipo.Value             := 'P';
                                             PagarReceberClassificacao.Value    := ConfiguracaoClassificacao_Pagamento.AsString;
                                             PagarReceberCentro_Custo.Value     := ConfiguracaoCentro_CustoPagamento.Value;
                                             PagarReceberData_Documento.Value   := NotasData_Emissao.Value;
                                             PagarReceberData_Vencimento.Value  := PedidosDuplicataData_Vencimento.Value;
                                             If ConfiguracaoCalculo_Comissao.AsString = 'PRODUTO' then begin
                                                PagarReceberValor_Documento.Value := RoundTo(Percentual(PedidosDuplicataValor_Produto.Value, NotasRepresentante_Comissao.AsFloat), -2);
                                             End;
                                             If ConfiguracaoCalculo_Comissao.AsString = 'PRODUTO+IPI' then begin
                                                PagarReceberValor_Documento.Value := RoundTo(Percentual(PedidosDuplicataValor_Produto.Value+PedidosDuplicataValor_IPI.Value, NotasRepresentante_Comissao.AsFloat), -2);
                                             End;
                                             If ConfiguracaoCalculo_Comissao.AsString = 'TOTAL NOTA' then begin
                                                PagarReceberValor_Documento.Value := RoundTo(Percentual(PedidosDuplicataValor_Liquido.Value, NotasRepresentante_Comissao.AsFloat), -2);
                                             End;
                                             PagarReceberValor_Parcela.Value    := RoundTo(PagarReceberValor_Documento.Value, -2);
                                             PagarReceberMulta.Value            := 0;
                                             PagarReceberJuros.Value            := 0;
                                             PagarReceberDesconto.Value         := 0;
                                             PagarReceberValor_Total.Value      := RoundTo(PagarReceberValor_Documento.Value, -2);
                                             PagarReceberValor_Operacao.Value   := RoundTo(PagarReceberValor_Documento.Value, -2);
                                             PagarReceberFornecedor.Value       := PedidosRepresentante.Value;
                                             PagarReceberDocumento.Value        := ConfiguracaoTipo_DocumentoPagamento.Value;
                                             PagarReceberNumero_Documento.Value := dmFiscal.PedidosDuplicataDuplicata.AsString;
                                             PagarReceberProcesso.Value         := NotasProcesso.Value;
                                             PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                             PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                                             PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                                             PagarReceberFiscal.Value           := NotasNumero.AsString;
                                             PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                             PagarReceberTipo_Nota.Value        := iif(NotasSaida_Entrada.Value = 0, 'ET', 'SD');
                                             PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                             PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                                             PagarReceberObservacao.Value       := iif(PedidosPedido_Representante.AsString <> '', concat('PEDIDO: '+PedidosPedido_Representante.AsString), '');
                                             PagarReceberModalidade_Pgto.Value  := PedidosModalidade_Pgto.Value;
                                PagarReceber.Post;
                                tProvisao.Close;
                             End;

                             // Contas a Pagar (Pagamento de comissão - Outros (Gerencial).
                             If (NotasRepresentante.Value > 0) and (NotasRepresentante_ComissaoGer.Value > 0) and (ConfiguracaoClassificacao_PagamentoOutros.AsString <> '') then begin
                                ClassificacaoFinanceira.SQL.Clear;
                                ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE (Codigo = :pClassificacao)');
                                ClassificacaoFinanceira.ParamByName('pClassificacao').AsString := ConfiguracaoClassificacao_PagamentoOutros.AsString;
                                ClassificacaoFinanceira.Open;

                                tProvisao.Connection    := Banco_Tmp;
                                PagarReceber.Connection := Banco_Tmp;
                                
                                tProvisao.SQL.Clear;
                                tProvisao.SQL.Add('SELECT isnull(MAX(Numero), 0)+1 AS Numero FROM PagarReceber');
                                tProvisao.Open;

                                PagarReceber.Append;
                                             PagarReceberNumero.Value          := tProvisaoNumero.Value;
                                             PagarReceberTipo.Value            := 'P';
                                             PagarReceberClassificacao.Value   := ConfiguracaoClassificacao_PagamentoOutros.AsString;
                                             PagarReceberCentro_Custo.Value    := ConfiguracaoCentro_CustoPagamentoOutros.Value;
                                             PagarReceberData_Documento.Value  := NotasData_Emissao.Value;
                                             PagarReceberData_Vencimento.Value := PedidosDuplicataData_Vencimento.Value;

                                             If ConfiguracaoCalculo_Comissao.AsString = 'PRODUTO' then begin
                                                PagarReceberValor_Documento.Value := RoundTo(Percentual(PedidosDuplicataValor_Produto.Value, NotasRepresentante_ComissaoGer.AsFloat), -2);
                                             End;
                                             If ConfiguracaoCalculo_Comissao.AsString = 'PRODUTO+IPI' then begin
                                                PagarReceberValor_Documento.Value := RoundTo(Percentual(PedidosDuplicataValor_Produto.Value+PedidosDuplicataValor_IPI.Value, NotasRepresentante_ComissaoGer.AsFloat), -2);
                                             End;
                                             If ConfiguracaoCalculo_Comissao.AsString = 'TOTAL NOTA' then begin
                                                PagarReceberValor_Documento.Value := RoundTo(Percentual(PedidosDuplicataValor_Liquido.Value, NotasRepresentante_ComissaoGer.AsFloat), -2);
                                             End;
                                             PagarReceberValor_Parcela.Value    := RoundTo(PagarReceberValor_Documento.Value, -2);
                                             PagarReceberMulta.Value            := 0;
                                             PagarReceberJuros.Value            := 0;
                                             PagarReceberDesconto.Value         := 0;
                                             PagarReceberValor_Total.Value      := RoundTo(PagarReceberValor_Documento.Value, -2);
                                             PagarReceberValor_Operacao.Value   := RoundTo(PagarReceberValor_Documento.Value, -2);
                                             PagarReceberFornecedor.Value       := PedidosRepresentante.Value;
                                             PagarReceberDocumento.Value        := ConfiguracaoTipo_DocumentoPagamentoOutros.Value;
                                             PagarReceberNumero_Documento.Value := PedidosDuplicataDuplicata.AsString;
                                             PagarReceberProcesso.Value         := NotasProcesso.Value;
                                             PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                             PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                                             PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                                             PagarReceberFiscal.Value           := NotasNumero.AsString;
                                             PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                             PagarReceberTipo_Nota.Value        := iif(NotasSaida_Entrada.Value = 0, 'ET', 'SD');
                                             PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                             PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                                             PagarReceberObservacao.Value       := iif(PedidosPedido_Representante.AsString <> '', concat('PEDIDO: '+PedidosPedido_Representante.AsString), '');
                                             PagarReceberModalidade_Pgto.Value  := PedidosModalidade_Pgto.Value;
                                PagarReceber.Post;
                                tProvisao.Close;
                             End;

                             // Contas a Pagar (Pagamento de comissão a Atendentes de Televendas).
                             If (NotasAtendente.Value > 0) and (NotasAtendente_Comissao.Value > 0) and (ConfiguracaoClassificacao_PagamentoTelevendas.AsString <> '') then begin
                                ClassificacaoFinanceira.SQL.Clear;
                                ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE (Codigo = :pClassificacao)');
                                ClassificacaoFinanceira.ParamByName('pClassificacao').AsString := ConfiguracaoClassificacao_PagamentoTelevendas.AsString;
                                ClassificacaoFinanceira.Open;

                                tProvisao.Connection    := Banco_Tmp;
                                PagarReceber.Connection := Banco_Tmp;

                                tProvisao.SQL.Clear;
                                tProvisao.SQL.Add('SELECT isnull(MAX(Numero), 0)+1 AS Numero FROM PagarReceber');
                                tProvisao.Open;

                                PagarReceber.Append;
                                             PagarReceberNumero.Value          := tProvisaoNumero.Value;
                                             PagarReceberTipo.Value            := 'P';
                                             PagarReceberClassificacao.Value   := ConfiguracaoClassificacao_PagamentoTelevendas.AsString;
                                             PagarReceberCentro_Custo.Value    := ConfiguracaoCentro_CustoPagamentoTelevendas.Value;
                                             PagarReceberData_Documento.Value  := NotasData_Emissao.Value;
                                             PagarReceberData_Vencimento.Value := PedidosDuplicataData_Vencimento.Value;

                                             If ConfiguracaoCalculo_Comissao.AsString = 'PRODUTO' then begin
                                                PagarReceberValor_Documento.Value := RoundTo(Percentual(PedidosDuplicataValor_Produto.Value, NotasAtendente_Comissao.AsFloat), -2);
                                             End;
                                             If ConfiguracaoCalculo_Comissao.AsString = 'PRODUTO+IPI' then begin
                                                PagarReceberValor_Documento.Value := RoundTo(Percentual(PedidosDuplicataValor_Produto.Value+PedidosDuplicataValor_IPI.Value, NotasAtendente_Comissao.AsFloat), -2);
                                             End;
                                             If ConfiguracaoCalculo_Comissao.AsString = 'TOTAL NOTA' then begin
                                                PagarReceberValor_Documento.Value := RoundTo(Percentual(PedidosDuplicataValor_Liquido.Value, NotasAtendente_Comissao.AsFloat), -2);
                                             End;
                                             PagarReceberValor_Parcela.Value    := RoundTo(PagarReceberValor_Documento.Value, -2);
                                             PagarReceberMulta.Value            := 0;
                                             PagarReceberJuros.Value            := 0;
                                             PagarReceberDesconto.Value         := 0;
                                             PagarReceberValor_Total.Value      := RoundTo(PagarReceberValor_Documento.Value, -2);
                                             PagarReceberValor_Operacao.Value   := RoundTo(PagarReceberValor_Documento.Value, -2);
                                             PagarReceberFornecedor.Value       := PedidosAtendente.Value;
                                             PagarReceberDocumento.Value        := ConfiguracaoTipo_DocumentoPagamentoTelevendas.Value;
                                             PagarReceberNumero_Documento.Value := dmFiscal.PedidosDuplicataDuplicata.AsString;
                                             PagarReceberProcesso.Value         := NotasProcesso.Value;
                                             PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                             PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                                             PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                                             PagarReceberFiscal.Value           := NotasNumero.AsString;
                                             PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                             PagarReceberTipo_Nota.Value        := iif(NotasSaida_Entrada.Value = 0, 'ET', 'SD');
                                             PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                             PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                                             PagarReceberObservacao.Value       := iif(PedidosPedido_Representante.AsString <> '', concat('PEDIDO: '+PedidosPedido_Representante.AsString), '');
                                             PagarReceberModalidade_Pgto.Value  := PedidosModalidade_Pgto.Value;
                                PagarReceber.Post;
                                tProvisao.Close;
                             End;
                          End;
                       end;
                       PedidosDuplicata.Next;
                 End;
              end else begin
                 if not NotasNFe_Denegada.AsBoolean then begin
                    If TipoNotaGerar_Financeiro.AsBoolean then begin
                       // Cria o registro de cabeçalho das duplicatas "FATURA".
                       Fatura.Append;
                              FaturaFatura.Value        := NotasNumero.AsString;
                              FaturaData_Emissao.Value  := NotasData_Emissao.Value;
                              FaturaNota.Value          := NotasNumero.Value;
                              FaturaData_Nota.Value     := NotasData_Emissao.Value;
                              FaturaCliente.Value       := mCliFin;
                              FaturaForma_Pgto.Value    := NotasModalidade_Pgto.Value;
                              FaturaValor_Total.Value   := NotasValor_TotalNota.Value;
                              FaturaOrigem_Pedido.Value := false;
                              FaturaBanco.Value         := PedidosFaturaBanco.Value;
                              FaturaProcesso.Value      := NotasProcesso.AsString;
                              FaturaCentro_Custo.Value  := PedidosFaturaCentro_Custo.Value;
                       Fatura.Post;

                       If not ConfiguracaoGerar_DuplImpostos.AsBoolean then begin
                          mPercentual := 0;
                          if Trim(PedidosProcesso.AsString) <> '' then begin
                             ProcessosDOC.Locate('Processo', NotasProcesso.AsString, [loCaseInsensitive]);
                             CondicaoCambial.SQL.Clear;
                             CondicaoCambial.SQL.Add('SELECT * FROM CondicaoCambial WHERE(Codigo = :pCodigo)');
                             CondicaoCambial.ParamByName('pCodigo').AsInteger := ProcessosDOCCondicao_Cambio.AsInteger;
                             CondicaoCambial.Open;
                             If CondicaoCambial.RecordCount > 0 then
                                mPercentual := CondicaoCambialPercentual1.AsFloat+CondicaoCambialPercentual2.AsFloat+CondicaoCambialPercentual3.AsFloat;
                          end;

                          // Gerando o lancamento no financeiro para o total da nota.
                          If mPercentual = 0 then begin
                             If Trim(TipoNotaClassificacao_Saida.AsString) <> '' then begin
                                ModalidadesPgto.SQL.Clear;
                                ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento WHERE(Codigo = :pCodigo)');
                                ModalidadesPgto.ParamByName('pCodigo').AsInteger := TipoNotaModalidade_Pagamento.AsInteger;
                                ModalidadesPgto.Open;

                                mParcelas := 1;
                                If TipoNotaModalidade_Pagamento.AsInteger > 0 then mParcelas := ModalidadesPgtoNumero_Parcelas.AsInteger;

                                tProvisao.Connection    := Banco_Tmp;
                                PagarReceber.Connection := Banco_Tmp;
                                
                                tProvisao.SQL.Clear;
                                tProvisao.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');

                                PagarReceber.SQL.Clear;
                                PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData) ');
                                PagarReceber.ParamByName('pData').AsDate := NotasData_Emissao.Value;
                                PagarReceber.Open;

                                mDataDupl := NotasData_Emissao.Value + ModalidadesPgtoPrazo_Primeira.AsInteger;

                                For i := 1 to mParcelas do begin
                                    // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
                                    If ModalidadesPgtoPrazo_Dia.AsInteger <= 0 then begin
                                       If (ConfiguracaoDia_Util.Value <> 'N') then begin
                                          If (DayOfWeek(mDataDupl) = 1) then begin
                                             If (ConfiguracaoDia_Util.Value = '-') then
                                                mDataDupl := mDataDupl -2
                                             else
                                                mDataDupl := mDataDupl +1;
                                          End;
                                          If (DayOfWeek(mDataDupl) = 7) then begin
                                             If (ConfiguracaoDia_Util.Value = '-') then
                                                mDataDupl := mDataDupl -1
                                             else
                                                mDataDupl := mDataDupl +2;
                                          End;
                                       End;
                                    end else begin
                                       mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/'+InttoStr(MonthOf(mDataDupl))+'/'+InttoStr(YearOf(mDataDupl)))));
                                       If mUltimoDia > ModalidadesPgtoPrazo_Dia.AsInteger then begin
                                          mDataDupl := StrtoDate(InttoStr(ModalidadesPgtoPrazo_Dia.AsInteger)+'/'+InttoStr(MonthOf(mDataDupl))+'/'+InttoStr(YearOf(mDataDupl)));
                                       end else begin
                                          mDataDupl := StrtoDate(InttoStr(mUltimoDia)+'/'+InttoStr(MonthOf(mDataDupl))+'/'+InttoStr(YearOf(mDataDupl)));
                                       End;
                                    End;

                                    // Criando as duplicatas na tabela de duplicatas.
                                    Duplicatas.Append;
                                               DuplicatasDuplicata.Value       := FaturaFatura.AsString;
                                               DuplicatasFatura.Value          := FaturaFatura.Value;
                                               DuplicatasData_Vencimento.Value := mDataDupl;
                                               DuplicatasVencimento.Value      := iif(ModalidadesPgtoNumero_Parcelas.Value > 1, 'A PRAZO', 'A VISTA');
                                               DuplicatasValor.Value           := (NotasValor_TotalNota.Value / mParcelas);
                                               DuplicatasDesconto.Value        := 0;
                                               DuplicatasValor_Liquido.Value   := DuplicatasValor.Value;
                                               DuplicatasParcela.Value         := InttoStr(i)+'/'+InttoStr(mParcelas);
                                               DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                                               DuplicatasNumero.Value          := PoeZero(9,FaturaFatura.AsInteger)+Chr(64+i);
                                    Duplicatas.Post;

                                    tProvisao.Open;
                                    PagarReceber.Append;
                                                 PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                                                 PagarReceberTipo.Value             := 'R';
                                                 PagarReceberClassificacao.Value    := TipoNotaClassificacao_Saida.AsString;
                                                 PagarReceberCentro_Custo.Value     := TipoNotaCentro_Custo.Value;
                                                 PagarReceberData_Documento.Value   := NotasData_Emissao.Value;
                                                 PagarReceberData_Vencimento.Value  := mDataDupl;
                                                 PagarReceberValor_Documento.Value  := RoundTo(NotasValor_TotalNota.Value, -2);
                                                 PagarReceberValor_Parcela.Value    := RoundTo((NotasValor_TotalNota.Value / mParcelas), -2);
                                                 PagarReceberMulta.Value            := 0;
                                                 PagarReceberJuros.Value            := 0;
                                                 PagarReceberDesconto.Value         := 0;
                                                 PagarReceberValor_Total.Value      := RoundTo(PagarReceberValor_Parcela.Value, -2);
                                                 PagarReceberValor_Operacao.Value   := RoundTo(PagarReceberValor_Parcela.Value, -2);
                                                 PagarReceberCliente.Value          := mCliFin;
                                                 PagarReceberDocumento.Value        := TipoNotaTipo_Documento.Value;
                                                 PagarReceberNumero_Documento.Value := NotasNumero.AsString;
                                                 PagarReceberProcesso.Value         := NotasProcesso.Value;
                                                 PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                                 PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                                                 PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                                                 PagarReceberFiscal.Value           := NotasNumero.AsString;
                                                 PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                                 PagarReceberTipo_Nota.Value        := iif(NotasSaida_Entrada.Value = 0, 'ET', 'SD');
                                                 PagarReceberParcela.Value          := InttoStr(i)+'/'+InttoStr(mParcelas);
                                                 PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                                 PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                                                 PagarReceberObservacao.Value       := iif(PedidosPedido_Representante.AsString <> '', concat('PEDIDO: '+PedidosPedido_Representante.AsString), '');
                                                 PagarReceberModalidade_Pgto.Value  := PedidosModalidade_Pgto.Value;
                                    PagarReceber.Post;
                                    tProvisao.Close;
                                    mDataDupl := mDataDupl + ModalidadesPgtoPrazo_Demais.AsInteger;
                                End;
                             End;
                          end else begin
                             // Duplicatas de Cambio + Diferença.
                             tProvisao.Connection    := Banco_Tmp;
                             PagarReceber.Connection := Banco_Tmp;
                             
                             PagarReceber.SQL.Clear;
                             PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Documento = :pData) ');
                             PagarReceber.ParamByName('pData').AsDate := NotasData_Emissao.Value;
                             PagarReceber.Open;

                             mTotalDuplicatas := 0;
                             mLetra           := 65;

                             If (CondicaoCambialPercentual1.AsFloat > 0) and (Trim(CondicaoCambialClassificacao1.AsString) <> '') then GeraDuplicatas( 1, false, CondicaoCambialVencimento1.AsInteger, CondicaoCambialClassificacao1.AsString,CondicaoCambialPercentual1.AsFloat);
                             If (CondicaoCambialPercentual2.AsFloat > 0) and (Trim(CondicaoCambialClassificacao2.AsString) <> '') then GeraDuplicatas( 1, false, CondicaoCambialVencimento2.AsInteger, CondicaoCambialClassificacao2.AsString,CondicaoCambialPercentual2.AsFloat);
                             If (CondicaoCambialPercentual3.AsFloat > 0) and (Trim(CondicaoCambialClassificacao3.AsString) <> '') then GeraDuplicatas( 1, false, CondicaoCambialVencimento3.AsInteger, CondicaoCambialClassificacao3.AsString,CondicaoCambialPercentual3.AsFloat);
                             If Trim(CondicaoCambialClassificacao4.AsString) <> '' then GeraDuplicatas(10, false, CondicaoCambialVencimento4.AsInteger, CondicaoCambialClassificacao4.AsString,0);
                          End;
                       End;

                       // Gerando as duplicatas e os lançamentos financeiros dos impostos.
                       If ConfiguracaoGerar_DuplImpostos.AsBoolean then begin
                          tProvisao.Connection    := Banco_Tmp;
                          PagarReceber.Connection := Banco_Tmp;
                          PagarReceber.SQL.Clear;
                          PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData) ');
                          PagarReceber.ParamByName('pData').AsDate := NotasData_Emissao.Value;
                          PagarReceber.Open;

                          mTotalDuplicatas := 0;
                          mLetra := 65;
                          If (ConfiguracaoDuplicata01.Value <> 0) and (Trim(ConfiguracaoDuplicata01_Class.AsString) <> '') then GeraDuplicatas(ConfiguracaoDuplicata01.Value, ConfiguracaoDuplicata01_Sub.Value, ConfiguracaoDuplicata01_Dias.Value, ConfiguracaoDuplicata01_Class.Value, 0);
                          If (ConfiguracaoDuplicata02.Value <> 0) and (Trim(ConfiguracaoDuplicata02_Class.AsString) <> '') then GeraDuplicatas(ConfiguracaoDuplicata02.Value, ConfiguracaoDuplicata02_Sub.Value, ConfiguracaoDuplicata02_Dias.Value, ConfiguracaoDuplicata02_Class.Value, 0);
                          If (ConfiguracaoDuplicata03.Value <> 0) and (Trim(ConfiguracaoDuplicata03_Class.AsString) <> '') then GeraDuplicatas(ConfiguracaoDuplicata03.Value, ConfiguracaoDuplicata03_Sub.Value, ConfiguracaoDuplicata03_Dias.Value, ConfiguracaoDuplicata03_Class.Value, 0);
                          If (ConfiguracaoDuplicata04.Value <> 0) and (Trim(ConfiguracaoDuplicata04_Class.AsString) <> '') then GeraDuplicatas(ConfiguracaoDuplicata04.Value, ConfiguracaoDuplicata04_Sub.Value, ConfiguracaoDuplicata04_Dias.Value, ConfiguracaoDuplicata04_Class.Value, 0);
                          If (ConfiguracaoDuplicata05.Value <> 0) and (Trim(ConfiguracaoDuplicata05_Class.AsString) <> '') then GeraDuplicatas(ConfiguracaoDuplicata05.Value, ConfiguracaoDuplicata05_Sub.Value, ConfiguracaoDuplicata05_Dias.Value, ConfiguracaoDuplicata05_Class.Value, 0);
                          If (ConfiguracaoDuplicata06.Value <> 0) and (Trim(ConfiguracaoDuplicata06_Class.AsString) <> '') then GeraDuplicatas(ConfiguracaoDuplicata06.Value, ConfiguracaoDuplicata06_Sub.Value, ConfiguracaoDuplicata06_Dias.Value, ConfiguracaoDuplicata06_Class.Value, 0);
                          If (ConfiguracaoDuplicata07.Value <> 0) and (Trim(ConfiguracaoDuplicata07_Class.AsString) <> '') then GeraDuplicatas(ConfiguracaoDuplicata07.Value, ConfiguracaoDuplicata07_Sub.Value, ConfiguracaoDuplicata07_Dias.Value, ConfiguracaoDuplicata07_Class.Value, 0);
                          If (ConfiguracaoDuplicata08.Value <> 0) and (Trim(ConfiguracaoDuplicata08_Class.AsString) <> '') then GeraDuplicatas(ConfiguracaoDuplicata08.Value, ConfiguracaoDuplicata08_Sub.Value, ConfiguracaoDuplicata08_Dias.Value, ConfiguracaoDuplicata08_Class.Value, 0);
                       End;
                    End;
                 end;
              End;
           End;
           // Duplicatas e financeiro gerados.
           Pedidos.Edit;
                   PedidosOK.value := 12;
           Pedidos.Post;

           // Contas a Pagar (ICMS Monofasico).
           if not NotasNFe_Denegada.AsBoolean then begin
              if (TipoNotaGerar_Financeiro.asboolean) and (Trim(TipoNotaClassificacao_ICMSMono.AsString) <> '')  then begin
                 if (NotasValor_ICMSMono.AsCurrency + NotasValor_ICMSMonoRet.AsCurrency) > 0 then begin
                    with ProcessosDOC do begin 
                         sql.clear;
                         sql.Add('select * from ProcessosDocumentos where Processo = :pProc');
                         ParamByName('pProc').AsString := PedidosProcesso.AsString;
                         open;
                    end;
                    with ClassificacaoFinanceira do begin
                         SQL.Clear;
                         SQL.Add('select * from ClassificacaoFinanceira where Codigo = :pClassificacao');
                         ParamByName('pClassificacao').AsString := TipoNotaClassificacao_ICMSMono.AsString;
                         Open;
                    end;
                    tProvisao.Connection    := Banco_Tmp;
                    PagarReceber.Connection := Banco_Tmp;
                    
                    with tProvisao do begin
                         sql.Clear;
                         sql.Add('select isnull(max(Numero), 0)+1 as Numero from PagarReceber');
                         open;
                    end;
                    with PagarReceber do begin
                         sql.Clear;
                         sql.Add('select * from PagarReceber where Numero = :pNum ');
                         ParamByName('pNum').Asinteger := tProvisao.FieldByName('Numero').AsInteger;
                         Open;
                         Append;
                              FieldByName('Numero').Value           := tProvisaoNumero.asinteger;
                              FieldByName('Tipo').Value             := 'P';
                              FieldByName('Classificacao').Value    := TipoNotaClassificacao_ICMSMono.AsString;
                              FieldByName('Centro_Custo').Value     := TipoNotaCentro_CustoICMSMono.Value;
                              FieldByName('Data_Documento').Value   := NotasData_Emissao.Value;
                              FieldByName('Data_Vencimento').Value  := NotasData_DI.value;
                              FieldByName('Valor_Documento').Value  := RoundTo((NotasValor_ICMSMono.AsCurrency + NotasValor_ICMSMonoRet.AsCurrency), -2);
                              FieldByName('Valor_Parcela').Value    := PagarReceberValor_Documento.ascurrency;
                              FieldByName('Multa').Value            := 0;
                              FieldByName('Juros').Value            := 0;
                              FieldByName('Desconto').Value         := 0;
                              FieldByName('Valor_Total').Value      := PagarReceberValor_Documento.ascurrency;
                              FieldByName('Valor_Operacao').Value   := PagarReceberValor_Documento.ascurrency;
                              FieldByName('Orgao').Value            := TipoNotaBeneficiario_ICMSMono.Value;
                              FieldByName('Documento').Value        := TipoNotaTipo_DocumentoICMSMono.Value;
                              FieldByName('Numero_Documento').Value := NotasNumero.asstring;
                              FieldByName('Processo').Value         := NotasProcesso.Value;
                              FieldByName('CustoConta').Value       := ClassificacaoFinanceiraCusto.Value;
                              FieldByName('Custo_Seletivo').Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                              FieldByName('Custo_Entrada').Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                              FieldByName('Fiscal').Value           := NotasNumero.AsString;
                              FieldByName('Nivel').Value            := ClassificacaoFinanceiraNivel.Value;
                              FieldByName('Tipo_Nota').Value        := iif(NotasSaida_Entrada.Value = 0, 'ET', 'SD');
                              FieldByName('Empresa').Value          := Menu_Principal.mEmpresa;
                              FieldByName('Filial').Value           := EmpresasNumero_Filial.AsInteger;
                              FieldByName('Observacao').Value       := 'Pagamento do ICMS Monofasico na emissão da nota fiscal '+NotasNumero.AsString+ ' de '+NotasData_Emissao.asstring;
                         Post;
                    end;
                 end;
                 tProvisao.Close;
                 // Lançamento do ICMS Monofasico gerado.
                 Pedidos.Edit;
                         PedidosOK.value := 13;
                 Pedidos.Post;
              end;
           end;

           // Gerando o lancamento no financeiro para o total da nota de entrada.
           if not NotasNFe_Denegada.AsBoolean then begin
              if (PedidosSaida_Entrada.Value = 0) and (PedidosComplementar.AsBoolean = False) and (mTipoEnvio <> 'ENVIO EPEC') then begin
                 if (Trim(TipoNotaClassificacao_Saida.AsString) <> '') then begin
                    tProvisao.Connection    := Banco_Tmp;
                    PagarReceber.Connection := Banco_Tmp;
                 
                    tProvisao.SQL.Clear;
                    tProvisao.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
                    tProvisao.Open;

                    PagarReceber.SQL.Clear;
                    PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData) ');
                    PagarReceber.ParamByName('pData').AsDate := NotasData_Emissao.Value;
                    PagarReceber.Open;

                    PagarReceber.Connection := Banco_Empresas;
                    PagarReceber.Append;
                                 PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                                 PagarReceberTipo.Value             := 'P';
                                 PagarReceberClassificacao.Value    := TipoNotaClassificacao_Saida.AsString;
                                 PagarReceberCentro_Custo.Value     := TipoNotaCentro_Custo.Value;
                                 PagarReceberData_Documento.Value   := NotasData_Emissao.Value;
                                 PagarReceberData_Vencimento.Value  := NotasData_Emissao.Value;
                                 PagarReceberValor_Documento.Value  := RoundTo(NotasValor_TotalNota.Value, -2);
                                 PagarReceberValor_Parcela.Value    := RoundTo(NotasValor_TotalNota.Value, -2);
                                 PagarReceberMulta.Value            := 0;
                                 PagarReceberJuros.Value            := 0;
                                 PagarReceberDesconto.Value         := 0;
                                 PagarReceberValor_Total.Value      := RoundTo(PagarReceberValor_Parcela.Value, -2);
                                 PagarReceberValor_Operacao.Value   := RoundTo(PagarReceberValor_Parcela.Value, -2);
                                 PagarReceberCliente.Value          := 0;
                                 PagarReceberFornecedor.Value       := PedidosFornecedor_Codigo.Value;
                                 PagarReceberDocumento.Value        := TipoNotaTipo_Documento.Value;
                                 PagarReceberNumero_Documento.Value := NotasNumero.AsString;
                                 PagarReceberProcesso.Value         := NotasProcesso.Value;
                                 PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                 PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                                 PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                                 PagarReceberFiscal.Value           := NotasNumero.AsString;
                                 PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                 PagarReceberTipo_Nota.Value        := 'ET';
                                 PagarReceberParcela.Value          := '1/1';
                                 PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                 PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                                 PagarReceberObservacao.Value       := iif(PedidosPedido_Representante.AsString <> '', concat('PEDIDO: '+PedidosPedido_Representante.AsString), '');
                                 PagarReceberModalidade_Pgto.Value  := PedidosModalidade_Pgto.Value;
                    PagarReceber.Post;
                    tProvisao.Close;
                 End;
              End;
              
              // Lançamento do total da nota gerado.
              Pedidos.Edit;
                      PedidosOK.value := 14;
              Pedidos.Post;

              // Gerando o lancamento no financeiro para o total da nota quando complementar.
              If (PedidosSaida_Entrada.Value = 1) and (PedidosComplementar.AsBoolean = true) and (mTipoEnvio <> 'ENVIO EPEC') then begin
                 If (Trim(TipoNotaClassificacao_Saida.AsString) <> '') then begin
                    tProvisao.Connection    := Banco_Tmp;
                    PagarReceber.Connection := Banco_Tmp;
                    tProvisao.SQL.Clear;
                    tProvisao.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
                    tProvisao.Open;

                    PagarReceber.SQL.Clear;
                    PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData) ');
                    PagarReceber.ParamByName('pData').AsDate := NotasData_Emissao.Value;
                    PagarReceber.Open;

                    PagarReceber.Append;
                                 PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                                 PagarReceberTipo.Value             := 'R';
                                 PagarReceberClassificacao.Value    := TipoNotaClassificacao_Saida.AsString;
                                 PagarReceberCentro_Custo.Value     := TipoNotaCentro_Custo.Value;
                                 PagarReceberData_Documento.Value   := NotasData_Emissao.Value;
                                 PagarReceberData_Vencimento.Value  := NotasData_Emissao.Value;
                                 PagarReceberValor_Documento.Value  := RoundTo(NotasValor_TotalNota.Value, -2);
                                 PagarReceberValor_Parcela.Value    := RoundTo(NotasValor_TotalNota.Value, -2);
                                 PagarReceberMulta.Value            := 0;
                                 PagarReceberJuros.Value            := 0;
                                 PagarReceberDesconto.Value         := 0;
                                 PagarReceberValor_Total.Value      := RoundTo(PagarReceberValor_Parcela.Value, -2);
                                 PagarReceberValor_Operacao.Value   := RoundTo(PagarReceberValor_Parcela.Value, -2);
                                 PagarReceberCliente.Value          := mCliFin;
                                 PagarReceberDocumento.Value        := TipoNotaTipo_Documento.Value;
                                 PagarReceberNumero_Documento.Value := NotasNumero.AsString;
                                 PagarReceberProcesso.Value         := NotasProcesso.Value;
                                 PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                 PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                                 PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                                 PagarReceberFiscal.Value           := NotasNumero.AsString;
                                 PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                 PagarReceberTipo_Nota.Value        := 'CP';
                                 PagarReceberParcela.Value          := '1/1';
                                 PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                 PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                                 PagarReceberObservacao.Value       := iif(PedidosPedido_Representante.AsString <> '', concat('PEDIDO: '+PedidosPedido_Representante.AsString), '');
                                 PagarReceberModalidade_Pgto.Value  := PedidosModalidade_Pgto.Value;
                    PagarReceber.Post;
                    tProvisao.Close;

                    // Gerando a duplicata do total da nota complementar
                    Fatura.Open;
                    Fatura.Append;
                           FaturaFatura.Value        := NotasNumero.AsString;
                           FaturaData_Emissao.Value  := NotasData_Emissao.Value;
                           FaturaNota.Value          := NotasNumero.Value;
                           FaturaData_Nota.Value     := NotasData_Emissao.Value;
                           FaturaCliente.Value       := mCliFin;
                           FaturaForma_Pgto.Value    := TipoNotaModalidade_Pagamento.Value;
                           FaturaValor_Total.Value   := NotasValor_TotalNota.Value;
                           FaturaOrigem_Pedido.Value := false;
                           FaturaProcesso.Value      := NotasProcesso.AsString;
                    Fatura.Post;
                    Duplicatas.Open;
                    Duplicatas.Append;
                               DuplicatasDuplicata.Value       := PoeZero(9,FaturaFatura.AsInteger);
                               DuplicatasFatura.Value          := FaturaFatura.Value;
                               DuplicatasData_Vencimento.Value := NotasData_Emissao.Value;
                               DuplicatasVencimento.Value      := 'A VISTA';
                               DuplicatasValor.Value           := NotasValor_TotalNota.Value;
                               DuplicatasDesconto.Value        := 0;
                               DuplicatasValor_Liquido.Value   := NotasValor_TotalNota.Value;
                               DuplicatasParcela.Value         := '1/1';
                               DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                    Duplicatas.Post;
                 end;
                 
                 // Lançamento do total da nota quando complementar gerado.
                 Pedidos.Edit;
                         PedidosOK.value := 15;
                 Pedidos.Post;
              End;

              // Marca a utilização do CIAP.
              if (NotasSaida_Entrada.AsInteger = 1) and (NotasValor_ICMS.Value > 0) then begin
                 tCIAP.SQL.Clear;
                 tCIAP.SQL.Add('UPDATE CIAP SET Utilizacao = :pUtilizacao WHERE Registro IN((SELECT MIN(Registro) AS Registro FROM CIAP WHERE(Utilizacao IS NULL)');
                 tCIAP.SQL.Add('                                            AND ((SELECT COUNT(*) FROM CIAP WHERE(Utilizacao = :pUtilizacao)) = 0)');
                 tCIAP.SQL.Add('GROUP BY Codigo_Mercadoria, Nota))');
                 tCIAP.ParamByName('pUtilizacao').AsString := PoeZero(2, MonthOf(NotasData_Emissao.AsDateTime))+PoeZero(4, YearOf(NotasData_Emissao.AsDateTime));
                 tCIAP.Execute;
                 tCIAP.SQL.Clear;
              end;
              
              // Utilização do CIAP gerado.
              Pedidos.Edit;
                      PedidosOK.value := 16;
              Pedidos.Post;
           end;

           // Estorna o lançamento de recebimento do financeiro para caso de devolução de mercadoria integral.
           if PedidosDevolucao.AsBoolean then begin
              if not NotasNFe_Denegada.AsBoolean then begin
                 if (PedidosSaida_Entrada.Value = 0) and (PedidosComplementar.AsBoolean = False) and (mTipoEnvio <> 'ENVIO EPEC') then begin
                    with tTmp do begin
                         // Totaliza o a quantidade do pedido e da nota fiscal para saber se é devoluçao integral.
                         close;
                         sql.clear;
                         sql.add('select Qtde = isnull((select sum(Quantidade) from PedidosItens where Pedido = :pPedido), 0) -');
                         sql.add('              isnull((select sum(Quantidade) from NotasItens where Numero_Referencia = :pNotaRef and Data_Referencia = :pDataRef), 0)');
                         parambyname('pPedido').Value  := PedidosNumero.Value;
                         parambyname('pNotaRef').Value := NotasItensNumero_Referencia.value;
                         parambyname('pDataRef').Value := NotasItensData_Referencia.value;
                         open;
                         // Se quantidade igual, é devolução integral, exclui o lançamento financeiro se ainda não baixado.
                         if fieldbyname('Qtde').value = 0 then begin
                            close;
                            sql.clear;
                            sql.add('delete from PagarReceber');
                            sql.add('where Documento = ''NF'' ');
                            sql.add('and Fiscal = :pNota');
                            sql.add('and Data_Documento = :pData');
                            sql.add('and Valor_Documento = :pValor');
                            sql.add('and (select isnull(sum(Valor), 0) from PagarReceberBaixas prb where prb.Numero = PagarReceber.Numero) = 0');
                            parambyname('pNota').Value  := NotasItensNumero_Referencia.AsInteger;
                            parambyname('pData').Value  := NotasItensData_Referencia.value;
                            parambyname('pValor').Value := NotasValor_TotalNota.value;
                            execute;
                         end;
                    end;
                    // Estorno de lançamento de recebimento gerado, feito pela devolução.
                    Pedidos.Edit;
                            PedidosOK.value := 17;
                    Pedidos.Post;
                 end;
              end;
           end;

           // Deleta os lotes de notas enviadas.
           tLoteNotas.SQL.Clear;
           tLoteNotas.SQL.Add('DELETE FROM LoteNotas WHERE Lote = '+QuotedStr(PedidosLote.AsString));
           tLoteNotas.Execute;
           tLoteNotas.SQL.Clear;
           tLoteNotas.SQL.Add('DELETE FROM PedidosItensReferencia WHERE Pedido = :pPed AND Data_Pedido = :pData AND Lote = '+QuotedStr(PedidosLote.AsString));
           tLoteNotas.ParamByName('pPed').AsInteger := PedidosNumero.AsInteger;
           tLoteNotas.ParamByName('pData').AsDate   := PedidosData_Emissao.AsDateTime;
           tLoteNotas.Execute;

           Pedidos.Edit;
                   PedidosOK.value := 0;
           Pedidos.Post;

           If mDenegada = False then begin
              cMensagens.Lines.Add('       Nota Fiscal salva no banco de dados...');
           End else begin
              cMensagens.Lines.Add('       Nota Fiscal salva no banco de dados (Denegada)...');
           End;
      End;
      Screen.Cursor := crDefault;
end;

// Rotinas de geração da nota fiscal eletronica arquivo XML.
procedure TNotaFiscal_Eletronica2G.GerarXML;
Var
    Util: NFe_Util_2G_Interface;
    mAno
   ,mMes: String;
    _cNF
   ,_cDV
   ,_Vol
   ,CodigoSeg
   ,respTec
   ,ChaveNFE: WideString;
    mData: TDate;
    mParcela
   ,mDiferencaData
   ,mItem
   ,mChave
   ,i: Integer;
    mTamArq: real;
    mXMLTemp
   ,mAutCNPJ
   ,mAutCPF: TMemo;
    mQtdemono:double;
begin
       Screen.Cursor    := crSQLWait;
       Util             := CoUtil.Create;
       mXMLTemp         := TMemo.Create(NotaFiscal_Eletronica2G);
       mXMlTemp.Visible := False;
       mXMLTemp.Parent  := NotaFiscal_Eletronica2G;

       With Dados, dmFiscal do begin
            // Posicionando as tabelas auxiliares.
            Natureza.SQL.Clear;
            Natureza.SQL.Add('SELECT * FROM Natureza');
            Natureza.Open;
            Natureza.Locate('Codigo', PedidosNatureza_Codigo.Value, [loCaseInsensitive]);

            Municipios.SQL.Clear;
            Municipios.SQL.Add('SELECT * FROM Municipios ');
            Municipios.Open;
            Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

            PedidosItens.SQL.Clear;
            PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE (Pedido = :pPedido) ORDER BY Item');
            PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
            PedidosItens.Open;

            Paises.SQL.Clear;
            Paises.SQL.Add('SELECT * FROM Paises');
            Paises.Open;

            ProcessosDOC.SQL.Clear;
            ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE (Processo = :pProcesso AND Tipo = :pTipo)');
            ProcessosDOC.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
            if PedidosTipo_Processo.Value = 'I' then
               ProcessosDOC.ParamByName('pTipo').AsString := 'IMPORTAÇÃO';
            if PedidosTipo_Processo.Value = 'E' then
               ProcessosDOC.ParamByName('pTipo').AsString := 'EXPORTAÇÃO';
            ProcessosDOC.Open;

            TiposProcesso.SQL.Clear;
            TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso WHERE (Codigo = :pModalidade)');
            TiposProcesso.ParamByName('pModalidade').AsInteger := ProcessosDOCModalidade_Importacao.AsInteger;
            TiposProcesso.Open;

            Adicoes.SQL.Clear;
            Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE DI IN(SELECT DISTINCT DI FROM PedidosItens WHERE(Pedido = :pPedido))');
            Adicoes.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
            Adicoes.Open;

            Estados.SQL.Clear;
            Estados.SQL.Add('SELECT * FROM Estados');
            Estados.Open;
            Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

            ModalidadesPgto.SQL.Clear;
            ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento WHERE (Codigo = :pCodigo)');
            ModalidadesPgto.ParamByName('pCodigo').AsInteger := PedidosModalidade_Pgto.Value;
            ModalidadesPgto.Open;

            LocalDesembaraco.SQL.Clear;
            LocalDesembaraco.SQL.Add('SELECT * FROM LocalDesembaraco WHERE(Codigo = :pCodigo)');
            LocalDesembaraco.ParamByName('pCodigo').AsInteger := ProcessosDOCLocal_DesembaracoCodigo.AsInteger;
            LocalDesembaraco.Open;

            Fornecedores.Locate('Codigo', PedidosFornecedor_Codigo.Value, [loCaseInsensitive]);
            Clientes.Locate('Codigo', PedidosCliente_Codigo.Value, [loCaseInsensitive]);
            TipoNota.Locate('Codigo', PedidosTipo_Nota.Value, [loCaseInsensitive]);

            // Gera o número da nota para o pedido atual.
            mNota := PedidosNota.AsInteger;
            if mNota = 0 then begin
               mNota := iif(PedidosSaida_Entrada.Value = 0, EmpresasNota_EletronicaEntrada.asinteger+1, EmpresasNota_Eletronica.asinteger+1);

               Pedidos.Edit;
                       PedidosNota.Value := mNota;
                       if Trim(RemoveCaracter('/','',cDataEntradaSaida.Text)) <> '' then begin
                          PedidosData_EntradaSaida.Value := cDataEntradaSaida.Date;
                          PedidosHora_EntradaSaida.Value := Copy(TimetoStr(Time), 1, 5);
                       end;
               Pedidos.Post;
            end;
            
            if mNotaIni = 0 then mNotaIni := mNota;

            // Gera os números das duplicatas com o número da nota fiscal.
            If (PedidosSaida_Entrada.Value = 1) and (PedidosComplementar.Value = False) and (PedidosBaixa_Estoque.Value = false) then begin
               PedidosFatura.SQL.Clear;
               PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE(Pedido = :pPedido)');
               PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
               PedidosFatura.Open;

               If PedidosFatura.RecordCount <> 0 then begin
                  mDiferencaData := StrtoInt( DifDias(PedidosFaturaData_Emissao.Value, cDataEmissao.Date) );

                  PedidosFatura.Edit;
                                PedidosFaturaData_Emissao.Value := cDataEmissao.Date;
                                PedidosFaturaData_Pedido.Value  := cDataEmissao.Date;
                  PedidosFatura.Post;

                  PedidosDuplicata.SQL.Clear;
                  PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Fatura = :pFatura) ORDER BY CAST(Duplicata AS int)');
                  PedidosDuplicata.ParamByName('pFatura').AsInteger := PedidosNumero.Value;
                  PedidosDuplicata.Open;
                  PedidosDuplicata.First;

                  mParcela := 1;
                  While not PedidosDuplicata.Eof do begin
                        // Recalcula as datas de vencimento com base na data da emissão da nota fiscal.
                        mData := PedidosDuplicataData_Vencimento.Value;
                        if ModalidadesPgtoPrazo_Dia.AsInteger <= 0 then
                           mData := mData + mDiferencaData;

                        // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
                        If (ConfiguracaoDia_Util.Value <> 'N') and (ModalidadesPgtoPrazo_Dia.AsInteger <= 0) then begin
                           If (DayOfWeek(mData) = 1) then begin
                              If (ConfiguracaoDia_Util.Value = '-') then
                                 mData := mData -2
                              else
                                 mData := mData +1;
                           End;
                           If (DayOfWeek(mData) = 7) then begin
                              If (ConfiguracaoDia_Util.Value = '-') then
                                 mData := mData -1
                              else
                                 mData := mData +2;
                           End;
                        End;

                        PedidosDuplicata.Edit;
                                         PedidosDuplicataDuplicata.Value       := PoeZero(9, PedidosNota.Value) + InttoStr(mParcela);
                                         PedidosDuplicataNumero.Value          := PoeZero(9, PedidosNota.Value) + CHR(64+mParcela);
                                         PedidosDuplicataData_Vencimento.Value := mData;
                                         PedidosDuplicataData_Emissao.Value    := PedidosFaturaData_Emissao.Value;
                        PedidosDuplicata.Post;
                        PedidosDuplicata.Next;
                        Inc(mParcela);
                  End;
               End;
            End;

            // Itens da nota fiscal.
            mDetalhes := '';
            mItem     := 1;

            Janela_Processamento                    := TJanela_Processamento.Create(Self);
            Janela_Processamento.lProcesso.Caption  := 'Gerando arquivo XML...Aguarde';
            Janela_Processamento.Progresso.Position := 0;
            Janela_Processamento.Progresso.Max      := PedidosItens.Recordcount;
            Janela_Processamento.Show;
            
            if (not PedidosComplementar.AsBoolean) and (not PedidosAjuste.AsBoolean) then 
               ide_finNFe := 1;
            if PedidosComplementar.AsBoolean then 
               ide_finNFe := 2;
            if PedidosAjuste.AsBoolean       then 
               ide_finNFE := 3;
            if PedidosDevolucao.AsBoolean    then 
               ide_finNFE := 4;
            if PedidosNFE_Estorno.AsBoolean  then 
               ide_finNFE := 3;
            
            PedidosItens.First;
            while not PedidosItens.Eof do begin
                  mDetalhes := mDetalhes + MontaDetalhe(mItem, PedidosItensCodigo_Mercadoria.Value, PedidosItensQuantidade.Value, PedidosItensValor_Total.Value);
                  PedidosItens.Next;
                  Inc(mItem);
                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                  Application.ProcessMessages;
            end;
  
            // Identificação da nota fiscal.
            Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);
            Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);
            ide_cUF := EstadosNumero.Value;

            // Pegando a descrição da natureza da operação "Pelo tipo de nota ou pelo cadastro".
            If Trim(TipoNota.FieldByName('Descricao_CFOP_Nota').AsString) = '' then
               ide_natOp := UpperCase(RemoveCaracterXML(Copy(NaturezaDescricao_NF.Value,1,60)))
            else
               ide_natOp := UpperCase(RemoveCaracterXML(Copy(TipoNotaDescricao_CFOP_Nota.AsString,1,60)));

            If PedidosSaida_Entrada.Value = 0 then begin
               ide_mode  := EmpresasNFEletronica_ModeloEntrada.AsInteger;
               ide_serie := EmpresasNFEletronica_SerieEntrada.AsInteger;
            end else begin
               ide_mode  := EmpresasNFEletronica_Modelo.AsInteger;
               ide_serie := EmpresasNFEletronica_Serie.AsInteger;
            End;

            ide_nNF     := PedidosNota.Value;
            ide_dEmi    := cDataEmissao.Date;
            ide_dEmi310 := DataUTC(cDataEmissao.Date);
            ide_dSaiEnt := cDataEntradaSaida.Date;
            If not DataLimpa(cDataEntradaSaida.Text) then
               ide_dSaiEnt310 := DataUTC(cDataEntradaSaida.Date)
            else
               ide_dSaiEnt310 := '';

            ide_tpNF   := PedidosSaida_Entrada.AsInteger;
            ide_tpImp  := ConfiguracaoNFE_DANFE_Orientacao.Value;
            ide_tpAmb  := Menu_Principal.Amb_Producao;
            ide_dhCont := 0;
            ide_xJust  := '';
            ide_Pres   := PedidosIndicador_Presenca.AsInteger;
            ide_Interm := iif(PedidosIndicador_Intermediario.AsInteger in[0, 1], PedidosIndicador_Intermediario.AsInteger, -1);
            ide_Final  := 0;

            // Indicador de finalidade.
            If (ClientesConsumidor_Final.AsBoolean) then ide_Final := 1;


            // Indicador de destinatario.
            If PedidosDestinatario_Estado.Value =  EmpresasEstado.Value then
               ide_Dest := 1;
            If PedidosDestinatario_Estado.Value <> EmpresasEstado.Value then
               ide_Dest := 2;
            If PedidosDestinatario_Estado.Value = 'EX' then
               ide_Dest := 3;

            // Dados da Nota fiscal referenciada quando complementar, Devolução...
            ide_NFRef := '';

            if (TipoNotaNota_Referencia.AsBoolean) or (TipoNotaFinalidade_Mercadoria.AsInteger = 2) then begin
               PedidosItensReferencia.SQL.Clear;
               PedidosItensReferencia.SQL.Add('SELECT * FROM PedidosItensReferencia');
               PedidosItensReferencia.SQL.Add('WHERE ISNULL(Chave_Referencia, '''') <> '''' ');
               PedidosItensReferencia.SQL.Add('AND   Pedido = :pPed');
               PedidosItensReferencia.SQL.Add('AND Data_Pedido = :pData');
               PedidosItensReferencia.SQL.Add('ORDER BY Chave_Referencia');
               PedidosItensReferencia.ParamByName('pPed').AsInteger := PedidosNumero.AsInteger;
               PedidosItensReferencia.ParamByName('pData').AsDate   := PedidosData_Emissao.AsDateTime;
               PedidosItensReferencia.Open;

               if PedidosItensReferencia.RecordCount = 0 then begin
                  tNotasRef.SQL.Clear;
                  tNotasRef.SQL.Add('SELECT DISTINCT Nota_Referencia FROM PedidosItens WHERE Pedido = :pPedido');
                  tNotasRef.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                  tNotasRef.Open;

                  while not tNotasRef.Eof do begin
                        if Trim(tNotasRef.FieldByName('Nota_Referencia').AsString) <> '' then begin
                           ide_NFRef := ide_NFRef + Util.NFeRef(tNotasRef.FieldByName('Nota_Referencia').AsString);
                        end;
                        tNotasRef.Next;
                  end;
               end else begin
                  PedidosItensReferencia.First;
                  while not PedidosItensReferencia.Eof do begin
                        ide_NFRef := ide_NFRef + Util.NFeRef(PedidosItensReferencia.FieldByName('Chave_Referencia').AsString);
                        PedidosItensReferencia.Next;
                  end;
               end;
            end;

            ide_procEmi := 0;
            ide_verProc := Menu_Principal.mVersao_Sistema;
            ide_cMunFG  := MunicipiosCodigo.AsString;

            // Gerando a chave de acesso da nota fiscal.
            if Trim(PedidosNFe_cNF.AsString) = '' then begin
               _cNF      := '0';
               _cDV      := '0';
               mAno      := Copy( InttoStr(YearOf(cDataEmissao.Date)),3, 2);
               mMes      := PoeZero( 2, MonthOf(cDataEmissao.Date) );
               CodigoSeg := 'Cybersoft_'+Trim(EmpresasRazao_Social.AsString);

               mChave := Util.CriaChaveNFe2G(EstadosNumero.AsString
                                            ,mAno
                                            ,mMes
                                            ,EmpresasCNPJ.Value
                                            ,InttoStr(ide_Mode)
                                            ,InttoStr(ide_Serie)
                                            ,PedidosNota.AsString
                                            ,iif(not PedidosDPEC.asboolean, InttoStr(ide_tpEmis), 4)
                                            ,CodigoSeg
                                            ,MsgResultado
                                            ,_cNF
                                            ,_cDV
                                            ,ChaveNFe
                                            );

               if mChave <> 5601 then begin
                 cMensagens.Lines.Add( 'Falha na chamada do WS...'+ MsgResultado);
                 ide_cDV := 0;
                 ide_cNF := 0;
                 Inc(mQtdErros);
               end else begin
                 ide_cDV := StrtoInt(_cDV);
                 ide_cNF := StrtoInt(_cNF);

                 // Salvando a chave da nota fiscal gerada no banco de dados.
                 Pedidos.Edit;
                         PedidosNFe_cNF.Value := ChaveNfe;
                 Pedidos.Post;
               end;
            end else begin
               ChaveNFe := Trim(PedidosNFe_cNF.AsString);
               ide_cDV  := StrtoInt(Copy(ChaveNFe,44,1));
               ide_cNF  := StrtoInt(Copy(ChaveNFe,36,8));
            end;

            // Identificação da NFE.
            ide := Util.identificador202006(ide_cUF
                                           ,ide_cNF
                                           ,ide_NatOP
                                           ,ide_Mode
                                           ,ide_Serie
                                           ,ide_nNF
                                           ,ide_dEmi310
                                           ,ide_dSaiEnt310
                                           ,ide_tpNF
                                           ,ide_Dest
                                           ,ide_cMunFG
                                           ,ide_NFRef
                                           ,ide_tpImp
                                           ,iif(not PedidosDPEC.asboolean, InttoStr(ide_tpEmis), 4)
                                           ,ide_cDV
                                           ,ide_tpAmb
                                           ,ide_finNFe
                                           ,ide_Final
                                           ,ide_Pres
                                           ,ide_procEmi
                                           ,ide_verProc
                                           ,''
                                           ,''
                                           ,ide_Interm);
                                           
            // Dados do emitente.
            emi         := '';
            emi_CNPJ    := Trim(EmpresasCNPJ.Value);
            emi_xNome   := RemoveCaracterXML(EmpresasRazao_Social.Value);
            emi_xFant   := RemoveCaracterXML(EmpresasNome_Fantasia.Value);
            emi_xLgr    := RemoveCaracterXML(EmpresasRua.Value);
            emi_nro     := Trim(EmpresasRua_Numero.AsString);

            If EmpresasRua_Numero.AsInteger = 0 then emi_nro := 'S/N';

            emi_xCpl    := RemoveCaracterXML(EmpresasComplemento.Value);
            emi_xBairro := RemoveCaracterXML(EmpresasBairro.Value);
            emi_xMun    := RemoveCaracterXML(MunicipiosNome.Value);
            emi_cMun    := EmpresasMunicipio_Codigo.AsString;
            emi_UF      := EmpresasEstado.Value;
            emi_CEP     := EmpresasCEP.Value;
            emi_cPais   := '1058';
            emi_xPais   := 'BRASIL';
            emi_fone    := EmpresasTelefone1.Value;
            emi_IE      := EmpresasIE.Value;
            emi_IEST    := PedidosInscricao_Substituto.AsString;
            emi_IM      := '';
            emi_CNAE    := '';
            emi_CRT     := Trim(EmpresasRegime_Apuracao.AsString);

            emi := Util.Emitente2G(emi_CNPJ
                                  ,''
                                  ,emi_xNome
                                  ,emi_xFant
                                  ,emi_xLgr
                                  ,emi_nro
                                  ,emi_xCpl
                                  ,emi_xBairro
                                  ,emi_cMun
                                  ,emi_xMun
                                  ,emi_UF
                                  ,emi_CEP
                                  ,emi_cPais
                                  ,emi_xPais
                                  ,emi_fone
                                  ,emi_IE
                                  ,emi_IEST
                                  ,emi_IM
                                  ,emi_CNAE
                                  ,emi_CRT
                                  );

            // Dados do destinatario "Cliente / Fornecedor".
            Municipios.Locate('Codigo', PedidosDestinatario_Municipio.Value, [loCaseInsensitive]);
            Paises.Locate('Codigo', PedidosDestinatario_Pais.Value, [loCaseInsensitive]);

            if PedidosSaida_Entrada.AsInteger = 0 then begin
               Fornecedores.Locate('Codigo', PedidosFornecedor_Codigo.Value, [loCaseInsensitive]);
            end else begin
               Clientes.Locate('Codigo', PedidosCliente_Codigo.Value, [loCaseInsensitive]);
            end;

            dest      := '';
            dest_CNPJ := '';
            dest_CPF  := '';
            dest_IE   := Trim(ApenasNumeros(PedidosDestinatario_IE.Value));

            if PedidosDestinatario_Estado.AsString <> 'EX' then begin
               If PedidosDestinatario_Juridica.AsBoolean = true then
                  dest_CNPJ := Trim(PedidosDestinatario_CNPJ_CPF.Value)
               else
                  dest_CPF  := Trim(PedidosDestinatario_CNPJ_CPF.Value);
            end;

            dest_IESUF := '';
            If (Menu_Principal.Amb_Producao = 1) then begin;
               dest_xNome := Trim(RemoveCaracterXML(PedidosDestinatario_Nome.Value));
            end else begin
               dest_xNome := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
            End;

            dest_xLgr := Trim(RemoveCaracterXML(PedidosDestinatario_Rua.Value));
            dest_nro  := 'S/N';
            If Trim(PedidosDestinatario_RuaNumero.Value) <> '' then dest_nro := Trim(RemoveCaracterXML(PedidosDestinatario_RuaNumero.Value));

            dest_xCpl    := '';
            dest_xBairro := Trim(RemoveCaracterXML(PedidosDestinatario_Bairro.Value));
            dest_xMun    := Trim(RemoveCaracterXML(PedidosDestinatario_MunicipioNome.AsString));
            dest_cMun    := RemoveCaracterXML(PedidosDestinatario_Municipio.AsString);
            dest_UF      := Trim(RemoveCaracterXML(PedidosDestinatario_Estado.Value));
            dest_cPais   := Trim(RemoveCaracterXML(PedidosDestinatario_Pais.AsString));
            dest_xPais   := Trim(RemoveCaracterXML(PaisesNome.Value));
            dest_fone    := Trim(RemoveCaracterXML(PedidosDestinatario_Telefone1.Value));
            dest_Estr    := Trim(ClientesPassaporte.AsString);
            dest_CEP     := Trim(PedidosDestinatario_CEP.AsString);

            if PedidosSaida_Entrada.AsInteger = 0 then begin
               dest_indIE := Trim(FornecedoresIndicador_IE.AsString);
               dest_Email := Trim(FornecedoresEMail.AsString);
            end else begin
               dest_indIE := Trim(ClientesIndicador_IE.AsString);
               dest_Email := Trim(ClientesEMail.AsString);
            end;

            Dest := Util.Destinatario310(dest_CNPJ, dest_CPF, dest_Estr , dest_xNome, dest_xLgr, dest_nro, dest_xCpl, dest_xBairro, dest_cMun, dest_xMun, dest_UF, dest_CEP, dest_cPais, dest_xPais, dest_fone, dest_indIE, dest_IE, dest_IESUF, '', dest_Email);

            // Dados de cobrança.
            Cobr := '';
            Dupl := '';
            if PedidosSaida_Entrada.Value = 1 then begin
               if PedidosFatura.RecordCount <> 0 then begin
                  PedidosDuplicata.First;
                  while (not PedidosDuplicata.Eof) do begin
                        Dupl := Dupl + Util.Dup( PoeZero(3, StrtoInt(Copy(PedidosDuplicataDuplicata.Value, 10, 2))), PedidosDuplicataData_Vencimento.Value, PedidosDuplicataValor.Value );
                        PedidosDuplicata.Next;
                  end;
                  Cobr := Cobr + Util.Cobr(InttoStr(mNota), (PedidosValor_TotalNota.Value+PedidosTotal_Descontos.Value), PedidosTotal_Descontos.Value, PedidosValor_TotalNota.Value, Dupl);
               end;
            end;

            // Dados de pagamento.
            DetPag := Util.detPag2023004(iif(PedidosTipo_Pagamento.asinteger = 2, '', PedidosTipo_Pagamento.AsString)      // 01 informar o indicador da forma de pagamento:0 - pagamento à vista / 1 - pagamento à prazo.
                                        ,Poezero(2, PedidosForma_Pagamento.AsInteger)                                      // 02 informar o Meio de pagamento.
                                        ,PedidosDescricao_Forma.asstring                                                   // 03 informar a descrição do meio de pagamento quando tPag for informado com 99.
                                        ,iif(PedidosForma_Pagamento.AsInteger <> 90, PedidosValor_TotalNota.AsFloat, 0)    // 04 informar o valor do Pagamento.
                                        ,''                                                                                // 05 Tipo de Integração do processo de pagamento com o sistema de automação da empresa.
                                        ,''                                                                                // 06 Informar o CNPJ da instituição de pagamento, adquirente ou subadquirente.
                                        ,''                                                                                // 07 informar a Bandeira da operadora de cartão de crédito e/ou débito.
                                        ,''                                                                                // 08 Identifica o número da autorização da transação da operação com cartão de crédito e/ou débito.
                                        ,''                                                                                // 09 Informar a data de pagamento (AAAA-MM-DD).
                                        ,''                                                                                // 10 informar o CNPJ do estabelecimento onde o pagamento foi processado/transacionado/recebido quando a emissão do documento fiscal ocorrer em estabelecimento distinto.
                                        ,''                                                                                // 11 UF do CNPJ do estabelecimento onde o pagamento foi processado/transacionado/recebido.
                                        ,''                                                                                // 12 Informar o CNPJ do estabelecimento beneficiário do pagamento.
                                        ,'');                                                                              // 13 Identificar o terminal em que foi realizado o pagamento.

            Pagamento := Util.Pagamento400(DetPag   // 01 informar o detalhe do pagamento gerado com o uso da detPag.
                                          ,0);      // 02 informar o valor do Troco caso exista.

            // Soma o total da base de calculo do ICMS com arredondamento devido a validação do XML pela SEFAZ.
            tItens.SQL.Clear;
            tItens.SQL.Add('SELECT  Total_BCICMS    = SUM(CAST(Valor_BCICMSOper AS DECIMAL(18,2) ))');
            tItens.SQL.Add('       ,Total_ICMS      = SUM(CAST(Valor_ICMSOper   AS DECIMAL(18,2) ))');
            tItens.SQL.Add('       ,Total_BCICMSSub = SUM(CAST(Valor_BCICMSSub  AS DECIMAL(18,4) ))');
            tItens.SQL.Add('       ,Total_Frete     = CASE WHEN (SELECT Total_Frete FROM Pedidos WHERE Numero = Pedido) > 0 THEN SUM(CAST(Valor_Frete AS DECIMAL(18,4) )) ELSE 0 END');
            tItens.SQL.Add('       ,Total_PIS       = SUM(CAST(Valor_PIS AS DECIMAL(18,4) ))');
            tItens.SQL.Add('       ,Total_COFINS    = SUM(CAST(Valor_COFINS AS DECIMAL(18,2) ))');
            tItens.SQL.Add('       ,Total_IPI       = SUM(CAST(Total_IPI AS DECIMAL(18,4) ))');
            tItens.SQL.Add('       ,Total_Despesas  = SUM(CAST(Valor_Despesa*Quantidade AS DECIMAL(18,4) ))');
            tItens.SQL.Add('FROM   PedidosItens');
            tItens.SQL.Add('WHERE  Pedido = :pPedido');
            tItens.SQL.Add('GROUP  BY Pedido');
            tItens.ParamByName('pPedido').AsInteger  := PedidosNumero.Value;
            tItens.Open;

            // Pega os totais da nota fiscal.
            Total   := '';
            totICMS := '';

            // ICMS (Totais).
            mQtdeMono := iif(TipoNotaVisiveis_QuantidadeItem.AsBoolean, PedidosValor_BCICMSMono.asfloat, 0);
            totICMS   := Util.totalICMSNT2023001(PedidosBCICMS.AsCurrency,                                                                                           // 01 somatório da BC do ICMS (vBC) informado nos itens.
                                                 PedidosValor_ICMS.AsFloat,                                                                                          // 02 somatório de ICMS (vICMS) informado nos itens.
                                                 PedidosBCICMS_Substitutivo.AsFloat,                                                                                 // 03 somatório da BC ST (vBCST) informado nos itens.
                                                 PedidosValorICMS_Substitutivo.AsFloat,                                                                              // 04 somatório do ICMS ST (vICMSST)informado nos itens.
                                                 PedidosValor_TotalProdutos.AsFloat,                                                                                 // 05 somatório de valor dos produtos (vProd) dos itens que tenham indicador de totalização = 1 (indTot).
                                                 PedidosTotal_Frete.AsFloat,                                                                                         // 06 somatório de valor do Frete (vFrete) informado nos itens.
                                                 PedidosValor_Seguro.AsFloat,                                                                                        // 07 somatório valor do Seguro (vSeg) informado nos itens.
                                                 PedidosTotal_Descontos.AsFloat,                                                                                     // 08 somatório do Desconto (vDesc) informado nos itens.
                                                 iif((PedidosSaida_Entrada.Value = 0) or TipoNotaDevolucao_Importacao.asboolean, PedidosValor_TotalII.AsFloat, 0),   // 09 somatório de II (vII) informado nos itens.
                                                 PedidosValor_TotalIPI.AsFloat,                                                                                      // 10 somatório de IPI (vIPI) informado nos itens.
                                                 PedidosValor_PIS.AsFloat,                                                                                           // 11 somatório de PIS (vPIS) informado nos itens sujeitos ao ICMS.
                                                 PedidosValor_COFINS.AsFloat,                                                                                        // 12 somatório de COFINS (vCOFINS) informado nos itens sujeitos ao ICMS.
                                                 PedidosValor_OutrasDespesas.AsFloat,                                                                                // 13 somatório de vOutro (vOutro) informado nos itens.
                                                 PedidosValor_TotalNota.AsFloat,                                                                                     // 14 valor total a NF Acrescentar o valor dos Serviços informados no grupo do ISSQN.
                                                 PedidosTotal_Impostos.AsCurrency,                                                                                   // 15 somatório do valor total aproximado dos tributos (vTotTrib) informado nos itens, deve considerar valor de itens sujeitos ao ISSQN também.
                                                 PedidosValor_ICMSDesonerado.AsCurrency,                                                                             // 16 somatório do Valor do ICMS desonerado (vICMSDeson) informado nos itens.
                                                 PedidosDIFAL_ValorDest.AsCurrency,                                                                                  // 17 somatório do Valor do ICMS Interestadual para a UF de destino (vICMSUFDest) informado nos itens.
                                                 PedidosDIFAL_ValorOrig.AsCurrency,                                                                                  // 18 somatório do Valor total do ICMS Interestadual para a UF do remetente vICMSUFRemet) informado nos itens.
                                                 PedidosValor_FCP.AsCurrency,                                                                                        // 19 somatório do Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino. Corresponde ao total da soma dos campos vFCP informado nos itens.
                                                 iif(PedidosDIFAL_Valor.Value > 0 , 0, PedidosValor_FCP.Value),                                                      // 20 somatório do Valor do FCP (Fundo de Combate à Pobreza) (vFCP) informado nos itens.
                                                 PedidosValor_FCPST.AsCurrency,                                                                                      // 21 somatório do Valor do FCP retido anteriormente por Substituição. Corresponde ao total da soma dos campos vFCPST informado nos itens.
                                                 0,                                                                                                                  // 22 somatório do Valor do FCP retido anteriormente por Substituição. Corresponde ao total da soma dos campos vFCPSTRet informado nos itens.
                                                 iif((ide_finNFe = 4), PedidosValor_IPIDevol.ascurrency, 0),                                                         // 23 informar o somatório do Valor do IPI devolvido. Deve ser informado quando preenchido o Grupo Tributos Devolvidos na emissão de nota finNFe=4 (devolução) nas operações com não contribuintes do IPI.
                                                 mQtdeMono,                                                                                                          // 24 informar o somatório do Valor total da quantidade tributada do ICMS Monofásico próprio.
                                                 PedidosValor_ICMSMono.AsCurrency,                                                                                   // 25 nformar o somatório do Valor total do ICMS monofásico próprio
                                                 iif(PedidosSaida_Entrada.Value = 1, 0, PedidosValor_BCICMSMonoRet.asfloat),                                         // 26 informar o somatório do Valor total da quantidade tributada do ICMS monofásico sujeito a retenção.
                                                 iif(PedidosSaida_Entrada.Value = 1, 0, PedidosValor_ICMSMonoRet.AsCurrency),                                        // 27 nformar o somatório do Valor total do ICMS monofásico sujeito a retenção.
                                                 iif(PedidosSaida_Entrada.Value = 1, PedidosValor_BCICMSMonoRet.AsCurrency, 0),                                      // 28 informar o somatório do Valor total da quantidade tributada do ICMS monofásico retido anteriormente.
                                                 iif(PedidosSaida_Entrada.Value = 1, PedidosValor_ICMSMonoRet.AsCurrency, 0));                                       // 29 informar o somatório do Valor total do ICMS monofásico retido anteriormente.
            
            // Reforma tributária IBS/CBS.
            _gIBSTot := util.gIBSTot(0                                        // informar o valor total do diferimento da UF.
                                    ,0                                        // informar o valor total de devolução de tributos da UF.
                                    ,PedidosValor_IBS.AsCurrency              // informar o valor total da IBS da UF.
                                    ,0                                        // informar o valor total do diferimento do Município.
                                    ,0                                        // informar o valor total de devolução de tributos do Município.
                                    ,0                                        // informar o valor total da IBS do Município.
                                    ,PedidosValor_IBS.AsCurrency              // informar o valor total da IBS.
                                    ,0                                        // informar o valor total do crédito presumido.
                                    ,0                                        // informar o valor total do crédito presumido em condição suspensiva.
                                    );
            
            _gCBSTot := util.gCBSTot(0                                        // informar o valor total do diferimento.
                                    ,0                                        // informar o valor total de devolução de tributos.
                                    ,PedidosValor_CBS.ascurrency              // informar o valor total da CBS.
                                    ,0                                        // informar o valor total do crédito presumido.
                                    ,0                                        // informar o valor total do crédito presumido em condição suspensiva.
                                    );
                                    
            _gMonoTot     := '';
            _gEstornoCred := '';
            (*
            _gMonoTot := util.gMonoTot(0                                      // informar o valor total do IBS monofásico.
                                      ,0                                      // informar o valor total da CBS monofásico.
                                      ,0                                      // informar o valor total do IBS monofásico sujeito a retenção.
                                      ,0                                      // informar o valor total da CBS monofásica sujeito a retenção.
                                      ,0                                      // informar o valor total do IBS monofásico retido anteriormente.
                                      ,0                                      // informar o valor total da CBS monofásica retida anteriormente.
                                      );

             _gEstornoCred := util.gEstornoCred(0                             // Informar o Valor do IBS a ser estornado
                                               ,0                             // Informar o Valor do CBS a ser estornado
                                               );
             *)
            _IBSCBSTotv130 := '';
            if PedidosValor_BCCBS.AsCurrency > 0 then begin
               _IBSCBSTotv130 := util.IBSCBSTotv130(PedidosValor_BCCBS.AsCurrency   // informar o Valor total da BC do IBS e da CBS.
                                                   ,_gIBSTot                        // informar o XML do grupo de totalização do gIBS se existirem valores.
                                                   ,_gCBSTot                        // informar o XML do grupo de totalização do gCBS se existirem valores.
                                                   ,_gMonoTot                       // informar o XML do grupo de totalização do gMono se existirem valores.
                                                   ,_gEstornoCred);                 // informar o XML do grupo de totalização do gEstornoCred se existirem valores.
            end else begin
               _IBSCBSTotv130 := util.IBSCBSTotv130(0     
                                                   ,''    
                                                   ,''    
                                                   ,''    
                                                   ,'');  
            end;

            total := util.totalRTC(totICMS                                    // informar o XML do grupo ICMSTot.
                                  ,''                                         // informar o XML do grupo ISSQNTot.
                                  ,''                                         // informar o XML do grupo retTrib.
                                  ,PedidosValor_IS.AsCurrency                 // informar o Valor Total do IS.
                                  ,_IBSCBSTotv130                             // informar o XML do grupo IBSCBSTot.
                                  ,PedidosValor_TotalNota.AsCurrency          // informar o Valor total da NF-e com IBS/CBS/IS.
                                  );

            TranspModFrete := PedidosModalidade_Frete.AsString;

            // Dados do transportador.
            Transp        := '';
            Transportador := '';
            Veiculo       := '';
            Reboque       := '';
            Transp_CNPJ   := '';
            Transp_CPF    := '';
            if PedidosTransportador_Codigo.Value <> 0 then begin
               Fornecedores.Locate('Codigo', PedidosTransportador_Codigo.Value , [loCaseInsensitive]);
               Municipios.Locate('Codigo', FornecedoresMunicipio_Codigo.Value, [loCaseInsensitive]);

               if Trim(FornecedoresCNPJ.Value) <> '' then
                  Transp_CNPJ := FornecedoresCNPJ.Value
               else
                  Transp_CPF := FornecedoresCPF.Value;

               transp_xNome     := RemoveCaracterXML(FornecedoresNome.Value);
               transp_xEnder    := Trim(RemoveCaracterXML(FornecedoresRua.Value))+','+Trim(FornecedoresRua_Numero.Value)+' - '+Trim(RemoveCaracterXML(FornecedoresBairro.Value));
               transp_IE        := Trim(FornecedoresInscricao_Estadual.Value);
               transp_xMun      := RemoveCaracterXML(FornecedoresMunicipio.Value);
               transp_UF        := FornecedoresEstado.Value;
               veicTransp_placa := Trim(PedidosTransporte_Placa.AsString);
               veicTransp_UF    := Trim(PedidosTransporte_PlacaUF.AsString);
               veicTransp_RNTC  := Trim(PedidosTransporte_CodigoANTT.AsString);
               Reboque_placa    := Trim(PedidosReboque_Placa.AsString);
               Reboque_UF       := Trim(PedidosReboque_UF.AsString);
               Reboque_RNTC     := Trim(PedidosReboque_ANTT.AsString);
               Vagao_placa      := '';
               Vagao_UF         := '';
               Vagao_RNTC       := '';
               Balsa_placa      := '';
               Balsa_UF         := '';
               Balsa_RNTC       := '';
               Veiculo          := '';
               Reboque          := '';

               Transportador := Util.Transporta(transp_CNPJ, transp_CPF, transp_xNome, transp_IE, transp_xEnder, transp_xMun, transp_UF);

               if ide_Dest = 1 then begin
                  if VeicTransp_placa <> '' then
                     Veiculo := Util.veicTransp(veicTransp_Placa, veicTransp_UF,veicTransp_RNTC);
                  if Reboque_Placa <> '' then
                     Reboque := Util.Reboque(Reboque_Placa, Reboque_UF, Reboque_RNTC);
               end;
            end;

            // Local de entrega quando houver.
            Entrega  := '';

            if Trim(Clientes.FieldByName('Rua_Entrega').AsString) <> '' then begin
               Municipios.Locate('Codigo', ClientesMunicipio_Entrega.Value, [loCaseInsensitive]);
               Paises.Locate('Codigo', ClientesPais_Entrega.Value, [loCaseInsensitive]);
               
               Entrega := Util.localEntregaNT201805(ClientesCNPJ_Entrega.AsString
                                                   ,ClientesCPF_Entrega.AsString
                                                   ,LimpaXML(ClientesRecebedor_Entrega.AsString)
                                                   ,LimpaXML(ClientesRua_Entrega.AsString)
                                                   ,LimpaXML(ClientesRua_EntregaNumero.AsString)
                                                   ,LimpaXML(ClientesRua_ComplEntrega.AsString)
                                                   ,LimpaXML(ClientesBairro_Entrega.AsString)
                                                   ,LimpaXML(ClientesMunicipio_Entrega.AsString)
                                                   ,LimpaXML(MunicipiosNome.AsString)
                                                   ,LimpaXML(ClientesEstado_Entrega.AsString)
                                                   ,ClientesCEP_Entrega.AsString
                                                   ,LimpaXML(ClientesPais_Entrega.AsString)
                                                   ,LimpaXML(PaisesNome.AsString)
                                                   ,ClientesTelefone_Entrega.AsString
                                                   ,LimpaXML(ClientesEmail_Entrega.AsString)
                                                   ,ClientesIE_Entrega.AsString
                                                   );
            end;

            // Dados do Local de Retirada.
            Retirada := '';
            if Trim(Clientes.FieldByName('Rua_Retirada').AsString) <> '' then begin
               Municipios.Locate('Codigo', ClientesMunicipio_Entrega.Value, [loCaseInsensitive]);
               Paises.Locate('Codigo', ClientesPais_Retirada.Value, [loCaseInsensitive]);

               Retirada := Util.LocalRetiradaNT201805(ClientesCNPJ_Retirada.AsString
                                                     ,ClientesCPF_Retirada.AsString
                                                     ,LimpaXML(ClientesExpedidor_Retirada.AsString)
                                                     ,LimpaXML(ClientesRua_Retirada.AsString)
                                                     ,LimpaXML(ClientesRua_NumeroRetirada.AsString)
                                                     ,LimpaXML(ClientesRua_ComplRetirada.AsString)
                                                     ,LimpaXML(ClientesBairro_Retirada.AsString)
                                                     ,ClientesMunicipio_Retirada.AsString
                                                     ,LimpaXML(MunicipiosNome.AsString)
                                                     ,LimpaXML(ClientesEstado_Retirada.AsString)
                                                     ,ClientesCEP_Retirada.AsString
                                                     ,ClientesPais_Retirada.AsString
                                                     ,LimpaXML(PaisesNome.AsString)
                                                     ,ClientesTelefone_Retirada.AsString
                                                     ,LimpaXML(ClientesEmail_Retirada.AsString)
                                                     ,ClientesIE_Retirada.AsString);
            end;

            _Vol   := Util.Vol(PedidosVolume_Quantidade.AsInteger
                              ,RemoveCaracterXML(PedidosVolume_Especie.AsString)
                              ,RemoveCaracterXML(PedidosVolume_Marca.AsString)
                              ,PedidosVolume_Numero.AsString
                              ,PedidosVolume_PesoLiquido.AsFloat
                              ,PedidosVolume_PesoBruto.AsFloat
                              ,''
                              );

            Transp := Util.Transportador2G(TranspModFrete
                                          ,Transportador
                                          ,''
                                          ,Veiculo
                                          ,Reboque
                                          ,Vagao
                                          ,Balsa
                                          ,_Vol
                                          );

            // Dados do intermediador.
            Intermediador := '';
            if (PedidosSaida_Entrada.Asinteger = 1) and (PedidosIntermediador.Asinteger > 0) then begin
               Intermediadores.locate('Codigo', PedidosIntermediador.Asinteger, [loCaseInsensitive]);
               Intermediador := Util.infIntermed(Intermediadores.fieldByName('CNPJ').asstring
                                                ,Intermediadores.fieldByName('Nome').asstring
                                                );
            end;

            // Dados de exportação.
            Exporta      := '';
            UFEmbarq     := '';
            xLocEmbarq   := '';
            xLocDespacho := '';

            if (Trim(ProcessosDOCTipo.AsString) = 'EXPORTAÇÃO') and (PedidosSaida_Entrada.Asinteger = 1) then begin
               UFEmbarq     := RemoveCaracterXML(Trim(ProcessosDOCUF_Desembaraco.AsString));
               xLocEmbarq   := RemoveCaracterXML(Trim(LocalDesembaracoDescricao.AsString));
               xLocDespacho := RemoveCaracterXML(Trim(ProcessosDOCRecinto_Alfandegario.AsString));
               Exporta      := Util.Exporta310(UFEmbarq, xLocEmbarq, xLocDespacho)
            end;

            // Informações adicionais
            InfAdic             := '';
            InfAdic_InfAdiFisco := '';
            (*
            if PedidosNFE_Estorno.AsBoolean then begin
               InfAdic_InfAdiFisco := Trim(RemoveCaracterXML(PedidosInf_Complementares2.AsString));
            end;
            *)
            InfAdic_InfAdiFisco := Trim(RemoveCaracterXML(PedidosInf_Complementares2.AsString));

            InfAdic_InfCpl := Trim(RemoveCaracterXML(PedidosInf_Complementares.AsString))+Trim(RemoveCaracterXML(PedidosInf_Complementares2.AsString));
            InfAdic_InfCpl := RemoveCaracter(#13, '', InfAdic_InfCpl);
            InfAdic_InfCpl := RemoveCaracter(#12, '', InfAdic_InfCpl);
            InfAdic_InfCpl := RemoveCaracter(#10, '', InfAdic_InfCpl);
            InfAdic_InfCpl := RemoveCaracter( #9, '', InfAdic_InfCpl);

            infAdic := Util.InfAdic2G(InfAdic_InfAdiFisco    // informar as informações de interesse do Fisco.
                                     ,InfAdic_infCpl         // informar as informações complementares de interesse do contrib.
                                     ,''                     // informar o XML com o obsCont.
                                     ,''                     // informar o XML com o obsFisco.
                                     ,''                     // informar o XML com o procRef.
                                     );

            // Grupo de informações do contador.
            mAutCNPJ         := TMemo.Create(NotaFiscal_Eletronica2G);
            mAutCNPJ.Visible := False;
            mAutCNPJ.Parent  := NotaFiscal_Eletronica2G;
            mAutCPF          := TMemo.Create(NotaFiscal_Eletronica2G);
            mAutCPF.Visible  := False;
            mAutCPF.Parent   := NotaFiscal_Eletronica2G;

            mAutCNPJ.Lines.Add(Dados.EmpresasAutorizacao_NFECNPJ.Value);
            mAutCPF.Lines.Add(Dados.EmpresasAutorizacao_NFECPF.Value);

            xmlAut := Util.autXML(mAutCNPJ.Lines.Strings[0], '');
            for i := 1 to mAutCNPJ.Lines.Count do begin
                xmlAut := xmlAut + Util.autXML(ApenasNumeros(mAutCNPJ.Lines.Strings[i]), '');
            end;
            for i := 0 to mAutCPF.Lines.Count do begin
                xmlAut := xmlAut + Util.autXML('', ApenasNumeros(mAutCPF.Lines.Strings[i]));
            end;

            // Grupo de informações do responsável técnico.
            RespTec := util.infRespTec('39940892000146', 'EDER/ELISMAR', 'elismar@cybersoftsistemas.com.br', '27998843448', '', '', '');    // Vitoria 
                                           
            // Inicializa grupos não utilizados
            Compra := '';

            // Monta a NF-e
            NFE := Util.NFe202006(Trim(EmpresasNFEletronica_Layout.Value)
                                 ,ChaveNFe
                                 ,Ide
                                 ,emi
                                 ,''
                                 ,dest
                                 ,retirada
                                 ,entrega
                                 ,mDetalhes
                                 ,total
                                 ,transp
                                 ,cobr
                                 ,pagamento
                                 ,infAdic
                                 ,exporta
                                 ,compra
                                 ,''
                                 ,xmlAut
                                 ,RespTec
                                 ,Intermediador);
            Util := nil;
       End;

       Util := nil;
       Screen.Cursor := crDefault;

       // Salvando o conteúdo do memo em um arquivo XML.
       mPasta := Trim(Dados.ConfiguracaoPasta_NFE.Value) + '\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
       
       If Dados.EmpresasMatriz_Filial.AsBoolean = true then
          mPasta := mPasta + '_Matriz'
       else
          mPasta := mPasta + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

       if Dados.ConfiguracaoSeparar_NFE.AsBoolean then begin
          if Dados.PedidosSaida_Entrada.AsInteger = 0 then
             mPasta := mPasta + '\ENTRADAS'
          else
             mPasta := mPasta + '\SAIDAS';
       end;
       if Dados.ConfiguracaoSeparar_NFEMes.AsBoolean then begin
          mPasta := mPasta + '\Ano_'+InttoStr(YearOf(cDataEmissao.Date))+'\'+Trim(NomeMes(MonthOf(cDataEmissao.Date)));
       end;

       mDir := mPasta;

       If not DirectoryExists(mPasta) then ForceDirectories(mPasta);
       mPasta := mPasta + '\NFe_'+Dados.PedidosNFe_CNF.Value+'.xml';

       // Salva o arquivo xml do pedido na pasta temp.
       if not DirectoryExists(Trim(Dados.ConfiguracaoPasta_Temporaria.Value)) then begin
          if Trim(Dados.ConfiguracaoPasta_Temporaria.Value) <> '' then
             ForceDirectories(Trim(Dados.ConfiguracaoPasta_Temporaria.Value))
          else begin
             MessageDlg('A "Pasta temporária" informada nas configurações do sistemas é inválida.'+#13+#13+'Envio cancelado, as notas fiscais não serão enviadas.', mtError, [mbOK], 0);
             cMensagens.Clear;
             Abort;
          end;
       End;   

       if bEnviar.Tag = 0 then begin
          mXMLTemp.Lines.Clear;
          mXMLTemp.Lines.Add(NFE);
          mXMLTemp.Lines.SaveToFile(Trim(Dados.ConfiguracaoPasta_Temporaria.Value)+'\NFe_Temp'+Dados.PedidosNumero.AsString+'.xml');
          mXMLTemp.Destroy;
          mTamArq := TamanhoArquivo((Trim(Dados.ConfiguracaoPasta_Temporaria.Value)+'\NFe_Temp'+Dados.PedidosNumero.AsString+'.xml'));
          mTamArq := roundto(mTamArq/1024, 0);

          // Faz a validação do XML antes do envio para a SEFAZ.
          ValidarXML;
       end else begin
          mPasta := StringReplace(mPasta, '.xml', '_Pedido'+FormatFloat('000000',Dados.PedidosNumero.asinteger)+'.xml', [rfReplaceAll, rfIgnoreCase]);
          mXMLTemp.Lines.Clear;
          mXMLTemp.Lines.Add(NFE);
          mXMLTemp.Lines.SaveToFile(mPasta);
          mXMLTemp.Destroy;
          mTamArq := TamanhoArquivo(mPasta);
          mTamArq := roundto(mTamArq/1024, 0);
          With Dados do begin
               Pedidos.Edit;
                       PedidosNota.Clear;
                       PedidosData_EntradaSaida.Clear;
                       PedidosNfe_cNF.Clear;
                       PedidosNfe_Recibo.Clear;
                       PedidosNfe_DataRecibo.Clear;
                       PedidosNfe_Protocolo.Clear;
                       PedidosNfe_DataProtocolo.Clear;
                       PedidosAguardando.Clear;
               Pedidos.Post;
          end;
       end;
       util := nil;;
       Janela_Processamento.close;
       
       // Verifica se o tamanho do XML é maior que 500kb.
       if mTamArq > 500 then begin
          cMensagens.Lines.Add('Erro no Tamanho do XML: O tamanho máximo permitido é de 500Kb por arquivo e o tamanho do arquivo atual é '+floattostr(mTamArq) + 'Kb' );
          cMensagens.Lines.Add('Reduza o número de itens da nota fiscal e tente novamente...');
          Inc(mQtdErros);
       end;
end;

// Monta os itens da nota o arquivo XML.
Function TNotaFiscal_Eletronica2G.MontaDetalhe(item:integer; i:Integer; Qtde:double; Valor:double): string;
var
   Util: NFe_Util_2G_Interface;
   _produto,
   _DI,
   _Adi,
   _ICMS,
   _ICMSUFDest,
   _PIS,
   _COFINS,
   _PISST,
   _COFINSST,
   _IPI,
   _Imposto,
   _Detalhe,
   _II,
   _Especifico,
   _Exporta,
   _Lote,
   _CredPresumido,
   _gIBSUF,
   _gIBSMun,
   _gCBS,
   _gTribReg,
   _gTribCompraGov,
   _gIBSCBSMono,
   _IBSCBS,
  _gIBSCBS,
   mGTIN,
   mGTINUnidade: WideString;
   mDescricao,
   mDescricaoResto,
   mConsignat,
   mNumChassi,
   mNumSerial,
   mNumMotor,
   mEscala,
   mCNPJ,
   mCodigoProd:String;
   mBCIPI,
   mValorFrete:Real;
   mDesoneracao:Integer;
   mDespesa,
   mDesconto,
   mQtdeTrib,
   mValTrib,
   mQuantidade
  ,mQtdeMono:Double;
begin
      With Dados, dmFiscal do Begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo = :pCodigo)');
           Produtos.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
           Produtos.Open;

           tDetalhe.SQL.Clear;
           tDetalhe.SQL.Add('SELECT Lote');
           tDetalhe.SQL.Add('      ,Quantidade');
           tDetalhe.SQL.Add('      ,Data_Fabricacao = (SELECT DISTINCT Data_Fabricacao FROM ProdutosDetalhe PD WHERE PD.Produto_Codigo = PID.Produto_Codigo AND PD.Lote = PID.Lote)');
           tDetalhe.SQL.Add('      ,Data_Validade   = (SELECT DISTINCT Data_Validade   FROM ProdutosDetalhe PD WHERE PD.Produto_Codigo = PID.Produto_Codigo AND PD.Lote = PID.Lote)');
           tDetalhe.SQL.Add('FROM PedidosItensDetalhe PID');
           tDetalhe.SQL.Add('WHERE Produto_Codigo = :pCodigo AND Pedido = :pPedido AND Saida_Entrada = :pSaiEntra');
           tDetalhe.ParamByName('pCodigo').AsInteger   := PedidosItensCodigo_Mercadoria.AsInteger;
           tDetalhe.ParamByName('pPedido').AsInteger   := PedidosItensPedido.AsInteger;
           tDetalhe.ParamByName('pSaiEntra').AsInteger := PedidosItensSaida_Entrada.AsInteger;
           tDetalhe.Open;

           NCM.SQL.Clear;
           NCM.SQL.Add('SELECT * FROM NCM WHERE(NCM = :pNCM)');
           NCM.ParamByName('pNCM').AsString := PedidositensNCM.AsString;
           NCM.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota');
           TipoNota.Open;
           TipoNota.Locate('Codigo', PedidosTipo_Nota.AsInteger, [loCaseInsensitive]);

           // Remove caracteres de controle como quebra de linha. . .e o código de controle do siscomex.
           mDescricao := Copy(PedidosItensDescricao_Mercadoria.AsString, 1, 120);
           mDescricao := RemoveAcentos(mDescricao);
           mDescricao := RemoveCaracter(#13, '', mDescricao);
           mDescricao := RemoveCaracter(#12, '', mDescricao);
           mDescricao := RemoveCaracter(#10, '', mDescricao);
           mDescricao := RemoveCaracter(#9, '', mDescricao);
           mDescricao := RemoveCaracter('<{'+PedidosItensCodigo_Mercadoria.AsString+'}>', '', mDescricao);
           mDescricao := RemoveCaracterXML(mDescricao);
           mDescricao := Trim(mDescricao);

           mConsignat := ProcessosDOCConsignatario_CNPJ.AsString;
           If mConsignat = '' then mConsignat := '00000000000000';

           // Via de transporte.
           mVia := ProcessosDOCVia_Transporte.AsInteger;
           Util := CoUtil.Create;
           if Adicoes.Locate('Codigo_Mercadoria', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
              if (Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO') and (ProcessosDOCCourrier.AsBoolean = false) then begin
                 if Trim(PedidosItensDI.AsString) <> '' then begin
                    _Adi := Util.adi310(PedidosItensAdicao.AsInteger,
                                        AdicoesSequencia.AsInteger,
                                        AdicoesExportador.AsString,
                                        0,
                                        '');

                    _DI := Util.DI310(PedidosDI.AsString,
                                      FormatDateTime('yyyy-mm-dd', PedidosData_DI.Value),
                                      RemoveCaracterXML(LocalDesembaracoDescricao.AsString),
                                      ProcessosDOCUF_Desembaraco.AsString,
                                      FormatDateTime('yyyy-mm-dd', ProcessosDOCData_DesembaracoDeclaracao.Value),
                                      mVia,
                                      roundto(PedidosItensValor_AFRMM.asfloat * (PedidosItensQuantidade.asFloat/ProdutosQuantidade_Unidade.asfloat), -4),  // Valor da AFRMM.
                                      ProcessosDOCModalidade_Importacao.AsInteger,
                                      mConsignat,
                                      ProcessosDOCConsignatario_UF.AsString,
                                      AdicoesExportador.AsString,
                                      _Adi);
                 end;
              end;
              if (Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO') and (ProcessosDOCCourrier.AsBoolean = false) then begin
                 // Importação por Courrier.
                 if (Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO') and (ProcessosDOCCourrier.AsBoolean = true) then begin
                    _Adi := Util.adi310(1,
                                        PedidosItensSequencia.AsInteger,
                                        PedidosDestinatario_Nome.AsString,
                                        0,
                                        '');

                    _DI := Util.DI310(Copy(Trim(ProcessosDOCNumero_DOC.AsString),1,10),
                                      FormatDateTime('yyyy-mm-dd', PedidosData_DI.AsDateTime),
                                      RemoveCaracterXML(LocalDesembaracoDescricao.AsString),
                                      ProcessosDOCUF_Desembaraco.AsString,
                                      FormatDateTime('yyyy-mm-dd', ProcessosDOCData_DesembaracoDeclaracao.Value),
                                      mVia,
                                      (PedidosItensValor_AFRMM.asCurrency * (PedidosItensQuantidade.asFloat/ProdutosQuantidade_Unidade.asfloat)),  // Valor da AFRMM.
                                      ProcessosDOCModalidade_Importacao.AsInteger,
                                      mConsignat,
                                      ProcessosDOCConsignatario_UF.AsString,
                                      ProcessosDOCFornecedor.AsString,
                                      _Adi);
                 end;
              end;
           end;

           // Detalhe Especifico - COMBUSTIVEIS.
           if ProdutosDetalhe_Especifico.Value = 'C' then begin
              mQtdeMono := iif(TipoNotaVisiveis_QuantidadeItem.AsBoolean, PedidosValor_BCICMSMono.asfloat, 1);
              _Especifico := Util.combNT2023001(ProdutosCodigo_ANP.AsString,           // 01-Código de produto da ANP - Informar 999999999 se o produto não possuir código de produto ANP.
                                                ProdutosDescricao_ANP.AsString,        // 02-Descrição do produto conforme ANP.
                                                ProdutosPercentual_GLP.AsFloat,        // 03-Percentual do GLP derivado do petróleo no produto GLP.
                                                ProdutosPercentual_GLGNn.AsFloat,      // 04-Percentual de Gás Natural Nacional – GLGNn para o produto GLP.
                                                ProdutosPercentual_GLGNi.AsFloat,      // 05-Percentual de Gás Natural Importado – GLGNi para o produto GLP.
                                                ProdutosValor_Partida.AsFloat,         // 06-Valor de partida.
                                                ' ',                                   // 07-Código de autorização / registro do CODIF - Informar apenas quando a UF utilizar o CODIF.
                                                mQtdeMono,                             // 08-Quantidade de combustível faturada à temperatura ambiente.
                                                PedidosDestinatario_Estado.AsString,   // 09-Informar a UF de consumo.
                                                0,                                     // 10-BC da CIDE - Informar a BC da CIDE em quantidade.
                                                0,                                     // 11-Valor da alíquota da CIDE - nformar o valor da alíquota em reais da CIDE.
                                                0,                                     // 12-Valor da CIDE - Informar o valor da CIDE.
                                                ' ',                                   // 13-Informar com os dados do encerrante, informação exigida para emissão de NFC-e. NT 2015/002
                                                ProdutosPercentual_BioDiesel.AsFloat,  // 14-Percentual do índice de mistura do Biodiesel (B100) 
                                                '' );                                  // 15-Percentual do índice de mistura do Biodiesel (B100) 
           end;
           
           // Detalhe Especifico - MEDICAMENTOS.
           if ProdutosDetalhe_Especifico.Value = 'M' then begin
              _Especifico := Util.med400(ProdutosRegistro_ANVISA.AsString, ProdutosPreco_MaxConsumidor.AsCurrency);
           end;

           // Rastreabilidade dos produtos "Lote".
           _Lote := '';
           if tDetalhe.RecordCount > 0 then begin
              _Lote := Util.rastro(tDetalhe.FieldByName('Lote').AsString,
                                   tDetalhe.FieldByName('Quantidade').AsFloat,
                                   tDetalhe.FieldByName('Data_Fabricacao').AsDateTime,
                                   tDetalhe.FieldByName('Data_Validade').AsDateTime,
                                   '');
           end;

           // Detalhe Especifico - ARMAMENTOS.
           if ProdutosDetalhe_Especifico.Value = 'A' then begin
              _Especifico := Util.Arma(0,                                        // Indicador do tipo de arma de fogo:0-Uso permitido / 1-Uso restrito.
                                       ' ',                                      // Número de série da arma.
                                       ' ',                                      // Número de série do cano.
                                       ' ');                                     // Descrição completa da arma, calibre,marca,capacidade,tipo de funcionamento,comprimento etc.
           end;

           // Detalhe Especifico - VEÍCULOS NOVOS.
           If (ProdutosDetalhe_Especifico.Value = 'V') then begin
              tDetalhes.SQL.Clear;
              tDetalhes.SQL.Add('SELECT  *');
              tDetalhes.SQL.Add('       ,Nome_Cor = (SELECT Descricao FROM Cores WHERE Codigo = Cor)');
              tDetalhes.SQL.Add('FROM   ProdutosSeriais');
              tDetalhes.SQL.Add('WHERE  Pedido = :pPedido');
              tDetalhes.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
              tDetalhes.Open;

              mNumChassi := '';
              If tDetalhes.FieldByName('Tipo').Value  = 'CHASSI' then mNumChassi := tDetalhes.FieldByName('Numero').Value;
              If tDetalhes.FieldByName('Tipo2').Value = 'CHASSI' then mNumChassi := tDetalhes.FieldByName('Numero2').Value;
              If tDetalhes.FieldByName('Tipo3').Value = 'CHASSI' then mNumChassi := tDetalhes.FieldByName('Numero3').Value;

              mNumSerial := '';
              If tDetalhes.FieldByName('Tipo').Value  = 'SERIAL' then mNumSerial := tDetalhes.FieldByName('Numero').Value;
              If tDetalhes.FieldByName('Tipo2').Value = 'SERIAL' then mNumSerial := tDetalhes.FieldByName('Numero2').Value;
              If tDetalhes.FieldByName('Tipo3').Value = 'SERIAL' then mNumSerial := tDetalhes.FieldByName('Numero3').Value;

              mNumMotor:= '';
              If tDetalhes.FieldByName('Tipo').Value  = 'MOTOR'  then mNumMotor := tDetalhes.FieldByName('Numero').Value;
              If tDetalhes.FieldByName('Tipo2').Value = 'MOTOR'  then mNumMotor := tDetalhes.FieldByName('Numero2').Value;
              If tDetalhes.FieldByName('Tipo3').Value = 'MOTOR'  then mNumMotor := tDetalhes.FieldByName('Numero3').Value;

              _Especifico := Util.VeicProd2G(PedidosOperacao_Veiculo.AsInteger,
                                             mNumChassi,
                                             tDetalhes.FieldByName('Cor').AsString,
                                             tDetalhes.FieldByName('Nome_Cor').AsString,
                                             Produtos.FieldByName('Potencia_Motor').AsString,
                                             Produtos.FieldByName('Cilindradas').AsString,
                                             Produtos.FieldByName('Peso_Liquido').AsString,
                                             Produtos.FieldByName('Peso_Bruto').AsString,
                                             mNumSerial,
                                             Produtos.FieldByName('Tipo_Combustivel').AsString,
                                             mNumMotor,
                                             Produtos.FieldByName('Capacidade_Tracao').AsString,
                                             Produtos.FieldByName('Distancia_Eixos').AsString,
                                             tDetalhes.FieldByName('Ano_Modelo').AsString,
                                             tDetalhes.FieldByName('Ano_Fabricacao').AsString,
                                             Produtos.FieldByName('Tipo_Pintura').AsString,
                                             Produtos.FieldByName('Tipo_Veiculo').AsString,
                                             Produtos.FieldByName('Especie_Veiculo').AsString,
                                             Produtos.FieldByName('Condicao_VIN').AsString,
                                             Produtos.FieldByName('Condicao_Veiculo').AsString,
                                             Produtos.FieldByName('Codigo_MarcaModelo').AsString,
                                             tDetalhes.FieldByName('Cor_DENATRAN').AsString,
                                             Produtos.FieldByName('Passageiros').AsString,
                                             Pedidos.FieldByName('Veiculo_Restricao').AsString)
           End;

           // Informações complementares do produto "Resto da Descrição que não cabe no XML".
           mDescricaoResto := Copy(PedidosItensDescricao_Mercadoria.AsString, 121, 500);
           mDescricaoResto := RemoveAcentos(mDescricaoResto);
           mDescricaoResto := RemoveCaracter(#13, '', mDescricaoResto);
           mDescricaoResto := RemoveCaracter(#12, '', mDescricaoResto);
           mDescricaoResto := RemoveCaracter(#10, '', mDescricaoResto);
           mDescricaoResto := RemoveCaracter(#9, '', mDescricaoResto);
           mDescricaoResto := RemoveCaracter('<{'+PedidosItensCodigo_Mercadoria.AsString+'}>', '', mDescricaoResto);
           mDescricaoResto := RemoveCaracterXML(mDescricaoResto);
           mDescricaoResto := Trim(mDescricaoResto);

           mCodigoProd := Trim(PedidosItensCodigo_Mercadoria.AsString);
           if (ConfiguracaoNFE_DANFE_CodigoProduto.asstring = 'F') and (trim(PedidosItensCodigo_Fabricante.AsString) <> '') then begin
              mCodigoProd := Trim(PedidosItensCodigo_Fabricante.AsString);
           end;
           
           If Trim(PedidosItensNCM.AsString) = '' then begin
              Inc(mQtdErros);
              cMensagens.Lines.Add('       Erro no Item '+mCodigoProd + ': Falta informar o número da "NCM"');
           End;

           mValorFrete := 0;
           If PedidosTotal_Frete.Value > 0 then begin
              mValorFrete := PedidosItensValor_Frete.AsFloat;
           End;

           mGTIN := Trim(ProdutosGTIN.AsString);
           if Trim(ProdutosGTIN.AsString) = '' then begin
              mGTIN := 'SEM GTIN';
           end;

           mGTINUnidade := Trim(ProdutosGTIN_Unidade.AsString);
           if mGTINUnidade = '' then begin
              mGTINUnidade := 'SEM GTIN';
           end;

           mDespesa := PedidosItensValor_Despesa.Value;
           If PedidosItensQuantidade.AsFloat > 0 then begin
              mDespesa := Roundto(PedidosItensValor_Despesa.Value * (PedidosItensQuantidade.AsFloat/ProdutosQuantidade_Unidade.AsFloat), -2);
           End;

           mQuantidade := PedidosItensQuantidade.AsFloat;
           mQtdeTrib   := iif(TipoNotaVisiveis_QuantidadeItem.AsBoolean, PedidosItensQuantidade.asfloat, 0);
           mValTrib    := PedidosItensValor_Unitario.Value;
           
           // Quantidade tributada.
           if (ProdutosQuantidade_Volumes.AsFloat <> 1) then begin
              if ProdutosTipo_Conversao.Value = 'M' then begin
                 mQtdeTrib := PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Volumes.Value;
              end else begin
                 mQtdeTrib := PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Volumes.Value;
              end;
              mValTrib  := PedidosItensValor_Total.AsCurrency / mQtdeTrib;
           end;

           If TipoNotaVisiveis_QuantidadeItem.AsBoolean <> true then begin
              mQuantidade := 0
           End;

           mDesconto := PedidosItensDesconto_Valor.Value * mQuantidade;

           if Trim(ProcessosDOC.FieldByName('Tipo').AsString) = 'EXPORTAÇÃO' then begin
              if trim(PedidosItensNota_Referencia.Value) <> '' then begin
                 _Exporta := Util.detExport('', RemoveCaracterXML(ProcessosDOCRE_Numero.AsString), PedidosItensNota_Referencia.Value, RemoveCaracter(',', '.', FormatFloat('0.0000', PedidosItensQuantidade.AsFloat)));
              end;
           end;

           mEscala := 'N';
           If ProdutosEscala_Relevante.AsBoolean then begin
              mEscala := 'S';
           End;

           if PedidosItensValor_ICMSPresumido.Ascurrency > 0 then begin
              _CredPresumido := Util.CredPresumido(PedidosItensCodigo_CredPres.AsString          // 01.Informar o Código de Benefício Fiscal de Crédito Presumido utilizado pela UF.
                                                  ,0                                             // 02.Informar o percentual do crédito presumido relativo ao código do crédito presumido informado.
                                                  ,0                                             // 03.Informar o valor do crédito presumido relativo ao código do crédito presumido informado.
                                                  );
           end;

           // Monta a TAG dos produtos.
           _produto := Util.produtoNT2019001(mCodigoProd                                                           // 01.informar o código do produto ou servi o.
                                            ,mGTIN                                                                 // 02.informar o GTIN (Global Trade Item Number) do produto, antigo c digo EAN ou c digo de barras.
                                            ,mDescricao                                                            // 03.informar a descrição do produto ou servi o.
                                            ,PedidosItensNCM.Value                                                 // 04.nformar o Codigo NCM com 8 d gitos.
                                            ,''                                                                    // 05.Codifica o NVE-Nomenclatura Valor Aduaneiro e Estat stica, Codifica  o opcional que detalha alguns NCM.
                                            ,PedidosItensCEST.Value                                                // 06.informar Código Especificador da Substitui  o Tribut ria - CEST.
                                            ,mEscala                                                               // 07.Indicador de Produção em escala relevante.
                                            ,ProdutosCNPJ_Fabricante.AsString                                      // 08.CNPJ do Fabricante da Mercadoria, obrigat rio para produto em escala N O relevante.
                                            ,PedidosItensBeneficio_Fiscal.AsString                                 // 09.Código de Benef cio Fiscal utilizado pela UF, aplicado ao item.
                                            ,Trim(NCMCodigo_EXTIPI.AsString)                                       // 10.EXTIPI.
                                            ,PedidosItensNatureza_Codigo.AsInteger                                 // 11.C digo da CFOP.
                                            ,RemoveCaracterXML(PedidosItensUnidade_Medida.AsString)                // 12.informar a unidade de comercialização do produto.
                                            ,FormatFloat('0.0000', mQuantidade)                                    // 13.nformar a quantidade de comercialização do do produto.
                                            ,FormatFloat('0.0000000000', PedidosItensValor_Unitario.Value)         // 14.Informar o valor unitario de comercializa o do produto.
                                            ,PedidosItensValor_Total.AsCurrency                                    // 15.informar o valor total bruto do produto ou servi os.
                                            ,RemoveCaracterXML(mGTINUnidade)                                       // 16.informar o GTIN (Global Trade Item Number) da unidade de tributa  o do produto.
                                            ,RemoveCaracterXML(ProdutosUnidade_Origem.Value)                       // 17.informar a unidade de tributação do produto.
                                            ,FormatFloat('0.0000', Roundto(mQtdeTrib, -4))                         // 18.Qtde Tributa  o.
                                            ,FormatFloat('0.0000000000', mValTrib)                                 // 19.Valor Unitario de tributação.
                                            ,mValorFrete                                                           // 20.Valor Frete.
                                            ,0                                                                     // 21.Valor Seguro.
                                            ,mDesconto                                                             // 22.Valor Desconto.
                                            ,mDespesa                                                              // 23.Valor Outros.
                                            ,1                                                                     // 24.Este campo dever  ser preenchido com: 0 - o valor do item (vProd) n o comp e o valor total da NF-e (vProd).
                                            ,_DI                                                                   // 25.informar o XML do grupo DI - dados da importa  o nas opera  es de importa  o.
                                            ,_Exporta                                                              // 26.Detalhamento da exportação.
                                            ,_Especifico                                                           // 27.informar o XML do grupo - detalhamento de espec fico.
                                            ,PedidosItensPO.AsString                                               // 28.informar o n mero do pedido de compra, o campo   de livre uso do emissor.
                                            ,PedidosItensOrdem.AsString                                            // 29.informar o n mero do item do pedido de compra, o campo   de livre uso do emissor.
                                            ,''                                                                    // 30.informar o N mero de controle da FCI - Ficha de Conte do de Importa  o com formata  o.
                                            ,_lote                                                                 // 31.N mero de controle da FCI - Ficha de Conte do de Importa  o.
                                            ,_CredPresumido                                                        // 32.Informar o grupo de Informa  es do Cr dito Presumido.
                                            );
                                   
           mDesoneracao := 0;
           if (PedidosItensSaida_Entrada.Value = 1) and (ClientesDesoneracao.AsInteger > 0) then begin
              mDesoneracao := ClientesDesoneracao.AsInteger;
           end;

           // ICMS Normal.
           if (PedidosItensCodigoTrib_TabB.value <> '15') and (PedidosItensCodigoTrib_TabB.value <> '61') then begin
              if (PedidosItensCodigoTrib_TabB.value <> '51') then begin
                  if (PedidosItensCodigoTrib_TabB.value <> '60') and (PedidosItensCodigoTrib_TabB.value <> '500') then begin
                     _ICMS := Util.icmsNT2023004(PedidosItensCodigoTrib_TabA.Value,                                              // Origem da mercadoria.
                                                 PedidosItensCodigoTrib_TabB.Value,                                              // Código CST.
                                                 PedidosItensModalidade_BCICMS.Value,                                            // Modalidade de determinação da BC do ICMS.
                                                 PedidosItensAliquota_ICMSReducao.Value,                                         // Percentual de redução da BC do ICMS da operação própria.
                                                 PedidosItensValor_BCICMSOper.Value,                                             // Valor da BC do ICMS do ICMS da operação própria.
                                                 PedidosItensAliquota_ICMSOper.Value,                                            // Alíquota do ICMS do ICMS da operação própria.
                                                 PedidosItensValor_ICMSOper.Value,                                               // Valor do ICMS do ICMS da operação própria.
                                                 PedidosItensModalidade_BCICMSST.Value,                                          // Modalidade de determinação da BC do ICMS ST.
                                                 PedidosItensAliquota_MVA.Value,                                                 // Percentual da Margem de Valor Adicionado ICMS ST.
                                                 PedidosItensReducao_ICMSST.Value,                                               // Percentual de redução da BC ICMS ST.
                                                 PedidosItensValor_BCICMSSub.Value,                                              // Valor da BC do ICMS ST.
                                                 PedidosItensAliquota_ICMSSub.Value,                                             // Alíquota do ICMS ST.
                                                 PedidosItensValor_ICMSSub.Value,                                                // Valor do ICMS ST.
                                                 PedidosItensMedia_BCR.value,                                                    // Valor da BC do ICMS ST retido.
                                                 PedidosItensValor_ICMSSubAnt.Value,                                             // Valor do ICMS ST retido.
                                                 0,                                                                              // Valor da BC do ICMS ST da UF Destino.
                                                 0,                                                                              // Valor do ICMS ST da UF destino.
                                                 mDesoneracao,                                                                   // Motivo da desoneração do ICMS.
                                                 0,                                                                              // Percentual da BC operação própria.
                                                 '',                                                                             // UF para qual é devido o ICMS ST.
                                                 0,                                                                              // Alíquota aplicável de cálculo do crédito (Simples Nacional).
                                                 0,                                                                              // Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (SIMPLES NACIONAL).
                                                 PedidosItensValor_ICMSDesonerado.Value,                                         // Valor do ICMS da desoneração, deve ser informado quando em conjunto com motDesICMS.
                                                 PedidosItensValor_ICMSOper.Ascurrency - PedidosItensValor_ICMSDif.Ascurrency,   // Valor do ICMS da operação que não será diferido.
                                                 PedidosItensAliquota_ICMSDif.AsFloat,                                           // Percentual do diferimento.
                                                 PedidosItensValor_ICMSDif.Ascurrency,                                           // Valor do ICMS que será diferido.
                                                 iif(PedidosItensValor_FCP.Value > 0, PedidosItensValor_BCFCP.Value, 0),         // Valor da Base de Cálculo do FCP.
                                                 iif(PedidosItensDIFAL_Valor.Value > 0, 0, PedidosAliquota_FCP.Value),           // Percentual do FCP Nota: Percentual máximo de 2%.
                                                 iif(PedidosItensDIFAL_Valor.Value > 0, 0, PedidosItensValor_FCP.Value),         // Valor do FCP.
                                                 PedidosItensValor_BCFCPST.Value,                                                // Valor da Base de Cálculo do FCP retido por Substituição Tributária.
                                                 PedidosAliquota_FCPST.Value,                                                    // Percentual do FCP retido por Substituição Tributária.
                                                 PedidosItensValor_FCPST.Value,                                                  // Valor do FCP retido por Substituição Tributária.
                                                 0,                                                                              // Valor da Base de Cálculo do FCP retido anteriormente por Substituição Tributária.
                                                 0,                                                                              // Percentual do FCP retido anteriormente por Substituição Tributária.
                                                 0,                                                                              // Valor do FCP retido anteriormente por Substituição Tributária.
                                                 0,                                                                              // Alíquota suportada pelo Consumidor Final.
                                                 0,                                                                              // Percentual do diferimento do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
                                                 0,                                                                              // Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) diferido.
                                                 0,                                                                              // Valor da Base de Cálculo do FCP.
                                                 0,                                                                              // Valor da Base de Cálculo do FCP retido por Substituição Tributária.
                                                 0,                                                                              // Motivo da desoneração do ICMS- ST.
                                                 0,                                                                              // Indica se o valor do ICMS desonerado deduz do valor do item. 0=não deduz /1=deduz.
                                                 '');                                                                            // Código de Benefício Fiscal utilizado pela UF, aplicado ao item quando houver RBC.informar somente quando CST=51 e cumular com diferimento.
                  end;
              end else begin
                  _ICMS := Util.icmsNT2023004(PedidosItensCodigoTrib_TabA.Value,                                                 // Origem da mercadoria.
                                              PedidosItensCodigoTrib_TabB.Value,                                                 // Código CST.
                                              PedidosItensModalidade_BCICMS.Value,                                               // Modalidade de determinação da BC do ICMS.
                                              PedidosItensAliquota_ICMSReducao.Value,                                            // Percentual de redução da BC do ICMS da operação própria.
                                              PedidosItensValor_BCICMSOper.Value,                                                // Valor da BC do ICMS do ICMS da operação própria.
                                              PedidosItensAliquota_ICMSOper.Value,                                               // Alíquota do ICMS do ICMS da operação própria.
                                              PedidosItensValor_ICMSDif.ascurrency,                                              // Valor do ICMS do ICMS da operação própria.
                                              PedidosItensModalidade_BCICMSST.Value,                                             // Modalidade de determinação da BC do ICMS ST.
                                              PedidosItensAliquota_MVA.Value,                                                    // Percentual da Margem de Valor Adicionado ICMS ST.
                                              PedidosItensReducao_ICMSST.Value,                                                  // Percentual de redução da BC ICMS ST.
                                              PedidosItensValor_BCICMSSub.Value,                                                 // Valor da BC do ICMS ST.
                                              PedidosItensAliquota_ICMSSub.Value,                                                // Alíquota do ICMS ST.
                                              PedidosItensValor_ICMSSub.Value,                                                   // Valor do ICMS ST.
                                              PedidosItensMedia_BCR.value,                                                       // Valor da BC do ICMS ST retido.
                                              PedidosItensValor_ICMSSubAnt.Value,                                                // Valor do ICMS ST retido.
                                              0,                                                                                 // Valor da BC do ICMS ST da UF Destino.
                                              0,                                                                                 // Valor do ICMS ST da UF destino.
                                              mDesoneracao,                                                                      // Motivo da desoneração do ICMS.
                                              0,                                                                                 // Percentual da BC operação própria.
                                              '',                                                                                // UF para qual é devido o ICMS ST.
                                              0,                                                                                 // Alíquota aplicável de cálculo do crédito (Simples Nacional).
                                              0,                                                                                 // Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (SIMPLES NACIONAL).
                                              PedidosItensValor_ICMSDesonerado.Value,                                            // Valor do ICMS da desoneração, deve ser informado quando em conjunto com motDesICMS.
                                              PedidosItensValor_ICMSOper.Ascurrency,                                             // Valor do ICMS da operação que não será diferido.
                                              PedidosItensAliquota_ICMSDif.AsFloat,                                              // Percentual do diferimento.
                                              PedidosItensValor_ICMSOper.AsCurrency - PedidosItensValor_ICMSDif.ascurrency,      // Valor do ICMS que será diferido.
                                              iif(PedidosItensValor_FCP.Value > 0, PedidosItensValor_BCFCP.Value, 0),            // Valor da Base de Cálculo do FCP.
                                              iif(PedidosItensDIFAL_Valor.Value > 0, 0, PedidosAliquota_FCP.Value),              // Percentual do FCP Nota: Percentual máximo de 2%.
                                              iif(PedidosItensDIFAL_Valor.Value > 0, 0, PedidosItensValor_FCP.Value),            // Valor do FCP.
                                              PedidosItensValor_BCFCPST.Value,                                                   // Valor da Base de Cálculo do FCP retido por Substituição Tributária.
                                              PedidosAliquota_FCPST.Value,                                                       // Percentual do FCP retido por Substituição Tributária.
                                              PedidosItensValor_FCPST.Value,                                                     // Valor do FCP retido por Substituição Tributária.
                                              0,                                                                                 // Valor da Base de Cálculo do FCP retido anteriormente por Substituição Tributária.
                                              0,                                                                                 // Percentual do FCP retido anteriormente por Substituição Tributária.
                                              0,                                                                                 // Valor do FCP retido anteriormente por Substituição Tributária.
                                              0,                                                                                 // Alíquota suportada pelo Consumidor Final.
                                              0,                                                                                 // Percentual do diferimento do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
                                              0,                                                                                 // Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) diferido.
                                              0,                                                                                 // Valor da Base de Cálculo do FCP.
                                              0,                                                                                 // Valor da Base de Cálculo do FCP retido por Substituição Tributária.
                                              0,                                                                                 // Motivo da desoneração do ICMS- ST.
                                              0,                                                                                 // Indica se o valor do ICMS desonerado deduz do valor do item. 0=não deduz /1=deduz.
                                              '');                                                                               // Código de Benefício Fiscal utilizado pela UF, aplicado ao item quando houver RBC.informar somente quando CST=51 e cumular com diferimento.
              end;
           end else begin
               if PedidosItensCodigoTrib_TabB.value = '15' then begin
                  mQtdeMono := iif(TipoNotaVisiveis_QuantidadeItem.asboolean, PedidosItensValor_BCICMSMono.asfloat, 1);
                  _ICMS := Util.icms15(PedidosItensCodigoTrib_TabA.Value                       // 1-Origem da mercadoria
                                      ,mQtdeMono                                               // 2-Quantidade tributada.
                                      ,PedidosItensPercentual_ICMSMono.asfloat                 // 3-Alíquota ad rem do ICMS, estabelecida na legislação para o produto.
                                      ,PedidosItensValor_ICMSMono.ascurrency                   // 4-Valor do ICMS próprio.
                                      ,roundto(PedidosItensValor_BCICMSMonoRet.asfloat, -2)    // 5-Quantidade tributada sujeitoa retenção.
                                      ,PedidosItensPercentual_ICMSMono.asfloat                 // 6-Alíquota ad rem do imposto com retenção.
                                      ,PedidosItensValor_ICMSMonoRet.asfloat                   // 7-Valor do ICMS com retenção.
                                      ,0                                                       // 8-Percentual de redução do valor da alíquota adrem do ICMS.
                                      ,0 );                                                    // 9-Motivo da redução do adrem. Informar o motivo da redução quando o campo anterior estiver preenchido.
               end;
               if PedidosItensCodigoTrib_TabB.value = '61' then begin
                  _ICMS := Util.icms61(PedidosItensCodigoTrib_TabA.Value                       // 1-Origem da mercadoria
                                      ,PedidosItensValor_BCICMSMonoRet.ascurrency              // 2-Quantidade tributada retida anteriormente.
                                      ,PedidosItensPercentual_ICMSMono.asfloat                 // 3-Alíquota ad rem do ICMS, estabelecida na legislação para o produto.
                                      ,PedidosItensValor_ICMSMonoRet.ascurrency);              // 4-Valor do ICMS próprio.
               end;
           end;

           if (PedidosItensCodigoTrib_TabB.value = '60') or (PedidosItensCodigoTrib_TabB.value = '500') then begin
              // Grupo de ICMS Para CST 60/500.
              _ICMS := Util.ICMSEfetNT201805(PedidosItensCodigoTrib_TabA.Value,                // Código da origem da mercadoria:.
                                             PedidosItensCodigoTrib_TabB.Value,                // CST da operação:.
                                             PedidosItensMedia_BCR.value,                      // Valor da BC do ICMS ST retido anteriormente.É o valor que vem informado na tag vBCST da nota de compra.
                                             PedidosItensAliquota_ICMSSubAnt.value,            // Alíquota suportada pelo Consumidor Final. Deve ser informada a alíquota do cálculo do ICMS-ST, já incluso o FCP caso incida sobre a mercadoria.
                                             PedidosItensValor_ICMSAnt.value,                  // Valor do ICMS Próprio do Substituto cobrado em operação anterior.É o valor que vem informado na tag vICMS da nota de compra.
                                             PedidosItensValor_ICMSSubAnt.Value,               // informar o Valor do ICMS ST retido anteriormente.É o valor que vem informado na tag vICMSST da nota de compra.
                                             0,                                                // informar o Valor da Base de Cálculo do FCP retido anteriormente por Substituição Tributária.
                                             0,                                                //
                                             0,                                                //
                                             0,                                                //
                                             0,                                                //
                                             0,                                                //
                                             0,                                                //
                                             0,                                                //
                                             0);                                               //
           end;

           // ICMS Destino (Diferencial de alíquota - DIFAL).
           if PedidosItensDIFAL_Valor.Value > 0 then begin
              _ICMSUFDest := Util.ICMSUFDest400(PedidosItensValor_BCDIFAL.Value,               // 01. Valor da Base de Cálculo do ICMS na UF de destino.
                                                PedidosItensValor_BCFCP.Value,                 // 02. Informar o Valor da Base de Cálculo do FCP na UF Destino
                                                PedidosItensFCP_Aliquota.Value,                // 03. Percentual adicional inserido na alíquota interna da UF de destino,(FCP) naquela UF.
                                                PedidosItensAliquota_ICMSDest.Value,           // 04. Alíquota adotada nas operações internas na UF de destino.
                                                PedidosItensAliquota_ICMSOper.Value,           // 05. Alíquota interestadual das UF envolvidas.
                                                ConfiguracaoDIFAL_ICMSPart.Value,              // 06. Percentual de ICMS Interestadual para a UF de destino.
                                                PedidosItensValor_FCP.Value,                   // 07. Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino.
                                                PedidosItensDIFAL_ValorDest.Value,             // 08. Valor do ICMS Interestadual para a UF de destino, já considerando o valor do ICMS relativo FCP.
                                                PedidosItensDIFAL_ValorOrig.Value);            // 09. Valor do ICMS Interestadual para a UF do remetente.
           end;
           
           // PIS.
           _PIS := Util.PIS(PedidosItensCSTPIS.Value,                                          // 01. Código de Situação Tributária do PIS.
                            PedidosItensValor_BCPIS.AsFloat,                                   // 02. Valor da BC do PIS.
                            PedidosItensAliquota_PIS.Value,                                    // 03. Alíquota percentual do PIS.
                            PedidosItensValor_PIS.Value,                                       // 04. Valor do PIS.
                            PedidosItensValor_BCPIS.AsFloat,                                   // 05. Quantidade vendida.
                            0);                                                                // 06. Alíquota do PIS em reais.
                                                                                              
           // PIS quando CST 05.
           _PISST := '';
           if PedidosItensCSTPIS.asstring = '05' then begin
              _PISST := util.PISSTNT2020005(PedidosItensValor_BCPIS.AsFloat                    // 01. Informar o Valor da BC do PIS ST, este campo deve ser informado em caso de alíquota ad valorem.
                                           ,PedidosItensAliquota_PIS.asfloat                   // 02. Informar a alíquota percentual do PIS ST, este campo deve ser informado em caso de alíquota ad valorem.
                                           ,PedidosItensValor_PISST.Value                      // 03. Informar o Valor do PIS ST.
                                           ,0                                                  // 04. Informar a quantidade vendida, este campo deve ser informado em caso de alíquota específica.
                                           ,0                                                  // 05. Informar a alíquota do PIS ST em reais, este campo deve ser informado em caso de alíquota específica.
                                           ,0);                                                // 06. Indica se o valor do PISST compõe o valor total da NF-e 0=Valor do PISST não compõe / 1=Valor do PISST compõe.
           end;                    
           
           // COFINS.
           _COFINS := Util.COFINS(PedidosItensCSTCOFINS.Value,                                 // 01. Código de Situação Tributária do COFINS.
                                  PedidosItensValor_BCPIS.AsFloat,                             // 02. Valor da BC do COFINS.
                                  PedidosItensAliquota_COFINS.Value,                           // 03. Alíquota percentual do COFINS.
                                  PedidosItensValor_COFINS.Value,                              // 04. Valor do COFINS.
                                  PedidosItensValor_BCPIS.AsFloat,                             // 05. Quantidade vendida.
                                  0);                                                          // 06. Alíquota do COFINS em reais.

           // COFINS quando para CST 05.
           _COFINSST := '';
           if PedidosItensCSTCOFINS.asstring = '05' then begin
              _COFINSST := util.COFINSSTNT2020005(PedidosItensValor_BCPIS.AsFloat              // 01. Informar o Valor da BC do COFINS ST, este campo deve ser informado em caso de alíquota ad valorem.
                                                 ,PedidosItensAliquota_COFINS.asfloat          // 02. Informar a alíquota percentual da COFINS ST, este campo deve ser informado em caso de alíquota ad valorem.
                                                 ,PedidosItensValor_COFINSST.Value             // 03. Informar o Valor da COFINS ST.
                                                 ,0                                            // 04. Informar a quantidade vendida, este campo deve ser informado em caso de alíquota específica.
                                                 ,0                                            // 05. Informar a alíquota da COFINS ST em reais, este campo deve ser informado em caso de alíquota específica.
                                                 ,0);                                          // 06. Indica se o valor do COFINSST compõe o valor total da NF-e 0=Valor da COFINSST não compõe / 1=Valor da COFINSST compõe.
           end;                    

           // IPI.
           mBCIPI := PedidosItensValor_BCIPI.Value;
           mCNPJ := '';
           if ProdutosFabricante.AsInteger > 0 then begin
              if Fornecedores.Locate('Codigo', ProdutosFabricante.AsInteger, [loCaseInsensitive]) then begin
                 mCNPJ := Fornecedores.FieldByName('CNPJ').AsString;
              end;   
           end;
           
           _IPI := Util.IPI400(mCNPJ,                                                                       // CNPJ do produtor.
                               Trim(NCMSelo_IPI.Value),                                                     // Selo do IPI.
                               0,                                                                           // Quantidade de selos.
                               Trim(TipoNotaEnquadramento_IPI.AsString),                                    // Código do enquadramento IPI.
                               PedidosItensCSTIPI.Value,                                                    // Código da situação tributária do IPI.
                               mBCIPI,                                                                      // Valor da base de calculo do IPI.
                               PedidosItensAliquota_IPI.Value,                                              // Aliquota do IPI.
                               PedidosItensTotal_IPI.Value,                                                 // Valor do IPI.
                               iif(PedidosItensTotal_IPI.Value <> 0,ProdutosQuantidade_Unidade.Value, 0),   // Informar o Valor por Unidade Tributável.
                               ProdutosValor_IPI.Value);

           // II.
           if PedidosSaida_Entrada.Value = 0 then begin 
              _II := Util.II(PedidosItensValor_BCII.Value,
                             mDespesa,
                             Roundto(PedidosItensValor_II.asfloat * (mQuantidade / ProdutosQuantidade_Unidade.AsFloat), -2),
                             0);
           end else begin
              if not TipoNotaDevolucao_Importacao.AsBoolean then begin
                 _II := Util.II(0, 0, 0, 0);
              end else begin
                 _II := Util.II(PedidosItensValor_BCII.Value * PedidosItensQuantidade.AsFloat,
                                mDespesa,
                                roundto(PedidosItensValor_II.asfloat, -2),
                                0);
                 
              end;
           end;
                          
           //mAnalise.Lines.Add(floattostr(Roundto(PedidosItensValor_Despesa.asfloat * PedidosItensQuantidade.asfloat, -4)));
           //mAnalise.Lines.Add(floattostr(Roundto(PedidosItensValor_BCIBS.asfloat, -4)));
           mAnalise.Lines.Add(floattostr(Roundto(PedidosItensValor_IBS.asfloat, -4)));
           //mAnalise.Lines.Add(floattostr(Roundto(PedidosItensValor_CBS.asfloat, -4)));
           //mAnalise.Lines.Add(floattostr(Roundto(PedidosItensValor_BCCBS.asfloat, -4)));
           
           // IBS.              
           _gIBSUF := '';
           _gIBSUF := util.gIBSUF(PedidosItensAliquota_IBS.AsFloat          // Informar a alíquota do IBS de competência das UF.
                                 ,0                                         // 
                                 ,0                                         // 
                                 ,0                                         // 
                                 ,0                                         // 
                                 ,0                                         // 
                                 ,PedidosItensValor_IBS.ascurrency          // 
                                 );

           _gIBSMun := '';
           _gIBSMun := util.gIBSMun(0                                       // Informar a alíquota do IBS de competência das UF.
                                   ,0                                       // 
                                   ,0                                       // 
                                   ,0                                       // 
                                   ,0                                       // 
                                   ,0                                       // 
                                   ,0                                       // Informar o Valor do IBS de competência do Município.
                                   );

           _gCBS := '';
           _gCBS := util.gCBS(PedidosItensAliquota_CBS.AsFloat              // Informar a alíquota do CBS.
                             ,0                                             // informaro o grupo de informações do Diferimento para CST=510-Diferimento ou CST=515-Diferimento com redução de alíquota.
                             ,0                                             // 
                             ,0                                             // 
                             ,0                                             // 
                             ,0                                             // 
                             ,PedidosItensValor_CBS.ascurrency              // Informar o Valor do CBS Valor do CBS (vCBS) deverá ser resultante de: vCBS = (gIBSCBS/vBC x (pCBS / 100)) - vDif - vDevTrib.
                             );                                       
                                                                 
           _gTribReg       := '';
           _gTribCompraGov := '';
           //_gTribReg       := util.gTribRegular(PedidosItensCSTCBS.asstring,'000',0,0,0,0,0,0);
           //_gTribCompraGov := util.gTribCompraGov(0,0,0,0,0,0);

          _gIBSCBSMono := '';
          {
          _gIBSCBSMono := util.gIBSCBSMono(0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0
                                          ,0);
           }
           _gIBSCBS := '';
           _gIBSCBS := util.gIBSCBSv130(PedidosItensValor_BCCBS.AsCurrency            // Informar a Base de cálculo do IBS e CBS.
                                       ,_gIBSUF                                       // Informar o grupo gIBSUF - informações da tributação do IBS da UF.
                                       ,_gIBSMun                                      // Informar o grupo gIBSMun - informações da tributação do IBS do Município.
                                       ,PedidosItensValor_IBS.AsCurrency              // Informar o valor do IBS (soma do vIBSUF + vIBSMun) 
                                       ,_gCBS                                         // Informar o grupo gCBS - informações da tributação do CBS.
                                       ,_gTribReg                                     // Informar o grupo gTribRegular nas operações com benefício fiscal condicional.
                                       ,_gTribCompraGov                               // Informar o grupo gTribCompraGov quando informado o grupo gCompraGov - Compra Governamental.
                                       );

           _IBSCBS  := '';
           if (PedidosItensCSTCBS.value = '000') or (PedidosItensCSTCBS.value = '200') or (PedidosItensCSTCBS.value = '510') or (PedidosItensCSTCBS.value = '515') or (PedidosItensCSTCBS.value = '550') then begin
              _IBSCBS := util.IBSCBSv130(PedidosItensCSTCBS.AsString                     // Informar o Código de Situação Tributária do IBS/CBS Tabela - CST.
                                        ,TipoNotaClassificacao_Tributaria.asstring       // Informar o Código de Classificação Tributária Tabela - cClassTrib.
                                        ,''                                              // Indica a natureza da operação de doação, orientando a apuração e a geração de débitos ou estornos conforme o cenário.
                                        ,_gIBSCBS                                        // O grupo de tributo a ser informado depende do CST da operação.
                                        ,''                                              // Informar o grupo gEstornoCred (Estorno de Crédito) quando houver estorno de crédito.
                                        ,''                                              // Informar o grupo gCredPresOper ou gCredPresIBSZFM (CST=810-Ajuste IBS ZFM) quando houver crédito presumido.
                                        );
           end;
           if (PedidosItensCSTCBS.value = '410') or (PedidosItensCSTCBS.value = '810') or (PedidosItensCSTCBS.value = '830') then begin
              _IBSCBS := util.IBSCBSv130(PedidosItensCSTCBS.AsString                     // Informar o Código de Situação Tributária do IBS/CBS Tabela - CST.
                                        ,TipoNotaClassificacao_Tributaria.asstring       // Informar o Código de Classificação Tributária Tabela - cClassTrib.
                                        ,''                                              // Indica a natureza da operação de doação, orientando a apuração e a geração de débitos ou estornos conforme o cenário.
                                        ,''                                              // O grupo de tributo a ser informado depende do CST da operação.
                                        ,''                                              // Informar o grupo gEstornoCred (Estorno de Crédito) quando houver estorno de crédito.
                                        ,''                                              // Informar o grupo gCredPresOper ou gCredPresIBSZFM (CST=810-Ajuste IBS ZFM) quando houver crédito presumido.
                                        );
           end;
           if (PedidosItensCSTCBS.value = '620') then begin
              _IBSCBS := util.IBSCBSv130(PedidosItensCSTCBS.AsString                     // Informar o Código de Situação Tributária do IBS/CBS Tabela - CST.
                                        ,TipoNotaClassificacao_Tributaria.asstring       // Informar o Código de Classificação Tributária Tabela - cClassTrib.
                                        ,''                                              // Indica a natureza da operação de doação, orientando a apuração e a geração de débitos ou estornos conforme o cenário.
                                        ,_gIBSCBSMono                                    // O grupo de tributo a ser informado depende do CST da operação.
                                        ,''                                              // Informar o grupo gEstornoCred (Estorno de Crédito) quando houver estorno de crédito.
                                        ,''                                              // Informar o grupo gCredPresOper ou gCredPresIBSZFM (CST=810-Ajuste IBS ZFM) quando houver crédito presumido.
                                        );
           end;
           if (PedidosItensCSTCBS.value = '800') then begin
              _IBSCBS := util.IBSCBSv130(PedidosItensCSTCBS.AsString                     // Informar o Código de Situação Tributária do IBS/CBS Tabela - CST.
                                        ,TipoNotaClassificacao_Tributaria.asstring       // Informar o Código de Classificação Tributária Tabela - cClassTrib.
                                        ,''                                              // Indica a natureza da operação de doação, orientando a apuração e a geração de débitos ou estornos conforme o cenário.
                                        ,''                                              // O grupo de tributo a ser informado depende do CST da operação.
                                        ,''                                              // Informar o grupo gEstornoCred (Estorno de Crédito) quando houver estorno de crédito.
                                        ,''                                              // Informar o grupo gCredPresOper ou gCredPresIBSZFM (CST=810-Ajuste IBS ZFM) quando houver crédito presumido.
                                        );
           end;
           if (PedidosItensCSTCBS.value = '811') then begin
              _IBSCBS := util.IBSCBSv130(PedidosItensCSTCBS.AsString                     // Informar o Código de Situação Tributária do IBS/CBS Tabela - CST.
                                        ,TipoNotaClassificacao_Tributaria.asstring       // Informar o Código de Classificação Tributária Tabela - cClassTrib.
                                        ,''                                              // Indica a natureza da operação de doação, orientando a apuração e a geração de débitos ou estornos conforme o cenário.
                                        ,''                                              // O grupo de tributo a ser informado depende do CST da operação.
                                        ,''                                              // Informar o grupo gEstornoCred (Estorno de Crédito) quando houver estorno de crédito.
                                        ,''                                              // Informar o grupo gCredPresOper ou gCredPresIBSZFM (CST=810-Ajuste IBS ZFM) quando houver crédito presumido.
                                        );
           end;
                      
           // Monta as TAGS de impostos dos produtos "Reforma tributária".
           _Imposto := Util.impostoRTC(PedidosItensTotal_Impostos.AsCurrency
                                      ,_ICMS
                                      ,_IPI
                                      ,_II
                                      ,_PIS
                                      ,_PISST
                                      ,_COFINS
                                      ,_COFINSST
                                      ,''
                                      ,_ICMSUFDest
                                      ,''
                                      ,_IBSCBS
                                      );

           _Detalhe := Util.detalhe(item, _Produto, _Imposto, mDescricaoResto);
           
           Util := nil;
           MontaDetalhe := _Detalhe;
      End;
      util := nil;;
end;

// Rotina de assinatura da NFe usando o certificado selecionado na empresa.
procedure TNotaFiscal_Eletronica2G.AssinarNFe;
var
    Util: NFe_Util_2G_Interface;
    MemoAssinado: TMemo;
begin
      with Dados, dmFiscal do Begin
           if NFe <> '' then begin
              Util                 := CoUtil.Create;
              NomeCertificado      := Trim(EmpresasCertificado_Digital.AsString);
              MemoAssinado         := TMemo.Create(NotaFiscal_Eletronica2G);
              MemoAssinado.Visible := False;
              MemoAssinado.Parent  := NotaFiscal_Eletronica2G;

              NFeAssinada := Util.Assinar(NFe, 'infNFe', NomeCertificado, mResultado, MsgResultado);

              If mResultado <> 5300 then begin
                 cMensagens.Lines.Add( 'Pedido: '+PedidosNumero.AsString);
                 cMensagens.Lines.Add( 'Erro  : '+MsgResultado);
                 cMensagens.Lines.Add( 'Processo de assinatura falhou...');
                 Inc(mQtdErros);
              end else begin
                 MemoAssinado.Text := NfeAssinada;
                 MemoAssinado.Lines.SaveToFile(mPasta);
              End;
              Util := nil;
           end else begin
              cMensagens.Lines.Add( 'Pedido: '+Dados.PedidosNumero.AsString+' Erro na geração do Documento XML para assinatura...');
              Inc(mQtdErros);
           end;
      end;
      util := nil;;
End;

// Envia a nota fiscal eletrônica para o web service.
procedure TNotaFiscal_Eletronica2G.EnviarNFE;
var
   Util: NFe_Util_2G_Interface;
   mConsis: WideString;
begin
      Util            := CoUtil.Create;
      NomeCertificado := Trim(Dados.EmpresasCertificado_Digital.AsString);
      SiglaWS         := iif(ide_tpEmis = 1, Trim(Dados.EmpresasUF_WebService.AsString), Trim(Dados.EmpresasUF_WebServiceEPEC.AsString));
      Versao          := Trim(Dados.EmpresasNFEletronica_Layout.AsString);
      RetWS           := '';
      CabMsg          := '';
      Msg             := '';
      tpAmb           := Menu_Principal.Amb_Producao;
      Licenca         := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
      Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
      Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
      Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);
      
      NFeAssinada := Util.EnviaNfe2G(SiglaWS                // 01.informar a sigla do WS desejado, veja Tabela de siglaWS
                                    ,NFe                    // 02.informar a NF-e que deseja transmitir, a NF-e não deve estar assinada.
                                    ,NomeCertificado        // 03.informar o certificado digital que será utilizado para assinatura:
                                    ,versao                 // 04.informar a versão da mensagem do WS - 3.10 ou 4.00.
                                    ,MsgDados               // 05.retorna a mensagem XML enviada para o WS.
                                    ,MsgRetWS               // 06.retorna a mensagem XML de resposta do WS
                                    ,cStat                  // 07.retorna o resultado da chamada do WS.
                                    ,MsgResultado           // 08.retorna a literal do resultado da chamada do WS.
                                    ,NroRecibo              // 09.retorna o número do recibo do lote atribuído ao lote pela SEFAZ, este será utilizado para consultar o resultado do processamento do lote.
                                    ,dhRecbto               // 10.retorna a data e hora de recebimento do lote pela SEFAZ.
                                    ,tMed                   // 11.retorna o tempo médio de resposta do serviço em segundos dos últimos 5 minutos.
                                    ,Proxy                  // 12.informar 'http://proxyserver:port' quando existir uso de proxy no ambiente.
                                    ,Usuario                // 13.informar o usuário para autenticação no proxy se necessário.
                                    ,Senha                  // 14.informar a senha de autenticação no proxy se necessário
                                    ,Licenca);              // 15.informar a chave da licença de uso.

      If cStat <> 103 then begin
         // Fazendo a consistência do XML.
         With Dados, dmFiscal do begin
              cMensagens.Lines.Add('       ' + MsgResultado+#13+#13+'Verifique as configurações de proxy.');
              ConsistenciaNFe.SQL.Clear;
              ConsistenciaNFe.SQL.Add('select * from ConsistenciaNFe order by Campo, Tag');
              ConsistenciaNFe.Open;
              ConsistenciaNFe.First;
              While not ConsistenciaNFe.Eof do begin
                    If Pos('nfe:'+ConsistenciaNFeCampo.Value, MsgRetWS) <> 0 then begin
                       mConsis := '              '+Trim(ConsistenciaNFeGrupo.Value)+Replicate('.', 30-Length(Trim(ConsistenciaNFeGrupo.Value))) +': '+ConsistenciaNFeDescricao.Value + '('+Trim(ConsistenciaNFeCampo.Value)+')';
                       cMensagens.Lines.Add(mConsis);
                    End;
                    ConsistenciaNFe.Next;
              End;
         End;
         Inc(mQtdErros);
      end else begin
         // Salva o número do recibo de envio na tabela de nota fiscal.
         Dados.Pedidos.Edit;
               Dados.PedidosNFe_Recibo.Value     := Trim(NroRecibo);
               Dados.PedidosNFe_DataRecibo.Value := StrtoDateTime(Copy(dhRecbto, 9, 2)+'/'+Copy(dhRecbto, 6, 2)+'/'+Copy(dhRecbto, 1, 4) + ' '+Copy(dhRecbto, 12, 8));
               Dados.PedidosNFe_Protocolo.Value  := '';
         Dados.Pedidos.Post;
         cMensagens.Lines.Add('       '+InttoStr(cStat)+': '+'NF-e enviada, recibo de envio: '+Dados.PedidosNFE_Recibo.Value+ ' de '+Dados.PedidosNFE_DataRecibo.AsString );

         LogDados(dmFiscal.Notas, '('+Dados.PedidosNota.AsString+') ENVIO DE NF-e P/SEFAZ (RECIBO :'+NroRecibo+')', dsInsert);
      End;
      Util := nil;
end;

// Envia a nota fiscal eletrônica para o web service.
procedure TNotaFiscal_Eletronica2G.EnviarNFESinc;
var
   Util: NFe_Util_2G_Interface;
   mConsis: WideString;
begin
      with Dados do begin
           Util            := CoUtil.Create;
           NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);
           SiglaWS         := iif(ide_tpEmis = 1, Trim(EmpresasUF_WebService.AsString), Trim(EmpresasUF_WebServiceEPEC.AsString));
           Versao          := Trim(EmpresasNFEletronica_Layout.AsString);
           RetWS           := '';
           CabMsg          := '';
           Msg             := '';
           tpAmb           := Menu_Principal.Amb_Producao;
           Licenca         := Trim(EmpresasLicensa_NFe_Util.Value);
           Proxy           := Trim(ConfiguracaoServidor_Proxy.AsString);
           Usuario         := Trim(ConfiguracaoUsuario_Proxy.AsString);
           Senha           := Trim(ConfiguracaoSenha_Proxy.AsString);

           NFeAssinada := Util.EnviaNFSincrono(SiglaWS                // 01.informar a sigla do WS desejado, veja Tabela de siglaWS
                                              ,NFe                    // 02.informar a NF-e que deseja transmitir, a NF-e não deve estar assinada.
                                              ,NomeCertificado        // 03.informar o certificado digital que será utilizado para assinatura:
                                              ,versao                 // 04.informar a versão da mensagem do WS - 3.10 ou 4.00.
                                              ,MsgDados               // 05.retorna a mensagem XML enviada para o WS.
                                              ,MsgRetWS               // 06.retorna a mensagem XML de resposta do WS
                                              ,cStat                  // 07.retorna o resultado da chamada do WS.
                                              ,MsgResultado           // 08.retorna a literal do resultado da chamada do WS.
                                              ,NroRecibo              // 09.retorna o número do protocolo de autorização de uso da NFC-e/NF-e.
                                              ,dhRecbto               // 10.retorna a data e hora da autorização de uso da NFC-e/NF-e.
                                              ,tAssinado              // 11.retorna a NFC-e/NF-e assinada.
                                              ,Proxy                  // 12.informar 'http://proxyserver:port' quando existir uso de proxy no ambiente.
                                              ,Usuario                // 13.informar o usuário para autenticação no proxy se necessário.
                                              ,Senha                  // 14.informar a senha de autenticação no proxy se necessário
                                              ,Licenca);              // 15.informar a chave da licença de uso.
                                              
           XMLProtocolo.Text := NfeAssinada;
           mDenegada         := false;
           mProcessamento    := false;
           
           if cStat in[100, 150] then begin
              // Salva o número do protocolo de envio na tabela de nota fiscal.
              Pedidos.Edit;
                      PedidosNFe_Recibo.Value        := Trim(NroRecibo);
                      PedidosNFe_DataRecibo.Value    := StrtoDateTime(Copy(dhRecbto, 9, 2)+'/'+Copy(dhRecbto, 6, 2)+'/'+Copy(dhRecbto, 1, 4) + ' '+Copy(dhRecbto, 12, 8));
                      PedidosNFe_Protocolo.Value     := PedidosNFe_Recibo.Value;
                      PedidosNFe_DataProtocolo.Value := PedidosNFe_DataRecibo.Value;
                      PedidosAguardando.Value        := false;
              Pedidos.Post;
              mProtocolo := PedidosNFe_Recibo.Value;
              cMensagens.Lines.Add('Status: '+InttoStr(cStat)+': '+'NF-e autorizada (Protocolo): '+PedidosNFE_Recibo.Value+ ' de '+PedidosNFE_DataRecibo.AsString );
              LogDados(dmFiscal.Notas, '('+PedidosNota.AsString+') ENVIO DE NF-e P/SEFAZ (PROTOCOLO: '+NroRecibo+')', dsInsert);
           end else begin
              cMensagens.Lines.Add('');
              cMensagens.Lines.Add(InttoStr(cStat)+' -> '+MsgResultado);
              cMensagens.Lines.Add('');
              inc(mQtdErros);
           end;
      end;
      Util := nil;
end;

procedure TNotaFiscal_Eletronica2G.bDANFEClick(Sender: TObject);
begin
      DANFE_Retrato.AllowPrintToFile := True;
      DANFE_Retrato.DeviceType       := dtScreen;
      DANFE_Retrato.TextFileName     := '';
      DANFE_Retrato.ShowPrintDialog  := true;
      DANFE_Retrato.Print;
      DANFE_Retrato.FreeOnRelease;
      DANFE_Retrato.Reset;
end;
 
procedure TNotaFiscal_Eletronica2G.FormCreate(Sender: TObject);
begin
     FAPI := TServiceAPIDominio.Create;
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNotaFiscal_Eletronica2G.FormDestroy(Sender: TObject);
begin
     if Assigned(FAPI) then FreeAndNil(FAPI);
end;

procedure TNotaFiscal_Eletronica2G.BuscarNFe;
var
    Util: NFe_Util_2G_Interface;
begin
      With Dados, dmFiscal do begin
           Util            := CoUtil.Create;
           NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);
           SiglaUF         := Trim(EmpresasEstado.AsString);
           SiglaWS         := iif(ide_tpEmis = 1, Trim(Dados.EmpresasUF_WebService.AsString), Trim(Dados.EmpresasUF_WebServiceEPEC.AsString));
           tpAmb           := Menu_Principal.Amb_Producao;
           Licenca         := Trim(EmpresasLicensa_NFE_Util.AsString);
           RetWS           := '';
           CabMsg          := '';
           Msg             := '';
           DadosMsg        := '';
           NroRecibo       := PedidosNFe_Recibo.Value;
           mProtocolo      := '';
           mProtocoloData  := '';
           Versao          := Trim(EmpresasNFEletronica_Layout.AsString);
           Proxy           := Trim(ConfiguracaoServidor_Proxy.AsString);
           Usuario         := Trim(ConfiguracaoUsuario_Proxy.AsString);
           Senha           := Trim(ConfiguracaoSenha_Proxy.AsString);

           // XML da NF-e com o protocolo de autorização.
           XMLProtocolo.Text := Util.BuscaNFe2G(SiglaWS
                                               ,tpAmb
                                               ,NFeAssinada
                                               ,NroRecibo
                                               ,NomeCertificado
                                               ,Trim(EmpresasNFEletronica_Layout.AsString)
                                               ,MsgDados
                                               ,MsgRetWS
                                               ,cStat
                                               ,MsgResultado
                                               ,mProtocolo
                                               ,mProtocoloData
                                               ,cMsg
                                               ,xMsg
                                               ,Proxy
                                               ,Usuario
                                               ,Senha
                                               ,Licenca
                                               );
           mDenegada      := false;
           mProcessamento := false;

           if (cStat <> 100) and (cStat <> 301) and (cStat <> 302) then begin
              cMensagens.Lines.Add('       Código de erro/rejeição: '+InttoStr(cStat)+' - '+MsgResultado );
              if cStat <> 105 then begin
                 mProcessamento := false;
                 tTempo.Enabled := false;
                 Inc(mQtdErros);

                 Pedidos.Edit;
                         if (cStat = 656) or (cStat = 204) then begin
                            PedidosAguardando.Value := true;
                         end else begin
                            PedidosAguardando.Value := false;
                         end;   
                 Pedidos.Post;
              end else begin
                 mProcessamento := true;
                 if not PedidosAguardando.AsBoolean then begin
                    Pedidos.Edit;
                            PedidosAguardando.Value := true;
                    Pedidos.Post;
                 end;
              end;
              LogDados(dmFiscal.Notas, '('+PedidosNota.AsString+') CONSULTA REJEIÇÃO:'+ ' '+MsgResultado, dsInsert);
           end else begin
              if (cStat = 100) then begin
                 cMensagens.Lines.Add('       Autorizada '+ InttoStr(cStat)+': Protocolo de autorização da NF-e ' + PoeZero(9, PedidosNota.AsInteger) +': '+mProtocolo );
                 LogDados(dmFiscal.Notas, '('+PedidosNota.AsString+') AUTORIZADA NF-e PELA SEFAZ (PROTOCOLO :'+mProtocolo+')', dsInsert);
              end;
              if (cStat = 301) then begin
                 cMensagens.Lines.Add('       '+ InttoStr(cStat)+': Protocolo de denegação de uso : ' + mProtocolo+' Irregularidade fiscal do emitente' );
                 mDenegada := True;
                 LogDados(dmFiscal.Notas, '('+PedidosNota.AsString+') NF-e DENEGADA '+InttoStr(cStat)+' (PROTOCOLO :'+mProtocolo+') Irregularidade fiscal do emitente', dsInsert);
              end;
              if (cStat = 302) then begin
                 cMensagens.Lines.Add('       '+ InttoStr(cStat)+': Protocolo de denegação de uso: ' + mProtocolo+' Irregularidade fiscal do destinatário' );
                 mDenegada := True;
                 LogDados(dmFiscal.Notas, '('+PedidosNota.AsString+') NF-e DENEGADA '+InttoStr(cStat)+' (PROTOCOLO :'+mProtocolo+') Irregularidade fiscal do destinatário', dsInsert);
              end;
           end;
      end;

      util := nil;
end;

procedure TNotaFiscal_Eletronica2G.ppDetailBand2BeforePrint(Sender: TObject);
begin
     lItem_CST.Caption := '';
     lItem_CST.Caption := Trim(tbItens.FieldByName('CodigoTrib_TabA').AsString)+Trim(tbItens.FieldByName('CodigoTrib_TabB').AsString);

     If Dados.ConfiguracaoNFE_DANFE_CodigoProduto.AsString = 'I' then begin
        lCodigo.DataField := 'Codigo_Mercadoria'
     end else begin
        If Trim(tbItens.FieldByName('Codigo_Fabricante').AsString) = '' then
           lCodigo.DataField := 'Codigo_Mercadoria'
        else
           lCodigo.DataField := 'Codigo_Fabricante';
     End;
end;

procedure TNotaFiscal_Eletronica2G.ppHeaderBand1BeforePrint(Sender: TObject);
Var
    mParcela: Integer;
begin
      With Dados, dmFiscal do Begin
           tbItens.SQL.Clear;
           tbItens.SQL.Add('SELECT Nota,');
           tbItens.SQL.Add('       Data,');
           tbItens.SQL.Add('       Codigo_Mercadoria,');
           tbItens.SQL.Add('       Codigo_Fabricante,');
           tbItens.SQL.Add('       CASE WHEN (Total_Impostos > 0) AND (Valor_Total > 0) THEN');
           tbItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))+ CHAR(13)+CHAR(13)+''                              TRIBUTOS : R$ ''+ CONVERT(VARCHAR, CAST(Total_Impostos AS money),-1) +');
           tbItens.SQL.Add('                 ''  (''+CONVERT(VARCHAR, CAST( ROUND((Total_Impostos/Valor_Total)*100, 2) AS money),-1)+''%)'' ');
           tbItens.SQL.Add('       ELSE');
           tbItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))');
           tbItens.SQL.Add('       END AS Descricao_Mercadoria,');
           tbItens.SQL.Add('       NCM,');
           tbItens.SQL.Add('       Unidade_Medida,');
           tbItens.SQL.Add('       CodigoTrib_TabA,');
           tbItens.SQL.Add('       CodigoTrib_TabB,');
           tbItens.SQL.Add('       CSTIPI,');
           tbItens.SQL.Add('       CSTPIS,');
           tbItens.SQL.Add('       CSTCOFINS,');
           tbItens.SQL.Add('       Quantidade,');
           tbItens.SQL.Add('       Valor_Unitario,');
           tbItens.SQL.Add('       Valor_Total,');
           tbItens.SQL.Add('       Aliquota_IPI,');
           tbItens.SQL.Add('       Valor_IPI,');
           tbItens.SQL.Add('       Total_IPI,');
           tbItens.SQL.Add('       Aliquota_ICMSOper,');
           tbItens.SQL.Add('       Valor_BCICMSOper,');
           tbItens.SQL.Add('       Valor_ICMSOper,');
           tbItens.SQL.Add('       Valor_BCICMSSub,');
           tbItens.SQL.Add('       Aliquota_ICMSSub,');
           tbItens.SQL.Add('       Valor_ICMSSub,');
           tbItens.SQL.Add('       Aliquota_PIS,');
           tbItens.SQL.Add('       Valor_PIS,');
           tbItens.SQL.Add('       Aliquota_COFINS,');
           tbItens.SQL.Add('       Valor_COFINS,');
           tbItens.SQL.Add('       Total_Item,');
           tbItens.SQL.Add('       Total_Impostos,');
           tbItens.SQL.Add('       Natureza_Codigo');
           tbItens.SQL.Add('FROM   NotasItens');
           tbItens.SQL.Add('WHERE  (Nota = :pNota) AND (Data = :pData)');
           tbItens.SQL.Add('ORDER  BY Item');
           tbItens.ParamByName('pNota').AsInteger := tbNotas.FieldByName('Numero').Value;
           tbItens.ParamByName('pData').AsDate    := tbNotas.FieldByName('Data_Emissao').AsDateTime;
           tbItens.Open;

           Fatura.SQL.Clear;
           Fatura.SQL.Add('SELECT * FROM Fatura WHERE (Nota = :pNota) AND (Origem_Pedido = 1)');
           Fatura.ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
           Fatura.Open;

           If Fatura.RecordCount <> 0 then begin
              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE (Fatura = :pFatura) AND (Data_Emissao = :pData) ORDER BY Numero');
              Duplicatas.ParamByName('pFatura').AsInteger := FaturaFatura.AsInteger;
              Duplicatas.ParamByName('pData').AsDate      := FaturaData_Emissao.Value;
              Duplicatas.Open;
           End;

           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

           Natureza.Open;
           Natureza.Locate('Codigo', tbNotas.FieldByName('Natureza_Codigo').Value, [loCaseInsensitive]);

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

           // Campos do cebeçalho visiveis apenas na primeira pagina.
           gDadosNF.Visible := DANFE_Retrato.PageNo = 1;
           lDPEC.Visible    := tbNotas.FieldByName('DPEC').AsBoolean;
           If tbNotas.FieldByName('DPEC').AsBoolean = true then begin
              lProtocolo.DataField     := 'DPEC_Protocolo';
              lDataProtocolo.DataField := 'DPEC_DataProtocolo';
           end else begin
              lProtocolo.DataField     := 'NFe_Protocolo';
              lDataProtocolo.DataField := 'NFe_DataProtocolo';
           End;

           lRazaoSocial.Caption     := 'RECEBEMOS DE '+Trim(EmpresasRazao_Social.Value)+' OS PRODUTOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO.';
           lEmpresa.Caption         := Trim(EmpresasRazao_Social.Value);
           lEndereco.Caption        := Trim(EmpresasRua.Value) + ',Nº '+Trim(EmpresasRua_Numero.AsString)+', '+Trim(EmpresasComplemento.AsString);
           lBairroMunicipio.Caption := Trim(EmpresasBairro.Value)+', '+Trim(MunicipiosNome.Value)+' ('+Trim(EmpresasEstado.Value)+')   '+'CEP:'+FormatMaskText('#####-###;0',EmpresasCEP.Value);
           lCEP.Caption             := 'TEL:'+FormatMaskText('(##) #########;0', EmpresasTelefone1.Value)+'  FAX:'+FormatMaskText('(##) #########;0',EmpresasFAX.Value);
           If tbNotas.FieldByName('Saida_Entrada').Value = 0 then begin
              lSerie.Caption  := 'Série: '+PoeZero(3,EmpresasNFEletronica_SerieEntrada.AsInteger);
              lSerie2.Caption := 'Série: '+PoeZero(3,EmpresasNFEletronica_SerieEntrada.AsInteger);
           end else begin
              lSerie.Caption  := 'Série: '+PoeZero(3,EmpresasNFEletronica_Serie.AsInteger);
              lSerie2.Caption := 'Série: '+PoeZero(3,EmpresasNFEletronica_Serie.AsInteger);
           End;
           lNumero.Caption                := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, tbNotas.FieldByName('Numero').AsInteger) );
           lNumero_Folha.Caption          := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, tbNotas.FieldByName('Numero').AsInteger) );
           lIE.DisplayFormat              := EstadosMascara_Inscricao.Value;
           lNatureza.Caption              := TipoNotaDescricao_CFOP_Nota.AsString;
           lDestinatario_Telefone.Caption := '';

           lQuantidade.Visible := Dados.TipoNotaVisiveis_QuantidadeItem.AsBoolean;

           If Trim(lNatureza.Caption) = '' then lNatureza.Caption := NaturezaDescricao_NF.AsString;

           Municipios.Locate('Codigo', PedidosDestinatario_Municipio.Value, [loCaseInsensitive]);

           lDestinatario_Nome.Caption      := Trim(PedidosDestinatario_Nome.Value);
           lDestinatario_Rua.Caption       := Trim(PedidosDestinatario_Rua.Value)+', Nº '+Trim(PedidosDestinatario_RuaNumero.Value)+', '+Trim(PedidosDestinatario_Complemento.AsString);
           lDestinatario_Bairro.Caption    := Trim(PedidosDestinatario_Bairro.Value);
           lDestinatario_CEP.Caption       := FormatMaskText('#####-###;0', PedidosDestinatario_CEP.Value);
           lDestinatario_Municipio.Caption := AnsiUpperCase(Trim(PedidosDestinatario_MunicipioNome.AsString));
           lDestinatario_Telefone.Caption  := FormatMaskText('(##) #########;0', PedidosDestinatario_Telefone1.Value);
           lDestinatario_UF.Caption        := Trim(PedidosDestinatario_Estado.Value);
           lDestinatario_IE.Caption        := Trim(PedidosDestinatario_IE.Value);
           lDestinatario_CNPJ.Caption      := FormatMaskText('##.###.###/####-##;0', PedidosDestinatario_CNPJ_CPF.Value);

           If PedidosDestinatario_Juridica.AsBoolean = false then begin
              lDestinatario_CNPJ.Caption := FormatMaskText('###.###.###-##;0', PedidosDestinatario_CNPJ_CPF.Value);
           End;

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
           if Fatura.RecordCount <> 0 then begin
              Duplicatas.First;
              mParcela := 1;

              while not Duplicatas.Eof do begin
                    if mParcela < 25 then DuplicataDANFE(mParcela);
                    Duplicatas.Next;
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

           If tbNotas.FieldByName('Transportador_Codigo').Value <> 0 then begin
              Fornecedores.SQL.Clear;
              Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Codigo = :pTransportador)');
              Fornecedores.ParamByName('pTransportador').AsInteger := tbNotas.FieldByName('Transportador_Codigo').AsInteger;
              Fornecedores.Open;

              If Trim(FornecedoresCNPJ.Value) <> '' then
                 lTransportador_CNPJ.Caption := FormatMaskText('##.###.###/####-##;0', FornecedoresCNPJ.Value)
              else
                 lTransportador_CNPJ.Caption := FormatMaskText('###.###.###-##;0', FornecedoresCPF.Value);

              lTransportador_Nome.Caption      := Trim(FornecedoresNome.Value);
              lTransportador_Endereco.Caption  := Trim(FornecedoresRua.Value) + ',Nº '+Trim(FornecedoresRua_Numero.AsString)+', '+Trim(FornecedoresBairro.Value);
              lTransportador_Municipio.Caption := Trim(FornecedoresMunicipio.Value);
              lTransportador_UF.Caption        := Trim(FornecedoresEstado.Value);
              Estados.Locate('Codigo', FornecedoresEstado.Value, [loCaseInsensitive]);
              lTransportador_IE.Caption        := FornecedoresInscricao_Estadual.Value;
              if Trim(EstadosMascara_Inscricao.AsString) <> '' then
                 lTransportador_IE.Caption := FormatMaskText(EstadosMascara_Inscricao.Value, FornecedoresInscricao_Estadual.Value);
           End;

           lHomologacao.Visible := False;
           If (Menu_Principal.Amb_Producao = 2) then begin;
              lHomologacao.Visible := True;
           End;

           lDenegada.Visible := false;
           If tbNotas.FieldByName('NFe_Denegada').AsBoolean then begin
              lDenegada.Visible := True;
           End;

           Rodape.PrintOnLastPage := DANFE_Retrato.PageCount = 1;
           Rodape.Visible         := DANFE_Retrato.PageNo = 1;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Codigo');
           Fornecedores.Open;

           ppDBText7.Visible  := not TipoNota.FieldByName('TTD').AsBoolean;
           ppDBText33.Visible := not TipoNota.FieldByName('TTD').AsBoolean;
      End;
end;

procedure TNotaFiscal_Eletronica2G.tTempoTimer(Sender: TObject);
begin
      mProcessamento := False;
      tTempo.Enabled := False;
end;

procedure TNotaFiscal_Eletronica2G.bSelecionarClick(Sender: TObject);
var
    vlLinha: Integer;
begin
     With Grade.DataSource.DataSet do begin
          First;
          For vlLinha := 0 to RecordCount - 1 do begin
              If Dados.PedidosErros.Asinteger = 0 then Grade.SelectedRows.CurrentRowSelected := True;
              Next;
          End;
     End;
     Grade.SelectedRows.Refresh;
end;

procedure TNotaFiscal_Eletronica2G.bDesmarcarClick(Sender: TObject);
begin
      Grade.UnselectAll;
end;

procedure TNotaFiscal_Eletronica2G.ValidarXML;
var
   Util: NFe_Util_2G_Interface;
   mQtdeErrosXML,
   i, mTipo: integer;
   mErroXML,
   mConSis: WideString;
begin
      mQtdeErrosXML := 0;
      Util          := CoUtil.Create;

      mTipo := 68;         // NFE Assinada 4.00.
      i     := Util.ValidaXML(NFE, mTipo, MsgResultado, mQtdeErrosXML, mErroXML);

      if (i <> 5501) and (i <> 5506) then begin
         // Verificando os campos com erro.
         with Dados, dmFiscal do begin
              cMensagens.Lines.Add('       ' + MsgResultado);

              ConsistenciaNFe.SQL.Clear;
              ConsistenciaNFe.SQL.Add('SELECT * FROM ConsistenciaNFe ORDER BY Campo, Tag');
              ConsistenciaNFe.Open;
              ConsistenciaNFe.First;
              while not ConsistenciaNFe.Eof do begin
                    if Pos('nfe:'+ConsistenciaNFeCampo.Value, mErroXML) <> 0 then begin
                       mConsis := '              '+Trim(ConsistenciaNFeGrupo.Value)+Replicate('.', 30-Length(Trim(ConsistenciaNFeGrupo.Value))) +': '+ConsistenciaNFeDescricao.Value + '('+Trim(ConsistenciaNFeCampo.Value)+')';
                       cMensagens.Lines.Add(mConsis);
                    end;
                    ConsistenciaNFe.Next;
              end;
              cMensagens.Lines.Add(mErroXML);
         end;
         Inc(mQtdErros);
      end;
      Util := nil;
end;

// Envio da nota eletrônica em contigência - EPEC.
procedure TNotaFiscal_Eletronica2G.EnviarEPEC;
var
    Util: NFe_Util_2G_Interface;
    ListaNFE
   ,dhEvento
   ,xmlEPEC: WideString;
begin
      tMemoXML         := TMemo.Create(NotaFiscal_Eletronica2G);
      tMemoXML.Visible := False;
      tMemoXML.Parent  := NotaFiscal_Eletronica2G;
      Util             := CoUtil.Create;
      NomeCertificado  := Trim(Dados.EmpresasCertificado_Digital.AsString);
      SiglaWS          := Trim(Dados.EmpresasUF_WEBServiceEPEC.AsString);
      tpAmb            := Menu_Principal.Amb_Producao;
      Versao           := Trim(Dados.EmpresasNFEletronica_Layout.AsString);
      Licenca          := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
      MsgRetWS         := '';
      MsgResultado     := '';
      Proxy            := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
      Usuario          := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
      Senha            := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);
      dhEvento         := FormatDateTime('yyyy-mm-dd "" hh:mm:ss', Now);

      xmlEPEC := Util.EnviaEPEC(siglaWS
                               ,tpAmb
                               ,NomeCertificado
                               ,Versao
                               ,msgDados
                               ,msgRetWS
                               ,cStat
                               ,msgResultado
                               ,NFe
                               ,dhEvento
                               ,Protocolo_EPEC
                               ,DataHora_EPEC
                               ,ListaNFE
                               ,Proxy
                               ,Usuario
                               ,Senha
                               ,Licenca);

      if cStat < 203 then begin
         with Dados, Pedidos do begin
              edit;
                  fieldbyname('DPEC_NFE').Value           := PedidosNFE_cNF.AsString;
                  fieldbyname('DPEC_Protocolo').Value     := Protocolo_EPEC;
                  fieldbyname('DPEC_DataProtocolo').Value := now;
                  fieldbyname('DPEC').Value               := true;
                  fieldbyname('Aguardando').Value         := true;
              post;
         end;

         cMensagens.Lines.Add('Protocolo de autorização do EPEC:' + Protocolo_EPEC+ '   ' + DataHora_EPEC);
         cMensagens.Lines.Add('EPEC recepcionada pelo WS' + intToStr(cStat) + ' - ' + MsgResultado);
         mPasta := Trim(Dados.ConfiguracaoPasta_NFE.Value) + '\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
         if Dados.EmpresasMatriz_Filial.AsBoolean = true then
            mPasta := mPasta + '_Matriz'
         else
            mPasta := mPasta + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
         mPasta := mPasta + '\EPEC';
         if not DirectoryExists(mPasta) then ForceDirectories(mPasta);
         mPasta := mPasta + '\EPEC_'+PoeZero(8, mNotaIni)+'_a_'+PoeZero(8,mNota)+'.xml';
         tMemoXML.Lines.Clear;
         tMemoXML.Lines.Add(xmlEPEC);
         tMemoXML.Lines.SaveToFile(mPasta);
      end else begin
         if cStat > 792 then begin
            cMensagens.Lines.Add('Falha na chamada do WS...' + MsgResultado);
            Inc(mQtdErros);
         end else begin
            cMensagens.Lines.Add('Erro no processamento da EPEC pelo WS.');
            cMensagens.Lines.Add('Erro : '+ MsgResultado);
            Inc(mQtdErros);
         end
      end;
      Util := nil;
end;

// Consulta a nota pela chave em caso de falha do retorno 105.
procedure TNotaFiscal_Eletronica2G.BuscarChave;
var
    Util: NFe_Util_2G_Interface;
    mPosIni
   ,mPosFim
   ,mTamanho: Integer;
begin
      With Dados, dmFiscal do begin
           Util            := CoUtil.Create;
           NomeCertificado := Trim(EmpresasCertificado_Digital.AsString);
           SiglaWS         := iif(ide_tpEmis = 1, Trim(Dados.EmpresasUF_WebService.AsString), Trim(Dados.EmpresasUF_WebServiceEPEC.AsString));
           tpAmb           := Menu_Principal.Amb_Producao;
           RetWS           := '';
           CabMsg          := '';
           Msg             := '';
           DadosMsg        := '';
           Versao          := Trim(ConfiguracaoVersao_NFe.AsString);
           ChaveNFe        := Trim(Pedidos.FieldByName('NFe_cNF').AsString);
           Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
           Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
           Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);

           cStat := Util.ConsultaNF2G(SiglaWS
                                     ,tpAmb
                                     ,NomeCertificado
                                     ,Versao
                                     ,DadosMsg
                                     ,RetWS
                                     ,Msg
                                     ,ChaveNFe
                                     ,Proxy
                                     ,Usuario
                                     ,Senha);

           If (cStat <> 100) and (cStat <> 301) and (cStat <> 302) then begin
              // Marcar aguardando com 0 caso a nota não conste na base de dados da SEFAZ.
              Dados.Pedidos.Edit;
                            Dados.PedidosAguardando.Value := false;
              Dados.Pedidos.Post;

              cMensagens.Lines.Add(Msg);
              Inc(mQtdErros);
           end else begin
              // Pegando o número do protocolo no xml de retorno.
              mPosIni    := Pos(widestring('<nProt>'), RetWS)+7;
              mPosFim    := Pos(widestring('</nProt>'), RetWS);
              mTamanho   := mPosFim - mPosIni;
              mProtocolo := Copy(RetWS, mPosIni, mTamanho);

              // Pegando o número do protocolo no xml de retorno.
              mPosIni        := Pos(widestring('<dhRecbto>'), RetWS)+10;
              mProtocoloData := Copy(RetWS, mPosIni, 10);

              cMensagens.Lines.Add('       '+InttoStr(cStat)+'- Protocolo de autorização da NF-e ' + PoeZero(6, PedidosNota.AsInteger) +': '+mProtocolo + ' de '+mProtocoloData );
           End;
      End;

      Util := nil;;
End;

procedure TNotaFiscal_Eletronica2G.EnviarEmail(Tipo: String);
var
   mccList
  ,mMensagem: widestring;
   mEnviar : boolean;
   TextoMsg: TidText;
begin
      Screen.Cursor := crAppStart;
      Menu_Principal.IdAntiFreeze1.Active := true;
      mEnviar          := true;
      cMensagens.Width := 715;
      Tipo             := UpperCase(Tipo);
      mccList          := '';
      
      with Dados, dmFiscal do begin
           if (EmpresasEmail_Porta.AsInteger <= 0) then begin
              cMensagens.Lines.Add('        E-Mail não enviado : Falta informar a porta no cadastro de empresas.');
              mEnviar := false;
           end;
           if (Trim(EmpresasEmail_SMTP.AsString) = '') then begin
              cMensagens.Lines.Add('        E-Mail não enviado : Falta informar o Servidor de envio (SMTP) no cadastro de empresas.');
              mEnviar := false;
           end;
           if (Trim(EmpresasEmail_ID.AsString) = '') then begin
              cMensagens.Lines.Add('        E-Mail não enviado : Falta informar o Usuário (ID) no cadastro de empresas.');
              mEnviar := false;
           end;
           if (Trim(EmpresasEmail_Senha.AsString) = '') then begin
               cMensagens.Lines.Add('        E-Mail não enviado : Falta informar a Senha no cadastro de empresas.');
               mEnviar := false;
           end;

           if mEnviar then begin
              Screen.Cursor := crHourGlass;
              with SMTP do begin
                   Try
                      Host           := Trim(EmpresasEmail_SMTP.AsString);
                      Port           := EmpresasEmail_Porta.AsInteger;
                      UserName       := Trim(EmpresasEmail_ID.AsString);
                      Password       := Trim(EmpresasEmail_Senha.AsString);
                      ConnectTimeout := 10000;
                      ReadTimeout    := 10000;

                      // SSLOptions method.
                      if EmpresasEmail_Metodo.AsString = 'sslvSSLv2'   then SSLSocket.SSLOptions.Method := sslvSSLv2;
                      if EmpresasEmail_Metodo.AsString = 'sslvSSLv23'  then SSLSocket.SSLOptions.Method := sslvSSLv23;
                      if EmpresasEmail_Metodo.AsString = 'sslvSSLv3'   then SSLSocket.SSLOptions.Method := sslvSSLv3;
                      if EmpresasEmail_Metodo.AsString = 'sslvTLSv1'   then SSLSocket.SSLOptions.Method := sslvTLSv1;
                      if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_1' then SSLSocket.SSLOptions.Method := sslvTLSv1_1;
                      if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_2' then SSLSocket.SSLOptions.Method := sslvTLSv1_2;
                      // Requer autenticação
                      AuthType := satNone;
                      if EmpresasEmail_Autenticacao.AsBoolean then AuthType := satDefault;
                      // Conexão segura SSL
                      IOHandler := nil;
                      if EmpresasEmail_SSL.AsBoolean then IOHandler := SSLSocket;
                      if EmpresasEmail_Criptografia.AsString = 'utNoTLSSupport'   then UseTLS := utNoTLSSupport; 
                      if EmpresasEmail_Criptografia.AsString = 'utUseExplicitTLS' then UseTLS := utUseExplicitTLS; 
                      if EmpresasEmail_Criptografia.AsString = 'utUseImplicitTLS' then UseTLS := utUseImplicitTLS; 
                      if EmpresasEmail_Criptografia.AsString = 'utUseRequireTLS'  then UseTLS := utUseRequireTLS; 
   
                      Connect();
                   Except on E:Exception do
                         begin
                             ShowMessage('Falha na conexão para envio dos E-Mails !'+#13+#13+e.Message);
                             Screen.Cursor := crDefault;
                             Abort;
                         end;
                   End;
              end;
              
              // Montando a Mensagem.
              with EmailMsg do begin
                   EmailMSG.MessageParts.Clear;
                   EmailMSG.Clear;
                   EmailMSG.From.Address := trim(EmpresasEmail.AsString);

                   if Tipo = 'CLIENTE' then begin
                      Recipients.EMailAddresses := ClientesEmail.AsString;
                      // Copias para os emails da própria empresa.
                      if Trim(EmpresasEmail_Copia.AsString) <> '' then begin
                         mccList := concat(EmpresasEmail_Copia.AsString, ';');
                      end;
                      // Copias para os emails do cliente.
                      if (Trim(ClientesEmail_Copia.AsString) <> '') and (not ClientesEnviar_Email.AsBoolean) then begin
                         mccList := concat(mccList, ';', Trim(ClientesEmail_Copia.AsString), ';');
                      end;
                      // Copias para os emails do Transportador.
                      if PedidosTransportador_Codigo.asinteger > 0 then begin
                         if Fornecedores.Locate('Codigo', PedidosTransportador_Codigo.Value , [loCaseInsensitive]) then begin
                            if (Trim(FornecedoresEmail.AsString) <> '') and (not FornecedoresEnviar_Email.AsBoolean) then begin
                               mccList := concat(mccList, ';', Trim(FornecedoresEmail.AsString), ';');
                            end;
                         end;
                      end;
                      // Copias para os emails do Armazem.
                      if PedidosArmazem.asinteger > 0 then begin
                         if Fornecedores.Locate('Codigo', PedidosArmazem.asinteger, [loCaseInsensitive]) then begin
                            if (Trim(FornecedoresEmail.AsString) <> '') and (not FornecedoresEnviar_Email.AsBoolean) then begin
                               mccList := concat(mccList, ';', Trim(FornecedoresEmail.AsString), ';');
                            end;
                         end;
                      end;
                      mccList := copy(mccList, 1, length(mccList)-1);
                      ccList.EMailAddresses := mccList;
                   end else begin
                      Recipients.EMailAddresses := ConfiguracaoEmail_NFE.AsString;
                   end;
                   Subject                   := 'Nota Fiscal Eletrônica - '+dmFiscal.NotasNFe_cNF.AsString + ' de '+FormatDateTime('yyyy-mm-dd', NotasData_Emissao.Value);
                   mMensagem                 := RemoveCaracter('<{Numero}>', dmFiscal.NotasNFe_cNF.AsString, EmpresasEmail_MsgEnvioNFE.AsString);
                   Body.Text                 := mMensagem;
                   CharSet                   := 'iso-8859-1';
                   Encoding                  := MeMIME;
                   ContentType               := 'multipart/related' ;
                   subject                   := 'Nota fiscal eletrônica ('+EmpresasRazao_Social.AsString+')';
                   from.address              := SMTP.Username;
                   recipients.emailaddresses := ClientesEmail.AsString;
              end;
              textomsg := TIdText.Create(EmailMsg.MessageParts);
              with TextoMsg do begin
                   Body.Text   := Empresas.fieldbyname('Email_MsgEnvioNFE').asstring;
                   ContentType := 'text/html';
              end;
              // Anexando o XML e o PDF do DANFE.
              if fileexists(mAnexo) then
                 TIdAttachmentFile.create(EmailMsg.MessageParts, mAnexo);   // PDF.
              if fileexists(mPasta) then
                 TIdAttachmentFile.create(EmailMsg.MessageParts, mPasta);   // XML.
                
              if Trim(mccList) <> '' then begin
                 try
                     if EmpresasEmail_Autenticacao.AsBoolean then SMTP.Authenticate;
                     SMTP.Send(EMailMSG);
                     cMensagens.Lines.add('E-Mail(s) enviad(s) para...'+ClientesEmail.asstring+';'+mccList);
                 except on E:Exception do
                     begin
                         Screen.Cursor := crDefault;
                         SMTP.Disconnect;
                         Showmessage('Erro de E-Mail: Não foi enviado...'+#13+'Verifique as configurações do E-Mail.'+#13+E.Message);
                     end;
                 end;
              end;
              SMTP.Disconnect;
           end;

           Menu_Principal.IdAntiFreeze1.Active := false;
           Screen.Cursor:= crDefault;
      end;
end;

procedure TNotaFiscal_Eletronica2G.DANFE_RetratoBeforePrint(Sender: TObject);
begin
     pDescontos.Visible         := Dados.TipoNotaVisiveis_Desconto.Value;
     lData_EntradaSaida.Visible := cDataHora.Checked;
     lHora_Saida.Visible        := cDataHora.Checked;
     lII.Visible                := Dados.PedidosSaida_Entrada.asinteger = 0;

     If FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        iLogo.Width := Dados.EmpresasLogomarca_Largura.Value;
        iLogo.Left  := (lQuadroEmpresa.Width - Dados.EmpresasLogomarca_Largura.Value)/2;
     End;
end;

procedure TNotaFiscal_Eletronica2G.GeraDuplicatas(Tipo: Integer; Subsequente: Boolean; Dias: Integer; Classificacao: String; PercentualCambio: Real);
Var
    mValor           : Currency;
    mDataVenc        : TDate;
    mVenc            : String;
    mIPI_Entrada     : Currency;
    mICMSOper_Entrada: Currency;
    mICMSSub_Entrada : Currency;
    mPIS_Entrada     : Currency;
    mCOFINS_Entrada  : Currency;
    mDesconto        : Currency;
    mDataDesconto    : TDate;
begin
      Cursor          := crSQLWait;
      mDataVenc       := 0;
      mDataDesconto   := 0;
      mValor          := 0;
      mVenc           := '';
      mDupValorFrete  := 0;
      mDupValorSeguro := 0;

      With Dados, dmFiscal do begin
           ClassificacaoDuplicata.Locate('Codigo', Tipo, [loCaseInsensitive]);

           // Câmbio - "1".
           If (Tipo = 1) then begin
              Incoterms.Locate('Codigo', ProcessosDOCIncoterms.Value, [loCaseInsensitive]);

              // Rateia o valor do câmbio para os casos em que ha mais de um nota fiscal emitida.
              tRateios.SQL.Clear;
              tRateios.SQL.Add('SELECT Quantidade * (SELECT SUM(Valor_UnitarioReal) FROM Adicoes WHERE(DI = NotasItens.DI) AND (Codigo_Mercadoria = NotasItens.Codigo_Mercadoria)) AS Valor_Total');
              tRateios.SQL.Add('INTO    #Temp');
              tRateios.SQL.Add('FROM   NotasItens');
              tRateios.SQL.Add('WHERE  (Nota = :pNota)');
              tRateios.SQL.Add('SELECT SUM(Valor_Total) AS Valor_Total FROM #Temp');
              tRateios.ParamByName('pNota').AsInteger := FaturaNota.AsInteger;
              tRateios.Open;

              // Rateia o valor do Frete.
              If INCOTERMSFrete.Value = True then begin
                 mDupValorFrete := ((ProcessosDOCFrete.AsCurrency / ProcessosDOCFOB.AsCurrency) * tRateios.FieldByName('Valor_Total').AsCurrency);
              End;

              // Rateia o valor do Seguro.
              If INCOTERMSSeguro.Value = True then begin
                 mDupValorSeguro := ((ProcessosDOCSeguro.AsCurrency / ProcessosDOCFOB.AsCurrency) * tRateios.FieldByName('Valor_Total').AsCurrency);
              End;

              mValor := Percentual(tRateios.FieldByName('Valor_Total').AsCurrency, PercentualCambio);
              If Dias > 0 then
                 mDataVenc := (ProcessosDOCData_BL.Value + Dias)
              else
                 mVenc := 'A VISTA';

              If mDataVenc <= 0 then mDataVenc := NotasData_Emissao.Value;
           end else begin
              If Subsequente = False then begin
                 mDataVenc := (FaturaData_Emissao.Value + Dias);
                 If Dias = 0 then mVenc := 'A VISTA';
              end else begin
                 If MonthOf(FaturaData_Emissao.Value) < 12 then
                    mDataVenc := StrtoDate('01/'+InttoStr(MonthOf(FaturaData_Emissao.Value)+1)+'/'+InttoStr(YearOf(FaturaData_Emissao.Value)))
                 else
                    mDataVenc := StrtoDate('01/01/'+InttoStr(YearOf(FaturaData_Emissao.Value)+1));
                    
                 If Dias > 0 then mDataVenc := mDataVenc + (Dias-1);
              End;
           End;

           // Antecipando ou adiantando a data do vencimento, caso caia em um final de semana.
           If (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
              If (DayOfWeek(mDataVenc) = 1) then begin
                 If (Dados.ConfiguracaoDia_Util.Value = '-') then
                    mDataVenc := mDataVenc -2
                 else
                    mDataVenc := mDataVenc +1;
              End;
              If (DayOfWeek(mDataVenc) = 7) then begin
                 If (Dados.ConfiguracaoDia_Util.Value = '-') then
                    mDataVenc := mDataVenc -1
                 else
                    mDataVenc := mDataVenc +2;
              End;
           End;

           // Despesas - "2". 
           If Tipo = 2 then begin
              // Totalizando as despesas do processo.
              tDespesas.SQL.Clear;
              tDespesas.SQL.Add('SELECT SUM(Valor_Operacao) AS Valor_Operacao ');
              tDespesas.SQL.Add('FROM   PagarReceber, ClassificacaoFinanceira');
              tDespesas.SQL.Add('WHERE  (PagarReceber.Tipo = ''P'') and (Processo = :pProcesso) AND (ClassificacaoFinanceira.Codigo = PagarReceber.Classificacao AND ClassificacaoFinanceira.Adiantamento = 0)');
              tDespesas.ParamByName('pProcesso').AsString := FaturaProcesso.Value;
              tDespesas.Open;

              // Totalizando o FOB para o reteio proporcional das despesas.
              tRateios.SQL.Clear;
              tRateios.SQL.Add('SELECT NotasItens.Codigo_Mercadoria, NotasFiscais.DI,');
              tRateios.SQL.Add('       (SELECT (Valor_UnitarioReal*Quantidade) FROM Adicoes WHERE(DI = NotasFiscais.DI) AND (Adicao = NotasItens.Adicao) AND (Codigo_Mercadoria = NotasItens.Codigo_Mercadoria) AND (Sequencia_SISCOMEX = NotasItens.Sequencia_SISCOMEX) ) AS Valor_Total');
              tRateios.SQL.Add('INTO #Temp');
              tRateios.SQL.Add('FROM   NotasItens, NotasFiscais');
              tRateios.SQL.Add('WHERE  (NotasItens.Nota = :pNota) AND (NotasItens.Data = :pData) AND (NotasFiscais.Numero = NotasItens.Nota)');
              tRateios.SQL.Add('SELECT SUM(Valor_Total) AS Valor_Total FROM #Temp');
              tRateios.ParamByName('pNota').AsInteger := FaturaNota.AsInteger;
              tRateios.ParamByName('pData').AsDate    := FaturaData_Emissao.AsDateTime;
              tRateios.Open;

              mValor := (( ProcessosDOCFrete.AsCurrency-ProcessosDOCSeguro.AsCurrency-ProcessosDOCFOB.AsCurrency)-tDespesas.FieldByName('Valor_Operacao').AsCurrency / ProcessosDOCFOB.AsCurrency) * tRateios.FieldByName('Valor_Total').AsCurrency;
           End;

           // Totalizando os valores de entrada de IPI/ICMS/PIS/COFINS.
           mIPI_Entrada      := 0;
           mICMSOper_Entrada := 0;
           mICMSSub_Entrada  := 0;
           mPIS_Entrada      := 0;
           mCOFINS_Entrada   := 0;

           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT * FROM NotasItens');
           tItens.SQL.Add('WHERE Nota IN( SELECT Numero FROM NotasFiscais WHERE(Saida_Entrada = 0) AND (Processo = :pProcesso) AND (Cancelada <> 1))');
           tItens.ParamByName('pProcesso').AsString := FaturaProcesso.Value;
           tItens.Open;

           NotasItens.First;
           While not NotasItens.Eof do begin
                 If tItens.Locate('Codigo_Mercadoria; Adicao', VarArrayOf([NotasItens.FieldByName('Codigo_Mercadoria').AsInteger, NotasItens.FieldByName('Adicao').AsInteger]), [loCaseInsensitive]) then begin
                    mICMSOper_Entrada := mICMSOper_Entrada + (tItens.FieldByName('Valor_ICMSOper').AsCurrency * NotasItensQuantidade.Value);
                    mIPI_Entrada      := mIPI_Entrada      + (tItens.FieldByName('Valor_IPI').AsCurrency * NotasItensQuantidade.Value);
                    mICMSSub_Entrada  := mICMSSub_Entrada  + (tItens.FieldByName('Valor_ICMSSub').AsCurrency * NotasItensQuantidade.Value);
                    mPIS_Entrada      := mPIS_Entrada      + (tItens.FieldByName('Valor_PIS').AsCurrency * NotasItensQuantidade.Value);
                    mCOFINS_Entrada   := mCOFINS_Entrada   + (tItens.FieldByName('Valor_COFINS').AsCurrency * NotasItensQuantidade.Value);
                 End;
                 NotasItens.Next;
           End;

           If Tipo = 3 then mValor := (NotasValor_ICMS.Value - mICMSOper_Entrada);                                       // ICMS Operacional.
           If Tipo = 4 then mValor := (NotasValor_TotalIPI.Value - mIPI_Entrada);                                        // IPI.
           If Tipo = 5 then mValor := (NotasValor_PIS.Value - mPIS_Entrada);                                             // PIS.
           If Tipo = 6 then mValor := (NotasValor_COFINS.Value - mCOFINS_Entrada);                                       // COFINS.
           If Tipo = 7 then mValor := ( (NotasValor_PIS.Value+NotasValor_COFINS.Value)-(mPIS_Entrada+mCOFINS_Entrada) ); // PIS + COFINS.
           If Tipo = 8 then mValor := (NotasValorICMS_Substitutivo.Value - mICMSSub_Entrada);                            // ICMS Substitutivo.

           // Diferença.
           If Tipo < 10 then begin
              mTotalDuplicatas := mTotalDuplicatas + mValor;
           end else begin
              mValor := FaturaValor_Total.AsCurrency - mTotalDuplicatas;
           End;

           // Desconto fixo do cliente.
           mDesconto := 0;
           If (ClientesDesconto_Dupl_Tipo.Value = Tipo) and (ClientesDesconto_Dupl_Valor.Value > 0) then begin
              mDesconto := Percentual(mValor, ClientesDesconto_Dupl_Valor.Value);
              If (ClientesDesconto_Dupl_Dias.AsInteger > 0) and (ClientesDesconto_Dupl_Dias.AsInteger < 31) then
                 mDataDesconto := StrtoDate( ClientesDesconto_Dupl_Dias.AsString+'/'+InttoStr(MonthOf(mDataVenc))+'/'+InttoStr(YearOf(mDataVenc)) )
              else
                 mDataDesconto := StrtoDate( '01/'+InttoStr(MonthOf(mDataVenc))+'/'+InttoStr(YearOf(mDataVenc)) );

              If (ClientesDesconto_Dupl_Campo.Value <> Tipo) and (ClientesDesconto_Dupl_Campo.Value <> 0) then begin
                 If ClientesDesconto_Dupl_Campo.Value = 9 then
                    mDesconto := Percentual(NotasBCICMS.AsCurrency, ClientesDesconto_Dupl_Valor.Value);
              End;
           End;

           If mDataVenc <= 0 then mDataVenc := NotasData_Emissao.Value;

           If mValor > 0 then begin
              Duplicatas.Append;
                         DuplicatasDuplicata.Value       := FaturaFatura.AsString + CHR(mLetra);
                         DuplicatasFatura.Value          := FaturaFatura.Value;
                         DuplicatasData_Vencimento.Value := mDataVenc;
                         DuplicatasVencimento.Value      := mVenc;
                         DuplicatasValor.Value           := mValor;
                         DuplicatasDesconto.Value        := mDesconto;

                         If mDataDesconto > 0 then DuplicatasDesconto_Data.Value := mDataDesconto;

                         DuplicatasValor_Liquido.Value   := mValor - mDesconto;
                         DuplicatasParcela.Value         := AnsiUpperCase(ClassificacaoDuplicata.FieldByName('Descricao').AsString);
                         DuplicatasClassificacao.Value   := Classificacao;
                         DuplicatasData_Emissao.Value    := FaturaData_Emissao.Value;
                         DuplicatasNumero.Value          := PoeZero(9,FaturaFatura.AsInteger)+'A';
              Duplicatas.Post;
              Inc(mLetra);

              tProvisao.Open;
              
              PagarReceber.Connection := Banco_Empresas;
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Data_Documento = :pData');
              PagarReceber.ParamByName('pData').AsDate := NotasData_Emissao.Value;
              PagarReceber.Open;
              PagarReceber.Append;
                           PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                           PagarReceberTipo.Value             := 'R';
                           PagarReceberClassificacao.Value    := Classificacao;
                           PagarReceberCentro_Custo.Value     := TipoNotaCentro_Custo.Value;
                           PagarReceberData_Documento.Value   := FaturaData_Emissao.AsDateTime;
                           PagarReceberData_Vencimento.Value  := mDataVenc; 
                           PagarReceberValor_Documento.Value  := RoundTo(mValor, -2);
                           PagarReceberValor_Parcela.Value    := RoundTo(mValor, -2);
                           PagarReceberMulta.Value            := 0;
                           PagarReceberJuros.Value            := 0;
                           PagarReceberDesconto.Value         := 0;
                           PagarReceberValor_Total.Value      := RoundTo(mValor, -2);
                           PagarReceberValor_Operacao.Value   := RoundTo(mValor, -2);
                           PagarReceberCliente.Value          := mCliFin;
                           PagarReceberDocumento.Value        := 'DUPL';
                           PagarReceberNumero_Documento.Value := DuplicatasDuplicata.AsString;
                           PagarReceberProcesso.Value         := NotasProcesso.Value;
                           PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                           PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.Value;
                           PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.Value;
                           PagarReceberFiscal.Value           := NotasNumero.AsString;
                           PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                           PagarReceberTipo_Nota.Value        := iif(NotasSaida_Entrada.Value = 0, 'ET', 'SD');
                           PagarReceberParcela.Value          := AnsiUpperCase(ClassificacaoDuplicata.FieldByName('Descricao').AsString);
                           PagarReceberObservacao.Value       := 'Duplicata gerada na emissão da nota fiscal '+ NotasNumero.AsString+' Ref. a '+ AnsiUpperCase(ClassificacaoDuplicata.FieldByName('Descricao').AsString);
                           PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                           PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                           PagarReceberObservacao.Value       := iif(PedidosPedido_Representante.AsString <> '', concat('PEDIDO: '+PedidosPedido_Representante.AsString), '');
                           PagarReceberModalidade_Pgto.Value  := PedidosModalidade_Pgto.Value;
              PagarReceber.Post;
              tProvisao.Close;
           End;
       End;
      Cursor := crDefault;
end;

procedure TNotaFiscal_Eletronica2G.Consistencia;
begin
      with Dados, dmFiscal do begin
           with tPedidos do begin
               SQL.Clear;
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM ProcessosDocumentos PD WHERE PD.Processo = Pedidos.Processo AND Local_DesembaracoCodigo = '''') > 0');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE ISNULL(Processo, '''') <> '''' AND ISNULL(Data_DI, '''') = '''' ');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE ISNULL(Destinatario_Nome, '''')      = '''' ');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE ISNULL(Destinatario_Bairro, '''')    = '''' ');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE ISNULL(Destinatario_Municipio, 0)    = 0 ');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE ISNULL(Destinatario_Estado, '''')    = '''' ');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE ISNULL(Destinatario_Rua, '''')       = '''' ');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE ISNULL(Destinatario_Pais, '''')      = '''' ');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE ISNULL(Destinatario_CNPJ_CPF, '''')  = '''' ');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM PedidosItens WHERE Pedido = Numero AND CAST(Descricao_Mercadoria AS VARCHAR(200))= '''') > 0');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM PedidosItens WHERE Pedido = Numero AND Codigo_Mercadoria = '''') > 0');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM PedidosItens WHERE Pedido = Numero AND CodigoTrib_TabA   = '''') > 0');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM PedidosItens WHERE Pedido = Numero AND CodigoTrib_TabB   = '''') > 0');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM PedidosItens WHERE Pedido = Numero AND CSTIPI            = '''') > 0');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM PedidosItens WHERE Pedido = Numero AND CSTPIS            = '''') > 0');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM PedidosItens WHERE Pedido = Numero AND CSTCOFINS         = '''') > 0');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM PedidosItens WHERE Pedido = Numero AND Unidade_Medida    = '''') > 0');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM PedidosItens WHERE Pedido = Numero AND Quantidade       <= 0   ) > 0 AND Complementar = 1');
               SQL.Add('UPDATE Pedidos SET Erros = (ISNULL(Erros,0)+1) WHERE (SELECT COUNT(*) FROM PedidosItens WHERE Pedido = Numero AND Valor_Unitario   <= 0   ) > 0 AND Complementar = 1');
               Execute;
           end;
      end;
end;

procedure TNotaFiscal_Eletronica2G.ItemGrade(Item: Integer; Tabela, Produto, NCM, Processo, Descricao: String);
begin
     with Dados do begin
          tErro.SQL.Clear;
          tErro.SQL.Add('SELECT ISNULL(MAX(Linha), 0)+1 AS Linha FROM ErrosNFE WHERE Pedido = :pPedido');
          tErro.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
          tErro.Open;

          ErrosNFE.Append;
                   ErrosNFELinha.Value     := tErro.FieldByName('Linha').AsInteger;
                   ErrosNFEPedido.Value    := PedidosNumero.AsInteger;
                   ErrosNFETabela.Value    := Tabela;
                   ErrosNFEItem.Value      := Item;
                   ErrosNFEProduto.Value   := Produto;
                   ErrosNFENCM.Value       := NCM;
                   ErrosNFEProcesso.Value  := Processo;
                   ErrosNFEDescricao.Value := Descricao;
          ErrosNFE.Post;
     end;
end;

procedure TNotaFiscal_Eletronica2G.PegaErros;
begin
      With Dados, dmFiscal do begin
           ErrosNFE.SQL.Clear;
           ErrosNFE.SQL.Add('DELETE FROM ErrosNFE WHERE Pedido = :pPedido');
           ErrosNFE.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           ErrosNFE.Execute;
           ErrosNFE.SQL.Clear;
           ErrosNFE.SQL.Add('SELECT * FROM ErrosNFE WHERE Pedido = :pPedido ORDER BY Tabela, Descricao, Item');
           ErrosNFE.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           ErrosNFE.Open;

           // Verificando o vencimento do certificado digital se informada a data de vencimento.
           If Trim(RemoveCaracter('/', '', EmpresasVencimento_Certificado.AsString)) <> '' then begin
              mDias := StrtoInt(DifDias(Date, EmpresasVencimento_Certificado.AsDateTime));
              If (mDias < 0) then begin
                 mDias := mDias * -1;
                 ItemGrade(0, 'Certificado', '', '', '', 'Certificado vencido a '+InttoStr(mDias)+' dias (Ver data do certificado no cadastro da Empresa).');
              End;
           End;

           // Dados do cliente / Fornecedor. (Destinatario).
           If Trim(PedidosDestinatario_Bairro.AsString) = '' then
              ItemGrade(0, 'Destinatário', InttoStr(PedidosCliente_Codigo.AsInteger+PedidosFornecedor_Codigo.AsInteger), '', '', 'Falta informar o Bairro do Destinatário.');
           If Trim(PedidosDestinatario_Municipio.AsString) = '' then
              ItemGrade(0, 'Destinatário', InttoStr(PedidosCliente_Codigo.AsInteger+PedidosFornecedor_Codigo.AsInteger), '', '', 'Falta informar o Município do Destinatário.');
           If Trim(PedidosDestinatario_Estado.AsString) = '' then
              ItemGrade(0, 'Destinatário', InttoStr(PedidosCliente_Codigo.AsInteger+PedidosFornecedor_Codigo.AsInteger), '', '', 'Falta informar o Estado do Destinatário.');
           If Trim(PedidosDestinatario_Rua.AsString) = '' then
              ItemGrade(0, 'Destinatário', InttoStr(PedidosCliente_Codigo.AsInteger+PedidosFornecedor_Codigo.AsInteger), '', '', 'Falta informar o Logradouro do Destinatário.');
           If Trim(PedidosDestinatario_Pais.AsString) = '' then
              ItemGrade(0, 'Destinatário', InttoStr(PedidosCliente_Codigo.AsInteger+PedidosFornecedor_Codigo.AsInteger), '', '', 'Falta informar o País do Destinatário.');
           If (Trim(PedidosDestinatario_CNPJ_CPF.AsString) = '') and (PedidosDestinatario_Estado.AsString <> 'EX') then
              ItemGrade(0, 'Destinatário', InttoStr(PedidosCliente_Codigo.AsInteger+PedidosFornecedor_Codigo.AsInteger), '', '', 'Falta informar o CNPJ ou CPF do Destinatário.');

           // Regime tributário da empresa.
           If EmpresasRegime_Apuracao.AsInteger = 0 then
              ItemGrade(0, 'Empresa', '', '', '', 'Falta informar o Regime Tributário (CRT) no cadastro da Empresa).');

           // Código do enquadramento legal do IPI no Tipo de nota.
           TipoNota.Locate('Codigo', PedidosTipo_Nota.AsInteger, [loCaseInsensitive]);
           If Trim(TipoNotaEnquadramento_IPI.AsString) = '' then
              ItemGrade(PedidosItensItem.AsInteger, 'Tipo de Nota', PedidosTipo_Nota.AsString, '', '', 'Falta o "Código de Enquadramento Legal do IPI" no "Tipo de Nota".');

           if (Trim(PedidosItensProcesso.AsString) <> '') and (ProcessosDOC.FieldByName('Tipo').AsString = 'EXPORTAÇÃO') then begin
              if Trim(ProcessosDOCRE_Numero.AsString) = '' then begin
                  ItemGrade(0, 'Exportação', ProcessosDOCProcesso.AsString, '', '', 'Falta informar o número da RE.');
              end;
           end;

           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido)');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosItens.Open;

           produtos.sql.clear;
           produtos.sql.add('select * from produtos where codigo in(select codigo_Mercadoria from pedidositens where pedido = :pPedido) order by Codigo');
           produtos.paramByName('pPedido').AsInteger := PedidosNumero.asinteger;
           produtos.open;

           NotaFiscal_Eletronica2G.Enabled := false;
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.lProcesso.Caption  := 'Validando itens do pedido. . .';
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := PedidosItens.RecordCount;
           Janela_Processamento.Show;

           // Dados dos Itens da nota fiscal.
           While not PedidosItens.Eof do begin
                 ProcessosDOC.Locate('Processo', PedidosProcesso.AsString, [loCaseInsensitive]);

                 // Data do registro da DI.
                 If (DataLimpa(ProcessosDOCData_RegistroDeclaracao.AsString)) and (PedidosImportacao.AsBoolean) then
                    ItemGrade(PedidosItensItem.AsInteger, 'Processo', FormatMaskText('##/#######-#;0', PedidosItensDI.AsString), '', PedidosItensProcesso.AsString, 'Falta informar a data do Registro da DI no processo.');

                 // Local de desembaraço.
                 If (Trim(ProcessosDOCLocal_DesembaracoCodigo.AsString) = '') and (PedidosImportacao.AsBoolean) then
                    ItemGrade(PedidosItensItem.AsInteger, 'Processo', FormatMaskText('##/#######-#;0', PedidosItensDI.AsString), '', PedidosItensProcesso.AsString, 'Falta informar o Local do Desembaraço da mercadoria no processo.');

                 // Data de Desembaraço da DI.
                 If (DataLimpa(ProcessosDOCData_DesembaracoDeclaracao.AsString)) and (PedidosImportacao.AsBoolean) then
                    ItemGrade(PedidosItensItem.AsInteger, 'Processo', FormatMaskText('##/#######-#;0', PedidosItensDI.AsString), '', PedidosItensProcesso.AsString, 'Falta informar a data de Desembaraço da DI no processo.');

                 NCM.SQL.Clear;
                 NCM.SQL.Add('SELECT * FROM NCM WHERE(NCM = :pNCM)');
                 NCM.ParamByName('pNCM').AsString := PedidositensNCM.AsString;
                 NCM.Open;

                 // Codigo da mercadoria.
                 If PedidosItensCodigo_Mercadoria.AsInteger = 0 then
                    ItemGrade(PedidosItensItem.AsInteger, 'Item da Nota', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'Codigo da Mercadoria invalído.');

                 // Descrição da mercadoria.
                 If Trim(PedidosItensDescricao_Mercadoria.AsString) = '' then
                    ItemGrade(PedidosItensItem.AsInteger, 'Item da Nota', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'Descrição da Mercadoria invalída.');

                 // CST do ICMS.
                 If (Trim(PedidosItensCodigoTrib_TabA.AsString)+Trim(PedidosItensCodigoTrib_TabB.AsString)) = '' then
                    ItemGrade(PedidosItensItem.AsInteger, 'Item da Nota', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'CST de ICMS invalída.'+Trim(PedidosItensCodigoTrib_TabA.AsString)+Trim(PedidosItensCodigoTrib_TabB.AsString));

                 // CST do PIS.
                 If Trim(PedidosItensCSTPIS.AsString) = '' then
                    ItemGrade(PedidosItensItem.AsInteger, 'Item da Nota', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'CST do PIS invalída.'+Trim(PedidosItensCSTPIS.AsString));

                 // CST do COFINS.
                 If Trim(PedidosItensCSTCOFINS.AsString) = '' then
                    ItemGrade(PedidosItensItem.AsInteger, 'Item da Nota', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'CST da COFINS invalída.'+Trim(PedidosItensCSTCOFINS.AsString));

                 // CST do IPI.
                 If Trim(PedidosItensCSTIPI.AsString) = '' then
                    ItemGrade(PedidosItensItem.AsInteger, 'Item da Nota', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'CST do IPI invalída.'+Trim(PedidosItensCSTIPI.AsString));

                 // Código da NCM.
                 If Trim(PedidosItensNCM.AsString) = '' then
                    ItemGrade(PedidosItensItem.AsInteger, 'Produto', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'Falta o "Código da NCM" ');

                 // Unidade de medida.
                 If Trim(PedidosItensUnidade_Medida.AsString) = '' then
                    ItemGrade(PedidosItensItem.AsInteger, 'Produto', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'Falta a "Unidade de Medida" do Produto');

                 // Quantidade.
                 If (not PedidosComplementar.AsBoolean) and (PedidosItensQuantidade.AsFloat <= 0) then
                    ItemGrade(PedidosItensItem.AsInteger, 'Item da Nota', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'Falta a "Quantidade" do Produto');

                 // Valor unitário.
                 If (not PedidosComplementar.AsBoolean) and (PedidosItensValor_Unitario.AsFloat <= 0) then
                    ItemGrade(PedidosItensItem.AsInteger, 'Item da Nota', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'Falta o "Valor Unitário" do Produto');

                 // Codigo GTIN.
                 Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.AsInteger, [loCaseInsensitive]);
                 if ApenasNumeros(Produtos.fieldbyname('GTIN').asstring) <> '' then begin
                    if not ValidaGTIN(Trim(Produtos.fieldbyname('GTIN').asstring)) then begin
                       ItemGrade(PedidosItensItem.AsInteger, 'Produto', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'Codigo GTIN invalído: '+Produtos.fieldbyname('GTIN').asstring);
                    end;
                 end;
                 if ApenasNumeros(Produtos.fieldbyname('GTIN_Unidade').asstring) <> '' then begin
                    if not ValidaGTIN(Trim(Produtos.fieldbyname('GTIN_Unidade').asstring)) then begin
                       ItemGrade(PedidosItensItem.AsInteger, 'Produto', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'Codigo GTIN unidade invalído: '+Produtos.fieldbyname('GTIN_Unidade').asstring);
                    end;
                 end;

                 // Marinha Mercante "AFRMM" para notas de entrada de importação.
                 If (PedidosImportacao.AsBoolean) and (PedidosSaida_Entrada.AsInteger = 0) and (Trim(PedidosItensProcesso.AsString) <> '') and (ProcessosDOCVia_Transporte.AsInteger =  1) then begin
                    TiposProcesso.SQL.Clear;
                    TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso WHERE (Codigo = :pModalidade)');
                    TiposProcesso.ParamByName('pModalidade').AsInteger := ProcessosDOCModalidade_Importacao.AsInteger;
                    TiposProcesso.Open;

                    // Verifica se o código do AFRMM esta informado nos tipos de processo.
                    If (Trim(TiposProcessoClassificacao_AFRMM.AsString) = '') and (PedidosImportacao.AsBoolean) then
                       ItemGrade(PedidosItensItem.AsInteger, 'Tipo Processo', PedidosItensCodigo_Mercadoria.AsString, PedidosItensNCM.AsString, PedidosItensProcesso.AsString, 'Falta informar a class.financ.da "AFRMM" no cadastro dos "Tipos de Processo');

                    // Verifica se o "AFRMM" marinha mercante esta lançado no financeiro.
                    tDespesas.SQL.Clear;
                    tDespesas.SQL.Add('SELECT * FROM PagarReceber WHERE Processo = :pProcesso AND Classificacao = :pClassificacao');
                    tDespesas.ParamByName('pProcesso').AsString      := PedidosItensProcesso.AsString;
                    tDespesas.ParamByName('pClassificacao').AsString := TiposProcessoClassificacao_AFRMM.AsString;
                    tDespesas.Open;
                 End;

                 if TipoNotaNota_Referencia.AsBoolean then begin
                    if (Trim(PedidosItensProcesso.AsString) <> '') and (ProcessosDOC.FieldByName('Tipo').AsString = 'EXPORTAÇÃO') then begin
                       if PedidosItensMovimenta_Estoque.AsBoolean then begin
                          if trim(PedidosItensNota_Referencia.Value) = '' then begin
                             ItemGrade(0, 'Exportação', ProcessosDOCProcesso.AsString, '', '', PedidosItensItem.AsString+' Falta informar o número da nota fiscal de referência.');
                          end;
                       end;
                    end;
                 end;

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
                 PedidosItens.Next;
           End;
           NotaFiscal_Eletronica2G.Enabled := true;
           Janela_Processamento.Close;
           ErrosNFE.Refresh;
           bEnviar.Enabled := ErrosNFE.RecordCount = 0;
      End;
end;

procedure TNotaFiscal_Eletronica2G.GradeCellClick(Column: TColumn);
begin
     Grade.Enabled := false;
     Grade.UnselectAll;
     Grade.SelectedRows.CurrentRowSelected := True;
     If Dados.PedidosNumero.AsInteger > 0 then
        PegaErros;
     Grade.Enabled := true;
end;

procedure TNotaFiscal_Eletronica2G.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
    Icon: TBitmap;
begin
      With Dados do begin
           If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := clLime;
              FillRect(Rect);
              Font.Style := [fsbold];
              Font.Color := clBlack;
           End;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      End;
end;

procedure TNotaFiscal_Eletronica2G.GradeKeyUp(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     PegaErros;
end;

procedure TNotaFiscal_Eletronica2G.GradeEditChange(Sender: TObject);
begin
     PegaErros;
end;

procedure TNotaFiscal_Eletronica2G.cProcessoChange(Sender: TObject);
begin
     FiltraPedidos;
end;

procedure TNotaFiscal_Eletronica2G.FiltraPedidos;
begin
     With Dados do begin
          Grade.DisableScroll;
          Pedidos.SQL.Clear;
          If ConfiguracaoFaturamento_TravaContainer.AsBoolean = false then begin
             If (mTipoEnvio = 'NORMAL') or (mTipoEnvio = 'SVC') then begin
                Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE(Valor_TotalNota > 0 OR Complementar = 1)');
             End;
             If mTipoEnvio = 'EPEC' then begin
                Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE(Valor_TotalNota > 0 OR Complementar = 1) AND (ISNULL(DPEC,0) <> 1)');
             End;
             If mTipoEnvio = 'ENVIO EPEC' then begin
                Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE(Valor_TotalNota > 0 OR Complementar = 1) AND (DPEC = 1)');
                Grade.SelectAll;
                bSelecionar.Enabled := false;
                bDesmarcar.Enabled  := false;
                Grade.Enabled       := false;
             End;
          end else begin
             If (mTipoEnvio = 'NORMAL') or (mTipoEnvio = 'SVC') then begin
                Pedidos.SQL.Add('SELECT *');
                Pedidos.SQL.Add('FROM   Pedidos');
                Pedidos.SQL.Add('WHERE  (Valor_TotalNota > 0 OR Complementar = 1)');
                Pedidos.SQL.Add('       AND (((SELECT Via_Transporte FROM ProcessosDocumentos WHERE(Processo = Pedidos.Processo)) <> 1)');
                Pedidos.SQL.Add('        OR ((SELECT Via_Transporte FROM ProcessosDocumentos WHERE(Processo = Pedidos.Processo)) = 1 AND (SELECT COUNT(*) FROM Container WHERE(Processo = Pedidos.Processo)) > 0 ))');
             End;
             If mTipoEnvio = 'EPEC' then begin
                Pedidos.SQL.Add('SELECT *');
                Pedidos.SQL.Add('FROM   Pedidos');
                Pedidos.SQL.Add('WHERE  (Valor_TotalNota > 0 OR Complementar = 1) AND (ISNULL(DPEC,0) <> 1)');
                Pedidos.SQL.Add('       AND (((SELECT Via_Transporte FROM ProcessosDocumentos WHERE(Processo = Pedidos.Processo)) <> 1)');
                Pedidos.SQL.Add('        OR ((SELECT Via_Transporte FROM ProcessosDocumentos WHERE(Processo = Pedidos.Processo)) = 1 AND (SELECT COUNT(*) FROM Container WHERE(Processo = Pedidos.Processo)) > 0 ))');
             End;
             If mTipoEnvio = 'ENVIO EPEC' then begin
                Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE(Valor_TotalNota > 0 OR Complementar = 1) AND (DPEC = 1) ORDER BY Numero');
                Pedidos.SQL.Add('SELECT *');
                Pedidos.SQL.Add('FROM   Pedidos');
                Pedidos.SQL.Add('WHERE  (Valor_TotalNota > 0 OR Complementar = 1) AND (DPEC = 1) ');
                Pedidos.SQL.Add('       AND (((SELECT Via_Transporte FROM ProcessosDocumentos WHERE(Processo = Pedidos.Processo)) <> 1)');
                Pedidos.SQL.Add('        OR ((SELECT Via_Transporte FROM ProcessosDocumentos WHERE(Processo = Pedidos.Processo)) = 1 AND (SELECT COUNT(*) FROM Container WHERE(Processo = Pedidos.Processo)) > 0 ))');
                Grade.SelectAll;

                bSelecionar.Enabled := false;
                bDesmarcar.Enabled  := false;
                Grade.Enabled       := false;
             End;

             tContainers.SQL.Clear;
             tContainers.SQL.Add('SELECT *');
             tContainers.SQL.Add('FROM   Pedidos');
             tContainers.SQL.Add('WHERE  (Valor_TotalNota > 0 OR Complementar = 1)');
             tContainers.SQL.Add('       AND ( (SELECT Via_Transporte FROM ProcessosDocumentos WHERE(Processo = Pedidos.Processo)) = 1 AND (SELECT COUNT(*) FROM Container WHERE(Processo = Pedidos.Processo)) = 0 )');
             tContainers.Open;
          End;
          
          If Trim(cProcesso.Text) <> '' then begin
             Pedidos.SQL.Add('AND (Processo = :pProcesso)');
             Pedidos.ParamByName('pProcesso').AsString := cProcesso.Text;
          End;
          If cTipo.ItemIndex < 2 then begin
             Pedidos.SQL.Add('AND (Saida_Entrada = :pSaidaEntrada)');
             Pedidos.ParamByName('pSaidaEntrada').AsInteger := cTipo.ItemIndex;
          End;

          Pedidos.SQL.Add('ORDER BY Numero');
          //Pedidos.SQL.SaveToFile('c:\temp\Pedidos_Outros.sql');
          Pedidos.Open;

          Grade.EnableScroll;
     End;
end;

procedure TNotaFiscal_Eletronica2G.cTipoClick(Sender: TObject);
begin
      FiltraPedidos;
end;

procedure TNotaFiscal_Eletronica2G.tContainersCalcFields(DataSet: TDataSet);
begin
      if tContainersSaida_Entrada.Value = 0 then
         tContainersSaida_EntradaTexto.Value := 'Entrada'
      else
         tContainersSaida_EntradaTexto.Value := 'Saída';
end;

procedure TNotaFiscal_Eletronica2G.PageControl1Change(Sender: TObject);
begin
     bEnviar.Enabled := PageControl1.ActivePageIndex = 0;
end;

procedure TNotaFiscal_Eletronica2G.Button1Click(Sender: TObject);
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

procedure TNotaFiscal_Eletronica2G.Button2Click(Sender: TObject);
Var
    mSel:integer;
begin
     with Dados do begin
          for mSel := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
              cMensagens.Lines.Add('Pedido Nº '+PedidosNumero.AsString);
          end;
     end;
end;

procedure TNotaFiscal_Eletronica2G.bXMLClick(Sender: TObject);
Var
    mSel: Integer;
begin
      // Gerar apenas XML do Pedido.
      bEnviar.Enabled := false;
      bXML.Enabled    := false;
      bEnviar.Tag     := 1;
      cMensagens.Clear;
      For mSel := 0 to Grade.SelectedRows.Count-1 do begin
          Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
          cMensagens.Lines.Add('Pedido Nº '+Dados.PedidosNumero.AsString);

          GerarXML;

          { Quando precisar testar o salvamento da nota fiscal, habilitar esta linha. e clicar no botão "Apenas Gerar o XML" }
          //SalvarNfe;

          ShowMessage('XML salvo em ' + Trim(Dados.ConfiguracaoPasta_NFe.Value)+'\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]))+'_PEDIDO_'+PoeZero(6, Dados.PedidosNumero.Value)+'.xml');
          ShellExecute(Handle, 'Open', PChar(Trim(Dados.ConfiguracaoPasta_NFe.Value)+'\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]))+'_PEDIDO_'+PoeZero(6, Dados.PedidosNumero.Value)+'.xml'), '', '', SW_ShowNormal);
      End;

      bEnviar.Tag     := 0;
      bXML.Enabled    := true;
      bEnviar.Enabled := true;
end;

procedure TNotaFiscal_Eletronica2G.GradeErrosCellClick(Column: TColumn);
Var
   mPedido: Integer;
   mSQL   : WideString;
begin
      With Dados do begin
           mPedido := PedidosNumero.AsInteger;
           If Column.Index = 0 then begin
              // Modulo de processo de importação.
              If Column.Field.Value = 'Processo' then begin
                 Processo_Importacao              := TProcesso_Importacao.Create(Self);
                 Processo_Importacao.Caption      := Caption;
                 Processo_Importacao.mNFEProcesso := ErrosNFEProcesso.AsString;
                 Processo_Importacao.ShowModal;
              End;
              // Modulo de processo de exportação.
              If Column.Field.Value = 'Exportação' then begin
                 Processo_Exportacao              := TProcesso_Exportacao.Create(Self);
                 Processo_Exportacao.Caption      := Caption;
                 Processo_Exportacao.mNFEProcesso := ErrosNFEProcesso.AsString;
                 Processo_Exportacao.ShowModal;
              End;

              // Modulo de cadastro de clientes / fornecedores.
              If Column.Field.Value = 'Destinatário' then begin
                 If PedidosSaida_Entrada.AsInteger = 0 then begin
                    Cadastro_Fornecedores            := TCadastro_Fornecedores.Create(Self);
                    Cadastro_Fornecedores.Caption    := Caption;
                    Cadastro_Fornecedores.mNFECodigo := PedidosFornecedor_Codigo.AsInteger;
                    Cadastro_Fornecedores.ShowModal;
                 end else begin
                    Cadastro_Clientes            := TCadastro_Clientes.Create(Self);
                    Cadastro_Clientes.Caption    := Caption;
                    Cadastro_Clientes.mNFECodigo := PedidosCliente_Codigo.AsInteger;
                    Cadastro_Clientes.ShowModal;
                 End;
              End;
              // Modulo do cadastro de NCM.
              If Column.Field.Value = 'NCM' then begin
                 Cadastro_NCM         := TCadastro_NCM.Create(Self);
                 Cadastro_NCM.Caption := Caption;
                 Cadastro_NCM.mNFENCM := ErrosNFENCM.AsString;
                 Cadastro_NCM.ShowModal;
              End;
              // Modulo de pedidos de importação.
              If Column.Field.Value = 'Item da Nota' then begin
                 If (PedidosImportacao.AsBoolean = true) then begin
                    mSQL              := ProcessosDOC.SQL.Text;
                    Pedido            := TPedido.Create(Self);
                    Pedido.Caption    := Caption;
                    Pedido.mSai_Entra := PedidosSaida_Entrada.Value;
                    If (PedidosSaida_Entrada.AsInteger = 0) then Pedido.lTitulo.Caption := 'Entrada (Importação).';
                    If (PedidosSaida_Entrada.AsInteger = 1) then Pedido.lTitulo.Caption := 'Saída (Importação).';
                    Pedido.ShowModal;

                    ProcessosDOC.SQL.Clear;
                    ProcessosDOC.SQL.Add(mSQL);
                    ProcessosDOC.Open;
                 End;
              End;
              // Modulo de pedidos Outras.
              If (Column.Field.Value = 'Item da Nota') and (PedidosImportacao.AsBoolean = false) then begin
                 Pedido_Outros            := TPedido_Outros.Create(Self);
                 Pedido_Outros.Caption    := Caption;
                 Pedido_Outros.mSai_Entra := PedidosSaida_Entrada.AsInteger;
                 If (PedidosSaida_Entrada.AsInteger = 0) and (PedidosImportacao.AsBoolean = false) then Pedido_Outros.lTitulo.Caption := 'Entrada (Outras).';
                 If (PedidosSaida_Entrada.AsInteger = 1) and (PedidosImportacao.AsBoolean = false) then Pedido_Outros.lTitulo.Caption := 'Saída (Outras).';
                 Pedido_Outros.ShowModal;
              End;
              // Modulo de Tipos de Processos.
              If Column.Field.Value = 'Tipo Processo' then begin
                 Cadastro_TiposProcesso := TCadastro_TiposProcesso.Create(Self);
                 Cadastro_TiposProcesso.Caption := Caption;
                 Cadastro_TiposProcesso.ShowModal;
                 TiposProcesso.Open;
                 TiposProcesso.Refresh;
              End;
              // Modulo Financeiro.
              If Column.Field.Value = 'Movimentação Financeira' then begin
                 mSQL := ProcessosDOC.SQL.Text;
                 Financeiro_Lista := TFinanceiro_Lista.Create(Self);
                 Financeiro_Lista.Caption      := Caption;
                 Financeiro_Lista.mNFEProcesso := ErrosNFEProcesso.AsString;
                 Financeiro_Lista.ShowModal;
                 ProcessosDOC.SQL.Clear;
                 ProcessosDOC.SQL.Add(mSQL);
                 ProcessosDOC.Open;
              End;
              // Modulo do cadastro de Tipo de Nota.
              If Column.Field.Value = 'Tipo de Nota' then begin
                 Config_TipoNota              := TConfig_TipoNota.Create(Self);
                 Config_TipoNota.Caption      := Caption;
                 Config_TipoNota.mNFETipoNota := ErrosNFEProduto.AsString;
                 Config_TipoNota.ShowModal;
                 TipoNota.Open;
                 TipoNota.Refresh;
              End;
              // Modulo do cadastro de Empresas.
              If Column.Field.Value = 'Empresa' then begin
                 Cadastro_Empresas         := TCadastro_Empresas.Create(Self);
                 Cadastro_Empresas.Caption := Caption;
                 Cadastro_Empresas.ShowModal;
                 Empresas.Open;
                 Empresas.Refresh;
              End;
              // Modulo do cadastro de produtos.
              If Column.Field.Value = 'Produto' then begin
                 Cadastro_Produtos := TCadastro_Produtos.Create(Self);
                 Cadastro_Produtos.Caption   := Caption;
                 Cadastro_Produtos.NFECodigo := ErrosNFEProduto.Asinteger;
                 Cadastro_Produtos.ShowModal;
              End;

              FiltraPedidos;
              Pedidos.Locate('Numero', mPedido, [loCaseInsensitive]);
              ErrosNfe.Open;
              PegaErros;
           End;
      End;
end;

Function TNotaFiscal_Eletronica2G.MontaHistorico(Historico: integer):String;
begin
      with Dados, dmContab, dmFiscal do begin
           if Trim(NotasTerceirosProcesso.AsString) <> '' then begin
              ProcessosDOC.SQL.Clear;
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE Processo = '+NotasProcesso.AsString);
              ProcessosDOC.Open;
           end;
           if Historicos.Locate('Codigo', Historico, [loCaseInsensitive]) then begin
              Result := ComplementoHistorico(HistoricosMacro.Value
                                            ,FornecedoresNome.Value
                                            ,NotasProcesso.Value
                                            ,ProcessosDOCNumero_Declaracao.AsString
                                            ,''
                                            ,'Nota Fiscal'
                                            ,NotasNumero.AsString
                                            ,NotasData_Emissao.AsString
                                            ,''
                                            ,'');
           end;
      end;
end;

procedure TNotaFiscal_Eletronica2G.RegistraPasso(pPasso: string);
var
    Salva: boolean;
begin
      with Dados do begin
           Salva := Pedidos.State <> dsEdit;
           if Salva then Pedidos.Edit;

           PedidosPasso.Value := pPasso;

           if Salva then Pedidos.Post;
      end;
end;

procedure TNotaFiscal_Eletronica2G.DuplicataDANFE(pParc:integer);
var
   Obj:TObject;
begin
      // Pega o numero da duplicata.
      Obj := FindComponent('lNumDupl'+InttoStr(pParc));
      if Obj <> nil then begin
         if Dados.ConfiguracaoSequencial_Duplicata.AsInteger = 0 then
            (Obj as TppLabel).Caption := FormatMaskText('999999999-A;0; ',dmFiscal.DuplicatasDuplicata.Value)
         else
            (Obj as TppLabel).Caption := FormatMaskText('999999999-A;0; ',dmFIscal.DuplicatasNumero.Value);
      end;
      // Pega a data da duplicata.
      Obj := FindComponent('lDataDupl'+InttoStr(pParc));
      if Obj <> nil then begin
        (Obj as TppLabel).Caption := dmFiscal.DuplicatasData_Vencimento.AsString;
      end;
      // Pega o valor da duplicata.
      Obj := FindComponent('lValorDupl'+InttoStr(pParc));
      if Obj <> nil then begin
        (Obj as TppLabel).Caption := FormatFloat('###,###,##0.00', dmFiscal.DuplicatasValor_Liquido.Value);
      end;
end;

procedure TNotaFiscal_Eletronica2G.ZerarDupl;
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

procedure TNotaFiscal_Eletronica2G.BloqueiaEmissao(Tipo: Boolean);
begin
      with Dados, Empresas do begin
           Close;
           sql.clear;
           sql.add('select * from Empresas where Codigo = :pEmpresa');
           parambyname('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           open;
           edit;
              fieldbyname('EmissaoNFE_Bloqueada').Value        := Tipo;
              fieldbyname('EmissaoNFE_BloqueadaUsuario').Value := iif(fieldbyname('EmissaoNFE_Bloqueada').asboolean, Menu_Principal.mUsuarioNome + ' ('+NomeComputador+')', '');
           post;
      end;
end;

// Envia a nota fiscal eletrônica para o web service.
function TNotaFiscal_Eletronica2G.ConsultaContig: boolean;
var
   Util: NFe_Util_2G_Interface;
   cstat:integer;
begin
      Util            := CoUtil.Create;
      NomeCertificado := Trim(Dados.EmpresasCertificado_Digital.AsString);
      SiglaWS         := Trim(Dados.EmpresasUF_WebServiceEPEC.AsString);
      RetWS           := '';
      CabMsg          := '';
      Msg             := '';
      tpAmb           := Menu_Principal.Amb_Producao;
      Licenca         := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
      Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
      Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
      Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);

      cStat := util.ConsultaStatus2G(siglaWS
                                    ,Dados.Empresas.FieldByName('Estado').AsString
                                    ,tpAmb
                                    ,nomeCertificado
                                    ,Trim(Dados.EmpresasNFEletronica_Layout.Value)
                                    ,msgDados
                                    ,msgRetWS
                                    ,msgResultado
                                    ,proxy
                                    ,usuario
                                    ,senha);

      if cStat <> 107 then begin
         messagedlg(msgresultado, mtinformation, [mbok], 0);
      end;
      cMensagens.Lines.Add('        2.2. Verificando se servidor de contigência esta ativo.');
      cMensagens.Lines.Add('        '+msgresultado);
      ConsultaContig := cStat = 107;

      Util := nil;
end;



end.
