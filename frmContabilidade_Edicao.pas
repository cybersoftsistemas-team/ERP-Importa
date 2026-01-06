unit frmContabilidade_Edicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Grids, DBGrids, RXDBCtrl, RXCtrls,
  Vcl.ExtCtrls, DBCtrls, DB, DBAccess, MSAccess, RxLookup, IniFiles, Buttons, MemDS, Mask, RxToolEdit, DateUtils, system.UITypes, Vcl.WinXCtrls;

type
  TContabilidade_Edicao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    GroupBox1: TGroupBox;
    dstBalancete: TDataSource;
    GradeBalancete: TRxDBGrid;
    GroupBox2: TGroupBox;
    GradeRazao: TDBGrid;
    tLancamentos: TMSQuery;
    dstLancamentos: TDataSource;
    tLancamentosNumero: TSmallintField;
    tLancamentosConta_Debito: TStringField;
    tLancamentosConta_Credito: TStringField;
    tLancamentosHistorico_Codigo: TSmallintField;
    tLancamentosHistorico_Descricao: TStringField;
    tLancamentosValor: TCurrencyField;
    tContas: TMSQuery;
    dstContas: TDataSource;
    tContasConta: TStringField;
    tContasDescricao: TStringField;
    Panel2: TPanel;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    StaticText9: TStaticText;
    cConta: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cEmpresa: TRxDBLookupCombo;
    tBalancete: TMSQuery;
    tBalanceteConta: TStringField;
    tBalanceteDescricao: TStringField;
    tBalanceteSaldo_Anterior: TCurrencyField;
    tBalanceteDebito: TCurrencyField;
    tBalanceteCredito: TCurrencyField;
    tBalanceteSaldo_Atual: TCurrencyField;
    tBalanceteSintetica: TBooleanField;
    tBalanceteDC_Anterior: TStringField;
    tBalanceteDC_Atual: TStringField;
    tBalanceteNatureza: TStringField;
    bLimparEmpresa: TSpeedButton;
    bLimpaGrupo: TSpeedButton;
    tLanc: TMSQuery;
    cPesquisa: TEdit;
    tPesquisa: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    tContasCodigo: TStringField;
    tBalanceteCodigo: TStringField;
    cPesquisaLan: TEdit;
    StaticText5: TStaticText;
    bFiltro: TBitBtn;
    bLimpar: TBitBtn;
    StaticText4: TStaticText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tLancamentosD_C: TStringField;
    tLancamentosLinha: TLargeintField;
    tLancamentosSaldo: TCurrencyField;
    tLancamentosLote: TLargeintField;
    tLancamentosBeneficiario: TStringField;
    tLancamentosProcesso_Debito: TStringField;
    tLancamentosProcesso_Credito: TStringField;
    StaticText6: TStaticText;
    cProcesso: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cBenef: TRxDBLookupCombo;
    tBenef: TMSQuery;
    tBenefCNPJ_CPF: TStringField;
    tBenefNome: TStringField;
    dstBenef: TDataSource;
    tLancamentosData: TDateField;
    cDetalheBen: TRadioGroup;
    cDetalheProc: TRadioGroup;
    bGerar: TButton;
    GroupBox3: TGroupBox;
    cMovimento: TToggleSwitch;
    cAnaliticas: TToggleSwitch;
    cSaldoZero: TToggleSwitch;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    tBalanceteTitulo: TBooleanField;
    tBalanceteGrupo: TStringField;
    tEmpresas: TMSQuery;
    tEmpresasCodigo: TIntegerField;
    tEmpresasCNPJ: TStringField;
    tEmpresasRazao_Social: TStringField;
    tEmpresasNumero_Filial: TSmallintField;
    tEmpresasEstado: TStringField;
    tEmpresasBanco_Dados: TStringField;
    procedure bGerarClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GradeBalanceteDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tBalanceteAfterScroll(DataSet: TDataSet);
    procedure GradeRazaoDblClick(Sender: TObject);
    procedure bLimparEmpresaClick(Sender: TObject);
    procedure bLimpaGrupoClick(Sender: TObject);
    procedure bFiltroClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mBancoEmpresa: string;
  end;

var
  Contabilidade_Edicao: TContabilidade_Edicao;

implementation

uses frmDMContab, frmDados, frmMenu_Principal, frmContabilidade_Lancamentos, Funcoes;

{$R *.dfm}

procedure TContabilidade_Edicao.bGerarClick(Sender: TObject);
var
   mFilial:string;
begin
      Screen.Cursor := crSQLWait;
      GradeBalancete.DisableScroll;
      tBalancete.FilterSQL := '';

      With dmContab do begin
           // Verifica se houve movimento no mês solicitado.
           tLanc.SQL.Clear;
           tLanc.SQL.Add('SELECT COUNT(*) AS Qtde FROM Lancamentos WHERE (Data BETWEEN :pDataIni AND :pDataFim)');
           tLanc.ParamByName('pDataIni').AsDate := cDataIni.Date;
           tLanc.ParamByName('pDataFim').AsDate := cDataFim.Date;
           tLanc.Open;

           if tLanc.FieldByName('Qtde').AsInteger = 0 then begin
              Screen.Cursor := crDefault;
              MessageDlg('Não houve movimento no mês solicitado!', mtConfirmation, [mbOK], 0);
              Abort;
           end;

           with tBalancete do begin
                sql.Clear;
                sql.Add('--------------------------------------------------------------------------[ PEGANDO LANÇAMENTOS DO PERIODO ]----------------------------------------------------------------------------------------------------------');
                sql.Add('select PC.Conta');
                sql.Add('      ,PC.Codigo');
                sql.Add('      ,PC.Descricao');
                sql.Add('      ,PC.Sintetica');
                sql.Add('      ,PC.Titulo');
                sql.Add('      ,PC.Natureza');
                sql.Add('      ,Atualiza_Anterior = isnull(PC.Saldo_Anterior, 0) -');
                sql.Add('                           isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Debito  = PC.Codigo AND Lan.Data < :pDataIni), 0) +');
                sql.Add('                           isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Credito = PC.Codigo AND Lan.Data < :pDataIni), 0)');
                sql.Add('      ,Debito            = isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Debito  = PC.Codigo AND Lan.Data between :pDataIni and :pDataFim), 0)');
                sql.Add('      ,Credito           = isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Credito = PC.Codigo AND Lan.Data between :pDataIni and :pDataFim), 0)');
                sql.Add('      ,Saldo_Atual       = (isnull(PC.Saldo_Anterior, 0) -');
                sql.Add('                            isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Debito  = PC.Codigo AND Lan.Data < :pDataIni), 0) +');
                sql.Add('                            isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Credito = PC.Codigo AND Lan.Data < :pDataIni), 0) ) +');
                sql.Add('                            isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Debito  = PC.Codigo AND Lan.Data between :pDataIni and :pDataFim), 0) -');
                sql.Add('                            isnull((select sum(Valor) from Lancamentos Lan where Contabilizar = 1 and PC.Sintetica = 0 AND Lan.Conta_Credito = PC.Codigo AND Lan.Data between :pDataIni and :pDataFim), 0)');
                sql.Add('      ,DC_Anterior       = '''' ');
                sql.Add('      ,DC_Atual          = '''' ');
                sql.Add('      ,Beneficiario      = '''' ');
                sql.Add('      ,Processo          = '''' ');
                sql.Add('      ,Beneficiario_CNPJ = PC.CNPJ_CPF');
                sql.Add('into  #PlanoTmp');
                sql.Add('from  PlanoContas PC');
                sql.Add('where Conta is not null');
                sql.Add('----------------------------------------------------------------------------[ TOTALIZANDO CONTAS TITULO ]--------------------------------------------------------------------------------------------------------------');
                sql.Add('update #PLanoTmp SET Debito            = isnull((select sum(Debito           ) from #PLanoTmp PT where PT.Conta LIKE RTRIM(#PLanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
                sql.Add('                    ,Credito           = isnull((select sum(Credito          ) from #PLanoTmp PT where PT.Conta LIKE RTRIM(#PLanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
                sql.Add('                    ,Atualiza_Anterior = isnull((select sum(Atualiza_Anterior) from #PLanoTmp PT where PT.Conta LIKE RTRIM(#PLanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
                sql.Add('                    ,Saldo_Atual       = isnull((select sum(Atualiza_Anterior+Debito-Credito) from #PLanoTmp PT where PT.Conta LIKE RTRIM(#PLanoTmp.Conta)+''%'' AND PT.Sintetica = 0), 0)');
                sql.Add('where(#PLanoTmp.Sintetica = 1)');
                sql.Add('-----------------------------------------------------------------------[ AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" ]------------------------------------------------------------------------------------------------------');
                sql.Add('update #PLanoTmp SET DC_Anterior = case when Natureza = ''D'' then');
                sql.Add('                                        case when Atualiza_Anterior >= 0 then ''D'' else ''C'' end');
                sql.Add('                                   else');
                sql.Add('                                        case when Atualiza_Anterior >= 0 then ''C'' else ''D'' end');
                sql.Add('                                   end');
                sql.Add('                    ,DC_Atual    = case when Natureza = ''D'' then');
                sql.Add('                                        case when Saldo_Atual >= 0 then ''D'' else ''C'' end');
                sql.Add('                                   else');
                sql.Add('                                        case when Saldo_Atual >= 0 then ''C'' else ''D'' end');
                sql.Add('                                   end');
                sql.Add('select *');
                sql.Add('into #PlanoTmp2');
                sql.Add('from #PlanoTmp');

                if (cDetalheBen.ItemIndex <> 2) and (cAnaliticas.State <> tsson)  then begin
                   sql.Add('-------------------------------------------------------------------------[ JUNTA OS CLIENTES/FORNECEDORES/ORGÃO DA MATRIZ E DAS FILIAIS ]------------------------------------------------------------------------------');
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
                   sql.Add('--------------------------------------------------------------------------[ DETALHAMENTO BENEFICIARIOS ]-------------------------------------------------------------------------------------------------------');
                   sql.Add('select Codigo  = Lan.Conta_Debito');
                   sql.Add('      ,Debito  = sum(Valor)');
                   sql.Add('      ,Credito = 0');
                   sql.Add('      ,Beneficiario');
                   sql.Add('      ,Beneficiario_CNPJ');
                   sql.Add('into  #temp');
                   sql.Add('from  Lancamentos Lan');
                   sql.Add('where isnull(Conta_Debito, '''') <> '''' ');
                   if cDetalheBen.ItemIndex = 0 then begin
                      sql.Add('and   (select Detalha_Pessoa from PlanoContas where Codigo = Conta_Debito) = 1');
                   end;
                   sql.Add('and Data between :pDataIni and :pDataFim');
                   sql.Add('group by Lan.Conta_Debito, Lan.Beneficiario, Lan.Beneficiario_CNPJ');
                   sql.Add('union all');
                   sql.Add('select Codigo  = Lan.Conta_Credito');
                   sql.Add('      ,Debito  = 0');
                   sql.Add('      ,Credito = sum(Valor)');
                   sql.Add('      ,Beneficiario');
                   sql.Add('      ,Beneficiario_CNPJ');
                   sql.Add('from   Lancamentos Lan');
                   sql.Add('where  isnull(Conta_Credito, '''') <> '''' ');
                   if cDetalheBen.ItemIndex = 0 then begin
                      sql.Add('and   (select Detalha_Pessoa from PlanoContas where Codigo = Conta_Credito) = 1');
                   end;
                   sql.Add('and    Data between :pDataIni and :pDataFim');
                   sql.Add('group by Lan.Conta_Credito, Lan.Beneficiario, Lan.Beneficiario_CNPJ');
                   sql.Add('select Conta = (select Conta from PlanoContas PC where PC.Codigo = #temp.Codigo)');
                   sql.Add('      ,Codigo');
                   {
                   sql.Add('      ,Descricao = case when substring(#Temp.Beneficiario, 1, 1) = ''C'' then');
                   sql.Add('                             (select Nome from Cybersoft_ABMF_Matriz.dbo.Clientes Cli where Cli.Codigo = rtrim(substring(#Temp.Beneficiario, 2, 15)))');
                   sql.Add('                        when substring(#Temp.Beneficiario, 1, 1) = ''F'' then');
                   sql.Add('                             case when isnumeric(ltrim(rtrim(substring(#Temp.Beneficiario, 2, 15)))) = 1 then');
                   sql.Add('                                  (select Nome from Cybersoft_ABMF_Matriz.dbo.Fornecedores Frn where Frn.Codigo = rtrim(substring(#Temp.Beneficiario, 2, 15)))');
                   sql.Add('                             else');
                   sql.Add('                                  (select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos Org where Org.Codigo = rtrim(substring(#TEmp.Beneficiario, 2, 15)))');
                   sql.Add('                             end');
                   sql.Add('                   end');
                   }
                   sql.Add('      ,Descricao = (select Nome from #tmpDest tmd where tmd.Codigo = rtrim(#Temp.Beneficiario))');
                   sql.Add('	    ,Sintetica = (select Sintetica from PlanoContas PC where PC.Codigo = #temp.Codigo)');
                   sql.Add('	    ,Titulo = cast(0 as bit)');
                   sql.Add('	    ,Natureza  = (select Natureza  from PlanoContas PC where PC.Codigo = #temp.Codigo)');
                   sql.Add('	    ,Atualiza_Anterior = (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Debito  = #Temp.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1) -');
                   sql.Add('	                         (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Credito = #Temp.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1)');
                   sql.Add('      ,DC_Anterior = '''' ');
                   sql.Add('      ,Debito');
                   sql.Add('	    ,Credito');
                   sql.Add('	    ,Saldo_Atual = ((select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Debito  = #Temp.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1) -');
                   sql.Add('                      (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Credito = #Temp.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1)) +');
                   sql.Add('	                   Debito - Credito');
                   sql.Add('      ,DC_Atual = '''' ');
                   sql.Add('      ,Grupo = (select Grupo from PlanoContas PC where PC.Codigo = #temp.Codigo)');
                   sql.Add('      ,Beneficiario');
                   sql.Add('      ,Processo = '''' ');
                   sql.Add('      ,Beneficiario_CNPJ');
                   sql.Add('into #Temp2');
                   sql.Add('from #temp');
                   sql.Add('----[ AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" ]----');
                   sql.Add('update #Temp2 SET DC_Anterior = case when Natureza = ''D'' then');
                   sql.Add('                                     case when Atualiza_Anterior >= 0 then ''D'' else ''C'' end');
                   sql.Add('                                else');
                   sql.Add('                                     case when Atualiza_Anterior <= 0 then ''C'' else ''D'' end');
                   sql.Add('                                end');
                   sql.Add('                 ,DC_Atual = case when Natureza = ''D'' then');
                   sql.Add('                                  case when Saldo_Atual >= 0 then ''D'' else ''C'' end');
                   sql.Add('                             else');
                   sql.Add('                                  case when Saldo_Atual <= 0 then ''C'' else ''D'' end');
                   sql.Add('                             end');
                   sql.Add('                 ,Saldo_Atual = iif(Saldo_Atual < 0, Saldo_Atual *-1, Saldo_Atual)');
                end;
                if (cDetalheProc.ItemIndex <> 2) and (cAnaliticas.State <> tsson)  then begin
                   sql.Add('--------------------------------------------------------------------------[ DETALHAMENTO PROCESSOS ]---------------------------------------------------------------------------');
                   sql.Add('select Codigo  = Lan.Conta_Debito');
                   sql.Add('      ,Debito  = sum(Valor)');
                   sql.Add('      ,Credito = 0');
                   sql.Add('      ,Processo = Processo_Debito');
                   sql.Add('      ,Beneficiario_CNPJ');
                   sql.Add('into  #TempProc');
                   sql.Add('from  Lancamentos Lan');
                   sql.Add('where isnull(Lan.Processo_Debito, '''') <> '''' ');
                   if cDetalheProc.ItemIndex = 0 then begin
                      sql.Add('and   (select Detalha_Processo from PlanoContas PC where PC.Codigo = Lan.Conta_Debito) = 1');
                   end;
                   sql.Add('and Lan.Data between :pDataIni and :pDataFim');
                   sql.Add('group by Lan.Conta_Debito, Lan.Processo_Debito, Lan.Beneficiario_CNPJ');
                   sql.Add('union all');
                   sql.Add('select Codigo  = Lan.Conta_Credito');
                   sql.Add('      ,Debito  = 0');
                   sql.Add('      ,Credito = sum(Valor)');
                   sql.Add('      ,Processo = Processo_Credito');
                   sql.Add('      ,Beneficiario_CNPJ');
                   sql.Add('from   Lancamentos Lan');
                   sql.Add('where  isnull(Lan.Processo_Credito, '''') <> '''' ');
                   if cDetalheBen.ItemIndex = 0 then begin
                      sql.Add('and   (select Detalha_Pessoa from PlanoContas PC where PC.Codigo = Lan.Conta_Credito) = 1');
                   end;
                   sql.Add('and    Lan.Data between :pDataIni and :pDataFim');
                   sql.Add('group by Lan.Conta_Credito, Lan.Processo_Credito, Lan.Beneficiario_CNPJ');
                   sql.Add('select Conta = (select Conta from PlanoContas PC where PC.Codigo = #TempProc.Codigo)');
                   sql.Add('      ,#TempProc.Codigo');
                   sql.Add('      ,Descricao = ''     Processo ''+#TempProc.Processo');
                   sql.Add('	    ,Sintetica = (select Sintetica from PlanoContas PC where PC.Codigo = #TempProc.Codigo)');
                   sql.Add('	    ,Titulo = cast(0 as bit)');
                   sql.Add('	    ,Natureza  = (select Natureza  from PlanoContas PC where PC.Codigo = #TempProc.Codigo)');
                   sql.Add('	    ,Atualiza_Anterior = (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Debito  = #TempProc.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1) -');
                   sql.Add('	                         (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Credito = #TempProc.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1)');
                   sql.Add('      ,DC_Anterior = '''' ');
                   sql.Add('      ,Debito');
                   sql.Add('	    ,Credito');
                   sql.Add('	    ,Saldo_Atual = ((select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Debito  = #TempProc.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1) -');
                   sql.Add('                      (select isnull(sum(valor), 0) from Lancamentos Lan2 where Lan2.Conta_Credito = #TempProc.Codigo and Lan2.Data < :pDataIni and Contabilizar = 1)) +');
                   sql.Add('	                    Debito - Credito');
                   sql.Add('      ,DC_Atual = '''' ');
                   sql.Add('      ,Grupo = (select Grupo from PlanoContas PC where PC.Codigo = #TempProc.Codigo)');
                   sql.Add('      ,Beneficiario= '''' ');
                   sql.Add('      ,#TempProc.Processo');
                   sql.Add('      ,#TempProc.Beneficiario_CNPJ');
                   sql.Add('into #TempProc2');
                   sql.Add('from #tempProc');
                   sql.Add('----[ AJUSTANDO SIMBOLO "DÉBITO" e "CRÉDITO" ]----');
                   sql.Add('update #TempProc2 SET DC_Anterior = case when Natureza = ''D'' then');
                   sql.Add('                                         case when Atualiza_Anterior >= 0 then ''D'' else ''C'' end');
                   sql.Add('                                    else');
                   sql.Add('                                         case when Atualiza_Anterior <= 0 then ''C'' else ''D'' end');
                   sql.Add('                                    end');
                   sql.Add('                     ,DC_Atual = case when Natureza = ''D'' then');
                   sql.Add('                                      case when Saldo_Atual >= 0 then ''D'' else ''C'' end');
                   sql.Add('                                 else');
                   sql.Add('                                      case when Saldo_Atual <= 0 then ''C'' else ''D'' end');
                   sql.Add('                                 end');
                   sql.Add('                     ,Saldo_Atual = iif(Saldo_Atual < 0, Saldo_Atual *-1, Saldo_Atual)');
                   sql.Add('select Conta');
                   sql.Add('      ,Codigo');
                   sql.Add('      ,Descricao');
                   sql.Add('      ,Sintetica');
                   sql.Add('      ,Titulo');
                   sql.Add('      ,Natureza');
                   sql.Add('      ,Saldo_Anterior = Atualiza_Anterior');
                   sql.Add('      ,DC_Anterior');
                   sql.Add('      ,Debito');
                   sql.Add('      ,Credito');
                   sql.Add('      ,Saldo_Atual = iif(Saldo_Atual > 0, Saldo_Atual, Saldo_Atual *-1)');
                   sql.Add('      ,DC_Atual');
                   sql.Add('      ,Grupo = substring(Conta,1,1)');
                   sql.Add('      ,Beneficiario');
                   sql.Add('      ,Processo');
                   sql.Add('      ,Beneficiario_CNPJ');
                   sql.Add('from   #TempProc2');
                   sql.Add('where  Conta is not null');
                   if trim(cBenef.text) <> '' then begin
                      sql.Add('and    Beneficiario_CNPJ = :pCNPJ');
                      ParamByName('pCNPJ').Asstring := tBenef.FieldByName('CNPJ_CPF').AsString;
                   end;
                   sql.Add('union all');
                end;

                if (cDetalheBen.ItemIndex <> 2) and (cAnaliticas.State <> tsson)  then begin
                   sql.Add('select Conta');
                   sql.Add('      ,Codigo');
                   sql.Add('      ,Descricao');
                   sql.Add('      ,Sintetica');
                   sql.Add('      ,Titulo');
                   sql.Add('      ,Natureza');
                   sql.Add('      ,Saldo_Anterior = Atualiza_Anterior');
                   sql.Add('      ,DC_Anterior');
                   sql.Add('      ,Debito');
                   sql.Add('      ,Credito');
                   sql.Add('      ,Saldo_Atual = iif(Saldo_Atual > 0, Saldo_Atual, Saldo_Atual *-1)');
                   sql.Add('      ,DC_Atual');
                   sql.Add('      ,Grupo = substring(Conta,1,1)');
                   sql.Add('      ,Beneficiario');
                   sql.Add('      ,Processo');
                   sql.Add('      ,Beneficiario_CNPJ');
                   sql.Add('from   #Temp2');
                   sql.Add('where  Conta is not null');
                   if trim(cBenef.text) <> '' then begin
                      sql.Add('and    Beneficiario_CNPJ = :pCNPJ');
                      ParamByName('pCNPJ').Asstring := tBenef.FieldByName('CNPJ_CPF').AsString;
                   end;
                   sql.Add('union all');
                end;

                sql.Add('select Conta');
                sql.Add('      ,Codigo');
                sql.Add('      ,Descricao');
                sql.Add('      ,Sintetica');
                sql.Add('      ,Titulo');
                sql.Add('      ,Natureza');
                sql.Add('      ,Saldo_Anterior = Atualiza_Anterior');
                sql.Add('      ,DC_Anterior');
                sql.Add('      ,Debito');
                sql.Add('      ,Credito');
                sql.Add('      ,Saldo_Atual = iif(Saldo_Atual > 0, Saldo_Atual, Saldo_Atual *-1)');
                sql.Add('      ,DC_Atual');
                sql.Add('      ,Grupo = substring(Conta,1,1)');
                sql.Add('      ,Beneficiario');
                sql.Add('      ,Processo');
                sql.Add('      ,Beneficiario_CNPJ');
                sql.Add('from   #PLanoTmp2');
                sql.Add('where  Conta is not null');
                if cAnaliticas.State = tsson then begin
                   sql.Add('and    Sintetica = 1');
                end;
                if cMovimento.state = tsson then begin
                   sql.Add('and    Debito+Credito != 0');
                end;
                if cSaldoZero.state = tsson then begin
                   sql.Add('and    Saldo_Atual != 0');
                end;
                if trim(cBenef.text) <> '' then begin
                   sql.Add('and    Beneficiario_CNPJ = :pCNPJ');
                   ParamByName('pCNPJ').Asstring := tBenef.FieldByName('CNPJ_CPF').AsString;
                end;
                sql.Add('order by Conta, Sintetica desc');
                sql.Add('drop table #PLanoTmp, #PLanoTmp2');
                if (cDetalheBen.ItemIndex < 2) and (cAnaliticas.State <> tsson)  then begin
                   sql.Add('drop table #temp, #Temp2, #tmpDest');
                end;
                if (cDetalheProc.ItemIndex < 2) and (cAnaliticas.State <> tsson)  then begin
                   sql.Add('drop table #tempproc, #TempProc2');
                end;
                ParamByName('pDataIni').AsDate := cDataIni.Date;
                ParamByName('pDataFim').AsDate := cDataFim.Date;
                //sql.SaveToFile('c:\temp\Balancete_Editavel.sql');
                open;
           end;
      end;
      GradeBalancete.EnableScroll;
      Screen.Cursor := crDefault;
end;

procedure TContabilidade_Edicao.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TContabilidade_Edicao.FormClose(Sender: TObject; var Action: TCloseAction);
Var
    aIni: TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate('BALANCETE', 'DataIni' , cDataIni.Date );
      aINI.WriteDate('BALANCETE', 'DataFim' , cDataFim.Date );
      If cConta.KeyValue > 0 then
         aINI.WriteInteger('BALANCETE', 'Conta', cConta.KeyValue)
      else
         aINI.WriteInteger('BALANCETE', 'Conta', 0);
      If cEmpresa.KeyValue > 0 then
         aINI.WriteInteger('BALANCETE', 'Empresa', cEmpresa.KeyValue)
      else
         aINI.WriteInteger('BALANCETE', 'Empresa', 0);
      aINI.WriteBool('BALANCETE', 'SaldoZero', iif(cSaldoZero.State = tsson, 1, 0));
      aINI.WriteBool('BALANCETE', 'Analiticas', iif(cAnaliticas.State = tsson, 1, 0));
      aINI.WriteBool('BALANCETE', 'Movimento', iif(cMovimento.State = tsson, 1, 0));
      aINI.WriteInteger('BALANCETE', 'DetalhaBen', cDetalheBen.ItemIndex );
      aINI.WriteInteger('BALANCETE', 'DetalhaProc', cDetalheProc.ItemIndex );
      aINI.Free;

      Contabilidade_Edicao.Release;
      Contabilidade_Edicao := nil;
end;

procedure TContabilidade_Edicao.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
     tBalancete.FieldByName('Conta').EditMask := Dados.EmpresasMascara_PlanoContas.AsString+';0; ';
end;

procedure TContabilidade_Edicao.FormShow(Sender: TObject);
Var
    aIni : TIniFile;
    mBancoContab:string;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date          := aINI.ReadDate('BALANCETE', 'DataIni', Date);
      cDataFim.Date          := aINI.ReadDate('BALANCETE', 'DataFim', Date);
      cConta.KeyValue        := aINI.ReadInteger('BALANCETE', 'Conta',    -1);
      cEmpresa.KeyValue      := aINI.ReadInteger('BALANCETE', 'Empresa',    -1);
      cSaldoZero.State       := iif(aINI.ReadBool('BALANCETE', 'SaldoZero', false), tsson, tssoff);
      cAnaliticas.state      := iif(aINI.ReadBool('BALANCETE', 'Analiticas', false), tsson, tssoff);
      cMovimento.state       := iif(aINI.ReadBool('BALANCETE', 'Movimento', false), tsson, tssoff);
      cDetalheBen.ItemIndex  := aINI.ReadInteger('BALANCETE', 'DetalhaBen', 0);
      cDetalheProc.ItemIndex := aINI.ReadInteger('BALANCETE', 'DetalhaProc', 0);
      aINI.Free;

      with Dados, dmContab do begin
           with Empresas do begin
                sql.Clear;
                sql.Add('select *');
                sql.add('from   Empresas');
                sql.Add('WHERE Codigo = :pCodigo');
                ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                Open;
                mBancoContab  := FieldByName('Banco_Contabilidade').AsString;
                mBancoEmpresa := FieldByName('Banco_Dados').AsString;

                sql.Clear;
                sql.Add('select *');
                sql.add('from   Empresas Emp');
                sql.Add('where isnull(Emp.Desativada, 0) = 0');
                sql.Add('and isnull((select distinct Empresa from '+mBancoContab+'.dbo.Lancamentos Lan where Lan.Empresa = Emp.CNPJ), '''') <> '''' ');
                sql.Add('order by CNPJ');
                //sql.savetofile('c:\temp\Balancete_Editavel_Empresas.sql');
                Open;
           end;
           with tEmpresas do begin
                SQL.Clear;
                SQL.Add('SELECT Codigo');
                SQL.Add('      ,SUBSTRING(CNPJ,1,2)+''.''+SUBSTRING(CNPJ,3,3)+''.''+SUBSTRING(CNPJ,6,3)+''/''+SUBSTRING(CNPJ,9,4)+''-''+SUBSTRING(CNPJ,13,2) AS CNPJ');
                SQL.Add('      ,Razao_Social');
                SQL.Add('      ,Numero_Filial');
                SQL.Add('      ,Estado');
                SQL.Add('      ,Banco_Dados');
                SQL.Add('FROM   Empresas');
                SQL.Add('WHERE ISNULL(Desativada, 0) = 0');
                SQL.Add('AND (SELECT DISTINCT Empresa FROM '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos WHERE Empresa = CNPJ) <> '''' ');
                SQL.Add('ORDER BY CNPJ');
                //SQL.SaveToFile('c:\temp\Balancete_tEmpresas.sql');
                Open;
           end;

           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Descricao');
           Historicos.Open;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica <> 1) ORDER BY Descricao');
           PlanoContas.Open;

           tContas.SQL.Clear;
           tContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 1) ORDER BY Conta');
           tContas.Open;

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
                //sql.SaveToFile('c:\temp\Balancete_Editavel_Beneficiarios.sql');
                open;
           end;

           with ProcessosDOC do begin
                SQL.Clear;
                SQL.Add('SELECT *');
                SQL.Add('FROM  ProcessosDocumentos');
                SQL.Add('where Processo in(select distinct Processo_Debito  from '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos)');
                SQL.Add('or    Processo in(select distinct Processo_Credito from '+Empresas.FieldByName('Banco_Contabilidade').AsString+'.dbo.Lancamentos)');
                SQL.Add('ORDER BY Processo');
                Open;
           end;
      end;
end;

procedure TContabilidade_Edicao.GradeBalanceteDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin

      With Dados do begin
           If Odd(tBalancete.RecNo) then
              GradeBalancete.Canvas.Brush.Color:= $00F7F7F7
           else
              GradeBalancete.Canvas.Brush.Color:= clWhite;

           If tBalancete.FieldByName('Titulo').AsBoolean then
              GradeBalancete.Canvas.Font.Style := [fsBold]
           else
              GradeBalancete.Canvas.Font.Style := [];
{
           If (tBalancete.FieldByName('DC_Atual').AsString <> tBalancete.FieldByName('Natureza').AsString) AND (tBalancete.FieldByName('Natureza').AsString <> 'I') then
              GradeBalancete.Canvas.Font.Color := clRed
           else
              GradeBalancete.Canvas.Font.Color := clBlack;
}
           If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := clBlack;
              Font.Color  := clYellow;
              FillRect(Rect);
           End;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      End;
end;

procedure TContabilidade_Edicao.tBalanceteAfterScroll(DataSet: TDataSet);
begin
      Screen.Cursor := crSQLWait;

      with tLancamentos do begin
           sql.clear;
           sql.add('select Data');
           sql.add('      ,Numero');
           sql.add('      ,Lote');
           sql.add('      ,Conta_Debito');
           sql.add('      ,Conta_Credito');
           sql.add('      ,Historico_Codigo');
           sql.add('      ,ltrim(rtrim(isnull((select isnull(Descricao, '''') from HistoricoPadrao where(Codigo = Lancamentos.Historico_Codigo)),''''))) + '' ''+isnull(cast(Historico_Complemento as varchar(100)), '''') collate SQL_Latin1_General_CP1_CI_AS as Historico_Descricao');
           sql.add('      ,Valor');
           sql.add('      ,D_C = CASE WHEN Conta_Debito = :pConta THEN ''D'' ELSE ''C'' END');
           sql.add('	    ,Saldo = CAST(0 AS money)');
           sql.add('	    ,Beneficiario');
           sql.add('	    ,Processo_Debito');
           sql.add('	    ,Processo_Credito');
           sql.add('into  #temp');
           sql.add('from  Lancamentos');
           sql.add('where (Data between :pDataIni AND :pDataFim)');
           sql.add('  and (Conta_Debito = :pConta OR Conta_Credito = :pConta)');
           if Trim(cEmpresa.DisplayValue) <> '' then begin
              sql.Add('  and  Empresa = :pEmpresa');
              ParamByName('pEmpresa').Asstring := Dados.EmpresasCNPJ.asstring;
           end;
           if Trim(cProcesso.DisplayValue) <> '' then begin
              sql.Add('  and  (Processo_Debito = :pProc or Processo_Credito = :pProc)');
              ParamByName('pProc').Asstring := cProcesso.Text;
           end;
           if trim(cPesquisaLan.Text) <> '' then begin
              sql.Add('  and  Historico_Complemento like '+QuotedStr('%'+cPesquisaLan.Text+'%'));
           end;
           sql.add('order by Data, Lote, Numero');
           sql.add('select Linha = row_number() over(order by Data, Numero asc),');
           sql.add('       *');
           sql.add('into #temp2');
           sql.add('from #temp');
           sql.add('order by Linha');
           sql.add('update #temp2 set Saldo = :pSaldo + isnull((select sum(case when D_C = ''d'' then valor *-1 else valor end) from #temp2 as tp2 where tp2.linha <= #temp2.linha), 0)');
           sql.add('select * from #temp2 order by Data, Lote, Numero');
           sql.add('drop table #temp, #temp2');
           ParamByName('pConta').AsString := tBalancete.FieldByName('Codigo').AsString;
           ParamByName('pDataIni').AsDate := cDataIni.Date;
           ParamByName('pDataFim').AsDate := cDataFim.Date;
           ParamByName('pSaldo').Value    := tBalancete.FieldByName('Saldo_Anterior').Value;
           //sql.SaveToFile('c:\temp\Balancete_Editavel_Razao.sql');
           Open;
      end;
      Screen.Cursor := crDefault;
end;

procedure TContabilidade_Edicao.GradeRazaoDblClick(Sender: TObject);
begin
      Contabilidade_Lancamentos := TContabilidade_Lancamentos.Create(Self);
      with Contabilidade_Lancamentos, dmContab do begin
           mPesquisaData   := tlancamentos.FieldByName('Data').value;
           mPesquisaLote   := tlancamentos.FieldByName('Lote').asinteger;
           mPesquisaNumero := tlancamentos.FieldByName('Numero').asinteger;
           mEdicao         := true;
           ShowModal;
      end;
      Dados.Empresas.Open;
end;

procedure TContabilidade_Edicao.SpeedButton1Click(Sender: TObject);
begin
     cBenef.KeyValue := 0;
end;

procedure TContabilidade_Edicao.SpeedButton2Click(Sender: TObject);
begin
     cProcesso.KeyValue := 0;
end;

procedure TContabilidade_Edicao.bLimparEmpresaClick(Sender: TObject);
begin
     cEmpresa.KeyValue := 0;
end;

procedure TContabilidade_Edicao.bLimpaGrupoClick(Sender: TObject);
begin
     cConta.KeyValue := 0;
end;

procedure TContabilidade_Edicao.bFiltroClick(Sender: TObject);
begin
      GradeBalancete.ScrollDisabled;
      tBalancete.Filter := 'upper(Descricao) like '+QuotedStr('%'+uppercase(cPesquisa.Text)+'%');
      tBalancete.Filtered := true;
      GradeBalancete.EnableScroll;
end;

procedure TContabilidade_Edicao.bLimparClick(Sender: TObject);
begin
     cPesquisa.Clear;
     tBalanceteAfterScroll(tBalancete);
end;

procedure TContabilidade_Edicao.BitBtn1Click(Sender: TObject);
begin
     tBalanceteAfterScroll(tBalancete);
end;

procedure TContabilidade_Edicao.BitBtn2Click(Sender: TObject);
begin
      cPesquisaLan.Clear;
      tBalanceteAfterScroll(tBalancete);
end;

end.
