unit frmFinanceiro_LancamentoNovo;
                                                
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ComCtrls,
  DBCtrls, Vcl.ExtCtrls, RXCtrls, RXDBCtrl, Mask, Funcoes,Buttons, DBGrids, ClipBrd, Math, DateUtils,
  Grids, RxCurrEdit, MemDS, RxToolEdit;

type
  TFinanceiro_LancamentoNovo = class(TForm)
    Panel1: TPanel;
    bCancelar: TButton;
    tNumero: TMSQuery;
    bSalvar: TButton;
    Panel3: TPanel;
    cObservacao: TDBMemo;
    lObservacao: TStaticText;
    lValorMulta: TStaticText;
    cMulta: TDBEdit;
    lValorJuros: TStaticText;
    cJuros: TDBEdit;
    lValorDesconto: TStaticText;
    cDesconto: TDBEdit;
    cValorTotal: TDBEdit;
    lValorTotal: TStaticText;
    lBeneficiario: TStaticText;
    lValorDocumento: TStaticText;
    lVencimento: TStaticText;
    cValorDocumento: TDBEdit;
    cNumeroDOC: TDBEdit;
    lDataProvisao: TStaticText;
    lDocumento: TStaticText;
    lNumeroDOC: TStaticText;
    lDataPrevisao: TStaticText;
    cDataPrevisao: TDBDateEdit;
    cDataDoc: TDBDateEdit;
    cVencimento: TDBDateEdit;
    cBeneficiario: TDBLookupComboBox;
    cDocumento: TDBLookupComboBox;
    tNumeroNumero: TLargeintField;
    tCodigoPlano: TMSQuery;
    tCodigoPlanoCodigo: TStringField;
    tContaPlano: TMSQuery;
    tContaPlanoConta: TStringField;
    tClientes: TMSQuery;
    bDadosBancarios: TButton;
    lModalidade: TStaticText;
    cModalidade: TDBLookupComboBox;
    bParcelas: TButton;
    tBordero: TMSQuery;
    tBorderoBordero: TIntegerField;
    StaticText4: TStaticText;
    cTotalBaixas: TCurrencyEdit;
    cSaldo: TCurrencyEdit;
    StaticText5: TStaticText;
    dstAdiantamentos: TDataSource;
    lAdiantamento: TStaticText;
    tRegistroBaixa: TMSQuery;
    cNumeroForma: TDBEdit;
    lNumeroForma: TStaticText;
    lBanco: TStaticText;
    cBanco: TDBLookupComboBox;
    lForma: TStaticText;
    cFormaPagamento: TDBComboBox;
    cNumeroAdiantamento: TDBEdit;
    tAdiantamentos: TMSQuery;
    tAdiantamentosNumero: TLargeintField;
    tAdiantamentosValor_Total: TCurrencyField;
    tAdiantamentosData_Documento: TDateTimeField;
    tAdiantamentosBanco: TSmallintField;
    tAdiantamentosForma_Tipo: TStringField;
    tAdiantamentosNumero_FormaTipo: TStringField;
    tAdiantamentosValor_Baixado: TCurrencyField;
    cGrade: TDBGrid;
    StaticText3: TStaticText;
    tSaldoAdiantamento: TMSQuery;
    StaticText6: TStaticText;
    cTotalAdiantamentos: TCurrencyEdit;
    tBaixa: TMSQuery;
    lBaixado: TLabel;
    tLancamento: TMSQuery;
    tLancamentoNumero: TSmallintField;
    tAdiantamentosFornecedor_Nome: TStringField;
    tExiste: TMSQuery;
    tTotal: TMSQuery;
    RxDBGrid1: TRxDBGrid;
    bPagamento: TButton;
    bRecebimento: TButton;
    StaticText1: TStaticText;
    cTotalDesdobramentos: TCurrencyEdit;
    cNFRef: TDBEdit;
    lNFRef: TStaticText;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    Image1: TImage;
    Image2: TImage;
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lModalidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure cClassificacaoExit(Sender: TObject);
    procedure cClassificacaoClick(Sender: TObject);
    procedure cDocumentoExit(Sender: TObject);
    procedure cValorParcelaChange(Sender: TObject);
    procedure cMultaChange(Sender: TObject);
    procedure cJurosChange(Sender: TObject);
    procedure cDescontoChange(Sender: TObject);
    procedure CalculaTotal;
    procedure cDescontoExit(Sender: TObject);
    procedure cJurosExit(Sender: TObject);
    procedure cMultaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure lClassificacaoClick(Sender: TObject);
    procedure lDocumentoClick(Sender: TObject);
    procedure lBeneficiarioClick(Sender: TObject);
    procedure lBancoClick(Sender: TObject);
    procedure bDadosBancariosClick(Sender: TObject);
    procedure cModalidadeClick(Sender: TObject);
    procedure cModalidadeExit(Sender: TObject);
    procedure bParcelasClick(Sender: TObject);
    procedure cBeneficiarioClick(Sender: TObject);
    procedure cDataDocExit(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure cProcessoClick(Sender: TObject);
    procedure cGradeDblClick(Sender: TObject);
    procedure ChecaConta(ContaD:String; ContaC:String);
    Function  ConverteHistorico(Historico: String):String;
    procedure cBeneficiarioExit(Sender: TObject);
    procedure CampoBeneficiario;
    procedure bPagamentoClick(Sender: TObject);
    procedure bRecebimentoClick(Sender: TObject);
    procedure cTotalDesdobramentosChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mOutroValor   : Boolean;
    mValorAnterior: Currency;
    mTipo,
    mDataAnterior,
    mContaDebito,
    mContaCredito,
    mNumeroDOC,
    mParcela:String;
    mNumero : Integer;
  end;

var
  Financeiro_LancamentoNovo: TFinanceiro_LancamentoNovo;

implementation

Uses frmDados, frmCadastro_ClassificacaoFinanceira, frmCadastro_CentroCusto,frmCadastro_ModalidadesPagamento, frmCadastro_TiposDocumentos, frmDMContab, frmCadastro_Fornecedores,
     frmCadastro_Clientes, frmCadastro_OrgaosPublicos, frmCadastro_Bancos, frmFinanceiro_LancamentoDadosBancarios, frmFinanceiro_LancamentoParcelas, 
     frmMenu_Principal, frmFinanceiro_RelacaoContratos, frmFinanceiro_Lista, frmFinanceiro_LancamentoDesdobrar;

{$R *.dfm}

procedure TFinanceiro_LancamentoNovo.bCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_LancamentoNovo.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      // Apaga as parcelas da tabela temporaria.
      With Dados do begin
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
           TabParcelas.ParamByName('pRegistro').AsString := mParcela;
           TabParcelas.Execute;
           Dados.PagarReceber.Cancel;
      End;

      Dados.CentroCusto.Close;
      Dados.ModalidadesPgto.Close;
      Dados.Orgaos.Close;
      Dados.PagarReceber.Close;
      DmContab.Historicos.Close;
      
      LimpaMemoria;
      Financeiro_LancamentoNovo.Release;
      Financeiro_LancamentoNovo := nil;
end;

procedure TFinanceiro_LancamentoNovo.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      mNumeroDOC          := Dados.PagarReceberNumero_Documento.AsString;
      cModalidade.Enabled := Dados.PagarReceber.State = dsInsert;
      lModalidade.Enabled := Dados.PagarReceber.State = dsInsert;

      With Dados, dmContab do Begin
           {
           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Titulo = 0) AND (Desativada <> 1) AND (Nivel <= :pNivel) ORDER BY Descricao');
           ClassificacaoFinanceira.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
           ClassificacaoFinanceira.Open;
           }
           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto WHERE LEN(Codigo) = 7 ORDER BY Descricao');
           CentroCusto.Open;

           ModalidadesPgto.SQL.Clear;
           ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Codigo');
           ModalidadesPgto.Open;

           Configuracao.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.Open;

           Orgaos.SQL.Clear;
           Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos ORDER BY Nome');
           Orgaos.Open;

           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Codigo');
           Historicos.Open;

           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo' );
           TiposProcesso.Open;

           Desdobramento.SQL.Clear;
           Desdobramento.SQL.Add('SELECT * FROM Desdobramento WHERE(Numero = :pNumero) ORDER BY Registro Desc');
           Desdobramento.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
           Desdobramento.Open;

           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT SUM(Valor) AS Total FROM Desdobramento WHERE(Numero = :pNumero)');
           tTotal.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
           tTotal.Open;
           cTotalDesdobramentos.Value := tTotal.FieldByName('Total').AsCurrency;

           cProcessoClick(Self);

           ClassificacaoFinanceira.Locate('Codigo', PagarReceberClassificacao.Value, [loCaseInsensitive]);
           TiposDocumentos.Locate('Codigo', PagarReceberDocumento.Value, [loCaseInsensitive]);
           Fornecedores.Locate('Codigo', PagarReceberFornecedor.Value, [loCaseInsensitive]);
           Clientes.Locate('Codigo', PagarReceberCliente.Value, [loCaseInsensitive]);
           TiposProcesso.Locate('Codigo', ClientesModalidade_Importacao.AsInteger, [loCaseInsensitive]);
           Orgaos.Locate('Codigo', PagarReceberOrgao.Value, [loCaseInsensitive]);

           // Ajusta o campo de beneficiario.
           CampoBeneficiario;

           cBanco.Enabled          := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           cFormaPagamento.Enabled := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           cNumeroForma.Enabled    := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           lAdiantamento.Enabled   := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
           lBanco.Enabled          := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           lForma.Enabled          := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           lNumeroForma.Enabled    := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           cGrade.Enabled          := not ClassificacaoFinanceiraAdiantamento.AsBoolean;

           tBaixa.SQL.Clear;
           tBaixa.SQL.Add('SELECT SUM(Valor) AS Total_Baixado');
           tBaixa.SQL.Add('FROM PagarReceberBaixas');
           tBaixa.SQL.Add('WHERE (Numero = :pNumero)');
           tBaixa.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
           tBaixa.Open;

           cTotalBaixas.Value := tBaixa.FieldByName('Total_Baixado').AsCurrency;
           cSaldo.Value       := PagarReceberValor_Total.Value - tBaixa.FieldByName('Total_Baixado').AsCurrency;

           If RoundTo(tBaixa.FieldByName('Total_Baixado').AsCurrency, -2) >= RoundTo(PagarReceberValor_Total.AsCurrency, -2) then begin
              lBaixado.Caption := 'LANÇAMENTO BAIXADO (TOTAL)';
           end else begin
              lBaixado.Caption := 'LANÇAMENTO BAIXADO (PARCIAL)';
           End;

           If (PagarReceber.State = dsEdit) then begin
              If (Menu_Principal.mUsuarioNome <> 'ADMINISTRADOR') then begin
                 If tBaixa.FieldByName('Total_Baixado').AsCurrency <> 0 then begin
                    Panel3.Enabled       := false;
                    bSalvar.Enabled      := false;
                    lBaixado.Visible     := true;
                    bPagamento.Enabled   := false;
                    bRecebimento.Enabled := false;
                 end else begin
                    Panel3.Enabled       := true;
                    bSalvar.Enabled      := true;
                    lBaixado.Visible     := false;
                    bPagamento.Enabled   := true;
                    bRecebimento.Enabled := true;
                 End;
              end else begin
                 If tBaixa.FieldByName('Total_Baixado').AsCurrency <> 0 then begin
                    lBaixado.Visible        := true;
                    lValorDocumento.Enabled := false;
                    lValorDesconto.Enabled  := false;
                    lValorMulta.Enabled     := false;
                    lValorJuros.Enabled     := false;
                    lValorTotal.Enabled     := false;
                    lBanco.Enabled          := false;
                    lForma.Enabled          := false;
                    lNumeroForma.Enabled    := false;
                    cValorDocumento.Enabled := false;
                    cDesconto.Enabled       := false;
                    cMulta.Enabled          := false;
                    cJuros.Enabled          := false;
                    cValorTotal.Enabled     := false;
                    cBanco.Enabled          := false;
                    cFormaPagamento.Enabled := false;
                    cNumeroForma.Enabled    := false;
                    bPagamento.Enabled      := false;
                    bRecebimento.Enabled    := false;
                 end else begin
                    Panel3.Enabled       := true;
                    bSalvar.Enabled      := true;
                    lBaixado.Visible     := false;
                    bPagamento.Enabled   := true;
                    bRecebimento.Enabled := true;
                 End;
              End;
           End;

           cBeneficiarioExit(Self);
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_LancamentoNovo.lModalidadeClick(Sender: TObject);
begin
      Cadastro_ModalidadesPagamento := TCadastro_ModalidadesPagamento.Create(Self);
      Cadastro_ModalidadesPagamento.Caption := Caption;
      Cadastro_ModalidadesPagamento.ShowModal;
      Dados.ModalidadesPgto.Open;
      Dados.PagarReceberModalidade_Pgto.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_LancamentoNovo.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
      mValorAnterior := Dados.PagarReceberValor_Operacao.Value;
end;

procedure TFinanceiro_LancamentoNovo.bSalvarClick(Sender: TObject);
Var
    mConta             : String;
    mGrupo             : String;
    mTipo              : String;
    mClassificacao     : String;
    mCentro_Custo      : String;
    mData_Documento    : TDate;
    mValor_Documento   : Currency;
    mMulta             : Currency;
    mJuros             : Currency;
    mDesconto          : Currency;
    mValor_Total       : Currency;
    mValor_Operacao    : Currency;
    mFornecedor        : Integer;
    mFornecedor_Banco  : String;
    mFornecedor_Agencia: String;
    mFornecedor_Conta  : String;
    mCliente           : Integer;
    mOrgao             : String;
    mBanco             : Integer;
    mDocumento         : String;
    mNumero_Documento  : String;
    mForma_Tipo        : String;
    mNumero_FormaTipo  : String;
    mObservacao        : String;
    mProcesso          : String;
    mCustoConta        : Boolean;
    mCustoSeletivo     : Boolean;
    mCustoEntrada      : Boolean;
    mFiscal            : String;
    mModalidade_Pgto   : Integer;
    mInsert            : Boolean;
    mNivel             : Integer;
begin
      With Dados, dmContab do begin
           mInsert := PagarReceber.State = dsInsert;

           // Verifica todos os campos obrigatórios do lancamento.
           If (PagarReceberData_Vencimento.Value <= EmpresasFechamento_Financeiro.Value) then begin
           //If (PagarReceberData_Documento.Value <= EmpresasFechamento_Financeiro.Value) or (PagarReceberData_Documento.Value > EmpresasFechamento_Financeiro.Value) then begin
              MessageDlg('Data inválida!'+#13+#13+'A data do vencimento esta dentro de um período já fechado .', mtError, [mbOK], 0);
              cVencimento.SetFocus;
              Abort;
           End;
           {
           If Trim(PagarReceberClassificacao.Value) = '' then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a classificação financeira.', mtError, [mbOK], 0);
              cClassificacao.SetFocus;
              Abort;
           End;
           }
           If Trim(PagarReceberDocumento.Value) = '' then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o tipo do documento.', mtError, [mbOK], 0);
              cDocumento.SetFocus;
              Abort;
           End;
           If Trim(RemoveCaracter('/','',PagarReceberData_Documento.AsString)) = '' then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a data do documento.', mtError, [mbOK], 0);
              cDataDOC.SetFocus;
              Abort;
           End;
           If Trim(PagarReceberNumero_Documento.Value) = '' then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o número do documento.', mtError, [mbOK], 0);
              cNumeroDoc.SetFocus;
              Abort;
           End;
           If Trim(RemoveCaracter('/','',PagarReceberData_Vencimento.AsString)) = '' then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a data de vencimento do documento.', mtError, [mbOK], 0);
              cVencimento.SetFocus;
              Abort;
           End;
           If (PagarReceberTipo.Value = 'P') and (TiposDocumentosTributo.Value = False) and (ClassificacaoFinanceiraDevolucao.AsBoolean = false) then begin
              If PagarReceberFornecedor.Value = 0 then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o fornecedor.', mtError, [mbOK], 0);
                 cBeneficiario.SetFocus;
                 Abort;
              End;
           End;
           If (PagarReceberTipo.Value = 'P') and (ClassificacaoFinanceiraDevolucao.AsBoolean = true) then begin
              If PagarReceberCliente.Value = 0 then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o cliente.', mtError, [mbOK], 0);
                 cBeneficiario.SetFocus;
                 Abort;
              End;
           End;
           If (PagarReceberTipo.Value = 'P') and (TiposDocumentosTributo.Value = True) then begin
              If Trim(PagarReceberOrgao.Value) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o orgão público.', mtError, [mbOK], 0);
                 cBeneficiario.SetFocus;
                 Abort;
              End;
           End;
           If (PagarReceberTipo.Value = 'R') and (ClassificacaoFinanceiraDevolucao.AsBoolean = false) then begin
              If PagarReceberCliente.Value = 0 then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o cliente.', mtError, [mbOK], 0);
                 cBeneficiario.SetFocus;
                 Abort;
              End;
           End;
           If (PagarReceberTipo.Value = 'R') and (ClassificacaoFinanceiraDevolucao.AsBoolean = true) then begin
              If PagarReceberFornecedor.Value = 0 then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o fornecedor.', mtError, [mbOK], 0);
                 cBeneficiario.SetFocus;
                 Abort;
              End;
           End;
           If PagarReceberValor_Documento.Value = 0 then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o valor do documento.', mtError, [mbOK], 0);
              cValorDocumento.SetFocus;
              Abort;
           End;
           {
           If PagarReceberValor_Total.Value <= 0 then begin
              MessageDlg('Conteúdo de campo inválido!'+#13+#13+'O valor total do título não pode ser menor ou igual a zero.', mtError, [mbOK], 0);
              cValorParcela.SetFocus;
              Abort;
           End;
           If PagarReceberValor_Parcela.Value = 0 then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o valor da parcela.', mtError, [mbOK], 0);
              cValorParcela.SetFocus;
              Abort;
           End;
           If (Financeiro_Lista.mOperacional = true) AND (Trim(PagarReceberProcesso.AsString) = '') then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'Para usuarios do operacional é necessário informar o número do processo.', mtError, [mbOK], 0);
              cProcesso.SetFocus;
              Abort;
           End;
           }

           // Verifica se já existe documento lançado com o mesmo número e valor, para evitar duplicidade.
           If mInsert = true then begin
              tExiste.SQL.Clear;
              tExiste.SQL.Add('SELECT Fornecedor,');
              tExiste.SQL.Add('       CASE WHEN Fornecedor > 0     THEN (SELECT Nome FROM Fornecedores   WHERE(Codigo = PagarReceber.Fornecedor))');
              tExiste.SQL.Add('            WHEN Cliente    > 0     THEN (SELECT Nome FROM Clientes       WHERE(Codigo = PagarReceber.Cliente))');
              tExiste.SQL.Add('            WHEN Orgao      <> '''' THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE(Codigo = PagarReceber.Orgao))');
              tExiste.SQL.Add('       END AS Beneficiario');
              tExiste.SQL.Add('FROM   PagarReceber');
              tExiste.SQL.Add('WHERE (Valor_Documento = :pValor) AND (Numero_Documento LIKE '+QuotedStr('%'+Trim(PagarReceberNumero_Documento.AsString)+'%')+')');
              tExiste.ParamByName('pValor').AsCurrency := PagarReceberValor_Documento.AsCurrency;
              tExiste.Open;

              If tExiste.RecordCount > 0 then begin
                 If MessageDlg('Atenção!'+#13+#13+'Já existe um título com este número de documento e com este valor para '+#13+Trim(tExiste.FieldByName('Beneficiario').AsString)+#13+#13+'Deseja realmente salvar o novo título?', mtInformation, [mbYes, mbNo], 0) = mrNo then begin
                    cValorDocumento.SetFocus;
                    Abort;
                 End;
              End;

              tNumero.SQL.Clear;
              tNumero.SQL.add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
              tNumero.Open;
              
              PagarReceberNumero.Value := tNumeroNumero.Value + 1;
              tNumero.Close;
              PagarReceberValor_Baixado.Value := 0;
              PagarReceberTipo_Nota.Value     := 'FN';
           End;

           PagarReceberCustoConta.Value     := ClassificacaoFinanceiraCusto.Value;
           PagarReceberCusto_Seletivo.Value := ClassificacaoFinanceiraCusto_Seletivo.Value;
           PagarReceberCusto_Entrada.Value  := ClassificacaoFinanceiraCusto_Entrada.Value;
           PagarReceberNivel.Value          := ClassificacaoFinanceiraNivel.Value;
           PagarReceberValor_Baixado.Value  := cTotalBaixas.Value;

           //If cProcesso.Text = '' then PagarReceberProcesso.Value := '';

           If cBeneficiario.DataField = 'Fornecedor' then begin
              PagarReceberCliente.Clear;
              PagarReceberOrgao.Clear;
           End;
           If cBeneficiario.DataField = 'Cliente' then begin
              PagarReceberFornecedor.Clear;
              PagarReceberOrgao.Clear;
           End;
           If cBeneficiario.DataField = 'Orgao' then begin
              PagarReceberFornecedor.Clear;
              PagarReceberCliente.Clear;
           End;

           PagarReceber.Post;

           // Registra log do usuario.
           If mInsert = true then
              GerarLog(Menu_Principal.mUsuarioCodigo, 'PagarReceber', 'INCLUSÃO' , 'Numero', 'Titulo n° '+PagarReceberNumero.AsString+' Vencimento em '+PagarReceberData_Vencimento.AsString, mNumeroDOC, PagarReceberNumero_Documento.AsString)
           else
              GerarLog(Menu_Principal.mUsuarioCodigo, 'PagarReceber', 'ALTERAÇÃO', 'Numero', 'Titulo n° '+PagarReceberNumero.AsString+' Vencimento em '+PagarReceberData_Vencimento.AsString, mNumeroDOC, PagarReceberNumero_Documento.AsString);

           // Deleta o lançamento caso ja exista.
           If (Trim(PagarReceberTipo_Nota.AsString) = 'FN') or (Trim(PagarReceberTipo_Nota.AsString) = 'SN') or (mInsert = true) then begin
           {
              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE(Nota_Fiscal = :pNumero) AND (Data = :pData) AND (Tipo_Nota = :pTipo)');
              Lancamentos.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
              Lancamentos.ParamByName('pData').AsDateTime  := PagarReceberData_Documento.AsDateTime;
              Lancamentos.ParamByName('pTipo').AsString    := 'FN';
              Lancamentos.Execute;
              }
              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE Numero_Financeiro = :pNumero');
              Lancamentos.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
              Lancamentos.Execute;
              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE Numero_Financeiro = :pNumero');
              Lancamentos.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
              Lancamentos.Open;

              If (ClassificacaoFinanceiraAdiantamento.AsBoolean = true) then begin
                 // Gera os lançamentos de baixa quando adiantamento.
                 If PagarReceberBanco.AsInteger <> 0 then begin
                    PagarReceberBaixas.SQL.Clear;
                    PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE(Registro = :pRegistro)');
                    PagarReceberBaixas.ParamByName('pRegistro').AsInteger := PagarReceber.FieldByName('Baixa_Numero').AsInteger;
                    PagarReceberBaixas.Execute;
                    PagarReceberBaixas.SQL.Clear;
                    PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE (Numero = :pNumero)');
                    PagarReceberBaixas.ParamByName('pNumero').AsInteger := PagarReceber.FieldByName('Numero').AsInteger;
                    PagarReceberBaixas.Open;

                    tRegistroBaixa.Open;
                    PagarReceberBaixas.Append;
                                       PagarReceberBaixasRegistro.Value            := tRegistroBaixa.FieldByName('Registro').AsInteger + 1;
                                       PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                                       PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.AsDateTime;
                                       PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                       PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                       PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                                       PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                       PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                    PagarReceberBaixas.Post;

                    tRegistroBaixa.Close;

                    PagarReceber.Edit;
                                 PagarReceberValor_Baixado.Value := PagarReceberValor_Total.AsCurrency;
                                 PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.AsInteger;
                    PagarReceber.Post;

                    // Verifica as contas para os lançamentos contabeis.
                    If PagarReceberTipo.Value = 'P' then
                       ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, BancosPlano_Contas.AsString)
                    else
                       ChecaConta(BancosPlano_Contas.AsString, ClassificacaoFinanceiraPagamento_Conta.AsString)
                 End;
              end else begin
                 If PagarReceberAdiantamento_Numero.AsInteger = 0 then begin
                    // Lançamento de provisão.
                    ChecaConta(ClassificacaoFinanceiraProvisao_ContaD.AsString, ClassificacaoFinanceiraProvisao_ContaC.AsString)
                 end else begin
                    // Quando prestação de contas gera lançamentos contra a conta de adiantamento do fornecedor.
                    If PagarReceberTipo.Value = 'P' then
                       ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, 'ADIANTAMENTO')
                    else
                       ChecaConta('ADIANTAMENTO', ClassificacaoFinanceiraPagamento_Conta.AsString);
                 End;
              End;

              // Lançamento contabil de provisão.
              If (mContaDebito <> '') or (mContaCredito <> '') then begin
                 tLancamento.SQL.Clear;
                 tLancamento.SQL.Add('SELECT  Numero   = (SELECT MAX(Numero)   FROM Lancamentos WHERE YEAR(Data) = :pAno)');
                 tLancamento.SQL.Add('       ,Registro = (SELECT MAX(Registro) FROM Lancamentos)');
                 tLancamento.ParamByName('pAno').AsInteger := YearOf(cDataDoc.Date);
                 tLancamento.Open;

                 Lancamentos.Append;
                             LancamentosNumero.Value        := tLancamento.FieldByName('Numero').AsInteger+1;
                             LancamentosRegistro.Value      := tLancamento.FieldByName('Registro').AsInteger+1;
                             LancamentosEmpresa.Value       := Menu_Principal.mEmpresa;
                             LancamentosData.Value          := PagarReceberData_Documento.AsDateTime;
                             LancamentosConta_Debito.Value  := mContaDebito;
                             LancamentosConta_Credito.Value := mContaCredito;
                             LancamentosValor.Value         := PagarReceberValor_Total.AsCurrency;

                             If (ClassificacaoFinanceiraAdiantamento.AsBoolean = true) or (Trim(PagarReceberAdiantamento_Numero.AsString) <> '') then begin
                                LancamentosHistorico_Codigo.Value := ClassificacaoFinanceiraPagamento_Historico.AsInteger;
                             end else begin
                                LancamentosHistorico_Codigo.Value := ClassificacaoFinanceiraProvisao_Historico.AsInteger;
                             End;
                             Historicos.Locate('Codigo', LancamentosHistorico_Codigo.AsInteger, [loCaseInsensitive]);

                             LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                             LancamentosDocumento.Value             := PagarReceberNumero.AsString;
                             LancamentosData_Documento.Value        := PagarReceberData_Documento.AsDateTime;
                             LancamentosTipo_Documento.Value        := 'FN';
                 Lancamentos.Post;
                 tLancamento.Close;
              End;
           End;

           // Caso haja o número do adiantamento, gera a baixa do titulo.
           If (PagarReceberAdiantamento_Numero.AsInteger <> 0) then begin
              Screen.Cursor := crSQLWait;

              // Deleta o registro da baixa efetuado para criar novamente.
              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE(Registro = :pRegistro)');
              PagarReceberBaixas.ParamByName('pRegistro').AsInteger := PagarReceber.FieldByName('Baixa_Numero').AsInteger;
              PagarReceberBaixas.Execute;
              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE (Numero = :pNumero)');
              PagarReceberBaixas.ParamByName('pNumero').AsInteger := PagarReceber.FieldByName('Numero').AsInteger;
              PagarReceberBaixas.Open;

              tRegistroBaixa.Open;
              PagarReceberBaixas.Append;
                                 PagarReceberBaixasRegistro.Value            := tRegistroBaixa.FieldByName('Registro').AsInteger + 1;
                                 PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                                 PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.AsDateTime;
                                 PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                 PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                 PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                                 PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                 PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                 If PagarReceberAdiantamento_Numero.AsInteger <> 0 then begin
                                    PagarReceberBaixasObservacao.Value := 'Pagamento referente a adiantamento nº '+ PagarReceberAdiantamento_Numero.AsString + ' de '+ tAdiantamentos.FieldByName('Data_Documento').AsString;
                                 End;   
              PagarReceberBaixas.Post;
              tRegistroBaixa.Close;

              // Grava o numero da baixa no titulo.
              PagarReceber.Edit;
                           PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                           PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
              PagarReceber.Post;
           End;

           // Baixa automatica para classificações macadas como baixa automatica.
           If tBaixa.FieldByName('Total_Baixado').AsCurrency = 0 then begin
              If (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true) and (ClassificacaoFinanceiraAdiantamento.AsBoolean = false) and (PagarReceberAdiantamento_Numero.AsInteger = 0) and (PagarReceberBanco.AsInteger <> 0) then begin
                 Screen.Cursor := crSQLWait;

                 // Deleta o registro da baixa efetuado para criar novamente.
                 PagarReceberBaixas.SQL.Clear;
                 PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE(Registro = :pRegistro)');
                 PagarReceberBaixas.ParamByName('pRegistro').AsInteger := PagarReceber.FieldByName('Baixa_Numero').AsInteger;
                 PagarReceberBaixas.Execute;
                 PagarReceberBaixas.SQL.Clear;
                 PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE (Numero = :pNumero)');
                 PagarReceberBaixas.ParamByName('pNumero').AsInteger := PagarReceber.FieldByName('Numero').AsInteger;
                 PagarReceberBaixas.Open;

                 tRegistroBaixa.Open;
                 PagarReceberBaixas.Append;
                                    PagarReceberBaixasRegistro.Value            := tRegistroBaixa.FieldByName('Registro').AsInteger + 1;
                                    PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                                    PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.AsDateTime;
                                    PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                    PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                    PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                                    PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                    PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                    If PagarReceberAdiantamento_Numero.AsInteger <> 0 then begin
                                       PagarReceberBaixasObservacao.Value := 'Pagamento referente a adiantamento nº '+ PagarReceberAdiantamento_Numero.AsString + ' de '+ tAdiantamentos.FieldByName('Data_Documento').AsString;
                                    End;
                 PagarReceberBaixas.Post;
                 tRegistroBaixa.Close;

                 // Grava o numero da baixa no titulo.
                 PagarReceber.Edit;
                              PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                              PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
                 PagarReceber.Post;
              End;
           End;
           // Quando "Adiantamento de CLIENTES", Procura o cliente e cria a conta no plano se ainda não existe.
           If (ClassificacaoFinanceiraAdiantamento.AsBoolean = true) and (Trim(ClassificacaoFinanceiraTipo.AsString) = 'R') and (Trim(ClientesConta_Adiantamento.AsString) = '') then begin
              // Pegando o grupo do cadastro de clientes.
              PlanoContas.SQL.Clear;
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Codigo = :pGrupo)');
              PlanoContas.ParamByName('pGrupo').AsString := TiposProcessoConta_ClienteAdiantamento.AsString;
              PlanoContas.Open;

              mGrupo := Trim(PlanoContasConta.Value);

              If Trim(mGrupo) <> '' then begin
                 // Verificando se a conta ja foi cadastrada.
                 PlanoContas.SQL.Clear;
                 PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                 PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                 PlanoContas.ParamByName('pDescricao').AsString := ClientesNome.Value;
                 PlanoContas.Open;

                 If PlanoContas.RecordCount = 0 then begin
                    // Pegando o número da última conta criada.
                    tContaPlano.SQL.Clear;
                    tContaPlano.SQL.Add('SELECT MAX(Conta) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo)' );
                    tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                    tContaPlano.Open;

                    // Pegando o número do último código criado sem o sexto número (Digito).
                    tCodigoPlano.SQL.Clear;
                    tCodigoPlano.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM PlanoContas');
                    tCodigoPlano.Open;

                    //mCodigo := InttoStr( tCodigoPlano.FieldByName('Codigo').AsInteger + 1 );
                    //mCodigo := mCodigo + DigitoConta(mCodigo);

                    If Configuracao.FieldByName('Contab_ContaNova').AsBoolean = true then
                       mConta := InttoStr(tContaPlano.FieldByName('Conta').AsInteger + 1)
                    else
                       mConta := tContaPlano.FieldByName('Conta').AsString;

                    PlanoContas.Append;
                                PlanoContasConta.Value           := mConta;
                                PlanoContasCodigo.Value          := InttoStr(tCodigoPlano.FieldByName('Codigo').AsInteger + 1);
                                PlanoContasDescricao.Value       := ClientesNome.Value;
                                PlanoContasSaldo_Anterior.Value  := 0;
                                PlanoContasDebito.Value          := 0;
                                PlanoContasCredito.Value         := 0;
                                PlanoContasSintetica.Value       := False;
                                PlanoContasNatureza.Value        := 'D';
                                PlanoContasLALUR.Value           := False;
                                PlanoContasMostrar_Balanco.Value := False;
                                PlanoContasImprimir_Razao.Value  := False;
                    PlanoContas.Post;

                    // Registra a conta aberta no plano no cadastro do cliente.
                    Clientes.Edit;
                             ClientesConta_Adiantamento.Value := PlanoContasCodigo.AsString;
                    Clientes.Post;
                 End;
              End;
           End;

           // Quando "Adiantamento de "FORNECEDORES", Procura o fornecedor e cria a conta no plano se ainda não existe.
           If (ClassificacaoFinanceiraAdiantamento.AsBoolean = true) and (Trim(ClassificacaoFinanceiraTipo.AsString) = 'P') and (Trim(FornecedoresConta_Adiantamento.AsString) = '') then begin
              // Pegando o grupo do cadastro de clientes.
              PlanoContas.SQL.Clear;
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Codigo = :pGrupo)');
              PlanoContas.ParamByName('pGrupo').AsString := TiposProcessoConta_FornecedorAdiantamento.AsString;
              PlanoContas.Open;

              mGrupo := Trim(PlanoContasConta.Value);

              If Trim(mGrupo) <> '' then begin
                 // Verificando se a conta ja foi cadastrada.
                 PlanoContas.SQL.Clear;
                 PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                 PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                 PlanoContas.ParamByName('pDescricao').AsString := FornecedoresNome.Value;
                 PlanoContas.Open;

                 If PlanoContas.RecordCount = 0 then begin
                    // Pegando o número da última conta criada.
                    tContaPlano.SQL.Clear;
                    tContaPlano.SQL.Add('SELECT MAX(Conta) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo)' );
                    tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                    tContaPlano.Open;

                    // Se não houver nenhuma conta analítica no plano cria a primeira, caso contrario pega a última.
                    If tContaPlano.FieldByName('Conta').Value = Null then
                       mConta := CriaAnalitica( mGrupo, Dados.EmpresasMascara_PlanoContas.Value )
                    else
                       If Configuracao.FieldByName('Contab_ContaNova').AsBoolean = true then
                          mConta := InttoStr(tContaPlano.FieldByName('Conta').AsInteger + 1)
                       else
                          mConta := tContaPlano.FieldByName('Conta').AsString;

                    // Pegando o número do último código criado sem o sexto número (Digito).
                    tCodigoPlano.SQL.Clear;
                    tCodigoPlano.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM PlanoContas');
                    tCodigoPlano.Open;

                    //mCodigo := InttoStr( tCodigoPlano.FieldByName('Codigo').AsInteger + 1 );
                    //mCodigo := mCodigo + DigitoConta(mCodigo);

                    PlanoContas.Append;
                                PlanoContasConta.Value           := mConta;
                                PlanoContasCodigo.Value          := InttoStr(tCodigoPlano.FieldByName('Codigo').AsInteger + 1);
                                PlanoContasDescricao.Value       := FornecedoresNome.Value;
                                PlanoContasSaldo_Anterior.Value  := 0;
                                PlanoContasDebito.Value          := 0;
                                PlanoContasCredito.Value         := 0;
                                PlanoContasSintetica.Value       := False;
                                PlanoContasNatureza.Value        := 'D';
                                PlanoContasLALUR.Value           := False;
                                PlanoContasMostrar_Balanco.Value := False;
                                PlanoContasImprimir_Razao.Value  := False;
                    PlanoContas.Post;

                    // Registra a conta aberta no plano no cadastro do fornecedor.
                    Fornecedores.Edit;
                             FornecedoresConta_Adiantamento.Value := PlanoContasCodigo.Value;
                    Fornecedores.Post;
                 End;
              End;
           End;

           // Em caso de lancamento parcelado gera as parcelas.
           If mInsert then begin
              mTipo               := PagarReceberTipo.Value;
              mClassificacao      := PagarReceberClassificacao.Value;
              mCentro_Custo       := PagarReceberCentro_Custo.Value;
              mData_Documento     := PagarReceberData_Documento.Value;
              mValor_Documento    := PagarReceberValor_Documento.Value;
              mMulta              := PagarReceberMulta.Value;
              mJuros              := PagarReceberJuros.Value;
              mDesconto           := PagarReceberDesconto.Value;
              mValor_Total        := PagarReceberValor_Total.Value;
              mValor_Operacao     := PagarReceberValor_Operacao.Value;
              mFornecedor         := PagarReceberFornecedor.Value;
              mFornecedor_Banco   := PagarReceberFornecedor_Banco.Value;
              mFornecedor_Agencia := PagarReceberFornecedor_Agencia.Value;
              mFornecedor_Conta   := PagarReceberFornecedor_Conta.Value;
              mCliente            := PagarReceberCliente.Value;
              mOrgao              := PagarReceberOrgao.Value;
              mBanco              := PagarReceberBanco.Value;
              mDocumento          := PagarReceberDocumento.Value;
              mNumero_Documento   := PagarReceberNumero_Documento.Value;
              mForma_Tipo         := PagarReceberForma_Tipo.Value;
              mNumero_FormaTipo   := PagarReceberNumero_FormaTipo.Value;
              mObservacao         := PagarReceberObservacao.Value;
              mProcesso           := PagarReceberProcesso.Value;
              mCustoConta         := PagarReceberCustoConta.Value;
              mCustoSeletivo      := PagarReceberCusto_Seletivo.Value;
              mCustoEntrada       := PagarReceberCusto_Entrada.Value;
              mFiscal             := PagarReceberFiscal.Value;
              mModalidade_Pgto    := PagarReceberModalidade_Pgto.Value;
              mNivel              := PagarReceberNivel.Value;

              TabParcelas.First;
              If TabParcelas.RecordCount > 1 then begin
                 TabParcelas.First;
                 TabParcelas.Next;
                 While not TabParcelas.Eof do begin
                       tNumero.Open;
                       PagarReceber.Append;
                                    PagarReceberNumero.Value             := tNumeroNumero.Value + 1;;
                                    PagarReceberTipo.Value               := mTipo;
                                    PagarReceberClassificacao.Value      := mClassificacao;
                                    PagarReceberCentro_Custo.Value       := mCentro_Custo;
                                    PagarReceberData_Documento.Value     := mData_Documento;
                                    PagarReceberData_Vencimento.Value    := TabParcelasVencimento.Value;
                                    PagarReceberValor_Documento.Value    := mValor_Documento;
                                    PagarReceberValor_Parcela.Value      := TabParcelasValor.Value;
                                    PagarReceberMulta.Value              := mMulta;
                                    PagarReceberJuros.Value              := mJuros;
                                    PagarReceberDesconto.Value           := mDesconto;
                                    PagarReceberValor_Total.Value        := mValor_Total;
                                    PagarReceberValor_Operacao.Value     := mValor_Operacao;
                                    PagarReceberFornecedor.Value         := mFornecedor;
                                    PagarReceberFornecedor_Banco.Value   := mFornecedor_Banco;
                                    PagarReceberFornecedor_Agencia.Value := mFornecedor_Agencia;
                                    PagarReceberFornecedor_Conta.Value   := mFornecedor_Conta;
                                    PagarReceberCliente.Value            := mCliente;
                                    PagarReceberOrgao.Value              := mOrgao;
                                    PagarReceberBanco.Value              := mBanco;
                                    PagarReceberDocumento.Value          := mDocumento;
                                    PagarReceberNumero_Documento.Value   := mNumero_Documento;
                                    PagarReceberForma_Tipo.Value         := mForma_Tipo;
                                    PagarReceberNumero_FormaTipo.Value   := mNumero_FormaTipo;
                                    PagarReceberObservacao.Value         := mObservacao;
                                    PagarReceberProcesso.Value           := mProcesso;
                                    PagarReceberCustoConta.Value         := mCustoConta;
                                    PagarReceberCusto_Seletivo.Value     := mCustoSeletivo;
                                    PagarReceberCusto_Entrada.Value      := mCustoEntrada;
                                    PagarReceberFiscal.Value             := mFiscal;
                                    PagarReceberModalidade_Pgto.Value    := mModalidade_Pgto;
                                    PagarReceberParcela.Value            := TabParcelasParcela.Value;
                                    PagarReceberNivel.Value              := mNivel;
                                    PagarReceberTipo_Nota.Value          := 'FN';
                       PagarReceber.Post;
                       tNumero.Close;
                       TabParcelas.Next;
                 End;

                 // Apaga as parcelas da tabela temporaria.
                 TabParcelas.SQL.Clear;
                 TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
//                 TabParcelas.ParamByName('pRegistro').AsString := Trim(mNumero_Documento)+Trim(InttoStr(mFornecedor));
                 TabParcelas.ParamByName('pRegistro').AsString := mParcela;
                 TabParcelas.Execute;
              End;
           End;
      End;
      Screen.Cursor := crDefault;
      Close;
end;

procedure TFinanceiro_LancamentoNovo.cClassificacaoExit(Sender: TObject);
begin
      If (ActiveControl.Name <> 'bCancelar') and (ActiveControl.Name <> 'bSalvar') then begin
         With Dados, dmContab do begin
              PagarReceberTipo.Value := ClassificacaoFinanceiraTipo.Value;

              // Ajusta o campo de beneficiario.
              CampoBeneficiario;

              If CentroCustoProcesso.Value = False then PagarReceberProcesso.Clear;

              cNumeroAdiantamento.Enabled := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
              cGrade.Enabled              := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
              Historicos.Locate('Codigo', ClassificacaoFinanceiraProvisao_Historico.AsInteger, [loCaseInsensitive]);

              // Verifica o código em "Configurações" para saber se é um contrato de câmbio.
              cBeneficiario.Enabled       := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cDocumento.Enabled          := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cDataDoc.Enabled            := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cNumeroDoc.Enabled          := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cValorDocumento.Enabled     := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cNumeroAdiantamento.Enabled := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              bDadosBancarios.Enabled     := not ClassificacaoFinanceiraCambio.AsBoolean = true;


              If (RoundTo(tBaixa.FieldByName('Total_Baixado').AsCurrency, -2) >= RoundTo(PagarReceberValor_Total.AsCurrency, -2)) and (tBaixa.FieldByName('Total_Baixado').AsCurrency <> 0) then begin
                 lBaixado.Visible        := true;
                 lValorDocumento.Enabled := false;
                 lValorDesconto.Enabled  := false;
                 lValorMulta.Enabled     := false;
                 lValorJuros.Enabled     := false;
                 lValorTotal.Enabled     := false;
                 lBanco.Enabled          := false;
                 lForma.Enabled          := false;
                 lNumeroForma.Enabled    := false;
                 cValorDocumento.Enabled := false;
                 cDesconto.Enabled       := false;
                 cMulta.Enabled          := false;
                 cJuros.Enabled          := false;
                 cValorTotal.Enabled     := false;
                 cBanco.Enabled          := false;
                 cFormaPagamento.Enabled := false;
                 cNumeroForma.Enabled    := false;
              End;

              If ClassificacaoFinanceiraCambio.AsBoolean = true then begin
                 Fornecedores.SQL.Clear;
                 Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Pais <> 1058) ORDER BY Nome');
                 Fornecedores.Open;
             
                 Financeiro_RelacaoContratos := TFinanceiro_RelacaoContratos.Create(Self);
                 Financeiro_RelacaoContratos.Caption := Caption;
                 Financeiro_RelacaoContratos.ShowModal;
              end else begin
                 Fornecedores.SQL.Clear;
                 Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
                 Fornecedores.Open;
              End;
         End;
      End;
end;

procedure TFinanceiro_LancamentoNovo.cClassificacaoClick(Sender: TObject);
begin
      With Dados do begin
           // Ajusta o campo de beneficiario.
           CampoBeneficiario;

           cBanco.Enabled              := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           cFormaPagamento.Enabled     := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           cNumeroForma.Enabled        := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           lAdiantamento.Enabled       := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
           lBanco.Enabled              := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           lForma.Enabled              := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           lNumeroForma.Enabled        := ClassificacaoFinanceiraAdiantamento.AsBoolean or ClassificacaoFinanceiraBaixa_Automatica.AsBoolean;
           cNumeroAdiantamento.Enabled := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
           cGrade.Enabled              := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
      End;
end;

procedure TFinanceiro_LancamentoNovo.cDocumentoExit(Sender: TObject);
begin
      // Ajusta o campo de beneficiario.
      CampoBeneficiario;
end;

procedure TFinanceiro_LancamentoNovo.cValorParcelaChange(Sender: TObject);
begin
     CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo.cMultaChange(Sender: TObject);
begin
     CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo.cJurosChange(Sender: TObject);
begin
     CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo.cDescontoChange(Sender: TObject);
begin
     CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo.CalculaTotal;
begin
      With Dados do begin
           If (PagarReceber.State = dsInsert) or (PagarReceber.State = dsEdit) then begin
              PagarReceberValor_Total.Value := PagarReceberValor_Parcela.Value + PagarReceberMulta.Value + PagarReceberJuros.Value-PagarReceberDesconto.Value;
              If mOutroValor = False then PagarReceberValor_Operacao.Value  := PagarReceberValor_Total.Value;
           End;   
      End;
end;

procedure TFinanceiro_LancamentoNovo.cDescontoExit(Sender: TObject);
begin
      CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo.cJurosExit(Sender: TObject);
begin
      CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo.cMultaExit(Sender: TObject);
begin
      CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      If (Key = VK_ESCAPE) then begin
          bCancelar.Click;
      end;
end;

procedure TFinanceiro_LancamentoNovo.lClassificacaoClick(Sender: TObject);
begin
      Cadastro_ClassificacaoFinanceira := TCadastro_ClassificacaoFinanceira.Create(Self);
      Cadastro_ClassificacaoFinanceira.Caption := Caption;
      Cadastro_ClassificacaoFinanceira.ShowModal;

      Dados.ClassificacaoFinanceira.SQL.Clear;
      Dados.ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Titulo = 0) AND (Desativada <> 1) ORDER BY Descricao');
      Dados.ClassificacaoFinanceira.Open;
      
      dmContab.Historicos.Open;
      Dados.PagarReceberClassificacao.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_LancamentoNovo.lDocumentoClick(Sender: TObject);
begin
      Cadastro_TiposDocumentos := TCadastro_TiposDocumentos.Create(Self);
      Cadastro_TiposDocumentos.Caption := Caption;
      Cadastro_TiposDocumentos.ShowModal;
      Dados.TiposDocumentos.Open;
      Dados.PagarReceberDocumento.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_LancamentoNovo.lBeneficiarioClick(Sender: TObject);
begin
      If lBeneficiario.Caption = 'Fornecedor' then begin
         Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
         Cadastro_Fornecedores.Caption := Caption;
         Cadastro_Fornecedores.ShowModal;
         Dados.Fornecedores.Open;
         Dados.PagarReceberFornecedor.AsString := Clipboard.AsText;
      End;
      If lBeneficiario.Caption = 'Cliente' then begin
         Cadastro_Clientes := TCadastro_Clientes.Create(Self);
         Cadastro_Clientes.Caption := Caption;
         Cadastro_Clientes.ShowModal;
         Dados.Clientes.Open;
         Dados.PagarReceberCliente.AsString := Clipboard.AsText;
      End;
      If lBeneficiario.Caption = 'Orgão Público' then begin
         Cadastro_OrgaosPublicos := TCadastro_OrgaosPublicos.Create(Self);
         Cadastro_OrgaosPublicos.Caption := Caption;
         Cadastro_OrgaosPublicos.ShowModal;
         Dados.Orgaos.Open;
         Dados.PagarReceberOrgao.AsString := Clipboard.AsText;
      End;
end;

procedure TFinanceiro_LancamentoNovo.lBancoClick(Sender: TObject);
begin
      Cadastro_Bancos := TCadastro_Bancos.Create(Self);
      Cadastro_Bancos.Caption := Caption;
      Cadastro_Bancos.ShowModal;
      Dados.Bancos.Open;
end;

procedure TFinanceiro_LancamentoNovo.bDadosBancariosClick(Sender: TObject);
begin
      Financeiro_LancamentoDadosBancarios := TFinanceiro_LancamentoDadosBancarios.Create(Self);
      Financeiro_LancamentoDadosBancarios.Caption := Caption;
      Financeiro_LancamentoDadosBancarios.ShowModal;
end;

procedure TFinanceiro_LancamentoNovo.cModalidadeClick(Sender: TObject);
begin
      bParcelas.Enabled := (Dados.PagarReceber.State = dsInsert) and (cModalidade.Text <> '') and (Dados.PagarReceberValor_Documento.Value <> 0) and (Dados.PagarReceberData_Documento.AsString <> '');
end;

procedure TFinanceiro_LancamentoNovo.cModalidadeExit(Sender: TObject);
var
   mBeneficiario : String;
begin
      bParcelas.Enabled := (Dados.PagarReceber.State = dsInsert) and (cModalidade.Text <> '') and (Dados.PagarReceberValor_Documento.Value <> 0) and (Dados.PagarReceberData_Documento.AsString <> '');

      // Gerando as parcelas das duplicatas pela modalidade de pagamento.
      With Dados do begin
           If cBeneficiario.DataField = 'Fornecedor' then mBeneficiario := PagarReceberFornecedor.AsString;
           If cBeneficiario.DataField = 'Cliente'    then mBeneficiario := PagarReceberCliente.AsString;
           If cBeneficiario.DataField = 'Orgao'      then mBeneficiario := PagarReceberCliente.AsString;

           tNumero.SQL.Clear;
           tNumero.SQL.add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
           tNumero.Open;

           mParcela := InttoStr(tNumero.FieldByName('Numero').AsInteger+1)+'FN';

//         ModalidadeParcelas(PagarReceberValor_Documento.Value, 0, PagarReceberData_Documento.Value, ModalidadesPgtoNumero_Parcelas.Value, ModalidadesPgtoPrazo_Primeira.Value, ModalidadesPgtoPrazo_Demais.Value, Trim(PagarReceberNumero_Documento.AsString), mBeneficiario, ModalidadesPgtoPrazo_Dia.AsInteger);
           ModalidadeParcelas(PagarReceberValor_Documento.Value, 0, 0, PagarReceberData_Documento.Value, ModalidadesPgtoNumero_Parcelas.Value, ModalidadesPgtoPrazo_Primeira.Value, ModalidadesPgtoPrazo_Demais.Value, mParcela, '', ModalidadesPgtoPrazo_Dia.AsInteger);
           TabParcelas.First;

           PagarReceberValor_Parcela.Value   := TabParcelasValor.Value;
           PagarReceberData_Vencimento.Value := TabParcelasVencimento.Value;
      End;
end;

procedure TFinanceiro_LancamentoNovo.bParcelasClick(Sender: TObject);
begin
      Financeiro_LancamentoParcelas := TFinanceiro_LancamentoParcelas.Create(Self);
      Financeiro_LancamentoParcelas.Caption               := 'Parcelas...';
      Financeiro_LancamentoParcelas.cTotalDocumento.Value := Dados.PagarReceberValor_Documento.Value;
      Financeiro_LancamentoParcelas.ShowModal;
end;

procedure TFinanceiro_LancamentoNovo.cBeneficiarioClick(Sender: TObject);
begin
      With Dados do begin
           PagarReceberFornecedor_Banco.Value   := FornecedoresBanco_Nome.Value;
           PagarReceberFornecedor_Conta.Value   := FornecedoresBanco_Conta.Value;
           PagarReceberFornecedor_Agencia.Value := FornecedoresBanco_Agencia.Value;
      End;
end;

procedure TFinanceiro_LancamentoNovo.cDataDocExit(Sender: TObject);
begin
      bParcelas.Enabled := (Dados.PagarReceber.State = dsInsert) and (cModalidade.Text <> '') and (Dados.PagarReceberValor_Documento.Value <> 0) and (Dados.PagarReceberData_Documento.AsString <> '');
end;

procedure TFinanceiro_LancamentoNovo.StaticText2Click(Sender: TObject);
begin
      Cadastro_CentroCusto := TCadastro_CentroCusto.Create(Self);
      Cadastro_CentroCusto.Caption := Caption;
      Cadastro_CentroCusto.ShowModal;
      Dados.CentroCusto.Open;
      Dados.PagarReceberCentro_Custo.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_LancamentoNovo.cProcessoClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           If PagarReceber.State = dsEdit then begin
           tAdiantamentos.SQL.Clear;
           tAdiantamentos.SQL.Add('SELECT CAST(Fornecedor AS bigint) AS Numero,');
           tAdiantamentos.SQL.Add('       Valor_Total,');
           tAdiantamentos.SQL.Add('       Data_Documento,');
           tAdiantamentos.SQL.Add('       (SELECT Fornecedores.Nome FROM Fornecedores WHERE(Codigo = PagarReceber.Fornecedor)) AS Fornecedor_Nome,');
           tAdiantamentos.SQL.Add('       Banco,');
           tAdiantamentos.SQL.Add('       Forma_Tipo,');
           tAdiantamentos.SQL.Add('       Numero_FormaTipo,');
           tAdiantamentos.SQL.Add('       (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(Numero=PagarReceber.Numero)) AS Valor_Baixado');
           tAdiantamentos.SQL.Add('FROM   PagarReceber,');
           tAdiantamentos.SQL.Add('       ClassificacaoFinanceira');
           tAdiantamentos.SQL.Add('WHERE  (Processo = :pProcesso) AND ');
           tAdiantamentos.SQL.Add('       (ClassificacaoFinanceira.Codigo = PagarReceber.Classificacao) AND ');
           tAdiantamentos.SQL.Add('       (ClassificacaoFinanceira.Adiantamento = 1) AND ');
           tAdiantamentos.SQL.Add('ORDER  BY Numero');
           tAdiantamentos.ParamByName('pProcesso').AsString    := PagarReceberProcesso.ASString;
           tAdiantamentos.Open;
           End;
           
           tSaldoAdiantamento.SQL.Clear;
           tSaldoAdiantamento.SQL.Add('SELECT SUM(Valor_Total) AS Total_Adiantamentos');
           tSaldoAdiantamento.SQL.Add('FROM   PagarReceber,');
           tSaldoAdiantamento.SQL.Add('       ClassificacaoFinanceira');
           tSaldoAdiantamento.SQL.Add('WHERE  (Processo = :pProcesso) AND');
           tSaldoAdiantamento.SQL.Add('       (ClassificacaoFinanceira.Codigo=PagarReceber.Classificacao) AND');
           tSaldoAdiantamento.SQL.Add('       (ClassificacaoFinanceira.Adiantamento = 1)');
           tSaldoAdiantamento.ParamByName('pProcesso').AsString := PagarReceberProcesso.ASString;
           tSaldoAdiantamento.Open;
           cTotalAdiantamentos.Value := tSaldoAdiantamento.FieldbyName('Total_Adiantamentos').AsCurrency;
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_LancamentoNovo.cGradeDblClick(Sender: TObject);
begin
      With Dados do begin
           PagarReceberAdiantamento_Numero.Value := tAdiantamentos.FieldByName('Numero').AsInteger;
      End;
end;

procedure TFinanceiro_LancamentoNovo.ChecaConta(ContaD:String; ContaC:String);
begin
      mContaDebito  := '';
      mContaCredito := '';
      If (ApenasNumeros(ContaD) <> '') then mContaDebito  := Trim(ContaD);
      If (ApenasNumeros(ContaC) <> '') then mContaCredito := Trim(ContaC);

      Dados.Fornecedores.Locate('Codigo', Dados.PagarReceberFornecedor.Value, [loCaseInsensitive]);
      Dados.Clientes.Locate('Codigo', Dados.PagarReceberCliente.Value, [loCaseInsensitive]);
      Dados.Orgaos.Locate('Codigo', Dados.PagarReceberOrgao.Value, [loCaseInsensitive]);

      // Conta Debito.
      If ContaD = 'PROCESSO'     then mContaDebito  := Trim(Dados.ProcessosDOCConta_Despesas.Value);
      If ContaD = 'CLIENTE'      then mContaDebito  := Trim(Dados.ClientesConta_Ativo.AsString);
      If ContaD = 'FORNECEDOR'   then begin
         If Trim(Dados.PagarReceber.FieldByName('Fornecedor').AsString) <> '' then
            mContaDebito := Trim(Dados.FornecedoresConta.AsString)
         else
            mContaDebito := Trim(Dados.OrgaosConta.AsString);
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
         If Trim(Dados.PagarReceber.FieldByName('Fornecedor').AsString) <> '' then
            mContaCredito := Trim(Dados.FornecedoresConta.AsString)
         else
            mContaCredito := Trim(Dados.OrgaosConta.AsString);
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
end;

Function TFinanceiro_LancamentoNovo.ConverteHistorico(Historico: String):String;
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

      For i := 0 to 8 do begin
          mPos := Pos(mMacros[i], Result);
          While mPos <> 0 do begin
                If mPos <> -1 then begin
                   If i = 0 then Result := RemoveCaracter(mMacros[0], cBeneficiario.Text, Result);
//                   If i = 1 then Result := RemoveCaracter(mMacros[1], cProcesso.Text, Result);
                   If i = 2 then Result := RemoveCaracter(mMacros[2], Dados.ProcessosDocNumero_Declaracao.AsString, Result);
//                   If i = 3 then Result := RemoveCaracter(mMacros[3], cClassificacao.Text, Result);
                   If i = 4 then Result := RemoveCaracter(mMacros[4], cDocumento.Text, Result);
                   If i = 5 then Result := RemoveCaracter(mMacros[5], cNumeroDOC.Text, Result);
                   If i = 6 then Result := RemoveCaracter(mMacros[6], cDataDOC.Text, Result);
                   If i = 7 then Result := RemoveCaracter(mMacros[7], cBanco.Text, Result);
                   If i = 8 then Result := RemoveCaracter(mMacros[8], cObservacao.Lines.Text, Result);
                   mPos := Pos(mMacros[i], Result );
                End;
          End;
      End;
end;

procedure TFinanceiro_LancamentoNovo.cBeneficiarioExit(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           TiposProcesso.Locate('Codigo', ClientesModalidade_Importacao.AsInteger, [loCaseInsensitive]);
           If (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true) and (PagarReceberBanco.AsInteger = 0) then begin
              If Bancos.Locate('Nome', FornecedoresNome.AsString, [loCaseInsensitive]) then begin
                 PagarReceberBanco.Value := BancosCodigo.Value;
              End;   
           End;

           tAdiantamentos.SQL.Clear;
           tAdiantamentos.SQL.Add('SELECT CAST(Fornecedor AS bigint) AS Numero,');
           tAdiantamentos.SQL.Add('       Valor_Total,');
           tAdiantamentos.SQL.Add('       Data_Documento,');
           tAdiantamentos.SQL.Add('       (SELECT Fornecedores.Nome FROM Fornecedores WHERE(Codigo = PagarReceber.Fornecedor)) AS Fornecedor_Nome,');
           tAdiantamentos.SQL.Add('       Banco,');
           tAdiantamentos.SQL.Add('       Forma_Tipo,');
           tAdiantamentos.SQL.Add('       Numero_FormaTipo,');
           tAdiantamentos.SQL.Add('       (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(Numero=PagarReceber.Numero)) AS Valor_Baixado');
           tAdiantamentos.SQL.Add('FROM   PagarReceber,');
           tAdiantamentos.SQL.Add('       ClassificacaoFinanceira,');
           tAdiantamentos.SQL.Add('       Fornecedores');
           tAdiantamentos.SQL.Add('WHERE  (Processo = :pProcesso) AND ');
           tAdiantamentos.SQL.Add('       (ClassificacaoFinanceira.Codigo=PagarReceber.Classificacao) AND ');
           tAdiantamentos.SQL.Add('       (ClassificacaoFinanceira.Adiantamento = 1) AND ');
           tAdiantamentos.SQL.Add('       (Fornecedores.Codigo = PagarReceber.Fornecedor)');
           tAdiantamentos.SQL.Add('ORDER  BY Numero');
           tAdiantamentos.ParamByName('pProcesso').AsString := PagarReceberProcesso.ASString;
           tAdiantamentos.Open;

           tSaldoAdiantamento.SQL.Clear;
           tSaldoAdiantamento.SQL.Add('SELECT SUM(Valor_Total) AS Total_Adiantamentos');
           tSaldoAdiantamento.SQL.Add('FROM   PagarReceber,');
           tSaldoAdiantamento.SQL.Add('       Fornecedores,');
           tSaldoAdiantamento.SQL.Add('       ClassificacaoFinanceira');
           tSaldoAdiantamento.SQL.Add('WHERE  (Processo = :pProcesso) AND');
           tSaldoAdiantamento.SQL.Add('       (ClassificacaoFinanceira.Codigo=PagarReceber.Classificacao) AND');
           tSaldoAdiantamento.SQL.Add('       (ClassificacaoFinanceira.Adiantamento = 1) AND ');
           tSaldoAdiantamento.SQL.Add('       (Fornecedores.Codigo = PagarReceber.Fornecedor)');
           tSaldoAdiantamento.ParamByName('pProcesso').AsString := PagarReceberProcesso.ASString;
           tSaldoAdiantamento.Open;
           cTotalAdiantamentos.Value := tSaldoAdiantamento.FieldbyName('Total_Adiantamentos').AsCurrency;
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_LancamentoNovo.CampoBeneficiario;
begin
      With Dados do begin
           If (ClassificacaoFinanceiraTipo.Value = 'P') then begin
//              cTipo.Text := 'PAGAMENTO';
              If (TiposDocumentosTributo.Value = False) then begin
                 If ClassificacaoFinanceiraDevolucao.AsBoolean = false then begin
                    lBeneficiario.Caption    := 'Fornecedor';
                    cBeneficiario.DataField  := 'Fornecedor';
                    cBeneficiario.ListField  := 'Codigo;Nome';
                    cBeneficiario.ListSource := Dados.dsFornecedores;
                 end else begin
                    lBeneficiario.Caption    := 'Cliente';
                    cBeneficiario.DataField  := 'Cliente';
                    cBeneficiario.ListField  := 'Codigo;Nome';
                    cBeneficiario.ListSource := Dados.dsClientes;
                 End;
              end else begin
                 lBeneficiario.Caption    := 'Orgão Público';
                 cBeneficiario.DataField  := 'Orgao';
                 cBeneficiario.ListField  := 'Codigo;Nome';
                 cBeneficiario.ListSource := Dados.dsOrgaos;
              End;
           End;
           If (ClassificacaoFinanceiraTipo.Value = 'R') then begin
              If ClassificacaoFinanceiraDevolucao.AsBoolean = false then begin
//                 cTipo.Text               := 'RECEBIMENTO';
                 lBeneficiario.Caption    := 'Cliente';
                 cBeneficiario.DataField  := 'Cliente';
                 cBeneficiario.ListSource := Dados.dsClientes;
                 cBeneficiario.ListField  := 'Codigo;Nome';
              end else begin
//                 cTipo.Text               := 'RECEBIMENTO';
                 lBeneficiario.Caption    := 'Fornecedor';
                 cBeneficiario.DataField  := 'Fornecedor';
                 cBeneficiario.ListField  := 'Codigo;Nome';
                 cBeneficiario.ListSource := Dados.dsFornecedores;
              End;
           End;
      End;
end;

procedure TFinanceiro_LancamentoNovo.bPagamentoClick(Sender: TObject);
begin
      If Financeiro_Lista.tPagarReceber.State = dsInsert then begin
         Randomize;
         mNumero := Random(10000);
      end else begin
         mNumero := Financeiro_Lista.tPagarReceber.FieldByName('Numero').AsInteger;
      End;
      Financeiro_LancamentoDesdobrar := TFinanceiro_LancamentoDesdobrar.Create(Self);
      Financeiro_LancamentoDesdobrar.Caption := Caption;
      Financeiro_LancamentoDesdobrar.mTipo   := 'P';
      Financeiro_LancamentoDesdobrar.ShowModal;

      tTotal.SQL.Clear;
      tTotal.SQL.Add('SELECT SUM(Valor) AS Total FROM Desdobramento WHERE(Numero = :pNumero)');
      tTotal.ParamByName('pNumero').AsInteger := Dados.PagarReceberNumero.AsInteger;
      tTotal.Open;
      cTotalDesdobramentos.Value := tTotal.FieldByName('Total').AsCurrency;
end;

procedure TFinanceiro_LancamentoNovo.bRecebimentoClick(Sender: TObject);
begin
      If Dados.PagarReceber.State = dsInsert then begin
         Randomize;
         mNumero := Random(10000);
      end else begin
         mNumero := Dados.PagarReceberNumero.AsInteger;
      End;
      
      Financeiro_LancamentoDesdobrar := TFinanceiro_LancamentoDesdobrar.Create(Self);
      Financeiro_LancamentoDesdobrar.Caption := Caption;
      Financeiro_LancamentoDesdobrar.mTipo   := 'R';
      Financeiro_LancamentoDesdobrar.ShowModal;
end;

procedure TFinanceiro_LancamentoNovo.cTotalDesdobramentosChange(Sender: TObject);
begin
      Panel3.Enabled  := cTotalDesdobramentos.Value > 0;
      bSalvar.Enabled := cTotalDesdobramentos.Value > 0;
end;

End.

