unit frmSobre_Sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxGIF, Vcl.ExtCtrls, RXCtrls, Funcoes, StdCtrls;

type
    TSobre_Sistema = class(TForm)
    Image2: TImage;
    RxLabel1: TRxLabel;
    lVersao: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    Timer1: TTimer;
    lb1: TLabel;
    procedure Panel1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mTexto : String
  end;

var
  Sobre_Sistema: TSobre_Sistema;

implementation



{$R *.dfm}

procedure TSobre_Sistema.Panel1Click(Sender: TObject);
begin
        Close;
end;

procedure TSobre_Sistema.Image2Click(Sender: TObject);
begin
        Close;
end;

procedure TSobre_Sistema.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Timer1.Enabled := false;

      LimpaMemoria;
      Sobre_Sistema.Release;
      Sobre_Sistema := nil;
end;

procedure TSobre_Sistema.FormKeyPress(Sender: TObject; var Key: Char);
begin
        Close;
end;

procedure TSobre_Sistema.FormShow(Sender: TObject);
begin
      Timer1.Enabled := true;
      lVersao.Caption := 'Versão '+VersaoExe(Application.ExeName);
end;

procedure TSobre_Sistema.Timer1Timer(Sender: TObject);
var
  Texto:  String;
begin
     Texto := lb1.Caption;
     lb1.Caption := Copy(Texto,2,Length(Texto)+2)+Texto[1];
end;

end.


