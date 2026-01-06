unit frmCadastro_FornecedoresFiliais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DBGrids, RXDBCtrl, DB,
  DBAccess, MSAccess, Grids, MemDS;

type
  TCadastro_FornecedoresFiliais = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bExportar: TButton;
    tCodigo: TMSQuery;
    tCodigoCodigo: TIntegerField;
    tFiliais: TMSQuery;
    tEmpresas: TMSQuery;
    dstEmpresas: TDataSource;
    dstFiliais: TDataSource;
    bContab: TButton;
    tContas: TMSQuery;
    procedure bExportarClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bContabClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_FornecedoresFiliais: TCadastro_FornecedoresFiliais;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_FornecedoresFiliais.bExportarClick(Sender: TObject);
var
  i, b, f: Integer;
begin
     Screen.Cursor := crSQLWait;
     With Dados do begin
          f := FornecedoresCodigo.AsInteger;
          For i := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));

              // Verificando se o cliente ja existe nas filiais.
              If Trim(FornecedoresCNPJ.AsString) = '' then begin
                 If MessageDlg('Falta informar o CNPJ do fornecedor!'+#13+#13+'Exportar este Fornecedor assim mesmo?', mtInformation, [mbYes, mbNo], 0) = mrNo then
                    Abort;
              End;

              tFiliais.Close;
              tFiliais.SQL.Clear;
              tFiliais.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
              tFiliais.SQL.Add('SELECT * FROM Fornecedores WHERE CNPJ = :pCNPJ');
              tFiliais.ParamByName('pCNPJ').AsString := FornecedoresCNPJ.AsString;
              tFiliais.Open;

              If (tFiliais.RecordCount = 0) or (Trim(FornecedoresCNPJ.AsString) = '') then begin
                 tFiliais.Append;
                          For b := 0 to (Fornecedores.FieldCount -1) do begin
                              tFiliais.FieldByName(Fornecedores.Fields[b].FieldName).Value := Fornecedores.FieldByName(Fornecedores.Fields[b].FieldName).Value;
                          End;

                          tCodigo.Close;
                          tCodigo.SQL.Clear;
                          tCodigo.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                          tCodigo.SQl.Add('SELECT MAX(Codigo) AS Codigo FROM Fornecedores');
                          tCodigo.Open;

                          tFiliais.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
                          tFiliais.FieldByName('Ativo').Value  := true;
                 tFiliais.Post;
              End;
          End;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
          Empresas.Open;
          {
          Banco_Empresas.Connected := false;
          Banco_Empresas.Server    := Banco.Server;
          Banco_Empresas.Database  := Empresas.FieldByName('Banco_Dados').AsString;
          Banco_Empresas.Username  := Menu_Principal.mBancoUsuario;
          Banco_Empresas.Password  := Menu_Principal.mBancoSenha;
          Banco_Empresas.Connected := true;
          }
          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
          Fornecedores.Execute;
          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
          Fornecedores.Open;
          Fornecedores.Locate('Codigo', f, [loCaseInsensitive]);

     End;
     Screen.Cursor := crDefault;
     MessageDlg('Exportação do fornecedor terminada.', mtInformation, [mbOK], 0);
     Close;
end;

procedure TCadastro_FornecedoresFiliais.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_FornecedoresFiliais.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_FornecedoresFiliais.Release;
      Cadastro_FornecedoresFiliais := nil;
end;

procedure TCadastro_FornecedoresFiliais.FormShow(Sender: TObject);
begin
      With Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

           tEmpresas.SQL.Clear;
           tEmpresas.SQL.Add('SELECT * FROM Empresas');
           tEmpresas.SQL.Add('WHERE Codigo <> :pCodigo');
           tEmpresas.SQL.Add('  AND SUBSTRING(CNPJ, 1, 8) = :pCNPJ');
           tEmpresas.SQL.Add('ORDER  BY Razao_Social, CNPJ');
           tEmpresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           tEmpresas.ParamByName('pCNPJ').AsString    := Copy(EmpresasCNPJ.AsString,1,8);
           tEmpresas.Open;
           tEmpresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
      End;
end;

procedure TCadastro_FornecedoresFiliais.bContabClick(Sender: TObject);
var
   i: integer;
begin
     Screen.Cursor := crSQLWait;
     if Grade.SelCount = 0 then begin
        MessageDlg('Nenhuma empresa selecionada para exportação!', mtError, [mbOK], 0);
        Screen.Cursor := crDefault;
        Abort;
     end;

     with Dados do begin
          Fornecedores.DisableControls;
          for i := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));

              Fornecedores.First;
              while not Fornecedores.Eof do begin
                    tContas.Close;
                    tContas.SQL.Clear;
                    tContas.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                    tContas.SQL.Add('UPDATE Fornecedores SET Conta              = :pConta');
                    tContas.SQL.Add('                       ,Conta_Adiantamento = :pAdiant');
                    tContas.SQL.Add('                       ,Conta_Devolucao    = :pDevol');
                    if (Trim(FornecedoresEstado.AsString) <> 'EX') then begin
                       if Trim(FornecedoresCNPJ.AsString) <> '' then begin
                          tContas.SQL.Add('WHERE CNPJ = :pCNPJ');
                          tContas.ParamByName('pCNPJ').AsString   := FornecedoresCNPJ.AsString;
                          tContas.ParamByName('pConta').AsString  := FornecedoresConta.AsString;
                          tContas.ParamByName('pAdiant').AsString := FornecedoresConta_Adiantamento.AsString;
                          tContas.ParamByName('pDevol').AsString  := FornecedoresConta_Devolucao.AsString;
                          tContas.Execute;
                       end else begin
                          if Trim(FornecedoresCPF.AsString) <> '' then begin
                             tContas.SQL.Add('WHERE CPF = :pCPF');
                             tContas.ParamByName('pCPF').AsString := FornecedoresCPF.AsString;
                             tContas.ParamByName('pConta').AsString  := FornecedoresConta.AsString;
                             tContas.ParamByName('pAdiant').AsString := FornecedoresConta_Adiantamento.AsString;
                             tContas.ParamByName('pDevol').AsString  := FornecedoresConta_Devolucao.AsString;
                             tContas.Execute;
                          end;
                       end;
                    end else begin
                       tContas.SQL.Add('WHERE Nome = :pNome AND Estado = ''EX'' AND Codigo = :pCod');
                       tContas.ParamByName('pNome').AsString   := FornecedoresNome.AsString;
                       tContas.ParamByName('pCod').AsInteger   := FornecedoresCodigo.AsInteger;
                       tContas.ParamByName('pConta').AsString  := FornecedoresConta.AsString;
                       tContas.ParamByName('pAdiant').AsString := FornecedoresConta_Adiantamento.AsString;
                       tContas.ParamByName('pDevol').AsString  := FornecedoresConta_Devolucao.AsString;
                       tContas.Execute;
                    end;

                    Fornecedores.Next;
              end;
          end;
          Fornecedores.EnableControls;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
          Empresas.Open;
{
          Banco_Empresas.Connected := false;
          Banco_Empresas.Server    := Banco.Server;
          Banco_Empresas.Database  := Empresas.FieldByName('Banco_Dados').AsString;
          Banco_Empresas.Username  := Menu_Principal.mBancoUsuario;
          Banco_Empresas.Password  := Menu_Principal.mBancoSenha;
          Banco_Empresas.Connected := true;
}
          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
          Fornecedores.Execute;
          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
          Fornecedores.Open;
     end;

     Screen.Cursor := crDefault;

     MessageDlg('Exportação de parâmentrização contabil terminda.', mtInformation, [mbOK], 0);

     Close;
end;



end.
