unit frmImpressao_FinanceirosOP_VendasRepresProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppParameter, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppReport, DB,
  DBAccess, MSAccess, ppDBPipe, RxLookup, Vcl.StdCtrls, Vcl.ExtCtrls, Mask, RXCtrls,  ppMemo, IniFiles,
  RxCurrEdit, RxToolEdit, ppDB, ppDesignLayer, ppStrtch, ppCache, ppProd, MemDS, ppComm, ppRelatv;

type
  TImpressao_FinanceirosOP_VendasRepresProdutos = class(TForm)
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText7: TStaticText;
    cRepresentante: TRxDBLookupCombo;
    pItens: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    rVendasRepresProduto: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppShape25: TppShape;
    ppLabel27: TppLabel;
    lPeriodo: TppLabel;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    pDetalhe: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel35: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine5: TppLine;
    ppGroup1: TppGroup;
    Cabecalho_Representante: TppGroupHeaderBand;
    ppShape3: TppShape;
    pRepresentante: TppLabel;
    ppDBText3: TppDBText;
    pNomeRepresentante: TppDBText;
    gRodapeRepresentante: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    ppDBCalc5: TppDBCalc;
    ppParameterList2: TppParameterList;
    StaticText3: TStaticText;
    cProduto: TRxDBLookupCombo;
    ppDBText15: TppDBText;
    ppDBMemo1: TppDBMemo;
    lFaixa: TppShape;
    ppDBText1: TppDBText;
    cZebrado: TCheckBox;
    cCodigo: TCurrencyEdit;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure pDetalheBeforePrint(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure cProdutoClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_VendasRepresProdutos: TImpressao_FinanceirosOP_VendasRepresProdutos;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_VendasRepresProdutos.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosOP_VendasRepresProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'DataIni'      , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'DataFim'      , cDataFim.Date );
      If cRepresentante.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'Representante', cRepresentante.KeyValue )
      else
         aINI.WriteString('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'Representante', '');

      If cProduto.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'Produto', cProduto.KeyValue )
      else
         aINI.WriteString('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'Produto', '');

      aINI.WriteBool('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'Zebrado'    , cZebrado.Checked);
      aINI.Free;

     Impressao_FinanceirosOP_VendasRepresProdutos.Release;
     Impressao_FinanceirosOP_VendasRepresProdutos := nil;
end;

procedure TImpressao_FinanceirosOP_VendasRepresProdutos.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      With Dados do begin
           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores, RamoAtividade');
           Fornecedores.SQL.Add('WHERE(Ramo_Atividade = RamoAtividade.Codigo) AND (RamoAtividade.Descricao LIKE ''%REPRESENT%'') AND (RamoAtividade.Modulo_Pedidos = 1)');
           Fornecedores.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos where Codigo in(select distinct Codigo_Mercadoria from PedidosRepresentantesItens) ORDER BY Descricao');
           Produtos.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'DataIni'       , Date );
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'DataFim'       , Date );
      cRepresentante.KeyValue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'Representante' , '' );
      cProduto.KeyValue       := aINI.ReadString ('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'Produto'       , '' );
      cZebrado.Checked        := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_VendasRepresProd', 'Zebrado'       , false );
      aINI.Free;
end;

procedure TImpressao_FinanceirosOP_VendasRepresProdutos.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_VendasRepresProdutos.bImprimirClick(Sender: TObject);
begin
       with tItens do begin
            (*
            SQL.Clear;
            SQL.Add('SELECT Representante AS Codigo,');
            SQL.Add('       (SELECT Nome FROM Fornecedores WHERE(Codigo = NF.Representante)) AS Nome,');
            SQL.Add('       NI.Codigo_Mercadoria AS Produto,');
            SQL.Add('       CAST(NI.Descricao_Mercadoria AS VARCHAR(500)) AS Descricao,');
            SQL.Add('       NI.Valor_Total,');
            SQL.Add('       NI.Quantidade');
            SQL.Add('INTO #TEMP');
            SQL.Add('FROM   NotasFiscais NF, NotasItens NI');
            SQL.Add('WHERE (NF.Numero = NI.Nota AND NF.Data_Emissao = NI.Data)');
            SQL.Add('      AND (NF.Data_Emissao BETWEEN :pDataIni AND :pDataFim)');
            SQL.Add('      AND (NF.Cancelada <> 1)');
            If Trim(cRepresentante.Text) <> '' then begin
               SQL.Add('      AND (NF.Representante = :pRepresenta)');
               ParamByName('pRepresenta').AsInteger := Dados.FornecedoresCodigo.AsInteger;
            end else begin
               SQL.Add('      AND (NF.Representante <> 0)');
            End;
            If Trim(cProduto.Text) <> '' then begin
               SQL.Add('      AND (NI.Codigo_Mercadoria = :pProduto)');
               ParamByName('pproduto').AsInteger := Dados.ProdutosCodigo.AsInteger;
            End;
            SQL.Add('ORDER BY Nome, Codigo_Mercadoria');
            SQL.Add('SELECT Codigo,');
            SQL.Add('       Nome,');
            SQL.Add('       Produto,');
            SQL.Add('       (SELECT REPLACE(Descricao, ''<{''+LTRIM(RTRIM(CAST(Produto AS VARCHAR(15))))+''}>'', '''') FROM Produtos WHERE(Codigo = Produto)) AS Descricao,');
            SQL.Add('       SUM(Valor_Total) AS Valor,');
            SQL.Add('       SUM(Quantidade) AS Quantidade');
            SQL.Add('FROM #TEMP');
            SQL.Add('GROUP BY Codigo, Nome, Produto');
            SQL.Add('DROP TABLE #TEMP');
            ParamByName('pDataIni').AsDate := cDataIni.Date;
            ParamByName('pDataFim').AsDate := cDataFim.Date;
            //SQL.SaveToFile('c:\temp\Vendas_Representante_Produtos.SQL');
            Open;
            *)
            sql.Clear;
            sql.Add('select Codigo    = (select Representante from PedidosRepresentantes pr where pr.Pedido = pri.Pedido and pri.Data = pr.Data_Planilha)');
            sql.Add('      ,Nome      = (select Nome from Fornecedores where Representante_Codigo = (select Representante from PedidosRepresentantes pr where pr.Pedido = pri.Pedido and pri.Data = pr.Data_Planilha))');
            sql.Add('      ,Produto   = Codigo_Mercadoria');
            sql.Add('      ,Descricao = cast( (select replace(Descricao, ''<{''+ltrim(rtrim(cast(Codigo as varchar(15))))+''}>'', '''') from Produtos where Codigo = Codigo_Mercadoria) as varchar(500))');
            sql.Add('      ,Valor     = Valor_Unitario * Quantidade');
            sql.Add('      ,Quantidade');
            sql.Add('into #TEMP');
            sql.Add('from PedidosRepresentantesItens pri');
            sql.Add('where (select isnull(Cancelado,0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido and pri.Data = pr.Data_Planilha) = 0');
            sql.Add('and cast(Data as date) between :pDataIni and :pDataFim');
            If Trim(cRepresentante.Text) <> '' then begin
               sql.Add('and   (select Representante from PedidosRepresentantes pr where pr.Pedido = pri.Pedido and pri.Data = pr.Data_Planilha) = :pRep');
               ParamByName('pRep').AsInteger := Dados.FornecedoresRepresentante_Codigo.AsInteger;
            End;
            If Trim(cProduto.Text) <> '' then begin
               SQL.Add('and pri.Codigo_Mercadoria = :pProduto');
               ParamByName('pproduto').AsInteger := Dados.ProdutosCodigo.AsInteger;
            End;
            sql.Add('select Codigo');
            sql.Add('      ,Nome');
            sql.Add('      ,Produto');
            sql.Add('      ,Descricao');
            sql.Add('      ,Valor = sum(Valor)');
            sql.Add('      ,Quantidade = sum(Quantidade)');
            sql.Add('from #TEMP');
            sql.Add('group by Codigo, Nome, Produto, Descricao');
            sql.Add('DROP TABLE #TEMP');
            ParamByName('pDataIni').AsDate := cDataIni.Date;
            ParamByName('pDataFim').AsDate := cDataFim.Date;
            //sql.SaveToFile('c:\temp\Vendas_Representante_Produtos.SQL');
            Open;
      end;

      lFaixa.Visible := false;
      lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á ' + cDataFim.Text;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      rVendasRepresProduto.Reset;
      rVendasRepresProduto.Print;
      rVendasRepresProduto.FreeOnRelease;
end;

procedure TImpressao_FinanceirosOP_VendasRepresProdutos.pDetalheBeforePrint(Sender: TObject);
begin
      If cZebrado.Checked then
         lFaixa.Visible := not lFaixa.Visible;
end;

procedure TImpressao_FinanceirosOP_VendasRepresProdutos.cCodigoChange(Sender: TObject);
begin
      If Dados.Produtos.Locate('Codigo', cCodigo.AsInteger, [loCaseInsensitive]) = true then begin
         cProduto.KeyValue := Dados.ProdutosCodigo.AsInteger;
      end else begin
         cProduto.KeyValue := 0;
      End;
end;

procedure TImpressao_FinanceirosOP_VendasRepresProdutos.cProdutoClick(
  Sender: TObject);
begin
      If Trim(cProduto.Text) <> '' then
         cCodigo.AsInteger := Dados.ProdutosCodigo.AsInteger
      else
         cCodigo.AsInteger := 0;   
end;

procedure TImpressao_FinanceirosOP_VendasRepresProdutos.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cRepresentante.ClearValue;
      cProduto.ClearValue;
      cCodigo.Clear;
end;

end.
