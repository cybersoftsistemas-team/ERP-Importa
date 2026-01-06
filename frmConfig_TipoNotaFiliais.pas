unit frmConfig_TipoNotaFiliais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ExtCtrls, DBGrids, Grids, system.UITypes, MemDS;

type
  TConfig_TipoNotaFiliais = class(TForm)
    Grade: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bExportar: TButton;
    tCodigo: TMSQuery;
    tCodigoCodigo: TIntegerField;
    tFiliais: TMSQuery;
    tEmpresas: TMSQuery;
    dstEmpresas: TDataSource;
    dstFiliais: TDataSource;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bExportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Config_TipoNotaFiliais: TConfig_TipoNotaFiliais;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TConfig_TipoNotaFiliais.bSairClick(Sender: TObject);
begin
     Close;  
end;

procedure TConfig_TipoNotaFiliais.FormShow(Sender: TObject);
begin
      With Dados do begin
           tEmpresas.SQL.Clear;
           tEmpresas.SQL.Add('SELECT * FROM Empresas');
           tEmpresas.SQL.Add('ORDER  BY Razao_Social, CNPJ');
           tEmpresas.Open;
           tEmpresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
      End;
end;

procedure TConfig_TipoNotaFiliais.bExportarClick(Sender: TObject);
var
  i: Integer;
  b: Integer;
begin
     Screen.Cursor := crSQLWait;
     With Dados do begin
          For i := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));

              tFiliais.Close;
              tFiliais.SQL.Clear;
              tFiliais.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
              tFiliais.SQL.Add('SELECT * FROM TipoNota');
              tFiliais.Open;

              tFiliais.Append;
                       For b := 0 to (TipoNota.FieldCount -1) do begin
                           tFiliais.FieldByName(TipoNota.Fields[b].FieldName).Value := TipoNota.FieldByName(TipoNota.Fields[b].FieldName).Value;
                       End;

                       tCodigo.Close;
                       tCodigo.SQL.Clear;
                       tCodigo.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                       tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM TipoNota');
                       tCodigo.Open;

                       tFiliais.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
                       tFiliais.FieldByName('Ativo').Value  := true;
              tFiliais.Post;
          End;
     End;
     Screen.Cursor := crDefault;
     MessageDlg('Exportação do tipo de nota terminada.', mtInformation, [mbOK], 0);
     Close;
end;

procedure TConfig_TipoNotaFiliais.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Config_TipoNotaFiliais.Release;
     Config_TipoNotaFiliais := nil;
end;

end.
