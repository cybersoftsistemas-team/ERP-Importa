unit frmFinanceiro_EmprestimosCG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mask, RxLookup, Vcl.ExtCtrls, RXCtrls, DBCtrls,
  Funcoes, RXDBCtrl, RxDBComb, DB, DBAccess, MSAccess, Grids, DBGrids, DateUtils, Vcl.ComCtrls, system.UITypes, RxCurrEdit, MemDS, RxToolEdit, Math;

type
  TFinanceiro_EmprestimosCG = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    tNumero: TMSQuery;
    tGarantia: TMSQuery;
    tRegistro: TMSQuery;
    ClassificacaoR: TMSQuery;
    ClassificacaoRCodigo: TStringField;
    ClassificacaoRDescricao: TStringField;
    ClassificacaoRTipo: TStringField;
    ClassificacaoRNivel: TSmallintField;
    ClassificacaoRBaixa_Automatica: TBooleanField;
    dsClassificacaoR: TDataSource;
    Panel2: TPanel;
    StaticText6: TStaticText;
    cBanco: TRxDBLookupCombo;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    cClassificacaoR: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cCentroCusto: TRxDBLookupCombo;
    StaticText7: TStaticText;
    StaticText10: TStaticText;
    cProcesso: TRxDBLookupCombo;
    lForma: TStaticText;
    StaticText8: TStaticText;
    cCodigo: TDBEdit;
    StaticText11: TStaticText;
    cBancoCliente: TRxDBLookupCombo;
    StaticText12: TStaticText;
    cBancoFornecedor: TRxDBLookupCombo;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText1: TStaticText;
    StaticText15: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText16: TStaticText;
    cClassificacaoP: TRxDBLookupCombo;
    StaticText17: TStaticText;
    DBEdit2: TDBEdit;
    cValorPrincipal: TDBEdit;
    cValorJuros: TDBEdit;
    cParcelas: TDBEdit;
    DBEdit7: TDBEdit;
    cDataCG: TDBDateEdit;
    RxDBLookupCombo5: TRxDBLookupCombo;
    StaticText18: TStaticText;
    cGarantia: TRxDBComboBox;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    cVencimentoDias: TDBEdit;
    cDiaFixo: TDBEdit;
    cTotal: TCurrencyEdit;
    StaticText20: TStaticText;
    cForma: TDBComboBox;
    DBEdit3: TDBEdit;
    StaticText19: TStaticText;
    GradeParcelas: TRxDBGrid;
    RxDBGrid1: TRxDBGrid;
    Navega: TDBNavigator;
    bParcelasCG: TButton;
    bFinanceiroCG: TButton;
    StaticText9: TStaticText;
    DBEdit1: TDBEdit;
    StaticText23: TStaticText;
    DBEdit4: TDBEdit;
    StaticText24: TStaticText;
    DBEdit5: TDBEdit;
    tTotaliza: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cProcessoChange(Sender: TObject);
    procedure bParcelasClick(Sender: TObject);
    procedure cBancoClienteChange(Sender: TObject);
    procedure Parcelas;
    procedure cValorPrincipalChange(Sender: TObject);
    procedure cValorJurosChange(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure bFinanceiroClick(Sender: TObject);
    procedure GradeParcelasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
    procedure GradeParcelasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_EmprestimosCG: TFinanceiro_EmprestimosCG;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_EmprestimosCG.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_EmprestimosCG.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_EmprestimosCG.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados,nil,nil,nil);
      Financeiro_EmprestimosCG.Release;
      Financeiro_EmprestimosCG:= nil;
end;

procedure TFinanceiro_EmprestimosCG.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      With Dados do begin
           Emprestimos.SQL.CLear;
           Emprestimos.SQL.Add('SELECT * FROM Emprestimos WHERE(Tipo = ''CG'') ORDER BY Numero');
           Emprestimos.Open;

           Navega.Controls[6].Enabled := Emprestimos.RecordCount > 0;
           bParcelasCG.Enabled        := Emprestimos.RecordCount > 0;
           bFinanceiroCG.Enabled      := Emprestimos.RecordCount > 0;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE Ativo = 1 ORDER BY Nome');
           Clientes.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(ISNULL(Desativado, 0) <> 1) ');
           ProcessosDOC.Open;

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos ORDER BY Nome');
           Bancos.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE Ativo = 1 ORDER BY Nome');
           Fornecedores.Open;

           ClassificacaoR.SQL.Clear;
           ClassificacaoR.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE (Tipo = ''R'') AND (ISNULL(Titulo, 0) = 0) AND (Desativada <> 1) ORDER BY Descricao');
           ClassificacaoR.Open;

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
      End;

      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_EmprestimosCG.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
   i: Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         bParcelasCG.Enabled   := false;
         bFinanceiroCG.Enabled := false;
         Panel2.Enabled        := true;
         cDataCG.SetFocus;
         If Button = nbInsert then begin
            Dados.EmprestimosTipo.Value := 'CG';

            // Pega as informações default em configuraçãoes.
            Dados.Configuracao.Open;
            Dados.EmprestimosClassificacao_R.Value := Dados.ConfiguracaoEmprestimoBancario_ClassificacaoR.Value;
            Dados.EmprestimosClassificacao_P.Value := Dados.ConfiguracaoEmprestimoBancario_ClassificacaoP.Value;
            Dados.EmprestimosCentro_Custo.Value    := Dados.ConfiguracaoEmprestimoBancario_CentroCusto.Value;
            Dados.EmprestimosTipo_Documento.Value  := Dados.ConfiguracaoEmprestimoBancario_TipoDocumento.Value;
            Dados.EmprestimosForma_Tipo.Value      := Dados.ConfiguracaoEmprestimoBancario_FormaRecebimento.Value;
            Dados.Configuracao.Close;
         End;

         // Verifica se ja houve baixas para alguma parcela do emprestimo.
         If Button = nbEdit then begin
            tNumero.SQL.Clear;
            tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas WHERE Numero IN( SELECT Financeiro_Numero FROM EmprestimosParcelas EP WHERE EP.Emprestimo = :pNumero )');
            tNumero.ParamByName('pNumero').AsInteger := Dados.EmprestimosNumero.Value;
            tNumero.Open;

            If tNumero.FieldByName('Qtde').AsInteger > 0 then begin
               cDataCG.Enabled          := false;
               cBanco.Enabled           := false;
               cBancoCliente.Enabled    := false;
               cClassificacaoR.Enabled  := false;
               cBancoFornecedor.Enabled := false;
               cClassificacaoP.Enabled  := false;
               cCentroCusto.Enabled     := false;
               cValorPrincipal.Enabled  := false;
               cValorJuros.Enabled      := false;
               cParcelas.Enabled        := false;
               cVencimentoDias.Enabled  := false;
               cDiaFixo.Enabled         := false;
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

         bParcelasCG.Enabled      := Dados.Emprestimos.RecordCount > 0;
         bFinanceiroCG.Enabled    := bParcelasCG.Enabled;
         cDataCG.Enabled          := true;
         cBanco.Enabled           := true;
         cBancoCliente.Enabled    := true;
         cClassificacaoR.Enabled  := true;
         cBancoFornecedor.Enabled := true;
         cClassificacaoP.Enabled  := true;
         cCentroCusto.Enabled     := true;
         cValorPrincipal.Enabled  := true;
         cValorJuros.Enabled      := true;
         cParcelas.Enabled        := true;
         cVencimentoDias.Enabled  := true;
         cDiaFixo.Enabled         := true;
      End;
end;

procedure TFinanceiro_EmprestimosCG.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) then begin
              If DataLimpa(cDataCG.EditText) then begin
                 MessageDlg('Erro de data!'+#13+#13+'A data do empréstimo e campo obrigatório.', mtError, [mbOK], 0);
                 cDataCG.Setfocus;
                 Abort;
              End;
              If EmprestimosBanco.AsInteger = 0 then begin
                 MessageDlg('Erro de banco!'+#13+#13+'O banco do empréstimo e campo obrigatório.', mtError, [mbOK], 0);
                 cBanco.Setfocus;
                 Abort;
              End;
              If EmprestimosBanco_Cliente.AsInteger = 0 then begin
                 MessageDlg('Erro de Cliente!'+#13+#13+'O campo "Banco (Cliente)" é obrigatório.', mtError, [mbOK], 0);
                 cBancoCliente.Setfocus;
                 Abort;
              End;
              If Trim(EmprestimosClassificacao_R.AsString) = '' then begin
                 MessageDlg('Erro de Classificação!'+#13+#13+'O campo "Class.Financeira (Rec)" é obrigatório.', mtError, [mbOK], 0);
                 cClassificacaoR.Setfocus;
                 Abort;
              End;
              If EmprestimosBanco_Fornecedor.AsInteger = 0 then begin
                 MessageDlg('Erro de Fornecedor!'+#13+#13+'O campo "Banco (Fornecedor)" é obrigatório.', mtError, [mbOK], 0);
                 cBancoFornecedor.Setfocus;
                 Abort;
              End;
              If Trim(EmprestimosClassificacao_P.AsString) = '' then begin
                 MessageDlg('Erro de Classificação!'+#13+#13+'O campo "Class.Financeira (Pgto)" é obrigatório.', mtError, [mbOK], 0);
                 cClassificacaoP.Setfocus;
                 Abort;
              End;
              If EmprestimosValor_Principal.AsCurrency <= 0 then begin
                 MessageDlg('Erro de valor!'+#13+#13+'O campo "Valor Principal" é obrigatório.', mtError, [mbOK], 0);
                 cValorPrincipal.Setfocus;
                 Abort;
              End;
           End;
           If (Button = nbPost) and (Emprestimos.State = dsInsert) then begin
              tNumero.SQL.Clear;
              tNumero.SQL.Add('SELECT MAX(Registro) AS Registro FROM Emprestimos');
              tNumero.Open;
              EmprestimosRegistro.Value := tNumero.FieldByName('Registro').AsInteger + 1;
              
              tNumero.SQL.Clear;
              tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM Emprestimos WHERE Tipo = ''CG'' ');
              tNumero.Open;
              
              EmprestimosNumero.Value           := tNumero.FieldByName('Numero').AsInteger + 1;
              EmprestimosNumero_Documento.Value := EmprestimosTipo.AsString + PoeZero(5, EmprestimosNumero.AsInteger);
              tNumero.Close;
           End;
           If (Button = nbDelete) then begin
              // Verifica se ja houve baixas para alguma parcela do emprestimo.
              Screen.Cursor := crSQLWait;
              tNumero.SQL.Clear;
              tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas WHERE Numero IN( SELECT Financeiro_Numero FROM EmprestimosParcelas EP WHERE EP.Emprestimo = :pNumero )');
              tNumero.ParamByName('pNumero').AsInteger := EmprestimosNumero.Value;
              tNumero.Open;
              Screen.Cursor := crDefault;
              If tNumero.FieldByName('Qtde').AsInteger > 0 then begin
                 Messagedlg('Atenção!'+#13+#13+'Este empréstimo ja teve parcelas baixadas.'+#13+#13+'Estorne primeiro as baixas para poder exclui-lo.', mtInformation, [mbOK], 0);
                 Abort;
              End;

              If MessageDlg('Deseja realmente excluir este empréstimo?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                 // Deleta os lançamentos do financeiro se não houver baixas efetuadas.
                 Screen.Cursor := crSQLWait;
                 PagarReceberBaixas.SQL.Clear;
                 PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
                 PagarReceberBaixas.ParamByName('pNumero').AsInteger := EmprestimosFinanceiro_Numero.AsInteger;
                 PagarReceberBaixas.Execute;
                 PagarReceberBaixas.SQL.Clear;
                 PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE (Numero = :pNumero)');
                 PagarReceberBaixas.ParamByName('pNumero').AsInteger := PagarReceber.FieldByName('Numero').AsInteger;
                 PagarReceberBaixas.Open;

                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE(Numero = :pNumero)');
                 PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosFinanceiro_Numero.Value;
                 PagarReceber.Execute;
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Numero IN( SELECT Financeiro_Numero FROM EmprestimosParcelas EP WHERE EP.Emprestimo = :pNumero ) ');
                 PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosNumero.Value;
                 PagarReceber.Execute;
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pVencimento)');
                 PagarReceber.ParamByName('pVencimento').AsDate := EmprestimosData.Value;
                 PagarReceber.Open;

                 tNumero.SQL.Clear;
                 tNumero.SQL.Add('DELETE FROM EmprestimosParcelas WHERE Emprestimo = :pNumero');
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

procedure TFinanceiro_EmprestimosCG.cProcessoChange(Sender: TObject);
begin
      With Dados do begin
           EmprestimosCliente.Value := ProcessosDOCCliente.Value;
      End;
end;

procedure TFinanceiro_EmprestimosCG.bParcelasClick(Sender: TObject);
begin
      With Dados do begin
           If Dados.EmprestimosQtde_Parcelas.AsInteger <= 0 then begin
              MessageDlg('Para gerar as parcelas é necessário informar a quantidade de parcelas!', mtError, [mbOK], 0);
              cParcelas.SetFocus;
              Abort;
           End;
           If (Dados.EmprestimosVencimento_Dias.AsInteger <= 0) and (Dados.EmprestimosVencimento_Fixo.AsInteger <= 0) then begin
              MessageDlg('Para gerar as parcelas é necessário informar o "Vencimento em dias" ou o "Dia fixo para vencimento"!', mtError, [mbOK], 0);
              cVencimentoDias.SetFocus;
              Abort;
           End;

           // Verifica se ja houve baixas para alguma parcela do emprestimo.
           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas WHERE Numero IN( SELECT Financeiro_Numero FROM EmprestimosParcelas EP WHERE EP.Emprestimo = :pNumero )');
           tNumero.ParamByName('pNumero').AsInteger := EmprestimosNumero.Value;
           tNumero.Open;
           If tNumero.FieldByName('Qtde').AsInteger > 0 then begin
              Messagedlg('Atenção!'+#13+#13+'Este empréstimo ja teve parcelas baixadas.'+#13+#13+'Estorne primeiro as baixas para poder gerar novamente.', mtInformation, [mbOK], 0);
              Abort;
           End;
           If EmprestimosParcelas.RecordCount > 0 then begin
              If Messagedlg('Atenção!'+#13+#13+
                            'Isso apagara as parcelas existentes e recriara novas.'+#13+#13+
                            'Todos os lançamentos financeiros deste empréstimo bancário serão removidos.'+#13+#13+
                            'Deseja realmente Gerar Parcelas?', mtWarning, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              End;
           End;

           Parcelas;
      End;
end;

procedure TFinanceiro_EmprestimosCG.cBancoClienteChange(Sender: TObject);
begin
      With Dados do begin
           If Fornecedores.Locate('CNPJ', ClientesCNPJ.AsString, [loCaseInsensitive]) = true then begin
              EmprestimosBanco_Fornecedor.Value := FornecedoresCodigo.Value;
           End;
      End;
end;

procedure TFinanceiro_EmprestimosCG.Parcelas;
var
    mQtde     : Integer;
    mData     : TDate;
    mUltimoDia: Integer;
    mMes      : Integer;
    mAno      : Integer;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           EmprestimosParcelas.DisableControls;

           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
           PagarReceberBaixas.ParamByName('pNumero').AsInteger := EmprestimosFinanceiro_Numero.AsInteger;
           PagarReceberBaixas.Execute;
           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE (Numero = :pNumero)');
           PagarReceberBaixas.ParamByName('pNumero').AsInteger := PagarReceber.FieldByName('Numero').AsInteger;
           PagarReceberBaixas.Open;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosFinanceiro_Numero.Value;
           PagarReceber.Execute;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Numero IN( SELECT Financeiro_Numero FROM EmprestimosParcelas EP WHERE EP.Emprestimo = :pNumero ) ');
           PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosNumero.Value;
           PagarReceber.Execute;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pVencimento)');
           PagarReceber.ParamByName('pVencimento').AsDate := EmprestimosData.Value;
           PagarReceber.Open;

           EmprestimosParcelas.SQL.Clear;
           EmprestimosParcelas.SQL.Add('DELETE FROM EmprestimosParcelas WHERE Emprestimo = :pNumero');
           EmprestimosParcelas.ParamByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
           EmprestimosParcelas.Execute;
           EmprestimosParcelas.SQL.Clear;
           EmprestimosParcelas.SQL.Add('SELECT *,');
           EmprestimosParcelas.SQL.Add('       CASE WHEN (SELECT COUNT(*) FROM PagarReceberBaixas PB WHERE Numero = Financeiro_Numero) > 0 THEN 1 ELSE 0 END AS Baixa');
           EmprestimosParcelas.SQL.Add('FROM EmprestimosParcelas');
           EmprestimosParcelas.SQL.Add('WHERE(Emprestimo = :pNumero)');
           EmprestimosParcelas.SQL.Add('ORDER BY Parcela');
           EmprestimosParcelas.ParamByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
           EmprestimosParcelas.Open;

           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM EmprestimosParcelas');

           mData := EmprestimosData.Value;
           For mQtde := 1 to EmprestimosQtde_Parcelas.AsInteger do begin
               // Gerando a data do vencimento do título.
               If EmprestimosVencimento_Fixo.AsInteger = 0 then begin
                  mData := mData + EmprestimosVencimento_Dias.AsInteger;
                  // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
                  If (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
                     If (DayOfWeek(mData) = 1) then begin
                        If (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -2
                        else
                           mData := mData +1;
                     End;
                     If (DayOfWeek(mData) = 7) then begin
                        If (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -1
                        else
                           mData := mData +2;
                     End;
                  End;
               end else begin
                  mMes := MonthOf(mData)+1;
                  mAno := YearOf(mData);
                  If mMes > 12 then begin
                     mMes := 1;
                     mAno := mAno + 1;
                  End;

                  mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/'+InttoStr(mMes)+'/'+InttoStr(mAno))));
                  If mUltimoDia > EmprestimosVencimento_Fixo.AsInteger then begin
                     mData := StrtoDate(InttoStr(EmprestimosVencimento_Fixo.AsInteger)+'/'+InttoStr(mMes)+'/'+InttoStr(mAno));
                  end else begin
                     mData := StrtoDate(InttoStr(mUltimoDia)+'/'+InttoStr(mMes)+'/'+InttoStr(mAno));
                  End;
               End;

               tRegistro.Open;
               EmprestimosParcelas.Append;
                                   EmprestimosParcelasRegistro.Value   := tRegistro.FieldByName('Registro').AsInteger + 1;
                                   EmprestimosParcelasEmprestimo.Value := EmprestimosNumero.Value;
                                   EmprestimosParcelasParcela.Value    := mQtde;
                                   EmprestimosParcelasVencimento.Value := mData;
                                   //EmprestimosParcelasValor.Value      := cTotal.Value / EmprestimosQtde_Parcelas.AsInteger;
                                   EmprestimosParcelasValor.Value      := EmprestimosValor_Principal.Value / EmprestimosQtde_Parcelas.AsInteger;
                                   EmprestimosParcelasTotal.Value      := cTotal.Value / EmprestimosQtde_Parcelas.AsInteger;
                                   EmprestimosParcelasJuros.Value      := EmprestimosValor_Juros.Value / EmprestimosQtde_Parcelas.AsInteger;
               EmprestimosParcelas.Post;
               tRegistro.Close;
           End;

           EmprestimosParcelas.Refresh;
           EmprestimosParcelas.First;
           Emprestimos.EnableControls;
           EmprestimosParcelas.EnableControls;
      End;
      Screen.Cursor := crDefault;
      MessageDlg('Parcelas do empréstimo geradas com sucesso!', mtInformation, [mbOK], 0);
end;

procedure TFinanceiro_EmprestimosCG.cValorPrincipalChange(Sender: TObject);
begin
      cTotal.Value := Dados.EmprestimosValor_Principal.AsCurrency + Dados.EmprestimosValor_Juros.AsCurrency;
end;

procedure TFinanceiro_EmprestimosCG.cValorJurosChange(Sender: TObject);
begin
      cTotal.Value := Dados.EmprestimosValor_Principal.AsCurrency + Dados.EmprestimosValor_Juros.AsCurrency;
end;

procedure TFinanceiro_EmprestimosCG.cCodigoChange(Sender: TObject);
begin
      With Dados do begin
           If Trim(cCodigo.Text) <> '' then begin
              GradeParcelas.DisableScroll;

              EmprestimosParcelas.Close;
              EmprestimosParcelas.SQL.Clear;
              EmprestimosParcelas.SQL.Add('SELECT *,');
              EmprestimosParcelas.SQL.Add('       CASE WHEN (SELECT COUNT(*) FROM PagarReceberBaixas PB WHERE Numero = Financeiro_Numero) > 0 THEN 1 ELSE 0 END AS Baixa');
              EmprestimosParcelas.SQL.Add('FROM EmprestimosParcelas');
              EmprestimosParcelas.SQL.Add('WHERE(Emprestimo = :pNumero)');
              EmprestimosParcelas.SQL.Add('ORDER BY Parcela');
              EmprestimosParcelas.ParamByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
              EmprestimosParcelas.Open;

              GradeParcelas.EnableScroll;
           End;
      End;
end;

procedure TFinanceiro_EmprestimosCG.bFinanceiroClick(Sender: TObject);
begin
      // Verifica se ja houve baixas para alguma parcela do emprestimo.
      tNumero.SQL.Clear;
      tNumero.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceberBaixas WHERE Numero IN( SELECT Financeiro_Numero FROM EmprestimosParcelas EP WHERE EP.Emprestimo = :pNumero )');
      tNumero.ParamByName('pNumero').AsInteger := Dados.EmprestimosNumero.Value;
      tNumero.Open;
      If tNumero.FieldByName('Qtde').AsInteger > 0 then begin
         Messagedlg('Atenção!'+#13+#13+'Este empréstimo ja teve parcelas baixadas.'+#13+#13+'Estorne primeiro as baixas para poder gerar novamente.', mtInformation, [mbOK], 0);
         Abort;
      End;

      // Verifica se o total das parcelas esta batendo com o total do empréstimo.
      tTotaliza.SQL.Clear;
      tTotaliza.SQL.Add('SELECT SUM(Total) AS Total FROM EmprestimosParcelas WHERE Emprestimo = :pNumero');
      tTotaliza.ParamByName('pNumero').AsInteger := Dados.EmprestimosNumero.AsInteger;
      tTotaliza.Open;

      If roundto(tTotaliza.FieldByName('Total').AsCurrency, -2) <> roundto((Dados.EmprestimosValor_Principal.AsCurrency + Dados.EmprestimosValor_Juros.AsCurrency), -2) then begin
         Messagedlg('Erro!'+#13+#13+
                    'A somatória das parcelas não bate com o valor "Principal + Juros".'+#13+#13+
                    'Principal + Juros  = '+CurrtoStr(Dados.EmprestimosValor_Principal.AsCurrency + Dados.EmprestimosValor_Juros.AsCurrency)+#13+
                    'Total das Parcelas = '+CurrtoStr(tTotaliza.FieldByName('Total').AsCurrency) +#13+#13+
                    'Lançamentos financeiros não serão gerados.', mtError, [mbOK], 0);
         Abort;
      End;

      If MessageDlg('Atenção!'+#13+#13+
                    'Isto apagara toda a movimentação financeira deste empréstimo bancário e recriara novamente.'+#13+#13+
                    'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      Screen.Cursor := crSQLWait;
      With Dados do begin
           EmprestimosParcelas.DisableControls;

           // Gera o lançamento principal de recebimento e a baixa do emprestimo;
           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
           PagarReceberBaixas.ParamByName('pNumero').AsInteger := EmprestimosFinanceiro_Numero.AsInteger;
           PagarReceberBaixas.Execute;
           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE (Numero = :pNumero)');
           PagarReceberBaixas.ParamByName('pNumero').AsInteger := PagarReceber.FieldByName('Numero').AsInteger;
           PagarReceberBaixas.Open;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE(Numero = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosFinanceiro_Numero.Value;
           PagarReceber.Execute;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosParcelas EP WHERE EP.Emprestimo = :pNumero)');
           PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosNumero.Value;
           PagarReceber.Execute;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pVencimento)');
           PagarReceber.ParamByName('pVencimento').AsDate := EmprestimosData.Value;
           PagarReceber.Open;

           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
           tNumero.Open;

           PagarReceber.Append;
                        PagarReceberNumero.Value           := tNumero.FieldByName('Numero').AsInteger + 1;
                        PagarReceberNivel.Value            := ClassificacaoRNivel.Value;
                        PagarReceberBanco.Value            := EmprestimosBanco.Value;
                        PagarReceberCliente.Value          := EmprestimosBanco_Cliente.Value;
                        PagarReceberCentro_Custo.Value     := EmprestimosCentro_Custo.Value;
                        PagarReceberClassificacao.Value    := EmprestimosClassificacao_R.Value;
                        PagarReceberDocumento.Value        := EmprestimosTipo_Documento.Value;
                        PagarReceberNumero_Documento.Value := EmprestimosNumero_Documento.Value;
                        PagarReceberProcesso.Value         := EmprestimosProcesso.Value;
                        PagarReceberTipo.Value             := 'R';
                        PagarReceberTipo_Nota.Value        := 'EP';
                        PagarReceberObservacao.Value       := 'Empréstimo nº '+EmprestimosNumero_Documento.AsString+ ' de '+ EmprestimosData.AsString;
                        PagarReceberCustoConta.Value       := false;
                        PagarReceberCusto_Seletivo.Value   := false;
                        PagarReceberCusto_Entrada.Value    := false;
                        PagarReceberData_Documento.Value   := EmprestimosData.Value;
                        PagarReceberData_Vencimento.Value  := EmprestimosData.Value;
                        PagarReceberValor_Documento.Value  := EmprestimosValor_Principal.Value;
                        PagarReceberValor_Parcela.Value    := EmprestimosValor_Principal.Value;
                        PagarReceberMulta.Value            := 0;
                        PagarReceberJuros.Value            := 0;
                        PagarReceberDesconto.Value         := 0;
                        PagarReceberValor_Operacao.Value   := EmprestimosValor_Principal.Value;
                        PagarReceberValor_Total.Value      := EmprestimosValor_Principal.Value;
                        PagarReceberValor_Baixado.Value    := EmprestimosValor_Principal.Value;
                        PagarReceberProvisorio.Value       := false;
                        PagarReceberForma_Tipo.Value       := EmprestimosForma_Tipo.Value;
                        PagarReceberEmprestimo.Value       := true;
                        PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                        PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
           PagarReceber.Post;
           tNumero.Close;

           // Salva o número do lançamento financeiro na tabela de empréstimos.
           Emprestimos.Edit;
                       EmprestimosFinanceiro_Numero.Value := PagarReceberNumero.Value;
           Emprestimos.Post;

           // Baixa automatica para empréstimos.
           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM PagarReceberBaixas');
           tRegistro.Open;

           PagarReceberBaixas.Append;
                              PagarReceberBaixasRegistro.Value            := tRegistro.FieldByName('Registro').AsInteger + 1;
                              PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                              PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.Value;
                              PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                              PagarReceberBaixasValor.Value               := PagarReceberValor_Operacao.Value;
                              PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                              PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                              PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                              PagarReceberBaixasObservacao.Value          := 'Recebimento referente a empréstimo nº '+ EmprestimosNumero_Documento.AsString + ' de '+ EmprestimosData.AsString;
                              PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
           PagarReceberBaixas.Post;
           tRegistro.Close;

           // Grava o numero da baixa no titulo.
           PagarReceber.Edit;
                        PagarReceberBaixa_Numero.Value := PagarReceberBaixasRegistro.Value;
           PagarReceber.Post;

           // Gera os lançamentos financeiros de todas as parcelas do empréstimo.
           EmprestimosParcelas.First;
           While not EmprestimosParcelas.Eof do begin
                 tNumero.Open;
                 PagarReceber.Append;
                              PagarReceberNumero.Value           := tNumero.FieldByName('Numero').AsInteger + 1;
                              PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                              PagarReceberBanco.Value            := EmprestimosBanco.Value;
                              PagarReceberFornecedor.Value       := EmprestimosBanco_Fornecedor.Value;
                              PagarReceberCentro_Custo.Value     := EmprestimosCentro_Custo.Value;
                              PagarReceberClassificacao.Value    := EmprestimosClassificacao_P.Value;
                              PagarReceberDocumento.Value        := EmprestimosTipo_Documento.Value;
                              PagarReceberNumero_Documento.Value := EmprestimosTipo.AsString+EmprestimosNumero.AsString; 
                              PagarReceberProcesso.Value         := EmprestimosProcesso.Value;
                              PagarReceberTipo.Value             := 'P';
                              PagarReceberTipo_Nota.Value        := 'EP';
                              PagarReceberParcela.Value          := PoeZero(3, EmprestimosParcelasParcela.AsInteger) + '/'+PoeZero(3, EmprestimosQtde_Parcelas.AsInteger);
                              PagarReceberObservacao.Value       := 'Parcela '+PoeZero(3, EmprestimosParcelasParcela.AsInteger) + '/'+PoeZero(3, EmprestimosQtde_Parcelas.AsInteger)+ ' de empréstimo nº '+EmprestimosNumero_Documento.AsString+ ' de '+ EmprestimosData.AsString;
                              PagarReceberCustoConta.Value       := false;
                              PagarReceberCusto_Seletivo.Value   := false;
                              PagarReceberCusto_Entrada.Value    := false;
                              //PagarReceberData_Documento.Value   := EmprestimosData.Value;
                              PagarReceberData_Documento.Value   := EmprestimosParcelasVencimento.Value;
                              PagarReceberData_Vencimento.Value  := EmprestimosParcelasVencimento.Value;
                              PagarReceberValor_Documento.Value  := EmprestimosParcelasValor.Value;
                              PagarReceberValor_Parcela.Value    := EmprestimosParcelasValor.Value;
                              PagarReceberMulta.Value            := 0;
                              PagarReceberJuros.Value            := EmprestimosParcelasJuros.Value;
                              PagarReceberDesconto.Value         := 0;
                              PagarReceberValor_Operacao.Value   := EmprestimosParcelasValor.Value;
                              PagarReceberValor_Total.Value      := EmprestimosParcelasValor.Value;
                              PagarReceberValor_Baixado.Value    := 0;
                              PagarReceberProvisorio.Value       := false;
                              PagarReceberEmprestimo.Value       := true;
                              PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                              PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
                 PagarReceber.Post;
                 tNumero.Close;

                 // Salva o número do lançamento financeiro na tabela de empréstimos.
                 EmprestimosParcelas.Edit;
                                     EmprestimosParcelasFinanceiro_Numero.Value := PagarReceberNumero.Value;
                 EmprestimosParcelas.Post;

                 EmprestimosParcelas.Next;
           End;
           EmprestimosParcelas.EnableControls;
      End;

      Screen.Cursor := crDefault;
      MessageDlg('Lançamentos financeiros do empréstimo gerados com sucesso!', mtInformation, [mbOK], 0);
end;

procedure TFinanceiro_EmprestimosCG.GradeParcelasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
    Icon: TBitmap;
begin
      With Dados do begin
           Icon := TBitmap.Create;
           If (Column.FieldName = 'Baixa') then begin
              With GradeParcelas.Canvas do begin
                   Brush.Color := $00D2FFFF;
                   FillRect(Rect);
                   If (EmprestimosParcelas.FieldByName('Baixa').Value = 1) then ImageList1.GetBitmap(0, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
      End;
end;

procedure TFinanceiro_EmprestimosCG.GradeParcelasKeyPress(Sender: TObject;var Key: Char);
begin
      If (Key = #13) and (Dados.EmprestimosParcelas.State = dsEdit) then begin
         Dados.EmprestimosParcelas.Post;
      End;
end;

end.
