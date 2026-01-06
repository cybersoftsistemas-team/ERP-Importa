unit frmPedido_Televendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, DB, DBAccess, MSAccess, Grids, DBGrids,
  RXDBCtrl, Buttons, RxLookup, Funcoes, Vcl.ComCtrls, ppCtrls, ppDBPipe, ppBands, ppParameter, ppProd, ppReport, ppVar, ppSubRpt, Menus, ppTypes, IdIOHandler, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage, IdTCPConnection,
  IdSMTP, IdAttachmentFile, MaskUtils, RxDBComb, ppMemo, IdTCPClient, IdExplicitTLSClientServerBase, MemDS, Mask, OleServer, ExcelXP, RxCurrEdit, Excel2000, ppDesignLayer, ppModule, raCodMod, ppStrtch, ppPrnabl, ppClass, 
  ppCache, IdIOHandlerSocket, IdBaseComponent, IdComponent, IdMessageClient, IdSMTPBase, ppDB, ppComm, ppRelatv, RxToolEdit, Vcl.Imaging.pngimage, system.UITypes;

type
  TPedido_Televendas = class(TForm)
    Panel1: TPanel;
    Navega: TDBNavigator;
    bSair: TButton;
    bPesquisar: TButton;
    tTemp: TMSQuery;
    pPasta: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    bPesquisaCliente: TSpeedButton;
    StaticText11: TStaticText;
    cPedido: TDBEdit;
    StaticText1: TStaticText;
    cAtendente: TRxDBLookupCombo;
    cCliente: TRxDBLookupCombo;
    lCliente: TStaticText;
    StaticText2: TStaticText;
    DBDateEdit6: TDBDateEdit;
    StaticText3: TStaticText;
    cModalidade: TRxDBLookupCombo;
    TabSheet3: TTabSheet;
    GradeClientes: TDBGrid;
    cPesquisa: TEdit;
    StaticText6: TStaticText;
    tClientes: TMSQuery;
    bItens: TButton;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image1: TImage;
    tTotal: TMSQuery;
    bOrcamento: TButton;
    pPedidos: TppDBPipeline;
    pEmpresa: TppDBPipeline;
    tPedidos: TMSQuery;
    dstPedidos: TDataSource;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    StaticText7: TStaticText;
    DBMemo1: TDBMemo;
    PopupMenu1: TPopupMenu;
    ConfirmarPedido1: TMenuItem;
    CancelarConfirmao1: TMenuItem;
    N1: TMenuItem;
    ConfirmarTodososPedidos1: TMenuItem;
    CancelarConfirmaodeTodososPedidos1: TMenuItem;
    bEmail: TBitBtn;
    SMTP: TIdSMTP;
    EmailMSG: TIdMessage;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;
    rOrcamento: TppReport;
    ppParameterList1: TppParameterList;
    tItensNotas: TMSQuery;
    dstItensNotas: TDataSource;
    TabSheet2: TTabSheet;
    Gradeitens: TDBGrid;
    GradeNotas: TDBGrid;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    tNotasNota: TIntegerField;
    tNotasData: TDateTimeField;
    tNotasValor_TotalNota: TCurrencyField;
    tNotasForma_Pgto: TStringField;
    tItensNotasCodigo_Mercadoria: TIntegerField;
    tItensNotasDescricao: TStringField;
    tItensNotasQuantidade: TFloatField;
    tItensNotasValor_Unitario: TFloatField;
    tItensNotasNota: TIntegerField;
    TabSheet4: TTabSheet;
    StaticText8: TStaticText;
    cFiltroAtendente: TRxDBLookupCombo;
    GradeFiltro: TDBGrid;
    tFiltraPed: TMSQuery;
    dstFiltraPed: TDataSource;
    tFiltraPedData: TDateTimeField;
    tFiltraPedModalidade_Pagamento: TSmallintField;
    tFiltraPedCliente_Nome: TStringField;
    tFiltraPedCliente_Estado: TStringField;
    tFiltraPedDescricao_Modalidade: TStringField;
    tFiltraPedDescricao_Ramo: TStringField;
    tFiltraPedAtendente_Nome: TStringField;
    tFiltraPedPeso: TFloatField;
    tFiltraPedTotal_Pedido: TCurrencyField;
    cTotalAtendente: TCurrencyEdit;
    cTotalPedidosProd: TCurrencyEdit;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    tSomaPed: TMSQuery;
    tFiltraPedSituacao: TStringField;
    cFaturados: TCheckBox;
    cQtdeAtendente: TCurrencyEdit;
    cQtdeGeral: TCurrencyEdit;
    cCancelados: TCheckBox;
    tFiltraPedCancelado: TBooleanField;
    tFiltraPedFaturado: TBooleanField;
    bOrcamentoCompras: TButton;
    tNotasSituacao: TStringField;
    StaticText4: TStaticText;
    DBEdit1: TDBEdit;
    StaticText5: TStaticText;
    DBEdit2: TDBEdit;
    StaticText12: TStaticText;
    cModalideFrete: TRxDBComboBox;
    tFiltraPedTotal_Produtos: TFloatField;
    StaticText13: TStaticText;
    cTotalProdAtendente: TCurrencyEdit;
    StaticText14: TStaticText;
    cTotalPedidos: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    StaticText15: TStaticText;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText16: TStaticText;
    bExcel: TBitBtn;
    ExcelApplication1: TExcelApplication;
    mPlan: TExcelWorksheet;
    tFiltraPedPedido: TStringField;
    StaticText17: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    StaticText20: TStaticText;
    cDataJanIni: TDBDateEdit;
    StaticText21: TStaticText;
    DBEdit6: TDBEdit;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    cDataJanFim: TDBDateEdit;
    TabSheet5: TTabSheet;
    Grade: TDBGrid;
    rHeating: TppReport;
    ppParameterList2: TppParameterList;
    StaticText24: TStaticText;
    DBEdit7: TDBEdit;
    pRecap: TppDBPipeline;
    bProposta: TButton;
    rSpot: TppReport;
    ppParameterList3: TppParameterList;
    pMuni: TppDBPipeline;
    ppHeaderBand3: TppHeaderBand;
    ppDBText41: TppDBText;
    SpotLogo: TppImage;
    lSpotEnd_Emp: TppLabel;
    ppDBText59: TppDBText;
    ppLabel45: TppLabel;
    ppDBText60: TppDBText;
    lSpotMun_Emp: TppLabel;
    ppLabel65: TppLabel;
    ppDBText61: TppDBText;
    ppLabel66: TppLabel;
    ppDBText62: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppShape43: TppShape;
    lNumPropostaSpot: TppLabel;
    ppLabel67: TppLabel;
    ppDBText63: TppDBText;
    ppLine51: TppLine;
    ppLabel68: TppLabel;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppLine52: TppLine;
    ppLabel70: TppLabel;
    ppLine53: TppLine;
    ppDBText66: TppDBText;
    ppLabel71: TppLabel;
    ppDBText67: TppDBText;
    ppLine54: TppLine;
    ppLabel72: TppLabel;
    ppLine55: TppLine;
    ppLabel73: TppLabel;
    ppDBText68: TppDBText;
    lItens: TppMemo;
    lData: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppLabel84: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppLine71: TppLine;
    ppLine72: TppLine;
    raCodeModule3: TraCodeModule;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    cDataRetirada: TDBDateEdit;
    StaticText25: TStaticText;
    cDataPgto: TDBDateEdit;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    DBEdit8: TDBEdit;
    ppDBText69: TppDBText;
    StaticText28: TStaticText;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    DBComboBox5: TDBComboBox;
    StaticText33: TStaticText;
    DBEdit9: TDBEdit;
    StaticText34: TStaticText;
    cModalCarreg: TDBComboBox;
    ppHeaderBand2: TppHeaderBand;
    ppDBText34: TppDBText;
    HeatingLogo: TppImage;
    ppDetailBand3: TppDetailBand;
    ppShape42: TppShape;
    ppLabel46: TppLabel;
    ppDBText40: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel47: TppLabel;
    ppLine35: TppLine;
    ppLabel48: TppLabel;
    ppDBText42: TppDBText;
    ppLine36: TppLine;
    ppLabel49: TppLabel;
    ppLine37: TppLine;
    ppDBText44: TppDBText;
    ppLabel50: TppLabel;
    ppLine38: TppLine;
    ppLabel51: TppLabel;
    ppDBText46: TppDBText;
    ppLine39: TppLine;
    ppLabel52: TppLabel;
    ppLine40: TppLine;
    ppLabel53: TppLabel;
    ppLine41: TppLine;
    ppLabel54: TppLabel;
    ppLine42: TppLine;
    ppLabel55: TppLabel;
    ppDBText50: TppDBText;
    ppLine43: TppLine;
    ppLabel56: TppLabel;
    ppDBText51: TppDBText;
    ppLine44: TppLine;
    ppLabel57: TppLabel;
    ppDBText52: TppDBText;
    ppLine45: TppLine;
    ppLabel58: TppLabel;
    ppDBText53: TppDBText;
    ppLine46: TppLine;
    ppLabel59: TppLabel;
    ppLine47: TppLine;
    ppLabel60: TppLabel;
    ppLine48: TppLine;
    ppLabel61: TppLabel;
    ppLine49: TppLine;
    ppLabel62: TppLabel;
    ppLine50: TppLine;
    ppLabel64: TppLabel;
    lComprador: TppLabel;
    lNumPropostaHet: TppLabel;
    lCondPgto: TppMemo;
    lGarantia: TppMemo;
    lCustoPorto: TppMemo;
    lImpostos: TppMemo;
    lJanela: TppMemo;
    lPeriodo: TppMemo;
    lTrigger: TppMemo;
    lOutros: TppMemo;
    ppDBText43: TppDBText;
    ppDBText45: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLabel90: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine62: TppLine;
    ppLine63: TppLine;
    raCodeModule4: TraCodeModule;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    tNotasPedido: TStringField;
    StaticText35: TStaticText;
    cVolumes: TDBEdit;
    cArmazem: TRxDBLookupCombo;
    tTerminais: TMSQuery;
    dsTerminais: TDataSource;
    tTerminaisCodigo: TIntegerField;
    tTerminaisCNPJ: TStringField;
    tTerminaisNome: TStringField;
    GroupBox2: TGroupBox;
    Image5: TImage;
    Image3: TImage;
    Label13: TLabel;
    Image4: TImage;
    Label15: TLabel;
    Label16: TLabel;
    Image6: TImage;
    Label19: TLabel;
    Image7: TImage;
    Label21: TLabel;
    lTotalICMS: TLabel;
    lTotalICMSST: TLabel;
    lTotalIPI: TLabel;
    lTotalDesconto: TLabel;
    lTotalProdutos: TLabel;
    Image8: TImage;
    Label1: TLabel;
    lTotalImpostos: TLabel;
    StaticText36: TStaticText;
    cTipoNota: TRxDBLookupCombo;
    TabSheet6: TTabSheet;
    DBGrid1: TDBGrid;
    tLiberados: TMSQuery;
    dstLiberados: TDataSource;
    tLiberadosPedido: TStringField;
    tLiberadosData: TDateTimeField;
    tLiberadosTotal_Pedido: TCurrencyField;
    tLiberadosSituacao_Televendas: TStringField;
    Panel3: TPanel;
    cPesqLib: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    tLiberadosNome_Cliente: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppDBText14: TppDBText;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText7: TppDBText;
    ppShape9: TppShape;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppShape7: TppShape;
    ppLabel8: TppLabel;
    ppShape8: TppShape;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppShape10: TppShape;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppShape11: TppShape;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppShape12: TppShape;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppShape13: TppShape;
    ppLabel15: TppLabel;
    ppDBText12: TppDBText;
    ppShape14: TppShape;
    ppLabel16: TppLabel;
    ppDBText13: TppDBText;
    ppShape15: TppShape;
    ppLabel17: TppLabel;
    ppDBText15: TppDBText;
    ppShape16: TppShape;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppShape17: TppShape;
    ppLabel19: TppLabel;
    ppDBText17: TppDBText;
    ppShape18: TppShape;
    ppLabel20: TppLabel;
    ppDBText18: TppDBText;
    ppShape19: TppShape;
    ppLabel21: TppLabel;
    ppDBText19: TppDBText;
    ppShape20: TppShape;
    ppLabel22: TppLabel;
    ppDBText20: TppDBText;
    ppShape41: TppShape;
    ppLabel44: TppLabel;
    ppDBText39: TppDBText;
    ppShape34: TppShape;
    ppLabel36: TppLabel;
    ppDBText22: TppDBText;
    OrcamentoLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape24: TppShape;
    ppShape23: TppShape;
    ppShape22: TppShape;
    ppLabel23: TppLabel;
    ppShape21: TppShape;
    ppLabel25: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppShape25: TppShape;
    ppLabel27: TppLabel;
    ppShape26: TppShape;
    ppLabel28: TppLabel;
    ppShape27: TppShape;
    ppLabel29: TppLabel;
    ppShape28: TppShape;
    ppLabel30: TppLabel;
    ppShape29: TppShape;
    ppLabel31: TppLabel;
    ppShape30: TppShape;
    ppLabel32: TppLabel;
    ppShape31: TppShape;
    ppLabel33: TppLabel;
    ppShape32: TppShape;
    ppLabel34: TppLabel;
    ppShape33: TppShape;
    ppLabel35: TppLabel;
    ppShape35: TppShape;
    ppLabel38: TppLabel;
    ppShape40: TppShape;
    ppLabel43: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppDBText38: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape38: TppShape;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel37: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppShape36: TppShape;
    ppLabel39: TppLabel;
    ppDBText36: TppDBText;
    ppShape37: TppShape;
    ppLabel40: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppLabel41: TppLabel;
    ppDBText37: TppDBText;
    ppShape39: TppShape;
    ppLabel42: TppLabel;
    ppDBCalc11: TppDBCalc;
    lMediaDesconto: TppVariable;
    ppDBCalc2: TppDBCalc;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine20: TppLine;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    raCodeModule2: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bPesquisaClienteClick(Sender: TObject);
    procedure lClienteClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bAlterarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure cPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure pPastaChange(Sender: TObject);
    procedure Totaliza;
    procedure cPedidoChange(Sender: TObject);
    procedure cAtendenteChange(Sender: TObject);
    procedure bItensClick(Sender: TObject);
    procedure bOrcamentoClick(Sender: TObject);
    procedure ConfirmarPedido1Click(Sender: TObject);
    procedure CancelarConfirmao1Click(Sender: TObject);
    procedure ConfirmarTodososPedidos1Click(Sender: TObject);
    procedure CancelarConfirmaodeTodososPedidos1Click(Sender: TObject);
    procedure ppDetailBand2AfterPrint(Sender: TObject);
    procedure Filtra;
    procedure FiltraNotas;
    procedure bEmailClick(Sender: TObject);
    procedure tNotasAfterScroll(DataSet: TDataSet);
    procedure GradeClientesCellClick(Column: TColumn);
    procedure GradeClientesDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cFiltroAtendenteChange(Sender: TObject);
    procedure GradeFiltroDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bOrcamentoComprasClick(Sender: TObject);
    procedure bExcelClick(Sender: TObject);
    procedure bPropostaClick(Sender: TObject);
    procedure rSpotBeforePrint(Sender: TObject);
    procedure rHeatingBeforePrint(Sender: TObject);
    procedure cPesqLibChange(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
    mUF: String;
    mItensDesconto: Integer;
    mDesconto: Real;
  end;

var
  Pedido_Televendas: TPedido_Televendas;

implementation

uses frmDados, frmCadastro_Clientes, frmPedido_TelevendasItens, frmMenu_Principal, frmJanela_Email, frmPedido_TelevendasItensComb;

{$R *.dfm}

procedure TPedido_Televendas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.ClientesTelefone1.EditMask := '';
      Dados.ClientesTelefone2.EditMask := '';

      FecharTabelas(Dados, nil, nil, nil);

      Pedido_Televendas.Release;
      Pedido_Televendas := nil;
end;

procedure TPedido_Televendas.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_Televendas.FormCreate(Sender: TObject);
begin
      if Menu_Principal.Height <= 768 then begin
         ScaleBy(93, 100);
      end;
      
      bProposta.visible := Dados.ConfiguracaoTela_ItensTelevendas.AsBoolean;

      if (FileExists('fundo_barra_AzulEsc.bmp')) then
         Image1.Picture.LoadFromFile('fundo_barra_AzulEsc.bmp');
         
      if (FileExists('fundo_barra.bmp')) then begin
         Image3.Picture.LoadFromFile('fundo_barra.bmp');
         Image4.Picture.Assign(Image3.Picture);
         Image5.Picture.Assign(Image3.Picture);
         Image6.Picture.Assign(Image3.Picture);
         Image7.Picture.Assign(Image3.Picture);
         Image8.Picture.Assign(Image3.Picture);
      end;
end;

procedure TPedido_Televendas.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      with Dados do begin
           Configuracao.Open;
           with Usuarios do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Usuarios WHERE Call_Center = 1');
                Open;
                Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseInsensitive]);
           end;
           with Empresas do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
                ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                Open;
           end;
           with Municipios do begin 
                SQL.Clear;
                SQL.Add('select * from Municipios where Codigo = :pCodigo');
                ParamByName('pCodigo').value := Dados.EmpresasMunicipio_Codigo.value;
                Open;
           end;
           with TipoNota do begin 
                sql.Clear;
                sql.Add('Select *');
                sql.add('from TipoNota');
                sql.Add('where Saida_Entrada = 1');
                sql.Add('and Visivel_Televendas = 1');
                sql.Add('and Ativo = 1');
                sql.Add('and Finalidade_Mercadoria = 0');
                sql.Add('and isnull(Complementar, 0) = 0');
                sql.Add('order by Codigo');
                Open;
           end;
           with Natureza do begin
                SQL.Clear;
                SQL.Add('SELECT *');
                SQL.Add('FROM Natureza');
                SQL.Add('WHERE (Ativo = 1) and (Codigo BETWEEN :pIni AND :pFim)');
                SQL.Add('ORDER BY Codigo');
                ParamByName('pIni').AsString := ConfiguracaoNatureza_SaidaIni.Value;
                ParamByName('pFim').AsString := ConfiguracaoNatureza_SaidaFim.Value;
                Open;
           end;
           with PedidosRepresentantes do begin
                sql.clear;
                sql.add('select *');
                sql.Add('from PedidosRepresentantes');
                sql.add('where Origem_Pedido = ''TELEVENDAS'' ');
                sql.add('and Situacao_Televendas = ''AGUARDANDO'' ');
                sql.add('and isnull(Cancelado, 0) = 0');
                sql.add('and isnull(Faturado, 0) = 0');
                if not UsuariosCall_CenterTodos.asboolean then begin
                   sql.add('and Atendente = :pAtendente');
                   parambyname('pAtendente').asstring := menu_principal.mUsuarioCodigo;
                end;
                sql.add('order by Pedido desc');
                //sql.SaveToFile('c:\temp\Televendas_Pedido.sql');
                open;
           end;
           with tLiberados do begin
                sql.clear;
                sql.add('select Pedido');
                sql.add('      ,Data');
                sql.add('      ,Cliente');
                sql.add('      ,Total_Pedido');
                sql.add('      ,Situacao_Televendas');
                sql.add('      ,Nome_Cliente = (select Nome from Clientes cl where cl.Codigo = Cliente)');
                sql.add('from PedidosRepresentantes');
                sql.add('where Origem_Pedido = ''TELEVENDAS'' ');
                sql.add('and Local between 1 and 7');
                sql.add('and Situacao_Televendas <> ''AGUARDANDO'' ');
                sql.add('and isnull(Cancelado, 0) = 0');
                if not UsuariosCall_CenterTodos.asboolean then begin
                   sql.add('and Atendente = :pAtendente');
                   parambyname('pAtendente').asstring := menu_principal.mUsuarioCodigo;
                end;
                sql.add('order by Pedido desc');
                //sql.SaveToFile('c:\temp\Televendas_Pedido.sql');
                open;
           end;
           with Clientes do begin
                SQL.Clear;
                if (UsuariosCall_CenterTodos.AsBoolean) or (Menu_Principal.mUsuarioNome = 'ADMINISTRADOR') then begin
                   SQL.Add('SELECT * FROM Clientes WHERE Ativo = 1 ORDER BY Nome');
                end else begin
                   SQL.Add('SELECT * FROM Clientes WHERE Ativo = 1 AND Atendente = :pAtendente ORDER BY Nome');
                   ParamByName('pAtendente').AsString := Menu_Principal.mUsuarioCodigo
                end;
                open;
           end;
           with Fornecedores do begin
                sql.clear;
                sql.add('select * from Fornecedores');
                sql.add('where isnull(Ativo, 0) = 1');
                sql.add('and Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%TRANSPORT%'')');
                sql.add('order by Nome');
                open;
           end;
           with tTerminais do begin
                sql.Clear;
                sql.Add('select Codigo, CNPJ, Nome from Fornecedores');
                sql.add('where isnull(Ativo, 0) = 1');
                sql.Add('and Ramo_Atividade in(select Codigo from RamoAtividade where Descricao like ''%ARMAZ%'')');
                sql.Add('order by Nome');
                open;
           end;
           with Bancos do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Bancos');
                Open;
           end;
           with ModalidadesPgto do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Descricao ');
                Open;
           end;
           with INCOTERMS do begin
                sql.clear;
                sql.add('select * from INCOTERMS order by Codigo');
                open;
           end;
           bItens.Enabled             := PedidosRepresentantes.RecordCount > 0;
           bOrcamento.Enabled         := bItens.Enabled;
           bPesquisar.Enabled         := bItens.Enabled;
           bEmail.Enabled             := bItens.Enabled;
           cFiltroAtendente.KeyValue  := Menu_Principal.mUsuarioCodigo;
           cAtendente.Enabled         := (UsuariosCall_CenterTodos.AsBoolean) or (Menu_Principal.mUsuarioNome = 'ADMINISTRADOR');
           cFiltroAtendente.Enabled   := (UsuariosCall_CenterTodos.AsBoolean) or (Menu_Principal.mUsuarioNome = 'ADMINISTRADOR');
           Navega.Controls[6].Enabled := PedidosRepresentantes.RecordCount > 0;
           pPasta.ActivePageIndex     := 0;
      end;
      screen.Cursor := crDefault;
end;

procedure TPedido_Televendas.bPesquisaClienteClick(Sender: TObject);
begin
      pPasta.ActivePageIndex := 4;
      cPesquisa.SetFocus;
end;

procedure TPedido_Televendas.bPropostaClick(Sender: TObject);
begin
      Filtra;
      if uppercase(tPedidos.FieldByName('Tipo_Venda').AsString) = 'HEATING OIL' then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
           HeatingLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         with Dados do begin
              lNumPropostaHet.Caption := ' PROPOSTA Nº '+tPedidos.FieldByName('Pedido').AsString;
              lComprador.Caption      := tPedidos.FieldByName('Cliente_Nome').AsString+FormatMaskText(' (##.###.###/####-##);0', tPedidos.FieldByName('Cliente_CNPJ').asstring);
              rHeating.Print;
              rHeating.Reset;
         end;
      end;
      if uppercase(tPedidos.FieldByName('Tipo_Venda').AsString) = 'SPOT' then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
           SpotLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         with Dados do begin
              lNumPropostaSpot.Caption := ' PROPOSTA Nº '+tPedidos.fieldbyname('Pedido').AsString;
              lSpotEnd_Emp.Caption     := concat(Dados.EmpresasRua.asstring,', Nº ',trim(Dados.EmpresasRua_Numero.asstring),', ', Dados.EmpresasComplemento.asstring);
              lSpotMun_Emp.Caption     := concat(uppercase(Dados.MunicipiosNome.asstring), ' / BRASIL');
              rSpot.Print;
              rSpot.Reset;
         end;
      end;
end;

procedure TPedido_Televendas.lClienteClick(Sender: TObject);
begin
      Cadastro_Clientes := TCadastro_Clientes.Create(Self);
      Cadastro_Clientes.Caption := Caption;
      Cadastro_Clientes.ShowModal;
      with Dados, Clientes do begin
           SQL.Clear;
           SQL.Add('select * from Clientes where Ativo = 1 order by Nome');
           Open;
      end;
end;

procedure TPedido_Televendas.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      with Dados do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              For i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              pPasta.ActivePageIndex := 0;
              Panel2.Enabled         := True;
              Grade.Enabled          := false;
              if cAtendente.Enabled then
                 cAtendente.SetFocus
              else
                 cCliente.SetFocus;

              bItens.Enabled := false;
           end else begin
              bItens.Enabled             := PedidosRepresentantes.RecordCount > 0;
              Navega.Controls[6].Enabled := PedidosRepresentantes.RecordCount > 0;
           end;
           
           if Button = nbInsert then begin
              PedidosRepresentantesData.Value             := now;
              PedidosRepresentantesData_Planilha.Value    := now;
              PedidosRepresentantesOrigem_Pedido.Value    := 'TELEVENDAS';
              PedidosRepresentantesTransportador.Value    := ConfiguracaoTelevendas_Transportador.Value;
              PedidosRepresentantesModalidade_Frete.Value := ConfiguracaoTelevendas_ModalidadeFrete.Value;
              PedidosRepresentantesTipo_Nota.Value        := ConfiguracaoTelevendas_TipoNota.Value;
              cAtendente.KeyValue                         := Menu_Principal.mUsuarioCodigo;
              PedidosRepresentantesTipo_Venda.Value       := 'Spot';
           end;

           if (Button = nbPost) or (Button = nbCancel) then Begin
              Panel2.Enabled := False;
           end;

           bOrcamento.Enabled := bItens.Enabled;
           bPesquisar.Enabled := bItens.Enabled;
           bEmail.Enabled     := bItens.Enabled;
           Grade.Enabled      := not ((Button = nbEdit) or (Button = nbInsert));
           
           Screen.Cursor := crDefault;
      end;
end;

procedure TPedido_Televendas.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados do begin
           if (Button = nbPost) then begin
              if Trim(cAtendente.DisplayValue) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'Atendente é campo obrigatório.', mtError, [mbOK], 0);
                 cAtendente.SetFocus;
                 Abort;
              end;
              if PedidosRepresentantes.FieldByName('Cliente').AsInteger <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Cliente é campo obrigatório.', mtError, [mbOK], 0);
                 cCliente.SetFocus;
                 Abort;
              end;
              if PedidosRepresentantes.FieldByName('Modalidade_Pagamento').AsInteger <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Modalidade de Pagamento é campo obrigatório.', mtError, [mbOK], 0);
                 cModalidade.SetFocus;
                 Abort;
              end;
              if PedidosRepresentantes.FieldByName('Armazem').asinteger = 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Armazém é campo obrigatório.', mtError, [mbOK], 0);
                 cArmazem.SetFocus;
                 Abort;
              end;
              if PedidosRepresentantes.FieldByName('Data_Retirada').IsNull then begin
                 MessageDlg('Erro!'+#13+#13+'Data da retirada é campo obrigatório.', mtError, [mbOK], 0);
                 cDataRetirada.SetFocus;
                 Abort;
              end;
              if PedidosRepresentantes.FieldByName('Data_Pagamento').IsNull then begin
                 MessageDlg('Erro!'+#13+#13+'Data de pagamento é campo obrigatório.', mtError, [mbOK], 0);
                 cDataPgto.SetFocus;
                 Abort;
              end;
              if UsuariosCodigo_Representante.AsInteger <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'É necessário informar o código de representante para este atendente no cadastro de usúarios.', mtError, [mbOK], 0);
                 cAtendente.SetFocus;
                 Abort;
              end;
              // Verifica a quantidade de volumes.
              with tTemp do begin
                   SQL.Clear;
                   SQL.Add('select count(Item) as Itens from PedidosRepresentantesItens where Pedido = :pPedido');
                   ParamByName('pPedido').AsString := PedidosRepresentantesPedido.AsString;
                   Open;
              end;
              if (tTemp.fieldbyname('Itens').AsInteger > 0) and (PedidosRepresentantes.FieldByName('Volume_Quantidade').asfloat = 0) then begin
                 MessageDlg('Erro!'+#13+#13+'Quantidade de volumes é campo obrigatório.', mtError, [mbOK], 0);
                 cVolumes.SetFocus;
                 Abort;
              end;
              if PedidosRepresentantes.State = dsInsert then begin
                 with tTemp do begin
                      sql.clear;
                      sql.add('select Pedido = ''T''+cast(isnull(max(cast(substring(Pedido,2, 10) as int)), 0)+1 as varchar(10))');
                      sql.add('from PedidosRepresentantes');
                      sql.Add('where substring(Pedido, 1, 1) = ''T'' ');
                      open;
                      PedidosRepresentantes.FieldByName('Pedido').Value := fieldByName('Pedido').asstring;
                 end;
              end;

              Usuarios.Locate('Matricula', cAtendente.KeyValue, [loCaseInsensitive]);

              PedidosRepresentantesPlanilha.Value                := PedidosRepresentantesPedido.Value;
              PedidosRepresentantesSituacao.Value                := 'AGUARDANDO';
              PedidosRepresentantesSituacao_Televendas.Value     := 'AGUARDANDO';
              PedidosRepresentantesTipo_Faturamento.Value        := 1;
              PedidosRepresentantesGerar_Pedido.Value            := false;
              PedidosRepresentantesCliente_CNPJ.Value            := ClientesCNPJ.Value;
              PedidosRepresentantesCliente_CPF.Value             := ClientesCPF.Value;
              PedidosRepresentantesCliente_Nome.Value            := ClientesNome.Value;
              PedidosRepresentantesCliente_RG.Value              := ClientesRG.Value;
              PedidosRepresentantesCliente_CEP.Value             := ClientesCEP.Value;
              PedidosRepresentantesCliente_Rua.Value             := ClientesRua.Value;
              PedidosRepresentantesCliente_Bairro.Value          := ClientesBairro.Value;
              PedidosRepresentantesCliente_Municipio.Value       := ClientesMunicipio_Codigo.Value;
              PedidosRepresentantesCliente_MunicipioNome.Value   := ClientesMunicipio.Value;
              PedidosRepresentantesCliente_RuaNumero.Value       := ClientesRua_Numero.Value;
              PedidosRepresentantesCliente_Estado.Value          := ClientesEstado.Value;
              PedidosRepresentantesCliente_ConsumidorFinal.Value := ClientesConsumidor_Final.Value;
              PedidosRepresentantesCliente_ZonaFranca.Value      := ClientesZona_Franca.Value;
              PedidosRepresentantesCliente_Simples.Value         := ClientesSimples_Nacional.Value;
              PedidosRepresentantesCliente_Contato.Value         := ClientesContato.Value;
              PedidosRepresentantesCliente_Email.Value           := ClientesEmail.Value;
              PedidosRepresentantesCliente_Telefone.Value        := ClientesTelefone1.Value;
              PedidosRepresentantesCliente_IE.Value              := ClientesInscricao_Estadual.Value;
              PedidosRepresentantesInf_Complementares2.Value     := 'VENDA VIA TELEVENDA PEDIDO :'+ PedidosRepresentantes.FieldByName('Pedido').asstring;
              PedidosRepresentantesFaturado.Value                := false;
              PedidosRepresentantesCancelado.Value               := false;
              PedidosRepresentantesLiberado.Value                := false;
              PedidosRepresentantesRepresentante.Value           := UsuariosCodigo_Representante.Value;
              PedidosRepresentantesFaturamento.Value             := false;
              PedidosRepresentantesLocal.Value                   := 0;
              PedidosRepresentantesLiberado.Value                := false;
              PedidosRepresentantesAutorizado.Value              := false;
              PedidosRepresentantesNovo.Value                    := true;
              if ClientesEstado.Value = EmpresasEstado.Value then
                 PedidosRepresentantesNatureza_Codigo.Value := ConfiguracaoTelevendas_NaturezaDentro.Value
              else
                 PedidosRepresentantesNatureza_Codigo.Value := ConfiguracaoTelevendas_NaturezaFora.Value;
           end;

           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir este pedido do banco de dados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end else begin
                 with tTemp do begin
                      SQL.Clear;
                      SQL.Add('DELETE FROM PedidosRepresentantesItens WHERE Pedido = :pPedido');
                      ParamByName('pPedido').Asstring := PedidosRepresentantesPedido.asstring;
                      Execute;
                      SQL.Clear;
                 end;
              end;
           end;
      end;
end;

procedure TPedido_Televendas.bAlterarClick(Sender: TObject);
begin
      Dados.PedidosRepresentantesItens.Edit;
      Pedido_TelevendasItens := TPedido_TelevendasItens.Create(Self);
      Pedido_TelevendasItens.Caption := Caption;
      Pedido_TelevendasItens.ShowModal;
      Dados.PedidosRepresentantesItens.Refresh;
end;

procedure TPedido_Televendas.bExcluirClick(Sender: TObject);
begin
      if MessageDlg('Deseja realmente remover este item do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         with Dados do begin
              PedidosRepresentantesItens.Delete;
         end;
      end;
end;

procedure TPedido_Televendas.cPesqLibChange(Sender: TObject);
begin
    if trim(cPesqLib.Text) <> '' then begin
       tLiberados.Locate('Pedido', cPesqLib.Text, [loCaseInsensitive]);
    end;
end;

procedure TPedido_Televendas.cPesquisaChange(Sender: TObject);
begin
      with Dados do begin
           if Clientes.Locate('Nome', cPesquisa.Text, [loPartialKey]) = False then begin
              if Clientes.Locate('Telefone1', cPesquisa.Text, [loPartialKey]) = False then begin
                 if Clientes.Locate('Telefone2', cPesquisa.Text, [loPartialKey]) = False then begin
                    tClientes.SQL.Clear;
                    tClientes.SQL.Add('SELECT * FROM Clientes WHERE(Nome LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
                    tClientes.Open;
                    Clientes.Locate('Codigo', tClientes.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
                 end;
              end;
           end;
           GradeClientesCellClick(GradeClientes.Columns[0]);
      end;
end;

procedure TPedido_Televendas.cPesquisaKeyPress(Sender: TObject;var Key: Char);
begin
      if Key = #13 then begin
         with Dados do begin
              if (PedidosRepresentantes.State = dsInsert) or (PedidosRepresentantes.State = dsEdit) then begin
                 Dados.PedidosRepresentantesCliente.Value := Dados.ClientesCodigo.Value;
                 pPasta.ActivePageIndex := 1;
                 cCliente.SetFocus;
              end;
         end;
      end;   
end;

procedure TPedido_Televendas.pPastaChange(Sender: TObject);
begin
     if pPasta.ActivePageIndex = 2 then cPesquisa.SetFocus;
end;

procedure TPedido_Televendas.Totaliza;
begin
      // Calculando o estoque disponível.
      with Dados do begin
           with tTotal do begin 
                SQL.Clear;
                SQL.Add('SELECT Total_IPI      = ISNULL(SUM(ISNULL(Valor_IPI      * Quantidade, 0)), 0),');
                SQL.Add('       Total_ICMS     = ISNULL(SUM(ISNULL(Valor_ICMS     * Quantidade, 0)), 0),');
                SQL.Add('       Total_ICMSST   = ISNULL(SUM(ISNULL(Valor_ICMSST   * Quantidade, 0)), 0),');
                SQL.Add('       Total_Desconto = ISNULL(SUM(ISNULL(Valor_Desconto * Quantidade, 0)), 0),');
                SQL.Add('       Total_Produtos = ISNULL(SUM(ISNULL(Valor_Unitario * Quantidade, 0)), 0),');
                SQL.Add('       Total_Impostos = SUM((ISNULL(Valor_Unitario, 0) + ISNULL(Valor_ICMSST, 0)) * Quantidade)');
                SQL.Add('FROM   PedidosRepresentantesItens');
                SQL.Add('WHERE  Pedido = :pPedido');
                ParamByName('pPedido').AsString := PedidosRepresentantesPedido.AsString;
                Open;

                lTotalIPI.Caption      := FormatFloat(',##0.00', FieldByName('Total_IPI').AsCurrency);
                lTotalICMS.Caption     := FormatFloat(',##0.00', FieldByName('Total_ICMS').AsCurrency);
                lTotalICMSST.Caption   := FormatFloat(',##0.00', FieldByName('Total_ICMSST').AsCurrency);
                lTotalDesconto.Caption := FormatFloat(',##0.00', FieldByName('Total_Desconto').AsCurrency);
                lTotalProdutos.Caption := FormatFloat(',##0.00', FieldByName('Total_Produtos').AsCurrency);
                lTotalImpostos.Caption := FormatFloat(',##0.00', FieldByName('Total_Impostos').AsCurrency);
           end;
           with tTemp do begin
                SQL.Clear;
                SQL.Add('SELECT COUNT(Item) AS Itens FROM PedidosRepresentantesItens WHERE Pedido = :pPedido');
                ParamByName('pPedido').AsString := PedidosRepresentantesPedido.AsString;
                Open;
           end;
           bItens.Caption    := '&Itens ['+PoeZero(3, tTemp.FieldByName('Itens').AsInteger)+']';
           bProposta.Enabled := tTemp.FieldByName('Itens').AsInteger > 0;
           tTotal.Close;
      end;
end;

procedure TPedido_Televendas.cPedidoChange(Sender: TObject);
begin
     Totaliza;
     FiltraNotas;
end;

procedure TPedido_Televendas.cAtendenteChange(Sender: TObject);
begin
      with Dados do begin
           Clientes.SQL.Clear;
           if (UsuariosCall_CenterTodos.AsBoolean) or (Menu_Principal.mUsuarioNome = 'ADMINISTRADOR') then begin
              Clientes.SQL.Add('SELECT * FROM Clientes WHERE (Ativo = 1) ORDER BY Nome');
           end else begin
              Clientes.SQL.Add('SELECT * FROM Clientes WHERE (Ativo = 1 AND Atendente = :pAtendente) ORDER BY Nome');
              Clientes.ParamByName('pAtendente').AsString := Menu_Principal.mUsuarioCodigo
           end;
           Clientes.Open;
      end;
end;

procedure TPedido_Televendas.bItensClick(Sender: TObject);
begin
      if not Dados.ConfiguracaoTela_ItensTelevendas.AsBoolean then begin
         Pedido_TelevendasItens := TPedido_TelevendasItens.Create(Self);
         Pedido_TelevendasItens.Caption := Caption;
         Pedido_TelevendasItens.ShowModal;
      end else begin
         Pedido_TelevendasItensComb := TPedido_TelevendasItensComb.Create(Self);
         Pedido_TelevendasItensComb.Caption := Caption;
         Pedido_TelevendasItensComb.ShowModal;
      end;
      Totaliza;
end;

procedure TPedido_Televendas.bOrcamentoClick(Sender: TObject);
begin
      Filtra;
      mItensDesconto := 0;
      mDesconto      := 0;
      if FileExists(Dados.EmpresasLogo.Value) then begin
         OrcamentoLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      rOrcamento.Reset;
      rOrcamento.Print;
end;

procedure TPedido_Televendas.ConfirmarPedido1Click(Sender: TObject);
begin
     if MessageDlg('Deseja realmente confirmar este pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        with Dados, PedidosRepresentantes do begin
             if fieldbyname('Total_Pedido').AsCurrency <= 0 then begin
                MessageDlg('Erro !'+#13+#13'Você não pode liberar pedidos sem valor.', mtError, [mbOK], 0);
                Abort;
             end;

             Edit;
                fieldbyname('Situacao_Televendas').Value := 'CONFIRMADO';
             Post;
             refresh;
        end;
     end;
end;

procedure TPedido_Televendas.CancelarConfirmao1Click(Sender: TObject);
begin
      if MessageDlg('Deseja voltar este pedido para situação de "AGUARDANDO" realmente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         with Dados do begin
              PedidosRepresentantes.Edit;
                                    PedidosRepresentantesSituacao_Televendas.Value := 'AGUARDANDO';
              PedidosRepresentantes.Post;
         end;
      end;
end;

procedure TPedido_Televendas.ConfirmarTodososPedidos1Click(Sender: TObject);
begin
      if MessageDlg('Deseja realmente confirmar todos os pedidos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         with Dados do begin
              tPedidos.SQL.Clear;
              tPedidos.SQL.Add('UPDATE PedidosRepresentantes SET Situacao_Televendas = ''CONFIRMADO'' WHERE Origem_Pedido = ''TELEVENDAS'' AND Total_Pedido > 0');
              tPedidos.Execute;
              PedidosRepresentantes.Refresh;
         end;
      end;
end;

procedure TPedido_Televendas.CancelarConfirmaodeTodososPedidos1Click(Sender: TObject);
begin
      if MessageDlg('Deseja voltar todos os pedido para situação de "AGUARDANDO" realmente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         with Dados do begin
              tPedidos.SQL.Clear;
              tPedidos.SQL.Add('UPDATE PedidosRepresentantes SET Situacao_Televendas = ''AGUARDANDO'' WHERE Origem_Pedido = ''TELEVENDAS'' ');
              tPedidos.Execute;
              PedidosRepresentantes.Refresh;
         end;
      end;
end;

procedure TPedido_Televendas.ppDetailBand2AfterPrint(Sender: TObject);
begin
     mDesconto := mDesconto + tItens.FieldByName('Desconto').AsFloat;
     if tItens.FieldByName('Desconto').AsFloat > 0 then begin
        Inc(mItensDesconto);
     end;
     lMediaDesconto.Value := mDesconto / mItensDesconto;
end;

procedure TPedido_Televendas.rHeatingBeforePrint(Sender: TObject);
begin
      with tPedidos do begin
           sql.clear; 
           sql.add('select Valor_Garantia');
           sql.add('      ,Valor_CustoPorto');
           sql.add('      ,Demurrage');
           sql.add('      ,Inspetor');
           sql.add('      ,AFRMM');
           sql.add('      ,Nacionalizacao');
           sql.add('      ,Data_JanelaIni');
           sql.add('      ,Data_JanelaFim');
           sql.add('      ,Valor_MultaAtraso');
           sql.add('      ,Terminal = (select Nome+'' - ''+upper(Municipio) from Fornecedores where Codigo = Armazem)');
           sql.add('      ,Incoterm');
           sql.add('      ,Volume');
           sql.add('      ,Formacao_Preco');
           sql.add('from PedidosRepresentantes');
           sql.add('where Pedido = :pPed');
           parambyname('pPed').value := Dados.PedidosRepresentantes.fieldbyname('Pedido').AsString;
           open;
           
           with lCondPgto do begin
                lines.clear;
                Lines.add('1 - O COMPRADOR DEVERÁSOLICITAR A TRAVA DO PREÇO DA COMMODITY');
                Lines.add('2 - O COMPRADOR DEVERÁ SOLICITAR A TRAVA DO CÂMBIO');
                Lines.add('3 - COM PREÇO DO PRODUTO FORMADO, O VENDEDOR DEVERÁ ACRESCENTAR OS TRIBUTOS CUSTOS PORTO, E OUTROS CUSTOS INERENTES AO NEGÓCIO E ENVIARPARA O COMPRADOR VALIDAR O NUMERÁRIO.');
                Lines.add('4 - COM O NUMERÁRIO VALIDADO,O COMPRADOR DEVERÁ EFETUAR O DEPÓSITO DO VALOR TOTAL DO LOTE TRAVADO');
                Lines.add('5 - APÓS IDENTIFICAR O VALOR NA CONTA CORRENTE, O VENDEDOR DEVERÁ FATURAR A NF');
           end;
           with lGarantia do begin
                lines.clear;
                Lines.add('UMA GARANTIA DE R$ '+formatfloat(',##0.00', fieldbyname('Valor_Garantia').AsCurrency)+' DEVERÁ SER DEPOSITADA NA DATA DO FECHAMENTO DO NEGOCIO');
           end;
           with lCustoPorto do begin 
                lines.clear;
                Lines.add('CUSTOS TOTAIS DE R$ '+formatfloat(',##0.00', fieldbyname('Valor_CustoPorto').AsCurrency)+'/M³ DEVERÃO SER ACRESCIDOS AO PREÇO FINAL DO PRODUTO');
           end;
           with lImpostos do begin
                lines.clear;
                Lines.add('OS IMPOSTOS VIGENTESNA DATA DA NACIONALIZAÇÃO SERÃO ACRESCIDOS AO PREÇO FINAL FATURADO PELO VENDEDOR AO COMPRADOR.CADA PARTE DEVERÁ RECOLHER SEUS IMPOSTOS CONFORME A LEGISLAÇÃO TRIBUTÁRIA VIGENTE');
           end;
           with lJanela do begin
                lines.clear;
                Lines.add('ENTRE OS DIAS '+fieldbyname('Data_JanelaIni').asstring+' E '+fieldbyname('Data_JanelaFim').asstring);
                lines.add('O PRODUTO DEVERÁ SER RETIRADO EM ATÉ 15 DIAS CORRIDOS APÓS ACHEGADA DO NAVIO.');
                lines.add('EM CASO DE ATRASO NA RETIRADA, MULTA DE R$ '+ formatfloat(',##0.00', fieldbyname('Valor_MultaAtraso').AsCurrency) +'/M³ POR MÊS QUE O PRODUTO FICAR NO TERMINAL SERÁAPLICADA AO COMPRADOR');
           end;
           with lPeriodo do begin
                lines.clear;
                Lines.add('O VOLUME ACORDADO DEVERÁ SER TRIGGADO EM PARCELAS MÍNIMAS DE 159 M³ DURANTE A JANELA DE ENTREGA DO PRODUTO.');
                lines.add('O VOLUME TODO CONTRATADO DEVERÁ SER TRIGGADO ATÉO PRAZO MÁXIMO DO VENCIMENTO DO CONTRATO NYMEX, CASO CONTRARIO,');
                lines.add('A TELA DEVERÁ SER ROLADA PARA O PRÓXIMO VENCIMENTO E O SPREAD SERÁ ACRESCIDO AO CUSTO DO PRODUTO DO CLIENTE.');
           end;
           with lTrigger do begin
                lines.clear;
                Lines.add('O VOLUME ACORDADO PODERÁ SER TRIGGADO EM PARCELAS MÍNIMAS DE 159 M³, O DOLAR DEVERÁ SER FIXADO APÓS CADA TRIGGER, FORMANDO ASSIM O PREÇO NET DO PRODUTO SEM CUSTOS PORTO.');
           end;
           with lOutros do begin
                lines.clear;
                Lines.add('SERÁ ENVIADO UM CONTRATO NO FECHAMENTO COM OS TERMOS COMBINADOS');
           end;
      end;
end;

procedure TPedido_Televendas.rSpotBeforePrint(Sender: TObject);
begin
      if FileExists(Dados.EmpresasLogo.Value) then begin
         OrcamentoLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      with Dados, tPedidos do begin
           with tTemp do begin
                sql.clear; 
                sql.add('select  Qtde  = (Quantidade / (select sum(Quantidade_Unidade) from produtos where Codigo = pri.Codigo_Mercadoria))');
                sql.add('       ,Preco = Valor_Unitario * (select Quantidade_Unidade from produtos where Codigo = Codigo_Mercadoria)');
                sql.add('into #tmp');
                sql.add('from PedidosRepresentantesItens pri');
                sql.add('where Pedido = :pPed');
                sql.add('select Qtde  = sum(Qtde)');
                sql.add('      ,Preco = sum(Preco)');
                sql.add('from #tmp');
                sql.add('drop table #tmp');
                parambyname('pPed').value := tPedidos.fieldbyname('Pedido').AsString;
                open;
           end;
           with lItens.Lines do begin
                clear; 
                add(ansiuppercase(concat('01. Vendedor: ' , EmpresasRazao_Social.AsString,' - ', FormatMaskText('##.###.###/####-##;0', EmpresasCNPJ.AsString),';'))); 
                add(''); 
                add(ansiuppercase(concat('02. Comprador: ', fieldbyname('Cliente_Nome').AsString,' - ', FormatMaskText('##.###.###/####-##;0', fieldbyname('Cliente_CNPJ').AsString),';'))); 
                add(''); 
                add(ansiuppercase(concat('03. Produto: ', removecaracterXML(tItens.fieldbyname('Descricao').AsString),';'))); 
                add(''); 
                add(ansiuppercase(concat('04. Entrega: ', fieldbyname('Terminal').AsString,';')));
                add(''); 
                add(ansiuppercase(concat('05. Armazenamento: ', 'Até ', Dataextenso3(fieldbyname('Data_Retirada').asDateTime), ', em caso de atraso na retirada, haverá penalidade de r$140,00 por metro cúbico por mês em que o produto estiver em atraso;'))); 
                add(''); 
                add(ansiuppercase(concat('06. Quantidade: ', formatfloat(',##0.000', tTemp.fieldbyname('Qtde').asfloat) , ' metros cúbicos +/- ', formatfloat(',##0.00%', fieldbyname('Percentual_Diferenca').asfloat),';')));
                add(''); 
                add(ansiuppercase(concat('07. Datas de Entregas: A partir de ', Dataextenso3(fieldbyname('Data').value), ';')));
                add(''); 
                add(ansiuppercase(concat('08. Preço: ', formatfloat(',##0.00', tTemp.fieldbyname('Preco').ascurrency), '/m3 (', ValorExtenso(tTemp.fieldbyname('Preco').ascurrency, true), ') por metro cúbico;')));
                add(''); 
                add(ansiuppercase(concat('09. Pagamento: ', Dataextenso3(fieldbyname('Data_Pagamento').value), ';')));
                add(''); 
                add(ansiuppercase(concat(space(20), 'Valor total de ', formatfloat(',##0.00', fieldbyname('Total_Pedido').ascurrency), ' deverá ser depositado na conta:')));
                add(ansiuppercase(concat(space(20), 'Titular: ',EmpresasRazao_Social.asstring)));
                add(ansiuppercase(concat(space(20), 'CNPJ: ', FormatMaskText('##.###.###/####-##;0', EmpresasCNPJ.AsString))));
                add(ansiuppercase(concat(space(20), 'Agência: ', BancosAgencia.AsString)));
                add(ansiuppercase(concat(space(20), 'Conta/C: ', BancosConta.AsString)));
                add(ansiuppercase(concat(space(20), 'Banco: '+BancosNome.Asstring)));
                add(''); 
                add(ansiuppercase('10. Retirada: após o pagamento integral, o comprador deverá enviar agendamento prévio com 1(um) dia de antecedência no e-mail do vendedor;'));
                add(''); 
                add(ansiuppercase(concat('11. Modal Entrega: O cliente poderá carregar rodoviário no terminal ', fieldbyname('Terminal').asstring, ' paranagua/pr' ,'com as grades disponibilizadas pelo terminal suficientes para carregar o volume combinado;')));
                add(''); 
                add(ansiuppercase(concat('12. Direito: Direito brasileiro, arbitragem ICC Curitiba;')));
                add(''); 
                add(ansiuppercase(concat('13. Os valores e obrigações contidos neste documento são líquidos, certos e exigíveis;')));
                add(''); 
                add(ansiuppercase(concat('15. O comprovante de pagamento deve ser enviado junto ao pedido o qual o pagamento se refere;')));
                add(''); 
                add(ansiuppercase(concat('16. O pagamento garante o volume;')));
                add(''); 
                add(ansiuppercase(concat('17. O faturamento apenas será liberado após a assinatura deste documento;')));
                add(''); 
                add(ansiuppercase(concat('18. Cada parte deverá recolher seus impostos conforme a legislação tributária.')));
           end;
           lData.Caption := concat(Empresas.fieldbyname('Estado').asstring,', ', ' ', DataExtenso(Municipios.fieldbyname('Nome').asstring, fieldbyname('Data').value));
      end;
end;

procedure TPedido_Televendas.Filtra;
begin
      with tPedidos do begin
           sql.clear;
           sql.add('SELECT *');
           sql.add('      ,(SELECT Descricao FROM Cybersoft_Cadastros.dbo.ModalidadesPagamento MP WHERE MP.Codigo = Modalidade_Pagamento) AS Descricao_Modalidade');
           sql.add('      ,(SELECT Descricao FROM RamoAtividade RA WHERE RA.Codigo = Cliente_Ramo) AS Descricao_Ramo');
           sql.add('      ,(SELECT Nome FROM Cybersoft_Cadastros.dbo.Usuarios WHERE Matricula = Atendente) AS Atendente_Nome');
           sql.add('      ,(SELECT SUM(Peso_Unitario*Quantidade) FROM PedidosRepresentantesItens PRI WHERE PRI.Pedido = PR.Pedido) AS Peso');
           sql.add('      ,(SELECT ''AG: ''+ISNULL(Agencia, '''')+''  CC: ''+ISNULL(Conta, '''')+''  BANCO: ''+Nome FROM Bancos WHERE Codigo = Banco) AS Dados_Bancarios');
           sql.add('      ,(select sum(Quantidade) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido) as Qtde_Total');
           sql.add('      ,Terminal = (select Nome+'' - ''+upper(Municipio) from Fornecedores where Codigo = Armazem)');
           sql.add('FROM  PedidosRepresentantes PR');
           sql.add('WHERE Pedido = :pPedido');
           if pPasta.ActivePageIndex <> 5 then begin
              // Pedidos Aguardando.
              ParamByName('pPedido').AsString := Dados.PedidosRepresentantesPedido.Asstring;
           end else begin
              // Pedidos Liberados.
              ParamByName('pPedido').AsString := tLiberados.FieldByName('Pedido').Asstring;
           end;
           //sql.SaveToFile('c:\temp\Televendas_Impressao_Pedidos.sql');
           open;
      end;
      with tItens do begin
           sql.clear;
           sql.add('SELECT  *');
           sql.add('       ,Unidade        = (SELECT Unidade FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           sql.add('       ,Descricao      = CASE WHEN (SELECT CHARINDEX(''<{'', Descricao) FROM Produtos WHERE Codigo = Codigo_Mercadoria) > 0 THEN');
           sql.add('                              (SELECT SUBSTRING(CAST(Descricao AS VARCHAR(500)), 1 , CHARINDEX(''<{'', Descricao)-1) FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           sql.add('                         ELSE');
           sql.add('                              (SELECT CAST(Descricao AS VARCHAR(500)) FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           sql.add('                         END');
           sql.add('       ,Preco_Liquido  = Valor_Unitario');
           sql.add('       ,Valor_Total    = Valor_Unitario * Quantidade');
           sql.add('       ,Total_Desconto = Valor_Desconto * Quantidade');
           sql.add('       ,Valor_TotalImp = (Valor_Unitario + Valor_ICMSST) * Quantidade');
           sql.add('       ,Total_Item     = Valor_Unitario + Valor_ICMSST');
           sql.add('FROM   PedidosRepresentantesItens');
           sql.add('WHERE  Pedido = :pPedido');
           if pPasta.ActivePageIndex <> 5 then begin
              // Pedidos Aguardando.
              ParamByName('pPedido').AsString := Dados.PedidosRepresentantesPedido.Asstring;
           end else begin
              // Pedidos Liberados.
              ParamByName('pPedido').AsString := tLiberados.FieldByName('Pedido').Asstring;
           end;
           //sql.SaveToFile('c:\temp\Televendas_Impressao_Pedidos_Itens.sql');
           open;
      end;
      mItensDesconto := 0;
      mDesconto      := 0;
end;

procedure TPedido_Televendas.bEmailClick(Sender: TObject);
Var
    mEnviar  : Boolean;
    mMensagem: WideString;
begin
     if MessageDlg('Deseja realmente enviar este pedido por E-mail para o cliente?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then abort;

     Janela_Email := TJanela_Email.Create(Self);

     Filtra;

     mItensDesconto := 0;
     mDesconto      := 0;

     rOrcamento.Reset;
     rOrcamento.AllowPrintToFile := True;
     rOrcamento.DeviceType       := dtPDF;
     rOrcamento.TextFileName     := Dados.ConfiguracaoPasta_Exportacao.Value+'\Orcamento_'+tPedidos.FieldByName('Pedido').AsString+'.pdf';
     rOrcamento.ShowPrintDialog  := False;
     rOrcamento.Print;
     rOrcamento.FreeOnRelease;
     rOrcamento.Reset;

     Screen.Cursor := crAppStart;

     Menu_Principal.IdAntiFreeze1.Active := true;
     mEnviar := true;

     with Dados do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
          Empresas.Open;

          if (EmpresasEmail_Porta.AsInteger <= 0) then begin
             Showmessage('E-Mail não enviado : Falta informar a porta no cadastro de empresas.');
             mEnviar := false;
          end;
          if (Trim(EmpresasEmail_SMTP.AsString) = '') then begin
             Showmessage('E-Mail não enviado : Falta informar o Servidor de envio (SMTP) no cadastro de empresas.');
             mEnviar := false;
          end;
          if (Trim(EmpresasEmail_ID.AsString) = '') then begin
             Showmessage('        E-Mail não enviado : Falta informar o Usuário (ID) no cadastro de empresas.');
             mEnviar := false;
          end;
          if (Trim(EmpresasEmail_Senha.AsString) = '') then begin
             Showmessage('        E-Mail não enviado : Falta informar a Senha no cadastro de empresas.');
             mEnviar := false;
          end;

          if mEnviar = true then begin
             // Configuração do SMTP.
             SMTP.Host     := EmpresasEmail_SMTP.AsString;
             SMTP.Port     := EmpresasEmail_Porta.AsInteger;
             SMTP.UserName := EmpresasEmail_ID.AsString;
             SMTP.Password := EmpresasEmail_Senha.AsString;

             // SSLOptions Method.
             if EmpresasEmail_Metodo.AsString = 'sslvSSLv2' then
                SSLSocket.SSLOptions.Method := sslvSSLv2;
             if EmpresasEmail_Metodo.AsString= 'sslvSSLv23' then
                SSLSocket.SSLOptions.Method := sslvSSLv23;
             if EmpresasEmail_Metodo.AsString = 'sslvSSLv3' then
                SSLSocket.SSLOptions.Method := sslvSSLv3;
             if EmpresasEmail_Metodo.AsString = 'sslvTLSv1' then
                SSLSocket.SSLOptions.Method := sslvTLSv1;

             // Requer Autenticação.
             if EmpresasEmail_Autenticacao.AsBoolean then
                SMTP.AuthType := satDefault
             else
                SMTP.AuthType := satNone;

             // Conexao Segura SSL
             if Dados.EmpresasEmail_SSL.AsBoolean then
                SMTP.IOHandler := SSLSocket
             else
                SMTP.IOHandler := nil;

             // Montando a Mensagem
             EmailMSG.MessageParts.Clear;
             EmailMSG.Clear;
             EmailMSG.Body.Clear;
             
             EmailMSG.From.Address              := EmpresasEmail.AsString;
             EmailMSG.Recipients.EMailAddresses := Clientes.FieldByName('Email').AsString;
             EmailMSG.ccList.EMailAddresses     := Clientes.FieldByName('Email_Copia').AsString;
             EmailMSG.Subject                   := 'ORÇAMENTO DE COMPRA PEDIDO Nº '+tPedidos.FieldByName('Pedido').AsString;
             mMensagem                          := RemoveCaracter('<{Numero}>', tPedidos.FieldByName('Pedido').AsString, EmpresasEmail_MsgOrcamento.AsString)+#13+#13+
                                                   EmpresasRazao_Social.AsString+#13+'CNPJ:'+FormatMaskText('##.###.###/####-##;0', EmpresasCNPJ.AsString); 
             EmailMSG.Body.Text                 := mMensagem;

             TIdAttachmentFile.create(EMailMSG.MessageParts, Dados.ConfiguracaoPasta_Exportacao.Value+'\Orcamento_'+tPedidos.FieldByName('Pedido').AsString+'.pdf');

             //enviar email
             Try
                SMTP.Connect;
                if EmpresasEmail_Autenticacao.AsBoolean then SMTP.Authenticate;
                Janela_Email.Show;
                SMTP.Send(EMailMSG);
                //Janela_Email.GifEmail.Animate := false;
                Janela_Email.Close;
                ShowMessage('Email enviado com sucesso!');
             Except
                 on E:Exception do begin
                    ShowMessage('ERROR!'+#13+'E-Mail não enviado, Verifique as configurações do E-Mail no <Cadastro da Empresa>.'+#13+E.Message);
                 end;
             end;
          end;
     end;

     if SMTP.Connected then SMTP.Disconnect;

     Menu_Principal.IdAntiFreeze1.Active := false;

     if FileExists(Dados.ConfiguracaoPasta_Exportacao.Value+'\Orcamento_'+tPedidos.FieldByName('Pedido').AsString+'.pdf') then begin
        DeleteFile(Dados.ConfiguracaoPasta_Exportacao.Value+'\Orcamento_'+tPedidos.FieldByName('Pedido').AsString+'.pdf');
     end;

     Screen.Cursor := crDefault;
end;

procedure TPedido_Televendas.FiltraNotas;
begin
      with tNotas do begin
           sql.clear;
           sql.add('select Nota = Numero');
           sql.add('      ,Pedido = Pedido_Representante');
           sql.add('      ,Data = Data_Emissao');
           sql.add('      ,Valor_TotalNota');
           sql.add('      ,Forma_Pgto = (select Descricao from Cybersoft_Cadastros.dbo.ModalidadesPagamento mp where Codigo = Modalidade_Pgto)');
           sql.add('      ,Situacao = ''FATURADO'' ');
           sql.add('from  NotasFiscais nf');
           sql.add('where Cliente_Codigo = :pCliente');
           sql.add('and   isnull(Cancelada, 0) = 0');
           sql.add('union all');
           sql.add('select Nota = null');
           sql.add('      ,Pedido');
           sql.add('      ,Data');
           sql.add('      ,Valor_TotalNota = Total_Pedido');
           sql.add('      ,Forma_Pgto = (select Descricao from Cybersoft_Cadastros.dbo.ModalidadesPagamento mp where Codigo = Modalidade_Pagamento)');
           sql.add('      ,Situacao = Situacao ');
           sql.add('from  PedidosRepresentantes pr');
           sql.add('where Faturado = 0');
           sql.add('and   Cliente = :pCliente');
           sql.add('and   isnull(Cancelado, 0) = 0');
           sql.add('and   Pedido <> :pPedido');
           sql.add('order by Data desc');
           parambyname('pCliente').AsInteger := Dados.PedidosRepresentantesCliente.AsInteger;
           parambyname('pPedido').Asstring   := Dados.PedidosRepresentantesPedido.asstring;
           //sql.savetofile('c:\temp\Televendas_Notas.sql');
           open;
      end;
end;

procedure TPedido_Televendas.tNotasAfterScroll(DataSet: TDataSet);
begin
      with tItensNotas do begin
           sql.clear;
           sql.add('select Codigo_Mercadoria');
           sql.add('      ,Descricao = CAST(Descricao_Mercadoria AS VARCHAR(500))');
           sql.add('      ,Quantidade');
           sql.add('      ,Valor_Unitario');
           sql.add('      ,Nota');
           sql.add('from  NotasItens ni');
           sql.add('where Nota = :pNota');
           sql.add('order by Codigo_Mercadoria');
           parambyname('pnota').AsInteger  := tNotas.FieldByName('Nota').AsInteger;
           open;
      end;
end;

procedure TPedido_Televendas.GradeClientesCellClick(Column: TColumn);
begin
      with tNotas do begin
           SQL.Clear;
           SQL.Add('select Nota = Numero');
           SQL.Add('      ,Pedido = Pedido_Representante');
           SQL.Add('      ,Data = Data_Emissao');
           SQL.Add('      ,Valor_TotalNota');
           SQL.Add('      ,Forma_Pgto = (select Descricao from Cybersoft_Cadastros.dbo.ModalidadesPagamento mp where Codigo = Modalidade_Pgto)');
           SQL.Add('      ,Situacao = ''FATURADO'' ');
           SQL.Add('from  NotasFiscais NF');
           SQL.Add('where Cliente_Codigo = :pCliente AND ISNULL(Cancelada, 0) = 0');
           SQL.Add('union ALL');
           SQL.Add('select Nota = null');
           SQL.Add('      ,Pedido');
           SQL.Add('      ,Data');
           SQL.Add('      ,Valor_TotalNota = Total_Pedido');
           SQL.Add('      ,Forma_Pgto = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ModalidadesPagamento MP WHERE Codigo = Modalidade_Pagamento)');
           SQL.Add('      ,Situacao = Situacao ');
           SQL.Add('from  PedidosRepresentantes PR');
           SQL.Add('where Faturado = 0');
           SQL.Add('and   Cliente = :pCliente');
           SQL.Add('order by Data desc');
           ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
           Open;
      end;
      with tItensNotas do begin
           SQL.Clear;
           SQL.Add('select Codigo_Mercadoria');
           SQL.Add('      ,Descricao = cast(Descricao_Mercadoria as varchar(500))');
           SQL.Add('      ,Quantidade');
           SQL.Add('      ,Valor_Unitario');
           SQL.Add('      ,Nota');
           SQL.Add('from  NotasItens NI');
           SQL.Add('where Nota = :pNota');
           SQL.Add('union all');
           SQL.Add('select Codigo_Mercadoria');
           SQL.Add('      ,Descricao = cast((select Descricao from Produtos where Codigo = Codigo_Mercadoria) as varchar(500))');
           SQL.Add('      ,Quantidade');
           SQL.Add('      ,Valor_Unitario');
           SQL.Add('      ,Pedido');
           SQL.Add('from  PedidosRepresentantesItens PRI');
           SQL.Add('where Pedido = :pPedido');
           SQL.Add('order by Codigo_Mercadoria');
           ParamByName('pNota').AsInteger  := tNotas.FieldByName('Nota').AsInteger;
           ParamByName('pPedido').AsString := tNotas.FieldByName('Pedido').AsString;
           Open;
      end;
end;

procedure TPedido_Televendas.GradeClientesDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
      with Dados do begin
           if Odd(Clientes.RecNo) then
              GradeClientes.Canvas.Brush.Color:= $00DEEDDE
           else
              GradeClientes.Canvas.Brush.Color:= clWhite;

           if gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := $00FFAAB0;
              FillRect(Rect);
              Font.Style := [fsbold];
              Font.Color := clBlack;
           end;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      end;
end;

procedure TPedido_Televendas.cFiltroAtendenteChange(Sender: TObject);
begin
      with tFiltraPed do begin
           sql.clear;
           sql.add('select  Pedido');
           sql.add('       ,Data');
           sql.add('       ,Modalidade_Pagamento');
           sql.add('       ,Cliente_Nome');
           sql.add('       ,Cliente_Estado');
           sql.add('       ,(SELECT Descricao FROM Cybersoft_Cadastros.dbo.ModalidadesPagamento MP WHERE MP.Codigo = Modalidade_Pagamento) AS Descricao_Modalidade');
           sql.add('       ,(SELECT Descricao FROM RamoAtividade RA WHERE RA.Codigo = Cliente_Ramo) AS Descricao_Ramo');
           sql.add('       ,(SELECT Nome FROM Cybersoft_Cadastros.dbo.Usuarios WHERE Matricula = Atendente) AS Atendente_Nome');
           sql.add('       ,(SELECT SUM(Peso_Unitario*Quantidade) FROM PedidosRepresentantesItens PRI WHERE PRI.Pedido = PR.Pedido) AS Peso');
           sql.add('       ,Total_Pedido');
           sql.add('       ,(SELECT SUM((Valor_Unitario-Valor_IPI) * Quantidade) FROM PedidosRepresentantesItens PRI WHERE PRI.Pedido = PR.Pedido) AS Total_Produtos');
           sql.add('       ,Situacao = CASE WHEN ISNULL(Cancelado, 0) = 1 AND ISNULL(Faturado, 0) = 0 THEN ''CANCELADO'' ELSE Situacao END');
           sql.add('       ,Cancelado');
           sql.add('       ,Faturado');
           sql.add('from   PedidosRepresentantes PR');
           sql.add('where  Origem_Pedido = ''TELEVENDAS'' ');
           sql.add('  and  Representante = :pRepresentante');
           if not cCancelados.Checked  then begin
              sqL.Add('  AND ISNULL(Cancelado, 0) = 0');
           end;
           if not cFaturados.Checked  then begin
              sqL.Add('  AND ISNULL(Faturado, 0) = 0');
           end;
           paramByName('pRepresentante').AsInteger := Dados.UsuariosCodigo_Representante.AsInteger;
           //sql.SaveToFile('c:\temp\Televendas_FiltraPed.sql');
           open;
      end;
      
      tSomaPed.SQL.Clear;
      tSomaPed.SQL.Add('SELECT  Total_Atendente = SUM(CASE WHEN Representante = :pRepresentante THEN ISNULL(Total_Pedido, 0) ELSE 0 END)');
      if not cFaturados.Checked then
         tSomaPed.SQL.Add('       ,Qtde_Atendente  = (SELECT COUNT(*) FROM PedidosRepresentantes WHERE Representante = :pRepresentante AND ISNULL(Faturado,0) = 0 )')
      else
         tSomaPed.SQL.Add('       ,Qtde_Atendente  = (SELECT COUNT(*) FROM PedidosRepresentantes WHERE Representante = :pRepresentante )');
      tSomaPed.SQL.Add('       ,Total_Pedidos   = SUM(ISNULL(Total_Pedido, 0))');
      tSomaPed.SQL.Add('       ,Qtde_Geral      = COUNT(*)');
      tSomaPed.SQL.Add('FROM   PedidosRepresentantes PR');
      tSomaPed.SQL.Add('WHERE  Origem_Pedido        = ''TELEVENDAS'' ');
      tSomaPed.SQL.Add('  AND  ISNULL(Cancelado, 0) = 0');

      if not cFaturados.Checked then
         tSomaPed.SQL.Add('  AND ISNULL(Faturado, 0) = 0');

      tSomaPed.ParamByName('pRepresentante').AsInteger := Dados.UsuariosCodigo_Representante.AsInteger;
      tSomaPed.Open;

      cTotalAtendente.Value := tSomaPed.FieldByName('Total_Atendente').AsCurrency;
      cTotalPedidos.Value   := tSomaPed.FieldByName('Total_Pedidos').AsCurrency;
      cQtdeAtendente.Value  := tSomaPed.FieldByName('Qtde_Atendente').AsInteger;
      cQtdeGeral.Value      := tSomaPed.FieldByName('Qtde_Geral').AsInteger;

      tSomaPed.SQL.Clear;
      tSomaPed.SQL.Add('SELECT Total_Produtos = SUM((Valor_Unitario-Valor_IPI) * Quantidade)');
      tSomaPed.SQL.Add('FROM   PedidosRepresentantesItens PRI');
      tSomaPed.SQL.Add('WHERE  Pedido IN( SELECT Pedido FROM PedidosRepresentantes PR WHERE Origem_Pedido = ''TELEVENDAS'' AND Representante = :pRepresentante AND ISNULL(Cancelado,0) = 0');
      if not cFaturados.Checked then
         tSomaPed.SQL.Add('  AND ISNULL(Faturado, 0) = 0');
      tSomaPed.SQL.Add('  )');

      tSomaPed.ParamByName('pRepresentante').AsInteger := Dados.UsuariosCodigo_Representante.AsInteger;
      tSomaPed.Open;

      cTotalProdAtendente.Value := tSomaPed.FieldByName('Total_Produtos').AsCurrency;

      tSomaPed.SQL.Clear;
      tSomaPed.SQL.Add('SELECT  Total_Produtos = SUM((Valor_Unitario-Valor_IPI) * Quantidade)');
      tSomaPed.SQL.Add('FROM   PedidosRepresentantesItens PRI');
      tSomaPed.SQL.Add('WHERE  Pedido IN( SELECT Pedido FROM PedidosRepresentantes PR WHERE Origem_Pedido = ''TELEVENDAS'' AND ISNULL(Cancelado,0) = 0');

      if not cFaturados.Checked then
         tSomaPed.SQL.Add('  AND ISNULL(Faturado, 0) = 0');
      tSomaPed.SQL.Add('  )');

      tSomaPed.Open;
      cTotalPedidosProd.Value := tSomaPed.FieldByName('Total_Produtos').AsCurrency;
end;

procedure TPedido_Televendas.GradeFiltroDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
      with Dados do begin
           if (tFiltraPed.FieldByName('Cancelado').AsBoolean) and (not tFiltraPed.FieldByName('Faturado').AsBoolean) then
              GradeFiltro.Canvas.Font.Color := clRed
           else
              GradeFiltro.Canvas.Font.Color := clBlack;

           if tFiltraPed.FieldByName('Faturado').AsBoolean then
              GradeFiltro.Canvas.Font.Color := clBlue;

           if gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := $00FFAAB0;
              FillRect(Rect);
              Font.Style := [fsbold];
              Font.Color := clBlack;
           end;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      end;
end;

procedure TPedido_Televendas.bOrcamentoComprasClick(Sender: TObject);
begin
      with tPedidos do begin
           SQL.Clear;
           SQL.Add('SELECT *,');
           SQL.Add('      (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ModalidadesPagamento MP WHERE MP.Codigo = Modalidade_Pagamento) AS Descricao_Modalidade,');
           SQL.Add('      (SELECT Descricao FROM RamoAtividade RA WHERE RA.Codigo = Cliente_Ramo) AS Descricao_Ramo,');
           SQL.Add('      (SELECT Nome FROM Cybersoft_Cadastros.dbo.Usuarios WHERE Matricula = Atendente) AS Atendente_Nome,');
           SQL.Add('      (SELECT SUM(Peso_Unitario*Quantidade) FROM PedidosRepresentantesItens PRI WHERE PRI.Pedido = PR.Pedido) AS Peso');
           SQL.Add('FROM  PedidosRepresentantes PR');
           SQL.Add('WHERE Pedido = :pPedido');
           ParamByName('pPedido').Asstring := tNotas.FieldByName('Pedido').asstring;
           Open;
      end;
      with tItens do begin
           SQL.Clear;
           SQL.Add('SELECT  *');
           SQL.Add('       ,Unidade        = (SELECT Unidade   FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           SQL.Add('       ,Descricao      = (SELECT SUBSTRING(CAST(Descricao AS VARCHAR(500)), 1 , CHARINDEX(''<{'', Descricao)-1) FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           SQL.Add('       ,Preco_Liquido  = Valor_Unitario');
           SQL.Add('       ,Valor_Total    = Valor_Unitario * Quantidade');
           SQL.Add('       ,Total_Desconto = Valor_Desconto * Quantidade');
           SQL.Add('       ,Valor_TotalImp = (Valor_Unitario + Valor_ICMSST) * Quantidade');
           SQL.Add('       ,Total_Item     = Valor_Unitario + Valor_ICMSST');
           SQL.Add('FROM   PedidosRepresentantesItens');
           SQL.Add('WHERE  Pedido = :pPedido');
           ParamByName('pPedido').Asstring := tNotas.FieldByName('Pedido').Asstring;
           Open;
      end;
      mItensDesconto := 0;
      mDesconto      := 0;
      rOrcamento.Reset;
      rOrcamento.Print;
end;

// Envia informações para o excel.
procedure TPedido_Televendas.ExportaEXCEL;
var
  LCID,
  mLinha,
  mParte,
  i: Integer;
  WKBK: _Workbook;
  mValorDesc,
  mTotalDesc,
  mTotalIPI,
  mTotalItem,
  mTotalICMSST,
  mTotalImp:Real;
begin
       LCID                                  := GetUserDefaultLCID;                                  // Pega o usuário logado
       ExcelApplication1.DisplayAlerts[LCID] := false;                                               // Remove alertas do excel
       WKBK                                  := ExcelApplication1.Workbooks.Add(EmptyParam, LCID);   // Cria o novo arquivo
       mPlan.ConnectTo(WKBK.Worksheets[1] as _Worksheet);                                            // Conecta a planilha (1) que será a planilha a receber os dados
       mPlan.Activate(LCID);                                                                         // Ativa a planilha conectada
       ExcelApplication1.ScreenUpdating[LCID] := True;                                               // Torna possível fazer alterações

       // Ajusta o tamanho de todas as colunas.
       mPlan.Name                         := 'Orçamento_'+tItens.FieldByName('Pedido').AsString+')'; // Atribui um nome a planilha
       mPlan.Range['A1','Q1'].ColumnWidth := 9;
       mPlan.Range['A1','Q300'].Font.Size := 8;
       mPlan.Range['O1','Q1'].ColumnWidth := 12;

       // Cabecalho - Dados da Empresa.
       if trim(Dados.Empresas.FieldByName('Logo').AsString) <> '' then begin
          mPlan.Shapes.AddPicture(Dados.Empresas.FieldByName('Logo').AsString, 0, 1, 0, 0, 45, 45);  // Logo da Empresa.
       end;

       mPlan.Range['A1','A1'].Value2              := Dados.Empresas.FieldByName('Razao_Social').AsString;
       mPlan.Range['A1','T1'].Mergecells          := True;
       mPlan.Range['A1','T1'].Font.Size           := 14;
       mPlan.Range['A1','T1'].Font.Bold           := true;
       mPlan.Range['A1','T1'].HorizontalAlignment := 3;
       mPlan.Range['A1','T1'].VerticalAlignment   := 3;

       mPlan.Range['A2','A2'].Value2              := '- ORÇAMENTO -';
       mPlan.Range['A2','T2'].Mergecells          := True;
       mPlan.Range['A2','T2'].Font.Size           := 12;
       mPlan.Range['A2','T2'].Font.Bold           := true;
       mPlan.Range['A2','T2'].HorizontalAlignment := 3;
       mPlan.Range['A2','T2'].VerticalAlignment   := 3;

       with tPedidos do begin
            mPlan.Range['A4','A4'].Value2                := 'PEDIDO';
            mPlan.Range['A4','A4'].Interior.Color        := $00B09784;
            mPlan.Range['A4','T4'].Mergecells            := True;
            mPlan.Range['A4','T4'].Font.Size             := 12;
            mPlan.Range['A4','T4'].Font.Bold             := true;
            mPlan.Range['A4','T4'].Font.Color            := clBlack;
            mPlan.Range['A4','T4'].HorizontalAlignment   := 1;
            mPlan.Range['A4','T4'].VerticalAlignment     := 2;
            mPlan.Range['A4','T4'].RowHeight             := 20;
            mPlan.Range['A4','T4'].BorderAround(1, 2, 0, RGB(100,0,0));

            mPlan.Range['A5','T500'].Mergecells          := False;
            mPlan.Range['A5','T500'].Font.Size           := 12;
            mPlan.Range['A5','T500'].Font.Bold           := true;
            mPlan.Range['A5','T500'].Font.Color          := clBlack;
            mPlan.Range['A5','T500'].HorizontalAlignment := 1;
            mPlan.Range['A5','T500'].VerticalAlignment   := 1;
            mPlan.Range['A5','A500'].Mergecells          := False;
            mPlan.Range['A5','A500'].ColumnWidth         := 12;

            mPlan.Range['A5','A5'].Value2              := 'Número';
            mPlan.Range['A5','A5'].Interior.Color      := clSilver;
            mPlan.Range['B5','B5'].Value2              := FieldbyName('Pedido').asinteger;

            mPlan.Range['C5','C5'].Value2              := 'Data';
            mPlan.Range['E5','E5'].ColumnWidth         := 13;
            mPlan.Range['C5','C5'].Interior.Color      := clSilver;
            mPlan.Range['D5','D5'].Value2              := DatetoStr(FieldbyName('Data').AsDateTime);

            mPlan.Range['E5','E5'].Value2              := 'Modal.Pgto';
            mPlan.Range['E5','E5'].ColumnWidth         := 13;
            mPlan.Range['E5','E5'].Interior.Color      := clSilver;
            mPlan.Range['F5','I5'].Mergecells          := true;
            mPlan.Range['F5','F5'].Value2              := FieldbyName('Descricao_Modalidade').AsString;

            mPlan.Range['J5','J5'].Value2              := 'Atendente';
            mPlan.Range['J5','L5'].ColumnWidth         := 13;
            mPlan.Range['J5','J5'].Interior.Color      := clSilver;
            mPlan.Range['K5','L5'].Mergecells          := true;
            mPlan.Range['K5','K5'].Value2              := FieldbyName('Atendente_Nome').AsString;

            mPlan.Range['M5','M5'].Value2              := 'Situação';
            mPlan.Range['M5','M5'].ColumnWidth         := 13;
            mPlan.Range['M5','M5'].Interior.Color      := clSilver;
            mPlan.Range['N5','N5'].Value2              := FieldbyName('Situacao').AsString;

            mPlan.Range['A7','A7'].Value2              := 'CLIENTE';
            mPlan.Range['A7','T7'].Interior.Color      := $00B09784;
            mPlan.Range['A7','T7'].RowHeight           := 20;
            mPlan.Range['A7','T7'].HorizontalAlignment := 1;
            mPlan.Range['A7','T7'].VerticalAlignment   := 2;
            mPlan.Range['A7','T7'].BorderAround(1, 2, 0, RGB(100,0,0));

            mPlan.Range['A8','A8'].Value2              := 'Cliente';
            mPlan.Range['A8','A8'].Interior.Color      := clSilver;
            mPlan.Range['B8','B8'].Value2              := FieldbyName('Cliente_Nome').asstring;

            mPlan.Range['F8','F8'].Value2              := 'CNPJ';
            mPlan.Range['F8','F8'].Interior.Color      := clSilver;
            mPlan.Range['F8','F8'].ColumnWidth         := 15;
            mPlan.Range['G8','I8'].Mergecells          := true;
            mPlan.Range['G8','G8'].Value2              := FormatMaskText('99.999.999/9999-99;0', FieldbyName('Cliente_CNPJ').asstring);

            mPlan.Range['K8','K8'].Value2              := 'IE';
            mPlan.Range['K8','K8'].Interior.Color      := clSilver;
            mPlan.Range['L8','L8'].Value2              := FormatMaskText('99999999999999;0', FieldbyName('Cliente_IE').asstring);

            mPlan.Range['M8','M8'].Value2              := 'Ramo';
            mPlan.Range['M8','M8'].Interior.Color      := clSilver;
            mPlan.Range['N8','N8'].Value2              := FieldbyName('Descricao_Ramo').asstring;

            mPlan.Range['A9','A9'].Value2              := 'Endereço';
            mPlan.Range['A9','A9'].Interior.Color      := clSilver;
            mPlan.Range['B9','B9'].Value2              := FieldbyName('Cliente_Rua').asstring+', '+FieldbyName('Cliente_RuaNumero').asstring;

            mPlan.Range['F9','F9'].Value2              := 'Complemento';
            mPlan.Range['F9','F9'].Interior.Color      := clSilver;
            mPlan.Range['G9','G9'].Value2              := FieldbyName('Cliente_Complemento').asstring;

            mPlan.Range['M9','M9'].Value2              := 'Bairro';
            mPlan.Range['M9','M9'].Interior.Color      := clSilver;
            mPlan.Range['N9','P9'].Mergecells          := true;
            mPlan.Range['N9','N9'].Value2              := FieldbyName('Cliente_Bairro').asstring;

            mPlan.Range['A10','A10'].Value2            := 'Cidade';
            mPlan.Range['A10','A10'].Interior.Color    := clSilver;
            mPlan.Range['B10','B10'].Value2            := FieldbyName('Cliente_MunicipioNome').asstring;

            mPlan.Range['F10','F10'].Value2            := 'Estado';
            mPlan.Range['F10','F10'].Interior.Color    := clSilver;
            mPlan.Range['G10','G10'].Value2            := FieldbyName('Cliente_Estado').asstring;

            mPlan.Range['J10','J10'].Value2            := 'CEP';
            mPlan.Range['J10','J10'].Interior.Color    := clSilver;
            mPlan.Range['K10','K10'].Value2            := FieldbyName('Cliente_CEP').asstring;

            mPlan.Range['M10','M10'].Value2            := 'Telefone';
            mPlan.Range['M10','M10'].Interior.Color    := clSilver;
            mPlan.Range['N10','N10'].Value2            := ''''+FieldbyName('Cliente_Telefone').asstring;

            mPlan.Range['A11','A11'].Value2            := 'E-Mail';
            mPlan.Range['A11','A11'].Interior.Color    := clSilver;
            mPlan.Range['B10','B10'].Value2            := FieldbyName('Cliente_EMail').asstring;

            mPlan.Range['M11','M11'].Value2            := 'Dados Bancários';
            mPlan.Range['M11','M11'].Interior.Color    := clSilver;
            mPlan.Range['M11','M11'].ColumnWidth       := 17;
            mPlan.Range['N11','T11'].Mergecells        := true;
            mPlan.Range['O11','O11'].Value2            := FieldbyName('Dados_Bancarios').asstring;

            mPlan.Range['A13','A13'].Value2              := 'ITENS';
            mPlan.Range['A13','T13'].Interior.Color      := $00B09784;
            mPlan.Range['A13','T13'].RowHeight           := 20;
            mPlan.Range['A13','T13'].HorizontalAlignment := 1;
            mPlan.Range['A13','T13'].VerticalAlignment   := 2;
            mPlan.Range['A13','T13'].BorderAround(1, 2, 0, RGB(100,0,0));

            mPlan.Range['A14','T14'].Interior.Color      := clSilver;
            mPlan.Range['A14','T14'].HorizontalAlignment := 3;
            mPlan.Range['A14','T14'].VerticalAlignment   := 2;
            mPlan.Range['A14','T14'].Borders.LineStyle   := 1; //xlContinuous;
            mPlan.Range['A14','T14'].Borders.Weight      := 2; //xlThin;
            mPlan.Range['A14','T14'].Borders.Color       := RGB(255,255,255);
            mPlan.Range['A14','T14'].BorderAround(2, 2, 0, RGB(100,0,0));

            mPlan.Range['A14','A14'].Value2     := 'ITEM';
            mPlan.Range['B14','B14'].Value2     := 'CÓDIGO';
            mPlan.Range['C14','C14'].Value2     := 'DESCRIÇÃO';
            mPlan.Range['C14','H14'].Mergecells := true;
            mPlan.Range['I14','I14'].Value2     := 'UM';
            mPlan.Range['J14','J14'].Value2     := 'QTDE';
            mPlan.Range['K14','K14'].Value2     := 'P.TABELA';
            mPlan.Range['L14','L14'].Value2     := 'DESC';
            mPlan.Range['M14','M14'].Value2     := 'VLR.DESC';
            mPlan.Range['N14','N14'].Value2     := 'P.LÍQUIDO';
            mPlan.Range['O14','O14'].Value2     := 'T.DESC';
            mPlan.Range['P14','P14'].Value2     := 'IPI';
            mPlan.Range['P14','Q14'].Mergecells := true;
            mPlan.Range['R14','R14'].Value2     := 'ICMS ST';
            mPlan.Range['S14','S14'].Value2     := 'TOTAL UNIT.';
            mPlan.Range['T14','T14'].Value2     := 'VLR.TOTAL';
       end;

       mLinha       := 15;
       mValorDesc   := 0;
       mTotalDesc   := 0;
       mTotalIPI    := 0;
       mTotalICMSST := 0;
       mTotalItem   := 0;
       mTotalImp    := 0;

       with tItens do begin
            First;
            while not eof do begin
                  // Dados dos itens.
                  mPlan.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Value2 := FormatMaskText('9999', FieldbyName('Item').asstring);
                  mPlan.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Value2 := FieldByName('Codigo_Mercadoria').AsString;
                  mPlan.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].VerticalAlignment := 1;
                  mPlan.Range['C'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Value2 := FieldByName('Descricao').AsString;
                  mPlan.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Mergecells := true;
                  mPlan.Range['I'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Value2 := FieldByName('Unidade').AsString;
                  mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Value2 := FieldByName('Quantidade').AsInteger;
                  mPlan.Range['K'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Value2 := FieldByName('Valor_Tabela').AsFloat;
                  mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2 := FieldByName('Desconto').AsFloat;
                  mPlan.Range['M'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Value2 := FieldByName('Valor_Desconto').AsFloat;
                  mPlan.Range['N'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Value2 := FieldByName('Preco_Liquido').AsFloat;
                  mPlan.Range['O'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Value2 := FieldByName('Total_Desconto').AsFloat;
                  mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha)].Value2 := FieldByName('Aliquota_IPI').AsFloat;
                  mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Value2 := FieldByName('Valor_IPI').AsFloat;
                  mPlan.Range['R'+InttoStr(mLinha),'R'+InttoStr(mLinha)].Value2 := FieldByName('Valor_ICMSST').AsFloat;
                  mPlan.Range['S'+InttoStr(mLinha),'S'+InttoStr(mLinha)].Value2 := FieldByName('Total_Item').AsFloat;
                  mPlan.Range['T'+InttoStr(mLinha),'T'+InttoStr(mLinha)].Value2 := FieldByName('Valor_TotalImp').AsFloat;
                  mPlan.Range['M'+InttoStr(mLinha),'T'+InttoStr(mLinha)].ColumnWidth := 13;

                  // Formatação dos campos que precisam de mascara.
                  mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].NumberFormat := '#.##0,000';
                  mPlan.Range['K'+InttoStr(mLinha),'T'+InttoStr(mLinha)].NumberFormat := '#.##0,00';

                  mValorDesc   := mValorDesc   + FieldByName('Valor_Desconto').AsFloat;
                  mTotalDesc   := mTotalDesc   + FieldByName('Total_Desconto').AsFloat;
                  mTotalIPI    := mTotalIPI    + FieldByName('Valor_IPI').AsFloat;
                  mTotalICMSST := mTotalICMSST + FieldByName('Valor_ICMSST').AsFloat;
                  mTotalItem   := mTotalItem   + FieldByName('Total_Item').AsFloat;
                  mTotalImp    := mTotalImp    + FieldByName('Valor_TotalImp').AsFloat;

                  tItens.Next;
                  inc(mLinha);
            end;

            inc(mLinha, 2);

            mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2              := 'TOTAIS';
            mPlan.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].HorizontalAlignment := 3;
            mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color      := clSilver;
            mPlan.Range['M'+InttoStr(mLinha),'T'+InttoStr(mLinha)].NumberFormat        := '#.##0,00';
            mPlan.Range['L'+InttoStr(mLinha),'T'+InttoStr(mLinha)].BorderAround(1, 3, 0, RGB(100,0,0));

            mPlan.Range['M'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Value2 := mValorDesc;
            mPlan.Range['O'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Value2 := mTotalDesc;
            mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Value2 := mTotalIPI;
            mPlan.Range['R'+InttoStr(mLinha),'R'+InttoStr(mLinha)].Value2 := mTotalICMSST;
            mPlan.Range['S'+InttoStr(mLinha),'S'+InttoStr(mLinha)].Value2 := mTotalItem;
            mPlan.Range['T'+InttoStr(mLinha),'T'+InttoStr(mLinha)].Value2 := mTotalImp;
       end;

       ExcelApplication1.Visible[LCID] := true;    // Torna a aplicação visível
end;

procedure TPedido_Televendas.bExcelClick(Sender: TObject);
begin
      Filtra;
      ExportaEXCEL;
end;


end.
