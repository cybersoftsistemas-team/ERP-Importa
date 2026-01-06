unit frmCadastro_Recursos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls,
  RXDBCtrl, Vcl.StdCtrls, DBCtrls, Grids, DBGrids, Mask, MemDS;

type
  TCadastro_Recursos = class(TForm)
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
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Recursos: TCadastro_Recursos;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_Recursos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Recursos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Cadastro_Recursos.Release;
     Cadastro_Recursos := nil;
end;

procedure TCadastro_Recursos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Recursos.FormShow(Sender: TObject);
begin
      With Dados do begin
           Recursos.SQL.Clear;
           Recursos.SQL.Add('SELECT * FROM Recursos ORDER BY Codigo');
           Recursos.Open;
      End;
end;

procedure TCadastro_Recursos.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
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
         Dados.Recursos.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;

end;

procedure TCadastro_Recursos.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) and (Recursos.State = dsInsert) then begin
              tCodigo.SQL.Clear;
              tCodigo.SQl.Add('SELECT MAX(Codigo) AS Codigo FROM Recursos');
              tCodigo.Open;
              RecursosCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
              tCodigo.Close;
           End;
      End;
end;

end.
