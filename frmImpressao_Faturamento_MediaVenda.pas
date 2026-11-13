unit frmImpressao_Faturamento_MediaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Mask, Vcl.ExtCtrls,RXCtrls, RxLookup,
  DB, DBAccess, MSAccess, ppParameter, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppReport, ppDBPipe,
  ppMemo, Funcoes, IniFiles, Buttons, ComObj,
  RxCurrEdit, RxToolEdit, ppDesignLayer, ppStrtch, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_Faturamento_MediaVenda = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    StaticText6: TStaticText;
    lLinha: TStaticText;
    cProduto: TRxDBLookupCombo;
    cLinha: TRxDBLookupCombo;
    tItens: TMSQuery;
    pEmpresas: TppDBPipeline;
    pItens: TppDBPipeline;
    rMediaValor: TppReport;
    ppParameterList1: TppParameterList;
    dstItens: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    ppLabel3: TppLabel;
    ppLabel21: TppLabel;
    ppLabel7: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText12: TppDBText;
    ppDBText21: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppGroup1: TppGroup;
    rGrupoLinha: TppGroupHeaderBand;
    ppDBText18: TppDBText;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    cTipo: TRadioGroup;
    bPesquisaCEP: TSpeedButton;
    tPesquisa: TMSQuery;
    cCodigoProduto: TCurrencyEdit;
    bLimpar: TButton;
    cOrdem: TRadioGroup;
    cExcel: TCheckBox;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    cDirecao: TRadioGroup;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cProdutoChange(Sender: TObject);
    procedure bPesquisaCEPClick(Sender: TObject);
    procedure cCodigoProdutoExit(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: WideString;
  end;

var
  Impressao_Faturamento_MediaVenda: TImpressao_Faturamento_MediaVenda;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_MediaVenda.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_Faturamento_MediaVenda.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_MediaVenda.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI               := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date      := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_MEDIA', 'DataIni', Date );
      cDataFim.Date      := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_MEDIA', 'DataFim', Date );
      cProduto.KeyValue  := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Produto', 0 );
      cLinha.KeyValue    := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Linha'  , 0 );
      cTipo.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Tipo'   , 0 );
      cOrdem.ItemIndex   := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Ordem'   , 0 );
      cDirecao.ItemIndex := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Direacao', 0 );
      aINI.Free;

      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
           Produtos.Open;

           ProdutosLinhas.SQL.Clear;
           ProdutosLinhas.SQL.Add('SELECT * FROM ProdutosLinhas ORDER BY Descricao');
           ProdutosLinhas.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_Faturamento_MediaVenda.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      Dados.Empresas.Open;
      Dados.Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
      Dados.Configuracao.open;
      
      if not Dados.ConfiguracaoTela_LiberaPedidos.AsBoolean then begin
         with tItens do begin
              SQL.Clear;
              SQL.Add('SELECT Codigo_Mercadoria,');
              If cTipo.ItemIndex = 1 then begin
                 SQL.Add('       Valor_Total,');
              end else begin
                 SQL.Add('       (Valor_Total + Valor_ICMSOper + Total_IPI + (Valor_PIS+Valor_COFINS * Quantidade)) AS Valor_Total,');
              End;   
              SQL.Add('       Quantidade');
              SQL.Add('INTO  #Temp');
              SQL.Add('FROM  NotasItens');
              If cTipo.ItemIndex = 1 then begin
                 SQL.Add('WHERE(Saida_Entrada = 1) AND (Cancelada <> 1) AND (Data BETWEEN :pDataIni AND :pDataFim)');
                 SQL.Add('      AND (SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = (SELECT DISTINCT Tipo_Nota FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)))) = 1');
                 ParamByName('pDataIni').AsDateTime := cDataIni.Date;
                 ParamByName('pDataFim').AsDateTime := cDataFim.Date;
              end else begin
                 SQL.Add('WHERE(Saida_Entrada = 0) AND (Cancelada <> 1) AND (Movimenta_Inventario = 1)');
              End;
              If cProduto.KeyValue > 0 then begin
                 SQL.Add(' AND (Codigo_Mercadoria = :pCodigo)');
                 ParamByName('pCodigo').AsInteger := Dados.ProdutosCodigo.AsInteger;
              End;
              If cLinha.KeyValue > 0 then begin
                 SQL.Add(' AND (SELECT Linha FROM Produtos WHERE(Codigo = Codigo_Mercadoria)) = :pLinha');
                 ParamByName('pLinha').AsInteger := Dados.ProdutosLinhasCodigo.AsInteger;
              End;
              SQL.Add('SELECT Codigo_Mercadoria,');
              SQL.Add('       ISNULL(SUM(Quantidade), 0)                    AS Quantidade,');
              SQL.Add('       ISNULL(MIN(Valor_Total/Quantidade), 0)        AS Valor_Menor,');
              SQL.Add('       ISNULL((SUM(Valor_Total)/SUM(Quantidade)), 0) AS Valor_Medio,');
              SQL.Add('       ISNULL(MAX(Valor_Total/Quantidade), 0)        AS Valor_Maior');
              SQL.Add('INTO   #Temp2');
              SQL.Add('FROM   #Temp');
              SQL.Add('WHERE  Quantidade > 0');
              SQL.Add('GROUP  BY Codigo_Mercadoria');
              SQL.Add('SELECT #Temp2.*,');
              SQL.Add('      (SELECT Unidade FROM Produtos WHERE(Codigo = #Temp2.Codigo_Mercadoria)) AS Unidade,');
              SQL.Add('      (SELECT Descricao_Reduzida FROM Produtos WHERE (Codigo = #Temp2.Codigo_Mercadoria)) AS Descricao,');
              SQL.Add('      (SELECT Linha FROM Produtos WHERE(Codigo = Codigo_Mercadoria)) AS Linha,');
              SQL.Add('      (SELECT Descricao FROM ProdutosLinhas WHERE(Codigo = (SELECT Linha FROM Produtos WHERE(Codigo = Codigo_Mercadoria)))) AS Linha_Descricao');
              SQL.Add('FROM   #Temp2');
              if cOrdem.ItemIndex = 0 then SQL.Add('order by Linha, Codigo_Mercadoria'+iif(cDirecao.ItemIndex = 1, ' desc', ''));
              if cOrdem.ItemIndex = 1 then SQL.Add('order by Linha, Descricao'+iif(cDirecao.ItemIndex = 1, ' desc', ''));
              if cOrdem.ItemIndex = 2 then sql.add('order by Linha, Valor_Menor'+iif(cDirecao.ItemIndex = 1, ' desc', ''));
              if cOrdem.ItemIndex = 3 then sql.add('order by Linha, Valor_Medio'+iif(cDirecao.ItemIndex = 1, ' desc', ''));
              if cOrdem.ItemIndex = 4 then sql.add('order by Linha, Valor_Maior'+iif(cDirecao.ItemIndex = 1, ' desc', ''));
              SQL.Add('DROP TABLE #Temp');
              SQL.Add('DROP TABLE #Temp2');
              SQL.SaveToFile('C:\Temp\Media_Preco.sql');
              Open;
         end;
      end else begin
         with tItens do begin
              if cTipo.ItemIndex = 1 then begin
                 sql.clear;
                 sql.add(';with Resumo as');
                 sql.add('      (select pi.Codigo_Mercadoria');
                 sql.add('             ,Quantidade  = sum(pi.Quantidade)');
                 sql.add('             ,Valor_Menor = isnull(min(pi.Valor_Unitario), 0)');
                 sql.add('             ,Valor_Medio = isnull(sum(cast(pi.Valor_Unitario as decimal(18,8)) * pi.Quantidade) / nullif(sum(pi.Quantidade), 0), 0)');
                 sql.add('             ,Valor_Maior = isnull(max(pi.Valor_Unitario), 0)');
                 sql.add('       from PedidosRepresentantesItens pi');
                 sql.add('       inner join Produtos pd on pd.Codigo = pi.Codigo_Mercadoria');
                 sql.add('       where pi.Cancelado <> 1');
                 if cLinha.Text <> '' then begin
                    sql.add('       and pd.Linha = :pLinha');
                    parambyname('pLinha').asinteger := Dados.ProdutosLinhasCodigo.AsInteger;
                 end;
                 if cCodigoProduto.Value >0 then begin
                    sql.add('       and pi.Codigo_Mercadoria = :pCod');
                    parambyname('pCod').asinteger := Dados.ProdutosCodigo.AsInteger;
                 end;
                 sql.add('       and pi.Quantidade > 0');
                 sql.add('       and pi.Data >= :pDataIni');
                 sql.add('       and pi.Data <= :pDataFim');
                 sql.add('       and exists (select 1 from PedidosRepresentantes nf where nf.Pedido = pi.Pedido AND nf.Data = pi.Data) group by pi.Codigo_Mercadoria)');
                 sql.add('       select r.Codigo_Mercadoria');
                 sql.add('             ,r.Quantidade');
                 sql.add('             ,r.Valor_Menor');
                 sql.add('             ,r.Valor_Medio');
                 sql.add('             ,r.Valor_Maior');
                 sql.add('             ,p.Unidade');
                 sql.add('             ,p.Descricao_Reduzida as Descricao');
                 sql.add('             ,p.Linha');
                 sql.add('             ,pl.Descricao as Linha_Descricao');
                 sql.add('      from Resumo r');
                 sql.add('      left join Produtos p on p.Codigo = r.Codigo_Mercadoria');
                 sql.add('      left join ProdutosLinhas pl on pl.Codigo = p.Linha');
                 if cOrdem.ItemIndex = 0 then SQL.Add('order by Linha, Codigo_Mercadoria'+iif(cDirecao.ItemIndex = 1, ' desc', ''));
                 if cOrdem.ItemIndex = 1 then SQL.Add('order by Linha, Descricao'+iif(cDirecao.ItemIndex = 1, ' desc', ''));
                 if cOrdem.ItemIndex = 2 then sql.add('order by Linha, Valor_Menor'+iif(cDirecao.ItemIndex = 1, ' desc', ''));
                 if cOrdem.ItemIndex = 3 then sql.add('order by Linha, Valor_Medio'+iif(cDirecao.ItemIndex = 1, ' desc', ''));
                 if cOrdem.ItemIndex = 4 then sql.add('order by Linha, Valor_Maior'+iif(cDirecao.ItemIndex = 1, ' desc', ''));
                 parambyname('pDataIni').asdatetime := cDataIni.Date;
                 parambyname('pDataFim').asdatetime := cDataFim.Date;
                 //sql.SaveToFile('c:\Temp\Media_Preco_Vendas.sql');
                 open;
              end else begin
                 SQL.Clear;
                 SQL.Add(';with Resumo as');
                 SQL.Add('(select ni.Codigo_Mercadoria,');
                 SQL.Add('        Quantidade = sum(ni.Quantidade),');
                 if cTipo.ItemIndex = 1 then begin
                    SQL.Add('        Valor_Menor = isnull(min(ni.Valor_Total / nullif(ni.Quantidade, 0)), 0),');
                    SQL.Add('        Valor_Medio = isnull(sum(ni.Valor_Total) / nullif(sum(ni.Quantidade), 0), 0),');
                    SQL.Add('        Valor_Maior = isnull(max(ni.Valor_Total / nullif(ni.Quantidade, 0)), 0)');
                 end else begin
                    SQL.Add('        Valor_Menor = isnull(min((ni.Valor_Liquido+isnull(ni.Valor_ICMSOper,0)+isnull(ni.Valor_IPI,0)+(isnull(ni.Valor_PIS,0)+isnull(ni.Valor_COFINS,0)*ni.Quantidade))/nullif(ni.Quantidade, 0)), 0),');
                    SQL.Add('        Valor_Medio = isnull(sum(ni.Valor_Liquido +isnull(ni.Valor_ICMSOper,0)+isnull(ni.Valor_IPI,0)+(isnull(ni.Valor_PIS,0)+isnull(ni.Valor_COFINS,0)*ni.Quantidade))/nullif(sum(ni.Quantidade), 0), 0),');
                    SQL.Add('        Valor_Maior = isnull(max((ni.Valor_Liquido+isnull(ni.Valor_ICMSOper,0)+isnull(ni.Valor_IPI,0)+(isnull(ni.Valor_PIS,0)+isnull(ni.Valor_COFINS,0)*ni.Quantidade))/nullif(ni.Quantidade, 0)), 0)');
                 end;
                 SQL.Add('    from NotasTerceirosItens ni');
                 SQL.Add('    inner join Produtos pf on pf.Codigo = ni.Codigo_Mercadoria');
                 SQL.Add('    where (ni.Data_Entrada >= :pDataIni and ni.Data_Entrada <= :pDataFim)');
                 SQL.Add('    and ni.Movimenta_Estoque = 1');
                 SQL.Add('    and ni.Quantidade > 0');
                 if cProduto.KeyValue > 0 then begin
                    SQL.Add('      and ni.Codigo_Mercadoria = :pCodigo');
                    ParamByName('pCodigo').AsInteger := Dados.ProdutosCodigo.AsInteger;
                 end;
                 if cLinha.KeyValue > 0 then begin
                    SQL.Add('      and pf.Linha = :pLinha');
                    ParamByName('pLinha').AsInteger := Dados.ProdutosLinhasCodigo.AsInteger;
                 end;
                 SQL.Add('    group by ni.Codigo_Mercadoria');
                 SQL.Add(')');
                 SQL.Add('select');
                 SQL.Add('    r.Codigo_Mercadoria,');
                 SQL.Add('    r.Quantidade,');
                 SQL.Add('    r.Valor_Menor,');
                 SQL.Add('    r.Valor_Medio,');
                 SQL.Add('    r.Valor_Maior,');
                 SQL.Add('    p.Unidade,');
                 SQL.Add('    p.Descricao_Reduzida AS Descricao,');
                 SQL.Add('    p.Linha,');
                 SQL.Add('    pl.Descricao AS Linha_Descricao');
                 SQL.Add('from Resumo r');
                 SQL.Add('left join Produtos p on p.Codigo = r.Codigo_Mercadoria');
                 SQL.Add('left join ProdutosLinhas pl on pl.Codigo = p.Linha');
                 case cOrdem.ItemIndex of
                     0: SQL.Add('order by p.Linha, r.Codigo_Mercadoria');
                     1: SQL.Add('order by p.Linha, p.Descricao_Reduzida');
                     2: SQL.Add('order by p.Linha, r.Valor_Menor');
                     3: SQL.Add('order by p.Linha, r.Valor_Medio');
                     4: SQL.Add('order by p.Linha, r.Valor_Maior');
                 else
                     SQL.Add('order by p.Linha, r.Codigo_Mercadoria');
                 end;
                 if cDirecao.ItemIndex = 1 then SQL.Add('DESC');
                 parambyname('pDataIni').asdatetime := cDataIni.Date;
                 parambyname('pDataFim').asdatetime := cDataFim.Date;
                 //SQL.SaveToFile('C:\Temp\Media_Preco_Compras.sql');
                 Open;
              end;
         end;
      end;
      Screen.Cursor := crDefault;

      If tItens.RecordCount > 0 then begin
         lPeriodo.Caption := 'Período de '+cDataIni.Text + ' a '+cDataFim.Text;
         If cTipo.ItemIndex = 0 then
            lTitulo.Caption := 'Média de Preço (COMPRA)'
         else
            lTitulo.Caption := 'Média de Preço (VENDA)';

         If cExcel.Checked = false then begin
            if FileExists(Dados.EmpresasLogo.Value) then begin
               iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
            end;
            //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
            rMediaValor.Print;
            rMediaValor.Reset;
         end else begin
            ExportaExcel;
         End;
      end else begin
         ShowMessage('Não há dados para o relatório solicitado!');
      End;
end;

procedure TImpressao_Faturamento_MediaVenda.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_MEDIA', 'DataIni', cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_MEDIA', 'DataFim', cDataFim.Date );
      If cProduto.KeyValue > 0 then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Produto', cProduto.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Produto', 0);

      If cLinha.KeyValue > 0 then
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Linha'  , cLinha.KeyValue)
      else
         aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Linha'  , 0);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Tipo', cTipo.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Ordem', cOrdem.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Direacao', cDirecao.ItemIndex);
      aINI.Free;
end;

procedure TImpressao_Faturamento_MediaVenda.cProdutoChange(Sender: TObject);
begin
      If cProduto.KeyValue > 0 then begin
         cLinha.KeyValue := 0;
         cLinha.Enabled  := false;
         lLinha.Enabled  := false;
         cCodigoProduto.AsInteger := Dados.ProdutosCodigo.AsInteger;
      End;     
end;

procedure TImpressao_Faturamento_MediaVenda.bPesquisaCEPClick(Sender: TObject);
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
      cProduto.KeyValue    := Dados.ProdutosCodigo.Value;
      Screen.Cursor        := crDefault;
end;

procedure TImpressao_Faturamento_MediaVenda.cCodigoProdutoExit(Sender: TObject);
begin
      cProduto.KeyValue := null;
      if cCodigoProduto.AsInteger > 0 then begin
         Dados.Produtos.Locate('Codigo', cCodigoProduto.AsInteger, [loCaseInsensitive]);
         cProduto.KeyValue := Dados.ProdutosCodigo.Value;
      end;
end;

procedure TImpressao_Faturamento_MediaVenda.bLimparClick(Sender: TObject);
begin
     cTipo.ItemIndex := 0;
     cDataIni.Clear;
     cDataFim.Clear;
     cCodigoProduto.Clear;
     cProduto.ClearValue;
     cLinha.ClearValue;
     cLinha.Enabled := true;
     lLinha.Enabled := true;
end;

// Envia informações para o excel.
procedure TImpressao_Faturamento_MediaVenda.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := titens.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','G3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','G3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','G3'].Font.Bold         := true;
       mPlanilha.Range['A3','G3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','G3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','G3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','G3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'CÓDIGO';
       mPlanilha.Cells[3,02] := 'DESCRIÇÃO';
       mPlanilha.Cells[3,03] := 'UM';
       mPlanilha.Cells[3,04] := 'QUANTIDADE';
       mPlanilha.Cells[3,05] := 'VALOR MENOR';
       mPlanilha.Cells[3,06] := 'VALOR MÉDIO';
       mPlanilha.Cells[3,07] := 'VALOR MAIOR';

       mPlanilha.Range['A3','G3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','G3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','G3'].Font.Size           := 8;

       mLinha := 4;

       While (not tItens.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size := 8;

             mPlanilha.Cells[mLinha,01] := tItens.FieldByName('Codigo_Mercadoria').AsInteger;
             mPlanilha.Cells[mLinha,02] := tItens.FieldByName('Descricao').AsString;
             mPlanilha.Cells[mLinha,03] := tItens.FieldByName('Unidade').AsString;
             mPlanilha.Cells[mLinha,04] := tItens.FieldByName('Quantidade').AsFloat;
             mPlanilha.Cells[mLinha,05] := tItens.FieldByName('Valor_Menor').AsCurrency;
             mPlanilha.Cells[mLinha,06] := tItens.FieldByName('Valor_Medio').AsCurrency;
             mPlanilha.Cells[mLinha,07] := tItens.FieldByName('Valor_Maior').AsCurrency;

             mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,000_);(#.##0,000)';
             mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';

             tItens.Next;
             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       //Fecha o Excel
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Columns.Autofit;

       If Dados.EmpresasMatriz_Filial.AsBoolean = true then
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' MATRIZ ('+ Dados.EmpresasEstado.AsString+')'
       else
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' FILIAL ' + Dados.EmpresasNumero_Filial.AsString +' (' + Dados.EmpresasEstado.AsString+')';

       mPlanilha.Range['A1','A1'].Font.Size           := 14;
       mPlanilha.Range['A1','A1'].Font.Bold           := true;
       mPlanilha.Range['A1','G1'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','G1'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','G1'].Mergecells          := True;
       mPlanilha.Range['A2','G2'].Mergecells          := True;
       mPlanilha.Range['A2','G2'].HorizontalAlignment := 3;
       mPlanilha.Range['A2','G2'].VerticalAlignment   := 2;

       mPlanilha.Cells[2,01]                := lPeriodo.Caption;
       mPlanilha.Range['A2','A2'].Font.Size := 10;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;



end.



