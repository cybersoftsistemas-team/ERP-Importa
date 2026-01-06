unit frmImpressao_Fiscais_ApuracaoPISCOFINS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, RXSpin, INIFiles, DateUtils,
  ppBands, ppReport, DB, DBAccess, MSAccess, Funcoes, ppDBPipe, ppCtrls, ppPrnabl,
  ppVar, ppParameter, MemDS, ppDesignLayer, ppClass, ppCache, ppProd, ppComm, ppRelatv, ppDB, Vcl.Mask;

type
  TImpressao_Fiscais_ApuracaoPISCOFINS = class(TForm)
    StaticText2: TStaticText;
    cAno: TRxSpinEdit;
    cMes: TComboBox;
    Panel1: TPanel;
    bSair: TButton;
    cTodos: TCheckBox;
    ppEmpresas: TppDBPipeline;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel4: TRxLabel;
    cConsol: TCheckBox;
    rApuracao: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppImage1: TppImage;
    ppLabel2: TppLabel;
    pNomeMes: TppLabel;
    ppDBText4: TppDBText;
    iLogo2: TppImage;
    ppDetailBand1: TppDetailBand;
    pDescricao: TppDBText;
    pBC: TppDBText;
    pAliqPIS: TppDBText;
    pAliqCOFINS: TppDBText;
    pValorPIS: TppDBText;
    pValorCOFINS: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine5: TppLine;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppLine7: TppLine;
    ppParameterList2: TppParameterList;
    bImprimir: TButton;
    tApuracao2: TMSQuery;
    pApuracao: TppDBPipeline;
    dstApuracao: TDataSource;
    ppLabel4: TppLabel;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppLabel8: TppLabel;
    ppShape3: TppShape;
    ppLabel9: TppLabel;
    ppShape4: TppShape;
    ppLine4: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppLine12: TppLine;
    tEmpresas: TMSQuery;
    tSaldo: TMSQuery;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine11: TppLine;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cTodosClick(Sender: TObject);
    procedure cMesChange(Sender: TObject);
    procedure cAnoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPISDeb:Real;
  end;

var
  Impressao_Fiscais_ApuracaoPISCOFINS: TImpressao_Fiscais_ApuracaoPISCOFINS;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_Fiscais_ApuracaoPISCOFINS.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI           := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cMes.ItemIndex := aINI.ReadInteger('IMPRESSAO_PISCOFINS', 'Mes'  , MonthOf(Date)-1 );
      cAno.Value     := aINI.ReadInteger('IMPRESSAO_PISCOFINS', 'Ano'  , YearOf(Date) );
      cTodos.Checked := aINI.ReadBool   ('IMPRESSAO_PISCOFINS', 'Todos', False );
      aINI.Free;

      Dados.Configuracao.Open;
end;

procedure TImpressao_Fiscais_ApuracaoPISCOFINS.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_Fiscais_ApuracaoPISCOFINS.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_PISCOFINS', 'Mes'  , cMes.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_PISCOFINS', 'Ano'  , cAno.AsInteger);
      aINI.WriteBool   ('IMPRESSAO_PISCOFINS', 'Todos', cTodos.Checked);

      // Registrando o saldo a pagar no mês para geração no financeiro.
      tApuracao2.SQL.Clear;
      tApuracao2.SQL.Add('SELECT * FROM ApuracaoPISCOFINS WHERE Ordem = ''Z0'' ');
      tApuracao2.Open;

      aINI.WriteFloat('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'PIS_Rec'    , tApuracao2.FieldByName('Valor_PIS').AsCurrency *-1);
      aINI.WriteFloat('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring, 'COFINS_Rec' , tApuracao2.FieldByName('Valor_COFINS').AsCurrency *-1);
      aINI.Free;

      LimpaMemoria;
      Impressao_Fiscais_ApuracaoPISCOFINS.Release;
      Impressao_Fiscais_ApuracaoPISCOFINS := nil;
end;

procedure TImpressao_Fiscais_ApuracaoPISCOFINS.cTodosClick(Sender: TObject);
begin
      cMes.Enabled := not cTodos.Checked;
      If cTodos.Checked then begin
         cMes.Text := '';
         cAno.SetFocus;
         bImprimir.Enabled := cAno.AsInteger <> 0;
      End else begin
         cMes.SetFocus;
         bImprimir.Enabled := (cMes.Text <> '') and (cAno.AsInteger <> 0);
      End;
end;

procedure TImpressao_Fiscais_ApuracaoPISCOFINS.cMesChange(Sender: TObject);
begin
       bImprimir.Enabled := (cMes.Text <> '') and (cAno.AsInteger <> 0);
end;

procedure TImpressao_Fiscais_ApuracaoPISCOFINS.cAnoChange(Sender: TObject);
begin
      If cTodos.Checked then
         bImprimir.Enabled := (cAno.AsInteger <> 0)
      else
         bImprimir.Enabled := (cMes.Text <> '') and (cAno.AsInteger <> 0);
end;

procedure TImpressao_Fiscais_ApuracaoPISCOFINS.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_Fiscais_ApuracaoPISCOFINS.bImprimirClick(Sender: TObject);
var
    mMesAnt,
    mMesAtu : String;
    mSQL, mTmpSQL: WideString;
    mDataIni, mDataFim: TDate;
    mDrop:String;
begin
     Screen.Cursor := crSQLWait;
     if cMes.ItemIndex < 1 then begin
        mMesAnt := '12'+InttoStr(cAno.AsInteger-1);
     end else begin
        mMesAnt := Poezero(2, cMes.ItemIndex)+cAno.Text;
     end;
     mMesAtu  := Poezero(2, cMes.ItemIndex+1)+cAno.Text;
     mDataIni := StrtoDate('01/' + PoeZero(2,cMes.ItemIndex+1) +'/'+ PoeZero(4, cAno.AsInteger));
     mDataFim := UltimoDiaMes(mDataIni);

     with Dados, dmFiscal do begin
          with Empresas do begin 
               SQL.Clear;
               SQL.Add('select * from Empresas where Codigo = :pEmpresa');
               ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
               Open;
          end;
          with tEmpresas do begin 
               SQL.Clear;
               SQL.Add('select * from Empresas where Codigo <> :pEmpresa and Consolidar = 1 and substring(CNPJ, 1, 8) = :pCNPJ');
               ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
               ParamByName('pCNPJ').AsString     := Copy(EmpresasCNPJ.AsString, 1, 8);
               Open;
          end;
          with tApuracao2 do begin
               try
                 sql.Clear;
                 sql.Add('if object_id(''ApuracaoPISCOFINS'') is not null');
                 sql.Add('begin');
                 sql.Add('    drop table ApuracaoPISCOFINS');
                 sql.Add('end');
                 execute;
               except on E: Exception do
                    begin
                         showmessage('    » ERRO NO SCRIPT: '+#13+#13+E.Message);
                    end;
               end;
          
               SQL.Clear;
               SQL.Add('------------------------------------------------------[ RECEITA DE VENDAS ]---------------------------------------------------');
               SQL.Add('SELECT ''    Venda Bruta'' ');
               SQL.Add('      ,Aliquota_PIS');
               SQL.Add('      ,Aliquota_COFINS');
               SQL.Add('      ,Valor_Total     = SUM(Valor_Total)');
               SQL.Add('      ,Valor_BC        = SUM(Valor_BCPIS)');
               SQL.Add('      ,Valor_PIS       = SUM(Valor_PIS)');
               SQL.Add('      ,Valor_COFINS    = SUM(VAlor_COFINS)');
               SQL.Add('      ,Ordem           = ''A1'' ');
               SQL.Add('      ,Grupo           = null');
               SQL.Add('      ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('      ,Apuracao        = ''VENDAS'' ');
               SQL.Add('      ,DC              = ''D'' ');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = CAST(null AS varchar(50)) ');
               SQL.Add('FROM NotasItens');
               SQL.Add('WHERE Saida_Entrada = 1');
               SQL.Add('AND Apuracao_PISCOFINS = 1');
               SQL.Add('AND YEAR(Data) = :pAno');
               SQL.Add('AND MONTH(Data) = :pMes');
               SQL.Add('AND Cancelada <> 1');
               SQL.Add('AND NFe_Denegada <> 1');
               SQL.Add('AND Valor_Total > 0');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('-----------------------------------------------------[ SERVIÇOS PRESTADOS ]----------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    Serviços Prestados'' ');
               SQL.Add('     ,Aliquota_PIS');
               SQL.Add('     ,Aliquota_COFINS');
               SQL.Add('     ,Valor_Total     = ISNULL(SUM(Valor_Servico), 0)');
               SQL.Add('     ,Valor_BC        = ISNULL(SUM(Valor_Servico), 0)');
               SQL.Add('     ,Valor_PIS       = ISNULL(SUM(Valor_Servico * (Aliquota_PIS/100)), 0)');
               SQL.Add('     ,Valor_COFINS    = ISNULL(SUM(Valor_Servico * (Aliquota_COFINS/100)), 0)');
               SQL.Add('     ,Ordem           = ''A2'' ');
               SQL.Add('     ,Grupo           = null');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = ''SERVIÇOS'' ');
               SQL.Add('     ,DC              = ''D'' ');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = null');
               SQL.Add('FROM  NotasServico');
               SQL.Add('WHERE YEAR(Data_Emissao)  = :pAno');
               SQL.Add('AND   MONTH(Data_Emissao) = :pMes');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('------------------------------------------------------------[ DEDUÇOES IPI ]----------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    (-) IPI das Vendas'' ');
               SQL.Add('      ,Aliquota_PIS');
               SQL.Add('      ,Aliquota_COFINS');
               SQL.Add('      ,Valor_Total     = ISNULL(SUM(Total_IPI), 0)');
               SQL.Add('      ,Valor_BC        = ISNULL(SUM(Total_IPI), 0)');
               SQL.Add('      ,Valor_PIS       = ISNULL(SUM(Total_IPI * (Aliquota_PIS/100)), 0)');
               SQL.Add('      ,Valor_COFINS    = ISNULL(SUM(Total_IPI * (Aliquota_COFINS/100) ), 0)');
               SQL.Add('      ,Ordem           = ''B1'' ');
               SQL.Add('      ,Grupo           = ''DEDUÇÕES'' ');
               SQL.Add('      ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('      ,Apuracao        = ''DEDUÇÕES'' ');
               SQL.Add('      ,DC              = ''C''');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('FROM   NotasItens');
               SQL.Add('WHERE  Saida_Entrada = 1');
               SQL.Add('AND    Apuracao_PISCOFINS = 1');
               SQL.Add('AND    YEAR(Data) = :pAno');
               SQL.Add('AND    MONTH(Data) = :pMes');
               SQL.Add('AND    Cancelada <> 1');
               SQL.Add('AND    NFe_Denegada <> 1');
               SQL.Add('AND    Total_IPI > 0');
               SQL.Add('AND    (Valor_PIS+Valor_COFINS) > 0');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('------------------------------------------------------------[ DEDUÇOES ICMS ST ]----------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    (-) Substituição Tributária (ICMS)'' ');
               SQL.Add('   ,Aliquota_PIS');
               SQL.Add('   ,Aliquota_COFINS');
               SQL.Add('   ,Valor_Total  = ISNULL(SUM(Valor_ICMSSub), 0)');
               SQL.Add('   ,Valor_BC     = ISNULL(SUM(Valor_ICMSSub), 0)');
               SQL.Add('   ,Valor_PIS    = ISNULL(SUM(Valor_ICMSSub * (Aliquota_PIS/100)), 0)');
               SQL.Add('   ,Valor_COFINS = ISNULL(SUM(Valor_ICMSSub * (Aliquota_COFINS/100) ), 0)');
               SQL.Add('   ,Ordem        = ''B2'' ');
               SQL.Add('   ,Grupo           = ''DEDUÇÕES'' ');
               SQL.Add('   ,Empresa      = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('   ,Apuracao     = ''DEDUÇÕES'' ');
               SQL.Add('   ,DC           = ''C''');
               SQL.Add('   ,Num_Filial   = 0 ');
               SQL.Add('   ,Banco_Dados  = null ');
               SQL.Add('FROM  NotasItens');
               SQL.Add('WHERE Saida_Entrada = 1');
               SQL.Add('AND   Apuracao_PISCOFINS = 1');
               SQL.Add('AND   YEAR(Data) = :pAno');
               SQL.Add('AND   MONTH(Data) = :pMes');
               SQL.Add('AND   Cancelada <> 1');
               SQL.Add('AND   NFe_Denegada <> 1');
               SQL.Add('AND   Valor_ICMSSub > 0');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    (-) Devoluções (Próprias)'' ');
               SQL.Add('      ,Aliquota_PIS');
               SQL.Add('      ,Aliquota_COFINS');
               SQL.Add('      ,Valor_Total  = ISNULL(SUM(Valor_Total), 0)');
               SQL.Add('      ,Valor_BC     = ISNULL(SUM(Valor_BCPIS), 0)');
               SQL.Add('      ,Valor_PIS    = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('      ,Valor_COFINS = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('      ,Ordem        = ''B3''');
               SQL.Add('      ,Grupo        = null');
               SQL.Add('      ,Empresa      = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('      ,Apuracao     = null');
               SQL.Add('      ,DC           = ''C''');
               SQL.Add('      ,Num_Filial   = 0 ');
               SQL.Add('      ,Banco_Dados  = null ');
               SQL.Add('FROM  NotasItens');
               SQL.Add('WHERE Saida_Entrada = 0');
               SQL.Add('AND   Apuracao_PISCOFINS = 1');
               SQL.Add('AND   YEAR(Data) = :pAno');
               SQL.Add('AND   MONTH(Data) = :pMes');
               SQL.Add('AND   Cancelada <> 1');
               SQL.Add('AND   NFe_Denegada <> 1');
               SQL.Add('AND   Devolucao = 1');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    (-) Devoluções (Terceiros)''');
               SQL.Add('      ,Aliquota_PIS');
               SQL.Add('      ,Aliquota_COFINS');
               SQL.Add('      ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)');
               SQL.Add('      ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)');
               SQL.Add('      ,Valor_PIS       = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('      ,Valor_COFINS    = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('      ,Ordem           = ''B3'' ');
               SQL.Add('      ,Grupo           = null');
               SQL.Add('      ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('      ,Apuracao        = null');
               SQL.Add('      ,DC              = ''C''');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('FROM  NotasTerceirosItens NTI');
               SQL.Add('WHERE Apuracao_PISCOFINS = 1');
               SQL.Add('AND   YEAR(Data_Entrada) = :pAno');
               SQL.Add('AND   MONTH(Data_Entrada) = :pMes');
               SQL.Add('AND   (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais RF WHERE RF.Codigo = NTI.Referencia_Fiscal) = 2');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               
               SQL.Add('------------------------------------------------------------[ NOTAS FISCAIS DE EXPORTAÇÃO ]----------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    (-) Exportações'' ');
               SQL.Add('      ,Aliquota_PIS');
               SQL.Add('      ,Aliquota_COFINS');
               SQL.Add('      ,Valor_Total  = ISNULL(SUM(Valor_Total), 0)');
               SQL.Add('      ,Valor_BC     = ISNULL(SUM(Valor_BCPIS), 0)');
               SQL.Add('      ,Valor_PIS    = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('      ,Valor_COFINS = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('      ,Ordem        = ''B4'' ');
               SQL.Add('      ,Grupo        = null');
               SQL.Add('      ,Empresa      = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('      ,Apuracao     = null');
               SQL.Add('      ,DC           = ''C''');
               SQL.Add('      ,Num_Filial   = 0 ');
               SQL.Add('      ,Banco_Dados  = null ');
               SQL.Add('FROM  NotasItens NI');
               SQL.Add('WHERE Saida_Entrada = 1');
               SQL.Add('AND   Apuracao_PISCOFINS = 1');
               SQL.Add('AND   YEAR(Data) = :pAno');
               SQL.Add('AND   MONTH(Data) = :pMes');
               SQL.Add('AND   Cancelada <> 1');
               SQL.Add('AND   NFe_Denegada <> 1');
               SQL.Add('AND   (ISNULL(Processo, '''') <> '''' AND (SELECT Tipo FROM ProcessosDocumentos PD WHERE PD.Processo = NI.Processo AND Tipo = ''EXPORTAÇÃO'') = ''EXPORTAÇÃO'')');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');

               SQL.Add('------------------------------------------------------------[ DEVOLUÇÕES DE COMPRAS ]----------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    (+) Devoluções de Compras'' ');
               SQL.Add('      ,Aliquota_PIS');
               SQL.Add('      ,Aliquota_COFINS');
               SQL.Add('      ,Valor_Total  = ISNULL(SUM(Valor_Total), 0)');
               SQL.Add('      ,Valor_BC     = ISNULL(SUM(Valor_BCPIS), 0)');
               SQL.Add('      ,Valor_PIS    = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('      ,Valor_COFINS = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('      ,Ordem        = ''C1''');
               SQL.Add('      ,Grupo        = null');
               SQL.Add('      ,Empresa      = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('      ,Apuracao     = null');
               SQL.Add('      ,DC           = ''D''');
               SQL.Add('      ,Num_Filial   = 0 ');
               SQL.Add('      ,Banco_Dados  = null ');
               SQL.Add('FROM  NotasItens');
               SQL.Add('WHERE Saida_Entrada = 1');
               SQL.Add('AND   Apuracao_PISCOFINS = 1');
               SQL.Add('AND   YEAR(Data) = :pAno');
               SQL.Add('AND   MONTH(Data) = :pMes');
               SQL.Add('AND   Cancelada <> 1');
               SQL.Add('AND   NFe_Denegada <> 1');
               SQL.Add('AND   Devolucao = 1');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');

               SQL.Add('------------------------------------------------------------[ENTRADAS - NÃO CUMULATIVIDADE ]----------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    Mercadorias adquiridas para revenda * * *'' ');
               SQL.Add('      ,Aliquota_PIS');
               SQL.Add('      ,Aliquota_COFINS');
               SQL.Add('      ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)');
               SQL.Add('      ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)');
               SQL.Add('      ,Valor_PIS       = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('      ,Valor_COFINS    = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('      ,Ordem           = ''D1'' ');
               SQL.Add('      ,Grupo           = null');
               SQL.Add('      ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('      ,Apuracao        = null');
               SQL.Add('      ,DC              = ''C''');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('FROM  NotasTerceirosItens NTI');
               SQL.Add('WHERE Apuracao_PISCOFINS = 1');
               SQL.Add('AND   YEAR(Data_Entrada) = :pAno');
               SQL.Add('AND   MONTH(Data_Entrada)= :pMes');
               SQL.Add('AND   (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais RF WHERE RF.Codigo = NTI.Referencia_Fiscal) = 0');
               SQL.Add('AND   ISNULL((SELECT Servico FROM Produtos PD WHERE PD.Codigo = NTI.Codigo_Mercadoria), 0) = 0');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');

               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    Bens e serviços utilizados c/insumos na fabricação'' ');
               SQL.Add('      ,Aliquota_PIS');
               SQL.Add('      ,Aliquota_COFINS');
               SQL.Add('      ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)');
               SQL.Add('      ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)');
               SQL.Add('      ,Valor_PIS       = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('      ,Valor_COFINS    = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('      ,Ordem           = ''D2'' ');
               SQL.Add('      ,Grupo           = null');
               SQL.Add('      ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('      ,Apuracao        = null');
               SQL.Add('      ,DC              = ''C''');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('FROM  NotasTerceirosItens NTI, ReferenciasFiscais RF');
               SQL.Add('WHERE NTI.Apuracao_PISCOFINS = 1');
               SQL.Add('AND   RF.Codigo = NTI.Referencia_Fiscal');
               SQL.Add('AND   YEAR(Data_Entrada) = :pAno');
               SQL.Add('AND   MONTH(Data_Entrada) = :pMes');
               SQL.Add('AND   ISNULL((SELECT Servico FROM Produtos PD WHERE Codigo = NTI.Codigo_Mercadoria), 0) = 1');
               SQL.Add('AND   (SELECT Industria FROM Cybersoft_Cadastros.dbo.Servicos WHERE Codigo = RF.Servico) = 1');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');

               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    Bens e serviços utilizados c/insumos na prestação de serviços'' ');
               SQL.Add('     ,Aliquota_PIS');
               SQL.Add('     ,Aliquota_COFINS');
               SQL.Add('     ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)');
               SQL.Add('     ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)');
               SQL.Add('     ,Valor_PIS       = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('     ,Valor_COFINS    = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('     ,Ordem           = ''D3'' ');
               SQL.Add('     ,Grupo           = null');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = null ');
               SQL.Add('FROM  NotasTerceirosItens NTI, ReferenciasFiscais RF');
               SQL.Add('WHERE NTI.Apuracao_PISCOFINS = 1');
               SQL.Add('AND   RF.Codigo = NTI.Referencia_Fiscal');
               SQL.Add('AND   YEAR(Data_Entrada) = :pAno');
               SQL.Add('AND   MONTH(Data_Entrada) = :pMes');
               SQL.Add('AND   ISNULL((SELECT Servico FROM Produtos PD WHERE Codigo = NTI.Codigo_Mercadoria), 0) = 1');
               SQL.Add('AND   (SELECT Industria FROM Cybersoft_Cadastros.dbo.Servicos WHERE Codigo = RF.Servico) = 0');

               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    Energia elétrica consumida no estabelecimento'' ');
               SQL.Add('      ,Aliquota_PIS');
               SQL.Add('      ,Aliquota_COFINS');
               SQL.Add('      ,Valor_Total     = ISNULL(SUM(Consumo_Energia), 0)');
               SQL.Add('      ,Valor_BC        = ISNULL(SUM(Consumo_Energia), 0)');
               SQL.Add('      ,Valor_PIS       = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('      ,Valor_COFINS    = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('      ,Ordem           = ''D4'' ');
               SQL.Add('      ,Grupo           = null');
               SQL.Add('      ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('      ,Apuracao        = null');
               SQL.Add('      ,DC              = ''C''');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('FROM  NotasTerceirosItens NTI');
               SQL.Add('WHERE Apuracao_PISCOFINS = 1');
               SQL.Add('AND   YEAR(Data_Entrada) = :pAno');
               SQL.Add('AND   MONTH(Data_Entrada) = :pMes');
               SQL.Add('AND   Consumo_Energia > 0');
               SQL.Add('AND   (Valor_PIS + Valor_COFINS) > 0');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    Alugueis pagos a PJ (prédios, máq.e equipamentos)'' ');
               SQL.Add('     ,Aliquota_PIS');
               SQL.Add('     ,Aliquota_COFINS');
               SQL.Add('     ,Valor_Total     = ISNULL(SUM(Valor), 0)');
               SQL.Add('     ,Valor_BC        = ISNULL(SUM(Valor), 0)');
               SQL.Add('     ,Valor_PIS       = ISNULL(SUM(Valor * (Aliquota_PIS/100)), 0)');
               SQL.Add('     ,Valor_COFINS    = ISNULL(SUM(Valor * (Aliquota_COFINS/100)), 0)');
               SQL.Add('     ,Ordem           = ''D5'' ');
               SQL.Add('     ,Grupo           = null');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = null ');
               SQL.Add('FROM  Alugueis');
               SQL.Add('WHERE Aliquota_PIS > 0 OR Aliquota_COFINS > 0');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    Devoluções de vendas'' ');
               SQL.Add('     ,Aliquota_PIS');
               SQL.Add('     ,Aliquota_COFINS');
               SQL.Add('     ,Valor_Total  = ISNULL(SUM(Valor_Total), 0)');
               SQL.Add('     ,Valor_BC     = ISNULL(SUM(Valor_BCPIS), 0)');
               SQL.Add('     ,Valor_PIS    = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('     ,Valor_COFINS = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('     ,Ordem        = ''D6'' ');
               SQL.Add('     ,Grupo        = null');
               SQL.Add('     ,Empresa      = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao     = null');
               SQL.Add('     ,DC           = ''C''');
               SQL.Add('     ,Num_Filial   = 0 ');
               SQL.Add('     ,Banco_Dados  = null ');
               SQL.Add('FROM  NotasItens NI');
               SQL.Add('WHERE Saida_Entrada = 1');
               SQL.Add('AND   Apuracao_PISCOFINS = 1');
               SQL.Add('AND   YEAR(Data) = :pAno');
               SQL.Add('AND   MONTH(Data) = :pMes');
               SQL.Add('AND   Cancelada <> 1');
               SQL.Add('AND   NFe_Denegada <> 1');
               SQL.Add('AND   ISNULL(Devolucao, 0) = 1');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    Frete nas operações com vendas/compras'' ');
               SQL.Add('     ,Aliquota_PIS');
               SQL.Add('     ,Aliquota_COFINS');
               SQL.Add('     ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)');
               SQL.Add('     ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)');
               SQL.Add('     ,Valor_PIS       = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('     ,Valor_COFINS    = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('     ,Ordem           = ''D7'' ');
               SQL.Add('     ,Grupo           = null');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = null ');
               SQL.Add('FROM  NotasTerceirosItens NTI');
               SQL.Add('WHERE Tipo in(''CTR'', ''CTE'') ');
               SQL.Add('AND   Apuracao_PISCOFINS = 1');
               SQL.Add('AND   YEAR(Data_Entrada) = :pAno');
               SQL.Add('AND   MONTH(Data_Entrada) = :pMes');
               SQL.Add('AND   (Valor_PIS+Valor_COFINS) > 0');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    (-) Saldo positivo de créditos do mês anterior'' ');
               SQL.Add('     ,0');
               SQL.Add('     ,0');
               SQL.Add('     ,Valor_Total     = 0');
               SQL.Add('     ,Valor_BC        = 0');
               SQL.Add('     ,Valor_PIS       = ISNULL(SUM(Saldo_PIS), 0)');
               SQL.Add('     ,Valor_COFINS    = 0');
               SQL.Add('     ,Ordem           = ''E1'' ');
               SQL.Add('     ,Grupo           = null');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = null ');
               SQL.Add('FROM  SaldoPISCOFINS');
               SQL.Add('WHERE Mes_Ano = :pMesAno');
               SQL.Add('AND   Saldo_PIS > 0');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    (-) Saldo positivo de créditos do mês anterior'' ');
               SQL.Add('     ,0');
               SQL.Add('     ,0');
               SQL.Add('     ,Valor_Total     = 0');
               SQL.Add('     ,Valor_BC        = 0');
               SQL.Add('     ,Valor_PIS       = 0');
               SQL.Add('     ,Valor_COFINS    = ISNULL(SUM(Saldo_COFINS), 0)');
               SQL.Add('     ,Ordem           = ''F1'' ');
               SQL.Add('     ,Grupo           = null');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = null ');
               SQL.Add('FROM  SaldoPISCOFINS');
               SQL.Add('WHERE Mes_Ano = :pMesAno');
               SQL.Add('AND   Saldo_COFINS > 0');
          
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    (+) Saldo á pagar do mês anterior'' ');
               SQL.Add('     ,0');
               SQL.Add('     ,0');
               SQL.Add('     ,Valor_Total     = 0');
               SQL.Add('     ,Valor_BC        = 0');
               SQL.Add('     ,Valor_PIS       = ISNULL(SUM(Saldo_PIS), 0)');
               SQL.Add('     ,Valor_COFINS    = 0');
               SQL.Add('     ,Ordem           = ''E2'' ');
               SQL.Add('     ,Grupo           = null');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = null ');
               SQL.Add('FROM  SaldoPISCOFINS');
               SQL.Add('WHERE Mes_Ano = :pMesAno');
               SQL.Add('AND   Saldo_PIS < 0');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    (+) Saldo á pagar do mês anterior'' ');
               SQL.Add('     ,0');
               SQL.Add('     ,0');
               SQL.Add('     ,Valor_Total     = 0');
               SQL.Add('     ,Valor_BC        = 0');
               SQL.Add('     ,Valor_PIS       = 0');
               SQL.Add('     ,Valor_COFINS    = ISNULL(SUM(Saldo_COFINS), 0)');
               SQL.Add('     ,Ordem           = ''F2'' ');
               SQL.Add('     ,Grupo           = null');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = null ');
               SQL.Add('FROM  SaldoPISCOFINS');
               SQL.Add('WHERE Mes_Ano = :pMesAno');
               SQL.Add('AND   Saldo_COFINS < 0');
               
               SQL.Add('--------------------------------------------------------------[ IMPORTAÇÕES ]---------------------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    Crédito PIS importações * faturamento'' ');
               SQL.Add('     ,Aliquota_PIS');
               SQL.Add('     ,0');
               SQL.Add('     ,Valor_Total     = SUM(Valor_Total)');
               SQL.Add('     ,Valor_BC        = SUM(Valor_BCPIS)');
               SQL.Add('     ,Valor_PIS       = SUM(Valor_PIS)');
               SQL.Add('     ,Valor_COFINS    = 0');
               SQL.Add('     ,Ordem           = ''G1'' ');
               SQL.Add('     ,Grupo           = null');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0');
               SQL.Add('     ,Banco_Dados     = null ');
               SQL.Add('FROM   NotasItens');
               SQL.Add('WHERE  Saida_Entrada = 0');
               SQL.Add('AND    Apuracao_PISCOFINS = 1');
               SQL.Add('AND    YEAR(Data) = :pAno');
               SQL.Add('AND    MONTH(Data) = :pMes');
               SQL.Add('AND    Cancelada <> 1');
               SQL.Add('AND    NFe_Denegada <> 1');
               SQL.Add('AND    Valor_Total > 0');
               SQL.Add('AND    ISNULL(Processo, '''') <> '''' ');
          
               if EmpresasPISCOFINS_F100.AsBoolean then begin
                  SQL.Add('AND    MONTH(Data) = CASE WHEN DI <> '''' THEN MONTH((SELECT Data_DI FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data AND Saida_Entrada = 0)) ELSE MONTH(Data) END');
               end;

               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    Crédito COFINS importações * faturamento'' ');
               SQL.Add('     ,0');
               SQL.Add('     ,Aliquota_COFINS');
               SQL.Add('     ,Valor_Total     = SUM(Valor_Total)');
               SQL.Add('     ,Valor_BC        = 0');
               SQL.Add('     ,Valor_PIS       = 0');
               SQL.Add('     ,Valor_COFINS    = SUM(Valor_COFINS)');
               SQL.Add('     ,Ordem           = ''G2'' ');
               SQL.Add('     ,Grupo           = null');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = null ');
               SQL.Add('FROM   NotasItens');
               SQL.Add('WHERE  Saida_Entrada = 0');
               SQL.Add('AND    Apuracao_PISCOFINS = 1');
               SQL.Add('AND    YEAR(Data) = :pAno');
               SQL.Add('AND    MONTH(Data) = :pMes');
               SQL.Add('AND    Cancelada <> 1');
               SQL.Add('AND    NFe_Denegada <> 1');
               SQL.Add('AND    Valor_Total > 0');
               SQL.Add('AND    ISNULL(Processo, '''') <> '''' ');
               if EmpresasPISCOFINS_F100.AsBoolean then begin
                  SQL.Add('AND    MONTH(Data) = CASE WHEN DI <> '''' THEN MONTH((SELECT Data_DI FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data AND Saida_Entrada = 0)) ELSE MONTH(Data) END');
               end;
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');

               SQL.Add('--------------------------------------------------------------[ RECEITAS FINANCEIRAS ]---------------------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    '' + UPPER((SELECT SUBSTRING(Descricao,1,1) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao)) + LOWER(ISNULL((SELECT SUBSTRING(Descricao, 2, LEN(Descricao)) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), ''*''))');
               SQL.Add('       ,Aliquota_PIS    = ISNULL((SELECT Aliquota_PIS FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), 0)');
               SQL.Add('       ,Aliquota_COFINS = 0');
               //SQL.Add('       ,Valor_Total     = SUM(Valor_Operacao)');
               //SQL.Add('       ,Valor_BC        = SUM(Valor_Operacao)');
               //SQL.Add('       ,Valor_PIS       = SUM(Valor_Operacao) * ((SELECT MAX(Aliquota_PIS) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao) /100)');
               SQL.Add('       ,Valor_Total     = SUM(Valor_Parcela)');
               SQL.Add('       ,Valor_BC        = SUM(Valor_Parcela)');
               SQL.Add('       ,Valor_PIS       = SUM(Valor_Parcela) * ((SELECT MAX(Aliquota_PIS) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao) /100)');
               SQL.Add('       ,Valor_COFINS    = 0');
               SQL.Add('       ,Ordem           = ''H1'' ');
               SQL.Add('       ,Grupo           = null');
               SQL.Add('       ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('       ,Apuracao        = null');
               SQL.Add('       ,DC              = ''D'' ');
               SQL.Add('       ,Num_Filial      = 0');
               SQL.Add('       ,Banco_Dados     = null');
               SQL.Add('FROM   PagarReceber PR');
               SQL.Add('WHERE  Tipo = ''R'' ');
               SQL.Add('AND    ISNULL((SELECT CST_PIS FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), '''') <> '''' ');
               SQL.Add('AND    YEAR(Data_Documento) = :pAno');
               SQL.Add('AND    MONTH(Data_Documento) = :pMes');
               SQL.Add('GROUP BY Classificacao');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    '' + UPPER((SELECT SUBSTRING(Descricao,1,1) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao)) + LOWER(ISNULL((SELECT SUBSTRING(Descricao, 2, LEN(Descricao)) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), ''*''))');
               SQL.Add('       ,Aliquota_PIS    = 0');
               SQL.Add('       ,Aliquota_COFINS = ISNULL((SELECT Aliquota_COFINS FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), 0)');
               //SQL.Add('       ,Valor_Total     = SUM(Valor_Operacao)');
               //SQL.Add('       ,Valor_BC        = SUM(Valor_Operacao)');
               //SQL.Add('       ,Valor_PIS       = 0');
               //SQL.Add('       ,Valor_COFINS    = SUM(Valor_Operacao) * ((SELECT MAX(Aliquota_COFINS) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao) /100)');
               SQL.Add('       ,Valor_Total     = SUM(Valor_Parcela)');
               SQL.Add('       ,Valor_BC        = SUM(Valor_Parcela)');
               SQL.Add('       ,Valor_PIS       = 0');
               SQL.Add('       ,Valor_COFINS    = SUM(Valor_Parcela) * ((SELECT MAX(Aliquota_COFINS) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao) /100)');
               SQL.Add('       ,Ordem           = ''H2'' ');
               SQL.Add('       ,Grupo           = null');
               SQL.Add('       ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('       ,Apuracao        = null');
               SQL.Add('       ,DC              = ''D'' ');
               SQL.Add('       ,Num_Filial      = 0');
               SQL.Add('       ,Banco_Dados     = null');
               SQL.Add('FROM   PagarReceber PR');
               SQL.Add('WHERE  Tipo = ''R'' ');
               SQL.Add('AND    ISNULL((SELECT CST_PIS FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), '''') <> '''' ');
               SQL.Add('AND    YEAR(Data_Documento) = :pAno');
               SQL.Add('AND    MONTH(Data_Documento) = :pMes');
               SQL.Add('GROUP BY Classificacao');

               SQL.Add('--------------------------------------------------------------[ DESPESAS FINANCEIRAS ]---------------------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    '' + UPPER((SELECT SUBSTRING(Descricao,1,1) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao)) + LOWER(ISNULL((SELECT SUBSTRING(Descricao, 2, LEN(Descricao)) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), ''*''))');
               SQL.Add('       ,Aliquota_PIS    = ISNULL((SELECT Aliquota_PIS FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), 0)');
               SQL.Add('       ,Aliquota_COFINS = 0');
               //SQL.Add('       ,Valor_Total     = SUM(Valor_Operacao)');
               //SQL.Add('       ,Valor_BC        = SUM(Valor_Operacao)');
               //SQL.Add('       ,Valor_PIS       = SUM(Valor_Operacao) * ((SELECT MAX(Aliquota_PIS) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao) /100)');
               SQL.Add('       ,Valor_Total     = SUM(Valor_Parcela)');
               SQL.Add('       ,Valor_BC        = SUM(Valor_Parcela)');
               SQL.Add('       ,Valor_PIS       = SUM(Valor_Parcela) * ((SELECT MAX(Aliquota_PIS) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao) /100)');
               SQL.Add('       ,Valor_COFINS    = 0');
               SQL.Add('       ,Ordem           = ''I1'' ');
               SQL.Add('       ,Grupo           = null');
               SQL.Add('       ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('       ,Apuracao        = null');
               SQL.Add('       ,DC              = ''C'' ');
               SQL.Add('       ,Num_Filial      = 0');
               SQL.Add('       ,Banco_Dados     = null');
               SQL.Add('FROM   PagarReceber PR');
               SQL.Add('WHERE  Tipo = ''P'' ');
               SQL.Add('AND    ISNULL((SELECT CST_PIS FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), '''') <> '''' ');
               SQL.Add('AND    YEAR(Data_Documento) = :pAno');
               SQL.Add('AND    MONTH(Data_Documento) = :pMes');
               SQL.Add('GROUP BY Classificacao');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''    '' + UPPER((SELECT SUBSTRING(Descricao,1,1) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao)) + LOWER(ISNULL((SELECT SUBSTRING(Descricao, 2, LEN(Descricao)) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), ''*''))');
               SQL.Add('       ,Aliquota_PIS    = 0');
               SQL.Add('       ,Aliquota_COFINS = ISNULL((SELECT Aliquota_COFINS FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), 0)');
               //SQL.Add('       ,Valor_Total     = SUM(Valor_Operacao)');
               //SQL.Add('       ,Valor_BC        = SUM(Valor_Operacao)');
               //SQL.Add('       ,Valor_PIS       = 0');
               //SQL.Add('       ,Valor_COFINS    = SUM(Valor_Operacao) * ((SELECT MAX(Aliquota_COFINS) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao) /100)');
               SQL.Add('       ,Valor_Total     = SUM(Valor_Parcela)');
               SQL.Add('       ,Valor_BC        = SUM(Valor_Parcela)');
               SQL.Add('       ,Valor_PIS       = 0');
               SQL.Add('       ,Valor_COFINS    = SUM(Valor_Parcela) * ((SELECT MAX(Aliquota_COFINS) FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao) /100)');
               SQL.Add('       ,Ordem           = ''I2'' ');
               SQL.Add('       ,Grupo           = null');
               SQL.Add('       ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('       ,Apuracao        = null');
               SQL.Add('       ,DC              = ''C'' ');
               SQL.Add('       ,Num_Filial      = 0');
               SQL.Add('       ,Banco_Dados     = null');
               SQL.Add('FROM   PagarReceber PR');
               SQL.Add('WHERE  Tipo = ''P'' ');
               SQL.Add('AND    ISNULL((SELECT CST_PIS FROM ClassificacaoFinanceira WHERE Codigo = PR.Classificacao), '''') <> '''' ');
               SQL.Add('AND    YEAR(Data_Documento) = :pAno');
               SQL.Add('AND    MONTH(Data_Documento) = :pMes');
               SQL.Add('GROUP BY Classificacao');
               
               SQL.Add('---------------------------------------------------------[ OUTROS DÉBITOS/CRÉDITOS ]----------------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT  ''     ''+ CASE WHEN Tipo_Ajuste = 0 THEN ''Outros Débitos'' ');
               SQL.Add('                        WHEN Tipo_Ajuste = 1 THEN ''Estorno de créditos'' ');
               SQL.Add('                        WHEN Tipo_Ajuste = 2 THEN ''Outros créditos'' ');
               SQL.Add('                        WHEN Tipo_Ajuste = 3 THEN ''Estorno de débitos'' ');
               SQL.Add('                        WHEN Tipo_Ajuste = 4 THEN ''Deduções do imposto apurado'' ');
               SQL.Add('                        WHEN Tipo_Ajuste = 5 THEN ''Débitos especiais'' ');
               SQL.Add('                   END');
               SQL.Add('       ,Aliquota_PIS    = 0');
               SQL.Add('       ,Aliquota_COFINS = 0');
               SQL.Add('       ,Valor_Total     = 0');
               SQL.Add('       ,Valor_BC        = 0');
               SQL.Add('       ,Valor_PIS       = SUM(Valor)');
               SQL.Add('       ,Valor_COFINS    = 0');
               SQL.Add('       ,Ordem           = ''J1'' ');
               SQL.Add('       ,Grupo           = null');
               SQL.Add('       ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('       ,Apuracao        = null');
               SQL.Add('       ,DC              = CASE WHEN Tipo_Ajuste = 0 THEN ''D'' ');
               SQL.Add('                               WHEN Tipo_Ajuste = 1 THEN ''D'' ');
               SQL.Add('                               WHEN Tipo_Ajuste = 2 THEN ''C'' ');
               SQL.Add('                               WHEN Tipo_Ajuste = 3 THEN ''C'' ');
               SQL.Add('                               WHEN Tipo_Ajuste = 4 THEN ''C'' ');
               SQL.Add('                               WHEN Tipo_Ajuste = 5 THEN ''D'' ');
               SQL.Add('                          END');
               SQL.Add('       ,Num_Filial      = 0');
               SQL.Add('       ,Banco_Dados     = null');
               SQL.Add('FROM   Estorno ET');
               SQL.Add('WHERE  Imposto     = ''PIS'' ');
               SQL.Add('AND    YEAR(Data)  = :pAno');
               SQL.Add('AND    MONTH(Data) = :pMes');
               SQL.Add('GROUP BY Tipo_Ajuste');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT  ''     ''+ CASE WHEN Tipo_Ajuste = 0 THEN ''Outros Débitos'' ');
               SQL.Add('                        WHEN Tipo_Ajuste = 1 THEN ''Estorno de créditos'' ');
               SQL.Add('                        WHEN Tipo_Ajuste = 2 THEN ''Outros créditos'' ');
               SQL.Add('                        WHEN Tipo_Ajuste = 3 THEN ''Estorno de débitos'' ');
               SQL.Add('                        WHEN Tipo_Ajuste = 4 THEN ''Deduções do imposto apurado'' ');
               SQL.Add('                        WHEN Tipo_Ajuste = 5 THEN ''Débitos especiais'' ');
               SQL.Add('                   END');
               SQL.Add('       ,Aliquota_PIS    = 0');
               SQL.Add('       ,Aliquota_COFINS = 0');
               SQL.Add('       ,Valor_Total     = 0');
               SQL.Add('       ,Valor_BC        = 0');
               SQL.Add('       ,Valor_PIS       = 0');
               SQL.Add('       ,Valor_COFINS    = SUM(Valor)');
               SQL.Add('       ,Ordem           = ''J2'' ');
               SQL.Add('       ,Grupo           = null');
               SQL.Add('       ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('       ,Apuracao        = null');
               SQL.Add('       ,DC              = CASE WHEN Tipo_Ajuste = 0 THEN ''D'' ');
               SQL.Add('                               WHEN Tipo_Ajuste = 1 THEN ''D'' ');
               SQL.Add('                               WHEN Tipo_Ajuste = 2 THEN ''C'' ');
               SQL.Add('                               WHEN Tipo_Ajuste = 3 THEN ''C'' ');
               SQL.Add('                               WHEN Tipo_Ajuste = 4 THEN ''C'' ');
               SQL.Add('                               WHEN Tipo_Ajuste = 5 THEN ''D'' ');
               SQL.Add('                          END');
               SQL.Add('       ,Num_Filial      = 0');
               SQL.Add('       ,Banco_Dados     = null');
               SQL.Add('FROM   Estorno ET');
               SQL.Add('WHERE  Imposto     = ''COFINS'' ');
               SQL.Add('AND    YEAR(Data)  = :pAno');
               SQL.Add('AND    MONTH(Data) = :pMes');
               SQL.Add('GROUP BY Tipo_Ajuste');
               
               SQL.Add('--------------------------------------------------------------------[ OUTRAS ENTRADAS ]------------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''     Outros créditos (NF)'' ');
               SQL.Add('      ,Aliquota_PIS');
               SQL.Add('      ,Aliquota_COFINS');
               SQL.Add('      ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)');
               SQL.Add('      ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)');
               SQL.Add('      ,Valor_PIS       = ISNULL(SUM(Valor_PIS), 0)');
               SQL.Add('      ,Valor_COFINS    = ISNULL(SUM(Valor_COFINS), 0)');
               SQL.Add('      ,Ordem           = ''J3'' ');
               SQL.Add('      ,Grupo           = null');
               SQL.Add('      ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('      ,Apuracao        = null');
               SQL.Add('      ,DC              = ''C''');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('FROM  NotasTerceirosItens NTI');
               SQL.Add('WHERE Apuracao_PISCOFINS = 1');
               SQL.Add('AND   YEAR(Data_Entrada) = :pAno');
               SQL.Add('AND   MONTH(Data_Entrada)= :pMes');
               SQL.Add('AND   (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais RF WHERE RF.Codigo = NTI.Referencia_Fiscal) = 9');
               SQL.Add('AND   (SELECT Especie FROM ReferenciasFiscais RF WHERE RF.Codigo = NTI.Referencia_Fiscal) = ''NF'' ');
               SQL.Add('AND   ISNULL((SELECT Servico FROM Produtos PD WHERE PD.Codigo = NTI.Codigo_Mercadoria), 0) = 0');
               SQL.Add('GROUP BY Aliquota_PIS, Aliquota_COFINS');
               
               SQL.Add('---------------------------------------------------------------[ APURAÇÕES ]----------------------------------------------------------------');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''   Total do PIS'' ');
               SQL.Add('     ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('     ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('     ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('     ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('     ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('     ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('     ,Ordem           = ''Z1'' ');
               SQL.Add('     ,Grupo           = ''APURACAO PIS'' ');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null ');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = (SELECT Banco_Dados FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''   Total do COFINS'' ');
               SQL.Add('     ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('     ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('     ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('     ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('     ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('     ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('     ,Ordem           = ''Z1'' ');
               SQL.Add('     ,Grupo           = ''APURACAO COFINS'' ');
               SQL.Add('     ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               SQL.Add('     ,Apuracao        = null ');
               SQL.Add('     ,DC              = ''C''');
               SQL.Add('     ,Num_Filial      = 0 ');
               SQL.Add('     ,Banco_Dados     = (SELECT Banco_Dados FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               
               // CONSOLIDA TODAS AS EMPRESAS.
               if cConsol.Checked then begin
                  mSQL := SQL.Text;
                  tEmpresas.First;
                  while not tEmpresas.Eof do begin
                        mTmpSQL := RemoveCaracter('NotasItens'         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasItens'          , mSQL);
                        mTmpSQL := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'        , mTmpSQL);
                        mTmpSQL := RemoveCaracter('NotasServico'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasServico'        , mTmpSQL);
                        mTmpSQL := RemoveCaracter('NotasTerceirosItens', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceirosItens ', mTmpSQL);
                        mTmpSQL := RemoveCaracter('ReferenciasFiscais' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ReferenciasFiscais'  , mTmpSQL);
                        mTmpSQL := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos' , mTmpSQL);
                        mTmpSQL := RemoveCaracter('NotasTerceiros '    , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasTerceiros '     , mTmpSQL);
                        mTmpSQL := RemoveCaracter('SaldoPISCOFINS'     , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.SaldoPISCOFINS'      , mTmpSQL);
                        mTmpSQL := RemoveCaracter('PagarReceber PR'    , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber PR'     , mTmpSQL);
                        mTmpSQL := RemoveCaracter('Estorno ET'         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Estorno ET'          , mTmpSQL);
                        mTmpSQL := RemoveCaracter('Produtos '          , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Produtos '           , mTmpSQL);

                        mTmpSQL := RemoveCaracter('Codigo = :pEmpresa' , 'Codigo = '+tEmpresas.FieldByName('Codigo').AsString, mTmpSQL);
                        mTmpSQL := RemoveCaracter('INTO #TEMP3'        , '', mTmpSQL);
                        mTmpSQL := RemoveCaracter('INTO #TEMP2'        , '', mTmpSQL);
                        mTmpSQL := RemoveCaracter('INTO #TEMP'         , '', mTmpSQL);

                        SQL.Add('-- PEGANDO DADOS DAS FILIAIS QUANDO CONSOLIDADO --');
                        SQL.Add('UNION ALL');
                        SQL.Add(mTmpSQL);
                        tEmpresas.Next;
                  end;
               end;
               
               mSQL := SQL.Text;

               SQL.Clear;
               SQL.Add('------------------------------------------------------[ RECEITA DE VENDAS ]---------------------------------------------------');
               SQL.Add('SELECT Descricao       = CAST(''RECEITA DE VENDAS'' AS varchar(80))');
               SQL.Add('      ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('      ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('      ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('      ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('      ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('      ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('      ,Ordem           = CAST(''A0'' AS varchar(3))');
               SQL.Add('      ,Grupo           = ''TITULO'' ');
               SQL.Add('      ,Empresa         = CAST(null AS varchar(15))');
               SQL.Add('      ,Apuracao        = CAST(null AS varchar(8))');
               SQL.Add('      ,DC              = ''D'' ');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('INTO #TEMP');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''DEDUÇÕES SOBRE VENDAS'' ');
               SQL.Add('      ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('      ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('      ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('      ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('      ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('      ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('      ,Ordem           = ''B0'' ');
               SQL.Add('      ,Grupo           = ''TITULO'' ');
               SQL.Add('      ,Empresa         = null');
               SQL.Add('      ,Apuracao        = null');
               SQL.Add('      ,DC              = ''C'' ');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('UNION ALL');

               SQL.Add('SELECT ''DEVOLUÇÕES DE COMPRAS'' ');
               SQL.Add('      ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('      ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('      ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('      ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('      ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('      ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('      ,Ordem           = ''C0'' ');
               SQL.Add('      ,Grupo           = ''TITULO'' ');
               SQL.Add('      ,Empresa         = null');
               SQL.Add('      ,Apuracao        = null');
               SQL.Add('      ,DC              = ''D'' ');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');

               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''NÃO CUMULATIVIDADE DO PIS E DA COFINS'' ');
               SQL.Add('      ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('      ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('      ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('      ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('      ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('      ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('      ,Ordem           = ''D0'' ');
               SQL.Add('      ,Grupo           = ''TITULO'' ');
               SQL.Add('      ,Empresa         = null');
               SQL.Add('      ,Apuracao        = null');
               SQL.Add('      ,DC              = ''C'' ');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados = null ');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''CRÉDITO NÃO CUMULATIVO PIS'' ');
               SQL.Add('      ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('      ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('      ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('      ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('      ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('      ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('      ,Ordem           = ''E0'' ');
               SQL.Add('      ,Grupo           = ''TITULO'' ');
               SQL.Add('      ,Empresa         = null');
               SQL.Add('      ,Apuracao        = null');
               SQL.Add('      ,DC              = ''C'' ');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''CRÉDITO NÃO CUMULATIVO COFINS'' ');
               SQL.Add('      ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('      ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('      ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('      ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('      ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('      ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('      ,Ordem           = ''F0'' ');
               SQL.Add('      ,Grupo           = ''TITULO'' ');
               SQL.Add('      ,Empresa         = null');
               SQL.Add('      ,Apuracao        = null');
               SQL.Add('      ,DC              = ''C'' ');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''IMPORTAÇÕES'' ');
               SQL.Add('       ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('       ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('       ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('       ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('       ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('       ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('       ,Ordem           = ''G0'' ');
               SQL.Add('       ,Grupo           = ''TITULO'' ');
               SQL.Add('       ,Empresa         = null');
               SQL.Add('       ,Apuracao        = null');
               SQL.Add('       ,DC              = ''C'' ');
               SQL.Add('       ,Num_Filial      = 0 ');
               SQL.Add('       ,Banco_Dados     = null ');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''RECEITAS FINANCEIRAS'' ');
               SQL.Add('       ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('       ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('       ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('       ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('       ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('       ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('       ,Ordem           = ''H0'' ');
               SQL.Add('       ,Grupo           = ''TITULO'' ');
               SQL.Add('       ,Empresa         = null');
               SQL.Add('       ,Apuracao        = null');
               SQL.Add('       ,DC              = ''D'' ');
               SQL.Add('       ,Num_Filial      = 0 ');
               SQL.Add('       ,Banco_Dados     = null ');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''DESPESAS FINANCEIRAS'' ');
               SQL.Add('       ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('       ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('       ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('       ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('       ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('       ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('       ,Ordem           = ''I0'' ');
               SQL.Add('       ,Grupo           = ''TITULO'' ');
               SQL.Add('       ,Empresa         = null');
               SQL.Add('       ,Apuracao        = null');
               SQL.Add('       ,DC              = ''C'' ');
               SQL.Add('       ,Num_Filial      = 0 ');
               SQL.Add('       ,Banco_Dados     = null ');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''OUTROS DÉBITOS/CRÉDITOS'' ');
               SQL.Add('       ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('       ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('       ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('       ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('       ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('       ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('       ,Ordem           = ''J0'' ');
               SQL.Add('       ,Grupo           = ''TITULO'' ');
               SQL.Add('       ,Empresa         = null');
               SQL.Add('       ,Apuracao        = null');
               SQL.Add('       ,DC              = ''C'' ');
               SQL.Add('       ,Num_Filial      = 0 ');
               SQL.Add('       ,Banco_Dados     = null ');
               SQL.Add('UNION ALL');
               SQL.Add('SELECT ''APURAÇÃO'' ');
               SQL.Add('      ,Aliquota_PIS    = CAST(0 AS float)');
               SQL.Add('      ,Aliquota_COFINS = CAST(0 AS float)');
               SQL.Add('      ,Valor_Total     = CAST(0 AS money)');
               SQL.Add('      ,Valor_BC        = CAST(0 AS money)');
               SQL.Add('      ,Valor_PIS       = CAST(0 AS money)');
               SQL.Add('      ,Valor_COFINS    = CAST(0 AS money)');
               SQL.Add('      ,Ordem           = ''Z0'' ');
               SQL.Add('      ,Grupo           = ''TITULO'' ');
               SQL.Add('      ,Empresa         = null');
               SQL.Add('      ,Apuracao        = ''APURACAO'' ');
               SQL.Add('      ,DC              = ''C''');
               SQL.Add('      ,Num_Filial      = 0 ');
               SQL.Add('      ,Banco_Dados     = null ');
               SQL.Add('UNION ALL');
               SQL.Add(mSQL);
          
               if EmpresasPISCOFINS_F100.AsBoolean then begin
                  SQL.Add('----------------------------------------------[ PARA MOVIMENTO DE IMPORTAÇÔES QUE UTILIZAM DI PARA APURAÇÃO ]--------------------------------------------');

                  mSQL := '-- MATRIZ'+#13+#10+
                          'SELECT Aliquota_PIS    = (SELECT PIS_Nota FROM Produtos WHERE Codigo = Codigo_Mercadoria)'+#13+#10+
                          '      ,Aliquota_COFINS = (SELECT COFINS_Nota FROM Produtos WHERE Codigo = Codigo_Mercadoria)'+#13+#10+
                          '      ,Valor_BC        = (Valor_UnitarioReal +'+#13+#10+
                          '                         CASE WHEN (SELECT Frete FROM Cybersoft_Cadastros.dbo.Incoterms WHERE Codigo = (SELECT Incoterms FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)) = 1 THEN'+#13+#10+
                          '                              ((SELECT (Frete /Peso_Liquido) FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) * AD.Peso_Liquido)'+#13+#10+
                          '                         ELSE'+#13+#10+
                          '                              0'+#13+#10+
                          '                         END +'+#13+#10+
                          '                         CASE WHEN (SELECT Seguro FROM Cybersoft_Cadastros.dbo.Incoterms WHERE Codigo = (SELECT Incoterms FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)) = 1 THEN'+#13+#10+
                          '                              ((SELECT (Seguro/FOB) FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) * Valor_SemAdValorem)'+#13+#10+
                          '                         ELSE'+#13+#10+
                          '                              0'+#13+#10+
                          '                         END) * Quantidade'+#13+#10+
                          '      ,Valor_PIS       = ((Valor_UnitarioReal +'+#13+#10+
                          '                         CASE WHEN (SELECT Frete FROM Cybersoft_Cadastros.dbo.Incoterms WHERE Codigo = (SELECT Incoterms FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)) = 1 THEN'+#13+#10+
                          '                              ((SELECT (Frete /Peso_Liquido) FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) * Peso_Liquido)'+#13+#10+
                          '                         ELSE'+#13+#10+
                          '                              0'+#13+#10+
                          '                         END+'+#13+#10+
                          '                         CASE WHEN (SELECT Seguro FROM Cybersoft_Cadastros.dbo.Incoterms WHERE Codigo = (SELECT Incoterms FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)) = 1 THEN'+#13+#10+
                          '                             ((SELECT (Seguro/FOB) FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) * AD.Valor_SemAdValorem)'+#13+#10+
                          '                         ELSE'+#13+#10+
                          '                              0'+#13+#10+
                          '                         END'+#13+#10+
                          '                         ) * Quantidade) * ((SELECT PIS_Nota FROM Produtos WHERE Codigo = AD.Codigo_Mercadoria)/100)'+#13+#10+
                          '      ,Valor_COFINS    = ((Valor_UnitarioReal +'+#13+#10+
                          '                         CASE WHEN (SELECT Frete FROM Cybersoft_Cadastros.dbo.Incoterms WHERE Codigo = (SELECT Incoterms FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)) = 1 THEN'+#13+#10+
                          '                              ((SELECT (Frete /Peso_Liquido) FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) * Peso_Liquido)'+#13+#10+
                          '                         ELSE'+#13+#10+
                          '                              0'+#13+#10+
                          '                         END+'+#13+#10+
                          '                         CASE WHEN (SELECT Seguro FROM Cybersoft_Cadastros.dbo.Incoterms WHERE Codigo = (SELECT Incoterms FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI)) = 1 THEN'+#13+#10+
                          '                              ((SELECT (Seguro/FOB) FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) * AD.Valor_SemAdValorem)'+#13+#10+
                          '                         ELSE'+#13+#10+
                          '                              0'+#13+#10+
                          '                         END'+#13+#10+
                          '                         ) * Quantidade) * ((SELECT COFINS_Nota FROM Produtos WHERE Codigo = AD.Codigo_Mercadoria)/100)'+#13+#10+

                          '      ,Empresa         = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = 19)'+#13+#10+
                          'INTO #TEMP_MATRIZ1'+#13+#10+
                          'FROM  Adicoes AD'+#13+#10+
                          'WHERE (SELECT Data_RegistroDeclaracao FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) BETWEEN :pDataIni AND :pDataFim'+#13+#10+
                          '  AND ISNULL((SELECT Apuracao_PISCOFINS FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI), 0) = 1'+#13+#10+
                          '  AND (SELECT Tipo FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = AD.DI) = ''IMPORTAÇÃO'' '+#13+#10+
                          '  AND (SELECT COUNT(*) FROM NotasFiscais NF WHERE NF.DI = AD.DI AND Saida_Entrada = 0 AND MONTH(NF.Data_Emissao) = MONTH(NF.Data_DI)) = 0'+#13+#10+
                          'SELECT Titulo           = ''    Crédito PIS importações * DI'' '+#13+#10+
                          '      ,Aliquota_PIS'+#13+#10+
                          '      ,Aliquota_COFINS  = 0'+#13+#10+
                          '      ,Valor_Total      = 0'+#13+#10+
                          '      ,Valor_BC         = SUM(Valor_BC)'+#13+#10+
                          '      ,Valor_PIS        = SUM(Valor_PIS)'+#13+#10+
                          '      ,Valor_COFINS     = 0'+#13+#10+
                          '      ,Ordem            = ''G3'' '+#13+#10+
                          '      ,Grupo            = null'+#13+#10+
                          '      ,Empresa          = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)'+#13+#10+
                          '      ,Apuracao         = null'+#13+#10+
                          '      ,DC               = ''C'' '+#13+#10+
                          '      ,Num_Filial       = 0'+#13+#10+
                          '      ,Banco_Dados      = null'+#13+#10+
                          'INTO #TEMP_MATRIZ2'+#13+#10+
                          'FROM #TEMP_MATRIZ1'+#13+#10+
                          'GROUP BY Aliquota_PIS, Aliquota_COFINS'+#13+#10+
                          'UNION ALL'+#13+#10+
                          'SELECT Titulo           = ''    Crédito COFINS importações * DI'' '+#13+#10+
                          '      ,Aliquota_PIS     = 0'+#13+#10+
                          '      ,Aliquota_COFINS'+#13+#10+
                          '      ,Valor_Total      = 0'+#13+#10+
                          '      ,Valor_BC         = SUM(Valor_BC)'+#13+#10+
                          '      ,Valor_PIS        = 0'+#13+#10+
                          '      ,Valor_COFINS     = SUM(Valor_COFINS)'+#13+#10+
                          '      ,Ordem            = ''G4'' '+#13+#10+
                          '      ,Grupo            = null'+#13+#10+
                          '      ,Empresa          = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)'+#13+#10+
                          '      ,Apuracao         = null'+#13+#10+
                          '      ,DC               = ''C'' '+#13+#10+
                          '      ,Num_Filial       = 0'+#13+#10+
                          '      ,Banco_Dados      = null'+#13+#10+
                          'FROM #TEMP_MATRIZ1'+#13+#10+
                          'GROUP BY Aliquota_PIS, Aliquota_COFINS'+#13+#10+
                          'INSERT INTO #TEMP SELECT * FROM #TEMP_MATRIZ2'+#13+#10;

                  mDrop := 'DROP TABLE #TEMP, #TEMP_MATRIZ1, #TEMP_MATRIZ2';
                  tApuracao2.SQL.Add(mSQL);

                  // CONSOLIDA TODAS AS EMPRESAS.
                  if cConsol.Checked then begin
                     tEmpresas.First;
                     if tEmpresas.RecordCount > 0 then mTmpSQL := mTmpSQL + #13+#10 + '-- PEGANDO DADOS DAS FILIAIS QUANDO CONSOLIDADO --';
                     while not tEmpresas.Eof do begin
                           mTmpSQL := RemoveCaracter('NotasFiscais'       , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.NotasFiscais'        , mSQL);
                           mTmpSQL := RemoveCaracter('ProcessosDocumentos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos' , mTmpSQL);
                           mTmpSQL := RemoveCaracter('Produtos'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Produtos'            , mTmpSQL);
                           mTmpSQL := RemoveCaracter('Adicoes'            , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Adicoes'             , mTmpSQL);
                           mTmpSQL := RemoveCaracter('Estorno ET'         , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Estorno ET'          , mTmpSQL);
                           mTmpSQL := RemoveCaracter('Codigo = :pEmpresa' , 'Codigo = '+tEmpresas.FieldByName('Codigo').AsString, mTmpSQL);
                           mTmpSQL := RemoveCaracter('#TEMP_MATRIZ1'      , '#TEMP_FILIAL1'+tEmpresas.FieldByName('Numero_Filial').AsString, mTmpSQL);
                           mTmpSQL := RemoveCaracter('#TEMP_MATRIZ2'      , '#TEMP_FILIAL2'+tEmpresas.FieldByName('Numero_Filial').AsString, mTmpSQL);
                           mTmpSQL := RemoveCaracter('-- MATRIZ'          , '-- FILIAL '+tEmpresas.FieldByName('Numero_Filial').AsString, mTmpSQL);
                           tApuracao2.SQL.Add(mTmpSQL);
                           mDrop := mDROP + ', #TEMP_FILIAL1'+tEmpresas.FieldByName('Numero_Filial').AsString + ', #TEMP_FILIAL2'+tEmpresas.FieldByName('Numero_Filial').AsString;
                           tEmpresas.Next;
                     end;
                  end;
                  SQL.Add('-----------------------------------------------------------------------[ FIM ]---------------------------------------------------------------------------');
                  ParamByName('pDataIni').AsDate    := mDataIni;
                  ParamByName('pDataFim').AsDate    := mDataFim;
             end;
             
             SQL.Add('UPDATE #TEMP SET Num_Filial = ISNULL((SELECT min(Numero_Filial) FROM Cybersoft_Cadastros.dbo.Empresas WHERE CNPJ = Empresa), 0)');
             SQL.Add('UPDATE #TEMP SET Valor_Total  = (SELECT SUM(ISNULL(Valor_Total, 0))  FROM #TEMP T2 WHERE SUBSTRING(T2.Ordem,1,1) = SUBSTRING(#TEMP.Ordem,1,1) AND (Valor_PIS <> 0 OR Valor_COFINS <> 0))');
             SQL.Add('                ,Valor_BC     = (SELECT SUM(ISNULL(Valor_BC, 0))     FROM #TEMP T2 WHERE SUBSTRING(T2.Ordem,1,1) = SUBSTRING(#TEMP.Ordem,1,1) AND (Valor_PIS <> 0 OR Valor_COFINS <> 0))');
             SQL.Add('                ,Valor_PIS    = (SELECT SUM(ISNULL(Valor_PIS, 0))    FROM #TEMP T2 WHERE SUBSTRING(T2.Ordem,1,1) = SUBSTRING(#TEMP.Ordem,1,1))');
             SQL.Add('                ,Valor_COFINS = (SELECT SUM(ISNULL(Valor_COFINS, 0)) FROM #TEMP T2 WHERE SUBSTRING(T2.Ordem,1,1) = SUBSTRING(#TEMP.Ordem,1,1))');
             SQL.Add('WHERE #TEMP.Grupo = ''TITULO'' ');
             // EM CASO DE SALDO NEGATIVO DO MÊS ANTERIOR NÃO COMPUTA NA APURAÇÃO ATUAL.
             SQL.Add('UPDATE #TEMP SET DC = '''' ');
             SQL.Add('WHERE SUBSTRING(Ordem, 1, 1) = ''E'' ');
             SQL.Add('AND (SELECT Valor_PIS FROM #TEMP WHERE Ordem = ''E0'') < 0 ');

             SQL.Add('UPDATE #TEMP SET DC = '''' ');
             SQL.Add('WHERE SUBSTRING(Ordem, 1, 1) = ''F'' ');
             SQL.Add('AND (SELECT Valor_COFINS FROM #TEMP WHERE Ordem = ''F0'') < 0 ');

             SQL.Add('UPDATE #TEMP SET Valor_PIS    = (SELECT SUM(CASE WHEN DC = ''C'' THEN Valor_PIS    ELSE Valor_PIS    * -1 END)  FROM #TEMP T2 WHERE ISNULL(Grupo, '''') <> ''TITULO'' AND ISNULL(Grupo, '''') <> ''DEDUÇÕES'' AND DC <> '''' AND T2.Num_Filial = #Temp.Num_Filial)');
             SQL.Add('WHERE Grupo = ''APURACAO PIS'' AND DC <> '''' ');

             SQL.Add('UPDATE #TEMP SET Valor_COFINS = (SELECT SUM(CASE WHEN DC = ''C'' THEN Valor_COFINS ELSE Valor_COFINS * -1 END)  FROM #TEMP T2 WHERE ISNULL(Grupo, '''') <> ''TITULO'' AND ISNULL(Grupo, '''') <> ''DEDUÇÕES'' AND DC <> '''' AND T2.Num_Filial = #Temp.Num_Filial)');
             SQL.Add('WHERE Grupo = ''APURACAO COFINS'' AND DC <> '''' ');

             SQL.Add('UPDATE #TEMP SET Descricao = CASE WHEN Valor_PIS    > 0 THEN ''    Valor á transferir para mês seguinte.''    ELSE ''    Valor á pagar.''    END WHERE Grupo = ''APURACAO PIS'' ');
             SQL.Add('UPDATE #TEMP SET Descricao = CASE WHEN Valor_COFINS > 0 THEN ''    Valor á transferir para mês seguinte.''    ELSE ''    Valor á pagar.''    END WHERE Grupo = ''APURACAO COFINS'' ');
             SQL.Add('DELETE FROM #TEMP WHERE ISNULL(Valor_PIS, 0) + ISNULL(Valor_COFINS, 0) = 0 AND ISNULL(Apuracao, '''') <> ''APURACAO'' ');
             SQL.Add('UPDATE #TEMP SET Empresa = CASE WHEN (SELECT ISNULL(min(Numero_Filial), 0) FROM Cybersoft_Cadastros.dbo.Empresas WHERE CNPJ = Empresa) = 0 THEN');
             SQL.Add('                                ''MATRIZ'' ');
             SQL.Add('                           ELSE');
             SQL.Add('                                ''FILIAL ''+ CAST((SELECT ISNULL(min(Numero_Filial), 0) FROM Cybersoft_Cadastros.dbo.Empresas WHERE CNPJ = Empresa) AS VARCHAR(2)) END');
             SQL.Add('UPDATE #TEMP SET Descricao = Descricao + '' (''+ISNULL(Empresa, '''')+'')'' WHERE ISNULL(Empresa, '''') <> '''' ');
             SQL.Add('SELECT * INTO ApuracaoPISCOFINS FROM #TEMP');
             SQL.Add('ORDER BY Ordem, Num_Filial, Descricao, Aliquota_PIS, Aliquota_COFINS');
             SQL.Add('UPDATE ApuracaoPISCOFINS SET Valor_PIS    = (SELECT SUM(Valor_PIS)    FROM ApuracaoPISCOFINS AP2 WHERE Grupo = ''APURACAO PIS'')');
             SQL.Add('                            ,Valor_COFINS = (SELECT SUM(Valor_COFINS) FROM ApuracaoPISCOFINS AP2 WHERE Grupo = ''APURACAO COFINS'')');
             SQL.Add('WHERE Apuracao = ''APURACAO'' ');
             
             SQL.Add('SELECT * FROM ApuracaoPISCOFINS ORDER BY Ordem, Num_Filial');
             SQL.Add(mDrop);
             
             if Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
                SQL.Text := RemoveCaracter('ClassificacaoFinanceira','Cybersoft_Cadastros.dbo.ClassificacaoFinanceira', tApuracao2.SQL.Text);
             end;
             
             ParamByName('pAno').AsInteger     := cAno.AsInteger;
             ParamByName('pMes').AsInteger     := cMes.ItemIndex + 1;
             ParamByName('pMesAno').AsString   := mMesAnt;
             ParamByName('pEmpresa').AsInteger := EmpresasCodigo.AsInteger;
             //tApuracao2.SQL.SaveToFile('c:\temp\Apuracao_PIS_COFINS_Nova.sql');
             try
                open;
             except on E: Exception do
                begin
                    showmessage('    » ERRO NO SCRIPT: '+#13+#13+E.Message);
                end;
             end;
          end;
          
          // Zera os saldos do mês solicitado da empresa e filiais.
          tEmpresas.First;
          while not tEmpresas.Eof do begin
                tSaldo.SQL.Clear;
                tSaldo.SQL.Add('UPDATE '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.'+'SaldoPISCOFINS SET Saldo_PIS = 0, Saldo_COFINS = 0');
                tSaldo.SQL.Add('WHERE Mes_Ano = :pMesAno');
                tSaldo.ParamByName('pMesAno').AsString := mMesAtu;
                tSaldo.Execute;
                tEmpresas.Next;
          end;

          // Registrando o saldo do último mês solicitado.
          with ApuracaoPISCOFINS do begin 
               SQL.Clear;
               SQL.Add('select * from ApuracaoPISCOFINS where isnull(Banco_Dados, '''') <> '''' ');
               SQL.Add('order by Num_Filial, Grupo desc');
               Open;
               while not Eof do begin
                     SaldoPISCOFINS.SQL.Clear;
                     SaldoPISCOFINS.SQL.Add('SELECT * FROM '+FieldByName('Banco_Dados').AsString+'.dbo.'+'SaldoPISCOFINS'+' WHERE Mes_Ano = :pMesAno ');
                     SaldoPISCOFINS.ParamByName('pMesAno').AsString := mMesAtu;
                     //SaldoPISCOFINS.SQL.SaveToFile('c:\temp\Saldo_PISCOFINS.sql');
                     SaldoPISCOFINS.Open;

                     tSaldo.SQL.Clear;
                     if SaldoPISCOFINS.RecordCount = 0 then begin
                        tSaldo.SQL.Add('INSERT INTO '+FieldByName('Banco_Dados').AsString+'.dbo.'+'SaldoPISCOFINS VALUES(:pMesAno, :pValorPIS, :pValorCOFINS)');
                     end else begin
                        if FieldByName('Grupo').AsString = 'APURACAO PIS' then begin
                           tSaldo.SQL.Add('UPDATE '+FieldByName('Banco_Dados').AsString+'.dbo.'+'SaldoPISCOFINS SET Saldo_PIS = :pValorPIS');
                        end else begin
                           tSaldo.SQL.Add('UPDATE '+FieldByName('Banco_Dados').AsString+'.dbo.'+'SaldoPISCOFINS SET Saldo_COFINS = :pValorCOFINS');
                        end;
                        tSaldo.SQL.Add('WHERE Mes_Ano = :pMesAno');
                     end;
                     tSaldo.ParamByName('pMesAno').AsString     := mMesAtu;
                     if FieldByName('Grupo').AsString = 'APURACAO PIS' then begin
                        tSaldo.ParamByName('pValorPIS').AsFloat    := FieldByName('Valor_PIS').AsFloat;
                     end else begin
                        tSaldo.ParamByName('pValorCOFINS').AsFloat := FieldByName('Valor_COFINS').AsFloat;
                     end;
                     tSaldo.Execute;

                     Next;
               end;
          end;
     end;

     if FileExists(Dados.EmpresasLogo.Value) then begin
        iLogo2.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;
        
     if cTodos.Checked  then
        pNomeMes.Caption := UpperCase(' Janeiro a Dezembro de ')+PoeZero(4,cAno.AsInteger)+' '
     else
        pNomeMes.Caption := ' '+AnsiUpperCase(cMes.Text) + ' / '+PoeZero(4,cAno.AsInteger)+' ';

     Screen.Cursor := crDefault;

     rApuracao.Print;
     rApuracao.Reset;
     rApuracao.FreeOnRelease;
end;

procedure TImpressao_Fiscais_ApuracaoPISCOFINS.ppDetailBand1BeforePrint(Sender: TObject);
begin
      pDescricao.Font.Style   := [];
      pBC.Font.Style          := [];
      pAliqPIS.Font.Style     := [];
      pValorPIS.Font.Style    := [];
      pAliqCOFINS.Font.Style  := [];
      pValorCOFINS.Font.Style := [];
      ppLine11.Visible        := false;
      ppLine12.Visible        := false;

      if tApuracao2.FieldByName('Grupo').AsString = 'TITULO' then begin
         pDescricao.Font.Style   := [fsbold];
         pBC.Font.Style          := [fsbold];
         pAliqPIS.Font.Style     := [fsbold];
         pValorPIS.Font.Style    := [fsbold];
         pAliqCOFINS.Font.Style  := [fsbold];
         pValorCOFINS.Font.Style := [fsbold];
         if tApuracao2.FieldByName('Ordem').AsString <> 'A0' then ppLine11.Visible := true;
         ppLine12.Visible        := true;
      end;
end;

end.
