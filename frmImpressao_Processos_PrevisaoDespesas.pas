unit frmImpressao_Processos_PrevisaoDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppParameter, ppCtrls, ppBands, ppVar,
  ppReport, ppDBPipe, DBAccess, MSAccess, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls, IniFiles, Funcoes, ComObj,
  RxToolEdit, ppDesignLayer, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv, MemDS;

type
  TImpressao_Processos_PrevisaoDespesas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
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
    ppShape14: TppShape;
    ppLabel17: TppLabel;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText18: TppDBText;
    ppDBText16: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine8: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppParameterList1: TppParameterList;
    tEmpresas: TMSQuery;
    dstFluxo: TDataSource;
    cConsol: TCheckBox;
    cExcel: TCheckBox;
    cPrevisao: TCheckBox;
    ppShape5: TppShape;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    iLogo: TppImage;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure ExportaEXCEL;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_Processos_PrevisaoDespesas: TImpressao_Processos_PrevisaoDespesas;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_Processos_PrevisaoDespesas.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then  Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Processos_PrevisaoDespesas.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_Processos_PrevisaoDespesas.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate ('IMPRESSAO_PROCESSOS_PREVISAODESPESAS', 'DataIni'   , cDataIni.Date);
      aINI.WriteDate ('IMPRESSAO_PROCESSOS_PREVISAODESPESAS', 'DataFim'   , cDataFim.Date);
      aINI.WriteBool ('IMPRESSAO_PROCESSOS_PREVISAODESPESAS', 'Excel'     , cExcel.Checked);
      aINI.WriteBool ('IMPRESSAO_PROCESSOS_PREVISAODESPESAS', 'Previsao'  , cPrevisao.Checked);
      aINI.WriteBool ('IMPRESSAO_PROCESSOS_PREVISAODESPESAS', 'Consolidar', cConsol.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);

      Impressao_Processos_PrevisaoDespesas.Release;
      Impressao_Processos_PrevisaoDespesas:= nil;
end;

procedure TImpressao_Processos_PrevisaoDespesas.bImprimirClick(Sender: TObject);
Var
   mSQLMatriz,
   mSQLFilial: WideString;
   mEmpresa: String;
begin
      Screen.Cursor := crSQLWait;

      mEmpresa := InttoStr(Menu_Principal.mEmpresa);

      tFluxo.SQL.Clear;
      tFluxo.SQL.Add('SELECT Data_PrevRegistro AS Data_Vencimento,');
      tFluxo.SQL.Add('       Cliente = (SELECT Nome FROM Clientes WHERE Codigo = Cliente),');
      tFluxo.SQL.Add('       Fornecedor = '''',');
      tFluxo.SQL.Add('       Modalidade = (SELECT Descricao FROM TiposProcesso WHERE Codigo = Modalidade_Importacao),');
      tFluxo.SQL.Add('       ''PREVISÃO DE REGISTRO'' AS Classificacao,');
      tFluxo.SQL.Add('       Processo,');
      tFluxo.SQL.Add('       Centro_Custo = '''',');
      tFluxo.SQL.Add('       ISNULL(Fator_SISCOMEXValorReal, 0) AS Valor,');
      tFluxo.SQL.Add('       Empresa = '+mEmpresa+',');
      tFluxo.SQL.Add('       Filial = CAST('''' AS VARCHAR(15)),');
      tFluxo.SQL.Add('       Tipo = ''RG''');
      tFluxo.SQL.Add('INTO   #TEMP');
      tFluxo.SQL.Add('FROM   ProcessosDocumentos PD');
      tFluxo.SQL.Add('WHERE  Data_PrevRegistro BETWEEN :pDataIni AND :pDataFim');
      //tFluxo.SQL.Add('AND    (SELECT COUNT(*) FROM NotasItens NI WHERE NI.Processo = PD.Processo AND NI.Saida_Entrada = 1) = 0');
      tFluxo.SQL.Add('AND    Data_Encerramento IS NULL');
      tFluxo.SQL.Add('AND    Desativado <> 1');
      tFluxo.SQL.Add('UNION ALL');
      tFluxo.SQL.Add('SELECT Data_PrevFrete,');
      tFluxo.SQL.Add('       Cliente = (SELECT Nome FROM Clientes WHERE Codigo = Cliente),');
      tFluxo.SQL.Add('       Fornecedor = (SELECT Nome FROM Fornecedores WHERE Codigo = Previsao_FreteTransportador),'); 
      tFluxo.SQL.Add('       Modalidade = (SELECT Descricao FROM TiposProcesso WHERE Codigo = Modalidade_Importacao),');
      tFluxo.SQL.Add('       ''PREVISÃO DE FRETE INTERNACIONAL'' AS Classificacao,');
      tFluxo.SQL.Add('       Processo,');
      tFluxo.SQL.Add('       Centro_Custo = '''',');
      tFluxo.SQL.Add('       Fator_FreteValorReal AS Valor,');
      tFluxo.SQL.Add('       Empresa = '+mEmpresa+',');
      tFluxo.SQL.Add('       Filial = CAST('''' AS VARCHAR(15)),');
      tFluxo.SQL.Add('       Tipo = ''FI''');
      tFluxo.SQL.Add('FROM   ProcessosDocumentos PD');
      tFluxo.SQL.Add('WHERE  Data_PrevFrete BETWEEN :pDataIni AND :pDataFim');
      //tFluxo.SQL.Add('AND    (SELECT COUNT(*) FROM NotasItens NI WHERE NI.Processo = PD.Processo AND NI.Saida_Entrada = 1) = 0');
      tFluxo.SQL.Add('AND    Data_Encerramento IS NULL');
      tFluxo.SQL.Add('AND    Desativado <> 1');
      
      If cPrevisao.Checked = true then begin
         tFluxo.SQL.Add('UNION ALL');
         tFluxo.SQL.Add('SELECT Data_PrevFaturamento,');
         tFluxo.SQL.Add('       Cliente = (SELECT Nome FROM Clientes WHERE Codigo = Cliente),');
         tFluxo.SQL.Add('       Fornecedor = '''',');
         tFluxo.SQL.Add('       Modalidade = (SELECT Descricao FROM TiposProcesso WHERE Codigo = Modalidade_Importacao),');
         tFluxo.SQL.Add('       ''PREVISÃO DE FATURAMENTO'' AS Classificacao,');
         tFluxo.SQL.Add('       Processo,');
         tFluxo.SQL.Add('       Centro_Custo = '''',');
         tFluxo.SQL.Add('       Fator_FaturamentoValorReal AS Valor,');
         tFluxo.SQL.Add('       Empresa = '+mEmpresa+',');
         tFluxo.SQL.Add('       Filial = CAST('''' AS VARCHAR(15)),');
         tFluxo.SQL.Add('       Tipo = ''FT'' ');
         tFluxo.SQL.Add('FROM   ProcessosDocumentos PD');
         tFluxo.SQL.Add('WHERE  Data_PrevFaturamento BETWEEN :pDataIni AND :pDataFim');
         //tFluxo.SQL.Add('AND    (SELECT COUNT(*) FROM NotasItens NI WHERE NI.Processo = PD.Processo AND NI.Saida_Entrada = 1) = 0');
         tFluxo.SQL.Add('AND    Data_Encerramento IS NULL');
         tFluxo.SQL.Add('AND    Desativado <> 1');
      End;
      tFluxo.SQL.Add('UNION ALL');
      tFluxo.SQL.Add('SELECT Data_PrevArmazem,');
      tFluxo.SQL.Add('       Cliente = (SELECT Nome FROM Clientes WHERE Codigo = Cliente),');
      tFluxo.SQL.Add('       Fornecedor = (SELECT Nome FROM Fornecedores WHERE Codigo = Previsao_ArmazemFornecedor),'); 
      tFluxo.SQL.Add('       Modalidade = (SELECT Descricao FROM TiposProcesso WHERE Codigo = Modalidade_Importacao),');
      tFluxo.SQL.Add('       ''PREVISÃO DE ARMAZENAGEM'' AS Classificacao,');
      tFluxo.SQL.Add('       Processo,');
      tFluxo.SQL.Add('       Centro_Custo = '''',');
      tFluxo.SQL.Add('       Fator_ArmazemValorReal AS Valor,');
      tFluxo.SQL.Add('       Empresa = '+mEmpresa+',');
      tFluxo.SQL.Add('       Filial = CAST('''' AS VARCHAR(15)),');
      tFluxo.SQL.Add('       Tipo = ''PA''');
      tFluxo.SQL.Add('FROM   ProcessosDocumentos PD');
      tFluxo.SQL.Add('WHERE  Data_PrevArmazem BETWEEN :pDataIni AND :pDataFim');
      //tFluxo.SQL.Add('AND    (SELECT COUNT(*) FROM NotasItens NI WHERE NI.Processo = PD.Processo AND NI.Saida_Entrada = 1) = 0');
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
                  mSQLFilial := RemoveCaracter('       Empresa = '+mEmpresa+',', '       Empresa = '+tEmpresas.FieldByName('Codigo').AsString+',', mSQLFilial);
                  tFluxo.SQL.Add('UNION ALL');
                  tFluxo.SQL.Add(mSQLFilial);
               End;
               tEmpresas.Next;
         End;
      End;

      tFluxo.SQL.Add('UPDATE #TEMP SET Filial = CASE WHEN (SELECT Matriz_Filial FROM Cybersoft_Cadastros.dbo.Empresas EMP WHERE EMP.Codigo = #TEMP.Empresa) = 1 THEN');
      tFluxo.SQL.Add('                                    ''FILIAL (''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas EMP WHERE EMP.Codigo = #TEMP.Empresa)+'')'' ');
      tFluxo.SQL.Add('                               ELSE');
      tFluxo.SQL.Add('                                    ''FILIAL (''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas EMP WHERE EMP.Codigo = #TEMP.Empresa)+'')'' ');
      tFluxo.SQL.Add('                               END');

      tFluxo.SQL.Add('SELECT * FROM #TEMP');
      tFluxo.SQL.Add('ORDER BY Data_Vencimento');
      tFluxo.SQL.Add('DROP TABLE #TEMP');
      tFluxo.ParamByName('pDataIni').AsDate     := cDataIni.Date;
      tFluxo.ParamByName('pDataFim').AsDate     := cDataFim.Date;
      //tFluxo.SQL.SaveToFile('c:\temp\Previsao_Despesas.sql');
      tFluxo.Open;

      Dados.Empresas.SQL.Clear;
      Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
      Dados.Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
      Dados.Empresas.Open;

      lPeriodo.Caption := 'Período de '+cDataIni.Text + ' á '+cDataFim.Text;

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

// Envia informações para o excel.
procedure TImpressao_Processos_PrevisaoDespesas.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
   mTotal    : Real;
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

      mPlanilha.Cells[04,01] := 'EMPRESA';
      mPlanilha.Cells[04,02] := 'DESPESAS';
      mPlanilha.Cells[04,03] := 'VALORES R$';
      mPlanilha.Cells[04,04] := 'PROCESSO';
      mPlanilha.Cells[04,05] := 'CLIENTE';
      mPlanilha.Cells[04,06] := 'MODALIDADE';
      mPlanilha.Cells[04,07] := 'DATA VENC';
      mPlanilha.Cells[04,08] := 'FORNECEDOR';

      mPlanilha.Range['A4','H4'].HorizontalAlignment := 3;
      mPlanilha.Range['A4','H4'].VerticalAlignment   := 2;
      mPlanilha.Range['A4','H4'].Font.Size           := 10;
      
      mLinha := 5;

      While (not tFluxo.Eof) and (not Funcoes.Cancelado) do Begin
            mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['A'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Borders.Color     := clSilver; //RGB(0,0,0);
            mPlanilha.Range['C'+InttoStr(mLinha),'C'+InttoStr(mLinha)].NumberFormat      := '#.##0,00_);(#.##0,00)';
            mPlanilha.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].NumberFormat      := 'dd/mm/aaaa';

            mPlanilha.Cells[mLinha,01] := tFluxo.FieldByName('Filial').AsString;
            mPlanilha.Cells[mLinha,02] := tFluxo.FieldByName('Classificacao').AsString;
            mPlanilha.Cells[mLinha,03] := tFluxo.FieldByName('Valor').Value;
            mPlanilha.Cells[mLinha,04] := tFluxo.FieldByName('Processo').AsString;
            mPlanilha.Cells[mLinha,05] := tFluxo.FieldByName('Cliente').AsString;
            mPlanilha.Cells[mLinha,06] := tFluxo.FieldByName('Modalidade').AsString;
            mPlanilha.Cells[mLinha,07] := tFluxo.FieldByName('Data_Vencimento').Value;
            mPlanilha.Cells[mLinha,08] := tFluxo.FieldByName('Fornecedor').AsString;

            mTotal := mTotal + tFluxo.FieldByName('Valor').AsCurrency;

            tFluxo.Next;

            Inc(mLinha);

            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      end;

      mPlanilha.Cells[mLinha,02] := 'TOTAL P/PROVISIONAMENTO';
      mPlanilha.Cells[mLinha,03] := mTotal;

      mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].NumberFormat      := '#.##0,00_);(#.##0,00)';
      mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Font.Bold         := true;
      mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Font.Size         := 10;
      mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Interior.Color    := RGB(255, 255, 153);
      mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;

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
      mPlanilha.Cells[2,01]                          := 'PREVISÃO DESPESAS DE PROCESSOS';
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


procedure TImpressao_Processos_PrevisaoDespesas.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI              := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date     := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_PREVISAODESPESAS', 'DataIni'   , Date );
      cDataFim.Date     := aINI.ReadDate   ('IMPRESSAO_PROCESSOS_PREVISAODESPESAS', 'DataFim'   , Date );
      cExcel.Checked    := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_PREVISAODESPESAS', 'Excel'     , false );
      cPrevisao.Checked := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_PREVISAODESPESAS', 'Previsao'  , false );
      cConsol.Checked   := aINI.ReadBool   ('IMPRESSAO_PROCESSOS_PREVISAODESPESAS', 'Consolidar', false );
      aINI.Free;

end;

end.
