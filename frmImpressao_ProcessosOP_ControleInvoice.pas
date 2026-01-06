unit frmImpressao_ProcessosOP_ControleInvoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppVar, ppBands, ppReport,
  ppCtrls, ppPrnabl, ppDBPipe, Vcl.StdCtrls, Vcl.ExtCtrls, DBCtrls, RXCtrls, Mask, RxLookup, IniFiles, ComObj, system.UITypes, RxToolEdit, ppParameter, ppDesignLayer, ppClass, ppCache,
  ppProd, MemDS, ppDB, ppComm, ppRelatv;

type
  TImpressao_ProcessosOP_ControleInvoice = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    pEmpresas: TppDBPipeline;
    pInvoice: TppDBPipeline;
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
    StaticText2: TStaticText;
    cExportador: TRxDBLookupCombo;
    bLimpar: TButton;
    dstInvoice: TDataSource;
    tInvoice: TMSQuery;
    rControleInvoice: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLine5: TppLine;
    ppLine2: TppLine;
    lPeriodo: TppLabel;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    lFaixa: TppShape;
    cVencimento: TRadioGroup;
    ppLabel14: TppLabel;
    ppDBText9: TppDBText;
    ppLabel15: TppLabel;
    ppDBText11: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    cDesativados: TCheckBox;
    cSaldoZero: TCheckBox;
    ppDBText16: TppDBText;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cDataIniExit(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
    mProcesso : String;
  end;

var
  Impressao_ProcessosOP_ControleInvoice: TImpressao_ProcessosOP_ControleInvoice;

implementation

uses frmDados, FUNCOES, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_ProcessosOP_ControleInvoice.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_ProcessosOP_ControleInvoice.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_CONTROLE_INVOICE', 'DataIni', cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_CONTROLE_INVOICE', 'DataFim', cDataFim.Date );
      If cProcesso.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_CONTROLE_INVOICE', 'Processo', cProcesso.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_CONTROLE_INVOICE', 'Processo', '');
      If cCliente.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_CONTROLE_INVOICE', 'Cliente', cCliente.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_CONTROLE_INVOICE', 'Cliente', '');
      If cExportador.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_CONTROLE_INVOICE', 'Exportador', cExportador.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_CONTROLE_INVOICE', 'Exportador', '');
      aINI.WriteBool      ('IMPRESSAO_CONTROLE_INVOICE', 'Zebrado', cZebrado.Checked);
      aINI.WriteBool      ('IMPRESSAO_CONTROLE_INVOICE', 'Excel', cExcel.Checked);
      aINI.WriteBool      ('IMPRESSAO_CONTROLE_INVOICE', 'SaldoZero', cSaldoZero.Checked);
      aINI.WriteBool      ('IMPRESSAO_CONTROLE_INVOICE', 'Desativados', cDesativados.Checked);
      aINI.WriteInteger   ('IMPRESSAO_CONTROLE_INVOICE', 'Vencimento', cVencimento.ItemIndex);

      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_ProcessosOP_ControleInvoice.Release;
      Impressao_ProcessosOP_ControleInvoice := nil;
end;

procedure TImpressao_ProcessosOP_ControleInvoice.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ProcessosOP_ControleInvoice.bImprimirClick(Sender: TObject);
begin
     lPeriodo.Caption := '';

     tInvoice.SQL.Clear;

     tInvoice.SQL.Add('SELECT IV.Processo AS Ordem,');
     tInvoice.SQL.Add('       1 AS Item,');
     tInvoice.SQL.Add('       IV.Processo,');
     tInvoice.SQL.Add('       Cliente    = (SELECT Nome FROM Clientes     CL WHERE(CL.Codigo = (SELECT Cliente FROM ProcessosDocumentos PD WHERE(PD.Processo = IV.Processo)) )),');

     tInvoice.SQL.Add('       Cliente_End1 = (SELECT Rua+'',Nº ''+Rua_Numero+'' - ''+Municipio+''(''+Estado+'')'' FROM Clientes CL WHERE(CL.Codigo = (SELECT Cliente FROM ProcessosDocumentos PD WHERE(PD.Processo = IV.Processo)))),');
     tInvoice.SQL.Add('       Cliente_End2 = (SELECT ''CEP: ''+CEP FROM Clientes CL WHERE(CL.Codigo = (SELECT Cliente FROM ProcessosDocumentos PD WHERE(PD.Processo = IV.Processo)) )),');
     tInvoice.SQL.Add('       Cliente_Pais = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Paises pai WHERE Pai.Codigo = Pais_Destino),');
     
     tInvoice.SQL.Add('       Exportador = (SELECT Nome FROM Fornecedores FR WHERE(FR.Codigo = IV.Exportador)),');
     tInvoice.SQL.Add('       Numero = LTRIM(RTRIM(IV.Numero)),');
     tInvoice.SQL.Add('       Condicao_Cambial = (SELECT Descricao FROM CondicaoCambial WHERE(Codigo = Condicao_Cambio)),');
     tInvoice.SQL.Add('       Total_FaturaME,');
     tInvoice.SQL.Add('       Valor_Antecipado = Total_FaturaME * ((100 - (SELECT ISNULL(Percentual1,0)+ISNULL(Percentual2,0)+ISNULL(Percentual3,0) FROM CondicaoCambial WHERE(Codigo = Condicao_Cambio)))/100),');
     tInvoice.SQL.Add('       Valor1           = Total_FaturaME * ((SELECT ISNULL(Percentual1,0) FROM CondicaoCambial WHERE(Codigo = Condicao_Cambio))/100),');
     tInvoice.SQL.Add('       CASE WHEN (Total_FaturaME * ((SELECT ISNULL(Percentual1,0) FROM CondicaoCambial WHERE(Codigo = Condicao_Cambio))/100)) <> 0 THEN');
     tInvoice.SQL.Add('           CONVERT(VARCHAR(12), (SELECT Data_BL FROM ProcessosDocumentos PD WHERE(PD.Processo = IV.Processo)) + (SELECT ISNULL(Vencimento1,0) FROM CondicaoCambial CB WHERE(CB.Codigo = IV.Condicao_Cambio)), 103)');
     tInvoice.SQL.Add('       ELSE');
     tInvoice.SQL.Add('           ''''');
     tInvoice.SQL.Add('       END AS Vencimento1,');
     tInvoice.SQL.Add('       Valor2           = Total_FaturaME * ((SELECT ISNULL(Percentual2,0) FROM CondicaoCambial WHERE(Codigo = Condicao_Cambio))/100),');
     tInvoice.SQL.Add('       CASE WHEN (Total_FaturaME * ((SELECT ISNULL(Percentual2,0) FROM CondicaoCambial WHERE(Codigo = Condicao_Cambio))/100)) <> 0 THEN');
     tInvoice.SQL.Add('            CONVERT(VARCHAR(12), (SELECT Data_BL FROM ProcessosDocumentos PD WHERE(PD.Processo = IV.Processo)) + (SELECT ISNULL(Vencimento2,0) FROM CondicaoCambial CB WHERE(CB.Codigo = IV.Condicao_Cambio)), 103)');
     tInvoice.SQL.Add('       ELSE');
     tInvoice.SQL.Add('            ''''');
     tInvoice.SQL.Add('       END AS Vencimento2,');
     tInvoice.SQL.Add('       Valor3           = Total_FaturaME * ((SELECT ISNULL(Percentual3,0) FROM CondicaoCambial WHERE(Codigo = Condicao_Cambio))/100),');
     tInvoice.SQL.Add('       CASE WHEN (Total_FaturaME * ((SELECT ISNULL(Percentual3,0) FROM CondicaoCambial WHERE(Codigo = Condicao_Cambio))/100)) <> 0 THEN');
     tInvoice.SQL.Add('            CONVERT(VARCHAR(12), (SELECT Data_BL FROM ProcessosDocumentos PD WHERE(PD.Processo = IV.Processo)) + (SELECT ISNULL(Vencimento3,0) FROM CondicaoCambial CB WHERE(CB.Codigo = IV.Condicao_Cambio)), 103)');
     tInvoice.SQL.Add('       ELSE');
     tInvoice.SQL.Add('            ''''');
     tInvoice.SQL.Add('       END AS Vencimento3,');
     tInvoice.SQL.Add('       Cambios_PagosME    = ISNULL((SELECT SUM(Valor_ME) FROM ContratoCambioItens CI WHERE(CI.Processo = IV.Processo)),0),');
     tInvoice.SQL.Add('       Saldo_CambiosPagos = Total_FaturaME - ISNULL((SELECT SUM(Valor_ME) FROM ContratoCambioItens CI WHERE(CI.Processo = IV.Processo)), 0)');
     tInvoice.SQL.Add('FROM   Invoice IV');
     tInvoice.SQL.Add('WHERE  (Numero IS NOT NULL)');

     If DataLimpa(cDataIni.Text) = false then begin
        If cVencimento.ItemIndex = 0 then tInvoice.SQL.Add('      AND (Data_Vencimento BETWEEN :pDataIni AND :pDataFim)');
        If cVencimento.ItemIndex = 1 then tInvoice.SQL.Add('      AND ((Data_Vencimento BETWEEN :pDataIni AND :pDataFim) OR (ISNULL(Data_Vencimento, '''') = ''''))');
        If cVencimento.ItemIndex = 2 then tInvoice.SQL.Add('      AND (ISNULL(Data_Vencimento, '''') = '''')');
        If cVencimento.ItemIndex < 2 then begin
           tInvoice.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tInvoice.ParamByName('pDataFim').AsDate := cDataFim.Date;
        End;

        lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á '+ cDataFim.Text;
     End;
     If Trim(cProcesso.Text) <> '' then begin
        tInvoice.SQL.Add('      AND (IV.Processo = :pProcesso)');
        tInvoice.ParamByName('pProcesso').AsString := cProcesso.Text;
        lPeriodo.Caption := lPeriodo.Caption+'/ Processo:'+cProcesso.Text;
     End;
     If Trim(cCliente.Text) <> '' then begin
        tInvoice.SQL.Add('      AND ((SELECT Cliente FROM ProcessosDocumentos PD WHERE(PD.Processo = IV.Processo)) = :pCliente)');
        tInvoice.ParamByName('pCliente').AsInteger := Dados.Clientes.FieldByName('Codigo').AsInteger;
        lPeriodo.Caption := lPeriodo.Caption+'/ Cliente:'+cCliente.Text;
     End;
     If Trim(cExportador.Text) <> '' then begin
        tInvoice.SQL.Add('      AND (Exportador = :pExportador)');
        tInvoice.ParamByName('pExportador').AsInteger := Dados.Fornecedores.FieldByName('Codigo').AsInteger;
        lPeriodo.Caption := lPeriodo.Caption+'/ Exportador:'+cExportador.Text;
     End;
     If cSaldoZero.Checked = true then begin
        tInvoice.SQL.Add('      AND (Total_FaturaME - ISNULL((SELECT SUM(Valor_ME) FROM ContratoCambioItens CI WHERE(CI.Processo = IV.Processo)), 0)) <> 0');
     End;
     If cDesativados.Checked = true then begin
        tInvoice.SQL.Add('      AND ((SELECT Desativado FROM ProcessosDocumentos PD WHERE(PD.Processo = IV.Processo)) <> 1)');
     End;
     tInvoice.SQL.Add('ORDER BY Processo, Numero');
     //tInvoice.SQL.SaveToFile('c:\temp\ControleInvoice.SQL');
     tInvoice.Open;

     lFaixa.Visible  := cZebrado.Checked;

     If tInvoice.RecordCount = 0 then begin
        MessageDlg('Não há dados com os filtros informados!'+#13+#13+'Por favor verifique os filtros e tente novamente.', mtInformation, [mbOK], 0);
     end else begin
        If not cExcel.Checked then begin
           if FileExists(Dados.EmpresasLogo.Value) then begin
              iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           end;
           //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           rControleInvoice.Reset;
           rControleInvoice.Print;
           rControleInvoice.FreeOnRelease;
        end else begin
           ExportaExcel;
        End;
     End;
end;

procedure TImpressao_ProcessosOP_ControleInvoice.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      With Dados do begin
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Processo IN(SELECT DISTINCT Processo FROM Invoice)) ORDER BY Processo');
           ProcessosDOC.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Pais <> 1058) ORDER BY Nome');
           Fornecedores.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                 := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date        := aINI.ReadDate   ('IMPRESSAO_CONTROLE_INVOICE', 'DataIni'    , Date );
      cDataFim.Date        := aINI.ReadDate   ('IMPRESSAO_CONTROLE_INVOICE', 'DataFim'    , Date );
      cProcesso.KeyValue   := aINI.ReadString ('IMPRESSAO_CONTROLE_INVOICE', 'Processo'   , '' );
      cCliente.KeyValue    := aINI.ReadInteger('IMPRESSAO_CONTROLE_INVOICE', 'Cliente'    , 0 );
      cExportador.KeyValue := aINI.ReadInteger('IMPRESSAO_CONTROLE_INVOICE', 'Exportador' , 0 );
      cZebrado.Checked     := aINI.ReadBool   ('IMPRESSAO_CONTROLE_INVOICE', 'Zebrado'    , true );
      cExcel.Checked       := aINI.ReadBool   ('IMPRESSAO_CONTROLE_INVOICE', 'Excel'      , false );
      cVencimento.ItemIndex:= aINI.ReadInteger('IMPRESSAO_CONTROLE_INVOICE', 'Vencimento' , 0 );
      cSaldoZero.Checked   := aINI.ReadBool   ('IMPRESSAO_CONTROLE_INVOICE', 'SaldoZero'  , false );
      cDesativados.Checked := aINI.ReadBool   ('IMPRESSAO_CONTROLE_INVOICE', 'Desativados', false );
      aINI.Free;
end;

procedure TImpressao_ProcessosOP_ControleInvoice.cDataIniExit(Sender: TObject);
begin
      If Trim(RemoveCaracter('/', '', cDataFim.Text)) = '' then cDataFim.Date := cDataIni.Date;
end;

procedure TImpressao_ProcessosOP_ControleInvoice.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then begin
         lFaixa.Visible  := not lFaixa.Visible;
      End;
end;

// Envia informações para o excel.
procedure TImpressao_ProcessosOP_ControleInvoice.ExportaEXCEL;
var
   mPlanilha  : Variant;
   mLinha     : Integer;
   mZebra     : Boolean;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tInvoice.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');
       mPlanilha.WorkBooks.add(1);
       mPlanilha.Visible := false;

       mPlanilha.Range['A3','O3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','O3'].Interior.Color    := clMoneyGreen;
       mPlanilha.Range['A3','O3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','O3'].Font.Bold         := true;
       mPlanilha.Range['A3','O3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','O3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','O3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','O3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'PROCESSO';
       mPlanilha.Cells[3,02] := 'CLIENTE';
       mPlanilha.Cells[3,03] := 'EXPORTADOR';
       mPlanilha.Cells[3,04] := 'INVOICE';
       mPlanilha.Cells[3,05] := 'CONDIÇÃO CAMBIAL';
       mPlanilha.Cells[3,06] := 'VALOR TOTAL(ME)';
       mPlanilha.Cells[3,07] := 'ANTECIPADO';
       mPlanilha.Cells[3,08] := 'VALOR(ME) 1';
       mPlanilha.Cells[3,09] := 'VENCIMENTO 1';
       mPlanilha.Cells[3,10] := 'VALOR(ME) 2';
       mPlanilha.Cells[3,11] := 'VENCIMENTO 2';
       mPlanilha.Cells[3,12] := 'VALOR(ME) 3';
       mPlanilha.Cells[3,13] := 'VENCIMENTO 3';
       mPlanilha.Cells[3,14] := 'CÂMBIOS PAGOS (ME)';
       mPlanilha.Cells[3,15] := 'SALDO A PAGAR (ME)';

       mPlanilha.Range['A3','O3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','O3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','O3'].Font.Size           := 8;

       mLinha    := 4;
       mZebra    := false;
       mProcesso := tInvoice.FieldByName('Ordem').AsString;

       While (not tInvoice.Eof) and (not Funcoes.Cancelado) do begin
             mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Size           := 8;
             mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Borders.LineStyle   := 1;
             mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Borders.Weight      := 2; //xlThin;
             mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Borders.Color       := clGray;
             mPlanilha.Range['I'+InttoStr(mLinha),'I'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['K'+InttoStr(mLinha),'K'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['M'+InttoStr(mLinha),'M'+InttoStr(mLinha)].HorizontalAlignment := 3;

             mPlanilha.Cells[mLinha,01] := tInvoice.FieldByName('Processo').AsString;
             mPlanilha.Cells[mLinha,02] := tInvoice.FieldByName('Cliente').AsString;
             mPlanilha.Cells[mLinha,03] := tInvoice.FieldByName('Exportador').AsString;
             mPlanilha.Cells[mLinha,04] := ''''+tInvoice.FieldByName('Numero').AsString;
             mPlanilha.Cells[mLinha,05] := tInvoice.FieldByName('Condicao_Cambial').AsString;
             mPlanilha.Cells[mLinha,06] := tInvoice.FieldByName('Total_FaturaME').AsCurrency;
             mPlanilha.Cells[mLinha,07] := tInvoice.FieldByName('Valor_Antecipado').AsCurrency;
             mPlanilha.Cells[mLinha,08] := tInvoice.FieldByName('Valor1').AsCurrency;
             mPlanilha.Cells[mLinha,09] := tInvoice.FieldByName('Vencimento1').AsString;
             mPlanilha.Cells[mLinha,10] := tInvoice.FieldByName('Valor2').AsCurrency;
             mPlanilha.Cells[mLinha,11] := tInvoice.FieldByName('Vencimento2').AsString;
             mPlanilha.Cells[mLinha,12] := tInvoice.FieldByName('Valor3').AsCurrency;
             mPlanilha.Cells[mLinha,13] := tInvoice.FieldByName('Vencimento3').AsString;
             mPlanilha.Cells[mLinha,14] := tInvoice.FieldByName('Cambios_PagosME').AsCurrency;
             mPlanilha.Cells[mLinha,15] := tInvoice.FieldByName('Saldo_CambiosPagos').AsCurrency;

             mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
                mZebra := not mZebra;   
             End;

             tInvoice.Next;
             
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
       mPlanilha.Range['A1','O1'].Mergecells := True;
       mPlanilha.Range['A1','O1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Controle de Invoices ('+cDataIni.Text+' á '+cDataFim.Text+')';
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','O2'].Mergecells := True;
       mPlanilha.Range['A2','O2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

end.
