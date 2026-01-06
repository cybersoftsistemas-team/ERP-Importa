unit frmImpressao_ProcessosOP_Invoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Grids, DBGrids,
  RXDBCtrl, DB, MemDS, DBAccess, MSAccess, ppMemo, ppVar, ppCtrls, ppBands,ppReport, ppStrtch, ppSubRpt, ppClass, ppPrnabl, ppCache, ppProd, ppComm,
  ppRelatv, ppDB, ppDBPipe, MaskUtils, DateUtils, ppModule, raCodMod, ppParameter;

type
  TImpressao_ProcessosOP_Invoice = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bImprimir: TButton;
    Grade: TRxDBGrid;
    cTipo: TRadioGroup;
    pEmpresas: TppDBPipeline;
    rInvoice: TppReport;
    pInvoice: TppDBPipeline;
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
    ppLabel2: TppLabel;
    ppDBText5: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    lEnderecoImp1: TppLabel;
    lEnderecoImp2: TppLabel;
    lEnderecoImp3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppShape4: TppShape;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel6: TppLabel;
    ppDBText8: TppDBText;
    ppLine6: TppLine;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLine8: TppLine;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLine9: TppLine;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLine10: TppLine;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    ppLine11: TppLine;
    ppLabel13: TppLabel;
    ppDBText14: TppDBText;
    ppLine12: TppLine;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape5: TppShape;
    ppLabel15: TppLabel;
    ppShape6: TppShape;
    ppLabel16: TppLabel;
    ppShape7: TppShape;
    ppLabel17: TppLabel;
    ppShape8: TppShape;
    ppLabel18: TppLabel;
    ppShape9: TppShape;
    ppLabel19: TppLabel;
    ppShape10: TppShape;
    ppLabel20: TppLabel;
    ppShape11: TppShape;
    ppLabel21: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText16: TppDBText;
    ppLine7: TppLine;
    ppLine13: TppLine;
    ppDBText17: TppDBText;
    ppLine14: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBText18: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText19: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    pValorTotal: TppVariable;
    ppLine19: TppLine;
    ppDBText20: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine21: TppLine;
    ppVariable2: TppVariable;
    ppLabel22: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine20: TppLine;
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
    ppLabel27: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLine30: TppLine;
    ppDBText26: TppDBText;
    ppLabel28: TppLabel;
    raCodeModule1: TraCodeModule;
    iLogo: TppImage;
    StaticText5: TStaticText;
    cPesquisa: TEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure rInvoiceBeforePrint(Sender: TObject);
    procedure pValorTotalCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure pUnitarioCalc(Sender: TObject; var Value: Variant);
    procedure cPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_Invoice: TImpressao_ProcessosOP_Invoice;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Invoice.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_ProcessosOP_Invoice.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Invoice.FormShow(Sender: TObject);
begin
      With Dados do begin
           Invoice.SQL.Clear;
           Invoice.SQL.Add('SELECT * FROM Invoice WHERE Imp_Exp = ''I'' ORDER BY Numero');
           Invoice.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Invoice.cTipoClick(Sender: TObject);
begin
      With Dados do begin
           Invoice.SQL.Clear;
           Invoice.SQL.Add('SELECT * FROM Invoice WHERE Imp_Exp = '+QuotedStr(Copy(cTipo.Items.Strings[cTipo.ItemIndex],1,1))+' ORDER BY Numero');
           Invoice.Open;
      End;
end;

procedure TImpressao_ProcessosOP_Invoice.bImprimirClick(Sender: TObject);
begin
      tInvoice.SQL.Clear;
      tInvoice.SQL.Add('SELECT Invoice.*,');
      tInvoice.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = Importador)) AS Nome_Importador,');
      tInvoice.SQL.Add('       (SELECT (ISNULL(Rua, '''')+ISNULL(+'' Nº ''+Rua_Numero, '''') + '' '' + ISNULL(Complemento, '''')) FROM Clientes WHERE(Codigo = Importador)) AS Endereco_Importador,');
      tInvoice.SQL.Add('       LTRIM(RTRIM((SELECT ''CEP: ''+ISNULL(CEP, '''') + '' - ''+ISNULL(Municipio, '''')+ ''(''+Estado+'') - ''+(SELECT Nome FROM Cybersoft_Cadastros.dbo.Paises WHERE(Codigo = Pais)) FROM Clientes WHERE(Codigo = Importador)))) AS Endereco2_Importador,');
      tInvoice.SQL.Add('       (SELECT ISNULL(''PHONE: ''+Telefone1, '''') + ISNULL('' / FAX: ''+Fax, '''') FROM Clientes WHERE(Codigo = Importador)) AS Telefones,');
      tInvoice.SQL.Add('       UPPER(DATENAME(MONTH, Data))+'' ''+CAST(DAY(Data) AS VARCHAR(2))+''/''+CAST(YEAR(Data) AS VARCHAR(4)) AS Data_Extenso,');
      tInvoice.SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Codigo = Moeda)) AS Moeda_Nome,');
      tInvoice.SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Paises WHERE(Codigo = Pais_Origem)) AS PaisOrigem_Nome');
      tInvoice.SQL.Add('FROM Invoice WHERE(Numero = :pNumero)');
      tInvoice.ParamByName('pNumero').AsString := Dados.InvoiceNumero.AsString;
      tInvoice.Open;

      tInvoiceItens.SQL.Clear;
      tInvoiceItens.SQL.Add('SELECT *');
      tInvoiceItens.SQL.Add('FROM InvoiceItens WHERE(Invoice = :pInvoice)');
      tInvoiceItens.ParamByName('pInvoice').AsString := Dados.InvoiceNumero.AsString;
      tInvoiceItens.Open;

      Dados.Empresas.SQL.Clear;
      Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
      Dados.Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
      Dados.Empresas.Open;

      iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      rInvoice.Print;
      rInvoice.Reset;
end;

procedure TImpressao_ProcessosOP_Invoice.rInvoiceBeforePrint(Sender: TObject);
Const
    mMeses: array[1..12] of String = ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
begin
      With Dados do begin
           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

           lEndereco.Caption     := Trim(EmpresasRua.AsString)+', Nº '+Trim(EmpresasRua_Numero.AsString)+', '+Trim(EmpresasComplemento.AsString)+' - '+Trim(EmpresasBairro.AsString);
           lEndereco2.Caption    := 'CEP:'+FormatMaskText('#####-###;0',EmpresasCEP.Value) + '  -  ' + Trim(MunicipiosNome.Value) +' ('+Trim(EmpresasEstado.Value)+') -  Brasil';
           lEndereco3.Caption    := 'PHONE:'+FormatMaskText('(##) #########;0', EmpresasTelefone1.Value)+'  FAX:'+FormatMaskText('(##) #########;0',EmpresasFAX.Value);
           lEnderecoImp1.Caption := lEndereco.Caption;
           lEnderecoImp2.Caption := lEndereco2.Caption;
           lEnderecoImp3.Caption := lEndereco3.Caption;
      End;
end;

procedure TImpressao_ProcessosOP_Invoice.pValorTotalCalc(Sender: TObject; var Value: Variant);
begin
      Value := tInvoiceItens.FieldByName('Quantidade').AsFloat * tInvoiceItens.FieldByName('Valor_UnitarioME').AsCurrency;
end;

procedure TImpressao_ProcessosOP_Invoice.ppVariable2Calc(Sender: TObject;var Value: Variant);
begin
      Value := Value + pValorTotal.Value;
end;

procedure TImpressao_ProcessosOP_Invoice.pUnitarioCalc(Sender: TObject;var Value: Variant);
begin
      Value := tInvoiceItens.FieldByName('Valor_Unitario').AsCurrency / tInvoice.FieldByname('Cotacao').AsFloat;
end;

procedure TImpressao_ProcessosOP_Invoice.cPesquisaChange(Sender: TObject);
begin
      With Dados do begin
           If Invoice.Locate('Numero', cPesquisa.Text, [loPartialKey]) = False then begin
              If Invoice.Locate('Processo', cPesquisa.Text, [loPartialKey]) = False then begin
                 tInvoice.SQL.Clear;
                 tInvoice.SQL.Add('SELECT * FROM Invoice WHERE(Numero LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
                 tInvoice.Open;
                 Invoice.Locate('Numero', tInvoice.FieldByName('Numero').AsString, [loCaseInsensitive]);
              End;
           End;
      End;
end;

end.
