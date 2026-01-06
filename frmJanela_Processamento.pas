unit frmJanela_Processamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, FUNCOES;

type
  TJanela_Processamento = class(TForm)
    Timer1: TTimer;
    lProcesso: TLabel;
    Progresso: TProgressBar;
    Label1: TLabel;
    bCancelar: TButton;
    Image1: TImage;
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Janela_Processamento: TJanela_Processamento;

implementation



{$R *.dfm}

procedure TJanela_Processamento.bCancelarClick(Sender: TObject);
begin
       Funcoes.Cancelado := True;
       Close;
end;

procedure TJanela_Processamento.FormClose(Sender: TObject;var Action: TCloseAction);
begin
        Timer1.Enabled := False;
        Screen.Cursor  := crDefault;
end;

procedure TJanela_Processamento.Timer1Timer(Sender: TObject);
begin
      If Progresso.Max <> 0 then begin
         Label1.Caption := InttoStr(Round((Progresso.Position/Progresso.Max)*100))+'%';
      End;
      Label1.Repaint;
end;

procedure TJanela_Processamento.FormShow(Sender: TObject);
begin
        Funcoes.Cancelado := False;
        Timer1.Enabled    := True;
        Janela_Processamento.Top  := Screen.Height - (Janela_Processamento.Height + 70);
        Janela_Processamento.Left := Screen.Width  - (Janela_Processamento.Width  + 30);
        
        If FileExists(ExtractFilePath(Application.ExeName)+'Fundo_Barra_Vermelha.bmp') then
           Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Fundo_Barra_Vermelha.bmp');
end;

end.
