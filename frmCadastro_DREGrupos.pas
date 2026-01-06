unit frmCadastro_DREGrupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, RXCtrls, Vcl.ExtCtrls,
  RXDBCtrl, Vcl.StdCtrls, DBCtrls, DB, DBAccess, MSAccess,
  Buttons, Grids, DBGrids, Mask, MemDS;

type
  TCadastro_DREGrupos = class(TForm)
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
    Image1: TImage;
    tCodigo: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: String;
  end;

var
  Cadastro_DREGrupos: TCadastro_DREGrupos;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_DREGrupos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_DREGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Cadastro_DREGrupos.Release;
      Cadastro_DREGrupos := nil;
end;

procedure TCadastro_DREGrupos.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_DREGrupos.FormShow(Sender: TObject);
begin
      With Dados do begin
           DREGrupos.SQL.Clear;
           DREGrupos.SQL.Add('SELECT * FROM DREGrupos ORDER BY Codigo');
           DREGrupos.Open;
      End;
end;

procedure TCadastro_DREGrupos.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cDescricao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.DREGrupos.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_DREGrupos.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisar Grupo', 'Codigo/Descrição:', mPesquisa);
      If Dados.DREGrupos.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
         Dados.DREGrupos.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
      End;
end;

procedure TCadastro_DREGrupos.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados do begin
           if Button = nbPost then begin
              If (DREGrupos.State = dsInsert) then begin
                 tCodigo.SQL.Clear;
                 tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM DREGrupos');
                 tCodigo.Open;
                 DREGrupos.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').Value+1;
                 tCodigo.Close;
              End;
           end;
      end;
end;

end.

