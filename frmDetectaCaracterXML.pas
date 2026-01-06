unit frmDetectaCaracterXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Buttons, Funcoes;

type
  TDetectaCaracterXML = class(TForm)
    StaticText91: TStaticText;
    cXML: TEdit;
    bAbrir: TBitBtn;
    cInvalidos: TMemo;
    Panel2: TPanel;
    bSair: TButton;
    bLimpar: TButton;
    OpenDialog1: TOpenDialog;
    bSalvar: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bAbrirClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetectaCaracterXML: TDetectaCaracterXML;

implementation

{$R *.dfm}

procedure TDetectaCaracterXML.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TDetectaCaracterXML.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     DetectaCaracterXML.Release;
     DetectaCaracterXML := nil;
end;

procedure TDetectaCaracterXML.bAbrirClick(Sender: TObject);
Var
    Arq: TextFile;
    mLinha: WideString;
    i,lin: integer;
    l: Boolean;
begin
      If OpenDialog1.Execute then begin
         cInvalidos.Lines.Clear;
         cXML.Text := OpenDialog1.FileName;
         bLimpar.Enabled := true;

         AssignFile(Arq, cXML.Text);
         Reset(Arq);
         lin := 0;
         While not Eof (Arq) do begin
               ReadLn(Arq, mLinha);
               l := true;
               inc(lin);
               //cInvalidos.Lines.Add(mLinha);
               For i := 1 to Length(mLinha) do begin
                   If (Ord(mLinha[i]) < 32) or (ORD(mLinha[i]) > 125) then begin
                      If l = true then  begin
                         cInvalidos.Lines.Add(mLinha);
                         l := false;
                      End;
                      cInvalidos.Lines.Add('Linha :'+inttostr(lin)+' Caracter: '+ mLinha[i]+ '  Código:'+InttoStr(ORD(mLinha[i]))+'   Posição:'+InttoStr(i));
                   end;
               End;
         End;
         CloseFile (Arq);
      End;
end;

procedure TDetectaCaracterXML.bLimparClick(Sender: TObject);
Var
    Arq: TextFile;
    mLinha: WideString;
    i: integer;
    l: Boolean;
begin
      If cXML.Text <> '' then begin
         cInvalidos.Lines.Clear;

         AssignFile(Arq, cXML.Text);
         Reset(Arq);

         While not Eof (Arq) do begin
               ReadLn(Arq, mLinha);
               cInvalidos.Lines.Add(LimpaXML(mLinha));
         End;
         CloseFile (Arq);
      End;
      bSalvar.Enabled := true;
end;

procedure TDetectaCaracterXML.bSalvarClick(Sender: TObject);
Var
   mNomeArq: String;
begin
      //cInvalidos.Lines.SaveToFile(OpenDialog1.GetNamePath);
      mNomeArq := OpenDialog1.FileName;
      mNomeArq := RemoveCaracter('.', '_Limpo.', mNomeArq);
      cInvalidos.Lines.SaveToFile(mNomeArq);
      ShowmEssage('Arquivo foi limpo e salvo em '+mNomeArq);
end;

end.
