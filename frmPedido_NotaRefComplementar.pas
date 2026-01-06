unit frmPedido_NotaRefComplementar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RXDBCtrl, Mask, DBCtrls,
  DB, DBAccess, MSAccess, Funcoes, Vcl.ExtCtrls, RxCurrEdit, RxToolEdit, MemDS;

type
  TPedido_NotaRefComplementar = class(TForm)
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    bOK: TButton;
    bCancela: TButton;
    cDataReferencia: TDateEdit;
    cNotaReferencia: TCurrencyEdit;
    tReferencia: TMSQuery;
    Panel1: TPanel;
    Label1: TLabel;
    procedure bCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_NotaRefComplementar: TPedido_NotaRefComplementar;

implementation

uses frmDados;

{$R *.dfm}

procedure TPedido_NotaRefComplementar.bCancelaClick(Sender: TObject);
begin
       Dados.Pedidos.Cancel;
       Close;
end;

procedure TPedido_NotaRefComplementar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Pedido_NotaRefComplementar.Release;
      Pedido_NotaRefComplementar := nil;
end;

procedure TPedido_NotaRefComplementar.FormShow(Sender: TObject);
begin
       cNotaReferencia.SetFocus;
end;

procedure TPedido_NotaRefComplementar.bOKClick(Sender: TObject);
begin
      With Dados do begin
           If (cNotaReferencia.Text <> '') and (cDataReferencia.Text <> '') then begin
              tReferencia.SQL.Clear;
              tReferencia.SQL.Add('SELECT * FROM NotasFiscais WHERE (Numero = :pNumero) AND (Data_Emissao = :pData) AND (Cancelada <> 1)');
              tReferencia.ParamByName('pNumero').AsInteger := Round(cNotaReferencia.Value);
              tReferencia.ParamByName('pData').AsDateTime  := cDataReferencia.Date;
              tReferencia.Open;

              If tReferencia.RecordCount = 0 then begin
                 ShowMessage('Nenhuma Nota Fiscal encontrada com este número na data informada!')
              end else begin
                 // Pegando os dados da nota de referencia.
                 PedidosNota_Referencia.Value      := Round(cNotaReferencia.Value);
                 PedidosData_Referencia.Value      := cDataReferencia.Date;
                 PedidosProcesso.Value             := tReferencia.FieldByName('Processo').AsString;
                 PedidosDI.Value                   := tReferencia.FieldByName('DI').AsString;
                 PedidosData_DI.Value              := tReferencia.FieldByName('Data_DI').AsDateTime;
                 PedidosNatureza_Codigo.Value      := tReferencia.FieldByName('Natureza_Codigo').AsString;
                 PedidosCliente_Codigo.Value       := tReferencia.FieldByName('Cliente_Codigo').AsInteger;
                 PedidosFornecedor_Codigo.Value    := tReferencia.FieldByName('Fornecedor_Codigo').AsInteger;
                 PedidosTransportador_Codigo.Value := tReferencia.FieldByName('Transportador_Codigo').AsInteger;
                 PedidosSaida_Entrada.Value        := tReferencia.FieldByName('Saida_Entrada').AsInteger;
                 PedidosVolume_Quantidade.Value    := tReferencia.FieldByName('Volume_Quantidade').AsFloat;
                 PedidosVolume_Marca.Value         := tReferencia.FieldByName('Volume_Marca').AsString;
                 PedidosVolume_Especie.Value       := tReferencia.FieldByName('Volume_Especie').AsString;
                 PedidosVolume_Numero.Value        := tReferencia.FieldByName('Volume_Numero').AsString;
                 PedidosVolume_PesoLiquido.Value   := tReferencia.FieldByName('Volume_PesoLiquido').AsFloat;
                 PedidosVolume_PesoBruto.Value     := tReferencia.FieldByName('Volume_PesoBruto').AsFloat;
                 PedidosModalidade_Frete.Value     := tReferencia.FieldByName('Modalidade_Frete').AsInteger;
                 PedidosNFe_cNFRef.Value           := tReferencia.FieldByName('NFe_cNF').AsString;
                 PedidosIndicador_Presenca.Value   := tReferencia.FieldByName('Indicador_Presenca').AsInteger;
                 PedidosTipo_Pagamento.Value       := tReferencia.FieldByName('Tipo_Pagamento').AsInteger;
                 PedidosForma_Pagamento.Value      := tReferencia.FieldByName('Forma_Pagamento').AsInteger;
                 PedidosTipo_Processo.Value        := tReferencia.FieldByName('Tipo_Processo').asstring;

                 Close;
              End;
           End else begin
              ShowMessage('Número de Nota ou Data invalidos!');
           End;
      End;
end;


end.
