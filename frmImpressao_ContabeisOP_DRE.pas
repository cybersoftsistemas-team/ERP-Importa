unit frmImpressao_ContabeisOP_DRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter,
  ppBands, ppClass, ppReport, ppVar, ppCtrls,  ppPrnabl, RxLookup, Vcl.StdCtrls, Mask,
   Vcl.ExtCtrls, RXCtrls, Buttons, Funcoes, INIFiles,
  RxToolEdit, MemDS, ppDB, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_ContabeisOP_DRE = class(TForm)
    Image1: TImage;
    bLimparEmpresa: TSpeedButton;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cEmpresa: TRxDBLookupCombo;
    rDRE: TppReport;
    ppHeaderBand1: TppHeaderBand;
    lTitulo: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    lPeriodo: TppLabel;
    iLogo: TppImage;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine8: TppLine;
    ppDetailBand1: TppDetailBand;
    lSaldoAtual: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine4: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppSystemVariable2: TppSystemVariable;
    ppParameterList1: TppParameterList;
    pDRE: TppDBPipeline;
    ppEmpresas: TppDBPipeline;
    tLanc: TMSQuery;
    tEmpresas: TMSQuery;
    tEmpresasCodigo: TIntegerField;
    tEmpresasCNPJ: TStringField;
    tEmpresasRazao_Social: TStringField;
    tEmpresasNumero_Filial: TSmallintField;
    tEmpresasEstado: TStringField;
    dstEmpresas: TDataSource;
    tDRE: TMSQuery;
    dstDRE: TDataSource;
    lDescricao: TppDBText;
    lLinha1: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    lLinha2: TppLine;
    cZeradas: TCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bLimparEmpresaClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ContabeisOP_DRE: TImpressao_ContabeisOP_DRE;

implementation

uses frmDados, frmMenu_Principal, frmDMContab;

{$R *.dfm}

procedure TImpressao_ContabeisOP_DRE.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_ContabeisOP_DRE.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ( 'IMPRESSAO_DRE', 'DataIni'          , cDataIni.Date );
      aINI.WriteDate   ( 'IMPRESSAO_DRE', 'DataFim'          , cDataFim.Date );
      If cEmpresa.KeyValue > 0 then
         aINI.WriteInteger( 'IMPRESSAO_DRE', 'Empresa', cEmpresa.KeyValue )
      else
         aINI.WriteInteger( 'IMPRESSAO_DRE', 'Empresa', -1 );
      aINI.Free;

      LimpaMemoria;
      Impressao_ContabeisOP_DRE.Release;
      Impressao_ContabeisOP_DRE:= nil;
end;

procedure TImpressao_ContabeisOP_DRE.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ContabeisOP_DRE.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                      := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date             := aINI.ReadDate   ('IMPRESSAO_DRE', 'DataIni', Date );
      cDataFim.Date             := aINI.ReadDate   ('IMPRESSAO_DRE', 'DataFim', Date );
      cEmpresa.KeyValue         := aINI.ReadInteger('IMPRESSAO_DRE', 'Empresa', -1);
      aINI.Free;

      tEmpresas.SQL.Clear;
      tEmpresas.SQL.Add('SELECT Codigo,');
      tEmpresas.SQL.Add('       SUBSTRING(CNPJ,1,2)+''.''+SUBSTRING(CNPJ,3,3)+''.''+SUBSTRING(CNPJ,6,3)+''/''+SUBSTRING(CNPJ,9,4)+''-''+SUBSTRING(CNPJ,13,2) AS CNPJ,');
      tEmpresas.SQL.Add('       Razao_Social,');
      tEmpresas.SQL.Add('       Numero_Filial,');
      tEmpresas.SQL.Add('       Estado');
      tEmpresas.SQL.Add('FROM   Empresas');
      tEmpresas.SQL.Add('WHERE ISNULL(Desativada, 0) = 0');
      tEmpresas.SQL.Add('ORDER BY CNPJ');
      tEmpresas.Open;

end;

procedure TImpressao_ContabeisOP_DRE.bLimparEmpresaClick(Sender: TObject);
begin
      cEmpresa.ClearValue;
end;

procedure TImpressao_ContabeisOP_DRE.bImprimirClick(Sender: TObject);
begin
      with Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           tDRE.SQL.Clear;
           tDRE.SQL.Add('-- PLANO NORMAL --');
           tDRE.SQL.Add('SELECT PC.Conta');
           tDRE.SQL.Add('      ,PC.Codigo');
           tDRE.SQL.Add('      ,PC.Nivel');
           tDRE.SQL.Add('      ,PC.Descricao');
           tDRE.SQL.Add('      ,PC.Sintetica');
           tDRE.SQL.Add('      ,PC.Saldo_Anterior');
           tDRE.SQL.Add('      ,PC.Tipo_Terceiros');
           tDRE.SQL.Add('      ,PC.Codigo_Terceiros');
           tDRE.SQL.Add('      ,PC.Natureza');
           tDRE.SQL.Add('      ,Atualiza_Anterior = CASE WHEN PC.Natureza = ''C'' THEN');
           tDRE.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) -');
           tDRE.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) +');
           tDRE.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
           tDRE.SQL.Add('                           ELSE');
           tDRE.SQL.Add('                                ISNULL(PC.Saldo_Anterior, 0) +');
           tDRE.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0) -');
           tDRE.SQL.Add('                                ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
           tDRE.SQL.Add('                           END');
           tDRE.SQL.Add('      ,Atualiza_Debito   = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data < :pDataIni), 0)');
           tDRE.SQL.Add('      ,Atualiza_Credito  = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data < :pDataIni), 0)');
           tDRE.SQL.Add('      ,Debito            = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim AND Tipo_Documento <> ''LE''), 0)');
           tDRE.SQL.Add('      ,Credito           = ISNULL((SELECT SUM(Valor) FROM Lancamentos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codigo AND LAN.Data BETWEEN :pDataIni AND :pDataFim AND Tipo_Documento <> ''LE''), 0)');
           tDRE.SQL.Add('      ,Saldo_Atual       = CAST(0 AS money)');
           tDRE.SQL.Add('      ,DC_Anterior       = '' '' ');
           tDRE.SQL.Add('      ,DC_Atual          = '' '' ');
           tDRE.SQL.Add('      ,DRE');
           tDRE.SQL.Add('INTO   #PlanoTmp');
           tDRE.SQL.Add('FROM   PlanoContas PC');
           tDRE.SQL.Add('WHERE  Conta IS NOT NULL');
           tDRE.SQL.Add('-- TOTALIZANDO CONTAS TITULO --');
           tDRE.SQL.Add('UPDATE #PlanoTmp SET Debito            = ISNULL((SELECT SUM(Debito           ) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
           tDRE.SQL.Add('                    ,Credito           = ISNULL((SELECT SUM(Credito          ) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
           tDRE.SQL.Add('                    ,Atualiza_Anterior = ISNULL((SELECT SUM(Atualiza_Anterior) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#PlanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
           tDRE.SQL.Add('WHERE(#PlanoTmp.Sintetica = 1)');
           tDRE.SQL.Add('-- APURANDO SALDO ATUAL --');
           tDRE.SQL.Add('UPDATE #PlanoTmp SET Saldo_Atual = CASE WHEN #PlanoTmp.Natureza = ''C'' THEN');
           tDRE.SQL.Add('                                        CAST((Atualiza_Anterior - Debito + Credito) AS DECIMAL(14,2))');
           tDRE.SQL.Add('                                   ELSE');
           tDRE.SQL.Add('                                        CAST((Atualiza_Anterior + Debito - Credito) AS DECIMAL(14,2))');
           tDRE.SQL.Add('                                   END');
           tDRE.SQL.Add('-- AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" --');
           tDRE.SQL.Add('UPDATE #PlanoTmp SET DC_Anterior = CASE WHEN Natureza = ''D'' THEN');
           tDRE.SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''D'' ELSE ''C'' END');
           tDRE.SQL.Add('                                   ELSE');
           tDRE.SQL.Add('                                        CASE WHEN Atualiza_Anterior >= 0 THEN ''C'' ELSE ''D'' END');
           tDRE.SQL.Add('                                   END');
           tDRE.SQL.Add('                    ,DC_Atual    = CASE WHEN Natureza = ''D'' THEN');
           tDRE.SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''D'' ELSE ''C'' END');
           tDRE.SQL.Add('                                   ELSE');
           tDRE.SQL.Add('                                        CASE WHEN Saldo_Atual >= 0 THEN ''C'' ELSE ''D'' END');
           tDRE.SQL.Add('                                   END');
           tDRE.SQL.Add('-- MONTANDO A DRE');
           tDRE.SQL.Add('SELECT Codigo'); 
           tDRE.SQL.Add('      ,Descricao');
           tDRE.SQL.Add('      ,Saldo_Atual = ISNULL((SELECT SUM(Saldo_Atual) FROM #PlanoTmp WHERE #PlanoTmp.DRE = DCG.Codigo), 0)');
           tDRE.SQL.Add('      ,Totalizador');
           tDRE.SQL.Add('      ,Calculo');
           tDRE.SQL.Add('INTO #DRETemp');
           tDRE.SQL.Add('FROM   DREContabilGrupos DCG');
           tDRE.SQL.Add('INSERT INTO #DRETemp VALUES(1000, ''RECEITAS OPERACIONAIS LÍQUIDAS''       , 0, 1,''='')');
           tDRE.SQL.Add('INSERT INTO #DRETemp VALUES(1001, ''LUCRO BRUTO / RESULTADO BRUTO''        , 0, 2,''='')');
           tDRE.SQL.Add('INSERT INTO #DRETemp VALUES(1002, ''LUCRO OU PREJUÍZO OPERACIONAL''        , 0, 3,''='')');
           tDRE.SQL.Add('INSERT INTO #DRETemp VALUES(1003, ''RESULTADO DO EXERCÍCIO ANTES DO I.R.'' , 0, 4,''='')');
           tDRE.SQL.Add('INSERT INTO #DRETemp VALUES(1004, ''RESULTADO DO EXERCÍCIO DEPOIS DO I.R.'', 0, 5,''='')');
           //tDRE.SQL.Add('UPDATE #DRETemp SET Saldo_Atual = (SELECT SUM(CASE WHEN Calculo = ''+'' THEN Saldo_Atual ELSE Saldo_Atual *-1 END) FROM #DRETemp Tmp2 WHERE Tmp2.Totalizador = #DRETemp.Totalizador)');
           tDRE.SQL.Add('UPDATE #DRETemp SET Saldo_Atual = (SELECT SUM(Saldo_Atual) FROM #DRETemp Tmp2 WHERE Tmp2.Totalizador = #DRETemp.Totalizador)');
           tDRE.SQL.Add('WHERE Codigo >= 1000');
           tDRE.SQL.Add('UPDATE #DRETemp SET Saldo_Atual = ISNULL((SELECT SUM(Saldo_Atual) FROM #DRETemp Tmp2 WHERE Tmp2.Codigo >= 1000 AND Tmp2.Codigo <= #DRETemp.Codigo), 0)');
           tDRE.SQL.Add('WHERE Codigo > 1000');
           tDRE.SQL.Add('SELECT * FROM #DRETemp');
           if cZeradas.Checked then begin
              tDRE.SQL.Add('WHERE Saldo_Atual <> 0');
           end;
           tDRE.SQL.Add('ORDER BY Totalizador, Codigo');
           tDRE.SQL.Add('DROP TABLE #PlanoTmp, #DRETemp');
           tDRE.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tDRE.ParamByName('pDataFim').AsDate := cDataFim.Date;
           //tDRE.SQL.SaveToFile('c:\Temp\Impressao_DRE.SQL');
           tDRE.Open;

           lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a '+cDataFim.Text;
           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;
           //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);

           rDRE.Print;
           rDRE.Reset;
      end;
end;

procedure TImpressao_ContabeisOP_DRE.ppDetailBand1BeforePrint(Sender: TObject);
begin
      lDescricao.Font.Style  := [];
      lSaldoAtual.Font.Style := [];
      lLinha1.Visible        := false;
      lLinha2.Visible        := false;
      ppDetailBand1.Background1.Brush.Color := clWhite;
      if tDRE.FieldByName('Codigo').AsInteger >= 1000 then begin
         lLinha1.Visible        := tDRE.FieldByName('Codigo').AsInteger >= 1000;
         lLinha2.Visible        := tDRE.FieldByName('Codigo').AsInteger >= 1000;
         lDescricao.Font.Style  := [fsBold];
         lSaldoAtual.Font.Style := [fsBold];
         ppDetailBand1.Background1.Brush.Color := $00E5E5E5;
      end;
end;

end.
