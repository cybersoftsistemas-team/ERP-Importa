unit frmImpressao_FinanceirosOP_PagarReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls, DBCtrls, RxLookup, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport,ppBands, ppCache, ppPrnabl, ppCtrls, DB, ppVar, Funcoes, MemDS, DBAccess, MSAccess, INIFiles,  ppParameter, Grids, DBGrids, CheckLst, MaskUtils, ComObj,
  ppDesignLayer, system.UITypes, RxToolEdit, ppStrtch, ppSubRpt;

type
  TImpressao_FinanceirosOP_PagarReceber = class(TForm)
    cDataIni: TDateEdit;
    lData: TStaticText;
    cDataFim: TDateEdit;
    StaticText2: TStaticText;
    cLancamentos: TRadioGroup;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText4: TStaticText;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    cCentroCusto: TRxDBLookupCombo;
    cProcesso: TRxDBLookupCombo;
    pPagarReceber: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    StaticText6: TStaticText;
    cBanco: TRxDBLookupCombo;
    StaticText7: TStaticText;
    tBeneficiario: TMSQuery;
    dstBeneficiario: TDataSource;
    bLimpar: TButton;
    cBeneficiario: TRxDBLookupCombo;
    tBeneficiarioCNPJ: TStringField;
    cMovimento: TRadioGroup;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    rF01b: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText14: TppDBText;
    lTitulo: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    lPeriodo: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSummaryBand2: TppSummaryBand;
    cTotalPago: TppVariable;
    ppLine8: TppLine;
    ppLabel36: TppLabel;
    cTotalRecebido: TppVariable;
    ppParameterList2: TppParameterList;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    lDias: TppLabel;
    cDespesas: TRadioGroup;
    StaticText9: TStaticText;
    cCliente: TRxDBLookupCombo;
    cFixas: TRadioGroup;
    cTotalDiario: TCheckBox;
    cTotalMensal: TCheckBox;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    pRodapeGrupoDia: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    pRodaPeGrupoMes: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel1: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel2: TppLabel;
    cSaldo: TppVariable;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    cEmpresas: TCheckListBox;
    StaticText10: TStaticText;
    bTodas: TButton;
    cConsolidar: TCheckBox;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    pRodaPeGrupoEmpresa: TppGroupFooterBand;
    ppLine9: TppLine;
    ppLabel3: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine10: TppLine;
    ppDBCalc6: TppDBCalc;
    ppVariable4: TppVariable;
    ppDBText1: TppDBText;
    cQuebraMes: TCheckBox;
    cPagamentosBaixados: TppVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    cRecebimentosBaixados: TppVariable;
    tSaldoRecebimentos: TppVariable;
    ppLabel9: TppLabel;
    cTotalDiferenca: TppVariable;
    ppLine11: TppLine;
    cDocumentos: TRadioGroup;
    cExcel: TCheckBox;
    ppDBText2: TppDBText;
    ppLabel10: TppLabel;
    tSaldoPagamentos: TppVariable;
    ppLabel5: TppLabel;
    ppLabel4: TppLabel;
    ppGroup4: TppGroup;
    gTitulo: TppGroupHeaderBand;
    gRodapeNumero: TppGroupFooterBand;
    cZebrado: TCheckBox;
    cTitulo: TCheckBox;
    ppLine12: TppLine;
    tBeneficiarioCodigo: TStringField;
    tBeneficiarioNome: TStringField;
    tBeneficiarioTipo: TStringField;
    cDataDOCIni: TDateEdit;
    StaticText1: TStaticText;
    cDataDOCFim: TDateEdit;
    StaticText8: TStaticText;
    cDiferenciado: TCheckBox;
    iLogo: TppImage;
    StaticText11: TStaticText;
    cDRE: TRxDBLookupCombo;
    cAgruparClass: TCheckBox;
    ppGroup5: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    pRodapeGrupoClass: TppGroupFooterBand;
    ppLine13: TppLine;
    ppLabel12: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLine14: TppLine;
    ppDBCalc8: TppDBCalc;
    ppVariable5: TppVariable;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    StaticText12: TStaticText;
    cCondicao: TRxDBLookupCombo;
    tBeneficiarioCPF: TStringField;
    cConsolBenef: TCheckBox;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppLine15: TppLine;
    tTmp: TMSQuery;
    ppLabel15: TppLabel;
    cTotalGeral: TppVariable;
    cAdianta: TCheckBox;
    ppLine16: TppLine;
    ppLabel14: TppLabel;
    cSaldoAnterior: TppVariable;
    cAgruparBenef: TCheckBox;
    ppGroup6: TppGroup;
    pCabGrupoBenef: TppGroupHeaderBand;
    pRodapeGrupoBenef: TppGroupFooterBand;
    ppLine17: TppLine;
    ppLabel11: TppLabel;
    ppLine18: TppLine;
    ppVariable1: TppVariable;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    cDataBaixa: TCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cCentroCustoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cProcessoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cClassificacaoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure bDetalheBeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure cMovimentoClick(Sender: TObject);
    procedure cDespesasClick(Sender: TObject);
    procedure cSaldoCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure bTodasClick(Sender: TObject);
    procedure Consolidar;
    procedure ppVariable4Calc(Sender: TObject; var Value: Variant);
    procedure ppDetailBand1AfterPrint(Sender: TObject);
    procedure ExportaEXCEL;
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure cSaldoAnteriorCalc(Sender: TObject; var Value: Variant);
    procedure cAgruparClassClick(Sender: TObject);
    procedure cAgruparBenefClick(Sender: TObject);
    procedure ppVariable5Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
     mEmpresas : Array[0..100, 0..100] of String;
     mSaldo,mSaldoAnt: Real;
     mNumero: Integer;
  end;

var
  Impressao_FinanceirosOP_PagarReceber: TImpressao_FinanceirosOP_PagarReceber;

implementation

uses frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_FinanceirosOP_PagarReceber.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
   i   : Integer;
begin
      // Registrando as ultimas opções utilizadas no relatório para ficar default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Lancamento'    , cLancamentos.ItemIndex );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F01', 'DataIni'       , cDataIni.Date );
      aINI.WriteDate   ('IMPRESSAO_FINANCEIROS_F01', 'DataFim'       , cDataFim.Date );
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'DataDOCIni'    , cDataDOCIni.Text );
      aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'DataDOCFim'    , cDataDOCFim.Text );
      If cProcesso.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Processo', cProcesso.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Processo', '');

      If cCliente.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Cliente', cCliente.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Cliente', '');

      If cCentroCusto.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'CentroCusto', cCentroCusto.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'CentroCusto', '');

      If cClassificacao.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Classificacao', cClassificacao.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Classificacao', '');

      If cDRE.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'DRE', cDRE.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'DRE', '');

      If cBanco.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Banco', cBanco.KeyValue )
      else
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Banco', 0);

      If cCondicao.KeyValue <> null then
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Condicao', cCondicao.KeyValue )
      else
         aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Condicao', 0);

      If cBeneficiario.KeyValue <> null then
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Beneficiario', cBeneficiario.KeyValue )
      else
         aINI.WriteString ('IMPRESSAO_FINANCEIROS_F01', 'Beneficiario', '');

      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Lancamento'   , cLancamentos.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Movimento'    , cMovimento.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Despesa'      , cDespesas.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Fixas'        , cFixas.ItemIndex );
      aINI.WriteInteger('IMPRESSAO_FINANCEIROS_F01', 'Documentos'   , cDocumentos.ItemIndex );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'TotalDiario'  , cTotalDiario.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'TotalMensal'  , cTotalMensal.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'Consolidar'   , cConsolidar.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'Excel'        , cExcel.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'Zebrado'      , cZebrado.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'Titulo'       , cTitulo.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'Diferenciado' , cDiferenciado.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'AgruparClass' , cAgruparClass.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'AgruparBenef' , cAgruparBenef.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'ConsolBenef'  , cConsolBenef.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'Adiantamento' , cAdianta.Checked );
      aINI.WriteBool   ('IMPRESSAO_FINANCEIROS_F01', 'DataBaixa'    , cDataBaixa.Checked );
      aINI.Free;

      tTitulos.sql.Clear;
      tTitulos.sql.Add('USE '+Dados.EmpresasBanco_Dados.AsString);
      tTitulos.Execute;

      For i := 0 to ComponentCount -1 do begin
          If Components[i] is TMSQuery then  begin
             TMSQuery(Components[i]).Close;
          End;
      End;

      Impressao_FinanceirosOP_PagarReceber.Release;
      Impressao_FinanceirosOP_PagarReceber := nil;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.FormShow(Sender: TObject);
var
     aINI  : TIniFile;
     i     : Integer;
begin
      With Dados do begin
           Configuracao.Open;

           Empresas.sql.Clear;
           Empresas.sql.ADD('SELECT * FROM Empresas WHERE Codigo = '+inttostr(Menu_Principal.mEmpresa));
           Empresas.Open;

           ProcessosDOC.sql.Clear;
           ProcessosDOC.sql.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           Bancos.sql.Clear;
           Bancos.sql.Add('SELECT * FROM Bancos WHERE(Desativado <> 1)');
           Bancos.Open;

           CentroCusto.sql.Clear;
           CentroCusto.sql.Add('SELECT * FROM CentroCusto ORDER BY Descricao, Codigo');
           CentroCusto.Open;

           with ClassificacaoFinanceira do begin
                sql.Clear;
                sql.Add('SELECT *');
                sql.Add('FROM ClassificacaoFinanceira');
                sql.Add('WHERE Desativada <> 1');
                if not ConfiguracaoCompartilhar_Classificacao.asboolean then
                   sql.Add('AND Codigo IN(SELECT DISTINCT Classificacao FROM PagarReceber)')
                else
                   sql.Add('AND Codigo IN(SELECT DISTINCT Classificacao FROM '+EmpresasBanco_Dados.asstring+'.dbo.PagarReceber)');

                sql.Add('ORDER BY Descricao, Codigo');
                //sql.SaveToFile('c:\temp\Impressao_Pagar_Receber.sql');
                open;
           end;

           DRE.sql.Clear;
           DRE.sql.Add('SELECT * FROM DRE ORDER BY Descricao, Codigo');
           DRE.Open;

           Clientes.sql.Clear;
           Clientes.sql.Add('SELECT * FROM Clientes WHERE(Codigo IN(SELECT DISTINCT Cliente FROM ProcessosDocumentos)) ORDER BY Nome');
           Clientes.Open;

           with tBeneficiario do begin
                sql.Clear;
                sql.Add('SELECT DISTINCT '+QuotedStr('C-')+'+CAST(Codigo AS VARCHAR(10)) AS Codigo');
                sql.Add('           , Nome');
                sql.Add('           , CNPJ');
                sql.Add('           , CPF');
                sql.Add('           , '+QuotedStr('C')+' AS Tipo');
                sql.Add('FROM Clientes');
                sql.Add('WHERE Codigo IN(SELECT DISTINCT Cliente FROM PagarReceber WHERE Cliente <> 0)');
                sql.Add('UNION ALL');
                sql.Add('SELECT '+QuotedStr('F-')+'+CAST(Codigo AS VARCHAR(10)) AS Codigo');
                sql.Add('      , Nome');
                sql.Add('      , CNPJ');
                sql.Add('      , CPF');
                sql.Add('      , '+QuotedStr('F')+' AS Tipo');
                sql.Add('FROM Fornecedores');
                sql.Add('WHERE Codigo IN(SELECT DISTINCT Fornecedor FROM PagarReceber WHERE Fornecedor <> 0)');
                sql.Add('UNION ALL');
                sql.Add('SELECT '+QuotedStr('O-')+'+RTRIM(Codigo) AS Codigo');
                sql.Add('      , Nome');
                sql.Add('      ,'''' ' );
                sql.Add('      , '''' ');
                sql.Add('      ,'+QuotedStr('O') );
                sql.Add('FROM Cybersoft_Cadastros.dbo.OrgaosPublicos');
                sql.Add('WHERE Codigo IN(SELECT DISTINCT Orgao FROM PagarReceber WHERE Orgao <> '''' )');
                sql.Add('ORDER BY Nome');
                //sql.SaveToFile('c:\temp\Beneficiario.SQL');
                Open;
           end;

           ModalidadesPgto.sql.Clear;
           ModalidadesPgto.sql.Add('SELECT * FROM ModalidadesPagamento ORDER BY Codigo');
           ModalidadesPgto.Open;

           Empresas.sql.Clear;
           Empresas.sql.ADD('SELECT * FROM Empresas WHERE(Consolidar = 1) ORDER BY CNPJ');
           Empresas.Open;
           cEmpresas.Clear;

           i := 0;
           Empresas.First;
           While not Empresas.Eof do begin
                 If EmpresasCodigo.Value <> Menu_Principal.mEmpresa then begin
                    cEmpresas.Items.Add(FormatMaskText('##.###.###/####-##;0; ', EmpresasCNPJ.AsString) + ' - '+EmpresasRazao_Social.AsString);
                    mEmpresas[0,i] := EmpresasBanco_Dados.AsString;
                    mEmpresas[1,i] := EmpresasCodigo.AsString;
                    Inc(i);
                 End;    
                 Empresas.Next;
           End;
           Empresas.sql.Clear;
           Empresas.sql.ADD('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa) ORDER BY CNPJ');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           //cForma.Enabled := cMovimento.ItemIndex = 1;
           //cBanco.Enabled := cMovimento.ItemIndex = 1;
           If cMovimento.ItemIndex <> 1 then begin
              //cBanco.KeyValue := -1;
              lData.Caption   := 'Vencimento';
           end else begin
              lData.Caption := 'Baixa';
           End;
      End;

      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cDataIni.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F01', 'DataIni'      , Date );
      cDataFim.Date           := aINI.ReadDate   ('IMPRESSAO_FINANCEIROS_F01', 'DataFim'      , Date );
      cDataDOCIni.Text        := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'DataDOCIni'   , '' );
      cDataDOCFim.Text        := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'DataDOCFim'   , '' );
      cProcesso.KeyValue      := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'Processo'     , '' );
      cCliente.KeyValue       := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'Cliente'      , '' );
      cCentroCusto.KeyValue   := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'CentroCusto'  , '' );
      cClassificacao.KeyValue := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'Classificacao', '' );
      cDRE.KeyValue           := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'DRE'          , '' );
      cBanco.KeyValue         := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F01', 'Banco'        , 0 );
      cCondicao.KeyValue      := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F01', 'Condicao'     , 0 );
      cBeneficiario.KeyValue  := aINI.ReadString ('IMPRESSAO_FINANCEIROS_F01', 'Beneficiario' , '0' );
      cLancamentos.ItemIndex  := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F01', 'Lancamento'   , 2 );
      cMovimento.ItemIndex    := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F01', 'Movimento'    , 2 );
      cDespesas.ItemIndex     := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F01', 'Despesa'      , 2 );
      cFixas.ItemIndex        := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F01', 'Fixas'        , 2 );
      cDocumentos.ItemIndex   := aINI.ReadInteger('IMPRESSAO_FINANCEIROS_F01', 'Documentos'   , 2 );
      cTotalDiario.Checked    := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'TotalDiario'  , false );
      cTotalMensal.Checked    := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'TotalMensal'  , false );
      cConsolidar.Checked     := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'Consolidar'   , false );
      cExcel.Checked          := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'Excel'        , false );
      cZebrado.Checked        := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'Zebrado'      , false );
      cTitulo.Checked         := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'Titulo'       , false );
      cDiferenciado.Checked   := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'Diferenciado' , false );
      cAgruparClass.Checked   := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'AgruparClass' , false );
      cAgruparBenef.Checked   := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'AgruparBenef' , false );
      cConsolBenef.Checked    := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'ConsolBenef'  , false );
      cAdianta.Checked        := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'Adiantamento' , true);
      cDataBaixa.Checked      := aINI.ReadBool   ('IMPRESSAO_FINANCEIROS_F01', 'DataBaixa'    , true);
      aINI.Free;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.cAgruparBenefClick(Sender: TObject);
begin
     if cAgruparBenef.Checked then cAgruparClass.Checked := false;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.cAgruparClassClick(Sender: TObject);
begin
     if cAgruparClass.Checked then cAgruparBenef.Checked := false;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.cCentroCustoKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_PagarReceber.cProcessoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_PagarReceber.cClassificacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TImpressao_FinanceirosOP_PagarReceber.bImprimirClick(Sender: TObject);
begin
     If (DataLimpa(cDataIni.Text) and DataLimpa(cDataFim.Text) and DataLimpa(cDataDOCIni.Text) and DataLimpa(cDataDOCFim.Text)) then begin
        MessageDlg('Não há um período informado!'+#13+#13+'É necessário informar uma data inicial e final para a data do "Vencimento" ou de "Emissão".', mtInformation, [mbOK], 0);
        Exit;
     End;

     If cLancamentos.ItemIndex = 0 then lTitulo.Caption := 'Contas a Pagar ';
     If cLancamentos.ItemIndex = 1 then lTitulo.Caption := 'Contas a Receber ';
     If cLancamentos.ItemIndex = 2 then lTitulo.Caption := 'Contas a Pagar/Receber ';

     If cMovimento.ItemIndex = 0 then lTitulo.Caption := lTitulo.Caption + '(Abertas)';
     If cMovimento.ItemIndex = 1 then lTitulo.Caption := lTitulo.Caption + '(Baixadas)';
     If cMovimento.ItemIndex = 2 then lTitulo.Caption := lTitulo.Caption + '(Abertas/Baixadas)';

     If Dados.EmpresasMatriz_Filial.AsBoolean then
        lTitulo.Caption := lTitulo.Caption + ' - MATRIZ'
      else
         lTitulo.Caption := lTitulo.Caption + ' - FILIAL '+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

     lPeriodo.Caption := '';
     if trim(cCondicao.text) <> '' then begin
        lPeriodo.Caption := 'Condição de Pagamento: '+Dados.ModalidadesPgtoDescricao.asstring;
     end;

     if not DataLimpa(cDataIni.Text) then begin
        lPeriodo.Caption := lPeriodo.Caption + '   |   Período (Dt.Vencto) '+cDataIni.Text + ' a '+cDataFim.Text;
     end;
     if not DataLimpa(cDataDocIni.Text) then begin
        lPeriodo.Caption := lPeriodo.Caption + '   |   Período (Dt.Docto) '+cDataDocIni.Text + ' a '+cDataDocFim.Text;
     end;

     gRodapeNumero.Visible := cTitulo.Checked;

     Consolidar;

     Dados.Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);

     mSaldo                      := 0;
     mNumero                     := tTitulos.FieldByname('Numero').Asinteger;
     pRodapeGrupoDia.Visible     := cTotalDiario.Checked;
     pRodapeGrupoMes.Visible     := cTotalMensal.Checked;
     pRodapeGrupoEmpresa.Visible := cConsolidar.Checked;
     pRodapeGrupoClass.Visible   := cAgruparClass.Checked;
     pRodapeGrupoBenef.Visible   := cAgruparBenef.Checked;
     rF01b.Groups[1].NewPage     := cQuebraMes.Checked;

     If tTitulos.RecordCount = 0 then begin
        MessageDlg('Não há dados com os filtros informados!'+#13+#13+'Por favor verifique os filtros e tente novamente.', mtInformation, [mbOK], 0);
     end else begin
        If not cExcel.Checked then begin
           if fileExists(Dados.EmpresasLogo.Value) then iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           rF01b.Print;
           rF01b.FreeOnRelease;
           rF01b.Reset;
        end else begin
           ExportaExcel;
        End;
     End;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.bDetalheBeforePrint(Sender: TObject);
begin
      With Dados do begin
           If cZebrado.Checked then begin
              ppDetailBand1.Background1.Brush.Color := iif(ppDetailBand1.Background1.Brush.Color = clWhite, $00FFEBC1, clWhite);
           End;   
           // Calcula a quantidade de dias em atraso.
           lDias.Caption := '';
           If (tTitulos.FieldByName('Data_Baixado').Value > tTitulos.FieldByName('Data_Vencimento').Value) then begin
              lDias.Caption := DifDias( tTitulos.FieldByName('Data_Vencimento').Value, tTitulos.FieldByName('Data_Baixado').Value);
           end else begin
              If (tTitulos.FieldByName('Data_Vencimento').Value < Date) and (DataLimpa(tTitulos.FieldByName('Data_Baixado').AsString)) then begin
                 lDias.Caption := DifDias( tTitulos.FieldByName('Data_Vencimento').Value, Date);
              end;
           end;       
      End;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FinanceirosOP_PagarReceber.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cProcesso.KeyValue      := 0;
      cCentroCusto.KeyValue   := 0;
      cClassificacao.KeyValue := 0;
      cBanco.KeyValue         := 0;
      cBeneficiario.KeyValue  := 0;
      cCondicao.KeyValue      := 0;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.cMovimentoClick( Sender: TObject);
begin
     If cMovimento.ItemIndex <> 1 then begin
        lData.Caption   := 'Vencimento';
     end else begin
        lData.Caption := 'Baixa';
     End;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.cDespesasClick(Sender: TObject);
begin
      If cDespesas.ItemIndex > 0 then
         cProcesso.Enabled := true
      else begin
         cProcesso.Enabled := false;
         cProcesso.ClearValue;
      End;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.cSaldoAnteriorCalc(Sender: TObject; var Value: Variant);
begin
     cSaldoAnterior.Value := ttmp.fieldbyname('Saldo_Anterior').ascurrency;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.cSaldoCalc(Sender: TObject; var Value: Variant);
begin
      cSaldo.Value :=  mSaldoAnt + cSaldo.Value + tTitulos.FieldByName('Valor_Total').AsCurrency - tTitulos.FieldByName('Valor_Baixa').AsCurrency;
      mSaldoAnt := 0;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
      Value := ppDBCalc10.Value - ppDBCalc11.Value;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
      Value := ppDBCalc4.Value - ppDBCalc1.Value;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
      Value := ppDBCalc2.Value - ppDBCalc3.Value;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.bTodasClick(Sender: TObject);
var
    i: Integer;
begin
      If bTodas.Tag = 0 then begin
         bTodas.Tag := 1;
         For i := 0 to cEmpresas.Items.Count-1 do begin
             cEmpresas.Checked[i] := true;
         End;
      end else begin
         For i := 0 to cEmpresas.Items.Count-1 do begin
             cEmpresas.Checked[i] := false;
         End;
         bTodas.Tag := 0;
      End;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.Consolidar;
var
   i       : Integer;
   mSQL    : WideString;
   mSQLNovo: TMemo;
   mCPF
  ,mCNPJ
  ,mCompClass
  ,mDtOrdem
  ,mCompBancos:string;
begin
     mSQLNovo         := TMemo.Create(Impressao_FinanceirosOP_PagarReceber);
     mSQLNovo.Visible := False;
     mSQLNovo.Parent  := Impressao_FinanceirosOP_PagarReceber;
     mSQLNovo.Clear;
     mCompClass       := iif(Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira', 'ClassificacaoFinanceira');
     mCompBancos      := iif(Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean       , 'Cybersoft_Cadastros.dbo.Bancos'                 , 'Bancos');

     with tTitulos do begin
          sql.Clear;
          sql.Add('SELECT PR.Numero,');
          sql.Add('       (select max(prb.Registro) from PagarReceberBaixas prb where prb.Numero = pr.Numero) as Registro,');
          sql.Add('       PR.Data_Documento,');
          sql.Add('       PR.Data_Vencimento,');
          sql.Add('       PR.Numero_Documento,');
          sql.Add('       PR.Processo,');
          sql.Add('       PR.Adiantamento_Numero,');
          sql.Add('       PR.Numero_FormaTipo,');
          sql.Add('       PR.Valor_Total,');
          sql.Add('       PR.Valor_Operacao,');
          sql.Add('       PR.Valor_Baixado,');
          sql.Add('       PR.Valor_Parcela,');
          sql.Add('       PR.Desconto,');
          sql.Add('       PR.Juros,');
          sql.Add('       PR.Multa,');
          sql.Add('       PR.Tipo,');
          if cDataBaixa.Checked then begin
             If not DataLimpa(cDataIni.Text) then begin
                sql.Add('       ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas AS PRB WHERE PR.Numero = PRB.Numero and prb.Data <= :pDataFim),0) AS Valor_Baixa,');
              end else begin
                sql.Add('       ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas AS PRB WHERE PR.Numero = PRB.Numero and prb.Data <= :pDataDOCFim),0) AS Valor_Baixa,');
              end;
          end else begin
              sql.Add('       ISNULL((SELECT SUM(Valor) FROM PagarReceberBaixas AS PRB WHERE PR.Numero = PRB.Numero), 0) AS Valor_Baixa,');
          end;
          sql.Add('       (SELECT MAX(Data) FROM PagarReceberBaixas AS PRB WHERE(PR.Numero = PRB.Numero) ) AS Data_Baixado,');
          sql.Add('       CASE WHEN Banco <> 0 THEN');
          sql.Add('           (SELECT DISTINCT Conta FROM '+mCompBancos+' AS BC WHERE BC.Codigo = PR.Banco)');
          sql.Add('       ELSE');
          sql.Add('           (SELECT DISTINCT Conta FROM '+mCompBancos+' AS BC WHERE BC.Codigo = (SELECT MAX(Banco) FROM PagarReceberBaixas WHERE Numero = PR.Numero))');
          sql.Add('       END AS Conta_Banco,');
          sql.Add('       CASE ');
          sql.Add('           WHEN Fornecedor <> 0    THEN (SELECT Nome FROM Fornecedores AS FRN WHERE(PR.Fornecedor = FRN.Codigo))');
          sql.Add('           WHEN Cliente    <> 0    THEN (SELECT Nome FROM Clientes     AS CLI WHERE(PR.Cliente = CLI.Codigo))');
          sql.Add('           WHEN Orgao      <> '''' THEN (SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos AS OP WHERE(PR.Orgao = OP.Codigo))');
          sql.Add('       END AS Nome_Beneficiario, ');
          sql.Add('       CASE ');
          sql.Add('           WHEN Fornecedor <> 0    THEN (SELECT Estado FROM Fornecedores AS FRN WHERE(PR.Fornecedor = FRN.Codigo))');
          sql.Add('           WHEN Cliente    <> 0    THEN (SELECT Estado FROM Clientes     AS CLI WHERE(PR.Cliente = CLI.Codigo))');
          sql.Add('       END AS UF, ');
          sql.Add('       CASE ');
          sql.Add('           WHEN Fornecedor <> 0    THEN (SELECT CNPJ FROM Fornecedores AS FRN WHERE(PR.Fornecedor = FRN.Codigo))');
          sql.Add('           WHEN Cliente    <> 0    THEN (SELECT CNPJ FROM Clientes     AS CLI WHERE(PR.Cliente = CLI.Codigo))');
          sql.Add('           WHEN Orgao      <> '''' THEN (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.OrgaosPublicos AS OP WHERE(PR.Orgao = OP.Codigo))');
          sql.Add('       END AS CNPJ_Beneficiario, ');
          sql.Add('       (SELECT Descricao FROM CentroCusto AS CC WHERE(PR.Centro_Custo = CC.Codigo)) AS CentroCusto_Nome, ');
          sql.Add('       Classificacao, ');
          sql.Add('       (SELECT Descricao FROM '+mCompClass+' as CF WHERE(PR.Classificacao = CF.Codigo)) AS Classificacao_Nome,');
          sql.Add('       CAST(MONTH(Data_Vencimento) AS VARCHAR(2))+CAST(YEAR(Data_Vencimento) AS VARCHAR(4)) AS MesAno,');
          sql.Add('       '+InttoStr(Menu_Principal.mEmpresa)+' AS Empresa,');
          sql.Add('       (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+InttoStr(Menu_Principal.mEmpresa)+')) AS CNPJ');
          sql.Add('INTO #TEMP');
          sql.Add('FROM PagarReceber PR');
          sql.Add('WHERE Nivel <= :pNivel ');
          If not DataLimpa(cDataIni.Text) then begin
             if cMovimento.ItemIndex <> 1 then begin
                sql.Add('AND PR.Data_Vencimento BETWEEN :pDataIni AND :pDataFim');
             end else begin
                sql.Add('and (select MAX(Data) from PagarReceberBaixas prb where prb.Numero = pr.Numero)  between  :pDataIni AND :pDataFim');
             end;
          End;
          If not DataLimpa(cDataDOCIni.Text) then begin
             sql.Add('AND PR.Data_Documento BETWEEN :pDataDOCIni AND :pDataDOCFim');
          End;
          sql.Add('AND ISNULL((SELECT Relatorio FROM '+mCompClass+' AS CF WHERE PR.Classificacao = CF.Codigo), 0) <> 1');
          sql.Add('AND ISNULL((SELECT Somente_Faturamento FROM '+mCompClass+' WHERE Codigo = Classificacao), 0) <> 1 ');
          If cDiferenciado.Checked then begin
             sql.Add('AND ISNULL((SELECT Cliente_Diferenciado FROM Clientes CLI WHERE PR.Cliente = LI.Codigo), 0) = 1');
          End;
          If (Trim(cBanco.Text) <> '') then begin
             sql.Add('AND PR.Banco = '+ Dados.Bancos.fieldbyname('Codigo').asstring);
          End;
          If Trim(cCondicao.Text) <> '' then begin
             sql.Add('AND PR.Modalidade_Pgto = :pModalidade' );
          End;
          if cAdianta.Checked then begin
             sql.Add('and isnull((select Adiantamento from '+mCompClass+' as cf where pr.Classificacao = cf.Codigo), 0) = 0');
          End;
          if cLancamentos.ItemIndex = 0 then begin
             sql.Add('AND PR.Tipo = ''P'' ');
          end;
          if cLancamentos.ItemIndex = 1 then begin
             sql.Add('AND PR.Tipo = ''R'' ');
          end;
          
          if not DataLimpa(cDataIni.Text) then begin
             if cMovimento.ItemIndex = 0 then begin
                sql.Add('AND ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero and prb.Data <= :pDataFim), 2),0) < ROUND(Valor_Total, 2)');
             end;
             if cMovimento.ItemIndex = 1 then begin
                sql.Add('AND ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero and prb.Data <= :pDataFim), 2),0) > 0');
             end;
          end else begin
             if cMovimento.ItemIndex = 0 then begin
                sql.Add('AND ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero and prb.Data <= :pDataDOCFim), 2),0) < ROUND(Valor_Total, 2)');
             end;
             if cMovimento.ItemIndex = 1 then begin
                sql.Add('AND ISNULL(ROUND((SELECT SUM(Valor) FROM PagarReceberBaixas PRB WHERE PR.Numero = PRB.Numero and prb.Data <= :pDataDOCFim), 2),0) > 0');
             end;
          end;
          
          If Trim(cProcesso.Text) <> '' then begin
             sql.Add('AND PR.Processo = :pProcesso');
          end else begin
             If cDespesas.ItemIndex = 0 then sql.Add('AND LTRIM(RTRIM(PR.Processo)) = '''' ');     // Despesas internas.
             If cDespesas.ItemIndex = 1 then sql.Add('AND LTRIM(RTRIM(PR.Processo)) <> '''' ');    // Despesas de processos.
          End;
          If Trim(cCliente.Text) <> '' then begin
             sql.Add('AND PR.Processo IN(SELECT DISTINCT Processo FROM ProcessosDocumentos WHERE(Cliente = '+Dados.ClientesCodigo.AsString+')) ');
          End;
          If (Trim(cCentroCusto.Text) <> '') then begin
             sql.Add('AND PR.Centro_Custo = :pCentroCusto');
          End;
          If (Trim(cClassificacao.Text) <> '') then begin
             sql.Add('AND PR.Classificacao = '+QuotedStr(Dados.ClassificacaoFinanceiraCodigo.AsString));
          End;
          if (Trim(cBeneficiario.Text) <> '') then begin
             mCPF  := tBeneficiario.FieldByName('CPF').AsString;
             mCNPJ := tBeneficiario.FieldByName('CNPJ').AsString;
             if not cConsolBenef.Checked then begin
                if (tBeneficiarioTipo.Value = 'C') and (mCNPJ <> '') then begin
                   sql.Add('AND Cliente IN((SELECT Codigo FROM Clientes WHERE CNPJ = '+QuotedStr(mCNPJ)+'))');
                end;
                if (tBeneficiarioTipo.Value = 'C') and (mCPF <> '') then begin
                   sql.Add('AND Cliente IN((SELECT Codigo FROM Clientes WHERE CPF = ' +QuotedStr(mCPF)+') )');
                end;
                if (tBeneficiarioTipo.Value = 'F') and (mCNPJ <> '') then begin
                   sql.Add('AND Fornecedor IN( (SELECT Codigo FROM Fornecedores WHERE CNPJ = '+QuotedStr(mCNPJ)+') )');
                end;
                if (tBeneficiarioTipo.Value = 'F') and (mCPF <> '') then begin
                   sql.Add('AND Fornecedor IN( (SELECT Codigo FROM Fornecedores WHERE CPF = '+QuotedStr(mCPF)+') )');
                end;
                if (tBeneficiarioTipo.Value = 'F') and (mCNPJ = '') and (mCPF = '') then begin
                   sql.Add('AND Fornecedor = '+copy(tBeneficiario.FieldByName('Codigo').AsString, 3, 15));
                end;
                if (tBeneficiarioTipo.Value = 'C') and (mCNPJ = '') and (mCPF = '') then begin
                   sql.Add('AND Cliente = '+copy(tBeneficiario.FieldByName('Codigo').AsString, 3, 15));
                end;
             end else begin
                if (tBeneficiarioTipo.Value = 'C') and (mCNPJ <> '') then begin
                   sql.Add('AND Cliente IN((SELECT Codigo FROM Clientes WHERE SUBSTRING(CNPJ, 1, 8) = '+QuotedStr(copy(mCNPJ, 1, 8))+'))');
                end;
                if (tBeneficiarioTipo.Value = 'C') and (mCPF <> '') then begin
                   sql.Add('AND Cliente IN((SELECT Codigo FROM Clientes WHERE CPF = ' +QuotedStr(mCPF)+') )');
                end;
                if (tBeneficiarioTipo.Value = 'F') and (mCNPJ <> '') then begin
                   sql.Add('AND Fornecedor IN( (SELECT Codigo FROM Fornecedores WHERE SUBSTRING(CNPJ, 1, 8) = '+QuotedStr(copy(mCNPJ, 1, 8))+') )');
                end;
                if (tBeneficiarioTipo.Value = 'F') and (mCPF <> '') then begin
                   sql.Add('AND Fornecedor IN( (SELECT Codigo FROM Fornecedores WHERE CPF = '+QuotedStr(mCPF)+') )');
                end;
             end;
             If tBeneficiarioTipo.Value = 'O' then begin
                sql.Add('AND Orgao = '+QuotedStr(Trim(Copy(tBeneficiarioCodigo.Value,3,7))));
             end;
          end;
          If cFixas.ItemIndex = 0 then begin
             sql.Add('AND (SELECT Despesa_Fixa FROM '+mCompClass+' WHERE(Codigo = Classificacao)) = 1');
          End;
          If cFixas.ItemIndex = 1 then begin
             sql.Add('AND (SELECT Despesa_Fixa FROM '+mCompClass+' WHERE(Codigo = Classificacao)) <> 1');
          End;
          If cDocumentos.ItemIndex = 0 then begin
             sql.Add('AND ISNULL(Provisorio, 0) = 0');
          End;
          If cDocumentos.ItemIndex = 1 then begin
             sql.Add('AND ISNULL(Provisorio, 0) = 1');
          End;
          if (Trim(cDRE.Text) <> '') then begin
             sql.Add('AND (');
             sql.Add('     (SELECT DRE_Principal    FROM '+mCompClass+' WHERE Codigo = Classificacao) = '+Dados.DRECodigo.AsString+' OR');
             sql.Add('     (SELECT DRE_Juros        FROM '+mCompClass+' WHERE Codigo = Classificacao) = '+Dados.DRECodigo.AsString+' OR');
             sql.Add('     (SELECT DRE_Desconto     FROM '+mCompClass+' WHERE Codigo = Classificacao) = '+Dados.DRECodigo.AsString+' OR');
             sql.Add('     (SELECT DRE_DescontoDupl FROM '+mCompClass+' WHERE Codigo = Classificacao) = '+Dados.DRECodigo.AsString);
             sql.Add('    )');
          end;
          mSQLNovo.Lines.Add(tTitulos.sql.Text);

          for i := 0 to cEmpresas.Items.Count-1 do begin
              mSQL := RemoveCaracter('PagarReceber', mEmpresas[0,i]+'.dbo.PagarReceber', tTitulos.sql.Text);
              mSQL := RemoveCaracter('INTO #TEMP', '', mSQL);
              if not Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean then begin
                 mSQL := RemoveCaracter('Bancos ', mEmpresas[0,i]+'.dbo.Bancos ', mSQL);
              end;
              mSQL := RemoveCaracter('Fornecedores ', mEmpresas[0,i]+'.dbo.Fornecedores ', mSQL);
              mSQL := RemoveCaracter('Clientes '    , mEmpresas[0,i]+'.dbo.Clientes '    , mSQL);
              mSQL := RemoveCaracter('CentroCusto ' , mEmpresas[0,i]+'.dbo.CentroCusto ' , mSQL);
              if not Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
                 mSQL := RemoveCaracter('ClassificacaoFinanceira ', mEmpresas[0,i]+'.dbo.ClassificacaoFinanceira', mSQL);
              end;
              mSQL := RemoveCaracter(InttoStr(Menu_Principal.mEmpresa)+' AS Empresa,', mEmpresas[1,i]+' AS Empresa,', mSQL);
              mSQL := RemoveCaracter('(SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+InttoStr(Menu_Principal.mEmpresa)+')) AS CNPJ',  '(SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = '+mEmpresas[1,i]+')) AS CNPJ', mSQL);

              If cMovimento.ItemIndex = 1 then begin
                 mSQL := RemoveCaracter('INTO #TEMP', '', mSQL);
              End;

              If cEmpresas.Checked[i] = true then begin
                 mSQLNovo.Lines.Add('UNION ALL');
                 mSQLNovo.Lines.Add(mSQL);
              End;
          end;
          mDtOrdem := iif(not DataLimpa(cDataIni.Text), 'Data_Vencimento', 'Data_Documento');
          sql.Clear;
          sql.Add(trim(mSQLNovo.Lines.Text));
          sql.Add('UPDATE #TEMP SET Valor_Total = 0 WHERE(Registro <> (SELECT MIN(Registro) FROM #TEMP PRB WHERE(PRB.Numero = #Temp.Numero)))');
          sql.Add('SELECT * FROM #TEMP');
          
          if not cAgruparClass.Checked then begin
             if not cAgruparBenef.Checked then begin
                sql.Add('ORDER BY Empresa, '+mDtOrdem+', MesAno, Numero');
             end else begin
                sql.Add('ORDER BY CNPJ_Beneficiario, '+mDtOrdem);
             end;
          end else begin
             sql.Add('ORDER BY Classificacao, '+mDtOrdem);
          end;
          If not DataLimpa(cDataIni.Text) then begin
             ParamByName('pDataIni').AsDate := cDataIni.Date;
             ParamByName('pDataFim').AsDate := cDataFim.Date;
          End;
          If not DataLimpa(cDataDOCIni.Text) then begin
             ParamByName('pDataDOCIni').AsDate := cDataDOCIni.Date;
             ParamByName('pDataDOCFim').AsDate := cDataDOCFim.Date;
          End;
          ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
          If Trim(cProcesso.Text) <> '' then begin
             ParamByName('pProcesso').AsString := cProcesso.Text;
          end;
          If Trim(cCentroCusto.Text) <> '' then begin
             ParamByName('pCentroCusto').AsString := Dados.CentroCustoCodigo.AsString;
          End;
          If Trim(cCondicao.Text) <> '' then begin
             ParamByName('pModalidade').AsInteger := Dados.ModalidadesPgtoCodigo.AsInteger;
          End;
          sql.Add('DROP TABLE #TEMP');
          //sql.SaveToFile('c:\temp\Impressao_PagarReceber.sql');
          Open;
     end;

     // Apurando o saldo anterior.
     with tTmp do begin
          sql.Clear;
          sql.add('select Valor_Total   = iif(pr.Tipo = ''R'', Valor_Total, Valor_Total *-1)');
          sql.add('      ,Valor_Baixado = (select isnull(sum(Valor), 0) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data < :pDataIni)');
          sql.add('into #temp');
          sql.add('from PagarReceber pr');
          sql.Add('where Nivel <= :pNivel ');
          if cLancamentos.ItemIndex = 0 then begin
             sql.Add('and Tipo = ''P'' ');
          end;
          if cLancamentos.ItemIndex = 1 then begin
             sql.Add('and Tipo = ''R'' ');
          end;
          if not DataLimpa(cDataIni.Text) then begin
             sql.Add('and PR.Data_Vencimento < :pDataIni');
          end else begin
             sql.Add('and PR.Data_Documento < :pDataIni');
          End;
          if Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
             sql.Add('and isnull((select Relatorio from ClassificacaoFinanceira as cf where pr.Classificacao = cf.Codigo), 0) <> 1');
          end else begin
             sql.Add('and isnull((select Relatorio from Cybersoft_Cadastros.dbo.ClassificacaoFinanceira as cf where pr.Classificacao = cf.Codigo), 0) <> 1');
          end;
          if Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
             sql.Add('and isnull((select somente_faturamento from ClassificacaoFinanceira where Codigo = Classificacao), 0) <> 1');
          end else begin
             sql.Add('and isnull((select Somente_Faturamento from Cybersoft_Cadastros.dbo.ClassificacaoFinanceira where Codigo = Classificacao), 0) <> 1');
          end;
          if cDiferenciado.Checked then begin
             sql.Add('and isnull((select cliente_diferenciado from Clientes cli where pr.Cliente = cli.Codigo), 0) = 1');
          end;
          If (Trim(cBanco.Text) <> '') then begin
             sql.add('and (select Conta from '+mCompBancos+' where Codigo = Banco) = :pConta');
             ParamByName('pConta').Asstring := Dados.Bancos.fieldbyname('Conta').asstring;
          end;
          if (Trim(cCondicao.Text) <> '') then begin
             sql.Add('and pr.Modalidade_Pgto = :pModalidade' );
             ParamByName('pModalidade').AsInteger := Dados.ModalidadesPgtoCodigo.AsInteger;
          end;
          if (Trim(cProcesso.Text) <> '') then begin
             sql.Add('and pr.Processo = :pProcesso');
             ParamByName('pProcesso').Asstring := cProcesso.text;
          end;
          if Trim(cCliente.Text) <> '' then begin
             sql.Add('and pr.Processo in(select distinct Processo from ProcessosDocumentos where Cliente = '+Dados.ClientesCodigo.AsString+')');
          end;
          if (Trim(cBeneficiario.Text) <> '') then begin
             mCPF  := tBeneficiario.FieldByName('CPF').AsString;
             mCNPJ := tBeneficiario.FieldByName('CNPJ').AsString;
             if not cConsolBenef.Checked then begin
                if (tBeneficiarioTipo.Value = 'C') and (mCNPJ <> '') then begin
                  sql.Add('and Cliente in((select Codigo from Clientes where CNPJ = '+QuotedStr(mCNPJ)+'))');
                end;
                if (tBeneficiarioTipo.Value = 'C') and (mCPF <> '') then begin
                   sql.Add('and Cliente in((select Codigo from Clientes where CPF = ' +QuotedStr(mCPF)+') )');
                end;
                if (tBeneficiarioTipo.Value = 'F') and (mCNPJ <> '') then begin
                   sql.Add('and Fornecedor in( (select Codigo from Fornecedores where CNPJ = '+QuotedStr(mCNPJ)+') )');
                end;
                if (tBeneficiarioTipo.Value = 'F') and (mCPF <> '') then begin
                   sql.Add('and Fornecedor in( (select Codigo from Fornecedores where CPF = '+QuotedStr(mCPF)+') )');
                end;
             end else begin
                if (tBeneficiarioTipo.Value = 'C') and (mCNPJ <> '') then begin
                   sql.Add('and Cliente in((select Codigo from Clientes where substring(CNPJ, 1, 8) = '+QuotedStr(copy(mCNPJ, 1, 8))+'))');
                end;
                if (tBeneficiarioTipo.Value = 'C') and (mCPF <> '') then begin
                   sql.Add('and Cliente in((select Codigo from Clientes where CPF = ' +QuotedStr(mCPF)+') )');
                end;
                if (tBeneficiarioTipo.Value = 'F') and (mCNPJ <> '') then begin
                   sql.Add('and Fornecedor in( (select Codigo from Fornecedores where substring(CNPJ, 1, 8) = '+QuotedStr(copy(mCNPJ, 1, 8))+') )');
                end;
                if (tBeneficiarioTipo.Value = 'F') and (mCPF <> '') then begin
                   sql.Add('and Fornecedor in((select Codigo from Fornecedores where CPF = '+QuotedStr(mCPF)+') )');
                end;
             end;
             if tBeneficiarioTipo.Value = 'O' then begin
                sql.Add('and Orgao = '+QuotedStr(Trim(Copy(tBeneficiarioCodigo.Value,3,7))));
             end;
          end;
          If cMovimento.ItemIndex = 0 then begin
             if cLancamentos.ItemIndex = 0 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Tipo = ''P'' and pr.Numero = prb.Numero and prb.Data < :pDataIni), 2),0) < round(Valor_Total, 2)');
             end;
             if cLancamentos.ItemIndex = 1 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Tipo = ''R'' and pr.Numero = prb.Numero and prb.Data < :pDataIni), 2),0) < round(Valor_Total, 2)');
             end;
             if cLancamentos.ItemIndex = 2 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data < :pDataIni), 2),0) < round(Valor_Total, 2)');
             end;
          end;
          If cMovimento.ItemIndex = 1 then begin
             if cLancamentos.ItemIndex = 0 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Tipo = ''P'' and pr.Numero = prb.Numero and prb.Data < :pDataIni), 2),0) >= round(Valor_Total, 2)');
             end;
             if cLancamentos.ItemIndex = 1 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Tipo = ''R'' and pr.Numero = prb.Numero and prb.Data < :pDataIni), 2),0) >= round(Valor_Total, 2)');
             end;
             if cLancamentos.ItemIndex = 2 then begin
                sql.Add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Numero = prb.Numero and prb.Data < :pDataIni), 2),0) >= round(Valor_Total, 2)');
             end;
          end;
          sql.add('select Saldo_Anterior = isnull(sum(Valor_Total - Valor_Baixado), 0) from #temp');
          sql.add('drop table #temp');
          ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
          If not DataLimpa(cDataIni.Text) then begin
             ParamByName('pDataIni').AsDate := cDataIni.Date;
          End;
          If not DataLimpa(cDataDOCIni.Text) then begin
             ParamByName('pDataIni').AsDate := cDataDOCIni.Date;
          End;
          //sql.SaveToFile('c:\temp\Impressao_PagarReceber_Saldo_Anterior.sql');
          open;
          cSaldoAnterior.Value := fieldbyname('Saldo_Anterior').ascurrency;
          mSaldoAnt            := fieldbyname('Saldo_Anterior').ascurrency;
     end;

     mSQLNovo.Destroy;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.ppVariable4Calc(Sender: TObject; var Value: Variant);
begin
      Value := ppDBCalc5.Value - ppDBCalc6.Value;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.ppVariable5Calc(Sender: TObject; var Value: Variant);
begin
      Value := ppDBCalc7.Value - ppDBCalc8.Value;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.ppDetailBand1AfterPrint(Sender: TObject);
begin
      // Pagamentos.
      If tTitulos.FieldByName('Tipo').Value = 'P' then begin
         cTotalPago.Value := cTotalPago.Value + tTitulos.FieldByName('Valor_Total').Value;
         If tTitulos.FieldByName('Valor_Baixa').Value > 0 then begin
            cPagamentosBaixados.Value := cPagamentosBaixados.Value + tTitulos.FieldByName('Valor_Baixa').Value;
         End;
      End;

      // Recebimentos.
      If tTitulos.FieldByName('Tipo').Value = 'R' then begin
         cTotalRecebido.Value := cTotalRecebido.Value + tTitulos.FieldByName('Valor_Total').Value;
         If tTitulos.FieldByName('Valor_Baixado').Value > 0 then begin
            cRecebimentosBaixados.Value := cRecebimentosBaixados.Value + tTitulos.FieldByName('Valor_Baixa').Value;
         End;
      End;
      cTotalDiferenca.Value := cTotalRecebido.Value - cTotalPago.Value;
end;

// Envia informações para o excel.
procedure TImpressao_FinanceirosOP_PagarReceber.ExportaEXCEL;
var
   mPlanilha : Variant;
   mLinha    : Integer;
   mTotalPago,
   mPagamentosAbertos,
   mTotalRecebido,
   mRecebimentosBaixados,
   mRecebimentosAbertos,
   mTotalDiferenca,
   mValorDiaP,
   mValorDiaR,
   mBaixaDiaP,
   mBaixaDiaR,
   mSaldoDiaP,
   mSaldoDiaR,
   mDescontoDiaP,
   mDescontoDiaR,
   mJurosDiaP,
   mJurosDiaR,
   mMultaDiaP,
   mMultaDiaR,
   mParcelaDiaP,
   mParcelaDiaR,
   mPagamentosBaixados: Real;
   mZebra: Boolean;
   mData:TDate;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.Progresso.Max      := tTitulos.RecordCount;
      Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
      Janela_Processamento.Show;

      mPlanilha := CreateOleObject('Excel.Application');
      mPlanilha.WorkBooks.add(1);
      mPlanilha.Visible := false;
      
      mPlanilha.Range['A3','U3'].Interior.Color    := RGB(255, 255, 140);
      mPlanilha.Range['A3','U3'].Interior.Pattern  := 1;
      mPlanilha.Range['A3','U3'].Font.Bold         := true;
      mPlanilha.Range['A3','U3'].Font.Color        := clBlack;
      mPlanilha.Range['A3','U3'].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['A3','U3'].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['A3','U3'].Borders.Color     := RGB(0,0,0);

      mPlanilha.Cells[3,01] := 'DATA DOC';
      mPlanilha.Cells[3,02] := 'DATA VECTO';
      mPlanilha.Cells[3,03] := 'DATA BAIXA';
      mPlanilha.Cells[3,04] := 'DIAS';
      mPlanilha.Cells[3,05] := 'BENEFICIÁRIO';
      mPlanilha.Cells[3,06] := 'UF';
      mPlanilha.Cells[3,07] := 'Nº DOCUMENTO';
      mPlanilha.Cells[3,08] := 'CENTRO CUSTO';
      mPlanilha.Cells[3,09] := 'PROCESSO';
      mPlanilha.Cells[3,10] := 'CLASSIFICAÇÃO';
      mPlanilha.Cells[3,11] := 'ADIANT';
      mPlanilha.Cells[3,12] := 'CONTA';
      mPlanilha.Cells[3,13] := 'CHEQUE';
      mPlanilha.Cells[3,14] := 'VLR PARCELA';
      mPlanilha.Cells[3,15] := 'VLR DESCONTOS';
      mPlanilha.Cells[3,16] := 'VLR JUROS';
      mPlanilha.Cells[3,17] := 'VLR MULTA';
      mPlanilha.Cells[3,18] := 'VLR OPERAÇÃO';
      mPlanilha.Cells[3,19] := 'VLR BAIXADO';
      mPlanilha.Cells[3,20] := 'VLR SALDO';
      mPlanilha.Cells[3,21] := 'P/R';

      mPlanilha.Range['A3','U3'].HorizontalAlignment := 3;
      mPlanilha.Range['A3','U3'].VerticalAlignment   := 2;
      mPlanilha.Range['A3','U3'].Font.Size           := 8;

      mZebra               := false;
      mLinha               := 4;
      mRecebimentosAbertos := 0;
      mData                := tTitulos.FieldByName('Data_Vencimento').Value;
      mValorDiaP           := 0;
      mValorDiaR           := 0;
      mBaixaDiaP           := 0;
      mBaixaDiaR           := 0;
      mSaldoDiaP           := 0;
      mSaldoDiaR           := 0;

      While (not tTitulos.Eof) and (not Funcoes.Cancelado) do Begin
            mSaldo := mSaldo + tTitulos.FieldByName('Valor_Total').AsCurrency - tTitulos.FieldByName('Valor_Baixa').AsCurrency;

            mPlanilha.Range['A'+InttoStr(mLinha),'U'+InttoStr(mLinha)].Font.Size           := 8;
            mPlanilha.Range['U'+InttoStr(mLinha),'U'+InttoStr(mLinha)].HorizontalAlignment := 3;

            mPlanilha.Cells[mLinha,01] := tTitulos.FieldByName('Data_Documento').Value;
            mPlanilha.Cells[mLinha,02] := tTitulos.FieldByName('Data_Vencimento').Value;
            mPlanilha.Cells[mLinha,03] := tTitulos.FieldByName('Data_Baixado').Value;
            If (tTitulos.FieldByName('Data_Baixado').Value > tTitulos.FieldByName('Data_Vencimento').Value) then
               mPlanilha.Cells[mLinha,04] := DifDias(tTitulos.FieldByName('Data_Vencimento').Value, tTitulos.FieldByName('Data_Baixado').AsCurrency);

            mPlanilha.Cells[mLinha,05] := tTitulos.FieldByName('Nome_Beneficiario').AsString;
            mPlanilha.Cells[mLinha,06] := tTitulos.FieldByName('UF').AsString;
            mPlanilha.Cells[mLinha,07] := ''''+tTitulos.FieldByName('Numero_Documento').AsString;
            mPlanilha.Cells[mLinha,08] := tTitulos.FieldByName('CentroCusto_Nome').AsString;
            mPlanilha.Cells[mLinha,09] := tTitulos.FieldByName('Processo').AsString;
            mPlanilha.Cells[mLinha,10] := tTitulos.FieldByName('Classificacao_Nome').AsString;
            mPlanilha.Cells[mLinha,11] := tTitulos.FieldByName('Adiantamento_Numero').AsString;
            mPlanilha.Cells[mLinha,12] := tTitulos.FieldByName('Conta_Banco').AsString;
            mPlanilha.Cells[mLinha,13] := ''''+tTitulos.FieldByName('Numero_FormaTipo').AsString;

            mPlanilha.Cells[mLinha,14] := tTitulos.FieldByName('Valor_Parcela').AsFloat;
            mPlanilha.Cells[mLinha,15] := tTitulos.FieldByName('Desconto').AsFloat;
            mPlanilha.Cells[mLinha,16] := tTitulos.FieldByName('Juros').AsFloat;
            mPlanilha.Cells[mLinha,17] := tTitulos.FieldByName('Multa').AsFloat;
            mPlanilha.Cells[mLinha,18] := tTitulos.FieldByName('Valor_Total').AsFloat;
            mPlanilha.Cells[mLinha,19] := tTitulos.FieldByName('Valor_Baixa').AsFloat;
            mPlanilha.Cells[mLinha,20] := mSaldo;
            mPlanilha.Cells[mLinha,21] := tTitulos.FieldByName('Tipo').AsString;

            mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,18].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,19].NumberFormat := '#.##0,00_);(#.##0,00)';
            mPlanilha.Cells[mLinha,20].NumberFormat := '#.##0,00_);(#.##0,00)';

            // Pagamentos.
            If tTitulos.FieldByName('Tipo').Value = 'P' then begin
               mTotalPago    := mTotalPago + tTitulos.FieldByName('Valor_Total').AsCurrency;
               mValorDiaP    := mValorDiaP + tTitulos.FieldByName('Valor_Total').AsCurrency;
               mSaldoDiaP    := mSaldoDiaP + tTitulos.FieldByName('Valor_Total').AsCurrency - tTitulos.FieldByName('Valor_Baixa').AsCurrency;
               mParcelaDiaP  := mParcelaDiaP + tTitulos.FieldByName('Valor_Parcela').AsCurrency;
               mJurosDiaP    := mJurosDiaP + tTitulos.FieldByName('Juros').AsCurrency;
               mDescontoDiaP := mDescontoDiaP + tTitulos.FieldByName('Desconto').AsCurrency;
               mMultaDiaP    := mMultaDiaP + tTitulos.FieldByName('Multa').AsCurrency;

               If tTitulos.FieldByName('Valor_Baixa').Value > 0 then begin
                  mPagamentosBaixados := mPagamentosBaixados + tTitulos.FieldByName('Valor_Baixa').ascurrency;
                  mBaixaDiaP          := mBaixaDiaP + tTitulos.FieldByName('Valor_Baixa').ascurrency;
               end else begin
                  mPagamentosAbertos := mPagamentosAbertos + tTitulos.FieldByName('Valor_Operacao').ascurrency;
               End
            End;

            // Recebimentos.
            If tTitulos.FieldByName('Tipo').Value = 'R' then begin
               mTotalRecebido := mTotalRecebido + tTitulos.FieldByName('Valor_Total').ascurrency;
               mValorDiaR     := mValorDiaR + tTitulos.FieldByName('Valor_Total').ascurrency;
               mSaldoDiaR     := mSaldoDiaR + tTitulos.FieldByName('Valor_Total').AsCurrency - tTitulos.FieldByName('Valor_Baixa').AsCurrency;
               mParcelaDiaR   := mParcelaDiaR + tTitulos.FieldByName('Valor_Parcela').AsCurrency;
               mJurosDiaR     := mJurosDiaR + tTitulos.FieldByName('Juros').AsCurrency;
               mDescontoDiaR  := mDescontoDiaR + tTitulos.FieldByName('Desconto').AsCurrency;
               mMultaDiaR     := mMultaDiaR + tTitulos.FieldByName('Multa').AsCurrency;

               If tTitulos.FieldByName('Valor_Baixa').Value > 0 then begin
                  mBaixaDiaR            := mBaixaDiaR + tTitulos.FieldByName('Valor_Baixa').Value;
                  mRecebimentosBaixados := mRecebimentosBaixados + tTitulos.FieldByName('Valor_Baixa').ascurrency;
               end else begin
                  mRecebimentosAbertos := mRecebimentosAbertos + tTitulos.FieldByName('Valor_Operacao').ascurrency;
               End;
            End;
            mTotalDiferenca := mTotalRecebido - mTotalPago;

            tTitulos.Next;

            if (tTitulos.FieldByName('Data_Vencimento').Value <> mData) and cTotalDiario.Checked then begin
               Inc(mLinha);

               mPlanilha.Range['J'+InttoStr(mLinha),'U'+InttoStr(mLinha+1)].Interior.Color    := RGB(255, 255, 140);
               mPlanilha.Range['J'+InttoStr(mLinha),'U'+InttoStr(mLinha+1)].Interior.Pattern  := 1;
               mPlanilha.Range['J'+InttoStr(mLinha),'U'+InttoStr(mLinha+1)].Font.Bold         := true;
               mPlanilha.Range['J'+InttoStr(mLinha),'U'+InttoStr(mLinha+1)].Font.Color        := clBlack;
               mPlanilha.Range['J'+InttoStr(mLinha),'U'+InttoStr(mLinha+1)].Borders.LineStyle := 1; //xlContinuous;
               mPlanilha.Range['J'+InttoStr(mLinha),'U'+InttoStr(mLinha+1)].Borders.Weight    := 2; //xlThin;
               mPlanilha.Range['J'+InttoStr(mLinha),'U'+InttoStr(mLinha+1)].Borders.Color     := RGB(0,0,0);
               mPlanilha.Range['J'+InttoStr(mLinha),'U'+InttoStr(mLinha+1)].Font.Size         := 8;

               mPlanilha.Cells[mLinha,10] := 'TOTAL DE PAGAMENTOS DO DIA';
               mPlanilha.Cells[mLinha,14] := mParcelaDiaP;
               mPlanilha.Cells[mLinha,15] := mDescontoDiaP;
               mPlanilha.Cells[mLinha,16] := mJurosDiaP;
               mPlanilha.Cells[mLinha,17] := mMultaDiaP;
               mPlanilha.Cells[mLinha,18] := mValorDiaP;
               mPlanilha.Cells[mLinha,19] := mBaixaDiaP;
               mPlanilha.Cells[mLinha,20] := mSaldoDiaP;
               mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,18].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,19].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,20].NumberFormat := '#.##0,00_);(#.##0,00)';
               Inc(mLinha);
               mPlanilha.Cells[mLinha,10] := 'TOTAL DE RECEBIMENTOS DO DIA';
               mPlanilha.Cells[mLinha,14] := mParcelaDiaR;
               mPlanilha.Cells[mLinha,15] := mDescontoDiaR;
               mPlanilha.Cells[mLinha,16] := mJurosDiaR;
               mPlanilha.Cells[mLinha,17] := mMultaDiaR;
               mPlanilha.Cells[mLinha,18] := mValorDiaR;
               mPlanilha.Cells[mLinha,19] := mBaixaDiaR;
               mPlanilha.Cells[mLinha,20] := mSaldoDiaR;

               mPlanilha.Cells[mLinha,14].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,15].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,16].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,17].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,18].NumberFormat := '#.##0,00_);(#.##0,00)';
               mPlanilha.Cells[mLinha,19].NumberFormat := '#.##0,00_);(#.##0,00)';

               mData         := tTitulos.FieldByName('Data_Vencimento').Value;
               mValorDiaP    := 0;
               mValorDiaR    := 0;
               mBaixaDiaP    := 0;
               mBaixaDiaR    := 0;
               mSaldoDiaP    := 0;
               mSaldoDiaR    := 0;
               mParcelaDiaP  := 0;
               mParcelaDiaR  := 0;
               mJurosDiaP    := 0;
               mJurosDiaR    := 0;
               mDescontoDiaP := 0;
               mDescontoDiaR := 0;
            end;

            if cZebrado.Checked then begin
               If mZebra = true then
                  mPlanilha.Range['A'+InttoStr(mLinha),'U'+InttoStr(mLinha)].Interior.Color := clWhite
               else
                  mPlanilha.Range['A'+InttoStr(mLinha),'U'+InttoStr(mLinha)].Interior.Color := RGB(232, 232, 255);

               mZebra := not mZebra;
            end;

            mSaldo  := 0;

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

      Inc(mLinha);

      mPlanilha.Range['E'+InttoStr(mLinha),'E'+InttoStr(mLinha+10)].HorizontalAlignment := 2;
      mPlanilha.Range['F'+InttoStr(mLinha),'F'+InttoStr(mLinha+10)].HorizontalAlignment := 1;
      mPlanilha.Range['E'+InttoStr(mLinha),'F'+InttoStr(mLinha+10)].Font.Size           := 8;

      mPlanilha.Range['E'+InttoStr(mLinha),'F'+InttoStr(mLinha+10)].Interior.Color    := RGB(255, 255, 140);
      mPlanilha.Range['E'+InttoStr(mLinha),'F'+InttoStr(mLinha+10)].Font.Bold         := true;
      mPlanilha.Range['E'+InttoStr(mLinha),'F'+InttoStr(mLinha+10)].Borders.LineStyle := 1; //xlContinuous;
      mPlanilha.Range['E'+InttoStr(mLinha),'F'+InttoStr(mLinha+10)].Borders.Weight    := 2; //xlThin;
      mPlanilha.Range['E'+InttoStr(mLinha),'F'+InttoStr(mLinha+10)].Borders.Color     := RGB(0,0,0);

      mPlanilha.Cells[mLinha  ,05] := 'RECEBIMENTOS';
      mPlanilha.Cells[mLinha+1,05] := 'TOTAL:';
      mPlanilha.Cells[mLinha+1,06] := mTotalRecebido;
      mPlanilha.Cells[mLinha+2,05] := 'BAIXADOS:';
      mPlanilha.Cells[mLinha+2,06] := mRecebimentosBaixados;
      mPlanilha.Cells[mLinha+3,05] := 'SALDO:';
      mPlanilha.Cells[mLinha+3,06] := mTotalRecebido - mRecebimentosBaixados;

      mPlanilha.Cells[mLinha+5,05] := 'PAGAMENTOS';
      mPlanilha.Cells[mLinha+6,05] := 'TOTAL:';
      mPlanilha.Cells[mLinha+6,06] := mTotalPago;
      mPlanilha.Cells[mLinha+7,05] := 'BAIXADOS:';
      mPlanilha.Cells[mLinha+7,06] := mPagamentosBaixados;
      mPlanilha.Cells[mLinha+8,05] := 'SALDO:';
      mPlanilha.Cells[mLinha+8,06] := mPagamentosAbertos;
      mPlanilha.Cells[mLinha+10,05] := 'RECEBIMENTOS - PAGAMENTOS';
      mPlanilha.Cells[mLinha+10,06] := mTotalDiferenca;

      mPlanilha.Cells[mLinha+01,06].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+02,06].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+03,06].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+06,06].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+07,06].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+08,06].NumberFormat := '#.##0,00_);(#.##0,00)';
      mPlanilha.Cells[mLinha+10,06].NumberFormat := '#.##0,00_);(#.##0,00)';

      mPlanilha.Cells[1,01]                          := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
      mPlanilha.Range['A1','A1'].Font.Size           := 14;
      mPlanilha.Range['A1','A1'].Font.Bold           := true;
      mPlanilha.Range['A1','U1'].Mergecells          := True;
      mPlanilha.Range['A1','U1'].HorizontalAlignment := 3;

      var mPeriodo:String;
      mPeriodo := 'Contas a Pagar / Receber ';
      if cCondicao.text <> '' then begin
         mPeriodo := mPeriodo + '    | Condição de pagamento: '+Dados.ModalidadesPgtoDescricao.asstring+'  |  ';
      end;
      if not DataLimpa(cDataIni.Text) then begin
         mPeriodo := mPeriodo + '   Período de '+cDataIni.Text + ' ás ' + cDataFim.Text;
      end;
      if not DataLimpa(cDataDocIni.Text) then begin
         mPeriodo := mPeriodo + '   Período de '+cDataDocIni.Text + ' ás ' + cDataDocFim.Text;
      end;
      mPlanilha.Cells[2,01]                          := mPeriodo;
      mPlanilha.Range['A2','A2'].Font.Size           := 10;
      mPlanilha.Range['A2','U2'].Mergecells          := True;
      mPlanilha.Range['A2','U2'].HorizontalAlignment := 3;

      Janela_Processamento.Close;
      mPlanilha.Visible := true;
end;

procedure TImpressao_FinanceirosOP_PagarReceber.ppSummaryBand2BeforePrint(Sender: TObject);
begin
      tSaldoRecebimentos.Value := cTotalRecebido.Value - cRecebimentosBaixados.Value;
      tSaldoPagamentos.Value   := cTotalPago.Value - cPagamentosBaixados.Value;
      cTotalGeral.Value        := cSaldoAnterior.value + cTotalRecebido.Value - cTotalPago.Value;
end;


end.




