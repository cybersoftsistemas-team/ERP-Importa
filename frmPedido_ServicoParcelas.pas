unit frmPedido_ServicoParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, mdTabEnter, DBCtrls, Vcl.StdCtrls, Mask, RxCurrEdit;

type
  TPedido_ServicoParcelas = class(TForm)
    StaticText11: TStaticText;
    cVencimento01: TMaskEdit;
    cValor01: TCurrencyEdit;
    cVencimento02: TMaskEdit;
    cValor02: TCurrencyEdit;
    cVencimento03: TMaskEdit;
    cValor03: TCurrencyEdit;
    cVencimento04: TMaskEdit;
    cValor04: TCurrencyEdit;
    cVencimento05: TMaskEdit;
    cValor05: TCurrencyEdit;
    cVencimento06: TMaskEdit;
    cValor06: TCurrencyEdit;
    cVencimento07: TMaskEdit;
    cValor07: TCurrencyEdit;
    cVencimento08: TMaskEdit;
    cValor08: TCurrencyEdit;
    cVencimento09: TMaskEdit;
    cValor09: TCurrencyEdit;
    cVencimento10: TMaskEdit;
    cValor10: TCurrencyEdit;
    cVencimento11: TMaskEdit;
    cValor11: TCurrencyEdit;
    cVencimento12: TMaskEdit;
    cValor12: TCurrencyEdit;
    Button1: TButton;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    TabEnter1: TTabEnter;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_ServicoParcelas: TPedido_ServicoParcelas;

implementation

uses frmPedido_Servico;

{$R *.dfm}

procedure TPedido_ServicoParcelas.Button1Click(Sender: TObject);
begin
        Close;
end;

procedure TPedido_ServicoParcelas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      // Transfere os valores para as variaveis de memoria.
      // Data de vencimentos.
      Pedido_Servico.mVencimentos[01] := cVencimento01.Text;
      Pedido_Servico.mVencimentos[02] := cVencimento02.Text;
      Pedido_Servico.mVencimentos[03] := cVencimento03.Text;
      Pedido_Servico.mVencimentos[04] := cVencimento04.Text;
      Pedido_Servico.mVencimentos[05] := cVencimento05.Text;
      Pedido_Servico.mVencimentos[06] := cVencimento06.Text;
      Pedido_Servico.mVencimentos[07] := cVencimento07.Text;
      Pedido_Servico.mVencimentos[08] := cVencimento08.Text;
      Pedido_Servico.mVencimentos[09] := cVencimento09.Text;
      Pedido_Servico.mVencimentos[10] := cVencimento10.Text;
      Pedido_Servico.mVencimentos[11] := cVencimento11.Text;
      Pedido_Servico.mVencimentos[12] := cVencimento12.Text;
      // Valor das parcelas.
      Pedido_Servico.mValorParcelas[01] := cValor01.Value;
      Pedido_Servico.mValorParcelas[02] := cValor02.Value;
      Pedido_Servico.mValorParcelas[03] := cValor03.Value;
      Pedido_Servico.mValorParcelas[04] := cValor04.Value;
      Pedido_Servico.mValorParcelas[05] := cValor05.Value;
      Pedido_Servico.mValorParcelas[06] := cValor06.Value;
      Pedido_Servico.mValorParcelas[07] := cValor07.Value;
      Pedido_Servico.mValorParcelas[08] := cValor08.Value;
      Pedido_Servico.mValorParcelas[09] := cValor09.Value;
      Pedido_Servico.mValorParcelas[10] := cValor10.Value;
      Pedido_Servico.mValorParcelas[11] := cValor11.Value;
      Pedido_Servico.mValorParcelas[12] := cValor12.Value;

      Pedido_ServicoParcelas.Release;
      Pedido_ServicoParcelas := nil;
end;

end.
