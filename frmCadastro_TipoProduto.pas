unit frmCadastro_TipoProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, DBGrids, Vcl.ComCtrls,
  Vcl.ExtCtrls, DB, MSAccess, RXCtrls, Funcoes, Mask, Grids, MemDS, DBAccess;
type
  TCadastro_TipoProduto = class(TForm)
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
    tCodigo: TMSQuery;
    tCodigoCodigo: TIntegerField;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_TipoProduto: TCadastro_TipoProduto;

implementation

Uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_TipoProduto.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_TipoProduto.NavegaClick(Sender: TObject;Button: TNavigateBtn);
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
         Dados.TipoProduto.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_TipoProduto.FormShow(Sender: TObject);
begin
        Screen.Cursor :=crSQLWait; 
        Dados.TipoProduto.Open;
        Screen.Cursor :=crDefault; 
end;

procedure TCadastro_TipoProduto.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Menu_Principal.mMem_TipoProduto := Dados.TipoProdutoCodigo.Value;
      Dados.TipoProduto.Close;

      LimpaMemoria;
      Cadastro_TipoProduto.Release;
      Cadastro_TipoProduto := nil;
end;

procedure TCadastro_TipoProduto.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      If (Button = nbPost) and (Dados.TipoProduto.State = dsInsert) then begin
         Screen.Cursor := crSQLWait;
         tCodigo.Open;
         Dados.TipoProdutoCodigo.Value := tCodigoCodigo.Value+1;
         tCodigo.Close;
         Screen.Cursor := crDefault;
     End;
end;

procedure TCadastro_TipoProduto.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Descrição:', mPesquisa));
     Dados.TipoProduto.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TCadastro_TipoProduto.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.
