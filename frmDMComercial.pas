
unit frmDMComercial;

interface

uses
  System.SysUtils, System.Classes, DB, MemDS, DBAccess, MSAccess;

type
  TdmComercial = class(TDataModule)
    TabelaComissoes: TMSQuery;
    dsTabelaComissoes: TDataSource;
    TabelaComissoesDescricao: TStringField;
    TabelaComissoesComissao: TFloatField;
    TabelaComissoesDesconto: TFloatField;
    TabelaComissoesCodigo: TSmallintField;
    EComm: TMSQuery;
    dsEComm: TDataSource;
    ECommRegistro: TIntegerField;
    ECommAtivo: TBooleanField;
    ECommTempo_Verificacao: TSmallintField;
    ECommURL: TStringField;
    ECommConsumer_Key: TStringField;
    ECommconsumer_Secret: TStringField;
    PedidoCompra: TMSQuery;
    dsPedidoCompra: TDataSource;
    PedidoCompraItens: TMSQuery;
    dsPedidoCompraItens: TDataSource;
    PedidoCompraParcelas: TMSQuery;
    dsPedidoCompraParcelas: TDataSource;
    PedidoCompraRegistro: TIntegerField;
    PedidoCompraPedido: TIntegerField;
    PedidoCompraData_Pedido: TDateTimeField;
    PedidoCompraEmpresa: TSmallintField;
    PedidoCompraFornecedor: TSmallintField;
    PedidoCompraUsuario: TStringField;
    PedidoCompraSolicitante: TStringField;
    PedidoCompraComprador: TStringField;
    PedidoCompraGerente: TStringField;
    PedidoCompraDiretor: TStringField;
    PedidoCompraDescricao: TStringField;
    PedidoCompraParcelas2: TSmallintField;
    PedidoCompraItens2: TSmallintField;
    PedidoCompraTotal_Produtos: TCurrencyField;
    PedidoCompraTotal_IPI: TCurrencyField;
    PedidoCompraTotal_ICMS: TCurrencyField;
    PedidoCompraTotal_Geral: TCurrencyField;
    PedidoCompraObs_Pedido: TMemoField;
    PedidoCompraObs_Entrega: TMemoField;
    PedidoCompraItensRegistro: TIntegerField;
    PedidoCompraItensPedido: TIntegerField;
    PedidoCompraItensCodigo: TSmallintField;
    PedidoCompraItensDescricao: TStringField;
    PedidoCompraItensData_Entrega: TDateTimeField;
    PedidoCompraItensQuantidade: TFloatField;
    PedidoCompraItensUnidade: TStringField;
    PedidoCompraItensValor_Unitario: TCurrencyField;
    PedidoCompraItensAliquota_IPI: TFloatField;
    PedidoCompraItensAliquota_ICMS: TFloatField;
    PedidoCompraParcelasRegistro: TIntegerField;
    PedidoCompraParcelasPedido: TIntegerField;
    PedidoCompraParcelasParcela: TSmallintField;
    PedidoCompraParcelasData_Vencimento: TDateTimeField;
    PedidoCompraParcelasPercentual_Pgto: TFloatField;
    PedidoCompraParcelasValor_Parcela: TCurrencyField;
    PedidoCompraItensItem: TSmallintField;
    PedidoCompraSolicitante_Nome: TStringField;
    PedidoCompraFornecedor_Nome: TStringField;
    PedidoCompraFechado: TBooleanField;
    PedidoCompraCondicao_Pgto: TSmallintField;
    PedidoCompraCancelado: TBooleanField;
    PedidoCompraItensValor_Total: TCurrencyField;
    PedidoCompraEmail: TStringField;
    PedidoCompraReferencia_Cliente: TStringField;
    ECommToken: TMemoField;
    TabelaComissoesPercentual_Venda: TFloatField;
    TabelaComissoesDesativada: TBooleanField;
    TabelaComissoesTabela_Padrao: TBooleanField;
    procedure PedidoCompraItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmComercial: TdmComercial;

implementation

{$R *.dfm}

procedure TdmComercial.PedidoCompraItensCalcFields(DataSet: TDataSet);
begin
     DataSet.FieldByName('Valor_Total').Value :=      DataSet.FieldByName('Quantidade').asfloat * DataSet.FieldByName('Valor_Unitario').ascurrency;
end;

end.
