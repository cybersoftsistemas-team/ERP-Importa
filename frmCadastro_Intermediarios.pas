unit frmCadastro_Intermediarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess, Vcl.Grids, Vcl.DBGrids, RxDBCtrl, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, RxCtrls;

type
  TCadastro_Intermediarios = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCNPJ: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    Grade: TRxDBGrid;
    tRegistro: TMSQuery;
    StaticText2: TStaticText;
    cNome: TDBEdit;
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
  Cadastro_Intermediarios: TCadastro_Intermediarios;

implementation

{$R *.dfm}

uses Funcoes, frmDados;

procedure TCadastro_Intermediarios.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TCadastro_Intermediarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      LimpaMemoria;
      Cadastro_Intermediarios.Release;
      Cadastro_Intermediarios := nil;
end;

procedure TCadastro_Intermediarios.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Intermediarios.FormShow(Sender: TObject);
begin
     With Dados do begin
          Intermediadores.SQL.Clear;
          Intermediadores.SQL.Add('SELECT * FROM Intermediadores ORDER BY Nome');
          Intermediadores.Open;
     End;
end;

procedure TCadastro_Intermediarios.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      Navega.SetFocus;
      with Dados do begin
           if Button = nbPost then begin
              if Intermediadores.State = dsInsert then begin
                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Intermediadores');
                 tRegistro.Open;
                 Intermediadores.fieldbyName('Codigo').value := tRegistro.fieldbyName('Codigo').asinteger;
              end;
           end;
      End;
end;

procedure TCadastro_Intermediarios.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
    i:integer;
begin
      Screen.Cursor := crSQLWait;
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         Panel2.Enabled := True;
         cNome.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Intermediadores.Refresh;
         Panel2.Enabled := False;
      end;
      Screen.Cursor := crDefault;
end;

end.
