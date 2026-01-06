unit frmFinanceiros_SolicitacaoNumerario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Grids, DBGrids, mdTabEnter, DB, MemDS, DBAccess, MSAccess,
  RxLookup, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RXDBCtrl;

type
  TFinanceiros_SolicitacaoNumerario = class(TForm)
    XPPanel1: TXPPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    iJatoTinta: TImage;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    TabEnter1: TTabEnter;
    tPagamentos: TMSQuery;
    dstPagamentos: TDataSource;
    tPagamentosNumero: TLargeintField;
    tPagamentosClassificacao: TStringField;
    tPagamentosValor: TCurrencyField;
    tPagamentosProcesso: TStringField;
    tPagamentosCusto: TBooleanField;
    Grade: TRxDBGrid;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cProcessoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiros_SolicitacaoNumerario: TFinanceiros_SolicitacaoNumerario;

implementation

uses frmDados;

{$R *.dfm}

procedure TFinanceiros_SolicitacaoNumerario.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiros_SolicitacaoNumerario.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Financeiros_SolicitacaoNumerario.Release;
     Financeiros_SolicitacaoNumerario := nil;
end;

procedure TFinanceiros_SolicitacaoNumerario.FormShow(Sender: TObject);
begin
       With Dados do begin
            Clientes.SQL.Clear;
            Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
            Clientes.Open;

            ProcessosDOC.SQL.Clear;
            ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
            If EmpresasProcesso_Automatico.AsBoolean = true then 
               ProcessosDOC.SQL.Add('ORDER BY CAST(Processo AS int)')
            else
               ProcessosDOC.SQL.Add('ORDER BY Processo');
            ProcessosDOC.Open;
       End;
end;

procedure TFinanceiros_SolicitacaoNumerario.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     If (Column.FieldName = 'Custo') then begin
        With Grade.Canvas do begin
             Brush.Color := clWhite;
             FillRect(Rect);
             If (tPagamentos.FieldByName('Custo').Value = True) then Dados.ImageList1.GetBitmap(2, Icon);
             Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
        End;
     End;
end;

procedure TFinanceiros_SolicitacaoNumerario.cProcessoChange(Sender: TObject);
begin
      tPagamentos.SQL.Clear;
      tPagamentos.SQL.Add('SELECT Numero,');
      tPagamentos.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(ClassificacaoFinanceira.Codigo = Classificacao)) AS Classificacao,');
      tPagamentos.SQL.Add('       (SELECT Custo     FROM ClassificacaoFinanceira WHERE(ClassificacaoFinanceira.Codigo = Classificacao)) AS Custo,');
      tPagamentos.SQL.Add('       Data_Vencimento,');
      tPagamentos.SQL.Add('       Valor_Operacao AS Valor,');
      tPagamentos.SQL.Add('       Processo');
      tPagamentos.SQL.Add('FROM   PagarReceber ');
      tPagamentos.SQL.Add('WHERE  (Processo = :pProcesso)');
      tPagamentos.SQL.Add('ORDER  BY Classificacao');
      tPagamentos.ParamByName('pProcesso').AsString := cProcesso.Text;
      tPagamentos.Open;
end;

procedure TFinanceiros_SolicitacaoNumerario.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

end.
