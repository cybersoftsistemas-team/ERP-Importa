unit frmImpressao_Fiscais_ApuracaoICMSRecuperar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, DBAccess, MSAccess, ppParameter, ppDesignLayer,
  ppBands, ppVar, ppCtrls, ppReport,
  ppDBPipe, Vcl.StdCtrls, Vcl.ExtCtrls, RXSpin, RXCtrls, IniFIles,
  DateUtils, DBCtrls, Buttons, MemDS, ppPrnabl, ppClass, ppCache, ppProd, ppComm, ppRelatv, ppDB, Vcl.Mask, ppStrtch, ppSubRpt;

type
  TImpressao_Fiscais_ApuracaoICMSRecuperar = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel4: TRxLabel;
    StaticText2: TStaticText;
    cAno: TRxSpinEdit;
    cMes: TComboBox;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cTodos: TCheckBox;
    ppEmpresas: TppDBPipeline;
    rApuracao: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppImage1: TppImage;
    lTitulo: TppLabel;
    pNomeMes: TppLabel;
    lEmpresa: TppDBText;
    iLogo2: TppImage;
    ppDetailBand1: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLine5: TppLine;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppLine7: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList2: TppParameterList;
    tApuracao: TMSQuery;
    pApuracao: TppDBPipeline;
    dstApuracao: TDataSource;
    tEmpresas: TMSQuery;
    StaticText39: TStaticText;
    cBeneficio: TDBLookupComboBox;
    ppSummaryBand1: TppSummaryBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel12: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    StaticText1: TStaticText;
    cProcesso: TDBLookupComboBox;
    bLimparForma: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLine18: TppLine;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDBText14: TppDBText;
    pFUNDAP: TppSubReport;
    ppChildReport: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDetailBand2: TppDetailBand;
    ppShape1: TppShape;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    lTotalRecup: TppDBCalc;
    ppLabel8: TppLabel;
    ppLine3: TppLine;
    ppLabel9: TppLabel;
    lCaucao: TppLabel;
    lRetencaoBANDES: TppVariable;
    ppLine8: TppLine;
    lTaxaCartorio: TppLabel;
    ppLabel11: TppLabel;
    lLeilao: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    lTaxaRegistro: TppLabel;
    lRegContrato: TppVariable;
    lValorLeilao: TppVariable;
    lLiquidoFUNDAP: TppVariable;
    lReembolsoFrete: TppVariable;
    lLiquido: TppVariable;
    ppDBCalc3: TppDBCalc;
    ppLabel16: TppLabel;
    ppLabel19: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine21: TppLine;
    ppLabel24: TppLabel;
    ppDBCalc5: TppDBCalc;
    pINVEST: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppDetailBand5: TppDetailBand;
    ppShape2: TppShape;
    ppDBCalc6: TppDBCalc;
    ppLabel25: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLabel26: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLabel27: TppLabel;
    ppLine9: TppLine;
    ppLine12: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppLabel40: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel7: TppLabel;
    ppLabel28: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppSummaryBand4: TppSummaryBand;
    pPRODERO: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc2: TppDBCalc;
    ppLabel29: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLabel30: TppLabel;
    ppLine13: TppLine;
    ppLabel33: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppLabel34: TppLabel;
    ppLabel37: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppLabel41: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cTodosClick(Sender: TObject);
    procedure cMesChange(Sender: TObject);
    procedure cAnoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bLimparFormaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppSummaryBand3BeforeGenerate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mTxCart:Real;
  end;

var
  Impressao_Fiscais_ApuracaoICMSRecuperar: TImpressao_Fiscais_ApuracaoICMSRecuperar;

implementation

uses FUNCOES, frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.FormShow(Sender: TObject);
Var
   aINI:TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cMes.ItemIndex      := aINI.ReadInteger('IMPRESSAO_ICMSRecup', 'Mes'      , MonthOf(Date)-1 );
      cAno.Value          := aINI.ReadInteger('IMPRESSAO_ICMSRecup', 'Ano'      , YearOf(Date) );
      cTodos.Checked      := aINI.ReadBool   ('IMPRESSAO_ICMSRecup', 'Todos'    , False );
      cBeneficio.KeyValue := aINI.ReadString ('IMPRESSAO_ICMSRecup', 'Beneficio', '');
      cProcesso.KeyValue  := aINI.ReadString ('IMPRESSAO_ICMSRecup', 'Processo' , '');
      aINI.Free;

      with Dados do begin
           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
           IncentivosFiscais.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE Processo IN(SELECT DISTINCT Processo FROM NotasItens WHERE Cancelada <> 1 AND NFe_Denegada <> 1 AND Valor_ICMSOper > 0)');
           ProcessosDOC.SQL.Add('ORDER BY Processo');
           ProcessosDOC.Open;
      end;
end;

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI:TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_ICMSRecup', 'Mes'      , cMes.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_ICMSRecup', 'Ano'      , cAno.AsInteger);
      aINI.WriteBool   ('IMPRESSAO_ICMSRecup', 'Todos'    , cTodos.Checked);
      aINI.WriteString ('IMPRESSAO_ICMSRecup', 'Beneficio', iif(cBeneficio.KeyValue <> null, cBeneficio.KeyValue, ''));
      aINI.WriteString ('IMPRESSAO_ICMSRecup', 'Processo' , iif(cProcesso.KeyValue <> null, cProcesso.KeyValue, ''));
      aINI.Free;

      LimpaMemoria;
      Impressao_Fiscais_ApuracaoICMSRecuperar.Release;
      Impressao_Fiscais_ApuracaoICMSRecuperar := nil;
end;

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.cTodosClick(Sender: TObject);
begin
      cMes.Enabled := not cTodos.Checked;
      If cTodos.Checked then begin
         cMes.Text := '';
         cAno.SetFocus;
         bImprimir.Enabled := cAno.AsInteger <> 0;
      End else begin
         cMes.SetFocus;
         bImprimir.Enabled := (cMes.Text <> '') and (cAno.AsInteger <> 0);
      End;
end;

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.cMesChange(Sender: TObject);
begin
       bImprimir.Enabled := (cMes.Text <> '') and (cAno.AsInteger <> 0);
end;

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.cAnoChange(Sender: TObject);
begin
      If cTodos.Checked then
         bImprimir.Enabled := (cAno.AsInteger <> 0)
      else
         bImprimir.Enabled := (cMes.Text <> '') and (cAno.AsInteger <> 0);
end;

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.bImprimirClick(Sender: TObject);
var
    mDataIni, mDataFim: TDate;
begin
     Screen.Cursor := crSQLWait;
     if not cTodos.Checked then begin
        mDataIni := StrtoDate('01/' + PoeZero(2,cMes.ItemIndex+1) +'/'+ PoeZero(4, cAno.AsInteger));
        mDataFim := UltimoDiaMes(mDataIni);
     end else begin
        mDataIni := StrtoDate('01/01/'+ PoeZero(4, cAno.AsInteger));
        mDataFim := StrtoDate('31/12/'+ PoeZero(4, cAno.AsInteger));
     end;
     tApuracao.sql.clear;
     tApuracao.sql.add('-------------------------------------------------------------------------------------------[ PEGANDO TODAS AS ALIQUOTAS ]------------------------------------------------------------------------------------');
     tApuracao.sql.add('SELECT DISTINCT');
     tApuracao.sql.add('       ICMS        = Aliquota_ICMSOper');
     tApuracao.sql.add('      ,Recuperar   = (SELECT Aliquota_Recuperar FROM RecuperarICMS WHERE NotasItens.Aliquota_ICMSOper = RecuperarICMS.Aliquota_ICMS AND Beneficio = :pBenef)');
     tApuracao.sql.add('      ,Processo');
     tApuracao.sql.add('      ,BC          = (SELECT Base_Calculo FROM RecuperarICMS WHERE NotasItens.Aliquota_ICMSOper = RecuperarICMS.Aliquota_ICMS AND Beneficio = :pBenef)');
     tApuracao.sql.add('      ,Total_NotaE = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_BCE   = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_ICMSE = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_NotaS = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_NotaS_SIPI = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_BCS   = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_ICMSS = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_Recup = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_Pagar = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_Estab = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_Liquido = CAST(0 AS money)');
     tApuracao.sql.add('INTO #TEMP1');
     tApuracao.sql.add('FROM  NotasItens');
     tApuracao.sql.add('WHERE Data BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('AND   Aliquota_ICMSOper > 0');
     tApuracao.sql.add('AND   (SELECT Incentivo_Fiscal FROM NotasFiscais NF WHERE NF.Numero = NotasItens.Nota AND NF.Data_Emissao = NotasItens.Data) = :pBenDesc ');
     tApuracao.sql.add('AND   Cancelada <> 1');
     tApuracao.sql.add('AND   NFe_Denegada <> 1');
     if trim(cProcesso.Text) <> '' then begin
        tApuracao.sql.add('AND   Processo = :pProcesso');
     end;
     tApuracao.sql.add('GROUP BY Aliquota_ICMSOper, Processo, Saida_Entrada');

     tApuracao.sql.add('-------------------------------------------------------------------------------[ PEGANDO TODAS AS ALIQUOTAS DAS NOTAS DE TERCEIROS ]--------------------------------------------------------------------------');
     tApuracao.sql.add('UNION ALL');
     tApuracao.sql.add('SELECT DISTINCT');
     tApuracao.sql.add('       ICMS        = Aliquota_ICMSOper');
     tApuracao.sql.add('      ,Recuperar   = (SELECT Aliquota_Recuperar FROM RecuperarICMS WHERE NotasTerceirosItens.Aliquota_ICMSOper = RecuperarICMS.Aliquota_ICMS AND Beneficio = 1)');
     tApuracao.sql.add('      ,Processo');
     tApuracao.sql.add('      ,BC          = (SELECT Base_Calculo FROM RecuperarICMS WHERE NotasTerceirosItens.Aliquota_ICMSOper = RecuperarICMS.Aliquota_ICMS AND Beneficio = 1)');
     tApuracao.sql.add('      ,Total_NotaE = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_BCE   = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_ICMSE = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_NotaS = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_NotaS_SIPI = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_BCS   = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_ICMSS = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_Recup = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_Pagar = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_Estab = CAST(0 AS money)');
     tApuracao.sql.add('      ,Total_Liquido = CAST(0 AS money)');
     tApuracao.sql.add('FROM  NotasTerceirosItens');
     tApuracao.sql.add('WHERE Data_Entrada BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('AND   Aliquota_ICMSOper > 0');
     tApuracao.sql.add('AND   (SELECT Incentivo_Fiscal FROM NotasTerceiros NF WHERE NF.Nota = NotasTerceirosItens.Nota AND NF.Data_Emissao = NotasTerceirosItens.Data_Emissao) = :pBenDesc');
     if trim(cProcesso.Text) <> '' then begin
        tApuracao.sql.add('AND   Processo = :pProcesso');
     end;
     tApuracao.sql.add('GROUP BY Aliquota_ICMSOper, Processo');
     tApuracao.sql.add('');
     tApuracao.sql.add('SELECT DISTINCT * INTO #TEMP FROM #TEMP1');
     tApuracao.sql.add('');
     tApuracao.sql.add('----------------------------------------------------------------------------------------[ SOMANDO OS TOTAIS DAS NOTAS - ENTRADAS ]---------------------------------------------------------------------------');
     tApuracao.sql.add('UPDATE #Temp SET Total_NotaE = ISNULL((SELECT SUM(Valor_TotalNota)');
     tApuracao.sql.add('                                       FROM NotasFiscais');
     tApuracao.sql.add('                                       WHERE Numero IN(SELECT DISTINCT Nota');
     tApuracao.sql.add('                                       FROM   NotasItens');
     tApuracao.sql.add('                                       WHERE  Data BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('                                       AND    Saida_Entrada = 0');
     tApuracao.sql.add('                                       AND    Aliquota_ICMSOper = #Temp.ICMS');
     tApuracao.sql.add('                                       AND    Processo = #Temp.Processo');
     tApuracao.sql.add('                                       AND    Cancelada <> 1');
     tApuracao.sql.add('                                       AND    Nfe_Denegada <> 1');
     tApuracao.sql.add('                                       AND    Incentivo_Fiscal = :pBenDesc  )), 0) +');
     tApuracao.sql.add('                               ISNULL((SELECT SUM(Valor_TotalNota)');
     tApuracao.sql.add('                                       FROM NotasTerceiros');
     tApuracao.sql.add('                                       WHERE Nota IN(SELECT DISTINCT Nota');
     tApuracao.sql.add('                                       FROM   NotasTerceirosItens');
     tApuracao.sql.add('                                       WHERE  Data_Entrada BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('                                       AND    Aliquota_ICMSOper = #Temp.ICMS');
     tApuracao.sql.add('                                       AND    Processo = #Temp.Processo');
     tApuracao.sql.add('                                       AND    Incentivo_Fiscal = :pBenDesc )), 0)');
     tApuracao.sql.add('                ,Total_BCE = ISNULL((SELECT SUM(BCICMS)');
     tApuracao.sql.add('                                     FROM NotasFiscais');
     tApuracao.sql.add('                                     WHERE Numero IN(SELECT DISTINCT Nota');
     tApuracao.sql.add('                                     FROM   NotasItens');
     tApuracao.sql.add('                                     WHERE  Data BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('                                     AND    Saida_Entrada = 0');
     tApuracao.sql.add('                                     AND    Aliquota_ICMSOper = #Temp.ICMS');
     tApuracao.sql.add('                                     AND    Processo = #Temp.Processo');
     tApuracao.sql.add('                                     AND    Cancelada <> 1');
     tApuracao.sql.add('                                     AND    Nfe_Denegada <> 1');
     tApuracao.sql.add('                                     AND    Incentivo_Fiscal = :pBenDesc )), 0) +');
     tApuracao.sql.add('                             ISNULL((SELECT SUM(Valor_BCICMSOper)');
     tApuracao.sql.add('                                     FROM NotasTerceiros');
     tApuracao.sql.add('                                     WHERE  Nota IN(SELECT DISTINCT Nota');
     tApuracao.sql.add('                                     FROM   NotasTerceirosItens');
     tApuracao.sql.add('                                     WHERE  Data_Entrada BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('                                     AND    Aliquota_ICMSOper = #Temp.ICMS');
     tApuracao.sql.add('                                     AND    Processo = #Temp.Processo');
     tApuracao.sql.add('                                     AND    Incentivo_Fiscal = :pBenDesc )), 0)');
     tApuracao.sql.add('               ,Total_ICMSE = ISNULL((SELECT SUM(Valor_ICMS)');
     tApuracao.sql.add('                                      FROM NotasFiscais');
     tApuracao.sql.add('                                      WHERE  Numero IN(SELECT DISTINCT Nota FROM NotasItens');
     tApuracao.sql.add('                                      WHERE  Data BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('                                      AND    Saida_Entrada = 0');
     tApuracao.sql.add('                                      AND    Aliquota_ICMSOper = #Temp.ICMS');
     tApuracao.sql.add('                                      AND    Processo = #Temp.Processo');
     tApuracao.sql.add('                                      AND    Cancelada <> 1');
     tApuracao.sql.add('                                      AND    Nfe_Denegada <> 1');
     tApuracao.sql.add('                                      AND    Incentivo_Fiscal = :pBenDesc )), 0) +');
     tApuracao.sql.add('                              ISNULL((SELECT SUM(Valor_ICMSOper)');
     tApuracao.sql.add('                                      FROM NotasTerceiros');
     tApuracao.sql.add('                                      WHERE  Nota IN(SELECT DISTINCT Nota');
     tApuracao.sql.add('                                      FROM   NotasTerceirosItens');
     tApuracao.sql.add('                                      WHERE  Data_Entrada BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('                                      AND    Aliquota_ICMSOper = #Temp.ICMS');
     tApuracao.sql.add('                                      AND    Processo = #Temp.Processo');
     tApuracao.sql.add('                                      AND    Incentivo_Fiscal = :pBenDesc )), 0)');
     tApuracao.sql.add('----------------------------------------------------------------------------------------[ SOMANDO OS TOTAIS DAS NOTAS - SAIDAS ]---------------------------------------------------------------------------');
     tApuracao.sql.add('                ,Total_NotaS = ISNULL((SELECT SUM(Valor_TotalNota)');
     tApuracao.sql.add('                                       FROM NotasFiscais');
     tApuracao.sql.add('                                       WHERE  Numero IN(SELECT DISTINCT Nota FROM NotasItens WHERE  Data BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('                                       AND    Saida_Entrada = 1');
     tApuracao.sql.add('                                       AND    Cancelada <> 1');
     tApuracao.sql.add('                                       AND    NFe_Denegada <> 1');
     tApuracao.sql.add('                                       AND    Aliquota_ICMSOper = #Temp.ICMS');
     tApuracao.sql.add('                                       AND    Processo = #Temp.Processo');
     tApuracao.sql.add('                                       AND    Incentivo_Fiscal = :pBenDesc )), 0)');
     tApuracao.sql.add('                ,Total_NotaS_SIPI = ISNULL((SELECT SUM(Valor_TotalNota-Valor_TotalIPI)');
     tApuracao.sql.add('                                            FROM NotasFiscais');
     tApuracao.sql.add('                                            WHERE  Numero IN(SELECT DISTINCT Nota FROM NotasItens WHERE  Data BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('                                            AND    Saida_Entrada = 1');
     tApuracao.sql.add('                                            AND    Cancelada <> 1');
     tApuracao.sql.add('                                            AND    NFe_Denegada <> 1');
     tApuracao.sql.add('                                            AND    Aliquota_ICMSOper = #Temp.ICMS');
     tApuracao.sql.add('                                            AND    Processo = #Temp.Processo');
     tApuracao.sql.add('                                            AND    Incentivo_Fiscal = :pBenDesc )), 0)');
     tApuracao.sql.add('                ,Total_BCS = ISNULL((SELECT SUM(BCICMS)');
     tApuracao.sql.add('                              FROM   NotasFiscais');
     tApuracao.sql.add('                              WHERE  Numero IN(SELECT Nota');
     tApuracao.sql.add('                              FROM   NotasItens');
     tApuracao.sql.add('                              WHERE  Data BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('                              AND    Saida_Entrada = 1');
     tApuracao.sql.add('                              AND    Cancelada <> 1');
     tApuracao.sql.add('                              AND    NFe_Denegada <> 1');
     tApuracao.sql.add('                              AND    Aliquota_ICMSOper = #Temp.ICMS');
     tApuracao.sql.add('                              AND    Processo = #Temp.Processo');
     tApuracao.sql.add('                              AND    Incentivo_Fiscal = :pBenDesc )), 0)');
     tApuracao.sql.add('                ,Total_ICMSS = ISNULL((SELECT SUM(Valor_ICMS)');
     tApuracao.sql.add('                                       FROM   NotasFiscais');
     tApuracao.sql.add('                                       WHERE  Numero IN(SELECT Nota');
     tApuracao.sql.add('FROM  NotasItens');
     tApuracao.sql.add('WHERE Data BETWEEN :pDataIni AND :pDataFim');
     tApuracao.sql.add('AND Saida_Entrada = 1');
     tApuracao.sql.add('AND Cancelada <> 1');
     tApuracao.sql.add('AND NFe_Denegada <> 1');
     tApuracao.sql.add('AND Aliquota_ICMSOper = #Temp.ICMS');
     tApuracao.sql.add('AND Processo = #Temp.Processo)');
     tApuracao.sql.add('AND Incentivo_Fiscal = :pBenDesc  ), 0)');
     if Dados.IncentivosFiscais.FieldByName('Forma_Calculo').AsInteger = 1 then begin
        tApuracao.sql.add('UPDATE #Temp SET Total_Recup = CASE WHEN BC = ''TOTALNF'' THEN (Total_NotaS - Total_NotaE) * (Recuperar/100)');
        tApuracao.sql.add('                                    WHEN BC = ''VLRICMS'' THEN (Total_ICMSS - Total_ICMSE) * (Recuperar/100)');
        tApuracao.sql.add('                                    WHEN BC = ''BCICMS''  THEN (Total_BCS   - Total_BCE)   * (Recuperar/100)');
        tApuracao.sql.add('                               END');
        tApuracao.sql.add('                 ,Total_Pagar = Total_ICMSS * (100-Recuperar)/100');
        tApuracao.sql.add('                 ,Total_Estab = (Total_ICMSS * (100-Recuperar)/100) * (3.5/100)');
     end;
     if Dados.IncentivosFiscais.FieldByName('Forma_Calculo').AsInteger = 2 then begin
        tApuracao.sql.add('UPDATE #Temp SET Total_Recup = CASE WHEN BC = ''TOTALNF'' THEN Total_NotaS - (Total_NotaE * (Recuperar/100))');
        tApuracao.sql.add('                                    WHEN BC = ''VLRICMS'' THEN Total_ICMSS - (Total_BCS   * (Recuperar/100))');
        tApuracao.sql.add('                                    WHEN BC = ''BCICMS''  THEN Total_BCS   - (Total_BCS   * (Recuperar/100))');
        tApuracao.sql.add('                               END');
//        tApuracao.sql.add('                 ,Total_Pagar = Total_ICMSS * (100-Recuperar)/100');
        tApuracao.sql.add('UPDATE #Temp SET  Total_Pagar = Total_ICMSS - Total_Recup');
        tApuracao.sql.add('                 ,Total_Estab = (Total_ICMSS * (100-Recuperar)/100) * (3.5/100)');
     end;
     tApuracao.sql.add('UPDATE #Temp SET Total_Liquido = Total_Recup - Total_Estab');
     tApuracao.sql.add('SELECT * FROM #Temp ORDER BY ICMS, Processo');
     tApuracao.sql.add('DROP TABLE #Temp, #Temp1');
     tApuracao.ParamByName('pDataIni').AsDate    := mDataIni;
     tApuracao.ParamByName('pDataFim').AsDate    := mDataFim;
     tApuracao.ParamByName('pBenef').Asinteger   := Dados.IncentivosFiscaisCodigo.asinteger;
     tApuracao.ParamByName('pBenDesc').AsString  := cBeneficio.Text;
     if trim(cProcesso.Text) <> '' then begin
        tApuracao.ParamByName('pProcesso').AsString := cProcesso.Text;
     end;
     //tApuracao.sql.savetofile('c:\temp\tApuracao_ICMS_Recuperar_Entradas.sql');
     tApuracao.Open;

     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo2.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;

     if cTodos.Checked  then
        pNomeMes.Caption := UpperCase(' Janeiro a Dezembro de ')+PoeZero(4,cAno.AsInteger)+' - '+Menu_Principal.lFilial.Caption+' '
     else
        pNomeMes.Caption := ' '+AnsiUpperCase(cMes.Text) + ' / '+PoeZero(4,cAno.AsInteger)+' - '+Menu_Principal.lFilial.Caption+' ';

     Screen.Cursor := crDefault;

     mTxCart               := Dados.IncentivosFiscaisValor_TaxaCartorio .ascurrency * tApuracao.RecordCount;
     lTitulo.Caption       := 'Apuração ICMS a Recuperar - '+cBeneficio.Text;
     lCaucao.Caption       := FormatFloat('#,##0.00%', Dados.IncentivosFiscaisCaucao_RetBANDES.asfloat);
     lLeilao.Caption       := FormatFloat('#,##0.00%', Dados.IncentivosFiscaisTaxa_LeilaoBANDES.asfloat);
     lTaxaRegistro.Caption := FormatFloat('#,##0.00%', Dados.IncentivosFiscaisPercentual_TaxaCartorio .asfloat);
     lTaxaCartorio.Caption := 'Taxa registro contrato cartório - (Fixo '+FormatFloat('R$ #,##0.00', Dados.IncentivosFiscaisValor_TaxaCartorio.ascurrency)+') = '+FormatFloat('R$ #,##0.00', mTxCart);

     pFUNDAP.Visible  := cBeneficio.Text = 'FUNDAP';
     pINVEST.Visible  := cBeneficio.Text = 'INVEST';
     pPRODERO.Visible := cBeneficio.Text = 'PRODERO';

     rApuracao.Print;
     rApuracao.Reset;
     rApuracao.FreeOnRelease;
end;

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.ppSummaryBand3BeforeGenerate(Sender: TObject);
begin
     with Dados do begin
          lRetencaoBandes.Value := lTotalRecup.Value  * (IncentivosFiscaisCaucao_RetBANDES.asfloat/100);
          lRegContrato.Value    := (lTotalRecup.Value * (IncentivosFiscaisPercentual_TaxaCartorio.asfloat/100)) + mTxcart;
          lValorLeilao.Value    := lTotalRecup.Value  * (IncentivosFiscaisTaxa_LeilaoBANDES.asfloat/100);
          lLiquidoFUNDAP.Value  := lTotalRecup.Value  - lRetencaoBandes.Value - lRegContrato.Value - lValorLeilao.Value;
          lReembolsoFrete.value := lRetencaoBANDES.value;
          lLiquido.value        := lLiquidoFUNDAP.Value + lReembolsoFrete.value;
     end;
end;

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.bLimparFormaClick(Sender: TObject);
begin
     cBeneficio.KeyValue := null;
end;

procedure TImpressao_Fiscais_ApuracaoICMSRecuperar.SpeedButton1Click(Sender: TObject);
begin
     cProcesso.KeyValue := null;
end;

end.
