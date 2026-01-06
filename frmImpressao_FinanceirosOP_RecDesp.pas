unit frmImpressao_FinanceirosOP_RecDesp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, ppDBPipe, DB, ppCtrls, ppVar, ppBands, ppPrnabl,
  ppReport, DBAccess, MSAccess,StdCtrls, Vcl.ExtCtrls, RXCtrls, RXSpin,
  Funcoes, INIFiles, DateUtils, ComObj, ppDB, ppParameter, ppDesignLayer, ppClass, ppCache, ppComm, ppRelatv, ppProd, MemDS, Vcl.Mask;

type
  TImpressao_Financeiros_RecDesp = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    cZebrado: TCheckBox;
    cExcel: TCheckBox;
    cTipo: TRadioGroup;
    tMovimento: TMSQuery;
    rReceitasDespesas: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    ppShape12: TppShape;
    ppLabel15: TppLabel;
    lPeriodo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine10: TppLine;
    dstMovimento: TDataSource;
    pEmpresas: TppDBPipeline;
    pMovimento: TppDBPipeline;
    cTitulo: TCheckBox;
    StaticText8: TStaticText;
    cAno: TRxSpinEdit;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppShape11: TppShape;
    ppLabel11: TppLabel;
    ppShape13: TppShape;
    ppLabel12: TppLabel;
    ppShape14: TppShape;
    ppLabel13: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    lFaixa: TppShape;
    cMovimento: TCheckBox;
    cConsol: TCheckBox;
    tEmpresas: TMSQuery;
    cSituacao: TRadioGroup;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bImprimirClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Financeiros_RecDesp: TImpressao_Financeiros_RecDesp;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}


procedure TImpressao_Financeiros_RecDesp.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Financeiros_RecDesp.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório par a ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_P07', 'Tipo'      , cTipo.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_P07', 'Situacao'  , cSituacao.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_P07', 'Ano'       , cAno.AsInteger );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_P07', 'Titulo'    , cTitulo.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_P07', 'Zebrado'   , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_P07', 'Excel'     , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_P07', 'Movimento' , cMovimento.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_P07', 'Consolidar', cConsol.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);
     
      Impressao_Financeiros_RecDesp.Release;
      Impressao_Financeiros_RecDesp := nil;
end;

procedure TImpressao_Financeiros_RecDesp.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Financeiros_RecDesp.FormShow(Sender: TObject);
var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cTipo.ItemIndex     := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_P07', 'Tipo'      , 2 );
      cSituacao.ItemIndex := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_P07', 'Situacao'  , 0 );
      cAno.AsInteger      := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_P07', 'Ano'       , YearOf(Date) );
      cTitulo.Checked     := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_P07', 'Titulo'    , true );
      cZebrado.Checked    := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_P07', 'Zebrado'   , true );
      cExcel.Checked      := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_P07', 'Excel'     , false );
      cMovimento.Checked  := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_P07', 'Movimento' , false );
      cConsol.Checked     := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_P07', 'Consolidar', false );
      aINI.Free;
end;

procedure TImpressao_Financeiros_RecDesp.bImprimirClick(Sender: TObject);
Var
   mSQLMatriz,
   mSQLFilial: WideString;
begin
      Screen.Cursor := crSQLWait;
      
      Dados.Configuracao.Open;

      Dados.Empresas.SQL.Clear;
      Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
      Dados.Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
      Dados.Empresas.Open;

      tMovimento.SQL.Clear;
      If cSituacao.ItemIndex = 0 then begin
         tMovimento.SQL.Add('SELECT PR.Classificacao AS Codigo,');
         tMovimento.SQL.Add('       CF.Titulo,');
         tMovimento.SQL.Add('       CF.Codigo+''               ''+CF.Descricao AS Descricao,');
         tMovimento.SQL.Add('       Janeiro   = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) = 1 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Fevereiro = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) = 2 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Marco     = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) = 3 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Abril     = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) = 4 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Maio      = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) = 5 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Junho     = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) = 6 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Julho     = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) = 7 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Agosto    = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) = 8 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Setembro  = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) = 9 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Outubro   = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) =10 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Novembro  = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) =11 AND PB.Numero = PR.Numero),0),');
         tMovimento.SQL.Add('       Dezembro  = ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PB WHERE YEAR(PB.Data) = :pAno AND MONTH(PB.Data) =12 AND PB.Numero = PR.Numero),0)');
         tMovimento.SQL.Add('INTO   #TempBaixas');
         tMovimento.SQL.Add('FROM   PagarReceber PR,');
         If not Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
            tMovimento.SQL.Add('       ClassificacaoFinanceira CF');
         end else begin
            tMovimento.SQL.Add('       Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF');
         End;

         tMovimento.SQL.Add('WHERE  PR.Classificacao = CF.Codigo');
         tMovimento.SQL.Add('  AND  ISNULL(CF.Desativada, 0) = 0');
         If cTipo.ItemIndex = 0 then tMovimento.SQL.Add(' AND PR.Tipo = ''R'' ');
         If cTipo.ItemIndex = 1 then tMovimento.SQL.Add(' AND PR.Tipo = ''P'' ');
      end else begin
         tMovimento.SQL.Add('SELECT  CF.Codigo');
         tMovimento.SQL.Add('       ,CF.Titulo');
         tMovimento.SQL.Add('       ,Descricao = CF.Codigo+''               ''+CF.Descricao');
         tMovimento.SQL.Add('       ,Janeiro   = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) = 1), 0)');
         tMovimento.SQL.Add('       ,Fevereiro = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) = 2), 0)');
         tMovimento.SQL.Add('       ,Marco     = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) = 3), 0)');
         tMovimento.SQL.Add('       ,Abril     = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) = 4), 0)');
         tMovimento.SQL.Add('       ,Maio      = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) = 5), 0)');
         tMovimento.SQL.Add('       ,Junho     = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) = 6), 0)');
         tMovimento.SQL.Add('       ,Julho     = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) = 7), 0)');
         tMovimento.SQL.Add('       ,Agosto    = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) = 8), 0)');
         tMovimento.SQL.Add('       ,Setembro  = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) = 9), 0)');
         tMovimento.SQL.Add('       ,Outubro   = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) =10), 0)');
         tMovimento.SQL.Add('       ,Novembro  = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) =11), 0)');
         tMovimento.SQL.Add('       ,Dezembro  = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE PR.Classificacao = CF.Codigo AND YEAR(PR.Data_Vencimento) = :pAno AND MONTH(PR.Data_Vencimento) =12), 0)');
         tMovimento.SQL.Add('INTO   #TempBaixas');
         If not Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
            tMovimento.SQL.Add('FROM   ClassificacaoFinanceira CF');
         end else begin
            tMovimento.SQL.Add('FROM   Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF');
         End;
         tMovimento.SQL.Add('WHERE  ISNULL(CF.Desativada, 0) = 0');
         tMovimento.SQL.Add('  AND  ISNULL(CF.Titulo, 0) = 0');
         If cTipo.ItemIndex = 0 then tMovimento.SQL.Add(' AND CF.Tipo = ''R'' ');
         If cTipo.ItemIndex = 1 then tMovimento.SQL.Add(' AND CF.Tipo = ''P'' ');
      End;

      If cConsol.Checked = true then begin
         tEmpresas.SQL.Clear;
         tEmpresas.SQL.Add('SELECT Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
         tEmpresas.SQL.Add('FROM   Empresas WHERE(Codigo <> :pEmpresa) AND (Consolidar = 1) ORDER BY Numero_Filial');
         tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
         tEmpresas.Open;
         tEmpresas.First;

         mSQLMatriz := tMovimento.SQL.Text;
         mSQLMatriz := RemoveCaracter('INTO   #TempBaixas', '', mSQLMatriz);
         While not tEmpresas.Eof do begin
               If Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Dados.Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                  mSQLFilial := RemoveCaracter('PagarReceber PR'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber PR'       , mSQLMatriz);
                  mSQLFilial := RemoveCaracter('PagarReceberBaixas PB' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceberBaixas PB' , mSQLFilial);
                  If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                     mSQLFilial := RemoveCaracter('ClassificacaoFinanceira CF', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ClassificacaoFinanceira CF' , mSQLFilial);
                  End;
                  tMovimento.SQL.Add('UNION ALL');
                  tMovimento.SQL.Add(mSQLFilial);
               End;
               tEmpresas.Next;
         End;
      End;

      tMovimento.SQL.Add('SELECT Codigo,');
      tMovimento.SQL.Add('       Titulo,');
      tMovimento.SQL.Add('       Descricao,');
      tMovimento.SQL.Add('       SUM(Janeiro)   AS Janeiro,');
      tMovimento.SQL.Add('       SUM(Fevereiro) AS Fevereiro,');
      tMovimento.SQL.Add('       SUM(Marco)     AS Marco,');
      tMovimento.SQL.Add('       SUM(Abril)     AS Abril,');
      tMovimento.SQL.Add('       SUM(Maio)      AS Maio,');
      tMovimento.SQL.Add('       SUM(Junho)     AS Junho,');
      tMovimento.SQL.Add('       SUM(Julho)     AS Julho,');
      tMovimento.SQL.Add('       SUM(Agosto)    AS Agosto,');
      tMovimento.SQL.Add('       SUM(Setembro)  AS Setembro,');
      tMovimento.SQL.Add('       SUM(Outubro)   AS Outubro,');
      tMovimento.SQL.Add('       SUM(Novembro)  AS Novembro,');
      tMovimento.SQL.Add('       SUM(Dezembro)  AS Dezembro');
      tMovimento.SQL.Add('INTO #TempTotal');
      tMovimento.SQL.Add('FROM #TempBaixas');
      tMovimento.SQL.Add('GROUP BY Codigo, Titulo, Descricao');

      If cTitulo.Checked = true then begin
         If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
            tMovimento.SQL.Add('SELECT Codigo,');
            tMovimento.SQL.Add('       Titulo,');
            tMovimento.SQL.Add('       Codigo + ''               ''+Descricao AS Descricao,');
            tMovimento.SQL.Add('       (SELECT SUM(Janeiro)   FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Janeiro,');
            tMovimento.SQL.Add('       (SELECT SUM(Fevereiro) FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Fevereiro,');
            tMovimento.SQL.Add('       (SELECT SUM(Marco)     FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Marco,');
            tMovimento.SQL.Add('       (SELECT SUM(Abril)     FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Abril,');
            tMovimento.SQL.Add('       (SELECT SUM(Maio)      FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Maio,');
            tMovimento.SQL.Add('       (SELECT SUM(Junho)     FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Junho,');
            tMovimento.SQL.Add('       (SELECT SUM(Julho)     FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Julho,');
            tMovimento.SQL.Add('       (SELECT SUM(Agosto)    FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Agosto,');
            tMovimento.SQL.Add('       (SELECT SUM(Setembro)  FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Setembro,');
            tMovimento.SQL.Add('       (SELECT SUM(Outubro)   FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Outubro,');
            tMovimento.SQL.Add('       (SELECT SUM(Novembro)  FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Novembro,');
            tMovimento.SQL.Add('       (SELECT SUM(Dezembro)  FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Dezembro');
            tMovimento.SQL.Add('INTO   #TempTitulos');
            tMovimento.SQL.Add('FROM   ClassificacaoFinanceira');
         end else begin
            tMovimento.SQL.Add('SELECT Codigo,');
            tMovimento.SQL.Add('       Titulo,');
            tMovimento.SQL.Add('       Codigo + ''               ''+Descricao AS Descricao,');
            tMovimento.SQL.Add('       (SELECT SUM(Janeiro)   FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Janeiro,');
            tMovimento.SQL.Add('       (SELECT SUM(Fevereiro) FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Fevereiro,');
            tMovimento.SQL.Add('       (SELECT SUM(Marco)     FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Marco,');
            tMovimento.SQL.Add('       (SELECT SUM(Abril)     FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Abril,');
            tMovimento.SQL.Add('       (SELECT SUM(Maio)      FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Maio,');
            tMovimento.SQL.Add('       (SELECT SUM(Junho)     FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Junho,');
            tMovimento.SQL.Add('       (SELECT SUM(Julho)     FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Julho,');
            tMovimento.SQL.Add('       (SELECT SUM(Agosto)    FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Agosto,');
            tMovimento.SQL.Add('       (SELECT SUM(Setembro)  FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Setembro,');
            tMovimento.SQL.Add('       (SELECT SUM(Outubro)   FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Outubro,');
            tMovimento.SQL.Add('       (SELECT SUM(Novembro)  FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Novembro,');
            tMovimento.SQL.Add('       (SELECT SUM(Dezembro)  FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(Cybersoft_Cadastros.dbo.ClassificacaoFinanceira.Codigo))+''%'')) AS Dezembro');
            tMovimento.SQL.Add('INTO   #TempTitulos');
            tMovimento.SQL.Add('FROM   Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
         End;
         tMovimento.SQL.Add('WHERE (Titulo = 1) AND (Desativada <> 1) ');
         If cTipo.ItemIndex = 0 then tMovimento.SQL.Add(' AND (Tipo = ''R'')');
         If cTipo.ItemIndex = 1 then tMovimento.SQL.Add(' AND (Tipo = ''P'')');
      End;

      If cMovimento.Checked then begin
         tMovimento.SQL.Add('SELECT Codigo,');
         tMovimento.SQL.Add('       Titulo,');
         tMovimento.SQL.Add('       Codigo + ''               ''+Descricao AS Descricao,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Janeiro,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Fevereiro,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Marco,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Abril,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Maio,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Junho,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Julho,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Agosto,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Setembro,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Outubro,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Novembro,');
         tMovimento.SQL.Add('       CAST(0 AS money) AS Dezembro');
         tMovimento.SQL.Add('INTO   #TempZeradas');
         tMovimento.SQL.Add('FROM   ClassificacaoFinanceira');
         tMovimento.SQL.Add('WHERE (Titulo = 0) AND (ISNULL(Desativada, 0) = 0) AND (Codigo NOT IN((SELECT DISTINCT Codigo FROM #TempTotal))) ');

         If cTipo.ItemIndex = 0 then tMovimento.SQL.Add(' AND (Tipo = ''R'')');
         If cTipo.ItemIndex = 1 then tMovimento.SQL.Add(' AND (Tipo = ''P'')');
      End;

      tMovimento.SQL.Add('SELECT #TempTotal.*, (Janeiro+Fevereiro+Marco+Abril+Maio+Junho+Julho+Agosto+Setembro+Outubro+Novembro+Dezembro) AS Total FROM #TempTotal');
      If cMovimento.Checked = true then begin
         tMovimento.SQL.Add('UNION ALL');
         tMovimento.SQL.Add('SELECT #TempZeradas.*, (Janeiro+Fevereiro+Marco+Abril+Maio+Junho+Julho+Agosto+Setembro+Outubro+Novembro+Dezembro) AS Total FROM #TempZeradas');
      End;   
      If cTitulo.Checked = true then begin
         tMovimento.SQL.Add('UNION ALL');
         tMovimento.SQL.Add('SELECT #TempTitulos.*, (Janeiro+Fevereiro+Marco+Abril+Maio+Junho+Julho+Agosto+Setembro+Outubro+Novembro+Dezembro) AS Total FROM #TempTitulos');
      End;   

      tMovimento.SQL.Add('ORDER BY Descricao, Titulo Desc');
      tMovimento.ParamByName('pAno').AsInteger := cAno.AsInteger;
      //tMovimento.SQL.SaveToFile('c:\temp\Receita_x_Despesas.SQL');
      tMovimento.Open;

      Screen.Cursor := crDefault;

      If cConsol.Checked then
         lTitulo.Caption := 'Receitas x Despesas (Consolidado)'
      else
         lTitulo.Caption := 'Receitas x Despesas ';

      If cTipo.ItemIndex = 0 then lPeriodo.Caption := 'Ano de '+cAno.Text + ' (Receitas)';
      If cTipo.ItemIndex = 1 then lPeriodo.Caption := 'Ano de '+cAno.Text + ' (Despesas)';
      If cTipo.ItemIndex = 2 then lPeriodo.Caption := 'Ano de '+cAno.Text + ' (Receitas e Despesas)';

      If cSituacao.ItemIndex = 0 then
         lPeriodo.Caption := lPeriodo.Caption + ' - '+'Baixados'
      else
         lPeriodo.Caption := lPeriodo.Caption + ' - '+'Abertos';

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rReceitasDespesas.Print;
         rReceitasDespesas.FreeOnRelease;
         rReceitasDespesas.Reset;
      end else begin
         ExportaEXCEL;
      End;
end;

procedure TImpressao_Financeiros_RecDesp.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then
         lFaixa.Visible := not lFaixa.Visible
      else
         lFaixa.Visible := False;

      ppDBText1.Font.Style  := [];
      ppDBText2.Font.Style  := [];
      ppDBText3.Font.Style  := [];
      ppDBText4.Font.Style  := [];
      ppDBText5.Font.Style  := [];
      ppDBText6.Font.Style  := [];
      ppDBText7.Font.Style  := [];
      ppDBText8.Font.Style  := [];
      ppDBText9.Font.Style  := [];
      ppDBText10.Font.Style := [];
      ppDBText11.Font.Style := [];
      ppDBText12.Font.Style := [];
      ppDBText14.Font.Style := [];
      ppDBText15.Font.Style := [];
      ppDBText16.Font.Style := [];

      If tMovimento.FieldByName('Titulo').AsBoolean = true then begin
         ppDBText1.Font.Style  := [fsBold];
         ppDBText2.Font.Style  := [fsBold];
         ppDBText3.Font.Style  := [fsBold];
         ppDBText4.Font.Style  := [fsBold];
         ppDBText5.Font.Style  := [fsBold];
         ppDBText6.Font.Style  := [fsBold];
         ppDBText7.Font.Style  := [fsBold];
         ppDBText8.Font.Style  := [fsBold];
         ppDBText9.Font.Style  := [fsBold];
         ppDBText10.Font.Style := [fsBold];
         ppDBText11.Font.Style := [fsBold];
         ppDBText12.Font.Style := [fsBold];
         ppDBText14.Font.Style := [fsBold];
         ppDBText15.Font.Style := [fsBold];
         ppDBText16.Font.Style := [fsBold];
      End;
end;

// Envia informações para o excel.
procedure TImpressao_Financeiros_RecDesp.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
   mZebra   : Boolean;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tMovimento.RecordCount;
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

       mPlanilha.Cells[3,01] := 'CLASSIFICAÇÃO FINANCEIRA';
       mPlanilha.Cells[3,02] := 'JANEIRO';
       mPlanilha.Cells[3,03] := 'FEVEREIRO';
       mPlanilha.Cells[3,04] := 'MARÇO';
       mPlanilha.Cells[3,05] := 'ABRIL';
       mPlanilha.Cells[3,06] := 'MAIO';
       mPlanilha.Cells[3,07] := 'JUNHO';
       mPlanilha.Cells[3,08] := 'JULHO';
       mPlanilha.Cells[3,09] := 'AGOSTO';
       mPlanilha.Cells[3,10] := 'SETEMBRO';
       mPlanilha.Cells[3,11] := 'OUTUBRO';
       mPlanilha.Cells[3,12] := 'NOVEMBRO';
       mPlanilha.Cells[3,13] := 'DEZEMBRO';
       mPlanilha.Cells[3,14] := 'TOTAL';

       mPlanilha.Range['A3','N3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','N3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','N3'].Font.Size           := 8;

       mLinha   := 4;
       mZebra   := false;

       While (not tMovimento.Eof) and (not Funcoes.Cancelado) do begin
             mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Size := 8;

             If tMovimento.FieldByName('Titulo').AsBoolean = true then begin
                mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Bold := true;
             End;

             mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Size := 8;

             mPlanilha.Cells[mLinha,01] := tMovimento.FieldByName('Descricao').AsString;
             mPlanilha.Cells[mLinha,02] := tMovimento.FieldByName('Janeiro').AsCurrency;
             mPlanilha.Cells[mLinha,03] := tMovimento.FieldByName('Fevereiro').AsCurrency;
             mPlanilha.Cells[mLinha,04] := tMovimento.FieldByName('Marco').AsCurrency;
             mPlanilha.Cells[mLinha,05] := tMovimento.FieldByName('Abril').AsCurrency;
             mPlanilha.Cells[mLinha,06] := tMovimento.FieldByName('Maio').AsCurrency;
             mPlanilha.Cells[mLinha,07] := tMovimento.FieldByName('Junho').AsCurrency;
             mPlanilha.Cells[mLinha,08] := tMovimento.FieldByName('Julho').AsCurrency;
             mPlanilha.Cells[mLinha,09] := tMovimento.FieldByName('Agosto').AsCurrency;
             mPlanilha.Cells[mLinha,10] := tMovimento.FieldByName('Setembro').AsCurrency;
             mPlanilha.Cells[mLinha,11] := tMovimento.FieldByName('Outubro').AsCurrency;
             mPlanilha.Cells[mLinha,12] := tMovimento.FieldByName('Novembro').AsCurrency;
             mPlanilha.Cells[mLinha,13] := tMovimento.FieldByName('Dezembro').AsCurrency;
             mPlanilha.Cells[mLinha,14] := tMovimento.FieldByName('Total').AsCurrency;

             mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';
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

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             tMovimento.Next;
             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       mPlanilha.Columns.Autofit;

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','A1'].Font.Size  := 14;
       mPlanilha.Range['A1','A1'].Font.Bold  := true;
       mPlanilha.Range['A1','N1'].Mergecells := True;
       mPlanilha.Range['A1','N1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Receitas x Despesas ('+cAno.Text+')';
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','N2'].Mergecells := True;
       mPlanilha.Range['A2','N2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


end.




