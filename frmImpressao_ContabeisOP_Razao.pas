unit frmImpressao_ContabeisOP_Razao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls, DB, Funcoes, DBAccess, MSAccess,
  DBCtrls, IniFiles, RxLookup, Buttons, MaskUtils, ppClass, ppReport, ppDBPipe, ppVar, ppCtrls, ppMemo, ppPrnabl, ppBands,
  RxToolEdit, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppCache, ppComm, ppRelatv, ppProd, MemDS, Vcl.WinXCtrls;

type
  TImpressao_ContabeisOP_Razao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    StaticText1: TStaticText;
    tLancamentos: TMSQuery;
    rRazao: TppReport;
    ppLancamentos: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    bDetalhe: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    lTitulo: TppLabel;
    lCredito: TppDBText;
    ppEmpresas: TppDBPipeline;
    ppGroup1: TppGroup;
    gConta: TppGroupHeaderBand;
    rgConta: TppGroupFooterBand;
    lConta: TppDBText;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    lSaldoAtual: TppVariable;
    ppLine6: TppLine;
    ppLabel10: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLine9: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    tPlanoContas: TMSQuery;
    tMovimento: TMSQuery;
    dstLancamentos: TDataSource;
    ppGroup2: TppGroup;
    gData: TppGroupHeaderBand;
    rgData: TppGroupFooterBand;
    ppLabel11: TppLabel;
    GroupBox1: TGroupBox;
    tPlanoContasConta: TStringField;
    tPlanoContasCodigo: TStringField;
    tPlanoContasDescricao: TStringField;
    tPlanoContasSaldo_Anterior: TCurrencyField;
    tPlanoContasAtualiza_Anterior: TCurrencyField;
    tPlanoContasDebito: TCurrencyField;
    tPlanoContasCredito: TCurrencyField;
    tPlanoContasSaldo_Atual: TCurrencyField;
    tPlanoContasSintetica: TBooleanField;
    tPlanoContasDC_Anterior: TStringField;
    tPlanoContasDC_Atual: TStringField;
    tPlanoContasGrupo: TStringField;
    ppSystemVariable2: TppSystemVariable;
    ppDBText2: TppDBText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    cEmpresa: TRxDBLookupCombo;
    tEmpresas: TMSQuery;
    tEmpresasCodigo: TIntegerField;
    tEmpresasCNPJ: TStringField;
    tEmpresasRazao_Social: TStringField;
    tEmpresasNumero_Filial: TSmallintField;
    tEmpresasEstado: TStringField;
    dstEmpresas: TDataSource;
    lSaldo_Anterior: TppDBText;
    ppDBMemo1: TppDBMemo;
    tLancamentosMes: TIntegerField;
    tLancamentosNumero: TIntegerField;
    tLancamentosConta: TStringField;
    tLancamentosHistorico_Codigo: TSmallintField;
    tLancamentosHistorico: TStringField;
    tLancamentosSaldo_Anterior: TCurrencyField;
    tLancamentosDebito: TCurrencyField;
    tLancamentosCredito: TCurrencyField;
    tLancamentosDescricao: TStringField;
    lTotalDiaD: TppDBCalc;
    lTotalDiaC: TppDBCalc;
    lTotalContaDeb: TppDBCalc;
    lTotalContaCred: TppDBCalc;
    lSaldo: TppVariable;
    ppLine5: TppLine;
    cProcesso: TRxDBLookupCombo;
    iLogo: TppImage;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    bSel: TBitBtn;
    tLancamentosCodigo: TStringField;
    StaticText5: TStaticText;
    cBenef: TRxDBLookupCombo;
    tBenef: TMSQuery;
    dstBenef: TDataSource;
    tBenefCNPJ_CPF: TStringField;
    tBenefNome: TStringField;
    tLancamentosLote: TLargeintField;
    ppDBText5: TppDBText;
    ppLabel12: TppLabel;
    ppDBText4: TppDBText;
    ppLine2: TppLine;
    tLancamentosData: TDateField;
    cSalto: TToggleSwitch;
    cMaiusculo: TToggleSwitch;
    cTotalDiario: TToggleSwitch;
    cDetalheBen: TRadioGroup;
    cDetalheProc: TRadioGroup;
    cConsolidado: TToggleSwitch;
    tLancamentosBeneficiario: TStringField;
    ppGroup3: TppGroup;
    rgBeneficiarioCab: TppGroupHeaderBand;
    rgBeneficiario: TppGroupFooterBand;
    ppDBText6: TppDBText;
    ppLabel13: TppLabel;
    lTotalBeneD: TppDBCalc;
    lTotalBeneC: TppDBCalc;
    tLancamentosDetalha_Ben: TBooleanField;
    tLancamentosDetalha_Pro: TBooleanField;
    ppLine3: TppLine;
    lData: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    lDebito: TppDBText;
    ppDBText7: TppDBText;
    lPeriodo: TppLabel;
    lPeriodo2: TppLabel;
    lSaldoBene: TppVariable;
    tLancamentosProcesso: TStringField;
    ppGroup4: TppGroup;
    rgProcessoCab: TppGroupHeaderBand;
    rgProcesso: TppGroupFooterBand;
    lTotalPro: TppLabel;
    ppLine4: TppLine;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    lTotalProD: TppDBCalc;
    lTotalProC: TppDBCalc;
    lSaldoPro: TppVariable;
    tEmpresasBanco_Dados: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gContaBeforePrint(Sender: TObject);
    procedure bDetalheBeforePrint(Sender: TObject);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure rRazaoBeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lSaldoAtualCalc(Sender: TObject; var Value: Variant);
    procedure rgContaBeforePrint(Sender: TObject);
    procedure bSelClick(Sender: TObject);
    procedure bCheck;
    procedure cProcessoChange(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure rgBeneficiarioBeforePrint(Sender: TObject);
    procedure rgProcessoBeforePrint(Sender: TObject);
    procedure rgProcessoCabBeforePrint(Sender: TObject);
  private
    procedure FiltraBenef;
    { Private declarations }
  public
    { Public declarations }
    Arquivo    : TextFile;
    mNomeArq   : String;
    mLinha     : Integer;
    mPagina    : Integer;
    mCancelado : Boolean;
  end;

var
  Impressao_ContabeisOP_Razao: TImpressao_ContabeisOP_Razao;

implementation

uses frmDados, frmDMContab, frmMenu_Principal, frmImpressao_Visualizar, frmImpressao_ContabeisSelecao_Razao, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_ContabeisOP_Razao.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_ContabeisOP_Razao.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate('IMPRESSAO_RAZAO', 'Data_Inicial', cDataIni.Date );
      aINI.WriteDate('IMPRESSAO_RAZAO', 'Data_Final', cDataFim.Date );
      aINI.WriteBool('IMPRESSAO_RAZAO', 'Salto', cSalto.State = tsson);
      aINI.WriteBool('IMPRESSAO_RAZAO', 'Maiusculo', cMaiusculo.state = tsson);
      aINI.WriteBool('IMPRESSAO_RAZAO', 'Total_Diario', cTotalDiario.state = tsson);
      aINI.WriteBool('IMPRESSAO_RAZAO', 'Consolidado', cConsolidado.state = tsson);
      aINI.WriteString('IMPRESSAO_RAZAO', 'Processo', cProcesso.Text);
      aINI.WriteString('IMPRESSAO_RAZAO', 'Empresa', iif(cEmpresa.text <> '', cEmpresa.KeyValue, ''));
      aINI.WriteString('IMPRESSAO_RAZAO', 'Beneficiario', iif(cBenef.text <> '', cBenef.KeyValue, ''));
      aINI.WriteINteger('IMPRESSAO_RAZAO', 'DetalheBen', cDetalheBen.ItemIndex);
      aINI.WriteINteger('IMPRESSAO_RAZAO', 'DetalheProc', cDetalheProc.ItemIndex);
      aINI.Free;

      LimpaMemoria;
      Impressao_ContabeisOP_Razao.Release;
      Impressao_ContabeisOP_Razao := nil;
end;

procedure TImpressao_ContabeisOP_Razao.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                   := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date          := aINI.ReadDate('IMPRESSAO_RAZAO', 'Data_Inicial', Date);
      cDataFim.Date          := aINI.ReadDate('IMPRESSAO_RAZAO', 'Data_Final'  , Date);
      cSalto.state           := iif(aINI.ReadBool('IMPRESSAO_RAZAO', 'Salto'       , false), tsson, tssoff);
      cMaiusculo.state       := iif(aINI.ReadBool('IMPRESSAO_RAZAO', 'Maiusculo'   , false), tsson, tssoff);
      cTotalDiario.state     := iif(aINI.ReadBool('IMPRESSAO_RAZAO', 'Total_Diario', False), tsson, tssoff);
      cConsolidado.state     := iif(aINI.ReadBool('IMPRESSAO_RAZAO', 'Consolidado', False), tsson, tssoff);
      cProcesso.KeyValue     := aINI.ReadString ('IMPRESSAO_RAZAO', 'Processo'    , '');
      cEmpresa.KeyValue      := aINI.ReadString ('IMPRESSAO_RAZAO', 'Empresa'     , '');
      cBenef.KeyValue        := aINI.ReadString ('IMPRESSAO_RAZAO', 'Beneficiario', '');
      cDetalheBen.ItemIndex  := aINI.ReadInteger('IMPRESSAO_RAZAO', 'DetalheBen', 0);
      cDetalheProc.ItemIndex := aINI.ReadInteger('IMPRESSAO_RAZAO', 'DetalheProc', 0);
      aINI.Free;

      With Dados, dmContab do Begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           tEmpresas.SQL.Clear;
           tEmpresas.SQL.Add('SELECT Codigo,');
           tEmpresas.SQL.Add('       SUBSTRING(CNPJ,1,2)+''.''+SUBSTRING(CNPJ,3,3)+''.''+SUBSTRING(CNPJ,6,3)+''/''+SUBSTRING(CNPJ,9,4)+''-''+SUBSTRING(CNPJ,13,2) AS CNPJ,');
           tEmpresas.SQL.Add('       Razao_Social,');
           tEmpresas.SQL.Add('       Numero_Filial,');
           tEmpresas.SQL.Add('       Estado,');
           tEmpresas.SQL.Add('       Banco_Dados');
           tEmpresas.SQL.Add('FROM   Empresas');
           tEmpresas.SQL.Add('WHERE ISNULL(Desativada, 0) = 0');
           tEmpresas.SQL.Add('AND (SELECT DISTINCT Empresa FROM '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos WHERE Empresa = CNPJ) <> '''' ');
           tEmpresas.SQL.Add('ORDER BY CNPJ');
           //tEmpresas.SQL.SaveToFile('c:\temp\Razao_Contabil_Empresas.sql');
           tEmpresas.Open;

           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao');
           Historicos.Open;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Sintetica = 0) ORDER BY Conta, Descricao' );
           PlanoContas.Open;
           PlanoContasConta.EditMask := EmpresasMascara_PlanoContas.Value+';0; ';

           with ProcessosDOC do begin
                SQL.Clear;
                SQL.Add('SELECT *');
                SQL.Add('FROM  ProcessosDocumentos');
                SQL.Add('where Processo in(select distinct Processo_Debito  from '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos)');
                SQL.Add('or    Processo in(select distinct Processo_Credito from '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos)');
                SQL.Add('ORDER BY Processo');
                Open;
           end;

           FiltraBenef;

           bCheck;
      end;
end;

procedure TImpressao_ContabeisOP_Razao.cProcessoChange(Sender: TObject);
begin
     if Active then FiltraBenef;
end;

procedure TImpressao_ContabeisOP_Razao.gContaBeforePrint(Sender: TObject);
begin
      lSaldo.Value := tLancamentos.FieldByName('Saldo_Anterior').AsCurrency;
end;

procedure TImpressao_ContabeisOP_Razao.bDetalheBeforePrint(Sender: TObject);
begin
      lSaldo.Value := lSaldo.Value - tLancamentos.FieldByName('Debito').AsCurrency + tLancamentos.FieldByName('Credito').AsCurrency;
end;

procedure TImpressao_ContabeisOP_Razao.bImprimirClick(Sender: TObject);
var
 mFilial:string;
begin
      Screen.Cursor := crSQLWait;

      with Dados, dmContab do begin
           // Seleciona os lançamentos solicitados.
           tMovimento.SQL.Clear;
           tMovimento.SQL.Add('SELECT COUNT(*) AS Qtde FROM PlanoContas WHERE Imprimir_Razao = 1');
           tMovimento.Open;
           with tLancamentos do begin
                Close;
                SQL.Clear;
                sql.Add('-------------------------------------------------------------------------[ JUNTA OS CLIENTES/FORNECEDORES/ORGÃO DA MATRIZ E DAS FILIAIS ]-----------------------------------------------------------------');
                sql.Add('select Codigo = ''F''+Codigo');
                sql.Add('      ,Nome');
                sql.Add('into #tmpDest');
                sql.Add('from Cybersoft_Cadastros.dbo.OrgaosPublicos');
                
                tEmpresas.open;
                tEmpresas.first;
                while not tEmpresas.Eof do begin
                      mFilial := iif(tEmpresas.fieldbyname('Numero_Filial').asinteger = 0, 'MT', 'F'+tEmpresas.fieldbyname('Numero_Filial').asstring);
                      sql.Add('union all');
                      sql.Add('select Codigo = '+quotedstr(mFilial+'_C')+'+cast(Codigo as varchar(10))');
                      sql.Add('      ,Nome');
                      sql.Add('from '+tEmpresas.fieldbyname('Banco_Dados').asstring+'.dbo.Clientes');
                      sql.Add('union all');
                      sql.Add('select Codigo = '+quotedstr(mFilial+'_F')+'+cast(Codigo as varchar(10))');
                      sql.Add('      ,Nome');
                      sql.Add('from '+tEmpresas.fieldbyname('Banco_Dados').asstring+'.dbo.Fornecedores');
                      tEmpresas.next;
                end;
                
                sql.Add('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
                SQL.Add('select LAN.Data');
                SQL.Add('      ,Mes            = month(LAN.Data)');
                SQL.Add('      ,LAN.Numero');
                SQL.Add('      ,LAN.Lote');
                SQL.Add('      ,Conta          = (select Conta from PlanoContas PC where PC.Codigo = LAN.Conta_Debito)');
                SQL.Add('      ,Codigo         = LAN.Conta_Debito');
                SQL.Add('      ,Descricao      = (select Descricao from PlanoContas PC where PC.Codigo = LAN.Conta_Debito)');
                SQL.Add('      ,LAN.Historico_Codigo');
                SQL.Add('      ,Historico      = isnull((select Descricao from HistoricoPadrao where Codigo = LAN.Historico_Codigo), '''') + cast(isnull(LAN.Historico_Complemento, '''') AS VARCHAR(100))');
                SQL.Add('      ,Saldo_Anterior = cast(0 as money)');
                SQL.Add('      ,Debito         = LAN.Valor');
                SQL.Add('      ,Credito        = cast(0 AS Money)');
                SQL.Add('      ,Beneficiario_Cod= Beneficiario');
                SQL.Add('      ,Beneficiario   =  (select Nome from #tmpDest tmd where tmd.Codigo = Beneficiario)');
                SQL.Add('      ,Processo = ''PROCESSO: ''+isnull(Lan.Processo_Debito, '''')');
                if cDetalheBen.ItemIndex = 0 then begin
                   SQL.Add('      ,Detalha_Ben = (select isnull(Detalha_Pessoa, 0) from PlanoContas PC where PC.Codigo = Conta_Debito)');
                end;
                if cDetalheBen.ItemIndex = 1 then begin
                   SQL.Add('      ,Detalha_Ben = cast(1 as bit)');
                end;
                if cDetalheBen.ItemIndex = 2 then begin
                   SQL.Add('      ,Detalha_Ben = cast(0 as bit)');
                end;
                if cDetalheProc.ItemIndex = 0 then begin
                   SQL.Add('      ,Detalha_Pro = (select isnull(Detalha_Processo, 0) from PlanoContas PC where PC.Codigo = Conta_Debito)');
                end;
                if cDetalheProc.ItemIndex = 1 then begin
                   SQL.Add('      ,Detalha_Pro = cast(1 as bit)');
                end;
                if cDetalheProc.ItemIndex = 2 then begin
                   SQL.Add('      ,Detalha_Pro = cast(0 as bit)');
                end;
                SQL.Add('into #Temp');
                SQL.Add('from  Lancamentos LAN');
                SQL.Add('where LAN.Data between :pDataIni and :pDataFim');
                SQL.Add('and   LAN.Contabilizar = 1');
                SQL.Add('and   isnull(LAN.Conta_Debito, '''') <> '''' ');
                if Trim(cEmpresa.DisplayValue) <> '' then begin
                   SQL.Add('  and (LAN.Empresa = :pEmpresa)');
                   ParamByName('pEmpresa').AsInteger := tEmpresas.FieldByName('Codigo').AsInteger;
                end;
                if Trim(cProcesso.Text) <> '' then begin
                   SQL.Add('  and (LAN.Processo_Debito = :pProcesso)');
                   ParamByName('pProcesso').AsString := cProcesso.Text;
                end;
                if tMovimento.fieldByName('Qtde').Value > 0 then begin
                   SQL.Add('  and (select Imprimir_Razao from PlanoContas PC where PC.Codigo = LAN.Conta_Debito) = 1');
                end;
                if Trim(cBenef.text) <> '' then begin
                   SQL.Add('  and (LAN.Beneficiario_CNPJ = :pCNPJ)');
                   ParamByName('pCNPJ').AsString := tBenef.FieldByName('CNPJ_CPF').AsString;
                end;
                SQL.Add('');
                SQL.Add('union all');
                SQL.Add('select LAN.Data');
                SQL.Add('      ,Mes            = MONTH(LAN.Data)');
                SQL.Add('      ,LAN.Numero');
                SQL.Add('      ,LAN.Lote');
                SQL.Add('      ,Conta          = (select Conta from PlanoContas PC where PC.Codigo = LAN.Conta_Credito)');
                SQL.Add('      ,Codigo         = LAN.Conta_Credito');
                SQL.Add('      ,Descricao      = (select Descricao from PlanoContas PC where PC.Codigo = LAN.Conta_Credito)');
                SQL.Add('      ,LAN.Historico_Codigo');
                SQL.Add('      ,Historico      = isnull((select Descricao from HistoricoPadrao where Codigo = LAN.Historico_Codigo), '''') + CAST(isnull(LAN.Historico_Complemento, '''') AS VARCHAR(100))');
                SQL.Add('      ,Saldo_Anterior = CAST(0 as money)');
                SQL.Add('      ,Debito         = CAST(0 AS Money)');
                SQL.Add('      ,Credito        = LAN.Valor');
                SQL.Add('      ,Beneficiario_Cod= Beneficiario');
                SQL.Add('      ,Beneficiario   =  (select Nome from #tmpDest tmd where tmd.Codigo = Beneficiario)');
                SQL.Add('      ,Processo = ''PROCESSO: ''+isnull(Lan.Processo_Credito, '''')');
                if cDetalheBen.ItemIndex = 0 then begin
                   SQL.Add('      ,Detalha_Ben = (select isnull(Detalha_Pessoa, 0) from PlanoContas PC where PC.Codigo = Conta_Credito)');
                end;
                if cDetalheBen.ItemIndex = 1 then begin
                   SQL.Add('      ,Detalha_Ben = cast(1 as bit)');
                end;
                if cDetalheBen.ItemIndex = 2 then begin
                   SQL.Add('      ,Detalha_Ben = cast(0 as bit)');
                end;
                if cDetalheProc.ItemIndex = 0 then begin
                   SQL.Add('      ,Detalha_Pro = (select isnull(Detalha_Processo, 0) from PlanoContas PC where PC.Codigo = Conta_Credito)');
                end;
                if cDetalheProc.ItemIndex = 1 then begin
                   SQL.Add('      ,Detalha_Pro = cast(1 as bit)');
                end;
                if cDetalheProc.ItemIndex = 2 then begin
                   SQL.Add('      ,Detalha_Pro = cast(0 as bit)');
                end;
                SQL.Add('from  Lancamentos LAN');
                SQL.Add('where LAN.Data between :pDataIni and :pDataFim');
                SQL.Add('and   LAN.Contabilizar = 1');
                SQL.Add('and   isnull(LAN.Conta_Credito, '''') <> '''' ');
                if Trim(cEmpresa.DisplayValue) <> '' then begin
                   SQL.Add('  and (LAN.Empresa = :pEmpresa)');
                   ParamByName('pEmpresa').AsInteger := tEmpresas.FieldByName('Codigo').AsInteger;
                end;
                if Trim(cProcesso.Text) <> '' then begin
                   SQL.Add('  and (LAN.Processo_Credito = :pProcesso)');
                   ParamByName('pProcesso').AsString := cProcesso.Text;
                end;
                if tMovimento.FieldByName('Qtde').Value > 0 then begin
                   SQL.Add('  and (select Imprimir_Razao from PlanoContas PC where PC.Codigo = LAN.Conta_Credito) = 1');
                end;
                if Trim(cBenef.Text) <> '' then begin
                   SQL.Add('  and (LAN.Beneficiario_CNPJ = :pCNPJ)');
                   ParamByName('pCNPJ').AsString := tBenef.FieldByName('CNPJ_CPF').AsString;
                end;
                SQL.Add('');
                SQL.Add('update #Temp set Saldo_Anterior = isnull((select Saldo_Anterior from PlanoContas PC where PC.Codigo = #Temp.Codigo), 0) -');
                SQL.Add('                                  isnull((select sum(Valor) from Lancamentos LC where LC.Contabilizar = 1 and LC.Conta_Debito  = #Temp.Codigo and Data < :pDataIni), 0) +');
                SQL.Add('                                  isnull((select sum(Valor) from Lancamentos LC where LC.Contabilizar = 1 and LC.Conta_Credito = #Temp.Codigo and Data < :pDataIni), 0)');
                SQL.Add('');
                SQL.Add('update #Temp set Saldo_Anterior = isnull((select sum(Valor) from Lancamentos LC where LC.Beneficiario = #Temp.Beneficiario_Cod and LC.Contabilizar = 1 and LC.Conta_Debito  = #Temp.Codigo and Data < :pDataIni), 0) -');
                SQL.Add('                                  isnull((select sum(Valor) from Lancamentos LC where LC.Beneficiario = #Temp.Beneficiario_Cod and LC.Contabilizar = 1 and LC.Conta_Credito = #Temp.Codigo and Data < :pDataIni), 0)');
                SQL.Add('where Detalha_Ben = 1');
                SQL.Add('');
                SQL.Add('update #Temp set Saldo_Anterior = isnull((select sum(Valor) from Lancamentos LC where LC.Processo_Debito  = #Temp.Processo and LC.Contabilizar = 1 and LC.Conta_Debito  = #Temp.Codigo and Data < :pDataIni), 0) -');
                SQL.Add('                                  isnull((select sum(Valor) from Lancamentos LC where LC.Processo_Credito = #Temp.Processo and LC.Contabilizar = 1 and LC.Conta_Credito = #Temp.Codigo and Data < :pDataIni), 0)');
                SQL.Add('where Detalha_Pro = 1');
                SQL.Add('');
                SQL.Add('update #Temp set Processo = '''' where isnull(Detalha_Pro, 0) = 0');
                SQL.Add('');
                SQL.Add('select * from #temp');

                if (cDetalheBen.ItemIndex < 2) then begin
                   SQL.Add('order by Conta, Beneficiario, Processo, Data');
                end;
                if (cDetalheBen.ItemIndex = 2) and (cDetalheProc.ItemIndex < 2) then begin
                   SQL.Add('order by Conta, Processo, Data, Beneficiario');
                end;

                SQL.Add('drop table #Temp, #TmpDest');
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                //SQL.SaveToFile('C:\temp\Impressão_Razao.SQL');
                Open;

                If RecordCount = 0 then begin
                   ShowMessage('Não há movimento para o período solicitado!');
                   Screen.Cursor := crDefault;
                   Abort;
                end;
           end;

           lConta.DisplayFormat := EmpresasMascara_PlanoContas.Value+';0; ';
      End;

      Screen.Cursor := crDefault;

      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;

      rRazao.Groups[0].NewPage  := cSalto.state = tsson;
      rgBeneficiario.Visible    := false;
      rgBeneficiarioCab.Visible := false;
      rgProcesso.Visible        := false;
      rgProcessoCab.Visible     := false;

      rRazao.Print;
      rRazao.Reset;
      rRazao.FreeOnRelease;
end;

procedure TImpressao_ContabeisOP_Razao.ppDBText3GetText(Sender: TObject;var Text: String);
begin
      If cMaiusculo.state = tsson then Text := UpperCase(Text);
end;

procedure TImpressao_ContabeisOP_Razao.rRazaoBeforePrint(Sender: TObject);
begin
      gData.Visible     := cTotalDiario.state = tsson;
      rgData.Visible    := gData.Visible;
      lPeriodo.Caption  := '| Período: '+cDataIni.Text + ' á '+ cDataFim.Text+' |';
      lTitulo.Caption   := iif(Dados.EmpresasNumero_Filial.asinteger = 0, 'Razão Analítico (MATRIZ)', 'Razão Analítico (FILIAL '+Dados.EmpresasNumero_Filial.AsString+')');
      if cProcesso.Text <> '' then lPeriodo.Caption := lPeriodo.Caption + ' Processo: '+cProcesso.Text+' |';
      lPeriodo2.Caption := '';
      if cBenef.Text <> '' then begin
         lPeriodo2.Caption := '| Beneficiário: '+tBenef.fieldbyName('Nome').AsString+ ' |';
      end;
end;

procedure TImpressao_ContabeisOP_Razao.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_ContabeisOP_Razao.lSaldoAtualCalc(Sender: TObject; var Value: Variant);
begin
      Value := lSaldo.Value;
end;

procedure TImpressao_ContabeisOP_Razao.rgProcessoBeforePrint(Sender: TObject);
begin
      lTotalPro.text        := 'TOTAL DO '+tLancamentos.FieldByName('Processo').asstring;
      lSaldoPro.Value       := tLancamentos.FieldByName('Saldo_Anterior').Value - lTotalProD.Value + lTotalProC.Value;
end;

procedure TImpressao_ContabeisOP_Razao.rgProcessoCabBeforePrint(Sender: TObject);
begin
      rgProcesso.Visible    := tLancamentos.FieldByName('Detalha_Pro').asboolean;
      rgProcessoCab.Visible := rgProcesso.Visible;
      lSaldoPro.Value       := tLancamentos.FieldByName('Saldo_Anterior').Value - lTotalProD.Value + lTotalProC.Value;
      lTotalPro.text        := 'TOTAL DO '+tLancamentos.FieldByName('Processo').asstring;
end;

procedure TImpressao_ContabeisOP_Razao.rgBeneficiarioBeforePrint(Sender: TObject);
begin
      lSaldoBene.Value          := tLancamentos.FieldByName('Saldo_Anterior').Value - lTotalBeneD.Value + lTotalBeneC.Value;
      rgBeneficiario.Visible    := tLancamentos.FieldByName('Detalha_Ben').asboolean;
      rgBeneficiarioCab.Visible := rgBeneficiario.Visible
end;

procedure TImpressao_ContabeisOP_Razao.rgContaBeforePrint(Sender: TObject);
begin
     lSaldoAtual.Value := tLancamentos.FieldByName('Saldo_Anterior').Value - lTotalContaDeb.Value + lTotalContaCred.Value;
end;

procedure TImpressao_ContabeisOP_Razao.bSelClick(Sender: TObject);
begin
      Impressao_ContabeisSelecao_Razao := TImpressao_ContabeisSelecao_Razao.Create(Self);
      Impressao_ContabeisSelecao_Razao.ShowModal;
      bCheck;
end;

procedure TImpressao_ContabeisOP_Razao.bCheck;
begin
      tMovimento.SQL.Clear;
      tMovimento.SQL.Add('SELECT COUNT(*) AS Qtde FROM PlanoContas WHERE Imprimir_Razao = 1');
      tMovimento.Open;
      If tMovimento.FieldByName('Qtde').Value > 0 then
         bSel.Glyph.LoadFromFile('Check_Grid.bmp')
      else
         bSel.Glyph.LoadFromFile('UnCheck_Grid.bmp')
end;

procedure TImpressao_ContabeisOP_Razao.FiltraBenef;
begin
     with tBenef, Dados do begin
          sql.Clear;
          sql.add('select Codigo = ''C''+cast(Codigo as varchar(10))');
          sql.add('      ,Nome');
          sql.add(' 	   ,Beneficiario_CNPJ = isnull(CNPJ,'''')+isnull(CPF,'''') ');
          sql.Add('into #temp');
          sql.Add('from clientes');
          sql.add('where Ativo = 1');
          if cProcesso.Text = '' then begin
             sql.add('and (select count(*) from '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos where Beneficiario_CNPJ = isnull(CNPJ, '''')+isnull(CPF, '''')) > 0');
          end else begin
             sql.add('and (select count(*) from '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos where Beneficiario_CNPJ = isnull(CNPJ, '''')+isnull(CPF, '''') and (Processo_Debito = :pProcesso or Processo_Credito = :pProcesso)) > 0');
          end;
          sql.Add('union all');
          sql.add('select Codigo = ''F''+cast(Codigo as varchar(10))');
          sql.add('      ,Nome');
          sql.add(' 	   ,Beneficiario_CNPJ = isnull(CNPJ,'''')+isnull(CPF,'''') ');
          sql.Add('from Fornecedores');
          sql.add('where Ativo = 1');
          if cProcesso.Text = '' then begin
             sql.add('and (select count(*) from '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos where Beneficiario_CNPJ = isnull(CNPJ, '''')+isnull(CPF, '''')) > 0');
          end else begin
             sql.add('and (select count(*) from '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos where Beneficiario_CNPJ = isnull(CNPJ, '''')+isnull(CPF, '''') and (Processo_Debito = :pProcesso or Processo_Credito = :pProcesso)) > 0');
          end;
          sql.add('union all');
          sql.Add('select Codigo = ''F''+cast(Codigo as varchar(10))');
          sql.add('      ,Nome');
          sql.add('   	 ,Beneficiario_CNPJ = isnull(CNPJ,'''') ');
          sql.add('from Cybersoft_Cadastros.dbo.OrgaosPublicos');
          sql.add('where Codigo is not null');
          if cProcesso.Text = '' then begin
             sql.add('and (select count(*) from '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos where Beneficiario_CNPJ = isnull(CNPJ, '''')) > 0');
          end else begin
             sql.add('and (select count(*) from '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos where Beneficiario_CNPJ = isnull(CNPJ, '''') and (Processo_Debito = :pProcesso or Processo_Credito = :pProcesso)) > 0');
             ParamByName('pProcesso').AsString := cProcesso.Text;
          end;
          sql.add('select distinct CNPJ_CPF = Beneficiario_CNPJ');
          sql.add('               ,Nome = (select max(Nome) from #temp tmp where tmp.Beneficiario_CNPJ = #temp.Beneficiario_CNPJ)');
          sql.Add('from #temp');
          sql.Add('order by Nome, CNPJ_CPF');
          sql.add('drop table #temp');
          //sql.SaveToFile('c:\temp\Impressao_Razao_Beneficiarios.sql');
          open;
     end;
end;


end.
