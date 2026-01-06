unit frmImpressao_FinanceirosOP_ConciliacaoAdiantamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, RXCtrls, DB, DBAccess, MSAccess, RxLookup, DBCtrls, ppDBPipe, ppVar, ppBands, ppCtrls, ppClass, ppReport, RXDBCtrl, Buttons,ppSubRpt,
  INIFiles, ppParameter, ppDesignLayer, ppDB, ppStrtch, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, MemDS, system.UITypes, ComObj;

type
  TImpressao_FinanceirosOP_ConciliacaoAdiantamento = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    tAdiantamentos: TMSQuery;
    tAdiantamentosNumero: TLargeintField;
    tAdiantamentosData_Documento: TDateTimeField;
    tAdiantamentosProcesso: TStringField;
    tAdiantamentosBeneficiario: TStringField;
    dstAdiantamentos: TDataSource;
    rConciliacaoAdForn: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    bDetalhe: TppDetailBand;
    fFaixa: TppShape;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    lDescricao_TipoP: TppLabel;
    cPago: TppVariable;
    ppLine3: TppLine;
    lDescricao_TipoR: TppLabel;
    lSaldoForn: TppVariable;
    pEmpresas: TppDBPipeline;
    pAdiantamentos: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel15: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    tAdiantamentosNumero_Documento: TStringField;
    tAdiantamentosCentro_Custo: TStringField;
    tAdiantamentosNumero_FormaTipo: TStringField;
    tAdiantamentosBanco_Conta: TStringField;
    tAdiantamentosAdiantamento_Numero: TLargeintField;
    tAdiantamentosDescricao: TStringField;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppShape5: TppShape;
    ppLabel6: TppLabel;
    ppShape8: TppShape;
    ppLabel9: TppLabel;
    ppShape9: TppShape;
    ppLabel10: TppLabel;
    ppShape11: TppShape;
    ppLabel12: TppLabel;
    ppShape12: TppShape;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine6: TppLine;
    ppTitleBand1: TppTitleBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppShape6: TppShape;
    ppLabel3: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppShape10: TppShape;
    ppLabel8: TppLabel;
    ppShape13: TppShape;
    ppLabel11: TppLabel;
    ppShape14: TppShape;
    ppLabel16: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    lTotalAdiantamentos: TppDBCalc;
    ppLabel17: TppLabel;
    ppLine2: TppLine;
    tPrestacao: TMSQuery;
    dstPrestacao: TDataSource;
    pPrestacao: TppDBPipeline;
    tPrestacaoNumero: TLargeintField;
    tPrestacaoData_Documento: TDateTimeField;
    tPrestacaoProcesso: TStringField;
    tPrestacaoBeneficiario: TStringField;
    tPrestacaoBanco_Conta: TStringField;
    tPrestacaoNumero_Documento: TStringField;
    tPrestacaoCentro_Custo: TStringField;
    tPrestacaoNumero_FormaTipo: TStringField;
    tPrestacaoAdiantamento_Numero: TLargeintField;
    tPrestacaoDescricao: TStringField;
    tPrestacaoValor_Baixado: TCurrencyField;
    cTotalBaixado: TppDBCalc;
    tAdiantamentosValor_Operacao: TCurrencyField;
    tPrestacaoValor_Operacao: TCurrencyField;
    tAdiantamentosFornecedor: TSmallintField;
    iLogoFor: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    rConciliacaoAdCli: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText3: TppDBText;
    ppLabel18: TppLabel;
    ppLine7: TppLine;
    iLogoCli: TppImage;
    ppDetailBand1: TppDetailBand;
    ppShape15: TppShape;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText11: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine8: TppLine;
    ppLabel19: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppLabel20: TppLabel;
    ppLine11: TppLine;
    ppLabel21: TppLabel;
    lSaldoAberto: TppVariable;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel22: TppLabel;
    ppShape16: TppShape;
    ppLabel23: TppLabel;
    ppShape17: TppShape;
    ppLabel24: TppLabel;
    ppShape18: TppShape;
    ppLabel25: TppLabel;
    ppShape19: TppShape;
    ppLabel26: TppLabel;
    ppShape20: TppShape;
    ppLabel27: TppLabel;
    ppShape21: TppShape;
    ppLabel28: TppLabel;
    ppShape22: TppShape;
    ppLabel29: TppLabel;
    ppShape23: TppShape;
    ppLabel30: TppLabel;
    ppDBText24: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape24: TppShape;
    ppLabel31: TppLabel;
    ppShape25: TppShape;
    ppLabel32: TppLabel;
    ppShape26: TppShape;
    ppLabel33: TppLabel;
    ppShape27: TppShape;
    ppLabel34: TppLabel;
    ppShape28: TppShape;
    ppLabel35: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    lTotalAdCli: TppDBCalc;
    ppLabel36: TppLabel;
    ppLine12: TppLine;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppShape29: TppShape;
    ppLabel37: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList2: TppParameterList;
    lTotalRec: TppDBCalc;
    lTotalBaixa: TppDBCalc;
    ppLabel38: TppLabel;
    lSaldoCli: TppVariable;
    tAdiantamentosCliente: TSmallintField;
    StaticText4: TStaticText;
    cProcesso: TRxDBLookupCombo;
    lFornecedor: TStaticText;
    cFornecedor: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cCliente: TRxDBLookupCombo;
    cExcel: TCheckBox;
    StaticText2: TStaticText;
    cBanco: TRxDBLookupCombo;
    tAdiantamentosBeneficiario_Cod: TSmallintField;
    tPrestacaoBeneficiario_Cod: TSmallintField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure bLimpaFiltroClick(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure cPagoCalc(Sender: TObject; var Value: Variant);
    procedure bLimparClick(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand3AfterGenerate(Sender: TObject);
    procedure cFornecedorChange(Sender: TObject);
    procedure cClienteChange(Sender: TObject);
    procedure ppGroupHeaderBand2BeforeGenerate(Sender: TObject);
  private
    procedure ImpForn;
    procedure ImpCli;
    procedure ExportaEXCEL;
    procedure FiltraForn;
    procedure FiltraCli;
    { Private declarations }
  public
    { Public declarations }
    mTotalAdiantamento : Real;
    mCompClass:string;
  end;

var
  Impressao_FinanceirosOP_ConciliacaoAdiantamento: TImpressao_FinanceirosOP_ConciliacaoAdiantamento;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento, FUNCOES;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.Writestring ('IMPRESSAO_FINANCEIROS_F04', 'Processo'  , iif(cProcesso.keyValue <> null, cProcesso.KeyValue, ''));
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F04', 'Fornecedor', iif(cFornecedor.keyValue <> null, cFornecedor.KeyValue, 0));
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F04', 'Cliente'   , iif(cCliente.keyValue <> null, cCliente.KeyValue, 0));
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F04', 'Banco'     , iif(cBanco.keyvalue <> null, cBanco.KeyValue, 0));
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F04', 'Excel'     , cExcel.Checked);
      aINI.Free;

      Impressao_FinanceirosOP_ConciliacaoAdiantamento.Release;
      Impressao_FinanceirosOP_ConciliacaoAdiantamento := nil;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                 := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cFornecedor.KeyValue := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F04', 'Fornecedor', -1 );
      cCliente.KeyValue    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F04', 'Cliente'   , -1 );
      cProcesso.KeyValue   := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F04', 'Processo'  , '' );
      cBanco.KeyValue      := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F04', 'Banco'     , -1 );
      cExcel.Checked       := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F04', 'Excel'     , false );
      aINI.Free;

      Screen.Cursor := crSQLWait;
      With Dados do begin
           Configuracao.Open;
           mCompClass := 'ClassificacaoFinanceira';
           if ConfiguracaoCompartilhar_Classificacao.asboolean then begin 
              mCompClass := 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira';
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
                sql.add('from  Clientes cl');
                sql.add('where cl.codigo in(select distinct cliente from PagarReceber pr where (select Adiantamento from '+mCompClass+' cf where pr.Classificacao = cf.Codigo) = 1)');
                sql.add('order by nome');
                Open;
           end;
           with Fornecedores do begin
                sql.Clear;
                sql.Add('select *');
                sql.Add('from   Fornecedores fr');
                sql.Add('where Codigo in(select Fornecedor from PagarReceber pr where pr.Fornecedor = fr.Codigo and (select isnull(Adiantamento, 0) from '+mCompClass+' cf where cf.Codigo = pr.Classificacao) = 1 )');
                sql.Add('order by Nome');
                open;
           end;
           with Bancos do begin
                sql.Clear;
                sql.Add('select * from Bancos order by Nome');
                open;
           end;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.bImprimirClick(Sender: TObject);
begin
//     if (trim(cFornecedor.Text) = '') and (trim(cCliente.Text) = '') then begin
//        MessageDlg('É preciso informar o Cliente ou o Fornecedor!', mtinformation, [mbok], 0);
//        Abort;
//     end;

     if cExcel.Checked = false then begin
        if Trim(cFornecedor.Text) <> '' then
           ImpForn
        else
           ImpCli;
     end else begin
        if Trim(cFornecedor.Text) <> '' then
           FiltraForn
        else
           FiltraCli;

        ExportaEXCEL;
     end;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.ImpForn;
begin
      FiltraForn;
      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogoFor.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;
      rConciliacaoAdForn.Reset;
      rConciliacaoAdForn.Print;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.FiltraForn;
Var
    mAdiantamentos: WideString;
    mNum: Integer;
begin
      with tAdiantamentos do begin
           SQL.Clear;
           SQL.Add('SELECT Numero,');
           SQL.Add('       Data_Documento,');
           SQL.Add('       Processo,');
           SQL.Add('       Valor_Operacao = CASE WHEN Tipo = ''P'' THEN Valor_Operacao ELSE Valor_Operacao *-1 END,');
           SQL.Add('       Numero_Documento,');
           SQL.Add('       Centro_Custo,');
           SQL.Add('       Numero_FormaTipo,');
           SQL.Add('       Adiantamento_Numero,');
           SQL.Add('       (SELECT Conta FROM Bancos WHERE(Codigo = Banco)) AS Banco_Conta,');
           SQL.Add('       Beneficiario = (SELECT Nome FROM Fornecedores WHERE(Fornecedores.Codigo = Fornecedor)),');
           SQL.Add('       Fornecedor,');
           SQL.Add('       Cliente,');
           SQL.Add('       (SELECT Descricao FROM '+mCompClass+' WHERE(Codigo = Classificacao)) AS Descricao');
           SQL.Add('FROM   PagarReceber');
           SQL.Add('WHERE  ISNULL((SELECT Adiantamento FROM '+mCompClass+' WHERE(Codigo = Classificacao)), 0) = 1');
           If cFornecedor.Text <> '' then begin
              SQL.Add('and Fornecedor = :pFornecedor');
              ParamByName('pFornecedor').AsInteger := Dados.Fornecedores.FieldByName('Codigo').AsInteger;
           End;
           If Trim(cProcesso.Text) <> '' then begin
              SQL.Add('and Processo = :pProcesso');
              ParamByName('pProcesso').AsString := cProcesso.Text;
           End;
           If cBanco.Text <> '' then begin
              SQL.Add('and Banco = :pBanco');
              ParamByName('pBanco').AsInteger := Dados.Bancos.FieldByName('Codigo').AsInteger;
           End;
           SQL.Add('ORDER BY Fornecedor, Data_Documento');
           //SQL.SaveToFile('c:\temp\Adiantamentos_Fornecedores.sql');
           Open;
      end;

      mAdiantamentos := '';
      mNum           := 0;
      While not tAdiantamentos.Eof do begin
            If mNum <> tAdiantamentos.FieldByName('Fornecedor').AsInteger then begin
               mAdiantamentos := mAdiantamentos + tAdiantamentos.FieldByName('Fornecedor').AsString + ',';
               mNum           := tAdiantamentos.FieldByName('Fornecedor').AsInteger
            End;
            tAdiantamentos.Next;
      End;
      mAdiantamentos := ' ('+Copy(mAdiantamentos, 1, Length(mAdiantamentos)-1)+')';

      tPrestacao.SQL.Clear;
      tPrestacao.SQL.Add('SELECT Numero,');
      tPrestacao.SQL.Add('       Data_Documento,');
      tPrestacao.SQL.Add('       Processo,');
      tPrestacao.SQL.Add('       Valor_Operacao,');
      tPrestacao.SQL.Add('       CASE WHEN (SELECT Adiantamento FROM '+mCompClass+' WHERE Codigo = Classificacao) <> 1 THEN');
      tPrestacao.SQL.Add('           (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero))');
      tPrestacao.SQL.Add('       ELSE');
      tPrestacao.SQL.Add('           Valor_Operacao');
      tPrestacao.SQL.Add('       END AS Valor_Baixado,');
      tPrestacao.SQL.Add('       Numero_Documento,');
      tPrestacao.SQL.Add('       (SELECT Descricao FROM CentroCusto WHERE(Codigo = PagarReceber.Centro_Custo)) AS Centro_Custo,');
      tPrestacao.SQL.Add('       Numero_FormaTipo,');
      tPrestacao.SQL.Add('       Adiantamento_Numero,');
      tPrestacao.SQL.Add('       (SELECT Conta FROM Bancos WHERE(Codigo = PagarReceber.Banco)) AS Banco_Conta,');
      tPrestacao.SQL.Add('       CASE');
      tPrestacao.SQL.Add('           WHEN Cliente    <> 0 THEN (SELECT Nome FROM Clientes     WHERE(Clientes.Codigo = Cliente))');
      tPrestacao.SQL.Add('           WHEN Fornecedor <> 0 THEN (SELECT Nome FROM Fornecedores WHERE(Fornecedores.Codigo = Fornecedor))');
      tPrestacao.SQL.Add('       END AS Beneficiario,');
      tPrestacao.SQL.Add('       (SELECT Descricao FROM '+mCompClass+' WHERE(Codigo = Classificacao)) AS Descricao');
      tPrestacao.SQL.Add('FROM   PagarReceber');
      tPrestacao.SQL.Add('WHERE  Numero IS NOT NULL');
      tPrestacao.SQL.Add('  AND  ISNULL(Adiantamento_Numero, 0) <> 0');
      If mAdiantamentos <> ' ()' then begin
         tPrestacao.SQL.Add('  AND  Adiantamento_Numero IN'+mAdiantamentos);
      End;

      If Trim(cProcesso.DisplayValue) <> '' then begin
         tPrestacao.SQL.Add(' AND Processo = :pProcesso');
         tPrestacao.ParamByName('pProcesso').AsString:= Dados.ProcessosDOC.FieldByName('Processo').AsString;
      End;
      tPrestacao.SQL.Add('ORDER BY Data_Documento');
      //tPrestacao.SQL.SaveToFile('c:\temp\Prestacao_Fornecedores.sql');
      tPrestacao.Open;

      If tPrestacao.RecordCount = 0 then begin
         tPrestacao.SQL.Clear;
         tPrestacao.SQL.Add('SELECT  CAST(0 AS bigint) AS Numero');
         tPrestacao.SQL.Add('       ,CAST(NULL AS DateTime) AS Data_Documento');
         tPrestacao.SQL.Add('       ,CAST(NULL AS VARCHAR(15)) AS Processo');
         tPrestacao.SQL.Add('       ,CAST(0 AS money) AS Valor_Operacao');
         tPrestacao.SQL.Add('       ,CAST(0 AS money) AS Valor_Baixado');
         tPrestacao.SQL.Add('       ,CAST(NULL AS VARCHAR(15)) AS Numero_Documento');
         tPrestacao.SQL.Add('       ,CAST(NULL AS VARCHAR(30)) AS Centro_Custo');
         tPrestacao.SQL.Add('       ,CAST(NULL AS VARCHAR(15)) AS Numero_FormaTipo');
         tPrestacao.SQL.Add('       ,CAST(0 AS bigint) AS Adiantamento_Numero');
         tPrestacao.SQL.Add('       ,CAST(NULL AS VARCHAR(15)) AS Banco_Conta');
         tPrestacao.SQL.Add('       ,CAST(NULL AS VARCHAR(60)) AS Beneficiario');
         tPrestacao.SQL.Add('       ,CAST(NULL AS VARCHAR(60)) AS Descricao');
         tPrestacao.SQL.Add('FROM   PagarReceber');
         tPrestacao.SQL.Add('WHERE  Numero = (SELECT MAX(Numero) FROM PagarReceber)');
         tPrestacao.SQL.Add('ORDER BY Data_Documento');
         //tPrestacao.SQL.SaveToFile('c:\temp\Prestacao_Fornecedores.sql');
         tPrestacao.Open;
      End;

end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.ImpCli;
begin
      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogoCli.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
      end;

      FiltraCli;
      rConciliacaoAdCli.Reset;
      rConciliacaoAdCli.Print;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.FiltraCli;
Var
    mAdiantamentos: WideString;
    mNum: Integer;
begin
      with tAdiantamentos do begin
           sql.Clear;
           sql.Add('SELECT Numero');
           sql.Add('      ,Data_Documento');
           sql.Add('      ,Processo');
           sql.Add('      ,Valor_Operacao = CASE WHEN Tipo = ''P'' THEN Valor_Operacao ELSE Valor_Operacao *-1 END');
           sql.Add('      ,Numero_Documento');
           sql.Add('      ,Centro_Custo');
           sql.Add('      ,Numero_FormaTipo');
           sql.Add('      ,Adiantamento_Numero');
           sql.Add('      ,(SELECT Conta FROM Bancos WHERE(Codigo = Banco)) AS Banco_Conta');
           sql.Add('      ,Beneficiario = CAST((SELECT Nome FROM Clientes WHERE(Clientes.Codigo = Cliente)) AS VARCHAR(60))');
           sql.Add('      ,Fornecedor');
           sql.Add('      ,Cliente');
           sql.Add('      ,(SELECT Descricao FROM '+mCompClass+' WHERE(Codigo = Classificacao)) AS Descricao');
           sql.add('      ,Beneficiario_Cod = isnull(CLiente, 0) + isnull(Fornecedor, 0)');
           sql.Add('FROM   PagarReceber');
           sql.Add('WHERE  Tipo = ''R'' ');
           sql.Add('AND  ISNULL((SELECT Adiantamento FROM '+mCompClass+' WHERE(Codigo = Classificacao)), 0) = 1');
           If cCliente.Text <> '' then begin
              sql.Add('AND Cliente = :pCliente');
              ParamByName('pCliente').AsInteger := Dados.Clientes.FieldByName('Codigo').AsInteger;
           End;
           If Trim(cProcesso.Text) <> '' then begin
              sql.Add('AND Processo = :pProcesso');
              ParamByName('pProcesso').AsString := cProcesso.Text;
           End;
           If cBanco.Text <> '' then begin
              sql.Add('and Banco = :pBanco');
              ParamByName('pBanco').AsInteger := Dados.Bancos.FieldByName('Codigo').AsInteger;
           End;

           SQL.Add('ORDER BY Cliente, Data_Documento');
           //sql.SaveToFile('c:\temp\Adiantamentos_Clientes.sql');
           open;
      end;

      mAdiantamentos := '';
      mNum           := 0;
      While not tAdiantamentos.Eof do begin
            If mNum <> tAdiantamentos.FieldByName('Cliente').AsInteger then begin
               mAdiantamentos := mAdiantamentos + tAdiantamentos.FieldByName('Cliente').AsString + ',';
               mNum           := tAdiantamentos.FieldByName('Cliente').AsInteger
            End;
            tAdiantamentos.Next;
      End;
      mAdiantamentos := ' ('+Copy(mAdiantamentos, 1, Length(mAdiantamentos)-1)+')';
      with tPrestacao do begin
           SQL.Clear;
           SQL.Add('SELECT Numero,');
           SQL.Add('       Data_Documento,');
           SQL.Add('       Processo,');
           SQL.Add('       Valor_Operacao,');
           SQL.Add('       CASE WHEN (SELECT Adiantamento FROM '+mCompClass+' WHERE Codigo = Classificacao) <> 1 THEN');
           SQL.Add('           (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero))');
           SQL.Add('       ELSE');
           SQL.Add('           Valor_Operacao');
           SQL.Add('       END AS Valor_Baixado,');
           SQL.Add('       Numero_Documento,');
           SQL.Add('       (SELECT Descricao FROM CentroCusto WHERE(Codigo = PagarReceber.Centro_Custo)) AS Centro_Custo,');
           SQL.Add('       Numero_FormaTipo,');
           SQL.Add('       Adiantamento_Numero,');
           SQL.Add('       (SELECT Conta FROM Bancos WHERE(Codigo = PagarReceber.Banco)) AS Banco_Conta,');
           SQL.Add('       CASE');
           SQL.Add('           WHEN Cliente    <> 0 THEN (SELECT Nome FROM Clientes     WHERE(Clientes.Codigo = Cliente))');
           SQL.Add('           WHEN Fornecedor <> 0 THEN (SELECT Nome FROM Fornecedores WHERE(Fornecedores.Codigo = Fornecedor))');
           SQL.Add('       END AS Beneficiario,');
           sql.add('       Beneficiario_Cod = isnull(PagarReceber.CLiente, 0) + isnull(PagarReceber.Fornecedor, 0),');
           SQL.Add('       (SELECT Descricao FROM '+mCompClass+' WHERE(Codigo = Classificacao)) AS Descricao');
           SQL.Add('FROM   PagarReceber');
           SQL.Add('WHERE  Numero IS NOT NULL');
           SQL.Add('  AND  ISNULL(Adiantamento_Numero, 0) <> 0');
           If mAdiantamentos <> ' ()' then begin
              SQL.Add('  AND  Adiantamento_Numero IN'+mAdiantamentos);
           End;
           If Trim(cProcesso.DisplayValue) <> '' then begin
              SQL.Add(' AND Processo = :pProcesso');
              ParamByName('pProcesso').AsString:= Dados.ProcessosDOC.FieldByName('Processo').AsString;
           End;
           If cBanco.Text <> '' then begin
              sql.Add('and Banco = :pBanco');
              ParamByName('pBanco').AsInteger := Dados.Bancos.FieldByName('Codigo').AsInteger;
           End;
           SQL.Add('ORDER BY Data_Documento');
           //SQL.SaveToFile('c:\temp\Prestacao_Clientes.sql');
           Open;

           If RecordCount = 0 then begin
              SQL.Clear;
              SQL.Add('SELECT  CAST(0 AS bigint) AS Numero');
              SQL.Add('       ,CAST(NULL AS DateTime) AS Data_Documento');
              SQL.Add('       ,CAST(NULL AS VARCHAR(15)) AS Processo');
              SQL.Add('       ,CAST(0 AS money) AS Valor_Operacao');
              SQL.Add('       ,CAST(0 AS money) AS Valor_Baixado');
              SQL.Add('       ,CAST(NULL AS VARCHAR(15)) AS Numero_Documento');
              SQL.Add('       ,CAST(NULL AS VARCHAR(30)) AS Centro_Custo');
              SQL.Add('       ,CAST(NULL AS VARCHAR(15)) AS Numero_FormaTipo');
              SQL.Add('       ,CAST(0 AS bigint) AS Adiantamento_Numero');
              SQL.Add('       ,CAST(NULL AS VARCHAR(15)) AS Banco_Conta');
              SQL.Add('       ,CAST(NULL AS VARCHAR(60)) AS Beneficiario');
              SQL.Add('       ,CAST(NULL AS VARCHAR(60)) AS Descricao');
              SQL.Add('FROM   PagarReceber');
              SQL.Add('WHERE  Numero = (SELECT MAX(Numero) FROM PagarReceber)');
              SQL.Add('ORDER BY Data_Documento');
              //SQL.SaveToFile('c:\temp\Prestacao_Clientes.sql');
              Open;
           End;
      end;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.bPesquisarClick(Sender: TObject);
begin
      ActiveControl := nil;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.bLimpaFiltroClick(Sender: TObject);
begin
      cFornecedor.KeyValue := -1;
      cProcesso.KeyValue   := -1;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.ppSummaryBand2BeforePrint(Sender: TObject);
begin
      mTotalAdiantamento := lTotalAdiantamentos.Value;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.cPagoCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tPrestacao.FieldByName('Valor_Operacao').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.bLimparClick(Sender: TObject);
begin
      cProcesso.ClearValue;
      cFornecedor.ClearValue;
      cCliente.ClearValue;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.ppGroupHeaderBand2BeforeGenerate(Sender: TObject);
begin
      with tAdiantamentos do begin
           sql.Clear;
           sql.Add('select Numero');
           sql.Add('      ,Data_Documento');
           sql.Add('      ,Processo');
           sql.Add('      ,Valor_Operacao = CASE WHEN Tipo = ''P'' THEN Valor_Operacao ELSE Valor_Operacao *-1 END');
           sql.Add('      ,Numero_Documento');
           sql.Add('      ,Centro_Custo');
           sql.Add('      ,Numero_FormaTipo');
           sql.Add('      ,Adiantamento_Numero');
           sql.Add('      ,(SELECT Conta FROM Bancos WHERE(Codigo = Banco)) AS Banco_Conta');
           sql.Add('      ,Beneficiario = CAST((SELECT Nome FROM Clientes WHERE(Clientes.Codigo = Cliente)) AS VARCHAR(60))');
           sql.Add('      ,Fornecedor');
           sql.Add('      ,Cliente');
           sql.Add('      ,(SELECT Descricao FROM '+mCompClass+' WHERE(Codigo = Classificacao)) AS Descricao');
           sql.add('      ,Beneficiario_Cod = isnull(CLiente, 0) + isnull(Fornecedor, 0)');
           sql.Add('from   PagarReceber');
           sql.Add('where  Tipo = ''R'' ');
           sql.Add('and  isnull((select Adiantamento FROM '+mCompClass+' WHERE(Codigo = Classificacao)), 0) = 1');
           If cCliente.Text <> '' then begin
              sql.Add('AND Cliente = :pCliente');
              ParamByName('pCliente').AsInteger := Dados.Clientes.FieldByName('Codigo').AsInteger;
           End;
           If Trim(cProcesso.Text) <> '' then begin
              sql.Add('AND Processo = :pProcesso');
              ParamByName('pProcesso').AsString := cProcesso.Text;
           End;
           If cBanco.Text <> '' then begin
              sql.Add('and Banco = :pBanco');
              ParamByName('pBanco').AsInteger := Dados.Bancos.FieldByName('Codigo').AsInteger;
           End;

           SQL.Add('ORDER BY Cliente, Data_Documento');
           //sql.SaveToFile('c:\temp\Adiantamentos_Clientes.sql');
           open;
      end;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.ppSummaryBand1BeforePrint(Sender: TObject);
begin
      lSaldoForn.Value := mTotalAdiantamento - cTotalBaixado.Value;
end;


procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.ppSummaryBand3AfterGenerate(Sender: TObject);
begin
     lSaldoAberto.Value := lTotalRec.Value - lTotalBaixa.Value;
     lSaldoCli.Value    := lTotalAdCli.Value + lTotalRec.Value;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.cFornecedorChange(Sender: TObject);
begin
      if Trim(cFornecedor.Text) <> '' then cCliente.KeyValue := -1;
end;

procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.cClienteChange(Sender: TObject);
begin
      if Trim(cCliente.Text) <> '' then cFornecedor.KeyValue := -1;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_ConciliacaoAdiantamento.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha: Integer;
   mTotal
  ,mPago
  ,mBaixado
  ,mDifer
  ,mSaldo: Real;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tAdiantamentos.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');
      mPlanilha.WorkBooks.add(1);
      mPlanilha.Visible := false;

      mPlanilha.Range['A1','A1']                     := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
      mPlanilha.Range['A1','J2'].Font.Size           := 14;
      mPlanilha.Range['A1','J4'].Font.Bold           := true;
      mPlanilha.Range['A1','J1'].Mergecells          := True;
      mPlanilha.Range['A1','J2'].HorizontalAlignment := 3;
      mPlanilha.Range['A4','A4']                     := 'ADIANTAMENTOS RECEBIDOS';
      mPlanilha.Range['A4','J4'].Mergecells          := True;
      mPlanilha.Range['A4','J4'].HorizontalAlignment := 3;

      if Trim(cFornecedor.Text) <> '' then begin
         mPlanilha.Range['A2','A2'] := 'Conciliação de Adiantamentos ('+ 'FORNECEDORES' + ')';
         mPlanilha.Range['A5','A5'] := 'BENEFICIÁRIO:' + cFornecedor.Text;
      end else begin
         mPlanilha.Range['A2','A2'] := 'Conciliação de Adiantamentos ('+ 'CLIENTES' + ')';
         mPlanilha.Range['A5','A5'] := 'BENEFICIÁRIO:' + cCliente.Text;
      end;
      mPlanilha.Range['A4','J4'].Interior.Color      := clSilver;
      mPlanilha.Range['A2','J2'].Mergecells          := True;
      mPlanilha.Range['A5','J5'].Mergecells          := True;
      mPlanilha.Range['A5','J5'].Interior.Color      := $00FFCCCC;
      mPlanilha.Range['A5','J5'].HorizontalAlignment := 1;
      mPlanilha.Range['A5','J5'].Borders.LineStyle   := 1; //xlContinuous;
      mPlanilha.Range['A5','J5'].Borders.Weight      := 2; //xlThin;
      mPlanilha.Range['A5','J5'].Borders.Color       := RGB(0,0,0);

      mPlanilha.Cells[07,01]             := 'DATA';
      mPlanilha.Cells[07,01].ColumnWidth := 12;
      mPlanilha.Cells[07,02]             := 'Nº';
      mPlanilha.Cells[07,02].ColumnWidth := 12;
      mPlanilha.Cells[07,03]             := 'VALOR';
      mPlanilha.Cells[07,03].ColumnWidth := 12;
      mPlanilha.Cells[07,04]             := 'PROCESSO';
      mPlanilha.Cells[07,04].ColumnWidth := 16;

      mPlanilha.Range['A7','D7'].HorizontalAlignment := 3;
      mPlanilha.Range['A7','D7'].font.Bold           := true;
      mPlanilha.Range['A7','D7'].Interior.Color      := clYellow;
      mPlanilha.Range['A7','D7'].Borders.LineStyle   := 1; //xlContinuous;

      // Adiantamentos.
      mLinha := 8;
      tAdiantamentos.first;
      while (not tAdiantamentos.eof) and (not Funcoes.Cancelado) do begin
            mPlanilha.Range['A'+InttoStr(mLinha),'D'+InttoStr(mLinha)].Font.Size           := 10;
            mPlanilha.Range['A'+InttoStr(mLinha),'D'+InttoStr(mLinha)].Borders.LineStyle   := 1; //xlContinuous;

            mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].HorizontalAlignment := 3;
            mPlanilha.Range['B'+InttoStr(mLinha),'B'+InttoStr(mLinha)].HorizontalAlignment := 2;
            mPlanilha.Range['C'+InttoStr(mLinha),'C'+InttoStr(mLinha)].HorizontalAlignment := 1;
            mPlanilha.Range['D'+InttoStr(mLinha),'D'+InttoStr(mLinha)].HorizontalAlignment := 1;

            mPlanilha.Cells[mLinha,01] := tAdiantamentos.FieldByName('Data_Documento').AsString;
            mPlanilha.Cells[mLinha,02] := tAdiantamentos.FieldByName('Numero').AsString;
            mPlanilha.Cells[mLinha,03] := tAdiantamentos.FieldByName('Valor_Operacao').AsFloat;
            mPlanilha.Cells[mLinha,04] := tAdiantamentos.FieldByName('Processo').AsString;

            mTotal := mTotal + tAdiantamentos.FieldByName('Valor_Operacao').AsFloat;

            mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);-#.##0,00';
            inc(mLinha);

            tAdiantamentos.Next;
      end;

      mPlanilha.Cells[mLinha,02] := 'TOTAL';
      mPlanilha.Cells[mLinha,03] := mTotal;
      mPlanilha.Cells[mLinha,03].NumberFormat := '#.##0,00_);-#.##0,00';
      mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Borders.LineStyle := 1;
      mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].Interior.Color    := clYellow;
      mPlanilha.Range['B'+InttoStr(mLinha),'C'+InttoStr(mLinha)].font.bold         := true;
      inc(mLinha,2);

      // Prestação de contas.
      mPlanilha.Cells[mLinha,01] := 'PRESTAÇÃO DE CONTA';
      mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Interior.Color      := clSilver;
      mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Font.Bold           := true;
      mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Mergecells          := True;
      mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].HorizontalAlignment := 3;
      inc(mLinha);

      mPlanilha.Cells[mLinha,01]             := 'DATA DOC';
      mPlanilha.Cells[mLinha,02]             := 'Nº DOC';
      mPlanilha.Cells[mLinha,03]             := 'C.CUSTO';
      mPlanilha.Cells[mLinha,03].ColumnWidth := 16;
      mPlanilha.Cells[mLinha,04]             := 'PROCESSO';
      mPlanilha.Cells[mLinha,05]             := 'CLASSIFICAÇÃO FINANCEIRA';
      mPlanilha.Range['E'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Mergecells := True;
      mPlanilha.Cells[mLinha,05].ColumnWidth := 13;
      mPlanilha.Cells[mLinha,06].ColumnWidth := 13;
      mPlanilha.Cells[mLinha,07].ColumnWidth := 13;
      mPlanilha.Cells[mLinha,08]             := 'CONTA';
      mPlanilha.Cells[mLinha,08].ColumnWidth := 12;
      mPlanilha.Cells[mLinha,09]             := 'VALOR';
      mPlanilha.Cells[mLinha,09].ColumnWidth := 13;
      mPlanilha.Cells[mLinha,10]             := 'VALOR BAIXA';
      mPlanilha.Cells[mLinha,10].ColumnWidth := 16;

      mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Interior.Color      := clYellow;
      mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Font.Bold           := true;
      mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].HorizontalAlignment := 3;
      mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Borders.LineStyle   := 1; //xlContinuous;
      inc(mLinha);

      tPrestacao.first;
      while (not tPrestacao.eof) and (not Funcoes.Cancelado) do begin
            mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Font.Size         := 10;
            mPlanilha.Range['A'+InttoStr(mLinha),'J'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;
            mPlanilha.Range['E'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Mergecells        := True;

            mPlanilha.Cells[mLinha,01] := tPrestacao.FieldByName('Data_Documento').AsString;
            mPlanilha.Cells[mLinha,02] := tPrestacao.FieldByName('Numero_Documento').AsString;
            mPlanilha.Cells[mLinha,03] := tPrestacao.FieldByName('Centro_Custo').AsString;
            mPlanilha.Cells[mLinha,04] := tPrestacao.FieldByName('Processo').AsString;
            mPlanilha.Cells[mLinha,05] := tPrestacao.FieldByName('Descricao').AsString;
            mPlanilha.Cells[mLinha,08] := tPrestacao.FieldByName('Banco_Conta').AsString;
            mPlanilha.Cells[mLinha,09] := tPrestacao.FieldByName('Valor_Operacao').AsFloat;
            mPlanilha.Cells[mLinha,10] := tPrestacao.FieldByName('Valor_Baixado').AsFloat;

            mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);#.##0,00';
            mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);#.##0,00';

            mPago    := mPago    + tPrestacao.FieldByName('Valor_Operacao').AsFloat;
            mBaixado := mBaixado + tPrestacao.FieldByName('Valor_Baixado').AsFloat;

            tPrestacao.Next;

            Inc(mLinha);
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      end;

      mPlanilha.Range['G'+InttoStr(mLinha),'J'+InttoStr(mLinha+2)].Borders.LineStyle := 1;
      mPlanilha.Range['G'+InttoStr(mLinha),'J'+InttoStr(mLinha+2)].Interior.Color    := clYellow;
      mPlanilha.Range['G'+InttoStr(mLinha),'J'+InttoStr(mLinha+2)].font.Bold         := true;

      mPlanilha.Cells[mLinha,07]              := 'TOTAL DOS RECEBIMENTOS';
      mPlanilha.Range['G'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Mergecells := True;
      mPlanilha.Cells[mLinha,09]              := mPago;
      mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);-#.##0,00';
      mPlanilha.Cells[mLinha,10]              := mBaixado;
      mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);-#.##0,00';
      inc(mLinha);
      mPlanilha.Cells[mLinha,07]              := 'SALDO EM ABERTO';
      mPlanilha.Cells[mLinha,09]              := mPago - mBaixado;
      mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);-#.##0,00';
      mPlanilha.Range['G'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Mergecells := True;
      inc(mLinha);
      mPlanilha.Cells[mLinha,07]              := 'SALDO CLIENTE';
      mPlanilha.Cells[mLinha,09]              := mTotal + mBaixado;
      mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);-#.##0,00';
      mPlanilha.Range['G'+InttoStr(mLinha),'H'+InttoStr(mLinha)].Mergecells := True;

      //Fecha o Excel.
      if Funcoes.Cancelado = true then begin
         mPlanilha.Free;
         mPlanilha.Destroy;
      end;

      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;


end.
