unit frmImpressao_ProdutosHistorico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppParameter, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl,
  ppReport, ppDBPipe, DBAccess, MSAccess, Vcl.StdCtrls, RxLookup, Mask, Buttons, Vcl.ExtCtrls, RXCtrls, IniFiles, Funcoes, myChkBox, ppRichTx,
  RxCurrEdit, RxToolEdit, ppDesignLayer, ppStrtch, ppCache, ppProd, ppComm, ppRelatv, ppDB, MemDS, ppMemo;

type
  TImpressao_ProdutosHistorico = class(TForm)
    bPesquisaCEP: TSpeedButton;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    BitBtn1: TBitBtn;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    cCodigoProduto: TCurrencyEdit;
    cExcel: TCheckBox;
    cZebrado: TCheckBox;
    tItens: TMSQuery;
    pEmpresas: TppDBPipeline;
    pItens: TppDBPipeline;
    rProdutosHistorico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape5: TppShape;
    ppLabel6: TppLabel;
    ppLabel4: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    lFaixa: TppShape;
    ppDBText7: TppDBText;
    ppDBText12: TppDBText;
    ppDBText2: TppDBText;
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
    ppParameterList1: TppParameterList;
    dstItens: TDataSource;
    tPesquisa: TMSQuery;
    ppDBText1: TppDBText;
    ppShape11: TppShape;
    ppDBText6: TppDBText;
    ppShape12: TppShape;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppShape13: TppShape;
    ppLabel13: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    pSaldoEstoque: TppVariable;
    ppShape7: TppShape;
    ppLabel1: TppLabel;
    pSaldoInventario: TppVariable;
    cFinalidade: TCheckBox;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppShape14: TppShape;
    ppLabel14: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    pGrupoProduto: TppGroupFooterBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    pTotalEntradasEstoqueFinalidade: TppVariable;
    pTotalSaidasEstoqueFinalidade: TppVariable;
    pTotalEntradasInventarioFinalidade: TppVariable;
    pTotalSaidasInventarioFinalidade: TppVariable;
    ppDBRichText1: TppDBRichText;
    ppDBText13: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    pGrupoFinalidade: TppGroupFooterBand;
    ppShape15: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    pTotalEntradasEstoqueProduto: TppVariable;
    pTotalSaidasEstoqueProduto: TppVariable;
    pTotalEntradasInventarioProduto: TppVariable;
    pTotalSaidasInventarioProduto: TppVariable;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppShape16: TppShape;
    StaticText3: TStaticText;
    cProcesso: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cTipoNota: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cReferenciaFiscal: TRxDBLookupCombo;
    cEmissao: TRadioGroup;
    cOrdem: TRadioGroup;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    rExcel: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText14: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppImage1: TppImage;
    ppDetailBand2: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppDBText25: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText26: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppVariable5: TppVariable;
    ppVariable6: TppVariable;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppVariable7: TppVariable;
    ppVariable8: TppVariable;
    ppVariable9: TppVariable;
    ppVariable10: TppVariable;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel35: TppLabel;
    ppDBMemo1: TppDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesquisaCEPClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure pSaldoEstoqueCalc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure pSaldoInventarioCalc(Sender: TObject; var Value: Variant);
    procedure pTotalEntradasEstoqueFinalidadeCalc(Sender: TObject; var Value: Variant);
    procedure pTotalSaidasEstoqueFinalidadeCalc(Sender: TObject; var Value: Variant);
    procedure pTotalEntradasInventarioFinalidadeCalc(Sender: TObject;var Value: Variant);
    procedure pTotalSaidasInventarioFinalidadeCalc(Sender: TObject;var Value: Variant);
    procedure pGrupoProdutoAfterPrint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cCodigoProdutoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: String;
  end;

var
  Impressao_ProdutosHistorico: TImpressao_ProdutosHistorico;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProdutosHistorico.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProdutosHistorico.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_ProdutosHistorico.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_PRODUTOSHISTORICO', 'DataIni', cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_PRODUTOSHISTORICO', 'DataFim', cDataFim.Date);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Produto', cCodigoProduto.AsInteger);
      If Trim(cTipoNota.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_PRODUTOSHISTORICO', 'TipoNota', cTipoNota.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_PRODUTOSHISTORICO', 'TipoNota', -1);
      If Trim(cReferenciaFiscal.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Referencia', cReferenciaFiscal.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Referencia', -1);

      aINI.WriteString ('IMPRESSAO_PRODUTOSHISTORICO', 'Processo', cProcesso.Text);
      aINI.WriteBool   ('IMPRESSAO_PRODUTOSHISTORICO', 'Zebrado' , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_PRODUTOSHISTORICO', 'Excel'   , cExcel.Checked);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Emissao' , cEmissao.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Ordem'   , cOrdem.ItemIndex);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_ProdutosHistorico.Release;
      Impressao_ProdutosHistorico := nil;
end;

procedure TImpressao_ProdutosHistorico.bPesquisaCEPClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      mPesquisa := InputBox('Pesquisar Produto', 'Codigo/Descrição:', mPesquisa);
      If Dados.Produtos.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
         If Dados.Produtos.Locate('Codigo_Fabricante', mPesquisa, [loCaseInsensitive]) = False then begin
            If Dados.Produtos.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]) = false then begin
               tPesquisa.SQL.Clear;
               tPesquisa.SQL.Add('SELECT * FROM Produtos WHERE(Descricao LIKE'+QuotedStr('%'+mPesquisa+'%')+')');
               tPesquisa.Open;
               Dados.Produtos.Locate('Codigo', tPesquisa.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
            end;
         End;
      End;
      cProduto.DisplayValue := Dados.ProdutosDescricao_Reduzida.AsString;
      cCodigoProduto.Value  := Dados.ProdutosCodigo.AsInteger;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_ProdutosHistorico.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;

      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE Codigo IN((SELECT DISTINCT Tipo_Nota FROM NotasFiscais))');
           TipoNota.Open;

           ReferenciasFiscais.SQL.Clear;
           ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE Codigo IN((SELECT DISTINCT Referencia_Fiscal FROM NotasTerceiros))');
           ReferenciasFiscais.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                       := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date              := aINI.ReadDate   ('IMPRESSAO_PRODUTOSHISTORICO', 'DataIni'   , Date);
      cDataFim.Date              := aINI.ReadDate   ('IMPRESSAO_PRODUTOSHISTORICO', 'DataFim'   , Date);
      cCodigoProduto.Value       := aINI.ReadInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Produto'   , 0);
      cProcesso.KeyValue         := aINI.ReadInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Processo'  , 0);
      cTipoNota.KeyValue         := aINI.ReadInteger('IMPRESSAO_PRODUTOSHISTORICO', 'TipoNota'  , -1);
      cReferenciaFiscal.KeyValue := aINI.ReadInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Referencia', -1);
      cProduto.KeyValue          := aINI.ReadInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Produto'   , 0);
      cZebrado.Checked           := aINI.ReadBool   ('IMPRESSAO_PRODUTOSHISTORICO', 'Zebrado'   , false);
      cExcel.Checked             := aINI.ReadBool   ('IMPRESSAO_PRODUTOSHISTORICO', 'Excel'     , false);
      cEmissao.ItemIndex         := aINI.ReadInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Emissao'   , 2);
      cOrdem.ItemIndex           := aINI.ReadInteger('IMPRESSAO_PRODUTOSHISTORICO', 'Ordem'     , 0);
      aINI.Free;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_ProdutosHistorico.bImprimirClick(Sender: TObject);
begin
       With Dados do begin
            Empresas.SQL.Clear;
            Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
            Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
            Empresas.Open;
       End;

       lPeriodo.Caption := '';

       tItens.SQL.Clear;
       // Notas Fiscais de emissão própria, mais as transferências e as aberturas de estoque.
       If cEmissao.ItemIndex <> 1 then begin
          tItens.SQL.Add('SELECT Codigo_Mercadoria AS Codigo,');
          tItens.sql.add('       cast(substring(Descricao_Mercadoria, 1, iif(charindex(''<{'', Descricao_Mercadoria) = 0, 500, charindex(''<{'', Descricao_Mercadoria)-1)) as varchar(500)) as Descricao,');
          tItens.SQL.Add('       Nota,');
          tItens.SQL.Add('       Data,');
          tItens.SQL.Add('       (SELECT Natureza_Codigo FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)) AS Natureza_Codigo,');
          tItens.SQL.Add('       ''PRÓPRIA'' AS Emissao,');
          tItens.SQL.Add('       Tipo_Nota,');
          tItens.SQL.Add('       CASE WHEN Saida_Entrada = 0 THEN ''ENTRADA'' ELSE ''SAÍDA'' END AS Saida_Entrada,');
          tItens.SQL.Add('       (SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = Tipo_Nota)) AS Finalidade_Codigo,');
          tItens.SQL.Add('       CASE');
          tItens.SQL.Add('           WHEN ISNULL(Finalidade_Mercadoria, 0) = 0 THEN ''REVENDA'' ');
          tItens.SQL.Add('           WHEN ISNULL(Finalidade_Mercadoria, 0) = 1 THEN ''CONSUMO'' ');
          tItens.SQL.Add('           WHEN ISNULL(Finalidade_Mercadoria, 0) = 2 THEN ''DEVOLUÇÃO'' ');
          tItens.SQL.Add('           WHEN ISNULL(Finalidade_Mercadoria, 0) = 3 THEN ''EXPORTAÇÃO'' ');
          tItens.SQL.Add('           WHEN ISNULL(Finalidade_Mercadoria, 0) = 4 THEN ''PRÓPRIA EM PODER DE TERCEIROS'' ');
          tItens.SQL.Add('           WHEN ISNULL(Finalidade_Mercadoria, 0) = 5 THEN ''DE TERCEIROS EM PODER DA EMPRESA'' ');
          tItens.SQL.Add('           WHEN ISNULL(Finalidade_Mercadoria, 0) = 6 THEN ''IMOBILIZADO'' ');
          tItens.SQL.Add('           WHEN ISNULL(Finalidade_Mercadoria, 0) = 9 THEN ''OUTRAS'' ');
          tItens.SQL.Add('       END AS Finalidade_Descricao,');
          tItens.SQL.Add('       Processo,');
          tItens.SQL.Add('       CASE WHEN Saida_Entrada = 0 THEN Quantidade ELSE 0 END AS Qtde_Entrada,');
          tItens.SQL.Add('       CASE WHEN Saida_Entrada = 1 THEN Quantidade ELSE 0 END AS Qtde_Saida,');
          tItens.SQL.Add('       Movimenta_Estoque AS Estoque,');
          tItens.SQL.Add('       Movimenta_Inventario AS Inventario,');
          tItens.SQL.Add('       CASE WHEN Movimenta_Estoque    = 0 THEN '' '' ELSE ''X'' END AS EstoqueSN,');
          tItens.SQL.Add('       CASE WHEN Movimenta_Inventario = 0 THEN '' '' ELSE ''X'' END AS InventarioSN');
          tItens.SQL.Add('FROM NotasItens');
          tItens.SQL.Add('WHERE (isnull(Cancelada, 0) <> 1)');
          tItens.SQL.Add('AND   (ISNULL(Nfe_Denegada, 0) <> 1)');

          If Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
             tItens.SQL.Add('     AND (Data BETWEEN :pDataIni AND :pDataFim)');
             tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
             tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
             lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a '+cDataFim.Text+ '  ';
          End;
          If cCodigoProduto.Value > 0 then begin
             tItens.SQL.Add('     AND (Codigo_Mercadoria = :pCodigo)');
             tItens.ParamByName('pCodigo').AsInteger := cCodigoProduto.AsInteger;
             lPeriodo.Caption := lPeriodo.Caption + '  Produto:'+cCodigoProduto.Text;
          End;
          If Trim(cProcesso.Text) <> '' then begin
             tItens.SQL.Add('     AND (Processo = :pProcesso)');
             tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
             lPeriodo.Caption := lPeriodo.Caption + '  Processo:'+cProcesso.Text;
          End;
          If Trim(cTipoNota.Text) <> '' then begin
             tItens.SQL.Add('     AND (Tipo_Nota = :pTipoNota)');
             tItens.ParamByName('pTipoNota').AsInteger := cTipoNota.KeyValue;
             lPeriodo.Caption := lPeriodo.Caption + '  Tipo de Nota:'+Dados.TipoNotaCodigo.AsString;
          End;
          tItens.SQL.Add('UNION ALL');
       End;

       // Transferências/Abertura (Entrada).
       tItens.SQL.Add('SELECT Produto_Entrada AS Codigo,');
       tItens.SQL.Add('       (SELECT CAST(Descricao AS VARCHAR(500)) FROM Produtos WHERE Codigo = Produto_Entrada) AS Descricao,');
       tItens.SQL.Add('       Nota,');
       tItens.SQL.Add('       Data_Transferencia AS Data,');
       tItens.SQL.Add('       isnull(CFOP, ''0000'') AS Natureza_Codigo,');
       tItens.SQL.Add('       Emissao = CASE WHEN Motivo <> ''I'' THEN ''PRÓPRIA'' ELSE ''TERCEIROS'' END,');
       tItens.SQL.Add('       0 AS Tipo_Nota,');
       tItens.SQL.Add('       ''ENTRADA'' AS Saida_Entrada,');
       tItens.SQL.Add('       NULL AS Finalidade_Codigo,');
       tItens.SQL.Add('       Finalidade_Descricao = CASE WHEN Motivo = ''TRF'' THEN ''* TRANSFERÊNCIA DE SALDO *'' ');
       tItens.SQL.Add('                                   WHEN Motivo = ''A''   THEN ''* ABERTURA DE SALDO DE ESTOQUE *'' ');
       tItens.SQL.Add('                                   WHEN Motivo = ''I''   THEN ''* RETORNO MAT.PRIMA INDUSTRIAL.*'' ');
       tItens.SQL.Add('                                   WHEN Motivo = ''IND'' THEN ''* RETORNO MAT.PRIMA INDUSTRIAL.*'' ');
       tItens.SQL.Add('                              END,');
       tItens.SQL.Add('       Processo_Entrada AS Processo,');
       tItens.SQL.Add('       Quantidade AS Qtde_Entrada,');
       tItens.SQL.Add('       0 AS Qtde_Saida,');
       tItens.SQL.Add('       Estoque,');
       tItens.SQL.Add('       Inventario,');
       tItens.SQL.Add('       CASE WHEN Estoque    = 0 THEN '' '' ELSE ''X'' END AS EstoqueSN,');
       tItens.SQL.Add('       CASE WHEN Inventario = 0 THEN '' '' ELSE ''X'' END AS InventarioSN');
       tItens.SQL.Add('FROM   ProdutosTransferencia');
       tItens.SQL.Add('WHERE  (ISNULL(Produto_Entrada,0) <> 0)');

       If Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
          tItens.SQL.Add('     AND (Data_Transferencia BETWEEN :pDataIni AND :pDataFim)');
          tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
          tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
       End;
       If cCodigoProduto.Value > 0 then begin
          tItens.SQL.Add('     AND (Produto_Entrada = :pCodigo)');
          tItens.ParamByName('pCodigo').AsInteger := cCodigoProduto.AsInteger;
       End;
       If Trim(cProcesso.Text) <> '' then begin
          tItens.SQL.Add('     AND (Processo_Entrada = :pProcesso)');
          tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
       End;

       // Transferências (Saída).
       tItens.SQL.Add('UNION ALL');
       tItens.SQL.Add('SELECT Produto_Saida AS Codigo,');
       tItens.SQL.Add('       (SELECT CAST(Descricao AS VARCHAR(500)) FROM Produtos WHERE Codigo = Produto_Saida) AS Descricao,');
       tItens.SQL.Add('       Nota,');
       tItens.SQL.Add('       Data_Transferencia AS Data,');
       tItens.SQL.Add('       isnull(CFOP, ''0000'') AS Natureza_Codigo,');
       tItens.SQL.Add('       Emissao = CASE WHEN Motivo <> ''I'' THEN ''PRÓPRIA'' ELSE ''TERCEIROS'' END,');
       tItens.SQL.Add('       0 AS Tipo_Nota,');
       tItens.SQL.Add('       ''SAÍDA'' AS Saida_Entrada,');
       tItens.SQL.Add('       NULL AS Finalidade_Codigo,');
       tItens.SQL.Add('       Finalidade_Descricao = CASE WHEN Motivo = ''TRF'' THEN ''* TRANSFERÊNCIA DE SALDO *'' ');
       tItens.SQL.Add('                                   WHEN Motivo = ''A''   THEN ''* ABERTURA DE SALDO DE ESTOQUE *'' ');
       tItens.SQL.Add('                                   WHEN Motivo = ''I''   THEN ''* RETORNO MAT.PRIMA INDUSTRIAL.*'' ');
       tItens.SQL.Add('                                   WHEN Motivo = ''IND'' THEN ''* RETORNO MAT.PRIMA INDUSTRIAL.*'' ');
       tItens.SQL.Add('                              END,');
       tItens.SQL.Add('       Processo_Saida AS Processo,');
       tItens.SQL.Add('       0 AS Qtde_Entrada,');
       tItens.SQL.Add('       Quantidade AS Qtde_Saida,');
       tItens.SQL.Add('       Estoque,');
       tItens.SQL.Add('       Inventario,');
       tItens.SQL.Add('       CASE WHEN Estoque    = 0 THEN '' '' ELSE ''X'' END AS EstoqueSN,');
       tItens.SQL.Add('       CASE WHEN Inventario = 0 THEN '' '' ELSE ''X'' END AS InventarioSN');
       tItens.SQL.Add('FROM   ProdutosTransferencia');
       tItens.SQL.Add('WHERE  (ISNULL(Produto_Saida, 0) <> 0)');

       If Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
          tItens.SQL.Add('     AND (Data_Transferencia BETWEEN :pDataIni AND :pDataFim)');
          tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
          tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
       End;
       If cCodigoProduto.Value > 0 then begin
          tItens.SQL.Add('     AND (Produto_Saida = :pCodigo)');
          tItens.ParamByName('pCodigo').AsInteger := cCodigoProduto.AsInteger;
       End;
       If Trim(cProcesso.Text) <> '' then begin
          tItens.SQL.Add('     AND (Processo_Saida = :pProcesso)');
          tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
       End;

       If cEmissao.ItemIndex = 2 then begin
          tItens.SQL.Add('UNION ALL');
       End;

       // Notas Fiscais de emissão de terceiros.
       If cEmissao.ItemIndex <> 0 then begin
          tItens.SQL.Add('SELECT Codigo_Mercadoria AS Codigo,');
          tItens.sql.add('       cast(substring(Descricao_Mercadoria, 1, iif(charindex(''<{'', Descricao_Mercadoria) = 0, 500, charindex(''<{'', Descricao_Mercadoria)-1)) as varchar(500)) as Descricao,');
          tItens.SQL.Add('       Nota,');
          tItens.SQL.Add('       Data_Entrada AS Data,');
          tItens.SQL.Add('       Natureza_Codigo,');
          tItens.SQL.Add('       ''TERCEIROS'' AS Emissao,');
          tItens.SQL.Add('       Referencia_Fiscal AS Tipo_Nota,');
          tItens.SQL.Add('       ''ENTRADA'' AS Saida_Entrada,');
          tItens.SQL.Add('       (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) AS Finalidade_Codigo,');
          tItens.SQL.Add('       CASE');
          tItens.SQL.Add('           WHEN (SELECT ISNULL(Finalidade_Mercadoria, 0) FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0 THEN ''REVENDA'' ');
          tItens.SQL.Add('           WHEN (SELECT ISNULL(Finalidade_Mercadoria, 0) FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1 THEN ''CONSUMO'' ');
          tItens.SQL.Add('           WHEN (SELECT ISNULL(Finalidade_Mercadoria, 0) FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 2 THEN ''DEVOLUÇÃO'' ');
          tItens.SQL.Add('           WHEN (SELECT ISNULL(Finalidade_Mercadoria, 0) FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 3 THEN ''EXPORTAÇÃO'' ');
          tItens.SQL.Add('           WHEN (SELECT ISNULL(Finalidade_Mercadoria, 0) FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 4 THEN ''PRÓPRIA EM PODER DE TERCEIROS'' ');
          tItens.SQL.Add('           WHEN (SELECT ISNULL(Finalidade_Mercadoria, 0) FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 5 THEN ''DE TERCEIROS EM PODER DA EMPRESA'' ');
          tItens.SQL.Add('           WHEN (SELECT ISNULL(Finalidade_Mercadoria, 0) FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 6 THEN ''IMOBILIZADO'' ');
          tItens.SQL.Add('           WHEN (SELECT ISNULL(Finalidade_Mercadoria, 0) FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 9 THEN ''OUTRAS'' ');
          tItens.SQL.Add('       END AS Finalidade_Descricao,');
          tItens.SQL.Add('       Processo,');
          tItens.SQL.Add('       Quantidade AS Qtde_Entrada,');
          tItens.SQL.Add('       0 AS Qtde_Saida,');
          tItens.SQL.Add('       Movimenta_Estoque AS Estoque,');
          tItens.SQL.Add('       Movimenta_Inventario AS Inventario,');
          tItens.SQL.Add('       CASE WHEN Movimenta_Estoque    = 0 THEN '' '' ELSE ''X'' END AS EstoqueSN,');
          tItens.SQL.Add('       CASE WHEN Movimenta_Inventario = 0 THEN '' '' ELSE ''X'' END AS InventarioSN');
          tItens.SQL.Add('FROM   NotasTerceirosItens');
          tItens.SQL.Add('WHERE  (Nota IS NOT NULL)');

          If Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
             tItens.SQL.Add('     AND (Data_Entrada BETWEEN :pDataIni AND :pDataFim)');
             tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
             tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
          End;
          If cCodigoProduto.Value > 0 then begin
             tItens.SQL.Add('     AND (Codigo_Mercadoria = :pCodigo)');
             tItens.ParamByName('pCodigo').AsInteger := cCodigoProduto.AsInteger;
          End;
          If Trim(cProcesso.Text) <> '' then begin
             tItens.SQL.Add('     AND (Processo = :pProcesso)');
             tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
          End;
          If Trim(cReferenciaFiscal.Text) <> '' then begin
             tItens.SQL.Add('     AND (Referencia_Fiscal = :pReferencia)');
             tItens.ParamByName('pReferencia').AsInteger := cReferenciaFiscal.KeyValue;
             lPeriodo.Caption := lPeriodo.Caption + '  Referência Fiscal:'+Dados.ReferenciasFiscaisCodigo.AsString
          End;
       End;

       If cOrdem.ItemIndex = 0 then tItens.SQL.Add('ORDER BY Codigo_Mercadoria, Data, Saida_Entrada, Nota');
       If cOrdem.ItemIndex = 1 then tItens.SQL.Add('ORDER BY Codigo_Mercadoria, Saida_Entrada, Nota, Data');
       If cOrdem.ItemIndex = 2 then tItens.SQL.Add('ORDER BY Codigo_Mercadoria, Finalidade_Descricao, Data, Nota');
       If cOrdem.ItemIndex = 3 then tItens.SQL.Add('ORDER BY Codigo_Mercadoria, Natureza_Codigo, Data, Saida_Entrada, Nota');
       If cOrdem.ItemIndex = 4 then tItens.SQL.Add('ORDER BY Codigo_Mercadoria, Tipo_Nota, Data, Saida_Entrada,Nota');

       //tItens.SQl.SaveToFile('c:\temp\Produtos_Historico.SQL');
       tItens.Open;

       If Dados.EmpresasMatriz_Filial.AsBoolean = true then
          lTitulo.Caption := 'Histórico de Movimentação dos Produtos - '+'MATRIZ ('+ Dados.EmpresasEstado.AsString+')'
       else
          lTitulo.Caption := 'Histórico de Movimentação dos Produtos - '+'FILIAL ' + Dados.EmpresasNumero_Filial.AsString+' ('+Dados.EmpresasEstado.AsString+')';

       lFaixa.Visible           := cZebrado.Checked;
       pGrupoFinalidade.Visible := cFinalidade.Checked;

       If tItens.RecordCount > 0 then begin
          If cExcel.Checked = false then begin
              if FileExists(Dados.EmpresasLogo.Value) then begin
                 iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              end;
              rProdutosHistorico.Print;
              rProdutosHistorico.Reset;
          end else begin
              with rExcel do begin
                   OpenFile                  := true;
                   AllowPrintToArchive       := true;
                   AllowPrintToFile          := true;
                   DeviceType                := 'XlsxReport';
                   XLSSettings.AppName       := 'Cybersoft - ERP Importa';
                   XLSSettings.Author        := 'Cybersoft';
                   XLSSettings.Title         := 'Movimentação de Produtos';
                   XLSSettings.WorksheetName := 'Movimentação de Produtos';
                   ArchiveFileName           := 'c:\faturamento\MovimentaçãoProdutos.xlsx';
                   TextFileName              := 'c:\faturamento\MovimentaçãoProdutos.xlsx';
                   ShowPrintDialog           := false;
                   Print;
                   Reset;
                   FreeOnRelease;
              end;
          End;
       end else begin
          ShowMessage('Não há dados para o relatório solicitado!');
       End;
end;

procedure TImpressao_ProdutosHistorico.pSaldoEstoqueCalc(Sender: TObject;var Value: Variant);
begin
      If tItens.FieldByName('Estoque').AsBoolean then begin
         Value := Value + tItens.FieldByName('Qtde_Entrada').AsFloat - tItens.FieldByName('Qtde_Saida').AsFloat
      End;
end;

procedure TImpressao_ProdutosHistorico.pSaldoInventarioCalc(Sender: TObject;var Value: Variant);
begin
      If tItens.FieldByName('Inventario').AsBoolean then begin
         Value := Value + tItens.FieldByName('Qtde_Entrada').AsFloat - tItens.FieldByName('Qtde_Saida').AsFloat;
      End;
end;

procedure TImpressao_ProdutosHistorico.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then begin
         lFaixa.Visible := not lFaixa.Visible;
      End;
end;

procedure TImpressao_ProdutosHistorico.pTotalEntradasEstoqueFinalidadeCalc(Sender: TObject;var Value: Variant);
begin
      If tItens.FieldByName('Estoque').AsBoolean then begin
         Value := Value + tItens.FieldByName('Qtde_Entrada').AsFloat;
      End;
end;

procedure TImpressao_ProdutosHistorico.pTotalSaidasEstoqueFinalidadeCalc(Sender: TObject; var Value: Variant);
begin
      If tItens.FieldByName('Estoque').AsBoolean then begin
         Value := Value + tItens.FieldByName('Qtde_Saida').AsFloat;
      End;
end;

procedure TImpressao_ProdutosHistorico.pTotalEntradasInventarioFinalidadeCalc(Sender: TObject; var Value: Variant);
begin
      If tItens.FieldByName('Inventario').AsBoolean then begin
         Value := Value + tItens.FieldByName('Qtde_Entrada').AsFloat;
      End;
end;

procedure TImpressao_ProdutosHistorico.pTotalSaidasInventarioFinalidadeCalc(Sender: TObject; var Value: Variant);
begin
      If tItens.FieldByName('Inventario').AsBoolean then begin
         Value := Value + tItens.FieldByName('Qtde_Saida').AsFloat;
      End;
end;

procedure TImpressao_ProdutosHistorico.pGrupoProdutoAfterPrint(Sender: TObject);
begin
     pTotalEntradasInventarioFinalidade.Value := 0;
     pTotalEntradasEstoqueFinalidade.Value    := 0;
     pTotalSaidasInventarioFinalidade.Value   := 0;
     pTotalSaidasEstoqueFinalidade.Value      := 0;
     pTotalEntradasInventarioProduto.Value    := 0;
     pTotalEntradasEstoqueProduto.Value       := 0;
     pTotalSaidasInventarioProduto.Value      := 0;
     pTotalSaidasEstoqueProduto.Value         := 0;
     pSaldoEstoque.Value                      := 0;
     pSaldoInventario.Value                   := 0;
end;

procedure TImpressao_ProdutosHistorico.BitBtn1Click(Sender: TObject);
begin
     cDataIni.Clear;
     cDataFim.Clear;
     cProduto.ClearValue;
     cCodigoProduto.Clear;
     cTipoNota.ClearValue;
     cReferenciafiscal.ClearValue;
end;

procedure TImpressao_ProdutosHistorico.cCodigoProdutoChange(Sender: TObject);
begin
      If Trim(cCodigoProduto.Text) <> '' then begin
         Try
            If Dados.Produtos.Locate('Codigo', StrtoInt(cCodigoProduto.Text), [loCaseInsensitive]) = true then
               cProduto.KeyValue := Dados.ProdutosCodigo.AsInteger
            else
               cProduto.KeyValue := 0;
         Except
            ShowMessage('Código do produto inválido !');
         End;
      End;
end;

end.
