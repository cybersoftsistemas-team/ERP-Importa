unit frmImpressao_ProdutosRanking;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppParameter, ppCtrls, ppBands, ppMemo, ppVar, ppPrnabl,
  ppReport, ppDBPipe, DBAccess, MSAccess, Vcl.StdCtrls, RxLookup, Mask, Buttons, Vcl.ExtCtrls, RXCtrls,
  IniFiles, Funcoes, RxCurrEdit, RxToolEdit, ppDesignLayer, ppStrtch, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS, Vcl.Grids, Vcl.DBGrids;

type
  TImpressao_ProdutosRanking = class(TForm)
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
    tItens: TMSQuery;
    pEmpresas: TppDBPipeline;
    pItens: TppDBPipeline;
    rProdutosRanking: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText21: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppParameterList1: TppParameterList;
    dstItens: TDataSource;
    tPesquisa: TMSQuery;
    ppLabel1: TppLabel;
    lNumero: TppVariable;
    cTipo: TRadioGroup;
    cOrdem: TRadioGroup;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    bDes: TBitBtn;
    cOrig: TRadioGroup;
    cMov: TRadioGroup;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    cExcel: TCheckBox;
    cEstoque: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bPesquisaCEPClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure lNumeroCalc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bDesClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ppDetailBand1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: String;
  end;

var
  Impressao_ProdutosRanking: TImpressao_ProdutosRanking;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProdutosRanking.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProdutosRanking.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_ProdutosRanking.DBGrid1CellClick(Column: TColumn);
begin
     with Dados do begin
          Produtos.edit;
                   Produtos.FieldByName('Selecionado').value := not Produtos.FieldByName('Selecionado').value;
          Produtos.Post;
     end;
end;

procedure TImpressao_ProdutosRanking.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key = VK_RETURN then begin
        with Dados, Produtos do begin
             Edit;
                 FieldByName('Selecionado').value := not Produtos.FieldByName('Selecionado').value;
             Post;
             next;
        end;
     end;
end;

procedure TImpressao_ProdutosRanking.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_PRODUTOSRANKING', 'DataIni'  , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_PRODUTOSRANKING', 'DataFim'  , cDataFim.Date);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSRANKING', 'Produto'  , cCodigoProduto.AsInteger);
      aINI.WriteBool   ('IMPRESSAO_PRODUTOSRANKING', 'Excel'    , cExcel.Checked);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSRANKING', 'Tipo'     , cTipo.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSRANKING', 'Origem'   , cOrig.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSRANKING', 'Movimento', cMov.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSRANKING', 'Ordem'    , cOrdem.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_PRODUTOSRANKING', 'Estoque'  , cEstoque.ItemIndex);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_ProdutosRanking.Release;
      Impressao_ProdutosRanking:= nil;
end;

procedure TImpressao_ProdutosRanking.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI               := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date      := aINI.ReadDate   ('IMPRESSAO_PRODUTOSRANKING', 'DataIni'  , Date);
      cDataFim.Date      := aINI.ReadDate   ('IMPRESSAO_PRODUTOSRANKING', 'DataFim'  , Date);
      cProduto.KeyValue  := aINI.ReadInteger('IMPRESSAO_PRODUTOSRANKING', 'Produto'  , 0);
      cExcel.Checked     := aINI.ReadBool   ('IMPRESSAO_PRODUTOSRANKING', 'Excel'    , false);
      cTipo.ItemIndex    := aINI.ReadInteger('IMPRESSAO_PRODUTOSRANKING', 'Tipo'     , 0);
      cOrig.ItemIndex    := aINI.ReadInteger('IMPRESSAO_PRODUTOSRANKING', 'Origem'   , 0);
      cMov.ItemIndex     := aINI.ReadInteger('IMPRESSAO_PRODUTOSRANKING', 'Movimento', 0);
      cOrdem.ItemIndex   := aINI.ReadInteger('IMPRESSAO_PRODUTOSRANKING', 'Ordem'    , 0);
      cEstoque.ItemIndex := aINI.ReadInteger('IMPRESSAO_PRODUTOSRANKING', 'Estoque'  , 2);
      aINI.Free;

      with Dados do begin
           Produtos.SQL.Clear;
           //Produtos.SQL.Add('select * from Produtos order by Descricao_Reduzida');
           Produtos.SQL.Add('select * from Produtos');
           Produtos.Open;
      end;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_ProdutosRanking.bPesquisaCEPClick(Sender: TObject);
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

procedure TImpressao_ProdutosRanking.bDesClick(Sender: TObject);
begin
      with Dados, tPesquisa do begin
           sql.clear;
           sql.add('update Produtos set Selecionado = 0');
           execute;
           Produtos.Refresh;
      end;
end;

procedure TImpressao_ProdutosRanking.bImprimirClick(Sender: TObject);
var
   mLista: widestring;
begin
       lPeriodo.Caption := '';
       with tPesquisa do begin
            sql.clear;
            sql.add('declare @Lista varchar(500)');
            sql.add('set @Lista = '''' ');
            sql.add('select 0 as tmp_flag, Codigo into #tmp_produto from produtos where Selecionado = 1');
            sql.add('while((select count(*) from #tmp_produto where tmp_flag = 0 ) > 0) begin');
            sql.add('     set @Lista = @Lista + cast((select top 1 Codigo from #tmp_produto where tmp_flag = 0) as varchar(15)) + '','' ');
            sql.add('     update #tmp_produto set tmp_flag = 1 where #tmp_produto.codigo = (select top 1 codigo from #tmp_produto where tmp_flag = 0)');
            sql.add('end');
            sql.add('if len(@lista) > 0 set @Lista = substring(@Lista, 1, len(@lista)-1)');
            sql.add('select Lista = @Lista');
            sql.add('drop table #tmp_produto');
            execute;
            mLista := FieldByName('Lista').asstring;
       end;
       
       with tItens do begin
            if cOrig.ItemIndex = 0 then begin
               if cMov.ItemIndex = 0 then begin
                  SQL.Clear;
                  SQL.Add('SELECT Codigo    = CAST(Codigo_Mercadoria AS VARCHAR(10)),');
                  SQL.Add('       Descricao = CAST(Descricao_Mercadoria AS VARCHAR(500)),');
                  SQL.Add('       SUM(Valor_Total) AS Valor,');
                  SQL.Add('       SUM(Quantidade) AS Quantidade');
                  SQL.Add('INTO #TEMP');
                  SQL.Add('FROM NotasItens');
                  SQL.Add('WHERE Saida_Entrada = 1');
                  SQL.Add('AND Cancelada <> 1');
                  SQL.Add('AND (SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1');
                  If Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
                     SQL.Add('AND Data BETWEEN :pDataIni AND :pDataFim');
                     ParamByName('pDataIni').AsDate := cDataIni.Date;
                     ParamByName('pDataFim').AsDate := cDataFim.Date;
                     lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a '+cDataFim.Text+ '  ';
                  End;
                  If (cCodigoProduto.Value > 0) and (trim(mlista) = '') then begin
                     SQL.Add('AND Codigo_Mercadoria = :pCodigo');
                     ParamByName('pCodigo').AsInteger := cCodigoProduto.AsInteger;
                  End;
                  If trim(mLista) <> '' then begin
                     SQL.Add('AND Codigo_Mercadoria in('+mLista+')');
                  End;
                  if cEstoque.ItemIndex = 0 then begin
                     sql.Add('and (select Estoque_Disponivel from Produtos where Codigo = NotasItens.odigo_Mercadoria) > 0');
                  end;
                  if cEstoque.ItemIndex = 1 then begin
                     sql.Add('and (select Estoque_Disponivel from Produtos where Codigo = NotasItens.Codigo_Mercadoria) <= 0');
                  end;
                  SQL.Add('GROUP BY Codigo_Mercadoria, CAST(Descricao_Mercadoria AS VARCHAR(500))');
                  SQL.Add('SELECT Codigo,');
                  SQL.Add('       Descricao = REPLACE(Descricao,''<{''+Codigo+''}>'',''''),');
                  SQL.Add('       Valor,');
                  SQL.Add('       Quantidade');
                  SQL.Add('FROM #TEMP');
                  If (cTipo.ItemIndex = 0) and (cOrdem.ItemIndex = 0) then
                     SQL.Add('order by Quantidade desc');
                  If (cTipo.ItemIndex = 0) and (cOrdem.ItemIndex = 1) then
                     SQL.Add('order by Quantidade');
                  If (cTipo.ItemIndex = 1) and (cOrdem.ItemIndex = 0) then
                     SQL.Add('order by Valor desc');
                  If (cTipo.ItemIndex = 1) and (cOrdem.ItemIndex = 1) then
                     SQL.Add('order by Valor');
                  SQL.Add('drop table #temp');
                  //SQl.SaveToFile('c:\temp\Produtos_Ranking_Notas.SQL');
                  Open;
               end;
               if cMov.ItemIndex = 1 then begin
                  sql.Clear;
                  sql.Add('select Codigo    = cast(Codigo as varchar(10))');
                  sql.Add('      ,Descricao = replace(cast(Descricao as varchar(500)) ,''<{''+cast(Codigo as varchar(10))+''}>'','''')');
                  sql.add('      ,Valor = 0');
                  sql.Add('      ,Quantidade = 0');
                  sql.Add('from Produtos prd');
                  sql.Add('where Desativado <> 1');
                  sql.Add('and Codigo not in(select Codigo_Mercadoria from NotasItens where Data between :pDataini and :pDataFim)');
                  if cEstoque.ItemIndex = 0 then begin
                     sql.Add('and Estoque_Disponivel > 0');
                  end;
                  if cEstoque.ItemIndex = 1 then begin
                     sql.Add('and Estoque_Disponivel <= 0');
                  end;
                  If (cTipo.ItemIndex = 0) and (cOrdem.ItemIndex = 0) then
                     SQL.Add('order by Quantidade desc');
                  If (cTipo.ItemIndex = 0) and (cOrdem.ItemIndex = 1) then
                     SQL.Add('order by Quantidade');
                  If (cTipo.ItemIndex = 1) and (cOrdem.ItemIndex = 0) then
                     SQL.Add('order by Valor desc');
                  If (cTipo.ItemIndex = 1) and (cOrdem.ItemIndex = 1) then
                     SQL.Add('order by Valor');
                  open;
               end;
            end;
            if cOrig.ItemIndex = 1 then begin
               if cMov.ItemIndex = 0 then begin
                  SQL.Clear;
                  SQL.Add('select Codigo    = cast(Codigo_Mercadoria as varchar(10))');
                  SQL.Add('      ,Descricao = replace((select cast(Descricao as varchar(500)) from Produtos where Codigo = Codigo_Mercadoria),''<{''+cast(Codigo_Mercadoria as varchar(10))+''}>'','''')');
                  SQL.Add('      ,Valor = sum(Valor_Unitario * Quantidade)');
                  SQL.Add('      ,Quantidade = sum(Quantidade)');
                  SQL.Add('from PedidosRepresentantesItens pri');
                  SQL.Add('where Cancelado <> 1');
                  if Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '' then begin
                     SQL.Add('and Data between :pDataIni AND :pDataFim');
                     ParamByName('pDataIni').AsDate := cDataIni.Date;
                     ParamByName('pDataFim').AsDate := cDataFim.Date;
                     lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a '+cDataFim.Text+ '  ';
                  end;
                  if (cCodigoProduto.Value > 0) and (trim(mlista) = '') then begin
                     SQL.Add('and Codigo_Mercadoria = :pCodigo');
                     ParamByName('pCodigo').AsInteger := cCodigoProduto.AsInteger;
                  end;
                  if trim(mLista) <> '' then begin
                     tItens.SQL.Add('and Codigo_Mercadoria in('+mLista+')');
                  end;
                  if cEstoque.ItemIndex = 0 then begin
                     sql.Add('and (select Estoque_Disponivel from Produtos pr where pr.Codigo = pri.Codigo_Mercadoria) > 0');
                  end;
                  if cEstoque.ItemIndex = 1 then begin
                     sql.Add('and (select Estoque_Disponivel from Produtos pr where pr.Codigo = pri.Codigo_Mercadoria) <= 0');
                  end;
                  SQL.Add('group by Codigo_Mercadoria');
                  if (cTipo.ItemIndex = 0) and (cOrdem.ItemIndex = 0) then
                     SQL.Add('order by Quantidade desc');
                  if (cTipo.ItemIndex = 0) and (cOrdem.ItemIndex = 1) then
                     SQL.Add('order by Quantidade');
                  if (cTipo.ItemIndex = 1) and (cOrdem.ItemIndex = 0) then
                     SQL.Add('order by Valor desc');
                  if (cTipo.ItemIndex = 1) and (cOrdem.ItemIndex = 1) then
                     SQL.Add('order by Valor');
                  //sql.SaveToFile('c:\temp\Produtos_Ranking_Pedidos.SQL');
                  open;
               end;
               if cMov.ItemIndex = 1 then begin
                  sql.Clear;
                  sql.Add('select Codigo    = cast(Codigo as varchar(10))');
                  sql.Add('      ,Descricao = replace(cast(Descricao as varchar(500)) ,''<{''+cast(Codigo as varchar(10))+''}>'','''')');
                  sql.add('      ,Valor = 0');
                  sql.Add('      ,Quantidade = 0');
                  sql.Add('from Produtos prd');
                  sql.Add('where prd.Desativado <> 1');
                  sql.Add('and prd.Codigo not in(select Codigo_Mercadoria from PedidosRepresentantesItens pri where pri.Codigo_Mercadoria = prd.Codigo and pri.Data between :pDataini and :pDataFim)');
                  if cEstoque.ItemIndex = 0 then begin
                     sql.Add('and prd.Estoque_Disponivel > 0');
                  end;
                  if cEstoque.ItemIndex = 1 then begin
                     sql.Add('and prd.Estoque_Disponivel <= 0');
                  end;
                  sql.Add('order by Descricao');
                  ParamByName('pDataIni').AsDate := cDataIni.Date;
                  ParamByName('pDataFim').AsDate := cDataFim.Date;
                  //sql.SaveToFile('c:\temp\Produtos_Ranking_Pedidos.SQL');
                  open;
                  lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a '+cDataFim.Text+ '  ';
               end;
            end;
       end;
       
       With Dados do begin
            Empresas.SQL.Clear;
            Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
            Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
            Empresas.Open;
       End;
       
       If tItens.RecordCount > 0 then begin
          if not cExcel.Checked then begin
             with rProdutosRanking do begin
                  if FileExists(Dados.EmpresasLogo.Value) then begin
                     iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
                  end;
                  OpenFile                  := false;
                  AllowPrintToArchive       := false;
                  AllowPrintToFile          := false;
                  PrinterSetup.PaperHeight  := 11.6929;
                  //ppDetailBand1.Height      := 0.125;
                  DeviceType                := 'Screen';
                  XLSSettings.AppName       := '';
                  XLSSettings.Author        := '';
                  XLSSettings.Title         := '';
                  XLSSettings.WorksheetName := '';
                  ArchiveFileName           := '';
                  TextFileName              := '';
                  ShowPrintDialog           := true;
                  Print;
                  Reset;
                  FreeOnRelease;
             end;
          end else begin
              with rProdutosRanking do begin
                   OpenFile                  := true;
                   AllowPrintToArchive       := true;
                   AllowPrintToFile          := true;
                   //PrinterSetup.PaperHeight  := 60;
                   //ppDetailBand1.Height      := 0.25;
                   DeviceType                := 'XlsxReport';
                   XLSSettings.AppName       := 'ERP Importa';
                   XLSSettings.Author        := 'Cybersoft';
                   XLSSettings.Title         := 'Ranking de Produtos Vendidos';
                   XLSSettings.WorksheetName := 'Ranking de Produtos Vendidos';
                   ArchiveFileName           := 'c:\faturamento\Ranking_Produtos_Vendidos.xlsx';
                   TextFileName              := 'c:\faturamento\Ranking_Produtos_Vendidos.xlsx';
                   ShowPrintDialog           := false;
                   Print;
                   Reset;
                   FreeOnRelease;
              end;
          end;
       end else begin
          ShowMessage('Não há dados para o relatório solicitado!');
       End;
end;

procedure TImpressao_ProdutosRanking.lNumeroCalc(Sender: TObject;var Value: Variant);
begin
      Value := Value + 1;
end;

procedure TImpressao_ProdutosRanking.ppDetailBand1AfterPrint(Sender: TObject);
begin
//     if ppDetailBand1.Background1.Brush.Color = clwhite then
//        ppDetailBand1.Background1.Brush.Color := clsilver
//     else   
//        ppDetailBand1.Background1.Brush.Color := clWhite;
//
end;

procedure TImpressao_ProdutosRanking.ppDetailBand1BeforePrint(Sender: TObject);
begin
//      ppDetailBand1.Height := iif(cExcel.checked,  0.2, 0.15);
//      if cExcel.Checked then begin
//         ppDetailBand1.Height := 0.2;
//      end else begin
//         ppDetailBand1.Background1.Brush.Color := clWhite;
//      end;
end;

procedure TImpressao_ProdutosRanking.BitBtn1Click(Sender: TObject);
begin
      cCodigoProduto.Clear;
      cDataIni.Clear;
      cDataFim.Clear;
end;

end.
