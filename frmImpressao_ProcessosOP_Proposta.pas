unit frmImpressao_ProcessosOP_Proposta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Grids, DBGrids,
  RXDBCtrl, DB, DBAccess, MSAccess, ppParameter, ppDesignLayer, ppBands, ppCtrls, jpeg, ppClass,
  ppReport, ppDBPipe, ppVar, ppSubRpt, Math, MaskUtils, ExcelXP, OleServer, ComObj, Excel2000, ppStrtch, ppPrnabl, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_ProcessosOP_Proposta = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    Grade: TDBGrid;
    dstPropostas: TDataSource;
    tPropostas: TMSQuery;
    tImpressao: TMSQuery;
    dstImpressao: TDataSource;
    pEmpresas: TppDBPipeline;
    pProposta: TppDBPipeline;
    rProposta: TppReport;
    ppParameterList1: TppParameterList;
    tDespesas: TMSQuery;
    dstDespesas: TDataSource;
    pDespesas: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    iLogo: TppImage;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppDBText6: TppDBText;
    ppLabel5: TppLabel;
    ppDBText7: TppDBText;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    cIE: TppDBText;
    ppLine10: TppLine;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppDBText14: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppLabel15: TppLabel;
    ppDBText16: TppDBText;
    ppDBText8: TppDBText;
    rDespesas: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel61: TppLabel;
    lTituloValor: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText18: TppDBText;
    ppLine2: TppLine;
    ppLine8: TppLine;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    lNumero: TppLabel;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppDBText19: TppDBText;
    ppLine3: TppLine;
    ppLabel17: TppLabel;
    ppDBText20: TppDBText;
    ppLabel18: TppLabel;
    ppDBText21: TppDBText;
    ppLabel19: TppLabel;
    ppDBText22: TppDBText;
    ppLabel20: TppLabel;
    ppDBText23: TppDBText;
    ppLine9: TppLine;
    ppDBText2: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText17: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBText24: TppDBText;
    ppDBText26: TppDBText;
    ppLabel28: TppLabel;
    ppDBText27: TppDBText;
    ppLabel29: TppLabel;
    ppDBText28: TppDBText;
    ppLabel30: TppLabel;
    ppDBText29: TppDBText;
    lValUnitario: TppLabel;
    lTotalFOBME: TppVariable;
    ppDBText25: TppDBText;
    ppLabel33: TppLabel;
    ppDBText30: TppDBText;
    ppLabel34: TppLabel;
    ppDBText31: TppDBText;
    ppLabel35: TppLabel;
    ppDBText32: TppDBText;
    ppLabel36: TppLabel;
    ppDBText33: TppDBText;
    lTotalME: TppLabel;
    lTotalFOBReal: TppVariable;
    ppLabel40: TppLabel;
    ppLine16: TppLine;
    ppDBText36: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine18: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine21: TppLine;
    ppLine22: TppLine;
    lSomaDespesas: TppDBCalc;
    ppDBText37: TppDBText;
    ppLabel26: TppLabel;
    ppLine24: TppLine;
    ppLabel31: TppLabel;
    ppDBText38: TppDBText;
    ppLabel32: TppLabel;
    ppDBText39: TppDBText;
    ppLine19: TppLine;
    ppLabel44: TppLabel;
    ppDBText41: TppDBText;
    cExcel: TCheckBox;
    ExcelApplication1: TExcelApplication;
    mPlan: TExcelWorksheet;
    ppSummaryBand2: TppSummaryBand;
    ppLabel72: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel37: TppLabel;
    ppLine17: TppLine;
    lTotalProdDespReal: TppVariable;
    ppLabel38: TppLabel;
    ppLine20: TppLine;
    lTradeReal: TppVariable;
    ppDBText34: TppDBText;
    ppLabel41: TppLabel;
    ppLine15: TppLine;
    ppLabel42: TppLabel;
    ppDBText35: TppDBText;
    ppLine23: TppLine;
    ppLine5: TppLine;
    lTotalProdReal: TppVariable;
    ppLabel43: TppLabel;
    ppLabel39: TppLabel;
    lComissaoPagaReal: TppVariable;
    ppLabel27: TppLabel;
    ppLine25: TppLine;
    lFreteIntReal: TppVariable;
    ppDBText40: TppDBText;
    lTotalImpostos: TppVariable;
    ppLabel45: TppLabel;
    ppLine26: TppLine;
    ppDBText42: TppDBText;
    lTotalGeral: TppVariable;
    ppLabel46: TppLabel;
    ppLine27: TppLine;
    lTotalDespReal: TppVariable;
    ppLabel47: TppLabel;
    ppDBText43: TppDBText;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppHeaderBand1BeforeGenerate(Sender: TObject);
    procedure ppSummaryBand2BeforeGenerate(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_Proposta: TImpressao_ProcessosOP_Proposta;

implementation

uses frmDados, frmMenu_Principal, Funcoes;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Proposta.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_ProcessosOP_Proposta.FormShow(Sender: TObject);
begin
     with Dados do begin
          tPropostas.sql.clear;
          tPropostas.sql.add('SELECT *');
          tPropostas.sql.add('      ,Cliente_Nome = (SELECT Nome FROM Clientes WHERE Codigo = Cliente)');
          tPropostas.sql.add('FROM  PropostaExp');
          tPropostas.sql.add('ORDER BY Proposta');
          tPropostas.open;
     end;
end;

procedure TImpressao_ProcessosOP_Proposta.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Proposta.bImprimirClick(Sender: TObject);
begin
     tImpressao.sql.clear;
     tImpressao.sql.add('SELECT *');
     tImpressao.sql.add('      ,Cliente_Nome   = (SELECT Nome FROM Clientes WHERE Codigo = Cliente)');
     tImpressao.sql.add('      ,Endereco       = (SELECT ISNULL(Rua, '''')+'', Nº ''+ISNULL(Rua_Numero, '''')+'' - ''+ISNULL(Bairro, '''')+'' - ''+RTRIM(ISNULL(Municipio, ''''))+''(''+ISNULL(Estado, '''')+'')''+'' CEP:''+ISNULL(Cep, '''') FROM Clientes WHERE Codigo = Cliente)');
     tImpressao.sql.add('      ,Telefone       = (SELECT ISNULL(Telefone1,'''')+''/''+ISNULL(Telefone2,'''') FROM Clientes WHERE Codigo = Cliente)');
     tImpressao.sql.add('      ,Email          = (SELECT ISNULL(Email, '''') FROM Clientes WHERE Codigo = Cliente)');
     tImpressao.sql.add('      ,CNPJ           = (SELECT ISNULL(CNPJ, '''') FROM Clientes WHERE Codigo = Cliente)');
     tImpressao.sql.add('      ,IE             = (SELECT ISNULL(Inscricao_Estadual, '''') FROM Clientes WHERE Codigo = Cliente)');
     tImpressao.sql.add('      ,MascaraIE      = (SELECT Mascara_Inscricao FROM Cybersoft_Cadastros.dbo.Estados WHERE Codigo = (SELECT Estado FROM Clientes WHERE Codigo = Cliente))');
     tImpressao.sql.add('      ,Moeda_Simbolo1 = (SELECT Simbolo FROM Cybersoft_Cadastros.dbo.Moedas WHERE Codigo = Moeda_Exp)');
     tImpressao.sql.add('      ,Moeda_Nome1    = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE Codigo = Moeda_Exp)');
     tImpressao.sql.add('      ,Moeda_Simbolo2 = (SELECT Simbolo FROM Cybersoft_Cadastros.dbo.Moedas WHERE Codigo = Moeda_Imp)');
     tImpressao.sql.add('      ,Moeda_Nome2    = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE Codigo = Moeda_Imp)');
     tImpressao.sql.add('      ,Moeda_Simbolo3 = (SELECT Simbolo FROM Cybersoft_Cadastros.dbo.Moedas WHERE Codigo = Moeda_Frete)');
     tImpressao.sql.add('      ,Moeda_Nome3    = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE Codigo = Moeda_Frete)');
     tImpressao.sql.add('      ,INCOTERM_Desc  = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.Incoterms WHERE Codigo = INCOTERMS)');
     tImpressao.sql.add('      ,Via_Nome       = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ViaTransporte WHERE Codigo = Via_Transporte)');
     tImpressao.sql.add('      ,Condicao_Pgto  = (SELECT Descricao FROM CondicaoCambial WHERE Codigo = Condicao_Cambio)');
     tImpressao.sql.add('      ,Produto        = (SELECT Descricao_Reduzida FROM Produtos WHERE Codigo = Produto_Codigo)');
     tImpressao.sql.add('FROM  PropostaExp');
     tImpressao.sql.add('WHERE Proposta = '+tPropostas.fieldbyName('Proposta').asstring);
     //tImpressao.sql.savetofile('c:\temp\Proposta_Exportacao.sql');
     tImpressao.open;

     cIE.DisplayFormat := tImpressao.fieldbyname('MascaraIE').asstring;

     tDespesas.sql.clear;
     tDespesas.sql.add('SELECT *');
     tDespesas.sql.add('      ,Moeda_Nome = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE Codigo = Moeda)');
     tDespesas.sql.add('      ,Cambio = Valor * Cotacao');
     tDespesas.sql.add('FROM  PropostaExpDesp');
     tDespesas.sql.add('WHERE Proposta = '+tImpressao.fieldbyname('Proposta').asstring);
     tDespesas.sql.add('ORDER BY Moeda, Descricao');
     tDespesas.open;

     Dados.Empresas.SQL.Clear;
     Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = '+InttoStr(Menu_Principal.mEmpresa)+')');
     Dados.Empresas.Open;

     lValUnitario.Caption := 'Valor Unitario '+tImpressao.fieldbyName('Moeda_Simbolo1').AsString;
     lTotalME.Caption     := 'Valor Total '+tImpressao.fieldbyName('Moeda_Simbolo1').AsString;

     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;

     if not cExcel.Checked then begin
        rProposta.Print;
        rProposta.Reset;
     end else begin
        ExportaEXCEL;
     end;
end;

procedure TImpressao_ProcessosOP_Proposta.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
     lTotalDespReal.value     := lSomaDespesas.value;
end;

procedure TImpressao_ProcessosOP_Proposta.ppHeaderBand1BeforeGenerate(Sender: TObject);
begin
     lTotalFOBME.value   := (tImpressao.FieldByName('Quantidade').AsFloat * tImpressao.FieldByName('Quantidade_Unidade').AsFloat) * tImpressao.FieldByName('FOB_Unitario').AsCurrency;
     lTotalFOBReal.value := lTotalFOBME.value * tImpressao.FieldByName('Cotacao_Exp').AsFloat;
end;

procedure TImpressao_ProcessosOP_Proposta.ppSummaryBand2BeforeGenerate(Sender: TObject);
begin
     lFreteIntReal.Value      := tImpressao.FieldByName('Frete_Inter').AsFloat * tImpressao.FieldByName('Cotacao_Frete').AsFloat;
     lTotalProdReal.value     := lTotalFOBReal.value;
     lTotalProdDespReal.value := lTotalFOBReal.Value + lTotalDespReal.Value + lFreteIntReal.Value;
     if tImpressao.FieldByName('Base_Comissao').AsString = 'P' then begin
        lTradeReal.value        := lTotalFOBReal.Value * (tImpressao.FieldByName('Comissao_Recebida').AsFloat/100);
        lComissaoPagaReal.Value := lTotalFOBReal.Value * (tImpressao.FieldByName('Comissao_Paga').AsFloat/100);
     end else begin
        lTradeReal.value        := (lTotalFOBReal.Value + lTotalDespReal.Value) * (tImpressao.FieldByName('Comissao_Recebida').AsFloat/100);
        lComissaoPagaReal.Value := (lTotalFOBReal.Value + lTotalDespReal.Value) * (tImpressao.FieldByName('Comissao_Paga').AsFloat/100);
     end;
     if tImpressao.FieldByName('Fator').AsFloat > 0 then begin
        lTotalImpostos.Value := Roundto(((lTotalProdDespReal.value+lTradeReal.value+lComissaoPagaReal.Value) / (tImpressao.FieldByName('Fator').AsFloat/100)) - (lTotalProdDespReal.value+lTradeReal.value+lComissaoPagaReal.Value), -4);
     end;
     lTotalGeral.Value    := lTotalProdDespReal.value + lTradeReal.Value + lComissaoPagaReal.Value + lTotalImpostos.Value;
end;

// Envia informações para o excel.
procedure TImpressao_ProcessosOP_Proposta.ExportaEXCEL;
var
   LCID,
   mLinha,
   i: Integer;
   WKBK: _Workbook;
   mMoeda: String;
   mDespME
  ,mTotalDespME
  ,mTotalDespReal
  ,mTotalProdutos
  ,mTotalProdDespReal
  ,mFreteIntReal
  ,mComissaoPaga
  ,mComissaoRec
  ,mTotalImpostos
  ,mTotalGeral
  ,mDespReal: Real;
begin
     LCID                                  := GetUserDefaultLCID;                                    // Pega o usuário logado
     ExcelApplication1.DisplayAlerts[LCID] := false;                                                 // Remove alertas do excel
     WKBK                                  := ExcelApplication1.Workbooks.Add(EmptyParam, LCID);     // Cria o novo arquivo
     mPlan.ConnectTo(WKBK.Worksheets[1] as _Worksheet);                                              // Conecta a planilha (1) que será a planilha a receber os dados
     mPlan.Activate(LCID);                                                                           // Ativa a planilha conectada
     ExcelApplication1.ScreenUpdating[LCID]    := True;                                              // Torna possível fazer alterações
     ExcelApplication1.Visible[LCID]           := false;                                             // Torna a aplicação invisível
     ExcelApplication1.DisplayFullScreen[LCID] := false;

     // Ajusta o tamanho de todas as colunas.
     with Dados do begin
          mPlan.Name                         := 'PROPOSTA #'+tImpressao.FieldByName('Proposta').AsString; // Atribui um nome a aba da planilha
          mPlan.Range['A1','A1'].ColumnWidth := 16;
          mPlan.Range['B1','L1'].ColumnWidth := 09;
          mPlan.Range['L1','L1'].ColumnWidth := 10;
          mPlan.Range['M1','M1'].ColumnWidth := 15;
          mPlan.Range['F1','F1'].ColumnWidth := 16;
          mPlan.Range['I1','I1'].ColumnWidth := 18;
          mPlan.Range['A1','M100'].Font.Size := 10;
          mPlan.Range['A1','M100'].Font.Name := 'Calibri';
          mPlan.Range['A1','M100'].VerticalAlignment   := 2;
          mPlan.Range['D1','M100'].HorizontalAlignment := 1;

          // Cabecalho - Dados da Empresa.
          if FileExists(Dados.EmpresasLogo.Value) then begin
             mPlan.Shapes.AddPicture(Dados.Empresas.FieldByName('Logo').AsString, 0, 1, 20, 10, 106, 50);  // Logo da Empresa.
          end;   

          mPlan.Range['D1','D1'].Value2              := Empresas.FieldByName('Razao_Social').AsString;
          mPlan.Range['D1','D1'].Font.Size           := 14;
          mPlan.Range['D1','D1'].Font.Bold           := true;
          mPlan.Range['D2','D2'].Value2              := Empresas.FieldByName('Email').AsString;
          mPlan.Range['D3','D3'].Value2              := Empresas.FieldByName('Site').AsString;
          mPlan.Range['D1','M1'].Mergecells          := True;
          mPlan.Range['D2','M2'].Mergecells          := True;
          mPlan.Range['D3','M3'].Mergecells          := True;
          mPlan.Range['D1','M5'].HorizontalAlignment := 3;

          // Cabecalho - Número da PROPOSTA.
          mPlan.Range['L4','L4'].Value2              := 'PROPOSTA';
          mPlan.Range['L4','M4'].Mergecells          := True;
          mPlan.Range['L4','M4'].Interior.Color      := clBlack;
          mPlan.Range['L4','M4'].Font.Color          := $002894FF;
          mPlan.Range['L4','M4'].Font.Bold           := true;
          mPlan.Range['L4','M4'].HorizontalAlignment := 3;
          //mPlan.Range['L4','M4'].VerticalAlignment   := 2;

          mPlan.Range['L5','L5'].Value2              := 'NÚMERO';
          mPlan.Range['L5','L6'].HorizontalAlignment := 1;
          mPlan.Range['M5','M5'].Value2              := '#'+PoeZero(6, tImpressao.FieldByName('Proposta').AsInteger);
          mPlan.Range['M5','M6'].Font.Bold           := true;
          mPlan.Range['M5','M6'].Font.Size           := 10;
          mPlan.Range['M6','M6'].HorizontalAlignment := 3;
          mPlan.Range['L6','l6'].Value2              := 'VALIDADE';
          mPlan.Range['M6','M6'].Value2              := tImpressao.FieldByName('Validade').AsString;

          // SESSÃO - CLIENTE.
          mPlan.Range['A7','M7'].BorderAround(1, 2, 0, RGB(100,0,0));
          mPlan.Range['A7','A7'].RowHeight        := 20;
          mPlan.Range['A7','M7'].Interior.Color   := $00FFE6E6;
          mPlan.Range['A7','A7'].Value2           := '  CLIENTE';
          mPlan.Range['A8','A10'].Interior.Color  := clBlack;
          mPlan.Range['A8','A10'].Font.Color      := $002894FF;
          mPlan.Range['A7','A7'].Font.Bold        := true;
          mPlan.Range['A8','A8'].Value2           := 'Nome';
          mPlan.Range['B8','B8'].Value2           := tImpressao.FieldByName('Cliente_Nome').AsString;
          mPlan.Range['I8','I8'].Interior.Color   := clBlack;
          mPlan.Range['I8','I8'].Font.Color       := $002894FF;
          mPlan.Range['I8','I8'].Value2           := 'CNPJ';
          mPlan.Range['J8','J8'].Value2           := FormatMaskText('##.###.###/####-##;0', tImpressao.FieldByName('CNPJ').AsString);
          mPlan.Range['A9','A9'].Value2           := 'Endereço';
          mPlan.Range['B9','B9'].Value2           := tImpressao.FieldByName('Endereco').AsString;
          mPlan.Range['A10','A10'].Value2         := 'Telefone';
          mPlan.Range['B10','B10'].Value2         := tImpressao.FieldByName('Telefone').AsString;
          mPlan.Range['I10','I10'].Interior.Color := clBlack;
          mPlan.Range['I10','I10'].Font.Color     := $002894FF;
          mPlan.Range['I10','I10'].Value2         := 'E-Mail';
          mPlan.Range['J10','J10'].Value2         := tImpressao.FieldByName('Email').AsString;
          mPlan.Range['A11','M11'].BorderAround(1, 2, 0, RGB(100,0,0));
          mPlan.Range['A11','A11'].RowHeight      := 20;
          mPlan.Range['A11','M11'].Interior.Color := $00FFE6E6;

          // SESSÃO - TRANSPORTE.
          mPlan.Range['A11','M11'].BorderAround(1, 2, 0, RGB(100,0,0));
          mPlan.Range['A11','A11'].RowHeight      := 20;
          mPlan.Range['A11','M11'].Interior.Color := $00FFE6E6;
          mPlan.Range['A11','M11'].Font.Bold      := true;
          mPlan.Range['A11','A11'].Value2         := '  TRANSPORTE';
          mPlan.Range['A12','A13'].Interior.Color := clBlack;
          mPlan.Range['A12','A13'].Font.Color     := $002894FF;
          mPlan.Range['A12','A12'].Value2         := 'Porto de Embarque';
          mPlan.Range['B12','B12'].Value2         := tImpressao.FieldByName('Local_Embarque').AsString;
          mPlan.Range['I12','I13'].Interior.Color := clBlack;
          mPlan.Range['I12','I13'].Font.Color     := $002894FF;
          mPlan.Range['I12','I12'].Value2         := 'Local de Entrega';
          mPlan.Range['J12','J12'].Value2         := tImpressao.FieldByName('Local_Entrega').AsString;
          mPlan.Range['A13','A13'].Value2         := 'Transbordo';
          mPlan.Range['B13','B13'].Value2         := tImpressao.FieldByName('Transbordo').AsString;
          mPlan.Range['F13','F14'].Interior.Color := clBlack;
          mPlan.Range['F13','F14'].Font.Color     := $002894FF;
          mPlan.Range['F13','F13'].Value2         := 'Transit Time';
          mPlan.Range['G13','G13'].Value2         := tImpressao.FieldByName('Transit_Time').AsString;
          mPlan.Range['I13','I13'].Value2         := 'Frequência Transporte';
          mPlan.Range['J13','J13'].Value2         := tImpressao.FieldByName('Frequencia').AsString;
          mPlan.Range['A14','A14'].Value2         := 'Armador';
          mPlan.Range['B14','B14'].Value2         := tImpressao.FieldByName('Armador').AsString;
          mPlan.Range['G14','H14'].Mergecells     := True;
          mPlan.Range['F14','F14'].Value2         := 'Frete Internacional';
          mPlan.Range['G14','G14'].Value2         := tImpressao.FieldByName('Frete_Inter').AsCurrency;
          mPlan.Range['G14','G14'].NumberFormat   := '#.##0,00';

          // SESSÃO - CONDIÇÕES.
          mPlan.Range['A15','M15'].BorderAround(1, 2, 0, RGB(100,0,0));
          mPlan.Range['A15','A15'].RowHeight      := 20;
          mPlan.Range['A15','M15'].Interior.Color := $00FFE6E6;
          mPlan.Range['A15','A15'].Font.Bold      := true;
          mPlan.Range['A15','A15'].Value2         := '  CONDIÇÕES';
          mPlan.Range['A16','A17'].Interior.Color := clBlack;
          mPlan.Range['A16','A17'].Font.Color     := $002894FF;
          mPlan.Range['A16','A16'].Value2         := 'Condição de Pgto.';
          mPlan.Range['B16','B16'].Value2         := tImpressao.FieldByName('Condicao_Pgto').AsString;
          mPlan.Range['F16','F18'].Interior.Color := clBlack;
          mPlan.Range['F16','F18'].Font.Color     := $002894FF;
          mPlan.Range['F16','F16'].Value2         := 'Câmbio Exportação';
          mPlan.Range['G16','G16'].Value2         := tImpressao.FieldByName('Cotacao_Exp').AsFloat;
          mPlan.Range['G16','G16'].NumberFormat   := '#.##0,0000';
          mPlan.Range['I16','I18'].Interior.Color := clBlack;
          mPlan.Range['I16','I18'].Font.Color     := $002894FF;
          mPlan.Range['I16','I16'].Value2         := 'Moeda';
          mPlan.Range['J16','J16'].Value2         := tImpressao.FieldByName('Moeda_Nome1').AsString;
          mPlan.Range['A17','A17'].Value2         := 'INCOTERMS';
          mPlan.Range['B17','B17'].Value2         := tImpressao.FieldByName('INCOTERMS').AsString;
          mPlan.Range['F17','F17'].Value2         := 'Câmbio Importação';
          mPlan.Range['G17','G17'].Value2         := tImpressao.FieldByName('Cotacao_Imp').AsFloat;
          mPlan.Range['G17','G17'].NumberFormat   := '#.##0,0000';
          mPlan.Range['I17','I17'].Value2         := 'Moeda';
          mPlan.Range['J17','J17'].Value2         := tImpressao.FieldByName('Moeda_Nome2').AsString;
          mPlan.Range['F18','F18'].Value2         := 'Câmbio Frete';
          mPlan.Range['G18','G18'].Value2         := tImpressao.FieldByName('Cotacao_Frete').AsFloat;
          mPlan.Range['G18','G18'].NumberFormat   := '#.##0,0000';
          mPlan.Range['I18','I18'].Value2         := 'Moeda';
          mPlan.Range['J18','J18'].Value2         := tImpressao.FieldByName('Moeda_Nome3').AsString;

          // SESSÃO - MERCADORIA.
          mPlan.Range['A19','M19'].BorderAround(1, 2, 0, RGB(100,0,0));
          mPlan.Range['A19','A19'].RowHeight      := 20;
          mPlan.Range['A19','M19'].Interior.Color := $00FFE6E6;
          mPlan.Range['A19','M19'].Font.Bold      := true;
          mPlan.Range['A19','A19'].Value2         := '  MERCADORIA';
          mPlan.Range['A20','A23'].Interior.Color := clBlack;
          mPlan.Range['A20','A23'].Font.Color     := $002894FF;
          mPlan.Range['A20','A20'].Value2         := 'Produto';
          mPlan.Range['B20','B20'].Value2         := tImpressao.FieldByName('Produto').AsString;
          mPlan.Range['A21','A21'].Value2         := 'Tipo de Embalagem';
          mPlan.Range['B21','B21'].Value2         := tImpressao.FieldByName('Tipo_Embalagem').AsString;
          mPlan.Range['F21','F21'].Value2         := 'Qtde Embalagem';
          mPlan.Range['G21','G21'].Value2         := tImpressao.FieldByName('Quantidade_Unidade').AsString;
          mPlan.Range['I21','I21'].Value2         := 'Container';
          mPlan.Range['J21','J21'].Value2         := tImpressao.FieldByName('Container').AsString;
          mPlan.Range['A22','A22'].Value2         := 'Volumes';
          mPlan.Range['B22','B22'].Value2         := tImpressao.FieldByName('Volume_Qtde').AsFloat;
          mPlan.Range['B22','B22'].NumberFormat   := '#.##0,000';
          mPlan.Range['B22','C22'].Mergecells     := True;
          mPlan.Range['F22','F22'].Value2         := 'Peso Líquido';
          mPlan.Range['G22','G22'].Value2         := tImpressao.FieldByName('Peso_Liquido').AsFloat;
          mPlan.Range['G22','G22'].NumberFormat   := '#.##0,000';
          mPlan.Range['G22','H22'].Mergecells     := True;
          mPlan.Range['I22','I22'].Value2         := 'Peso Bruto';
          mPlan.Range['J22','J22'].Value2         := tImpressao.FieldByName('Peso_Bruto').AsFloat;
          mPlan.Range['J22','J22'].NumberFormat   := '#.##0,000';
          mPlan.Range['J22','K22'].Mergecells     := True;
          mPlan.Range['A23','A23'].Value2         := 'Quantidade';
          mPlan.Range['B23','B23'].Value2         := tImpressao.FieldByName('Quantidade').AsFloat;
          mPlan.Range['B23','B23'].NumberFormat   := '#.##0,000';
          mPlan.Range['B23','C23'].Mergecells     := True;
          mPlan.Range['F21','F23'].Interior.Color := clBlack;
          mPlan.Range['F21','F23'].Font.Color     := $002894FF;
          mPlan.Range['F23','F23'].Value2         := 'Valor Unitário';
          mPlan.Range['G23','G23'].Value2         := tImpressao.FieldByName('FOB_Unitario').AsFloat;
          mPlan.Range['G23','G23'].NumberFormat   := '#.##0,00';
          mPlan.Range['G23','H23'].Mergecells     := True;
          mPlan.Range['I21','I23'].Interior.Color := clBlack;
          mPlan.Range['I21','I23'].Font.Color     := $002894FF;
          mPlan.Range['I23','I23'].Value2         := 'Total ME';
          mPlan.Range['J23','J23'].Value2         := (tImpressao.FieldByName('Quantidade').AsFloat * tImpressao.FieldByName('Quantidade_Unidade').AsFloat) * tImpressao.FieldByName('FOB_Unitario').AsCurrency;
          mPlan.Range['J23','J23'].NumberFormat   := '#.##0,00';
          mPlan.Range['J23','K23'].Mergecells     := True;
          mPlan.Range['L23','L23'].Interior.Color := clBlack;
          mPlan.Range['L21','L23'].Font.Color     := $002894FF;
          mPlan.Range['L23','L23'].Value2         := 'Total Real';
          mPlan.Range['M23','M23'].Value2         := ((tImpressao.FieldByName('Quantidade').AsFloat * tImpressao.FieldByName('Quantidade_Unidade').AsFloat) * tImpressao.FieldByName('FOB_Unitario').AsCurrency) * tImpressao.FieldByName('Cotacao_Exp').AsFloat;;
          mPlan.Range['M23','M23'].NumberFormat   := '#.##0,00';

          // BARRA DE ITENS.
          mPlan.Range['A25','M25'].Interior.Color := $00008FBF;
          mPlan.Range['A25','M25'].Font.Color     := clBlack;
          mPlan.Range['A25','M25'].Font.Bold      := true;
          mPlan.Range['A25','M25'].HorizontalAlignment := 3;
          mPlan.Range['A25','H25'].BorderAround(1, 2, 0, RGB(100,0,0));
          mPlan.Range['I25','I25'].BorderAround(1, 2, 0, RGB(100,0,0));
          mPlan.Range['J25','K25'].BorderAround(1, 2, 0, RGB(100,0,0));
          mPlan.Range['L25','M25'].BorderAround(1, 2, 0, RGB(100,0,0));
          mPlan.Range['A25','A25'].Value2         := 'DESPESA';
          mPlan.Range['A25','H25'].Mergecells     := True;
          mPlan.Range['I25','I25'].Value2         := 'MOEDA';
          mPlan.Range['J25','K25'].Mergecells     := True;
          mPlan.Range['J25','J25'].Value2         := 'VALOR';
          mPlan.Range['L25','M25'].Mergecells     := True;
          mPlan.Range['L25','L25'].Value2         := 'CÂMBIO';

          mLinha             := 26;
          mMoeda             := tDespesas.FieldByName('Simbolo').AsString;
          mDespME            := 0;
          mDespReal          := 0;
          mTotalDespME       := 0;
          mTotalDespReal     := 0;
          mTotalProdutos     := 0;
          mTotalProdDespReal := 0;
          mFreteIntReal      := 0;
          mComissaoPaga      := 0;
          mComissaoRec       := 0;
          mTotalImpostos     := 0;
          mTotalGeral        := 0;

          tDespesas.First;
          while not tDespesas.eof do begin
                mPlan.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Mergecells := true;
                mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Mergecells := True;
                mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Mergecells := True;
                
                // Linhas Laterais.
                mPlan.Range['H'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Item[xlEdgeRight].LineStyle := 3;
                mPlan.Range['H'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Item[xlEdgeRight].Weight    := $00000002;
                mPlan.Range['I'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.Item[xlEdgeRight].LineStyle := 3;
                mPlan.Range['I'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.Item[xlEdgeRight].Weight    := $00000002;
                mPlan.Range['K'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Borders.Item[xlEdgeRight].LineStyle := 3;
                mPlan.Range['K'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Borders.Item[xlEdgeRight].Weight    := $00000002;
                mPlan.Range['M'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Item[xlEdgeRight].LineStyle := 3;
                mPlan.Range['M'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Item[xlEdgeRight].Weight    := $00000002;
                
                // Dados dos itens.
                mPlan.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Value2 := tDespesas.FieldByName('Descricao').AsString;
                mPlan.Range['I'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Value2 := tDespesas.FieldByName('Simbolo').AsString;
                mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Value2 := tDespesas.FieldByName('Valor').AsCurrency;
                mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2 := tDespesas.FieldByName('Cambio').AsCurrency;

                // Formatação dos campos que precisam de mascara.
                mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
                mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].NumberFormat := '#.##0,00';

                mDespME        := mTotalDespME   + tDespesas.FieldByName('Valor').AsCurrency;
                mDespReal      := mTotalDespReal + tDespesas.FieldByName('Cambio').AsCurrency;
                mTotalDespME   := mTotalDespME   + tDespesas.FieldByName('Valor').AsCurrency;
                mTotalDespReal := mTotalDespReal + tDespesas.FieldByName('Cambio').AsCurrency;

                tDespesas.Next;

                if (tDespesas.FieldByName('Simbolo').AsString <> mMoeda) or (tDespesas.eof) then begin
                   inc(mLinha);
                   mPlan.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].MergeCells        := true;
                   mPlan.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.LineStyle := 3;
                   mPlan.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Weight    := $00000002;
                   mPlan.Range['H'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color    := $00FFE6E6;
                   mPlan.Range['H'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Bold         := true;

                   mPlan.Range['H'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Value2       := 'TOTAL ('+mMoeda+')';
                   mPlan.Range['H'+InttoStr(mLinha),'I'+InttoStr(mLinha)].MergeCells   := true;
                   mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Value2       := mDespME;
                   mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
                   mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].MergeCells   := true;
                   mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2       := mDespReal;
                   mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
                   mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].MergeCells   := true;

                   mMoeda    := tDespesas.FieldByName('Simbolo').AsString;
                   mDespME   := 0;
                   mDespReal := 0;
                end;

                inc(mLinha);
          end;

          mFreteIntReal      := tImpressao.FieldByName('Frete_Inter').AsFloat * tImpressao.FieldByName('Cotacao_Frete').AsFloat;
          mTotalProdutos     := ((tImpressao.FieldByName('Quantidade').AsFloat * tImpressao.FieldByName('Quantidade_Unidade').AsFloat) * tImpressao.FieldByName('FOB_Unitario').AsCurrency) * tImpressao.FieldByName('Cotacao_Exp').AsFloat;
          mTotalProdDespReal := mTotalProdutos + mTotalDespReal + mFreteIntReal;

          if tImpressao.FieldByName('Base_Comissao').AsString = 'P' then begin
             mComissaoRec  := mTotalProdutos * (tImpressao.FieldByName('Comissao_Recebida').AsFloat/100);
             mComissaoPaga := mTotalProdutos * (tImpressao.FieldByName('Comissao_Paga').AsFloat/100);
          end else begin
             mComissaoRec  := (mTotalProdutos + mTotalDespReal) * (tImpressao.FieldByName('Comissao_Recebida').AsFloat/100);
             mComissaoPaga := (mTotalProdutos + mTotalDespReal) * (tImpressao.FieldByName('Comissao_Paga').AsFloat/100);
          end;
          
          if tImpressao.FieldByName('Fator').AsFloat > 0 then begin
             mTotalImpostos := Roundto(((mTotalProdDespReal+mComissaoRec+mComissaoPaga) / (tImpressao.FieldByName('Fator').AsFloat/100)) - (mTotalProdDespReal+mComissaoRec+mComissaoPaga), -4);
          end;
          mTotalGeral    := mTotalProdDespReal       + mComissaoRec     + mComissaoPaga           + mTotalImpostos;
       lTotalGeral.Value := lTotalProdDespReal.value + lTradeReal.Value + lComissaoPagaReal.Value + lTotalImpostos.Value;

          inc(mLinha, 2);

          mPlan.Range['J'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.LineStyle   := 1;
          mPlan.Range['J'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color      := $00008FBF;

          mPlan.Range['J'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Color          := clBlack;
          mPlan.Range['J'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Bold           := true;
          mPlan.Range['J'+InttoStr(mLinha),'M'+InttoStr(mLinha)].HorizontalAlignment := 3;
          mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Value2              := 'TOTAIS (ME)';
          mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].MergeCells          := true;
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2              := 'TOTAIS (REAL)';
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].MergeCells          := true;
          
          inc(mLinha);
          mPlan.Range['G'+InttoStr(mLinha),'M'+InttoStr(mLinha+7)].Borders.LineStyle := 1;
          mPlan.Range['G'+InttoStr(mLinha),'M'+InttoStr(mLinha+7)].Borders.Weight    := $00000002;
          mPlan.Range['G'+InttoStr(mLinha),'M'+InttoStr(mLinha+7)].Font.Bold         := true;

          mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2       := 'TOTAL DAS DESPESAS';
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2       := mTotalDespReal;
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
          mPlan.Range['G'+InttoStr(mLinha),'I'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].MergeCells   := true;

          inc(mLinha);
          mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2       := 'FRETE INTERNACIONAL';
          mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Value2       := tImpressao.FieldByName('Frete_Inter').AsCurrency;
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2       := mFreteIntReal;
          mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
          mPlan.Range['G'+InttoStr(mLinha),'I'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].MergeCells   := true;

          inc(mLinha);
          mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2       := 'TOTAL DOS PRODUTOS';
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2       := mTotalProdutos;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
          mPlan.Range['G'+InttoStr(mLinha),'I'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].MergeCells   := true;

          inc(mLinha);
          mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2       := 'TOTAL (Produto+Despesas+Frete Internacional)';
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2       := mTotalProdDespReal;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
          mPlan.Range['G'+InttoStr(mLinha),'I'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].MergeCells   := true;

          inc(mLinha);
          mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2       := 'COMISSÃO TRADE - ('+FormatFloat('#,##0.00%', tImpressao.FieldByName('Comissao_Recebida').AsFloat)+')';
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2       := mComissaoRec;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
          mPlan.Range['G'+InttoStr(mLinha),'I'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].MergeCells   := true;

          inc(mLinha);
          mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2       := 'COMISSÃO PAGA - ('+FormatFloat('#,##0.00%', tImpressao.FieldByName('Comissao_Paga').AsFloat)+')';
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2       := mComissaoPaga;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
          mPlan.Range['G'+InttoStr(mLinha),'I'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].MergeCells   := true;

          inc(mLinha);
          mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2       := 'TOTAL DOS IMPOSTOS ('+FormatFloat('#,##0.0000', tImpressao.FieldByName('Fator').AsFloat/100)+')';
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2       := mTotalImpostos;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
          mPlan.Range['G'+InttoStr(mLinha),'I'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].MergeCells   := true;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].MergeCells   := true;

          inc(mLinha);
          mPlan.Range['G'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color      := $00FFE6E6;
          mPlan.Range['G'+InttoStr(mLinha),'I'+InttoStr(mLinha)].HorizontalAlignment := 3;
          mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2              := 'TOTAL GERAL';
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2              := mTotalGeral;
          mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].NumberFormat        := '#.##0,00';
          mPlan.Range['G'+InttoStr(mLinha),'I'+InttoStr(mLinha)].MergeCells          := true;
          mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].MergeCells          := true;
          mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].MergeCells          := true;
     end;

     ExcelApplication1.Visible[LCID] := true;    // Torna a aplicação visível
end;


end.
