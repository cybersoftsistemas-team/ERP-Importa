unit frmImpressao_ProcessosOP_Rentabilidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Mask, RxLookup, RXCtrls, IniFiles, Funcoes, DB,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppReport, ppDBPipe, DBAccess, MSAccess, ComObj,
  RxToolEdit, MemDS, ppParameter, ppDesignLayer, ppCache, ppProd, ppDB, ppComm, ppRelatv;

type
  TImpressao_ProcessosOP_Rentabilidade = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText5: TStaticText;
    cCliente: TRxDBLookupCombo;
    cDataIni: TDateEdit;
    StaticText8: TStaticText;
    cDataFim: TDateEdit;
    StaticText10: TStaticText;
    cSaltar: TCheckBox;
    StaticText1: TStaticText;
    cProcesso: TRxDBLookupCombo;
    cZebrado: TCheckBox;
    cExcel: TCheckBox;
    pEmpresas: TppDBPipeline;
    rRentabilidade: TppReport;
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
    ppLabel18: TppLabel;
    ppShape4: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    lPeriodo: TppLabel;
    ppDetailBand1: TppDetailBand;
    lFaixa: TppShape;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape6: TppShape;
    lCliente: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    tRentabilidade: TMSQuery;
    dstRentabilidade: TDataSource;
    pRentab: TppDBPipeline;
    ppDBText11: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape5: TppShape;
    ppLabel4: TppLabel;
    ppShape8: TppShape;
    ppLabel5: TppLabel;
    ppLabel10: TppLabel;
    ppShape9: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape10: TppShape;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppShape11: TppShape;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppDBCalc19: TppDBCalc;
    ppShape13: TppShape;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppDBText15: TppDBText;
    ppDBCalc20: TppDBCalc;
    ppShape15: TppShape;
    ppLabel24: TppLabel;
    ppDBText18: TppDBText;
    cConsol: TCheckBox;
    cTotalCliente: TCheckBox;
    tEmpresas: TMSQuery;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cProcessoChange(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure cClienteChange(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_ProcessosOP_Rentabilidade: TImpressao_ProcessosOP_Rentabilidade;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_ProcessosOP_Rentabilidade.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_Rentabilidade.FormClose(Sender: TObject;var Action: TCloseAction);
var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_PROCESSOS_P08', 'DataIni'     , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_PROCESSOS_P08', 'DataFim'     , cDataFim.Date);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P08', 'Processo'    , cProcesso.Text);
      aINI.WriteString ('IMPRESSAO_PROCESSOS_P08', 'Cliente'     , cCliente.Text);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P08', 'Saltar'      , cSaltar.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P08', 'Zebrado'     , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P08', 'Excel'       , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P08', 'Consolidado' , cConsol.Checked);
      aINI.WriteBool   ('IMPRESSAO_PROCESSOS_P08', 'TotalCliente', cTotalCliente.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_ProcessosOP_Rentabilidade.Release;
      Impressao_ProcessosOP_Rentabilidade := nil;
end;

procedure TImpressao_ProcessosOP_Rentabilidade.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_ProcessosOP_Rentabilidade.FormShow(Sender: TObject);
var
   aINI : TIniFile;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           ProcessosFechamento.SQL.Clear;
           ProcessosFechamento.SQL.Add('SELECT * FROM ProcessosFechamento ORDER BY Processo');
           ProcessosFechamento.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE Codigo IN((SELECT DISTINCT Cliente FROM ProcessosDocumentos WHERE(Processo IN((SELECT DISTINCT Processo FROM ProcessosFechamento))))) ORDER BY Nome');
           Clientes.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date         := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_P08', 'DataIni'     , Date);
      cDataFim.Date         := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_P08', 'DataFim'     , Date);
      cProcesso.KeyValue    := aINI.ReadString ('IMPRESSAO_PROCESSOS_P08', 'Processo'    , '');
      cCliente.DisplayValue := aINI.ReadString ('IMPRESSAO_PROCESSOS_P08', 'Cliente'     , '');
      cSaltar.Checked       := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P08', 'Saltar'      , false);
      cZebrado.Checked      := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P08', 'Zebrado'     , false);
      cExcel.Checked        := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P08', 'Excel'       , false);
      cConsol.Checked       := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P08', 'Consolidado' , false);
      cTotalCliente.Checked := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_P08', 'TotalCliente', false);
      aINI.Free;

      Screen.Cursor := crDefault;
end;

procedure TImpressao_ProcessosOP_Rentabilidade.cProcessoChange(Sender: TObject);
begin
      If Trim(cProcesso.DisplayValue) <> '' then begin
         Dados.Clientes.Locate('Nome', cProcesso.DisplayValue, [loCaseInsensitive]);
         cCliente.KeyValue := Dados.ClientesCodigo.Value;
      End;
end;

procedure TImpressao_ProcessosOP_Rentabilidade.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cProcesso.ClearValue;
      cCliente.ClearValue;
end;

procedure TImpressao_ProcessosOP_Rentabilidade.bImprimirClick(Sender: TObject);
Var
   mSQLMatriz,mSQLFilial : WideString;
begin
      tRentabilidade.SQL.Clear;
      tRentabilidade.SQL.Add('SELECT Processo,');
      tRentabilidade.SQL.Add('       Data,');
      tRentabilidade.SQL.Add('       (SELECT DISTINCT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)) AS Cliente_Codigo,');
      tRentabilidade.SQL.Add('       (SELECT Nome FROM Clientes WHERE(Codigo = (SELECT DISTINCT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)))) AS Cliente_Nome,');
      tRentabilidade.SQL.Add('       Custo = ISNULL(Despachante_Despesas,0) + ISNULL(Total_Impostos,0) + ISNULL(Total_CambioReal,0),');
      tRentabilidade.SQL.Add('       Comissao_PartValor AS Comissao,');
      tRentabilidade.SQL.Add('       Assessoria_Total AS Assessoria,');
      tRentabilidade.SQL.Add('       Rentabilidade,');
      tRentabilidade.SQL.Add('       IRPJ_Valor AS IRPJ,');
      tRentabilidade.SQL.Add('       CSLL_Valor AS CSLL,');
      tRentabilidade.SQL.Add('       Negociacao            = (ISNULL(Margem_LucroValor, 0) + ISNULL(Desconto_ComercialValor,0) + ISNULL(Desconto_AdicionalValor,0)),');
      tRentabilidade.SQL.Add('       ICMS                  = ISNULL(ICMS_Saida, 0) - (ISNULL(ICMS_Entrada, 0) + ISNULL(ICMS_Pagar,0) + ISNULL(ICMS_FDE,0) + ISNULL(ICMS_GLME,0)),');
      tRentabilidade.SQL.Add('       Rentabilidade_Bruta   = ISNULL(Rentabilidade,0) + ISNULL(CSLL_Valor,0) + ISNULL(IRPJ_Valor,0),'); 
      tRentabilidade.SQL.Add('       Rentabilidade_Liquida = Rentabilidade,');
      tRentabilidade.SQL.Add('       Valor_CIF             = (SELECT (FOB+Frete+Seguro) FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)),');
      tRentabilidade.SQL.Add('       Rentabilidade_CIF     = (Rentabilidade / (SELECT (FOB+Frete+Seguro) FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo))) * 100,');
      tRentabilidade.SQL.Add('       Rentabilidade_Custo   = (Rentabilidade / (ISNULL(Despachante_Despesas,0) + ISNULL(Total_Impostos,0) + ISNULL(Total_CambioReal,0)) ) * 100,');
      tRentabilidade.SQL.Add('       CASE WHEN Fechamento_Provisorio = 1 THEN ''P'' ELSE ''D'' END AS Provisorio,');
      tRentabilidade.SQL.Add('       Origem = CASE WHEN (SELECT Matriz_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) = 1 THEN');
      tRentabilidade.SQL.Add('                     ''MT-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
      tRentabilidade.SQL.Add('                ELSE');
      tRentabilidade.SQL.Add('                     ''FL''+CAST((SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) AS VARCHAR(2)) + ''-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
      tRentabilidade.SQL.Add('                END');
      tRentabilidade.SQL.Add('FROM   ProcessosFechamento');
      tRentabilidade.SQL.Add('WHERE  (Data BETWEEN :pDataIni AND :pDataFim)');

      If Trim(cCliente.Text) <> '' then begin
         tRentabilidade.SQL.Add('AND (SELECT DISTINCT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)) = :pCliente');
         tRentabilidade.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
      End;
      If Trim(cProcesso.Text) <> '' then begin
         tRentabilidade.SQL.Add('AND (Processo = :pProcesso)');
         tRentabilidade.ParamByName('pProcesso').AsString := cProcesso.Text;
      End;

      tRentabilidade.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;

      If cConsol.Checked = true then begin
         Dados.Empresas.SQL.Clear;
         Dados.Empresas.SQL.Add('SELECT *');
         Dados.Empresas.SQL.Add('FROM   Empresas WHERE(Codigo = :pEmpresa)');
         Dados.Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
         Dados.Empresas.Open;

         tEmpresas.SQL.Clear;
         tEmpresas.SQL.Add('SELECT Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
         tEmpresas.SQL.Add('FROM   Empresas WHERE(Codigo <> :pEmpresa) AND (Consolidar = 1) ORDER BY Numero_Filial');
         tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
         tEmpresas.Open;
         tEmpresas.First;

         mSQLMatriz := tRentabilidade.SQL.Text;
         While not tEmpresas.Eof do begin
               If Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Dados.Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                  mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLMatriz);
                  mSQLFilial := RemoveCaracter('Clientes '          , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Clientes '          , mSQLFilial);
                  mSQLFilial := RemoveCaracter('ProcessosFechamento', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosFechamento', mSQLFilial);
                  mSQLFilial := RemoveCaracter(':pEmpresa'          , tEmpresas.FieldByName('Codigo').AsString                                , mSQLFilial);
                  tRentabilidade.SQL.Add('UNION ALL');
                  tRentabilidade.SQL.Add(mSQLFilial);
               End;
               tEmpresas.Next;
         End;
      End;

      tRentabilidade.SQL.Add('ORDER BY Origem, Cliente_Nome, Processo, Data');
      tRentabilidade.ParamByName('pDataini').AsDate := cDataIni.Date;
      tRentabilidade.ParamByName('pDataFim').AsDate := cDataFim.Date;
      tRentabilidade.ParamByName('pDataFim').AsDate := cDataFim.Date;

      //tRentabilidade.SQL.SaveToFile('C:\Temp\Rentabilidade.sql');
      tRentabilidade.Open;

      rRentabilidade.Groups[0].NewPage := cSaltar.Checked;
      lPeriodo.Caption := 'Período de '+cDataini.Text + ' á ' + cDataFim.Text;
      
      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rRentabilidade.Print;
         rRentabilidade.FreeOnRelease;
         rRentabilidade.Reset;
      end else begin
         ExportaEXCEL;
      End;
end;

procedure TImpressao_ProcessosOP_Rentabilidade.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then
         lFaixa.Visible := not lFaixa.Visible
      else
         lFaixa.Visible := False;
end;

procedure TImpressao_ProcessosOP_Rentabilidade.cClienteChange(Sender: TObject);
begin
      If Trim(cCliente.DisplayValue) <> '' then begin
         With Dados do begin
              ProcessosFechamento.SQL.Clear;
              ProcessosFechamento.SQL.Add('SELECT * FROM ProcessosFechamento WHERE (SELECT DISTINCT Cliente FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = ProcessosFechamento.Processo)) = :pCliente ORDER BY Processo');
              ProcessosFechamento.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
              ProcessosFechamento.Open;
         End;
         cCliente.KeyValue := Dados.ClientesCodigo.Value;
      End;
end;

// Envia informações para o excel.
procedure TImpressao_ProcessosOP_Rentabilidade.ExportaEXCEL;
var
   mPlanilha     : Variant;
   mLinha        : Integer;
   mTotalClienteC: Real;
   mTotalClienteD: Real;
   mTotalClienteE: Real;
   mTotalClienteF: Real;
   mTotalClienteG: Real;
   mTotalClienteH: Real;
   mTotalClienteI: Real;
   mTotalClienteJ: Real;
   mTotalClienteK: Real;
   mTotalClienteL: Real;
   mTotalC       : Real;
   mTotalD       : Real;
   mTotalE       : Real;
   mTotalF       : Real;
   mTotalG       : Real;
   mTotalH       : Real;
   mTotalI       : Real;
   mTotalJ       : Real;
   mTotalK       : Real;
   mTotalL       : Real;
   mZebra        : Boolean;
   mCliente      : Integer;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tRentabilidade.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','Q3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','Q3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','Q3'].Font.Bold         := true;
       mPlanilha.Range['A3','Q3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','Q3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','Q3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','Q3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'PROCESSO';
       mPlanilha.Cells[3,02] := 'DATA FECH.';
       mPlanilha.Cells[3,03] := 'CIF';
       mPlanilha.Cells[3,04] := 'CUSTO PROCESSO';
       mPlanilha.Cells[3,05] := 'ICMS';
       mPlanilha.Cells[3,06] := 'NEGOCIAÇÃO';
       mPlanilha.Cells[3,07] := 'COMISSÃO';
       mPlanilha.Cells[3,08] := 'ASSESSORIA';
       mPlanilha.Cells[3,09] := 'RENTABILIDADE';
       mPlanilha.Cells[3,10] := 'IRPJ';
       mPlanilha.Cells[3,11] := 'CSLL';
       mPlanilha.Cells[3,12] := 'RENTAB.LÍQUIDA';
       mPlanilha.Cells[3,13] := 'RENTAB.S/CIF';
       mPlanilha.Cells[3,14] := 'RENTAB.S/CUSTO';
       mPlanilha.Cells[3,15] := 'P/D';
       mPlanilha.Cells[3,16] := 'CLIENTE';
       mPlanilha.Cells[3,17] := 'EMPRESA';

       mPlanilha.Range['A3','Q3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','Q3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','Q3'].Font.Size           := 8;

       mTotalC := 0;
       mTotalD := 0;
       mTotalE := 0;
       mTotalF := 0;
       mTotalG := 0;
       mTotalH := 0;
       mTotalI := 0;
       mTotalJ := 0;
       mTotalK := 0;
       mTotalL := 0;

       mTotalClienteC := 0;
       mTotalClienteD := 0;
       mTotalClienteE := 0;
       mTotalClienteF := 0;
       mTotalClienteG := 0;
       mTotalClienteH := 0;
       mTotalClienteI := 0;
       mTotalClienteJ := 0;
       mTotalClienteK := 0;
       mTotalClienteL := 0;

       mLinha   := 4;
       mZebra   := false;
       mCliente := tRentabilidade.FieldByName('Cliente_Codigo').AsInteger;

       While (not tRentabilidade.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Size := 8;

             mPlanilha.Cells[mLinha,01] := tRentabilidade.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,02] := tRentabilidade.FieldByName('Data').AsDateTime;
             mPlanilha.Cells[mLinha,03] := tRentabilidade.FieldByName('Valor_CIF').AsCurrency;
             mPlanilha.Cells[mLinha,04] := tRentabilidade.FieldByName('Custo').AsCurrency;
             mPlanilha.Cells[mLinha,05] := tRentabilidade.FieldByName('ICMS').AsCurrency;
             mPlanilha.Cells[mLinha,06] := tRentabilidade.FieldByName('Negociacao').AsCurrency;
             mPlanilha.Cells[mLinha,07] := tRentabilidade.FieldByName('Comissao').AsCurrency;
             mPlanilha.Cells[mLinha,08] := tRentabilidade.FieldByName('Assessoria').AsCurrency;
             mPlanilha.Cells[mLinha,09] := tRentabilidade.FieldByName('Rentabilidade_Bruta').AsCurrency;
             mPlanilha.Cells[mLinha,10] := tRentabilidade.FieldByName('IRPJ').AsCurrency;
             mPlanilha.Cells[mLinha,11] := tRentabilidade.FieldByName('CSLL').AsCurrency;
             mPlanilha.Cells[mLinha,12] := tRentabilidade.FieldByName('Rentabilidade_Liquida').AsCurrency;
             mPlanilha.Cells[mLinha,13] := tRentabilidade.FieldByName('Rentabilidade_CIF').AsFloat/100;
             mPlanilha.Cells[mLinha,14] := tRentabilidade.FieldByName('Rentabilidade_Custo').AsFloat/100;
             mPlanilha.Cells[mLinha,15] := tRentabilidade.FieldByName('Provisorio').AsString;
             mPlanilha.Cells[mLinha,16] := tRentabilidade.FieldByName('Cliente_Nome').AsString;
             mPlanilha.Cells[mLinha,17] := tRentabilidade.FieldByName('Origem').AsString;

             mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,13].NumberFormat := '##0,00%_);(##0,00%)';
             mPlanilha.Cells[mLinha,14].NumberFormat := '##0,00%_);(##0,00%)';

             mTotalC := mTotalC + tRentabilidade.FieldByName('Valor_CIF').AsCurrency;
             mTotalD := mTotalD + tRentabilidade.FieldByName('Custo').AsCurrency;
             mTotalE := mTotalE + tRentabilidade.FieldByName('ICMS').AsCurrency;
             mTotalF := mTotalF + tRentabilidade.FieldByName('Negociacao').AsCurrency;
             mTotalG := mTotalG + tRentabilidade.FieldByName('Comissao').AsCurrency;
             mTotalH := mTotalH + tRentabilidade.FieldByName('Assessoria').AsCurrency;
             mTotalI := mTotalI + tRentabilidade.FieldByName('Rentabilidade').AsCurrency;
             mTotalJ := mTotalJ + tRentabilidade.FieldByName('IRPJ').AsCurrency;
             mTotalK := mTotalK + tRentabilidade.FieldByName('CSLL').AsCurrency;
             mTotalL := mTotalL + tRentabilidade.FieldByName('Rentabilidade_Liquida').AsCurrency;

             mTotalClienteC := mTotalClienteC + tRentabilidade.FieldByName('Valor_CIF').AsCurrency;
             mTotalClienteD := mTotalClienteD + tRentabilidade.FieldByName('Custo').AsCurrency;
             mTotalClienteE := mTotalClienteE + tRentabilidade.FieldByName('ICMS').AsCurrency;
             mTotalClienteF := mTotalClienteF + tRentabilidade.FieldByName('Negociacao').AsCurrency;
             mTotalClienteG := mTotalClienteG + tRentabilidade.FieldByName('Comissao').AsCurrency;
             mTotalClienteH := mTotalClienteH + tRentabilidade.FieldByName('Assessoria').AsCurrency;
             mTotalClienteI := mTotalClienteI + tRentabilidade.FieldByName('Rentabilidade').AsCurrency;
             mTotalClienteJ := mTotalClienteJ + tRentabilidade.FieldByName('IRPJ').AsCurrency;
             mTotalClienteK := mTotalClienteK + tRentabilidade.FieldByName('CSLL').AsCurrency;
             mTotalClienteL := mTotalClienteL + tRentabilidade.FieldByName('Rentabilidade_Liquida').AsCurrency;

             mPlanilha.Cells[mLinha,01].HorizontalAlignment := 1;
             mPlanilha.Cells[mLinha,02].HorizontalAlignment := 3;
             mPlanilha.Range['O'+InttoStr(mLinha),'O'+InttoStr(mLinha)].HorizontalAlignment := 3;

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             tRentabilidade.Next;

             If cTotalCliente.Checked then begin
                If (mCliente <> tRentabilidade.FieldByName('Cliente_Codigo').AsInteger) or (tRentabilidade.Eof) then begin
                   Inc(mLinha);

                   mPlanilha.Cells[mLinha,03] := mTotalClienteC;
                   mPlanilha.Cells[mLinha,04] := mTotalClienteD;
                   mPlanilha.Cells[mLinha,05] := mTotalClienteE;
                   mPlanilha.Cells[mLinha,06] := mTotalClienteF;
                   mPlanilha.Cells[mLinha,07] := mTotalClienteG;
                   mPlanilha.Cells[mLinha,08] := mTotalClienteH;
                   mPlanilha.Cells[mLinha,09] := mTotalClienteI;
                   mPlanilha.Cells[mLinha,10] := mTotalClienteJ;
                   mPlanilha.Cells[mLinha,11] := mTotalClienteK;
                   mPlanilha.Cells[mLinha,12] := mTotalClienteL;

                   mPlanilha.Cells[mLinha,02] := 'TOTAIS';
                   mPlanilha.Cells[mLinha,02].HorizontalAlignment := 3;
                   mPlanilha.Range['C3','N3'].VerticalAlignment   := 2;
                   mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Size         := 8;
                   mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].VerticalAlignment := 2;

                   mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                   mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Bold         := true;
                   mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                   mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                   mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                   mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
                   mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
                   mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
                   mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
                   mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
                   mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
                   mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
                   mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
                   mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
                   mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';

                   mTotalClienteC := 0;
                   mTotalClienteD := 0;
                   mTotalClienteE := 0;
                   mTotalClienteF := 0;
                   mTotalClienteG := 0;
                   mTotalClienteH := 0;
                   mTotalClienteI := 0;
                   mTotalClienteJ := 0;
                   mTotalClienteK := 0;
                   mTotalClienteL := 0;

                   Inc(mLinha,2);

                   If not tRentabilidade.Eof then begin
                      mCliente := tRentabilidade.FieldByName('Cliente_Codigo').AsInteger;
                   End;
                End;
             End;

             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       End;

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Columns.AutoFit;

       mPlanilha.Cells[mLinha,02] := 'T.GERAL';
       mPlanilha.Cells[mLinha,02].HorizontalAlignment := 3;
       mPlanilha.Range['C3','L3'].VerticalAlignment   := 2;
       mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Size         := 8;
       mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Cells[mLinha,03] := mTotalC;
       mPlanilha.Cells[mLinha,04] := mTotalD;
       mPlanilha.Cells[mLinha,05] := mTotalE;
       mPlanilha.Cells[mLinha,06] := mTotalF;
       mPlanilha.Cells[mLinha,07] := mTotalG;
       mPlanilha.Cells[mLinha,08] := mTotalH;
       mPlanilha.Cells[mLinha,09] := mTotalI;
       mPlanilha.Cells[mLinha,10] := mTotalJ;
       mPlanilha.Cells[mLinha,11] := mTotalK;
       mPlanilha.Cells[mLinha,12] := mTotalL;

       mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
       mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.LineStyle := 1;
       mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Weight    := 2;
       mPlanilha.Range['B'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','A1'].Font.Size  := 14;
       mPlanilha.Range['A1','A1'].Font.Bold  := true;
       mPlanilha.Range['A1','Q1'].Mergecells := True;
       mPlanilha.Range['A1','Q1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Rentabilidade - Período de '+cDataIni.Text + ' á ' + cDataFim.Text;
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','Q2'].Mergecells := True;
       mPlanilha.Range['A2','Q2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


end.
