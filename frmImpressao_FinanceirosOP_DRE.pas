unit frmImpressao_FinanceirosOP_DRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppDBPipe, DB, ppParameter, ppCtrls, ppVar, ppBands, ppPrnabl,
  ppReport, DBAccess, MSAccess, Vcl.StdCtrls, RXSpin, Vcl.ExtCtrls, RXCtrls, Dateutils, Funcoes, IniFiles, ComObj, ppDB, ppDesignLayer, ppClass, ppCache, ppComm, ppRelatv, ppProd, MemDS, Vcl.Mask;

type
  TImpressao_FinanceirosOP_DRE = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    cZebrado: TCheckBox;
    cExcel: TCheckBox;
    cTipo: TRadioGroup;
    StaticText8: TStaticText;
    cAno: TRxSpinEdit;
    cMovimento: TCheckBox;
    tMovimento: TMSQuery;
    rDRE: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    ppShape12: TppShape;
    ppLabel15: TppLabel;
    lPeriodo: TppLabel;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    rRelacaoProcessos: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine10: TppLine;
    ppParameterList1: TppParameterList;
    dstMovimento: TDataSource;
    pEmpresas: TppDBPipeline;
    pMovimento: TppDBPipeline;
    StaticText1: TStaticText;
    cMes: TRxSpinEdit;
    lFaixa: TppShape;
    ppLine1: TppLine;
    cModo: TRadioGroup;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    tFaturamento: TMSQuery;
    lFaturamento: TppVariable;
    lPercFaturamento: TppVariable;
    lCusto: TppVariable;
    lPercCusto: TppVariable;
    ppLine2: TppLine;
    lLucroBruto: TppVariable;
    lPercLucroBruto: TppVariable;
    lPercItem: TppVariable;
    tCusto: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    iLogo: TppImage;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_DRE: TImpressao_FinanceirosOP_DRE;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_DRE.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FinanceirosOP_DRE.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_DRE.bImprimirClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      
      Dados.Configuracao.Open;

      Dados.Empresas.SQL.Clear;
      Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
      Dados.Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
      Dados.Empresas.Open;

      // Faturamento do mês.
      tFaturamento.SQL.Clear;
      tFaturamento.SQL.Add('SELECT SUM(Valor_TotalNota) AS Faturamento');
      tFaturamento.SQL.Add('FROM   NotasFiscais');
      tFaturamento.SQL.Add('WHERE(YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes)');
      tFaturamento.SQL.Add('     AND (Cancelada <> 1)');
      tFaturamento.SQL.Add('     AND (SELECT DISTINCT Gerar_Financeiro FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1');
      tFaturamento.ParamByName('pAno').AsInteger := cAno.AsInteger;
      tFaturamento.ParamByName('pMes').AsInteger := cMes.AsInteger;
      tFaturamento.Open;

      //Custo do mês.
      tCusto.SQL.Clear;
      tCusto.SQL.Add('SELECT (SELECT SUM(ROUND(Valor_Total+Total_IPI+Valor_ICMSOper+((Valor_PIS+Valor_COFINS)*Quantidade), 2))  FROM NotasItens NI2 WHERE(NI2.Codigo_Mercadoria = NI.Codigo_Mercadoria)');
      tCusto.SQL.Add('        AND (YEAR(NI2.Data) = :pAno AND MONTH(NI2.Data) = :pMes) AND (NI2.Saida_Entrada = 0) AND (NI2.Cancelada <> 1))/');
      tCusto.SQL.Add('       (SELECT SUM(Quantidade) FROM NotasItens NI2 WHERE(NI2.Codigo_Mercadoria = NI.Codigo_Mercadoria) AND (YEAR(NI2.Data) = :pAno AND MONTH(NI2.Data) = :pMes) AND (NI2.Saida_Entrada = 0) AND (NI2.Cancelada <> 1))');
      tCusto.SQL.Add('       AS Total');
      tCusto.SQL.Add('INTO #TEMP');
      tCusto.SQL.Add('FROM NotasItens NI');
      tCusto.SQL.Add('WHERE (YEAR(NI.Data) = :pAno AND MONTH(NI.Data) = :pMes)');
      tCusto.SQL.Add('     AND (NI.Saida_Entrada = 1)');
      tCusto.SQL.Add('     AND (NI.Cancelada <> 1)');
      tCusto.SQL.Add('     AND (SELECT DISTINCT Gerar_Financeiro FROM TipoNota WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais WHERE(Numero = Nota) AND (Data_Emissao = Data)))) = 1');
      tCusto.SQL.Add('SELECT SUM(Total) AS Total_Custo FROM #TEMP');
      tCusto.SQL.Add('DROP TABLE #Temp');
      tCusto.ParamByName('pAno').AsInteger := cAno.AsInteger;
      tCusto.ParamByName('pMes').AsInteger := cMes.AsInteger;
      //tCusto.SQL.SavetoFile('c:\Temp\Financeiro_DRE_Custo.SQL');
      tCusto.Open;

      tMovimento.SQL.Clear;
      tMovimento.SQL.Add('SELECT Classificacao AS Codigo,');
      tMovimento.SQL.Add('       (SELECT Titulo FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Titulo,');
      If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
         tMovimento.SQL.Add('       (SELECT Codigo+''               ''+Descricao FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Descricao,');
      end else begin
         tMovimento.SQL.Add('       (SELECT Codigo+''               ''+Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = Classificacao)) AS Descricao,');
      End;
      tMovimento.SQL.Add('       ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(Numero = PagarReceber.Numero) AND (YEAR(Data) = :pAno) AND (MONTH(Data) = :pMes)),0) AS Total_Mes');
      tMovimento.SQL.Add('INTO   #TempBaixas');
      tMovimento.SQL.Add('FROM   PagarReceber');
      tMovimento.SQL.Add('WHERE ((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(Numero = PagarReceber.Numero) AND (YEAR(Data) = :pAno) AND (MONTH(Data) = :pMes)) > 0)');
      tMovimento.SQL.Add('      AND ((SELECT Desativada FROM ClassificacaoFinanceira WHERE(Codigo = Classificacao)) <> 1)');

      If cTipo.ItemIndex = 0 then tMovimento.SQL.Add(' AND (Tipo = ''R'')');
      If cTipo.ItemIndex = 1 then tMovimento.SQL.Add(' AND (Tipo = ''P'')');

      tMovimento.SQL.Add('SELECT Codigo,');
      tMovimento.SQL.Add('       Titulo,');
      tMovimento.SQL.Add('       Descricao,');
      tMovimento.SQL.Add('       SUM(Total_Mes) AS Total_Mes');
      tMovimento.SQL.Add('INTO #TempTotal');
      tMovimento.SQL.Add('FROM #TempBaixas');
      tMovimento.SQL.Add('GROUP BY Codigo, Titulo, Descricao');

      tMovimento.SQL.Add('SELECT Codigo,');
      tMovimento.SQL.Add('       Titulo,');
      tMovimento.SQL.Add('       Codigo + ''               ''+Descricao AS Descricao,');
      tMovimento.SQL.Add('       (SELECT SUM(Total_Mes) FROM #TempBaixas WHERE(Codigo LIKE LTRIM(RTRIM(ClassificacaoFinanceira.Codigo))+''%'')) AS Total_Mes');
      tMovimento.SQL.Add('INTO   #TempTitulos');
      tMovimento.SQL.Add('FROM   ClassificacaoFinanceira');
      tMovimento.SQL.Add('WHERE (Titulo = 1) AND (Desativada <> 1) ');
      If cTipo.ItemIndex = 0 then tMovimento.SQL.Add(' AND (Tipo = ''R'')');
      If cTipo.ItemIndex = 1 then tMovimento.SQL.Add(' AND (Tipo = ''P'')');

      tMovimento.SQL.Add('SELECT Codigo,');
      tMovimento.SQL.Add('       Titulo,');
      tMovimento.SQL.Add('       Codigo + ''               ''+Descricao AS Descricao,');
      tMovimento.SQL.Add('       CAST(0 AS money) AS Total_Mes');
      tMovimento.SQL.Add('INTO   #TempZeradas');
      tMovimento.SQL.Add('FROM   ClassificacaoFinanceira');
      tMovimento.SQL.Add('WHERE (Titulo = 0) AND (Desativada <> 1) AND (Codigo NOT IN((SELECT DISTINCT Codigo FROM #TempTotal))) ');
      If cTipo.ItemIndex = 0 then tMovimento.SQL.Add(' AND (Tipo = ''R'')');
      If cTipo.ItemIndex = 1 then tMovimento.SQL.Add(' AND (Tipo = ''P'')');

      If cModo.ItemIndex = 0 then begin
         tMovimento.SQL.Add('SELECT #TempTotal.* FROM #TempTotal');
         tMovimento.SQL.Add('UNION ALL');
      End;

      If (cModo.ItemIndex = 0) and (cMovimento.Checked = true) then begin
         tMovimento.SQL.Add('SELECT #TempZeradas.* FROM #TempZeradas');
         tMovimento.SQL.Add('UNION ALL');
      End;

      tMovimento.SQL.Add('SELECT #TempTitulos.* FROM #TempTitulos');
      tMovimento.SQL.Add('ORDER BY Descricao, Titulo Desc');
      tMovimento.ParamByName('pAno').AsInteger := cAno.AsInteger;
      tMovimento.ParamByName('pMes').AsInteger := cMes.AsInteger;
      //tMovimento.SQL.SavetoFile('c:\Temp\Financeiro_DRE_Movimento.SQL');
      tMovimento.Open;

      Screen.Cursor := crDefault;

      If cTipo.ItemIndex = 0 then lPeriodo.Caption := Trim(NomeMes(cMes.AsInteger))+' de '+cAno.Text + ' (Receitas)';
      If cTipo.ItemIndex = 1 then lPeriodo.Caption := Trim(NomeMes(cMes.AsInteger))+' de '+cAno.Text + ' (Despesas)';
      If cTipo.ItemIndex = 2 then lPeriodo.Caption := Trim(NomeMes(cMes.AsInteger))+' de '+cAno.Text + ' (Receitas e Despesas)';

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rDRE.Print;
         rDRE.FreeOnRelease;
         rDRE.Reset;
      end else begin
         ExportaEXCEL;
      End;
end;

procedure TImpressao_FinanceirosOP_DRE.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI               := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cTipo.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_DRE', 'Tipo'     , 2 );
      cModo.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_DRE', 'Modo'     , 0 );
      cAno.AsInteger     := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_DRE', 'Ano'      , YearOf(Date) );
      cMes.AsInteger     := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_DRE', 'Mes'      , MonthOf(Date) );
      cMovimento.Checked := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_DRE', 'Movimento', true );
      cZebrado.Checked   := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_DRE', 'Zebrado'  , false);
      cExcel.Checked     := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_DRE', 'Excel'    , false);
      aINI.Free;

      cAno.AsInteger := YearOf(Date);
      cMes.AsInteger := MonthOf(Date);
end;

procedure TImpressao_FinanceirosOP_DRE.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If cZebrado.Checked = True then
         lFaixa.Visible := not lFaixa.Visible
      else
         lFaixa.Visible := False;

      ppDBText11.Font.Style := [];
      ppDBText4.Font.Style  := [];

      If tMovimento.FieldByName('Titulo').AsBoolean = true then begin
         ppDBText11.Font.Style  := [fsBold];
         ppDBText4.Font.Style  := [fsBold];
      End;

      If (tMovimento.FieldByName('Titulo').AsBoolean = true) and (tMovimento.FieldByName('Total_Mes').AsCurrency > 0) and (lFaturamento.Value > 0) then
         lPercItem.Value := (tMovimento.FieldByName('Total_Mes').AsCurrency/lFaturamento.Value) * 100
      else
         lPercItem.Value := 0;
end;

procedure TImpressao_FinanceirosOP_DRE.ppHeaderBand1BeforePrint(Sender: TObject);
begin
      lFaturamento.Value     := tFaturamento.FieldByName('Faturamento').AsCurrency;
      lPercFaturamento.Value := 100;
      lCusto.Value           := tCusto.FieldByName('Total_Custo').AsCurrency;
      lPercCusto.Value       := (lCusto.Value / lFaturamento.Value) * 100;
      lLucroBruto.Value      := lFaturamento.Value - lCusto.Value;
      lPercLucroBruto.Value  := (lLucroBruto.Value / lFaturamento.Value) * 100;
end;

procedure TImpressao_FinanceirosOP_DRE.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_DRE', 'Ano'      , cAno.AsInteger);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_DRE', 'Mes'      , cMes.AsInteger);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_DRE', 'Tipo'     , cTipo.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_DRE', 'Modo'     , cModo.ItemIndex);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_DRE', 'Movimento', cMovimento.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_DRE', 'Zebrado'  , cZebrado.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_DRE', 'Excel'    , cExcel.Checked);
      aINI.Free;

      Impressao_FinanceirosOP_DRE.Release;
      Impressao_FinanceirosOP_DRE := nil;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_DRE.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
   mZebra   : Boolean;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tMovimento.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible := false;
       mPlanilha.Range['A3','C3'].Interior.Color    := RGB(255, 255, 140);
       mPlanilha.Range['A3','C3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','C3'].Font.Bold         := true;
       mPlanilha.Range['A3','C3'].Font.Color        := clBlack;
       mPlanilha.Range['A3','C3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','C3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','C3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[3,01] := 'DESCRIÇÃO';
       mPlanilha.Cells[3,02] := 'TOTAL';
       mPlanilha.Cells[3,03] := '%';

       mPlanilha.Range['A3','C3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','C3'].VerticalAlignment   := 2;
       mPlanilha.Range['A3','C3'].Font.Size           := 10;

       mLinha   := 4;
       mZebra   := false;

       While (not tMovimento.Eof) and (not Funcoes.Cancelado) do begin
             mPlanilha.Range['A'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Font.Size := 10;

             If tMovimento.FieldByName('Titulo').AsBoolean = true then begin
                mPlanilha.Range['A'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Font.Bold := true;
             End;

             mPlanilha.Cells[mLinha,01] := tMovimento.FieldByName('Descricao').AsString;
             mPlanilha.Cells[mLinha,02] := tMovimento.FieldByName('Total_Mes').AsCurrency;
             mPlanilha.Cells[mLinha,03] := (tMovimento.FieldByName('Total_Mes').AsCurrency / tFaturamento.FieldByName('Faturamento').AsCurrency) * 100;

             mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';
             mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';

             If cZebrado.Checked = true then begin
                If mZebra = true then
                   mPlanilha.Range['A'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Interior.Color := clWhite
                else
                   mPlanilha.Range['A'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);
             End;
             mZebra := not mZebra;

             tMovimento.Next;
             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       Inc(mLinha, 3);
       mPlanilha.Cells[mLinha,01] := 'FATURAMENTO';
       mPlanilha.Cells[mLinha,02] := tFaturamento.FieldByName('Faturamento').AsCurrency;
       mPlanilha.Cells[mLinha,03] := 100;
       mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';

       INC(mLinha);
       mPlanilha.Cells[mLinha,01] := 'CUSTO';
       mPlanilha.Cells[mLinha,02] := tCusto.FieldByName('Total_Custo').AsCurrency;
       mPlanilha.Cells[mLinha,03] := (tCusto.FieldByName('Total_Custo').AsCurrency / tFaturamento.FieldByName('Faturamento').AsCurrency) * 100;
       mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';

       INC(mLinha);
       mPlanilha.Cells[mLinha,01] := 'LUCRO BRUTO';
       mPlanilha.Cells[mLinha,02] := tFaturamento.FieldByName('Faturamento').AsCurrency - tCusto.FieldByName('Total_Custo').AsCurrency;
       mPlanilha.Cells[mLinha,03] := ((tFaturamento.FieldByName('Faturamento').AsCurrency - tCusto.FieldByName('Total_Custo').AsCurrency) / tFaturamento.FieldByName('Faturamento').AsCurrency) * 100;
       mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00_);(#.##0,00)';
       mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);(#.##0,00)';

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
       mPlanilha.Range['A1','C1'].Mergecells := True;
       mPlanilha.Range['A1','C1'].HorizontalAlignment := 3;

       mPlanilha.Cells[2,01] := 'Demonstração do Resultado do Exercício - DRE ('+cAno.Text+')';
       mPlanilha.Range['A2','A2'].Font.Size  := 10;
       mPlanilha.Range['A2','C2'].Mergecells := True;
       mPlanilha.Range['A2','C2'].HorizontalAlignment := 3;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


end.
