unit frmCadastro_Paises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, RXDBCtrl, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, DB, Funcoes,
  Grids, DBGrids, Mask, system.UITypes;

type
  TCadastro_Paises = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel3: TPanel;
    StaticText10: TStaticText;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    Grade: TDBGrid;
    cNome: TDBEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText2: TStaticText;
    cNomeIngles: TDBEdit;
    StaticText3: TStaticText;
    cSigla: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
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
  Cadastro_Paises: TCadastro_Paises;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_Paises.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Paises.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Cadastro_Paises.Release;
      Cadastro_Paises := nil;
end;

procedure TCadastro_Paises.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel3.Enabled := True;
         cCodigo.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Paises.Refresh;
         Panel3.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_Paises.FormShow(Sender: TObject);
begin
        With Dados do begin
             Paises.SQL.Clear;
             Paises.SQL.Add('SELECT * FROM Paises ORDER BY Nome');
             Paises.Open;
        End;
end;

procedure TCadastro_Paises.bPesquisaClick(Sender: TObject);
begin
      With Dados do begin
           mPesquisa := InputBox('Pesquisa País', 'País:', mPesquisa);
           if Paises.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
              Paises.Locate('Nome', mPesquisa, [loCaseInsensitive, loPartialKey]);
           end;
           Grade.SetFocus;
      End;
end;

procedure TCadastro_Paises.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Paises.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      If Button = nbPost then begin
         With Dados do begin
              If Length(Trim(PaisesCodigo.AsString)) <> 4 then begin
                 PaisesCodigo.AsString := PaisesCodigo.AsString + DigitoPais(PaisesCodigo.AsString);
              End;
              If CodigoPais(PaisesCodigo.Asstring) = false then begin
                 MessageDlg('Erro no código do País!'+#13+#13+'O digíto verificador do País esta errado.', mtError, [mbOK], 0);
                 cCodigo.SetFocus;
                 Abort;
              End;
         End;
      End;
end;



end.
