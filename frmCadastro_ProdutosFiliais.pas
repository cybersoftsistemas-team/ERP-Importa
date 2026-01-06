unit frmCadastro_ProdutosFiliais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DBGrids, RXDBCtrl, DB,
  DBAccess, MSAccess, Grids, MemDS;

type
  TCadastro_ProdutosFiliais = class(TForm)
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
    procedure bExportarClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_ProdutosFiliais: TCadastro_ProdutosFiliais;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_ProdutosFiliais.bExportarClick(Sender: TObject);
var
  i, b, c: integer;
begin
     if Grade.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhuma empresa selecionada para exportar.'+#13+#13+'Por favor selecione uma empresa na grade.', mtInformation, [mbOK], 0);
        Abort;
     end;

     Screen.Cursor := crSQLWait;
     with Dados do begin
          c := ProdutosCodigo.AsInteger;
          for i := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));

              // Verificando se o produto ja existe nas filiais.
              with tFiliais do begin
                   close;
                   sql.Clear;
                   sql.add('use '+tEmpresas.FieldByName('Banco_Dados').AsString);
                   sql.Add('select * from Produtos where Descricao = :pDesc');
                   parambyname('pDesc').AsString := ProdutosDescricao.asstring;
                   //sql.savetofile('c:\temp\Exportação_Produtos_Filiais.sql');
                   open;
              end;
              
              if tFiliais.RecordCount = 0 then begin
                 tFiliais.Append;
                          for b := 0 to pred(Produtos.FieldCount) do begin
                              tFiliais.FieldByName(Produtos.Fields[b].FieldName).Value := Produtos.FieldByName(Produtos.Fields[b].FieldName).Value;
                          end;
                          with tCodigo do begin
                               close;
                               sql.clear;
                               sql.add('use '+tEmpresas.FieldByName('Banco_Dados').AsString);
                               sql.add('select isnull(max(Codigo), 0)+1 as Codigo from Produtos');
                               open;
                          end;
                          tFiliais.FieldByName('Codigo').Value      := tCodigo.fieldbyname('Codigo').AsInteger;
                          tFiliais.FieldByName('Desativado').Value  := false;
                 tFiliais.Post;
              end else begin
                 MessageDlg('Atenção !'+#13+
                            'Já existe um produto cadastrado com esta descrição na empresa destino.'+#13+
                            'Destino: '+tEmpresas.FieldByName('Codigo').AsString+' - '+tEmpresas.FieldByName('Razao_Social').AsString+'  ('+tEmpresas.FieldByName('Estado').AsString+')'+#13+#13+
                            'Produto não exportado.', mtINformation, [mbOK], 0);
                 Screen.Cursor := crDefault;
              end;
          end;
          with Empresas do begin
               sql.Clear;
               sql.Add('select * from Empresas where Codigo = '+InttoStr(Menu_Principal.mEmpresa));
               open;
          end;
          with Produtos do begin
               sql.Clear;
               sql.Add('use '+Empresas.FieldByName('Banco_Dados').AsString);
               execute;
               sql.clear;
               sql.Add('select * from Produtos order by Descricao');
               open;
               Locate('Codigo', c, [loCaseInsensitive]);
          end;
     end;

     Screen.Cursor := crDefault;
     MessageDlg('Exportação do produto terminada.', mtInformation, [mbOK], 0);
     close;
end;

procedure TCadastro_ProdutosFiliais.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_ProdutosFiliais.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_ProdutosFiliais.Release;
      Cadastro_ProdutosFiliais := nil;
end;

procedure TCadastro_ProdutosFiliais.FormShow(Sender: TObject);
begin
      With Dados do begin
           with Empresas do begin 
                sql.clear;
                sql.add('select * from Empresas where Codigo = '+InttoStr(Menu_Principal.mEmpresa));
                open;
           end;
           with tEmpresas do begin 
                sql.clear;
                sql.add('select * from Empresas');
                sql.add('where Codigo <> :pCodigo');
                sql.add('and substring(cnpj, 1, 8) = :pCNPJ');
                sql.add('order  by Razao_social, CNPJ');
                parambyname('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                parambyname('pCNPJ').AsString   := Copy(EmpresasCNPJ.AsString,1,8);
                open;
                locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
           end;
      End;
end;



end.
