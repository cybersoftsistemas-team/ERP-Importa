unit frmImpressao_Faturamento_DetalhamentoItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RxLookup, Vcl.StdCtrls, Vcl.ExtCtrls, Mask, RXCtrls, Buttons,
  ComObj, Funcoes, IniFiles, raCodMod, RxCurrEdit, RxToolEdit, MemDS, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppModule, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  System.Maskutils;

type
  TImpressao_Faturamento_DetalhamentoItens = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cNatureza: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cProcesso: TRxDBLookupCombo;
    StaticText4: TStaticText;
    rDetalhamento: TppReport;
    ppParameterList1: TppParameterList;
    pEmpresas: TppDBPipeline;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    StaticText5: TStaticText;
    cNota: TCurrencyEdit;
    StaticText6: TStaticText;
    cProduto: TCurrencyEdit;
    cTipo: TRadioGroup;
    cZebrado: TCheckBox;
    cExcel: TCheckBox;
    cCliente: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    StaticText8: TStaticText;
    cCanceladas: TCheckBox;
    cDescricao: TCheckBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    StaticText9: TStaticText;
    cNCM: TMemo;
    cFinanceiro: TCheckBox;
    cEmissor: TRadioGroup;
    cPISCOF: TCheckBox;
    ppHeaderBand1: TppHeaderBand;
    ppShape13: TppShape;
    ppShape15: TppShape;
    ppShape4: TppShape;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    ppShape11: TppShape;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppShape7: TppShape;
    ppLabel6: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppShape14: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape5: TppShape;
    ppLabel4: TppLabel;
    ppShape16: TppShape;
    ppLabel17: TppLabel;
    ppShape12: TppShape;
    ppLabel12: TppLabel;
    ppShape17: TppShape;
    ppLabel18: TppLabel;
    ppShape18: TppShape;
    ppLabel19: TppLabel;
    ppShape19: TppShape;
    ppLabel21: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    iLogo: TppImage;
    ppDBText8: TppDBText;
    ppDetailBand1: TppDetailBand;
    lFaixa: TppShape;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppPageSummaryBand1: TppPageSummaryBand;
    ppLabel23: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape20: TppShape;
    ppDBText18: TppDBText;
    ppLabel16: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape25: TppShape;
    ppDBText28: TppDBText;
    ppLabel26: TppLabel;
    ppDBText29: TppDBText;
    ppShape26: TppShape;
    ppLabel28: TppLabel;
    ppDBText30: TppDBText;
    ppShape27: TppShape;
    ppLabel29: TppLabel;
    ppDBText31: TppDBText;
    ppLabel22: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel20: TppLabel;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    cTipoNota: TRxDBLookupCombo;
    StaticText10: TStaticText;
    procedure bImprimirClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure rDetalhamentoBeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportaEXCEL;
    procedure cTipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_DetalhamentoItens: TImpressao_Faturamento_DetalhamentoItens;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_DetalhamentoItens.bImprimirClick(Sender: TObject);
var
   mNCM:widestring;
begin
      Screen.Cursor := crSQLWait;
      tItens.SQL.Clear;
      if cEmissor.ItemIndex <> 1 then begin
         tItens.SQL.Add('----------------------------------------> NOTAS FISCAIS DE EMISSÃO PRÓPRIA <-----------------------------------------');
         tItens.SQL.Add('SELECT Nota');
         tItens.SQL.Add('      ,Data');
         tItens.SQL.Add('      ,Item');
         tItens.SQL.Add('      ,Processo');
         tItens.SQL.Add('      ,DI');
         tItens.SQL.Add('      ,Codigo_Mercadoria');
         tItens.SQL.Add('      ,Codigo_Fabricante');
         tItens.SQL.Add('      ,Descricao_Mercadoria = replace(cast(Descricao_Mercadoria as varchar(500)), ''<{''+rtrim(cast(Codigo_Mercadoria as varchar(10)))+''}>'', '''')');
         tItens.SQL.Add('      ,NCM');
         tItens.SQL.Add('      ,Unidade_Medida');
         tItens.SQL.Add('      ,Quantidade');
         tItens.SQL.Add('      ,Disponivel');
         tItens.SQL.Add('      ,Valor_Unitario');
         tItens.SQL.Add('      ,Unitario_Final = CASE WHEN NI.Quantidade > 0 THEN');
         tItens.SQL.Add('                            (SELECT Valor_TotalNota FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data AND NF.Saida_Entrada = NI.Saida_Entrada) / NI.Quantidade');
         tItens.SQL.Add('                        ELSE');
         tItens.SQL.Add('                            (SELECT Valor_TotalNota  FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data AND NF.Saida_Entrada = NI.Saida_Entrada)');
         tItens.SQL.Add('                        END');
         tItens.SQL.Add('      ,Valor_Total');
         tItens.SQL.Add('      ,CSTIPI');
         tItens.SQL.Add('      ,Aliquota_IPI');
         tItens.SQL.Add('      ,Valor_IPI');
         tItens.SQL.Add('      ,TOTAL_IPI');
         tItens.SQL.Add('      ,CSTICMS = CodigoTrib_TabA+CodigoTrib_TabB');
         tItens.SQL.Add('      ,Aliquota_ICMSOper');
         tItens.SQL.Add('      ,Valor_ICMSOper');
         tItens.SQL.Add('      ,Aliquota_ICMSSub');
         tItens.SQL.Add('      ,Valor_ICMSSub');
         tItens.SQL.Add('      ,Adicao');
         tItens.SQL.Add('      ,Aliquota_II');
         tItens.SQL.Add('      ,Valor_II');
         tItens.SQL.Add('      ,Aliquota_MVA');
         tItens.SQL.Add('      ,Valor_MVA');
         tItens.SQL.Add('      ,Valor_Frete');
         tItens.SQL.Add('      ,Valor_Seguro');
         tItens.SQL.Add('      ,Valor_DespesasOutros');
         tItens.SQL.Add('      ,CSTPIS');
         tItens.SQL.Add('      ,Aliquota_PIS');
         tItens.SQL.Add('      ,Aliquota_PISRed');
         tItens.SQL.Add('      ,Valor_PIS');
         tItens.SQL.Add('      ,CSTCOFINS');
         tItens.SQL.Add('      ,Aliquota_COFINS');
         tItens.SQL.Add('      ,Aliquota_COFINSRed');
         tItens.SQL.Add('      ,Valor_COFINS');
         tItens.SQL.Add('      ,Movimenta_Estoque');
         tItens.SQL.Add('      ,Movimenta_Inventario');
         tItens.SQL.Add('      ,Sequencia');
         tItens.SQL.Add('      ,Destinatario_Nome   = (SELECT Destinatario_Nome     FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data AND NF.Saida_Entrada = NI.Saida_Entrada)');
         tItens.SQL.Add('      ,Destinatario_Estado = (SELECT Destinatario_Estado   FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data AND NF.Saida_Entrada = NI.Saida_Entrada)');
         tItens.SQL.Add('      ,Destinatario_CNPJ   = (SELECT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data AND NF.Saida_Entrada = NI.Saida_Entrada)');
         tItens.SQL.Add('      ,Valor_TotalNota     = (SELECT Valor_TotalNota       FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data AND NF.Saida_Entrada = NI.Saida_Entrada)');
         tItens.SQL.Add('      ,Lucro');
         tItens.SQL.Add('      ,Lucro_Valor');
         tItens.SQL.Add('      ,CFOP = Natureza_Codigo');
         tItens.SQL.Add('      ,Emissor = ''P'' ');
         tItens.SQL.Add('      ,Valor_Inventario = CASE WHEN NI.Saida_Entrada = 0 THEN NI.Valor_Inventario ELSE (SELECT Unitario_Saida FROM FichaInventario FI WHERE FI.Codigo = Codigo_Mercadoria AND FI.Nota = NI.Nota AND FI.Data = NI.Data) END');
         tItens.SQL.Add('      ,Cancelada = iif(isnull(Cancelada, 0) = 1, ''CANCELADA'', '''')');
         tItens.SQL.Add('      ,Operacao = (select Descricao from TipoNota where Codigo = Tipo_Nota)');
         tItens.SQL.Add('FROM NotasItens NI');
         tItens.SQL.Add('WHERE  (Nota IS NOT NULL)');
         If cCanceladas.Checked then begin
            tItens.SQL.Add('  AND (NI.Cancelada <> 1)');
            tItens.SQL.Add('  AND (NI.Nfe_Denegada <> 1)');
         End;
         If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
            tItens.SQL.Add('  AND (NI.Data BETWEEN :pDataIni AND :pDataFim)');
            tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
            tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
            lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a ' + cDataFim.Text ;
         End;
         If Trim(cCliente.Text) <> '' then begin
            tItens.SQL.Add('  AND (SELECT Cliente_Codigo FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data) = :pCliente');
            tItens.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
            lPeriodo.Caption := lPeriodo.Caption + '  Cliente: '+Dados.ClientesNome.AsString;
         End;
         If Trim(cFornecedor.Text) <> '' then begin
            tItens.SQL.Add('  AND (SELECT Fornecedor_Codigo FROM NotasFiscais NF WHERE NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data) = :pFornecedor)');
            tItens.ParamByName('pFornecedor').AsInteger := Dados.FornecedoresCodigo.AsInteger;
            lPeriodo.Caption := lPeriodo.Caption + '  Fornecedor: '+Dados.FornecedoresNome.AsString;
         End;
         If cNatureza.Text <> '' then begin
            tItens.SQL.Add('AND (Natureza_Codigo = :pNatureza) ');
            tItens.ParamByName('pNatureza').AsString := Dados.NaturezaCodigo.AsString;
            lPeriodo.Caption := lPeriodo.Caption + '  Natureza: '+Dados.NaturezaCodigo.AsString;
         End;
         If cProcesso.Text <> '' then begin
            tItens.SQL.Add('AND (NotasItens.Processo = :pProcesso)');
            tItens.ParamByName('pProcesso').AsString := Dados.ProcessosDOCProcesso.AsString;
            lPeriodo.Caption := lPeriodo.Caption + '  Processo: '+cProcesso.Text;
         End;
         If cNota.Value > 0 then begin
            tItens.SQL.Add('AND (Nota = :pNota)');
            tItens.ParamByName('pNota').AsInteger := cNota.AsInteger;
            lPeriodo.Caption := lPeriodo.Caption + '  Nota: '+cNota.Text;
         End;
         If cProduto.Value > 0 then begin
            tItens.SQL.Add('AND (Codigo_Mercadoria = :pProduto)');
            tItens.ParamByName('pProduto').AsInteger :=cProduto.AsInteger;
            lPeriodo.Caption := lPeriodo.Caption + '  Produto: '+cProduto.Text;
         End;
         If cTipo.ItemIndex < 2 then begin
            tItens.SQL.Add('AND (NI.Saida_Entrada = :pTipo)');
            tItens.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
            If cTipo.ItemIndex = 0 then
               lPeriodo.Caption := lPeriodo.Caption + '  (Entradas)'
            else
               lPeriodo.Caption := lPeriodo.Caption + '  (Saídas)';
         End;
         If cFinanceiro.Checked then begin
            tItens.SQL.Add('AND (SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = NI.Tipo_Nota)) = 1');
         End;
         If cPISCOF.Checked then begin
            tItens.SQL.Add('AND Apuracao_PISCOFINS = 1');
         End;
         If Trim(cTipoNota.Text) <> '' then begin
            tItens.SQL.Add('AND Tipo_Nota = :pTipoNota');
            tItens.ParamByName('pTipoNota').AsInteger := Dados.TipoNotaCodigo.AsInteger;
            lPeriodo.Caption := lPeriodo.Caption + '  TipoNota: '+Dados.TipoNotaDescricao.AsString;
         End;
      end;
      if cTipo.ItemIndex <> 1 then begin
         if cEmissor.ItemIndex <> 1 then begin
            tItens.SQL.Add('UNION ALL');
         end;
         tItens.SQL.Add('----------------------------------------> NOTAS FISCAIS DE TERCEIROS <-----------------------------------------');
         tItens.SQL.Add('SELECT Nota');
         tItens.SQL.Add('      ,Data_Entrada');
         tItens.SQL.Add('      ,Item');
         tItens.SQL.Add('      ,Processo');
         tItens.SQL.Add('      ,DI');
         tItens.SQL.Add('      ,Codigo_Mercadoria');
         tItens.SQL.Add('      ,Codigo_Fabricante = null');
         tItens.SQL.Add('      ,Descricao_Mercadoria = replace(cast(Descricao_Mercadoria as varchar(500)), ''<{''+rtrim(cast(Codigo_Mercadoria as varchar(10)))+''}>'', '''')');
         tItens.SQL.Add('      ,NCM');
         tItens.SQL.Add('      ,Unidade_Medida');
         tItens.SQL.Add('      ,Quantidade');
         tItens.SQL.Add('      ,Disponivel');
         tItens.SQL.Add('      ,Valor_Unitario');
         tItens.SQL.Add('      ,Unitario_Final = 0');
         tItens.SQL.Add('      ,Valor_Liquido');
         tItens.SQL.Add('      ,CST_IPI');
         tItens.SQL.Add('      ,Aliquota_IPI');
         tItens.SQL.Add('      ,Valor_IPI');
         tItens.SQL.Add('      ,Valor_IPI');
         tItens.SQL.Add('      ,CSTICMS = CodigoTrib_TabA+CodigoTrib_TabB');
         tItens.SQL.Add('      ,Aliquota_ICMSOper');
         tItens.SQL.Add('      ,Valor_ICMSOper');
         tItens.SQL.Add('      ,Aliquota_ICMSSub');
         tItens.SQL.Add('      ,Valor_ICMSSub');
         tItens.SQL.Add('      ,Adicao');
         tItens.SQL.Add('      ,Aliquota_II = 0');
         tItens.SQL.Add('      ,Valor_II = 0');
         tItens.SQL.Add('      ,Aliquota_MVA');
         tItens.SQL.Add('      ,Valor_MVA = 0');
         tItens.SQL.Add('      ,Valor_Frete');
         tItens.SQL.Add('      ,Valor_Seguro = 0');
         tItens.SQL.Add('      ,Valor_DespesasOutros = 0');
         tItens.SQL.Add('      ,CST_PIS');
         tItens.SQL.Add('      ,Aliquota_PIS');
         tItens.SQL.Add('      ,Aliquota_PISRed = 0');
         tItens.SQL.Add('      ,Valor_PIS');
         tItens.SQL.Add('      ,CST_COFINS');
         tItens.SQL.Add('      ,Aliquota_COFINS');
         tItens.SQL.Add('      ,Aliquota_COFINSRed = 0');
         tItens.SQL.Add('      ,Valor_COFINS');
         tItens.SQL.Add('      ,Movimenta_Estoque');
         tItens.SQL.Add('      ,Movimenta_Inventario');
         tItens.SQL.Add('      ,Sequencia_SISCOMEX');
         tItens.SQL.Add('      ,Destinatario_Nome   = (SELECT Nome   FROM Fornecedores NF WHERE Codigo = NI.Fornecedor)');
         tItens.SQL.Add('      ,Destinatario_Estado = (SELECT Estado FROM Fornecedores NF WHERE Codigo = NI.Fornecedor)');
         tItens.SQL.Add('      ,Destinatario_Estado = (SELECT isnull(CNPJ,'''')+isnull(CPF,'''') FROM Fornecedores NF WHERE Codigo = NI.Fornecedor)');
         tItens.SQL.Add('      ,Valor_TotalNota     = (SELECT Valor_TotalNota FROM NotasTerceiros NF WHERE NF.Nota = NI.Nota AND NF.Data_Emissao = NI.Data_Emissao AND NF.Fornecedor = NI.Fornecedor)');
         tItens.SQL.Add('      ,Lucro = 0');
         tItens.SQL.Add('      ,Lucro_Valor = 0');
         tItens.SQL.Add('      ,CFOP = Natureza_Codigo');
         tItens.SQL.Add('      ,Emissor = ''T'' ');
         tItens.SQL.Add('      ,Valor_Inventario');
         tItens.SQL.Add('      ,Cancelada = '''' ');
         tItens.SQL.Add('      ,Operacao = (select Descricao from ReferenciasFiscais where Codigo = Referencia_Fiscal)');
         tItens.SQL.Add('FROM NotasTerceirosItens NI');
         tItens.SQL.Add('WHERE  (Nota IS NOT NULL)');

         If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
            tItens.SQL.Add('  AND (Data_Entrada BETWEEN :pDataIni AND :pDataFim)');
            tItens.ParamByName('pDataIni').AsDate := cDataIni.Date;
            tItens.ParamByName('pDataFim').AsDate := cDataFim.Date;
         End;
         If Trim(cFornecedor.Text) <> '' then begin
            tItens.SQL.Add('  AND (Fornecedor = :pFornecedor)');
            tItens.ParamByName('pFornecedor').AsInteger := Dados.FornecedoresCodigo.AsInteger;
         End;
         If cNatureza.Text <> '' then begin
            tItens.SQL.Add('AND (Natureza_Codigo = :pNatureza) ');
            tItens.ParamByName('pNatureza').AsString := Dados.NaturezaCodigo.AsString;
         End;
         If cProcesso.Text <> '' then begin
            tItens.SQL.Add('AND (NI.Processo = :pProcesso)');
            tItens.ParamByName('pProcesso').AsString := Dados.ProcessosDOCProcesso.AsString;
         End;
         If cNota.Value > 0 then begin
            tItens.SQL.Add('AND (NI.Nota = :pNota)');
            tItens.ParamByName('pNota').AsInteger := cNota.AsInteger;
         End;
         If cProduto.Value > 0 then begin
            tItens.SQL.Add('AND (Codigo_Mercadoria = :pProduto)');
            tItens.ParamByName('pProduto').AsInteger := cProduto.AsInteger;
         End;
         If cPISCOF.Checked then begin
            tItens.SQL.Add(' AND Apuracao_PISCOFINS = 1');
         End;
      end;
      if Trim(cNCM.Text) <> '' then begin
         mNCM := RemoveCaracter(#13, '', cNCM.Lines.Text);
         mNCM := RemoveCaracter(' ', ',', mNCM);
         tItens.SQL.Add('AND CAST(NCM AS INT) IN('+mNCM+')');
         tItens.SQL.Add('ORDER BY NCM, Nota, Codigo_Mercadoria');
      end else begin
         tItens.SQL.Add('ORDER BY Nota, NCM, Codigo_Mercadoria');
      end;
      //tItens.SQL.SavetoFile('c:\temp\Detalhamento_Itens.SQL');
      tItens.Open;

      lFaixa.Visible := cZebrado.Checked;

      if cEmissor.ItemIndex = 0 then lTitulo.Caption := 'Detalhamento dos itens da nota fiscal (Notas Próprias)';
      if cEmissor.ItemIndex = 1 then lTitulo.Caption := 'Detalhamento dos itens da nota fiscal (Notas de Terceiros)';
      if cEmissor.ItemIndex = 2 then lTitulo.Caption := 'Detalhamento dos itens da nota fiscal (Notas Próprias/Terceiros)';

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rDetalhamento.Reset;
         rDetalhamento.Print;
         rDetalhamento.FreeOnRelease;
      end else begin
         ExportaEXCEL;
      End;
      
      Screen.Cursor := crDefault;
end;

procedure TImpressao_Faturamento_DetalhamentoItens.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Faturamento_DetalhamentoItens.FormClose(Sender: TObject; var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      aINI                 := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Tipo'         , cTipo.ItemIndex);
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'DataIni'      , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'DataFim'      , cDataFim.Date);

      If Trim(cCliente.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Cliente'   , cCliente.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Cliente'   , 0);

      If Trim(cFornecedor.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Fornecedor', cFornecedor.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Fornecedor', 0);

      If Trim(cTipoNota.Text) <> '' then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'TipoNota', cTipoNota.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'TipoNota', 0);

      If Trim(cNatureza.Text) <> '' then
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Natureza'  , cNatureza.KeyValue)
      else
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Natureza'  , '');

      If Trim(cProcesso.Text) <> '' then
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Processo'  , cProcesso.KeyValue)
      else
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Processo'  , '');

      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Nota'         , cNota.AsInteger);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Produto'      , cProduto.AsInteger);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Cancelada'    , cCanceladas.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Zebrado'      , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Excel'        , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Financeiro'   , cFinanceiro.Checked);
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'NCM'          , cNCM.Text);
      aINI.Free;

      Impressao_Faturamento_DetalhamentoItens.Release;
      Impressao_Faturamento_DetalhamentoItens := nil;
end;

procedure TImpressao_Faturamento_DetalhamentoItens.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = true then lFaixa.Visible := not lFaixa.Visible;
end;

procedure TImpressao_Faturamento_DetalhamentoItens.rDetalhamentoBeforePrint(Sender: TObject);
begin
//      lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a ' + cDataFim.Text ;
end;

procedure TImpressao_Faturamento_DetalhamentoItens.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza ORDER BY Codigo');
           Natureza.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE (Tipo = ''IMPORTAÇÃO'') ORDER BY Processo');
           ProcessosDOC.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos');
           Produtos.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;
           
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           with TipoNota do Begin
                sql.Clear;
                sql.Add('select *');
                sql.add('from TipoNota');
                sql.add('where Ativo = 1');
                sql.Add('and Codigo in(select distinct Tipo_Nota from NotasFiscais)');
                if cTipo.ItemIndex = 0 then begin
                   sql.Add('and Saida_Entrada = 0');
                end;
                if cTipo.ItemIndex = 1 then begin
                   sql.Add('and Saida_Entrada = 1');
                end;
                sql.Add('order by Descricao');
                open;
           end;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                 := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date        := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'DataIni'      , 0);
      cDataFim.Date        := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'DataFim'      , 0);
      cTipo.ItemIndex      := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Tipo'         , 2);
      cCliente.KeyValue    := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Cliente'      , 0);
      cFornecedor.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Fornecedor'   , 0);
      cTipoNota.KeyValue   := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'TipoNota'     , 0);
      cNatureza.KeyValue   := aINI.ReadString ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Natureza'     , '');
      cProcesso.KeyValue   := aINI.ReadString ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Processo'     , '');
      cNota.Value          := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Nota'         , 0);
      cProduto.Value       := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Produto'      , 0);
      cZebrado.Checked     := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Zebrado'      , false);
      cExcel.Checked       := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Excel'        , false);
      cCanceladas.Checked  := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Cancelada'    , true);
      cFinanceiro.Checked  := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'Financeiro'   , false);
      cNCM.Text            := aINI.ReadString ('IMPRESSAO_FATURAMENTO_DETALHE_NOTA', 'NCM'          , '');
      aINI.Free;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_Faturamento_DetalhamentoItens.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

// Envia informações para o excel.
procedure TImpressao_Faturamento_DetalhamentoItens.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
   mNota    : Integer;
   mZebra   : Boolean;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tItens.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');

      mPlanilha.WorkBooks.add(1);

      mPlanilha.Visible := false;
      mPlanilha.Range['A3','AX3'].Interior.Color    := RGB(255, 255, 140);
      mPlanilha.Range['A3','AX3'].Interior.Pattern  := 1;
      mPlanilha.Range['A3','AX3'].Font.Bold         := true;
      mPlanilha.Range['A3','AX3'].Font.Color        := clBlack;
      mPlanilha.Range['A3','AX3'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A3','AX3'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['A3','AX3'].Borders.Color     := RGB(0,0,0);

      mPlanilha.Cells[3,01] := 'NOTA';
      mPlanilha.Cells[3,02] := 'DATA';
      mPlanilha.Cells[3,03] := 'ITEM';
      mPlanilha.Cells[3,04] := 'PROCESSO';
      mPlanilha.Cells[3,05] := 'DI';
      mPlanilha.Cells[3,06] := 'CODIGO MERCADORIA';
      mPlanilha.Cells[3,07] := 'CODIGO FABRICANTE';
      mPlanilha.Cells[3,08] := 'DESCRIÇÃO';
      mPlanilha.Cells[3,09] := 'NCM';
      mPlanilha.Cells[3,10] := 'UM';
      mPlanilha.Cells[3,11] := 'QUANTIDADE';
      mPlanilha.Cells[3,12] := 'DISPONÍVEL';
      mPlanilha.Cells[3,13] := 'VLR INVENTARIO';
      mPlanilha.Cells[3,14] := 'VLR UNITÁRIO';
      mPlanilha.Cells[3,15] := 'VLR TOTAL';
      mPlanilha.Cells[3,16] := 'CST IPI';
      mPlanilha.Cells[3,17] := 'ALÍQ.IPI';
      mPlanilha.Cells[3,18] := 'VLR IPI';
      mPlanilha.Cells[3,19] := 'TOTAL IPI';
      mPlanilha.Cells[3,20] := 'CST ICMS';
      mPlanilha.Cells[3,21] := 'ALIQ ICMS';
      mPlanilha.Cells[3,22] := 'VLR ICMS';
      mPlanilha.Cells[3,23] := 'ALIQ ICMS ST';
      mPlanilha.Cells[3,24] := 'VLR ICMS ST';
      mPlanilha.Cells[3,25] := 'ADIÇÃO';
      mPlanilha.Cells[3,26] := 'ALIQ.II';
      mPlanilha.Cells[3,27] := 'VLR II';
      mPlanilha.Cells[3,28] := 'ALIQ MVA';
      mPlanilha.Cells[3,29] := 'VLR MVA';
      mPlanilha.Cells[3,30] := 'VLR FRETE';
      mPlanilha.Cells[3,31] := 'VLR SEGURO';
      mPlanilha.Cells[3,32] := 'VLR DESPESA';
      mPlanilha.Cells[3,33] := 'CST PIS';
      mPlanilha.Cells[3,34] := 'ALIQ PIS';
      mPlanilha.Cells[3,35] := 'VLR PIS';
      mPlanilha.Cells[3,36] := 'CST COFINS';
      mPlanilha.Cells[3,37] := 'ALIQ COFINS';
      mPlanilha.Cells[3,38] := 'VLR COFINS';
      mPlanilha.Cells[3,39] := 'INVENTARIO';
      mPlanilha.Cells[3,40] := 'ESTOQUE';
      mPlanilha.Cells[3,41] := 'SEQ';
      mPlanilha.Cells[3,42] := 'DESTINATARIO';
      mPlanilha.Cells[3,43] := 'ESTADO';
      mPlanilha.Cells[3,44] := 'CNPJ';
      mPlanilha.Cells[3,45] := 'VLR.UNIT.FINAL';
      mPlanilha.Cells[3,46] := '% LUCRO';
      mPlanilha.Cells[3,47] := 'VLR LUCRO';
      mPlanilha.Cells[3,48] := 'CFOP';
      mPlanilha.Cells[3,49] := 'SITUAÇÃO';
      mPlanilha.Cells[3,50] := 'OPERAÇÂO';

      mPlanilha.Range['A3','AX3'].HorizontalAlignment := 3;
      mPlanilha.Range['A3','AX3'].VerticalAlignment   := 2;
      mPlanilha.Range['A3','AX3'].Font.Size           := 8;

      mLinha := 4;
      mNota  := tItens.FieldByName('Nota').AsInteger;
      mZebra := false;

      While (not tItens.Eof) and (not Funcoes.Cancelado) do  Begin
            mPlanilha.Range['A'+InttoStr(mLinha),'AX3'+InttoStr(mLinha)].Font.Size         := 8;
            mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].VerticalAlignment   := 1;
            mPlanilha.Range['I'+InttoStr(mLinha),'AX3'+InttoStr(mLinha)].VerticalAlignment := 3;
            mPlanilha.Range['H'+InttoStr(mLinha),'H'+InttoStr(mLinha)].ColumnWidth         := 60;
            mPlanilha.Range['H'+InttoStr(mLinha),'H'+InttoStr(mLinha)].WrapText            := cDescricao.Checked;

            mPlanilha.Cells[mLinha,01] := tItens.FieldByName('Nota').AsString;
            mPlanilha.Cells[mLinha,02] := tItens.FieldByName('Data').Value;
            mPlanilha.Cells[mLinha,03] := tItens.FieldByName('Item').AsInteger;
            mPlanilha.Cells[mLinha,04] := tItens.FieldByName('Processo').AsString;
            mPlanilha.Cells[mLinha,05] := tItens.FieldByName('DI').AsString;
            mPlanilha.Cells[mLinha,06] := tItens.FieldByName('Codigo_Mercadoria').AsString;
            mPlanilha.Cells[mLinha,07] := tItens.FieldByName('Codigo_Fabricante').AsString;
            mPlanilha.Cells[mLinha,08] := tItens.FieldByName('Descricao_Mercadoria').AsString;
            mPlanilha.Cells[mLinha,09] := tItens.FieldByName('NCM').AsString;
            mPlanilha.Cells[mLinha,10] := tItens.FieldByName('Unidade_Medida').AsString;
            mPlanilha.Cells[mLinha,11] := tItens.FieldByName('Quantidade').AsFloat;
            mPlanilha.Cells[mLinha,12] := tItens.FieldByName('Disponivel').AsFloat;
            mPlanilha.Cells[mLinha,13] := tItens.FieldByName('Valor_Inventario').AsFloat;
            mPlanilha.Cells[mLinha,14] := tItens.FieldByName('Valor_Unitario').AsFloat;
            mPlanilha.Cells[mLinha,15] := tItens.FieldByName('Valor_Total').AsFloat;
            mPlanilha.Cells[mLinha,16] := tItens.FieldByName('CSTIPI').AsString;
            mPlanilha.Cells[mLinha,17] := tItens.FieldByName('Aliquota_IPI').AsFloat;
            mPlanilha.Cells[mLinha,18] := tItens.FieldByName('Valor_IPI').AsFloat;
            mPlanilha.Cells[mLinha,19] := tItens.FieldByName('Total_IPI').AsFloat;
            mPlanilha.Cells[mLinha,20] := tItens.FieldByName('CSTICMS').AsString;
            mPlanilha.Cells[mLinha,21] := tItens.FieldByName('Aliquota_ICMSOper').AsFloat;
            mPlanilha.Cells[mLinha,22] := tItens.FieldByName('Valor_ICMSOper').AsFloat;
            mPlanilha.Cells[mLinha,23] := tItens.FieldByName('Aliquota_ICMSSub').AsFloat;
            mPlanilha.Cells[mLinha,24] := tItens.FieldByName('Valor_ICMSSub').AsFloat;
            mPlanilha.Cells[mLinha,25] := tItens.FieldByName('Adicao').Asinteger;
            mPlanilha.Cells[mLinha,26] := tItens.FieldByName('Aliquota_II').AsFloat;
            mPlanilha.Cells[mLinha,27] := tItens.FieldByName('Valor_II').AsFloat;
            mPlanilha.Cells[mLinha,28] := tItens.FieldByName('Aliquota_MVA').AsFloat;
            mPlanilha.Cells[mLinha,29] := tItens.FieldByName('Valor_MVA').AsFloat;
            mPlanilha.Cells[mLinha,30] := tItens.FieldByName('Valor_Frete').AsFloat;
            mPlanilha.Cells[mLinha,31] := tItens.FieldByName('Valor_Seguro').AsFloat;
            mPlanilha.Cells[mLinha,32] := tItens.FieldByName('Valor_DespesasOutros').AsFloat;
            mPlanilha.Cells[mLinha,33] := tItens.FieldByName('CSTPIS').AsString;

            If tItens.FieldByName('Aliquota_PISRed').AsFloat = 0 then
               mPlanilha.Cells[mLinha,34] := tItens.FieldByName('Aliquota_PIS').AsFloat
            else
               mPlanilha.Cells[mLinha,34] := tItens.FieldByName('Aliquota_PISRed').AsFloat;

            mPlanilha.Cells[mLinha,35] := tItens.FieldByName('Valor_PIS').AsFloat;
            mPlanilha.Cells[mLinha,36] := tItens.FieldByName('CSTCOFINS').AsString;

            If tItens.FieldByName('Aliquota_COFINSRed').AsFloat = 0 then
               mPlanilha.Cells[mLinha,37] := tItens.FieldByName('Aliquota_COFINS').AsFloat
            else
               mPlanilha.Cells[mLinha,37] := tItens.FieldByName('Aliquota_COFINSRed').AsFloat;

            mPlanilha.Cells[mLinha,38] := tItens.FieldByName('Valor_COFINS').AsFloat;
            If tItens.FieldByName('Movimenta_Inventario').AsBoolean = true then
               mPlanilha.Cells[mLinha,39] := 'SIM'
            else
               mPlanilha.Cells[mLinha,39] := 'NÃO';
            If tItens.FieldByName('Movimenta_Estoque').AsBoolean = true then
               mPlanilha.Cells[mLinha,40] := 'SIM'
            else
               mPlanilha.Cells[mLinha,40] := 'NÃO';
            mPlanilha.Cells[mLinha,41] := tItens.FieldByName('Sequencia').Asinteger;
            mPlanilha.Cells[mLinha,42] := tItens.FieldByName('Destinatario_Nome').AsString;
            mPlanilha.Cells[mLinha,43] := tItens.FieldByName('Destinatario_Estado').AsString;
            mPlanilha.Cells[mLinha,44] := tItens.FieldByName('Unitario_Final').AsFloat;

            If tItens.FieldByName('Aliquota_PISRed').AsFloat = 0 then
               mPlanilha.Cells[mLinha,34] := tItens.FieldByName('Aliquota_PIS').AsFloat
            else
               mPlanilha.Cells[mLinha,34] := tItens.FieldByName('Aliquota_PISRed').AsFloat;

            mPlanilha.Cells[mLinha,35] := tItens.FieldByName('Valor_PIS').AsFloat;
            mPlanilha.Cells[mLinha,36] := tItens.FieldByName('CSTCOFINS').AsString;

            If tItens.FieldByName('Aliquota_COFINSRed').AsFloat = 0 then
               mPlanilha.Cells[mLinha,37] := tItens.FieldByName('Aliquota_COFINS').AsFloat
            else
               mPlanilha.Cells[mLinha,37] := tItens.FieldByName('Aliquota_COFINSRed').AsFloat;

            mPlanilha.Cells[mLinha,38] := tItens.FieldByName('Valor_COFINS').AsFloat;
            If tItens.FieldByName('Movimenta_Inventario').AsBoolean = true then
               mPlanilha.Cells[mLinha,39] := 'SIM'
            else
               mPlanilha.Cells[mLinha,39] := 'NÃO';
            If tItens.FieldByName('Movimenta_Estoque').AsBoolean = true then
               mPlanilha.Cells[mLinha,40] := 'SIM'
            else
               mPlanilha.Cells[mLinha,40] := 'NÃO';

            mPlanilha.Cells[mLinha,41] := tItens.FieldByName('Sequencia').Asinteger;
            mPlanilha.Cells[mLinha,42] := tItens.FieldByName('Destinatario_Nome').AsString;
            mPlanilha.Cells[mLinha,43] := tItens.FieldByName('Destinatario_Estado').AsString;
            mPlanilha.Cells[mLinha,44] := FormatMaskText('##.###.###/####-##;0', tItens.FieldByName('Destinatario_CNPJ').AsString);
            mPlanilha.Cells[mLinha,45] := tItens.FieldByName('Unitario_Final').AsFloat;
            mPlanilha.Cells[mLinha,46] := tItens.FieldByName('Lucro').AsFloat;
            mPlanilha.Cells[mLinha,47] := Percentual(tItens.FieldByName('Valor_Total').AsFloat, tItens.FieldByName('Lucro').AsFloat);
            mPlanilha.Cells[mLinha,48] := tItens.FieldByName('CFOP').AsString;
            mPlanilha.Cells[mLinha,49] := tItens.FieldByName('Cancelada').AsString;
            mPlanilha.Cells[mLinha,50] := tItens.FieldByName('Operacao').AsString;

            mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,000';
            mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,0000';
            mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,0000';
            mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,17].NumberFormat := '##0,00';
            mPlanilha.Cells[mLinha,18].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,19].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,21].NumberFormat := '##0,00';
            mPlanilha.Cells[mLinha,22].NumberFormat := '##0,00';
            mPlanilha.Cells[mLinha,23].NumberFormat := '##0,00';
            mPlanilha.Cells[mLinha,24].NumberFormat := '##0,00';
            mPlanilha.Cells[mLinha,26].NumberFormat := '##0,00';
            mPlanilha.Cells[mLinha,27].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,28].NumberFormat := '##0,00';
            mPlanilha.Cells[mLinha,29].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,30].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,31].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,32].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,34].NumberFormat := '##0,00';
            mPlanilha.Cells[mLinha,35].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,37].NumberFormat := '##0,00';
            mPlanilha.Cells[mLinha,38].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,45].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,46].NumberFormat := '##0,00';
            mPlanilha.Cells[mLinha,47].NumberFormat := '#.##0,00';

            If cZebrado.Checked = true then begin
               If mZebra = true then
                  mPlanilha.Range['A'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Interior.Color := clWhite
               else
                  mPlanilha.Range['A'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
            End;

            titens.Next;

            If (tItens.FieldByName('Nota').AsInteger <> mNota) or (tItens.Eof) then begin
               Inc(mLinha);
               mPlanilha.Range['AP'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Interior.Color    := clMoneyGreen;
               mPlanilha.Range['AP'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Interior.Pattern  := 1;
               mPlanilha.Range['AP'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Font.Bold         := true;
               mPlanilha.Range['AP'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Font.Color        := clBlack;
               mPlanilha.Range['AP'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
               mPlanilha.Range['AP'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
               mPlanilha.Range['AP'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

               mPlanilha.Cells[mLinha,43] := 'TOTAL DA NOTA FISCAL';
               mPlanilha.Cells[mLinha,45] := tItens.FieldByName('Valor_TotalNota').AsFloat;
               mPlanilha.Cells[mLinha,45].NumberFormat := '#.##0,00';
               mZebra := not mZebra;
               mNota  := tItens.FieldByName('Nota').AsInteger;
            End;

            mPlanilha.Range['A'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Borders.LineStyle := 1;
            mPlanilha.Range['A'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Borders.Weight    := 2;
            mPlanilha.Range['A'+InttoStr(mLinha),'AX'+InttoStr(mLinha)].Borders.Color     := clSilver;

            Inc(mLinha);
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      end;

      //Fecha o Excel.
      If Funcoes.Cancelado = true then begin
         Abort;
         mPlanilha.Free;
         mPlanilha.Destroy;
      End;

      mPlanilha.Columns.Autofit;
      mPlanilha.Range['H1','H1'].ColumnWidth := 60;
      mPlanilha.Rows.Autofit;

      mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
      mPlanilha.Range['A1','A1'].Font.Size            := 14;
      mPlanilha.Range['A1','A1'].Font.Bold            := true;
      mPlanilha.Range['A1','AU1'].HorizontalAlignment := 1;

      mPlanilha.Cells[2,01] := 'Detalhamento dos Itens das Notas Fiscais ('+cDataIni.Text+' á '+cDataFim.Text+')';
      mPlanilha.Range['A2','A2'].Font.Size  := 10;
      mPlanilha.Range['A2','AU2'].HorizontalAlignment := 1;

      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;

procedure TImpressao_Faturamento_DetalhamentoItens.cTipoClick(Sender: TObject);
begin
     If cTipo.ItemIndex = 0 then begin
        cCliente.Enabled    := false;
        cFornecedor.Enabled := true;
        cCliente.ClearValue;
     End;
     If cTipo.ItemIndex = 1 then begin
        cCliente.Enabled    := true;
        cFornecedor.Enabled := false;
        cFornecedor.ClearValue;
     End;
     If cTipo.ItemIndex = 2 then begin
        cFornecedor.Enabled := false;
        cCliente.Enabled    := false;
        cFornecedor.ClearValue;
        cCliente.ClearValue;
     End;   
     with Dados, TipoNota do Begin
          sql.Clear;
          sql.Add('select *');
          sql.add('from TipoNota');
          sql.add('where Ativo = 1');
          sql.Add('and Codigo in(select distinct Tipo_Nota from NotasFiscais)');
          if cTipo.ItemIndex = 0 then begin
             sql.Add('and Saida_Entrada = 0');
          end;
          if cTipo.ItemIndex = 1 then begin
             sql.Add('and Saida_Entrada = 1');
          end;
          sql.Add('order by Descricao');
          open;
     end;
end;

end.
