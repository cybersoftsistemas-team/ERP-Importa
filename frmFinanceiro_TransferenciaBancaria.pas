unit frmFinanceiro_TransferenciaBancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RxLookup, Mask,
  DB, DBAccess, MSAccess, Funcoes, RxCurrEdit, RxToolEdit, MemDS, Vcl.Buttons, system.UITypes, ClipBrd;

type
  TFinanceiro_TransferenciaBancaria = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    tSaldo: TMSQuery;
    bTransferir: TButton;
    tNumero: TMSQuery;
    tNumeroNumero: TLargeintField;
    tRegistroBaixa: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    tClassOrig: TMSQuery;
    tClassDest: TMSQuery;
    dstClassOrig: TDataSource;
    dstClassDest: TDataSource;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cBancoDestino: TRxDBLookupCombo;
    cContaDestino: TEdit;
    cValorTransferir: TCurrencyEdit;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    cClassDest: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cCentroCusto: TRxDBLookupCombo;
    cData: TDateEdit;
    StaticText7: TStaticText;
    cObservacao: TMemo;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    cProcesso: TRxDBLookupCombo;
    lForma: TStaticText;
    lDOCForma: TStaticText;
    cNumeroDOC: TEdit;
    cForma: TComboBox;
    bDadosCheque: TButton;
    StaticText6: TStaticText;
    cBancoOrigem: TRxDBLookupCombo;
    cContaOrigem: TEdit;
    cSaldoOrigem: TCurrencyEdit;
    StaticText3: TStaticText;
    StaticText8: TStaticText;
    cClassOrig: TRxDBLookupCombo;
    bPesqClassOrig: TSpeedButton;
    bPesqClassDest: TSpeedButton;
    bPesqBcoOrig: TSpeedButton;
    bPesqBcoDest: TSpeedButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cBancoOrigemChange(Sender: TObject);
    procedure cBancoDestinoChange(Sender: TObject);
    procedure bTransferirClick(Sender: TObject);
    procedure cFormaChange(Sender: TObject);
    procedure bDadosChequeClick(Sender: TObject);
    procedure bPesqBcoOrigClick(Sender: TObject);
    procedure bPesqBcoDestClick(Sender: TObject);
    procedure bPesqClassOrigClick(Sender: TObject);
    procedure bPesqClassDestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     mBancoOrigem 
    ,mBancoDestino: Integer;
    mCompClass
   ,mCompBanco:string;
  end;

var
  Financeiro_TransferenciaBancaria: TFinanceiro_TransferenciaBancaria;

implementation

uses frmDados, frmFinanceiro_BaixaCheque, frmMenu_Principal, frmPesquisaGerais;

{$R *.dfm}

procedure TFinanceiro_TransferenciaBancaria.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_TransferenciaBancaria.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados, nil, nil, nil);
      Financeiro_TransferenciaBancaria.Release;
      Financeiro_TransferenciaBancaria := nil;
end;

procedure TFinanceiro_TransferenciaBancaria.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_TransferenciaBancaria.FormShow(Sender: TObject);
begin   
      With Dados do begin
           with Configuracao do begin
                Open;
                mCompBanco := 'Bancos';
                if fieldbyname('Compartilhar_Bancos').asboolean then mCompBanco := 'Cybersoft_Cadastros.dbo.Bancos';
                mCompClass := 'ClassificacaoFinanceira';
                if fieldbyname('Compartilhar_Classificacao').asboolean then mCompClass:= 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira';
           end;
           with PagarReceber do begin 
                sql.Clear;
                sql.Add('select * from PagarReceber where Data_Vencimento = getdate()');
                open;
           end;
           with PagarReceberBaixas do begin
                sql.Clear;
                sql.Add('select * from PagarReceberBaixas where Data = getdate()');
                open;
           end;
           with Bancos do begin
                SQL.Clear;
                SQL.Add('select * from '+mCompBanco+' where(Desativado <> 1) order by Nome');
                Open;
           end;
           with tClassOrig do begin
                SQL.Clear;
                SQL.Add('select Codigo, Descricao, Nivel from '+mCompClass);
                SQL.Add('where  isnull(Transferencia, 0) = 1 and Tipo = ''P'' and isnull(Desativada, 0) <> 1');
                SQL.Add('order by Descricao');
                Open;
           end;
           with tClassDest do begin
                SQL.Clear;
                SQL.Add('select Codigo, Descricao, Nivel from '+mCompClass);
                SQL.Add('where  isnull(Transferencia, 0) = 1 and Tipo = ''R'' and isnull(Desativada, 0) <> 1');
                SQL.Add('order by Descricao');
                Open;
           end;
           with CentroCusto do begin
                sql.Clear;
                sql.Add('select * from CentroCusto order by Descricao');
                open;
           end;
           with ProcessosDOC do begin 
                sql.Clear;
                sql.Add('select * from ProcessosDocumentos order by Processo');
                open;
           end;
           with Empresas do begin 
                sql.Clear;
                sql.Add('select * from Empresas where Codigo = :pEmpresa');
                ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                Open;
           end;
           with TiposDocumentos do begin 
                sql.Clear;
                sql.add('select * from TiposDocumentos order by Descricao');
                open;
           end;
      End;
end;

procedure TFinanceiro_TransferenciaBancaria.bPesqBcoOrigClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Bancos';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean, 'Dados', 'Empresa');
      PesquisaGerais.mFiltro := 'and isnull(Desativado, 0) = 0';
      PesquisaGerais.Showmodal;
      cBancoOrigem.keyValue := Clipboard.AsText;
end;

procedure TFinanceiro_TransferenciaBancaria.bPesqClassDestClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ClassificacaoFinanceira';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Classificacao.asboolean, 'Dados','Empresa');
      PesquisaGerais.mFiltro := 'and Transferencia = 1 and Tipo = ''R'' and Desativada <> 1';
      PesquisaGerais.Showmodal;
      cClassDest.keyValue := Clipboard.AsText;
end;

procedure TFinanceiro_TransferenciaBancaria.bPesqClassOrigClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ClassificacaoFinanceira';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Classificacao.asboolean, 'Dados','Empresa');
      PesquisaGerais.mFiltro := 'and Transferencia = 1 and Tipo = ''P'' and Desativada <> 1';
      PesquisaGerais.Showmodal;
      
      cClassOrig.keyValue := strtoint(Clipboard.AsText);
end;

procedure TFinanceiro_TransferenciaBancaria.bPesqBcoDestClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Bancos';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean, 'Dados', 'Empresa');
      PesquisaGerais.mFiltro := 'and isnull(Desativado, 0) = 0';
      PesquisaGerais.Showmodal;
      cBancoDestino.keyValue := Clipboard.AsText;
end;

procedure TFinanceiro_TransferenciaBancaria.cBancoOrigemChange(Sender: TObject);
begin
      With Dados do begin
           cContaOrigem.Text := BancosConta.AsString;
           mBancoOrigem      := BancosCodigo.Value;
      
           // Apurando o Saldo do Banco Origem.
           Screen.Cursor      := crSQLWait;
           cSaldoOrigem.Value := 0;
           
           tSaldo.SQL.Clear;
           tSaldo.SQL.Add('SELECT CAST(SUM(Valor) AS DECIMAL(18,2)) AS Saldo FROM PagarReceberBaixas WHERE (Tipo = ''R'')  AND (Banco = :pBanco) ');
           tSaldo.ParamByName('pBanco').AsInteger := BancosCodigo.Value;
           tSaldo.Open;

           cSaldoOrigem.Value := BancosSaldo.AsCurrency + tSaldo.FieldByName('Saldo').AsCurrency;

           tSaldo.SQL.Clear;
           tSaldo.SQL.Add('SELECT CAST(SUM(Valor) AS DECIMAL (18,2)) AS Saldo FROM PagarReceberBaixas WHERE (Tipo = ''P'')  AND (Banco = :pBanco) ');
           tSaldo.ParamByName('pBanco').AsInteger := BancosCodigo.Value;
           tSaldo.Open;

           cSaldoOrigem.Value := cSaldoOrigem.Value - tSaldo.FieldByName('Saldo').AsCurrency;

           Screen.Cursor := crDefault;
      End;    
end;  

procedure TFinanceiro_TransferenciaBancaria.cBancoDestinoChange(Sender: TObject);
begin
      cContaDestino.Text := Dados.BancosConta.AsString;
      mBancoDestino      := Dados.BancosCodigo.Value;
end;

procedure TFinanceiro_TransferenciaBancaria.bTransferirClick(Sender: TObject);
Var
    mTransPagar  : Integer;
    mTransReceber: Integer;
begin
       If Trim(cBancoOrigem.DisplayValue) = '' then begin
          ShowMessage('Informe o banco de origem para efetuar a transferência desejada!');
          cBancoOrigem.SetFocus;
          Abort;
       End;                        
       If Trim(cClassOrig.Text) = '' then begin
          ShowMessage('Informe a classificação financeira de origem para efetuar a transferência desejada!');
          cClassOrig.SetFocus;
          Abort;
       End;
       If Trim(cBancoDestino.DisplayValue) = '' then begin
          ShowMessage('Informe o banco de destino para efetuar a transferência desejada!');
          cBancoDestino.SetFocus;
          Abort;
       End;
       If Trim(cClassDest.Text) = '' then begin
          ShowMessage('Informe a classificação financeira de destino para efetuar a transferência desejada!');
          cClassDest.SetFocus;
          Abort;
       End;
       If Trim(RemoveCaracter('/', '', cData.Text)) = '' then begin
          ShowMessage('Informe a data da transferência para efetuar a transferência desejada!');
          cData.SetFocus;
          Abort;
       End;
       If cValorTransferir.Value <= 0 then begin
          ShowMessage('Informe um valor válido para efetuar a transferência desejada!');
          cValorTransferir.SetFocus;
          Abort;
       End;
       If cContaOrigem.Text = cContaDestino.Text then begin
          ShowMessage('Conta origem e conta destino são as mesmas!'+#13+#13'Informe contas diferentes para efetuar a transferência.');
          cBancoDestino.SetFocus;
          Abort;
       End;
       If Trim(Dados.ConfiguracaoClassificacao_TransfBanco.AsString) = '' then begin
          ShowMessage('Falta informar a classificação financeira de recebimento para transferência em configurações!');
          bTransferir.SetFocus;
          Abort;
       End;
       If (cData.Date <= Dados.EmpresasFechamento_Financeiro.Value) then begin
       //If (cData.Date <= Dados.EmpresasFechamento_Financeiro.Value) or (cData.Date > Dados.EmpresasFechamento_FinanceiroFinal.Value) then begin
          ShowMessage('Não podem ser feitas transferências bancárias dentro de períodos já fechados, verifique a data.');
          cData.Setfocus;
          Abort;
       End;
       If cValorTransferir.Value > cSaldoOrigem.Value then begin
          If MessageDlg('Atenção!'+#13+#13+'O saldo da conta ficara negativo com a transferência do valor informado.'+#13+#13'Deseja realmente efetuar a transferência?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
             cValorTransferir.SetFocus;
             Abort;
          End;
       End else begin
          If MessageDlg('Deseja realmente efetuar a transferência?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
       End;

       // Gerando o lançamento de pagamento.
       With Dados do begin
            TiposDocumentos.locate('Descricao', cForma.Text, [loCaseInsensitive]);

            tNumero.Open;
            //PagarReceber.Open;
            PagarReceber.Append;
                         PagarReceberNumero.Value              := tNumeroNumero.Value + 1;
                         PagarReceberTipo.Value                := 'P';
                         PagarReceberClassificacao.Value       := cClassOrig.KeyValue;
                         PagarReceberFornecedor.Value          := BancosConta_Fornecedor.AsInteger;
                         PagarReceberCentro_Custo.Value        := iif(Trim(cCentroCusto.DisplayValue) <> '',CentroCustoCodigo.Value, '');
                         PagarReceberData_Previsao.Value       := cData.Date;
                         PagarReceberData_Documento.Value      := cData.Date;
                         PagarReceberData_Vencimento.Value     := cData.Date;
                         PagarReceberValor_Documento.Value     := cValorTransferir.Value;
                         PagarReceberValor_Parcela.Value       := cValorTransferir.Value;
                         PagarReceberValor_Total.Value         := cValorTransferir.Value;
                         PagarReceberValor_Operacao.Value      := cValorTransferir.Value;
                         PagarReceberBanco.Value               := mBancoOrigem;
                         PagarReceberDocumento.Value           := TiposDocumentos.FieldByName('Codigo').AsString;
                         PagarReceberForma_Tipo.Value          := Trim(cForma.Text);
                         PagarReceberNumero_FormaTipo.Value    := Trim(cNumeroDOC.Text);
                         PagarReceberObservacao.Value          := cObservacao.Lines.Text;
                         PagarReceberProcesso.Value            := cProcesso.Text;
                         PagarReceberCustoConta.Value          := false;
                         PagarReceberCusto_Seletivo.Value      := false;
                         PagarReceberCusto_Entrada.Value       := false;
                         PagarReceberTransferencia.Value       := True;
                         PagarReceberTransferencia_Banco.Value := mBancoDestino;
                         PagarReceberNivel.Value               := tClassOrig.fieldbyname('Nivel').Value;
                         PagarReceberEmpresa.Value             := Menu_Principal.mEmpresa;
                         PagarReceberFilial.Value              := Empresas.FieldByName('Numero_Filial').asinteger;
            PagarReceber.Post;
            tNumero.Close;

            mTransPagar := PagarReceberNumero.Value;

            // Gerando a baixa do pagamento.
            tRegistroBaixa.SQL.Clear;
            tRegistroBaixa.SQL.Add('SELECT MAX(Registro) AS Registro FROM PagarReceberBaixas');
            tRegistroBaixa.Open;

            //PagarReceberBaixas.Open;
            PagarReceberBaixas.Append;
                               PagarReceberBaixasRegistro.Value            := tRegistroBaixa.FieldByName('Registro').AsInteger + 1;
                               PagarReceberBaixasNumero.Value              := PagarReceber.FieldByName('Numero').AsInteger;
                               PagarReceberBaixasTipo.Value                := PagarReceber.FieldByName('Tipo').AsString;
                               PagarReceberBaixasData.Value                := cData.Date;
                               PagarReceberBaixasValor.Value               := PagarReceber.FieldByName('Valor_Total').AsCurrency;
                               PagarReceberBaixasForma_Tipo.Value          := PagarReceber.FieldByName('Forma_Tipo').AsString;
                               PagarReceberBaixasForma_TipoDocumento.Value := PagarReceber.FieldByName('Numero_FormaTipo').AsString;
                               PagarReceberBaixasBanco.Value               := PagarReceber.FieldByName('Banco').AsInteger;
                               PagarReceberBaixasObservacao.Value          := cObservacao.Lines.Text;
                               PagarReceberBaixasBanco_Conta.Value         := cContaOrigem.Text;
            PagarReceberBaixas.Post;

            PagarReceber.Edit;
                         PagarReceberValor_Baixado.Value := PagarReceberValor_Total.Value;
            PagarReceber.Post;

            // Gerando o lançamento de recebimento.
            tNumero.Open;
            PagarReceber.Append;
                         PagarReceberNumero.Value               := tNumeroNumero.Value + 1;
                         PagarReceberTipo.Value                 := 'R';
                         PagarReceberClassificacao.Value        := cClassDest.KeyValue;
                         PagarReceberCliente.Value              := BancosConta_Cliente.AsInteger;
                         PagarReceberCentro_Custo.Value         := iif(Trim(cCentroCusto.DisplayValue) <> '',CentroCustoCodigo.Value, '');
                         PagarReceberData_Previsao.Value        := cData.Date;
                         PagarReceberData_Documento.Value       := cData.Date;
                         PagarReceberData_Vencimento.Value      := cData.Date;
                         PagarReceberValor_Documento.Value      := cValorTransferir.Value;
                         PagarReceberValor_Parcela.Value        := cValorTransferir.Value;
                         PagarReceberValor_Total.Value          := cValorTransferir.Value;
                         PagarReceberValor_Operacao.Value       := cValorTransferir.Value;
                         PagarReceberBanco.Value                := mBancoDestino;
                         PagarReceberForma_Tipo.Value           := Trim(cForma.Text);
                         PagarReceberNumero_FormaTipo.Value     := Trim(cNumeroDOC.Text);
                         PagarReceberObservacao.Value           := cObservacao.Lines.Text;
                         PagarReceberProcesso.Value             := cProcesso.Text;
                         PagarReceberCustoConta.Value           := false;
                         PagarReceberCusto_Seletivo.Value       := false;
                         PagarReceberCusto_Entrada.Value        := false;
                         PagarReceberTransferencia.Value        := True;
                         PagarReceberTransferencia_Numero.Value := mTransPagar;
                         PagarReceberTransferencia_Banco.Value  := mBancoOrigem;
                         PagarReceberNivel.Value                := tClassDest.fieldbyname('Nivel').Value;
                         PagarReceberEmpresa.Value              := Menu_Principal.mEmpresa;
                         PagarReceberFilial.Value               := Empresas.FieldByName('Numero_Filial').asinteger;
            PagarReceber.Post;
            tNumero.Close;

            mTransReceber := PagarReceberNumero.Value;

            // Gerando a baixa do recebimento.
            tRegistroBaixa.SQL.Clear;
            tRegistroBaixa.SQL.Add('SELECT MAX(Registro) AS Registro FROM PagarReceberBaixas');
            tRegistroBaixa.Open;

            //PagarReceberBaixas.Open;
            PagarReceberBaixas.Append;
                               PagarReceberBaixasRegistro.Value            := tRegistroBaixa.FieldByName('Registro').AsInteger + 1;
                               PagarReceberBaixasNumero.Value              := PagarReceber.FieldByName('Numero').AsInteger;
                               PagarReceberBaixasTipo.Value                := PagarReceber.FieldByName('Tipo').AsString;
                               PagarReceberBaixasData.Value                := cData.Date;
                               PagarReceberBaixasValor.Value               := PagarReceber.FieldByName('Valor_Total').AsCurrency;
                               PagarReceberBaixasForma_Tipo.Value          := PagarReceber.FieldByName('Forma_Tipo').AsString;
                               PagarReceberBaixasForma_TipoDocumento.Value := PagarReceber.FieldByName('Numero_FormaTipo').AsString;
                               PagarReceberBaixasBanco.Value               := PagarReceber.FieldByName('Banco').AsInteger;
                               PagarReceberBaixasObservacao.Value          := cObservacao.Lines.Text;
                               PagarReceberBaixasBanco_Conta.Value         := cContaDestino.Text;
            PagarReceberBaixas.Post;

            PagarReceber.Edit;
                         PagarReceberValor_Baixado.Value := PagarReceberValor_Total.Value;
            PagarReceber.Post;

            PagarReceber.Locate('Numero', mTransPagar, [loCaseInsensitive]);
            PagarReceber.Edit;
                         PagarReceberTransferencia_Numero.Value := mTransReceber;
            PagarReceber.Post;
       End;

       ShowMessage('Laçamentos de transferência efetuados com sucesso!');

       // Limpando os campos após a transferência.
       cBancoOrigem.KeyValue   := '';
       cContaOrigem.Text       := '';
       cSaldoOrigem.Value      := 0;
       cBancoDestino.KeyValue  := '';
       cContaDestino.Text      := '';
       cClassOrig.KeyValue     := '';
       cClassDest.KeyValue     := '';
       cCentroCusto.KeyValue   := '';
       cData.Text              := '';
       cValorTransferir.Value  := 0;
       cProcesso.KeyValue      := '';
       cObservacao.Lines.Clear;
end;

procedure TFinanceiro_TransferenciaBancaria.cFormaChange(Sender: TObject);
begin
      bDadosCheque.Enabled := (cForma.Text = 'CHEQUE');
end;

procedure TFinanceiro_TransferenciaBancaria.bDadosChequeClick(Sender: TObject);
begin
     Financeiro_BaixaCheque := TFinanceiro_BaixaCheque.Create(Self);
     Financeiro_BaixaCheque.Caption       := Caption;
     Financeiro_BaixaCheque.mExtenso      := ValorExtenso(cValorTransferir.Value, true);
     Financeiro_BaixaCheque.lValor.Value  := cValorTransferir.Value;
     Financeiro_BaixaCheque.lCheque.Text  := cNumeroDOC.Text;
     Financeiro_BaixaCheque.ShowModal;
end;

end.
