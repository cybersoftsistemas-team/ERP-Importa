unit frmJanela_Imagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, ExtCtrls;

type
  TJanela_Imagem = class(TForm)
    cImagem: TImage;
    Shape1: TShape;
    procedure cImagemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Janela_Imagem: TJanela_Imagem;

implementation

{$R *.dfm}

procedure TJanela_Imagem.cImagemClick(Sender: TObject);
begin
     Close;
end;

procedure TJanela_Imagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Janela_Imagem.release;
     Janela_Imagem := nil;
end;

end.
