unit frmConversor_Moedas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Clipbrd, Funcoes, Mask, RxCurrEdit;
type
  TConversor_Moedas = class(TForm)
    Panel1: TPanel;
    StaticText15: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    lValorCovertido: TStaticText;
    cValorOrigem: TCurrencyEdit;
    cTaxaOrigem: TCurrencyEdit;
    cTaxaDestino: TCurrencyEdit;
    cValorConvertido: TCurrencyEdit;
    Button2: TButton;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cValorOrigemChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Conversor_Moedas: TConversor_Moedas;

implementation

{$R *.dfm}

procedure TConversor_Moedas.Button2Click(Sender: TObject);
begin
       Close;
end;

procedure TConversor_Moedas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Conversor_Moedas.Release;
      Conversor_Moedas := nil;
end;

procedure TConversor_Moedas.cValorOrigemChange(Sender: TObject);
begin
      If cTaxaDestino.Value <> 0 then
         cValorConvertido.Value := ((cValorOrigem.Value * cTaxaOrigem.Value) / cTaxaDestino.Value); 
end;

procedure TConversor_Moedas.Button1Click(Sender: TObject);
begin
       Clipboard.AsText := cValorConvertido.Text;
end;

end.
