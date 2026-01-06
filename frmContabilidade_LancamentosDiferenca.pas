unit frmContabilidade_LancamentosDiferenca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Grids, DBGrids, DB, DBAccess,
  MSAccess, RXDBCtrl, RXSpin, Buttons, DateUtils, MemDS, Vcl.Mask;

type
  TContabilidade_LancamentosDiferenca = class(TForm)
    tDiferenca: TMSQuery;
    dstDiferenca: TDataSource;
    Panel1: TPanel;
    bSair: TButton;
    Grade: TDBGrid;
    StaticText2: TStaticText;
    cAno: TRxSpinEdit;
    cMes: TComboBox;
    bFiltro: TBitBtn;
    cTodosMes: TCheckBox;
    StaticText1: TStaticText;
    cTodosAno: TCheckBox;
    tDiferencaData: TDateField;
    tDiferencaLote: TLargeintField;
    tDiferencaDebitos: TCurrencyField;
    tDiferencaCreditos: TCurrencyField;
    tDiferencaDiferenca: TCurrencyField;
    bOK: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bFiltroClick(Sender: TObject);
    procedure cTodosMesClick(Sender: TObject);
    procedure cTodosAnoClick(Sender: TObject);
    procedure bOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Contabilidade_LancamentosDiferenca: TContabilidade_LancamentosDiferenca;

implementation

uses frmDMContab, frmContabilidade_Lancamentos;

{$R *.dfm}

procedure TContabilidade_LancamentosDiferenca.bOKClick(Sender: TObject);
begin
     with tDiferenca do begin
          Contabilidade_Lancamentos.mPesquisaLote := FieldByName('Lote').asinteger;
          Contabilidade_Lancamentos.mPesquisaData := FieldByName('Data').asDatetime;
     end;
     Close;
end;

procedure TContabilidade_LancamentosDiferenca.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TContabilidade_LancamentosDiferenca.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Contabilidade_LancamentosDiferenca.Release;
      Contabilidade_LancamentosDiferenca := nil;
end;

procedure TContabilidade_LancamentosDiferenca.FormShow(Sender: TObject);
begin
      cMes.ItemIndex := MonthOf(Date)-1;
      cAno.Value     := YearOf(Date);
end;

procedure TContabilidade_LancamentosDiferenca.bFiltroClick(Sender: TObject);
begin
      with tDiferenca do begin
           SQL.Clear;
           SQL.Add('SELECT Data');
           SQL.Add('      ,Lote');
           SQL.Add('      ,Debitos   = ISNULL(SUM(CASE WHEN Conta_Debito  <> '''' THEN Valor END), 0)');
           SQL.Add('      ,Creditos  = ISNULL(SUM(CASE WHEN Conta_Credito <> '''' THEN Valor END), 0)');
           SQL.Add('      ,Diferenca = ISNULL(SUM(CASE WHEN Conta_Debito  <> '''' THEN Valor END), 0) - ISNULL(SUM(CASE WHEN Conta_Credito <> '''' THEN Valor END), 0)');
           SQL.Add('INTO  #Temp');
           SQL.Add('FROM  Lancamentos Lan');
           SQL.Add('WHERE Numero IS NOT NULL');
           if not cTodosAno.Checked then begin
              SQL.Add('AND YEAR(Data) = :pAno');
              ParamByName('pAno').AsInteger := cAno.AsInteger;
           end;
           if not cTodosMes.Checked then begin
              SQL.Add('AND MONTH(Data) = :pMes');
              ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
           end;
           SQL.Add('GROUP BY Data, Lote');
           SQL.Add('SELECT * FROM #Temp');
           SQL.Add('WHERE Diferenca <> 0');
           SQL.Add('ORDER BY Data, Lote');
           SQL.Add('DROP TABLE #Temp');
           //SQL.SaveToFile('c:\temp\Lancamentos_Diferenca.sql');
           Open;
      end;
end;

procedure TContabilidade_LancamentosDiferenca.cTodosMesClick(Sender: TObject);
begin
      cMes.Enabled := not cTodosMes.Checked;
      cMes.ItemIndex := -1;
end;

procedure TContabilidade_LancamentosDiferenca.cTodosAnoClick(Sender: TObject);
begin
      cAno.Enabled := not cTodosAno.Checked;
end;

end.
