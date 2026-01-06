unit frmCadastro_ClientesFiliais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DBGrids, RXDBCtrl, DB,
  DBAccess, MSAccess, Grids, MemDS;

type
  TCadastro_ClientesFiliais = class(TForm)
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
  Cadastro_ClientesFiliais: TCadastro_ClientesFiliais;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_ClientesFiliais.bExportarClick(Sender: TObject);
var
  i, b, c: integer;
begin
     if Grade.SelectedRows.Count = 0 then begin
        MessageDlg('Nenhuma empresa selecionada para exportar.'+#13+#13+'Por favor selecione uma empresa na grade.', mtInformation, [mbOK], 0);
        Abort;
     end;

     Screen.Cursor := crSQLWait;
     with Dados do begin
          c := ClientesCodigo.AsInteger;
          for i := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));

              // Verificando se o cliente ja existe nas filiais.
              with tFiliais do begin
                   Close;
                   SQL.Clear;
                   SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                   if Trim(ClientesCNPJ.AsString) <> '' then begin
                      SQL.Add('SELECT * FROM Clientes WHERE CNPJ = :pCNPJ');
                      ParamByName('pCNPJ').AsString := ClientesCNPJ.AsString;
                   end else begin
                      SQL.Add('SELECT * FROM Clientes WHERE CPF = :pCPF');
                      ParamByName('pCPF').AsString := ClientesCPF.AsString;
                   end;
                   //SQL.SaveToFile('c:\temp\Exportação_Clientes_Filiais.sql');
                   Open;
              end;

              if tFiliais.RecordCount = 0 then begin
                 tFiliais.Append;
                          For b := 0 to (Clientes.FieldCount -1) do begin
                              tFiliais.FieldByName(Clientes.Fields[b].FieldName).Value := Clientes.FieldByName(Clientes.Fields[b].FieldName).Value;
                          End;

                          tCodigo.Close;
                          tCodigo.SQL.Clear;
                          tCodigo.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                          tCodigo.SQl.Add('SELECT MAX(Codigo) AS Codigo FROM Clientes');
                          tCodigo.Open;

                          tFiliais.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
                          tFiliais.FieldByName('Ativo').Value  := true;
                 tFiliais.Post;
              end else begin
                 MessageDlg('Atenção !'+#13+
                            'Já existe um cliente cadastrado com este número de "CNPJ/CPF" na empresa destino.'+#13+
                            'Destino: '+tEmpresas.FieldByName('Codigo').AsString+' - '+tEmpresas.FieldByName('Razao_Social').AsString+'  ('+tEmpresas.FieldByName('Estado').AsString+')'+#13+#13+
                            'Cliente não exportado.', mtINformation, [mbOK], 0);
                 Screen.Cursor := crDefault;
              end;
          end;

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
          Clientes.SQL.Clear;
          Clientes.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
          Clientes.Execute;
          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
          Clientes.Open;
          Clientes.Locate('Codigo', c, [loCaseInsensitive]);
     end;

     Screen.Cursor := crDefault;

     MessageDlg('Exportação do cliente terminada.', mtInformation, [mbOK], 0);

     Close;
end;

procedure TCadastro_ClientesFiliais.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_ClientesFiliais.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_ClientesFiliais.Release;
      Cadastro_ClientesFiliais := nil;
end;

procedure TCadastro_ClientesFiliais.FormShow(Sender: TObject);
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
           tEmpresas.ParamByName('pCNPJ').AsString   := Copy(EmpresasCNPJ.AsString,1,8);
           tEmpresas.Open;
           tEmpresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
      End;
end;

procedure TCadastro_ClientesFiliais.bContabClick(Sender: TObject);
var
  i: integer;
begin
     Screen.Cursor := crSQLWait;
     if Grade.SelectedRows.count = 0 then begin
        MessageDlg('Nenhuma empresa selecionada para exportar.'+#13+#13+'Por favor selecione uma empresa na grade.', mtInformation, [mbOK], 0);
        Screen.Cursor := crDefault;
        Abort;
     end;

     with Dados do begin
          Clientes.DisableControls;
          for i := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));

              Clientes.First;
              while not Clientes.Eof do begin
                    tContas.Close;
                    tContas.SQL.Clear;
                    tContas.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                    tContas.SQL.Add('UPDATE Clientes SET Conta_Ativo        = :pAtivo');
                    tContas.SQL.Add('                   ,Conta_Adiantamento = :pAdiant');
                    tContas.SQL.Add('                   ,Conta_Devolucao    = :pDevol');
                    if (Trim(ClientesEstado.AsString) <> 'EX') then begin
                       if Trim(ClientesCNPJ.AsString) <> '' then begin
                          tContas.SQL.Add('WHERE CNPJ = :pCNPJ');
                          tContas.ParamByName('pCNPJ').AsString   := ClientesCNPJ.AsString;
                          tContas.ParamByName('pAtivo').AsString  := ClientesConta_Ativo.AsString;
                          tContas.ParamByName('pAdiant').AsString := ClientesConta_Adiantamento.AsString;
                          tContas.ParamByName('pDevol').AsString  := ClientesConta_Devolucao.AsString;
                          tContas.Execute;
                       end else begin
                          if Trim(ClientesCPF.AsString) <> '' then begin
                             tContas.SQL.Add('WHERE CPF = :pCPF');
                             tContas.ParamByName('pCPF').AsString := ClientesCPF.AsString;
                             tContas.ParamByName('pAtivo').AsString  := ClientesConta_Ativo.AsString;
                             tContas.ParamByName('pAdiant').AsString := ClientesConta_Adiantamento.AsString;
                             tContas.ParamByName('pDevol').AsString  := ClientesConta_Devolucao.AsString;
                             tContas.Execute;
                          end;
                       end;
                    end else begin
                       tContas.SQL.Add('WHERE Nome = :pNome AND Estado = ''EX'' AND Codigo = :pCod');
                       tContas.ParamByName('pNome').AsString   := ClientesNome.AsString;
                       tContas.ParamByName('pCod').AsInteger   := ClientesCodigo.AsInteger;
                       tContas.ParamByName('pAtivo').AsString  := ClientesConta_Ativo.AsString;
                       tContas.ParamByName('pAdiant').AsString := ClientesConta_Adiantamento.AsString;
                       tContas.ParamByName('pDevol').AsString  := ClientesConta_Devolucao.AsString;
                       tContas.Execute;
                    end;

                    Clientes.Next;
              end;
          end;
          Clientes.EnableControls;

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
          Clientes.SQL.Clear;
          Clientes.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
          Clientes.Execute;
          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
          Clientes.Open;
     end;

     Screen.Cursor := crDefault;

     MessageDlg('Exportação de parâmentrização contabil terminda.', mtInformation, [mbOK], 0);

     Close;
end;

end.
