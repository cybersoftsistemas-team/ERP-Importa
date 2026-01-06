unit frmUtilitario_SistemaAcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Buttons, Vcl.ExtCtrls, RXSlider;

type
  TUtilitario_SistemaAcoes = class(TForm)
    Panel1: TPanel;
    Tela: TImage;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    StaticText1: TStaticText;
    cVelocidade: TRxSlider;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Parado : Boolean;
  end;

var
  Utilitario_SistemaAcoes: TUtilitario_SistemaAcoes;

implementation

{$R *.dfm}

procedure TUtilitario_SistemaAcoes.SpeedButton1Click(Sender: TObject);
var
   i : integer;
   SearchRec: TSearchRec;
begin
     I := FindFirst('c:\temp\telas\*.bmp', 0, SearchRec);
     While (I = 0) and (Parado = false) do Begin
           //Memo1.Lines.Add(SearchRec.Name);
           Tela.Picture.LoadFromFile('c:\temp\telas\'+SearchRec.Name);
           Tela.Repaint;
           Application.ProcessMessages;
           I := FindNext(SearchRec);
           Sleep(cVelocidade.Value * 10);
     End;
     Parado := false;
end;

procedure TUtilitario_SistemaAcoes.SpeedButton3Click(Sender: TObject);
begin
      Close;
end;

procedure TUtilitario_SistemaAcoes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Utilitario_SistemaAcoes.Release;
     Utilitario_SistemaAcoes := nil;
end;

procedure TUtilitario_SistemaAcoes.SpeedButton2Click(Sender: TObject);
begin
     Parado := true;
end;

procedure TUtilitario_SistemaAcoes.Button1Click(Sender: TObject);
begin
     Utilitario_SistemaAcoes.WindowState := wsMaximized;
     Utilitario_SistemaAcoes.BorderStyle := bsNone;
end;

end.
