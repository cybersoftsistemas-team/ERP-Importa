unit frmFinanceiro_PedidosSite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl, DBCtrls,
  Vcl.StdCtrls, DB, DBAccess, MSAccess, Vcl.ComCtrls, Funcoes, ppParameter, ppBands, ppVar, ppCtrls, ppMemo, ppReport, ppSubRpt, ppDBPipe, MemDS, Mask, RxCurrEdit, ppDB, ppDesignLayer, ppStrtch,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, RxToolEdit, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON;

type
  TFinanceiro_PedidosSite = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
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
    bLiberarTodos: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grade: TRxDBGrid;
    tItens: TMSQuery;
    bCancelar: TButton;
    cOcultarCancelados: TCheckBox;
    bCancelarTodos: TButton;
    bRevalidarTodos: TButton;
    tCliente: TMSQuery;
    GradeItens: TRxDBGrid;
    PedidosRepPedido: TStringField;
    PedidosRepData: TDateTimeField;
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
    bPesquisa: TButton;
    PedidosRepOrigem_Pedido: TStringField;
    PedidosRepAtendente: TStringField;
    PedidosRepAtendente_Comissao: TFloatField;
    PedidosRepObservacao: TMemoField;
    PedidosRepSituacao_Televendas: TStringField;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    Image1: TImage;
    bImprimir: TButton;
    tPedidos: TMSQuery;
    dstPedidos: TDataSource;
    rPedido: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    lRotulo: TppLabel;
    ppDBText4: TppDBText;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppShape4: TppShape;
    ppDBText6: TppDBText;
    ppLabel3: TppLabel;
    ppShape5: TppShape;
    ppDBText7: TppDBText;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppDBText8: TppDBText;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppShape8: TppShape;
    ppDBText10: TppDBText;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppDBText11: TppDBText;
    ppLabel9: TppLabel;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppShape11: TppShape;
    ppDBText13: TppDBText;
    ppLabel11: TppLabel;
    ppShape12: TppShape;
    ppDBText14: TppDBText;
    ppLabel12: TppLabel;
    ppShape13: TppShape;
    ppDBText15: TppDBText;
    ppLabel13: TppLabel;
    ppDBText26: TppDBText;
    ppShape30: TppShape;
    ppLabel31: TppLabel;
    iLogo: TppImage;
    pPedidos: TppDBPipeline;
    ppDBText3: TppDBText;
    pItens: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape15: TppShape;
    ppShape14: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape17: TppShape;
    ppLabel17: TppLabel;
    ppShape19: TppShape;
    ppLabel19: TppLabel;
    ppShape16: TppShape;
    ppLabel16: TppLabel;
    ppShape20: TppShape;
    ppLabel20: TppLabel;
    ppShape21: TppShape;
    ppLabel21: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText30: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppShape18: TppShape;
    ppLabel2: TppLabel;
    ppShape22: TppShape;
    ppLabel18: TppLabel;
    ppShape23: TppShape;
    ppLabel22: TppLabel;
    tRItens: TMSQuery;
    dstrItens: TDataSource;
    prItens: TppDBPipeline;
    ppDBText12: TppDBText;
    ppDBText18: TppDBText;
    ppDBText22: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppShape3: TppShape;
    pEmpresas: TppDBPipeline;
    PedidosRepFaturamento: TBooleanField;
    PedidosRepValor_FreteEmpresa: TCurrencyField;
    PedidosRepValor_FreteCliente: TCurrencyField;
    PedidosRepComissao_Gerencia: TFloatField;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBText25: TppDBText;
    ppLine6: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppShape24: TppShape;
    ppDBText27: TppDBText;
    ppLabel26: TppLabel;
    ppShape25: TppShape;
    ppLabel27: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel28: TppLabel;
    ppDBText28: TppDBText;
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
    PedidosRepVendedor: TStringField;
    DBMemo1: TDBMemo;
    StaticText6: TStaticText;
    PedidosRepIndicador_IE: TSmallintField;
    ppLine2: TppLine;
    ppDBText29: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppShape26: TppShape;
    Button1: TButton;
    bSite: TButton;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    RESTClient1: TRESTClient;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PedidosRepAfterScroll(DataSet: TDataSet);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bLiberarClick(Sender: TObject);
    procedure bLiberarTodosClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure cOcultarCanceladosClick(Sender: TObject);
    procedure bCancelarTodosClick(Sender: TObject);
    procedure bRevalidarTodosClick(Sender: TObject);
    procedure SalvaCliente(Existe: Boolean);
    procedure GradeItensDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bPlanilhaClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bSiteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mScroll: Boolean;
  end;

var
  Financeiro_PedidosSite: TFinanceiro_PedidosSite;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_PedidosSite.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_PedidosSite.bSiteClick(Sender: TObject);
begin
     Financeiro_PedidosSite := TFinanceiro_PedidosSite.Create(self);
     Financeiro_PedidosSite.Caption := Caption;
     Financeiro_PedidosSite.ShowModal;
end;

procedure TFinanceiro_PedidosSite.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados, nil, nil, nil);
      Financeiro_PedidosRepresentantes.Release;
      Financeiro_PedidosRepresentantes := nil;
end;

procedure TFinanceiro_PedidosSite.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_PedidosSite.FormShow(Sender: TObject);
begin
      mScroll:= true;
      With Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
           bPlanilha.Enabled := EmpresasModulo_ECommerce.AsBoolean;
           bSite.Enabled     := EmpresasModulo_ECommerce.AsBoolean;

           PedidosRep.SQL.Clear;
           PedidosRep.SQL.Add('SELECT *,');
           PedidosRep.SQL.Add('       Representante_Nome = CASE WHEN ISNULL(Representante, '''') <> '''' THEN');
           PedidosRep.SQL.Add('                                      (SELECT Nome FROM Fornecedores WHERE Codigo = Representante)');
           PedidosRep.SQL.Add('                                 WHEN ISNULL(Atendente, '''') <> '''' THEN');
           PedidosRep.SQL.Add('                                      (SELECT Nome FROM Cybersoft_Cadastros.dbo.Usuarios WHERE Matricula = Atendente)');
           PedidosRep.SQL.Add('                            ELSE' );
           PedidosRep.SQL.Add('                                ''VENDA VIA ''+Origem_Pedido');
           PedidosRep.SQL.Add('                            END');
           PedidosRep.SQL.Add('FROM   PedidosRepresentantes');
           PedidosRep.SQL.Add('WHERE  (ISNULL(Liberado, 0) = 0 AND ISNULL(Faturado, 0) = 0 AND Origem_Pedido <> ''TELEVENDAS'') OR (ISNULL(Liberado, 0) = 0 AND ISNULL(Faturado, 0) = 0 AND Situacao_Televendas = ''CONFIRMADO'' AND Origem_Pedido = ''TELEVENDAS'')');
           If cOcultarCancelados.Checked then begin
              PedidosRep.SQL.Add('AND    ISNULL(Cancelado, 0) <> 1');
           End;
           PedidosRep.SQL.Add('ORDER  BY Representante, Pedido');
           //PedidosRep.SQL.SavetoFile('c:\temp\Liberacao_Pedidos.sql');
           PedidosRep.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Codigo');
           Fornecedores.Open;

           bLiberar.Enabled        := (PedidosRep.RecordCount > 0) and not PedidosRep.FieldByName('Cancelado').AsBoolean;
           bLiberarTodos.Enabled   := (PedidosRep.RecordCount > 0);
           bCancelarTodos.Enabled  := (PedidosRep.RecordCount > 0) and not PedidosRep.FieldByName('Cancelado').AsBoolean;
           bRevalidarTodos.Enabled := (PedidosRep.RecordCount > 0) and PedidosRep.FieldByName('Cancelado').AsBoolean;
      End;
      PageControl1.ActivePageIndex := 0;
      TabSheet1.Caption := '&Pedidos ['+PoeZero(4, PedidosRep.RecordCount)+']';
      Menu_Principal.lECommerce.Visible := false;
end;

procedure TFinanceiro_PedidosSite.PedidosRepAfterScroll(DataSet: TDataSet);
begin
      If mScroll = true then begin
         With Dados do Begin
              GradeItens.DisableScroll;

              Clientes.SQL.Clear;
              If Trim(PedidosRep.FieldByName('Cliente_CNPJ').AsString) <> '' then begin
                 Clientes.SQL.Add('SELECT * FROM Clientes WHERE CNPJ = :pCNPJ');
                 Clientes.ParamByName('pCNPJ').AsString := PedidosRep.FieldByName('Cliente_CNPJ').AsString;
              end else begin
                 Clientes.SQL.Add('SELECT * FROM Clientes WHERE CPF = :pCPF');
                 Clientes.ParamByName('pCPF').AsString := PedidosRep.FieldByName('Cliente_CPF').AsString;
              End;
              Clientes.Open;

              PedidosRepresentantesItens.SQL.Clear;
              PedidosRepresentantesItens.SQL.Add('UPDATE PedidosRepresentantesItens SET Disponivel = ');
              PedidosRepresentantesItens.SQL.Add('       CAST((ISNULL((SELECT SUM(Quantidade) FROM NotasItens                     WHERE(Codigo_Mercadoria = PedidosRepresentantesItens.Codigo_Mercadoria) AND (Saida_Entrada = 0) AND (Movimenta_EstoqueRep = 1)');
              PedidosRepresentantesItens.SQL.Add('             AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) +');
              PedidosRepresentantesItens.SQL.Add('             ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens            WHERE(Codigo_Mercadoria = PedidosRepresentantesItens.Codigo_Mercadoria) AND (Movimenta_Estoque = 1)), 0) +');
              PedidosRepresentantesItens.SQL.Add('             ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia  WHERE(Produto_Entrada   = PedidosRepresentantesItens.Codigo_Mercadoria) ), 0) -');
              PedidosRepresentantesItens.SQL.Add('             ISNULL((SELECT SUM(Quantidade) FROM NotasItens                     WHERE(Codigo_Mercadoria = PedidosRepresentantesItens.Codigo_Mercadoria) AND (Saida_Entrada = 1) AND (Movimenta_EstoqueRep = 1)');
              PedidosRepresentantesItens.SQL.Add('                                                                                  AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
              PedidosRepresentantesItens.SQL.Add('             ISNULL((SELECT SUM(Quantidade) FROM PedidosItens                   WHERE(Codigo_Mercadoria = PedidosRepresentantesItens.Codigo_Mercadoria) AND (Saida_Entrada = 1) AND (Movimenta_EstoqueRep = 1) AND (Pedido <> 0) ), 0)) -');
              PedidosRepresentantesItens.SQL.Add('             ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia          WHERE(Produto_Saida     = PedidosRepresentantesItens.Codigo_Mercadoria) ), 0) -');
              PedidosRepresentantesItens.SQL.Add('             ISNULL((SELECT SUM(Quantidade) FROM PedidosRepresentantesItens PRI WHERE(Codigo_Mercadoria = PedidosRepresentantesItens.Codigo_Mercadoria) AND (ISNULL(Faturamento, 0) = 0) AND (PRI.Pedido <> :pPedido) ');
              PedidosRepresentantesItens.SQL.Add('                                                                                  AND (ISNULL(Faturado, 0) = 0) AND (SELECT Cancelado FROM PedidosRepresentantes PR WHERE PR.Pedido = PRI.Pedido) = 0 ), 0) ');
              PedidosRepresentantesItens.SQL.Add('       AS DECIMAL(14,3))');
              PedidosRepresentantesItens.SQL.Add('WHERE  Pedido = :pPedido');
              PedidosRepresentantesItens.ParamByName('pPedido').AsString := PedidosRep.FieldByName('Pedido').AsString;
              //PedidosRepresentantesItens.SQL.SaveToFile('c:\temp\Financeiro_Representantes_Itens.sql');
              PedidosRepresentantesItens.Execute;

              PedidosRepresentantesItens.SQL.Clear;
              PedidosRepresentantesItens.SQL.Add('UPDATE PedidosRepresentantesItens SET Saldo = (Disponivel - Quantidade)');
              PedidosRepresentantesItens.SQL.Add('WHERE  Pedido = :pPedido');
              PedidosRepresentantesItens.ParamByName('pPedido').AsString := PedidosRep.FieldByName('Pedido').AsString;
              PedidosRepresentantesItens.Execute;
              
              PedidosRepresentantesItens.SQL.Add('SELECT *,');
              PedidosRepresentantesItens.SQL.Add('       (SELECT Descricao FROM Produtos WHERE Codigo = Codigo_Mercadoria) AS Descricao_Mercadoria');
              PedidosRepresentantesItens.SQL.Add('FROM   PedidosRepresentantesItens PR');
              PedidosRepresentantesItens.SQL.Add('WHERE  Pedido = :pPedido');
              PedidosRepresentantesItens.ParamByName('pPedido').AsString := PedidosRep.FieldByName('Pedido').AsString;
              //PedidosRepresentantesItens.SQL.SaveToFile('c:\temp\Pedidos_Representantes_Itens.sql');
              PedidosRepresentantesItens.Open;

              tItens.SQL.Clear;
              tItens.SQL.Add('SELECT COUNT(*) AS Qtde FROM PedidosRepresentantesItens WHERE Pedido = :pPedido');
              tItens.ParamByName('pPedido').AsString := PedidosRep.FieldByName('Pedido').AsString;
              tItens.Open;

              TabSheet2.Caption     := '&Itens ['+tItens.FieldByName('Qtde').AsString+']';
              cSaldo.Value          := ClientesLimite_Credito.AsCurrency - ClientesLimite_Utilizado.AsCurrency;
              bLiberar.Enabled      := (PedidosRep.RecordCount > 0) and not PedidosRep.FieldByName('Cancelado').AsBoolean;
              bLiberarTodos.Enabled := (PedidosRep.RecordCount > 0);

              If not PedidosRep.FieldByName('Cancelado').AsBoolean then
                 bCancelar.Caption := '&Cancelar'
              else
                 bCancelar.Caption := '&Revalidar';

              GradeItens.EnableScroll;
         End;
      End;
end;

procedure TFinanceiro_PedidosSite.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
Var
   Icon: TBitmap;
begin
      If Odd(PedidosRep.RecNo) then
         Grade.Canvas.Brush.Color := $00FFECEC
      else
         Grade.Canvas.Brush.Color := clWindow;

      TDbGrid(Sender).Canvas.font.Color:= clBlack;
      If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
         Brush.Color := clNavy;
         FillRect(Rect);
         Font.Style := [fsbold];
         Font.Color := clYellow;
      End;
      TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

      Icon := TBitmap.Create;
      If (Column.FieldName = 'Cancelado') then begin
         With Grade.Canvas do begin
              Brush.Color := clWhite;
              FillRect(Rect);
              If (PedidosRep.FieldByName('Cancelado').AsBoolean = true) then Dados.ImageList1.GetBitmap(2, Icon);
              Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
         End;
      End;
end;

procedure TFinanceiro_PedidosSite.bLiberarClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmete liberar este pedido para faturamento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      With Dados do begin
           Clientes.SQL.Clear;
           If Trim(PedidosRep.FieldByName('Cliente_CNPJ').AsString) <> '' then begin
              Clientes.SQL.Add('SELECT * FROM Clientes WHERE CNPJ = :pCNPJ');
              Clientes.ParamByName('pCNPJ').AsString := PedidosRep.FieldByName('Cliente_CNPJ').AsString;
           end else begin
              Clientes.SQL.Add('SELECT * FROM Clientes WHERE CPF = :pCPF');
              Clientes.ParamByName('pCPF').AsString := PedidosRep.FieldByName('Cliente_CPF').AsString;
           End;
           Clientes.Open;

           // Não Encontrando o cliente cadastra novo.
           If Clientes.RecordCount = 0 then
              SalvaCliente(false)
           else
              SalvaCliente(true);

           PedidosRep.Edit;
                      PedidosRep.FieldByName('Cliente').Value := ClientesCodigo.Value;
           PedidosRep.Post;

           Configuracao.SQL.Clear;
           Configuracao.SQL.Add('SELECT * FROM Configuracao');
           Configuracao.Open;

           PedidosRepresentantes.SQL.Clear;
           PedidosRepresentantes.SQL.Add('UPDATE PedidosRepresentantes SET Liberado         = 1');
           PedidosRepresentantes.SQL.Add('                                ,Situacao         = ''LIBERADO'' ');
           PedidosRepresentantes.SQL.Add('                                ,Cancelado        = 0');
           PedidosRepresentantes.SQL.Add('                                ,Transportador    = :pTransp');
           PedidosRepresentantes.SQL.Add('                                ,Modalidade_Frete = :pModal');
           PedidosRepresentantes.SQL.Add('                                ,Tipo_Nota        = :pTipoNF');
           PedidosRepresentantes.SQL.Add('                                ,Natureza_Codigo  = :pNat');
           PedidosRepresentantes.SQL.Add('WHERE Pedido = :pPedido');
           PedidosRepresentantes.ParamByName('pPedido').AsString  := PedidosRep.FieldByName('Pedido').AsString;
           PedidosRepresentantes.ParamByName('pTransp').AsInteger := ConfiguracaoTelevendas_Transportador.Value;
           PedidosRepresentantes.ParamByName('pModal').AsInteger  := ConfiguracaoTelevendas_ModalidadeFrete.Value;
           PedidosRepresentantes.ParamByName('pTipoNF').AsInteger := ConfiguracaoTelevendas_TipoNota.Value;

           If PedidosRep.FieldByName('Cliente_Estado').Value = EmpresasEstado.Value then
              PedidosRepresentantes.ParamByName('pNat').AsString := ConfiguracaoTelevendas_NaturezaDentro.Value
           else
              PedidosRepresentantes.ParamByName('pNat').AsString := ConfiguracaoTelevendas_NaturezaFora.Value;
              
           PedidosRepresentantes.Execute;

           PedidosRepresentantes.Close;
           PedidosRepresentantes.SQL.Clear;
           PedidosRepresentantes.SQL.Add('SELECT * FROM PedidosRepresentantes');
           PedidosRep.Refresh;
           PedidosRepresentantesItens.Refresh;

           bLiberar.Enabled   := PedidosRep.RecordCount > 0;
           bCancelar.Enabled  := (PedidosRep.RecordCount > 0) and PedidosRep.FieldByName('Cancelado').AsBoolean = true;
      End;
      PedidosRep.Refresh;
      Dados.PedidosRepresentantesItens.Refresh;
end;

procedure TFinanceiro_PedidosSite.bLiberarTodosClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente liberar todos os pedidos para faturamento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      Screen.Cursor := crSQLWait;
      mScroll       := false;

      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max       := PedidosRep.RecordCount;
      Janela_Processamento.Progresso.Position  := 0;
      Janela_Processamento.lProcesso.Caption   := 'Liberando Pedidos e cadastrando clientes novos... Aguarde';
      Janela_Processamento.Show;

      With Dados do begin
           Clientes.DisableControls;
           PedidosRep.DisableControls;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.Open;

           PedidosRep.First;
           While (not PedidosRep.Eof) and (Funcoes.Cancelado = false) do begin
                 If PedidosRep.FieldByName('Cancelado').AsBoolean = false then begin
                    If PedidosRep.FieldByName('Cliente_CNPJ').AsString <> '' then begin
                       SalvaCliente(Clientes.Locate('CNPJ', PedidosRep.FieldByName('Cliente_CNPJ').AsString, [loCaseInsensitive]))
                    end else begin
                       SalvaCliente(Clientes.Locate('CPF', PedidosRep.FieldByName('Cliente_CPF').AsString, [loCaseInsensitive]))
                    End;

                    PedidosRep.Edit;
                               PedidosRep.FieldByName('Cliente').Value := ClientesCodigo.Value;
                    PedidosRep.Post;
                 End;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
                 
                 PedidosRep.Next;
           End;

           Janela_Processamento.Close;

           If Funcoes.Cancelado = false then begin
              PedidosRepresentantes.SQL.Clear;
              PedidosRepresentantes.SQL.Add('UPDATE PedidosRepresentantes SET Liberado  = 1,');
              PedidosRepresentantes.SQL.Add('                                 Situacao  = ''LIBERADO'', ');
              PedidosRepresentantes.SQL.Add('                                 Cancelado = 0 ');
              PedidosRepresentantes.SQL.Add('WHERE ISNULL(Cancelado, 0) = 0 ');
              PedidosRepresentantes.Execute;
              PedidosRepresentantes.Close;
              PedidosRepresentantes.SQL.Clear;
              PedidosRepresentantes.SQL.Add('SELECT * FROM PedidosRepresentantes');
              PedidosRep.Refresh;
              PedidosRepresentantesItens.Refresh;

              ShowMessage('Pedidos liberados com sucesso!');
           end else begin
              ShowMessage('Operação cancelada pelo usúario!');
           End;

           bLiberar.Enabled := PedidosRep.RecordCount > 0;
           Janela_Processamento.Close;

           Clientes.EnableControls;
           PedidosRep.EnableControls;
      End;
      
      PedidosRep.Refresh;
      Dados.PedidosRepresentantesItens.Refresh;

      Screen.Cursor := crDefault;
      mScroll       := true;
end;

procedure TFinanceiro_PedidosSite.bCancelarClick(Sender: TObject);
begin
     If PedidosRep.FieldByName('Cancelado').AsBoolean = false then begin
        If MessageDlg('Deseja realmente cancelar este pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
           Abort;
        End;
     end else begin
        If MessageDlg('Deseja realmente revalidar este pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
           Abort;
        End;
     End;

     With Dados do begin
          PedidosRepresentantes.SQL.Clear;
          PedidosRepresentantes.SQL.Add('UPDATE PedidosRepresentantes SET Cancelado = CASE WHEN Cancelado = 0 THEN 1 ELSE 0 END,');
          PedidosRepresentantes.SQL.Add('                                 Situacao  = CASE WHEN Cancelado = 0 THEN ''CANCELADO'' ELSE ''AGUARDANDO'' END');
          PedidosRepresentantes.SQL.Add('WHERE Pedido = :pPedido');
          PedidosRepresentantes.ParamByName('pPedido').AsString := PedidosRep.FieldByName('Pedido').AsString;
          PedidosRepresentantes.Execute;
          PedidosRepresentantes.SQL.Clear;
          PedidosRepresentantes.SQL.Add('SELECT * FROM PedidosRepresentantes');
          PedidosRepresentantes.Open;
          PedidosRep.Refresh;
          PedidosRepresentantesItens.Refresh;
     End;
end;

procedure TFinanceiro_PedidosSite.cOcultarCanceladosClick(Sender: TObject);
begin
     //FormShow(Self);
     Dados.PedidosRepresentantes.Refresh;
end;

procedure TFinanceiro_PedidosSite.bCancelarTodosClick(Sender: TObject);
begin
     If MessageDlg('Deseja realmente cancelar todos os pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     End;

     With Dados do begin
          PedidosRepresentantes.SQL.Clear;
          PedidosRepresentantes.SQL.Add('UPDATE PedidosRepresentantes SET Cancelado    = 1,');
          PedidosRepresentantes.SQL.Add('                                 Situacao     = ''CANCELADO'', ');
          PedidosRepresentantes.SQL.Add('                                 Gerar_Pedido = 0 ');
          PedidosRepresentantes.Execute;
          PedidosRepresentantes.SQL.Clear;
          PedidosRepresentantes.SQL.Add('SELECT * FROM PedidosRepresentantes');
          PedidosRepresentantes.Open;
          PedidosRep.Refresh;
          PedidosRepresentantesItens.Refresh;
          bCancelarTodos.Enabled  := false;
          bRevalidarTodos.Enabled := not bCancelarTodos.Enabled;
     End;
end;

procedure TFinanceiro_PedidosSite.bRevalidarTodosClick(Sender: TObject);
begin
     If MessageDlg('Deseja realmente revalidar todos os pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
        Abort;
     End;

     With Dados do begin
          PedidosRepresentantes.SQL.Clear;
          PedidosRepresentantes.SQL.Add('UPDATE PedidosRepresentantes SET Cancelado    = 0,');
          PedidosRepresentantes.SQL.Add('                                 Situacao     = ''AGUARDANDO'', ');
          PedidosRepresentantes.SQL.Add('                                 Gerar_Pedido = 0 ');
          PedidosRepresentantes.Execute;
          PedidosRepresentantes.SQL.Clear;
          PedidosRepresentantes.SQL.Add('SELECT * FROM PedidosRepresentantes');
          PedidosRepresentantes.Open;
          PedidosRep.Refresh;
          PedidosRepresentantesItens.Refresh;
          bRevalidarTodos.Enabled := false;
          bCancelarTodos.Enabled  := not bRevalidarTodos.Enabled;
     End;
end;

procedure TFinanceiro_PedidosSite.SalvaCliente(Existe: Boolean);
begin
      With Dados do begin
           If Existe then
              Clientes.Edit
           else begin
              tCliente.SQL.Clear;
              tCliente.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Clientes');
              tCliente.Open;
              
              Clientes.Append;
                      ClientesCodigo.Value := tCliente.FieldByName('Codigo').AsInteger + 1;
           End;
                      ClientesNome.Value   := PedidosRep.FieldByName('Cliente_Nome').Value;
                      ClientesCNPJ.Value   := PedidosRep.FieldByName('Cliente_CNPJ').Value;
                      ClientesCPF.Value    := PedidosRep.FieldByName('Cliente_CPF').AsString;
                      ClientesCEP.Value    := PedidosRep.FieldByName('Cliente_CEP').Value;
                      ClientesRua.Value    := PedidosRep.FieldByName('Cliente_Rua').Value;
                      ClientesBairro.Value := PedidosRep.FieldByName('Cliente_Bairro').Value;

                      If PedidosRep.FieldByName('Cliente_Municipio').AsInteger > 0 then begin
                         ClientesMunicipio_Codigo.Value := PedidosRep.FieldByName('Cliente_Municipio').Value;
                      end else begin
                         Municipios.SQL.Clear;
                         Municipios.SQL.Add('SELECT * FROM Municipios WHERE UF = :pUF AND Nome = :pNome');
                         Municipios.ParamByName('pUF').AsString   := PedidosRep.FieldByName('Cliente_Estado').AsString;
                         Municipios.ParamByName('pNome').AsString := PedidosRep.FieldByName('Cliente_MunicipioNome').AsString;
                         Municipios.Open;
                         ClientesMunicipio_Codigo.Value := MunicipiosCodigo.Value;
                      End;

                      //ClientesMunicipio_Codigo.Value   := PedidosRep.FieldByName('Cliente_Municipio').AsInteger;
                      ClientesMunicipio.Value          := PedidosRep.FieldByName('Cliente_MunicipioNome').AsString;
                      ClientesRua_Numero.Value         := PedidosRep.FieldByName('Cliente_RuaNumero').Value;
                      ClientesComplemento.Value        := PedidosRep.FieldByName('Cliente_Complemento').AsString;
                      ClientesEstado.Value             := PedidosRep.FieldByName('Cliente_Estado').Value;
                      ClientesInscricao_Estadual.Value := PedidosRep.FieldByName('Cliente_IE').AsString;
                      ClientesTelefone1.Value          := PedidosRep.FieldByName('Cliente_Telefone').Value;
                      ClientesEmail.Value              := PedidosRep.FieldByName('Cliente_Email').Value;
                      ClientesContato.Value            := PedidosRep.FieldByName('Cliente_Contato').AsString;
                      ClientesRepresentante.Value      := PedidosRep.FieldByName('Representante').AsInteger;
                      ClientesPais.Value               := '1058';
                      ClientesAtivo.Value              := true;
                      ClientesDesoneracao.Value        := 9;

                      if Clientes.State = dsInsert then begin
                         ClientesSimples_Nacional.Value := PedidosRep.FieldByName('Cliente_Simples').Value;
                         ClientesZona_Franca.Value      := PedidosRep.FieldByName('Cliente_ZonaFranca').Value;
                         ClientesIndicador_IE.Value     := PedidosRep.FieldByName('Indicador_IE').AsString;
                         ClientesRamo_Atividade.Value   := PedidosRep.FieldByName('Cliente_Ramo').AsInteger;
                         ClientesRG.Value               := PedidosRep.FieldByName('Cliente_RG').AsString;
                         ClientesConsumidor_Final.Value := PedidosRep.FieldByName('Cliente_ConsumidorFinal').Value;

                         If Trim(PedidosRep.FieldByName('Cliente_IE').AsString) = '' then
                            ClientesIsento.Value := true
                         else
                            ClientesIsento.Value := false;

                         if Trim(PedidosRep.FieldByName('Cliente_CPF').Value) <> '' then begin
                            ClientesIndicador_IE.Value := '9';
                         end;
                         if (Trim(PedidosRep.FieldByName('Cliente_CNPJ').Value) <> '') and (Trim(PedidosRep.FieldByName('Cliente_IE').Value) <> '') then begin
                            ClientesIndicador_IE.Value := '1';
                         end;
                         if (Trim(PedidosRep.FieldByName('Cliente_CNPJ').Value) <> '') and (Trim(PedidosRep.FieldByName('Cliente_IE').Value) = '') then begin
                            ClientesIndicador_IE.Value := '9';
                         end;
                      end;
             Clientes.Post;
      End;     
end;

procedure TFinanceiro_PedidosSite.GradeItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
      If Odd(Dados.PedidosRepresentantesItens.RecNo) then
         GradeItens.Canvas.Brush.Color := $00EBEBD6
      else
         GradeItens.Canvas.Brush.Color := clWindow;

      TDbGrid(Sender).Canvas.font.Color:= clBlack;
      If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
         Brush.Color := $00474723;
         FillRect(Rect);
         Font.Style := [fsbold];
         Font.Color := clWhite;
      End;
      TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TFinanceiro_PedidosSite.bPlanilhaClick(Sender: TObject);
begin
      Financeiro_PedidosRepresentantesExcel := TFinanceiro_PedidosRepresentantesExcel.Create(Self);
      Financeiro_PedidosRepresentantesExcel.Caption := Caption;
      Financeiro_PedidosRepresentantesExcel.ShowModal;
      PedidosRep.Refresh;
      Dados.PedidosRepresentantesItens.Refresh;
      TabSheet1.Caption := '&Pedidos ['+PoeZero(4, PedidosRep.RecordCount)+']';
end;

procedure TFinanceiro_PedidosSite.bPesquisaClick(Sender: TObject);
Var
    mPesquisa: String;
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Pedido/ Cliente', mPesquisa));
     If PedidosRep.Locate('Pedido', mPesquisa, [loCaseInsensitive]) = false then begin
        If PedidosRep.Locate('Cliente_Nome', mPesquisa, [loPartialKey]) = false then begin
           MessageDlg('Nenhum pedido encontrado com o Número ou Cliente informados!', mtInformation, [mbOk], 0);
        End;
     End;
end;

procedure TFinanceiro_PedidosSite.bImprimirClick(Sender: TObject);
begin
      With Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           tPedidos.SQL.Clear;
           tPedidos.SQL.Add('SELECT Representante_Nome = (SELECT Nome FROM Fornecedores WHERE Codigo = :pCodigo)');
           tPedidos.SQL.Add('      ,Condicao_Nome      = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ModalidadesPagamento WHERE Codigo = Modalidade_Pagamento)');
           tPedidos.SQL.Add('      ,*');
           tPedidos.SQL.Add('FROM PedidosRepresentantes WHERE Pedido = :pPedido');
           tPedidos.ParamByName('pPedido').AsString  := PedidosRep.FieldByName('Pedido').AsString;
           tPedidos.ParamByName('pCodigo').AsINteger := PedidosRep.FieldByName('Representante').AsInteger;
           tPedidos.Open;

           tRItens.SQL.Clear;
           tRItens.SQL.Add('SELECT  Item');
           tRItens.SQL.Add('       ,Codigo_Mercadoria');
           tRItens.SQL.Add('       ,Descricao      = (SELECT Descricao FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           tRItens.SQL.Add('       ,Quantidade');
           tRItens.SQL.Add('       ,Valor_Unitario');
           tRItens.SQL.Add('       ,Desconto');
           tRItens.SQL.Add('       ,Aliquota_IPI');
           tRItens.SQL.Add('       ,Valor_Desconto = Valor_Desconto / Quantidade');
           tRItens.SQL.Add('       ,Total_Desconto = Valor_Desconto');
           tRItens.SQL.Add('       ,Valor_Liquido  = ISNULL(Valor_Unitario, 0) - ISNULL(Valor_Desconto/Quantidade, 0)');
           tRItens.SQL.Add('       ,Valor_IPI      = (ISNULL(Valor_Unitario * Quantidade, 0) - ISNULL(Valor_Desconto, 0)) * (Aliquota_IPI / 100)');
           tRItens.SQL.Add('       ,Valor_Total    = (ISNULL(Valor_Unitario*Quantidade, 0) - ISNULL(Valor_Desconto, 0)) + (ISNULL(Valor_Unitario * Quantidade, 0) - ISNULL(Valor_Desconto, 0)) * (Aliquota_IPI / 100)');
           tRItens.SQL.Add('FROM   PedidosRepresentantesItens');
           tRItens.SQL.Add('WHERE  Pedido = :pPedido');
           tRItens.SQL.Add('ORDER  BY Item');
           tRItens.ParamByName('pPedido').AsString := PedidosRep.FieldByName('Pedido').AsString;
           //tRItens.SQL.SaveToFile('c:\temp\Pedidos_Representantes_Pedido.sql');
           tRItens.Open;
      End;

      If FileExists(Dados.EmpresasLogo.Value) then
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);

      rPedido.Print;
      rPedido.Reset;
end;

procedure TFinanceiro_PedidosSite.Button1Click(Sender: TObject);
begin
     PedidosRepresentantes_Financeiro := TPedidosRepresentantes_Financeiro.Create(Self);
     PedidosRepresentantes_Financeiro.Caption := 'Gerar Contas a Receber';
     PedidosRepresentantes_Financeiro.ShowModal;
end;

end.
