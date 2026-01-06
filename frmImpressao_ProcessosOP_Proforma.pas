unit frmImpressao_ProcessosOP_Proforma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, ppParameter,
  ppVar, ppBands, ppMemo, ppReport, ppSubRpt, ppCtrls, ppDBPipe,
  RXDBCtrl, DB, DBAccess, MSAccess, MaskUtils, Funcoes,
  Grids, DBGrids, MemDS, ppModule, raCodMod, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv;

type
  TImpressao_ProcessosOP_Proforma = class(TForm)
    pEmpresas: TppDBPipeline;
    pProformaItens: TppDBPipeline;
    pProforma: TppDBPipeline;
    rInvoice: TppReport;
    ppParameterList1: TppParameterList;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    Grade: TDBGrid;
    StaticText5: TStaticText;
    cPesquisa: TEdit;
    tProforma: TMSQuery;
    dstProforma: TDataSource;
    tProformaItens: TMSQuery;
    dstProformaItens: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lEndereco: TppLabel;
    lEndereco2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText5: TppDBText;
    iLogo: TppImage;
    ppDBText27: TppDBText;
    ppLabel29: TppLabel;
    ppLine32: TppLine;
    ppDBText7: TppDBText;
    ppLabel5: TppLabel;
    ppLabel1: TppLabel;
    ppDBText6: TppDBText;
    ppLine31: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText8: TppDBText;
    ppLine6: TppLine;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLine10: TppLine;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppDBMemo3: TppDBMemo;
    ppDBText14: TppDBText;
    ppLabel3: TppLabel;
    ppDBText17: TppDBText;
    ppDBText23: TppDBText;
    ppLine7: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape7: TppShape;
    ppLabel17: TppLabel;
    ppShape8: TppShape;
    ppLabel18: TppLabel;
    ppShape9: TppShape;
    ppLabel19: TppLabel;
    ppShape10: TppShape;
    ppLabel20: TppLabel;
    ppShape11: TppShape;
    ppLabel21: TppLabel;
    ppShape3: TppShape;
    ppLabel7: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine14: TppLine;
    ppDBText18: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText19: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    cUnitario: TppDBText;
    cTotal: TppDBText;
    ppDBText11: TppDBText;
    ppDBText15: TppDBText;
    ppLine2: TppLine;
    ppDBText16: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape5: TppShape;
    ppLine21: TppLine;
    ppLabel22: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBMemo2: TppDBMemo;
    ppLabel14: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBMemo1: TppDBMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rInvoiceBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_Proforma: TImpressao_ProcessosOP_Proforma;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Proforma.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_ProcessosOP_Proforma.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, nil, nil, nil);
     LimpaMemoria;
     Impressao_ProcessosOP_Proforma.Release;
     Impressao_ProcessosOP_Proforma := nil;
end;

procedure TImpressao_ProcessosOP_Proforma.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Proforma.bImprimirClick(Sender: TObject);
begin
      with Dados do begin
           with tProforma do begin
                sql.clear;
                sql.add('set language English');
                sql.add('select PD.Proforma_Numero');
                sql.add('      ,PD.Proforma_Data');
                sql.add('      ,PD.Processo');
                sql.add('      ,PD.Local_Embarque');
                sql.add('      ,Local_Desembarque = PD.Local_Desembarque+'' ,''+(select Nome_Ingles from Cybersoft_Cadastros.dbo.Paises where Codigo = PD.Pais)');
                sql.add('      ,PD.Navio_DataPrevista');
                sql.add('      ,PD.Navio_DataChegada');
                sql.add('      ,Importador_Nome  = (select Nome from Clientes where Codigo = PD.Cliente)');
                sql.add('      ,Importador_Ender = (select isnull(Rua, '''')+isnull('', Nº ''+Rua_Numero, '''')+'' - ''+Bairro from Clientes where Codigo = PD.Cliente)');
                sql.add('      ,Importador_Cida  = (select Municipio from Clientes where Codigo = PD.Cliente)');
                sql.add('      ,Importador_Pais  = (select Nome from Cybersoft_Cadastros.dbo.Paises where Codigo = PD.Pais)');
                sql.add('      ,Data_Extenso     = DateName(Month, PD.Proforma_Data) + ''-'' + convert(varchar(02),DatePart(day, PD.Proforma_Data)) + ''-'' + convert(varchar(04),DatePart(Year, PD.Proforma_Data)) + ''.'' ');
                sql.add('      ,PD.INCOTERMS');
                sql.add('      ,Pais_OrigemNome  = (select Nome_Ingles from Cybersoft_Cadastros.dbo.Paises where Codigo = ''1058'')');
                sql.add('      ,Termos_Pagamento = (select Descricao from CondicaoCambial where Codigo = PD.Condicao_Cambio)');
                sql.add('      ,Termos_Comerciais= (select Termos_Comerciais from CondicaoCambial where Codigo = PD.Condicao_Cambio)');
                sql.add('      ,Observacao       = (select Observacao from CondicaoCambial where Codigo = PD.Condicao_Cambio)');
                sql.add('      ,Shipment_Window  = upper(convert(varchar(02),DatePart(day, PD.Navio_DataPrevista ))+'' ''+DateName(Month, Navio_DataPrevista)+'' ''+convert(varchar(04),DatePart(Year, Navio_DataPrevista))+');
                sql.add('                          '' TRHOUGH ''+Convert(varchar(02),DatePart(day, Navio_DataChegada))+'' ''+DateName(Month, Navio_DataChegada)+'' ''+convert(varchar(04),DatePart(Year, Navio_DataChegada)))');
                sql.add('      ,Peso_Liquido     = PD.Peso_Liquido');
                sql.add('      ,Peso_Bruto       = PD.Peso_Bruto');
                sql.add('      ,Moeda            = (select Simbolo from Cybersoft_Cadastros.dbo.Moedas where Codigo = PD.Moeda_FOB)');
                sql.add('from  ProcessosDocumentos PD');
                sql.add('where PD.Proforma_Numero = :pNumero');
                paramByName('pNumero').AsString := ProcessosDOCProforma_Numero.AsString;
                //sql.SaveToFile('c:\temp\Impressao_Proforma.sql');
                open;
           end;
           with tProformaItens do begin 
                sql.clear;
                sql.add('select Codigo_Mercadoria');
                sql.add('      ,Quantidade');
                sql.add('      ,Quantidade_MT  = Quantidade * (select Quantidade_Unidade from Produtos where Codigo = Codigo_Mercadoria)');
                sql.add('      ,Quantidade_Uni = (select Quantidade_Unidade from Produtos where Codigo = Codigo_Mercadoria)');
                sql.add('      ,Quantidade_Vol = (select Quantidade_Volumes from Produtos where Codigo = Codigo_Mercadoria)');
                sql.add('      ,Unidade        = (select Unidade from Produtos where Codigo = Codigo_Mercadoria)');
                sql.add('      ,Unidade_Vol    = (select Unidade_Origem from Produtos where Codigo = Codigo_Mercadoria)');
                sql.add('      ,Valor_Unitario');
                sql.add('      ,Valor_Total = Valor_Unitario * (Quantidade * (select Quantidade_Unidade from Produtos where Codigo = Codigo_Mercadoria))');
                sql.add('      ,Descricao = (select Descricao_Ingles from Produtos where Codigo = Codigo_Mercadoria)');
                sql.add('from ProformaItens');
                sql.add('where Proforma = '+QuotedStr(tProforma.FieldByName('Proforma_Numero').AsString));
                sql.add('order by Item');
                //sql.SaveToFile('c:\temp\Impressao_Proforma_Itens.sql');
                open;
           end;
           with Empresas do begin  
                sql.clear;
                sql.add('select * from Empresas where Codigo = :pCodigo');
                paramByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                open;
           end;
      end;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      cUnitario.DisplayFormat := tProforma.FieldByName('Moeda').AsString+' '+',##0.000';
      cTotal.DisplayFormat    := tProforma.FieldByName('Moeda').AsString+' '+',##0.00';

      rInvoice.Print;
      rInvoice.Reset;
end;

procedure TImpressao_ProcessosOP_Proforma.FormShow(Sender: TObject);
begin
      with Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT *');
           ProcessosDOC.SQL.Add('FROM ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE Tipo = ''EXPORTAÇÃO''');
           ProcessosDOC.SQL.Add('AND   ISNULL(Proforma_Numero, '''') <> '''' ');
           ProcessosDOC.SQL.Add('ORDER BY Proforma_Numero');
           ProcessosDOC.Open;
      end;
end;

procedure TImpressao_ProcessosOP_Proforma.rInvoiceBeforePrint(Sender: TObject);
begin
      with Dados do begin
           lEndereco.Caption  := '';
           lEndereco2.Caption := '';
           lEndereco.Caption  := Trim(EmpresasRua.AsString)+', Nº '+Trim(EmpresasRua_Numero.AsString)+', '+Trim(EmpresasComplemento.AsString)+' - '+Trim(EmpresasBairro.AsString);
           lEndereco2.Caption := 'CEP:'+FormatMaskText('#####-###;0',EmpresasCEP.Value) + '  -  ' + Trim(MunicipiosNome.Value) +' ('+Trim(EmpresasEstado.Value)+') -  Brasil';
      end;
end;


end.

