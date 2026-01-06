unit frmImpressao_FiscaisOP_LivroSaida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXSpin, Vcl.StdCtrls, Vcl.ExtCtrls, Mask, RXCtrls,
  FUNCOES, MaskUtils, INIFiles, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppParameter, ppReport, ppDBPipe,
  MemDS, RxToolEdit, ppDB, ppDesignLayer, ppModule, raCodMod, ppCache, ppComm, ppRelatv, ppProd, ppStrtch, ppSubRpt;

type
  TImpressao_FiscaisOP_LivroSaida = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    nImprimir: TButton;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    StaticText1: TStaticText;
    cModelo: TRadioGroup;
    cImpressora: TRadioGroup;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    cIncentivo: TComboBox;
    StaticText3: TStaticText;
    rLivroSaida: TppReport;
    ppParameterList2: TppParameterList;
    ppNotas: TppDBPipeline;
    pEmpresa: TppDBPipeline;
    StaticText4: TStaticText;
    cFolha: TRxSpinEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    dstTotaliza: TDataSource;
    tTotaliza: TMSQuery;
    pTotaliza: TppDBPipeline;
    rDetalhe: TppHeaderBand;
    lMovimento: TppLabel;
    ppShape4: TppShape;
    ppShape5: TppShape;
    lNomeLivro: TppLabel;
    lOperacao: TppLabel;
    ppLine82: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    lFolha: TppVariable;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLine85: TppLine;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine86: TppLine;
    ppLabel80: TppLabel;
    ppLine87: TppLine;
    ppLabel82: TppLabel;
    ppLine88: TppLine;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLine90: TppLine;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLine95: TppLine;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLine96: TppLine;
    ppLabel99: TppLabel;
    ppLine97: TppLine;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLine99: TppLine;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLine100: TppLine;
    ppLabel110: TppLabel;
    ppLine101: TppLine;
    ppLabel112: TppLabel;
    lPeriodo: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDetailBand4: TppDetailBand;
    lBC: TppDBText;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine118: TppLine;
    lOutras: TppDBText;
    ppLine119: TppLine;
    ppLine120: TppLine;
    lC9: TppDBText;
    lC8: TppDBText;
    lC7: TppDBText;
    lNumero: TppDBText;
    lC3: TppDBText;
    lC2: TppDBText;
    lIsentas: TppDBText;
    ppDBText19: TppDBText;
    lImposto: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine159: TppLine;
    ppLabel122: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLine162: TppLine;
    lTotalOutrasICMS: TppVariable;
    ppLabel123: TppLabel;
    lTotalICMS: TppVariable;
    lTotalIsentasICMS: TppVariable;
    lIPI: TppLabel;
    lTotalIPI: TppVariable;
    lTotalIsentasIPI: TppVariable;
    lTotalContabil: TppVariable;
    ppLabel129: TppLabel;
    lBCICMS: TppVariable;
    lTotalOutrasIPI: TppVariable;
    lTotalBCIPI: TppVariable;
    ppSubReport1: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine37: TppLine;
    ppLabel141: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLine38: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLabel139: TppLabel;
    ppLine36: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText32: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLine20: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLabel140: TppLabel;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    raCodeModule4: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure bSairClick(Sender: TObject);
    procedure ModeloP2;
    procedure ModeloP2A;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure lBCICMSCalc(Sender: TObject; var Value: Variant);
    procedure lTotalContabilCalc(Sender: TObject; var Value: Variant);
    procedure lTotalICMSCalc(Sender: TObject; var Value: Variant);
    procedure lBCIPICalc(Sender: TObject; var Value: Variant);
    procedure lTotalIsentasICMSCalc(Sender: TObject; var Value: Variant);
    procedure lTotalOutrasICMSCalc(Sender: TObject; var Value: Variant);
    procedure lTotalIsentasIPICalc(Sender: TObject; var Value: Variant);
    procedure lTotalIPICalc(Sender: TObject; var Value: Variant);
    procedure lTotalOutrasIPICalc(Sender: TObject; var Value: Variant);
    procedure rDetalheBeforePrint(Sender: TObject);
    procedure lTotalBCIPICalc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha            : Integer;
    mPagina           : Integer;
    Arquivo           : TextFile;
    mNomeArq          : String;
    mImprimir         : Boolean;
    mTotalVlICMS      : Currency;
    mTotalBCICMS      : Currency;
    mTotalOutrasICMS  : Currency;
    mTotalIsentasICMS : Currency;
    mTotalBCIPI       : Currency;
    mTotalVlIPI       : Currency;
    mTotalOutrasIPI   : Currency;
    mTotalIsentasIPI  : Currency;
    mTotalContab      : Currency;
    mIsentas          : Currency;
    mNomeVisualizar   : String;
  end;

var
  Impressao_FiscaisOP_LivroSaida: TImpressao_FiscaisOP_LivroSaida;

implementation

uses frmJanela_Processamento, frmDados, frmDMFiscal, frmImpressao_Visualizar, frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FiscaisOP_LivroSaida.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cModelo.ItemIndex     := aINI.ReadInteger('IMPRESSAO_RS', 'Modelo'        , 0 );
      cImpressora.ItemIndex := aINI.ReadInteger('IMPRESSAO_RS', 'Impressora'    , 1 );
      cDataIni.Date         := aINI.ReadDate   ('IMPRESSAO_RS', 'DataIni'       , Date );
      cDataFim.Date         := aINI.ReadDate   ('IMPRESSAO_RS', 'DataFim'       , Date );
      cIncentivo.Text       := aINI.ReadString ('IMPRESSAO_RS', 'Incentivo'     , '' );
      aINI.Free;
end;

procedure TImpressao_FiscaisOP_LivroSaida.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_FiscaisOP_LivroSaida.ModeloP2;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := tNotas.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Imprimindo o livro registro de saìda P2...';
      Janela_Processamento.Show;
      tNotas.First;

      With Dados, dmFiscal do begin
           Configuracao.Open;

           mLinha            := 0;
           mPagina           := 0;
           LinhaAtual        := 0;
           ColunaAtual       := 0;
           mTotalVlICMS      := 0;
           mTotalBCICMS      := 0;
           mTotalOutrasICMS  := 0;
           mTotalIsentasICMS := 0;
           mTotalVlIPI       := 0;
           mTotalBCIPI       := 0;
           mTotalOutrasIPI   := 0;
           mTotalIsentasIPI  := 0;
           mTotalContab      := 0;

           tNotas.First;

           While (not tNotas.Eof) and (FUNCOES.Cancelado = False) do begin
                 // Cabeçalho do relatorio.
                 If mLinha = 0 then begin
                    Inc(mPagina);
                    mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
                    If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                       mNomeArq := mNomeArq + '_Matriz'
                    else
                       mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

                    mNomeArq        := mNomeArq + '\Impressao';   
                    mNomeVisualizar := mNomeArq+'\LIVRO_RSP2_PG';

                    If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
                    mNomeArq := mNomeArq+'\LIVRO_RSP2_PG'+PoeZero(4, mPagina)+'.TXT';
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Write(Arquivo, #27, #33, Chr(5) );  // Pitch 15ppp
                    Say( mLinha   ,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
                    Say( mLinha+01,   0, Arquivo, '³ REGISTRO DE SAIDA - (Modelo P2)');
                    If Trim(cIncentivo.Text) = '' then
                       Say( mLinha+01,123, Arquivo, '| (TODAS AS OPERACOES)')
                    else
                       Say( mLinha+01,123, Arquivo, '| (OPERACOES '+Trim(cIncentivo.Text)+')');

                    Say( mLinha+01, 186, Arquivo, '|' );
                    Say( mLinha+02,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+03,   0, Arquivo, '³ FIRMA             : '+ Dados.EmpresasRazao_Social.AsString );
                    Say( mLinha+03, 186, Arquivo, '³' );
                    Say( mLinha+04,   0, Arquivo, '³ INSCRICAO ESTADUAL: '+ FormatMaskText( Dados.EstadosMascara_Inscricao.AsString , Dados.EmpresasIE.Value) + '                    CNPJ: '+FormatMaskText('99.999.999/9999-99;0; ', EmpresasCNPJ.Value) );
                    Say( mLinha+04, 186, Arquivo, '³' );
                    Say( mLinha+05,   0, Arquivo, '³ FOLHA             : '+ PoeZero(3,mPagina)+'                          PERIODO: '+cDataIni.Text+ ' a '+cDataFim.Text );
                    Say( mLinha+05, 186, Arquivo, '³' );
                    Say( mLinha+06,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄ-----------------------------------ÄÄÄÄÄÄ´');
                    Say( mLinha+07,   0, Arquivo, '³        DOCUMENTOS FISCAIS       ³              ³  CODIFICACAO  ³     ³                          VALORES FISCAIS                        ³                                                ³');
                    Say( mLinha+08,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄ´              ÃÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄ´     ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´                                                ³');
                    Say( mLinha+09,   0, Arquivo, '³ESPECIE³SERIE³ NUMERO ³ DIA ³ UF ³    VALOR     ³CONTABIL³FISCAL³ ICMS³   OPERACOES C/DEBITO DO IMPOSTO   ³ OPERACOES S/ DEBITO IMPOSTO ³                    OBSERVACOES                 ³');
                    Say( mLinha+10,   0, Arquivo, '³       ³ SUB ³        ³     ³DEST³   CONTABIL   ³        ³      ³  /  ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´                                                ³');
                    Say( mLinha+11,   0, Arquivo, '³       ³SERIE³        ³     ³    ³              ³        ³      ³ IPI ³     BASE     ³ALIQ.³   IMPOSTO    ³  ISENTAS OU  ³    OUTRAS    ³                                                ³');
                    Say( mLinha+12,   0, Arquivo, '³       ³     ³        ³     ³    ³              ³        ³      ³     ³  DE CALCULO  ³     ³   DEBITADO   ³NAO-TRIBUTADAS³              ³                                                ³');
                    Say( mLinha+13,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Inc(mLinha,14);
                 End;

                 // Imprimindo linha de itens.
                 If tNotas.FieldByName('Tipo').AsString = 'ICMS' then begin
                    Say( mLinha,   0, Arquivo, '|  '+ tNotas.FieldByName('Especie').AsString );
                    Say( mLinha,  08, Arquivo, '| ' + Copy(tNotas.FieldByName('Serie').AsString,1,3) );
                    Say( mLinha,  14, Arquivo, '| ' + PoeZero(6, tNotas.FieldByName('Numero').AsInteger) );
                    Say( mLinha,  23, Arquivo, '|  '+ PoeZero(2, tNotas.FieldByName('Dia').AsInteger ) );
                    Say( mLinha,  29, Arquivo, '| ' + tNotas.FieldByName('Estado').AsString);
                    If tNotas.FieldByName('Valor_TotalNota').AsCurrency <> 0 then
                       Say( mLinha,  34, Arquivo, '|'  + PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency), 14) )
                    else
                       Say( mLinha,  34, Arquivo, '|' );
                    Say( mLinha,  49, Arquivo, '|' );
                    Say( mLinha,  58, Arquivo, '|'  + FormatMaskText('#.###;0', Trim(tNotas.FieldByName('Natureza_Codigo').AsString)) );
                    Say( mLinha,  65, Arquivo, '|'  + tNotas.FieldByName('Tipo').AsString );
                    If tNotas.FieldByName('BCICMS').AsCurrency <> 0 then
                       Say( mLinha,  71, Arquivo, '|' + PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('BCICMS').AsCurrency), 14) )
                    else
                       Say( mLinha,  71, Arquivo, '|' );
                    If tNotas.FieldByName('Aliquota_ICMSOper').AsCurrency <> 0 then
                       Say( mLinha,  86, Arquivo, '|' + PadR(FormatFloat('#0.00', tNotas.FieldByName('Aliquota_ICMSOper').AsCurrency), 5) )
                    else
                       Say( mLinha,  86, Arquivo, '|'  );
                    If tNotas.FieldByName('Valor_ICMS').AsCurrency <> 0 then
                       Say( mLinha,  92, Arquivo, '|' + PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_ICMS').AsCurrency), 14) )
                    else
                       Say( mLinha,  92, Arquivo, '|' );
                    If tNotas.FieldByName('Valor_IsentasICMS').AsCurrency <> 0 then
                       Say( mLinha, 107, Arquivo, '|' + PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_IsentasICMS').AsCurrency), 14 ) )
                    else
                       Say( mLinha, 107, Arquivo, '|' );
                    If tNotas.FieldByName('Valor_OutrasICMS').AsCurrency <> 0 then
                       Say( mLinha, 122, Arquivo, '|' + PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_OutrasICMS').AsCurrency), 14 ) )
                    else
                       Say( mLinha, 122, Arquivo, '|' );
                 end else begin
                    Say( mLinha,   0, Arquivo, '|       |     |        |     |    |              |        |      |'+tNotas.FieldByName('Tipo').AsString );
                    If tNotas.FieldByName('BCIPI').AsCurrency <> 0 then
                       Say( mLinha,  71, Arquivo, '|' + PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('BCIPI').AsCurrency), 14) )
                    else
                       Say( mLinha,  71, Arquivo, '|' );
                    Say( mLinha,  86, Arquivo, '|');
                    If tNotas.FieldByName('Valor_TotalIPI').AsCurrency <> 0 then
                       Say( mLinha,  92, Arquivo, '|' + PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_TotalIPI').AsCurrency), 14) )
                    else
                       Say( mLinha,  92, Arquivo, '|' );
                    If tNotas.FieldByName('Valor_IsentasIPI').AsCurrency <> 0 then
                       Say( mLinha, 107, Arquivo, '|' + PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_IsentasIPI').AsCurrency), 14 ) )
                    else
                       Say( mLinha, 107, Arquivo, '|' );
                    If tNotas.FieldByName('Valor_OutrasIPI').AsCurrency <> 0 then
                       Say( mLinha, 122, Arquivo, '|' + PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_OutrasIPI').AsCurrency), 14 ) )
                    else
                       Say( mLinha, 122, Arquivo, '|' );

                    mTotalBCIPI := mTotalBCIPI  + tNotas.FieldByName('BCIPI').AsCurrency;
                 End;
                 Say( mLinha, 137, Arquivo, '|                  '+ tNotas.FieldByName('Texto_Cancelada').AsString );
                 Say( mLinha, 186, Arquivo, '|' );

                 If tNotas.FieldByName('Cancelada').AsBoolean = false then begin
                    mTotalContab      := mTotalContab      + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
                    mTotalVlICMS      := mTotalVlICMS      + tNotas.FieldByName('Valor_ICMS').AsCurrency;
                    mTotalBCICMS      := mTotalBCICMS      + tNotas.FieldByName('BCICMS').AsCurrency;
                    mTotalOutrasICMS  := mTotalOutrasICMS  + tNotas.FieldByName('Valor_OutrasICMS').AsCurrency;
                    mTotalIsentasICMS := mTotalIsentasICMS + tNotas.FieldByName('Valor_IsentasICMS').AsCurrency;
                    mTotalIsentasIPI  := mTotalIsentasIPI  + tNotas.FieldByName('Valor_IsentasIPI').AsCurrency;
                    mTotalOutrasIPI   := mTotalOutrasIPI   + tNotas.FieldByName('Valor_OutrasIPI').AsCurrency;
                    mTotalVlIPI       := mTotalVlIPI       + tNotas.FieldByName('Valor_TotalIPI').AsCurrency;
                 End;
                 Inc(mLinha);
                 tNotas.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;

                 If (mLinha >= 60) or (tNotas.Eof = True) then begin
                    Say( mLinha,0, Arquivo,'ÀÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                    Inc(mLinha,2);
                    If tNotas.Eof then begin
                       // TOTAIS.
                       Say( mLinha,  19, Arquivo, 'TOTAL CONTABIL : '+PadR(FormatFloat('###,###,##0.00', mTotalContab), 14) );
                       Say( mLinha,  67, Arquivo, 'ICMS  '+PadR(FormatFloat('###,###,##0.00', mTotalBCICMS), 14) );
                       Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalVlICMS), 14) );
                       Say( mLinha, 109, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalIsentasICMS), 14) );
                       Say( mLinha, 124, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalOutrasICMS), 14) );
                       Inc(mLinha);
                       Say( mLinha,  67, Arquivo, 'IPI   '+PadR(FormatFloat('###,###,##0.00', mTotalBCIPI), 14) );
                       Say( mLinha,  94, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalVlIPI), 14) );
                       Say( mLinha, 109, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalIsentasIPI), 14) );
                       Say( mLinha, 124, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalOutrasIPI), 14) );
                       Inc(mLinha);
                    End;
                    Say( mLinha,0, Arquivo, Chr(12) );
                    mLinha      := 0;
                    LinhaAtual  := 0;
                    ColunaAtual := 0;
                    CloseFile(Arquivo);
                 end;
                 Application.ProcessMessages;
           End;
           Janela_Processamento.Close;
      End;

      Impressao_Visualizar          := TImpressao_Visualizar.Create(Self);
      Impressao_Visualizar.mNome    := mNomeVisualizar;
      Impressao_Visualizar.Caption  := 'Cybersoft - Impressão de relatórios Fiscais';
      Impressao_Visualizar.mArquivo := mNomeVisualizar+'0001.TXT';
      Impressao_Visualizar.mTitulo  := 'REGISTRO DE SAIDAS - (Modelo P2)';
      Impressao_Visualizar.mPaginas := mPagina;
      Impressao_Visualizar.mPag     := 1;
      Impressao_Visualizar.ShowModal;

      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);
      DeletaRelatorios(Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_RSP2_PG', mPagina);
End;

procedure TImpressao_FiscaisOP_LivroSaida.ModeloP2A;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := tNotas.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Imprimindo o livro registro de saìda P2A...';
      Janela_Processamento.Show;
      tNotas.First;

      With Dados, dmFiscal do begin
           Configuracao.Open;

           mLinha            := 0;
           mPagina           := 0;
           LinhaAtual        := 0;
           ColunaAtual       := 0;
           mTotalVlICMS      := 0;
           mTotalBCICMS      := 0;
           mTotalOutrasICMS  := 0;
           mTotalIsentasICMS := 0;
           mTotalContab      := 0;

           tNotas.First;
           While (not tNotas.Eof) and (FUNCOES.Cancelado = False) do begin
                 // Cabeçalho do relatorio.
                 If mLinha = 0 then begin
                    Inc(mPagina);

                    mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
                    If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                       mNomeArq := mNomeArq + '_Matriz'
                    else
                       mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

                    mNomeArq        := mNomeArq + '\Impressao';
                    mNomeVisualizar := mNomeArq + '\LIVRO_RSP2A_PG';

                    If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
                    mNomeArq := mNomeArq+'\LIVRO_RSP2A_PG'+PoeZero(4, mPagina)+'.TXT';
                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);

                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Write(Arquivo, #27, #33, Chr(5) );  // Pitch 15ppp
                    Say( mLinha   ,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
                    Say( mLinha+01,   0, Arquivo, '³ REGISTRO DE SAIDA - (Modelo P2A)');
                    If Trim(cIncentivo.Text) = '' then
                       Say( mLinha+01,123, Arquivo, '| (TODAS AS OPERACOES)')
                    else
                       Say( mLinha+01,123, Arquivo, '| (OPERACOES '+Trim(cIncentivo.Text)+')');

                    Say( mLinha+01, 180, Arquivo, '|' );
                    Say( mLinha+02,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+03,   0, Arquivo, '³ FIRMA             : '+ Dados.EmpresasRazao_Social.AsString );
                    Say( mLinha+03, 180, Arquivo, '³' );
                    Say( mLinha+04,   0, Arquivo, '³ INSCRICAO ESTADUAL: '+ FormatMaskText( Dados.EstadosMascara_Inscricao.AsString , Dados.EmpresasIE.Value) + '                    CNPJ: '+FormatMaskText('99.999.999/9999-99;0; ', EmpresasCNPJ.Value) );
                    Say( mLinha+04, 180, Arquivo, '³' );
                    Say( mLinha+05,   0, Arquivo, '³ FOLHA             : '+ PoeZero(3,mPagina)+'                          PERIODO: '+cDataIni.Text+ ' a '+cDataFim.Text );
                    Say( mLinha+05, 180, Arquivo, '³' );
                    Say( mLinha+06,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄ-----------------------------------ÄÄÄÄÄÄ´');
                    Say( mLinha+07,   0, Arquivo, '³        DOCUMENTOS FISCAIS       ³              ³  CODIFICACAO  ³                          VALORES FISCAIS                        ³                                                ³');
                    Say( mLinha+08,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄ´              ÃÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´                                                ³');
                    Say( mLinha+09,   0, Arquivo, '³ESPECIE³SERIE³ NUMERO ³ DIA ³ UF ³    VALOR     ³CONTABIL³FISCAL³   OPERACOES C/DEBITO DO IMPOSTO   ³ OPERACOES S/ DEBITO IMPOSTO ³                    OBSERVACOES                 ³');
                    Say( mLinha+10,   0, Arquivo, '³       ³ SUB ³        ³     ³DEST³   CONTABIL   ³        ³      ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´                                                ³');
                    Say( mLinha+11,   0, Arquivo, '³       ³SERIE³        ³     ³    ³              ³        ³      ³     BASE     ³ALIQ.³   IMPOSTO    ³  ISENTAS OU  ³   OUTRAS     ³                                                ³');
                    Say( mLinha+12,   0, Arquivo, '³       ³     ³        ³     ³    ³              ³        ³      ³  DE CALCULO  ³     ³   DEBITADO   ³NAO-TRIBUTADAS³              ³                                                ³');
                    Say( mLinha+13,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Inc(mLinha,14);
                 End;

                 // Imprimindo linha de itens.
                 Say( mLinha,   0, Arquivo, '|  '+tNotas.FieldByName('Tipo').AsString );
                 Say( mLinha,  08, Arquivo, '| '+Copy(tNotas.FieldByName('Serie').AsString,1,3) );
                 Say( mLinha,  14, Arquivo, '| '+PoeZero(6, tNotas.FieldByName('Numero').AsInteger) );
                 Say( mLinha,  23, Arquivo, '|  '+PoeZero(2, tNotas.FieldByName('Dia').AsInteger ) );
                 Say( mLinha,  29, Arquivo, '| '+ClientesEstado.Value );
                 If tNotas.FieldByName('Cancelada').AsBoolean = False then
                    Say( mLinha,  34, Arquivo, '|'+PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency), 14) )
                 else
                    Say( mLinha,  34, Arquivo, '|' );

                 Say( mLinha,  49, Arquivo, '|' );
                 Say( mLinha,  58, Arquivo, '|'+FormatMaskText('#.###;0', Trim(tNotas.FieldByName('Natureza_Codigo').AsString)) );

                 If tNotas.FieldByName('Cancelada').AsBoolean = False then begin
                    Say( mLinha,  65, Arquivo, '|'+PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('BCICMS').AsCurrency), 14) );
                    Say( mLinha,  80, Arquivo, '|'+PadR(FormatFloat('#0.00', tNotas.FieldByName('Aliquota_ICMSOper').AsCurrency), 5) );
                    Say( mLinha,  86, Arquivo, '|'+PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_ICMS').AsCurrency), 14) );
                    Say( mLinha, 101, Arquivo, '|'+PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_IsentasICMS').AsCurrency), 14 ) );
                    Say( mLinha, 116, Arquivo, '|'+PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_OutrasICMS').AsCurrency ), 14 ) );
                    Say( mLinha, 131, Arquivo, '|' );
                    Say( mLinha, 180, Arquivo, '|' );
                    mTotalContab      := mTotalContab + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
                    mTotalVlICMS      := mTotalVlICMS + tNotas.FieldByName('Valor_ICMS').AsCurrency;
                    mTotalBCICMS      := mTotalBCICMS + tNotas.FieldByName('BCICMS').AsCurrency;
                    mTotalOutrasICMS  := mTotalOutrasICMS + tNotas.FieldByName('Valor_OutrasICMS').AsCurrency;
                    mTotalIsentasICMS := mTotalIsentasICMS + tNotas.FieldByName('Valor_IsentasICMS').AsCurrency;
                 end else begin
                    Say( mLinha,  65, Arquivo, '|');
                    Say( mLinha,  80, Arquivo, '|');
                    Say( mLinha,  86, Arquivo, '|');
                    Say( mLinha, 101, Arquivo, '|');
                    Say( mLinha, 116, Arquivo, '|');
                    Say( mLinha, 131, Arquivo, '|                  [ CANCELADA ]');
                    Say( mLinha, 180, Arquivo, '|');
                 End;

                 Inc(mLinha);
                 tNotas.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;

                 If (mLinha >= 60) or (tNotas.Eof = True) then begin
                    Say( mLinha,0, Arquivo,'ÀÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                    Inc(mLinha,2);
                    If tNotas.Eof then begin
                       // TOTAIS.
                       Say( mLinha,  27, Arquivo, 'TOTAIS : '+PadR(FormatFloat('###,###,##0.00', mTotalContab), 14) );
                       Say( mLinha,  67, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalBCICMS), 14) );
                       Say( mLinha,  88, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalVlICMS), 14) );
                       Say( mLinha, 103, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalIsentasICMS), 14) );
                       Say( mLinha, 118, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalOutrasICMS), 14) );
                    End;
                    Say( mLinha,0, Arquivo, Chr(12) );
                    mLinha      := 0;
                    LinhaAtual  := 0;
                    ColunaAtual := 0;

                    CloseFile(Arquivo);
                 end;
                 Application.ProcessMessages;
           End;
           Janela_Processamento.Close;
      End;
      If mImprimir <> True then begin
         Impressao_Visualizar          := TImpressao_Visualizar.Create(Self);
         Impressao_Visualizar.mNome    := mNomeVisualizar;
         Impressao_Visualizar.Caption  := 'Cybersoft - Impressão de relatórios Fiscais';
         Impressao_Visualizar.mArquivo := mNomeVisualizar+'0001.TXT';
         Impressao_Visualizar.mTitulo  := 'REGISTRO DE SAIDAS - (Modelo P2A)';
         Impressao_Visualizar.mPaginas := mPagina;
         Impressao_Visualizar.mPag     := 1;
         Impressao_Visualizar.ShowModal;

         // Deletando os arquivos texto gerados.
         Janela_Processamento := TJanela_Processamento.Create(Self);
         DeletaRelatorios(Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_RSP2_PG', mPagina);
      end;
      
      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);
      DeletaRelatorios(Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_RSP2A_PG', mPagina);
End;

procedure TImpressao_FiscaisOP_LivroSaida.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger( 'IMPRESSAO_RS', 'Modelo'        , cModelo.ItemIndex );
      aINI.WriteInteger( 'IMPRESSAO_RS', 'Impressora'    , 1);
      aINI.WriteDate   ( 'IMPRESSAO_RS', 'DataIni'       , cDataIni.Date );
      aINI.WriteDate   ( 'IMPRESSAO_RS', 'DataFim'       , cDataFim.Date );
      aINI.WriteString ( 'IMPRESSAO_RS', 'Incentivo'     , cIncentivo.Text );
      aINI.Free;

      Dados.Clientes.MasterSource := nil;
      Dados.Clientes.MasterFields := '';
      Dados.Clientes.Close;
      tNotas.Close;
      Dados.Empresas.Close;
      Dados.Estados.Close;
      Dados.Configuracao.Close;

      LimpaMemoria;
      Impressao_FiscaisOP_LivroSaida.Release;
      Impressao_FiscaisOP_LivroSaida := nil;
end;

procedure TImpressao_FiscaisOP_LivroSaida.nImprimirClick(Sender: TObject);
begin
      If cDataIni.Date > cDataFim.Date then begin
         ShowMessage('Data Inicial não pode maior que a data final.');
         Abort;
      End;
      If (cDataIni.Text = '  /  /    ') or (cDataFim.Text = '  /  /    ') then begin
         ShowMessage('Data invalida.');
         Abort;
      End;

      Screen.Cursor := crSQLWait;
      With dmFiscal, Dados do begin
           tNotas.SQL.Clear;
           tNotas.SQL.Add('SELECT Numero, ');
           tNotas.SQL.Add('       ''ICMS'' AS Tipo, ');
           tNotas.SQL.Add('       Data_Emissao, ');
           tNotas.SQL.Add('       DAY(Data_Emissao) as Dia, ');
           tNotas.SQL.Add('       ''NF'' as Especie, ');
           tNotas.SQL.Add('       (SELECT NFEletronica_Serie FROM Cybersoft_Cadastros.dbo.Empresas WHERE(Codigo = :pEmpresa)) AS Serie, ');
           tNotas.SQL.Add('       Natureza_Codigo, ');
           tNotas.SQL.Add('       (SELECT Clientes.Nome FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) AS Cliente, ');
           tNotas.SQL.Add('       (SELECT Estado FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) AS Estado, ');
           tNotas.SQL.Add('       CASE WHEN (Cancelada = 1 OR Nfe_Denegada = 1) THEN 0 ELSE Valor_TotalNota     END AS Valor_TotalNota,');
           tNotas.SQL.Add('       CASE WHEN (Cancelada = 1 OR Nfe_Denegada = 1) OR (ISNULL(ICMS_Destacar, 0) = 1) THEN 0 ELSE BCICMS            END AS BCICMS,');
           tNotas.SQL.Add('       CASE WHEN (Cancelada = 1 OR Nfe_Denegada = 1) OR (ISNULL(ICMS_Destacar, 0) = 1) THEN 0 ELSE Valor_ICMS        END AS Valor_ICMS,');
           tNotas.SQL.Add('       CASE WHEN (Cancelada = 1 OR Nfe_Denegada = 1) OR (ISNULL(ICMS_Destacar, 0) = 1) THEN 0 ELSE Aliquota_ICMSOper END AS Aliquota_ICMSOper,');
           tNotas.SQL.Add('       CASE WHEN (Cancelada = 1 OR Nfe_Denegada = 1) THEN 0 ELSE Valor_IsentasICMS   END AS Valor_IsentasICMS,');
           tNotas.SQL.Add('       CASE WHEN (Cancelada = 1 OR Nfe_Denegada = 1) THEN 0 ELSE Valor_OutrasICMS    END AS Valor_OutrasICMS,');
           tNotas.SQL.Add('       CASE WHEN (Cancelada = 1 OR Nfe_Denegada = 1) THEN 0 ELSE Valor_TotalProdutos END AS Valor_TotalProdutos,');
           tNotas.SQL.Add('       0 AS BCIPI, ');
           tNotas.SQL.Add('       0 AS Valor_TotalIPI, ');
           tNotas.SQL.Add('       0 AS Valor_IsentasIPI, ');
           tNotas.SQL.Add('       0 AS Valor_OutrasIPI, ');
           tNotas.SQL.Add('       NotasFiscais.Incentivo_Fiscal, ');
           tNotas.SQL.Add('       Cancelada, ');
           tNotas.SQL.Add('       Nfe_Denegada, ');
           tNotas.SQL.Add('       CASE WHEN Cancelada = 1 THEN ''[ CANCELADA ]'' ELSE CASE WHEN Nfe_Denegada = 1 THEN ''[ DENEGADA ]'' END END AS Texto_Cancelada,');
           tNotas.SQL.Add('       Observacoes = '''' ');
           tNotas.SQL.Add('FROM NotasFiscais ');
           tNotas.SQL.Add('WHERE (Saida_Entrada = 1) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim)');
           If Trim(cIncentivo.Text) <> '' then begin
              tNotas.SQL.Add(' AND (Incentivo_Fiscal = :pIncentivo)' );
              tNotas.ParamByName('pIncentivo').AsString := Trim(cIncentivo.Text);
           End;
           If cModelo.ItemIndex = 0 then begin
              tNotas.SQL.Add('UNION ALL ');
              tNotas.SQL.Add('SELECT Numero, ');
              tNotas.SQL.Add('       ''IPI'', ');
              tNotas.SQL.Add('       Data_Emissao, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       NULL, ');
              tNotas.SQL.Add('       CASE WHEN (Cancelada = 1  OR Nfe_Denegada = 1) THEN 0 ELSE BCIPI            END AS BCIPI,');
              tNotas.SQL.Add('       CASE WHEN (Cancelada = 1  OR Nfe_Denegada = 1) THEN 0 ELSE Valor_TotalIPI   END AS Valor_TotalIPI,');
              tNotas.SQL.Add('       CASE WHEN (Cancelada = 1  OR Nfe_Denegada = 1) THEN 0 ELSE Valor_IsentasIPI END AS Valor_IsentasIPI,');
              tNotas.SQL.Add('       CASE WHEN (Cancelada = 1  OR Nfe_Denegada = 1) THEN 0 ELSE Valor_OutrasIPI  END AS Valor_OutrasIPI,');
              tNotas.SQL.Add('       NotasFiscais.Incentivo_Fiscal, ');
              tNotas.SQL.Add('       Cancelada, ');
              tNotas.SQL.Add('       Nfe_Denegada, ');
              tNotas.SQL.Add('       NULL,');
              tNotas.SQL.Add('       Observacoes = '''' ');
              tNotas.SQL.Add('FROM NotasFiscais ');
              tNotas.SQL.Add('WHERE (Saida_Entrada = 1) AND (Cancelada = 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim)');

              If Trim(cIncentivo.Text) <> '' then begin
                 tNotas.SQL.Add(' AND (Incentivo_Fiscal = :pIncentivo)' );
              End;
           End;

           If cModelo.ItemIndex = 1 then begin
              tNotas.SQL.Add('UNION ALL');
              tNotas.SQL.Add('SELECT Numero,');
              tNotas.SQL.Add('       ''ICMS'' AS Tipo,');
              tNotas.SQL.Add('       Data_Emissao,');
              tNotas.SQL.Add('       DAY(Data_Emissao) as Dia,');
              tNotas.SQL.Add('       ''NF'' as Especie,');
              tNotas.SQL.Add('       ''1'',');
              tNotas.SQL.Add('       Natureza_Codigo,');
              tNotas.SQL.Add('       (SELECT Clientes.Nome FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) AS Cliente,');
              tNotas.SQL.Add('       (SELECT Estado FROM Clientes WHERE(Codigo = NotasFiscais.Cliente_Codigo)) AS Estado,');
              tNotas.SQL.Add('       0 AS Valor_TotalNota,');
              tNotas.SQL.Add('       0 AS BCICMS,');
              tNotas.SQL.Add('       DIFAL_ValorOrig AS Valor_ICMS,');
              tNotas.SQL.Add('       0 AS Aliquota_ICMSOper,');
              tNotas.SQL.Add('       0 AS Valor_IsentasICMS,');
              tNotas.SQL.Add('       0 AS Valor_OutrasICMS,');
              tNotas.SQL.Add('       0 AS Valor_TotalProdutos,');
              tNotas.SQL.Add('       0 AS BCIPI,');
              tNotas.SQL.Add('       0 AS Valor_TotalIPI,');
              tNotas.SQL.Add('       0 AS Valor_IsentasIPI,');
              tNotas.SQL.Add('       0 AS Valor_OutrasIPI,');
              tNotas.SQL.Add('       NotasFiscais.Incentivo_Fiscal,');
              tNotas.SQL.Add('       Cancelada,');
              tNotas.SQL.Add('       Nfe_Denegada,');
              tNotas.SQL.Add('       ''DIFERENCIAL DE ALIQUOTA'' AS Texto_Cancelada,');
              tNotas.SQL.Add('       Observacoes = '''' ');
              tNotas.SQL.Add('FROM NotasFiscais');
              tNotas.SQL.Add('WHERE (Saida_Entrada = 1) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (DIFAL_ValorOrig > 0)');
           end;

           tNotas.SQL.Add('ORDER BY Data_Emissao ASC, Numero ASC, Tipo ASC, Valor_TotalNota desc');
           tNotas.ParamByName('pDataIni').AsDate    := cDataIni.Date;
           tNotas.ParamByName('pDataFim').AsDate    := cDataFim.Date;
           tNotas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           //tNotas.SQL.SaveToFile('c:\temp\Livro_Saidas.SQL');
           tNotas.Open;

           with tTotaliza do begin
                sql.Clear;
                sql.Add('select Natureza_Codigo');
                sql.Add('      ,Grupo             = substring(Natureza_Codigo,1,1)+''000'' ');
                sql.Add('      ,Titulo            = (select upper(Descricao_NF) from Cybersoft_Cadastros.dbo.Natureza where Codigo = substring(Natureza_Codigo,1,1)+''000'')');
                sql.Add('      ,Total_Contabil    = sum(Valor_TotalNota)');
                sql.Add('      ,Total_BCICMS      = sum(BCICMS)');
                sql.Add('      ,Total_ICMS        = sum(Valor_ICMS)');
                sql.Add('      ,Total_IsentasICMS = sum(Valor_IsentasICMS)');
                sql.Add('      ,Total_OutrasICMS  = sum(Valor_OutrasICMS)');
                sql.Add('      ,Total_BCIPI       = sum(BCIPI)');
                sql.Add('      ,Total_IPI         = sum(Valor_TotalIPI)');
                sql.Add('      ,Total_IsentasIPI  = sum(Valor_IsentasIPI)');
                sql.Add('      ,Total_OutrasIPI   = sum(Valor_OutrasIPI)');
                sql.Add('from NotasFiscais');
                sql.Add('where (Saida_Entrada = 1)');
                sql.Add('and (Data_Emissao between :pDataIni and :pDataFim)');
                sql.Add('and isnull(Cancelada, 0) = 0');
                sql.Add('and isnull(Nfe_Denegada, 0) = 0');
                sql.Add('group by Natureza_Codigo');
                sql.Add('order by Natureza_Codigo');
                ParamByName('pDataIni').AsDate    := cDataIni.Date;
                ParamByName('pDataFim').AsDate    := cDataFim.Date;
                //sql.SaveToFile('c:\temp\Livro_Saida_Totaliza.sql');
                open;
           end;

           lMovimento.Visible := tNotas.RecordCount = 0;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);
           Clientes.Open;

           If cImpressora.ItemIndex = 0 then begin
              If cModelo.ItemIndex = 0 then ModeloP2 else ModeloP2A;
           End else begin
              If cModelo.ItemIndex = 0 then begin
                 lNomeLivro.Caption       := 'REGISTRO DE SAÍDAS (Modelo P2)';
                 lIPI.Visible             := true;
                 lTotalBCIPI.Visible      := true;
                 lTotalIPI.Visible        := true;
                 lTotalIsentasIPI.Visible := true;
                 lTotalOutrasIPI.Visible  := true;
              End;
              If cModelo.ItemIndex = 1 then begin
                 lNomeLivro.Caption       := 'REGISTRO DE SAÍDAS (Modelo P2-A)';
                 lIPI.Visible             := false;
                 lTotalBCIPI.Visible      := false;
                 lTotalIPI.Visible        := false;
                 lTotalIsentasIPI.Visible := false;
                 lTotalOutrasIPI.Visible  := false;
              End;
              If Trim(cIncentivo.Text) = '' then
                 lOperacao.Caption := '( Todas as Operações )'
              else begin
                 lOperacao.Caption := '( Operações '+cIncentivo.Text+' )';
              End;
              lNumero.Visible  := true;
              lPeriodo.Caption := cDataIni.Text+ ' a '+cDataFim.Text;

              rLivroSaida.Print;
              rLivroSaida.Reset;
           End;
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_FiscaisOP_LivroSaida.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_LivroSaida.ppDetailBand4BeforePrint(Sender: TObject);
begin
      If cModelo.ItemIndex = 0 then begin
         If tNotas.FieldByName('Tipo').AsString = 'ICMS' then begin
            lBC.DataField      := 'BCICMS';
            lImposto.DataField := 'Valor_ICMS';
            lIsentas.DataField := 'Valor_IsentasICMS';
            lOutras.DataField  := 'Valor_OutrasICMS';
            lNumero.Visible    := true;
         end else begin
            lNumero.Visible    := false;
            lBC.DataField      := 'BCIPI';
            lImposto.DataField := 'Valor_TotalIPI';
            lIsentas.DataField := 'Valor_IsentasIPI';
            lOutras.DataField  := 'Valor_OutrasIPI';
         End;
      End;
end;

procedure TImpressao_FiscaisOP_LivroSaida.lBCICMSCalc(Sender: TObject;var Value: Variant);
begin
      Value := Value + tNotas.FieldByName('BCICMS').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroSaida.lTotalContabilCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tNotas.FieldByName('Valor_TotalNota').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroSaida.lTotalICMSCalc(Sender: TObject;var Value: Variant);
begin
      Value := Value + tNotas.FieldByName('Valor_ICMS').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroSaida.lBCIPICalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tNotas.FieldByName('BCIPI').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroSaida.lTotalIsentasICMSCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tNotas.FieldByName('Valor_IsentasICMS').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroSaida.lTotalOutrasICMSCalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tNotas.FieldByName('Valor_OutrasICMS').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroSaida.lTotalIsentasIPICalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tNotas.FieldByName('Valor_IsentasIPI').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroSaida.lTotalIPICalc(Sender: TObject;var Value: Variant);
begin
      Value := Value + tNotas.FieldByName('Valor_TotalIPI').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroSaida.lTotalOutrasIPICalc(Sender: TObject; var Value: Variant);
begin
      Value := Value + tNotas.FieldByName('Valor_OutrasIPI').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroSaida.rDetalheBeforePrint(Sender: TObject);
begin
      lFolha.Value := cFolha.AsInteger-1 + rLivroSaida.PageNo;
end;

procedure TImpressao_FiscaisOP_LivroSaida.lTotalBCIPICalc(Sender: TObject;  var Value: Variant);
begin
      Value := Value + tNotas.FieldByName('BCIPI').AsCurrency;
end;

end.
