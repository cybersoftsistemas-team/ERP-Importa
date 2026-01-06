unit frmFinanceiro_EmprestimosDD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mask, RxLookup, Vcl.ExtCtrls, RXCtrls, DBCtrls,
  Funcoes, RXDBCtrl, RxDBComb, DB, DBAccess, MSAccess, Grids, DBGrids, DateUtils, Vcl.ComCtrls, ClipBrd, Buttons, Menus, RxCurrEdit, MemDS, system.UITypes, RxToolEdit;

type
  TFinanceiro_EmprestimosDD = class(TForm)
    Panel1: TPanel;
    tNumero: TMSQuery;
    tGarantia: TMSQuery;
    tRegistro: TMSQuery;
    tDuplicata: TMSQuery;
    Panel2: TPanel;
    StaticText6: TStaticText;
    cBanco: TRxDBLookupCombo;
    StaticText3: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    cCodigo: TDBEdit;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText1: TStaticText;
    StaticText15: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    cValorLiquido: TDBEdit;
    cValorJuros: TDBEdit;
    DBEdit7: TDBEdit;
    cDataCG: TDBDateEdit;
    StaticText18: TStaticText;
    cGarantia: TRxDBComboBox;
    cValorBruto: TCurrencyEdit;
    DBEdit3: TDBEdit;
    StaticText19: TStaticText;
    GradeDuplicatas: TDBGrid;
    RxDBGrid1: TDBGrid;
    lForma: TStaticText;
    cForma: TRxDBComboBox;
    Panel3: TPanel;
    Button1: TButton;
    Navega: TDBNavigator;
    bAdicionaFatura: TButton;
    bRemoveTodas: TButton;
    tSoma: TMSQuery;
    bRemoverDuplicata: TButton;
    bAdicionarDuplicata: TButton;
    MenuDuplicatas: TPopupMenu;
    LiquidarTodas1: TMenuItem;
    Desmarcartodas1: TMenuItem;
    SelecionarDuplicata1: TMenuItem;
    DesmarcarDuplicata1: TMenuItem;
    bGerarBaixas: TButton;
    N1: TMenuItem;
    Remover1: TMenuItem;
    Adicionar1: TMenuItem;
    AdicionarFatura1: TMenuItem;
    RemoverTodas1: TMenuItem;
    Baixar1: TMenuItem;
    N2: TMenuItem;
    bRateio: TBitBtn;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    StaticText4: TStaticText;
    DBEdit2: TDBEdit;
    StaticText5: TStaticText;
    DBEdit4: TDBEdit;
    StaticText9: TStaticText;
    DBEdit5: TDBEdit;
    StaticText10: TStaticText;
    DBEdit6: TDBEdit;
    StaticText11: TStaticText;
    DBEdit8: TDBEdit;
    tPrazo: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    tLancamento: TMSQuery;
    N3: TMenuItem;
    Editar1: TMenuItem;
    DBEdit9: TDBEdit;
    StaticText12: TStaticText;
    bPesquisa: TButton;
    tTemp: TMSQuery;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cProcessoChange(Sender: TObject);
    procedure cBancoClienteChange(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure GradeDuplicatasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
    procedure bRemoveTodasClick(Sender: TObject);
    procedure bAdicionaFaturaClick(Sender: TObject);
    procedure Rateio;
    procedure bGerarBaixasClick(Sender: TObject);
    procedure bAdicionarDuplicataClick(Sender: TObject);
    procedure bRemoverDuplicataClick(Sender: TObject);
    procedure SelecionarDuplicata1Click(Sender: TObject);
    procedure DesmarcarDuplicata1Click(Sender: TObject);
    procedure LiquidarTodas1Click(Sender: TObject);
    procedure Desmarcartodas1Click(Sender: TObject);
    procedure bRateioClick(Sender: TObject);
    procedure cValorBrutoChange(Sender: TObject);
    procedure ChecaConta(ContaD:String; ContaC:String);
    Function  ConverteHistorico(Historico: String):String;
    procedure Editar1Click(Sender: TObject);
    procedure GradeDuplicatasColExit(Sender: TObject);
    procedure GradeDuplicatasKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure bPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mContaDebito  : String;
    mContaCredito : String;
    mDuplicata    : String;
  end;

var
  Financeiro_EmprestimosDD: TFinanceiro_EmprestimosDD;

implementation

uses frmDados, frmMenu_Principal, frmDMContab, frmFinanceiro_EmprestimosDDData, frmPesquisaGerais;

{$R *.dfm}

procedure TFinanceiro_EmprestimosDD.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_EmprestimosDD.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_EmprestimosDD.bPesquisaClick(Sender: TObject);
var 
   mPesquisa: string;
begin
     mPesquisa := InputBox('Pesquisa', 'Duplicata/Processo:', mPesquisa);
     with Dados do begin                                    
          if trim(mPesquisa) <> '' then begin
             with tTemp do begin
                  sql.Clear;
                  sql.Add('select Emprestimo, Registro from EmprestimosDuplicatas where Duplicata like '+quotedstr('%'+mPesquisa+'%'));
                  open;
                  if tTemp.RecordCount = 0 then begin
                     sql.Clear;
                     sql.Add('select Emprestimo, Registro from EmprestimosDuplicatas where Processo like '+quotedstr('%'+mPesquisa+'%'));
                     open;
                  end;
                  if tTemp.RecordCount > 0 then begin
                     Emprestimos.Locate('Numero', tTemp.FieldByName('Emprestimo').AsInteger, [loCaseInsensitive]);
                     EmprestimosDuplicatas.Locate('Registro', tTemp.FieldByName('Registro').AsInteger, [loCaseInsensitive]);
                  end;
             end;
          end;
     end;
end;

procedure TFinanceiro_EmprestimosDD.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados,nil,nil,nil);
      Financeiro_EmprestimosDD.Release;
      Financeiro_EmprestimosDD := nil;
end;

procedure TFinanceiro_EmprestimosDD.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      With Dados do begin
           Emprestimos.SQL.Clear;
           Emprestimos.SQL.Add('SELECT * FROM Emprestimos WHERE(Tipo = ''DD'') ORDER BY Numero');
           Emprestimos.Open;

           Navega.Controls[6].Enabled := Emprestimos.RecordCount > 0;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE Ativo = 1 ORDER BY Nome');
           Clientes.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(ISNULL(Desativado, 0) <> 1) ');
           ProcessosDOC.Open;

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos ORDER BY Nome');
           Bancos.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

           tGarantia.SQL.Clear;
           tGarantia.SQL.Add('SELECT DISTINCT Garantia FROM Emprestimos WHERE ISNULL(Garantia, '''') <> '''' ');
           tGarantia.Open;
           tGarantia.First;
           cGarantia.Items.Clear;
           While not tGarantia.Eof do begin
                 cGarantia.Items.Add(tGarantia.FieldByName('Garantia').AsString);
                 tGarantia.Next;
           End;
           Panel1.Enabled := Emprestimos.RecordCount > 0;
      End;

      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_EmprestimosDD.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
   i: Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;

         bAdicionarDuplicata.Enabled := false;
         bAdicionaFatura.Enabled     := false;
         bRemoverDuplicata.Enabled   := false;
         bRemoveTodas.Enabled        := false;
         bGerarBaixas.Enabled        := false;
         Panel2.Enabled              := true;
         Panel1.Enabled              := false;
         GradeDuplicatas.Enabled     := false;
         
         cDataCG.SetFocus;

         If Button = nbInsert then begin
            Dados.EmprestimosTipo.Value := 'DD';

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
         End;
      End;
      If (Button = nbPost) or (Button = nbCancel) then begin
         Panel2.Enabled              := false;
         bAdicionarDuplicata.Enabled := true;
         bAdicionaFatura.Enabled     := true;
         bRemoverDuplicata.Enabled   := true;
         bRemoveTodas.Enabled        := true;
         bGerarBaixas.Enabled        := true;
         Panel1.Enabled              := true;
         GradeDuplicatas.Enabled     := true;

         bGerarBaixas.Enabled       := Dados.EmprestimosDuplicatas.RecordCount > 0;
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
      End;
end;

procedure TFinanceiro_EmprestimosDD.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
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
              If EmprestimosValor_Principal.AsCurrency <= 0 then begin
                 MessageDlg('Erro de valor!'+#13+#13+'O campo "Valor Principal" é obrigatório.', mtError, [mbOK], 0);
                 cValorLiquido.Setfocus;
                 Abort;
              End;
              Panel1.Enabled := Emprestimos.RecordCount > 0;
           End;
           If (Button = nbPost) and (Emprestimos.State = dsInsert) then begin
              tNumero.SQL.Clear;
              tNumero.SQL.Add('SELECT MAX(Registro) AS Registro FROM Emprestimos');
              tNumero.Open;
              EmprestimosRegistro.Value := tNumero.FieldByName('Registro').AsInteger + 1;
              
              tNumero.SQL.Clear;
              tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM Emprestimos WHERE Tipo = ''DD'' ');
              tNumero.Open;
              
              EmprestimosNumero.Value           := tNumero.FieldByName('Numero').AsInteger + 1;
              EmprestimosNumero_Documento.Value := EmprestimosTipo.AsString + PoeZero(5, EmprestimosNumero.AsInteger);
              tNumero.Close;
           End;

           If (Button = nbDelete) then begin
              If MessageDlg('Deseja realmente excluir este empréstimo?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then Abort;

              // Exclui as baixas das duplicatas do empréstimo.
              EmprestimosDuplicatas.First;
              While not EmprestimosDuplicatas.Eof do begin
                    tSoma.SQL.Clear;
                    tSoma.SQL.Add('SELECT ISNULL(SUM(Valor-Desconto), 0) AS Baixado, ISNULL(SUM(Valor), 0) AS Operacao');
                    tSoma.SQL.Add('FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
                    tSoma.ParamByName('pNumero').AsInteger := EmprestimosDuplicatas.FieldByName('Financeiro_Numero').AsInteger;
                    tSoma.Open;

                    PagarReceber.SQL.Clear;
                    PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
                    PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosDuplicatas.FieldByName('Financeiro_Numero').AsInteger;
                    PagarReceber.Open;

                    PagarReceber.Edit;
                                 PagarReceberDesconto_Liquidacao.Value := 0;
                                 PagarReceberValor_Total.Value         := (PagarReceberValor_Parcela.AsCurrency + PagarReceberJuros.AsCurrency + PagarReceberMulta.AsCurrency - PagarReceberDesconto.AsCurrency);
                                 PagarReceberValor_Operacao.Value      := PagarReceberValor_Total.Value;
                                 PagarReceberValor_Baixado.Value       := tSoma.FieldByName('Baixado').Value;
                    PagarReceber.Post;
                    EmprestimosDuplicatas.Next;
              End;
              with tTemp do begin
                   sql.clear;
                   sql.Add('delete from PagarReceberBaixas where Registro in(select Financeiro_Baixa from EmprestimosDuplicatas where Emprestimo = :pEmprestimo)');
                   ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
                   execute;
                   sql.Clear;
                   sql.Add('delete from EmprestimosDuplicatas where Emprestimo = :pEmprestimo');
                   ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
                   Execute;
              end;
              cCodigoChange(Self);
           End;
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_EmprestimosDD.cProcessoChange(Sender: TObject);
begin
      With Dados do begin
           EmprestimosCliente.Value := ProcessosDOCCliente.Value;
      End;
end;

procedure TFinanceiro_EmprestimosDD.cBancoClienteChange(Sender: TObject);
begin
      With Dados do begin
           If Fornecedores.Locate('CNPJ', ClientesCNPJ.AsString, [loCaseInsensitive]) = true then begin
              EmprestimosBanco_Fornecedor.Value := FornecedoresCodigo.Value;
           End;
      End;
end;

procedure TFinanceiro_EmprestimosDD.cCodigoChange(Sender: TObject);
begin
      With Dados do begin
           If Trim(cCodigo.Text) <> '' then begin
              with EmprestimosDuplicatas do begin
                   sql.clear;
                   sql.add('select *');
                   sql.add('       ,Baixa = case when (select sum(Valor) from PagarReceberBaixas pb where Numero = Financeiro_Numero) = (select Valor_Operacao from PagarReceber pb where Numero = Financeiro_Numero) then 1');
                   sql.add('                     when (select sum(Valor) from PagarReceberBaixas pb where Numero = Financeiro_Numero) > 0');
                   sql.add('                          and (select sum(Valor) from PagarReceberBaixas pb whERE Numero = Financeiro_Numero) < (select Valor_Operacao from PagarReceber pb where Numero = Financeiro_Numero) then 2');
                   sql.add('                end');
                   sql.add('from EmprestimosDuplicatas');
                   sql.add('where(Emprestimo = :pNumero)');
                   sql.add('order by Duplicata');
                   paramByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
                   open;
                   bGerarBaixas.Enabled := EmprestimosDuplicatas.RecordCount > 0;
                   bRateio.Enabled      := EmprestimosDuplicatas.RecordCount > 0;
              end;
              tSoma.SQL.Clear;
              tSoma.SQL.Add('SELECT SUM(Valor_Bruto) AS Valor_Bruto,');
              tSoma.SQL.Add('       SUM(Valor_Juros) AS Valor_Juros');
              tSoma.SQL.Add('FROM EmprestimosDuplicatas');
              tSoma.SQL.Add('WHERE(Emprestimo = :pNumero)');
              tSoma.ParamByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
              tSoma.Open;
              cValorBruto.Value := tSoma.FieldByName('Valor_Bruto').AsCurrency;
              tSoma.Close;
           End;
      End;
end;

procedure TFinanceiro_EmprestimosDD.GradeDuplicatasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
    Icon: TBitmap;
begin
      With Dados do begin
           Icon := TBitmap.Create;
           If (Column.FieldName = 'Baixa') then begin
              With GradeDuplicatas.Canvas do begin
                   Brush.Color := $00FFEAD5;
                   FillRect(Rect);
                   If (EmprestimosDuplicatas.FieldByName('Baixa').Value = 1) then ImageList1.GetBitmap(0, Icon);
                   If (EmprestimosDuplicatas.FieldByName('Baixa').Value = 2) then ImageList1.GetBitmap(8, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
           If (Column.FieldName = 'Liquidar') then begin
              With GradeDuplicatas.Canvas do begin
                   Brush.Color := $00FFEAD5;
                   FillRect(Rect);
                   If (EmprestimosDuplicatas.FieldByName('Liquidar').Value = true) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
      End;
end;

procedure TFinanceiro_EmprestimosDD.bRemoveTodasClick(Sender: TObject);
begin
     If MessageDlg('Deseja realmente remover todas as duplicata do empréstimo ?', mtConfirmation, [mbYes, mbNo], 0) = mrno then
        Abort;

     With Dados do begin
          PagarReceberBaixas.SQL.Clear;
          PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE Registro IN(SELECT Financeiro_Baixa FROM EmprestimosDuplicatas WHERE Emprestimo = :pEmprestimo)');
          PagarReceberBaixas.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
          PagarReceberBaixas.Execute;
          PagarReceberBaixas.SQL.Clear;
          PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Registro IS NULL');
          PagarReceberBaixas.Open;

          EmprestimosDuplicatas.First;
          While not EmprestimosDuplicatas.Eof do begin
                // Atualiza o titulos com os dados da baixa.
                tSoma.SQL.Clear;
                tSoma.SQL.Add('SELECT ISNULL(SUM(Valor-Desconto), 0) AS Baixado, ISNULL(SUM(Valor), 0) AS Operacao');
                tSoma.SQL.Add('FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
                tSoma.ParamByName('pNumero').AsInteger := EmprestimosDuplicatas.FieldByName('Financeiro_Numero').AsInteger;
                tSoma.Open;

                PagarReceber.SQL.Clear;
                PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = :pNumero');
                PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosDuplicatas.FieldByName('Financeiro_Numero').AsInteger;
                PagarReceber.Open;

                PagarReceber.Edit;
                             PagarReceberDesconto_Liquidacao.Value := 0;
                             PagarReceberValor_Total.Value         := (PagarReceberValor_Parcela.AsCurrency + PagarReceberJuros.AsCurrency + PagarReceberMulta.AsCurrency - PagarReceberDesconto.AsCurrency);
                             PagarReceberValor_Operacao.Value      := PagarReceberValor_Total.Value;
                             PagarReceberValor_Baixado.Value       := tSoma.FieldByName('Baixado').Value;
                PagarReceber.Post;

                EmprestimosDuplicatas.Next;
          End;

          EmprestimosDuplicatas.SQL.Clear;
          EmprestimosDuplicatas.SQL.Add('DELETE FROM EmprestimosDuplicatas WHERE Emprestimo = :pEmprestimo');
          EmprestimosDuplicatas.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
          EmprestimosDuplicatas.Execute;
          cCodigoChange(Self);
     End;
end;

procedure TFinanceiro_EmprestimosDD.bAdicionaFaturaClick(Sender: TObject);
begin
     mDuplicata := InputBox('Inclusão da Fatura', 'Fatura nº:', mDuplicata);

     If Trim(mDuplicata) = '' then Abort;

     With Dados do begin
          tDuplicata.SQL.Clear;
          tDuplicata.SQL.Add('SELECT Numero_Documento,');
          tDuplicata.SQL.Add('       Data_Vencimento,');
          tDuplicata.SQL.Add('       Valor_Operacao,');
          tDuplicata.SQL.Add('       Processo,');
          tDuplicata.SQL.Add('       Numero');
          tDuplicata.SQL.Add('FROM   PagarReceber WHERE Tipo = ''R'' AND Documento IN(''DUPL'', ''NF'') AND Numero_Documento LIKE '+ QuotedStr('%'+mDuplicata+'%'));
          tDuplicata.Open;

          If tDuplicata.RecordCount = 0 then begin
             MessageDlg('Não foi encontrado nenhuma duplicata com o número informado no financeiro !', mtError, [mbOK], 0);
             Abort;
          End;

          If EmprestimosDuplicatas.Locate('Duplicata', tDuplicata.FieldByName('Numero_Documento').AsString, [loCaseInsensitive]) then begin
             MessageDlg('Duplicata ja informada !', mtInformation, [mbOK], 0);
             Abort;
          End;

          If MessageDlg('Deseja realmente adicionar esta fatura ao empréstimo ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

          tDuplicata.First;
          While not tDuplicata.Eof do begin
                tSoma.SQL.Clear;
                tSoma.SQL.Add('SELECT SUM(Valor) AS Total_Baixado');
                tSoma.SQL.Add('FROM PagarReceberBaixas');
                tSoma.SQL.Add('WHERE (Numero = :pNumero)');
                tSoma.ParamByName('pNumero').AsInteger := tDuplicata.FieldByName('Numero').AsInteger;
                tSoma.Open;

                tRegistro.SQL.Clear;
                tRegistro.SQL.Add('SELECT MAX(Registro)+1 AS Registro FROM EmprestimosDuplicatas');
                tRegistro.Open;
                
                EmprestimosDuplicatas.Append;
                                      EmprestimosDuplicatasRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger;
                                      EmprestimosDuplicatasEmprestimo.Value        := EmprestimosNumero.Value;
                                      EmprestimosDuplicatasDuplicata.Value         := tDuplicata.FieldByName('Numero_Documento').AsString;
                                      EmprestimosDuplicatasVencimento.Value        := tDuplicata.FieldByName('Data_Vencimento').Value;
                                      EmprestimosDuplicatasValor_Bruto.Value       := tDuplicata.FieldByName('Valor_Operacao').Value - tSoma.FieldByName('Total_Baixado').AsCurrency;
                                      EmprestimosDuplicatasValor_Liquido.Value     := 0;
                                      EmprestimosDuplicatasFinanceiro_Numero.Value := tDuplicata.FieldByName('Numero').Value;
                                      EmprestimosDuplicatasLiquidar.Value          := false;
                                      EmprestimosDuplicatasProcesso.Value          := tDuplicata.FieldByName('Processo').Value;
                EmprestimosDuplicatas.Post;
                
                tRegistro.Close;
                tSoma.close;
                tDuplicata.Next;
          End;

          Rateio;
     End;
end;

procedure TFinanceiro_EmprestimosDD.Rateio;
begin
      With Dados do begin
           tSoma.SQL.Clear;
           tSoma.SQL.Add('SELECT SUM(Valor_Bruto) AS Valor_Bruto,');
           tSoma.SQL.Add('       SUM(Valor_Juros) AS Valor_Juros');
           tSoma.SQL.Add('FROM EmprestimosDuplicatas');
           tSoma.SQL.Add('WHERE(Emprestimo = :pNumero)');
           tSoma.ParamByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
           tSoma.Open;
           cValorBruto.Value := tSoma.FieldByName('Valor_Bruto').AsCurrency;
           tSoma.Close;

           If cValorBruto.Value > 0 then begin
              EmprestimosDuplicatas.SQL.Clear;
              EmprestimosDuplicatas.SQL.Add('UPDATE EmprestimosDuplicatas SET Valor_Liquido = :pValor * Valor_Bruto,');
              EmprestimosDuplicatas.SQL.Add('                                 Valor_Juros   = Valor_Bruto - (:pValor * Valor_Bruto)');
              EmprestimosDuplicatas.SQL.Add('WHERE Emprestimo = :pEmprestimo');
              EmprestimosDuplicatas.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
              EmprestimosDuplicatas.ParamByName('pValor').Value          := (EmprestimosValor_Principal.Value / cValorBruto.Value);
              EmprestimosDuplicatas.Execute;
           End;
           
           cCodigoChange(Self);

           tSoma.SQL.Clear;
           tSoma.SQL.Add('SELECT SUM(Valor_Juros) AS Valor_Juros');
           tSoma.SQL.Add('FROM EmprestimosDuplicatas');
           tSoma.SQL.Add('WHERE(Emprestimo = :pNumero)');
           tSoma.ParamByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
           tSoma.Open;

           // Calculo dos vencimentos para os juros mês.
           tPrazo.SQL.Clear;
           tPrazo.SQL.Add('SELECT DATEDIFF(DAY , (SELECT Data FROM Emprestimos WHERE Numero = Emprestimo AND Tipo = ''DD''), Vencimento) AS Dias');
           tPrazo.SQL.Add('INTO #TEMP');
           tPrazo.SQL.Add('FROM EmprestimosDuplicatas');
           tPrazo.SQL.Add('WHERE Emprestimo = :pEmprestimo');
           tPrazo.SQL.Add('SELECT (SUM(Dias)/COUNT(*)) AS Dias FROM #TEMP');
           tPrazo.SQL.Add('DROP TABLE #TEMP');
           tPrazo.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
           tPrazo.Open;

           Emprestimos.Edit;
                       EmprestimosValor_Juros.Value := tSoma.FieldByName('Valor_Juros').AsCurrency;
                       if cValorBruto.Value > 0 then
                          EmprestimosJuros_Efetivos.Value := (((EmprestimosValor_Principal.Value-EmprestimosValor_IOF.Value-EmprestimosValor_Diversos.Value)/cValorBruto.Value)-1)*100;
                       EmprestimosPrazo_Dias.Value := tPrazo.FieldByName('Dias').AsFloat;
                       EmprestimosPrazo_Mes.Value  := tPrazo.FieldByName('Dias').AsFloat / 30;
                       EmprestimosJuros_Mes.Value  := EmprestimosJuros_Efetivos.Value / EmprestimosPrazo_Mes.Value;
           Navega.BtnClick(nbPost);

           tSoma.Close;
      End;
end;

procedure TFinanceiro_EmprestimosDD.bGerarBaixasClick(Sender: TObject);
begin
      If MessageDlg('Atenção !'+#13+#13+
                    'Isso irá apagar as baixas de empréstimos realizadas anteriormente.'+#13+#13+
                    'Deseja realmente gerar as baixas ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      With Dados, dmContab do begin
           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE Registro IN(SELECT Financeiro_Baixa FROM EmprestimosDuplicatas WHERE Emprestimo = :pEmprestimo)');

           PagarReceberBaixas.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
           PagarReceberBaixas.Execute;
           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Registro IS NULL');
           PagarReceberBaixas.Open;

           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM PagarReceberBaixas');

           TiposDocumentos.SQL.Clear;
           TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE Codigo = :pCodigo');
           TiposDocumentos.ParamByName('pCodigo').AsString := ConfiguracaoEmprestimoBancario_TipoDocumento.AsString;
           TiposDocumentos.Open;
           
           EmprestimosDuplicatas.First;
           While not EmprestimosDuplicatas.Eof do begin
                 tRegistro.Open;
                 PagarReceberBaixas.Append;
                                    PagarReceberBaixasRegistro.Value            := tRegistro.FieldByName('Registro').AsInteger + 1;
                                    PagarReceberBaixasNumero.Value              := EmprestimosDuplicatas.FieldByName('Financeiro_Numero').AsInteger;
                                    PagarReceberBaixasTipo.Value                := 'R';
                                    PagarReceberBaixasData.Value                := Emprestimos.FieldByName('Data').Value;
                                    PagarReceberBaixasValor.Value               := EmprestimosDuplicatas.FieldByName('Valor_Liquido').Value;
                                    PagarReceberBaixasMulta.Value               := 0;
                                    PagarReceberBaixasJuros.Value               := 0;
                                    PagarReceberBaixasDesconto.Value            := EmprestimosDuplicatas.FieldByName('Valor_Juros').Value;
                                    PagarReceberBaixasOrigem_Multa.Value        := 'E';
                                    PagarReceberBaixasOrigem_Juros.Value        := 'E';
                                    PagarReceberBaixasOrigem_Desconto.Value     := 'E';
                                    PagarReceberBaixasForma_Tipo.Value          := cForma.Text;
                                    PagarReceberBaixasForma_TipoDocumento.Value := EmprestimosNumero.AsString;
                                    PagarReceberBaixasBanco.Value               := Emprestimos.FieldByName('Banco').Value;
                                    PagarReceberBaixasBanco_Conta.Value         := BancosConta.Value;
                                    PagarReceberBaixasObservacao.Value          := 'Baixa de duplicata de emprestimo nº '+EmprestimosNumero_Documento.AsString;
                 PagarReceberBaixas.Post;
                 tRegistro.Close;

                 // Salva o numero da baixa gerada na tabela de duplicatas do contrato.
                 EmprestimosDuplicatas.Edit;
                                       EmprestimosDuplicatasFinanceiro_Baixa.Value := PagarReceberBaixasRegistro.Value;
                 EmprestimosDuplicatas.Post;

                 // Atualiza o titulos com os dados da baixa.
                 tSoma.SQL.Clear;
                 tSoma.SQL.Add('SELECT ISNULL(SUM(Valor-Desconto), 0) AS Baixado, ISNULL(SUM(Valor), 0) AS Operacao');
                 tSoma.SQL.Add('FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
                 tSoma.ParamByName('pNumero').AsInteger := EmprestimosDuplicatas.FieldByName('Financeiro_Numero').AsInteger;
                 tSoma.Open;

                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = :pNumero');
                 PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosDuplicatas.FieldByName('Financeiro_Numero').AsInteger;
                 PagarReceber.Open;

                 PagarReceber.Edit;
                              If PagarReceberBaixa_Numero.AsInteger = 0 then begin
                                 PagarReceberBaixa_Numero.Value := PagarReceberBaixasRegistro.Value;
                                 PagarReceberBanco.Value        := Emprestimos.FieldByName('Banco').Value;
                                 PagarReceberForma_Tipo.Value   := cForma.Text;
                              End;
                              PagarReceberDesconto_Liquidacao.Value := PagarReceberBaixasDesconto.Value;
                              PagarReceberValor_Total.Value         := (PagarReceberValor_Parcela.AsCurrency + PagarReceberJuros.AsCurrency + PagarReceberMulta.AsCurrency - (PagarReceberDesconto.AsCurrency+EmprestimosDuplicatas.FieldByName('Valor_Juros').AsCurrency));
                              PagarReceberValor_Operacao.Value      := tSoma.FieldByName('Operacao').Value;
                              PagarReceberValor_Baixado.Value       := tSoma.FieldByName('Baixado').Value;
                 PagarReceber.Post;

                 // Lançamento Contabil - Baixa da Duplicata.
                 {
                 ClassificacaoFinanceira.SQL.Clear;
                 ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE Codigo = :pCodigo');
                 ClassificacaoFinanceira.ParamByName('pCodigo').AsString := EmprestimosClassificacao_P.Value;
                 ClassificacaoFinanceira.Open;

                 Historicos.SQL.Clear;
                 Historicos.SQL.Add('SELECT * FROM HistoricoPadrao WHERE Codigo = :pCodigo');
                 Historicos.ParamByName('pCodigo').AsInteger := ClassificacaoFinanceiraPagamento_Historico.AsInteger;
                 Historicos.Open;

                 If ClassificacaoFinanceiraTipo_Lancamento.AsString = 'D' then begin // Partida dobrada - "Pega as duas contas".
                    If ClassificacaoFinanceiraTipo.AsString = 'P' then
                       ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, BancosPlano_Contas.AsString)
                    else
                       ChecaConta(BancosPlano_Contas.AsString, ClassificacaoFinanceiraPagamento_Conta.AsString);
                 end else begin                                                      // Partida multipla - "Pega apenas a conta das despesas".
                    If ClassificacaoFinanceiraTipo.AsString = 'P' then
                       ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, '')
                    else
                       ChecaConta('', ClassificacaoFinanceiraPagamento_Conta.AsString);
                 End;

                 If (mContaDebito <> '') or (mContaCredito <> '') then begin
                    tLancamento.Open;
                    Lancamentos.Append;
                                LancamentosRegistro.Value              := tLancamento.FieldByName('Registro').AsInteger+1;
                                LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger+1;
                                LancamentosData.Value                  := PagarReceberBaixasData.AsDateTime;
                                LancamentosConta_Debito.Value          := mContaDebito;
                                LancamentosConta_Credito.Value         := mContaCredito;
                                LancamentosValor.Value                 := PagarReceberBaixasValor.Value;
                                LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraPagamento_Historico.AsInteger;
                                LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosDescricao.AsString);
                                LancamentosDocumento.Value             := EmprestimosDuplicatasDuplicata.Value;
                                LancamentosData_Documento.Value        := EmprestimosDuplicatasVencimento.Value;
                                LancamentosTipo_Documento.Value        := 'EB';
                                LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                                LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                                LancamentosOrigem.Value                := 'EMPRESTIMOS - DD Nº> '+EmprestimosDuplicatasDuplicata.Value;
                                LancamentosNumero_Financeiro.Value     := PagarReceberBaixasNumero.Value;
                    Lancamentos.Post;
                    tLancamento.Close;
                 end;
                 }
                 EmprestimosDuplicatas.Next;

                 // Registra o log dos lançamentos baixados.
                 GerarLog('('+Menu_Principal.mUsuarioCodigo+') '+Menu_Principal.mUsuarioNome, 'Emprestimos', 'BAIXA', 'Numero', 'Registro nº '+PagarReceberBaixasRegistro.AsString+'  Titulo n° '+PagarReceberBaixasNumero.AsString+' Data Baixa '+PagarReceberBaixasData.AsString, '', '', '');
           End;
      End;
      cCodigoChange(Self);
end;

procedure TFinanceiro_EmprestimosDD.bAdicionarDuplicataClick(Sender: TObject);
begin
     mDuplicata := InputBox('Inclusão de Duplicata', 'Duplicata nº:',mDuplicata);

     If Trim(mDuplicata) = '' then Abort;

     With Dados do begin
          tDuplicata.SQL.Clear;
          tDuplicata.SQL.Add('SELECT Numero_Documento,');
          tDuplicata.SQL.Add('       Data_Vencimento,');
          tDuplicata.SQL.Add('       Valor_Operacao,');
          tDuplicata.SQL.Add('       Processo,');
          tDuplicata.SQL.Add('       Numero');
          tDuplicata.SQL.Add('FROM   PagarReceber WHERE Tipo = ''R'' AND Documento IN(''DUPL'', ''NF'') AND Numero_Documento LIKE '+ QuotedStr('%'+mDuplicata));
          tDuplicata.Open;

          If tDuplicata.RecordCount = 0 then begin
             MessageDlg('Não foi encontrado nenhuma duplicata com o número informado no financeiro !', mtError, [mbOK], 0);
             Abort;
          End;

          If EmprestimosDuplicatas.Locate('Duplicata', tDuplicata.FieldByName('Numero_Documento').AsString, [loCaseInsensitive]) then begin
             MessageDlg('Duplicata ja informada !', mtInformation, [mbOK], 0);
             Abort;
          End;

          If MessageDlg('Deseja realmente adicionar esta duplicata ao empréstimo ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

          tSoma.SQL.Clear;
          tSoma.SQL.Add('SELECT SUM(Valor) AS Total_Baixado');
          tSoma.SQL.Add('FROM PagarReceberBaixas');
          tSoma.SQL.Add('WHERE (Numero = :pNumero)');
          tSoma.ParamByName('pNumero').AsInteger := tDuplicata.FieldByName('Numero').AsInteger;
          tSoma.Open;

          tRegistro.SQL.Clear;
          tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM EmprestimosDuplicatas');
          tRegistro.Open;

          EmprestimosDuplicatas.Append;
                                EmprestimosDuplicatasRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger + 1;
                                EmprestimosDuplicatasEmprestimo.Value        := EmprestimosNumero.Value;
                                EmprestimosDuplicatasDuplicata.Value         := tDuplicata.FieldByName('Numero_Documento').AsString;
                                EmprestimosDuplicatasVencimento.Value        := tDuplicata.FieldByName('Data_Vencimento').Value;
                                EmprestimosDuplicatasValor_Bruto.Value       := PagarReceberValor_Total.Value - tSoma.FieldByName('Total_Baixado').AsCurrency;
                                EmprestimosDuplicatasValor_Liquido.Value     := 0;
                                EmprestimosDuplicatasFinanceiro_Numero.Value := tDuplicata.FieldByName('Numero').Value;
                                EmprestimosDuplicatasLiquidar.Value          := false;
                                EmprestimosDuplicatasProcesso.Value          := tDuplicata.FieldByName('Processo').Value;
          EmprestimosDuplicatas.Post;

          Rateio;
     End;
end;

procedure TFinanceiro_EmprestimosDD.bRemoverDuplicataClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente remover a duplicata do empréstimo ?', mtConfirmation, [mbYes, mbNo], 0) = mrno then Abort;
      with Dados do begin
           with tSoma do begin 
                sql.clear;
                sql.add('select isnull(sum(Valor-Desconto), 0) as Baixado, isnull(sum(Valor), 0) as Operacao');
                sql.add('from PagarReceberBaixas where(Numero = :pNumero)');
                paramByName('pNumero').AsInteger := EmprestimosDuplicatas.FieldByName('Financeiro_Numero').AsInteger;
                open;
           end;
           with PagarReceber do begin
                sql.clear;
                sql.add('select * from PagarReceber where Numero = :pNumero');
                parambyName('pNumero').AsInteger := EmprestimosDuplicatas.FieldByName('Financeiro_Numero').AsInteger;
                open;
                if recordcount > 0 then begin
                   edit;
                      fieldbyname('Valor_Total').Value         := (PagarReceberValor_Parcela.AsCurrency + PagarReceberJuros.AsCurrency + PagarReceberMulta.AsCurrency - PagarReceberDesconto.AsCurrency-PagarReceberDesconto_Liquidacao.AsCurrency);
                      fieldbyname('Valor_Operacao').Value      := fieldbyname('Valor_Total').ascurrency;
                      fieldbyname('Valor_Baixado').Value       := tSoma.FieldByName('Baixado').ascurrency;
                      fieldbyname('Desconto_Liquidacao').Value := 0;
                   post;
                end;
           end;
      end;
       
      Dados.EmprestimosDuplicatas.Delete;
      cCodigoChange(Self);  
end;

procedure TFinanceiro_EmprestimosDD.SelecionarDuplicata1Click(Sender: TObject);
begin
      Financeiro_EmprestimosDDData := TFinanceiro_EmprestimosDDData.create(self);
      Financeiro_EmprestimosDDData.caption := 'Data da liquidação';
      Financeiro_EmprestimosDDData.showmodal;
      {
      With Dados do begin
           EmprestimosDuplicatas.Edit;
                                 EmprestimosDuplicatasLiquidar.Value        := true;
                                 EmprestimosDuplicatasData_Liquidacao.Value := Date;
           EmprestimosDuplicatas.Post;
           
           cCodigoChange(Self);
      End;
      }
      cCodigoChange(Self);
end;

procedure TFinanceiro_EmprestimosDD.DesmarcarDuplicata1Click(Sender: TObject);
begin
      With Dados do begin
           EmprestimosDuplicatas.Edit;
                                 EmprestimosDuplicatasLiquidar.Value := false;
                                 EmprestimosDuplicatasData_Liquidacao.Clear;
           EmprestimosDuplicatas.Post;
      End;
end;

procedure TFinanceiro_EmprestimosDD.LiquidarTodas1Click(Sender: TObject);
begin
      With Dados do begin
           EmprestimosDuplicatas.SQL.Clear;
           EmprestimosDuplicatas.SQL.Add('UPDATE EmprestimosDuplicatas SET Liquidar = 1');
           EmprestimosDuplicatas.SQL.Add('                                ,Data_Liquidacao = GETDATE()');
           EmprestimosDuplicatas.SQL.Add('WHERE  Emprestimo = :pEmprestimo');
           EmprestimosDuplicatas.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.Value;
           EmprestimosDuplicatas.Execute;
           cCodigoChange(Self);
      End;
end;

procedure TFinanceiro_EmprestimosDD.Desmarcartodas1Click(Sender: TObject);
begin
      With Dados do begin
           EmprestimosDuplicatas.SQL.Clear;
           EmprestimosDuplicatas.SQL.Add('UPDATE EmprestimosDuplicatas SET Liquidar = 0 ');
           EmprestimosDuplicatas.SQL.Add('                                ,Data_Liquidacao = null');
           EmprestimosDuplicatas.SQL.Add('WHERE Emprestimo = :pEmprestimo');
           EmprestimosDuplicatas.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.Value;
           EmprestimosDuplicatas.Execute;
           cCodigoChange(Self);
      End;
end;

procedure TFinanceiro_EmprestimosDD.bRateioClick(Sender: TObject);
begin
     Rateio;
end;

procedure TFinanceiro_EmprestimosDD.cValorBrutoChange(Sender: TObject);
begin
      bRateio.Enabled := cValorBruto.Value > 0;
end;

procedure TFinanceiro_EmprestimosDD.ChecaConta(ContaD:String; ContaC:String);
begin
      With Dados, dmContab do begin
           ProcessosDoc.SQL.Clear;
           ProcessosDoc.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Processo = :pProcesso)');
           ProcessosDoc.ParamByName('pProcesso').AsString := PagarReceberProcesso.AsString;
           ProcessosDoc.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo = :pCodigo)');
           Clientes.ParamByName('pCodigo').AsInteger := PagarReceberCliente.AsInteger;
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Codigo = :pCodigo)');
           Fornecedores.ParamByName('pCodigo').AsInteger := PagarReceberFornecedor.AsInteger;
           Fornecedores.Open;

           Orgaos.SQL.Clear;
           Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos WHERE Codigo = :pCodigo');
           Orgaos.ParamByName('pCodigo').AsString := PagarReceberOrgao.AsString;
           Orgaos.Open;

           mContaDebito  := '';
           mContaCredito := '';
           If (ApenasNumeros(ContaD) <> '') then mContaDebito  := Trim(ContaD);
           If (ApenasNumeros(ContaC) <> '') then mContaCredito := Trim(ContaC);

           // Conta Debito.
           If ContaD = 'PROCESSO'     then mContaDebito  := Trim(Dados.ProcessosDOCConta_Despesas.Value);
           If ContaD = 'CLIENTE'      then mContaDebito  := Trim(Dados.ClientesConta_Ativo.AsString);
           If ContaD = 'FORNECEDOR'   then begin
              If Trim(PagarReceber.FieldByName('Fornecedor').AsString) <> '' then
                 mContaDebito := Trim(FornecedoresConta.AsString)
              else
                 mContaDebito := Trim(OrgaosConta.AsString);
           end;

           If ContaD = 'DEVOLUÇÃO '   then mContaDebito  := Trim(Dados.FornecedoresConta_Devolucao.AsString);
           If ContaD = 'BANCO'        then mContaDebito  := Trim(Dados.BancosPlano_Contas.Value);
           If ContaD = 'ADIANTAMENTO' then begin
              If Dados.ClassificacaoFinanceiraTipo.AsString = 'R' then begin
                 Dados.Clientes.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
                 mContaDebito := Trim(Dados.ClientesConta_Adiantamento.AsString)
              end else begin
                 Dados.Fornecedores.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
                 mContaDebito := Trim(Dados.FornecedoresConta_Adiantamento.AsString);
              End;
           End;

           // Conta Credito.
           If ContaC = 'PROCESSO'     then mContaCredito := Trim(Dados.ProcessosDOCConta_Despesas.Value);
           If ContaC = 'CLIENTE'      then mContaCredito := Trim(Dados.ClientesConta_Ativo.AsString);
           If ContaC = 'FORNECEDOR'   then begin
              If Trim(PagarReceber.FieldByName('Fornecedor').AsString) <> '' then
                 mContaCredito := Trim(FornecedoresConta.AsString)
              else
                 mContaCredito := Trim(OrgaosConta.AsString);
           end;

           If ContaC = 'DEVOLUÇÃO '   then mContaCredito := Trim(Dados.FornecedoresConta_Devolucao.AsString);
           If ContaC = 'BANCO'        then mContaCredito := Trim(Dados.BancosPlano_Contas.Value);
           If ContaC = 'ADIANTAMENTO' then begin
              If Dados.ClassificacaoFinanceiraTipo.AsString = 'R' then begin
                 Dados.Clientes.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
                 mContaCredito := Trim(Dados.ClientesConta_Adiantamento.AsString)
              end else begin
                 Dados.Fornecedores.Locate('Codigo', Dados.PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
                 mContaCredito := Trim(Dados.FornecedoresConta_Adiantamento.AsString);
              End;
           End;
      End;
end;

Function TFinanceiro_EmprestimosDD.ConverteHistorico(Historico: String):String;
Var
    i      : Integer;
    mPos   : Integer;
    mMacros: array[0..8] of String;
begin
      mMacros[0] := '<{BENEFICIARIO}>';
      mMacros[1] := '<{PROCESSO}>';
      mMacros[2] := '<{DI}>';
      mMacros[3] := '<{DESCRIÇÃO CLASSIFICAÇÃO FINANCEIRA}>';
      mMacros[4] := '<{TIPO DE DOCUMENTO}>';
      mMacros[5] := '<{Nº DOCUMENTO}>';
      mMacros[6] := '<{DATA DOCUMENTO}>';
      mMacros[7] := '<{BANCO}>';
      mMacros[8] := '<{OBSERVAÇÃO}>';
      Result     := Historico;

      with Dados do begin
           for i := 0 to 8 do begin
               mPos := Pos(mMacros[i], Result);
               while mPos <> 0 do begin
                     if mPos <> -1 then begin
                        if i = 0 then Result := RemoveCaracter(mMacros[0], Clientes.FieldByName('Nome').AsString, Result);
                        if i = 1 then Result := RemoveCaracter(mMacros[1], PagarReceber.FieldByName('Processo').AsString, Result);
                        if i = 2 then Result := RemoveCaracter(mMacros[2], ProcessosDoc.FieldByName('Numero_Declaracao').AsString, Result);
                        if i = 3 then Result := RemoveCaracter(mMacros[3], PagarReceber.FieldByName('Classificacao').AsString, Result);
                        if i = 4 then Result := RemoveCaracter(mMacros[4], TiposDocumentos.FieldByName('Descricao').AsString, Result);
                        if i = 5 then Result := RemoveCaracter(mMacros[5], PagarReceber.FieldByName('Numero_Documento').AsString, Result);
                        if i = 6 then Result := RemoveCaracter(mMacros[6], PagarReceberData_Documento.AsString, result);
                        if i = 7 then Result := RemoveCaracter(mMacros[7], BancosNome.Text, Result);
                        mPos := Pos(mMacros[i], Result);
                     end;
               end;
           end;
      end;
end;

procedure TFinanceiro_EmprestimosDD.Editar1Click(Sender: TObject);
begin
      GradeDuplicatas.Options := [dgEditing,dgTitles,dgColumnResize,dgColLines,dgRowLines,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      Dados.dsEmprestimosDuplicatas.DataSet.FieldByName('Valor_Liquido').FocusControl;
      GradeDuplicatas.SelectedField := Dados.EmprestimosDuplicatas.FieldByName('Valor_Liquido');
end;

procedure TFinanceiro_EmprestimosDD.GradeDuplicatasColExit(Sender: TObject);
begin
      if GradeDuplicatas.SelectedField = Dados.EmprestimosDuplicatas.FieldByName('Valor_Liquido') then begin
         GradeDuplicatas.Options := [dgTitles,dgColumnResize,dgColLines,dgRowLines,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      end;
end;

procedure TFinanceiro_EmprestimosDD.GradeDuplicatasKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      if Dados.EmprestimosDuplicatas.State = dsEdit then begin;
         if key = 13 then begin
            with dados do begin
                 EmprestimosDuplicatas.Post;
                 EmprestimosDuplicatas.Edit;
                                       EmprestimosDuplicatasValor_Juros.Value := EmprestimosDuplicatasValor_Bruto.Value - EmprestimosDuplicatasValor_Liquido.Value;
                 EmprestimosDuplicatas.Post;

                 tSoma.SQL.Clear;
                 tSoma.SQL.Add('SELECT SUM(Valor_Juros) AS Valor_Juros');
                 tSoma.SQL.Add('FROM EmprestimosDuplicatas');
                 tSoma.SQL.Add('WHERE(Emprestimo = :pNumero)');
                 tSoma.ParamByName('pNumero').AsInteger := EmprestimosNumero.AsInteger;
                 tSoma.Open;

                 Emprestimos.Edit;
                             EmprestimosValor_Juros.Value    := tSoma.FieldByName('Valor_Juros').AsCurrency;
                             EmprestimosJuros_Efetivos.Value := (((EmprestimosValor_Principal.Value-EmprestimosValor_IOF.Value-EmprestimosValor_Diversos.Value)/cValorBruto.Value)-1)*100;
                             EmprestimosJuros_Mes.Value      := EmprestimosJuros_Efetivos.Value / EmprestimosPrazo_Mes.Value;
                 Emprestimos.Post;
            end;
        end;
      end;
end;

end.
