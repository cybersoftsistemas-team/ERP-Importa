unit frmImpressao_Faturamento_MediaBCR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, Mask, RXCtrls, Buttons, DB, DBAccess,
  MSAccess, ppParameter, ppBands, ppClass, ppCtrls, ppVar, ppMemo, ppReport, ppDBPipe, Funcoes,
  RxCurrEdit, RxToolEdit, ppDesignLayer, ppStrtch, ppPrnabl, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_Faturamento_MediaBCR = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    cCodigoProduto: TCurrencyEdit;
    tItens: TMSQuery;
    pEmpresas: TppDBPipeline;
    pItens: TppDBPipeline;
    rMediaBCR: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape19: TppShape;
    ppLabel21: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText12: TppDBText;
    ppDBText21: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppGroup1: TppGroup;
    rGrupoLinha: TppGroupHeaderBand;
    ppLine1: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppParameterList1: TppParameterList;
    dstItens: TDataSource;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppShape7: TppShape;
    ppLabel1: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppDBText2: TppDBText;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    tQtdeEntradas: TppDBCalc;
    ppLine2: TppLine;
    tQtdeSaidas: TppDBCalc;
    tBCRVendas: TppDBCalc;
    ppLabel6: TppLabel;
    ppLabel11: TppLabel;
    tSaldoEstoque: TppVariable;
    ppVariable1: TppVariable;
    cEntrada: TDateEdit;
    StaticText3: TStaticText;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure tSaldoEstoqueCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure bLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_MediaBCR: TImpressao_Faturamento_MediaBCR;

implementation

uses frmDados;

{$R *.dfm}

procedure TImpressao_Faturamento_MediaBCR.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Faturamento_MediaBCR.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Impressao_Faturamento_MediaBCR.Release;
      Impressao_Faturamento_MediaBCR := nil;
end;

procedure TImpressao_Faturamento_MediaBCR.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_MediaBCR.bImprimirClick(Sender: TObject);
begin
      With Dados do begin
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Codigo_Mercadoria AS Produto,');
           tItens.SQL.Add('       Descricao_Mercadoria AS Descricao,');
           tItens.SQL.Add('       Nota,');
           tItens.SQL.Add('       Data_Entrada AS Data,');
           tItens.SQL.Add('       0 AS Saida_Entrada,');
           tItens.SQL.Add('       Quantidade AS Qtde_Entradas,');
           tItens.SQL.Add('       0 AS Qtde_Saidas,');
           tItens.SQL.Add('       Aliquota_MVA,');
           tItens.SQL.Add('       Aliquota_ICMSSub,');
           tItens.SQL.Add('       Aliquota_ICMSOper,');
           tItens.SQL.Add('       ISNULL(ROUND((SELECT SUM(Valor_LiquidoOrig) FROM NotasTerceirosItens NTI WHERE(NTI.Codigo_Mercadoria = NotasTerceirosItens.Codigo_Mercadoria) AND (NTI.Movimenta_Inventario = 1)');
           tItens.SQL.Add('              AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0 ), 4,0), 0) AS Total_Entradas,');
           tItens.SQL.Add('       CAST(0 AS float) AS BCR_Entrada,');
           tItens.SQL.Add('       CAST(0 AS float) AS ICMS_Retido,');
           tItens.SQL.Add('       CAST(0 AS float) AS BCR_Unitario,');
           tItens.SQL.Add('       CAST(0 AS float) AS BCR,');
           tItens.SQL.Add('       CAST(0 AS float) AS BCR_Venda');
           tItens.SQL.Add('INTO   #TEMP');
           tItens.SQL.Add('FROM   NotasTerceirosItens');
           tItens.SQL.Add('WHERE (Movimenta_Inventario = 1)');
           tItens.SQL.Add('  AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0');
           If DataLimpa(cEntrada.Text) then begin
              If not DataLimpa(cDataIni.Text) then begin
                 tItens.SQL.Add('  AND (Data_Entrada BETWEEN :pDataIni AND :pDataFim)');
                 tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
                 tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
              End;
           end else begin
              If not DataLimpa(cDataIni.Text) then begin
                 tItens.SQL.Add('  AND (Data_Entrada <= :pDataEntrada)');
                 tItens.ParamByName('pDataEntrada').AsDate := cEntrada.Date;
              End;
           End;

           If cCodigoProduto.AsInteger > 0 then begin
              tItens.SQL.Add('  AND (Codigo_Mercadoria = :pCodigo)');
           End;
           tItens.SQL.Add('UNION  ALL');
           tItens.SQL.Add('SELECT Codigo_Mercadoria AS Produto,');
           tItens.SQL.Add('       null AS Descricao,');
           tItens.SQL.Add('       Nota,');
           tItens.SQL.Add('       Data,');
           tItens.SQL.Add('       Saida_Entrada,');
           tItens.SQL.Add('       0 AS Qtde_Entradas,');
           tItens.SQL.Add('       Quantidade AS Qtde_Saidas,');
           tItens.SQL.Add('       Aliquota_MVA,');
           tItens.SQL.Add('       Aliquota_ICMSSub,');
           tItens.SQL.Add('       Aliquota_ICMSOper,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       CAST(0 AS float) AS BCR_Entrada,');
           tItens.SQL.Add('       CAST(0 AS float) AS ICMS_Retido,');
           tItens.SQL.Add('       CAST(0 AS float) AS BCR_Unitario,');
           tItens.SQL.Add('       CAST(0 AS float) AS BCR,');
           tItens.SQL.Add('       CAST(0 AS float) AS BCR_Venda');
           tItens.SQL.Add('FROM   NotasItens');
           If DataLimpa(cEntrada.Text) then begin
              tItens.SQL.Add('WHERE (Cancelada <> 1) AND (Saida_Entrada = 0 OR (SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 0 )');
           end else begin
              tItens.SQL.Add('WHERE (Cancelada <> 1) AND ((Saida_Entrada = 0 AND Data <= :pDataEntrada) OR (Saida_Entrada = 0 AND Data <= :pDataEntrada AND (SELECT Finalidade_Mercadoria FROM TipoNota WHERE Codigo = Tipo_Nota) = 0) )');
              tItens.ParamByName('pDataEntrada').AsDate := cEntrada.Date;
           End;
           tItens.SQL.Add('  AND (Movimenta_Inventario = 1)');
           If not DataLimpa(cDataIni.Text) then begin
              tItens.SQL.Add('  AND (Data BETWEEN :pDataIni AND :pDataFim)');
              tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
              tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
           End;

           If cCodigoProduto.AsInteger > 0 then begin
              tItens.SQL.Add('  AND (Codigo_Mercadoria = :pCodigo)');
           End;
           tItens.SQL.Add('ORDER BY Saida_Entrada');
           tItens.SQL.Add('UPDATE #TEMP SET BCR_Entrada  = CAST(Total_Entradas * (1+Aliquota_MVA/100) AS DECIMAL(18, 2))');
           tItens.SQL.Add('UPDATE #TEMP SET ICMS_Retido  = CAST( (BCR_Entrada * (Aliquota_ICMSSub/100))-(Total_Entradas * (Aliquota_ICMSOper/100)) AS DECIMAL(18, 2) ),');
           tItens.SQL.Add('                 BCR_Unitario = CASE WHEN Qtde_Entradas > 0 THEN BCR_Entrada / Qtde_Entradas END,');
           tItens.SQL.Add('                 BCR          = (SELECT SUM(CASE WHEN Qtde_Entradas > 0 THEN BCR_Entrada / Qtde_Entradas END) FROM #Temp TP WHERE(TP.Produto = #Temp.Produto)),');
           tItens.SQL.Add('                 BCR_Venda    = CAST(ROUND((SELECT SUM(CASE WHEN Qtde_Entradas > 0 THEN BCR_Entrada / Qtde_Entradas END) FROM #Temp TP WHERE(TP.Produto = #Temp.Produto)) * Qtde_Saidas, 2, 4) AS DECIMAL(18,4))');
           tItens.SQL.Add('SELECT * FROM #TEMP ORDER BY Produto, Saida_Entrada, Data, Nota');
           tItens.SQL.Add('DROP TABLE #TEMP');
           If cCodigoProduto.AsInteger > 0 then begin
              tItens.ParamByName('pCodigo').AsInteger := cCodigoProduto.AsInteger;
           End;
           //tItens.SQL.SaveToFile('c:\temp\Media_BCR.SQL');
           tItens.Open;

           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;
           //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           rMediaBCR.Reset;
           rMediaBCR.Print;
           rMediaBCR.FreeOnRelease;
      End;
end;

procedure TImpressao_Faturamento_MediaBCR.tSaldoEstoqueCalc(Sender: TObject; var Value: Variant);
begin
      Value := tQtdeEntradas.Value - tQtdeSaidas.Value;
end;

procedure TImpressao_Faturamento_MediaBCR.ppVariable1Calc(Sender: TObject;var Value: Variant);
begin
      Value := tSaldoEstoque.Value * tItens.FieldByName('BCR').Value;
end;

procedure TImpressao_Faturamento_MediaBCR.bLimparClick(Sender: TObject);
begin
      cEntrada.Clear;
      cDataIni.Clear;
      cDataFim.Clear;
      cCodigoProduto.Clear;
      cProduto.ClearValue;
end;

procedure TImpressao_Faturamento_MediaBCR.FormShow(Sender: TObject);
begin
      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE ISNULL(Desativado, 0) = 0 ORDER BY Descricao_Reduzida');
           Produtos.Open;
      End;
end;

end.
