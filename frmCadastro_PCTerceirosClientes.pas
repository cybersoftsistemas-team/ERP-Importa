unit frmCadastro_PCTerceirosClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls, DBGrids,
  RXDBCtrl, Vcl.StdCtrls, DBCtrls, Vcl.ComCtrls, Buttons, Grids, MemDS, System.UITypes;

type
  TCadastro_PCTerceirosClientes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    GradePlano: TRxDBGrid;
    GradeClientes: TRxDBGrid;
    Panel2: TPanel;
    StaticText5: TStaticText;
    cPesquisaCli: TEdit;
    bSelTodos: TSpeedButton;
    bAddTodos: TSpeedButton;
    bRemove: TSpeedButton;
    bRemoveTodos: TSpeedButton;
    tPesquisaCli: TMSQuery;
    tCodigo: TMSQuery;
    tRegistro: TMSQuery;
    tClientes: TMSQuery;
    tClientesCodigo: TIntegerField;
    tClientesCNPJ: TStringField;
    tClientesNome: TStringField;
    dstClientes: TDataSource;
    StaticText3: TStaticText;
    cPesquisaConta: TEdit;
    tPesquisaConta: TMSQuery;
    tPlano: TMSQuery;
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
    tPlanoTipo_Terceiros: TStringField;
    tPlanoCodigo_Terceiros: TStringField;
    tPlanoGrupo: TStringField;
    tPlanoOrigem: TStringField;
    dstPlano: TDataSource;
    Panel3: TPanel;
    RxLabel4: TRxLabel;
    Panel4: TPanel;
    RxLabel2: TRxLabel;
    pConta: TPanel;
    tPlanoCodigo: TStringField;
    tEmpresas: TMSQuery;
    tFiliais: TMSQuery;
    tClientesPessoa: TStringField;
    tPlanoConta_ECF: TStringField;
    tPlanoSelecao: TBooleanField;
    tPlanoPessoa: TStringField;
    tPlanoCNPJ_CPF: TStringField;
    tPlanoConta_Resultado: TBooleanField;
    tPlanoDRE: TBooleanField;
    tPlanoEmpresa: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bAddTodosClick(Sender: TObject);
    procedure cPesquisaCliChange(Sender: TObject);
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
  Cadastro_PCTerceirosClientes: TCadastro_PCTerceirosClientes;

implementation

uses frmDMContab, frmDados, frmJanela_Processamento, frmCadastro_PlanoContas, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_PCTerceirosClientes.bSairClick(Sender: TObject);
begin
      With Dados do begin
           Clientes.Close;
      End;
      Close;
end;

procedure TCadastro_PCTerceirosClientes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_PCTerceirosClientes.Release;
      Cadastro_PCTerceirosClientes := nil;
end;

procedure TCadastro_PCTerceirosClientes.FormShow(Sender: TObject);
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
      
//           pConta.Caption := 'CONTA :'+PlanoContasCodigo.AsString  + '    '+PlanoContasConta.AsString + '    '+PlanoContasDescricao.AsString+'   ('+Cadastro_PlanoContas.cTipo.Text+')';

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

           tClientes.SQL.Clear;
           tClientes.SQL.Add('SELECT Codigo');
           tClientes.SQL.Add('      ,Nome');
           tClientes.SQL.Add('      ,CNPJ   = CASE WHEN CNPJ <> '''' THEN CNPJ ELSE CPF END');
           tClientes.SQL.Add('      ,Pessoa = CASE WHEN CNPJ <> '''' THEN ''JUR'' ELSE ''FIS'' END');
           tClientes.SQL.Add('FROM  Clientes');

           If PlanoContasTipo_Terceiros.AsString = 'CN' then
              tClientes.SQL.Add('WHERE  Pais = ''1058'' ')
           else
              tClientes.SQL.Add('WHERE  Pais <> ''1058'' ');

           tClientes.SQL.Add('AND ISNULL(Ativo, 0) = 1');
           tClientes.SQL.Add('AND ISNULL(Conta_Ativo, '''') = '''' ');
           tClientes.SQL.Add('ORDER  BY Nome');
           //tCLientes.SQL.SaveToFile('c:\temp\Plano_Terceiros_Clientes.sql');
           tClientes.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_PCTerceirosClientes.bAddTodosClick(Sender: TObject);
Var
    mCod,
    mLinha: Integer;
begin
      If GradeClientes.SelCount = 0 then begin
         Showmessage('Não há nenhum cliente selecionado.');
         Abort;
      End;

      If MessageDlg('Atenção!'+#13+#13+'Isso irá cadastrar as contas de todos os "Clientes" selecionados ao "Plano de Terceiros".'+#13+#13'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         Abort;

      With Dados, dmContab do begin
           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT ISNULL(MAX(CAST(Codigo AS int)), 0)+1 AS Codigo FROM PlanoContas WHERE SUBSTRING(Conta, 1, 1) = :pConta');
           tCodigo.ParamByName('pConta').AsString := Trim(Copy(PlanoContasConta.AsString, 1, 1));
           tCodigo.Open;

           mCod := tCodigo.FieldByName('Codigo').AsInteger;

           tClientes.DisableControls;
           Clientes.DisableControls;
           tPlano.DisableControls;

           GradeClientes.DisableScroll;
           GradePlano.DisableScroll;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := GradeClientes.SelectedRows.Count-1;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Criando contas de terceiros...';
           Janela_Processamento.Show;

           For mLinha := 0 to GradeClientes.SelectedRows.Count -1 do begin
               GradeClientes.DataSource.DataSet.GotoBookMark((GradeClientes.SelectedRows.Items[mLinha]));

               tPlano.Append;
                      tPlanoConta.Value             := PlanoContasConta.Value;
                      tPlanoCodigo.AsString         := InttoStr(mCod);
                      tPlanoDescricao.Value         := tClientes.FieldByName('Nome').AsAnsiString;
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
                      tPlanoCodigo_Terceiros.Value  := tClientes.FieldByName('Codigo').AsAnsiString;
                      tPlanoCNPJ_CPF.Value          := tClientes.FieldByName('CNPJ').AsAnsiString;
                      tPlanoGrupo.Value             := PlanoContasGrupo.Value;
                      tPlanoConta_Grupo.Value       := PlanoContasConta_Grupo.Value;
                      if tClientes.FieldByName('Pessoa').AsString = 'JUR' then
                         tPlanoPessoa.Value := 'J';
                      if tClientes.FieldByName('Pessoa').AsString = 'FIS' then
                         tPlanoPessoa.Value := 'F';
               tPlano.Post;

               tEmpresas.First;
               tFiliais.SQL.Clear;
               while not tEmpresas.Eof do begin
                     tFiliais.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                     if tClientes.FieldByName('Pessoa').AsString = 'JUR' then
                        tFiliais.SQL.Add('UPDATE Clientes SET Conta_Ativo = '+QuotedStr(InttoStr(mCod))+' WHERE SUBSTRING(CNPJ, 1, 8) = '+QuotedStr(Copy(tClientes.FieldByName('CNPJ').AsString, 1,8)))
                     else
                        tFiliais.SQL.Add('UPDATE Clientes SET Conta_Ativo = '+QuotedStr(InttoStr(mCod))+' WHERE CPF = '+QuotedStr(tClientes.FieldByName('CNPJ').AsString));

                     tEmpresas.Next;
               end;
               //tFiliais.SQL.SaveToFile('c:\temp\Plano_Terceiros_Filiais'+inttostr(mCod)+'.sql');
               tFiliais.Execute;

               Inc(mCod);
               Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
               Application.ProcessMessages;
           End;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.Open;
           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');

           tClientes.Close;
           Clientes.Close;

           tClientes.EnableControls;
           Clientes.EnableControls;
           tPlano.EnableControls;
           
           GradeClientes.EnableScroll;
           GradePlano.EnableScroll;
           GradeClientes.UnselectAll;
           
           tClientes.Open;

           tPlano.First;
           bSelTodos.Tag := 0;
           Janela_Processamento.Close;
      End;
end;

procedure TCadastro_PCTerceirosClientes.cPesquisaCliChange(Sender: TObject);
begin
      With Dados do begin
           If tClientes.Locate('Nome', cPesquisaCli.Text, [loPartialKey]) = False then begin
              tPesquisaCli.SQL.Clear;
              tPesquisaCli.SQL.Add('SELECT * FROM Clientes WHERE(Nome LIKE'+QuotedStr('%'+cPesquisaCli.Text+'%')+')');
              tPesquisaCli.Open;
              tClientes.Locate('Codigo', tPesquisaCli.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
           End;
      End;
end;

procedure TCadastro_PCTerceirosClientes.bSelTodosClick(Sender: TObject);
begin
      If bSelTodos.Tag = 1 then begin
         GradeClientes.UnselectAll;
         bSelTodos.Tag := 0;
      end else begin
         GradeClientes.SelectAll;
         bSelTodos.Tag := 1;
      End;   
end;

procedure TCadastro_PCTerceirosClientes.bRemoveTodosClick(Sender: TObject);
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
         with Dados, dmContab do begin
              mSQL := tPlano.SQL.Text;

              tPlano.SQL.Clear;
              tPlano.SQL.Add('DELETE FROM PlanoContas');
              tPlano.SQL.Add('WHERE  Tipo_Terceiros = :pTipo');
              tPlano.SQL.Add('  AND ISNULL(Codigo_Terceiros, '''') <> '''' ');
              tPlano.SQL.Add('  AND (SELECT COUNT(*) FROM Lancamentos WHERE Conta_Debito = Codigo OR Conta_Credito = Codigo) = 0');
              tPlano.ParamByName('pTipo').AsString := PlanoContasTipo_Terceiros.AsString;
              tPlano.Execute;

              tPlano.SQL.Clear;
              tPlano.SQL.Add(mSQL);
              tPlano.ParamByName('pConta').AsString := PlanoContasConta.AsString+'%';
              tPlano.ParamByName('pTipo').AsString  := PlanoContasTipo_Terceiros.AsString;
              tPlano.Open;

              // Parametriza também os clientes das filiais.
              tEmpresas.First;
              tFiliais.SQL.Clear;
              while not tEmpresas.Eof do begin
                    tFiliais.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                    tFiliais.SQL.Add('UPDATE Clientes SET Conta_Ativo = NULL WHERE (SELECT COUNT(*) FROM '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas WHERE (CNPJ_CPF = Clientes.CNPJ OR CNPJ_CPF = Clientes.CPF) AND Tipo_Terceiros = :pTipo) = 0');
                    tFiliais.ParamByName('pTipo').AsString := PlanoContasTipo_Terceiros.AsString;
                    tEmpresas.Next;
              end;
              //tFiliais.SQL.SaveToFile('c:\temp\Plano_Terceiros_Filiais_Remove.sql');
              tFiliais.Execute;

              Clientes.SQL.Clear;
              Clientes.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
              Clientes.SQL.Add('SELECT * FROM Clientes');
              Clientes.Open;
              Clientes.SQL.Clear;
              Clientes.SQL.Add('SELECT * FROM Clientes');

              tClientes.Close;
              tClientes.Open;
              bSelTodos.Tag := 0;
         end;
      end;
end;

procedure TCadastro_PCTerceirosClientes.GradePlanoEnter(Sender: TObject);
begin
      GradeClientes.UnselectAll
end;

procedure TCadastro_PCTerceirosClientes.cPesquisaContaChange(Sender: TObject);
begin
      With dmContab do begin
           If tPlano.Locate('Descricao', cPesquisaConta.Text, [loPartialKey]) = False then begin
              tPesquisaConta.SQL.Clear;
              tPesquisaConta.SQL.Add('SELECT * FROM PlanoContas WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisaConta.Text+'%')+')');
              tPesquisaConta.Open;
              If tPesquisaConta.RecordCount > 0 then
                 tPlano.Locate('Codigo', tPesquisaConta.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
           End;
      End;
end;

procedure TCadastro_PCTerceirosClientes.bRemoveClick(Sender: TObject);
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

           tPlano.Delete;
           
           // remove Parametrização também dos clientes das filiais.
           tEmpresas.First;
           tFiliais.SQL.Clear;
           while not tEmpresas.Eof do begin
                 tFiliais.SQL.Add('USE '+tEmpresas.FieldByName('Banco_Dados').AsString);
                 tFiliais.SQL.Add('UPDATE Clientes SET Conta_Ativo = NULL WHERE (SELECT COUNT(*) FROM '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas WHERE (CNPJ_CPF = Clientes.CNPJ OR CNPJ_CPF = Clientes.CPF) AND Tipo_Terceiros = :pTipo) = 0');
                 tFiliais.ParamByName('pTipo').AsString := PlanoContasTipo_Terceiros.AsString;
                 tEmpresas.Next;
           end;
           //tFiliais.SQL.SaveToFile('c:\temp\Plano_Terceiros_Filiais_Remove.sql');
           tFiliais.Execute;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('USE '+Empresas.FieldByName('Banco_Dados').AsString);
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.Open;
           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.Close;

           tPlano.Close;
           tPlano.Open;

           tClientes.Refresh;
           bSelTodos.Tag := 0;
      End;
end;


end.
