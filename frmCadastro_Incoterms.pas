unit frmCadastro_Incoterms;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RxRichEd, DB, RXCtrls, Vcl.ExtCtrls,
  DBCtrls, ClipBrd, Funcoes, Mask, RxDBRichEd;

type
  TCadastro_Incoterms = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    StaticText11: TStaticText;
    cDescricao: TDBEdit;
    StaticText8: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    DBMemo1: TDBMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Incoterms: TCadastro_Incoterms;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_Incoterms.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Incoterms.FormShow(Sender: TObject);
begin
        Dados.Incoterms.Open;
end;

procedure TCadastro_Incoterms.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cCodigo.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Incoterms.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_Incoterms.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.INCOTERMSCodigo.AsString;
      Menu_Principal.mMem_Incoterm := Dados.IncotermsCodigo.Value;
      Dados.Incoterms.Close;

      LimpaMemoria;
      Cadastro_Incoterms.Release;
      Cadastro_Incoterms := nil;
end;

procedure TCadastro_Incoterms.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Incoterms.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
end;

end.
