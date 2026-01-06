unit frmImpressao_FiscaisOP_LivroEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Mask, RXSpin, RXCtrls, DB, DBAccess, MSAccess, FUNCOES,
  MaskUtils, INIFiles, ppBands, ppClass, ppDBPipe, ppReport, ppPrnabl, ppCtrls, ppVar, ppMemo, ppParameter, MemDS, RxToolEdit, ppStrtch, ppDesignLayer, ppModule, raCodMod, ppCache, ppProd, ppDB, ppComm, ppRelatv, ppSubRpt;

type
    TImpressao_FiscaisOP_LivroEntrada = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    cModelo: TRadioGroup;
    cImpressora: TRadioGroup;
    tNotas: TMSQuery;
    cOperacao: TRadioGroup;
    dstNotas: TDataSource;
    tItens: TMSQuery;
    pNotas: TppDBPipeline;
    pEmpresa: TppDBPipeline;
    StaticText3: TStaticText;
    cFolha: TRxSpinEdit;
    rLivroEntradaP1: TppReport;
    ppParameterList2: TppParameterList;
    rLivroEntradaP1A: TppReport;
    ppParameterList1: TppParameterList;
    tNotasP1A: TMSQuery;
    dstNotasP1A: TDataSource;
    pNotasP1A: TppDBPipeline;
    cIncentivo: TComboBox;
    StaticText4: TStaticText;
    cDataIni: TDateEdit;
    cDataFim: TDateEdit;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    lOperacaoP1A: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    lFolha_P1A: TppVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine5: TppLine;
    ppLabel19: TppLabel;
    ppLine6: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLine8: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine9: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine14: TppLine;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine15: TppLine;
    ppLabel38: TppLabel;
    ppLine16: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine17: TppLine;
    ppLabel41: TppLabel;
    ppLabel51: TppLabel;
    lPeriodo2: TppLabel;
    ppLabel42: TppLabel;
    ppLabel2: TppLabel;
    ppLabel43: TppLabel;
    ppLine18: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText10: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine39: TppLine;
    lC9_P1A: TppDBText;
    lC8_P1A: TppDBText;
    lC7_P1A: TppDBText;
    lC6_P1A: TppDBText;
    lC5_P1A: TppDBText;
    lC4_P1A: TppDBText;
    lC3_P1A: TppDBText;
    lC2_P1A: TppDBText;
    lC1_P1A: TppDBText;
    lCanceladaP1A: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLine19: TppLine;
    lCodigo2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine40: TppLine;
    ppLabel54: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine43: TppLine;
    lTotalICMS1_P1A: TppVariable;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    lTotalICMS2_P1A: TppVariable;
    ppLabel57: TppLabel;
    lTotalICMS3_P1A: TppVariable;
    lTotalIPI1_P1A: TppVariable;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    lTotalIPI2_P1A: TppVariable;
    ppLabel60: TppLabel;
    lTotalIPI3_P1A: TppVariable;
    lTotalContabil_P1A: TppVariable;
    ppLabel61: TppLabel;
    lTotalICMS_P1A: TppVariable;
    ppLabel63: TppLabel;
    lTotalIPI_P1A: TppVariable;
    ppLabel113: TppLabel;
    lObservacao: TppDBMemo;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    lMovimento: TppLabel;
    tTotaliza: TMSQuery;
    pTotaliza: TppDBPipeline;
    dstTotaliza: TDataSource;
    rDetalhe: TppHeaderBand;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel62: TppLabel;
    lOperacao: TppLabel;
    ppLabel64: TppLabel;
    ppLine82: TppLine;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    lFolha: TppVariable;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLine85: TppLine;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine86: TppLine;
    ppLabel80: TppLabel;
    ppLine87: TppLine;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLine88: TppLine;
    ppLabel84: TppLabel;
    ppLine89: TppLine;
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
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine96: TppLine;
    ppLabel99: TppLabel;
    ppLine97: TppLine;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLine98: TppLine;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLine99: TppLine;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLine100: TppLine;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine101: TppLine;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    lPeriodo: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText7: TppDBText;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppDBText8: TppDBText;
    ppLine119: TppLine;
    ppLine120: TppLine;
    lC9: TppDBText;
    lC8: TppDBText;
    lC7: TppDBText;
    lC6: TppDBText;
    lC5: TppDBText;
    lC4: TppDBText;
    lC3: TppDBText;
    lC2: TppDBText;
    lC1: TppDBText;
    lCancelada: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    lCodigo: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine159: TppLine;
    ppLabel122: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine161: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLine162: TppLine;
    lTotalICMS1: TppVariable;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    lTotalICMS2: TppVariable;
    ppLabel125: TppLabel;
    lTotalICMS3: TppVariable;
    lTotalIPI1: TppVariable;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    lTotalIPI2: TppVariable;
    ppLabel128: TppLabel;
    lTotalIPI3: TppVariable;
    lTotalContabil: TppVariable;
    ppLabel129: TppLabel;
    lTotalICMS: TppVariable;
    ppLabel130: TppLabel;
    lTotalIPI: TppVariable;
    ppLabel131: TppLabel;
    lMovimento2: TppLabel;
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
    ppFooterBand3: TppFooterBand;
    ppLine37: TppLine;
    ppLabel141: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLine38: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine44: TppLine;
    ppLabel142: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLine45: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppLabel143: TppLabel;
    ppLine46: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText40: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc28: TppDBCalc;
    ppLine47: TppLine;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppLabel144: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ModeloP1;
    procedure ModeloP1A;
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure rDetalheBeforePrint(Sender: TObject);
    procedure lTotalContabilCalc(Sender: TObject; var Value: Variant);
    procedure rLivroEntradaP1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure lTotalContabil_P1ACalc(Sender: TObject; var Value: Variant);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure rLivroEntradaP1ABeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mLinha         : Integer;
    mPagina        : Integer;
    Arquivo        : TextFile;
    mNomeArq       : String;
    mImprimir      : Boolean;
    mTotalCIPI     : Currency;
    mTotalSIPI     : Currency;
    mTotalICMS     : Currency;
    mQuebra        : Boolean;
    mTotalVlICMS   : Currency;
    mTotalICMS1    : Currency;
    mTotalICMS2    : Currency;
    mTotalICMS3    : Currency;
    mTotalVlIPI    : Currency;
    mTotalIPI1     : Currency;
    mTotalIPI2     : Currency;
    mTotalIPI3     : Currency;
    mTotalContab   : Currency;
    mImpIPI1       : Boolean;
    mImpIPI2       : Boolean;
    mImpIPI3       : Boolean;
    mNota          : Integer;
    mCFOP          : String;
    mFornecedor    : Integer;
    mApuracaoICMS  : Currency;
    mApuracaoIPI   : Currency;
    mNomeVisualizar: String;
end;

var
  Impressao_FiscaisOP_LivroEntrada: TImpressao_FiscaisOP_LivroEntrada;

implementation

uses frmDMFiscal, frmDados, frmJanela_Processamento, frmImpressao_Visualizar,frmMenu_Principal;

{$R *.dfm}

procedure TImpressao_FiscaisOP_LivroEntrada.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_FiscaisOP_LivroEntrada.ModeloP1;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := tNotas.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Imprimindo o livro registro de entrada P1...';
      Janela_Processamento.Show;
      tNotas.First;

      With Dados, dmFiscal do begin
           Configuracao.Open;

           mLinha       := 0;
           mPagina      := 0;
           LinhaAtual   := 0;
           ColunaAtual  := 0;
           mTotalVlICMS := 0;
           mTotalICMS1  := 0;
           mTotalICMS2  := 0;
           mTotalICMS3  := 0;
           mTotalVlIPI  := 0;
           mTotalIPI1   := 0;
           mTotalIPI2   := 0;
           mTotalIPI3   := 0;
           mTotalContab := 0;
           mImpIPI1     := False;
           mImpIPI2     := False;
           mImpIPI3     := False;

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
                    mNomeVisualizar := mNomeArq + '\LIVRO_REP1_PG';

                    If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
                    mNomeArq := mNomeArq+'\LIVRO_REP1_PG'+PoeZero(4, mPagina)+'.TXT';

                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);
                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    // Impressão do cabeçalho.
                    Write(Arquivo, #27, mComprime15 );  // Pitch 15ppp
                    Say( mLinha   ,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
                    Say( mLinha+01,   0, Arquivo, '³ REGISTRO DE ENTRADAS - (Modelo P1)');
                    If Trim(cIncentivo.Text) = '' then
                       Say( mLinha+01,91, Arquivo, '| (TODAS AS OPERACOES)')
                    else
                       Say( mLinha+01,91, Arquivo, '| (OPERACOES '+Trim(cIncentivo.Text)+')');

                    Say( mLinha+01, 123, Arquivo, '³ (a) CODIGO DE VALORES FISCAIS'+Replicate(' ',32)+'³' );
                    Say( mLinha+02,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+03,   0, Arquivo, '³ FIRMA             : '+ Dados.EmpresasRazao_Social.AsString );
                    Say( mLinha+03, 123, Arquivo, '³ 1 - Operacoes com credito do imposto.        '+Replicate(' ', 16) + '³' );
                    Say( mLinha+04,   0, Arquivo, '³ INSCRICAO ESTADUAL: '+ FormatMaskText( Dados.EstadosMascara_Inscricao.AsString , Dados.EmpresasIE.Value) + '                    CNPJ: '+FormatMaskText('99.999.999/9999-99;0; ', EmpresasCNPJ.Value) );
                    Say( mLinha+04, 123, Arquivo, '³ 2 - Oper.sem credito do imposto - Isentas ou nao tributadas  ³' );
                    Say( mLinha+05,   0, Arquivo, '³ FOLHA             : '+ PoeZero(3,mPagina)+'                          PERIODO: '+cDataIni.Text+ ' a '+cDataFim.Text );
                    Say( mLinha+05, 123, Arquivo, '³ 3 - Oper.sem credito de imposto - Outras.                    ³' );
                    Say( mLinha+06,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+07,   0, Arquivo, '³          ³                       DOCUMENTOS FISCAIS                ³              ³  CODIFICACAO  ³        ICMS VALORES FISCAIS         ³      IPI VALORES FISCAIS      ³               ³');
                    Say( mLinha+08,   0, Arquivo, '³          ÃÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄ´              ÃÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÅÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄ´               ³');
                    Say( mLinha+09,   0, Arquivo, '³ DATA DE  ³ESPECIE³SERIE³NUMERO³ DATA DO  ³      CODIGO      ³  UF  ³    VALOR     ³CONTABIL³FISCAL³COD³   BASE DE    ³ALIQ.³  IMPOSTO   ³COD³   BASE DE    ³  IMPOSTO   ³  OBSERVACOES  ³');
                    Say( mLinha+10,   0, Arquivo, '³ ENTRADA  ³       ³ SUB ³      ³DOCUMENTO ³     EMITENTE     ³ORIGEM³   CONTABIL   ³        ³      ³(a)³   CALCULO    ³     ³ CREDITADO  ³(a)³   CALCULO    ³ CREDITADO  ³               ³');
                    Say( mLinha+11,   0, Arquivo, '³          ³       ³SERIE³      ³          ³                  ³      ³              ³        ³      ³   ³   VALOR DA   ³     ³            ³   ³   VALOR DA   ³            ³               ³');
                    Say( mLinha+12,   0, Arquivo, '³          ³       ³     ³      ³          ³                  ³      ³              ³        ³      ³   ³   OPERACAO   ³     ³            ³   ³   OPERACAO   ³            ³               ³');
                    Say( mLinha+13,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Inc(mLinha,14);
                 End;

                 // Imprimindo linha de itens.
                 If (mNota <> tNotas.FieldByName('Numero').AsInteger) and (mCFOP <> tNotas.FieldByName('Natureza_Codigo').AsString) then begin
                    mNota := tNotas.FieldByName('Numero').AsInteger;
                    mCFOP := tNotas.FieldByName('Natureza_Codigo').AsString;
                    Say( mLinha,   0, Arquivo, '|'+ tNotas.FieldByName('Data_EntradaSaida').AsString );
                    Say( mLinha,  11, Arquivo, '|  '+tNotas.FieldByName('Tipo').AsString );
                    Say( mLinha,  19, Arquivo, '|'+Copy(tNotas.FieldByName('Serie').AsString,1,3) );
                    Say( mLinha,  25, Arquivo, '|'+PoeZero(6, tNotas.FieldByName('Numero').AsInteger) );
                    Say( mLinha,  32, Arquivo, '|'+tNotas.FieldByName('Data_Emissao').AsString );
                    Say( mLinha,  43, Arquivo, '|'+FormatMaskText('##.###.###/####-##;0; ', FornecedoresCNPJ.Value) );
                    Say( mLinha,  62, Arquivo, '|  '+FornecedoresEstado.Value );
                    Say( mLinha,  69, Arquivo, '|'+PadR(FormatFloat('###,###,##0.00', tNotas.FieldByName('Valor_TotalNota').AsCurrency), 14) );
                    Say( mLinha,  84, Arquivo, '|' );
                    Say( mLinha,  93, Arquivo, '|'+FormatMaskText('#.###;0', tNotas.FieldByName('Natureza_Codigo').AsString) );
                 end else begin
                    Say( mLinha,   0, Arquivo, '|          |       |     |      |          |                  |      |              |        |      ');
                 End;

                 If not tNotas.FieldByName('Cancelada').AsBoolean then begin
                    // Coluna do ICMS.
                    mTotalVlICMS := mTotalVlICMS + tNotas.FieldByName('Imposto_ICMS').AsCurrency;
                    mTotalContab := mTotalContab + tNotas.FieldByName('Valor_Contabil').AsCurrency;
                    If tNotas.FieldByName('Codigo_ICMS').AsInteger = 1 then begin
                       mApuracaoICMS := tNotas.FieldByName('BCICMS').AsCurrency;
                       mTotalICMS1   := mTotalICMS1 + tNotas.FieldByName('BCICMS').AsCurrency;
                    End;
                    If tNotas.FieldByName('Codigo_ICMS').AsInteger = 2 then begin
                       mApuracaoICMS := tNotas.FieldByName('Valor_IsentasICMS').AsCurrency;
                       mTotalICMS2   := mTotalICMS2 + tNotas.FieldByName('Valor_IsentasICMS').AsCurrency;
                    End;
                    If tNotas.FieldByName('Codigo_ICMS').AsInteger = 3 then begin
                       mApuracaoICMS := tNotas.FieldByName('Valor_OutrasICMS').AsCurrency;
                       mTotalICMS3   := mTotalICMS3 + tNotas.FieldByName('Valor_OutrasICMS').AsCurrency;
                    End;
                    If tNotas.FieldByName('Codigo_ICMS').AsInteger <> 0 then begin
                       Say( mLinha, 100, Arquivo, '| '+Trim(tNotas.FieldByName('Codigo_ICMS').AsString));
                       Say( mLinha, 104, Arquivo, '|'+PadR(FormatFloat('###,###,##0.00', mApuracaoICMS), 14) );
                       If tNotas.FieldByName('Imposto_ICMS').AsInteger <> 0 then begin
                          Say( mLinha, 119, Arquivo, '|'+PadR(FormatFloat('#0.00', tNotas.FieldByName('Aliquota_ICMSOper').AsCurrency), 5) );
                          Say( mLinha, 125, Arquivo, '|'+PadR(FormatFloat('#,###,##0.00', tNotas.FieldByName('Imposto_ICMS').AsCurrency), 12) );
                       end else begin
                          Say( mLinha, 119, Arquivo, '|' );
                          Say( mLinha, 125, Arquivo, '|' );
                       End;
                    end else begin
                       Say( mLinha, 100, Arquivo, '|');
                       Say( mLinha, 104, Arquivo, '|');
                       Say( mLinha, 119, Arquivo, '|');
                       Say( mLinha, 125, Arquivo, '|');
                    End;

                    // Coluna do IPI.
                    mTotalVlIPI := mTotalVlIPI + tNotas.FieldByName('Imposto_IPI').AsCurrency;
                    If tNotas.FieldByName('Codigo_IPI').AsInteger = 1 then begin
                       mApuracaoIPI := tNotas.FieldByName('BCIPI').AsCurrency;
                       mTotalIPI1   := mTotalIPI1 + tNotas.FieldByName('BCIPI').AsCurrency;
                    End;
                    If tNotas.FieldByName('Codigo_IPI').AsInteger = 2 then begin
                       mApuracaoIPI := tNotas.FieldByName('Valor_IsentasIPI').AsCurrency;
                       mTotalIPI2   := mTotalIPI2 + tNotas.FieldByName('Valor_IsentasIPI').AsCurrency;
                    End;
                    If tNotas.FieldByName('Codigo_IPI').AsInteger = 3 then begin
                       mApuracaoIPI := tNotas.FieldByName('Valor_OutrasIPI').AsCurrency;
                       mTotalIPI3   := mTotalIPI3 + tNotas.FieldByName('Valor_OutrasIPI').AsCurrency;
                    End;

                    If tNotas.FieldByName('Codigo_IPI').AsInteger <> 0 then begin
                       Say( mLinha, 138, Arquivo, '| '+Trim(tNotas.FieldByName('Codigo_IPI').AsString));
                       Say( mLinha, 142, Arquivo, '|'+PadR(FormatFloat('###,###,##0.00', mApuracaoIPI), 14) );
                       Say( mLinha, 157, Arquivo, '|'+PadR(FormatFloat('#,###,##0.00', tNotas.FieldByName('Imposto_IPI').AsCurrency), 12) );
                       Say( mLinha, 170, Arquivo, '|' );
                       Say( mLinha, 186, Arquivo, '|' );
                    end else begin
                       Say( mLinha, 138, Arquivo, '|');
                       Say( mLinha, 142, Arquivo, '|');
                       Say( mLinha, 157, Arquivo, '|');
                       Say( mLinha, 170, Arquivo, '|');
                       Say( mLinha, 186, Arquivo, '|');
                    End;
                 end else begin
                    Say( mLinha, 100, Arquivo, '|   |              |     |            |   |              |            |   CANCELADA   |');
                 End;

                 Inc(mLinha);
                 tNotas.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;

                 // Quebra de Pagina.
                 If (mLinha >= 60) or (tNotas.Eof) then begin
                    Say( mLinha,0, Arquivo,'ÀÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ');
                    Inc(mLinha,2);
                    If tNotas.Eof then begin
                       // TOTAIS DO ICMS.
                       Say( mLinha,  54, Arquivo, 'TOTAL CONTABIL : '+PadR(FormatFloat('###,###,##0.00', mTotalContab), 14) );
                       Say( mLinha,  98, Arquivo, 'ICMS 1: '+PadR(FormatFloat('###,###,##0.00', mTotalICMS1), 14) );
                       Say( mLinha, 125, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalVlICMS), 14) );
                       Say( mLinha, 140, Arquivo, 'IPI 1:'+PadR(FormatFloat('#,###,##0.00', mTotalIPI1), 12) );
                       Say( mLinha, 161, Arquivo, PadR(FormatFloat('###,##0.00', mTotalVlIPI), 10) );
                       Inc(mLinha);
                       Say( mLinha,  98, Arquivo, 'ICMS 2: '+PadR(FormatFloat('###,###,##0.00', mTotalICMS2), 14) );
                       Say( mLinha, 140, Arquivo, 'IPI 2:'+PadR(FormatFloat('#,###,##0.00', mTotalIPI2), 12) );
                       Inc(mLinha);
                       Say( mLinha,  98, Arquivo, 'ICMS 3: '+PadR(FormatFloat('###,###,##0.00', mTotalICMS3), 14) );
                       Say( mLinha, 140, Arquivo, 'IPI 3:'+PadR(FormatFloat('#,###,##0.00', mTotalIPI3), 12) );
                       Inc(mLinha);
                    End;
                    Say( mLinha,0, Arquivo, Chr(12) );
                    mLinha      := 0;
                    LinhaAtual  := 0;
                    ColunaAtual := 0;
                    CloseFile(Arquivo);
                 End;
                 Application.ProcessMessages;
           End;
           Janela_Processamento.Close;
      End;
      If mImprimir <> True then begin
         Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
         Impressao_Visualizar.Caption  := 'Cybersoft - Impressão de relatórios Fiscais';
         Impressao_Visualizar.mArquivo := mNomeVisualizar+'0001.TXT';
         Impressao_Visualizar.mNome    := mNomeVisualizar;
         Impressao_Visualizar.mTitulo  := 'REGISTRO DE ENTRADAS - (Modelo P1)';
         Impressao_Visualizar.mPaginas := mPagina;
         Impressao_Visualizar.mPag     := 1;
         Impressao_Visualizar.ShowModal;
      end;
      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);
      DeletaRelatorios(Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_REP1_PG', mPagina);
End;

procedure TImpressao_FiscaisOP_LivroEntrada.ModeloP1A;
begin
      Janela_Processamento := TJanela_Processamento.Create(Self);
      Janela_Processamento.Progresso.Max      := tNotasP1A.RecordCount;
      Janela_Processamento.Progresso.Position := 0;
      Janela_Processamento.lProcesso.Caption  := 'Imprimindo o livro registro de entrada P1A...';
      Janela_Processamento.Show;

      With Dados, dmFiscal do begin
           Configuracao.Open;

           mLinha      := 0;
           mPagina     := cFolha.AsInteger;
           LinhaAtual  := 0;
           ColunaAtual := 0;
           mTotalVlICMS:= 0;
           mTotalICMS1 := 0;
           mTotalICMS2 := 0;
           mTotalICMS3 := 0;
           mTotalVlIPI := 0;
           mTotalIPI1  := 0;
           mTotalIPI2  := 0;
           mTotalIPI3  := 0;
           mTotalContab:= 0;

           tNotasP1A.First;

           While (not tNotasP1A.Eof) and (FUNCOES.Cancelado = False) do begin
                 // Cabeçalho do relatorio.
                 If mLinha = 0 then begin
                    mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
                    If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                       mNomeArq := mNomeArq + '_Matriz'
                    else
                       mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);

                    mNomeArq        := mNomeArq + '\Impressao';
                    mNomeVisualizar := mNomeArq + '\LIVRO_REP1A_PG';
                    
                    If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
                    mNomeArq := mNomeArq+'\LIVRO_REP1A_PG'+PoeZero(4, mPagina)+'.TXT';

                    If FileExists(mNomeArq) then DeleteFile(mNomeArq);

                    AssignFile(Arquivo, mNomeArq);
                    ReWrite(Arquivo);

                    Write(Arquivo, #27, mComprime15 );  // Pitch 15ppp
                    Say( mLinha   ,   0, Arquivo, 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿' );
                    Say( mLinha+01,
                       0, Arquivo, '³ REGISTRO DE ENTRADAS - (Modelo P1A)');
                    If Trim(cIncentivo.Text) = '' then
                       Say( mLinha+01,68, Arquivo, '| (TODAS AS OPERACOES)')
                    else
                       Say( mLinha+01,68, Arquivo, '| (OPERACOES '+Trim(cIncentivo.Text)+')');


                    Say( mLinha+01, 100, Arquivo, '³ (a) CODIGO DE VALORES FISCAIS'+Replicate(' ',31)+'³' );
                    Say( mLinha+02,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+03,   0, Arquivo, '³ FIRMA             : '+ Dados.EmpresasRazao_Social.AsString );
                    Say( mLinha+03, 100, Arquivo, '³ 1 - Operacoes com credito do imposto.        '+Replicate(' ', 15) + '³' );
                    Say( mLinha+04,   0, Arquivo, '³ INSCRICAO ESTADUAL: '+ FormatMaskText( Dados.EstadosMascara_Inscricao.AsString , Dados.EmpresasIE.Value) + '                    CNPJ: '+FormatMaskText('99.999.999/9999-99;0; ', EmpresasCNPJ.Value) );
                    Say( mLinha+04, 100, Arquivo, '³ 2 - Oper.sem credito do imposto - Isentas ou nao tributadas ³' );
                    Say( mLinha+05,   0, Arquivo, '³ FOLHA             : '+ PoeZero(3,mPagina)+'                          PERIODO: '+cDataIni.Text+ ' a '+cDataFim.Text );
                    Say( mLinha+05, 100, Arquivo, '³ 3 - Oper.sem credito de imposto - Outras.                   ³' );
                    Say( mLinha+06,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Say( mLinha+07,   0, Arquivo, '³          ³                    DOCUMENTOS FISCAIS                   ³              ³   CODIFICACAO ³              VALORES FISCAIS             ³                  ³');
                    Say( mLinha+08,   0, Arquivo, '³          ÃÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄ´              ÃÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄ´                  ³');
                    Say( mLinha+09,   0, Arquivo, '³ DATA DE  ³ESPECIE³SERIE³NUMERO³ DATA DO  ³      CODIGO      ³  UF  ³    VALOR     ³CONTABIL³FISCAL³ICMS³COD³   BASE DE    ³ALIQ.³  IMPOSTO   ³   OBSERVACOES    ³');
                    Say( mLinha+10,   0, Arquivo, '³ ENTRADA  ³       ³ SUB ³      ³DOCUMENTO ³     EMITENTE     ³ORIGEM³   CONTABIL   ³        ³      ³ /  ³(a)³   CALCULO    ³     ³ CREDITADO  ³                  ³');
                    Say( mLinha+11,   0, Arquivo, '³          ³       ³SERIE³      ³          ³                  ³      ³              ³        ³      ³IPI ³   ³   VALOR DA   ³     ³            ³                  ³');
                    Say( mLinha+12,   0, Arquivo, '³          ³       ³     ³      ³          ³                  ³      ³              ³        ³      ³    ³   ³   OPERACAO   ³     ³            ³                  ³');
                    Say( mLinha+13,   0, Arquivo, 'ÃÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´');
                    Inc(mLinha,14);
                 End;

                 // Imprimindo linha de itens.
                 If (mNota <> tNotasP1A.FieldByName('Numero').AsInteger) and (mCFOP <> tNotasP1A.FieldByName('Natureza_Codigo').AsString) then begin
                    mNota := tNotasP1A.FieldByName('Numero').AsInteger;
                    mCFOP := tNotas.FieldByName('Natureza_Codigo').AsString;

                    Say( mLinha,  0, Arquivo, '|'+ tNotasP1A.FieldByName('Data_EntradaSaida').AsString );
                    Say( mLinha, 11, Arquivo, '|  '+tNotasP1A.FieldByName('Tipo').AsString );
                    Say( mLinha, 19, Arquivo, '|'+Copy(tNotasP1A.FieldByName('Serie').AsString,1,3) );
                    Say( mLinha, 25, Arquivo, '|'+PoeZero(6, tNotasP1A.FieldByName('Numero').AsInteger) );
                    Say( mLinha, 32, Arquivo, '|'+tNotasP1A.FieldByName('Data_Emissao').AsString );
                    Say( mLinha, 43, Arquivo, '|'+FormatMaskText('##.###.###/####-##;0; ', FornecedoresCNPJ.Value) );
                    Say( mLinha, 62, Arquivo, '|  '+FornecedoresEstado.Value );
                 end else begin
                    Say( mLinha,  0, Arquivo, '|          |       |     |      |          |                  |      ');
                 End;
                 If tNotasP1A.FieldByName('Cancelada').AsBoolean <> True then begin
                    mTotalContab := mTotalContab + tNotasP1A.FieldByName('Valor_Contabil').AsCurrency;

                    If tNotasP1A.FieldByName('Imposto').AsString = 'ICMS' then begin
                       If tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 1 then begin
                          mTotalVlICMS := mTotalVlICMS  + tNotasP1A.FieldByName('Valor_Imposto').AsCurrency;
                          mTotalICMS1  := mTotalICMS1 + tNotasP1A.FieldByName('BC_Imposto').AsCurrency;
                       End;
                       If tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 2 then begin
                          mTotalICMS2 := mTotalICMS2 + tNotasP1A.FieldByName('Valor_IsentasICMS').AsCurrency;
                       End;
                       If tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 3 then begin
                          mTotalICMS3 := mTotalICMS3 + tNotasP1A.FieldByName('Valor_OutrasICMS').AsCurrency;
                       End;
                    End;
                    If tNotasP1A.FieldByName('Imposto').AsString = 'IPI' then begin
                       If tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 1 then begin
                          mTotalVlIPI := mTotalVlIPI + tNotasP1A.FieldByName('Valor_Imposto').AsCurrency;
                          mTotalIPI1  := mTotalIPI1 + tNotasP1A.FieldByName('BC_Imposto').AsCurrency;
                       End;
                       If tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 2 then begin
                          mTotalIPI2 := mTotalIPI2 + tNotasP1A.FieldByName('Valor_IsentasIPI').AsCurrency;
                       End;
                       If tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 3 then begin
                          mTotalIPI3 := mTotalIPI3 + tNotasP1A.FieldByName('Valor_OutrasIPI').AsCurrency;
                       End;
                    End;

                    If tNotasP1A.FieldByName('Valor_Contabil').AsCurrency <> 0 then begin
                       Say( mLinha,  69, Arquivo, '|'+PadR(FormatFloat('###,###,##0.00', tNotasP1A.FieldByName('Valor_Contabil').AsCurrency), 14) );
                       Say( mLinha,  84, Arquivo, '|' );
                       Say( mLinha,  93, Arquivo, '|'+FormatMaskText('#.###;0', tNotasP1A.FieldByName('Natureza_Codigo').AsString) );
                    end else begin
                       Say( mLinha,  69, Arquivo, '|');
                       Say( mLinha,  84, Arquivo, '|' );
                       Say( mLinha,  93, Arquivo, '|');
                    End;

                    Say( mLinha, 100, Arquivo, '|'+tNotasP1A.FieldByName('Imposto').AsString);
                    Say( mLinha, 105, Arquivo, '| '+tNotasP1A.FieldByName('Codigo_Imposto').AsString);
                    Say( mLinha, 109, Arquivo, '|'+PadR(FormatFloat('###,###,##0.00', tNotasP1A.FieldByName('BC_Imposto').AsCurrency), 14) );
                    If tNotasP1A.FieldByName('Aliquota_ICMSOper').AsCurrency <> 0 then
                       Say( mLinha, 124, Arquivo, '|'+PadR(FormatFloat('#0.00', tNotasP1A.FieldByName('Aliquota_ICMSOper').AsCurrency), 5) )
                    else
                       Say( mLinha, 124, Arquivo, '|');
                    If tNotasP1A.FieldByName('Valor_Imposto').AsCurrency <> 0 then
                       Say( mLinha, 130, Arquivo, '|'+PadR(FormatFloat('#,###,##0.00', tNotasP1A.FieldByName('Valor_Imposto').AsCurrency), 12) )
                    else
                       Say( mLinha, 130, Arquivo, '|');
                    Say( mLinha, 143, Arquivo, '|' );
                    Say( mLinha, 162, Arquivo, '|' );
                 End else begin
                    Say( mLinha, 69, Arquivo, '|              |        |      |    |   |              |     |            |    [CANCELADA]   |');
                 End;
                 Inc(mLinha);
                 tNotasP1A.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;

                 If (mLinha >= 60) or (tNotasP1A.Eof = True) then begin
                    Say( mLinha,0, Arquivo,'ÀÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ' );
                    Inc(mLinha,2);
                    If tNotasP1A.Eof then begin
                       // TOTAIS DO ICMS.
                       Say( mLinha,  54, Arquivo,    'TOTAL CONTABIL : '+PadR(FormatFloat('###,###,##0.00', mTotalContab), 14) );
                       Say( mLinha, 103, Arquivo, 'ICMS 1 :'+PadR(FormatFloat('###,###,##0.00', mTotalICMS1), 14) );
                       If mTotalICMS1 <> 0 then begin
                          Say( mLinha, 130, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalVlICMS), 14) );
                          Inc(mLinha);
                       End;
                       If mTotalICMS2 <> 0 then begin
                          Say( mLinha, 103, Arquivo, 'ICMS 2 :'+PadR(FormatFloat('###,###,##0.00', mTotalICMS2), 14) );
                          Inc(mLinha);
                       End;
                       If mTotalICMS3 <> 0 then begin
                          Say( mLinha, 103, Arquivo, 'ICMS 3 :'+PadR(FormatFloat('###,###,##0.00', mTotalICMS3), 14) );
                          Inc(mLinha);
                       End;
                       // TOTAIS DO IPI.
                       If mTotalIPI1 <> 0 then begin
                          Say( mLinha, 103, Arquivo, 'IPI  1 :'+PadR(FormatFloat('###,###,##0.00', mTotalIPI1), 14) );
                          Say( mLinha, 130, Arquivo, PadR(FormatFloat('###,###,##0.00', mTotalVlIPI), 14) );
                          Inc(mLinha);
                       End;
                       If mTotalIPI2 <> 0 then begin
                          Say( mLinha, 103, Arquivo, 'IPI  2 :'+PadR(FormatFloat('###,###,##0.00', mTotalIPI2), 14) );
                          Inc(mLinha);
                       End;
                       If mTotalIPI3 <> 0 then begin
                          Say( mLinha, 103, Arquivo, 'IPI  3 :'+PadR(FormatFloat('###,###,##0.00', mTotalIPI3), 14) );
                          Inc(mLinha);
                       End;
                    End;
                    Say( mLinha,0, Arquivo, Chr(12) );
                    mLinha := 0;
                    Inc(mPagina);
                    CloseFile(Arquivo);
                 end;
                 Application.ProcessMessages;
           End;
           Janela_Processamento.Close;
      End;
      If mImprimir <> True then begin
         Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
         Impressao_Visualizar.mArquivo := mNomeVisualizar+PoeZero(4, cFolha.AsInteger)+'.TXT';
         Impressao_Visualizar.mNome    := mNomeVisualizar;
         Impressao_Visualizar.mTitulo  := 'REGISTRO DE ENTRADAS - (Modelo P1A)';
         Impressao_Visualizar.mPaginas := mPagina;
         Impressao_Visualizar.mPag     := cFolha.AsInteger;
         Impressao_Visualizar.ShowModal;
      end;
      // Deletando os arquivos texto gerados.
      Janela_Processamento := TJanela_Processamento.Create(Self);
      DeletaRelatorios(Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\LIVRO_REP1A_PG', mPagina);
End;

procedure TImpressao_FiscaisOP_LivroEntrada.FormShow(Sender: TObject);
Var
   aINI : TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      aINI                  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cModelo.ItemIndex     := aINI.ReadInteger('IMPRESSAO_RE','Modelo'        , 0 );
      cImpressora.ItemIndex := aINI.ReadInteger('IMPRESSAO_RE','Impressora'    , 1 );
      cDataIni.Date         := aINI.ReadDate   ('IMPRESSAO_RE','DataIni'       , Date );
      cDataFim.Date         := aINI.ReadDate   ('IMPRESSAO_RE','DataFim'       , Date );
      cOperacao.ItemIndex   := aINI.ReadInteger('IMPRESSAO_RE','Operacao'      , 2 );
      cFolha.Value          := aINI.ReadInteger('IMPRESSAO_RE','Folha'         , 1 );
      aINI.Free;
end;

procedure TImpressao_FiscaisOP_LivroEntrada.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI : TIniFile;
begin
      // Registrando as opções utilizadas no relatório para ficar como default.
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteInteger( 'IMPRESSAO_RE','Modelo'        , cModelo.ItemIndex );
      aINI.WriteInteger( 'IMPRESSAO_RE','Impressora'    , 1 );
      aINI.WriteDate   ( 'IMPRESSAO_RE','DataIni'       , cDataIni.Date );
      aINI.WriteDate   ( 'IMPRESSAO_RE','DataFim'       , cDataFim.Date );
      aINI.WriteInteger( 'IMPRESSAO_RE','Operacao'      , cOperacao.ItemIndex );
      aINI.WriteInteger( 'IMPRESSAO_RE','Folha'         , cFolha.AsInteger );
      aINI.Free;

      Dados.Fornecedores.MasterSource := nil;
      Dados.Fornecedores.MasterFields := '';
      Dados.Fornecedores.Close;
      tNotas.Close;
      Dados.Empresas.Close;
      Dados.Estados.Close;
      Dados.Configuracao.Close;

      LimpaMemoria;
      Impressao_FiscaisOP_LivroEntrada.Release;
      Impressao_FiscaisOP_LivroEntrada := nil;
end;

procedure TImpressao_FiscaisOP_LivroEntrada.bImprimirClick(Sender: TObject);
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
           If cModelo.ItemIndex = 0 then begin
              tNotas.SQL.Clear;
              tNotas.SQL.Add('SELECT Data_EntradaSaida,');
              tNotas.SQL.Add('       Data_Emissao,');
              tNotas.SQL.Add('       ''NF'' AS Tipo,');
              tNotas.SQL.Add('       CAST(Serie AS varchar(3)) AS Serie,');
              tNotas.SQL.Add('       ''   '' AS SubSerie,');
              tNotas.SQL.Add('       Numero,');
              tNotas.SQL.Add('       Natureza_Codigo,');
              tNotas.SQL.Add('       Valor_TotalNota,');
              tNotas.SQL.Add('       BCICMS,');
              tNotas.SQL.Add('       Valor_ICMS,');
              tNotas.SQL.Add('       Valor_IsentasICMS,');
              tNotas.SQL.Add('       Valor_OutrasICMS,');
              tNotas.SQL.Add('       Aliquota_ICMSOper,');
              tNotas.SQL.Add('       BCIPI,');
              tNotas.SQL.Add('       Valor_TotalIPI,');
              tNotas.SQL.Add('       Valor_IsentasIPI,');
              tNotas.SQL.Add('       Valor_OutrasIPI,');
              tNotas.SQL.Add('       Incentivo_Fiscal,');
              tNotas.SQL.Add('       Cancelada,');
              tNotas.SQL.Add('       Fornecedores.CNPJ,');
              tNotas.SQL.Add('       Fornecedores.Estado,');
              tNotas.SQL.Add('       CASE WHEN BCICMS            > 0 THEN 1 ELSE 0 END AS Codigo1,');
              tNotas.SQL.Add('       CASE WHEN Valor_IsentasICMS > 0 THEN 2 ELSE 0 END AS Codigo2,');
              tNotas.SQL.Add('       CASE WHEN Valor_OutrasICMS  > 0 THEN 3 ELSE 0 END AS Codigo3,');
              tNotas.SQL.Add('       CASE WHEN Valor_TotalIPI    > 0 THEN 1 ELSE 0 END AS Codigo4,');
              tNotas.SQL.Add('       CASE WHEN Valor_IsentasIPI  > 0 THEN 2 ELSE 0 END AS Codigo5,');
              tNotas.SQL.Add('       CASE WHEN Valor_OutrasIPI   > 0 THEN 3 ELSE 0 END AS Codigo6,');
              tNotas.SQL.Add('       Fornecedor_Codigo AS Fornecedor,');
              tNotas.SQL.Add('       NFe_Denegada,');
              tNotas.SQL.Add('       Observacao');
              tNotas.SQL.Add('INTO   #Temp');
              tNotas.SQL.Add('FROM   NotasFiscais, Fornecedores');
              If Trim(cIncentivo.Text) <> '' then begin
                 tNotas.SQL.Add('WHERE (Saida_Entrada = 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (Incentivo_Fiscal = :pIncentivo) AND (Fornecedores.Codigo = NotasFiscais.Fornecedor_Codigo)' );
              end else
                 tNotas.SQL.Add('WHERE (Saida_Entrada = 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (Fornecedores.Codigo = NotasFiscais.Fornecedor_Codigo)' );

              tNotas.SQL.Add('UNION ALL');
              tNotas.SQL.Add('SELECT Data_EntradaSaida');
              tNotas.SQL.Add('      ,Data_Emissao, ''NF''');
              tNotas.SQL.Add('      ,CAST(Serie AS varchar(3))');
              tNotas.SQL.Add('      ,''   ''');
              tNotas.SQL.Add('      ,Numero');
              tNotas.SQL.Add('      ,Natureza_Codigo');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,Incentivo_Fiscal');
              tNotas.SQL.Add('      ,Cancelada');
              tNotas.SQL.Add('      ,Fornecedores.CNPJ');
              tNotas.SQL.Add('      ,Fornecedores.Estado');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,0');
              tNotas.SQL.Add('      ,Fornecedor_Codigo');
              tNotas.sql.Add('      ,Nfe_Denegada');
              tNotas.SQL.Add('      ,Observacao');
              tNotas.SQL.Add('FROM   NotasFiscais, Fornecedores');
              If Trim(cIncentivo.Text) <> '' then begin
                 tNotas.SQL.Add('WHERE (Saida_Entrada = 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (Incentivo_Fiscal = :pIncentivo) AND (Fornecedores.Codigo = NotasFiscais.Fornecedor_Codigo)' );
              end else
                 tNotas.SQL.Add('WHERE (Saida_Entrada = 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (Fornecedores.Codigo = NotasFiscais.Fornecedor_Codigo)' );

              tNotas.SQL.Add('UNION  ALL');
              tNotas.SQL.Add('SELECT Data_Entrada');
              tNotas.SQL.Add('      ,Data_Emissao');
              tNotas.SQL.Add('      ,Tipo');
              tNotas.SQL.Add('      ,Serie');
              tNotas.SQL.Add('      ,SubSerie');
              tNotas.SQL.Add('      ,Nota');
              tNotas.SQL.Add('      ,Natureza_Codigo');
              tNotas.SQL.Add('      ,Valor_TotalNota');
              tNotas.SQL.Add('      ,Valor_BCICMSOper');
              tNotas.SQL.Add('      ,Valor_ICMSOper');
              tNotas.SQL.Add('      ,Valor_IsentasICMS');
              tNotas.SQL.Add('      ,Valor_OutrasICMS');
              tNotas.SQL.Add('      ,Aliquota_ICMSOper');
              tNotas.SQL.Add('      ,(SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens WHERE(NotasTerceirosItens.Nota = NotasTerceiros.Nota) AND (NotasTerceirosItens.Fornecedor = NotasTerceiros.Fornecedor) AND (Valor_IPI > 0)) AS BCIPI');
              tNotas.SQL.Add('      ,Valor_TotalIPI');
              tNotas.SQL.Add('      ,Valor_IsentasIPI');
              tNotas.SQL.Add('      ,Valor_OutrasIPI');
              tNotas.SQL.Add('      ,Incentivo_Fiscal');
              tNotas.SQL.Add('      ,NULL');
              tNotas.SQL.Add('      ,CNPJ = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor)');
              tNotas.SQL.Add('      ,Estado = (SELECT Estado FROM Fornecedores WHERE Codigo = Fornecedor)');
              tNotas.SQL.Add('      ,CASE WHEN Valor_BCICMSOper  > 0 THEN 1 ELSE 0 END AS Codigo1');
              tNotas.SQL.Add('      ,CASE WHEN Valor_IsentasICMS > 0 THEN 2 ELSE 0 END AS Codigo2');
              tNotas.SQL.Add('      ,CASE WHEN Valor_OutrasICMS  > 0 THEN 3 ELSE 0 END AS Codigo3');
              tNotas.SQL.Add('      ,CASE WHEN Valor_TotalIPI    > 0 THEN 1 ELSE 0 END AS Codigo4');
              tNotas.SQL.Add('      ,CASE WHEN Valor_IsentasIPI  > 0 THEN 2 ELSE 0 END AS Codigo5');
              tNotas.SQL.Add('      ,CASE WHEN Valor_OutrasIPI   > 0 THEN 3 ELSE 0 END AS Codigo6');
              tNotas.SQL.Add('      ,Fornecedor');
              tNotas.SQL.Add('      ,CAST(0 AS bit) AS NFe_Denegada');
              tNotas.SQL.Add('      ,Observacoes COLLATE SQL_Latin1_General_CP1_CI_AS');
              tNotas.SQL.Add('FROM  NotasTerceiros');
              If Trim(cIncentivo.Text) <> '' then begin
                 tNotas.SQL.Add('WHERE (Data_Entrada BETWEEN :pDataIni AND :pDataFim) AND (Incentivo_Fiscal = :pIncentivo)' );
              end else
                 tNotas.SQL.Add('WHERE (Data_Entrada BETWEEN :pDataIni AND :pDataFim) ' );

              tNotas.SQL.Add('AND ISNULL(Provisoria, 0) = 0 ' );
              tNotas.SQL.Add('AND ISNULL(Servico, '''') = '''' ' );
              tNotas.SQL.Add('AND ISNULL(Desdobramento, 0) = 0');
              tNotas.SQL.Add('AND Nota NOT IN(SELECT Nota FROM NotasTerceiros WHERE Data_Entrada BETWEEN :pDataIni AND :pDataFim AND ISNULL(Desdobramento, 0) = 1)');

              tNotas.SQL.Add('UNION ALL');
              tNotas.SQL.Add('SELECT  Data_Entrada');
              tNotas.SQL.Add('       ,Data_Emissao');
              tNotas.SQL.Add('       ,Tipo');
              tNotas.SQL.Add('       ,Serie');
              tNotas.SQL.Add('       ,SubSerie');
              tNotas.SQL.Add('       ,Nota');
              tNotas.SQL.Add('       ,Natureza_Codigo');
              tNotas.SQL.Add('       ,Valor_TotalNota   = ISNULL((SELECT SUM(ISNULL(Valor_Liquido, 0)+ISNULL(Valor_ICMSSub, 0)+ISNULL(Valor_IPI, 0)) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota');
              tNotas.SQL.Add('                            AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotas.SQL.Add('       ,Valor_BCICMSOper  = ISNULL((SELECT SUM(Valor_BCICMSOper) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotas.SQL.Add('       ,Valor_ICMSOper    = ISNULL((SELECT SUM(Valor_ICMSOper) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotas.SQL.Add('       ,Valor_IsentasICMS = ISNULL((SELECT SUM(Valor_IsentasICMS) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotas.SQL.Add('       ,Valor_OutrasICMS  = ISNULL((SELECT SUM(Valor_OutrasICMS) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotas.SQL.Add('       ,Aliquota_ICMSOper');
              tNotas.SQL.Add('       ,BCIPI             = ISNULL((SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens WHERE(NotasTerceirosItens.Nota = NotasTerceiros.Nota) AND (NotasTerceirosItens.Fornecedor = NotasTerceiros.Fornecedor) AND (Valor_IPI > 0)), 0)');
              tNotas.SQL.Add('       ,Valor_TotalIPI    = ISNULL((SELECT SUM(Valor_IPI) FROM NotasTerceirosItens WHERE(NotasTerceirosItens.Nota = NotasTerceiros.Nota) AND (NotasTerceirosItens.Fornecedor = NotasTerceiros.Fornecedor)), 0)');
              tNotas.SQL.Add('       ,Valor_IsentasIPI  = ISNULL((SELECT SUM(Valor_IsentasIPI) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotas.SQL.Add('       ,Valor_OutrasIPI   = ISNULL((SELECT SUM(Valor_OutrasIPI) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotas.SQL.Add('       ,Incentivo_Fiscal');
              tNotas.SQL.Add('       ,NULL');
              tNotas.SQL.Add('       ,CNPJ = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor)');
              tNotas.SQL.Add('       ,Estado = (SELECT Estado FROM Fornecedores WHERE Codigo = Fornecedor)');
              tNotas.SQL.Add('       ,CASE WHEN Valor_BCICMSOper  > 0 THEN 1 ELSE 0 END AS Codigo1');
              tNotas.SQL.Add('       ,CASE WHEN Valor_IsentasICMS > 0 THEN 2 ELSE 0 END AS Codigo2');
              tNotas.SQL.Add('       ,CASE WHEN Valor_OutrasICMS  > 0 THEN 3 ELSE 0 END AS Codigo3');
              tNotas.SQL.Add('       ,CASE WHEN Valor_TotalIPI    > 0 THEN 1 ELSE 0 END AS Codigo4');
              tNotas.SQL.Add('       ,CASE WHEN Valor_IsentasIPI  > 0 THEN 2 ELSE 0 END AS Codigo5');
              tNotas.SQL.Add('       ,CASE WHEN Valor_OutrasIPI   > 0 THEN 3 ELSE 0 END AS Codigo6');
              tNotas.SQL.Add('       ,Fornecedor');
              tNotas.SQL.Add('       ,CAST(0 AS bit) AS NFe_Denegada');
              tNotas.SQL.Add('       ,Observacoes COLLATE SQL_Latin1_General_CP1_CI_AS');
              tNotas.SQL.Add('FROM  NotasTerceiros');
              If Trim(cIncentivo.Text) <> '' then begin
                 tNotas.SQL.Add('WHERE (Data_Entrada BETWEEN :pDataIni AND :pDataFim) AND (Incentivo_Fiscal = :pIncentivo)' );
              end else
                 tNotas.SQL.Add('WHERE (Data_Entrada BETWEEN :pDataIni AND :pDataFim) ' );

              tNotas.SQL.Add('AND   ISNULL(Provisoria, 0) = 0 ' );
              tNotas.SQL.Add('AND   ISNULL(Servico, '''') = '''' ');
              tNotas.SQL.Add('AND   Nota IN(SELECT Nota FROM NotasTerceiros WHERE Data_Entrada BETWEEN :pDataIni AND :pDataFim AND ISNULL(Desdobramento, 0) = 1)');

              tNotas.SQL.Add('UPDATE #Temp SET Codigo1=Codigo2, Codigo2=0 WHERE(Codigo1=0 AND Codigo2>0)');
              tNotas.SQL.Add('UPDATE #Temp SET Codigo1=Codigo3, Codigo3=0 WHERE(Codigo1=0 AND Codigo3>0)');
              tNotas.SQL.Add('UPDATE #Temp SET Codigo2=Codigo3, Codigo3=0 WHERE(Codigo1=0 AND Codigo3>0)');
              tNotas.SQL.Add('UPDATE #Temp SET Codigo4=Codigo5, Codigo5=0 WHERE(Codigo4=0 AND Codigo5>0)');
              tNotas.SQL.Add('UPDATE #Temp SET Codigo4=Codigo6, Codigo6=0 WHERE(Codigo4=0 AND Codigo6>0)');
              tNotas.SQL.Add('UPDATE #Temp SET Codigo5=Codigo6, Codigo6=0 WHERE(Codigo5=0 AND Codigo6>0)');
              tNotas.SQL.Add('UPDATE #Temp SET  Valor_TotalNota   = 0');
              tNotas.SQL.Add('                 ,BCICMS            = 0');
              tNotas.SQL.Add('                 ,Valor_ICMS        = 0');
              tNotas.SQL.Add('                 ,Valor_IsentasICMS = 0');
              tNotas.SQL.Add('                 ,Valor_OutrasICMS  = 0');
              tNotas.SQL.Add('                 ,BCIPI             = 0');
              tNotas.SQL.Add('                 ,Valor_TotalIPI    = 0');
              tNotas.SQL.Add('                 ,Valor_IsentasIPI  = 0');
              tNotas.SQL.Add('                 ,Valor_OutrasIPI   = 0');
              tNotas.SQL.Add('                 ,Aliquota_ICMSOper = 0');
              tNotas.SQL.Add('WHERE(Cancelada = 1) or NFe_Denegada = 1');
              tNotas.SQL.Add('SELECT #Temp.*, Codigo1 AS Codigo_ICMS, Codigo4 AS Codigo_IPI,');
              tNotas.SQL.Add('       CASE');
              tNotas.SQL.Add('          WHEN Codigo1 = 1 THEN BCICMS');
              tNotas.SQL.Add('          WHEN Codigo1 = 2 THEN Valor_IsentasICMS');
              tNotas.SQL.Add('          WHEN Codigo1 = 3 THEN Valor_OutrasICMS');
              tNotas.SQL.Add('       ELSE 0 END AS Apuracao_ICMS,');
              tNotas.SQL.Add('       CASE');
              tNotas.SQL.Add('          WHEN Codigo4 = 1 THEN BCIPI');
              tNotas.SQL.Add('          WHEN Codigo4 = 2 THEN Valor_IsentasIPI');
              tNotas.SQL.Add('          WHEN Codigo4 = 3 THEN Valor_OutrasIPI');
              tNotas.SQL.Add('       ELSE 0 END AS Apuracao_IPI,');
              tNotas.SQL.Add('       CASE WHEN Codigo1 = 1 THEN Valor_ICMS     ELSE 0 END AS Imposto_ICMS,');
              tNotas.SQL.Add('       CASE WHEN Codigo4 = 1 THEN Valor_TotalIPI ELSE 0 END AS Imposto_IPI,');
              tNotas.SQL.Add('       Valor_TotalNota AS Valor_Contabil,');
              tNotas.SQL.Add('       1 AS Ordem');
              tNotas.SQL.Add('INTO #Temp2');
              tNotas.SQL.Add('FROM #Temp');
              tNotas.SQL.Add('WHERE (Codigo1 <> 0) OR (Codigo4 <> 0) AND (Cancelada <> 1 OR Nfe_Denegada <> 1)');
              tNotas.SQL.Add('UNION ALL');
              tNotas.SQL.Add('SELECT #Temp.*, Codigo2, Codigo5,');
              tNotas.SQL.Add('       CASE');
              tNotas.SQL.Add('          WHEN Codigo2 = 1 THEN BCICMS');
              tNotas.SQL.Add('          WHEN Codigo2 = 2 THEN Valor_IsentasICMS');
              tNotas.SQL.Add('          WHEN Codigo2 = 3 THEN Valor_OutrasICMS');
              tNotas.SQL.Add('       ELSE 0 END,');
              tNotas.SQL.Add('       CASE');
              tNotas.SQL.Add('          WHEN Codigo5 = 1 THEN BCIPI');
              tNotas.SQL.Add('          WHEN Codigo5 = 2 THEN Valor_IsentasIPI');
              tNotas.SQL.Add('          WHEN Codigo5 = 3 THEN Valor_OutrasIPI');
              tNotas.SQL.Add('       ELSE 0 END,');
              tNotas.SQL.Add('       CASE WHEN Codigo2 = 1 THEN Valor_ICMS     ELSE 0 END,');
              tNotas.SQL.Add('       CASE WHEN Codigo5 = 1 THEN Valor_TotalIPI ELSE 0 END,');
              tNotas.SQL.Add('       0,');
              tNotas.SQL.Add('       2 AS Ordem');
              tNotas.SQL.Add('FROM #Temp');
              tNotas.SQL.Add('WHERE (Codigo2 <> 0 OR Codigo5 <> 0) AND (Cancelada <> 1 OR Nfe_Denegada <> 1)');
              tNotas.SQL.Add('UNION ALL');
              tNotas.SQL.Add('SELECT #Temp.*, Codigo3, Codigo6,');
              tNotas.SQL.Add('       CASE');
              tNotas.SQL.Add('          WHEN Codigo3 = 1 THEN BCICMS');
              tNotas.SQL.Add('          WHEN Codigo3 = 2 THEN Valor_IsentasICMS');
              tNotas.SQL.Add('          WHEN Codigo3 = 3 THEN Valor_OutrasICMS');
              tNotas.SQL.Add('       ELSE 0 END,');
              tNotas.SQL.Add('       CASE');
              tNotas.SQL.Add('          WHEN Codigo6 = 1 THEN BCIPI');
              tNotas.SQL.Add('          WHEN Codigo6 = 2 THEN Valor_IsentasIPI');
              tNotas.SQL.Add('          WHEN Codigo6 = 3 THEN Valor_OutrasIPI');
              tNotas.SQL.Add('       ELSE 0 END,');
              tNotas.SQL.Add('       CASE WHEN Codigo3 = 1 THEN Valor_ICMS     ELSE 0 END,');
              tNotas.SQL.Add('       CASE WHEN Codigo6 = 1 THEN Valor_TotalIPI ELSE 0 END,');
              tNotas.SQL.Add('       0,');
              tNotas.SQL.Add('       3 AS Ordem');
              tNotas.SQL.Add('FROM   #Temp');
              tNotas.SQL.Add('WHERE  (Codigo3 <> 0 OR Codigo6 <> 0) AND (Cancelada <> 1 OR Nfe_Denegada <> 1)');
              tNotas.SQL.Add('UNION  ALL');
              tNotas.SQL.Add('SELECT #Temp.*, 0, 0, 0, 0, 0, 0, 0, 0 AS Ordem');
              tNotas.SQL.Add('FROM   #Temp');
              tNotas.SQL.Add('WHERE  (Cancelada = 1 OR Nfe_Denegada = 1) AND (Codigo1 = 0 AND Codigo2 = 0 AND Codigo3 = 0 AND Codigo4 = 0 AND Codigo5 = 0 AND Codigo6 = 0)');
              tNotas.SQL.Add('DELETE FROM #TEMP2 WHERE (Cancelada = 1 OR Nfe_Denegada = 1) AND (Ordem <> 0)');
              tNotas.SQL.Add('SELECT * FROM #TEMP2');
              tNotas.SQL.Add('ORDER BY Data_EntradaSaida, Numero, Fornecedor, Ordem');
              tNotas.SQL.Add('DROP TABLE #Temp, #Temp2');
              tNotas.ParamByName('pDataIni').AsDate := cDataIni.Date;
              tNotas.ParamByName('pDataFim').AsDate := cDataFim.Date;
              If Trim(cIncentivo.Text) <> '' then tNotas.ParamByName('pIncentivo').AsString := Trim(cIncentivo.Text);
              //tNotas.SQL.SaveToFile('c:\temp\Livro_Entrada_P1.sql');
              tNotas.Open;

              lMovimento2.Visible := tNotas.RecordCount = 0;
           end else begin
              tNotasP1A.SQL.Clear;
              tNotasP1A.SQL.Add('SELECT Data_EntradaSaida,');
              tNotasP1A.SQL.Add('       Data_Emissao,');
              tNotasP1A.SQL.Add('       ''NF'' AS Tipo,');
              tNotasP1A.SQL.Add('       CAST(Serie AS varchar(3)) AS Serie,');
              tNotasP1A.SQL.Add('       ''   '' AS SubSerie,');
              tNotasP1A.SQL.Add('       Numero,');
              tNotasP1A.SQL.Add('       Natureza_Codigo,');
              tNotasP1A.SQL.Add('       Valor_TotalNota AS Valor_Contabil,');
              tNotasP1A.SQL.Add('       BCICMS,');
              tNotasP1A.SQL.Add('       Valor_ICMS,');
              tNotasP1A.SQL.Add('       Valor_IsentasICMS,');
              tNotasP1A.SQL.Add('       Valor_OutrasICMS,');
              tNotasP1A.SQL.Add('       Aliquota_ICMSOper,');
              tNotasP1A.SQL.Add('       BCIPI,');
              tNotasP1A.SQL.Add('       Valor_TotalIPI,');
              tNotasP1A.SQL.Add('       Valor_IsentasIPI,');
              tNotasP1A.SQL.Add('       Valor_OutrasIPI,');
              tNotasP1A.SQL.Add('       Incentivo_Fiscal,');
              tNotasP1A.SQL.Add('       Cancelada,');
              tNotasP1A.SQL.Add('       Fornecedores.CNPJ,');
              tNotasP1A.SQL.Add('       Fornecedores.Estado,');
              tNotasP1A.SQL.Add('       CASE WHEN Valor_ICMS        > 0 AND Cancelada <> 1 THEN 1 ELSE 0 END AS Codigo1,');
              tNotasP1A.SQL.Add('       CASE WHEN Valor_IsentasICMS > 0 AND Cancelada <> 1 THEN 2 ELSE 0 END AS Codigo2,');
              tNotasP1A.SQL.Add('       CASE WHEN Valor_OutrasICMS  > 0 AND Cancelada <> 1 THEN 3 ELSE 0 END AS Codigo3,');
              tNotasP1A.SQL.Add('       CASE WHEN Valor_TotalIPI    > 0 AND Cancelada <> 1 THEN 1 ELSE 0 END AS Codigo4,');
              tNotasP1A.SQL.Add('       CASE WHEN Valor_IsentasIPI  > 0 AND Cancelada <> 1 THEN 2 ELSE 0 END AS Codigo5,');
              tNotasP1A.SQL.Add('       CASE WHEN Valor_OutrasIPI   > 0 AND Cancelada <> 1 THEN 3 ELSE 0 END AS Codigo6,');
              tNotasP1A.SQL.Add('       CAST(0 AS money) AS BC_Imposto,');
              tNotasP1A.SQL.Add('       Fornecedor_Codigo AS Fornecedor,');
              tNotasP1A.SQL.Add('       NFe_Denegada');
              tNotasP1A.SQL.Add('       ,Observacao');
              tNotasP1A.SQL.Add('INTO   #Temp');
              tNotasP1A.SQL.Add('FROM   NotasFiscais, Fornecedores');
              If Trim(cIncentivo.Text) <> '' then begin
                 tNotasP1A.SQL.Add('WHERE (Saida_Entrada = 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (Incentivo_Fiscal = :pIncentivo) AND (Fornecedores.Codigo = NotasFiscais.Fornecedor_Codigo)' );
              end else
                 tNotasP1A.SQL.Add('WHERE (Saida_Entrada = 0) AND (Data_Emissao BETWEEN :pDataIni AND :pDataFim) AND (Fornecedores.Codigo = NotasFiscais.Fornecedor_Codigo)' );

              tNotasP1A.SQL.Add('UNION ALL');
              tNotasP1A.SQL.Add('SELECT Data_EntradaSaida = Data_Entrada');
              tNotasP1A.SQL.Add('      ,Data_Emissao');
              tNotasP1A.SQL.Add('      ,Tipo');
              tNotasP1A.SQL.Add('      ,Serie');
              tNotasP1A.SQL.Add('      ,SubSerie');
              tNotasP1A.SQL.Add('      ,Numero = Nota');
              tNotasP1A.SQL.Add('      ,Natureza_Codigo');
              tNotasP1A.SQL.Add('      ,Valor_Contabil = Valor_TotalNota');
              tNotasP1A.SQL.Add('      ,BCICMS = Valor_BCICMSOper');
              tNotasP1A.SQL.Add('      ,Valor_ICMS = Valor_ICMSOper');
              tNotasP1A.SQL.Add('      ,Valor_IsentasICMS');
              tNotasP1A.SQL.Add('      ,Valor_OutrasICMS');
              tNotasP1A.SQL.Add('      ,Aliquota_ICMSOper');
              tNotasP1A.SQL.Add('      ,BCIPI = (SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens NTI WHERE(NTI.Nota = NotasTerceiros.Nota) AND (NTI.Fornecedor = NotasTerceiros.Fornecedor) AND (Valor_IPI > 0))');
              tNotasP1A.SQL.Add('      ,Valor_TotalIPI');
              tNotasP1A.SQL.Add('      ,Valor_IsentasIPI');
              tNotasP1A.SQL.Add('      ,Valor_OutrasIPI');
              tNotasP1A.SQL.Add('      ,Incentivo_Fiscal = NULL');
              tNotasP1A.SQL.Add('      ,Cancelada = null');
              tNotasP1A.SQL.Add('      ,CNPJ   = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor)');
              tNotasP1A.SQL.Add('      ,Estado = (SELECT Estado FROM Fornecedores WHERE Codigo = Fornecedor)');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_BCICMSOper  > 0 THEN 1 ELSE 0 END AS Codigo1');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_IsentasICMS > 0 THEN 2 ELSE 0 END AS Codigo2');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_OutrasICMS  > 0 THEN 3 ELSE 0 END AS Codigo3');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_TotalIPI    > 0 THEN 1 ELSE 0 END AS Codigo4');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_IsentasIPI  > 0 THEN 2 ELSE 0 END AS Codigo5');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_OutrasIPI   > 0 THEN 3 ELSE 0 END AS Codigo6');
              tNotasP1A.SQL.Add('      ,CAST(0 AS money) AS BC_Imposto');
              tNotasP1A.SQL.Add('      ,Fornecedor');
              tNotasP1A.SQL.Add('      ,CAST(0 AS bit) AS NFe_Denegada');
              tNotasP1A.SQL.Add('      ,Observacao = Observacoes COLLATE SQL_Latin1_General_CP1_CI_AS');
              tNotasP1A.SQL.Add('FROM  NotasTerceiros');
              If Trim(cIncentivo.Text) <> '' then begin
                 tNotasP1A.SQL.Add('WHERE(Data_Entrada BETWEEN :pDataIni AND :pDataFim) AND (Incentivo_Fiscal = :pIncentivo)' );
              end else
                 tNotasP1A.SQL.Add('WHERE(Data_Entrada BETWEEN :pDataIni AND :pDataFim)' );
              tNotasP1A.SQL.Add('AND   ISNULL(Provisoria, 0) = 0 ' );
              tNotasP1A.SQL.Add('AND   ISNULL(Servico, '''') = '''' ');
              tNotasP1A.SQL.Add('AND   ISNULL(Desdobramento, 0) = 0');
              tNotasP1A.SQL.Add('AND   Nota NOT IN(SELECT Nota FROM NotasTerceiros WHERE Data_Entrada BETWEEN :pDataIni AND :pDataFim AND ISNULL(Desdobramento, 0) = 1)');
              tNotasP1A.SQL.Add('UNION ALL');
              tNotasP1A.SQL.Add('SELECT Data_EntradaSaida = Data_Entrada');
              tNotasP1A.SQL.Add('      ,Data_Emissao');
              tNotasP1A.SQL.Add('      ,Tipo');
              tNotasP1A.SQL.Add('      ,Serie');
              tNotasP1A.SQL.Add('      ,SubSerie');
              tNotasP1A.SQL.Add('      ,Numero = Nota');
              tNotasP1A.SQL.Add('      ,Natureza_Codigo');
              tNotasP1A.SQL.Add('      ,Valor_Contabil    = ISNULL((SELECT SUM(ISNULL(Valor_Liquido, 0)+ISNULL(Valor_ICMSSub, 0)+ISNULL(Valor_IPI, 0)) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND');
              tNotasP1A.SQL.Add('                           NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotasP1A.SQL.Add('      ,BCICMS            = ISNULL((SELECT SUM(Valor_BCICMSOper) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotasP1A.SQL.Add('      ,Valor_ICMS        = ISNULL((SELECT SUM(Valor_ICMSOper) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotasP1A.SQL.Add('      ,Valor_IsentasICMS = ISNULL((SELECT SUM(Valor_IsentasICMS) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotasP1A.SQL.Add('      ,Valor_OutrasICMS  = ISNULL((SELECT SUM(Valor_OutrasICMS) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotasP1A.SQL.Add('      ,Aliquota_ICMSOper');
              tNotasP1A.SQL.Add('      ,BCIPI             = ISNULL((SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens WHERE(NotasTerceirosItens.Nota = NotasTerceiros.Nota) AND (NotasTerceirosItens.Fornecedor = NotasTerceiros.Fornecedor) AND (Valor_IPI > 0)), 0)');
              tNotasP1A.SQL.Add('      ,Valor_TotalIPI    = ISNULL((SELECT SUM(Valor_IPI) FROM NotasTerceirosItens WHERE(NotasTerceirosItens.Nota = NotasTerceiros.Nota) AND (NotasTerceirosItens.Fornecedor = NotasTerceiros.Fornecedor)), 0)');
              tNotasP1A.SQL.Add('      ,Valor_IsentasIPI  = ISNULL((SELECT SUM(Valor_IsentasIPI) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotasP1A.SQL.Add('      ,Valor_OutrasIPI   = ISNULL((SELECT SUM(Valor_OutrasIPI) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
              tNotasP1A.SQL.Add('      ,Incentivo_Fiscal = NULL');
              tNotasP1A.SQL.Add('      ,Cancelada = null');
              tNotasP1A.SQL.Add('      ,CNPJ   = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor)');
              tNotasP1A.SQL.Add('      ,Estado = (SELECT Estado FROM Fornecedores WHERE Codigo = Fornecedor)');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_BCICMSOper  > 0 THEN 1 ELSE 0 END AS Codigo1');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_IsentasICMS > 0 THEN 2 ELSE 0 END AS Codigo2');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_OutrasICMS  > 0 THEN 3 ELSE 0 END AS Codigo3');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_TotalIPI    > 0 THEN 1 ELSE 0 END AS Codigo4');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_IsentasIPI  > 0 THEN 2 ELSE 0 END AS Codigo5');
              tNotasP1A.SQL.Add('      ,CASE WHEN Valor_OutrasIPI   > 0 THEN 3 ELSE 0 END AS Codigo6');
              tNotasP1A.SQL.Add('      ,CAST(0 AS money) AS BC_Imposto');
              tNotasP1A.SQL.Add('      ,Fornecedor');
              tNotasP1A.SQL.Add('      ,CAST(0 AS bit) AS NFe_Denegada');
              tNotasP1A.SQL.Add('      ,Observacao = Observacoes COLLATE SQL_Latin1_General_CP1_CI_AS');
              tNotasP1A.SQL.Add('FROM  NotasTerceiros');
              If Trim(cIncentivo.Text) <> '' then begin
                 tNotasP1A.SQL.Add('WHERE(Data_Entrada BETWEEN :pDataIni AND :pDataFim) AND (Incentivo_Fiscal = :pIncentivo)' );
              end else
                 tNotasP1A.SQL.Add('WHERE(Data_Entrada BETWEEN :pDataIni AND :pDataFim)' );
              tNotasP1A.SQL.Add('AND   ISNULL(Provisoria, 0) = 0 ' );
              tNotasP1A.SQL.Add('AND   ISNULL(Servico, '''') = '''' ');
              tNotasP1A.SQL.Add('AND   Nota IN(SELECT Nota FROM NotasTerceiros WHERE Data_Entrada BETWEEN :pDataIni AND :pDataFim AND ISNULL(Desdobramento, 0) = 1)');

              tNotasP1A.SQL.Add('UPDATE #Temp SET Codigo1=Codigo2, Codigo2=0 WHERE(Codigo1=0 AND Codigo2>0)');
              tNotasP1A.SQL.Add('UPDATE #Temp SET Codigo1=Codigo3, Codigo3=0 WHERE(Codigo1=0 AND Codigo3>0)');
              tNotasP1A.SQL.Add('UPDATE #Temp SET Codigo2=Codigo3, Codigo3=0 WHERE(Codigo2=0 AND Codigo3>0)');
              tNotasP1A.SQL.Add('UPDATE #Temp SET Codigo4=Codigo5, Codigo5=0 WHERE(Codigo4=0 AND Codigo5>0)');
              tNotasP1A.SQL.Add('UPDATE #Temp SET Codigo4=Codigo6, Codigo6=0 WHERE(Codigo4=0 AND Codigo6>0)');
              tNotasP1A.SQL.Add('UPDATE #Temp SET Codigo5=Codigo6, Codigo6=0 WHERE(Codigo5=0 AND Codigo6>0)');
              tNotasP1A.SQL.Add('UPDATE #Temp SET  Valor_Contabil    = 0');
              tNotasP1A.SQL.Add('                 ,BCICMS            = 0');
              tNotasP1A.SQL.Add('                 ,Valor_ICMS        = 0');
              tNotasP1A.SQL.Add('                 ,Valor_IsentasICMS = 0');
              tNotasP1A.SQL.Add('                 ,Valor_OutrasICMS  = 0');
              tNotasP1A.SQL.Add('                 ,BCIPI             = 0');
              tNotasP1A.SQL.Add('                 ,Valor_TotalIPI    = 0');
              tNotasP1A.SQL.Add('                 ,Valor_IsentasIPI  = 0');
              tNotasP1A.SQL.Add('                 ,Valor_OutrasIPI   = 0');
              tNotasP1A.SQL.Add('                 ,Aliquota_ICMSOper = 0');
              tNotasP1A.SQL.Add('WHERE(Cancelada = 1) or NFe_Denegada = 1');
              tNotasP1A.SQL.Add('SELECT Data_EntradaSaida, Data_Emissao, Tipo, Serie, SubSerie, Numero, Natureza_Codigo, Valor_Contabil, BCICMS, Valor_ICMS, Valor_IsentasICMS, Valor_OutrasICMS,');
              tNotasP1A.SQL.Add('       CASE WHEN Codigo1=1 THEN Aliquota_ICMSOper ELSE 0 END AS Aliquota_ICMSOper, BCIPI, Valor_TotalIPI, Valor_IsentasIPI, Valor_OutrasIPI, Incentivo_Fiscal, Cancelada, CNPJ, Estado, ''ICMS'' AS Imposto, Codigo1 AS Codigo_Imposto,');
              tNotasP1A.SQL.Add('       CASE WHEN Codigo1=1 THEN Valor_ICMS ELSE 0 END AS Valor_Imposto,');
              tNotasP1A.SQL.Add('       CASE');
              tNotasP1A.SQL.Add('            WHEN Codigo1=1 THEN BCICMS');
              tNotasP1A.SQL.Add('            WHEN Codigo1=2 THEN Valor_IsentasICMS');
              tNotasP1A.SQL.Add('            WHEN Codigo1=3 THEN Valor_OutrasICMS');
              tNotasP1A.SQL.Add('       END AS BC_Imposto,');
              tNotasP1A.SQL.Add('       Fornecedor,');
              tNotasP1A.SQL.Add('       Observacao');
              tNotasP1A.SQL.Add('       ,Nfe_Denegada');
              tNotasP1A.SQL.Add('FROM  #Temp');
              tNotasP1A.SQL.Add('WHERE (Codigo1 > 0 )');
              tNotasP1A.SQL.Add('UNION ALL');
              tNotasP1A.SQL.Add('SELECT Data_EntradaSaida, Data_Emissao, Tipo, Serie, SubSerie, Numero, Natureza_Codigo,');
              tNotasP1A.SQL.Add('       CASE WHEN (Codigo1 > 0) THEN 0 ELSE Valor_Contabil END AS Valor_Contabil,');
              tNotasP1A.SQL.Add('       BCICMS, Valor_ICMS, Valor_IsentasICMS, Valor_OutrasICMS,');
              tNotasP1A.SQL.Add('       CASE WHEN Codigo2=1 THEN Aliquota_ICMSOper ELSE 0 END, BCIPI, Valor_TotalIPI, Valor_IsentasIPI, Valor_OutrasIPI, Incentivo_Fiscal, Cancelada, CNPJ, Estado, ''ICMS'' , Codigo2,');
              tNotasP1A.SQL.Add('       CASE WHEN Codigo2=1 THEN Valor_ICMS ELSE 0 END,');
              tNotasP1A.SQL.Add('       CASE');
              tNotasP1A.SQL.Add('            WHEN Codigo2=1 THEN BCICMS');
              tNotasP1A.SQL.Add('            WHEN Codigo2=2 THEN Valor_IsentasICMS');
              tNotasP1A.SQL.Add('            WHEN Codigo2=3 THEN Valor_OutrasICMS');
              tNotasP1A.SQL.Add('       END,');
              tNotasP1A.SQL.Add('       Fornecedor,');
              tNotasP1A.SQL.Add('       Observacao');
              tNotasP1A.SQL.Add('       ,Nfe_Denegada');
              tNotasP1A.SQL.Add('FROM  #Temp');
              tNotasP1A.SQL.Add('WHERE (Codigo2 > 0 )');
              tNotasP1A.SQL.Add('UNION ALL');
              tNotasP1A.SQL.Add('SELECT Data_EntradaSaida, Data_Emissao, Tipo, Serie, SubSerie, Numero, Natureza_Codigo,');
              tNotasP1A.SQL.Add('       CASE WHEN (Codigo1 > 0) OR (Codigo2 > 0) THEN 0 ELSE Valor_Contabil END AS Valor_Contabil,');
              tNotasP1A.SQL.Add('       BCICMS, Valor_ICMS, Valor_IsentasICMS, Valor_OutrasICMS, ');
              tNotasP1A.SQL.Add('       CASE WHEN Codigo3=1 THEN Aliquota_ICMSOper ELSE 0 END, BCIPI, Valor_TotalIPI, Valor_IsentasIPI, Valor_OutrasIPI, Incentivo_Fiscal, Cancelada, CNPJ, Estado, ''ICMS'' , Codigo3,');
              tNotasP1A.SQL.Add('       CASE WHEN Codigo3=1 THEN Valor_ICMS ELSE 0 END,');
              tNotasP1A.SQL.Add('       CASE');
              tNotasP1A.SQL.Add('            WHEN Codigo3=1 THEN BCICMS');
              tNotasP1A.SQL.Add('            WHEN Codigo3=2 THEN Valor_IsentasICMS');
              tNotasP1A.SQL.Add('            WHEN Codigo3=3 THEN Valor_OutrasICMS');
              tNotasP1A.SQL.Add('       END,');
              tNotasP1A.SQL.Add('       Fornecedor,');
              tNotasP1A.SQL.Add('       Observacao');
              tNotasP1A.SQL.Add('       ,Nfe_Denegada');
              tNotasP1A.SQL.Add('FROM  #Temp');
              tNotasP1A.SQL.Add('WHERE (Codigo3 > 0 )');
              tNotasP1A.SQL.Add('UNION ALL');
              tNotasP1A.SQL.Add('SELECT Data_EntradaSaida, Data_Emissao, Tipo, Serie, SubSerie, Numero, Natureza_Codigo,');
              tNotasP1A.SQL.Add('       CASE WHEN (Codigo1 > 0) OR (Codigo2 > 0) OR (Codigo3 > 0) THEN 0 ELSE Valor_Contabil END AS Valor_Contabil,');
              tNotasP1A.SQL.Add('       BCICMS, Valor_ICMS, Valor_IsentasICMS, Valor_OutrasICMS, 0,');
              tNotasP1A.SQL.Add('       BCIPI, Valor_TotalIPI, Valor_IsentasIPI, Valor_OutrasIPI, Incentivo_Fiscal, Cancelada, CNPJ, Estado, ''IPI'' , Codigo4,');
              tNotasP1A.SQL.Add('       CASE WHEN Codigo4 = 1 THEN Valor_TotalIPI ELSE 0 END,');
              tNotasP1A.SQL.Add('       CASE');
              tNotasP1A.SQL.Add('            WHEN Codigo4=1 THEN BCIPI');
              tNotasP1A.SQL.Add('            WHEN Codigo4=2 THEN Valor_IsentasIPI');
              tNotasP1A.SQL.Add('            WHEN Codigo4=3 THEN Valor_OutrasIPI');
              tNotasP1A.SQL.Add('       END,');
              tNotasP1A.SQL.Add('       Fornecedor,');
              tNotasP1A.SQL.Add('       Observacao');
              tNotasP1A.SQL.Add('       ,Nfe_Denegada');
              tNotasP1A.SQL.Add('FROM  #Temp');
              tNotasP1A.SQL.Add('WHERE (Codigo4 > 0)');
              tNotasP1A.SQL.Add('UNION ALL');
              tNotasP1A.SQL.Add('SELECT Data_EntradaSaida, Data_Emissao, Tipo, Serie, SubSerie, Numero, Natureza_Codigo,');
              tNotasP1A.SQL.Add('       CASE WHEN (Codigo1 > 0) OR (Codigo2 > 0) OR (Codigo3 > 0) OR (Codigo4 > 0) THEN 0 ELSE Valor_Contabil END AS Valor_Contabil,');
              tNotasP1A.SQL.Add('       BCICMS, Valor_ICMS, Valor_IsentasICMS, Valor_OutrasICMS, 0, ');
              tNotasP1A.SQL.Add('       BCIPI, Valor_TotalIPI, Valor_IsentasIPI, Valor_OutrasIPI, Incentivo_Fiscal, Cancelada, CNPJ, Estado,  ''IPI'', Codigo5,');
              tNotasP1A.SQL.Add('       CASE WHEN Codigo5 = 1 THEN Valor_TotalIPI ELSE 0 END,');
              tNotasP1A.SQL.Add('       CASE');
              tNotasP1A.SQL.Add('            WHEN Codigo5=1 THEN BCIPI');
              tNotasP1A.SQL.Add('            WHEN Codigo5=2 THEN Valor_IsentasIPI');
              tNotasP1A.SQL.Add('            WHEN Codigo5=3 THEN Valor_OutrasIPI');
              tNotasP1A.SQL.Add('       END,');
              tNotasP1A.SQL.Add('       Fornecedor,');
              tNotasP1A.SQL.Add('       Observacao');
              tNotasP1A.SQL.Add('       ,Nfe_Denegada');
              tNotasP1A.SQL.Add('FROM  #Temp');
              tNotasP1A.SQL.Add('WHERE (Codigo5 > 0)');
              tNotasP1A.SQL.Add('UNION ALL');
              tNotasP1A.SQL.Add('SELECT Data_EntradaSaida, Data_Emissao, Tipo, Serie, SubSerie, Numero, Natureza_Codigo,');
              tNotasP1A.SQL.Add('       CASE WHEN (Codigo1 > 0) OR (Codigo2 > 0) OR (Codigo3 > 0) OR (Codigo4 > 0) OR (Codigo5 > 0) THEN 0 ELSE Valor_Contabil END AS Valor_Contabil,');
              tNotasP1A.SQL.Add('       BCICMS, Valor_ICMS, Valor_IsentasICMS, Valor_OutrasICMS, 0,');
              tNotasP1A.SQL.Add('       BCIPI, Valor_TotalIPI, Valor_IsentasIPI, Valor_OutrasIPI, Incentivo_Fiscal, Cancelada, CNPJ, Estado, ''IPI'' , Codigo6,');
              tNotasP1A.SQL.Add('       CASE WHEN Codigo6 = 1 THEN Valor_TotalIPI ELSE 0 END,');
              tNotasP1A.SQL.Add('       CASE');
              tNotasP1A.SQL.Add('            WHEN Codigo6=1 THEN BCIPI');
              tNotasP1A.SQL.Add('            WHEN Codigo6=2 THEN Valor_IsentasIPI');
              tNotasP1A.SQL.Add('            WHEN Codigo6=3 THEN Valor_OutrasIPI');
              tNotasP1A.SQL.Add('       END,');
              tNotasP1A.SQL.Add('       Fornecedor,');
              tNotasP1A.SQL.Add('       Observacao');
              tNotasP1A.SQL.Add('       ,Nfe_Denegada');
              tNotasP1A.SQL.Add('FROM  #Temp');
              tNotasP1A.SQL.Add('WHERE (Codigo6 > 0)');
              tNotasP1A.SQL.Add('UNION ALL');
              tNotasP1A.SQL.Add('SELECT Data_EntradaSaida, Data_Emissao, Tipo, Serie, SubSerie, Numero, Natureza_Codigo, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, Incentivo_Fiscal, Cancelada, CNPJ, Estado, '' '' , 0, 0, 0, Fornecedor, Observacao, Nfe_Denegada');
              tNotasP1A.SQL.Add('FROM #Temp');
              tNotasP1A.SQL.Add('WHERE (Cancelada = 1)');
              tNotasP1A.SQL.Add('ORDER BY Data_EntradaSaida, Numero, Fornecedor, Imposto, Codigo_Imposto');
              tNotasP1A.ParamByName('pDataIni').AsDate := cDataIni.Date;
              tNotasP1A.ParamByName('pDataFim').AsDate := cDataFim.Date;
              If Trim(cIncentivo.Text) <> '' then tNotasP1A.ParamByName('pIncentivo').AsString := Trim(cIncentivo.Text);
              //tNotasP1A.SQL.SaveToFile('c:\temp\Livro_Entrada_P1A.sql');
              tNotasP1A.Open;

              lMovimento.Visible := tNotasP1A.RecordCount = 0;
        End;

        with tTotaliza do begin
             sql.Clear;
             sql.add('select Natureza_Codigo,');
             sql.add('       Valor_TotalNota,');
             sql.add('       BCICMS,');
             sql.add('       Valor_ICMS,');
             sql.add('       Valor_IsentasICMS,');
             sql.add('       Valor_OutrasICMS,');
             sql.add('       Aliquota_ICMSOper,');
             sql.add('       BCIPI,');
             sql.add('       Valor_TotalIPI,');
             sql.add('       Valor_IsentasIPI,');
             sql.add('       Valor_OutrasIPI,');
             sql.add('       Cancelada,');
             sql.add('       Fornecedores.CNPJ,');
             sql.add('       Fornecedores.Estado,');
             sql.add('       case when BCICMS            > 0 then 1 else 0 end AS Codigo1,');
             sql.add('       case when Valor_IsentasICMS > 0 then 2 else 0 end AS Codigo2,');
             sql.add('       case when Valor_OutrasICMS  > 0 then 3 else 0 end AS Codigo3,');
             sql.add('       case when Valor_TotalIPI    > 0 then 1 else 0 end AS Codigo4,');
             sql.add('       case when Valor_IsentasIPI  > 0 then 2 else 0 end AS Codigo5,');
             sql.add('       case when Valor_OutrasIPI   > 0 then 3 else 0 end AS Codigo6,');
             sql.add('       Fornecedor_Codigo AS Fornecedor,');
             sql.add('       NFe_Denegada,');
             sql.add('       Observacao');
             sql.add('into #Temp');
             sql.add('from NotasFiscais, Fornecedores');
             sql.add('where (Saida_Entrada = 0) and (Data_Emissao BETWEEN :pDataIni and :pDataFim) and (Fornecedores.Codigo = NotasFiscais.Fornecedor_Codigo)');
             sql.add('union all');
             sql.add('select Natureza_Codigo');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,Cancelada');
             sql.add('     ,Fornecedores.CNPJ');
             sql.add('     ,Fornecedores.Estado');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,0');
             sql.add('     ,Fornecedor_Codigo, Nfe_Denegada');
             sql.add('     ,Observacao');
             sql.add('from   NotasFiscais, Fornecedores');
             sql.add('where (Saida_Entrada = 0) and (Data_Emissao BETWEEN :pDataIni and :pDataFim) and (Fornecedores.Codigo = NotasFiscais.Fornecedor_Codigo)');
             sql.add('union all');
             sql.add('select Natureza_Codigo');
             sql.add('      ,Valor_TotalNota');
             sql.add('      ,Valor_BCICMSOper');
             sql.add('      ,Valor_ICMSOper');
             sql.add('      ,Valor_IsentasICMS');
             sql.add('      ,Valor_OutrasICMS');
             sql.add('      ,Aliquota_ICMSOper');
             sql.add('      ,(select SUM(Valor_Liquido) from NotasTerceirosItens where(NotasTerceirosItens.Nota = NotasTerceiros.Nota) and (NotasTerceirosItens.Fornecedor = NotasTerceiros.Fornecedor) and (Valor_IPI > 0)) AS BCIPI');
             sql.add('      ,Valor_TotalIPI');
             sql.add('      ,Valor_IsentasIPI');
             sql.add('      ,Valor_OutrasIPI');
             sql.add('      ,NULL');
             sql.add('      ,CNPJ = (select CNPJ from Fornecedores where Codigo = Fornecedor)');
             sql.add('      ,Estado = (select Estado from Fornecedores where Codigo = Fornecedor)');
             sql.add('      ,case when Valor_BCICMSOper  > 0 then 1 else 0 end AS Codigo1');
             sql.add('      ,case when Valor_IsentasICMS > 0 then 2 else 0 end AS Codigo2');
             sql.add('      ,case when Valor_OutrasICMS  > 0 then 3 else 0 end AS Codigo3');
             sql.add('      ,case when Valor_TotalIPI    > 0 then 1 else 0 end AS Codigo4');
             sql.add('      ,case when Valor_IsentasIPI  > 0 then 2 else 0 end AS Codigo5');
             sql.add('      ,case when Valor_OutrasIPI   > 0 then 3 else 0 end AS Codigo6');
             sql.add('      ,Fornecedor');
             sql.add('      ,CAST(0 AS bit) AS NFe_Denegada');
             sql.add('      ,Observacoes COLLATE SQL_Latin1_General_CP1_CI_AS');
             sql.add('from  NotasTerceiros');
             sql.add('where (Data_Entrada BETWEEN :pDataIni and :pDataFim)');
             sql.add('and ISNULL(Provisoria, 0) = 0');
             sql.add('and ISNULL(Servico, '''') = '''' ');
             sql.add('and ISNULL(Desdobramento, 0) = 0');
             sql.add('and Nota NOT IN(select Nota from NotasTerceiros where Data_Entrada BETWEEN :pDataIni and :pDataFim and ISNULL(Desdobramento, 0) = 1)');
             sql.add('union all');
             sql.add('select  Natureza_Codigo');
             sql.add('       ,Valor_TotalNota   = ISNULL((select SUM(ISNULL(Valor_Liquido, 0)+ISNULL(Valor_ICMSSub, 0)+ISNULL(Valor_IPI, 0)) from NotasTerceirosItens NTI where NTI.Nota = NotasTerceiros.Nota');
             sql.add('                            and NTI.Fornecedor = NotasTerceiros.Fornecedor and NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
             sql.add('       ,Valor_BCICMSOper  = ISNULL((select SUM(Valor_BCICMSOper) from NotasTerceirosItens NTI where NTI.Nota = NotasTerceiros.Nota and NTI.Fornecedor = NotasTerceiros.Fornecedor and NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
             sql.add('       ,Valor_ICMSOper    = ISNULL((select SUM(Valor_ICMSOper) from NotasTerceirosItens NTI where NTI.Nota = NotasTerceiros.Nota and NTI.Fornecedor = NotasTerceiros.Fornecedor and NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
             sql.add('       ,Valor_IsentasICMS = ISNULL((select SUM(Valor_IsentasICMS) from NotasTerceirosItens NTI where NTI.Nota = NotasTerceiros.Nota and NTI.Fornecedor = NotasTerceiros.Fornecedor and NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
             sql.add('       ,Valor_OutrasICMS  = ISNULL((select SUM(Valor_OutrasICMS) from NotasTerceirosItens NTI where NTI.Nota = NotasTerceiros.Nota and NTI.Fornecedor = NotasTerceiros.Fornecedor and NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
             sql.add('       ,Aliquota_ICMSOper');
             sql.add('       ,BCIPI             = ISNULL((select SUM(Valor_Liquido) from NotasTerceirosItens where(NotasTerceirosItens.Nota = NotasTerceiros.Nota) and (NotasTerceirosItens.Fornecedor = NotasTerceiros.Fornecedor) and (Valor_IPI > 0)), 0)');
             sql.add('       ,Valor_TotalIPI    = ISNULL((select SUM(Valor_IPI) from NotasTerceirosItens where(NotasTerceirosItens.Nota = NotasTerceiros.Nota) and (NotasTerceirosItens.Fornecedor = NotasTerceiros.Fornecedor)), 0)');
             sql.add('       ,Valor_IsentasIPI  = ISNULL((select SUM(Valor_IsentasIPI) from NotasTerceirosItens NTI where NTI.Nota = NotasTerceiros.Nota and NTI.Fornecedor = NotasTerceiros.Fornecedor and NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
             sql.add('       ,Valor_OutrasIPI   = ISNULL((select SUM(Valor_OutrasIPI) from NotasTerceirosItens NTI where NTI.Nota = NotasTerceiros.Nota and NTI.Fornecedor = NotasTerceiros.Fornecedor and NTI.Natureza_Codigo = NotasTerceiros.Natureza_Codigo), 0)');
             sql.add('       ,NULL');
             sql.add('       ,CNPJ = (select CNPJ from Fornecedores where Codigo = Fornecedor)');
             sql.add('       ,Estado = (select Estado from Fornecedores where Codigo = Fornecedor)');
             sql.add('       ,case when Valor_BCICMSOper  > 0 then 1 else 0 end AS Codigo1');
             sql.add('       ,case when Valor_IsentasICMS > 0 then 2 else 0 end AS Codigo2');
             sql.add('       ,case when Valor_OutrasICMS  > 0 then 3 else 0 end AS Codigo3');
             sql.add('       ,case when Valor_TotalIPI    > 0 then 1 else 0 end AS Codigo4');
             sql.add('       ,case when Valor_IsentasIPI  > 0 then 2 else 0 end AS Codigo5');
             sql.add('       ,case when Valor_OutrasIPI   > 0 then 3 else 0 end AS Codigo6');
             sql.add('       ,Fornecedor');
             sql.add('       ,CAST(0 AS bit) AS NFe_Denegada');
             sql.add('       ,Observacoes COLLATE SQL_Latin1_General_CP1_CI_AS');
             sql.add('from  NotasTerceiros');
             sql.add('where (Data_Entrada BETWEEN :pDataIni and :pDataFim)');
             sql.add('and   ISNULL(Provisoria, 0) = 0');
             sql.add('and   ISNULL(Servico, '''') = '''' ');
             sql.add('and   Nota IN(select Nota from NotasTerceiros where Data_Entrada BETWEEN :pDataIni and :pDataFim and ISNULL(Desdobramento, 0) = 1)');
             sql.add('UPDATE #Temp SET Codigo1=Codigo2, Codigo2=0 where(Codigo1=0 and Codigo2>0)');
             sql.add('UPDATE #Temp SET Codigo1=Codigo3, Codigo3=0 where(Codigo1=0 and Codigo3>0)');
             sql.add('UPDATE #Temp SET Codigo2=Codigo3, Codigo3=0 where(Codigo1=0 and Codigo3>0)');
             sql.add('UPDATE #Temp SET Codigo4=Codigo5, Codigo5=0 where(Codigo4=0 and Codigo5>0)');
             sql.add('UPDATE #Temp SET Codigo4=Codigo6, Codigo6=0 where(Codigo4=0 and Codigo6>0)');
             sql.add('UPDATE #Temp SET Codigo5=Codigo6, Codigo6=0 where(Codigo5=0 and Codigo6>0)');
             sql.add('UPDATE #Temp SET  Valor_TotalNota   = 0');
             sql.add('                 ,BCICMS            = 0');
             sql.add('                 ,Valor_ICMS        = 0');
             sql.add('                 ,Valor_IsentasICMS = 0');
             sql.add('                 ,Valor_OutrasICMS  = 0');
             sql.add('                 ,BCIPI             = 0');
             sql.add('                 ,Valor_TotalIPI    = 0');
             sql.add('                 ,Valor_IsentasIPI  = 0');
             sql.add('                 ,Valor_OutrasIPI   = 0');
             sql.add('                 ,Aliquota_ICMSOper = 0');
             sql.add('where(Cancelada = 1) or NFe_Denegada = 1');
             sql.add('select #Temp.*, Codigo1 AS Codigo_ICMS, Codigo4 AS Codigo_IPI,');
             sql.add('      case');
             sql.add('         when Codigo1 = 1 then BCICMS');
             sql.add('         when Codigo1 = 2 then Valor_IsentasICMS');
             sql.add('         when Codigo1 = 3 then Valor_OutrasICMS');
             sql.add('      else 0 end AS Apuracao_ICMS,');
             sql.add('      case');
             sql.add('         when Codigo4 = 1 then BCIPI');
             sql.add('         when Codigo4 = 2 then Valor_IsentasIPI');
             sql.add('         when Codigo4 = 3 then Valor_OutrasIPI');
             sql.add('      else 0 end AS Apuracao_IPI,');
             sql.add('      case when Codigo1 = 1 then Valor_ICMS     else 0 end AS Imposto_ICMS,');
             sql.add('      case when Codigo4 = 1 then Valor_TotalIPI else 0 end AS Imposto_IPI,');
             sql.add('      Valor_TotalNota AS Valor_Contabil,');
             sql.add('      1 AS Ordem');
             sql.add('into #Temp2');
             sql.add('from #Temp');
             sql.add('where (Codigo1 <> 0) OR (Codigo4 <> 0) and (Cancelada <> 1 OR Nfe_Denegada <> 1)');
             sql.add('union all');
             sql.add('select #Temp.*, Codigo2, Codigo5,');
             sql.add('      case');
             sql.add('         when Codigo2 = 1 then BCICMS');
             sql.add('         when Codigo2 = 2 then Valor_IsentasICMS');
             sql.add('         when Codigo2 = 3 then Valor_OutrasICMS');
             sql.add('      else 0 end,');
             sql.add('      case');
             sql.add('         when Codigo5 = 1 then BCIPI');
             sql.add('         when Codigo5 = 2 then Valor_IsentasIPI');
             sql.add('         when Codigo5 = 3 then Valor_OutrasIPI');
             sql.add('      else 0 end,');
             sql.add('      case when Codigo2 = 1 then Valor_ICMS     else 0 end,');
             sql.add('      case when Codigo5 = 1 then Valor_TotalIPI else 0 end,');
             sql.add('      0,');
             sql.add('      2 AS Ordem');
             sql.add('from #Temp');
             sql.add('where (Codigo2 <> 0 OR Codigo5 <> 0) and (Cancelada <> 1 OR Nfe_Denegada <> 1)');
             sql.add('union all');
             sql.add('select #Temp.*, Codigo3, Codigo6,');
             sql.add('      case');
             sql.add('         when Codigo3 = 1 then BCICMS');
             sql.add('         when Codigo3 = 2 then Valor_IsentasICMS');
             sql.add('         when Codigo3 = 3 then Valor_OutrasICMS');
             sql.add('      else 0 end,');
             sql.add('      case');
             sql.add('         when Codigo6 = 1 then BCIPI');
             sql.add('         when Codigo6 = 2 then Valor_IsentasIPI');
             sql.add('         when Codigo6 = 3 then Valor_OutrasIPI');
             sql.add('      else 0 end,');
             sql.add('      case when Codigo3 = 1 then Valor_ICMS     else 0 end,');
             sql.add('      case when Codigo6 = 1 then Valor_TotalIPI else 0 end,');
             sql.add('      0,');
             sql.add('      3 AS Ordem');
             sql.add('from   #Temp');
             sql.add('where  (Codigo3 <> 0 OR Codigo6 <> 0) and (Cancelada <> 1 OR Nfe_Denegada <> 1)');
             sql.add('union all');
             sql.add('select #Temp.*, 0, 0, 0, 0, 0, 0, 0, 0 AS Ordem');
             sql.add('from   #Temp');
             sql.add('where  (Cancelada = 1 OR Nfe_Denegada = 1) and (Codigo1 = 0 and Codigo2 = 0 and Codigo3 = 0 and Codigo4 = 0 and Codigo5 = 0 and Codigo6 = 0)');
             sql.add('delete from #TEMP2 where (Cancelada = 1 or Nfe_Denegada = 1) and (Ordem <> 0)');
             sql.add('select Natureza_Codigo');
             sql.add('      ,Titulo            = ''  ''+substring(Natureza_Codigo,1,1)+''000 - '' + (select upper(Descricao_NF) from Cybersoft_Cadastros.dbo.Natureza where Codigo = substring(Natureza_Codigo,1,1)+''000'')');
             sql.add('      ,Grupo             = substring(Natureza_Codigo,1,1)+''000'' ');
             sql.add('      ,Descricao         = (select upper(Descricao_NF) from Cybersoft_Cadastros.dbo.Natureza where Codigo = Natureza_Codigo)');
             sql.add('      ,Total_Contabil    = sum(isnull(Valor_Contabil, 0))');
             sql.add('      ,Total_BCICMS      = sum(isnull(BCICMS, 0))');
             sql.add('      ,Total_ICMS        = sum(isnull(Imposto_ICMS, 0))');
             sql.add('      ,Total_IsentasICMS = sum(isnull(Valor_IsentasICMS, 0))');
             sql.add('      ,Total_OutrasICMS  = sum(isnull(Valor_OutrasICMS, 0))');
             sql.add('      ,Total_BCIPI       = sum(isnull(BCIPI, 0))');
             sql.add('      ,Total_IPI         = sum(isnull(Imposto_IPI, 0))');
             sql.add('      ,Total_IsentasIPI  = sum(isnull(Valor_IsentasIPI, 0))');
             sql.add('      ,Total_OutrasIPI   = sum(isnull(Valor_OutrasIPI, 0))');
             sql.add('from #TEMP2');
             sql.add('where isnull(Natureza_Codigo, '''') <> '''' ');
             sql.add('and Ordem = 1');
             sql.add('group by Natureza_Codigo');
             sql.add('order by Natureza_Codigo');
             sql.add('DROP TABLE #Temp, #Temp2');
             ParamByName('pDataIni').AsDate := cDataIni.Date;
             ParamByName('pDataFim').AsDate := cDataFim.Date;
             open;
        end;

        Empresas.SQL.Clear;
        Empresas.SQL.Add('select * from Empresas where (Codigo = :pEmpresa)');
        Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
        Empresas.Open;
        Estados.Open;
        Estados.Locate('Codigo', EmpresasEstado.Value, [locaseInsensitive]);

        Fornecedores.SQL.Clear;
        Fornecedores.SQL.Add('select * from Fornecedores ORDER BY Codigo');
        Fornecedores.Open;

        Screen.Cursor := crDefault;

        If cImpressora.ItemIndex = 0 then begin
           If cModelo.ItemIndex = 0 then ModeloP1 else ModeloP1A;
        end else begin
           Screen.Cursor := crDefault;
           If cModelo.ItemIndex = 0 then begin
              If Trim(cIncentivo.Text) = '' then
                 lOperacao.Caption := '(Todas as Operações)'
              else
                 lOperacao.Caption := '(Operações '+Trim(cIncentivo.Text)+')' ;

              rLivroEntradaP1.Print;
              rLivroEntradaP1.Reset;
           end else begin
              //Impressao_Fiscais_LivroEntradaP1A_JT := TImpressao_Fiscais_LivroEntradaP1A_JT.Create(Self);
              If Trim(cIncentivo.Text) = '' then
                 lOperacaoP1A.Caption := '(Todas as Operações)'
              else
                 lOperacaoP1A.Caption := '(Operações '+Trim(cIncentivo.Text)+')' ;

              rLivroEntradaP1A.Print;
              rLivroEntradaP1A.Reset;
           end;
        end;
      end;
end;

procedure TImpressao_FiscaisOP_LivroEntrada.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadfromFile('fundo_barra.bmp');
end;

procedure TImpressao_FiscaisOP_LivroEntrada.ppDetailBand4BeforePrint(Sender: TObject);
begin
       lC1.Visible := (mNota <> tNotas.FieldByName('Numero').AsInteger) or (mCFOP <> tNotas.FieldByName('Natureza_Codigo').AsString) or (mFornecedor <> tNotas.FieldByName('Fornecedor').AsInteger);
       lC2.Visible := lC1.Visible;
       lC3.Visible := lC1.Visible;
       lC4.Visible := lC1.Visible;
       lC5.Visible := lC1.Visible;
       lC6.Visible := lC1.Visible;
       lC7.Visible := lC1.Visible;
       lC8.Visible := lC1.Visible;
       lC9.Visible := lC1.Visible;
       lCancelada.Visible := lC1.Visible;
       //lCodigo.Visible    := lC1.Visible;

       mNota := tNotas.FieldByName('Numero').AsInteger;
       mCFOP := tNotas.FieldByName('Natureza_Codigo').AsString;
       mFornecedor := tNotas.FieldByName('Fornecedor').AsInteger;
       lCancelada.Caption := '';
       If tNotas.FieldByName('Cancelada').AsBoolean then begin
          lCancelada.Caption := '[ CANCELADA ]';
       end else begin
          If tNotas.FieldByName('Nfe_Denegada').AsBoolean then begin
             lCancelada.Caption := '[ DENEGADA ]'
          end;
       end;
end;

procedure TImpressao_FiscaisOP_LivroEntrada.rDetalheBeforePrint(Sender: TObject);
begin
      lFolha.Value := cFolha.AsInteger-1 + rLivroEntradaP1.PageNo;
end;

procedure TImpressao_FiscaisOP_LivroEntrada.lTotalContabilCalc(Sender: TObject; var Value: Variant);
begin
     lTotalContabil.Value := lTotalContabil.Value + tNotas.FieldByName('Valor_Contabil').AsCurrency;
     lTotalICMS.Value     := lTotalICMS.Value     + tNotas.FieldByName('Imposto_ICMS').AsCurrency;
     lTotalIPI.Value      := lTotalIPI.Value      + tNotas.FieldByName('Imposto_IPI').AsCurrency;
     
     If tNotas.FieldByName('Codigo_ICMS').AsInteger = 1 then
        lTotalICMS1.Value := lTotalICMS1.Value + tNotas.FieldByName('Apuracao_ICMS').AsCurrency;
     If tNotas.FieldByName('Codigo_ICMS').AsInteger = 2 then
        lTotalICMS2.Value := lTotalICMS2.Value + tNotas.FieldByName('Apuracao_ICMS').AsCurrency;
     If tNotas.FieldByName('Codigo_ICMS').AsInteger = 3 then
        lTotalICMS3.Value := lTotalICMS3.Value + tNotas.FieldByName('Apuracao_ICMS').AsCurrency;

     If tNotas.FieldByName('Codigo_IPI').AsInteger = 1 then
        lTotalIPI1.Value := lTotalIPI1.Value + tNotas.FieldByName('Apuracao_IPI').AsCurrency;
     If tNotas.FieldByName('Codigo_IPI').AsInteger = 2 then
        lTotalIPI2.Value     := lTotalIPI2.Value + tNotas.FieldByName('Apuracao_IPI').AsCurrency;
     If tNotas.FieldByName('Codigo_IPI').AsInteger = 3 then
        lTotalIPI3.Value := lTotalIPI3.Value + tNotas.FieldByName('Apuracao_IPI').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroEntrada.rLivroEntradaP1BeforePrint(Sender: TObject);
begin
       lPeriodo.Caption := cDataIni.Text+ ' a '+cDataFim.Text;
end;

procedure TImpressao_FiscaisOP_LivroEntrada.ppDetailBand1BeforePrint(Sender: TObject);
begin
       if mLinha > 1 then
          lC1_P1A.Visible := (mNota <> tNotasP1A.FieldByName('Numero').AsInteger) or (mCFOP <> tNotasP1A.FieldByName('Natureza_Codigo').AsString) or (mFornecedor <> tNotasP1A.FieldByName('Fornecedor').AsInteger)
       else
          lC1_P1A.Visible := true;

       lC2_P1A.Visible := lC1_P1A.Visible;
       lC3_P1A.Visible := lC1_P1A.Visible;
       lC4_P1A.Visible := lC1_P1A.Visible;
       lC5_P1A.Visible := lC1_P1A.Visible;
       lC6_P1A.Visible := lC1_P1A.Visible;
       lC7_P1A.Visible := lC1_P1A.Visible;
       lC8_P1A.Visible := lC1_P1A.Visible;
       lC9_P1A.Visible := lC1_P1A.Visible;

       mNota                 := tNotasP1A.FieldByName('Numero').AsInteger;
       mCFOP                 := tNotasP1A.FieldByName('Natureza_Codigo').AsString;
       mFornecedor           := tNotasP1A.FieldByName('Fornecedor').AsInteger;
       lCanceladaP1A.Visible := (tNotasP1A.FieldByName('Cancelada').AsBoolean and lC1.Visible);
       lObservacao.Visible   := (not tNotasP1A.FieldByName('Cancelada').AsBoolean and lC1.Visible);

       If tNotasP1A.FieldByName('Cancelada').AsBoolean then begin
          lCanceladaP1A.Caption := '[ CANCELADA ]';
       end else begin
          If tNotasP1A.FieldByName('Nfe_Denegada').AsBoolean then begin
             lCanceladaP1A.Caption := '[ DENEGADA ]'
          end;
       end;
       lCanceladaP1A.Visible := (tNotasP1A.FieldByName('Cancelada').AsBoolean or tNotasP1A.FieldByName('NFe_Denegada').AsBoolean and lC1_P1A.Visible);
       inc(mLinha);
end;

procedure TImpressao_FiscaisOP_LivroEntrada.lTotalContabil_P1ACalc(Sender: TObject; var Value: Variant);
begin
     lTotalContabil_P1A.Value := lTotalContabil_P1A.Value + tNotasP1A.FieldByName('Valor_Contabil').AsCurrency;

     If (tNotasP1A.FieldByName('Imposto').AsString = 'ICMS') and (tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 1 )then
        lTotalICMS_P1A.Value     := lTotalICMS_P1A.Value     + tNotasP1A.FieldByName('Valor_Imposto').AsCurrency;
     If (tNotasP1A.FieldByName('Imposto').AsString = 'IPI') and (tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 1 )then
        lTotalIPI_P1A.Value      := lTotalIPI_P1A.Value      + tNotasP1A.FieldByName('Valor_TotalIPI').AsCurrency;
     If (tNotasP1A.FieldByName('Imposto').AsString = 'ICMS') and (tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 1) then
        lTotalICMS1_P1A.Value := lTotalICMS1_P1A.Value + tNotasP1A.FieldByName('BC_Imposto').AsCurrency;
     If (tNotasP1A.FieldByName('Imposto').AsString = 'ICMS') and (tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 2) then
        lTotalICMS2_P1A.Value := lTotalICMS2_P1A.Value + tNotasP1A.FieldByName('Valor_IsentasICMS').AsCurrency;
     If (tNotasP1A.FieldByName('Imposto').AsString = 'ICMS') and (tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 3) then
        lTotalICMS3_P1A.Value := lTotalICMS3_P1A.Value + tNotasP1A.FieldByName('Valor_OutrasICMS').AsCurrency;

     If (tNotasP1A.FieldByName('Imposto').AsString = 'IPI') and (tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 1) then
        lTotalIPI1_P1A.Value := lTotalIPI1_P1A.Value + tNotasP1A.FieldByName('BC_Imposto').AsCurrency;
     If (tNotasP1A.FieldByName('Imposto').AsString = 'IPI') and (tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 2) then
        lTotalIPI2_P1A.Value     := lTotalIPI2_P1A.Value + tNotasP1A.FieldByName('Valor_IsentasIPI').AsCurrency;
     If (tNotasP1A.FieldByName('Imposto').AsString = 'IPI') and (tNotasP1A.FieldByName('Codigo_Imposto').AsInteger = 3) then
        lTotalIPI3_P1A.Value := lTotalIPI3_P1A.Value + tNotasP1A.FieldByName('Valor_OutrasIPI').AsCurrency;
end;

procedure TImpressao_FiscaisOP_LivroEntrada.ppHeaderBand1BeforePrint(Sender: TObject);
begin
      lFolha_P1A.Value := cFolha.AsInteger-1 + rLivroEntradaP1A.PageNo;
      mLinha := 1;
end;

procedure TImpressao_FiscaisOP_LivroEntrada.rLivroEntradaP1ABeforePrint(Sender: TObject);
begin
      lPeriodo2.Caption := cDataIni.Text+ ' a '+cDataFim.Text;
end;

end.
