unit frmCadastro_ClassificacaoFiliais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ExtCtrls, DBGrids, RXDBCtrl, Vcl.ComCtrls, Grids, MemDS, system.UITypes;

type
  TCadastro_ClassificacaoFiliais = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bExportar: TButton;
    tFiliais: TMSQuery;
    tEmpresas: TMSQuery;
    dstEmpresas: TDataSource;
    dstFiliais: TDataSource;
    cContas: TRadioGroup;
    tFiliaisCodigo: TStringField;
    tFiliaisDescricao: TStringField;
    tFiliaisTipo: TStringField;
    tFiliaisRelatorio: TBooleanField;
    tFiliaisCusto: TBooleanField;
    tFiliaisProvisao_ContaD: TStringField;
    tFiliaisProvisao_ContaC: TStringField;
    tFiliaisProvisao_Historico: TSmallintField;
    tFiliaisPagamento_Historico: TSmallintField;
    tFiliaisAdiantamento: TBooleanField;
    tFiliaisTipo_Lancamento: TStringField;
    tFiliaisPagamento_Conta: TStringField;
    tFiliaisCambio: TBooleanField;
    tFiliaisSomente_Faturamento: TBooleanField;
    tFiliaisDevolucao: TBooleanField;
    tFiliaisTitulo: TBooleanField;
    tFiliaisAliquota_PIS: TFloatField;
    tFiliaisAliquota_COFINS: TFloatField;
    tFiliaisCST_PIS: TStringField;
    tFiliaisCST_COFINS: TStringField;
    tFiliaisNivel: TSmallintField;
    tFiliaisBCCredito: TSmallintField;
    tFiliaisBaixa_Automatica: TBooleanField;
    tFiliaisDespesa_Fixa: TBooleanField;
    tFiliaisDesativada: TBooleanField;
    tFiliaisTransferencia: TBooleanField;
    tFiliaisNota_Referencia: TBooleanField;
    tFiliaisModalidade_Importacao: TSmallintField;
    tFiliaisFechamento_Processo: TBooleanField;
    tFiliaisProcesso_Obrigatorio: TBooleanField;
    tFiliaisCusto_Seletivo: TBooleanField;
    tFiliaisCusto_Entrada: TBooleanField;
    tFiliaisNatureza_Receita: TStringField;
    tFiliaisCusto_Outros: TBooleanField;
    tFiliaisBoleto: TBooleanField;
    tFiliaisDRE: TSmallintField;
    tFiliaisDRE_Principal: TSmallintField;
    tFiliaisDRE_Juros: TSmallintField;
    tFiliaisDRE_Desconto: TSmallintField;
    tFiliaisCodigo_RFB: TStringField;
    tFiliaisDRE_DescontoDupl: TSmallintField;
    tClassificacao: TMSQuery;
    dsClassificacao: TDataSource;
    TermEmpresa: TProgressBar;
    TermClass: TProgressBar;
    cSubst: TCheckBox;
    StaticText5: TStaticText;
    cSenha: TEdit;
    procedure bExportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure cSenhaChange(Sender: TObject);
    Function  ChecaSenha: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_ClassificacaoFiliais: TCadastro_ClassificacaoFiliais;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_ClassificacaoFiliais.bExportarClick(Sender: TObject);
var
  i: integer;
  b: integer;
begin
     if not ChecaSenha then Abort;

     Screen.Cursor        := crSQLWait;
     TermEmpresa.Max      := Grade.SelectedRows.Count;
     TermEmpresa.Position := 1;
     
     with Dados do begin
          tClassificacao.SQL.Clear;
          if cContas.ItemIndex = 0 then
             tClassificacao.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE ISNULL(Desativada, 0) = 0')
          else
             tClassificacao.SQL.Add('SELECT * FROM ClassificacaoFinanceira');
          tClassificacao.Open;

          for i := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));

              TermClass.Max        := tClassificacao.RecordCount;
              TermClass.Position   := 0;

              tClassificacao.First;
              while not tClassificacao.Eof do begin
                    // Verificando se a classificação ja existe no destino.
                    tFiliais.Close;
                    tFiliais.SQL.Clear;
                    tFiliais.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                    tFiliais.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE Codigo = :pCodigo');
                    tFiliais.ParamByName('pCodigo').AsString := tClassificacao.FieldByName('Codigo').AsString;
                    tFiliais.Open;

                    if tFiliais.RecordCount = 0 then begin
                       tFiliais.Append;
                                for b := 0 to (tClassificacao.FieldCount -1) do begin
                                    tFiliais.FieldByName(tClassificacao.Fields[b].FieldName).Value := tClassificacao.FieldByName(tClassificacao.Fields[b].FieldName).Value;
                                end;
                       tFiliais.Post;
                    end else begin
                       if cSubst.Checked then begin
                          tFiliais.Edit;
                                   for b := 0 to (tClassificacao.FieldCount -1) do begin
                                       tFiliais.FieldByName(tClassificacao.Fields[b].FieldName).Value := tClassificacao.FieldByName(tClassificacao.Fields[b].FieldName).Value;
                                   end;
                          tFiliais.Post;
                       end;
                    end;

                    tClassificacao.Next;
                    TermClass.Position := TermClass.Position + 1;
              end;
              TermEmpresa.Position := TermEmpresa.Position + 1; 
          end;


          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
          Empresas.Open;
          
          Banco_Empresas.Connected := false;
          Banco_Empresas.Server    := Banco.Server;
          Banco_Empresas.Database  := Empresas.FieldByName('Banco_Dados').AsString;
          Banco_Empresas.Username  := Menu_Principal.mBancoUsuario;
          Banco_Empresas.Password  := Menu_Principal.mBancoSenha;
          Banco_Empresas.Connected := true;

          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
          ClassificacaoFinanceira.Execute;
          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(ISNULL(Desativada, 0) <> 1) ORDER BY Descricao, Codigo');
          ClassificacaoFinanceira.Open;
          
     end;

     Screen.Cursor := crDefault;

     MessageDlg('Exportação das classificações terminada.', mtInformation, [mbOK], 0);

     Close;
end;

procedure TCadastro_ClassificacaoFiliais.FormShow(Sender: TObject);
begin
      With Dados do begin
           tEmpresas.SQL.Clear;
           tEmpresas.SQL.Add('SELECT * FROM Empresas');
           tEmpresas.SQL.Add('ORDER  BY Razao_Social, CNPJ');
           tEmpresas.Open;
           tEmpresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
      End;

end;

procedure TCadastro_ClassificacaoFiliais.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_ClassificacaoFiliais.Release;
      Cadastro_ClassificacaoFiliais := nil;
end;

procedure TCadastro_ClassificacaoFiliais.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_ClassificacaoFiliais.cSenhaChange(Sender: TObject);
begin
      if cSenha.Text <> '' then begin
         bExportar.Enabled := true;
      end;
end;

Function  TCadastro_ClassificacaoFiliais.ChecaSenha: Boolean;
begin
      with Dados do begin
           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE Matricula = '+QuotedStr(Menu_Principal.mUsuarioCodigo));
           Usuarios.Open;

           result := true;
           if UsuariosChave.Value <> cSenha.Text then begin
              result := false;
              MessageDlg('Erro!'+#13+#13+'Senha do "Administrador" inválida.', mtError, [mbOK], 0);
           end;
      end;
end;

end.
