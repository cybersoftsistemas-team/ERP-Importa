unit frmImpressao_Faturamento_ComposicaoProc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter,
  ppBands, ppCtrls, ppVar, ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, RXCtrls, IniFiles,
  ppSubRpt, Funcoes, ComObj, MaskUtils, myChkBox, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
    TImpressao_Faturamento_ComposicaoProc = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText5: TStaticText;
    StaticText7: TStaticText;
    cCliente: TRxDBLookupCombo;
    cProcesso: TRxDBLookupCombo;
    tNota: TMSQuery;
    tDespesas: TMSQuery;
    pNota: TppDBPipeline;
    rComposicaoNF: TppReport;
    dstNota: TDataSource;
    dstDespesasE: TDataSource;
    pDespesasE: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    pEmpresa: TppDBPipeline;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    rDespesas: TppSubReport;
    rDespesasE: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppSummaryBand1: TppSummaryBand;
    lFator: TppLabel;
    ppDBText11: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppLabel19: TppLabel;
    ppDBText16: TppDBText;
    ppLabel20: TppLabel;
    ppDBText17: TppDBText;
    ppLabel21: TppLabel;
    ppDBText18: TppDBText;
    ppLabel22: TppLabel;
    ppDBText19: TppDBText;
    ppLabel23: TppLabel;
    ppShape26: TppShape;
    ppLabel28: TppLabel;
    ppDBText20: TppDBText;
    ppShape27: TppShape;
    ppLabel24: TppLabel;
    ppDBText21: TppDBText;
    ppShape28: TppShape;
    ppLabel29: TppLabel;
    ppDBText22: TppDBText;
    ppShape29: TppShape;
    ppLabel30: TppLabel;
    ppDBText23: TppDBText;
    ppShape30: TppShape;
    ppLabel31: TppLabel;
    ppDBText24: TppDBText;
    ppShape31: TppShape;
    ppLabel32: TppLabel;
    ppDBText25: TppDBText;
    ppShape32: TppShape;
    ppLabel33: TppLabel;
    ppDBText26: TppDBText;
    ppShape33: TppShape;
    ppLabel34: TppLabel;
    ppDBText27: TppDBText;
    ppShape34: TppShape;
    pDescontos: TppDBText;
    ppLabel35: TppLabel;
    ppShape35: TppShape;
    ppDBText28: TppDBText;
    ppLabel36: TppLabel;
    ppShape36: TppShape;
    ppDBText29: TppDBText;
    ppLabel37: TppLabel;
    ppDBText30: TppDBText;
    ppLabel9: TppLabel;
    ppDBText31: TppDBText;
    ppLabel25: TppLabel;
    ppDBText32: TppDBText;
    ppLabel26: TppLabel;
    ppDBText33: TppDBText;
    ppLabel39: TppLabel;
    ppDBText34: TppDBText;
    ppDBText37: TppDBText;
    ppLabel42: TppLabel;
    ppDBText38: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText39: TppDBText;
    ppLabel45: TppLabel;
    ppDBText40: TppDBText;
    ppLabel46: TppLabel;
    ppDBText41: TppDBText;
    iLogo: TppImage;
    ppLabel40: TppLabel;
    ppDBText42: TppDBText;
    ppLabel47: TppLabel;
    ppDBText43: TppDBText;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    ppLabel48: TppLabel;
    ppDBText44: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText45: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText48: TppDBText;
    ppLabel55: TppLabel;
    ppDBText49: TppDBText;
    ppLabel56: TppLabel;
    ppDBText50: TppDBText;
    ppLabel57: TppLabel;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppLabel58: TppLabel;
    cTipo: TRadioGroup;
    ppLabel15: TppLabel;
    ppDBText14: TppDBText;
    ppLabel38: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppLabel16: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine4: TppLine;
    ppLabel59: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppLine11: TppLine;
    ppLine15: TppLine;
    ppLabel60: TppLabel;
    ppDBText15: TppDBText;
    ppLabel61: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cClienteChange(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_ComposicaoProc: TImpressao_Faturamento_ComposicaoProc;

implementation

uses frmDados, frmMenu_Principal, frmDMFiscal;

{$R *.dfm}

procedure TImpressao_Faturamento_ComposicaoProc.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Faturamento_ComposicaoProc.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      If Trim(cCliente.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_COMPOSICAOProc', 'Cliente', cCliente.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_COMPOSICAOProc', 'Cliente', 0);
      If Trim(cProcesso.Text) <> '' then
         aINI.WriteString('IMPRESSAO_FATURAMENTO_COMPOSICAOProc', 'Processo', cProcesso.KeyValue)
      else
         aINI.WriteString('IMPRESSAO_FATURAMENTO_COMPOSICAOProc', 'Processo', '');
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_COMPOSICAOProc', 'Tipo', cTipo.ItemIndex);
      aINI.Free;

      FecharTabelas(Dados, dmFiscal, nil, nil);

      Impressao_Faturamento_ComposicaoProc.Release;
      Impressao_Faturamento_ComposicaoProc := nil;
end;

procedure TImpressao_Faturamento_ComposicaoProc.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_ComposicaoProc.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;

      With Dados do begin
           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.SQL.Add('WHERE (SELECT COUNT(*) FROM ProcessosDocumentos WHERE(Cliente = Codigo)) > 0');
           Clientes.SQL.Add('ORDER BY Nome');
           Clientes.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           cClienteChange(Self);
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI               := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cCliente.KeyValue  := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_COMPOSICAOProc', 'Cliente' , 0);
      cProcesso.KeyValue := aINI.ReadString ('IMPRESSAO_FATURAMENTO_COMPOSICAOProc', 'Processo', '');
      cTipo.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_COMPOSICAOProc', 'Tipo', 0);
      aINI.Free;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_Faturamento_ComposicaoProc.cClienteChange(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT *');
           ProcessosDOC.SQL.Add('FROM   ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE  Cliente = :pCliente');
           ProcessosDOC.SQL.Add('ORDER  BY Processo');
           ProcessosDOC.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
           //Notas.SQL.SaveToFile('c:\temp\Composicao_NotaFiscal_ProcNotas.sql');
           ProcessosDOC.Open;

           cProcesso.Enabled := ProcessosDOC.RecordCount > 0;
      End;
end;

procedure TImpressao_Faturamento_ComposicaoProc.bImprimirClick(Sender: TObject);
begin
      If Trim(cProcesso.Text) = '' then begin
         Showmessage('É necessário informar o número do "Processo" para gerar o relatório!');
         Abort;
      End;

      With Dados, dmFiscal do begin
           tNota.SQL.Clear;
           if cTipo.ItemIndex = 0 then begin
              // Notas de Entrada e de Saída.
              tNota.SQL.Add('SELECT  Cliente         = (SELECT Nome FROM Clientes WHERE Codigo = PD.Cliente)');
              tNota.SQL.Add('       ,CNPJ            = (SELECT CNPJ FROM Clientes WHERE Codigo = Cliente)');
              tNota.SQL.Add('       ,Processo');
              tNota.SQL.Add('       ,Modalidade_Importacao');
              tNota.SQL.Add('       ,Modalidade      = (SELECT Descricao FROM TiposProcesso WHERE Codigo = Modalidade_Importacao)');
              tNota.SQL.Add('	    ,Tipo_NotaSaida  = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,FOB');
              tNota.SQL.Add('       ,Frete');
              tNota.SQL.Add('       ,Seguro');
              tNota.SQL.Add('       ,Dumping          = ISNULL(Valor_Dumping, 0)');
              tNota.SQL.Add('       ,II');
              tNota.SQL.Add('       ,Valor_PIS');
              tNota.SQL.Add('       ,Valor_COFINS');
              tNota.SQL.Add('	    ,Custo            = ISNULL((SELECT SUM(Valor_OutrasDespesas) FROM NotasFiscais NF WHERE NF.Saida_Entrada = 0 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	    ,Produto_Entrada  = ISNULL((SELECT SUM(Valor_TotalProdutos)  FROM NotasFiscais NF WHERE NF.Saida_Entrada = 0 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	    ,Total_Entrada    = ISNULL((SELECT SUM(Valor_TotalNota)      FROM NotasFiscais NF WHERE NF.Saida_Entrada = 0 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	    ,Fator            = CAST(0 AS Float)');
              tNota.SQL.Add('	    ,CIF              = CAST(0 AS Float)');
              tNota.SQL.Add('	    ,CIF_Saida        = CAST(0 AS Float)');
              tNota.SQL.Add('       ,Fator_ICMS = CASE WHEN (SELECT Fator_ICMS FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN');
              tNota.SQL.Add('	                            ISNULL((SELECT MAX(Aliquota_ICMSOper) FROM NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	                    ELSE');
              tNota.SQL.Add('				    CAST(0  AS Float)');
              tNota.SQL.Add('			    END');
              tNota.SQL.Add(' ,Fator_PIS = CASE WHEN (SELECT Fator_PIS FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN');
              tNota.SQL.Add('	                          ISNULL((SELECT MAX(Aliquota_PIS) FROM NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	                     ELSE');
              tNota.SQL.Add('				CAST(0  AS Float)');
              tNota.SQL.Add('			     END');
              tNota.SQL.Add(' ,Fator_COFINS = CASE WHEN (SELECT Fator_COFINS FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN');
              tNota.SQL.Add('	                          ISNULL((SELECT MAX(Aliquota_COFINS) FROM NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	                     ELSE');
              tNota.SQL.Add('				  CAST(0  AS Float)');
              tNota.SQL.Add('			     END');
              tNota.SQL.Add(' ,Fator_IRPJ = CASE WHEN (SELECT Fator_IRPJ FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN');
              tNota.SQL.Add('	                             ISNULL((SELECT MAX(Aliquota_IRPJ) FROM NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	                      ELSE');
              tNota.SQL.Add('			             CAST(0  AS Float)');
              tNota.SQL.Add('			      END');
              tNota.SQL.Add(' ,Fator_CSLL = CASE WHEN (SELECT Fator_CSLL FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN');
              tNota.SQL.Add('	                           ISNULL((SELECT MAX(Aliquota_CSLL) FROM NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	                      ELSE');
              tNota.SQL.Add('			           CAST(0  AS Float)');
              tNota.SQL.Add('			      END');
              tNota.SQL.Add(' ,Fator_Lucro = CASE WHEN (SELECT Fator_Lucro FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)) = 1 THEN');
              tNota.SQL.Add('	                           ISNULL((SELECT MAX(Lucro) FROM NotasItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	                      ELSE');
              tNota.SQL.Add('			           CAST(0  AS Float)');
              tNota.SQL.Add('			      END');
              tNota.SQL.Add('       ,Produto_Saida     = ISNULL((SELECT SUM(Valor_TotalProdutos)    FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,BCICMS_Saida      = ISNULL((SELECT SUM(BCICMS)                 FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,ICMS_Saida        = ISNULL((SELECT SUM(Valor_ICMS)             FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,BCICMS_STSaida    = ISNULL((SELECT SUM(BCICMS_Substitutivo)    FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,ICMS_STSaida      = ISNULL((SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,IPI_Saida         = ISNULL((SELECT SUM(Valor_TotalIPI)         FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,PIS_Saida         = ISNULL((SELECT SUM(Valor_PIS)              FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,COFINS_Saida      = ISNULL((SELECT SUM(Valor_COFINS)           FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,IRPJ              = ISNULL((SELECT SUM(Valor_IRPJ)             FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,CSLL              = ISNULL((SELECT SUM(Valor_CSLL)             FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,Lucro             = ISNULL((SELECT SUM(Lucro)                  FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,Frete_Saida       = ISNULL((SELECT SUM(Total_Frete)            FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,Seguro_Saida      = ISNULL((SELECT SUM(Valor_Seguro)           FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,Desconto_Saida    = ISNULL((SELECT SUM(Total_Descontos)        FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	 ,Faturamento       = ISNULL((SELECT SUM(Valor_TotalNota)        FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,Despesa_Saida     = ISNULL((SELECT SUM(Valor_Nota) FROM NotasDespesas WHERE Processo = PD.Processo AND (SELECT Saida_Entrada FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data_Emissao) = 1), 0)');
              tNota.SQL.Add('INTO   #TEMP');
              tNota.SQL.Add('FROM   ProcessosDocumentos PD');
              tNota.SQL.Add('WHERE  Processo = :pProcesso');
              tNota.SQL.Add('UPDATE #TEMP SET Fator     = (ROUND((100 - (Fator_Lucro+Fator_ICMS+Fator_PIS+Fator_COFINS+Fator_IRPJ+Fator_CSLL)), 4)/100)');
              tNota.SQL.Add('                ,CIF       = FOB + Frete + Seguro + II + Dumping + Custo');
              tNota.SQL.Add('                ,CIF_Saida = FOB + Frete + Seguro + II + Dumping + Despesa_Saida');
              tNota.SQL.Add('SELECT * FROM #TEMP');
              tNota.SQL.Add('DROP TABLE #TEMP');
              //tNota.SQL.SavetoFile('c:\temp\Composicao_NotaFiscalProcNF0.sql');
              tNota.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
              tNota.Open;
              
              tDespesas.SQL.Clear;
              tDespesas.SQL.Add('SELECT DISTINCT');
              tDespesas.SQL.Add('        Classificacao');
              tDespesas.SQL.Add('       ,Descricao');
              tDespesas.SQL.Add('       ,Valor_Total = SUM(Valor_Total)');
              tDespesas.SQL.Add('       ,Entrada     = CAST(CASE WHEN (SELECT Saida_Entrada FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data_Emissao) = 0 THEN 1 END AS bit)');
              tDespesas.SQL.Add('       ,Saida       = CAST(CASE WHEN (SELECT Saida_Entrada FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data_Emissao) = 1 THEN 1 END AS bit)');
              tDespesas.SQL.Add('FROM NotasDespesas WHERE Processo = :pProcesso');
              tDespesas.SQL.Add('GROUP BY Classificacao, Descricao, Nota');
              tDespesas.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
              tDespesas.SQL.Add('ORDER BY Entrada desc, Descricao');
              tDespesas.Open;
           end;

           if cTipo.ItemIndex = 1 then begin
              // Notas de Entrada e pedido de Saída.
              tNota.SQL.Add('SELECT  Cliente         = (SELECT Nome FROM Clientes WHERE Codigo = PD.Cliente)');
              tNota.SQL.Add('       ,CNPJ            = (SELECT CNPJ FROM Clientes WHERE Codigo = Cliente)');
              tNota.SQL.Add('       ,Processo');
              tNota.SQL.Add('       ,Modalidade_Importacao');
              tNota.SQL.Add('       ,Modalidade      = (SELECT Descricao FROM TiposProcesso WHERE Codigo = Modalidade_Importacao)');
              tNota.SQL.Add('	    ,Tipo_NotaSaida  = ISNULL((SELECT DISTINCT Tipo_Nota FROM NotasFiscais NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('       ,FOB');
              tNota.SQL.Add('       ,Frete');
              tNota.SQL.Add('       ,Seguro');
              tNota.SQL.Add('       ,Dumping          = ISNULL(Valor_Dumping, 0)');
              tNota.SQL.Add('       ,II');
              tNota.SQL.Add('       ,Valor_PIS');
              tNota.SQL.Add('       ,Valor_COFINS');
              tNota.SQL.Add('	    ,Custo            = ISNULL((SELECT SUM(Valor_OutrasDespesas) FROM NotasFiscais NF WHERE NF.Saida_Entrada = 0 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	    ,Produto_Entrada  = ISNULL((SELECT SUM(Valor_TotalProdutos)  FROM NotasFiscais NF WHERE NF.Saida_Entrada = 0 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	    ,Total_Entrada    = ISNULL((SELECT SUM(Valor_TotalNota)      FROM NotasFiscais NF WHERE NF.Saida_Entrada = 0 AND NF.Processo = PD.Processo AND NF.Cancelada <> 1 AND NF.Nfe_Denegada <> 1), 0)');
              tNota.SQL.Add('	    ,Fator            = CAST(0 AS Float)');
              tNota.SQL.Add('	    ,CIF              = CAST(0 AS Float)');
              tNota.SQL.Add('	    ,CIF_Saida        = CAST(0 AS Float)');
              tNota.SQL.Add('       ,Fator_ICMS = CASE WHEN (SELECT Fator_ICMS FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)) = 1 THEN');
              tNota.SQL.Add('	                      ISNULL((SELECT MAX(Aliquota_ICMSOper) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo ), 0)');
              tNota.SQL.Add('	                  ELSE');
              tNota.SQL.Add('                          CAST(0  AS Float)');
              tNota.SQL.Add('                     END');
              tNota.SQL.Add('       ,Fator_PIS = CASE WHEN (SELECT Fator_PIS FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo ), 0)) = 1 THEN');
              tNota.SQL.Add('                         ISNULL((SELECT MAX(Aliquota_PIS) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('                     ELSE');
              tNota.SQL.Add('                         CAST(0  AS Float)');
              tNota.SQL.Add('			  END');
              tNota.SQL.Add('       ,Fator_COFINS = CASE WHEN (SELECT Fator_COFINS FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo ), 0)) = 1 THEN');
              tNota.SQL.Add('	                       ISNULL((SELECT MAX(Aliquota_COFINS) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo ), 0)');
              tNota.SQL.Add('	                    ELSE');
              tNota.SQL.Add('                           CAST(0  AS Float)');
              tNota.SQL.Add('			    END');
              tNota.SQL.Add('       ,Fator_IRPJ = CASE WHEN (SELECT Fator_IRPJ FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)) = 1 THEN');
              tNota.SQL.Add('	                     ISNULL((SELECT MAX(Aliquota_IRPJ) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('	                  ELSE');
              tNota.SQL.Add('			             CAST(0  AS Float)');
              tNota.SQL.Add('                     END');
              tNota.SQL.Add('       ,Fator_CSLL = CASE WHEN (SELECT Fator_CSLL FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)) = 1 THEN');
              tNota.SQL.Add('	                     ISNULL((SELECT MAX(Aliquota_CSLL) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('	                  ELSE');
              tNota.SQL.Add('                         CAST(0  AS Float)');
              tNota.SQL.Add('		          END');
              tNota.SQL.Add('       ,Fator_Lucro = CASE WHEN (SELECT Fator_Lucro FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)) = 1 THEN');
              tNota.SQL.Add('	                      ISNULL((SELECT MAX(Lucro) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('	                   ELSE');
              tNota.SQL.Add('			       CAST(0  AS Float)');
              tNota.SQL.Add('		      	   END');
              tNota.SQL.Add('       ,Produto_Saida     = ISNULL((SELECT SUM(Valor_TotalProdutos)    FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,BCICMS_Saida      = ISNULL((SELECT SUM(BCICMS)                 FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,ICMS_Saida        = ISNULL((SELECT SUM(Valor_ICMS)             FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,BCICMS_STSaida    = ISNULL((SELECT SUM(BCICMS_Substitutivo)    FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,ICMS_STSaida      = ISNULL((SELECT SUM(ValorICMS_Substitutivo) FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,IPI_Saida         = ISNULL((SELECT SUM(Valor_TotalIPI)         FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,PIS_Saida         = ISNULL((SELECT SUM(Valor_PIS)              FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,COFINS_Saida      = ISNULL((SELECT SUM(Valor_COFINS)           FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,IRPJ              = ISNULL((SELECT SUM(Valor_IRPJ)             FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,CSLL              = ISNULL((SELECT SUM(Valor_CSLL)             FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Lucro             = ISNULL((SELECT SUM(Lucro)                  FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Frete_Saida       = ISNULL((SELECT SUM(Total_Frete)            FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Seguro_Saida      = ISNULL((SELECT SUM(Valor_Seguro)           FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Desconto_Saida    = ISNULL((SELECT SUM(Total_Descontos)        FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Faturamento       = ISNULL((SELECT SUM(Valor_TotalNota)        FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Despesa_Saida     = ISNULL((SELECT SUM(Valor_Nota) FROM PedidosDespesas ND WHERE Processo = PD.Processo AND (SELECT Saida_Entrada FROM Pedidos NF WHERE NF.Numero = Pedido AND NF.Data_Emissao = Data_Emissao) = 1), 0)');
              tNota.SQL.Add('INTO   #TEMP');
              tNota.SQL.Add('FROM   ProcessosDocumentos PD');
              tNota.SQL.Add('WHERE  Processo = :pProcesso');
              tNota.SQL.Add('UPDATE #TEMP SET Fator     = (ROUND((100 - (Fator_Lucro+Fator_ICMS+Fator_PIS+Fator_COFINS+Fator_IRPJ+Fator_CSLL)), 4)/100)');
              tNota.SQL.Add('                ,CIF       = FOB + Frete + Seguro + II + Dumping + Custo');
              tNota.SQL.Add('                ,CIF_Saida = FOB + Frete + Seguro + II + Dumping + Despesa_Saida');
              tNota.SQL.Add('SELECT * FROM #TEMP');
              tNota.SQL.Add('DROP TABLE #TEMP');
              tNota.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
              //tNota.SQL.SavetoFile('c:\temp\Composicao_NotaFiscalProcPed1.sql');
              tNota.Open;

              tDespesas.SQL.Clear;
              tDespesas.SQL.Add('SELECT  DISTINCT Classificacao');
              tDespesas.SQL.Add('       ,Descricao');
              tDespesas.SQL.Add('       ,Valor_Total = SUM(Valor_Total)');
              tDespesas.SQL.Add('       ,Entrada     = 1');
              tDespesas.SQL.Add('       ,Saida       = 0');
              tDespesas.SQL.Add('FROM  NotasDespesas');
              tDespesas.SQL.Add('WHERE Processo = :pProcesso');
              tDespesas.SQL.Add('AND (SELECT Saida_Entrada FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data_Emissao) = 0');
              tDespesas.SQL.Add('GROUP BY Classificacao, Descricao, Nota');
              tDespesas.SQL.Add('UNION ALL');
              tDespesas.SQL.Add('SELECT DISTINCT');
              tDespesas.SQL.Add('        Classificacao');
              tDespesas.SQL.Add('       ,Descricao');
              tDespesas.SQL.Add('       ,Valor_Total = SUM(Valor_Total)');
              tDespesas.SQL.Add('       ,Entrada     = CAST(CASE WHEN (SELECT Saida_Entrada FROM Pedidos NF WHERE NF.Numero = Pedido AND NF.Data_Emissao = Data_Emissao) = 0 THEN 1 END AS bit)');
              tDespesas.SQL.Add('       ,Saida       = CAST(CASE WHEN (SELECT Saida_Entrada FROM Pedidos NF WHERE NF.Numero = Pedido AND NF.Data_Emissao = Data_Emissao) = 1 THEN 1 END AS bit)');
              tDespesas.SQL.Add('FROM PedidosDespesas WHERE Processo = :pProcesso');
              tDespesas.SQL.Add('AND (SELECT Saida_Entrada FROM NotasFiscais NF WHERE NF.Numero = Pedido AND NF.Data_Emissao = Data_Emissao) = 1');
              tDespesas.SQL.Add('GROUP BY Classificacao, Descricao, Pedido');
              tDespesas.SQL.Add('ORDER BY Entrada desc, Descricao');
              tDespesas.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
              //tDespesas.SQL.SavetoFile('c:\temp\Composicao_Despesas1.sql');
              tDespesas.Open;
           end;

           if cTipo.ItemIndex = 2 then begin
              // Pedido de entrada e de Saída.
              tNota.SQL.Add('SELECT  Cliente         = (SELECT Nome FROM Clientes WHERE Codigo = PD.Cliente)');
              tNota.SQL.Add('       ,CNPJ            = (SELECT CNPJ FROM Clientes WHERE Codigo = Cliente)');
              tNota.SQL.Add('       ,Processo');
              tNota.SQL.Add('       ,Modalidade_Importacao');
              tNota.SQL.Add('       ,Modalidade      = (SELECT Descricao FROM TiposProcesso WHERE Codigo = Modalidade_Importacao)');
              tNota.SQL.Add('	    ,Tipo_NotaSaida  = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,FOB');
              tNota.SQL.Add('       ,Frete');
              tNota.SQL.Add('       ,Seguro');
              tNota.SQL.Add('       ,Dumping          = ISNULL(Valor_Dumping, 0)');
              tNota.SQL.Add('       ,II');
              tNota.SQL.Add('       ,Valor_PIS');
              tNota.SQL.Add('       ,Valor_COFINS');
              tNota.SQL.Add('       ,Custo            = ISNULL((SELECT SUM(Valor_OutrasDespesas) FROM Pedidos NF WHERE NF.Saida_Entrada = 0 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Produto_Entrada  = ISNULL((SELECT SUM(Valor_TotalProdutos)  FROM Pedidos NF WHERE NF.Saida_Entrada = 0 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Total_Entrada    = ISNULL((SELECT SUM(Valor_TotalNota)      FROM Pedidos NF WHERE NF.Saida_Entrada = 0 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Fator            = CAST(0 AS Float)');
              tNota.SQL.Add('       ,CIF              = CAST(0 AS Float)');
              tNota.SQL.Add('       ,CIF_Saida        = CAST(0 AS Float)');
              tNota.SQL.Add('       ,Fator_ICMS = CASE WHEN (SELECT Fator_ICMS FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)) = 1 THEN');
              tNota.SQL.Add('	                      ISNULL((SELECT MAX(Aliquota_ICMSOper) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo ), 0)');
              tNota.SQL.Add('	                  ELSE');
              tNota.SQL.Add('                          CAST(0  AS Float)');
              tNota.SQL.Add('                     END');
              tNota.SQL.Add('       ,Fator_PIS = CASE WHEN (SELECT Fator_PIS FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo ), 0)) = 1 THEN');
              tNota.SQL.Add('                         ISNULL((SELECT MAX(Aliquota_PIS) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('                     ELSE');
              tNota.SQL.Add('                         CAST(0  AS Float)');
              tNota.SQL.Add('			  END');
              tNota.SQL.Add('       ,Fator_COFINS = CASE WHEN (SELECT Fator_COFINS FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo ), 0)) = 1 THEN');
              tNota.SQL.Add('	                       ISNULL((SELECT MAX(Aliquota_COFINS) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo ), 0)');
              tNota.SQL.Add('	                    ELSE');
              tNota.SQL.Add('                           CAST(0  AS Float)');
              tNota.SQL.Add('			    END');
              tNota.SQL.Add('       ,Fator_IRPJ = CASE WHEN (SELECT Fator_IRPJ FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)) = 1 THEN');
              tNota.SQL.Add('	                     ISNULL((SELECT MAX(Aliquota_IRPJ) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('	                  ELSE');
              tNota.SQL.Add('			             CAST(0  AS Float)');
              tNota.SQL.Add('                     END');
              tNota.SQL.Add('       ,Fator_CSLL = CASE WHEN (SELECT Fator_CSLL FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)) = 1 THEN');
              tNota.SQL.Add('	                     ISNULL((SELECT MAX(Aliquota_CSLL) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('	                  ELSE');
              tNota.SQL.Add('                         CAST(0  AS Float)');
              tNota.SQL.Add('		          END');
              tNota.SQL.Add('       ,Fator_Lucro = CASE WHEN (SELECT Fator_Lucro FROM TipoNota WHERE Codigo = ISNULL((SELECT DISTINCT Tipo_Nota FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)) = 1 THEN');
              tNota.SQL.Add('	                      ISNULL((SELECT MAX(Lucro) FROM PedidosItens NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('	                   ELSE');
              tNota.SQL.Add('			       CAST(0  AS Float)');
              tNota.SQL.Add('		      	   END');
              tNota.SQL.Add('       ,Produto_Saida     = ISNULL((SELECT SUM(Valor_TotalProdutos)    FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,BCICMS_Saida      = ISNULL((SELECT SUM(BCICMS)                 FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,ICMS_Saida        = ISNULL((SELECT SUM(Valor_ICMS)             FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,BCICMS_STSaida    = ISNULL((SELECT SUM(BCICMS_Substitutivo)    FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,ICMS_STSaida      = ISNULL((SELECT SUM(ValorICMS_Substitutivo) FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,IPI_Saida         = ISNULL((SELECT SUM(Valor_TotalIPI)         FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,PIS_Saida         = ISNULL((SELECT SUM(Valor_PIS)              FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,COFINS_Saida      = ISNULL((SELECT SUM(Valor_COFINS)           FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,IRPJ              = ISNULL((SELECT SUM(Valor_IRPJ)             FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,CSLL              = ISNULL((SELECT SUM(Valor_CSLL)             FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Lucro             = ISNULL((SELECT SUM(Lucro)                  FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Frete_Saida       = ISNULL((SELECT SUM(Total_Frete)            FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Seguro_Saida      = ISNULL((SELECT SUM(Valor_Seguro)           FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Desconto_Saida    = ISNULL((SELECT SUM(Total_Descontos)        FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Faturamento       = ISNULL((SELECT SUM(Valor_TotalNota)        FROM Pedidos NF WHERE NF.Saida_Entrada = 1 AND NF.Processo = PD.Processo), 0)');
              tNota.SQL.Add('       ,Despesa_Saida     = ISNULL((SELECT SUM(Valor_Nota) FROM PedidosDespesas ND WHERE Processo = PD.Processo AND (SELECT Saida_Entrada FROM Pedidos NF WHERE NF.Numero = Pedido AND NF.Data_Emissao = Data_Emissao) = 1), 0)');
              tNota.SQL.Add('INTO   #TEMP');
              tNota.SQL.Add('FROM   ProcessosDocumentos PD');
              tNota.SQL.Add('WHERE  Processo = :pProcesso');
              tNota.SQL.Add('UPDATE #TEMP SET Fator     = (ROUND((100 - (Fator_Lucro+Fator_ICMS+Fator_PIS+Fator_COFINS+Fator_IRPJ+Fator_CSLL)), 4)/100)');
              tNota.SQL.Add('                ,CIF       = FOB + Frete + Seguro + II + Dumping + Custo');
              tNota.SQL.Add('                ,CIF_Saida = FOB + Frete + Seguro + II + Dumping + Despesa_Saida');
              tNota.SQL.Add('SELECT * FROM #TEMP');
              tNota.SQL.Add('DROP TABLE #TEMP');
              tNota.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
              //tNota.SQL.SavetoFile('c:\temp\Composicao_NotaFiscalProcPed2.sql');
              tNota.Open;

              tDespesas.SQL.Clear;
              tDespesas.SQL.Add('SELECT DISTINCT');
              tDespesas.SQL.Add('        Classificacao');
              tDespesas.SQL.Add('       ,Descricao');
              tDespesas.SQL.Add('       ,Valor_Total = SUM(Valor_Total)');
              tDespesas.SQL.Add('       ,Entrada     = CAST(CASE WHEN (SELECT Saida_Entrada FROM Pedidos NF WHERE NF.Numero = Pedido AND NF.Data_Emissao = Data_Emissao) = 0 THEN 1 END AS bit)');
              tDespesas.SQL.Add('       ,Saida       = CAST(CASE WHEN (SELECT Saida_Entrada FROM Pedidos NF WHERE NF.Numero = Pedido AND NF.Data_Emissao = Data_Emissao) = 1 THEN 1 END AS bit)');
              tDespesas.SQL.Add('FROM PedidosDespesas WHERE Processo = :pProcesso');
              tDespesas.SQL.Add('GROUP BY Classificacao, Descricao, Pedido');
              tDespesas.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
              tDespesas.SQL.Add('ORDER BY Entrada desc, Descricao');
              tDespesas.Open;
           end;

           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;
           //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           rComposicaoNF.Print;
           rComposicaoNF.Reset;
      End;
end;

// Envia informações para o excel.
procedure TImpressao_Faturamento_ComposicaoProc.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
   mLinhaAnt : Integer;
begin
       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Cells[1, 1].ColumnWidth := 12;
       mPlanilha.Cells[1, 2].ColumnWidth := 60;
       mPlanilha.Cells[1, 3].ColumnWidth := 12;
       mPlanilha.Cells[1, 4].ColumnWidth := 14;
       mPlanilha.Cells[1, 7].ColumnWidth := 18;

       mPlanilha.Cells[3,01] := 'CLIENTE';
       mPlanilha.Cells[3,02] := tNota.FieldByName('Cliente').AsString;
       mPlanilha.Cells[3,03] := 'CNPJ';
       mPlanilha.Cells[3,04] := FormatMaskText('##.###.###/####-##;0;', tNota.FieldByName('CNPJ').AsString);
       mPlanilha.Cells[4,03] := 'PROCESSO';
       mPlanilha.Cells[4,04] := tNota.FieldByName('Processo').AsString;

       mPlanilha.Range['A5','G5'].Interior.Color      := clNavy;
       mPlanilha.Range['A5','G5'].Font.Bold           := true;
       mPlanilha.Range['A5','F5'].Mergecells          := True;
       mPlanilha.Range['A5','G5'].HorizontalAlignment := 3;
       mPlanilha.Range['A5','G5'].Interior.Pattern    := 1;
       mPlanilha.Range['A5','G5'].Font.Bold           := true;
       mPlanilha.Range['A5','G5'].Font.Color          := clWhite;
       mPlanilha.Range['A5','G5'].Borders.LineStyle   := 1; //xlContinuous;
       mPlanilha.Range['A5','G5'].Borders.Weight      := 2; //xlThin;
       mPlanilha.Range['A5','G5'].Borders.Color       := RGB(0,0,0);

       mPlanilha.Cells[5,1] := 'DESCRIÇÃO';
       mPlanilha.Cells[5,7] := 'VALOR';
       mPlanilha.Range['A5','F5'].Mergecells := True;

       mLinha := 6;

       mPlanilha.Cells[mLinha,01] := 'FOB (DI)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('FOB').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A6','F6'].Mergecells   := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'SEGURO (DI)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('SeguroProc').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A7','F7'].Mergecells   := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'FRETE (DI)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('FreteProc').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A8','F8'].Mergecells   := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'ANTI DUPMPING';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Dumping').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A9','F9'].Mergecells   := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'PIS (ENTRADA)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_PISEnt').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A10','F10'].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'COFINS (ENTRADA)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_COFINSEnt').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A11','F11'].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'CUSTOS (NF)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Custo').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A12','F12'].Mergecells := True;

       mPlanilha.Range['A6','G12'].Interior.Color    := $00EBEBEB;
       mPlanilha.Range['A6','G12'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A6','G12'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A6','G12'].Borders.Color     := RGB(0,0,0);

       Inc(mLinha);

       While not tDespesas.Eof do begin
             mPlanilha.Cells[mLinha,02] := '•  '+ tDespesas.FieldByName('Classificacao').AsString + '        '+tDespesas.FieldByName('Descricao').AsString;
             mPlanilha.Cells[mLinha,07] := tDespesas.FieldByName('Valor_Nota').AsCurrency;
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
             Inc(mLinha);
             tDespesas.Next;
       End;

       mLinhaAnt := mLinha;
       mPlanilha.Cells[mLinha,01] := 'IMPOSTO DE IMPORTAÇÃO (DI)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('II').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'TOTAl (FOB + Frete + Seguro + Dumping + Custo + II)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('CIF').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'FATOR = (100 - ('+FormatFloat('0.00', tNota.FieldByName('Lucro').AsFloat)+' + '+FormatFloat('0.00', tNota.FieldByName('Aliquota_ICMS').AsFloat)+' + '+
                                     FormatFloat('0.00', tNota.FieldByName('Aliquota_PIS').AsFloat)+' + '+FormatFloat('0.00', tNota.FieldByName('Aliquota_COFINS').AsFloat)+ ' + '+
                                     FormatFloat('0.00', tNota.FieldByName('Aliquota_IRPJ').AsFloat)+' + '+FormatFloat('0.00', tNota.FieldByName('Aliquota_CSLL').AsFloat)+')) / 100';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Fator').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,0000_);(#.##0,0000)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;

       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Interior.Color    := $00EBEBEB;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
       Inc(mLinha);

       mPlanilha.Cells[mLinha,02] := '•  PERCENTUAL DA MARGEM DE LUCRO';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Lucro').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := '•  ALÍQUOTA DO ICMS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Aliquota_ICMS').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := '•  ALÍQUOTA DO PIS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Aliquota_PIS').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := '•  ALÍQUOTA DA COFINS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Aliquota_COFINS').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := '•  ALÍQUOTA DO IRPJ';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Aliquota_IRPJ').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := '•  ALÍQUOTA DA CSLL';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Aliquota_CSLL').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);

       mLinhaAnt := mLinha;
       mPlanilha.Cells[mLinha,01] := 'TOTAL DOS PRODUTOS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Produtos').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'ICMS OPERACIONAL';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('ICMSOP').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'ICMS SUBSTITUTIVO';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('ICMSST').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'IPI';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('IPI').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'PIS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_PIS').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'COFINS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_COFINS').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'IRPJ';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_IRPJ').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'CSLL';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_CSLL').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'LUCRO';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Lucro_Valor').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'FATURAMENTO';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Total_Nota').AsCurrency;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;

       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Interior.Color    := $00EBEBEB;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
       Inc(mLinha,2);

       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Interior.Color      := clNavy;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Font.Bold           := true;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Mergecells          := true;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].HorizontalAlignment := 3;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Interior.Pattern    := 1;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Font.Color          := clWhite;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Borders.LineStyle   := 1; //xlContinuous;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Borders.Weight      := 2; //xlThin;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Borders.Color       := RGB(0,0,0);

       mPlanilha.Cells[mLinha,2] := 'TOTALIZADORES DA NOTA FISCAL';
       Inc(mLinha);

       mLinhaAnt := mLinha;
       mPlanilha.Cells[mLinha,02] := 'BASE DE CÁLCULO DO ICMS';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('BCICMSOp').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR DO ICMS';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('ICMSOp').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'BASE DE CÁLCULO DO ICMS SUBSTITUTIVO';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('BCICMSST').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR DO ICMS SUBSTITUTIVO';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('ICMSST').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR TOTAL DOS PRODUTOS';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('Produtos_NF').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR DO FRETE';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('FreteNF').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR DO SEGURO';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('SeguroNF').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'DESCONTO';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('Desconto').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'OUTRAS DESPESAS ACESSÓRIAS';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('Custo').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR DO IPI';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('IPI').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR TOTAL DA NOTA';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('Total_NF').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';

       mPlanilha.Range['B'+InttoStr(mLinhaAnt),'C'+InttoStr(mLinha)].Interior.Color    := $00F0F0FF;
       mPlanilha.Range['B'+InttoStr(mLinhaAnt),'C'+InttoStr(mLinha)].Font.Color        := clBlack;
       mPlanilha.Range['B'+InttoStr(mLinhaAnt),'C'+InttoStr(mLinha)].Borders.LineStyle := 2; //xlContinuous;
       mPlanilha.Range['B'+InttoStr(mLinhaAnt),'C'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['B'+InttoStr(mLinhaAnt),'C'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       //Fecha o Excel
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       If Dados.EmpresasMatriz_Filial.AsBoolean = true then
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' MATRIZ ('+ Dados.EmpresasEstado.AsString+')'
       else
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' FILIAL ' + Dados.EmpresasNumero_Filial.AsString +' (' + Dados.EmpresasEstado.AsString+')';

       mPlanilha.Cells[2,01] := 'Composição da Nota Fiscal';

       mPlanilha.Range['A1','A1'].Font.Size         := 14;
       mPlanilha.Range['A1','A1'].Font.Bold         := true;
       mPlanilha.Range['A2','A2'].Font.Size         := 12;
       mPlanilha.Range['A2','A2'].Font.Bold         := true;

       mPlanilha.Range['A1','G1'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','G1'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','G1'].Mergecells          := True;
       mPlanilha.Range['A2','G2'].Mergecells          := True;
       mPlanilha.Range['A2','G2'].HorizontalAlignment := 3;
       mPlanilha.Range['A2','G2'].VerticalAlignment   := 2;

       mPlanilha.Visible := true;
end;


end.
