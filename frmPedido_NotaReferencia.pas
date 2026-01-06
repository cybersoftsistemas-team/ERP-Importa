unit frmPedido_NotaReferencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, RXDBCtrl, Mask, DBCtrls,
  mdTabEnter, DB, MemDS, DBAccess, MSAccess, RxCurrEdit, RxToolEdit;

type
  TPedido_NotaReferencia = class(TForm)
    XPHoverLabel1: TXPHoverLabel;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    Button1: TButton;
    Button2: TButton;
    cDataReferencia: TDateEdit;
    cNotaReferencia: TCurrencyEdit;
    TabEnter1: TTabEnter;
    tReferencia: TMSQuery;
    tReferenciaNumero: TIntegerField;
    tReferenciaEmpresa: TSmallintField;
    tReferenciaData_Emissao: TDateTimeField;
    tReferenciaDI: TStringField;
    tReferenciaData_DI: TDateTimeField;
    tReferenciaNatureza_Codigo: TStringField;
    tReferenciaCliente_Codigo: TIntegerField;
    tReferenciaFornecedor_Codigo: TIntegerField;
    tReferenciaProcesso: TStringField;
    tReferenciaTipo_Nota: TSmallintField;
    tReferenciaSaida_Entrada: TSmallintField;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_NotaReferencia: TPedido_NotaReferencia;

implementation

uses frmDados;

{$R *.dfm}

procedure TPedido_NotaReferencia.Button2Click(Sender: TObject);
begin
       Dados.Pedidos.Cancel;
       Close;
end;

procedure TPedido_NotaReferencia.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Release;
      Pedido_NotaReferencia := nil;
end;

procedure TPedido_NotaReferencia.FormShow(Sender: TObject);
begin
       cNotaReferencia.SetFocus;
end;

procedure TPedido_NotaReferencia.Button1Click(Sender: TObject);
begin
       If (cNotaReferencia.Text <> '') and (cDataReferencia.Text <> '') then begin
          tReferencia.Close;
          tReferencia.SQL.Clear;
          tReferencia.SQL.Add('SELECT * FROM NotasFiscais WHERE (Numero = :pNumero) AND (Data_Emissao = :pData) AND (Cancelada <> 1)');
          tReferencia.ParamByName('pNumero').AsInteger := Round(cNotaReferencia.Value);
          tReferencia.ParamByName('pData').AsDate      := cDataReferencia.Date;
          tReferencia.Open;
          If tReferencia.RecordCount = 0 then begin
             ShowMessage('Nenhuma Nota Fiscal encontrada com este número na data informada!')
          end else begin
             Dados.PedidosNota_Referencia.Value   := Round(cNotaReferencia.Value);
             Dados.PedidosData_Referencia.Value   := cDataReferencia.Date;
             Dados.PedidosProcesso.Value          := tReferenciaProcesso.Value;
             Dados.PedidosTipo_Nota.Value         := tReferenciaTipo_Nota.Value;
             Dados.PedidosDI.Value                := tReferenciaDI.Value;
             Dados.PedidosData_DI.Value           := tReferenciaData_DI.Value;
             Dados.PedidosNatureza_Codigo.Value   := tReferenciaNatureza_Codigo.Value;
             Dados.PedidosCliente_Codigo.Value    := tReferenciaCliente_Codigo.Value;
             Dados.PedidosFornecedor_Codigo.Value := tReferenciaFornecedor_Codigo.Value;
             Dados.PedidosSaida_Entrada.Value     := tReferenciaSaida_Entrada.Value;
             Close;
          End;
       End else begin
          ShowMessage('Número de Nota ou Data invalidos!');
       End;
end;


end.
