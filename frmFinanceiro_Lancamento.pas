unit frmFinanceiro_Lancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ComCtrls,
  DBCtrls, Vcl.ExtCtrls, RXCtrls, RXDBCtrl, Mask, Funcoes,Buttons, DBGrids, ClipBrd, Math, DateUtils, RxLookup, system.UITypes, Grids, RxCurrEdit, RxToolEdit, MemDS, ShellApi;

type
  TFinanceiro_Lancamento = class(TForm)
    Panel1: TPanel;
    bCancelar: TButton;
    tNumero: TMSQuery;
    bSalvar: TButton;
    tNumeroNumero: TLargeintField;
    tCodigoPlano: TMSQuery;
    tCodigoPlanoCodigo: TStringField;
    tContaPlano: TMSQuery;
    tContaPlanoConta: TStringField;
    tClientes: TMSQuery;
    tBordero: TMSQuery;
    tBorderoBordero: TIntegerField;
    dstAdiantamentos: TDataSource;
    tRegistroBaixa: TMSQuery;
    tAdiantamentos: TMSQuery;
    tAdiantamentosNumero: TLargeintField;
    tAdiantamentosValor_Total: TCurrencyField;
    tAdiantamentosData_Documento: TDateTimeField;
    tAdiantamentosBanco: TSmallintField;
    tAdiantamentosForma_Tipo: TStringField;
    tAdiantamentosNumero_FormaTipo: TStringField;
    tAdiantamentosValor_Baixado: TCurrencyField;
    tSaldoAdiantamento: TMSQuery;
    tBaixa: TMSQuery;
    lBaixado: TLabel;
    tLancamento: TMSQuery;
    tLancamentoNumero: TSmallintField;
    tExiste: TMSQuery;
    tData: TMSQuery;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    tRegistro: TMSQuery;
    tAdiantamentosTipo: TStringField;
    tAdiantamentosBeneficiario: TStringField;
    tAdiantamentosAdiantamento_Numero: TSmallintField;
    Navios: TMSQuery;
    dsNavios: TDataSource;
    NaviosRegistro: TIntegerField;
    NaviosOrdem: TIntegerField;
    NaviosProcesso: TStringField;
    NaviosNavio: TStringField;
    Filiais: TMSQuery;
    dsFiliais: TDataSource;
    FiliaisFilial: TSmallintField;
    FiliaisNome: TStringField;
    FiliaisCNPJ: TStringField;
    tTmp: TMSQuery;
    FiliaisEstado: TStringField;
    tProcessos: TMSQuery;
    dstProcessos: TDataSource;
    tProcessosProcesso: TStringField;
    tProcessosNumero_Declaracao: TStringField;
    tProcessosNavio_Ordem: TIntegerField;
    tProcessosNavio_Nome: TStringField;
    FiliaisBanco_Dados: TStringField;
    tAdiantamentosCNPJ: TStringField;
    tBeneAdiant: TMSQuery;
    dstBeneAdiant: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    lPercentualDesc: TLabel;
    lPercentualJuros: TLabel;
    lPercentualMulta: TLabel;
    lPercentualParcela: TLabel;
    bPesqCla: TSpeedButton;
    bPesqBanco: TSpeedButton;
    bPesqNav: TSpeedButton;
    lPercentualBaixa: TLabel;
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
    lClassificacao: TStaticText;
    lBeneficiario: TStaticText;
    lVencimento: TStaticText;
    cNumeroDOC: TDBEdit;
    lProcesso: TStaticText;
    lDataProvisao: TStaticText;
    lDocumento: TStaticText;
    lNumeroDOC: TStaticText;
    lDataPrevisao: TStaticText;
    cProcesso: TDBLookupComboBox;
    cDataPrevisao: TDBDateEdit;
    cDataDoc: TDBDateEdit;
    cVencimento: TDBDateEdit;
    cBeneficiario: TDBLookupComboBox;
    cDocumento: TDBLookupComboBox;
    bDadosBancarios: TButton;
    lModalidade: TStaticText;
    cModalidade: TDBLookupComboBox;
    bParcelas: TButton;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    cTotalBaixas: TCurrencyEdit;
    cSaldo: TCurrencyEdit;
    StaticText5: TStaticText;
    lAdiantamento: TStaticText;
    cNumeroForma: TDBEdit;
    lNumeroForma: TStaticText;
    lBanco: TStaticText;
    lForma: TStaticText;
    cFormaPagamento: TDBComboBox;
    cGrade: TDBGrid;
    StaticText3: TStaticText;
    StaticText6: TStaticText;
    cAdEfe: TCurrencyEdit;
    lValorParcela: TStaticText;
    cValorParcela: TDBEdit;
    cNFRef: TDBEdit;
    lNFRef: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    cCentroCusto: TRxDBLookupCombo;
    cBanco: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    cDataBaixa: TDateEdit;
    lDataBaixa: TStaticText;
    cDataRef: TDateEdit;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    StaticText7: TStaticText;
    cAdRec: TCurrencyEdit;
    cNumeroAdiant: TDBLookupComboBox;
    DBCheckBox4: TDBCheckBox;
    StaticText8: TStaticText;
    cNavio: TDBLookupComboBox;
    StaticText9: TStaticText;
    cCodBarras: TDBEdit;
    StaticText10: TStaticText;
    cFilial: TRxDBLookupCombo;
    lValorDocumento: TStaticText;
    cValorDocumento: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    StaticText11: TStaticText;
    cTaxa: TDBEdit;
    cValorME: TDBEdit;
    StaticText12: TStaticText;
    cSaldoDoc: TCurrencyEdit;
    StaticText13: TStaticText;
    cValorBaixa: TCurrencyEdit;
    Panel2: TPanel;
    bDocumento: TBitBtn;
    bRemoveDoc: TBitBtn;
    bRemoveTodos: TBitBtn;
    OpenDialog1: TOpenDialog;
    cListaDOC: TListBox;
    tTemp2: TMSQuery;
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
    procedure cBeneficiarioExit(Sender: TObject);
    procedure cCentroCustoExit(Sender: TObject);
    procedure CampoBeneficiario;
    procedure cClassificacaoChange(Sender: TObject);
    procedure cValorDocumentoEnter(Sender: TObject);
    procedure cDataDocEnter(Sender: TObject);
    procedure cDataRefExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesqClaClick(Sender: TObject);
    procedure cNumeroAdiantClick(Sender: TObject);
    procedure bPesqBancoClick(Sender: TObject);
    procedure bPesqNavClick(Sender: TObject);
    procedure cValorBaixaChange(Sender: TObject);
    procedure cNumeroAdiantExit(Sender: TObject);
    procedure bDocumentoClick(Sender: TObject);
    procedure bRemoveDocClick(Sender: TObject);
    procedure bRemoveTodosClick(Sender: TObject);
    procedure cListaDOCDblClick(Sender: TObject);
    procedure cNumeroDOCExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mOperacional
   ,mOutroValor: Boolean;
    mValorAnterior: Currency;
    mTipo,
    mTipoAntes,
    mDataAnterior,
    mContaDebito,
    mContaCredito,
    mNumeroDOC,
    mParcela,
    mFiltroClass,
    mClass: String;
    mValoresIguais: Boolean;
    mDataDOC: TDate;
    mLote: integer;
  end;

var
  Financeiro_Lancamento: TFinanceiro_Lancamento;

implementation

Uses frmDados, frmCadastro_ClassificacaoFinanceira, frmCadastro_CentroCusto,frmCadastro_ModalidadesPagamento, frmCadastro_TiposDocumentos, frmDMContab, frmCadastro_Fornecedores,
     frmCadastro_Clientes, frmCadastro_OrgaosPublicos, frmCadastro_Bancos, frmFinanceiro_LancamentoDadosBancarios, frmFinanceiro_LancamentoParcelas, frmMenu_Principal, frmFinanceiro_RelacaoContratos, 
     frmFinanceiro_Lista, frmDMFiscal, frmPesquisaGerais;

{$R *.dfm}

procedure TFinanceiro_Lancamento.bCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_Lancamento.FormShow(Sender: TObject);
var
   CompClass,CompBancos: string;
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmContab do Begin
           mNumeroDOC                := PagarReceberNumero_Documento.AsString;
           cModalidade.Enabled       := PagarReceber.State = dsInsert;
           mTipoAntes                := PagarReceberTipo.AsString;
           PagarReceberEmpresa.Value := Menu_Principal.mEmpresa;
           
           Configuracao.Open;
           
           CompClass  := iif(not ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
           CompBancos := iif(not ConfiguracaoCompartilhar_Bancos.AsBoolean       , 'Bancos'                 , 'Cybersoft_Cadastros.dbo.Bancos');

           with ClassificacaoFinanceira do begin
                sql.Clear;
                sql.Add('select *');
                sql.add('from '+CompClass);
                sql.add('where isnull(Titulo, 0) = 0');
                sql.add('and   isnull(Desativada, 0) <> 1');
                sql.add('and   isnull(Nivel, 0) <= :pNivel');
                if mFiltroClass <> '' then begin
                   sql.add('and Tipo = '+quotedstr(mFiltroClass));
                end;
                sql.add('order by Descricao');
                parambyname('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
                //sql.savetofile('c:\temp\Lancamento_Financeirao_Classificacao.sql');
                open;
           end;
           with CentroCusto do begin
                sql.Clear;
                sql.Add('select * from CentroCusto order by Descricao');
                open;
           end;
           with ModalidadesPgto do begin 
                sql.Clear;
                sql.Add('SELECT * FROM ModalidadesPagamento ORDER BY Codigo');
                Open;
           end;
           with Fornecedores do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM Fornecedores');
                Open;
           end;
           with Orgaos do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM OrgaosPublicos ORDER BY Nome');
                Open;
           end;
           with Historicos do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Codigo');
                Open;
           end;
           with TiposProcesso do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo' );
                Open;
           end;
           with Bancos do begin 
                SQL.Clear;
                SQL.Add('select * from '+CompBancos+' where isnull(Desativado, 0) = 0 order by Nome');
                Open;
           end;
           with Navios do begin
                sql.Clear;
                sql.Add('select Registro');
                sql.Add('      ,Ordem');
                sql.Add('      ,Processo');
                sql.Add('      ,Navio');
                sql.add('from  ControleNavios');
                sql.add('order by Navio');
                Open;
           end;
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
           if PagarReceber.State = dsInsert then begin
              with tTmp do begin
                   sql.Clear;
                   sql.Add('select Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where Codigo = :pCod');
                   parambyname('pCod').AsInteger := Menu_Principal.mEmpresa;
                   open;
                   PagarReceberFilial.value := fieldbyname('Numero_Filial').AsInteger;
              end;
           end;
           with tProcessos do begin
                sql.clear;
                sql.add('select Processo');
                sql.add('      ,Cliente_Nome = (select Nome from '+Filiais.fieldbyname('Banco_Dados').asstring+'.dbo.Clientes where Codigo = Cliente)');
                sql.add('      ,Numero_Declaracao = substring(Numero_Declaracao, 1, 2)+''/''+substring(Numero_Declaracao, 3, 7)+''-''+substring(Numero_Declaracao, 10, 1)');
                sql.add('      ,Navio_Ordem');
                sql.add('      ,Navio_Nome = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios where Ordem = Navio_Ordem)');
                sql.add('from '+Filiais.fieldbyname('Banco_Dados').asstring+'.dbo.ProcessosDocumentos');
                sql.add('where isnull(Desativado, 0) = 0');
                if ClassificacaoFinanceiraModalidade_Importacao.AsInteger > 0 then begin
                   sql.Add('and Modalidade_Importacao = :pModalidade');
                   parambyname('pModalidade').AsInteger := ClassificacaoFinanceiraModalidade_Importacao.AsInteger;
                end;
                if ConfiguracaoBloquear_ProcessoFechado.AsBoolean = true then begin
                   sql.add('and Processo_Fechamento is null');
                end;
                sql.add('order by Processo, Navio_Nome');
                //sql.savetofile('c:\temp\Lancamento_Financeiro_Processos.sql');
                open;
           end;
           with PagarReceberDocs do begin
                sql.clear;
                sql.Add('select * from PagarReceberDocs where Titulo = :pTitulo');
                parambyname('pTitulo').asinteger := PagarReceberNumero.asinteger;
                open;
                first;
                cListaDoc.Items.Clear;
                while not eof do begin
                    cListaDoc.Items.Add(fieldbyname('Documento').AsString);
                    next;
                end;
           end;
                    
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

           cFormaPagamento.Enabled := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cNumeroForma.Enabled    := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cDataBaixa.Enabled      := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cGrade.Enabled          := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
           cValorBaixa.Enabled     := PagarReceberAdiantamento_Numero.AsInteger > 0;
           cValorBaixa.Value       := PagarReceberValor_Parcela.AsCurrency;

           with tProcessos do begin
                sql.clear;
                sql.add('select Processo');
                sql.add('      ,Cliente_Nome = (select Nome from '+Filiais.fieldbyname('Banco_Dados').asstring+'.dbo.Clientes where Codigo = Cliente)');
                sql.add('      ,Numero_Declaracao = substring(Numero_Declaracao, 1, 2)+''/''+substring(Numero_Declaracao, 3, 7)+''-''+substring(Numero_Declaracao, 10, 1)');
                sql.add('      ,Navio_Ordem');
                sql.add('      ,Navio_Nome = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios where Ordem = Navio_Ordem)');
                sql.add('from '+Filiais.fieldbyname('Banco_Dados').asstring+'.dbo.ProcessosDocumentos');
                sql.add('where isnull(Desativado, 0) = 0');
                if ClassificacaoFinanceiraModalidade_Importacao.AsInteger > 0 then begin
                   sql.Add('and Modalidade_Importacao = :pModalidade');
                   parambyname('pModalidade').AsInteger := ClassificacaoFinanceiraModalidade_Importacao.AsInteger;
                end;
                if ConfiguracaoBloquear_ProcessoFechado.AsBoolean = true then begin
                   sql.add('and Processo_Fechamento is null');
                end;
                sql.add('order by Processo, Navio_Nome');
                //sql.savetofile('c:\temp\Lancamento_Financeiro_Processos.sql');
                open;
           end;

           with tBaixa do begin
                sql.clear;
                sql.add('select Total_Baixado = isnull(sum(Valor), 0)');
                sql.add('from PagarReceberBaixas');
                sql.add('where Numero = :pNumero');
                sql.add('and   Numero <> 0');
                paramByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
                open;
           end;
           cTotalBaixas.Value := 0;
           cSaldo.Value       := 0;
           cSaldoDoc.Value    := 0;
           if PagarReceber.state <> dsInsert then begin
              cTotalBaixas.Value := tBaixa.FieldByName('Total_Baixado').AsCurrency;
              cSaldo.Value       := PagarReceberValor_Total.Value - tBaixa.FieldByName('Total_Baixado').AsCurrency;
              cSaldoDoc.Value    := PagarReceberValor_Documento.Value - tBaixa.FieldByName('Total_Baixado').AsCurrency;

              if RoundTo(tBaixa.FieldByName('Total_Baixado').AsCurrency, -2) >= RoundTo(PagarReceberValor_Total.AsCurrency, -2) then begin
                 lBaixado.Caption := 'LANÇAMENTO BAIXADO (TOTAL)';
              end else begin
                 lBaixado.Caption := 'LANÇAMENTO BAIXADO (PARCIAL)';
              end;
           end;

           tData.SQL.Clear;
           tData.SQL.Add('SELECT MAX(Data) AS Data_Baixa');
           tData.SQL.Add('FROM PagarReceberBaixas');
           tData.SQL.Add('WHERE (Numero = :pNumero)');
           tData.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
           tData.Open;
           If tData.RecordCount = 0 then
              cDataBaixa.Date := PagarReceberData_Vencimento.AsDateTime
           else
              cDataBaixa.Date := tData.FieldByName('Data_Baixa').AsDateTime;

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
                    cFilial.SetFocus;
                 End;
              end else begin
                 If tBaixa.FieldByName('Total_Baixado').AsCurrency <> 0 then begin
                    lBaixado.Visible        := true;
                    cValorDocumento.Enabled := false;
                    cValorParcela.Enabled   := false;
                    cDesconto.Enabled       := false;
                    cMulta.Enabled          := false;
                    cJuros.Enabled          := false;
                    cValorTotal.Enabled     := false;
                    cFormaPagamento.Enabled := false;
                    cNumeroForma.Enabled    := false;
                    cDataBaixa.Enabled      := false;
                 end else begin
                    Panel3.Enabled   := true;
                    bSalvar.Enabled  := true;
                    lBaixado.Visible := false;
                    cFilial.SetFocus;
                 End;
              End;
           end else begin
              PagarReceberProvisorio.Value := false;
           End;

           cBeneficiarioExit(Self);
           If Panel3.Enabled = true then cFilial.SetFocus;

           cProcessoClick(Self);
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_Lancamento.lModalidadeClick(Sender: TObject);
begin
      if not Permissao('mnCadastro_Modalidades') then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      end;
      
      Cadastro_ModalidadesPagamento := TCadastro_ModalidadesPagamento.Create(Self);
      Cadastro_ModalidadesPagamento.Caption := Caption;
      Cadastro_ModalidadesPagamento.ShowModal;
      Dados.ModalidadesPgto.Open;
      Dados.PagarReceberModalidade_Pgto.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_Lancamento.FormCreate(Sender: TObject);
begin
      pagecontrol1.ActivePageIndex := 0;
      TabSheet2.Enabled            := Dados.PagarReceber.State = dsEdit;
      if Screen.Height <= 768 then begin
         ScaleBy(93, 100);
      end;
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
      mValorAnterior := Dados.PagarReceberValor_Operacao.Value;
end;

procedure TFinanceiro_Lancamento.bSalvarClick(Sender: TObject);
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
    mHistorico         : Integer;
    mVinculo           : integer;
begin
      With Dados, dmContab, dmFiscal do begin
           mInsert := PagarReceber.State = dsInsert;

           // Verifica todos os campos obrigatórios do lancamento.
           If trim(cFilial.Text) = '' then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a empresa.', mtError, [mbOK], 0);
              cFilial.SetFocus;
              Abort;
           End;
           If Trim(PagarReceberClassificacao.Value) = '' then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a classificação financeira.', mtError, [mbOK], 0);
              cClassificacao.SetFocus;
              Abort;
           End;
           If (PagarReceberData_Vencimento.Value <= EmpresasFechamento_Financeiro.Value) then begin
              MessageDlg('Data inválida!'+#13+#13+'A data do vencimento esta dentro de um período já fechado .', mtError, [mbOK], 0);
              cVencimento.SetFocus;
              Abort;
           End;
           If Trim(PagarReceberDocumento.Value) = '' then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o tipo do documento.', mtError, [mbOK], 0);
              cDocumento.SetFocus;
              Abort;
           End;
           if TiposDocumentos.FieldByName('Obrigatorio').AsBoolean then begin
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
           end;
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
           If PagarReceberValor_Total.Value = 0 then begin
              MessageDlg('Conteúdo de campo inválido!'+#13+#13+'O valor total do título não informado.', mtError, [mbOK], 0);
              cValorParcela.SetFocus;
              Abort;
           End;
           If PagarReceberValor_Parcela.Value = 0 then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o valor da parcela.', mtError, [mbOK], 0);
              cValorParcela.SetFocus;
              Abort;
           End;
           If (mOperacional = true) and (Trim(PagarReceberProcesso.AsString) = '') then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'Para usuarios do operacional é necessário informar o número do processo.', mtError, [mbOK], 0);
              cProcesso.SetFocus;
              Abort;
           End;
           If (ClassificacaoFinanceiraProcesso_Obrigatorio.AsBoolean = true) and (Trim(PagarReceberProcesso.AsString) = '') then begin
              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o nº do processo para esta classificação.', mtError, [mbOK], 0);
              cProcesso.SetFocus;
              Abort;
           End;
           //Se a classificação é de baixa automática, verifique se a data da baixa foi informada.
           if (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean and UsuariosBaixa_Automatica.AsBoolean) and (PagarReceberAdiantamento_Numero.AsInteger = 0) then begin
              if (Trim(cBanco.Text) <> '') and (DataLimpa(cDataBaixa.Text)) then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a data da baixa para "Classificação Financeira" de baixa automatica.', mtError, [mbOK], 0);
                 cDataBaixa.SetFocus;
                 Abort;
              end;
              if Trim(cBanco.Text) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o banco para "Classificação Financeira" de baixa automatica.', mtError, [mbOK], 0);
                 cBanco.SetFocus;
                 Abort;
              end;
           end;
           // Verifica se a data da baixa esta dentro de período já fechado.
           If not DataLimpa(cDataBaixa.Text) then begin
              If (cDataBaixa.Date <= EmpresasFechamento_Financeiro.Value) or (cDataBaixa.Date <= BancosData_Fechamento.Value) then begin
                 MessageDlg('Data inválida!'+#13+#13+'A data da baixa esta dentro de um período já fechado.', mtError, [mbOK], 0);
                 cDataBaixa.SetFocus;
                 Abort;
              end;
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
           if mInsert = true then begin
              if Trim(PagarReceberNumero_Documento.AsString) <> '' then begin
                 with tExiste do begin
                      SQL.Clear;
                      SQL.Add('select Fornecedor,');
                      SQL.Add('       case when Fornecedor > 0     then (select Nome from Fornecedores   where(Codigo = PagarReceber.Fornecedor))');
                      SQL.Add('            when Cliente    > 0     then (select Nome from Clientes       where(Codigo = PagarReceber.Cliente))');
                      SQL.Add('            when Orgao      <> '''' then (select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos where(Codigo = PagarReceber.Orgao))');
                      SQL.Add('       end AS Beneficiario');
                      SQL.Add('from   PagarReceber');
                      SQL.Add('where (Valor_Documento = :pValor) and (Numero_Documento like '+QuotedStr('%'+Trim(PagarReceberNumero_Documento.AsString)+'%')+')');
                      ParamByName('pValor').AsCurrency := PagarReceberValor_Documento.AsCurrency;
                      Open;

                      if RecordCount > 0 then begin
                         if MessageDlg('Atenção!'+#13+#13+'Já existe um título com este número de documento e com este valor para '+#13+Trim(tExiste.FieldByName('Beneficiario').AsString)+#13+#13+'Deseja realmente salvar o novo título?', mtInformation, [mbYes, mbNo], 0) = mrNo then begin
                            cValorDocumento.SetFocus;
                            Abort;
                         end;
                      end;
                 end;
              end;
              with tNumero do begin
                   sql.Clear;
                   sql.add('select isnull(max(Numero), 0)+1 as Numero from PagarReceber');
                   open;
              end;
              PagarReceberNumero.Value        := tNumero.fieldbyName('Numero').asinteger;
              PagarReceberValor_Baixado.Value := 0;
              PagarReceberTipo_Nota.Value     := 'FN';
              tNumero.Close;
           end;
           //verifica se o valor da baixa é maior que o da parcela em caso de permuta.
           if PagarReceberAdiantamento_Numero.AsInteger > 0 then begin
              if roundto(cValorBaixa.value, -4) > roundto(PagarReceberValor_Parcela.AsCurrency, -4) then begin
                 MessageDlg('Valor de baixa inválido!'+#13+#13+'Não pode ser maior que o valor da parcela.', mtError, [mbOK], 0);
                 cValorBaixa.SetFocus;
                 Abort;
              end;
              if cValorBaixa.Value = 0 then begin
                 MessageDlg('Valor de baixa inválido!'+#13+#13+'Para lançamentos de permuta é necessário informar o valor da baixa.', mtError, [mbOK], 0);
                 cValorBaixa.SetFocus;
                 Abort;
              end;
           end;

           PagarReceberCustoConta.Value     := ClassificacaoFinanceiraCusto.Value;
           PagarReceberCusto_Seletivo.Value := ClassificacaoFinanceiraCusto_Seletivo.Value;
           PagarReceberCusto_Entrada.Value  := ClassificacaoFinanceiraCusto_Entrada.Value;
           PagarReceberNivel.Value          := ClassificacaoFinanceiraNivel.Value;
           PagarReceberValor_Baixado.Value  := cTotalBaixas.Value;
           PagarReceberEmprestimo.Value     := false;
           if DataLimpa(PagarReceberData_Previsao.asstring) then begin
              PagarReceberData_Previsao.Value := PagarReceberData_Vencimento.Value;
           end;

           If cProcesso.Text = '' then PagarReceberProcesso.Value := '';

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
              GerarLog(Menu_Principal.mUsuarioCodigo, 'PagarReceber', 'INCLUSÃO' , 'Numero', 'Titulo n° '+PagarReceberNumero.AsString+' Vencimento em '+PagarReceberData_Vencimento.AsString, mNumeroDOC, PagarReceberNumero_Documento.AsString, '')
           else
              GerarLog(Menu_Principal.mUsuarioCodigo, 'PagarReceber', 'ALTERAÇÃO', 'Numero', 'Titulo n° '+PagarReceberNumero.AsString+' Vencimento em '+PagarReceberData_Vencimento.AsString, mNumeroDOC, PagarReceberNumero_Documento.AsString,'');

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
              If ClassificacaoFinanceiraAdiantamento.AsBoolean then begin
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
                                       PagarReceberBaixasRegistro.Value := tRegistroBaixa.FieldByName('Registro').AsInteger + 1;
                                       PagarReceberBaixasNumero.Value   := PagarReceberNumero.AsInteger;

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

                                       PagarReceberBaixasMulta.Value    := PagarReceberMulta.Value;
                                       PagarReceberBaixasJuros.Value    := PagarReceberJuros.Value;
                                       PagarReceberBaixasDesconto.Value := PagarReceberDesconto.Value;
                    PagarReceberBaixas.Post;

                    tRegistroBaixa.Close;

                    PagarReceber.Edit;
                                 PagarReceberValor_Baixado.Value := PagarReceberValor_Total.AsCurrency;
                                 PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.AsInteger;
                    PagarReceber.Post;
                 End;
              End;
           End;

           // Caso haja o número do adiantamento, gera a baixa do titulo.
           If PagarReceberAdiantamento_Numero.AsInteger <> 0 then begin
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
                                 PagarReceberBaixasRegistro.Value := tRegistroBaixa.FieldByName('Registro').AsInteger + 1;
                                 PagarReceberBaixasNumero.Value   := PagarReceberNumero.AsInteger;
                                 If DataLimpa(cDataBaixa.Text) = false then
                                    PagarReceberBaixasData.Value := cDataBaixa.Date
                                 else
                                    PagarReceberBaixasData.Value := PagarReceberData_Vencimento.AsDateTime;

                                 PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                 PagarReceberBaixasValor.Value               := cValorBaixa.Value;
                                 PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                                 PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                 PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                 If PagarReceberAdiantamento_Numero.AsInteger <> 0 then begin
                                    PagarReceberBaixasObservacao.Value := 'Pagamento referente a adiantamento nº '+ PagarReceberAdiantamento_Numero.AsString + ' de '+ tAdiantamentos.FieldByName('Data_Documento').AsString;
                                 End;
                                 PagarReceberBaixasBanco_Conta.Value := BancosConta.AsString;
                                 PagarReceberBaixasMulta.Value       := PagarReceberMulta.Value;
                                 PagarReceberBaixasJuros.Value       := PagarReceberJuros.Value;
                                 PagarReceberBaixasDesconto.Value    := PagarReceberDesconto.Value;
              PagarReceberBaixas.Post;
              tRegistroBaixa.Close;

              // Grava o numero da baixa no titulo.
              PagarReceber.Edit;
                           PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                           PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
              PagarReceber.Post;
           End;

           // Baixa automatica para classificações marcadas como baixa automatica.
           if tBaixa.FieldByName('Total_Baixado').AsCurrency = 0 then begin
              if (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean and UsuariosBaixa_Automatica.AsBoolean) and (not ClassificacaoFinanceiraAdiantamento.AsBoolean) and (PagarReceberAdiantamento_Numero.AsInteger = 0) and (PagarReceberBanco.AsInteger <> 0) then begin

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
                                    PagarReceberBaixasData.Value                := cDataBaixa.Date;
                                    PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                    PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                    PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                                    PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                    PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                    if PagarReceberAdiantamento_Numero.AsInteger <> 0 then begin
                                       PagarReceberBaixasObservacao.Value := 'Pagamento referente a adiantamento nº '+ PagarReceberAdiantamento_Numero.AsString + ' de '+ tAdiantamentos.FieldByName('Data_Documento').AsString;
                                    end;
                                    PagarReceberBaixasBanco_Conta.Value := BancosConta.AsString;
                                    PagarReceberBaixasMulta.Value       := PagarReceberMulta.Value;
                                    PagarReceberBaixasJuros.Value       := PagarReceberJuros.Value;
                                    PagarReceberBaixasDesconto.Value    := PagarReceberDesconto.Value;
                 PagarReceberBaixas.Post;
                 tRegistroBaixa.Close;

                 // Grava o numero da baixa no titulo.
                 PagarReceber.Edit;
                              PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                              PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
                 PagarReceber.Post;
              end;
           end;

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
              mNumero_Documento   := PagarReceberNumero_Documento.asstring;
              mForma_Tipo         := PagarReceberForma_Tipo.Value;
              mNumero_FormaTipo   := PagarReceberNumero_FormaTipo.Value;
              mObservacao         := PagarReceberObservacao.Value;
              mProcesso           := PagarReceberProcesso.Value;
              mCustoConta         := PagarReceberCustoConta.Value;
              mCustoSeletivo      := PagarReceberCusto_Seletivo.Value;
              mFiscal             := PagarReceberFiscal.Value;
              mModalidade_Pgto    := PagarReceberModalidade_Pgto.Value;
              mNivel              := PagarReceberNivel.Value;
              mVinculo            := PagarReceberNumero.Value;

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
                                    PagarReceberVinculo.Value            := mVinculo;
                                    PagarReceberEmpresa.Value            := Menu_Principal.mEmpresa;
                                    PagarReceberFilial.Value             := Empresas.FieldByName('Numero_Filial').asinteger;
                       PagarReceber.Post;
                       tNumero.Close;
                       TabParcelas.Next;
                 End;
              End;
           End;

           // Ajusta o valor de credito utilizado do cliente.
           if PagarReceberTipo.AsString = 'R' then begin
              Clientes.Edit;
                       ClientesLimite_Utilizado.Value := ClientesLimite_Utilizado.Value + PagarReceberValor_Documento.Value;
              Clientes.Post;
           end;

           // Apaga as parcelas da tabela temporaria.
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
           TabParcelas.ParamByName('pRegistro').AsString := mParcela;
           TabParcelas.Execute;
           
           PagarReceber.edit;
           TabSheet2.Enabled := true;
      End;
      Screen.Cursor := crDefault;
      MessageDlg('Lançamento financeiro salvo no banco de dados com sucesso!', mtInformation, [mbok], 0);
      //Close;
end;

procedure TFinanceiro_Lancamento.cClassificacaoExit(Sender: TObject);
begin
      If (ActiveControl.Name <> 'bCancelar') and (ActiveControl.Name <> 'bSalvar') then begin
         With Dados, dmContab do begin
              with tProcessos do begin
                   sql.clear;
                   sql.add('select Processo');
                   sql.add('      ,Cliente_Nome = (select Nome from '+Filiais.fieldbyname('Banco_Dados').asstring+'.dbo.Clientes where Codigo = Cliente)');
                   sql.add('      ,Numero_Declaracao = substring(Numero_Declaracao, 1, 2)+''/''+substring(Numero_Declaracao, 3, 7)+''-''+substring(Numero_Declaracao, 10, 1)');
                   sql.add('      ,Navio_Ordem');
                   sql.add('      ,Navio_Nome = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios where Ordem = Navio_Ordem)');
                   sql.add('from '+Filiais.fieldbyname('Banco_Dados').asstring+'.dbo.ProcessosDocumentos');
                   sql.add('where isnull(Desativado, 0) = 0');
                   if ClassificacaoFinanceiraModalidade_Importacao.AsInteger > 0 then begin
                      sql.Add('and Modalidade_Importacao = :pModalidade');
                      parambyname('pModalidade').AsInteger := ClassificacaoFinanceiraModalidade_Importacao.AsInteger;
                   end;
                   if ConfiguracaoBloquear_ProcessoFechado.AsBoolean = true then begin
                      sql.add('and Processo_Fechamento is null');
                   end;
                   sql.add('order by Processo, Navio_Nome');
                   //sql.savetofile('c:\temp\Lancamento_Financeiro_Processos.sql');
                   open;
              end;

              PagarReceberTipo.Value := ClassificacaoFinanceiraTipo.Value;
              if (Trim(PagarReceberDocumento.AsString) = '') or (PagarReceber.State = dsInsert) then
                 PagarReceberDocumento.Value := ClassificacaoFinanceiraTipo_Documento.Value;

              // Ajusta o campo de beneficiario.
              CampoBeneficiario;

              If (Trim(cCentroCusto.Text) <> '') and (CentroCustoProcesso.Value = False) then PagarReceberProcesso.Clear;

              //cNumeroAdiantamento.Enabled := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
              cNumeroAdiant.Enabled       := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
              cGrade.Enabled              := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
              Historicos.Locate('Codigo', ClassificacaoFinanceiraProvisao_Historico.AsInteger, [loCaseInsensitive]);

              // Verifica o código em "Configurações" para saber se é um contrato de câmbio.
              cDocumento.Enabled          := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cDataDoc.Enabled            := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cNumeroDoc.Enabled          := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cValorDocumento.Enabled     := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              cNumeroAdiant.Enabled       := not ClassificacaoFinanceiraCambio.AsBoolean = true;
              bDadosBancarios.Enabled     := not ClassificacaoFinanceiraCambio.AsBoolean = true;

              If (RoundTo(tBaixa.FieldByName('Total_Baixado').AsCurrency, -2) >= RoundTo(PagarReceberValor_Total.AsCurrency, -2)) and (tBaixa.FieldByName('Total_Baixado').AsCurrency <> 0) then begin
                 cValorDocumento.Enabled := false;
                 cValorParcela.Enabled   := false;
                 cDesconto.Enabled       := false;
                 cMulta.Enabled          := false;
                 cJuros.Enabled          := false;
                 cValorTotal.Enabled     := false;
                 cFormaPagamento.Enabled := false;
                 cNumeroForma.Enabled    := false;
                 cDataBaixa.Enabled      := false;
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

procedure TFinanceiro_Lancamento.cDocumentoExit(Sender: TObject);
begin
      // Ajusta o campo de beneficiario.
      CampoBeneficiario;
end;

procedure TFinanceiro_Lancamento.cValorParcelaChange(Sender: TObject);
begin
     CalculaTotal;
     mValoresIguais := false;
     If cValorParcela.text = cValorDocumento.Text then mValoresIguais := true;
end;

procedure TFinanceiro_Lancamento.cMultaChange(Sender: TObject);
begin
     CalculaTotal;
end;

procedure TFinanceiro_Lancamento.cJurosChange(Sender: TObject);
begin
     CalculaTotal;
end;

procedure TFinanceiro_Lancamento.cDescontoChange(Sender: TObject);
begin
     CalculaTotal;
end;

procedure TFinanceiro_Lancamento.CalculaTotal;
begin
      With Dados do begin
           If (PagarReceber.State = dsInsert) or (PagarReceber.State = dsEdit) then begin
              PagarReceberValor_Total.Value := PagarReceberValor_Parcela.Value + PagarReceberMulta.Value + PagarReceberJuros.Value-(PagarReceberDesconto.Value+PagarReceberDesconto_Liquidacao.Value);
              If mOutroValor = False then PagarReceberValor_Operacao.Value  := PagarReceberValor_Total.Value;
           End;   
      End;
end;

procedure TFinanceiro_Lancamento.cValorBaixaChange(Sender: TObject);
begin 
      with Dados do begin  
          lPercentualBaixa.Caption := PadR( FormatFloat('##0.00%', (cValorBaixa.value / PagarReceberValor_Documento.Value)*100), 7 );
          lPercentualBaixa.visible := cValorBaixa.value <> 0;
      end;
end;

procedure TFinanceiro_Lancamento.cValorDocumentoChange(Sender: TObject);
begin
      With Dados do begin
           with PagarReceber do begin
                if (State = dsInsert) or (State = dsEdit) then begin
                   if mValoresIguais = true then begin
                      fieldbyname('Valor_Parcela').Value := fieldbyname('Valor_Documento').Value;
                      cValorParcela.Text                 := cValorDocumento.Text;
                   end;   
                end;
                if PagarReceberTaxa_ME.AsFloat <> 0 then begin
                   PagarReceberValor_ME.value := PagarReceberValor_Documento.ascurrency / PagarReceberTaxa_ME.AsFloat;
                end;
                bParcelas.Enabled := (State = dsInsert) and (cModalidade.Text <> '') and (PagarReceberValor_Documento.Value <> 0) and (PagarReceberData_Documento.AsString <> '');
           end;
           CalculaTotal;
      End;
end;

procedure TFinanceiro_Lancamento.cValorParcelaExit(Sender: TObject);
begin
      With Dados do begin
           If RoundTo(PagarReceberValor_Parcela.Value, -4) > RoundTo(PagarReceberValor_Documento.Value, -4) then begin
              MessageDlg('O valor da parcela não pode ser maior do que o valor do documento.', mtError, [mbOK], 0);
              cValorParcela.SetFocus;
           End;
           If PagarReceberValor_Documento.Value <> 0 then begin
              lPercentualParcela.Caption := PadR( FormatFloat('##0.00%', (PagarReceberValor_Parcela.Value / PagarReceberValor_Documento.Value)*100), 7 );
              lPercentualParcela.Visible := PagarReceberValor_Parcela.Value <> 0;
           End;
           cValorBaixa.Value := PagarReceberValor_Parcela.AsCurrency;
      End;
      CalculaTotal;
end;

procedure TFinanceiro_Lancamento.cDescontoExit(Sender: TObject);
begin
      CalculaTotal;
      With Dados do begin
           If PagarReceberValor_Parcela.Value <> 0 then begin
              lPercentualDesc.Caption := PadR( FormatFloat('##0.00%', (PagarReceberDesconto.Value / PagarReceberValor_Parcela.Value)*100), 7 );
              lPercentualDesc.Visible := PagarReceberDesconto.Value <> 0;
           End;
      End;
end;

procedure TFinanceiro_Lancamento.cJurosExit(Sender: TObject);
begin
      CalculaTotal;
      With Dados do begin
           If PagarReceberValor_Parcela.Value <> 0 then begin
              lPercentualJuros.Caption := PadR( FormatFloat('##0.00%', (PagarReceberJuros.Value / PagarReceberValor_Parcela.Value)*100), 7 );
              lPercentualJuros.Visible := PagarReceberJuros.Value <> 0;
           End;
      End;
end;

procedure TFinanceiro_Lancamento.cListaDOCDblClick(Sender: TObject);
begin
      ShellExecute(Handle, 'Open', PChar(cListaDoc.Items[cListaDoc.ItemIndex]), '', '', SW_ShowNormal);
end;

procedure TFinanceiro_Lancamento.cMultaExit(Sender: TObject);
begin
      CalculaTotal;
      With Dados do begin
           If PagarReceberValor_Parcela.Value <> 0 then begin
              lPercentualMulta.Caption := PadR( FormatFloat('##0.00%', (PagarReceberMulta.Value / PagarReceberValor_Parcela.Value)*100), 7 );
              lPercentualMulta.Visible := PagarReceberMulta.Value <> 0;
           End;
      End;
end;

procedure TFinanceiro_Lancamento.cNumeroAdiantClick(Sender: TObject);
begin
      with Dados do begin
           PagarReceber.FieldByName('Permuta_Recebimento').Value := (PagarReceber.FieldByName('Tipo').asstring = 'P') and (tAdiantamentos.FieldByName('Tipo').AsString = 'R');
      end;
end;

procedure TFinanceiro_Lancamento.cNumeroAdiantExit(Sender: TObject);
begin
      with Dados do begin 
           cValorBaixa.Enabled := PagarReceberAdiantamento_Numero.AsInteger > 0;
           cValorBaixa.Value   := PagarReceberValor_Parcela.AsCurrency;
      end;
end;

procedure TFinanceiro_Lancamento.cNumeroDOCExit(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          if PagarReceber.state = dsInsert then begin
             if (PagarReceber.fieldByName('Documento').AsString = 'NF') and (PagarReceber.fieldByName('Tipo').AsString = 'R') then begin
                with tTemp2 do begin 
                     sql.clear;
                     sql.Add('select Cliente_Codigo, Valor_TotalNota from NotasFiscais where Numero = :pDoc and Data_Emissao = :pData and Saida_Entrada = 1 and Cancelada <> 1 and Nfe_Denegada <> 1');
                     parambyname('pDoc').value  := strtoint(apenasNumeros(PagarReceber.FieldByName('Numero_Documento').asstring));
                     parambyname('pData').value := PagarReceber.FieldByName('Data_Documento').value;
                     //sql.SaveToFile('c:\temp\Lancamento_Documentos.sql');
                     open;
                     if recordcount > 0 then begin
                        PagarReceberCliente.Value         := fieldbyname('Cliente_Codigo').AsInteger;
                        PagarReceberValor_Documento.value := fieldbyname('Valor_TotalNota').value;
                        PagarReceberValor_Parcela.value   := fieldbyname('Valor_TotalNota').value;
                        PagarReceberValor_Total.value     := fieldbyname('Valor_TotalNota').value;
                        PagarReceberValor_Operacao.value  := fieldbyname('Valor_TotalNota').value;
                     end;
                end;
             end;
          end;
     end;
end;

procedure TFinanceiro_Lancamento.lClassificacaoClick(Sender: TObject);
begin
      if not Permissao('mnCadastro_ClassificacaoFinanceira') then begin
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
      mClass := Clipboard.AsText;
end;

procedure TFinanceiro_Lancamento.lDocumentoClick(Sender: TObject);
begin
      if not Permissao('mnCadastro_TipoDocumentos') then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      end;
      Cadastro_TiposDocumentos := TCadastro_TiposDocumentos.Create(Self);
      Cadastro_TiposDocumentos.Caption := Caption;
      Cadastro_TiposDocumentos.ShowModal;
      Dados.TiposDocumentos.Open;
      Dados.PagarReceberDocumento.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_Lancamento.lBeneficiarioClick(Sender: TObject);
begin
      if not Permissao('mnCadastro_Fornecedores') then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      end;
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

procedure TFinanceiro_Lancamento.lBancoClick(Sender: TObject);
begin
      if not Permissao('mnCadastro_Bancos') then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      Cadastro_Bancos := TCadastro_Bancos.Create(Self);
      Cadastro_Bancos.Caption := Caption;
      Cadastro_Bancos.ShowModal;
      Dados.Bancos.Open;
end;

procedure TFinanceiro_Lancamento.bDadosBancariosClick(Sender: TObject);
begin
      Financeiro_LancamentoDadosBancarios := TFinanceiro_LancamentoDadosBancarios.Create(Self);
      Financeiro_LancamentoDadosBancarios.Caption := Caption;
      Financeiro_LancamentoDadosBancarios.ShowModal;
end;

procedure TFinanceiro_Lancamento.bDocumentoClick(Sender: TObject);
var
   i: Integer;
begin
     with Dados, PagarReceberDocs do begin
          if OpenDialog1.Execute then begin
             for i := 0 to pred(OpenDialog1.Files.Count) do begin
                 if Length(OpenDialog1.Files[i]) > 250 then begin
                    messagedlg('Nome do arquivo tem mais de 250 caracteres!'+#13+#13+'Diminua o nome do arquivo ou da pasta para adicionar.'+#13+#13+'Arquivo: '+OpenDialog1.Files[i], mtError, [mbok], 0);
                 end else begin
                    if not PagarReceberDocs.Locate('Documento', OpenDialog1.Files[i], [loCaseInsensitive]) then begin
                       cListaDoc.Items.Add(OpenDialog1.Files[i]);
                       Append;
                            FieldByName('Titulo').Value       := PagarReceber.FieldByName('Numero').asinteger;
                            FieldByName('Documento').AsString := OpenDialog1.Files[i];
                       Post;
                    end;
                 end;
             end;
             PagarReceberDocs.Refresh;
          end;
     end;
end;

procedure TFinanceiro_Lancamento.bRemoveTodosClick(Sender: TObject);
begin
     if MessageDlg('Deseja realmente remover todos os documentos anexados?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
        cListaDoc.Clear;
        with tTemp2 do begin
             sql.clear;
             sql.add('delete from PagarReceberDocs where Titulo = :pTitulo');
             parambyname('pTitulo').value := Dados.PagarReceberNumero.asinteger;
             execute;
        end;
        Dados.PagarReceberDocs.Refresh;
     end;
end;

procedure TFinanceiro_Lancamento.bRemoveDocClick(Sender: TObject);
begin
     if MessageDlg('Deseja realmente remover o documento anexado?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
        with tTemp2 do begin
             sql.Clear;
             sql.add('delete from PagarReceberDocs where Titulo = :pTitulo and Documento = :pDoc');
             parambyname('pTitulo').value := Dados.PagarReceberNumero.asinteger;
             parambyname('pDoc').value    := cListaDoc.Items[cListaDoc.ItemIndex];
             execute;
        end;
        cListaDoc.Items.Delete(cListaDoc.ItemIndex);
        Dados.PagarReceberDocs.Refresh;
     end;
end;

procedure TFinanceiro_Lancamento.cModalidadeClick(Sender: TObject);
begin
      bParcelas.Enabled := (Dados.PagarReceber.State = dsInsert) and (cModalidade.Text <> '') and (Dados.PagarReceberValor_Documento.Value <> 0) and (Dados.PagarReceberData_Documento.AsString <> '');
end;

procedure TFinanceiro_Lancamento.cModalidadeExit(Sender: TObject);
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

          ModalidadeParcelas(PagarReceberValor_Documento.Value, 0, 0, PagarReceberData_Documento.Value, ModalidadesPgtoNumero_Parcelas.Value, ModalidadesPgtoPrazo_Primeira.Value, ModalidadesPgtoPrazo_Demais.Value, mParcela, '', ModalidadesPgtoPrazo_Dia.AsInteger, ModalidadesPgtoCodigo.AsInteger);
          TabParcelas.First;

          PagarReceberValor_Parcela.Value := TabParcelasValor.Value;
          If (Trim(cModalidade.Text) <> '') and (ModalidadesPgtoNumero_Parcelas.AsInteger = 1) then begin
             PagarReceberData_Vencimento.Value := TabParcelasVencimento.Value;
          End;
     End;
end;

procedure TFinanceiro_Lancamento.bParcelasClick(Sender: TObject);
begin
      Financeiro_LancamentoParcelas := TFinanceiro_LancamentoParcelas.Create(Self);
      Financeiro_LancamentoParcelas.Caption               := 'Parcelas...';
      Financeiro_LancamentoParcelas.cTotalDocumento.Value := Dados.PagarReceberValor_Documento.Value;
      Financeiro_LancamentoParcelas.ShowModal;
end;

procedure TFinanceiro_Lancamento.bPesqBancoClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Bancos';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      Dados.Configuracao.Open;
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean, 'Dados', 'Empresa');
      PesquisaGerais.mFiltro := 'and isnull(Desativado, 0) = 0';
      PesquisaGerais.Showmodal;
      Dados.PagarReceberBanco.Value := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), '');
end;

procedure TFinanceiro_Lancamento.bPesqClaClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := '';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      Dados.Configuracao.open;
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Classificacao.asboolean, 'Dados','Empresa');
      //PesquisaGerais.mFiltro := 'and isnull(Desativada, 0) = 0';
      PesquisaGerais.mScript := 'select Codigo,'+#13+
                                '       Descricao'+#13+
                                'from ClassificacaoFinanceira'+#13+
                                'where isnull(Desativada, 0) = 0'+#13+
                                'and Descricao like :pPesq'+#13+
                                'and Nivel <= '+inttostr(Menu_Principal.mUsuarioNivel);
      
      PesquisaGerais.Showmodal;
      Dados.PagarReceberClassificacao.Value := Clipboard.AsText;
      cClassificacaoChange(self);
end;

procedure TFinanceiro_Lancamento.bPesqNavClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ControleNavios';
      PesquisaGerais.mCampo  := 'Ordem';
      PesquisaGerais.mCampo2 := 'Navio';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Status <> ''ENCERRADO'' ';
      PesquisaGerais.Showmodal;
      Dados.PagarReceberNavio.Value := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
end;

procedure TFinanceiro_Lancamento.cBeneficiarioClick(Sender: TObject);
begin
      With Dados do begin
           PagarReceberFornecedor_Banco.Value   := FornecedoresBanco_Nome.Value;
           PagarReceberFornecedor_Conta.Value   := FornecedoresBanco_Conta.Value;
           PagarReceberFornecedor_Agencia.Value := FornecedoresBanco_Agencia.Value;
      End;
end;

procedure TFinanceiro_Lancamento.cDataDocExit(Sender: TObject);
begin
      With Dados do begin
           bParcelas.Enabled := (PagarReceber.State = dsInsert) and (cModalidade.Text <> '') and (PagarReceberValor_Documento.Value <> 0) and (PagarReceberData_Documento.AsString <> '');

           If DataLimpa(PagarReceberData_Vencimento.AsString) or (PagarReceberData_Vencimento.Value = mDataDOC) then begin
              PagarReceberData_Vencimento.Value := PagarReceberData_Documento.Value; 
           End;
      End;
end;

procedure TFinanceiro_Lancamento.StaticText2Click(Sender: TObject);
begin
      If not Permissao('mnCadastro_CentroCusto') then begin
         MessageDlg('Usuario sem permissão para acessar este cadastro!', mtInformation, [mbOK], 0);
         Abort;
      End;
      Cadastro_CentroCusto := TCadastro_CentroCusto.Create(Self);
      Cadastro_CentroCusto.Caption := Caption;
      Cadastro_CentroCusto.ShowModal;
      Dados.CentroCusto.Open;
      Dados.PagarReceberCentro_Custo.AsString := Clipboard.AsText;
end;

procedure TFinanceiro_Lancamento.cProcessoClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           with tAdiantamentos do begin
                SQL.Clear;
                SQL.Add('SELECT Numero');
                SQL.Add('      ,PR.Valor_Total');
                SQL.Add('      ,PR.Data_Documento');
                SQL.Add('      ,Adiantamento_Numero = isnull(Fornecedor, 0) + isnull(Cliente, 0)');
                SQL.Add('      ,Beneficiario = CASE WHEN PR.Tipo = ''P'' THEN (SELECT Nome FROM Fornecedores FR WHERE FR.Codigo = PR.Fornecedor) ELSE (SELECT Nome FROM Clientes CL WHERE CL.Codigo = PR.Cliente) END');
                SQL.Add('      ,PR.Banco');
                SQL.Add('      ,PR.Forma_Tipo');
                SQL.Add('      ,PR.Numero_FormaTipo');
                SQL.Add('      ,(SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE( PRB.Numero=PR.Numero)) AS Valor_Baixado');
                SQL.Add('      ,PR.Tipo');
                SQL.Add('      ,CNPJ = iif(pr.Tipo = ''P'', (select CNPJ from Fornecedores fr where fr.Codigo = pr.Fornecedor), (select CNPJ from Clientes cl where cl.Codigo = pr.Cliente))');
                SQL.Add('FROM   PagarReceber PR');
                SQL.Add('WHERE  (Processo = :pProcesso)');
                If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
                   SQL.Add('       AND (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1')
                else
                   SQL.Add('       AND (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1');
                SQL.Add('ORDER  BY Beneficiario');
                ParamByName('pProcesso').AsString := PagarReceberProcesso.AsString;
                //SQL.SaveToFile('c:\temp\Adiantamentos.SQL');
                tAdiantamentos.Open;
           end;
           with tBeneAdiant do begin
                SQL.Clear;
                SQL.Add('select distinct');
                SQL.Add('       CNPJ = iif(pr.Tipo = ''P'', (select CNPJ from Fornecedores fr where fr.Codigo = pr.Fornecedor), (select CNPJ from Clientes cl where cl.Codigo = pr.Cliente))');
                SQL.Add('      ,Adiantamento_Numero = isnull(Fornecedor, 0) + isnull(Cliente, 0)');
                SQL.Add('      ,Beneficiario = iif(pr.Tipo = ''P'',(select Nome from Fornecedores fr where fr.Codigo = pr.Fornecedor), (select Nome from Clientes cl where cl.Codigo = pr.Cliente))');
                SQL.Add('from PagarReceber pr');
                sql.Add('where Processo = :pProcesso');
                if ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
                   sql.Add('and (select Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira where Codigo = Classificacao) = 1')
                else
                   sql.Add('and (select Adiantamento from ClassificacaoFinanceira where Codigo = Classificacao) = 1');
                sql.Add('order by Beneficiario, CNPJ, Adiantamento_Numero');
                ParamByName('pProcesso').AsString := PagarReceberProcesso.AsString;
                //sql.SaveToFile('c:\temp\Beneficiario_Adiantamentos.SQL');
                Open;
           end;

           tSaldoAdiantamento.SQL.Clear;
           tSaldoAdiantamento.SQL.Add('SELECT AdiantRec  = 0');
           tSaldoAdiantamento.SQL.Add('      ,AdiantEfet = 0');
           tSaldoAdiantamento.Open;
           if trim(PagarReceberProcesso.AsString) <> '' then begin
              tSaldoAdiantamento.SQL.Clear;
              If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then begin
                 tSaldoAdiantamento.SQL.Add('SELECT AdiantRec  = (SELECT SUM(Valor_Total) FROM PagarReceber WHERE Tipo = ''R'' AND Processo = :pProcesso AND (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1)');
                 tSaldoAdiantamento.SQL.Add('      ,AdiantEfet = (SELECT SUM(Valor_Total) FROM PagarReceber WHERE Tipo = ''P'' AND Processo = :pProcesso AND (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1)');
              end else begin
                 tSaldoAdiantamento.SQL.Add('SELECT AdiantRec  = (SELECT SUM(Valor_Total) FROM PagarReceber WHERE Tipo = ''R'' AND Processo = :pProcesso AND (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1)');
                 tSaldoAdiantamento.SQL.Add('      ,AdiantEfet = (SELECT SUM(Valor_Total) FROM PagarReceber WHERE Tipo = ''P'' AND Processo = :pProcesso AND (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1)');
              end;
              tSaldoAdiantamento.ParamByName('pProcesso').AsString := PagarReceberProcesso.AsString;
              tSaldoAdiantamento.Open;
           end;
           cAdEfe.Value := tSaldoAdiantamento.FieldbyName('AdiantEfet').AsCurrency;
           cAdRec.Value := tSaldoAdiantamento.FieldbyName('AdiantRec').AsCurrency;
      End;
      if cProcesso.Text <> '' then begin
         with Navios do begin
              sql.Clear;
              sql.Add('select Registro');
              sql.Add('      ,Ordem');
              sql.Add('      ,Processo');
              sql.Add('      ,Navio');
              sql.add('from  ControleNavios');
              //sql.add('where Status <> ''ENCERRADO'' ');
              Open;
         end;
      end;
      
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_Lancamento.cGradeDblClick(Sender: TObject);
begin
      With Dados do begin
           PagarReceberAdiantamento_Numero.Value := tAdiantamentos.FieldByName('Adiantamento_Numero').AsInteger;
           PagarReceber.FieldByName('Permuta_Recebimento').Value := (PagarReceber.FieldByName('Tipo').asstring = 'P') and (tAdiantamentos.FieldByName('Tipo').AsString = 'R');
      End;
end;

procedure TFinanceiro_Lancamento.cBeneficiarioExit(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           TiposProcesso.Locate('Codigo', ClientesModalidade_Importacao.AsInteger, [loCaseInsensitive]);
           If (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true) and (PagarReceberBanco.AsInteger = 0) then begin
              If Bancos.Locate('Nome', FornecedoresNome.AsString, [loCaseInsensitive]) then begin
                 PagarReceberBanco.Value := BancosCodigo.Value;
              End;
           End;
           with tAdiantamentos do begin
                SQL.Clear;
                SQL.Add('SELECT Numero');
                SQL.Add('      ,pr.Valor_Total');
                SQL.Add('      ,pr.Data_Documento');
                SQL.Add('      ,Adiantamento_Numero = isnull(Fornecedor, 0) + isnull(Cliente, 0)');
                SQL.Add('      ,Beneficiario = CASE WHEN PR.Tipo = ''P'' THEN (SELECT Nome FROM Fornecedores FR WHERE FR.Codigo = PR.Fornecedor) ELSE (SELECT Nome FROM Clientes CL WHERE CL.Codigo = PR.Cliente) END');
                SQL.Add('      ,PR.Banco');
                SQL.Add('      ,PR.Forma_Tipo');
                SQL.Add('      ,PR.Numero_FormaTipo');
                SQL.Add('      ,(SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE( PRB.Numero=PR.Numero)) AS Valor_Baixado');
                SQL.Add('      ,PR.Tipo');
                SQL.Add('      ,CNPJ = iif(pr.Tipo = ''P'', (select CNPJ from Fornecedores fr where fr.Codigo = pr.Fornecedor), (select CNPJ from Clientes cl where cl.Codigo = pr.Cliente))');
                SQL.Add('FROM PagarReceber PR');
                SQL.Add('WHERE Processo = :pProcesso');
                If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
                   SQL.Add('and (select Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1')
                else
                   SQL.Add('and (select Adiantamento FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1');
                SQL.Add('ORDER  BY Beneficiario');
                ParamByName('pProcesso').AsString := PagarReceberProcesso.AsString;
                //SQL.SaveToFile('c:\temp\Adiantamentos.SQL');
                tAdiantamentos.Open;
           end;
           with tBeneAdiant do begin
                SQL.Clear;
                SQL.Add('select distinct');
                SQL.Add('       CNPJ = iif(pr.Tipo = ''P'', (select CNPJ from Fornecedores fr where fr.Codigo = pr.Fornecedor), (select CNPJ from Clientes cl where cl.Codigo = pr.Cliente))');
                SQL.Add('      ,Adiantamento_Numero = isnull(Fornecedor, 0) + isnull(Cliente, 0)');
                SQL.Add('      ,Beneficiario = iif(pr.Tipo = ''P'',(select Nome from Fornecedores fr where fr.Codigo = pr.Fornecedor), (select Nome from Clientes cl where cl.Codigo = pr.Cliente))');
                SQL.Add('from PagarReceber pr');
                sql.Add('where Processo = :pProcesso');
                if ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
                   sql.Add('and (select Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira where Codigo = Classificacao) = 1')
                else
                   sql.Add('and (select Adiantamento from ClassificacaoFinanceira where Codigo = Classificacao) = 1');
                sql.Add('order by Beneficiario, CNPJ, Adiantamento_Numero');
                ParamByName('pProcesso').AsString := PagarReceberProcesso.AsString;
                //sql.SaveToFile('c:\temp\Beneficiario_Adiantamentos.SQL');
                Open;
           end;

           tSaldoAdiantamento.SQL.Clear;
           tSaldoAdiantamento.SQL.Add('SELECT AdiantRec  = 0');
           tSaldoAdiantamento.SQL.Add('      ,AdiantEfet = 0');
           tSaldoAdiantamento.Open;
           if trim(PagarReceberProcesso.AsString) <> '' then begin
              tSaldoAdiantamento.SQL.Clear;
              If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then begin
                 tSaldoAdiantamento.SQL.Add('SELECT AdiantRec  = (SELECT SUM(Valor_Total) FROM PagarReceber WHERE Tipo = ''R'' AND Processo = :pProcesso AND (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1)');
                 tSaldoAdiantamento.SQL.Add('      ,AdiantEfet = (SELECT SUM(Valor_Total) FROM PagarReceber WHERE Tipo = ''P'' AND Processo = :pProcesso AND (SELECT Adiantamento FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1)');
              end else begin
                 tSaldoAdiantamento.SQL.Add('SELECT AdiantRec  = (SELECT SUM(Valor_Total) FROM PagarReceber WHERE Tipo = ''R'' AND Processo = :pProcesso AND (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1)');
                 tSaldoAdiantamento.SQL.Add('      ,AdiantEfet = (SELECT SUM(Valor_Total) FROM PagarReceber WHERE Tipo = ''P'' AND Processo = :pProcesso AND (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE Codigo = Classificacao) = 1)');
              end;
              tSaldoAdiantamento.ParamByName('pProcesso').AsString := PagarReceberProcesso.AsString;
              //tSaldoAdiantamento.SQL.SaveToFile('c:\temp\Saldo_Adiantamento.sql');
              tSaldoAdiantamento.Open;
           end;
           cAdEfe.Value := tSaldoAdiantamento.FieldbyName('AdiantEfet').AsCurrency;
           cAdRec.Value := tSaldoAdiantamento.FieldbyName('AdiantRec').AsCurrency;
      End;
      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_Lancamento.cCentroCustoExit(Sender: TObject);
begin
      If Trim(cCentroCusto.Text) <> '' then begin
         cProcesso.Enabled := Dados.CentroCustoProcesso.AsBoolean;
      End;
end;

procedure TFinanceiro_Lancamento.CampoBeneficiario;
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

procedure TFinanceiro_Lancamento.cClassificacaoChange(Sender: TObject);
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

           cFormaPagamento.Enabled := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cNumeroForma.Enabled    := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cDataBaixa.Enabled      := ClassificacaoFinanceiraAdiantamento.AsBoolean or (ClassificacaoFinanceiraBaixa_Automatica.AsBoolean = true and UsuariosBaixa_Automatica.AsBoolean = true);
           cNumeroAdiant.Enabled   := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
           cGrade.Enabled          := not ClassificacaoFinanceiraAdiantamento.AsBoolean;
           cNFRef.Visible          := ClassificacaoFinanceiraNota_Referencia.Value;

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
           cProcesso.Enabled := ClassificacaoFinanceiraProcesso_Obrigatorio.AsBoolean;
      End;
end;

procedure TFinanceiro_Lancamento.cValorDocumentoEnter(Sender: TObject);
begin
      mValoresIguais := false;
      If cValorParcela.text = cValorDocumento.Text then mValoresIguais := true;
end;

procedure TFinanceiro_Lancamento.cDataDocEnter(Sender: TObject);
begin
      mDataDOC := Dados.PagarReceberData_Documento.Value;
end;

procedure TFinanceiro_Lancamento.cDataRefExit(Sender: TObject);
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
           Dados.PagarReceberNumero_Documento.Value := tExiste.FieldByName('Numero').asstring;
           Dados.PagarReceberValor_Documento.Value  := tExiste.FieldByName('Valor_TotalNota').Value;
           Dados.PagarReceberCliente.Value          := tExiste.FieldByName('Cliente_Codigo').Value;
           Dados.PagarReceberProcesso.Value         := tExiste.FieldByName('Processo').Value;

           If Dados.PagarReceberValor_Total.Value = 0 then
              Dados.PagarReceberValor_Total.Value := tExiste.FieldByName('Valor_TotalNota').Value;
        End;
     End;
end;

procedure TFinanceiro_Lancamento.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Financeiro_Lancamento.Release;
      Financeiro_Lancamento := nil;
end;



End.

