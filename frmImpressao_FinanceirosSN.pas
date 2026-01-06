unit frmImpressao_FinanceirosSN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Grids, DBGrids, DB, DBAccess, MSAccess, RxLookup, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RXDBCtrl,
  RXSpin, ppDBPipe, ppParameter, ppVar, ppBands, ppCtrls, ppReport, ppDB, ppDesignLayer, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, MemDS, system.UITypes, Vcl.Mask;

type
  TImpressao_FinanceirosSN = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    tPagamentos: TMSQuery;
    dstPagamentos: TDataSource;
    tPagamentosNumero: TLargeintField;
    tPagamentosClassificacao: TStringField;
    tPagamentosValor: TCurrencyField;
    tPagamentosProcesso: TStringField;
    tPagamentosCusto: TBooleanField;
    Grade: TRxDBGrid;
    bSelecionar: TButton;
    StaticText1: TStaticText;
    cInicio: TRxSpinEdit;
    cFinal: TRxSpinEdit;
    StaticText2: TStaticText;
    tIntervalo: TMSQuery;
    bSelIntervalo: TButton;
    rSN: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppShape16: TppShape;
    ppLabel18: TppLabel;
    ppShape17: TppShape;
    ppLabel19: TppLabel;
    ppShape18: TppShape;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    fFaixa: TppShape;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel35: TppLabel;
    lPagoREAL: TppVariable;
    ppLine8: TppLine;
    ppParameterList2: TppParameterList;
    pEmpresas: TppDBPipeline;
    pPagarReceber: TppDBPipeline;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    tPagarReceber: TMSQuery;
    dstPagarReceber: TDataSource;
    lValorME: TppVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    lPagoME: TppVariable;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppShape56: TppShape;
    ppLine11: TppLine;
    ppLabel69: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel70: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    pBancos: TppDBPipeline;
    StaticText3: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ppLine15: TppLine;
    ppDBText63: TppDBText;
    ppLine16: TppLine;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppVariable1: TppVariable;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    iLogo: TppImage;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cProcessoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure GradeEnter(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure lValorMECalc(Sender: TObject; var Value: Variant);
    procedure lPagoREALCalc(Sender: TObject; var Value: Variant);
    procedure lPagoMECalc(Sender: TObject; var Value: Variant);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosSN: TImpressao_FinanceirosSN;

implementation

uses frmDados;

{$R *.dfm}

procedure TImpressao_FinanceirosSN.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosSN.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Impressao_FinanceirosSN.Release;
     Impressao_FinanceirosSN := nil;
end;

procedure TImpressao_FinanceirosSN.FormShow(Sender: TObject);
begin
       With Dados do begin
            Clientes.SQL.Clear;
            Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
            Clientes.Open;

            Bancos.SQL.Clear;
            Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
            Bancos.Open;

            ProcessosDOC.SQL.Clear;
            ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
            ProcessosDOC.SQL.Add('WHERE ( (SELECT COUNT(*) FROM PagarReceber WHERE(Processo = ProcessosDocumentos.Processo)) > 0)');

            If EmpresasProcesso_Automatico.AsBoolean = true then 
               ProcessosDOC.SQL.Add('ORDER BY CAST(Processo AS int)')
            else
               ProcessosDOC.SQL.Add('ORDER BY Processo');
            ProcessosDOC.Open;

            Configuracao.Open;
       End;
end;

procedure TImpressao_FinanceirosSN.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
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

procedure TImpressao_FinanceirosSN.cProcessoChange(Sender: TObject);
begin
      Grade.DisableScroll;

      tPagamentos.SQL.Clear;
      tPagamentos.SQL.Add('SELECT Numero,');
      //tPagamentos.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(ClassificacaoFinanceira.Codigo = Classificacao)) AS Classificacao,');
      //tPagamentos.SQL.Add('       (SELECT Custo     FROM ClassificacaoFinanceira WHERE(ClassificacaoFinanceira.Codigo = Classificacao)) AS Custo,');
      If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
         tPagamentos.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira CF WHERE(CF.Codigo = Classificacao)) AS Classificacao,');
         tPagamentos.SQL.Add('       (SELECT Custo     FROM ClassificacaoFinanceira CF WHERE(CF.Codigo = Classificacao)) AS Custo,');
      end else begin
         tPagamentos.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE(CF.Codigo = Classificacao)) AS Classificacao,');
         tPagamentos.SQL.Add('       (SELECT Custo     FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE(CF.Codigo = Classificacao)) AS Custo,');
      End;
      tPagamentos.SQL.Add('       Data_Vencimento,');
      tPagamentos.SQL.Add('       Valor_Operacao AS Valor,');
      tPagamentos.SQL.Add('       Processo');
      tPagamentos.SQL.Add('FROM   PagarReceber ');
      tPagamentos.SQL.Add('WHERE  (Processo = :pProcesso) AND (SELECT Somente_Faturamento FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) <> 1');
      tPagamentos.SQL.Add('ORDER  BY Numero');
      tPagamentos.ParamByName('pProcesso').AsString := cProcesso.Text;
      tPagamentos.Open;
      Grade.EnableScroll;

      tIntervalo.SQL.Clear;
      tIntervalo.SQL.Add('SELECT MIN(Numero) AS Inicio, MAX(Numero) AS Final FROM PagarReceber WHERE(Processo = :pProcesso)');
      tIntervalo.ParamByName('pProcesso').AsString := cProcesso.Text;
      tIntervalo.Open;
      cInicio.AsInteger := tIntervalo.FieldByName('Inicio').AsInteger;
      cFinal.AsInteger  := tIntervalo.FieldByName('Final').AsInteger;

end;

procedure TImpressao_FinanceirosSN.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosSN.bSelecionarClick(Sender: TObject);
begin
      If bSelecionar.Tag = 0 then begin
         bSelecionar.Tag     := 1;
         bSelecionar.Caption := 'Desmarcar &Todos';
         Grade.SelectAll;
      end else begin
         bSelecionar.Tag := 0;
         bSelecionar.Caption := 'Selecionar &Todos';
         Grade.UnselectAll;
      End;
end;

procedure TImpressao_FinanceirosSN.GradeEnter(Sender: TObject);
begin
         bSelecionar.Tag := 0;
         bSelecionar.Caption := 'Selecionar &Todos';
         Grade.UnselectAll;
end;

procedure TImpressao_FinanceirosSN.bImprimirClick(Sender: TObject);
Var
    mSel  : Integer;
    mLista: WideString;
begin
      For mSel := 0 to Grade.SelectedRows.Count-1 do begin
          Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
          mLista := mLista + tPagamentosNumero.AsString + ',';
      End;

      If Trim(mLista) = '' then begin
         MessageDlg('Não há itens selecionados!'+#13+'Por favor selecione um ou mais itens na grade para poder imprimir a sua solicitação de numerários.', mtInformation, [mbOK], 0);
         Abort;
      End;

      mLista := '('+Copy(mLista, 1, Length(mLista)-1)+')';

      tPagarReceber.SQL.Clear;
      tPagarReceber.SQL.Add('SELECT PagarReceber.Valor_Documento,');
      tPagarReceber.SQL.Add('       PagarReceber.Data_Vencimento,');
      tPagarReceber.SQL.Add('       PagarReceber.Processo,');
      If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
         tPagarReceber.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira CF WHERE(CF.Codigo = PagarReceber.Classificacao)) AS Classificacao,');
      end else begin
         tPagarReceber.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE(CF.Codigo = PagarReceber.Classificacao)) AS Classificacao,');
      End;
      tPagarReceber.SQL.Add('       (SELECT DISTINCT Nome FROM Clientes, ProcessosDocumentos WHERE(Codigo = ProcessosDocumentos.Cliente) AND (ProcessosDocumentos.Processo = PagarReceber.Processo)) AS Cliente,');
      tPagarReceber.SQL.Add('       (SELECT DISTINCT Nome FROM Cybersoft_Cadastros.dbo.Moedas, ProcessosDocumentos WHERE(Codigo = ProcessosDocumentos.Moeda_FOB) AND (ProcessosDocumentos.Processo = PagarReceber.Processo)) AS Moeda,');
      tPagarReceber.SQL.Add('       (SELECT DISTINCT Taxa_FOB FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = PagarReceber.Processo)) AS Taxa,');
      tPagarReceber.SQL.Add('       (SELECT DISTINCT FOB FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = PagarReceber.Processo)) AS FOB_Real,');
      tPagarReceber.SQL.Add('       (SELECT DISTINCT FOB_ME FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = PagarReceber.Processo)) AS FOB_ME');
      tPagarReceber.SQL.Add('FROM PagarReceber WHERE( Numero IN'+mLista+' )');
      //tPagarReceber.SQL.SavetoFile('c:\Temp\Solicitacao_Numerario_Cliente.sql');
      tPagarReceber.Open;

      if fileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;   
      rSN.Reset;
      rSN.Print;
      rSN.Reset;
end;

procedure TImpressao_FinanceirosSN.lValorMECalc(Sender: TObject;var Value: Variant);
begin
      if tPagarReceber.FieldByName('Taxa').AsFloat <> 0 then begin
         Value := (tPagarReceber.FieldByName('Valor_Documento').AsCurrency / tPagarReceber.FieldByName('Taxa').AsFloat);
      end;   
end;

procedure TImpressao_FinanceirosSN.lPagoREALCalc(Sender: TObject;var Value: Variant);
begin
      Value := Value + tPagarReceber.FieldByName('Valor_Documento').AsCurrency;
end;

procedure TImpressao_FinanceirosSN.lPagoMECalc(Sender: TObject;var Value: Variant);
begin
      if tPagarReceber.FieldByName('Taxa').AsFloat <> 0 then begin
         Value := Value + (tPagarReceber.FieldByName('Valor_Documento').AsCurrency / tPagarReceber.FieldByName('Taxa').AsFloat);
      end;   
end;

procedure TImpressao_FinanceirosSN.ppVariable1Calc(Sender: TObject;var Value: Variant);
begin
     Inc(Value);
end;

end.
