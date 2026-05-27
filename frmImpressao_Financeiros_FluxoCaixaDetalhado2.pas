unit frmImpressao_Financeiros_FluxoCaixaDetalhado2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppParameter, ppCtrls, ppBands, ppVar,
  ppReport, ppDBPipe, DBAccess, MSAccess, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls, IniFiles, Funcoes, ComObj, RxToolEdit, ppDesignLayer, ppPrnabl, ppClass, ppCache, ppProd, ppDB, 
  ppComm, ppRelatv, MemDS, Vcl.Grids, Vcl.DBGrids, ppModule, raCodMod, ppStrtch, ppSubRpt, Vcl.DBCtrls, RxLookup, uniGUIBaseClasses, uniGUIClasses, uniSpinEdit, Vcl.Samples.Spin;

type
  TImpressao_Financeiros_FluxoCaixaDetalhado2 = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    tFluxo: TMSQuery;
    pFluxo: TppDBPipeline;
    rFluxo: TppReport;
    ppParameterList1: TppParameterList;
    dstFluxo: TDataSource;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    gBancos: TDBGrid;
    tBancos: TMSQuery;
    dstBancos: TMSDataSource;
    tBancosCodigo: TSmallintField;
    tBancosNome: TStringField;
    tBancosAgencia: TStringField;
    tBancosConta: TStringField;
    tBancosSaldo: TCurrencyField;
    tBancosData_Saldo: TDateTimeField;
    tFluxoData: TDateTimeField;
    tFluxoForma_Tipo: TStringField;
    tFluxoNumero_Doc: TStringField;
    tFluxoBeneficiario: TStringField;
    tFluxoDebito: TCurrencyField;
    tFluxoCredito: TCurrencyField;
    qrySInit: TMSQuery;
    pSInit: TppDBPipeline;
    dsSInit: TDataSource;
    tBancosSaldos: TMSQuery;
    dstBancosSaldos: TDataSource;
    pBancosSaldos: TppDBPipeline;
    tBancosSel: TBooleanField;
    pEmpresas: TppDBPipeline;
    cSaldo: TCheckBox;
    rFluxoSint: TppReport;
    ppParameterList2: TppParameterList;
    cSint: TCheckBox;
    gCCusto: TDBGrid;
    tCCusto: TMSQuery;
    BooleanField1: TBooleanField;
    dstCCusto: TMSDataSource;
    tCCustoCodigo: TStringField;
    tCCustoDescricao: TStringField;
    tFluxoProcesso: TStringField;
    ppHeaderBand2: TppHeaderBand;
    ppDBText4: TppDBText;
    lTituloSint: TppLabel;
    lPeriodoSint: TppLabel;
    iLogoSint: TppImage;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    SaldoSint: TppVariable;
    ppDBText7: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel21: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine3: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppLabel22: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine11: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine12: TppLine;
    TotalizaBancosSint: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    lSaldoBancosSint: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc6: TppDBCalc;
    ppLine13: TppLine;
    ppLabel28: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    lTotalSaldoSint: TppVariable;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel29: TppLabel;
    InicialSalSint: TppVariable;
    ppLine14: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    raCodeModule2: TraCodeModule;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDBText8: TppDBText;
    lTitulo: TppLabel;
    lPeriodo: TppLabel;
    iLogo: TppImage;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    Debito: TppDBText;
    Credito: TppDBText;
    Data: TppDBText;
    Numero_Doc: TppDBText;
    Beneficiario: TppDBText;
    SaldoItem: TppVariable;
    ppDBText10: TppDBText;
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
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    TotalizaBancos: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    labBanco: TppLabel;
    labSaldoAtual: TppLabel;
    ppLabel6: TppLabel;
    lSaldoBancos: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppLine4: TppLine;
    ppLabel4: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    lTotalSaldo: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    InicialSal: TppVariable;
    ppLine5: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    cExcel: TCheckBox;
    cDataRef: TRadioGroup;
    StaticText3: TStaticText;
    cDias: TSpinEdit;
    cConsol: TCheckBox;
    tEmpresas: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lTotalSaldoCalc(Sender: TObject; var Value: Variant);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure gBancosDblClick(Sender: TObject);
    procedure gBancosTitleClick(Column: TColumn);
    procedure lTotalSaldoSintCalc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure gCCustoTitleClick(Column: TColumn);
    procedure gCCustoDblClick(Sender: TObject);
    procedure SaldoItemCalc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand1AfterGenerate(Sender: TObject);
    procedure cConsolClick(Sender: TObject);
  private
    mBancos
   ,mCCusto 
   ,mCompBancos:string;
    mSel, mselCC: boolean;
    function PegaBancos: string;
    function PegaCCusto: string;
    procedure ExportaEXCEL;
    procedure SaldoIni;
    procedure FiltraBancos;
    procedure FiltraCentroCustos;
  public
    { Public declarations }
    mSaldoExcel
   ,mSaldoIniExcel: real;
  end;

var
  Impressao_Financeiros_FluxoCaixaDetalhado2: TImpressao_Financeiros_FluxoCaixaDetalhado2;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento, DateUtils;

{$R *.dfm}

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.cConsolClick(Sender: TObject);
begin
     FiltraBancos;
     FiltraCentroCustos;
     with tBancos do begin
          DisableControls;
          first;
          while not eof do begin
                edit;
                   fieldbyname('Sel').value := false;
                post;
                next;
          end;
          EnableControls;
     end;
     with tCCusto do begin
          DisableControls;
          first;
          while not eof do begin
                edit;
                   fieldbyname('Sel').value := false;
                post;
                next;
          end;
          EnableControls;
     end;
     mSel   := false;
     mSelCC := false;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.gCCustoDblClick(Sender: TObject);
begin
      with tCCusto do begin
           Edit;
               FieldByName('Sel').AsBoolean := not FieldByName('Sel').AsBoolean;
           Post;
      end;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.gCCustoTitleClick(Column: TColumn);
begin
     if Column.FieldName = 'Sel' then begin
        with tCCusto do begin
             mselcc := not mSelcc;
             DisableControls;
             First;
             while not Eof do begin
                   Edit;
                      fieldbyname('Sel').value := mselcc;
                   Post;
                   Next;
             end;
             EnableControls;
        end;
     end;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI:TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteDate   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'DataIni'   , cDataIni.Date);
      aINI.WriteDate   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'DataFim'   , cDataFim.Date);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'Excel'     , cExcel.Checked);
      aINI.WriteBool   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'Consolidar', cConsol.Checked);
      aINI.WriteInteger('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'DataRef'   , cDataRef.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'Dias'      , cDias.value);
      aINI.Free;

      FecharTabelas(Dados, nil, nil, nil);
      Impressao_Financeiros_FluxoCaixaDetalhado2.Release;
      Impressao_Financeiros_FluxoCaixaDetalhado2 := nil;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.bImprimirClick(Sender: TObject);
var
   mSQLMatriz
  ,mSQLFilial: Widestring;
begin
     mBancos := PegaBancos;
     mCCusto := PegaCCusto;
     if mBancos = '' then begin
        messagedlg('Nenhum banco selecionado!', mtInformation, [mbok], 0);
        abort;
     end;

     Screen.Cursor := crSQLWait;
     {
     with tFluxo do begin
          sql.clear;
          sql.add('-- ABERTOS');
          sql.add('select Data = case when Tipo = ''R'' then ');
          sql.add('                   iif(:pData = 0, pr.Data_Vencimento + :pDias, pr.Data_Previsao + :pDias)');
          sql.add('              else');
          sql.add('                   iif(:pData = 0, pr.Data_Vencimento, pr.Data_Previsao)');
          sql.add('              end');
          sql.add('      ,pr.Forma_Tipo');
          sql.add('      ,Numero_Doc = pr.Numero_Documento');
          sql.add('      ,Beneficiario = case pr.Tipo');
          sql.add('                           when ''R'' then (select Nome from Clientes cl where cl.Codigo = pr.Cliente)');
          sql.add('                           when ''P'' then ');
          sql.add('                                case when isnull(Fornecedor, 0) <> 0 then (select Nome from Fornecedores fr where fr.Codigo = pr.Fornecedor)');
          sql.add('                                     when isnull(Fornecedor, 0)  = 0 then (select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos op where op.Codigo = pr.Orgao)');
          sql.add('                                end');
          sql.add('                      end');
          sql.add('      ,Debito  = iif(pr.Tipo = ''P'', cast(pr.Valor_Total as decimal(18,2)), 0)');
          sql.add('      ,Credito = iif(pr.Tipo = ''R'', cast(pr.Valor_Total as decimal(18,2)), 0)');
          sql.add('      ,pr.Numero');
          sql.add('      ,pr.Processo');
          sql.add('      ,pr.Tipo');
          sql.add('from PagarReceber pr');
          sql.Add('where iif(:pData = 0, Data_Vencimento, pr.Data_Previsao) between :pDataIni AND :pDataFim');
          sql.add('and isnull(Adiantamento_Numero, 0) = 0');
          sql.add('and isnull(pr.Banco, 0) = 0');
          if mCCusto <> '' then begin
             sql.Add('and isnull(pr.Centro_Custo, '''') in('+mCCusto+')');
          end;
          sql.add('union all');
          sql.add('-- BAIXADOS');
          sql.add('select Data');
          sql.add('      ,Forma_Tipo = (select pr.Forma_Tipo from PagarReceber pr where pr.Numero = prb.Numero)');
          sql.add('      ,Numero_Doc = (select pr.Numero_Documento from PagarReceber pr where pr.Numero = prb.Numero)');
          sql.add('      ,Beneficiario = case prb.Tipo');
          sql.add('                           when ''R'' then (select Nome from Clientes cl where cl.Codigo = (select pr.Cliente from PagarReceber pr where pr.Numero = prb.Numero))');
          sql.add('                           when ''P'' then ');
          sql.add('                                case when (select isnull(pr.Fornecedor, 0) from PagarReceber pr where pr.Numero = prb.Numero) <> 0 then ');
          sql.add('                                     (select Nome from Fornecedores fr where fr.Codigo = (select pr.Fornecedor from PagarReceber pr where pr.Numero = prb.Numero))');
          sql.add('                                else');
          sql.add('                                     (select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos org where org.Codigo = (select pr.orgao from PagarReceber pr where pr.Numero = prb.Numero))');
          sql.add('                                end');
          sql.add('                      end');
          sql.add('      ,Debito  = iif(prb.Tipo = ''P'', cast(prb.Valor as decimal(18,2)), 0)');
          sql.add('      ,Credito = iif(prb.Tipo = ''R'', cast(prb.Valor as decimal(18,2)), 0)');
          sql.add('      ,prb.Numero');
          sql.add('      ,Processo = (select pr.Processo from PagarReceber pr where pr.Numero = prb.Numero)');
          sql.add('      ,prb.Tipo');
          sql.add('from PagarReceberBaixas prb');
          sql.Add('where Data between :pDataIni AND :pDataFim');
          if mBancos <> '' then begin
             sql.Add('and isnull(prb.Banco, 0) in('+mBancos+')');
          end;
          if mCCusto <> '' then begin
             sql.Add('and (select isnull(pr.Centro_Custo, '''') from PagarReceber pr where pr.Numero = prb.Numero) in('+mCCusto+')');
          end;
          sql.Add('order by Data, Tipo desc, Numero_Doc');
          parambyname('pDataIni').AsDate := cDataIni.Date;
          parambyname('pDataFim').AsDate := cDataFim.Date;
          parambyname('pData').value     := cDataRef.ItemIndex;
          parambyname('pDias').value     := cDias.Value;
          //sql.SaveToFile('c:\temp\Fluxo_Caixa_Itens.sql');
          open;
     end;
     }
     
     //==================================================================[ CONSOLIDADNDO ]=====================================================================
     with Dados, tFluxo do begin
          sql.clear;
          sql.add('-- ABERTOS');
          sql.add('select Data = case when Tipo = ''R'' then ');
          sql.add('                   iif(:pData = 0, pr.Data_Vencimento + :pDias, pr.Data_Previsao + :pDias)');
          sql.add('              else');
          sql.add('                   iif(:pData = 0, pr.Data_Vencimento, pr.Data_Previsao)');
          sql.add('              end');
          sql.add('      ,pr.Forma_Tipo');
          sql.add('      ,Numero_Doc = pr.Numero_Documento');
          sql.add('      ,Beneficiario = case pr.Tipo');
          sql.add('                           when ''R'' then (select Nome from Clientes cl where cl.Codigo = pr.Cliente)');
          sql.add('                           when ''P'' then ');
          sql.add('                                case when isnull(Fornecedor, 0) <> 0 then (select Nome from Fornecedores fr where fr.Codigo = pr.Fornecedor)');
          sql.add('                                     when isnull(Fornecedor, 0)  = 0 then (select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos op where op.Codigo = pr.Orgao)');
          sql.add('                                end');
          sql.add('                      end');
          sql.add('      ,Debito  = iif(pr.Tipo = ''P'', cast(pr.Valor_Total as decimal(18,2)), 0)');
          sql.add('      ,Credito = iif(pr.Tipo = ''R'', cast(pr.Valor_Total as decimal(18,2)), 0)');
          sql.add('      ,pr.Numero');
          sql.add('      ,pr.Processo');
          sql.add('      ,pr.Tipo');
          sql.add('from PagarReceber pr');
          sql.Add('where iif(:pData = 0, Data_Vencimento, pr.Data_Previsao) between :pDataIni AND :pDataFim');
          sql.add('and isnull(Adiantamento_Numero, 0) = 0');
          sql.add('and isnull(pr.Banco, 0) = 0');
          if mCCusto <> '' then begin
             sql.Add('and isnull(pr.Centro_Custo, '''') in('+mCCusto+')');
          end;
          sql.add('union all');
          sql.add('-- BAIXADOS');
          sql.add('select Data');
          sql.add('      ,Forma_Tipo = (select pr.Forma_Tipo from PagarReceber pr where pr.Numero = prb.Numero)');
          sql.add('      ,Numero_Doc = (select pr.Numero_Documento from PagarReceber pr where pr.Numero = prb.Numero)');
          sql.add('      ,Beneficiario = case prb.Tipo');
          sql.add('                           when ''R'' then (select Nome from Clientes cl where cl.Codigo = (select pr.Cliente from PagarReceber pr where pr.Numero = prb.Numero))');
          sql.add('                           when ''P'' then ');
          sql.add('                                case when (select isnull(pr.Fornecedor, 0) from PagarReceber pr where pr.Numero = prb.Numero) <> 0 then ');
          sql.add('                                     (select Nome from Fornecedores fr where fr.Codigo = (select pr.Fornecedor from PagarReceber pr where pr.Numero = prb.Numero))');
          sql.add('                                else');
          sql.add('                                     (select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos org where org.Codigo = (select pr.orgao from PagarReceber pr where pr.Numero = prb.Numero))');
          sql.add('                                end');
          sql.add('                      end');
          sql.add('      ,Debito  = iif(prb.Tipo = ''P'', cast(prb.Valor as decimal(18,2)), 0)');
          sql.add('      ,Credito = iif(prb.Tipo = ''R'', cast(prb.Valor as decimal(18,2)), 0)');
          sql.add('      ,prb.Numero');
          sql.add('      ,Processo = (select pr.Processo from PagarReceber pr where pr.Numero = prb.Numero)');
          sql.add('      ,prb.Tipo');
          sql.add('from PagarReceberBaixas prb');
          sql.Add('where Data between :pDataIni AND :pDataFim');
          if mBancos <> '' then begin
             sql.Add('and isnull(prb.Banco, 0) in('+mBancos+')');
             sql.Add('and (select Rel_Fluxo_Caixa from '+mCompBancos+' where Codigo = prb.Banco) = 1');
          end;
          if mCCusto <> '' then begin
             sql.Add('and (select isnull(pr.Centro_Custo, '''') from PagarReceber pr where pr.Numero = prb.Numero) in('+mCCusto+')');
          end;

          // Outras Empresas.
          if cConsol.Checked then begin
             with tEmpresas do begin
                  sql.clear;
                  sql.add('select Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
                  sql.add('from Empresas where Codigo <> :pEmpresa and Consolidar = 1 and substring(CNPJ, 1, 8) = :pCNPJ order by Numero_Filial');
                  parambyName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                  parambyName('pCNPJ').AsString     := Copy(Dados.Empresas.fieldbyname('CNPJ').asstring, 1, 8);
                  open;
             end;

             mSQLMatriz := sql.Text;

             tEmpresas.First;
             while not tEmpresas.eof do begin
                   if Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                      mSQLFilial := RemoveCaracter('use '+ EmpresasBanco_Dados.AsString, '', mSQLMatriz );
                      mSQLFilial := RemoveCaracter('CentroCusto'            , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.CentroCusto'           , mSQLFilial);
                      mSQLFilial := RemoveCaracter('Clientes cl'            , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Clientes cl'           , mSQLFilial);
                      mSQLFilial := RemoveCaracter('Fornecedores fr'        , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Fornecedores fr'       , mSQLFilial);
                      mSQLFilial := RemoveCaracter('PagarReceberBaixas prb' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceberBaixas prb', mSQLFilial);
                      mSQLFilial := RemoveCaracter('PagarReceber pr'        , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber pr'       , mSQLFilial);
                      if not ConfiguracaoCompartilhar_Bancos.AsBoolean then begin
                         mSQLFilial := RemoveCaracter('from Bancos ', 'from '+tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Bancos ', mSQLFilial);
                      end;
                      mSQLFilial := RemoveCaracter(':pEmpresa'              , tEmpresas.FieldByName('Codigo').AsString, mSQLFilial);
                      sql.add('union all');
                      sql.add(mSQLFilial);
                   end;
                   tEmpresas.Next;
             end;
          end;
          sql.Add('order by Data, Tipo desc, Numero_Doc');
          parambyname('pDataIni').AsDate := cDataIni.Date;
          parambyname('pDataFim').AsDate := cDataFim.Date;
          parambyname('pData').value     := cDataRef.ItemIndex;
          parambyname('pDias').value     := cDias.Value;
          //sql.SaveToFile('c:\temp\Fluxo_Caixa_Itens.sql');
          open;
          //============================================================================================================================================================================
     end;
     
     // Saldos dos bancos.
     with Dados, tBancosSaldos do begin
          sql.clear;
          if ConfiguracaoCompartilhar_Bancos.AsBoolean then begin
             sql.Add('select ban.Conta');
             sql.Add('      ,Nome  = upper(ban.Nome)');
             sql.Add('      ,Saldo = isnull(ban.Saldo, 0) + isnull((select sum(round(iif(prb.Tipo = ''R'', prb.Valor, prb.Valor *-1), 2)) from PagarReceberBaixas prb where prb.Banco = ban.Codigo and prb.Data <= :pData), 0)');
             sql.Add('from '+mCompBancos+' ban');
             sql.Add('where isnull(ban.Codigo, 0) in(0,'+mBancos+')');
          end else begin
             // Outras Empresas.
             sql.Add('select ban.Conta');
             sql.Add('      ,Nome  = upper(ban.Nome)');
             sql.Add('      ,Saldo = isnull(ban.Saldo, 0) + isnull((select sum(round(iif(prb.Tipo = ''R'', prb.Valor, prb.Valor *-1), 2)) from PagarReceberBaixas prb where prb.Banco = ban.Codigo and prb.Data <= :pData), 0)');
             sql.Add('from Bancos ban');
             sql.Add('where isnull(ban.Codigo, 0) in(0,'+mBancos+')');
             if cConsol.Checked then begin
                mSQLMatriz := sql.Text;
                tEmpresas.First;
                while not tEmpresas.eof do begin
                      if Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                         mSQLFilial := RemoveCaracter('use '+ EmpresasBanco_Dados.AsString, '', mSQLMatriz );
                         mSQLFilial := RemoveCaracter('Bancos ban', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Bancos ban', mSQLFilial);
                         sql.add('union');
                         sql.add(mSQLFilial);
                      end;
                      tEmpresas.Next;
                end;
             end;
          end;
          parambyname('pData').value := cDataIni.Date;
          //sql.SaveToFile('c:\temp\Fluxo_Caixa_Saldos_Bancos.sql');
          open;
     end;
     
     Screen.Cursor := crDefault;
     
     lPeriodo.Caption         := '| Período ' + cDataIni.Text + ' à ' + cDataFim.Text+ ' | '+cDataRef.Items[cDataRef.ItemIndex]+' |';
     lPeriodoSint.Caption     := '| Período ' + cDataIni.Text + ' à ' + cDataFim.Text+ ' | '+cDataRef.Items[cDataRef.ItemIndex]+' |';
     lSaldoBancos.Caption     := 'SALDO EM '+cDataFim.Text;
     lSaldoBancosSint.Caption := 'SALDO EM '+cDataFim.Text;
     if fileExists(Dados.EmpresasLogo.Value) then begin 
        iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        iLogosint.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
     end;
     
     TotalizaBancos.Visible     := cSaldo.Checked;
     TotalizaBancosSint.Visible := cSaldo.Checked;
     if not cExcel.Checked then begin
        if not cSint.Checked then begin
           with rFluxo do begin
                DeviceType            := 'Screen';
                AllowPrintToArchive   := false;
                AllowPrintToFile      := false;
                ppDetailBand1.Background2.Brush.Style := bsSolid;
                ShowPrintDialog       := true;
                DefaultFileDeviceType := 'PDF';
                Print;
                Reset;
           end;
        end else begin
           rFluxoSint.Print;
           rFluxoSint.Reset;
        end 
     end  else begin
        if not cSint.Checked then begin
           SaldoIni;
           ExportaEXCEL;
        end else begin
           rFluxoSint.Print;
           rFluxoSint.Reset;
        end;
     end
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.FormShow(Sender: TObject);
var
  aINI: TIniFile;
begin
     // Carregando as ultimas opções utilizadas no relatório como default.
     Dados.Configuracao.Open;
     mCompBancos := iif(Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean, 'Cybersoft_Cadastros.dbo.Bancos', 'Bancos');
          
     aINI               := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cDataIni.Date      := aINI.ReadDate   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'DataIni'   , Date);
     cDataFim.Date      := aINI.ReadDate   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'DataFim'   , Date);
     cExcel.Checked     := aINI.ReadBool   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'Excel'     , false);
     cConsol.Checked    := aINI.ReadBool   ('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'Consolidar', false);
     cDataRef.ItemIndex := aINI.ReadInteger('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'DataRef'   , 0);
     cDias.value        := aINI.ReadInteger('IMPRESSAO_FINANCEIRO_FLUXOCAIXADET', 'Dias'      , 0);
     aINI.Free;

     mSel   := false;
     mSelcc := false;
     with Dados do begin
          with Empresas do begin 
               sql.clear;
               sql.add('select * from Empresas where Codigo = :pEmpresa');
               parambyname('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
               open;
          end;
          {
          with tCCusto do begin
               sql.Clear;
               sql.Add('select Codigo');
               sql.add('      ,Descricao');
               sql.Add('      ,Sel = cast(0 as bit)');
               sql.Add('from CentroCusto');
               sql.Add('order by Descricao');
               open;
          end;
          }
     end;

     FiltraBancos;
     FiltraCentroCustos;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.gBancosDblClick(Sender: TObject);
begin
      with tBancos do begin
           Edit;
               FieldByName('Sel').AsBoolean := not FieldByName('Sel').AsBoolean;
           Post;
      end;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.gBancosTitleClick(Column: TColumn);
begin
     if Column.FieldName = 'Sel' then begin
        with tBancos do begin
             msel := not mSel;
             DisableControls;
             First;
             while not Eof do begin
                   Edit;
                      fieldbyname('Sel').value := msel;
                   Post;
                   Next;
             end;
             EnableControls;
        end;
     end;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.lTotalSaldoCalc(Sender: TObject; var Value: Variant);
begin
     Value := SaldoItem.Value;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.lTotalSaldoSintCalc(Sender: TObject; var Value: Variant);
begin
     Value := SaldoSint.Value;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.ppDetailBand1AfterGenerate(Sender: TObject);
begin
     SaldoItem.Font.Color := iif(SaldoItem.Value < 0, clRed, clBlack);
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.ppDetailBand3BeforePrint(Sender: TObject);
begin
     SaldoSint.Value := SaldoSint.Value + tFluxo.FieldByName('Credito').AsCurrency - tFluxo.FieldByName('Debito').AsCurrency;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
     SaldoIni;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.SaldoIni;
var
  mSQLMatriz: string;
  mSQLFilial: string;
begin
     if mBancos <> '' then begin
        {
        with qrysinit do begin
             sql.Clear;
             sql.add('select SaldoIni = (select isnull(sum(Saldo), 0) from '+mCompBancos+' where Codigo in('+mBancos+')) +');
             if mCCusto = '' then begin
                sql.add('                  (select isnull(sum(round(iif(Tipo = ''R'', Valor, Valor*-1), 2)), 0) from PagarReceberBaixas where Data < :pData and Banco in('+mBancos+'))');
             end else begin
                sql.add('                  (select isnull(sum(round(iif(Tipo = ''R'', Valor, Valor*-1), 2)), 0) from PagarReceberBaixas where Data < :pData and Banco in('+mBancos+')');
                sql.add('                   and (select Centro_Custo from PagarReceber pr where pr.Numero = PagarReceberBaixas.Numero) in('+mCCusto+'))');
             end;
             ParamByName('pData').AsDate := cDataIni.Date;
             //sql.SaveToFile('c:\temp\Fluxo_Saldo_Inicial.sql');
             open;
             InicialSal.value := fieldbyname('SaldoIni').AsCurrency;
             SaldoItem.Value  := fieldbyname('SaldoIni').AsCurrency + tFluxo.FieldByName('Credito').AsCurrency - tFluxo.FieldByName('Debito').AsCurrency;
             mSaldoIniExcel   := fieldbyname('SaldoIni').AsCurrency;
             mSaldoExcel      := fieldbyname('SaldoIni').AsCurrency;
        end;
        }

        with Dados, qrysinit do begin
             if not cConsol.Checked then begin
                sql.Clear;
                sql.add('select SaldoIni = (select isnull(sum(Saldo), 0) from '+mCompBancos+' where Codigo in('+mBancos+') and Rel_Fluxo_Caixa = 1) +');
                if mCCusto = '' then begin
                   sql.add('                  (select isnull(sum(round(iif(Tipo = ''R'', Valor, Valor*-1), 2)), 0) from PagarReceberBaixas where Data < :pData and Banco in('+mBancos+') and (select Rel_Fluxo_Caixa from '+mCompBancos+' Bancos where Codigo = Banco) = 1)');
                end else begin
                   sql.add('                  (select isnull(sum(round(iif(Tipo = ''R'', Valor, Valor*-1), 2)), 0) from PagarReceberBaixas where Data < :pData and Banco in('+mBancos+') and (select Rel_Fluxo_Caixa from '+mCompBancos+' where Codigo = Banco) = 1');
                   sql.add('                   and (select Centro_Custo from PagarReceber pr where pr.Numero = PagarReceberBaixas.Numero) in('+mCCusto+'))');
                end;
             end else begin
                sql.Clear;
                sql.add('select SaldoIni = (select isnull(sum(Saldo), 0) from '+mCompBancos+' where Codigo in('+mBancos+') and Rel_Fluxo_Caixa = 1) +');
                if mCCusto = '' then begin
                   sql.add('                  (select isnull(sum(round(iif(Tipo = ''R'', Valor, Valor*-1), 2)), 0) from PagarReceberBaixas where Data < :pData and Banco in('+mBancos+') and (select Rel_Fluxo_Caixa from '+mCompBancos+' where Codigo = Banco) = 1) +');
                end else begin
                   sql.add('                  (select isnull(sum(round(iif(Tipo = ''R'', Valor, Valor*-1), 2)), 0) from PagarReceberBaixas where Data < :pData and Banco in('+mBancos+') and (select Rel_Fluxo_Caixa from '+mCompBancos+' where Codigo = Banco) = 1');
                   sql.add('                   and (select Centro_Custo from PagarReceber pr where pr.Numero = PagarReceberBaixas.Numero) in('+mCCusto+')) +');
                end;
                mSQLMatriz := sql.Text;
                tEmpresas.First;
                while not tEmpresas.eof do begin
                      if Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                         mSQLFilial := RemoveCaracter('select SaldoIni = ' , '', mSQLMatriz);
                         mSQLFilial := RemoveCaracter('PagarReceberBaixas ', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceberBaixas ', mSQLFilial);
                         mSQLFilial := RemoveCaracter('PagarReceber '      , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber '      , mSQLFilial);
                         if not ConfiguracaoCompartilhar_Bancos.AsBoolean then begin
                            mSQLFilial := RemoveCaracter('Bancos ', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Bancos ', mSQLFilial);
                         end;
                         sql.add(mSQLFilial);
                      end;
                      tEmpresas.Next;
                end;
                sql.text := copy(trim(sql.text), 1, length(trim(sql.text))-1);
             end;
             ParamByName('pData').AsDate := cDataIni.Date;
             //sql.SaveToFile('c:\temp\Fluxo_Saldo_Inicial.sql');
             open;
             
             InicialSal.value := fieldbyname('SaldoIni').AsCurrency;
             SaldoItem.Value  := fieldbyname('SaldoIni').AsCurrency + tFluxo.FieldByName('Credito').AsCurrency - tFluxo.FieldByName('Debito').AsCurrency;
             mSaldoIniExcel   := fieldbyname('SaldoIni').AsCurrency;
             mSaldoExcel      := fieldbyname('SaldoIni').AsCurrency;
        end;
     end;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
     if mBancos <> '' then begin
        with qrysinit do begin
             sql.Clear;
             sql.add('select SaldoIni = (select isnull(sum(Saldo), 0) from '+mCompBancos+' where Codigo in('+mBancos+')) +');
             if mCCusto = '' then begin
                sql.add('                  (select isnull(sum(round(iif(Tipo = ''R'', Valor, Valor*-1), 2)), 0) from PagarReceberBaixas where Data < :pData and Banco in('+mBancos+'))');
             end else begin
                sql.add('                  (select isnull(sum(round(iif(Tipo = ''R'', Valor, Valor*-1), 2)), 0) from PagarReceberBaixas where Data < :pData and Banco in('+mBancos+')');
                sql.add('                   and (select Centro_Custo from PagarReceber pr where pr.Numero = PagarReceberBaixas.Numero) in('+mCCusto+'))');
             end;
             ParamByName('pData').AsDate := cDataIni.Date;
             //sql.SaveToFile('c:\temp\Fluxo_Saldo_Inicial.sql');
             open;
             InicialSalSint.value := fieldbyname('SaldoIni').AsCurrency;
             SaldoSint.Value      := fieldbyname('SaldoIni').AsCurrency;
        end;
     end;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.SaldoItemCalc(Sender: TObject; var Value: Variant);
begin
     SaldoItem.Value := SaldoItem.Value + tFluxo.FieldByName('Credito').AsCurrency - tFluxo.FieldByName('Debito').AsCurrency;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

function TImpressao_Financeiros_FluxoCaixaDetalhado2.PegaBancos: string;
begin
     with tBancos do begin
          DisableControls;
          Result := '';
          first;
          while not Eof do begin
                if fieldbyname('Sel').AsBoolean then begin
                   Result := Result + fieldbyname('Codigo').AsString+',';
                end;
                next;
          end;
          result := copy(result ,1, Length(result)-1);
          first;
          EnableControls;
     end;
end;

function TImpressao_Financeiros_FluxoCaixaDetalhado2.PegaCCusto: string;
begin
     with tCCusto do begin
          DisableControls;
          Result := '';
          first;
          while not Eof do begin
                if fieldbyname('Sel').AsBoolean then begin
                   Result := Result + fieldbyname('Codigo').AsString+',';
                end;
                next;
          end;
          result := copy(result ,1, Length(result)-1);
          first;
          EnableControls;
     end;
end;

// Envia informações para o excel.
procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.ExportaEXCEL;
var
   mPlanilha
  ,img
  ,ExcelWorksheet: Variant;
   mLin,
   mCol: Integer;
   mFilial:string;
   mTotalDeb
  ,mTotalCred: real; 
begin
     Screen.Cursor := crSQLWait;
     Janela_Processamento := TJanela_Processamento.Create(Self);
     Janela_Processamento.Progresso.Position := 0;
     Janela_Processamento.Progresso.Max      := tFluxo.RecordCount;
     Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
     Janela_Processamento.Show;

     mPlanilha := CreateOleObject('Excel.Application');
     mPlanilha.WorkBooks.add(1);
     ExcelWorksheet      := mPlanilha.Sheets[1];
     ExcelWorksheet.Name := 'FLUXO DE CAIXA DETALHADO';
     mPlanilha.Visible   := false;
     mTotalDeb           := 0;
     mTotalCred          := 0;

     with Dados do begin
          // Titulo.
          mFilial := iif(Empresas.fieldbyname('Numero_Filial').AsInteger = 0, ' - (MATRIZ)', ' - (FILIAL'+Empresas.fieldbyname('Numero_Filial').asstring+')');
          mPlanilha.Cells[1, 1].cells                    := Empresas.fieldbyname('Razao_Social').asstring;
          mPlanilha.Range['A1','G1'].RowHeight           := 30;
          mPlanilha.Range['A1','G1'].Font.Size           := 20;
          mPlanilha.Range['A1','G1'].Font.Color          := clWhite;
          mPlanilha.Range['A1','G1'].Font.Bold           := true;
          mPlanilha.Range['A1','G1'].VerticalAlignment   := 2;
          mPlanilha.Range['A1','G1'].HorizontalAlignment := 3;
          mPlanilha.Range['A1','G1'].Mergecells          := True;
          mPlanilha.Range['A1','G3'].Interior.Pattern    := 1;
          mPlanilha.Range['A1','G3'].Interior.Color      := RGB(0, 140, 140);

          mPlanilha.Cells[2, 1].cells                    := 'FLUXO DE CAIXA DETALHADO' + mFilial;
          mPlanilha.Range['A2','G2'].RowHeight           := 19;
          mPlanilha.Range['A2','G2'].Font.Size           := 16;
          mPlanilha.Range['A2','G2'].Font.Bold           := true;
          mPlanilha.Range['A2','G2'].VerticalAlignment   := 2;
          mPlanilha.Range['A2','G2'].HorizontalAlignment := 3;
          mPlanilha.Range['A2','G2'].Mergecells          := True;

          mPlanilha.Cells[3, 1].cells                    := 'PERÍODO :'+ cDataini.Text + ' á '+ cDataFim.Text + '    ('+cDataRef.Items[cDataRef.ItemIndex]+')';
          mPlanilha.Range['A3','G3'].RowHeight           := 14;
          mPlanilha.Range['A3','G3'].Font.Size           := 9;
          mPlanilha.Range['A3','G3'].Font.Color          := clWhite;
          mPlanilha.Range['A3','G3'].Font.italic         := true;
          mPlanilha.Range['A3','G3'].font .Color         := RGB(255, 192, 0);
          mPlanilha.Range['A3','G3'].VerticalAlignment   := 2;
          mPlanilha.Range['A3','G3'].HorizontalAlignment := 4;
          mPlanilha.Range['A3','G3'].Mergecells          := True;
          
          // Logo
          if FileExists(Empresas.FieldByName('Logo').AsString) then begin
             Img                            := mPlanilha.Worksheets[1].Pictures.Insert(Empresas.FieldByName('Logo').AsString);
             Img.ShapeRange.LockAspectRatio := false;
             Img.Left                       := 4;     // Posição horizontal da imagem
             Img.Top                        := 4;     // Posição vertical da imagem
             Img.Width                      := 100;   // Largura da imagem
             Img.Height                     := 54;    // Altura da imagem
          end;

          // Nomes dos campos
          mCol := 1;
          mLin := 4;
          mPlanilha.Cells[mLin, mCol].cells       := 'DATA';
          mPlanilha.Cells[mLin, mCol].ColumnWidth := 10;
          inc(mCol);
          mPlanilha.Cells[mLin, mCol].cells       := 'PROCESSO';
          mPlanilha.Cells[mLin, mCol].ColumnWidth := 30;
          inc(mCol);
          mPlanilha.Cells[mLin, mCol].cells       := 'DOCUMENTO';
          mPlanilha.Cells[mLin, mCol].ColumnWidth := 25;
          inc(mCol);
          mPlanilha.Cells[mLin, mCol].cells       := 'BENEFICIARIO';
          mPlanilha.Cells[mLin, mCol].ColumnWidth := 60;
          inc(mCol);
          mPlanilha.Cells[mLin, mCol].cells       := 'DEBITO';
          mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
          inc(mCol);
          mPlanilha.Cells[mLin, mCol].cells       := 'CREDITO';
          mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
          inc(mCol);
          mPlanilha.Cells[mLin, mCol].cells       := 'SALDO';
          mPlanilha.Cells[mLin, mCol].ColumnWidth := 14;
          
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Interior.Color      := RGB(0, 102, 102);
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Interior.Pattern    := 1;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Font.Bold           := true;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Font.Color          := clAqua;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Borders.LineStyle   := 1; //xlContinuous;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Borders.Weight      := 2; //xlThin;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Borders.Color       := clSilver;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Font.Size           := 8;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Font.Bold           := true;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].VerticalAlignment   := 2;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].HorizontalAlignment := 3;

          inc(mLin);
          mCol := 4;
          mPlanilha.Cells[mLin, mCol].cells := 'SALDO ANTERIOR'+stringofChar('.', 183);
          mPlanilha.Range['D'+inttostr(mlin), 'F'+inttostr(mLin)].Mergecells := True;
          inc(mCol,3);
          mPlanilha.Cells[mLin, mCol].cells        := mSaldoIniExcel;
          mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00_);-#.##0,00';
          mPlanilha.Cells[mLin, mCol].ColumnWidth  := 14;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Font.Bold         := true;
          mPlanilha.Range['D'+inttostr(mLin),'G'+inttostr(mLin)].Interior.Color    := RGB(0, 140, 140);
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Font.Size         := 8;
          mPlanilha.Range['D'+inttostr(mLin),'G'+inttostr(mLin)].Font.Color        := clWhite;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Borders.Color     := clSilver;
          mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].VerticalAlignment := 2;
         
          inc(mLin);
          mCol := 1;
          with tFluxo do begin
               first;
               while not eof do begin
                     mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Font.Size           := 8;
                     mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].VerticalAlignment   := 2;
                     mPlanilha.Range['A'+inttostr(mLin),'A'+inttostr(mLin)].HorizontalAlignment := 3;
                     mPlanilha.Range['B'+inttostr(mLin),'B'+inttostr(mLin)].HorizontalAlignment := 2;
                     mPlanilha.Range['C'+inttostr(mLin),'C'+inttostr(mLin)].HorizontalAlignment := 2;

                     mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Data').value;
                     mPlanilha.Cells[mLin, mCol].NumberFormat := 'dd/mm/aaaa';
                     inc(mCol);
                     mPlanilha.Cells[mLin, mCol].cells := ' '+fieldbyname('Processo').asstring;
                     mPlanilha.Cells[mLin, mCol].NumberFormat := '#';
                     inc(mCol);
                     mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Numero_Doc').Asstring;
                     mPlanilha.Cells[mLin, mCol].NumberFormat := '#';
                     inc(mCol);
                     mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Beneficiario').asstring;
                     inc(mCol);
                     mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Debito').AsCurrency;
                     mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00_);-#.##0,00';
                     inc(mCol);
                     mPlanilha.Cells[mLin, mCol].cells := fieldbyname('Credito').AsCurrency;
                     mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00_);-#.##0,00';
                     inc(mCol);
                     
                     mSaldoExcel := mSaldoExcel + tFluxo.FieldByName('Credito').AsCurrency - tFluxo.FieldByName('Debito').AsCurrency;
                     mPlanilha.Cells[mLin, mCol].cells := mSaldoExcel;
                     mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00_);-#.##0,00';
                     
                     inc(mCol);
                     inc(mLin);
                     mCol := 1;
                     mTotalDeb  := mTotalDeb  + fieldbyname('Debito').AsCurrency;
                     mTotalCred := mTotalCred + fieldbyname('Credito').AsCurrency;

                     next;
                     Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                     Application.ProcessMessages;
               end;
               mCol := 4;
               mPlanilha.Cells[mLin, mCol].cells       := 'TOTAL GERAL'+stringofchar('.', 120);
               inc(mCol);
               mPlanilha.Cells[mLin, mCol].cells        := mTotalDeb;
               mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00_);-#.##0,00';
               mPlanilha.Cells[mLin, mCol].ColumnWidth  := 14;
               inc(mCol);
               mPlanilha.Cells[mLin, mCol].cells        := mTotalCred;
               mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00_);-#.##0,00';
               mPlanilha.Cells[mLin, mCol].ColumnWidth  := 14;
               inc(mCol);
               mPlanilha.Cells[mLin, mCol].cells        := mSaldoExcel;
               mPlanilha.Cells[mLin, mCol].NumberFormat := '#.##0,00_);-#.##0,00';
               mPlanilha.Cells[mLin, mCol].ColumnWidth  := 14;
               mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Font.Bold         := true;
               mPlanilha.Range['D'+inttostr(mLin),'G'+inttostr(mLin)].Interior.Color    := RGB(0, 140, 140);
               mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Font.Size         := 8;
               mPlanilha.Range['D'+inttostr(mLin),'G'+inttostr(mLin)].Font.Color        := clWhite;
               mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].Borders.Color     := clSilver;
               mPlanilha.Range['A'+inttostr(mLin),'G'+inttostr(mLin)].VerticalAlignment := 2;
          end;
     end;

     Janela_Processamento.Close;
     mPlanilha.Visible := true;

     // Congela as linhas do cabeçalho (Obs: só funcionou depois do visible = true).
     mPlanilha.Rows[5].Select;
     mPlanilha.ActiveWindow.FreezePanes := True;

     Screen.Cursor := crDefault;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.FiltraBancos;
var
  mSQL
 ,mSQLFilial: string;
begin
     msql       := '';
     mSQLFilial := '';
     with Dados, tBancos do begin
          sql.clear;
          sql.add('select ban.Codigo');
          sql.add('      ,ban.Nome');
          sql.add('      ,ban.Agencia');
          sql.add('      ,ban.Conta');
          sql.add('      ,ban.Saldo');
          sql.add('      ,ban.Data_Saldo');
          sql.add('      ,Sel = cast(0 as bit)');
          if not cConsol.Checked then begin
             sql.add('from '+mCompBancos+' as ban');
             sql.add('where ban.Tipo_Conta = ''CORRENTE'' ');
             sql.add('and Rel_Fluxo_Caixa = 1');
          end else begin
             if ConfiguracaoCompartilhar_Bancos.AsBoolean then begin
                sql.add('from '+mCompBancos+' as ban');
                sql.add('where ban.Tipo_Conta = ''CORRENTE'' ');
                sql.add('and Rel_Fluxo_Caixa = 1');
             end else begin
                sql.add('from Bancos as ban');
                sql.add('where ban.Tipo_Conta = ''CORRENTE'' ');
                sql.add('and Rel_Fluxo_Caixa = 1');
                // Outras Empresas.
                mSQL := sql.Text;
                with tEmpresas do begin
                     sql.clear;
                     sql.add('select Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
                     sql.add('from Empresas where Codigo <> :pEmpresa and Consolidar = 1 and substring(CNPJ, 1, 8) = :pCNPJ order by Numero_Filial');
                     parambyName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                     parambyName('pCNPJ').AsString     := Copy(Dados.Empresas.fieldbyname('CNPJ').asstring, 1, 8);
                     open;
                     first;
                     while not eof do begin
                           mSQLFilial := RemoveCaracter('use '+ EmpresasBanco_Dados.AsString, '', mSQL);
                           mSQLFilial := RemoveCaracter('Bancos as ban', FieldByName('Banco_Dados').AsString+'.dbo.Bancos as ban', mSQLFilial);
                           tBancos.sql.add('union');
                           tBancos.sql.add(mSQLFilial);
                           next;
                     end;
                end;
             end;
          end;
          sql.add('order by Nome');
          //sql.SaveToFile('c:\temp\Fluxo_Caixa_Bancos.sql');
          open;
     end;
end;

procedure TImpressao_Financeiros_FluxoCaixaDetalhado2.FiltraCentroCustos;
var
  mSQL
 ,mSQLFilial: string;
begin
     msql       := '';
     mSQLFilial := '';
     with Dados, tCCusto do begin
          sql.clear;
          sql.Add('select Codigo');
          sql.add('      ,Descricao');
          sql.Add('      ,Sel = cast(0 as bit)');
          sql.Add('from CentroCusto');
          if cConsol.Checked then begin
             // Outras Empresas.
             mSQL := sql.Text;
             with tEmpresas do begin
                  sql.clear;
                  sql.add('select Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
                  sql.add('from Empresas where Codigo <> :pEmpresa and Consolidar = 1 and substring(CNPJ, 1, 8) = :pCNPJ order by Numero_Filial');
                  parambyName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                  parambyName('pCNPJ').AsString     := Copy(Dados.Empresas.fieldbyname('CNPJ').asstring, 1, 8);
                  open;
                  first;
                  while not eof do begin
                        mSQLFilial := RemoveCaracter('use '+ EmpresasBanco_Dados.AsString, '', mSQL);
                        mSQLFilial := RemoveCaracter('CentroCusto', FieldByName('Banco_Dados').AsString+'.dbo.CentroCusto', mSQLFilial);
                        mSQLFilial := RemoveCaracter('into #temp', '', mSQLFilial);
                        tCCusto.sql.add('union');
                        tCCusto.sql.add(mSQLFilial);
                        next;
                  end;
             end;
          end;
          //sql.SaveToFile('c:\temp\Fluxo_Caixa_Centro_Custo.sql');
          open;
     end;
end;


end.
