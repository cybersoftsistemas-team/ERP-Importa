unit frmImpressao_FiscaisOP_RAIPI_P9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RxLookup,INIFiles, RXSpin, Vcl.StdCtrls, Vcl.ExtCtrls,
  RXCtrls, Buttons, Funcoes, ppBands, ppClass, ppVar, ppCtrls, ppReport, ppSubRpt, ppPrnabl,
  ppDBPipe, ppDB, ppParameter, ppDesignLayer, ppStrtch, ppCache, ppComm, ppRelatv, ppProd, MemDS, Vcl.Mask;

type
  TImpressao_FiscaisOP_RAIPI_P9 = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    tEntradas: TMSQuery;

    tSaidas: TMSQuery;
    tEstados: TMSQuery;
    tOutros: TMSQuery;
    tEntradasSE: TIntegerField;
    tEntradasNatureza_Codigo: TStringField;
    tEntradasValor_Contabil: TCurrencyField;
    tEntradasValor_BCIPI: TCurrencyField;
    tEntradasValor_IPI: TCurrencyField;
    tEntradasValor_Outras: TCurrencyField;
    StaticText2: TStaticText;
    cMes: TComboBox;
    cAno: TRxSpinEdit;
    tIsentas: TMSQuery;
    tEntradasValor_Isentas: TFloatField;
    StaticText4: TStaticText;
    rApuracaoIPI: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    lPeriodo: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine159: TppLine;
    ppLabel122: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppShape42: TppShape;
    ppShape41: TppShape;
    ppShape43: TppShape;
    ppShape28: TppShape;
    ppShape26: TppShape;
    ppShape3: TppShape;
    ppLabel14: TppLabel;
    ppShape23: TppShape;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    lPeriodo2: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape24: TppShape;
    ppLabel25: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppShape25: TppShape;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppShape27: TppShape;
    ppLabel28: TppLabel;
    ppLine13: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine14: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppShape29: TppShape;
    ppLabel24: TppLabel;
    ppLine15: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppShape30: TppShape;
    ppLabel44: TppLabel;
    ppShape31: TppShape;
    ppLabel45: TppLabel;
    ppShape32: TppShape;
    ppLabel46: TppLabel;
    ppShape33: TppShape;
    ppLabel47: TppLabel;
    ppShape34: TppShape;
    ppLabel48: TppLabel;
    ppShape35: TppShape;
    ppLabel49: TppLabel;
    ppShape36: TppShape;
    ppLabel50: TppLabel;
    ppShape37: TppShape;
    ppLabel51: TppLabel;
    ppShape38: TppShape;
    ppLabel52: TppLabel;
    ppShape39: TppShape;
    ppLabel53: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppShape40: TppShape;
    ppShape44: TppShape;
    pTotalDebitos: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    pSubTotDebAux: TppVariable;
    pSubTotDebSoma: TppVariable;
    ppDBCalc5: TppDBCalc;
    pSubTotalCreditoAux: TppVariable;
    pSubTotCreSoma: TppVariable;
    pTotalIPIE: TppVariable;
    pSaldoCredorAnterior: TppDBCalc;
    pTotalCreditos: TppVariable;
    pSaldoDevedor: TppVariable;
    pDeducoes: TppVariable;
    pSaldoCredor: TppVariable;
    ppFooterBand2: TppFooterBand;
    ppLine25: TppLine;
    ppLabel54: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape4: TppShape;
    ppShape6: TppShape;
    lTitulo1: TppLabel;
    ppLabel8: TppLabel;
    ppShape5: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape7: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape8: TppShape;
    ppLabel13: TppLabel;
    ppShape9: TppShape;
    ppShape10: TppShape;
    pDebCred: TppLabel;
    pSemDebCred: TppLabel;
    ppShape12: TppShape;
    ppLabel16: TppLabel;
    ppShape11: TppShape;
    pImpDebCred: TppLabel;
    ppShape13: TppShape;
    ppLabel18: TppLabel;
    ppShape14: TppShape;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape22: TppShape;
    ppShape16: TppShape;
    ppShape15: TppShape;
    lTitulo2: TppLabel;
    lCFOP1: TppLabel;
    lCFOP2: TppLabel;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    pTotalContabil1: TppVariable;
    pTotalContabil2: TppVariable;
    pTotalBC1: TppVariable;
    pTotalBC2: TppVariable;
    pTotalImposto1: TppVariable;
    pTotalImposto2: TppVariable;
    lCFOP3: TppLabel;
    pTotalContabil3: TppVariable;
    pTotalBC3: TppVariable;
    pTotalImposto3: TppVariable;
    pTotalIsentas1: TppVariable;
    pTotalIsentas2: TppVariable;
    pTotalIsentas3: TppVariable;
    pTotalOutras1: TppVariable;
    pTotalOutras2: TppVariable;
    pTotalOutras3: TppVariable;
    ppLabel7: TppLabel;
    pTotalGeralContabil: TppVariable;
    pTotalGeralBC: TppVariable;
    pTotalGeralImposto: TppVariable;
    pTotalGeralIsentas: TppVariable;
    pTotalGeralOutras: TppVariable;
    ppLine9: TppLine;
    oEmpresa: TppDBPipeline;
    pEntradas: TppDBPipeline;
    pApuracao: TppDBPipeline;
    dstEntradas: TDataSource;
    dstApuracao: TDataSource;
    tApuracao: TMSQuery;
    pOutrosCreditos: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    lMovimento: TppLabel;
    cIncent: TRxDBLookupCombo;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1AfterPrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure pSubTotDebSomaCalc(Sender: TObject; var Value: Variant);
    procedure rApuracaoIPIAfterPrint(Sender: TObject);
    procedure ppDetailBand2AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    mImprimir      : Boolean;
    mLinha         : Integer;
    mPagina        : Integer;
    Arquivo        : TextFile;
    mNomeArq       : String;
    mFechado       : Boolean;
    mAberto        : Boolean;

    mTexto         : String;
    mImprime       : TextFile;
    mTotalContabilE: Currency;
    mTotalBCIPIE   : Currency;
    mTotalIPIE     : Currency;
    mTotalIsentasE : Currency;
    mTotalOutrasE  : Currency;
    mTotalContabilS: Currency;
    mTotalBCIPIS   : Currency;
    mTotalIPIS     : Currency;
    mTotalIsentasS : Currency;
    mTotalOutrasS  : Currency;
    mValorContabil : Currency;
    mValorBCIPI    : Currency;
    mValorIPI      : Currency;
    mValorIsentas  : Currency;
    mValorOutras   : Currency;
    mCabecalho     : Boolean;
    mSubTotDebAux  : Currency;
    mSubTotDebSoma : Currency;
    mSubTotCreAux  : Currency;
    mSubTotCreSoma : Currency;
    mTotalDebitos  : Currency;
    mTotalCreditos : Currency;
    mTotalParcela  : Currency;
    mData          : TDate;
    mImpLinha      : Boolean;
    mEstornoCredito: Currency;
    mSaldoTransp   : Currency;
    mIPI_Rec       : Real;
  end;

var
  Impressao_FiscaisOP_RAIPI_P9: TImpressao_FiscaisOP_RAIPI_P9;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FiscaisOP_RAIPI_P9.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI           := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cMes.ItemIndex := aINI.ReadInteger('IMPRESSAO_RAIPI','Mes', 0 );
      cAno.AsInteger := aINI.ReadInteger('IMPRESSAO_RAIPI','Ano', 0 );
      aINI.Free;

      With Dados do Begin
           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) ORDER BY Descricao_NF ');
           Natureza.Open;
           
           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.add('SELECT * FROM IncentivosFiscais ORDER BY nome');
           IncentivosFiscais.Open;
      End;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Salvando as ultimas opções utilizadas no relatório como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger('IMPRESSAO_RAIPI','Mes'      , cMes.ItemIndex);
      aINI.WriteInteger('IMPRESSAO_RAIPI','Ano'      , cAno.AsInteger);
      aINI.WriteFloat  ('IMPOSTOS_MENSAIS '+Dados.Empresas.FieldByName('CNPJ').asstring,'IPI_Rec' , mIPI_Rec);
      aINI.Free;

      LimpaMemoria;
      Impressao_FiscaisOP_RAIPI_P9.Release;
      Impressao_FiscaisOP_RAIPI_P9 := nil;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.bImprimirClick(Sender: TObject);
var
   i:integer;
begin
      Screen.Cursor := crSQLWait;
      With dmFiscal, Dados do begin
           // Apurando operações com crédito do imposto nas entradas.
           Screen.Cursor := crDefault;
           tEntradas.SQL.Clear;
           tEntradas.SQL.Add('SELECT 0 AS SE,');
           tEntradas.SQL.Add('       Natureza_Codigo,');
           tEntradas.SQL.Add('       SUM(Valor_TotalNota) as Valor_Contabil,');
           tEntradas.SQL.Add('       SUM(BCIPI) AS Valor_BCIPI,');
           tEntradas.SQL.Add('       SUM(Valor_TotalIPI) AS Valor_IPI,');
           tEntradas.SQL.Add('       SUM(Valor_IsentasIPI) AS Valor_Isentas,');
           tEntradas.SQL.Add('       SUM(Valor_OutrasIPI) AS Valor_Outras');
           tEntradas.SQL.Add('FROM NotasFiscais');
           tEntradas.SQL.Add('WHERE (Saida_Entrada = 0) AND (ISNULL(Cancelada, 0) <> 1) AND (ISNULL(Nfe_Denegada, 0) <> 1)  AND (MONTH(Data_Emissao) = :pMes AND YEAR(Data_Emissao) = :pAno)');
           tEntradas.SQL.Add('GROUP BY Natureza_Codigo');
           tEntradas.SQL.Add('UNION ALL');
           tEntradas.SQL.Add('SELECT SE = 0');
           tEntradas.SQL.Add('       ,Natureza_Codigo');
           tEntradas.SQL.Add('       ,Valor_Contabil = SUM(ISNULL(Valor_Liquido, 0) + ISNULL(Valor_IPI, 0) + ISNULL(Valor_ICMSSub, 0))');
           tEntradas.SQL.Add('       ,Valor_BCIPI    = SUM(Valor_BCIPI)');
           tEntradas.SQL.Add('       ,Valor_IPI      = SUM(Valor_IPI)');
           tEntradas.SQL.Add('       ,Valor_Isentas  = SUM(Valor_IsentasIPI)');
           tEntradas.SQL.Add('       ,Valor_Outras   = SUM(Valor_OutrasIPI)');
           tEntradas.SQL.Add('FROM   NotasTerceirosItens NI');
           tEntradas.SQL.Add('WHERE (MONTH(Data_Entrada) = :pMes AND YEAR(Data_Entrada) = :pAno)');
           tEntradas.SQL.Add( 'and (select count(Servico) from NotasTerceiros nt where nt.Nota = ni.Nota and nt.Data_Entrada = ni.Data_Entrada) = 0');
           tEntradas.SQL.Add('GROUP BY Natureza_Codigo');
           tEntradas.SQL.Add('UNION ALL');
           tEntradas.SQL.Add('SELECT 1,');
           tEntradas.SQL.Add('       Natureza_Codigo,');
           tEntradas.SQL.Add('       SUM(Valor_TotalNota),');
           tEntradas.SQL.Add('       SUM(BCIPI),');
           tEntradas.SQL.Add('       SUM(Valor_TotalIPI),');
           tEntradas.SQL.Add('       SUM(Valor_IsentasIPI),');
           tEntradas.SQL.Add('       SUM(Valor_OutrasIPI)');
           tEntradas.SQL.Add('FROM NotasFiscais');
           tEntradas.SQL.Add('WHERE (Saida_Entrada = 1) AND (ISNULL(Cancelada, 0) <> 1) AND (ISNULL(Nfe_Denegada, 0) <> 1)  AND (MONTH(Data_Emissao) = :pMes AND YEAR(Data_Emissao) = :pAno)');
           if Trim(cIncent.Text) <> '' then begin
              tEntradas.SQL.Add(' AND (Incentivo_Fiscal = :pIncentivo)' );
              tEntradas.ParamByName('pIncentivo').AsString := Trim(cIncent.Text);
           end;
           tEntradas.SQL.Add('GROUP BY Natureza_Codigo');
           tEntradas.ParamByName('pMes').AsInteger := cMes.ItemIndex +1;
           tEntradas.ParamByName('pAno').AsInteger := cAno.AsInteger;

           tEntradas.SQL.Add('ORDER BY Natureza_Codigo');
           //tEntradas.SQL.SavetoFile('c:\Temp\Livro_Apuracao_IPI.sql');
           tEntradas.Open;

           tApuracao.SQL.Clear;
           tApuracao.SQL.Add('SELECT  Debito_Imposto  = (SELECT ISNULL(SUM(Valor_TotalIPI), 0) FROM NotasFiscais WHERE Saida_Entrada = 1 AND ISNULL(Cancelada, 0) <> 1 AND ISNULL(Nfe_Denegada, 0) <> 1 AND MONTH(Data_Emissao) = :pMes AND YEAR(Data_Emissao) = :pAno)');
           tApuracao.SQL.Add('       ,Outros_Debitos  = (SELECT ISNULL(SUM(Valor), 0) FROM OutrosValoresIPI WHERE Debito_Credito = 0 AND MONTH(Data) = :pMes AND YEAR(Data) = :pAno) +');
           tApuracao.SQL.Add('                          (SELECT ISNULL(SUM(Valor), 0) FROM Estorno WHERE Imposto = ''IPI'' AND Tipo_Ajuste IN(0, 5) AND (MONTH(Data) = :pMes) AND (YEAR(Data) = :pAno))');
           tApuracao.SQL.Add('       ,Estorno_Credito = (SELECT ISNULL(SUM(Valor), 0) FROM Estorno WHERE MONTH(Data) = :pMes AND YEAR(Data) = :pAno AND Tipo_Ajuste = 1 AND Imposto = ''IPI'')');
           tApuracao.SQL.Add('       ,Outros_Creditos = (SELECT ISNULL(SUM(Valor), 0) FROM Estorno WHERE MONTH(Data) = :pMes AND YEAR(Data) = :pAno AND Tipo_Ajuste = 2 AND Imposto = ''IPI'')');
           tApuracao.SQL.Add('       ,Estorno_Debito  = (SELECT ISNULL(SUM(Valor), 0) FROM Estorno WHERE MONTH(Data) = :pMes AND YEAR(Data) = :pAno AND Tipo_Ajuste = 3 AND Imposto = ''IPI'')');
           tApuracao.SQL.Add('       ,Deducoes        = (SELECT ISNULL(SUM(Valor), 0) FROM Estorno WHERE MONTH(Data) = :pMes AND YEAR(Data) = :pAno AND Tipo_Ajuste = 4 AND Imposto = ''IPI'')');
           tApuracao.SQL.Add('       ,Saldo_Anterior  = (SELECT ISNULL(Saldo, 0) FROM SaldoIPI WHERE Mes_Ano = :pMes_Ano AND Operacao = :pOper)');

           tApuracao.ParamByName('pAno').AsInteger  := cAno.AsInteger;
           tApuracao.ParamByName('pMes').AsInteger  := cMes.ItemIndex+1;
           tApuracao.ParamByName('pOper').AsInteger := iif(cIncent.KeyValue <> null, cIncent.KeyValue, 0);
           If cMes.ItemIndex = 0 then
              tApuracao.ParamByName('pMes_Ano').AsString := '12'+InttoStr(cAno.AsInteger-1)
           else
              tApuracao.ParamByName('pMes_Ano').AsString := PoeZero(2,cMes.ItemIndex)+InttoStr(cAno.AsInteger);
           //tApuracao.SQL.SaveToFile('c:\temp\Apuracao_IPI.sql');
           tApuracao.Open;
           mSubTotCreSoma := mSubTotCreSoma + SaldoIPISaldo.Value;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

           lPeriodo.Caption   := Trim(UpperCase(cMes.Text))+'/'+cAno.Text;
           lPeriodo2.Caption  := lPeriodo.Caption;
           lMovimento.Visible := tEntradas.RecordCount = 0;

           mTotalContabilE := 0;
           mTotalBCIPIE    := 0;
           mTotalIPIE      := 0;
           mTotalIsentasE  := 0;
           mTotalOutrasE   := 0;
           mTotalContabilS := 0;
           mTotalBCIPIS    := 0;
           mTotalIPIS      := 0;
           mTotalIsentasS  := 0;
           mTotalOutrasS   := 0;
           mValorContabil  := 0;
           mValorBCIPI     := 0;
           mValorIPI       := 0;
           mValorIsentas   := 0;
           mValorOutras    := 0;
           mSubTotDebAux   := 0;
           mSubTotDebSoma  := 0;
           mSubTotCreAux   := 0;
           mSubTotCreSoma  := 0;
           mTotalDebitos   := 0;
           mTotalCreditos  := 0;
           mTotalParcela   := 0;
           mEstornoCredito := 0;
           mSaldoTransp    := 0;

           rApuracaoIPI.Print;
           rApuracaoIPI.Reset;

           Screen.Cursor := crDefault;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
      If tEntradas.FieldByName('SE').AsInteger = 0 then begin
         mTotalIPIE     := pTotalGeralImposto.Value;
         lCFOP1.Caption := ' 1.00  DO ESTADO';
         lCFOP2.Caption := ' 2.00  DE OUTROS ESTADOS';
         lCFOP3.Caption := ' 3.00  DO EXTERIOR';
      end else begin
         lCFOP1.Caption := ' 5.00  P/ O ESTADO';
         lCFOP2.Caption := ' 6.00  P/ OUTROS ESTADOS';
         lCFOP3.Caption := ' 7.00  P/ O EXTERIOR';
      End;
      pTotalGeralContabil.Value := pTotalContabil1.Value + pTotalContabil2.Value + pTotalContabil3.Value;
      pTotalGeralBC.Value       := pTotalBC1.Value + pTotalBC2.Value + pTotalBC3.Value;
      pTotalGeralImposto.Value  := pTotalImposto1.Value + pTotalImposto2.Value + pTotalImposto3.Value;
      pTotalGeralIsentas.Value  := pTotalIsentas1.Value + pTotalIsentas2.Value + pTotalIsentas3.Value;
      pTotalGeralOutras.Value   := pTotalOutras1.Value + pTotalOutras2.Value + pTotalOutras3.Value;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.ppGroupFooterBand1AfterPrint(Sender: TObject);
begin
       If tEntradas.FieldByName('SE').AsInteger = 0 then begin
          mTotalIPIE := pTotalGeralImposto.Value;
       End;
       pTotalContabil1.Value     := 0;
       pTotalBC1.Value           := 0;
       pTotalImposto1.Value      := 0;
       pTotalIsentas1.Value      := 0;
       pTotalOutras1.Value       := 0;
       pTotalContabil2.Value     := 0;
       pTotalBC2.Value           := 0;
       pTotalImposto2.Value      := 0;
       pTotalIsentas2.Value      := 0;
       pTotalOutras2.Value       := 0;
       pTotalContabil3.Value     := 0;
       pTotalBC3.Value           := 0;
       pTotalImposto3.Value      := 0;
       pTotalIsentas3.Value      := 0;
       pTotalOutras3.Value       := 0;
       pTotalGeralContabil.Value := 0;
       pTotalGeralBC.Value       := 0;
       pTotalGeralImposto.Value  := 0;
       pTotalGeralIsentas.Value  := 0;
       pTotalGeralOutras.Value   := 0;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
       If tEntradas.FieldByName('SE').AsInteger = 0 then begin
          lTitulo1.Caption    := 'E N T R A D A S';
          lTitulo2.Caption    := 'SUBTOTAL DAS ENTRADAS';
          pDebCred.Caption    := 'OPERAÇÕES COM CRÉDITO DO IMPOSTO';
          pSemDebCred.Caption := 'OPERAÇÕES SEM CRÉDITO DO IMPOSTO';
          pImpDebCred.Caption := 'IMPOSTO CREDITADO';
       end else begin
          lTitulo1.Caption    := 'S A Í D A S';
          lTitulo2.Caption    := 'SUBTOTAL DAS SAÍDAS';
          pDebCred.Caption    := 'OPERAÇÕES COM DÉBITO DO IMPOSTO';
          pSemDebCred.Caption := 'OPERAÇÕES SEM DÉBITO DO IMPOSTO';
          pImpDebCred.Caption := 'IMPOSTO DEBITADO';
       End;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.ppDetailBand1BeforePrint(Sender: TObject);
begin
      If (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '1') or
         (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '5') then begin
         pTotalContabil1.Value := pTotalContabil1.Value + tEntradas.FieldByName('Valor_Contabil').AsCurrency;
         pTotalBC1.Value       := pTotalBC1.Value + tEntradas.FieldByName('Valor_BCIPI').AsCurrency;
         pTotalImposto1.Value  := pTotalImposto1.Value + tEntradas.FieldByName('Valor_IPI').AsCurrency;
         pTotalIsentas1.Value  := pTotalIsentas1.Value + tEntradas.FieldByName('Valor_Isentas').AsCurrency;
         pTotalOutras1.Value   := pTotalOutras1.Value + tEntradas.FieldByName('Valor_Outras').AsCurrency;
      End;
      If (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '2') or
         (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '6') then begin
         pTotalContabil2.Value := pTotalContabil2.Value + tEntradas.FieldByName('Valor_Contabil').AsCurrency;
         pTotalBC2.Value       := pTotalBC2.Value + tEntradas.FieldByName('Valor_BCIPI').AsCurrency;
         pTotalImposto2.Value  := pTotalImposto2.Value + tEntradas.FieldByName('Valor_IPI').AsCurrency;
         pTotalIsentas2.Value  := pTotalIsentas2.Value + tEntradas.FieldByName('Valor_Isentas').AsCurrency;
         pTotalOutras2.Value   := pTotalOutras2.Value + tEntradas.FieldByName('Valor_Outras').AsCurrency;
      End;
      If (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '3') or
         (Copy(tEntradas.FieldByName('Natureza_Codigo').AsString, 1, 1) = '7') then begin
         pTotalContabil3.Value := pTotalContabil3.Value + tEntradas.FieldByName('Valor_Contabil').AsCurrency;
         pTotalBC3.Value       := pTotalBC3.Value + tEntradas.FieldByName('Valor_BCIPI').AsCurrency;
         pTotalImposto3.Value  := pTotalImposto3.Value + tEntradas.FieldByName('Valor_IPI').AsCurrency;
         pTotalIsentas3.Value  := pTotalIsentas3.Value + tEntradas.FieldByName('Valor_Isentas').AsCurrency;
         pTotalOutras3.Value   := pTotalOutras3.Value + tEntradas.FieldByName('Valor_Outras').AsCurrency;
      End;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.ppDetailBand2BeforePrint(Sender: TObject);
begin
      pTotalIPIE.Value := mTotalIPIE;
      // OUTROS CRÉDITOS
      With Dados, dmFiscal do begin
           pSubTotalCreditoAux.Value := pOutrosCreditos.Value + tApuracao.FieldByName('Estorno_Debito').AsCurrency;
      End;
      pSubTotCreSoma.Value := pSubTotalCreditoAux.Value + pTotalIPIE.Value;
      pTotalCreditos.Value := pSubTotalCreditoAux.Value + pSubTotCreSoma.Value + pSaldoCredorAnterior.Value;
      pSaldoDevedor.Value  := 0;
      If pTotalCreditos.Value < pSubTotDebSoma.Value then pSaldoDevedor.Value := pTotalCreditos.Value - pSubTotDebSoma.Value;
      pDeducoes.Value := pSaldoDevedor.Value;

      mIPI_Rec := pSaldoDevedor.Value;
      if mIPI_Rec < 0 then begin
         mIPI_Rec := pSaldoDevedor.Value *-1;
      end;   

      pSaldoCredor.Value := pTotalCreditos.Value - pSubTotDebSoma.Value;
      If pSaldoCredor.Value < 0 then pSaldoCredor.Value := 0;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.pSubTotDebSomaCalc(Sender: TObject;var Value: Variant);
begin
      Value := tApuracao.FieldByName('Outros_Debitos').AsCurrency + tApuracao.FieldByName('Estorno_Credito').AsCurrency + tApuracao.FieldByName('Debito_Imposto').AsCurrency;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.rApuracaoIPIAfterPrint(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           // Registrando o saldo credor do periodo na tabela SaldoIPI.
           SaldoIPI.SQL.Clear;
           SaldoIPI.SQL.Add('SELECT * FROM SaldoIPI');
           SaldoIPI.SQL.Add('WHERE Mes_Ano = :pMes_Ano AND Operacao = :pOper');
           SaldoIPI.ParamByName('pMes_Ano').AsString := PoeZero(2,cMes.ItemIndex+1)+InttoStr(cAno.AsInteger);
           SaldoIPI.ParamByName('pOper').AsInteger   := iif(cIncent.KeyValue <> null, cIncent.KeyValue, 0);
           SaldoIPI.Open;

           if mSaldoTransp >= 0 then begin
              if SaldoIPI.RecordCount <> 0 then begin
                 SaldoIPI.Edit;
                          SaldoIPISaldo.Value := mSaldoTransp;
                 SaldoIPI.Post;
              end else begin
                 SaldoIPI.Append;
                          SaldoIPIMes_Ano.Value  := PoeZero(2,cMes.ItemIndex+1)+InttoStr(cAno.AsInteger);
                          SaldoIPIOperacao.Value := iif(cIncent.KeyValue <> null, cIncent.KeyValue, 0);
                          SaldoIPISaldo.Value    := mSaldoTransp;
                 SaldoIPI.Post;
              end;
           end;
      end;
end;

procedure TImpressao_FiscaisOP_RAIPI_P9.ppDetailBand2AfterPrint(Sender: TObject);
begin
     //mSaldoTransp := pTotalCreditos.Value-pTotalDebitos.Value;
     mSaldoTransp := pSaldoCredor.value;
     if mSaldoTransp < 0 then mSaldoTransp := 0;
end;

end.
