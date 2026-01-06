unit frmImpressao_ContabeisOP_Critica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Mask, DBCtrls, DB, Funcoes,
  INIFiles, ppCtrls, ppClass, ppBands, ppDBPipe, ppReport, ppMemo, ppVar, DBAccess,
  MSAccess, RxToolEdit, MemDS, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, Vcl.WinXCtrls;

type
  TImpressao_ContabeisOP_Critica = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    StaticText1: TStaticText;
    rLancamentos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    lTitulo: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    ppLabel6: TppLabel;
    ppShape4: TppShape;
    ppLabel7: TppLabel;
    ppShape5: TppShape;
    ppLabel8: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine4: TppLine;
    ppLabel10: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppDBText6: TppDBText;
    lData: TppLabel;
    ppLine8: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppHistoricos: TppDBPipeline;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    gData: TppGroupFooterBand;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine9: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc2: TppDBCalc;
    GroupBox1: TGroupBox;
    tLancamentos: TMSQuery;
    dstLancamentos: TDataSource;
    pEmpresa: TppDBPipeline;
    pLancamentos: TppDBPipeline;
    ppDBMemo1: TppDBMemo;
    ppLine10: TppLine;
    iLogo: TppImage;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    cSalto: TToggleSwitch;
    cTotalDia: TToggleSwitch;
    lPeriodo: TppLabel;
    procedure bSairClick(Sender: TObject);
    procedure cDataIniChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
    procedure rLancamentosBeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha  : Integer;
    mPagina : Integer;
    Arquivo   : TextFile;
    mNomeArq  : String;
    mGrupo    : String;
    mNatureza : String;
    mCentro   : Integer;
  end;

var
  Impressao_ContabeisOP_Critica: TImpressao_ContabeisOP_Critica;

implementation

uses frmDMContab, frmDados, frmJanela_Processamento, frmImpressao_Visualizar, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ContabeisOP_Critica.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI            := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date   := aINI.ReadDate('IMPRESSAO_LANCAMENTOS', 'Data_Inicial', Date);
      cDataFim.Date   := aINI.ReadDate('IMPRESSAO_LANCAMENTOS', 'Data_Final', Date);
      cSalto.state    := iif(aINI.ReadBool('IMPRESSAO_LANCAMENTOS', 'Salto', True ), 1, 0);
      cTotalDia.state := iif(aINI.ReadBool('IMPRESSAO_LANCAMENTOS', 'TotalDia', True), 1, 0);
      aINI.Free;

      Screen.Cursor := crSQLWait;
      With dmContab, Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao');
           Historicos.Open;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 0)' );
           PlanoContas.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_ContabeisOP_Critica.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_ContabeisOP_Critica.cDataIniChange(Sender: TObject);
begin
        If cDataFim.Text = '  /  /    ' then cDataFim.Date := cDataIni.Date;
end;


procedure TImpressao_ContabeisOP_Critica.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      with Dados, dmContab do begin
           with tLancamentos do begin
                sql.Clear;
                sql.Add('select Lancamentos.*,');
                sql.Add('       (select Descricao from PlanoContas where(Codigo = Lancamentos.Conta_Debito))  as Nome_ContaD,');
                sql.Add('       (select Descricao from PlanoContas where(Codigo = Lancamentos.Conta_Credito)) as Nome_ContaC, ');
                sql.Add('       Historico = rtrim((select Descricao from HistoricoPadrao where Codigo = Historico_Codigo))+rtrim(cast(isnull(Historico_Complemento, '''') as varchar(100)) collate SQL_Latin1_General_CP1_CI_AS)');
                sql.Add('from   Lancamentos');
                sql.Add('where  (Data between :pDataIni and :pDataFim)');
                sql.Add('order  by Data, Numero');
                ParamByName('pDataIni').AsDateTime := cDataIni.Date;
                ParamByName('pDataFim').AsDateTime := cDataFim.Date;
                //tLancamentos.SQL.SaveToFile('c:\temp\Critica_Lancamentos.sql');
                Open;

                if RecordCount = 0 then begin
                   ShowMessage('Não há movimento para o período solicitado!');
                   Abort;
                end;
           end;
      end;
      Screen.Cursor := crDefault;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      lPeriodo.Caption := '| Período : '+cDataIni.Text + ' á ' + cDataFim.Text + ' |';
      rLancamentos.Print;
      rLancamentos.FreeOnRelease;
end;

procedure TImpressao_ContabeisOP_Critica.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate('IMPRESSAO_LANCAMENTOS', 'Data_Inicial', cDataIni.Date );
      aINI.WriteDate('IMPRESSAO_LANCAMENTOS', 'Data_Final', cDataFim.Date );
      aINI.WriteBool('IMPRESSAO_LANCAMENTOS', 'Salto', iif(cSalto.state = tsson, true, false));
      aINI.WriteBool('IMPRESSAO_LANCAMENTOS', 'TotalDia', iif(cTotalDia.state = tsson, true, false));
      aINI.Free;

      LimpaMemoria;
      Impressao_ContabeisOP_Critica.Release;
      Impressao_ContabeisOP_Critica := nil;
end;

procedure TImpressao_ContabeisOP_Critica.ppFooterBand1BeforePrint(Sender: TObject);
begin
      lData.Caption := DataExtenso( Dados.MunicipiosNome.Value, Date );
end;

procedure TImpressao_ContabeisOP_Critica.rLancamentosBeforePrint(Sender: TObject);
begin
      rLancamentos.Groups[0].NewPage := cSalto.state = tsson;
      gData.Visible                  := cTotalDia.state = tsson;
end;

procedure TImpressao_ContabeisOP_Critica.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.
