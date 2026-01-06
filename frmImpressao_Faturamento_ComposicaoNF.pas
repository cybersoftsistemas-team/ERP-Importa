unit frmImpressao_Faturamento_ComposicaoNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter,
  ppBands, ppCtrls, ppVar, ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, RXCtrls, IniFiles, ppSubRpt, Funcoes, ComObj, MaskUtils, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache,
  ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
    TImpressao_Faturamento_ComposicaoNF = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    cExcel: TCheckBox;
    lCliente: TStaticText;
    cCliente: TRxDBLookupCombo;
    cNota: TRxDBLookupCombo;
    cPedido: TRxDBLookupCombo;
    tNota: TMSQuery;
    tDespesas: TMSQuery;
    pNota: TppDBPipeline;
    rComposicaoNF: TppReport;
    dstNota: TDataSource;
    dstDespesas: TDataSource;
    pDespesas: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    pEmpresa: TppDBPipeline;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    rDespesas: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppSummaryBand1: TppSummaryBand;
    lFator: TppLabel;
    ppDBText11: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText14: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText15: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText16: TppDBText;
    ppLabel20: TppLabel;
    ppDBText17: TppDBText;
    ppLabel21: TppLabel;
    ppDBText18: TppDBText;
    ppLabel22: TppLabel;
    ppDBText19: TppDBText;
    ppLabel23: TppLabel;
    ppShape26: TppShape;
    ppLabel28: TppLabel;
    ppDBText20: TppDBText;
    ppShape27: TppShape;
    ppLabel24: TppLabel;
    ppDBText21: TppDBText;
    ppShape28: TppShape;
    ppLabel29: TppLabel;
    ppDBText22: TppDBText;
    ppShape29: TppShape;
    ppLabel30: TppLabel;
    ppDBText23: TppDBText;
    ppShape30: TppShape;
    ppLabel31: TppLabel;
    ppDBText24: TppDBText;
    ppShape31: TppShape;
    ppLabel32: TppLabel;
    ppDBText25: TppDBText;
    ppShape32: TppShape;
    ppLabel33: TppLabel;
    ppDBText26: TppDBText;
    ppShape33: TppShape;
    ppLabel34: TppLabel;
    ppDBText27: TppDBText;
    ppShape34: TppShape;
    pDescontos: TppDBText;
    ppLabel35: TppLabel;
    ppShape35: TppShape;
    ppDBText28: TppDBText;
    ppLabel36: TppLabel;
    ppShape36: TppShape;
    ppDBText29: TppDBText;
    ppLabel37: TppLabel;
    ppDBText30: TppDBText;
    ppLabel9: TppLabel;
    ppDBText31: TppDBText;
    ppLabel25: TppLabel;
    ppDBText32: TppDBText;
    ppLabel26: TppLabel;
    ppDBText33: TppDBText;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    lNota: TppLabel;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppLabel41: TppLabel;
    ppDBText37: TppDBText;
    ppLabel42: TppLabel;
    ppDBText38: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText39: TppDBText;
    ppLabel45: TppLabel;
    ppDBText40: TppDBText;
    ppLabel46: TppLabel;
    ppDBText41: TppDBText;
    cTipoNota: TRadioGroup;
    lTipo: TppLabel;
    iLogo: TppImage;
    ppLabel40: TppLabel;
    ppDBText42: TppDBText;
    ppLabel47: TppLabel;
    ppDBText43: TppDBText;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    ppLabel48: TppLabel;
    ppDBText44: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText45: TppDBText;
    ppLabel51: TppLabel;
    ppDBText47: TppDBText;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText48: TppDBText;
    ppLabel55: TppLabel;
    ppDBText49: TppDBText;
    ppLabel56: TppLabel;
    ppDBText50: TppDBText;
    ppLabel57: TppLabel;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppLabel58: TppLabel;
    lLucroPerc: TppLabel;
    ppVariable1: TppVariable;
    lFornecedor: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cClienteChange(Sender: TObject);
    procedure cNotaChange(Sender: TObject);
    procedure cPedidoChange(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ExportaEXCEL;
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure cTipoNotaClick(Sender: TObject);
    procedure cFornecedorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_ComposicaoNF: TImpressao_Faturamento_ComposicaoNF;

implementation

uses frmDados, frmMenu_Principal, frmDMFiscal;

{$R *.dfm}

procedure TImpressao_Faturamento_ComposicaoNF.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Faturamento_ComposicaoNF.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      If Trim(cCliente.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Cliente', cCliente.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Cliente', 0);

      If Trim(cNota.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Nota', cNota.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Nota', 0);

      If Trim(cPedido.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Pedido', cPedido.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Pedido', 0);

      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Excel'   , cExcel.Checked);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'TipoNota', cTipoNota.ItemIndex);
      aINI.Free;

      FecharTabelas(Dados, dmFiscal, nil, nil);

      Impressao_Faturamento_ComposicaoNF.Release;
      Impressao_Faturamento_ComposicaoNF := nil;
end;

procedure TImpressao_Faturamento_ComposicaoNF.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_ComposicaoNF.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;

      With Dados do begin
           with Clientes do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Clientes');
                SQL.Add('WHERE (SELECT COUNT(*) FROM NotasFiscais WHERE(Cliente_Codigo = Codigo)) > 0');
                SQL.Add('   OR (SELECT COUNT(*) FROM Pedidos WHERE(Cliente_Codigo = Codigo)) > 0');
                SQL.Add('ORDER BY Nome');
                Open;
           end;
           with Fornecedores do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Fornecedores');
                SQL.Add('WHERE (SELECT COUNT(*) FROM NotasFiscais WHERE(Fornecedor_Codigo = Codigo)) > 0');
                SQL.Add('   OR (SELECT COUNT(*) FROM Pedidos WHERE(Fornecedor_Codigo = Codigo)) > 0');
                SQL.Add('ORDER BY Nome');
                Open;
           end;
           with Empresas do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
                ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                Open;
           end;

           cClienteChange(Self);
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cCliente.KeyValue   := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Cliente' , 0);
      cNota.KeyValue      := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Nota'    , -1);
      cPedido.KeyValue    := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Pedido'  , -1);
      cExcel.Checked      := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'Excel'   , false);
      cTipoNota.ItemIndex := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_COMPOSICAONF', 'TipoNota', 1);
      aINI.Free;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_Faturamento_ComposicaoNF.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
      value := tNota.FieldByName('Produtos').value * (tNota.FieldByName('Lucro').value/100);
end;

procedure TImpressao_Faturamento_ComposicaoNF.cClienteChange(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT *');
           Notas.SQL.Add('FROM   NotasFiscais');
           If cTipoNota.ItemIndex = 1 then begin
              Notas.SQL.Add('WHERE  (Cliente_Codigo = :pCliente)');
           end else begin
              Notas.SQL.Add('WHERE  Saida_Entrada = 0 AND Processo IN( SELECT DISTINCT Processo FROM ProcessosDocumentos WHERE Cliente = :pCliente)');
           End;
           Notas.SQL.Add('ORDER  BY Data_Emissao desc, Numero desc');
           Notas.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
           //Notas.SQL.SaveToFile('c:\temp\Composicao_NotaFiscal_Notas.sql');
           Notas.Open;

           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('SELECT *');
           Pedidos.SQL.Add('FROM   Pedidos');
           If cTipoNota.ItemIndex = 1 then begin
              Pedidos.SQL.Add('WHERE  Cliente_Codigo = :pCliente');
           end else begin
              Pedidos.SQL.Add('WHERE  Saida_Entrada = 0 AND Processo IN( SELECT DISTINCT Processo FROM ProcessosDocumentos WHERE Cliente = :pCliente )');
           End;
           Pedidos.SQL.Add('ORDER  BY Numero desc');
           Pedidos.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
           //Pedidos.SQL.SaveToFile('c:\temp\Composicao_NotaFiscal_Pedidos.sql');
           Pedidos.Open;

           cNota.Enabled   := cCliente.Text <> '';
           cPedido.Enabled := cCliente.Text <> '';
      End;
end;

procedure TImpressao_Faturamento_ComposicaoNF.cFornecedorChange(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('select *');
           Notas.SQL.Add('from   NotasFiscais');
           Notas.SQL.Add('where  Saida_Entrada = 0');
           Notas.SQL.Add('and    Fornecedor_Codigo = :pForn');
           Notas.SQL.Add('order  by Data_Emissao desc, Numero desc');
           Notas.ParamByName('pForn').AsInteger := FornecedoresCodigo.AsInteger;
           //Notas.SQL.SaveToFile('c:\temp\Composicao_NotaFiscal_Notas.sql');
           Notas.Open;

           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('select *');
           Pedidos.SQL.Add('from   Pedidos');
           Pedidos.SQL.Add('where  Fornecedor_Codigo = :pForn');
           Pedidos.SQL.Add('order  by Numero desc');
           Pedidos.ParamByName('pForn').AsInteger := FornecedoresCodigo.AsInteger;
           //Pedidos.SQL.SaveToFile('c:\temp\Composicao_NotaFiscal_Pedidos.sql');
           Pedidos.Open;

           cNota.Enabled   := cFornecedor.Text <> '';
           cPedido.Enabled := cFornecedor.Text <> '';
      End;
end;

procedure TImpressao_Faturamento_ComposicaoNF.cNotaChange(Sender: TObject);
begin
      If cNota.KeyValue > 0 then cPedido.KeyValue := -1;
end;

procedure TImpressao_Faturamento_ComposicaoNF.cPedidoChange(Sender: TObject);
begin
      If cPedido.KeyValue > 0 then cNota.KeyValue := -1;
end;

procedure TImpressao_Faturamento_ComposicaoNF.cTipoNotaClick(Sender: TObject);
begin
      if cTipoNota.ItemIndex = 0 then begin
         cFornecedor.Enabled := true;
         cCliente.Enabled    := false;
         cCliente.KeyValue   := 0;
         lCliente.Enabled    := false;
         lFornecedor.Enabled := true;
      end;
      if cTipoNota.ItemIndex = 1 then begin
         cCliente.Enabled     := true;
         cFornecedor.Enabled  := false;
         cFornecedor.KeyValue := 0;
         lFornecedor.Enabled  := false;
         lCliente.Enabled     := true;
      end;
      cClienteChange(self);
end;

procedure TImpressao_Faturamento_ComposicaoNF.bImprimirClick(Sender: TObject);
begin
      If (Trim(cNota.Text) <= '') and (Trim(cPedido.Text) <= '') then begin
         Showmessage('É necessário informar o número da "Nota Fiscal" ou do "Pedido" para gerar o relatório!');
         Abort;
      End;

      With Dados, dmFiscal do begin
           tNota.SQL.Clear;
           If Trim(cNota.Text) <> '' then begin
              // Com base na Nota fiscal.
              tNota.SQL.Add('SELECT Nota = NF.Numero,');
              tNota.SQL.Add('       Data = NF.Data_Emissao,');
              tNota.SQL.Add('       NF.Processo,');
              tNota.SQL.Add('       Modalidade_Cod  = (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE Processo = NF.Processo),');
              tNota.SQL.Add('       Modalidade      = (SELECT Descricao FROM TiposProcesso WHERE Codigo = (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE Processo = NF.Processo)),');
              tNota.SQL.Add('       FOB             = ISNULL((SELECT FOB_Real    FROM NotasRateio PD WHERE(PD.Nota = NF.Numero)), 0),');
              tNota.SQL.Add('       SeguroProc      = ISNULL((SELECT Seguro_Real FROM NotasRateio PD WHERE(PD.Nota = NF.Numero)), 0),');
              tNota.SQL.Add('       FreteProc       = ISNULL((SELECT Frete_Real  FROM NotasRateio PD WHERE(PD.Nota = NF.Numero)), 0),');
              tNota.SQL.Add('       Dumping         = ISNULL((SELECT Dumping     FROM NotasRateio PD WHERE(PD.Nota = NF.Numero)), 0),');
              tNota.SQL.Add('       II              = ISNULL((SELECT II          FROM NotasRateio PD WHERE(PD.Nota = NF.Numero)), 0),');
              tNota.SQL.Add('       Lucro           = (SELECT SUM(Lucro * NI.Quantidade) FROM NotasItens NI WHERE(NI.Nota = NF.Numero) AND (NI.Data = NF.Data_Emissao))');
              tNota.SQL.Add('                         /(SELECT SUM(NI.Quantidade) FROM NotasItens NI WHERE(NI.Nota = NF.Numero) AND (NI.Data = NF.Data_Emissao)),');
              tNota.SQL.Add('       Produtos_NF     = NF.Valor_TotalProdutos,');
              tNota.SQL.Add('       Produtos        = NF.Valor_TotalProdutos,');
              tNota.SQL.Add('       BCICMSOp        = CASE WHEN (SELECT Visiveis_ICMSOper FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.BCICMS                 ELSE 0 END,');
              tNota.SQL.Add('       ICMSOp          = CASE WHEN (SELECT Visiveis_ICMSOper FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Valor_ICMS             ELSE 0 END,');
              tNota.SQL.Add('       BCICMSST        = CASE WHEN (SELECT Visiveis_ICMSSub  FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.BCICMS_Substitutivo    ELSE 0 END,');
              tNota.SQL.Add('       ICMSST          = CASE WHEN (SELECT Visiveis_ICMSSub  FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.ValorICMS_Substitutivo ELSE 0 END,');
              tNota.SQL.Add('       IPI             = CASE WHEN (SELECT Visiveis_IPI      FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Valor_TotalIPI         ELSE 0 END,');
              tNota.SQL.Add('       Total_NF        = NF.Valor_TotalNota,');
              tNota.SQL.Add('       Total_Nota      = NF.Valor_TotalNota,');
              tNota.SQL.Add('       Custo           = (SELECT SUM(Valor_Nota) FROM NotasDespesas ND WHERE(ND.Nota = NF.Numero) AND (ND.Data_Emissao = NF.Data_Emissao)),');
              tNota.SQL.Add('       FreteNF         = CASE WHEN (SELECT Visiveis_Frete    FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Total_Frete  ELSE 0 END,');
              tNota.SQL.Add('       SeguroNF        = CASE WHEN (SELECT Visiveis_Seguro   FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Valor_Seguro ELSE 0 END,');
              tNota.SQL.Add('       DespesasNF      = NF.Valor_OutrasDespesas,');
              tNota.SQL.Add('       Desconto        = CASE WHEN (SELECT Visiveis_Desconto FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN ISNULL(NF.Total_Descontos, 0) ELSE 0 END,');
              tNota.SQL.Add('       Aliquota_ICMS   = NF.Aliquota_ICMSOper,');
              tNota.SQL.Add('       Aliquota_PIS    = (SELECT SUM(CASE WHEN Aliquota_PISRed    > 0 THEN NI.Aliquota_PISRed    ELSE Aliquota_PIS    END * NI.Quantidade) FROM NotasItens NI WHERE(NI.Nota = NF.Numero) AND (NI.Data = NF.Data_Emissao))');
              tNota.SQL.Add('                         / (SELECT SUM(NI.Quantidade) FROM NotasItens NI WHERE(NI.Nota = NF.Numero) AND (NI.Data = NF.Data_Emissao)),');
              tNota.SQL.Add('       Aliquota_COFINS = (SELECT SUM(CASE WHEN Aliquota_COFINSRed > 0 THEN NI.Aliquota_COFINSRed ELSE Aliquota_COFINS END * NI.Quantidade) FROM NotasItens NI WHERE(NI.Nota = NF.Numero) AND (NI.Data = NF.Data_Emissao))');
              tNota.SQL.Add('                         / (SELECT SUM(NI.Quantidade) FROM NotasItens NI WHERE(NI.Nota = NF.Numero) AND (NI.Data = NF.Data_Emissao)),');
              tNota.SQL.Add('       Fator           = CAST(0 AS Float),');
              tNota.SQL.Add('       Cliente         = Destinatario_Nome,');
              tNota.SQL.Add('       Fornecedor      = Destinatario_Nome,');
              tNota.SQL.Add('       CNPJ            = Destinatario_CNPJ_CPF,');
              tNota.SQL.Add('       CIF             = CAST(0 AS Float),');
              tNota.SQL.Add('       Valor_PISEnt    = (SELECT Valor_PIS    FROM ProcessosDocumentos WHERE Processo = NF.Processo),');
              tNota.SQL.Add('       Valor_COFINSEnt = (SELECT Valor_COFINS FROM ProcessosDocumentos WHERE Processo = NF.Processo),');
              tNota.SQL.Add('       Valor_PIS       = ISNULL(NF.Valor_PIS    , 0),');
              tNota.SQL.Add('       Valor_COFINS    = ISNULL(NF.Valor_COFINS , 0),');
              tNota.SQL.Add('       Valor_CSLL      = ISNULL(NF.Valor_CSLL   , 0),');
              tNota.SQL.Add('       Valor_IRPJ      = ISNULL(NF.Valor_IRPJ   , 0),');
              tNota.SQL.Add('       Aliquota_CSLL   = ISNULL(NF.Aliquota_CSLL, 0),');
              tNota.SQL.Add('       Aliquota_IRPJ   = ISNULL(NF.Aliquota_IRPJ, 0),');
              tNota.SQL.Add('       Lucro_ValorPerc = ISNULL(NF.Lucro_Valor  , 0), ');
              tNota.SQL.Add('       Fator_ICMS      = CAST(0 AS float),');
              tNota.SQL.Add('       Fator_PIS       = CAST(0 AS float),');
              tNota.SQL.Add('       Fator_COFINS    = CAST(0 AS float),');
              tNota.SQL.Add('       Fator_IRPJ      = CAST(0 AS float),');
              tNota.SQL.Add('       Fator_CSLL      = CAST(0 AS float),');
              tNota.SQL.Add('       Fator_Lucro     = CAST(0 AS float),');
              tNota.SQL.Add('       Tipo_Nota');
              tNota.SQL.Add('INTO   #TEMP');
              tNota.SQL.Add('FROM   NotasFiscais NF');
              tNota.SQL.Add('WHERE  (Numero = :pNumero) AND (Data_Emissao = :pData)');
              tNota.SQL.Add('UPDATE #TEMP SET Fator_ICMS   = CASE WHEN (SELECT Fator_ICMS   FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_ICMS   ELSE 0 END,');
              tNota.SQL.Add('	              Fator_PIS    = CASE WHEN (SELECT Fator_PIS    FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_PIS    ELSE 0 END,');
              tNota.SQL.Add('	              Fator_COFINS = CASE WHEN (SELECT Fator_COFINS FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_COFINS ELSE 0 END,');
              tNota.SQL.Add('	              Fator_IRPJ   = CASE WHEN (SELECT Fator_IRPJ   FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_IRPJ   ELSE 0 END,');
              tNota.SQL.Add('	              Fator_CSLL   = CASE WHEN (SELECT Fator_CSLL   FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_CSLL   ELSE 0 END,');
              tNota.SQL.Add('	              Fator_Lucro  = CASE WHEN (SELECT Fator_Lucro  FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Lucro           ELSE 0 END');
              tNota.SQL.Add('UPDATE #TEMP SET Fator      = (ROUND((100 - (Fator_Lucro+Fator_ICMS+Fator_PIS+Fator_COFINS+Fator_IRPJ+Fator_CSLL)), 4)/100),');
              tNota.SQL.Add('                 CIF        =  CASE WHEN Modalidade_Cod <> 2 THEN');
              tNota.SQL.Add('                                    FOB + SeguroProc + FreteProc + Dumping + Custo + II');
              tNota.SQL.Add('                               ELSE');
              tNota.SQL.Add('                                    FOB + SeguroProc + FreteProc + Dumping + Custo + II + Valor_PISEnt + Valor_COFINSEnt');
              tNota.SQL.Add('                               END');
              tNota.SQL.Add('SELECT * FROM #TEMP');
              tNota.SQL.Add('DROP TABLE #TEMP');
              tNota.ParamByName('pNumero').AsInteger := NotasNumero.AsInteger;
              tNota.ParamByName('pData').AsDate      := NotasData_Emissao.AsDateTime;
           end else begin
              // Com base no Pedido de Nota Fiscal.
              tNota.SQL.Add('SELECT Nota = NF.Numero,');
              tNota.SQL.Add('       Data = NF.Data_Emissao,');
              tNota.SQL.Add('       NF.Processo,');
              tNota.SQL.Add('       Modalidade_Cod  = (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE Processo = NF.Processo),');
              tNota.SQL.Add('       Modalidade      = (SELECT Descricao FROM TiposProcesso WHERE Codigo = (SELECT Modalidade_Importacao FROM ProcessosDocumentos WHERE Processo = NF.Processo)),');
              tNota.SQL.Add('       FOB             = ISNULL((SELECT FOB_Real    FROM PedidosRateio PD WHERE(PD.Pedido = NF.Numero)), 0),');
              tNota.SQL.Add('       SeguroProc      = ISNULL((SELECT Seguro_Real FROM PedidosRateio PD WHERE(PD.Pedido = NF.Numero)), 0),');
              tNota.SQL.Add('       FreteProc       = ISNULL((SELECT Frete_Real  FROM PedidosRateio PD WHERE(PD.Pedido = NF.Numero)), 0),');
              tNota.SQL.Add('       Dumping         = ISNULL((SELECT Dumping     FROM PedidosRateio PD WHERE(PD.Pedido = NF.Numero)), 0),');
              tNota.SQL.Add('       II              = ISNULL((SELECT II          FROM PedidosRateio PD WHERE(PD.Pedido = NF.Numero)), 0),');
              tNota.SQL.Add('       Lucro           = (SELECT SUM(Lucro * NI.Quantidade) FROM PedidosItens NI WHERE(NI.Pedido = NF.Numero))');
              tNota.SQL.Add('                         /(SELECT SUM(NI.Quantidade) FROM PedidosItens NI WHERE(NI.Pedido = NF.Numero)),');
              tNota.SQL.Add('       Produtos_NF     = NF.Valor_TotalProdutos,');
              tNota.SQL.Add('       Produtos        = NF.Valor_TotalProdutos,');
              tNota.SQL.Add('       BCICMSOp        = CASE WHEN (SELECT Visiveis_ICMSOper FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.BCICMS                 ELSE 0 END,');
              tNota.SQL.Add('       ICMSOp          = CASE WHEN (SELECT Visiveis_ICMSOper FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Valor_ICMS             ELSE 0 END,');
              tNota.SQL.Add('       BCICMSST        = CASE WHEN (SELECT Visiveis_ICMSSub  FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.BCICMS_Substitutivo    ELSE 0 END,');
              tNota.SQL.Add('       ICMSST          = CASE WHEN (SELECT Visiveis_ICMSSub  FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.ValorICMS_Substitutivo ELSE 0 END,');
              tNota.SQL.Add('       IPI             = CASE WHEN (SELECT Visiveis_IPI      FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Valor_TotalIPI         ELSE 0 END,');
              tNota.SQL.Add('       Total_NF        = NF.Valor_TotalNota,');
              tNota.SQL.Add('       Total_Nota      = NF.Valor_TotalNota,');
              tNota.SQL.Add('       Custo           = (SELECT SUM(Valor_Nota) FROM PedidosDespesas ND WHERE(ND.Pedido = NF.Numero)),');
              tNota.SQL.Add('       FreteNF         = CASE WHEN (SELECT Visiveis_Frete    FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Total_Frete  ELSE 0 END,');
              tNota.SQL.Add('       SeguroNF        = CASE WHEN (SELECT Visiveis_Seguro   FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN NF.Valor_Seguro ELSE 0 END,');
              tNota.SQL.Add('       DespesasNF      = NF.Valor_OutrasDespesas,');
              tNota.SQL.Add('       Desconto        = CASE WHEN (SELECT Visiveis_Desconto FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN ISNULL(NF.Total_Descontos, 0) ELSE 0 END,');
              tNota.SQL.Add('       Aliquota_ICMS   = NF.Aliquota_ICMSOper,');
              tNota.SQL.Add('       Aliquota_PIS    = (SELECT SUM(CASE WHEN Aliquota_PISRed > 0 THEN NI.Aliquota_PISRed ELSE Aliquota_PIS END * NI.Quantidade) FROM PedidosItens NI WHERE(NI.Pedido = NF.Numero))');
              tNota.SQL.Add('                         /(SELECT SUM(NI.Quantidade) FROM PedidosItens NI WHERE(NI.Pedido = NF.Numero)),');
              tNota.SQL.Add('       Aliquota_COFINS = (SELECT SUM(CASE WHEN Aliquota_COFINSRed > 0 THEN NI.Aliquota_COFINSRed ELSE Aliquota_COFINS END * NI.Quantidade) FROM PedidosItens NI WHERE(NI.Pedido = NF.Numero))');
              tNota.SQL.Add('                         /(SELECT SUM(NI.Quantidade) FROM PedidosItens NI WHERE(NI.Pedido = NF.Numero)),');
              tNota.SQL.Add('       Fator           = CAST(0 AS Float),');
              tNota.SQL.Add('       Cliente         = Destinatario_Nome,');
              tNota.SQL.Add('       Fornecedor      = Destinatario_Nome,');
              tNota.SQL.Add('       CNPJ            = Destinatario_CNPJ_CPF,');
              tNota.SQL.Add('       CIF             = CAST(0 AS Float),');
              tNota.SQL.Add('       Valor_PISEnt    = (SELECT Valor_PIS    FROM ProcessosDocumentos WHERE Processo = NF.Processo),');
              tNota.SQL.Add('       Valor_COFINSEnt = (SELECT Valor_COFINS FROM ProcessosDocumentos WHERE Processo = NF.Processo),');
              tNota.SQL.Add('       Valor_PIS       = ISNULL(NF.Valor_PIS    , 0),');
              tNota.SQL.Add('       Valor_COFINS    = ISNULL(NF.Valor_COFINS , 0),');
              tNota.SQL.Add('       Valor_CSLL      = ISNULL(NF.Valor_CSLL   , 0),');
              tNota.SQL.Add('       Valor_IRPJ      = ISNULL(NF.Valor_IRPJ   , 0),');
              tNota.SQL.Add('       Aliquota_CSLL   = ISNULL(NF.Aliquota_CSLL, 0),');
              tNota.SQL.Add('       Aliquota_IRPJ   = ISNULL(NF.Aliquota_IRPJ, 0),');
              tNota.SQL.Add('       Lucro_ValorPerc = ISNULL(NF.Lucro_Valor  , 0),');
              tNota.SQL.Add('       Fator_ICMS      = CAST(0 AS float),');
              tNota.SQL.Add('       Fator_PIS       = CAST(0 AS float),');
              tNota.SQL.Add('       Fator_COFINS    = CAST(0 AS float),');
              tNota.SQL.Add('       Fator_IRPJ      = CAST(0 AS float),');
              tNota.SQL.Add('       Fator_CSLL      = CAST(0 AS float),');
              tNota.SQL.Add('       Fator_Lucro     = CAST(0 AS float),');
              tNota.SQL.Add('       Tipo_Nota');
              tNota.SQL.Add('INTO   #TEMP');
              tNota.SQL.Add('FROM   Pedidos NF');
              tNota.SQL.Add('WHERE  (Numero = :pNumero)');
              tNota.SQL.Add('UPDATE #TEMP SET Fator_ICMS   = CASE WHEN (SELECT Fator_ICMS   FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_ICMS   ELSE 0 END,');
              tNota.SQL.Add('	              Fator_PIS    = CASE WHEN (SELECT Fator_PIS    FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_PIS    ELSE 0 END,');
              tNota.SQL.Add('	              Fator_COFINS = CASE WHEN (SELECT Fator_COFINS FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_COFINS ELSE 0 END,');
              tNota.SQL.Add('	              Fator_IRPJ   = CASE WHEN (SELECT Fator_IRPJ   FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_IRPJ   ELSE 0 END,');
              tNota.SQL.Add('	              Fator_CSLL   = CASE WHEN (SELECT Fator_CSLL   FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Aliquota_CSLL   ELSE 0 END,');
              tNota.SQL.Add('	              Fator_Lucro  = CASE WHEN (SELECT Fator_Lucro  FROM TipoNota WHERE Codigo = Tipo_Nota) = 1 THEN Lucro           ELSE 0 END');
              tNota.SQL.Add('UPDATE #TEMP SET Fator      = (ROUND((100 - (Fator_Lucro+Fator_ICMS+Fator_PIS+Fator_COFINS+Fator_IRPJ+Fator_CSLL)), 4)/100),');
              tNota.SQL.Add('                 CIF        =  CASE WHEN Modalidade_Cod <> 2 THEN');
              tNota.SQL.Add('                                    FOB + SeguroProc + FreteProc + Dumping + Custo + II');
              tNota.SQL.Add('                               ELSE');
              tNota.SQL.Add('                                    FOB + SeguroProc + FreteProc + Dumping + Custo + II + Valor_PISEnt + Valor_COFINSEnt');
              tNota.SQL.Add('                               END');
              tNota.SQL.Add('SELECT * FROM #TEMP');
              tNota.SQL.Add('DROP TABLE #TEMP');
              tNota.ParamByName('pNumero').AsInteger := PedidosNumero.AsInteger;
           End;
           //tNota.SQL.SavetoFile('c:\temp\Composicao_NotaFiscal.sql');
           tNota.Open;

           tDespesas.SQL.Clear;
           tDespesas.SQL.Add('SELECT Classificacao,');
           tDespesas.SQL.Add('       Descricao,');
           tDespesas.SQL.Add('       Valor_Total,');
           tDespesas.SQL.Add('       Valor_Nota');
           If Trim(cNota.Text) <> '' then begin
              tDespesas.SQL.Add('FROM NotasDespesas WHERE(Nota = :pNota) AND (Data_Emissao = :pData)');
              tDespesas.ParamByName('pNota').AsInteger := NotasNumero.AsInteger;
              tDespesas.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
           End;
           If Trim(cPedido.Text) <> '' then begin
              tDespesas.SQL.Add('FROM PedidosDespesas WHERE(Pedido = :pPedido)');
              tDespesas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           End;
           tDespesas.SQL.Add('ORDER BY Descricao');
           tDespesas.Open;

           lLucroPerc.Caption := 'LUCRO ('+FormatFloat(',##0.00', tNota.FieldByName('Fator_Lucro').AsFloat)+'% )';

           If cExcel.Checked = false then begin
              If (Trim(cNota.Text) <> '') then begin
                 lNota.Caption := 'NOTA FISCAL';
              end else begin
                 lNota.Caption := 'PEDIDO';
              End;
              If cTipoNota.ItemIndex = 0 then begin
                 lTipo.Caption := '(ENTRADA)';
              end else begin
                 lTipo.Caption := '(SAÍDA)';
              End;

              if FileExists(Dados.EmpresasLogo.Value) then begin
                 iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              end;
              rComposicaoNF.Print;
              rComposicaoNF.Reset;
           end else begin
              ExportaExcel;
           End;   
      End;
end;

// Envia informações para o excel.
procedure TImpressao_Faturamento_ComposicaoNF.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha,
   mLinhaAnt: Integer;
begin
       Screen.Cursor := crSQLWait;
       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Cells[1, 1].ColumnWidth := 12;
       mPlanilha.Cells[1, 2].ColumnWidth := 60;
       mPlanilha.Cells[1, 3].ColumnWidth := 12;
       mPlanilha.Cells[1, 4].ColumnWidth := 14;
       mPlanilha.Cells[1, 7].ColumnWidth := 18;

       if cTipoNota.ItemIndex = 0 then begin
          mPlanilha.Cells[3,01] := 'FORNECEDOR';
          mPlanilha.Cells[3,02] := tNota.FieldByName('Fornecedor').AsString;
       end else begin
          mPlanilha.Cells[3,01] := 'CLIENTE';
          mPlanilha.Cells[3,02] := tNota.FieldByName('Cliente').AsString;
       end;

       mPlanilha.Cells[3,03] := 'CNPJ';
       mPlanilha.Cells[3,04] := FormatMaskText('##.###.###/####-##;0;', tNota.FieldByName('CNPJ').AsString);

       If Trim(cNota.Text) <> '' then
          mPlanilha.Cells[4,01] := 'NOTA FISCAL'
       else
          mPlanilha.Cells[4,01] := 'PEDIDO';

       If cTipoNota.ItemIndex = 0 then
          mPlanilha.Cells[4,02] := tNota.FieldByName('Nota').AsString + ' DE '+ tNota.FieldByName('Data').AsString+ ' (ENTRADA)'
       else
          mPlanilha.Cells[4,02] := tNota.FieldByName('Nota').AsString + ' DE '+ tNota.FieldByName('Data').AsString+ ' (SAÍDA)';
          
       mPlanilha.Cells[4,03] := 'PROCESSO';
       mPlanilha.Cells[4,04] := tNota.FieldByName('Processo').AsString;

       mPlanilha.Range['A5','G5'].Interior.Color      := clNavy;
       mPlanilha.Range['A5','G5'].Font.Bold           := true;
       mPlanilha.Range['A5','F5'].Mergecells          := True;
       mPlanilha.Range['A5','G5'].HorizontalAlignment := 3;
       mPlanilha.Range['A5','G5'].Interior.Pattern    := 1;
       mPlanilha.Range['A5','G5'].Font.Bold           := true;
       mPlanilha.Range['A5','G5'].Font.Color          := clWhite;
       mPlanilha.Range['A5','G5'].Borders.LineStyle   := 1; //xlContinuous;
       mPlanilha.Range['A5','G5'].Borders.Weight      := 2; //xlThin;
       mPlanilha.Range['A5','G5'].Borders.Color       := RGB(0,0,0);

       mPlanilha.Cells[5,1] := 'DESCRIÇÃO';
       mPlanilha.Cells[5,7] := 'VALOR';
       mPlanilha.Range['A5','F5'].Mergecells := True;

       mLinha := 6;

       mPlanilha.Cells[mLinha,01] := 'FOB (DI)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('FOB').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A6','F6'].Mergecells   := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'SEGURO (DI)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('SeguroProc').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A7','F7'].Mergecells   := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'FRETE (DI)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('FreteProc').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A8','F8'].Mergecells   := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'ANTI DUPMPING';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Dumping').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A9','F9'].Mergecells   := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'PIS (ENTRADA)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_PISEnt').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A10','F10'].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'COFINS (ENTRADA)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_COFINSEnt').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A11','F11'].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'CUSTOS (NF)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Custo').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A12','F12'].Mergecells := True;

       mPlanilha.Range['A6','G12'].Interior.Color    := $00EBEBEB;
       mPlanilha.Range['A6','G12'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A6','G12'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A6','G12'].Borders.Color     := RGB(0,0,0);

       Inc(mLinha);

       While not tDespesas.Eof do begin
             mPlanilha.Cells[mLinha,02] := '•  '+ tDespesas.FieldByName('Classificacao').AsString + '        '+tDespesas.FieldByName('Descricao').AsString;
             mPlanilha.Cells[mLinha,07] := tDespesas.FieldByName('Valor_Nota').value;
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
             Inc(mLinha);
             tDespesas.Next;
       End;

       mLinhaAnt := mLinha;
       mPlanilha.Cells[mLinha,01] := 'IMPOSTO DE IMPORTAÇÃO (DI)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('II').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'TOTAL (FOB + Frete + Seguro + Dumping + Custo + II)';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('CIF').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'FATOR = (100 - ('+FormatFloat('0.00', tNota.FieldByName('Lucro').AsFloat)+' + '+FormatFloat('0.00', tNota.FieldByName('Aliquota_ICMS').AsFloat)+' + '+
                                     FormatFloat('0.00', tNota.FieldByName('Aliquota_PIS').AsFloat)+' + '+FormatFloat('0.00', tNota.FieldByName('Aliquota_COFINS').AsFloat)+ ' + '+
                                     FormatFloat('0.00', tNota.FieldByName('Aliquota_IRPJ').AsFloat)+' + '+FormatFloat('0.00', tNota.FieldByName('Aliquota_CSLL').AsFloat)+')) / 100';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Fator').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,0000_);(#.##0,0000)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;

       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Interior.Color    := $00EBEBEB;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
       Inc(mLinha);

       mPlanilha.Cells[mLinha,02] := '•  PERCENTUAL DA MARGEM DE LUCRO';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Lucro').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);

       mPlanilha.Cells[mLinha,02] := '•  ALÍQUOTA DO ICMS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Aliquota_ICMS').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := '•  ALÍQUOTA DO PIS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Aliquota_PIS').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := '•  ALÍQUOTA DA COFINS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Aliquota_COFINS').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := '•  ALÍQUOTA DO IRPJ';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Aliquota_IRPJ').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := '•  ALÍQUOTA DA CSLL';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Aliquota_CSLL').AsFloat;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);

       mLinhaAnt := mLinha;
       mPlanilha.Cells[mLinha,01] := 'TOTAL DOS PRODUTOS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Produtos').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'ICMS OPERACIONAL';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('ICMSOP').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'ICMS SUBSTITUTIVO';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('ICMSST').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'IPI';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('IPI').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'PIS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_PIS').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'COFINS';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_COFINS').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'IRPJ';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_IRPJ').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);
       mPlanilha.Cells[mLinha,01] := 'CSLL';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Valor_CSLL').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);

       mPlanilha.Cells[mLinha,01] := 'LUCRO ('+FormatFloat(',##0.00', tNota.FieldByName('Fator_Lucro').AsFloat)+'% )';
       //mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Lucro_ValorPerc').value;
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Produtos').value * (tNota.FieldByName('Lucro').value/100);
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;
       Inc(mLinha);

       mPlanilha.Cells[mLinha,01] := 'FATURAMENTO';
       mPlanilha.Cells[mLinha,07] := tNota.FieldByName('Total_Nota').value;
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Range['A'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells := True;

       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Interior.Color    := $00EBEBEB;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A'+InttoStr(mLinhaAnt),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
       Inc(mLinha,2);

       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Interior.Color      := clNavy;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Font.Bold           := true;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Mergecells          := true;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].HorizontalAlignment := 3;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Interior.Pattern    := 1;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Font.Color          := clWhite;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Borders.LineStyle   := 1; //xlContinuous;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Borders.Weight      := 2; //xlThin;
       mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Borders.Color       := RGB(0,0,0);

       mPlanilha.Cells[mLinha,2] := 'TOTALIZADORES DA NOTA FISCAL';
       Inc(mLinha);

       mLinhaAnt := mLinha;
       mPlanilha.Cells[mLinha,02] := 'BASE DE CÁLCULO DO ICMS';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('BCICMSOp').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR DO ICMS';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('ICMSOp').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'BASE DE CÁLCULO DO ICMS SUBSTITUTIVO';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('BCICMSST').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR DO ICMS SUBSTITUTIVO';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('ICMSST').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR TOTAL DOS PRODUTOS';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('Produtos_NF').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR DO FRETE';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('FreteNF').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR DO SEGURO';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('SeguroNF').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'DESCONTO';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('Desconto').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'OUTRAS DESPESAS ACESSÓRIAS';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('Custo').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR DO IPI';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('IPI').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       Inc(mLinha);
       mPlanilha.Cells[mLinha,02] := 'VALOR TOTAL DA NOTA';
       mPlanilha.Cells[mLinha,03] := tNota.FieldByName('Total_NF').AsFloat;
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';

       mPlanilha.Range['B'+InttoStr(mLinhaAnt),'C'+InttoStr(mLinha)].Interior.Color      := $00F0F0FF;
       mPlanilha.Range['B'+InttoStr(mLinhaAnt),'C'+InttoStr(mLinha)].Font.Color          := clBlack;
       mPlanilha.Range['B'+InttoStr(mLinhaAnt),'C'+InttoStr(mLinha)].Borders.LineStyle   := 2; //xlContinuous;
       mPlanilha.Range['B'+InttoStr(mLinhaAnt),'C'+InttoStr(mLinha)].Borders.Weight      := 2; //xlThin;
       mPlanilha.Range['B'+InttoStr(mLinhaAnt),'C'+InttoStr(mLinha)].Borders.Color       := RGB(0,0,0);

       //Fecha o Excel
       If Funcoes.Cancelado = true then begin
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       //mPlanilha.Columns.Autofit;

       If Dados.EmpresasMatriz_Filial.AsBoolean = true then
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' MATRIZ ('+ Dados.EmpresasEstado.AsString+')'
       else
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' FILIAL ' + Dados.EmpresasNumero_Filial.AsString +' (' + Dados.EmpresasEstado.AsString+')';

       if cTipoNota.ItemIndex = 0 then begin
          mPlanilha.Cells[2,01] := 'Composição da Nota Fiscal de Entrada';
       end else begin
          mPlanilha.Cells[2,01] := 'Composição da Nota Fiscal de Saída';
       end;

       mPlanilha.Range['A1','A1'].Font.Size         := 14;
       mPlanilha.Range['A1','A1'].Font.Bold         := true;
       mPlanilha.Range['A2','A2'].Font.Size         := 12;
       mPlanilha.Range['A2','A2'].Font.Bold         := true;

       mPlanilha.Range['A1','G1'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','G1'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','G1'].Mergecells          := True;
       mPlanilha.Range['A2','G2'].Mergecells          := True;
       mPlanilha.Range['A2','G2'].HorizontalAlignment := 3;
       mPlanilha.Range['A2','G2'].VerticalAlignment   := 2;

       mPlanilha.Visible := true;
       Screen.Cursor := crDefault;
end;


end.
