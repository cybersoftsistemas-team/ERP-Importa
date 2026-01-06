unit frmImpressao_Financeiros_FluxoCaixaDetalhado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppParameter, ppCtrls, ppBands, ppVar,
  ppReport, ppDBPipe, DBAccess, MSAccess, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls, IniFiles, Funcoes, ComObj,
  RxToolEdit, ppDesignLayer, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_Financeiros_FluxoCaixaDetalhado = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cConsol: TCheckBox;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cExcel: TCheckBox;
    tFluxo: TMSQuery;
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
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppDBText18: TppDBText;
    ppDBText7: TppDBText;
    ppDBText16: TppDBText;
    ppDBText15: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppParameterList1: TppParameterList;
    tEmpresas: TMSQuery;
    dstFluxo: TDataSource;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    lSaldo: TppVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppDBCalc2: TppDBCalc;
    ppVariable1: TppVariable;
    ppLine2: TppLine;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure lSaldoCalc(Sender: TObject; var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure ExportaEXCEL;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Financeiros_FluxoCaixaDetalhado: TImpressao_Financeiros_FluxoCaixaDetalhado;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_Financeiros_FluxoCaixaDetalhado.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'DataIni'   , cDataIni.Date);
      aINI.WriteDate ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'DataFim'   , cDataFim.Date);
      aINI.WriteBool ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'Excel'     , cExcel.Checked);
      aINI.WriteBool ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'Consolidar', cConsol.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);
      
      Impressao_Financeiros_FluxoCaixaDetalhado.Release;
      Impressao_Financeiros_FluxoCaixaDetalhado := nil;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado.bImprimirClick(Sender: TObject);
Var
   mSQLMatriz,
   mSQLFilial: WideString;
begin
      Screen.Cursor := crSQLWait;

      tFluxo.SQL.Clear;
      tFluxo.SQL.Add('SELECT Data_Vencimento,');
      tFluxo.SQL.Add('       CASE ');
      tFluxo.SQL.Add('           WHEN Fornecedor <> 0    THEN (SELECT Nome FROM Fornecedores AS FRN WHERE(PR.Fornecedor = FRN.Codigo))');
      tFluxo.SQL.Add('           WHEN Cliente    <> 0    THEN (SELECT Nome FROM Clientes     AS CLI WHERE(PR.Cliente = CLI.Codigo))');
      tFluxo.SQL.Add('           WHEN Orgao      <> '''' THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos AS OP WHERE(PR.Orgao = OP.Codigo))');
      tFluxo.SQL.Add('       END AS Beneficiario, ');
      If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
         tFluxo.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira AS CF WHERE(PR.Classificacao = CF.Codigo)) AS Classificacao,');
      end else begin
         tFluxo.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira AS CF WHERE(PR.Classificacao = CF.Codigo)) AS Classificacao,');
      End;
      tFluxo.SQL.Add('       Processo, ');
      tFluxo.SQL.Add('       Centro_Custo   = (SELECT Descricao FROM CentroCusto WHERE Codigo = Centro_Custo),');
      tFluxo.SQL.Add('       CASE WHEN Tipo = ''P'' THEN Valor_Total - ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero), 0) ELSE 0 END AS Debito,');
      tFluxo.SQL.Add('       CASE WHEN Tipo = ''R'' THEN Valor_Total - ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero), 0) ELSE 0 END AS Credito,');
      tFluxo.SQL.Add('       Tipo = ''PG''');
      tFluxo.SQL.Add('INTO   #TEMP');
      tFluxo.SQL.Add('FROM   PagarReceber PR');
      tFluxo.SQL.Add('WHERE  Data_Vencimento BETWEEN :pDataIni AND :pDataFim');
      tFluxo.SQL.Add('AND    ISNULL(Provisorio, 0) = 0');
      tFluxo.SQL.Add('AND    ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero), 0) <> PR.Valor_Total');
      tFluxo.SQL.Add('UNION ALL');
      tFluxo.SQL.Add('SELECT Data_PrevRegistro,');
      tFluxo.SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE Codigo = ''SRF'') AS Beneficiario,');
      tFluxo.SQL.Add('       ''PREVISÃO DE REGISTRO'' AS Classificacao,');
      tFluxo.SQL.Add('       Processo,');
      tFluxo.SQL.Add('       Centro_Custo = '''',');
      tFluxo.SQL.Add('       Fator_SISCOMEXValorReal AS Debito,');
      tFluxo.SQL.Add('       CAST(0 AS DECIMAL(18,2)) AS Credito,');
      tFluxo.SQL.Add('       Tipo = ''RG''');
      tFluxo.SQL.Add('FROM   ProcessosDocumentos PD');
      tFluxo.SQL.Add('WHERE  Data_PrevRegistro BETWEEN :pDataIni AND :pDataFim');
      tFluxo.SQL.Add('AND    Data_Encerramento IS NULL');
      tFluxo.SQL.Add('AND    Desativado <> 1');
      tFluxo.SQL.Add('UNION ALL');
      tFluxo.SQL.Add('SELECT Data_PrevFrete,');
      tFluxo.SQL.Add('       (SELECT Nome FROM Fornecedores WHERE Codigo = PD.Previsao_FreteTransportador) AS Beneficiario,');
      tFluxo.SQL.Add('       ''PREVISÃO DE FRETE INTERNACIONAL'' AS Classificacao,');
      tFluxo.SQL.Add('       Processo,');
      tFluxo.SQL.Add('       Centro_Custo = '''',');
      tFluxo.SQL.Add('       Fator_FreteValorReal AS Debito,');
      tFluxo.SQL.Add('       CAST(0 AS DECIMAL(18,2)) AS Credito,');
      tFluxo.SQL.Add('       Tipo = ''FI''');
      tFluxo.SQL.Add('FROM   ProcessosDocumentos PD');
      tFluxo.SQL.Add('WHERE  Data_PrevFrete BETWEEN :pDataIni AND :pDataFim');
      tFluxo.SQL.Add('AND    Data_Encerramento IS NULL');
      tFluxo.SQL.Add('AND    Desativado <> 1');
      tFluxo.SQL.Add('UNION ALL');
      tFluxo.SQL.Add('SELECT (Data_PrevFaturamento + Condicao_Pagamento),');
      tFluxo.SQL.Add('       (SELECT Nome FROM Clientes WHERE Codigo = PD.Cliente) AS Beneficiario,');
      tFluxo.SQL.Add('       ''PREVISÃO DE RECEBIMENTO'' AS Classificacao,');
      tFluxo.SQL.Add('       Processo,');
      tFluxo.SQL.Add('       Centro_Custo = '''',');
      tFluxo.SQL.Add('       CAST(0 AS DECIMAL(18,2)) AS Debito,');
      tFluxo.SQL.Add('       Fator_FaturamentoValorReal AS Credito,');
      tFluxo.SQL.Add('       Tipo = ''FT'' ');
      tFluxo.SQL.Add('FROM   ProcessosDocumentos PD');
      tFluxo.SQL.Add('WHERE  (Data_PrevFaturamento+Condicao_Pagamento) BETWEEN :pDataIni AND :pDataFim');
      tFluxo.SQL.Add('AND    Data_Encerramento IS NULL');
      tFluxo.SQL.Add('AND    Desativado <> 1');
      tFluxo.SQL.Add('UNION ALL');
      tFluxo.SQL.Add('SELECT Data_PrevArmazem,');
      tFluxo.SQL.Add('       (SELECT Nome FROM Fornecedores WHERE Codigo = PD.Previsao_ArmazemFornecedor) AS Beneficiario,');
      tFluxo.SQL.Add('       ''PREVISÃO DE ARMAZENAGEM'' AS Classificacao,');
      tFluxo.SQL.Add('       Processo,');
      tFluxo.SQL.Add('       Centro_Custo = '''',');
      tFluxo.SQL.Add('       Fator_ArmazemValorReal AS Debito,');
      tFluxo.SQL.Add('       CAST(0 AS DECIMAL(18,2)) AS Credito,');
      tFluxo.SQL.Add('       Tipo = ''PA''');
      tFluxo.SQL.Add('FROM   ProcessosDocumentos PD');
      tFluxo.SQL.Add('WHERE  Data_PrevArmazem BETWEEN :pDataIni AND :pDataFim');
      tFluxo.SQL.Add('AND    Data_Encerramento IS NULL');
      tFluxo.SQL.Add('AND    Desativado <> 1');

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
         mSQLMatriz := RemoveCaracter('INTO   #TEMP', '', mSQLMatriz);
         While not tEmpresas.Eof do begin
               If Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Dados.Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                  mSQLFilial := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos', mSQLMatriz);
                  mSQLFilial := RemoveCaracter('Fornecedores '      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Fornecedores '      , mSQLFilial);
                  mSQLFilial := RemoveCaracter('Clientes '          , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Clientes '          , mSQLFilial);
                  mSQLFilial := RemoveCaracter('PagarReceberBaixas' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceberBaixas' , mSQLFilial);
                  mSQLFilial := RemoveCaracter('PagarReceber '      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber ' , mSQLFilial);
                  tFluxo.SQL.Add('UNION ALL');
                  tFluxo.SQL.Add(mSQLFilial);
               End;
               tEmpresas.Next;
         End;
      End;

      tFluxo.SQL.Add('SELECT * FROM #TEMP');
      tFluxo.SQL.Add('ORDER BY Data_Vencimento, Beneficiario');
      tFluxo.SQL.Add('DROP TABLE #TEMP');
      tFluxo.ParamByName('pDataIni').AsDate := cDataIni.Date;
      tFluxo.ParamByName('pDataFim').AsDate := cDataFim.Date;
      //tFluxo.SQL.SaveToFile('c:\temp\Fluxo_Detalhado.sql');
      tFluxo.Open;

      Dados.Empresas.SQL.Clear;
      Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
      Dados.Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
      Dados.Empresas.Open;

      lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á '+cDataFim.Text;

      If cConsol.Checked = false then
         lTitulo.Caption := 'FLUXO DE CAIXA Detalhado'
      else
         lTitulo.Caption := 'FLUXO DE CAIXA Detalhado (Consolidado)';

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rFluxo.Reset;
         rFluxo.Print;
      end else begin
         ExportaEXCEL;
      End;   

      Screen.Cursor := crDefault;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado.lSaldoCalc(Sender: TObject; var Value: Variant);
begin
     Value := Value - tFluxo.FieldByName('Debito').AsCurrency + tFluxo.FieldByName('Credito').AsCurrency; 
end;

// Envia informações para o excel.
procedure TImpressao_Financeiros_FluxoCaixaDetalhado.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
   mSaldo,
   mTotalDeb,
   mTotalCred : Real;
   mData : TDate;
   mCor : Variant;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tFluxo.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');

      mPlanilha.WorkBooks.add(1);

      mPlanilha.Visible := false;
      
      mPlanilha.Range['A4','H4'].Interior.Color    := rgb(184, 204, 228);
      mPlanilha.Range['A4','H4'].Interior.Pattern  := 1;
      mPlanilha.Range['A4','H4'].Font.Bold         := true;
      mPlanilha.Range['A4','H4'].Font.Color        := clBlack;
      mPlanilha.Range['A4','H4'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A4','H4'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['A4','H4'].Borders.Color     := RGB(0,0,0);

      mPlanilha.Cells[04,01] := 'VENCTO';
      mPlanilha.Cells[04,02] := 'BENEFICÁRIO';
      mPlanilha.Cells[04,03] := 'CLASSIFICAÇÃO FINANCEIRA';
      mPlanilha.Cells[04,04] := 'PROCESSO';
      mPlanilha.Cells[04,05] := 'CENTRO CUSTO';
      mPlanilha.Cells[04,06] := 'DÉBITO';
      mPlanilha.Cells[04,07] := 'CREDITO';
      mPlanilha.Cells[04,08] := 'SALDO';

      mPlanilha.Range['A4','H4'].HorizontalAlignment := 3;
      mPlanilha.Range['A4','H4'].VerticalAlignment   := 2;
      mPlanilha.Range['A4','H4'].Font.Size           := 10;
      
      mLinha := 5;
      mData  := tFluxo.FieldByName('Data_Vencimento').AsDateTime;
      mCor   := clWhite;

      While (not tFluxo.Eof) and (not Funcoes.Cancelado) do Begin
            mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Color     := clSilver; //RGB(0,0,0);
            mPlanilha.Range['F'+InttoStr(mLinha),'H'+InttoStr(mLinha)].NumberFormat      := '#.##0,00_);(#.##0,00)';
            mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].NumberFormat      := 'dd/mm/aaaa';
            mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Interior.Color    := mCor;

            mSaldo := mSaldo - tFluxo.FieldByName('Debito').AsCurrency + tFluxo.FieldByName('Credito').AsCurrency;

            mPlanilha.Cells[mLinha,01] := tFluxo.FieldByName('Data_Vencimento').Value;
            mPlanilha.Cells[mLinha,02] := tFluxo.FieldByName('Beneficiario').AsString;
            mPlanilha.Cells[mLinha,03] := tFluxo.FieldByName('Classificacao').AsString;
            mPlanilha.Cells[mLinha,04] := tFluxo.FieldByName('Processo').AsString;
            mPlanilha.Cells[mLinha,05] := tFluxo.FieldByName('Centro_Custo').AsString;
            mPlanilha.Cells[mLinha,06] := tFluxo.FieldByName('Debito').Value;
            mPlanilha.Cells[mLinha,07] := tFluxo.FieldByName('Credito').Value;
            mPlanilha.Cells[mLinha,08] := mSaldo;

            mTotalDeb  := mTotalDeb  + tFluxo.FieldByName('Debito').AsCurrency;
            mTotalCred := mTotalCred + tFluxo.FieldByName('Credito').AsCurrency;

            tFluxo.Next;

            If tFluxo.FieldByName('Data_Vencimento').AsDateTime <> mData then begin
               mData := tFluxo.FieldByName('Data_Vencimento').AsDateTime;
               If mCor = clWhite then
                  mCor  := RGB(242, 221, 220)
               else
                  mCor  := clWhite;
            End;

            Inc(mLinha);

            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      end;

      mPlanilha.Cells[mLinha,05] := 'TOTAL';
      mPlanilha.Cells[mLinha,06] := mTotalDeb;
      mPlanilha.Cells[mLinha,07] := mTotalCred;

      mPlanilha.Range['E'+InttoStr(mLinha),'H'+InttoStr(mLinha)].NumberFormat      := '#.##0,00_);(#.##0,00)';
      mPlanilha.Range['E'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Bold         := true;
      mPlanilha.Range['E'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Size         := 10;
      mPlanilha.Range['E'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 153);
      mPlanilha.Range['E'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;

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
      mPlanilha.Range['A1','H1'].Mergecells          := True;
      mPlanilha.Range['A1','H1'].HorizontalAlignment := 3;
      
      If cConsol.Checked = false then
         mPlanilha.Cells[2,01] := 'FLUXO DE CAIXA Detalhado'
      else
         mPlanilha.Cells[2,01] := 'FLUXO DE CAIXA Detalhado (Consolidado)';

      mPlanilha.Range['A2','A2'].Font.Size           := 12;
      mPlanilha.Range['A2','H2'].Mergecells          := True;
      mPlanilha.Range['A2','H2'].HorizontalAlignment := 3;
      mPlanilha.Cells[3,01]                          := 'Período '+cDataIni.Text + ' á ' + cDataFim.Text;
      mPlanilha.Range['A3','A3'].Font.Size           := 12;
      mPlanilha.Range['A3','H3'].Mergecells          := True;
      mPlanilha.Range['A3','H3'].HorizontalAlignment := 3;

      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;


procedure TImpressao_Financeiros_FluxoCaixaDetalhado.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI            := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date   := aINI.ReadDate   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'DataIni'   , Date );
      cDataFim.Date   := aINI.ReadDate   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'DataFim'   , Date );
      cExcel.Checked  := aINI.ReadBool   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'Excel'     , false );
      cConsol.Checked := aINI.ReadBool   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'Consolidar', false );
      aINI.Free;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado.FormCreate(
  Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.
