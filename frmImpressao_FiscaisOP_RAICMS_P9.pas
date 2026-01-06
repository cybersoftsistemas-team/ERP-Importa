unit frmImpressao_FiscaisOP_RAICMS_P9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RxLookup, RXSpin, Vcl.StdCtrls,
   Vcl.ExtCtrls, RXCtrls, Buttons, INIFiles, Funcoes,  ppBands, ppClass, ppReport,
  ppCtrls, ppPrnabl, ppDBPipe, ppVar, ppSubRpt,
  DBCtrls, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppCache, ppComm, ppRelatv, ppProd, MemDS, Vcl.Mask;

type
  TImpressao_FiscaisOP_RAICMS_P9 = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText2: TStaticText;
    tSaidas: TMSQuery;
    tEstados: TMSQuery;
    tEntradas: TMSQuery;
    tOutros: TMSQuery;
    tEntradasNatureza_Codigo: TStringField;
    tEntradasValor_Contabil: TCurrencyField;
    tEntradasValor_BCICMS: TCurrencyField;
    tEntradasValor_ICMS: TCurrencyField;
    tEntradasValor_Isentas: TCurrencyField;
    tEntradasValor_Outras: TCurrencyField;
    tEntradasSE: TIntegerField;
    tIsentas: TMSQuery;
    cMes: TComboBox;
    cAno: TRxSpinEdit;
    tCIAP: TMSQuery;
    tNotas: TMSQuery;
    tICMS: TMSQuery;
    StaticText4: TStaticText;
    rApuracaoICMS: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    lTitulo1: TppLabel;
    ppShape4: TppShape;
    ppLabel8: TppLabel;
    ppShape5: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape8: TppShape;
    ppLabel13: TppLabel;
    ppShape9: TppShape;
    ppShape10: TppShape;
    pDebCred: TppLabel;
    pSemDebCred: TppLabel;
    ppShape12: TppShape;
    ppLabel16: TppLabel;
    ppShape11: TppShape;
    pImpDebCred: TppLabel;
    ppShape13: TppShape;
    ppLabel18: TppLabel;
    ppShape14: TppShape;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    dstEntradas: TDataSource;
    pEntradas: TppDBPipeline;
    ppDBText7: TppDBText;
    oEmpresa: TppDBPipeline;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    lPeriodo: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppShape16: TppShape;
    ppShape15: TppShape;
    lTitulo2: TppLabel;
    lCFOP1: TppLabel;
    lCFOP2: TppLabel;
    lCFOP3: TppLabel;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    pTotalContabil1: TppVariable;
    pTotalContabil2: TppVariable;
    pTotalContabil3: TppVariable;
    pTotalBC1: TppVariable;
    pTotalBC2: TppVariable;
    pTotalBC3: TppVariable;
    pTotalImposto1: TppVariable;
    pTotalImposto2: TppVariable;
    pTotalImposto3: TppVariable;
    ppSystemVariable1: TppSystemVariable;
    pTotalIsentas1: TppVariable;
    pTotalIsentas2: TppVariable;
    pTotalIsentas3: TppVariable;
    pTotalOutras1: TppVariable;
    pTotalOutras2: TppVariable;
    pTotalOutras3: TppVariable;
    ppShape22: TppShape;
    ppLabel7: TppLabel;
    pTotalGeralContabil: TppVariable;
    pTotalGeralBC: TppVariable;
    pTotalGeralImposto: TppVariable;
    pTotalGeralIsentas: TppVariable;
    pTotalGeralOutras: TppVariable;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppShape3: TppShape;
    ppLabel14: TppLabel;
    ppShape23: TppShape;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    lPeriodo2: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape24: TppShape;
    ppLabel25: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppShape25: TppShape;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppLabel28: TppLabel;
    ppLine13: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppShape28: TppShape;
    ppLine14: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppShape29: TppShape;
    ppLabel24: TppLabel;
    ppLine15: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine159: TppLine;
    ppLabel122: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppShape30: TppShape;
    ppLabel44: TppLabel;
    ppShape31: TppShape;
    ppLabel45: TppLabel;
    ppShape32: TppShape;
    ppLabel46: TppLabel;
    ppShape33: TppShape;
    ppLabel47: TppLabel;
    ppShape34: TppShape;
    ppLabel48: TppLabel;
    ppShape35: TppShape;
    ppLabel49: TppLabel;
    ppShape36: TppShape;
    ppLabel50: TppLabel;
    ppShape37: TppShape;
    ppLabel51: TppLabel;
    ppShape38: TppShape;
    ppLabel52: TppLabel;
    ppShape39: TppShape;
    ppLabel53: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppDBCalc1: TppDBCalc;
    tApuracao: TMSQuery;
    dstApuracao: TDataSource;
    pApuracao: TppDBPipeline;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    pSubTotDebAux: TppVariable;
    pSubTotDebSoma: TppVariable;
    ppDBCalc5: TppDBCalc;
    pSubTotalCreditoAux: TppVariable;
    pSubTotCreSoma: TppVariable;
    pTotalICMSE: TppVariable;
    pOutrosCreditos: TppVariable;
    pSaldoCredorAnterior: TppDBCalc;
    pTotalCreditos: TppVariable;
    pSaldoDevedor: TppVariable;
    pDeducoes: TppVariable;
    pSaldoCredor: TppVariable;
    ppFooterBand2: TppFooterBand;
    ppLine25: TppLine;
    ppLabel54: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine26: TppLine;
    ppLine27: TppLine;
    pTotalDebitos: TppVariable;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    lMovimento: TppLabel;
    cOrigem: TRadioGroup;
    cIncent: TRxDBLookupCombo;
    tTemp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppGroupFooterBand1AfterPrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure pSubTotDebAuxCalc(Sender: TObject; var Value: Variant);
    procedure pSubTotDebSomaCalc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure pSubTotalCreditoAuxCalc(Sender: TObject; var Value: Variant);
    procedure pSaldoICMSSaldoCalc(Sender: TObject; var Value: Variant);
    procedure pTotalCreditoCalc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand1AfterPrint(Sender: TObject);
    procedure pSaldoCredorAnteriorPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mImprimir : Boolean;
    mLinha    : Integer;
    mPagina   : Integer;
    Arquivo   : TextFile;
    mNomeArq  : String;
    mAberto   : Boolean;

    mTexto         : String;
    mImprime       : TextFile;
    mTotalContabilE: Currency;
    mTotalBCICMSE  : Currency;
    mTotalICMSE    : Currency;
    mTotalIsentasE : Currency;
    mTotalOutrasE  : Currency;
    mTotalContabilS: Currency;
    mTotalBCICMSS  : Currency;
    mTotalICMSS    : Currency;
    mTotalIsentasS : Currency;
    mTotalOutrasS  : Currency;
    mValorContabil : Currency;
    mValorBCICMS   : Currency;
    mValorICMS     : Currency;
    mValorIsentas  : Currency;
    mValorOutras   : Currency;
    mCabecalho     : Boolean;
    mSubTotDebAux  : Currency;
    mSubTotDebSoma : Currency;
    mSubTotCreAux  : Currency;
    mSubTotCreSoma : Currency;
    mTotalDebitos  : Currency;
    mTotalCreditos : Currency;
    mTotalParcela  : Currency;
    mData          : TDate;
    mImpLinha      : Boolean;
    mEstornoCredito: Currency;
    mCoeficiente   : Real;
    mSaldoCredorAnterior: Real;
    mICMS_Rec      :Real;
  end;

var
  Impressao_FiscaisOP_RAICMS_P9: TImpressao_FiscaisOP_RAICMS_P9;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FiscaisOP_RAICMS_P9.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.                                                                     
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cMes.ItemIndex    := aINI.ReadInteger('IMPRESSAO_RAICMS','Mes'       , 0);
      cAno.AsInteger    := aINI.ReadInteger('IMPRESSAO_RAICMS','Ano'       , 0);
      cOrigem.ItemIndex := aINI.ReadInteger('IMPRESSAO_RAICMS','Origem'    , 0);
      cIncent.KeyValue  := aINI.ReadInteger('IMPRESSAO_RAICMS','Incentivo' , -1);
      aINI.Free;

      with Dados do begin
           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.add('SELECT * FROM IncentivosFiscais ORDER BY nome');
           IncentivosFiscais.Open;
      end;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_RAICMS','Mes'      , cMes.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_RAICMS','Ano'      , cAno.AsInteger );
      aINI.WriteInteger('IMPRESSAO_RAICMS','Origem'   , cOrigem.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_RAICMS','Incentivo', iif(cIncent.KeyValue <> null, cIncent.KeyValue, 0));
      aINI.WriteFloat  ('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring,'ICMS_Rec' , mICMS_Rec);
      aINI.Free;

      LimpaMemoria;
      Impressao_FiscaisOP_RAICMS_P9.Release;
      Impressao_FiscaisOP_RAICMS_P9 := nil;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With dmFiscal, Dados do begin
           // Apurando operações com crédito do imposto nas entradas.
           tEntradas.Close;
           tEntradas.SQL.Clear;
           tEntradas.SQL.Add('SELECT SE = 0');
           tEntradas.SQL.Add('      ,NF.Natureza_Codigo');
           tEntradas.SQL.Add('      ,Valor_Contabil = CAST((CASE WHEN CHARINDEX( ''Valor_TotalProdutos''   , (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Valor_Total, 0)                   ELSE 0 END +');
           tEntradas.SQL.Add('                              CASE WHEN CHARINDEX( ''Valor_TotalIPI''        , (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Total_IPI, 0)                     ELSE 0 END +');
           tEntradas.SQL.Add('                              CASE WHEN CHARINDEX( ''Valor_TotalII''         , (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Valor_II * iif(ni.Quantidade>0, ni.Quantidade, 1), 0) ELSE 0 END +');
           tEntradas.SQL.Add('                              CASE WHEN CHARINDEX( ''Valor_AFRMM''           , (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Valor_AFRMM * iif(ni.Quantidade>0, ni.Quantidade, 1), 0)   ELSE 0 END +');
           tEntradas.SQL.Add('                              CASE WHEN CHARINDEX( ''Valor_ICMS''            , (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Valor_ICMSOper, 0)                ELSE 0 END +');
           tEntradas.SQL.Add('                              CASE WHEN CHARINDEX( ''Valor_PIS''             , (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Valor_PIS, 0)                     ELSE 0 END +');
           tEntradas.SQL.Add('                              CASE WHEN CHARINDEX( ''Valor_COFINS''          , (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Valor_COFINS, 0)                  ELSE 0 END +');
           tEntradas.SQL.Add('                              CASE WHEN CHARINDEX( ''Valor_OutrasDespesas''  , (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Valor_Despesa * iif(NI.Quantidade>0, ni.Quantidade, 1), 0) ELSE 0 END +');
           tEntradas.SQL.Add('                              CASE WHEN CHARINDEX( ''ValorICMS_Substitutivo'', (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Valor_ICMSSub, 0)                 ELSE 0 END +');
           tEntradas.SQL.Add('                              CASE WHEN CHARINDEX( ''NI.Valor_Seguro''       , (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Valor_Seguro, 0)                  ELSE 0 END)-');
           tEntradas.SQL.Add('                              CASE WHEN CHARINDEX( ''Total_Descontos''       , (SELECT Calculo_TotalPedido FROM TipoNota WHERE Codigo = NI.Tipo_Nota) ) > 0 THEN ISNULL(NI.Desconto_Valor, 0)                ELSE 0 END');
           tEntradas.SQL.Add('      AS DECIMAL(14,2))');
           tEntradas.SQL.Add('      ,(CASE WHEN ISNULL(NF.ICMS_Destacar, 0) = 0 THEN NI.Valor_BCICMSOper ELSE 0 END) AS Valor_BCICMS');
           tEntradas.SQL.Add('      ,(CASE WHEN ISNULL(NF.ICMS_Destacar, 0) = 0 THEN NI.Valor_ICMSOper   ELSE 0 END) AS Valor_ICMS');
           tEntradas.SQL.Add('      ,(NI.Valor_IsentasICMS) AS Valor_Isentas');
           tEntradas.SQL.Add('      ,(NI.Valor_OutrasICMS) AS Valor_Outras');
           tEntradas.SQL.Add('INTO #TEMP');
           tEntradas.SQL.Add('FROM   NotasItens NI, NotasFiscais NF');
           tEntradas.SQL.Add('WHERE (NI.Nota = NF.Numero  AND NI.Data = NF.Data_Emissao)');
           tEntradas.SQL.Add('AND   NF.Saida_Entrada = 0 AND ISNULL(NF.Cancelada, 0) = 0 AND (MONTH(NI.Data) = :pMes AND YEAR(NI.Data) = :pAno) AND ISNULL(NF.NFe_Denegada, 0) = 0');

           if Trim(cIncent.Text) <> '' then begin
              tEntradas.SQL.Add( 'AND (NF.Incentivo_Fiscal = :pIncentivo)' );
           end;
            
           if cOrigem.ItemIndex = 0 then tEntradas.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria) = ''I'' ');
           if cOrigem.ItemIndex = 1 then tEntradas.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria) = ''M'' ');
           if cOrigem.ItemIndex = 2 then tEntradas.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria) = ''N'' ');
           tEntradas.SQL.Add('UNION ALL');
           tEntradas.SQL.Add('SELECT  SE = 0');
           tEntradas.SQL.Add('       ,Natureza_Codigo');
           tEntradas.SQL.Add('       ,Valor_Contabil    = ISNULL(Valor_Liquido, 0) + ISNULL(Valor_IPI, 0) + ISNULL(Valor_ICMSSub, 0)');
           tEntradas.SQL.Add('       ,Valor_BCICMS      = ISNULL(Valor_BCICMSOper , 0)');
           tEntradas.SQL.Add('       ,Valor_ICMS        = ISNULL(Valor_ICMSOper   , 0)');
           tEntradas.SQL.Add('       ,Valor_IsentasICMS = ISNULL(Valor_IsentasICMS, 0)');
           tEntradas.SQL.Add('       ,Valor_OutrasICMS  = ISNULL(Valor_OutrasICMS , 0)');
           tEntradas.SQL.Add('FROM   NotasTerceirosItens NI');
           tEntradas.SQL.Add('WHERE (MONTH(Data_Entrada) = :pMes AND YEAR(Data_Entrada) = :pAno)');
           tEntradas.SQL.Add('  AND ISNULL((SELECT DISTINCT Servico FROM NotasTerceiros NT WHERE ISNULL(NT.Servico, '''') <> '''' AND NT.Nota = NI.Nota AND NT.Data_Entrada = NI.Data_Entrada  and NT.Fornecedor = NI.Fornecedor AND ISNULL(NT.Desdobramento, 0) = 0), '''') = '''' ');
           if Trim(cIncent.Text) <> '' then begin
              tEntradas.SQL.Add('  AND (SELECT distinct Incentivo_Fiscal FROM NotasTerceiros NT WHERE NT.Nota = NI.Nota AND NT.Data_Entrada = NI.Data_Entrada AND NI.Fornecedor = NT.Fornecedor AND ISNULL(NT.Desdobramento, 0) = 0) = :pIncentivo');
           end;
           if cOrigem.ItemIndex = 0 then tEntradas.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria) = ''I'' ');
           if cOrigem.ItemIndex = 1 then tEntradas.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria) = ''M'' ');
           if cOrigem.ItemIndex = 2 then tEntradas.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria) = ''N'' ');
           tEntradas.SQL.Add('UNION ALL');
           tEntradas.SQL.Add('SELECT SE = 1');
           tEntradas.SQL.Add('      ,NF.Natureza_Codigo');
           tEntradas.SQL.Add('      ,Valor_Contabil = CAST(((ISNULL(NI.Valor_ICMSSub, 0) + ISNULL(NI.Valor_Total, 0) + ISNULL(NI.Total_IPI, 0) ) - ISNULL(NI.Desconto_Valor, 0)) AS DECIMAL (14,2))');
           tEntradas.SQL.Add('      ,(CASE WHEN ISNULL(NF.ICMS_Destacar, 0) = 0 THEN NI.Valor_BCICMSOper ELSE 0 END) AS Valor_BCICMS');
           tEntradas.SQL.Add('      ,(CASE WHEN ISNULL(NF.ICMS_Destacar, 0) = 0 THEN NI.Valor_ICMSOper ELSE 0 END) AS Valor_ICMS');
           tEntradas.SQL.Add('      ,(NI.Valor_IsentasICMS) AS Valor_Isentas');
           tEntradas.SQL.Add('      ,(NI.Valor_OutrasICMS) AS Valor_Outras');
           tEntradas.SQL.Add('FROM   NotasItens NI, NotasFiscais NF');
           tEntradas.SQL.Add('WHERE (NI.Nota = NF.Numero  AND NI.Data = NF.Data_Emissao)');
           tEntradas.SQL.Add('AND   NF.Saida_Entrada = 1 AND ISNULL(NF.Cancelada, 0) = 0 AND (MONTH(NI.Data) = :pMes AND YEAR(NI.Data) = :pAno) AND ISNULL(NF.NFe_Denegada, 0) = 0');

           if Trim(cIncent.Text) <> '' then begin
              tEntradas.SQL.Add( 'AND (NF.Incentivo_Fiscal = :pIncentivo)' );
           end;

           if cOrigem.ItemIndex = 0 then tEntradas.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria) = ''I'' ');
           if cOrigem.ItemIndex = 1 then tEntradas.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria) = ''M'' ');
           if cOrigem.ItemIndex = 2 then tEntradas.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria) = ''N'' ');
           tEntradas.SQL.Add('SELECT SE');
           tEntradas.SQL.Add('      ,Natureza_Codigo');
           tEntradas.SQL.Add('      ,Valor_Contabil = SUM(Valor_Contabil)');
           tEntradas.SQL.Add('      ,Valor_BCICMS   = SUM(Valor_BCICMS)');
           tEntradas.SQL.Add('      ,Valor_ICMS     = SUM(Valor_ICMS)');
           tEntradas.SQL.Add('      ,Valor_Isentas  = SUM(Valor_Isentas)');
           tEntradas.SQL.Add('      ,Valor_Outras   = SUM(Valor_Outras)');
           tEntradas.SQL.Add('FROM #TEMP');
           tEntradas.SQL.Add('GROUP BY SE, Natureza_Codigo');
           tEntradas.SQL.Add('ORDER BY SE, Natureza_Codigo');
           tEntradas.SQL.Add('DROP TABLE #TEMP');
           tEntradas.ParamByName('pMes').AsInteger := cMes.ItemIndex +1;
           tEntradas.ParamByName('pAno').AsInteger := cAno.AsInteger;
           if Trim(cIncent.Text) <> '' then begin
              tEntradas.ParamByName('pIncentivo').AsString := Trim(cIncent.Text);
           end;
           //tEntradas.SQL.SaveToFile('c:\temp\RICMS_JT.SQL');
           tEntradas.Open;

           if tEntradas.RecordCount = 0 then begin
              tEntradas.SQL.Clear;
              tEntradas.SQL.Add('SELECT SE               = 0');
              tEntradas.SQL.Add('       ,Natureza_Codigo = ''0000'' ');
              tEntradas.SQL.Add('       ,Valor_Contabil  = 0.00');
              tEntradas.SQL.Add('       ,Valor_BCICMS    = 0.00');
              tEntradas.SQL.Add('       ,Valor_ICMS      = 0.00');
              tEntradas.SQL.Add('       ,Valor_Isentas   = 0.00');
              tEntradas.SQL.Add('       ,Valor_Outras    = 0.00');
           end;

           // Apurando outros débitos.
           tApuracao.SQL.Clear;
           tApuracao.SQL.Add('SELECT Debito_Imposto = ISNULL((SELECT SUM(Valor_ICMSOper)');
           tApuracao.SQL.Add('               FROM   NotasItens NI');
           tApuracao.SQL.Add('               WHERE  Saida_Entrada = 1 AND ISNULL(Cancelada, 0) = 0 AND ISNULL(NFe_Denegada, 0) = 0 AND MONTH(Data) = :pMes AND YEAR(Data) = :pAno');
           if Trim(cIncent.Text) <> '' then begin
              tApuracao.SQL.Add('                 AND (SELECT Incentivo_Fiscal FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data) = :pIncentivo');
           end;
           if cOrigem.ItemIndex = 0 then tApuracao.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = Codigo_Mercadoria) = ''I'' ');
           if cOrigem.ItemIndex = 1 then tApuracao.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = Codigo_Mercadoria) = ''M'' ');
           if cOrigem.ItemIndex = 2 then tApuracao.SQL.Add( 'AND (SELECT Origem FROM Produtos WHERE Codigo = Codigo_Mercadoria) = ''N'' ');
           tApuracao.SQL.Add('), 0),');

           if Trim(cIncent.Text) <> '' then begin
              tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (Tipo_Ajuste = 0) AND (Imposto = ''ICMS'') AND (Incentivo_Fiscal = :pIncentivo)), 0) AS Outros_Debitos,');
              tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (Tipo_Ajuste = 1) AND (Imposto = ''ICMS'') AND (Incentivo_Fiscal = :pIncentivo)), 0) AS Estorno_Credito,');
              tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (Tipo_Ajuste = 2) AND (Imposto = ''ICMS'') AND (Incentivo_Fiscal = :pIncentivo)), 0) AS Outros_Creditos,');
              tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = :PMes AND YEAR(Data) = :pAno) AND (Tipo_Ajuste = 3) AND (Imposto = ''ICMS'') AND (Incentivo_Fiscal = :pIncentivo)), 0) AS Estorno_Debito,');
              tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (Tipo_Ajuste = 4) AND (Imposto = ''ICMS'') AND (Incentivo_Fiscal = :pIncentivo)), 0) AS Deducoes,');
              tApuracao.SQL.Add('       ISNULL((SELECT Saldo FROM SaldoICMS WHERE Mes_Ano = :pMes_Ano AND Operacao = :pOper), 0) AS Saldo_ICMS');
           end else begin
              tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (Tipo_Ajuste = 0) AND (Imposto = ''ICMS'')), 0) AS Outros_Debitos,');
              tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (Tipo_Ajuste = 1) AND (Imposto = ''ICMS'')), 0) AS Estorno_Credito,');
              tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (Tipo_Ajuste = 2) AND (Imposto = ''ICMS'')), 0) AS Outros_Creditos,');
              tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = :PMes AND YEAR(Data) = :pAno) AND (Tipo_Ajuste = 3) AND (Imposto = ''ICMS'')), 0) AS Estorno_Debito,');
              tApuracao.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = :pMes AND YEAR(Data) = :pAno) AND (Tipo_Ajuste = 4) AND (Imposto = ''ICMS'')), 0) AS Deducoes,');
              tApuracao.SQL.Add('       ISNULL((SELECT Saldo FROM SaldoICMS WHERE Mes_Ano = :pMes_Ano AND Operacao = :pOper), 0) AS Saldo_ICMS');
           end;
           tApuracao.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
           tApuracao.ParamByName('pAno').AsInteger  := cAno.AsInteger;
           tApuracao.ParamByName('pOper').AsInteger := iif(cIncent.KeyValue <> null, cIncent.KeyValue, 0);
           if cMes.ItemIndex = 0 then
              tApuracao.ParamByName('pMes_Ano').AsString := '12'+InttoStr(cAno.AsInteger-1)
           else
              tApuracao.ParamByName('pMes_Ano').AsString := PoeZero(2,cMes.ItemIndex)+InttoStr(cAno.AsInteger);
           if Trim(cIncent.Text) <> '' then begin
              tApuracao.ParamByName('pIncentivo').AsString := Trim(cIncent.Text);
           end;
           //tApuracao.SQL.SavetoFile('c:\temp\RICMS_JT_Outros_Debitos.sql');
           tApuracao.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);
           ICMS.Open;
           ICMS.Locate('UF', EmpresasEstado.Value, [loCaseInsensitive]);

           lCFOP1.Caption := ' 1.00  DO ESTADO';
           lCFOP2.Caption := ' 2.00  DE OUTROS ESTADOS';
           lCFOP3.Caption := ' 3.00  DO EXTERIOR';

           lPeriodo.Caption     := Trim(UpperCase(cMes.Text))+'/'+cAno.Text;
           lPeriodo2.Caption    := Trim(UpperCase(cMes.Text))+'/'+cAno.Text;
           pTotalICMSE.Value    := 0;
           mTotalContabilS      := 0;
           mTotalICMSE          := 0;
           mTotalContabilE      := 0;
           mTotalBCICMSE        := 0;
           mTotalICMSE          := 0;
           mTotalIsentasE       := 0;
           mTotalOutrasE        := 0;
           mTotalContabilS      := 0;
           mTotalBCICMSS        := 0;
           mTotalICMSS          := 0;
           mTotalIsentasS       := 0;
           mTotalOutrasS        := 0;
           mValorContabil       := 0;
           mValorBCICMS         := 0;
           mValorICMS           := 0;
           mValorIsentas        := 0;
           mValorOutras         := 0;
           mSubTotDebAux        := 0;
           mSubTotDebSoma       := 0;
           mSubTotCreAux        := 0;
           mSubTotCreSoma       := 0;
           mTotalDebitos        := 0;
           mTotalCreditos       := 0;
           mTotalParcela        := 0;
           mEstornoCredito      := 0;
           mSaldoCredorAnterior := 0;
           lMovimento.Visible   := tEntradas.RecordCount = 0;

           rApuracaoICMS.Reset;
           rApuracaoICMS.Print;

           // Registrando o saldo credor do periodo na tabela SaldoICMS.
           SaldoICMS.Close;
           SaldoICMS.SQL.Clear;
           SaldoICMS.SQL.Add('SELECT * FROM SaldoICMS');
           SaldoICMS.SQL.Add('WHERE (Mes_Ano = :pMes_Ano) AND Operacao = :pOper');
           SaldoICMS.ParamByName('pMes_Ano').AsString := PoeZero(2, cMes.ItemIndex+1) + InttoStr(cAno.AsInteger);
           SaldoICMS.ParamByName('pOper').AsInteger := iif(cIncent.KeyValue <> null, cIncent.KeyValue, 0);
           SaldoICMS.Open;

           if mSaldoCredorAnterior >= 0 then begin
              if SaldoICMS.RecordCount <> 0 then begin
                 SaldoICMS.Edit;
                           SaldoICMSSaldo.Value := mSaldoCredorAnterior;
                 SaldoICMS.Post;
              end else begin
                 SaldoICMS.Append;
                           SaldoICMSMes_Ano.Value  := PoeZero(2,cMes.ItemIndex+1)+InttoStr(cAno.AsInteger);
                           SaldoICMSOperacao.Value := iif(cIncent.KeyValue <> null, cIncent.KeyValue, 0);
                           SaldoICMSSaldo.Value    := mSaldoCredorAnterior;
                 SaldoICMS.Post;
              end;
           end;

           // Salva o DUA na tabela "DARFDUA" em caso de imposto a recolher.
           if mICMS_Rec > 0 then begin
              with DARFDua do begin
                   sql.Clear;
                   sql.Add('select * from DARFDUA where Documento = ''DUA'' and Mes = :pMes and Ano = :pAno and CNPJ = :pCNPJ');
                   parambyname('pMes').AsInteger := cMes.ItemIndex + 1;
                   parambyname('pAno').AsInteger := cAno.AsInteger;
                   parambyname('pCNPJ').Asstring := EmpresasCNPJ.AsString;
                   open;
                   if recordcount = 0 then begin
                      with tTemp do begin
                           sql.Clear;
                           sql.Add('select isnull(max(Registro), 0)+1 as Reg from DARFDUA');
                           open;
                      end;
                      Append;
                      fieldbyname('Registro').Value := tTemp.FieldByName('Reg').AsInteger;
                   end else begin
                      Edit;
                   end;
                       fieldbyname('Ano').value               := cAno.AsInteger;
                       fieldbyname('Mes').Value               := cMes.ItemIndex+1;
                       fieldbyname('Documento').Value         := 'DUA';
                       fieldbyname('Codigo_Imposto').Value    := IncentivosFiscais.FieldByName('Codigo_Recolher').asstring;
                       fieldbyname('Descricao_Imposto').Value := 'ICMS';
                       fieldbyname('Numero_Referencia').Value := null;
                       fieldbyname('CNPJ').Value              := Empresas.FieldByName('CNPJ').AsString;
                       fieldbyname('Filial').Value            := Empresas.FieldByName('Numero_Filial').asinteger;
                       fieldbyname('Empresa').Value           := Empresas.FieldByName('Razao_Social').asstring;
                       fieldbyname('Data_Vencimento').Value   := strtodate(IncentivosFiscais.FieldByName('Vencimento_ICMS').asstring+'/'+inttostr(cMes.ItemIndex)+'/'+cAno.Text);
                       fieldbyname('IE').Value                := null;
                       fieldbyname('Valor').Value             := mICMS_Rec;
//                       fieldbyname('Codigo_Barras').Value     := CodBarrasDARF()
                   post;
              end;
           end;

           Screen.Cursor := crDefault;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.ppGroupFooterBand1AfterPrint(Sender: TObject);
begin
       If tEntradas.FieldByName('SE').AsInteger = 0 then begin
          mTotalICMSE := pTotalGeralImposto.Value;
       End;
       pTotalContabil1.Value     := 0;
       pTotalBC1.Value           := 0;
       pTotalImposto1.Value      := 0;
       pTotalIsentas1.Value      := 0;
       pTotalOutras1.Value       := 0;
       pTotalContabil2.Value     := 0;
       pTotalBC2.Value           := 0;
       pTotalImposto2.Value      := 0;
       pTotalIsentas2.Value      := 0;
       pTotalOutras2.Value       := 0;
       pTotalContabil3.Value     := 0;
       pTotalBC3.Value           := 0;
       pTotalImposto3.Value      := 0;
       pTotalIsentas3.Value      := 0;
       pTotalOutras3.Value       := 0;
       pTotalGeralContabil.Value := 0;
       pTotalGeralBC.Value       := 0;
       pTotalGeralImposto.Value  := 0;
       pTotalGeralIsentas.Value  := 0;
       pTotalGeralOutras.Value   := 0;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
       If tEntradas.FieldByName('SE').AsInteger = 0 then begin
          lTitulo1.Caption    := 'E N T R A D A S';
          lTitulo2.Caption    := 'SUBTOTAL DAS ENTRADAS';
          pDebCred.Caption    := 'OPERAÇÕES COM CRÉDITO DO IMPOSTO';
          pSemDebCred.Caption := 'OPERAÇÕES SEM CRÉDITO DO IMPOSTO';
          pImpDebCred.Caption := 'IMPOSTO CREDITADO';
       end else begin
          lTitulo1.Caption    := 'S A Í D A S';
          lTitulo2.Caption    := 'SUBTOTAL DAS SAÍDAS';
          pDebCred.Caption    := 'OPERAÇÕES COM DÉBITO DO IMPOSTO';
          pSemDebCred.Caption := 'OPERAÇÕES SEM DÉBITO DO IMPOSTO';
          pImpDebCred.Caption := 'IMPOSTO DEBITADO';
       End;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
      If tEntradas.FieldByName('SE').AsInteger = 0 then begin
         mTotalICMSE := pTotalGeralImposto.Value;
         lCFOP1.Caption := ' 1.00  DO ESTADO';
         lCFOP2.Caption := ' 2.00  DE OUTROS ESTADOS';
         lCFOP3.Caption := ' 3.00  DO EXTERIOR';
      end else begin
         lCFOP1.Caption := ' 5.00  P/ O ESTADO';
         lCFOP2.Caption := ' 6.00  P/ OUTROS ESTADOS';
         lCFOP3.Caption := ' 7.00  P/ O EXTERIOR';
      End;
      pTotalGeralContabil.Value := pTotalContabil1.Value + pTotalContabil2.Value + pTotalContabil3.Value;
      pTotalGeralBC.Value       := pTotalBC1.Value + pTotalBC2.Value + pTotalBC3.Value;
      pTotalGeralImposto.Value  := pTotalImposto1.Value + pTotalImposto2.Value + pTotalImposto3.Value;
      pTotalGeralIsentas.Value  := pTotalIsentas1.Value + pTotalIsentas2.Value + pTotalIsentas3.Value;
      pTotalGeralOutras.Value   := pTotalOutras1.Value + pTotalOutras2.Value + pTotalOutras3.Value;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.pSubTotDebAuxCalc(Sender: TObject;  var Value: Variant);
begin
      Value := tApuracao.FieldByName('Outros_Debitos').AsCurrency + tApuracao.FieldByName('Estorno_Credito').AsCurrency;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.pSubTotDebSomaCalc(Sender: TObject;var Value: Variant);
begin
      Value := tApuracao.FieldByName('Outros_Debitos').AsCurrency + tApuracao.FieldByName('Estorno_Credito').AsCurrency + tApuracao.FieldByName('Debito_Imposto').AsCurrency;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.ppDetailBand2BeforePrint(Sender: TObject);
begin
      pTotalICMSE.Value := mTotalICMSE;
      // OUTROS CRÉDITOS
      With Dados, dmFiscal do begin
           If (pTotalGeralContabil.Value <> 0)  then begin
              tOutros.Close;
              tOutros.SQL.Clear;
              tOutros.SQL.Add('SELECT Nota, Data_Nota, Fornecedor FROM CIAP');
              tOutros.SQL.Add('WHERE (Utilizacao = :pMesAno)');
              tOutros.SQL.Add('GROUP BY Nota, Data_Nota, Fornecedor');
              tOutros.ParamByName('pMesAno').AsString := PoeZero(2,cMes.ItemIndex+1)+InttoStr(cAno.AsInteger);
              tOutros.Open;
              If tOutros.RecordCount = 0 then begin
                 tOutros.Close;
                 tOutros.SQL.Clear;
                 tOutros.SQL.Add('SELECT Nota, Data_Nota, Fornecedor FROM CIAP');
                 tOutros.SQL.Add('WHERE (Utilizacao IS NULL)');
                 tOutros.SQL.Add('GROUP BY Nota, Data_Nota, Fornecedor');
                 tOutros.Open;
              End;

              // Somando os totais da nota e dos produtos para apurar o coeficiente do CIAP.
              tNotas.SQL.Clear;
              tNotas.SQL.Add('SELECT SUM(Valor_TotalProdutos) AS Total_Produtos, SUM(Valor_TotalNota) AS Total_Nota');
              tNotas.SQL.Add('FROM NotasFiscais' );
              tNotas.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes AND Valor_ICMS <> 0)' );
              tNotas.ParamByName('pAno').AsInteger := cAno.AsInteger;
              tNotas.ParamByName('pMes').AsInteger := cMes.ItemIndex+1;
              tNotas.Open;
              If tNotas.FieldByName('Total_Produtos').AsCurrency <> 0 then begin
                 mCoeficiente := (tNotas.FieldByName('Total_Produtos').AsCurrency / tNotas.FieldByName('Total_Nota').AsCurrency);
              End;

              tICMS.SQL.Clear;
              tICMS.SQL.Add('SELECT SUM(CIAP_ValorICMS) AS CIAP_ValorICMS FROM NotasTerceirosItens');
              tICMS.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes)');
              tICMS.ParamByName('pAno').AsInteger := cAno.AsInteger;
              tICMS.ParamByName('pMes').AsInteger := cMes.ItemIndex + 1;
              tICMS.Open;

              tOutros.First;
              mTotalParcela := (mCoeficiente * tICMS.FieldByName('CIAP_ValorICMS').AsCurrency) / ConfiguracaoPrazo_CIAP.Value;
              mData         := UltimoDiaMes( StrtoDate('01/'+PoeZero(2,cMes.ItemIndex+1)+'/'+InttoStr(cAno.AsInteger)) );

              pOutrosCreditos.Value := mTotalParcela;
           end else begin
              pOutrosCreditos.Value := 0;
           End;
           pOutrosCreditos.Value := pOutrosCreditos.Value + tApuracao.FieldByName('Outros_Creditos').AsCurrency;
           pSubTotalCreditoAux.Value := pOutrosCreditos.Value + tApuracao.FieldByName('Estorno_Debito').AsCurrency;
      End;
      pSubTotCreSoma.Value := pTotalICMSE.Value + pSubTotalCreditoAux.Value;
      pTotalCreditos.Value := pSubTotCreSoma.Value + pSaldoCredorAnterior.Value;
      pSaldoDevedor.Value  := 0;
      
      If pTotalCreditos.Value < pSubTotDebSoma.Value then
         pSaldoDevedor.Value := pTotalCreditos.Value - pSubTotDebSoma.Value;

      pDeducoes.Value := pSaldoDevedor.Value;
      mICMS_Rec := pSaldoDevedor.Value;
      if mICMS_Rec < 0 then begin
         mICMS_Rec := pSaldoDevedor.Value *-1;
      end;   

      If pSaldoDevedor.Value > 0 then
         pSaldoCredor.Value := pSaldoDevedor.Value;

      pTotalDebitos.Value := pSubTotDebSoma.Value;
      pSaldoCredor.Value  := pTotalCreditos.Value - pTotalDebitos.Value;

      If pSaldoCredor.Value < 0 then
         pSaldoCredor.Value := 0;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.pSubTotalCreditoAuxCalc(Sender: TObject; var Value: Variant);
begin
      Value := tApuracao.FieldByName('Outros_Debitos').AsCurrency + tApuracao.FieldByName('Estorno_Credito').AsCurrency + tApuracao.FieldByName('Debito_Imposto').AsCurrency;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.pSaldoICMSSaldoCalc(Sender: TObject;var Value: Variant);
begin
      Value := tApuracao.FieldByName('Outros_Debitos').AsCurrency + tApuracao.FieldByName('Estorno_Credito').AsCurrency + tApuracao.FieldByName('Debito_Imposto').AsCurrency;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.pTotalCreditoCalc(Sender: TObject;var Value: Variant);
begin
      Value := tApuracao.FieldByName('Outros_Debitos').AsCurrency + tApuracao.FieldByName('Estorno_Credito').AsCurrency + tApuracao.FieldByName('Debito_Imposto').AsCurrency + tApuracao.FieldByName('Saldo_ICMS').AsCurrency;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.ppDetailBand1AfterPrint(Sender: TObject);
begin
      If (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '1') or
         (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '5') then begin
         pTotalContabil1.Value := pTotalContabil1.Value + tEntradas.FieldByName('Valor_Contabil').AsCurrency;
         pTotalBC1.Value       := pTotalBC1.Value       + tEntradas.FieldByName('Valor_BCICMS').AsCurrency;
         pTotalImposto1.Value  := pTotalImposto1.Value  + tEntradas.FieldByName('Valor_ICMS').AsCurrency;
         pTotalIsentas1.Value  := pTotalIsentas1.Value  + tEntradas.FieldByName('Valor_Isentas').AsCurrency;
         pTotalOutras1.Value   := pTotalOutras1.Value   + tEntradas.FieldByName('Valor_Outras').AsCurrency;
      End;
      If (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '2') or
         (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '6') then begin
         pTotalContabil2.Value := pTotalContabil2.Value + tEntradas.FieldByName('Valor_Contabil').AsCurrency;
         pTotalBC2.Value       := pTotalBC2.Value       + tEntradas.FieldByName('Valor_BCICMS').AsCurrency;
         pTotalImposto2.Value  := pTotalImposto2.Value  + tEntradas.FieldByName('Valor_ICMS').AsCurrency;
         pTotalIsentas2.Value  := pTotalIsentas2.Value  + tEntradas.FieldByName('Valor_Isentas').AsCurrency;
         pTotalOutras2.Value   := pTotalOutras2.Value   + tEntradas.FieldByName('Valor_Outras').AsCurrency;
      End;
      If (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '3') or
         (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '7') then begin
         pTotalContabil3.Value := pTotalContabil3.Value + tEntradas.FieldByName('Valor_Contabil').AsCurrency;
         pTotalBC3.Value       := pTotalBC3.Value       + tEntradas.FieldByName('Valor_BCICMS').AsCurrency;
         pTotalImposto3.Value  := pTotalImposto3.Value  + tEntradas.FieldByName('Valor_ICMS').AsCurrency;
         pTotalIsentas3.Value  := pTotalIsentas3.Value  + tEntradas.FieldByName('Valor_Isentas').AsCurrency;
         pTotalOutras3.Value   := pTotalOutras3.Value   + tEntradas.FieldByName('Valor_Outras').AsCurrency;
      End;
end;

procedure TImpressao_FiscaisOP_RAICMS_P9.pSaldoCredorAnteriorPrint(Sender: TObject);
begin
      mSaldoCredorAnterior := pSaldoCredor.Value;
      if mSaldoCredorAnterior < 0 then mSaldoCredorAnterior := 0;
end;

end.

