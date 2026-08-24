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
    btnPrint: TButton;
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
    btnClear: TButton;
    lblRecords: TLabel;
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
    btnSaveTo: TBitBtn;
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
    ppDetailBand1: TppDetailBand;
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
    ppDBMemo2: TppDBMemo;
    ppLine2: TppLine;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppTitleBand1: TppTitleBand;
    ppLabel30: TppLabel;
    procedure btnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure qryFLPAfterClose(DataSet: TDataSet);
    procedure qryFLPAfterOpen(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSaveToClick(Sender: TObject);
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
  frmDados;

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
            dlgSavePDF.FileName := ChangeFileExt(dlgSavePDF.FileName, '.xls');
          end;
          SaveReportInXLS(dlgSavePDF.FileName);
        end;
    end;
  end;
end;

procedure TfrmImpressaoProcessosOPFollowUp.btnSearchClick(Sender: TObject);
begin
  qryPRH.Close;
  qryFLP.Close;
  qryFLP.ParamByName('DataInicial').AsDateTime := cDataIni.Date;
  qryFLP.ParamByName('DataFinal').AsDateTime := cDataFim.Date;
  qryFLP.ParamByName('Situacao').AsInteger := rgSit.ItemIndex;
  qryFLP.ParamByName('Estado').AsInteger := rgEst.ItemIndex;
  qryFLP.ParamByName('ClienteCodigo').AsInteger := StrToIntDef(VarToStr(cCliente.KeyValue), 0);
  qryFLP.ParamByName('RespNome').AsString := VarToStr(cResponsavel.KeyValue);
  qryFLP.ParamByName('Processo').AsString := edtProcesso.Text;
  qryFLP.Prepare;
  qryFLP.Open;
  qryPRH.Open;
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
begin
  LOldDevice := pprXLS.DeviceType;
  try
    pprXLS.ShowPrintDialog := False;
    pprXLS.DeviceType := 'XLSData';
    pprXLS.TextFileName := AFileName;
    pprXLS.PDFSettings.OpenPDFFile := False;
    pprXLS.Print;
  finally
    pprXLS.DeviceType := LOldDevice;
  end;
end;

procedure TfrmImpressaoProcessosOPFollowUp.SetDateDef;
begin
  cDataIni.Date := Now - 30;
  cDataFim.Date := Now;
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
