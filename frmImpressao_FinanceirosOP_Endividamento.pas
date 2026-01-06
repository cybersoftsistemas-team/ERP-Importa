unit frmImpressao_FinanceirosOP_Endividamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppDBPipe, DBAccess, MSAccess, ppParameter, ppBands,  ppCtrls, ppVar,
  ppReport, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, RxLookup, Mask, Funcoes, IniFiles, ComObj,
  RxToolEdit, MemDS, ppDB, ppDesignLayer, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_FinanceirosOP_Endividamento = class(TForm)
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
    cExcel: TCheckBox;
    rEmprestimosDD: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText18: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppParameterList1: TppParameterList;
    pEmpresas: TppDBPipeline;
    ppEmprestimos: TppDBPipeline;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    ppDBText3: TppDBText;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    tEmprestimos: TMSQuery;
    dstEmpestimos: TDataSource;
    cEmprestimo: TRadioGroup;
    cSituacao: TRadioGroup;
    ppLabel13: TppLabel;
    ppDBText11: TppDBText;
    cConsol: TRadioGroup;
    tEmpresas: TMSQuery;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_Endividamento: TImpressao_FinanceirosOP_Endividamento;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_Endividamento.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FinanceirosOP_Endividamento.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_Endividamento', 'DataIni', cDataIni.Text);
      aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_Endividamento', 'DataFim', cDataFim.Text);
      If cBanco.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Banco', cBanco.KeyValue )
      else
         aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Banco', 0);
      If cCliente.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Cliente', cCliente.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Cliente', '');
      aINI.WriteBool('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Excel', cExcel.Checked);
      aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Emprestimo', cEmprestimo.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Situacao', cSituacao.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Consolida', cConsol.ItemIndex);
      aINI.Free;

      Impressao_FinanceirosOP_Endividamento.Release;
      Impressao_FinanceirosOP_Endividamento := nil;
end;

procedure TImpressao_FinanceirosOP_Endividamento.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_Endividamento.bImprimirClick(Sender: TObject);
Var
    mSQLMatriz,
    mSQLFilial: WideString;
begin
      Screen.Cursor := crSQLWait;

      Dados.Configuracao.Open;
      
      tEmprestimos.SQL.Clear;
      tEmprestimos.SQL.Add('USE '+ Dados.EmpresasBanco_Dados.AsString);
      tEmprestimos.SQL.Add('SELECT Emprestimo      = Numero_Documento,');
      tEmprestimos.SQL.Add('       Data,');
      If Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean = false then
         tEmprestimos.SQL.Add('       Banco           = (SELECT Nome FROM Bancos WHERE Codigo = Banco),')
      else
         tEmprestimos.SQL.Add('       Banco           = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = Banco),');
      tEmprestimos.SQL.Add('       Modalidade      = CASE WHEN Tipo = ''DD'' THEN ''Desconto Duplicata'' ');
      tEmprestimos.SQL.Add('                              WHEN Tipo = ''CG'' THEN ''Capital Giro'' ');
      tEmprestimos.SQL.Add('                              WHEN Tipo = ''FN'' THEN ''FINIMP'' ');
      tEmprestimos.SQL.Add('                         END,');
      tEmprestimos.SQL.Add('       Garantia,');
      tEmprestimos.SQL.Add('       Valor_Tomado    = ROUND(ISNULL(Valor_Principal + Valor_Juros, 0), 2),');
      tEmprestimos.SQL.Add('       Valor_Pago      = ISNULL(CASE WHEN Tipo = ''CG'' THEN');
      tEmprestimos.SQL.Add('                         ISNULL((SELECT SUM(Valor_Parcela) FROM PagarReceber WHERE ISNULL(Baixa_Numero, 0) > 0 AND Numero IN(SELECT Financeiro_Numero FROM EmprestimosParcelas EPP WHERE EPP.Emprestimo = Emprestimos.Numero)), 0)');
      tEmprestimos.SQL.Add('                         WHEN Tipo = ''DD'' THEN');
      tEmprestimos.SQL.Add('                              ISNULL((SELECT SUM(Valor_Bruto) FROM EmprestimosDuplicatas ED WHERE ED.Emprestimo = Emprestimos.Numero AND ISNULL(Liquidar, 0) = 1), 0)');
      tEmprestimos.SQL.Add('                         WHEN Tipo = ''FN'' THEN');
      tEmprestimos.SQL.Add('                              ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP EPP WHERE EPP.Emprestimo = Emprestimos.Numero)), 0)');
      tEmprestimos.SQL.Add('                         END, 0),');
      tEmprestimos.SQL.Add('       Valor_Aberto    = ISNULL(CASE WHEN Tipo = ''CG'' THEN');
      tEmprestimos.SQL.Add('                                     (Valor_Principal+Valor_Juros) - ISNULL((SELECT SUM(Valor_Parcela) FROM PagarReceber WHERE ISNULL(Baixa_Numero, 0) > 0 AND');
      tEmprestimos.SQL.Add('                                     Numero IN(SELECT Financeiro_Numero FROM EmprestimosParcelas EPP WHERE EPP.Emprestimo = Emprestimos.Numero)), 0)');
      tEmprestimos.SQL.Add('                              WHEN Tipo = ''DD'' THEN');
      tEmprestimos.SQL.Add('                                   (ROUND(Valor_Principal+Valor_Juros, 2)) - ISNULL((SELECT SUM(Valor_Bruto) FROM EmprestimosDuplicatas ED WHERE ED.Emprestimo = Emprestimos.Numero AND ISNULL(Liquidar, 0) = 1), 0)');
      tEmprestimos.SQL.Add('                              WHEN Tipo = ''FN'' THEN');
      tEmprestimos.SQL.Add('                                   (Valor_Principal+Valor_Juros) - ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP EPP WHERE EPP.Emprestimo = Emprestimos.Numero)), 0)');
      tEmprestimos.SQL.Add('                         END, 0),');
      tEmprestimos.SQL.Add('       Ultima_Data     = CASE WHEN Tipo = ''CG'' THEN');
      tEmprestimos.SQL.Add('                                   (SELECT MAX(Vencimento) FROM EmprestimosParcelas EP WHERE EP.Emprestimo = Emprestimos.Numero)');
      tEmprestimos.SQL.Add('                              WHEN Tipo = ''DD'' THEN');
      tEmprestimos.SQL.Add('                                   (SELECT MAX(Vencimento) FROM EmprestimosDuplicatas EP WHERE EP.Emprestimo = Emprestimos.Numero)');
      tEmprestimos.SQL.Add('                              WHEN Tipo = ''FN'' THEN');
      tEmprestimos.SQL.Add('                                   Vencimento');
      tEmprestimos.SQL.Add('                         END,');
      tEmprestimos.SQL.Add('       Valor_Aplicacao = ISNULL(Valor_Aplicacao, 0),');
      tEmprestimos.SQL.Add('       Valor_Risco     = ISNULL(CASE WHEN Tipo = ''CG'' THEN');
      tEmprestimos.SQL.Add('                                   ((Valor_Principal+Valor_Juros) - ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosParcelas EPP WHERE EPP.Emprestimo = Emprestimos.Numero)), 0))');
      tEmprestimos.SQL.Add('                                   - ISNULL(Valor_Aplicacao, 0)');
      tEmprestimos.SQL.Add('                              WHEN Tipo = ''DD'' THEN');
      tEmprestimos.SQL.Add('                                   ((Valor_Principal+Valor_Juros) - ISNULL((SELECT SUM(Valor_Bruto) FROM EmprestimosDuplicatas ED WHERE ED.Emprestimo = Emprestimos.Numero AND ISNULL(Liquidar, 0) = 1), 0))-');
      tEmprestimos.SQL.Add('                                   ISNULL(Valor_Aplicacao, 0)');
      tEmprestimos.SQL.Add('                              WHEN Tipo = ''FN'' THEN');
      tEmprestimos.SQL.Add('                                   ((Valor_Principal+Valor_Juros) - ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas WHERE Numero IN(SELECT Financeiro_Numero FROM EmprestimosFINIMP EPP WHERE EPP.Emprestimo = Emprestimos.Numero)), 0))');
      tEmprestimos.SQL.Add('                                   - ISNULL(Valor_Aplicacao, 0)');
      tEmprestimos.SQL.Add('                         END, 0),');
      tEmprestimos.SQL.Add('       Cliente         = (SELECT Nome FROM Clientes WHERE Codigo = Cliente),');
      tEmprestimos.SQL.Add('       Emprestimo_Numero = Numero,');
      tEmprestimos.SQL.Add('       Origem = CASE WHEN (SELECT Matriz_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) = 1 THEN');
      tEmprestimos.SQL.Add('                     ''MT-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
      tEmprestimos.SQL.Add('                ELSE');
      tEmprestimos.SQL.Add('                     ''FL''+CAST((SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) AS VARCHAR(2)) + ''-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
      tEmprestimos.SQL.Add('                END,');
      tEmprestimos.SQL.Add('       Parcelas = CASE WHEN SUBSTRING(Numero_Documento,1,2) = ''DD'' OR SUBSTRING(Numero_Documento,1,2) = ''FN'' THEN ');
      tEmprestimos.SQL.Add('                       0');
      tEmprestimos.SQL.Add('                  ELSE');
      tEmprestimos.SQL.Add('                      (SELECT COUNT(*) FROM EmprestimosParcelas EP WHERE EP.Emprestimo = Emprestimos.Numero AND ISNULL((SELECT COUNT(*) FROM PagarReceberBaixas PB WHERE PB.Numero = Financeiro_Numero), 0) = 0)');
      tEmprestimos.SQL.Add('                  END');
      tEmprestimos.SQL.Add('INTO   #TEMP');
      tEmprestimos.SQL.Add('FROM   Emprestimos ');
      tEmprestimos.SQL.Add('WHERE  Numero IS NOT NULL');
      If cEmprestimo.ItemIndex = 0 then begin
         tEmprestimos.SQL.Add('AND   Tipo = ''CG'' ');
      End;
      If cEmprestimo.ItemIndex = 1 then begin
         tEmprestimos.SQL.Add('AND   Tipo = ''DD'' ');
      End;
      If cEmprestimo.ItemIndex = 2 then begin
         tEmprestimos.SQL.Add('AND   Tipo = ''FN'' ');
      End;
      If (DataLimpa(cDataIni.Text) = false) and (DataLimpa(cDataFim.Text) = false) then begin
         tEmprestimos.SQL.Add('AND   Data BETWEEN :pDataIni AND :pDataFim');
         tEmprestimos.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tEmprestimos.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;
      If Trim(cBanco.Text) <> '' then begin
         tEmprestimos.SQL.Add('AND   Banco = :pBanco');
         tEmprestimos.ParamByName('pBanco').AsInteger := Dados.BancosCodigo.AsInteger;
      End;
      If Trim(cCliente.Text) <> '' then begin
         tEmprestimos.SQL.Add('AND   Cliente = :pCliente');
         tEmprestimos.ParamByName('pCliente').AsInteger := Dados.ClientesCodigo.AsInteger;
      End;

      // Outras Empresas.
      If cConsol.ItemIndex = 1 then begin
         tEmpresas.SQL.Clear;
         tEmpresas.SQL.Add('SELECT Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
         tEmpresas.SQL.Add('FROM   Empresas WHERE(Codigo <> :pEmpresa) AND (Consolidar = 1) ORDER BY Numero_Filial');
         tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
         tEmpresas.Open;

         mSQLMatriz := tEmprestimos.SQL.Text;

         tEmpresas.First;
         While not tEmpresas.Eof do begin
               If Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Dados.Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                  mSQLFilial := RemoveCaracter('USE '+ Dados.EmpresasBanco_Dados.AsString, '', mSQLMatriz );
                  mSQLFilial := RemoveCaracter('EmprestimosDuplicatas', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.EmprestimosDuplicatas', mSQLFilial);
                  mSQLFilial := RemoveCaracter('EmprestimosParcelas'  , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.EmprestimosParcelas'  , mSQLFilial);
                  mSQLFilial := RemoveCaracter('EmprestimosFINIMP'    , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.EmprestimosFINIMP'    , mSQLFilial);
                  mSQLFilial := RemoveCaracter('Emprestimos '         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Emprestimos '         , mSQLFilial);
                  mSQLFilial := RemoveCaracter('Emprestimos.Numero'   , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Emprestimos.Numero'   , mSQLFilial);
                  mSQLFilial := RemoveCaracter('PagarReceberBaixas'   , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceberBaixas'   , mSQLFilial);
                  mSQLFilial := RemoveCaracter('Clientes '            , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Clientes '            , mSQLFilial);
                  mSQLFilial := RemoveCaracter(':pEmpresa'            , tEmpresas.FieldByName('Codigo').AsString, mSQLFilial);

                  If Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
                     mSQLFilial := RemoveCaracter('Bancos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Bancos', mSQLFilial);
                  End;
                  
                  mSQLFilial := RemoveCaracter('INTO   #TEMP' , '' , mSQLFilial);
                  tEmprestimos.SQL.Add('UNION ALL');
                  tEmprestimos.SQL.Add(mSQLFilial);
               End;
               tEmpresas.Next;
         End;
      End;

      tEmprestimos.SQL.Add('SELECT Emprestimo,');
      tEmprestimos.SQL.Add('       Emprestimo_Numero,');
      tEmprestimos.SQL.Add('       Data,');
      tEmprestimos.SQL.Add('       Banco,');
      tEmprestimos.SQL.Add('       Modalidade,');
      tEmprestimos.SQL.Add('       Garantia,');
      tEmprestimos.SQL.Add('       Valor_Tomado,');
      tEmprestimos.SQL.Add('       Valor_Pago,');
      tEmprestimos.SQL.Add('       Valor_Aberto,');
      tEmprestimos.SQL.Add('       Ultima_Data,');
      tEmprestimos.SQL.Add('       Valor_Aplicacao,');
      tEmprestimos.SQL.Add('       Valor_Risco,');
      tEmprestimos.SQL.Add('       Cliente,');
      tEmprestimos.SQL.Add('       Parcelas_Abertas = CASE WHEN SUBSTRING(Emprestimo,1,2) = ''DD'' OR SUBSTRING(Emprestimo,1,2) = ''FN'' THEN');
      tEmprestimos.SQL.Add('                               CASE WHEN Valor_Aberto > 1 THEN 1 ELSE 0 END');
      tEmprestimos.SQL.Add('                          ELSE');
      tEmprestimos.SQL.Add('                               Parcelas');
      tEmprestimos.SQL.Add('                          END,');

      tEmprestimos.SQL.Add('       Origem');
      tEmprestimos.SQL.Add('FROM   #TEMP');

      If cSituacao.ItemIndex = 0 then
         tEmprestimos.SQL.Add('WHERE Valor_Aberto <> 0');
      If cSituacao.ItemIndex = 1 then
         tEmprestimos.SQL.Add('WHERE Valor_Aberto = 0');

      tEmprestimos.SQL.Add('ORDER  BY Data');
      tEmprestimos.SQL.Add('DROP TABLE #TEMP');
      tEmprestimos.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
      //tEmprestimos.SQL.SavetoFile('c:\temp\EmprestimosEndividamento.sql');
      tEmprestimos.Open;

      Screen.Cursor := crDefault;

      If cExcel.Checked = false then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
        // iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         rEmprestimosDD.Reset;
         rEmprestimosDD.Print;
      end else begin
         ExportaExcel;
      End;
end;

procedure TImpressao_FinanceirosOP_Endividamento.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cBanco.ClearValue;
      cCliente.ClearValue;
end;

procedure TImpressao_FinanceirosOP_Endividamento.FormShow(Sender: TObject);
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

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Text         := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_Endividamento', 'DataIni'   , '');
      cDataFim.Text         := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_Endividamento', 'DataFim'   , '');
      cBanco.KeyValue       := aINI.ReadInteger('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Banco'     , 0);
      cCliente.KeyValue     := aINI.ReadString ('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Cliente'   , '');
      cExcel.Checked        := aINI.ReadBool   ('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Excel'     , false);
      cEmprestimo.ItemIndex := aINI.ReadInteger('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Emprestimo', 3);
      cSituacao.ItemIndex   := aINI.ReadInteger('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Situacao'  , 2);
      cConsol.ItemIndex     := aINI.ReadInteger('IMPRESSAO_EMPRESTIMOS_Endividamento', 'Consolida' , 0);
      aINI.Free;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_Endividamento.ExportaEXCEL;
var
   mPlanilha  : Variant;
   mLinha     : Integer;
   mValorTomado,
   mValorPago,
   mValorAberto,
   mValorAplicacao,
   mValorRisco: Real;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tEmprestimos.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible                            := false;
       mPlanilha.Range['A3','N3'].Interior.Color    := RGB(54, 96, 146);
       mPlanilha.Range['A3','N3'].Interior.Pattern  := 1;
       mPlanilha.Range['A3','N3'].Font.Bold         := true;
       mPlanilha.Range['A3','N3'].Font.Color        := clWhite;
       mPlanilha.Range['A3','N3'].Font.Size         := 8;
       mPlanilha.Range['A3','N3'].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['A3','N3'].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['A3','N3'].Borders.Color     := RGB(0,0,0);

       mPlanilha.Range['A3','N3'].HorizontalAlignment := 3;
       mPlanilha.Range['A3','N3'].VerticalAlignment   := 2;

       mPlanilha.Cells[3,01] := 'Nº';
       mPlanilha.Cells[3,02] := 'DATA';
       mPlanilha.Cells[3,03] := 'BANCO';
       mPlanilha.Cells[3,04] := 'MODALIDADE';
       mPlanilha.Cells[3,05] := 'GARANTIA';
       mPlanilha.Cells[3,06] := 'VLR.TOMADO';
       mPlanilha.Cells[3,07] := 'VLR.PAGO';
       mPlanilha.Cells[3,08] := 'VLR.ABERTO';
       mPlanilha.Cells[3,09] := 'ULT.VENC';
       mPlanilha.Cells[3,10] := 'PARC.AB';
       mPlanilha.Cells[3,11] := 'VLR.APLICAÇÃO';
       mPlanilha.Cells[3,12] := 'RISCO LÍQUIDO';
       mPlanilha.Cells[3,13] := 'CLIENTE';
       mPlanilha.Cells[3,14] := 'ORIGEM';

       mPlanilha.Cells[03,01].ColumnWidth := 5;
       mPlanilha.Cells[03,02].ColumnWidth := 10;
       mPlanilha.Cells[03,03].ColumnWidth := 25;
       mPlanilha.Cells[03,04].ColumnWidth := 15;
       mPlanilha.Cells[03,05].ColumnWidth := 10;
       mPlanilha.Cells[03,06].ColumnWidth := 14;
       mPlanilha.Cells[03,07].ColumnWidth := 14;
       mPlanilha.Cells[03,08].ColumnWidth := 14;
       mPlanilha.Cells[03,09].ColumnWidth := 9;
       mPlanilha.Cells[03,10].ColumnWidth := 6;
       mPlanilha.Cells[03,11].ColumnWidth := 14;
       mPlanilha.Cells[03,12].ColumnWidth := 14;
       mPlanilha.Cells[03,13].ColumnWidth := 45;
       mPlanilha.Cells[03,14].ColumnWidth := 6;

       mLinha := 4;

       mValorTomado    := 0;
       mValorPago      := 0;
       mValorAberto    := 0;
       mValorAplicacao := 0;
       mValorRisco     := 0;

       While (not tEmprestimos.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['I'+InttoStr(mLinha),'I'+InttoStr(mLinha)].HorizontalAlignment := 3;
             mPlanilha.Range['A'+InttoStr(mLinha),'N'+InttoStr(mLinha)].Font.Size           := 8;

             mPlanilha.Cells[mLinha,01] := tEmprestimos.FieldByName('Emprestimo').AsString;
             mPlanilha.Cells[mLinha,02] := tEmprestimos.FieldByName('Data').Value;
             mPlanilha.Cells[mLinha,03] := tEmprestimos.FieldByName('Banco').AsString;
             mPlanilha.Cells[mLinha,04] := tEmprestimos.FieldByName('Modalidade').AsString;
             mPlanilha.Cells[mLinha,05] := tEmprestimos.FieldByName('Garantia').AsString;
             mPlanilha.Cells[mLinha,06] := tEmprestimos.FieldByName('Valor_Tomado').Value;
             mPlanilha.Cells[mLinha,07] := tEmprestimos.FieldByName('Valor_Pago').Value;
             mPlanilha.Cells[mLinha,08] := tEmprestimos.FieldByName('Valor_Aberto').Value;
             mPlanilha.Cells[mLinha,09] := tEmprestimos.FieldByName('Ultima_Data').Value;
             mPlanilha.Cells[mLinha,10] := tEmprestimos.FieldByName('Parcelas_Abertas').Value;
             mPlanilha.Cells[mLinha,11] := tEmprestimos.FieldByName('Valor_Aplicacao').Value;
             mPlanilha.Cells[mLinha,12] := tEmprestimos.FieldByName('Valor_Risco').Value;
             mPlanilha.Cells[mLinha,13] := tEmprestimos.FieldByName('Cliente').AsString;
             mPlanilha.Cells[mLinha,14] := tEmprestimos.FieldByName('Origem').AsString;

             mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00';
             mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00';

             mValorTomado    := mValorTomado    + tEmprestimos.FieldByName('Valor_Tomado').AsCurrency;
             mValorPago      := mValorPago      + tEmprestimos.FieldByName('Valor_Pago').AsCurrency;
             mValorAberto    := mValorAberto    + tEmprestimos.FieldByName('Valor_Aberto').AsCurrency;
             mValorAplicacao := mValorAplicacao + tEmprestimos.FieldByName('Valor_Aplicacao').AsCurrency;
             mValorRisco     := mValorRisco     + tEmprestimos.FieldByName('Valor_Risco').AsCurrency;

             tEmprestimos.Next;
             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       End;

       //Inc(mLinha);
       mPlanilha.Range['E'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Size      := 8;
       mPlanilha.Range['E'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Bold      := true;
       mPlanilha.Range['E'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Interior.Color := RGB(255, 255, 140);

       mPlanilha.Range['E'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
       mPlanilha.Range['E'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
       mPlanilha.Range['E'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Borders.Color     := RGB(0,0,0);
       mPlanilha.Range['E'+InttoStr(mLinha),'L'+InttoStr(mLinha)].VerticalAlignment := 2;

       mPlanilha.Cells[mLinha,05] := 'TOTAL GERAL';

       mPlanilha.Cells[mLinha,06] := mValorTomado;
       mPlanilha.Cells[mLinha,07] := mValorPago;
       mPlanilha.Cells[mLinha,08] := mValorAberto;
       mPlanilha.Cells[mLinha,11] := mValorAplicacao;
       mPlanilha.Cells[mLinha,12] := mValorRisco;

       mPlanilha.Cells[mLinha,06].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,07].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,08].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00';
       mPlanilha.Cells[mLinha,12].NumberFormat := '#.##0,00';

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Rows.Autofit;

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','N1'].Font.Size  := 14;
       mPlanilha.Range['A1','N1'].Font.Bold  := true;
       mPlanilha.Range['A1','N1'].Mergecells := True;
       mPlanilha.Range['A1','N2'].HorizontalAlignment := 3;
       mPlanilha.Cells[2,01] := 'Empréstimos (Endividamento)';
       mPlanilha.Range['A2','N2'].Mergecells := True;
       mPlanilha.Range['A1','N2'].VerticalAlignment := 2;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;


end.
