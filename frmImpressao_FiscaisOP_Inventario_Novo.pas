unit frmImpressao_FiscaisOP_Inventario_Novo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, ppDBPipe, ppParameter, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl,
  ppReport, DB, DBAccess, MSAccess, RXSpin, RxLookup, Mask, Vcl.StdCtrls, Buttons, IniFiles, ppMemo, Funcoes,
  ComObj, RxToolEdit, MemDS, ppDB, ppDesignLayer, ppStrtch, ppCache, ppComm, ppRelatv, ppProd;


type
  TImpressao_FiscaisOP_Inventario_Novo = class(TForm)
    bLimparForma: TSpeedButton;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    dstInventario: TDataSource;
    rFichaInventario: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppParameterList1: TppParameterList;
    Ded_Pagina: TppParameter;
    pEmpresas: TppDBPipeline;
    pInventario: TppDBPipeline;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBText3: TppDBText;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppShape1: TppShape;
    lTitulo: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    lFolha: TppLabel;
    lPeriodo: TppLabel;
    ppLabel17: TppLabel;
    ppLine8: TppLine;
    ppLabel20: TppLabel;
    ppLabel32: TppLabel;
    ppLabel35: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel9: TppLabel;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppLine17: TppLine;
    ppLabel11: TppLabel;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppLine3: TppLine;
    ppLine10: TppLine;
    cQtde_Saldo: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppLine11: TppLine;
    StaticText5: TStaticText;
    cNCM: TMaskEdit;
    StaticText3: TStaticText;
    cPaginaIni: TRxSpinEdit;
    cInventario: TRadioGroup;
    cExcel: TCheckBox;
    cOrdem: TRadioGroup;
    ppFooterBand1: TppFooterBand;
    ppLine23: TppLine;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine24: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine25: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    cTotalQtdeArm: TppVariable;
    cTotalQtdeTer: TppVariable;
    cTotalValPro: TppVariable;
    cTotalValArm: TppVariable;
    cTotalValTer: TppVariable;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape3: TppShape;
    lInventarioT: TppLabel;
    cQtdeSaldo: TppDBCalc;
    cValorSaldo: TppDBCalc;
    ppLabel18: TppLabel;
    ppLine14: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    cSituacao: TRadioGroup;
    ppLine18: TppLine;
    ppShape4: TppShape;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppShape5: TppShape;
    ppLine12: TppLine;
    ppLine16: TppLine;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLine26: TppLine;
    tProcessos: TMSQuery;
    tInventario: TMSQuery;
    cCodigo: TMaskEdit;
    cTotalQtdePro: TppVariable;
    ppDBText4: TppDBText;
    StaticText9: TStaticText;
    cTipoProd: TRxDBLookupCombo;
    cIPI: TRadioGroup;
    ppDBMemo1: TppDBMemo;
    lMovimento: TppLabel;
    cTerceiros: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bLimparFormaClick(Sender: TObject);
    procedure rFichaInventarioBeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ExportaEXCEL;
    procedure cCodigoExit(Sender: TObject);
    procedure cProdutoChange(Sender: TObject);
    procedure cQtdeSaldoCalc(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mTotalQtdePro  : Real;
    mTotalPro      : Currency;
    mTotalQtdeTer  : Real;
    mTotalTer      : Currency;
    mTotalQtdeOut  : Real;
    mTotalOut      : Currency;
  end;

var
  Impressao_FiscaisOP_Inventario_Novo: TImpressao_FiscaisOP_Inventario_Novo;

implementation

uses frmDados, frmMenu_Principal, frmDMFiscal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_FiscaisOP_Inventario_Novo.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_Inventario_Novo.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ( 'IMPRESSAO_Ficha_Inventario','DataFim', cDataFim.Date);
      If cProduto.KeyValue <> null then
         aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','Produto', cProduto.KeyValue)
      else
         aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','Produto', 0);

      If cTipoProd.KeyValue <> null then
         aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','TipoProduto', cTipoProd.KeyValue)
      else
         aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','TipoProduto', 0);
         
      aINI.WriteString ( 'IMPRESSAO_Ficha_Inventario','NCM', cNCM.Text);
      aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','PaginaIni' , cPaginaIni.AsInteger);
      aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','Inventario', cInventario.ItemIndex);
      aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','Ordem'     , cOrdem.ItemIndex);
      aINI.WriteInteger( 'IMPRESSAO_Ficha_Inventario','Situacao'  , cSituacao.ItemIndex);
      aINI.WriteBool   ( 'IMPRESSAO_Ficha_Inventario','Excel'     , cExcel.Checked);
      aINI.WriteBool   ( 'IMPRESSAO_Ficha_Inventario','Terceiros' , cTerceiros.Checked);
      aINI.Free;
      
      Impressao_FiscaisOP_Inventario_Novo.Release;
      Impressao_FiscaisOP_Inventario_Novo := nil;
end;

procedure TImpressao_FiscaisOP_Inventario_Novo.bSairClick(Sender: TObject);
begin
     Close;
end;

(*
procedure TImpressao_FiscaisOP_Inventario_Novo.bImprimirClick(Sender: TObject);
begin
      //With Dados do begin
           Screen.Cursor := crSQLWait;
           
           Dados.Empresas.SQL.Clear;
           Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Dados.Empresas.Open;

           tInventario.SQL.Clear;
           tInventario.SQL.Add('-- MERCADORIA PRÓPRIA.');
           tInventario.SQL.Add('SELECT  FI1.Registro');
           tInventario.SQL.Add('       ,FI1.Item');
           tInventario.SQL.Add('       ,FI1.Codigo');
           tInventario.SQL.Add('       ,FI1.NCM');
           tInventario.SQL.Add('       ,FI1.Descricao');
           tInventario.SQL.Add('       ,FI1.UM');
           tInventario.SQL.Add('       ,FI1.CFOP');
           tInventario.SQL.Add('       ,Historico = ''MERCADORIA NA PRÓPRIA EMPRESA'' ');
           tInventario.SQL.Add('       ,Estoque = ''0-EMPRESA'' ');
           tInventario.SQL.Add('       ,FI1.Emissor');
           tInventario.SQL.Add('       ,FI1.Origem');
           tInventario.SQL.Add('       ,FI1.Nota');
           tInventario.SQL.Add('       ,FI1.Data');
           tInventario.SQL.Add('       ,FI1.ES');
           tInventario.SQL.Add('       ,FI1.Destinatario_Codigo');
           tInventario.SQL.Add('       ,FI1.Destinatario_Nome');
           tInventario.SQL.Add('       ,FI1.Destinatario_CNPJ');
           tInventario.SQL.Add('       ,FI1.Finalidade');
           tInventario.SQL.Add('       ,FI1.Processo');
           tInventario.SQL.Add('       ,FI1.Tipo_Processo');
           tInventario.SQL.Add('       ,FI1.Qtde_Saldo');
           tInventario.SQL.Add('       ,FI1.Unitario_Saldo');
           tInventario.SQL.Add('       ,FI1.Total_Saldo');
           tInventario.SQL.Add('INTO   #TEMP');
           tInventario.SQL.Add('FROM   FichaInventario FI1, Produtos PD');
           tInventario.SQL.Add('WHERE  Data IN(SELECT MAX(FI2.Data) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData GROUP BY Codigo)');
           tInventario.SQL.Add('AND    PD.Codigo = FI1.Codigo');
           tInventario.SQL.Add('AND    Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData GROUP BY Codigo)');
           //tInventario.SQL.Add('AND    Estoque NOT IN(''1-ARMAZEM'', ''2-TERCEIROS'') ');
           If Trim(cProduto.Text) <> '' then begin
              tInventario.SQL.Add('  AND FI1.Codigo  = '+Dados.ProdutosCodigo.AsString);
           end;
           If Trim(cTipoProd.Text) <> '' then begin
              tInventario.SQL.Add('  AND PD.Tipo = '+Dados.TipoProdutoCodigo.AsString);
           end;
           if cIPI.ItemIndex = 1 then begin
              tInventario.SQL.Add('  AND (ISNULL(PD.Aliquota_IPI, 0) > 0 OR ISNULL(PD.Valor_IPI, 0) > 0)');
           end;
           if cIPI.ItemIndex = 2 then begin
              tInventario.SQL.Add('  AND (ISNULL(PD.Aliquota_IPI, 0) = 0 AND ISNULL(PD.Valor_IPI, 0) = 0)');
           end;
           tInventario.SQL.Add('-- MERCADORIA PRÓPRIA EM PODER TERCEIROS.');
           tInventario.SQL.Add('UNION ALL');
           tInventario.SQL.Add('SELECT  FI1.Registro');
           tInventario.SQL.Add('       ,FI1.Item');
           tInventario.SQL.Add('       ,FI1.Codigo');
           tInventario.SQL.Add('       ,FI1.NCM');
           tInventario.SQL.Add('       ,FI1.Descricao');
           tInventario.SQL.Add('       ,FI1.UM');
           tInventario.SQL.Add('       ,FI1.CFOP');
           tInventario.SQL.Add('       ,Historico = ''MERCADORIA PRÓPRIA EM PODER TERCEIROS'' ');
           tInventario.SQL.Add('       ,Estoque = ''1-ARMAZEM'' ');
           tInventario.SQL.Add('       ,FI1.Emissor');
           tInventario.SQL.Add('       ,FI1.Origem');
           tInventario.SQL.Add('       ,FI1.Nota');
           tInventario.SQL.Add('       ,FI1.Data');
           tInventario.SQL.Add('       ,FI1.ES');
           tInventario.SQL.Add('       ,FI1.Destinatario_Codigo');
           tInventario.SQL.Add('       ,FI1.Destinatario_Nome');
           tInventario.SQL.Add('       ,FI1.Destinatario_CNPJ');
           tInventario.SQL.Add('       ,FI1.Finalidade');
           tInventario.SQL.Add('       ,FI1.Processo');
           tInventario.SQL.Add('       ,FI1.Tipo_Processo');
           tInventario.SQL.Add('       ,Qtde_Saldo     = ROUND((SELECT SUM(FI2.Qtde_Saida-FI2.Qtde_Entrada) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData), 3)');
           tInventario.SQL.Add('       ,Unitario_Saldo = ISNULL((SELECT SUM(FI2.Total_Saida-FI2.Total_Entrada) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
           tInventario.SQL.Add('                         /NULLIF((SELECT SUM(FI2.Qtde_Saida -FI2.Qtde_Entrada) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData), 0), 0)');
           tInventario.SQL.Add('       ,Total_Saldo    = (SELECT SUM(FI2.Total_Saida-FI2.Total_Entrada) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''1-ARMAZEM'' AND FI2.Data <= :pData)');
           tInventario.SQL.Add('FROM   FichaInventario FI1, Produtos PD');
           tInventario.SQL.Add('WHERE  FI1.Estoque = ''1-ARMAZEM'' ');
           tInventario.SQL.Add('  AND  PD.Codigo = FI1.Codigo');
           tInventario.SQL.Add('  AND  FI1.Registro IS NOT NULL');
           if Trim(cProduto.Text) <> '' then begin
              tInventario.SQL.Add('  AND  FI1.Codigo  = '+Dados.ProdutosCodigo.AsString);
           end;
           If Trim(cTipoProd.Text) <> '' then begin
              tInventario.SQL.Add('  AND PD.Tipo = '+Dados.TipoProdutoCodigo.AsString);
           end;
           if cIPI.ItemIndex = 1 then begin
              tInventario.SQL.Add('  AND (ISNULL(PD.Aliquota_IPI, 0) > 0 OR ISNULL(PD.Valor_IPI, 0) > 0)');
           end;
           if cIPI.ItemIndex = 2 then begin
              tInventario.SQL.Add('  AND (ISNULL(PD.Aliquota_IPI, 0) = 0 AND ISNULL(PD.Valor_IPI, 0) = 0)');
           end;
           tInventario.SQL.Add('  AND  Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData AND Estoque = ''1-ARMAZEM'' GROUP BY Codigo)');
           tInventario.SQL.Add('-- MERCADORIA DE TERCEIROS EM PODER DA EMPRESA');
           tInventario.SQL.Add('UNION ALL');
           tInventario.SQL.Add('SELECT  FI1.Registro');
           tInventario.SQL.Add('       ,FI1.Item');
           tInventario.SQL.Add('       ,FI1.Codigo');
           tInventario.SQL.Add('       ,FI1.NCM');
           tInventario.SQL.Add('       ,FI1.Descricao');
           tInventario.SQL.Add('       ,FI1.UM');
           tInventario.SQL.Add('       ,FI1.CFOP');
           tInventario.SQL.Add('       ,Historico = ''MERCADORIA DE TERCEIROS EM PODER DA EMPRESA'' ');
           tInventario.SQL.Add('       ,Estoque = ''2-TERCEIROS'' ');
           tInventario.SQL.Add('       ,FI1.Emissor');
           tInventario.SQL.Add('       ,FI1.Origem');
           tInventario.SQL.Add('       ,FI1.Nota');
           tInventario.SQL.Add('       ,FI1.Data');
           tInventario.SQL.Add('       ,FI1.ES');
           tInventario.SQL.Add('       ,FI1.Destinatario_Codigo');
           tInventario.SQL.Add('       ,FI1.Destinatario_Nome');
           tInventario.SQL.Add('       ,FI1.Destinatario_CNPJ');
           tInventario.SQL.Add('       ,FI1.Finalidade');
           tInventario.SQL.Add('       ,FI1.Processo');
           tInventario.SQL.Add('       ,FI1.Tipo_Processo');
           tInventario.SQL.Add('       ,Qtde_Saldo     = ROUND((SELECT SUM(FI2.Qtde_Entrada -FI2.Qtde_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData), 3)');
           tInventario.SQL.Add('       ,Unitario_Saldo = ISNULL((SELECT SUM(FI2.Total_Entrada-FI2.Total_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
           tInventario.SQL.Add('                         /NULLIF((SELECT SUM(FI2.Qtde_Entrada -FI2.Qtde_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData), 0), 0)');
           tInventario.SQL.Add('       ,Total_Saldo    = (SELECT SUM(FI2.Total_Entrada-FI2.Total_Saida) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Estoque = ''2-TERCEIROS'' AND FI2.Data <= :pData)');
           tInventario.SQL.Add('FROM   FichaInventario FI1, Produtos PD');
           tInventario.SQL.Add('WHERE  FI1.Estoque = ''2-TERCEIROS'' ');
           tInventario.SQL.Add('  AND  PD.Codigo = FI1.Codigo');
           tInventario.SQL.Add('  AND  FI1.Registro IS NOT NULL');
           if Trim(cProduto.Text) <> '' then begin
              tInventario.SQL.Add('  AND  FI1.Codigo  = '+Dados.ProdutosCodigo.AsString);
           end;
           If Trim(cTipoProd.Text) <> '' then begin
              tInventario.SQL.Add('  AND PD.Tipo = '+Dados.TipoProdutoCodigo.AsString);
           end;
           if cIPI.ItemIndex = 1 then begin
              tInventario.SQL.Add('  AND (ISNULL(PD.Aliquota_IPI, 0) > 0 OR ISNULL(PD.Valor_IPI, 0) > 0)');
           end;
           if cIPI.ItemIndex = 2 then begin
              tInventario.SQL.Add('  AND (ISNULL(PD.Aliquota_IPI, 0) = 0 AND ISNULL(PD.Valor_IPI, 0) = 0) ');
           end;
           tInventario.SQL.Add('  AND  FI1.Item IN(SELECT MAX(FI2.Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo AND FI2.Data <= :pData AND Estoque = ''2-TERCEIROS'' GROUP BY Codigo)');
           tInventario.SQL.Add('SELECT *');
           tInventario.SQL.Add('FROM #TEMP');
           tInventario.SQL.Add('WHERE Qtde_Saldo > 0');
           if cTerceiros.Checked then begin
              tInventario.SQL.Add('AND   Estoque NOT IN(''1-ARMAZEM'', ''2-TERCEIROS'') ');
           end;

           If cInventario.ItemIndex = 1 then
              tInventario.SQL.Add('  AND Estoque =  ''0-EMPRESA'' ');
           If cInventario.ItemIndex = 2 then
              tInventario.SQL.Add('  AND Estoque =  ''1-ARMAZEM'' ');
           If cInventario.ItemIndex = 3 then
              tInventario.SQL.Add('  AND Estoque =  ''2-TERCEIROS'' ');

           if cNCM.Text <> '' then
              tInventario.SQL.Add('  AND NCM = '+cNCM.Text);

           If cOrdem.ItemIndex = 0 then
              tInventario.SQL.Add('ORDER BY Estoque, NCM, Codigo');
           If cOrdem.ItemIndex = 1 then
              tInventario.SQL.Add('ORDER BY Estoque, Codigo');
           If cOrdem.ItemIndex = 2 then
              tInventario.SQL.Add('ORDER BY Estoque, CAST(Descricao AS VARCHAR(500))');

           tInventario.SQL.Add('DROP TABLE #TEMP');
           tInventario.ParamByName('pData').AsDate := cDataFim.Date;
           //tInventario.SQL.SaveToFile('c:\temp\Inventario_Novo_2.sql');
           tInventario.Open;
      //End;

      Screen.Cursor := crDefault;

      //lMovimento.Visible := tInventario.RecordCount = 0;
      if cIPI.ItemIndex = 1 then begin
         lTitulo.Caption := 'REGISTRO DE INVENTARIO - PRODUTOS COM IPI';
      end;
      if cIPI.ItemIndex = 2 then begin
         lTitulo.Caption := 'REGISTRO DE INVENTARIO - PRODUTOS SEM IPI';
      end;

      if Dados.EmpresasMatriz_Filial.AsBoolean then
         lTitulo.Caption := lTitulo.Caption + ' (MATRIZ)'
      else
         lTitulo.Caption := lTitulo.Caption + ' (FILIAL '+Dados.EmpresasNumero_Filial.AsString+')';

      lMovimento.Visible := tInventario.RecordCount = 0;

      If not cExcel.Checked then begin
         Screen.Cursor := crDefault;
         rFichaInventario.Print;
         rFichaInventario.Reset;
      end else begin
         ExportaEXCEL;
      End;
end;
*)                                      

procedure TImpressao_FiscaisOP_Inventario_Novo.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      with Dados, Empresas do begin
           sql.clear;
           sql.Add('select * from Empresas where Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Open;
      end;
      with tInventario do begin
           sql.clear;
           // ESTOQUE PROPRIO - 0-EMPRESA.
           if cInventario.ItemIndex in([0, 1]) then begin
              sql.Add('-- NOTA FISCAL PROPRIA [0-EMPRESA] --');
              sql.Add('select Codigo = ni.Codigo_Mercadoria');
              sql.Add('      ,Qtde_Ent = iif(Saida_Entrada = 0, Quantidade, 0)');
              sql.Add('      ,Qtde_Sai = iif(Saida_Entrada = 1, Quantidade, 0)');
              sql.Add('      ,Valor_Unitario = (select round(Unitario_Saldo, 4)');
              sql.add('                         from FichaInventario fi');
              sql.add('                         where fi.Codigo = ni.Codigo_Mercadoria and fi.Item = (select max(Item) from FichaInventario fi2 where fi2.Codigo = ni.Codigo_Mercadoria and Data <= :pData))');
              sql.Add('      ,Estoque = ''0-EMPRESA'' ');
              sql.Add('into  #Temp');
              sql.Add('from  NotasItens ni');
              sql.Add('where ni.Data <= :pData');
              sql.Add('and   isnull(Movimenta_Inventario, 0) = 1');
              sql.Add('and   isnull(ni.Cancelada, 0) = 0');
              sql.Add('and   ISNULL(ni.NFe_Denegada, 0) = 0');
              sql.Add('and   ni.Finalidade_Mercadoria <> 5');
              if trim(cCodigo.Text) <> '' then begin
                 sql.Add('and   ni.Codigo_Mercadoria = '+cCodigo.text);
              end;
              if Trim(cTipoProd.Text) <> '' then begin
                 sql.Add('and   (select Tipo from Produtos where Codigo = ni.Codigo_Mercadoria) = '+Dados.TipoProdutoCodigo.AsString);
              end;
              if cIPI.ItemIndex = 1 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) > 0');
              end;
              if cIPI.ItemIndex = 2 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) = 0');
              end;
              if cNCM.Text <> '' then begin
                 sql.Add('and  ni.NCM = '+cNCM.Text);
              end;   
           
              sql.Add('-- NOTA FISCAL DE TERCEIROS [0-EMPRESA] --');
              sql.Add('union all');
              sql.Add('select Codigo = ni.Codigo_Mercadoria');
              sql.Add('      ,Qtde_Ent = Quantidade');
              sql.Add('      ,Qtde_Sai = 0');
              sql.Add('      ,Valor_Unitario = (select round(Unitario_Saldo, 4)');
              sql.Add('                         from FichaInventario fi');
              sql.add('                         where fi.Codigo = ni.Codigo_Mercadoria and fi.Item = (select max(Item) from FichaInventario fi2 where fi2.Codigo = ni.Codigo_Mercadoria and Data <= :pData))');
              sql.Add('      ,Estoque = ''0-EMPRESA'' ');
              sql.Add('from NotasTerceirosItens ni');
              sql.Add('where ni.Data_Entrada <= :pData');
              if trim(cCodigo.Text) <> '' then begin
                 sql.Add('and   ni.Codigo_Mercadoria = '+cCodigo.text);
              end;
              if Trim(cTipoProd.Text) <> '' then begin
                 sql.Add('and   (select Tipo from Produtos where Codigo = ni.Codigo_Mercadoria) = '+Dados.TipoProdutoCodigo.AsString);
              end;
              if cIPI.ItemIndex = 1 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) > 0');
              end;
              if cIPI.ItemIndex = 2 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) = 0');
              end;
              if cNCM.Text <> '' then begin
                 sql.Add('and  ni.NCM = '+cNCM.Text);
              end;   
              sql.Add('and   isnull(Movimenta_Inventario, 0) = 1');
              sql.Add('and   (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = ni.Referencia_Fiscal ) <> 5');

              sql.Add('-- ABERTURA/TRANSFERÊNCIAS DE ESTOQUE (ENTRADA) [0-EMPRESA] --');
              sql.Add('union all');
              sql.Add('select Codigo = ni.Produto_Entrada');
              sql.Add('      ,Qtde_Ent = Quantidade_Entrada');
              sql.Add('      ,Qtde_Sai = 0');
              sql.Add('      ,Valor_Unitario = (select round(Unitario_Saldo, 4) from FichaInventario fi where fi.Codigo = ni.Produto_Entrada and fi.Item = (select max(Item) from FichaInventario fi2 where fi2.Codigo = ni.Produto_Entrada and Data <= :pData))');
              sql.Add('      ,Estoque = ''0-EMPRESA'' ');
              sql.Add('from ProdutosTransferencia ni');
              sql.add('where ni.Data_Transferencia <= :pData');
              sql.Add('and   isnull(Inventario, 0) = 1');
              if trim(cCodigo.Text) <> '' then begin
                 sql.Add('and   ni.Produto_Entrada = '+cCodigo.text);
              end;
              if Trim(cTipoProd.Text) <> '' then begin
                 sql.Add('and   (select Tipo from Produtos where Codigo = ni.Produto_Entrada) = '+Dados.TipoProdutoCodigo.AsString);
              end;
              if cIPI.ItemIndex = 1 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Produto_Entrada) > 0');
              end;
              if cIPI.ItemIndex = 2 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Produto_Entrada) = 0');
              end;
              if cNCM.Text <> '' then begin
                 sql.Add('and  (select NCM from Produtos pd where pd.Codigo = ni.Produto_Entrada) = '+cNCM.Text);
              end;   
              
              sql.Add('-- ABERTURA/TRANSFERÊNCIAS DE ESTOQUE (SAÍDA) [0-EMPRESA] --');
              sql.Add('union all');
              sql.Add('select Codigo = ni.Produto_Saida');
              sql.Add('      ,Qtde_Ent = 0');
              sql.Add('      ,Qtde_Sai = Quantidade');
              sql.Add('      ,Valor_Unitario = (select round(Unitario_Saldo, 4) from FichaInventario fi where fi.Codigo = ni.Produto_Saida and fi.Item = (select max(Item) from FichaInventario fi2 where fi2.Codigo = ni.Produto_Saida and Data <= :pData))');
              sql.Add('      ,Estoque = ''0-EMPRESA'' ');
              sql.Add('from ProdutosTransferencia ni');
              sql.add('where ni.Data_Transferencia <= :pData');
              sql.Add('and   isnull(Inventario, 0) = 1');
              if trim(cCodigo.Text) <> '' then begin
                 sql.Add('and   ni.Produto_Saida = '+cCodigo.text);
              end;
              if Trim(cTipoProd.Text) <> '' then begin
                 sql.Add('and   (select Tipo from Produtos where Codigo = ni.Produto_Saida) = '+Dados.TipoProdutoCodigo.AsString);
              end;
              if cIPI.ItemIndex = 1 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Produto_Saida) > 0');
              end;
              if cIPI.ItemIndex = 2 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Produto_Saida) = 0');
              end;
              if cNCM.Text <> '' then begin
                 sql.Add('and  (select NCM from Produtos pd where pd.Codigo = ni.Produto_Saida) = '+cNCM.Text);
              end;   
           end else begin
              sql.Add('-- NOTA FISCAL PROPRIA [0-EMPRESA] --');
              sql.Add('select Codigo = 0');
              sql.Add('      ,Qtde_Ent = 0');
              sql.Add('      ,Qtde_Sai = 0');
              sql.Add('      ,Valor_Unitario = 0');
              sql.Add('      ,Estoque = ''0-EMPRESA'' ');
              sql.Add('into  #Temp');
           end;

           // ESTOQUE PROPRIO - FORA DA EMPRESA.
           if cInventario.ItemIndex in([0, 2]) then begin
              sql.Add('-- NOTA FISCAL PROPRIA [1-ARMAZEM] --');
              sql.Add('union all');
              sql.Add('select Codigo = ni.Codigo_Mercadoria');
              sql.Add('      ,Qtde_Ent = iif(Saida_Entrada = 0, 0, Quantidade)');
              sql.Add('      ,Qtde_Sai = iif(Saida_Entrada = 1, 0, Quantidade)');
              sql.Add('      ,Valor_Unitario = (select round(Unitario_Saldo, 4)');
              sql.add('                         from FichaInventario fi');
              sql.add('                         where fi.Codigo = ni.Codigo_Mercadoria and fi.Item = (select max(Item) from FichaInventario fi2 where fi2.Codigo = ni.Codigo_Mercadoria and Data <= :pData and Unitario_Saldo > 0))');
              sql.Add('      ,Estoque = ''1-ARMAZEM'' ');
              sql.Add('from NotasItens ni');
              sql.Add('where ni.Data <= :pData');
              if trim(cCodigo.Text) <> '' then begin
                 sql.Add('and   ni.Codigo_Mercadoria = '+cCodigo.text);
              end;
              if Trim(cTipoProd.Text) <> '' then begin
                 sql.Add('and   (select Tipo from Produtos where Codigo = ni.Codigo_Mercadoria) = '+Dados.TipoProdutoCodigo.AsString);
              end;
              if cIPI.ItemIndex = 1 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) > 0');
              end;
              if cIPI.ItemIndex = 2 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) = 0');
              end;
              if cNCM.Text <> '' then begin
                 sql.Add('and  ni.NCM = '+cNCM.Text);
              end;   
              sql.Add('and   isnull(Movimenta_Inventario, 0) = 1');
              sql.Add('and   isnull(ni.Cancelada, 0) = 0');
              sql.Add('and   ISNULL(ni.NFe_Denegada, 0) = 0');
              sql.Add('and   ni.Finalidade_Mercadoria = 4');

              sql.Add('-- NOTA FISCAL DE TERCEIROS [1-ARMAZEM] --');
              sql.Add('union all');
              sql.Add('select Codigo = ni.Codigo_Mercadoria');
              sql.Add('      ,Qtde_Ent = 0');
              sql.Add('      ,Qtde_Sai = Quantidade');
              sql.Add('      ,Valor_Unitario = (select round(Unitario_Saldo, 4)');
              sql.add('                         from FichaInventario fi');
              sql.add('                         where fi.Codigo = ni.Codigo_Mercadoria and fi.Item = (select max(Item) from FichaInventario fi2 where fi2.Codigo = ni.Codigo_Mercadoria and Data <= :pData and Unitario_Saldo > 0))');
              sql.Add('      ,Estoque = ''1-ARMAZEM'' ');
              sql.Add('from NotasTerceirosItens ni');
              sql.Add('where ni.Data_Entrada <= :pData');
              if trim(cCodigo.Text) <> '' then begin
                 sql.Add('and   ni.Codigo_Mercadoria = '+cCodigo.text);
              end;
              if Trim(cTipoProd.Text) <> '' then begin
                 sql.Add('and   (select Tipo from Produtos where Codigo = ni.Codigo_Mercadoria) = '+Dados.TipoProdutoCodigo.AsString);
              end;
              if cIPI.ItemIndex = 1 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) > 0');
              end;
              if cIPI.ItemIndex = 2 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) = 0');
              end;
              if cNCM.Text <> '' then begin
                 sql.Add('and  ni.NCM = '+cNCM.Text);
              end;   
              sql.Add('and   isnull(Movimenta_Inventario, 0) = 1');
              sql.Add('and   (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = ni.Referencia_Fiscal ) = 4');
           end;
           
           // ESTOQUE DE TERCEIROS NA EMPRESA.
           if cInventario.ItemIndex in([0, 3]) then begin
              sql.Add('-- NOTA FISCAL PROPRIA [2-TERCEIROS]--');
              sql.Add('union all');
              sql.Add('select Codigo = ni.Codigo_Mercadoria');
              sql.Add('      ,Qtde_Ent = iif(Saida_Entrada = 0, Quantidade, 0)');
              sql.Add('      ,Qtde_Sai = iif(Saida_Entrada = 1, Quantidade, 0)');
              sql.Add('      ,Valor_Unitario = (select round(Unitario_Saldo, 4)');
              sql.add('                         from FichaInventario fi');
              sql.add('                         where fi.Codigo = ni.Codigo_Mercadoria and fi.Item = (select max(Item) from FichaInventario fi2 where fi2.Codigo = ni.Codigo_Mercadoria and Data <= :pData and Unitario_Saldo > 0))');
              sql.Add('      ,Estoque = ''2-TERCEIROS'' ');
              sql.Add('from NotasItens ni');
              sql.Add('where ni.Data <= :pData');
              if trim(cCodigo.Text) <> '' then begin
                 sql.Add('and   ni.Codigo_Mercadoria = '+cCodigo.text);
              end;
              if Trim(cTipoProd.Text) <> '' then begin
                 sql.Add('and   (select Tipo from Produtos where Codigo = ni.Codigo_Mercadoria) = '+Dados.TipoProdutoCodigo.AsString);
              end;
              if cIPI.ItemIndex = 1 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) > 0');
              end;
              if cIPI.ItemIndex = 2 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) = 0');
              end;
              if cNCM.Text <> '' then begin
                 sql.Add('and  ni.NCM = '+cNCM.Text);
              end;   
              sql.Add('and   isnull(Movimenta_Inventario, 0) = 1');
              sql.Add('and   isnull(ni.Cancelada, 0) = 0');
              sql.Add('and   ISNULL(ni.NFe_Denegada, 0) = 0');
              sql.Add('and   ni.Finalidade_Mercadoria = 5');

              sql.Add('-- NOTA FISCAL DE TERCEIROS [2-TERCEIROS]--');
              sql.Add('union all');
              sql.Add('select Codigo = ni.Codigo_Mercadoria');
              sql.Add('      ,Qtde_Ent = Quantidade');
              sql.Add('      ,Qtde_Sai = 0');
              sql.Add('      ,Valor_Unitario = (select round(Unitario_Saldo, 4)');
              sql.add('                         from FichaInventario fi');
              sql.add('                         where fi.Codigo = ni.Codigo_Mercadoria and fi.Item = (select max(Item) from FichaInventario fi2 where fi2.Codigo = ni.Codigo_Mercadoria and Data <= :pData and Unitario_Saldo > 0))');
              sql.Add('      ,Estoque = ''2-TERCEIROS'' ');
              sql.Add('from NotasTerceirosItens ni');
              sql.Add('where ni.Data_Entrada <= :pData');
              if trim(cCodigo.Text) <> '' then begin
                 sql.Add('and   ni.Codigo_Mercadoria = '+cCodigo.text);
              end;
              if Trim(cTipoProd.Text) <> '' then begin
                 sql.Add('and   (select Tipo from Produtos where Codigo = ni.Codigo_Mercadoria) = '+Dados.TipoProdutoCodigo.AsString);
              end;
              if cIPI.ItemIndex = 1 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) > 0');
              end;
              if cIPI.ItemIndex = 2 then begin
                 sql.Add('and   (select (isnull(Aliquota_IPI, 0) + isnull(Valor_IPI, 0)) from Produtos where Codigo = ni.Codigo_Mercadoria) = 0');
              end;
              if cNCM.Text <> '' then begin
                 sql.Add('and  ni.NCM = '+cNCM.Text);
              end;   
              sql.Add('and   isnull(Movimenta_Inventario, 0) = 1');
              sql.Add('and   (select Finalidade_Mercadoria from ReferenciasFiscais where Codigo = ni.Referencia_Fiscal ) = 5');
           end;
           
           sql.Add('select Codigo');
           sql.Add('      ,Qtde_Saldo = sum(Qtde_Ent - Qtde_Sai)');
           sql.Add('      ,Unitario_Saldo = Valor_Unitario');
           sql.Add('      ,Estoque');
           sql.Add('into #temp2');
           sql.Add('from #Temp');
           sql.Add('group by Codigo, Valor_Unitario, Estoque');
           sql.Add('select NCM = (select NCM from Produtos prd where prd.Codigo = #temp2.Codigo)');
           sql.Add('      ,Descricao = (select iif(charindex(''<{'', Descricao) > 0, substring(Descricao, 1, charindex(''<{'', Descricao)-1), Descricao) from Produtos prd where prd.Codigo = #temp2.Codigo)');
           sql.Add('      ,Codigo');
           sql.Add('      ,UM        = (select Unidade from Produtos prd where prd.Codigo = #temp2.Codigo)');
           sql.Add('      ,Historico = case Estoque ');
           sql.Add('                        when ''0-EMPRESA''   then ''MERCADORIA NA PRÓPRIA EMPRESA'' ');
           sql.Add('                        when ''1-ARMAZEM''   then ''MERCADORIA PRÓPRIA EM PODER DE TERCEIROS'' ');
           sql.Add('                        when ''2-TERCEIROS'' then ''MERCADORIA DE TERCEIROS EM PODER DA EMPRESA'' ');
           sql.Add('                   end');
           sql.Add('      ,Estoque');
           sql.Add('      ,Qtde_Saldo');
           sql.Add('      ,Unitario_Saldo');
           sql.Add('      ,Total_Saldo = Unitario_Saldo * Qtde_Saldo');
           sql.Add('into #temp3 ');
           sql.Add('from #temp2 ');
           sql.Add('where round(Qtde_Saldo, 3)> 0');
           
           sql.Add('select * from #temp3');
           if cOrdem.ItemIndex = 0 then
              sql.Add('order by Estoque, NCM, Codigo');
           if cOrdem.ItemIndex = 1 then
              sql.Add('order by Estoque, Codigo');
           if cOrdem.ItemIndex = 2 then
              sql.Add('order by Estoque, cast(Descricao as varchar(500))');
           
           sql.Add('drop table #Temp, #temp2, #temp3');
           ParamByName('pData').AsDate := cDataFim.Date;
           //sql.SaveToFile('c:\temp\Fiscal_Ficha_Inventario.sql');
           open;
      end;

      Screen.Cursor := crDefault;

      //lMovimento.Visible := tInventario.RecordCount = 0;
      if cIPI.ItemIndex = 1 then begin
         lTitulo.Caption := 'REGISTRO DE INVENTARIO - PRODUTOS COM IPI';
      end;
      if cIPI.ItemIndex = 2 then begin
         lTitulo.Caption := 'REGISTRO DE INVENTARIO - PRODUTOS SEM IPI';
      end;

      if Dados.EmpresasMatriz_Filial.AsBoolean then
         lTitulo.Caption := lTitulo.Caption + ' (MATRIZ)'
      else
         lTitulo.Caption := lTitulo.Caption + ' (FILIAL '+Dados.EmpresasNumero_Filial.AsString+')';

      lMovimento.Visible := tInventario.RecordCount = 0;

      If not cExcel.Checked then begin
         Screen.Cursor := crDefault;
         rFichaInventario.Print;
         rFichaInventario.Reset;
      end else begin
         ExportaEXCEL;
      End;
end;

procedure TImpressao_FiscaisOP_Inventario_Novo.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataFim.Date         := aINI.ReadDate   ('IMPRESSAO_Ficha_Inventario','DataFim'    , Date);
      cProduto.KeyValue     := aINI.ReadString ('IMPRESSAO_Ficha_Inventario','Produto'    , '');
      cTipoProd.KeyValue    := aINI.ReadString ('IMPRESSAO_Ficha_Inventario','TipoProduto', '');
      cNCM.Text             := aINI.ReadString ('IMPRESSAO_Ficha_Inventario','NCM'        , '');
      cOrdem.ItemIndex      := aINI.ReadInteger('IMPRESSAO_Ficha_Inventario','Ordem'      , 0 );
      cInventario.ItemIndex := aINI.ReadInteger('IMPRESSAO_Ficha_Inventario','Inventario' , 0);
      cSituacao.ItemIndex   := aINI.ReadInteger('IMPRESSAO_Ficha_Inventario','Situacao'   , 0);
      cExcel.Checked        := aINI.ReadBool   ('IMPRESSAO_Ficha_Inventario','Excel'      , false);
      cTerceiros.Checked    := aINI.ReadBool   ('IMPRESSAO_Ficha_Inventario','Terceiros'  , false);
      aINI.Free;

      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQl.Add('SELECT * FROM Produtos WHERE ISNULL(Desativado, 0) = 0 ORDER BY Descricao_Reduzida');
           Produtos.Open;

           TipoProduto.SQL.Clear;
           TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
           TipoProduto.Open;
      End;
      
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FiscaisOP_Inventario_Novo.bLimparFormaClick(Sender: TObject);
begin
      cProduto.ClearValue;
end;

procedure TImpressao_FiscaisOP_Inventario_Novo.rFichaInventarioBeforePrint(Sender: TObject);
begin
     lPeriodo.Caption := cDataFim.Text;
end;

procedure TImpressao_FiscaisOP_Inventario_Novo.ppHeaderBand1BeforePrint(Sender: TObject);
begin
     lFolha.Caption := InttoStr(cPaginaIni.AsInteger + (rFichaInventario.PageNo)-1);
end;

// Envia informações para o excel.
procedure TImpressao_FiscaisOP_Inventario_Novo.ExportaEXCEL;
var
   mPlanilha      : Variant;
   mLinha         : Integer;
   mTotalQtdeGeral: Real;
   mTotalGeral    : Currency;
   mDescricao     : WideString;
   mTipo          : String;
   mProcessos     : WideString;
begin
       With dmFiscal do begin
            Janela_Processamento := TJanela_Processamento.Create(Self);
            Janela_Processamento.Progresso.Position := 0;
            Janela_Processamento.Progresso.Max      := tInventario.RecordCount;
            Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
            Janela_Processamento.Show;

            mPlanilha := CreateOleObject('Excel.Application');

            mPlanilha.WorkBooks.add(1);

            mPlanilha.Visible := false;
            mPlanilha.Range['A3','H3'].Interior.Color    := RGB(255, 255, 140);
            mPlanilha.Range['A3','H3'].Interior.Pattern  := 1;
            mPlanilha.Range['A3','H3'].Font.Bold         := true;
            mPlanilha.Range['A3','H3'].Font.Color        := clBlack;
            mPlanilha.Range['A3','H3'].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['A3','H3'].Borders.Weight    := 2; //xlThin;
            mPlanilha.Range['A3','H3'].Borders.Color     := RGB(0,0,0);

            mPlanilha.Cells[3,01] := 'NCM';
            mPlanilha.Cells[3,02] := 'DESCRIÇÃO';
            mPlanilha.Cells[3,03] := 'CÓDIGO';
            mPlanilha.Cells[3,04] := 'UNIDADE';
            mPlanilha.Cells[3,05] := 'QUANTIDADE';
            mPlanilha.Cells[3,06] := 'VLR.UNITÁRIO';
            mPlanilha.Cells[3,07] := 'VLR.TOTAL';
            mPlanilha.Cells[3,08] := 'PROCESSO(S)';

            mPlanilha.Range['A3','H3'].HorizontalAlignment := 3;
            mPlanilha.Range['A3','H3'].VerticalAlignment   := 2;
            mPlanilha.Range['A3','H3'].Font.Size           := 10;

            If tInventario.FieldByName('Estoque').AsString = '0-EMPRESA' then begin
               mPlanilha.Cells[4,01] := 'MERCADORIA PRÓPRIA';
            End;
            If tInventario.FieldByName('Estoque').AsString = '1-ARMAZEM' then begin
               mPlanilha.Cells[4,01] := 'MERCADORIA PRÓPRIAS EM PODER DE TERCEIROS';
            End;
            If tInventario.FieldByName('Estoque').AsString = '2-TERCEIROS' then begin
               mPlanilha.Cells[4,01] := 'MERCADORIA DE TERCEIROS EM PODER DA EMPRESA';
            End;

            mPlanilha.Range['A4','H4'].Font.Bold           := true;
            mPlanilha.Range['A4','H4'].Font.Size           := 10;
            mPlanilha.Range['A4','H4'].Mergecells          := True;
            mPlanilha.Range['A4','H4'].HorizontalAlignment := 3;
            mPlanilha.Range['A4','H4'].Interior.Color      := clMoneyGreen;
            mPlanilha.Range['A4','H4'].Borders.LineStyle   := 1;
            mPlanilha.Range['A4','H4'].Borders.Weight      := 2;
            mPlanilha.Range['A4','H4'].Borders.Color       := RGB(0,0,0);

            mTotalPro       := 0;
            mTotalTer       := 0;
            mTotalOut       := 0;
            mTotalGeral     := 0;
            mTotalQtdePro   := 0;
            mTotalQtdeTer   := 0;
            mTotalQtdeGeral := 0;
            mLinha          := 5;
            mTipo           := tInventario.FieldByName('Estoque').AsString;

            While (not tInventario.Eof) and (not Funcoes.Cancelado) do  Begin
                  mPlanilha.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].ColumnWidth         := 80;
                  mPlanilha.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].WrapText            := true;
                  mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].VerticalAlignment   := 1;
                  mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].HorizontalAlignment := 3;
                  mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Size           := 10;

                  mDescricao := Trim(tInventario.FieldByName('Descricao').AsString);
                  mDescricao := RemoveCaracter(#13, '', mDescricao);
                  mDescricao := RemoveCaracter(#12, '', mDescricao);
                  mDescricao := RemoveCaracter(#10, '', mDescricao);
                  mDescricao := RemoveCaracter('<{'+tInventario.FieldByName('Codigo').AsString+'}>', '', mDescricao);

                  tProcessos.SQL.Clear;
                  tProcessos.SQL.Add('SELECT DISTINCT Processo FROM NotasItens WHERE (Codigo_Mercadoria = :pCodigo)');
                  tProcessos.SQL.Add('UNION');
                  tProcessos.SQL.Add('SELECT DISTINCT Processo FROM NotasTerceirosItens WHERE (Codigo_Mercadoria = :pCodigo)');
                  tProcessos.ParamByName('pCodigo').AsInteger := tInventario.FieldByName('Codigo').AsInteger;
                  tProcessos.Open;

                  mProcessos := '';
                  While not tProcessos.Eof do begin
                        mProcessos := mProcessos + tProcessos.FieldByName('Processo').AsString+', ';
                        tProcessos.Next;
                  End;
                  mProcessos := Copy(mProcessos, 1, Length(mProcessos)-2);

                  mPlanilha.Cells[mLinha,01] := tInventario.FieldByName('NCM').AsString;
                  mPlanilha.Cells[mLinha,02] := mDescricao;
                  mPlanilha.Cells[mLinha,03] := tInventario.FieldByName('Codigo').AsString;
                  mPlanilha.Cells[mLinha,04] := tInventario.FieldByName('UM').AsString;
                  mPlanilha.Cells[mLinha,05] := tInventario.FieldByName('Qtde_Saldo').AsFloat;
                  mPlanilha.Cells[mLinha,06] := tInventario.FieldByName('Unitario_Saldo').AsCurrency;
                  mPlanilha.Cells[mLinha,07] := tInventario.FieldByName('Total_Saldo').AsCurrency;
                  mPlanilha.Cells[mLinha,08] := mProcessos;

                  mPlanilha.Cells[mLinha,01].NumberFormat := '#####.##.##';
                  mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
                  mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00';
                  mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';

                  If tInventario.FieldByName('Estoque').AsString = '0-EMPRESA' then begin
                     mTotalQtdePro := mTotalQtdePro + tInventario.FieldByName('Qtde_Saldo').AsFloat;
                     mTotalPro     := mTotalPro     + tInventario.FieldByName('Total_Saldo').AsCurrency;
                  End;
                  If tInventario.FieldByName('Estoque').AsString = '1-ARMAZEM' then begin
                     mTotalQtdeTer := mTotalQtdeTer + tInventario.FieldByName('Qtde_Saldo').AsFloat;
                     mTotalTer     := mTotalTer     + tInventario.FieldByName('Total_Saldo').AsCurrency;
                  End;
                  If tInventario.FieldByName('Estoque').AsString = '2-TERCEIROS' then begin
                     mTotalQtdeOut := mTotalQtdeOut + tInventario.FieldByName('Qtde_Saldo').AsFloat;
                     mTotalOut     := mTotalOut     + tInventario.FieldByName('Total_Saldo').AsCurrency;
                  End;

                  mTotalQtdeGeral := mTotalQtdeGeral + tInventario.FieldByName('Qtde_Saldo').AsFloat;
                  mTotalGeral     := mTotalGeral     + tInventario.FieldByName('Total_Saldo').AsCurrency;

                  tInventario.Next;

                  If (tInventario.FieldByName('Estoque').AsString <> mTipo) or (tInventario.Eof) then begin
                     If mTipo = '0-EMPRESA' then begin
                        Inc(mLinha);
                        mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS PRÓPRIAS';
                        mPlanilha.Cells[mLinha,05] := mTotalQtdePro;
                        mPlanilha.Cells[mLinha,07] := mTotalPro;
                     End;
                     If mTipo = '1-ARMAZEM' then begin
                        Inc(mLinha);
                        mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS EM TERCEIROS';
                        mPlanilha.Cells[mLinha,05] := mTotalQtdeTer;
                        mPlanilha.Cells[mLinha,07] := mTotalTer;
                     End;
                     If mTipo = '2-TERCEIROS' then begin
                        Inc(mLinha);
                        mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS DE TERCEIROS EM PODER DA EMPRESA';
                        mPlanilha.Cells[mLinha,05] := mTotalQtdeOut;
                        mPlanilha.Cells[mLinha,07] := mTotalOut;
                     End;

                     mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
                     mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
                     mPlanilha.Cells[mLinha,02].HorizontalAlignment := 3;
                     mPlanilha.Range['C3','G3'].VerticalAlignment   := 2;
                     mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
                     mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;
                     mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
                     mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
                     mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
                     mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
                     mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                     mTipo := tInventario.FieldByName('Estoque').AsString;

                     If not tInventario.Eof then begin
                        Inc(mLinha);

                        If mTipo = '1-ARMAZEM' then begin
                           mPlanilha.Cells[mLinha,01] := 'MERCADORIA EM PODER DE TERCEIROS';
                        End;
                        If mTipo = '2-TERCEIROS' then begin
                           mPlanilha.Cells[mLinha,01] := 'MERCADORIA DE TERCEIROS EM PODER DA EMPRESA';
                        End;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Bold := true;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Size           := 10;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Mergecells          := True;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].HorizontalAlignment := 3;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Interior.Color      := clMoneyGreen;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.LineStyle   := 1;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Weight      := 2;
                        mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Color       := RGB(0,0,0);
                     End;
                  End;

                  Inc(mLinha);
                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                  Application.ProcessMessages;
            End;

            Inc(mLinha, 3);
            mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS PRÓPRIAS';
            mPlanilha.Cells[mLinha,05] := mTotalQtdePro;
            mPlanilha.Cells[mLinha,07] := mTotalPro;
            mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

            Inc(mLinha);
            mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS EM PODER DE TERCEIROS';
            mPlanilha.Cells[mLinha,05] := mTotalQtdeTer;
            mPlanilha.Cells[mLinha,07] := mTotalTer;
            mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

            Inc(mLinha);
            mPlanilha.Cells[mLinha,02] := 'TOTAL DE MERCADORIAS DE TERCEIROS EM PODER DA EMPRESA';
            mPlanilha.Cells[mLinha,05] := mTotalQtdeOut;
            mPlanilha.Cells[mLinha,07] := mTotalOut;
            mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

            Inc(mLinha);
            mPlanilha.Cells[mLinha,02] := 'TOTAL GERAL';
            mPlanilha.Cells[mLinha,05] := mTotalQtdeGeral;
            mPlanilha.Cells[mLinha,07] := mTotalGeral;
            mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';

            mPlanilha.Range['C3','G3'].VerticalAlignment   := 2;
            mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['B'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

            //Fecha o Excel.
            If Funcoes.Cancelado = true then begin
//               KillTask('Excel.exe');    // Microsoft Excel
               Abort;
               mPlanilha.Free;
               mPlanilha.Destroy;
            End;

            mPlanilha.Columns.Autofit;
            mPlanilha.Rows.Autofit;

            mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
            mPlanilha.Range['A1','A1'].Font.Size  := 14;
            mPlanilha.Range['A1','A1'].Font.Bold  := true;
            mPlanilha.Range['A1','H1'].Mergecells := True;
            mPlanilha.Range['A1','H1'].HorizontalAlignment := 3;

            mPlanilha.Cells[2,01] := 'Inventario - Período de '+cDataFim.Text;

            if cIPI.ItemIndex = 1 then begin
               mPlanilha.Cells[2,01] := 'Inventario - Período de '+cDataFim.Text+'  (PRODUTOS COM IPI)';
            end;
            if cIPI.ItemIndex = 2 then begin
               mPlanilha.Cells[2,01] := 'Inventario - Período de '+cDataFim.Text+'  (PRODUTOS SEM IPI)';
            end;

            mPlanilha.Range['A2','A2'].Font.Size  := 10;
            mPlanilha.Range['A2','H2'].Mergecells := True;
            mPlanilha.Range['A2','H2'].HorizontalAlignment := 3;
       End;
       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

procedure TImpressao_FiscaisOP_Inventario_Novo.cCodigoExit(Sender: TObject);
begin
      If Trim(cCodigo.Text) <> '' then begin
         Try
            If Dados.Produtos.Locate('Codigo', StrtoInt(cCodigo.Text), [loCaseInsensitive]) = true then
               cProduto.KeyValue := Dados.ProdutosCodigo.AsInteger
            else
               cProduto.KeyValue := 0;
         Except
            ShowMessage('Código do produto inválido !');
         End;
      end else begin
         cProduto.ClearValue;
      End;
end;

procedure TImpressao_FiscaisOP_Inventario_Novo.cProdutoChange(Sender: TObject);
begin
     cCodigo.Clear;
     If cProduto.DisplayValue <> '' then cCodigo.Text := Dados.ProdutosCodigo.AsString;
end;

procedure TImpressao_FiscaisOP_Inventario_Novo.cQtdeSaldoCalc(Sender: TObject);
begin
     if tInventario.FieldByName('Estoque').AsString = '0-EMPRESA' then begin
        cTotalQtdePro.Value := cTotalQtdePro.Value + tInventario.FieldByName('Qtde_Saldo').AsFloat;
        cTotalValPro.Value  := cTotalValPro.Value  + tInventario.FieldByName('Total_Saldo').AsFloat;
     end;
     if tInventario.FieldByName('Estoque').AsString = '1-ARMAZEM' then begin
        cTotalQtdeArm.Value := cTotalQtdeArm.Value + tInventario.FieldByName('Qtde_Saldo').AsFloat;
        cTotalValArm.Value  := cTotalValArm.Value  + tInventario.FieldByName('Total_Saldo').AsFloat;
     end;
     if tInventario.FieldByName('Estoque').AsString = '2-TERCEIROS' then begin
        cTotalQtdeTer.Value := cTotalQtdeTer.Value + tInventario.FieldByName('Qtde_Saldo').AsFloat;
        cTotalValTer.Value  := cTotalValTer.Value  + tInventario.FieldByName('Total_Saldo').AsFloat;
     end;
end;

end.
