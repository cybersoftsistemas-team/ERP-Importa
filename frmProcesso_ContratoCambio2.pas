unit frmProcesso_ContratoCambio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, RXDBCtrl, DBCtrls, Vcl.StdCtrls, Mask, DBGrids, DB,
  DBAccess, MSAccess, Funcoes, Grids, RxCurrEdit, MemDS, system.UITypes, RxToolEdit, RxLookup;

type
  TProcesso_ContratoCambio2 = class(TForm)
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText12: TStaticText;
    cContrato: TDBEdit;
    cConta_Fornecedor: TDBEdit;
    cValorME: TDBEdit;
    cTaxaCambial: TDBEdit;
    cData: TDBDateEdit;
    cBanco: TDBLookupComboBox;
    StaticText10: TStaticText;
    cFornecedor: TDBLookupComboBox;
    StaticText4: TStaticText;
    cMoeda: TDBLookupComboBox;
    StaticText11: TStaticText;
    cValorReal: TCurrencyEdit;
    cDataVencimento: TDBDateEdit;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    cCentroCusto: TDBLookupComboBox;
    tRegistro: TMSQuery;
    StaticText15: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText16: TStaticText;
    cClassificacao: TDBLookupComboBox;
    Panel3: TPanel;
    Button1: TButton;
    Navega: TDBNavigator;
    Panel1: TPanel;
    GradeItens: TDBGrid;
    bAdicionar: TButton;
    bExcluir: TButton;
    bAlterar: TButton;
    tTotaliza: TMSQuery;
    StaticText8: TStaticText;
    cBeneficiario: TDBLookupComboBox;
    tBeneficiario: TMSQuery;
    tPesquisa: TMSQuery;
    cPesquisar: TEdit;
    StaticText5: TStaticText;
    cFiltro: TCheckBox;
    tFINIMP: TMSQuery;
    cPrevisao: TDBCheckBox;
    tPrevisao: TMSQuery;
    tLancamentoBaixa: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    StaticText9: TStaticText;
    cFilial: TRxDBLookupCombo;
    Filiais: TMSQuery;
    FiliaisFilial: TSmallintField;
    FiliaisNome: TStringField;
    FiliaisCNPJ: TStringField;
    FiliaisEstado: TStringField;
    FiliaisBanco_Dados: TStringField;
    dsFiliais: TDataSource;
    tTemp: TMSQuery;
    tTmp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
//    procedure bPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cValorMEChange(Sender: TObject);
    procedure cDataExit(Sender: TObject);
    procedure cContratoChange(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure cFornecedorExit(Sender: TObject);
    procedure cPesquisarChange(Sender: TObject);
    procedure cFiltroClick(Sender: TObject);
    procedure cPrevisaoClick(Sender: TObject);
    procedure BaixarPrevisao;
  private
    { Private declarations }
  public
    { Public declarations }
    mContrato: String;
    mPrevisao: Boolean;
  end;

var
  Processo_ContratoCambio2: TProcesso_ContratoCambio2;

implementation

uses frmDados, frmProcesso_ContratoCambioItem, frmMenu_Principal;

{$R *.dfm}

procedure TProcesso_ContratoCambio2.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TProcesso_ContratoCambio2.FormShow(Sender: TObject);
begin
     With Dados do begin
          ContratoCambio.SQL.Clear;
          ContratoCambio.SQL.Add('SELECT * FROM ContratoCambio ORDER BY Numero');
          ContratoCambio.Open;

          Bancos.SQL.Clear;
          Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
          Bancos.Open;

          Moedas.SQL.Clear;
          Moedas.SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
          Moedas.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Pais <> 1058) ORDER BY Nome');
          Fornecedores.Open;

          tBeneficiario.SQL.Clear;
          tBeneficiario.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
          tBeneficiario.Open;

          PagarReceber.SQL.Clear;
          PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pData)');
          PagarReceber.ParamByName('pData').AsDate := Date;
          PagarReceber.Open;

          PagarReceberBaixas.SQL.Clear;
          PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE(Data = :pData)');
          PagarReceberBaixas.ParamByName('pData').AsDate := Date;
          PagarReceberBaixas.Open;

          CentroCusto.SQL.Clear;
          CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Codigo');
          CentroCusto.Open;

          Configuracao.Open;

          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = ''P'') AND (Cambio = 1) AND (Desativada <> 1) ORDER BY Descricao');
          ClassificacaoFinanceira.Open;

          Recursos.SQL.Clear;
          Recursos.SQL.Add('SELECT * FROM Recursos ORDER BY Descricao');
          Recursos.Open;

          CondicaoCambial.SQL.Clear;
          CondicaoCambial.SQL.Add('SELECT * FROM CondicaoCambial ORDER BY Descricao');
          CondicaoCambial.Open;

          with Filiais do begin
               sql.clear;
               sql.add('select Filial = isnull(Numero_Filial, 0)');
               sql.add('      ,Nome   = iif(isnull(Numero_Filial, 0) = 0, ''MATRIZ'', ''FILIAL ''+cast(Numero_Filial as char(2)))');
               sql.add('      ,CNPJ');
               sql.add('      ,Estado');
               sql.add('      ,Banco_Dados');
               sql.add('from Empresas');
               sql.add('where substring(CNPJ, 1, 8) = (select substring(CNPJ, 1, 8) from Cybersoft_Cadastros.dbo.Empresas where Codigo = :pCod)');
               sql.add('order by Filial');
               parambyname('pCod').Asinteger := Menu_Principal.mEmpresa;
               open;
          end;
     End;
end;

procedure TProcesso_ContratoCambio2.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, nil, nil, nil);
     Processo_ContratoCambio2.Release;
     Processo_ContratoCambio2 := nil;
end;

procedure TProcesso_ContratoCambio2.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i: Integer;
begin
     Screen.Cursor      := crSQLWait;
     Panel1.Enabled     := Dados.ContratoCambio.State <> dsInsert;
     bAdicionar.Enabled := Dados.ContratoCambio.State <> dsInsert;
     mContrato          := Dados.ContratoCambioNumero.AsString;
     mPrevisao          := Dados.ContratoCambioPrevisao.AsBoolean;

     If (Button = nbEdit) or (Button = nbInsert) then begin
        If Dados.ContratoCambioFINIMP.AsBoolean = true then begin
           MessageDlg('Atenção!'+#13+#13+'Este contrato de câmbio teve origem em empréstimo FINIMP não pode ser alterado.', mtInformation, [mbOK], 0);
           Dados.ContratoCambio.Cancel;
           Screen.Cursor := crDefault;
           Abort;
        End;

        If Button = nbInsert then begin
           with tTemp do begin
                sql.clear;
                sql.add('select Numero_Filial');
                sql.add('from Empresas');
                sql.add('where Codigo = :pCod');
                parambyname('pCod').Asinteger := Menu_Principal.mEmpresa;
                open;
                Dados.ContratoCambioFilial.Value := tTemp.FieldByName('Numero_Filial').AsInteger;
           end;
        
           Dados.ContratoCambioFechado.Value       := False;
           Dados.ContratoCambioClassificacao.Value := Dados.ConfiguracaoContratoCambio_Classificacao.AsString;
           Dados.ContratoCambioGerar_Baixa.Value   := Dados.ClassificacaoFinanceiraBaixa_Automatica.Value;
           Dados.ContratoCambioPrevisao.Value      := False;
        End;
        For i := 0 to 6 do begin
            Navega.Controls[i].Enabled := False;
        End;

        Panel2.Enabled := True;
        //cContrato.SetFocus;
        cPrevisao.SetFocus;
     End;
     If (Button = nbPost) or (Button = nbCancel) then Begin
        Panel2.Enabled := False;
     End;
     Screen.Cursor := crDefault;
end;

{
procedure TProcesso_ContratoCambio2.bPesquisaClick(Sender: TObject);
Var
    mPesquisa: String;
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Contrato/Processo', mPesquisa));
     Dados.ContratoCambio.Locate('Numero', mPesquisa, [loPartialKey]);
     with Dados do begin                                    
          if trim(mPesquisa) <> '' then begin
             with tTmp do begin
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
}

procedure TProcesso_ContratoCambio2.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_ContratoCambio2.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      If (Button = nbPost) then begin
         With Dados do begin
              If Trim(ContratoCambioNumero.AsString) = '' then begin
                 ShowMessage('É necessário informar o "Número" do contrato de câmbio!');
                 cContrato.SetFocus;
                 Abort;
              End;
              If Trim(RemoveCaracter('/','', ContratoCambioData.AsString)) = '' then begin
                 ShowMessage('É necessário informar a "Data" do contrato de câmbio!');
                 cData.SetFocus;
                 Abort;
              End;
              If ContratoCambioExportador.AsInteger = 0 then begin
                 ShowMessage('É necessário informar o "Exportador" do contrato de câmbio!');
                 cFornecedor.SetFocus;
                 Abort;
              End;
              If ContratoCambioBeneficiario.AsInteger = 0 then begin
                 ShowMessage('É necessário informar o "Beneficiario" do contrato de câmbio!');
                 cBeneficiario.SetFocus;
                 Abort;
              End;
              If ContratoCambioMoeda.AsInteger = 0 then begin
                 ShowMessage('É necessário informar a "Moeda" utilizada no contrato de câmbio!');
                 cMoeda.SetFocus;
                 Abort;
              End;
              If ContratoCambioTaxa_Cambial.AsFloat = 0 then begin
                 ShowMessage('É necessário informar a "Taxa do Câmbio" do contrato de câmbio!');
                 cTaxaCambial.SetFocus;
                 Abort;
              End;
              If Trim(cClassificacao.Text) = '' then begin
                 ShowMessage('É necessário informar a "Classificação Financeira" para o contrato de câmbio!');
                 cClassificacao.SetFocus;
                 Abort;
              End;
              If (Trim(cBanco.Text) = '') and (cPrevisao.Checked = false) then begin
                 ShowMessage('É necessário informar o "Banco" para o contrato de câmbio!');
                 cBanco.SetFocus;
                 Abort;
              End;
              If DataLimpa(cDataVencimento.Text) then begin
                 ShowMessage('É necessário informar a "Data do Vencimento" para o contrato de câmbio!');
                 cDataVencimento.SetFocus;
                 Abort;
              End;
              If (ContratoCambio.State = dsInsert) then begin
                 tPesquisa.SQL.Clear;
                 tPesquisa.SQL.Add('SELECT Numero FROM ContratoCambio WHERE(Numero = :pNumero)');
                 tPesquisa.ParamByName('pNumero').AsString := ContratoCambioNumero.AsString;
                 tPesquisa.Open;
                 If tPesquisa.RecordCount > 0 then begin
                    ShowMessage('Já existe um "Contrato de câmbio" cadastrado com este número!');
                    cContrato.SetFocus;
                    Abort;
                 End;

                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM ContratoCambio');
                 tRegistro.Open;
                 ContratoCambioRegistro.Value := tRegistro.FieldBYName('Registro').AsInteger + 1;
                 tRegistro.Close;
              End;

              // Altera o numero do contrato no financeiro caso se alterado o número.
              //If (ContratoCambio.State = dsEdit) and (ContratoCambioNumero.AsString <> mContrato) then begin
                 ContratoCambioItens.Close;
                 ContratoCambioItens.SQL.Clear;
                 ContratoCambioItens.SQL.Add('UPDATE ContratoCambioItens SET Contrato = :pContratoNovo WHERE Contrato = :pContratoAntes');
                 ContratoCambioItens.ParamByName('pContratoNovo').AsString  := ContratoCambioNumero.AsString;
                 ContratoCambioItens.ParamByName('pContratoAntes').AsString := mContrato;
                 ContratoCambioItens.Execute;
                 ContratoCambioItens.SQL.Clear;
                 ContratoCambioItens.SQL.Add('SELECT * FROM ContratoCambioItens WHERE Contrato = :pContrato');
                 ContratoCambioItens.ParamByName('pContrato').AsString  := ContratoCambioNumero.AsString;
                 ContratoCambioItens.Open;
                 
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('UPDATE PagarReceber SET Numero_Documento = :pContrato,');
                 PagarReceber.SQL.Add('                        Fiscal           = :pContrato,');
                 PagarReceber.SQL.Add('                        Data_Documento   = :pData,');
                 PagarReceber.SQL.Add('                        Data_Vencimento  = :pVencimento,');
                 PagarReceber.SQL.Add('                        Classificacao    = :pClassificacao,');
                 PagarReceber.SQL.Add('                        Centro_Custo     = :pCentro');
                 PagarReceber.SQL.Add('WHERE Numero IN(SELECT Financeiro_Lancamento FROM ContratoCambioItens WHERE Contrato = :pContrato)');
                 PagarReceber.ParamByName('pContrato').AsString      := ContratoCambioNumero.AsString;
                 PagarReceber.ParamByName('pData').AsDate            := ContratoCambioData.AsDateTime;
                 PagarReceber.ParamByName('pVencimento').AsDate      := ContratoCambioData_Vencimento.AsDateTime;
                 PagarReceber.ParamByName('pClassificacao').AsString := ContratoCambioClassificacao.AsString;
                 PagarReceber.ParamByName('pCentro').AsString        := ContratoCambioCentro_Custo.AsString;
                 PagarReceber.Execute;
                 
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pData)');
                 PagarReceber.ParamByName('pData').AsDate := Date;
                 PagarReceber.Open;
              //End;

              // Altera a taxa cambial dos itens.
              ContratoCambioItens.Close;
              ContratoCambioItens.SQL.Clear;
              ContratoCambioItens.SQL.Add('UPDATE ContratoCambioItens SET Taxa_Cambial = :pTaxa WHERE Contrato = :pContrato');
              ContratoCambioItens.ParamByName('pContrato').AsString := ContratoCambioNumero.AsString;
              ContratoCambioItens.ParamByName('pTaxa').AsFloat      := ContratoCambioTaxa_Cambial.AsFloat;
              ContratoCambioItens.Execute;
              
              ContratoCambioItens.SQL.Clear;
              ContratoCambioItens.SQL.Add('SELECT * FROM ContratoCambioItens WHERE Contrato = :pContrato');
              ContratoCambioItens.ParamByName('pContrato').AsString  := ContratoCambioNumero.AsString;
              ContratoCambioItens.Open;

              // Baixa os lançamentos financeiros de contratos de previsão.
              If (mPrevisao = true) and (ContratoCambioPrevisao.AsBoolean = false) then begin
                 BaixarPrevisao;
              End;
         End;
      End;

      // Deleta o lançamento do financeira caso exista.
      If Button = nbDelete then begin
         If MessageDlg('Isso irá apagar o contrato e o lançamento do financeira caso exista!'+#13+#13+'Deseja realmente excluir este "Contrato de Câmbio"', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            With Dados do begin
                 // Verifica se o contrato e referente a empréstimo FINIMP e não deixa deletar.
                 tFINIMP.SQL.Clear;
                 //tFINIMP.SQL.Add('SELECT COUNT(*) AS Emprestimos FROM Emprestimos WHERE Numero_Documento = :pNumero AND Liquidado = 1');
                 tFINIMP.SQL.Add('SELECT COUNT(*) AS Emprestimos FROM Emprestimos WHERE Numero_Documento = :pNumero');
                 tFINIMP.ParamByName('pNumero').AsString := ContratoCambioNumero.AsString;
                 tFINIMP.Open;
                 
                 If tFINIMP.FieldByName('Emprestimos').AsInteger > 0 then begin
                    MessageDlg('Erro !'+#13+#13+'Este contrato não pode ser excluído pois teve origem em "Empréstimo FINIMP" já liquídado.', mtError, [mbOK], 0);
                    Abort; 
                 End;

                 PagarReceberBaixas.SQL.Clear;
                 PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE Numero IN(SELECT Financeiro_Lancamento FROM ContratoCambioItens WHERE(Contrato = :pContrato))');
                 PagarReceberBaixas.ParamByName('pContrato').AsString := ContratoCambioNumero.AsString;
                 PagarReceberBaixas.Execute;
                 PagarReceberBaixas.SQL.Clear;
                 PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE(Data = :pData)');
                 PagarReceberBaixas.ParamByName('pData').AsDate := Date;
                 PagarReceberBaixas.Open;

                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Numero IN(SELECT Financeiro_Lancamento FROM ContratoCambioItens WHERE(Contrato = :pContrato))');
                 PagarReceber.ParamByName('pContrato').AsString := ContratoCambioNumero.AsString;
                 PagarReceber.Execute;
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pData)');
                 PagarReceber.ParamByName('pData').AsDate := Date;
                 PagarReceber.Open;

                 ContratoCambioItens.Close;
                 ContratoCambioItens.SQL.Clear;
                 ContratoCambioItens.SQL.Add('DELETE FROM ContratoCambioItens WHERE Contrato = :pContrato');
                 ContratoCambioItens.ParamByName('pContrato').AsString := ContratoCambioNumero.AsString;
                 ContratoCambioItens.Execute;
                 ContratoCambioItens.SQL.Clear;
                 ContratoCambioItens.SQL.Add('SELECT * FROM ContratoCambioItens WHERE Contrato = :pContrato');
                 ContratoCambioItens.ParamByName('pContrato').AsString  := ContratoCambioNumero.AsString;
                 ContratoCambioItens.Open;
            End;
         end else begin
            Abort;
         End;
      End;
end;

procedure TProcesso_ContratoCambio2.cValorMEChange(Sender: TObject);
begin
      With Dados do begin
           cValorReal.Value := ContratoCambio.FieldByName('Total_ME').AsCurrency * ContratoCambio.FieldByName('Taxa_Cambial').AsFloat;
      End;
end;

procedure TProcesso_ContratoCambio2.cDataExit(Sender: TObject);
begin
     Dados.ContratoCambioData_Vencimento.Value := Dados.ContratoCambioData.AsDateTime + Dados.ProcessosDOCVencimento_Cambio.AsInteger;
end;

procedure TProcesso_ContratoCambio2.cContratoChange(Sender: TObject);
begin
      With Dados do begin
           ContratoCambioItens.SQL.Clear;
           ContratoCambioItens.SQL.Add('SELECT * FROM ContratoCambioItens WHERE(Contrato = :pContrato) ORDER BY Contrato, Processo');
           ContratoCambioItens.ParamByName('pContrato').AsString := ContratoCambioNumero.AsString;
           ContratoCambioItens.Open;
           bAlterar.Enabled := ContratoCambioItens.RecordCount > 0;
           bExcluir.Enabled := ContratoCambioItens.RecordCount > 0;
      End;
end;

procedure TProcesso_ContratoCambio2.bAdicionarClick(Sender: TObject);
begin
      Processo_ContratoCambioItem         := TProcesso_ContratoCambioItem.Create(Self);
      Processo_ContratoCambioItem.Caption := 'Adicionar...';
      Processo_ContratoCambioItem.mOpcao  := 'ADICIONAR';
      Processo_ContratoCambioItem.Top     := Processo_ContratoCambio2.Top  + 150;
      Processo_ContratoCambioItem.left    := Processo_ContratoCambio2.Left + 500;
      Processo_ContratoCambioItem.ShowModal;
      bAlterar.Enabled := Dados.ContratoCambioItens.RecordCount > 0;
      bExcluir.Enabled := Dados.ContratoCambioItens.RecordCount > 0;
end;

procedure TProcesso_ContratoCambio2.bExcluirClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Deseja realmente excluir o processo "'+Dados.ContratoCambioItensProcesso.AsString+'"', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
              // Exclui os lançamentos de baixa e o título do financeiro.
              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE Numero = :pNumero');
              PagarReceberBaixas.ParamByName('pNumero').AsInteger := ContratoCambioItensFinanceiro_Lancamento.AsInteger;

              PagarReceberBaixas.Execute;
              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE(Data = :pData)');
              PagarReceberBaixas.ParamByName('pData').AsDate := Date;
              PagarReceberBaixas.Open;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE Numero = :pNumero');
              PagarReceber.ParamByName('pNumero').AsInteger := ContratoCambioItensFinanceiro_Lancamento.AsInteger;
              PagarReceber.Execute;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pData)');
              PagarReceber.ParamByName('pData').AsDate := Date;
              PagarReceber.Open;

              // Deleta o item do contrato de câmbio.
              Dados.ContratoCambioItens.Delete;

              bAlterar.Enabled := ContratoCambioItens.RecordCount > 0;
              bExcluir.Enabled := ContratoCambioItens.RecordCount > 0;

              // Atualiza o valor total dos câmbios na tabela principal.
              tTotaliza.SQL.Clear;
              tTotaliza.SQL.Add('SELECT ISNULL(SUM(Valor_ME), 0) AS Total_Cambio FROM ContratoCambioItens WHERE(Contrato = :pContrato)');
              tTotaliza.ParamByName('pContrato').AsString := ContratoCambioNumero.Value;
              tTotaliza.Open;

              ContratoCambio.Edit;
                             ContratoCambioTotal_ME.Value := tTotaliza.FieldByName('Total_Cambio').Value;
              ContratoCambio.Post;
           End;
      End;
end;

procedure TProcesso_ContratoCambio2.bAlterarClick(Sender: TObject);
begin
      Processo_ContratoCambioItem                := TProcesso_ContratoCambioItem.Create(Self);
      Processo_ContratoCambioItem.Caption        := 'Alteração...';
      Processo_ContratoCambioItem.mOpcao         := 'ALTERAR';
      Processo_ContratoCambioItem.cValorME.Value := Dados.ContratoCambioItensValor_ME.Value;
      Processo_ContratoCambioItem.Top            := Processo_ContratoCambio2.Top  + 150;
      Processo_ContratoCambioItem.left           := Processo_ContratoCambio2.Left + 500;
      Processo_ContratoCambioItem.ShowModal;
end;

procedure TProcesso_ContratoCambio2.cFornecedorExit(Sender: TObject);
begin
     If Dados.ContratoCambio.State = dsInsert then
        Dados.ContratoCambioBeneficiario.Value := Dados.ContratoCambioExportador.AsInteger
     else
        If Dados.ContratoCambioBeneficiario.AsInteger = 0 then
           Dados.ContratoCambioBeneficiario.Value := Dados.ContratoCambioExportador.AsInteger;
end;

procedure TProcesso_ContratoCambio2.cPesquisarChange(Sender: TObject);
begin
     With Dados do begin
          tPesquisa.SQL.Clear;
          tPesquisa.SQL.Add('SELECT Numero FROM ContratoCambio WHERE Numero LIKE '+QuotedStr('%'+cPesquisar.Text+'%'));
          tPesquisa.Open;

          If tPesquisa.RecordCount > 0 then begin
             ContratoCambio.Locate('Numero', tPesquisa.FieldByName('Numero').AsString, [loCaseInsensitive]);
          end else begin
             tPesquisa.SQL.Clear;
             tPesquisa.SQL.Add('SELECT Contrato FROM ContratoCambioItens WHERE Processo LIKE '+QuotedStr('%'+cPesquisar.Text+'%'));
             tPesquisa.Open;
             
             If tPesquisa.RecordCount > 0 then begin
                ContratoCambio.Locate('Numero', tPesquisa.FieldByName('Contrato').AsString, [loCaseInsensitive]);
             End;
          End;
     End;
end;

procedure TProcesso_ContratoCambio2.cFiltroClick(Sender: TObject);
var
   mProc: string;
begin
      with Dados do begin
           mProc := ContratoCambioItens.FieldByName('Processo').AsString;
           with ContratoCambio do begin 
                sql.Clear;
                sql.add('select *');
                sql.add('from ContratoCambio');
                if trim(cPesquisar.Text) <> '' then begin
                   if cFiltro.Checked = true then begin
                      sql.Add('where Numero in(select Contrato from ContratoCambioItens where Processo = :pProcesso)');
                      ParamByName('pProcesso').AsString := mProc;
                   end;
                end;
                sql.add('order by Numero');
                open;
           end;
      end;
end;

procedure TProcesso_ContratoCambio2.cPrevisaoClick(Sender: TObject);
begin
      With Dados do begin
           If (cPrevisao.Checked = true) and ((ContratoCambio.State = dsEdit) or (ContratoCambio.State = dsInsert)) then begin
              tPrevisao.SQL.Clear;
              tPrevisao.SQL.Add('SELECT CAST(ISNULL(MAX(CAST(SUBSTRING(Numero, 5, 6) AS INT)), 0) AS int) AS Numero FROM ContratoCambio WHERE Previsao = 1');
              tPrevisao.Open;
              ContratoCambioNumero.Value := 'PVCB'+ PoeZero(5, tPrevisao.FieldByName('Numero').AsInteger + 1);
           End;
      End;
end;

// Rotina de baixa de lançamentos financeiros de contratos de câmbio provisionados.
procedure TProcesso_ContratoCambio2.BaixarPrevisao;
begin
      With Dados do begin
           ContratoCambioItens.SQL.Clear;
           ContratoCambioItens.SQL.Add('SELECT * FROM ContratoCambioItens WHERE(Contrato = :pContrato) ORDER BY Contrato, Processo');
           ContratoCambioItens.ParamByName('pContrato').AsString := ContratoCambioNumero.AsString;
           ContratoCambioItens.Open;
           ContratoCambioItens.First;

           tLancamentoBaixa.SQL.Clear;
           tLancamentoBaixa.SQL.Add('SELECT MAX(Registro) AS Registro FROM PagarReceberBaixas');

           While not ContratoCambioItens.Eof do begin

                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = :pNumero');
                 PagarReceber.ParamByName('pNumero').AsInteger := ContratoCambioItens.FieldByName('Financeiro_Lancamento').AsInteger;
                 PagarReceber.Open;

                 PagarReceberBaixas.SQL.Clear;
                 PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE Numero = :pNumero');
                 PagarReceberBaixas.ParamByName('pNumero').AsInteger := PagarReceber.FieldByName('Numero').AsInteger;
                 PagarReceberBaixas.Execute;
                 PagarReceberBaixas.SQL.Clear;
                 PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Numero = :pNumero');
                 PagarReceberBaixas.ParamByName('pNumero').AsInteger := PagarReceber.FieldByName('Numero').AsInteger;
                 PagarReceberBaixas.Open;

                 tLancamentoBaixa.Open;
                 PagarReceberBaixas.Append;
                                    PagarReceberBaixasRegistro.Value            := tLancamentoBaixa.FieldByName('Registro').AsInteger + 1;
                                    PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                                    PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.Value;
                                    PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                    PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                    PagarReceberBaixasBanco.Value               := ContratoCambioBanco.Value;
                                    PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                    PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                    PagarReceberBaixasObservacao.Value          := 'Baixa referente a Contrato de Câmbio nº '+ ContratoCambioNumero.AsString;
                                    PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
                 PagarReceberBaixas.Post;
                 tLancamentoBaixa.Close;

                 // Grava o numero da baixa no titulo.
                 PagarReceber.Edit;
                              PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                              PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
                              PagarReceberBanco.Value         := PagarReceberBaixasBanco.Value;
                 PagarReceber.Post;
                 
                 ContratoCambioItens.Next;
           End;
      End;
end;


end.

