unit frmFinanceiro_LancamentoNovo2;
                                                
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ComCtrls,DBCtrls, Vcl.ExtCtrls, RXCtrls,
  RXDBCtrl, Mask, Funcoes,Buttons, DBGrids, ClipBrd, Math, DateUtils, RxLookup,
  Grids, RxCurrEdit, RxToolEdit, MemDS;

type
  TFinanceiro_LancamentoNovo2 = class(TForm)
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
    lPercentualDesc: TLabel;
    lPercentualJuros: TLabel;
    lPercentualMulta: TLabel;
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
    cNFRef: TDBEdit;
    lNFRef: TStaticText;
    cBanco: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    cDataBaixa: TDateEdit;
    lDataBaixa: TStaticText;
    cDataRef: TDateEdit;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    gParcelas: TRxDBGrid;
    StaticText7: TStaticText;
    cTotalDesdobramentos: TCurrencyEdit;
    bRecebimento: TButton;
    bPagamento: TButton;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    Image1: TImage;
    Image2: TImage;
    procedure bCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lModalidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure cClassificacaoExit(Sender: TObject);
    procedure cDocumentoExit(Sender: TObject);
    procedure cValorParcelaChange(Sender: TObject);
    procedure cMultaChange(Sender: TObject);
    procedure cJurosChange(Sender: TObject);
    procedure cDescontoChange(Sender: TObject);
    procedure CalculaTotal;
    procedure cValorDocumentoChange(Sender: TObject);
    procedure cValorParcelaExit(Sender: TObject);
    procedure cDescontoExit(Sender: TObject);
    procedure cJurosExit(Sender: TObject);
    procedure cMultaExit(Sender: TObject);
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
    procedure cClassificacaoChange(Sender: TObject);
    procedure cVencimentoChange(Sender: TObject);
    procedure cValorDocumentoEnter(Sender: TObject);
    procedure cDataDocEnter(Sender: TObject);
    procedure cDataRefExit(Sender: TObject);
    procedure bPagamentoClick(Sender: TObject);
    procedure bRecebimentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mOutroValor   : Boolean;
    mValorAnterior: Currency;
    mTipo,
    mTipoAntes,
    mDataAnterior,
    mContaDebito,
    mContaCredito,
    mNumeroDOC,
    mParcela:String;
    mValoresIguais: Boolean;
    mDataDOC: TDate;
    mNumero : Integer;
  end;

var
  Financeiro_LancamentoNovo2: TFinanceiro_LancamentoNovo2;

implementation

Uses frmDados, frmCadastro_ClassificacaoFinanceira, frmCadastro_CentroCusto,frmCadastro_ModalidadesPagamento, frmCadastro_TiposDocumentos, frmDMContab, frmCadastro_Fornecedores,
     frmCadastro_Clientes, frmCadastro_OrgaosPublicos, frmCadastro_Bancos, frmFinanceiro_LancamentoDadosBancarios, frmFinanceiro_LancamentoParcelas, 
     frmMenu_Principal, frmFinanceiro_RelacaoContratos, frmFinanceiro_Lista, frmFinanceiro_LancamentoDesdobrar, frmDMFiscal;

{$R *.dfm}

procedure TFinanceiro_LancamentoNovo2.bCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_LancamentoNovo2.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmContab do Begin
           mNumeroDOC                := PagarReceberNumero_Documento.AsString;
           cModalidade.Enabled       := PagarReceber.State = dsInsert;
           lModalidade.Enabled       := PagarReceber.State = dsInsert;
           mTipoAntes                := PagarReceberTipo.AsString;
           PagarReceberEmpresa.Value := Menu_Principal.mEmpresa;
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

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
           Bancos.Open;

           cProcessoClick(Self);

           ClassificacaoFinanceira.Locate('Codigo', PagarReceberClassificacao.Value, [loCaseInsensitive]);
           TiposDocumentos.Locate('Codigo', PagarReceberDocumento.Value, [loCaseInsensitive]);
           Fornecedores.Locate('Codigo', PagarReceberFornecedor.Value, [loCaseInsensitive]);
           Clientes.Locate('Codigo', PagarReceberCliente.Value, [loCaseInsensitive]);
           TiposProcesso.Locate('Codigo', ClientesModalidade_Importacao.AsInteger, [loCaseInsensitive]);
           Orgaos.Locate('Codigo', PagarReceberOrgao.Value, [loCaseInsensitive]);

           Usuarios.Open;
           Usuarios.Locate('Matricula', Menu_Principal.mUsuarioCodigo, [loCaseinsensitive]);

           // Ajusta o campo de beneficiario.
           CampoBeneficiario;
           
           cBanco.Enabled          := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cFormaPagamento.Enabled := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cNumeroForma.Enabled    := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           lBanco.Enabled          := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           lForma.Enabled          := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           lNumeroForma.Enabled    := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cDataBaixa.Enabled      := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           lDataBaixa.Enabled      := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           lAdiantamento.Enabled   := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
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
                    Panel3.Enabled   := false;
                    bSalvar.Enabled  := false;
                    lBaixado.Visible := true;
                 end else begin
                    Panel3.Enabled   := true;
                    bSalvar.Enabled  := true;
                    lBaixado.Visible := false;
                    //cClassificacao.SetFocus;
                 End;
              end else begin
                 If tBaixa.FieldByName('Total_Baixado').AsCurrency <> 0 then begin
                    lBaixado.Visible        := true;
                    lValorDocumento.Enabled := false;
                    //lValorParcela.Enabled   := false;
                    lValorDesconto.Enabled  := false;
                    lValorMulta.Enabled     := false;
                    lValorJuros.Enabled     := false;
                    lValorTotal.Enabled     := false;
                    lBanco.Enabled          := false;
                    lForma.Enabled          := false;
                    lNumeroForma.Enabled    := false;
                    cValorDocumento.Enabled := false;
                    //cValorParcela.Enabled   := false;
                    cDesconto.Enabled       := false;
                    cMulta.Enabled          := false;
                    cJuros.Enabled          := false;
                    cValorTotal.Enabled     := false;
                    cBanco.Enabled          := false;
                    cFormaPagamento.Enabled := false;
                    cNumeroForma.Enabled    := false;
                    cDataBaixa.Enabled      := false;
                    lDataBaixa.Enabled      := false;
                 end else begin
                    Panel3.Enabled   := true;
                    bSalvar.Enabled  := true;
                    lBaixado.Visible := false;
                    //cClassificacao.SetFocus;
                 End;
              End;
           end else begin
              PagarReceberProvisorio.Value := false;
           End;

           cBeneficiarioExit(Self);
           //If Panel3.Enabled = true then cClassificacao.SetFocus;
           cProcessoClick(Self);
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_LancamentoNovo2.lModalidadeClick(Sender: TObject);
begin
      If Dados.UsuariosmnCadastro_Modalidades.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      Cadastro_ModalidadesPagamento := TCadastro_ModalidadesPagamento.Create(Self);
      Cadastro_ModalidadesPagamento.Caption := Caption;
      Cadastro_ModalidadesPagamento.ShowModal;
      Dados.ModalidadesPgto.Open;
      Dados.PagarReceberModalidade_Pgto.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_LancamentoNovo2.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
      mValorAnterior := Dados.PagarReceberValor_Operacao.Value;
end;

procedure TFinanceiro_LancamentoNovo2.bSalvarClick(Sender: TObject);
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
    mFiscal            : String;
    mModalidade_Pgto   : Integer;
    mInsert            : Boolean;
    mNivel             : Integer;
begin
      With Dados, dmContab, dmFiscal do begin
           mInsert := PagarReceber.State = dsInsert;

           // Verifica todos os campos obrigatórios do lancamento.
           If (PagarReceberData_Vencimento.Value <= EmpresasFechamento_Financeiro.Value) then begin
           //If (PagarReceberData_Vencimento.Value <= EmpresasFechamento_Financeiro.Value) or (PagarReceberData_Vencimento.Value > EmpresasFechamento_FinanceiroFinal.Value) then begin
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
           If PagarReceberValor_Total.Value <= 0 then begin
              MessageDlg('Conteúdo de campo inválido!'+#13+#13+'O valor total do título não pode ser menor ou igual a zero.', mtError, [mbOK], 0);
              //cValorParcela.SetFocus;
              Abort;
           End;
           {
           If PagarReceberValor_Parcela.Value = 0 then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o valor da parcela.', mtError, [mbOK], 0);
              cValorParcela.SetFocus;
              Abort;
           End;
           }
           {
           If (Financeiro_Lista.mOperacional = true) and (Trim(PagarReceberProcesso.AsString) = '') then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'Para usuarios do operacional é necessário informar o número do processo.', mtError, [mbOK], 0);
              //cProcesso.SetFocus;
              Abort;
           End;
           }
           If (ClassificacaoFinanceiraProcesso_Obrigatorio.AsBoolean = true) and (Trim(PagarReceberProcesso.AsString) = '') then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o nº do processo para esta classificação.', mtError, [mbOK], 0);
              //cProcesso.SetFocus;
              Abort;
           End;
           //Se a classificação é de baixa automática, verifique se a data da baixa foi informada.
           //If (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true) and (ClassificacaoFinanceiraAdiantamento.AsBoolean = false) and (PagarReceberAdiantamento_Numero.AsInteger = 0) and (Trim(cBanco.Text) <> '') then begin
           If (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true) and (PagarReceberAdiantamento_Numero.AsInteger = 0) and (Trim(cBanco.Text) <> '') then begin
              If DataLimpa(cDataBaixa.Text) then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a data da baixa.', mtError, [mbOK], 0);
                 cDataBaixa.SetFocus;
                 Abort;
              End;
           End;
           // Verifica se a data da baixa esta dentro de período já fechado.
           If (not DataLimpa(cDataBaixa.Text)) and ((cDataBaixa.Date <= EmpresasFechamento_Financeiro.AsDateTime) or (cDataBaixa.Date > EmpresasFechamento_Financeiro.AsDateTime)) then begin
              MessageDlg('Data inválida!'+#13+#13+'A data da baixa esta dentro de um período já fechado.', mtError, [mbOK], 0);
              cDataBaixa.SetFocus;
              Abort;
           End;

           // Verifica se o número da nota fiscal existe.
           If (cNFRef.Visible = true) and (Trim(PagarReceberFiscal.AsString) <> '') then begin
              tExiste.SQL.Clear;
              tExiste.SQL.Add('SELECT Data_Emissao, Numero FROM NotasFiscais WHERE(Data_Emissao = :pData) AND (Numero = :pNota)');
              tExiste.ParamByName('pData').AsDate    := cDataDoc.Date;
              tExiste.ParamByName('pNota').AsInteger := PagarReceberFiscal.AsInteger;
              tExiste.Open;
              If tExiste.RecordCount = 0 then MessageDlg('Número da "Nota Fiscal" de referência não encontrado na data de emissão.', mtError, [mbOK], 0)
           End;

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
           PagarReceberEmprestimo.Value     := false;

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

           // Em caso de duplicata procura a duplicata na "tabela de duplicatas" e coloca o valor do desconto.
           If Trim(PagarReceberDocumento.AsString) = 'DUPL' then begin
              Duplicatas.SQL.Clear;
              Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE(Duplicata = :pNumero) AND (Data_Vencimento = :pData)' );
              Duplicatas.ParamByName('pNumero').AsString := PagarReceberNumero_Documento.AsString;
              Duplicatas.ParamByName('pData').AsDate     := PagarReceberData_Vencimento.AsDateTime;
              Duplicatas.Open;

              If Duplicatas.RecordCount > 0 then begin
                 Duplicatas.Edit;
                            DuplicatasDesconto.Value := PagarReceberDesconto.Value;
                 Duplicatas.Post;           
              End;
           End;

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
                                       
                                       If DataLimpa(cDataBaixa.Text) = false then
                                          PagarReceberBaixasData.Value := cDataBaixa.Date
                                       else
                                          PagarReceberBaixasData.Value := PagarReceberData_Vencimento.AsDateTime;

                                       PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                       PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                       PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                                       PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                       PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                       PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
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
                 tLancamento.SQL.Add('SELECT MAX(Numero) AS Numero FROM Lancamentos WHERE(YEAR(Data) = :pAno)');
                 tLancamento.ParamByName('pAno').AsInteger := YearOf(PagarReceberData_Documento.AsDateTime);
                 tLancamento.Open;

                 Lancamentos.Append;
                             LancamentosNumero.Value        := tLancamento.FieldByName('Numero').AsInteger+1;
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
                                 //PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.AsDateTime;
                                 PagarReceberBaixasData.Value                := cDataBaixa.Date;
                                 PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                 PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                 PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                                 PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                 PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                 If PagarReceberAdiantamento_Numero.AsInteger <> 0 then begin
                                    PagarReceberBaixasObservacao.Value := 'Pagamento referente a adiantamento nº '+ PagarReceberAdiantamento_Numero.AsString + ' de '+ tAdiantamentos.FieldByName('Data_Documento').AsString;
                                 End;
                                 PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
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
              If (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true) and (ClassificacaoFinanceiraAdiantamento.AsBoolean = false) and (PagarReceberAdiantamento_Numero.AsInteger = 0) and (PagarReceberBanco.AsInteger <> 0) then begin

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
                                    //PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.AsDateTime;
                                    PagarReceberBaixasData.Value                := cDataBaixa.Date;
                                    PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                    PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                    PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                                    PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                    PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                    If PagarReceberAdiantamento_Numero.AsInteger <> 0 then begin
                                       PagarReceberBaixasObservacao.Value := 'Pagamento referente a adiantamento nº '+ PagarReceberAdiantamento_Numero.AsString + ' de '+ tAdiantamentos.FieldByName('Data_Documento').AsString;
                                    End;
                                    PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
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
              mFiscal             := PagarReceberFiscal.Value;
              mModalidade_Pgto    := PagarReceberModalidade_Pgto.Value;
              mNivel              := PagarReceberNivel.Value;

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
                                    PagarReceberFiscal.Value             := mFiscal;
                                    PagarReceberModalidade_Pgto.Value    := mModalidade_Pgto;
                                    PagarReceberParcela.Value            := TabParcelasParcela.Value;
                                    PagarReceberNivel.Value              := mNivel;
                                    PagarReceberTipo_Nota.Value          := 'FN';
                                    PagarReceberEmprestimo.Value         := false;
                       PagarReceber.Post;
                       tNumero.Close;
                       TabParcelas.Next;
                 End;
              End;
           End;
           // Apaga as parcelas da tabela temporaria.
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
           TabParcelas.ParamByName('pRegistro').AsString := mParcela;
           TabParcelas.Execute;
      End;
      Screen.Cursor := crDefault;
      Close;
end;

procedure TFinanceiro_LancamentoNovo2.cClassificacaoExit(Sender: TObject);
begin
      If (ActiveControl.Name <> 'bCancelar') and (ActiveControl.Name <> 'bSalvar') then begin
         With Dados, dmContab do begin
              ProcessosDOC.SQL.Clear;
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(ISNULL(Desativado, 0) <> 1) ');
              If ClassificacaoFinanceiraModalidade_Importacao.AsInteger > 0 then begin
                 ProcessosDOC.SQL.Add('AND (Modalidade_Importacao = :pModalidade)');
                 ProcessosDOC.ParamByName('pModalidade').AsInteger := ClassificacaoFinanceiraModalidade_Importacao.AsInteger;
              End;
              If ConfiguracaoBloquear_ProcessoFechado.AsBoolean = true then begin
                 ProcessosDOC.SQL.Add(' AND (Processo_Fechamento IS NULL)');
              End;   
              ProcessosDOC.SQL.Add('ORDER BY Processo');
              ProcessosDOC.Open;

              PagarReceberTipo.Value := ClassificacaoFinanceiraTipo.Value;

              // Ajusta o campo de beneficiario.
              CampoBeneficiario;

              //If (Trim(cCentroCusto.Text) <> '') and (CentroCustoProcesso.Value = False) then PagarReceberProcesso.Clear;

              cNumeroAdiantamento.Enabled := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
              cGrade.Enabled              := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
              Historicos.Locate('Codigo', ClassificacaoFinanceiraProvisao_Historico.AsInteger, [loCaseInsensitive]);

              // Verifica o código em "Configurações" para saber se é um contrato de câmbio.
              cDocumento.Enabled          := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cDataDoc.Enabled            := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cNumeroDoc.Enabled          := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cValorDocumento.Enabled     := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cNumeroAdiantamento.Enabled := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              bDadosBancarios.Enabled     := not ClassificacaoFinanceiraCambio.AsBoolean = true;

              If (RoundTo(tBaixa.FieldByName('Total_Baixado').AsCurrency, -2) >= RoundTo(PagarReceberValor_Total.AsCurrency, -2)) and (tBaixa.FieldByName('Total_Baixado').AsCurrency <> 0) then begin
                 lBaixado.Visible        := true;
                 lValorDocumento.Enabled := false;
                 //lValorParcela.Enabled   := false;
                 lValorDesconto.Enabled  := false;
                 lValorMulta.Enabled     := false;
                 lValorJuros.Enabled     := false;
                 lValorTotal.Enabled     := false;
                 lBanco.Enabled          := false;
                 lForma.Enabled          := false;
                 lNumeroForma.Enabled    := false;
                 cValorDocumento.Enabled := false;
                 //cValorParcela.Enabled   := false;
                 cDesconto.Enabled       := false;
                 cMulta.Enabled          := false;
                 cJuros.Enabled          := false;
                 cValorTotal.Enabled     := false;
                 cBanco.Enabled          := false;
                 cFormaPagamento.Enabled := false;
                 cNumeroForma.Enabled    := false;
                 cDataBaixa.Enabled      := false;
                 lDataBaixa.Enabled      := false;
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

              lNFRef.Visible   := ClassificacaoFinanceiraNota_Referencia.Value;
              cNFRef.Visible   := ClassificacaoFinanceiraNota_Referencia.Value;
              cDataRef.Visible := ClassificacaoFinanceiraNota_Referencia.Value;
         End;
      End;
end;

procedure TFinanceiro_LancamentoNovo2.cDocumentoExit(Sender: TObject);
begin
      // Ajusta o campo de beneficiario.
      CampoBeneficiario;
end;

procedure TFinanceiro_LancamentoNovo2.cValorParcelaChange(Sender: TObject);
begin
     CalculaTotal;
     mValoresIguais := false;
     //If cValorParcela.text = cValorDocumento.Text then mValoresIguais := true;
end;

procedure TFinanceiro_LancamentoNovo2.cMultaChange(Sender: TObject);
begin
     CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo2.cJurosChange(Sender: TObject);
begin
     CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo2.cDescontoChange(Sender: TObject);
begin
     CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo2.CalculaTotal;
begin
      With Dados do begin
           If (PagarReceber.State = dsInsert) or (PagarReceber.State = dsEdit) then begin
              PagarReceberValor_Total.Value := PagarReceberValor_Parcela.Value + PagarReceberMulta.Value + PagarReceberJuros.Value-(PagarReceberDesconto.Value+PagarReceberDesconto_Liquidacao.Value);
              If mOutroValor = False then PagarReceberValor_Operacao
              .Value  := PagarReceberValor_Total.Value;
           End;   
      End;
end;

procedure TFinanceiro_LancamentoNovo2.cValorDocumentoChange(Sender: TObject);
begin
      With Dados do begin
           If (PagarReceber.State = dsInsert) or (PagarReceber.State = dsEdit) then begin
              If mValoresIguais = true then begin
                 PagarReceberValor_Parcela.Value := PagarReceberValor_Documento.Value;
                 //cValorParcela.Text              := cValorDocumento.Text;
              End;   
           End;
           bParcelas.Enabled := (PagarReceber.State = dsInsert) and (cModalidade.Text <> '') and (PagarReceberValor_Documento.Value <> 0) and (PagarReceberData_Documento.AsString <> '');
           CalculaTotal;
      End;
end;

procedure TFinanceiro_LancamentoNovo2.cValorParcelaExit(Sender: TObject);
begin
      With Dados do begin
           If RoundTo(PagarReceberValor_Parcela.Value, -4) > RoundTo(PagarReceberValor_Documento.Value, -4) then begin
              MessageDlg('O valor da parcela não pode ser maior do que o valor do documento.', mtError, [mbOK], 0);
              //cValorParcela.SetFocus;
           End;
           If PagarReceberValor_Parcela.Value < 0 then PagarReceberValor_Parcela.Value := PagarReceberValor_Parcela.Value *-1;
           If PagarReceberValor_Documento.Value <> 0 then begin
              //lPercentualParcela.Caption := PadR( FormatFloat('##0.00%', (PagarReceberValor_Parcela.Value / PagarReceberValor_Documento.Value)*100), 7 );
              //lPercentualParcela.Visible := PagarReceberValor_Parcela.Value <> 0;
           End;
      End;
      CalculaTotal;
end;

procedure TFinanceiro_LancamentoNovo2.cDescontoExit(Sender: TObject);
begin
      CalculaTotal;
      With Dados do begin
           If PagarReceberValor_Parcela.Value <> 0 then begin
              lPercentualDesc.Caption := PadR( FormatFloat('##0.00%', (PagarReceberDesconto.Value / PagarReceberValor_Parcela.Value)*100), 7 );
              lPercentualDesc.Visible := PagarReceberDesconto.Value <> 0;
           End;
      End;
end;

procedure TFinanceiro_LancamentoNovo2.cJurosExit(Sender: TObject);
begin
      CalculaTotal;
      With Dados do begin
           If PagarReceberValor_Parcela.Value <> 0 then begin
              lPercentualJuros.Caption := PadR( FormatFloat('##0.00%', (PagarReceberJuros.Value / PagarReceberValor_Parcela.Value)*100), 7 );
              lPercentualJuros.Visible := PagarReceberJuros.Value <> 0;
           End;
      End;
end;

procedure TFinanceiro_LancamentoNovo2.cMultaExit(Sender: TObject);
begin
      CalculaTotal;
      With Dados do begin
           If PagarReceberValor_Parcela.Value <> 0 then begin
              lPercentualMulta.Caption := PadR( FormatFloat('##0.00%', (PagarReceberMulta.Value / PagarReceberValor_Parcela.Value)*100), 7 );
              lPercentualMulta.Visible := PagarReceberMulta.Value <> 0;
           End;
      End;
end;

procedure TFinanceiro_LancamentoNovo2.lClassificacaoClick(Sender: TObject);
begin
      If Dados.UsuariosmnCadastro_ClassificacaoFinanceira.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;

      Cadastro_ClassificacaoFinanceira := TCadastro_ClassificacaoFinanceira.Create(Self);
      Cadastro_ClassificacaoFinanceira.Caption := Caption;
      Cadastro_ClassificacaoFinanceira.ShowModal;

      Dados.ClassificacaoFinanceira.SQL.Clear;
      Dados.ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Titulo = 0) AND (Desativada <> 1) ORDER BY Descricao');
      Dados.ClassificacaoFinanceira.Open;

      dmContab.Historicos.Open;
      Dados.PagarReceberClassificacao.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_LancamentoNovo2.lDocumentoClick(Sender: TObject);
begin
      If Dados.UsuariosmnCadastro_TipoDocumentos.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      Cadastro_TiposDocumentos := TCadastro_TiposDocumentos.Create(Self);
      Cadastro_TiposDocumentos.Caption := Caption;
      Cadastro_TiposDocumentos.ShowModal;
      Dados.TiposDocumentos.Open;
      Dados.PagarReceberDocumento.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_LancamentoNovo2.lBeneficiarioClick(Sender: TObject);
begin
      If Dados.UsuariosmnCadastro_Fornecedores.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
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

procedure TFinanceiro_LancamentoNovo2.lBancoClick(Sender: TObject);
begin
      If Dados.UsuariosmnCadastro_Bancos.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      Cadastro_Bancos := TCadastro_Bancos.Create(Self);
      Cadastro_Bancos.Caption := Caption;
      Cadastro_Bancos.ShowModal;
      Dados.Bancos.Open;
end;

procedure TFinanceiro_LancamentoNovo2.bDadosBancariosClick(Sender: TObject);
begin
      Financeiro_LancamentoDadosBancarios := TFinanceiro_LancamentoDadosBancarios.Create(Self);
      Financeiro_LancamentoDadosBancarios.Caption := Caption;
      Financeiro_LancamentoDadosBancarios.ShowModal;
end;

procedure TFinanceiro_LancamentoNovo2.cModalidadeClick(Sender: TObject);
begin
      bParcelas.Enabled := (Dados.PagarReceber.State = dsInsert) and (cModalidade.Text <> '') and (Dados.PagarReceberValor_Documento.Value <> 0) and (Dados.PagarReceberData_Documento.AsString <> '');
end;

procedure TFinanceiro_LancamentoNovo2.cModalidadeExit(Sender: TObject);
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

          ModalidadeParcelas(PagarReceberValor_Documento.Value, 0, 0, PagarReceberData_Documento.Value, ModalidadesPgtoNumero_Parcelas.Value, ModalidadesPgtoPrazo_Primeira.Value, ModalidadesPgtoPrazo_Demais.Value, mParcela, '', ModalidadesPgtoPrazo_Dia.AsInteger);
          TabParcelas.First;

          If PagarReceberValor_Parcela.AsFloat = 0 then PagarReceberValor_Parcela.Value := TabParcelasValor.Value;
          If (Trim(cModalidade.Text) <> '') and (ModalidadesPgtoNumero_Parcelas.AsInteger = 1) then begin
             PagarReceberData_Vencimento.Value := TabParcelasVencimento.Value;
          End;
     End;
end;

procedure TFinanceiro_LancamentoNovo2.bParcelasClick(Sender: TObject);
begin
      Financeiro_LancamentoParcelas := TFinanceiro_LancamentoParcelas.Create(Self);
      Financeiro_LancamentoParcelas.Caption               := 'Parcelas...';
      Financeiro_LancamentoParcelas.cTotalDocumento.Value := Dados.PagarReceberValor_Documento.Value;
      Financeiro_LancamentoParcelas.ShowModal;
end;

procedure TFinanceiro_LancamentoNovo2.cBeneficiarioClick(Sender: TObject);
begin
      With Dados do begin
           PagarReceberFornecedor_Banco.Value   := FornecedoresBanco_Nome.Value;
           PagarReceberFornecedor_Conta.Value   := FornecedoresBanco_Conta.Value;
           PagarReceberFornecedor_Agencia.Value := FornecedoresBanco_Agencia.Value;
      End;
end;

procedure TFinanceiro_LancamentoNovo2.cDataDocExit(Sender: TObject);
begin
      With Dados do begin
           bParcelas.Enabled := (PagarReceber.State = dsInsert) and (cModalidade.Text <> '') and (PagarReceberValor_Documento.Value <> 0) and (PagarReceberData_Documento.AsString <> '');

           If DataLimpa(PagarReceberData_Vencimento.AsString) or (PagarReceberData_Vencimento.Value = mDataDOC) then begin
              PagarReceberData_Vencimento.Value := PagarReceberData_Documento.Value; 
           End;
      End;
end;

procedure TFinanceiro_LancamentoNovo2.StaticText2Click(Sender: TObject);
begin
      If Dados.UsuariosmnCadastro_CentroCusto.AsBoolean = false then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      Cadastro_CentroCusto := TCadastro_CentroCusto.Create(Self);
      Cadastro_CentroCusto.Caption := Caption;
      Cadastro_CentroCusto.ShowModal;
      Dados.CentroCusto.Open;
      Dados.PagarReceberCentro_Custo.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_LancamentoNovo2.cProcessoClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           tAdiantamentos.SQL.Clear;
           tAdiantamentos.SQL.Add('SELECT CAST(Fornecedor AS bigint) AS Numero,');
           tAdiantamentos.SQL.Add('       Valor_Total,');
           tAdiantamentos.SQL.Add('       Data_Documento,');
           tAdiantamentos.SQL.Add('       (SELECT Fornecedores.Nome FROM Fornecedores WHERE(Codigo = PagarReceber.Fornecedor)) AS Fornecedor_Nome,');
           tAdiantamentos.SQL.Add('       Banco,');
           tAdiantamentos.SQL.Add('       Forma_Tipo,');
           tAdiantamentos.SQL.Add('       Numero_FormaTipo,');
           tAdiantamentos.SQL.Add('       (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(Numero=PagarReceber.Numero)) AS Valor_Baixado');
           tAdiantamentos.SQL.Add('FROM   PagarReceber');
           tAdiantamentos.SQL.Add('WHERE  (Processo = :pProcesso)');
           If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
              tAdiantamentos.SQL.Add('       AND (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1')
           else
              tAdiantamentos.SQL.Add('       AND (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1');
           tAdiantamentos.SQL.Add('ORDER  BY Numero');
           tAdiantamentos.ParamByName('pProcesso').AsString := PagarReceberProcesso.AsString;
           //tAdiantamentos.SQL.SaveToFile('c:\temp\Adiantamentos.SQL');
           tAdiantamentos.Open;
           
           tSaldoAdiantamento.SQL.Clear;
           tSaldoAdiantamento.SQL.Add('SELECT SUM(Valor_Total) AS Total_Adiantamentos');
           tSaldoAdiantamento.SQL.Add('FROM   PagarReceber');
           tSaldoAdiantamento.SQL.Add('WHERE  (Processo = :pProcesso)');
           If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
              tSaldoAdiantamento.SQL.Add('  AND  (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1')
           else
              tSaldoAdiantamento.SQL.Add('  AND  (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1');

           tSaldoAdiantamento.Open;
           cTotalAdiantamentos.Value := tSaldoAdiantamento.FieldbyName('Total_Adiantamentos').AsCurrency;
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_LancamentoNovo2.cGradeDblClick(Sender: TObject);
begin
      With Dados do begin
           PagarReceberAdiantamento_Numero.Value := tAdiantamentos.FieldByName('Numero').AsInteger;
      End;
end;

procedure TFinanceiro_LancamentoNovo2.ChecaConta(ContaD:String; ContaC:String);
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

Function TFinanceiro_LancamentoNovo2.ConverteHistorico(Historico: String):String;
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
                   //If i = 1 then Result := RemoveCaracter(mMacros[1], cProcesso.Text, Result);
                   If i = 2 then Result := RemoveCaracter(mMacros[2], Dados.ProcessosDocNumero_Declaracao.AsString, Result);
                   //If i = 3 then Result := RemoveCaracter(mMacros[3], cClassificacao.Text, Result);
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

procedure TFinanceiro_LancamentoNovo2.cBeneficiarioExit(Sender: TObject);
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
           tAdiantamentos.SQL.Add('       Fornecedores');
           tAdiantamentos.SQL.Add('WHERE  (Processo = :pProcesso)');
           tAdiantamentos.ParamByName('pProcesso').AsString := PagarReceberProcesso.ASString;
           tAdiantamentos.Open;
           If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
              tAdiantamentos.SQL.Add('    AND (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1')
           else
              tAdiantamentos.SQL.Add('    AND (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1');
           tAdiantamentos.SQL.Add('       AND (Fornecedores.Codigo = PagarReceber.Fornecedor)');
           tAdiantamentos.SQL.Add('ORDER  BY Numero');

           tSaldoAdiantamento.SQL.Clear;
           tSaldoAdiantamento.SQL.Add('SELECT SUM(Valor_Total) AS Total_Adiantamentos');
           tSaldoAdiantamento.SQL.Add('FROM   PagarReceber,');
           tSaldoAdiantamento.SQL.Add('       Fornecedores');
           tSaldoAdiantamento.SQL.Add('WHERE  (Processo = :pProcesso)');
           If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
              tSaldoAdiantamento.SQL.Add('  AND  (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1')
           else
              tSaldoAdiantamento.SQL.Add('  AND  (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1');

           tSaldoAdiantamento.SQL.Add('  AND  (Fornecedores.Codigo = PagarReceber.Fornecedor)');
           tSaldoAdiantamento.Open;
           cTotalAdiantamentos.Value := tSaldoAdiantamento.FieldbyName('Total_Adiantamentos').AsCurrency;
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_LancamentoNovo2.CampoBeneficiario;
begin
      With Dados do begin
           If (ClassificacaoFinanceiraTipo.Value = 'P') then begin
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
                 lBeneficiario.Caption    := 'Cliente';
                 cBeneficiario.DataField  := 'Cliente';
                 cBeneficiario.ListSource := Dados.dsClientes;
                 cBeneficiario.ListField  := 'Codigo;Nome';
              end else begin
                 lBeneficiario.Caption    := 'Fornecedor';
                 cBeneficiario.DataField  := 'Fornecedor';
                 cBeneficiario.ListField  := 'Codigo;Nome';
                 cBeneficiario.ListSource := Dados.dsFornecedores;
              End;
           End;
      End;
end;

procedure TFinanceiro_LancamentoNovo2.cClassificacaoChange(Sender: TObject);
begin
      With Dados do begin
           If ClassificacaoFinanceiraTipo.AsString <> mTipoAntes then begin
              PagarReceberCliente.Clear;
              PagarReceberFornecedor.Clear;
              PagarReceberOrgao.Clear;
              mTipoAntes := PagarReceberTipo.AsString;
              cClassificacaoExit(Self);
           End;

           // Ajusta o campo de beneficiario.
           CampoBeneficiario;

           cBanco.Enabled          := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cFormaPagamento.Enabled := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cNumeroForma.Enabled    := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           lBanco.Enabled          := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           lForma.Enabled          := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           lNumeroForma.Enabled    := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cDataBaixa.Enabled      := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           lDataBaixa.Enabled      := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);

           lAdiantamento.Enabled       := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
           cNumeroAdiantamento.Enabled := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
           cGrade.Enabled              := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
           lNFRef.Visible              := ClassificacaoFinanceiraNota_Referencia.Value;
           cNFRef.Visible              := ClassificacaoFinanceiraNota_Referencia.Value;

           If Trim(cDocumento.Text) = '' then begin
              If (ClassificacaoFinanceiraTipo.Value = 'P') then begin
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
                 If ClassificacaoFinanceiraDevolucao.AsBoolean = false then begin
                    lBeneficiario.Caption    := 'Cliente';
                    cBeneficiario.DataField  := 'Cliente';
                    cBeneficiario.ListSource := Dados.dsClientes;
                    cBeneficiario.ListField  := 'Codigo;Nome';
                 end else begin
                    lBeneficiario.Caption    := 'Fornecedor';
                    cBeneficiario.DataField  := 'Fornecedor';
                    cBeneficiario.ListField  := 'Codigo;Nome';
                    cBeneficiario.ListSource := Dados.dsFornecedores;
                 End;
              End;
           End;

           // Pega o centro de custo da tabela de tipos de processo.
           If TiposProcesso.Locate('Codigo', ClassificacaoFinanceiraModalidade_Importacao.AsInteger, [loCaseInsensitive]) = true then begin
              If (Trim(PagarReceberCentro_Custo.AsString) = '') and (Trim(TiposProcessoSISCOMEX_CentroCusto.AsString) <> '')  then begin
                 PagarReceberCentro_Custo.Value := TiposProcessoSISCOMEX_CentroCusto.AsString;
              End;
           End;

           If ClassificacaoFinanceiraProcesso_Obrigatorio.AsBoolean = false then PagarReceberProcesso.Clear;
           //cProcesso.Enabled := ClassificacaoFinanceiraProcesso_Obrigatorio.AsBoolean;
      End;
end;

procedure TFinanceiro_LancamentoNovo2.cVencimentoChange(Sender: TObject);
begin
      cDataBaixa.Date := Dados.PagarReceberData_Vencimento.AsDateTime;
end;

procedure TFinanceiro_LancamentoNovo2.cValorDocumentoEnter(Sender: TObject);
begin
      mValoresIguais := false;
      //If cValorParcela.text = cValorDocumento.Text then mValoresIguais := true;
end;

procedure TFinanceiro_LancamentoNovo2.cDataDocEnter(Sender: TObject);
begin
      mDataDOC := Dados.PagarReceberData_Documento.Value;
end;

procedure TFinanceiro_LancamentoNovo2.cDataRefExit(Sender: TObject);
begin
     // Verifica se o número da nota fiscal existe.
     If (cNFRef.Visible = true) and (Trim(Dados.PagarReceberFiscal.AsString) <> '') then begin
        tExiste.SQL.Clear;
        tExiste.SQL.Add('SELECT Data_Emissao, Numero, Valor_TotalNota, Cliente_Codigo, Processo FROM NotasFiscais WHERE(Data_Emissao = :pData) AND (Numero = :pNota) AND (Saida_Entrada = 1) AND (Cancelada <> 1)');
        tExiste.ParamByName('pData').AsDate    := cDataRef.Date;
        tExiste.ParamByName('pNota').AsInteger := Dados.PagarReceberFiscal.AsInteger;
        tExiste.Open;
        If tExiste.RecordCount > 0 then begin
           Dados.PagarReceberDocumento.Value        := 'NF';
           Dados.PagarReceberData_Documento.Value   := tExiste.FieldByName('Data_Emissao').Value;
           Dados.PagarReceberNumero_Documento.Value := tExiste.FieldByName('Numero').Value;
           Dados.PagarReceberValor_Documento.Value  := tExiste.FieldByName('Valor_TotalNota').Value;
           Dados.PagarReceberCliente.Value          := tExiste.FieldByName('Cliente_Codigo').Value;
           Dados.PagarReceberProcesso.Value         := tExiste.FieldByName('Processo').Value;

           If Dados.PagarReceberValor_Total.Value = 0 then
              Dados.PagarReceberValor_Total.Value := tExiste.FieldByName('Valor_TotalNota').Value;
        End;
     End;
end;

procedure TFinanceiro_LancamentoNovo2.bPagamentoClick(Sender: TObject);
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
      {
      tTotal.SQL.Clear;
      tTotal.SQL.Add('SELECT SUM(Valor) AS Total FROM Desdobramento WHERE(Numero = :pNumero)');
      tTotal.ParamByName('pNumero').AsInteger := Dados.PagarReceberNumero.AsInteger;
      tTotal.Open;
      cTotalDesdobramentos.Value := tTotal.FieldByName('Total').AsCurrency;
      }
end;

procedure TFinanceiro_LancamentoNovo2.bRecebimentoClick(Sender: TObject);
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

End.

