unit frmImpressao_FiscaisOP_NCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppMemo, ppBands, ppClass, ppCtrls,
  ppVar, ppPrnabl, ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, DBCtrls, RxLookup, RXCtrls, Mask, myChkBox, ppParameter, RXDBCtrl, IniFiles,
  RxToolEdit, ppDB, MemDS, ppDesignLayer, ppStrtch, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FiscaisOP_NCM = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cNCM: TRadioGroup;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    rNCM: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape5: TppShape;
    ppLabel6: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    pEmpresas: TppDBPipeline;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape7: TppShape;
    ppLabel5: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    dstNCM: TDataSource;
    tNCM: TMSQuery;
    tNCMNCM: TStringField;
    tNCMCodigo_EXTIPI: TSmallintField;
    tNCMProduto: TStringField;
    tNCMUnidade: TStringField;
    tNCMPIS: TFloatField;
    tNCMCOFINS: TFloatField;
    tNCMII: TFloatField;
    tNCMIPI_Valor: TFloatField;
    tNCMIPI: TFloatField;
    tNCMDNF: TBooleanField;
    tNCMNota: TIntegerField;
    pNCM: TppDBPipeline;
    ppParameterList1: TppParameterList;
    lPeriodo: TppLabel;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    tNCMData: TDateTimeField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    StaticText3: TStaticText;
    cTipoProcesso: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cCodigoNCM: TMaskEdit;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FiscaisOP_NCM: TImpressao_FiscaisOP_NCM;

implementation

uses frmDados, frmMenu_Principal;


{$R *.dfm}

procedure TImpressao_FiscaisOP_NCM.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_NCM.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FiscaisOP_NCM.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ( 'IMPRESSAO_NCM', 'DataIni'  , cDataIni.Date );
      aINI.WriteDate   ( 'IMPRESSAO_NCM', 'DataFim'  , cDataFim.Date );
      aINI.WriteInteger( 'IMPRESSAO_NCM', 'NCM'      , cNCM.ItemIndex );
      aINI.WriteString ( 'IMPRESSAO_NCM', 'CodigoNCM', cCodigoNCM.Text);
      aINI.Free;

      Impressao_FiscaisOP_NCM.Release;
      Impressao_FiscaisOP_NCM := nil;
end;

procedure TImpressao_FiscaisOP_NCM.bImprimirClick(Sender: TObject);
begin
     Dados.Empresas.Open;

     tNCM.SQL.Clear;
     tNCM.SQL.Add('SELECT DISTINCT NCM.*, NotasItens.Nota, NotasItens.Data');
     tNCM.SQL.Add('FROM   NCM, NotasItens');
     tNCM.SQL.Add('WHERE  (NotasItens.Data BETWEEN :pDataIni AND :pDataFim) AND (NCM.NCM = NotasItens.NCM)');
     If cNCM.ItemIndex = 0 then begin
        tNCM.SQL.Add(' AND (NCM.Codigo_DNF IS NOT NULL)');
     End;
     If Trim(cTipoProcesso.Text) <> '' then begin
        tNCM.SQL.Add(' AND ((SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE(PD.Processo = NotasItens.Processo)) = :pTipo)');
        tNCM.ParamByName('pTipo').AsInteger := Dados.TiposProcessoCodigo.Asinteger;
     End;
     If Trim(cCodigoNCM.Text) <> '' then begin
        tNCM.SQL.Add(' AND (NCM.NCM = :pNCM)');
        tNCM.ParamByName('pNCM').AsString := Trim(cCodigoNCM.Text);
     End;

     tNCM.SQL.Add('ORDER BY NCM.NCM, Nota');
     tNCM.ParamByName('pDataIni').AsDateTime := cDataIni.Date;
     tNCM.ParamByName('pDataFim').AsDateTime := cDataFim.Date;
     tNCM.Open;

     lPeriodo.Caption := 'Período: '+cDataIni.Text +' a '+cDataFim.Text;
     lTitulo.Caption  := lTitulo.Caption + ' - '+Menu_Principal.lFilial.Caption; 

     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;
     //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     rNCM.Print;
     rNCM.FreeOnRelease;
     rNCM.Reset;
end;

procedure TImpressao_FiscaisOP_NCM.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      With Dados do begin
           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Descricao');
           TiposProcesso.Open;
      End;
      
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                   := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date          := aINI.ReadDate   ('IMPRESSAO_NCM', 'DataIni'  , Date );
      cDataFim.Date          := aINI.ReadDate   ('IMPRESSAO_NCM', 'DataFim'  , Date );
      cNCM.ItemIndex         := aINI.ReadInteger('IMPRESSAO_NCM', 'NCM'      , 1 );
      cCodigoNCM.Text        := aINI.ReadString ('IMPRESSAO_NCM', 'CodigoNCM', '' );
      aINI.Free;
end;

end.
