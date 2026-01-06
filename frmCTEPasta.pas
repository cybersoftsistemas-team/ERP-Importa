unit frmCTEPasta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Mask, IniFiles, RxToolEdit;

type
  TCTePasta = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bAbrir: TButton;
    cPasta: TDirectoryEdit;
    StaticText21: TStaticText;
    cArquivos: TListBox;
    bDesTudo: TButton;
    bSelTudo: TButton;
    procedure bSairClick(Sender: TObject);
    procedure cPastaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bDesTudoClick(Sender: TObject);
    procedure bAbrirClick(Sender: TObject);
    procedure bSelTudoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CTePasta: TCTePasta;

implementation

uses frmUtilitarios_Importar_CTe_Terceiros;

{$R *.dfm}

procedure TCTePasta.bSairClick(Sender: TObject);
begin
    cArquivos.clear;
    close;
end;

procedure TCTePasta.cPastaChange(Sender: TObject);
var
  SCHR: TSearchRec;
  I: integer;
begin
      cArquivos.Items.Clear;
      I := FindFirst(cPasta.Text+'\*.xml', faAnyFile, SCHR);
      while I = 0 do begin
            cArquivos.Items.Add(cPasta.Text+'\'+SCHR.Name);
            I := FindNext(SCHR);
      end;
end;

procedure TCTePasta.FormCreate(Sender: TObject);
var
  ArqINI: TIniFile;
begin
     ArqINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Cte.ini');
     cPasta.text := ArqINI.readstring('CTE', 'Pasta', cPasta.Text);
     ArqINI.Free;
end;

procedure TCTePasta.FormClose(Sender: TObject; var Action: TCloseAction);
var
   ArqINI: TIniFile;
   i:integer;
begin
    ArqINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Cte.ini');
    ArqINI.WriteString('CTE', 'Pasta', cPasta.Text);
    ArqINI.Free;

    if cArquivos.Count > 0 then begin
       Utilitarios_Importar_CTe_Terceiros := TUtilitarios_Importar_CTe_Terceiros.Create(Self);
       Utilitarios_Importar_CTe_Terceiros.Caption := Caption;

       for i := 0 to cArquivos.Items.Count-1 do begin
           if cArquivos.Selected[i] then begin
              Utilitarios_Importar_CTe_Terceiros.cArquivos.Items.Add(cArquivos.Items[i]);
           end;
       end;

       Utilitarios_Importar_CTe_Terceiros.ShowModal;
    end;
end;

procedure TCTePasta.bDesTudoClick(Sender: TObject);
begin
      cArquivos.ClearSelection;
end;

procedure TCTePasta.bAbrirClick(Sender: TObject);
begin
     hide;
     close;
end;

procedure TCTePasta.bSelTudoClick(Sender: TObject);
begin
      cArquivos.SelectAll;
end;

end.

