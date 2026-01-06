unit frmImpressao_ProcessosOP_ContratoCambio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDBPipe, DB, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ComObj, Funcoes,
  Vcl.StdCtrls, Vcl.ExtCtrls, ppReport, DBAccess, MSAccess, Mask, RxLookup, RXCtrls, IniFiles,
  RxToolEdit, ppDB, ppParameter, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd, MemDS;

type
  TImpressao_ProcessosOP_ContratoCambio = class(TForm)
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
    tContratos: TMSQuery;
    rContratos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape4: TppShape;
    ppLabel6: TppLabel;
    ppShape5: TppShape;
    ppLabel10: TppLabel;
    ppShape8: TppShape;
    ppLabel14: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine10: TppLine;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine3: TppLine;
    ppDBCalc9: TppDBCalc;
    dstContratos: TDataSource;
    pEmpresas: TppDBPipeline;
    pContratos: TppDBPipeline;
    cSituacao: TRadioGroup;
    StaticText2: TStaticText;
    cExportador: TRxDBLookupCombo;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    lFaixa: TppShape;
    ppDBText1: TppDBText;
    ppShape11: TppShape;
    ppLabel7: TppLabel;
    ppDBText12: TppDBText;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppDBText8: TppDBText;
    ppShape6: TppShape;
    ppLabel8: TppLabel;
    ppDBText10: TppDBText;
    ppShape13: TppShape;
    ppLabel12: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape10: TppShape;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel13: TppLabel;
    ppLine4: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    StaticText3: TStaticText;
    cContrato: TRxDBLookupCombo;
    tListaContratos: TMSQuery;
    dstListaContratos: TDataSource;
    tListaContratosNumero: TStringField;
    tListaContratosNome: TStringField;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine5: TppLine;
    cTotalContrato: TCheckBox;
    ppDBText2: TppDBText;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    ppShape7: TppShape;
    ppLabel9: TppLabel;
    ppDBText5: TppDBText;
    ppShape9: TppShape;
    ppLabel11: TppLabel;
    ppShape12: TppShape;
    ppLabel15: TppLabel;
    ppDBText13: TppDBText;
    ppShape14: TppShape;
    ppLabel16: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_ContratoCambio: TImpressao_ProcessosOP_ContratoCambio;

implementation

uses frmDados, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_ProcessosOP_ContratoCambio.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_ProcessosOP_ContratoCambio.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_ContratoCambio.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_PROCESSOS_P09', 'DataIni'         , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_PROCESSOS_P09', 'DataFim'         , cDataFim.Date);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P09', 'Processo'        , cProcesso.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P09', 'Contrato'        , cContrato.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P09', 'Cliente'         , cCliente.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P09', 'Exportador'      , cExportador.Text);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P09', 'Zebrado'         , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P09', 'TotalContrato'   , cTotalContrato.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P09', 'Excel'           , cExcel.Checked);
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P09', 'Situacao'        , cSituacao.ItemIndex);
      //aINI.WriteInteger('IMPRESSAO_PROCESSOS_P09', 'SituacaoContrato', cSituacaoContrato.ItemIndex);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_ProcessosOP_ContratoCambio.Release;
      Impressao_ProcessosOP_ContratoCambio := nil;
end;

procedure TImpressao_ProcessosOP_ContratoCambio.bLimparClick(Sender: TObject);
begin
      cProcesso.ClearValue;
      cCliente.ClearValue;
      cExportador.ClearValue;
      cDataIni.Clear;
      cDataFim.Clear;
      cSituacao.ItemIndex := 3; 
      //cSituacaoContrato.ItemIndex := 2; 
end;

procedure TImpressao_ProcessosOP_ContratoCambio.FormShow(Sender: TObject);
var
   aINI: TIniFile;
begin
      With Dados do begin
           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE Codigo IN(SELECT DISTINCT Cliente FROM ProcessosDocumentos) ORDER BY Nome');
           Clientes.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE Codigo IN(SELECT DISTINCT Exportador FROM ContratoCambio) ORDER BY Nome');
           Fornecedores.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE Processo IN((SELECT DISTINCT Processo FROM ContratoCambioItens)) ORDER BY Processo ');
           ProcessosDOC.Open;

           tListaContratos.SQL.Clear;
           tListaContratos.SQL.Add('SELECT DISTINCT Numero,');
           tListaContratos.SQL.Add('      (SELECT Nome FROM Fornecedores WHERE(Codigo = Exportador)) AS Nome');
           tListaContratos.SQL.Add('FROM ContratoCambio');
           tListaContratos.SQL.Add('ORDER BY Numero');
           tListaContratos.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                        := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date               := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_P09', 'DataIni'      , Date);
      cDataFim.Date               := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_P09', 'DataFim'      , Date);
      cProcesso.KeyValue          := aINI.ReadString ('IMPRESSAO_PROCESSOS_P09', 'Processo'     , '');
      cContrato.KeyValue          := aINI.ReadString ('IMPRESSAO_PROCESSOS_P09', 'Contrato'     , '');
      cCliente.DisplayValue       := aINI.ReadString ('IMPRESSAO_PROCESSOS_P09', 'Cliente'      , '');
      cExportador.DisplayValue    := aINI.ReadString ('IMPRESSAO_PROCESSOS_P09', 'Exportador'   , '');
      cZebrado.Checked            := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P09', 'Zebrado'      , false);
      cExcel.Checked              := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P09', 'Excel'        , false);
      cTotalContrato.Checked      := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P09', 'TotalContrato', false);
      cSituacao.ItemIndex         := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P09', 'Situacao'     , 3);
      aINI.Free;
end;

procedure TImpressao_ProcessosOP_ContratoCambio.bImprimirClick(Sender: TObject);
begin
      tContratos.SQL.Clear;
      tContratos.SQL.Add('SELECT CI.Processo,');
      tContratos.SQL.Add('       (SELECT Nome          FROM Fornecedores        WHERE(Codigo = (SELECT Exportador FROM ContratoCambio     WHERE(Numero = CI.Contrato)) )) AS Exportador,');
      tContratos.SQL.Add('       (SELECT Nome          FROM Clientes            WHERE(Codigo = (SELECT Cliente    FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = CI.Processo)))) AS Cliente,');
      tContratos.SQL.Add('       (SELECT Numero_Fatura FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = CI.Processo)) AS Numero_Fatura,');
      tContratos.SQL.Add('       ISNULL((SELECT Valor_FaturaME FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = CI.Processo)),0) AS Valor_FaturaME,');
      tContratos.SQL.Add('       CI.Contrato AS Contrato_Cambio,');
      tContratos.SQL.Add('       Data_Pagamento = CASE WHEN (SELECT ISNULL(FINIMP, 0) FROM ContratoCambio WHERE Numero = Contrato) = 0 THEN');
      tContratos.SQL.Add('                             ISNULL((SELECT MAX(Data) FROM PagarReceberBaixas PRB WHERE(PRB.Numero = CI.Financeiro_Lancamento)), NULL)');
      tContratos.SQL.Add('                        ELSE');
      tContratos.SQL.Add('                             (SELECT Data_Vencimento FROM ContratoCambio WHERE Numero = Contrato)');
      tContratos.SQL.Add('                        END,');
      tContratos.SQL.Add('       CI.Taxa_Cambial,');
      tContratos.SQL.Add('       CI.Valor_ME,');
      tContratos.SQL.Add('       (CI.Valor_ME * CI.Taxa_Cambial) AS Valor_Real,');
      tContratos.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.Recursos WHERE(Codigo = (SELECT Recursos FROM ContratoCambio WHERE(Numero = CI.Contrato)))) AS Origem_Recurso,');
      tContratos.SQL.Add('       Taxa_Fechamento  = (SELECT Taxa_FechamentoCambio FROM PagarReceberBaixas PRB WHERE PRB.Numero = CI.Financeiro_Lancamento),');
      tContratos.SQL.Add('       Valor_Fechamento = (SELECT Valor FROM PagarReceberBaixas PRB WHERE PRB.Numero = CI.Financeiro_Lancamento),');
      tContratos.SQL.Add('       Valor_Variacao   = (SELECT Valor FROM PagarReceberBaixas PRB WHERE PRB.Numero = CI.Financeiro_Lancamento) - (CI.Valor_ME * CI.Taxa_Cambial),');
      tContratos.SQL.Add('       Banco_Exportador = (SELECT Banco_Nome  FROM Fornecedores WHERE(Codigo = (SELECT Exportador FROM ContratoCambio WHERE(Numero = CI.Contrato)) )),');
      tContratos.SQL.Add('       Conta_Exportador = (SELECT Banco_Conta FROM Fornecedores WHERE(Codigo = (SELECT Exportador FROM ContratoCambio WHERE(Numero = CI.Contrato)) )),');
      tContratos.SQL.Add('       Swift            = (SELECT Swift_Code  FROM Fornecedores WHERE(Codigo = (SELECT Exportador FROM ContratoCambio WHERE(Numero = CI.Contrato)) )),');
      tContratos.SQL.Add('       IBAN             = (SELECT IBAN        FROM Fornecedores WHERE(Codigo = (SELECT Exportador FROM ContratoCambio WHERE(Numero = CI.Contrato)) ))');
      tContratos.SQL.Add('FROM   ContratoCambioItens CI');
      tContratos.SQL.Add('WHERE  (CI.Contrato IS NOT NULL)');
      // Abertos.
      If cSituacao.ItemIndex = 0 then begin
         tContratos.SQL.Add('      AND (SELECT Processo_Fechamento FROM ProcessosDocumentos AS PD WHERE(PD.Processo = CI.Processo)) IS NULL ');
      End;
      // Fechados.
      If cSituacao.ItemIndex = 1 then begin
         tContratos.SQL.Add('      AND (SELECT Processo_Fechamento FROM ProcessosDocumentos AS PD WHERE(PD.Processo = CI.Processo)) IS NOT NULL ');
      End;
      // Encerrados.
      If cSituacao.ItemIndex = 2 then begin
         tContratos.SQL.Add('      AND (SELECT Data_Encerramento FROM ProcessosDocumentos AS PD WHERE(PD.Processo = CI.Processo)) IS NOT NULL ');
      End;
      If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
         tContratos.SQL.Add('      AND ((SELECT Data FROM ContratoCambio WHERE(Numero = CI.Contrato)) BETWEEN :pDataIni AND :pDataFim)');
         tContratos.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tContratos.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;
      If Trim(cProcesso.Text) <> '' then begin
         tContratos.SQL.Add('      AND (CI.Processo = :pProcesso)');
         tContratos.ParamByName('pProcesso').AsString := cProcesso.Text;
      End;
      If Trim(cContrato.Text) <> '' then begin
         tContratos.SQL.Add('      AND (CI.Contrato = :pContrato)');
         tContratos.ParamByName('pContrato').AsString := cContrato.Text;
      End;
      If Trim(cCliente.Text) <> '' then begin
         tContratos.SQL.Add('      AND (SELECT DISTINCT Cliente FROM ProcessosDocumentos AS PD WHERE(PD.Processo = CI.Processo)) = :pCliente ');
         tContratos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
      End;
      If Trim(cExportador.Text) <> '' then begin
         tContratos.SQL.Add('      AND ((SELECT Exportador FROM ContratoCambio WHERE(Numero = CI.Contrato)) = :pExportador)');
         tContratos.ParamByName('pExportador').AsInteger := Dados.FornecedoresCodigo.AsInteger;
      End;
      tContratos.SQL.Add('ORDER  BY Cliente, Contrato_Cambio, Processo ');
      //tContratos.SQL.SaveToFile('c:\temp\ContratoCambio.SQL');
      tContratos.Open;

      Dados.Empresas.Open;

      If tContratos.RecordCount = 0 then begin
         ShowMessage('Não há informações para o relatório solicitado!');
         Abort;
      End;
      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         rContratos.Print;
         rContratos.FreeOnRelease;
         rContratos.Reset;
      end else begin
         ExportaEXCEL;
      End;
end;

procedure TImpressao_ProcessosOP_ContratoCambio.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then
         lFaixa.Visible := not lFaixa.Visible
      else
         lFaixa.Visible := False;
end;

// Envia informações para o excel.
procedure TImpressao_ProcessosOP_ContratoCambio.ExportaEXCEL;
var
   mPlanilha      : Variant;
   mLinha         : Integer;
   mZebra         : Boolean;
   mCliente       : String;
   mContrato      : String;
   mProcesso      : String;
   mTotalClienteH,
   mTotalClienteI,
   mTotalGeralH,
   mTotalGeralI,
   mTotalContratoH,
   mTotalContratoI,
   mTotalGeralK,
   mTotalGeralL,
   mTotalClienteK,
   mTotalClienteL,
   mTotalContratoK,
   mTotalContratoL: Real;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tContratos.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','M3'].Interior.Color    := clMoneyGreen;
       mPlanilha.Range['A3','M3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','M3'].Font.Bold         := true;
       mPlanilha.Range['A3','M3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','M3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','M3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','M3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'CONTRATO';
       mPlanilha.Cells[3,02] := 'PROCESSO';
       mPlanilha.Cells[3,03] := 'CLIENTE';
       mPlanilha.Cells[3,04] := 'EXPORTADOR';
       mPlanilha.Cells[3,05] := 'INVOICE';
       mPlanilha.Cells[3,06] := 'DT. PGTO.';
       mPlanilha.Cells[3,07] := 'TAXA CAMBIO';
       mPlanilha.Cells[3,08] := 'VALOR CAMBIO (ME)';
       mPlanilha.Cells[3,09] := 'VALOR CAMBIO (R$)';
       mPlanilha.Cells[3,10] := 'TAXA FECH.';
       mPlanilha.Cells[3,11] := 'VALOR FECH (R$)';
       mPlanilha.Cells[3,12] := 'VARIAÇÃO (R$)';
       mPlanilha.Cells[3,13] := 'CONTA EXP.';

       mPlanilha.Range['A3','M3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','M3'].VerticalAlignment   := 3;
       mPlanilha.Range['A3','M3'].Font.Size           := 8;

       mLinha    := 4;
       mZebra    := false;
       mCliente  := tContratos.FieldByName('Cliente').AsString;
       mProcesso := tContratos.FieldByName('Processo').AsString;
       mContrato := tContratos.FieldByName('Contrato_Cambio').AsString;

       mTotalClienteH  := 0;
       mTotalClienteI  := 0;
       mTotalGeralH    := 0;
       mTotalGeralI    := 0;
       mTotalContratoH := 0;
       mTotalContratoI := 0;
       mTotalGeralK    := 0;
       mTotalGeralL    := 0;
       mTotalContratoK := 0;
       mTotalContratoL := 0;

       While (not tContratos.Eof) and (not Funcoes.Cancelado) do begin
             // Linhas em torno dos itens.
             mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Size         := 8;
             mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.LineStyle := 1;
             mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
             mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Color     := clGray;
             mPlanilha.Range['J'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color    := RGB(198, 241, 254);

             mPlanilha.Cells[mLinha,01] := tContratos.FieldByName('Contrato_Cambio').AsString;
             mPlanilha.Cells[mLinha,02] := tContratos.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,03] := tContratos.FieldByName('Cliente').AsString;
             mPlanilha.Cells[mLinha,04] := tContratos.FieldByName('Exportador').AsString;
             mPlanilha.Cells[mLinha,05] := tContratos.FieldByName('Numero_Fatura').AsString;
             mPlanilha.Cells[mLinha,06] := tContratos.FieldByName('Data_Pagamento').Value;
             mPlanilha.Cells[mLinha,07] := tContratos.FieldByName('Taxa_Cambial').AsFloat;
             mPlanilha.Cells[mLinha,08] := tContratos.FieldByName('Valor_ME').AsCurrency;
             mPlanilha.Cells[mLinha,09] := tContratos.FieldByName('Valor_Real').AsCurrency;
             mPlanilha.Cells[mLinha,10] := tContratos.FieldByName('Taxa_Fechamento').AsFloat;
             mPlanilha.Cells[mLinha,11] := tContratos.FieldByName('Valor_Fechamento').AsCurrency;
             mPlanilha.Cells[mLinha,12] := tContratos.FieldByName('Valor_Variacao').AsCurrency;
             mPlanilha.Cells[mLinha,13] := tContratos.FieldByName('Conta_Exportador').AsString;

             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,0000;(#.##0,0000)';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00;(#.##0,00)';
             mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00;(#.##0,00)';
             mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,0000;(#.##0,0000)';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00;(#.##0,00)';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00;(#.##0,00)';

             mTotalClienteH  := mTotalClienteH  + tContratos.FieldByName('Valor_ME').AsCurrency;
             mTotalClienteI  := mTotalClienteI  + tContratos.FieldByName('Valor_Real').AsCurrency;
             mTotalContratoH := mTotalContratoH + tContratos.FieldByName('Valor_ME').AsCurrency;
             mTotalContratoI := mTotalContratoI + tContratos.FieldByName('Valor_Real').AsCurrency;
             mTotalGeralH    := mTotalGeralH    + tContratos.FieldByName('Valor_ME').AsCurrency;
             mTotalGeralI    := mTotalGeralI    + tContratos.FieldByName('Valor_Real').AsCurrency;
             mTotalClienteK  := mTotalClienteK  + tContratos.FieldByName('Valor_Fechamento').AsCurrency;
             mTotalClienteL  := mTotalClienteL  + tContratos.FieldByName('Valor_Variacao').AsCurrency;
             mTotalContratoK := mTotalContratoK + tContratos.FieldByName('Valor_Fechamento').AsCurrency;
             mTotalContratoL := mTotalContratoL + tContratos.FieldByName('Valor_Variacao').AsCurrency;
             mTotalGeralK    := mTotalGeralK    + tContratos.FieldByName('Valor_Fechamento').AsCurrency;
             mTotalGeralL    := mTotalGeralL    + tContratos.FieldByName('Valor_Variacao').AsCurrency;

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;

             tContratos.Next;

             If not cTotalContrato.Checked then begin
                If (mContrato <> tContratos.FieldByName('Contrato_Cambio').AsString) or (tContratos.Eof) then begin
                   mZebra := not mZebra;
                   mContrato := tContratos.FieldByName('Contrato_Cambio').AsString;
                End;
             End;

             If (mCliente <> tContratos.FieldByName('Cliente').AsString) or (tContratos.Eof) then begin
                Inc(mLinha);

                mPlanilha.Cells[mLinha,08] := mTotalClienteH;
                mPlanilha.Cells[mLinha,09] := mTotalClienteI;
                mPlanilha.Cells[mLinha,11] := mTotalClienteK;
                mPlanilha.Cells[mLinha,12] := mTotalClienteL;

                mPlanilha.Cells[mLinha,03] := 'TOTAL DO CLIENTE ';
                mPlanilha.Cells[mLinha,03].HorizontalAlignment := 2;
                mPlanilha.Range['C3','M3'].VerticalAlignment   := 2;
                mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size         := 8;
                mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].VerticalAlignment := 2;

                mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00;(#.##0,00)';
                mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00;(#.##0,00)';
                mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00;(#.##0,00)';
                mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00;(#.##0,00)';

                mTotalClienteH := 0;
                mTotalClienteI := 0;
                mTotalClienteK := 0;
                mTotalClienteL := 0;

                Inc(mLinha,1);
                If not tContratos.Eof then begin
                   mCliente := tContratos.FieldByName('Cliente').AsString;
                End;
             End;

             If cTotalContrato.Checked then begin
                If (mContrato <> tContratos.FieldByName('Contrato_Cambio').AsString) or (tContratos.Eof) then begin
                   Inc(mLinha);

                   mPlanilha.Cells[mLinha,08] := mTotalContratoH;
                   mPlanilha.Cells[mLinha,09] := mTotalContratoI;
                   mPlanilha.Cells[mLinha,11] := mTotalContratoK;
                   mPlanilha.Cells[mLinha,12] := mTotalContratoL;

                   mPlanilha.Cells[mLinha,03] := 'TOTAL DO CONTRATO ';
                   mPlanilha.Cells[mLinha,03].HorizontalAlignment := 2;
                   mPlanilha.Range['C3','M3'].VerticalAlignment   := 2;
                   mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size         := 8;
                   mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].VerticalAlignment := 2;

                   mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                   mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Bold         := true;
                   mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                   mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                   mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                   mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00;(#.##0,00)';
                   mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00;(#.##0,00)';
                   mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00;(#.##0,00)';
                   mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00;(#.##0,00)';

                   mTotalContratoH := 0;
                   mTotalContratoI := 0;
                   mTotalContratoK := 0;
                   mTotalContratoL := 0;

                   Inc(mLinha,1);
                   If not tContratos.Eof then begin
                      mContrato := tContratos.FieldByName('Contrato_Cambio').AsString;
                   End;
                   mZebra := not mZebra;
                End;
             End;

             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       mPlanilha.Cells[mLinha,08] := mTotalGeralH;
       mPlanilha.Cells[mLinha,09] := mTotalGeralI;
       mPlanilha.Cells[mLinha,11] := mTotalGeralk;
       mPlanilha.Cells[mLinha,12] := mTotalGerall;

       mPlanilha.Cells[mLinha,03] := 'TOTAL GERAL ';
       mPlanilha.Cells[mLinha,03].HorizontalAlignment := 2;
       mPlanilha.Range['C3','M3'].VerticalAlignment   := 2;
       mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size         := 8;
       mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['C'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00;(#.##0,00)';
       mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00;(#.##0,00)';
       mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00;(#.##0,00)';
       mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00;(#.##0,00)';

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
       mPlanilha.Range['A1','M1'].Mergecells := True;
       mPlanilha.Range['A1','M1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Contratos de Câmbio';
       mPlanilha.Range['A2','A2'].Font.Size  := 12;
       mPlanilha.Range['A2','M2'].Mergecells := True;
       mPlanilha.Range['A2','M2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

end.
