unit frmFinanceiro_EmprestimosFNItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls,
  RxLookup, Mask, RxCurrEdit, MemDS, system.UITypes, RxToolEdit;

type
  TFinanceiro_EmprestimosFNItem = class(TForm)
    cProcesso: TRxDBLookupCombo;
    StaticText1: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    bSalvar: TButton;
    bSair: TButton;
    cValorMe: TCurrencyEdit;
    cValorReal: TCurrencyEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cTotalFatura: TCurrencyEdit;
    cFatura: TEdit;
    StaticText4: TStaticText;
    cTaxaCambial: TCurrencyEdit;
    StaticText5: TStaticText;
    cSaldoFatura: TCurrencyEdit;
    tTotaliza: TMSQuery;
    tLancamento: TMSQuery;
    tLancamentoBaixa: TMSQuery;
    tRegistro: TMSQuery;
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
  Financeiro_EmprestimosFNItem: TFinanceiro_EmprestimosFNItem;

implementation

uses frmDados;

{$R *.dfm}

procedure TFinanceiro_EmprestimosFNItem.bSalvarClick(Sender: TObject);
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
              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0) AS Registro FROM EmprestimosFINIMP');
              tRegistro.Open;
              EmprestimosFINIMP.Append;
              EmprestimosFINIMPRegistro.Value := tRegistro.FieldByName('Registro').AsInteger + 1;
           end else begin
              EmprestimosFINIMP.Edit;
           End;
                               EmprestimosFINIMPEmprestimo.Value   := EmprestimosNumero.Value;
                               EmprestimosFINIMPData.Value         := EmprestimosData.Value;
                               EmprestimosFINIMPProcesso.Value     := cProcesso.Text;
                               EmprestimosFINIMPValor_ME.Value     := cValorME.Value;
                               EmprestimosFINIMPDI.Value           := ProcessosDOCNumero_Declaracao.Value;
                               EmprestimosFINIMPFatura.Value       := cFatura.Text;
                               EmprestimosFINIMPValor_Fatura.Value := cTotalFatura.Value;
                               EmprestimosFINIMPTaxa_Cambial.Value := cTaxaCambial.Value;
           EmprestimosFINIMP.Post;

           tRegistro.Close;
           ProcessosDOC.Refresh;

           // Totaliza o valor Principal do empréstimo.
           tTotaliza.SQL.Clear;
           tTotaliza.SQL.Add('SELECT ISNULL(SUM(Valor_ME * Taxa_Cambial), 0) Valor_Total FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimo');
           tTotaliza.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
           tTotaliza.Open;

           Emprestimos.Edit;
                       EmprestimosValor_Principal.Value := tTotaliza.FieldByName('Valor_Total').AsCurrency;
           Emprestimos.Post;
      End;
      cProcesso.ClearValue;
      cValorME.Value := 0;
      cFatura.Clear;
      cTotalFatura.Clear;

      If mOpcao = 'ALTERAR' then Close;
end;

procedure TFinanceiro_EmprestimosFNItem.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_EmprestimosFNItem.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Financeiro_EmprestimosFNItem.Release;
     Financeiro_EmprestimosFNItem := nil;
end;

procedure TFinanceiro_EmprestimosFNItem.FormShow(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT *');
           ProcessosDOC.SQL.Add('FROM   ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE  Tipo = ''IMPORTAÇÃO'' ');
           ProcessosDOC.SQL.Add('       AND Desativado <> 1');
           ProcessosDOC.SQL.Add('       AND Processo NOT IN(SELECT DISTINCT Processo FROM ProcessosFechamento WHERE ISNULL(Fechamento_Provisorio, 0) <> 1)');
           //ProcessosDOC.SQL.Add('       AND Processo NOT IN(SELECT DISTINCT Processo FROM ProcessosFechamento WHERE Fechamento_Provisorio = 1)');
           If mOpcao = 'ADICIONAR' then begin
              ProcessosDOC.SQL.Add('       AND Processo NOT IN(SELECT DISTINCT Processo FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimo)');
           End;
           If mOpcao = 'ALTERAR' then begin
              ProcessosDOC.SQL.Add('       AND Processo NOT IN(SELECT DISTINCT Processo FROM EmprestimosFINIMP WHERE Emprestimo = :pEmprestimo AND Processo <> :pProcesso)');
              ProcessosDOC.ParamByName('pProcesso').AsString := EmprestimosFINIMPProcesso.AsString;
              cProcesso.KeyValue := EmprestimosFINIMPProcesso.Value;
           End;
           ProcessosDOC.ParamByName('pEmprestimo').AsInteger := EmprestimosNumero.AsInteger;
           ProcessosDOC.SQL.Add('ORDER  BY Processo');
           //ProcessosDOC.SQL.SaveToFile('c:\temp\EmprestimosFINIMP.sql'); 
           ProcessosDOC.Open;

           Invoice.SQL.Clear;
           Invoice.SQL.Add('SELECT * FROM Invoice WHERE(Processo = :pProcesso)');
           Invoice.ParamByName('pProcesso').AsString := cProcesso.Text;
           Invoice.Open;

           cFatura.Clear;
           cTotalFatura.Clear;
           cTaxaCambial.Value := EmprestimosTaxa_Cambial.Value;
      End;
end;

procedure TFinanceiro_EmprestimosFNItem.cValorMeChange(Sender: TObject);
begin
      cValorReal.Value := cValorME.Value * Dados.EmprestimosTaxa_Cambial.Value;
end;

procedure TFinanceiro_EmprestimosFNItem.cProcessoChange(Sender: TObject);
begin
      With Dados do begin
           Invoice.SQL.Clear;
           Invoice.SQL.Add('SELECT * FROM Invoice WHERE(Processo = :pProcesso)');
           Invoice.ParamByName('pProcesso').AsString := cProcesso.Text;
           Invoice.Open;

           cFatura.Text       := InvoiceNumero.AsString;
           cTotalFatura.Value := InvoiceTotal_FaturaME.Value;

           tTotaliza.SQL.Clear;
           //tTotaliza.SQL.Add('SELECT ISNULL(SUM(ISNULL(Valor_ME,0)), 0) AS Total_Processo FROM EmprestimosFINIMP WHERE(Processo = :pProcesso)');
           tTotaliza.SQL.Add('SELECT ISNULL(SUM(ISNULL(Valor_ME,0)), 0) AS Total_Processo FROM ContratoCambioItens WHERE(Processo = :pProcesso)');
           tTotaliza.ParamByName('pProcesso').AsString := cProcesso.Text;
           tTotaliza.Open;

           cSaldoFatura.Value := cTotalFatura.Value - tTotaliza.FieldByName('Total_Processo').Value;
      End;
end;

end.
