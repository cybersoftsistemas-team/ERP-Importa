unit frmImpressao_ProcessosOP_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, RXCtrls, DBCtrls, ppDBPipe,
  ppClass, ppReport, ppCtrls, ppPrnabl, ppBands, DB, DBAccess, MSAccess, ppVar, ppMemo, INIFiles, Buttons, Mask, RxCurrEdit, MemDS, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppCache, ppComm, ppRelatv,
   ppProd, RxToolEdit, System.UITypes;

type
  TImpressao_ProcessosOP_Estoque = class(TForm)
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText2: TStaticText;
    rP01: TppReport;
    pItens: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape8: TppShape;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    tItens: TMSQuery;
    dstItens: TDataSource;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    pEmpresas: TppDBPipeline;
    ppDBText5: TppDBText;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppShape5: TppShape;
    ppLabel6: TppLabel;
    ppGroup1: TppGroup;
    gCab_Processos: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLine1: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBText6: TppDBText;
    ppShape7: TppShape;
    ppLabel9: TppLabel;
    ppShape9: TppShape;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    tItensProcesso: TStringField;
    tItensDI: TStringField;
    tItensNota: TIntegerField;
    tItensData: TDateTimeField;
    tItensSaida_Entrada: TSmallintField;
    tItensCodigo_Mercadoria: TIntegerField;
    tItensUnidade_Medida: TStringField;
    tItensEntradas: TFloatField;
    tItensSaidas: TFloatField;
    cEntreposto: TRadioGroup;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    tItensSaldo: TFloatField;
    ppGroup2: TppGroup;
    gCab_Produto: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppShape10: TppShape;
    ppDBCalc2: TppDBCalc;
    ppLabel12: TppLabel;
    ppLine6: TppLine;
    cGrupo: TRadioGroup;
    rP02: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppGroup3: TppGroup;
    gCab_Produto2: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    gCab_Processos2: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText9: TppDBText;
    lTitulo2: TppLabel;
    ppShape20: TppShape;
    ppDBText11: TppDBText;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText12: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText19: TppDBText;
    tItensCodigo_Fabricante: TStringField;
    StaticText1: TStaticText;
    cIncentivo: TDBLookupComboBox;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    tItensNota_Referencia: TIntegerField;
    tItensData_Referencia: TDateTimeField;
    fFaixa: TppShape;
    tItensTipo: TStringField;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppDBText22: TppDBText;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppLabel15: TppLabel;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLabel16: TppLabel;
    ppShape15: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppShape16: TppShape;
    ppLabel19: TppLabel;
    ppShape17: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppShape18: TppShape;
    ppLabel22: TppLabel;
    ppShape19: TppShape;
    ppLabel23: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    fFaixa2: TppShape;
    StaticText3: TStaticText;
    cProduto: TDBLookupComboBox;
    cModalidade: TDBLookupComboBox;
    StaticText5: TStaticText;
    cResponsavel: TDBLookupComboBox;
    rSaldo: TppVariable;
    ppShape21: TppShape;
    ppLabel28: TppLabel;
    ppDBText26: TppDBText;
    tItensDescricao_Mercadoria: TStringField;
    tItensModalidade: TStringField;
    tItensQuantidade: TFloatField;
    cCodigoProduto: TCurrencyEdit;
    ppDBText27: TppDBText;
    bPesquisaCEP: TSpeedButton;
    tPesquisa: TMSQuery;
    cPedidos: TCheckBox;
    iLogo: TppImage;
    ppImage1: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    cSaldoProcesso: TCheckBox;
    cSaldoProduto: TCheckBox;
    StaticText6: TStaticText;
    cNavio: TDBLookupComboBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure gCab_ProcessosBeforePrint(Sender: TObject);
    procedure tItensCalcFields(DataSet: TDataSet);
    procedure cProcessoChange(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure cResponsavelClick(Sender: TObject);
    procedure cModalidadeClick(Sender: TObject);
    procedure ppDBCalc3Calc(Sender: TObject);
    procedure rSaldoCalc(Sender: TObject; var Value: Variant);
    procedure ppGroupFooterBand3AfterPrint(Sender: TObject);
    procedure cCodigoProdutoChange(Sender: TObject);
    procedure bPesquisaCEPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mSaldo   : Integer;
    mPesquisa: WideString;
  end;

var
  Impressao_ProcessosOP_Estoque: TImpressao_ProcessosOP_Estoque;

implementation

uses frmDados, frmDMFiscal, Funcoes;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Estoque.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_ProcessosOP_Estoque.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P01', 'Responsavel'  , iif(cResponsavel.KeyValue <> null, cResponsavel.KeyValue, '') );
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P01', 'Modalidade'   , iif(cModalidade.KeyValue <> null, cModalidade.KeyValue, '') );
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P01', 'Processo'     , cProcesso.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P01', 'Navio'        , cNavio.KeyValue);
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P01', 'Incentivo'    , iif(cIncentivo.KeyValue <> null, cIncentivo.KeyValue, -1) );
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P01', 'Produto'      , iif(cProduto.KeyValue <> null, cProduto.KeyValue, -1) );
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P01', 'Entreposto'   , cEntreposto.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P01', 'Grupo'        , cGrupo.ItemIndex);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P01', 'SaldoProcesso', cSaldoProcesso.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P01', 'SaldoProduto' , cSaldoProduto.Checked);
      aINI.Free;

      Impressao_ProcessosOP_Estoque.Release;
      Impressao_ProcessosOP_Estoque := nil;

      Dados.ProcessosDOC.Close;
end;

procedure TImpressao_ProcessosOP_Estoque.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Estoque.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                   := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cResponsavel.KeyValue  := aINI.ReadString ('IMPRESSAO_PROCESSOS_P01', 'Responsavel'  , '');
      cModalidade.KeyValue   := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P01', 'Modalidade'   , 0);
      cProcesso.KeyValue     := aINI.ReadString ('IMPRESSAO_PROCESSOS_P01', 'Processo'     , '');
      cNavio.KeyValue        := aINI.Readinteger('IMPRESSAO_PROCESSOS_P01', 'Navio'        , -1);
      cIncentivo.KeyValue    := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P01', 'Incentivo'    , 0);
      cProduto.KeyValue      := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P01', 'Produto'      , 0);
      cEntreposto.ItemIndex  := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P01', 'Entreposto'   , 0);
      cGrupo.ItemIndex       := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P01', 'Grupo'        , 0);
      cSaldoProcesso.Checked := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P01', 'SaldoProcesso', false);
      cSaldoProduto.Checked  := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P01', 'SaldoProduto' , false);
      aINI.Free;

      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY NOME');
           IncentivosFiscais.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;

           If cProduto.KeyValue > 0 then cCodigoProduto.AsInteger := cProduto.KeyValue;

           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
           TiposProcesso.Open;

           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios ORDER BY Nome');
           Usuarios.Open;
           with ControleNavios do begin
                SQL.Clear;
                SQL.Add('select * from ControleNavios order by Navio');
                Open;
           end;
      End;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_ProcessosOP_Estoque.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal do Begin
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT NotasItens.Processo,');
           tItens.SQL.Add('       DI,');
           tItens.SQL.Add('       Nota,');
           tItens.SQL.Add('       Data,');
           tItens.SQL.Add('       NotasItens.Quantidade,');
           tItens.SQL.Add('       Saida_Entrada,');
           tItens.SQL.Add('       Codigo_Mercadoria,');
           tItens.SQL.Add('       Codigo_Fabricante,');
           tItens.SQL.Add('       CAST(Descricao_Mercadoria AS VARCHAR(5000)) AS Descricao_Mercadoria,');
           tItens.SQL.Add('       Unidade_Medida,');
           tItens.SQL.Add('       (SELECT DISTINCT Descricao FROM TiposProcesso WHERE(Codigo = (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE(Processo = NotasItens.Processo)))) AS Modalidade,');
           tItens.SQL.Add('       CASE WHEN Saida_Entrada = 0 THEN NotasItens.Quantidade ELSE 0 END AS Entradas,');
           tItens.SQL.Add('       CASE WHEN Saida_Entrada = 1 THEN NotasItens.Quantidade ELSE 0 END AS Saidas,');
           tItens.SQL.Add('       NULL AS Nota_Referencia, CAST(NULL AS datetime) AS Data_Referencia, ''PROPRIA'' AS Tipo ');
           tItens.SQL.Add('INTO   #TEMP');
           tItens.SQL.Add('FROM   NotasItens');

           If Trim(cProcesso.Text) <> '' then begin
              tItens.SQL.Add('WHERE (NotasItens.Processo = :pProcesso) AND (NotasItens.Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0) AND (NotasItens.Movimenta_Estoque = 1)');
              tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
           end else begin
              If Trim(cModalidade.Text) <> '' then begin
                 tItens.SQL.Add('WHERE ((SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE(Processo = NotasItens.Processo)) = :pModalidade) AND (NotasItens.Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0) AND (NotasItens.Movimenta_Estoque = 1)');
                 tItens.ParamByName('pModalidade').AsInteger := TiposProcessoCodigo.AsInteger;
              end else begin
                 tItens.SQL.Add('WHERE (NotasItens.Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0) AND (NotasItens.Movimenta_Estoque = 1)');
              End;
           End;
           If Trim(cProduto.Text) <> '' then begin
              tItens.SQL.Add('AND (NotasItens.Codigo_Mercadoria = :pProduto)');
              tItens.ParamByName('pProduto').AsInteger := ProdutosCodigo.AsInteger;
           End;
           If cIncentivo.Text <> '' then begin
              tItens.SQL.Add(' AND ((SELECT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasItens.Processo)) = :pIncentivo) ');
              tItens.ParamByName('pIncentivo').AsString := cIncentivo.Text;
           End;
           If cEntreposto.ItemIndex = 1 then
              tItens.SQL.Add(' AND ((SELECT Entreposto FROM ProcessosDocumentos WHERE(Processo = NotasItens.Processo)) = 1) ');
           If cEntreposto.ItemIndex = 2 then
              tItens.SQL.Add(' AND ((SELECT Entreposto FROM ProcessosDocumentos WHERE(Processo = NotasItens.Processo)) <> 1) ');
           If cNavio.Text <> '' then begin
              tItens.SQL.Add(' and Navio = :pNavio ');
              tItens.ParamByName('pNavio').Asinteger := cNavio.KeyValue;
           End;
              
           tItens.SQL.Add('UNION ALL ');
           tItens.SQL.Add('SELECT NotasTerceirosItens.Processo,');
           tItens.SQL.Add('       DI,');
           tItens.SQL.Add('       Nota, Data_Entrada,');
           tItens.SQL.Add('       NotasTerceirosItens.Quantidade,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       Codigo_Mercadoria,');
           tItens.SQL.Add('       NULL,');
           tItens.SQL.Add('       CAST(Descricao_Mercadoria AS VARCHAR(5000)) AS Descricao_Mercadoria,');
           tItens.SQL.Add('       Unidade_Medida,');
           tItens.SQL.Add('       '''',');
           tItens.SQL.Add('       NotasTerceirosItens.Quantidade,');
           tItens.SQL.Add('       0, ');
           tItens.SQL.Add('       Nota_Referencia, Data_Referencia, ''TERCEIROS'' ');
           tItens.SQL.Add('FROM NotasTerceirosItens ');

           If Trim(cProcesso.Text) <> '' then begin
              tItens.SQL.Add('WHERE (NotasTerceirosItens.Processo = :pProcesso) AND (NotasTerceirosItens.Tipo = ''NF'') AND (NotasTerceirosItens.Movimenta_Estoque = 1) ');
              tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
           end else begin
              If Trim(cModalidade.Text) <> '' then begin
                 tItens.SQL.Add('WHERE (NotasTerceirosItens.Tipo = ''NF'') AND (NotasTerceirosItens.Movimenta_Estoque = 1) AND ((SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE(Processo = NotasTerceirosItens.Processo)) = :pModalidade)');
                 tItens.ParamByName('pModalidade').AsInteger := TiposProcessoCodigo.AsInteger;
              end else begin
                 tItens.SQL.Add('WHERE (NotasTerceirosItens.Tipo = ''NF'') AND (NotasTerceirosItens.Movimenta_Estoque = 1) ');
              End;
           End;
           If Trim(cProduto.Text) <> '' then begin
              tItens.SQL.Add('AND (NotasTerceirosItens.Codigo_Mercadoria = :pProduto)');
              tItens.ParamByName('pProduto').AsString := ProdutosCodigo.AsString;
           End;
           If cIncentivo.Text <> '' then begin
              tItens.SQL.Add(' AND ((SELECT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = NotasTerceirosItens.Processo)) = :pIncentivo) ');
              tItens.ParamByName('pIncentivo').AsString := cIncentivo.Text;
           End;
           If cNavio.Text <> '' then begin
              tItens.SQL.Add(' and Navio = :pNavio ');
              tItens.ParamByName('pNavio').Asinteger := cNavio.KeyValue;
           End;

           //-----------------------------------------// TRANSFERÊNCIAS //--------------------------------------------//
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add('SELECT '''',');
           tItens.SQL.Add('       '''',');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       Data_Transferencia,');
           tItens.SQL.Add('       Quantidade,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       Produto_Entrada,');
           tItens.SQL.Add('       Codigo_Fabricante    = (SELECT Codigo_Fabricante FROM Produtos WHERE(Codigo = Produto_Entrada)),');
           tItens.SQL.Add('       Descricao_Mercadoria = (SELECT Descricao         FROM Produtos WHERE(Codigo = Produto_Entrada)),');
           tItens.SQL.Add('       Unidade_Medida       = (SELECT Unidade           FROM Produtos WHERE(Codigo = Produto_Entrada)),');
           tItens.SQL.Add('       '''' AS Modalidade,');
           tItens.SQL.Add('       Quantidade AS Entradas,');
           tItens.SQL.Add('       0 AS Saidas,');
           tItens.SQL.Add('       NULL AS Nota_Referencia,');
           tItens.SQL.Add('       CAST(NULL AS datetime) AS Data_Referencia,');
           tItens.SQL.Add('       ''TRÂNSFER.'' AS Tipo');
           tItens.SQL.Add('FROM   ProdutosTransferencia');
           tItens.SQL.Add('WHERE ISNULL(Produto_Entrada, 0) <> 0');

           If Trim(cProcesso.Text) <> '' then begin
              tItens.SQL.Add('AND (ProdutosTransferencia.Processo_Entrada = :pProcesso OR ProdutosTransferencia.Processo_Saida = :pProcesso)');
              tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
           End;

           If Trim(cProduto.Text) <> '' then begin
              tItens.SQL.Add('AND (Produto_Entrada = :pProduto)');
              tItens.ParamByName('pProduto').AsInteger := ProdutosCodigo.AsInteger;
           End;
           
           tItens.SQL.Add('UNION ALL');
           tItens.SQL.Add('SELECT '''',');
           tItens.SQL.Add('       '''',');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       Data_Transferencia,');
           tItens.SQL.Add('       Quantidade,');
           tItens.SQL.Add('       1,');
           tItens.SQL.Add('       Produto_Saida,');
           tItens.SQL.Add('       Codigo_Fabricante    = (SELECT Codigo_Fabricante FROM Produtos WHERE(Codigo = Produto_Saida)),');
           tItens.SQL.Add('       Descricao_Mercadoria = (SELECT Descricao         FROM Produtos WHERE(Codigo = Produto_Saida)),');
           tItens.SQL.Add('       Unidade_Medida       = (SELECT Unidade           FROM Produtos WHERE(Codigo = Produto_Saida)),');
           tItens.SQL.Add('       '''' AS Modalidade,');
           tItens.SQL.Add('       0,');
           tItens.SQL.Add('       Quantidade AS Saidas,');
           tItens.SQL.Add('       NULL AS Nota_Referencia,');
           tItens.SQL.Add('       CAST(NULL AS datetime) AS Data_Referencia,');
           tItens.SQL.Add('       ''TRÂNSFER.'' AS Tipo');
           tItens.SQL.Add('FROM   ProdutosTransferencia');
           tItens.SQL.Add('WHERE  (ISNULL(Produto_Saida, 0) <> 0)');

           If Trim(cProcesso.Text) <> '' then begin
              tItens.SQL.Add('AND (ProdutosTransferencia.Processo_Entrada = :pProcesso OR ProdutosTransferencia.Processo_Saida = :pProcesso)');
              tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
           End;

           If Trim(cProduto.Text) <> '' then begin
              tItens.SQL.Add('AND (Produto_Saida = :pProduto)');
              tItens.ParamByName('pProduto').AsInteger := ProdutosCodigo.AsInteger;
           End;

           //------------------------------------------------- PEDIDOS DE NOTA FISCAL ----------------------------------------------
           If cPedidos.Checked = true then begin
              tItens.SQL.Add('UNION ALL');
              tItens.SQL.Add('SELECT PedidosItens.Processo,');
              tItens.SQL.Add('       DI, Pedido,');
              tItens.SQL.Add('       (SELECT Data_Emissao FROM Pedidos WHERE(Numero = Pedido)) AS Data,');
              tItens.SQL.Add('       PedidosItens.Quantidade,');
              tItens.SQL.Add('       Saida_Entrada,');
              tItens.SQL.Add('       Codigo_Mercadoria,');
              tItens.SQL.Add('       Codigo_Fabricante,');
              tItens.SQL.Add('       CAST(Descricao_Mercadoria AS VARCHAR(5000)) AS Descricao_Mercadoria,');
              tItens.SQL.Add('       Unidade_Medida,');
              tItens.SQL.Add('       (SELECT DISTINCT Descricao FROM TiposProcesso WHERE(Codigo = (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE(Processo = PedidosItens.Processo)))) AS Modalidade,');
              tItens.SQL.Add('       CASE WHEN Saida_Entrada = 0 THEN PedidosItens.Quantidade ELSE 0 END AS Entradas,');
              tItens.SQL.Add('       CASE WHEN Saida_Entrada = 1 THEN PedidosItens.Quantidade ELSE 0 END AS Saidas,');
              tItens.SQL.Add('       NULL AS Nota_Referencia, CAST(NULL AS datetime) AS Data_Referencia, ''*PEDIDO*'' AS Tipo ');
              tItens.SQL.Add('FROM   PedidosItens');
              If Trim(cProcesso.Text) <> '' then begin
                 tItens.SQL.Add('WHERE (PedidosItens.Processo = :pProcesso) AND (PedidosItens.Movimenta_Estoque = 1)');
                 tItens.ParamByName('pProcesso').AsString := cProcesso.Text;
              end else begin
                 If Trim(cModalidade.Text) <> '' then begin
                    tItens.SQL.Add('WHERE ((SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE(Processo = PedidosItens.Processo)) = :pModalidade) AND (PedidosItens.Movimenta_Estoque = 1)');
                    tItens.ParamByName('pModalidade').AsInteger := TiposProcessoCodigo.AsInteger;
                 end else begin
                    tItens.SQL.Add('WHERE(PedidosItens.Movimenta_Estoque = 1)');
                 End;
              End;
              If Trim(cProduto.Text) <> '' then begin
                 tItens.SQL.Add('AND (PedidosItens.Codigo_Mercadoria = :pProduto)');
                 tItens.ParamByName('pProduto').AsInteger := ProdutosCodigo.AsInteger;
              End;
              If cIncentivo.Text <> '' then begin
                 tItens.SQL.Add(' AND ((SELECT Incentivo_Fiscal FROM ProcessosDocumentos WHERE(Processo = PedidosItens.Processo)) = :pIncentivo) ');
                 tItens.ParamByName('pIncentivo').AsString := cIncentivo.Text;
              End;
              If cEntreposto.ItemIndex = 1 then
                 tItens.SQL.Add(' AND ((SELECT Entreposto FROM ProcessosDocumentos WHERE(Processo = PedidosItens.Processo)) = 1) ');
              If cEntreposto.ItemIndex = 2 then
                 tItens.SQL.Add(' AND ((SELECT Entreposto FROM ProcessosDocumentos WHERE(Processo = PedidosItens.Processo)) <> 1) ');
              If cNavio.Text <> '' then begin
                 tItens.SQL.Add(' and Navio = :pNavio ');
                 tItens.ParamByName('pNavio').Asinteger := cNavio.KeyValue;
              End;
           End;

           tItens.SQL.Add('SELECT * FROM #Temp WHERE Codigo_Mercadoria IS NOT NULL');
           if cSaldoProcesso.Checked then begin
              tItens.SQL.Add('AND    (SELECT SUM(CAST(Entradas AS DECIMAL(14,2))) - SUM(CAST(Saidas AS DECIMAL(14, 2))) FROM #Temp  T2 WHERE T2.Processo = #Temp.Processo) > 0');
           end;
           if cSaldoProduto.Checked then begin
              tItens.SQL.Add('AND    (SELECT SUM(CAST(Entradas AS DECIMAL(14,2))) - SUM(CAST(Saidas AS DECIMAL(14, 2))) FROM #Temp  T2 WHERE T2.Codigo_Mercadoria = #Temp.Codigo_Mercadoria) > 0');
           end;   
           If cGrupo.ItemIndex = 0 then tItens.SQL.Add('ORDER BY Processo, Codigo_Mercadoria, Data, Saida_Entrada, Nota ');
           If cGrupo.ItemIndex = 1 then tItens.SQL.Add('ORDER BY Codigo_Mercadoria, Data, Saida_Entrada, Nota ');
           tItens.SQL.Add('DROP TABLE #Temp');
           //tItens.SQL.SaveToFile('c:\temp\Estoque_Processo.SQL');
           tItens.Open;
           Empresas.Open;
      End;
      Screen.Cursor := crDefault;

      If tItens.RecordCount <> 0 then begin
         If cGrupo.ItemIndex = 0 then begin
            if FileExists(Dados.EmpresasLogo.AsString) then begin
               iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.AsString);
            end;
            lTitulo.Caption := 'Controle de estoque por processos';
            if cNavio.Text <> '' then lTitulo.Caption := lTitulo.caption + ' - (Navio: '+cNavio.Text+')';
            rP01.Print;
            rP01.FreeOnRelease;
            rP01.Reset;
         end else begin
            gCab_Processos2.Visible := false;
            lTitulo2.Caption := 'Controle de estoque por processos';
            if cNavio.Text <> '' then lTitulo2.Caption := lTitulo2.caption + ' - (Navio: '+cNavio.Text+')';

            if FileExists(Dados.EmpresasLogo.AsString) then begin
               iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.AsString);
            end;
            rP02.Print;
            rP02.FreeOnRelease;
            rP02.Reset;
         End;
      end else begin
         MessageDlg('Não há informações para o relatório solicitado!', mtInformation, [mbOk], 0);
      End;
end;

procedure TImpressao_ProcessosOP_Estoque.ppDetailBand1BeforePrint(Sender: TObject);
begin
     fFaixa.Visible := not fFaixa.Visible;
end;

procedure TImpressao_ProcessosOP_Estoque.gCab_ProcessosBeforePrint(Sender: TObject);
begin
     mSaldo := 0;
end;


procedure TImpressao_ProcessosOP_Estoque.tItensCalcFields(DataSet: TDataSet);
begin
     tItensSaldo.Value := tItensSaldo.Value + (tItensEntradas.Value - tItensSaidas.Value);
end;

procedure TImpressao_ProcessosOP_Estoque.cProcessoChange(Sender: TObject);
begin
        If (Trim(cProcesso.Text) <> '') then cModalidade.Enabled := False else cModalidade.Enabled := True;
end;

procedure TImpressao_ProcessosOP_Estoque.bLimparClick(Sender: TObject);
begin
        cResponsavel.KeyValue := '';
        cModalidade.KeyValue  := 0;
        cProcesso.KeyValue    := 0;
        cNavio.KeyValue       := 0;
        cIncentivo.KeyValue   := 0;
        cProduto.KeyValue     := 0;
        cEntreposto.ItemIndex := 0;
        cGrupo.ItemIndex      := 0;
end;

procedure TImpressao_ProcessosOP_Estoque.ppDetailBand2BeforePrint(Sender: TObject);
begin
     fFaixa2.Visible := not fFaixa2.Visible;
end;

procedure TImpressao_ProcessosOP_Estoque.cResponsavelClick(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           if cResponsavel.Text <> 'ADMINISTRADOR' then begin
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Responsavel = :pResponsavel) ORDER BY Processo');
              ProcessosDOC.ParamByName('pResponsavel').AsString := Usuarios.FieldByName('Matricula').AsString;
           end else begin
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           end;
           ProcessosDOC.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Estoque.cModalidadeClick(Sender: TObject);
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           If (Trim(cResponsavel.Text) <> '') and (Trim(cModalidade.Text) <> '') then begin
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Responsavel = :pResponsavel) and (Modalidade_Importacao = :pModalidade) ORDER BY Processo');
              ProcessosDOC.ParamByName('pResponsavel').AsString := Usuarios.FieldByName('Matricula').AsString;
              ProcessosDOC.ParamByName('pModalidade').AsInteger := TiposProcesso.FieldByName('Codigo').AsInteger;
           end;
           If (Trim(cResponsavel.Text) <> '') and (Trim(cModalidade.Text) = '') then begin
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Responsavel = :pResponsavel) ORDER BY Processo');
              ProcessosDOC.ParamByName('pResponsavel').AsString := Usuarios.FieldByName('Matricula').AsString;
           end;
           If (Trim(cResponsavel.Text) = '') and (Trim(cModalidade.Text) <> '') then begin
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Modalidade_Importacao = :pModalidade) ORDER BY Processo');
              ProcessosDOC.ParamByName('pModalidade').AsInteger := TiposProcesso.FieldByName('Codigo').AsInteger;
           end;
           If (Trim(cResponsavel.Text) = '') and (Trim(cModalidade.Text) = '') then begin
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           end;
           ProcessosDOC.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Estoque.ppDBCalc3Calc(Sender: TObject);
begin
     If tItens.FieldByName('Saida_Entrada').AsInteger = 0 then
        mSaldo := mSaldo + tItensQuantidade.AsInteger
     else
        mSaldo := mSaldo - tItensQuantidade.ASInteger;
end;

procedure TImpressao_ProcessosOP_Estoque.rSaldoCalc(Sender: TObject;var Value: Variant);
begin
        Value := Value + tItensEntradas.Value - tItensSaidas.Value;
end;

procedure TImpressao_ProcessosOP_Estoque.ppGroupFooterBand3AfterPrint(Sender: TObject);
begin
      rSaldo.Value := 0;
end;

procedure TImpressao_ProcessosOP_Estoque.cCodigoProdutoChange(Sender: TObject);
begin
      cProduto.KeyValue := 0;
      If Dados.Produtos.Locate('Codigo', cCodigoProduto.AsInteger, [loCaseInsensitive]) then begin
         cProduto.KeyValue := Dados.ProdutosCodigo.AsInteger;
      End;
end;

procedure TImpressao_ProcessosOP_Estoque.bPesquisaCEPClick(Sender: TObject);
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
