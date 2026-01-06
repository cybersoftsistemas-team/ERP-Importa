unit frmImpressao_ProcessosOP_OrdemCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RxLookup, Vcl.StdCtrls, RXDBCtrl, DBCtrls, Vcl.ExtCtrls,
  RXCtrls, Buttons, Funcoes, ppParameter, ppCtrls, ppVar, ppBands, ppReport, ppDBPipe,
  ppMemo, Grids, DBGrids, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_ProcessosOP_OrdemCompra = class(TForm)
    Image2: TImage;
    bLimpaFiltro: TSpeedButton;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    bImprimir: TButton;
    Grade: TRxDBGrid;
    StaticText26: TStaticText;
    cResponsavel: TRxDBLookupCombo;
    tOrdem: TMSQuery;
    dstOrdem: TDataSource;
    pEmpresas: TppDBPipeline;
    pOrdem: TppDBPipeline;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    rOrdem: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape7: TppShape;
    ppShape3: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    lTitulo: TppLabel;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    iLogo: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText7: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText8: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppLabel7: TppLabel;
    ppDBText25: TppDBText;
    ppLabel8: TppLabel;
    ppDBText4: TppDBText;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine5: TppLine;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape10: TppShape;
    ppLabel11: TppLabel;
    ppShape12: TppShape;
    ppShape11: TppShape;
    ppLabel12: TppLabel;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppShape13: TppShape;
    ppLabel13: TppLabel;
    ppDBText22: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBMemo1: TppDBMemo;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppDBText26: TppDBText;
    ppLabel15: TppLabel;
    ppDBText24: TppDBText;
    ppLabel16: TppLabel;
    ppDBText27: TppDBText;
    ppLabel17: TppLabel;
    ppDBText28: TppDBText;
    ppLine3: TppLine;
    lTotal: TppLabel;
    ppDBText29: TppDBText;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppDBMemo2: TppDBMemo;
    ppLabel19: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel20: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLine13: TppLine;
    ppShape16: TppShape;
    ppLabel21: TppLabel;
    ppDBText32: TppDBText;
    ppLine14: TppLine;
    ppLabel18: TppLabel;
    ppShape17: TppShape;
    ppDBText33: TppDBText;
    ppLine15: TppLine;
    ppShape18: TppShape;
    ppLabel22: TppLabel;
    ppDBText34: TppDBText;
    ppLine16: TppLine;
    ppLabel23: TppLabel;
    ppShape19: TppShape;
    ppLine17: TppLine;
    ppDBText35: TppDBText;
    iAssinatura: TppImage;
    ppShape8: TppShape;
    procedure cResponsavelChange(Sender: TObject);
    procedure bLimpaFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Impressao_ProcessosOP_OrdemCompra: TImpressao_ProcessosOP_OrdemCompra;

implementation

uses frmDados, frmMenu_Principal, frmDMDespacho;

{$R *.dfm}

procedure TImpressao_ProcessosOP_OrdemCompra.cResponsavelChange(Sender: TObject);
begin
      with Dados do begin
           Grade.DisableScroll;
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE  (Responsavel = :pResponsavel)');
           ProcessosDOC.SQL.Add('ORDER BY Processo');
           ProcessosDOC.ParamByName('pResponsavel').ASString := UsuariosMatricula.AsString;
           ProcessosDOC.Open;
           Grade.EnableScroll;
      end;
end;

procedure TImpressao_ProcessosOP_OrdemCompra.bLimpaFiltroClick(Sender: TObject);
begin
      cResponsavel.KeyValue := -1;
      with Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE  Tipo IN(''IMPORTAÇÃO'', ''COMPRA INTERNA'')');
           ProcessosDOC.SQL.Add('ORDER BY Processo');
           ProcessosDOC.Open;
      end;
end;

procedure TImpressao_ProcessosOP_OrdemCompra.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_OrdemCompra.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Impressao_ProcessosOP_OrdemCompra.Release;
      Impressao_ProcessosOP_OrdemCompra := nil;
end;

procedure TImpressao_ProcessosOP_OrdemCompra.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa de processos', 'Processos / DI / BL',mPesquisa);
      With Dados do begin
           If ProcessosDOC.Locate('Processo', mPesquisa, [loPartialKey]) = False then begin
              If ProcessosDOC.Locate('Numero_Declaracao', mPesquisa, [loCaseInsensitive]) = False then begin
                 If ProcessosDOC.Locate('Numero_DOC', mPesquisa, [loCaseInsensitive]) = False then begin
                    ShowMessage('Nenhum "Processo, DI ou BL" encontrados com este número!');
                 End;
              End;
           End;
      End;
end;

procedure TImpressao_ProcessosOP_OrdemCompra.FormShow(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           {
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;
           }
           PO.SQL.Clear;
           PO.SQL.Add('SELECT * FROM PO ORDER BY Data Desc');
           PO.Open;
           
           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios ORDER BY Nome');
           Usuarios.Open;
      end;
end;

procedure TImpressao_ProcessosOP_OrdemCompra.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_ProcessosOP_OrdemCompra.bImprimirClick(Sender: TObject);
begin
      with Dados, dmDespacho  do begin
           Configuracao.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

           tOrdem.SQL.Clear;
           tOrdem.SQL.Add('SELECT Processo');
           tOrdem.SQL.Add('      ,Numero');
           tOrdem.SQL.Add('      ,Data');
           tOrdem.SQL.Add('	     ,Vendor       = (SELECT Nome FROM Fornecedores WHERE Codigo = :pFornecedor)');
           tOrdem.SQL.Add('	     ,Vendor_End   = (SELECT Rua+'', ''+Rua_Numero FROM Fornecedores WHERE Codigo = :pFornecedor)');
           tOrdem.SQL.Add('	     ,Vendor_Cid   = (SELECT Complemento+'' - ''+ISNULL(CEP, '''') FROM Fornecedores WHERE Codigo = :pFornecedor)');
           tOrdem.SQL.Add('	     ,Vendor_Tel   = ''PHONE: ''+ISNULL((SELECT Telefone1 FROM Fornecedores WHERE Codigo = :pFornecedor), '''')');
           tOrdem.SQL.Add('	     ,Empresa      = (SELECT Razao_Social FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tOrdem.SQL.Add('	     ,Endereco     = (SELECT Rua+'' ''+CAST(Rua_Numero AS VARCHAR(15))+ISNULL(Complemento, '''')+'' - ''+Bairro FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tOrdem.SQL.Add('	     ,Endereco2    = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa))+');
           tOrdem.SQL.Add('	                     '' (''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)+'')'' ');
           tOrdem.SQL.Add('	     ,CEP          = (SELECT CEP FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tOrdem.SQL.Add('	     ,Telefones    = ''PHONE :''+ISNULL((SELECT Telefone1+''/''+Telefone2 FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa), '''')');
           tOrdem.SQL.Add('	     ,Responsavel  = Requisitante');
           tOrdem.SQL.Add('	     ,Via_Transporte');
           tOrdem.SQL.Add('	     ,Local_Embarque');
           tOrdem.SQL.Add('	     ,Incoterms');
           tOrdem.SQL.Add('	     ,Observacao');
           tOrdem.SQL.Add('	     ,Condicao_Pgto= (SELECT Descricao FROM CondicaoCambial WHERE Codigo = Condicao_Cambial)');
           tOrdem.SQL.Add('	     ,SubTotal     = (SELECT SUM(Valor*Quantidade) FROM POItens WHERE PO = Numero)');
           tOrdem.SQL.Add('	     ,Tax          = 0');
           tOrdem.SQL.Add('	     ,Shipping     = 0');
           tOrdem.SQL.Add('	     ,Other        = 0');
           tOrdem.SQL.Add('	     ,Total        = (SELECT SUM(Valor*Quantidade) FROM POItens WHERE PO = Numero)');
           tOrdem.SQL.Add('      ,Moeda_Simbol = (SELECT Simbolo FROM Cybersoft_Cadastros.dbo.Moedas WHERE Codigo = Moeda)');
           tOrdem.SQL.Add('FROM  PO');
           tOrdem.SQL.Add('WHERE Numero = '+QuotedStr(PONumero.AsString));
           tOrdem.SQL.Add('ORDER BY Numero');
           tOrdem.ParamByName('pFornecedor').AsInteger := POExportador.AsInteger;
           tOrdem.ParamByName('pEmpresa').AsInteger    := EmpresasCodigo.AsInteger;
           //tOrdem.SQL.SaveToFile('c:\temp\Ordem_Compra.sql');
           tOrdem.Open;

           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT Codigo_Mercadoria');
           tItens.SQL.Add('      ,Descricao        = (SELECT LEFT(Descricao, CASE WHEN CHARINDEX(''<{'',Descricao) > 0 THEN CHARINDEX(''<{'',Descricao)-1 ELSE LEN(Descricao) END) FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           tItens.SQL.Add('      ,Unidade_Orig     = (SELECT Unidade_Origem        FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           tItens.SQL.Add('      ,Unidade_OrigDesc = (SELECT MAX(Descricao_Ingles) FROM Cybersoft_Cadastros.dbo.UnidadeMedida WHERE Codigo = (SELECT Unidade_Origem FROM Produtos WHERE Codigo = Codigo_Mercadoria))');
           tItens.SQL.Add('      ,Unidade          = (SELECT Unidade               FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           tItens.SQL.Add('      ,Unidade_Desc     = (SELECT MAX(Descricao)        FROM Cybersoft_Cadastros.dbo.UnidadeMedida WHERE Codigo = (SELECT Unidade FROM Produtos WHERE Codigo = Codigo_Mercadoria))');
           tItens.SQL.Add('      ,Quantidade');
           tItens.SQL.Add('      ,Quantidade_Volumes');
           tItens.SQL.Add('      ,Peso_Liquido     = (SELECT Peso_Liquido FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
           tItens.SQL.Add('      ,Peso_Total       = (SELECT Peso_Liquido FROM Produtos WHERE Codigo = Codigo_Mercadoria) * Quantidade_Volumes');
           tItens.SQL.Add('      ,Valor');
           tItens.SQL.Add('    	 ,Total = Valor * Quantidade');
           tItens.SQL.Add('FROM POItens ');
           tItens.SQL.Add('WHERE PO = '+QuotedStr(PONumero.AsString));
           //tItens.SQL.SaveToFile('c:\temp\Ordem_Compra_Itens.sql');
           tItens.Open;

           if FileExists(Dados.EmpresasLogo.Value) then
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           if FileExists(Dados.EmpresasAssinatura.Value) then
              iAssinatura.Picture.LoadFromFile(Dados.EmpresasAssinatura.Value);

           lTotal.Caption := 'TOTAL '+tOrdem.FieldByName('Moeda_Simbol').AsString;
           rOrdem.Print;
           rOrdem.Reset;
     end
end;

end.
