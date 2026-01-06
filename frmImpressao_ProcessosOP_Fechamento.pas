unit frmImpressao_ProcessosOP_Fechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Grids, DBGrids,RXDBCtrl,
  ppClass, ppReport, ppDBPipe, ppCtrls, ppPrnabl, ppBands, DB, DBAccess, MSAccess, ppSubRpt, ppVar, Buttons, Funcoes,
  ppParameter, ppRichTx, Maskutils, MemDS, ppDB, ppDesignLayer, ppModule, raCodMod, ppStrtch, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_ProcessosOP_Fechamento = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Grade: TDBGrid;
    bImprimir: TButton;
    rProcessoFechamento: TppReport;
    pProcessos: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    tProcessos: TMSQuery;
    dstProcessos: TDataSource;
    tDespesas: TMSQuery;
    dstDespesas: TDataSource;
    pHistorico: TppDBPipeline;
    pContratos: TppDBPipeline;
    ppParameterList1: TppParameterList;
    pDespesas: TppDBPipeline;
    tTotalSaida: TMSQuery;
    pTotalSaida: TppDBPipeline;
    dstTotalSaida: TDataSource;
    tNotas: TMSQuery;
    pNotas: TppDBPipeline;
    dstNotas: TDataSource;
    tContratos: TMSQuery;
    dstContratos: TDataSource;
    cCapa: TCheckBox;
    rCapa: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel77: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDBText26: TppDBText;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText55: TppDBText;
    ppShape19: TppShape;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    lEndereco: TppLabel;
    ppDBText54: TppDBText;
    ppLabel82: TppLabel;
    ppDBText60: TppDBText;
    ppLabel83: TppLabel;
    ppDBText61: TppDBText;
    ppImage1: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    ppHeaderBand1: TppHeaderBand;
    ppShape7: TppShape;
    ppDBText2: TppDBText;
    ppLabel8: TppLabel;
    ppLabel72: TppLabel;
    ppDBText14: TppDBText;
    ppDBText19: TppDBText;
    lComplementar: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppShape9: TppShape;
    ppShape14: TppShape;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppShape3: TppShape;
    ppDBText6: TppDBText;
    ppLabel5: TppLabel;
    ppShape4: TppShape;
    ppLabel6: TppLabel;
    ppShape5: TppShape;
    ppDBText8: TppDBText;
    ppLabel7: TppLabel;
    ppLabel2: TppLabel;
    ppShape6: TppShape;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText9: TppDBText;
    ppShape8: TppShape;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    ppLabel10: TppLabel;
    ppLabel17: TppLabel;
    ppDBText15: TppDBText;
    ppShape15: TppShape;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppShape44: TppShape;
    ppLabel48: TppLabel;
    ppDBText46: TppDBText;
    ppLabel49: TppLabel;
    ppShape45: TppShape;
    ppLabel50: TppLabel;
    ppDBText47: TppDBText;
    ppShape47: TppShape;
    ppLabel52: TppLabel;
    ppDBText49: TppDBText;
    ppShape48: TppShape;
    ppLabel53: TppLabel;
    ppDBText50: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    gSaida: TppSummaryBand;
    ppSubReport1: TppSubReport;
    gNotas: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel59: TppLabel;
    ppLabel64: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape17: TppShape;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText43: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppShape18: TppShape;
    ppLabel65: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel66: TppLabel;
    ppDBRichText1: TppDBRichText;
    raCodeModule3: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLabel11: TppLabel;
    ppLabel20: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel29: TppLabel;
    ppDBText28: TppDBText;
    lDiferencaIPI: TppVariable;
    lDiferencaPIS: TppVariable;
    lDiferencaCOFINS: TppVariable;
    ppLabel33: TppLabel;
    lTotalImpSaida: TppVariable;
    lTotalImpDI: TppVariable;
    lDiferencaICMS: TppVariable;
    ppShape12: TppShape;
    ppLabel35: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppLabel51: TppLabel;
    lSubTotal: TppVariable;
    ppLabel62: TppLabel;
    lTotalGeral: TppVariable;
    ppShape13: TppShape;
    ppLabel40: TppLabel;
    lTotalCusto: TppVariable;
    ppShape16: TppShape;
    ppLabel54: TppLabel;
    lTotalNegociacao: TppVariable;
    ppDBText29: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText41: TppDBText;
    ppDBText44: TppDBText;
    ppLabel69: TppLabel;
    ppDBText45: TppDBText;
    ppLabel70: TppLabel;
    ppDBText48: TppDBText;
    ppLabel71: TppLabel;
    lSaldoFinanceiro: TppVariable;
    lImpostos: TppVariable;
    ppLabel84: TppLabel;
    lTotalDiferenca: TppVariable;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    lDiferencaII: TppVariable;
    lDiferencaICMSST: TppVariable;
    ppLabel21: TppLabel;
    ppDBText30: TppDBText;
    ppLabel30: TppLabel;
    ppDBText31: TppDBText;
    ppLabel31: TppLabel;
    lDiferenca: TppVariable;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    rDespesas: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel58: TppLabel;
    ppLabel61: TppLabel;
    ppLabel68: TppLabel;
    ppLabel32: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText32: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppShape21: TppShape;
    ppLabel60: TppLabel;
    lTotalPag: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    pListaCambio: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    pValor_Real: TppVariable;
    ppDBText42: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine2: TppLine;
    ppShape20: TppShape;
    ppLabel19: TppLabel;
    pTotalReal: TppVariable;
    ppDBCalc1: TppDBCalc;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    raCodeModule2: TraCodeModule;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppDBText71: TppDBText;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cResponsavelChange(Sender: TObject);
    procedure bLimpaFiltroClick(Sender: TObject);
    procedure pValor_RealCalc(Sender: TObject; var Value: Variant);
    procedure gSaidaBeforePrint(Sender: TObject);
    procedure lSaldoFinanceiroCalc(Sender: TObject; var Value: Variant);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;     
  end;


var
  Impressao_ProcessosOP_Fechamento: TImpressao_ProcessosOP_Fechamento;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Fechamento.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_ProcessosOP_Fechamento.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Fechamento.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, nil, nil, nil);
     Impressao_ProcessosOP_Fechamento.Release;
     Impressao_ProcessosOP_Fechamento := nil;
end;

procedure TImpressao_ProcessosOP_Fechamento.FormShow(Sender: TObject);
begin
      With Dados do begin
           ProcessosFechamento.Close;
           ProcessosFechamento.SQL.Clear;
           ProcessosFechamento.SQL.Add('SELECT * FROM ProcessosFechamento ORDER BY Processo');
           ProcessosFechamento.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios ORDER BY Nome');
           Usuarios.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Fechamento.bImprimirClick(Sender: TObject);
begin
      With Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = '+InttoStr(Menu_Principal.mEmpresa)+')');
           Empresas.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE(Codigo = '+EmpresasMunicipio_Codigo.AsString+')');
           Municipios.Open;

           tProcessos.SQL.Clear;
           tProcessos.SQL.Add('SELECT PF.Codigo,');
           tProcessos.SQL.Add('       PF.Data,');
           tProcessos.SQL.Add('       PF.Processo,');
           tProcessos.SQL.Add('       PD.Processo_Abertura,');
           tProcessos.SQL.Add('       PD.Incentivo_Fiscal,');
           tProcessos.SQL.Add('       PD.INCOTERMS,');
           tProcessos.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.INCOTERMS WHERE(Codigo = PD.INCOTERMS)) AS INCOTERMS_Descricao,');
           tProcessos.SQL.Add('       (SELECT SUM(Valor_Fechamento) FROM ProcessosFechamentoItens PFI WHERE(Fechamento = PF.Codigo)) AS Total_Despesas,');
           tProcessos.SQL.Add('       Via_Transporte = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ViaTransporte WHERE Codigo = PD.Via_Transporte),');
           tProcessos.SQL.Add('       PD.Nome_Transporte,');
           tProcessos.SQL.Add('       PD.Navio_DataPrevista,');
           tProcessos.SQL.Add('       PD.Navio_DataChegada,');
           tProcessos.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = PD.Cliente)) AS Cliente,');
           tProcessos.SQL.Add('       (SELECT Descricao FROM TiposProcesso WHERE(Codigo = PD.Modalidade_Importacao)) AS Modalidade,');
           tProcessos.SQL.Add('       PD.Processo_Abertura,');
           tProcessos.SQL.Add('       PD.Data_DesembaracoDeclaracao,');
           tProcessos.SQL.Add('       PD.Numero_Declaracao,');
           tProcessos.SQL.Add('       PD.Data_RegistroDeclaracao,');
           tProcessos.SQL.Add('       PD.II,');
           //tProcessos.SQL.Add('       PD.Valor_IPI,');
           tProcessos.SQL.Add('       Valor_IPI = PF.IPI_Entrada,');
           tProcessos.SQL.Add('       PF.PIS_Entrada AS Valor_PIS,');
           tProcessos.SQL.Add('       PF.COFINS_Entrada AS Valor_COFINS,');
           tProcessos.SQL.Add('       Valor_ICMS = PF.ICMS_Entrada,');
           tProcessos.SQL.Add('       PD.Numero_Fatura,');
           tProcessos.SQL.Add('       PD.Documento_Carga,');
           tProcessos.SQL.Add('       PD.Numero_DOC,');
           tProcessos.SQL.Add('       PD.Referencia_Cliente,');
           tProcessos.SQL.Add('       PD.Referencia_DataEntrega,');
           tProcessos.SQL.Add('       CASE ISNULL(Canal_SISCOMEX, '''')');
           tProcessos.SQL.Add('            WHEN ''VM'' THEN ''VERMELHO'' ');
           tProcessos.SQL.Add('            WHEN ''VD'' THEN ''VERDE'' ');
           tProcessos.SQL.Add('            WHEN ''AM'' THEN ''AMARELO'' ');
           tProcessos.SQL.Add('            WHEN ''VM'' THEN ''CINZA'' ');
           tProcessos.SQL.Add('            WHEN ''''   THEN ''NÃO INFORMADO'' ');
           tProcessos.SQL.Add('       END AS Canal,');
           tProcessos.SQL.Add('       PF.Pagamento_Cliente,');
           tProcessos.SQL.Add('       PF.Valor_DescontoJuros,');
           tProcessos.SQL.Add('       PF.ICMS_Saida,');
           tProcessos.SQL.Add('       PF.ICMS_EntradaST,');
           tProcessos.SQL.Add('       PF.IPI_Saida,');
           tProcessos.SQL.Add('       PF.PIS_Saida,');
           tProcessos.SQL.Add('       PF.COFINS_Saida,');
           tProcessos.SQL.Add('       PF.ICMS_SaidaST,');
           tProcessos.SQL.Add('       PF.Total_CambioReal,');
           tProcessos.SQL.Add('       PF.Margem_LucroValor,');
           tProcessos.SQL.Add('       PF.Desconto_AdicionalValor,');
           tProcessos.SQL.Add('       PF.Desconto_ComercialValor,');
           tProcessos.SQL.Add('       (SELECT ISNULL(SUM(Valor_ME * Taxa_Cambial), 0) FROM ContratoCambioItens cci WHERE Processo = :pProcesso AND isnull((SELECT Pago_Cliente FROM ContratoCambio CC WHERE CC.Numero = CCI.Contrato), 0) = 1) AS Total_CambioCli,');
           tProcessos.SQL.Add('       PF.Devolucoes,');
           tProcessos.SQL.Add('       PF.Transferencia_Efetuada,');
           tProcessos.SQL.Add('       PF.Observacao,');
           tProcessos.SQL.Add('       PF.CSLL_Percentual,');
           tProcessos.SQL.Add('       PF.CSLL_Valor,');
           tProcessos.SQL.Add('       PF.IRPJ_Percentual,');
           tProcessos.SQL.Add('       PF.IRPJ_Valor');
           tProcessos.SQL.Add('FROM   ProcessosFechamento PF, ProcessosDocumentos PD');
           tProcessos.SQL.Add('WHERE  (PD.Processo =  :pProcesso) AND (PF.Processo = :pProcesso)');
           tProcessos.ParamByName('pProcesso').AsString := ProcessosFechamento.FieldByName('Processo').AsString;
           //tprocessos.SQL.SaveToFile('c:\temp\Fechamento_Processos.sql');
           tProcessos.Open;

           tContratos.SQL.Clear;
           tContratos.SQL.Add('SELECT CI.Contrato AS Numero,');
           tContratos.SQL.Add('       CI.Data,');
           tContratos.SQL.Add('       CI.Valor_ME,');
           tContratos.SQL.Add('       CC.Moeda,');
           tContratos.SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Codigo = Moeda)) AS Nome_Moeda,');
           tContratos.SQL.Add('       CC.Taxa_Cambial,');
           tContratos.SQL.Add('       (CI.Valor_ME * CI.Taxa_Cambial) AS Valor_Real,');
           tContratos.SQL.Add('       CI.Processo');
           tContratos.SQL.Add('FROM   ContratoCambioItens CI, ContratoCambio CC');
           tContratos.SQL.Add('WHERE  (CI.Processo = :pProcesso) AND (CC.Numero = CI.Contrato)');
           tContratos.SQL.Add('UNION ALL');
           tContratos.SQL.Add('SELECT CI.Contrato AS Numero,');
           tContratos.SQL.Add('       CI.Data,');
           tContratos.SQL.Add('       CI.Valor_ME,');
           tContratos.SQL.Add('       CC.Moeda,');
           tContratos.SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Codigo = Moeda)) AS Nome_Moeda,');
           tContratos.SQL.Add('       CC.Taxa_Cambial,');
           tContratos.SQL.Add('       (CI.Valor_ME * CI.Taxa_Cambial) AS Valor_Real,');
           tContratos.SQL.Add('       CI.Processo');
           tContratos.SQL.Add('FROM   ContratoCambioItens CI, ContratoCambio CC');
           tContratos.SQL.Add('WHERE  (CI.Processo = (SELECT Processo_Mestre FROM ProcessosDocumentos WHERE Processo = :pProcesso and Processo <> Processo_Mestre) ) AND (CC.Numero = CI.Contrato)');
           tContratos.ParamByName('pProcesso').AsString := ProcessosFechamento.FieldByName('Processo').AsString;
           //tContratos.sql.SaveToFile('c:\temp\Fechamento_Processo_Contratos_Cambio.sql');
           tContratos.Open;

           tDespesas.SQL.Clear;
           tDespesas.SQL.Add('SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento) ORDER BY Classificacao');
           tDespesas.ParamByName('pFechamento').AsInteger := ProcessosFechamento.FieldByName('Codigo').AsInteger;
           tDespesas.Open;

           {
           tTotalSaida.SQL.Clear;
           tTotalSaida.SQL.Add('SELECT SUM(Valor_ICMS)             AS Total_ICMS,');
           tTotalSaida.SQL.Add('       SUM(ValorICMS_Substitutivo) AS Total_ICMSSub,');
           tTotalSaida.SQL.Add('       SUM(BCICMS)                 AS Total_BCICMS,');
           tTotalSaida.SQL.Add('       SUM(Valor_TotalIPI)         AS Total_IPI,');
           tTotalSaida.SQL.Add('       IIF ((SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo = :pProcesso) <> 2, SUM(Valor_PIS)   , (SELECT Valor_PIS    FROM ProcessosDocumentos PD WHERE PD.Processo = :pProcesso)) AS Total_PIS,');
           tTotalSaida.SQL.Add('       IIF ((SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo = :pProcesso) <> 2, SUM(Valor_COFINS), (SELECT Valor_COFINS FROM ProcessosDocumentos PD WHERE PD.Processo = :pProcesso)) AS Total_COFINS,');
           tTotalSaida.SQL.Add('       SUM(Valor_TotalNota)        AS Valor_TotalNota');
           tTotalSaida.SQL.Add('FROM   NotasFiscais');
           tTotalSaida.SQL.Add('WHERE  (Saida_Entrada = 1) AND (Processo = :pProcesso) AND (Cancelada <> 1)');
           tTotalSaida.SQL.Add('       AND (SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 0');
           tTotalSaida.SQL.Add('        OR (SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 3');
           tTotalSaida.ParamByName('pProcesso').AsString := ProcessosFechamento.FieldByName('Processo').AsString;
           tTotalSaida.Open;
           }
           with tTotalSaida do begin
                SQL.Clear;
                SQL.Add('SELECT SUM(Valor_ICMS)             AS Total_ICMS,');
                SQL.Add('       SUM(ValorICMS_Substitutivo) AS Total_ICMSSub,');
                SQL.Add('       SUM(BCICMS)                 AS Total_BCICMS,');
                SQL.Add('       SUM(Valor_TotalIPI)         AS Total_IPI,');
                SQL.Add('       IIF ((SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo = :pProcesso) <> 2, SUM(Valor_PIS)   , (SELECT Valor_PIS    FROM ProcessosDocumentos PD WHERE PD.Processo = :pProcesso)) AS Total_PIS,');
                SQL.Add('       IIF ((SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo = :pProcesso) <> 2, SUM(Valor_COFINS), (SELECT Valor_COFINS FROM ProcessosDocumentos PD WHERE PD.Processo = :pProcesso)) AS Total_COFINS,');
                SQL.Add('       SUM(Valor_TotalNota)        AS Valor_TotalNota');
                SQL.Add('FROM NotasFiscais');
                SQL.Add('WHERE Saida_Entrada = 1 AND Processo = :pProcesso AND Cancelada <> 1');
                SQL.Add('AND (SELECT Fechamento_Processo FROM TipoNota WHERE Codigo = Tipo_Nota) = 1');
                ParamByName('pProcesso').AsString := ProcessosFechamento.FieldByName('Processo').AsString;
                Open;
           end;
           {
           tNotas.SQL.Clear;
           tNotas.SQL.Add('SELECT Numero,');
           tNotas.SQL.Add('       Data_Emissao,');
           tNotas.SQL.Add('       BCICMS,');
           tNotas.SQL.Add('       Valor_TotalNota,');
           tNotas.SQL.Add('       CASE WHEN Saida_Entrada = 0 THEN ''ENTRADA''     ELSE ''SAÍDA'' END AS Tipo,');
           tNotas.SQL.Add('       CASE WHEN Saida_Entrada = 1 THEN Valor_TotalNota ELSE 0         END AS Total_Saida,');
           tNotas.SQL.Add('       CASE WHEN Saida_Entrada = 1 THEN BCICMS          ELSE 0         END AS BCICMS_Saida');
           tNotas.SQL.Add('FROM   NotasFiscais');
           tNotas.SQL.Add('WHERE(Processo = :pProcesso) AND (Cancelada <> 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = Tipo_Nota)) IN(0, 5))');
           tNotas.SQL.Add('ORDER BY Saida_Entrada, Numero');
           tNotas.ParamByName('pProcesso').AsString := ProcessosFechamento.FieldByName('Processo').AsString;
           tNotas.Open;
           }
           with tNotas do begin 
                SQL.Clear;
                SQL.Add('SELECT Numero,');
                SQL.Add('       Data_Emissao,');
                SQL.Add('       BCICMS,');
                SQL.Add('       Valor_TotalNota,');
                SQL.Add('       CASE WHEN Saida_Entrada = 0 THEN ''ENTRADA''     ELSE ''SAÍDA'' END AS Tipo,');
                SQL.Add('       CASE WHEN Saida_Entrada = 1 THEN Valor_TotalNota ELSE 0         END AS Total_Saida,');
                SQL.Add('       CASE WHEN Saida_Entrada = 1 THEN BCICMS          ELSE 0         END AS BCICMS_Saida');
                SQL.Add('FROM NotasFiscais');
                SQL.Add('WHERE Processo = :pProcesso AND Cancelada <> 1 AND (SELECT Fechamento_Processo FROM TipoNota WHERE Codigo = Tipo_Nota) = 1');
                SQL.Add('ORDER BY Saida_Entrada, Numero');
                ParamByName('pProcesso').AsString := ProcessosFechamento.FieldByName('Processo').AsString;
                Open;
           end;

           ProcessosHistorico.SQL.Clear;
           ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE (Processo = :pProcesso) ORDER BY Data, Hora DESC');
           ProcessosHistorico.ParamByName('pProcesso').AsString := ProcessosFechamento.FieldByName('Processo').AsString;
           ProcessosHistorico.Open;

           If cCapa.Checked then begin
              lEndereco.Caption := EmpresasRua.AsString + ', nº '+EmpresasRua_Numero.AsString + ' - '+EmpresasComplemento.AsString + ' - '+Dados.MunicipiosNome.AsString+' ('+ EmpresasEstado.AsString+') - '+
                                   FormatMaskText('#####-###;0; ', EmpresasCEP.AsString) + ' Fone:'+EmpresasTelefone1.AsString+' / '+EmpresasTelefone2.AsString;
           End;
      End;

      pTotalReal.Value := 0;

      lComplementar.Visible := Dados.ProcessosFechamento.FieldByName('Complementar').AsBoolean;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      If cCapa.Checked then begin
         rCapa.Print;
         rCapa.Reset;
      End;
      rProcessoFechamento.Print;
      rProcessoFechamento.Reset;
end;

procedure TImpressao_ProcessosOP_Fechamento.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa de processos', 'Processos',mPesquisa);
      With Dados do begin
           If ProcessosFechamento.Locate('Processo', mPesquisa, [loPartialKey]) = False then begin
              ShowMessage('Nenhum "Processo" encontrados com este número!');
           End;
      End;
end;

procedure TImpressao_ProcessosOP_Fechamento.cResponsavelChange(Sender: TObject);
begin
      With Dados do begin
           ProcessosFechamento.SQL.Clear;
           ProcessosFechamento.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosFechamento.SQL.Add('WHERE  (Responsavel = :pResponsavel)');
           ProcessosFechamento.SQL.Add('ORDER BY Processo');
           ProcessosFechamento.ParamByName('pResponsavel').ASString := UsuariosMatricula.AsString;
           ProcessosFechamento.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Fechamento.bLimpaFiltroClick(Sender: TObject);
begin
      With Dados do begin
           ProcessosFechamento.SQL.Clear;
           ProcessosFechamento.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosFechamento.SQL.Add('ORDER BY Processo');
           ProcessosFechamento.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Fechamento.pValor_RealCalc(Sender: TObject; var Value: Variant);
begin
      Value            := tContratos.FieldByName('Valor_ME').AsCurrency * tContratos.FieldByName('Taxa_Cambial').AsFloat;
      pTotalReal.Value := pTotalReal.Value + (tContratos.FieldByName('Valor_ME').AsCurrency * tContratos.FieldByName('Taxa_Cambial').AsFloat);
end;

procedure TImpressao_ProcessosOP_Fechamento.gSaidaBeforePrint(Sender: TObject);
begin
{
      lDiferencaICMS.Value   := tProcessos.FieldByName('ICMS_Saida').AsCurrency;
      lDiferencaIPI.Value    := tProcessos.FieldByName('IPI_Saida').AsCurrency    - tProcessos.FieldByName('Valor_IPI').AsCurrency;
      lDiferencaPIS.Value    := tProcessos.FieldByName('PIS_Saida').AsCurrency    - tProcessos.FieldByName('Valor_PIS').AsCurrency;
      lDiferencaCOFINS.Value := tProcessos.FieldByName('COFINS_Saida').AsCurrency - tProcessos.FieldByName('Valor_COFINS').AsCurrency;

      lTotalImpDI.Value := tProcessos.FieldByName('II').AsCurrency + tProcessos.FieldByName('Valor_IPI').AsCurrency + tProcessos.FieldByName('Valor_PIS').AsCurrency +
                           tProcessos.FieldByName('Valor_COFINS').AsCurrency + tProcessos.FieldByName('Valor_ICMS').AsCurrency +
                           lDiferencaICMS.Value + lDiferencaIPI.Value + lDiferencaPIS.Value + lDiferencaCOFINS.Value + tTotalSaida.FieldByName('Total_ICMSSub').AsCurrency;

      lImpostos.Value := lTotalImpDI.Value;

      lTotalImpSaida.Value   := tProcessos.FieldByName('ICMS_Saida').AsCurrency + tProcessos.FieldByName('ICMS_SaidaST').AsCurrency + tProcessos.FieldByName('IPI_Saida').AsCurrency + tProcessos.FieldByName('PIS_Saida').AsCurrency + tProcessos.FieldByName('COFINS_Saida').AsCurrency;
      lTotalCusto.Value      := tProcessos.FieldByName('Total_CambioReal').AsCurrency + tProcessos.FieldByName('Total_Despesas').AsCurrency + lImpostos.Value;
      lTotalNegociacao.Value := tProcessos.FieldByName('Margem_LucroValor').AsCurrency + tProcessos.FieldByName('Desconto_AdicionalValor').AsCurrency + tProcessos.FieldByName('Desconto_ComercialValor').AsCurrency;
      lSubTotal.Value        := lTotalCusto.Value + lTotalNegociacao.Value;
      lTotalGeral.Value      := tProcessos.FieldByName('Pagamento_Cliente').AsCurrency - lSubTotal.Value;
}     with tProcessos do begin 
           lDiferencaIPI.Value    := FieldByName('IPI_Saida').AsCurrency    - FieldByName('Valor_IPI').AsCurrency;
           lDiferencaPIS.Value    := FieldByName('PIS_Saida').AsCurrency    - FieldByName('Valor_PIS').AsCurrency;
           lDiferencaCOFINS.Value := FieldByName('COFINS_Saida').AsCurrency - FieldByName('Valor_COFINS').AsCurrency;
           lDiferencaICMS.Value   := FieldByName('ICMS_Saida').AsCurrency   - FieldByName('Valor_ICMS').AsCurrency;
           lDiferencaICMSST.Value := FieldByName('ICMS_SaidaST').AsCurrency - FieldByName('ICMS_EntradaST').AsCurrency;

           lTotalImpDI.Value := FieldByName('II').AsCurrency + 
                                FieldByName('Valor_IPI').AsCurrency + 
                                FieldByName('Valor_PIS').AsCurrency +
                                FieldByName('Valor_COFINS').AsCurrency + 
                                FieldByName('Valor_ICMS').AsCurrency + 
                                FieldByName('ICMS_EntradaST').AsCurrency;

           lImpostos.Value := lTotalImpDI.Value;

           lTotalImpSaida.Value  := FieldByName('IPI_Saida').AsCurrency + 
                                    FieldByName('PIS_Saida').AsCurrency + 
                                    FieldByName('COFINS_Saida').AsCurrency+
                                    FieldByName('ICMS_Saida').AsCurrency + 
                                    FieldByName('ICMS_SaidaST').AsCurrency;

           lTotalDiferenca.Value := lDiferencaII.Value +
                                    lDiferencaIPI.Value +
                                    lDiferencaPIS.Value + 
                                    lDiferencaCOFINS.Value +
                                    lDiferencaICMS.Value +
                                    lDiferencaICMSST.Value;
           
           lDiferenca.Value      := lTotalDiferenca.Value;

//           lTotalEntDif.Value    := lTotalImpDI.Value + lTotalDiferenca.Value;
      
           lTotalCusto.Value     := FieldByName('Total_CambioReal').AsCurrency +
                                    FieldByName('Total_Despesas').AsCurrency +
                                    lImpostos.Value +
                                    lDiferenca.Value + 
                                    FieldByName('CSLL_Valor').AsCurrency +
                                    FieldByName('IRPJ_Valor').AsCurrency;
                                     
           lTotalNegociacao.Value := FieldByName('Margem_LucroValor').AsCurrency +
                                     FieldByName('Desconto_AdicionalValor').AsCurrency + 
                                     FieldByName('Desconto_ComercialValor').AsCurrency;
                                     
           lSubTotal.Value   := lTotalCusto.Value + lTotalNegociacao.Value;
           //lTotalGeral.Value := FieldByName('Pagamento_Cliente').AsCurrency - lSubTotal.Value;
           lTotalGeral.Value := FieldByName('Pagamento_Cliente').AsCurrency - (FieldByName('Transferencia_Efetuada').AsCurrency+FieldByName('Devolucoes').AsCurrency + lSubTotal.Value);
           lSaldoFinanceiro.Value := (tProcessos.FieldByName('Pagamento_Cliente').AsCurrency + tProcessos.FieldByName('Valor_DescontoJuros').AsCurrency) - lSubTotal.value;
      end;
end;

procedure TImpressao_ProcessosOP_Fechamento.lSaldoFinanceiroCalc(Sender: TObject; var Value: Variant);
begin
//      Value := tTotalSaida.FieldByName('Valor_TotalNota').AsCurrency - tProcessos.FieldByName('Pagamento_Cliente').AsCurrency + tProcessos.FieldByName('Valor_DescontoJuros').AsCurrency;
//      Value := (tProcessos.FieldByName('Pagamento_Cliente').AsCurrency + tProcessos.FieldByName('Valor_DescontoJuros').AsCurrency) - lSubTotal.value;
end;

procedure TImpressao_ProcessosOP_Fechamento.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With Dados do begin
          If (Column.FieldName = 'Complementar') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (ProcessosFechamento.FieldByName('Complementar').Value = True) then Dados.ImageList1.GetBitmap(2, Icon);
                   Draw(Round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
          End;
     End;
end;



end.
