unit frmImpressao_Faturamento_OP_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppVar, DB, DBAccess, MSAccess, ppDBPipe, ppParameter, ppMemo, ppBands,
  ppClass, ppCtrls, ppPrnabl, ppReport, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, RXCtrls, Mask, Funcoes, Buttons, INIFiles, system.UITypes,  ComObj, RxCurrEdit, RxToolEdit, MemDS, ppDB, ppDesignLayer,
  ppStrtch, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Faturamento_OP_Estoque = class(TForm)
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    rEstoque: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape7: TppShape;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppLabel9: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppDetailBand1: TppDetailBand;
    fFaixa: TppShape;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppGroup2: TppGroup;
    gCab_Produto: TppGroupHeaderBand;
    ppLabel10: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLine1: TppLine;
    ppLine6: TppLine;
    ppDBText19: TppDBText;
    gRodaPeProduto: TppGroupFooterBand;
    ppParameterList1: TppParameterList;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    pEmpresas: TppDBPipeline;
    cData: TDateEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    cCodigoProduto: TCurrencyEdit;
    cANP: TCheckBox;
    cExcel: TCheckBox;
    cZebrado: TCheckBox;
    cReciclavel: TCheckBox;
    ppShape9: TppShape;
    ppLabel8: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppShape8: TppShape;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppShape10: TppShape;
    ppLabel11: TppLabel;
    ppShape11: TppShape;
    ppLabel12: TppLabel;
    ppDBText8: TppDBText;
    ppShape12: TppShape;
    ppLabel14: TppLabel;
    ppDBText9: TppDBText;
    ppShape13: TppShape;
    ppLabel15: TppLabel;
    ppDBText11: TppDBText;
    ppLine2: TppLine;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppShape14: TppShape;
    ppLabel18: TppLabel;
    ppDBText12: TppDBText;
    ppShape15: TppShape;
    ppLabel19: TppLabel;
    lSaldoTerceiros: TppVariable;
    lSaldoEmpresa: TppVariable;
    ppDBCalc1: TppDBCalc;
    lTotalEntradas: TppDBCalc;
    lTotalEntradasDev: TppDBCalc;
    lTotalSaidaTerceiros: TppDBCalc;
    lTotalRetornoTerceiros: TppDBCalc;
    lTotalVendas: TppDBCalc;
    lTotalSaldoTerceiro: TppVariable;
    lTotalSaldoEmpresa: TppVariable;
    ppDBText10: TppDBText;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    StaticText1: TStaticText;
    cCFOP: TRxDBLookupCombo;
    StaticText2: TStaticText;
    cTipoNota: TRxDBLookupCombo;
    tNatureza: TMSQuery;
    dsNatureza: TDataSource;
    bLimpar: TBitBtn;
    StaticText3: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    ppLabel16: TppLabel;
    lTotalGeral: TppVariable;
    bPesquisaCEP: TSpeedButton;
    tPesquisa: TMSQuery;
    ppShape16: TppShape;
    ppLabel20: TppLabel;
    ppDBText13: TppDBText;
    lTotalSaidasDev: TppDBCalc;
    cPedidos: TCheckBox;
    ppShape17: TppShape;
    ppLabel21: TppLabel;
    ppDBText14: TppDBText;
    lTotalOutras: TppDBCalc;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    cSaldoProcesso: TCheckBox;
    cSaldoProduto: TCheckBox;
    ppLine11: TppLine;
    StaticText7: TStaticText;
    cCliente: TRxDBLookupCombo;
    StaticText8: TStaticText;
    cFabricante: TRxDBLookupCombo;
    StaticText9: TStaticText;
    cTipoProd: TRxDBLookupCombo;
    lTipo: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure lSaldoTerceirosCalc(Sender: TObject; var Value: Variant);
    procedure gRodaPeProdutoAfterPrint(Sender: TObject);
    procedure lSaldoEmpresaCalc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure gRodaPeProdutoBeforePrint(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure cCodigoProdutoChange(Sender: TObject);
    procedure cProdutoChange(Sender: TObject);
    procedure ExportaEXCEL;
    procedure cProcessoChange(Sender: TObject);
    procedure bPesquisaCEPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : WideString;
  end;

var
  Impressao_Faturamento_OP_Estoque: TImpressao_Faturamento_OP_Estoque;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_OP_Estoque.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_OP_Estoque.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_Faturamento_OP_Estoque.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Data'      , cData.Date);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Produto'   , cCodigoProduto.AsInteger);
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Processo'  , cProcesso.Text);
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'CFOP'      , cCFOP.Text);
      If Trim(cTipoNota.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_ESTOQUE', 'TipoNota'  , Dados.TipoNotaCodigo.AsInteger)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_ESTOQUE', 'TipoNota'  , 0);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Zebrado'   , cZebrado.Checked);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Excel'     , cExcel.Checked);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Pedidos'   , cPedidos.Checked);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Reciclavel', cReciclavel.Checked);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'ANP'       , cANP.Checked);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'SaldoProc' , cSaldoProcesso.Checked);
      aINI.WriteBool  ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'SaldoProd' , cSaldoProduto.Checked);
      If Trim(cFornecedor.Text) <> '' then
         aINI.WriteString('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Fornecedor'  , Dados.FornecedoresCodigo.AsString)
      else
         aINI.WriteString('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Fornecedor'  , '');
      If Trim(cCliente.Text) <> '' then
         aINI.WriteString('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Cliente'  , Dados.ClientesCodigo.AsString)
      else
         aINI.WriteString('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Cliente'  , '');
      If Trim(cFabricante.Text) <> '' then
         aINI.WriteString('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Fabricante', Dados.FabricantesCodigo.AsString)
      else
         aINI.WriteString('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Fabricante'  , '');
      If Trim(cTipoProd.Text) <> '' then
         aINI.WriteString('IMPRESSAO_FATURAMENTO_ESTOQUE', 'TipoProduto', Dados.TipoProdutoCodigo.AsString)
      else
         aINI.WriteString('IMPRESSAO_FATURAMENTO_ESTOQUE', 'TipoProduto'  , '');
      aINI.Free;

      tNatureza.Close;
      tItens.Close;
      //tDestinatario.Close;
      
      FecharTabelas(Dados, nil, nil, nil);

      Impressao_Faturamento_OP_Estoque.Release;
      Impressao_Faturamento_OP_Estoque := nil;
end;

procedure TImpressao_Faturamento_OP_Estoque.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;

      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;

           TipoProduto.SQL.Clear;
           TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
           TipoProduto.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           tNatureza.SQL.Clear;
           tNatureza.SQL.Add('SELECT *');
           tNatureza.SQL.Add('FROM Cybersoft_Cadastros.dbo.Natureza');
           tNatureza.SQL.Add('WHERE (SELECT COUNT(*) FROM NotasFiscais WHERE(Natureza_Codigo = Codigo))+(SELECT COUNT(*) FROM NotasTerceiros WHERE(Natureza_Codigo = Codigo)) > 0');
           tNatureza.SQL.Add('ORDER BY Descricao_NF');
           tNatureza.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE Codigo IN((SELECT DISTINCT Tipo_Nota FROM NotasFiscais))');
           TipoNota.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE ISNULL(Ativo, 0) = 1 ORDER BY Nome');
           Fornecedores.Open;

           Fabricantes.SQL.Clear;
           Fabricantes.SQL.Add('SELECT * FROM Fabricantes WHERE ISNULL(Ativo, 0) = 1 ORDER BY Nome');
           Fabricantes.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE ISNULL(Ativo, 0) = 1 ORDER BY Nome');
           Clientes.Open;
 
           // Carregando as ultimas opções utilizadas no relatório como default.
           aINI                   := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
           cData.Date             := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Data'       , Date);
           cCodigoProduto.Value   := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Produto'    , 0);
           cProcesso.KeyValue     := aINI.ReadString ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Processo'   , '');
           cCFOP.KeyValue         := aINI.ReadString ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'CFOP'       , '');
           cTipoNota.KeyValue     := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_ESTOQUE', 'TipoNota'   , 0);
           cZebrado.Checked       := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Zebrado'    , false);
           cPedidos.Checked       := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Pedidos'    , false);
           cExcel.Checked         := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Excel'      , false);
           cReciclavel.Checked    := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Reciclavel' , false);
           cANP.Checked           := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'ANP'        , false);
           cSaldoProcesso.Checked := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'SaldoProc'  , false);
           cSaldoProduto.Checked  := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'SaldoProd'  , false);
           cFornecedor.KeyValue   := aINI.ReadString ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Fornecedor' , '');
           cCliente.KeyValue      := aINI.ReadString ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Cliente'    , '');
           cFabricante.KeyValue   := aINI.ReadString ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'Fabricante' , '');
           cTipoProd.KeyValue     := aINI.ReadString ('IMPRESSAO_FATURAMENTO_ESTOQUE', 'TipoProduto', '');

           If Trim(RemoveCaracter('/', '', cData.Text)) = '' then cData.Date := Date;
      End;
      aINI.Free;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_Faturamento_OP_Estoque.bImprimirClick(Sender: TObject);
begin
      If Trim(RemoveCaracter('/', '', cData.Text)) = '' then begin
         Showmessage('Data invalida!'+#13+#13+'É necessário Informar uma para o relatório.');
         Abort;
      End;

      Screen.Cursor := crSQLWait;
      Dados.Empresas.Open;
      Dados.Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);

      //=======================================================================[ NOTAS PRÓPRIAS ]========================================================================]
      (*
      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT Tipo = ''P'',');
      tItens.SQL.Add('       Sai_Entra = NI.Saida_Entrada,');
      tItens.SQL.Add('       NI.Codigo_Mercadoria,');
      tItens.SQL.Add('       NI.Codigo_Fabricante,');
      tItens.SQL.Add('       NI.Processo,');
      tItens.SQL.Add('       Descricao_Mercadoria = CAST(NI.Descricao_Mercadoria AS VARCHAR(500)),');
      tItens.SQL.Add('       NI.Data,');
      tItens.SQL.Add('       NI.Nota,');
      tItens.SQL.Add('       CFOP              = NF.Natureza_Codigo,');
      tItens.SQL.Add('       Nota_Compl        = (SELECT MAX(Numero) FROM NotasFiscais NF WHERE(NF.Nota_referencia = NI.Nota) AND (NF.Data_Referencia = NI.Data) AND (Complementar = 1)),');
      tItens.SQL.Add('       Entrada_Compra    = CASE WHEN (NI.Saida_Entrada = 0) AND (ISNULL(NF.Devolucao,0) <> 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) <> 4) THEN NI.Quantidade ELSE 0 END,');
      tItens.SQL.Add('       Entrada_Terceiros = CASE WHEN (NI.Saida_Entrada = 0) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 4) THEN NI.Quantidade ELSE 0 END,');
      tItens.SQL.Add('       Entrada_Devol     = CASE WHEN (NI.Saida_Entrada = 0) AND (ISNULL(NF.Devolucao,0) = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) <> 4) THEN NI.Quantidade ELSE 0 END,');
      tItens.SQL.Add('       Saida_Devol       = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) IN(2, 5)) THEN NI.Quantidade ELSE 0 END,');
      tItens.SQL.Add('       Saida_Venda       = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 0 OR (SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 1) THEN NI.Quantidade ELSE 0 END,');
      tItens.SQL.Add('       Saida_Terceiros   = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 4) THEN NI.Quantidade ELSE 0 END,');
      tItens.SQL.Add('       Saida_Outras      = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 9) THEN NI.Quantidade ELSE 0 END,');
      tItens.SQL.Add('       Total_Item        = Valor_Total,');
      tItens.SQL.Add('       Valor_Unitario    = Valor_Unitario,');
      tItens.SQL.Add('       Destinatario_Nome,');
      tItens.SQL.Add('       Tipo_Produto      = (SELECT CAST(Codigo AS VARCHAR(10))+'' - ''+Descricao FROM Cybersoft_Cadastros.dbo.TipoProduto WHERE Codigo = PD.Tipo)');
      tItens.SQL.Add('INTO   #TEMP');
      tItens.SQL.Add('FROM   NotasItens NI, NotasFiscais NF, Produtos PD');
      tItens.SQL.Add('WHERE (NF.Numero = NI.Nota) AND (NF.Data_Emissao = NI.Data)');
      tItens.SQL.Add('AND   (PD.Codigo = NI.Codigo_Mercadoria)');
      tItens.SQL.Add('AND   (NI.Movimenta_Estoque = 1) AND (NI.Cancelada <> 1) AND (ISNULL(NI.Nfe_Denegada,0) = 0)');
      tItens.SQL.Add('AND   (ISNULL(NF.Complementar,0) = 0)');

      If Trim(Removecaracter('/', '', cData.Text)) <> '' then begin
         tItens.SQL.Add('       AND (NF.Data_Emissao <= :pData)');
         tItens.ParamByName('pData').AsDate := cData.Date;
      End;
      If cCodigoProduto.Value > 0 then begin
         tItens.SQL.Add('       AND (Codigo_Mercadoria = :pProduto)');
         tItens.ParamByName('pProduto').AsInteger := cCodigoProduto.AsInteger;
      End;
      If Trim(cProcesso.Value) <> '' then begin
         tItens.SQL.Add('       AND (NI.Processo = :pProcesso)');
      End;
      If Trim(cCFOP.DisplayValue) <> '' then begin
         tItens.SQL.Add('       AND (NF.Natureza_Codigo = :pCFOP)');
         tItens.ParamByName('pCFOP').AsString := tNatureza.FieldByName('Codigo').AsString;
      End;
      If Trim(cTipoNota.DisplayValue) <> '' then begin
         tItens.SQL.Add('       AND (NF.Tipo_Nota = :pTipoNota)');
         tItens.ParamByName('pTipoNota').AsInteger := Dados.TipoNotaCodigo.AsInteger;
      End;
      If cANP.Checked = true then begin
         tItens.SQL.Add('       AND (SELECT LTRIM(RTRIM(Codigo_ANP)) FROM Produtos WHERE(Codigo = NI.Codigo_Mercadoria)) <> '''' ');
      End;
      If cReciclavel.Checked = true then begin
         tItens.SQL.Add('       AND (SELECT Reciclavel FROM Produtos WHERE(Codigo = NI.Codigo_Mercadoria)) = 1 ');
      End;
      if Trim(cFornecedor.DisplayValue) <> '' then begin
         if Trim(cCliente.DisplayValue) = '' then begin
            // Apenas fornecedor informado.
            tItens.SQL.Add('       AND ( NF.Fornecedor_Codigo = :pForn');
            tItens.SQL.Add('       OR (NF.Saida_Entrada = 1 AND (Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasItens NI2 WHERE (SELECT Fornecedor_Codigo FROM NotasFiscais NF2 WHERE NF2.Numero = NI2.Nota AND NF2.Data_Emissao = NI2.Data) = :pForn)))');
            tItens.SQL.Add('       OR Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasTerceirosItens NI2 WHERE Fornecedor = :pForn) )');
         end else begin
            // Fornecedor informado + Cliente informado.
            tItens.SQL.Add('       AND ( NF.Fornecedor_Codigo = :pForn');
            tItens.SQL.Add('       OR (NF.Saida_Entrada = 1 AND Cliente_Codigo = :pCli AND Codigo_Mercadoria');
            tItens.SQL.Add('       IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasItens NI2 WHERE (SELECT Fornecedor_Codigo FROM NotasFiscais NF2 WHERE NF2.Numero = NI2.Nota AND NF2.Data_Emissao = NI2.Data) = :pForn)) )');
            tItens.ParamByName('pCli').AsInteger := Dados.ClientesCodigo.AsInteger;
         end;
         tItens.ParamByName('pForn').AsInteger := Dados.FornecedoresCodigo.AsInteger;
      end else begin
         if Trim(cCliente.DisplayValue) <> '' then begin
            // Apendas cliente informado.
            tItens.SQL.Add('       AND ( NF.Cliente_Codigo = :pCli ');
            tItens.SQL.Add('       OR (NF.Saida_Entrada = 0 AND Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasItens NI2 WHERE (SELECT Cliente_Codigo FROM NotasFiscais NF2 WHERE NF2.Numero = NI2.Nota AND NF2.Data_Emissao = NI2.Data) = :pCli)) )');
            tItens.ParamByName('pCli').AsInteger := Dados.ClientesCodigo.AsInteger;
         end;
      end;
      if Trim(cFabricante.DisplayValue) <> '' then begin
         tItens.SQL.Add('       AND NI.Codigo_Mercadoria IN(SELECT Codigo FROM Produtos WHERE Fabricante = :pFabr)');
         tItens.ParamByName('pFabr').AsInteger := Dados.FabricantesCodigo.AsInteger;
      end;
      If Trim(cTipoProd.DisplayValue) <> '' then begin
         tItens.SQL.Add('AND    (PD.Tipo = :pTipoProd)');
         tItens.ParamByName('pTipoProd').AsInteger := Dados.TipoProdutoCodigo.AsInteger;
      End;
      *)
      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT Tipo = ''P'', ');
      tItens.SQL.Add('       Sai_Entra = NI.Saida_Entrada, ');
      tItens.SQL.Add('       NI.Codigo_Mercadoria, ');
      tItens.SQL.Add('       NI.Codigo_Fabricante, ');
      tItens.SQL.Add('       NI.Processo, ');
      tItens.SQL.Add('       Descricao_Mercadoria = CAST(NI.Descricao_Mercadoria AS VARCHAR(500)), ');
      tItens.SQL.Add('       NI.Data, ');
      tItens.SQL.Add('       NI.Nota, ');
      tItens.SQL.Add('       CFOP              = NI.Natureza_Codigo, ');
      tItens.SQL.Add('       Nota_Compl        = (SELECT MAX(Numero) FROM NotasFiscais NF WHERE(NF.Nota_referencia = NI.Nota) AND (NF.Data_Referencia = NI.Data) AND (Complementar = 1)), ');
      tItens.SQL.Add('       Entrada_Compra    = CASE WHEN (NI.Saida_Entrada = 0) AND (ISNULL(NI.Devolucao,0) <> 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NI.Tipo_Nota)) <> 4) THEN NI.Quantidade ELSE 0 END, ');
      tItens.SQL.Add('       Entrada_Terceiros = CASE WHEN (NI.Saida_Entrada = 0) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NI.Tipo_Nota)) = 4) THEN NI.Quantidade ELSE 0 END, ');
      tItens.SQL.Add('       Entrada_Devol     = CASE WHEN (NI.Saida_Entrada = 0) AND (ISNULL(NI.Devolucao,0) = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NI.Tipo_Nota)) <> 4) THEN NI.Quantidade ELSE 0 END, ');
      tItens.SQL.Add('       Saida_Devol       = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NI.Tipo_Nota)) IN(2, 5)) THEN NI.Quantidade ELSE 0 END, ');
      tItens.SQL.Add('       Saida_Venda       = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NI.Tipo_Nota)) = 0 OR (SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NI.Tipo_Nota)) = 1)');
      tItens.SQL.Add('                                                                  THEN NI.Quantidade ELSE 0 END, ');
      tItens.SQL.Add('       Saida_Terceiros   = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NI.Tipo_Nota)) = 4) THEN NI.Quantidade ELSE 0 END, ');
      tItens.SQL.Add('       Saida_Outras      = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NI.Tipo_Nota)) = 9) THEN NI.Quantidade ELSE 0 END, ');
      tItens.SQL.Add('       Total_Item        = Valor_Total, ');
      tItens.SQL.Add('       Valor_Unitario    = Valor_Unitario, ');
      tItens.SQL.Add('       Destinatario_Nome = (SELECT Destinatario_Nome FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data), ');
      tItens.SQL.Add('       Tipo_Produto      = (SELECT CAST(Codigo AS VARCHAR(10))+'' - ''+Descricao FROM Cybersoft_Cadastros.dbo.TipoProduto WHERE Codigo = (SELECT Tipo FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria)) ');
      tItens.SQL.Add('INTO   #TEMP');
      tItens.SQL.Add('FROM   NotasItens NI ');
      tItens.SQL.Add('WHERE  NI.Movimenta_Estoque = 1 ');

      If Trim(Removecaracter('/', '', cData.Text)) <> '' then begin
         tItens.SQL.Add('       AND (NI.Data <= :pData)');
         tItens.ParamByName('pData').AsDate := cData.Date;
      end;

      tItens.SQL.Add('  AND  NI.Cancelada <> 1 ');
      tItens.SQL.Add('  AND  NI.Nfe_Denegada <> 1 ');
      tItens.SQL.Add('  AND  ISNULL((SELECT Complementar FROM NotasFiscais WHERE Numero = NI.Nota AND Data_Emissao = NI.Data), 0) = 0 ');

      If cCodigoProduto.Value > 0 then begin
         tItens.SQL.Add('       AND (Codigo_Mercadoria = :pProduto)');
         tItens.ParamByName('pProduto').AsInteger := cCodigoProduto.AsInteger;
      End;
      If Trim(cProcesso.Value) <> '' then begin
         tItens.SQL.Add('       AND (NI.Processo = :pProcesso)');
      End;
      If Trim(cCFOP.DisplayValue) <> '' then begin
         tItens.SQL.Add('       AND (NI.Natureza_Codigo = :pCFOP)');
         tItens.ParamByName('pCFOP').AsString := tNatureza.FieldByName('Codigo').AsString;
      End;
      If Trim(cTipoNota.DisplayValue) <> '' then begin
         tItens.SQL.Add('       AND (NI.Tipo_Nota = :pTipoNota)');
         tItens.ParamByName('pTipoNota').AsInteger := Dados.TipoNotaCodigo.AsInteger;
      End;
      If cANP.Checked = true then begin
         tItens.SQL.Add('       AND (SELECT LTRIM(RTRIM(Codigo_ANP)) FROM Produtos WHERE(Codigo = NI.Codigo_Mercadoria)) <> '''' ');
      End;
      If cReciclavel.Checked = true then begin
         tItens.SQL.Add('       AND (SELECT Reciclavel FROM Produtos WHERE(Codigo = NI.Codigo_Mercadoria)) = 1 ');
      End;
      if Trim(cFornecedor.DisplayValue) <> '' then begin
         if Trim(cCliente.DisplayValue) = '' then begin
            // Apenas fornecedor informado.
            titens.SQL.add('       AND ( (SELECT Fornecedor_Codigo FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data) = :pForn');
            tItens.SQL.Add('       OR (NI.Saida_Entrada = 1 AND (Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasItens NI2 WHERE (SELECT Fornecedor_Codigo FROM NotasFiscais NF2 WHERE NF2.Numero = NI2.Nota AND NF2.Data_Emissao = NI2.Data) = :pForn)))');
            tItens.SQL.Add('       OR Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasTerceirosItens NI2 WHERE Fornecedor = :pForn) )');
         end else begin
            // Fornecedor informado + Cliente informado.
            tItens.SQL.Add('       AND ( NF.Fornecedor_Codigo = :pForn');
            tItens.SQL.Add('       OR (NF.Saida_Entrada = 1 AND Cliente_Codigo = :pCli AND Codigo_Mercadoria');
            tItens.SQL.Add('       IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasItens NI2 WHERE (SELECT Fornecedor_Codigo FROM NotasFiscais NF2 WHERE NF2.Numero = NI2.Nota AND NF2.Data_Emissao = NI2.Data) = :pForn)) )');
            tItens.ParamByName('pCli').AsInteger := Dados.ClientesCodigo.AsInteger;
         end;
         tItens.ParamByName('pForn').AsInteger := Dados.FornecedoresCodigo.AsInteger;
      end else begin
         if Trim(cCliente.DisplayValue) <> '' then begin
            // Apendas cliente informado.
            tItens.SQL.Add('       AND ( (SELECT Cliente_Codigo FROM NotasFiscais NF WHERE NF.Data_Emissao = NI.Data AND NF.Numero = NI.Nota) = :pCli ');
            tItens.SQL.Add('       OR (NI.Saida_Entrada = 0 AND Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasItens NI2 WHERE (SELECT Cliente_Codigo FROM NotasFiscais NF2 WHERE NF2.Numero = NI2.Nota AND NF2.Data_Emissao = NI2.Data) = :pCli)) )');
            tItens.ParamByName('pCli').AsInteger := Dados.ClientesCodigo.AsInteger;
         end;
      end;
      if Trim(cFabricante.DisplayValue) <> '' then begin
         tItens.SQL.Add('       AND NI.Codigo_Mercadoria IN(SELECT Codigo FROM Produtos WHERE Fabricante = :pFabr)');
         tItens.ParamByName('pFabr').AsInteger := Dados.FabricantesCodigo.AsInteger;
      end;
      If Trim(cTipoProd.DisplayValue) <> '' then begin
         tItens.SQL.add('AND    (SELECT Tipo FROM Produtos WHERE Codigo = NI.Codigo_Mercadoria) = :pTipoProd');
         tItens.ParamByName('pTipoProd').AsInteger := Dados.TipoProdutoCodigo.AsInteger;
      End;

      // *** TRANSFERÊNCIAS DE AJUSTE DE ESTOQUE ***
      tItens.SQL.Add('UNION ALL');
      tItens.SQL.Add('SELECT Tipo = CASE WHEN Motivo <> ''I'' THEN ''P'' ELSE ''T'' END,');
      tItens.SQL.Add('       Sai_Entra = 0,');
      tItens.SQL.Add('       PT.Produto_Entrada,');
      tItens.SQL.Add('       null,');
      tItens.SQL.Add('       Processo_Entrada AS Processo,');
      tItens.SQL.Add('       Descricao_Mercadoria = (SELECT CAST(Descricao AS VARCHAR(500)) FROM Produtos WHERE Codigo = PT.Produto_Entrada),');
      tItens.SQL.Add('       PT.Data_Transferencia,');
      tItens.SQL.Add('       Nota,');
      tItens.SQL.Add('       CFOP,');
      tItens.SQL.Add('       Nota_Compl        = null,');
      tItens.SQL.Add('       Entrada_Compra    = CASE WHEN Motivo <> ''I'' THEN Quantidade_Entrada ELSE 0 END,');
      tItens.SQL.Add('       Entrada_Terceiros = CASE WHEN Motivo  = ''I'' THEN Quantidade_Entrada ELSE 0 END,');
      tItens.SQL.Add('       Entrada_Devol     = 0,');
      tItens.SQL.Add('       Saida_Devol       = 0,');
      tItens.SQL.Add('       Saida_Venda       = 0,');
      tItens.SQL.Add('       Saida_Terceiros   = 0,');
      tItens.SQL.Add('       Saida_Outras      = 0,');
      tItens.SQL.Add('       Total_Item        = Valor_Unitario * Quantidade,');
      tItens.SQL.Add('       Valor_Unitario,');
      tItens.SQL.Add('       Destinatario_Nome = CASE WHEN Motivo = ''TRF'' THEN ''*** TRANSFERÊNCIA DE ESTOQUE (ENTRADA) ***''');
      tItens.SQL.Add('                                WHEN Motivo = ''A''   THEN ''*** SALDO DE ABERTURA DE ESTOQUE ***''');
      tItens.SQL.Add('                                WHEN Motivo = ''I''   THEN ''* BAIXA DE MATERIA PRIMA INDUSTRIALIZAÇÃO *''');
      tItens.SQL.Add('                                WHEN Motivo = ''IND'' THEN ''* BAIXA DE MATERIA PRIMA INDUSTRIALIZAÇÃO *''');
      tItens.SQL.Add('                           END,');
      tItens.SQL.Add('       Tipo_Produto = (SELECT CAST(Codigo AS VARCHAR(10))+'' - ''+Descricao FROM Cybersoft_Cadastros.dbo.TipoProduto WHERE Codigo = (SELECT Tipo FROM Produtos WHERE Codigo = PT.Produto_Entrada))');
      tItens.SQL.Add('FROM   ProdutosTransferencia PT');
      tItens.SQL.Add('WHERE  (Estoque = 1)');
      tItens.SQL.Add('  AND  (ISNULL(PT.Produto_Entrada, '''') <> '''') ');
      tItens.SQL.Add('  AND  (PT.Data_Transferencia <= :pData)');
      If cCodigoProduto.Value > 0 then begin
         tItens.SQL.Add('       AND (PT.Produto_Entrada = :pProduto)');
         tItens.ParamByName('pProduto').AsInteger := cCodigoProduto.AsInteger;
      End;
      If Trim(cProcesso.Value) <> '' then begin
         tItens.SQL.Add('       AND (PT.Processo_Entrada = :pProcesso)');
      End;
      if Trim(cFornecedor.DisplayValue) <> '' then begin
         // Fornecedor informado.
         tItens.SQL.Add('       AND PT.Produto_Entrada IN( SELECT DISTINCT Codigo_Mercadoria FROM NotasItens NI2 WHERE (SELECT Fornecedor_Codigo FROM NotasFiscais NF2 WHERE NF2.Numero = NI2.Nota AND NF2.Data_Emissao = NI2.Data) = :pForn )');
      end;
      if Trim(cFabricante.DisplayValue) <> '' then begin
         tItens.SQL.Add('       AND PT.Produto_Entrada IN(SELECT Codigo FROM Produtos WHERE Fabricante = :pFabr)');
         tItens.ParamByName('pFabr').AsInteger := Dados.FabricantesCodigo.AsInteger;
      end;
      If Trim(cTipoProd.DisplayValue) <> '' then begin
         tItens.SQL.add('AND    (SELECT Tipo FROM Produtos WHERE Codigo = PT.Produto_Entrada) = :pTipoProd');
         tItens.ParamByName('pTipoProd').AsInteger := Dados.TipoProdutoCodigo.AsInteger;
      End;

      tItens.SQL.Add('UNION ALL');
      tItens.SQL.Add('SELECT Tipo = CASE WHEN Motivo <> ''I'' THEN ''P'' ELSE ''T'' END,');
      tItens.SQL.Add('       Sai_Entra = 1,');
      tItens.SQL.Add('       PT.Produto_Saida,');
      tItens.SQL.Add('       null,');
      tItens.SQL.Add('       Processo_Saida AS Processo,');
      tItens.SQL.Add('       Descricao_Mercadoria = (SELECT CAST(Descricao AS VARCHAR(500)) FROM Produtos WHERE Codigo = PT.Produto_Saida),');
      tItens.SQL.Add('       PT.Data_Transferencia,');
      tItens.SQL.Add('       Nota,');
      tItens.SQL.Add('       CFOP,');
      tItens.SQL.Add('       Nota_Compl        = null,');
      tItens.SQL.Add('       Entrada_Compra    = 0,');
      tItens.SQL.Add('       Entrada_Terceiros = 0,');
      tItens.SQL.Add('       Entrada_Devol     = 0,');
      tItens.SQL.Add('       Saida_Devol       = 0,');
      tItens.SQL.Add('       Saida_Venda       = CASE WHEN Motivo <> ''I'' THEN Quantidade ELSE 0 END,');
      tItens.SQL.Add('       Saida_Terceiros   = 0,');
      tItens.SQL.Add('       Saida_Outras      = CASE WHEN Motivo  = ''I'' THEN Quantidade ELSE 0 END,');
      tItens.SQL.Add('       Total_Item        = Valor_Unitario * Quantidade,');
      tItens.SQL.Add('       Valor_Unitario,');
      tItens.SQL.Add('       Destinatario_Nome = CASE WHEN Motivo = ''TRF'' THEN ''*** TRANSFERÊNCIA DE ESTOQUE (ENTRADA) ***''');
      tItens.SQL.Add('                                WHEN Motivo = ''A''   THEN ''*** SALDO DE ABERTURA DE ESTOQUE ***''');
      tItens.SQL.Add('                                WHEN Motivo = ''I''   THEN ''* BAIXA DE MATERIA PRIMA INDUSTRIALIZAÇÃO *''');
      tItens.SQL.Add('                                WHEN Motivo = ''IND'' THEN ''* BAIXA DE MATERIA PRIMA INDUSTRIALIZAÇÃO *''');
      tItens.SQL.Add('                           END,');
      tItens.SQL.Add('       Tipo_Produto = (SELECT CAST(Codigo AS VARCHAR(10))+'' - ''+Descricao FROM Cybersoft_Cadastros.dbo.TipoProduto WHERE Codigo = (SELECT Tipo FROM Produtos WHERE Codigo = PT.Produto_Saida))');
      tItens.SQL.Add('FROM   ProdutosTransferencia PT');
      tItens.SQL.Add('WHERE  (Estoque = 1)');
      tItens.SQL.Add('  AND  (ISNULL(PT.Produto_Saida, '''') <> '''') ');
      tItens.SQL.Add('  AND  (PT.Data_Transferencia <= :pData)');
      If cCodigoProduto.Value > 0 then begin
         tItens.SQL.Add('       AND (PT.Produto_Saida = :pProduto)');
         tItens.ParamByName('pProduto').AsInteger := cCodigoProduto.AsInteger;
      End;
      If Trim(cProcesso.Value) <> '' then begin
         tItens.SQL.Add('       AND (PT.Processo_Saida = :pProcesso)');
      End;
      if Trim(cFornecedor.DisplayValue) <> '' then begin
         // Cliente informado.
         tItens.SQL.Add('       AND PT.Produto_Saida IN( SELECT DISTINCT Codigo_Mercadoria FROM NotasItens NI2 WHERE (SELECT Cliente_Codigo FROM NotasFiscais NF2 WHERE NF2.Numero = NI2.Nota AND NF2.Data_Emissao = NI2.Data) = :pCli )');
      end;
      if Trim(cFabricante.DisplayValue) <> '' then begin
         tItens.SQL.Add('       AND PT.Produto_Saida IN(SELECT Codigo FROM Produtos WHERE Fabricante = :pFabr)');
         tItens.ParamByName('pFabr').AsInteger := Dados.FabricantesCodigo.AsInteger;
      end;
      If Trim(cTipoProd.DisplayValue) <> '' then begin
         tItens.SQL.add('AND    (SELECT Tipo FROM Produtos WHERE Codigo = PT.Produto_Saida) = :pTipoProd');
         tItens.ParamByName('pTipoProd').AsInteger := Dados.TipoProdutoCodigo.AsInteger;
      End;

      If Trim(cTipoNota.DisplayValue) = '' then begin
         tItens.SQL.Add('UNION ALL');
         tItens.SQL.Add('SELECT Tipo = CASE WHEN (SELECT ISNULL(Provisoria, 0) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) = 0 THEN ''T'' ELSE ''V'' END,');
         tItens.SQL.Add('       Sai_Entra = 0,');
         tItens.SQL.Add('       NTI.Codigo_Mercadoria,');
         tItens.SQL.Add('       null,');
         tItens.SQL.Add('       NTI.Processo,');
         tItens.SQL.Add('       CAST(Descricao_Mercadoria AS VARCHAR(500)) AS Descricao_Mercadoria,');
         tItens.SQL.Add('       NTI.Data_Entrada,');
         tItens.SQL.Add('       NTI.Nota,');
         tItens.SQL.Add('       CFOP = NTI.Natureza_Codigo,');
         tItens.SQL.Add('       Nota_Compl        = null,');
         tItens.SQL.Add('       Entrada_Compra    = CASE WHEN (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = (SELECT Referencia_Fiscal FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota');
         tItens.SQL.Add('                                     AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) ) IN(0, 3, 5, 6, 9) THEN NTI.Quantidade ELSE 0 END,');
         tItens.SQL.Add('       Entrada_Terceiros = CASE WHEN (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = (SELECT Referencia_Fiscal FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota');
         tItens.SQL.Add('                                     AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor)) = 4                THEN NTI.Quantidade ELSE 0 END,');
         tItens.SQL.Add('       Entrada_Devol     = CASE WHEN (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = (SELECT Referencia_Fiscal FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota');
         tItens.SQL.Add('                                     AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor)) = 2                THEN NTI.Quantidade ELSE 0 END,');
         tItens.SQL.Add('       Saida_Devol       = 0,');
         tItens.SQL.Add('       Saida_Venda       = 0,');
         tItens.SQL.Add('       Saida_Terceiros   = 0,');
         tItens.SQL.Add('       Saida_Outras      = 0,');
         tItens.SQL.Add('       Total_Item        = Valor_Liquido,');
         tItens.SQL.Add('       Valor_Unitario    = Valor_Unitario,');
         tItens.SQL.Add('       Destinatario_Nome = (SELECT Nome FROM Fornecedores WHERE(Codigo = NTI.Fornecedor)),');
         tItens.SQL.Add('       Tipo_Produto      = (SELECT CAST(Codigo AS VARCHAR(10))+'' - ''+Descricao FROM Cybersoft_Cadastros.dbo.TipoProduto WHERE Codigo = (SELECT Tipo FROM Produtos WHERE Codigo = NTI.Codigo_Mercadoria))');
         tItens.SQL.Add('FROM   NotasTerceirosItens NTI');
         tItens.SQL.Add('WHERE (Movimenta_Estoque = 1)');
         tItens.SQL.Add('  AND (SELECT ISNULL(Desdobramento, 0) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota AND NT.Data_Emissao = NTI.Data_Emissao AND NT.Fornecedor = NTI.Fornecedor) = 0');

         If Trim(Removecaracter('/', '', cData.Text)) <> '' then begin
            tItens.SQL.Add('       AND (NTI.Data_Entrada <= :pData)');
            tItens.ParamByName('pData').AsDate := cData.Date;
         End;
         If cCodigoProduto.Value > 0 then begin
            tItens.SQL.Add('       AND (NTI.Codigo_Mercadoria = :pProduto)');
            tItens.ParamByName('pProduto').AsInteger := cCodigoProduto.AsInteger;
         End;
         If Trim(cProcesso.Value) <> '' then begin
            tItens.SQL.Add('       AND (NTI.Processo = :pProcesso)');
         End;
         If Trim(cCFOP.DisplayValue) <> '' then begin
            tItens.SQL.Add('       AND (NTI.Natureza_Codigo = :pCFOP)');
            tItens.ParamByName('pCFOP').AsString := tNatureza.FieldByName('Codigo').AsString;
         End;
         If cANP.Checked = true then begin
            tItens.SQL.Add('       AND (SELECT LTRIM(RTRIM(Codigo_ANP)) FROM Produtos WHERE(Codigo = NTI.Codigo_Mercadoria)) <> '''' ');
         End;
         If cReciclavel.Checked = true then begin
            tItens.SQL.Add('       AND (SELECT Reciclavel FROM Produtos WHERE(Codigo = NTI.Codigo_Mercadoria)) = 1 ');
         End;
         If Trim(cFornecedor.DisplayValue) <> '' then begin
            tItens.SQL.Add('       AND (NTI.Fornecedor = :pForn)');
         End;
         if Trim(cFabricante.DisplayValue) <> '' then begin
            tItens.SQL.Add('       AND NTI.Codigo_Mercadoria IN(SELECT Codigo FROM Produtos WHERE Fabricante = :pFabr)');
            tItens.ParamByName('pFabr').AsInteger := Dados.FabricantesCodigo.AsInteger;
         end;
         If Trim(cTipoProd.DisplayValue) <> '' then begin
            tItens.SQL.Add('AND   (SELECT Tipo FROM Produtos WHERE Codigo = NTI.Codigo_Mercadoria) = :pTipoProd');
            tItens.ParamByName('pTipoProd').AsInteger := Dados.TipoProdutoCodigo.AsInteger;
         End;
      End;

      //============================================================[ PEDIDOS DE NOTAS FISCAIS ]====================================================\\
      If cPedidos.Checked = true then begin
         tItens.SQL.Add('UNION  ALL');
         tItens.SQL.Add('SELECT Tipo = ''D'',');
         tItens.SQL.Add('       Sai_Entra = NI.Saida_Entrada,');
         tItens.SQL.Add('       NI.Codigo_Mercadoria,');
         tItens.SQL.Add('       NI.Codigo_Fabricante,');
         tItens.SQL.Add('       NI.Processo,');
         tItens.SQL.Add('       Descricao_Mercadoria = CAST(NI.Descricao_Mercadoria AS VARCHAR(500)),');
         tItens.SQL.Add('       NF.Data_Emissao AS Data,');
         tItens.SQL.Add('       NI.Pedido,');
         tItens.SQL.Add('       CFOP              = NF.Natureza_Codigo,');
         tItens.SQL.Add('       Nota_Compl        = (SELECT MAX(Numero) FROM Pedidos NF WHERE(NF.Nota_referencia = NI.Pedido) AND (NF.Data_Referencia = NF.Data_Emissao) AND (Complementar = 1)),');
         tItens.SQL.Add('       Entrada_Compra    = CASE WHEN (NI.Saida_Entrada = 0) AND (ISNULL(NF.Devolucao,0) <> 1) THEN NI.Quantidade ELSE 0 END,');
         tItens.SQL.Add('       Entrada_Terceiros = CASE WHEN (NI.Saida_Entrada = 0) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 4) THEN NI.Quantidade ELSE 0 END,');
         tItens.SQL.Add('       Entrada_Devol     = CASE WHEN (NI.Saida_Entrada = 0) AND (ISNULL(NF.Devolucao,0) = 1) THEN NI.Quantidade ELSE 0 END,');
         tItens.SQL.Add('       Saida_Devol       = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 2) THEN NI.Quantidade ELSE 0 END,');
         tItens.SQL.Add('       Saida_Venda       = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 0 OR (SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 1) THEN NI.Quantidade ELSE 0 END,');
         tItens.SQL.Add('       Saida_Terceiros   = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 4) THEN NI.Quantidade ELSE 0 END,');
         tItens.SQL.Add('       Saida_Outras      = CASE WHEN (NI.Saida_Entrada = 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 9) THEN NI.Quantidade ELSE 0 END,');
         tItens.SQL.Add('       Total_Item        = Valor_Total,') ;
         tItens.SQL.Add('       Valor_Unitario    = Valor_Unitario,');
         tItens.SQL.Add('       Destinatario_Nome,');
         tItens.SQL.Add('       Tipo_Produto      = (SELECT CAST(Codigo AS VARCHAR(10))+'' - ''+Descricao FROM Cybersoft_Cadastros.dbo.TipoProduto WHERE Codigo = PD.Tipo)');
         tItens.SQL.Add('FROM   PedidosItens NI, Pedidos NF, Produtos PD');
         tItens.SQL.Add('WHERE  (NI.Movimenta_Estoque = 1) AND (NF.Numero = NI.Pedido)');
         tItens.SQL.Add('AND    (PD.Codigo = NI.Codigo_Mercadoria)');
         tItens.SQL.Add('AND    (ISNULL(NF.Complementar,0) = 0)');

         If Trim(Removecaracter('/', '', cData.Text)) <> '' then begin
            tItens.SQL.Add('       AND (NF.Data_Emissao <= :pData)');
            tItens.ParamByName('pData').AsDate := cData.Date;
         End;
         If cCodigoProduto.Value > 0 then begin
            tItens.SQL.Add('       AND (Codigo_Mercadoria = :pProduto)');
            tItens.ParamByName('pProduto').AsInteger := cCodigoProduto.AsInteger;
         End;
         If Trim(cProcesso.Value) <> '' then begin
            tItens.SQL.Add('       AND (NI.Processo = :pProcesso)');
         End;
         If Trim(cCFOP.DisplayValue) <> '' then begin
            tItens.SQL.Add('       AND (NF.Natureza_Codigo = :pCFOP)');
            tItens.ParamByName('pCFOP').AsString := tNatureza.FieldByName('Codigo').AsString;
         End;
         If Trim(cTipoNota.DisplayValue) <> '' then begin
            tItens.SQL.Add('       AND (NF.Tipo_Nota = :pTipoNota)');
            tItens.ParamByName('pTipoNota').AsInteger := Dados.TipoNotaCodigo.AsInteger;
         End;
         If cANP.Checked = true then begin
            tItens.SQL.Add('       AND (SELECT LTRIM(RTRIM(Codigo_ANP)) FROM Produtos WHERE(Codigo = NI.Codigo_Mercadoria)) <> '''' ');
         End;
         If cReciclavel.Checked = true then begin
            tItens.SQL.Add('       AND (SELECT Reciclavel FROM Produtos WHERE(Codigo = NI.Codigo_Mercadoria)) = 1 ');
         End;
         if Trim(cFornecedor.DisplayValue) <> '' then begin
            if Trim(cCliente.DisplayValue) = '' then begin
               // Apendas fornecedor informado.
               tItens.SQL.Add('       AND ( NF.Fornecedor_Codigo = :pForn');
               tItens.SQL.Add('       OR (NF.Saida_Entrada = 1 AND Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM PedidosItens NI2 WHERE (SELECT Fornecedor_Codigo FROM Pedidos NF2 WHERE NF2.Numero = NI2.Pedido ) = :pForn)) )');
            end else begin
               // Fornecedor informado + Cliente informado.
               tItens.SQL.Add('       AND ( NF.Fornecedor_Codigo = :pForn');
               tItens.SQL.Add('       OR (NF.Saida_Entrada = 1 AND Cliente_Codigo = :pCli AND Codigo_Mercadoria');
               tItens.SQL.Add('       IN(SELECT DISTINCT Codigo_Mercadoria FROM PedidosItens NI2 WHERE (SELECT Fornecedor_Codigo FROM Pedidos NF2 WHERE NF2.Numero = NI2.Pedido ) = :pForn)) )');
               tItens.ParamByName('pCli').AsInteger := Dados.ClientesCodigo.AsInteger;
            end;
            tItens.ParamByName('pForn').AsInteger := Dados.FornecedoresCodigo.AsInteger;
         end else begin
            if Trim(cCliente.DisplayValue) <> '' then begin
               // Apendas cliente informado.
               tItens.SQL.Add('       AND ( NF.Cliente_Codigo = :pCli ');
               tItens.SQL.Add('       OR (NF.Saida_Entrada = 0 AND Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM PedidosItens NI2 WHERE (SELECT Cliente_Codigo FROM Pedidos NF2 WHERE NF2.Numero = NI2.Pedido) = :pCli)) )');
               tItens.ParamByName('pCli').AsInteger := Dados.ClientesCodigo.AsInteger;
            end;
         end;
         if Trim(cFabricante.DisplayValue) <> '' then begin
            tItens.SQL.Add('       AND NI.Codigo_Mercadoria IN(SELECT Codigo FROM Produtos WHERE Fabricante = :pFabr)');
            tItens.ParamByName('pFabr').AsInteger := Dados.FabricantesCodigo.AsInteger;
         end;
         If Trim(cTipoProd.DisplayValue) <> '' then begin
            tItens.SQL.Add('AND    (PD.Tipo = :pTipoProd)');
            tItens.ParamByName('pTipoProd').AsInteger := Dados.TipoProdutoCodigo.AsInteger;
         End;

         //=========================================================[ PEDIDOS DE REPRESENTANTES ]====================================================\\
         tItens.SQL.Add('UNION  ALL');
         tItens.SQL.Add('SELECT Tipo = ''D'',');
         tItens.SQL.Add('       Sai_Entra = 1,');
         tItens.SQL.Add('       PRI.Codigo_Mercadoria,');
         tItens.SQL.Add('       Codigo_Fabricante    = null,');
         tItens.SQL.Add('       Processo             = null,');
         tItens.SQL.Add('       Descricao_Mercadoria = (SELECT CAST(Descricao AS VARCHAR(500)) FROM Produtos WHERE Codigo = Codigo_Mercadoria),');
         tItens.SQL.Add('       PRI.Data,');
         tItens.SQL.Add('       PRI.Pedido,');
         tItens.SQL.Add('       CFOP              = null,');
         tItens.SQL.Add('       Nota_Compl        = null,');
         tItens.SQL.Add('       Entrada_Compra    = 0,');
         tItens.SQL.Add('       Entrada_Terceiros = 0,');
         tItens.SQL.Add('       Entrada_Devol     = 0,');
         tItens.SQL.Add('       Saida_Devol       = 0,');
         tItens.SQL.Add('       Saida_Venda       = PRI.Quantidade,');
         tItens.SQL.Add('       Saida_Terceiros   = 0,');
         tItens.SQL.Add('       Saida_Outras      = 0,');
         tItens.SQL.Add('       Total_Item        = (PRI.Valor_Unitario * PRI.Quantidade),');
         tItens.SQL.Add('       Valor_Unitario    = PRI.Valor_Unitario,');
         tItens.SQL.Add('       Destinatario_Nome = (SELECT Cliente_Nome FROM PedidosRepresentantes PR WHERE PR.Pedido = PRI.Pedido),');
         tItens.SQL.Add('       Tipo_Produto      = (SELECT CAST(Codigo AS VARCHAR(10))+'' - ''+Descricao FROM Cybersoft_Cadastros.dbo.TipoProduto WHERE Codigo = PD.Tipo)');
         tItens.SQL.Add('FROM   PedidosRepresentantesItens PRI, PedidosRepresentantes PR, Produtos PD');
         tItens.SQL.Add('WHERE  PRI.Pedido = PR.Pedido');
         tItens.SQL.Add('AND    PD.Codigo = PRI.Codigo_Mercadoria');
         tItens.SQL.Add('AND    ISNULL(PRI.Faturamento, 0) = 0 AND ISNULL(PR.Faturado, 0) = 0 AND (SELECT Cancelado FROM PedidosRepresentantes PR WHERE PR.Pedido = PRI.Pedido) = 0 ');

         If Trim(Removecaracter('/', '', cData.Text)) <> '' then begin
            tItens.SQL.Add('       AND PRI.Data <= :pData');
            tItens.ParamByName('pData').AsDate := cData.Date;
         End;
         If cCodigoProduto.Value > 0 then begin
            tItens.SQL.Add('       AND PRI.Codigo_Mercadoria = :pProduto');
            tItens.ParamByName('pProduto').AsInteger := cCodigoProduto.AsInteger;
         End;
         If Trim(cTipoNota.DisplayValue) <> '' then begin
            tItens.SQL.Add('       AND (SELECT Tipo_Nota FROM PedidosRepresentantes PR WHERE PR.Pedido = PRI.Pedido) = :pTipoNota');
            tItens.ParamByName('pTipoNota').AsInteger := Dados.TipoNotaCodigo.AsInteger;
         End;
         If cANP.Checked = true then begin
            tItens.SQL.Add('       AND (SELECT LTRIM(RTRIM(Codigo_ANP)) FROM Produtos WHERE(Codigo = PRI.Codigo_Mercadoria)) <> '''' ');
         End;
         If cReciclavel.Checked = true then begin
            tItens.SQL.Add('       AND (SELECT Reciclavel FROM Produtos WHERE(Codigo = PRI.Codigo_Mercadoria)) = 1 ');
         End;
         if Trim(cFornecedor.DisplayValue) <> '' then begin
            if Trim(cCliente.DisplayValue) = '' then begin
               // Apendas fornecedor informado.
               tItens.SQL.Add('       AND ( PR.Fornecedor_Codigo = :pForn');
               tItens.SQL.Add('       OR (Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM PedidosRepresentantesItens PRI2 WHERE (SELECT Fornecedor_Codigo FROM PedidosRepresentantes PR2 WHERE PR2.Pedido = PRI2.Pedido ) = :pForn)) )');
            end else begin
               // Fornecedor informado + Cliente informado.
               tItens.SQL.Add('       AND ( PR.Fornecedor_Codigo = :pForn');
               tItens.SQL.Add('       OR (Cliente = :pCli AND Codigo_Mercadoria');
               tItens.SQL.Add('       IN(SELECT DISTINCT Codigo_Mercadoria FROM PedidosRepresentantesItens PRI2 WHERE (SELECT Fornecedor_Codigo FROM PedidosRepresentantes PR2 WHERE NF2.Pedido = PRI2.Pedido ) = :pForn)) )');
               tItens.ParamByName('pCli').AsInteger := Dados.ClientesCodigo.AsInteger;
            end;
            tItens.ParamByName('pForn').AsInteger := Dados.FornecedoresCodigo.AsInteger;
         end else begin
            if Trim(cCliente.DisplayValue) <> '' then begin
               // Apendas cliente informado.
               tItens.SQL.Add('       AND ( PR.Cliente = :pCli ');
               tItens.SQL.Add('       OR (Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM PedidosRepresentantesItens PRI2 WHERE (SELECT Cliente FROM PedidosRepresentantes PR2 WHERE PR2.Pedido = PRI2.Pedido) = :pCli)) )');
               tItens.ParamByName('pCli').AsInteger := Dados.ClientesCodigo.AsInteger;
            end;
         end;
         if Trim(cFabricante.DisplayValue) <> '' then begin
            tItens.SQL.Add('        AND PRI.Codigo_Mercadoria IN(SELECT Codigo FROM Produtos WHERE Fabricante = :pFabr)');
           tItens.ParamByName('pFabr').AsInteger := Dados.FabricantesCodigo.AsInteger;
         end;
         If Trim(cTipoProd.DisplayValue) <> '' then begin
            tItens.SQL.Add('AND    (PD.Tipo = :pTipoProd)');
            tItens.ParamByName('pTipoProd').AsInteger := Dados.TipoProdutoCodigo.AsInteger;
         End;
      End;
      If Trim(cProcesso.Value) <> '' then begin
         tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
      End;

      tItens.SQL.Add('SELECT *');
      tItens.SQL.Add('FROM  #TEMP');
      tItens.SQL.Add('WHERE Codigo_Mercadoria IS NOT NULL');
      if cSaldoProcesso.Checked then begin
         tItens.SQL.Add('AND   (SELECT SUM(CAST(Entrada_Compra+Entrada_Terceiros+Entrada_Devol AS DECIMAL(14,2))-CAST(Saida_Devol+Saida_Venda+Saida_Terceiros+Saida_Outras AS DECIMAL(14,2))) FROM #Temp T2 WHERE T2.Processo = #Temp.Processo) > 0');
      end;
      if cSaldoProduto.Checked then begin
         tItens.SQL.Add('AND   (SELECT SUM(CAST(Entrada_Compra+Entrada_Terceiros+Entrada_Devol AS DECIMAL(14,2))-CAST(Saida_Devol+Saida_Venda+Saida_Terceiros+Saida_Outras AS DECIMAL(14,2))) FROM #Temp T2 WHERE T2.Codigo_Mercadoria = #Temp.Codigo_Mercadoria) > 0');
      end;
      tItens.SQL.Add('ORDER BY Codigo_Mercadoria, Data, Sai_Entra, Nota');
      //tItens.SQL.SavetoFile('c:\temp\Posicao_Estoque_Detalhado_New.SQL');
      titens.Open;

      lTipo.Caption := cTipoProd.DisplayValue;
      If Dados.EmpresasMatriz_Filial.AsBoolean = true then
         lTitulo.Caption := 'Posição de Estoque - '+'MATRIZ ('+ Dados.EmpresasEstado.AsString+') em '+cData.Text
      else
         lTitulo.Caption := 'Posição de Estoque - '+'FILIAL ' + Dados.EmpresasNumero_Filial.AsString+' ('+Dados.EmpresasEstado.AsString+') em '+cData.Text;;

      Screen.Cursor := crDefault;

      If tItens.RecordCount <> 0 then begin
         If cExcel.Checked = false then begin
            if fileexists(Dados.EmpresasLogo.Value) then begin
               iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
            end;   
            rEstoque.Print;
            rEstoque.FreeOnRelease;
            rEstoque.Reset;
         end else begin
            ExportaEXCEL;
         End;
      end else begin
         MessageDlg('Não há informações para o relatório solicitado!', mtInformation, [mbOk], 0);
      End;
end;

procedure TImpressao_Faturamento_OP_Estoque.lSaldoTerceirosCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tItens.FieldByName('Saida_Terceiros').AsFloat - tItens.FieldByName('Entrada_Terceiros').AsFloat;
end;

procedure TImpressao_Faturamento_OP_Estoque.gRodaPeProdutoAfterPrint(Sender: TObject);
begin
     lSaldoTerceiros.Value     := 0;
     lSaldoEmpresa.Value       := 0;
     lTotalSaldoTerceiro.Value := 0;
     lTotalSaldoEmpresa.Value  := 0;
     fFaixa.Visible            := false;
end;

procedure TImpressao_Faturamento_OP_Estoque.lSaldoEmpresaCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tItens.FieldByName('Entrada_Compra').AsFloat +
                       tItens.FieldByName('Entrada_Devol').AsFloat +
                       tItens.FieldByName('Entrada_Terceiros').AsFloat -
                       tItens.FieldByName('Saida_Devol').AsFloat -
                       tItens.FieldByName('Saida_Venda').AsFloat -
                       tItens.FieldByName('Saida_Outras').AsFloat -
                       tItens.FieldByName('Saida_Terceiros').AsFloat;
end;

procedure TImpressao_Faturamento_OP_Estoque.ppDetailBand1BeforePrint(Sender: TObject);
begin
      if cZebrado.Checked = true then fFaixa.Visible := not fFaixa.Visible;
      ppDBText1.Font.Color  := clBlack;
      ppDBText3.Font.Color  := clBlack;
      ppDBText22.Font.Color := clBlack;
      ppDBText8.Font.Color  := clBlack;
      ppDBText11.Font.Color := clBlack;
      ppDBText9.Font.Color  := clBlack;
      ppDBText21.Font.Color := clBlack;
      ppDBText5.Font.Color  := clBlack;
      ppDBText12.Font.Color := clBlack;
      ppDBText6.Font.Color  := clBlack;
      ppDBText13.Font.Color := clBlack;
      ppDBText7.Font.Color  := clBlack;
      ppDBText4.Font.Color  := clBlack;
      ppDBText20.Font.Color := clBlack;
      ppDBText22.Font.Color := clBlack;
      if (tItens.FieldByName('Tipo').AsString = 'D') or (tItens.FieldByName('Tipo').AsString = 'V') then begin
         ppDBText1.Font.Color  := clRed;
         ppDBText3.Font.Color  := clRed;
         ppDBText22.Font.Color := clRed;
         ppDBText8.Font.Color  := clRed;
         ppDBText11.Font.Color := clRed;
         ppDBText9.Font.Color  := clRed;
         ppDBText21.Font.Color := clRed;
         ppDBText5.Font.Color  := clRed;
         ppDBText12.Font.Color := clRed;
         ppDBText6.Font.Color  := clRed;
         ppDBText13.Font.Color := clRed;
         ppDBText7.Font.Color  := clRed;
         ppDBText4.Font.Color  := clRed;
         ppDBText20.Font.Color := clRed;
         ppDBText22.Font.Color := clRed;
      end;
end;

procedure TImpressao_Faturamento_OP_Estoque.gRodaPeProdutoBeforePrint(Sender: TObject);
begin
      lTotalSaldoTerceiro.Value := lTotalSaidaTerceiros.Value - lTotalRetornoTerceiros.Value;
      lTotalSaldoEmpresa.Value  := lTotalEntradas.Value + lTotalEntradasDev.Value + lTotalRetornoTerceiros.Value - lTotalSaidasDev.Value - lTotalVendas.Value - lTotalSaidaTerceiros.Value - lTotalOutras.Value;
      lTotalGeral.Value         := lTotalSaldoTerceiro.Value + lTotalSaldoEmpresa.Value;
end;

procedure TImpressao_Faturamento_OP_Estoque.bLimparClick(Sender: TObject);
begin
      cData.Date := Date;
      cCodigoProduto.Clear;
      cProduto.ClearValue;
      cProcesso.ClearValue;
      cCFOP.ClearValue;
      cTipoNota.ClearValue;
      cFornecedor.ClearValue;
      cCliente.ClearValue;
      cFabricante.ClearValue;
      cTipoProd.ClearValue;
      with Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;
      end;
end;

procedure TImpressao_Faturamento_OP_Estoque.cCodigoProdutoChange(Sender: TObject);
begin
      If Dados.Produtos.Locate('Codigo', cCodigoProduto.AsInteger, [loCaseInsensitive]) = true then
         cProduto.DisplayValue := Dados.ProdutosDescricao_Reduzida.AsString
      else
         cProduto.ClearValue;
end;

procedure TImpressao_Faturamento_OP_Estoque.cProdutoChange(Sender: TObject);
begin
     cCodigoProduto.Value := Dados.produtosCodigo.Value;
end;

// Envia informações para o excel.
procedure TImpressao_Faturamento_OP_Estoque.ExportaEXCEL;
var
   mPlanilha   : Variant;
   mLinha      : Integer;
   mTotal01    : Real;
   mTotal02    : Real;
   mTotal03    : Real;
   mTotal04    : Real;
   mTotal05    : Real;
   mTotal06    : Real;
   mTotal07    : Real;
   mTotal08    : Real;
   mTotalProd01: Real;
   mTotalProd02: Real;
   mTotalProd03: Real;
   mTotalProd04: Real;
   mTotalProd05: Real;
   mTotalProd06: Real;
   mTotalProd07: Real;
   mTotalProd08: Real;
   mSaldoTerc  : Real;
   mSaldoEmp   : Real;
   mZebra      : Boolean;
   mProduto    : Integer;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tItens.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','Q3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','Q3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','Q3'].Font.Bold         := true;
       mPlanilha.Range['A3','Q3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','Q3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','Q3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','Q3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'NOTA';
       mPlanilha.Cells[3,02] := 'EMISSÃO';
       mPlanilha.Cells[3,03] := 'NF.COMPL';
       mPlanilha.Cells[3,04] := 'CFOP';
       mPlanilha.Cells[3,05] := 'PROCESSO';
       mPlanilha.Cells[3,06] := 'DESTINATÁRIO';
       mPlanilha.Cells[3,07] := 'VL.UNITÁRIO';
       mPlanilha.Cells[3,08] := 'VL.TOTAL';
       mPlanilha.Cells[3,09] := 'ENTRADAS';
       mPlanilha.Cells[3,10] := 'ENTRADAS DEV.';
       mPlanilha.Cells[3,11] := 'SAÍDA TERC.';
       mPlanilha.Cells[3,12] := 'RET.TERC.';
       mPlanilha.Cells[3,13] := 'SAÍDAS DEV.';
       mPlanilha.Cells[3,14] := 'VENDAS';
       mPlanilha.Cells[3,15] := 'OUTRSA SAÍDAS';
       mPlanilha.Cells[3,16] := 'SALDO TERC.';
       mPlanilha.Cells[3,17] := 'SALDO EMP.';

       mPlanilha.Cells[4,1].ColumnWidth  := 9;
       mPlanilha.Cells[4,2].ColumnWidth  := 8;
       mPlanilha.Cells[4,3].ColumnWidth  := 8;
       mPlanilha.Cells[4,4].ColumnWidth  := 5;
       mPlanilha.Cells[4,5].ColumnWidth  := 15;
       mPlanilha.Cells[4,6].ColumnWidth  := 40;
       mPlanilha.Cells[4,7].ColumnWidth  := 14;
       mPlanilha.Cells[4,8].ColumnWidth  := 14;
       mPlanilha.Cells[4,9].ColumnWidth  := 14;
       mPlanilha.Cells[4,10].ColumnWidth := 14;
       mPlanilha.Cells[4,11].ColumnWidth := 14;
       mPlanilha.Cells[4,12].ColumnWidth := 14;
       mPlanilha.Cells[4,13].ColumnWidth := 14;
       mPlanilha.Cells[4,14].ColumnWidth := 14;
       mPlanilha.Cells[4,15].ColumnWidth := 14;
       mPlanilha.Cells[4,16].ColumnWidth := 14;
       mPlanilha.Cells[4,17].ColumnWidth := 14;

       mPlanilha.Range['A3','Q3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','Q3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','Q3'].Font.Size           := 8;

       mTotal01     := 0;
       mTotal02     := 0;
       mTotal03     := 0;
       mTotal04     := 0;
       mTotal05     := 0;
       mTotal06     := 0;
       mTotal07     := 0;
       mTotal08     := 0;
       mTotalProd01 := 0;
       mTotalProd02 := 0;
       mTotalProd03 := 0;
       mTotalProd04 := 0;
       mTotalProd05 := 0;
       mTotalProd06 := 0;
       mTotalProd07 := 0;
       mTotalProd08 := 0;
       mSaldoTerc   := 0;
       mSaldoEmp    := 0;
       mLinha       := 4;
       mZebra       := false;

       mPlanilha.Cells[mLinha, 1]                   := 'Produto: '+tItens.FieldByName('Codigo_Mercadoria').AsString +'     '+tItens.FieldByName('Codigo_Fabricante').AsString +'          '+tItens.FieldByName('Descricao_Mercadoria').AsString;
       mPlanilha.Range['A4','Q4'].Mergecells        := True;
       mPlanilha.Range['A4','Q4'].Interior.Color    := RGB(250, 192, 144);
       mPlanilha.Range['A4','Q4'].Interior.Pattern  := 1;
       mPlanilha.Range['A4','Q4'].Font.Bold         := true;
       mPlanilha.Range['A4','Q4'].Font.Color        := clBlack;
       mPlanilha.Range['A4','Q4'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A4','Q4'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A4','Q4'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Range['A4','Q4'+InttoStr(mLinha)].WrapText          := true;
       mPlanilha.Range['A4','Q4'+InttoStr(mLinha)].VerticalAlignment := 1;

       Inc(mLinha);

       mProduto := tItens.FieldByName('Codigo_Mercadoria').AsInteger;

       While (not tItens.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Size := 8;

             mSaldoTerc := mSaldoTerc + tItens.FieldByName('Saida_Terceiros').AsFloat - tItens.FieldByName('Entrada_Terceiros').AsFloat;

             mSaldoEmp  := mSaldoEmp  + tItens.FieldByName('Entrada_Compra').AsFloat
                                      + tItens.FieldByName('Entrada_Devol').AsFloat
                                      + tItens.FieldByName('Entrada_Terceiros').AsFloat
                                      - tItens.FieldByName('Saida_Devol').AsFloat
                                      - tItens.FieldByName('Saida_Venda').AsFloat
                                      - tItens.FieldByName('Saida_Terceiros').AsFloat
                                      - tItens.FieldByName('Saida_Outras').AsFloat;

             mPlanilha.Cells[mLinha,01] := tItens.FieldByName('Nota').AsInteger;
             mPlanilha.Cells[mLinha,02] := tItens.FieldByName('Data').Value;
             If tItens.FieldByName('Nota_Compl').AsInteger > 0 then mPlanilha.Cells[mLinha,03] := tItens.FieldByName('Nota_Compl').AsInteger;
             mPlanilha.Cells[mLinha,04] := tItens.FieldByName('CFOP').AsString;
             mPlanilha.Cells[mLinha,05] := tItens.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,06] := tItens.FieldByName('Destinatario_Nome').AsString;
             mPlanilha.Cells[mLinha,07] := tItens.FieldByName('Valor_Unitario').AsCurrency;
             mPlanilha.Cells[mLinha,08] := tItens.FieldByName('Total_Item').AsCurrency;
             mPlanilha.Cells[mLinha,09] := tItens.FieldByName('Entrada_Compra').AsFloat;
             mPlanilha.Cells[mLinha,10] := tItens.FieldByName('Entrada_Devol').AsFloat;
             mPlanilha.Cells[mLinha,11] := tItens.FieldByName('Saida_Terceiros').AsFloat;
             mPlanilha.Cells[mLinha,12] := tItens.FieldByName('Entrada_Terceiros').AsFloat;
             mPlanilha.Cells[mLinha,13] := tItens.FieldByName('Saida_Devol').AsFloat;
             mPlanilha.Cells[mLinha,14] := tItens.FieldByName('Saida_Venda').AsFloat;
             mPlanilha.Cells[mLinha,15] := tItens.FieldByName('Saida_Outras').AsFloat;
             mPlanilha.Cells[mLinha,16] := mSaldoTerc;
             mPlanilha.Cells[mLinha,17] := mSaldoEmp;

             mPlanilha.Cells[mLinha,01].NumberFormat := '000000000_)';
             mPlanilha.Cells[mLinha,03].NumberFormat := '000000000_)';
             mPlanilha.Cells[mLinha,04].NumberFormat := '0.000_)';
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,000_);(#.##0,000)';
             mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,000_);(#.##0,000)';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,000_);(#.##0,000)';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,000_);#.##0,000';
             mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,000_);#.##0,000';
             mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,000_)';
             mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,000_)';
             mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,000_)';
             mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,000_)';

             mTotal01 := mTotal01 + tItens.FieldByName('Total_Item').AsFloat;
             mTotal02 := mTotal02 + tItens.FieldByName('Entrada_Compra').AsFloat;
             mTotal03 := mTotal03 + tItens.FieldByName('Entrada_Devol').AsFloat;
             mTotal04 := mTotal04 + tItens.FieldByName('Saida_Terceiros').AsFloat;
             mTotal05 := mTotal05 + tItens.FieldByName('Entrada_Terceiros').AsFloat;
             mTotal06 := mTotal06 + tItens.FieldByName('Saida_Venda').AsFloat;
             mTotal07 := mTotal07 + tItens.FieldByName('Saida_Devol').AsFloat;
             mTotal08 := mTotal08 + tItens.FieldByName('Saida_Outras').AsFloat;

             mTotalProd01 := mTotalProd01 + tItens.FieldByName('Total_Item').AsFloat;
             mTotalProd02 := mTotalProd02 + tItens.FieldByName('Entrada_Compra').AsFloat;
             mTotalProd03 := mTotalProd03 + tItens.FieldByName('Entrada_Devol').AsFloat;
             mTotalProd04 := mTotalProd04 + tItens.FieldByName('Saida_Terceiros').AsFloat;
             mTotalProd05 := mTotalProd05 + tItens.FieldByName('Entrada_Terceiros').AsFloat;
             mTotalProd06 := mTotalProd06 + tItens.FieldByName('Saida_Venda').AsFloat;
             mTotalProd07 := mTotalProd07 + tItens.FieldByName('Saida_Devol').AsFloat;
             mTotalProd08 := mTotalProd08 + tItens.FieldByName('Saida_Outras').AsFloat;

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             tItens.Next;

             If (mProduto <> tItens.FieldByName('Codigo_Mercadoria').AsInteger) or (tItens.Eof) then begin
                Inc(mLinha);
                mPlanilha.Cells[mLinha,01] := 'TOTAIS';
                mPlanilha.Cells[mLinha,01].HorizontalAlignment := 3;
                mPlanilha.Range['B1','Q3'].VerticalAlignment   := 2;
                mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Size         := 8;
                mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].VerticalAlignment := 2;

                mPlanilha.Cells[mLinha,08] := mTotalProd01;
                mPlanilha.Cells[mLinha,09] := mTotalProd02;
                mPlanilha.Cells[mLinha,10] := mTotalProd03;
                mPlanilha.Cells[mLinha,11] := mTotalProd04;
                mPlanilha.Cells[mLinha,12] := mTotalProd05;
                mPlanilha.Cells[mLinha,13] := mTotalProd07;
                mPlanilha.Cells[mLinha,14] := mTotalProd06;
                mPlanilha.Cells[mLinha,15] := mTotalProd08;
                mPlanilha.Cells[mLinha,16] := mSaldoTerc;
                mPlanilha.Cells[mLinha,17] := mSaldoEmp;

                mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,000_);(#.##0,000)';
                mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,000_);(#.##0,000)';
                mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,000_);(#.##0,000)';
                mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,000_);(#.##0,000)';
                mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,000_);(#.##0,000)';
                mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,000_);(#.##0,000)';
                mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,000_);(#.##0,000)';
                mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,000_);(#.##0,000)';
                mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,000_);(#.##0,000)';

                Inc(mLinha, 2);
                If not tItens.Eof then begin
                   mPlanilha.Cells[mLinha, 1] := 'Produto: '+tItens.FieldByName('Codigo_Mercadoria').AsString +'     '+tItens.FieldByName('Codigo_Fabricante').AsString +'          '+tItens.FieldByName('Descricao_Mercadoria').AsString;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Mergecells        := True;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color    := RGB(250, 192, 144);
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Pattern  := 1;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Bold         := true;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Color        := clBlack;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].WrapText          := true;
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].VerticalAlignment := 1;

                   mProduto     := tItens.FieldByName('Codigo_Mercadoria').AsInteger;
                   mTotalProd01 := 0;
                   mTotalProd02 := 0;
                   mTotalProd03 := 0;
                   mTotalProd04 := 0;
                   mTotalProd05 := 0;
                   mTotalProd06 := 0;
                   mSaldoTerc   := 0;
                   mSaldoEmp    := 0;
                End;
             End;

             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       //Fecha o Excel
       If Funcoes.Cancelado = true then begin
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;
       
       mPlanilha.Cells[1,01]                 := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','A1'].Font.Size  := 14;
       mPlanilha.Range['A1','A1'].Font.Bold  := true;
       mPlanilha.Range['A1','Q1'].Mergecells := True;
       mPlanilha.Range['A1','Q1'].HorizontalAlignment := 3;
       mPlanilha.Cells[2,01] := 'Posição de Estoque em '+cData.Text;
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','Q2'].Mergecells := True;
       mPlanilha.Range['A2','Q2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

procedure TImpressao_Faturamento_OP_Estoque.cProcessoChange(Sender: TObject);
begin
      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo IN((SELECT Codigo_Mercadoria FROM Adicoes WHERE DI = (SELECT Numero_Declaracao FROM ProcessosDocumentos WHERE Processo = :pProcesso)))');
           Produtos.ParamByName('pProcesso').AsString := cProcesso.Text;
           Produtos.Open;
      End;    
end;

procedure TImpressao_Faturamento_OP_Estoque.bPesquisaCEPClick(Sender: TObject);
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
      cCodigoProduto.Value := Dados.ProdutosCodigo.AsInteger;
      Screen.Cursor := crDefault;
end;



end.




