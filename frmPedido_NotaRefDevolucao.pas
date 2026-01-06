unit frmPedido_NotaRefDevolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, MemDS, DBAccess, MSAccess, mdTabEnter, Vcl.StdCtrls,
  Mask, FUNCOES, RxCurrEdit, RxToolEdit;

type
  TPedido_NotaRefDevolucao = class(TForm)
    XPHoverLabel1: TXPHoverLabel;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    bOK: TButton;
    bCancela: TButton;
    cDataReferencia: TDateEdit;
    cNotaReferencia: TCurrencyEdit;
    TabEnter1: TTabEnter;
    tReferencia: TMSQuery;
    tReferenciaNumero: TIntegerField;
    tReferenciaEmpresa: TSmallintField;
    tReferenciaProcesso: TStringField;
    tReferenciaTipo_Nota: TSmallintField;
    tReferenciaData_Emissao: TDateTimeField;
    tReferenciaDI: TStringField;
    tReferenciaData_DI: TDateTimeField;
    tReferenciaNatureza_Codigo: TStringField;
    tReferenciaCliente_Codigo: TIntegerField;
    tReferenciaFornecedor_Codigo: TIntegerField;
    tReferenciaSaida_Entrada: TSmallintField;
    procedure bCancelaClick(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_NotaRefDevolucao: TPedido_NotaRefDevolucao;

implementation

uses frmDados, frmDMFiscal, frmPedido_DevolucaoEntrada;

{$R *.dfm}

procedure TPedido_NotaRefDevolucao.bCancelaClick(Sender: TObject);
begin
       Dados.Pedidos.Cancel;
       Close;
end;

procedure TPedido_NotaRefDevolucao.bOKClick(Sender: TObject);
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
             Dados.Natureza.Locate('Codigo', tReferenciaNatureza_Codigo.Value, [loCaseInsensitive] );
             Dados.PedidosNota_Referencia.Value   := Round(cNotaReferencia.Value);
             Dados.PedidosData_Referencia.Value   := cDataReferencia.Date;
             Dados.PedidosProcesso.Value          := tReferenciaProcesso.Value;
             Dados.PedidosTipo_Nota.Value         := tReferenciaTipo_Nota.Value;
             Dados.PedidosDI.Value                := tReferenciaDI.Value;
             Dados.PedidosData_DI.Value           := tReferenciaData_DI.Value;
             Dados.PedidosNatureza_Codigo.Value   := Dados.NaturezaCodigo_Devolucao.Value;
             Dados.PedidosCliente_Codigo.Value    := tReferenciaCliente_Codigo.Value;
             Dados.PedidosFornecedor_Codigo.Value := tReferenciaFornecedor_Codigo.Value;
             Dados.PedidosSaida_Entrada.Value     := tReferenciaSaida_Entrada.Value;
             Pedido_DevolucaoEntrada.cNaturezaOrigem.Text  := tReferenciaNatureza_Codigo.Value;
             Pedido_DevolucaoEntrada.cDescricaoOrigem.Text := Dados.NaturezaDescricao_NF.Value;
             Dados.PedidosInf_Complementares.Value := 'NOTA FISCAL DE DEVOLUCAO REF.NOTA FISCAL '+ PoeZero(6,Dados.PedidosNota_Referencia.Value)+' DE '+DatetoStr(Dados.PedidosData_Referencia.Value)+'.';

             dmFiscal.NotasItens.SQL.Clear;
             dmFiscal.NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE Nota = :pNota');
             dmFiscal.NotasItens.ParamByName('pNota').AsInteger := Dados.PedidosNota_Referencia.Value;
             dmFiscal.NotasItens.Open;

             Close;
          End;
       End else begin
          ShowMessage('Número de Nota ou Data invalidos!');
       End;
end;

procedure TPedido_NotaRefDevolucao.FormShow(Sender: TObject);
begin
       cNotaReferencia.SetFocus;
end;

procedure TPedido_NotaRefDevolucao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Release;
      Pedido_NotaRefDevolucao := nil;
end;

end.
