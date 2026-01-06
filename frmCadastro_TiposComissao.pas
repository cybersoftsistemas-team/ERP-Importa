unit frmCadastro_TiposComissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, MSAccess, DBCtrls, Vcl.StdCtrls, DBGrids, Vcl.ExtCtrls, RXCtrls,
  Mask, Grids, MemDS, DBAccess;

type
  TCadastro_TiposComissao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    cNome: TDBEdit;
    StaticText4: TStaticText;
    DBEdit3: TDBEdit;
    cCodigo: TDBEdit;
    tCodigo: TMSQuery;
    tCodigoCodigo: TIntegerField;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_TiposComissao: TCadastro_TiposComissao;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_TiposComissao.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_TiposComissao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_TiposComissao.Release;
      Cadastro_TiposComissao := nil;
end;

procedure TCadastro_TiposComissao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cNome.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Comissoes.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_TiposComissao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_TiposComissao.FormShow(Sender: TObject);
begin
        Dados.Comissoes.Open;
end;

procedure TCadastro_TiposComissao.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      If (Button = nbPost) and (Dados.Comissoes.State = dsInsert) then begin
         Screen.Cursor := crSQLWait;
         tCodigo.Open;
         Dados.ComissoesCodigo.Value := tCodigoCodigo.Value+1;
         tCodigo.Close;
         Screen.Cursor := crDefault;
      End;
end;

end.
