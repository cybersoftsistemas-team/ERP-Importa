unit frmImpressao_FiscaisOP_DIFAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls, DBCtrls, DB, DBAccess, MSAccess, ppDBPipe,
  ppClass,ppReport, ppCtrls, ppPrnabl, ppBands, ppParameter, ppVar,Buttons,
  RxToolEdit, ppDB, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd, MemDS;

type
  TImpressao_FiscaisOP_DIFAL = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText3: TStaticText;
    cDataIni: TDateEdit;
    cDataFim: TDateEdit;
    cEstado: TDBLookupComboBox;
    tDIFAL: TMSQuery;
    rDIFAL: TppReport;
    pDIFAL: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    iLogo: TppImage;
    pEmpresas: TppDBPipeline;
    dsTDIFAL: TDataSource;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText7: TppDBText;
    ppLabel13: TppLabel;
    ppDBText8: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText9: TppDBText;
    ppLabel16: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel10: TppLabel;
    ppDBText13: TppDBText;
    ppLabel9: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel19: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    bLimparForma: TSpeedButton;
    ppSummaryBand1: TppSummaryBand;
    ppLabel20: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine5: TppLine;
    lPeriodo: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bLimparFormaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FiscaisOP_DIFAL: TImpressao_FiscaisOP_DIFAL;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FiscaisOP_DIFAL.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_DIFAL.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FiscaisOP_DIFAL.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Impressao_FiscaisOP_DIFAL.Release;
      Impressao_FiscaisOP_DIFAL := nil;
end;

procedure TImpressao_FiscaisOP_DIFAL.FormShow(Sender: TObject);
begin
      With Dados do begin
           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados ORDER BY Codigo');
           Estados.Open;
      End;
end;

procedure TImpressao_FiscaisOP_DIFAL.bImprimirClick(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas where Codigo = '+InttoStr(Menu_principal.mEmpresa));
                open;
           end;
           with tDIFAL do begin
                sql.clear;
                sql.add('select Nota = Numero');
                sql.add('      ,Data_Emissao');
                sql.add('      ,Destinatario_Nome');
                sql.add('      ,Destinatario_Estado');
                sql.add('      ,Valor_BCICMSDest');
                sql.add('      ,Aliquota_ICMSOper');
                sql.add('      ,Valor_ICMS');
                sql.add('      ,DIFAL_AliqInterna');
                sql.add('      ,Valor_ICMSDest');
                sql.add('      ,DIFAL = (DIFAL_AliqInterna - Aliquota_ICMSOper)');
                sql.add('      ,DIFAL_ValorOrig');
                sql.add('      ,DIFAL_ValorDest');
                sql.add('      ,FCP_Aliquota = isnull((select FCP from ICMS where UF = Destinatario_Estado), 0)');
                sql.add('      ,FCP_ValorDest');
                sql.add('from NotasFiscais');
                sql.add('where DIFAL_Valor > 0');
                sql.add('and Data_Emissao between :pDataIni and :pDataFim');
                sql.add('and Cancelada <> 1');
                sql.add('and Nfe_Denegada <> 1');
                if trim(cEstado.Text) <> '' then begin
                   sql.Add('and Destinatario_Estado = '+QuotedStr(EstadosCodigo.AsString));
                end;
                sql.Add('order by Destinatario_Estado, Data_Emissao, Nota ');
                //tDIFAL.sql.SaveToFile('c:\temp\Controle_DIFAL.sql');
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                open;
           end;
           if EmpresasMatriz_Filial.AsBoolean then begin
              lTitulo.Caption := 'Controle de DIFAL (Matriz)';
           end else begin
              lTitulo.Caption := 'Controle de DIFAL (Filial '+EmpresasNumero_Filial.AsString+')';
           end;
           lPeriodo.Caption := 'Período '+cDataIni.Text + ' a ' + cDataFim.Text;
           if cEstado.Text <> '' then begin
              lPeriodo.Caption := lPeriodo.Caption + ' - ' + cEstado.Text;
           end else begin
              lPeriodo.Caption := lPeriodo.Caption + ' - Todos os Estados';
           end;
           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;
           rDIFAL.Reset;
           rDIFAL.Print;
      end;
end;

procedure TImpressao_FiscaisOP_DIFAL.bLimparFormaClick(Sender: TObject);
begin
      cEstado.KeyValue := null;
end;

end.
