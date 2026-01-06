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
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape19: TppShape;
    ppLabel21: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape5: TppShape;
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
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date     := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_MEDIA', 'DataIni', Date );
      cDataFim.Date     := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_MEDIA', 'DataFim', Date );
      cProduto.KeyValue := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Produto', 0 );
      cLinha.KeyValue   := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Linha'  , 0 );
      cTipo.ItemIndex   := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Tipo'   , 0 );
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
      
      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT Codigo_Mercadoria,');
      If cTipo.ItemIndex = 1 then begin
         tItens.SQL.Add('       Valor_Total,');
      end else begin
         tItens.SQL.Add('       (Valor_Total + Valor_ICMSOper + Total_IPI + (Valor_PIS+Valor_COFINS * Quantidade)) AS Valor_Total,');
      End;   
      tItens.SQL.Add('       Quantidade');
      tItens.SQL.Add('INTO  #Temp');
      tItens.SQL.Add('FROM  NotasItens');
      If cTipo.ItemIndex = 1 then begin
         tItens.SQL.Add('WHERE(Saida_Entrada = 1) AND (Cancelada <> 1) AND (Data BETWEEN :pDataIni AND :pDataFim)');
         tItens.SQL.Add('      AND (SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = (SELECT DISTINCT Tipo_Nota FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)))) = 1');
         tItens.ParamByName('pDataIni').AsDateTime := cDataIni.Date;
         tItens.ParamByName('pDataFim').AsDateTime := cDataFim.Date;
      end else begin
         tItens.SQL.Add('WHERE(Saida_Entrada = 0) AND (Cancelada <> 1) AND (Movimenta_Inventario = 1)');
      End;
      If cProduto.KeyValue > 0 then begin
         tItens.SQL.Add(' AND (Codigo_Mercadoria = :pCodigo)');
         tItens.ParamByName('pCodigo').AsInteger := Dados.ProdutosCodigo.AsInteger;
      End;

      If cLinha.KeyValue > 0 then begin
         tItens.SQL.Add(' AND (SELECT Linha FROM Produtos WHERE(Codigo = Codigo_Mercadoria)) = :pLinha');
         tItens.ParamByName('pLinha').AsInteger := Dados.ProdutosLinhasCodigo.AsInteger;
      End;

      tItens.SQL.Add('SELECT Codigo_Mercadoria,');
      tItens.SQL.Add('       ISNULL(SUM(Quantidade), 0)                    AS Quantidade,');
      tItens.SQL.Add('       ISNULL(MIN(Valor_Total/Quantidade), 0)        AS Valor_Menor,');
      tItens.SQL.Add('       ISNULL((SUM(Valor_Total)/SUM(Quantidade)), 0) AS Valor_Medio,');
      tItens.SQL.Add('       ISNULL(MAX(Valor_Total/Quantidade), 0)        AS Valor_Maior');
      tItens.SQL.Add('INTO   #Temp2');
      tItens.SQL.Add('FROM   #Temp');
      tItens.SQL.Add('WHERE  Quantidade > 0');
      tItens.SQL.Add('GROUP  BY Codigo_Mercadoria');
      tItens.SQL.Add('SELECT #Temp2.*,');
      tItens.SQL.Add('      (SELECT Unidade FROM Produtos WHERE(Codigo = #Temp2.Codigo_Mercadoria)) AS Unidade,');
      tItens.SQL.Add('      (SELECT Descricao_Reduzida FROM Produtos WHERE (Codigo = #Temp2.Codigo_Mercadoria)) AS Descricao,');
      tItens.SQL.Add('      (SELECT Linha FROM Produtos WHERE(Codigo = Codigo_Mercadoria)) AS Linha,');
      tItens.SQL.Add('      (SELECT Descricao FROM ProdutosLinhas WHERE(Codigo = (SELECT Linha FROM Produtos WHERE(Codigo = Codigo_Mercadoria)))) AS Linha_Descricao');
      tItens.SQL.Add('FROM   #Temp2');

      If cOrdem.ItemIndex = 0 then tItens.SQL.Add('ORDER  BY Linha, Codigo_Mercadoria');
      If cOrdem.ItemIndex = 1 then tItens.SQL.Add('ORDER  BY Linha, Descricao');

      tItens.SQL.Add('DROP TABLE #Temp');
      tItens.SQL.Add('DROP TABLE #Temp2');

      //titens.SQL.SaveToFile('C:\Temp\Media_Preco.txt');
      tItens.Open;
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
      aINI.WriteInteger('IMPRESSAO_FATURAMENTO_MEDIA', 'Tip', cTipo.ItemIndex);

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
      Dados.Produtos.Locate('Codigo', cCodigoProduto.AsInteger, [loCaseInsensitive]);
      cProduto.KeyValue := Dados.ProdutosCodigo.Value;
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



