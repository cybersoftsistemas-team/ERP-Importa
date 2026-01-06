unit frmModalidadePgto_Parcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, DBCtrls, RXDBCtrl, Funcoes,ExtCtrls, DB,
  DBAccess, MSAccess, DateUtils, Grids, DBGrids, Mask, RxCurrEdit, MemDS, RxToolEdit, Vcl.Buttons, system.UITypes, ClipBrd;

type
  TModalidadePgto_Parcelas = class(TForm)
    StaticText1: TStaticText;
    cValor: TCurrencyEdit;
    Grade: TRxDBGrid;
    lFormaPgto: TStaticText;
    cFormaPgto: TDBLookupComboBox;
    Panel1: TPanel;
    bGerar: TButton;
    bCancelar: TButton;
    StaticText2: TStaticText;
    cTotalNota: TCurrencyEdit;
    tProvisao: TMSQuery;
    tProvisaoNumero: TLargeintField;
    tLancamentos: TMSQuery;
    StaticText3: TStaticText;
    cClassificacao: TDBLookupComboBox;
    bParcelas: TButton;
    StaticText4: TStaticText;
    cBanco: TDBLookupComboBox;
    cTipo: TRadioGroup;
    tClass: TMSQuery;
    bPesqCla: TSpeedButton;
    tRegistroBaixa: TMSQuery;
    tRegistro: TMSQuery;
    tlancamento: TMSQuery;
    tBaixas: TMSQuery;
    procedure bGerarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCancelarClick(Sender: TObject);
    procedure GradeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lFormaPgtoClick(Sender: TObject);
    procedure LancamentoImpostos;
    procedure AdicionaFinanceiro(Imposto: String; Valor: Currency);
    procedure StaticText3Click(Sender: TObject);
    procedure bParcelasClick(Sender: TObject);
    procedure bPesqClaClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
  private
//    procedure ChecaConta(ContaD, ContaC: String);
//    procedure LancamentoContabil(Data: TDate; ContaD, ContaC, Processo, NotaFiscal: String; Valor: Currency; HistorCod, Finan: Integer; Datanota: TDate; TipoN, Tipo_Nota, Origem: String);
//    function ConverteHistorico(Historico: String): String;
    { Private declarations }
  public
    { Public declarations }
    mTipo        : String;
    mTipoNF      : Integer;  // 1 = Nota Terceiros, 2 = Nota Servico Tomados, 3 = Nota Servico Prestados, 4 = Faturamento Saida.
    mContaDebito : String;
    mContaCredito: String;
  end;

var
  ModalidadePgto_Parcelas: TModalidadePgto_Parcelas;

implementation

uses frmDados, frmDMFiscal, frmDMContab, frmCadastro_ModalidadesPagamento, frmCadastro_ClassificacaoFinanceira, frmMenu_Principal, frmPesquisaGerais;

{$R *.dfm}

procedure TModalidadePgto_Parcelas.bGerarClick(Sender: TObject);
var
   mErro: Boolean;
   mImp : Widestring;
begin
      { GERA O LANÇAMENTO DE CONTAS A PAGAR NO FINANCEIRO.}
      With Dados, dmFiscal do begin
           // Verifica se os lançamentos da nota ja foram baixados.
           tBaixas.SQL.Clear;
           tBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Registro IN(SELECT Baixa_Numero FROM PagarReceber WHERE Data_Documento = :pData AND Documento = :pDocumento AND Numero_Documento = :pNumeroDoc AND Fornecedor = :pFornecedor)');
           tBaixas.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
           tBaixas.ParamByName('pDocumento').AsString   := NotasTerceirosTipo.Value;
           tBaixas.ParamByName('pNumeroDOC').AsString   := NotasTerceirosNota.AsString;
           tBaixas.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
           tBaixas.open;
           if tBaixas.RecordCount > 0 then begin
              MessageDlg('Atenção !'+#13+#13+'Lançamentos financeiros da Nota Fiscal já foram baixados.'+#13+#13+'Estorne as baixas para poder gerar novamente os lançamentos financeiros.', mtInformation, [mbok], 0);
              Abort;
           end;

           // Verifica se os impostos estão parametrizados na tabela de Impostos e taxas.
           mErro := false;
           if Trim(NotasTerceirosCodigo_Adicional01.AsString) <> '' then begin
              if Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional01.AsString, [loCaseInsensitive]) then begin
                 if ImpostosClassificacao_Financeira.AsString = '' then begin
                    mErro := true;
                    mImp  := #13+NotasTerceirosCodigo_Adicional01.AsString + ' - ' + Dados.ImpostosDescricao.AsString;
                 end;   
              end
           end;
           if Trim(NotasTerceirosCodigo_Adicional02.AsString) <> '' then begin
              if Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional02.AsString, [loCaseInsensitive]) then begin
                 if ImpostosClassificacao_Financeira.AsString = '' then begin
                    mErro := true;
                    mImp  := mImp + #13+NotasTerceirosCodigo_Adicional02.AsString + ' - ' + Dados.ImpostosDescricao.AsString;
                 end;
              end
           end;
           if Trim(NotasTerceirosCodigo_Adicional03.AsString) <> '' then begin
              if Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional03.AsString, [loCaseInsensitive]) then begin
                 if ImpostosClassificacao_Financeira.AsString = '' then begin
                    mErro := true;
                    mImp  := mImp + #13+NotasTerceirosCodigo_Adicional03.AsString + ' - ' + Dados.ImpostosDescricao.AsString;
                 end;
              end
           end;
           if Trim(NotasTerceirosCodigo_Adicional04.AsString) <> '' then begin
              if Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional04.AsString, [loCaseInsensitive]) then begin
                 if ImpostosClassificacao_Financeira.AsString = '' then begin
                    mErro := true;
                    mImp  := mImp + #13+NotasTerceirosCodigo_Adicional04.AsString + ' - ' + Dados.ImpostosDescricao.AsString;
                 end;
              end
           end;
           if Trim(NotasTerceirosCodigo_Adicional05.AsString) <> '' then begin
              if Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional05.AsString, [loCaseInsensitive]) then begin
                 if ImpostosClassificacao_Financeira.AsString = '' then begin
                    mErro := true;
                    mImp  := mImp + #13+NotasTerceirosCodigo_Adicional05.AsString + ' - ' + Dados.ImpostosDescricao.AsString;
                 end;
              end
           end;
           if Trim(NotasTerceirosCodigo_Adicional06.AsString) <> '' then begin
              if Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional06.AsString, [loCaseInsensitive]) then begin
                 if ImpostosClassificacao_Financeira.AsString = '' then begin
                    mErro := true;
                    mImp  := mImp + #13+NotasTerceirosCodigo_Adicional06.AsString + ' - ' + Dados.ImpostosDescricao.AsString;
                 end;
              end
           end;
           if mErro then begin
              MessageDlg('Erro!'+#13+#13+'Alguns impostos da nota precisam ser parametrizados corretamente para gerar o contas a pagar.'+#13+mImp+#13+#13+'Lançamentos financeiros não serão gerados.', mtError, [mbOK], 0);
              Abort;
           end;

           // Verifica se existe lançamentos ja gerados.
           If TabParcelas.RecordCount = 0 then begin
              MessageDlg('Não existem parcelas para gerar títulos no financeiro?', mtConfirmation, [mbOK], 0);
              Abort;
           End;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData) AND (Documento = :pDocumento) AND (Numero_Documento = :pNumeroDOC) AND (Fornecedor = :pFornecedor)' );
           PagarReceber.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
           PagarReceber.ParamByName('pDocumento').AsString   := NotasTerceirosTipo.Value;
           PagarReceber.ParamByName('pNumeroDOC').AsString   := NotasTerceirosNota.AsString;
           PagarReceber.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
           PagarReceber.Open;

           If PagarReceber.RecordCount <> 0 then begin
              If MessageDlg('Atenção !'+#13+#13+'Já foram geradas as duplicatas para esta nota fiscal no financeiro.'+#13+#13+'Deseja substituir as duplicatas existentes ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                 Abort;
           End;
           {
           // Apaga as baixas realizadas anteriormente.
           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE Registro IN(SELECT Baixa_Numero FROM PagarReceber WHERE Data_Documento = :pData AND Documento = :pDocumento AND Numero_Documento = :pNumeroDoc AND Fornecedor = :pFornecedor)');
           PagarReceberBaixas.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
           PagarReceberBaixas.ParamByName('pDocumento').AsString   := NotasTerceirosTipo.Value;
           PagarReceberBaixas.ParamByName('pNumeroDOC').AsString   := NotasTerceirosNota.AsString;
           PagarReceberBaixas.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
           PagarReceberBaixas.Execute;
           }
           PagarReceberBaixas.SQL.Clear;
           PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Data = :pData' );
           PagarReceberBaixas.ParamByName('pData').AsDate := NotasTerceirosData_Emissao.Value;
           PagarReceberBaixas.Open;

           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE (Data_Documento = :pData) AND (Documento = :pDocumento) AND (Numero_Documento = :pNumeroDOC) AND (Fornecedor = :pFornecedor)' );
           PagarReceber.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
           PagarReceber.ParamByName('pDocumento').AsString   := NotasTerceirosTipo.Value;
           PagarReceber.ParamByName('pNumeroDOC').AsString   := NotasTerceirosNota.AsString;
           PagarReceber.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
           PagarReceber.Execute;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData)' );
           PagarReceber.ParamByName('pData').AsDate := NotasTerceirosData_Emissao.Value;
           PagarReceber.Open;

           // Deleta os impostos da nota de servico.
           If (mTipoNF = 2) and (PagarReceber.RecordCount <> 0) then begin
              If NotasTerceirosValor_Adicional01.Value <> 0 then begin
                 If Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional01.Value, [loCaseInsensitive]) = True then begin
                    if PagarReceber.Locate('Documento;Numero_Documento;Orgao', VarArrayOf([NotasTerceirosData_Emissao.Value, NotasTerceirosTipo.Value, NotasTerceirosNota.AsString, ImpostosOrgao.Value]), [loCaseInsensitive] ) then
                       PagarReceber.Delete;
                 end;
              End;
              If NotasTerceirosValor_Adicional02.Value <> 0 then begin
                 If Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional02.Value, [loCaseInsensitive]) then begin
                    if PagarReceber.Locate('Documento;Numero_Documento;Orgao', VarArrayOf([NotasTerceirosData_Emissao.Value, NotasTerceirosTipo.Value, NotasTerceirosNota.AsString, ImpostosOrgao.Value]), [loCaseInsensitive] ) then
                       PagarReceber.Delete;
                 end;
              End;
              If NotasTerceirosValor_Adicional03.Value <> 0 then begin
                 If Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional03.Value, [loCaseInsensitive]) then begin
                    if PagarReceber.Locate('Documento;Numero_Documento;Orgao', VarArrayOf([NotasTerceirosData_Emissao.Value, NotasTerceirosTipo.Value, NotasTerceirosNota.AsString, ImpostosOrgao.Value]), [loCaseInsensitive] ) then
                       PagarReceber.Delete;
                 end;
              End;
              If NotasTerceirosValor_Adicional04.Value <> 0 then begin
                 If Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional04.Value, [loCaseInsensitive]) then begin
                    if PagarReceber.Locate('Documento;Numero_Documento;Orgao', VarArrayOf([NotasTerceirosData_Emissao.Value, NotasTerceirosTipo.Value, NotasTerceirosNota.AsString, ImpostosOrgao.Value]), [loCaseInsensitive] ) then
                       PagarReceber.Delete;
                 end;
              End;
              If NotasTerceirosValor_Adicional05.Value <> 0 then begin
                 If Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional05.Value, [loCaseInsensitive]) then begin
                    if PagarReceber.Locate('Documento;Numero_Documento;Orgao', VarArrayOf([NotasTerceirosData_Emissao.Value, NotasTerceirosTipo.Value, NotasTerceirosNota.AsString, ImpostosOrgao.Value]), [loCaseInsensitive] ) then
                       PagarReceber.Delete;
                 end;
              End;
              If NotasTerceirosValor_Adicional06.Value <> 0 then begin
                 If Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional06.Value, [loCaseInsensitive]) then begin
                    if PagarReceber.Locate('Documento;Numero_Documento;Orgao', VarArrayOf([NotasTerceirosData_Emissao.Value, NotasTerceirosTipo.Value, NotasTerceirosNota.AsString, ImpostosOrgao.Value]), [loCaseInsensitive] ) then
                       PagarReceber.Delete;
                 end;
              End;
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData)' );
              PagarReceber.ParamByName('pData').AsDate := NotasTerceirosData_Emissao.Value;
              PagarReceber.Open;
           End;

           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('SELECT * FROM TabParcelas WHERE (Registro = :pRegistro)');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(NotasTerceirosNota.Value))+Trim(InttoStr(NotasTerceirosFornecedor.Value));
           TabParcelas.Open;
           TabParcelas.First;

           if cTipo.ItemIndex = 0 then begin
              if Trim(cClassificacao.Text) <> '' then begin
                 while not TabParcelas.Eof do begin
                       tProvisao.SQL.Clear;
                       tProvisao.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
                       tProvisao.Open;

                       ClassificacaoFinanceira.Locate('Codigo', NotasTerceirosClassificacao.Value, [loCaseInsensitive]);

                       PagarReceber.Append;
                                    PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                                    PagarReceberTipo.Value             := mTipo;
                                    PagarReceberClassificacao.Value    := ClassificacaoFinanceiraCodigo.Value;
                                    PagarReceberCentro_Custo.Value     := NotasTerceirosCentro_Custo.Value;
                                    PagarReceberData_Documento.Value   := NotasTerceirosData_Emissao.Value;
                                    PagarReceberData_Vencimento.Value  := TabParcelasVencimento.Value;
                                    PagarReceberValor_Documento.Value  := NotasTerceirosValor_TotalNota.Value;
                                    PagarReceberValor_Parcela.Value    := TabParcelasValor.Value;
                                    PagarReceberMulta.Value            := 0;
                                    PagarReceberJuros.Value            := 0;
                                    PagarReceberDesconto.Value         := 0;
                                    PagarReceberValor_Total.Value      := TabParcelasValor.Value;
                                    PagarReceberValor_Operacao.Value   := TabParcelasValor.Value;
                                    PagarReceberValor_Baixado.Value    := 0;
                                    PagarReceberFornecedor.Value       := NotasTerceirosFornecedor.Value;
                                    PagarReceberDocumento.Value        := NotasTerceirosTipo.Value;
                                    PagarReceberNumero_Documento.Value := NotasTerceirosNota.AsString;
                                    PagarReceberProcesso.Value         := NotasTerceirosProcesso.Value;
                                    PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                    PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.AsBoolean;
                                    PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.AsBoolean;
                                    PagarReceberFiscal.Value           := NotasTerceirosNota.AsString;
                                    PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                    if trim(cBanco.Text) <> '' then
                                       PagarReceberBanco.Value            := BancosCodigo.Value;
                                    If mTipoNF = 2 then
                                       PagarReceberTipo_Nota.Value := 'ST'   // ST = Serviço Tomado.
                                    else
                                       PagarReceberTipo_Nota.Value := 'NT';  // NC = Nota de Terceiros.

                                    if TabParcelasAdiantamento.asboolean then begin
                                       PagarReceberAdiantamento_Numero.Value := NotasTerceirosFornecedor.Value;
                                    end;
                                    PagarReceberEmpresa.Value := Menu_Principal.mEmpresa;
                                    PagarReceberFilial.Value  := Empresas.FieldByName('Numero_Filial').asinteger;
                       PagarReceber.Post;

                       //********************************************************************************************************
                       // Caso seja adiantamento, gera a baixa do titulo.
                       if TabParcelasAdiantamento.asboolean then begin
                          Orgaos.SQL.Clear;
                          Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos ORDER BY Nome');
                          Orgaos.Open;

                          Screen.Cursor := crSQLWait;
                          tRegistroBaixa.sql.clear;
                          tRegistroBaixa.sql.add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PagarReceberBaixas');
                          tRegistroBaixa.Open;
                          PagarReceberBaixas.Append;
                                             PagarReceberBaixasRegistro.Value            := tRegistroBaixa.FieldByName('Registro').AsInteger;
                                             PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                                             PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.AsDateTime;
                                             PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                             PagarReceberBaixasValor.Value               := PagarReceberValor_Total.AsCurrency;
                                             //PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                                             PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                             PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                             PagarReceberBaixasObservacao.Value          := 'Pagamento referente a adiantamento nº '+ PagarReceberAdiantamento_Numero.AsString;
                                             //PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
                                             PagarReceberBaixasMulta.Value               := PagarReceberMulta.Value;
                                             PagarReceberBaixasJuros.Value               := PagarReceberJuros.Value;
                                             PagarReceberBaixasDesconto.Value            := PagarReceberDesconto.Value;
                          PagarReceberBaixas.Post;
                          tRegistroBaixa.Close;

                          // Grava o numero da baixa no titulo.
                          PagarReceber.Edit;
                                       PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                                       PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
                          PagarReceber.Post;
                          {
                          // Lançamento contabil de baixa da prestação de conta "Quando há o número do adiantamento".
                          If PagarReceberTipo.Value = 'P' then
                             ChecaConta(ClassificacaoFinanceiraPagamento_Conta.AsString, BancosPlano_Contas.AsString);

                          If (mContaDebito <> '') or (mContaCredito <> '') then begin
                             // Gera o laçamento contabil de baixa.
                             LancamentoContabil(PagarReceberData_Vencimento.AsDateTime,
                                                mContaDebito,
                                                mContaCredito,
                                                PagarReceberProcesso.AsString,
                                                PagarReceberNumero_Documento.AsString,
                                                PagarReceberValor_Total.AsCurrency,
                                                ClassificacaoFinanceiraPagamento_Historico.AsInteger,
                                                PagarReceberNumero.AsInteger,
                                                PagarReceberData_Documento.AsDateTime,
                                                'N',
                                                'FB',
                                                'FINANC.BAIXA PREST.> ' + PagarReceber.FieldByName('Numero').AsString);
                          End;
                          }
                       End;

                       //********************************************************************************************************
                       tProvisao.Close;
                       TabParcelas.Next;
                 end;
              end;
           end;

           // Gerando os lançamentos pelas despesas separadamente.
           if cTipo.ItemIndex = 1 then begin
              NotasTerceirosItens.SQL.Clear;
              NotasTerceirosItens.SQL.Add('SELECT *');
              NotasTerceirosItens.SQL.Add('FROM   NotasTerceirosItens');
              NotasTerceirosItens.SQL.Add('WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn');
              NotasTerceirosItens.SQL.Add('AND   ISNULL((SELECT Classificacao FROM Produtos WHERE Codigo = Codigo_Mercadoria), '''') <> '''' ');
              NotasTerceirosItens.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
              NotasTerceirosItens.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
              NotasTerceirosItens.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.Value;
              NotasTerceirosItens.Open;
              NotasTerceirosItens.First;

              while not NotasTerceirosItens.Eof do begin
                    tProvisao.SQL.Clear;
                    tProvisao.SQL.Add('SELECT ISNULL(MAX(Numero),0)+1 AS Numero FROM PagarReceber');
                    tProvisao.Open;

                    Produtos.SQL.Clear;
                    Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo = :pCod');
                    Produtos.ParamByName('pCod').asinteger := NotasTerceirosItensCodigo_Mercadoria.asinteger;
                    Produtos.Open;

                    ClassificacaoFinanceira.Locate('Codigo', ProdutosClassificacao.Value, [loCaseInsensitive]);

                    PagarReceber.Append;
                                 PagarReceberNumero.Value           := tProvisaoNumero.Value;
                                 PagarReceberTipo.Value             := mTipo;
                                 PagarReceberClassificacao.Value    := ClassificacaoFinanceiraCodigo.Value;
                                 PagarReceberCentro_Custo.Value     := NotasTerceirosCentro_Custo.Value;
                                 PagarReceberData_Documento.Value   := NotasTerceirosData_Emissao.Value;
                                 PagarReceberData_Vencimento.Value  := NotasTerceirosData_Emissao.Value;
                                 PagarReceberValor_Documento.Value  := NotasTerceirosValor_TotalNota.Value;
                                 PagarReceberValor_Parcela.Value    := NotasTerceirosItensValor_Liquido.Value;
                                 PagarReceberMulta.Value            := 0;
                                 PagarReceberJuros.Value            := 0;
                                 PagarReceberDesconto.Value         := 0;
                                 PagarReceberValor_Total.Value      := NotasTerceirosItensValor_Liquido.Value;
                                 PagarReceberValor_Operacao.Value   := NotasTerceirosItensValor_Liquido.Value;
                                 PagarReceberValor_Baixado.Value    := 0;
                                 PagarReceberFornecedor.Value       := NotasTerceirosFornecedor.Value;
                                 PagarReceberDocumento.Value        := NotasTerceirosTipo.Value;
                                 PagarReceberNumero_Documento.Value := NotasTerceirosNota.AsString;
                                 PagarReceberProcesso.Value         := NotasTerceirosItensProcesso.Value;
                                 PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                 PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.AsBoolean;
                                 PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.AsBoolean;
                                 PagarReceberFiscal.Value           := NotasTerceirosNota.AsString;
                                 PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                 PagarReceberBanco.Value            := BancosCodigo.Value;
                                 PagarReceberTipo_Nota.Value        := 'ST';
                                 PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                 PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
                    PagarReceber.Post;
                    tProvisao.Close;
                    NotasTerceirosItens.Next;
              end;
           end;

           // Gera os lançamentos dos impostos no financeiro.
           If mTipoNF = 2 then LancamentoImpostos;
      end;

      { GERA O LANÇAMENTO DE PROVISÃO NA CONTABILIDADE.}
      With Dados, dmFiscal, dmContab do begin
           // Apaga os lançamentos da contabilidade.
           {
           Lancamentos.SQL.Clear;
           Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE (Data = :pData) AND (Numero = :pNumero) OR (Numero = :A1) OR (Numero = :A2) OR (Numero = :A3) OR (Numero = :A4) OR (Numero = :A5) OR (Numero = :A6)');
           Lancamentos.ParamByName('pData').AsDate      := NotasTerceirosData_Emissao.Value;
           Lancamentos.ParamByName('pNumero').AsInteger := NotasTerceirosLancamento_Nota.AsInteger;
           Lancamentos.ParamByName('A1').AsInteger      := NotasTerceirosLancamento_Adicional01.AsInteger;
           Lancamentos.ParamByName('A2').AsInteger      := NotasTerceirosLancamento_Adicional02.AsInteger;
           Lancamentos.ParamByName('A3').AsInteger      := NotasTerceirosLancamento_Adicional03.AsInteger;
           Lancamentos.ParamByName('A4').AsInteger      := NotasTerceirosLancamento_Adicional04.AsInteger;
           Lancamentos.ParamByName('A5').AsInteger      := NotasTerceirosLancamento_Adicional05.AsInteger;
           Lancamentos.ParamByName('A6').AsInteger      := NotasTerceirosLancamento_Adicional06.AsInteger;
           Lancamentos.Execute;

           Lancamentos.SQL.Clear;
           Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE (Data = :pData)');
           Lancamentos.ParamByName('pData').AsDate := NotasTerceirosData_Entrada.Value;
           Lancamentos.Open;

           ClassificacaoFinanceira.Locate('Codigo', NotasTerceirosClassificacao.Value, [loCaseInsensitive]);

           tLancamentos.SQL.Clear;
           tLancamentos.SQL.Add('SELECT  Numero   = (SELECT MAX(Numero)   FROM Lancamentos WHERE YEAR(Data) = :pAno)');
           tLancamentos.SQL.Add('       ,Registro = (SELECT MAX(Registro) FROM Lancamentos)');
           tLancamentos.ParamByName('pAno').AsInteger := YearOf(NotasTerceirosData_Entrada.AsDateTime);
           tLancamentos.Open;

           NotasTerceiros.Edit;

           // Cria o lançamento pelo total ou valor líquido da nota fiscal.
           mContaDebito  := '';
           mContaCredito := '';
           If Trim(ClassificacaoFinanceiraProvisao_ContaC.Value) = 'FORNECEDOR' then
              mContaCredito := FornecedoresConta.AsString
           else
              mContaCredito := ClassificacaoFinanceiraProvisao_ContaC.AsString;

           If Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) = 'FORNECEDOR' then
              mContaDebito := FornecedoresConta.AsString
           else
              mContaDebito := ClassificacaoFinanceiraProvisao_ContaD.AsString;

           If (mContaCredito <> '') or (mContaDebito <> '') then begin
              Lancamentos.Append;
                          LancamentosRegistro.Value         := (tLancamentos.FieldbyName('Registro').AsInteger + 1);
                          LancamentosNumero.Value           := (tLancamentos.FieldbyName('Numero').AsInteger + 1);
                          LancamentosEmpresa.Value          := EmpresasCNPJ.Value;
                          LancamentosData.Value             := NotasTerceirosData_Entrada.Value;
                          LancamentosConta_Credito.Value    := mContaCredito;
                          LancamentosConta_Debito.Value     := mContaDebito;
                          LancamentosHistorico_Codigo.Value := ClassificacaoFinanceiraProvisao_Historico.Value;

                          If Trim(Dados.ReferenciasFiscaisClassificacao_TotalProdutos.AsString) <> '' then
                             LancamentosValor.Value := NotasTerceirosValor_TotalLiquido.Value;
                          If Trim(Dados.ReferenciasFiscaisClassificacao_TotalNota.AsString) <> '' then
                             LancamentosValor.Value := NotasTerceirosValor_TotalNota.Value;

                          LancamentosDocumento.Value      := NotasTerceirosNota.AsString;
                          LancamentosData_Documento.Value := NotasTerceirosData_Emissao.Value;
                          If mTipoNF = 2 then
                             LancamentosTipo_Documento.Value := 'ST'   // ST = Serviço tomado.
                          else
                             LancamentosTipo_Documento.Value := 'NT';  // NT = Nota de terceiros.
                          If HistoricosComplemento.Value = True then
                             LancamentosHistorico_Complemento.Value := NotasTerceirosNota.AsString + ' DE ' + Trim(FornecedoresNome.AsString);
              Lancamentos.Post;
           End;
           tLancamentos.Close;
           
           NotasTerceirosLancamento_Nota.Value := LancamentosNumero.Value;

           // Cria o lançamento do ICMS Operacional.
           If Trim(ReferenciasFiscaisClassificacao_ICMSOper.AsString) <> '' then begin
              ClassificacaoFinanceira.Locate('Codigo', ReferenciasFiscaisClassificacao_ICMSOper.Value, [loCaseInsensitive]);

              mContaDebito  := '';
              mContaCredito := '';
              If Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) = 'FORNECEDOR' then
                 mContaDebito := FornecedoresConta.AsString
              else
                 mContaDebito := ClassificacaoFinanceiraProvisao_ContaD.AsString;

              If Trim(ClassificacaoFinanceiraProvisao_ContaC.Value) = 'FORNECEDOR' then
                 mContaCredito := FornecedoresConta.AsString
              else
                 mContaCredito := ClassificacaoFinanceiraProvisao_ContaC.AsString;

              If NotasTerceirosValor_ICMSOper.Value <> 0 then begin
                 If (mContaDebito <> '') or (mContaCredito <> '') then begin
                    tLancamentos.Open;
                    Lancamentos.Append;
                                LancamentosRegistro.Value         := (tLancamentos.FieldbyName('Registro').AsInteger + 1);
                                LancamentosNumero.Value           := (tLancamentos.FieldbyName('Numero').AsInteger + 1);
                                LancamentosEmpresa.Value          := EmpresasCNPJ.Value;
                                LancamentosData.Value             := NotasTerceirosData_Entrada.Value;
                                LancamentosConta_Debito.Value     := mContaDebito;
                                LancamentosConta_Credito.Value    := mContaCredito;
                                LancamentosHistorico_Codigo.Value := ClassificacaoFinanceiraProvisao_Historico.Value;
                                LancamentosValor.Value            := NotasTerceirosValor_ICMSOper.Value;
                                LancamentosDocumento.Value        := NotasTerceirosNota.AsString;
                                LancamentosData_Documento.Value   := NotasTerceirosData_Emissao.Value;
                                If mTipoNF = 2 then
                                   LancamentosTipo_Documento.Value := 'ST'   // ST = Serviço tomado.
                                else
                                   LancamentosTipo_Documento.Value := 'NT';  // NT = Nota de terceiros.

                                If HistoricosComplemento.Value = True then
                                   LancamentosHistorico_Complemento.Value := NotasTerceirosNota.AsString + ' DE ' + Trim(FornecedoresNome.AsString);
                    Lancamentos.Post;
                    tLancamentos.Close;

                    NotasTerceirosLancamento_Nota.Value := LancamentosNumero.Value;
                    NotasTerceirosModalidade_Pgto.Value := ModalidadesPgtoCodigo.Value;
                 End;
              End;
           End;

           If mTipoNF = 2 then begin
              // Cria o lançamento pelo valor adicional 1.
              If NotasTerceirosValor_Adicional01.Value <> 0 then  begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional01.Value, [loCaseInsensitive]);
                 If Trim(ImpostosClassificacao_Financeira.AsString) <> '' then begin
                    ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

                    mContaDebito  := '';
                    mContaCredito := '';
                    If Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) = 'FORNECEDOR' then
                       mContaDebito := FornecedoresConta.AsString
                    else
                       mContaDebito := ClassificacaoFinanceiraProvisao_ContaD.AsString;

                    If Trim(ClassificacaoFinanceiraProvisao_ContaC.Value) = 'FORNECEDOR' then
                       mContaCredito := FornecedoresConta.AsString
                    else
                       mContaCredito := ClassificacaoFinanceiraProvisao_ContaC.AsString;

                    If (mContaDebito <> '') or (mContaCredito <> '') then begin
                       tLancamentos.Open;
                       Lancamentos.Append;
                                   LancamentosRegistro.Value              := (tLancamentos.FieldbyName('Registro').AsInteger + 1);
                                   LancamentosNumero.Value                := (tLancamentos.FieldbyName('Numero').AsInteger + 1);
                                   LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                                   LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                                   LancamentosConta_Debito.Value          := mContaDebito;
                                   LancamentosConta_Credito.Value         := mContaCredito;
                                   LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                                   LancamentosHistorico_Complemento.Value := NotasTerceirosNota.AsString + ' DE '+Trim(FornecedoresNome.Value);
                                   LancamentosValor.Value                 := NotasTerceirosValor_Adicional01.Value;
                                   LancamentosTipo_Documento.Value        := 'ST';  // ST = Serviço tomado.
                       Lancamentos.Post;
                       NotasTerceirosLancamento_Adicional01.Value := LancamentosNumero.Value;
                    End;
                    tLancamentos.Close;
                 End;
              end;

              // Cria o lançamento pelo valor adicional 2.
              If NotasTerceirosValor_Adicional02.Value <> 0 then  begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional02.Value, [loCaseInsensitive]);
                 If Trim(ImpostosClassificacao_Financeira.AsString) <> '' then begin
                    ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

                    mContaDebito  := '';
                    mContaCredito := '';
                    If Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) = 'FORNECEDOR' then
                       mContaDebito := Trim(ApenasNumeros(FornecedoresConta.AsString))
                    else
                       mContaDebito := Trim(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaD.AsString));

                    If Trim(ClassificacaoFinanceiraProvisao_ContaC.Value) = 'FORNECEDOR' then
                       mContaCredito := Trim(ApenasNumeros(FornecedoresConta.AsString))
                    else
                       mContaCredito := Trim(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaC.AsString));

                    If (Trim(mContaDebito) <> '') or (Trim(mContaCredito) <> '') then begin
                        tLancamentos.Open;
                        Lancamentos.Append;
                                    LancamentosRegistro.Value              := (tLancamentos.FieldbyName('Registro').AsInteger + 1);
                                    LancamentosNumero.Value                := (tLancamentos.FieldbyName('Numero').AsInteger + 1);
                                    LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                                    LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                                    LancamentosConta_Debito.Value          := mContaDebito;
                                    LancamentosConta_Credito.Value         := mContaCredito;
                                    LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                                    LancamentosHistorico_Complemento.Value := NotasTerceirosNota.AsString + ' DE '+Trim(FornecedoresNome.Value);
                                    LancamentosValor.Value                 := NotasTerceirosValor_Adicional02.Value;
                                    LancamentosTipo_Documento.Value        := 'ST';  // ST = Serviço tomado.
                        Lancamentos.Post;
                        NotasTerceirosLancamento_Adicional02.Value := LancamentosNumero.Value;
                        tLancamentos.Close;
                    End;
                 End;
              End;

              // Cria o lançamento pelo valor adicional 3.
              If NotasTerceirosValor_Adicional03.Value <> 0 then  begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional03.Value, [loCaseInsensitive]);
                 If Trim(ImpostosClassificacao_Financeira.AsString) <> '' then begin
                    ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

                    mContaDebito  := '';
                    mContaCredito := '';
                    If Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) = 'FORNECEDOR' then
                       mContaDebito := Trim(ApenasNumeros(FornecedoresConta.AsString))
                    else
                       mContaDebito := Trim(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaD.AsString));

                    If Trim(ClassificacaoFinanceiraProvisao_ContaC.Value) = 'FORNECEDOR' then
                       mContaCredito := Trim(ApenasNumeros(FornecedoresConta.AsString))
                    else
                       mContaCredito := Trim(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaC.AsString));

                    If (Trim(mContaDebito) <> '') or (Trim(mContaCredito) <> '') then begin
                        tLancamentos.Open;
                        Lancamentos.Append;
                                    LancamentosRegistro.Value              := (tLancamentos.FieldbyName('Registro').AsInteger + 1);
                                    LancamentosNumero.Value                := (tLancamentos.FieldbyName('Numero').AsInteger + 1);
                                    LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                                    LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                                    LancamentosConta_Debito.Value          := mContaDebito;
                                    LancamentosConta_Credito.Value         := mContaCredito;
                                    LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                                    LancamentosHistorico_Complemento.Value := NotasTerceirosNota.AsString + ' DE '+Trim(FornecedoresNome.Value);
                                    LancamentosValor.Value                 := NotasTerceirosValor_Adicional03.Value;
                                    LancamentosTipo_Documento.Value        := 'ST';  // ST = Serviço tomado.
                        Lancamentos.Post;
                        NotasTerceirosLancamento_Adicional03.Value := LancamentosNumero.Value;
                        tLancamentos.Close;
                    End;
                 End;
              End;

              // Cria o lançamento pelo valor adicional 4.
              If NotasTerceirosValor_Adicional04.Value <> 0 then  begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional04.Value, [loCaseInsensitive]);
                 If Trim(ImpostosClassificacao_Financeira.AsString) <> '' then begin
                    ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

                    mContaDebito  := '';
                    mContaCredito := '';
                    If Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) = 'FORNECEDOR' then
                       mContaDebito := Trim(ApenasNumeros(FornecedoresConta.AsString))
                    else
                       mContaDebito := Trim(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaD.AsString));

                    If Trim(ClassificacaoFinanceiraProvisao_ContaC.Value) = 'FORNECEDOR' then
                       mContaCredito := Trim(ApenasNumeros(FornecedoresConta.AsString))
                    else
                       mContaCredito := Trim(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaC.AsString));

                    If (Trim(mContaDebito) <> '') or (Trim(mContaCredito) <> '') then begin
                       tLancamentos.Open;
                       Lancamentos.Append;
                                   LancamentosRegistro.Value              := (tLancamentos.FieldbyName('Registro').AsInteger + 1);
                                   LancamentosNumero.Value                := (tLancamentos.FieldbyName('Numero').AsInteger + 1);
                                   LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                                   LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                                   LancamentosConta_Debito.Value          := mContaDebito;
                                   LancamentosConta_Credito.Value         := mContaCredito;
                                   LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                                   LancamentosHistorico_Complemento.Value := NotasTerceirosNota.AsString + ' DE '+Trim(FornecedoresNome.Value);
                                   LancamentosValor.Value                 := NotasTerceirosValor_Adicional04.Value;
                                   LancamentosTipo_Documento.Value        := 'ST';  // ST = Serviço tomado.
                       Lancamentos.Post;
                       NotasTerceirosLancamento_Adicional04.Value := LancamentosNumero.Value;
                       tLancamentos.Close;
                    End;
                 End;
              End;

              // Cria o lançamento pelo valor adicional 5.
              If NotasTerceirosValor_Adicional05.Value <> 0 then  begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional05.Value, [loCaseInsensitive]);
                 If Trim(ImpostosClassificacao_Financeira.AsString) <> '' then begin
                    ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

                    mContaDebito  := '';
                    mContaCredito := '';
                    If Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) = 'FORNECEDOR' then
                       mContaDebito := Trim(ApenasNumeros(FornecedoresConta.AsString))
                    else
                       mContaDebito := Trim(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaD.AsString));

                    If Trim(ClassificacaoFinanceiraProvisao_ContaC.Value) = 'FORNECEDOR' then
                       mContaCredito := Trim(ApenasNumeros(FornecedoresConta.AsString))
                    else
                       mContaCredito := Trim(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaC.AsString));

                    If (Trim(mContaDebito) <> '') or (Trim(mContaCredito) <> '') then begin
                       tLancamentos.Open;
                       Lancamentos.Append;
                                   LancamentosRegistro.Value              := (tLancamentos.FieldbyName('Registro').AsInteger + 1);
                                   LancamentosNumero.Value                := (tLancamentos.FieldbyName('Numero').AsInteger + 1);
                                   LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                                   LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                                   LancamentosConta_Debito.Value          := mContaDebito;
                                   LancamentosConta_Credito.Value         := mContaCredito;
                                   LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                                   LancamentosHistorico_Complemento.Value := NotasTerceirosNota.AsString + ' DE '+Trim(FornecedoresNome.Value);
                                   LancamentosValor.Value                 := NotasTerceirosValor_Adicional05.Value;
                                   LancamentosTipo_Documento.Value        := 'ST';  // ST = Serviço tomado.
                       Lancamentos.Post;
                       NotasTerceirosLancamento_Adicional05.Value := LancamentosNumero.Value;
                       tLancamentos.Close;
                    End;
                 End;
              End;

              // Cria o lançamento pelo valor adicional 6.
              If NotasTerceirosValor_Adicional06.Value <> 0 then  begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional06.Value, [loCaseInsensitive]);
                 If Trim(ImpostosClassificacao_Financeira.AsString) <> '' then begin
                    ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

                    mContaDebito  := '';
                    mContaCredito := '';
                    If Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) = 'FORNECEDOR' then
                       mContaDebito := Trim(ApenasNumeros(FornecedoresConta.AsString))
                    else
                       mContaDebito := Trim(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaD.AsString));

                    If Trim(ClassificacaoFinanceiraProvisao_ContaC.Value) = 'FORNECEDOR' then
                       mContaCredito := Trim(ApenasNumeros(FornecedoresConta.AsString))
                    else
                       mContaCredito := Trim(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaC.AsString));

                    If (Trim(mContaDebito) <> '') or (Trim(mContaCredito) <> '') then begin
                       tLancamentos.Open;
                       Lancamentos.Append;
                                   LancamentosRegistro.Value              := (tLancamentos.FieldbyName('Registro').AsInteger + 1);
                                   LancamentosNumero.Value                := (tLancamentos.FieldbyName('Numero').AsInteger + 1);
                                   LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                                   LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                                   LancamentosConta_Debito.Value          := mContaDebito;
                                   LancamentosConta_Credito.Value         := mContaCredito;
                                   LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                                   LancamentosHistorico_Complemento.Value := NotasTerceirosNota.AsString + ' DE '+Trim(FornecedoresNome.Value);
                                   LancamentosValor.Value                 := NotasTerceirosValor_Adicional06.Value;
                                   LancamentosTipo_Documento.Value        := 'ST';  // ST = Serviço tomado.
                       Lancamentos.Post;
                       NotasTerceirosLancamento_Adicional06.Value := LancamentosNumero.Value;
                       tLancamentos.Close;
                    End;
                 End;
              End;
           End;
           NotasTerceiros.Post;
           tLancamentos.Close;
           }

           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(NotasTerceirosNota.Value))+Trim(InttoStr(NotasTerceirosFornecedor.Value));
           TabParcelas.Execute;

           // Log de operações do sistema.
           LogDados(PagarReceber, 'Gerado Contas a pagar de Nota Serviço Tomado ['+NotasTerceirosNota.AsString+'] '+cClassificacao.text+' / '+cFormaPgto.Text+' / '+cBanco.text, dsInsert);
      End;

      Showmessage('Títulos foram criados no financeiro.');
      
      Close;
end;

procedure TModalidadePgto_Parcelas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.TabParcelas.Close;
      ModalidadePgto_Parcelas.Release;
      ModalidadePgto_Parcelas := nil;
end;

procedure TModalidadePgto_Parcelas.bCancelarClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(NotasTerceirosNota.Value))+Trim(InttoStr(NotasTerceirosFornecedor.Value));
           TabParcelas.Execute;
      End;

      Close;
end;

procedure TModalidadePgto_Parcelas.GradeCellClick(Column: TColumn);
begin
     with Dados do begin
          if Column.FieldName = 'Adiantamento' then begin
             TabParcelas.Edit;
                         TabParcelas.FieldByName('Adiantamento').value := not TabParcelas.FieldByName('Adiantamento').asboolean;
             TabParcelas.post;
          end;
     end;
end;

procedure TModalidadePgto_Parcelas.GradeExit(Sender: TObject);
begin
      With dmFiscal, Dados do begin
           TabParcelas.First;
           cValor.Value := 0;
           While not TabParcelas.Eof do begin
                 cValor.Value := cValor.Value + TabParcelasValor.Value;
                 TabParcelas.Next;
           End;
           TabParcelas.First;
      End;
end;

procedure TModalidadePgto_Parcelas.FormShow(Sender: TObject);
begin
       With Dados, dmFiscal do begin
            ClassificacaoFinanceira.SQL.Clear;
            ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = ''P'') AND (ISNULL(Desativada, 0) <> 1) ORDER BY Descricao');
            ClassificacaoFinanceira.Open;

            Bancos.SQL.Clear;
            Bancos.SQL.Add('SELECT * FROM Bancos WHERE Desativado <> 1 ORDER BY Nome');
            Bancos.Open;

            ClassificacaoFinanceira.Locate('Codigo', ReferenciasFiscaisClassificacao_TotalNota.Value, [loCaseInsensitive]);
            cClassificacao.KeyValue := ReferenciasFiscaisClassificacao_TotalNota.Value;

            //cTotalNota.Value := NotasTerceirosValor_TotalLiquido.Value;
            cTotalNota.Value := NotasTerceirosValor_TotalNota.Value;
       End;
end;

procedure TModalidadePgto_Parcelas.lFormaPgtoClick(Sender: TObject);
begin
        Cadastro_ModalidadesPagamento := TCadastro_ModalidadesPagamento.Create(Self);
        Cadastro_ModalidadesPagamento.Caption := Caption;
        Cadastro_ModalidadesPagamento.ShowModal;
        Dados.ModalidadesPgto.Open;
end;

{ GERA OS LANÇAMENTOS DOS IMPOSTOS DA NOTA DE SERVIÇO NO FINANCEIRO. }
procedure TModalidadePgto_Parcelas.LancamentoImpostos;
begin
      With Dados, dmFiscal do begin
           // Valores adicionais da nota "Impostos".
           If NotasTerceirosValor_Adicional01.Value <> 0 then
              AdicionaFinanceiro(NotasTerceirosCodigo_Adicional01.Value, NotasTerceirosValor_Adicional01.Value);
           If NotasTerceirosValor_Adicional02.Value <> 0 then
              AdicionaFinanceiro(NotasTerceirosCodigo_Adicional02.Value, NotasTerceirosValor_Adicional02.Value);
           If NotasTerceirosValor_Adicional03.Value <> 0 then
              AdicionaFinanceiro(NotasTerceirosCodigo_Adicional03.Value, NotasTerceirosValor_Adicional03.Value);
           If NotasTerceirosValor_Adicional04.Value <> 0 then
              AdicionaFinanceiro(NotasTerceirosCodigo_Adicional04.Value, NotasTerceirosValor_Adicional04.Value);
           If NotasTerceirosValor_Adicional05.Value <> 0 then
              AdicionaFinanceiro(NotasTerceirosCodigo_Adicional05.Value, NotasTerceirosValor_Adicional05.Value);
           If NotasTerceirosValor_Adicional06.Value <> 0 then
              AdicionaFinanceiro(NotasTerceirosCodigo_Adicional06.Value, NotasTerceirosValor_Adicional06.Value);
      End;
end;

{ Cria o registro na tabela "PagarReceber".}
procedure TModalidadePgto_Parcelas.AdicionaFinanceiro(Imposto: String; Valor: Currency);
Var
   mDataVenc: TDate;
   mDia, mAno, mMes: string;
begin
      With Dados, dmFiscal do begin
           Impostos.Locate('Codigo', Imposto, [loCaseInsensitive]);

           If Trim(ImpostosClassificacao_Financeira.Value) > '' then begin
              ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

              // Deleta o lançamento do financeiro e adiciona um novo.
              if mTipoNF <> 2 then begin
                 If PagarReceber.Locate('Fiscal;Data_Documento;Classificacao;Tipo_Nota', VarArrayOf([NotasTerceirosNota.AsString, NotasTerceirosData_Emissao.Value, ClassificacaoFinanceiraCodigo.Value,'ST']), [loCaseInsensitive]) = True then
                    PagarReceber.Delete;
              end;      

              tProvisao.SQL.Clear;
              tProvisao.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
              tProvisao.Open;

              mDataVenc := NotasTerceirosData_Emissao.Value;
              If ImpostosDia_Vencimento.AsInteger > 0 then begin
                 mDia := ImpostosDia_Vencimento.AsString;
                 mMes := InttoStr(MonthOf(NotasTerceirosData_Emissao.Value)+1);
                 mAno := InttoStr(YearOf(NotasTerceirosData_Emissao.Value));
                 If MonthOf(NotasTerceirosData_Emissao.Value) = 12 then begin
                    mMes := '1';
                    mAno := InttoStr(YearOf(NotasTerceirosData_Emissao.Value)+1);
                 end;
                 mDataVenc := StrtoDate(mDia+'/'+mMes+'/'+mAno);
              end;    

              PagarReceber.Append;
                           PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                           PagarReceberTipo.Value             := mTipo;
                           PagarReceberClassificacao.Value    := ImpostosClassificacao_Financeira.Value;
                           PagarReceberCentro_Custo.Value     := NotasTerceirosCentro_Custo.Value;
                           PagarReceberData_Documento.Value   := NotasTerceirosData_Emissao.Value;
                           PagarReceberData_Vencimento.Value  := mDataVenc;
                           PagarReceberValor_Documento.Value  := Valor;
                           PagarReceberValor_Parcela.Value    := Valor;
                           PagarReceberMulta.Value            := 0;
                           PagarReceberJuros.Value            := 0;
                           PagarReceberDesconto.Value         := 0;
                           PagarReceberValor_Total.Value      := Valor;
                           PagarReceberValor_Operacao.Value   := Valor;
                           PagarReceberValor_Baixado.Value    := 0;
                           PagarReceberOrgao.Value            := ImpostosOrgao.Value;
                           PagarReceberDocumento.Value        := ImpostosDocumento.Value;
                           PagarReceberNumero_Documento.Value := NotasTerceirosNota.AsString;
                           PagarReceberProcesso.Value         := NotasTerceirosProcesso.Value;
                           PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                           PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceiraCusto_Seletivo.AsBoolean;
                           PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceiraCusto_Entrada.AsBoolean;
                           PagarReceberObservacao.Value       := 'Referente a NF nº '+ Trim(NotasTerceirosNota.AsString) + ' de '+ NotasTerceirosData_Entrada.AsString;
                           PagarReceberFiscal.Value           := NotasTerceirosNota.AsString;
                           PagarReceberTipo_Nota.Value        := 'ST';
                           PagarReceberNIvel.Value            := ClassificacaoFinanceiraNivel.Value;
                           PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                           PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
              PagarReceber.Post;
              tProvisao.Close;
           End;
      end;
end;

procedure TModalidadePgto_Parcelas.StaticText3Click(Sender: TObject);
begin
      Cadastro_ClassificacaoFinanceira := TCadastro_ClassificacaoFinanceira.Create(Self);
      Cadastro_ClassificacaoFinanceira.Caption := Caption;
      Cadastro_ClassificacaoFinanceira.ShowModal;

      With Dados, dmFiscal do begin
           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = ''P'') AND (ISNULL(Desativada, 0) <> 1) ORDER BY Descricao');
           ClassificacaoFinanceira.Open;
      End;
end;

procedure TModalidadePgto_Parcelas.bParcelasClick(Sender: TObject);
var
   mParc:integer;
   mClass:widestring;
begin
      // Gerando as parcelas das duplicatas pela modalidade de pagamento.
      with dmFiscal, Dados do begin
           if cTipo.Itemindex = 0 then begin
              if (mTipoNF = 2) then begin
                 ModalidadeParcelas(NotasTerceirosValor_TotalLiquido.Value, 0, 0, NotasTerceirosData_Emissao.Value, ModalidadesPgtoNumero_Parcelas.Value, ModalidadesPgtoPrazo_Primeira.Value, ModalidadesPgtoPrazo_Demais.Value, NotasTerceirosNota.AsString, NotasTerceirosFornecedor.AsString, ModalidadesPgtoPrazo_Dia.AsInteger, ModalidadesPgtoCodigo.AsInteger);
              end else begin
                 ModalidadeParcelas(NotasTerceirosValor_TotalNota.Value, 0, 0, NotasTerceirosData_Emissao.Value, ModalidadesPgtoNumero_Parcelas.Value, ModalidadesPgtoPrazo_Primeira.Value, ModalidadesPgtoPrazo_Demais.Value, NotasTerceirosNota.AsString, NotasTerceirosFornecedor.AsString, ModalidadesPgtoPrazo_Dia.AsInteger, ModalidadesPgtoCodigo.AsInteger);
              end;
              TabParcelas.First;
              cValor.Value := 0;
              while not TabParcelas.Eof do begin
                    cValor.Value := cValor.Value + TabParcelasValor.Value;
                    TabParcelas.Next;
              end;
              TabParcelas.First;
              Grade.Enabled := cFormaPgto.Text <> '';
           end;
           
           // Gerando os lançamentos pelas despesas.
           if cTipo.ItemIndex = 1 then begin
              if mTipoNF = 2 then begin
                 tClass.sql.clear;
                 //tClass.sql.add('SELECT

                 NotasTerceirosItens.SQL.Clear;
                 NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn');
                 NotasTerceirosItens.ParamByName('pNota').Asinteger := NotasTerceirosNota.AsInteger;
                 NotasTerceirosItens.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.AsDateTime;
                 NotasTerceirosItens.ParamByName('pForn').Asinteger := NotasTerceirosFornecedor.Asinteger;
                 NotasTerceirosItens.Open;
                 NotasTerceirosItens.first;

                 Configuracao.Open;

                 TabParcelas.SQL.Clear;
                 TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
                 TabParcelas.ParamByName('pRegistro').AsString := Trim(NotasTerceirosNota.AsString)+Trim(NotasTerceirosFornecedor.AsString);
                 TabParcelas.Execute;
                 TabParcelas.SQL.Clear;
                 TabParcelas.SQL.Add('SELECT * FROM TabParcelas WHERE (Registro = :pRegistro) ORDER BY Registro, Parcela');
                 TabParcelas.ParamByName('pRegistro').AsString := Trim(NotasTerceirosNota.AsString)+Trim(NotasTerceirosFornecedor.AsString);
                 TabParcelas.Open;
                 mParc := 1;
                 while not NotasTerceirosItens.eof do begin
                       TabParcelas.Append;
                                   TabParcelasRegistro.Value      := Trim(NotasTerceirosNota.AsString)+Trim(NotasTerceirosFornecedor.AsString);
                                   TabParcelasParcela.Value       := '1/'+inttostr(mParc);
                                   TabParcelasVencimento.Value    := NotasTerceirosData_Emissao.Value;
                                   TabParcelasValor.Value         := NotasTerceirosItensValor_Liquido.Value;
                                   TabParcelasValor_Produto.Value := NotasTerceirosItensValor_Liquido.Value;
                                   TabParcelasValor_IPI.Value     := 0;
                                   TabParcelasAdiantamento.Value  := false;
                       TabParcelas.Post;
                       NotasTerceirosItens.Next;
                       inc(mParc);
                 end;

                 tClass.sql.clear;
                 tClass.sql.add('SELECT Item');
                 tClass.sql.add('      ,Descricao = CAST(Codigo_Mercadoria AS Varchar(200))+'': ''+ SUBSTRING(Descricao_Mercadoria, 1, CHARINDEX(''<{'', Descricao_Mercadoria)-1)');
                 tClass.sql.add('FROM   NotasTerceirosItens');
                 tClass.sql.add('WHERE  Nota = :pNota');
                 tClass.sql.add('AND    Data_Emissao = :pData');
                 tClass.sql.add('AND    Fornecedor = :pForn');
                 tClass.sql.add('AND    LTRIM(RTRIM(ISNULL((SELECT Classificacao FROM Produtos WHERE Codigo = Codigo_Mercadoria), ''''))) = '''' ');
                 tClass.sql.add('ORDER  BY Descricao');
                 tClass.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                 tClass.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                 tClass.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.Value;
                 tClass.open;
                 tClass.first;
                 
                 mClass := '';
                 if tClass.recordCount > 0 then begin
                    while not tClass.eof do begin
                          mClass := mClass+PoeZero(3, tClass.fieldbyname('Item').asinteger)+': '+tClass.fieldbyname('Descricao').asstring;
                          tClass.next; 
                    end;
                    MessageDlg('Atenção !'+#13+#13+'Os seguintes itens estão sem a "Classificação Financeira":'+#13+mClass+#13+#13+'Estes lançamentos não seram gerados no financeiro.', mtInformation, [mbOK], 0)
                 end;
              end;
           end;
      end;
end;

procedure TModalidadePgto_Parcelas.bPesqClaClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ClassificacaoFinanceira';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      Dados.Configuracao.open;
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Classificacao.asboolean, 'Dados','Empresa');
      PesquisaGerais.mFiltro := 'AND Desativada <> 1';
      PesquisaGerais.Showmodal;
      cClassificacao.KeyValue := Clipboard.asText;
end;
(*
procedure TModalidadePgto_Parcelas.ChecaConta(ContaD:String; ContaC:String);
begin
      mContaDebito  := '';
      mContaCredito := '';

      with Dados do begin
           If (ApenasNumeros(ContaD) <> '') then mContaDebito  := Trim(ContaD);
           If (ApenasNumeros(ContaC) <> '') then mContaCredito := Trim(ContaC);

           Fornecedores.Locate('Codigo', PagarReceberFornecedor.Value, [loCaseInsensitive]);
           Clientes.Locate('Codigo', PagarReceberCliente.Value, [loCaseInsensitive]);
           Orgaos.Locate('Codigo', PagarReceberOrgao.Value, [loCaseInsensitive]);

           // Conta Debito.
           If ContaD = 'PROCESSO'     then mContaDebito  := Trim(ProcessosDOCConta_Despesas.Value);
           If ContaD = 'CLIENTE'      then mContaDebito  := Trim(ClientesConta_Ativo.AsString);
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

           If ContaD = 'BANCO'        then mContaDebito := Trim(BancosPlano_Contas.Value);
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
           If ContaC = 'PROCESSO'     then mContaCredito := Trim(ProcessosDOCConta_Despesas.Value);
           If ContaC = 'CLIENTE'      then mContaCredito := Trim(ClientesConta_Ativo.AsString);
           If ContaC = 'FORNECEDOR'   then begin
              If Trim(PagarReceber.FieldByName('Fornecedor').AsString) <> '' then
                  mContaCredito := Trim(FornecedoresConta.AsString)
              else
                  mContaCredito := Trim(OrgaosConta.AsString);
           end;

           if ContaC = 'DEVOLUÇÃO' then begin
              if Trim(PagarReceber.FieldByName('Tipo').AsString) <> 'P' then
                 mContaCredito := Trim(FornecedoresConta_Devolucao.AsString)
              else
                 mContaCredito := Trim(ClientesConta_Devolucao.AsString);
           end;

           If ContaC = 'BANCO'        then mContaCredito := Trim(BancosPlano_Contas.Value);
           If ContaC = 'ADIANTAMENTO' then begin
              If ClassificacaoFinanceiraTipo.AsString = 'R' then begin
                 Clientes.Locate('Codigo', PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
                 mContaCredito := Trim(ClientesConta_Adiantamento.AsString)
              end else begin
                 Fornecedores.Locate('Codigo', PagarReceberAdiantamento_Numero.Value, [loCaseInsensitive]);
                 mContaCredito := Trim(FornecedoresConta_Adiantamento.AsString);
              End;
           End;
      end;
end;

// Lançamento contabil.
procedure TModalidadePgto_Parcelas.LancamentoContabil(Data: TDate; ContaD, ContaC, Processo, NotaFiscal: String; Valor: Currency; HistorCod, Finan: Integer; Datanota: TDate; TipoN, Tipo_Nota, Origem: String);
begin
     With Dados, dmContab do begin
          tRegistro.SQL.Clear;
          tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM Lancamentos');
          tRegistro.Open;

          tLancamento.SQL.Clear;
          tLancamento.SQL.Add('SELECT MAX(Numero)+1 AS Numero FROM Lancamentos WHERE(YEAR(Data) = :pAno)');
          tLancamento.ParamByName('pAno').AsInteger := YearOf(PagarReceberData_Documento.AsDateTime);
          tLancamento.Open;

          Historicos.Locate('Codigo', HistorCod, [loCaseInsensitive]);

          Lancamentos.Append;
                      LancamentosRegistro.Value              := tRegistro.FieldByName('Registro').AsInteger;
                      LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger;
                      LancamentosData.Value                  := Data;
                      LancamentosConta_Debito.Value          := ContaD;
                      LancamentosConta_Credito.Value         := ContaC;
                      LancamentosValor.Value                 := Valor;
                      LancamentosHistorico_Codigo.Value      := HistorCod;
                      LancamentosHistorico_Complemento.Value := ConverteHistorico(HistoricosMacro.AsString);
                      LancamentosDocumento.Value             := NotaFiscal;
                      LancamentosData_Documento.Value        := DataNota;
                      LancamentosTipo_Documento.Value        := Tipo_Nota;
                      LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                      LancamentosProcesso_Debito.Value       := PagarReceberProcesso.AsString;
                      LancamentosOrigem.Value                := Origem;
                      LancamentosNumero_Financeiro.Value     := Finan;
          Lancamentos.Post;
     End;
end;

Function TModalidadePgto_Parcelas.ConverteHistorico(Historico: String):String;
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
           For i := 0 to 8 do begin
               mPos := Pos(mMacros[i], Result);
               While mPos <> 0 do begin
                     If mPos <> -1 then begin
                        If i = 0 then Result := RemoveCaracter(mMacros[0], FornecedoresNome.asstring, Result);
                        If i = 1 then Result := RemoveCaracter(mMacros[1], PagarReceberProcesso.Value, Result);
                        If i = 2 then Result := RemoveCaracter(mMacros[2], Dados.ProcessosDocNumero_Declaracao.AsString, Result);
                        If i = 3 then Result := RemoveCaracter(mMacros[3], Dados.ClassificacaoFinanceiraDescricao.Text, Result);
                        If i = 4 then Result := RemoveCaracter(mMacros[4], PagarReceberTipo.Value, result);
                        If i = 5 then Result := RemoveCaracter(mMacros[5], PagarReceberNumero_Documento.Value, Result);
                        If i = 6 then Result := RemoveCaracter(mMacros[6], PagarReceberData_Vencimento.asString, Result);
                        If i = 7 then Result := RemoveCaracter(mMacros[7], BancosNome.Text, Result);
                        If i = 8 then Result := RemoveCaracter(mMacros[8], PagarReceberObservacao.Text, Result);
                        mPos := Pos(mMacros[i], Result );
                     End;
               End;
           End;
      end;
end;
*)


end.

