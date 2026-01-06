unit frmImpressao_FinanceirosOP_EmprestimoCG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppDBPipe, DBAccess, MSAccess, ppParameter, ppBands, ppVar, ppCtrls,
  ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RxLookup, Mask, Funcoes, IniFiles, ComObj,
  RxToolEdit, ppDB, MemDS, ppDesignLayer, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FinanceirosOP_EmprestimoCG = class(TForm)
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    StaticText6: TStaticText;
    cBanco: TRxDBLookupCombo;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    StaticText5: TStaticText;
    cCliente: TRxDBLookupCombo;
    rEmprestimosCG: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText18: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppParameterList1: TppParameterList;
    tEmprestimos: TMSQuery;
    pEmpresas: TppDBPipeline;
    ppEmprestimos: TppDBPipeline;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    cExcel: TCheckBox;
    dstEmpestimos: TDataSource;
    StaticText3: TStaticText;
    cEmprestimo: TRxDBLookupCombo;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    cConsol: TRadioGroup;
    tEmpresas: TMSQuery;
    ppLabel18: TppLabel;
    ppDBText13: TppDBText;
    ppLabel19: TppLabel;
    ppDBText15: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText16: TppDBText;
    ppLabel22: TppLabel;
    ppDBText17: TppDBText;
    ppLabel23: TppLabel;
    ppDBText19: TppDBText;
    ppLabel16: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBText20: TppDBText;
    iLogo: TppImage;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportaEXCEL;
    procedure cConsolClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_EmprestimoCG: TImpressao_FinanceirosOP_EmprestimoCG;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_EmprestimoCG.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FinanceirosOP_EmprestimoCG.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_EmprestimoCG.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_CG', 'DataIni'       , cDataIni.Text);
      aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_CG', 'DataFim'       , cDataFim.Text);
      If cBanco.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_CG', 'Banco', cBanco.KeyValue )
      else
         aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_CG', 'Banco', 0);

      If cCliente.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_CG', 'Cliente', cCliente.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_CG', 'Cliente', '');

      If cEmprestimo.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_CG', 'Emprestimo', cEmprestimo.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_CG', 'Emprestimo', '');

      aINI.WriteBool('IMPRESSAO_EMPRESTIMOS_CG', 'Excel', cExcel.Checked);
      aINI.Free;

     Impressao_FinanceirosOP_EmprestimoCG.Release;
     Impressao_FinanceirosOP_EmprestimoCG := nil;
end;

procedure TImpressao_FinanceirosOP_EmprestimoCG.bImprimirClick(Sender: TObject);
var
    mSQLMatriz: WideString;
    mSQLFilial: WideString;
begin
      Screen.Cursor := crSQLWait;
      
      With Dados do begin
           Configuracao.Open;
           
           tEmprestimos.SQL.Clear;
           tEmprestimos.SQL.Add('USE '+ EmpresasBanco_Dados.AsString);
           tEmprestimos.SQL.Add('SELECT EM.Garantia,');
           If Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
              tEmprestimos.SQL.Add('       Banco = (SELECT Nome FROM Bancos WHERE Codigo = EM.Banco),');
           end else begin
              tEmprestimos.SQL.Add('       Banco = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = EM.Banco),');
           End;
           tEmprestimos.SQL.Add('       Emprestimo       = EM.Numero_Documento,');
           tEmprestimos.SQL.Add('       Data_Liberacao   = EM.Data,');
           tEmprestimos.SQL.Add('       Cliente          = (SELECT Nome FROM Clientes WHERE Codigo = EM.Cliente),');
           tEmprestimos.SQL.Add('       Primeiro_Venc    = (SELECT MIN(Vencimento) FROM EmprestimosParcelas EP WHERE EP.Emprestimo = EM.Numero),');
           tEmprestimos.SQL.Add('       Ultimo_Venc      = (SELECT MAX(Vencimento) FROM EmprestimosParcelas EP WHERE EP.Emprestimo = EM.Numero),');
           tEmprestimos.SQL.Add('       Parcelas_Qtde    = (SELECT COUNT(*) FROM EmprestimosParcelas EP WHERE EP.Emprestimo = EM.Numero),');
           tEmprestimos.SQL.Add('       Parcelas_Pagas   = (SELECT COUNT(DISTINCT Numero) FROM PagarReceberBaixas WHERE Numero IN(SELECT DISTINCT Financeiro_Numero FROM EmprestimosParcelas EP WHERE EP.Emprestimo = EM.Numero)),');
           tEmprestimos.SQL.Add('       Parcelas_Abertas = (SELECT COUNT(*) FROM EmprestimosParcelas EP WHERE EP.Emprestimo = EM.Numero) -');
           tEmprestimos.SQL.Add('                          (SELECT COUNT(DISTINCT Numero) FROM PagarReceberBaixas WHERE Numero IN(SELECT DISTINCT Financeiro_Numero FROM EmprestimosParcelas EP WHERE EP.Emprestimo = EM.Numero)),');
           tEmprestimos.SQL.Add('       Valor_Operacao   = ISNULL(Valor_Principal, 0),');
           tEmprestimos.SQL.Add('       Valor_Total      = ISNULL(Valor_Principal + Valor_Juros, 0),');
           tEmprestimos.SQL.Add('       Valor_Pago       = ISNULL((SELECT SUM(Valor_Parcela) FROM PagarReceber WHERE ISNULL(Baixa_Numero, 0) > 0 AND Numero IN(SELECT Financeiro_Numero FROM EmprestimosParcelas EPP WHERE EPP.Emprestimo = EM.Numero)), 0),');
           tEmprestimos.SQL.Add('       Valor_Aberto     = ISNULL((Valor_Principal + Valor_Juros) - ISNULL((SELECT SUM(Valor_Parcela) FROM PagarReceber WHERE ISNULL(Baixa_Numero, 0) > 0 ');
           tEmprestimos.SQL.Add('                          AND Numero IN(SELECT Financeiro_Numero FROM EmprestimosParcelas EPP WHERE EPP.Emprestimo = EM.Numero)), 0), 0),');
           tEmprestimos.SQL.Add('       Valor_IOF_Taxa   = ISNULL(Valor_IOF + Valor_Diversos , 0),');
           tEmprestimos.SQL.Add('       Valor_Aplicacao  = ISNULL(Valor_Aplicacao, 0),');
           tEmprestimos.SQL.Add('       Valor_Custo      = ISNULL(((ISNULL(Valor_Principal, 0) + ISNULL(Valor_Juros, 0)) - ISNULL(Valor_Principal,0)) + (ISNULL(Valor_IOF,0) + ISNULL(Valor_Diversos,0)), 0),');
           tEmprestimos.SQL.Add('       Liquidada        = '''', ');
           tEmprestimos.SQL.Add('       Origem = CASE WHEN (SELECT Matriz_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) = 1 THEN');
           tEmprestimos.SQL.Add('                     ''MT-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tEmprestimos.SQL.Add('                ELSE');
           tEmprestimos.SQL.Add('                     ''FL''+CAST((SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) AS VARCHAR(2)) + ''-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tEmprestimos.SQL.Add('                END');
           tEmprestimos.SQL.Add('INTO   #TEMP');
           tEmprestimos.SQL.Add('FROM   Emprestimos EM');
           tEmprestimos.SQL.Add('WHERE  EM.Tipo = ''CG'' ');
      
           If (DataLimpa(cDataIni.Text) = false) and (DataLimpa(cDataFim.Text) = false) then begin
              tEmprestimos.SQL.Add('AND   EM.Data BETWEEN :pDataIni AND :pDataFim');
              tEmprestimos.ParamByName('pDataIni').AsDate := cDataIni.Date;
              tEmprestimos.ParamByName('pDataFim').AsDate := cDataFim.Date;
           End;
           If Trim(cBanco.Text) <> '' then begin
              tEmprestimos.SQL.Add('AND   EM.Banco = :pBanco');
              tEmprestimos.ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           End;
           If Trim(cCliente.Text) <> '' then begin
              tEmprestimos.SQL.Add('AND   EM.Cliente = :pCliente');
              tEmprestimos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
           End;
           If Trim(cEmprestimo.Text) <> '' then begin
              tEmprestimos.SQL.Add('AND   EM.Numero = :pEmprestimo');
              tEmprestimos.ParamByName('pEmprestimo').AsInteger := Dados.EmprestimosNumero.AsInteger;
           End;

           // Consolidado.
           If cConsol.ItemIndex = 1 then begin
              tEmpresas.SQL.Clear;
              tEmpresas.SQL.Add('SELECT Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
              tEmpresas.SQL.Add('FROM   Empresas WHERE(Codigo <> :pEmpresa) AND (Consolidar = 1) ORDER BY Numero_Filial');
              tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
              tEmpresas.Open;

              mSQLMatriz := tEmprestimos.SQL.Text;

              tEmpresas.First;
              While not tEmpresas.Eof do begin
                    If Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                       mSQLFilial := RemoveCaracter('USE '+ EmpresasBanco_Dados.AsString, '', mSQLMatriz );
                       mSQLFilial := RemoveCaracter('Emprestimos '        , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Emprestimos '        , mSQLFilial);
                       mSQLFilial := RemoveCaracter('Clientes '           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Clientes '           , mSQLFilial);
                       mSQLFilial := RemoveCaracter('EmprestimosParcelas ', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.EmprestimosParcelas ', mSQLFilial);
                       mSQLFilial := RemoveCaracter('PagarReceber '       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber '       , mSQLFilial);
                       mSQLFilial := RemoveCaracter('PagarReceberBaixas ' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceberBaixas ' , mSQLFilial);
                       mSQLFilial := RemoveCaracter(':pEmpresa'           , tEmpresas.FieldByName('Codigo').AsString, mSQLFilial);
                       If ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
                          mSQLFilial := RemoveCaracter('Bancos ', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Bancos ', mSQLFilial);
                       End;
                       mSQLFilial := RemoveCaracter('INTO   #TEMP' , '' , mSQLFilial);
                       tEmprestimos.SQL.Add('UNION ALL');
                       tEmprestimos.SQL.Add(mSQLFilial);
                    End;
                    tEmpresas.Next;
              End;
           End;

           tEmprestimos.SQL.Add('UPDATE #TEMP SET Liquidada = CASE WHEN Valor_Aberto = 0 THEN CHAR(149) ELSE '''' END');
           tEmprestimos.SQL.Add('SELECT * FROM #TEMP');
           tEmprestimos.SQL.Add('ORDER  BY Emprestimo');
           tEmprestimos.SQL.Add('DROP TABLE #TEMP');
           tEmprestimos.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           //tEmprestimos.SQL.SavetoFile('c:\temp\EmprestimosCG.sql');
           tEmprestimos.Open;
      End;

      Screen.Cursor := crDefault;

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rEmprestimosCG.Reset;
         rEmprestimosCG.Print;
      end else begin
         ExportaExcel;
      End;
end;

procedure TImpressao_FinanceirosOP_EmprestimoCG.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      With Dados do begin
           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos ORDER BY Nome');
           Bancos.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           Emprestimos.SQL.Clear;
           Emprestimos.SQL.Add('SELECT * FROM Emprestimos WHERE Tipo = ''CG'' ORDER BY Numero');
           Emprestimos.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Text        := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_CG', 'DataIni'        , '');
      cDataFim.Text        := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_CG', 'DataFim'        , '');
      cBanco.KeyValue      := aINI.ReadInteger('IMPRESSAO_EMPRESTIMOS_CG', 'Banco'          , 0);
      cCliente.KeyValue    := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_CG', 'Cliente'        , '');
      cEmprestimo.KeyValue := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_CG', 'Emprestimo'     , '');
      cExcel.Checked       := aINI.ReadBool   ('IMPRESSAO_EMPRESTIMOS_CG', 'Excel'          , false);
      aINI.Free;

      cCliente.Enabled  := cConsol.ItemIndex = 0;
      If cConsol.ItemIndex = 1 then cCliente.KeyValue := 0;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_EmprestimoCG.ExportaEXCEL;
var
   mPlanilha  : Variant;
   mLinha     : Integer;
   mTOper,
   mTTotal,
   mTPago,
   mTAberto,
   mTIOF,
   mTAplicacao,
   mtCusto: Real;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tEmprestimos.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible                            := false;
       mPlanilha.Range['A3','S3'].Interior.Color    := RGB(54, 96, 146);
       mPlanilha.Range['A3','S3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','S3'].Font.Bold         := true;
       mPlanilha.Range['A3','S3'].Font.Color        := clWhite;
       mPlanilha.Range['A3','S3'].Font.Size         := 8;
       mPlanilha.Range['A3','S3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','S3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','S3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Range['A3','S3'].HorizontalAlignment := 3;

       mPlanilha.Cells[3,01] := 'BANCO';
       mPlanilha.Cells[3,02] := 'GARANTIA';
       mPlanilha.Cells[3,03] := 'Nº EMPR';
       mPlanilha.Cells[3,04] := 'DATA LIB';
       mPlanilha.Cells[3,05] := 'CLIENTE';
       mPlanilha.Cells[3,06] := 'PRIM VENC';
       mPlanilha.Cells[3,07] := 'ULT VENC';
       mPlanilha.Cells[3,08] := 'QTDE';
       mPlanilha.Cells[3,09] := 'PAGAS';
       mPlanilha.Cells[3,10] := 'ABERT';
       mPlanilha.Cells[3,11] := 'VLR OPER';
       mPlanilha.Cells[3,12] := 'VLR TOTAL';
       mPlanilha.Cells[3,13] := 'VLR PAGO';
       mPlanilha.Cells[3,14] := 'VLR ABERTO';
       mPlanilha.Cells[3,15] := 'IOF + TAXA';
       mPlanilha.Cells[3,16] := 'APLICAÇÃO';
       mPlanilha.Cells[3,17] := 'CUS EFET';
       mPlanilha.Cells[3,18] := 'LIQ';
       mPlanilha.Cells[3,19] := 'M/F';

       mPlanilha.Cells[03,01].ColumnWidth := 23;
       mPlanilha.Cells[03,02].ColumnWidth := 08;
       mPlanilha.Cells[03,03].ColumnWidth := 06;
       mPlanilha.Cells[03,04].ColumnWidth := 09;
       mPlanilha.Cells[03,05].ColumnWidth := 40;
       mPlanilha.Cells[03,06].ColumnWidth := 09;
       mPlanilha.Cells[03,07].ColumnWidth := 09;
       mPlanilha.Cells[03,08].ColumnWidth := 05;
       mPlanilha.Cells[03,09].ColumnWidth := 05;
       mPlanilha.Cells[03,10].ColumnWidth := 05;
       mPlanilha.Cells[03,11].ColumnWidth := 11;
       mPlanilha.Cells[03,12].ColumnWidth := 11;
       mPlanilha.Cells[03,13].ColumnWidth := 11;
       mPlanilha.Cells[03,14].ColumnWidth := 11;
       mPlanilha.Cells[03,15].ColumnWidth := 11;
       mPlanilha.Cells[03,16].ColumnWidth := 11;
       mPlanilha.Cells[03,17].ColumnWidth := 11;
       mPlanilha.Cells[03,18].ColumnWidth := 03;
       mPlanilha.Cells[03,19].ColumnWidth := 06;

       mLinha := 4;

       mTOper      := 0;
       mTTotal     := 0;
       mTPago      := 0;
       mTAberto    := 0;
       mTIOF       := 0;
       mTAplicacao := 0;
       mtCusto     := 0;

       While (not tEmprestimos.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['D'+InttoStr(mLinha),'D'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['F'+InttoStr(mLinha),'F'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['R'+InttoStr(mLinha),'R'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['A'+InttoStr(mLinha),'S'+InttoStr(mLinha)].Font.Size           := 8;
             mPlanilha.Range['R'+InttoStr(mLinha),'R'+InttoStr(mLinha)].Font.Size           := 10;

             mPlanilha.Cells[mLinha,01] := tEmprestimos.FieldByName('Banco').AsString;
             mPlanilha.Cells[mLinha,02] := tEmprestimos.FieldByName('Garantia').AsString;
             mPlanilha.Cells[mLinha,03] := tEmprestimos.FieldByName('Emprestimo').Value;
             mPlanilha.Cells[mLinha,04] := tEmprestimos.FieldByName('Data_Liberacao').Value;
             mPlanilha.Cells[mLinha,05] := tEmprestimos.FieldByName('Cliente').Value;
             mPlanilha.Cells[mLinha,06] := tEmprestimos.FieldByName('Primeiro_Venc').Value;
             mPlanilha.Cells[mLinha,07] := tEmprestimos.FieldByName('Ultimo_Venc').Value;
             mPlanilha.Cells[mLinha,08] := tEmprestimos.FieldByName('Parcelas_Qtde').Value;
             mPlanilha.Cells[mLinha,09] := tEmprestimos.FieldByName('Parcelas_Pagas').Value;
             mPlanilha.Cells[mLinha,10] := tEmprestimos.FieldByName('Parcelas_Abertas').Value;
             mPlanilha.Cells[mLinha,11] := tEmprestimos.FieldByName('Valor_Operacao').Value;
             mPlanilha.Cells[mLinha,12] := tEmprestimos.FieldByName('Valor_Total').Value;
             mPlanilha.Cells[mLinha,13] := tEmprestimos.FieldByName('Valor_Pago').Value;
             mPlanilha.Cells[mLinha,14] := tEmprestimos.FieldByName('Valor_Aberto').Value;
             mPlanilha.Cells[mLinha,15] := tEmprestimos.FieldByName('Valor_IOF_Taxa').Value;
             mPlanilha.Cells[mLinha,16] := tEmprestimos.FieldByName('Valor_Aplicacao').Value;
             mPlanilha.Cells[mLinha,17] := tEmprestimos.FieldByName('Valor_Custo').Value;
             mPlanilha.Cells[mLinha,18] := tEmprestimos.FieldByName('Liquidada').Value;
             mPlanilha.Cells[mLinha,19] := tEmprestimos.FieldByName('Origem').Value;

             mPlanilha.Cells[mLinha,08].NumberFormat := '0';
             mPlanilha.Cells[mLinha,09].NumberFormat := '0';
             mPlanilha.Cells[mLinha,10].NumberFormat := '0';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00';

             mTOper      := mTOper     + tEmprestimos.FieldByName('Valor_Operacao').Value;
             mTTotal     := mTTotal    + tEmprestimos.FieldByName('Valor_Total').Value;
             mTPago      := mTPago     + tEmprestimos.FieldByName('Valor_Pago').Value;
             mTAberto    := mTAberto   + tEmprestimos.FieldByName('Valor_Aberto').Value;
             mTIOF       := mTIOF      + tEmprestimos.FieldByName('Valor_IOF_Taxa').Value;
             mTAplicacao := mTAplicacao+ tEmprestimos.FieldByName('Valor_Aplicacao').Value;
             mTCusto     := mTCusto    + tEmprestimos.FieldByName('Valor_Custo').Value;

             tEmprestimos.Next;

             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       End;

       //Inc(mLinha);
       mPlanilha.Range['F'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Mergecells     := True;
       mPlanilha.Range['F'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Size      := 8;
       mPlanilha.Range['F'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Font.Bold      := true;
       mPlanilha.Range['F'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Interior.Color := RGB(255, 255, 140);

       mPlanilha.Range['F'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['F'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['F'+InttoStr(mLinha),'Q'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,06] := 'TOTAL GERAL';
       mPlanilha.Cells[mLinha,11] := mTOper;
       mPlanilha.Cells[mLinha,12] := mTTotal;
       mPlanilha.Cells[mLinha,13] := mTPago;
       mPlanilha.Cells[mLinha,14] := mTAberto;
       mPlanilha.Cells[mLinha,15] := mTIOF;
       mPlanilha.Cells[mLinha,16] := mTAplicacao;
       mPlanilha.Cells[mLinha,17] := mTCusto;

       mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00';

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       //mPlanilha.Columns.Autofit;
       mPlanilha.Rows.Autofit;

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','S1'].Font.Size  := 14;
       mPlanilha.Range['A1','S1'].Font.Bold  := true;
       mPlanilha.Range['A1','S1'].Mergecells := True;
       mPlanilha.Range['A1','S2'].HorizontalAlignment := 3;
       mPlanilha.Cells[2,01] := 'Empréstimos (Capital de Giro)';
       mPlanilha.Range['A2','S2'].Mergecells := True;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


procedure TImpressao_FinanceirosOP_EmprestimoCG.cConsolClick(Sender: TObject);
begin
      cCliente.Enabled  := cConsol.ItemIndex = 0;
      cCliente.KeyValue := 0;
end;

end.
