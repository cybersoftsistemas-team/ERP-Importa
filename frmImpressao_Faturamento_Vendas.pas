unit frmImpressao_Faturamento_Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, DB, DBAccess, MSAccess, ppDBPipe,ppParameter, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppReport, RxLookup, Mask, Vcl.ExtCtrls, RXCtrls, ppMemo, Funcoes, IniFiles,
  RxToolEdit, ppDesignLayer, ppStrtch, ppCache, ppProd, MemDS, ppComm, ppRelatv, ppDB, MaskUtils;

type
  TImpressao_Faturamento_Vendas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    StaticText6: TStaticText;
    pEmpresas: TppDBPipeline;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    cProduto: TRxDBLookupCombo;
    cTipoNota: TRxDBLookupCombo;
    StaticText4: TStaticText;
    rVendas: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppDBCalc4: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppDBMemo1: TppDBMemo;
    ppLabel21: TppLabel;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    StaticText3: TStaticText;
    cLinha: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cNCM: TMaskEdit;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    StaticText9: TStaticText;
    cTipoProd: TRxDBLookupCombo;
    ppDBText6: TppDBText;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rVendasBeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_Vendas: TImpressao_Faturamento_Vendas;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_Vendas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_Faturamento_Vendas.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');

      Screen.Cursor := crSQLWait;
      With Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT *');
           TipoNota.SQL.Add('FROM TipoNota');
           TipoNota.SQL.Add('WHERE (Ativo = 1) AND (Gerar_Financeiro = 1) AND (Saida_Entrada = 1)');
           TipoNota.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos');
           Produtos.SQL.Add('WHERE Codigo IN((SELECT DISTINCT Codigo_Mercadoria FROM NotasItens WHERE(Saida_Entrada = 1) AND (Cancelada <> 1)))');
           Produtos.SQL.Add('ORDER BY Descricao_Reduzida');
           Produtos.Open;

           TipoProduto.SQL.Clear;
           TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
           TipoProduto.Open;

           ProdutosLinhas.SQL.Clear;
           ProdutosLinhas.SQL.Add('SELECT * FROM ProdutosLinhas ORDER BY Descricao');
           ProdutosLinhas.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_Faturamento_Vendas.FormClose(Sender: TObject;var Action: TCloseAction);
Var
    aIni : TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_VENDA', 'DataIni' , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_VENDA', 'DataFim' , cDataFim.Date );
      If cProduto.KeyValue > 0 then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDA', 'Produto' , cProduto.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDA', 'Produto' , 0);

      If cTipoNota.KeyValue > 0 then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDA', 'TipoNota', cTipoNota.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDA', 'TipoNota', 0);

      If Trim(cTipoProd.DisplayValue) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDA', 'TipoProduto', cTipoProd.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDA', 'TipoProduto', 0);
      aINI.WriteString('IMPRESSAO_FATURAMENTO_VENDA', 'NCM', cNCM.Text);
      aINI.Free;

      Impressao_Faturamento_Vendas.Release;
      Impressao_Faturamento_Vendas := nil;
end;

procedure TImpressao_Faturamento_Vendas.rVendasBeforePrint(Sender: TObject);
begin
      lPeriodo.Caption := '';
      lPeriodo.Caption := lPeriodo.Caption + 'Período de '+cDataIni.Text + ' a ' + cDataFim.Text ;
      if Trim(cTipoProd.Text) <> '' then begin
         lPeriodo.Caption := lPeriodo.Caption + '  |  Tipo Produto:'+cTipoProd.DisplayValue;
      end;
end;

procedure TImpressao_Faturamento_Vendas.FormShow(Sender: TObject);
Var
    aIni: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI               := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date      := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_VENDA', 'DataIni'    , 0);
      cDataFim.Date      := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_VENDA', 'DataFim'    , 0);
      cProduto.KeyValue  := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_VENDA', 'Produto'    , 0);
      cTipoNota.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_VENDA', 'TipoNota'   , 0);
      cTipoProd.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_VENDA', 'TipoProduto', 0);
      cNCm.Text          := aINI.ReadString('IMPRESSAO_FATURAMENTO_VENDA' , 'NCM'        , '');
      aINI.Free;
end;

procedure TImpressao_Faturamento_Vendas.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT Codigo_Mercadoria AS Codigo,');
      tItens.SQL.Add('       Quantidade,');
      tItens.SQL.Add('       Valor_Total,');
      tItens.SQL.Add('       MONTH(Data) AS Mes,');
      tItens.SQL.Add('       YEAR(Data) AS Ano');
      tItens.SQL.Add('INTO #Temp');
      tItens.SQL.Add('FROM NotasItens, Produtos PD');
      tItens.SQL.Add('WHERE PD.Codigo = NotasItens.Codigo_Mercadoria');
      tItens.SQL.Add('AND  (Cancelada <> 1)');
      tItens.SQL.Add('AND  (Saida_Entrada = 1)');
      tItens.SQL.Add('AND  (SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1');

      If Trim(cProduto.Text) <> '' then begin
         tItens.SQL.Add('AND (Codigo_Mercadoria = :pCodigo)');
         tItens.ParamByName('pCodigo').AsInteger := Dados.ProdutosCodigo.AsInteger;
      End;
      If Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
         If (Trim(RemoveCaracter('/', '', cDataFim.Text)) = '') or (cDataFim.Date < cDataIni.Date) then cDataFim.Date := cDataIni.Date;
         tItens.SQL.Add('AND   (Data BETWEEN :pDataIni AND :pDataFim)');
         tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;
      If Trim(cLinha.Text) <> '' then begin
         tItens.SQL.Add('AND  (SELECT Linha FROM Produtos WHERE(Codigo = Codigo_Mercadoria)) = :pLinha');
         tItens.ParamByName('pLinha').AsInteger := Dados.ProdutosLinhasCodigo.AsInteger;
      End;
      If Trim(cTipoNota.Text) <> ''  then begin
         tItens.SQL.Add('AND  (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) = :pTipoNota');
         tItens.ParamByName('pTipoNota').AsInteger := Dados.TipoNotaCodigo.AsInteger;
      End;
      If Trim(cNCM.Text) <> ''  then begin
         tItens.SQL.Add('AND  (NotasItens.NCM = :pNCM)');
         tItens.ParamByName('pNCM').AsString := cNCM.Text;
      End;
      if Trim(cTipoProd.Text) <> '' then begin
         tItens.SQL.Add('  AND PD.Tipo = '+Dados.TipoProdutoCodigo.AsString);
      end;

      tItens.SQL.Add('SELECT Codigo,');
      tItens.SQL.Add('       (SELECT Codigo_Fabricante FROM Produtos WHERE(Codigo = #Temp.Codigo)) AS Codigo_Fabricante,');
      tItens.SQL.Add('       (SELECT NCM FROM Produtos WHERE(Codigo = #Temp.Codigo)) AS NCM,');
      tItens.SQL.Add('       (SELECT REPLACE(Descricao, ''<{''+LTRIM(RTRIM(CAST(#Temp.Codigo AS VARCHAR(10))))+''}>'', '''') FROM Produtos WHERE(Codigo = #Temp.Codigo)) AS Descricao,');
      tItens.SQL.Add('       SUM(Quantidade) AS Quantidade,');
      tItens.SQL.Add('       SUM(Valor_Total) AS Valor_Total,');
      tItens.SQL.Add('       Mes,');
      tItens.SQL.Add('       CASE WHEN Mes =  1 THEN ''JANEIRO'' ');
      tItens.SQL.Add('            WHEN Mes =  2 THEN ''FEVEREIRO'' ');
      tItens.SQL.Add('            WHEN Mes =  3 THEN ''MARÇO'' ');
      tItens.SQL.Add('            WHEN Mes =  4 THEN ''ABRIL'' ');
      tItens.SQL.Add('            WHEN Mes =  5 THEN ''MAIO'' ');
      tItens.SQL.Add('            WHEN Mes =  6 THEN ''JUNHO'' ');
      tItens.SQL.Add('            WHEN Mes =  7 THEN ''JULHO'' ');
      tItens.SQL.Add('            WHEN Mes =  8 THEN ''AGOSTO'' ');
      tItens.SQL.Add('            WHEN Mes =  9 THEN ''SETEMBRO'' ');
      tItens.SQL.Add('            WHEN Mes = 10 THEN ''OUTUBRO'' ');
      tItens.SQL.Add('            WHEN Mes = 11 THEN ''NOVEMBRO'' ');
      tItens.SQL.Add('            WHEN Mes = 12 THEN ''DEZEMBRO'' ');
      tItens.SQL.Add('       END AS Nome_Mes, ');
      tItens.SQL.Add('       Ano');
      tItens.SQL.Add('FROM  #Temp');
      tItens.SQL.Add('GROUP BY Codigo, Ano, Mes');
      tItens.SQL.Add('ORDER BY Codigo, Ano, Mes');
      tItens.SQL.Add('DROP TABLE #TEMP');
      //tItens.SQL.SaveToFile('c:\temp\Vendas.sql');
      tItens.Open;

      Screen.Cursor  := crDefault;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      rVendas.Reset;
      rVendas.Print;
      rVendas.FreeOnRelease;
end;

end.
