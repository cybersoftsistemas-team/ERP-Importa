unit frmImpressao_ProcessosOP_FollowUp;

interface

uses
  Vcl.Forms, System.Classes, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, Vcl.Controls, RxLookup,
  ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport,
  Vcl.ExtCtrls, MemDS, DBAccess, MSAccess, RxCtrls, ppCtrls, ppPrnabl, ppStrtch, ppMemo, Vcl.Buttons, Vcl.Dialogs,
  ppDBBDE, ppSubRpt, ppRegion;

type
  TfrmImpressaoProcessosOPFollowUp = class(TForm)
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cResponsavel: TRxDBLookupCombo;
    cCliente: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cDataIni: TDateEdit;
    cDataFim: TDateEdit;
    btnSearch: TButton;
    Grade: TDBGrid;
    pprFollowUp: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    ppParameterList2: TppParameterList;
    dbpFollowUp: TppDBPipeline;
    rgEst: TRadioGroup;
    rgSit: TRadioGroup;
    qryFLP: TMSQuery;
    dsoFLP: TDataSource;
    Image2: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    qryCLI: TMSQuery;
    qryRES: TMSQuery;
    dsoCLI: TDataSource;
    dsoRES: TDataSource;
    qryRESMatricula: TStringField;
    qryRESNome: TStringField;
    iLogoSint: TppImage;
    ppDBText4: TppDBText;
    lTituloSint: TppLabel;
    lPeriodoSint: TppLabel;
    pEmpresas: TppDBPipeline;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppDBText6: TppDBText;
    ppLabel5: TppLabel;
    ppDBText7: TppDBText;
    ppLabel6: TppLabel;
    ppDBText8: TppDBText;
    ppLabel7: TppLabel;
    ppDBText9: TppDBText;
    ppLabel8: TppLabel;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppDBText14: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppLabel16: TppLabel;
    ppDBText17: TppDBText;
    ppLabel17: TppLabel;
    ppDBText18: TppDBText;
    ppLabel18: TppLabel;
    ppDBText19: TppDBText;
    ppLabel19: TppLabel;
    ppDBText20: TppDBText;
    ppLabel20: TppLabel;
    ppDBText21: TppDBText;
    ppLabel21: TppLabel;
    ppDBText22: TppDBText;
    ppLabel22: TppLabel;
    ppDBText23: TppDBText;
    ppLabel23: TppLabel;
    ppDBText24: TppDBText;
    ppLabel24: TppLabel;
    ppDBText25: TppDBText;
    ppLabel25: TppLabel;
    ppDBText26: TppDBText;
    ppLabel26: TppLabel;
    ppLine3: TppLine;
    dlgSavePDF: TSaveDialog;
    qryPRH: TMSQuery;
    qryPRHProcesso: TStringField;
    qryPRHData: TDateTimeField;
    qryPRHHora: TStringField;
    qryPRHDescricao: TMemoField;
    dbpPRH: TppBDEPipeline;
    ppDBMemo1: TppDBMemo;
    ppLine1: TppLine;
    txtProcesso: TStaticText;
    edtProcesso: TEdit;
    qryFLPProcesso: TStringField;
    qryFLPClienteCodigo: TIntegerField;
    qryFLPClienteNome: TStringField;
    qryFLPTipo: TStringField;
    qryFLPExportadorCodigo: TIntegerField;
    qryFLPExportador: TStringField;
    qryFLPBL_AWB: TStringField;
    qryFLPCE_MERCANTE_RUC: TStringField;
    qryFLPContainer: TMemoField;
    qryFLPFREE_TIME: TMemoField;
    qryFLPCANAL: TStringField;
    qryFLPDI_DUIMP: TStringField;
    qryFLPInvoce: TStringField;
    qryFLPVALOR: TCurrencyField;
    qryFLPLI: TStringField;
    qryFLPModalCodigo: TSmallintField;
    qryFLPModalDescricao: TStringField;
    qryFLPTIPO_IMPORTACAO: TStringField;
    qryFLPAgente_Carga: TStringField;
    qryFLPDESPACHANTE_CODIGO: TIntegerField;
    qryFLPDESPACHANTE_NOME: TStringField;
    qryFLPOrigem: TStringField;
    qryFLPDestino: TStringField;
    qryFLPEMBARQUE: TDateTimeField;
    qryFLPPREVISAO_CHEGADA: TDateTimeField;
    qryFLPCHEGADA: TDateTimeField;
    qryFLPDocumentos: TDateTimeField;
    qryFLPPRESENCA_CARGA: TDateTimeField;
    qryFLPHISTORICO_PROCESSO: TMemoField;
    qryFLPResponsavel: TStringField;
    qryFLPNome_Transporte: TStringField;
    qryFLPTransporte_Viagem: TStringField;
    ppDBText16: TppDBText;
    ppLabel15: TppLabel;
    ppLabel27: TppLabel;
    ppDBText27: TppDBText;
    ppLabel28: TppLabel;
    ppDBText42: TppDBText;
    pprXLS: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLine2: TppLine;
    ppFooterBand2: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppTitleBand1: TppTitleBand;
    ppLabel30: TppLabel;
    qryFLPLPCO: TStringField;
    ppLabel29: TppLabel;
    ppDBText28: TppDBText;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBMemo2: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    txtDataPrevista: TStaticText;
    dedDtPrevistaIni: TDateEdit;
    dedDtPrevistaFim: TDateEdit;
    txtDataChegada: TStaticText;
    dedDtChegadaIni: TDateEdit;
    dedDtChegadaFim: TDateEdit;
    btnPrint: TButton;
    btnClear: TButton;
    btnSaveTo: TBitBtn;
    lblRecords: TLabel;
    procedure btnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure qryFLPAfterClose(DataSet: TDataSet);
    procedure qryFLPAfterOpen(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSaveToClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
  private
    function GetProcesso: string;
    procedure SaveReportInPDF(const AFileName: string);
    procedure SaveReportInXLS(const AFileName: string);
    procedure SetDateDef;
    procedure SetlblRecordsCaption(const ARecordCount: Integer);
    procedure SetFilterReport;
    procedure SetProcesso(const Value: string);
  public
    property Processo: string read GetProcesso write SetProcesso;
  end;

implementation

{$R *.dfm}

uses
  System.SysUtils,
  System.Variants,
  frmDados,
  System.IOUtils,
  System.Zip,
  System.Generics.Collections,
  Xml.XMLIntf,
  Xml.XMLDoc;

procedure RebuildXlsx(
  const AXlsxFile: string;
  const AStylesPath: string;
  const ASheetPath: string);
const
  CStylesFile = 'xl/styles.xml';
  CSheetFile = 'xl/worksheets/sheet1.xml';
var
  LSourceZip: TZipFile;
  LTargetZip: TZipFile;
  LNewFile: string;
  LEntry: string;
  LEntries: TArray<string>;
  LBytes: TBytes;
  LStream: TBytesStream;
begin
  LNewFile := AXlsxFile + '.new';

  if TFile.Exists(LNewFile) then
    TFile.Delete(LNewFile);

  LSourceZip := TZipFile.Create;
  LTargetZip := TZipFile.Create;
  try
    LSourceZip.Open(AXlsxFile, zmRead);
    try
      LTargetZip.Open(LNewFile, zmWrite);
      try
        LEntries := LSourceZip.FileNames;

        for LEntry in LEntries do
        begin
          if SameText(LEntry, CStylesFile) then
          begin
            LTargetZip.Add(AStylesPath, CStylesFile);
            Continue;
          end;

          if SameText(LEntry, CSheetFile) then
          begin
            LTargetZip.Add(ASheetPath, CSheetFile);
            Continue;
          end;

          LSourceZip.Read(LEntry, LBytes);

          LStream := TBytesStream.Create(LBytes);
          try
            LTargetZip.Add(LStream, LEntry);
          finally
            LStream.Free;
          end;
        end;
      finally
        LTargetZip.Close;
      end;
    finally
      LSourceZip.Close;
    end;

    TFile.Copy(LNewFile, AXlsxFile, True);
    TFile.Delete(LNewFile);
  finally
    LTargetZip.Free;
    LSourceZip.Free;
  end;
end;

procedure FormatExcelHistorico(const AFileName: string);
const
  CStylesFile = 'xl/styles.xml';
  CSheetFile = 'xl/worksheets/sheet1.xml';
  CMainNS =
    'http://schemas.openxmlformats.org/spreadsheetml/2006/main';
var
  LZip: TZipFile;
  LStylesDoc: IXMLDocument;
  LSheetDoc: IXMLDocument;
  LCellXfs: IXMLNode;
  LSheetData: IXMLNode;
  LRow: IXMLNode;
  LCell: IXMLNode;
  LNewXf: IXMLNode;
  LAlignment: IXMLNode;
  LStyleMap: TDictionary<Integer, Integer>;
  LOriginalStyle: Integer;
  LNewStyle: Integer;
  LCellRef: string;
  LTempDir: string;
  LTempFile: string;
  LStylesPath: string;
  LSheetPath: string;
  I, J: Integer;

  function FindChild(
    const AParent: IXMLNode;
    const AName: string): IXMLNode;
  var
    N: Integer;
  begin
    Result := nil;

    if AParent = nil then
      Exit;

    for N := 0 to AParent.ChildNodes.Count - 1 do
      if SameText(AParent.ChildNodes[N].LocalName, AName) then
        Exit(AParent.ChildNodes[N]);
  end;

  function GetIntAttribute(
    const ANode: IXMLNode;
    const AName: string;
    const ADefault: Integer): Integer;
  begin
    Result := ADefault;

    if ANode.HasAttribute(AName) then
      Result := StrToIntDef(
        VarToStr(ANode.Attributes[AName]),
        ADefault
      );
  end;

  procedure RemoveAttribute(
    const ANode: IXMLNode;
    const AName: string);
  var
    LAttribute: IXMLNode;
  begin
    LAttribute := ANode.AttributeNodes.FindNode(AName);

    if LAttribute <> nil then
      ANode.AttributeNodes.Remove(LAttribute);
  end;

  function LoadXmlFile(
    const APath: string): IXMLDocument;
  begin
    Result := TXMLDocument.Create(nil);
    Result.LoadFromFile(APath);
    Result.Active := True;
  end;

  procedure CopyAttributes(
    const ASource: IXMLNode;
    const ADestination: IXMLNode);
  var
    N: Integer;
    LAttribute: IXMLNode;
  begin
    for N := 0 to ASource.AttributeNodes.Count - 1 do
    begin
      LAttribute := ASource.AttributeNodes[N];

      ADestination.Attributes[LAttribute.NodeName] :=
        LAttribute.NodeValue;
    end;
  end;

  procedure CopyChildren(
    const ASource: IXMLNode;
    const ADestination: IXMLNode);
  var
    N: Integer;
    LSourceChild: IXMLNode;
    LDestinationChild: IXMLNode;
  begin
    for N := 0 to ASource.ChildNodes.Count - 1 do
    begin
      LSourceChild := ASource.ChildNodes[N];

      LDestinationChild := ADestination.AddChild(
        LSourceChild.LocalName,
        CMainNS
      );

      CopyAttributes(LSourceChild, LDestinationChild);

      if LSourceChild.ChildNodes.Count > 0 then
        CopyChildren(LSourceChild, LDestinationChild);
    end;
  end;

  function GetWrapStyle(
    const AOriginalStyle: Integer): Integer;
  var
    LOriginalXf: IXMLNode;
    LChild: IXMLNode;
    LNewChild: IXMLNode;
    LChildName: string;
    N: Integer;
    LAlignmentAdded: Boolean;
  begin
    if LStyleMap.TryGetValue(AOriginalStyle, Result) then
      Exit;

    if (AOriginalStyle < 0) or
       (AOriginalStyle >= LCellXfs.ChildNodes.Count) then
      raise Exception.CreateFmt(
        'Estilo XLSX inválido: %d',
        [AOriginalStyle]
      );

    LOriginalXf := LCellXfs.ChildNodes[AOriginalStyle];

    LNewXf := LCellXfs.AddChild('xf', CMainNS);
    CopyAttributes(LOriginalXf, LNewXf);

    LNewXf.Attributes['applyAlignment'] := '1';

    LAlignmentAdded := False;
    LAlignment := nil;

    for N := 0 to LOriginalXf.ChildNodes.Count - 1 do
    begin
      LChild := LOriginalXf.ChildNodes[N];
      LChildName := LChild.LocalName;

      // Insere alignment antes de protection/extLst.
      if not LAlignmentAdded and
         (SameText(LChildName, 'protection') or
          SameText(LChildName, 'extLst')) then
      begin
        LAlignment := LNewXf.AddChild(
          'alignment',
          CMainNS
        );

        LAlignment.Attributes['wrapText'] := '1';
        LAlignmentAdded := True;
      end;

      LNewChild := LNewXf.AddChild(
        LChildName,
        CMainNS
      );

      CopyAttributes(LChild, LNewChild);
      CopyChildren(LChild, LNewChild);

      if SameText(LChildName, 'alignment') then
      begin
        LNewChild.Attributes['wrapText'] := '1';
        LAlignmentAdded := True;
      end;
    end;

    if not LAlignmentAdded then
    begin
      LAlignment := LNewXf.AddChild(
        'alignment',
        CMainNS
      );

      LAlignment.Attributes['wrapText'] := '1';
    end;

    Result := LCellXfs.ChildNodes.Count - 1;
    LStyleMap.Add(AOriginalStyle, Result);
  end;

  function IsHistoricoCell(
    const AReference: string): Boolean;
  begin
    Result :=
      (Length(AReference) > 2) and
      SameText(Copy(AReference, 1, 2), 'AB') and
      CharInSet(AReference[3], ['0'..'9']);
  end;

begin
  if not TFile.Exists(AFileName) then
    raise Exception.CreateFmt(
      'Arquivo XLSX não encontrado: %s',
      [AFileName]
    );

  LTempDir := TPath.Combine(
    TPath.GetTempPath,
    'XlsxHistorico_' + TGUID.NewGuid.ToString
  );

  TDirectory.CreateDirectory(LTempDir);

  LTempFile := TPath.Combine(
    LTempDir,
    'Acompanhamento.xlsx'
  );

  LStyleMap := TDictionary<Integer, Integer>.Create;
  LZip := TZipFile.Create;

  try
    // Preserva o arquivo original.
    TFile.Copy(AFileName, LTempFile, True);

    // Extrai os XMLs necessários.
    LZip.Open(LTempFile, zmRead);
    try
      LZip.Extract(CStylesFile, LTempDir, True);
      LZip.Extract(CSheetFile, LTempDir, True);
    finally
      LZip.Close;
    end;

    LStylesPath := TPath.Combine(
      LTempDir,
      CStylesFile.Replace('/', PathDelim)
    );

    LSheetPath := TPath.Combine(
      LTempDir,
      CSheetFile.Replace('/', PathDelim)
    );

    LStylesDoc := LoadXmlFile(LStylesPath);
    LSheetDoc := LoadXmlFile(LSheetPath);

    LCellXfs := FindChild(
      LStylesDoc.DocumentElement,
      'cellXfs'
    );

    LSheetData := FindChild(
      LSheetDoc.DocumentElement,
      'sheetData'
    );

    if (LCellXfs = nil) or (LSheetData = nil) then
      raise Exception.Create(
        'Estrutura XLSX incompatível.'
      );

    // Aplica WrapText às células da coluna AB.
    for I := 0 to LSheetData.ChildNodes.Count - 1 do
    begin
      LRow := LSheetData.ChildNodes[I];

      if not SameText(LRow.LocalName, 'row') then
        Continue;

      if GetIntAttribute(LRow, 'r', 0) < 2 then
        Continue;

      for J := 0 to LRow.ChildNodes.Count - 1 do
      begin
        LCell := LRow.ChildNodes[J];

        if not SameText(LCell.LocalName, 'c') then
          Continue;

        if not LCell.HasAttribute('r') then
          Continue;

        LCellRef := VarToStr(LCell.Attributes['r']);

        if not IsHistoricoCell(LCellRef) then
          Continue;

        LOriginalStyle := GetIntAttribute(LCell, 's', 0);
        LNewStyle := GetWrapStyle(LOriginalStyle);

        LCell.Attributes['s'] := LNewStyle;

        // Permite que o aplicativo recalcule a altura.
        RemoveAttribute(LRow, 'ht');
        RemoveAttribute(LRow, 'customHeight');
      end;
    end;

    LCellXfs.Attributes['count'] :=
      LCellXfs.ChildNodes.Count;

    LStylesDoc.SaveToFile(LStylesPath);
    LSheetDoc.SaveToFile(LSheetPath);

    LStylesDoc := nil;
    LSheetDoc := nil;

    // Reconstrói o XLSX sem utilizar TZipFile.Delete.
    RebuildXlsx(
      LTempFile,
      LStylesPath,
      LSheetPath
    );

    // Valida a presença dos XMLs.
    LZip.Open(LTempFile, zmRead);
    try
      if LZip.IndexOf(CStylesFile) < 0 then
        raise Exception.Create(
          'styles.xml não encontrado no XLSX.'
        );

      if LZip.IndexOf(CSheetFile) < 0 then
        raise Exception.Create(
          'sheet1.xml não encontrado no XLSX.'
        );
    finally
      LZip.Close;
    end;

    // Atualiza o arquivo original.
    TFile.Copy(LTempFile, AFileName, True);

  finally
    LZip.Free;
    LStyleMap.Free;

    if TDirectory.Exists(LTempDir) then
      TDirectory.Delete(LTempDir, True);
  end;
end;

procedure TfrmImpressaoProcessosOPFollowUp.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TfrmImpressaoProcessosOPFollowUp.btnClearClick(Sender: TObject);
begin
  SetDateDef;
  rgSit.ItemIndex := 3;
  rgEst.ItemIndex := 0;
  cCliente.KeyValue := Null;
  cResponsavel.KeyValue := Null;
  edtProcesso.Clear;
  qryFLP.Close;
  qryCLI.Close;
  qryRES.Close;
  qryCLI.Open;
  qryRES.Open;
end;

procedure TfrmImpressaoProcessosOPFollowUp.btnPrintClick(Sender: TObject);
begin
  SetFilterReport;
  pprFollowUp.Print;
  pprFollowUp.Reset;
end;

procedure TfrmImpressaoProcessosOPFollowUp.btnSaveToClick(Sender: TObject);
begin
  dlgSavePDF.FileName := 'Acompanhamento FollowUp';
  if dlgSavePDF.Execute then
  begin
    SetFilterReport;
    dlgSavePDF.Options := dlgSavePDF.Options + [ofOverwritePrompt];
    case dlgSavePDF.FilterIndex of
      1: // PDF
        begin
          if ExtractFileExt(dlgSavePDF.FileName) = '' then
          begin
            dlgSavePDF.FileName := ChangeFileExt(dlgSavePDF.FileName, '.pdf');
          end;
          SaveReportInPDF(dlgSavePDF.FileName);
        end;
      2: // XLS
        begin
          if ExtractFileExt(dlgSavePDF.FileName) = '' then
          begin
            dlgSavePDF.FileName := ChangeFileExt(dlgSavePDF.FileName, '.xlsx');
          end;
          SaveReportInXLS(dlgSavePDF.FileName);
        end;
    end;
  end;
end;

procedure TfrmImpressaoProcessosOPFollowUp.btnSearchClick(Sender: TObject);
var
  LCursor: TCursor;
begin
  LCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  try
    qryPRH.Close;
    qryFLP.Close;

    qryFLP.ParamByName('DataInicial').AsDateTime := cDataIni.Date;
    qryFLP.ParamByName('DataFinal').AsDateTime := cDataFim.Date;
    qryFLP.ParamByName('Situacao').AsInteger := rgSit.ItemIndex;
    qryFLP.ParamByName('Estado').AsInteger := rgEst.ItemIndex;
    qryFLP.ParamByName('ClienteCodigo').AsInteger := StrToIntDef(VarToStr(cCliente.KeyValue), 0);
    qryFLP.ParamByName('RespNome').AsString := VarToStr(cResponsavel.KeyValue);
    qryFLP.ParamByName('Processo').AsString := edtProcesso.Text;
    qryFLP.ParamByName('PrevisaoChegadaInicial').AsDateTime := dedDtPrevistaIni.Date;
    qryFLP.ParamByName('PrevisaoChegadaFinal').AsDateTime := dedDtPrevistaFim.Date;
    qryFLP.ParamByName('ChegadaInicial').AsDateTime := dedDtChegadaIni.Date;
    qryFLP.ParamByName('ChegadaFinal').AsDateTime := dedDtChegadaFim.Date;

    qryFLP.Prepare;
    qryFLP.Open;
    qryPRH.Open;
  finally
    Screen.Cursor := LCursor;
  end;
end;

procedure TfrmImpressaoProcessosOPFollowUp.FormCreate(Sender: TObject);
begin
  if FileExists('fundo_barra.bmp') then
  begin
    Image2.Picture.LoadFromFile('fundo_barra.bmp');
  end;
  btnClear.Click;
  if fileExists(Dados.EmpresasLogo.Value) then
  begin
    iLogosint.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
  end;
end;

function TfrmImpressaoProcessosOPFollowUp.GetProcesso: string;
begin
  Result := edtProcesso.Text;
end;

procedure TfrmImpressaoProcessosOPFollowUp.qryFLPAfterClose(DataSet: TDataSet);
begin
  SetlblRecordsCaption(0);
end;

procedure TfrmImpressaoProcessosOPFollowUp.qryFLPAfterOpen(DataSet: TDataSet);
begin
  SetlblRecordsCaption(DataSet.RecordCount);
end;

procedure TfrmImpressaoProcessosOPFollowUp.SaveReportInPDF(const AFileName: string);
var
  LOldDevice: String;
begin
  LOldDevice := pprFollowUp.DeviceType;
  try
    pprFollowUp.ShowPrintDialog := False;
    pprFollowUp.DeviceType := 'PDF';
    pprFollowUp.TextFileName := AFileName;
    pprFollowUp.PDFSettings.OpenPDFFile := False;
    pprFollowUp.Print;
  finally
    pprFollowUp.DeviceType := LOldDevice;
  end;
end;

procedure TfrmImpressaoProcessosOPFollowUp.SaveReportInXLS(
  const AFileName: string);
var
  LOldDevice: String;
  LOldPreserveLineBreaks: Boolean;
begin
  LOldDevice := pprXLS.DeviceType;
  LOldPreserveLineBreaks := pprXLS.XLSSettings.PreserveLineBreaks;
  try
    pprXLS.ShowPrintDialog := False;
    pprXLS.DeviceType := 'XlsxData';
    pprXLS.TextFileName := AFileName;
    pprXLS.PDFSettings.OpenPDFFile := False;

    // Preserva as quebras de linha dos campos Memo.
    pprXLS.XLSSettings.PreserveLineBreaks := True;

    pprXLS.Print;

    FormatExcelHistorico(pprXLS.TextFileName);
  finally
    pprXLS.XLSSettings.PreserveLineBreaks := LOldPreserveLineBreaks;
    pprXLS.DeviceType := LOldDevice;
  end;
end;

procedure TfrmImpressaoProcessosOPFollowUp.SetDateDef;
begin
  cDataIni.Clear;
  cDataFim.Clear;
  dedDtPrevistaIni.Clear;
  dedDtPrevistaFim.Clear;
  dedDtChegadaIni.Clear;
  dedDtChegadaFim.Clear;
end;

procedure TfrmImpressaoProcessosOPFollowUp.SetFilterReport;
var
  LFiltro: string;
begin
  LFiltro := Format('Período: %s até %s', [DateToStr(cDataIni.Date), DateToStr(cDataFim.Date)]);
  if not VarIsNull(cCliente.KeyValue) then
  begin
    LFiltro := LFiltro + '; Cliente: ' + cCliente.Text;
  end;
  if not VarIsNull(cResponsavel.KeyValue) then
  begin
    LFiltro := LFiltro + '; Responsável: ' + cResponsavel.Text;
  end;
  LFiltro := LFiltro + '; ' + rgEst.Caption + ': ' + rgEst.Items[rgEst.ItemIndex];
  LFiltro := LFiltro + '; ' + rgSit.Caption + ': ' + rgSit.Items[rgSit.ItemIndex];
  lPeriodoSint.Caption := LFiltro;
  ppLabel30.Caption := LFiltro;
end;

procedure TfrmImpressaoProcessosOPFollowUp.SetlblRecordsCaption(const ARecordCount: Integer);
begin
  lblRecords.Caption := Format('%d processo(s) encontrado(s).', [ARecordCount]);
  btnPrint.Enabled := ARecordCount > 0;
  btnSaveTo.Enabled := ARecordCount > 0;
end;

procedure TfrmImpressaoProcessosOPFollowUp.SetProcesso(const Value: string);
begin
  edtProcesso.Text := Value;
end;

end.
