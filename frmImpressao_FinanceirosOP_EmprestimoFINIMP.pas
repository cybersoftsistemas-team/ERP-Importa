unit frmImpressao_FinanceirosOP_EmprestimoFINIMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppDBPipe, DBAccess, MSAccess, ppParameter, ppBands, ppVar, ppCtrls,
  ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RxLookup, Mask, myChkBox, Funcoes, IniFiles, ComObj,
  RxToolEdit, ppDB, MemDS, ppDesignLayer, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FinanceirosOP_EmprestimoFINIMP = class(TForm)
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
    StaticText5: TStaticText;
    cCliente: TRxDBLookupCombo;
    rEmprestimosFINIMP: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText18: TppDBText;
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
    ppLabel16: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine5: TppLine;
    cConsol: TRadioGroup;
    tEmpresas: TMSQuery;
    ppLabel18: TppLabel;
    ppDBText13: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
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
  Impressao_FinanceirosOP_EmprestimoFINIMP: TImpressao_FinanceirosOP_EmprestimoFINIMP;

implementation

uses frmDados, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_EmprestimoFINIMP.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FinanceirosOP_EmprestimoFINIMP.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_EmprestimoFINIMP.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Situacao'      , cSituacao.ItemIndex );
      aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'DataIni'       , cDataIni.Text);
      aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'DataFim'       , cDataFim.Text);
      If cBanco.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Banco', cBanco.KeyValue )
      else
         aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Banco', 0);

      If cCliente.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Cliente', cCliente.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Cliente', '');

      If cEmprestimo.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Emprestimo', cEmprestimo.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Emprestimo', '');

      aINI.WriteBool('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Excel', cExcel.Checked);
      aINI.Free;

     Impressao_FinanceirosOP_EmprestimoFINIMP.Release;
     Impressao_FinanceirosOP_EmprestimoFINIMP := nil;
end;

procedure TImpressao_FinanceirosOP_EmprestimoFINIMP.bImprimirClick(Sender: TObject);
var
    mSQLMatriz: WideString;
    mSQLFilial: WideString;
begin
      With Dados do begin
           Configuracao.Open;
           
           tEmprestimos.SQL.Clear;
           tEmprestimos.SQL.Add('USE '+ EmpresasBanco_Dados.AsString);
           tEmprestimos.SQL.Add('SELECT Garantia, ');
           If Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
              tEmprestimos.SQL.Add('       Banco            = (SELECT Nome FROM Bancos WHERE Codigo = EM.Banco),');
           end else begin
              tEmprestimos.SQL.Add('       Banco            = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = EM.Banco),');
           End;
           tEmprestimos.SQL.Add('       Numero           = Tipo+CAST(Numero AS VARCHAR(5)),');
           tEmprestimos.SQL.Add('       Data_Liberacao   = Data,');
           tEmprestimos.SQL.Add('       Clinte_Codigo    = Cliente,');
           tEmprestimos.SQL.Add('       Cliente_Nome     = (SELECT Nome FROM Clientes WHERE Codigo = Cliente),');
           tEmprestimos.SQL.Add('       Vencimento,');
           tEmprestimos.SQL.Add('       Valor_OperME     = (SELECT SUM(ISNULL(Valor_ME, 0)) FROM EmprestimosFINIMP FN WHERE FN.Emprestimo = EM.Numero),');
           tEmprestimos.SQL.Add('       Taxa_Cambial,');
           tEmprestimos.SQL.Add('       Valor_OperReal   = (SELECT SUM(ISNULL(Valor_ME * Taxa_Cambial, 0)) FROM EmprestimosFINIMP FN WHERE FN.Emprestimo = EM.Numero),');
           tEmprestimos.SQL.Add('       Custa_Contratacao= ISNULL(Valor_Contratacao, 0),');
           tEmprestimos.SQL.Add('       Custa_Liquidacao = ISNULL(Valor_Liquidacao, 0),');
           tEmprestimos.SQL.Add('       Valor_Aplicacao  = ISNULL(Valor_Aplicacao, 0),');
           tEmprestimos.SQL.Add('       Custo_Efetivo    = ISNULL(Valor_Contratacao, 0) + ISNULL(Valor_Liquidacao, 0),');
           tEmprestimos.SQL.Add('       Liquidado        = ISNULL(Liquidado, 0),');
           tEmprestimos.SQL.Add('       Origem           = CASE WHEN (SELECT Matriz_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = 8) = 1 THEN');
           tEmprestimos.SQL.Add('                               ''MT-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = 8)');
           tEmprestimos.SQL.Add('                          ELSE');
           tEmprestimos.SQL.Add('                               ''FL'' + (SELECT CAST(Numero_Filial AS VARCHAR(2))+''-''+Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = 8)');
           tEmprestimos.SQL.Add('                          END');
           tEmprestimos.SQL.Add('FROM   Emprestimos EM');
           tEmprestimos.SQL.Add('WHERE  EM.Tipo = ''FN'' ');
      
           If (DataLimpa(cDataIni.Text) = false) and (DataLimpa(cDataFim.Text) = false) then begin
              tEmprestimos.SQL.Add('AND   Data BETWEEN :pDataIni AND :pDataFim');
              tEmprestimos.ParamByName('pDataIni').AsDate := cDataIni.Date;
              tEmprestimos.ParamByName('pDataFim').AsDate := cDataFim.Date;
           End;
           If cSituacao.ItemIndex = 0 then begin
              tEmprestimos.SQL.Add('AND   (ISNULL(EM.Liquidar, 0) = 0)');
           End;
           If cSituacao.ItemIndex = 1 then begin
              tEmprestimos.SQL.Add('AND   (ISNULL(EM.Liquidar, 0) = 1)');
           End;
           If Trim(cBanco.Text) <> '' then begin
              tEmprestimos.SQL.Add('AND   EM.Banco = :pBanco');
              tEmprestimos.ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
           End;
           If Trim(cCliente.Text) <> '' then begin
              tEmprestimos.SQL.Add('AND   Cliente = :pCliente');
              tEmprestimos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
           End;
           If Trim(cEmprestimo.Text) <> '' then begin
              tEmprestimos.SQL.Add('AND   EM.Emprestimo = :pEmprestimo');
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
                       mSQLFilial := RemoveCaracter('Emprestimos '     , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Emprestimos '     , mSQLFilial);
                       mSQLFilial := RemoveCaracter('Clientes'         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Clientes'         , mSQLFilial);
                       mSQLFilial := RemoveCaracter('EmprestimosFINIMP', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.EmprestimosFINIMP', mSQLFilial);
                       mSQLFilial := RemoveCaracter(':pEmpresa'        , tEmpresas.FieldByName('Codigo').AsString, mSQLFilial);
                       If ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
                          mSQLFilial := RemoveCaracter('Bancos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Bancos', mSQLFilial);
                       End;
                       tEmprestimos.SQL.Add('UNION ALL');
                       tEmprestimos.SQL.Add(mSQLFilial);
                    End;
                    tEmpresas.Next;
              End;
           End;
           tEmprestimos.SQL.Add('ORDER  BY Numero');
           //tEmprestimos.SQL.SavetoFile('c:\temp\EmprestimosFINIMP.sql');

           tEmprestimos.Open;
      End;

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rEmprestimosFINIMP.Reset;
         rEmprestimosFINIMP.Print;
      end else begin
         ExportaExcel;
      End;
end;

procedure TImpressao_FinanceirosOP_EmprestimoFINIMP.FormShow(Sender: TObject);
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
           Emprestimos.SQL.Add('SELECT * FROM Emprestimos WHERE Tipo = ''DD'' ORDER BY Numero');
           Emprestimos.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cSituacao.ItemIndex      := aINI.ReadInteger('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Situacao'       , 2);
      cDataIni.Text            := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'DataIni'        , '');
      cDataFim.Text            := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'DataFim'        , '');
      cBanco.KeyValue          := aINI.ReadInteger('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Banco'          , 0);
      cCliente.KeyValue        := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Cliente'        , '');
      cEmprestimo.KeyValue     := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Emprestimo'     , '');
      cExcel.Checked           := aINI.ReadBool   ('IMPRESSAO_EMPRESTIMOS_FINIMP', 'Excel'          , false);
      aINI.Free;

      cCliente.Enabled  := cConsol.ItemIndex = 0;
      If cConsol.ItemIndex = 1 then cCliente.KeyValue := 0;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_EmprestimoFINIMP.ExportaEXCEL;
var
   mPlanilha  : Variant;
   mLinha     : Integer;
   mTOperME,
   mTOperReal,
   mTCusContr,
   mTCusLiq,
   mTAplicacao,
   mTCusto: Real;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tEmprestimos.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible                            := false;
       mPlanilha.Range['A3','O3'].Interior.Color    := RGB(54, 96, 146);
       mPlanilha.Range['A3','O3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','O3'].Font.Bold         := true;
       mPlanilha.Range['A3','O3'].Font.Color        := clWhite;
       mPlanilha.Range['A3','O3'].Font.Size         := 8;
       mPlanilha.Range['A3','O3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','O3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','O3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Range['A3','O3'].HorizontalAlignment := 3;

       mPlanilha.Cells[3,01] := 'BANCO';
       mPlanilha.Cells[3,02] := 'GARANTIA';
       mPlanilha.Cells[3,03] := 'Nº EMPR';
       mPlanilha.Cells[3,04] := 'DATA LIB';
       mPlanilha.Cells[3,05] := 'CLIENTE (DUPLICATA)';
       mPlanilha.Cells[3,06] := 'VENCTO';
       mPlanilha.Cells[3,07] := 'VLR OPER(ME)';
       mPlanilha.Cells[3,08] := 'TAXA';
       mPlanilha.Cells[3,09] := 'VLR OPER (R$)';
       mPlanilha.Cells[3,10] := 'CUSTAS CONTR (R$)';
       mPlanilha.Cells[3,11] := 'CUSTAS LIQ (R$)';
       mPlanilha.Cells[3,12] := 'APLICAÇÃO';
       mPlanilha.Cells[3,13] := 'CUSTO EFETIVO';
       mPlanilha.Cells[3,14] := 'LIQ';
       mPlanilha.Cells[3,15] := 'M/F';

       mLinha := 4;

       mTOperME    := 0;
       mTOperReal  := 0;
       mTCusContr  := 0;
       mTCusLiq    := 0;
       mTAplicacao := 0;
       mTCusto     := 0;

       While (not tEmprestimos.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['D'+InttoStr(mLinha),'D'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['E'+InttoStr(mLinha),'E'+InttoStr(mLinha)].HorizontalAlignment := 2;
             mPlanilha.Range['F'+InttoStr(mLinha),'F'+InttoStr(mLinha)].HorizontalAlignment := 3;
             //mPlanilha.Range['G'+InttoStr(mLinha),'G'+InttoStr(mLinha)].HorizontalAlignment := 2;
             mPlanilha.Range['N'+InttoStr(mLinha),'O'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['A'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size           := 8;
             mPlanilha.Range['N'+InttoStr(mLinha),'O'+InttoStr(mLinha)].Font.Size           := 10;

             mPlanilha.Cells[mLinha,01] := tEmprestimos.FieldByName('Banco').AsString;
             mPlanilha.Cells[mLinha,02] := tEmprestimos.FieldByName('Garantia').AsString;
             mPlanilha.Cells[mLinha,03] := tEmprestimos.FieldByName('Numero').Value;
             mPlanilha.Cells[mLinha,04] := tEmprestimos.FieldByName('Data_Liberacao').Value;
             mPlanilha.Cells[mLinha,05] := tEmprestimos.FieldByName('Cliente_Nome').Value;
             mPlanilha.Cells[mLinha,06] := tEmprestimos.FieldByName('Vencimento').Value;
             mPlanilha.Cells[mLinha,07] := tEmprestimos.FieldByName('Valor_OperME').Value;
             mPlanilha.Cells[mLinha,08] := tEmprestimos.FieldByName('Taxa_Cambial').Value;
             mPlanilha.Cells[mLinha,09] := tEmprestimos.FieldByName('Valor_OperReal').Value;
             mPlanilha.Cells[mLinha,10] := tEmprestimos.FieldByName('Custa_Contratacao').Value;
             mPlanilha.Cells[mLinha,11] := tEmprestimos.FieldByName('Custa_Liquidacao').Value;
             mPlanilha.Cells[mLinha,12] := tEmprestimos.FieldByName('Valor_Aplicacao').Value;
             mPlanilha.Cells[mLinha,13] := tEmprestimos.FieldByName('Custo_Efetivo').Value;
             If tEmprestimos.FieldByName('Liquidado').AsBoolean then mPlanilha.Cells[mLinha,14] := CHR(149);
             mPlanilha.Cells[mLinha,15] := tEmprestimos.FieldByName('Origem').AsString;

             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,0000';
             mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00';

             mTOperME    := mTOperME    + tEmprestimos.FieldByName('Valor_OperME').Value;
             mTOperReal  := mTOperReal  + tEmprestimos.FieldByName('Valor_OperReal').Value;
             mTCusContr  := mTCusContr  + tEmprestimos.FieldByName('Custa_Contratacao').Value;
             mTCusLiq    := mTCusLiq    + tEmprestimos.FieldByName('Custa_Liquidacao').Value;
             mTAplicacao := mTAplicacao + tEmprestimos.FieldByName('Valor_Aplicacao').Value;
             mTCusto     := mTCusto     + tEmprestimos.FieldByName('Custo_Efetivo').Value;

             tEmprestimos.Next;
             
             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       End;

       //Inc(mLinha);
       mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Size      := 8;
       mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Font.Bold      := true;
       mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Interior.Color := RGB(255, 255, 140);

       mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['F'+InttoStr(mLinha),'M'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);

       mPlanilha.Cells[mLinha,06] := 'TOTAL';
       mPlanilha.Cells[mLinha,07] := mTOperME;
       mPlanilha.Cells[mLinha,09] := mTOperReal;
       mPlanilha.Cells[mLinha,10] := mTCusContr;
       mPlanilha.Cells[mLinha,11] := mTCusLiq;
       mPlanilha.Cells[mLinha,12] := mTAplicacao;
       mPlanilha.Cells[mLinha,13] := mTCusto;

       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,13].NumberFormat := '#.##0,00';

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Columns.Autofit;
       mPlanilha.Rows.Autofit;

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','O1'].Font.Size  := 14;
       mPlanilha.Range['A1','O1'].Font.Bold  := true;
       mPlanilha.Range['A1','O1'].Mergecells := True;
       mPlanilha.Range['A1','O2'].HorizontalAlignment := 3;
       mPlanilha.Cells[2,01] := 'Empréstimos (FINIMP)';
       mPlanilha.Range['A2','O2'].Mergecells := True;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


procedure TImpressao_FinanceirosOP_EmprestimoFINIMP.cConsolClick(Sender: TObject);
begin
      cCliente.Enabled  := cConsol.ItemIndex = 0;
      cCliente.KeyValue := 0;
end;

end.
