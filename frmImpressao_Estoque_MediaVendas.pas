unit frmImpressao_Estoque_MediaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Menus, Vcl.StdCtrls, Vcl.ExtCtrls, ImgList, Vcl.ComCtrls, Buttons, NFe_Util_2G_TLB, IniFiles,
  Types, OleCtrls, AppEvnts, DB, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, idftpcommon, CalcExpress, DBAccess, MSAccess, jpeg, dateutils, maskutils, 
  MSClasses, System.ImageList, System.UITypes, mmSystem, vcl.Styles, RxCtrls, shellapi, MemDS, ComObj, ppBands, ppDB, ppCtrls, ppParameter, ppDesignLayer, ppClass, ppVar, ppStrtch, ppMemo, ppPrnabl, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, Vcl.Mask, RxLookup, RxToolEdit, Vcl.Samples.Spin, Vcl.OleServer, ClipBrd;

type
  TImpressao_Estoque_MediaVendas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    StaticText6: TStaticText;
    cProduto: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cLinha: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cNCM: TMaskEdit;
    tItens: TMSQuery;
    dstItens: TDataSource;
    cSaldo: TCheckBox;
    StaticText4: TStaticText;
    cCliente: TRxDBLookupCombo;
    tClientes: TMSQuery;
    dstClientes: TDataSource;
    tClientesCodigo: TIntegerField;
    tClientesCNPJ: TStringField;
    tClientesNome: TStringField;
    tProdutos: TMSQuery;
    dstProdutos: TDataSource;
    StaticText7: TStaticText;
    cMesIni: TSpinEdit;
    StaticText8: TStaticText;
    cAnoIni: TSpinEdit;
    StaticText9: TStaticText;
    cAnoFim: TSpinEdit;
    StaticText10: TStaticText;
    cMesFim: TSpinEdit;
    bPesqProd: TSpeedButton;
    bPesqCli: TSpeedButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bPesqProdClick(Sender: TObject);
    procedure bPesqCliClick(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Estoque_MediaVendas: TImpressao_Estoque_MediaVendas;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal, funcoes, frmJanela_Processamento, frmPesquisaGerais;

procedure TImpressao_Estoque_MediaVendas.bImprimirClick(Sender: TObject);
var
   m, a, i: integer;
   msoma,mmedia: string;
begin
     Screen.Cursor := crSQLWait;
     with tItens do begin
          sql.Clear; 
          sql.add('select Codigo_Mercadoria');
          sql.Add('      ,Linha_Cod = (select pr.Linha from Produtos pr where pr.Codigo = Codigo_Mercadoria)');
          // Colunas dos meses.
          for a := cAnoIni.value to cAnoFim.Value do begin
              for m := cMesIni.value to cMesFim.Value do begin
                  sql.add('      ,'+NomeMes(m)+'_'+inttostr(a)+' = ['+inttostr(m)+inttostr(a)+']');
              end;
          end;
          sql.add('into #temp');
          sql.add('from (select Codigo_Mercadoria');
          sql.add('            ,Quantidade = sum(Quantidade)');
          sql.add('            ,Mes = cast(month(Data) as varchar(2))+cast(YEAR(Data) as varchar(4))');
          sql.add('from PedidosRepresentantesItens pri');
          sql.add('where Cancelado <> 1');
          sql.add('and year(Data) between :pAnoIni and :pAnoFim');
          sql.add('and month(Data) between :pMesIni and :pMesFim');

          sql.add('and Codigo_Mercadoria > 0');
          sql.add('and Cancelado <> 1');
          if Trim(cProduto.Text) <> '' then begin
             sql.Add('and (pri.Codigo_Mercadoria = :pCodigo)');
             ParamByName('pCodigo').AsInteger := tProdutos.FieldByName('Codigo').AsInteger;
          end;
          if cCliente.Text <> '' then begin
             sql.add('and (select Cliente from PedidosRepresentantes pr where pr.pedido = pri.pedido) = :pCliente');
             parambyname('pCliente').AsInteger := tClientes.FieldByName('Codigo').AsInteger;
          end;
          if Trim(cLinha.Text) <> '' then begin
             sql.Add('and (select Linha from Produtos prd where prd.Codigo = pri.Codigo_Mercadoria) = :pLinha');
             parambyname('pLinha').AsInteger := Dados.ProdutosLinhasCodigo.AsInteger;
          end;
          if Trim(cNCM.Text) <> ''  then begin
             tItens.SQL.Add('and (select NCM From Produtos prd where prd.Codigo = pri.Codigo_Mercadoria) = :pNCM');
             tItens.ParamByName('pNCM').AsString := cNCM.Text;
          end;
          sql.add('group by Codigo_Mercadoria, cast(month(Data) as varchar(2))+cast(YEAR(Data) as varchar(4))) as Tabela');

          // Soma dos meses.
          msoma := 'pivot (sum(Quantidade) for Mes in(';
          for a := cAnoIni.Value  to cAnoFim.value do begin
              for m := cMesIni.value to cMesFim.Value do begin
                  msoma := msoma + '['+inttostr(m)+inttostr(a)+'],';
              end;                   
          end;
          msoma := copy(msoma,1,length(msoma)-1)+')) as PivotTable';
          sql.Add(msoma);

          sql.add('select Produto = Codigo_Mercadoria');
          sql.add('      ,SKU = rtrim(ltrim((select pr.Codigo_SKU from Produtos pr where pr.Codigo = #temp.Codigo_Mercadoria)))');
          sql.Add('      ,Linha = (select Descricao from ProdutosLinhas pl where pl.Codigo = Linha_Cod)');
          sql.add('      ,Descricao = (select pr.Descricao_Reduzida from Produtos pr where pr.Codigo = #temp.Codigo_Mercadoria)');

          // Colunas dos meses.
          for a := cAnoIni.Value  to cAnoFim.value do begin
              for m := cMesIni.value to cMesFim.Value do begin
                  sql.add('      ,'+NomeMes(m)+'_'+inttostr(a)+' = isnull('+NomeMes(m)+'_'+inttostr(a)+', 0)');
              end;
              // Média dos meses.
              mmedia := '      ,Media_'+inttostr(a)+' = (';
              for m := cMesIni.value to cMesFim.Value do begin
                  mmedia := mmedia + 'isnull('+NomeMes(m)+'_'+inttostr(a)+', 0)+';
              end;
              mmedia := copy(mmedia, 1, length(mmedia)-1)+') / '+inttostr((cMesFim.value - cmesIni.Value)+1);
              sql.Add(mmedia);
          end;
     
          sql.add('      ,Estoque = cast((isnull((select sum(Quantidade) from NotasItens where Codigo_Mercadoria = #Temp.Codigo_Mercadoria and Saida_Entrada = 0 and Movimenta_Estoque = 1 and Cancelada <> 1 and isnull(NFe_Denegada, 0) = 0), 0) +');
          sql.add('                       isnull((select sum(Quantidade) from NotasTerceirosItens where Codigo_Mercadoria = #Temp.Codigo_Mercadoria and Movimenta_Estoque = 1), 0) +');
          sql.add('                       isnull((select sum(Quantidade_Entrada) from ProdutosTransferencia where Produto_Entrada = #Temp.Codigo_Mercadoria), 0) -');
          sql.add('                       isnull((select sum(Quantidade) from NotasItens nfi where Codigo_Mercadoria = #Temp.Codigo_Mercadoria and Saida_Entrada = 1 and Movimenta_Estoque = 1 and Cancelada <> 1 and isnull(NFe_Denegada, 0) = 0');
          sql.Add('                               and (select Finalidade_Mercadoria from TipoNota tpn where tpn.Codigo = nfi.Tipo_Nota) <> 4), 0) -');
          sql.add('                       isnull((select sum(Quantidade) from PedidosItens pdi where Codigo_Mercadoria = #Temp.Codigo_Mercadoria and Saida_Entrada = 1 and Movimenta_Estoque = 1');
          sql.Add('                               and (select Finalidade_Mercadoria from TipoNota tpn where tpn.Codigo = pdi.Tipo_Nota) <> 4), 0)) -');
          sql.add('                       isnull((select sum(Quantidade) from ProdutosTransferencia where Produto_Saida = #Temp.Codigo_Mercadoria), 0) -');
          sql.add('                       isnull((select sum(Quantidade) from PedidosRepresentantesItens pri where Codigo_Mercadoria = #Temp.Codigo_Mercadoria and isnull(Faturamento, 0) = 0 and isnull(Faturado, 0) = 0');
          sql.Add('                               and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0), 0) ');
          sql.add('                       as decimal(14,3))');
          sql.add('        ,Custo = (select isnull(Valor_Entrada, 0) from Produtos prd where prd.Codigo = #temp.Codigo_Mercadoria)');
          sql.add('into #temp2');
          sql.add('from #temp');
          sql.add('select *, Total = cast(Custo * Estoque as money) from #temp2');
          if cSaldo.Checked then begin
             sql.add('where Estoque > 0');
          end;
          sql.add('order by Linha, Produto');
          sql.add('drop table #temp, #temp2');
          parambyname('pAnoIni').Value := cAnoIni.Value;
          parambyname('pAnoFim').Value := cAnoFim.Value;
          parambyname('pMesIni').Value := cMesIni.Value;
          parambyname('pMesFim').Value := cMesFim.Value;
          //sql.SaveToFile('c:\temp\Estoque_Media_Venda_Dinamico.sql');
          open;
     end;
    
     ExportaExcel;

     Screen.Cursor := crDefault;
end;

// Envia informações para o excel.
procedure TImpressao_Estoque_MediaVendas.ExportaEXCEL;
var
   mPlanilha, img: Variant;
   mLin, i, c, l, li, lf: Integer;
   mPeriodo
  ,mRange
  ,mRange2
  ,mcoluna
  ,coli
  ,colf
  ,mLinProd: string;
  mDescricao: widestring;
begin
     Janela_Processamento := TJanela_Processamento.Create(Self);
     Janela_Processamento.Progresso.Position := 0;
     Janela_Processamento.Progresso.Max      := titens.RecordCount;
     Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
     Janela_Processamento.Show;

     mPlanilha := CreateOleObject('Excel.Application');
     mPlanilha.Visible := false;
     mPlanilha.WorkBooks.add(1);

     mPlanilha.Range['A1', 'FZ5000'].VerticalAlignment := 2;
     mPlanilha.Range['A6', 'FZ5000'].Borders.LineStyle := 1; //xlContinuous;
     mPlanilha.Range['A6', 'FZ5000'].Borders.Weight    := 2; //xlThin;
     mPlanilha.Range['A6', 'FZ5000'].Borders.Color     := clsilver;
     mPlanilha.Range['A6', 'FZ5000'].Font.Size         := 8;
     
     if Dados.EmpresasMatriz_Filial.AsBoolean = true then
        mPlanilha.Cells[01,01] := Dados.EmpresasRazao_Social.AsString +' - MATRIZ ('+ Dados.EmpresasEstado.AsString+')'
     else
        mPlanilha.Cells[01,01] := Dados.EmpresasRazao_Social.AsString +' - FILIAL ' + Dados.EmpresasNumero_Filial.AsString +' (' + Dados.EmpresasEstado.AsString+')';

     // Logo
     if FileExists(Dados.Empresas.FieldByName('Logo').AsString) then begin
        Img                            := mPlanilha.Worksheets[1].Pictures.Insert(Dados.Empresas.FieldByName('Logo').AsString);
        Img.ShapeRange.LockAspectRatio := false;
        Img.Left                       := 15;     // Posição horizontal da imagem
        Img.Top                        := 10;     // Posição vertical da imagem
        Img.Width                      := 80;     // Largura da imagem
        Img.Height                     := 42;     // Altura da imagem
     end;

     l := 65;
     for c := 0 to pred(tItens.FieldCount) do begin          
         if c < 26 then mRange := char(l); 
         if (c > 25) and (c < 52) then mRange := 'A'+char(l); 
         if (c > 52) and (c < 77) then mRange := 'B'+char(l);
         inc(l);
         if l > 90 then l := 65;
     end;
     l := 65;
     for c := 0 to pred(tItens.FieldCount)-3 do begin          
         if c < 26 then mRange2 := char(l); 
         if (c > 25) and (c < 52) then mRange2 := 'A'+char(l); 
         if (c > 52) and (c < 77) then mRange2 := 'B'+char(l);
         inc(l);
         if l > 90 then l := 65;
     end;
     
     mPlanilha.Range['A1',mRange+'1'].Font.Size           := 20;
     mPlanilha.Range['A1',mRange+'3'].Font.Bold           := true;
     mPlanilha.Range['A1',mRange+'1'].HorizontalAlignment := 3;
     mPlanilha.Range['A1',mRange+'1'].Mergecells          := True;
     mPlanilha.Range['A2',mRange+'2'].Mergecells          := True;
     mPlanilha.Range['A2',mRange+'2'].HorizontalAlignment := 3;
     mPlanilha.Range['A2',mRange+'2'].VerticalAlignment   := 2;
     mPlanilha.Range['A3',mRange+'3'].Mergecells          := True;
     mPlanilha.Range['A3',mRange+'3'].HorizontalAlignment := 3;
     mPlanilha.Range['A3',mRange+'3'].VerticalAlignment   := 2;

     mPeriodo := '| Período: 01/'+PoeZero(2, cMesIni.value)+'/'+cAnoIni.text + ' á ' + datetostr(UltimoDiaMes(strtodate('01/'+PoeZero(2, cMesFim.value)+'/'+cAnoFim.text)))+ ' | ';
     if cCliente.Text <> '' then begin
        mPeriodo := mPeriodo +tClientes.FieldByName('Nome').asstring+'  '+FormatMaskText('00\.000\.000\/0000\-00;0;', tClientes.FieldByName('CNPJ').asstring) + ' | ';
     end;
     if cNCM.Text <> '' then begin
        mPeriodo := mPeriodo + ' NCM: '+FormatMaskText('0000\.00\.00;0;', cNCM.Text)+' | ';
     end;
     
     mPlanilha.Cells[02,01]                     := 'MÉDIA MENSAL DE VENDAS';
     mPlanilha.Cells[03,01]                     := mPeriodo;
     mPlanilha.Range['A2',mRange+'2'].Font.Size := 16;
     mPlanilha.Range['A3',mRange+'3'].Font.Size := 12;

     mPlanilha.Range['E5',mRange2+'5'].Interior.Color      := RGB(198, 224, 180);
     mPlanilha.Range['E5',mRange2+'5'].Interior.Pattern    := 1;
     mPlanilha.Range['E5',mRange2+'5'].Font.Bold           := true;
     mPlanilha.Range['E5',mRange2+'5'].Font.Color          := clBlack;
     mPlanilha.Range['E5',mRange2+'5'].Borders.LineStyle   := 1; //xlContinuous;
     mPlanilha.Range['E5',mRange2+'5'].Borders.Weight      := 2; //xlThin;
     mPlanilha.Range['E5',mRange2+'5'].Borders.Color       := RGB(0,0,0);
     mPlanilha.Range['E5',mRange2+'5'].HorizontalAlignment := 3;
     mPlanilha.Range['E5',mRange2+'5'].Font.Size           := 14;
     mPlanilha.Range['E5',mRange2+'5'].rowheight           := 20; 

     // Nomes das colunas.
     mPlanilha.Range['A6',mRange+'6'].Interior.Color      := RGB(102, 102, 153);
     mPlanilha.Range['A6',mRange+'6'].Interior.Pattern    := 1;
     mPlanilha.Range['A6',mRange+'6'].Font.Bold           := true;
     mPlanilha.Range['A6',mRange+'6'].Font.Color          := clWhite;
     mPlanilha.Range['A6',mRange+'6'].Borders.LineStyle   := 1; //xlContinuous;
     mPlanilha.Range['A6',mRange+'6'].Borders.Weight      := 2; //xlThin;
     mPlanilha.Range['A6',mRange+'6'].Borders.Color       := RGB(0,0,0);
     mPlanilha.Range['A6',mRange+'6'].HorizontalAlignment := 3;
     mPlanilha.Range['A6',mRange+'6'].Font.Size           := 8;
     mPlanilha.Range['A6',mRange+'6'].rowheight           := 20; 

     // Nomes das colunas "Campos".
     coli := '';
     colf := '';
     l    := 65;
     i    := 1;
     for c := 0 to pred(tItens.FieldCount) do begin          
         mColuna                := stringReplace(ApenasLetras(tItens.Fields[c].FieldName), '_', '', [rfReplaceAll]);
         mPlanilha.Cells[6,c+1] := mColuna;
         if mColuna = NomeMes(cMesIni.value) then begin
            if c < 26 then coli := char(l); 
            if (c > 25) and (c < 52) then coli := 'A'+char(l); 
            if (c > 52) and (c < 77) then coli := 'B'+char(l); 
            mPlanilha.cells[5, c+1] := 'ANO '+inttostr(cAnoIni.value-1 + i);
         end;         
         if mcoluna = 'Media' then begin
            if c < 26 then colf := char(l);
            if (c > 25) and (c < 52) then colf := 'A'+char(l); 
            if (c > 52) and (c < 77) then colf := 'B'+char(l); 
            mPlanilha.Range[coli+'5', colf+'5'].Mergecells := True;
            inc(i);
         end;         
         inc(l);
         if l > 90 then l := 65;
     end;
           
     mLin     := 7;
     li       := 7;
     lf       := 7;
     mLinProd := tItens.Fieldbyname('Linha').asstring;
     
     while not tItens.Eof and not Funcoes.Cancelado do begin
           for c := 0 to pred(tItens.FieldCount) do begin          
               if (tItens.Fields[c].DataType = ftinteger) or (tItens.Fields[c].DataType = ftsmallint) then begin
                  mPlanilha.Cells[mLin,c+1] := tItens.Fields[c].asinteger;
               end;
               if tItens.Fields[c].DataType = ftfloat then begin 
                  mPlanilha.Cells[mLin,c+1] := tItens.Fields[c].asfloat;
                  mPlanilha.Cells[mLin,c+1].NumberFormat := '#.##0,000_);(#.##0,000)';
               end;
               if tItens.Fields[c].DataType = ftcurrency then begin 
                  mPlanilha.Cells[mLin,c+1] := tItens.Fields[c].AsCurrency;
                  mPlanilha.Cells[mLin,c+1].NumberFormat := '#.##0,00_);(#.##0,00)';
               end;   
               if tItens.Fields[c].DataType = ftString then begin 
                  mPlanilha.Cells[mLin,c+1] := tItens.Fields[c].asstring;
               end;
               if (tItens.Fields[c].FieldName = 'Estoque') or (tItens.Fields[c].FieldName = 'Custo') or (tItens.Fields[c].FieldName = 'Total')then begin
                  mPlanilha.Cells[mLin,c+1].Interior.Color := RGB(217, 225, 242);
               end;
               if pos('Media', tItens.Fields[c].FieldName) > 0 then begin
                  mPlanilha.Cells[mLin,c+1].Interior.Color := RGB(198, 224, 180);
               end;
           end;
           
           tItens.Next;
           Inc(mLin);
           inc(lf);
           
           if (tItens.Fieldbyname('Linha').asstring <> mLinProd) or tItens.eof then begin
              mPlanilha.Cells[mLin, 4] := 'TOTAL DA LINHA '+mLinProd;
              l := 69;
              for c := 5 to tItens.FieldCount do begin          
                  mPlanilha.Cells[mLin, c] := concat('=SUM(',char(l), inttostr(li), ':',char(l), inttostr(lf-1),')');
                  if c < 26 then mRange := char(l); 
                  if (c > 25) and (c < 52) then mRange := 'A'+char(l); 
                  if (c > 52) and (c < 77) then mRange := 'B'+char(l);
                  inc(l);
                  if l > 90 then l := 69;
              end;
              
              mPlanilha.Range['D'+inttostr(mLin), mRange+inttostr(mLin)].rowheight           := 15; 
              mPlanilha.Range['D'+inttostr(mLin), mRange+inttostr(mLin)].Font.bold           := 8;
              mPlanilha.Range['D'+inttostr(mLin), mRange+inttostr(mLin)].Font.color          := clwhite;
              mPlanilha.Range['D'+inttostr(mLin), mRange+inttostr(mLin)].Interior.Color      := RGB(102, 102, 153);
              mPlanilha.Range['D'+inttostr(mLin), 'D'+inttostr(mLin)].HorizontalAlignment    := 3;
              mPlanilha.Range['D'+inttostr(mLin), mRange+inttostr(mLin)].HorizontalAlignment := 1;
              mLinProd := tItens.Fieldbyname('Linha').asstring;
              Inc(mLin,2);
              li := mlin;
              lf := mlin;
           end;
             
           Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
           Application.ProcessMessages;
     end;

     // Fecha o Excel
     if Funcoes.Cancelado then begin
        Abort;
        mPlanilha.Free;
        mPlanilha.Destroy;
     end;
     Janela_Processamento.Close;
     
     mPlanilha.Columns.Autofit;
     mPlanilha.Visible := true;
     
     // Congela as linhas do cabeçalho (Obs: só funcionou depois do visible = true).
     mPlanilha.Rows[7].Select;
     mPlanilha.ActiveWindow.FreezePanes := True;
end;

procedure TImpressao_Estoque_MediaVendas.bPesqProdClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Produtos';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Desativado <> 1';
      PesquisaGerais.Showmodal;          
      cProduto.KeyValue := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
end;

procedure TImpressao_Estoque_MediaVendas.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_Estoque_MediaVendas.FormClose(Sender: TObject; var Action: TCloseAction);
Var
    aIni:TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'AnoIni' , cAnoIni.value);
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'AnoFim' , cAnoFim.value);
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'MesIni' , cMesIni.value);
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'MesFim' , cMesFim.value);
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'Produto', iif(cProduto.KeyValue > 0, cProduto.KeyValue, 0));
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'Linha'  , iif(cLinha.KeyValue > 0, cLinha.KeyValue, 0));
      aINI.WriteString ('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'NCM'    , cNCM.Text);
      aINI.WriteBool   ('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'Saldo'  , cSaldo.Checked);
      aINI.WriteInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'Cliente', iif(cCliente.KeyValue > 0, cCliente.KeyValue, 0));
      aINI.Free;

      Impressao_Estoque_MediaVendas.Release;
      Impressao_Estoque_MediaVendas := nil;
end;

procedure TImpressao_Estoque_MediaVendas.FormShow(Sender: TObject);
Var
    aIni:TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cAnoIni.value     := aINI.ReadInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'AnoIni', yearof(Date));
      cAnoFim.value     := aINI.ReadInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'AnoFim', yearof(Date));
      cMesIni.value     := aINI.ReadInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'MesIni', monthof(Date));
      cMesFim.value     := aINI.ReadInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'MesFim', monthof(Date));
      cProduto.KeyValue := aINI.ReadInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'Produto', 0);
      cLinha.KeyValue   := aINI.ReadInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'Linha'  , 0);
      cNCM.Text         := aINI.ReadString ('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'NCM'    , '');
      cSaldo.Checked    := aINI.ReadBool   ('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'Saldo'  , True);
      cCliente.KeyValue := aINI.ReadInteger('IMPRESSAO_ESTOQUE_MEDIAVENDA', 'Cliente', 0);
      aINI.Free;
end;

procedure TImpressao_Estoque_MediaVendas.bPesqCliClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Clientes';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Ativo = 1 and Codigo in(select distinct Cliente from PedidosRepresentantes)';
      PesquisaGerais.Showmodal;
      cCliente.KeyValue := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
end;

procedure TImpressao_Estoque_MediaVendas.FormCreate(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
      with Dados do begin
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
           with tProdutos do begin
                sql.clear;
                sql.add('select Codigo');
                sql.Add('      ,Codigo_Fabricante');
                sql.Add('      ,Descricao_Reduzida');
                sql.Add('from Produtos');
                sql.add('where Codigo in((select distinct Codigo_Mercadoria ');
                sql.add('                 from NotasItens ');
                sql.add('                 where Saida_Entrada = 1');
                sql.add('                 and Cancelada <> 1');
                sql.add('                 union all');
                sql.add('                 select distinct Codigo_Mercadoria');
                sql.add('                 from PedidosRepresentantesItens');
                sql.add('                 where Cancelado <> 1))');
                sql.add('order by Descricao_Reduzida');
                open;
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
                sql.Add('select Codigo, CNPJ, Nome  from Clientes where Codigo in(select distinct Cliente from PedidosRepresentantes) order by Nome');
                open;
           end;
      end;
      Screen.Cursor := crDefault;
end;


end.
