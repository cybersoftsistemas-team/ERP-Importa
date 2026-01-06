unit frmImpressao_ProcessosOP_PackingList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, ppParameter, ppVar, ppBands, ppReport,
  ppSubRpt, ppCtrls, ppDBPipe, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, MaskUtils, Funcoes, Grids, DBGrids, MemDS, ppModule, raCodMod, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppProd, 
  ppDB, ppComm, ppRelatv, RxCtrls, ppMemo;

type
  TImpressao_ProcessosOP_PackingList = class(TForm)
    Image2: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bImprimir: TButton;
    Grade: TDBGrid;
    StaticText5: TStaticText;
    cPesquisa: TEdit;
    pEmpresas: TppDBPipeline;
    pPacking: TppDBPipeline;
    rPacking: TppReport;
    ppParameterList1: TppParameterList;
    tPacking: TMSQuery;
    dstPacking: TDataSource;
    tItens: TMSQuery;
    dstItens: TDataSource;
    pItens: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lEndereco: TppLabel;
    lEndereco2: TppLabel;
    lEndereco3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    iLogo: TppImage;
    ppLabel6: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    lNomeExp: TppDBText;
    ppLabel7: TppLabel;
    ppLabel3: TppLabel;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel18: TppLabel;
    ppLabel16: TppLabel;
    ppLabel9: TppLabel;
    ppLabel15: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText16: TppDBText;
    ppLine7: TppLine;
    ppLine15: TppLine;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine8: TppLine;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText13: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine23: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel14: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBText4: TppDBText;
    ppDBText27: TppDBText;
    ppLabel2: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText3: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppShape13: TppShape;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppShape14: TppShape;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    raCodeModule1: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure rPackingBeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  
var
  Impressao_ProcessosOP_PackingList: TImpressao_ProcessosOP_PackingList;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProcessosOP_PackingList.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_PackingList.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_ProcessosOP_PackingList.cPesquisaChange(Sender: TObject);
begin
     with Dados do begin
          with ProcessosDOC do begin
               if not locate('Numero_Fatura', cPesquisa.Text, [loPartialKey]) then begin
                  locate('Processo', cPesquisa.Text, [loPartialKey]);
               end;
          end;
     end;
end;

procedure TImpressao_ProcessosOP_PackingList.FormShow(Sender: TObject);
begin
      with Dados do begin
           with ProcessosDOC do begin
                sql.clear;
                sql.add('select *');
                sql.add('from ProcessosDocumentos');
                sql.add('where Tipo = ''EXPORTAÇÃO''');
                sql.add('and isnull(Numero_Fatura, '''') <> '''' ');
                sql.add('order by Proforma_Numero');
                open;
           end;
      end;
end;

procedure TImpressao_ProcessosOP_PackingList.bImprimirClick(Sender: TObject);
begin
      with Dados do begin
           with Empresas do begin
                SQL.Clear;
                SQL.Add('select * from Empresas where Codigo = '+InttoStr(Menu_Principal.mEmpresa));
                Open;
           end;
           with tPacking do begin
                sql.clear;
                sql.add('set language English');
                sql.add('select PD.Numero_Fatura');
                sql.add('      ,PD.Data_Fatura');
                sql.add('      ,PD.Processo');
                sql.add('      ,Moeda              = (select Simbolo from Cybersoft_Cadastros.dbo.Moedas where Codigo = PD.Moeda_FOB)');
                sql.add('      ,Cotacao            = isnull((select Valor from Cybersoft_Cadastros.dbo.Cotacao where Moeda = PD.Moeda_FOB AND Data = Data_Fatura),0)');
                sql.add('      ,PD.INCOTERMS');
                sql.add('      ,Condicao_Cambial   = (select Descricao from CondicaoCambial where Codigo = PD.Condicao_Cambio)');
                sql.add('      ,PD.Condicao_Pgto');
                sql.add('      ,Exportador         = (select Razao_Social from Cybersoft_Cadastros.dbo.Empresas where Codigo = :pEmpresa)');
                sql.add('      ,Exportador_End1    = (select Rua+'', ''+cast(Rua_Numero AS varchar(10))+'' - ''+Bairro from Cybersoft_Cadastros.dbo.Empresas where Codigo = :pEmpresa)');
                sql.add('      ,Exportador_End2    = (select CEP+'' - ''+(select Nome from Cybersoft_Cadastros.dbo.Municipios where Codigo = Municipio_Codigo) +'' - ''+');
                sql.add('                            (select Nome_Ingles from Cybersoft_Cadastros.dbo.Paises where Codigo = 1058) from Cybersoft_Cadastros.dbo.Empresas Emp where Emp.Codigo = :pEmpresa)');
                sql.add('      ,Exportador_CNPJ    = (select CNPJ from Cybersoft_Cadastros.dbo.Empresas where Codigo = :pEmpresa)');
                sql.add('      ,Importador_Nome    = (select Nome from Clientes where Codigo = PD.Cliente)');
                sql.add('      ,Importador_Ender   = (select isnull(Rua, '''')+isnull('', Nº ''+Rua_Numero, '''') from Clientes where Codigo = PD.Cliente)');
                sql.add('      ,Importador_Cida    = (select CEP + '' '' + Bairro + '', '' + (select Nome_Ingles from Cybersoft_Cadastros.dbo.Paises where Codigo = PD.Pais) from Clientes where Codigo = PD.Cliente)');
                sql.add('      ,Importador_Contato = (select Contato from Clientes where Codigo = PD.Cliente)');
                sql.add('      ,Importador_Telefone= ''Telephone:''+(select Telefone1 + ''/''+Telefone2 from Clientes where Codigo = PD.Cliente)');
                sql.add('      ,Importador_Email   = ''E-Mail:''+(select Email from Clientes where Codigo = PD.Cliente)');
                sql.add('      ,Pais_OrigemNome    = (select Nome_Ingles from Cybersoft_Cadastros.dbo.Paises where Codigo = 1058)');
                sql.add('      ,Peso_Liquido');
                sql.add('      ,Peso_Bruto');
                sql.add('      ,Volumes');
                sql.add('      ,Local_Embarque');
                sql.add('      ,Local_Desembarque');
                sql.add('      ,Condicao_Frete');
                sql.add('      ,Seguradora');
                sql.add('      ,Pais_Fornecedor = (select Nome_Ingles from Cybersoft_Cadastros.dbo.Paises where Codigo = (SELECT Pais from Fornecedores where Codigo = PD.Fornecedor) )');
                sql.add('      ,Pais_Destino    = (select Nome_Ingles from Cybersoft_Cadastros.dbo.Paises where Codigo = Pais )');
                sql.add('      ,Pais_Origem     = (select Nome_Ingles from Cybersoft_Cadastros.dbo.Paises where Codigo = 1058 )');
                sql.add('      ,Via_Transporte  = (select Descricao   from Cybersoft_Cadastros.dbo.ViaTransporte where Codigo = PD.Via_Transporte)');
                sql.add('from  ProcessosDocumentos PD');
                sql.add('where PD.Numero_Fatura = :pFatura');
                parambyName('pFatura').AsString   := ProcessosDOCNumero_Fatura.AsString;
                parambyName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                //sql.SaveToFile('c:\temp\Impressao_Invoice.sql');
                open;
           end;
           with tItens do begin 
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
                sql.add('      ,Descricao = replace((select iif(isnull(Descricao_Ingles, '''') <> '''', Descricao_Ingles, Descricao) from Produtos where Codigo = Codigo_Mercadoria), ''<{''+cast(Codigo_Mercadoria as varchar(15))+''}>'', '''')');
                sql.add('      ,Peso_Liquido   = Quantidade * isnull((select sum(Peso_Liquido) from Produtos where Codigo = Codigo_Mercadoria), 0)');
                sql.add('      ,Peso_Bruto     = Quantidade * isnull((select sum(Peso_Bruto) from Produtos where Codigo = Codigo_Mercadoria), 0)');
                sql.add('from InvoiceItens');
                sql.add('where Invoice = :pInvoice');
                sql.add('order by Codigo_Mercadoria');
                paramByName('pInvoice').AsString := ProcessosDOCNumero_Fatura.AsString;
                //sql.SaveToFile('c:\temp\Impressao_Invoice_Itens.sql');
                open;
           end;
      end;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      rPacking.Print;
      rPacking.Reset;
end;

procedure TImpressao_ProcessosOP_PackingList.rPackingBeforePrint(Sender: TObject);
Const
    mMeses: array[1..12] of String = ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
begin
      with Dados do begin
           lEndereco.Caption  := Trim(EmpresasRua.AsString)+', Nº '+Trim(EmpresasRua_Numero.AsString)+', '+Trim(EmpresasComplemento.AsString)+' - '+Trim(EmpresasBairro.AsString);
           lEndereco2.Caption := 'CEP:'+FormatMaskText('#####-###;0',EmpresasCEP.Value) + '  -  ' + Trim(MunicipiosNome.Value) +' ('+Trim(EmpresasEstado.Value)+') -  Brasil';
           lEndereco3.Caption := 'PHONE:'+FormatMaskText('(##) #########;0', EmpresasTelefone1.Value);
      end;
end;

procedure TImpressao_ProcessosOP_PackingList.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Impressao_ProcessosOP_PackingList.Release;
     Impressao_ProcessosOP_PackingList:= nil;
end;

end.
