unit frmCadastro_PCTerceirosProc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls,
  DBGrids, RXDBCtrl, Vcl.StdCtrls, DBCtrls, Vcl.ComCtrls, Buttons, Grids, MemDS, System.UITypes;

type
  TCadastro_PCTerceirosProc = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    GradeProc: TRxDBGrid;
    Panel2: TPanel;
    StaticText5: TStaticText;
    cPesquisaProc: TEdit;
    bSelTodos: TSpeedButton;
    bAddTodos: TSpeedButton;
    bRemove: TSpeedButton;
    bRemoveTodos: TSpeedButton;
    tPesquisaProc: TMSQuery;
    tCodigo: TMSQuery;
    tRegistro: TMSQuery;
    tProcessos: TMSQuery;
    dstProcessos: TDataSource;
    StaticText3: TStaticText;
    cPesquisaConta: TEdit;
    tPesquisaConta: TMSQuery;
    RxLabel4: TRxLabel;
    GradePlano: TRxDBGrid;
    tProcessosProcesso: TStringField;
    tProcessosDI: TStringField;
    tProcessosData: TDateTimeField;
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
    RxLabel1: TRxLabel;
    Panel4: TPanel;
    RxLabel2: TRxLabel;
    pConta: TPanel;
    tPlanoCodigo: TStringField;
    tPlanoConta_ECF: TStringField;
    tPlanoSelecao: TBooleanField;
    tPlanoCNPJ_CPF: TStringField;
    tPlanoPessoa: TStringField;
    tPlanoConta_Resultado: TBooleanField;
    tPlanoDRE: TBooleanField;
    tPlanoEmpresa: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bAddTodosClick(Sender: TObject);
    procedure cPesquisaProcChange(Sender: TObject);
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
  Cadastro_PCTerceirosProc: TCadastro_PCTerceirosProc;

implementation

uses frmDMContab, frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_PCTerceirosProc.bSairClick(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.Close;
      End;
      Close;
end;

procedure TCadastro_PCTerceirosProc.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_PCTerceirosProc.Release;
      Cadastro_PCTerceirosProc := nil;
end;

procedure TCadastro_PCTerceirosProc.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

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

           tProcessos.SQL.Clear;
           tProcessos.SQL.Add('SELECT Processo');
           tProcessos.SQL.Add('      ,DI   = Numero_Declaracao');
           tProcessos.SQL.Add('      ,Data = Data_DesembaracoDeclaracao');
           tProcessos.SQL.Add('FROM  ProcessosDocumentos');
           tProcessos.SQL.Add('WHERE ISNULL(Desativado, 0) = 0');
           tProcessos.SQL.Add('AND   ISNULL(Conta_Despesas, '''') = '''' ');
           tProcessos.SQL.Add('ORDER BY Processo, DI');
           tProcessos.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_PCTerceirosProc.bAddTodosClick(Sender: TObject);
Var
    mCod,
    Linha: Integer;
begin
      If GradeProc.SelCount = 0 then begin
         Showmessage('Não há nenhum processo selecionado.');
         Abort;
      End;

      If MessageDlg('Atenção!'+#13+#13+'Isso irá cadastrar as contas de todos os "Processos" selecionados ao "Plano de Terceiros".'+#13+#13'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         Abort;

      With Dados, dmContab do begin
           tCodigo.SQL.Clear;
           tCodigo.SQL.Add('SELECT ISNULL(MAX(CAST(Codigo AS int)), 0)+1 AS Codigo FROM PlanoContas WHERE SUBSTRING(Conta, 1, 1) = :pConta');
           tCodigo.ParamByName('pConta').AsString := Trim(Copy(PlanoContasConta.AsString, 1, 1));
           tCodigo.Open;
           tCodigo.Open;

           mCod := tCodigo.FieldByName('Codigo').AsInteger;

           tProcessos.DisableControls;
           ProcessosDOC.DisableControls;
           tPlano.DisableControls;

           GradeProc.DisableScroll;
           GradePlano.DisableScroll;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := GradeProc.SelectedRows.Count-1;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Show;

           For Linha := 0 to GradeProc.SelectedRows.Count-1 do begin
               GradeProc.DataSource.DataSet.GotoBookMark((GradeProc.SelectedRows.Items[Linha]));

               tPlano.Append;
                      tPlanoConta.Value             := PlanoContasConta.Value;
                      tPlanoCodigo.AsString         := InttoStr(mCod);
                      tPlanoDescricao.AsString      := tProcessos.FieldByName('Processo').AsString + ' / DI: '+tProcessos.FieldByName('DI').AsString;
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
                      tPlanoCodigo_Terceiros.Value  := tProcessos.FieldByName('Processo').AsAnsiString;
                      tPlanoGrupo.Value             := PlanoContasGrupo.Value;
                      tPlanoConta_Grupo.Value       := PlanoContasConta_Grupo.Value;
               tPlano.Post;

               ProcessosDOC.SQL.Clear;
               ProcessosDOC.SQL.Add('UPDATE ProcessosDocumentos SET Conta_Despesas = :pConta WHERE Processo = :pProcesso');
               ProcessosDOC.ParamByName('pProcesso').AsString := tProcessos.FieldByName('Processo').AsString;
               ProcessosDOC.ParamByName('pConta').AsString    := tPlanoCodigo.AsString;
               ProcessosDOC.Execute;

               Inc(mCod);

               Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
               Application.ProcessMessages;
           End;
           
           tProcessos.EnableControls;
           ProcessosDOC.EnableControls;
           tPlano.EnableControls;
           GradeProc.EnableScroll;
           GradePlano.EnableScroll;

           tProcessos.Close;
           tProcessos.Open;
           tPlano.Close;
           tPlano.Open;

           Janela_Processamento.Close;
           
           bSelTodos.Tag := 0;
      End;
end;

procedure TCadastro_PCTerceirosProc.cPesquisaProcChange(Sender: TObject);
begin
      With Dados do begin
           If tProcessos.Locate('Processo', cPesquisaProc.Text, [loPartialKey]) = False then begin
              tPesquisaProc.SQL.Clear;
              tPesquisaProc.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Processo LIKE'+QuotedStr('%'+cPesquisaProc.Text+'%')+')');
              tPesquisaProc.Open;
              tProcessos.Locate('Processo', tPesquisaProc.FieldByName('Processo').AsString, [loCaseInsensitive]);
           End;
      End;
end;

procedure TCadastro_PCTerceirosProc.bSelTodosClick(Sender: TObject);
begin

      If bSelTodos.Tag = 1 then begin
         GradeProc.UnselectAll;
         bSelTodos.Tag := 0;
      end else begin
         GradeProc.SelectAll;
         bSelTodos.Tag := 1;
      End;   
end;

procedure TCadastro_PCTerceirosProc.bRemoveTodosClick(Sender: TObject);
Var
    mSQL: WideString;
begin
      If MessageDlg('Atenção!'+#13+#13+
                    'Isso irá apagar todas as contas de "Terceiros" do Plano de Contas.'+#13+#13+
                    'As contas que contém lançamentos não serão excluídas.'+#13+#13+
                    'Deseja realmente continuar?', mtWarning, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      With Dados, dmContab do begin
           mSQL := tPlano.SQL.Text;
           
           GradeProc.DisableScroll;

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

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('UPDATE ProcessosDocumentos SET Conta_Despesas = NULL WHERE (SELECT COUNT(*) FROM '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas WHERE Codigo_Terceiros = ProcessosDocumentos.Processo AND Tipo_Terceiros = :pTipo) = 0');
           ProcessosDOC.ParamByName('pTipo').AsString  := PlanoContasTipo_Terceiros.AsString;
           ProcessosDOC.Execute;

           GradeProc.EnableScroll;

           tProcessos.Close;
           tProcessos.Open;
           bSelTodos.Tag := 0;
      End;
end;

procedure TCadastro_PCTerceirosProc.GradePlanoEnter(Sender: TObject);
begin
      GradeProc.UnselectAll
end;

procedure TCadastro_PCTerceirosProc.cPesquisaContaChange(Sender: TObject);
begin
      With dmContab do begin
           If tPlano.Locate('Descricao', cPesquisaConta.Text, [loPartialKey]) = False then begin
              tPesquisaConta.SQL.Clear;
              tPesquisaConta.SQL.Add('SELECT * FROM PlanoContas WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisaConta.Text+'%')+')');
              tPesquisaConta.Open;
              If tPesquisaConta.RecordCount > 0 then
                 tPlano.Locate('Codigo', tPesquisaConta.FieldByName('Codigo').AsString, [loCaseInsensitive]);
           End;
      End;
end;

procedure TCadastro_PCTerceirosProc.bRemoveClick(Sender: TObject);
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

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('UPDATE ProcessosDocumentos SET Conta_Despesas = NULL WHERE (SELECT COUNT(*) FROM '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.PlanoContas WHERE Codigo_Terceiros = ProcessosDocumentos.Processo) = 0');
           ProcessosDOC.Execute;

           tPlano.Close;
           tPlano.Open;

           tProcessos.Refresh;
           bSelTodos.Tag := 0;
      End;
end;

end.
