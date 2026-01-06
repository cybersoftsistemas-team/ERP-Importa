unit frmImpressao_Faturamento_OP_NotasEmitidasServ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter, ppBands, ppClass,
  ppCtrls, ppVar, ppPrnabl, ppReport, Buttons, Vcl.StdCtrls, CheckLst, RxLookup, Vcl.ExtCtrls, Mask, RXCtrls, IniFiles,
  RxToolEdit, MemDS, ppDB, ppDesignLayer, ppModule, raCodMod, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Faturamento_OP_NotasEmitidasServ = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cCancelada: TCheckBox;
    cZebrado: TCheckBox;
    cProcesso: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cCliente: TRxDBLookupCombo;
    lCliFor: TStaticText;
    cExcel: TCheckBox;
    rNotas: TppReport;
    ppParameterList1  : TppParameterList;
    pEmpresas         : TppDBPipeline;
    pNotas         : TppDBPipeline;
    tNotas  : TMSQuery;
    dstNotas: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppShape13: TppShape;
    ppShape1: TppShape;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    ppLabel2: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    lPeriodo: TppLabel;
    ppLabel13: TppLabel;
    ppShape12: TppShape;
    ppLabel12: TppLabel;
    ppShape16: TppShape;
    ppLabel16: TppLabel;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    lFaixa: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText4: TppDBText;
    ppDBText18: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel18: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Faturamento_OP_NotasEmitidasServ: TImpressao_Faturamento_OP_NotasEmitidasServ;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Faturamento_OP_NotasEmitidasServ.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidasServ.FormCreate(
  Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_OP_NotasEmitidasServ.bImprimirClick(Sender: TObject);
begin
      tNotas.SQL.Clear;
      tNotas.SQL.Add('SELECT Data_Emissao,');
      tNotas.SQL.Add('       Numero,');
      tNotas.SQL.Add('       Processo,');
      tNotas.SQL.Add('       Total_Nota,');
      tNotas.SQL.Add('       Cliente,');
      tNotas.SQL.Add('       (SELECT Nome FROM Clientes WhERE Codigo = Cliente) AS Cliente_Nome,');
      tNotas.SQL.Add('       Observacao');
      tNotas.SQL.Add('FROM   NotasServico');
      tNotas.SQL.Add('WHERE  (Data_Emissao BETWEEN :pDataIni AND :pDataFim)');
      tNotas.ParamByName('pDataIni').AsDate := cDataIni.Date;
      tNotas.ParamByName('pDataFim').AsDate := cDataFim.Date;

      lPeriodo.Caption := 'Período de '+cDataIni.Text+ ' á '+ cDataFim.Text;

      If Trim(cProcesso.Text) <> '' then begin
         tNotas.SQL.Add('AND (Processo = :pProcesso)');
         tNotas.ParamByName('pProcesso').AsString := Dados.ProcessosDOCProcesso.AsString;
      End;
      If Trim(cCliente.Text) <> '' then begin
         tNotas.SQL.Add('AND (Cliente = :pCliente)');
         tnotas.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
      End;
      If cCancelada.Checked = false then tNotas.SQL.Add('AND (Cancelada <> 1)');
      tNotas.Open;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      rNotas.Print;
      rNotas.Reset;
      rNotas.FreeOnRelease;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidasServ.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      With Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Ativo = 1) ORDER BY Nome');
           Clientes.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Desativado <> 1) ORDER BY Processo');
           ProcessosDOC.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI               := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date      := aINI.ReadDate  ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'DataIni'      , Date );
      cDataFim.Date      := aINI.ReadDate  ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'DataFim'      , Date );
      cProcesso.KeyValue := aINI.ReadString('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Processo'     , '' );
      cCliente.KeyValue  := aINI.ReadInteger('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Cliente'      , 0 );
      cCancelada.Checked := aINI.ReadBool  ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Cancelada'    , False );
      cZebrado.Checked   := aINI.ReadBool  ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Zebrado'      , True  );
      cExcel.Checked     := aINI.ReadBool  ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Excel'        , True  );
      aINI.Free;

end;

procedure TImpressao_Faturamento_OP_NotasEmitidasServ.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'DataIni'      , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'DataFim'      , cDataFim.Date );
      If Trim(cProcesso.Text) <> '' then
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Processo'     , cProcesso.KeyValue)
      else
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Processo'     , '');

      If Trim(cCliente.Text) <> '' then
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Cliente'      , cCliente.KeyValue)
      else
         aINI.WriteString ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Cliente'      , '0');

      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Cancelada'    , cCancelada.Checked );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Zebrado'      , cZebrado.Checked );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_NOTASSERVICO', 'Excel'        , cExcel.Checked );
      aINI.Free;
end;

procedure TImpressao_Faturamento_OP_NotasEmitidasServ.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then
         lFaixa.Visible := not lFaixa.Visible
      else
         lFaixa.Visible := False;
end;

end.
