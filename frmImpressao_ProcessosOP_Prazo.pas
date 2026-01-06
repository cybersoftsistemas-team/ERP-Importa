unit frmImpressao_ProcessosOP_Prazo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RxLookup, Funcoes,
  RXCtrls, DB, DBAccess, MSAccess, ppBands, ppCtrls, ppVar, ppPrnabl, ppReport, ppDBPipe,
  ComObj, INIFiles, MaskUtils, Mask, RxToolEdit, ppDB, ppParameter, ppDesignLayer, ppClass, ppCache, ppComm, ppRelatv, ppProd, MemDS;

type
  TImpressao_ProcessosOP_Prazo = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText2: TStaticText;
    StaticText5: TStaticText;
    cModalidade: TRxDBLookupCombo;
    cCliente: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cProcesso: TRxDBLookupCombo;
    cZebrado: TCheckBox;
    cExcel: TCheckBox;
    cSituacao: TRadioGroup;
    tProcessos: TMSQuery;
    rProcessosPrazos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    ppShape12: TppShape;
    ppLabel15: TppLabel;
    ppShape14: TppShape;
    ppLabel16: TppLabel;
    ppShape7: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppLine9: TppLine;
    dstProcessos: TDataSource;
    pEmpresas: TppDBPipeline;
    pProcessos: TppDBPipeline;
    ppDBText1: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppShape4: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppShape5: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText6: TppDBText;
    ppShape6: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText7: TppDBText;
    ppSystemVariable6: TppSystemVariable;
    ppLine10: TppLine;
    ppShape8: TppShape;
    ppLabel14: TppLabel;
    ppDBText8: TppDBText;
    ppShape9: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText10: TppDBText;
    lFaixa: TppShape;
    lFiltro: TppLabel;
    cDataIni: TDateEdit;
    StaticText8: TStaticText;
    cDataFim: TDateEdit;
    StaticText10: TStaticText;
    cFechamento: TRadioGroup;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_Prazo: TImpressao_ProcessosOP_Prazo;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Prazo.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_ProcessosOP_Prazo.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_PROCESSOS_P07', 'DataIni'    , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_PROCESSOS_P07', 'DataFim'    , cDataFim.Date);
      aINI.WriteInteger('IMPRESSAO_PROCESSOS_P07', 'Situacao'   , cSituacao.ItemIndex);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P07', 'Processo'   , cProcesso.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P07', 'Modalidade' , cModalidade.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P07', 'Cliente'    , cCliente.Text);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P07', 'Zebrado'    , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P07', 'Excel'      , cExcel.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_ProcessosOP_Prazo.Release;
      Impressao_ProcessosOP_Prazo := nil;
end;

procedure TImpressao_ProcessosOP_Prazo.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Prazo.FormShow(Sender: TObject);
var
   aINI : TIniFile;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
           TiposProcesso.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo IN (SELECT DISTINCT Cliente FROM ProcessosDocumentos WHERE(Cliente IS NOT NULL)))');
           Clientes.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE Processo IN((SELECT Processo FROM ProcessosFechamento))');
           ProcessosDOC.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;
      Screen.Cursor := crDefault;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                     := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date            := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_P07', 'DataIni'    , Date);
      cDataFim.Date            := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_P07', 'DataFim'    , Date);
      cSituacao.ItemIndex      := aINI.ReadInteger('IMPRESSAO_PROCESSOS_P07', 'Situacao'   , 4);
      cProcesso.KeyValue       := aINI.ReadString ('IMPRESSAO_PROCESSOS_P07', 'Processo'   , '');
      cModalidade.DisplayValue := aINI.ReadString ('IMPRESSAO_PROCESSOS_P07', 'Modalidade' , '');
      cCliente.DisplayValue    := aINI.ReadString ('IMPRESSAO_PROCESSOS_P07', 'Cliente'    , '');
      cZebrado.Checked         := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P07', 'Zebrado'    , false);
      cExcel.Checked           := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P07', 'Excel'      , false);
      aINI.Free;
end;

procedure TImpressao_ProcessosOP_Prazo.bImprimirClick(Sender: TObject);
begin
      tProcessos.SQL.Clear;
      tProcessos.SQL.Add('SELECT Processo,');
      tProcessos.SQL.Add('       Numero_Declaracao,');
      tProcessos.SQL.Add('       Cliente,');
      tProcessos.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = PD.Cliente)) AS Cliente_Nome,');
      tProcessos.SQL.Add('       Processo_Abertura AS Data_Abertura,');
      tProcessos.SQL.Add('       Data_RegistroDeclaracao AS Data_Registro,');
      tProcessos.SQL.Add('       Data_Encerramento,');
      tProcessos.SQL.Add('       Processo_Fechamento AS Data_Fechamento,');
      tProcessos.SQL.Add('       ISNULL(DATEDIFF(Day, Data_RegistroDeclaracao, Processo_Abertura),0)  AS Dias_Abertura,');
      tProcessos.SQL.Add('       ISNULL(DATEDIFF(Day, Data_RegistroDeclaracao, Data_Encerramento ),0) AS Dias_Encerramento,');
      tProcessos.SQL.Add('       ISNULL(DATEDIFF(Day, Data_Encerramento, Processo_Fechamento),0)      AS Dias_Fechamento,');
      tProcessos.SQL.Add('       (SELECT CAST(Observacao AS VARCHAR(120)) FROM ProcessosFechamento PF WHERE(PF.Processo = PD.Processo)) AS Observacao');
      tProcessos.SQL.Add('FROM   ProcessosDocumentos PD');
      tProcessos.SQL.Add('WHERE  (PD.Processo IS NOT NULL)');

      lFiltro.Caption := '';
      If cSituacao.ItemIndex = 0 then begin
         tProcessos.SQL.Add('AND (Data_RegistroDeclaracao BETWEEN :pDataIni AND :pDataFim)');
         lFiltro.Caption := 'Processos Registrados';
      End;
      If cSituacao.ItemIndex = 1 then begin
         tProcessos.SQL.Add('AND (Processo_Fechamento IS NULL) AND (Data_RegistroDeclaracao BETWEEN :pDataIni AND :pDataFim)');
         lFiltro.Caption := 'Processos Abertos';
      End;
      If cSituacao.ItemIndex = 2 then begin
         tProcessos.SQL.Add('AND (Processo_Fechamento BETWEEN :pDataIni AND :pDataFim)');
         lFiltro.Caption := 'Processos Fechados';
      End;
      If cSituacao.ItemIndex = 3 then begin
         tProcessos.SQL.Add('AND (Data_Encerramento BETWEEN :pDataIni AND :pDataFim)');
         lFiltro.Caption := 'Processos Encerrados';
      End;
      If cSituacao.ItemIndex = 4 then begin
         tProcessos.SQL.Add('AND (Data_RegistroDeclaracao BETWEEN :pDataIni AND :pDataFim)');
         lFiltro.Caption := 'Todos';
      End;
      If cFechamento.ItemIndex = 0 then begin
         tProcessos.SQL.Add('AND ((SELECT Fechamento_Provisorio FROM ProcessosFechamento PF WHERE(PF.Processo = PD.Processo)) = 0)');
         lFiltro.Caption := lFiltro.Caption + '/Fechamentos Definitivos';
      End;
      If cFechamento.ItemIndex = 1 then begin
         tProcessos.SQL.Add('AND ((SELECT Fechamento_Provisorio FROM ProcessosFechamento PF WHERE(PF.Processo = PD.Processo)) = 1)');
         lFiltro.Caption := lFiltro.Caption + '/Fechamentos Provisórios'
      End;
      If cFechamento.ItemIndex = 2 then begin
         lFiltro.Caption := lFiltro.Caption + '/Fechamentos Provisórios e Definitivos'
      End;

      If Trim(cProcesso.Text) <> '' then begin
         tProcessos.SQL.Add('AND (Processo = :pProcesso)');
         tProcessos.ParamByName('pProcesso').AsString := cProcesso.Text;
         lFiltro.Caption := lFiltro.Caption + ' / '+cProcesso.Text;
      End;
      If Trim(cModalidade.Text) <> '' then begin
         tProcessos.SQL.Add('AND (Modalidade_Importacao = :pModalidade)');
         tProcessos.ParamByName('pModalidade').AsInteger := Dados.TiposProcessoCodigo.AsInteger;
         lFiltro.Caption := lFiltro.Caption + ' / '+cModalidade.Text;
      End;
      If Trim(cCliente.Text) <> '' then begin
         tProcessos.SQL.Add('AND (Cliente = :pCliente)');
         tProcessos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
         lFiltro.Caption := lFiltro.Caption + ' / '+cCliente.Text;
      End;
      lFiltro.Caption := lFiltro.Caption + ' ';

      tProcessos.SQL.Add('ORDER  BY Data_Abertura, Data_DesembaracoDeclaracao, Data_Encerramento, Data_Fechamento');
      tProcessos.ParamByName('pDataIni').AsDate := cDataIni.Date;
      tProcessos.ParamByName('pDataFim').AsDate := cDataFim.Date;

      tProcessos.Open;

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rProcessosPrazos.Print;
         rProcessosPrazos.FreeOnRelease;
         rProcessosPrazos.Reset;
      end else begin
         ExportaEXCEL;
      End;
end;

procedure TImpressao_ProcessosOP_Prazo.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then
         lFaixa.Visible := not lFaixa.Visible
      else
         lFaixa.Visible := False;
end;

procedure TImpressao_ProcessosOP_Prazo.bLimparClick(Sender: TObject);
begin
      cProcesso.ClearValue;
      cModalidade.ClearValue;
      cCliente.ClearValue;
      cSituacao.ItemIndex := 4;
end;

// Envia informações para o excel.
procedure TImpressao_ProcessosOP_Prazo.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
   mZebra   : Boolean;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tProcessos.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','K3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','K3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','K3'].Font.Bold         := true;
       mPlanilha.Range['A3','K3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','K3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','K3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','K3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'PROCESSO';
       mPlanilha.Cells[3,02] := 'Nº DI';
       mPlanilha.Cells[3,03] := 'CLIENTE';
       mPlanilha.Cells[3,04] := 'ABERTURA';
       mPlanilha.Cells[3,05] := 'DI';
       mPlanilha.Cells[3,06] := 'ENCERRAMENTO';
       mPlanilha.Cells[3,07] := 'FECHAMENTO';
       mPlanilha.Cells[3,08] := 'ABER / REG';
       mPlanilha.Cells[3,09] := 'REG / ENC';
       mPlanilha.Cells[3,10] := 'ENC / FECH';
       mPlanilha.Cells[3,11] := 'OBSERVAÇÃO';

       mPlanilha.Range['A3','K3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','K3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','K3'].Font.Size           := 8;

       mLinha := 4;
       mZebra := false;

       While (not tProcessos.Eof) and (not Funcoes.Cancelado) do begin
             mPlanilha.Range['A'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Font.Size           := 8;
             mPlanilha.Range['D'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;

             mPlanilha.Cells[mLinha,01] := tProcessos.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,02] := FormatMaskText('##/#######-#;0; ', tProcessos.FieldByName('Numero_Declaracao').AsString);
             mPlanilha.Cells[mLinha,03] := tProcessos.FieldByName('Cliente_Nome').AsString;
             mPlanilha.Cells[mLinha,04] := tProcessos.FieldByName('Data_Abertura').Value;
             mPlanilha.Cells[mLinha,05] := tProcessos.FieldByName('Data_Registro').Value;
             mPlanilha.Cells[mLinha,06] := tProcessos.FieldByName('Data_Encerramento').Value;
             mPlanilha.Cells[mLinha,07] := tProcessos.FieldByName('Data_Fechamento').Value;
             mPlanilha.Cells[mLinha,08] := tProcessos.FieldByName('Dias_Abertura').AsInteger;
             mPlanilha.Cells[mLinha,09] := tProcessos.FieldByName('Dias_Encerramento').AsInteger;
             mPlanilha.Cells[mLinha,10] := tProcessos.FieldByName('Dias_Fechamento').AsInteger;
             mPlanilha.Cells[mLinha,11] := tProcessos.FieldByName('Observacao').AsString;

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             tProcessos.Next;
             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

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
       mPlanilha.Range['A1','K1'].Mergecells := True;
       mPlanilha.Range['A1','K1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Prazos dos Processos :'+lFiltro.Text;
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','K2'].Mergecells := True;
       mPlanilha.Range['A2','K2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


end.
