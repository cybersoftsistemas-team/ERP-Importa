unit frmImpressao_Faturamento_Pedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, RXSpin, DB, DBAccess, MSAccess, ppDBPipe, ppMemo, ppVar, ppCtrls, ppBands, ppReport, ppSubRpt, ppClass,
  Vcl.ExtCtrls, RXCtrls, ppDesignLayer, MemDS, ppDB, ppParameter, ppStrtch, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, Vcl.Mask,
  ComObj, MaskUtils;


type
  TImpressao_Faturamento_Pedidos = class(TForm)
    RxLabel3: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    rPedidos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppDBImage1: TppDBImage;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    pPedidos: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    StaticText1: TStaticText;
    cPedidoIni: TRxSpinEdit;
    cPedidoFim: TRxSpinEdit;
    StaticText2: TStaticText;
    ppShape3: TppShape;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppDBText4: TppDBText;
    ppShape4: TppShape;
    ppDBText6: TppDBText;
    ppLabel3: TppLabel;
    ppShape5: TppShape;
    ppDBText7: TppDBText;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppDBText8: TppDBText;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppShape8: TppShape;
    ppDBText10: TppDBText;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppDBText11: TppDBText;
    ppLabel9: TppLabel;
    ppShape10: TppShape;
    ppDBText12: TppDBText;
    ppLabel10: TppLabel;
    ppShape11: TppShape;
    ppDBText13: TppDBText;
    ppLabel11: TppLabel;
    tPedidos: TMSQuery;
    dstPedidos: TDataSource;
    ppShape12: TppShape;
    ppDBText14: TppDBText;
    ppLabel12: TppLabel;
    ppShape13: TppShape;
    ppDBText15: TppDBText;
    ppLabel13: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape14: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape15: TppShape;
    ppShape17: TppShape;
    ppLabel17: TppLabel;
    ppShape18: TppShape;
    ppLabel18: TppLabel;
    ppShape19: TppShape;
    ppLabel19: TppLabel;
    ppShape16: TppShape;
    ppLabel16: TppLabel;
    ppShape20: TppShape;
    ppLabel20: TppLabel;
    tItens: TMSQuery;
    pItens: TppDBPipeline;
    dstItens: TDataSource;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppShape21: TppShape;
    ppLabel21: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    pDuplicatas: TppDBPipeline;
    tDuplicatas: TMSQuery;
    dstDuplicatas: TDataSource;
    ppShape23: TppShape;
    ppLabel23: TppLabel;
    ppShape28: TppShape;
    ppLabel28: TppLabel;
    ppShape29: TppShape;
    ppLabel29: TppLabel;
    ppDBText22: TppDBText;
    ppDBText27: TppDBText;
    ppShape22: TppShape;
    ppLabel22: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppShape24: TppShape;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLine2: TppLine;
    ppShape25: TppShape;
    ppDBText25: TppDBText;
    ppLabel26: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppShape26: TppShape;
    ppLabel27: TppLabel;
    ppShape27: TppShape;
    ppLabel30: TppLabel;
    ppDBText30: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppShape30: TppShape;
    ppLabel31: TppLabel;
    pResponsavel: TppLabel;
    ppDBText29: TppDBText;
    ppShape31: TppShape;
    ppLabel32: TppLabel;
    ppDBText31: TppDBText;
    ppShape32: TppShape;
    ppLabel33: TppLabel;
    ppDBText32: TppDBText;
    ppShape33: TppShape;
    ppLabel34: TppLabel;
    ppDBMemo2: TppDBMemo;
    Image1: TImage;
    RxLabel1: TRxLabel;
    cExcel: TCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure cPedidoIniChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_Pedidos: TImpressao_Faturamento_Pedidos;

implementation

uses frmMenu_Principal, frmDados, FUNCOES;

{$R *.dfm}


procedure TImpressao_Faturamento_Pedidos.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_Pedidos.FormShow(Sender: TObject);
begin
      with Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      end;
end;

procedure TImpressao_Faturamento_Pedidos.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Faturamento_Pedidos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Impressao_Faturamento_Pedidos.Release;
      Impressao_Faturamento_Pedidos := nil;
end;

procedure TImpressao_Faturamento_Pedidos.bImprimirClick(Sender: TObject);
begin
      tPedidos.SQL.Clear;
      tPedidos.SQL.Add('SELECT Pedidos.Numero,');
      tPedidos.SQL.Add('       Pedidos.Data_Emissao,');
      tPedidos.SQL.Add('       Pedidos.Pedido_Nota,');
      tPedidos.SQL.Add('       Pedidos.Destinatario_Nome,');
      tPedidos.SQL.Add('       Pedidos.Destinatario_CNPJ_CPF,');
      tPedidos.SQL.Add('       Pedidos.Destinatario_IE,');
      tPedidos.SQL.Add('       Pedidos.Destinatario_Rua,');
      tPedidos.SQL.Add('       Pedidos.Destinatario_RuaNumero,');
      tPedidos.SQL.Add('       Pedidos.Destinatario_Complemento,');
      tPedidos.SQL.Add('       Pedidos.Destinatario_CEP,');
      tPedidos.SQL.Add('       Pedidos.Destinatario_Bairro,');
      tPedidos.SQL.Add('       Pedidos.Destinatario_Estado,');
      tPedidos.SQL.Add('       Pedidos.Destinatario_Telefone1,');
      tPedidos.SQL.Add('       Pedidos.Total_Frete,');
      tPedidos.SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE(Codigo = Pedidos.Destinatario_Municipio)) AS Destinatario_MunicipioNome,');
      tPedidos.SQL.Add('       (SELECT Email FROM Clientes WHERE(Codigo = Pedidos.Cliente_Codigo)) AS Destinatario_Email,');
      tPedidos.SQL.Add('       (SELECT Nome FROM Fornecedores WHERE(Codigo = Pedidos.Fornecedor_Codigo)) AS Vendedor,');
      tPedidos.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ModalidadesPagamento WHERE(Codigo = (SELECT Forma_Pgto FROM PedidosFatura PF WHERE PF.Fatura = Pedidos.Numero AND PF.Data_Emissao = Pedidos.Data_Emissao) )) AS Modalidade,');
      tPedidos.SQL.Add('       Inf_Complementares');
      tPedidos.SQL.Add('FROM Pedidos');
      tPedidos.SQL.Add('WHERE (Numero BETWEEN :pPedidoIni AND :pPedidoFim)');
      tPedidos.ParamByName('pPedidoIni').AsInteger := cPedidoIni.AsInteger;
      tPedidos.ParamByName('pPedidoFim').AsInteger := cPedidoFim.AsInteger;
      //tPedidos.SQL.SaveToFile('c:\temp\Pedido_Separação_Pedido.sql');
      tPedidos.Open;

      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT Item,');
      tItens.SQL.Add('       Codigo_Mercadoria,');
      tItens.SQL.Add('       Codigo_Fabricante,');
      tItens.SQL.Add('       Descricao_Mercadoria = CASE WHEN CHARINDEX(''<{'', Descricao_Mercadoria) > 0 THEN');
      tItens.SQL.Add('                        SUBSTRING(Descricao_Mercadoria, 1, CHARINDEX(''<{'', Descricao_Mercadoria)-1 )');
      tItens.SQL.Add('                   ELSE');
      tItens.SQL.Add('                        Descricao_Mercadoria');
      tItens.SQL.Add('                   END,');
      tItens.SQL.Add('       Quantidade,');
      tItens.SQL.Add('       Unidade_Medida,');
      tItens.SQL.Add('       Valor_Unitario,');
      tItens.SQL.Add('       Valor_Total,');
      tItens.SQL.Add('       Local2 = ISNULL(LTRIM(RTRIM((SELECT CASE WHEN Armazem_Nome       IS NOT NULL THEN ''ARM:'' +Armazem_Nome      +''  '' ELSE '' '' END+');
      tItens.SQL.Add('                                          CASE WHEN Armazem_Rua        IS NOT NULL THEN ''RUA:'' +Armazem_Rua       +''  '' ELSE '' '' END+');
      tItens.SQL.Add('                                          CASE WHEN Armazem_Prateleira IS NOT NULL THEN ''PRAT:''+Armazem_Prateleira+''  '' ELSE '' '' END+');
      tItens.SQL.Add('                                          CASE WHEN Armazem_Posicao    IS NOT NULL THEN ''POS:'' +Armazem_Posicao   +''  '' ELSE '' '' END');
      tItens.SQL.Add('                                   FROM Produtos WHERE(Codigo = PedidosItens.Codigo_Mercadoria)))), '' '') +');
      tItens.SQL.Add('							 ''LOTE : ''+CAST((SELECT Lote FROM PedidosItensDetalhe WHERE Pedido = :pPedido AND Produto_Codigo = PedidosItens.Codigo_Mercadoria) AS VARCHAR(15)),');
      tItens.SQL.Add('       Volumes = (Quantidade / (SELECT Quantidade_Volumes FROM Produtos WHERE(Codigo = Codigo_Mercadoria)))');
      tItens.SQL.Add('FROM   PedidosItens');
      tItens.SQL.Add('WHERE  (Pedido = :pPedido)');
      tItens.SQL.Add('ORDER  BY Item');
      tItens.ParamByName('pPedido').AsInteger := tPedidos.FieldByName('Numero').AsInteger;
      //tItens.SQL.SaveToFile('c:\temp\Pedido_Separação_Itens.sql');
      tItens.Open;

      tDuplicatas.SQL.Clear;
      tDuplicatas.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Pedido = :pPedido) ORDER BY ORDEM');
      tDuplicatas.ParamByName('pPedido').AsInteger := tPedidos.FieldByName('Numero').AsInteger;
      tDuplicatas.Open;

      pResponsavel.Caption := Menu_Principal.lUsuario.Caption;

      if cExcel.Checked = false then begin
         rPedidos.Reset;
         rPedidos.Print;
         rPedidos.FreeOnRelease;
      end else begin
         ExportaExcel;
      end;
end;

procedure TImpressao_Faturamento_Pedidos.ppDetailBand1BeforePrint(Sender: TObject);
begin
      tItens.SQL.Clear;
      tItens.SQL.Add('SELECT Item,');
      tItens.SQL.Add('       Codigo_Mercadoria,');
      tItens.SQL.Add('       Codigo_Fabricante,');
      tItens.SQL.Add('       Descricao_Mercadoria = CASE WHEN CHARINDEX(''<{'', Descricao_Mercadoria) > 0 THEN');
      tItens.SQL.Add('                        SUBSTRING(Descricao_Mercadoria, 1, CHARINDEX(''<{'', Descricao_Mercadoria)-1 )');
      tItens.SQL.Add('                   ELSE');
      tItens.SQL.Add('                        Descricao_Mercadoria');
      tItens.SQL.Add('                   END,');
      tItens.SQL.Add('       Quantidade,');
      tItens.SQL.Add('       Unidade_Medida,');
      tItens.SQL.Add('       Valor_Unitario,');
      tItens.SQL.Add('       Valor_Total,');
      tItens.SQL.Add('       Local = LTRIM(RTRIM((SELECT CASE WHEN Armazem_Nome       IS NOT NULL THEN ''ARM:''   +Armazem_Nome       ELSE '''' END+');
      tItens.SQL.Add('                                   CASE WHEN Armazem_Rua        IS NOT NULL THEN ''  RUA:'' +Armazem_Rua        ELSE '''' END+');
      tItens.SQL.Add('                                   CASE WHEN Armazem_Prateleira IS NOT NULL THEN ''  PRAT:''+Armazem_Prateleira ELSE '''' END+');
      tItens.SQL.Add('                                   CASE WHEN Armazem_Posicao    IS NOT NULL THEN '' POS:''  +Armazem_Posicao    ELSE '''' END ');
      tItens.SQL.Add('                            FROM Produtos WHERE(Codigo = PedidosItens.Codigo_Mercadoria)))),');
      tItens.SQL.Add('       Volumes = (Quantidade /(SELECT Quantidade_Volumes FROM Produtos WHERE(Codigo = Codigo_Mercadoria)))');
      tItens.SQL.Add('FROM   PedidosItens');
      tItens.SQL.Add('WHERE  (Pedido = :pPedido)');
      tItens.SQL.Add('ORDER  BY Item');
      tItens.ParamByName('pPedido').AsInteger := tPedidos.FieldByName('Numero').AsInteger;
      tItens.Open;

      tDuplicatas.SQL.Clear;
      tDuplicatas.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Pedido = :pPedido) ORDER BY ORDEM');
      tDuplicatas.ParamByName('pPedido').AsInteger := tPedidos.FieldByName('Numero').AsInteger;
      tDuplicatas.Open;
end;

procedure TImpressao_Faturamento_Pedidos.cPedidoIniChange(Sender: TObject);
begin
      If (cPedidoFim.Value < cPedidoIni.Value) and (cPedidoIni.Text<> '') then
         cPedidoFim.Value := cPedidoIni.Value;
end;

// Envia informações para o excel.
procedure TImpressao_Faturamento_Pedidos.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha: Integer;
begin
       Screen.Cursor := crSQLWait;
       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);
       mPlanilha.Visible := false;

       mPlanilha.Cells[1, 1].ColumnWidth := 15;
       mPlanilha.Cells[1, 2].ColumnWidth := 16;
       mPlanilha.Cells[1, 3].ColumnWidth := 63;
       mPlanilha.Cells[1, 4].ColumnWidth := 11;
       mPlanilha.Cells[1, 5].ColumnWidth := 11;
       mPlanilha.Cells[1, 6].ColumnWidth := 11;
       mPlanilha.Cells[1, 7].ColumnWidth := 11;
       mPlanilha.Cells[1, 8].ColumnWidth := 11;
       mPlanilha.Cells[1, 9].ColumnWidth := 11;
       mPlanilha.Cells[1,10].ColumnWidth := 14;

       If Dados.EmpresasMatriz_Filial.AsBoolean = true then
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' MATRIZ ('+ Dados.EmpresasEstado.AsString+')'
       else
          mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString +' FILIAL ' + Dados.EmpresasNumero_Filial.AsString +' (' + Dados.EmpresasEstado.AsString+')';

       mPlanilha.Cells[2,01] := 'Pedido para separação de mercadorias';

       mPlanilha.Range['A1','A1'].Font.Size := 14;
       mPlanilha.Range['A1','A1'].Font.Bold := true;
       mPlanilha.Range['A2','A2'].Font.Size := 12;
       mPlanilha.Range['A2','A2'].Font.Bold := true;

       mPlanilha.Range['A1','I1'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','I1'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','I1'].Mergecells          := True;
       mPlanilha.Range['A2','I2'].Mergecells          := True;
       mPlanilha.Range['A2','I2'].HorizontalAlignment := 3;
       mPlanilha.Range['A2','I2'].VerticalAlignment   := 2;

       mPlanilha.Cells[01,10]                    := 'PEDIDO';
       mPlanilha.Range['J1','J1'].Font.Size      := 12;
       mPlanilha.Range['J1','J1'].Font.Bold      := true;
       mPlanilha.Range['J1','J4'].Font.Color     := clwhite;
       mPlanilha.Range['J1','J4'].Interior.Color := clNavy;

       mPlanilha.Cells[02,10] := tPedidos.FieldByName('Numero').AsInteger;
       mPlanilha.Cells[03,10] := tPedidos.FieldByName('Pedido_Nota').AsInteger;
       mPlanilha.Cells[04,10] := tPedidos.FieldByName('Data_Emissao').value;
       mPlanilha.Range['J1','J4'].HorizontalAlignment := 3;
       mPlanilha.Range['J1','J4'].VerticalAlignment   := 2;
       mPlanilha.Range['J1','J4'].Borders.LineStyle   := 1; //xlContinuous;
       mPlanilha.Range['J1','J4'].Borders.Weight      := 2; //xlThin;
       mPlanilha.Range['J1','J4'].Borders.Color       := RGB(0,0,0);

       mPlanilha.Cells[6,01] := 'CLIENTE';
       mPlanilha.Cells[6,02] := tPedidos.FieldByName('Destinatario_Nome').AsString;
       mPlanilha.Range['B6','C6'].Mergecells := True;

       mPlanilha.Cells[6,06] := 'CNPJ';
       mPlanilha.Cells[6,07] := formatmaskText('##.###.###/####-##;0; ', tPedidos.FieldByName('Destinatario_CNPJ_CPF').AsString);
       mPlanilha.Range['G6','H6'].Mergecells := True;

       mPlanilha.Cells[6,09] := 'IE';
       mPlanilha.Cells[6,10] := tPedidos.FieldByName('Destinatario_IE').AsString;

       mPlanilha.Cells[7,01] := 'ENDEREÇO';
       mPlanilha.Cells[7,02] := tPedidos.FieldByName('Destinatario_Rua').AsString;
       mPlanilha.Range['B7','C7'].Mergecells := True;

       mPlanilha.Cells[7,04] := 'Nº';
       mPlanilha.Cells[7,05] := tPedidos.FieldByName('Destinatario_RuaNumero').AsString;

       mPlanilha.Cells[7,06] := 'COMPL';
       mPlanilha.Cells[7,07] := tPedidos.FieldByName('Destinatario_Complemento').AsString;
       mPlanilha.Range['G7','H7'].Mergecells := True;

       mPlanilha.Cells[7,09] := 'CEP';
       mPlanilha.Cells[7,10] := FormatMaskText('99999-999;0; ', tPedidos.FieldByName('Destinatario_CEP').AsString);

       mPlanilha.Cells[8,01] := 'BAIRRO';
       mPlanilha.Cells[8,02] := tPedidos.FieldByName('Destinatario_Bairro').AsString;
       mPlanilha.Range['B8','C8'].Mergecells := True;

       mPlanilha.Cells[8,04] := 'MUNICIPIO';
       mPlanilha.Cells[8,05] := tPedidos.FieldByName('Destinatario_MunicipioNome').AsString;
       mPlanilha.Range['E8','H8'].Mergecells := True;

       mPlanilha.Cells[8,09] := 'ESTADO';
       mPlanilha.Cells[8,10] := tPedidos.FieldByName('Destinatario_Estado').AsString;

       mPlanilha.Cells[9,01] := 'TELEFONE';
       mPlanilha.Cells[9,02] := FormatMaskText('(##) ####-####;0; ', tPedidos.FieldByName('Destinatario_Telefone1').AsString);
       mPlanilha.Range['B9','C9'].Mergecells := True;

       mPlanilha.Cells[9,04] := 'EMAIL';
       mPlanilha.Cells[9,05] := tPedidos.FieldByName('Destinatario_Email').AsString;
       mPlanilha.Range['E9','J9'].Mergecells := True;

       mPlanilha.Cells[10,01] := 'FUNCIONARIA(O)';
       mPlanilha.Cells[10,02] := Menu_Principal.lUsuario.Caption;
       mPlanilha.Range['B10','C10'].Mergecells := True;

       mPlanilha.Cells[10,04] := 'VLR FRETE';
       mPlanilha.Cells[10,05] := tPedidos.FieldByName('Total_Frete').value;
       mPlanilha.Cells[10,05].NumberFormat := '#.##0,00';

       mPlanilha.Cells[10,04] := 'COND.PGTO';
       mPlanilha.Cells[10,05] := tPedidos.FieldByName('Modalidade').asstring;

       mPlanilha.Cells[11,01] := 'VENDEDORA(O))';
       mPlanilha.Cells[11,02] := tPedidos.FieldByName('Vendedor').AsString;
       mPlanilha.Range['B11','C11'].Mergecells := True;

       mPlanilha.Cells[12,01] := 'INF.COMPL.';
       mPlanilha.Cells[12,02] := trim(tPedidos.FieldByName('Inf_Complementares').AsString);
       mPlanilha.Range['B12','J16'].Mergecells        := True;
       mPlanilha.Range['B12','J16'].VerticalAlignment := 1;

       mPlanilha.Cells[17,01] := 'PRODUTOS';
       mPlanilha.Range['A17','J17'].Mergecells          := True;
       mPlanilha.Range['A17','J18'].Font.Bold           := true;
       mPlanilha.Range['A17','J18'].Font.Color          := clBlack;
       mPlanilha.Range['A17','J18'].Interior.Color      := $00E9E9E9;
       mPlanilha.Range['A17','J18'].HorizontalAlignment := 3;
       mPlanilha.Range['A17','J18'].VerticalAlignment   := 2;
       mPlanilha.Range['A17','J18'].Borders.LineStyle   := 1; //xlContinuous;
       mPlanilha.Range['A17','J18'].Borders.Weight      := 2; //xlThin;
       mPlanilha.Range['A17','J18'].Borders.Color       := RGB(0,0,0);

       mPlanilha.Cells[18,01] := 'PRODUTOS';
       mPlanilha.Cells[18,02] := 'CÓD.PRODUTO';
       mPlanilha.Cells[18,03] := 'DESCRIÇÃO';
       mPlanilha.Cells[18,04] := 'LOCALIZAÇÃO';
       mPlanilha.Range['D18','E18'].Mergecells := True;
       mPlanilha.Cells[18,06] := 'UM';
       mPlanilha.Cells[18,07] := 'QTDE';
       mPlanilha.Cells[18,08] := 'VOLUMES';
       mPlanilha.Cells[18,09] := 'UNITARIO';
       mPlanilha.Cells[18,10] := 'TOTAL';

       with tItens do begin
            sql.Clear;
            sql.Add('SELECT Item,');
            sql.Add('       Codigo_Mercadoria,');
            sql.Add('       Codigo_Fabricante,');
            sql.Add('       Descricao_Mercadoria = CASE WHEN CHARINDEX(''<{'', Descricao_Mercadoria) > 0 THEN');
            sql.Add('                        SUBSTRING(Descricao_Mercadoria, 1, CHARINDEX(''<{'', Descricao_Mercadoria)-1 )');
            sql.Add('                   ELSE');
            sql.Add('                        Descricao_Mercadoria');
            sql.Add('                   END,');
            sql.Add('       Quantidade,');
            sql.Add('       Unidade_Medida,');
            sql.Add('       Valor_Unitario,');
            sql.Add('       Valor_Total,');
            sql.Add('       Local2 = ISNULL(LTRIM(RTRIM((SELECT CASE WHEN Armazem_Nome       IS NOT NULL THEN ''ARM:'' +Armazem_Nome      +''  '' ELSE '' '' END+');
            sql.Add('                                          CASE WHEN Armazem_Rua        IS NOT NULL THEN ''RUA:'' +Armazem_Rua       +''  '' ELSE '' '' END+');
            sql.Add('                                          CASE WHEN Armazem_Prateleira IS NOT NULL THEN ''PRAT:''+Armazem_Prateleira+''  '' ELSE '' '' END+');
            sql.Add('                                          CASE WHEN Armazem_Posicao    IS NOT NULL THEN ''POS:'' +Armazem_Posicao   +''  '' ELSE '' '' END');
            sql.Add('                                   FROM Produtos WHERE(Codigo = PedidosItens.Codigo_Mercadoria)))), '' '') +');
            sql.Add('							 ''LOTE : ''+CAST((SELECT Lote FROM PedidosItensDetalhe WHERE Pedido = :pPedido AND Produto_Codigo = PedidosItens.Codigo_Mercadoria) AS VARCHAR(15)),');
            sql.Add('       Volumes = (Quantidade / (SELECT Quantidade_Volumes FROM Produtos WHERE(Codigo = Codigo_Mercadoria)))');
            sql.Add('FROM   PedidosItens');
            sql.Add('WHERE  (Pedido = :pPedido)');
            sql.Add('ORDER  BY Item');
            ParamByName('pPedido').AsInteger := tPedidos.FieldByName('Numero').AsInteger;
            //tItens.SQL.SaveToFile('c:\temp\Pedido_Separação_Itens.sql');
            Open;

            mLinha := 19;

            while not Eof do begin
                  mPlanilha.Range['A'+inttostr(mLinha),'B'+inttostr(mLinha)].VerticalAlignment := 1;
                  mPlanilha.Range['D'+inttostr(mLinha),'J'+inttostr(mLinha)].VerticalAlignment := 3;
                  mPlanilha.Range['D'+inttostr(mLinha),'E'+inttostr(mLinha)].Mergecells := True;
                  mPlanilha.Range['C'+inttostr(mLinha), 'C'+inttostr(mLinha)].WrapText  := true;

                  mPlanilha.Cells[mLinha, 01] := formatfloat('0000', FieldByName('Item').Asinteger);
                  mPlanilha.Cells[mLinha, 02] := FieldByName('Codigo_Mercadoria').Asstring + ' / ' + FieldByName('Codigo_Fabricante').Asstring;
                  mPlanilha.Cells[mLinha, 03] := FieldByName('Descricao_Mercadoria').Asstring;
                  mPlanilha.Cells[mLinha, 04] := FieldByName('Local2').Asstring;
                  mPlanilha.Cells[mLinha, 06] := FieldByName('Unidade_Medida').Asstring;
                  mPlanilha.Cells[mLinha, 07] := FormatFloat(',##0.000', FieldByName('Quantidade').Asfloat);
                  mPlanilha.Cells[mLinha, 08] := FieldByName('Volumes').asinteger;
                  mPlanilha.Cells[mLinha, 09] := formatfloat(',##0.00', FieldByName('Valor_Unitario').asfloat);
                  mPlanilha.Cells[mLinha, 10] := formatfloat(',##0.00', FieldByName('Valor_Total').asCurrency);
                  inc(mLinha);

                  next;
            end;
       end;


       //Fecha o Excel
       If Funcoes.Cancelado = true then begin
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Visible := true;
       Screen.Cursor := crDefault;
end;


end.
