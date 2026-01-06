unit frmFinanceiro_PedidosRepresentantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl, DBCtrls,
  Vcl.StdCtrls, DB, DBAccess, MSAccess, Vcl.ComCtrls, Funcoes, ppParameter, ppBands, ppVar, ppCtrls, ppMemo, ppReport, ppSubRpt, ppDBPipe, MemDS, Mask, RxCurrEdit, ppDB, ppDesignLayer, ppStrtch,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, RxToolEdit, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON, system.UITypes, Vcl.Menus, Dateutils;

type
  TFinanceiro_PedidosRepresentantes = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    Panel1: TPanel;
    lNome: TStaticText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    PedidosRep: TMSQuery;
    dsPedidosRep: TDataSource;
    StaticText2: TStaticText;
    DBEdit3: TDBEdit;
    StaticText3: TStaticText;
    DBEdit4: TDBEdit;
    StaticText4: TStaticText;
    cSaldo: TCurrencyEdit;
    bLiberar: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    tItens: TMSQuery;
    bCancelarTodos: TButton;
    bRevalidarTodos: TButton;
    tCliente: TMSQuery;
    GradeItens: TDBGrid;
    PedidosRepRepresentante: TSmallintField;
    PedidosRepCliente: TSmallintField;
    PedidosRepTransportador: TSmallintField;
    PedidosRepModalidade_Pagamento: TSmallintField;
    PedidosRepPrazo_Entrega: TSmallintField;
    PedidosRepComprador: TStringField;
    PedidosRepFrete: TSmallintField;
    PedidosRepTotal_Pedido: TCurrencyField;
    PedidosRepTotal_IPI: TCurrencyField;
    PedidosRepLiberado: TBooleanField;
    PedidosRepTipo_Nota: TSmallintField;
    PedidosRepModalidade_Frete: TSmallintField;
    PedidosRepNatureza_Codigo: TStringField;
    PedidosRepVolume_Quantidade: TFloatField;
    PedidosRepVolume_Especie: TStringField;
    PedidosRepVolume_PesoLiquido: TFloatField;
    PedidosRepVolume_PesoBruto: TFloatField;
    PedidosRepInf_Complementares2: TMemoField;
    PedidosRepFaturado: TBooleanField;
    PedidosRepCancelado: TBooleanField;
    PedidosRepAliquota_ICMS: TFloatField;
    PedidosRepCliente_CNPJ: TStringField;
    PedidosRepCliente_CPF: TStringField;
    PedidosRepCliente_Nome: TStringField;
    PedidosRepCliente_RG: TStringField;
    PedidosRepCliente_CEP: TStringField;
    PedidosRepCliente_Rua: TStringField;
    PedidosRepCliente_Bairro: TStringField;
    PedidosRepCliente_Municipio: TIntegerField;
    PedidosRepCliente_RuaNumero: TStringField;
    PedidosRepCliente_Complemento: TStringField;
    PedidosRepCliente_Estado: TStringField;
    PedidosRepCliente_IE: TStringField;
    PedidosRepCliente_Telefone: TStringField;
    PedidosRepCliente_Email: TStringField;
    PedidosRepCliente_Contato: TStringField;
    PedidosRepCliente_Ramo: TSmallintField;
    PedidosRepCliente_Representante: TSmallintField;
    PedidosRepCliente_Simples: TBooleanField;
    PedidosRepCliente_ZonaFranca: TBooleanField;
    PedidosRepCliente_ConsumidorFinal: TBooleanField;
    PedidosRepTipo_Pedido: TStringField;
    PedidosRepSituacao: TStringField;
    PedidosRepGerar_Pedido: TBooleanField;
    PedidosRepDesconto: TFloatField;
    PedidosRepTotal_Desconto: TCurrencyField;
    PedidosRepComissao: TFloatField;
    PedidosRepTipo_Faturamento: TSmallintField;
    PedidosRepRepresentante_Nome: TStringField;
    bPlanilha: TButton;
    PedidosRepCliente_MunicipioNome: TStringField;
    DBEdit5: TDBEdit;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    PedidosRepOrigem_Pedido: TStringField;
    PedidosRepAtendente: TStringField;
    PedidosRepAtendente_Comissao: TFloatField;
    PedidosRepObservacao: TMemoField;
    PedidosRepSituacao_Televendas: TStringField;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    bImprimirPed: TButton;
    tPedidos: TMSQuery;
    dstPedidos: TDataSource;
    tRItens: TMSQuery;
    dstrItens: TDataSource;
    PedidosRepFaturamento: TBooleanField;
    PedidosRepValor_FreteEmpresa: TCurrencyField;
    PedidosRepValor_FreteCliente: TCurrencyField;
    PedidosRepComissao_Gerencia: TFloatField;
    PedidosRepVendedor: TStringField;
    DBMemo1: TDBMemo;
    StaticText6: TStaticText;
    PedidosRepIndicador_IE: TSmallintField;
    bSite: TButton;
    PedidosRepBanco: TSmallintField;
    PedidosRepSel: TBooleanField;
    StaticText7: TStaticText;
    cAtraso: TCurrencyEdit;
    StaticText9: TStaticText;
    cDias: TCurrencyEdit;
    PedidosRepAguardando_Conferencia: TBooleanField;
    PedidosRepAguardando_Cliente: TBooleanField;
    PedidosRepLocal: TSmallintField;
    PedidosRepAlterado: TBooleanField;
    PedidosRepOrdem_Compra: TStringField;
    PedidosRepTransportador_Nome: TStringField;
    PedidosRepModal_Nome: TStringField;
    PedidosRepData_Despacho: TDateTimeField;
    PedidosRepNovo: TBooleanField;
    PedidosRepMinimo: TIntegerField;
    tTemp: TMSQuery;
    tTmp: TMSQuery;
    PedidosRepPlanilha: TStringField;
    TabSheet3: TTabSheet;
    PedidosRepGera_Boleto: TBooleanField;
    PedidosRepLocal_Entrega: TMemoField;
    PedidosRepEstoque: TBooleanField;
    PedidosRepData_Liberacao: TDateTimeField;
    PedidosRepData_Conferencia: TDateTimeField;
    PedidosRepData_Faturamento: TDateTimeField;
    PedidosRepData: TDateTimeField;
    PedidosRepData_Planilha: TDateTimeField;
    PedidosRepTipo_Pgto: TStringField;
    PedidosRepPedido: TStringField;
    PedidosRepUsuario: TStringField;
    PedidosRepData_Separacao: TDateTimeField;
    PedidosRepNumero_Financeiro: TIntegerField;
    PedidosRepAutorizado: TBooleanField;
    bLibParcial: TButton;
    Panel5: TPanel;
    Grade: TDBGrid;
    Panel4: TPanel;
    bPesquisa: TButton;
    bSelNenhum: TButton;
    bSelTodos: TButton;
    Navega: TDBNavigator;
    PopupMenu1: TPopupMenu;
    ExcluirPedido1: TMenuItem;
    N1: TMenuItem;
    Cancelar1: TMenuItem;
    PedidosRepRegistro: TIntegerField;
    PedidosRepData_Autorizacao: TDateTimeField;
    PedidosRepParcial: TStringField;
    PedidosRepTerminal_Entrega: TStringField;
    PedidosRepValor_Garantia: TCurrencyField;
    PedidosRepValor_CustoPorto: TCurrencyField;
    PedidosRepData_JanelaIni: TDateTimeField;
    PedidosRepData_JanelaFim: TDateTimeField;
    PedidosRepTipo_Venda: TStringField;
    PedidosRepVolume: TStringField;
    PedidosRepData_Retirada: TDateTimeField;
    PedidosRepData_Pagamento: TDateTimeField;
    PedidosRepPercentual_Diferenca: TFloatField;
    PedidosRepDemurrage: TStringField;
    PedidosRepInspetor: TStringField;
    PedidosRepAFRMM: TStringField;
    PedidosRepNacionalizacao: TStringField;
    PedidosRepValor_MultaAtraso: TCurrencyField;
    PedidosRepModal_Carregamento: TStringField;
    PedidosRepPedido_Pai: TStringField;
    PedidosRepPedido_Pai2: TStringField;
    PedidosRepFormacao_Preco: TStringField;
    PedidosRepINCOTERM: TStringField;
    StaticText8: TStaticText;
    StaticText10: TStaticText;
    PedidosRepCondicao_Pgto: TStringField;
    DBEdit6: TDBEdit;
    cOcultarCancelados: TCheckBox;
    cOrigem: TRadioGroup;
    DBEdit7: TDBEdit;
    cLog: TListBox;
    tExiste: TMSQuery;
    N2: TMenuItem;
    Voltar1: TMenuItem;
    rPedido: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
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
    ppDBText18: TppDBText;
    ppLabel23: TppLabel;
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
    ppDBText64: TppDBText;
    ppLabel38: TppLabel;
    iLogo2: TppImage;
    ppLabel80: TppLabel;
    ppDBText26: TppDBText;
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
    ppLabel89: TppLabel;
    ppDBText67: TppDBText;
    ppLabel90: TppLabel;
    ppDBText69: TppDBText;
    ppLabel91: TppLabel;
    ppLine1: TppLine;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText70: TppDBText;
    ppDBText19: TppDBText;
    ppDBText71: TppDBText;
    ppDBText68: TppDBText;
    ppDBText17: TppDBText;
    ppDBText25: TppDBText;
    ppDBText10: TppDBText;
    ppDBText4: TppDBText;
    ppDBText66: TppDBText;
    ppLabel92: TppLabel;
    ppDBText72: TppDBText;
    ppLabel107: TppLabel;
    ppDBText86: TppDBText;
    ppLabel108: TppLabel;
    ppDBText87: TppDBText;
    ppLabel109: TppLabel;
    ppDBText88: TppDBText;
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
    ppLabel78: TppLabel;
    ppDBMemo4: TppDBMemo;
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
    ppLabel81: TppLabel;
    mParcelas: TppMemo;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList1: TppParameterList;
    rRomaneio: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel93: TppLabel;
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
    ppDBText63: TppDBText;
    ppLabel37: TppLabel;
    ppLabel79: TppLabel;
    ppDBText1: TppDBText;
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
    ppDetailBand3: TppDetailBand;
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
    ppLabel110: TppLabel;
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
    ppLabel77: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppLine39: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppLabel76: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList2: TppParameterList;
    pEmpresas: TppDBPipeline;
    pPedidos: TppDBPipeline;
    pItens: TppDBPipeline;
    pItensppField1: TppField;
    pItensppField2: TppField;
    pItensppField3: TppField;
    pItensppField4: TppField;
    pItensppField5: TppField;
    pItensppField6: TppField;
    pItensppField7: TppField;
    pItensppField8: TppField;
    pItensppField9: TppField;
    bImprimirRom: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PedidosRepAfterScroll(DataSet: TDataSet);
    procedure bLiberarClick(Sender: TObject);
    procedure cOcultarCanceladosClick(Sender: TObject);
    procedure bCancelarTodosClick(Sender: TObject);
    procedure bRevalidarTodosClick(Sender: TObject);
    function  SalvaCliente(Existe: Boolean; Pedido: string): boolean;
    procedure bPlanilhaClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bImprimirPedClick(Sender: TObject);
    procedure bSiteClick(Sender: TObject);
    procedure bSelTodosClick(Sender: TObject);
    procedure bSelNenhumClick(Sender: TObject);
    procedure GradeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GradeDblClick(Sender: TObject);
    procedure GradeItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cOrigemClick(Sender: TObject);
    procedure GradeTitleClick(Column: TColumn);
    procedure bLibParcialClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ExcluirPedido1Click(Sender: TObject);
    procedure Voltar1Click(Sender: TObject);
    procedure ppHeaderBand1AfterPrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure bImprimirRomClick(Sender: TObject);
    procedure ppHeaderBand2AfterPrint(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
  private
    procedure Seleciona(pSel: boolean);
    procedure FiltraPed(Ordem:string);
    function VerificaEstoque: boolean;
    procedure SelGrade;
    function VerificaDesativado: boolean;
    function PegaSel(pGrade: TDBGrid): string;
    function ApuraEstoque(Codigo: integer): real;
    { Private declarations }
  public
    { Public declarations }
    mSel: boolean;
    mCont
   ,mContFinal: integer;
    mDirecao: string;
  end;

var
  Financeiro_PedidosRepresentantes: TFinanceiro_PedidosRepresentantes;

implementation

uses frmDados, frmFinanceiro_PedidosRepresentantesExcel, frmMenu_Principal, frmJanela_Processamento, frmPedidosRepresentantes_Financeiro,
     frmFinanceiro_PedidosRepresentantesSite, frmPedido, frmPedidosRepresentantes_Parcial;

{$R *.dfm}

procedure TFinanceiro_PedidosRepresentantes.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_PedidosRepresentantes.bSiteClick(Sender: TObject);
begin
     Financeiro_PedidosRepresentantesSite := TFinanceiro_PedidosRepresentantesSite.Create(self);
     Financeiro_PedidosRepresentantesSite.Caption := Caption;
     Financeiro_PedidosRepresentantesSite.ShowModal;
     PedidosRep.Refresh;
end;

procedure TFinanceiro_PedidosRepresentantes.bSelNenhumClick(Sender: TObject);
begin
     Seleciona(false);
end;

procedure TFinanceiro_PedidosRepresentantes.bSelTodosClick(Sender: TObject);
begin
     seleciona(true);
end;

procedure TFinanceiro_PedidosRepresentantes.Seleciona(pSel: boolean);
var
   l:integer;
begin
     Grade.Enabled := false;
     with Grade.DataSource.DataSet do begin
          DisableControls;
          first;
          for l := 0 to pred(RecordCount) do begin
              Grade.SelectedRows.CurrentRowSelected := pSel;
              next;
          end;
          EnableControls;
          Grade.SelectedRows.Refresh;
          first;
     end;
     Grade.Enabled := true;
end;

procedure TFinanceiro_PedidosRepresentantes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Menu_Principal.TimerECommerce.Enabled := true;
      FecharTabelas(Dados, nil, nil, nil);
      Financeiro_PedidosRepresentantes.Release;
      Financeiro_PedidosRepresentantes := nil;
end;

procedure TFinanceiro_PedidosRepresentantes.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_PedidosRepresentantes.FormShow(Sender: TObject);
begin
     with Dados do begin
          Configuracao.open;
          with tTmp do begin
               close;
               sql.Clear;
               sql.Add('update PedidosRepresentantes set Novo = 0 where Novo = 1');
               execute;
          end;

          FiltraPed('Pedido');

          with Empresas do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
               ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
               Open;
               bPlanilha.Enabled := fieldbyname('Modulo_ECommerce').AsBoolean;
               bSite.Enabled     := fieldbyname('Modulo_ECommerce').AsBoolean;
          end;
          with Fornecedores do begin
               SQL.Clear;
               SQL.Add('select * from Fornecedores order by Codigo');
               Open;
          end;
          
          bLiberar.Enabled       := (PedidosRep.RecordCount > 0) and not PedidosRep.FieldByName('Cancelado').AsBoolean;
          bCancelarTodos.Enabled := (PedidosRep.RecordCount > 0) and not PedidosRep.FieldByName('Cancelado').AsBoolean;
     end;

     PageControl1.ActivePageIndex := 0;
     TabSheet1.Caption := '&Pedidos ['+PoeZero(4, PedidosRep.RecordCount)+']';
     Menu_Principal.lECommerce.Visible := false;
end;

procedure TFinanceiro_PedidosRepresentantes.PedidosRepAfterScroll(DataSet: TDataSet);
begin
      screen.Cursor := crSQLWait;
      with Dados do Begin
           Clientes.SQL.Clear;
           If Trim(PedidosRep.FieldByName('Cliente_CNPJ').AsString) <> '' then begin
              Clientes.SQL.Add('SELECT * FROM Clientes WHERE CNPJ = :pCNPJ');
              Clientes.ParamByName('pCNPJ').AsString := PedidosRep.FieldByName('Cliente_CNPJ').AsString;
           end else begin
              Clientes.SQL.Add('SELECT * FROM Clientes WHERE CPF = :pCPF');
              Clientes.ParamByName('pCPF').AsString := PedidosRep.FieldByName('Cliente_CPF').AsString;
           End;
           Clientes.Open;
           if PedidosRep.RecordCount > 0 then begin
              with tTemp do begin
                   close;
                   sql.Clear;
                   sql.Add('update PedidosRepresentantesItens set Disponivel = cast(');
                   sql.Add('       (select isnull(sum(Quantidade), 0) from NotasItens where Codigo_Mercadoria = PedidosRepresentantesItens.Codigo_Mercadoria');
                   sql.add('                                                      and Saida_Entrada = 0');
                   sql.add('                                                      and Movimenta_Estoque = 1');
                   sql.add('                                                      and Cancelada <> 1');
                   sql.add('                                                      and isnull(NotasItens.Nfe_Denegada, 0) = 0) +');
                   sql.Add('       (select isnull(sum(Quantidade), 0) from NotasTerceirosItens where Codigo_Mercadoria = PedidosRepresentantesItens.Codigo_Mercadoria and Movimenta_Estoque = 1) +');
                   sql.Add('       (select isnull(sum(Quantidade_Entrada), 0) from ProdutosTransferencia where Produto_Entrada = PedidosRepresentantesItens.Codigo_Mercadoria) -');
                   sql.Add('       (select isnull(sum(Quantidade), 0) from NotasItens where Codigo_Mercadoria = PedidosRepresentantesItens.Codigo_Mercadoria');
                   sql.add('                                                      and Saida_Entrada = 1');
                   sql.add('                                                      and Movimenta_Estoque = 1');
                   sql.add('                                                      and Cancelada <> 1');
                   sql.add('                                                      and isnull(NotasItens.Nfe_Denegada, 0) = 0) -');
                   sql.Add('       (select isnull(sum(Quantidade), 0) from PedidosItens where Codigo_Mercadoria = PedidosRepresentantesItens.Codigo_Mercadoria and Saida_Entrada = 1 and Movimenta_Estoque = 1) -');
                   sql.Add('       (select isnull(sum(Quantidade), 0) from ProdutosTransferencia where Produto_Saida = PedidosRepresentantesItens.Codigo_Mercadoria) -');
                   sql.Add('       (select isnull(sum(Quantidade), 0) from PedidosRepresentantesItens pri where pri.Codigo_Mercadoria = Codigo_Mercadoria');
                   sql.add('                                                                          and isnull(pri.Faturamento, 0) = 0');
                   sql.Add('                                                                          and isnull(pri.Faturado, 0) = 0');
                   sql.add('                                                                          and (select isnull(pr.Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0');
                   sql.Add('                                                                          and (select isnull(Local,0) from PedidosRepresentantes pr where pr.Pedido <> Pedido) < 5)');
                   sql.Add('       as decimal(14,3))');
                   sql.Add('where Pedido = :pPedido');
                   parambyname('pPedido').value := PedidosRep.FieldByName('Pedido').AsString;
                   //sql.SaveToFile('c:\temp\Financeiro_Representantes_Itens_Update.sql');
                   Execute;
                   close;
                   sql.Clear;
                   sql.Add('update PedidosRepresentantesItens set Saldo = (isnull(Disponivel, 0) - isnull(Quantidade, 0))');
                   sql.Add('where  Pedido = :pPedido');
                   sql.Add('and    Data   = :pData');
                   sql.Add('and    isnull(Cancelado, 0) = 0');
                   ParamByName('pPedido').value    := PedidosRep.FieldByName('Pedido').AsString;
                   parambyname('pData').AsDateTime := PedidosRep.FieldByName('Data').value;
                   Execute;
              end;
              with PedidosRepresentantesItens do begin
                   close;
                   SQL.Clear;
                   SQL.Add('select *');
                   SQL.Add('      ,Descricao_Mercadoria = (select Descricao from Produtos where Codigo = Codigo_Mercadoria)');
                   SQL.Add('      ,Estoque_Minimo       = (select Estoque_Minimo from Produtos where Codigo = Codigo_Mercadoria)');
                   SQL.Add('      ,Valor_Total          = Valor_Unitario * Quantidade');
                   SQL.Add('from   PedidosRepresentantesItens PR');
                   SQL.Add('where  Pedido = :pPedido');
                   ParamByName('pPedido').value := PedidosRep.FieldByName('Pedido').AsString;
                   //SQL.SaveToFile('c:\temp\Pedidos_Representantes_Itens.sql');
                   Open;
              end;
              with tItens do begin
                   close;
                   SQL.Clear;
                   SQL.Add('select count(*) AS Qtde from PedidosRepresentantesItens WHERE Pedido = :pPedido');
                   ParamByName('pPedido').value := PedidosRep.FieldByName('Pedido').AsString;
                   Open;
              end;
              TabSheet2.Caption := '&Itens ['+tItens.FieldByName('Qtde').AsString+']';
              cSaldo.Value      := ClientesLimite_Credito.AsCurrency - ClientesLimite_Utilizado.AsCurrency;
              bLiberar.Enabled  := (PedidosRep.RecordCount > 0) and not PedidosRep.FieldByName('Cancelado').AsBoolean;
              with tTemp do begin
                   close;
                   sql.Clear;
                   sql.Add('select Valor = sum(Valor_Total)');
                   sql.Add('      ,Dias  = datediff(day, Data_Vencimento, getdate())');
                   sql.Add('from   PagarReceber pr');
                   sql.Add('where  isnull(Cliente, 0) <> 0');
                   sql.Add('and    Cliente = :pCliente');
                   sql.Add('and    Data_Vencimento < getdate()');
                   sql.Add('and    (Valor_Total - (select sum(Valor) from PagarReceberBaixas prb where prb.Numero = pr.Numero)) > 0');
                   sql.Add('group by Data_Vencimento');
                   Parambyname('pCliente').asinteger := ClientesCodigo.AsInteger;
                   //sql.SaveToFile('c:\temp\Atraso_Pagamento_Cliente.sql');
                   open;
                   cAtraso.Value := fieldbyname('Valor').AsCurrency;
                   cDias.Value   := fieldbyname('Dias').asinteger;
              end;
           end;
      end;
      screen.Cursor := crDefault;
end;

procedure TFinanceiro_PedidosRepresentantes.cOrigemClick(Sender: TObject);
begin
     FiltraPed('Pedido');
end;

procedure TFinanceiro_PedidosRepresentantes.ExcluirPedido1Click(Sender: TObject);
begin
      if messageDlg('Deseja realmente excluir este pedido?', mtconfirmation, [mbyes, mbno], 0) = mrno then begin 
         abort;
      end else begin
         if trim(PedidosRep.FieldByName('Pedido_Pai').AsString) = '' then begin
            messageDlg('Apenas pedidos filho pode ser excluídos!', mtconfirmation, [mbok], 0);
            abort;
         end;
      end;
      // Totalizando o Pedido PAI.
      with tTmp do begin
           sql.Clear;
           sql.Add('update PedidosRepresentantesItens set Quantidade = Quantidade + :pParcial');
           sql.add('where Pedido = :pPed');
           parambyname('pPed').Value     := PedidosRep.fieldbyname('Pedido_Pai').asstring;
           parambyname('pParcial').Value := Dados.PedidosRepresentantesItens.fieldbyname('Quantidade').asfloat;
           execute;
           sql.Clear;
           sql.Add('update PedidosRepresentantes set Total_Pedido = (select sum(Valor_Unitario * Quantidade) from PedidosRepresentantesItens where Pedido = :pPed)');
           sql.add('where Pedido = :pPed');
           parambyname('pPed').Value := PedidosRep.fieldbyname('Pedido_Pai').asstring;
           execute;
      end;
      with tTmp do begin
           sql.clear;
           sql.add('delete from PedidosRepresentantesItens where Pedido = :pPed');
           parambyname('pPed').value := PedidosRep.fieldbyname('Pedido').asstring;
           execute;
           sql.clear;
           sql.add('delete from PedidosRepresentantes where Pedido = :pPed');
           parambyname('pPed').value := PedidosRep.fieldbyname('Pedido').asstring;
           execute;
      end;
      PedidosRep.Refresh;
end;

procedure TFinanceiro_PedidosRepresentantes.GradeCellClick(Column: TColumn);
begin
      if not mSel then begin
         if VerificaEstoque then begin
            mSel  := true;
            mCont := Grade.DataSource.DataSet.RecNo;
         end else begin
            messagedlg('Atenção!'+#13+#13+'Este pedido contém produtos com estoque negativo.'+#13+#13'Pedido não pode ser liberado.', mtwarning, [mbok], 0);
         end;
      end;
end;

procedure TFinanceiro_PedidosRepresentantes.GradeDblClick(Sender: TObject);
begin
     if verificaDesativado then SelGrade;
end;

procedure TFinanceiro_PedidosRepresentantes.SelGrade;
begin
     with PedidosRep do begin
          if not Fieldbyname('Cancelado').asboolean then begin
             if VerificaEstoque then begin
                edit;
                   Fieldbyname('Sel').Value := not Fieldbyname('Sel').asboolean;
                post;
             end else begin
                messagedlg('Atenção!'+#13+#13+'Este pedido contém produtos com estoque negativo.'+#13+#13'Pedido não pode ser liberado.', mtwarning, [mbok], 0);
             end;
          end;
     end;
end;

procedure TFinanceiro_PedidosRepresentantes.GradeItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin      
     with Dados do begin
          if PedidosRepresentantesItens.fieldbyname('Saldo').asfloat < 0 then begin
             GradeItens.Canvas.Brush.Color := clRed;
             GradeItens.Canvas.Font.Color  := $007A7A7A;
          end else begin
             if PedidosRepresentantesItens.fieldbyname('Disponivel').asfloat <= PedidosRepresentantesItens.fieldbyname('Estoque_Minimo').asfloat then begin
                GradeItens.Canvas.Brush.Color := clSilver;
                GradeItens.Canvas.Font.Color  := $007A7A7A;
             end else begin
                GradeItens.Canvas.Brush.Color := clWhite;
                GradeItens.Canvas.Font.Color  := clBlack;
             end;
          end;
          if gdSelected in State then begin
             with (Sender as TDBGrid).Canvas do begin
                  if PedidosRepresentantesItens.fieldbyname('Saldo').asfloat < 0 then begin
                     Brush.Color := clRed;
                  end else begin
                     if PedidosRepresentantesItens.fieldbyname('Disponivel').asfloat <= PedidosRepresentantesItens.fieldbyname('Estoque_Minimo').asfloat then begin
                        Brush.Color := clSilver;
                     end else begin
                        Brush.Color := clLime;
                     end;
                  end;

                  FillRect(Rect);
                  Font.Color := clBlack;
             end;
          end;
          TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
     end;
end;

procedure TFinanceiro_PedidosRepresentantes.GradeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      if key = 13 then begin
         if VerificaDesativado then SelGrade;
      end;
end;

procedure TFinanceiro_PedidosRepresentantes.GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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
                   (DataSource.DataSet.RecNo = mContFinal) or (tPedidos.Eof);
           end;
           mContfinal := 0;
           mSel       := false;
           DataSource.DataSet.EnableControls;
           Enabled := true;
      end;
end;

procedure TFinanceiro_PedidosRepresentantes.GradeTitleClick(Column: TColumn);
begin
     FiltraPed(Column.FieldName);
end;

procedure TFinanceiro_PedidosRepresentantes.bLiberarClick(Sender: TObject);
var
   mok,val,mExiste: boolean;
   mItens: widestring;
   mEstoque: boolean;
   mSenha:string;
   mQt: integer;
begin
      if Grade.SelectedRows.Count = 0 then begin
         messagedlg('Nenhum pedido selecionado para liberar!', mtinformation, [mbok], 0);
         Abort;
      end;
      // Verifica se há atraso no pagamento do cliente.
      if cDias.AsInteger > 0 then begin
         mSenha := inputbox('Autorização',#31+'Senha do Administrador requerida para clientes com valores em atraso:','');
         if mSenha <> '' then begin
            with Dados, Usuarios do begin
                 sql.clear;
                 sql.add('select * from Usuarios where Matricula = ''ADM01'' ');
                 open;
                 if UsuariosChave.Value <> mSenha then begin
                    MessageDlg('Erro!'+#13+#13+'Senha do "Administrador" inválida.', mtError, [mbOK], 0);
                    Abort;
                 end;
            end;
         end else begin
            abort;
         end;
      end;
      // Verifica se todos os itens do pedido estão com valor <= ao valor do cadastro do produto e avisa.
      with tTmp do begin
           sql.clear;
           sql.add('select Pedido');
           sql.add('      ,Item');
           sql.add('      ,Codigo_Mercadoria');
           sql.add('      ,Valor_Unitario');
           sql.add('      ,Valor_Cad = isnull((select Valor_Venda from produtos prd where prd.Codigo = pri.Codigo_Mercadoria), 0)');
           sql.add('      ,Tabela    = isnull((select Percentual_Venda from TabelaComissoes tc where tc.Codigo = pri.Tabela_Comissao), 0)/100');
           sql.add('      ,Modal     = isnull((select Percentual_Venda from Cybersoft_Cadastros.dbo.ModalidadesPagamento md where md.Codigo = (select Modalidade_Pagamento from PedidosRepresentantes pr where pr.Pedido = pri.Pedido)), 0)/100');
           sql.Add('      ,Calculado = cast(0 as money)');
           sql.add('into  #temp');
           sql.add('from  PedidosRepresentantesItens Pri');
           sql.add('where isnull((select Cancelado from PedidosRepresentantes pr where pr.Pedido = pri.Pedido), 0) = 0');
           sql.add('and   isnull((select Sel from PedidosRepresentantes pr where pr.Pedido = pri.Pedido), 0) = 1');
           sql.add('and   isnull((select Local from PedidosRepresentantes pr where pr.Pedido = pri.Pedido), 0) = 0');
           sql.add('and   isnull((select Valor_Venda from produtos prd where prd.Codigo = pri.Codigo_Mercadoria), 0) >= pri.Valor_Unitario');
           sql.add('update #temp set Calculado = (Valor_Cad * (1+Tabela)) * (1+Modal)');
           sql.add('select *');
           sql.add('from   #temp');
           sql.add('order by cast(substring(Pedido, 2, 10) as int), Item');
           sql.add('drop Table #temp');
           //sql.SaveToFile('c:\temp\Checagem_Valor_Itens.sql');
           open;
           if RecordCount > 0 then begin
              First;
              mItens := '';
              while not eof do begin
                    mItens := Concat(mItens
                                    ,FieldByName('Pedido').AsString,' | '
                                    ,FormatFloat('0000', FieldByName('Item').AsInteger),' | '
                                    ,FormatFloat('0000000', FieldByName('Codigo_Mercadoria').AsInteger),' | '
                                    ,Padr(FormatFloat(',##0.0000', FieldByName('Valor_Unitario').AsCurrency), 20)
                                    ,PadR(FormatFloat(',##0.0000', FieldByName('Calculado').AsCurrency), 20),#13);
                    next;                
              end;
              if MessageDlg('Atenção!'+#13+#13+'Alguns Pedidos tem itens que estão com valor diferente do esperado.'+#13+#13+'Deseja libera-los mesmo assim?'+#13+#13+mItens, mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;
      end;
      if MessageDlg('Deseja realmente liberar os pedidos selecionados para faturamento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      end;

      clog.Clear;
      Screen.Cursor := crSQLWait;

      Janela_Processamento                    := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := PedidosRep.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Liberando Pedidos e cadastrando clientes novos... Aguarde';
      Janela_Processamento.Show;

      with Dados do begin
           Clientes.DisableControls;
           PedidosRep.DisableControls;

           with tTmp do begin
                sql.Clear;
                sql.Add('select *');
                sql.Add('from PedidosRepresentantes pr');
                sql.Add('where Pedido in ('+PegaSel(Grade)+')');
                sql.Add('and isnull(Local, 0) = 0');
                if ConfiguracaoAutorizacao_Pedidos.AsBoolean then begin
                   sql.Add('and isnull(Autorizado,0) = 1');
                end;
                sql.add('and isnull(Cancelado, 0) = 0');
                //sql.SavetoFile('c:\temp\Liberacao_Pedidos.sql');
                Open;
                First;
                while (not Eof) and (Funcoes.Cancelado = false) do begin
                      // Verifica se existe algum pedido com itens sem estoque e não libera.
                      mEstoque := true;
                      with tTemp do begin
                           sql.clear;
                           sql.add('select Saldo = isnull(Saldo, 0) from PedidosRepresentantesItens where Pedido = :pPed and isnull(Saldo, 0) < 0');
                           parambyname('pPed').asstring := tTmp.fieldbyname('Pedido').asstring;
                           open;
                           mQt      := recordcount;
                           mEstoque := recordcount = 0;
                           Grade.SelectedRows.CurrentRowSelected := false;
                      end;
                      // Só libera pedidos com todos os itens em estoque.
                      if mEstoque then begin
                         mok := false;
                         with tExiste do begin
                              sql.Clear;
                              if trim(tTmp.FieldByName('Cliente_CNPJ').AsString) <> '' then begin
                                 sql.Add('select Qtde = count(CNPJ) from Clientes where CNPJ = :pCNPJ');
                                 parambyname('pCNPJ').value := tTmp.FieldByName('Cliente_CNPJ').AsString;
                              end else begin
                                 sql.Add('select Qtde = count(CPF) from Clientes where CPF = :pCPF');
                                 parambyname('pCPF').value := tTmp.FieldByName('Cliente_CPF').AsString;
                              end;
                              open;
                              mExiste := fieldbyname('Qtde').AsInteger > 0;
                              mok     := SalvaCliente(mExiste, tTmp.fieldbyname('Pedido').asstring);
                         end;
                         // Se o cliente esta com todos os dados adiciona o codigo do cliente ao pedido caso contrario não libera o pedido.
                         if mok then begin
                            with tTemp do begin
                                 sql.Clear;
                                 sql.Add('update PedidosRepresentantes set Cliente = :pCli where Pedido = :pPed and Data_Planilha = :pData');
                                 parambyname('pPed').asstring := tTmp.FieldByName('Pedido').asstring;
                                 parambyname('pData').value   := tTmp.FieldByName('Data_Planilha').value;
                                 parambyname('pCli').asstring := ClientesCodigo.asstring;
                                 execute;
                            end;
                            GerarLog('('+Menu_Principal.mUsuarioCodigo+') '+Menu_Principal.mUsuarioNome, 'PedidosRepresentantes', 'LIBERAÇÃO' , 'Pedido', 'Liberação de Pedido '+fieldbyname('Pedido').asstring, '', '', '');
                         end else begin
                            with tTemp do begin
                                 sql.Clear;
                                 sql.Add('update PedidosRepresentantes set Sel = 0 where Pedido = :pPed and Data_Planilha = :pData');
                                 parambyname('pPed').asstring := tTmp.FieldByName('Pedido').asstring;
                                 parambyname('pData').value   := tTmp.FieldByName('Data_Planilha').value;
                                 execute;
                            end;
                            clog.Items.Add('Pedido não liberado: '+tTmp.FieldByName('Pedido').asstring+ '    Ordem de Compra: '+tTmp.FieldByName('Ordem_Compra').asstring);
                            clog.Items.Add('      Erro no cadastro do cliente: '+tTmp.FieldByName('Cliente_Nome').asstring+ '    CNPJ/CPF: '+tTmp.FieldByName('Cliente_CNPJ').asstring+tTmp.FieldByName('Cliente_CPF').asstring);
                            GerarLog('('+Menu_Principal.mUsuarioCodigo+') '+Menu_Principal.mUsuarioNome, 'PedidosRepresentantes', 'LIBERAÇÃO' , 'Pedido', 'Liberação de Pedido '+fieldbyname('Pedido').asstring+'  não liberado por erro de cliente', '', '', '');
                         end;
                         with tTemp do begin
                              sql.Clear;
                              sql.Add('update PedidosRepresentantes set Liberado       = 1');
                              sql.Add('                                ,Situacao       = ''LIBERADO'' ');
                              sql.Add('                                ,Cancelado      = 0');
                              sql.Add('                                ,Local          = 1');
                              sql.Add('                                ,Data_Liberacao = getdate()');
                              sql.Add('                                ,Usuario        = '+quotedstr(Menu_Principal.mUsuarioCodigo));
                              sql.Add('where Pedido = :pPed');
                              sql.Add('and isnull(Local, 0) = 0');
                              sql.Add('and isnull(Cancelado, 0) = 0');
                              sql.Add('and isnull(Total_Pedido, 0) > 0');
                              parambyname('pPed').asstring := tTmp.fieldbyname('Pedido').asstring;
                              //sql.savetofile('c:\temp\Liberacao_Pedidos_update.sql');
                              execute;
                         end;
                      end else begin
                         cLog.Items.Add('Pedido '+fieldbyname('Pedido').asstring+stringofChar('.',10-length(fieldbyname('Pedido').asstring))+': contém '+inttostr(mQt)+' produtos sem estoque disponível, não foi liberado.');
                      end;
                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Application.ProcessMessages;
                      Next;
                end;
           end;
           Janela_Processamento.Close;
           if not Funcoes.Cancelado then begin
              if cLog.Items.Count = 0 then begin
                 ShowMessage('Pedidos liberados com sucesso!');
              end else begin
                 //ShowMessage('Alguns pedidos não foram liberados, verifique o log de erros!');
                 MessageDlg('Alguns pedidos não foram liberados.'+#13+#13+'Verifique o log de erros!', mtError, [mbok], 0);
                 PageControl1.ActivePageIndex := 2;
              end;
           end else begin
              ShowMessage('Operação cancelada pelo usúario!');
           end;

           bLiberar.Enabled := PedidosRep.RecordCount > 0;
           Janela_Processamento.Close;
           Clientes.EnableControls;
           PedidosRep.EnableControls;
      end;
      FiltraPed('Pedido');
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_PedidosRepresentantes.bLibParcialClick(Sender: TObject);
var
   mSenha:string;
begin
      if Grade.SelectedRows.Count = 0 then begin
         messagedlg('Nenhum pedido selecionado para liberar!', mtinformation, [mbok], 0);
         Abort;
      end;
      // Verifica se há atraso no pagamento do cliente.
      if cDias.AsInteger > 0 then begin
         mSenha := inputbox('Autorização',#31+'Senha do Administrador requerida para clientes com valores em atraso:','');
         if mSenha <> '' then begin
            with Dados, Usuarios do begin
                 sql.clear;
                 sql.add('select * from Usuarios where Matricula = ''ADM01'' ');
                 open;
                 if UsuariosChave.Value <> mSenha then begin
                    MessageDlg('Erro!'+#13+#13+'Senha do "Administrador" inválida.', mtError, [mbOK], 0);
                    Abort;
                 end;
            end;
         end else begin
            abort;
         end;
      end;
      PedidosRepresentantes_Parcial := TPedidosRepresentantes_Parcial.create(self);
      PedidosRepresentantes_Parcial.caption := caption;
      PedidosRepresentantes_Parcial.showmodal;
      PedidosRep.Refresh;
end;

procedure TFinanceiro_PedidosRepresentantes.cOcultarCanceladosClick(Sender: TObject);
begin
     FiltraPed('Pedido');      
end;

procedure TFinanceiro_PedidosRepresentantes.bCancelarTodosClick(Sender: TObject);
begin
     if MessageDlg('Deseja realmente cancelar todos os pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     end;
     with tTmp do begin
          sql.clear;
          sql.add('update PedidosRepresentantes set Cancelado    = 1');
          sql.add('                                ,Situacao     = ''CANCELADO'' ');
          sql.add('                                ,Gerar_Pedido = 0 ');
          sql.add('                                ,Sel          = 0 ');
          sql.add('where isnull(Local, 0) = 0');
          sql.add('and Pedido in('+PegaSel(Grade)+')');
          sql.add('update PedidosRepresentantesItens set Cancelado = 1');
          sql.add('where Pedido in('+PegaSel(Grade)+')');
          execute;
     end;
     PedidosRep.Refresh;
     Dados.PedidosRepresentantesItens.Refresh;
     bCancelarTodos.Enabled  := false;
end;

procedure TFinanceiro_PedidosRepresentantes.bRevalidarTodosClick(Sender: TObject);
begin
     If MessageDlg('Deseja realmente revalidar todos os pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     End;
     with tTmp do begin
          sql.clear;
          sql.add('update PedidosRepresentantes set Cancelado    = 0');
          sql.add('                                ,Situacao     = ''AGUARDANDO'' ');
          sql.add('                                ,Gerar_Pedido = 0');
          sql.add('                                ,Sel          = 0');
          sql.add('where isnull(Local, 0) = 0');
          sql.add('and Pedido in('+PegaSel(Grade)+')');
          sql.add('update PedidosRepresentantesItens set Cancelado = 0');
          sql.add('where Pedido in('+PegaSel(Grade)+')');
          execute;
     end;
     PedidosRep.Refresh;
     Dados.PedidosRepresentantesItens.Refresh;
     bCancelarTodos.Enabled  := not bRevalidarTodos.Enabled;
end;

function TFinanceiro_PedidosRepresentantes.SalvaCliente(Existe: Boolean; Pedido:string): boolean;
begin
      result := true;
      with Dados do begin
           if not Existe then begin
              if trim(tTmp.FieldByName('Cliente_Nome').Value) = '' then begin 
                 result := false;
                 cLog.Items.Add('Pedido ('+Pedido+') "NOME" do cliente não informado.');
              end;
              if trim(tTmp.FieldByName('Cliente_CEP').asstring)       = '' then begin 
                 result := false;
                 cLog.Items.Add('Pedido ('+Pedido+') "CEP" do clientes não informado.');
              end;
              if trim(tTmp.FieldByName('Cliente_Rua').asstring)       = '' then begin 
                 result := false;
                 cLog.Items.Add('Pedido ('+Pedido+') "RUA" do clientes não informado.');
              end;
              if trim(tTmp.FieldByName('Cliente_Bairro').asstring)    = '' then begin 
                 result := false;
                 cLog.Items.Add('Pedido ('+Pedido+') "BAIRRO" do clientes não informado.');
              end;
              if trim(tTmp.FieldByName('Cliente_Municipio').asstring) = '' then begin 
                 result := false;
                 cLog.Items.Add('Pedido ('+Pedido+') "MUNICÍPIO" do clientes não informado.');
              end;
              if trim(tTmp.FieldByName('Cliente_Estado').asstring)    = '' then begin 
                 result := false;
                 cLog.Items.Add('Pedido ('+Pedido+') "ESTADO" do clientes não informado.');
              end;
              if trim(tTmp.FieldByName('Cliente_CNPJ').asstring+tTmp.FieldByName('Cliente_CPF').AsString) = '' then begin 
                 result := false;
                 cLog.Items.Add('Pedido ('+Pedido+') "CNPJ/CPF" do clientes não informado.');
              end;

              if result then begin
                 tCliente.SQL.Clear;
                 tCliente.SQL.Add('SELECT isnull(MAX(Codigo), 0)+1 AS Codigo FROM Clientes');
                 tCliente.Open;
              
                 Clientes.Append;
                          ClientesCodigo.Value := tCliente.FieldByName('Codigo').AsInteger;
                          ClientesNome.Value   := tTmp.FieldByName('Cliente_Nome').Value;
                          ClientesCNPJ.Value   := tTmp.FieldByName('Cliente_CNPJ').asstring;
                          ClientesCPF.Value    := tTmp.FieldByName('Cliente_CPF').AsString;
                          ClientesRG.Value     := tTmp.FieldByName('Cliente_RG').AsString;
                          ClientesCEP.Value    := tTmp.FieldByName('Cliente_CEP').Value;
                          ClientesRua.Value    := tTmp.FieldByName('Cliente_Rua').Value;
                          ClientesBairro.Value := tTmp.FieldByName('Cliente_Bairro').asstring;

                          if tTmp.FieldByName('Cliente_Municipio').AsInteger > 0 then begin
                             ClientesMunicipio_Codigo.Value := tTmp.FieldByName('Cliente_Municipio').Value;
                          end else begin
                             Municipios.SQL.Clear;
                             Municipios.SQL.Add('SELECT * FROM Municipios WHERE UF = :pUF AND Nome = :pNome');
                             Municipios.ParamByName('pUF').AsString   := tTmp.FieldByName('Cliente_Estado').AsString;
                             Municipios.ParamByName('pNome').AsString := tTmp.FieldByName('Cliente_MunicipioNome').AsString;
                             Municipios.Open;
                             ClientesMunicipio_Codigo.Value := MunicipiosCodigo.Value;
                          end;

                          ClientesMunicipio.Value          := tTmp.FieldByName('Cliente_MunicipioNome').AsString;
                          ClientesRua_Numero.Value         := tTmp.FieldByName('Cliente_RuaNumero').Value;
                          ClientesComplemento.Value        := tTmp.FieldByName('Cliente_Complemento').AsString;
                          ClientesEstado.Value             := tTmp.FieldByName('Cliente_Estado').Value;
                          ClientesInscricao_Estadual.Value := tTmp.FieldByName('Cliente_IE').AsString;
                          ClientesTelefone1.Value          := tTmp.FieldByName('Cliente_Telefone').Value;
                          if trim(tTmp.FieldByName('Cliente_Email').asstring) <> '' then begin
                             ClientesEmail.Value := tTmp.FieldByName('Cliente_Email').Value;
                          end;
                          ClientesContato.Value       := tTmp.FieldByName('Cliente_Contato').AsString;
                          ClientesRepresentante.Value := tTmp.FieldByName('Representante').AsInteger;
                          ClientesPais.Value          := '1058';
                          ClientesAtivo.Value         := true;
                          ClientesDesoneracao.Value   := 9;

                          if Clientes.State = dsInsert then begin
                             ClientesSimples_Nacional.Value := tTmp.FieldByName('Cliente_Simples').Value;
                             ClientesZona_Franca.Value      := tTmp.FieldByName('Cliente_ZonaFranca').Value;
                             ClientesIndicador_IE.Value     := tTmp.FieldByName('Indicador_IE').AsString;
                             ClientesRamo_Atividade.Value   := tTmp.FieldByName('Cliente_Ramo').AsInteger;
                             ClientesRG.Value               := tTmp.FieldByName('Cliente_RG').AsString;
                             ClientesConsumidor_Final.Value := tTmp.FieldByName('Cliente_ConsumidorFinal').Value;

                             If Trim(tTmp.FieldByName('Cliente_IE').AsString) = '' then
                                ClientesIsento.Value := true
                             else
                                ClientesIsento.Value := false;

                             if Trim(tTmp.FieldByName('Cliente_CPF').Value) <> '' then begin
                                ClientesIndicador_IE.Value := '9';
                             end;
                             if (Trim(tTmp.FieldByName('Cliente_CNPJ').Value) <> '') and (Trim(tTmp.FieldByName('Cliente_IE').Value) <> '') then begin
                                ClientesIndicador_IE.Value := '1';
                             end;
                             if (Trim(tTmp.FieldByName('Cliente_CNPJ').Value) <> '') and (Trim(tTmp.FieldByName('Cliente_IE').Value) = '') then begin
                                ClientesIndicador_IE.Value := '9';
                             end;
                          end;
                 Clientes.Post;
              end;
           end;
           if result then begin
              with tTemp do begin
                   with Clientes do begin
                        sql.Clear;
                        if trim(tTmp.FieldByName('Cliente_CNPJ').asstring) <> '' then begin
                           sql.Add('select * from Clientes where CNPJ = '+quotedstr(trim(tTmp.FieldByName('Cliente_CNPJ').asstring)));
                        end else begin
                           sql.Add('select * from Clientes where CPF = '+quotedstr(trim(tTmp.FieldByName('Cliente_CPF').asstring)));
                        end;
                        open;
                   end;
                   sql.Clear;
                   sql.Add('update PedidosRepresentantes set Cliente_RG              = '+quotedstr(Clientes.FieldByName('RG').AsString));
                   sql.Add('                                ,Cliente                 = '+Clientes.FieldByName('Codigo').AsString);
                   sql.Add('                                ,Cliente_Rua             = '+quotedstr(Clientes.FieldByName('Rua').AsString));
                   sql.Add('                                ,Cliente_Bairro          = '+quotedstr(Clientes.FieldByName('Bairro').AsString));
                   sql.Add('                                ,Cliente_CEP             = '+quotedstr(Clientes.FieldByName('CEP').AsString));
                   sql.Add('                                ,Cliente_Municipio       = '+Clientes.FieldByName('Municipio_Codigo').AsString);
                   sql.Add('                                ,Cliente_MunicipioNome   = '+quotedstr(Clientes.FieldByName('Municipio').AsString));
                   sql.Add('                                ,Cliente_RuaNumero       = '+quotedstr(Clientes.FieldByName('Rua_Numero').AsString));
                   sql.Add('                                ,Cliente_Complemento     = '+quotedstr(Clientes.FieldByName('Complemento').AsString));
                   sql.Add('                                ,Cliente_Estado          = '+quotedstr(Clientes.FieldByName('Estado').AsString));
                   sql.Add('                                ,Cliente_IE              = '+quotedstr(Clientes.FieldByName('Inscricao_Estadual').AsString));
                   sql.Add('                                ,Cliente_Telefone        = '+quotedstr(Clientes.FieldByName('Telefone1').AsString));
                   sql.Add('                                ,Cliente_Email           = '+quotedstr(Clientes.FieldByName('Email').AsString));
                   sql.Add('                                ,Cliente_Contato         = '+quotedstr(Clientes.FieldByName('Contato').AsString));
                   sql.Add('                                ,Cliente_Ramo            = '+quotedstr(Clientes.FieldByName('Ramo_Atividade').AsString));
                   sql.Add('                                ,Cliente_Simples         = '+iif(Clientes.FieldByName('Simples_Nacional').Asboolean, '1', '0'));
                   sql.Add('                                ,Cliente_ZonaFranca      = '+iif(Clientes.FieldByName('Zona_Franca').Asboolean, '1', '0'));
                   sql.Add('                                ,Cliente_ConsumidorFinal = '+iif(Clientes.FieldByName('Consumidor_Final').Asboolean, '1', '0'));
                   sql.Add('where Pedido = '+quotedstr(Pedido));
                   //parambyname('pPed').AsString := Pedido;
                   //sql.SaveToFile('c:\temp\Cliente_Representa.sql');
                   execute;
              end;
           end;
      end;     
end;

procedure TFinanceiro_PedidosRepresentantes.bPlanilhaClick(Sender: TObject);
begin
      Financeiro_PedidosRepresentantesExcel := TFinanceiro_PedidosRepresentantesExcel.Create(Self);
      Financeiro_PedidosRepresentantesExcel.Caption := Caption;
      Financeiro_PedidosRepresentantesExcel.ShowModal;

      screen.Cursor := crSQLWait;
      PedidosRep.DisableControls;
      Dados.PedidosRepresentantesItens.DisableControls;
      Grade.Enabled := False;
      PedidosRep.close;
      Dados.PedidosRepresentantesItens.close;
      PedidosRep.open;
      Dados.PedidosRepresentantesItens.Open;
      PedidosRep.Refresh;
      TabSheet1.Caption := '&Pedidos ['+PoeZero(4, PedidosRep.RecordCount)+']';
      Grade.Enabled := True;
      PedidosRep.EnableControls;
      Dados.PedidosRepresentantesItens.EnableControls;
      screen.Cursor := crDefault;
end;

procedure TFinanceiro_PedidosRepresentantes.bPesquisaClick(Sender: TObject);
Var
    mPesquisa: String;
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Pedido/ Cliente', mPesquisa));
     if PedidosRep.Locate('Pedido', mPesquisa, [loPartialkey]) = false then begin
        if PedidosRep.Locate('Cliente_Nome', mPesquisa, [loPartialKey]) = false then begin
           MessageDlg('Nenhum pedido encontrado com o Número ou Cliente informados!', mtInformation, [mbOk], 0);
        end;
     end;
end;

procedure TFinanceiro_PedidosRepresentantes.bImprimirPedClick(Sender: TObject);
var
   mSel:boolean;
begin
      // Imprime apenas pedidos selecionados.
      mSel := Grade.SelectedRows.Count > 0;
      if not mSel then begin
         messagedlg('Nenhum pedido selecionado para impressão!', mtinformation, [mbok], 0);
         abort;
      end;
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
           sql.Add('where Pedido in ('+PegaSel(Grade)+')');
           sql.Add('and isnull(Local, 0) = 0');
           sql.add('Order By Numero');
           //sql.SaveToFile('c:\temp\Impressao_Pedidos.sql');
           open;
           if FileExists(Dados.Empresas.FieldByName('Logo').asstring) then begin
              iLogo2.Picture.LoadFromFile(Dados.Empresas.FieldByName('Logo').asstring);
           end;
      end;

      bImprimirPed.Enabled := not bImprimirPed.Enabled;

      if not DirectoryExists('c:\faturamento') then begin
         CreateDir('c:\Faturamento');
      end;
      
      with rPedido do begin
//           if not cExcel.Checked then begin
              AllowPrintToArchive := false;
              AllowPrintToFile    := false;
              DeviceType          := 'Screen';
              Print;
              Reset;
              FreeOnRelease;
//           end else begin   
//              OpenFile                  := true;
//              AllowPrintToArchive       := true;
//              AllowPrintToFile          := true;
//              DeviceType                := 'XlsxReport';
//              XLSSettings.AppName       := 'Cybersoft - ERP Importa';
//              XLSSettings.Author        := 'Cybersoft';
//              XLSSettings.Title         := 'Pedido de Venda ';
//              XLSSettings.WorksheetName := 'Pedido de Venda ';
//              ArchiveFileName           := 'c:\faturamento\Pedido_Venda.xlsx';
//              TextFileName              := 'c:\faturamento\Pedido_Venda.xlsx';
//              ShowPrintDialog           := false;
//              Print;
//              Reset;
//              FreeOnRelease;
//           end;
      end;

      bImprimirPed.Enabled := not bImprimirPed.Enabled;
end;

procedure TFinanceiro_PedidosRepresentantes.bImprimirRomClick(Sender: TObject);
begin
      // Imprime apenas pedidos selecionados.
      mSel := Grade.SelectedRows.Count > 0;
      if not mSel then begin
         messagedlg('Nenhum pedido selecionado para impressão!', mtinformation, [mbok], 0);
         abort;
      end;
      // Imprime apenas pedidos selecionados.
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
           sql.Add('where Pedido in ('+PegaSel(Grade)+')');
           sql.Add('and isnull(Local, 0) = 0');
           sql.add('Order By Numero');
           //sql.SaveToFile('c:\temp\Impressao_Romaneio.sql');
           open;
           if FileExists(Dados.Empresas.FieldByName('Logo').asstring) then begin
              iLogo.Picture.LoadFromFile(Dados.Empresas.FieldByName('Logo').asstring);
           end;
      end;
      bImprimirRom.Enabled := not bImprimirRom.Enabled;
      if not DirectoryExists('c:\faturamento') then begin
         CreateDir('c:\Faturamento');
      end;
      with rRomaneio do begin
//           if not cExcel.Checked then begin
              AllowPrintToArchive := false;
              AllowPrintToFile    := false;
              DeviceType          := 'Screen';
              Print;
              Reset;
              FreeOnRelease;
//           end else begin
//              OpenFile                  := true;
//              AllowPrintToArchive       := true;
//              AllowPrintToFile          := true;
//              DeviceType                := 'XlsxReport';
//              XLSSettings.AppName       := 'Cybersoft - ERP Importa';
//              XLSSettings.Author        := 'Cybersoft';
//              XLSSettings.Title         := 'Romaneio';
//              XLSSettings.WorksheetName := 'Romaneio';
//              ArchiveFileName           := 'c:\faturamento\Romaneio_Pedido_Venda.xlsx';
//              TextFileName              := 'c:\faturamento\Romaneio_Pedido_Venda.xlsx';
//              ShowPrintDialog           := false;
//              Print;
//              Reset;
//              FreeOnRelease;
//           end;
      end;
      bImprimirRom.Enabled := not bImprimirRom.Enabled;
end;

procedure TFinanceiro_PedidosRepresentantes.FiltraPed(Ordem:string);
begin
     screen.Cursor := crSQLWait;
     if (mDirecao = '') or (mDirecao = 'desc') then 
        mDirecao := 'asc'
     else 
        mDirecao := 'desc';

     with PedidosRep do begin
          DisableControls;
          sql.Clear;
          sql.add('select *');
          sql.add('      ,Representante_Nome = case when isnull(Representante, '''') <> '''' then');
          sql.add('                                      (select Nome from Fornecedores where Representante_Codigo = Representante)');
          sql.add('                                 when isnull(Atendente, '''') <> '''' then');
          sql.add('                                      (select Nome from Cybersoft_Cadastros.dbo.Usuarios where Matricula = Atendente)');
          sql.add('                            else' );
          sql.add('                                ''VENDA VIA ''+Origem_Pedido');
          sql.add('                            end');
          sql.add('      ,Transportador_Nome = (select Nome from Fornecedores where Codigo = Transportador)');
          sql.add('      ,Minimo  = ( (select count(*) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido and pri.Data = pr.Data_Planilha and pri.Disponivel <= (select Estoque_Minimo from Produtos pd where pd.Codigo = pri.Codigo_Mercadoria)) )');
          sql.add('      ,Estoque = iif((select count(*) from PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido and pri.Saldo < 0) <> 0, cast(0 as bit), cast(1 as bit))');
          sql.add('      ,Condicao_Pgto = (select Descricao from Cybersoft_Cadastros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)');
          sql.add('from  PedidosRepresentantes pr');
          sql.add('where isnull(Local, 0) = 0');
          if Dados.ConfiguracaoAutorizacao_Pedidos.asboolean then begin
             sql.add('and   isnull(Autorizado, 0) = 1');
          end;
          if cOcultarCancelados.Checked then begin
             sql.Add('and isnull(Cancelado, 0) = 0');
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
          if ordem = 'Pedido' then begin
             sql.Add('order by substring(Pedido, 1,1) '+mDirecao+', cast(ltrim(rtrim(substring(Pedido, 2, 10))) as int) desc');
          end else begin
             if ordem = 'Modal_Nome' then begin
                sql.Add('order by Modalidade_Pagamento '+mDirecao);
             end else begin
                sql.Add('order by '+ordem+' '+mDirecao);
             end;
          end;
          //sql.SavetoFile('c:\temp\Liberacao_Pedidos.sql');
          Open;
          EnableControls;
     end;
     screen.Cursor := crDefault;
end;

function TFinanceiro_PedidosRepresentantes.VerificaEstoque: boolean;
begin
     with Dados.PedidosRepresentantesItens do begin
          first;
          result := true;
          while not eof do begin
                if FieldByName('Saldo').asfloat < 0 then begin
                   result := false; 
                end;
                next;
          end;
     end;
end;

procedure TFinanceiro_PedidosRepresentantes.Voltar1Click(Sender: TObject);
begin
     if MessageDlg('Deseja realmente voltar todos os pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     end;
     with tTmp do begin
          SQL.Clear;
          SQL.Add('update PedidosRepresentantes set Autorizado = 0 ');
          SQL.Add('                                ,Sel        = 0 ');
          SQL.Add('where isnull(Local, 0) = 0');
          sql.add('and Pedido in('+PegaSel(Grade)+')');
          Execute;
     end;
     PedidosRep.Refresh;
     Dados.PedidosRepresentantesItens.Refresh;
end;

function TFinanceiro_PedidosRepresentantes.VerificaDesativado: boolean;
begin
     with tTmp do begin
          sql.clear;
          sql.add('select Count(*) as qtde');
          sql.add('from   PedidosRepresentantesItens');
          sql.add('where Pedido = :pPed');
          sql.add('and   (select Desativado from produtos where Codigo = Codigo_Mercadoria) = 1');
          parambyname('pPed').asString := PedidosRep.Fieldbyname('Pedido').asstring;
          //sql.SaveToFile('c:\temp\selecao.sql');
          open;
          result := fieldbyname('qtde').asinteger = 0;
     end;
end;

function TFinanceiro_PedidosRepresentantes.PegaSel(pGrade: TDBGrid): string;
var
    mPedidos: widestring;
    i: integer;
begin
     with pGrade do begin
          DataSource.DataSet.DisableControls;
          mPedidos := '';
          for i := 0 to pred(SelectedRows.Count) do begin
              DataSource.DataSet.GotoBookMark(SelectedRows.Items[i]);
              mPedidos := mPedidos + quotedstr(DataSource.DataSet.fieldbyname('Pedido').asstring) + ',';
          end;
          mPedidos := copy(mPedidos, 1, length(mPedidos)-1);
          DataSource.DataSet.EnableControls;
     end;
     PegaSel := mPedidos;
end;

procedure TFinanceiro_PedidosRepresentantes.ppHeaderBand1AfterPrint(Sender: TObject);
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
      with tRItens do begin
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

procedure TFinanceiro_PedidosRepresentantes.ppHeaderBand1BeforePrint(Sender: TObject);
begin
     with tPedidos do begin
          pCliCNPJ.DisplayFormat := '##.###.###/####-##;0';
          if fieldbyname('Pessoa').asstring = 'F' then pCliCNPJ.DisplayFormat := '###.###.###-##;0';
     end;
end;

procedure TFinanceiro_PedidosRepresentantes.ppHeaderBand2AfterPrint(Sender: TObject);
begin
      with tRItens do begin
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

procedure TFinanceiro_PedidosRepresentantes.ppHeaderBand2BeforePrint(Sender: TObject);
begin
     with tPedidos do begin
          pCliCNPJ.DisplayFormat := '##.###.###/####-##;0';
          if fieldbyname('Pessoa').asstring = 'F' then pCliCNPJ.DisplayFormat := '###.###.###-##;0';
     end;
end;

function TFinanceiro_PedidosRepresentantes.ApuraEstoque(Codigo: integer): real;
begin
      // Calculando o estoque disponível.
      with Dados do begin
           with tEstoque do begin
                sql.Clear;
                sql.Add('select cast(');
                sql.Add('             isnull((select sum(Quantidade) from NotasItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 0 and Movimenta_Estoque = 1 and Cancelada <> 1 and isnull(NotasItens.Nfe_Denegada, 0) = 0), 0) +');
                sql.Add('             isnull((select sum(Quantidade) from NotasTerceirosItens where Codigo_Mercadoria = :pCodigo and Movimenta_Estoque = 1), 0) +');
                sql.Add('             isnull((select sum(Quantidade_Entrada) from ProdutosTransferencia where Produto_Entrada   = :pCodigo), 0) -');
                sql.Add('             isnull((select sum(Quantidade) from NotasItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 1 and Movimenta_Estoque = 1 and Cancelada <> 1 and isnull(NotasItens.Nfe_Denegada, 0) = 0), 0) -');
                sql.Add('             isnull((select sum(Quantidade) from PedidosItens where Codigo_Mercadoria = :pCodigo and Saida_Entrada = 1 and Movimenta_Estoque = 1), 0) -');
                sql.Add('             isnull((select sum(Quantidade) from ProdutosTransferencia where Produto_Saida     = :pCodigo), 0) -');
                sql.Add('             isnull((select sum(Quantidade) from PedidosRepresentantesItens PRI where Codigo_Mercadoria = :pCodigo and isnull(Faturamento, 0) = 0 ');
                sql.Add('                                                                                and isnull(Faturado, 0) = 0 and (select Cancelado from PedidosRepresentantes PR where PR.Pedido = PRI.Pedido) = 0');
                sql.Add('                                                                                and (select Local from PedidosRepresentantes PR where PR.Pedido = PRI.Pedido) < 5), 0)');
                sql.Add('       as decimal(14,3)) as Disponivel');
                parambyname('pCodigo').AsInteger := Codigo;
                //sql.SaveToFile('c:\temp\Pedidos_Representantes_Liberacao.sql');
                open;
                ApuraEstoque := FieldByName('Disponivel').Value;
                tEstoque.Close;
           end;
      end;
end;



end.
