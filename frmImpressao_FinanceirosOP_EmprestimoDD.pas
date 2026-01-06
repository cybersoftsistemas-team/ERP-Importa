unit frmImpressao_FinanceirosOP_EmprestimoDD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppDBPipe, DBAccess, MSAccess, ppParameter, ppBands, ppVar, ppCtrls, ppClass,
  ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RxLookup, Mask, myChkBox, Funcoes, IniFiles, ComObj,
  RxToolEdit, ppDB, MemDS, ppDesignLayer, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FinanceirosOP_EmprestimoDD = class(TForm)
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cSituacao: TRadioGroup;
    StaticText6: TStaticText;
    cBanco: TRxDBLookupCombo;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    cTotalEmprestimo: TCheckBox;
    StaticText5: TStaticText;
    cCliente: TRxDBLookupCombo;
    rEmprestimosDD: TppReport;
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
    myDBCheckBox1: TmyDBCheckBox;
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
    ppGroup1: TppGroup;
    gCabEmprestimo: TppGroupHeaderBand;
    gRodaPEEmprestimo: TppGroupFooterBand;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    cExcel: TCheckBox;
    dstEmpestimos: TDataSource;
    StaticText3: TStaticText;
    cEmprestimo: TRxDBLookupCombo;
    ppSummaryBand1: TppSummaryBand;
    ppLabel16: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine5: TppLine;
    ppLabel17: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    cConsol: TRadioGroup;
    tEmpresas: TMSQuery;
    ppLabel18: TppLabel;
    ppDBText13: TppDBText;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    ppLabel19: TppLabel;
    ppDBText15: TppDBText;
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
  Impressao_FinanceirosOP_EmprestimoDD: TImpressao_FinanceirosOP_EmprestimoDD;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_EmprestimoDD.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FinanceirosOP_EmprestimoDD.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_EmprestimoDD.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_DD', 'Situacao'      , cSituacao.ItemIndex );
      aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_DD', 'DataIni'       , cDataIni.Text);
      aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_DD', 'DataFim'       , cDataFim.Text);
      If cBanco.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_DD', 'Banco', cBanco.KeyValue )
      else
         aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_DD', 'Banco', 0);

      If cCliente.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_DD', 'Cliente', cCliente.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_DD', 'Cliente', '');

      If cEmprestimo.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_DD', 'Emprestimo', cEmprestimo.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_DD', 'Emprestimo', '');

      aINI.WriteBool('IMPRESSAO_EMPRESTIMOS_DD', 'Excel', cExcel.Checked);
      aINI.WriteBool('IMPRESSAO_EMPRESTIMOS_DD', 'TotalEmprestimo', cTotalEmprestimo.Checked);
      aINI.Free;

      FecharTabelas(Dados, nil , nil, nil);

      Impressao_FinanceirosOP_EmprestimoDD.Release;
      Impressao_FinanceirosOP_EmprestimoDD := nil;
end;

procedure TImpressao_FinanceirosOP_EmprestimoDD.bImprimirClick(Sender: TObject);
var
    mSQLMatriz: WideString;
    mSQLFilial: WideString;
begin
      with Dados do begin
           Configuracao.Open;

           tEmprestimos.SQL.Clear;
           tEmprestimos.SQL.Add('USE '+ EmpresasBanco_Dados.AsString);
           tEmprestimos.SQL.Add('SELECT (SELECT Garantia FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo) AS Garantia,');
           if Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
              tEmprestimos.SQL.Add('       (SELECT Nome FROM Bancos WHERE Codigo = (SELECT Banco FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo)) AS Banco,');
           end else begin
              tEmprestimos.SQL.Add('       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = (SELECT Banco FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo)) AS Banco,');
           end;
           tEmprestimos.SQL.Add('       (SELECT Tipo+CAST(Numero AS VARCHAR(5)) FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo) AS Numero,');
           tEmprestimos.SQL.Add('       (SELECT Data     FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo) AS Data,');
           tEmprestimos.SQL.Add('       ED.Duplicata,');
           tEmprestimos.SQL.Add('       (SELECT Cliente FROM PagarReceber WHERE Numero = Financeiro_Numero) AS Cliente_Codigo,');
           tEmprestimos.SQL.Add('       (SELECT Nome FROM Clientes WHERE Codigo = (SELECT Cliente FROM PagarReceber WHERE Numero = Financeiro_Numero)) AS Cliente_Nome,');
           tEmprestimos.SQL.Add('       Vencimento,');
           tEmprestimos.SQL.Add('       ISNULL(ED.Valor_Bruto, 0) AS Valor_Bruto,');
           tEmprestimos.SQL.Add('       ISNULL(ED.Valor_Juros, 0) AS Valor_Juros,');
           tEmprestimos.SQL.Add('       ISNULL((SELECT Valor_IOF      FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo) / (SELECT COUNT(*) FROM EmprestimosDuplicatas WHERE Emprestimo = ED.Emprestimo), 0) AS Valor_IOF,');
           tEmprestimos.SQL.Add('       ISNULL((SELECT Valor_Diversos FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo) / (SELECT COUNT(*) FROM EmprestimosDuplicatas WHERE Emprestimo = ED.Emprestimo), 0) AS Valor_Diversos,');
           tEmprestimos.SQL.Add('       ISNULL((Valor_Bruto - Valor_Juros), 0) AS Liquido_Creditado,');
           tEmprestimos.SQL.Add('       Custo_Efetivo = ISNULL(Valor_Juros, 0) +');
           tEmprestimos.SQL.Add('                       ISNULL((SELECT Valor_IOF      FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo) / (SELECT COUNT(*) FROM EmprestimosDuplicatas WHERE Emprestimo = ED.Emprestimo), 0) +');
           tEmprestimos.SQL.Add('                       ISNULL((SELECT Valor_Diversos FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo) / (SELECT COUNT(*) FROM EmprestimosDuplicatas WHERE Emprestimo = ED.Emprestimo), 0),');
           tEmprestimos.SQL.Add('       Liquidar,');
           tEmprestimos.SQL.Add('       CASE WHEN ISNULL(Financeiro_Baixa, 0) = 0 THEN CAST(0 AS bit) ELSE CAST(1 AS bit) END AS Baixada,');
           tEmprestimos.SQL.Add('       Origem = CASE WHEN (SELECT Matriz_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) = 1 THEN');
           tEmprestimos.SQL.Add('                     ''MT-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tEmprestimos.SQL.Add('                ELSE');
           tEmprestimos.SQL.Add('                     ''FL''+CAST((SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) AS VARCHAR(2)) + ''-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
           tEmprestimos.SQL.Add('                END,');
           tEmprestimos.SQL.Add('       ED.Data_Liquidacao');
           tEmprestimos.SQL.Add('FROM   EmprestimosDuplicatas ED');
           tEmprestimos.SQL.Add('WHERE  (SELECT Tipo FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo) = ''DD''');
      
           if (DataLimpa(cDataIni.Text) = false) and (DataLimpa(cDataFim.Text) = false) then begin
              tEmprestimos.SQL.Add('AND   (SELECT Data FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo) BETWEEN :pDataIni AND :pDataFim');
              tEmprestimos.ParamByName('pDataIni').AsDate := cDataIni.Date;
              tEmprestimos.ParamByName('pDataFim').AsDate := cDataFim.Date;
           end;
           if cSituacao.ItemIndex = 0 then begin
              tEmprestimos.SQL.Add('AND   (Liquidar <> 1)');
           end;
           if cSituacao.ItemIndex = 1 then begin
              tEmprestimos.SQL.Add('AND   (Liquidar = 1)');
           end;
           if Trim(cBanco.Text) <> '' then begin
              tEmprestimos.SQL.Add('AND   (SELECT Banco FROM Emprestimos EM WHERE EM.Tipo = ''DD'' AND EM.Numero = ED.Emprestimo) = :pBanco');
              tEmprestimos.ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           end;
           if Trim(cCliente.Text) <> '' then begin
              tEmprestimos.SQL.Add('AND   (SELECT Cliente FROM PagarReceber WHERE Numero = Financeiro_Numero) = :pCliente');
              tEmprestimos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
           end;
           if Trim(cEmprestimo.Text) <> '' then begin
              tEmprestimos.SQL.Add('AND   ED.Emprestimo = :pEmprestimo');
              tEmprestimos.ParamByName('pEmprestimo').AsInteger := Dados.EmprestimosNumero.AsInteger;
           end;

           // Consolidado.
           if cConsol.ItemIndex = 1 then begin
              tEmpresas.SQL.Clear;
              tEmpresas.SQL.Add('SELECT Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
              tEmpresas.SQL.Add('FROM   Empresas WHERE(Codigo <> :pEmpresa) AND (Consolidar = 1) ORDER BY Numero_Filial');
              tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
              tEmpresas.Open;

              mSQLMatriz := tEmprestimos.SQL.Text;

              tEmpresas.First;
              while not tEmpresas.Eof do begin
                    if Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                       mSQLFilial := RemoveCaracter('USE '+ EmpresasBanco_Dados.AsString, '', mSQLMatriz );
                       mSQLFilial := RemoveCaracter('Emprestimos '           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Emprestimos '          , mSQLFilial);
                       mSQLFilial := RemoveCaracter('Clientes'               , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Clientes'             , mSQLFilial);
                       mSQLFilial := RemoveCaracter('EmprestimosDuplicatas'  , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.EmprestimosDuplicatas', mSQLFilial);
                       mSQLFilial := RemoveCaracter('Fornecedores'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Fornecedores'         , mSQLFilial);
                       mSQLFilial := RemoveCaracter(':pEmpresa'              , tEmpresas.FieldByName('Codigo').AsString, mSQLFilial);
                       if ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
                          mSQLFilial := RemoveCaracter('Bancos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Bancos', mSQLFilial);
                       end;
                       tEmprestimos.SQL.Add('UNION ALL');
                       tEmprestimos.SQL.Add(mSQLFilial);
                    end;
                    tEmpresas.Next;
              end;
           end;
           tEmprestimos.SQL.Add('ORDER  BY Numero, Duplicata');
           tEmprestimos.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           //tEmprestimos.SQL.SavetoFile('c:\temp\EmprestimosDD.sql');

           tEmprestimos.Open;
      end;
      if cExcel.Checked = false then begin
         gCabEmprestimo.Visible    := cTotalEmprestimo.Checked;
         gRodaPeEmprestimo.Visible := cTotalEmprestimo.Checked;

         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rEmprestimosDD.Print;
         rEmprestimosDD.Reset;
      end else begin
         ExportaExcel;
      end;
end;

procedure TImpressao_FinanceirosOP_EmprestimoDD.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      with Dados do begin
           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos ORDER BY Nome');
           Bancos.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           Emprestimos.SQL.Clear;
           Emprestimos.SQL.Add('SELECT * FROM Emprestimos WHERE Tipo = ''DD'' ORDER BY Numero');
           Emprestimos.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      end;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cSituacao.ItemIndex      := aINI.ReadInteger('IMPRESSAO_EMPRESTIMOS_DD', 'Situacao'       , 2);
      cDataIni.Text            := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_DD', 'DataIni'        , '');
      cDataFim.Text            := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_DD', 'DataFim'        , '');
      cBanco.KeyValue          := aINI.ReadInteger('IMPRESSAO_EMPRESTIMOS_DD', 'Banco'          , 0);
      cCliente.KeyValue        := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_DD', 'Cliente'        , '');
      cEmprestimo.KeyValue     := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_DD', 'Emprestimo'     , '');
      cExcel.Checked           := aINI.ReadBool   ('IMPRESSAO_EMPRESTIMOS_DD', 'Excel'          , false);
      cTotalEmprestimo.Checked := aINI.ReadBool   ('IMPRESSAO_EMPRESTIMOS_DD', 'TotalEmprestimo', true);
      aINI.Free;

      cCliente.Enabled  := cConsol.ItemIndex = 0;
      If cConsol.ItemIndex = 1 then cCliente.KeyValue := 0;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_EmprestimoDD.ExportaEXCEL;
var
   mPlanilha: Variant;
   mEmprestimo: String;
   mLinha: Integer;
   mBruto,
   mJuros,
   mIOF,
   mTXDiv,
   mLiqCred,
   mCusto,
   mTBruto,
   mTJuros,
   mTIOF,
   mTTXDiv,
   mTLiqCred,
   mTCusto: Real;
begin
     Janela_Processamento := TJanela_Processamento.Create(Self);
     Janela_Processamento.Progresso.Position := 0;
     Janela_Processamento.Progresso.Max      := tEmprestimos.RecordCount;
     Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
     Janela_Processamento.Show;

     mPlanilha := CreateOleObject('Excel.Application');

     mPlanilha.WorkBooks.add(1);

     mPlanilha.Visible                              := false;
     mPlanilha.Range['A3','P3'].Interior.Color      := RGB(54, 96, 146);
     mPlanilha.Range['A3','P3'].Interior.Pattern    := 1;
     mPlanilha.Range['A3','P3'].Font.Bold           := true;
     mPlanilha.Range['A3','P3'].Font.Color          := clWhite;
     mPlanilha.Range['A3','P3'].Font.Size           := 8;
     mPlanilha.Range['A3','P3'].Borders.LineStyle   := 1; //xlContinuous;
     mPlanilha.Range['A3','P3'].Borders.Weight      := 2; //xlThin;
     mPlanilha.Range['A3','P3'].Borders.Color       := RGB(0,0,0);
     mPlanilha.Range['A3','P3'].HorizontalAlignment := 3;
     mPlanilha.Range['A3','P3'].VerticalAlignment   := 2;

     mPlanilha.Cells[3,01] := 'BANCO';
     mPlanilha.Cells[3,02] := 'GARANTIA';
     mPlanilha.Cells[3,03] := 'Nº EMPR';
     mPlanilha.Cells[3,04] := 'DATA LIB';
     mPlanilha.Cells[3,05] := 'Nº DUPL';
     mPlanilha.Cells[3,06] := 'CLIENTE (DUPLICATA)';
     mPlanilha.Cells[3,07] := 'VENCTO';
     mPlanilha.Cells[3,08] := 'BRUTO';
     mPlanilha.Cells[3,09] := 'JUROS';
     mPlanilha.Cells[3,10] := 'IOF';
     mPlanilha.Cells[3,11] := 'TX DIVERSAS';
     mPlanilha.Cells[3,12] := 'LIQ CRED';
     mPlanilha.Cells[3,13] := 'CUSTO EFET';
     mPlanilha.Cells[3,14] := 'BX';
     mPlanilha.Cells[3,15] := 'LIQ';
     mPlanilha.Cells[3,16] := 'M/F';

     mPlanilha.Cells[03,01].ColumnWidth := 30;
     mPlanilha.Cells[03,02].ColumnWidth := 10;
     mPlanilha.Cells[03,03].ColumnWidth := 08;
     mPlanilha.Cells[03,04].ColumnWidth := 09;
     mPlanilha.Cells[03,05].ColumnWidth := 10;
     mPlanilha.Cells[03,06].ColumnWidth := 50;
     mPlanilha.Cells[03,07].ColumnWidth := 09;
     mPlanilha.Cells[03,08].ColumnWidth := 14;
     mPlanilha.Cells[03,09].ColumnWidth := 14;
     mPlanilha.Cells[03,10].ColumnWidth := 14;
     mPlanilha.Cells[03,11].ColumnWidth := 14;
     mPlanilha.Cells[03,12].ColumnWidth := 14;
     mPlanilha.Cells[03,13].ColumnWidth := 14;
     mPlanilha.Cells[03,14].ColumnWidth := 2;
     mPlanilha.Cells[03,15].ColumnWidth := 2;
     mPlanilha.Cells[03,16].ColumnWidth := 8;

     mLinha   := 4;

     mTBruto  := 0;
     mTJuros  := 0;
     mTIOF    := 0;
     mTTxDiv  := 0;
     mTLiqCred:= 0;
     mTCusto  := 0;

     mBruto   := 0;
     mJuros   := 0;
     mIOF     := 0;
     mTxDiv   := 0;
     mLiqCred := 0;
     mCusto   := 0;

     mEmprestimo := tEmprestimos.FieldByName('Numero').AsString;

     while (not tEmprestimos.Eof) and (not Funcoes.Cancelado) do  Begin
           mPlanilha.Range['E'+InttoStr(mLinha),'E'+InttoStr(mLinha)].HorizontalAlignment := 2;
           mPlanilha.Range['D'+InttoStr(mLinha),'D'+InttoStr(mLinha)].HorizontalAlignment := 3;
           mPlanilha.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 3;
           mPlanilha.Range['N'+InttoStr(mLinha),'P'+InttoStr(mLinha)].HorizontalAlignment := 3;
           mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size           := 8;
           mPlanilha.Range['N'+InttoStr(mLinha),'P'+InttoStr(mLinha)].Font.Size           := 10;
           mPlanilha.Range['A'+InttoStr(mLinha),'P'+InttoStr(mLinha)].VerticalAlignment   := 2;

           mPlanilha.Cells[mLinha,01] := tEmprestimos.FieldByName('Banco').AsString;
           mPlanilha.Cells[mLinha,02] := tEmprestimos.FieldByName('Garantia').AsString;
           mPlanilha.Cells[mLinha,03] := tEmprestimos.FieldByName('Numero').asstring;
           mPlanilha.Cells[mLinha,04] := tEmprestimos.FieldByName('Data').Value;
           mPlanilha.Cells[mLinha,05] := tEmprestimos.FieldByName('Duplicata').asstring;
           mPlanilha.Cells[mLinha,06] := tEmprestimos.FieldByName('Cliente_Nome').asstring;
           mPlanilha.Cells[mLinha,07] := tEmprestimos.FieldByName('Vencimento').Value;
           mPlanilha.Cells[mLinha,08] := tEmprestimos.FieldByName('Valor_Bruto').Value;
           mPlanilha.Cells[mLinha,09] := tEmprestimos.FieldByName('Valor_Juros').Value;
           mPlanilha.Cells[mLinha,10] := tEmprestimos.FieldByName('Valor_IOF').Value;
           mPlanilha.Cells[mLinha,11] := tEmprestimos.FieldByName('Valor_Diversos').Value;
           mPlanilha.Cells[mLinha,12] := tEmprestimos.FieldByName('Liquido_Creditado').Value;
           mPlanilha.Cells[mLinha,13] := tEmprestimos.FieldByName('Custo_Efetivo').Value;
           if tEmprestimos.FieldByName('Baixada').AsBoolean  then mPlanilha.Cells[mLinha,14] := CHR(149);
           if tEmprestimos.FieldByName('Liquidar').AsBoolean then mPlanilha.Cells[mLinha,15] := CHR(149);
           mPlanilha.Cells[mLinha,16] := tEmprestimos.FieldByName('Origem').AsString;

           mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00';
           mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00';
           mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00';
           mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00';
           mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00';
           mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00';

           mTBruto   := mTBruto   + tEmprestimos.FieldByName('Valor_Bruto').Value;
           mTJuros   := mTJuros   + tEmprestimos.FieldByName('Valor_Juros').Value;
           mTIOF     := mTIOF     + tEmprestimos.FieldByName('Valor_IOF').Value;
           mTTxDiv   := mTTxDiv   + tEmprestimos.FieldByName('Valor_Diversos').Value;
           mTLiqCred := mTLiqCred + tEmprestimos.FieldByName('Liquido_Creditado').Value;
           mTCusto   := mTCusto   + tEmprestimos.FieldByName('Custo_Efetivo').Value;

           if cTotalEmprestimo.Checked then begin
              mBruto   := mBruto   + tEmprestimos.FieldByName('Valor_Bruto').Value;
              mJuros   := mJuros   + tEmprestimos.FieldByName('Valor_Juros').Value;
              mIOF     := mIOF     + tEmprestimos.FieldByName('Valor_IOF').Value;
              mTxDiv   := mTxDiv   + tEmprestimos.FieldByName('Valor_Diversos').Value;
              mLiqCred := mLiqCred + tEmprestimos.FieldByName('Liquido_Creditado').Value;
              mCusto   := mCusto   + tEmprestimos.FieldByName('Custo_Efetivo').Value;
           end;

           tEmprestimos.Next;

           if cTotalEmprestimo.Checked then begin
              if (mEmprestimo <> tEmprestimos.FieldByName('Numero').Value) or (tEmprestimos.Eof) then begin
                 Inc(mLinha);
                 mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size       := 8;
                 mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Bold       := true;
                 mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color := clSilver;

                 mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                 mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                 mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
                 mPlanilha.Range['A'+InttoStr(mLinha),'P'+InttoStr(mLinha)].VerticalAlignment := 2;

                 mPlanilha.Cells[mLinha,06] := 'TOTAL DO EMPRÉSTIMO';
                 mPlanilha.Cells[mLinha,08] := mBruto;
                 mPlanilha.Cells[mLinha,09] := mJuros;
                 mPlanilha.Cells[mLinha,10] := mIOF;
                 mPlanilha.Cells[mLinha,11] := mTxDiv;
                 mPlanilha.Cells[mLinha,12] := mLiqCred;
                 mPlanilha.Cells[mLinha,13] := mCusto;

                 mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00';
                 mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00';
                 mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00';
                 mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00';
                 mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00';
                 mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00';

                 mBruto    := 0;
                 mJuros    := 0;
                 mIOF      := 0;
                 mTxDiv    := 0;
                 mLiqCred  := 0;
                 mCusto    := 0;

                 Inc(mLinha);
                 mEmprestimo := tEmprestimos.FieldByName('Numero').Value;
              end;
           end;

           Inc(mLinha);
           Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
           Application.ProcessMessages;
     end;

     Inc(mLinha);
     mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size      := 8;
     mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Bold      := true;
     mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color := RGB(255, 255, 140);

     mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
     mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
     mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
     mPlanilha.Range['A'+InttoStr(mLinha),'P'+InttoStr(mLinha)].VerticalAlignment := 2;

     mPlanilha.Cells[mLinha,06] := 'TOTAL GERAL';
     mPlanilha.Cells[mLinha,08] := mTBruto;
     mPlanilha.Cells[mLinha,09] := mTJuros;
     mPlanilha.Cells[mLinha,10] := mTIOF;
     mPlanilha.Cells[mLinha,11] := mTTxDiv;
     mPlanilha.Cells[mLinha,12] := mTLiqCred;
     mPlanilha.Cells[mLinha,13] := mTCusto;

     mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00';
     mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00';
     mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00';
     mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00';
     mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00';
     mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00';

     //Fecha o Excel.
     if Funcoes.Cancelado = true then begin
        Abort;
        mPlanilha.Free;
        mPlanilha.Destroy;
     end;

     //mPlanilha.Columns.Autofit;
     mPlanilha.Rows.Autofit;

     mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
     mPlanilha.Range['A1','P1'].Font.Size  := 14;
     mPlanilha.Range['A1','P1'].Font.Bold  := true;
     mPlanilha.Range['A1','P1'].Mergecells := True;
     mPlanilha.Range['A1','P2'].HorizontalAlignment := 3;
     mPlanilha.Cells[2,01] := 'Empréstimos (Desconto de Duplicatas)';
     mPlanilha.Range['A2','P2'].Mergecells := True;

     Janela_Processamento.Close;
     mPlanilha.Visible := true;
end;

procedure TImpressao_FinanceirosOP_EmprestimoDD.cConsolClick(Sender: TObject);
begin
     cCliente.Enabled  := cConsol.ItemIndex = 0;
     cCliente.KeyValue := 0;
end;

end.
