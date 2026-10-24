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
  System.Math,
  System.Generics.Collections,
  Xml.XMLDoc,
  Xml.XMLIntf;

procedure RebuildXlsx(
  const AXlsxFile: string;
  const AModifiedFiles: TDictionary<string, string>);
var
  LSource: TZipFile;
  LTarget: TZipFile;
  LNewFile: string;
  LEntry: string;
  LReplacement: string;
  LBytes: TBytes;
  LStream: TBytesStream;
  LEntries: TArray<string>;
begin
  LNewFile := AXlsxFile + '.new';

  if TFile.Exists(LNewFile) then
    TFile.Delete(LNewFile);

  LSource := TZipFile.Create;
  LTarget := TZipFile.Create;
  try
    LSource.Open(AXlsxFile, zmRead);
    try
      LTarget.Open(LNewFile, zmWrite);
      try
        LEntries := LSource.FileNames;

        for LEntry in LEntries do
        begin
          if AModifiedFiles.TryGetValue(LEntry, LReplacement) then
          begin
            LTarget.Add(LReplacement, LEntry);
            Continue;
          end;

          LSource.Read(LEntry, LBytes);

          LStream := TBytesStream.Create(LBytes);
          try
            LTarget.Add(LStream, LEntry);
          finally
            LStream.Free;
          end;
        end;
      finally
        LTarget.Close;
      end;
    finally
      LSource.Close;
    end;

    // Substitui apenas depois da criação do novo arquivo.
    TFile.Copy(LNewFile, AXlsxFile, True);
  finally
    LTarget.Free;
    LSource.Free;

    if TFile.Exists(LNewFile) then
      TFile.Delete(LNewFile);
  end;
end;


procedure FormatExcelHistorico(
  const AFileName: string;
  const AColumn: string);
const
  CStylesFile = 'xl/styles.xml';
  CSheetFile = 'xl/worksheets/sheet1.xml';
  CSharedStringsFile = 'xl/sharedStrings.xml';
  CMainNS =
    'http://schemas.openxmlformats.org/spreadsheetml/2006/main';
  CHistoryWidth = 80.0;
  CMinWidth = 10.0;
  CMaxWidth = 65.0;
  CRowHeight = 15.0;
  CMaxRowHeight = 409.5;
var
  LZip: TZipFile;
  LFiles: TDictionary<string, string>;
  LStyleMap: TDictionary<Integer, Integer>;
  LWidths: TDictionary<Integer, Double>;
  LSharedStrings: TStringList;
  LStylesDoc: IXMLDocument;
  LSheetDoc: IXMLDocument;
  LStringsDoc: IXMLDocument;
  LFonts: IXMLNode;
  LCellXfs: IXMLNode;
  LSheetData: IXMLNode;
  LCols: IXMLNode;
  LRow: IXMLNode;
  LCell: IXMLNode;
  LNode: IXMLNode;
  LNewNode: IXMLNode;
  LOriginalXf: IXMLNode;
  LNewXf: IXMLNode;
  LAlignment: IXMLNode;
  LFont: IXMLNode;
  LFontNode: IXMLNode;
  LTempDir: string;
  LTempFile: string;
  LStylesPath: string;
  LSheetPath: string;
  LStringsPath: string;
  LHistoryColumn: Integer;
  LColumnIndex: Integer;
  LMaxColumn: Integer;
  LOriginalStyle: Integer;
  LNewStyle: Integer;
  LFontId: Integer;
  LCellText: string;
  LCellType: string;
  LCellRef: string;
  LHeight: Double;
  LWidth: Double;
  LValue: IXMLNode;
  LStringIndex: Integer;
  LLineCount: Integer;
  I, J, K: Integer;
  LMergeCells: IXMLNode;
  LMergeCell: IXMLNode;
  LMergeExists: Boolean;

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

  procedure MergeFirstRowAB;
  const
    CMergeRange = 'A1:B1';
  var
    LRoot: IXMLNode;
    LMergeCells: IXMLNode;
    LMergeCell: IXMLNode;
    LChild: IXMLNode;
    LReferenceNode: IXMLNode;
    I: Integer;
  begin
    LRoot := LSheetDoc.DocumentElement;

    LMergeCells := FindChild(LRoot, 'mergeCells');

    if LMergeCells <> nil then
    begin
      // Evita criar uma mesclagem duplicada.
      for I := 0 to LMergeCells.ChildNodes.Count - 1 do
      begin
        LChild := LMergeCells.ChildNodes[I];

        if SameText(LChild.LocalName, 'mergeCell') and
           LChild.HasAttribute('ref') and
           SameText(
             VarToStr(LChild.Attributes['ref']),
             CMergeRange
           ) then
          Exit;
      end;
    end
    else
    begin
      LMergeCells := LRoot.AddChild(
        'mergeCells',
        CMainNS
      );

      // Procura o primeiro elemento que deve aparecer
      // depois de mergeCells na estrutura worksheet.
      LReferenceNode := nil;

      for I := 0 to LRoot.ChildNodes.Count - 1 do
      begin
        LChild := LRoot.ChildNodes[I];

        if SameText(LChild.LocalName, 'phoneticPr') or
           SameText(LChild.LocalName, 'conditionalFormatting') or
           SameText(LChild.LocalName, 'dataValidations') or
           SameText(LChild.LocalName, 'hyperlinks') or
           SameText(LChild.LocalName, 'printOptions') or
           SameText(LChild.LocalName, 'pageMargins') or
           SameText(LChild.LocalName, 'pageSetup') or
           SameText(LChild.LocalName, 'headerFooter') or
           SameText(LChild.LocalName, 'rowBreaks') or
           SameText(LChild.LocalName, 'colBreaks') or
           SameText(LChild.LocalName, 'customProperties') or
           SameText(LChild.LocalName, 'cellWatches') or
           SameText(LChild.LocalName, 'ignoredErrors') or
           SameText(LChild.LocalName, 'smartTags') or
           SameText(LChild.LocalName, 'drawing') or
           SameText(LChild.LocalName, 'legacyDrawing') or
           SameText(LChild.LocalName, 'legacyDrawingHF') or
           SameText(LChild.LocalName, 'picture') or
           SameText(LChild.LocalName, 'oleObjects') or
           SameText(LChild.LocalName, 'controls') or
           SameText(LChild.LocalName, 'webPublishItems') or
           SameText(LChild.LocalName, 'tableParts') or
           SameText(LChild.LocalName, 'extLst') then
        begin
          LReferenceNode := LChild;
          Break;
        end;
      end;

      if LReferenceNode <> nil then
      begin
        // Reposiciona mergeCells antes do elemento encontrado.
        LRoot.DOMNode.insertBefore(
          LMergeCells.DOMNode,
          LReferenceNode.DOMNode
        );
      end;
    end;

    LMergeCell := LMergeCells.AddChild(
      'mergeCell',
      CMainNS
    );

    LMergeCell.Attributes['ref'] := CMergeRange;

    LMergeCells.Attributes['count'] :=
      LMergeCells.ChildNodes.Count;
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

  function LoadXml(const APath: string): IXMLDocument;
  begin
    Result := TXMLDocument.Create(nil);
    Result.LoadFromFile(APath);
    Result.Active := True;
  end;

  procedure CopyNodeContent(
    const ASource: IXMLNode;
    const ADestination: IXMLNode);
  var
    N: Integer;
    LSourceChild: IXMLNode;
    LDestinationChild: IXMLNode;
  begin
    for N := 0 to ASource.AttributeNodes.Count - 1 do
      ADestination.Attributes[
        ASource.AttributeNodes[N].NodeName
      ] := ASource.AttributeNodes[N].NodeValue;

    for N := 0 to ASource.ChildNodes.Count - 1 do
    begin
      LSourceChild := ASource.ChildNodes[N];

      if LSourceChild.NodeType = ntText then
      begin
        ADestination.Text := LSourceChild.Text;
        Continue;
      end;

      if LSourceChild.NodeType <> ntElement then
        Continue;

      LDestinationChild := ADestination.AddChild(
        LSourceChild.LocalName,
        CMainNS
      );

      CopyNodeContent(LSourceChild, LDestinationChild);
    end;
  end;

  function ColumnToIndex(const AName: string): Integer;
  var
    C: Char;
  begin
    Result := 0;

    for C in UpperCase(Trim(AName)) do
    begin
      if not CharInSet(C, ['A'..'Z']) then
        raise Exception.Create('Coluna inválida: ' + AName);

      Result := Result * 26 + Ord(C) - Ord('A') + 1;
    end;

    if Result = 0 then
      raise Exception.Create('Coluna não informada.');
  end;

  function CellColumn(const AReference: string): Integer;
  var
    N: Integer;
    C: Char;
  begin
    Result := 0;

    for N := 1 to Length(AReference) do
    begin
      C := UpCase(AReference[N]);

      if C = '$' then
        Continue;

      if not CharInSet(C, ['A'..'Z']) then
        Break;

      Result := Result * 26 + Ord(C) - Ord('A') + 1;
    end;
  end;

  function GetSharedText(const ANode: IXMLNode): string;
  var
    N: Integer;
    LChild: IXMLNode;
  begin
    Result := '';

    if ANode = nil then
      Exit;

    if SameText(ANode.LocalName, 't') then
      Result := ANode.Text;

    for N := 0 to ANode.ChildNodes.Count - 1 do
    begin
      LChild := ANode.ChildNodes[N];

      if LChild.NodeType = ntElement then
        Result := Result + GetSharedText(LChild);
    end;
  end;

  function GetCellText(const ACell: IXMLNode): string;
  var
    LType: string;
    LValueNode: IXMLNode;
    LInline: IXMLNode;
    LIndex: Integer;
  begin
    Result := '';

    LType := '';

    if ACell.HasAttribute('t') then
      LType := VarToStr(ACell.Attributes['t']);

    if SameText(LType, 'inlineStr') then
    begin
      LInline := FindChild(ACell, 'is');
      Result := GetSharedText(LInline);
      Exit;
    end;

    LValueNode := FindChild(ACell, 'v');

    if LValueNode = nil then
      Exit;

    Result := LValueNode.Text;

    if SameText(LType, 's') then
    begin
      LIndex := StrToIntDef(Result, -1);

      if (LIndex >= 0) and
         (LIndex < LSharedStrings.Count) then
        Result := LSharedStrings[LIndex];
    end;
  end;

  function EstimateLines(
    const AText: string;
    const AWidth: Double): Integer;
  var
    LNormalized: string;
    LParts: TStringList;
    N: Integer;
    LCharsPerLine: Integer;
  begin
    Result := 1;

    LNormalized := StringReplace(
      AText, #13#10, #10, [rfReplaceAll]
    );

    LNormalized := StringReplace(
      LNormalized, #13, #10, [rfReplaceAll]
    );

    LCharsPerLine := Max(
      1,
      Trunc(AWidth * 0.9)
    );

    LParts := TStringList.Create;
    try
      LParts.Text := StringReplace(
        LNormalized, #10, sLineBreak, [rfReplaceAll]
      );

      Result := 0;

      for N := 0 to LParts.Count - 1 do
        Inc(
          Result,
          Max(
            1,
            Ceil(Length(LParts[N]) / LCharsPerLine)
          )
        );

      Result := Max(1, Result);
    finally
      LParts.Free;
    end;
  end;

  function GetCalibriStyle(
    const AOriginalStyle: Integer;
    const AWrap: Boolean): Integer;
  var
    LKey: Integer;
    LChild: IXMLNode;
    LNewChild: IXMLNode;
    N: Integer;
    LAlignmentAdded: Boolean;
  begin
    LKey := AOriginalStyle * 2 + Ord(AWrap);

    if LStyleMap.TryGetValue(LKey, Result) then
      Exit;

    if (AOriginalStyle < 0) or
       (AOriginalStyle >= LCellXfs.ChildNodes.Count) then
      raise Exception.CreateFmt(
        'Índice de estilo inválido: %d',
        [AOriginalStyle]
      );

    LOriginalXf := LCellXfs.ChildNodes[AOriginalStyle];

    LNewXf := LCellXfs.AddChild('xf', CMainNS);

    for N := 0 to LOriginalXf.AttributeNodes.Count - 1 do
      LNewXf.Attributes[
        LOriginalXf.AttributeNodes[N].NodeName
      ] := LOriginalXf.AttributeNodes[N].NodeValue;

    LNewXf.Attributes['fontId'] := LFontId;
    LNewXf.Attributes['applyFont'] := '1';

    if AWrap then
      LNewXf.Attributes['applyAlignment'] := '1';

    LAlignmentAdded := False;

    for N := 0 to LOriginalXf.ChildNodes.Count - 1 do
    begin
      LChild := LOriginalXf.ChildNodes[N];

      if AWrap and
         not LAlignmentAdded and
         (SameText(LChild.LocalName, 'protection') or
          SameText(LChild.LocalName, 'extLst')) then
      begin
        LAlignment := LNewXf.AddChild('alignment', CMainNS);
        LAlignment.Attributes['wrapText'] := '1';
        LAlignmentAdded := True;
      end;

      LNewChild := LNewXf.AddChild(
        LChild.LocalName,
        CMainNS
      );

      CopyNodeContent(LChild, LNewChild);

      if SameText(LChild.LocalName, 'alignment') then
      begin
        if AWrap then
          LNewChild.Attributes['wrapText'] := '1';

        LAlignmentAdded := True;
      end;
    end;

    if AWrap and not LAlignmentAdded then
    begin
      LAlignment := LNewXf.AddChild('alignment', CMainNS);
      LAlignment.Attributes['wrapText'] := '1';
    end;

    Result := LCellXfs.ChildNodes.Count - 1;
    LStyleMap.Add(LKey, Result);
  end;

  procedure AlignMergedCellLeft;
  var
    LFirstRow: IXMLNode;
    LFirstCell: IXMLNode;
    LOriginalStyle: Integer;
    LNewStyle: Integer;
    LXf: IXMLNode;
    LAlignment: IXMLNode;
    I: Integer;
  begin
    LFirstRow := nil;
    LFirstCell := nil;

    // Localiza a primeira linha.
    for I := 0 to LSheetData.ChildNodes.Count - 1 do
    begin
      if GetIntAttribute(
        LSheetData.ChildNodes[I], 'r', 0
      ) = 1 then
      begin
        LFirstRow := LSheetData.ChildNodes[I];
        Break;
      end;
    end;

    if LFirstRow = nil then
      Exit;

    // Localiza a célula A1.
    for I := 0 to LFirstRow.ChildNodes.Count - 1 do
    begin
      if SameText(
        VarToStr(LFirstRow.ChildNodes[I].Attributes['r']),
        'A1'
      ) then
      begin
        LFirstCell := LFirstRow.ChildNodes[I];
        Break;
      end;
    end;

    if LFirstCell = nil then
      Exit;

    LOriginalStyle := GetIntAttribute(
      LFirstCell, 's', 0
    );

    // Cria um estilo exclusivo para A1.
    // Não altera estilos compartilhados por outras células.
    LNewStyle := GetCalibriStyle(LOriginalStyle, False);

    LXf := LCellXfs.ChildNodes[LNewStyle];
    LAlignment := FindChild(LXf, 'alignment');

    if LAlignment = nil then
      LAlignment := LXf.AddChild('alignment', CMainNS);

    LAlignment.Attributes['horizontal'] := 'left';
    LXf.Attributes['applyAlignment'] := '1';

    LFirstCell.Attributes['s'] := LNewStyle;
  end;

begin
  if not TFile.Exists(AFileName) then
    raise Exception.CreateFmt(
      'Arquivo não encontrado: %s',
      [AFileName]
    );

  LHistoryColumn := ColumnToIndex(AColumn);

  LTempDir := TPath.Combine(
    TPath.GetTempPath,
    'XlsxFormat_' + TGUID.NewGuid.ToString
  );

  TDirectory.CreateDirectory(LTempDir);

  LTempFile := TPath.Combine(LTempDir, 'report.xlsx');

  LFiles := TDictionary<string, string>.Create;
  LStyleMap := TDictionary<Integer, Integer>.Create;
  LWidths := TDictionary<Integer, Double>.Create;
  LSharedStrings := TStringList.Create;
  LZip := TZipFile.Create;

  try
    TFile.Copy(AFileName, LTempFile, True);

    LZip.Open(LTempFile, zmRead);
    try
      LZip.Extract(CStylesFile, LTempDir, True);
      LZip.Extract(CSheetFile, LTempDir, True);

      if LZip.IndexOf(CSharedStringsFile) >= 0 then
        LZip.Extract(CSharedStringsFile, LTempDir, True);
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

    LStringsPath := TPath.Combine(
      LTempDir,
      CSharedStringsFile.Replace('/', PathDelim)
    );

    LStylesDoc := LoadXml(LStylesPath);
    LSheetDoc := LoadXml(LSheetPath);

    if TFile.Exists(LStringsPath) then
    begin
      LStringsDoc := LoadXml(LStringsPath);

      for I := 0 to LStringsDoc.DocumentElement.ChildNodes.Count - 1 do
      begin
        LNode := LStringsDoc.DocumentElement.ChildNodes[I];

        if SameText(LNode.LocalName, 'si') then
          LSharedStrings.Add(GetSharedText(LNode));
      end;
    end;

    LFonts := FindChild(LStylesDoc.DocumentElement, 'fonts');
    LCellXfs := FindChild(LStylesDoc.DocumentElement, 'cellXfs');
    LSheetData := FindChild(LSheetDoc.DocumentElement, 'sheetData');

    if (LFonts = nil) or
       (LCellXfs = nil) or
       (LSheetData = nil) then
      raise Exception.Create('Estrutura XLSX incompatível.');

    // Cria a fonte Calibri 11.
    LFont := LFonts.AddChild('font', CMainNS);

    LFontNode := LFont.AddChild('sz', CMainNS);
    LFontNode.Attributes['val'] := '11';

    LFontNode := LFont.AddChild('name', CMainNS);
    LFontNode.Attributes['val'] := 'Calibri';

    LFontId := LFonts.ChildNodes.Count - 1;
    LFonts.Attributes['count'] := LFonts.ChildNodes.Count;

    LMaxColumn := LHistoryColumn;

    // Primeira passagem: calcula larguras das colunas.
    for I := 0 to LSheetData.ChildNodes.Count - 1 do
    begin
      LRow := LSheetData.ChildNodes[I];

      if not SameText(LRow.LocalName, 'row') then
        Continue;

      for J := 0 to LRow.ChildNodes.Count - 1 do
      begin
        LCell := LRow.ChildNodes[J];

        if not SameText(LCell.LocalName, 'c') or
           not LCell.HasAttribute('r') then
          Continue;

        LCellRef := VarToStr(LCell.Attributes['r']);
        LColumnIndex := CellColumn(LCellRef);

        if LColumnIndex <= 0 then
          Continue;

        LMaxColumn := Max(LMaxColumn, LColumnIndex);

        if LColumnIndex = LHistoryColumn then
          Continue;

        LCellText := GetCellText(LCell);

        LWidth := EnsureRange(
          Length(LCellText) + 3.0,
          CMinWidth,
          CMaxWidth
        );

        if not LWidths.ContainsKey(LColumnIndex) or
           (LWidths[LColumnIndex] < LWidth) then
          LWidths.AddOrSetValue(LColumnIndex, LWidth);
      end;
    end;

    LWidths.AddOrSetValue(
      LHistoryColumn,
      CHistoryWidth
    );

    // Segunda passagem: aplica estilos e alturas.
    for I := 0 to LSheetData.ChildNodes.Count - 1 do
    begin
      LRow := LSheetData.ChildNodes[I];

      if not SameText(LRow.LocalName, 'row') then
        Continue;

      LHeight := CRowHeight;

      for J := 0 to LRow.ChildNodes.Count - 1 do
      begin
        LCell := LRow.ChildNodes[J];

        if not SameText(LCell.LocalName, 'c') or
           not LCell.HasAttribute('r') then
          Continue;

        LCellRef := VarToStr(LCell.Attributes['r']);
        LColumnIndex := CellColumn(LCellRef);

        if LColumnIndex <= 0 then
          Continue;

        LCellText := GetCellText(LCell);

        LOriginalStyle := GetIntAttribute(
          LCell, 's', 0
        );

        LNewStyle := GetCalibriStyle(
          LOriginalStyle,
          LColumnIndex = LHistoryColumn
        );

        LCell.Attributes['s'] := LNewStyle;

        if LWidths.TryGetValue(LColumnIndex, LWidth) then
        begin
          LLineCount := EstimateLines(
            LCellText,
            LWidth
          );

          LHeight := Max(
            LHeight,
            LLineCount * CRowHeight
          );
        end;
      end;

      LHeight := Min(LHeight, CMaxRowHeight);

      LRow.Attributes['ht'] := FormatFloat(
        '0.##',
        LHeight,
        TFormatSettings.Invariant
      );

      LRow.Attributes['customHeight'] := '1';
    end;

    // Configura as larguras das colunas.
    LCols := FindChild(LSheetDoc.DocumentElement, 'cols');

    if LCols = nil then
    begin
      LCols := LSheetDoc.DocumentElement.AddChild(
        'cols',
        CMainNS
      );

      // Posiciona cols imediatamente antes de sheetData.
      LSheetDoc.DocumentElement.ChildNodes.Remove(LCols);

      LSheetDoc.DocumentElement.ChildNodes.Insert(
        LSheetData.ChildNodes.IndexOf(LCols),
        LCols
      );
    end;

    // Substitui definições anteriores.
    while LCols.ChildNodes.Count > 0 do
      LCols.ChildNodes.Delete(0);

    for K := 1 to LMaxColumn do
    begin
      if not LWidths.TryGetValue(K, LWidth) then
        Continue;

      LNode := LCols.AddChild('col', CMainNS);
      LNode.Attributes['min'] := K;
      LNode.Attributes['max'] := K;
      LNode.Attributes['width'] := FormatFloat(
        '0.##',
        LWidth,
        TFormatSettings.Invariant
      );
      LNode.Attributes['customWidth'] := '1';
    end;

    LCellXfs.Attributes['count'] :=
      LCellXfs.ChildNodes.Count;

    // Mescla as células A1 e B1.
    MergeFirstRowAB;

    // Alinha o conteúdo da célula mesclada à esquerda.
    AlignMergedCellLeft;

    LStylesDoc.SaveToFile(LStylesPath);
    LSheetDoc.SaveToFile(LSheetPath);

    LStylesDoc := nil;
    LSheetDoc := nil;
    LStringsDoc := nil;

    LFiles.Add(CStylesFile, LStylesPath);
    LFiles.Add(CSheetFile, LSheetPath);

    RebuildXlsx(LTempFile, LFiles);

    // Substitui o arquivo original após a reconstrução.
    TFile.Copy(LTempFile, AFileName, True);

  finally
    LZip.Free;
    LSharedStrings.Free;
    LWidths.Free;
    LStyleMap.Free;
    LFiles.Free;

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

procedure TfrmImpressaoProcessosOPFollowUp.SaveReportInXLS(const AFileName: string);
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

    FormatExcelHistorico(pprXLS.TextFileName, 'AB');
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
