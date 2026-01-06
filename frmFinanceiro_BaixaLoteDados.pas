unit frmFinanceiro_BaixaLoteDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Mask,
  RXDBCtrl, RxLookup, DB, DBAccess, MSAccess, Funcoes, Vcl.ExtCtrls, DateUtils, RxGIF, ppDBPipe, ppVar, ppCtrls, ppPrnabl, ppBands, ppReport, ppMemo, myChkBox, DBGrids, 
  Menus, Grids, RxCurrEdit, RxToolEdit, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppClass, ppCache, ppComm, ppRelatv, ppProd, system.UITypes, MemDS;

type
  TFinanceiro_BaixaLoteDados = class(TForm)
    lData: TStaticText;
    lBanco: TStaticText;
    lObservacao: TStaticText;
    lForma: TStaticText;
    lDOCForma: TStaticText;
    cNumeroDOC: TEdit;
    cBanco: TRxDBLookupCombo;
    cObservacao: TMemo;
    cForma: TComboBox;
    tBordero: TMSQuery;
    cDataBaixa: TDateEdit;
    Panel1: TPanel;
    bBaixar: TButton;
    bCancelar: TButton;
    rCopiaCheque: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBImage1: TppDBImage;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    pEmpresas: TppDBPipeline;
    ppLine1: TppLine;
    rValorCheque: TppVariable;
    rExtenso: TppMemo;
    rNominal: TppLabel;
    rData: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    rCopiaNumero: TppLabel;
    ppLabel3: TppLabel;
    rVisadoSim: TmyCheckBox;
    rVisadoNao: TmyCheckBox;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    rCruzadoSim: TmyCheckBox;
    ppLabel8: TppLabel;
    rCruzadoNao: TmyCheckBox;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    pBancos: TppDBPipeline;
    rUtilizado: TppMemo;
    ppLabel36: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppDBText3: TppDBText;
    ppLabel11: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBText4: TppDBText;
    ppLabel12: TppLabel;
    ppLine6: TppLine;
    ppShape4: TppShape;
    ppLabel13: TppLabel;
    ppLabel10: TppLabel;
    ppShape3: TppShape;
    ppLabel15: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    rAssinado: TppLabel;
    cValorTotal: TCurrencyEdit;
    StaticText22: TStaticText;
    cValorOperacao: TCurrencyEdit;
    cValorAberto: TCurrencyEdit;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    cValorBaixado: TCurrencyEdit;
    StaticText26: TStaticText;
    mMenu: TPopupMenu;
    DeletarBaixa1: TMenuItem;
    ModificarValor1: TMenuItem;
    tRegistroBaixa: TMSQuery;
    Navega: TDBNavigator;
    tBaixas: TMSQuery;
    bDadosCheque: TButton;
    tLancamento: TMSQuery;
    lValorMulta: TStaticText;
    lValorJuros: TStaticText;
    lValorDesconto: TStaticText;
    cValorMulta: TCurrencyEdit;
    cValorDesconto: TCurrencyEdit;
    cValorJuros: TCurrencyEdit;
    cTaxaCambial: TCurrencyEdit;
    lTaxaContrato: TStaticText;
    StaticText2: TStaticText;
    cClassificacao: TEdit;
    lNumeroContrato: TStaticText;
    cNumeroContrato: TEdit;
    cVariacaoCambial: TCurrencyEdit;
    lVariacaoCambial: TStaticText;
    cTotalCambio: TCurrencyEdit;
    lTotalCambio: TStaticText;
    tNumero: TMSQuery;
    tBaixasCambio: TMSQuery;
    cTaxaContrato: TCurrencyEdit;
    lTaxaCambial: TStaticText;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    StaticText1: TStaticText;
    cObsTitulo: TMemo;
    cValorDocumento: TCurrencyEdit;
    StaticText3: TStaticText;
    tTotalBaixas: TMSQuery;
    tRegistro: TMSQuery;
    tLote: TMSQuery;
    StaticText4: TStaticText;
    cCredito: TCurrencyEdit;
    tCreditos: TMSQuery;
    cCredUtil: TCheckBox;
    tTmp: TMSQuery;
    procedure bCancelarClick(Sender: TObject);
    procedure bBaixarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure cFormaChange(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bDadosChequeClick(Sender: TObject);
    procedure ChecaConta(ContaD:String; ContaC:String);
    Function  ConverteHistorico(Historico: String):String;
    procedure CalculaMultaJuros;
    procedure cClassificacaoChange(Sender: TObject);
    procedure cDataBaixaExit(Sender: TObject);
    procedure cTaxaCambialChange(Sender: TObject);
    procedure cValorOperacaoChange(Sender: TObject);
    procedure cValorMultaChange(Sender: TObject);
    procedure cValorJurosChange(Sender: TObject);
    procedure cValorDescontoChange(Sender: TObject);
    procedure cVariacaoCambialChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    mListaIN,
    mContaDebito,
    mContaCredito: String;
    mLote: integer;
    CompClass
   ,CompBanco: string;
  end;

var
  Financeiro_BaixaLoteDados: TFinanceiro_BaixaLoteDados;

implementation

uses frmDados, frmDMContab, frmFinanceiro_BaixaLote, frmMenu_Principal,frmFinanceiro_BaixaCheque;

{$R *.dfm}

procedure TFinanceiro_BaixaLoteDados.bCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_BaixaLoteDados.bBaixarClick(Sender: TObject);
Var
    mSel
   ,mLote: integer;
    mTotalMultiplo
   ,mValorVariacao: Currency;
    mCambio: Boolean;
begin
     mTotalMultiplo := 0;

     With Dados, dmContab do begin
          // Verifica data de fechamento geral.
          If (cDataBaixa.Date <= EmpresasFechamento_Financeiro.Value) or (cDataBaixa.Date <= BancosData_Fechamento.Value) then begin
             MessageDlg('Data inválida!'+#13+#13+'A data da baixa esta dentro de um período já fechado .', mtError, [mbOK], 0);
             cDataBaixa.SetFocus;
             Abort;
          End;
          // Verifica todos os campos obrigatórios do lancamento.
          If Trim(RemoveCaracter('/','', cDataBaixa.Text)) = '' then begin
             MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a data da baixa dos títulos.', mtError, [mbOK], 0);
             cDataBaixa.SetFocus;
             Abort;
          End;
          If Trim(cBanco.Text) = '' then begin
             MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o banco.', mtError, [mbOK], 0);
             cBanco.SetFocus;
             Abort;
          End;
          If Trim(cForma.Text) = '' then begin
             MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a forma de pagamento.', mtError, [mbOK], 0);
             cForma.SetFocus;
             Abort;
          End;
          If (Financeiro_BaixaLote.tTitulos.FieldByName('Cambio').AsBoolean = True) then begin
             If cTaxaCambial.Value <= 0 then begin
                MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a taxa de fechamento do cambio.', mtError, [mbOK], 0);
                cTaxaCambial.SetFocus;
                Abort;
             End;
             If (Trim(ConfiguracaoClassificacao_CambioVarAtiva.AsString) = '') or (Trim(ConfiguracaoClassificacao_CambioVarPassiva.AsString) = '') then begin
                MessageDlg('Erro !'+#13+#13+
                           'É necessário parametrizar as classificações financeiras de variação cambial para baixas de fechamento de câmbio.'+#13+#13+
                           'Vá em "Configuração/Parâmetros/Financeiros/Lançamentos - [Classificações Financeiras para Fechamento de Câmbio].', mtError, [mbOK], 0);
                bBaixar.SetFocus;
                Abort;
             End;
          End;

          if cValorOperacao.Value > cValorAberto.Value then begin
             if (cValorJuros.Value + cValorMulta.Value) <= 0 then begin
                MessageDlg('Erro !'+#13+#13+'Valor da operação maior que o valor em aberto!', mtError, [mbOK], 0);
                Abort;
             end;
          end;

          If MessageDlg('Deseja realmente baixar os títulos selecionados?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

          Screen.Cursor := crSQLWait;

          //Atualizando o numero do cheque no cadastro do banco.
          If cForma.Text = 'CHEQUE' then begin
             If Trim(cNumeroDOC.Text) = '' then begin
                MessageDlg('Campo inválido!'+#13+#13+'É necessário informar o número do '+cForma.Text, mtError, [mbOK], 0);
                cValorOperacao.SetFocus;
                Abort;
             End;
             Bancos.Edit;
                    BancosCheque.Value := StrtoInt(cNumeroDoc.Text);
             Bancos.Post;
          End;

          tRegistroBaixa.SQL.Clear;
          tRegistroBaixa.SQL.Add('SELECT MAX(Registro) AS Registro FROM PagarReceberBaixas');

          tBordero.SQL.Clear;
          tBordero.SQL.Add('SELECT MAX(CAST(Bordero AS INT)) AS Bordero FROM PagarReceberBaixas');

          tNumero.SQL.Clear;
          tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');

          // Gera o número de lote para baixas multiplas.
          mLote := 0;
          with tLote do begin
               sql.Clear;
               sql.Add('select isnull(max(Lote), 0)+1 as Lote from PagarReceberBaixas');
               open;
               mLote := FieldByName('Lote').AsInteger;
          end;

          // Baixando todos os registros selecionados.
          For mSel := 0 to Financeiro_BaixaLote.Grade.SelectedRows.Count-1 do begin
              Financeiro_BaixaLote.Grade.DataSource.DataSet.GotoBookMark((Financeiro_BaixaLote.Grade.SelectedRows.Items[mSel]));
              with PagarReceber do begin
                   Close;
                   SQL.Clear;
                   SQL.Add('select * from PagarReceber where Numero = :pNumero');
                   ParamByName('pNumero').AsInteger := Financeiro_BaixaLote.tTitulos.FieldByName('Numero').AsInteger;
                   Open;
              end;

              ClassificacaoFinanceira.Locate('Codigo', PagarReceberClassificacao.AsString, [loCaseInsensitive]);
              TiposDocumentos.Locate('Codigo', PagarReceberDocumento.AsString, [loCaseInsensitive]);

              mCambio        := Financeiro_BaixaLote.tTitulos.FieldByName('Cambio').AsBoolean;
              mValorVariacao := 0;
              with tTotalBaixas do begin
                   SQL.Clear;
                   SQL.Add('select count(*) as Qtde');
                   SQL.Add('from PagarReceberBaixas where Numero = :pNumero');
                   ParamByName('pNumero').AsInteger := Financeiro_BaixaLote.tTitulos.FieldByName('Numero').AsInteger;
                   Open;
              end;

              // Lançamento Financeiro 01 - Baixa do titulo principal.
              tRegistroBaixa.Open;
              tBordero.Open;
              PagarReceberBaixas.Append;
                                 PagarReceberBaixasRegistro.Value := tRegistroBaixa.FieldByName('Registro').AsInteger + 1;
                                 PagarReceberBaixasNumero.Value   := Financeiro_BaixaLote.tTitulos.FieldByName('Numero').AsInteger;
                                 PagarReceberBaixasTipo.Value     := Financeiro_BaixaLote.tTitulos.FieldByName('Tipo').AsString;
                                 PagarReceberBaixasData.Value     := cDataBaixa.Date;

                                 if Financeiro_BaixaLote.Grade.SelectedRows.Count = 1 then begin
                                    if ClassificacaoFinanceiraCambio.AsBoolean = true then begin
                                       PagarReceberBaixasValor.Value := cValorOperacao.Value + cVariacaoCambial.Value;
                                    end else begin
                                       PagarReceberBaixasValor.Value := cValorOperacao.Value;
                                    end;

                                    PagarReceberBaixasMulta.Value    := cValorMulta.Value;
                                    PagarReceberBaixasJuros.Value    := cValorJuros.Value;
                                    PagarReceberBaixasDesconto.Value := cValorDesconto.Value;
                                 end else begin
                                    PagarReceberBaixasValor.Value    := (Financeiro_BaixaLote.tTitulos.FieldByName('Valor_Total').AsCurrency-Financeiro_BaixaLote.tTitulos.FieldByName('Valor_Baixado').AsCurrency);
                                    PagarReceberBaixasMulta.Value    := Financeiro_BaixaLote.tTitulos.FieldByName('Multa').AsCurrency;
                                    PagarReceberBaixasJuros.Value    := Financeiro_BaixaLote.tTitulos.FieldByName('Juros').AsCurrency;
                                    PagarReceberBaixasDesconto.Value := Financeiro_BaixaLote.tTitulos.FieldByName('Desconto').AsCurrency;
                                 End;

                                 If tTotalBaixas.FieldByName('Qtde').AsInteger = 0 then begin
                                    PagarReceberBaixasOrigem_Multa.Value    := 'T';
                                    PagarReceberBaixasOrigem_Juros.Value    := 'T';
                                    PagarReceberBaixasOrigem_Desconto.Value := 'T';
                                 end else begin
                                    PagarReceberBaixasOrigem_Multa.Value    := 'B';
                                    PagarReceberBaixasOrigem_Juros.Value    := 'B';
                                    PagarReceberBaixasOrigem_Desconto.Value := 'B';
                                 End;

                                 PagarReceberBaixasForma_Tipo.Value            := cForma.Text;
                                 PagarReceberBaixasForma_TipoDocumento.Value   := cNumeroDOC.Text;
                                 PagarReceberBaixasBanco.Value                 := BancosCodigo.Value;
                                 PagarReceberBaixasBanco_Conta.Value           := BancosConta.Value;
                                 PagarReceberBaixasBordero_Data.Value          := cDataBaixa.Date;
                                 PagarReceberBaixasBordero.Value               := InttoStr(tBordero.FieldByName('Bordero').AsInteger + 1);
                                 PagarReceberBaixasTaxa_FechamentoCambio.Value := cTaxaCambial.Value;
                                 PagarReceberBaixasNumero_ContratoCambio.Value := cNumeroContrato.Text;
                                 PagarReceberBaixasObservacao.Value            := cObservacao.Lines.Text;
                                 PagarReceberBaixasLote.Value                  := mLote;
              PagarReceberBaixas.Post;
              tRegistroBaixa.Close;
              tBordero.Close;
              with tTotalBaixas do begin
                   SQL.Clear;
                   SQL.Add('SELECT ISNULL(SUM(Valor), 0) AS Total, ISNULL(SUM(Multa), 0) AS Multa, ISNULL(SUM(Juros), 0) AS Juros, ISNULL(SUM(Desconto), 0) AS Desconto');
                   SQL.Add('FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
                   ParamByName('pNumero').AsInteger := Financeiro_BaixaLote.tTitulos.FieldByName('Numero').AsInteger;
                   Open;
              end;

              PagarReceber.Edit;
                           PagarReceberBaixa_Numero.Value     := PagarReceberBaixasRegistro.Value;
                           PagarReceberMulta.Value            := tTotalBaixas.FieldByName('Multa').Value;
                           PagarReceberJuros.Value            := tTotalBaixas.FieldByName('Juros').Value;
                           PagarReceberDesconto.Value         := tTotalBaixas.FieldByName('Desconto').Value;
                           PagarReceberBanco.Value            := PagarReceberBaixasBanco.Value;
                           PagarReceberForma_Tipo.Value       := cForma.Text;
                           PagarReceberNumero_FormaTipo.Value := cNumeroDOC.Text;
                           If Financeiro_BaixaLote.Grade.SelectedRows.Count = 1 then begin
                              PagarReceberValor_Total.Value    := (PagarReceberValor_Parcela.Value + PagarReceberJuros.Value + PagarReceberMulta.Value - PagarReceberDesconto.Value);
                              PagarReceberValor_Operacao.Value := tTotalBaixas.FieldByName('Total').Value;
                              PagarReceberValor_Baixado.Value  := cValorOperacao.Value;
                           end else begin
                              PagarReceberValor_Baixado.Value  := PagarReceberValor_Total.Value;
                           End;
                           PagarReceberLote.Value := mLote;
              PagarReceber.Post;

              if (PagarReceberTipo.Value = 'R') and (PagarReceberCliente.AsInteger <> 0) then begin
                 with Clientes do begin
                      sql.Clear;
                      sql.Add('select * from Clientes where Codigo = :pCodigo');
                      paramByName('pCodigo').AsInteger := PagarReceberCliente.AsInteger;
                      open;
                      edit;
                          fieldbyname('Limite_Utilizado').Value := fieldbyname('Limite_Utilizado').AsCurrency - PagarReceberBaixasValor.AsCurrency;
                      post;
                 end;
                 // Registro o valor a abater do credito do cliente se selecionado.
                 with tTmp do begin
                      sql.clear;
                      sql.add('select Registro = isnull(max(Registro), 0)+1 from PagarReceberCreditos');
                      open;
                 end;
                 with PagarReceberCreditos do begin
                      open;
                      Append;
                           fieldbyname('Registro').Value := tTmp.FieldByName('Registro').AsInteger;
                           fieldbyname('Codigo').Value   := ClientesCodigo.AsInteger;
                           fieldbyname('CNPJ').Value     := ClientesCNPJ.asstring;
                           fieldbyname('CPF').Value      := ClientesCPF.asstring;
                           fieldbyname('Tipo').Value     := 'P';
                           fieldbyname('Nota').Value     := Financeiro_BaixaLote.tTitulos.FieldByName('Numero').AsInteger;
                           fieldbyname('Data').Value     := cDataBaixa.Date;
                           fieldbyname('Emissor').Value  := 'P';
                           fieldbyname('Origem').Value   := 'BX';
                           fieldbyname('Valor').Value    := cValorOperacao.Value;
                      post;
                      close;
                 end;
              end;

              // Registra o log dos lançamentos baixados.
              GerarLog('('+Menu_Principal.mUsuarioCodigo+') '+Menu_Principal.mUsuarioNome, 'PagarReceberBaixas', 'BAIXA', 'Numero', 'Registro nº '+PagarReceberBaixasRegistro.AsString+'  Titulo n° '+PagarReceberBaixasNumero.AsString+' Data Baixa '+PagarReceberBaixasData.AsString, '', '', PagarReceberBaixasNumero.AsString);
              
              (*
              // Lançamento Contabil 01. - Pagamento - Titulo Principal.
              Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);

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
                 mTotalMultiplo := mTotalMultiplo + PagarReceberValor_Total.AsCurrency;
              End;

              if (mContaDebito <> '') or (mContaCredito <> '') then begin
                 mLote := CriaLote(cDataBaixa.Date, Empresas.FieldByName('CNPJ').asstring, 'FINANCEIRO BAIXA', 'FBX');
                 LancamentoContabilFin(PagarReceberBaixasData.AsDateTime,
                                       mContaDebito,
                                       mContaCredito,
                                       (PagarReceberValor_Operacao.AsCurrency - cValorJuros.Value - cValorMulta.Value + cValorDesconto.Value),
                                       ClassificacaoFinanceiraPagamento_Historico.AsInteger,
                                       ConverteHistorico(HistoricosMacro.AsString),
                                       PagarReceber.FieldByName('Numero_Documento').AsString,
                                       PagarReceber.FieldByName('Data_Documento').AsDateTime,
                                       PagarReceber.FieldByName('Documento').Asstring,
                                       PagarReceber.FieldByName('Numero').AsInteger,
                                       Empresas.FieldByName('CNPJ').asstring,
                                       PagarReceber.FieldByName('Processo').AsString,
                                       'FINANCEIRO BAIXA (' + PagarReceber.FieldByName('Numero').AsString+')',
                                       mLote,
                                       PagarReceber.FieldByName('Tipo').asstring,
                                       trim(PagarReceber.FieldByName('Fornecedor').asstring) + trim(PagarReceber.FieldByName('Cliente').asstring) + trim(PagarReceber.FieldByName('Orgao').asstring) );
              end;

              // Lançamento Contabil 02. - Pagamento - Multa.
              If cValorMulta.Value > 0 then begin
                 If Trim(PagarReceberTipo.AsString) = 'P' then
                    ClassificacaoFinanceira.Locate('Codigo', ConfiguracaoClassificacao_MultaPG.AsString, [loCaseInsensitive])
                 else
                    ClassificacaoFinanceira.Locate('Codigo', ConfiguracaoClassificacao_MultaRC.AsString, [loCaseInsensitive]);

                 Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);

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
                    mTotalMultiplo := mTotalMultiplo + cValorMulta.Value;
                 End;

                 If (mContaDebito <> '') or (mContaCredito <> '') then begin
                    mLote := CriaLote(cDataBaixa.Date, Empresas.FieldByName('CNPJ').asstring, 'FINANCEIRO BAIXA(MULTA)', 'FBXM');
                    LancamentoContabilFin(PagarReceberBaixasData.AsDateTime,
                                          mContaDebito,
                                          mContaCredito,
                                          cValorMulta.Value,
                                          ClassificacaoFinanceiraPagamento_Historico.AsInteger,
                                          ConverteHistorico(HistoricosMacro.AsString),
                                          PagarReceber.FieldByName('Numero_Documento').AsString,
                                          PagarReceber.FieldByName('Data_Documento').AsDateTime,
                                          PagarReceber.FieldByName('Documento').Asstring,
                                          PagarReceber.FieldByName('Numero').AsInteger,
                                          Empresas.FieldByName('CNPJ').asstring,
                                          PagarReceber.FieldByName('Processo').AsString,
                                          'FINANCEIRO BAIXA MULTA (' + PagarReceber.FieldByName('Numero').AsString+')',
                                          mLote,
                                          PagarReceber.FieldByName('Tipo').asstring,
                                          trim(PagarReceber.FieldByName('Fornecedor').asstring) + trim(PagarReceber.FieldByName('Cliente').asstring) + trim(PagarReceber.FieldByName('Orgao').asstring) );
                 End;
              End;

              // Lançamento Contabil 03. - Pagamento - Juros.
              If cValorJuros.Value > 0 then begin
                 If Trim(PagarReceberTipo.AsString) = 'P' then
                    ClassificacaoFinanceira.Locate('Codigo', ConfiguracaoClassificacao_JurosPG.AsString, [loCaseInsensitive])
                 else
                    ClassificacaoFinanceira.Locate('Codigo', ConfiguracaoClassificacao_JurosRC.AsString, [loCaseInsensitive]);

                 Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);

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
                    mTotalMultiplo := mTotalMultiplo + cValorJuros.Value;
                 End;

                 If (mContaDebito <> '') or (mContaCredito <> '') then begin
                    mLote := CriaLote(cDataBaixa.Date, Empresas.FieldByName('CNPJ').asstring, 'FINANCEIRO BAIXA(JUROS)', 'FBXJ');
                    LancamentoContabilFin(PagarReceberBaixasData.AsDateTime,
                                          mContaDebito,
                                          mContaCredito,
                                          cValorJuros.Value,
                                          ClassificacaoFinanceiraPagamento_Historico.AsInteger,
                                          ConverteHistorico(HistoricosMacro.AsString),
                                          PagarReceber.FieldByName('Numero_Documento').AsString,
                                          PagarReceber.FieldByName('Data_Documento').AsDateTime,
                                          PagarReceber.FieldByName('Documento').Asstring,
                                          PagarReceber.FieldByName('Numero').AsInteger,
                                          Empresas.FieldByName('CNPJ').asstring,
                                          PagarReceber.FieldByName('Processo').AsString,
                                          'FINANCEIRO BAIXA JUROS (' + PagarReceber.FieldByName('Numero').AsString+')',
                                          mLote,
                                          PagarReceber.FieldByName('Tipo').asstring,
                                          trim(PagarReceber.FieldByName('Fornecedor').asstring) + trim(PagarReceber.FieldByName('Cliente').asstring) + trim(PagarReceber.FieldByName('Orgao').asstring) );

                 End;
              End;

              // Lançamento Contabil 04. - Recebimentos/Pagamentos - Descontos.
              If cValorDesconto.Value > 0 then begin
                 If Trim(PagarReceberTipo.AsString) = 'P' then
                    ClassificacaoFinanceira.Locate('Codigo', ConfiguracaoClassificacao_DescontosRC.AsString, [loCaseInsensitive])
                 else
                    ClassificacaoFinanceira.Locate('Codigo', ConfiguracaoClassificacao_DescontosPG.AsString, [loCaseInsensitive]);

                 If ClassificacaoFinanceiraCambio.AsBoolean = false then begin
                    Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);

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
                       mTotalMultiplo := mTotalMultiplo - cValorDesconto.Value;
                    End;

                    If (mContaDebito <> '') or (mContaCredito <> '') then begin
                       mLote := CriaLote(cDataBaixa.Date, Empresas.FieldByName('CNPJ').asstring, 'FINANCEIRO BAIXA(JUROS)', 'FBXD');
                       LancamentoContabilFin(PagarReceberBaixasData.AsDateTime,
                                             mContaDebito,
                                             mContaCredito,
                                             cValorDesconto.Value,
                                             ClassificacaoFinanceiraPagamento_Historico.AsInteger,
                                             ConverteHistorico(HistoricosMacro.AsString),
                                             PagarReceber.FieldByName('Numero_Documento').AsString,
                                             PagarReceber.FieldByName('Data_Documento').AsDateTime,
                                             PagarReceber.FieldByName('Documento').Asstring,
                                             PagarReceber.FieldByName('Numero').AsInteger,
                                             Empresas.FieldByName('CNPJ').asstring,
                                             PagarReceber.FieldByName('Processo').AsString,
                                             'FINANCEIRO BAIXA DESCONTO (' + PagarReceber.FieldByName('Numero').AsString+')',
                                             mLote,
                                             PagarReceber.FieldByName('Tipo').asstring,
                                             trim(PagarReceber.FieldByName('Fornecedor').asstring) + trim(PagarReceber.FieldByName('Cliente').asstring) + trim(PagarReceber.FieldByName('Orgao').asstring) );
                    End;
                 End;
              End;

              // Lançamento Contabil 05. - Variação cambial Ativa/Passiva.
              If mCambio = true then begin
                 If cVariacaoCambial.Value < 0 then begin
                    ClassificacaoFinanceira.Locate('Codigo', ConfiguracaoClassificacao_CambioVarAtiva.AsString, [loCaseInsensitive]);
                    Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);
                    ChecaConta(BancosPlano_Contas.AsString, ClassificacaoFinanceiraPagamento_Conta.AsString);
                    mValorVariacao := cVariacaoCambial.Value * -1;
                 End;
                 If cVariacaoCambial.Value > 0 then begin
                    ClassificacaoFinanceira.Locate('Codigo', ConfiguracaoClassificacao_CambioVarPassiva.AsString, [loCaseInsensitive]);
                    Historicos.Locate('Codigo', ClassificacaoFinanceiraPagamento_Historico.AsInteger, [loCaseInsensitive]);
                    ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, BancosPlano_Contas.AsString);
                    mValorVariacao := cVariacaoCambial.Value;
                 End;

                 If ClassificacaoFinanceiraTipo_Lancamento.AsString = 'D' then begin // Partida dobrada - "Pega as duas contas".
                    If (mContaDebito <> '') and (mContaCredito <> '') then begin
                       mLote := CriaLote(cDataBaixa.Date, Empresas.FieldByName('CNPJ').asstring, 'FINANCEIRO BAIXA(VAR.CAMBIAL)', 'FBXVCA');
                       LancamentoContabilFin(PagarReceberBaixasData.AsDateTime,
                                             mContaDebito,
                                             mContaCredito,
                                             mValorVariacao,
                                             ClassificacaoFinanceiraPagamento_Historico.AsInteger,
                                             ConverteHistorico(HistoricosMacro.AsString),
                                             PagarReceber.FieldByName('Numero_Documento').AsString,
                                             PagarReceber.FieldByName('Data_Documento').AsDateTime,
                                             PagarReceber.FieldByName('Documento').Asstring,
                                             PagarReceber.FieldByName('Numero').AsInteger,
                                             Empresas.FieldByName('CNPJ').asstring,
                                             PagarReceber.FieldByName('Processo').AsString,
                                             'FINANCEIRO BAIXA VAR.CAMBIAL (' + PagarReceber.FieldByName('Numero').AsString+')',
                                             mLote,
                                             PagarReceber.FieldByName('Tipo').asstring,
                                             trim(PagarReceber.FieldByName('Fornecedor').asstring) + trim(PagarReceber.FieldByName('Cliente').asstring) + trim(PagarReceber.FieldByName('Orgao').asstring) );
                    End;
                 end else begin                                                      // Partida multipla - "Pega apenas a conta das despesas".
                    // Lançamento 1 - Crédito.
                    If mContaCredito <> '' then begin
                       mLote := CriaLote(cDataBaixa.Date, Empresas.FieldByName('CNPJ').asstring, 'FINANCEIRO BAIXA(VAR.CAMBIAL)', 'FBXVCA');
                       LancamentoContabilFin(PagarReceberBaixasData.AsDateTime,
                                             '',
                                             mContaCredito,
                                             mValorVariacao,
                                             ClassificacaoFinanceiraPagamento_Historico.AsInteger,
                                             ConverteHistorico(HistoricosMacro.AsString),
                                             PagarReceber.FieldByName('Numero_Documento').AsString,
                                             PagarReceber.FieldByName('Data_Documento').AsDateTime,
                                             PagarReceber.FieldByName('Documento').Asstring,
                                             PagarReceber.FieldByName('Numero').AsInteger,
                                             Empresas.FieldByName('CNPJ').asstring,
                                             PagarReceber.FieldByName('Processo').AsString,
                                             'FINANCEIRO BAIXA VAR.CAMBIAL (' + PagarReceber.FieldByName('Numero').AsString+')',
                                             mLote,
                                             PagarReceber.FieldByName('Tipo').asstring,
                                             trim(PagarReceber.FieldByName('Fornecedor').asstring) + trim(PagarReceber.FieldByName('Cliente').asstring) + trim(PagarReceber.FieldByName('Orgao').asstring) );
                    End;

                    // Lançamento 2 - Débito.
                    If mContaDebito <> '' then begin
                       mLote := CriaLote(cDataBaixa.Date, Empresas.FieldByName('CNPJ').asstring, 'FINANCEIRO BAIXA(VAR.CAMBIAL)', 'FBXVCA');
                       LancamentoContabilFin(PagarReceberBaixasData.AsDateTime,
                                             mContaDebito,
                                             '',
                                             mValorVariacao,
                                             ClassificacaoFinanceiraPagamento_Historico.AsInteger,
                                             ConverteHistorico(HistoricosMacro.AsString),
                                             PagarReceber.FieldByName('Numero_Documento').AsString,
                                             PagarReceber.FieldByName('Data_Documento').AsDateTime,
                                             PagarReceber.FieldByName('Documento').Asstring,
                                             PagarReceber.FieldByName('Numero').AsInteger,
                                             Empresas.FieldByName('CNPJ').asstring,
                                             PagarReceber.FieldByName('Processo').AsString,
                                             'FINANCEIRO BAIXA VAR.CAMBIAL (' + PagarReceber.FieldByName('Numero').AsString+')',
                                             mLote,
                                             PagarReceber.FieldByName('Tipo').asstring,
                                             trim(PagarReceber.FieldByName('Fornecedor').asstring) + trim(PagarReceber.FieldByName('Cliente').asstring) + trim(PagarReceber.FieldByName('Orgao').asstring) );
                    End;
                 End;

                 // Totalizando as baixas do titulo para saber se o total do câmbio esta fechado, para variação câmbial do fechamento de câmbio.
                 tBaixasCambio.SQL.Clear;
                 tBaixasCambio.SQL.Add('SELECT SUM(Valor - PagarReceber.Juros + PagarReceber.Desconto + :pVariacao) AS Total_Baixado FROM PagarReceberBaixas, PagarReceber ');
                 tBaixasCambio.SQL.Add('WHERE  (PagarReceberBaixas.Numero = PagarReceber.Numero) AND (PagarReceberBaixas.Numero = :pNumero)');
                 tBaixasCambio.ParamByName('pNumero').AsInteger    := Financeiro_BaixaLote.tTitulos.FieldByName('Numero').AsInteger;
                 If cVariacaoCambial.Value < 0 then
                    tBaixasCambio.ParamByName('pVariacao').AsCurrency := cVariacaoCambial.Value * -1
                 else
                    tBaixasCambio.ParamByName('pVariacao').AsCurrency := cVariacaoCambial.Value;

                 tBaixasCambio.Open;

                 If tBaixasCambio.FieldByName('Total_Baixado').AsCurrency >= PagarReceber.FieldByName('Valor_Documento').AsCurrency then begin
                    // Apurando a variação cambial.
                    tBaixasCambio.SQL.Clear;
                    tBaixasCambio.SQL.Add('SELECT ((Valor / :pTaxa) * :pTaxa) AS Valor_Real');
                    tBaixasCambio.SQL.Add('INTO   #Temp');
                    tBaixasCambio.SQL.Add('FROM   PagarReceberBaixas');
                    tBaixasCambio.SQL.Add('WHERE  (Numero = :pNumero)');
                    tBaixasCambio.SQL.Add('SELECT SUM(Valor_Real) AS Variacao_Cambial FROM #Temp');
                    tBaixasCambio.SQL.Add('DROP TABLE #Temp');
                    tBaixasCambio.ParamByName('pNumero').AsInteger  := Financeiro_BaixaLote.tTitulos.FieldByName('Numero').AsInteger;
                    tBaixasCambio.ParamByName('pTaxa').AsFloat      := cTaxaContrato.Value;
                    tBaixasCambio.Open;

                    cVariacaoCambial.Value := tBaixasCambio.FieldByName('Variacao_Cambial').AsCurrency - (ContratoCambio.FieldByName('Total_ME').AsCurrency * cTaxaContrato.Value);

                    PagarReceber.Edit;
                                 If cVariacaoCambial.Value < 0 then
                                    PagarReceberDesconto.Value := cVariacaoCambial.Value * -1;
                                 If cVariacaoCambial.Value > 0 then
                                    PagarReceberJuros.Value := cVariacaoCambial.Value;

                                 PagarReceberValor_Total.Value   := (PagarReceberValor_Total.Value + PagarReceberJuros.Value + PagarReceberMulta.Value - PagarReceberDesconto.Value);
                                 PagarReceberValor_Baixado.Value := PagarReceberValor_Total.Value;
                    PagarReceber.Post;
                 End;
              End;
              *)

          End;
          (*
          // Lançamentos de totalização "Contra-Partida" dos lancamentos em partida multipla - "Conta do Banco".
          ClassificacaoFinanceira.Locate('Codigo', PagarReceberClassificacao.AsString, [loCaseInsensitive]);

          If Financeiro_BaixaLote.cTipo.ItemIndex = 0 then
             ChecaConta('', BancosPlano_Contas.AsString)
          else
             ChecaConta(BancosPlano_Contas.AsString, '');

          If (mTotalMultiplo > 0) and ((mContaDebito <> '') or (mContaCredito <> '')) then begin
             mLote := CriaLote(cDataBaixa.Date, Empresas.FieldByName('CNPJ').asstring, 'FINANCEIRO BAIXA(CONTRA-PART)', 'FBXCP');
             LancamentoContabilFin(PagarReceberBaixasData.AsDateTime,
                                   mContaDebito,
                                   mContaCredito,
                                   mTotalMultiplo,
                                   ClassificacaoFinanceiraPagamento_Historico.AsInteger,
                                   ConverteHistorico(HistoricosMacro.AsString),
                                   PagarReceber.FieldByName('Numero_Documento').AsString,
                                   PagarReceber.FieldByName('Data_Documento').AsDateTime,
                                   PagarReceber.FieldByName('Documento').Asstring,
                                   PagarReceber.FieldByName('Numero').AsInteger,
                                   Empresas.FieldByName('CNPJ').asstring,
                                   PagarReceber.FieldByName('Processo').AsString,
                                   'FINANCEIRO BAIXA CONTRA-PART (' + PagarReceber.FieldByName('Numero').AsString+')',
                                   mLote,
                                   PagarReceber.FieldByName('Tipo').asstring,
                                   trim(PagarReceber.FieldByName('Fornecedor').asstring) + trim(PagarReceber.FieldByName('Cliente').asstring) + trim(PagarReceber.FieldByName('Orgao').asstring) );
          End;
          *)
          Close;
     End;
     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_BaixaLoteDados.FormShow(Sender: TObject);
Var
   mSel: Integer;
   mTexto:string;
begin
      With Dados, dmContab do begin
           Configuracao.Open;
           CompClass := iif(not ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
           CompBanco := iif(not ConfiguracaoCompartilhar_Bancos.AsBoolean       , 'Bancos'                 , 'Cybersoft_Cadastros.dbo.Bancos');

           with Municipios do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Municipios WHERE (Codigo = :pCodigo)');
                ParamByName('pCodigo').AsString := Dados.EmpresasMunicipio_Codigo.AsString;
                Open;
           end;
           with Bancos do begin
                sql.Clear;
                sql.Add('select * from '+CompBanco+' where isnull(Desativado, 0) = 0 order by Nome');
                open;
           end;
           with Historicos do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Codigo');
                Open;
           end;
           with TiposDocumentos do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM TiposDocumentos');
                Open;
           end;
           with Cotacao do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Cotacao ORDER BY Moeda');
                Open;
           end;
           with ContratoCambio do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM ContratoCambio WHERE(Numero = :pContrato)');
                ParamByName('pContrato').AsString := Financeiro_BaixaLote.tTitulosNumero_Documento.AsString;
                Open;
           end;
           with Empresas do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)');
                ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                Open;
           end;
           with tCreditos do begin
                sql.Clear;
                sql.add('select Valor = sum(iif(Tipo = ''R'', Valor, Valor *-1)) from PagarReceberCreditos where CNPJ = :pCNPJ');
                parambyname('pCNPJ').asstring := Financeiro_BaixaLote.tTitulos.FieldByName('CNPJ_CPF').asstring;
                open;
                cCredito.Value := fieldbyname('Valor').ascurrency;
                cCredUtil.Checked := false;
                cCredUtil.Enabled := cCredito.Value > 0;
           end;

           cValorOperacao.Enabled := Financeiro_BaixaLote.Grade.SelectedRows.Count = 1;
           cValorMulta.Enabled    := Financeiro_BaixaLote.Grade.SelectedRows.Count = 1;
           cValorJuros.Enabled    := Financeiro_BaixaLote.Grade.SelectedRows.Count = 1;
           cValorDesconto.Enabled := Financeiro_BaixaLote.Grade.SelectedRows.Count = 1;
           cDataBaixa.Date        := Date;
           cValorTotal.Value      := 0;
           cValorDocumento.Value  := 0;
           cValorOperacao.Value   := 0;
           cValorMulta.Value      := 0;
           cValorJuros.Value      := 0;
           cValorDesconto.Value   := 0;
           cValorAberto.Value     := 0;
           cValorBaixado.Value    := 0;
           cNumeroContrato.Text   := ContratoCambioNumero.AsString;
           cTaxaContrato.Value    := ContratoCambioTaxa_Cambial.AsFloat;

           cObsTitulo.Lines.Add(Financeiro_BaixaLote.tTitulos.FieldByName('Obs_Titulo').AsString);

           rUtilizado.Lines.Clear;
           For mSel := 0 to Financeiro_BaixaLote.Grade.SelectedRows.Count-1 do begin
               Financeiro_BaixaLote.Grade.DataSource.DataSet.GotoBookMark((Financeiro_BaixaLote.Grade.SelectedRows.Items[mSel]));

               cValorDocumento.Value := cValorDocumento.Value + Financeiro_BaixaLote.tTitulos.FieldByName('Valor_Documento').AsCurrency;
               cValorTotal.Value     := cValorTotal.Value + Financeiro_BaixaLote.tTitulos.FieldByName('Valor_Parcela').AsCurrency;
               mTexto                := Trim(Financeiro_BaixaLote.tTitulos.FieldByName('Classificacao').AsString);
               mTexto                := PoeZero(3, mSel+1)+'. '+mTexto + Replicate('.', 70-Length(mTexto) )+'R$ '+  PadR(FormatFloat('#,##0.00', Financeiro_BaixaLote.tTitulos.FieldByName('Valor_Total').AsCurrency), 14);
               cValorMulta.Value     := cValorMulta.Value + Financeiro_BaixaLote.tTitulos.FieldByName('Multa').AsCurrency;
               cValorJuros.Value     := cValorJuros.Value + Financeiro_BaixaLote.tTitulos.FieldByName('Juros').AsCurrency;
               cValorDesconto.Value  := cValorDesconto.Value + Financeiro_BaixaLote.tTitulos.FieldByName('Desconto').AsCurrency;

               mListaIN := mListaIN + Financeiro_BaixaLote.tTitulos.FieldByName('Numero').AsString+',';
               rUtilizado.Lines.Add(mTexto);
           End;
           mListaIN := Copy(mListaIN, 1, Length(mListaIN)-1);

           // Totaliza as baixas executadas.
           with PagarReceberBaixas do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM PagarReceberBaixas WHERE (Numero IN('+mListaIN+')) ORDER BY Data DESC');
                Open;
           end;
           {
           with tBaixas do begin
                SQL.Clear;
                SQL.Add('SELECT ISNULL(SUM(Valor), 0) AS Total_Baixado,');
                SQL.Add('       ISNULL(SUM(Multa), 0) AS Multa,');
                SQL.Add('       ISNULL(SUM(Juros), 0) AS Juros,');
                SQL.Add('       ISNULL(SUM(Desconto), 0) AS Desconto');
                SQL.Add('FROM   PagarReceberBaixas');
                SQL.Add('WHERE  (Numero IN('+mListaIN+'))');
                //SQL.SaveToFile('c:\temp\Baixas.SQL');
                Open;
           end;
           }
           with tBaixas do begin
                SQL.Clear;
                SQL.Add('SELECT ISNULL(SUM(Valor), 0) AS Total_Baixado,');
                SQL.Add('       ISNULL(SUM(Multa), 0) AS Multa,');
                SQL.Add('       ISNULL(SUM(Juros), 0) AS Juros,');
                SQL.Add('       ISNULL(SUM(Desconto), 0) AS Desconto');
                SQL.Add('FROM   PagarReceberBaixas');
                SQL.Add('WHERE  (Numero IN('+mListaIN+'))');
                //SQL.SaveToFile('c:\temp\Baixas.SQL');
                Open;
           end;

           cValorBaixado.Value  := tBaixas.FieldByName('Total_Baixado').AsCurrency;
           cValorAberto.Value   := cValorTotal.Value - cValorBaixado.Value - tBaixas.FieldByName('Desconto').AsCurrency + tBaixas.FieldByName('Multa').AsCurrency + tBaixas.FieldByName('Juros').AsCurrency;
           cValorOperacao.Value := cValorAberto.Value + cValorMulta.Value + cValorJuros.Value - cValorDesconto.Value;

           tBaixas.Close;

           If Financeiro_BaixaLote.Grade.SelectedRows.Count = 1 then begin
              cClassificacao.Text := '• '+Trim(Financeiro_BaixaLote.tTitulosClassificacao.AsString)+' •'
           end else begin
              cClassificacao.Text := '• DIVERSOS  TITULOS SELECIONADOS •';
           End;

           lTaxaCambial.Visible     := Financeiro_BaixaLote.tTitulos.FieldByName('Cambio').AsBoolean;
           cTaxaCambial.Visible     := lTaxaCambial.Visible;
           lTaxaContrato.Visible    := lTaxaCambial.Visible;
           cTaxaContrato.Visible    := lTaxaCambial.Visible;
           lNumeroContrato.Visible  := lTaxaCambial.Visible;
           cNumeroContrato.Visible  := lTaxaCambial.Visible;
           lVariacaoCambial.Visible := lTaxaCambial.Visible;
           cVariacaoCambial.Visible := lTaxaCambial.Visible;
           lTotalCambio.Visible     := lTaxaCambial.Visible;
           cTotalCambio.Visible     := lTaxaCambial.Visible;
           cValorJuros.Enabled      := Financeiro_BaixaLote.Grade.SelectedRows.Count = 1;
           cValorMulta.Enabled      := Financeiro_BaixaLote.Grade.SelectedRows.Count = 1;
           cValorDesconto.Enabled   := Financeiro_BaixaLote.Grade.SelectedRows.Count = 1;
      End;
end;

procedure TFinanceiro_BaixaLoteDados.ppDetailBand1BeforePrint(Sender: TObject);
begin
      With Dados do begin
           rExtenso.Lines.Clear;
           rExtenso.Lines.Add(Financeiro_BaixaCheque.lExtenso1.Text+Financeiro_BaixaCheque.lExtenso2.Text+' '+Replicate('*', 173-(Length(Trim(Financeiro_BaixaCheque.lExtenso1.Text))+Length(Trim(Financeiro_BaixaCheque.lExtenso2.Text))) ));

           rValorCheque.Value  := cValorOperacao.Value;
           rNominal.Text       := Financeiro_BaixaCheque.cNominal.Text;
           rData.Text          := Financeiro_BaixaCheque.lCidade.Text + Replicate(' ', 20-Length(Financeiro_BaixaCheque.lCidade.Text))+Financeiro_BaixaCheque.lDia.Text + '     ' + Financeiro_BaixaCheque.lMes.Text + Replicate(' ', 15-Length(Financeiro_BaixaCheque.lMes.Text)) + Financeiro_BaixaCheque.lAno.Text;
           rCopiaNumero.Text   := cNumeroDOC.Text;
           rVisadoSim.Checked  := Financeiro_BaixaCheque.cVisado.Checked;
           rVisadoNao.Checked  := not Financeiro_BaixaCheque.cVisado.Checked;
           rCruzadoSim.Checked := Financeiro_BaixaCheque.cCruzado.Checked;
           rCruzadoNao.Checked := not Financeiro_BaixaCheque.cCruzado.Checked;
           rAssinado.Caption   := Financeiro_BaixaCheque.cAssinado.Text;
      End;
end;

procedure TFinanceiro_BaixaLoteDados.cFormaChange(Sender: TObject);
begin
      bDadosCheque.Enabled := (cForma.Text = 'CHEQUE');
end;

procedure TFinanceiro_BaixaLoteDados.NavegaClick(Sender: TObject;Button: TNavigateBtn);
begin
      If Button = nbDelete then begin
         With Dados do begin
              cValorOperacao.Value   := 0;
              cValorMulta.Value      := 0;
              cValorJuros.Value      := 0;
              cValorDesconto.Value   := 0;
              cValorAberto.Value     := 0;
              cValorBaixado.Value    := 0;

              tBaixas.SQL.Clear;
              tBaixas.SQL.Add('SELECT SUM(Valor) AS Total_Baixado FROM PagarReceberBaixas WHERE (Numero IN('+mListaIN+'))');
              tBaixas.Open;

              If tBaixas.FieldByName('Total_Baixado').Value <> NULL then begin
                 cValorBaixado.Value  := tBaixas.FieldByName('Total_Baixado').Value;
              End;
              cValorAberto.Value   := cValorTotal.Value - cValorBaixado.Value;
              cValorOperacao.Value := cValorAberto.Value;

              tBaixas.Close;
         End;
      End;
end;

procedure TFinanceiro_BaixaLoteDados.bDadosChequeClick(Sender: TObject);
begin
     Financeiro_BaixaCheque := TFinanceiro_BaixaCheque.Create(Self);
     Financeiro_BaixaCheque.Caption       := Caption;
     Financeiro_BaixaCheque.mExtenso      := ValorExtenso(cValorOperacao.Value, true);
     Financeiro_BaixaCheque.lValor.Value  := cValorOperacao.Value;
     Financeiro_BaixaCheque.lCheque.Text  := cNumeroDOC.Text;
     Financeiro_BaixaCheque.ShowModal;
end;

procedure TFinanceiro_BaixaLoteDados.ChecaConta(ContaD:String; ContaC:String);
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

           if ContaD = 'DEVOLUÇÃO' then begin
              if Trim(PagarReceber.FieldByName('Tipo').AsString) <> 'P' then
                 mContaDebito := Trim(FornecedoresConta_Devolucao.AsString)
              else
                 mContaDebito := Trim(ClientesConta_Devolucao.AsString);
           end;

           If ContaD = 'BANCO'        then mContaDebito  := Trim(BancosPlano_Contas.Value);
           If ContaD = 'ADIANTAMENTO' then begin
              If ClassificacaoFinanceiraTipo.AsString = 'R' then begin
                 Clientes.Locate('Codigo', PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
                 mContaDebito := Trim(ClientesConta_Adiantamento.AsString)
              end else begin
                 Fornecedores.Locate('Codigo', PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
                 mContaDebito := Trim(FornecedoresConta_Adiantamento.AsString);
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

           if ContaC = 'DEVOLUÇÃO' then begin
              If Trim(PagarReceber.FieldByName('Tipo').AsString) <> 'P' then
                 mContaCredito := Trim(FornecedoresConta_Devolucao.AsString)
              else
                 mContaCredito := Trim(ClientesConta_Devolucao.AsString);
           end;

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

Function TFinanceiro_BaixaLoteDados.ConverteHistorico(Historico: String):String;
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
                   If i = 0 then Result := RemoveCaracter(mMacros[0], Financeiro_BaixaLote.tTitulos.FieldByName('Beneficiario').AsString, Result);
                   If i = 1 then Result := RemoveCaracter(mMacros[1], Financeiro_BaixaLote.tTitulos.FieldByName('Processo').AsString, Result);
                   If i = 2 then Result := RemoveCaracter(mMacros[2], Dados.ProcessosDoc.FieldByName('Numero_Declaracao').AsString, Result);
                   If i = 3 then Result := RemoveCaracter(mMacros[3], Financeiro_BaixaLote.tTitulos.FieldByName('Classificacao').AsString, Result);
                   If i = 4 then Result := RemoveCaracter(mMacros[4], Dados.TiposDocumentos.FieldByName('Descricao').AsString, Result);
                   If i = 5 then Result := RemoveCaracter(mMacros[5], Financeiro_BaixaLote.tTitulos.FieldByName('Numero_Documento').AsString, Result);
                   If i = 6 then Result := RemoveCaracter(mMacros[6], cDataBaixa.Text, Result);
                   If i = 7 then Result := RemoveCaracter(mMacros[7], cBanco.Text, Result);
                   If i = 8 then Result := RemoveCaracter(mMacros[8], cObservacao.Lines.Text, Result);
                   mPos := Pos(mMacros[i], Result );
                End;
          End;
      End;
end;

procedure TFinanceiro_BaixaLoteDados.CalculaMultaJuros;
begin       
     cValorOperacao.Value := cValorAberto.Value + cValorMulta.Value + cValorJuros.Value - cValorDesconto.Value;
end;

procedure TFinanceiro_BaixaLoteDados.cClassificacaoChange(Sender: TObject);
var
    Vl_Label: TLabel;                                                                                                    // Variável do tipo Label
begin
     Vl_Label := TLabel.Create(self);                                                                                    // Criamos um label
     With Vl_Label do begin
          Font.Name := TEdit(sender).Font.Name;                                                                          // Pegamos a fonte usada no edit
          Caption   := TEdit(sender).Text;                                                                               // Pegamos o conteúdo do edit
          SendMessage(TEdit(Sender).Handle, EM_SETMARGINS, EC_LEFTMARGIN, (TEdit(Sender).Width-Vl_Label.Width) div 2);   // Centraliza no label e retorna para o edit
     End;
     Vl_Label.Free;
end;

procedure TFinanceiro_BaixaLoteDados.cDataBaixaExit(Sender: TObject);
begin
     With Dados do begin
          If (cTaxaCambial.Value <= 0) and (Cotacao.Locate('Moeda;Data', VarArrayOf([ContratoCambioMoeda.AsInteger, cDataBaixa.Date]), [loCaseInsensitive])) then begin
             cTaxaCambial.Value := CotacaoValor.AsFloat;
          End;
     End;
end;

procedure TFinanceiro_BaixaLoteDados.cTaxaCambialChange(Sender: TObject);
begin
      cVariacaoCambial.Value := ((cValorOperacao.Value/cTaxaContrato.Value) * cTaxaCambial.Value) - cValorOperacao.Value;
      cTotalCambio.Value     := cValorOperacao.Value + cVariacaoCambial.Value;
      If cVariacaoCambial.Value > 0 then
         lVariacaoCambial.Caption := 'Variação Câmbial Passiva'
      else
         lVariacaoCambial.Caption := 'Variação Câmbial Ativa';
end;

procedure TFinanceiro_BaixaLoteDados.cValorOperacaoChange(Sender: TObject);
begin
      With Dados do begin
           If (cValorOperacao.Value > 0) and (ContratoCambioTaxa_Cambial.AsFloat > 0) then begin
              cVariacaoCambial.Value := ((cValorOperacao.Value/cTaxaContrato.Value) * cTaxaCambial.Value) - cValorOperacao.Value;
           End;
      End;
end;

procedure TFinanceiro_BaixaLoteDados.cValorMultaChange(Sender: TObject);
begin
     cValorOperacao.Value := cValorAberto.Value + cValorMulta.Value + cValorJuros.Value - cValorDesconto.Value;
end;

procedure TFinanceiro_BaixaLoteDados.cValorJurosChange(Sender: TObject);
begin
     cValorOperacao.Value := cValorAberto.Value + cValorMulta.Value + cValorJuros.Value - cValorDesconto.Value;
end;

procedure TFinanceiro_BaixaLoteDados.cValorDescontoChange(Sender: TObject);
begin
     cValorOperacao.Value := cValorAberto.Value + cValorMulta.Value + cValorJuros.Value - cValorDesconto.Value;
end;

procedure TFinanceiro_BaixaLoteDados.cVariacaoCambialChange(Sender: TObject);
begin
      cTotalCambio.Value := cValorOperacao.Value + cVariacaoCambial.Value;
end;

procedure TFinanceiro_BaixaLoteDados.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      With Dados, dmContab do begin
           Configuracao.Close;
           Municipios.Close;
           Bancos.Close;
           Historicos.Close;
           TiposDocumentos.Close;
           Cotacao.Close;
           ContratoCambio.Close;
           PagarReceber.Close;
           Lancamentos.Close;
     End;
     Financeiro_BaixaLoteDados.Release;
     Financeiro_BaixaLoteDados := nil;
end;

end.







