unit frmImpressao_ContabeisOP_Balancete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDBPipe, ppParameter, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl,
  ppProd, ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, DB, DBAccess, MSAccess, INIFiles, DateUtils, Funcoes, MaskUtils, Mask, ppSubRpt, ppMemo, ComObj, RxLookup, Buttons, ppTypes, ShellApi, system.UITypes,
  MemDS, RxToolEdit, ppDB, ppDesignLayer, ppStrtch, ppCache, ppComm, ppRelatv, Vcl.WinXCtrls;

type
  TImpressao_ContabeisOP_Balancete = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    rBalancete: TppReport;
    ppParameterList1: TppParameterList;
    ppPlanoContas: TppDBPipeline;
    ppEmpresas: TppDBPipeline;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    tLanc: TMSQuery;
    StaticText3: TStaticText;
    cEmpresa: TRxDBLookupCombo;
    tEmpresas: TMSQuery;
    dstEmpresas: TDataSource;
    tEmpresasCodigo: TIntegerField;
    tEmpresasCNPJ: TStringField;
    tEmpresasRazao_Social: TStringField;
    tEmpresasNumero_Filial: TSmallintField;
    tEmpresasEstado: TStringField;
    bLimparEmpresa: TSpeedButton;
    tBalancete: TMSQuery;
    dstBalancete: TDataSource;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    GroupBox2: TGroupBox;
    cSalto: TToggleSwitch;
    cNegrito: TToggleSwitch;
    cMaiusculo: TToggleSwitch;
    cMovimento: TToggleSwitch;
    cSaldoZero: TToggleSwitch;
    cDadosDiretor: TToggleSwitch;
    cTotalGrupo: TToggleSwitch;
    cZebrado: TToggleSwitch;
    cDadosContador: TToggleSwitch;
    cDadosResponsavel: TToggleSwitch;
    cSintetico: TToggleSwitch;
    cExcel: TToggleSwitch;
    cDetalheBen: TRadioGroup;
    cDetalheProc: TRadioGroup;
    ppHeaderBand1: TppHeaderBand;
    lTitulo: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel1: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape6: TppShape;
    ppLabel5: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    lPeriodo: TppLabel;
    iLogo: TppImage;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine8: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    lDebito: TppDBText;
    lCredito: TppDBText;
    lItem: TppLabel;
    lSaldoAtual: TppDBText;
    lDC_Anterior: TppDBText;
    lDC_SaldoAtual: TppDBText;
    lAnterior: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine4: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    lTotaliza: TppMemo;
    bDadosDiretor: TppSubReport;
    ppChildReport1: TppChildReport;
    sOutrasInformacoes: TppTitleBand;
    lDiretor: TppMemo;
    ppLine7: TppLine;
    ppLabel9: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppGroup1: TppGroup;
    Grupo: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    bDadosResponsavel: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    bDadosContador: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppLine5: TppLine;
    lResponsavel: TppMemo;
    ppLabel10: TppLabel;
    lContador: TppMemo;
    ppLine6: TppLine;
    ppLabel11: TppLabel;
    tEmpresasBanco_Dados: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rBalanceteBeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ExportaEXCEL;
    procedure bLimparEmpresaClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mDataIni  : TDate;
    mDataFim  : TDate;
    mLinha    : Integer;
    mPagina   : Integer;
    mGrupo    : String;
    mNomeArq  : String;
    Arquivo   : TextFile;
    mCancelado: Boolean;
  end;

var
  Impressao_ContabeisOP_Balancete: TImpressao_ContabeisOP_Balancete;

implementation

uses frmDMContab, frmDados, frmJanela_Processamento, frmImpressao_Visualizar, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ContabeisOP_Balancete.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_ContabeisOP_Balancete.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Excel'            , iif(cExcel.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Salto'            , iif(cSalto.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Negrito'          , iif(cNegrito.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Maiusculo'        , iif(cMaiusculo.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Movimento'        , iif(cMovimento.state = tsson, true, false));
      aINI.WriteDate( 'IMPRESSAO_BALANCETE', 'DataIni'          , cDataIni.Date);
      aINI.WriteDate( 'IMPRESSAO_BALANCETE', 'DataFim'          , cDataFim.Date);
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'SaldoZero'        , iif(cSaldoZero.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Tipo'             , iif(cSintetico.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Total_Grupo'      , iif(cTotalGrupo.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Dados_Diretor'    , iif(cDadosDiretor.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Dados_Responsavel', iif(cDadosResponsavel.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Dados_Contador'   , iif(cDadosContador.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Zebrado'          , iif(cZebrado.state = tsson, true, false));
      aINI.WriteBool( 'IMPRESSAO_BALANCETE', 'Sintetico'        , iif(cSintetico.state = tsson, true, false));
      aINI.WriteInteger( 'IMPRESSAO_BALANCETE', 'DetalheBen'    , cDetalheBen.ItemIndex);
      aINI.WriteInteger( 'IMPRESSAO_BALANCETE', 'DetalheProc'   , cDetalheProc.ItemIndex);
      If cEmpresa.KeyValue > 0 then
         aINI.WriteInteger( 'IMPRESSAO_BALANCETE', 'Empresa', cEmpresa.KeyValue )
      else
         aINI.WriteInteger( 'IMPRESSAO_BALANCETE', 'Empresa', -1 );
      aINI.Free;

      LimpaMemoria;
      Impressao_ContabeisOP_Balancete.Release;
      Impressao_ContabeisOP_Balancete := nil;
end;

procedure TImpressao_ContabeisOP_Balancete.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cExcel.State            := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Excel'            , false), tsson, tssoff);
      cSalto.state            := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Salto'            , false), tsson, tssoff);
      cNegrito.state          := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Negrito'          , true ), tsson, tssoff);
      cMaiusculo.state        := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Maiusculo'        , false), tsson, tssoff);
      cMovimento.state        := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Movimento'        , false), tsson, tssoff);
      cSaldoZero.state        := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'SaldoZero'        , false), tsson, tssoff);
      cSintetico.state        := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Sintetico'        , false), tsson, tssoff);
      cTotalGrupo.state       := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Total_Grupo'      , false), tsson, tssoff);
      cDadosDiretor.state     := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Dados_Diretor'    , false), tsson, tssoff);
      cDadosResponsavel.state := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Dados_Responsavel', false), tsson, tssoff);
      cDadosContador.state    := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Dados_Contador'   , false), tsson, tssoff);
      cZebrado.state          := iif(aINI.ReadBool('IMPRESSAO_BALANCETE', 'Zebrado'          , false), tsson, tssoff);
      cEmpresa.KeyValue       := aINI.ReadInteger('IMPRESSAO_BALANCETE', 'Empresa'          , -1);
      cDataIni.Date           := aINI.ReadDate('IMPRESSAO_BALANCETE', 'DataIni'       , Date );
      cDataFim.Date           := aINI.ReadDate('IMPRESSAO_BALANCETE', 'DataFim'       , Date );
      cDetalheBen.ItemIndex   := aINI.ReadInteger('IMPRESSAO_BALANCETE', 'DetalheBen' , 0);
      cDetalheProc.ItemIndex  := aINI.ReadInteger('IMPRESSAO_BALANCETE', 'DetalheProc', 0);
      aINI.Free;

      with Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           tEmpresas.SQL.Clear;
           tEmpresas.SQL.Add('SELECT Codigo');
           tEmpresas.SQL.Add('      ,SUBSTRING(CNPJ,1,2)+''.''+SUBSTRING(CNPJ,3,3)+''.''+SUBSTRING(CNPJ,6,3)+''/''+SUBSTRING(CNPJ,9,4)+''-''+SUBSTRING(CNPJ,13,2) AS CNPJ');
           tEmpresas.SQL.Add('      ,Razao_Social');
           tEmpresas.SQL.Add('      ,Numero_Filial');
           tEmpresas.SQL.Add('      ,Estado');
           tEmpresas.SQL.Add('      ,Banco_Dados');
           tEmpresas.SQL.Add('FROM   Empresas');
           tEmpresas.SQL.Add('WHERE ISNULL(Desativada, 0) = 0');
           tEmpresas.SQL.Add('AND (SELECT DISTINCT Empresa FROM '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos WHERE Empresa = CNPJ) <> '''' ');
           tEmpresas.SQL.Add('ORDER BY CNPJ');
           //tEmpresas.SQL.SaveToFile('c:\temp\Balancete_tEmpresas.sql');
           tEmpresas.Open;
      end;
end;

procedure TImpressao_ContabeisOP_Balancete.rBalanceteBeforePrint(Sender: TObject);
begin
      Grupo.Report.Groups[0].NewPage := cSalto.State = tssOn;
      If cSintetico.State = tssOff then
         lTitulo.Caption := 'Balancete Analítico ' +UpperCase(Trim(NomeMes(MonthOf(cDataIni.Date))))+'/'+PoeZero(4, YearOf(cDataIni.Date))
      else
         lTitulo.Caption := 'Balancete Sintético '+UpperCase(Trim(NomeMes(MonthOf(cDataIni.Date))))+'/'+PoeZero(4, YearOf(cDataIni.Date));

      if Trim(cEmpresa.DisplayValue) = '' then begin
         lTitulo.Caption := lTitulo.Caption + ' (Consolidado)';
      end else begin
          if tEmpresas.FieldByName('Numero_Filial').AsInteger > 0 then
             lTitulo.Caption := lTitulo.Caption + ' (FILIAL ' + tEmpresas.FieldByName('Numero_Filial').AsString+')'
          else
             lTitulo.Caption := lTitulo.Caption + ' (MATRIZ)';
      end;

     lPeriodo.Caption := 'Período: '+cDataIni.Text + ' á '+ cDataFim.Text;
end;

procedure TImpressao_ContabeisOP_Balancete.ppDetailBand1BeforePrint(Sender: TObject);
Var
    mConta : String;
begin
     lItem.Caption := '';
     with Dados do begin
          if (tBalancete.FieldByName('Titulo').asboolean) and (cNegrito.state = tssOn) then begin
             lItem.Font.Style          := [fsBold];
             lAnterior.Font.Style      := [fsBold];
             lDebito.Font.Style        := [fsBold];
             lCredito.Font.Style       := [fsBold];
             lSaldoAtual.Font.Style    := [fsBold];
             lDC_Anterior.Font.Style   := [fsBold];
             lDC_SaldoAtual.Font.Style := [fsBold];
          end else begin
             lItem.Font.Style          := [];
             lAnterior.Font.Style      := [];
             lDebito.Font.Style        := [];
             lCredito.Font.Style       := [];
             lSaldoAtual.Font.Style    := [];
             lDC_Anterior.Font.Style   := [];
             lDC_SaldoAtual.Font.Style := [];
          end;

          mConta        := FormatMaskText(EmpresasMascara_PlanoContas.Value+';0', tBalancete.FieldByName('Conta').AsVariant)+' ';
          mConta        := Copy( mConta,1, Pos(' ', mConta) );
          mConta        := Trim(mConta);
          lItem.Caption := mConta;

          if cMaiusculo.State = tssOn then begin
             lItem.Caption := lItem.Caption + '                       ' + UpperCase(tBalancete.FieldByName('Descricao').asstring);
          end else begin
             lItem.Caption := lItem.Caption + '                       ' + tBalancete.FieldByName('Descricao').asstring;
          end;

          if cZebrado.state = tssOn then begin
             ppShape2.Visible := not ppShape2.Visible;
          end else begin
             ppShape2.Visible := false;
          end;
     end;
end;

procedure TImpressao_ContabeisOP_Balancete.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ContabeisOP_Balancete.ppSummaryBand1BeforePrint(Sender: TObject);
begin
      Dados.Municipios.Locate('Codigo', Dados.EmpresasContador_Municipio.Value, [loCaseInsensitive]);
end;

// Envia informações para o excel.
procedure TImpressao_ContabeisOP_Balancete.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
   mConta: string;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tBalancete.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');

      mPlanilha.WorkBooks.add(1);

      mPlanilha.Visible                            := false;
      mPlanilha.Range['A3','H3'].Interior.Color    := RGB(255, 255, 140);
      mPlanilha.Range['A3','H3'].Interior.Pattern  := 1;
      mPlanilha.Range['A3','H3'].Font.Bold         := true;
      mPlanilha.Range['A3','H3'].Font.Color        := clBlack;
      mPlanilha.Range['A3','H3'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A3','H3'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['A3','H3'].Borders.Color     := RGB(0,0,0);

      mPlanilha.Range['A3','G3'].HorizontalAlignment := 3;

      mPlanilha.Cells[3,01] := 'CONTA';
      mPlanilha.Cells[3,02] := 'NOME';
      mPlanilha.Cells[3,03] := 'SALDO ANTERIOR';
      mPlanilha.Cells[3,04] := 'D/C';
      mPlanilha.Cells[3,05] := 'DÉBITO';
      mPlanilha.Cells[3,06] := 'CRÉDITO';
      mPlanilha.Cells[3,07] := 'SALDO ATUAL';
      mPlanilha.Cells[3,08] := 'D/C';

      mPlanilha.Cells[3,01].ColumnWidth := 12;
      mPlanilha.Cells[3,02].ColumnWidth := 50;
      mPlanilha.Cells[3,03].ColumnWidth := 18;
      mPlanilha.Cells[3,04].ColumnWidth := 3;
      mPlanilha.Cells[3,05].ColumnWidth := 18;
      mPlanilha.Cells[3,06].ColumnWidth := 18;
      mPlanilha.Cells[3,07].ColumnWidth := 18;
      mPlanilha.Cells[3,08].ColumnWidth := 3;

      mLinha := 4;

      While (not tBalancete.Eof) and (not Funcoes.Cancelado) do  Begin
            mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].HorizontalAlignment := 2;
            mPlanilha.Range['D'+InttoStr(mLinha),'D'+InttoStr(mLinha)].HorizontalAlignment := 3;
            mPlanilha.Range['H'+InttoStr(mLinha),'H'+InttoStr(mLinha)].HorizontalAlignment := 3;

            If (tBalancete.FieldByName('Sintetica').AsBoolean = True) and (cNegrito.State = tsson) then begin
               mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold := true;
            end else begin
               mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Bold := false;
            End;

            //mPlanilha.Cells[mLinha,01] := tBalancete.FieldByName('Conta').AsString;
            mConta := FormatMaskText(Dados.EmpresasMascara_PlanoContas.Value+';0', tBalancete.FieldByName('Conta').AsVariant)+' ';
            mConta := trim(Copy( mConta,1, Pos(' ', mConta)));

            mPlanilha.Cells[mLinha,01] := mConta;
            mPlanilha.Cells[mLinha,02] := tBalancete.FieldByName('Descricao').AsString;
            mPlanilha.Cells[mLinha,03] := tBalancete.FieldByName('Saldo_Anterior').Value;
            mPlanilha.Cells[mLinha,04] := tBalancete.FieldByName('DC_Anterior').asstring;
            mPlanilha.Cells[mLinha,05] := tBalancete.FieldByName('Debito').Value;
            mPlanilha.Cells[mLinha,06] := tBalancete.FieldByName('Credito').Value;
            mPlanilha.Cells[mLinha,07] := tBalancete.FieldByName('Saldo_Atual').Value;
            mPlanilha.Cells[mLinha,08] := tBalancete.FieldByName('DC_Atual').asstring;

            //mPlanilha.Cells[mLinha,01].NumberFormat := Dados.Empresas.FieldByName('Mascara_PlanoContas').asstring;
            mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00';
            mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';

            tBalancete.Next;

            Inc(mLinha);
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      End;

      //Fecha o Excel.
      If Funcoes.Cancelado = true then begin
//         KillTask('Excel.exe');    // Microsoft Excel
         Abort;
         mPlanilha.Free;
         mPlanilha.Destroy;
      End;

     //Planilha.Columns.Autofit;
      mPlanilha.Rows.Autofit;

      mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
      mPlanilha.Range['A1','A1'].Font.Size  := 14;
      mPlanilha.Range['A1','A1'].Font.Bold  := true;
      mPlanilha.Range['A1','H1'].Mergecells := True;
      mPlanilha.Range['A1','H2'].HorizontalAlignment := 3;
      mPlanilha.Cells[2,01] := 'Balancete Analítico (' +UpperCase(Trim(NomeMes(MonthOf(cDataIni.Date))))+'/'+PoeZero(4, YearOf(cDataIni.Date))+')';
      mPlanilha.Range['A2','H2'].Mergecells := True;

      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;

procedure TImpressao_ContabeisOP_Balancete.bLimparEmpresaClick(Sender: TObject);
begin
     cEmpresa.KeyValue := 0;
end;

procedure TImpressao_ContabeisOP_Balancete.bImprimirClick(Sender: TObject);
Var
    mSaldoRes1: Currency;
    mNomeArq
   ,mFilial: String;
begin
      Screen.Cursor := crSQLWait;
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := 5;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Apurando os saldos das contas...';
      Janela_Processamento.bCancelar.Visible  := false;
      Janela_Processamento.Show;
      Application.ProcessMessages;

      With Dados, dmContab do begin
           Janela_Processamento.Progresso.Position := 1;
           Application.ProcessMessages;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);
           
           Janela_Processamento.Progresso.Position := 2;
           Application.ProcessMessages;

           // Verifica se houve movimento no mês solicitado.
           tLanc.SQL.Clear;
           tLanc.SQL.Add('SELECT COUNT(*) AS Qtde FROM Lancamentos WHERE (Data BETWEEN :pDataIni AND :pDataFim)');
           tLanc.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tLanc.ParamByName('pDataFim').AsDate := cDataFim.Date;
           tLanc.Open;

           Janela_Processamento.Progresso.Position := 3;
           Application.ProcessMessages;

           If tLanc.FieldByName('Qtde').AsInteger = 0 then begin
              Screen.Cursor := crDefault;
              If MessageDlg('Não houve movimento no mês solicitado!'+#13+'Deseja imprimir o balancete assim mesmo?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
           End;

           Janela_Processamento.Progresso.Position := 4;
           Application.ProcessMessages;

           with tBalancete do begin
                sql.Clear;
                sql.Add('--------------------------------------------------------------------------[ PEGANDO LANÇAMENTOS DO PERIODO ]----------------------------------------------------------------------------------------------------------');
                sql.Add('select PC.Conta');
                sql.Add('      ,PC.Codigo');
                sql.Add('      ,PC.Descricao');
                sql.Add('      ,PC.Sintetica');
                sql.Add('      ,PC.Titulo');
                sql.Add('      ,PC.Natureza');
                sql.Add('      ,Atualiza_Anterior = isnull(PC.Saldo_Anterior, 0) -');
                sql.Add('                           isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Debito  = PC.Codigo AND Lan.Data < :pDataIni), 0) +');
                sql.Add('                           isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Credito = PC.Codigo AND Lan.Data < :pDataIni), 0)');
                sql.Add('      ,Debito            = isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Debito  = PC.Codigo AND Lan.Data between :pDataIni and :pDataFim), 0)');
                sql.Add('      ,Credito           = isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Credito = PC.Codigo AND Lan.Data between :pDataIni and :pDataFim), 0)');
                sql.Add('      ,Saldo_Atual       = (isnull(PC.Saldo_Anterior, 0) -');
                sql.Add('                            isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Debito  = PC.Codigo AND Lan.Data < :pDataIni), 0) +');
                sql.Add('                            isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Credito = PC.Codigo AND Lan.Data < :pDataIni), 0) ) +');
                sql.Add('                            isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Debito  = PC.Codigo AND Lan.Data between :pDataIni and :pDataFim), 0) -');
                sql.Add('                            isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Credito = PC.Codigo AND Lan.Data between :pDataIni and :pDataFim), 0)');
                sql.Add('      ,DC_Anterior       = '''' ');
                sql.Add('      ,DC_Atual          = '''' ');
                sql.Add('      ,Beneficiario      = '''' ');
                sql.Add('      ,Processo          = '''' ');
                sql.Add('into  #PlanoTmp');
                sql.Add('from  PlanoContas PC');
                sql.Add('where Conta is not null');
                sql.Add('----------------------------------------------------------------------------[ TOTALIZANDO CONTAS TITULO ]--------------------------------------------------------------------------------------------------------------');
                sql.Add('update #PLanoTmp SET Debito            = isnull((select sum(Debito           ) from #PLanoTmp PT where PT.Conta LIKE RTRIM(#PLanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
                sql.Add('                    ,Credito           = isnull((select sum(Credito          ) from #PLanoTmp PT where PT.Conta LIKE RTRIM(#PLanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
                sql.Add('                    ,Atualiza_Anterior = isnull((select sum(Atualiza_Anterior) from #PLanoTmp PT where PT.Conta LIKE RTRIM(#PLanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
                sql.Add('                    ,Saldo_Atual       = isnull((select sum(Atualiza_Anterior+Debito-Credito) from #PLanoTmp PT where PT.Conta LIKE RTRIM(#PLanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
                sql.Add('where(#PLanoTmp.Sintetica = 1)');
                sql.Add('-----------------------------------------------------------------------[ AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" ]------------------------------------------------------------------------------------------------------');
                sql.Add('update #PLanoTmp SET DC_Anterior = case when Natureza = ''D'' then');
                sql.Add('                                        case when Atualiza_Anterior >= 0 then ''D'' else ''C'' end');
                sql.Add('                                   else');
                sql.Add('                                        case when Atualiza_Anterior >= 0 then ''C'' else ''D'' end');
                sql.Add('                                   end');
                sql.Add('                    ,DC_Atual    = case when Natureza = ''D'' then');
                sql.Add('                                        case when Saldo_Atual >= 0 then ''D'' else ''C'' end');
                sql.Add('                                   else');
                sql.Add('                                        case when Saldo_Atual >= 0 then ''C'' else ''D'' end');
                sql.Add('                                   end');
                sql.Add('select *');
                sql.Add('into #PlanoTmp2');
                sql.Add('from #PlanoTmp');

                if (cDetalheBen.ItemIndex <> 2) and (cSintetico.State <> tsson)  then begin
                   sql.Add('-------------------------------------------------------------------------[ JUNTA OS CLIENTES/FORNECEDORES/ORGÃO DA MATRIZ E DAS FILIAIS ]------------------------------------------------------------------------------');
                   sql.Add('select Codigo = ''F''+Codigo');
                   sql.Add('      ,Nome');
                   sql.Add('into #tmpDest');
                   sql.Add('from Cybersoft_Cadastros.dbo.OrgaosPublicos');
                   
                   tEmpresas.open;
                   tEmpresas.first;
                   while not tEmpresas.Eof do begin
                         mFilial := iif(tEmpresas.fieldbyname('Numero_Filial').asinteger = 0, 'MT', 'F'+tEmpresas.fieldbyname('Numero_Filial').asstring);
                         sql.Add('union all');
                         sql.Add('select Codigo = '+quotedstr(mFilial+'_C')+'+cast(Codigo as varchar(10))');
                         sql.Add('      ,Nome');
                         sql.Add('from '+tEmpresas.fieldbyname('Banco_Dados').asstring+'.dbo.Clientes');
                         sql.Add('union all');
                         sql.Add('select Codigo = '+quotedstr(mFilial+'_F')+'+cast(Codigo as varchar(10))');
                         sql.Add('      ,Nome');
                         sql.Add('from '+tEmpresas.fieldbyname('Banco_Dados').asstring+'.dbo.Fornecedores');
                         tEmpresas.next;
                   end;

                   sql.Add('--------------------------------------------------------------------------[ DETALHAMENTO BENEFICIARIOS ]-------------------------------------------------------------------------------------------------------');
                   sql.Add('select Codigo  = Lan.Conta_Debito');
                   sql.Add('      ,Debito  = sum(Valor)');
                   sql.Add('      ,Credito = 0');
                   sql.Add('      ,Beneficiario');
                   sql.Add('into  #temp');
                   sql.Add('from  Lancamentos Lan');
                   sql.Add('where isnull(Conta_Debito, '''') <> '''' ');
                   if cDetalheBen.ItemIndex = 0 then begin
                      sql.Add('and   (select Detalha_Pessoa from PlanoContas where Codigo = Conta_Debito) = 1');
                   end;
                   sql.Add('and Data between :pDataIni and :pDataFim');
                   sql.Add('group by Lan.Conta_Debito, Beneficiario');
                   sql.Add('union all');
                   sql.Add('select Codigo  = Lan.Conta_Credito');
                   sql.Add('      ,Debito  = 0');
                   sql.Add('      ,Credito = sum(Valor)');
                   sql.Add('      ,Beneficiario');
                   sql.Add('from   Lancamentos Lan');
                   sql.Add('where  isnull(Conta_Credito, '''') <> '''' ');
                   if cDetalheBen.ItemIndex = 0 then begin
                      sql.Add('and   (select Detalha_Pessoa from PlanoContas where Codigo = Conta_Credito) = 1');
                   end;
                   sql.Add('and    Data between :pDataIni and :pDataFim');
                   sql.Add('group by Lan.Conta_Credito, Beneficiario');
                   sql.Add('select Conta = (select Conta from PlanoContas PC where PC.Codigo = #temp.Codigo)');
                   sql.Add('      ,Codigo');
                   sql.Add('      ,Descricao = (select Nome from #tmpDest tmd where tmd.Codigo = rtrim(#Temp.Beneficiario))');
                   sql.Add('	    ,Sintetica = (select Sintetica from PlanoContas PC where PC.Codigo = #temp.Codigo)');
                   sql.Add('	    ,Titulo = cast(0 as bit)');
                   sql.Add('	    ,Natureza  = (select Natureza  from PlanoContas PC where PC.Codigo = #temp.Codigo)');
                   sql.Add('	    ,Atualiza_Anterior = (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Debito  = #Temp.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1) -');
                   sql.Add('	                         (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Credito = #Temp.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1)');
                   sql.Add('      ,DC_Anterior = '''' ');
                   sql.Add('      ,Debito');
                   sql.Add('	    ,Credito');
                   sql.Add('	    ,Saldo_Atual = ((select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Debito  = #Temp.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1) -');
                   sql.Add('                      (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Credito = #Temp.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1)) +');
                   sql.Add('	                   Debito - Credito');
                   sql.Add('      ,DC_Atual = '''' ');
                   sql.Add('      ,Grupo = (select Grupo from PlanoContas PC where PC.Codigo = #temp.Codigo)');
                   sql.Add('      ,Beneficiario');
                   sql.Add('      ,Processo = '''' ');
                   sql.Add('into #Temp2');
                   sql.Add('from #temp');
                   sql.Add('----[ AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" ]----');
                   sql.Add('update #Temp2 SET DC_Anterior = case when Natureza = ''D'' then');
                   sql.Add('                                     case when Atualiza_Anterior >= 0 then ''D'' else ''C'' end');
                   sql.Add('                                else');
                   sql.Add('                                     case when Atualiza_Anterior <= 0 then ''C'' else ''D'' end');
                   sql.Add('                                end');
                   sql.Add('                 ,DC_Atual = case when Natureza = ''D'' then');
                   sql.Add('                                  case when Saldo_Atual >= 0 then ''D'' else ''C'' end');
                   sql.Add('                             else');
                   sql.Add('                                  case when Saldo_Atual <= 0 then ''C'' else ''D'' end');
                   sql.Add('                             end');
                   sql.Add('                 ,Saldo_Atual = iif(Saldo_Atual < 0, Saldo_Atual *-1, Saldo_Atual)');
                end;
                if (cDetalheProc.ItemIndex <> 2) and (cSintetico.State <> tsson)  then begin
                   sql.Add('--------------------------------------------------------------------------[ DETALHAMENTO PROCESSOS ]---------------------------------------------------------------------------');
                   sql.Add('select Codigo  = Lan.Conta_Debito');
                   sql.Add('      ,Debito  = sum(Valor)');
                   sql.Add('      ,Credito = 0');
                   sql.Add('      ,Processo = Processo_Debito');
                   sql.Add('into  #TempProc');
                   sql.Add('from  Lancamentos Lan');
                   sql.Add('where isnull(Lan.Processo_Debito, '''') <> '''' ');
                   if cDetalheProc.ItemIndex = 0 then begin
                      sql.Add('and   (select Detalha_Processo from PlanoContas PC where PC.Codigo = Lan.Conta_Debito) = 1');
                   end;
                   sql.Add('and Lan.Data between :pDataIni and :pDataFim');
                   sql.Add('group by Lan.Conta_Debito, Lan.Processo_Debito');
                   sql.Add('union all');
                   sql.Add('select Codigo  = Lan.Conta_Credito');
                   sql.Add('      ,Debito  = 0');
                   sql.Add('      ,Credito = sum(Valor)');
                   sql.Add('      ,Processo = Processo_Credito');
                   sql.Add('from   Lancamentos Lan');
                   sql.Add('where  isnull(Lan.Processo_Credito, '''') <> '''' ');
                   if cDetalheProc.ItemIndex = 0 then begin
                      sql.Add('and   (select Detalha_Processo from PlanoContas PC where PC.Codigo = Lan.Conta_Credito) = 1');
                   end;
                   sql.Add('and    Lan.Data between :pDataIni and :pDataFim');
                   sql.Add('group by Lan.Conta_Credito, Lan.Processo_Credito');
                   sql.Add('select Conta = (select Conta from PlanoContas PC where PC.Codigo = #TempProc.Codigo)');
                   sql.Add('      ,#TempProc.Codigo');
                   sql.Add('      ,Descricao = ''     Processo ''+#TempProc.Processo');
                   sql.Add('	    ,Sintetica = (select Sintetica from PlanoContas PC where PC.Codigo = #TempProc.Codigo)');
                   sql.Add('	    ,Titulo = cast(0 as bit)');
                   sql.Add('	    ,Natureza  = (select Natureza  from PlanoContas PC where PC.Codigo = #TempProc.Codigo)');
                   sql.Add('	    ,Atualiza_Anterior = (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Debito  = #TempProc.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1) -');
                   sql.Add('	                         (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Credito = #TempProc.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1)');
                   sql.Add('      ,DC_Anterior = '''' ');
                   sql.Add('      ,Debito');
                   sql.Add('	    ,Credito');
                   sql.Add('	    ,Saldo_Atual = ((select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Debito  = #TempProc.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1) -');
                   sql.Add('                      (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Credito = #TempProc.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1)) +');
                   sql.Add('	                    Debito - Credito');
                   sql.Add('      ,DC_Atual = '''' ');
                   sql.Add('      ,Grupo = (select Grupo from PlanoContas PC where PC.Codigo = #TempProc.Codigo)');
                   sql.Add('      ,Beneficiario= '''' ');
                   sql.Add('      ,#TempProc.Processo');
                   sql.Add('into #TempProc2');
                   sql.Add('from #tempProc');
                   sql.Add('----[ AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" ]----');
                   sql.Add('update #TempProc2 SET DC_Anterior = case when Natureza = ''D'' then');
                   sql.Add('                                         case when Atualiza_Anterior >= 0 then ''D'' else ''C'' end');
                   sql.Add('                                    else');
                   sql.Add('                                         case when Atualiza_Anterior <= 0 then ''C'' else ''D'' end');
                   sql.Add('                                    end');
                   sql.Add('                     ,DC_Atual = case when Natureza = ''D'' then');
                   sql.Add('                                      case when Saldo_Atual >= 0 then ''D'' else ''C'' end');
                   sql.Add('                                 else');
                   sql.Add('                                      case when Saldo_Atual <= 0 then ''C'' else ''D'' end');
                   sql.Add('                                 end');
                   sql.Add('                     ,Saldo_Atual = iif(Saldo_Atual < 0, Saldo_Atual *-1, Saldo_Atual)');
                   sql.Add('select Conta');
                   sql.Add('      ,Codigo');
                   sql.Add('      ,Descricao');
                   sql.Add('      ,Sintetica');
                   sql.Add('      ,Titulo');
                   sql.Add('      ,Natureza');
                   sql.Add('      ,Saldo_Anterior = Atualiza_Anterior');
                   sql.Add('      ,DC_Anterior');
                   sql.Add('      ,Debito');
                   sql.Add('      ,Credito');
                   sql.Add('      ,Saldo_Atual = iif(Saldo_Atual > 0, Saldo_Atual, Saldo_Atual *-1)');
                   sql.Add('      ,DC_Atual');
                   sql.Add('      ,Grupo = substring(Conta,1,1)');
                   sql.Add('      ,Beneficiario');
                   sql.Add('      ,Processo');
                   sql.Add('from   #TempProc2');
                   sql.Add('where  Conta is not null');
                   sql.Add('union all');
                end;

                if (cDetalheBen.ItemIndex <> 2) and (cSintetico.State <> tsson)  then begin
                   sql.Add('select Conta');
                   sql.Add('      ,Codigo');
                   sql.Add('      ,Descricao');
                   sql.Add('      ,Sintetica');
                   sql.Add('      ,Titulo');
                   sql.Add('      ,Natureza');
                   sql.Add('      ,Saldo_Anterior = Atualiza_Anterior');
                   sql.Add('      ,DC_Anterior');
                   sql.Add('      ,Debito');
                   sql.Add('      ,Credito');
                   sql.Add('      ,Saldo_Atual = iif(Saldo_Atual > 0, Saldo_Atual, Saldo_Atual *-1)');
                   sql.Add('      ,DC_Atual');
                   sql.Add('      ,Grupo = substring(Conta,1,1)');
                   sql.Add('      ,Beneficiario');
                   sql.Add('      ,Processo');
                   sql.Add('from   #Temp2');
                   sql.Add('where  Conta is not null');
                   sql.Add('union all');
                end;

                sql.Add('select Conta');
                sql.Add('      ,Codigo');
                sql.Add('      ,Descricao');
                sql.Add('      ,Sintetica');
                sql.Add('      ,Titulo');
                sql.Add('      ,Natureza');
                sql.Add('      ,Saldo_Anterior = Atualiza_Anterior');
                sql.Add('      ,DC_Anterior');
                sql.Add('      ,Debito');
                sql.Add('      ,Credito');
                sql.Add('      ,Saldo_Atual = iif(Saldo_Atual > 0, Saldo_Atual, Saldo_Atual *-1)');
                sql.Add('      ,DC_Atual');
                sql.Add('      ,Grupo = substring(Conta,1,1)');
                sql.Add('      ,Beneficiario');
                sql.Add('      ,Processo');
                sql.Add('from   #PLanoTmp2');
                sql.Add('where  Conta is not null');
                if cSintetico.State = tsson then begin
                   sql.Add('and    Sintetica = 1');
                end;
                if cMovimento.state = tsson then begin
                   sql.Add('and    (Debito+Credito != 0)');
                end;
                if cSaldoZero.state = tsson then begin
                   sql.Add('and    (Saldo_Atual != 0)');
                end;

                sql.Add('order by Conta, Sintetica desc, Descricao');
                sql.Add('drop table #PLanoTmp, #PLanoTmp2');
                if (cDetalheBen.ItemIndex < 2) and (cSintetico.State <> tsson)  then begin
                   sql.Add('drop table #temp, #Temp2, #tmpDest');
                end;
                if (cDetalheProc.ItemIndex < 2) and (cSintetico.State <> tsson)  then begin
                   sql.Add('drop table #tempproc, #TempProc2');
                end;
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                //sql.SaveToFile('c:\temp\Impressao_Balancete_Atual.sql');
                open;
           end;

           // Monta o memo dos totalizadores para o relatorio grafico.
           lTotaliza.Visible := cTotalGrupo.State = tsson;
           ppLabel8.Visible  := cTotalGrupo.State = tsson;
           lTotaliza.Lines.clear;
           if cTotalGrupo.State = tsson then begin
              tBalancete.Filter   := '(Sintetica = true) and (Conta = Grupo)';
              tBalancete.Filtered := true;
              while not tBalancete.Eof do begin
                    lTotaliza.Lines.Add(tBalancete.FieldByName('Grupo').AsString + '. '+tBalancete.FieldByName('Descricao').AsString + Space(40-Length(Trim(tBalancete.FieldByName('Descricao').AsString)))+
                                        PadR(FormatFloat('#,###,###,##0.00', tBalancete.FieldByName('Saldo_Atual').AsCurrency),16)+tBalancete.FieldByName('DC_Atual').AsString);
                    tBalancete.Next;
              end;
              tBalancete.Filtered := false;

              tBalancete.Locate('Conta', '6', [loCaseInsensitive]);
              mSaldoRes1 := tBalancete.FieldByName('Saldo_Atual').AsCurrency;
              tBalancete.Locate('Conta', '5', [loCaseInsensitive]);
              mSaldoRes1 := mSaldoRes1 - tBalancete.FieldByName('Saldo_Atual').AsCurrency;
              tBalancete.Locate('Conta', '4', [loCaseInsensitive]);
              mSaldoRes1 := mSaldoRes1 - tBalancete.FieldByName('Saldo_Atual').AsCurrency;
              lTotaliza.Lines.Add('------------------------------------------------------------');
              lTotaliza.Lines.Add('RESULTADO                                  ' + PadR(FormatFloat('#,###,###,##0.00', mSaldoRes1),16));
              lTotaliza.Lines.Add('');
              lTotaliza.Lines.Add('');
           end;

           lDiretor.Visible     := cDadosDiretor.State = tsson;;
           ppLabel9.Visible     := cDadosDiretor.State = tsson;;
           ppLine7.Visible      := cDadosDiretor.State = tsson;;

           lResponsavel.Visible := cDadosResponsavel.State = tsson;;
           ppLabel10.Visible    := cDadosResponsavel.State = tsson;;
           ppLine5.Visible      := cDadosResponsavel.State = tsson;;

           lContador.Visible    := cDadosContador.State = tsson;
           ppLabel11.Visible    := cDadosContador.State = tsson;;
           ppLine6.Visible      := cDadosContador.State = tsson;;

           bDadosDiretor.Visible     := cDadosDiretor.State = tsson;
           bDadosResponsavel.Visible := cDadosResponsavel.State = tsson;
           bDadosContador.Visible    := cDadosContador.State = tsson;

           lDiretor.Lines.Clear;
           lContador.Lines.Clear;
           lResponsavel.Lines.Clear;
           if cDadosDiretor.State = tsson then begin
              lDiretor.Lines.Add( Trim(EmpresasDiretor.AsString) );
              lDiretor.Lines.Add( 'CPF: '+Trim(EmpresasDiretor_CPF.AsString) );
           end;
           if cDadosContador.State = tsson then begin
              Municipios.Locate('Codigo', EmpresasContador_Municipio.Value, [loCaseInsensitive]);
              lContador.Lines.Add( Trim(EmpresasContador_Nome.AsString) );
              lContador.Lines.Add( Trim(EmpresasContador_Rua.AsString) + ' nº '+Trim(EmpresasContador_Numero.AsString) + ', ' + Trim(EmpresasContador_Bairro.AsString)+ ' - '+ Trim(Dados.MunicipiosNome.AsString) + '('+Trim(Dados.EmpresasContador_Estado.AsString)+'),  CEP: '+ Trim(EmpresasContador_CEP.AsString));
              lContador.Lines.Add( 'CRC: '+Trim(EmpresasContador_CRC.AsString) + '        CPF: '+EmpresasContador_CPF.AsString );
              Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);
           end;
           if cDadosResponsavel.State = tsson then begin
              lResponsavel.Lines.Add( Trim(EmpresasResponsavel.AsString) );
              lResponsavel.Lines.Add( 'CPF: '+Trim(EmpresasResponsavel_CPF.AsString) );
              lResponsavel.Lines.Add( 'FUNÇÃO: '+Trim(EmpresasResponsavel_Funcao.AsString) );
           end;

           Janela_Processamento.Progresso.Position := 5;
           Application.ProcessMessages;
      end;
      Janela_Processamento.Close;
      Screen.Cursor := crDefault;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;

      if (not mCancelado) then begin
         // Impressora Grafica.
         if cExcel.State = tssoff then begin
            rBalancete.AllowPrintToFile := True;
            rBalancete.DeviceType       := dtScreen;
            rBalancete.ShowPrintDialog  := true;
            rBalancete.Print;
            rBalancete.FreeOnRelease;
            rBalancete.Reset;
         end else begin
            // Arquivo do Excel.
            ExportaExcel;
         end;
      end;
end;



end.
