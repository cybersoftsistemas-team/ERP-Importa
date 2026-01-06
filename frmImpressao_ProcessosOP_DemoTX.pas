unit frmImpressao_ProcessosOP_DemoTX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDBPipe, DB, ppCtrls, ppVar, ppBands, ppPrnabl, ppClass,
  ppReport, DBAccess, MSAccess, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RxLookup, RXCtrls, IniFiles, Funcoes, ComObj,
  ppParameter, RxToolEdit, ppDB, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd, MemDS;

type
  TImpressao_ProcessosOP_DemoTX = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText5: TStaticText;
    cCliente: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cProcesso: TRxDBLookupCombo;
    cZebrado: TCheckBox;
    cExcel: TCheckBox;
    cDataIni: TDateEdit;
    StaticText8: TStaticText;
    cDataFim: TDateEdit;
    StaticText10: TStaticText;
    tProcessos: TMSQuery;
    rDemonstrativo: TppReport;
    dstProcessos: TDataSource;
    pEmpresas: TppDBPipeline;
    pProcessos: TppDBPipeline;
    pCambios: TppDBPipeline;
    ppParameterList1: TppParameterList;
    pImpostos: TppDBPipeline;
    cSaltarProcesso: TCheckBox;
    cSaltarCliente: TCheckBox;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    ppShape14: TppShape;
    ppLabel9: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppShape4: TppShape;
    ppLabel6: TppLabel;
    ppShape5: TppShape;
    ppLabel10: TppLabel;
    ppShape8: TppShape;
    ppLabel14: TppLabel;
    ppShape9: TppShape;
    ppLabel17: TppLabel;
    ppDetailBand1: TppDetailBand;
    lFaixa: TppShape;
    ppDBText11: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine10: TppLine;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel3: TppLabel;
    ppGroup1: TppGroup;
    pCab_GrupoCliente: TppGroupHeaderBand;
    ppShape7: TppShape;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel5: TppLabel;
    ppGroup2: TppGroup;
    pCab_GrupoProcesso: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppLabel7: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape6: TppShape;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bImprimirClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_DemoTX: TImpressao_ProcessosOP_DemoTX;

implementation

uses frmDados, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_ProcessosOP_DemoTX.bImprimirClick(Sender: TObject);
begin
      tProcessos.SQL.Clear;
      tProcessos.SQL.Add('SELECT 0 AS Tipo,');
      tProcessos.SQL.Add('       ''TOTAL DAS DESPESAS'' AS Descricao_Tipo,');
      tProcessos.SQL.Add('       (SELECT Processo FROM ProcessosFechamento WHERE(Codigo = Fechamento)) AS Processo,');
      tProcessos.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = (SELECT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = (SELECT Processo FROM ProcessosFechamento WHERE(Codigo = Fechamento)))))) AS Cliente,');
      tProcessos.SQL.Add('       Classificacao,');
      tProcessos.SQL.Add('       Descricao,');
      tProcessos.SQL.Add('       Valor_Fechamento,');
      tProcessos.SQL.Add('       Data_BaixaVenc,');
      tProcessos.SQL.Add('       Data_CorrecaoDespesa,');
      tProcessos.SQL.Add('       DATEDIFF(Day, Data_BaixaVenc, Data_CorrecaoDespesa) AS Dias,');
      tProcessos.SQL.Add('      (SELECT Taxa_CorrecaoDespesas FROM ProcessosFechamento WHERE(Codigo = Fechamento)) AS Taxa,');
      tProcessos.SQL.Add('      ((Valor_Fechamento * POWER( 1 + (SELECT Taxa_CorrecaoDespesas FROM ProcessosFechamento WHERE(Codigo = Fechamento))/100, DATEDIFF(Day, Data_BaixaVenc, Data_CorrecaoDespesa)))-Valor_Fechamento) AS Valor_Correcao');
      tProcessos.SQL.Add('FROM  ProcessosFechamentoItens, ProcessosFechamento');
      tProcessos.SQL.Add('WHERE (ProcessosFechamentoItens.Fechamento =  ProcessosFechamento.Codigo) AND (Data_CorrecaoDespesa IS NOT NULL) ');
      If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
         tProcessos.SQL.Add('AND (ProcessosFechamento.Data BETWEEN :pDataIni AND :pDataFim) ');
         tProcessos.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tProcessos.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;
      If Trim(cProcesso.Text) <> '' then begin
         tProcessos.SQL.Add('AND (Processo = :pProcesso) ');
      End;
      If Trim(cCliente.Text) <> '' then begin
         tProcessos.SQL.Add('AND (SELECT Codigo FROM Clientes WHERE(Codigo = (SELECT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = (SELECT Processo FROM ProcessosFechamento WHERE(Codigo = Fechamento)))))) = :pCliente');
         tProcessos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
      End;
      tProcessos.SQL.Add('UNION ALL');
      tProcessos.SQL.Add('SELECT 1,');
      tProcessos.SQL.Add('       ''TOTAL DO CAMBIO'',');
      tProcessos.SQL.Add('       Processo,');
      tProcessos.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = (SELECT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ContratoCambioItens.Processo)))),');
      tProcessos.SQL.Add('       ''CÂMBIO'',');
      tProcessos.SQL.Add('       ''CONTRATO DE CÂMBIO Nº ''+Contrato,');
      tProcessos.SQL.Add('       (Valor_ME * Taxa_Cambial),');
      tProcessos.SQL.Add('       Data,');
      tProcessos.SQL.Add('       (SELECT Data_CorrecaoCambio FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ContratoCambioItens.Processo)),');
      tProcessos.SQL.Add('       DATEDIFF(Day, Data, (SELECT Data_CorrecaoCambio FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ContratoCambioItens.Processo))),');
      tProcessos.SQL.Add('       (SELECT Taxa_CorrecaoCambio FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ContratoCambioItens.Processo)),');
      tProcessos.SQL.Add('       ((Valor_ME * Taxa_Cambial) * POWER( 1 + (SELECT Taxa_CorrecaoCambio FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ContratoCambioItens.Processo))/100,');
      tProcessos.SQL.Add('       DATEDIFF(Day, Data, (SELECT Data_CorrecaoCambio FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ContratoCambioItens.Processo)))) - (Valor_ME * Taxa_Cambial)) AS Valor_Correcao');
      tProcessos.SQL.Add('FROM  ContratoCambioItens');
      tProcessos.SQL.Add('WHERE (Contrato IS NOT NULL) ');

      If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
         tProcessos.SQL.Add('AND ((SELECT Data FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ContratoCambioItens.Processo)) BETWEEN :pDataIni AND :pDataFim)');
         tProcessos.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tProcessos.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;

      If Trim(cProcesso.Text) <> '' then begin
         tProcessos.SQL.Add('AND (Processo = :pProcesso) ');
      End;
      If Trim(cCliente.Text) <> '' then begin
         tProcessos.SQL.Add('AND (SELECT Codigo FROM Clientes WHERE(Codigo = (SELECT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ContratoCambioItens.Processo)))) = :pCliente');
         tProcessos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
      End;
      tProcessos.SQL.Add('UNION ALL');
      tProcessos.SQL.Add('SELECT 2,');
      tProcessos.SQL.Add('       ''TOTAL DOS IMPOSTOS'',');
      tProcessos.SQL.Add('       Processo,');
      tProcessos.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = Cliente)),');
      tProcessos.SQL.Add('       ''II'',');
      tProcessos.SQL.Add('       ''IMPOSTO DE IMPORTAÇÃO'',');
      tProcessos.SQL.Add('       II,');
      tProcessos.SQL.Add('       Data_RegistroDeclaracao,');
      tProcessos.SQL.Add('       (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)),');
      tProcessos.SQL.Add('       DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo))),');
      tProcessos.SQL.Add('       (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)),');
      tProcessos.SQL.Add('       (II * POWER( 1 + (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo))/100, ');
      tProcessos.SQL.Add('                    DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)))))-II');
      tProcessos.SQL.Add('FROM  ProcessosDocumentos');
      tProcessos.SQL.Add('WHERE (Processo IS NOT NULL) ');
      If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
         tProcessos.SQL.Add('AND ((SELECT Data FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)) BETWEEN :pDataIni AND :pDataFim)');
         tProcessos.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tProcessos.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;
      If Trim(cProcesso.Text) <> '' then begin
         tProcessos.SQL.Add('AND (Processo = :pProcesso) ');
      End;
      If Trim(cCliente.Text) <> '' then begin
         tProcessos.SQL.Add('AND Cliente = :pCliente ');
         tProcessos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
      End;
      tProcessos.SQL.Add('UNION ALL');
      tProcessos.SQL.Add('SELECT 2,');
      tProcessos.SQL.Add('       ''TOTAL DOS IMPOSTOS'',');
      tProcessos.SQL.Add('       Processo,');
      tProcessos.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = Cliente)),');
      tProcessos.SQL.Add('       ''IPI'',');
      tProcessos.SQL.Add('       ''IPI'',');
      tProcessos.SQL.Add('       Valor_IPI,');
      tProcessos.SQL.Add('       Data_RegistroDeclaracao,');
      tProcessos.SQL.Add('       (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)),');
      tProcessos.SQL.Add('       DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo))),');
      tProcessos.SQL.Add('       (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)),');
      tProcessos.SQL.Add('       (Valor_IPI * POWER( 1 + (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo))/100, ');
      tProcessos.SQL.Add('                           DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)))))-Valor_IPI');
      tProcessos.SQL.Add('FROM  ProcessosDocumentos');
      tProcessos.SQL.Add('WHERE (Processo IS NOT NULL) ');
      If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
         tProcessos.SQL.Add('AND ((SELECT Data FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)) BETWEEN :pDataIni AND :pDataFim)');
         tProcessos.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tProcessos.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;
      If Trim(cProcesso.Text) <> '' then begin
         tProcessos.SQL.Add('AND (Processo = :pProcesso) ');
      End;
      If Trim(cCliente.Text) <> '' then begin
         tProcessos.SQL.Add('AND Cliente = :pCliente ');
         tProcessos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
      End;
      tProcessos.SQL.Add('UNION ALL');
      tProcessos.SQL.Add('SELECT 2,');
      tProcessos.SQL.Add('       ''TOTAL DOS IMPOSTOS'',');
      tProcessos.SQL.Add('       Processo,');
      tProcessos.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = Cliente)),');
      tProcessos.SQL.Add('       ''PIS'',');
      tProcessos.SQL.Add('       ''PIS'',');
      tProcessos.SQL.Add('       Valor_PIS,');
      tProcessos.SQL.Add('       Data_RegistroDeclaracao,');
      tProcessos.SQL.Add('       (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)),');
      tProcessos.SQL.Add('       DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo))),');
      tProcessos.SQL.Add('       (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)),');
      tProcessos.SQL.Add('       (Valor_PIS * POWER( 1 + (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo))/100, ');
      tProcessos.SQL.Add('                           DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)))))-Valor_PIS');
      tProcessos.SQL.Add('FROM  ProcessosDocumentos');
      tProcessos.SQL.Add('WHERE (Processo IS NOT NULL) ');
      If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
         tProcessos.SQL.Add('AND ((SELECT Data FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)) BETWEEN :pDataIni AND :pDataFim)');
         tProcessos.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tProcessos.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;
      If Trim(cProcesso.Text) <> '' then begin
         tProcessos.SQL.Add('AND (Processo = :pProcesso) ');
      End;
      If Trim(cCliente.Text) <> '' then begin
         tProcessos.SQL.Add('AND Cliente = :pCliente ');
         tProcessos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
      End;
      tProcessos.SQL.Add('UNION ALL');
      tProcessos.SQL.Add('SELECT 2,');
      tProcessos.SQL.Add('       ''TOTAL DOS IMPOSTOS'',');
      tProcessos.SQL.Add('       Processo,');
      tProcessos.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = Cliente)),');
      tProcessos.SQL.Add('       ''COFINS'',');
      tProcessos.SQL.Add('       ''COFINS'',');
      tProcessos.SQL.Add('       Valor_COFINS,');
      tProcessos.SQL.Add('       Data_RegistroDeclaracao,');
      tProcessos.SQL.Add('       (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)),');
      tProcessos.SQL.Add('       DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo))),');
      tProcessos.SQL.Add('       (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)),');
      tProcessos.SQL.Add('       (Valor_COFINS * POWER( 1 + (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo))/100, ');
      tProcessos.SQL.Add('                              DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)))))-Valor_COFINS');
      tProcessos.SQL.Add('FROM  ProcessosDocumentos');
      tProcessos.SQL.Add('WHERE (Processo IS NOT NULL) ');
      If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
         tProcessos.SQL.Add('AND ((SELECT Data FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)) BETWEEN :pDataIni AND :pDataFim)');
         tProcessos.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tProcessos.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;
      If Trim(cProcesso.Text) <> '' then begin
         tProcessos.SQL.Add('AND (Processo = :pProcesso) ');
         tProcessos.ParamByName('pProcesso').AsString := cProcesso.Text;
      End;
      If Trim(cCliente.Text) <> '' then begin
         tProcessos.SQL.Add('AND Cliente = :pCliente ');
         tProcessos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
      End;
      tProcessos.SQL.Add('ORDER BY Cliente, Processo, Tipo');
      //tProcessos.SQL.SaveToFile('c:\temp\Demontrativo_Taxa_Financeira.sql');
      tProcessos.Open;
      If cExcel.Checked = false then begin
         pCab_GrupoProcesso.Group.NewPage := cSaltarProcesso.Checked;
         pCab_GrupoCliente.Group.NewPage  := cSaltarCliente.Checked;
         
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rDemonstrativo.Print;
         rDemonstrativo.FreeOnRelease;
         rDemonstrativo.Reset;
      end else begin
         ExportaEXCEL;
      End;
end;

procedure TImpressao_ProcessosOP_DemoTX.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_ProcessosOP_DemoTX.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_PROCESSOS_P08', 'DataIni'        , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_PROCESSOS_P08', 'DataFim'        , cDataFim.Date);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P08', 'Processo'       , cProcesso.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P08', 'Cliente'        , cCliente.Text);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P08', 'Zebrado'        , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P08', 'Excel'          , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P08', 'Saltar_Processo', cSaltarProcesso.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P08', 'Saltar_Cliente' , cSaltarCliente.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_ProcessosOP_DemoTX.Release;
      Impressao_ProcessosOP_DemoTX := nil;
end;

procedure TImpressao_ProcessosOP_DemoTX.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_DemoTX.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_P08', 'DataIni'        , Date);
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_P08', 'DataFim'        , Date);
      cProcesso.KeyValue      := aINI.ReadString ('IMPRESSAO_PROCESSOS_P08', 'Processo'       , '');
      cCliente.DisplayValue   := aINI.ReadString ('IMPRESSAO_PROCESSOS_P08', 'Cliente'        , '');
      cZebrado.Checked        := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P08', 'Zebrado'        , false);
      cExcel.Checked          := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P08', 'Excel'          , false);
      cSaltarProcesso.Checked := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P08', 'Saltar_Processo', false);
      cSaltarCliente.Checked  := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P08', 'Saltar_Cliente' , false);
      aINI.Free;

      With Dados do begin
           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE Codigo IN(SELECT DISTINCT Cliente FROM ProcessosDocumentos) ORDER BY Nome');
           Clientes.Open;

           ProcessosFechamento.SQL.Clear;
           ProcessosFechamento.SQL.Add('SELECT ProcessosFechamento.*,');
           ProcessosFechamento.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = (SELECT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)))) AS Cliente_Nome');
           ProcessosFechamento.SQL.Add('FROM   ProcessosFechamento');
           ProcessosFechamento.SQL.Add('ORDER  BY Processo');
           ProcessosFechamento.Open;
      End;
end;

procedure TImpressao_ProcessosOP_DemoTX.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then
         lFaixa.Visible := not lFaixa.Visible
      else
         lFaixa.Visible := False;
end;

procedure TImpressao_ProcessosOP_DemoTX.bLimparClick(Sender: TObject);
begin
      cProcesso.ClearValue;
      cCliente.ClearValue;
      cDataIni.Clear;
      cDataFim.Clear;
end;

// Envia informações para o excel.
procedure TImpressao_ProcessosOP_DemoTX.ExportaEXCEL;
var
   mPlanilha      : Variant;
   mLinha         : Integer;
   mZebra         : Boolean;
   mTipo          : String;
   mCliente       : String;
   mProcesso      : String;
   mTotalClienteB : Real;
   mTotalClienteG : Real;
   mTotalProcessoB: Real;
   mTotalProcessoG: Real;
   mTotalGeralB   : Real;
   mTotalGeralG   : Real;
   mTotalTipoB    : Real;
   mTotalTipoG    : Real;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tProcessos.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','G3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','G3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','G3'].Font.Bold         := true;
       mPlanilha.Range['A3','G3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','G3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','G3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','G3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'DESPESA';
       mPlanilha.Cells[3,02] := 'VALOR DESPESA';
       mPlanilha.Cells[3,03] := 'DATA PGTO.';
       mPlanilha.Cells[3,04] := 'DATA ATUAL.';
       mPlanilha.Cells[3,05] := 'DIAS';
       mPlanilha.Cells[3,06] := 'TAXA AO DIA';
       mPlanilha.Cells[3,07] := 'VALOR CORREÇÃO';

       mPlanilha.Range['A3','G3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','G3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','G3'].Font.Size           := 8;

       mLinha    := 4;
       mZebra    := false;
       mTipo     := tProcessos.FieldByName('Descricao_Tipo').AsString;
       mCliente  := tProcessos.FieldByName('Cliente').AsString;
       mProcesso := tProcessos.FieldByName('Processo').AsString;

       mPlanilha.Cells[mLinha,01] := tProcessos.FieldByName('Cliente').AsString;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color      := $0071B8FF;
       mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Font.Bold           := true;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Mergecells          := True;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;
       Inc(mLinha);

       mPlanilha.Cells[mLinha,01] := tProcessos.FieldByName('Processo').AsString;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color      := $00FFB3B3;
       mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Font.Bold           := true;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Mergecells          := True;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;
       Inc(mLinha);

       While (not tProcessos.Eof) and (not Funcoes.Cancelado) do begin
             mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size := 8;
             mPlanilha.Range['C'+InttoStr(mLinha),'D'+InttoStr(mLinha)].HorizontalAlignment := 3;

             mPlanilha.Cells[mLinha,01] := tProcessos.FieldByName('Descricao').AsString;
             mPlanilha.Cells[mLinha,02] := tProcessos.FieldByName('Valor_Fechamento').AsCurrency;
             mPlanilha.Cells[mLinha,03] := tProcessos.FieldByName('Data_BaixaVenc').Value;
             mPlanilha.Cells[mLinha,04] := tProcessos.FieldByName('Data_CorrecaoDespesa').Value;
             mPlanilha.Cells[mLinha,05] := tProcessos.FieldByName('Dias').AsInteger;
             mPlanilha.Cells[mLinha,06] := tProcessos.FieldByName('Taxa').AsFloat;
             mPlanilha.Cells[mLinha,07] := tProcessos.FieldByName('Valor_Correcao').AsCurrency;

             mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';

             mTotalTipoB     := mTotalTipoB     + tProcessos.FieldByName('Valor_Fechamento').AsCurrency;
             mTotalTipoG     := mTotalTipoG     + tProcessos.FieldByName('Valor_Correcao').AsCurrency;
             mTotalProcessoB := mTotalProcessoB + tProcessos.FieldByName('Valor_Fechamento').AsCurrency;
             mTotalProcessoG := mTotalProcessoG + tProcessos.FieldByName('Valor_Correcao').AsCurrency;
             mTotalClienteB  := mTotalClienteB  + tProcessos.FieldByName('Valor_Fechamento').AsCurrency;
             mTotalClienteG  := mTotalClienteG  + tProcessos.FieldByName('Valor_Correcao').AsCurrency;
             mTotalGeralB    := mTotalGeralB    + tProcessos.FieldByName('Valor_Fechamento').AsCurrency;
             mTotalGeralG    := mTotalGeralG    + tProcessos.FieldByName('Valor_Correcao').AsCurrency;

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             tProcessos.Next;
             
             If (mTipo <> tProcessos.FieldByName('Descricao_Tipo').AsString) or (tProcessos.Eof) then begin
                Inc(mLinha);

                mPlanilha.Cells[mLinha,02] := mTotalTipoB;
                mPlanilha.Cells[mLinha,07] := mTotalTipoG;

                mPlanilha.Cells[mLinha,01] := mTipo;
                mPlanilha.Cells[mLinha,01].HorizontalAlignment := 1;
                mPlanilha.Range['A3','G3'].VerticalAlignment   := 2;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 8;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';

                mTotalTipoB := 0;
                mTotalTipoG := 0;

                Inc(mLinha,1);
                If not tProcessos.Eof then begin
                   mTipo := tProcessos.FieldByName('Descricao_Tipo').AsString;
                End;
             End;

             If (mProcesso <> tProcessos.FieldByName('Processo').AsString) or (tProcessos.Eof) then begin
                Inc(mLinha);

                mPlanilha.Cells[mLinha,02] := mTotalProcessoB;
                mPlanilha.Cells[mLinha,07] := mTotalProcessoG;

                mPlanilha.Cells[mLinha,01] := 'TOTAL DO PROCESSO ';
                mPlanilha.Cells[mLinha,01].HorizontalAlignment := 1;
                mPlanilha.Range['A3','G3'].VerticalAlignment   := 2;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 8;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';

                mTotalProcessoB:= 0;
                mTotalProcessoG:= 0;

                Inc(mLinha,1);
                If not tProcessos.Eof then begin
                   mProcesso := tProcessos.FieldByName('Processo').AsString;
                   mPlanilha.Cells[mLinha,01] := tProcessos.FieldByName('Processo').AsString;
                   mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color      := $00FFB3B3;
                   mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Font.Bold           := true;
                   mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Mergecells          := True;
                   mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;
                End;
             End;

             If (mCliente <> tProcessos.FieldByName('Cliente').AsString) or (tProcessos.Eof) then begin
                Inc(mLinha);

                mPlanilha.Cells[mLinha,02] := mTotalClienteB;
                mPlanilha.Cells[mLinha,07] := mTotalClienteG;

                mPlanilha.Cells[mLinha,01] := 'TOTAL DO CLIENTE ';
                mPlanilha.Cells[mLinha,01].HorizontalAlignment := 1;
                mPlanilha.Range['A3','G3'].VerticalAlignment   := 2;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 8;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';

                mTotalClienteB := 0;
                mTotalClienteG := 0;

                Inc(mLinha,1);
                If not tProcessos.Eof then begin
                   mCliente := tProcessos.FieldByName('Cliente').AsString;
                   mPlanilha.Cells[mLinha,01] := tProcessos.FieldByName('Cliente').AsString;
                   mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color      := $0071B8FF;
                   mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Font.Bold           := true;
                   mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Mergecells          := True;
                   mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;
                End;
             End;
             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       mPlanilha.Cells[mLinha,02] := mTotalGeralB;
       mPlanilha.Cells[mLinha,07] := mTotalGeralG;

       mPlanilha.Cells[mLinha,01] := 'TOTAL GERAL ';
       mPlanilha.Cells[mLinha,01].HorizontalAlignment := 1;
       mPlanilha.Range['A3','G3'].VerticalAlignment   := 2;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size         := 8;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';

       mPlanilha.Columns.Autofit;

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','A1'].Font.Size  := 14;
       mPlanilha.Range['A1','A1'].Font.Bold  := true;
       mPlanilha.Range['A1','G1'].Mergecells := True;
       mPlanilha.Range['A1','G1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Demonstrativo da Taxa Financeira';
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','G2'].Mergecells := True;
       mPlanilha.Range['A2','G2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


end.
