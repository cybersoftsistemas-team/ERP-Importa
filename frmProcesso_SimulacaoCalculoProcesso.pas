unit frmProcesso_SimulacaoCalculoProcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, RXDBCtrl, DB, DBAccess, MSAccess, MemDS, system.UITypes, Grids;

type
  TProcesso_SimulacaoCalculoProcesso = class(TForm)
    GradeProcesso: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    GradeDespesas: TRxDBGrid;
    StaticText10: TStaticText;
    StaticText1: TStaticText;
    tDespesas: TMSQuery;
    dstDespesas: TDataSource;
    tProcessos: TMSQuery;
    dstProcessos: TDataSource;
    tProcessosProcesso: TStringField;
    tProcessosOrigem: TStringField;
    tProcessosModalidade: TStringField;
    tProcessosIncentivo_Fiscal: TStringField;
    tDespesasValor_Total: TCurrencyField;
    tDespesasDescricao: TStringField;
    bImportar: TButton;
    tRegistro: TMSQuery;
    tDespesasClassificacao: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tProcessosAfterScroll(DataSet: TDataSet);
    procedure bImportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mSimulacao : Integer;
  end;

var
  Processo_SimulacaoCalculoProcesso: TProcesso_SimulacaoCalculoProcesso;

implementation

uses frmDados;

{$R *.dfm}

procedure TProcesso_SimulacaoCalculoProcesso.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TProcesso_SimulacaoCalculoProcesso.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Processo_SimulacaoCalculoProcesso.Release;
      Processo_SimulacaoCalculoProcesso := nil;
end;

procedure TProcesso_SimulacaoCalculoProcesso.FormShow(Sender: TObject);
begin
      With Dados do begin
           tProcessos.SQL.Clear;
           tProcessos.SQL.Add('SELECT Processo,');
           tProcessos.SQL.Add('       Origem,');
           tProcessos.SQL.Add('       (SELECT Descricao FROM TiposProcesso WHERE(Codigo = Modalidade_Importacao)) AS Modalidade,');
           tProcessos.SQL.Add('       Incentivo_Fiscal');
           tProcessos.SQL.Add('FROM   ProcessosDocumentos');
           tProcessos.SQL.Add('WHERE  (Tipo = ''IMPORTAÇÃO'')');
           tProcessos.SQL.Add('ORDER  BY Processo ');
           tProcessos.Open;
      End;
end;

procedure TProcesso_SimulacaoCalculoProcesso.tProcessosAfterScroll(DataSet: TDataSet);
begin
       tDespesas.SQL.Clear;
       tDespesas.SQL.Add('SELECT PR.Processo');
       tDespesas.SQL.Add('      ,PR.Valor_Total');
       tDespesas.SQL.Add('      ,CF.Custo');
       tDespesas.SQL.Add('      ,CF.Descricao');
       tDespesas.SQL.Add('      ,PR.Classificacao');
       tDespesas.SQL.Add('FROM PagarReceber PR, ClassificacaoFinanceira CF');
       tDespesas.SQL.Add('WHERE (CF.Codigo = PR.Classificacao)');
       tDespesas.SQL.Add('      AND (CF.Custo = 1)');
       tDespesas.SQL.Add('      AND (Processo = :pProcesso)');
       tDespesas.SQL.Add('ORDER BY CF.Descricao');
       tDespesas.ParamByName('pProcesso').AsString := tProcessos.FieldByName('Processo').AsString;
       tDespesas.Open;
end;

procedure TProcesso_SimulacaoCalculoProcesso.bImportarClick(Sender: TObject);
begin
      With Dados do begin
           If MessageDlg('Remover os lançamentos existentes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
              SimulaDespesas.SQL.Clear;
              SimulaDespesas.SQL.Add('DELETE FROM SimulaDespesas WHERE(Simulacao = :pSimulacao)');
              SimulaDespesas.ParamByName('pSimulacao').AsInteger := mSimulacao;
              SimulaDespesas.Execute;
              SimulaDespesas.SQL.Clear;
              SimulaDespesas.SQL.Add('SELECT * FROM SimulaDespesas WHERE(Simulacao = :pSimulacao)');
              SimulaDespesas.ParamByName('pSimulacao').AsInteger := mSimulacao;
              SimulaDespesas.Open;
           End;
           tDespesas.First;
           While not tDespesas.Eof do begin
                 tRegistro.Open;
                 SimulaDespesas.Append;
                                SimulaDespesasRegistro.Value      := tRegistro.FieldByName('Registro').AsInteger + 1;
                                SimulaDespesasSimulacao.Value     := mSimulacao;
                                SimulaDespesasDespesa.Value       := tDespesas.FieldByName('Descricao').AsString;
                                SimulaDespesasValor.Value         := tDespesas.FieldByName('Valor_Total').AsCurrency;
                                SimulaDespesasClassificacao.Value := tDespesas.FieldByName('Classificacao').asstring;
                 SimulaDespesas.Post;
                 tRegistro.Close;
                 tDespesas.Next;
           End;
      End;
      Close;
end;

end.
