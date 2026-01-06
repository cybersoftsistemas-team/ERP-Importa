unit frmImpressao_Financeiros_FluxoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, DB, DBAccess, MSAccess, Funcoes,
  Mask, DateUtils, ppParameter, ppCtrls, ppBands, ppVar, ppReport, ppDBPipe, ComObj, IniFiles,
  RxCurrEdit, RxToolEdit, ppDesignLayer, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_Financeiros_FluxoCaixa = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cConsol: TCheckBox;
    tFluxo: TMSQuery;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    pEmpresas: TppDBPipeline;
    pFluxo: TppDBPipeline;
    rFluxo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    ppLabel2: TppLabel;
    lPeriodo: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape7: TppShape;
    ppLabel6: TppLabel;
    ppShape16: TppShape;
    ppLabel16: TppLabel;
    ppShape11: TppShape;
    ppLabel13: TppLabel;
    ppShape14: TppShape;
    ppLabel17: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppDBText18: TppDBText;
    ppDBText7: TppDBText;
    ppDBText1: TppDBText;
    ppDBText16: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppParameterList1: TppParameterList;
    ppDBText15: TppDBText;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppLabel7: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    pSaldoAcum: TppVariable;
    ppLine1: TppLine;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    StaticText5: TStaticText;
    cTaxa: TCurrencyEdit;
    cExcel: TCheckBox;
    tEmpresas: TMSQuery;
    dstFluxo: TDataSource;
    ppShape12: TppShape;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppDBCalc12: TppDBCalc;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure tFluxoAfterScroll(DataSet: TDataSet);
    procedure ExportaEXCEL;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Financeiros_FluxoCaixa: TImpressao_Financeiros_FluxoCaixa;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Financeiros_FluxoCaixa.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Financeiros_FluxoCaixa.FormClose(Sender: TObject;   var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate ('IMPRESSAO_FINANCEIRO_FLUXOCAIXA', 'DataIni'   , cDataIni.Date);
      aINI.WriteDate ('IMPRESSAO_FINANCEIRO_FLUXOCAIXA', 'DataFim'   , cDataFim.Date);
      aINI.WriteFloat('IMPRESSAO_FINANCEIRO_FLUXOCAIXA', 'Taxa'      , cTaxa.Value);
      aINI.WriteBool ('IMPRESSAO_FINANCEIRO_FLUXOCAIXA', 'Excel'     , cExcel.Checked);
      aINI.WriteBool ('IMPRESSAO_FINANCEIRO_FLUXOCAIXA', 'Consolidar', cConsol.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);
      
      Impressao_Financeiros_FluxoCaixa.Release;
      Impressao_Financeiros_FluxoCaixa := nil;
end;

procedure TImpressao_Financeiros_FluxoCaixa.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Financeiros_FluxoCaixa.bImprimirClick(Sender: TObject);
Var
   i,
   mMes,
   mQMeses,
   mAno: Integer;
   mSQLMatriz,
   mSQLFilial: WideString;
begin
      Screen.Cursor := crSQLWait;

      mMes    := MonthOf(cDataIni.Date);
      mAno    := YearOf(cDataIni.Date);
      mQMeses := Monthsbetween(cDataIni.Date, cDataFim.Date)+1;

      tFluxo.SQL.Clear;

      For i := 1 to mQMeses do begin
          tFluxo.SQL.Add('SELECT Ano               = '+InttoStr(mAno)+',' );
          tFluxo.SQL.Add('       Mes               = '+InttoStr(mMes)+',' );
          tFluxo.SQL.Add('       Nome_Mes          = '+QuotedStr(Trim(NomeMes(mMes)))+',' );
          //tFluxo.SQL.Add('       Total_Emprestimos = ISNULL((SELECT SUM(Valor) FROM EmprestimosParcelas EP WHERE MONTH(Vencimento) = '+InttoStr(mMes)+' AND YEAR(Vencimento) = '+InttoStr(mAno)+' AND (SELECT COUNT(*) FROM PagarReceberBaixas PB WHERE PB.Numero = EP.Financeiro_Numero) = 0), 0)+');
          tFluxo.SQL.Add('       Total_Emprestimos = ISNULL((SELECT SUM(Total) FROM EmprestimosParcelas EP WHERE MONTH(Vencimento) = '+InttoStr(mMes)+' AND YEAR(Vencimento) = '+InttoStr(mAno)+' AND (SELECT COUNT(*) FROM PagarReceberBaixas PB WHERE PB.Numero = EP.Financeiro_Numero) = 0), 0)+');
          tFluxo.SQL.Add('                           ISNULL((SELECT SUM(Valor_ME * Taxa_Cambial) FROM EmprestimosFINIMP EF WHERE MONTH(Data) = '+InttoStr(mMes)+' AND YEAR(Data) = '+InttoStr(mAno)+' AND (SELECT COUNT(*) FROM PagarReceberBaixas PB WHERE PB.Numero = EF.Financeiro_Numero) = 0), 0),');

          If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
             tFluxo.SQL.Add('       Despesas_Fixas    = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE Tipo = ''P'' AND MONTH(Data_Vencimento) = '+InttoStr(mMes)+' AND YEAR(Data_Vencimento) = '+InttoStr(mAno)+' AND ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero), 2),0) < ROUND(Valor_Total, 2) AND (SELECT Despesa_Fixa FROM ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = 1), 0),');
          end else begin
             tFluxo.SQL.Add('       Despesas_Fixas    = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE Tipo = ''P'' AND MONTH(Data_Vencimento) = '+InttoStr(mMes)+' AND YEAR(Data_Vencimento) = '+InttoStr(mAno)+' AND ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero), 2),0) < ROUND(Valor_Total, 2) AND (SELECT Despesa_Fixa FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = 1), 0),');
          End;

          If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
             tFluxo.SQL.Add('       Despesas_NFixas   = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE Tipo = ''P'' AND MONTH(Data_Vencimento) = '+InttoStr(mMes)+' AND YEAR(Data_Vencimento) = '+InttoStr(mAno)+' AND ISNULL(Processo, '''')  = '''' AND ISNULL(Emprestimo, 0) = 0 AND (SELECT COUNT(*) FROM PagarReceberBaixas PB WHERE PB.Numero = PR.Numero) = 0 AND (SELECT Despesa_Fixa FROM ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = 0), 0),');
          end else begin
             tFluxo.SQL.Add('       Despesas_NFixas   = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE Tipo = ''P'' AND MONTH(Data_Vencimento) = '+InttoStr(mMes)+' AND YEAR(Data_Vencimento) = '+InttoStr(mAno)+' AND ISNULL(Processo, '''')  = '''' AND ISNULL(Emprestimo, 0) = 0 AND (SELECT COUNT(*) FROM PagarReceberBaixas PB WHERE PB.Numero = PR.Numero) = 0 ');
             tFluxo.SQL.Add('                           AND (SELECT Despesa_Fixa FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = 0), 0),');
          End;
          tFluxo.SQL.Add('       Despesas_COMEX    = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE Tipo = ''P'' AND MONTH(Data_Vencimento) = '+InttoStr(mMes)+' AND YEAR(Data_Vencimento) = '+InttoStr(mAno)+' AND ISNULL(Processo, '''') <> '''' AND ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero), 2),0) < ROUND(Valor_Total, 2)  ), 0),');
          tFluxo.SQL.Add('       Despesas_Outras   = CAST(0 AS money),');
          tFluxo.SQL.Add('       Previsao_Nac      = ISNULL((SELECT SUM(ISNULL(Fator_SISCOMEXValor   , 0) * :pTaxa) FROM ProcessosDocumentos WHERE Data_Encerramento IS NULL AND ISNULL(Desativado, 0) = 0 AND MONTH(Data_PrevFaturamento) = '+InttoStr(mMes)+' AND YEAR(Data_PrevFaturamento) = '+InttoStr(mAno)+'), 0),');
          tFluxo.SQL.Add('       Despesas_Total    = CAST(0 AS money),');
          tFluxo.SQL.Add('       Previsao_Fat      = ISNULL((SELECT SUM(ISNULL(Fator_FaturamentoValor, 0) * :pTaxa) FROM ProcessosDocumentos WHERE Data_Encerramento IS NULL AND ISNULL(Desativado, 0) = 0 AND MONTH(Data_PrevFaturamento+ISNULL(Condicao_Pagamento, 0)) = '+InttoStr(mMes)+' AND YEAR(Data_PrevFaturamento+ISNULL(Condicao_Pagamento, 0)) = '+InttoStr(mAno)+'), 0),');
          If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
             tFluxo.SQL.Add('       CAR               = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE Tipo = ''R'' AND MONTH(Data_Vencimento) = '+InttoStr(mMes)+' AND YEAR(Data_Vencimento) = '+InttoStr(mAno)+' AND ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero), 2), 0) < ROUND(Valor_Total, 2) AND ((SELECT Despesa_Fixa FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) <> 1) ), 0),');
          end else begin
             tFluxo.SQL.Add('       CAR               = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber PR WHERE Tipo = ''R'' AND MONTH(Data_Vencimento) = '+InttoStr(mMes)+' AND YEAR(Data_Vencimento) = '+InttoStr(mAno)+' AND ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero), 2), 0) < ROUND(Valor_Total, 2) AND ((SELECT Despesa_Fixa FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) <> 1) ), 0),');
          End;
          tFluxo.SQL.Add('       Receitas_Outras   = CAST(0 AS money),');
          tFluxo.SQL.Add('       Receitas_Total    = CAST(0 AS money),');
          tFluxo.SQL.Add('       Saldo_Mes         = CAST(0 AS money)');

          If i = 1 then tFluxo.SQL.Add('INTO #TEMP');
          If i < mQMeses then tFluxo.SQL.Add('UNION ALL');

          Inc(mMes);
          If mMes > 12 then begin
             mMes := 1;
             Inc(mAno);
          End;
      End;
      
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

         mSQLMatriz := tFluxo.SQL.Text;
         mSQLMatriz := RemoveCaracter('INTO #TEMP', '', mSQLMatriz);
         While not tEmpresas.Eof do begin
               If Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Dados.Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                  mSQLFilial := RemoveCaracter(' Emprestimos '       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Emprestimos '        , mSQLMatriz);
                  mSQLFilial := RemoveCaracter('ProcessosDocumentos' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos' , mSQLFilial);
                  mSQLFilial := RemoveCaracter('EmprestimosParcelas ', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.EmprestimosParcelas ', mSQLFilial);
                  mSQLFilial := RemoveCaracter('PagarReceber '       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber '       , mSQLFilial);
                  mSQLFilial := RemoveCaracter('PagarReceberBaixas ' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceberBaixas ' , mSQLFilial);
                  tFluxo.SQL.Add('UNION ALL');
                  tFluxo.SQL.Add(mSQLFilial);
               End;
               tEmpresas.Next;
         End;
      End;

      tFluxo.SQL.Add('UPDATE #TEMP SET Despesas_Total = Total_Emprestimos + Despesas_Fixas + Despesas_NFixas + Despesas_COMEX + Despesas_Outras + Previsao_Nac,');
      tFluxo.SQL.Add('                 Receitas_Total = Previsao_Fat + Receitas_Outras + CAR');
      tFluxo.SQL.Add('UPDATE #TEMP SET Saldo_Mes = Receitas_Total - Despesas_Total');

      tFluxo.SQL.Add('SELECT Ano,');
      tFluxo.SQL.Add('       Mes,');
      tFluxo.SQL.Add('       Nome_Mes,');
      tFluxo.SQL.Add('       Total_Emprestimos = SUM(Total_Emprestimos),');
      tFluxo.SQL.Add('       Despesas_Fixas    = SUM(Despesas_Fixas),');
      tFluxo.SQL.Add('       Despesas_NFixas   = SUM(Despesas_NFixas),');
      tFluxo.SQL.Add('       Despesas_COMEX    = SUM(Despesas_COMEX),');
      tFluxo.SQL.Add('       Despesas_Outras   = SUM(Despesas_Outras),');
      tFluxo.SQL.Add('       Previsao_Nac      = SUM(Previsao_Nac),');
      tFluxo.SQL.Add('       Despesas_Total    = SUM(Despesas_Total),');
      tFluxo.SQL.Add('       Previsao_Fat      = SUM(Previsao_Fat),');
      tFluxo.SQL.Add('       CAR               = SUM(CAR),');
      tFluxo.SQL.Add('       Receitas_Outras   = SUM(Receitas_Outras),');
      tFluxo.SQL.Add('       Receitas_Total    = SUM(Receitas_Total),');
      tFluxo.SQL.Add('       Saldo_Mes         = SUM(Saldo_Mes)');
      tFluxo.SQL.Add('FROM #TEMP');
      tFluxo.SQL.Add('GROUP BY Ano, Mes, Nome_Mes');
      tFluxo.SQL.Add('ORDER BY Ano, Mes');
      tFluxo.SQL.Add('DROP TABLE #TEMP');
      tFluxo.ParamByName('pTaxa').Value     := cTaxa.Value;
      //tFluxo.SQL.SaveToFile('c:\temp\FluxoCaixa.SQL');
      tFluxo.Open;
      
      Dados.Empresas.SQL.Clear;
      Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
      Dados.Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
      Dados.Empresas.Open;

      pSaldoAcum.Value := tFluxo.FieldByName('Saldo_Mes').AsCurrency;
      lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á '+cDataFim.Text;

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
 //        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rFluxo.Reset;
         rFluxo.Print;
      end else begin
         ExportaEXCEL;
      End;   

      Screen.Cursor := crDefault;
end;

procedure TImpressao_Financeiros_FluxoCaixa.tFluxoAfterScroll(DataSet: TDataSet);
begin
      pSaldoAcum.Value := pSaldoAcum.Value + tFluxo.FieldByName('Saldo_Mes').AsCurrency;
end;

// Envia informações para o excel.
procedure TImpressao_Financeiros_FluxoCaixa.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
   mSaldoAcum: Real;
   mTotalB,
   mTotalC,
   mTotalD,
   mTotalE,
   mTotalF,
   mTotalG,
   mTotalH,
   mTotalI,
   mTotalJ,
   mTotalK,
   mTotalL,
   mTotalM: Real;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tFluxo.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');

      mPlanilha.WorkBooks.add(1);

      mPlanilha.Visible := false;
      
      mPlanilha.Range['A4','N4'].Interior.Color    := rgb(184, 204, 228);
      mPlanilha.Range['A4','N4'].Interior.Pattern  := 1;
      mPlanilha.Range['A4','N4'].Font.Bold         := true;
      mPlanilha.Range['A4','N4'].Font.Color        := clBlack;
      mPlanilha.Range['A4','N4'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A4','N4'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['A4','N4'].Borders.Color     := RGB(0,0,0);

      mPlanilha.Cells[04,01] := 'MES/ANO';
      mPlanilha.Cells[04,02] := 'EMPRESTIMOS (-)';
      mPlanilha.Cells[04,03] := 'DESP. ADM FIXAS (-)';
      mPlanilha.Cells[04,04] := 'DESP. ADM VARIAVEIS (-)';
      mPlanilha.Cells[04,05] := 'PREV. NACION. (-)';
      mPlanilha.Cells[04,06] := 'DESP. COMEX (-)';
      mPlanilha.Cells[04,07] := 'OUTRAS DESP. (-)';
      mPlanilha.Cells[04,08] := 'TOTAIS DESP.';
      mPlanilha.Cells[04,09] := 'PREV. RECEB. (+)';
      mPlanilha.Cells[04,10] := 'CAR';
      mPlanilha.Cells[04,11] := 'OUTRAS REC. (+)';
      mPlanilha.Cells[04,12] := 'TOTAL RECEITAS';
      mPlanilha.Cells[04,13] := 'SALDO NO MÊS';
      mPlanilha.Cells[04,14] := 'SALDO ACUM.';

      mPlanilha.Range['A4','N4'].HorizontalAlignment := 3;
      mPlanilha.Range['A4','N4'].VerticalAlignment   := 2;
      mPlanilha.Range['A4','N4'].Font.Size           := 10;
      
      mLinha     := 5;

      While (not tFluxo.Eof) and (not Funcoes.Cancelado) do Begin
            mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Size      := 10;
            mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['H'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Interior.Color := RGB(242, 221, 220);
            mPlanilha.Range['L'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color := RGB(242, 221, 220);
            mPlanilha.Range['M'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color := RGB(215, 228, 188);
            mPlanilha.Range['N'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Interior.Color := RGB(215, 228, 188);
            mPlanilha.Range['B'+InttoStr(mLinha),'N'+InttoStr(mLinha)].NumberFormat := '#.##0,00_);(#.##0,00)';

            mSaldoAcum := mSaldoAcum + tFluxo.FieldByName('Saldo_Mes').AsCurrency;

            mPlanilha.Cells[mLinha,01] := tFluxo.FieldByName('Nome_Mes').AsString + '/'+tFluxo.FieldByName('Ano').AsString;
            mPlanilha.Cells[mLinha,02] := tFluxo.FieldByName('Total_Emprestimos').Value;
            mPlanilha.Cells[mLinha,03] := tFluxo.FieldByName('Despesas_Fixas').Value;
            mPlanilha.Cells[mLinha,04] := tFluxo.FieldByName('Despesas_NFixas').Value;
            mPlanilha.Cells[mLinha,05] := tFluxo.FieldByName('Previsao_Nac').Value;
            mPlanilha.Cells[mLinha,06] := tFluxo.FieldByName('Despesas_COMEX').Value;
            mPlanilha.Cells[mLinha,07] := tFluxo.FieldByName('Despesas_Outras').Value;
            mPlanilha.Cells[mLinha,08] := tFluxo.FieldByName('Despesas_Total').Value;
            mPlanilha.Cells[mLinha,09] := tFluxo.FieldByName('Previsao_Fat').Value;
            mPlanilha.Cells[mLinha,10] := tFluxo.FieldByName('CAR').Value;
            mPlanilha.Cells[mLinha,11] := tFluxo.FieldByName('Receitas_Outras').Value;
            mPlanilha.Cells[mLinha,12] := tFluxo.FieldByName('Receitas_Total').Value;
            mPlanilha.Cells[mLinha,13] := tFluxo.FieldByName('Saldo_Mes').Value;
            mPlanilha.Cells[mLinha,14] := mSaldoAcum;

            mTotalB := mTotalB + tFluxo.FieldByName('Total_Emprestimos').AsCurrency;
            mTotalC := mTotalC + tFluxo.FieldByName('Despesas_Fixas').AsCurrency;
            mTotalD := mTotalD + tFluxo.FieldByName('Despesas_NFixas').AsCurrency;
            mTotalE := mTotalE + tFluxo.FieldByName('Previsao_Nac').AsCurrency;
            mTotalF := mTotalF + tFluxo.FieldByName('Despesas_COMEX').AsCurrency;
            mTotalG := mTotalG + tFluxo.FieldByName('Despesas_Outras').AsCurrency;
            mTotalH := mTotalH + tFluxo.FieldByName('Despesas_Total').AsCurrency;
            mTotalI := mTotalI + tFluxo.FieldByName('Previsao_Fat').AsCurrency;
            mTotalJ := mTotalJ + tFluxo.FieldByName('CAR').AsCurrency;
            mTotalK := mTotalK + tFluxo.FieldByName('Receitas_Outras').AsCurrency;
            mTotalL := mTotalL + tFluxo.FieldByName('Receitas_Total').AsCurrency;
            mTotalM := mTotalM + tFluxo.FieldByName('Saldo_Mes').AsCurrency;

            tFluxo.Next;
            
            Inc(mLinha);
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      end;

      mPlanilha.Cells[mLinha,01] := 'TOTAL';
      mPlanilha.Cells[mLinha,02] := mTotalB;
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
      mPlanilha.Cells[mLinha,13] := mTotalM;

      mPlanilha.Range['B'+InttoStr(mLinha),'M'+InttoStr(mLinha)].NumberFormat      := '#.##0,00_);(#.##0,00)';
      mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size         := 10;
      mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Bold         := true;
      mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 153);

      //Fecha o Excel.
      If Funcoes.Cancelado = true then begin
//         KillTask('Excel.exe');    // Microsoft Excel
         mPlanilha.Free;
         mPlanilha.Destroy;
      End;

      mPlanilha.Columns.Autofit;

      Inc(mLinha);
      mPlanilha.Cells[1,01]                          := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
      mPlanilha.Range['A1','A1'].Font.Size           := 14;
      mPlanilha.Range['A1','A1'].Font.Bold           := true;
      mPlanilha.Range['A1','N1'].Mergecells          := True;
      mPlanilha.Range['A1','N1'].HorizontalAlignment := 3;
      mPlanilha.Cells[2,01]                          := 'FLUXO DE CAIXA (Mensal)';
      mPlanilha.Range['A2','A2'].Font.Size           := 12;
      mPlanilha.Range['A2','N2'].Mergecells          := True;
      mPlanilha.Range['A2','N2'].HorizontalAlignment := 3;
      mPlanilha.Cells[3,01]                          := 'Período '+cDataIni.Text + ' á ' + cDataFim.Text;
      mPlanilha.Range['A3','A3'].Font.Size           := 12;
      mPlanilha.Range['A3','N3'].Mergecells          := True;
      mPlanilha.Range['A3','N3'].HorizontalAlignment := 3;

      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;



procedure TImpressao_Financeiros_FluxoCaixa.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI            := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date   := aINI.ReadDate   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXA', 'DataIni'   , Date );
      cDataFim.Date   := aINI.ReadDate   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXA', 'DataFim'   , Date );
      cTaxa.Value     := aINI.ReadFloat  ('IMPRESSAO_FINANCEIRO_FLUXOCAIXA', 'Taxa'      , 0 );
      cExcel.Checked  := aINI.ReadBool   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXA', 'Excel'     , false );
      cConsol.Checked := aINI.ReadBool   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXA', 'Consolidar', false );
      aINI.Free;
end;

end.
