unit frmPedido_TaxaLucro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Mask, RxCurrEdit;

type
  TPedido_TaxaLucro = class(TForm)
    GroupBox1: TGroupBox;
    lDI: TStaticText;
    cSugerido: TCurrencyEdit;
    StaticText1: TStaticText;
    cCalculado: TCurrencyEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    StaticText2: TStaticText;
    cTaxa: TCurrencyEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cSugeridoChange(Sender: TObject);
    procedure cCalculadoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_TaxaLucro: TPedido_TaxaLucro;

implementation

uses frmPedido_Itens;

{$R *.dfm}

procedure TPedido_TaxaLucro.Button2Click(Sender: TObject);
begin
      Close;
end;

procedure TPedido_TaxaLucro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Pedido_TaxaLucro.Release;
      Pedido_TaxaLucro:= nil;
end;

procedure TPedido_TaxaLucro.cSugeridoChange(Sender: TObject);
begin
      If (cSugerido.Value > 0) and (cCalculado.Value > 0) then
         cTaxa.Value := ((cSugerido.Value / cCalculado.Value) * 100)-100
end;

procedure TPedido_TaxaLucro.cCalculadoChange(Sender: TObject);
begin
      If (cSugerido.Value > 0) and (cCalculado.Value > 0) then
         cTaxa.Value := ((cSugerido.Value / cCalculado.Value) * 100)-100
end;

procedure TPedido_TaxaLucro.Button1Click(Sender: TObject);
begin
      Pedido_Itens.cLucro.Value := cTaxa.Value;
      Close;
end;

end.
