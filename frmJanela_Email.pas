unit frmJanela_Email;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls;

type
  TJanela_Email = class(TForm)

    RxLabel1: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Janela_Email: TJanela_Email;

implementation

{$R *.dfm}

procedure TJanela_Email.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Janela_Email.Release;
     Janela_Email := nil;
end;

procedure TJanela_Email.FormActivate(Sender: TObject);
begin
     //Janela_Email.GifEmail.Animate := true;
     Application.ProcessMessages;
end;

end.
