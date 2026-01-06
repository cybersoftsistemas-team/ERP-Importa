unit frmConfig_ReferenciaFiliais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TConfig_ReferenciaFiliais = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Config_ReferenciaFiliais: TConfig_ReferenciaFiliais;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal;

procedure TConfig_ReferenciaFiliais.bExportarClick(Sender: TObject);
var
  i: Integer;
  b: Integer;
begin
     Screen.Cursor := crSQLWait;
     with Dados do begin
          for i := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));
              with tFiliais do begin
                   close;
                   sql.clear;
                   sql.add('use '+tEmpresas.FieldByName('Banco_Dados').AsString);
                   sql.add('select * from ReferenciasFiscais');
                   open;

                   Append;
                        for b := 0 to (ReferenciasFiscais.FieldCount -1) do begin
                            FieldByName(ReferenciasFiscais.Fields[b].FieldName).Value := ReferenciasFiscais.FieldByName(ReferenciasFiscais.Fields[b].FieldName).Value;
                        end;
                        with tCodigo do begin
                             close;
                             sql.clear;
                             sql.add('use '+tEmpresas.FieldByName('Banco_Dados').AsString);
                             sql.add('select max(Codigo) as Codigo from ReferenciasFiscais');
                             open;
                        end;
                    
                        FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
                        FieldByName('Ativo').Value  := true;
                   Post;
              end;
          end;
     end;
     Screen.Cursor := crDefault;
     MessageDlg('Exportação do tipo de nota de terceiros terminada.', mtInformation, [mbOK], 0);
     Close;
end;

procedure TConfig_ReferenciaFiliais.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TConfig_ReferenciaFiliais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Config_ReferenciaFiliais.Release;
     Config_ReferenciaFiliais := nil;
end;

procedure TConfig_ReferenciaFiliais.FormShow(Sender: TObject);
begin
      with Dados, tEmpresas do begin
           sql.clear;
           sql.add('select * from Empresas');
           sql.add('order  by Razao_Social, CNPJ');
           open;
           locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
      end;
end;

end.
