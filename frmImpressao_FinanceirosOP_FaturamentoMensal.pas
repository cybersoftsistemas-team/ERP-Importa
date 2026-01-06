unit frmImpressao_FinanceirosOP_FaturamentoMensal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, RXSpin, RxLookup, Vcl.ExtCtrls, RXCtrls, DB, DBAccess, MSAccess, ppDBPipe,
  ppClass, ppReport, ppCtrls, ppPrnabl, ppBands, ppVar, ppChrt, ppChrtDP, ComObj, Funcoes, IniFiles, DateUtils, MaskUtils, ppDB, ppParameter, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd, MemDS, Vcl.Mask, RxToolEdit,
  VCLTee.TeEngine;

type
  TImpressao_FinanceirosOP_FaturamentoMensal = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    cCliente: TRxDBLookupCombo;
    lCliFor: TStaticText;
    cAnoIni: TRxSpinEdit;
    cAnoFim: TRxSpinEdit;
    tMeses: TMSQuery;
    dstMeses: TDataSource;
    rFaturamentoMensalCliente: TppReport;
    pMeses: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    pDetalhe: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    ppLabel2: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    lPeriodo: TppLabel;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape7: TppShape;
    ppLabel6: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppShape11: TppShape;
    ppLabel11: TppLabel;
    ppShape12: TppShape;
    ppLabel12: TppLabel;
    ppShape13: TppShape;
    ppLabel13: TppLabel;
    pEmpresas: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    lTotalJaneiro: TppVariable;
    lTotalFevereiro: TppVariable;
    lTotalMarco: TppVariable;
    lTotalAbril: TppVariable;
    lTotalMaio: TppVariable;
    lTotalJunho: TppVariable;
    lTotalJulho: TppVariable;
    lTotalAgosto: TppVariable;
    lTotalSetembro: TppVariable;
    lTotalOutubro: TppVariable;
    lTotalNovembro: TppVariable;
    lTotalDezembro: TppVariable;
    ppLine1: TppLine;
    ppLabel14: TppLabel;
    Graf1: TppDPTeeChart;
    tTotalMesCliente: TMSQuery;
    dstTotalMes: TDataSource;
    cDetalhe: TCheckBox;
    rFaturamentoMensal: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText15: TppDBText;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    lPeriodo2: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel31: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine2: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppVariable5: TppVariable;
    ppVariable6: TppVariable;
    ppVariable7: TppVariable;
    ppVariable8: TppVariable;
    ppVariable9: TppVariable;
    ppVariable10: TppVariable;
    ppVariable11: TppVariable;
    ppVariable12: TppVariable;
    Graf2: TppDPTeeChart;
    ppLabel16: TppLabel;
    pTotalMes: TppDBPipeline;
    ppLine5: TppLine;
    ppShape14: TppShape;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel30: TppLabel;
    lTotalGeral: TppVariable;
    ppLine21: TppLine;
    ppShape15: TppShape;
    cGrafico: TRadioGroup;
    cExcel: TCheckBox;
    cZebrado: TCheckBox;
    lFaixa: TppShape;
    cModalidade: TRxDBLookupCombo;
    StaticText3: TStaticText;
    ppLabel18: TppLabel;
    ppVariable13: TppVariable;
    cTotalizador: TRadioGroup;
    ppShape16: TppShape;
    ppLabel32: TppLabel;
    pCNPJ: TppDBText;
    cFiliais: TCheckBox;
    iLogo: TppImage;
    ppImage1: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    tEmpresas: TMSQuery;
    cDataIni: TDateEdit;
    StaticText4: TStaticText;
    cDataFim: TDateEdit;
    StaticText5: TStaticText;
    rFaturamentoMensal2: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDBText16: TppDBText;
    lTitulo2: TppLabel;
    lData: TppLabel;
    ppLine22: TppLine;
    iLogo2: TppImage;
    ppDetailBand2: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLabel48: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLabel39: TppLabel;
    ppPageSummaryBand1: TppPageSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel38: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cAnoIniChange(Sender: TObject);
    procedure lTotalJaneiroCalc(Sender: TObject; var Value: Variant);
    procedure lTotalFevereiroCalc(Sender: TObject; var Value: Variant);
    procedure lTotalMarcoCalc(Sender: TObject; var Value: Variant);
    procedure lTotalMaioCalc(Sender: TObject; var Value: Variant);
    procedure lTotalAbrilCalc(Sender: TObject; var Value: Variant);
    procedure lTotalJunhoCalc(Sender: TObject; var Value: Variant);
    procedure lTotalJulhoCalc(Sender: TObject; var Value: Variant);
    procedure lTotalAgostoCalc(Sender: TObject; var Value: Variant);
    procedure lTotalSetembroCalc(Sender: TObject; var Value: Variant);
    procedure lTotalOutubroCalc(Sender: TObject; var Value: Variant);
    procedure lTotalNovembroCalc(Sender: TObject; var Value: Variant);
    procedure lTotalDezembroCalc(Sender: TObject; var Value: Variant);
    procedure lTotalGeralCalc(Sender: TObject; var Value: Variant);
    procedure cDetalheClick(Sender: TObject);
    procedure ExportaEXCEL;
    procedure pDetalheBeforePrint(Sender: TObject);
    procedure ppVariable13Calc(Sender: TObject; var Value: Variant);
    procedure bImprimirClick(Sender: TObject);
  private
    procedure Imprimir1;
    procedure Imprimir2;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_FaturamentoMensal: TImpressao_FinanceirosOP_FaturamentoMensal;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_FaturamentoMensal.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.FormClose(Sender: TObject; var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'AnoIni'     , cAnoIni.AsInteger);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'AnoFim'     , cAnoFim.AsInteger);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_MENSAL', 'Detalhe'    , cDetalhe.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_MENSAL', 'EXCEL'      , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_MENSAL', 'Zebrado'    , cZebrado.Checked);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'Grafico'    , cGrafico.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'Totalizador', cTotalizador.ItemIndex);
      If cCliente.KeyValue > 0 then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'Cliente', cCliente.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'Cliente', 0);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_MENSAL', 'Filiais', cFiliais.Checked);
      aINI.Writestring('IMPRESSAO_FATURAMENTO_MENSAL', 'DataIni', cDataIni.text);
      aINI.Writestring('IMPRESSAO_FATURAMENTO_MENSAL', 'DataFim', cDataFim.text);

      aINI.Free;

      Impressao_FinanceirosOP_FaturamentoMensal.Release;
      Impressao_FinanceirosOP_FaturamentoMensal := nil;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                   := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cAnoIni.Value          := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'AnoIni', YearOf(Date));
      cAnoFim.Value          := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'AnoFim', YearOf(Date));
      cCliente.KeyValue      := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'Cliente', 0);
      cDetalhe.Checked       := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_MENSAL', 'Detalhe', true);
      cExcel.Checked         := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_MENSAL', 'EXCEL'  , false);
      cZebrado.Checked       := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_MENSAL', 'Zebrado', true);
      cGrafico.ItemIndex     := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'Grafico', 0);
      cTotalizador.ItemIndex := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MENSAL', 'Totalizador', 1);
      cFiliais.Checked       := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_MENSAL', 'Filiais', true);
      cDataIni.text          := aINI.Readstring('IMPRESSAO_FATURAMENTO_MENSAL', 'DataIni', '');
      cDataFim.text          := aINI.Readstring('IMPRESSAO_FATURAMENTO_MENSAL', 'DataFim', '');
      aINI.Free;

      With Dados do begin
           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
           TiposProcesso.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           // Seleciona todas as filiais da empresa "MATRIZ" em uso.
           tEmpresas.SQL.Clear;
           tEmpresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo <> :pEmpresa) AND (Consolidar = 1) AND SUBSTRING(CNPJ, 1, 8) = :pCNPJ');
           tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           tEmpresas.ParamByName('pCNPJ').AsString     := Copy(EmpresasCNPJ.AsString, 1, 8);
           tEmpresas.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.cAnoIniChange(Sender: TObject);
begin
     If Trim(cAnoIni.Text) <> '' then
        If cAnoFim.AsInteger < cAnoIni.AsInteger then cAnoFim.AsInteger := cAnoIni.AsInteger;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.bImprimirClick(Sender: TObject);
begin
      if DataLimpa(cDataIni.text) or DataLimpa(cDataFim.text) then
         Imprimir1
      else
         Imprimir2;

end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.Imprimir1;
var
    i :integer;
//    vSeries :TChartSeries;
    mSQLMatriz
   ,mSQLFilial: Widestring;    
begin
      If cDetalhe.Checked then begin
         tMeses.SQL.Clear;
         tMeses.SQL.Add('SELECT CNPJ     = Destinatario_CNPJ_CPF,');
         tMeses.SQL.Add('       Filial   = CASE WHEN Destinatario_Juridica = 1 THEN SUBSTRING(Destinatario_CNPJ_CPF, 1, 8) ELSE Destinatario_CNPJ_CPF END,');
         tMeses.SQL.Add('       Juridica = Destinatario_Juridica,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  1 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Janeiro,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  2 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Fevereiro,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  3 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Marco,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  4 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Abril,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  5 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Maio,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  6 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Junho,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  7 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Julho,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  8 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Agosto,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  9 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Setembro,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) = 10 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Outubro,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) = 11 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Novembro,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) = 12 THEN ISNULL(SUM(Valor_TotalNota), 0) END AS Dezembro');
         tMeses.SQL.Add('INTO #Temp');
         tMeses.SQL.Add('FROM   NotasFiscais');
         tMeses.SQL.Add('WHERE (YEAR(Data_Emissao) BETWEEN :pAnoIni AND :pAnoFim)');
         tMeses.SQL.Add('      AND (Saida_Entrada = 1)');
         tMeses.SQL.Add('      AND (ISNULL(Cancelada, 0) <> 1)');
         tMeses.SQL.Add('      AND (ISNULL(Nfe_Denegada, 0) <> 1)');
         tMeses.SQL.Add('      AND ((SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 OR (SELECT Relatorio_Vendas FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1)');

         If Trim(cCliente.Text) <> '' then begin
            tMeses.SQL.Add('      AND (Cliente_Codigo = :pCliente)');
         End;
         
         If Trim(cModalidade.Text) <> '' then begin
            tMeses.SQL.Add('      AND (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE(Processo = NotasFiscais.Processo)) = :pModalidade');
            tMeses.ParamByName('pModalidade').AsInteger := Dados.TiposProcessoCodigo.AsInteger;
         End;
         tMeses.SQL.Add('GROUP BY Destinatario_Nome, Destinatario_CNPJ_CPF, MONTH(Data_Emissao), Destinatario_Juridica');

         tMeses.SQL.Add('UNION ALL');
         tMeses.SQL.Add('SELECT CNPJ     = NULL,');
         tMeses.SQL.Add('       Filial   = '''',');
         tMeses.SQL.Add('       Juridica = 1,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  1 THEN ISNULL(SUM(Total_Nota), 0) END AS Janeiro,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  2 THEN ISNULL(SUM(Total_Nota), 0) END AS Fevereiro,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  3 THEN ISNULL(SUM(Total_Nota), 0) END AS Marco,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  4 THEN ISNULL(SUM(Total_Nota), 0) END AS Abril,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  5 THEN ISNULL(SUM(Total_Nota), 0) END AS Maio,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  6 THEN ISNULL(SUM(Total_Nota), 0) END AS Junho,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  7 THEN ISNULL(SUM(Total_Nota), 0) END AS Julho,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  8 THEN ISNULL(SUM(Total_Nota), 0) END AS Agosto,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) =  9 THEN ISNULL(SUM(Total_Nota), 0) END AS Setembro,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) = 10 THEN ISNULL(SUM(Total_Nota), 0) END AS Outubro,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) = 11 THEN ISNULL(SUM(Total_Nota), 0) END AS Novembro,');
         tMeses.SQL.Add('       CASE WHEN MONTH(Data_Emissao) = 12 THEN ISNULL(SUM(Total_Nota), 0) END AS Dezembro');
         tMeses.SQL.Add('FROM   NotasServico');
         tMeses.SQL.Add('WHERE (YEAR(Data_Emissao) BETWEEN :pAnoIni AND :pAnoFim)');
         tMeses.SQL.Add('      AND (ISNULL(Cancelada, 0) <> 1)');

         If Trim(cCliente.Text) <> '' then begin
            tMeses.SQL.Add('      AND (Cliente = :pCliente)');
            tMeses.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
         End;
         tMeses.SQL.Add('GROUP BY Cliente, MONTH(Data_Emissao)');

         // Filiais.
         if cFiliais.Checked then begin
            mSQLMatriz := tMeses.SQL.Text;

            tEmpresas.First;
            while not tEmpresas.Eof do begin
                  mSQLFilial := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'       , mSQLMatriz);
                  mSQLFilial := RemoveCaracter('TipoNota'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'           , mSQLFilial);
                  mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLFilial);
                  mSQLFilial := RemoveCaracter('NotasServico'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'       , mSQLFilial);
                  mSQLFilial := RemoveCaracter('INTO #Temp'         , '', mSQLFilial);
                  tMeses.SQL.Add('UNION ALL');
                  tMeses.SQL.Add(mSQLFilial);
                  tEmpresas.Next;
            end;
         end;

         tMeses.SQL.Add('SELECT Cliente = CASE WHEN Juridica = 1 THEN (SELECT MAX(Nome) FROM Clientes WHERE SUBSTRING(CNPJ, 1, 8) = Filial) ELSE (SELECT MAX(Nome) FROM Clientes WHERE CPF = Filial) END,');
         If cFiliais.Checked = true then begin
            tMeses.SQL.Add('       CNPJ = '''',');
         end else begin
            tMeses.SQL.Add('       CNPJ,');
         End;

         tMeses.SQL.Add('       Juridica,');
         tMeses.SQL.Add('       Janeiro   = ISNULL(SUM(Janeiro)  , 0),');
         tMeses.SQL.Add('       Fevereiro = ISNULL(SUM(Fevereiro), 0),');
         tMeses.SQL.Add('       Marco     = ISNULL(SUM(Marco)    , 0),');
         tMeses.SQL.Add('       Abril     = ISNULL(SUM(Abril)    , 0),');
         tMeses.SQL.Add('       Maio      = ISNULL(SUM(Maio)     , 0),');
         tMeses.SQL.Add('       Junho     = ISNULL(SUM(Junho)    , 0),');
         tMeses.SQL.Add('       Julho     = ISNULL(SUM(Julho)    , 0),');
         tMeses.SQL.Add('       Agosto    = ISNULL(SUM(Agosto)   , 0),');
         tMeses.SQL.Add('       Setembro  = ISNULL(SUM(Setembro) , 0),');
         tMeses.SQL.Add('       Outubro   = ISNULL(SUM(Outubro)  , 0),');
         tMeses.SQL.Add('       Novembro  = ISNULL(SUM(Novembro) , 0),');
         tMeses.SQL.Add('       Dezembro  = ISNULL(SUM(Dezembro) , 0)');
         tMeses.SQL.Add('FROM #Temp');
         If cFiliais.Checked = true then begin
            tMeses.SQL.Add('GROUP BY Filial, Juridica');
         end else begin
            tMeses.SQL.Add('GROUP BY CNPJ, Juridica, Filial');
         End;
         tMeses.ParamByName('pAnoIni').AsInteger  := cAnoIni.AsInteger;
         tMeses.ParamByName('pAnoFim').AsInteger  := cAnoFim.AsInteger;
         tMeses.SQL.Add('ORDER BY Cliente');
         tMeses.SQL.Add('DROP TABLE #TEMP');

         If cTotalizador.ItemIndex = 0 then begin
            tMeses.SQL.Text := RemoveCaracter('(Valor_TotalNota)', '(Valor_TotalProdutos)', tMeses.SQL.Text);
         End;
         
         //tMeses.SQL.SaveToFile('c:\temp\Faturamento_Mensal_Meses_Detalhe.sql');
         tMeses.Open;

         lPeriodo.Caption := 'Período : Ano de '+cAnoIni.Text;
         If cAnoIni.AsInteger < cAnoFim.AsInteger then lPeriodo.Caption := lPeriodo.Caption + ' a ' + cAnoFim.Text;
         if cFiliais.Checked then
            lPeriodo.Caption := lPeriodo.Caption + ' - ' + 'CONSOLIDADO'
         else
            lPeriodo.Caption := lPeriodo.Caption + ' - ' + uppercase(Menu_Principal.lFilial.Caption);

         tTotalMesCliente.SQL.Clear;
         tTotalMesCliente.SQL.Add('SELECT MONTH(Data_Emissao) AS Mes,');
         tTotalMesCliente.SQL.Add('       CASE');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  1 THEN ''Janeiro''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  2 THEN ''Fevereio''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  3 THEN ''Março''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  4 THEN ''Abril''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  5 THEN ''Maio''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  6 THEN ''Junho''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  7 THEN ''Julho''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  8 THEN ''Agosto''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  9 THEN ''Setembro''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) = 10 THEN ''Outubro''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) = 11 THEN ''Novembro''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) = 12 THEN ''Dezembro''');
         tTotalMesCliente.SQL.Add('      END AS Nome_Mes,');
         tTotalMesCliente.SQL.Add('      SUM(Valor_TotalNota) AS Total_Mes');
         tTotalMesCliente.SQL.Add('FROM  NotasFiscais');
         tTotalMesCliente.SQL.Add('WHERE (YEAR(Data_Emissao) BETWEEN :pAnoIni AND :pAnoFim)');
         tTotalMesCliente.SQL.Add('  AND (NotasFiscais.Saida_Entrada = 1)');
         tTotalMesCliente.SQL.Add('  AND (ISNULL(Cancelada, 0) <> 1)');
         tTotalMesCliente.SQL.Add('  AND (ISNULL(NFe_Denegada, 0) <> 1)');
         tTotalmesCliente.SQL.Add('  AND ((SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 OR (SELECT Relatorio_Vendas FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1)');

         If Trim(cCliente.Text) <> '' then begin
            tTotalMesCliente.SQL.Add(' AND (Cliente_Codigo = :pCliente)');
            tTotalMesCliente.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
         End;

         If Trim(cModalidade.Text) <> '' then begin
            tTotalMesCliente.SQL.Add('      AND (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE(Processo = NotasFiscais.Processo)) = :pModalidade');
            tTotalMesCliente.ParamByName('pModalidade').AsInteger := Dados.TiposProcessoCodigo.AsInteger;
         End;

         tTotalMesCliente.SQL.Add('GROUP BY MONTH(Data_Emissao)');
         tTotalMesCliente.SQL.Add('ORDER BY Mes');
         tTotalMesCliente.ParamByName('pAnoIni').AsInteger  := cAnoIni.AsInteger;
         tTotalMesCliente.ParamByName('pAnoFim').AsInteger  := cAnoFim.AsInteger;

         If cTotalizador.ItemIndex = 0 then begin
            tTotalMesCliente.SQL.Text := RemoveCaracter('(Valor_TotalNota)', '(Valor_TotalProdutos)', tTotalMesCliente.SQL.Text);
         End;

         //tTotalMesCliente.SQL.SaveToFile('c:\temp\Faturamento_Mensal_TotalMes.sql');
         tTotalMesCliente.Open;

         Graf1.Chart.Series[0].Clear;
         While not tTotalMesCliente.Eof do begin
               Graf1.Chart.Series[0].AddY(tTotalMesCliente.FieldByName('Total_Mes').AsCurrency, tTotalMesCliente.FieldByName('Nome_Mes').AsString);
               tTotalMesCliente.Next;
         End;

         Graf1.DataPipeline := pMeses;
         Graf1.DataField    := 'Mes';
         Graf1.Chart.Series[0].DataSource := pMeses;

         If cExcel.Checked = false then begin
            rFaturamentoMensalCliente.Reset;
            rFaturamentoMensalCliente.Print;
         end else begin
            ExportaEXCEL;
         End;
      end else begin
         lPeriodo.Caption := 'Período : Ano de '+cAnoIni.Text;
         If cAnoIni.AsInteger <> cAnoFim.AsInteger then lPeriodo.Caption := ' a ' + cAnoFim.Text;
         if cFiliais.Checked then
            lPeriodo.Caption := lPeriodo.Caption + ' - ' + 'CONSOLIDADO'
         else
            lPeriodo.Caption := lPeriodo.Caption + ' - ' + uppercase(Menu_Principal.lFilial.Caption);

         tMeses.SQL.Clear;
         tMeses.SQL.Add('SELECT MONTH(Data_Emissao) AS Mes,');
         tMeses.SQL.Add('       SUM(Valor_TotalNota) AS Total_Mes');
         tMeses.SQL.Add('INTO #Temp');
         tMeses.SQL.Add('FROM NotasFiscais');
         tMeses.SQL.Add('WHERE (YEAR(Data_Emissao) BETWEEN :pAnoIni AND :pAnoFim)');
         tMeses.SQL.Add('      AND (NotasFiscais.Saida_Entrada = 1)');
         tMeses.SQL.Add('      AND (ISNULL(Cancelada, 0) <> 1)');
         tMeses.SQL.Add('      AND (ISNULL(NFe_Denegada, 0) <> 1)');
         tMeses.SQL.Add('      AND ((SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 OR (SELECT Relatorio_Vendas FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1)');

         If Trim(cCliente.Text) <> '' then begin
            tMeses.SQL.Add('      AND (Cliente_Codigo = :pCliente)');
         End;

         If Trim(cModalidade.Text) <> '' then begin
            tMeses.SQL.Add('      AND (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE(Processo = NotasFiscais.Processo)) = :pModalidade');
            tMeses.ParamByName('pModalidade').AsInteger := Dados.TiposProcessoCodigo.AsInteger;
         End;
         tMeses.SQL.Add('GROUP BY MONTH(Data_Emissao)');

         tMeses.SQL.Add('UNION ALL');
         tMeses.SQL.Add('SELECT MONTH(Data_Emissao) AS Mes,');
         tMeses.SQL.Add('       SUM(Total_Nota) AS Total_Mes');
         tMeses.SQL.Add('FROM NotasServico');
         tMeses.SQL.Add('WHERE (YEAR(Data_Emissao) BETWEEN :pAnoIni AND :pAnoFim)');
         tMeses.SQL.Add('      AND (Cancelada <> 1)');
         If Trim(cCliente.Text) <> '' then begin
            tMeses.SQL.Add('      AND (Cliente = :pCliente)');
            tMeses.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
         End;
         tMeses.SQL.Add('GROUP BY MONTH(Data_Emissao)');


         // Filiais.
         if cFiliais.Checked then begin
            mSQLMatriz := tMeses.SQL.Text;

            tEmpresas.First;
            while not tEmpresas.Eof do begin
                  mSQLFilial := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'       , mSQLMatriz);
                  mSQLFilial := RemoveCaracter('TipoNota'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'           , mSQLFilial);
                  mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLFilial);
                  mSQLFilial := RemoveCaracter('NotasServico'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'       , mSQLFilial);
                  mSQLFilial := RemoveCaracter('INTO #Temp'         , '', mSQLFilial);
                  tMeses.SQL.Add('UNION ALL');
                  tMeses.SQL.Add(mSQLFilial);
                  tEmpresas.Next;
            end;
         end;

         tMeses.SQL.Add('SELECT DISTINCT Janeiro   = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes =  1)),0),');
         tMeses.SQL.Add('                Fevereiro = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes =  2)),0),');
         tMeses.SQL.Add('                Marco     = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes =  3)),0),');
         tMeses.SQL.Add('                Abril     = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes =  4)),0),');
         tMeses.SQL.Add('                Maio      = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes =  5)),0),');
         tMeses.SQL.Add('                Junho     = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes =  6)),0),');
         tMeses.SQL.Add('                Julho     = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes =  7)),0),');
         tMeses.SQL.Add('                Agosto    = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes =  8)),0),');
         tMeses.SQL.Add('                Setembro  = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes =  9)),0),');
         tMeses.SQL.Add('                Outubro   = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes = 10)),0),');
         tMeses.SQL.Add('                Novembro  = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes = 11)),0),');
         tMeses.SQL.Add('                Dezembro  = ISNULL((SELECT SUM(Total_Mes) FROM #Temp WHERE(Mes = 12)),0)');
         tMeses.SQL.Add('FROM #Temp');
         tMeses.ParamByName('pAnoIni').AsInteger  := cAnoIni.AsInteger;
         tMeses.ParamByName('pAnoFim').AsInteger  := cAnoFim.AsInteger;

         If cTotalizador.ItemIndex = 0 then begin
            tMeses.SQL.Text := RemoveCaracter('(Valor_TotalNota)', '(Valor_TotalProdutos)', tMeses.SQL.Text);
         End;

         //tMeses.SQL.SaveToFile('c:\temp\Faturamento_Mensal_Meses.sql');
         tMeses.Open;

         lPeriodo.Caption := 'Período : Ano de '+cAnoIni.Text;
         If cAnoIni.AsInteger < cAnoFim.AsInteger then lPeriodo.Caption := lPeriodo.Caption + ' a ' + cAnoFim.Text;
         if cFiliais.Checked then
            lPeriodo.Caption := lPeriodo.Caption + ' - ' + 'CONSOLIDADO'
         else
            lPeriodo.Caption := lPeriodo.Caption + ' - ' + uppercase(Menu_Principal.lFilial.Caption);

         tTotalMesCliente.SQL.Clear;
         tTotalMesCliente.SQL.Add('SELECT MONTH(Data_Emissao) AS Mes,');
         tTotalMesCliente.SQL.Add('       CASE');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  1 THEN ''Janeiro''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  2 THEN ''Fevereio''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  3 THEN ''Março''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  4 THEN ''Abril''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  5 THEN ''Maio''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  6 THEN ''Junho''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  7 THEN ''Julho''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  8 THEN ''Agosto''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) =  9 THEN ''Setembro''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) = 10 THEN ''Outubro''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) = 11 THEN ''Novembro''');
         tTotalMesCliente.SQL.Add('           WHEN MONTH(Data_Emissao) = 12 THEN ''Dezembro''');
         tTotalMesCliente.SQL.Add('      END AS Nome_Mes,');
         tTotalMesCliente.SQL.Add('      SUM(Valor_TotalNota) AS Total_Mes');
         tTotalMesCliente.SQL.Add('FROM  NotasFiscais');
         tTotalMesCliente.SQL.Add('WHERE (YEAR(Data_Emissao) BETWEEN :pAnoIni AND :pAnoFim)');
         tTotalMesCliente.SQL.Add('      AND (NotasFiscais.Saida_Entrada = 1)');
         tTotalMesCliente.SQL.Add('      AND (Cancelada <> 1)');
         tTotalMesCliente.SQL.Add('      AND ((SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 OR (SELECT Relatorio_Vendas FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1)');

         If Trim(cCliente.Text) <> '' then begin
            tTotalMesCliente.SQL.Add(' AND (Cliente_Codigo = :pCliente)');
            tTotalMesCliente.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
         End;

         If Trim(cModalidade.Text) <> '' then begin
            tTotalMesCliente.SQL.Add('      AND (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE(Processo = NotasFiscais.Processo)) = :pModalidade');
            tTotalMesCliente.ParamByName('pModalidade').AsInteger := Dados.TiposProcessoCodigo.AsInteger;
         End;

         tTotalMesCliente.SQL.Add('GROUP BY MONTH(Data_Emissao)');
         tTotalMesCliente.SQL.Add('ORDER BY Mes');
         tTotalMesCliente.ParamByName('pAnoIni').AsInteger  := cAnoIni.AsInteger;
         tTotalMesCliente.ParamByName('pAnoFim').AsInteger  := cAnoFim.AsInteger;

         If cTotalizador.ItemIndex = 0 then begin
            tTotalMesCliente.SQL.Text := RemoveCaracter('(Valor_TotalNota)', '(Valor_TotalProdutos)', tTotalMesCliente.SQL.Text);
         End;

         //tTotalMesCliente.SQL.SaveToFile('c:\temp\Faturamento_Mensal_Cliente.txt');
         tTotalMesCliente.Open;

         lPeriodo2.Caption := 'Período : Ano de '+cAnoIni.Text;
         If cAnoIni.AsInteger < cAnoFim.AsInteger then lPeriodo2.Caption := lPeriodo2.Caption + ' a ' + cAnoFim.Text;
         if cFiliais.Checked then
            lPeriodo2.Caption := lPeriodo2.Caption + ' - ' + 'CONSOLIDADO'
         else
            lPeriodo2.Caption := lPeriodo2.Caption + ' - ' + uppercase(Menu_Principal.lFilial.Caption);

         Graf2.Chart.Visible := false;
         Graf2.Chart.Series[0].Clear;

         // Grafico de Barras.
         If cGrafico.ItemIndex = 0 then begin
            For i := 0 to Graf2.Chart.SeriesCount -1 do begin
//                vSeries := Graf2.Chart.Series[i];
//                vSeries.Marks.Style := smsPercent ;
//                ChangeSeriesType(vSeries, TBarSeries);
            End;
         End;
         // Grafico de Pizza.
         If cGrafico.ItemIndex = 1 then begin
            For i := 0 to Graf2.Chart.SeriesCount -1 do begin
//                vSeries := Graf2.Chart.Series[i];
//                vSeries.Marks.Style := smsLabelPercent ;
//                ChangeSeriesType(vSeries, TPieSeries);
            End;
         End;
         // Grafico de Area.
         If cGrafico.ItemIndex = 2 then begin
            For i := 0 to Graf2.Chart.SeriesCount -1 do begin
//                vSeries := Graf2.Chart.Series[i];
//                vSeries.Marks.Style := smsPercent ;
//                ChangeSeriesType(vSeries, TAreaSeries);
            End;
         End;
         // Grafico de linhas.
         If cGrafico.ItemIndex = 3  then begin
            For i := 0 to Graf2.Chart.SeriesCount -1 do begin
//                vSeries := Graf2.Chart.Series[i];
//                vSeries.Marks.Style := smsPercent ;
//                ChangeSeriesType(vSeries, TLineSeries);
            End;
         End;

         If cGrafico.ItemIndex <> 4  then begin
            Graf2.Chart.Visible := true;
            While not tTotalMesCliente.Eof do begin
                  Graf2.Chart.Series[0].AddY(tTotalMesCliente.FieldByName('Total_Mes').AsCurrency, Copy(tTotalMesCliente.FieldByName('Nome_Mes').AsString,1,3));
                  tTotalMesCliente.Next;
            End;
         End;

         Graf2.DataPipeline := pMeses;
         Graf2.DataField    := 'Mes';
         Graf2.Chart.Series[0].DataSource := pMeses;

         if FileExists(Dados.EmpresasLogo.Value) then iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
            
         rFaturamentoMensal.Reset;
         rFaturamentoMensal.Print;
      End;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.Imprimir2;
var
    i :integer;
    mSQLMatriz
   ,mSQLFilial: Widestring;
begin
     lTitulo2.Caption := 'FATURAMENTO MENSAL ';
     if cFiliais.Checked then
        lTitulo2.Caption := lTitulo2.Caption + ' - CONSOLIDADO'
     else
        lTitulo2.Caption := lTitulo2.Caption + ' - '+uppercase(Menu_Principal.lFilial.Caption);

     lData.Caption    := 'Período : ' + cDataIni.Text + ' a ' + cDataFim.Text;

     tMeses.SQL.Clear;
     tMeses.SQL.Add('select Ano = year(Data_Emissao)');
     tMeses.SQL.Add('      ,Mes = month(Data_Emissao)');
     tMeses.SQL.Add('      ,Total_Mes = '+iif(cTotalizador.ItemIndex = 0, 'sum(Valor_TotalNota)', 'sum(Valor_TotalProdutos)'));
     tMeses.SQL.Add('      ,Nome_Mes = case month(Data_Emissao)');
     tMeses.SQL.Add('      	                when  1 then ''Janeiro'' ');
     tMeses.SQL.Add('      	                when  2 then ''Fevereiro'' ');
     tMeses.SQL.Add('      	                when  3 then ''Março'' ');
     tMeses.SQL.Add('      	                when  4 then ''Abril'' ');
     tMeses.SQL.Add('      	                when  5 then ''Maio'' ');
     tMeses.SQL.Add('      	                when  6 then ''Junho'' ');
     tMeses.SQL.Add('      	                when  7 then ''Julho'' ');
     tMeses.SQL.Add('      	                when  8 then ''Agosto'' ');
     tMeses.SQL.Add('      	                when  9 then ''Setembro'' ');
     tMeses.SQL.Add('      	                when 10 then ''Outubro'' ');
     tMeses.SQL.Add('      	                when 11 then ''Novembro'' ');
     tMeses.SQL.Add('      	                when 12 then ''Dezembro'' ');
     tMeses.SQL.Add('                  end');
     tMeses.SQL.Add('from NotasFiscais');
     tMeses.SQL.Add('where Data_Emissao between :pDataIni and :pDataFim');
     tMeses.SQL.Add('and NotasFiscais.Saida_Entrada = 1');
     tMeses.SQL.Add('and isnull(Cancelada, 0) <> 1');
     tMeses.SQL.Add('and isnull(NFe_Denegada, 0) <> 1');
     tMeses.SQL.Add('and ((select Gerar_Financeiro from TipoNota where Codigo = Tipo_Nota) = 1 or (select Relatorio_Vendas from TipoNota where Codigo = Tipo_Nota) = 1)');

     if Trim(cModalidade.Text) <> '' then begin
        tMeses.SQL.Add('      and (select Modalidade_Importacao from ProcessosDocumentos where Processo = NotasFiscais.Processo) = :pModalidade');
        tMeses.ParamByName('pModalidade').AsInteger := Dados.TiposProcessoCodigo.AsInteger;
     end;
     tMeses.SQL.Add('group by Year(Data_Emissao), month(Data_Emissao)');
     tMeses.SQL.Add('union all');
     tMeses.SQL.Add('select Ano = year(Data_Emissao)');
     tMeses.SQL.Add('      ,Mes = month(Data_Emissao)');
     tMeses.SQL.Add('      ,Total_Mes = sum(Total_Nota)');
     tMeses.SQL.Add('      ,Nome_Mes = case month(Data_Emissao)');
     tMeses.SQL.Add('      	                when  1 then ''Janeiro'' ');
     tMeses.SQL.Add('      	                when  2 then ''Fevereiro'' ');
     tMeses.SQL.Add('      	                when  3 then ''Março'' ');
     tMeses.SQL.Add('      	                when  4 then ''Abril'' ');
     tMeses.SQL.Add('      	                when  5 then ''Maio'' ');
     tMeses.SQL.Add('      	                when  6 then ''Junho'' ');
     tMeses.SQL.Add('      	                when  7 then ''Julho'' ');
     tMeses.SQL.Add('      	                when  8 then ''Agosto'' ');
     tMeses.SQL.Add('      	                when  9 then ''Setembro'' ');
     tMeses.SQL.Add('      	                when 10 then ''Outubro'' ');
     tMeses.SQL.Add('      	                when 11 then ''Novembro'' ');
     tMeses.SQL.Add('      	                when 12 then ''Dezembro'' ');
     tMeses.SQL.Add('                  end');
     tMeses.SQL.Add('from NotasServico');
     tMeses.SQL.Add('where Data_Emissao between :pDataIni and :pDataFim');
     tMeses.SQL.Add('and Cancelada <> 1');
     If Trim(cCliente.Text) <> '' then begin
        tMeses.SQL.Add('and (Cliente = :pCliente)');
        tMeses.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
     End;
     tMeses.SQL.Add('group by Year(Data_Emissao), month(Data_Emissao)');

     // Filiais.
     if cFiliais.Checked then begin
        mSQLMatriz := tMeses.SQL.Text;

        tEmpresas.First;
        while not tEmpresas.Eof do begin
              mSQLFilial := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'       , mSQLMatriz);
              mSQLFilial := RemoveCaracter('TipoNota'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.TipoNota'           , mSQLFilial);
              mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLFilial);
              mSQLFilial := RemoveCaracter('NotasServico'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'       , mSQLFilial);
              tMeses.SQL.Add('UNION ALL');
              tMeses.SQL.Add(mSQLFilial);
              tEmpresas.Next;
        end;
     end;
     tMeses.SQL.Add('order by Ano, Mes');
     tMeses.ParamByName('pDataIni').Asdate := cDataIni.date;
     tMeses.ParamByName('pDataFim').Asdate := cDataFim.Date;
     //tMeses.SQL.SaveToFile('c:\temp\Faturamento_Mensal_Meses.sql');
     tMeses.Open;

     if FileExists(Dados.EmpresasLogo.Value) then iLogo2.Picture.LoadFromFile(Dados.EmpresasLogo.Value);

     rFaturamentoMensal2.Reset;
     rFaturamentoMensal2.Print;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalJaneiroCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Janeiro').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalFevereiroCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Fevereiro').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalMarcoCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Marco').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalAbrilCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Abril').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalMaioCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Maio').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalJunhoCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Junho').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalJulhoCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Julho').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalAgostoCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Agosto').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalSetembroCalc(
  Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Setembro').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalOutubroCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Outubro').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalNovembroCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Novembro').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalDezembroCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Dezembro').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.lTotalGeralCalc(Sender: TObject; var Value: Variant);
begin
      Value := tMeses.FieldByName('Janeiro').AsCurrency+
               tMeses.FieldByName('Fevereiro').AsCurrency+
               tMeses.FieldByName('Marco').AsCurrency+
               tMeses.FieldByName('Abril').AsCurrency+
               tMeses.FieldByName('Maio').AsCurrency+
               tMeses.FieldByName('Junho').AsCurrency+
               tMeses.FieldByName('Julho').AsCurrency+
               tMeses.FieldByName('Agosto').AsCurrency+
               tMeses.FieldByName('Setembro').AsCurrency+
               tMeses.FieldByName('Outubro').AsCurrency+
               tMeses.FieldByName('Novembro').AsCurrency+
               tMeses.FieldByName('Dezembro').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.cDetalheClick(Sender: TObject);
begin
      cGrafico.Enabled := true;
      cExcel.Enabled   := false;
      If cDetalhe.Checked = true then begin
         cGrafico.ItemIndex := 0;
         cGrafico.Enabled   := false;
         cExcel.Enabled     := true;
      End;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_FaturamentoMensal.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
   mTotal01
  ,mTotal02
  ,mTotal03
  ,mTotal04
  ,mTotal05
  ,mTotal06
  ,mTotal07
  ,mTotal08
  ,mTotal09
  ,mTotal10
  ,mTotal11
  ,mTotal12 : Real;
   mZebra   : Boolean;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tMeses.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','N3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','N3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','N3'].Font.Bold         := true;
       mPlanilha.Range['A3','N3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','N3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','N3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','N3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'CLIENTE';
       mPlanilha.Cells[3,02] := 'CNPJ/CPF';
       mPlanilha.Cells[3,03] := 'JANEIRO';
       mPlanilha.Cells[3,04] := 'FEVEREIRO';
       mPlanilha.Cells[3,05] := 'MARÇO';
       mPlanilha.Cells[3,06] := 'ABRIL';
       mPlanilha.Cells[3,07] := 'MAIO';
       mPlanilha.Cells[3,08] := 'JUNHO';
       mPlanilha.Cells[3,09] := 'JULHO';
       mPlanilha.Cells[3,10] := 'AGOSTO';
       mPlanilha.Cells[3,11] := 'SETEMBRO';
       mPlanilha.Cells[3,12] := 'OUTUBRO';
       mPlanilha.Cells[3,13] := 'NOVEMBRO';
       mPlanilha.Cells[3,14] := 'DEZEMBRO';

       mPlanilha.Range['A3','N3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','N3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','N3'].Font.Size           := 8;

       mTotal01 := 0;
       mTotal02 := 0;
       mTotal03 := 0;
       mTotal04 := 0;
       mTotal05 := 0;
       mTotal06 := 0;
       mTotal07 := 0;
       mTotal08 := 0;
       mTotal09 := 0;
       mTotal10 := 0;
       mTotal11 := 0;
       mTotal12 := 0;
       mLinha   := 4;
       mZebra   := false;

       While (not tMeses.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Size := 8;
             mPlanilha.Cells[mLinha,01] := tMeses.FieldByName('Cliente').AsString;
             If tMeses.FieldByName('Juridica').Value = 1 then
                mPlanilha.Cells[mLinha,02] := FormatMaskText('##.###.###/####-##;0', tMeses.FieldByName('CNPJ').AsString)
             else
                mPlanilha.Cells[mLinha,02] := FormatMaskText('###.###.###-##;0', tMeses.FieldByName('CNPJ').AsString);
             mPlanilha.Cells[mLinha,03] := tMeses.FieldByName('Janeiro').AsFloat;
             mPlanilha.Cells[mLinha,04] := tMeses.FieldByName('Fevereiro').AsFloat;
             mPlanilha.Cells[mLinha,05] := tMeses.FieldByName('Marco').AsFloat;
             mPlanilha.Cells[mLinha,06] := tMeses.FieldByName('Abril').AsFloat;
             mPlanilha.Cells[mLinha,07] := tMeses.FieldByName('Maio').AsFloat;
             mPlanilha.Cells[mLinha,08] := tMeses.FieldByName('Junho').AsFloat;
             mPlanilha.Cells[mLinha,09] := tMeses.FieldByName('Julho').AsFloat;
             mPlanilha.Cells[mLinha,10] := tMeses.FieldByName('Agosto').AsFloat;
             mPlanilha.Cells[mLinha,11] := tMeses.FieldByName('Setembro').AsFloat;
             mPlanilha.Cells[mLinha,12] := tMeses.FieldByName('Outubro').AsFloat;
             mPlanilha.Cells[mLinha,13] := tMeses.FieldByName('Novembro').AsFloat;
             mPlanilha.Cells[mLinha,14] := tMeses.FieldByName('Dezembro').AsFloat;

             mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';

             mTotal01 := mTotal01 + tMeses.FieldByName('Janeiro').AsFloat;
             mTotal02 := mTotal02 + tMeses.FieldByName('Fevereiro').AsFloat;
             mTotal03 := mTotal03 + tMeses.FieldByName('Marco').AsFloat;
             mTotal04 := mTotal04 + tMeses.FieldByName('Abril').AsFloat;
             mTotal05 := mTotal05 + tMeses.FieldByName('Maio').AsFloat;
             mTotal06 := mTotal06 + tMeses.FieldByName('Junho').AsFloat;
             mTotal07 := mTotal07 + tMeses.FieldByName('Julho').AsFloat;
             mTotal08 := mTotal08 + tMeses.FieldByName('Agosto').AsFloat;
             mTotal09 := mTotal09 + tMeses.FieldByName('Setembro').AsFloat;
             mTotal10 := mTotal10 + tMeses.FieldByName('Outubro').AsFloat;
             mTotal11 := mTotal11 + tMeses.FieldByName('Novembro').AsFloat;
             mTotal12 := mTotal12 + tMeses.FieldByName('Dezembro').AsFloat;

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             tMeses.Next;
             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       //Fecha o Excel
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Columns.Autofit;

       mPlanilha.Cells[mLinha,01] := 'TOTAIS';
       mPlanilha.Cells[mLinha,01].HorizontalAlignment := 3;
       mPlanilha.Range['B1','N3'].VerticalAlignment   := 2;
       mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Size         := 8;
       mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Cells[mLinha,03] := mTotal01;
       mPlanilha.Cells[mLinha,04] := mTotal02;
       mPlanilha.Cells[mLinha,05] := mTotal03;
       mPlanilha.Cells[mLinha,06] := mTotal04;
       mPlanilha.Cells[mLinha,07] := mTotal05;
       mPlanilha.Cells[mLinha,08] := mTotal06;
       mPlanilha.Cells[mLinha,09] := mTotal07;
       mPlanilha.Cells[mLinha,10] := mTotal08;
       mPlanilha.Cells[mLinha,11] := mTotal09;
       mPlanilha.Cells[mLinha,12] := mTotal10;
       mPlanilha.Cells[mLinha,13] := mTotal11;
       mPlanilha.Cells[mLinha,14] := mTotal12;

       mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';

       mPlanilha.Cells[1,01]                 := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','A1'].Font.Size  := 14;
       mPlanilha.Range['A1','A1'].Font.Bold  := true;
       mPlanilha.Range['A1','N1'].Mergecells := True;
       mPlanilha.Range['A1','N1'].HorizontalAlignment := 3;
       mPlanilha.Cells[2,01] := 'Faturamento Mensal (Detalhado p/Cliente) - Período de '+cAnoIni.Text + ' ás ' + cAnoFim.Text;
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','N2'].Mergecells := True;
       mPlanilha.Range['A2','N2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.pDetalheBeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then
         lFaixa.Visible := not lFaixa.Visible
      else
         lFaixa.Visible := False;

      If tMeses.FieldByName('Juridica').Value = 1 then
         pCNPJ.DisplayFormat := '##.###.###/####-##;0'
      else
         pCNPJ.DisplayFormat := '###.###.###-##;0';
end;

procedure TImpressao_FinanceirosOP_FaturamentoMensal.ppVariable13Calc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tMeses.FieldByName('Janeiro').AsCurrency +tMeses.FieldByName('Fevereiro').AsCurrency+tMeses.FieldByName('Marco').AsCurrency   +tMeses.FieldByName('Abril').AsCurrency+
                       tMeses.FieldByName('Maio').AsCurrency    +tMeses.FieldByName('Junho').AsCurrency    +tMeses.FieldByName('Julho').AsCurrency   +tMeses.FieldByName('Agosto').AsCurrency+
                       tMeses.FieldByName('Setembro').AsCurrency+tMeses.FieldByName('Outubro').AsCurrency  +tMeses.FieldByName('Novembro').AsCurrency+tMeses.FieldByName('Dezembro').AsCurrency;
end;

end.

