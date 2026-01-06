unit frmCadastro_Detalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls, RXDBCtrl, Vcl.StdCtrls,
  DBCtrls, Grids, DBGrids, Mask, MemDS;

type
  TCadastro_Detalhes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    Grade: TRxDBGrid;
    tCodigo: TMSQuery;
    tPesquisa: TMSQuery;
    DBRadioGroup1: TDBRadioGroup;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Detalhes: TCadastro_Detalhes;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_Detalhes.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Detalhes.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TCadastro_Detalhes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Cadastro_Detalhes.Release;
     Cadastro_Detalhes:= nil;
end;

procedure TCadastro_Detalhes.FormShow(Sender: TObject);
begin
      With Dados do begin
           Detalhes.SQL.Clear;
           Detalhes.SQL.Add('SELECT * FROM Detalhes ORDER BY Codigo');
           Detalhes.Open;
      End;
end;

procedure TCadastro_Detalhes.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cDescricao.SetFocus;
         If Button = nbInsert then Dados.DetalhesTipo.Value := 0;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Detalhes.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_Detalhes.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) and (Detalhes.State = dsInsert) then begin
              tCodigo.SQL.Clear;
              tCodigo.SQl.Add('SELECT MAX(Codigo) AS Codigo FROM Detalhes');
              tCodigo.Open;
              DetalhesCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
              tCodigo.Close;
           End;
      End;
end;

end.
