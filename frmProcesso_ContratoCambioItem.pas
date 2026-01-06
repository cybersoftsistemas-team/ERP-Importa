unit frmProcesso_ContratoCambioItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, RxLookup, DB, system.UITypes, DBAccess, MSAccess, Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TProcesso_ContratoCambioItem = class(TForm)
    cProcesso: TRxDBLookupCombo;
    StaticText1: TStaticText;
    StaticText6: TStaticText;
    bSalvar: TButton;
    bSair: TButton;
    cValorMe: TCurrencyEdit;
    cValorReal: TCurrencyEdit;
    StaticText7: TStaticText;
    tTotaliza: TMSQuery;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cTotalFatura: TCurrencyEdit;
    cFatura: TEdit;
    tLancamento: TMSQuery;
    tLancamentoBaixa: TMSQuery;
    StaticText4: TStaticText;
    cTaxaCambial: TCurrencyEdit;
    StaticText5: TStaticText;
    cSaldoFatura: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    StaticText8: TStaticText;
    procedure bSalvarClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cValorMeChange(Sender: TObject);
    procedure cProcessoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mOpcao: String;
  end;

var
  Processo_ContratoCambioItem: TProcesso_ContratoCambioItem;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TProcesso_ContratoCambioItem.bSalvarClick(Sender: TObject);
begin
      With Dados do begin
           If Trim(cProcesso.Text) = '' then begin
              MessageDlg('Erro!'+#13+#13'"Número do Processo" é campo obrigatório.', mtError, [mbOK], 0);
              cProcesso.SetFocus;
              Abort;
           End;
           If cValorME.Value <= 0 then begin
              MessageDlg('Erro!'+#13+#13'"Valor (ME)" é campo obrigatório.', mtError, [mbOK], 0);
              cValorME.SetFocus;
              Abort;
           End;
           If (cValorME.Value > cSaldoFatura.Value) and (ConfiguracaoBloquear_ItemContrato.AsBoolean = false) then begin
              MessageDlg('Erro!'+#13+#13'"Valor (ME)" maior que o total da Fatura.', mtError, [mbOK], 0);
              cValorME.SetFocus;
              Abort;
           End;
           If cTaxaCambial.Value <= 0 then begin
              MessageDlg('Erro!'+#13+#13'"Taxa Cambial" é campo obrigatório.', mtError, [mbOK], 0);
              cTaxaCambial.SetFocus;
              Abort;
           End;

           If mOpcao = 'ADICIONAR' then begin
              ContratoCambioItens.Append
           end else begin
              ContratoCambioItens.Edit;
           End;
                               ContratoCambioItensContrato.Value     := ContratoCambioNumero.Value;
                               ContratoCambioItensData.Value         := ContratoCambioData.Value;
                               ContratoCambioItensProcesso.Value     := cProcesso.Text;
                               ContratoCambioItensValor_ME.Value     := cValorME.Value;
                               ContratoCambioItensDI.Value           := ProcessosDOCNumero_Declaracao.Value;
                               ContratoCambioItensFatura.Value       := cFatura.Text;
                               ContratoCambioItensValor_Fatura.Value := cTotalFatura.Value;
                               ContratoCambioItensTaxa_Cambial.Value := cTaxaCambial.Value;
                               ContratoCambioItensNavio_Ordem.Value  := ControleNaviosOrdem.AsInteger;
           ContratoCambioItens.Post;
           ProcessosDOC.Refresh;

           // Atualiza o valor total dos câmbios na tabela principal.
           with tTotaliza do begin
                sql.Clear;
                sql.Add('SELECT SUM(ISNULL(Valor_ME,0)) AS Total_Cambio FROM ContratoCambioItens WHERE(Contrato = :pContrato)');
                ParamByName('pContrato').AsString := ContratoCambioNumero.Value;
                Open;
                ContratoCambio.Edit;
                               ContratoCambioTotal_ME.Value := FieldByName('Total_Cambio').Value;
                ContratoCambio.Post;
                
                ControleNavios.edit;
                               ControleNavios.fieldbyname('Total_ME').value := FieldByName('Total_Cambio').Value;
                ControleNavios.post;                                                                             
           end;

           // Cria o lançamento no financeiro se estiver marcado.
           If Trim(ContratoCambioClassificacao.AsString) <> '' then begin
              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('DELETE FROM PagarReceberBaixas WHERE(Numero = :pNumero)');
              PagarReceberBaixas.ParamByName('pNumero').AsInteger := ContratoCambioItensFinanceiro_Lancamento.AsInteger;
              PagarReceberBaixas.Execute;

              PagarReceberBaixas.SQL.Clear;
              PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE(Data = :pData)');
              PagarReceberBaixas.ParamByName('pData').AsDate := Date;
              PagarReceberBaixas.Open;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE(Numero = :pNumero)');
              PagarReceber.ParamByName('pNumero').AsInteger := ContratoCambioItensFinanceiro_Lancamento.AsInteger;
              PagarReceber.Execute;
              
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Vencimento = :pData)');
              PagarReceber.ParamByName('pData').AsDate := Date;
              PagarReceber.Open;

              tLancamento.SQL.Clear;
              tLancamento.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
              tLancamento.Open;
              
              PagarReceber.Append;
                           PagarReceberNumero.Value           := tLancamento.FieldByName('Numero').AsInteger + 1;
                           tLancamento.Close;

                           PagarReceberClassificacao.Value    := ContratoCambio.FieldByName('Classificacao').AsString;
                           PagarReceberTipo.Value             := ClassificacaoFinanceira.FieldByName('Tipo').AsString;
                           PagarReceberData_Documento.Value   := ContratoCambio.FieldByName('Data').AsDateTime;
                           PagarReceberData_Vencimento.Value  := ContratoCambio.FieldByName('Data_Vencimento').AsDateTime;
                           PagarReceberValor_Documento.Value  := cValorReal.Value;
                           PagarReceberValor_Parcela.Value    := cValorReal.Value;
                           PagarReceberMulta.Value            := 0;
                           PagarReceberJuros.Value            := 0;
                           PagarReceberDesconto.Value         := 0;
                           PagarReceberValor_Total.Value      := cValorReal.Value;
                           PagarReceberValor_Operacao.Value   := cValorReal.Value;
                           PagarReceberFornecedor.Value       := ContratoCambio.FieldByName('Beneficiario').AsInteger;
                           PagarReceberDocumento.Value        := Configuracao.FieldByName('ContratoCambio_Documento').AsString;
                           PagarReceberNumero_Documento.Value := ContratoCambio.FieldByName('Numero').AsString;
                           PagarReceberProcesso.Value         := ContratoCambioItens.FieldByName('Processo').AsString;
                           PagarReceberCustoConta.Value       := ClassificacaoFinanceira.FieldByName('Custo').AsBoolean;
                           PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceira.FieldByName('Custo_Seletivo').AsBoolean;
                           PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceira.FieldByName('Custo_Entrada').AsBoolean;
                           PagarReceberValor_Baixado.Value    := 0;
                           PagarReceberCentro_Custo.Value     := ContratoCambio.FieldByName('Centro_Custo').AsString;
                           PagarReceberNivel.Value            := ClassificacaoFinanceira.FieldByName('Nivel').AsInteger;
                           PagarReceberFiscal.Value           := ContratoCambio.FieldByName('Numero').AsString;
                           PagarReceberTipo_Nota.Value        := 'CB';
                           PagarReceberPago_Cliente.Value     := ContratoCambio.FieldByName('Pago_Cliente').asboolean;
                           PagarReceberValor_ME.Value         := cValorME.Value;
                           PagarReceberTaxa_ME.Value          := cTaxaCambial.value;
                           PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                           PagarReceberFilial.Value           := Empresas.FieldByName('Numero_Filial').asinteger;
              PagarReceber.Post;

              // Registro o número do lançamento financeiro no item de contrato de câmbio.
              ContratoCambioItens.Edit;
                                  ContratoCambioItensFinanceiro_Lancamento.Value := PagarReceberNumero.Value;
              ContratoCambioItens.Post;

              //If ContratoCambioGerar_Baixa.AsBoolean = true then begin
              If (ContratoCambioGerar_Baixa.AsBoolean = true) and (ContratoCambioPrevisao.AsBoolean = false) then begin
                 PagarReceberBaixas.SQL.Clear;
                 PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE (Numero = :pNumero)');
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
              End;
           End;
      End;

      cProcesso.ClearValue;
      cValorME.Value := 0;
      cFatura.Clear;
      cTotalFatura.Clear;

      If mOpcao = 'ALTERAR' then Close;
end;

procedure TProcesso_ContratoCambioItem.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TProcesso_ContratoCambioItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Processo_ContratoCambioItem.Release;
      Processo_ContratoCambioItem := nil;
end;

procedure TProcesso_ContratoCambioItem.FormShow(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT *');
           ProcessosDOC.SQL.Add('FROM   ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE  Tipo = ''IMPORTAÇÃO'' ');
           ProcessosDOC.SQL.Add('       AND Desativado <> 1');
           ProcessosDOC.SQL.Add('       AND Processo NOT IN(SELECT DISTINCT Processo FROM ProcessosFechamento WHERE Fechamento_Provisorio <> 1)');
           //ProcessosDOC.SQL.Add('       AND Processo NOT IN(SELECT DISTINCT Processo FROM ProcessosFechamento WHERE ISNULL(Fechamento_Provisorio, 0) = 1)');
           If mOpcao = 'ADICIONAR' then begin
              ProcessosDOC.SQL.Add('       AND Processo NOT IN(SELECT DISTINCT Processo FROM ContratoCambioItens WHERE Contrato = :pContrato)');
           End;
           If mOpcao = 'ALTERAR' then begin
              ProcessosDOC.SQL.Add('       AND Processo NOT IN(SELECT DISTINCT Processo FROM ContratoCambioItens WHERE Contrato = :pContrato AND Processo <> :pProcesso)');
              ProcessosDOC.ParamByName('pProcesso').AsString := Dados.ContratoCambioItensProcesso.AsString;
              Processo_ContratoCambioItem.cProcesso.KeyValue := Dados.ContratoCambioItensProcesso.Value;
           End;
           ProcessosDOC.ParamByName('pContrato').AsString := Dados.ContratoCambioNumero.AsString;
           ProcessosDOC.SQL.Add('ORDER  BY Processo');
           //ProcessosDOC.SQL.SaveToFile('c:\temp\ContratoCambio_Itens.sql'); 
           ProcessosDOC.Open;

           Invoice.SQL.Clear;
           Invoice.SQL.Add('SELECT * FROM Invoice WHERE(Processo = :pProcesso)');
           Invoice.ParamByName('pProcesso').AsString := cProcesso.Text;
           Invoice.Open;

           with ControleNavios do begin
                sql.clear;
                sql.add('select * from ControleNavios where Status <> :pStat');
                parambyname('pStat').value := 'ENCERRADO';
                open;
           end;

           cFatura.Clear;
           cTotalFatura.Clear;
           cTaxaCambial.Value := ContratoCambioTaxa_Cambial.Value;
      End;
end;

procedure TProcesso_ContratoCambioItem.cValorMeChange(Sender: TObject);
begin
      cValorReal.Value := cValorME.Value * Dados.ContratoCambioTaxa_Cambial.Value;
end;

procedure TProcesso_ContratoCambioItem.cProcessoChange(Sender: TObject);
begin
      With Dados do begin
           Invoice.SQL.Clear;
           Invoice.SQL.Add('SELECT * FROM Invoice WHERE(Processo = :pProcesso)');
           Invoice.ParamByName('pProcesso').AsString := cProcesso.Text;
           Invoice.Open;

           cFatura.Text       := InvoiceNumero.AsString;
           cTotalFatura.Value := InvoiceTotal_FaturaME.Value;

           tTotaliza.SQL.Clear;
           tTotaliza.SQL.Add('SELECT ISNULL(SUM(ISNULL(Valor_ME,0)), 0) AS Total_Processo FROM ContratoCambioItens WHERE(Processo = :pProcesso)');
           tTotaliza.ParamByName('pProcesso').AsString := cProcesso.Text;
           tTotaliza.Open;

           cSaldoFatura.Value := cTotalFatura.Value - tTotaliza.FieldByName('Total_Processo').Value;

           with ControleNavios do begin
                sql.clear;
                sql.add('select * from ControleNavios where Processo = :pProc and Status <> :pStat');
                parambyname('pProc').value := cProcesso.Text;
                parambyname('pStat').value := 'ENCERRADO';
                open;
           end;
      End;
end;

end.
