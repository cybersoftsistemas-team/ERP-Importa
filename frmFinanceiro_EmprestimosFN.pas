unit frmFinanceiro_EmprestimosFN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mask, RxLookup, Vcl.ExtCtrls, RXCtrls, DBCtrls,
  Funcoes, RXDBCtrl, RxDBComb, DB, DBAccess, MSAccess, Grids, DBGrids, Vcl.ComCtrls, MemDS, RxToolEdit, system.UITypes;

type
  TFinanceiro_EmprestimosFN = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    tNumero: TMSQuery;
    tGarantia: TMSQuery;
    tRegistro: TMSQuery;
    Panel2: TPanel;
    StaticText6: TStaticText;
    cBanco: TRxDBLookupCombo;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    cClassificacaoP: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cCentroCusto: TRxDBLookupCombo;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    cCodigo: TDBEdit;
    StaticText13: TStaticText;
    StaticText15: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    cValorJuros: TDBEdit;
    cDataFN: TDBDateEdit;
    StaticText18: TStaticText;
    cGarantia: TRxDBComboBox;
    DBEdit3: TDBEdit;
    RxDBGrid1: TRxDBGrid;
    Navega: TDBNavigator;
    bFinanceiroFN: TButton;
    DBEdit5: TDBEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText16: TStaticText;
    cMoeda: TDBLookupComboBox;
    StaticText17: TStaticText;
    cTaxaCambial: TDBEdit;
    StaticText25: TStaticText;
    DBDateEdit1: TDBDateEdit;
    StaticText26: TStaticText;
    DBEdit2: TDBEdit;
    StaticText1: TStaticText;
    DBEdit6: TDBEdit;
    cBeneficiario: TDBLookupComboBox;
    Panel3: TPanel;
    GradeItens: TRxDBGrid;
    bAdicionar: TButton;
    bAlterar: TButton;
    bExcluir: TButton;
    bLiquidar: TButton;
    cFornecedor: TDBLookupComboBox;
    StaticText2: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    tSoma: TMSQuery;
    pLiquidado: TPanel;
    bEstorno: TButton;
    Image2: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cProcessoChange(Sender: TObject);
    procedure cBancoClienteChange(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure bFinanceiroClick(Sender: TObject);
    procedure GradeParcelasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
    procedure bAdicionarClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure cFornecedorExit(Sender: TObject);
    procedure bLiquidarClick(Sender: TObject);
    procedure bEstornoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_EmprestimosFN: TFinanceiro_EmprestimosFN;

implementation

uses frmDados, frmFinanceiro_EmprestimosFNItem, frmFinanceiro_EmprestimosFNLiquidar, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_EmprestimosFN.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_EmprestimosFN.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_EmprestimosFN.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados,nil,nil,nil);
      Financeiro_EmprestimosFN.Release;
      Financeiro_EmprestimosFN := nil;
end;

procedure TFinanceiro_EmprestimosFN.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      With Dados do begin
           Emprestimos.SQL.CLear;
           Emprestimos.SQL.Add('SELECT * FROM Emprestimos WHERE(Tipo = ''FN'') ORDER BY Numero');
           Emprestimos.Open;

           Navega.Controls[6].Enabled := Emprestimos.RecordCount > 0;
           bFinanceiroFN.Enabled      := (EmprestimosFINIMP.RecordCount > 0) and not (EmprestimosLiquidado.AsBoolean);
           bLiquidar.Enabled          := (EmprestimosFINIMP.RecordCount > 0) and not (EmprestimosLiquidado.AsBoolean);
           bEstorno.Enabled           := not bLiquidar.Enabled;

           pLiquidado.Caption := '';
           If EmprestimosLiquidado.AsBoolean then pLiquidado.Caption := '* Liquídado';

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE Ativo = 1 ORDER BY Nome');
           Clientes.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(ISNULL(Desativado, 0) <> 1) ');
           ProcessosDOC.Open;

           Bancos.SQL.Clear;
           //Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
           Bancos.SQL.Add('SELECT * FROM Bancos ORDER BY Nome');
           Bancos.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Pais <> 1058) AND (Ativo = 1) ORDER BY Nome');
           Fornecedores.Open;

           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = ''P'') AND (ISNULL(Titulo, 0) = 0) AND (Desativada <> 1) ORDER BY Descricao');
           ClassificacaoFinanceira.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto WHERE LEN(Codigo) = 7 ORDER BY Descricao');
           CentroCusto.Open;

           TiposDocumentos.SQL.Clear;
           TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE(Desativada <> 1) ORDER BY Descricao');
           TiposDocumentos.Open;

           tGarantia.SQL.Clear;
           tGarantia.SQL.Add('SELECT DISTINCT Garantia FROM Emprestimos WHERE ISNULL(Garantia, '''') <> '''' ');
           tGarantia.Open;
           tGarantia.First;
           cGarantia.Items.Clear;
           While not tGarantia.Eof do begin
                 cGarantia.Items.Add(tGarantia.FieldByName('Garantia').AsString);
                 tGarantia.Next;
           End;

           Moedas.SQL.Clear;
           Moedas.SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
           Moedas.Open;

           Recursos.SQL.Clear;
           Recursos.SQL.Add('SELECT * FROM Recursos ORDER BY Descricao');
           Recursos.Open;
      End;

      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_EmprestimosFN.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
   i: Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         bFinanceiroFN.Enabled := false;
         bLiquidar.Enabled     := false;
         bEstorno.Enabled      := not bLiquidar.Enabled;
         Panel2.Enabled        := true;

         cDataFN.SetFocus;
         If Button = nbInsert then begin
            // Pega as informações default em configuraçãoes.
            Dados.Configuracao.Open;
            Dados.EmprestimosTipo.Value            := 'FN';
            Dados.EmprestimosClassificacao_P.Value := Dados.ConfiguracaoContratoCambio_Classificacao.AsString;
            Dados.EmprestimosTipo_Documento.Value  := Dados.ConfiguracaoEmprestimoBancario_TipoDocumento.Value;
            Dados.EmprestimosForma_Tipo.Value      := Dados.ConfiguracaoEmprestimoBancario_FormaRecebimento.Value;
            Dados.EmprestimosValor_Juros.Value     := 0;

            Dados.Configuracao.Close;
         End;
         
         // Verifica se ja houve baixas para alguma parcela do emprestimo.
         If Button = nbEdit then begin
            tNumero.SQL.Clear;
            tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP EP WHERE EP.Emprestimo = :pNumero )');
            tNumero.ParamByName('pNumero').AsInteger := Dados.EmprestimosNumero.Value;
            tNumero.Open;

            If tNumero.FieldByName('Qtde').AsInteger > 0 then begin
               cDataFN.Enabled            := false;
               cBanco.Enabled           := false;
               cClassificacaoP.Enabled  := false;
               cCentroCusto.Enabled     := false;
               cValorJuros.Enabled      := false;
            End;
         End;
      End;
      If (Button = nbPost) or (Button = nbCancel) then begin
         Panel2.Enabled := false;
         Navega.Controls[6].Enabled := Dados.Emprestimos.RecordCount > 0;

         tGarantia.SQL.Clear;
         tGarantia.SQL.Add('SELECT DISTINCT Garantia FROM Emprestimos WHERE ISNULL(Garantia, '''') <> '''' ');
         tGarantia.Open;
         tGarantia.First;
         cGarantia.Items.Clear;
         While not tGarantia.Eof do begin
               cGarantia.Items.Add(tGarantia.FieldByName('Garantia').AsString);
               tGarantia.Next;
         End;

         cDataFN.Enabled         := true;
         cBanco.Enabled          := true;
         cClassificacaoP.Enabled := true;
         cCentroCusto.Enabled    := true;
         cValorJuros.Enabled     := true;
         bFinanceiroFN.Enabled   := (Dados.EmprestimosFINIMP.RecordCount > 0) and not (Dados.EmprestimosLiquidado.AsBoolean);
         bLiquidar.Enabled       := (Dados.EmprestimosFINIMP.RecordCount > 0) and not (Dados.EmprestimosLiquidado.AsBoolean);
         bEstorno.Enabled        := not bLiquidar.Enabled;
         pLiquidado.Caption := '';
         If Dados.EmprestimosLiquidado.AsBoolean then pLiquidado.Caption := '* Liquídado';
      End;
end;

procedure TFinanceiro_EmprestimosFN.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) then begin
              If DataLimpa(cDataFN.EditText) then begin
                 MessageDlg('Erro de data!'+#13+#13+'A data do empréstimo e campo obrigatório.', mtError, [mbOK], 0);
                 cDataFN.Setfocus;
                 Abort;
              End;
              If EmprestimosBanco.AsInteger = 0 then begin
                 MessageDlg('Erro de banco!'+#13+#13+'O banco do empréstimo e campo obrigatório.', mtError, [mbOK], 0);
                 cBanco.Setfocus;
                 Abort;
              End;
              If Trim(EmprestimosClassificacao_P.AsString) = '' then begin
                 MessageDlg('Erro de Classificação!'+#13+#13+'O campo "Class.Financeira (Pgto)" é obrigatório.', mtError, [mbOK], 0);
                 cClassificacaoP.Setfocus;
                 Abort;
              End;

              // Totaliza o valor Principal do empréstimo.
              EmprestimosFINIMP.SQL.Clear;
              EmprestimosFINIMP.SQL.Add('UPDATE EmprestimosFINIMP SET Taxa_Cambial = :pTaxa');
              EmprestimosFINIMP.SQL.Add('WHERE(Emprestimo = :pNumero)');
              EmprestimosFINIMP.ParamByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
              EmprestimosFINIMP.ParamByName('pTaxa').AsFloat     := EmprestimosTaxa_Cambial.AsFloat;
              EmprestimosFINIMP.Execute;
              EmprestimosFINIMP.SQL.Clear;
              EmprestimosFINIMP.SQL.Add('SELECT * FROM EmprestimosFINIMP');
              EmprestimosFINIMP.SQL.Add('WHERE(Emprestimo = :pNumero)');
              EmprestimosFINIMP.ParamByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
              EmprestimosFINIMP.Open;

              tSoma.SQL.Clear;
              tSoma.SQL.Add('SELECT ISNULL(SUM(Valor_ME * Taxa_Cambial), 0) Valor_Total FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimo');
              tSoma.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
              tSoma.Open;

              EmprestimosValor_Principal.Value := tSoma.FieldByName('Valor_Total').AsCurrency;
           End;

           If (Button = nbPost) and (Emprestimos.State = dsInsert) then begin
              tNumero.SQL.Clear;
              tNumero.SQL.Add('SELECT MAX(Registro) AS Registro FROM Emprestimos');
              tNumero.Open;
              EmprestimosRegistro.Value := tNumero.FieldByName('Registro').AsInteger + 1;
              
              tNumero.SQL.Clear;
              tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM Emprestimos WHERE Tipo = ''FN'' ');
              tNumero.Open;
              
              EmprestimosNumero.Value           := tNumero.FieldByName('Numero').AsInteger + 1;
              EmprestimosNumero_Documento.Value := EmprestimosTipo.AsString + PoeZero(5, EmprestimosNumero.AsInteger);
              tNumero.Close;
           End;
           
           If (Button = nbDelete) then begin
              // Verifica se ja houve baixas para alguma parcela do emprestimo.
              Screen.Cursor := crSQLWait;
              tNumero.SQL.Clear;
              tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas WHERE Numero IN( SELECT Financeiro_Numero FROM EmprestimosFINIMP EF WHERE EF.Emprestimo = :pNumero )');
              tNumero.ParamByName('pNumero').AsInteger := EmprestimosNumero.Value;
              tNumero.Open;
              Screen.Cursor := crDefault;
              If tNumero.FieldByName('Qtde').AsInteger > 0 then begin
                 Messagedlg('Atenção!'+#13+#13+'Este empréstimo ja teve parcelas baixadas.'+#13+#13+'Estorne primeiro as baixas para poder exclui-lo.', mtInformation, [mbOK], 0);
                 Abort;
              End;

              If MessageDlg('Deseja realmente excluir este empréstimo?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                 // Deleta o Contrato de câmbio e os lançamentos do financeiro se não houver baixas efetuadas.
                 Screen.Cursor := crSQLWait;

                 ContratoCambio.SQL.Clear;
                 ContratoCambio.SQL.Add('DELETE FROM ContratoCambio WHERE Numero = :pNumero');
                 ContratoCambio.ParamByName('pNumero').AsString := EmprestimosNumero_Documento.Value;
                 ContratoCambio.Execute;
                 ContratoCambio.SQL.Clear;
                 ContratoCambio.SQL.Add('SELECT * FROM ContratoCambio WHERE(Numero = :pNumero)');
                 ContratoCambio.ParamByName('pNumero').AsString := EmprestimosNumero_Documento.Value;
                 ContratoCambio.Open;

                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP EF WHERE EF.Emprestimo = :pNumero)');
                 PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosNumero.Value;
                 PagarReceber.Execute;
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pVencimento)');
                 PagarReceber.ParamByName('pVencimento').AsDate := EmprestimosData.Value;
                 PagarReceber.Open;

                 tNumero.SQL.Clear;
                 tNumero.SQL.Add('DELETE FROM EmprestimosFINIMP WHERE Emprestimo = :pNumero');
                 tNumero.ParamByName('pNumero').AsInteger := EmprestimosNumero.Value;
                 tNumero.Execute;
                 Screen.Cursor := crDefault;
           end else begin
                 Screen.Cursor := crDefault;
                 Abort;
              End;
           End;
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_EmprestimosFN.cProcessoChange(Sender: TObject);
begin
      With Dados do begin
           EmprestimosCliente.Value := ProcessosDOCCliente.Value;
      End;
end;

procedure TFinanceiro_EmprestimosFN.cBancoClienteChange(Sender: TObject);
begin
      With Dados do begin
           If Fornecedores.Locate('CNPJ', ClientesCNPJ.AsString, [loCaseInsensitive]) = true then begin
              EmprestimosBanco_Fornecedor.Value := FornecedoresCodigo.Value;
           End;
      End;
end;

procedure TFinanceiro_EmprestimosFN.cCodigoChange(Sender: TObject);
begin
      With Dados do begin
           If Trim(cCodigo.Text) <> '' then begin
              GradeItens.DisableScroll;

              EmprestimosFINIMP.SQL.Clear;
              EmprestimosFINIMP.SQL.Add('SELECT *');
              EmprestimosFINIMP.SQL.Add('FROM EmprestimosFINIMP');
              EmprestimosFINIMP.SQL.Add('WHERE(Emprestimo = :pNumero)');
              EmprestimosFINIMP.SQL.Add('ORDER BY Data');
              EmprestimosFINIMP.ParamByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
              EmprestimosFINIMP.Open;

              bFinanceiroFN.Enabled := (EmprestimosFINIMP.RecordCount > 0) and not (EmprestimosLiquidado.AsBoolean);
              bLiquidar.Enabled     := (EmprestimosFINIMP.RecordCount > 0) and not (EmprestimosLiquidado.AsBoolean);
              bEstorno.Enabled      := not bLiquidar.Enabled;
              pLiquidado.Caption := '';
              If EmprestimosLiquidado.AsBoolean then pLiquidado.Caption := '* Liquídado';

              GradeItens.EnableScroll;
           End;
      End;
end;

procedure TFinanceiro_EmprestimosFN.bFinanceiroClick(Sender: TObject);
begin
      // Verifica se ja houve baixas para alguma parcela do emprestimo.
      tNumero.SQL.Clear;
      tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas WHERE Numero IN( SELECT Financeiro_Numero FROM EmprestimosFINIMP EP WHERE EP.Emprestimo = :pNumero )');
      tNumero.ParamByName('pNumero').AsInteger := Dados.EmprestimosNumero.Value;
      tNumero.Open;
      If tNumero.FieldByName('Qtde').AsInteger > 0 then begin
         Messagedlg('Atenção!'+#13+#13+'Este empréstimo ja teve parcelas baixadas.'+#13+#13+'Estorne primeiro as baixas para poder gerar novamente.', mtInformation, [mbOK], 0);
         Abort;
      End;

      If MessageDlg('Atenção!'+#13+#13+
                    'Isto ira apagar toda a movimentação financeira deste empréstimo e recriar novamente.'+#13+#13+
                    'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      Screen.Cursor := crSQLWait;
      With Dados do begin
           EmprestimosFINIMP.DisableControls;
           ContratoCambio.DisableControls;

           ContratoCambio.SQL.Clear;
           ContratoCambio.SQL.Add('DELETE FROM ContratoCambio WHERE Numero = :pNumero');
           ContratoCambio.ParamByName('pNumero').AsString := EmprestimosNumero_Documento.Value;
           ContratoCambio.Execute;
           ContratoCambio.SQL.Clear;
           ContratoCambio.SQL.Add('SELECT * FROM ContratoCambio WHERE Numero = :pNumero');
           ContratoCambio.ParamByName('pNumero').AsString := EmprestimosNumero_Documento.Value;
           ContratoCambio.Open;

           tSoma.SQL.Clear;
           tSoma.SQL.Add('SELECT ISNULL(SUM(Valor_ME), 0) AS Total_ME FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimo');
           tSoma.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
           tSoma.Open;

           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0) AS Registro FROM ContratoCambio');
           tRegistro.Open;

           // Gera o contrato de câmbio.
           ContratoCambio.Append;
                          ContratoCambioRegistro.Value        := tRegistro.FieldByName('Registro').AsInteger + 1;
                          ContratoCambioNumero.Value          := EmprestimosNumero_Documento.Value;
                          ContratoCambioData.Value            := EmprestimosData.Value;
                          ContratoCambioBanco.Value           := EmprestimosBanco.Value;
                          ContratoCambioExportador.Value      := EmprestimosExportador.Value;
                          ContratoCambioFechado.Value         := false;
                          ContratoCambioMoeda.Value           := EmprestimosMoeda.Value;
                          ContratoCambioTaxa_Cambial.Value    := EmprestimosTaxa_Cambial.Value;
                          ContratoCambioData_Vencimento.Value := EmprestimosVencimento.Value;
                          ContratoCambioCentro_Custo.Value    := EmprestimosCentro_Custo.Value;
                          ContratoCambioGerar_Baixa.Value     := false;
                          ContratoCambioClassificacao.Value   := EmprestimosClassificacao_P.Value;
                          ContratoCambioBeneficiario.Value    := EmprestimosBeneficiario.Value;
                          ContratoCambioTotal_ME.Value        := tSoma.FieldByName('Total_ME').AsCurrency;
                          ContratoCambioRecursos.Value        := EmprestimosRecursos.Value;
                          ContratoCambioClassificacao.Value   := EmprestimosClassificacao_P.AsString;
                          ContratoCambioFINIMP.Value          := true;
           ContratoCambio.Post;
           tRegistro.Close;

           // Apaga os itens do contrato de câmbio e os títulos do financeiro para recriar novamente.
           ContratoCambioItens.SQL.Clear;
           ContratoCambioItens.SQL.Add('DELETE FROM ContratoCambioItens WHERE Contrato = :pNumero');
           ContratoCambioItens.ParamByName('pNumero').AsString := EmprestimosNumero_Documento.Value;
           ContratoCambioItens.Execute;
           ContratoCambioItens.SQL.Clear;
           ContratoCambioItens.SQL.Add('SELECT * FROM ContratoCambioItens WHERE Contrato = :pNumero');
           ContratoCambioItens.ParamByName('pNumero').AsString := EmprestimosNumero_Documento.Value;
           ContratoCambioItens.Open;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimo)');
           PagarReceber.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.Value;
           PagarReceber.Execute;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimo)');
           PagarReceber.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.Value;
           PagarReceber.Open;

           // Gera os itens do contrato de câmbio.
           EmprestimosFINIMP.First;
           While not EmprestimosFINIMP.Eof do begin
                 ContratoCambioItens.Append;
                                     ContratoCambioItensContrato.Value     := ContratoCambioNumero.Value;
                                     ContratoCambioItensData.Value         := EmprestimosFINIMPData.Value;
                                     ContratoCambioItensProcesso.Value     := EmprestimosFINIMPProcesso.Value;
                                     ContratoCambioItensValor_ME.Value     := EmprestimosFINIMPValor_ME.Value;
                                     ContratoCambioItensDI.Value           := EmprestimosFINIMPDI.Value;
                                     ContratoCambioItensFatura.Value       := EmprestimosFINIMPFatura.Value;
                                     ContratoCambioItensValor_Fatura.Value := EmprestimosFINIMPValor_Fatura.Value;
                                     ContratoCambioItensTaxa_Cambial.Value := EmprestimosFINIMPTaxa_Cambial.Value;
                 ContratoCambioItens.Post;

                 // Gera os lançamentos financeiros de todas as parcelas do empréstimo.
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimos)');
                 PagarReceber.Execute;
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimos)');
                 PagarReceber.Open;

                 tNumero.SQL.Clear;
                 tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
                 tNumero.Open;
                 
                 PagarReceber.Append;
                              PagarReceberNumero.Value           := tNumero.FieldByName('Numero').AsInteger + 1;
                              PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                              PagarReceberFornecedor.Value       := EmprestimosBeneficiario.Value;
                              PagarReceberCentro_Custo.Value     := EmprestimosCentro_Custo.Value;
                              PagarReceberClassificacao.Value    := EmprestimosClassificacao_P.Value;
                              PagarReceberDocumento.Value        := EmprestimosTipo_Documento.Value;
                              PagarReceberNumero_Documento.Value := EmprestimosNumero_Documento.AsString;
                              PagarReceberProcesso.Value         := EmprestimosFINIMPProcesso.Value;
                              PagarReceberTipo.Value             := 'P';
                              PagarReceberTipo_Nota.Value        := 'EP';
                              PagarReceberCustoConta.Value       := false;
                              PagarReceberCusto_Seletivo.Value   := false;
                              PagarReceberCusto_Entrada.Value    := false;
                              PagarReceberData_Documento.Value   := EmprestimosFINIMPData.Value;
                              PagarReceberData_Vencimento.Value  := EmprestimosVencimento.Value;
                              PagarReceberValor_Documento.Value  := EmprestimosFINIMPValor_ME.AsCurrency * EmprestimosTaxa_Cambial.AsFloat;
                              PagarReceberValor_Parcela.Value    := EmprestimosFINIMPValor_ME.AsCurrency * EmprestimosTaxa_Cambial.AsFloat;
                              PagarReceberMulta.Value            := 0;
                              PagarReceberJuros.Value            := 0;
                              PagarReceberDesconto.Value         := 0;
                              PagarReceberValor_Operacao.Value   := EmprestimosFINIMPValor_ME.AsCurrency * EmprestimosTaxa_Cambial.AsFloat;
                              PagarReceberValor_Total.Value      := EmprestimosFINIMPValor_ME.AsCurrency * EmprestimosTaxa_Cambial.AsFloat;
                              PagarReceberValor_Baixado.Value    := 0;
                              PagarReceberProvisorio.Value       := false;
                              PagarReceberForma_Tipo.Value       := EmprestimosForma_Tipo.Value;
                              PagarReceberEmprestimo.Value       := true;
                              PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                              PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
                 PagarReceber.Post;
                 tNumero.Close;

                 // Salva o número do lançamento financeiro na tabela de empréstimos.
                 EmprestimosFINIMP.Edit;
                                   EmprestimosFINIMPFinanceiro_Numero.Value := PagarReceberNumero.Value;
                 EmprestimosFINIMP.Post;
                 
                 // Salva o número do lançamento financeiro na tabela de itens de contrato de câmbio.
                 ContratoCambioItens.Edit;
                                   ContratoCambioItensFinanceiro_Lancamento.Value := PagarReceberNumero.Value;
                 ContratoCambioItens.Post;

                 EmprestimosFINIMP.Next;
           End;

           EmprestimosFINIMP.EnableControls;
           ContratoCambio.EnableControls;
      End;
      Screen.Cursor := crDefault;
      MessageDlg('Contrato de Câmbio e Lançamentos financeiros gerados com sucesso!', mtInformation, [mbOK], 0);
end;

procedure TFinanceiro_EmprestimosFN.GradeParcelasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
    Icon: TBitmap;
begin
      With Dados do begin
           Icon := TBitmap.Create;
           If (Column.FieldName = 'Baixa') then begin
              With GradeItens.Canvas do begin
                   Brush.Color := $00D2FFFF;
                   FillRect(Rect);
                   If (EmprestimosFINIMP.FieldByName('Baixa').Value = 1) then ImageList1.GetBitmap(0, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
      End;
end;

procedure TFinanceiro_EmprestimosFN.bAdicionarClick(Sender: TObject);
begin
      Financeiro_EmprestimosFNItem         := tFinanceiro_EmprestimosFNItem.Create(Self);
      Financeiro_EmprestimosFNItem.Caption := 'Adicionar...';
      Financeiro_EmprestimosFNItem.mOpcao  := 'ADICIONAR';
      Financeiro_EmprestimosFNItem.Top     := Financeiro_EmprestimosFN.Top  + 150;
      Financeiro_EmprestimosFNItem.left    := Financeiro_EmprestimosFN.Left + 500;
      Financeiro_EmprestimosFNItem.ShowModal;

      bFinanceiroFN.Enabled := (Dados.EmprestimosFINIMP.RecordCount > 0) and not (Dados.EmprestimosLiquidado.AsBoolean);
      bLiquidar.Enabled     := (Dados.EmprestimosFINIMP.RecordCount > 0) and not (Dados.EmprestimosLiquidado.AsBoolean);
      bEstorno.Enabled      := not bLiquidar.Enabled;
      pLiquidado.Caption    := '';
      If Dados.EmprestimosLiquidado.AsBoolean then pLiquidado.Caption := '* Liquídado';
end;

procedure TFinanceiro_EmprestimosFN.bAlterarClick(Sender: TObject);
begin
      Financeiro_EmprestimosFNItem         := tFinanceiro_EmprestimosFNItem.Create(Self);
      Financeiro_EmprestimosFNItem.Caption := 'Alteração...';
      Financeiro_EmprestimosFNItem.mOpcao  := 'ALTERAR';
      Financeiro_EmprestimosFNItem.Top     := Financeiro_EmprestimosFN.Top  + 150;
      Financeiro_EmprestimosFNItem.left    := Financeiro_EmprestimosFN.Left + 500;
      Financeiro_EmprestimosFNItem.ShowModal;
end;

procedure TFinanceiro_EmprestimosFN.bExcluirClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Deseja realmente excluir o processo "'+EmprestimosFINIMPProcesso.AsString+'"', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
              // Exclui os lançamentos de baixa e o título do financeiro.
              ContratoCambioItens.SQL.Clear;
              ContratoCambioItens.SQL.Add('DELETE FROM ContratoCambioItens WHERE Contrato = :pContrato AND Processo = :pProcesso');
              ContratoCambioItens.ParamByName('pContrato').AsString := EmprestimosNumero_Documento.AsString;
              ContratoCambioItens.ParamByName('pProcesso').AsString := EmprestimosFINIMPProcesso.AsString;
              ContratoCambioItens.Execute;

              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE Numero = :pNumero');
              PagarReceberBaixas.ParamByName('pNumero').AsInteger := EmprestimosFINIMPFinanceiro_Numero.AsInteger;
              PagarReceberBaixas.Execute;

              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE(Data = :pData)');
              PagarReceberBaixas.ParamByName('pData').AsDate := Date;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Numero = :pNumero');
              PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosFINIMPFinanceiro_Numero.AsInteger;
              PagarReceber.Execute;
              
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pData)');
              PagarReceber.ParamByName('pData').AsDate := Date;
              
              // Deleta o item do contrato de câmbio.
              EmprestimosFINIMP.Delete;

              // Totaliza o valor Principal do empréstimo.
              tSoma.SQL.Clear;
              tSoma.SQL.Add('SELECT ISNULL(SUM(Valor_ME * Taxa_Cambial), 0) Valor_Total FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimo');
              tSoma.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
              tSoma.Open;

              Emprestimos.Edit;
                          EmprestimosValor_Principal.Value := tSoma.FieldByName('Valor_Total').AsCurrency;
              Emprestimos.Post;

              bAlterar.Enabled := EmprestimosFINIMP.RecordCount > 0;
              bExcluir.Enabled := EmprestimosFINIMP.RecordCount > 0;

              bFinanceiroFN.Enabled := (EmprestimosFINIMP.RecordCount > 0) and not (EmprestimosLiquidado.AsBoolean);
              bLiquidar.Enabled     := (EmprestimosFINIMP.RecordCount > 0) and not (EmprestimosLiquidado.AsBoolean);
              bEstorno.Enabled      := not bLiquidar.Enabled;
              pLiquidado.Caption    := '';
              If EmprestimosLiquidado.AsBoolean then pLiquidado.Caption := '* Liquídado';
           End;
      End;
end;

procedure TFinanceiro_EmprestimosFN.cFornecedorExit(Sender: TObject);
begin
     If (Dados.Emprestimos.State = dsInsert) or (Dados.EmprestimosBeneficiario.AsInteger = 0) then
        Dados.EmprestimosBeneficiario.Value := Dados.EmprestimosExportador.AsInteger
end;

procedure TFinanceiro_EmprestimosFN.bLiquidarClick(Sender: TObject);
begin
      If MessageDlg('Atenção!'+#13+#13+
                    'Isto ira baixar toda a movimentação financeira deste empréstimo.'+#13+#13+
                    'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      Financeiro_EmprestimosFNLiquidar             := TFinanceiro_EmprestimosFNLiquidar.Create(Self);
      Financeiro_EmprestimosFNLiquidar.Caption     := Caption;
      Financeiro_EmprestimosFNLiquidar.cTaxa.Value := Dados.EmprestimosTaxa_Cambial.AsFloat;
      Financeiro_EmprestimosFNLiquidar.ShowModal;
      
      pLiquidado.Caption := '';
      If Dados.EmprestimosLiquidado.AsBoolean then begin
         pLiquidado.Caption := '* Liquídado';
         bEstorno.Enabled      := true;
         bFinanceiroFN.Enabled := false;
         bLiquidar.Enabled     := false;
      End;   
end;

procedure TFinanceiro_EmprestimosFN.bEstornoClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente estornar a liquidação deste emprétimo?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      Screen.Cursor := crSQLWait;
      With Dados do begin
           // Apaga o número da baixa no titulo.
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('UPDATE PagarReceber SET Baixa_Numero = null WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimo)');
           PagarReceber.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
           PagarReceber.Execute;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = :pNumero');
           PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosFINIMPFinanceiro_Numero.AsInteger;
           PagarReceber.Execute;

           // Estorna a liquidação do empréstimos.
           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimo)');
           PagarReceberBaixas.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
           PagarReceberBaixas.Execute;
           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Numero = :pNumero');
           PagarReceberBaixas.ParamByName('pNumero').AsInteger := EmprestimosFINIMPFinanceiro_Numero.AsInteger;
           PagarReceberBaixas.Execute;

           Emprestimos.Edit;
                       EmprestimosLiquidado.Value := false;
           Emprestimos.Post;
      End;
      pLiquidado.Caption    := '';
      bEstorno.Enabled      := false;
      bFinanceiroFN.Enabled := true;
      bLiquidar.Enabled     := true;

      Screen.Cursor := crDefault;
      MessageDlg('Estorno de liquidação de Empréstimo FINIMP concluída!', mtInformation, [mbOK], 0);
end;

end.
