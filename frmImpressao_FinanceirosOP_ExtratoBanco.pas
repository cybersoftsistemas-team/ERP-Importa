unit frmImpressao_FinanceirosOP_ExtratoBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, ppDB, ppDBPipe, ppVar,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppReport, RxLookup, Vcl.StdCtrls, Vcl.ExtCtrls, Mask, RXCtrls, IniFiles, Funcoes, ppParameter, Math, ComObj, RxToolEdit, MemDS, ppDesignLayer,
  ppCache, ppComm, ppRelatv, system.UITypes, ppProd;

type
  TImpressao_FinanceirosOP_ExtratoBanco = class(TForm)
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cLancamentos: TRadioGroup;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bLimpar: TButton;
    StaticText4: TStaticText;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    cCentroCusto: TRxDBLookupCombo;
    cProcesso: TRxDBLookupCombo;
    StaticText6: TStaticText;
    cBanco: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cBeneficiario: TRxDBLookupCombo;
    rF02: TppReport;
    pPagarReceber: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    pClientes: TppDBPipeline;
    pClientesppMasterFieldLink2: TppMasterFieldLink;
    pFornecedores: TppDBPipeline;
    pFornecedoresppMasterFieldLink2: TppMasterFieldLink;
    pOrgaos: TppDBPipeline;
    pOrgaosppField1: TppField;
    pOrgaosppField2: TppField;
    pOrgaosppField3: TppField;
    pOrgaosppField4: TppField;
    pOrgaosppMasterFieldLink1: TppMasterFieldLink;
    pCentroCusto: TppDBPipeline;
    pClassificacao: TppDBPipeline;
    pBancos: TppDBPipeline;
    tBeneficiario: TMSQuery;
    dstBeneficiario: TDataSource;
    ppParameterList1: TppParameterList;
    tPagamentos: TMSQuery;
    tPagarReceber: TMSQuery;
    dstPagarReceber: TDataSource;
    pBeneficiario: TppDBPipeline;
    tBeneficiarioCodigo: TStringField;
    tBeneficiarioNome: TStringField;
    tBeneficiarioCNPJ: TStringField;
    tBeneficiarioTipo: TStringField;
    tRecebimentos: TMSQuery;
    cTotalDiario: TCheckBox;
    cTotalMensal: TCheckBox;
    StaticText8: TStaticText;
    cCliente: TRxDBLookupCombo;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    lTitulo: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
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
    ppShape10: TppShape;
    ppLabel11: TppLabel;
    ppShape11: TppShape;
    ppLabel12: TppLabel;
    ppShape12: TppShape;
    ppLabel14: TppLabel;
    lPeriodo: TppLabel;
    ppShape14: TppShape;
    ppLabel1: TppLabel;
    ppShape15: TppShape;
    lBanco: TppDBText;
    ppShape16: TppShape;
    ppLabel21: TppLabel;
    ppShape17: TppShape;
    ppDBText14: TppDBText;
    ppShape18: TppShape;
    ppLabel22: TppLabel;
    ppShape19: TppShape;
    ppLine2: TppLine;
    lSaldoAnterior: TppVariable;
    bDetalhe: TppDetailBand;
    fFaixa: TppShape;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    lDebito: TppDBText;
    lCredito: TppDBText;
    lSaldo: TppVariable;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel7: TppLabel;
    lTotalRecebimentos: TppVariable;
    lTotalPagamentos: TppVariable;
    lTotalSaldo: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    pRodapeGrupoMes: TppGroupFooterBand;
    ppLabel16: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine7: TppLine;
    lSaldoMes: TppVariable;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    pRodapeGrupoDia: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppVariable1: TppVariable;
    ppLine8: TppLine;
    tEmpresas: TMSQuery;
    cConsol: TRadioGroup;
    ppShape6: TppShape;
    ppLabel15: TppLabel;
    ppDBText8: TppDBText;
    lConsol: TppLabel;
    cExcel: TCheckBox;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure cBeneficiarioKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure bDetalheBeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure cBancoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cClassificacaoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cCentroCustoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cProcessoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure lSaldoAnteriorCalc(Sender: TObject; var Value: Variant);
    procedure pPagarReceberFirst(Sender: TObject);
    procedure lSaldoCalc(Sender: TObject; var Value: Variant);
    procedure lTotalSaldoCalc(Sender: TObject; var Value: Variant);
    procedure lTotalRecebimentosCalc(Sender: TObject; var Value: Variant);
    procedure lTotalPagamentosCalc(Sender: TObject; var Value: Variant);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure lSaldoMesCalc(Sender: TObject; var Value: Variant);
    procedure rF02BeforePrint(Sender: TObject);
    procedure ExportaEXCEL;
  private
    { Private declarations }
  public
    { Public declarations }
    mSaldo        : Currency;
    mRecebimentos : Currency;
    mPagamentos   : Currency;
    mConta        : integer;
  end;

var
  Impressao_FinanceirosOP_ExtratoBanco: TImpressao_FinanceirosOP_ExtratoBanco;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_ExtratoBanco.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F02', 'Lancamento'    , cLancamentos.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F02', 'Consolidar'    , cConsol.ItemIndex );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F02', 'DataIni'       , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F02', 'DataFim'       , cDataFim.Date );
      If cProcesso.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F02', 'Processo', cProcesso.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F02', 'Processo', '');

      If cCentroCusto.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F02', 'CentroCusto', cCentroCusto.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F02', 'CentroCusto', '');

      If cClassificacao.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F02', 'Classificacao', cClassificacao.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F02', 'Classificacao', '');

      If cBanco.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F02', 'Banco', cBanco.KeyValue )
      else
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F02', 'Banco', 0);

      If cBeneficiario.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F02', 'Beneficiario', cBeneficiario.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F02', 'Beneficiario', '');

      aINI.WriteBool('IMPRESSAO_FINANCEIROS_F02', 'TotalDiario', cTotalDiario.Checked);
      aINI.WriteBool('IMPRESSAO_FINANCEIROS_F02', 'TotalMensal', cTotalMensal.Checked);
      aINI.WriteBool('IMPRESSAO_FINANCEIROS_F02', 'Excel'      , cExcel.Checked);
      aINI.Free;

      tPagarReceber.SQL.Clear;
      tPagarReceber.SQL.Add('USE '+Dados.EmpresasBanco_Dados.AsString);
      tPagarReceber.Execute;

      tPagarReceber.Close;
      tBeneficiario.Close;
      tPagamentos.Close;
      tRecebimentos.Close;
      tEmpresas.Close;

      Impressao_FinanceirosOP_ExtratoBanco.Release;
      Impressao_FinanceirosOP_ExtratoBanco:= nil;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.FormShow(Sender: TObject);
Var
     aINI : TIniFile;
begin
      With Dados do begin
           Configuracao.Open;
           
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE(Desativado <> 1) ORDER BY Nome');
           Bancos.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Codigo');
           CentroCusto.Open;

           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1)  ORDER BY Descricao, Codigo');
           ClassificacaoFinanceira.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo IN(SELECT DISTINCT Cliente FROM ProcessosDocumentos)) ORDER BY Nome');
           Clientes.Open;

           tBeneficiario.SQL.Clear;
           tBeneficiario.SQL.Add('SELECT DISTINCT ''C-''+CAST(Codigo AS VARCHAR(10)) AS Codigo, Nome, CNPJ, ''C'' AS Tipo FROM Clientes');
           tBeneficiario.SQL.Add('UNION ALL');
           tBeneficiario.SQL.Add('SELECT ''F-''+CAST(Codigo AS VARCHAR(10))          , Nome, CNPJ, ''F''          FROM Fornecedores');
           tBeneficiario.SQL.Add('UNION ALL');
           tBeneficiario.SQL.Add('SELECT ''O-''+RTRIM(Codigo)                        , Nome, '''', ''O''          FROM Cybersoft_Cadastros.dbo.OrgaosPublicos');
           tBeneficiario.SQL.Add('UNION ALL');
           If ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
              tBeneficiario.SQL.Add('SELECT ''B-''+CAST(Codigo AS VARCHAR(10))          , Nome, '''', ''B''          FROM Bancos');
           end else begin
              tBeneficiario.SQL.Add('SELECT ''B-''+CAST(Codigo AS VARCHAR(10))          , Nome, '''', ''B''          FROM Cybersoft_Cadastros.dbo.Bancos');
           End;

           tBeneficiario.SQL.Add('ORDER BY Nome');
           tBeneficiario.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cLancamentos.ItemIndex  := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F02', 'Lancamento'    , 2);
      cConsol.ItemIndex       := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F02', 'Consolidar'    , 0);
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F02', 'DataIni'       , Date);
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F02', 'DataFim'       , Date);
      cProcesso.KeyValue      := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F02', 'Processo'      , '');
      cCentroCusto.KeyValue   := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F02', 'CentroCusto'   , '');
      cClassificacao.KeyValue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F02', 'Classificacao' , '');
      cBanco.KeyValue         := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F02', 'Banco'         , 0);
      cBeneficiario.KeyValue  := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F02', 'Beneficiario'  , '');
      cTotalDiario.Checked    := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F02', 'TotalDiario'   , true);
      cTotalMensal.Checked    := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F02', 'TotalDiario'   , true);
      cExcel.Checked          := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F02', 'Excel'         , false);
      aINI.Free;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.bImprimirClick(Sender: TObject);
Var
   mSQLMatriz: WideString;
   mSQLFilial: Widestring;
begin
       If (cBanco.KeyValue = null) and (cCentroCusto.value = null) then begin
          MessageDlg('Banco inválido!'+#13+#13+'É necessario informar o "BANCO" para impressão do relatório.', mtInformation, [mbOK], 0);
          Abort;
       End;

       If ( Trim(RemoveCaracter('/','',cDataIni.Text)) = '' ) or ( Trim(RemoveCaracter('/','',cDataFim.Text)) = '' ) then begin
          MessageDlg('Periodo inválido!'+#13+#13+'É necessario informar a "DATA INICIAL" e "DATA FINAL" para impressão do relatório.', mtInformation, [mbOK], 0);
       end else begin
          If cLancamentos.ItemIndex = 0 then lTitulo.Caption := 'Extrato bancário dos pagamentos ';
          If cLancamentos.ItemIndex = 1 then lTitulo.Caption := 'Extrato bancário dos recebimentos ';
          If cLancamentos.ItemIndex = 2 then lTitulo.Caption := 'Extrato bancário dos pagamentos/recebimentos ';

          lPeriodo.Caption := 'Período '+cDataIni.Text + ' a '+cDataFim.Text;

          With Dados do begin
               If cLancamentos.ItemIndex < 0 then cLancamentos.ItemIndex := 2;
                  
               tPagarReceber.SQL.Clear;
               tPagarReceber.SQL.Add('USE '+ EmpresasBanco_Dados.AsString);
               tPagarReceber.SQL.Add('SELECT PB.Forma_TipoDocumento,');
               tPagarReceber.SQL.Add('       pb.Tipo,');
               tPagarReceber.SQL.Add('       CAST(PB.Valor AS DECIMAL(18, 2)) AS Valor,');
               tPagarReceber.SQL.Add('       PB.Data AS Data_Baixa,');
               tPagarReceber.SQL.Add('       CASE WHEN PB.Tipo = ''P'' THEN CAST(Valor AS DECIMAL(18, 2)) ELSE 0 END AS Debito,');
               tPagarReceber.SQL.Add('       CASE WHEN PB.Tipo = ''R'' THEN CAST(Valor AS DECIMAL(18, 2)) ELSE 0 END AS Credito,');
               tPagarReceber.SQL.Add('       PR.Numero,');
               tPagarReceber.SQL.Add('       PB.Registro,');
               tPagarReceber.SQL.Add('       ISNULL(PR.Processo, '''') + CASE WHEN ISNULL(PR.Processo, '''') <> '''' THEN '' DI: ''+ISNULL((SELECT MAX(Numero_Declaracao) FROM ProcessosDocumentos PD WHERE PD.Processo = PR.Processo), '''') END AS Processo,');
               tPagarReceber.SQL.Add('       PR.Numero_Documento,');
               tPagarReceber.SQL.Add('       PR.Numero_FormaTipo,');
               tPagarReceber.SQL.Add('       PR.Classificacao,');
               tPagarReceber.SQL.Add('       CASE');
               tPagarReceber.SQL.Add('            WHEN Cliente       <> 0    THEN ''C-''+CAST(Cliente AS VARCHAR(10))');
               tPagarReceber.SQL.Add('            WHEN Fornecedor    <> 0    THEN ''F-''+CAST(Fornecedor AS VARCHAR(10))');
               tPagarReceber.SQL.Add('            WHEN Orgao         <> '''' THEN ''O-''+Orgao ');
               tPagarReceber.SQL.Add('            WHEN Transferencia = 1     THEN ''B-''+CAST(PR.Banco AS VARCHAR(10))');
               tPagarReceber.SQL.Add('       END AS Beneficiario,');
               tPagarReceber.SQL.Add('       CASE');
               tPagarReceber.SQL.Add('            WHEN Cliente       <> 0    THEN (SELECT Nome FROM Clientes WHERE(Codigo = Cliente))');
               tPagarReceber.SQL.Add('            WHEN Fornecedor    <> 0    THEN (SELECT Nome FROM Fornecedores WHERE(Codigo = Fornecedor))');
               tPagarReceber.SQL.Add('            WHEN Orgao         <> '''' THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE(Codigo = Orgao))');
               If ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
                  tPagarReceber.SQL.Add('            WHEN Transferencia = 1     THEN (SELECT Nome FROM Bancos WHERE Codigo = (Transferencia_Banco) )');
               end else begin
                  tPagarReceber.SQL.Add('            WHEN Transferencia = 1     THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = (PB.Banco) ) + ''  •  ''+ (SELECT Nome FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = (Transferencia_Banco) )');
               End;

               tPagarReceber.SQL.Add('       END AS Nome_Beneficiario,');
               If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                  tPagarReceber.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(ClassificacaoFinanceira.Codigo = PR.Classificacao)) AS Descricao_Classificacao,');
               end else begin
                  tPagarReceber.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE(CF.Codigo = PR.Classificacao)) AS Descricao_Classificacao,');
               End;

               tPagarReceber.SQL.Add('       (SELECT Descricao FROM CentroCusto WHERE(CentroCusto.Codigo = PR.Centro_Custo)) AS Descricao_CC,');
               tPagarReceber.SQL.Add('       CAST(MONTH(Data) AS VARCHAR(2))+CAST(YEAR(DATA) AS VARCHAR(4)) AS MESANO,');
               tPagarReceber.SQL.Add('       Origem = CASE WHEN (SELECT Matriz_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) = 1 THEN');
               tPagarReceber.SQL.Add('                     ''MT-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               tPagarReceber.SQL.Add('                ELSE');
               tPagarReceber.SQL.Add('                     ''FL''+CAST((SELECT Numero_Filial FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa) AS VARCHAR(2)) + ''-''+(SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = :pEmpresa)');
               tPagarReceber.SQL.Add('                END,');

               If ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
                  tPagarReceber.SQL.Add('                Banco_Nome = (SELECT Nome FROM Bancos BC WHERE BC.Codigo = PB.Banco)');
               end else begin
                  tPagarReceber.SQL.Add('                Banco_Nome = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Bancos BC WHERE BC.Codigo = PB.Banco)');
               End;

               tPagarReceber.SQL.Add('FROM   PagarReceberBaixas PB, PagarReceber PR');
               tPagarReceber.SQL.Add('WHERE  (PR.Numero = PB.Numero)');
               tPagarReceber.SQL.Add('AND    (Nivel <= :pNivel)');
               tPagarReceber.ParamByName('pNivel').AsInteger   := Menu_Principal.mUsuarioNivel;
               tPagarReceber.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;

               If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/', '', cDataFim.Text)) <> '') then begin
                  tPagarReceber.SQL.Add('AND (Data BETWEEN :pDataIni AND :pDataFim) ');
                  tPagarReceber.ParamByName('pDataIni').AsDate := cDataIni.Date;
                  tPagarReceber.ParamByName('pDataFim').AsDate := cDataFim.Date;
               End;

               If cLancamentos.ItemIndex = 0 then tPagarReceber.SQL.Add('AND (PR.Tipo = ''P'')');
               If cLancamentos.ItemIndex = 1 then tPagarReceber.SQL.Add('AND (PR.Tipo = ''R'')');

               If (Trim(cProcesso.Text) <> '') then begin
                  tPagarReceber.SQL.Add('AND (PR.Processo = :pProcesso) ');
                  tPagarReceber.ParamByName('pProcesso').AsString := cProcesso.Text;
               End;

               If Trim(cCliente.Text) <> '' then begin
                  tPagarReceber.SQL.Add('AND Processo IN(SELECT DISTINCT Processo FROM ProcessosDocumentos WHERE(Cliente = :pCliente)) ');
                  tPagarReceber.ParamByName('pCliente').AsInteger := ClientesCodigo.AsInteger;
               End;

               If (Trim(cCentroCusto.Text) <> '') then begin
                  tPagarReceber.SQL.Add('AND (PR.Centro_Custo = :pCentroCusto) ');
                  tPagarReceber.ParamByName('pCentroCusto').AsString := CentroCusto.FieldByName('Codigo').Value;
               End;

               If (Trim(cClassificacao.Text) <> '') then begin
                  tPagarReceber.SQL.Add('AND (Classificacao = :pClassificacao) ');
                  tPagarReceber.ParamByName('pClassificacao').AsString := ClassificacaoFinanceiraCodigo.Value;
               End;

               If (Trim(cBanco.Text) <> '') then begin
                  tPagarReceber.SQL.Add('AND (ISNULL(PB.Banco,0) <> 0) AND (PB.Banco_Conta = :pConta) ');
                  tPagarReceber.ParamByName('pConta').AsString := Trim(BancosConta.AsString);
               End;

               If (Trim(cBeneficiario.Text) <> '') then begin
                  If tBeneficiarioTipo.Value = 'C' then tPagarReceber.SQL.Add('AND (Cliente    = :pBeneficiario) ');
                  If tBeneficiarioTipo.Value = 'F' then tPagarReceber.SQL.Add('AND (Fornecedor = :pBeneficiario) ');
                  If tBeneficiarioTipo.Value = 'O' then tPagarReceber.SQL.Add('AND (Orgao      = :pBeneficiario) ');
                  tPagarReceber.ParamByName('pBeneficiario').AsString := Trim(Copy(tBeneficiarioCodigo.Value,3,7));
               End;

               // Outras Empresas.
               If cConsol.ItemIndex = 1 then begin
                  tEmpresas.SQL.Clear;
                  tEmpresas.SQL.Add('SELECT Codigo, Matriz_Filial, Numero_Filial, Estado, CNPJ, Banco_Dados ');
                  tEmpresas.SQL.Add('FROM   Empresas WHERE(Codigo <> :pEmpresa) AND (Consolidar = 1) AND SUBSTRING(CNPJ, 1, 8) = :pCNPJ ORDER BY Numero_Filial');
                  tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                  tEmpresas.ParamByName('pCNPJ').AsString     := Copy(EmpresasCNPJ.AsString, 1, 8);
                  tEmpresas.Open;

                  mSQLMatriz := tPagarReceber.SQL.Text;

                  tEmpresas.First;
                  While not tEmpresas.Eof do begin
                        If Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                           mSQLFilial := RemoveCaracter('USE '+ EmpresasBanco_Dados.AsString, '', mSQLMatriz );
                           mSQLFilial := RemoveCaracter('CentroCusto'            , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.CentroCusto'            , mSQLFilial);
                           If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                              mSQLFilial := RemoveCaracter('ClassificacaoFinanceira', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ClassificacaoFinanceira', mSQLFilial);
                           End;
                           mSQLFilial := RemoveCaracter('PagarReceberBaixas PB'  , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceberBaixas PB'  , mSQLFilial);
                           mSQLFilial := RemoveCaracter('PagarReceber PR'        , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.PagarReceber PR'        , mSQLFilial);
                           mSQLFilial := RemoveCaracter('Clientes'               , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Clientes'               , mSQLFilial);
                           mSQLFilial := RemoveCaracter('Fornecedores'           , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Fornecedores'           , mSQLFilial);
                           mSQLFilial := RemoveCaracter('ProcessosDocumentos PD' , tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.ProcessosDocumentos PD' , mSQLFilial);
                           mSQLFilial := RemoveCaracter(':pEmpresa'              , tEmpresas.FieldByName('Codigo').AsString, mSQLFilial);
                           If ConfiguracaoCompartilhar_Bancos.AsBoolean = false then begin
                              mSQLFilial := RemoveCaracter('Bancos', tEmpresas.FieldByName('Banco_Dados').AsString+'.dbo.Bancos', mSQLFilial);
                           End;

                           tPagarReceber.SQL.Add('UNION ALL');
                           tPagarReceber.SQL.Add(mSQLFilial);
                        End;
                        tEmpresas.Next;
                  End;
               End;
               tPagarReceber.SQL.Add('order by pb.Data, pb.Tipo desc, pb.Registro, Nome_Beneficiario, Classificacao');
               //tPagarReceber.SQL.SaveToFile('c:\temp\Extrato_Bancario.SQL');
               tPagarReceber.Open;

               Empresas.Open;
               Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);

               // Apurando o Saldo Anterior do banco da "Matriz".
               tPagamentos.SQL.Clear;
               tPagamentos.SQL.Add('SELECT SUM(CAST(ISNULL(Valor, 0) AS DECIMAL(18,2))) AS Pagamentos');
               tPagamentos.SQL.Add('FROM   PagarReceberBaixas PB, PagarReceber PR');
               tPagamentos.SQL.Add('WHERE  (PR.Numero = PB.Numero) AND (Data < :pData) AND (ISNULL(PB.Banco,0) <> 0) AND (PB.Banco_Conta = :pConta) AND (PB.Tipo = ''P'') AND (PR.Nivel <= :pNivel)');
               tPagamentos.ParamByName('pData').AsDate     := cDataIni.Date;
               tPagamentos.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
               tPagamentos.ParamByName('pConta').AsString  := BancosConta.AsString;
               tPagamentos.Open;

               tRecebimentos.SQL.Clear;
               tRecebimentos.SQL.Add('SELECT SUM(CAST(ISNULL(Valor,0) AS DECIMAL(18,2))) AS Recebimentos');
               tRecebimentos.SQL.Add('FROM   PagarReceberBaixas PB, PagarReceber PR');
               tRecebimentos.SQL.Add('WHERE  (PR.Numero = PB.Numero) AND (Data < :pData) AND (ISNULL(PB.Banco,0) <> 0) AND (PB.Banco_Conta = :pConta) AND (PB.Tipo = ''R'') AND (PR.Nivel <= :pNivel)');
               tRecebimentos.ParamByName('pData').AsDate     := cDataIni.Date;
               tRecebimentos.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
               tRecebimentos.ParamByName('pConta').AsString  := BancosConta.AsString;
               tRecebimentos.Open;

               mSaldo := Bancos.FieldByName('Saldo').AsCurrency + tRecebimentos.FieldByName('Recebimentos').AsCurrency - tPagamentos.FieldByName('Pagamentos').AsCurrency;
               
               If cConsol.ItemIndex = 1 then begin
                  tEmpresas.SQL.Clear;
                  tEmpresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo <> :pEmpresa) AND (Consolidar = 1) ORDER BY Numero_Filial');
                  tEmpresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                  tEmpresas.Open;

                  tEmpresas.First;
                  While not tEmpresas.Eof do begin
                        If Copy(tEmpresas.FieldByName('CNPJ').AsString, 1, 8) = Copy(Empresas.FieldByName('CNPJ').AsString, 1, 8) then begin
                           // Apurando o Saldo Anterior do banco das "Filiais".
                           tPagamentos.SQL.Clear;
                           tPagamentos.SQL.Add('USE '+ tEmpresas.FieldByName('Banco_Dados').AsString);
                           tPagamentos.SQL.Add('SELECT SUM(CAST(ISNULL(Valor,0) AS DECIMAL(18,2))) AS Pagamentos');
                           tPagamentos.SQL.Add('FROM   PagarReceberBaixas PB, PagarReceber PR');
                           tPagamentos.SQL.Add('WHERE  (PR.Numero = PB.Numero) AND (Data < :pData) AND (ISNULL(PB.Banco,0) <> 0) AND (PB.Banco_Conta = :pConta) AND (PB.Tipo = ''P'') AND (PR.Nivel <= :pNivel)');
                           tPagamentos.ParamByName('pData').AsDate     := cDataIni.Date;
                           tPagamentos.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
                           tPagamentos.ParamByName('pConta').AsString  := BancosConta.AsString;
                           //tPagamentos.SQL.SaveToFile('c:\temp\Extrato_Pagamentos.sql');
                           tPagamentos.Open;

                           tRecebimentos.SQL.Clear;
                           tRecebimentos.SQL.Add('USE '+ tEmpresas.FieldByName('Banco_Dados').AsString);
                           tRecebimentos.SQL.Add('SELECT SUM(CAST(ISNULL(Valor, 0) AS DECIMAL(18,2))) AS Recebimentos');
                           tRecebimentos.SQL.Add('FROM   PagarReceberBaixas PB, PagarReceber PR');
                           tRecebimentos.SQL.Add('WHERE  (PR.Numero = PB.Numero) AND (Data < :pData) AND (ISNULL(PB.Banco,0) <> 0) AND (PB.Banco_Conta = :pConta) AND (PB.Tipo = ''R'') AND (PR.Nivel <= :pNivel)');
                           tRecebimentos.ParamByName('pData').AsDate     := cDataIni.Date;
                           tRecebimentos.ParamByName('pConta').AsString  := BancosConta.AsString;
                           tRecebimentos.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
                           //tRecebimentos.SQL.SaveToFile('c:\temp\Extrato_Recebimentos.sql');
                           tRecebimentos.Open;

                           mSaldo := Roundto(mSaldo + tRecebimentos.FieldByName('Recebimentos').AsCurrency - tPagamentos.FieldByName('Pagamentos').AsCurrency, -2);
                        End;

                        tEmpresas.Next;
                  End;
               End;

               lSaldo.Value := mSaldo;
          End;

          If cConsol.ItemIndex = 0 then
             lConsol.Text := '- INDIVIDUAL -'
          else
             lConsol.Text := '- CONSOLIDADO -';

          If cExcel.Checked = false then begin
             if FileExists(Dados.EmpresasLogo.Value) then begin
                iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
             end;
             lBanco.Visible := cBanco.KeyValue <> null;

             rF02.Print;
             rF02.FreeOnRelease;
             rF02.Reset;
          end else begin
             ExportaEXCEL;
          End;
       End;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.cBeneficiarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.bDetalheBeforePrint(Sender: TObject);
begin
      fFaixa.Visible := not fFaixa.Visible;
      tBeneficiario.Locate('Codigo', tPagarReceber.FieldByName('Beneficiario').Value, [loCaseInsensitive]);
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.bLimparClick( Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cProcesso.KeyValue      := 0;
      cCentroCusto.KeyValue   := 0;
      cClassificacao.KeyValue := 0;
      cBanco.KeyValue         := 0;
      cBeneficiario.KeyValue  := 0;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.cBancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.cClassificacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.cCentroCustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.cProcessoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.lSaldoAnteriorCalc(Sender: TObject; var Value: Variant);
begin
     lSaldoAnterior.Value := mSaldo;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.pPagarReceberFirst(Sender: TObject);
begin
      lSaldo.Value := mSaldo;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.lSaldoCalc(Sender: TObject;var Value: Variant);
begin
      Value := Value - tPagarReceber.FieldByName('Debito').AsCurrency + tPagarReceber.FieldByName('Credito').AsCurrency;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.lTotalSaldoCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value - tPagarReceber.FieldByName('Debito').Value + tPagarReceber.FieldByName('Credito').Value;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.lTotalRecebimentosCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tPagarReceber.FieldByName('Credito').Value;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.lTotalPagamentosCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tPagarReceber.FieldByName('Debito').Value;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.ppSummaryBand1BeforePrint(Sender: TObject);
begin
      lTotalSaldo.Value := mSaldo + lTotalRecebimentos.Value - lTotalPagamentos.Value;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.lSaldoMesCalc(Sender: TObject; var Value: Variant);
begin
      Value := lSaldo.Value;
end;

procedure TImpressao_FinanceirosOP_ExtratoBanco.rF02BeforePrint(Sender: TObject);
begin
      pRodapeGrupoDia.Visible := cTotalDiario.Checked;
      pRodapeGrupoMes.Visible := cTotalMensal.Checked;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_ExtratoBanco.ExportaEXCEL;
var
   mPlanilha: Variant;
   mLinha   : Integer;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tPagarReceber.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');

      mPlanilha.WorkBooks.add(1);

      mPlanilha.Visible := false;
      mPlanilha.Range['A4','L4'].Interior.Color    := clNavy;
      mPlanilha.Range['A4','L4'].Interior.Pattern  := 1;
      mPlanilha.Range['A4','L4'].Font.Bold         := true;
      mPlanilha.Range['A4','L4'].Font.Color        := clWhite;
      mPlanilha.Range['A4','L4'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A4','L4'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['A4','L4'].Borders.Color     := RGB(0,0,0);

      mPlanilha.Cells[04,01] := 'ORIGEM';
      mPlanilha.Cells[04,02] := 'DATA';
      mPlanilha.Cells[04,03] := 'BENEFICIÁRIO/CLIENTE';
      mPlanilha.Cells[04,04] := 'CENTRO CUSTO';
      mPlanilha.Cells[04,05] := 'CLASSIFICAÇÃO FINANCEIRA';
      mPlanilha.Cells[04,06] := 'PROCESSO';
      mPlanilha.Cells[04,07] := 'Nº DOCUMENTO';
      mPlanilha.Cells[04,08] := 'CHEQUE';
      mPlanilha.Cells[04,09] := 'DÉBITO';
      mPlanilha.Cells[04,10] := 'CRÉDITO.';
      mPlanilha.Cells[04,11] := 'SALDO';
      mPlanilha.Cells[04,12] := 'BANCO';

      mPlanilha.Range['A4','L4'].HorizontalAlignment := 3;
      mPlanilha.Range['A4','L4'].VerticalAlignment   := 2;
      mPlanilha.Range['A4','L4'].Font.Size           := 8;

      mPlanilha.Range['J5','K5'].Font.Size         := 8;
      mPlanilha.Range['J5','K5'].Interior.Color    := RGB(255, 255, 140);
      mPlanilha.Range['J5','K5'].Interior.Pattern  := 1;
      mPlanilha.Range['J5','K5'].Font.Bold         := true;
      mPlanilha.Range['J5','K5'].Font.Color        := clBlack;
      mPlanilha.Range['J5','K5'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['J5','K5'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Cells[5,10]                        := 'SALDO';
      mPlanilha.Cells[5,11]                        := mSaldo;
      mPlanilha.Cells[5,11].NumberFormat           := '#.##0,00_);(#.##0,00)';

      mLinha := 6;

      While (not tPagarReceber.Eof) and (not Funcoes.Cancelado) do Begin
            mPlanilha.Range['A'+InttoStr(mLinha),'L'+InttoStr(mLinha)].Font.Size      := 8;
            mPlanilha.Range['K'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Interior.Color := RGB(255, 255, 140);
            mPlanilha.Range['K'+InttoStr(mLinha),'K'+InttoStr(mLinha)].Borders.LineStyle := 1; //xlContinuous;

            mSaldo := mSaldo - tPagarReceber.FieldByName('Debito').AsFloat + tPagarReceber.FieldByName('Credito').AsFloat;

            mPlanilha.Cells[mLinha,01] := tPagarReceber.FieldByName('Origem').AsString;
            mPlanilha.Cells[mLinha,02] := tPagarReceber.FieldByName('Data_Baixa').Value;
            mPlanilha.Cells[mLinha,03] := tPagarReceber.FieldByName('Nome_Beneficiario').AsString;
            mPlanilha.Cells[mLinha,04] := tPagarReceber.FieldByName('Descricao_CC').AsString;
            mPlanilha.Cells[mLinha,05] := tPagarReceber.FieldByName('Classificacao').AsString+' - '+tPagarReceber.FieldByName('Descricao_Classificacao').AsString;
            mPlanilha.Cells[mLinha,06] := tPagarReceber.FieldByName('Processo').AsString;
            mPlanilha.Cells[mLinha,07] := tPagarReceber.FieldByName('Numero_Documento').AsString;
            mPlanilha.Cells[mLinha,08] := '''' +tPagarReceber.FieldByName('Numero_FormaTipo').AsString;
            mPlanilha.Cells[mLinha,09] := tPagarReceber.FieldByName('Debito').AsFloat;
            mPlanilha.Cells[mLinha,10] := tPagarReceber.FieldByName('Credito').AsFloat;
            mPlanilha.Cells[mLinha,11] := mSaldo;
            mPlanilha.Cells[mLinha,12] := tPagarReceber.FieldByName('Banco_Nome').asstring;

            mPlanilha.Cells[mLinha,09].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,10].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,11].NumberFormat := '#.##0,00_);(#.##0,00)';

            tPagarReceber.Next;

            Inc(mLinha);
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
      end;

      //Fecha o Excel.
      If Funcoes.Cancelado = true then begin
         mPlanilha.Free;
         mPlanilha.Destroy;
      End;

      mPlanilha.Columns.Autofit;
      mPlanilha.Cells[04,09].ColumnWidth := 12;
      mPlanilha.Cells[04,10].ColumnWidth := 12;
      mPlanilha.Cells[04,11].ColumnWidth := 12;

      Inc(mLinha);
      mPlanilha.Cells[1,01]                          := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
      mPlanilha.Range['A1','A1'].Font.Size           := 14;
      mPlanilha.Range['A1','A1'].Font.Bold           := true;
      mPlanilha.Range['A1','K1'].Mergecells          := True;
      mPlanilha.Range['A1','L1'].HorizontalAlignment := 3;
      mPlanilha.Cells[2,01]                          := 'Extrato de Conta - Período de '+cDataIni.Text + ' á ' + cDataFim.Text;
      mPlanilha.Range['A2','A2'].Font.Size           := 12;
      mPlanilha.Range['A2','L2'].Mergecells          := True;
      mPlanilha.Range['A2','L2'].HorizontalAlignment := 3;
      if cBanco.KeyValue <> null then begin
         mPlanilha.Cells[3,01] := 'BANCO :'+Dados.BancosNome.AsString +'  CC :'+ Dados.BancosConta.AsString;
      end else begin
         mPlanilha.Cells[3,01] := 'BANCO : *TODOS*  -  CC :'+ Dados.BancosConta.AsString;
      end;
      mPlanilha.Range['A3','A3'].Font.Size           := 12;
      mPlanilha.Range['A3','L3'].Mergecells          := True;
      mPlanilha.Range['A3','L3'].HorizontalAlignment := 3;

      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;



end.
