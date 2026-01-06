unit frmCadastro_Municipios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, DBCtrls, Vcl.StdCtrls,
  DB, RXDBCtrl, Funcoes, Grids, DBGrids, Mask;

type
  TCadastro_Municipios = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel3: TPanel;
    cInscricao: TDBEdit;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    cEstado: TDBLookupComboBox;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    Grade: TRxDBGrid;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
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
  Cadastro_Municipios: TCadastro_Municipios;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_Municipios.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Municipios.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Cadastro_Municipios.Release;
      Cadastro_Municipios := nil;
end;  

procedure TCadastro_Municipios.FormShow(Sender: TObject);
begin
        With Dados do begin
             Estados.SQL.Clear;
             Estados.SQL.Add('SELECT * FROM Estados Order by Codigo');
             Estados.Open;
             Municipios.Close;
             Municipios.SQL.Clear;
             Municipios.SQL.Add('SELECT * FROM Municipios ORDER BY Nome');
             Municipios.Open;
        End;      
end;

procedure TCadastro_Municipios.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel3.Enabled := True;
         cEstado.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Municipios.Refresh;
         Panel3.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_Municipios.bPesquisaClick(Sender: TObject);
begin
      With Dados do begin
           mPesquisa := InputBox('Pesquisa Município', 'Nome', mPesquisa);
           if Municipios.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
              Municipios.Locate('Nome', mPesquisa, [loCaseInsensitive, loPartialKey]);
           end;
           Grade.SetFocus;
      End;
end;

procedure TCadastro_Municipios.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Municipios.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      If Button = nbPost then begin
         Dados.MunicipiosUF.Value := Dados.EstadosCodigo.Value;
      End;
end;

end.
