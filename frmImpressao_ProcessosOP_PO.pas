unit frmImpressao_ProcessosOP_PO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, MemDS, DBAccess, MSAccess, RxLookup, Vcl.StdCtrls, Grids, DBGrids, RXDBCtrl, DBCtrls, Vcl.ExtCtrls,
  RXCtrls, Buttons, Funcoes, ppParameter, ppCtrls, ppVar, ppBands, ppReport, ppDBPipe, MaskUtils, ppMemo, jpeg, ComObj, OleServer, Excel2000, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv;

type
  TImpressao_ProcessosOP_PO = class(TForm)
    Image2: TImage;
    bLimpaFiltro: TSpeedButton;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    bImprimir: TButton;
    Grade: TDBGrid;
    StaticText26: TStaticText;
    cResponsavel: TRxDBLookupCombo;
    tOrdem: TMSQuery;
    dstOrdem: TDataSource;
    pEmpresas: TppDBPipeline;
    pOrdem: TppDBPipeline;
    pProcessos: TppDBPipeline;
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
    ppLine12: TppLine;
    ppLabel20: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
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
    ppLabel24: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppDBText41: TppDBText;
    ppLine20: TppLine;
    ppLine13: TppLine;
    ppLine10: TppLine;
    ppDBText42: TppDBText;
    ppShape20: TppShape;
    ppLabel25: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    cExcel: TCheckBox;
    Panel2: TPanel;
    cPesquisa: TEdit;
    StaticText28: TStaticText;
    mPlan: TExcelWorksheet;
    ExcelApplication1: TExcelApplication;
    procedure cResponsavelChange(Sender: TObject);
    procedure bLimpaFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Impressao_ProcessosOP_PO: TImpressao_ProcessosOP_PO;

implementation

uses frmDados, frmMenu_Principal, frmDMDespacho;

{$R *.dfm}

procedure TImpressao_ProcessosOP_PO.cResponsavelChange(Sender: TObject);
begin
      with Dados do begin
//           Grade.DisableScroll;
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
           ProcessosDOC.SQL.Add('WHERE  (Responsavel = :pResponsavel)');
           ProcessosDOC.SQL.Add('ORDER BY Processo');
           ProcessosDOC.ParamByName('pResponsavel').ASString := UsuariosMatricula.AsString;
           ProcessosDOC.Open;
//           Grade.EnableScroll;
      end;
end;

procedure TImpressao_ProcessosOP_PO.bLimpaFiltroClick(Sender: TObject);
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

procedure TImpressao_ProcessosOP_PO.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_PO.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Impressao_ProcessosOP_PO.Release;
      Impressao_ProcessosOP_PO:= nil;
end;

procedure TImpressao_ProcessosOP_PO.bPesquisaClick(Sender: TObject);
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

procedure TImpressao_ProcessosOP_PO.FormShow(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           PO.SQL.Clear;
           PO.SQL.Add('SELECT * FROM PO ORDER BY Data Desc');
           PO.Open;
           
           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios ORDER BY Nome');
           Usuarios.Open;

           if trim(mPesquisa) <> ''  then PO.Locate('Numero', mPesquisa, [loCaseInsensitive]);

      end;
end;

procedure TImpressao_ProcessosOP_PO.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TImpressao_ProcessosOP_PO.bImprimirClick(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           Configuracao.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

           with tOrdem do begin
                sql.clear;
                sql.add('SELECT Processo');
                sql.add('      ,Numero');
                sql.add('      ,Data         = (SELECT CONVERT(DATE, Data, 101))');
                sql.add('      ,Vendor       = (SELECT Nome FROM Fornecedores WHERE Codigo = Exportador)');
                sql.add('      ,Vendor_End   = (SELECT Rua+'', ''+Rua_Numero FROM Fornecedores WHERE Codigo = Exportador)');
                sql.add('      ,Vendor_Cid   = (SELECT Complemento+'' - ''+ISNULL(CEP, '''') FROM Fornecedores WHERE Codigo = Exportador)');
                sql.add('      ,Vendor_Tel   = ''PHONE: ''+ISNULL((SELECT Telefone1 FROM Fornecedores WHERE Codigo = Exportador), '''')');
                sql.add('      ,Vendor_Email = ''EMAIL: ''+ISNULL((SELECT Email FROM Fornecedores WHERE Codigo = Exportador), '''')');
                sql.add('      ,Empresa      = (SELECT Razao_Social FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
                sql.add('      ,Endereco     = (SELECT Rua+'' ''+CAST(Rua_Numero AS VARCHAR(15))+ISNULL(Complemento, '''')+'' - ''+Bairro FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
                sql.add('      ,Endereco2    = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa))+');
                sql.add('                     '' (''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)+'')'' ');
                sql.add('      ,CEP          = (SELECT CEP FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
                sql.add('      ,Telefones    = ''PHONE: ''+ISNULL((SELECT Telefone1+''/''+Telefone2 FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa), '''')');
                sql.add('      ,Email        = ''EMAIL: ''+ISNULL((SELECT Email FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa), '''')');
                sql.add('      ,Cliente      = (SELECT Nome FROM Clientes WHERE Codigo = Cliente)');
                sql.add('      ,Cliente_End  = (SELECT Rua+'', ''+Rua_Numero FROM Clientes WHERE Codigo = Cliente)');
                sql.add('      ,Cliente_Cid  = (SELECT ISNULL(Complemento+'' '', '''')+IIF(ISNULL(CEP, '''') <> '''', ''CEP: ''+CEP+'' ,'', '''')+Municipio FROM Clientes WHERE Codigo = Cliente)');
                sql.add('      ,Cliente_Tel  = ''PHONE: ''+ISNULL((SELECT Telefone1 FROM Clientes WHERE Codigo = Cliente), '''')');
                sql.add('      ,Cliente_Email= ''EMAIL: ''+ISNULL((SELECT Email FROM Clientes WHERE Codigo = Cliente), '''')');
                sql.add('      ,Responsavel  = Requisitante');
                sql.add('      ,Via_Transporte = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ViaTransporte WHERE Codigo = PO.Via_Transporte)');
                sql.add('      ,Local_Embarque');
                sql.add('      ,Incoterms');
                sql.add('      ,Observacao');
                sql.add('      ,Condicao_Pgto= (SELECT Descricao FROM CondicaoCambial WHERE Codigo = Condicao_Cambial)');
                sql.add('      ,SubTotal     = (SELECT SUM(Valor*Quantidade) FROM POItens WHERE PO = Numero)');
                sql.add('      ,Tax          = 0');
                sql.add('      ,Shipping     = 0');
                sql.add('      ,Other        = 0');
                sql.add('      ,Total        = (SELECT SUM(Valor*Quantidade) FROM POItens WHERE PO = Numero)');
                sql.add('      ,Moeda_Simbol = (SELECT Simbolo FROM Cybersoft_Cadastros.dbo.Moedas WHERE Codigo = Moeda)');
                sql.add('FROM  PO');
                //sql.Add('WHERE (SELECT COUNT(*) FROM POItens WHERE POItens.PO = PO.Numero) > 0');
                sql.Add('WHERE Numero = :pNumero');
                sql.Add('ORDER BY Numero');
                paramByName('pNumero').AsString := PONumero.AsString;
                //tordem.SQL.SaveToFile('c:\temp\Ordem_Compra.sql');
                open;
           end;
           with tItens do begin
                sql.Clear;
                sql.Add('SELECT Codigo_Mercadoria');
                sql.Add('      ,Descricao        = ISNULL((SELECT LEFT(Descricao, CASE WHEN CHARINDEX(''<{'',Descricao) > 0 THEN CHARINDEX(''<{'',Descricao)-1 ELSE LEN(Descricao) END) FROM Produtos WHERE Codigo = Codigo_Mercadoria), '''') +');
                sql.Add('                          ISNULL(CHAR(13)+CHAR(10)+''[''+(SELECT Nome FROM Fornecedores WHERE Codigo = Fabricante)+'' - Code:''+(SELECT Codigo_Fabricante FROM Produtos WHERE Codigo = Codigo_Mercadoria)+'']'', '''') ');
                sql.Add('      ,Unidade_Orig     = (SELECT Unidade_Origem        FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                sql.Add('      ,Unidade_OrigDesc = (SELECT MAX(Descricao_Ingles) FROM Cybersoft_Cadastros.dbo.UnidadeMedida WHERE Codigo = (SELECT Unidade_Origem FROM Produtos WHERE Codigo = Codigo_Mercadoria))');
                sql.Add('      ,Unidade          = (SELECT Unidade               FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                sql.Add('      ,Unidade_Desc     = (SELECT MAX(Descricao)        FROM Cybersoft_Cadastros.dbo.UnidadeMedida WHERE Codigo = (SELECT Unidade FROM Produtos WHERE Codigo = Codigo_Mercadoria))');
                sql.Add('      ,Quantidade');
                sql.Add('      ,Quantidade_Volumes');
                sql.Add('      ,Peso_Liquido     = (SELECT Peso_Liquido FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                sql.Add('      ,Peso_Total       = (SELECT Peso_Liquido FROM Produtos WHERE Codigo = Codigo_Mercadoria) * Quantidade_Volumes');
                sql.Add('      ,Valor');
                sql.Add('      ,Total = Valor * Quantidade');
                sql.Add('      ,NCM');
                sql.Add('      ,Fabricante');
                sql.Add('FROM  POItens ');
                sql.Add('WHERE PO = '+QuotedStr(tOrdem.FieldByName('Numero').AsString));
                sql.Add('ORDER BY PO, Fabricante, Item');
                //titens.SQL.SaveToFile('c:\temp\Ordem_Compra_Itens.sql');
                open;
           end;

           if not cExcel.Checked then begin
              if FileExists(Dados.EmpresasLogo.Value) then
                 iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              if FileExists(Dados.EmpresasAssinatura.Value) then
                 iAssinatura.Picture.LoadFromFile(Dados.EmpresasAssinatura.Value);

              lTotal.Caption := 'TOTAL '+tOrdem.FieldByName('Moeda_Simbol').AsString;
              rOrdem.Print;
              rOrdem.Reset;
           end else begin
              ExportaExcel;
           end;
      end
end;

procedure TImpressao_ProcessosOP_PO.cPesquisaChange(Sender: TObject);
Var
    tPesq:TMSQuery;
begin
     tPesq            := TMSQuery.Create(Impressao_ProcessosOP_PO);
     tPesq.Connection := Dados.Banco_Empresas;
     tPesq.SQL.Clear;
     tPesq.SQL.Add('SELECT Numero FROM PO WHERE Numero LIKE '+QuotedStr('%'+Trim(cPesquisa.Text)+'%'));
     tPesq.Open;
     if tPesq.RecordCount = 0 then begin
        tPesq.SQL.Clear;
        tPesq.SQL.Add('SELECT Numero FROM PO WHERE Processo LIKE '+QuotedStr('%'+Trim(cPesquisa.Text)+'%'));
        tPesq.Open;
     end;
     with dmDespacho do begin
          PO.Locate('Numero', tPesq.FieldByName('Numero').AsString, [loCaseInsensitive]);
     end;
     tPesq.Destroy;
end;

// Envia informações para o excel.
procedure TImpressao_ProcessosOP_PO.ExportaEXCEL;
var
  LCID,
  mLinha,
  mParte,
  i: Integer;

  WKBK: _Workbook;
begin
       LCID                                  := GetUserDefaultLCID;                                  // Pega o usuário logado
       ExcelApplication1.DisplayAlerts[LCID] := false;                                               // Remove alertas do excel
       WKBK                                  := ExcelApplication1.Workbooks.Add(EmptyParam, LCID);   // Cria o novo arquivo
       mPlan.ConnectTo(WKBK.Worksheets[1] as _Worksheet);                                            // Conecta a planilha (1) que será a planilha a receber os dados
       mPlan.Activate(LCID);                                                                         // Ativa a planilha conectada
       ExcelApplication1.ScreenUpdating[LCID] := True;                                               // Torna possível fazer alterações

       // Ajusta o tamanho de todas as colunas.
       mPlan.Name                         := 'Purchase Order ('+ApenasNumeros(tOrdem.FieldByName('Numero').AsString)+')'; // Atribui um nome a planilha
       mPlan.Range['A1','Q1'].ColumnWidth := 9;
       mPlan.Range['A1','Q300'].Font.Size := 8;
       mPlan.Range['O1','Q1'].ColumnWidth := 12;

       // Cabecalho - Dados da Empresa.
       if FileExists(Dados.Empresas.FieldByName('Logo').AsString) then begin
          mPlan.Shapes.AddPicture(Dados.Empresas.FieldByName('Logo').AsString, 0, 1, 20, 10, 106, 59);  // Logo da Empresa.
       end;

       mPlan.Range['D1','D1'].Value2              := tOrdem.FieldByName('Empresa').AsString;
       mPlan.Range['D1','D1'].Font.Size           := 14;
       mPlan.Range['D1','D1'].Font.Bold           := true;
       mPlan.Range['D2','D2'].Value2              := tOrdem.FieldByName('Endereco').AsString;
       mPlan.Range['D3','D3'].Value2              := tOrdem.FieldByName('Endereco2').AsString;
       mPlan.Range['D4','D4'].Value2              := tOrdem.FieldByName('Telefones').AsString;
       mPlan.Range['D5','D5'].Value2              := tOrdem.FieldByName('Email').AsString;
       mPlan.Range['D1','O1'].Mergecells          := True;
       mPlan.Range['D2','O2'].Mergecells          := True;
       mPlan.Range['D3','O3'].Mergecells          := True;
       mPlan.Range['D4','O4'].Mergecells          := True;
       mPlan.Range['D5','O5'].Mergecells          := True;
       mPlan.Range['D1','O5'].HorizontalAlignment := 1;
       mPlan.Range['D1','O5'].VerticalAlignment   := 1;

       // Cabecalho - Número do PO.
       mPlan.Range['P1','P1'].Value2              := 'PURCHASE ORDER';
       mPlan.Range['P1','Q1'].Mergecells          := True;
       mPlan.Range['P1','P1'].Interior.Color      := clBlack;
       mPlan.Range['P1','P1'].Font.Color          := clWhite;
       mPlan.Range['P1','P1'].Font.Bold           := true;
       mPlan.Range['P1','P1'].Font.Size           := 12;
       mPlan.Range['P1','P1'].HorizontalAlignment := 3;
       mPlan.Range['P1','P1'].VerticalAlignment   := 2;

       mPlan.Range['P2','P2'].Value2              := 'DATE';
       mPlan.Range['Q2','Q2'].Value2              := tOrdem.FieldByName('Data').AsString;
       mPlan.Range['Q2','Q2'].Font.Bold           := true;
       mPlan.Range['Q2','Q2'].Font.Size           := 10;
       mPlan.Range['Q2','Q2'].HorizontalAlignment := 3;
       mPlan.Range['P3','P3'].Value2              := 'PO#';
       mPlan.Range['Q3','Q3'].Value2              := tOrdem.FieldByName('Numero').AsString;
       mPlan.Range['Q3','Q3'].Font.Bold           := true;
       mPlan.Range['Q3','Q3'].Font.Size           := 10;
       mPlan.Range['Q3','Q3'].HorizontalAlignment := 3;

       // Dados dos envolvidos.
       mPlan.Range['A7','A7'].Value2              := 'VENDOR';
       mPlan.Range['A7','E7'].Mergecells          := True;
       mPlan.Range['A7','E7'].Interior.Color      := clBlack;
       mPlan.Range['A7','E7'].Font.Color          := clWhite;
       mPlan.Range['A7','E7'].Font.Bold           := true;
       mPlan.Range['A7','E7'].HorizontalAlignment := 3;
       mPlan.Range['A7','E7'].VerticalAlignment   := 2;
       mPlan.Range['F8','F8'].ColumnWidth         := 2;
       mPlan.Range['A8','A8'].Value2              := tOrdem.FieldByName('Vendor').AsString;
       mPlan.Range['A9','A9'].Value2              := tOrdem.FieldByName('Vendor_End').AsString;
       mPlan.Range['A10','A10'].Value2            := tOrdem.FieldByName('Vendor_Cid').AsString;
       mPlan.Range['A11','A11'].Value2            := tOrdem.FieldByName('Vendor_Tel').AsString;
       mPlan.Range['A12','A12'].Value2            := tOrdem.FieldByName('Vendor_Email').AsString;
       mPlan.Range['A8' ,'E8'].Mergecells         := True;
       mPlan.Range['A9' ,'E9'].Mergecells         := True;
       mPlan.Range['A10','E10'].Mergecells        := True;
       mPlan.Range['A11','E11'].Mergecells        := True;
       mPlan.Range['A12','E12'].Mergecells        := True;
       mPlan.Range['A8','E12'].BorderAround(1, 2, 0, RGB(100,0,0));

       mPlan.Range['G7','G7'].Value2              := 'IMPORTER/CONSIGNEE';
       mPlan.Range['G7','K7'].Mergecells          := True;
       mPlan.Range['G7','K7'].Interior.Color      := clBlack;
       mPlan.Range['G7','K7'].Font.Color          := clWhite;
       mPlan.Range['G7','K7'].Font.Bold           := true;
       mPlan.Range['G7','K7'].HorizontalAlignment := 3;
       mPlan.Range['G7','K7'].VerticalAlignment   := 2;
       mPlan.Range['L8','L8'].ColumnWidth         := 2;
       mPlan.Range['G8','G8'].Value2              := tOrdem.FieldByName('Empresa').AsString;
       mPlan.Range['G9','G9'].Value2              := tOrdem.FieldByName('Endereco').AsString;
       mPlan.Range['G10','G10'].Value2            := tOrdem.FieldByName('Endereco2').AsString;
       mPlan.Range['G11','G11'].Value2            := tOrdem.FieldByName('Telefones').AsString;
       mPlan.Range['G12','G12'].Value2            := tOrdem.FieldByName('Email').AsString;
       mPlan.Range['G8','K8'].Mergecells          := True;
       mPlan.Range['G9','K9'].Mergecells          := True;
       mPlan.Range['G10','K10'].Mergecells        := True;
       mPlan.Range['G11','K11'].Mergecells        := True;
       mPlan.Range['G12','K12'].Mergecells        := True;
       mPlan.Range['G8','K12'].BorderAround(1, 2, 0, RGB(100,0,0));

       mPlan.Range['M7','M7'].Value2              := 'SHIP TO';
       mPlan.Range['M7','Q7'].Mergecells          := True;
       mPlan.Range['M7','Q7'].Interior.Color      := clBlack;
       mPlan.Range['M7','Q7'].Font.Color          := clWhite;
       mPlan.Range['M7','Q7'].Font.Bold           := true;
       mPlan.Range['M7','Q7'].HorizontalAlignment := 3;
       mPlan.Range['M7','Q7'].VerticalAlignment   := 2;
       mPlan.Range['M8','M8'].Value2              := tOrdem.FieldByName('Cliente').AsString;
       mPlan.Range['M9','M9'].Value2              := tOrdem.FieldByName('Cliente_End').AsString;
       mPlan.Range['M10','M10'].Value2            := tOrdem.FieldByName('Cliente_Cid').AsString;
       mPlan.Range['M11','M11'].Value2            := tOrdem.FieldByName('Cliente_Tel').AsString;
       mPlan.Range['M12','M12'].Value2            := tOrdem.FieldByName('Cliente_Email').AsString;
       mPlan.Range['M8' ,'Q8'].Mergecells         := True;
       mPlan.Range['M9' ,'Q9'].Mergecells         := True;
       mPlan.Range['M10','Q10'].Mergecells        := True;
       mPlan.Range['M11','Q11'].Mergecells        := True;
       mPlan.Range['M12','Q12'].Mergecells        := True;
       mPlan.Range['M8','Q12'].BorderAround(1, 2, 0, RGB(100,0,0));

       // Dados comerciais.
       mPlan.Range['A14','Q14'].Interior.Color      := clBlack;
       mPlan.Range['A14','Q14'].Font.Color          := clWhite;
       mPlan.Range['A14','Q14'].Font.Bold           := true;
       mPlan.Range['A14','Q14'].HorizontalAlignment := 3;
       mPlan.Range['A14','Q14'].VerticalAlignment   := 2;

       mPlan.Range['A14','A14'].Value2              := 'REQUISITIONER';
       mPlan.Range['A14','D14'].Mergecells          := True;
       mPlan.Range['A15','A15'].Value2              := tOrdem.FieldByName('Responsavel').AsString;
       mPlan.Range['A15','D15'].Mergecells          := True;
       mPlan.Range['A15','D15'].HorizontalAlignment := 3;
       mPlan.Range['A15','D15'].BorderAround(1, 2, 0, RGB(100,0,0));

       mPlan.Range['E14','E14'].Value2              := 'SHIP VIA';
       mPlan.Range['E14','H14'].Mergecells          := True;
       mPlan.Range['E15','E15'].Value2              := tOrdem.FieldByName('Via_Transporte').AsString;
       mPlan.Range['E15','H15'].Mergecells          := True;
       mPlan.Range['E15','H15'].HorizontalAlignment := 3;
       mPlan.Range['E15','H15'].BorderAround(1, 2, 0, RGB(100,0,0));

       mPlan.Range['I14','I14'].Value2              := 'INCOTERMS';
       mPlan.Range['I14','L14'].Mergecells          := True;
       mPlan.Range['I15','I15'].Value2              := tOrdem.FieldByName('Incoterms').AsString;
       mPlan.Range['I15','L15'].Mergecells          := True;
       mPlan.Range['I15','L15'].HorizontalAlignment := 3;
       mPlan.Range['I15','L15'].BorderAround(1, 2, 0, RGB(100,0,0));

       mPlan.Range['M14','M14'].Value2              := 'SHIPPING TERMS';
       mPlan.Range['M14','Q14'].Mergecells          := True;
       mPlan.Range['M15','M15'].Value2              := tOrdem.FieldByName('Condicao_Pgto').AsString;
       mPlan.Range['M15','Q15'].Mergecells          := True;
       mPlan.Range['M15','Q15'].HorizontalAlignment := 3;
       mPlan.Range['M15','Q15'].BorderAround(1, 2, 0, RGB(100,0,0));

       // Cabeçalho dos itens.
       mPlan.Range['A17','Q17'].Interior.Color      := clBlack;
       mPlan.Range['A17','Q17'].Font.Color          := clWhite;
       mPlan.Range['A17','Q17'].Font.Bold           := true;
       mPlan.Range['A17','Q17'].HorizontalAlignment := 3;
       mPlan.Range['A17','Q17'].VerticalAlignment   := 2;

       mPlan.Range['A17','A17'].Value2     := 'ITEM #';
       mPlan.Range['B17','B17'].Value2     := 'DESCRIPTION';
       mPlan.Range['B17','F17'].Mergecells := True;

       mPlan.Range['G17','G17'].Value2     := 'NCM';
       mPlan.Range['H17','H17'].Value2     := 'PACKAGE TYPE';
       mPlan.Range['H17','I17'].Mergecells := True;

       mPlan.Range['J17','J17'].Value2     := 'QTY PKGS';
       mPlan.Range['J17','K17'].Mergecells := True;

       mPlan.Range['L17','L17'].Value2     := 'NET QTY';
       mPlan.Range['L17','M17'].Mergecells := True;

       mPlan.Range['N17','N17'].Value2     := 'UN';
       mPlan.Range['O17','O17'].Value2     := 'TOTAL QTY';
       mPlan.Range['P17','P17'].Value2     := 'UNIT PRICE';
       mPlan.Range['Q17','Q17'].Value2     := 'TOTAL';

       // Itens do PO.
       mPlan.Range['A17','A17'].Borders.Item[$0000000A].Weight    := $00000002;// externo
       mPlan.Range['F17','F17'].Borders.Item[$0000000A].Weight    := $00000002;// externo
       mPlan.Range['G17','G17'].Borders.Item[$0000000A].Weight    := $00000002;// externo
       mPlan.Range['I17','I17'].Borders.Item[$0000000A].Weight    := $00000002;// externo
       mPlan.Range['K17','K17'].Borders.Item[$0000000A].Weight    := $00000002;// externo
       mPlan.Range['M17','M17'].Borders.Item[$0000000A].Weight    := $00000002;// externo
       mPlan.Range['N17','N17'].Borders.Item[$0000000A].Weight    := $00000002;// externo
       mPlan.Range['O17','O17'].Borders.Item[$0000000A].Weight    := $00000002;// externo
       mPlan.Range['P17','P17'].Borders.Item[$0000000A].Weight    := $00000002;// externo
       mPlan.Range['Q17','Q17'].Borders.Item[$0000000A].Weight    := $00000002;// externo

       mPlan.Range['A17','Q17'].Borders.LineStyle := 1; //xlContinuous;
       mPlan.Range['A17','Q17'].Borders.Weight    := 2; //xlThin;
       mPlan.Range['A17','Q17'].Borders.Color     := RGB(255,255,255);
       mPlan.Range['A18','Q'+InttoStr(17+tItens.RecordCount)].BorderAround(1, 2, 0, RGB(100,0,0));

       mLinha := 18;

       tItens.First;
       while not tItens.eof do begin
             mPlan.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells          := true;
             mPlan.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].WrapText            := true;
             mPlan.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].VerticalAlignment   := 1;
             mPlan.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].HorizontalAlignment := 1;
             mPlan.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].RowHeight           := 18+((Length(tItens.FieldByName('Descricao').AsString) div 52) * 15);
             mPlan.Range['H'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Mergecells          := True;
             mPlan.Range['J'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Mergecells          := True;
             mPlan.Range['L'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Mergecells          := True;
             mPlan.Range['N'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Mergecells          := True;

             // Linhas Laterais.
             mPlan.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Borders.Item[$0000000A].Weight := $00000002;
             mPlan.Range['F'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Borders.Item[$0000000A].Weight := $00000002;
             mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Item[$0000000A].Weight := $00000002;
             mPlan.Range['H'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Borders.Item[$0000000A].Weight := $00000002;
             mPlan.Range['K'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Borders.Item[$0000000A].Weight := $00000002;
             mPlan.Range['M'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Item[$0000000A].Weight := $00000002;
             mPlan.Range['N'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Borders.Item[$0000000A].Weight := $00000002;
             mPlan.Range['O'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Borders.Item[$0000000A].Weight := $00000002;
             mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha)].Borders.Item[$0000000A].Weight := $00000002;
             mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Item[$0000000A].Weight := $00000002;

             // Dados dos itens.
             mPlan.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Value2 := tItens.FieldByName('Codigo_Mercadoria').AsString;
             mPlan.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].VerticalAlignment   := 1;
             mPlan.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Value2 := tItens.FieldByName('Descricao').AsString;
             mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2 := tItens.FieldByName('NCM').AsString;
             mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlan.Range['H'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Value2 := tItens.FieldByName('Unidade_OrigDesc').AsString;
             if tItens.FieldByName('Quantidade_Volumes').AsFloat > 0 then
                mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Value2 := tItens.FieldByName('Quantidade_Volumes').AsInteger;
             if tItens.FieldByName('Peso_Liquido').AsFloat > 0 then
                mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2 := tItens.FieldByName('Peso_Liquido').AsFloat;
             mPlan.Range['N'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Value2 := tItens.FieldByName('Unidade').AsString;
             mPlan.Range['N'+InttoStr(mLinha),'N'+InttoStr(mLinha)].HorizontalAlignment := 3;
             if tItens.FieldByName('Peso_Total').AsFloat > 0 then
                mPlan.Range['O'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Value2 := tItens.FieldByName('Peso_Total').AsFloat;
             if tItens.FieldByName('Valor').AsFloat > 0 then
                mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha)].Value2 := tItens.FieldByName('Valor').AsCurrency;
             if tItens.FieldByName('Total').AsFloat > 0 then
                mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Value2 := tItens.FieldByName('Total').AsCurrency;

             // Formatação dos campos que precisam de mascara.
             mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].NumberFormat := '####.##.##';
             mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].NumberFormat := '#.##0,000';
             mPlan.Range['O'+InttoStr(mLinha),'O'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
             mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
             mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].NumberFormat := '#.##0,00';

             tItens.Next;
             inc(mLinha);
       end;

       inc(mLinha);

       mPlan.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2              := 'COMMENTS OR SPECIAL INSTRUCTIONS';
       mPlan.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].MergeCells          := true;
       mPlan.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;
       mPlan.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment   := 2;
       mPlan.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color      := clBlack;
       mPlan.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Color          := clWhite;
       mPlan.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold           := true;

       mParte := 1;
       for i := 1 to (Length(tOrdem.FieldByName('Observacao').AsString) div 77)+1 do begin
           mPlan.Range['A'+InttoStr(mLinha+i),'A'+InttoStr(mLinha+i)].Value2            := Copy(tOrdem.FieldByName('Observacao').AsString, mParte, 77);
           mPlan.Range['A'+InttoStr(mLinha+i),'A'+InttoStr(mLinha+i)].VerticalAlignment := 2;
           mPlan.Range['A'+InttoStr(mLinha+i),'G'+InttoStr(mLinha+i)].MergeCells        := true;
           inc(mParte, 77);
       end;

       mPlan.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha+(Length(tOrdem.FieldByName('Observacao').AsString) div 77)+1)].BorderAround(1, 2, 0, RGB(100,0,0));

       mPlan.Range['P'+InttoStr(mLinha)  ,'P'+InttoStr(mLinha)].Value2           := 'SUBTOTAL';
       mPlan.Range['P'+InttoStr(mLinha+1),'P'+InttoStr(mLinha+1)].Value2         := 'TAX';
       mPlan.Range['P'+InttoStr(mLinha+2),'P'+InttoStr(mLinha+2)].Value2         := 'SHIPPING';
       mPlan.Range['P'+InttoStr(mLinha+3),'P'+InttoStr(mLinha+3)].Value2         := 'OTHER';
       mPlan.Range['P'+InttoStr(mLinha+4),'P'+InttoStr(mLinha+4)].Value2         := 'TOTAL '+tOrdem.FieldByName('Moeda_Simbol').AsString;
       mPlan.Range['P'+InttoStr(mLinha+4),'P'+InttoStr(mLinha+4)].Interior.Color := clBlack;
       mPlan.Range['P'+InttoStr(mLinha+4),'P'+InttoStr(mLinha+4)].Font.Color     := clWhite;

       mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha+4)].HorizontalAlignment := 1;
       mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha+4)].VerticalAlignment   := 2;
       mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha+4)].Font.Bold           := true;

       mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha+4)].Borders.LineStyle := 1; //xlContinuous;
       mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha+4)].Borders.Weight    := 2; //xlThin;
       mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha+4)].Borders.Color     := RGB(0,0,0);

       if tOrdem.FieldByName('Total').AsCurrency > 0 then begin
          mPlan.Range['Q'+InttoStr(mLinha)  ,'Q'+InttoStr(mLinha)].Value2   := tOrdem.FieldByName('SubTotal').AsCurrency;
          mPlan.Range['Q'+InttoStr(mLinha+1),'Q'+InttoStr(mLinha+1)].Value2 := tOrdem.FieldByName('Tax').AsCurrency;
          mPlan.Range['Q'+InttoStr(mLinha+2),'Q'+InttoStr(mLinha+2)].Value2 := tOrdem.FieldByName('Shipping').AsCurrency;
          mPlan.Range['Q'+InttoStr(mLinha+3),'Q'+InttoStr(mLinha+3)].Value2 := tOrdem.FieldByName('Other').AsCurrency;
          mPlan.Range['Q'+InttoStr(mLinha+4),'Q'+InttoStr(mLinha+4)].Value2 := tOrdem.FieldByName('Total').AsCurrency;

          mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].NumberFormat     := '#.##0,00';
          mPlan.Range['Q'+InttoStr(mLinha+1),'Q'+InttoStr(mLinha+1)].NumberFormat := '#.##0,00';
          mPlan.Range['Q'+InttoStr(mLinha+2),'Q'+InttoStr(mLinha+2)].NumberFormat := '#.##0,00';
          mPlan.Range['Q'+InttoStr(mLinha+3),'Q'+InttoStr(mLinha+3)].NumberFormat := '#.##0,00';
          mPlan.Range['Q'+InttoStr(mLinha+4),'Q'+InttoStr(mLinha+4)].NumberFormat := '#.##0,00';
       end;

       mLinha := mLinha + (Length(tOrdem.FieldByName('Observacao').AsString) div 77)+1; 

       mPlan.Range['F'+InttoStr(mLinha+3),'F'+InttoStr(mLinha+3)].Value2              := 'If you have any questions about this purchase order, please contact';
       mPlan.Range['F'+InttoStr(mLinha+3),'M'+InttoStr(mLinha+3)].MergeCells          := true;
       mPlan.Range['F'+InttoStr(mLinha+4),'F'+InttoStr(mLinha+4)].Value2              := tOrdem.FieldByName('Responsavel').AsString;
       mPlan.Range['F'+InttoStr(mLinha+4),'M'+InttoStr(mLinha+4)].MergeCells          := true;
       mPlan.Range['F'+InttoStr(mLinha+5),'F'+InttoStr(mLinha+5)].Value2              := tOrdem.FieldByName('Email').AsString;
       mPlan.Range['F'+InttoStr(mLinha+5),'M'+InttoStr(mLinha+5)].MergeCells          := true;
       mPlan.Range['F'+InttoStr(mLinha+3),'M'+InttoStr(mLinha+5)].Font.Size           := 10;
       mPlan.Range['F'+InttoStr(mLinha+3),'M'+InttoStr(mLinha+5)].Font.Italic         := true;
       mPlan.Range['F'+InttoStr(mLinha+3),'M'+InttoStr(mLinha+5)].Font.Bold           := true;
       mPlan.Range['F'+InttoStr(mLinha+3),'M'+InttoStr(mLinha+5)].HorizontalAlignment := 3;
       mPlan.Range['F'+InttoStr(mLinha+3),'M'+InttoStr(mLinha+5)].VerticalAlignment   := 2;

       // Assinatura digital (Imagem).
       //mPlan.Shapes.AddPicture(Dados.Empresas.FieldByName('Assinatura').AsString, 0, 1, 20, mLinha*15, 106, 59);

       ExcelApplication1.activewindow.displaygridlines := false;
       ExcelApplication1.Visible[LCID] := true;    // Torna a aplicação visível
end;

end.

