unit frmProcesso_GLME;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, DBCtrls, Vcl.StdCtrls, RxLookup, Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MSAccess;

type
  TProcesso_GLME = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bExon: TButton;
    Panel2: TPanel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    cSituacao: TRadioGroup;
    bNaoExon: TButton;
    Grade: TDBGrid;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    tNotasNota: TIntegerField;
    tNotasData: TDateTimeField;
    tNotasData_Desemb: TDateTimeField;
    tNotasData_Vencto: TDateTimeField;
    tNotasProcesso: TStringField;
    tNotasDI: TStringField;
    tNotasValor_TotalNota: TCurrencyField;
    tNotasExonerado: TBooleanField;
    tNotasDias: TIntegerField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cSituacaoClick(Sender: TObject);
    procedure bExonClick(Sender: TObject);
    procedure bNaoExonClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure Filtra;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_GLME: TProcesso_GLME;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TProcesso_GLME.bExonClick(Sender: TObject);
var
   i:integer;
begin
     if messagedlg('Deseja realmente exonerar as DI''s selecionadas?', mtConfirmation, [mbyes, mbno], 0) = mrno then Abort;
     
     with Dados do begin
          for i := 0 to pred(Grade.SelectedRows.Count) do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));
              with ProcessosDOC do begin
                   sql.clear;
                   sql.add('update ProcessosDocumentos set Exonerado = 1 where Numero_Declaracao = :pDI');
                   parambyname('pDI').value := Grade.DataSource.DataSet.fieldbyname('DI').asstring;
                   execute;
              end;
          end;
     end;
     tNotas.Refresh;
end;

procedure TProcesso_GLME.bNaoExonClick(Sender: TObject);
var
   i:integer;
begin
     if messagedlg('Deseja realmente cancelar a exoneração das DI''s selecionadas?', mtConfirmation, [mbyes, mbno], 0) = mrno then Abort;
     with Dados do begin
          for i := 0 to pred(Grade.SelectedRows.Count) do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));
              with ProcessosDOC do begin
                   sql.clear;
                   sql.add('update ProcessosDocumentos set Exonerado = 0 where Numero_Declaracao = :pDI');
                   parambyname('pDI').value := Grade.DataSource.DataSet.fieldbyname('DI').asstring;
                   execute;
              end;
          end;
     end;
     tNotas.Refresh;
end;

procedure TProcesso_GLME.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TProcesso_GLME.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Processo_GLME.Release;
     Processo_GLME := nil;
end;

procedure TProcesso_GLME.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_GLME.FormShow(Sender: TObject);
begin
      cSituacao.ItemIndex := 0;
      with Dados do begin
           with Configuracao do begin
                sql.Clear;
                sql.add('select top 1 * from Configuracao');
                open;
           end;
      end;
      Filtra;
end;

procedure TProcesso_GLME.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     with Dados do begin
          if (DataCol = 7) and (tNotas.FieldByName('Dias').AsInteger <= ConfiguracaoAviso_ExoneracaoICMS.AsInteger) then begin
             Grade.Canvas.Brush.Color := clRed;
             Grade.Canvas.font.Color  := clWhite;
          end;
          Grade.Canvas.FillRect(Rect);
          Grade.DefaultDrawColumnCell(Rect,DataCol,Column,State);     
     end;
end;

procedure TProcesso_GLME.cSituacaoClick(Sender: TObject);
begin
     Filtra;
end;

procedure TProcesso_GLME.Filtra;
begin
     bNaoExon.Enabled := cSituacao.ItemIndex > 0;
     bExon.Enabled    := cSituacao.ItemIndex <> 1;
     with tNotas do begin
          sql.clear;
          sql.add('select distinct');
          sql.add('       Nota');
          sql.add('      ,Data');
          sql.add('      ,Data_Desemb = (select Data_DesembaracoDeclaracao from ProcessosDocumentos pd where pd.Numero_Declaracao = ni.DI)');
          sql.add('      ,Data_Vencto = (select Data_DesembaracoDeclaracao from ProcessosDocumentos pd where pd.Numero_Declaracao = ni.DI) + :pPrazo');
          sql.add('      ,Processo');
          sql.add('      ,DI');
          sql.add('      ,Valor_TotalNota = (select Valor_TotalNota from NotasFiscais where Numero = Nota and Data_Emissao = Data)');
          sql.add('      ,Exonerado = (select Exonerado from ProcessosDocumentos pd where pd.Numero_Declaracao = ni.DI)');
          sql.add('      ,Dias = iif((select Exonerado from ProcessosDocumentos pd where pd.Numero_Declaracao = ni.DI) = 0, :pPrazo - datediff(day, Data, getdate()), 0)');
          sql.add('from NotasItens ni');
          sql.add('where Saida_Entrada = 0');
          sql.add('and isnull(DI, '''') <> '''' ');
          sql.add('and isnull(Cancelada, 0) = 0');
          sql.add('and isnull(Nfe_Denegada, 0) = 0');
          if cSituacao.itemindex = 0 then begin
             sql.add('and (select isnull(Exonerado, 0) from ProcessosDocumentos pd where pd.Processo = ni.Processo) = 0');
          end;
          if cSituacao.itemindex = 1 then begin
             sql.add('and (select isnull(Exonerado, 0) from ProcessosDocumentos pd where pd.Processo = ni.Processo) = 1');
          end;
          sql.add('union all');
          sql.add('select distinct ');
          sql.add('       Nota = null');
          sql.add('      ,Data = null');
          sql.add('      ,Data_Desemb = Data_DesembaracoDeclaracao');
          sql.add('      ,Data_Vencto = Data_DesembaracoDeclaracao + :pPrazo');
          sql.add('      ,Processo');
          sql.add('      ,DI = Numero_Declaracao');
          sql.add('      ,Valor_TotalNota = 0');
          sql.add('      ,Exonerado');
          sql.add('      ,Dias = iif(Exonerado = 0, :pPrazo - datediff(day, pd.Data_DesembaracoDeclaracao, getdate()), 0)');
          sql.add('from ProcessosDocumentos pd');
          sql.add('where isnull(Numero_Declaracao, '''') <> '''' ');
          sql.add('and Tipo = ''I'' ');
          if cSituacao.itemindex = 0 then begin
             sql.add('and isnull(Exonerado, 0) = 0');
          end;
          if cSituacao.itemindex = 1 then begin
             sql.add('and isnull(Exonerado, 0) = 1');
          end;
          sql.add('and (select count(DI) from NotasItens ni where ni.di = pd.Numero_Declaracao) = 0');
          sql.add('order by Exonerado, Dias, DI');
          parambyname('pPrazo').AsInteger := Dados.ConfiguracaoPrazo_Exoneracao.AsInteger;
          //sql.savetofile('c:\temp\Notas_Exonerar.sql');
          open;
     end;

end;


end.
