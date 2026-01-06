unit frmImpressao_Faturamento_VendasMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.IniFiles, FUNCOES, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppParameter, ppDesignLayer, ppBands, ppStrtch, ppMemo, ppCtrls, ppClass, ppVar, ppPrnabl, ppCache, ppProd, ppReport, Data.DB, MemDS, DBAccess, MSAccess, ppDB, ppComm, ppRelatv, ppDBPipe, Vcl.Mask, RxLookup, Vcl.StdCtrls, RxToolEdit, RxCtrls, Vcl.ExtCtrls;

type
  TImpressao_Faturamento_VendasMedia = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cLinha: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cNCM: TMaskEdit;
    pEmpresas: TppDBPipeline;
    pItens: TppDBPipeline;
    tItens: TMSQuery;
    dstItens: TDataSource;
    rVendas: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBMemo1: TppDBMemo;
    ppLabel21: TppLabel;
    ppDBText2: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    cExcel: TCheckBox;
    ppDBText4: TppDBText;
    ppLine12: TppLine;
    cSaldo: TCheckBox;
    cMedia: TCheckBox;
    StaticText4: TStaticText;
    cCliente: TRxDBLookupCombo;
    tClientes: TMSQuery;
    dstClientes: TDataSource;
    tClientesCodigo: TIntegerField;
    tClientesCNPJ: TStringField;
    tClientesNome: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppHeaderBand1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_VendasMedia: TImpressao_Faturamento_VendasMedia;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal;

procedure TImpressao_Faturamento_VendasMedia.bImprimirClick(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     with tItens do begin
          sql.Clear; 
          sql.add('select Linha = (select Descricao from ProdutosLinhas pl where pl.Codigo = prd.Linha)');
          sql.add('      ,prd.Codigo');
          sql.add('      ,Descricao = case when charindex(''<{'', Descricao) > 0 then');
          sql.add('                        substring(Descricao, 1, charindex(''<{'', Descricao)-1)');
          sql.add('                   else');
          sql.add('                        Descricao');
          sql.add('                   end');
          sql.add('      ,Vendas = (select sum(Quantidade) ');
          sql.add('                 from PedidosRepresentantesItens pri');
          sql.add('                 where Pri.Data between :pDataIni and :pDataFim');
          sql.add('                 and pri.Codigo_Mercadoria = prd.Codigo');
          sql.add('                 and (select Cancelado from PedidosRepresentantes pr where pr.pedido = pri.pedido) <> 1');
          if cCliente.Text <> '' then begin
             sql.add('                 and (select Cliente from PedidosRepresentantes pr where pr.pedido = pri.pedido) = :pCliente');
             parambyname('pCliente').AsInteger := tClientes.FieldByName('Codigo').AsInteger;
          end;
          sql.add('                 and (select Local from PedidosRepresentantes pr where pr.pedido = pri.pedido) > 3 )');
          sql.add('      ,Media = (select sum(Quantidade)');
          sql.add('                from PedidosRepresentantesItens pri');
          sql.add('                where Pri.Data between :pDataIni and :pDataFim');
          sql.add('                and pri.Codigo_Mercadoria = prd.Codigo');
          sql.add('                and (select Cancelado from PedidosRepresentantes pr where pr.pedido = pri.pedido) <> 1');
          if cCliente.Text <> '' then begin
             sql.add('                and (select Cliente from PedidosRepresentantes pr where pr.pedido = pri.pedido) = :pCliente');
             parambyname('pCliente').AsInteger := tClientes.FieldByName('Codigo').AsInteger;
          end;
          sql.add('                and (select Local from PedidosRepresentantes pr where pr.pedido = pri.pedido) > 3');
          sql.add('               ) / (datediff(month, :pDataIni, :pDataFim)+1)');
          sql.Add('      ,Estoque = (select cast((isnull((select sum(Quantidade) from NotasItens where(Codigo_Mercadoria = Codigo) and (Saida_Entrada = 0) and (Movimenta_Estoque = 1) and (Cancelada <> 1) and (isnull(NFe_Denegada, 0) = 0)), 0) +');
          sql.Add('                               isnull((select sum(Quantidade) from NotasTerceirosItens where(Codigo_Mercadoria = Codigo) and (Movimenta_Estoque = 1)), 0) +');
          sql.Add('                               isnull((select sum(Quantidade_Entrada) from ProdutosTransferencia where(Produto_Entrada = Codigo) ), 0) -');
          sql.Add('                               isnull((select sum(Quantidade) from NotasItens where(Codigo_Mercadoria = Codigo) and (Saida_Entrada = 1) and (Movimenta_Estoque = 1) and (Cancelada <> 1) and (isnull(NFe_Denegada, 0) = 0)), 0) -');
          sql.Add('                               isnull((select sum(Quantidade) from PedidosItens where(Codigo_Mercadoria = Codigo) and (Saida_Entrada = 1) and (Movimenta_Estoque = 1) ), 0)) -');
          sql.Add('                               isnull((select sum(Quantidade) from ProdutosTransferencia where(Produto_Saida = Codigo) ), 0) as decimal(14,3)) -');
          sql.Add('                               isnull((select sum(Quantidade) from PedidosRepresentantesItens pri where Codigo_Mercadoria = Codigo and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0), 0))');
          sql.add('into #temp');
          sql.add('from Produtos prd');
          sql.add('where Desativado <> 1');

          If Trim(cProduto.Text) <> '' then begin
             tItens.SQL.Add('and (prd.Codigo_Mercadoria = :pCodigo)');
             tItens.ParamByName('pCodigo').AsInteger := Dados.ProdutosCodigo.AsInteger;
          End;
          If Trim(cLinha.Text) <> '' then begin
             tItens.SQL.Add('and prd.Linha = :pLinha');
             tItens.ParamByName('pLinha').AsInteger := Dados.ProdutosLinhasCodigo.AsInteger;
          End;
          If Trim(cNCM.Text) <> ''  then begin
             tItens.SQL.Add('and prd.NCM = :pNCM');
             tItens.ParamByName('pNCM').AsString := cNCM.Text;
          End;
          sql.add('group by Linha, Codigo, Descricao');
          
          sql.add('select *');
          sql.Add('from #temp');
          sql.add('where Vendas > 0');
          if cSaldo.Checked then begin
             sql.add('and Estoque > 0');
          end;
          if cMedia.Checked then begin
             sql.add('and Estoque < Media');
          end;
          sql.Add('order by Linha, Codigo');
          sql.add('drop table #temp');
          ParamByName('pDataIni').AsDateTime := cDataIni.Date;
          ParamByName('pDataFim').AsDateTime := cDataFim.Date;
          //sql.SaveToFile('c:\temp\Produtos_Vendas_Media.sql');
          Open;
     end;
     Screen.Cursor := crDefault;

     lPeriodo.Caption := 'Período de '+ cDataIni.Text + ' á '+cDataFim.Text;
     if cCliente.Text <> '' then begin
        lPeriodo.Caption := lPeriodo.Caption + ' | '+tClientes.FieldByName('CNPJ').asstring + ' '+tClientes.FieldByName('Nome').asstring;
     end;
     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;
     
     ppFooterBand1.Visible := true;
     ppHeaderBand1.Visible := True;
     with rVendas do begin
          if not cExcel.Checked then begin
             AllowPrintToArchive   := false;
             AllowPrintToFile      := false;
             DeviceType            := 'Screen';
             Print;
             Reset;
             FreeOnRelease;
          end else begin   
             OpenFile                  := true;
             AllowPrintToArchive       := true;
             AllowPrintToFile          := true;
             ppFooterBand1.Visible     := false;
             DeviceType                := 'XlsxReport';
             XLSSettings.AppName       := 'Cybersoft - ERP Importa';
             XLSSettings.Author        := 'Cybersoft';
             XLSSettings.Title         := 'Média de Vendas de Produtos';
             XLSSettings.WorksheetName := 'Média de Vendas de Produtos';
             ArchiveFileName           := 'c:\faturamento\Pedido_VendaMedia.xlsx';
             TextFileName              := 'c:\faturamento\Pedido_VendaMedia.xlsx';
             ShowPrintDialog           := false;
             Print;
             Reset;
             FreeOnRelease;
          end;
     end;
end;

procedure TImpressao_Faturamento_VendasMedia.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_Faturamento_VendasMedia.FormClose(Sender: TObject; var Action: TCloseAction);
Var
    aIni:TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'DataIni', cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'DataFim', cDataFim.Date );
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Produto', iif(cProduto.KeyValue > 0, cProduto.KeyValue, 0));
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Linha'  , iif(cLinha.KeyValue > 0, cLinha.KeyValue, 0));
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'NCM'    , cNCM.Text);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Excel'  , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Saldo'  , cSaldo.Checked);
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Media'  , cMedia.Checked);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Cliente', iif(cCliente.KeyValue > 0, cCliente.KeyValue, 0));
      aINI.Free;

      Impressao_Faturamento_VendasMedia.Release;
      Impressao_Faturamento_VendasMedia := nil;
end;

procedure TImpressao_Faturamento_VendasMedia.FormShow(Sender: TObject);
Var
    aIni:TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date     := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'DataIni', 0);
      cDataFim.Date     := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'DataFim', 0);
      cProduto.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Produto', 0);
      cLinha.KeyValue   := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Linha'  , 0);
      cNCM.Text         := aINI.ReadString ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'NCM'    , '');
      cExcel.Checked    := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Excel'  , false);
      cSaldo.Checked    := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Saldo'  , True);
      cMedia.Checked    := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Media'  , True);
      cCliente.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_VENDAMEDIA', 'Cliente', 0);
      aINI.Free;
end;

procedure TImpressao_Faturamento_VendasMedia.ppHeaderBand1AfterPrint(Sender: TObject);
begin
     ppHeaderBand1.Visible := not cExcel.Checked;
end;

procedure TImpressao_Faturamento_VendasMedia.FormCreate(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
      With Dados do begin
           with Empresas do begin
                SQL.Clear;
                SQL.Add('select * from Empresas where Codigo = :pCodigo');
                ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                Open;
           end;
           with TipoNota do begin
                SQL.Clear;
                SQL.Add('select *');
                SQL.Add('from TipoNota');
                SQL.Add('where Ativo = 1 and Gerar_Financeiro = 1 and Saida_Entrada = 1');
                Open;
           end;
           with Produtos do begin
                SQL.Clear;
                SQL.Add('select * from Produtos');
                SQL.Add('where Codigo in((select distinct Codigo_Mercadoria from NotasItens where Saida_Entrada = 1 and Cancelada <> 1))');
                SQL.Add('order by Descricao_Reduzida');
                Open;
           end;
           with TipoProduto do begin
                SQL.Clear;
                SQL.Add('select * from TipoProduto order by Descricao');
                Open;
           end;
           with ProdutosLinhas do begin
                SQL.Clear;
                SQL.Add('select * from ProdutosLinhas order by Descricao');
                Open;
           end;
           with tClientes do begin
                sql.clear;
                sql.Add('select Codigo, CNPJ, Nome  from Clientes order by Nome');
                open;
           end;
      End;
      Screen.Cursor := crDefault;
end;



end.
