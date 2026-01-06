unit frmImpressao_ProcessosOP_Dados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RXDBCtrl,
  ppClass, ppReport, ppDBPipe, ppCtrls, ppPrnabl, ppBands, DB, DBAccess, MSAccess, ppSubRpt, ppVar, ppMemo, RxLookup, Buttons, Funcoes,
  myChkBox, Grids, DBGrids, MemDS, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_ProcessosOP_Dados = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Grade: TDBGrid;
    bImprimir: TButton;
    rDadosProcesso: TppReport;
    pProcessos: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    pEmpresas: TppDBPipeline;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppShape3: TppShape;
    ppDBText6: TppDBText;
    ppLabel5: TppLabel;
    ppShape4: TppShape;
    ppDBText7: TppDBText;
    ppLabel6: TppLabel;
    ppShape5: TppShape;
    ppDBText8: TppDBText;
    ppLabel7: TppLabel;
    ppLabel2: TppLabel;
    tProcessos: TMSQuery;
    dstProcessos: TDataSource;
    ppShape6: TppShape;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppShape7: TppShape;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppShape8: TppShape;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppShape9: TppShape;
    ppDBText11: TppDBText;
    ppLabel10: TppLabel;
    ppShape10: TppShape;
    ppLabel11: TppLabel;
    ppDBText17: TppDBText;
    ppLabel14: TppLabel;
    ppShape12: TppShape;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppShape11: TppShape;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppShape13: TppShape;
    ppDBText14: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppShape14: TppShape;
    ppDBText15: TppDBText;
    ppShape15: TppShape;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppShape16: TppShape;
    ppLabel19: TppLabel;
    ppDBText18: TppDBText;
    ppShape17: TppShape;
    ppLabel20: TppLabel;
    ppDBText19: TppDBText;
    ppShape18: TppShape;
    ppLabel21: TppLabel;
    ppDBText20: TppDBText;
    ppShape19: TppShape;
    ppLabel22: TppLabel;
    ppDBText21: TppDBText;
    ppShape20: TppShape;
    ppLabel23: TppLabel;
    ppDBText22: TppDBText;
    ppShape21: TppShape;
    ppDBText23: TppDBText;
    ppLabel24: TppLabel;
    ppShape22: TppShape;
    ppLabel25: TppLabel;
    ppDBText24: TppDBText;
    ppShape23: TppShape;
    ppLabel26: TppLabel;
    ppDBText25: TppDBText;
    ppShape24: TppShape;
    ppLabel27: TppLabel;
    ppDBText26: TppDBText;
    ppShape25: TppShape;
    ppLabel28: TppLabel;
    ppDBText27: TppDBText;
    ppShape26: TppShape;
    ppLabel29: TppLabel;
    ppDBText28: TppDBText;
    ppShape27: TppShape;
    ppLabel30: TppLabel;
    ppDBText29: TppDBText;
    ppLabel31: TppLabel;
    ppShape28: TppShape;
    ppLabel32: TppLabel;
    ppDBText30: TppDBText;
    ppShape29: TppShape;
    ppLabel33: TppLabel;
    ppDBText31: TppDBText;
    ppShape30: TppShape;
    ppLabel34: TppLabel;
    ppDBText32: TppDBText;
    ppShape31: TppShape;
    ppLabel35: TppLabel;
    ppDBText33: TppDBText;
    ppShape32: TppShape;
    ppLabel36: TppLabel;
    ppDBText34: TppDBText;
    ppShape33: TppShape;
    ppLabel37: TppLabel;
    ppDBText35: TppDBText;
    ppShape34: TppShape;
    ppLabel38: TppLabel;
    ppDBText36: TppDBText;
    ppShape35: TppShape;
    ppLabel39: TppLabel;
    ppDBText37: TppDBText;
    ppShape36: TppShape;
    ppLabel40: TppLabel;
    ppDBText38: TppDBText;
    ppShape37: TppShape;
    ppLabel41: TppLabel;
    ppDBText39: TppDBText;
    ppShape38: TppShape;
    ppLabel42: TppLabel;
    ppDBText40: TppDBText;
    ppShape39: TppShape;
    ppLabel43: TppLabel;
    ppDBText41: TppDBText;
    ppShape40: TppShape;
    ppLabel44: TppLabel;
    ppDBText42: TppDBText;
    ppShape41: TppShape;
    ppLabel45: TppLabel;
    ppDBText43: TppDBText;
    ppShape42: TppShape;
    ppLabel46: TppLabel;
    ppDBText44: TppDBText;
    ppShape43: TppShape;
    ppLabel47: TppLabel;
    ppDBText45: TppDBText;
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
    ppShape46: TppShape;
    ppLabel51: TppLabel;
    ppDBText48: TppDBText;
    ppShape49: TppShape;
    ppDBText51: TppDBText;
    ppLabel54: TppLabel;
    ppShape50: TppShape;
    ppDBText52: TppDBText;
    ppLabel55: TppLabel;
    ppShape51: TppShape;
    ppLabel56: TppLabel;
    ppDBText53: TppDBText;
    ppShape52: TppShape;
    ppLabel57: TppLabel;
    ppDBText54: TppDBText;
    rDespesas: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    pDespesas: TppDBPipeline;
    tDespesas: TMSQuery;
    dstDespesas: TDataSource;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppLabel58: TppLabel;
    ppDBText57: TppDBText;
    ppLabel60: TppLabel;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine1: TppLine;
    rHistorico: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    rHistorico1: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBText58: TppDBText;
    ppDBText60: TppDBText;
    pHistorico: TppDBPipeline;
    ppDBMemo1: TppDBMemo;
    StaticText26: TStaticText;
    cResponsavel: TRxDBLookupCombo;
    ppLabel68: TppLabel;
    ppDBText59: TppDBText;
    ppLabel69: TppLabel;
    cTipoDespesas: TRadioGroup;
    bLimpaFiltro: TSpeedButton;
    ppLabel71: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppShape53: TppShape;
    ppLabel73: TppLabel;
    ppDBText61: TppDBText;
    ppShape54: TppShape;
    ppLabel74: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    rAdicoes: TppSubReport;
    ppChildReport3: TppChildReport;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    pAdicoes: TppDBPipeline;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppLabel81: TppLabel;
    ppDBText72: TppDBText;
    ppLabel82: TppLabel;
    ppDBText73: TppDBText;
    ppLabel83: TppLabel;
    ppDBText74: TppDBText;
    ppLabel84: TppLabel;
    ppDBText75: TppDBText;
    ppLabel85: TppLabel;
    ppDBText76: TppDBText;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel86: TppLabel;
    ppTitleBand3: TppTitleBand;
    cAdicoes: TCheckBox;
    rDespesasDA: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    myDBCheckBox3: TmyDBCheckBox;
    ppSummaryBand3: TppSummaryBand;
    ppLabel93: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppLabel94: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel95: TppLabel;
    ppVariable1: TppVariable;
    ppLabel96: TppLabel;
    ppDBCalc4: TppDBCalc;
    myCheckBox2: TmyCheckBox;
    cDespesasDA: TCheckBox;
    pDespesasDA: TppDBPipeline;
    tDespesasDA: TMSQuery;
    dstDespesasDA: TDataSource;
    ppDBText81: TppDBText;
    tAdicoes: TMSQuery;
    dstAdicoes: TDataSource;
    ppLabel97: TppLabel;
    myDBCheckBox4: TmyDBCheckBox;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    ppDBMemo2: TppDBMemo;
    ppShape55: TppShape;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    tAdiantamentos: TMSQuery;
    dstAdiantamentos: TDataSource;
    pAdiantamentos: TppDBPipeline;
    lTotalAdiant: TppDBText;
    cHistorico: TCheckBox;
    ppLabel101: TppLabel;
    ppDBText82: TppDBText;
    ppLabel105: TppLabel;
    ppDBText84: TppDBText;
    ppLabel106: TppLabel;
    lPagar: TppDBText;
    tRecPag: TMSQuery;
    dstPagRec: TDataSource;
    pRecPag: TppDBPipeline;
    lRecebido: TppDBText;
    ppDBText86: TppDBText;
    ppLabel70: TppLabel;
    lPagoCli: TppVariable;
    ppLabel102: TppLabel;
    lDevCli: TppVariable;
    ppLabel103: TppLabel;
    lSaldoProc: TppVariable;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rDadosProcessoBeforePrint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cResponsavelChange(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure bLimpaFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;     
  end;

var
  Impressao_ProcessosOP_Dados: TImpressao_ProcessosOP_Dados;

implementation

uses frmDados;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Dados.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_ProcessosOP_Dados.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Dados.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, nil, nil, nil);
     LimpaMemoria;
     Impressao_ProcessosOP_Dados.Release;
     Impressao_ProcessosOP_Dados := nil;
end;

procedure TImpressao_ProcessosOP_Dados.FormShow(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios ORDER BY Nome');
           Usuarios.Open;

           tProcessos.SQL.Clear;
           tProcessos.SQL.Add('SELECT ProcessosDocumentos.*, Cybersoft_Cadastros.dbo.INCOTERMS.Descricao AS INCOTERMS_Descricao,');
           tProcessos.SQL.Add('       Incentivo_Fiscal AS Beneficio,');
           tProcessos.SQL.Add('       CASE');
           tProcessos.SQL.Add('           WHEN ICMS_Diferido = 1 THEN ''DIFERIDO'' ' );
           tProcessos.SQL.Add('       END AS Diferido, ');
           tProcessos.SQL.Add('       CASE');
           tProcessos.SQL.Add('           WHEN Canal_SISCOMEX = ''VM'' THEN ''VERMELHO'' ' );
           tProcessos.SQL.Add('           WHEN Canal_SISCOMEX = ''VD'' THEN ''VERDE''    ' );
           tProcessos.SQL.Add('           WHEN Canal_SISCOMEX = ''AM'' THEN ''AMARELO''  ' );
           tProcessos.SQL.Add('           WHEN Canal_SISCOMEX = ''VM'' THEN ''CINZA''    ' );
           tProcessos.SQL.Add('       END AS Canal ');
           tProcessos.SQL.Add('FROM ProcessosDocumentos, Cybersoft_Cadastros.dbo.INCOTERMS' );
           tProcessos.SQL.Add('WHERE (ProcessosDocumentos.INCOTERMS = Cybersoft_Cadastros.dbo.INCOTERMS.Codigo)');
           tProcessos.SQL.Add('ORDER BY Tipo, Processo');
           tProcessos.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Dados.rDadosProcessoBeforePrint(Sender: TObject);
begin
      lTitulo.Caption    := 'Dados do Processo de ' + Trim(tProcessos.FieldByName('Tipo').AsString);
      rHistorico.Visible := not cHistorico.Checked;
end;

procedure TImpressao_ProcessosOP_Dados.bImprimirClick(Sender: TObject);
begin
      With Dados do begin
           Configuracao.Open;
           with tProcessos do begin
                sql.clear;
                sql.add('select ProcessosDocumentos.*,');
                sql.add('       (select Descricao from Cybersoft_Cadastros.dbo.LocalDesembaraco where(Codigo = ProcessosDocumentos.Local_DesembaracoCodigo)) as Local_Desembaraco,');
                sql.add('       (select Descricao from Cybersoft_Cadastros.dbo.INCOTERMS where(Codigo = ProcessosDocumentos.INCOTERMS)) as INCOTERMS_Descricao,');
                sql.add('       (select Nome      from Cybersoft_Cadastros.dbo.Moedas where(Codigo = ProcessosDocumentos.Moeda_FOB))    as NomeMoedaFOB,');
                sql.add('       (select Nome      from Cybersoft_Cadastros.dbo.Moedas where(Codigo = ProcessosDocumentos.Moeda_Frete))  as NomeMoedaFrete,');
                sql.add('       (select Nome      from Cybersoft_Cadastros.dbo.Moedas where(Codigo = ProcessosDocumentos.Moeda_Seguro)) as NomeMoedaSeguro,');
                sql.add('       (select Nome      from Clientes where(Codigo = ProcessosDocumentos.Cliente)) as Cliente_Nome,');
                sql.add('       (select Descricao from TiposProcesso where(Codigo = ProcessosDocumentos.Modalidade_Importacao)) as Modalidade_Nome,');
                sql.add('       (select Descricao from Cybersoft_Cadastros.dbo.TipoItem where(Codigo = ProcessosDocumentos.Tipo_Mercadoria)) as Tipo_MercadoriaNome,');
                sql.add('       (select Descricao from Cybersoft_Cadastros.dbo.INCOTERMS where (Codigo = ProcessosDocumentos.INCOTERMS)) as INCOTERMS_Nome,');
                sql.add('       Incentivo_Fiscal as Beneficio,');
                sql.add('       case ');
                sql.add('           when ICMS_Diferido = 1 then ''DIFERIDO'' ');
                sql.add('       end as Diferido, ');
                sql.add('       case ');
                sql.add('           when Canal_SISCOMEX = ''VM'' then ''VERMELHO'' ');
                sql.add('           when Canal_SISCOMEX = ''VD'' then ''VERDE'' ');
                sql.add('           when Canal_SISCOMEX = ''AM'' then ''AMARELO'' ');
                sql.add('           when Canal_SISCOMEX = ''VM'' then ''CINZA'' ');
                sql.add('       end as Canal ');
                sql.add('from   ProcessosDocumentos ');
                sql.add('where  (Processo = :pProcesso)');
                parambyName('pProcesso').AsString := ProcessosDOC.FieldByName('Processo').AsString;
                //sql.SaveToFile('c:\temp\Dados do processo.sql');
                open;
           end;
           // Despesas do processo.
           with tDespesas do begin
                sql.Clear;
                sql.Add('select Data_Vencimento,');
                If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                   sql.Add('       (select Descricao from ClassificacaoFinanceira where(Codigo = Classificacao)) as Descricao,');
                end else begin
                   sql.Add('       (select Descricao from Cybersoft_Cadastros.dbo.ClassificacaoFinanceira where(Codigo = Classificacao)) as Descricao,');
                End;

                sql.Add('       Custo_Entrada,');
                sql.Add('       CustoConta as Custo_Saida,');
                If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                   //sql.Add('       case when Tipo = ''R'' and (select Devolucao from ClassificacaoFinanceira where Codigo = Classificacao) = 1 then Valor_Total else 0 end as Valor_Recebimento,');
                   sql.Add('       case when Tipo = ''R'' then Valor_Total else 0 end as Valor_Recebimento,');
                   //sql.Add('       case when Tipo = ''P'' OR (TIpo = ''R'' and (select Adiantamento from ClassificacaoFinanceira where Codigo = Classificacao) <> 1) THEN');
                   //sql.Add('            Valor_Total');
                   //sql.Add('       ELSE');
                   //sql.Add('            0');
                   //sql.Add('       end as Valor_Pagamento,');
                   sql.Add('       case when Tipo = ''P'' THEN Valor_Total ELSE 0 end as Valor_Pagamento,');
                   sql.Add('       case when Tipo = ''R'' then (select ISNULL(SUM(Valor), 0) from PagarReceberBaixas PRB where PRB.Numero = PR.Numero) else 0 end as Valor_RecebimentoFe,');
                   sql.Add('       case when (Custo_Entrada = 1) and (Tipo = ''P'') then Valor_Total else 0 end as Valor_CustoEntrada,');
                   sql.Add('       case when (CustoConta    = 1) and (Tipo = ''P'') then Valor_Total else 0 end as Valor_CustoSaida,');
                   sql.Add('       case when Tipo = ''R'' and (select Adiantamento from ClassificacaoFinanceira where Codigo = Classificacao) = 1 then Valor_Total else 0 end as Valor_Adiantamento');
                end else begin
                   //sql.Add('       case when Tipo = ''R'' and (select Adiantamento from ClassificacaoFinanceira where Codigo = Classificacao) <> 1 then Valor_Total else 0 end as Valor_Recebimento,');
                   sql.Add('       case when Tipo = ''R'' then Valor_Total else 0 end as Valor_Recebimento,');
                   sql.Add('       case when Tipo = ''R'' then (select (Valor_Total+ISNULL(Desconto, 0)) from PagarReceberBaixas PRB where PRB.Numero = PR.Numero) else 0 end as Valor_RecebimentoFe,');
                   //sql.Add('       case when Tipo = ''P'' OR (TIpo = ''R'' and (select Adiantamento from ClassificacaoFinanceira where Codigo = Classificacao) <> 1) THEN');
                   //sql.Add('            Valor_Total');
                   //sql.Add('       ELSE');
                   //sql.Add('            0');
                   //sql.Add('       end as Valor_Pagamento,');
                   sql.Add('       case when Tipo = ''P'' THEN Valor_Total ELSE 0 end as Valor_Pagamento,');
                   sql.Add('       case when (Custo_Entrada = 1) and (Tipo = ''P'') then Valor_Total+ISNULL(Desconto,0) else 0 end as Valor_CustoEntrada,');
                   sql.Add('       case when (CustoConta    = 1) and (Tipo = ''P'') then Valor_Total+ISNULL(Desconto,0) else 0 end as Valor_CustoSaida,');
                   sql.Add('       case when Tipo = ''R'' and (select Adiantamento from ClassificacaoFinanceira where Codigo = Classificacao) = 1 then Valor_Total+ISNULL(Desconto,0) else 0 end as Valor_Adiantamento');
                End;
                sql.Add('from   PagarReceber PR');
                sql.Add('where Processo = :pProcesso');
                sql.Add('AND ISNULL(Pago_Cliente, 0) = 0');
                If cTipoDespesas.ItemIndex = 1 then begin
                   sql.Add('AND (CustoConta = 1 OR Custo_Entrada = 1)');
                End;
                sql.Add('ORDER  BY Data_Vencimento');
                ParamByName('pProcesso').AsString := ProcessosDOC.FieldByName('Processo').AsString;
                //sql.SaveToFile('c:\temp\Dados do processo_Despesas.sql');
                Open;
           end;
           // Adiantamentos do processo.
           with tAdiantamentos do begin
                sql.Clear;
                sql.Add('select Valor_Total = ISNULL(Valor_Total, 0)');
                sql.Add('      ,Valor_Baixa = ISNULL((select ISNULL(SUM(Valor), 0) from PagarReceberBaixas PRB where  PRB.Numero = PR.Numero), 0)');
                sql.Add('      ,Valor_Saldo = ISNULL(Valor_Total - (select ISNULL(SUM(Valor), 0) from PagarReceberBaixas PRB where  PRB.Numero = PR.Numero), 0)');
                sql.Add('INTO   #TEMP');
                sql.Add('from   PagarReceber PR');
                sql.Add('where  (select Adiantamento from ClassificacaoFinanceira where Codigo = Classificacao) = 1');
                sql.Add('AND    Processo = :pProcesso');
                sql.Add('AND    Tipo = ''R'' ');
                sql.Add('select Valor_AdiantAb = SUM(Valor_Total)');
                sql.Add('      ,Valor_AdiantFe = SUM(Valor_Baixa)');
                sql.Add('      ,Valor_AdiantSa = SUM(Valor_Saldo)');
                sql.Add('from #TEMP');
                sql.Add('DROP TABLE #TEMP');
                ParamByName('pProcesso').AsString := ProcessosDOC.FieldByName('Processo').AsString;
                //sql.SaveToFile('c:\temp\Dados_processo_Adiantamentos.sql');
                Open;
           end;
           with tRecPag do begin
                sql.clear;
//                sql.add('select Recebido = case when Tipo = ''R'' THEN');
//                sql.add('                       ISNULL((select SUM(Valor) from PagarReceberBaixas PRB where PRB.Numero = PR.Numero and (select Devolucao from ClassificacaoFinanceira where Codigo = Classificacao) = 1 and PR.Tipo = ''R''), 0)');
//                sql.add('                  ELSE');
//                sql.add('                       0');
//                sql.add('                  END');
                sql.add('select Recebido = case when Tipo = ''R'' THEN');
                sql.add('                       ISNULL((select SUM(Valor) from PagarReceberBaixas PRB where PRB.Numero = PR.Numero and PR.Tipo = ''R''), 0)');
                sql.add('                  ELSE');
                sql.add('                       0');
                sql.add('                  END');
                sql.add('      ,Receber  = case when Tipo = ''R'' and (select Adiantamento from ClassificacaoFinanceira where Codigo = Classificacao) <> 1 THEN');
                sql.add('                       ISNULL(Valor_Total, 0) - ISNULL((select SUM(ISNULL(Valor, 0)) from PagarReceberBaixas PRB where PRB.Numero = PR.Numero and PR.Tipo = ''R''), 0)');
                sql.add('                  ELSE');
                sql.add('                       0');
                sql.add('                  END');
                sql.add('      ,Pago     = case when Tipo = ''P'' THEN');
                sql.add('                       ISNULL((select SUM(Valor) from PagarReceberBaixas PRB where PRB.Numero = PR.Numero and Tipo = ''P''), 0)');
                sql.add('                  ELSE');
                sql.add('                       0');
                sql.add('                  end +');
                sql.add('                  case when Tipo = ''R'' and (select ISNULL(Adiantamento, 0) from ClassificacaoFinanceira where Codigo = Classificacao) <> 1 and (select ISNULL(Boleto, 0) from ClassificacaoFinanceira where Codigo = Classificacao) <> 1 THEN');
                sql.add('                       Valor_Operacao');
                sql.add('                  ELSE');
                sql.add('                       0');
                sql.add('                  END');
                sql.add('      ,Pagar    = case when Tipo = ''P'' THEN');
                sql.add('                       ISNULL(Valor_Total, 0) - ISNULL((select SUM(ISNULL(Valor, 0)) from PagarReceberBaixas PRB where PRB.Numero = PR.Numero and Tipo = ''P''), 0)');
                sql.add('                  ELSE');
                sql.add('                       0');
                sql.add('                  END');
                sql.add('INTO  #TEMP');
                sql.add('from  PagarReceber PR');
                sql.add('where Processo = :pProcesso');
                sql.add('AND   (select Adiantamento from ClassificacaoFinanceira where Codigo = Classificacao) <> 1');
                sql.add('AND   ISNULL(Pago_Cliente, 0) = 0');
                sql.add('select Recebido = ISNULL(SUM(Recebido), 0)');
                sql.add('      ,Receber  = ISNULL(SUM(Receber), 0)');
                sql.add('      ,Pago     = ISNULL(SUM(Pago), 0)');
                sql.add('      ,Pagar    = ISNULL(SUM(Pagar), 0)');
                sql.add('from #TEMP');
                sql.add('DROP TABLE #TEMP');
                ParamByName('pProcesso').AsString := ProcessosDOC.FieldByName('Processo').AsString;
                //sql.SaveToFile('c:\temp\Dados_DI_Recebimento_Pagamento.sql');
                open;
           end;
           // Despesas do processo mestre quando DA.
           with tDespesasDA do begin
                sql.Clear;
                sql.Add('select Data_Vencimento,');
                If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                   sql.Add('       (select Descricao from ClassificacaoFinanceira where(Codigo = Classificacao)) as Descricao,');
                end else begin
                   sql.Add('       (select Descricao from Cybersoft_Cadastros.dbo.ClassificacaoFinanceira where(Codigo = Classificacao)) as Descricao,');
                End;

                sql.Add('       CustoConta,');
                If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                   sql.Add('       case when Tipo = ''R'' then Valor_Total else 0 end as Valor_Recebimento,');
                   sql.Add('       case when Tipo = ''P'' then Valor_Total else 0 end as Valor_Pagamento,');
                   sql.Add('       case when (CustoConta = 1) and (Tipo = ''P'') then Valor_Total else 0 end as Valor_Custo');
                end else begin
                   sql.Add('       case when Tipo = ''R'' then (Valor_Total+ISNULL(Desconto, 0)) else 0 end as Valor_Recebimento,');
                   sql.Add('       case when Tipo = ''P'' then (Valor_Total+ISNULL(Desconto, 0)) else 0 end as Valor_Pagamento,');
                   sql.Add('       case when (CustoConta = 1) and (Tipo = ''P'') then Valor_Total+ISNULL(Desconto,0) else 0 end as Valor_Custo');
                End;
                sql.Add('from   PagarReceber');
                sql.Add('where(Processo = :pProcesso) and (Processo <> '''')');
                If cTipoDespesas.ItemIndex = 1 then begin
                   sql.Add('AND (CustoConta = 1)');
                End;
                sql.Add('ORDER  BY Data_Vencimento');
                ParamByName('pProcesso').AsString := ProcessosDOC.FieldByName('Processo_Mestre').AsString;
                //sql.SaveToFile('c:\temp\Dados do processo_DespesasDA.sql');
                Open;
           end;
           with ProcessosHistorico do begin
                sql.Clear;
                sql.Add('select * from ProcessosHistorico where (Processo = :pProcesso) ORDER BY Data, Hora DESC');
                ParamByName('pProcesso').AsString := ProcessosDOC.FieldByName('Processo').AsString;
                Open;
           end;
           with tAdicoes do begin
                sql.Clear;
                sql.Add('select Adicao,');
                sql.Add('       Codigo_Mercadoria,');
                sql.Add('       Descricao_Mercadoria = (select Descricao from Produtos where Codigo = Codigo_Mercadoria),');
                sql.Add('       NCM,');
                sql.Add('       Quantidade,');
                sql.Add('       Valor_Unitario,');
                sql.Add('       Valor_SemAdValorem,');
                sql.Add('       Peso_Liquido,');
                sql.Add('       Aliquota_ICMS,');
                sql.Add('       Valor_PIS,');
                sql.Add('       Valor_COFINS,');
                sql.Add('       Dumping');
                sql.Add('from   Adicoes');
                sql.Add('where  DI = :pDI');
                ParamByName('pDI').AsString := ProcessosDOC.FieldByName('Numero_Declaracao').AsString;
                Open;
           end;
        End;

        rDespesas.Visible   := cTipoDespesas.ItemIndex <> 2;
        rDespesasDA.Visible := cDespesasDA.Checked;
        rAdicoes.Visible    := cAdicoes.Checked;

        if FileExists(Dados.EmpresasLogo.Value) then begin
           iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        end;
        rDadosProcesso.Print;
        rDadosProcesso.Reset;
end;

procedure TImpressao_ProcessosOP_Dados.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa de processos', 'Processos / DI / BL',mPesquisa);
      With Dados do begin
           If ProcessosDOC.Locate('Processo', mPesquisa, [loPartialKey]) = False then begin
              If ProcessosDOC.Locate('Numero_Declaracao', mPesquisa, [loCaseInsensitive]) = False then begin
                 If ProcessosDOC.Locate('Numero_DOC', mPesquisa, [loCaseInsensitive]) = False then begin
                    ShowMessage('Nenhum "Processo, DI ou BL" encontrados com este número!');
                 End;
              End;
           End;
      End;
end;

procedure TImpressao_ProcessosOP_Dados.cResponsavelChange(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.sql.Clear;
           ProcessosDOC.sql.Add('select * from ProcessosDocumentos');
           ProcessosDOC.sql.Add('where  (Responsavel = :pResponsavel)');
           ProcessosDOC.sql.Add('ORDER BY Processo');
           ProcessosDOC.ParamByName('pResponsavel').ASString := UsuariosMatricula.AsString;
           ProcessosDOC.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Dados.ppSummaryBand1BeforePrint(Sender: TObject);
begin
      lPagoCli.Value   := tAdiantamentos.fieldbyname('Valor_AdiantAb').AsCurrency + tRecPag.fieldbyname('Recebido').AsCurrency;
      lDevCli.Value    := tRecPag.fieldbyname('Receber').AsCurrency + tRecPag.fieldbyname('Pago').AsCurrency + tRecPag.fieldbyname('Pagar').AsCurrency; 
      lSaldoProc.Value := lPagoCli.Value - lDevCli.Value;
end;

procedure TImpressao_ProcessosOP_Dados.bLimpaFiltroClick(Sender: TObject);
begin
      cResponsavel.KeyValue := -1;
      With Dados do begin
           ProcessosDOC.sql.Clear;
           ProcessosDOC.sql.Add('select * from ProcessosDocumentos');
           ProcessosDOC.sql.Add('ORDER BY Processo');
           ProcessosDOC.Open;
      End;
end;


end.
