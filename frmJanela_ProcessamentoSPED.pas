unit frmJanela_ProcessamentoSPED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Funcoes;

type
  TJanela_ProcessamentoSPED = class(TForm)
    Timer1: TTimer;
    lProcesso: TLabel;
    Label1: TLabel;
    lRegistro: TLabel;
    Label3: TLabel;
    lRegistro2: TLabel;
    Label4: TLabel;
    lRegistro3: TLabel;
    Label6: TLabel;
    Progresso: TProgressBar;
    bCancelar: TButton;
    Progresso2: TProgressBar;
    Progresso3: TProgressBar;
    Progresso4: TProgressBar;
    Image1: TImage;
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Janela_ProcessamentoSPED: TJanela_ProcessamentoSPED;

implementation

{$R *.dfm}

procedure TJanela_ProcessamentoSPED.bCancelarClick(Sender: TObject);
begin
     Funcoes.Cancelado := True;
     Close;
end;

procedure TJanela_ProcessamentoSPED.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      //Funcoes.Cancelado := True;
      Timer1.Enabled := False;
      Screen.Cursor  := crDefault;
end;

procedure TJanela_ProcessamentoSPED.Timer1Timer(Sender: TObject);
begin
      If Progresso.Max  <> 0 then Label1.Caption := InttoStr( Round((Progresso.Position  / Progresso.Max) * 100 ))+'%';
      If Progresso2.Max <> 0 then Label3.Caption := InttoStr( Round((Progresso2.Position / Progresso2.Max)* 100 ))+'%';
      If Progresso3.Max <> 0 then Label4.Caption := InttoStr( Round((Progresso3.Position / Progresso3.Max)* 100 ))+'%';
      If Progresso4.Max <> 0 then Label6.Caption := InttoStr( Round((Progresso4.Position / Progresso4.Max)* 100 ))+'%';
      Label1.Repaint;
      Label3.Repaint;
      Label4.Repaint;
      Label6.Repaint;
end;

procedure TJanela_ProcessamentoSPED.FormShow(Sender: TObject);
begin
      Funcoes.Cancelado := False;
      Timer1.Enabled    := True;
      Timer1.Interval   := 500;   // 5 segundos.
      Screen.Cursor     := crAppStart;

      Janela_ProcessamentoSPED.Top  := Screen.Height - (Janela_ProcessamentoSPED.Height + 70);
      Janela_ProcessamentoSPED.Left := Screen.Width  - (Janela_ProcessamentoSPED.Width  + 30);
end;

procedure TJanela_ProcessamentoSPED.FormCreate(Sender: TObject);
begin
     If FileExists('Fundo_Barra_Vermelha.bmp') then Image1.Picture.LoadFromFile('Fundo_Barra_Vermelha.bmp');
end;

end.
