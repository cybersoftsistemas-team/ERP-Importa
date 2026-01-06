unit frmImpressao_Cadastros_Fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, MaskUtils, RxLookup, MemDS, ppDB, ppParameter, ppDesignLayer, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Cadastros_Fornecedores = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cOrdem: TRadioGroup;
    rFornecedores: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    lTitulo2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    lCNPJ: TppLabel;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel63: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine5: TppLine;
    pFornecedores: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    tFornecedores: TMSQuery;
    dstFornecedores: TDataSource;
    ppDBText5: TppDBText;
    cRamo: TRxDBLookupCombo;
    StaticText1: TStaticText;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    StaticText2: TStaticText;
    cEstado: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cMuni: TRxDBLookupCombo;
    rExcel: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText6: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppImage1: TppImage;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    cExcel: TCheckBox;
    ppDBText11: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cEstadoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Cadastros_Fornecedores: TImpressao_Cadastros_Fornecedores;

implementation

uses frmDados;

{$R *.dfm}

procedure TImpressao_Cadastros_Fornecedores.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Cadastros_Fornecedores.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Cadastros_Fornecedores.bImprimirClick(Sender: TObject);
begin
      lTitulo2.Caption := '';
      
      tFornecedores.SQL.Clear;
      tFornecedores.SQL.Add('SELECT Codigo');
      tFornecedores.SQL.Add('      ,Nome');
      tFornecedores.SQL.Add('      ,CNPJ');
      tFornecedores.SQL.Add('      ,CPF');
      tFornecedores.SQL.Add('      ,CNPJ_CPF = ISNULL(CNPJ, '''')+ISNULL(CPF, '''')');
      tFornecedores.SQL.Add('      ,Telefone1');
      tFornecedores.SQL.Add('      ,Pais = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = Pais)');
      tFornecedores.SQL.Add('FROM   Fornecedores');
      tFornecedores.SQL.Add('WHERE  Codigo IS NOT NULL');
      If Trim(cRamo.DisplayValue) <> '' then begin
         tFornecedores.SQL.Add('  AND Ramo_Atividade = :pRamo');
         tFornecedores.ParamByName('pRamo').AsInteger := Dados.RamoAtividadeCodigo.AsInteger;
         lTitulo2.Caption := lTitulo2.Caption + 'Ramo: '+cRamo.DisplayValue;
      End;
      if Trim(cEstado.DisplayValue) <> '' then begin
         tFornecedores.SQL.Add('  AND Estado = '+QuotedStr(Dados.EstadosCodigo.AsString));
         lTitulo2.Caption := lTitulo2.Caption + ' / Estado ('+cEstado.DisplayValue+')';
      end;
      if Trim(cMuni.DisplayValue) <> '' then begin
         tFornecedores.SQL.Add('  AND Municipio_Codigo = :pMuni');
         tFornecedores.ParamByName('pMuni').Asstring := Dados.MunicipiosCodigo.AsString;
         lTitulo2.Caption := lTitulo2.Caption + ' / Municipio: '+cMuni.DisplayValue;
      end;

      If cOrdem.ItemIndex = 0 then begin
         tFornecedores.SQL.Add('ORDER BY Codigo');
         lTitulo2.Caption := lTitulo2.Caption + ' - (Ordem de Código)';
      End;
      If cOrdem.ItemIndex = 1 then begin
         tFornecedores.SQL.Add('ORDER BY Nome');
         lTitulo2.Caption := lTitulo2.Caption + ' - (Ordem de Nome)';
      End;
      If cOrdem.ItemIndex = 2 then begin
         tFornecedores.SQL.Add('ORDER BY CNPJ');
         lTitulo2.Caption := lTitulo2.Caption + ' - (Ordem de CNPJ)';
      End;
      If cOrdem.ItemIndex = 3 then begin
         tFornecedores.SQL.Add('ORDER BY Pais_Nome');
         lTitulo2.Caption := lTitulo2.Caption + ' - (Ordem de PAÍS)';
      End;
      //tFornecedores.SQL.SavetoFile('c:\temp\Cadastro_Fornecedores.sql');
      tFornecedores.Open;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;

      if not cExcel.Checked then begin
         rFornecedores.Reset;
         rFornecedores.Print;
      end else begin
         rExcel.Reset;
         rExcel.Print;
      end;
end;

procedure TImpressao_Cadastros_Fornecedores.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If Trim(tFornecedores.FieldByName('CNPJ').AsString) <> '' then
         lCNPJ.Text := FormatMaskText('##.###.###/####-##;0', Trim(tFornecedores.FieldByName('CNPJ').AsString))
      else
         lCNPJ.Text := Trim(tFornecedores.FieldByName('CPF').AsString);
end;

procedure TImpressao_Cadastros_Fornecedores.FormShow(Sender: TObject);
begin
      With Dados do begin
           RamoAtividade.SQL.Clear;
           RamoAtividade.SQL.Add('SELECT * FROM RamoAtividade ORDER BY Descricao');
           RamoAtividade.Open;

           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
           Estados.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios ORDER BY Nome');
           Municipios.Open;
      End;
end;

procedure TImpressao_Cadastros_Fornecedores.cEstadoChange(Sender: TObject);
begin
      With Dados do begin
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           if Trim(cEstado.DisplayValue) <> '' then begin
              Municipios.SQL.Add('WHERE  UF = :pUF');
              Municipios.ParamByName('pUF').Asstring := Dados.EstadosCodigo.AsString;
           end;
           Municipios.SQL.Add('ORDER BY Nome');
           Municipios.Open;
      End;
end;

end.
