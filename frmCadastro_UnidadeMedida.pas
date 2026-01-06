unit frmCadastro_UnidadeMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, MSAccess, Vcl.StdCtrls, RXDBCtrl, DBCtrls,
  DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, Mask,
  Grids, MemDS, DBAccess;

type
  TCadastro_UnidadeMedida = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    tUnidades: TMSQuery;
    tUnidadesRegistro: TSmallintField;
    RxLabel4: TRxLabel;
    RxLabel3: TRxLabel;
    Image1: TImage;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_UnidadeMedida: TCadastro_UnidadeMedida;

implementation

Uses frmDados;

{$R *.dfm}

procedure TCadastro_UnidadeMedida.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_UnidadeMedida.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      Dados.Unidades.Open;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_UnidadeMedida.NavegaClick(Sender: TObject;Button: TNavigateBtn);
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
         Dados.Unidades.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_UnidadeMedida.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.Unidades.Close;

      LimpaMemoria;
      Cadastro_UnidadeMedida.Release;
      Cadastro_UnidadeMedida := nil;
end;

procedure TCadastro_UnidadeMedida.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := UpperCase(InputBox('Pesquisa', 'Descrição:', mPesquisa));
      if not Dados.Unidades.Locate('Codigo', mPesquisa, [loCaseInsensitive, loPartialKey]) then begin
         Dados.Unidades.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
      end;   
end;

procedure TCadastro_UnidadeMedida.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_UnidadeMedida.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      If (Button = nbPost) and (Dados.Unidades.State = dsInsert) then begin
         tUnidades.Open;
         Dados.UnidadesRegistro.Value := tUnidadesRegistro.Value + 1;
         tUnidades.Close;
      End;
end;

end.
