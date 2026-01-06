unit frmImpressao_ProcessosOP_InvoiceExp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, MemDS, DBAccess, MSAccess, ppParameter, ppModule, raCodMod,ppVar, ppBands, ppMemo, ppReport,
  ppStrtch, ppSubRpt, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, Vcl.StdCtrls, Grids, DBGrids, RXDBCtrl, DBCtrls, Vcl.ExtCtrls, RXCtrls, MaskUtils, Funcoes, ppDesignLayer, ComObj, OleServer, Excel2000, ExcelXP;

type
  TImpressao_ProcessosOP_InvoiceExp = class(TForm)
    Image2: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bImprimir: TButton;
    Grade: TDBGrid;
    StaticText5: TStaticText;
    cPesquisa: TEdit;
    pEmpresas: TppDBPipeline;
    pInvoice: TppDBPipeline;
    rInvoice: TppReport;
    ppParameterList1: TppParameterList;
    tInvoice: TMSQuery;
    dstInvoice: TDataSource;
    tInvoiceItens: TMSQuery;
    dstInvoiceItens: TDataSource;
    pInvoiceItens: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lEndereco: TppLabel;
    lEndereco2: TppLabel;
    lEndereco3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    iLogo: TppImage;
    ppLabel6: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    lNomeExp: TppDBText;
    ppLabel7: TppLabel;
    ppLabel3: TppLabel;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape5: TppShape;
    ppLabel15: TppLabel;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel17: TppLabel;
    ppShape8: TppShape;
    ppLabel18: TppLabel;
    ppShape10: TppShape;
    ppLabel20: TppLabel;
    ppShape11: TppShape;
    ppLabel21: TppLabel;
    ppLabel16: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText16: TppDBText;
    ppLine7: TppLine;
    ppDBText17: TppDBText;
    ppLine14: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBText18: TppDBText;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppDBText20: TppDBText;
    ppLine1: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine21: TppLine;
    ppLabel22: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine20: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBText4: TppDBText;
    ppDBText27: TppDBText;
    ppLabel2: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText3: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppShape13: TppShape;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape12: TppShape;
    ppLine25: TppLine;
    ppLabel23: TppLabel;
    ppLine26: TppLine;
    ppLabel24: TppLabel;
    ppLine27: TppLine;
    ppLabel25: TppLabel;
    ppLine28: TppLine;
    ppLabel26: TppLabel;
    ppLine29: TppLine;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppShape15: TppShape;
    ppLine6: TppLine;
    ppLabel11: TppLabel;
    ppLine8: TppLine;
    ppLabel12: TppLabel;
    ppLine9: TppLine;
    ppLabel13: TppLabel;
    ppLine10: TppLine;
    ppLabel14: TppLabel;
    ppLine11: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppShape16: TppShape;
    ppLine12: TppLine;
    ppLabel28: TppLabel;
    ppLine13: TppLine;
    ppLabel29: TppLabel;
    ppLine16: TppLine;
    ppLabel30: TppLabel;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppDBText26: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel19: TppLabel;
    ppDBText19: TppDBText;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppShape17: TppShape;
    ppLabel27: TppLabel;
    ppDBText25: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel31: TppLabel;
    ppShape18: TppShape;
    ppLabel32: TppLabel;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ExcelApplication1: TExcelApplication;
    mPlan: TExcelWorksheet;
    cExcel: TCheckBox;
    iAssinatura: TppImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure rInvoiceBeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ExportaEXCEL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_InvoiceExp: TImpressao_ProcessosOP_InvoiceExp;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProcessosOP_InvoiceExp.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_InvoiceExp.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_ProcessosOP_InvoiceExp.FormShow(Sender: TObject);
begin
      with Dados, Invoice do begin
           sql.clear;
           sql.Add('select * from Invoice where Imp_Exp = ''E'' order by Numero ');
           open;
      end;
end;

procedure TImpressao_ProcessosOP_InvoiceExp.bImprimirClick(Sender: TObject);
begin
      with Dados do begin
           with Empresas do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
                Open;
           end;
           with tInvoice do begin
                SQL.Clear;
                SQL.Add('SET LANGUAGE English');
                SQL.Add('SELECT Inv.Numero');
                SQL.Add('      ,Inv.Data');
                SQL.Add('      ,Inv.Processo');
                SQL.Add('      ,Moeda               = (SELECT Simbolo FROM Cybersoft_Cadastros.dbo.Moedas WHERE Codigo = Inv.Moeda_Exp)');
                SQL.Add('      ,Cotacao             = ISNULL((SELECT Valor FROM Cybersoft_Cadastros.dbo.Cotacao WHERE Moeda = Inv.Moeda_Exp AND Data = Inv.Data),0)');
                SQL.Add('      ,Inv.INCOTERMS');
                SQL.Add('      ,INCOTERMS_Desc      = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.INCOTERMS WHERE Codigo = Inv.INCOTERMS)');
                SQL.Add('      ,Condicao_Cambial    = (SELECT Descricao FROM CondicaoCambial WHERE Codigo = Inv.Condicao_Cambio)');
                SQL.Add('      ,Condicao_Venda      = Inv.Condicao_Venda');
                SQL.Add('      ,Exportador          = (SELECT Razao_Social FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
                SQL.Add('      ,Exportador_End1     = (SELECT Rua+'', ''+CAST(Rua_Numero AS varchar(10))+'' - ''+Bairro FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
                SQL.Add('      ,Exportador_End2     = (SELECT CEP+'' - ''+(SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = Municipio_Codigo) +'' - ''+');
                SQL.Add('                             (SELECT Nome_Ingles FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = 1058) FROM Cybersoft_Cadastros.dbo.Empresas Emp WHERE Emp.Codigo = :pEmpresa)');
                SQL.Add('      ,Exportador_CNPJ     = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
                SQL.Add('      ,Importador_Nome     = (SELECT Nome FROM Clientes WHERE Codigo = Inv.Importador)');
                SQL.Add('      ,Importador_Ender    = (SELECT ISNULL(Rua, '''')+ISNULL('', Nº ''+Rua_Numero, '''') FROM Clientes WHERE Codigo = Inv.Importador)');
                SQL.Add('      ,Importador_Cida     = (SELECT CEP + '' '' + Bairro + '', '' + (SELECT Nome_Ingles FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = Inv.Pais_Destino) FROM Clientes WHERE Codigo = Inv.Importador)');
                SQL.Add('      ,Importador_Contato  = (SELECT Contato FROM Clientes WHERE Codigo = Inv.Importador)');
                SQL.Add('      ,Importador_Telefone = ''Telephone:''+(SELECT Telefone1 + ''/''+Telefone2 FROM Clientes WHERE Codigo = Inv.Importador)');
                SQL.Add('      ,Importador_Email    = ''E-Mail:''+(SELECT Email FROM Clientes WHERE Codigo = Inv.Importador)');
                SQL.Add('      ,Pais_OrigemNome     = (SELECT Nome_Ingles FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = 1058)');
                SQL.Add('      ,Peso_Liquido');
                SQL.Add('      ,Peso_Bruto');
                SQL.Add('      ,Volumes_Quantidade');
                SQL.Add('      ,Local_Embarque');
                SQL.Add('      ,Local_Entrega');
                SQL.Add('      ,Condicao_Frete');
                SQL.Add('      ,Seguradora          = NULL');
                SQL.Add('      ,Pais_Fornecedor     = (SELECT Nome_Ingles FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = (SELECT Pais FROM Fornecedores WHERE Codigo = Inv.Exportador) )');
                SQL.Add('      ,Pais_Destino        = (SELECT Nome_Ingles FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = Pais_Origem )');
                SQL.Add('      ,Pais_Origem         = (SELECT Nome_Ingles FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = 1058 )');
                SQL.Add('      ,Notificar_Nome      = (SELECT Nome FROM Clientes WHERE Codigo = Inv.Cliente)');
                SQL.Add('      ,Notificar_Ender     = (SELECT ISNULL(Rua, '''')+ISNULL('', Nº ''+Rua_Numero, '''') FROM Clientes WHERE Codigo = Inv.Cliente)');
                SQL.Add('      ,Notificar_Cida      = (SELECT CEP + '' '' + Bairro + '', '' + (SELECT Nome_Ingles FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = Inv.Pais_Destino) FROM Clientes WHERE Codigo = Inv.Cliente)');
                SQL.Add('      ,Via_Transporte      = (SELECT Descricao_Ingles FROM Cybersoft_Cadastros.dbo.ViaTransporte WHERE Codigo = Via_Transporte) ');
                SQL.Add('FROM  Invoice Inv');
                SQL.Add('WHERE Inv.Numero = :pFatura');
                ParamByName('pFatura').AsString := InvoiceNumero.AsString;
                ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                //SQL.SaveToFile('c:\temp\Impressao_Invoice.sql');
                Open;
           end;
           with tInvoiceItens do begin 
                SQL.Clear;
                SQL.Add('SELECT Codigo_Mercadoria');
                SQL.Add('      ,Quantidade');
                SQL.Add('      ,Quantidade_MT  = Quantidade * (SELECT Quantidade_Unidade FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                SQL.Add('      ,Quantidade_Uni = (SELECT Quantidade_Unidade FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                SQL.Add('      ,Quantidade_Vol = (SELECT Quantidade_Volumes FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                SQL.Add('      ,Unidade        = (SELECT Unidade FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                SQL.Add('      ,Unidade_Vol    = (SELECT Unidade_Origem FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                SQL.Add('      ,Valor_Unitario');
                SQL.Add('      ,Valor_Total = Valor_Unitario * (Quantidade * (SELECT Quantidade_Unidade FROM Produtos WHERE Codigo = Codigo_Mercadoria))');
                SQL.Add('      ,Descricao = (SELECT Descricao_Ingles FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
                SQL.Add('      ,NCM');
                SQL.Add('FROM  InvoiceItens');
                SQL.Add('WHERE Invoice = :pInvoice');
                SQL.Add('ORDER BY Codigo_Mercadoria');
                ParamByName('pInvoice').AsString := tInvoice.FieldByName('Numero').AsString;
                //SQL.SaveToFile('c:\temp\Impressao_Invoice_Itens.sql');
                Open;
           end;
      end;
      if not cExcel.Checked then begin
         if FileExists(Dados.EmpresasLogo.Value) then
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         if FileExists(Dados.EmpresasAssinatura.Value) then
            iAssinatura.Picture.LoadFromFile(Dados.EmpresasAssinatura.Value);

         rInvoice.Print;
         rInvoice.Reset;
      end else begin
         ExportaExcel;
      end;
end;

procedure TImpressao_ProcessosOP_InvoiceExp.rInvoiceBeforePrint(Sender: TObject);
Const
    mMeses: array[1..12] of String = ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
begin
      with Dados do begin
           lEndereco.Caption  := Trim(EmpresasRua.AsString)+', Nº '+Trim(EmpresasRua_Numero.AsString)+', '+Trim(EmpresasComplemento.AsString)+' - '+Trim(EmpresasBairro.AsString);
           lEndereco2.Caption := 'CEP:'+FormatMaskText('#####-###;0',EmpresasCEP.Value) + '  -  ' + Trim(MunicipiosNome.Value) +' ('+Trim(EmpresasEstado.Value)+') -  Brasil';
           lEndereco3.Caption := 'PHONE:'+FormatMaskText('(##) #########;0', EmpresasTelefone1.Value);
      end;
end;

procedure TImpressao_ProcessosOP_InvoiceExp.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Impressao_ProcessosOP_InvoiceExp.Release;
     Impressao_ProcessosOP_InvoiceExp := nil;
end;

// Envia informações para o excel.
procedure TImpressao_ProcessosOP_InvoiceExp.ExportaEXCEL;
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
       mPlan.Name                         := 'Purchase Order ('+tInvoice.FieldByName('Numero').AsString+')'; // Atribui um nome a planilha
       mPlan.Range['A1','Q1'].ColumnWidth := 9;
       mPlan.Range['A1','Q300'].Font.Size := 8;
       mPlan.Range['O1','Q1'].ColumnWidth := 12;

       // Cabecalho - Dados da Empresa.
       mPlan.Shapes.AddPicture(Dados.Empresas.FieldByName('Logo').AsString, 0, 1, 20, 10, 106, 59);  // Logo da Empresa.

       mPlan.Range['D1','D1'].Value2              := tInvoice.FieldByName('Empresa').AsString;
       mPlan.Range['D1','D1'].Font.Size           := 14;
       mPlan.Range['D1','D1'].Font.Bold           := true;
       mPlan.Range['D2','D2'].Value2              := tInvoice.FieldByName('Endereco').AsString;
       mPlan.Range['D3','D3'].Value2              := tInvoice.FieldByName('Endereco2').AsString;
       mPlan.Range['D4','D4'].Value2              := tInvoice.FieldByName('Telefones').AsString;
       mPlan.Range['D5','D5'].Value2              := tInvoice.FieldByName('Email').AsString;
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
       mPlan.Range['Q2','Q2'].Value2              := tInvoice.FieldByName('Data').AsString;
       mPlan.Range['Q2','Q2'].Font.Bold           := true;
       mPlan.Range['Q2','Q2'].Font.Size           := 10;
       mPlan.Range['Q2','Q2'].HorizontalAlignment := 3;
       mPlan.Range['P3','P3'].Value2              := 'PO#';
       mPlan.Range['Q3','Q3'].Value2              := tInvoice.FieldByName('Numero').AsString;
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
       mPlan.Range['A8','A8'].Value2              := tInvoice.FieldByName('Vendor').AsString;
       mPlan.Range['A9','A9'].Value2              := tInvoice.FieldByName('Vendor_End').AsString;
       mPlan.Range['A10','A10'].Value2            := tInvoice.FieldByName('Vendor_Cid').AsString;
       mPlan.Range['A11','A11'].Value2            := tInvoice.FieldByName('Vendor_Tel').AsString;
       mPlan.Range['A12','A12'].Value2            := tInvoice.FieldByName('Vendor_Email').AsString;
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
       mPlan.Range['G8','G8'].Value2              := tInvoice.FieldByName('Empresa').AsString;
       mPlan.Range['G9','G9'].Value2              := tInvoice.FieldByName('Endereco').AsString;
       mPlan.Range['G10','G10'].Value2            := tInvoice.FieldByName('Endereco2').AsString;
       mPlan.Range['G11','G11'].Value2            := tInvoice.FieldByName('Telefones').AsString;
       mPlan.Range['G12','G12'].Value2            := tInvoice.FieldByName('Email').AsString;
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
       mPlan.Range['M8','M8'].Value2              := tInvoice.FieldByName('Cliente').AsString;
       mPlan.Range['M9','M9'].Value2              := tInvoice.FieldByName('Cliente_End').AsString;
       mPlan.Range['M10','M10'].Value2            := tInvoice.FieldByName('Cliente_Cid').AsString;
       mPlan.Range['M11','M11'].Value2            := tInvoice.FieldByName('Cliente_Tel').AsString;
       mPlan.Range['M12','M12'].Value2            := tInvoice.FieldByName('Cliente_Email').AsString;
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
       mPlan.Range['A15','A15'].Value2              := tInvoice.FieldByName('Responsavel').AsString;
       mPlan.Range['A15','D15'].Mergecells          := True;
       mPlan.Range['A15','D15'].HorizontalAlignment := 3;
       mPlan.Range['A15','D15'].BorderAround(1, 2, 0, RGB(100,0,0));

       mPlan.Range['E14','E14'].Value2              := 'SHIP VIA';
       mPlan.Range['E14','H14'].Mergecells          := True;
       mPlan.Range['E15','E15'].Value2              := tInvoice.FieldByName('Via_Transporte').AsString;
       mPlan.Range['E15','H15'].Mergecells          := True;
       mPlan.Range['E15','H15'].HorizontalAlignment := 3;
       mPlan.Range['E15','H15'].BorderAround(1, 2, 0, RGB(100,0,0));

       mPlan.Range['I14','I14'].Value2              := 'INCOTERMS';
       mPlan.Range['I14','L14'].Mergecells          := True;
       mPlan.Range['I15','I15'].Value2              := tInvoice.FieldByName('Incoterms').AsString;
       mPlan.Range['I15','L15'].Mergecells          := True;
       mPlan.Range['I15','L15'].HorizontalAlignment := 3;
       mPlan.Range['I15','L15'].BorderAround(1, 2, 0, RGB(100,0,0));

       mPlan.Range['M14','M14'].Value2              := 'SHIPPING TERMS';
       mPlan.Range['M14','Q14'].Mergecells          := True;
       mPlan.Range['M15','M15'].Value2              := tInvoice.FieldByName('Condicao_Pgto').AsString;
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
       mPlan.Range['A18','Q'+InttoStr(17+tInvoiceItens.RecordCount)].BorderAround(1, 2, 0, RGB(100,0,0));

       mLinha := 18;

       tInvoiceItens.First;
       while not tInvoiceItens.eof do begin
             mPlan.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].Mergecells          := true;
             mPlan.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].WrapText            := true;
             mPlan.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].VerticalAlignment   := 1;
             mPlan.Range['B'+InttoStr(mLinha),'F'+InttoStr(mLinha)].HorizontalAlignment := 1;
             mPlan.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].RowHeight           := 18+((Length(tInvoiceItens.FieldByName('Descricao').AsString) div 52) * 15);
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
             mPlan.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Value2 := tInvoiceItens.FieldByName('Codigo_Mercadoria').AsString;
             mPlan.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].VerticalAlignment   := 1;
             mPlan.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Value2 := tInvoiceItens.FieldByName('Descricao').AsString;
             mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Value2 := tInvoiceItens.FieldByName('NCM').AsString;
             mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlan.Range['H'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Value2 := tInvoiceItens.FieldByName('Unidade_OrigDesc').AsString;
             if tInvoiceItens.FieldByName('Quantidade_Volumes').AsFloat > 0 then
                mPlan.Range['J'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Value2 := tInvoiceItens.FieldByName('Quantidade_Volumes').AsInteger;
             if tInvoiceItens.FieldByName('Peso_Liquido').AsFloat > 0 then
                mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Value2 := tInvoiceItens.FieldByName('Peso_Liquido').AsFloat;
             mPlan.Range['N'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Value2 := tInvoiceItens.FieldByName('Unidade').AsString;
             mPlan.Range['N'+InttoStr(mLinha),'N'+InttoStr(mLinha)].HorizontalAlignment := 3;
             if tInvoiceItens.FieldByName('Peso_Total').AsFloat > 0 then
                mPlan.Range['O'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Value2 := tInvoiceItens.FieldByName('Peso_Total').AsFloat;
             if tInvoiceItens.FieldByName('Valor').AsFloat > 0 then
                mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha)].Value2 := tInvoiceItens.FieldByName('Valor').AsCurrency;
             if tInvoiceItens.FieldByName('Total').AsFloat > 0 then
                mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Value2 := tInvoiceItens.FieldByName('Total').AsCurrency;

             // Formatação dos campos que precisam de mascara.
             mPlan.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].NumberFormat := '####.##.##';
             mPlan.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].NumberFormat := '#.##0,000';
             mPlan.Range['O'+InttoStr(mLinha),'O'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
             mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha)].NumberFormat := '#.##0,00';
             mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].NumberFormat := '#.##0,00';

             tInvoiceItens.Next;
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
       for i := 1 to (Length(tInvoice.FieldByName('Observacao').AsString) div 77)+1 do begin
           mPlan.Range['A'+InttoStr(mLinha+i),'A'+InttoStr(mLinha+i)].Value2            := Copy(tInvoice.FieldByName('Observacao').AsString, mParte, 77);
           mPlan.Range['A'+InttoStr(mLinha+i),'A'+InttoStr(mLinha+i)].VerticalAlignment := 2;
           mPlan.Range['A'+InttoStr(mLinha+i),'G'+InttoStr(mLinha+i)].MergeCells        := true;
           inc(mParte, 77);
       end;

       mPlan.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha+(Length(tInvoice.FieldByName('Observacao').AsString) div 77)+1)].BorderAround(1, 2, 0, RGB(100,0,0));

       mPlan.Range['P'+InttoStr(mLinha)  ,'P'+InttoStr(mLinha)].Value2           := 'SUBTOTAL';
       mPlan.Range['P'+InttoStr(mLinha+1),'P'+InttoStr(mLinha+1)].Value2         := 'TAX';
       mPlan.Range['P'+InttoStr(mLinha+2),'P'+InttoStr(mLinha+2)].Value2         := 'SHIPPING';
       mPlan.Range['P'+InttoStr(mLinha+3),'P'+InttoStr(mLinha+3)].Value2         := 'OTHER';
       mPlan.Range['P'+InttoStr(mLinha+4),'P'+InttoStr(mLinha+4)].Value2         := 'TOTAL '+tInvoice.FieldByName('Moeda_Simbol').AsString;
       mPlan.Range['P'+InttoStr(mLinha+4),'P'+InttoStr(mLinha+4)].Interior.Color := clBlack;
       mPlan.Range['P'+InttoStr(mLinha+4),'P'+InttoStr(mLinha+4)].Font.Color     := clWhite;

       mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha+4)].HorizontalAlignment := 1;
       mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha+4)].VerticalAlignment   := 2;
       mPlan.Range['P'+InttoStr(mLinha),'P'+InttoStr(mLinha+4)].Font.Bold           := true;

       mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha+4)].Borders.LineStyle := 1; //xlContinuous;
       mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha+4)].Borders.Weight    := 2; //xlThin;
       mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha+4)].Borders.Color     := RGB(0,0,0);

       if tInvoice.FieldByName('Total').AsCurrency > 0 then begin
          mPlan.Range['Q'+InttoStr(mLinha)  ,'Q'+InttoStr(mLinha)].Value2   := tInvoice.FieldByName('SubTotal').AsCurrency;
          mPlan.Range['Q'+InttoStr(mLinha+1),'Q'+InttoStr(mLinha+1)].Value2 := tInvoice.FieldByName('Tax').AsCurrency;
          mPlan.Range['Q'+InttoStr(mLinha+2),'Q'+InttoStr(mLinha+2)].Value2 := tInvoice.FieldByName('Shipping').AsCurrency;
          mPlan.Range['Q'+InttoStr(mLinha+3),'Q'+InttoStr(mLinha+3)].Value2 := tInvoice.FieldByName('Other').AsCurrency;
          mPlan.Range['Q'+InttoStr(mLinha+4),'Q'+InttoStr(mLinha+4)].Value2 := tInvoice.FieldByName('Total').AsCurrency;

          mPlan.Range['Q'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].NumberFormat     := '#.##0,00';
          mPlan.Range['Q'+InttoStr(mLinha+1),'Q'+InttoStr(mLinha+1)].NumberFormat := '#.##0,00';
          mPlan.Range['Q'+InttoStr(mLinha+2),'Q'+InttoStr(mLinha+2)].NumberFormat := '#.##0,00';
          mPlan.Range['Q'+InttoStr(mLinha+3),'Q'+InttoStr(mLinha+3)].NumberFormat := '#.##0,00';
          mPlan.Range['Q'+InttoStr(mLinha+4),'Q'+InttoStr(mLinha+4)].NumberFormat := '#.##0,00';
       end;

       mLinha := mLinha + (Length(tInvoice.FieldByName('Observacao').AsString) div 77)+1;

       mPlan.Range['F'+InttoStr(mLinha+3),'F'+InttoStr(mLinha+3)].Value2              := 'If you have any questions about this purchase order, please contact';
       mPlan.Range['F'+InttoStr(mLinha+3),'M'+InttoStr(mLinha+3)].MergeCells          := true;
       mPlan.Range['F'+InttoStr(mLinha+4),'F'+InttoStr(mLinha+4)].Value2              := tInvoice.FieldByName('Responsavel').AsString;
       mPlan.Range['F'+InttoStr(mLinha+4),'M'+InttoStr(mLinha+4)].MergeCells          := true;
       mPlan.Range['F'+InttoStr(mLinha+5),'F'+InttoStr(mLinha+5)].Value2              := tInvoice.FieldByName('Email').AsString;
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
