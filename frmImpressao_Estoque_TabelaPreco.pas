unit frmImpressao_Estoque_TabelaPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppVar, DB, DBAccess, MSAccess, ppDBPipe,
  ppParameter, ppBands, ppCtrls, ppPrnabl, ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, IniFiles,
  ComObj, MemDS, ppDB, ppDesignLayer, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppStrtch, ppMemo, Vcl.DBCtrls;

type
  TImpressao_Estoque_TabelaPreco = class(TForm)
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cOrdem: TRadioGroup;
    cExcel: TCheckBox;
    cSaldo: TCheckBox;
    rTabela: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppParameterList1: TppParameterList;
    pProdutos: TppDBPipeline;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    pEmpresas: TppDBPipeline;
    iLogo: TppImage;
    ppSummaryBand1: TppSummaryBand;
    tProdutos: TMSQuery;
    dsProdutos: TDataSource;
    ppDBText7: TppDBText;
    lDescr: TppLabel;
    ppDBText8: TppDBText;
    ppLine2: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBText6: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    cLinhas: TDBLookupComboBox;
    lNome: TStaticText;
    cTodas: TCheckBox;
    cProdNome: TDBLookupComboBox;
    StaticText1: TStaticText;
    cProdCod: TEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cTodasClick(Sender: TObject);
    procedure cProdNomeClick(Sender: TObject);
    procedure cProdCodExit(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Estoque_TabelaPreco: TImpressao_Estoque_TabelaPreco;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento, Funcoes;

{$R *.dfm}

procedure TImpressao_Estoque_TabelaPreco.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_Estoque_TabelaPreco.cProdCodExit(Sender: TObject);
begin
     if trim(cProdCod.Text) = '' then 
        cProdNome.KeyValue := null
     else begin
        Dados.Produtos.locate('Codigo', strtoint(cProdCod.Text), [loCaseInsensitive]);
        cProdNome.KeyValue := Dados.Produtos.FieldByName('Codigo').AsInteger;
     end;
end;

procedure TImpressao_Estoque_TabelaPreco.cProdNomeClick(Sender: TObject);
begin
     cProdCod.Text := Dados.Produtos.fieldbyname('Codigo').Asstring;
end;

procedure TImpressao_Estoque_TabelaPreco.cTodasClick(Sender: TObject);
begin
     cLinhas.Enabled := not cTodas.Checked;
     cLinhas.KeyValue := null;
end;

procedure TImpressao_Estoque_TabelaPreco.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Estoque_TabelaPreco.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_TABELA_PRECO', 'Linha', iif(cLinhas.Keyvalue <> null, cLinhas.Keyvalue, 0));
      aINI.WriteBool   ('IMPRESSAO_TABELA_PRECO', 'Todas', cTodas.Checked);
      aINI.WriteBool   ('IMPRESSAO_TABELA_PRECO', 'EXCEL', cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_TABELA_PRECO', 'Saldo', cSaldo.Checked);
      aINI.WriteInteger('IMPRESSAO_TABELA_PRECO', 'Ordem', cOrdem.ItemIndex);
      aINI.Writestring ('IMPRESSAO_TABELA_PRECO', 'Produto', cProdCod.text);
      aINI.Free;
      
      Impressao_Estoque_TabelaPreco.Release;
      Impressao_Estoque_TabelaPreco := nil;
end;

procedure TImpressao_Estoque_TabelaPreco.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      tProdutos.SQL.Clear;
      tProdutos.SQL.Add('SELECT Codigo');
      tProdutos.SQL.Add('      ,Codigo_Fabricante');
      tProdutos.SQL.Add('      ,GTIN');
      tProdutos.SQL.Add('      ,GTIN_Unidade');
      tProdutos.SQL.Add('      ,Codigo_SKU');
      tProdutos.SQL.Add('      ,Descricao = ltrim(rtrim(replace(replace(Descricao, ''<{''+ltrim(rtrim(cast(Codigo as varchar(10))))+''}>'', ''''), char(10), '''')))');
      tProdutos.SQL.Add('      ,Unidade');
      tProdutos.SQL.Add('      ,Valor_Venda');
      tProdutos.SQL.add('      ,Linha = (select Descricao from ProdutosLinhas where Codigo = Linha)');
      tProdutos.SQL.Add('      ,Disponivel = (SELECT CAST((ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = Codigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NFe_Denegada, 0) = 0)), 0) +');
      tProdutos.SQL.Add('                                  ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Estoque = 1)), 0) +');
      tProdutos.SQL.Add('                                  ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada   = Codigo) ), 0) -');
      tProdutos.SQL.Add('                                  ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NFe_Denegada, 0) = 0)), 0) -');
      tProdutos.SQL.Add('                                  ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) ), 0)) -');
      tProdutos.SQL.Add('                                  ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = Codigo) ), 0) AS DECIMAL(14,3)) -');
      tProdutos.SQL.Add('                                  ISNULL((SELECT SUM(Quantidade) FROM PedidosRepresentantesItens PRI WHERE Codigo_Mercadoria = Codigo AND (SELECT ISNULL(Cancelado, 0) FROM PedidosRepresentantes PR WHERE PR.Pedido = PRI.Pedido) = 0), 0))');
      tprodutos.sql.add('into #temp');
      tprodutos.sql.add('from produtos');
      tprodutos.sql.add('where isnull(Desativado, 0) = 0');
      if trim(cProdCod.text) <> '' then begin
         tProdutos.SQL.Add('and Codigo = '+cProdCod.Text);
      end;
      if (not cTodas.Checked) and (cLinhas.KeyValue > 0) then begin
         tProdutos.SQL.Add('and Linha = :pLinha');
         tProdutos.ParamByName('pLinha').asinteger := iif(cLinhas.KeyValue > 0, cLinhas.KeyValue, 0);
      end;
      tProdutos.SQL.Add('select * from #temp');
      if cSaldo.Checked then begin
         tProdutos.SQL.Add('where Disponivel > 0');
      end;
      if cordem.ItemIndex = 0 then begin
         tProdutos.SQL.Add('order by Codigo');
         lDescr.Text := 'Ordem de Código';
      end;   
      if cordem.ItemIndex = 1 then begin
         tProdutos.SQL.Add('order by Codigo_Fabricante');
         lDescr.Text := 'Ordem de Código do Fabricante';
      end;
      if cordem.ItemIndex = 2 then begin
         tProdutos.SQL.Add('order by Descricao_Reduzida');
         lDescr.Text := 'Ordem de Descrição';
      end;   
      if cordem.ItemIndex = 3 then begin
         tProdutos.SQL.Add('order by Valor_Venda, Linha');
         lDescr.Text := 'Ordem de Valor de Venda';
      end;   
      if cordem.ItemIndex = 4 then begin
         tProdutos.SQL.Add('order by Disponivel, Linha');
         lDescr.Text := 'Ordem de Quantidade';
      end;
      if cordem.ItemIndex = 5 then begin
         tProdutos.SQL.Add('order by Linha, Descricao_Reduzida');
         lDescr.Text := 'Ordem de Linha';
      end;
      tProdutos.SQL.Add('drop table #temp');
      //tProdutos.SQL.SaveToFile('c:\temp\Tabela_Precos.sql');
      tProdutos.Open;

      lDescr.Text := lDescr.Text +' - '+ DatetimetoStr(Now);
      Screen.Cursor := crDefault;
      if not cExcel.Checked then begin
         rTabela.Print;
         rTabela.FreeOnRelease;
         rTabela.Reset;
      end else begin
         ExportaExcel;
      end;   
end;

procedure TImpressao_Estoque_TabelaPreco.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      Screen.Cursor := crSQLWait;
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI             := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cLinhas.KeyValue := aINI.ReadInteger('IMPRESSAO_TABELA_PRECO', 'Linha', 0);
      cTodas.Checked   := aINI.ReadBool   ('IMPRESSAO_TABELA_PRECO', 'Todas', true);
      cOrdem.ItemIndex := aINI.ReadInteger('IMPRESSAO_TABELA_PRECO', 'Ordem', 5);
      cSaldo.Checked   := aINI.ReadBool   ('IMPRESSAO_TABELA_PRECO', 'Saldo', true);
      cExcel.Checked   := aINI.ReadBool   ('IMPRESSAO_TABELA_PRECO', 'Excel', false);
      aINI.Free;
     
     with Dados do begin
          with Empresas do begin  
               sql.clear;
               sql.Add('select * from Empresas where Codigo = :pEmp');
               parambyname('pEmp').AsInteger := Menu_Principal.mEmpresa;
               open;
          end;     
          with ProdutosLinhas do begin
               sql.clear;
               sql.Add('select * from ProdutosLinhas order by Descricao');
               open;
          end;
          with Produtos do begin
               sql.clear;
               sql.Add('select * from Produtos order by Descricao');
               open;
          end;
     end;
      Screen.Cursor := crDefault;
end;

// Envia informações para o excel.
procedure TImpressao_Estoque_TabelaPreco.ExportaEXCEL;
var
   mPlanilha      : Variant;
   mLinha         : Integer;
   mTotalQtdePro  : Real;
   mTotalPro      : Currency;
   mDescricao     : WideString;
   mTipo          : String;
   mProcessos     : WideString;
begin
       With Dados do begin
            Janela_Processamento := TJanela_Processamento.Create(Self);
            Janela_Processamento.Progresso.Position := 0;
            Janela_Processamento.Progresso.Max      := tProdutos.RecordCount;
            Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
            Janela_Processamento.Show;

            mPlanilha := CreateOleObject('Excel.Application');

            mPlanilha.WorkBooks.add(1);

            mPlanilha.Visible := false;
            mPlanilha.Range['A3','J3'].Interior.Color    := RGB(255, 255, 140);
            mPlanilha.Range['A3','J3'].Interior.Pattern  := 1;
            mPlanilha.Range['A3','J3'].Font.Bold         := true;
            mPlanilha.Range['A3','J3'].Font.Color        := clBlack;
            mPlanilha.Range['A3','J3'].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['A3','J3'].Borders.Weight    := 2; //xlThin;
            mPlanilha.Range['A3','J3'].Borders.Color     := RGB(0,0,0);

            mPlanilha.Cells[3,01] := 'CÓDIGO';
            mPlanilha.Cells[3,02] := 'CÓDIGO FAB';
            mPlanilha.Cells[3,03] := 'CÓDIGO SKU';
            mPlanilha.Cells[3,04] := 'LINHA';
            mPlanilha.Cells[3,05] := 'DESCRIÇÃO';
            mPlanilha.Cells[3,06] := 'UNIDADE';
            mPlanilha.Cells[3,07] := 'ESTOQUE';
            mPlanilha.Cells[3,08] := 'VALOR';
            mPlanilha.Cells[3,09] := 'CÓDIGO DE BARRAS (CAIXA)';
            mPlanilha.Cells[3,10] := 'CÓDIGO DE BARRAS (UNIDADE)';

            mPlanilha.Range['A3','J3'].HorizontalAlignment := 3;
            mPlanilha.Range['A3','J3'].VerticalAlignment   := 2;
            mPlanilha.Range['A3','J3'].Font.Size           := 10;

            mLinha        := 4;

            While (not tProdutos.eof) and (not Funcoes.Cancelado) do  Begin
                  mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Font.Size := 10;

                  mPlanilha.Cells[mLinha,01] := tProdutos.FieldByName('Codigo').AsInteger;
                  mPlanilha.Cells[mLinha,02] := tProdutos.FieldByName('Codigo_Fabricante').AsString;
                  mPlanilha.Cells[mLinha,03] := tProdutos.FieldByName('Codigo_SKU').AsString;
                  mPlanilha.Cells[mLinha,04] := tProdutos.FieldByName('Linha').AsString;
                  mPlanilha.Cells[mLinha,05] := tProdutos.FieldByName('Descricao').AsString;
                  mPlanilha.Cells[mLinha,06] := tProdutos.FieldByName('Unidade').AsString;
                  mPlanilha.Cells[mLinha,07] := tProdutos.FieldByName('Disponivel').AsFloat;
                  mPlanilha.Cells[mLinha,08] := tProdutos.FieldByName('Valor_Venda').value;
                  mPlanilha.Cells[mLinha,09] := ''''+tProdutos.FieldByName('GTIN').asstring;
                  mPlanilha.Cells[mLinha,10] := ''''+tProdutos.FieldByName('GTIN_Unidade').asstring;

                  mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,000_);(#.##0,000)';                  
                  mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,0000_);(#.##0,0000)';                  

                  tProdutos.Next;

                  Inc(mLinha);
                  Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                  Application.ProcessMessages;
            End;

            //Fecha o Excel.
            If Funcoes.Cancelado = true then begin
               Abort;
               mPlanilha.Free;
               mPlanilha.Destroy;
            End;

            mPlanilha.Columns.Autofit;
            mPlanilha.Rows.Autofit;

            mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
            mPlanilha.Range['A1','A1'].Font.Size  := 14;
            mPlanilha.Range['A1','A1'].Font.Bold  := true;
            mPlanilha.Range['A1','J1'].Mergecells := True;
            mPlanilha.Range['A1','J1'].HorizontalAlignment := 3;

            mPlanilha.Cells[2,01] := 'Tabela de Preços '+DatetimetoStr(Now);
            mPlanilha.Range['A2','A2'].Font.Size  := 10;
            mPlanilha.Range['A2','J2'].Mergecells := True;
            mPlanilha.Range['A2','J2'].HorizontalAlignment := 3;
       End;
       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


end.
