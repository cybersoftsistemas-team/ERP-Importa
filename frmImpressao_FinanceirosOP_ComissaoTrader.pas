unit frmImpressao_FinanceirosOP_ComissaoTrader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppReport, Mask, RxLookup, ppDBPipe, DB, DBAccess, MSAccess, IniFiles, ComObj,
  RxToolEdit, MemDS, ppDB, ppParameter, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FinanceirosOP_ComissaoTrader = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    rFinanceiro_Traders: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel15: TppLabel;
    lPeriodo: TppLabel;
    bDetalhe: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    cBCICMS: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    lDescricao_TipoP: TppLabel;
    cPago: TppVariable;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    StaticText7: TStaticText;
    cTrader: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    StaticText3: TStaticText;
    cCliente: TRxDBLookupCombo;
    pNotas: TppDBPipeline;
    ppDBText7: TppDBText;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    cComissao: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    pEmpresas: TppDBPipeline;
    ppDBText9: TppDBText;
    ppLabel4: TppLabel;
    cPagoTrader: TppVariable;
    ppLine6: TppLine;
    cTotalNFTrader: TppVariable;
    cTotalBCTrader: TppVariable;
    cTotalNF: TppVariable;
    cTotalBC: TppVariable;
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    cExcel: TCheckBox;
    ppLine3: TppLine;
    ppLabel9: TppLabel;
    ppDBText3: TppDBText;
    cValorNF: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cTraderChange(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppGroupFooterBand1AfterPrint(Sender: TObject);
    procedure bDetalheBeforePrint(Sender: TObject);
    procedure cTraderKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cProcessoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_ComissaoTrader: TImpressao_FinanceirosOP_ComissaoTrader;

implementation

uses frmDados, frmDMFiscal, FUNCOES, frmMenu_Principal,
  frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_ComissaoTrader.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate  ('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'DataIni' , cDataIni.Date);
      aINI.WriteDate  ('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'DataFim' , cDataFim.Date);
      aINI.WriteString('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'Trader'  , cTrader.DisplayValue);
      aINI.WriteString('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'Cliente' , cCliente.DisplayValue);
      aINI.WriteString('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'Processo', cProcesso.Text);
      aINI.WriteBool  ('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'Excel'   , cExcel.Checked);
      aINI.Free;

      Impressao_FinanceirosOP_ComissaoTrader.Release;
      Impressao_FinanceirosOP_ComissaoTrader := nil;
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date         := aINI.ReadDate  ('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'DataIni' , 0);
      cDataFim.Date         := aINI.ReadDate  ('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'DataFim' , 0);
      cTrader.DisplayValue  := aINI.ReadString('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'Trader'  , '');
      cCliente.DisplayValue := aINI.ReadString('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'Cliente' , '');
      cProcesso.KeyValue    := aINI.ReadString('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'Processo', '');
      cExcel.Checked        := aINI.ReadBool  ('IMPRESSAO_FINANCEIRO_COMISSAO_TRADER', 'Excel'   , false);
      aINI.Free;

     With Dados, dmFiscal do begin
          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Codigo');
          Clientes.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE (SELECT Modulo_Clientes FROM RamoAtividade WHERE(Codigo = Ramo_Atividade)) = 1');
          Fornecedores.Open;

          Empresas.Open;
          Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
          Empresas.Open;

          ProcessosDOC.SQL.Clear;
          ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
          ProcessosDOC.Open;
     End;
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.cTraderChange(Sender: TObject);
begin
      With Dados do begin
           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Trader = :pTrader) ORDER BY Codigo');
           Clientes.ParamByName('pTrader').AsInteger := FornecedoresCodigo.AsInteger;
           Clientes.Open;
      End;
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.bLimparClick(Sender: TObject);
begin
     cDataIni.Clear;
     cDataFim.Clear;
     cTrader.ClearValue;
     cCliente.ClearValue;
     cProcesso.ClearValue;
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.bImprimirClick(Sender: TObject);
begin
      If (Trim(RemoveCaracter('/','',cDataIni.Text)) = '') or (Trim(RemoveCaracter('/','',cDataFim.Text)) = '') then begin
         ShowMessage('É necessário informar o período para a impressão!');
         Abort;
      End;
      With Dados, dmFiscal do begin
           tNotas.SQL.Clear;
           tNotas.SQL.Add('SELECT Cliente_Codigo,');
           tNotas.SQL.Add('       Destinatario_Nome AS Nome,');
           tNotas.SQL.Add('       (SELECT Trader FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) AS Trader,');
           tNotas.SQL.Add('       (SELECT Nome FROM Fornecedores WHERE((SELECT Trader FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) = Fornecedores.Codigo)) AS Nome_Trader, ');
           tNotas.SQL.Add('       (SELECT Trader_Comissao FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) AS Trader_Comissao,');
           tNotas.SQL.Add('       (SELECT Tipo_Comissao FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) AS Tipo_Comissao,');
           tNotas.SQL.Add('       Numero,');
           tNotas.SQL.Add('       Data_Emissao,');
           tNotas.SQL.Add('       Valor_TotalNota,');
           tNotas.SQL.Add('       BCICMS,');
           tNotas.SQL.Add('       Processo,');
           tNotas.SQL.Add('       (SELECT SUM(BCICMS) FROM NotasFiscais AS NF WHERE(NF.Processo = NotasFiscais.Processo) AND (Saida_Entrada = 1) AND (NF.Cancelada <> 1) AND ((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.Tipo_Nota)) = 0)) AS Total_BC,');
           tNotas.SQL.Add('       (SELECT (Margem_LucroValor+Desconto_ComercialValor+Desconto_AdicionalValor) FROM ProcessosFechamento AS PF WHERE(PF.Processo = NotasFiscais.Processo)) AS Comissao,');
           tNotas.SQL.Add('       (SELECT ((Margem_LucroValor + Desconto_ComercialValor + Desconto_AdicionalValor)/Total_Notas)*Valor_TotalNota FROM ProcessosFechamento AS PF WHERE(PF.Processo = NotasFiscais.Processo)) AS Negociacao');
           tNotas.SQL.Add('FROM   NotasFiscais');
           tNotas.SQL.Add('WHERE (Saida_Entrada = 1)');
           tNotas.SQL.Add('  AND (Cancelada <> 1)');
           tNotas.SQL.Add('  AND (SELECT Trader FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) IS NOT NULL');
           tNotas.SQL.Add('  AND (SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = NotasFiscais.Tipo_Nota)) = 1');

           If (Trim(RemoveCaracter('/','',cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/','',cDataFim.Text)) <> '') then begin
              tNotas.SQL.Add('  AND (Data_Emissao BETWEEN :pDataini AND :pDataFim)');
              tNotas.ParamByName('pDataIni').AsDate := cDataIni.Date;
              tNotas.ParamByName('pDataFim').AsDate := cDataFim.Date;
           End;
           If Trim(cTrader.Text) <> '' then begin
              tNotas.SQL.Add('  AND (SELECT Trader FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) = :pTrader');
              tNotas.ParamByName('pTrader').AsInteger := Fornecedores.FieldByName('Codigo').AsInteger;
           End;
           If Trim(cCliente.Text) <> '' then begin
              tNotas.SQL.Add('  AND (Cliente_Codigo = :pCliente)');
              tNotas.ParamByName('pCliente').AsInteger := Clientes.FieldByName('Codigo').AsInteger;
           End;
           If Trim(cProcesso.Text) <> '' then begin
              tNotas.SQL.Add('  AND (Processo = :pProcesso)');
              tNotas.ParamByName('pProcesso').AsString := ProcessosDoc.FieldByName('Processo').AsString;
           End;

           tNotas.SQL.Add('ORDER BY Trader, Data_Emissao, Processo, Numero');
           //tNotas.SQL.SaveToFile('c:\temp\Comissao_Trader.txt');
           tNotas.Open;
           lPeriodo.Text := 'Período :'+cDataIni.Text + ' a ' + cDataFim.Text; 
      End;

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rFinanceiro_Traders.Print;
         rFinanceiro_Traders.Reset;
      end else begin
         ExportaEXCEL;
      End;
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.ppGroupFooterBand1AfterPrint(Sender: TObject);
begin
     cTotalNFTrader.Value := 0;
     cTotalBCTrader.Value := 0;
     cPagoTrader.Value    := 0;
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.bDetalheBeforePrint(Sender: TObject);
var
    mNegociacao: Real;
begin
     With Dados do begin
          If tNotas.FieldByName('Tipo_Comissao').AsInteger = 1 then begin
             cValorNF.Visible     := False;
             cBCICMS.Visible      := True;
             cComissao.AsCurrency := Percentual(tNotas.FieldByName('BCICMS').AsCurrency, tNotas.FieldByName('Trader_Comissao').AsFloat);
             cTotalBCTrader.Value := cTotalBCTrader.Value + tNotas.FieldByName('BCICMS').AsCurrency;
             cTotalBC.Value       := cTotalBC.Value + tNotas.FieldByName('BCICMS').AsCurrency;
          End;
          If tNotas.FieldByName('Tipo_Comissao').AsInteger = 2 then begin
             cValorNF.Visible     := True;
             cBCICMS.Visible      := False;
             cComissao.AsCurrency := Percentual(tNotas.FieldByName('Valor_TotalNota').AsCurrency, tNotas.FieldByName('Trader_Comissao').AsFloat);
             cTotalNFTrader.Value := cTotalNFTrader.Value + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
             cTotalNF.Value       := cTotalNF.Value + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
          End;
          If (tNotas.FieldByName('Tipo_Comissao').AsInteger >= 3) and (tNotas.FieldByName('Tipo_Comissao').AsInteger <= 10) then begin
             cValorNF.Visible     := False;
             cBCICMS.Visible      := True;
             mNegociacao          := tNotas.FieldByName('Comissao').AsCurrency;
             If mNegociacao < 0 then mNegociacao := mNegociacao * -1;
             mNegociacao          := (mNegociacao / tNotas.FieldByName('Total_BC').AsCurrency) * tNotas.FieldByName('BCICMS').AsCurrency;
             cComissao.AsCurrency := Percentual( (Percentual(tNotas.FieldByName('BCICMS').AsCurrency, 7) - mNegociacao), tNotas.FieldByName('Trader_Comissao').AsFloat) ;
             cTotalBCTrader.Value := cTotalBCTrader.Value + tNotas.FieldByName('BCICMS').AsCurrency;
             cTotalBC.Value       := cTotalBC.Value + tNotas.FieldByName('BCICMS').AsCurrency;
          End;
     End;
     cPagoTrader.Value := cPagoTrader.Value + cComissao.Value;
     cPago.Value       := cPago.Value + cComissao.Value;
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.cTraderKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.cClienteKeyDown(  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_ComissaoTrader.cProcessoKeyDown(  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_ComissaoTrader.ExportaEXCEL;
var
   mPlanilha     : Variant;
   mLinha        : Integer;
   mTotalClienteD: Real;
   mTotalClienteE: Real;
   mTotalClienteH: Real;
   mTotalD       : Real;
   mTotalE       : Real;
   mTotalH       : Real;
   mTrader       : Integer;
   mNegociacao   : Real;
   mComissao     : Real;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tNotas.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','I3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','I3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','I3'].Font.Bold         := true;
       mPlanilha.Range['A3','I3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','I3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','I3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','I3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'DATA NF';
       mPlanilha.Cells[3,02] := 'Nº NF';
       mPlanilha.Cells[3,03] := 'CLIENTE';
       mPlanilha.Cells[3,04] := 'VLR NF.';
       mPlanilha.Cells[3,05] := 'BC.ICMS';
       mPlanilha.Cells[3,06] := 'NEGOCIAÇÃO';
       mPlanilha.Cells[3,07] := '% COMISSÃO';
       mPlanilha.Cells[3,08] := 'VLR COMISSÃO';
       mPlanilha.Cells[3,09] := 'PROCESSO';

       mPlanilha.Range['A3','I3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','I3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','I3'].Font.Size           := 8;

       mTotalD := 0;
       mTotalE := 0;
       mTotalH := 0;

       mTotalClienteD := 0;
       mTotalClienteE := 0;
       mTotalClienteH := 0;

       mLinha   := 4;
       mTrader := tNotas.FieldByName('Trader').AsInteger;

       mPlanilha.Cells[mLinha,01] := tNotas.FieldByName('Nome').AsString;
       mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Interior.Color      := $00FFB3B3;
       mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Font.Bold           := true;
       mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Mergecells          := True;
       mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].HorizontalAlignment := 3;
       Inc(mLinha);

       While (not tNotas.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['A'+InttoStr(mLinha),'i'+InttoStr(mLinha)].Font.Size := 8;

             mComissao := 0;
             If tNotas.FieldByName('Tipo_Comissao').AsInteger = 1 then begin
                mComissao := Percentual(tNotas.FieldByName('BCICMS').AsCurrency, tNotas.FieldByName('Trader_Comissao').AsFloat);
             End;
             If tNotas.FieldByName('Tipo_Comissao').AsInteger = 2 then begin
                mComissao  := Percentual(tNotas.FieldByName('Valor_TotalNota').AsCurrency, tNotas.FieldByName('Trader_Comissao').AsFloat);
             End;
             If (tNotas.FieldByName('Tipo_Comissao').AsInteger >= 3) and (tNotas.FieldByName('Tipo_Comissao').AsInteger <= 10) then begin
                mNegociacao          := tNotas.FieldByName('Comissao').AsCurrency;
                If mNegociacao < 0 then mNegociacao := mNegociacao * -1;
                mNegociacao          := (mNegociacao / tNotas.FieldByName('Total_BC').AsCurrency) * tNotas.FieldByName('BCICMS').AsCurrency;
                mComissao := Percentual( (Percentual(tNotas.FieldByName('BCICMS').AsCurrency, 7) - mNegociacao), tNotas.FieldByName('Trader_Comissao').AsFloat) ;
             End;

             mPlanilha.Cells[mLinha,01] := tNotas.FieldByName('Data_Emissao').Value;
             mPlanilha.Cells[mLinha,02] := tNotas.FieldByName('Numero').Value;
             mPlanilha.Cells[mLinha,03] := tNotas.FieldByName('Nome').AsString;
             mPlanilha.Cells[mLinha,04] := tNotas.FieldByName('Valor_TotalNota').AsCurrency;
             mPlanilha.Cells[mLinha,05] := tNotas.FieldByName('BCICMS').AsCurrency;
             mPlanilha.Cells[mLinha,06] := tNotas.FieldByName('Negociacao').AsCurrency;
             mPlanilha.Cells[mLinha,07] := tNotas.FieldByName('Trader_Comissao').AsFloat;
             mPlanilha.Cells[mLinha,08] := mComissao;
             mPlanilha.Cells[mLinha,09] := tNotas.FieldByName('Processo').AsString;

             mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';

             mTotalD := mTotalD + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
             mTotalE := mTotalE + tNotas.FieldByName('BCICMS').AsCurrency;
             mTotalH := mTotalH + mComissao;

             mTotalClienteD := mTotalClienteD + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
             mTotalClienteE := mTotalClienteE + tNotas.FieldByName('BCICMS').AsCurrency;
             mTotalClienteH := mTotalClienteH + mComissao;

             mPlanilha.Cells[mLinha,01].HorizontalAlignment := 3;
             mPlanilha.Cells[mLinha,02].HorizontalAlignment := 3;

             tNotas.Next;

             If (mTrader <> tNotas.FieldByName('Trader').AsInteger) or (tNotas.Eof) then begin
                Inc(mLinha);
                
                mPlanilha.Cells[mLinha,04] := mTotalClienteD;
                mPlanilha.Cells[mLinha,05] := mTotalClienteE;
                mPlanilha.Cells[mLinha,08] := mTotalClienteH;

                mPlanilha.Cells[mLinha,03] := 'TOTAIS';
                mPlanilha.Cells[mLinha,03].HorizontalAlignment := 3;
                mPlanilha.Range['C3','Q3'].VerticalAlignment   := 2;
                mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Size         := 8;
                mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].VerticalAlignment := 2;

                mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 140);
                mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

                mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
                mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';

                mTotalClienteD := 0;
                mTotalClienteE := 0;
                mTotalClienteH := 0;

                Inc(mLinha,2);
                If not tNotas.Eof then begin
                   mTrader := tNotas.FieldByName('Trader').AsInteger;
                   mPlanilha.Cells[mLinha,01] := tNotas.FieldByName('Nome_Trader').AsString;
                   mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Interior.Color      := $00FFB3B3;
                   mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].Font.Bold           := true;
                   mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Mergecells          := True;
                   mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].HorizontalAlignment := 3;
                End;
             End;
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

       mPlanilha.Columns.Autofit;

       mPlanilha.Cells[mLinha,03] := 'T.GERAL';
       mPlanilha.Cells[mLinha,03].HorizontalAlignment := 3;
       mPlanilha.Range['C3','H3'].VerticalAlignment   := 2;
       mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].Font.Size         := 8;
       mPlanilha.Range['A'+InttoStr(mLinha),'I'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Cells[mLinha,04] := mTotalD;
       mPlanilha.Cells[mLinha,05] := mTotalE;
       mPlanilha.Cells[mLinha,08] := mTotalH;

       mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 0);
       mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Bold         := true;
       mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.LineStyle := 1;
       mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Weight    := 2;
       mPlanilha.Range['C'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,04].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,05].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00_);(#.##0,00)';

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','A1'].Font.Size  := 14;
       mPlanilha.Range['A1','A1'].Font.Bold  := true;
       mPlanilha.Range['A1','I1'].Mergecells := True;
       mPlanilha.Range['A1','I1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Conta corrente de Clientes'+cDataIni.Text + ' á ' + cDataFim.Text;
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','I2'].Mergecells := True;
       mPlanilha.Range['A2','I2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


end.
