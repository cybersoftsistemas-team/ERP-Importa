unit frmCadastro_Moedas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, DBCtrls,
  Vcl.ExtCtrls, DB, RXCtrls, Funcoes, Grids, Mask;

type
  TCadastro_Moedas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    cCodigo: TDBEdit;
    cNome: TDBEdit;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    DBGrid1: TDBGrid;
    StaticText3: TStaticText;
    DBEdit1: TDBEdit;
    StaticText5: TStaticText;
    DBEdit2: TDBEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
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
  Cadastro_Moedas: TCadastro_Moedas;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_Moedas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Moedas.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        Dados.Moedas.Open;
        Screen.Cursor := crDefault;
end;

procedure TCadastro_Moedas.NavegaClick(Sender: TObject;Button: TNavigateBtn);
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
         Dados.Moedas.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_Moedas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.Moedas.Close;

      LimpaMemoria;
      Cadastro_Moedas.Release;
      Cadastro_Moedas := nil;
end;

procedure TCadastro_Moedas.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Nome', mPesquisa);
     Dados.Moedas.Locate('Nome', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TCadastro_Moedas.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Moedas.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
end;

end.
