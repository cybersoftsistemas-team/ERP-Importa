unit frmImpressao_FiscaisOP_RCPE_P3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXSpin, Vcl.StdCtrls, DateUtils,
  Mask, Vcl.ExtCtrls, RXCtrls, INIFiles, Funcoes, MaskUtils, Buttons, DBCtrls, ppProd, ppClass, ppReport, ppCtrls,
  ppBands, ppDBPipe, ppVar, ppParameter, ppDesignLayer, RxToolEdit, ppPrnabl, ppCache, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_FiscaisOP_RCPE_P3 = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cImpressora: TRadioGroup;
    StaticText5: TStaticText;
    cNCM: TMaskEdit;
    StaticText6: TStaticText;
    tItens: TMSQuery;
    tSaldo: TMSQuery;
    cProduto: TDBLookUpComboBox;
    bLimparForma: TSpeedButton;
    dstItens: TDataSource;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText3: TStaticText;
    cPaginaIni: TRxSpinEdit;
    pEmpresas: TppDBPipeline;
    StaticText4: TStaticText;
    cQtdePag: TRxSpinEdit;
    cContinua: TCheckBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    cCodigoProduto: TEdit;
    pItens: TppDBPipeline;
    rEstoque: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    gProduto: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    gData: TppGroupFooterBand;
    ppLabel2: TppLabel;
    lSaldoAnterior: TppVariable;
    ppLine11: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    lTotalEntD: TppDBCalc;
    lTotalSaiD: TppDBCalc;
    lSaldoAtual2: TppVariable;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine12: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    lPeriodo: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine13: TppLine;
    ppLabel20: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine16: TppLine;
    ppLabel25: TppLabel;
    ppLine17: TppLine;
    ppLabel26: TppLabel;
    ppLine18: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel29: TppLabel;
    ppLine21: TppLine;
    ppLabel30: TppLabel;
    ppLine22: TppLine;
    ppLabel31: TppLabel;
    ppLine23: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine32: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    lPagina: TppVariable;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBText16: TppDBText;
    ppLine30: TppLine;
    ppDBText17: TppDBText;
    ppLine31: TppLine;
    ppLabel41: TppLabel;
    ppLine33: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine7: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    lMovimento: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ModeloP3;
    procedure cNCMChange(Sender: TObject);
    procedure cProdutoClick(Sender: TObject); 
    procedure bLimparFormaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cCodigoProdutoChange(Sender: TObject);
    procedure rEstoqueBeforePrint(Sender: TObject);
    procedure rEstoqueAfterPrint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppGroupHeaderBand1BeforeGenerate(Sender: TObject);
    procedure lSaldoAtual2Calc(Sender: TObject; var Value: Variant);
    procedure ppHeaderBand1BeforeGenerate(Sender: TObject);
  private
    { Private declarations }
  public
   { Public declarations }
   mLinha        : Integer;
   mPagina       : Integer;
   Arquivo       : TextFile;
   mNomeArq      : String;
   mImprimir     : Boolean;
   mProduto      : Integer;
   mData         : TDateTime;
   mDia          : Integer;
   mMes          : Integer;
   mSubE_QtdeD   : Real;
   mSubE_ValorD  : Currency;
   mSubE_IPID    : Currency;
   mSubE_EstoqueD: Real;
   mSubS_QtdeD   : Real;
   mSubS_ValorD  : Currency;
   mSubS_IPID    : Currency;
   mSubS_EstoqueD: Real;
   mSubE_QtdeM   : Real;
   mSubE_ValorM  : Currency;
   mSubE_IPIM    : Currency;
   mSubE_EstoqueM: Real;
   mSubS_QtdeM   : Real;
   mSubS_ValorM  : Currency;
   mSubS_IPIM    : Currency;
   mSubS_EstoqueM: Real;
   mSubE_QtdeG   : Real;
   mSubE_ValorG  : Currency;
   mSubE_IPIG    : Currency;
   mSubE_EstoqueG: Real;
   mSubS_QtdeG   : Real;
   mSubS_ValorG  : Currency;
   mSubS_IPIG    : Currency;
   mSubS_EstoqueG: Real;
   mSaldo_Qtde   : Real;
   mSaldo_Valor  : Currency;
   mSaldo_IPI    : Currency;
   mSaldo_Estoque: Real;
   mTipo         : array[0..1] of String;
   mDataIni      : TDate;
   mLetra        : Integer;
   mPaginas      : array[1..30000] of Integer;
  end;

var
  Impressao_FiscaisOP_RCPE_P3: TImpressao_FiscaisOP_RCPE_P3;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmImpressao_Visualizar,
  frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FiscaisOP_RCPE_P3.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FiscaisOP_RCPE_P3.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      Dados.Produtos.SQL.Clear;
      Dados.Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
      Dados.Produtos.Open;
      
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cImpressora.ItemIndex := aINI.ReadInteger('IMPRESSAO_RCPE','Impressora'   , 1 );
      cDataIni.Date         := aINI.ReadDate   ('IMPRESSAO_RCPE','DataIni'      , Date);
      cDataFim.Date         := aINI.ReadDate   ('IMPRESSAO_RCPE','DataFim'      , Date);
      cNCM.Text             := aINI.ReadString ('IMPRESSAO_RCPE','NCM'          , '');
      cCodigoProduto.Text   := aINI.ReadString ('IMPRESSAO_RCPE','CodigoProduto', '');
      cPaginaIni.Value      := aINI.ReadInteger('IMPRESSAO_RCPE','PaginaIni'    , 0);
      cQtdePag.Value        := aINI.ReadInteger('IMPRESSAO_RCPE','QtdePaginas'  , 500);
      cContinua.Checked     := aINI.ReadBool   ('IMPRESSAO_RCPE','Continua'     , false);
      aINI.Free;

      Dados.Produtos.Locate('Codigo', cCodigoProduto.Text, [loCaseInsensitive]);
end;
procedure TImpressao_FiscaisOP_RCPE_P3.bImprimirClick(Sender: TObject);
Var
    i: Integer;
    p: Integer;
begin
      p := cPaginaIni.AsInteger;
      For i := 1 to Length(mPaginas) do begin
          mPaginas[i] := p;
          Inc(p);
          If not cContinua.Checked then begin
             If p = cQtdePag.Value then p := 2;
          end else begin
             If p = cQtdePag.Value then Inc(p, 2);
          End;
      End;

      If cDataIni.Date > cDataFim.Date then begin
         ShowMessage('Data Inicial não pode maior que a data final.');
         Abort;
      End;
      If (cDataIni.Text = '  /  /    ') or (cDataFim.Text = '  /  /    ') then begin
         ShowMessage('Data invalida.');
         Abort;
      End;

      Screen.Cursor := crSQLWait;
      With dmFiscal, Dados do begin
           // Selecionando o periodo para impressão.
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Data,');
           tItens.SQL.Add('       Nota,');
           tItens.SQL.Add('       DAY(Data) as Dia,');
           tItens.SQL.Add('       MONTH(Data) as Mes,');
           tItens.SQL.Add('       Codigo_Mercadoria,');
           tItens.SQL.Add('       Quantidade,');
           tItens.SQL.Add('       Saldo_Anterior = 0,');
           tItens.SQL.Add('       Quantidade_Entrada  = CASE WHEN NotasItens.Saida_Entrada = 0 then Quantidade ELSE 0 END,');
           tItens.SQL.Add('       Quantidade_Saida    = CASE WHEN NotasItens.Saida_Entrada = 1 then Quantidade ELSE 0 END,');
           tItens.SQL.Add('       Quantidade_Rel      = CASE WHEN NotasItens.Saida_Entrada = 0 then Quantidade ELSE Quantidade * -1 END,');
           tItens.SQL.Add('       Saldo_Atual    = 0,');
           tItens.SQL.Add('       Valor_Total,');
           tItens.SQL.Add('       Valor_TotalEnt = CASE WHEN NotasItens.Saida_Entrada = 0 then Valor_Total ELSE 0 END,');
           tItens.SQL.Add('       Valor_TotalSai = CASE WHEN NotasItens.Saida_Entrada = 1 then Valor_Total ELSE 0 END,');
           tItens.SQL.Add('       Total_IPI,');
           tItens.SQL.Add('       Total_IPIEnt = CASE WHEN NotasItens.Saida_Entrada = 0 then Total_IPI ELSE 0 END,');
           tItens.SQL.Add('       Total_IPISai = CASE WHEN NotasItens.Saida_Entrada = 1 then Total_IPI ELSE 0 END,');
           tItens.SQL.Add('       NotasItens.Saida_Entrada,');
           tItens.SQL.Add('       NotasItens.NCM,');
           tItens.SQL.Add('       Descricao_Reduzida = (SELECT Descricao_Reduzida FROM Produtos WHERE Codigo = Codigo_Mercadoria),');
           tItens.SQL.Add('       Unidade_Medida,');
           tItens.SQL.Add('       ''NF'' AS Especie,');
           tItens.SQL.Add('       Serie = (SELECT Serie FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data AND NF.Saida_Entrada = NotasItens.Saida_Entrada),');
           tItens.SQL.Add('       Natureza_Codigo = (SELECT Natureza_Codigo FROM NotasFiscais NF WHERE NF.Numero = Nota AND NF.Data_Emissao = Data AND NF.Saida_Entrada = NotasItens.Saida_Entrada),');
           tItens.SQL.Add('       CASE WHEN NotasItens.Saida_Entrada = 0 then ''E'' ELSE ''S'' END AS ES');
           tItens.SQL.Add('INTO   #TEMP');
           tItens.SQL.Add('FROM   NotasItens' );
           tItens.SQL.Add('WHERE (NotasItens.Data BETWEEN :pDataIni AND :pDataFim)');
           tItens.SQL.Add('  AND (NotasItens.Cancelada <> 1)');
           tItens.SQL.Add('  AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)');
           tItens.SQL.Add('  AND (NotasItens.Movimenta_Estoque = 1)');
           If trim(cNCM.Text) <> '' then begin
              tItens.SQL.Add(' AND (NotasItens.NCM = :pNCM)' );
           end;
           If trim(cCodigoProduto.Text) <> '' then begin
              tItens.SQL.Add(' AND (Notasitens.Codigo_Mercadoria = :pProduto)' );
           end;
           tItens.SQL.Add('UNION ALL' );
           tItens.SQL.Add('SELECT NotasTerceirosItens.Data_Entrada,');
           tItens.SQL.Add('       NotasTerceirosItens.Nota,');
           tItens.SQL.Add('       DAY(NotasTerceirosItens.Data_Entrada),');
           tItens.SQL.Add('       MONTH(NotasTerceirosItens.Data_Entrada),');
           tItens.SQL.Add('       Codigo_Mercadoria,');
           tItens.SQL.Add('       NotasTerceirosItens.Quantidade,');
           tItens.SQL.Add('       Saldo_Anterior = 0,');
           tItens.SQL.Add('       Quantidade_Entrada = Quantidade,');
           tItens.SQL.Add('       Quantidade_Saida   = 0,');
           tItens.SQL.Add('       Quantidade_Rel = Quantidade,');
           tItens.SQL.Add('       Saldo_Atual = 0,');
           tItens.SQL.Add('       Valor_Liquido,');
           tItens.SQL.Add('       Valor_TotalEnt = Valor_Liquido,');
           tItens.SQL.Add('       Valor_TotalSai = 0,');
           tItens.SQL.Add('       Total_IPI = Valor_IPI,');
           tItens.SQL.Add('       Total_IPIEnt = Valor_IPI,');
           tItens.SQL.Add('       Total_IPISai = 0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       NotasTerceirosItens.NCM,');
           tItens.SQL.Add('       Descricao_Reduzida = (SELECT Descricao_Reduzida FROM Produtos WHERE Codigo = Codigo_Mercadoria),');
           tItens.SQL.Add('       Unidade_Medida,');
           tItens.SQL.Add('       Especie = LTRIM(RTRIM((SELECT Tipo FROM NotasTerceiros NF WHERE NF.Nota = NotasTerceirosItens.Nota AND NF.Data_Emissao = NotasTerceirosItens.Data_Emissao AND NF.Fornecedor = NotasTerceirosItens.Fornecedor');
           tItens.SQL.Add('                 AND NF.Provisoria <> 1 AND NF.Desdobramento <> 1))),');
           tItens.SQL.Add('       Serie   = (SELECT Serie FROM NotasTerceiros NF WHERE NF.Nota = NotasTerceirosItens.Nota AND NF.Data_Emissao = NotasTerceirosItens.Data_Emissao AND NF.Fornecedor = NotasTerceirosItens.Fornecedor  AND NF.Provisoria <> 1 AND NF.Desdobramento <> 1),');
           tItens.SQL.Add('       Natureza_Codigo,');
           tItens.SQL.Add('       ES = ''E'' ');
           tItens.SQL.Add('FROM   NotasTerceirosItens' );
           tItens.SQL.Add('WHERE  (NotasTerceirosItens.Data_Entrada BETWEEN :pDataIni AND :pDataFim)');
           tItens.SQL.Add('  AND  (NotasTerceirosItens.Movimenta_Estoque = 1)');
           If trim(cNCM.Text) <> '' then begin
              tItens.SQL.Add('  AND (NotasTerceirosItens.NCM = :pNCM)' );
           end;
           If trim(cCodigoProduto.Text) <> '' then begin
              tItens.SQL.Add('  AND (NotasTerceirosItens.Codigo_Mercadoria = :pProduto)' );
           end;
           tItens.SQL.Add('UNION ALL' );
           tItens.SQL.Add('SELECT PT.Data_Transferencia,');
           tItens.SQL.Add('       PT.Nota,');
           tItens.SQL.Add('       DAY(PT.Data_Transferencia),');
           tItens.SQL.Add('       MONTH(PT.Data_Transferencia),');
           tItens.SQL.Add('       PT.Produto_Entrada,');
           tItens.SQL.Add('       PT.Quantidade_Entrada,');
           tItens.SQL.Add('       Saldo_Anterior = 0,');
           tItens.SQL.Add('       Quantidade_Entrada = Quantidade_Entrada,');
           tItens.SQL.Add('       Quantidade_Saida   = 0,');
           tItens.SQL.Add('       Quantidade_Rel = Quantidade_Entrada,');
           tItens.SQL.Add('       Saldo_Atual = 0,');
           tItens.SQL.Add('       PT.Valor_Unitario * Quantidade,');
           tItens.SQL.Add('       Valor_TotalEnt = PT.Valor_Unitario * Quantidade,');
           tItens.SQL.Add('       Valor_TotalSai = 0,');
           tItens.SQL.Add('       Total_IPI = 0,');
           tItens.SQL.Add('       Total_IPIEnt = 0,');
           tItens.SQL.Add('       Total_IPISai = 0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       NCM = (SELECT NCM FROM Produtos WHERE Codigo = PT.Produto_Entrada),');
           tItens.SQL.Add('       Descricao_Reduzida = (SELECT Descricao_Reduzida FROM Produtos WHERE Codigo = PT.Produto_Entrada),');
           tItens.SQL.Add('       Unidade_Medida = (SELECT Unidade FROM Produtos WHERE Codigo = PT.Produto_Entrada),');
           tItens.SQL.Add('       Especie = ''TR'',');
           tItens.SQL.Add('       Serie = '''',');
           tItens.SQL.Add('       PT.CFOP,');
           tItens.SQL.Add('       ES = ''E'' ');
           tItens.SQL.Add('FROM   ProdutosTransferencia PT');
           tItens.SQL.Add('WHERE (PT.Data_Transferencia BETWEEN :pDataIni AND :pDataFim)');
           tItens.SQL.Add('  AND ISNULL(Produto_Entrada, '''') <> '''' ');
           tItens.SQL.Add('  AND (PT.Estoque = 1)');
           if trim(cCodigoProduto.Text) <> '' then begin
              tItens.SQL.Add(' AND (PT.Produto_Entrada = :pProduto)' );
           end;
           if trim(cNCM.Text) <> '' then begin
              tItens.SQL.Add(' AND (SELECT NCM FROM Produtos WHERE Codigo = PT.Produto_Entrada) = :pNCM' );
           end;

           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add('SELECT PT.Data_Transferencia,');
           tItens.SQL.Add('       PT.Nota,');
           tItens.SQL.Add('       DAY(PT.Data_Transferencia),');
           tItens.SQL.Add('       MONTH(PT.Data_Transferencia),');
           tItens.SQL.Add('       PT.Produto_Saida,');
           tItens.SQL.Add('       PT.Quantidade,');
           tItens.SQL.Add('       Saldo_Anterior = 0,');
           tItens.SQL.Add('       Quantidade_Entrada = 0,');
           tItens.SQL.Add('       Quantidade_Saida   = Quantidade,');
           tItens.SQL.Add('       Quantidade_Rel = Quantidade_Entrada * -1,');
           tItens.SQL.Add('       Saldo_Atual = 0,');
           tItens.SQL.Add('       PT.Valor_Unitario * Quantidade,');
           tItens.SQL.Add('       Valor_TotalEnt = 0,');
           tItens.SQL.Add('       Valor_TotalSai = PT.Valor_Unitario * Quantidade,');
           tItens.SQL.Add('       Total_IPI = 0,');
           tItens.SQL.Add('       Total_IPIEnt = 0,');
           tItens.SQL.Add('       Total_IPISai = 0,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       NCM = (SELECT NCM FROM Produtos WHERE Codigo = PT.Produto_Saida),');
           tItens.SQL.Add('       Descricao_Reduzida = (SELECT Descricao_Reduzida FROM Produtos WHERE Codigo = PT.Produto_Saida),');
           tItens.SQL.Add('       Unidade_Medida = (SELECT Unidade FROM Produtos WHERE Codigo = PT.Produto_Saida),');
           tItens.SQL.Add('       Especie = ''TR'',');
           tItens.SQL.Add('       Serie = '''',');
           tItens.SQL.Add('       PT.CFOP,');
           tItens.SQL.Add('       ES = ''S'' ');
           tItens.SQL.Add('FROM   ProdutosTransferencia PT');
           tItens.SQL.Add('WHERE (PT.Data_Transferencia BETWEEN :pDataIni AND :pDataFim)');
           tItens.SQL.Add('  AND ISNULL(Produto_Saida, '''') <> '''' ');
           tItens.SQL.Add('  AND (PT.Estoque = 1)');
           if trim(cCodigoProduto.Text) <> '' then begin
              tItens.SQL.Add(' AND (PT.Produto_Saida = :pProduto)' );
           end;
           if trim(cNCM.Text) <> '' then begin
              tItens.SQL.Add(' AND (SELECT NCM FROM Produtos WHERE Codigo = PT.Produto_Saida) = :pNCM' );
           end;

           tItens.SQL.Add('SELECT ROW_NUMBER() OVER(ORDER BY Codigo_Mercadoria, Data) AS Linha,');
           tItens.SQL.Add('       *');
           tItens.SQL.Add('INTO #TEMP2');
           tItens.SQL.Add('FROM #TEMP');
           tItens.SQL.Add('UPDATE #TEMP2 SET Saldo_Anterior = (SELECT ISNULL(SUM(Quantidade), 0)         FROM NotasItens NI            WHERE NI.Data < :pDataIni AND NI.Codigo_Mercadoria = #TEMP2.Codigo_Mercadoria AND ISNULL(NI.Saida_Entrada, 0) = 0');
           tItens.SQL.Add('                                  AND ISNULL(NI.Cancelada, 0) = 0 AND ISNULL(Nfe_Denegada, 0) = 0 AND ISNULL(NI.Movimenta_Estoque, 0) = 1) +');
           tItens.SQL.Add('                                  (SELECT ISNULL(SUM(Quantidade_Entrada), 0) FROM ProdutosTransferencia PT WHERE PT.Produto_Entrada = #TEMP2.Codigo_Mercadoria AND PT.Data_Transferencia < :pDataIni AND PT.Estoque = 1 ) +');
           tItens.SQL.Add('                                  (SELECT ISNULL(SUM(Quantidade), 0)         FROM NotasTerceirosItens NTI  WHERE NTI.Data_Entrada < :pDataIni AND NTI.Codigo_Mercadoria = #TEMP2.Codigo_Mercadoria AND ISNULL(NTI.Movimenta_Estoque, 0) = 1) -');
           tItens.SQL.Add('                                  (SELECT ISNULL(SUM(Quantidade), 0)         FROM NotasItens NI            WHERE NI.Data < :pDataIni AND NI.Codigo_Mercadoria  = #TEMP2.Codigo_Mercadoria AND ISNULL(NI.Saida_Entrada, 0) = 1');
           tItens.SQL.Add('                                  AND ISNULL(NI.Cancelada, 0) = 0 AND ISNULL(Nfe_Denegada, 0) = 0 AND ISNULL(NI.Movimenta_Estoque, 0) = 1) -');
           tItens.SQL.Add('                                  (SELECT ISNULL(SUM(Quantidade), 0)         FROM ProdutosTransferencia PT WHERE PT.Produto_Saida = #TEMP2.Codigo_Mercadoria AND PT.Data_Transferencia < :pDataIni AND PT.Estoque = 1 )');
           tItens.SQL.Add('WHERE Linha = (SELECT MIN(Linha) FROM #TEMP2 TP2 WHERE TP2.Codigo_Mercadoria = #TEMP2.Codigo_Mercadoria)');
           tItens.SQL.Add('UPDATE #TEMP2 SET Saldo_Atual = Saldo_Anterior + Quantidade_Rel');
           tItens.SQL.Add('SELECT * FROM #TEMP2');
           tItens.SQL.Add('ORDER BY Codigo_Mercadoria, Data, ES');
           tItens.SQL.Add('DROP TABLE #TEMP, #TEMP2');

           tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
           If Trim(cNCM.Text) <> '' then begin
              tItens.ParamByName('pNCM').AsString := cNCM.Text;
           end;
           If Trim(cCodigoProduto.Text) <> '' then begin
              tItens.ParamByName('pProduto').AsInteger := Produtos.FieldByName('Codigo').AsInteger;
           end;
           //tItens.SQL.SaveToFile('C:\TEMP\Livro_RCPE_Saldo.SQL');
           tItens.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);
           Fornecedores.Open;

           Screen.Cursor := crDefault;
           mDataIni      := cDataIni.Date;
      End;

      if cImpressora.ItemIndex = 0 then begin
         ModeloP3;
      end else begin
         if cImpressora.ItemIndex = 2 then rEstoque.DeviceType := 'PDF';
         mLetra        := 65;
         mImprimir     := true;
         lMovimento.Visible := titens.RecordCount = 0;
         rEstoque.Print;
         rEstoque.Reset;
      end;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FiscaisOP_RCPE_P3.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger( 'IMPRESSAO_RCPE', 'Impressora'   , cImpressora.ItemIndex );
      aINI.WriteString ( 'IMPRESSAO_RCPE', 'DataIni'      , cDataIni.Text );
      aINI.WriteString ( 'IMPRESSAO_RCPE', 'DataFim'      , cDataFim.Text );
      aINI.WriteString ( 'IMPRESSAO_RCPE', 'NCM'          , cNCM.Text );
      aINI.WriteString ( 'IMPRESSAO_RCPE', 'CodigoProduto', cCodigoProduto.Text);
      aINI.WriteInteger( 'IMPRESSAO_RCPE', 'PaginaIni'    , cPaginaIni.AsInteger );
      aINI.WriteInteger( 'IMPRESSAO_RCPE', 'QtdePaginas'  , cQtdePag.AsInteger );
      aINI.WriteBool   ( 'IMPRESSAO_RCPE', 'Continua'     , cContinua.Checked );
      aINI.Free;

      dmFiscal.Notas.Close;
      dmFiscal.NotasItens.Close;
      Dados.Empresas.Close;
      Dados.Configuracao.Close;
      Dados.Produtos.Close;

      LimpaMemoria;
      Impressao_FiscaisOP_RCPE_P3.Release;
      Impressao_FiscaisOP_RCPE_P3 := nil;
end;

procedure TImpressao_FiscaisOP_RCPE_P3.ModeloP3;
Var
   i: Integer;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := tItens.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Preparando o livro de estoque P3...';
      Janela_Processamento.Show;
      tItens.First;

      With Dados, dmFiscal do begin
           Configuracao.Open;

           mLinha         := 0;
           mPagina        := (cPaginaIni.AsInteger-1);
           LinhaAtual     := 0;
           ColunaAtual    := 0;
           mSubE_QtdeD    := 0;
           mSubE_ValorD   := 0;
           mSubE_IPID     := 0;
           mSubE_EstoqueD := 0;
           mSubS_QtdeD    := 0;
           mSubS_ValorD   := 0;
           mSubS_IPID     := 0;
           mSubS_EstoqueD := 0;
           mSubE_QtdeM    := 0;
           mSubE_ValorM   := 0;
           mSubE_IPIM     := 0;
           mSubE_EstoqueM := 0;
           mSubS_QtdeM    := 0;
           mSubS_ValorM   := 0;
           mSubS_IPIM     := 0;
           mSubS_EstoqueM := 0;
           mSubE_QtdeG    := 0;
           mSubE_ValorG   := 0;
           mSubE_IPIG     := 0;
           mSubE_EstoqueG := 0;
           mSubS_QtdeG    := 0;
           mSubS_ValorG   := 0;
           mSubS_IPIG     := 0;
           mSubS_EstoqueG := 0;
           mSaldo_Estoque := 0;
           mTipo[0]       :='E';
           mTipo[1]       :='S';
           mLetra         := 65;

           tItens.First;

           mProduto       := tItens.FieldByName('Codigo_Mercadoria').AsInteger;
           //mSaldo_Estoque := tItens.FieldByName('Saldo_Anterior').AsInteger;
           mSaldo_Estoque := tSaldo.FieldByName('Saldo_Anterior').AsInteger;
           mData          := tItens.FieldByName('Data').AsDateTime;
           mDia           := tItens.FieldByName('Dia').AsInteger;
           mMes           := MonthOf( tItens.FieldByName('Data').AsDateTime );

           While (not tItens.Eof) and (FUNCOES.Cancelado = False) do begin
                 // Cabeçalho do relatorio.

                 If mLinha = 0 then begin
                    Inc(mPagina);
                    If mPagina > 499 then begin
                       mPagina := 2;
                       Inc(mLetra);
                    End;
                    mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.AsString;
                    If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                       mNomeArq := mNomeArq + '_Matriz'
                    else
                       mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

                    mNomeArq := mNomeArq +'\Impressao';
                    If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
                    mNomeArq := mNomeArq +'\LIVRO'+'_'+CHR(mLetra)+'_RCPEP3_PG'+PoeZero(4, mPagina)+'.TXT';

                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    // Apurando o saldo anterior do produto.
                    mSaldo_Qtde  := 0;
                    mSaldo_Valor := 0;
                    mSaldo_IPI   := 0;

                    // Impressão do cabeçalho.
                    Write(Arquivo, #27, #33, Chr(5) );  // Pitch 15ppp
                    Say( mLinha   ,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
                    Say( mLinha+01,   0, Arquivo, '³ REGISTRO DE CONTROLE DA PRODUCAO E DO ESTOQUE');
                    Say( mLinha+01, 124, Arquivo, '³ (a) CODIGO DE ENTRADAS E SAIDAS          ³' );
                    Say( mLinha+02,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+03,   0, Arquivo, '³ FIRMA        : '+ Dados.EmpresasRazao_Social.AsString );
                    Say( mLinha+03, 124, Arquivo, '³ 1 - No proprio estabelecimento.          ³' );
                    Say( mLinha+04,   0, Arquivo, '³ INSC.ESTADUAL: '+ FormatMaskText( Dados.EstadosMascara_Inscricao.AsString , Dados.EmpresasIE.Value) );
                    Say( mLinha+04,  77, Arquivo, 'CNPJ    : '+FormatMaskText('99.999.999/9999-99;0; ', Dados.EmpresasCNPJ.Value) );
                    Say( mLinha+04, 124, Arquivo, '³ 2 - Em outro estabelecimento             ³' );
                    Say( mLinha+05,   0, Arquivo, '³ FOLHA        : '+ PoeZero(3,mPagina) );
                    Say( mLinha+05,  77, Arquivo, 'PERIODO : '+cDataIni.Text+ ' a '+cDataFim.Text );
                    Say( mLinha+05, 124, Arquivo, '³ 3 - Diversas                             ³' );
                    Say( mLinha+06,   0, Arquivo, '³ PRODUTO      : '+ Copy(tItens.FieldByName('Descricao_Reduzida').AsString,1,56) );
                    Say( mLinha+06,  77, Arquivo, 'UNIDADE : '+ tItens.FieldByName('Unidade_Medida').AsString);
                    Say( mLinha+06,  92, Arquivo, 'CLASSIF.FISCAL : '+ FormatMaskText('####.##.##;0',tItens.FieldByName('NCM').AsString)+'     ³                                          ³' );
                    Say( mLinha+07,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+08,   0, Arquivo, '³            DOCUMENTO              ³       LANCAMENTO        ³                            ENTRADAS E SAIDAS                                  ³                        ³');
                    Say( mLinha+09,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+10,   0, Arquivo, '³ESPECIE³SERIE³ NUMERO ³    DATA    ³       CODIFICACAO       ³ E/S ³ COD ³   QUANTIDADE   ³     VALOR      ³       IPI      ³     ESTOQUE    ³      OBSERVACOES       ³');
                    Say( mLinha+11,   0, Arquivo, '³       ³ SUB ³        ³            ÃÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄ´     ³ (a) ³                ³                ³                ³                ³                        ³');
                    Say( mLinha+12,   0, Arquivo, '³       ³SERIE³        ³            ³ DIA ³ CONTABIL ³ FISCAL ³     ³     ³                ³                ³                ³                ³                        ³');
                    Say( mLinha+13,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+14,   0, Arquivo, '|                                               SALDO ANTERIOR...............................................................: '+PadR(FormatFloat('##,###,##0.000', mSaldo_Estoque),14) );
                    Say( mLinha+14, 167, Arquivo, '|');
                    Say( mLinha+15,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Inc(mLinha,16);
                 End;

                 If tItens.FieldByName('Saida_Entrada').AsInteger = 0 then mSaldo_Estoque := mSaldo_Estoque + tItens.FieldByName('Quantidade').AsFloat;
                 If tItens.FieldByName('Saida_Entrada').AsInteger = 1 then mSaldo_Estoque := mSaldo_Estoque - tItens.FieldByName('Quantidade').AsFloat;

                 // Imprimindo linha de itens.
                 Say( mLinha,   0, Arquivo, '|  '+tItens.FieldByName('Especie').AsString );
                 Say( mLinha,  08, Arquivo, '|'+Copy(tItens.FieldByName('Serie').AsString,1,3) );
                 Say( mLinha,  14, Arquivo, '| '+PoeZero(6, tItens.FieldByName('Nota').AsInteger) );
                 Say( mLinha,  23, Arquivo, '| '+tItens.FieldByName('Data').AsString );
                 Say( mLinha,  36, Arquivo, '|  '+PoeZero(2, tItens.FieldByName('Dia').AsInteger) );
             	 Say( mLinha,  42, Arquivo, '|' );
                 Say( mLinha,  53, Arquivo, '| '+FormatMaskText('#.###;0', tItens.FieldByName('Natureza_Codigo').AsString) );
       	         Say( mLinha,  62, Arquivo, '|  '+mTipo[tItens.FieldByName('Saida_Entrada').AsInteger] );
            	 Say( mLinha,  68, Arquivo, '|  3' );
                 Say( mLinha,  74, Arquivo, '| '+PadR(FormatFloat('##,###,##0.000', tItens.FieldByName('Quantidade').AsFloat),14) );
                 Say( mLinha,  91, Arquivo, '| '+PadR(FormatFloat('###,###,##0.00', (tItens.FieldByName('Valor_Total').AsCurrency)),14) );
                 Say( mLinha, 108, Arquivo, '| '+PadR(FormatFloat('###,###,##0.00', tItens.FieldByName('Valor_IPI').AsCurrency),14) );
                 Say( mLinha, 125, Arquivo, '| '+PadR(FormatFloat('##,###,##0.000', mSaldo_Estoque),14) );
                 Say( mLinha, 142, Arquivo, '|                        |' );
                 Inc(mLinha);

                 If tItens.FieldByName('Saida_Entrada').AsInteger = 0 then begin
                    mSubE_QtdeD     := mSubE_QtdeD    + tItens.FieldByName('Quantidade').AsFloat;
                    mSubE_ValorD    := mSubE_ValorD   + ( tItens.FieldByName('Valor_Total').AsCurrency );
                    mSubE_IPID      := mSubE_IPID     + tItens.FieldByName('Valor_IPI').AsCurrency;
                    mSubE_EstoqueD  := mSubE_EstoqueD + tItens.FieldByName('Quantidade').AsFloat;
                    mSubE_QtdeM     := mSubE_QtdeM    + tItens.FieldByName('Quantidade').AsFloat;
                    mSubE_ValorM    := mSubE_ValorM   + ( tItens.FieldByName('Valor_Total').AsCurrency );
                    mSubE_IPIM      := mSubE_IPIM     + tItens.FieldByName('Valor_IPI').AsCurrency;
                    mSubE_EstoqueM  := mSubE_EstoqueM + tItens.FieldByName('Quantidade').AsFloat;
                    mSubE_QtdeG     := mSubE_QtdeG    + tItens.FieldByName('Quantidade').AsFloat;
                    mSubE_ValorG    := mSubE_ValorG   + ( tItens.FieldByName('Valor_Total').AsCurrency );
                    mSubE_IPIG      := mSubE_IPIG     + tItens.FieldByName('Valor_IPI').AsCurrency;
                    mSubE_EstoqueG  := mSubE_EstoqueG + tItens.FieldByName('Quantidade').AsFloat;
                 end else begin
                    mSubS_QtdeD     := mSubS_QtdeD    + tItens.FieldByName('Quantidade').AsFloat;
                    mSubS_ValorD    := mSubS_ValorD   + ( tItens.FieldByName('Valor_Total').AsCurrency );
                    mSubS_IPID      := mSubS_IPID     + tItens.FieldByName('Valor_IPI').AsCurrency;
                    mSubS_EstoqueD  := mSubS_EstoqueD + tItens.FieldByName('Quantidade').AsFloat;
                    mSubS_QtdeM     := mSubS_QtdeM    + tItens.FieldByName('Quantidade').AsFloat;
                    mSubS_ValorM    := mSubS_ValorM   + ( tItens.FieldByName('Valor_Total').AsCurrency );
                    mSubS_IPIM      := mSubS_IPIM     + tItens.FieldByName('Valor_IPI').AsCurrency;
                    mSubS_EstoqueM  := mSubS_EstoqueM + tItens.FieldByName('Quantidade').AsFloat;
                    mSubS_QtdeG     := mSubS_QtdeG    + tItens.FieldByName('Quantidade').AsFloat;
                    mSubS_ValorG    := mSubS_ValorG   + ( tItens.FieldByName('Valor_Total').AsCurrency );
                    mSubS_IPIG      := mSubS_IPIG     + tItens.FieldByName('Valor_IPI').AsCurrency;
                    mSubS_EstoqueG  := mSubS_EstoqueG + tItens.FieldByName('Quantidade').AsFloat;
                 end;

                 tItens.Next;

                 // SubTotal por data. "Mes ou Dia".
                 If (mProduto = tItens.FieldByName('Codigo_Mercadoria').AsInteger) and ( tItens.FieldByName('Data').AsDateTime <> mData ) then begin
                    Say( mLinha,   0, Arquivo,'ÀÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                    Inc(mLinha,2);
                    Say( mLinha,  28, Arquivo, '* SUBTOTAL: '+PoeZero(2,mDia) );
                    Say( mLinha,  66, Arquivo, 'E' );
                    Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubE_QtdeD   ),14) );
                    Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_ValorD  ),14) );
                    Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_IPID    ),14) );
                    Inc(mLinha);
                    Say( mLinha,  28, Arquivo, '* SUBTOTAL: '+PoeZero(2,mDia) );
                    Say( mLinha,  66, Arquivo, 'S' );
                    Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubS_QtdeD   ),14) );
                    Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_ValorD  ),14) );
                    Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_IPID    ),14) );
                    Inc(mLinha);
                    Say( mLinha,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');

                    mSubE_QtdeD    := 0;
                    mSubE_ValorD   := 0;
                    mSubE_IPID     := 0;
                    mSubE_EstoqueD := 0;
                    mSubS_QtdeD    := 0;
                    mSubS_ValorD   := 0;
                    mSubS_IPID     := 0;
                    mSubS_EstoqueD := 0;
                    mData          := tItens.FieldByName('Data').AsDateTime;
                    mDia           := tItens.FieldByName('Dia').AsInteger;

                    If ( MonthOf( tItens.FieldByName('Data').AsDateTime ) <> mMes ) then begin
                       Inc(mLinha,2);
                       Say( mLinha,  24, Arquivo, '* SUBTOTAL MES: '+PoeZero(2,mMes) );
                       Say( mLinha,  66, Arquivo, 'E' );
                       Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubE_QtdeM   ),14) );
                       Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_ValorM  ),14) );
                       Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_IPIM    ),14) );
                       Inc(mLinha);
                       Say( mLinha,  24, Arquivo, '* SUBTOTAL MES: '+PoeZero(2,mMes) );
                       Say( mLinha,  66, Arquivo, 'S' );
                       Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubS_QtdeM   ),14) );
                       Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_ValorM  ),14) );
                       Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_IPIM    ),14) );

                       mMes           := MonthOf( tItens.FieldByName('Data').AsDateTime );
                       mSubE_QtdeM    := 0;
                       mSubE_ValorM   := 0;
                       mSubE_IPIM     := 0;
                       mSubE_EstoqueM := 0;
                       mSubS_QtdeM    := 0;
                       mSubS_ValorM   := 0;
                       mSubS_IPIM     := 0;
                       mSubS_EstoqueM := 0;
                       mDataIni       := IncMonth(mDataIni, 1);
                       mLinha         := 0;
                       ColunaAtual    := 0;
                       LinhaAtual     := 0;
                       CloseFile(Arquivo);
                    end else begin
                       Inc(mLinha,1);
                    End;
                 end;

                 // SubTotal por Produto.
                 If (mProduto <> tItens.FieldByName('Codigo_Mercadoria').AsInteger) then begin
                    Say( mLinha,0, Arquivo,'ÀÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                    Inc(mLinha,2);
                    Say( mLinha,  24, Arquivo, '* SUBTOTAL DIA: '+PoeZero(2,mDia) );
                    Say( mLinha,  66, Arquivo, 'E' );
                    Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubE_QtdeD   ),14) );
                    Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_ValorD  ),14) );
                    Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_IPID    ),14) );
                    Inc(mLinha);
                    Say( mLinha,  24, Arquivo, '* SUBTOTAL DIA: '+PoeZero(2,mDia) );
                    Say( mLinha,  66, Arquivo, 'S' );
                    Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubS_QtdeD   ),14) );
                    Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_ValorD  ),14) );
                    Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_IPID    ),14) );
                    Inc(mLinha,2);
                    Say( mLinha,  24, Arquivo, '* SUBTOTAL MES: '+PoeZero(2,mMes) );
                    Say( mLinha,  66, Arquivo, 'E' );
                    Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubE_QtdeM   ),14) );
                    Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_ValorM  ),14) );
                    Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_IPIM    ),14) );
                    Inc(mLinha);
                    Say( mLinha,  24, Arquivo, '* SUBTOTAL MES: '+PoeZero(2,mMes) );
                    Say( mLinha,  66, Arquivo, 'S' );
                    Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubS_QtdeM   ),14) );
                    Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_ValorM  ),14) );
                    Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_IPIM    ),14) );
                    Inc(mLinha);

                    Say( mLinha,0, Arquivo, Chr(12) );
                    Inc(mLinha,2);

                    mLinha         := 0;
                    ColunaAtual    := 0;
                    LinhaAtual     := 0;
                    mSubE_QtdeD    := 0;
                    mSubE_ValorD   := 0;
                    mSubE_IPID     := 0;
                    mSubE_EstoqueD := 0;
                    mSubS_QtdeD    := 0;
                    mSubS_ValorD   := 0;
                    mSubS_IPID     := 0;
                    mSubS_EstoqueD := 0;
                    mSubE_QtdeM    := 0;
                    mSubE_ValorM   := 0;
                    mSubE_IPIM     := 0;
                    mSubE_EstoqueM := 0;
                    mSubS_QtdeM    := 0;
                    mSubS_ValorM   := 0;
                    mSubS_IPIM     := 0;
                    mSubS_EstoqueM := 0;
                    mProduto       := tItens.FieldByName('Codigo_Mercadoria').AsInteger;
                    mData          := tItens.FieldByName('Data').AsDateTime;
                    mDia           := tItens.FieldByName('Dia').AsInteger;
                    mMes           := MonthOf( tItens.FieldByName('Data').AsDateTime );
                    CloseFile(Arquivo);
                 end;
                 // Quebra de pagina.
                 If (mLinha >= 60) or tItens.Eof then begin
                    Say( mLinha,0, Arquivo,'ÀÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                    Inc(mLinha,2);
                    Say( mLinha,  24, Arquivo, '* SUBTOTAL DIA: '+PoeZero(2,mDia) );
                    Say( mLinha,  66, Arquivo, 'E' );
                    Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubE_QtdeD   ),14) );
                    Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_ValorD  ),14) );
                    Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_IPID    ),14) );
                    Inc(mLinha);
                    Say( mLinha,  24, Arquivo, '* SUBTOTAL DIA: '+PoeZero(2,mDia) );
                    Say( mLinha,  66, Arquivo, 'S' );
                    Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubS_QtdeD   ),14) );
                    Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_ValorD  ),14) );
                    Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_IPID    ),14) );
                    Inc(mLinha,2);
                    Say( mLinha,  24, Arquivo, '* SUBTOTAL MES: '+PoeZero(2,mMes) );
                    Say( mLinha,  66, Arquivo, 'E' );
                    Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubE_QtdeM   ),14) );
                    Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_ValorM  ),14) );
                    Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_IPIM    ),14) );
                    Inc(mLinha);
                    Say( mLinha,  24, Arquivo, '* SUBTOTAL MES: '+PoeZero(2,mMes) );
                    Say( mLinha,  66, Arquivo, 'S' );
                    Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubS_QtdeM   ),14) );
                    Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_ValorM  ),14) );
                    Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_IPIM    ),14) );
                    Inc(mLinha);
                    If tItens.Eof then begin
                       Inc(mLinha);
                       Say( mLinha,  20, Arquivo, '* TOTAL DO PERIODO: '+PoeZero(2,mMes) );
                       Say( mLinha,  66, Arquivo, 'E' );
                       Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubE_QtdeG    ),14) );
                       Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_ValorG   ),14) );
                       Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubE_IPIG     ),14) );
                       Inc(mLinha);
                       Say( mLinha,  20, Arquivo, '* TOTAL DO PERIODO: '+PoeZero(2,mMes) );
                       Say( mLinha,  66, Arquivo, 'S' );
                       Say( mLinha,  77, Arquivo, PadR(FormatFloat('##,###,##0.000', mSubS_QtdeG    ),14) );
                       Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_ValorG   ),14) );
                       Say( mLinha, 111, Arquivo, PadR(FormatFloat('###,###,##0.00', mSubS_IPIG     ),14) );
                    End;
                    Inc(mLinha);
                    Say( mLinha,0, Arquivo, Chr(12) );
                 end;

                 Janela_Processamento.lProcesso.Caption  := 'Preparando o livro de estoque P3...Pagina '+PoeZero(4,mPagina);
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           End;
           Janela_Processamento.Close;
      End;

      If not FileExists(mNomeArq) then begin
         Inc(mPagina);

         mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.AsString;
         If Dados.EmpresasMatriz_Filial.AsBoolean = true then
            mNomeArq := mNomeArq + '_Matriz'
         else
            mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

         mNomeArq := mNomeArq +'\Impressao';
         If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
         mNomeArq := mNomeArq +'\LIVRO'+'_'+CHR(mLetra)+'_RCPEP3_PG'+PoeZero(4, mPagina)+'.TXT';
         If FileExists(mNomeArq) then DeleteFile(mNomeArq);
         
         AssignFile(Arquivo, mNomeArq);
         ReWrite(Arquivo);

         // Impressão do cabeçalho.
         Write(Arquivo, #27, #33, Chr(5) );  // Pitch 15ppp
         Say( mLinha   ,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿');
         Say( mLinha+01,   0, Arquivo, '³ REGISTRO DE CONTROLE DA PRODUCAO E DO ESTOQUE');
         Say( mLinha+01, 124, Arquivo, '³ (a) CODIGO DE ENTRADAS E SAIDAS          ³' );
         Say( mLinha+02,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
         Say( mLinha+03,   0, Arquivo, '³ FIRMA        : '+ Dados.EmpresasRazao_Social.AsString );
         Say( mLinha+03, 124, Arquivo, '³ 1 - No proprio estabelecimento.          ³' );
         Say( mLinha+04,   0, Arquivo, '³ INSC.ESTADUAL: '+ FormatMaskText( Dados.EstadosMascara_Inscricao.AsString , Dados.EmpresasIE.Value) );
         Say( mLinha+04,  77, Arquivo, 'CNPJ    : '+FormatMaskText('99.999.999/9999-99;0; ', Dados.EmpresasCNPJ.Value) );
         Say( mLinha+04, 124, Arquivo, '³ 2 - Em outro estabelecimento             ³' );
         Say( mLinha+05,   0, Arquivo, '³ FOLHA        : '+ PoeZero(3,mPagina) );
         Say( mLinha+05,  77, Arquivo, 'PERIODO : '+cDataIni.Text+ ' a '+cDataFim.Text );
         Say( mLinha+05, 124, Arquivo, '³ 3 - Diversas                             ³' );
         Say( mLinha+06,   0, Arquivo, '³ PRODUTO      :         ' );
         Say( mLinha+06,  77, Arquivo, 'UNIDADE : ' );
         Say( mLinha+06,  92, Arquivo, 'CLASSIF.FISCAL :           '+ '     ³                                          ³' );
         Say( mLinha+07,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
         Say( mLinha+08,   0, Arquivo, '³            DOCUMENTO              ³       LANCAMENTO        ³                            ENTRADAS E SAIDAS                                  ³                        ³');
         Say( mLinha+09,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
         Say( mLinha+10,   0, Arquivo, '³ESPECIE³SERIE³ NUMERO ³    DATA    ³       CODIFICACAO       ³ E/S ³ COD ³   QUANTIDADE   ³     VALOR      ³       IPI      ³     ESTOQUE    ³      OBSERVACOES       ³');
         Say( mLinha+11,   0, Arquivo, '³       ³ SUB ³        ³            ÃÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄ´     ³ (a) ³                ³                ³                ³                ³                        ³');
         Say( mLinha+12,   0, Arquivo, '³       ³SERIE³        ³            ³ DIA ³ CONTABIL ³ FISCAL ³     ³     ³                ³                ³                ³                ³                        ³');
         Say( mLinha+13,   0, Arquivo, 'ÀÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
      End;

      CloseFile(Arquivo);
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.AsString;
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

      mNomeArq := mNomeArq +'\Impressao';

      Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
      Impressao_Visualizar.Caption  := 'Cybersoft - Impressão de relatórios Fiscais';
      Impressao_Visualizar.mArquivo := mNomeArq+'\LIVRO_A_RCPEP3_PG'+PoeZero(4, cPaginaIni.AsInteger)+'.TXT';
      Impressao_Visualizar.mNome    := mNomeArq+'\LIVRO_A_RCPEP3_PG';
      Impressao_Visualizar.mTitulo  := 'LIVRO DE REGISTRO DE CONTROLE DA PRODUÇÃO E DO ESTOQUE - (Modelo P3)';
      Impressao_Visualizar.mPaginas := mPagina;
      Impressao_Visualizar.mPag     := cPaginaIni.AsInteger;
      Impressao_Visualizar.ShowModal;

      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);

      mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Dados.EmpresasRazao_Social.AsString;
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         mNomeArq := mNomeArq + '_Matriz'
      else
         mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

      mNomeArq := mNomeArq +'\Impressao';

      For i := mLetra downto 65 do begin
          DeletaRelatorios(Trim(mNomeArq)+'\LIVRO_'+CHR(i)+'_RCPEP3_PG', 499);
      End;
      Janela_Processamento.Close;

      cPaginaIni.AsInteger := mPagina+1;
End;

procedure TImpressao_FiscaisOP_RCPE_P3.cNCMChange(Sender: TObject);
begin
      If cNCM.Text <> '' then cProduto.KeyValue := ''; 
end;

procedure TImpressao_FiscaisOP_RCPE_P3.cProdutoClick(Sender: TObject); 
begin
      If cProduto.Text <> '' then cNCM.Text := '';
      cCodigoProduto.Text := Dados.ProdutosCodigo.AsString;
end;

procedure TImpressao_FiscaisOP_RCPE_P3.bLimparFormaClick(Sender: TObject);
begin
      cProduto.KeyValue := '';
      cCodigoProduto.Clear;
end;

procedure TImpressao_FiscaisOP_RCPE_P3.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_RCPE_P3.cCodigoProdutoChange(Sender: TObject);
begin
      if trim(cCodigoProduto.Text) <> '' then begin
         Dados.Produtos.Locate('Codigo', StrtoInt(cCodigoProduto.Text), [loCaseInsensitive]);
         If cCodigoProduto.Text <> '' then
            cProduto.KeyValue := Dados.ProdutosCodigo.AsInteger
         else
            cProduto.KeyValue := -1;
      end;
end;

procedure TImpressao_FiscaisOP_RCPE_P3.rEstoqueBeforePrint(Sender: TObject);
begin
      lPeriodo.Caption := cDataIni.Text + ' a ' + cDataFim.Text;
end;

procedure TImpressao_FiscaisOP_RCPE_P3.rEstoqueAfterPrint(Sender: TObject);
begin
      cPaginaIni.AsInteger := rEstoque.PageNo;
end;

procedure TImpressao_FiscaisOP_RCPE_P3.ppGroupHeaderBand1BeforeGenerate(Sender: TObject);
begin
     lSaldoAnterior.value := tItens.FieldByName('Saldo_Anterior').AsFloat;
end;

procedure TImpressao_FiscaisOP_RCPE_P3.lSaldoAtual2Calc(Sender: TObject;var Value: Variant);
begin
     value := value + tItens.FieldByName('Saldo_Anterior').asFloat + tItens.FieldByName('Quantidade_Rel').asFloat; 
end;

procedure TImpressao_FiscaisOP_RCPE_P3.ppHeaderBand1BeforeGenerate(Sender: TObject);
begin
      lPagina.Value := mPaginas[rEstoque.PageNo];
end;

end.
