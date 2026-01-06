unit frmProcesso_FechamentoItensFiltro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DB, DBAccess, MSAccess, DBCtrls, RxLookup, MemDS;

type
  TProcesso_FechamentoItensFiltro = class(TForm)
    cSituacao: TRadioGroup;
    Panel1: TPanel;
    bCancelar: TButton;
    bOK: TButton;
    cTipo: TRadioGroup;
    cDespesa: TRadioGroup;
    tRegistroRegistro: TIntegerField;
    tRegistro: TMSQuery;
    GroupBox1: TGroupBox;
    lClassificacao: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    tPagarReceber: TMSQuery;
    cCopiar: TCheckBox;
    cProcesso: TRadioGroup;
    procedure bCancelarClick(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cClassificacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_FechamentoItensFiltro: TProcesso_FechamentoItensFiltro;

implementation

uses frmDados, frmJanela_Processamento, FUNCOES;

{$R *.dfm}

procedure TProcesso_FechamentoItensFiltro.bCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TProcesso_FechamentoItensFiltro.bOKClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Configuracao.Open;

           tPagarReceber.SQL.Clear;
           If cProcesso.ItemIndex <> 1 then begin
              tPagarReceber.SQL.Add('SELECT Valor_Total, ');
              tPagarReceber.SQL.Add('       CustoConta, ');
              tPagarReceber.SQL.Add('       Tipo, ');
              tPagarReceber.SQL.Add('       Classificacao, ');
              tPagarReceber.SQL.Add('       Valor_Baixado,');
              tPagarReceber.SQL.Add('       Valor_Operacao,');
              tPagarReceber.SQL.Add('       Observacao,');
              tPagarReceber.SQL.Add('       CASE WHEN (SELECT MAX(Data) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)) IS NOT NULL THEN');
              tPagarReceber.SQL.Add('           (SELECT MAX(Data) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero))');
              tPagarReceber.SQL.Add('       ELSE');
              tPagarReceber.SQL.Add('           Data_Vencimento');
              tPagarReceber.SQL.Add('       END AS Data_Baixa,');
              If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                 tPagarReceber.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS DescricaoClassificacao');
              end else begin
                 tPagarReceber.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS DescricaoClassificacao');
              End;
              tPagarReceber.SQL.Add('FROM PagarReceber');
              tPagarReceber.SQL.Add('WHERE(Processo = :pProcesso) ');

              If cTipo.ItemIndex     = 0 then tPagarReceber.SQL.Add('AND Tipo  = ''P'' ');
              If cTipo.ItemIndex     = 1 then tPagarReceber.SQL.Add('AND Tipo  = ''R'' ');
              If cDespesa.ItemIndex  = 0 then tPagarReceber.SQL.Add('AND CustoConta = 1 ');
              If cDespesa.ItemIndex  = 1 then tPagarReceber.SQL.Add('AND CustoConta <> 1 ');
              If cSituacao.ItemIndex = 0 then tPagarReceber.SQL.Add('AND (SELECT COUNT(*) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)) = 0 ');
              If cSituacao.ItemIndex = 1 then tPagarReceber.SQL.Add('AND (SELECT COUNT(*) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)) > 0 ');
           End;

           If cProcesso.ItemIndex = 2 then begin
              tPagarReceber.SQL.Add('UNION  ALL');
           End;

           If (cProcesso.ItemIndex > 0) then begin
              tPagarReceber.SQL.Add('SELECT Valor_Total = ((SELECT FOB_ME FROM ProcessosDocumentos PD WHERE PD.Processo = :pProcesso) /');
              tPagarReceber.SQL.Add('                      (SELECT FOB_ME FROM ProcessosDocumentos PD WHERE PD.Processo = :pProcessoMestre)) * Valor_Total,');
              tPagarReceber.SQL.Add('       CustoConta, ');
              tPagarReceber.SQL.Add('       Tipo, ');
              tPagarReceber.SQL.Add('       Classificacao, ');
              tPagarReceber.SQL.Add('       Valor_Baixado,');
              tPagarReceber.SQL.Add('       Valor_Operacao,');
              tPagarReceber.SQL.Add('       Observacao,');
              tPagarReceber.SQL.Add('       CASE WHEN (SELECT MAX(Data) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)) IS NOT NULL THEN');
              tPagarReceber.SQL.Add('           (SELECT MAX(Data) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero))');
              tPagarReceber.SQL.Add('       ELSE');
              tPagarReceber.SQL.Add('           Data_Vencimento');
              tPagarReceber.SQL.Add('       END AS Data_Baixa,');
              If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                 tPagarReceber.SQL.Add('       (SELECT Descricao+''(MESTRE)'' FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS DescricaoClassificacao');
              end else begin
                 tPagarReceber.SQL.Add('       (SELECT Descricao+''(MESTRE)'' FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS DescricaoClassificacao');
              End;
              tPagarReceber.SQL.Add('FROM PagarReceber');
              tPagarReceber.SQL.Add('WHERE(Processo = :pProcessoMestre AND ISNULL(Processo, '''') <> '''') ');
              If cTipo.ItemIndex     = 0 then tPagarReceber.SQL.Add('AND Tipo = ''P'' ');
              If cTipo.ItemIndex     = 1 then tPagarReceber.SQL.Add('AND Tipo = ''R'' ');
              If cDespesa.ItemIndex  = 0 then tPagarReceber.SQL.Add('AND CustoConta = 1 ');
              If cDespesa.ItemIndex  = 1 then tPagarReceber.SQL.Add('AND CustoConta <> 1 ');
              If cSituacao.ItemIndex = 0 then tPagarReceber.SQL.Add('AND (SELECT COUNT(*) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)) = 0 ');
              If cSituacao.ItemIndex = 1 then tPagarReceber.SQL.Add('AND (SELECT COUNT(*) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)) > 0 ');
              tPagarReceber.ParamByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.AsString;
           End;
           tPagarReceber.SQL.Add('ORDER  BY DescricaoClassificacao');
           tPagarReceber.ParamByName('pProcesso').AsString       := ProcessosFechamentoProcesso.AsString;
           //tPagarReceber.SQL.SaveToFile('c:\temp\Fechamento_Despesas.sql');
           tPagarReceber.Open;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := tPagarReceber.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Carregando os lançamentos do financeiro...Aguarde';
           Janela_Processamento.Show;

           If Trim(cClassificacao.Text) = '' then begin
              While (not tPagarReceber.Eof) and (Funcoes.Cancelado = false) do begin
                    tRegistro.Open;
                    ProcessosFechamentoItens.Append;
                                             ProcessosFechamentoItensRegistro.Value         := tRegistroRegistro.AsInteger + 1;
                                             ProcessosFechamentoItensFechamento.Value       := ProcessosFechamentoCodigo.AsInteger;
                                             ProcessosFechamentoItensClassificacao.Value    := tPagarReceber.FieldByName('Classificacao').AsString;
                                             ProcessosFechamentoItensDescricao.Value        := tPagarReceber.FieldByName('DescricaoClassificacao').AsString;
                                             ProcessosFechamentoItensValor_Fechamento.Value := tPagarReceber.FieldByName('Valor_Total').Value;
                                             ProcessosFechamentoItensCusto.Value            := tPagarReceber.FieldByName('CustoConta').Value;
                                             ProcessosFechamentoItensTipo.Value             := tPagarReceber.FieldByName('Tipo').Value;
                                             ProcessosFechamentoItensData_BaixaVenc.Value   := tPagarReceber.FieldByName('Data_Baixa').Value;
                                             If tPagarReceber.FieldByName('Valor_Baixado').AsCurrency >= tPagarReceber.FieldByName('Valor_Operacao').AsCurrency then begin
                                                ProcessosFechamentoItensBaixa.Value := 'T';
                                             End;
                                             If cCopiar.Checked = true then begin
                                                If ConfiguracaoProcesso_FechamentoObservacao.AsInteger = 0 then 
                                                   If cCopiar.Checked = true then ProcessosFechamentoItensObservacao.Value := tPagarReceber.FieldByName('DescricaoClassificacao').Value
                                                else
                                                   If cCopiar.Checked = true then ProcessosFechamentoItensObservacao.Value := tPagarReceber.FieldByName('Observacao').Value;
                                             End;

                                             If (tPagarReceber.FieldByName('Valor_Baixado').AsCurrency < tPagarReceber.FieldByName('Valor_Operacao').AsCurrency) and (tPagarReceber.FieldByName('Valor_Baixado').AsCurrency > 0) then
                                                ProcessosFechamentoItensBaixa.Value := 'P';
                    ProcessosFechamentoItens.Post;
                    tPagarReceber.Next;
                    tRegistro.Close;
                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                    Application.ProcessMessages;
              End;
           end else begin
              tRegistro.Open;
              ProcessosFechamentoItens.Append;
                                       ProcessosFechamentoItensRegistro.Value         := tRegistroRegistro.AsInteger + 1;
                                       ProcessosFechamentoItensFechamento.Value       := ProcessosFechamentoCodigo.AsInteger;
                                       ProcessosFechamentoItensClassificacao.Value    := ClassificacaoFinanceiraCodigo.Value;
                                       ProcessosFechamentoItensDescricao.Value        := ClassificacaoFinanceiraDescricao.Value;
                                       ProcessosFechamentoItensValor_Fechamento.Value := 0;
                                       ProcessosFechamentoItensCusto.Value            := ClassificacaoFinanceiraCusto.Value;
                                       ProcessosFechamentoItensTipo.Value             := ClassificacaoFinanceiraTipo.Value;
                                       ProcessosFechamentoItensData_BaixaVenc.Value   := Date;
                                       If cCopiar.Checked = true then ProcessosFechamentoItensObservacao.Value := ClassificacaoFinanceiraDescricao.Value;
              ProcessosFechamentoItens.Post;
              tPagarReceber.Next;
              tRegistro.Close;
           End;
      End;
      Janela_Processamento.Close;
      Screen.Cursor := crDefault;
      Close;
end;

procedure TProcesso_FechamentoItensFiltro.FormShow(Sender: TObject);
begin
      With Dados do begin
           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Titulo <> 1) AND (Desativada <> 1) ORDER BY Descricao');
           ClassificacaoFinanceira.Open;
      End;
end;

procedure TProcesso_FechamentoItensFiltro.cClassificacaoChange(Sender: TObject);
begin
      cTipo.Enabled     := Trim(cClassificacao.Text) = '';
      cDespesa.Enabled  := Trim(cClassificacao.Text) = '';
      cSituacao.Enabled := Trim(cClassificacao.Text) = '';
end;

end.
