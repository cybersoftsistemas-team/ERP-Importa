unit frmCadastro_Cores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, ImgList, RXCtrls, Vcl.ExtCtrls, Grids,
  DBGrids, RXDBCtrl, Vcl.StdCtrls, Mask, DBCtrls, DB;

type
  TCadastro_Cores = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    Grade: TRxDBGrid;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: String;
  end;

var
  Cadastro_Cores: TCadastro_Cores;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_Cores.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Cores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Menu_Principal.mMem_Cor := Dados.CoresCodigo.Value;
      Cadastro_Cores.Release;
      Cadastro_Cores := nil;
end;

procedure TCadastro_Cores.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Cores.FormShow(Sender: TObject);
begin
      With Dados do begin
           Cores.SQL.Clear;
           Cores.SQL.Add('SELECT * FROM Cores ORDER BY Codigo');
           Cores.Open
      End;
end;

procedure TCadastro_Cores.NavegaClick(Sender: TObject;Button: TNavigateBtn);
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
         Dados.Cores.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_Cores.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisar Cor', 'Codigo/Descrição:', mPesquisa);
      If Dados.Cores.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
         Dados.Cores.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
      End;
end;

end.
