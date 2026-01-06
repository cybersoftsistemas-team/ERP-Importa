unit frmNotaFiscal_Preview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, FUNCOES, RXCtrls, ExtCtrls ;

type
  TNotaFiscal_Preview = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    bImprimir: TButton;
    bSair: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_Preview: TNotaFiscal_Preview;

implementation

uses frmNotaFiscal_Pedido, frmDados;

{$R *.dfm}

procedure TNotaFiscal_Preview.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TNotaFiscal_Preview.FormClose(Sender: TObject;var Action: TCloseAction);
begin
       Release;
       NotaFiscal_Preview := nil;
end;

end.
