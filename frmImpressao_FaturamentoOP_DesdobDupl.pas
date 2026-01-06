unit frmImpressao_FaturamentoOP_DesdobDupl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Buttons, Vcl.ExtCtrls, RxLookup, RXCtrls, IniFiles,
  Funcoes, ppParameter, ppVar, ppBands, ppCtrls, ppPrnabl, ppReport, ppDBPipe, ppSubRpt, DB, DBAccess, MSAccess,
  Mask, RxCurrEdit, MemDS, ppDesignLayer, ppModule, raCodMod, ppStrtch, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, RxToolEdit;

type
  TImpressao_FaturamentoOP_DesdobDupl = class(TForm)
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TBitBtn;
    cExcel: TCheckBox;
    StaticText2: TStaticText;
    cNota: TCurrencyEdit;
    pEmpresas: TppDBPipeline;
    pDespesas: TppDBPipeline;
    rDesdobraDupl: TppReport;
    ppParameterList1: TppParameterList;
    tEntradas: TMSQuery;
    pSoma: TppDBPipeline;
    dstEntradas: TDataSource;
    pProcesso: TppDBPipeline;
    tSaidas: TMSQuery;
    tNotasDespesas: TMSQuery;
    dstNotasDespesas: TDataSource;
    tProcesso: TMSQuery;
    dstProcesso: TDataSource;
    tNotas: TMSQuery;
    pSaidas: TppDBPipeline;
    dstSaidas: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    lTitulo: TppLabel;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    lNotasEntrada: TppLabel;
    lNotasSaida: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppShape11: TppShape;
    ppLabel12: TppLabel;
    ppShape12: TppShape;
    ppLabel14: TppLabel;
    ppShape13: TppShape;
    ppLabel15: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel2: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    lTotalDespNF: TppDBCalc;
    lTotalDespProc: TppDBCalc;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel8: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel10: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel16: TppLabel;
    lTotalCustoProc: TppVariable;
    lTotalCustoNF: TppVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText15: TppDBText;
    ppLabel23: TppLabel;
    ppDBText17: TppDBText;
    ppLabel25: TppLabel;
    ppLine7: TppLine;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppVariable1: TppVariable;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText4: TppDBText;
    ppLabel30: TppLabel;
    ppDBText18: TppDBText;
    ppLabel31: TppLabel;
    ppLine8: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppVariable2: TppVariable;
    ppLabel34: TppLabel;
    ppDBText19: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure lTotalCustoProcCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure lTotalCustoNFCalc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FaturamentoOP_DesdobDupl: TImpressao_FaturamentoOP_DesdobDupl;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TImpressao_FaturamentoOP_DesdobDupl.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;

      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT *');
           ProcessosDOC.SQL.Add('FROM ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE(Desativado <> 1) AND (SELECT COUNT(*) FROM NotasFiscais WHERE(Processo = ProcessosDocumentos.Processo)) > 0');
           ProcessosDOC.SQL.Add('ORDER BY Processo');
           ProcessosDOC.Open;
           
           // Carregando as ultimas opções utilizadas no relatório como default.
           aINI                   := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
           cProcesso.KeyValue     := aINI.ReadString ('IMPRESSAO_FATURAMENTO_DESDOBDUPL', 'Processo', '');
           cNota.AsInteger        := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DESDOBDUPL', 'Nota'    , 0);
           cExcel.Checked         := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_DESDOBDUPL', 'Excel'   , false);
      End;
      aINI.Free;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_FaturamentoOP_DesdobDupl.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FaturamentoOP_DesdobDupl.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_DESDOBDUPL', 'Processo', cProcesso.Text);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DESDOBDUPL', 'Nota'    , cNota.AsInteger);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_DESDOBDUPL', 'Excel'   , cExcel.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_FaturamentoOP_DesdobDupl.Release;
      Impressao_FaturamentoOP_DesdobDupl := nil;
end;

procedure TImpressao_FaturamentoOP_DesdobDupl.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FaturamentoOP_DesdobDupl.bLimparClick(Sender: TObject);
begin
      cProcesso.ClearValue;
      cNota.Clear;
end;

procedure TImpressao_FaturamentoOP_DesdobDupl.bImprimirClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           tProcesso.SQL.Clear;
           tProcesso.SQL.Add('SELECT Processo,');
           tProcesso.SQL.Add('       Frete,');
           tProcesso.SQL.Add('       Seguro,');
           tProcesso.SQL.Add('       Valor_PIS,');
           tProcesso.SQL.Add('       Valor_COFINS,');
           tProcesso.SQL.Add('       Valor_IPI,');
           tProcesso.SQL.Add('       FOB,');
           tProcesso.SQL.Add('       FOB_ME,');
           tProcesso.SQL.Add('       Taxa_FOB,');
           tProcesso.SQL.Add('       Moeda_FOB,');
           tProcesso.SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Codigo = Moeda_FOB)) AS Nome_Moeda,');
           tProcesso.SQL.Add('       (SELECT Simbolo FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Codigo = Moeda_FOB)) AS Simbolo_Moeda');
           tProcesso.SQL.Add('FROM ProcessosDocumentos');
           tProcesso.SQL.Add('WHERE(Processo = :pProcesso)');
           //tProcesso.SQL.SaveToFile('c:\temp\Desdobramento_Duplicatas.sql');
           tProcesso.ParamByName('pProcesso').AsString := cProcesso.Text;
           tProcesso.Open;

           tNotas.SQL.Clear;
           tNotas.SQL.Add('SELECT Numero,');
           tNotas.SQL.Add('       Saida_Entrada');
           tNotas.SQL.Add('FROM   NotasFiscais');
           tNotas.SQL.Add('WHERE  (Processo = :pProcesso)');

           If cNota.AsInteger > 0 then tNotas.SQL.Add('       AND (Numero = '+cNota.Text+')');
           
           tNotas.SQL.Add('ORDER  BY Saida_Entrada, Numero');
           tNotas.ParamByName('pProcesso').AsString := cProcesso.Text;
           tNotas.Open;

           lNotasEntrada.Text := '';
           lNotasSaida.Text   := '';
           While not tNotas.Eof do begin
                 If tNotas.FieldByName('Saida_Entrada').AsInteger = 0 then
                    lNotasEntrada.Text := lNotasEntrada.Text + tNotas.FieldByName('Numero').AsString+'/'
                 else
                    lNotasSaida.Text   := lNotasSaida.Text + tNotas.FieldByName('Numero').AsString+'/';

                 tNotas.Next;
           End;
           lNotasEntrada.Text := Copy(lNotasEntrada.Text, 1, Length(Trim(lNotasEntrada.Text))-1);
           lNotasSaida.Text   := Copy(lNotasSaida.Text  , 1, Length(Trim(lNotasSaida.Text))-1);

           tNotasDespesas.SQL.Clear;
           tNotasDespesas.SQL.Add('SELECT Classificacao, Descricao, SUM(Valor_Total) AS Valor_Total, SUM(Valor_Nota) AS Valor_Nota, Processo');
           tNotasDespesas.SQL.Add('FROM   NotasDespesas');
           tNotasDespesas.SQL.Add('WHERE  (Processo = :pProcesso)');

           If cNota.AsInteger > 0 then tNotasDespesas.SQL.Add('       AND (Nota = '+cNota.Text+')');

           tNotasDespesas.SQL.Add('GROUP  BY Classificacao, Descricao, Processo');
           tNotasDespesas.SQL.Add('ORDER  BY Classificacao');
           tNotasDespesas.ParamByName('pProcesso').AsString := cProcesso.Text;
           tNotasDespesas.Open;

           tEntradas.SQL.Clear;
           tEntradas.SQL.Add('SELECT SUM(Valor_Frete  * Quantidade) AS Frete_Imp,');
           tEntradas.SQL.Add('       SUM(Valor_Seguro * Quantidade) AS Seguro_Imp,');
           tEntradas.SQL.Add('       SUM(Valor_PIS    * Quantidade) AS PIS_Imp,');
           tEntradas.SQL.Add('       SUM(Valor_COFINS * Quantidade) AS COFINS_Imp,');
           tEntradas.SQL.Add('       SUM(Valor_IPI    * Quantidade) AS IPI_Imp');
           tEntradas.SQL.Add('FROM   NotasItens');
           tEntradas.SQL.Add('WHERE  (Saida_Entrada = 0) AND (Processo = :pProcesso)');
           tEntradas.ParamByName('pProcesso').AsString := Trim(cProcesso.Text);
           tEntradas.Open;

           tSaidas.SQL.Clear;
           tSaidas.SQL.Add('SELECT SUM(Valor_IPI * Quantidade)    AS IPI_Saida,');
           tSaidas.SQL.Add('       SUM(Valor_ICMSSub)             AS ICMS_Sub,');
           tSaidas.SQL.Add('       SUM(Valor_PIS    * Quantidade) AS PIS_Saida,');
           tSaidas.SQL.Add('       SUM(Valor_COFINS * Quantidade) AS COFINS_Saida');
           tSaidas.SQL.Add('FROM   NotasItens');
           tSaidas.SQL.Add('WHERE (Processo = :pProcesso) AND (Saida_Entrada = 1)');

           If cNota.AsInteger > 0 then tSaidas.SQL.Add('       AND (Nota = '+cNota.Text+')');

           tSaidas.ParamByName('pProcesso').AsString := Trim(cProcesso.Text);
           tSaidas.Open;

           lTitulo.Caption := 'Desdobramento de Duplicatas do Processo '+cProcesso.Text;

           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;
           //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           rDesdobraDupl.Print;
           rDesdobraDupl.FreeOnRelease;
           rDesdobraDupl.Reset;
      End;
end;

procedure TImpressao_FaturamentoOP_DesdobDupl.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
     Value := tEntradas.FieldByName('IPI_Imp').AsCurrency - tSaidas.FieldByName('IPI_Saida').AsCurrency;
end;

procedure TImpressao_FaturamentoOP_DesdobDupl.lTotalCustoProcCalc(Sender: TObject; var Value: Variant);
begin
     Value := lTotalDespProc.Value + tProcesso.FieldByName('Frete').AsCurrency + tProcesso.FieldByName('Seguro').AsCurrency + tProcesso.FieldByName('Valor_PIS').AsCurrency + tProcesso.FieldByName('Valor_COFINS').AsCurrency;
end;

procedure TImpressao_FaturamentoOP_DesdobDupl.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
     Value := tSaidas.FieldByName('PIS_Saida').AsCurrency + tSaidas.FieldByName('COFINS_Saida').AsCurrency;
end;

procedure TImpressao_FaturamentoOP_DesdobDupl.lTotalCustoNFCalc(Sender: TObject; var Value: Variant);
begin
     Value := lTotalDespProc.Value + tEntradas.FieldByName('Frete_Imp').AsCurrency + tEntradas.FieldByName('Seguro_Imp').AsCurrency + tEntradas.FieldByName('PIS_Imp').AsCurrency + tEntradas.FieldByName('COFINS_Imp').AsCurrency;
end;

end.
