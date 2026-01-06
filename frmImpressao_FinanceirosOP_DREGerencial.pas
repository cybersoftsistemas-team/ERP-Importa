unit frmImpressao_FinanceirosOP_DREGerencial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, ppDBPipe, DB, ppParameter, ppVar, ppBands, ppCtrls,ppPrnabl, ppClass,
  ppReport, DBAccess, MSAccess, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Funcoes, IniFiles, ComObj,
  Mask, RxToolEdit, ppDB, ppDesignLayer, ppCache, ppComm, ppRelatv, ppProd, MemDS;

type
  TImpressao_FinanceirosOP_DREGerencial = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    tMovimento: TMSQuery;
    rDRE: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText9: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    pValor: TppDBText;
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
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    ppLabel2: TppLabel;
    pDescricao: TppDBText;
    ppLine3: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine2: TppLine;
    tEmpresas: TMSQuery;
    cExcel: TCheckBox;
    iLogo: TppImage;
    cConsolidar: TRadioGroup;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cDataFim: TDateEdit;
    pLinha: TppLine;
    cDataBase: TRadioGroup;
    cLancamentos: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportaEXCEL;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_FinanceirosOP_DREGerencial: TImpressao_FinanceirosOP_DREGerencial;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_DREGerencial.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'DataIni'    , cDataini.Date);
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'DataFim'    , cDataFim.Date);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'Excel'      , cExcel.Checked);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'DataBase'   , cDataBase.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'Lancamentos', cLancamentos.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'Consolidar' , cConsolidar.ItemIndex);
      aINI.Free;

      Impressao_FinanceirosOP_DREGerencial.Release;
      Impressao_FinanceirosOP_DREGerencial := nil;
end;

procedure TImpressao_FinanceirosOP_DREGerencial.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosOP_DREGerencial.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_DREGerencial.bImprimirClick(Sender: TObject);
Var
   mSQLFilial,
   mSQL,
   mSQLMatriz : WideString;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Configuracao.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

           tMovimento.SQL.Clear;
           if cDataBase.ItemIndex < 2 then begin
               tMovimento.SQL.Add('-------------------------------------------- UTILIZANDO DATA DO DOC OU DP VECTO. ------------------------------------------');
               tMovimento.SQL.Add('------------------------------------------------- MOVIMENTAÇÃO FINANCEIRA -------------------------------------------------');
               tMovimento.SQL.Add('SELECT Codigo');
               tMovimento.SQL.Add('      ,Descricao');
               tMovimento.SQL.Add('      ,Valor = ISNULL(');
                  tMovimento.SQL.Add('	                  (SELECT SUM( CASE WHEN PR.Tipo = ''R'' THEN Valor_Parcela ELSE Valor_Parcela *-1 END )');
               if cDataBase.ItemIndex = 0 then begin
                  tMovimento.SQL.Add('	                   FROM PagarReceber PR WHERE PR.Data_Documento BETWEEN :pDataIni AND :pDataFim')
               end else begin
                  tMovimento.SQL.Add('	                   FROM PagarReceber PR WHERE PR.Data_Vencimento BETWEEN :pDataIni AND :pDataFim');
               end;

               if Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                  tMovimento.SQL.Add('	                   AND (SELECT DRE_Principal FROM ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = Codigo');
               end else begin
                  tMovimento.SQL.Add('	                   AND (SELECT DRE_Principal FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = Codigo');
               end;

               tMovimento.SQL.Add('                       AND ISNULL(PR.Provisorio, 0) <> 1');
               tMovimento.SQL.Add('                       AND ISNULL(PR.Classificacao, '''') <> '''' ');

               if cLancamentos.ItemIndex = 1 then begin
                  tMovimento.SQL.Add('	                   AND (SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.Numero) > 0');
               end;

               tMovimento.SQL.Add('			   ), 0)');
               tMovimento.SQL.Add('	     ,Grupo');
               tMovimento.SQL.Add('INTO #DRE');
               tMovimento.SQL.Add('FROM #TMP_DRE');
               tMovimento.SQL.Add('------------------------------------------------------ JUROS / MULTAS -----------------------------------------------------');
               tMovimento.SQL.Add('UNION ALL');
               tMovimento.SQL.Add('SELECT Codigo');
               tMovimento.SQL.Add('      ,Descricao');
               tMovimento.SQL.Add('      ,Valor = ISNULL(');
               tMovimento.SQL.Add('	                  (SELECT SUM( CASE WHEN PR.Tipo = ''R'' THEN (Juros+Multa) ELSE (Juros+Multa) *-1 END )');
               if cDataBase.ItemIndex = 0 then
                  tMovimento.SQL.Add('	                   FROM PagarReceber PR WHERE PR.Data_Documento BETWEEN :pDataIni AND :pDataFim')
               else
                  tMovimento.SQL.Add('	                   FROM PagarReceber PR WHERE PR.Data_Vencimento BETWEEN :pDataIni AND :pDataFim');

               tMovimento.SQL.Add('	                   AND (PR.Juros + PR.Multa) > 0');
               if Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                  tMovimento.SQL.Add('	                   AND (SELECT DRE_Juros FROM ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = Codigo');
               end else begin
                  tMovimento.SQL.Add('	                   AND (SELECT DRE_Juros FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = Codigo');
               end;

               tMovimento.SQL.Add('                       AND ISNULL(PR.Provisorio, 0) <> 1');
               tMovimento.SQL.Add('                       AND ISNULL(PR.Classificacao, '''') <> '''' ');

               if cLancamentos.ItemIndex = 1 then begin
                  tMovimento.SQL.Add('	                   AND (SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.Numero) > 0');
               end;

               tMovimento.SQL.Add('			   ), 0)');
               tMovimento.SQL.Add('	     ,Grupo');
               tMovimento.SQL.Add('FROM #TMP_DRE');
               tMovimento.SQL.Add('--------------------------------------------------------- DESCONTOS ------------------------------------------------------');
               tMovimento.SQL.Add('UNION ALL');
               tMovimento.SQL.Add('SELECT Codigo');
               tMovimento.SQL.Add('      ,Descricao');
               tMovimento.SQL.Add('      ,Valor = ISNULL(');
               tMovimento.SQL.Add('	                  (SELECT SUM( CASE WHEN PR.Tipo = ''R'' THEN Desconto *-1 ELSE Desconto END )');
               if cDataBase.ItemIndex = 0 then
                  tMovimento.SQL.Add('	                   FROM PagarReceber PR WHERE PR.Data_Documento BETWEEN :pDataIni AND :pDataFim')
               else
                  tMovimento.SQL.Add('	                   FROM PagarReceber PR WHERE PR.Data_Vencimento BETWEEN :pDataIni AND :pDataFim');

               tMovimento.SQL.Add('	                   AND PR.Desconto > 0');
               if Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                  tMovimento.SQL.Add('	                   AND (SELECT DRE_Desconto FROM ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = Codigo');
               end else begin
                  tMovimento.SQL.Add('	                   AND (SELECT DRE_Desconto FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = Codigo');
               end;

               tMovimento.SQL.Add('                       AND ISNULL(PR.Provisorio, 0) <> 1');
               tMovimento.SQL.Add('                       AND ISNULL(PR.Classificacao, '''') <> ''''');

               if cLancamentos.ItemIndex = 1 then begin
                  tMovimento.SQL.Add('	                   AND (SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.Numero) > 0');
               end;

               tMovimento.SQL.Add('			   ), 0)');
               tMovimento.SQL.Add('	     ,Grupo');
               tMovimento.SQL.Add('FROM #TMP_DRE');
               tMovimento.SQL.Add('--------------------------------------------------- DESCONTO DE DUPLICATAS ----------------------------------------------');
               tMovimento.SQL.Add('UNION ALL');
               tMovimento.SQL.Add('SELECT Codigo');
               tMovimento.SQL.Add('      ,Descricao');
               tMovimento.SQL.Add('      ,Valor = ISNULL(');
               tMovimento.SQL.Add('	                  (SELECT SUM( CASE WHEN PR.Tipo = ''R'' THEN Desconto_Liquidacao *-1 ELSE Desconto_Liquidacao END )');
               if cDataBase.ItemIndex = 0 then
                  tMovimento.SQL.Add('	                   FROM PagarReceber PR WHERE PR.Data_Documento BETWEEN :pDataIni AND :pDataFim')
               else
                  tMovimento.SQL.Add('	                   FROM PagarReceber PR WHERE PR.Data_Vencimento BETWEEN :pDataIni AND :pDataFim');

               tMovimento.SQL.Add('	                   AND PR.Desconto_Liquidacao > 0');
               if Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                  tMovimento.SQL.Add('	                   AND (SELECT DRE_DescontoDupl FROM ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = Codigo');
               end else begin
                  tMovimento.SQL.Add('	                   AND (SELECT DRE_DescontoDupl FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = Codigo');
               end;

               tMovimento.SQL.Add('                       AND ISNULL(PR.Provisorio, 0) <> 1');
               tMovimento.SQL.Add('                       AND ISNULL(PR.Classificacao, '''') <> ''''');

               if cLancamentos.ItemIndex = 1 then begin
                  tMovimento.SQL.Add('	                   AND (SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.Numero) > 0');
               end;

               tMovimento.SQL.Add('			   ), 0)');
               tMovimento.SQL.Add('	     ,Grupo');
               tMovimento.SQL.Add('FROM #TMP_DRE');
           end else begin
               tMovimento.SQL.Add('------------------------------------------------ UTILIZANDO DATA DA BAIXA -------------------------------------------------');
               tMovimento.SQL.Add('------------------------------------------------- MOVIMENTAÇÃO FINANCEIRA -------------------------------------------------');
               tMovimento.SQL.Add('SELECT Codigo');
               tMovimento.SQL.Add('      ,Descricao');
               tMovimento.SQL.Add('      ,Valor = (SELECT SUM(CASE WHEN PRB.Tipo = ''R'' THEN (Valor+Desconto-Juros-Multa) ELSE (Valor+Desconto-Juros-Multa) *-1 END)');
               tMovimento.SQL.Add('	            FROM   PagarReceberBaixas PRB');
               tMovimento.SQL.Add('		    WHERE  PRB.Data BETWEEN :pDataIni AND :pDataFim');
               tMovimento.SQL.Add('	            AND    (SELECT DRE_Principal FROM ClassificacaoFinanceira CF WHERE CF.Codigo = (SELECT Classificacao FROM PagarReceber PR WHERE PR.Numero = PRB.Numero)) = Codigo)');
               tMovimento.SQL.Add('     ,Grupo');
               tMovimento.SQL.Add('INTO #DRE');
               tMovimento.SQL.Add('FROM #TMP_DRE');
               tMovimento.SQL.Add('');
               tMovimento.SQL.Add('------------------------------------------------------ JUROS / MULTAS -----------------------------------------------------');
               tMovimento.SQL.Add('UNION ALL');
               tMovimento.SQL.Add('SELECT Codigo');
               tMovimento.SQL.Add('      ,Descricao');
               tMovimento.SQL.Add('      ,Valor = (SELECT SUM(CASE WHEN PRB.Tipo = ''R'' THEN (Multa+Juros) ELSE (Multa+Juros) *-1 END)');
               tMovimento.SQL.Add('	            FROM   PagarReceberBaixas PRB');
               tMovimento.SQL.Add('		    WHERE  PRB.Data BETWEEN :pDataIni AND :pDataFim');
               tMovimento.SQL.Add('	            AND    (SELECT DRE_Juros FROM ClassificacaoFinanceira CF WHERE CF.Codigo = (SELECT Classificacao FROM PagarReceber PR WHERE PR.Numero = PRB.Numero)) = Codigo)');
               tMovimento.SQL.Add('     ,Grupo');
               tMovimento.SQL.Add('FROM #TMP_DRE');
               tMovimento.SQL.Add('--------------------------------------------------------- DESCONTOS ------------------------------------------------------');
               tMovimento.SQL.Add('UNION ALL');
               tMovimento.SQL.Add('SELECT Codigo');
               tMovimento.SQL.Add('      ,Descricao');
               tMovimento.SQL.Add('      ,Valor = (SELECT SUM(CASE WHEN PRB.Tipo = ''R'' THEN Desconto*-1 ELSE Desconto END)');
               tMovimento.SQL.Add('	            FROM   PagarReceberBaixas PRB');
               tMovimento.SQL.Add('		    WHERE  PRB.Data BETWEEN :pDataIni AND :pDataFim');
               tMovimento.SQL.Add('	            AND    (SELECT DRE_Desconto FROM ClassificacaoFinanceira CF WHERE CF.Codigo = (SELECT Classificacao FROM PagarReceber PR WHERE PR.Numero = PRB.Numero)) = Codigo');
               tMovimento.SQL.Add('	            AND    Origem_Desconto <> ''E'') ');
               tMovimento.SQL.Add('     ,Grupo');
               tMovimento.SQL.Add('FROM #TMP_DRE');
               tMovimento.SQL.Add('--------------------------------------------------- DESCONTO DE DUPLICATAS -------------------------------------------------');
               tMovimento.SQL.Add('UNION ALL');
               tMovimento.SQL.Add('SELECT Codigo');
               tMovimento.SQL.Add('      ,Descricao');
               tMovimento.SQL.Add('      ,Valor = (SELECT SUM(CASE WHEN PRB.Tipo = ''R'' THEN PR.Desconto_Liquidacao*-1 ELSE PR.Desconto_Liquidacao END)');
               tMovimento.SQL.Add('	            FROM   PagarReceberBaixas PRB, PagarReceber PR');
               tMovimento.SQL.Add('	            WHERE  PR.Numero = PRB.Numero');
               tMovimento.SQL.Add('	            AND    PRB.Data BETWEEN :pDataIni AND :pDataFim');
               tMovimento.SQL.Add('	            AND    (SELECT DRE_DescontoDupl FROM ClassificacaoFinanceira CF WHERE CF.Codigo = PR.Classificacao) = Codigo');
               tMovimento.SQL.Add('	            AND    Origem_Desconto = ''E'') ');
               tMovimento.SQL.Add('     ,Grupo');
               tMovimento.SQL.Add('FROM #TMP_DRE');
           end;
           
           // Consolidado todas as empresas.
           if cConsolidar.ItemIndex = 1 then begin
              tEmpresas.SQL.Clear;
              tEmpresas.SQL.Add('SELECT Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
              tEmpresas.SQL.Add('FROM   Empresas WHERE(Codigo <> :pEmpresa) AND (Consolidar = 1) ORDER BY Numero_Filial');
              tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
              tEmpresas.Open;

              mSQLMatriz := tMovimento.SQL.Text;

              tEmpresas.First;
              while not tEmpresas.Eof do begin
                    if Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                       mSQLFilial := RemoveCaracter('USE '+ EmpresasBanco_Dados.AsString, '', mSQLMatriz );
                       mSQLFilial := RemoveCaracter('PagarReceber '            , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber '           , mSQLFilial);
                       mSQLFilial := RemoveCaracter('ProcessosFechamento '     , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosFechamento '    , mSQLFilial);
                       mSQLFilial := RemoveCaracter('ProcessosFechamentoItens' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosFechamentoItens', mSQLFilial);
                       mSQLFilial := RemoveCaracter('INTO #DRE' , '' , mSQLFilial);
                       tMovimento.SQL.Add('UNION ALL');
                       tMovimento.SQL.Add(mSQLFilial);
                    end;
                    tEmpresas.Next;
              end;
           end;

           mSQL := tMovimento.SQL.Text;

           tMovimento.SQL.Clear;
           tMovimento.SQL.Add('-- TABELA DA DRE');
           tMovimento.SQL.Add('USE '+ EmpresasBanco_Dados.AsString);
           tMovimento.SQL.Add('SELECT Codigo');
           tMovimento.SQL.Add('      ,Descricao');
           tMovimento.SQL.Add('	     ,Grupo');
           tMovimento.SQL.Add('INTO #TMP_DRE');
           tMovimento.SQL.Add('FROM Cybersoft_Cadastros.dbo.DRE');
           tMovimento.SQL.Add('------------------------------------------------- TABELA DE TOTALIZADORES -------------------------------------------------');
           tMovimento.SQL.Add('SELECT Codigo');
           tMovimento.SQL.Add('      ,Descricao');
           tMovimento.SQL.Add('INTO #TMP_Grupos');
           tMovimento.SQL.Add('FROM Cybersoft_Cadastros.dbo.DREGrupos');

           tMovimento.SQL.Add(mSQL);

           tMovimento.SQL.Add('------------------------------------------------------ AGRUPA AS DRE´s ----------------------------------------------------');
           tMovimento.SQL.Add('SELECT DRE = Codigo');
           tMovimento.SQL.Add('      ,Descricao');
           tMovimento.SQL.Add('	     ,Valor = SUM(Valor)');
           tMovimento.SQL.Add('	     ,Grupo');
           tMovimento.SQL.Add('INTO   #DRE_Total');
           tMovimento.SQL.Add('FROM   #DRE');
           tMovimento.SQL.Add('GROUP BY Codigo, Descricao, Grupo');
           tMovimento.SQL.Add('-------------------------------------------- TOTALIZA OS GRUPOS COM BASE NAS DRE´s ---------------------------------------');
           tMovimento.SQL.Add('SELECT Codigo');
           tMovimento.SQL.Add('      ,Descricao');
           tMovimento.SQL.Add('	     ,Valor = ISNULL((SELECT SUM(Valor) FROM #DRE_Total WHERE #DRE_Total.Grupo = #TMP_Grupos.Codigo), 0)');
           tMovimento.SQL.Add('INTO #Grupos_Total');
           tMovimento.SQL.Add('FROM #TMP_Grupos');
           tMovimento.SQL.Add('-------------------------------------------- JUNTANDO AS TABELAS TOTALIZADORES -------------------------------------------');
           tMovimento.SQL.Add('SELECT Descricao');
           tMovimento.SQL.Add('	     ,Valor');
           tMovimento.SQL.Add('	     ,Grupo');
           tMovimento.SQL.Add('      ,Ordem = ''A'' ');
           tMovimento.SQL.Add('INTO  #Total');
           tMovimento.SQL.Add('FROM  #DRE_Total');
           tMovimento.SQL.Add('UNION ALL');
           tMovimento.SQL.Add('SELECT Descricao');
           tMovimento.SQL.Add('	     ,Valor');
           tMovimento.SQL.Add('	     ,Grupo = Codigo');
           tMovimento.SQL.Add('      ,Ordem = ''B'' ');
           tMovimento.SQL.Add('FROM  #Grupos_Total GT');
           tMovimento.SQL.Add('SELECT Descricao');
           tMovimento.SQL.Add('	     ,Valor = CASE WHEN Ordem = ''A'' THEN');
           tMovimento.SQL.Add('	                   Valor');
           tMovimento.SQL.Add('	              ELSE');
           tMovimento.SQL.Add('		           Valor + ISNULL((SELECT SUM(Valor) FROM #Total TT2 WHERE TT2.Grupo < #Total.Grupo AND Ordem = ''B''), 0)');
           tMovimento.SQL.Add('		      END');
           tMovimento.SQL.Add('	     ,Grupo');
           tMovimento.SQL.Add('	     ,Ordem');
           tMovimento.SQL.Add('FROM  #Total');
           tMovimento.SQL.Add('------------------------------------------------------ TOTAL DE CADA GRUPO -----------------------------------------------');
           tMovimento.SQL.Add('UNION ALL');
           tMovimento.SQL.Add('SELECT Descricao = ''* TOTAL *'' ');
           tMovimento.SQL.Add('	     ,Valor =  SUM(Valor)');
           tMovimento.SQL.Add('	     ,Grupo');
           tMovimento.SQL.Add('	     ,Ordem = ''AT'' ');
           tMovimento.SQL.Add('FROM   #DRE');
           tMovimento.SQL.Add('GROUP BY Grupo');
           tMovimento.SQL.Add('ORDER BY Grupo, Ordem');
           tMovimento.SQL.Add('DROP TABLE #TMP_DRE');
           tMovimento.SQL.Add('          ,#DRE');
           tMovimento.SQL.Add('	         ,#TMP_Grupos');
           tMovimento.SQL.Add('	         ,#Grupos_Total');
           tMovimento.SQL.Add('	         ,#DRE_Total');
           tMovimento.SQL.Add('	         ,#Total');
           tMovimento.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tMovimento.ParamByName('pDataFim').AsDate := cDataFim.Date;

           if cDataBase.ItemIndex < 2 then
              tMovimento.SQL.SaveToFile('c:\temp\DRE_Movimento_Data_Geral.sql')
           else
              tMovimento.SQL.SaveToFile('c:\temp\DRE_Movimento_Data_Baixa.sql');
           
           tMovimento.Open;

           Screen.Cursor := crDefault;

           lPeriodo.Caption := cDataIni.Text + ' á ' + cDataFim.Text;

           If cExcel.Checked = false then begin
              if FileExists(Dados.EmpresasLogo.Value) then begin
                 iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              end;
              //iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              rDRE.Reset;
              rDRE.Print;
              rDRE.Reset;
           end else begin
              ExportaExcel;
           End;
      End;
end;

procedure TImpressao_FinanceirosOP_DREGerencial.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                   := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date          := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'DataIni'    , 0 );
      cDataFim.Date          := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'DataFim'    , 0 );
      cExcel.Checked         := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'Excel'      , false );
      cDataBase.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'DataBase'   , 0 );
      cLancamentos.ItemIndex := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'Lancamentos', 0 );
      cConsolidar.ItemIndex  := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_DRE_GERENCIAL', 'Consolidar' , 0 );
      aINI.Free;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_DREGerencial.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
begin
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tMovimento.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');

       mPlanilha.WorkBooks.add(1);

       mPlanilha.Visible                              := false;
       mPlanilha.Range['A3','B3'].Interior.Color      := RGB(54, 96, 146);
       mPlanilha.Range['A3','B3'].Interior.Pattern    := 1;
       mPlanilha.Range['A3','B3'].Font.Bold           := true;
       mPlanilha.Range['A3','B3'].Font.Color          := clWhite;
       mPlanilha.Range['A3','B3'].Font.Size           := 10;
       mPlanilha.Range['A3','B3'].Borders.LineStyle   := 1; //xlContinuous;
       mPlanilha.Range['A3','B3'].Borders.Weight      := 2; //xlThin;
       mPlanilha.Range['A3','B3'].Borders.Color       := RGB(0,0,0);
       mPlanilha.Range['A3','B3'].HorizontalAlignment := 3;

       mPlanilha.Cells[3,01] := 'DESCRIÇÃO';
       mPlanilha.Cells[3,02] := 'VALOR';

       mLinha := 4;

       While (not tMovimento.Eof) and (not Funcoes.Cancelado) do  Begin
             mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Font.Size           := 10;

             mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Font.Bold := false;
             If tMovimento.FieldByName('Ordem').AsString = 'AT' then begin
                mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Font.Bold := true;
             end;
             If tMovimento.FieldByName('Ordem').AsString = 'B' then begin
                mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Font.Bold         := true;
                mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Interior.Color    := $00FFE8E8;
                mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
                mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Borders.Weight    := 2; //xlThin;
                mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].Borders.Color     := clSilver;
             End;

             mPlanilha.Cells[mLinha,01] := tMovimento.FieldByName('Descricao').AsString;
             mPlanilha.Cells[mLinha,02] := tMovimento.FieldByName('Valor').Value;

             mPlanilha.Cells[mLinha,02].NumberFormat := '#.##0,00';

             tMovimento.Next;

             Inc(mLinha);
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       End;

       //Fecha o Excel.
       If Funcoes.Cancelado = true then begin
//          KillTask('Excel.exe');    // Microsoft Excel
          Abort;
          mPlanilha.Free;
          mPlanilha.Destroy;
       End;

       mPlanilha.Columns.Autofit;
       mPlanilha.Rows.Autofit;

       mPlanilha.Cells[01,01].ColumnWidth := 80;
       mPlanilha.Cells[01,02].ColumnWidth := 20;

       mPlanilha.Cells[1,01] := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
       mPlanilha.Range['A1','B1'].Font.Size  := 14;
       mPlanilha.Range['A1','B1'].Font.Bold  := true;
       mPlanilha.Range['A1','B1'].Mergecells := True;
       mPlanilha.Range['A1','B2'].HorizontalAlignment := 3;
       mPlanilha.Cells[2,01] := 'DRE Gerencial - '+cDataIni.Text + ' á '+cDataFIm.Text;
       mPlanilha.Range['A2','B2'].Mergecells := True;

       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

procedure TImpressao_FinanceirosOP_DREGerencial.ppDetailBand1BeforePrint(Sender: TObject);
begin
      pValor.Font.Style     := [];
      pDescricao.Font.Style := [];
      if (tMovimento.FieldByName('Ordem').AsString = 'B') or (tMovimento.FieldByName('Ordem').AsString = 'AT')then begin
         pValor.Font.Style     := [fsBold];
         pDescricao.Font.Style := [fsBold];
      end;

      ppDetailBand1.Background1.Gradient.StartColor := clWhite;
      ppDetailBand1.Background1.Gradient.endcolor   := clWhite;
      ppDetailBand1.Background2.Gradient.StartColor := clWhite;
      ppDetailBand1.Background2.Gradient.endcolor   := clWhite;
      if tMovimento.FieldByName('Ordem').AsString = 'B' then begin
         ppDetailBand1.Background1.Gradient.StartColor := $00F4F400;
         ppDetailBand1.Background1.Gradient.endcolor   := $00DF9700;
         ppDetailBand1.Background2.Gradient.StartColor := $00DF9700;
         ppDetailBand1.Background2.Gradient.endcolor   := $00F4F400;
      end;
      pLinha.Visible := tMovimento.FieldByName('Ordem').AsString = 'AT';
end;

end.



