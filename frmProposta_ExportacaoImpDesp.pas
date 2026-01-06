unit frmProposta_ExportacaoImpDesp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, RXDBCtrl, DB,
  DBAccess, MSAccess, Grids, AppEvnts, system.UITypes, MemDS;

type
  TProposta_ExportacaoImpDesp = class(TForm)
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
    ApplicationEvents1: TApplicationEvents;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tProcessosAfterScroll(DataSet: TDataSet);
    procedure bImportarClick(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    mProposta : Integer;
  end;

var
  Proposta_ExportacaoImpDesp: TProposta_ExportacaoImpDesp;

implementation

uses frmDados;

{$R *.dfm}

procedure TProposta_ExportacaoImpDesp.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TProposta_ExportacaoImpDesp.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Proposta_ExportacaoImpDesp.Release;
      Proposta_ExportacaoImpDesp := nil;
end;

procedure TProposta_ExportacaoImpDesp.FormShow(Sender: TObject);
begin
      with Dados do begin
           tProcessos.SQL.Clear;
           tProcessos.SQL.Add('SELECT Processo');
           tProcessos.SQL.Add('      ,Origem');
           tProcessos.SQL.Add('      ,(SELECT Descricao FROM TiposProcesso WHERE(Codigo = Modalidade_Importacao)) AS Modalidade');
           tProcessos.SQL.Add('      ,Incentivo_Fiscal');
           tProcessos.SQL.Add('FROM   ProcessosDocumentos');
           tProcessos.SQL.Add('WHERE  (Tipo = ''EXPORTAÇÃO'')');
           tProcessos.SQL.Add('ORDER  BY Processo ');
           //tProcessos.SQL.SavetoFile('c:\temp\Processos_Exportação.sql');
           tProcessos.Open;
      end;
end;

procedure TProposta_ExportacaoImpDesp.tProcessosAfterScroll(DataSet: TDataSet);
begin
       tDespesas.SQL.Clear;
       tDespesas.SQL.Add('SELECT Processo');
       tDespesas.SQL.Add('      ,Classificacao');
       tDespesas.SQL.Add('      ,Descricao = (SELECT Descricao FROM ClassificacaoFinanceira CF WHERE Cf.Codigo = PR.Classificacao)');
       tDespesas.SQL.Add('      ,Valor_Total');
       tDespesas.SQL.Add('FROM  PagarReceber PR');
       tDespesas.SQL.Add('WHERE Processo = :pProc');
       tDespesas.SQL.Add('AND   Tipo = ''P'' ');
       tDespesas.ParamByName('pProc').AsString := tProcessos.FieldByName('Processo').AsString;
       //tDespesas.SQL.SavetoFile('c:\temp\Despesas_Exportação.sql');
       tDespesas.Open;
end;

procedure TProposta_ExportacaoImpDesp.bImportarClick(Sender: TObject);
begin
      with Dados do begin
           tRegistro.sql.clear;
           tRegistro.sql.add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PropostaExpDesp');
           tRegistro.open;

           if MessageDlg('Remover os lançamentos existentes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
              PropostaExpDesp.SQL.Clear;
              PropostaExpDesp.SQL.Add('DELETE FROM PropostaExpDesp WHERE Proposta = :pProp');
              PropostaExpDesp.ParamByName('pProp').AsInteger := mProposta;
              PropostaExpDesp.Execute;
              PropostaExpDesp.SQL.Clear;
              PropostaExpDesp.SQL.Add('SELECT * FROM PropostaExpDesp WHERE Proposta = :pProp');
              PropostaExpDesp.ParamByName('pProp').AsInteger := mProposta;
              PropostaExpDesp.Open;
           end;
           tDespesas.First;
           while not tDespesas.Eof do begin
                 tRegistro.Open;
                 PropostaExpDesp.Append;
                                 PropostaExpDespRegistro.Value      := tRegistro.FieldByName('Registro').AsInteger;
                                 PropostaExpDespProposta.Value      := mProposta;
                                 PropostaExpDespClassificacao.Value := tDespesas.FieldByName('Classificacao').AsString;
                                 PropostaExpDespDescricao.Value     := tDespesas.FieldByName('Descricao').AsString;
                                 PropostaExpDespValor.Value         := tDespesas.FieldByName('Valor_Total').AsCurrency;
                                 PropostaExpDespMoeda.Value         := 790;
                                 PropostaExpDespSimbolo.Value       := 'R$';
                                 PropostaExpDespCotacao.Value       := 1;
                 PropostaExpDesp.Post;
                 tRegistro.Close;
                 tDespesas.Next;
           end;
      end;
      Close;
end;

procedure TProposta_ExportacaoImpDesp.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
var
  i: SmallInt;
begin
     if Msg.message = WM_MOUSEWHEEL then begin
        Msg.message := WM_KEYDOWN;
        Msg.lParam := 0;
        i := HiWord(Msg.wParam) ;
        if i > 0 then
           Msg.wParam := VK_UP
        else
           Msg.wParam := VK_DOWN;
        Handled := False;
     end;
end;

end.
