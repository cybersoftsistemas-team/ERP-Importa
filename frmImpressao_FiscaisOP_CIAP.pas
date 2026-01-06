unit frmImpressao_FiscaisOP_CIAP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls,
  INIFiles, DateUtils, Funcoes, MaskUtils, ppReport, ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppMemo,
  ppVar, ppSubRpt, Mask, RxToolEdit, ppDesignLayer, ppDB, ppParameter, ppStrtch, ppClass, ppCache, ppComm, ppRelatv, ppProd, MemDS;

type
  TImpressao_FiscaisOP_CIAP = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cImpressora: TRadioGroup;
    cData: TDateEdit;
    StaticText1: TStaticText;
    tImobilizado: TMSQuery;
    tNotas: TMSQuery;
    rCIAP: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImobilizado: TppDBPipeline;
    dstImobilizado: TDataSource;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    lMesAno: TppLabel;
    ppShape4: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppEmpresas: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppLabel10: TppLabel;
    ppDBText4: TppDBText;
    ppLabel11: TppLabel;
    lEndereco: TppLabel;
    ppDBText5: TppDBText;
    ppMunicipios: TppDBPipeline;
    ppShape3: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    ppLine1: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine4: TppLine;
    dstNotas: TDataSource;
    ppDBText6: TppDBText;
    tNotasTotal_Produtos: TCurrencyField;
    tNotasTotal_Nota: TCurrencyField;
    ppDBText7: TppDBText;
    ppLabel18: TppLabel;
    ppDBText8: TppDBText;
    ppLine5: TppLine;
    ppLabel19: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine6: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine7: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    lDescricao: TppMemo;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine30: TppLine;
    ppLine17: TppLine;
    ppLabel26: TppLabel;
    lData: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine20: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    lSaldo: TppVariable;
    ppLine9: TppLine;
    tSaldo: TMSQuery;
    dstSaldo: TDataSource;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppSaldo: TppDBPipeline;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppShape6: TppShape;
    ppLabel4: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel28: TppLabel;
    ppLine33: TppLine;
    ppLabel44: TppLabel;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppLine34: TppLine;
    ppLabel51: TppLabel;
    ppLine35: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine36: TppLine;
    ppLabel55: TppLabel;
    ppLine37: TppLine;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine38: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel27: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLine39: TppLine;
    ppLabel29: TppLabel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    lMovimento: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ModeloC_MTC;
    procedure QuebraPagina;
    procedure Cabecalho;
    procedure Demonstrativo;
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lSaldoCalc(Sender: TObject; var Value: Variant);
    procedure rCIAPBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo  : TextFile;
    mNomeArq : String;
    mLinha   : Integer;
    mPagina  : Integer;
    mSaldo   : Currency;
  end;

var
  Impressao_FiscaisOP_CIAP: TImpressao_FiscaisOP_CIAP;

implementation

uses frmDMFiscal, frmDados, frmJanela_Processamento, frmImpressao_Visualizar, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FiscaisOP_CIAP.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_FiscaisOP_CIAP.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger( 'IMPRESSAO_CIAP', 'Impressora', 1);
      aINI.WriteDate   ( 'IMPRESSAO_CIAP', 'Data'      , cData.Date );
      aINI.Free;

      LimpaMemoria;
      Impressao_FiscaisOP_CIAP.Release;
      Impressao_FiscaisOP_CIAP := nil;
end;

procedure TImpressao_FiscaisOP_CIAP.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cImpressora.ItemIndex := aINI.ReadInteger('IMPRESSAO_CIAP', 'Impressora', 1 );
      cData.Date            := aINI.ReadDate   ('IMPRESSAO_CIAP', 'Data'      , Date );
      aINI.Free;
end;

procedure TImpressao_FiscaisOP_CIAP.bImprimirClick(Sender: TObject);
begin
       With Dados, dmFiscal do begin
            Empresas.SQL.Clear;
            Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
            Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
            Empresas.Open;
  
            Estados.Open;
            Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

            Municipios.Open;
            Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

            Natureza.SQL.Clear;
            Natureza.SQL.Add('SELECT * FROM Natureza');
            Natureza.Open;

            tImobilizado.SQL.Clear;
            {
            tImobilizado.SQL.Add('SELECT Cybersoft_Cadastros.dbo.Natureza.Codigo,');
            tImobilizado.SQL.Add('       NotasFiscais.Numero AS Nota,');
            tImobilizado.SQL.Add('       NotasFiscais.Saida_Entrada,');
            tImobilizado.SQL.Add('       NotasFiscais.Natureza_Codigo,');
            tImobilizado.SQL.Add('       NotasFiscais.Data_Emissao AS Data_EntradaSaida,');
            tImobilizado.SQL.Add('       NotasItens.Codigo_Mercadoria,' );
            tImobilizado.SQL.Add('       NotasItens.Descricao_Mercadoria,');
            tImobilizado.SQL.Add('       NotasItens.Valor_ICMSOper AS CIAP_ValorICMS' );
            tImobilizado.SQL.Add('FROM   Cybersoft_Cadastros.dbo.Natureza, NotasFiscais, NotasItens');
            tImobilizado.SQL.Add('WHERE  (NotasFiscais.Natureza_Codigo = Cybersoft_Cadastros.dbo.Natureza.Codigo AND Cybersoft_Cadastros.dbo.Natureza.Imobilizado = 1) AND (NotasItens.Nota = NotasFiscais.Numero) AND (NotasFiscais.Data_Emissao <= :pDataFim)' );
            tImobilizado.SQL.Add('UNION  ALL' );
            tImobilizado.SQL.Add('SELECT Cybersoft_Cadastros.dbo.Natureza.Codigo,');
            tImobilizado.SQL.Add('       NotasTerceiros.Nota,');
            tImobilizado.SQL.Add('       0,');
            tImobilizado.SQL.Add('       NotasTerceiros.Natureza_Codigo,');
            tImobilizado.SQL.Add('       NotasTerceiros.Data_Entrada,');
            tImobilizado.SQL.Add('       NotasTerceirosItens.Codigo_Mercadoria,');
            tImobilizado.SQL.Add('       NotasTerceirosItens.Descricao_Mercadoria,');
            tImobilizado.SQL.Add('       NotasTerceirosItens.CIAP_ValorICMS' );
            tImobilizado.SQL.Add('FROM   Cybersoft_Cadastros.dbo.Natureza, NotasTerceiros, NotasTerceirosItens' );
            tImobilizado.SQL.Add('WHERE  (NotasTerceiros.Natureza_Codigo = Cybersoft_Cadastros.dbo.Natureza.Codigo AND Cybersoft_Cadastros.dbo.Natureza.Imobilizado = 1) AND (NotasTerceirosItens.Nota = NotasTerceiros.Nota) AND (NotasTerceiros.Data_Entrada <= :pDataFim)' );
            }
            {
            tImobilizado.SQL.Add('SELECT (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais WHERE(Numero = Nota)) AS Natureza_Codigo,');
            tImobilizado.SQL.Add('       Nota,');
            tImobilizado.SQL.Add('       NotasItens.Saida_Entrada,');
            tImobilizado.SQL.Add('       Data AS Data_EntradaSaida,');
            tImobilizado.SQL.Add('       Codigo_Mercadoria,');
            tImobilizado.SQL.Add('       Descricao_Mercadoria,');
            tImobilizado.SQL.Add('       Valor_ICMSOper');
            tImobilizado.SQL.Add('FROM   NotasItens');
            tImobilizado.SQL.Add('WHERE (Data <= :pDataFim)');
            tImobilizado.SQL.Add('      AND (SELECT Imobilizado FROM Cybersoft_Cadastros.dbo.Natureza WHERE(Codigo = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais WHERE(Numero = NotasItens.Nota)))) = 1');
            tImobilizado.SQL.Add('UNION ALL');
            tImobilizado.SQL.Add('SELECT Natureza_Codigo,');
            tImobilizado.SQL.Add('       Nota,');
            tImobilizado.SQL.Add('       0,');
            tImobilizado.SQL.Add('       Data_Entrada,');
            tImobilizado.SQL.Add('       Codigo_Mercadoria,');
            tImobilizado.SQL.Add('       Descricao_Mercadoria,');
            tImobilizado.SQL.Add('       Valor_ICMSOper');
            tImobilizado.SQL.Add('FROM   NotasTerceirosItens');
            tImobilizado.SQL.Add('WHERE (Data_Entrada <= :pDataFim)');
            tImobilizado.SQL.Add('      AND (SELECT Imobilizado FROM Cybersoft_Cadastros.dbo.Natureza WHERE(Codigo = Natureza_Codigo)) = 1');
            }
            tImobilizado.SQL.Add('SELECT (SELECT DISTINCT Natureza_Codigo FROM NotasTerceirosItens WHERE(Nota = Imobilizado.Nota) AND (Codigo_Mercadoria = Imobilizado.Codigo)) AS Natureza_Codigo,');
            tImobilizado.SQL.Add('       Nota,');
            tImobilizado.SQL.Add('       0 AS Saida_Entrada,');
            tImobilizado.SQL.Add('       Data_Nota AS Data_EntradaSaida,');
            tImobilizado.SQL.Add('       Codigo AS Codigo_Mercadoria,');
            tImobilizado.SQL.Add('       Descricao AS Descricao_Mercadoria,');
            tImobilizado.SQL.Add('       ICMS_Proprio AS CIAP_ValorICMS,');
            tImobilizado.SQL.Add('       0 AS ICMS_Saida');
            tImobilizado.SQL.Add('FROM   Imobilizado');
            tImobilizado.SQL.Add('WHERE  (Data_Nota <= :pDataFim)');
            tImobilizado.SQL.Add('       AND Saida_Nota IS NULL');
            tImobilizado.SQL.Add('UNION ALL');
            tImobilizado.SQL.Add('SELECT (SELECT DISTINCT Natureza_Codigo FROM NotasTerceirosItens WHERE(Nota = Imobilizado.Nota) AND (Codigo_Mercadoria = Imobilizado.Codigo)),');
            tImobilizado.SQL.Add('       Nota,');
            tImobilizado.SQL.Add('       1,');
            tImobilizado.SQL.Add('       Saida_DataNota,');
            tImobilizado.SQL.Add('       Codigo,');
            tImobilizado.SQL.Add('       Descricao,');
            tImobilizado.SQL.Add('       0,');
            tImobilizado.SQL.Add('       ICMS_Proprio AS ICMS_Saida');
            tImobilizado.SQL.Add('FROM   Imobilizado');
            tImobilizado.SQL.Add('WHERE  (Data_Nota <= :pDataFim)');
            tImobilizado.SQL.Add('       AND Saida_Nota IS NOT NULL');
            tImobilizado.ParamByName('pDataFim').AsDate := cData.Date;
            tImobilizado.Open;

            tSaldo.SQL.Clear;
            tSaldo.SQL.Add('SELECT CASE WHEN MONTH(Data_Emissao) = 1 THEN ''JANEIRO  '' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 2 THEN ''FEVEREIRO'' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 3 THEN ''MARÇO    '' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 4 THEN ''ABRIL    '' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 5 THEN ''MAIO     '' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 6 THEN ''JUNHO    '' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 7 THEN ''JULHO    '' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 8 THEN ''AGOSTO   '' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 9 THEN ''SETEMBRO '' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =10 THEN ''OUTUBRO  '' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =11 THEN ''NOVEMBRO '' ');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =12 THEN ''DEZEMBRO '' ');
            tSaldo.SQL.Add('       END AS Mes,');
            tSaldo.SQL.Add('       SUM(Valor_TotalProdutos) AS Total_Produtos,');
            tSaldo.SQL.Add('       SUM(Valor_TotalNota) AS Total_Nota,');
            tSaldo.SQL.Add('       SUM(Valor_TotalProdutos) / SUM(Valor_TotalNota) AS Coeficiente,');
            tSaldo.SQL.Add('       CASE WHEN MONTH(Data_Emissao) = 1 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''01''+:pAno) AND (MONTH(Data_Nota) <= 1) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 2 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''02''+:pAno) AND (MONTH(Data_Nota) <= 2) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 3 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''03''+:pAno) AND (MONTH(Data_Nota) <= 3) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 4 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''04''+:pAno) AND (MONTH(Data_Nota) <= 4) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 5 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''05''+:pAno) AND (MONTH(Data_Nota) <= 5) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 6 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''06''+:pAno) AND (MONTH(Data_Nota) <= 6) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 7 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''07''+:pAno) AND (MONTH(Data_Nota) <= 7) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 8 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''08''+:pAno) AND (MONTH(Data_Nota) <= 8) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 9 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''09''+:pAno) AND (MONTH(Data_Nota) <= 9) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =10 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''10''+:pAno) AND (MONTH(Data_Nota) <=10) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =11 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''11''+:pAno) AND (MONTH(Data_Nota) <=11) )');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =12 THEN (SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''12''+:pAno) AND (MONTH(Data_Nota) <=12) )');
            tSaldo.SQL.Add('       END AS Saldo,');
            {
            tSaldo.SQL.Add('       ''1/''+ (SELECT CAST(Parcelas_CIAP AS varchar(3)) FROM Cybersoft_Cadastros.dbo.Configuracao) AS Fracao,');
            tSaldo.SQL.Add('       CASE WHEN MONTH(Data_Emissao) = 1 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''01''+:pAno) AND (MONTH(Data_Nota) <= 1)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 2 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''02''+:pAno) AND (MONTH(Data_Nota) <= 2)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 3 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''03''+:pAno) AND (MONTH(Data_Nota) <= 3)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 4 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''04''+:pAno) AND (MONTH(Data_Nota) <= 4)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 5 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''05''+:pAno) AND (MONTH(Data_Nota) <= 5)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 6 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''06''+:pAno) AND (MONTH(Data_Nota) <= 6)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 7 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''07''+:pAno) AND (MONTH(Data_Nota) <= 7)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 8 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''08''+:pAno) AND (MONTH(Data_Nota) <= 8)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 9 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''09''+:pAno) AND (MONTH(Data_Nota) <= 9)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =10 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''10''+:pAno) AND (MONTH(Data_Nota) <=10)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =11 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''11''+:pAno) AND (MONTH(Data_Nota) <=11)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =12 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''12''+:pAno) AND (MONTH(Data_Nota) <=12)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Cybersoft_Cadastros.dbo.Configuracao)');
}
            tSaldo.SQL.Add('       ''1/''+ (SELECT CAST(Parcelas_CIAP AS varchar(3)) FROM Configuracao) AS Fracao,');
            tSaldo.SQL.Add('       CASE WHEN MONTH(Data_Emissao) = 1 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''01''+:pAno) AND (MONTH(Data_Nota) <= 1)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 2 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''02''+:pAno) AND (MONTH(Data_Nota) <= 2)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 3 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''03''+:pAno) AND (MONTH(Data_Nota) <= 3)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 4 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''04''+:pAno) AND (MONTH(Data_Nota) <= 4)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 5 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''05''+:pAno) AND (MONTH(Data_Nota) <= 5)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 6 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''06''+:pAno) AND (MONTH(Data_Nota) <= 6)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 7 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''07''+:pAno) AND (MONTH(Data_Nota) <= 7)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 8 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''08''+:pAno) AND (MONTH(Data_Nota) <= 8)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) = 9 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''09''+:pAno) AND (MONTH(Data_Nota) <= 9)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =10 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''10''+:pAno) AND (MONTH(Data_Nota) <=10)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =11 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''11''+:pAno) AND (MONTH(Data_Nota) <=11)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');
            tSaldo.SQL.Add('            WHEN MONTH(Data_Emissao) =12 THEN ((SELECT SUM(ICMS_Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'''') <= ''12''+:pAno) AND (MONTH(Data_Nota) <=12)) * SUM(Valor_TotalProdutos)/SUM(Valor_TotalNota)) / ');
            tSaldo.SQL.Add('                (SELECT Parcelas_CIAP FROM Configuracao)');

            tSaldo.SQL.Add('       END AS Credito');
            tSaldo.SQL.Add('FROM   NotasFiscais');
            tSaldo.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAnoI) AND (Valor_ICMS > 0)');
            tSaldo.SQL.Add('GROUP BY YEAR(Data_Emissao), MONTH(Data_Emissao)');
            tSaldo.ParamByName('pAno').AsString   := PoeZero(4, YearOf(cData.Date));
            tSaldo.ParamByName('pAnoI').AsInteger := YearOf(cData.Date);
            tSaldo.Open;

            lMovimento.Visible := tImobilizado.RecordCount = 0;

            If tImobilizado.RecordCount <> 0 then begin
               If cImpressora.ItemIndex = 0 then begin
                  ModeloC_MTC;
               End else begin
                  rCIAP.Print;
                  rCIAP.FreeOnRelease;
               End;
            End else begin
               ShowMessage('Ativo Permanente de '+ EmpresasRazao_Social.AsString+' sem movimentação!'+#13+#13+'Verifique o período solicitado!');
               Abort;
            End;   
       End;
end;

procedure TImpressao_FiscaisOP_CIAP.ModeloC_MTC;
Var
    mDescricao   : String;
    mLinhaMemo   : Integer;
    mPos         : Integer;
    mQtdeLinha   : Integer;
    mInteiro     : Real;
    mFracao      : Real;
//    mCoeficiente : Real;
//    i            : Integer;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := tImobilizado.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Imprimindo o livro CIAP Modelo C...';
      Janela_Processamento.Show;

      With Dados, dmFiscal do begin
           Configuracao.Open;

           mLinha      := 0;
           mPagina     := 0;
           LinhaAtual  := 0;
           ColunaAtual := 0;
           mSaldo      := 0;
           
           tImobilizado.First;
           While (not tImobilizado.Eof) and (FUNCOES.Cancelado = False) do begin
                 // Cabeçalho do relatorio.
                 If mLinha = 0 then begin
                    Cabecalho;
                 End;

                 // Imprimindo linha de itens.
                 Say( mLinha,   1, Arquivo, '| ' + tImobilizado.FieldByName('Codigo_Mercadoria').AsString );
                 Say( mLinha,  13, Arquivo, '| ' + tImobilizado.FieldByName('Data_EntradaSaida').AsString );
                 Say( mLinha,  26, Arquivo, '| ' + PoeZero(10, tImobilizado.FieldByName('Nota').AsInteger) );

                 // Remove caracteres de controle como quebra de linha. . .
                 mDescricao := Trim(tImobilizado.FieldByName('Descricao_Mercadoria').AsString);
                 mDescricao := RemoveCaracter(#13, '', mDescricao);
                 mDescricao := RemoveCaracter(#12, '', mDescricao);
                 mDescricao := RemoveCaracter(#10, '', mDescricao);
                 
                 // Remove o código do produto de importação do SISCOMEX.
                 mDescricao := RemoveCaracter('<{'+ tImobilizado.FieldByName('Codigo_Mercadoria').AsString+'}>', '', mDescricao);
                 mInteiro   := Int(Length(mDescricao)/65);
                 mFracao    := Frac(Length(mDescricao)/65);
                 mQtdeLinha := 0;
                 If (mInteiro > 0) and (mFracao > 0) then mQtdeLinha := Round(mInteiro+1);
                 If Length(mDescricao) <= 65 then mQtdeLinha := 1;
                 If mQtdeLinha < 1 then mQtdeLinha := 1;

                 mPos := 1;

                 // Imprimindo a descrição do item.
                 For mLinhaMemo := 1 to mQtdeLinha do begin
                    Say( mLinha,  39, Arquivo, '| '+Copy(mDescricao,mPos,65) );
                    If mLinhaMemo < mQtdeLinha then begin
                       Say( mLinha, 107, Arquivo, '|' );
                       Say( mLinha, 124, Arquivo, '|' );
                       Say( mLinha, 141, Arquivo, '|' );
                       Say( mLinha, 158, Arquivo, '|' );
                       Inc(mLinha);
                       If (mLinha >= 60) or (tImobilizado.Eof) then begin
                          Say( mLinha, 0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ' );
                          QuebraPagina;
                          Cabecalho;
                       end;
                       Say( mLinha,   1, Arquivo, '|' );
                       Say( mLinha,  13, Arquivo, '|' );
                       Say( mLinha,  26, Arquivo, '|' );
                    End;
                    Inc(mPos,65);
                 End;
                 
                 // Verificando se o item tem parecela disponivel para credito.
                 If  tImobilizado.FieldByName('Saida_Entrada').AsInteger = 0 then begin
                     mSaldo := mSaldo + tImobilizado.FieldByName('CIAP_ValorICMS').AsCurrency;
                     Say( mLinha, 107, Arquivo, '| ' + PadR( FormatFloat('###,###,##0.00',tImobilizado.FieldByName('CIAP_ValorICMS').AsCurrency), 14) );
                     Say( mLinha, 124, Arquivo, '| ' );
                 End else begin
                     mSaldo := mSaldo - tImobilizado.FieldByName('CIAP_ValorICMS').AsCurrency;
                     Say( mLinha, 107, Arquivo, '|' );
                     Say( mLinha, 124, Arquivo, '| ' + PadR( FormatFloat('###,###,##0.00',tImobilizado.FieldByName('CIAP_ValorICMS').AsCurrency), 14) );
                 End;
                 Say( mLinha, 141, Arquivo, '| ' + PadR( FormatFloat('###,###,##0.00',mSaldo), 14));
                 Say( mLinha, 158, Arquivo, '|' );

                 Inc(mLinha);
                 tImobilizado.Next;
                 
                 // Quebra de pagina.
                 If (mLinha >= 60) or (tImobilizado.Eof) then begin
                    Say( mLinha, 0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ' );
                    // Montando o demonstrativo mensal.
                    If tImobilizado.Eof then begin
                       Demonstrativo;
                       // Apurando o faturamento dos meses.
                       {
                       For i := 1 to 12 do begin
                           Say( mLinha, 1, Arquivo, '|    '+UpperCase(RemoveAcentos(NomeMes(i)))+'       |' );
                           tNotas.SQL.Clear;
                           tNotas.SQL.Add('SELECT SUM(Valor_TotalProdutos) AS Total_Produtos, SUM(Valor_TotalNota) AS Total_Nota FROM NotasFiscais ' );
                           tNotas.SQL.Add('WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes AND Valor_ICMS <> 0)' );
                           tNotas.ParamByName('pAno').AsInteger := YearOf(cData.Date);
                           tNotas.ParamByName('pMes').AsInteger := i;
                           tNotas.Open;
                           If tNotas.FieldByName('Total_Produtos').AsCurrency <> 0 then begin
                              mCoeficiente := (tNotas.FieldByName('Total_Produtos').AsCurrency / tNotas.FieldByName('Total_Nota').AsCurrency);
                              Say( mLinha,  28, Arquivo, PadR( FormatFloat('###,###,###,##0.00', tNotas.FieldByName('Total_Produtos').AsCurrency ), 18));
                              Say( mLinha,  47, Arquivo, '|     '+PadR( FormatFloat('###,###,###,##0.00', tNotas.FieldByName('Total_Nota').AsCurrency ), 18));
                              Say( mLinha,  72, Arquivo, '|    ' );
                              Say( mLinha,  77, Arquivo, PadR( FormatFloat('####,##0.0000', mCoeficiente ), 13) );
                              Say( mLinha,  91, Arquivo, '|     '+PadR( FormatFloat('###,###,###,##0.00', mSaldo ), 18));
                              Say( mLinha, 116, Arquivo, '|     01/48');
                              Say( mLinha, 132, Arquivo, '|      ' + PadR( FormatFloat('###,###,###,##0.00', (mCoeficiente * mSaldo)/48), 18) );
                              Say( mLinha, 158, Arquivo, '|' );
                           End else begin
                              Say( mLinha,  47, Arquivo, '|' );
                              Say( mLinha,  72, Arquivo, '|' );
                              Say( mLinha,  91, Arquivo, '|' );
                              Say( mLinha, 116, Arquivo, '|' );
                              Say( mLinha, 132, Arquivo, '|' );
                              Say( mLinha, 158, Arquivo, '|' );
                           End;
                           Inc(mLinha);
                       End;
                       }
                       While not tSaldo.Eof do begin
                             Say( mLinha,   1, Arquivo, '|    '+UpperCase(tSaldo.FieldByName('Mes').AsString)+'       |' );
                             Say( mLinha,  28, Arquivo, PadR( FormatFloat('###,###,###,##0.00', tSaldo.FieldByName('Total_Produtos').AsCurrency ), 18));
                             Say( mLinha,  47, Arquivo, '|     '+PadR( FormatFloat('###,###,###,##0.00', tSaldo.FieldByName('Total_Nota').AsCurrency ), 18));
                             Say( mLinha,  72, Arquivo, '|    ' );
                             Say( mLinha,  77, Arquivo, PadR( FormatFloat('####,##0.0000', tSaldo.FieldByName('Coeficiente').AsFloat ), 13) );
                             Say( mLinha,  91, Arquivo, '|     '+PadR( FormatFloat('###,###,###,##0.00', tSaldo.FieldByName('Saldo').AsCurrency ), 18));
                             Say( mLinha, 116, Arquivo, '|     '+tSaldo.FieldByName('Fracao').AsString);
                             Say( mLinha, 132, Arquivo, '|      ' + PadR( FormatFloat('###,###,###,##0.00', tSaldo.FieldByName('Credito').AsCurrency), 18) );
                             Say( mLinha, 158, Arquivo, '|' );
                             Inc(mLinha);
                             tSaldo.Next
                       End;
                    End;
                    Say( mLinha,   0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ' );
                    QuebraPagina;
                 end;
           End;

           Janela_Processamento.Close;
           Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
           Impressao_Visualizar.mNome    := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_CIAP_PG';
           Impressao_Visualizar.Caption  := 'Cybersoft - Impressão de relatórios Fiscais';
           Impressao_Visualizar.mArquivo := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_CIAP_PG0001.TXT';
           Impressao_Visualizar.mTitulo  := 'LIVRO CIAP - (Modelo C)';
           Impressao_Visualizar.mPaginas := mPagina;
           Impressao_Visualizar.mPag     := 1;
           Impressao_Visualizar.ShowModal;
      End;
      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);
      DeletaRelatorios(Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_CIAP_PG', mPagina);
end;

procedure TImpressao_FiscaisOP_CIAP.QuebraPagina;
begin
      mLinha := 61;
      Say( mLinha,0    , Arquivo, 'ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ' );
      Say( mLinha+1,  0, Arquivo, ' Cybersoft Sistemas | '+ RemoveAcentos(Dados.EmpresasContador_Nome.Value)+ ' '+Dados.EmpresasContador_CRC.Value + '                         | ' );
      Say( mLinha+1, 56, Arquivo, RemoveAcentos(DataExtenso( Dados.MunicipiosNome.Value, Date)) );
      Say( mLinha+1,124, Arquivo, '| PAGINA:'+PoeZero(3, mPagina) );
      Say( mLinha+1,160, Arquivo, Chr(12) );
      mLinha      := 0;
      LinhaAtual  := 0;
      ColunaAtual := 0;
      CloseFile(Arquivo);
End;

procedure TImpressao_FiscaisOP_CIAP.Cabecalho;
begin
      Inc(mPagina);
      mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_CIAP_PG'+PoeZero(4, mPagina)+'.TXT';
      If FileExists(mNomeArq) then DeleteFile(mNomeArq);
      AssignFile(Arquivo, mNomeArq);
      ReWrite(Arquivo);

      Write(Arquivo, mComprime15);
      Say( mLinha   ,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
      Say( mLinha+01,   0, Arquivo, '| MES/ANO |                                              CONTROLE DE CREDITO DO ICMS DO ATIVO PERMANENTE (CIAP)                                              |' );
      Say( mLinha+02,   0, Arquivo, '| ' + PoeZero(2, MonthOf(cData.Date))+'/'+PoeZero(4,YearOf(cData.Date)) );
      Say( mLinha+02,  10, Arquivo, '|                                                                   MODELO C                                                                       |' );
      Say( mLinha+03,   0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ' );
      Say( mLinha+04,   0, Arquivo, '(01) IDENTIFICACAO DO CONTRIBUINTE' );
      Say( mLinha+05,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
      Say( mLinha+06,   0, Arquivo, '| NOME    : '+ RemoveAcentos(Dados.EmpresasRazao_Social.AsString) );
      Say( mLinha+06,  75, Arquivo, 'CNPJ  :'+FormatMaskText('99.999.999/9999-99;0; ', Dados.EmpresasCNPJ.Value) );
      Say( mLinha+06, 115, Arquivo, 'I.ESTADUAL:'+FormatMaskText( Dados.EstadosMascara_Inscricao.AsString , Dados.EmpresasIE.Value) );
      Say( mLinha+06, 157, Arquivo, '|' );
      Say( mLinha+07,   0, Arquivo, '| ENDERECO: '+ RemoveAcentos(Dados.EmpresasRua.AsString)+', '+Dados.EmpresasRua_Numero.AsString );
      Say( mLinha+07,  75, Arquivo, 'BAIRRO:'+RemoveAcentos(Dados.EmpresasBairro.AsString) );
      Say( mLinha+07, 115, Arquivo, 'MUNICIPIO :'+RemoveAcentos(Dados.MunicipiosNome.AsString ));
      Say( mLinha+07, 157, Arquivo, '|' );
      Say( mLinha+08,   0, Arquivo, 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ' );
      Say( mLinha+09,   0, Arquivo, '(02) DEMONSTRATIVO DA BASE DO CREDITO A SER APROPRIADO' );
      Say( mLinha+10,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
      Say( mLinha+11,   0, Arquivo, '|                                           IDENTIFICACAO DO BEM                                          |                  VALOR DO ICMS                   |' );
      Say( mLinha+12,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´' );
      Say( mLinha+13,   0, Arquivo, '|  CODIGO   |  DATA DA   |    NOTA    |                              DESCRICAO                            |     ENTRADA    |      SAIDA     |  SALDO ACUMUL  |' );
      Say( mLinha+14,   0, Arquivo, '|           |  ENTRADA   |   FISCAL   |                                                                   |    (CREDITO)   |     (BAIXA)    | (BASE CREDITO) |' );
      Say( mLinha+15,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´' );
      Inc(mLinha,16);
End;

procedure TImpressao_FiscaisOP_CIAP.Demonstrativo;
begin
      Inc(mLinha);
      Say( mLinha   ,   0, Arquivo, '(03) DEMONSTRATIVO DA APURACAO DO CREDITO A SER EFETIVAMENTE APROPRIADO' );
      Say( mLinha+01,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
      Say( mLinha+02,   0, Arquivo, '|                    |             OPERACOES E PRESTACOES              |   COEFICIENTE    |    SALDO  ACUMULADO    |     FRACAO    |      CREDITO  A SER     |' );
      Say( mLinha+03,   0, Arquivo, '|                    ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´   DE  CREDITO    |    BASE DO  CREDITO    |     MENSAL    |        APROPRIADO       |' );
      Say( mLinha+04,   0, Arquivo, '|        MES         | TRIBUTADAS/EXPORTACAO  |    TOTAL DAS SAIDAS    |                  |    A SER APROPRIADO    |               |                         |' );
      Say( mLinha+05,   0, Arquivo, '|                    |          (1)           |          (2)           |     (3= 1:2)     |          (4)           |      (5)      |        (6= 3x4:5)       |' );
      Say( mLinha+06,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´' );
      Inc(mLinha, 7);
end;


procedure TImpressao_FiscaisOP_CIAP.ppHeaderBand1BeforePrint( Sender: TObject);
begin
      With Dados do begin
           lEndereco.Caption := Trim(EmpresasRua.AsString)+', '+Trim(EmpresasRua_Numero.AsString);
      End;
end;

procedure TImpressao_FiscaisOP_CIAP.ppDetailBand1BeforePrint(Sender: TObject);
Var
    mDescricao : String;
begin
      lDescricao.Lines.Clear;
      mDescricao := tImobilizado.FieldByName('Descricao_Mercadoria').AsString;
      mDescricao := RemoveCaracter('<{'+ tImobilizado.FieldByName('Codigo_Mercadoria').AsString+'}>', '', mDescricao);
      lDescricao.Lines.Add( Trim(mDescricao) );
end;

procedure TImpressao_FiscaisOP_CIAP.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_CIAP.lSaldoCalc(Sender: TObject;var Value: Variant);
begin
      If tImobilizado.FieldByName('Saida_Entrada').AsInteger = 0 then
         Value := Value + tImobilizado.FieldByName('CIAP_ValorICMS').AsCurrency
      else
         Value := Value - tImobilizado.FieldByName('CIAP_ValorICMS').AsCurrency;
end;

procedure TImpressao_FiscaisOP_CIAP.rCIAPBeforePrint(Sender: TObject);
begin
      lMesAno.Caption := PoeZero(2, MonthOf(cData.Date))+'/'+PoeZero(4, YearOf(cData.Date));
end;

end.
