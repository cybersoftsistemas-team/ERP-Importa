unit frmCadastro_CodigosRFB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, RXCtrls, Vcl.ExtCtrls, RXDBCtrl, Vcl.StdCtrls,
  DBCtrls, DB, Grids, DBGrids, Mask;

type
  TCadastro_CodigosRFB = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    Grade: TRxDBGrid;
    DBMemo1: TDBMemo;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_CodigosRFB: TCadastro_CodigosRFB;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_CodigosRFB.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TCadastro_CodigosRFB.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Dados.CodigosRFB.Close;
     Cadastro_CodigosRFB.Release;
     Cadastro_CodigosRFB := nil;
end;

procedure TCadastro_CodigosRFB.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
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
         Dados.CodigosRFB.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_CodigosRFB.bPesquisaClick(Sender: TObject);
Var
   mPesquisa: String;
begin
      mPesquisa := InputBox('Pesquisar', 'Código/Descrição:', mPesquisa);
      If Dados.CodigosRFB.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
         Dados.CodigosRFB.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
      End;
end;

procedure TCadastro_CodigosRFB.FormShow(Sender: TObject);
begin
      With Dados do begin
           CodigosRFB.SQL.Clear;
           CodigosRFB.SQL.Add('SELECT * FROM CodigosRFB ORDER BY Codigo');
           CodigosRFB.Open
      End;
end;

procedure TCadastro_CodigosRFB.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.
