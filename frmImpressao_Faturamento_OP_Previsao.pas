unit frmImpressao_Faturamento_OP_Previsao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, ppDBPipe, ppParameter,
  ppBands, ppVar, ppCtrls, ppPrnabl, ppReport, RxLookup, Vcl.StdCtrls,
  Vcl.ExtCtrls, Mask, RXCtrls, Funcoes, INIFiles, ComObj, Maskutils,
  RxCurrEdit, RxToolEdit, MemDS, ppDB, ppDesignLayer, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_Faturamento_OP_Previsao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cZebrado: TCheckBox;
    cProcesso: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cCliente: TRxDBLookupCombo;
    lCliFor: TStaticText;
    cExcel: TCheckBox;
    rPrevisao: TppReport;
    ppParameterList1: TppParameterList;
    pEmpresas: TppDBPipeline;
    pProcessos: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape4: TppShape;
    ppShape1: TppShape;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    ppLabel2: TppLabel;
    lPeriodo: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppShape7: TppShape;
    ppLabel6: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppShape16: TppShape;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    lFaixa: TppShape;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText13: TppDBText;
    ppDBText18: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText1: TppDBText;
    tProcessos: TMSQuery;
    dstProcessos: TDataSource;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape5: TppShape;
    ppLabel7: TppLabel;
    ppShape6: TppShape;
    ppLabel10: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel12: TppLabel;
    ppShape10: TppShape;
    bLimpar: TButton;
    cLocal: TRxDBLookupCombo;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    cTaxa: TCurrencyEdit;
    ppShape11: TppShape;
    ppLabel13: TppLabel;
    ppDBText7: TppDBText;
    ppShape12: TppShape;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppShape13: TppShape;
    ppLabel15: TppLabel;
    ppDBText14: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppShape14: TppShape;
    ppLabel17: TppLabel;
    ppShape15: TppShape;
    ppLabel4: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    cDA: TCheckBox;
    cAdmissao: TCheckBox;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
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
  Impressao_Faturamento_OP_Previsao: TImpressao_Faturamento_OP_Previsao;

implementation

uses frmDados, frmDMFiscal, frmDMContab, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_Faturamento_OP_Previsao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Faturamento_OP_Previsao.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Faturamento_OP_Previsao.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_PREVISAO', 'DataIni'  , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FATURAMENTO_PREVISAO', 'DataFim'  , cDataFim.Date );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Processo' , cProcesso.Text );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Cliente'  , cCliente.Text );
      aINI.WriteString ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Local'    , cLocal.Text );
      aINI.WriteFloat  ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Taxa'     , cTaxa.Value );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Zebrado'  , cZebrado.Checked );
      aINI.WriteBool   ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Excel'    , cExcel.Checked );
      aINI.Free;

      //Fecha o Excel
//      //If cExcel.Checked = true then KillTask('Excel.exe');

      FecharTabelas(Dados, dmFiscal, dmContab, nil);

      Impressao_Faturamento_OP_Previsao.Release;
      Impressao_Faturamento_OP_Previsao := nil;
end;

procedure TImpressao_Faturamento_OP_Previsao.bImprimirClick(Sender: TObject);
begin
       tProcessos.SQL.Clear;
       tProcessos.SQL.Add('SELECT Cliente,');
       tProcessos.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = Cliente)) AS Cliente_Nome,');
       tProcessos.SQL.Add('       Processo,');
       tProcessos.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.LocalDesembaraco WHERE(Codigo = Local_DesembaracoCodigo)) AS Local_Desembaraco,');
       tProcessos.SQL.Add('       ISNULL(Valor_FaturaME, 0) AS FOB_ME,');
       tProcessos.SQL.Add('       CASE WHEN :pTaxa > 0 THEN Valor_FaturaME * :pTaxa END AS FOB_Real,');
       tProcessos.SQL.Add('       Previsao_Chegada  = CASE WHEN CONVERT(VARCHAR(12), Navio_DataChegada      , 103) IS NOT NULL THEN CONVERT(VARCHAR(12), Navio_DataChegada      , 103) ELSE CONVERT(VARCHAR(12), Navio_DataPrevista, 103) END,');
       tProcessos.SQL.Add('       Data_PrevRegistro = CASE WHEN CONVERT(VARCHAR(12), Data_RegistroDeclaracao, 103) IS NOT NULL THEN CONVERT(VARCHAR(12), Data_RegistroDeclaracao, 103) ELSE CONVERT(VARCHAR(12), Data_PrevRegistro , 103) END,');
       tProcessos.SQL.Add('       ISNULL((SELECT Fator_SISCOMEX FROM Clientes WHERE(Codigo = Cliente)),0) AS Fator_SISCOMEX,');
       tProcessos.SQL.Add('       Fator_SISCOMEXValor AS Previsao_SiscomexME,');
       tProcessos.SQL.Add('       CASE WHEN :pTaxa = 0 THEN');
       tProcessos.SQL.Add('           ISNULL(Fator_SISCOMEXValor, 0) * ISNULL(Taxa_FOB,0) ');
       tProcessos.SQL.Add('       ELSE');
       tProcessos.SQL.Add('           ISNULL(Fator_SISCOMEXValor, 0) * :pTaxa ');
       tProcessos.SQL.Add('       END  AS Previsao_SiscomexReal,');
       tProcessos.SQL.Add('       Data_PrevFat = Data_PrevFaturamento,');
       tProcessos.SQL.Add('       Data_PrevFaturamento = LTRIM(RTRIM(CONVERT(VARCHAR(12), Data_PrevFaturamento, 103))),');
       tProcessos.SQL.Add('       ISNULL((SELECT Fator_Faturamento FROM Clientes WHERE(Codigo = Cliente)),0) AS Fator_Faturamento,');
       tProcessos.SQL.Add('       Fator_FaturamentoValor AS Previsao_FaturamentoME,');
       tProcessos.SQL.Add('       CASE WHEN :pTaxa = 0 THEN');
       tProcessos.SQL.Add('           ISNULL(Fator_FaturamentoValor, 0) * ISNULL(Taxa_FOB,0) ');
       tProcessos.SQL.Add('       ELSE');
       tProcessos.SQL.Add('           ISNULL(Fator_FaturamentoValor, 0) * :pTaxa ');
       tProcessos.SQL.Add('       END  AS Previsao_FaturamentoReal,');
       tProcessos.SQL.Add('       Numero_Declaracao');
       tProcessos.SQL.Add('FROM   ProcessosDocumentos');
       tProcessos.SQL.Add('WHERE(Data_PrevFaturamento BETWEEN :pDataIni AND :pDataFim) AND (Data_Encerramento IS NULL) AND (ISNULL(Desativado, 0) = 0)');
       tProcessos.ParamByName('pDataIni').AsDate := cDataIni.Date;
       tProcessos.ParamByName('pDataFim').AsDate := cDataFim.Date;
       tProcessos.ParamByName('pTaxa').AsFloat   := cTaxa.Value;

       If Trim(cProcesso.Text) <> '' then begin
          tProcessos.SQL.Add('AND (Processo = '+QuotedStr(cProcesso.Text)+')' );
       End;
       If Trim(cCliente.Text) <> '' then begin
          tProcessos.SQL.Add('AND (Cliente = '+QuotedStr(Dados.ClientesCodigo.AsString)+')' );
       End;
       If Trim(cLocal.Text) <> '' then begin
          tProcessos.SQL.Add('AND (Local_DesembaracoCodigo = '+QuotedStr(Dados.LocalDesembaracoCodigo.AsString)+')' );
       End;
       If cAdmissao.Checked = false then begin
          tProcessos.SQL.Add('AND (ISNULL(Admissao_Temporaria, 0) = 0)' );
       End;
       If cDA.Checked = false then begin
          tProcessos.SQL.Add('AND (ISNULL(DA, 0) = 0)' );
       End;

       tProcessos.SQL.Add('ORDER  BY Data_PrevFat, Processo');
       //tProcessos.SQL.SaveToFile('c:\temp\Previsao_Faturamento.txt');
       tProcessos.Open;

       lPeriodo.Caption := 'Período de '+cDataIni.Text+ ' á ' + cDataFim.Text;

       If cExcel.Checked = false then begin
          if FileExists(Dados.EmpresasLogo.Value) then begin
             iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
          end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
          rPrevisao.Print;
          rPrevisao.Reset;
       end else begin
          ExportaEXCEL;
       End;
end;

procedure TImpressao_Faturamento_OP_Previsao.FormShow(Sender: TObject);
var
    aINI : TIniFile;
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo IN(SELECT DISTINCT Cliente FROM ProcessosDocumentos))');
           Clientes.Open;

           LocalDesembaraco.SQL.Clear;
           LocalDesembaraco.SQL.Add('SELECT * FROM LocalDesembaraco ORDER BY Descricao');
           LocalDesembaraco.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                   := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date          := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_PREVISAO', 'DataIni'  , Date );
      cDataFim.Date          := aINI.ReadDate   ('IMPRESSAO_FATURAMENTO_PREVISAO', 'DataFim'  , Date );
      cProcesso.DisplayValue := aINI.ReadString ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Processo' , '' );
      cCliente.DisplayValue  := aINI.ReadString ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Cliente'  , '' );
      cLocal.DisplayValue    := aINI.ReadString ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Local'    , '' );
      cTaxa.Value            := aINI.ReadFloat  ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Taxa'     , 0 );
      cZebrado.Checked       := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Zebrado'  , false );
      cExcel.Checked         := aINI.ReadBool   ('IMPRESSAO_FATURAMENTO_PREVISAO', 'Excel'    , false );
      aINI.Free;

end;

procedure TImpressao_Faturamento_OP_Previsao.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then
         lFaixa.Visible := not lFaixa.Visible
      else
         lFaixa.Visible := False;
end;

procedure TImpressao_Faturamento_OP_Previsao.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cProcesso.ClearValue;
      cCliente.ClearValue;
      cEXCEL.Checked   := false;
      cZebrado.Checked := false;
end;

// Envia informações para o excel.
procedure TImpressao_Faturamento_OP_Previsao.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
   mTotalE   : Real;
   mTotalF   : Real;
   mTotalJ   : Real;
   mTotalK   : Real;
   mTotalN   : Real;
   mTotalO   : Real;
   mZebra    : Boolean;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tProcessos.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible                            := false;
       mPlanilha.Range['A3','O3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','O3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','O3'].Font.Bold         := true;
       mPlanilha.Range['A3','O3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','O3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','O3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','O3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'PROCESSO';
       mPlanilha.Cells[3,02] := 'DI';
       mPlanilha.Cells[3,03] := 'CLIENTE';
       mPlanilha.Cells[3,04] := 'LOCAL DE DESEMBARAÇO';
       mPlanilha.Cells[3,05] := 'INVOICE (ME)';
       mPlanilha.Cells[3,06] := 'INVOICE (R$)';
       mPlanilha.Cells[3,07] := 'PREV/CHEG';
       mPlanilha.Cells[3,08] := 'PREV/REG.DI';
       mPlanilha.Cells[3,09] := 'FATOR';
       mPlanilha.Cells[3,10] := 'PREV.SISCOMEX(ME)';
       mPlanilha.Cells[3,11] := 'PREV.SISCOMEX(R$)';
       mPlanilha.Cells[3,12] := 'PREV.FATUR.';
       mPlanilha.Cells[3,13] := 'FATOR';
       mPlanilha.Cells[3,14] := 'PREV.FATURAM.(ME)';
       mPlanilha.Cells[3,15] := 'PREV.FATURAM.(R$)';

       mPlanilha.Range['A3','O3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','O3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','O3'].Font.Size           := 8;

       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,01].Columns.ColumnWidth := 15;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,02].Columns.ColumnWidth := 11;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,03].Columns.ColumnWidth := 40;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,04].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,05].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,06].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,07].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,08].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,09].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,10].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,11].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,12].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,13].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,14].Columns.AutoFit;
       mPlanilha.WorkBooks[1].Sheets[1].Cells[3,15].Columns.AutoFit;

       mTotalE := 0;
       mTotalF := 0;
       mTotalJ := 0;
       mTotalK := 0;
       mTotalN := 0;
       mTotalO := 0;
       
       mLinha  := 4;
       mZebra  := false;
       
       While (not tProcessos.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Size := 8;

             mPlanilha.Cells[mLinha,01] := tProcessos.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,02] := FormatMaskText('##/#######-##;0; ', tProcessos.FieldByName('Numero_Declaracao').AsString);
             mPlanilha.Cells[mLinha,03] := tProcessos.FieldByName('Cliente_Nome').AsString;
             mPlanilha.Cells[mLinha,04] := tProcessos.FieldByName('Local_Desembaraco').AsString;
             mPlanilha.Cells[mLinha,05] := tProcessos.FieldByName('FOB_ME').Value;
             mPlanilha.Cells[mLinha,06] := tProcessos.FieldByName('FOB_Real').Value;
             mPlanilha.Cells[mLinha,07] := ''''+tProcessos.FieldByName('Previsao_Chegada').AsString;
             mPlanilha.Cells[mLinha,08] := ''''+tProcessos.FieldByName('Data_PrevRegistro').AsString;
             mPlanilha.Cells[mLinha,09] := tProcessos.FieldByName('Fator_SISCOMEX').Value;
             mPlanilha.Cells[mLinha,10] := tProcessos.FieldByName('Previsao_SISCOMEXME').Value;
             mPlanilha.Cells[mLinha,11] := tProcessos.FieldByName('Previsao_SISCOMEXReal').Value;
             mPlanilha.Cells[mLinha,12] := ''''+tProcessos.FieldByName('Data_PrevFaturamento').AsString;
             mPlanilha.Cells[mLinha,13] := tProcessos.FieldByName('Fator_Faturamento').Value;
             mPlanilha.Cells[mLinha,14] := tProcessos.FieldByName('Previsao_FaturamentoME').Value;
             mPlanilha.Cells[mLinha,15] := tProcessos.FieldByName('Previsao_FaturamentoReal').Value;

             mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,09].NumberFormat := '##0,0000_);(##0,0000)';
             mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,13].NumberFormat := '##0,0000_);(##0,0000)';
             mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';

             mTotalE := mTotalE + tProcessos.FieldByName('FOB_ME').AsCurrency;
             mTotalF := mTotalF + tProcessos.FieldByName('FOB_Real').AsCurrency;
             mTotalJ := mTotalJ + tProcessos.FieldByName('Previsao_SISCOMEXME').AsCurrency;
             mTotalK := mTotalK + tProcessos.FieldByName('Previsao_SISCOMEXReal').AsCurrency;
             mTotalN := mTotalN + tProcessos.FieldByName('Previsao_FaturamentoME').AsCurrency;
             mTotalO := mTotalO + tProcessos.FieldByName('Previsao_FaturamentoReal').AsCurrency;

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             tProcessos.Next;

             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Cells[mLinha,03] := 'T.GERAL';
       mPlanilha.Cells[mLinha,03].HorizontalAlignment := 3;
       mPlanilha.Range['C4','O4'].VerticalAlignment   := 2;
       mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Size         := 8;
       mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Cells[mLinha,05] := mTotalE;
       mPlanilha.Cells[mLinha,06] := mTotalF;
       mPlanilha.Cells[mLinha,10] := mTotalJ;
       mPlanilha.Cells[mLinha,11] := mTotalK;
       mPlanilha.Cells[mLinha,14] := mTotalN;
       mPlanilha.Cells[mLinha,15] := mTotalO;

       mPlanilha.Range['C'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
       mPlanilha.Range['C'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['C'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Borders.LineStyle := 1;
       mPlanilha.Range['C'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Borders.Weight    := 2;
       mPlanilha.Range['C'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','A1'].Font.Size  := 14;
       mPlanilha.Range['A1','A1'].Font.Bold  := true;
       mPlanilha.Range['A1','O1'].Mergecells := True;
       mPlanilha.Range['A1','O1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Previsão de Faturamento - Período de '+cDataIni.Text + ' á ' + cDataFim.Text;
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','O2'].Mergecells := True;
       mPlanilha.Range['A2','O2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;



end.
