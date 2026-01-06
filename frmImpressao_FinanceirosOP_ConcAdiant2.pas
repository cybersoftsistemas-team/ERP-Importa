unit frmImpressao_FinanceirosOP_ConcAdiant2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, RXCtrls, DB, DBAccess, MSAccess, RxLookup, DBCtrls, ppDBPipe, ppVar, ppBands, ppCtrls, ppClass, ppReport, RXDBCtrl, Buttons,ppSubRpt,
  INIFiles, ppParameter, ppDesignLayer, ppDB, ppStrtch, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, MemDS, system.UITypes, ComObj, Vcl.Mask, RxToolEdit, DateUtils;

type
  TImpressao_FinanceirosOP_ConcAdiant2 = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    tAdiantamentos: TMSQuery;
    dstAdiantamentos: TDataSource;
    pEmpresas: TppDBPipeline;
    pAdiantamentos: TppDBPipeline;
    tPrestacao: TMSQuery;
    dstPrestacao: TDataSource;
    pPrestacao: TppDBPipeline;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    lFornecedor: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cCliente: TRxDBLookupCombo;
    cExcel: TCheckBox;
    StaticText2: TStaticText;
    cBanco: TRxDBLookupCombo;
    tAdt: TMSQuery;
    rAdt: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDBText29: TppDBText;
    lTitulo: TppLabel;
    iLogo: TppImage;
    ppDetailBand4: TppDetailBand;
    ppDBText32: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine14: TppLine;
    ppLabel40: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList3: TppParameterList;
    pAdt: TppDBPipeline;
    dstAdt: TDataSource;
    sAdt: TppSubReport;
    ppChildReport3: TppChildReport;
    gAdt: TppDetailBand;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    lTotalAdiant: TppDBCalc;
    ppLabel47: TppLabel;
    ppPageSummaryBand1: TppPageSummaryBand;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    sPrest: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    ppTitleBand3: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    tCabecalho: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLabel41: TppLabel;
    ppLine17: TppLine;
    ppLabel46: TppLabel;
    lSaldoAb: TppVariable;
    lTotalRec: TppDBCalc;
    lTotalBaixa: TppDBCalc;
    ppLabel58: TppLabel;
    lSaldoFinal: TppVariable;
    ppSummaryBand5: TppSummaryBand;
    lFiltro: TppLabel;
    cTipo: TRadioGroup;
    ppLine13: TppLine;
    ppLine1: TppLine;
    StaticText8: TStaticText;
    cRaizCNPJ: TEdit;
    cAgrupa: TRadioGroup;
    cDataIni: TDateEdit;
    lData: TStaticText;
    cDataFim: TDateEdit;
    StaticText3: TStaticText;
    tSaldo: TMSQuery;
    dstSaldo: TDataSource;
    pSaldo: TppDBPipeline;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure bLimpaFiltroClick(Sender: TObject);
    procedure cPagoCalc(Sender: TObject; var Value: Variant);
    procedure bLimparClick(Sender: TObject);
    procedure cFornecedorChange(Sender: TObject);
    procedure cClienteChange(Sender: TObject);
    procedure ppDetailBand4BeforeGenerate(Sender: TObject);
    procedure ppSummaryBand5AfterGenerate(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure cAgrupaClick(Sender: TObject);
  private
    procedure ExportaEXCEL;
    procedure PegaAdt;
    { Private declarations }
  public
    { Public declarations }
    mTotalAdiantamento : Real;
    mCompClass
   ,mCompBanco:string;
  end;

var
  Impressao_FinanceirosOP_ConcAdiant2: TImpressao_FinanceirosOP_ConcAdiant2;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento, FUNCOES;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_ConcAdiant2.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.Writestring ('IMPRESSAO_FINANCEIROS_F04', 'Processo'   , iif(cProcesso.keyValue <> null, cProcesso.KeyValue, ''));
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F04', 'Fornecedor' , iif(cFornecedor.keyValue <> null, cFornecedor.KeyValue, 0));
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F04', 'Cliente'    , iif(cCliente.keyValue <> null, cCliente.KeyValue, 0));
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F04', 'Banco'      , iif(cBanco.keyvalue <> null, cBanco.KeyValue, 0));
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F04', 'Excel'      , cExcel.Checked);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F04', 'Tipo'       , cTipo.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F04', 'Agrupamento', cAgrupa.ItemIndex);
      aINI.Writestring ('IMPRESSAO_FINANCEIROS_F04', 'RaizCNPJ'   , cRaizCNPJ.text);
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F04', 'DataIni'    , cDataIni.date);
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F04', 'DataFim'    , cDataFim.date);
      aINI.Free;

      Impressao_FinanceirosOP_ConcAdiant2.Release;
      Impressao_FinanceirosOP_ConcAdiant2:= nil;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                 := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cFornecedor.KeyValue := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F04', 'Fornecedor' , -1);
      cCliente.KeyValue    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F04', 'Cliente'    , -1);
      cProcesso.KeyValue   := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F04', 'Processo'   , '');
      cBanco.KeyValue      := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F04', 'Banco'      , -1);
      cExcel.Checked       := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F04', 'Excel'      , false);
      cTipo.ItemIndex      := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F04', 'Tipo'       , 0);
      cAgrupa.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F04', 'Agrupamento', 0);
      cRaizCNPJ.text       := aINI.Readstring ('IMPRESSAO_FINANCEIROS_F04', 'RaizCNPJ'   , '');
      cDataIni.date        := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F04', 'DataIni'    , date);
      cDataFim.date        := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F04', 'DataFim'    , date);
      aINI.Free;

      Screen.Cursor := crSQLWait;
      with Dados do begin
           Configuracao.Open;
           mCompClass := 'ClassificacaoFinanceira';
           mCompBanco := 'Bancos';
           if ConfiguracaoCompartilhar_Classificacao.asboolean then begin
              mCompClass := 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira';
           end;
           if ConfiguracaoCompartilhar_Bancos.asboolean then begin
              mCompBanco := 'Cybersoft_Cadastros.dbo.Bancos';
           end;
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas where(Codigo = :pEmpresa)' );
                parambyname('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                open;
           end;
           with ProcessosDOC do begin
                SQL.Clear;
                SQL.Add('select * from ProcessosDocumentos ');
                SQL.Add('order by Processo');
                Open;
           end;
           with Clientes do begin
                sql.clear;
                sql.add('select *');
                sql.add('from Clientes cl');
                sql.add('where cl.codigo in(select distinct cliente from PagarReceber pr where (select Adiantamento from '+mCompClass+' cf where pr.Classificacao = cf.Codigo) = 1)');
                sql.add('order by nome');
                //sql.savetofile('c:\temp\Conciliação_Adinatamentos_Clientes.sql');
                Open;
           end;
           with Fornecedores do begin
                sql.Clear;
                sql.Add('select *');
                sql.Add('from Fornecedores fr');
                sql.Add('where Codigo in(select Fornecedor from PagarReceber pr where pr.Fornecedor = fr.Codigo and (select isnull(Adiantamento, 0) from '+mCompClass+' cf where cf.Codigo = pr.Classificacao) = 1 )');
                sql.Add('order by Nome');
                open;
           end;
           with Bancos do begin
                sql.Clear;
                sql.Add('select * from Bancos order by Nome');
                open;
           end;
      end;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.bImprimirClick(Sender: TObject);
begin
      lFiltro.Caption := '';
      lFiltro.Caption := 'PERÍODO DE '+cDataIni.Text + ' á ' + cDataFim.Text;
      with tAdt do begin
           sql.clear;
           if cTipo.ItemIndex = 0 then begin
              sql.add('select distinct Beneficiario_Cod = isnull(Cliente, 0)');
              sql.add('               ,Beneficiario = (select Nome+'' - ''+stuff(stuff(stuff(stuff(CNPJ, 3, 0, ''.''), 7, 0, ''.''), 11, 0, ''/''), 16, 0, ''-'') from Clientes where Clientes.Codigo = Cliente)');
              sql.add('from PagarReceber pr');
              sql.add('where Tipo = ''R''');
              sql.add('and (select Adiantamento from '+mCompClass+' cf where cf.Codigo = pr.Classificacao) = 1');
              if (cCliente.Text <> '') and (cAgrupa.ItemIndex = 0) then begin
                 sql.Add('and Cliente = :pCliente');
                 ParamByName('pCliente').AsInteger := Dados.Clientes.FieldByName('Codigo').AsInteger;
              end;
              if (cCliente.Text <> '') and (cAgrupa.ItemIndex = 1) then begin
                 sql.Add('and Cliente in(select Codigo from Clientes where substring(CNPJ, 1, 8) = :pRaiz)');
                 ParamByName('pRaiz').Asstring := cRaizCNPJ.Text;
              end;
           end;
           if cTipo.ItemIndex = 1 then begin
              sql.add('select distinct Beneficiario_Cod = isnull(Fornecedor, 0)');
              sql.add('               ,Beneficiario = (select Nome+'' - ''+stuff(stuff(stuff(stuff(CNPJ, 3, 0, ''.''), 7, 0, ''.''), 11, 0, ''/''), 16, 0, ''-'') from Fornecedores where Fornecedores.Codigo = Fornecedor)');
              sql.add('from PagarReceber pr');
              sql.add('where Tipo = ''P'' ');
              sql.add('and (select Adiantamento from '+mCompClass+' cf where cf.Codigo = pr.Classificacao) = 1');
              if (cFornecedor.Text <> '') and (cAgrupa.ItemIndex = 0) then begin
                 sql.Add('and Fornecedor = :pFornecedor');
                 ParamByName('pFornecedor').AsInteger := Dados.Fornecedores.FieldByName('Codigo').AsInteger;
              end;
              if (cFornecedor.Text <> '') and (cAgrupa.ItemIndex = 1) then begin
                 sql.Add('and Fornecedor in(select Codigo from Fornecedores where substring(CNPJ, 1, 8) = :pRaiz)');
                 ParamByName('pRaiz').Asstring := cRaizCNPJ.Text;
              end;
           end;
           if Trim(cProcesso.Text) <> '' then begin
              sql.Add('and Processo = :pProcesso');
              ParamByName('pProcesso').AsString := cProcesso.Text;
              lFiltro.Caption := 'PROCESSO: '+cProcesso.Text;
           end;
           if cBanco.Text <> '' then begin
              sql.Add('and Banco = :pBanco');
              ParamByName('pBanco').AsInteger := Dados.Bancos.FieldByName('Codigo').AsInteger;
              lFiltro.Caption := lFiltro.Caption +' × BANCO : '+Dados.Bancos.FieldByName('Nome').asstring;
           end;
           sql.add('order by Beneficiario');
           //sql.savetofile('c:\temp\Conciliação_Adiantamentos.sql');
           open;
      end;
      if not cExcel.Checked then begin
         if FileExists(Dados.EmpresasLogo.Value) then begin
            iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         end;
         with rAdt do begin
              lTitulo.Caption := iif(cTipo.ItemIndex = 0, 'Conciliação de adiantamentos de Clientes', 'Conciliação de adiantamentos a Fornecedores');
              Print;
              Reset;
         end;
      end else begin
         ExportaExcel;
      end;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.bPesquisarClick(Sender: TObject);
begin
      ActiveControl := nil;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.bLimpaFiltroClick(Sender: TObject);
begin
      cFornecedor.KeyValue := -1;
      cProcesso.KeyValue   := -1;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.ppDetailBand4BeforeGenerate(Sender: TObject);
begin
      PegaAdt;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.PegaAdt;
begin
      with tSaldo do begin
           if not DataLimpa(cDataIni.text) then begin
              if cTipo.ItemIndex = 0 then begin
                 sql.Clear;
                 sql.Add('select Saldo_Anterior = isnull((select sum(Valor_Operacao*-1)');
                 sql.Add('                                from PagarReceber');
                 sql.Add('                                where Data_Vencimento < :pDataIni');
                 sql.Add('                                and Tipo = ''R'' ');
                 sql.Add('                                and isnull((select Adiantamento from '+mCompClass+' where Codigo = Classificacao), 0) = 1');
                 sql.Add('                                and cliente = :pCliente), 0) +');
                 sql.Add('                        isnull((select sum(Valor_Operacao)');
                 sql.Add('                                from PagarReceber');
                 sql.Add('                                where Data_Vencimento < :pDataIni');
                 sql.Add('                                and isnull((select Adiantamento from '+mCompClass+' where Codigo = Classificacao), 0) <> 1');
                 sql.Add('                                and Adiantamento_Numero = :pCliente), 0)');
                 ParamByName('pCliente').AsInteger := tAdt.FieldByName('Beneficiario_Cod').AsInteger;
                 parambyname('pDataIni').value     := cDataIni.Date;
                 //sql.SaveToFile('c:\temp\Adiantamentos_Cliente_Saldo.sql');
                 open;
              end;
              if cTipo.ItemIndex = 1 then begin
                 sql.Clear;
                 sql.Add('select Saldo_Anterior = isnull((select sum(Valor_Operacao)');
                 sql.Add('                                from PagarReceber');
                 sql.Add('                                where Data_Vencimento < :pDataIni');
                 sql.Add('                                and Tipo = ''P'' ');
                 sql.Add('                                and isnull((select Adiantamento from '+mCompClass+' where Codigo = Classificacao), 0) = 1');
                 sql.Add('                                and Fornecedor = :pForn), 0) +');
                 sql.Add('                        isnull((select sum(Valor_Operacao*-1)');
                 sql.Add('                                from PagarReceber');
                 sql.Add('                                where Data_Vencimento < :pDataIni');
                 sql.Add('                                and isnull((select Adiantamento from '+mCompClass+' where Codigo = Classificacao), 0) <> 1');
                 sql.Add('                                and Adiantamento_Numero = :pForn), 0)');
                 ParamByName('pForn').AsInteger := tAdt.FieldByName('Beneficiario_Cod').AsInteger;
                 parambyname('pDataIni').value     := cDataIni.Date;
                 //sql.SaveToFile('c:\temp\Adiantamentos_Cliente_Saldo.sql');
                 open;
              end;
           end else begin
              sql.Clear;
              sql.add('select Saldo_Anterior = 0');
              open;
           end;
      end;
      with tAdiantamentos do begin
           sql.Clear;
           sql.Add('select Numero = cast(Numero as varchar(20))');
           sql.Add('      ,Data_Documento');
           sql.Add('      ,Processo');
           sql.Add('      ,Valor_Operacao = case when Tipo = ''P'' then Valor_Operacao else Valor_Operacao *-1 end');
           sql.Add('      ,Numero_Documento');
           sql.Add('      ,Centro_Custo');
           sql.Add('      ,Numero_FormaTipo');
           sql.Add('      ,Adiantamento_Numero');
           sql.Add('      ,Banco_Conta = (select Conta from Bancos where Codigo = Banco)');
           sql.Add('      ,Beneficiario = cast((select Nome from Clientes where Clientes.Codigo = Cliente) as varchar(60))');
           sql.Add('      ,Fornecedor');
           sql.Add('      ,Cliente');
           sql.Add('      ,Descricao = (select Descricao from '+mCompClass+' where Codigo = Classificacao)');
           sql.add('      ,Beneficiario_Cod = isnull(CLiente, 0) + isnull(Fornecedor, 0)');
           sql.Add('from  PagarReceber');
           sql.Add('where Numero is not null');
           if (not DataLimpa(cDataIni.text)) and (not Datalimpa(cDataFim.text)) then begin
              sql.Add('and Data_Vencimento between :pDataIni and :pDataFim');
              parambyname('pDataIni').value := cDataIni.Date;
              parambyname('pDataFim').value := cDataFim.Date;
           end;
           if cTipo.ItemIndex = 0 then begin
              sql.Add('and Tipo = ''R'' ');
              sql.Add('and isnull((select Adiantamento from '+mCompClass+' where Codigo = Classificacao), 0) = 1');
              sql.Add('and cliente = :pCliente');
              ParamByName('pCliente').AsInteger := tAdt.FieldByName('Beneficiario_Cod').AsInteger;
              tCabecalho.Caption := 'ADIANTAMENTO(S) RECEBIDO(S)';
           end else begin
              sql.Add('and Tipo = ''P'' ');
              sql.Add('and isnull((select Adiantamento from '+mCompClass+' where Codigo = Classificacao), 0) = 1');
              sql.Add('and Fornecedor= :pForn');
              ParamByName('pForn').AsInteger := tAdt.FieldByName('Beneficiario_Cod').AsInteger;
              tCabecalho.Caption := 'ADIANTAMENTO(S) EFETUADO(S)';
           end;
           sql.Add('union all');
           sql.Add('select Numero = ''SALDO ANTERIOR'' ');
           sql.Add('      ,Data_Documento = :pDataAnt');
           sql.Add('      ,Processo = null');
           sql.Add('      ,Valor_Operacao = :pSaldo');
           sql.Add('      ,Numero_Documento = null');
           sql.Add('      ,Centro_Custo = null');
           sql.Add('      ,Numero_FormaTipo = null');
           sql.Add('      ,Adiantamento_Numero = null');
           sql.Add('      ,Banco_Conta = null');
           sql.Add('      ,Beneficiario = null');
           sql.Add('      ,Fornecedor = null');
           sql.Add('      ,Cliente = null');
           sql.Add('      ,Descricao = null');
           sql.Add('      ,Beneficiario_Cod = null');
           parambyname('pDataAnt').value := iif(not dataLimpa(cDataini.Text), IncDay(cDataIni.Date, -1), null);
           parambyname('pSaldo').value   := tSaldo.FieldByName('Saldo_Anterior').value;
           if cTipo.ItemIndex = 0 then begin
              SQL.Add('order by Cliente, Data_Documento');
           end else begin
              SQL.Add('order by Fornecedor, Data_Documento');
           end;
           //sql.SaveToFile('c:\temp\Adiantamentos_Clientes.sql');
           open;
      end;
      with tPrestacao do begin
           SQL.Clear;
           SQL.Add('select Numero');
           SQL.Add('      ,Data_Documento');
           SQL.Add('      ,Processo');
           SQL.Add('      ,Valor_Operacao = case when Tipo = ''R'' then');
           SQL.Add('                             Valor_Operacao');
           SQL.Add('                        else');
           SQL.Add('                             case when (select isnull(Devolucao, 0) from '+mCompClass+' where Codigo = Classificacao) <> 1 then');
           SQL.Add('                                  Valor_Operacao *-1 ');
           SQL.Add('                             else');
           SQL.Add('                                  Valor_Operacao');
           SQL.Add('                             end');
           SQL.Add('                        end');
           {
           SQL.Add('      ,Valor_Baixado = case when (select Adiantamento from '+mCompClass+' where Codigo = Classificacao) <> 1 then');
           SQL.Add('      	                     case when Tipo = ''R'' then');
           SQL.Add('                                 (select sum(Valor) from PagarReceberBaixas where PagarReceberBaixas.Numero = PagarReceber.Numero)');
           SQL.Add('                            else');
           SQL.Add('                                 (select sum(Valor) from PagarReceberBaixas where PagarReceberBaixas.Numero = PagarReceber.Numero) * -1');
           SQL.Add('                            end');
           SQL.Add('                       else');
           SQL.Add('                            Valor_Operacao');
           SQL.Add('                       end');
           }
           SQL.Add('      ,Valor_Baixado = case when Tipo = ''R'' then');
           SQL.Add('                           (select sum(Valor) from PagarReceberBaixas where PagarReceberBaixas.Numero = PagarReceber.Numero)');
           SQL.Add('                      else');
           SQL.Add('                           case when (select isnull(Devolucao, 0) from Cybersoft_Cadastros.dbo.ClassificacaoFinanceira where Codigo = Classificacao) <> 1 then');
           SQL.Add('                                (select sum(Valor) from PagarReceberBaixas where PagarReceberBaixas.Numero = PagarReceber.Numero) *-1');
           SQL.Add('                           else');
           SQL.Add('                                (select sum(Valor) from PagarReceberBaixas where PagarReceberBaixas.Numero = PagarReceber.Numero)');
           SQL.Add('                           end');
           SQL.Add('                      end');
           
           SQL.Add('      ,Numero_Documento');
           SQL.Add('      ,CEntro_Custo = (select Descricao from CentroCusto where Codigo = PagarReceber.Centro_Custo)');
           SQL.Add('      ,Numero_FormaTipo');
           SQL.Add('      ,Adiantamento_Numero');
           SQL.Add('      ,Banco_Conta = (select Conta from Bancos where(Codigo = PagarReceber.Banco))');
           SQL.Add('      ,Beneficiario = case');
           SQL.Add('                          when Cliente    <> 0 then (select Nome from Clientes     where Clientes.Codigo = Cliente)');
           SQL.Add('                          when Fornecedor <> 0 then (select Nome from Fornecedores where Fornecedores.Codigo = Fornecedor)');
           SQL.Add('                      end');
           sql.add('      ,Beneficiario_Cod = isnull(PagarReceber.CLiente, 0) + isnull(PagarReceber.Fornecedor, 0)');
           SQL.Add('      ,Descricao = (select Descricao from '+mCompClass+' where Codigo = Classificacao)');
           SQL.Add('from PagarReceber');
           SQL.Add('where Numero is not null');
           if (not DataLimpa(cDataIni.text)) and (not Datalimpa(cDataFim.text)) then begin
              sql.Add('and Data_Vencimento between :pDataIni and :pDataFim');
              parambyname('pDataIni').value := cDataIni.Date;
              parambyname('pDataFim').value := cDataFim.Date;
           end;
           SQL.Add('and isnull(Adiantamento_Numero, 0) <> 0');
           sql.add('and Adiantamento_Numero = :pAdt');
           ParamByName('pAdt').Asinteger := tAdt.fieldbyname('Beneficiario_Cod').asinteger;
           If Trim(cProcesso.DisplayValue) <> '' then begin
              SQL.Add('and Processo = :pProcesso');
              ParamByName('pProcesso').AsString:= Dados.ProcessosDOC.FieldByName('Processo').AsString;
           End;
           If cBanco.Text <> '' then begin
              sql.Add('and Banco = :pBanco');
              ParamByName('pBanco').AsInteger := Dados.Bancos.FieldByName('Codigo').AsInteger;
           End;
           SQL.Add('order by Data_Documento');
           //SQL.SaveToFile('c:\temp\Prestacao_Clientes.sql');
           Open;
      end;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.cPagoCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tPrestacao.FieldByName('Valor_Operacao').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.bLimparClick(Sender: TObject);
begin
      cProcesso.ClearValue;
      cFornecedor.ClearValue;
      cCliente.ClearValue;
      cBanco.ClearValue;
      cRaizCNPJ.Clear;
      cDataini.Clear;
      cDataFim.Clear;
      cExcel.Checked := false;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.ppSummaryBand5AfterGenerate(Sender: TObject);
begin
     if cTipo.ItemIndex = 0 then begin
        lSaldoAb.Value := lTotalRec.Value - lTotalBaixa.Value;
     end else begin
        lSaldoAb.Value := lTotalRec.Value + lTotalBaixa.Value;
     end;
     lSaldoFinal.Value := lTotalAdiant.Value + lTotalRec.Value;
     if (lSaldoFinal.AsCurrency < 0) and (cTipo.ItemIndex = 1) then lSaldoFinal.AsCurrency := 0;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.cTipoClick(Sender: TObject);
begin
     if cTipo.ItemIndex = 0 then begin
        cCliente.Enabled     := true;
        cFornecedor.Enabled  := false;
        cFornecedor.KeyValue := -1.
     end;
     if cTipo.ItemIndex = 1 then begin
        cFornecedor.Enabled  := true;
        cCliente.Enabled     := false;
        cCliente.KeyValue    := -1.
     end;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.cFornecedorChange(Sender: TObject);
begin
     if Trim(cFornecedor.Text) <> '' then cCliente.KeyValue := -1;
     if cAgrupa.ItemIndex = 1 then begin 
        cRaizCNPJ.Text := copy(Dados.FornecedoresCNPJ.asstring,1,8)
     end;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.cAgrupaClick(Sender: TObject);
begin
     cRaizCNPJ.Text := '';
     if cAgrupa.ItemIndex = 1 then begin
        if cCliente.Text <> '' then begin
           cRaizCNPJ.Text := copy(Dados.ClientesCNPJ.asstring,1,8)
        end;
        if cFornecedor.Text <> '' then begin
           cRaizCNPJ.Text := copy(Dados.FornecedoresCNPJ.asstring,1,8)
        end;
     end;
end;

procedure TImpressao_FinanceirosOP_ConcAdiant2.cClienteChange(Sender: TObject);
begin
     if Trim(cCliente.Text) <> '' then cFornecedor.KeyValue := -1;
     if cAgrupa.ItemIndex = 1 then begin 
        cRaizCNPJ.Text := copy(Dados.ClientesCNPJ.asstring,1,8)
     end;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_ConcAdiant2.ExportaEXCEL;
var
   mPlanilha, img: Variant;
   mLin, mCol, mLinIni: Integer;
   mAdiant
  ,mReceb
  ,mBaixado
  ,mAberto
  ,mSaldo: Real;
  mFilial: string;
begin
       Screen.Cursor := crSQLWait;
       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Position := 0;
       Janela_Processamento.Progresso.Max      := tAdt.RecordCount;
       Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
       Janela_Processamento.Show;

       mPlanilha := CreateOleObject('Excel.Application');
       mPlanilha.WorkBooks.add(1);
       mPlanilha.Visible := false;

       // Titulo.
       mFilial := iif(Dados.Empresas.fieldbyname('Numero_Filial').AsInteger = 0, ' - (MATRIZ)', ' - (FILIAL'+Dados.Empresas.fieldbyname('Numero_Filial').asstring+')');
       mPlanilha.Cells[1, 1].cells                    := Dados.Empresas.fieldbyname('Razao_Social').asstring;
       mPlanilha.Range['A1','H1'].Font.Size           := 20;
       mPlanilha.Range['A1','H1'].Font.Color          := clWhite;
       mPlanilha.Range['A1','H1'].Font.Bold           := true;
       mPlanilha.Range['A1','H1'].Mergecells          := True;
       mPlanilha.Cells[2, 1].cells                    := 'CONCILIAÇÃO DE ADIANTAMENTOS ' + mFilial;;
       mPlanilha.Range['A2','H2'].Font.Size           := 16;
       mPlanilha.Range['A2','H2'].Font.Bold           := true;
       mPlanilha.Range['A2','H2'].Mergecells          := True;
       mPlanilha.Range['A1','H3'].HorizontalAlignment := 3;
       mPlanilha.Range['A1','H3'].VerticalAlignment   := 2;
       mPlanilha.Range['A1','H3'].Interior.Color      := RGB(0, 140, 140);
       mPlanilha.Range['A1','H3'].Interior.Pattern    := 1;

       // Logo
       if FileExists(Dados.Empresas.FieldByName('Logo').AsString) then begin
          Img                            := mPlanilha.Worksheets[1].Pictures.Insert(Dados.Empresas.FieldByName('Logo').AsString);
          Img.ShapeRange.LockAspectRatio := false;
          Img.Left                       := 15;     // Posição horizontal da imagem
          Img.Top                        := 10;     // Posição vertical da imagem
          Img.Width                      := 80;     // Largura da imagem
          Img.Height                     := 42;     // Altura da imagem
       end;

       // Nomes dos campos
       mCol := 1;
       mLin := 3;
       inc(mLin);

       tAdt.first;
       while not tAdt.Eof do begin
             mPlanilha.Cells[mLin, mCol] := tAdt.FieldByName('Beneficiario').AsString;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Size           := 10;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Color          := RGB(191, 191, 191);
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Bold           := true;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Mergecells          := True;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].HorizontalAlignment := 1;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].VerticalAlignment   := 2;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].RowHeight           := 20;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Color      := RGB(132, 8, 119);
             inc(mLin);
             mPlanilha.Cells[mLin, mCol] := 'ADIANTAMENTOS';
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Color := $00F2E6E6;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].HorizontalAlignment := 1;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Bold           := true;
             inc(mLin);
             mPlanilha.Range['A'+inttostr(mLin),'D'+inttostr(mLin)].Interior.Color      := clsilver;
             mPlanilha.Range['A'+inttostr(mLin),'D'+inttostr(mLin)].HorizontalAlignment := 3;
             mPlanilha.Cells[mLin, mCol].cells       := 'DATA';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].cells       := 'Nº';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].cells       := 'VALOR';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].cells       := 'PROCESSO';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             mPlanilha.Range['A'+InttoStr(mLin),'D'+InttoStr(mLin)].Borders.LineStyle := 3; //xlContinuous;
             mPlanilha.Range['A'+inttostr(mLin),'D'+inttostr(mLin)].Font.Bold           := true;
             inc(mLin);
             mCol := 1;

             // Adiantamentos.
             PegaAdt;    // Pegas os dados de cada beneficiario (Adiantamento e Prestação).

             tAdiantamentos.first;
             mLinIni := mLin;
             mAdiant := 0;
             while (not tAdiantamentos.eof) and (not Funcoes.Cancelado) do begin
                   mPlanilha.Range['A'+InttoStr(mLin),'D'+InttoStr(mLin)].Font.Size           := 10;
                   mPlanilha.Range['A'+InttoStr(mLin),'A'+InttoStr(mLin)].HorizontalAlignment := 3;
                   mPlanilha.Range['B'+InttoStr(mLin),'B'+InttoStr(mLin)].HorizontalAlignment := 1;
                   mPlanilha.Range['C'+InttoStr(mLin),'C'+InttoStr(mLin)].HorizontalAlignment := 1;
                   mPlanilha.Range['D'+InttoStr(mLin),'D'+InttoStr(mLin)].HorizontalAlignment := 2;

                   mPlanilha.Cells[mLin,01] := tAdiantamentos.FieldByName('Data_Documento').value;
                   mPlanilha.Cells[mLin,02] := tAdiantamentos.FieldByName('Numero').AsString;
                   mPlanilha.Cells[mLin,03] := tAdiantamentos.FieldByName('Valor_Operacao').AsFloat;
                   mPlanilha.Cells[mLin,04] := tAdiantamentos.FieldByName('Processo').AsString;
                   mPlanilha.Cells[mLin,03].NumberFormat := '#.##0,00_);-#.##0,00';
                   inc(mLin);

                   mAdiant := mAdiant + tAdiantamentos.FieldByName('Valor_Operacao').AsFloat;
                   tAdiantamentos.Next;
             end;
             // Totalizador da coluna "Valor_Operacao".
             mPlanilha.Cells[mLin,02]              := 'TOTAL';
             mPlanilha.Cells[mLin,03]              := concat('=soma(','C',inttostr(mLinIni),':C',inttostr(mLin-1),')');
             mPlanilha.Cells[mLin,03].NumberFormat := '#.##0,00_);-#.##0,00';
             mPlanilha.Range['B'+inttostr(mLin),'C'+inttostr(mLin)].Interior.Color      := clSilver;
             mPlanilha.Range['B'+inttostr(mLin),'C'+inttostr(mLin)].HorizontalAlignment := 1;
             mPlanilha.Range['B'+InttoStr(mLin),'C'+InttoStr(mLin)].Borders.LineStyle   := 3; //xlContinuous;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Bold           := true;
             inc(mLin,2);

             // Prestação de contas.
             mPlanilha.Cells[mLin, mCol] := 'PRESTAÇÃO DE CONTAS';
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Color := $00F2E6E6;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].HorizontalAlignment := 1;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Bold           := true;
             inc(mLin);

             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Interior.Color      := clsilver;
             mPlanilha.Range['A'+InttoStr(mLin),'H'+InttoStr(mLin)].HorizontalAlignment := 3;
             mPlanilha.Cells[mLin, mCol].cells       := 'DATA DOC';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].cells       := 'Nº DOC';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].cells       := 'CENTRO CUSTO';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].cells       := 'PROCESSO';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].cells       := 'CLASSIFICAÇÃO FINANCEIRA';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 40;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].cells       := 'CONTA';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].cells       := 'VALOR';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Cells[mLin, mCol].cells       := 'VALOR BAIXA';
             mPlanilha.Cells[mLin, mCol].ColumnWidth := 15;
             inc(mCol);
             mPlanilha.Range['A'+InttoStr(mLin),'H'+InttoStr(mLin)].Borders.LineStyle   := 3; //xlContinuous;
             mPlanilha.Range['A'+inttostr(mLin),'H'+inttostr(mLin)].Font.Bold           := true;
             inc(mLin);

             mCol     := 1;
             mLinIni  := mLin;
             mReceb   := 0;
             mBaixado := 0;
             mAberto  := 0;
             mSaldo   := 0;

             tPrestacao.first;
             while (not tPrestacao.eof) and (not Funcoes.Cancelado) do begin
                   mPlanilha.Range['A'+InttoStr(mLin),'H'+InttoStr(mLin)].Font.Size           := 10;
                   mPlanilha.Range['A'+InttoStr(mLin),'H'+InttoStr(mLin)].HorizontalAlignment := 2;

                   mPlanilha.Cells[mLin,mCol] := tPrestacao.FieldByName('Data_Documento').value;
                   mPlanilha.Range['A'+InttoStr(mLin),'A'+InttoStr(mLin)].HorizontalAlignment := 3;
                   inc(mCol);
                   mPlanilha.Cells[mLin,mCol] := tPrestacao.FieldByName('Numero_Documento').AsString;
                   inc(mCol);
                   mPlanilha.Cells[mLin,mCol] := tPrestacao.FieldByName('Centro_Custo').AsString;
                   inc(mCol);
                   mPlanilha.Cells[mLin,mCol] := tPrestacao.FieldByName('Processo').AsString;
                   inc(mCol);
                   mPlanilha.Cells[mLin,mCol] := tPrestacao.FieldByName('Descricao').AsString;
                   inc(mCol);
                   mPlanilha.Cells[mLin,mCol] := tPrestacao.FieldByName('Banco_Conta').AsString;
                   inc(mCol);
                   mPlanilha.Cells[mLin,mCol] := tPrestacao.FieldByName('Valor_Operacao').AsFloat;
                   mPlanilha.Range['G'+InttoStr(mLin),'G'+InttoStr(mLin)].HorizontalAlignment := 1;
                   mPlanilha.Cells[mLin,mCol].NumberFormat := '#.##0,00_);#.##0,00';
                   inc(mCol);
                   mPlanilha.Cells[mLin,mCol] := tPrestacao.FieldByName('Valor_Baixado').AsFloat;
                   mPlanilha.Range['H'+InttoStr(mLin),'H'+InttoStr(mLin)].HorizontalAlignment := 1;
                   mPlanilha.Cells[mLin,mCol].NumberFormat := '#.##0,00_);#.##0,00';

                   mReceb   := mReceb   + tPrestacao.FieldByName('Valor_Operacao').AsFloat;
                   mBaixado := mBaixado + tPrestacao.FieldByName('Valor_Baixado').AsFloat;

                   tPrestacao.Next;
                   mCol := 1;
                   Inc(mLin);
             end;

             mAberto := mReceb - mBaixado;
             mSaldo  := mReceb + mAdiant;

             // Totalizador "Prestações'.
             mPlanilha.Cells[mLin,06]              := 'TOTAL';
             mPlanilha.Cells[mLin,07]              := concat('=soma(','G',inttostr(mLinIni),':G',inttostr(mLin-1),')');
             mPlanilha.Cells[mLin,07].NumberFormat := '#.##0,00_);-#.##0,00';
             mPlanilha.Cells[mLin,08]              := concat('=soma(','H',inttostr(mLinIni),':H',inttostr(mLin-1),')');
             mPlanilha.Cells[mLin,08].NumberFormat := '#.##0,00_);-#.##0,00';
             mPlanilha.Range['F'+inttostr(mLin),'H'+inttostr(mLin+2)].Interior.Color      := clSilver;
             mPlanilha.Range['F'+inttostr(mLin),'H'+inttostr(mLin+2)].HorizontalAlignment := 1;
             mPlanilha.Range['F'+InttoStr(mLin),'H'+InttoStr(mLin+2)].Borders.LineStyle   := 3; //xlContinuous;
             mPlanilha.Range['F'+inttostr(mLin),'H'+inttostr(mLin+2)].Font.Bold           := true;
             inc(mLin);
             mPlanilha.Cells[mLin,06]              := 'SALDO EM ABERTO';
             mPlanilha.Cells[mLin,07]              := mAberto;
             mPlanilha.Cells[mLin,07].NumberFormat := '#.##0,00_);-#.##0,00';
             inc(mLin);
             mPlanilha.Cells[mLin,06]              := 'SALDO CLIENTE';
             mPlanilha.Cells[mLin,07]              := mSaldo;
             mPlanilha.Cells[mLin,07].NumberFormat := '#.##0,00_);-#.##0,00';
             Inc(mLin, 4);

             tAdt.next;
             Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
             Application.ProcessMessages;
       end;

       //Fecha o Excel.
       if Funcoes.Cancelado = true then begin
          mPlanilha.Free;
          mPlanilha.Destroy;
       end;
       Janela_Processamento.Close;
       mPlanilha.Visible := true;
end;

end.
