unit frmJanela_BACKUP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Funcoes, RXCtrls, Vcl.WinXCtrls;

type
  TJanela_BACKUP = class(TForm)
    lAcao: TLabel;
    lLocal: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lServidor: TLabel;

    Label2: TLabel;
    lCopia: TLabel;
    lTitulo1: TRxLabel;
    lTitulo2: TRxLabel;
    Image2: TImage;
    Progresso: TActivityIndicator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Janela_BACKUP: TJanela_BACKUP;

implementation

{$R *.dfm}

procedure TJanela_BACKUP.FormCreate(Sender: TObject);
begin
      Progresso.StartAnimation;
      If FileExists(RemoveCaracter('Importa.exe', '', Application.ExeName)+'fundo_barra.bmp') then
         Image2.Picture.LoadFromFile(RemoveCaracter('Importa.exe', '', Application.ExeName)+'fundo_barra.bmp');
end;

procedure TJanela_BACKUP.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Progresso.StopAnimation;
      LimpaMemoria;
      Janela_BACKUP.Release;
      Janela_BACKUP := nil;
end;

end.
