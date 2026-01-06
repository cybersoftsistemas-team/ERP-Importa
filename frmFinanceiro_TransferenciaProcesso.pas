unit frmFinanceiro_TransferenciaProcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Mask, RxLookup, Vcl.ExtCtrls, RXCtrls,
  Funcoes, RxCurrEdit, RxToolEdit, system.UITypes, MemDS;

type
  TFinanceiro_TransferenciaProcesso = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bTransferir: TButton;
    StaticText6: TStaticText;
    cProcessoOrigem: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cProcessoDestino: TRxDBLookupCombo;
    cValorTransferir: TCurrencyEdit;
    StaticText2: TStaticText;
    cSaldoOrigem: TCurrencyEdit;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cCentroCusto: TRxDBLookupCombo;
    cData: TDateEdit;
    StaticText7: TStaticText;
    cObservacao: TMemo;
    StaticText9: TStaticText;
    tSaldo: TMSQuery;
    tNumero: TMSQuery;
    tNumeroNumero: TLargeintField;
    lCliente: TStaticText;
    cCliente: TRxDBLookupCombo;
    cSaldoDestino: TCurrencyEdit;
    cAdiantamentoOrigem: TCurrencyEdit;
    lAdiantamentos: TStaticText;
    lFornecedor: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    StaticText8: TStaticText;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cProcessoOrigemChange(Sender: TObject);
    procedure cProcessoDestinoChange(Sender: TObject);
    procedure bTransferirClick(Sender: TObject);
    procedure cValorTransferirChange(Sender: TObject);
    procedure cFornecedorChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    mTipoTransf : Integer;
  end;

var
  Financeiro_TransferenciaProcesso: TFinanceiro_TransferenciaProcesso;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_TransferenciaProcesso.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_TransferenciaProcesso.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_TransferenciaProcesso.FormShow(Sender: TObject);
begin
      With Dados do begin 
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE (Descricao LIKE ''%TRANSF%'') AND (Tipo = ''P'') AND (Desativada <> 1) ORDER BY Descricao');
           ClassificacaoFinanceira.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
           CentroCusto.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;

           Configuracao.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;
end;

procedure TFinanceiro_TransferenciaProcesso.cProcessoOrigemChange(Sender: TObject);
begin
      Screen.Cursor      := crSQLWait;
      cSaldoOrigem.Value := 0;

      cObservacao.Lines.Clear;
      If mTipoTransf = 0 then
         cObservacao.Lines.Add('Transferência de saldo do processo '+cProcessoOrigem.Text+' para o processo '+cProcessoDestino.Text)
      else
         cObservacao.Lines.Add('Transferência de saldo de adiantamento do processo '+cProcessoOrigem.Text+' para o processo '+cProcessoDestino.Text);

      Dados.Clientes.Locate('Codigo', Dados.ProcessosDOC.FieldByName('Cliente').AsInteger, [loCaseInsensitive]);
      cCliente.KeyValue := Dados.ClientesCodigo.Value;

      // Apurando o Saldo do Processo Origem.
      tSaldo.SQL.Clear;
      tSaldo.SQL.Add('SELECT PagarReceber.Tipo, CAST(SUM(Valor_Documento) AS DECIMAL(18,2)) AS Valor_Total');
      tSaldo.SQL.Add('FROM   PagarReceber, ClassificacaoFinanceira');
      tSaldo.SQL.Add('WHERE  (Processo = :pProcesso) AND (ClassificacaoFinanceira.Codigo = PagarReceber.Classificacao) AND (ClassificacaoFinanceira.Relatorio <> 1)');
      tSaldo.SQL.Add('GROUP BY PagarReceber.Tipo');
      tSaldo.ParamByName('pProcesso').AsString := cProcessoOrigem.Text;
      tSaldo.Open;

      cSaldoOrigem.Value := 0;

      While not tSaldo.Eof do begin
            If tSaldo.FieldByName('Tipo').AsString = 'P' then
               cSaldoOrigem.Value := cSaldoOrigem.Value - tSaldo.FieldByName('Valor_Total').AsCurrency;
            If tSaldo.FieldByName('Tipo').AsString = 'R' then
               cSaldoOrigem.Value := cSaldoOrigem.Value + tSaldo.FieldByName('Valor_Total').AsCurrency;
            tSaldo.Next;
      End;

      cValorTransferir.Value := cSaldoOrigem.Value;

      With dados do begin
           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Codigo IN(SELECT Fornecedor FROM PagarReceber WHERE(Processo = :pProcesso)))');
           Fornecedores.ParamByName('pProcesso').AsString := Trim(cProcessoOrigem.Text);
           Fornecedores.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_TransferenciaProcesso.cProcessoDestinoChange(Sender: TObject);
begin
      Screen.Cursor          := crSQLWait;
      cSaldoDestino.Value    := 0;
      cObservacao.Lines.Clear;
      cObservacao.Lines.Add('Transferência de saldo do processo '+cProcessoOrigem.Text+' para o processo '+cProcessoDestino.Text);

      // Apurando o Saldo do Processo Origem.
      tSaldo.SQL.Clear;
      tSaldo.SQL.Add('SELECT PagarReceber.Tipo, CAST(SUM(Valor_Total) AS DECIMAL(18,2)) AS Valor_Total');
      tSaldo.SQL.Add('FROM   PagarReceber, ClassificacaoFinanceira');
      tSaldo.SQL.Add('WHERE  (Processo = :pProcesso) AND (ClassificacaoFinanceira.Codigo = PagarReceber.Classificacao) AND (ClassificacaoFinanceira.Relatorio <> 1)');
      tSaldo.SQL.Add('GROUP BY PagarReceber.Tipo');
      tSaldo.ParamByName('pProcesso').AsString := cProcessoDestino.Text;
      tSaldo.Open;
      cSaldoDestino.Value := 0;
      While not tSaldo.Eof do begin
            If tSaldo.FieldByName('Tipo').AsString = 'P' then
               cSaldoDestino.Value := cSaldoDestino.Value - tSaldo.FieldByName('Valor_Total').AsCurrency;
            If tSaldo.FieldByName('Tipo').AsString = 'R' then
               cSaldoDestino.Value := cSaldoDestino.Value + tSaldo.FieldByName('Valor_Total').AsCurrency;
            tSaldo.Next;
      End;

      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_TransferenciaProcesso.bTransferirClick(Sender: TObject);
begin
      If mTipoTransf = 0 then begin
         If (cValorTransferir.Value > cSaldoOrigem.Value) then begin
            ShowMessage('Não existe saldo suficiente para efetuar esta transferência.');
            cProcessoOrigem.SetFocus;
            Abort;
         End;
      end else begin
         If (cValorTransferir.Value > cAdiantamentoOrigem.Value) then begin
            ShowMessage('Não existe saldo suficiente para efetuar esta transferência.');
            cFornecedor.SetFocus;
            Abort;
         End;
      End;
      If (cProcessoOrigem.Text = cProcessoDestino.Text) then begin
         ShowMessage('Processo Origem e Destino são iguais!'+#13+#13+'Informe números de processos diferentes para efetuar a transferência.');
         cProcessoOrigem.SetFocus;
         Abort;
      End;
      If (cProcessoOrigem.Text = '') then begin
         ShowMessage('Informe o número do processo de origem para efetuar a transferência.');
         cProcessoOrigem.SetFocus;
         Abort;
      End;
      If (cProcessoDestino.Text = '') then begin
         ShowMessage('Informe o número do processo de destino para efetuar a transferência.');
         cProcessoDestino.SetFocus;
         Abort;
      End;
      If mTipoTransf = 0 then begin
         If cCliente.Text = '' then begin
            ShowMessage('Falta Informar o cliente para efetuar a transferência!');
            cCliente.SetFocus;
            Abort;
         End;
      end else begin
         If cFornecedor.Text = '' then begin
            ShowMessage('Falta Informar o fornecedor para efetuar a transferência!');
            cFornecedor.SetFocus;
            Abort;
         End;
      End;
      If cClassificacao.Text = '' then begin
         ShowMessage('Falta Informar a classificação financeira para efetuar a transferência!');
         cClassificacao.SetFocus;
         Abort;
      End;
      If Trim(RemoveCaracter('/', '',cData.Text)) = '' then begin
         ShowMessage('Falta informar a data da transferência do saldo.');
         cData.SetFocus;
         Abort;
      End;
      If cValorTransferir.Value <= 0 then begin
         ShowMessage('Valor inválido para efetuar a transferência!');
         cValorTransferir.SetFocus;
         Abort;
      End;
      If Trim(Dados.ConfiguracaoClassificacao_TransfProcesso.Value) = '' then begin
         ShowMessage('Falta informar a classificação financeira de recebimento para transferência em configurações!');
         bTransferir.SetFocus;
         Abort;
      End;
      If (cData.Date <= Dados.EmpresasFechamento_Financeiro.Value) then begin
         ShowMessage('Não podem ser feitas transferências de saldo dentro de períodos já fechados, verifique a data.');
         cData.SetFocus;
         Abort;
      End;

      If MessageDlg('Atenção!'+#13+#13+'Isso ira criar lançamentos de transferência e baixa de saldo do processo.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         With Dados do begin
              // Gerando o lançamento de "Pagamento na transferência de processo" ou "Recebimento na transferência de adiantamento".
              with tNumero do begin
                   sql.Clear;
                   sql.Add('select isnull(max(Numero), 0) as Numero from PagarReceber');
                   Open;
              end;
              with PagarReceber do begin
                   sql.Clear;
                   sql.Add('select top 1 * from PagarReceber order by Numero desc');
                   Open;
                   Append;
                        PagarReceberNumero.Value := tNumeroNumero.Value + 1;
                        If mTipoTransf = 0 then begin
                           PagarReceberTipo.Value          := 'P';
                           PagarReceberClassificacao.Value := ClassificacaoFinanceiraCodigo.Value;
                           PagarReceberCliente.Value       := ClientesCodigo.Value;
                           PagarReceberProcesso.Value      := cProcessoOrigem.Text;
                        end else begin
                           PagarReceberTipo.Value          := 'R';
                           PagarReceberClassificacao.Value := ConfiguracaoClassificacao_TransfProcesso.Value;
                           PagarReceberFornecedor.Value    := FornecedoresCodigo.Value;
                           PagarReceberProcesso.Value      := cProcessoDestino.Text;
                        End;
                        PagarReceberData_Previsao.Value    := cData.Date;
                        PagarReceberData_Documento.Value   := cData.Date;
                        PagarReceberData_Vencimento.Value  := cData.Date;
                        PagarReceberValor_Documento.Value  := cValorTransferir.Value;
                        PagarReceberValor_Parcela.Value    := cValorTransferir.Value;
                        PagarReceberValor_Total.Value      := cValorTransferir.Value;
                        PagarReceberValor_Operacao.Value   := cValorTransferir.Value;
                        PagarReceberObservacao.Value       := cObservacao.Lines.Text;
                        PagarReceberCustoConta.Value       := False;
                        PagarReceberTransferencia.Value    := False;
                        PagarReceberCentro_Custo.Value     := CentroCustoCodigo.Value;
                        PagarReceberDocumento.Value        := '';
                        PagarReceberNumero_Documento.Value := Trim(cProcessoOrigem.Text) + '/'+Trim(cProcessoDestino.Text);
                        PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                   Post;
                   tNumero.Close;

                   // Gerando o lançamento de "Recebimento na transferência de processo" ou "Pagamento na transferência de adiantamento".
                   tNumero.Open;
                   Open;
                   Append;
                        PagarReceberNumero.Value := tNumeroNumero.Value + 1;
                        If mTipoTransf = 0 then begin
                           PagarReceberTipo.Value          := 'R';
                           PagarReceberClassificacao.Value := ConfiguracaoClassificacao_TransfProcesso.Value;
                           PagarReceberCliente.Value       := ClientesCodigo.Value;
                           PagarReceberProcesso.Value      := cProcessoDestino.Text;
                        end else begin
                           PagarReceberTipo.Value          := 'P';
                           PagarReceberClassificacao.Value := ClassificacaoFinanceiraCodigo.Value;
                           PagarReceberFornecedor.Value    := FornecedoresCodigo.Value;
                           PagarReceberProcesso.Value      := cProcessoOrigem.Text;
                        End;
                        PagarReceberData_Previsao.Value       := cData.Date;
                        PagarReceberData_Documento.Value      := cData.Date;
                        PagarReceberData_Vencimento.Value     := cData.Date;
                        PagarReceberValor_Documento.Value     := cValorTransferir.Value;
                        PagarReceberValor_Parcela.Value       := cValorTransferir.Value;
                        PagarReceberValor_Total.Value         := cValorTransferir.Value;
                        PagarReceberValor_Operacao.Value      := cValorTransferir.Value;
                        PagarReceberObservacao.Value          := cObservacao.Lines.Text;
                        PagarReceberTransferencia.Value       := False;
                        PagarReceberCustoConta.Value          := False;
                        PagarReceberCentro_Custo.Value        := CentroCustoCodigo.Value;
                        PagarReceberDocumento.Value           := '';
                        PagarReceberNumero_Documento.Value    := Trim(cProcessoOrigem.Text) + '/'+Trim(cProcessoDestino.Text);
                        PagarReceberNivel.Value               := ClassificacaoFinanceiraNivel.Value;
                        PagarReceberAdiantamento_Numero.Value := FornecedoresCodigo.Value;
                   Post;
                   tNumero.Close;
              end;
         End;

         If mTipoTransf = 0 then
            ShowMessage('Transferência de saldo do processo efetuada.')
         else
            ShowMessage('Transferência de saldo de adiantamento efetuada.');
            
         cProcessoOrigem.OnChange(Self);
         cProcessoDestino.OnChange(Self);
         cObservacao.Lines.Clear;
      End;
end;

procedure TFinanceiro_TransferenciaProcesso.cValorTransferirChange(Sender: TObject);
begin
      bTransferir.Enabled := cValorTransferir.Value > 0;
end;

procedure TFinanceiro_TransferenciaProcesso.cFornecedorChange(Sender: TObject);
begin
      // Apurando o Saldo dos adiantamentos do processo.
      tSaldo.SQL.Clear;
      tSaldo.SQL.Add('SELECT CAST(SUM(Valor_Documento) AS DECIMAL(18,2)) AS Valor_Total');
      tSaldo.SQL.Add('FROM   PagarReceber');
      tSaldo.SQL.Add('WHERE  (Processo = :pProcesso) AND (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) = 1');
      tSaldo.ParamByName('pProcesso').AsString      := cProcessoOrigem.Text;
      tSaldo.Open;
      cAdiantamentoOrigem.Value := tSaldo.FieldByName('Valor_Total').AsCurrency;

      tSaldo.SQL.Clear;
      tSaldo.SQL.Add('SELECT CAST(SUM(Valor_Documento) AS DECIMAL(18,2)) AS Valor_Total');
      tSaldo.SQL.Add('FROM   PagarReceber');
      tSaldo.SQL.Add('WHERE  (Processo = :pProcesso) AND (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) <> 1');
      tSaldo.SQL.Add('       AND(Adiantamento_Numero = :pAdiantamento)');
      tSaldo.ParamByName('pProcesso').AsString      := cProcessoOrigem.Text;
      tSaldo.ParamByName('pAdiantamento').AsInteger := Dados.FornecedoresCodigo.AsInteger;
      tSaldo.Open;
      cAdiantamentoOrigem.Value := cAdiantamentoOrigem.Value - tSaldo.FieldByName('Valor_Total').AsCurrency;

      If mTipoTransf = 1 then cValorTransferir.Value := cAdiantamentoOrigem.Value;

      tSaldo.SQL.Clear;
      tSaldo.SQL.Add('SELECT DISTINCT Classificacao FROM PagarReceber');
      tSaldo.SQL.Add('WHERE(Processo = :pProcesso) AND (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE(Codigo = PagarReceber.Classificacao)) = 1');
      tSaldo.ParamByName('pProcesso').AsString := cProcessoOrigem.Text;
      tSaldo.Open;

      If Dados.ClassificacaoFinanceira.Locate('Codigo', tSaldo.FieldByName('Classificacao').AsString, [loCaseInsensitive]) = true then
         cClassificacao.DisplayValue := Dados.ClassificacaoFinanceiraDescricao.AsString;
end;

procedure TFinanceiro_TransferenciaProcesso.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, nil, nil, nil);
     Financeiro_TransferenciaProcesso.Release;
     Financeiro_TransferenciaProcesso := nil;
end;

end.
