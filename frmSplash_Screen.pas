unit frmSplash_Screen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Funcoes, jpeg;

type
  TSplash_Screen = class(TForm)
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Splash_Screen: TSplash_Screen;

implementation

{$R *.dfm}

uses frmDados;

procedure TSplash_Screen.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Splash_Screen.Release;
      LimpaMemoria;
      Splash_Screen := nil;
      LimpaMemoria;
end;

end.
