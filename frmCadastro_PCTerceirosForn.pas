unit frmCadastro_PCTerceirosForn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls,
  DBGrids, RXDBCtrl, Vcl.StdCtrls, DBCtrls, Vcl.ComCtrls, Buttons, Grids, MemDS, System.UITypes;

type
  TCadastro_PCTerceirosForn = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    GradePlano: TRxDBGrid;
    GradeForn: TRxDBGrid;
    Panel2: TPanel;
    StaticText5: TStaticText;
    cPesquisaForn: TEdit;
    bSelTodos: TSpeedButton;
    bAddTodos: TSpeedButton;
    bRemove: TSpeedButton;
    bRemoveTodos: TSpeedButton;
    tPesquisaForn: TMSQuery;
    tCodigo: TMSQuery;
    tRegistro: TMSQuery;
    tFornecedores: TMSQuery;
    tFornecedoresCodigo: TIntegerField;
    tFornecedoresCNPJ: TStringField;
    tFornecedoresNome: TStringField;
    dstFornecedores: TDataSource;
    StaticText3: TStaticText;
    cPesquisaConta: TEdit;
    tPesquisaConta: TMSQuery;
    tPlano: TMSQuery;
    dstPlano: TDataSource;
    tPlanoConta: TStringField;
    tPlanoDescricao: TStringField;
    tPlanoSaldo_Anterior: TCurrencyField;
    tPlanoDebito: TCurrencyField;
    tPlanoCredito: TCurrencyField;
    tPlanoSintetica: TBooleanField;
    tPlanoNatureza: TStringField;
    tPlanoLALUR: TBooleanField;
    tPlanoMostrar_Balanco: TBooleanField;
    tPlanoAtualiza_Anterior: TCurrencyField;
    tPlanoAtualiza_Debito: TCurrencyField;
    tPlanoAtualiza_Credito: TCurrencyField;
    tPlanoImprimir_Razao: TBooleanField;
    tPlanoData_Exportacao: TDateTimeField;
    tPlanoData_Inclusao: TDateTimeField;
    tPlanoNivel: TSmallintField;
    tPlanoConta_Grupo: TStringField;
    tPlanoCodigo_Terceiros: TStringField;
    tPlanoGrupo: TStringField;
    tPlanoOrigem: TStringField;
    Panel3: TPanel;
    RxLabel2: TRxLabel;
    Panel4: TPanel;
    RxLabel3: TRxLabel;
    pConta: TPanel;
    tPlanoCodigo: TStringField;
    tEmpresas: TMSQuery;
    tFiliais: TMSQuery;
    tPlanoConta_ECF: TStringField;
    tPlanoSelecao: TBooleanField;
    tPlanoPessoa: TStringField;
    tPlanoCNPJ_CPF: TStringField;
    tFornecedoresPessoa: TStringField;
    tFornecedoresPais: TStringField;
    tPlanoConta_Resultado: TBooleanField;
    tPlanoDRE: TBooleanField;
    tPlanoEmpresa: TStringField;
    tPlanoTipo_Terceiros: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bAddTodosClick(Sender: TObject);
    procedure cPesquisaFornChange(Sender: TObject);
    procedure bSelTodosClick(Sender: TObject);
    procedure bRemoveTodosClick(Sender: TObject);
    procedure GradePlanoEnter(Sender: TObject);
    procedure cPesquisaContaChange(Sender: TObject);
    procedure bRemoveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_PCTerceirosForn: TCadastro_PCTerceirosForn;

implementation

uses frmDMContab, frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_PCTerceirosForn.bSairClick(Sender: TObject);
begin
      With Dados do begin
           Fornecedores.Close;
      End;
      Close;
end;

procedure TCadastro_PCTerceirosForn.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_PCTerceirosForn.Release;
      Cadastro_PCTerceirosForn := nil;
end;

procedure TCadastro_PCTerceirosForn.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

           tEmpresas.SQL.Clear;
           tEmpresas.SQL.Add('SELECT * FROM Empresas WHERE SUBSTRING(CNPJ, 1, 8) = :pCNPJ');
           tEmpresas.ParamByName('pCNPJ').AsString := Copy(EmpresasCNPJ.AsString,1,8);
           tEmpresas.Open;
           
           pConta.Caption := 'CONTA :'+PlanoContasCodigo.AsString  + '    '+PlanoContasConta.AsString + '    '+PlanoContasDescricao.AsString;
           
           tPlano.SQL.Clear;
           tPlano.SQL.Add('SELECT *');
           tPlano.SQL.Add('FROM  PlanoContas');
           tPlano.SQL.Add('WHERE Conta LIKE :pConta ');
           tPlano.SQL.Add('AND   Tipo_Terceiros = :pTipo');
           tPlano.SQL.Add('AND   ISNULL(Codigo_Terceiros, '''') <> '''' ');
           tPlano.SQL.Add('ORDER BY Descricao');
           tPlano.ParamByName('pConta').AsString := PlanoContasConta.AsString + '%';
           tPlano.ParamByName('pTipo').AsString  := PlanoContasTipo_Terceiros.AsString;
           tPlano.Open;

           tPlanoConta.EditMask := EmpresasMascara_PlanoContas.AsString+';0; ';

           tFornecedores.SQL.Clear;
           tFornecedores.SQL.Add('SELECT Codigo');
           tFornecedores.SQL.Add('      ,Nome');
           tFornecedores.SQL.Add('      ,Pais');
           if PlanoContasTipo_Terceiros.AsString = 'FN' then begin
              tFornecedores.SQL.Add('      ,CNPJ   = CASE WHEN CAST(CNPJ AS bigint) > 0 THEN CNPJ ELSE CPF END');
              tFornecedores.SQL.Add('      ,Pessoa = CASE WHEN CAST(CNPJ AS bigint) > 0 THEN ''JUR'' ELSE ''FIS'' END');
           end else begin
              tFornecedores.SQL.Add('      ,CNPJ   = ''00000000000000'' ');
              tFornecedores.SQL.Add('      ,Pessoa = ''JUR'' ');
           end;
           tFornecedores.SQL.Add('FROM  Fornecedores');

           If PlanoContasTipo_Terceiros.AsString = 'FN' then begin
              tFornecedores.SQL.Add('WHERE  Pais = ''1058'' ');
           end else begin
              tFornecedores.SQL.Add('WHERE  Pais <> ''1058'' ');
           End;
           tFornecedores.SQL.Add('AND    ISNULL(Conta, '''') = '''' ');

           tFornecedores.SQL.Add('AND Ativo = 1');
           tFornecedores.SQL.Add('ORDER  BY Nome');
           //tFornecedores.SQL.SavetoFile('c:\temp\Plano_Terceiros_FE.sql');
           tFornecedores.Open;
      End;
      
      Screen.Cursor := crDefault;
end;

procedure TCadastro_PCTerceirosForn.bAddTodosClick(Sender: TObject);
Var
    mCod,
    Linha: Integer;
begin
      If GradeForn.SelCount = 0 then begin
         Showmessage('Não há nenhum fornecedor selecionado.');
         Abort;
      End;

      If MessageDlg('Atenção!'+#13+#13+'Isso irá cadastrar as contas de todos os "Fornecedores" selecionados ao "Plano de Terceiros".'+#13+#13'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         Abort;

      With dmContab, Dados do begin
           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT ISNULL(MAX(CAST(Codigo AS int)), 0)+1 AS Codigo FROM PlanoContas WHERE SUBSTRING(Conta, 1, 1) = :pConta');
           tCodigo.ParamByName('pConta').AsString := Trim(Copy(PlanoContasConta.AsString, 1, 1));
           tCodigo.Open;

           mCod := tCodigo.FieldByName('Codigo').AsInteger;

           tFornecedores.DisableControls;
           Fornecedores.DisableControls;
           tPlano.DisableControls;

           GradeForn.DisableScroll;
           GradePlano.DisableScroll;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := GradeForn.SelectedRows.Count-1;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando as contas ao plano...';
           Janela_Processamento.Show;

           For Linha := 0 to GradeForn.SelectedRows.Count-1 do begin
               GradeForn.DataSource.DataSet.GotoBookMark((GradeForn.SelectedRows.Items[Linha]));

               tPlano.Append;
                      tPlanoConta.Value             := PlanoContasConta.Value;
                      tPlanoCodigo.AsString         := InttoStr(mCod);
                      tPlanoDescricao.Value         := tFornecedores.FieldByName('Nome').AsAnsiString;
                      tPlanoSaldo_Anterior.Value    := 0;
                      tPlanoDebito.Value            := 0;
                      tPlanoCredito.Value           := 0;
                      tPlanoSintetica.Value         := false;
                      tPlanoNatureza.Value          := PlanoContasNatureza.Value;
                      tPlanoLALUR.Value             := PlanoContasLALUR.Value;
                      tPlanoMostrar_Balanco.Value   := PlanoContasMostrar_Balanco.Value;
                      tPlanoAtualiza_Anterior.Value := 0;
                      tPlanoAtualiza_Debito.Value   := 0;
                      tPlanoAtualiza_Credito.Value  := 0;
                      tPlanoImprimir_Razao.Value    := PlanoContasImprimir_Razao.Value;
                      tPlanoData_Inclusao.Value     := Date;
                      tPlanoNivel.Value             := PlanoContasNivel.Value;
                      tPlanoOrigem.Value            := PlanoContasOrigem.Value;
                      tPlanoEmpresa.Value           := PlanoContasEmpresa.Value;
                      tPlanoTipo_Terceiros.Value    := PlanoContasTipo_Terceiros.Value;
                      tPlanoCodigo_Terceiros.Value  := tFornecedores.FieldByName('Codigo').AsAnsiString;
                      tPlanoGrupo.Value             := PlanoContasGrupo.Value;
                      tPlanoConta_Grupo.Value       := PlanoContasConta_Grupo.Value;
                      tPlanoCNPJ_CPF.Value          := tFornecedores.FieldByName('CNPJ').AsAnsiString;
                      if tFornecedores.FieldByName('Pessoa').AsString = 'JUR' then
                         tPlanoPessoa.Value := 'J';
                      if tFornecedores.FieldByName('Pessoa').AsString = 'FIS' then
                         tPlanoPessoa.Value := 'F';
               tPlano.Post;

               // Parametrizando as filiais.
               tEmpresas.First;
               tFiliais.SQL.Clear;
               while not tEmpresas.Eof do begin
                     tFiliais.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                     if PlanoContasTipo_Terceiros.AsString = 'FN' then begin
                        if tFornecedores.FieldByName('Pessoa').AsString = 'JUR' then
                           tFiliais.SQL.Add('UPDATE Fornecedores SET Conta = '+QuotedStr(InttoStr(mCod))+' WHERE SUBSTRING(CNPJ, 1, 8) = '+QuotedStr(Copy(tFornecedores.FieldByName('CNPJ').AsString, 1, 8)))
                        else
                           tFiliais.SQL.Add('UPDATE Fornecedores SET Conta = '+QuotedStr(InttoStr(mCod))+' WHERE CPF = '+QuotedStr(tFornecedores.FieldByName('CNPJ').AsString));
                     end else begin
                        if PlanoContasTipo_Terceiros.AsString = 'FE' then begin
                           tFiliais.SQL.Add('UPDATE Fornecedores SET Conta = '+QuotedStr(InttoStr(mCod))+' WHERE Nome = '+QuotedStr(tFornecedores.FieldByName('Nome').AsString)+' AND Pais = '+QuotedStr(tFornecedores.FieldByName('Pais').AsString) );
                        end;
                     end;

                     tEmpresas.Next;
               end;
               //tFiliais.SQL.SaveToFile('c:\temp\Plano_Terceiros_Filiais'+inttostr(mCod)+'.sql');
               tFiliais.Execute;

               Inc(mCod);

               Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
               Application.ProcessMessages;
           End;

           tFornecedores.EnableControls;
           Fornecedores.EnableControls;
           tPlano.EnableControls;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');

           tFornecedores.Close;
           tFornecedores.Open;
           GradeForn.EnableScroll;
           GradePlano.EnableScroll;
           tPlano.First;

           Janela_Processamento.Close;

           bSelTodos.Tag := 0;
      End;
end;

procedure TCadastro_PCTerceirosForn.cPesquisaFornChange(Sender: TObject);
begin
      With Dados do begin
           If tFornecedores.Locate('Nome', cPesquisaForn.Text, [loPartialKey]) = False then begin
              tPesquisaForn.SQL.Clear;
              tPesquisaForn.SQL.Add('SELECT * FROM Fornecedores WHERE(Nome LIKE'+QuotedStr('%'+cPesquisaForn.Text+'%')+')');
              tPesquisaForn.Open;
              tFornecedores.Locate('Codigo', tPesquisaForn.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
           End;
      End;
end;

procedure TCadastro_PCTerceirosForn.bSelTodosClick(Sender: TObject);
begin

      If bSelTodos.Tag = 1 then begin
         GradeForn.UnselectAll;
         bSelTodos.Tag := 0;
      end else begin
         GradeForn.SelectAll;
         bSelTodos.Tag := 1;
      End;   
end;

procedure TCadastro_PCTerceirosForn.bRemoveTodosClick(Sender: TObject);
Var
    mSQL: WideString;
begin
      If MessageDlg('Atenção!'+#13+#13+
                    'Isso irá apagar todas as contas de "Terceiros" do Plano de Contas.'+#13+#13+
                    'As contas que contém lançamentos não serão excluídas.'+#13+#13+
                    'Deseja realmente continuar?', mtWarning, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;   
      
      if tPlano.RecordCount > 0 then begin
         With Dados, dmContab do begin
              mSQL := tPlano.SQL.Text;

              tPlano.SQL.Clear;
              tPlano.SQL.Add('DELETE FROM PlanoContas');
              tPlano.SQL.Add('WHERE  Tipo_Terceiros = :pTipo');
              tPlano.SQL.Add('  AND  ISNULL(Codigo_Terceiros, '''') <> '''' ');
              tPlano.SQL.Add('  AND  (SELECT COUNT(*) FROM Lancamentos WHERE Conta_Debito = Codigo OR Conta_Credito = Codigo) = 0');
              tPlano.ParamByName('pTipo').AsString := PlanoContasTipo_Terceiros.AsString;
              tPlano.Execute;

              Fornecedores.SQL.Clear;
              Fornecedores.SQL.Add('UPDATE Fornecedores SET Conta = NULL');
              Fornecedores.SQL.Add('WHERE (SELECT COUNT(*) FROM '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas WHERE Codigo_Terceiros = Fornecedores.Codigo AND Tipo_Terceiros = :pTipo) = 0');
              if PlanoContasTipo_Terceiros.AsString = 'FN' then begin
                 Fornecedores.SQL.Add('AND  Pais = ''1058'' ');
              end else begin
                 Fornecedores.SQL.Add('AND  Pais <> ''1058'' ');
              end;
              Fornecedores.ParamByName('pTipo').AsString := PlanoContasTipo_Terceiros.AsString;
              Fornecedores.Execute;

              tPlano.SQL.Clear;
              tPlano.SQL.Add(mSQL);
              tPlano.ParamByName('pConta').AsString := PlanoContasConta.AsString+'%';
              tPlano.ParamByName('pTipo').AsString  := PlanoContasTipo_Terceiros.AsString;
              tPlano.Open;

              // Parametriza também os fornecedores das filiais.
              tEmpresas.First;
              tFiliais.SQL.Clear;
              while not tEmpresas.Eof do begin
                    tFiliais.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                    tFiliais.SQL.Add('UPDATE Fornecedores SET Conta = NULL WHERE (SELECT COUNT(*) FROM '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas WHERE (CNPJ_CPF = Fornecedores.CNPJ OR CNPJ_CPF = Fornecedores.CPF) AND Tipo_Terceiros = :pTipo) = 0');
                    if PlanoContasTipo_Terceiros.AsString = 'FN' then begin
                       tFiliais.SQL.Add('AND  Pais = ''1058'' ');
                    end else begin
                       tFiliais.SQL.Add('AND  Pais <> ''1058'' ');
                    end;
                    tFiliais.ParamByName('pTipo').AsString := PlanoContasTipo_Terceiros.AsString;
                    tEmpresas.Next;
              end;
              tFiliais.Execute;

              Fornecedores.SQL.Clear;
              Fornecedores.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
              Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
              Fornecedores.Open;
              Fornecedores.SQL.Clear;
              Fornecedores.SQL.Add('SELECT * FROM Fornecedores');

              tFornecedores.Close;
              tFornecedores.Open;
              bSelTodos.Tag := 0;
         end;
      end;
end;

procedure TCadastro_PCTerceirosForn.GradePlanoEnter(Sender: TObject);
begin
      GradeForn.UnselectAll
end;

procedure TCadastro_PCTerceirosForn.cPesquisaContaChange(Sender: TObject);
begin
      With dmContab do begin
           If tPlano.Locate('Descricao', cPesquisaConta.Text, [loPartialKey]) = False then begin
              tPesquisaConta.SQL.Clear;
              tPesquisaConta.SQL.Add('SELECT * FROM tPlano WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisaConta.Text+'%')+')');
              tPesquisaConta.Open;
              If tPesquisaConta.RecordCount > 0 then
                 tPlano.Locate('Codigo', tPesquisaConta.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
           End;
      End;
end;

procedure TCadastro_PCTerceirosForn.bRemoveClick(Sender: TObject);
begin
      If tPlano.RecordCount = 0 then begin
         Showmessage('Não há contas no plano de contas de terceiros para remover.');
         Abort;
      End;

      If MessageDlg('Atenção!'+#13+#13+'Isso irá remover a conta selecionada do "Plano de Terceiros".'+#13+#13'Deseja realmente continuar?', mtWarning, [mbYes, mbNo], 0) = mrNo then
         Abort;

      With Dados, dmContab do begin
           tPesquisaConta.SQL.Clear;
           tPesquisaConta.SQL.Add('SELECT COUNT(*) AS Lancamentos FROM Lancamentos WHERE Conta_Debito = :pCodigo OR Conta_Credito = :pCodigo');
           tPesquisaConta.ParamByName('pCodigo').AsString := tPlanoConta.AsString;
           tPesquisaConta.Open;

           If tPesquisaConta.FieldByName('Lancamentos').AsInteger > 0 then begin
              MessageDlg('Atenção!'+#13+#13+'Existem lançamentos feitos para esta conta.'+#13+#13+'Esta conta não sera excluída!', mtError, [mbOK], 0);
              Abort;
           End;

           // Parametriza também os fornecedores das filiais.
           tEmpresas.First;
           tFiliais.SQL.Clear;
           while not tEmpresas.Eof do begin
                 tFiliais.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                 tFiliais.SQL.Add('UPDATE Fornecedores SET Conta = NULL');
                 tFiliais.SQL.Add('WHERE (CNPJ = :pCNPJ OR CPF = :pCNPJ)');
                 if PlanoContasTipo_Terceiros.AsString = 'FN' then begin
                    Fornecedores.SQL.Add('AND  Pais = ''1058'' ');
                 end else begin
                    Fornecedores.SQL.Add('AND  Pais <> ''1058'' ');
                 end;
                 tFiliais.ParamByName('pCNPJ').AsString := tPlano.FieldByName('CNPJ_CPF').AsString;
                 tEmpresas.Next;
           end;
           //tFiliais.SQL.SaveToFile('c:\temp\Plano_Terceiros_Filiais.sql');
           tFiliais.Execute;

           tPlano.Delete;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.Open;
           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');

           tPlano.Close;
           tPlano.Open;
           
           tFornecedores.Refresh;
           bSelTodos.Tag := 0;
      End;
end;

end.
