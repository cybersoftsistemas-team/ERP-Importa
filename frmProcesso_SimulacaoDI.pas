Unit frmProcesso_SimulacaoDI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mask, DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Grids, DBGrids, RXDBCtrl, RXCtrls,
  FUNCOES, MaskUtils, Buttons, MemDS, RXGrids, Math, StrUtils, DateUtils, RxLookup, Menus, DBAccess, MSAccess, ADODB, DB,
   CheckLst, RxCurrEdit;

type
    TDBGridDescendant = class(TDBGrid);
    TProcesso_SimulacaoDI = class(TForm)
    Panel1: TPanel;
    dsSISCOMEX_DI: TDataSource;
    SISCOMEX_DI: TADOTable;
    SISCOMEX: TADOConnection;
    SISCOMEX_DINR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_DIDT_REGISTRO_DI: TWideStringField;                                      
    SISCOMEX_CI: TADOTable;
    dsSISCOMEX_CI: TDataSource;
    SISCOMEX_CINR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_CIDT_RECEPCAO: TWideStringField;
    SISCOMEX_CIDT_DESEMBARACO: TWideStringField;
    SISCOMEX_CIData: TDateField;
    SISCOMEX_TEXTO: TADOTable;
    DataSource1: TDataSource;
    SISCOMEX_TEXTONR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_TEXTONR_SEQ_INF_COMPL: TWordField;
    SISCOMEX_TEXTONR_SEQ_PRODUTO: TFloatField;
    SISCOMEX_TEXTONM_TEXTO_IMP: TMemoField;
    SISCOMEX_ADICAO: TADOTable;
    dsSISCOMEX_ADICAO: TDataSource;
    SISCOMEX_ADICAONR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_ADICAONR_OP_IMP: TWideStringField;
    SISCOMEX_Valores: TADOTable;
    dsSISCOMEX_Valores: TDataSource;
    SISCOMEX_Tributos: TADOTable;
    dsSISCOMEX_Tributos: TDataSource;
    SISCOMEX_TributosNR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_AdicaoImp: TADOTable;
    dsSISCOMEX_AdicaoImp: TDataSource;
    bCotacao: TBitBtn;
    bImportar: TButton;
    bVerificar: TButton;
    bSair: TButton;
    SISCOMEX_TABELAS: TADOConnection;
    SISCOMEX_ViaTransporte: TADOTable;
    dsSISCOMEX_ViaTransporte: TDataSource;
    SISCOMEX_ViaTransporteCODIGO: TWideStringField;
    SISCOMEX_ViaTransporteDESCRICAO: TWideStringField;
    SISCOMEX_NCM: TADOTable;
    dsSISCOMEX_NCM: TDataSource;
    SISCOMEX_Cotacao: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    SISCOMEX_CotacaoCodigo: TWideStringField;
    SISCOMEX_CotacaoDescricao: TWideStringField;
    SISCOMEX_CotacaoTaxa_Conversao: TWideStringField;
    SISCOMEX_CotacaoVigencia_Inicio_Taxa: TWideStringField;
    SISCOMEX_CotacaoVigencia_Fim_Taxa: TWideStringField;
    SISCOMEX_AdicaoTrib: TADOTable;
    SISCOMEX_AdicaoTribNR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_AdicaoTribNR_OP_IMP: TWideStringField;
    SISCOMEX_AdicaoTribNR_SEQ_TRIB_CALC: TWordField;
    SISCOMEX_AdicaoTribCD_RECEITA_IMPOSTO: TWideStringField;
    SISCOMEX_AdicaoTribVL_IPT_A_RECOLHER: TBCDField;
    SISCOMEX_NCMCODIGO: TWideStringField;
    SISCOMEX_NCMALIQUOTA_II: TWideStringField;
    SISCOMEX_NCMALIQUOTA_PIS_ADVAL: TWideStringField;
    SISCOMEX_NCMALIQUOTA_COFINS_ADVAL: TWideStringField;
    SISCOMEX_ValoresNR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_ValoresVL_TOTAL_FRETE_MN: TBCDField;
    SISCOMEX_ValoresVL_TOTAL_MLE_MN: TBCDField;
    SISCOMEX_ValoresVL_TOTAL_SEG_MN: TBCDField;
    SISCOMEX_ValoresCD_MOEDA_FRETE: TWideStringField;
    SISCOMEX_ValoresCD_MOEDA_SEGURO: TWideStringField;
    SISCOMEX_ValoresCD_MOEDA_DESPESAS: TWideStringField;
    SISCOMEX_ValoresVL_FRETE_TNAC_MNEG: TBCDField;
    SISCOMEX_ValoresVL_TOTAL_II_A_REC: TBCDField;
    SISCOMEX_ADICAOQT_MERC_UN_COMERC: TFloatField;
    SISCOMEX_ADICAOTX_DESC_DET_MERC: TMemoField;
    SISCOMEX_ADICAOVL_UNID_COND_VENDA: TFloatField;
    SISCOMEX_DICD_VIA_TRANSP_CARG: TWideStringField;
    SISCOMEX_DIPB_CARGA: TBCDField;
    SISCOMEX_DIPL_CARGA: TBCDField;
    SISCOMEX_DINM_RECINTO_ALFAND: TWideStringField;
    SISCOMEX_DIData: TDateField;
    SISCOMEX_DINR_IMPORTADOR: TWideStringField;
    SISCOMEX_EMBALAGEM: TADOTable;
    dsSISCOMEX_EMBALAGEM: TDataSource;
    SISCOMEX_EMBALAGEMNR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_EMBALAGEMNR_SEQ_EMBALAGEM: TWordField;
    SISCOMEX_EMBALAGEMCD_TIPO_EMBALAGEM: TWideStringField;
    SISCOMEX_EMBALAGEMNM_TIPO_EMBALAGEM: TWideStringField;
    SISCOMEX_EMBALAGEMQT_VOLUME_CARGA: TWideStringField;
    SISCOMEX_DOC: TADOTable;
    dsSISCOMEX_DOC: TDataSource;
    SISCOMEX_DOCNR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_DOCNR_SEQ_DCTO_INSTR: TWordField;
    SISCOMEX_DOCCD_TIPO_DCTO_INSTR: TWideStringField;
    SISCOMEX_DOCNR_DCTO_INSTRUCAO: TWideStringField;
    SISCOMEX_DOCNM_DCTO_INSTRUCAO: TWideStringField;
    SISCOMEX_DOCCD_SITU_DCTO_INSTR: TWideStringField;
    SISCOMEX_DOCNM_SITU_DCTO_INSTR: TWideStringField;
    SISCOMEX_DINM_VEICULO_TRANSP: TWideStringField;
    SISCOMEX_DINM_LOCAL_EMBARQUE: TWideStringField;
    SISCOMEX_DINM_URF_ENTR_CARGA: TWideStringField;
    SISCOMEX_DINR_DCTO_CARGA: TWideStringField;
    SISCOMEX_DINM_TRANSPORTADOR: TWideStringField;
    SISCOMEX_DIDT_EMBARQUE: TWideStringField;
    SISCOMEX_DIDT_CHEGADA_CARGA: TWideStringField;
    SISCOMEX_DIIN_OPERACAO_FUNDAP: TBooleanField;
    SISCOMEX_DIData_Chegada: TDateField;
    SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL: TFloatField;
    SISCOMEX_NCMALIQUOTA_IPI: TWideStringField;
    SISCOMEX_DIED_UF_IMPORTADOR: TWideStringField;
    tQtdeAdicao: TADOQuery;
    tQtdeAdicaoQtde: TFloatField;
    DataSource4: TDataSource;
    SISCOMEX_AdicaoImpCD_INCOTERMS_VENDA: TWideStringField;
    SISCOMEX_AdicaoImpNM_MODALIDADE_PGTO: TWideStringField;
    SISCOMEX_AdicaoImpVL_ALIQ_ICMS: TBCDField;
    SISCOMEX_AdicaoImpCD_PAIS_ORIG_MERC: TWideStringField;
    SISCOMEX_AdicaoImpNR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_AdicaoImpVL_MERC_EMB_DOLAR: TBCDField;
    SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA: TWideStringField;
    SISCOMEX_AdicaoImpVL_FRETE_MERC_MNEG: TBCDField;
    SISCOMEX_AdicaoImpCD_MD_FRETE_MERC: TWideStringField;
    SISCOMEX_AdicaoImpCD_MOEDA_SEG_MERC: TWideStringField;
    SISCOMEX_AdicaoImpVL_SEG_MERC_DOLAR: TBCDField;
    SISCOMEX_AdicaoImpNM_UN_ESTATISTICA: TWideStringField;
    SISCOMEX_AdicaoImpCD_MERCADORIA_NCM: TWideStringField;
    SISCOMEX_AdicaoImpPL_MERCADORIA: TFloatField;
    SISCOMEX_AdicaoImpNM_MERCADORIA_NCM: TWideStringField;
    SISCOMEX_AdicaoImpNM_FORN_ESTR: TWideStringField;
    SISCOMEX_AdicaoImpED_LOGR_FORN_ESTR: TWideStringField;
    SISCOMEX_AdicaoImpED_NR_FORN_ESTR: TWideStringField;
    SISCOMEX_AdicaoImpED_COMPL_FORN_ESTR: TWideStringField;
    SISCOMEX_AdicaoImpED_CIDAD_FORN_ESTR: TWideStringField;
    SISCOMEX_AdicaoImpCD_PAIS_AQUIS_MERC: TWideStringField;
    SISCOMEX_AdicaoImpNR_OP_IMP: TWideStringField;
    Navega: TDBNavigator;
    SISCOMEX_AdicaoTribVL_CALC_IPT_ADVAL: TBCDField;
    SISCOMEX_AdicaoImpED_ESTAD_FORN_ESTR: TWideStringField;
    SISCOMEX_DIIN_DI_OK: TBooleanField;
    SISCOMEX_DIQT_ADICAO_DI: TWideStringField;
    SISCOMEX_DINM_TIPO_DECLARACAO: TWideStringField;
    Pasta: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    GradeItens: TRxDBGrid;
    TabSheet2: TTabSheet;
    cErros: TMemo;
    TabSheet4: TTabSheet;
    cAvisos: TMemo;
    SISCOMEX_ADICAONCM: TStringField;
    SISCOMEX_ValoresVL_TOTAL_IPI_A_REC: TBCDField;
    SISCOMEX_AdicaoTribPC_ALIQ_ESPEC_IPT: TFloatField;
    SISCOMEX_ADICAONM_UN_MEDID_COMERC: TWideStringField;
    SISCOMEX_AdicaoImpQT_PERIOD_PGTO_360: TWideStringField;
    SISCOMEX_AcrescimoValoracao: TADOTable;
    dsValoracao: TDataSource;
    SISCOMEX_AcrescimoValoracaoNR_DECLARACAO_IMP: TWideStringField;
    SISCOMEX_AcrescimoValoracaoNR_OP_IMP: TWideStringField;
    SISCOMEX_AcrescimoValoracaoNR_SEQ_ACRES_VALOR: TWordField;
    SISCOMEX_AcrescimoValoracaoCD_MET_ACRES_VALOR: TWideStringField;
    SISCOMEX_AcrescimoValoracaoNM_MET_ACRES_VALOR: TWideStringField;
    SISCOMEX_AcrescimoValoracaoVL_ACRESCIMO_MNEG: TBCDField;
    SISCOMEX_AcrescimoValoracaoCD_MD_NEGOC_ACRES: TWideStringField;
    SISCOMEX_AcrescimoValoracaoVL_ACRESCIMO_MN: TBCDField;
    tQtdeAdicaoTotal_Adicao: TFloatField;
    SISCOMEX_ADICAONR_SEQ_DETALHE: TWordField;
    SISCOMEX_ValoresVL_TOTAL_MLE_DOLAR: TBCDField;
    SISCOMEX_ValoresVL_TOT_SEGURO_MNEG: TBCDField;
    SISCOMEX_AdicaoImpVL_MERC_COND_VENDA: TBCDField;
    SISCOMEX_AdicaoImpVL_MERC_VENDA_MN: TBCDField;
    tValoracao: TADOQuery;
    tUFDesemb: TMSQuery;
    dstUFDesemb: TDataSource;
    tUFDesembCodigo: TStringField;
    tUFDesembNome: TStringField;
    dstValoracao: TDataSource;
    SISCOMEX_AdicaoTribPC_ALIQ_REDUZIDA: TFloatField;
    SISCOMEX_AdicaoTribPC_ALIQ_ACOR_TARIF: TFloatField;
    SISCOMEX_AdicaoTribVL_IMPOSTO_DEVIDO: TBCDField;
    SISCOMEX_TributosCD_RECEITA_PGTO: TWideStringField;
    SISCOMEX_TributosNM_RECEITA_PGTO: TWideStringField;
    SISCOMEX_TributosCD_BANCO_PGTO_TRIB: TWideStringField;
    SISCOMEX_TributosNR_AGENC_PGTO_TRIB: TWideStringField;
    SISCOMEX_TributosVL_TRIBUTO_PAGO: TBCDField;
    SISCOMEX_TributosVL_SOMADO: TBCDField;
    SISCOMEX_TributosCD_TIPO_PGTO_TRIB: TWideStringField;
    SISCOMEX_TributosNR_CONTA_PGTO_TRIB: TWideStringField;
    SISCOMEX_DICD_URF_ENTR_CARGA: TWideStringField;
    lStatus: TStaticText;
    TabSheet5: TTabSheet;
    cDumping: TCheckListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SISCOMEX_DIData_BL: TDateField;
    SISCOMEX_AdicaoImpVL_SEG_MERC_MN: TBCDField;
    PopupMenu1: TPopupMenu;
    mnBuscar: TMenuItem;
    mnCancelar: TMenuItem;
    SISCOMEX_AdicaoTribVL_BASE_CALC_ADVAL: TBCDField;
    SISCOMEX_DINM_IMPORTADOR: TWideStringField;
    SISCOMEX_AdicaoImpNM_FABRICANTE_MERC: TWideStringField;
    SISCOMEX_AdicaoImpED_LOGR_FABRIC: TWideStringField;
    SISCOMEX_AdicaoImpED_NR_FABRIC: TWideStringField;
    SISCOMEX_AdicaoImpED_COMPL_FABRIC: TWideStringField;
    SISCOMEX_AdicaoImpED_ESTADO_FABRIC: TWideStringField;
    SISCOMEX_AdicaoImpED_CIDAD_FABRIC: TWideStringField;
    Panel3: TPanel;
    StaticText5: TStaticText;
    StaticText1: TStaticText;
    cProcesso: TComboBox;
    StaticText9: TStaticText;
    cTipoMercadoria: TDBLookupComboBox;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    cEstado: TDBLookupComboBox;
    StaticText8: TStaticText;
    cModalidade: TDBLookupComboBox;
    cUFDesembaraco: TDBLookupComboBox;
    cIncentivo: TDBLookupComboBox;
    cValoracao: TCheckBox;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    cReducaoPIS: TCurrencyEdit;
    cReducaoCOFINS: TCurrencyEdit;
    cDA: TCheckBox;
    cEntreposto: TCheckBox;
    StaticText17: TStaticText;
    cExportador: TRxDBLookupCombo;
    cPeso: TRadioGroup;
    GroupBox1: TGroupBox;
    cTaxas: TMemo;
    StaticText18: TStaticText;
    cPISNota: TCurrencyEdit;
    StaticText19: TStaticText;
    cCOFINSNota: TCurrencyEdit;
    StaticText20: TStaticText;
    cOrigem: TRxDBLookupCombo;
    StaticText21: TStaticText;
    cPISMajorado: TCurrencyEdit;
    Grade: TRxDBGrid;
    cTexto: TDBMemo;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText22: TStaticText;
    cCOFINSMajorado: TCurrencyEdit;
    StaticText23: TStaticText;
    cPISNotaSaida: TCurrencyEdit;
    StaticText24: TStaticText;
    cCOFINSNotaSaida: TCurrencyEdit;
    cSuspensao: TCheckBox;
    CheckBox1: TCheckBox;
    tNumero: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    Image2: TImage;

    procedure bSairClick(Sender: TObject);
    procedure SISCOMEX_DICalcFields(DataSet: TDataSet);
    procedure bImportarClick(Sender: TObject);
    procedure SISCOMEX_CICalcFields(DataSet: TDataSet);
    procedure bVerificarClick(Sender: TObject);
    procedure bCotacaoClick(Sender: TObject);
    procedure SISCOMEX_ADICAOTX_DESC_DET_MERCGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cProcessoChange(Sender: TObject);
    procedure cModalidadeChange(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PastaChange(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure SISCOMEX_DIAfterScroll(DataSet: TDataSet);
    procedure SISCOMEX_ADICAOAfterScroll(DataSet: TDataSet);
    procedure cEstadoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mnBuscarClick(Sender: TObject);
    procedure cPISNotaExit(Sender: TObject);
    procedure cCOFINSNotaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa     : String;
    mCodigoMoedas : String;
    mMoedas       : Integer;
    mTotalAdicoes : Array[1..1000] of Real;
    mContaDebito  : String;
    mContaCredito : String;
    mCNPJ         : String;
    mAtivo        : Boolean;
  end;

var
  Processo_SimulacaoDI: TProcesso_SimulacaoDI;

implementation

Uses frmDados, frmCadastro_Cotacao, frmMenu_Principal;

{$R *.dfm}


procedure TProcesso_SimulacaoDI.bSairClick(Sender: TObject);
begin
      SISCOMEX_DI.Close;
      SISCOMEX_CI.Close;
      SISCOMEX_Texto.Close;
      SISCOMEX_Adicao.Close;
      SISCOMEX_Valores.Close;
      SISCOMEX_Tributos.Close;
      SISCOMEX_AdicaoImp.Close;
      SISCOMEX_ViaTransporte.Close;
      SISCOMEX_AdicaoTrib.Close;
      SISCOMEX_Embalagem.Close;
      SISCOMEX_Doc.Close;
      SISCOMEX_NCM.Close;

      SISCOMEX_TABELAS.Connected := False;
      SISCOMEX.Connected         := False;
      {
      Dados.Cotacao.Close;
      Dados.Moedas.Close;
      Dados.Produtos.Close;
      Dados.Unidades.Close;
      Dados.SimulaImportacao.Close;
      Dados.Fornecedores.Close;
      Dados.Incoterms.Close;
      Dados.Paises.Close;
      }
      Close;
end;

procedure TProcesso_SimulacaoDI.SISCOMEX_DICalcFields(DataSet: TDataSet);
Var
    mData :String;
    mData2:String;
begin
     mData := Copy(SISCOMEX_DIDT_REGISTRO_DI.Value, 7, 2)+'/'+Copy(SISCOMEX_DIDT_REGISTRO_DI.Value, 5, 2)+'/'+Copy(SISCOMEX_DIDT_REGISTRO_DI.Value, 1, 4);
     SISCOMEX_DIData.Value := StrtoDate(mData);

     If (SISCOMEX_DIDT_EMBARQUE.Value <> '00000000') and (Trim(SISCOMEX_DIDT_EMBARQUE.Value) <> '')  then
        mData := Copy(SISCOMEX_DIDT_EMBARQUE.Value, 7, 2)+'/'+Copy(SISCOMEX_DIDT_EMBARQUE.Value, 5, 2)+'/'+Copy(SISCOMEX_DIDT_EMBARQUE.Value, 1, 4);

     Try
        SISCOMEX_DIData_BL.Value := StrtoDate(mData);
     Except
        SISCOMEX_DIData_BL.Value := Date;
     End;
     If (SISCOMEX_DIDT_CHEGADA_CARGA.Value <> '') and (SISCOMEX_DIDT_CHEGADA_CARGA.Value <> '00000000') then begin
        mData2 := Copy(SISCOMEX_DIDT_CHEGADA_CARGA.Value, 7, 2)+'/'+Copy(SISCOMEX_DIDT_CHEGADA_CARGA.Value, 5, 2)+'/'+Copy(SISCOMEX_DIDT_CHEGADA_CARGA.Value, 1, 4);
        SISCOMEX_DIData_Chegada.Value := StrtoDate(mData2);
     End;
end;

procedure TProcesso_SimulacaoDI.bImportarClick(Sender: TObject);
Var
   mDI,
   mCodigo,
   mDescricao,
   mFatura,
   mConta,
   mGrupo        : String;
   mValor_PIS,
   mValor_COFINS,
   mValor_PIS2,
   mValor_COFINS2,
   //mTotal_PIS,
   mRateioFrete,
   mRateioSeguro,
   //mTotal_COFINS : Currency;
   mValoracao,
   mMoedaOrigem,
   mMoedaDestino : Real;
   i,
   mPosIni,
   mPosFim       : Integer;
   mMarca        : TBookMark;
   mAchouPais    : Boolean;
   mConvertido   : Currency;
   mTaxaOrig     : Real;
   mTaxaDest     : Real;
begin
      Screen.Cursor := crSQLWait;
      cAvisos.Clear;
      lStatus.Visible := true;
      lStatus.Caption := 'Importando dados do processo...';

      With Dados do Begin
           // Cadastro do local de desembaraço.
           If LocalDesembaraco.Locate('Codigo', SISCOMEX_DICD_URF_ENTR_CARGA.ASInteger, [loCaseInsensitive]) = false then begin
              LocalDesembaraco.Append;
                               LocalDesembaracoCodigo.Value            := SISCOMEX_DICD_URF_ENTR_CARGA.ASInteger;
                               LocalDesembaracoDescricao.Value         := Trim(SISCOMEX_DINM_URF_ENTR_CARGA.AsString);
                               LocalDesembaracoPrazo_Faturamento.Value := 4;
                               LocalDesembaracoPrazo_Registro.Value    := 8;
              LocalDesembaraco.Post;
           End;

           // Copiando os dados da DI do SISCOMEX para a tabela de simulação.
           If SimulaImportacao.Locate('Processo', cProcesso.Text, [loCaseInsensitive]) = False then begin
              tNumero.SQL.Clear;
              tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM SimulaImportacao');
              tNumero.Open;
              SimulaImportacao.Append;
                               SimulaImportacaoNumero.Value := tNumero.FieldByName('Numero').AsInteger + 1;
              tNumero.Close;

              // Registra log do usuario.
              LogDados(SimulaImportacao, 'Importação de DI do processo: '+cProcesso.Text + '(Novo)', dsInsert);
           end else begin
              SimulaImportacao.Edit;

              // Registra log do usuario.
              LogDados(SimulaImportacao, 'Importação de DI do processo: '+cProcesso.Text + '(Reimportação)', dsEdit);
           End;

           //mTotal_PIS    := 0;
           //mTotal_COFINS := 0;
           mDI           := SISCOMEX_DINR_DECLARACAO_IMP.Value;

           SISCOMEX_AdicaoImp.Locate('NR_DECLARACAO_IMP', mDI, [loCaseInsensitive]);

           SimulaImportacaoProcesso.Value                    := Trim(cProcesso.Text);
           SimulaImportacaoINCOTERM.Value                    := SISCOMEX_AdicaoImpCD_INCOTERMS_VENDA.Value;
           SimulaImportacaoDI.Value                          := mDI;
           SimulaImportacaoData.Value                        := SISCOMEX_DIData.Value;
           SimulaImportacaoFrete_Real.Value                  := SISCOMEX_ValoresVL_TOTAL_FRETE_MN.Value;
           SimulaImportacaoSeguro_Real.Value                 := SISCOMEX_ValoresVL_TOTAL_SEG_MN.Value;
           SimulaImportacaoModalidade.Value                  := TiposProcessoDescricao.AsString;
           SimulaImportacaoFornecedor.Value                  := Trim(Copy(SISCOMEX_AdicaoImpNM_FORN_ESTR.Value, 1, 60));
           SimulaImportacaoPeso_Liquido.Value                := SISCOMEX_DIPL_Carga.Value;
           SimulaImportacaoPeso_Bruto.Value                  := SISCOMEX_DIPB_Carga.Value;
           SimulaImportacaoCliente_NotaContrib.Value         := true;
           SimulaImportacaoCliente_NotaJuridica.Value        := true;
           SimulaImportacaoCliente_NotaSimples.Value         := false;
           SimulaImportacaoCliente_NotaZonaFranca.Value      := false;
           SimulaImportacaoCliente_NotaConsumidorFinal.Value := false;
           SimulaImportacaoQtde_Container.Value              := 0;
           SimulaImportacaoBeneficio.AsString                := cIncentivo.Text;
           SimulaImportacaoPorto_Origem.Value                := SISCOMEX_DINM_LOCAL_EMBARQUE.Value;
           SimulaImportacaoPorto_Destino.Value               := SISCOMEX_DINM_URF_ENTR_CARGA.Value;
           SimulaImportacaoPais_Destino.Value                := '1058';
           SimulaImportacaoCidade_Origem.Value               := SISCOMEX_AdicaoImpED_CIDAD_FORN_ESTR.AsString;
           SimulaImportacaoCidade_Destino.Value              := SISCOMEX_AdicaoImpED_CIDAD_FORN_ESTR.AsString;


           mAchouPais := Paises.Locate('Codigo', SISCOMEX_AdicaoImpCD_PAIS_ORIG_MERC.AsString , [loCaseInsensitive]);
           If mAchouPais = false then begin
              mAchouPais := Paises.Locate('Codigo', SISCOMEX_AdicaoImpCD_PAIS_ORIG_MERC.AsString+'0' , [loCaseInsensitive]);
              If mAchouPais = false then mAchouPais := Paises.Locate('Codigo', '0'+SISCOMEX_AdicaoImpCD_PAIS_ORIG_MERC.AsString, [loCaseInsensitive]);
           End;
           If mAchouPais = true then begin
              SimulaImportacaoPais_Origem.Value := PaisesCodigo.AsString;
           End;


           {
           SimulaImportacaoRecinto_Alfandegario.Value    := SISCOMEX_DINM_RECINTO_ALFAND.Value;
           SimulaImportacaoLocal_DesembaracoCodigo.Value := SISCOMEX_DICD_URF_ENTR_CARGA.ASInteger;
           SimulaImportacaoUF_Desembaraco.Value          := tUFDesemb.FieldByName('Codigo').AsString;
           SimulaImportacaoPeso_Bruto.Value              := SISCOMEX_DIPB_CARGA.Value;
           SimulaImportacaoVolumes.Value                 := SISCOMEX_EmbalagemQT_VOLUME_CARGA.AsFloat;
           SimulaImportacaoEspecie.Value                 := SISCOMEX_EmbalagemNM_TIPO_EMBALAGEM.Value;
           SimulaImportacaoQuantidade_Liberada.Value     := 0;
           SimulaImportacaoPeso_Liquido.Value            := SISCOMEX_DIPL_Carga.Value;
           SimulaImportacaoCondicao_Pgto.Value           := SISCOMEX_AdicaoImpNM_MODALIDADE_PGTO.Value;
           SimulaImportacaoLocal_Embarque.Value          := SISCOMEX_DINM_LOCAL_EMBARQUE.Value;
           SimulaImportacaoLocal_Desembarque.Value       := SISCOMEX_DINM_URF_ENTR_CARGA.Value;
           SimulaImportacaoAgencia_Maritima.Value        := SISCOMEX_DINM_TRANSPORTADOR.Value;
           SimulaImportacaoNavio_DataChegada.Value       := SISCOMEX_DIData_Chegada.Value;
           SimulaImportacaoNavio_DataPrevista.Value      := SISCOMEX_DIData_Chegada.Value;
           SimulaImportacaoProcesso_Abertura.Value       := Date;
           SimulaImportacaoTexto.Value                   := SISCOMEX_TEXTONM_TEXTO_IMP.Value;
           SimulaImportacaoCourrier.Value                := False;
           SimulaImportacaoICMS_Diferido.Value           := IncentivosFiscaisICMS_Diferido.AsBoolean;
           SimulaImportacaoModalidade_Importacao.Value   := TiposProcesso.FieldByName('Codigo').AsInteger;
           SimulaImportacaoDocumento_Carga.Value         := SISCOMEX_DINR_DCTO_CARGA.AsString;
           SimulaImportacaoTipo_Mercadoria.Value         := TipoItemCodigo.AsInteger;
           SimulaImportacaoIncentivo_Fiscal.AsString     := cIncentivo.Text;
           SimulaImportacaoData_BL.Value                 := SISCOMEX_DIData_BL.Value;
           SimulaImportacaoDA.Value                      := cDA.State = cbChecked;
           SimulaImportacaoOrigem_Mercadoria.AsInteger   := corigem.KeyValue;
           SimulaImportacaoRemover_Valoracao.AsBoolean   := cValoracao.Checked;
           SimulaImportacaoSuspensao_Impostos.AsBoolean  := cSuspensao.Checked;
           SimulaImportacaoReducao_PIS.Value             := cReducaoPIS.Value;
           SimulaImportacaoReducao_COFINS.Value          := cReducaoCOFINS.Value;
           SimulaImportacaoPIS_NFEntrada.Value           := cPISNota.Value;
           SimulaImportacaoCOFINS_NFEntrada.Value        := cCOFINSNota.Value;
           SimulaImportacaoPIS_NFESaida.Value            := cPISNotaSaida.Value;
           SimulaImportacaoCOFINS_NFESaida.Value         := cCOFINSNotaSaida.Value;
           SimulaImportacaoPIS_Majorada.Value            := cPISMajorado.Value;
           SimulaImportacaoCOFINS_Majorada.Value         := cCOFINSMajorado.Value;
           If SISCOMEX_Tributos.Locate('NR_DECLARACAO_IMP; CD_RECEITA_PGTO', VarArrayOf([SimulaImportacaoNumero_Declaracao.AsString, '7811']), [loCaseInsensitive]) = true then
              SimulaImportacaoTaxa_SISCOMEX.Value := SISCOMEX_Tributos.FieldByName('VL_SOMADO').AsCurrency;
           }
           Case SISCOMEX_DICD_VIA_TRANSP_CARG.AsInteger of
                1: SimulaImportacaoModalidade_Frete.Value := 'MARITIMA';
                2: SimulaImportacaoModalidade_Frete.Value := 'FLUVIAL';
                3: SimulaImportacaoModalidade_Frete.Value := 'LACUSTRE';
                4: SimulaImportacaoModalidade_Frete.Value := 'AEREA';
                5: SimulaImportacaoModalidade_Frete.Value := 'POSTAL';
                6: SimulaImportacaoModalidade_Frete.Value := 'FERROVIARIA';
                7: SimulaImportacaoModalidade_Frete.Value := 'RODOVIARIA';
                8: SimulaImportacaoModalidade_Frete.Value := 'TUBO-CONDUTO';
                9: SimulaImportacaoModalidade_Frete.Value := 'MEIOS PROPRIOS';
               10: SimulaImportacaoModalidade_Frete.Value := 'ENTRADA FICTA';
           End;

           {
           SimulaImportacaoNome_Transporte.Value := SISCOMEX_DINM_VEICULO_TRANSP.Value;

           mAchouPais := Paises.Locate('Codigo', SISCOMEX_AdicaoImpCD_PAIS_ORIG_MERC.AsString , [loCaseInsensitive]);
           If mAchouPais = false then begin
              mAchouPais := Paises.Locate('Codigo', SISCOMEX_AdicaoImpCD_PAIS_ORIG_MERC.AsString+'0' , [loCaseInsensitive]);
              If mAchouPais = false then mAchouPais := Paises.Locate('Codigo', '0'+SISCOMEX_AdicaoImpCD_PAIS_ORIG_MERC.AsString, [loCaseInsensitive]);
           End;
           If mAchouPais = true then begin
              SimulaImportacaoCodigo_PaisOrigem.Value := PaisesCodigo.AsString;
              SimulaImportacaoOrigem.Value            := PaisesNome.Value;
           End;

           // Pegando os numeros das faturas.
           lStatus.Caption := 'Pegando Números das faturas...';

           SISCOMEX_Doc.Locate( 'NR_DECLARACAO_IMP', mDI, [loCaseInsensitive] );
           SimulaImportacaoNumero_Fatura.Clear;

           mFatura := '';
           While (SISCOMEX_DOCNR_DECLARACAO_IMP.Value = mDI) and (not SISCOMEX_DOC.Eof) do begin
                 If (Trim(SISCOMEX_DOCCD_TIPO_DCTO_INSTR.Value) = '01') then begin
                    mFatura := mFatura + Trim(SISCOMEX_DocNR_DCTO_INSTRUCAO.Value);
                 End;
                 If Trim(SISCOMEX_DOCCD_TIPO_DCTO_INSTR.Value) = '28' then begin
                    SimulaImportacaoNumero_DOC.Value := Trim(SISCOMEX_DocNR_DCTO_INSTRUCAO.Value);
                 End;
                 SISCOMEX_Doc.Next;
           End;
           If Trim(SimulaImportacaoNumero_Fatura.Value) = '' then begin
              SimulaImportacaoNumero_Fatura.Value := mFatura;
           End;

           SISCOMEX_ViaTransporte.Locate('Codigo', SISCOMEX_DICD_VIA_TRANSP_CARG.Value, [loCaseInsensitive]);

           // Totalizando FRETE / SEGURO.
           lStatus.Caption                 := 'Totalizando FRETE/ SEGURO...';
           SimulaImportacaoFob_ME.Value        := 0;
           SimulaImportacaoFob_MEAdicoes.Value := 0;
           SimulaImportacaoFob_Adicoes.Value   := 0;
           SimulaImportacaoFrete_ME.Value      := 0;
           SimulaImportacaoSeguro_ME.Value     := 0;

           SISCOMEX_AdicaoImp.First;
           While (SISCOMEX_AdicaoImpNR_DECLARACAO_IMP.Value = mDI) and (not SISCOMEX_AdicaoImp.Eof) do begin
                 If mMoedas > 1 then
                    SimulaImportacaoMoeda_Fob.Value := Dados.ConfiguracaoMoeda_Importacao.Value
                 else
                    SimulaImportacaoMoeda_Fob.Value := SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsInteger;

                 SimulaImportacaoFrete_ME.Value := SimulaImportacaoFrete_Me.Value + SISCOMEX_AdicaoImpVL_FRETE_MERC_MNEG.Value;

                 If SISCOMEX_AdicaoImpCD_MOEDA_SEG_MERC.Value = '000' then
                    SimulaImportacaoMoeda_Seguro.Value := SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsInteger
                 else
                    SimulaImportacaoMoeda_Seguro.Value := SISCOMEX_AdicaoImpCD_MOEDA_SEG_MERC.AsInteger;

                 Cotacao.Locate('Moeda;Data', VarArrayOf([SimulaImportacaoMoeda_Seguro.AsInteger, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);

                 SimulaImportacaoSeguro_ME.Value := SimulaImportacaoSeguro_ME.Value + (SISCOMEX_AdicaoImpVL_SEG_MERC_MN.Value / CotacaoValor.Value);

                 SISCOMEX_AdicaoImp.Next;
           End;

           // Pegando a moeda do frete.
           If (SISCOMEX_ValoresVL_TOTAL_FRETE_MN.Value > 0) then begin
               SimulaImportacaoMoeda_Frete.Value := SISCOMEX_ValoresCD_MOEDA_FRETE.AsInteger;
           End;

           lStatus.Caption := 'Cadastrando a cotação das moedas...';
           Cotacao.Locate('Moeda;Data', VarArrayOf([SimulaImportacaoMoeda_Fob.AsInteger, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
           SimulaImportacaoTaxa_FOB.Value := CotacaoValor.Value;

           If SimulaImportacaoFrete.AsCurrency = 0 then begin
              SimulaImportacaoMoeda_Frete.Clear;
              SimulaImportacaoTaxa_Frete.Clear ;
           end else begin
              Cotacao.Locate('Moeda;Data', VarArrayOf([SimulaImportacaoMoeda_Frete.AsInteger, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
              SimulaImportacaoTaxa_Frete.Value := CotacaoValor.Value;
           End;

           If SimulaImportacaoSeguro.AsCurrency = 0 then begin
              SimulaImportacaoMoeda_Seguro.Clear;
              SimulaImportacaoTaxa_Seguro.Clear ;
           end else begin
              Cotacao.Locate('Moeda;Data', VarArrayOf([SimulaImportacaoMoeda_Seguro.AsInteger, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
              SimulaImportacaoTaxa_Seguro.Value := CotacaoValor.Value;
           End;

           // Totalização o AD VALOREM.
           lStatus.Caption := 'Totalizando o ADVALOREM...';
           
           tValoracao.SQL.Clear;
           tValoracao.SQL.Add('SELECT * FROM OP_ADIÇÃO_ACRÉSCIMO_VALORAÇÃO WHERE(NR_DECLARACAO_IMP = :pDI)');
           tValoracao.Parameters.ParamByName('pDI').Value := mDI;
           tValoracao.Open;

           mValoracao := 0;

           For i := 1 to 1000 do begin
               mTotalAdicoes[i] := 0;
           End;

           tValoracao.First;
           While not tValoracao.Eof do begin
                 If tValoracao.FieldByName('CD_MD_NEGOC_ACRES').Value = SimulaImportacaoMoeda_Fob.Value then begin
                    If tValoracao.FieldByName('VL_ACRESCIMO_MNEG').AsCurrency > 0 then begin
                       mValoracao := mValoracao + tValoracao.FieldByName('VL_ACRESCIMO_MNEG').AsCurrency;
                       mTotalAdicoes[tValoracao.FieldByName('NR_OP_IMP').AsInteger] := mTotalAdicoes[tValoracao.FieldByName('NR_OP_IMP').AsInteger] + tValoracao.FieldByName('VL_ACRESCIMO_MNEG').Value;
                    end else begin
                       mValoracao := mValoracao + tValoracao.FieldByName('VL_ACRESCIMO_MN').AsCurrency;
                       mTotalAdicoes[tValoracao.FieldByName('NR_OP_IMP').AsInteger] := mTotalAdicoes[tValoracao.FieldByName('NR_OP_IMP').AsInteger] + tValoracao.FieldByName('VL_ACRESCIMO_MN').Value;
                    End;
                 end else begin
                    Cotacao.Locate('Moeda;Data', VarArrayOf([tValoracao.FieldByName('CD_MD_NEGOC_ACRES').AsInteger, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                    mValoracao := mValoracao + ((tValoracao.FieldByName('VL_ACRESCIMO_MNEG').Value * CotacaoValor.Value) / SimulaImportacaoTaxa_FOB.Value);
                    mTotalAdicoes[tValoracao.FieldByName('NR_OP_IMP').AsInteger] := mTotalAdicoes[tValoracao.FieldByName('NR_OP_IMP').AsInteger] + ((tValoracao.FieldByName('VL_ACRESCIMO_MNEG').Value * CotacaoValor.Value) / SimulaImportacaoTaxa_FOB.Value);
                 End;
                 tValoracao.Next;
           End;
           SimulaImportacaoAd_Valorem.Value := (mValoracao * SimulaImportacaoTaxa_FOB.AsFloat);

           // Importando os itens da DI para adições.
           lStatus.Caption := 'Abrindo adições...';

           SimulaAdicoes.SQL.Clear;
           SimulaAdicoes.SQL.Add('DELETE FROM SimulaAdicoes WHERE (DI = :pDI)');
           SimulaAdicoes.ParamByName('pDI').AsString := mDI;
           SimulaAdicoes.Execute;
           SimulaAdicoes.SQL.Clear;
           SimulaAdicoes.SQL.Add('SELECT * FROM SimulaAdicoes WHERE (DI = :pDI)');
           SimulaAdicoes.ParamByName('pDI').AsString := mDI;
           SimulaAdicoes.Open;

           If ConfiguracaoRateio_Valoracao.AsString = 'P' then begin
              InvoiceItens.SQL.Clear;
              InvoiceItens.SQL.Add('SELECT *');
              InvoiceItens.SQL.Add('FROM   InvoiceItens');
              InvoiceItens.SQL.Add('WHERE  Invoice IN(SELECT Numero FROM Invoice WHERE(Processo = :pProcesso))');
              InvoiceItens.ParamByName('pProcesso').AsString := cProcesso.Text;
              InvoiceItens.Open;
           End;

           lStatus.Caption := 'Tabela de adições aberta...';

           Janela_Processamento                    := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := SISCOMEX_Adicao.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Importando os itens da DI: '+FormatMaskText('99/9999999-9;0',mDI);
           Janela_Processamento.Show;

           SISCOMEX_Adicao.First;
           Cotacao.Locate('Moeda;Data', VarArrayOf([SimulaImportacaoMoeda_Fob.Value, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);

           SimulaImportacaoQuantidade.Value := 0;
           SimulaImportacaoFOB.Value        := 0;
           SimulaImportacaoFob_ME.Value     := 0;
           mValor_PIS2              := 0;
           mValor_COFINS2           := 0;

           lStatus.Caption := 'Gravando o processo...';
           Application.ProcessMessages;

           SimulaImportacao.Post;

           lStatus.Caption := 'Importando os itens das adições...';
           Application.ProcessMessages;

           While (SISCOMEX_AdicaoNR_DECLARACAO_IMP.Value = mDI) and not (SISCOMEX_Adicao.Eof) do begin
                 SISCOMEX_AdicaoImp.Locate('NR_DECLARACAO_IMP;NR_OP_IMP', VarArrayOf([SISCOMEX_AdicaoNR_DECLARACAO_IMP.Value,SISCOMEX_AdicaoNR_OP_IMP.Value]), [loCaseInsensitive]);
                 Unidades.Locate('Descricao', SISCOMEX_AdicaoNM_UN_MEDID_COMERC.Value, [loCaseInsensitive]);

                 // Verifica o código NCM do produto, pega a aliquota de redução para a NCM na tabela de ICMS.
                 ICMS.SQL.Clear;
                 ICMS.SQL.Add('SELECT * FROM ICMS WHERE (UF = :pEstado)');
                 ICMS.ParamByName('pEstado').AsString := EstadosCodigo.Value;
                 ICMS.Open;

                 If NCM.Locate('NCM', SISCOMEX_AdicaoImpCD_MERCADORIA_NCM.Value, [loCaseInsensitive]) = True then begin
                    NCM.Edit;
                    If Trim(NCMProduto.Value) = '' then NCMProduto.Value := SISCOMEX_AdicaoImpNM_MERCADORIA_NCM.Value;
                    NCMUnidade.Value := UnidadesCodigo.Value;
                    If ICMS.FieldByName('Reducao_ICMS').Value <> NULL then NCMICMS_Reducao.Value := ICMS.FieldByName('Reducao_ICMS').Value;
                    //If Trim(NCMCodigoTrib_TabA.Value) = '' then NCMCodigoTrib_TabA.Value := '1';
                    NCMCodigoTrib_TabA.Value  := CSTTabelaACodigo.AsString;
                    NCMCodigoTrib_TabA2.Value := CSTTabelaACodigo.AsString;
                 End else begin
                    NCM.Insert;
                    NCMNCM.Value             := SISCOMEX_AdicaoImpCD_MERCADORIA_NCM.Value;
                    NCMDNF.Value             := False;
                    NCMProduto.Value         := SISCOMEX_AdicaoImpNM_MERCADORIA_NCM.Value;
                    NCMUnidade.Value         := UnidadesCodigo.Value;
                    NCMCodigoTrib_TabA.Value := CSTTabelaACodigo.AsString;
                    NCMGenero.Value          := StrtoInt(Copy(SISCOMEX_AdicaoImpCD_MERCADORIA_NCM.Value,1,2));
                    If ICMS.FieldByName('Reducao_ICMS').Value <> NULL then NCMICMS_Reducao.Value := ICMS.FieldByName('Reducao_ICMS').Value;
                 End;

                 // Totalização da quantidade da adição.
                 tQtdeAdicao.Close;
                 tQtdeAdicao.SQL.Clear;
                 tQtdeAdicao.SQL.Add('SELECT SUM(QT_MERC_UN_COMERC) AS Qtde, SUM(VL_UNID_COND_VENDA * QT_MERC_UN_COMERC) AS Total_Adicao FROM OP_ADIÇÃO_DETALHE_MERCADORIA WHERE (NR_DECLARACAO_IMP = '+QuotedStr(mDI)+ ') AND (NR_OP_IMP = '+ QuotedStr(SISCOMEX_AdicaoNR_OP_IMP.AsString)+')' );
                 tQtdeAdicao.Open;

                 // Pegando a aliquota do II.
                 If SISCOMEX_AdicaoTrib.Locate('NR_DECLARACAO_IMP;NR_OP_IMP;CD_RECEITA_IMPOSTO', VarArrayOf([mDI,SISCOMEX_AdicaoNR_OP_IMP.Value,'0001']), [loCaseInsensitive] ) = True then begin
                    If (SISCOMEX_AdicaoTrib.FieldByName('VL_IMPOSTO_DEVIDO').AsCurrency > 0) then begin
                       NCMII.Value                 := SISCOMEX_AdicaoTrib.FieldByName('PC_ALIQ_NORM_ADVAL').AsFloat;
                       NCMReducao_II.Value         := SISCOMEX_AdicaoTrib.FieldByName('PC_ALIQ_REDUZIDA').AsFloat;
                       NCMAcordo_TarifarioII.Value := SISCOMEX_AdicaoTrib.FieldByName('PC_ALIQ_ACOR_TARIF').AsFloat;
                    end else begin
                       NCMII.Value                 := 0;
                       NCMReducao_II.Value         := 0;
                       NCMAcordo_TarifarioII.Value := 0;
                    End;
                 End;

                 // Pegando a aliquota do IPI.
                 If SISCOMEX_AdicaoTrib.Locate('NR_DECLARACAO_IMP;NR_OP_IMP;CD_RECEITA_IMPOSTO', VarArrayOf([mDI,SISCOMEX_AdicaoNR_OP_IMP.Value,'0002']), [loCaseInsensitive] ) = True then begin
                    // Procura a classe de enquadramento do IPI pelo valor.
                    If ClasseIPI.Locate('Valor_IPI', SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL.AsFloat, [loCaseInsensitive] ) = True then begin
                       Produtos.Edit;
                                ProdutosClasseEnquadra_IPI.Value := dmFiscal.ClasseIPIClasse.Value;
                       Produtos.Post;
                    End;

                    NCMIPI.Value                 := SISCOMEX_AdicaoTrib.FieldByName('PC_ALIQ_NORM_ADVAL').AsFloat;
                    NCMReducao_IPI.Value         := SISCOMEX_AdicaoTrib.FieldByName('PC_ALIQ_REDUZIDA').AsFloat;
                    NCMAcordo_TarifarioIPI.Value := SISCOMEX_AdicaoTrib.FieldByName('PC_ALIQ_ACOR_TARIF').AsFloat;
                 End;

                 // Pegando a aliquota do PIS.
                 mValor_PIS := 0;
                 If SISCOMEX_AdicaoTrib.Locate('NR_DECLARACAO_IMP;NR_OP_IMP;CD_RECEITA_IMPOSTO', VarArrayOf([mDI,SISCOMEX_AdicaoNR_OP_IMP.Value,'0005']), [loCaseInsensitive] ) = True then begin
                    NCMPIS.Value := SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL.AsFloat;
                    If cPISNotaSaida.Value > 0 then NCMPIS_NotaSaida.Value := cPISNotaSaida.Value;

                    If Roundto(SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL.Value, -4) = Roundto(cPISMajorado.Value, -4) then begin
                       NCMPIS_Nota.Value       := cPISNota.Value;
                       NCMCusto_Seletivo.Value := true;
                    end else begin
                       NCMPIS_Nota.Value := SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL.AsFloat;
                    End;   

                    mValor_PIS := ((SISCOMEX_AdicaoTribVL_CALC_IPT_ADVAL.Value / tQtdeAdicao.FieldByname('Qtde').AsFloat) * SISCOMEX_AdicaoQT_MERC_UN_COMERC.Value);
                    mTotal_PIS := mTotal_PIS + mValor_PIS;
                 End;

                 // Pegando a aliquota da COFINS.
                 mValor_COFINS := 0;
                 If SISCOMEX_AdicaoTrib.Locate('NR_DECLARACAO_IMP;NR_OP_IMP;CD_RECEITA_IMPOSTO', VarArrayOf([mDI,SISCOMEX_AdicaoNR_OP_IMP.Value,'0006']), [loCaseInsensitive] ) = True then begin
                    NCMCOFINS.Value := SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL.AsFloat;
                    If cCOFINSNotaSaida.Value > 0 then NCMCOFINS_NotaSaida.Value := cCOFINSNotaSaida.Value;

                    If Roundto(SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL.Value, -4) = Roundto(cCOFINSMajorado.Value, -4) then begin
                       NCMCOFINS_Nota.Value    := cCOFINSNota.Value;
                       NCMCusto_Seletivo.Value := true;
                    end else begin
                       NCMCOFINS_Nota.Value := SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL.AsFloat;
                    End;    

                    mValor_COFINS := ((SISCOMEX_AdicaoTribVL_CALC_IPT_ADVAL.Value / tQtdeAdicao.FieldByname('Qtde').AsFloat) * SISCOMEX_AdicaoQT_MERC_UN_COMERC.Value);
                    mTotal_COFINS := mTotal_COFINS + mValor_COFINS;
                 End;

                 // Calculo do PIS2 e COFINS2 c/alíquota basica.
                 If Roundto(SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL.AsFloat, -4) = Roundto(cCOFINSMajorado.Value, -4) then begin
                    mValor_PIS2    := mValor_PIS2    + RoundTo((mValor_PIS / (NCMPIS.AsFloat/100)) * (cPISNota.Value    /100), -4);
                    mValor_COFINS2 := mValor_COFINS2 + RoundTo((mValor_PIS / (NCMPIS.AsFloat/100)) * (cCOFINSNota.Value /100), -4);
                 end else begin
                    mValor_PIS2    := mValor_PIS2    + mValor_PIS;
                    mValor_COFINS2 := mValor_COFINS2 + mValor_COFINS;
                 End;

                 NCM.Post;

                 // Rateio da valoração para somar ao valor do produto. (Ad Valorem).
                 mValoracao := 0;
                 mMarca     := SISCOMEX_AdicaoImp.GetBookmark;

                 If cValoracao.Checked = false then begin
                    If (ConfiguracaoRateio_Valoracao.AsString = 'V') or (Invoice.RecordCount = 0) then begin
                       // Rateia valoração pelo valor FOB.
                       If SISCOMEX_AdicaoImp.Locate('NR_DECLARACAO_IMP; NR_OP_IMP', VarArrayOf([SISCOMEX_DINR_DECLARACAO_IMP.Value, SISCOMEX_AdicaoNR_OP_IMP.AsString]), [loCaseInsensitive]) = true then begin
                          mValoracao := RoundTo((mTotalAdicoes[SISCOMEX_AdicaoNR_OP_IMP.AsInteger] / SISCOMEX_AdicaoImpVL_MERC_COND_VENDA.Value) * SISCOMEX_AdicaoVL_UNID_COND_VENDA.Value, -6);
                       End;
                    end else begin
                       // Rateia valoração pelo Peso Líquido.
                       If SISCOMEX_AdicaoImp.Locate('NR_DECLARACAO_IMP; NR_OP_IMP', VarArrayOf([SISCOMEX_DINR_DECLARACAO_IMP.Value, SISCOMEX_AdicaoNR_OP_IMP.AsString]), [loCaseInsensitive]) = true then begin
                          mValoracao := RoundTo((mTotalAdicoes[SISCOMEX_AdicaoNR_OP_IMP.AsInteger] / SISCOMEX_AdicaoImpPL_MERCADORIA.Value) * InvoiceItensPeso_Liquido.Value, -6);
                       End;
                    End;
                 End;
                 SISCOMEX_AdicaoImp.GotoBookmark(mMarca);
                 SISCOMEX_AdicaoImp.FreeBookmark(mMarca);

                 If SimulaAdicoes.Locate('Adicao;Codigo_Mercadoria;Sequencia_SISCOMEX', VarArrayOf([SISCOMEX_AdicaoNR_OP_IMP.AsInteger, ProdutosCodigo.Value, SISCOMEX_AdicaoNR_SEQ_DETALHE.AsInteger]), [loCaseInsensitive]) = False then begin
                    tAdicao.Open;
                    SimulaAdicoes.Append;
                    If tAdicao.RecordCount > 0 then
                       AdicoesRegistro.Value := (tAdicaoRegistro.AsInteger+1)
                    else
                       AdicoesRegistro.Value := 1;
                 end else begin
                    SimulaAdicoes.Edit;
                 End;

                 tSequencia.SQL.Clear;
                 tSequencia.SQL.Add('SELECT MAX(Sequencia) AS Sequencia FROM SimulaAdicoes WHERE (DI = :pDI) AND (Adicao = :pAdicao)');
                 tSequencia.ParamByName('pDI').AsString      := mDI;
                 tSequencia.ParamByName('pAdicao').AsInteger := SISCOMEX_AdicaoNR_OP_IMP.AsInteger;
                 tSequencia.Open;

                 SimulaAdicoesSequencia.Value          := tSequencia.FieldByName('Sequencia').AsInteger + 1;
                 SimulaAdicoesDI.Value                 := mDI;
                 SimulaAdicoesAdicao.Value             := SISCOMEX_AdicaoNR_OP_IMP.AsInteger;
                 SimulaAdicoesSequencia_SISCOMEX.Value := SISCOMEX_AdicaoNR_SEQ_DETALHE.AsInteger;
                 SimulaAdicoesCodigo_Mercadoria.Value  := 0;
                 SimulaAdicoesAliquota_ICMS.Value      := SISCOMEX_AdicaoImpVL_ALIQ_ICMS.Value;

                 // Salva a maior aliquota encontrada nas adições para o processo.
                 If SimulaImportacaoAliquota_ICMS.AsFloat < SISCOMEX_AdicaoImpVL_ALIQ_ICMS.Value then begin
                    SimulaImportacao.Edit;
                                 SimulaImportacaoAliquota_ICMS.Value := SISCOMEX_AdicaoImpVL_ALIQ_ICMS.Value;
                    SimulaImportacao.Post;
                 End;

                 Cotacao.Locate('Moeda;Data', VarArrayOf([SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsInteger, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);

                 If mMoedas = 1 then begin
                    SimulaAdicoesValor_Unitario.Value     := Roundto(SISCOMEX_AdicaoVL_UNID_COND_VENDA.Value + mValoracao, -6);
                    SimulaAdicoesValor_SemAdValorem.Value := Roundto(SISCOMEX_AdicaoVL_UNID_COND_VENDA.Value, -6);
                    SimulaAdicoesValor_UnitarioReal.Value := Roundto((SimulaAdicoesValor_Unitario.Value * CotacaoValor.Value), -6);
                 end else begin
                    Cotacao.Locate('Moeda;Data', VarArrayOf([SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsInteger, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                    mMoedaOrigem := CotacaoValor.Value;
                    Cotacao.Locate('Moeda;Data', VarArrayOf([ConfiguracaoMoeda_Importacao.Value, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                    mMoedaDestino                   := CotacaoValor.Value;
                    SimulaAdicoesValor_Unitario.Value     := Roundto(((SISCOMEX_AdicaoVL_UNID_COND_VENDA.Value * mMoedaOrigem)/mMoedaDestino) + mValoracao, -6);
                    SimulaAdicoesValor_SemAdValorem.Value := Roundto(((SISCOMEX_AdicaoVL_UNID_COND_VENDA.Value * mMoedaOrigem)/mMoedaDestino), -6);
                    SimulaAdicoesValor_UnitarioReal.Value := Roundto((SimulaAdicoesValor_Unitario.Value * CotacaoValor.Value), -6);
                 End;

                 SimulaAdicoesNCM.Value        := SISCOMEX_AdicaoImpCD_MERCADORIA_NCM.Value;
                 SimulaAdicoesQuantidade.Value := SISCOMEX_AdicaoQT_MERC_UN_COMERC.Value;

                 If SimulaAdicoesLancado_Entrada.Value = 0 then SimulaAdicoesLancado_Entrada.Value := SISCOMEX_AdicaoQT_MERC_UN_COMERC.Value;

                 // Caso haja Peso líquido informado no cadastro do produto utiliza, caso contrario usa o rateado da adição.
                 AdicoesPeso_Liquido.Value := (SISCOMEX_AdicaoImpPL_MERCADORIA.Value / tQtdeAdicaoQtde.Value);
                 AdicoesExportador.Value   := FornecedoresCodigo.Value;
                 AdicoesValor_PIS.Value    := mValor_PIS;
                 AdicoesValor_COFINS.Value := mValor_COFINS;

                 // Verifica se tem 'Dumping' selecionado.
                 For i := 0 to cDumping.Count -1 do begin
                     If (StrtoInt(Copy(cDumping.Items[i], 1, 3)) = AdicoesAdicao.AsInteger) and (StrtoInt(Copy(cDumping.Items[i], 5, 4)) = AdicoesSequencia_SISCOMEX.AsInteger) and (cDumping.Checked[i] = true) then begin
                        AdicoesDumping.Value := true;
                     End
                 End;

                 SimulaAdicoes.Post;

                 tAdicao.Close;
                 tSequencia.Close;

                 SimulaImportacao.Edit;
                              SimulaImportacaoQuantidade.Value          := (SimulaImportacaoQuantidade.Value + AdicoesQuantidade.Value);
                              SimulaImportacaoQuantidade_Digitada.Value := SimulaImportacaoQuantidade.Value;

                              If cDA.Checked = false then begin
                                 SimulaImportacaoValor_PIS.Value     := mTotal_PIS;
                                 SimulaImportacaoValor_COFINS.Value  := mTotal_COFINS;
                                 SimulaImportacaoValor_PIS2.Value    := mValor_PIS2;
                                 SimulaImportacaoValor_COFINS2.Value := mValor_COFINS2;
                              End;
                              SimulaImportacaoVencimento_Cambio.Value := SISCOMEX_AdicaoImpQT_PERIOD_PGTO_360.AsInteger;
                              SimulaImportacaoFOB.Value               := SimulaImportacaoFOB.Value + (AdicoesValor_UnitarioReal.Value * AdicoesQuantidade.Value);
                              SimulaImportacaoFob_ME.Value            := SimulaImportacaoFob_ME.Value + (AdicoesValor_Unitario.Value * AdicoesQuantidade.Value);
                              SimulaImportacaoFornecedor.Value        := FornecedoresCodigo.Value;
                              SimulaImportacaoFOB_MEAdicoes.Value     := SimulaImportacaoFOB_ME.Value;
                              SimulaImportacaoFob_Adicoes.Value       := SimulaImportacaoFob.Value;
                 SimulaImportacao.Post;

                 SISCOMEX_Adicao.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
           End;

           // Removendo Frete e Seguro do Valor total do FOB.
           Incoterms.Locate('Codigo', SimulaImportacaoIncoterms.Value, [loCaseInsensitive]);
           SimulaImportacao.Edit;
                        If (IncotermsFrete.Value = False) then begin
                           If SimulaImportacaoMoeda_FOB.Value = SimulaImportacaoMoeda_Frete.Value then
                              SimulaImportacaoFOB_ME.Value := SimulaImportacaoFOB_ME.Value - SimulaImportacaoFrete_ME.Value
                           else begin
                              Cotacao.Locate('Moeda;Data', VarArrayOf([SimulaImportacaoMoeda_Frete.Value, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                              mTaxaOrig := CotacaoValor.Value;
                              Cotacao.Locate('Moeda;Data', VarArrayOf([SimulaImportacaoMoeda_FOB.Value, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                              mTaxaDest                := CotacaoValor.Value;
                              mConvertido              := ((SimulaImportacaoFrete_ME.Value * mTaxaOrig ) / mTaxaDest );
                              SimulaImportacaoFOB_ME.Value := (SimulaImportacaoFOB_ME.Value - mConvertido);
                           End;
                        End;
                        If (IncotermsSeguro.Value = False) then begin
                           If SimulaImportacaoMoeda_FOB.Value = SimulaImportacaoMoeda_Seguro.Value then
                              SimulaImportacaoFOB_ME.Value := SimulaImportacaoFOB_ME.Value - SimulaImportacaoSeguro_ME.Value
                           else begin
                              Cotacao.Locate('Moeda;Data', VarArrayOf([SimulaImportacaoMoeda_Seguro.Value, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                              mTaxaOrig := CotacaoValor.Value;
                              Cotacao.Locate('Moeda;Data', VarArrayOf([SimulaImportacaoMoeda_FOB.Value, SimulaImportacaoData_RegistroDeclaracao.Value]), [loCaseInsensitive]);
                              mTaxaDest                := CotacaoValor.Value;
                              mConvertido              := ((SimulaImportacaoSeguro_ME.Value * mTaxaOrig ) / mTaxaDest );
                              SimulaImportacaoFOB_ME.Value := (SimulaImportacaoFOB_ME.Value - mConvertido);
                           End;
                        End;

                        SimulaImportacaoFOB.Value := SimulaImportacaoFOB_ME.Value * SimulaImportacaoTaxa_FOB.Value;
           }
           SimulaImportacao.Post;

           //Janela_Processamento.Close;
      End;

      lStatus.Visible := false;
      Screen.Cursor   := crDefault;

      ShowMessage('DI(s) importada(s) do SISCOMEX!');
end;

procedure TProcesso_SimulacaoDI.SISCOMEX_CICalcFields(DataSet: TDataSet);
Var
    mData:String;
begin
     If (SISCOMEX_CIData.AsString <> '') and (SISCOMEX_CIData.AsString <> '00000000') then begin
        mData := Copy(SISCOMEX_CIDT_DESEMBARACO.Value, 7, 2)+'/'+Copy(SISCOMEX_CIDT_DESEMBARACO.Value, 5, 2)+'/'+Copy(SISCOMEX_CIDT_DESEMBARACO.Value, 1, 4);
        SISCOMEX_CIData.Value := StrtoDate(mData);
     End;
end;

procedure TProcesso_SimulacaoDI.bVerificarClick(Sender: TObject);
Var
     mErros   : Integer;
     mAvisos  : Integer;
     mDI      : String;
     mTexto   : String;
     mCodigo  : String;
     mPosIni  : Integer;
     mPosFim  : Integer;
     mFOBme   : Currency;
     mFreteme : Currency;
     mSegurome: Currency;
     mPais    : String;
     mPIS     : Real;
     mCOFINS  : Real;
begin
      Screen.Cursor := crSQLWait;

      mErros  := 0;
      mAvisos := 0;
      cErros.Clear;
      cAvisos.Clear;
      
      With Dados do Begin
           mDI := SISCOMEX_DINR_DECLARACAO_IMP.Value;

           If SISCOMEX_ADICAOQT_MERC_UN_COMERC.Value <= 0 then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Quantidade inválida. ' );
           End;
           If SISCOMEX_ValoresVL_TOTAL_MLE_MN.Value  <= 0 then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Valor do FOB inválido. ' );
           End;
           If Trim(SISCOMEX_DINR_DECLARACAO_IMP.Value) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta o número da DI.'+SISCOMEX_DINR_DECLARACAO_IMP.Value );
           End;
           If EmpresasProcesso_Automatico.Value = False then begin
              If Trim(cProcesso.Text) = '' then begin
                 Inc(mErros);
                 cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta o número do processo.' );
              End;
           End;
           If Trim(cTipoMercadoria.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar o tipo da mercadoria.' );
           End;
           If Trim(cModalidade.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta a modalidade de importação.' );
           End;
           If DatetoStr(SISCOMEX_DIData.Value) = '  /  /    ' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta a data de registro da DI. '+DatetoStr(SISCOMEX_DIData.Value) );
           End;
           If DatetoStr(SISCOMEX_CIData.Value) = '  /  /    ' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta a data de desembaraço da DI. '+DatetoStr(SISCOMEX_CIData.Value) );
           End;
           If SISCOMEX_ValoresVL_FRETE_TNAC_MNEG.Value <= 0 then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Valor do Frete inválido.' );
           End;
           If SISCOMEX_ValoresVL_TOTAL_II_A_REC.Value <= 0 then begin
              Inc(mAvisos);
              cAvisos.Lines.Add(FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Valor do imposto de importação inválido.');
           End;
           If Trim(cEstado.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar o estado de origem da importação.' );
           End;
           If Trim(cUFDesembaraco.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar a UF de desembaraço da importação.' );
           End;
           If Trim(cIncentivo.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar o incentivo fiscal da importação.' );
           End;
           If Trim(cOrigem.Text) = '' then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta informar a origem da mercadoria.' );
           End;

           // Verifica se existe mais de uma moeda negociada para o FOB.
           mMoedas       := 1;
           mCodigoMoedas := SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsString;

           SISCOMEX_AdicaoImp.First;
           While (SISCOMEX_AdicaoImpNR_DECLARACAO_IMP.Value = mDI) and (not SISCOMEX_AdicaoImp.Eof) do begin
                 If SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsString <> mCodigoMoedas then begin
                    mCodigoMoedas := SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsString;
                    Inc(mMoedas);
                 End;
                 SISCOMEX_AdicaoImp.Next;
           End;

           // Verificando o codigo do pais que vem do siscomex se existe na tabela de paises.
           mPais := SISCOMEX_AdicaoImpCD_PAIS_AQUIS_MERC.AsString+DigitoPais(SISCOMEX_AdicaoImpCD_PAIS_AQUIS_MERC.AsString);
           If Paises.Locate('Codigo', mPais, [loCaseInsensitive] ) = false then begin
              Inc(mErros);
              cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Código do país não encontrado na tabela de países do sistema.' );
           End;

           // Verificando a cotação da moeda do frete.
           If SISCOMEX_ValoresCD_MOEDA_FRETE.Value <> '000' then begin
              Moedas.Locate('Codigo', SISCOMEX_ValoresCD_MOEDA_FRETE.AsInteger, [loCaseInsensitive]);
              If Cotacao.Locate('Moeda;Data', VarArrayOf([SISCOMEX_ValoresCD_MOEDA_FRETE.AsInteger, SISCOMEX_DIData.Value]), [loCaseInsensitive]) = False then begin
                 Inc(mErros);
                 cErros.Lines.Add(FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda do FRETE:'+ SISCOMEX_ValoresCD_MOEDA_FRETE.Value+' - '+ MoedasNome.Value+ ' não encontrada.' );
              End;
           End;

           // Verificando a cotação da moeda do seguro.
           If SISCOMEX_ValoresCD_MOEDA_SEGURO.Value <> '000' then begin
              Moedas.Locate('Codigo', SISCOMEX_ValoresCD_MOEDA_SEGURO.AsInteger, [loCaseInsensitive]);
              If Cotacao.Locate('Moeda;Data', VarArrayOf([SISCOMEX_ValoresCD_MOEDA_SEGURO.AsInteger, SISCOMEX_DIData.Value]), [loCaseInsensitive]) = False then begin
                 Inc(mErros);
                 cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda do SEGURO:'+ SISCOMEX_ValoresCD_MOEDA_SEGURO.Value+' - '+ MoedasNome.Value+ ' não encontrada.' );
              End;
           End;

           // Verificando a cotação da moeda padrão de conversão da configuração do sistema.
           If (Dados.ConfiguracaoMoeda_Importacao.Value <> 0) then begin
              Moedas.Locate('Codigo', Dados.ConfiguracaoMoeda_Importacao.Value, [loCaseInsensitive]);
              If Cotacao.Locate('Moeda;Data', VarArrayOf([Dados.ConfiguracaoMoeda_Importacao.Value, SISCOMEX_DIData.Value]), [loCaseInsensitive]) = False then begin
                 Inc(mErros);
                 cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda padrão de conversão :'+ Dados.ConfiguracaoMoeda_Importacao.AsString+' - '+ MoedasNome.Value+ ' não encontrada.' );
              End;
           End;

           // Verificando se o ramo de atividade padrão para fornecedores internacionais esta informado.
           If Dados.ConfiguracaoRamo_Atividade.AsInteger = 0 then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', É preceiso informar o ramo de atividade padrão para fornecedores novos em "Configurações / Parâmetros / Processo"' );
           End;

           // Verificando a cotação da moeda da valoração.
           If SISCOMEX_AcrescimoValoracao.Locate('NR_DECLARACAO_IMP;NR_OP_IMP', VarArrayOf([SISCOMEX_AdicaoNR_DECLARACAO_IMP.Value, SISCOMEX_AdicaoNR_OP_IMP.Value]), [loCaseInsensitive] ) = True then begin
              If SISCOMEX_AcrescimoValoracaoCD_MD_NEGOC_ACRES.Value <> '000' then begin
                 While (SISCOMEX_AcrescimoValoracaoNR_DECLARACAO_IMP.Value = SISCOMEX_AdicaoNR_DECLARACAO_IMP.Value) and (not SISCOMEX_AcrescimoValoracao.Eof) do begin
                       Moedas.Locate('Codigo', SISCOMEX_AcrescimoValoracaoCD_MD_NEGOC_ACRES.Value, [loCaseInsensitive]);
                       If SISCOMEX_AcrescimoValoracaoCD_MD_NEGOC_ACRES.Value <> '790' then begin
                          If Cotacao.Locate('Moeda;Data', VarArrayOf([SISCOMEX_AcrescimoValoracaoCD_MD_NEGOC_ACRES.Value, SISCOMEX_DIData.Value]), [loCaseInsensitive]) = False then begin
                             Inc(mErros);
                             cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda da VALORAÇÃO:'+ SISCOMEX_AcrescimoValoracaoCD_MD_NEGOC_ACRES.Value+' - '+ MoedasNome.Value+ ' não encontrada.' );
                          End;
                       End;    
                       SISCOMEX_AcrescimoValoracao.Next;
                 End;
              End;
           End;
           
           // Verificando quantas moedas existem e a cotação do FOB.
           SISCOMEX_AdicaoImp.Locate('NR_DECLARACAO_IMP', mDI, [loCaseInsensitive]);
           If SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.Value <> '000' then begin
              Moedas.Locate('Codigo', SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsInteger, [loCaseInsensitive]);
              If Cotacao.Locate('Moeda;Data', VarArrayOf([SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsInteger, SISCOMEX_DIData.Value]), [loCaseInsensitive]) = False then begin
                 Inc(mErros);
                 cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda do FOB:'+ SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.Value+' - '+ MoedasNome.Value+ ' não encontrada.' );
              End;
           End;

           // Verificando os pesos bruto e liquido da DI.
           If SISCOMEX_DIPB_CARGA.Value = 0 then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta o Peso Bruto da mercadoria na DI.' );
           End;
           If SISCOMEX_DIPL_CARGA.Value = 0 then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Falta o Peso Líquido da mercadoria na DI.' );
           End;
           If SISCOMEX_ValoresVL_TOTAL_SEG_MN.Value = 0  then begin
              Inc(mAvisos);
              cAvisos.Lines.Add(FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Náo tem valor de seguro.');
           End;
           If SISCOMEX_DICD_VIA_TRANSP_CARG.Value   = '' then begin
              Inc(mAvisos);
              cAvisos.Lines.Add( FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Faltou a via de transporte.');
           End;

           // Verificando se a cotação da moeda estrangeira esta cadastrada corretamente.
           If Cotacao.Locate('Moeda;Data', VarArrayOf([SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.Value, SISCOMEX_DIData.Value]), [loCaseInsensitive]) = True then begin
              // Totalizando FOB / FRETE / SEGURO.
              SISCOMEX_AdicaoImp.First;
              mFOBme    := 0;
              mFreteme  := 0;
              mSegurome := 0;
              While (SISCOMEX_AdicaoImpNR_DECLARACAO_IMP.Value = mDI) and (not SISCOMEX_AdicaoImp.Eof) do begin
                    mFOBme    := mFOBme    + SISCOMEX_AdicaoImpVL_MERC_EMB_DOLAR.Value;
                    mFreteme  := mFreteme  + SISCOMEX_AdicaoImpVL_FRETE_MERC_MNEG.Value;
                    mSegurome := mSegurome + SISCOMEX_AdicaoImpVL_SEG_MERC_DOLAR.Value;
                    SISCOMEX_AdicaoImp.Next;
              End;
              SISCOMEX_AdicaoImp.Locate('NR_DECLARACAO_IMP', mDI, [loCaseInsensitive]);

              // Cotação do FOB.
              Cotacao.Locate('Moeda;Data', VarArrayOf([SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsInteger, SISCOMEX_DIData.Value]), [loCaseInsensitive]);
              If RoundTo(SISCOMEX_ValoresVL_TOTAL_MLE_MN.Value / CotacaoValor.Value, -4) <> mFOBme then begin
                 Inc(mAvisos);
                 Moedas.Locate('Codigo', SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsInteger, [loCaseInsensitive]);
                 cAvisos.Lines.Add( FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda do FOB:'+ SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.Value+' - '+ MoedasNome.Value+ ' pode ter sido cadastrada incorretamente, verifique!' );
              end;

              // Contação do Frete.
              Cotacao.Locate('Moeda;Data', VarArrayOf([SISCOMEX_ValoresCD_MOEDA_FRETE.AsInteger, SISCOMEX_DIData.Value]), [loCaseInsensitive]);
              If RoundTo(SISCOMEX_ValoresVL_TOTAL_FRETE_MN.Value / CotacaoValor.Value, -4) <> mFreteme then begin
                 Moedas.Locate('Codigo', SISCOMEX_ValoresCD_MOEDA_FRETE.AsInteger, [loCaseInsensitive]);
                 Inc(mAvisos);
                 cAvisos.Lines.Add( FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda do Frete:'+ SISCOMEX_ValoresCD_MOEDA_FRETE.Value +' - '+ MoedasNome.Value+ ' pode ter sido cadastrada incorretamente, verifique!' );
              end;

              // Cotação do Seguro.
              Cotacao.Locate('Moeda;Data', VarArrayOf([SISCOMEX_ValoresCD_MOEDA_SEGURO.AsInteger, SISCOMEX_DIData.Value]), [loCaseInsensitive]);
              If RoundTo(SISCOMEX_ValoresVL_TOTAL_SEG_MN.Value / CotacaoValor.Value, -4) <> mSegurome then begin
                 Moedas.Locate('Codigo', SISCOMEX_ValoresCD_MOEDA_SEGURO.AsInteger, [loCaseInsensitive]);
                 Inc(mAvisos);
                 cAvisos.Lines.Add( FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Cotação da Moeda do Seguro:'+ SISCOMEX_ValoresCD_MOEDA_SEGURO.Value +' - '+ MoedasNome.Value+ ' pode ter sido cadastrada incorretamente, verifique!' );
              end;

              // Verificando alíquota do PIS e do COFINS.
              mPIS    := 0;
              mCOFINS := 0;
              
              SISCOMEX_Adicao.First;
              While (SISCOMEX_AdicaoNR_DECLARACAO_IMP.Value = mDI) and not (SISCOMEX_Adicao.Eof) do begin
                    If SISCOMEX_AdicaoTrib.Locate('NR_DECLARACAO_IMP;NR_OP_IMP;CD_RECEITA_IMPOSTO', VarArrayOf([mDI,SISCOMEX_AdicaoNR_OP_IMP.Value,'0005']), [loCaseInsensitive] ) = True then begin
                       mPIS := SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL.AsFloat;
                    End;
                    If SISCOMEX_AdicaoTrib.Locate('NR_DECLARACAO_IMP;NR_OP_IMP;CD_RECEITA_IMPOSTO', VarArrayOf([mDI,SISCOMEX_AdicaoNR_OP_IMP.Value,'0006']), [loCaseInsensitive] ) = True then begin
                       mCOFINS := SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL.AsFloat;
                    End;
                    If (mPIS = Dados.ConfiguracaoPIS_AliquotaBasica.Value) and (mCOFINS <> Dados.ConfiguracaoCOFINS_AliquotaBasica.Value) then begin
                       Inc(mAvisos);
                       cAvisos.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Divergência entre alíquotas de PIS e COFINS: PIS = '+ FormatFloat('##0.00', mPIS)+' COFINS = '+FormatFloat('##0.00', mCOFINS) );
                    End;
                    If (mPIS <> Dados.ConfiguracaoPIS_AliquotaBasica.Value) and (mCOFINS = Dados.ConfiguracaoCOFINS_AliquotaBasica.Value) then begin
                       Inc(mAvisos);
                       cAvisos.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Divergência entre alíquotas de PIS e COFINS: PIS = '+ FormatFloat('##0.00', mPIS)+' COFINS = '+FormatFloat('##0.00', mCOFINS) );
                    End;
                    SISCOMEX_Adicao.Next;
              End;

              // Verifica se pis e cofins entrada/saída estão informados.
              If (cPISNota.Value > 0) and (cPISNotaSaida.Value <= 0) then begin
                 Inc(mErros);
                 cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Alíquota do PIS da Entrada foi informada e da Saída não.: Entrada: '+ cPISNota.Text+'   Saída: '+ cPISNotaSaida.Text );
              end;
              If (cCOFINSNota.Value > 0) and (cCOFINSNotaSaida.Value <= 0) then begin
                 Inc(mErros);
                 cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Alíquota da COFINS da Entrada foi informada e da Saída não.: Entrada: '+ cCOFINSNota.Text+'   Saída: '+ cCOFINSNotaSaida.Text );
              end;
           End;
           
           // Verificando se existe mais de uma invoice para o processo.
           If Trim(cProcesso.Text) <> '' then begin
              Invoice.SQL.Clear;
              Invoice.SQL.Add('SELECT * FROM Invoice WHERE(Processo = :pProcesso)');
              Invoice.ParamByName('pProcesso').AsString := cProcesso.Text;
              Invoice.Open;
              If Invoice.RecordCount > 1 then begin
                 Inc(mAvisos);
                 cAvisos.Lines.Add( FormatFloat('000: ',mAvisos)+FormatMaskText('99/9999999-9;0',mDI)+', Invoice cadastrada:'+ cProcesso.Text +' Existe '+InttoStr(Invoice.RecordCount)+' fatura(s) cadastrada(s) para este processo, invoice não será cadastrada.' );
              End;
              Invoice.Close;
           End;

           // Aliquotas de PIS/COFINS majoradas.
           If (cPISNota.Value > 0) and (cPISMajorado.Value <= 0) then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Se informada alíquota no campo "PIS Nota" deve ser informado alíquota no campo "Aliq.Majorada PIS".' );
           end;
           If (cCOFINSNota.Value > 0) and (cCOFINSMajorado.Value <= 0) then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Se informada alíquota no campo "COFINS Nota" deve ser informado alíquota no campo "Aliq.Majorada COFINS".' );
           end;
           If (cPISNota.Value > 0) and (cCOFINSNota.Value <= 0) then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Se informada alíquota no campo "PIS Nota" deve ser informado alíquota no campo "COFINS Nota".' );
           end;
           If (cPISNotaSaida.Value > 0) and (cCOFINSNotaSaida.Value <= 0) then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Se informada alíquota no campo "PIS NF Saída" deve ser informado alíquota no campo "COFINS NF Saída".' );
           end;
           If (cCOFINSNota.Value > 0) and (cPISNota.Value <= 0) then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Se informada alíquota no campo "COFINS Nota" deve ser informado alíquota no campo "PIS Nota".' );
           end;
           If (cCOFINSNotaSaida.Value > 0) and (cPISNotaSaida.Value <= 0) then begin
              Inc(mErros);
              cErros.Lines.Add( FormatFloat('000: ',mErros)+FormatMaskText('99/9999999-9;0',mDI)+', Se informada alíquota no campo "COFINS NF Saída" deve ser informado alíquota no campo "PIS NF Saída".' );
           end;

           Pasta.Pages[3].Caption    := 'Lista de &Erros ('+ InttoStr(mErros)+')';
           Pasta.Pages[4].Caption    := 'Lista de &Avisos ('+ InttoStr(mAvisos)+')';
           Pasta.Pages[3].TabVisible := mErros <> 0;
           Pasta.Pages[4].TabVisible := mAvisos <> 0;
           bImportar.Enabled         := mErros = 0;

           If mErros <> 0 then begin
              Pasta.ActivePage := TabSheet2;
              Navega.Enabled := False;
           End else begin
              If mAvisos <> 0 then begin
                 Pasta.ActivePage := TabSheet4;
                 Navega.Enabled := False;
              End;
           End;
      End;

      Screen.Cursor := crDefault;
end;

procedure TProcesso_SimulacaoDI.bCotacaoClick(Sender: TObject);
begin
        Cadastro_Cotacao := TCadastro_Cotacao.Create(Self);
        Cadastro_Cotacao.Caption := Caption;
        Cadastro_Cotacao.ShowModal;

        Dados.Moedas.SQL.Clear;
        Dados.Moedas.SQL.Add('SELECT * FROM Moedas');
        Dados.Moedas.Open;

        Dados.Cotacao.SQL.Clear;
        Dados.Cotacao.SQL.Add('SELECT * FROM Cotacao');
        Dados.Cotacao.Open;
end;

procedure TProcesso_SimulacaoDI.SISCOMEX_ADICAOTX_DESC_DET_MERCGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
       If not Sender.IsNull then begin
          Text := RemoveCaracter(#13,'',Sender.AsString);
          Text := RemoveCaracter(#12,'',Text);
          Text := RemoveCaracter(#10,'',Text);
       End;
end;

procedure TProcesso_SimulacaoDI.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      // Banco de dados SQL Server (IMPORTA).
      With Dados do Begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.AsString, [loCaseInsensitive]);

           cEstado.KeyValue        := EmpresasEstado.AsString;
           cUFDesembaraco.KeyValue := EmpresasEstado.AsString;

           Cotacao.SQL.Clear;
           Cotacao.SQL.Add('SELECT * FROM Cotacao');
           Cotacao.Open;

           Moedas.SQL.Clear;
           Moedas.SQL.Add('SELECT * FROM Moedas');
           Moedas.Open;

           TipoItem.SQL.Clear;
           TipoItem.SQL.Add('SELECT * FROM TipoItem');
           TipoItem.Open;

           {
           SimulaImportacao.SQL.Clear;
           SimulaImportacao.SQL.Add('SELECT * FROM SimulaImportacao');
           SimulaImportacao.Open;
           }
           Incoterms.SQL.Clear;
           Incoterms.SQL.Add('SELECT * FROM Incoterms');
           Incoterms.Open;

           Paises.Open;

           tUFDesemb.SQL.Clear;
           tUFDesemb.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
           tUFDesemb.Open;

           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Descricao');
           TiposProcesso.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
           IncentivosFiscais.Open;

           LocalDesembaraco.SQL.Clear;
           LocalDesembaraco.SQL.Add('SELECT * FROM LocalDesembaraco');
           LocalDesembaraco.Open;

           CSTTabelaA.SQL.Clear;
           CSTTabelaA.SQL.Add('SELECT * FROM CSTTabelaA ORDER BY Codigo');
           CSTTabelaA.Open;

           Configuracao.Open;

           Application.ProcessMessages;

           // Banco de dados: CONS_IMP.MDB .
           SISCOMEX.Connected         := False;
           SISCOMEX_TABELAS.Connected := False;

           SISCOMEX.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;'+
                                        'User ID=Admin;'+
                                        'Data Source='+ Dados.ConfiguracaoPasta_SISCOMEX.Value+'\CONS_IMP.MDB;' +
                                        'Mode=ReadWrite;'+
                                        'Persist Security Info=False;'+
                                        'Jet OLEDB:System database="";'+
                                        'Jet OLEDB:Registry Path="";'+
                                        'Jet OLEDB:Database Password="";'+
                                        'Jet OLEDB:Engine Type=3;'+
                                        'Jet OLEDB:Database Locking Mode=0;'+
                                        'Jet OLEDB:Global Partial Bulk Ops=2;'+
                                        'Jet OLEDB:Global Bulk Transactions=1;'+
                                        'Jet OLEDB:New Database Password="";'+
                                        'Jet OLEDB:Create System Database=False;'+
                                        'Jet OLEDB:Encrypt Database=False;'+
                                        'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
                                        'Jet OLEDB:Compact Without Replica Repair=False;'+
                                        'Jet OLEDB:SFP=False';
           SISCOMEX.Connected := True;
           SISCOMEX_CI.Open;
           SISCOMEX_Texto.Open;
           SISCOMEX_Adicao.Open;
           SISCOMEX_Valores.Open;
           SISCOMEX_Tributos.Open;
           SISCOMEX_AdicaoImp.Open;
           SISCOMEX_AdicaoTrib.Open;
           SISCOMEX_Embalagem.Open;
           SISCOMEX_AcrescimoValoracao.Open;
           SISCOMEX_Doc.Open;

           // Relaciona os CNPJ's constantes no arquivo COMSIMP.MDB. quando o usuário for "ADMINISTRADOR".
           mAtivo               := false;
           SISCOMEX_DI.Filtered := false;
           SISCOMEX_DI.Filter   := '';
           mAtivo               := true;

           // Filtra a tabela de DI's pelo CNPJ da empresa.
           SISCOMEX_DI.Filter   := 'NR_IMPORTADOR = '+EmpresasCNPJ.Value;
           SISCOMEX_DI.Filtered := True;
           SISCOMEX_DI.Open;

           //Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
           Application.ProcessMessages;

           // Banco de dados: tabsisco.mdb.
           SISCOMEX_TABELAS.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;'+
                                                'User ID=Admin;'+
                                                'Data Source='+ Dados.ConfiguracaoPasta_SISCOMEX.Value+'\TABSISCO.MDB;'+
                                                'Mode=ReadWrite;'+
                                                'Persist Security Info=False;'+
                                                'Jet OLEDB:System database="";'+
                                                'Jet OLEDB:Registry Path="";'+
                                                'Jet OLEDB:Database Password="";'+
                                                'Jet OLEDB:Engine Type=3;'+
                                                'Jet OLEDB:Database Locking Mode=0;'+
                                                'Jet OLEDB:Global Partial Bulk Ops=2;'+
                                                'Jet OLEDB:Global Bulk Transactions=1;'+
                                                'Jet OLEDB:New Database Password="";'+
                                                'Jet OLEDB:Create System Database=False;'+
                                                'Jet OLEDB:Encrypt Database=False;'+
                                                'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
                                                'Jet OLEDB:Compact Without Replica Repair=False;'+
                                                'Jet OLEDB:SFP=False';
           SISCOMEX_TABELAS.Connected := True;
           SISCOMEX_ViaTransporte.Open;
           SISCOMEX_NCM.Open;

           Pasta.ActivePageIndex     := 0;
           Pasta.Pages[3].TabVisible := False;
           Pasta.Pages[4].TabVisible := False;
           Pasta.Pages[0].Caption    := '&Declarações ('+ InttoStr(SISCOMEX_DI.RecordCount)+')';
           cPeso.ItemIndex := Dados.ConfiguracaoAdicao_PesoLiquido.Value -1;

           bVerificar.Enabled := SISCOMEX_DI.RecordCount > 0;
           bImportar.Enabled  := false;
      End;

      //Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
      Application.ProcessMessages;

      While not Dados.SimulaImportacao.Eof do begin
            cProcesso.Items.Add(Dados.SimulaImportacaoProcesso.AsString);
            Dados.SimulaImportacao.Next;
      End;
      Dados.SimulaImportacao.First;

      //Janela_Processamento.Close;
      Screen.Cursor := crDefault;
end;

procedure TProcesso_SimulacaoDI.cProcessoChange(Sender: TObject);
begin
        bImportar.Enabled := false;
end;

procedure TProcesso_SimulacaoDI.cModalidadeChange(Sender: TObject);
begin
        bImportar.Enabled := false;
end;

procedure TProcesso_SimulacaoDI.NavegaClick(Sender: TObject;Button: TNavigateBtn);
begin
      Pasta.Pages[1].Caption := '&Itens da Adição('+ InttoStr(SISCOMEX_Adicao.RecordCount)+')';
      SISCOMEX_AdicaoImp.Locate('NR_DECLARACAO_IMP', SISCOMEX_DINR_DECLARACAO_IMP.Value, [loCaseInsensitive]);
      Grade.UnselectAll;
      Grade.ToggleRowSelection;
end;

procedure TProcesso_SimulacaoDI.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Screen.Cursor := crSQLWait;

      Dados.Configuracao.Close;
      SISCOMEX.Connected         := False;
      SISCOMEX_TABELAS.Connected := False;
      //FecharTabelas(Dados, nil, nil, nil);

      Screen.Cursor := crDefault;

      Processo_SimulacaoDI.Release;
      Processo_SimulacaoDI := nil;
end;

procedure TProcesso_SimulacaoDI.PastaChange(Sender: TObject);
begin
     Navega.Enabled := Pasta.ActivePageIndex = 0;
end;

procedure TProcesso_SimulacaoDI.cProcessoExit(Sender: TObject);
begin
        cProcesso.Text := Trim(cProcesso.Text);
end;

procedure TProcesso_SimulacaoDI.SISCOMEX_DIAfterScroll(DataSet: TDataSet);
Var
    mFornecedor: String;
    i, f       : Integer;
    mMoeda     : String;
    mMoedaSeg  : Boolean;
    mMoedaFre  : Boolean;
    mSoundex   : String;
begin
      If mAtivo = true then begin
         i         := 0;
         mMoedaSeg := False;
         mMoedaFre := False;

         With Dados do begin
              SISCOMEX_Adicao.Filtered := false;
              SISCOMEX_Adicao.Filter   := 'NR_DECLARACAO_IMP = '+SISCOMEX_DINR_DECLARACAO_IMP.AsString;
              SISCOMEX_Adicao.Filtered := true;
              SISCOMEX_AdicaoImp.First;

              // Apurando as taxa de câmbio utilizadas e cadastrando na tabela "Cotacao".
              cTaxas.Lines.Clear;

              While not SISCOMEX_AdicaoImp.Eof do begin
                    If SISCOMEX_AdicaoImpNR_DECLARACAO_IMP.AsString = SISCOMEX_DINR_DECLARACAO_IMP.AsString then begin
                       If mMoeda <> SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsString then begin
                          mMoeda := SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA.AsString;
                          Moedas.Locate('Codigo', mMoeda, [loCaseInsensitive]);
                          cTaxas.Lines.Add(Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value)))+ PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat('#,##0.00000', (SISCOMEX_AdicaoImpVL_MERC_VENDA_MN.Value/SISCOMEX_AdicaoImpVL_MERC_COND_VENDA.Value))+'(FOB)' );

                          If Cotacao.Locate('Moeda;Data',VarArrayOf([StrtoInt(mMoeda),SISCOMEX_DIData.Value]), [loCaseInsensitive]) = False then
                             Cotacao.Append
                          else
                             Cotacao.Edit;

                          CotacaoMoeda.Value := StrtoInt(mMoeda);
                          CotacaoData.Value  := SISCOMEX_DIData.Value;
                          CotacaoValor.Value := (SISCOMEX_AdicaoImpVL_MERC_VENDA_MN.Value/SISCOMEX_AdicaoImpVL_MERC_COND_VENDA.Value);
                          Cotacao.Post;
                       End;
                       mMoedaFre := mMoeda = SISCOMEX_ValoresCD_MOEDA_FRETE.Value;
                       mMoedaSeg := mMoeda = SISCOMEX_ValoresCD_MOEDA_SEGURO.Value;
                    End;

                    SISCOMEX_AdicaoImp.Next;
              End;

              // Apurando as taxa de "Frete" utilizadas e cadastrando na tabela "Cotacao".
              If (mMoedaFre = False) and (SISCOMEX_ValoresVL_TOTAL_FRETE_MN.Value > 0) then begin
                 Moedas.Locate('Codigo', SISCOMEX_ValoresCD_MOEDA_FRETE.AsInteger, [loCaseInsensitive]);
                 cTaxas.Lines.Add(Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value)))+ PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat('#,##0.00000', (SISCOMEX_ValoresVL_TOTAL_FRETE_MN.Value/SISCOMEX_ValoresVL_FRETE_TNAC_MNEG.Value))+'(FRETE)' );

                 If Cotacao.Locate('Moeda;Data',VarArrayOf([SISCOMEX_ValoresCD_MOEDA_FRETE.AsInteger,SISCOMEX_DIData.Value]), [loCaseInsensitive]) = False then
                    Cotacao.Append
                 else
                    Cotacao.Edit;

                 CotacaoMoeda.Value := StrtoInt(SISCOMEX_ValoresCD_MOEDA_FRETE.Value);
                 CotacaoData.Value  := SISCOMEX_DIData.Value;
                 CotacaoValor.Value := (SISCOMEX_ValoresVL_TOTAL_FRETE_MN.Value/SISCOMEX_ValoresVL_FRETE_TNAC_MNEG.Value);
                 Cotacao.Post;
              End;

              // Apurando as taxa do "Seguro" utilizadas e cadastrando na tabela "Cotacao".
              If (mMoedaSeg = False) and (SISCOMEX_ValoresVL_TOTAL_SEG_MN.Value > 0) then begin
                 Moedas.Locate('Codigo', SISCOMEX_ValoresCD_MOEDA_SEGURO.AsInteger, [loCaseInsensitive]);
                 cTaxas.Lines.Add(Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value)))+ PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat('#,##0.00000', (SISCOMEX_ValoresVL_TOTAL_SEG_MN.Value/SISCOMEX_ValoresVL_TOT_SEGURO_MNEG.Value))+'(SEGURO)' );

                 If Cotacao.Locate('Moeda;Data',VarArrayOf([SISCOMEX_ValoresCD_MOEDA_SEGURO.AsInteger,SISCOMEX_DIData.Value]), [loCaseInsensitive]) = False then
                    Cotacao.Append
                 else
                    Cotacao.Edit;

                 CotacaoMoeda.Value := StrtoInt(SISCOMEX_ValoresCD_MOEDA_SEGURO.Value);
                 CotacaoData.Value  := SISCOMEX_DIData.Value;
                 CotacaoValor.Value := (SISCOMEX_ValoresVL_TOTAL_SEG_MN.Value/SISCOMEX_ValoresVL_TOT_SEGURO_MNEG.Value);
                 Cotacao.Post;
              End;

              // Cadastrando o real "Valor fixo 1 para 1.
              Moedas.Locate('Codigo', 790, [loCaseInsensitive]);
              cTaxas.Lines.Add(Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value)))+ PadR(MoedasSimbolo.AsString,3)+' '+ FormatFloat('#,##0.00000', 1) );
              If Cotacao.Locate('Moeda;Data',VarArrayOf([790,SISCOMEX_DIData.Value]), [loCaseInsensitive]) = False then begin
                 Cotacao.Append;
                         CotacaoMoeda.Value := 790;
                         CotacaoData.Value  := SISCOMEX_DIData.Value;
                         CotacaoValor.Value := 1;
                 Cotacao.Post;
              End;

              // Verificando as moedas do Ad Valorem.
              SISCOMEX_AcrescimoValoracao.First;
              mMoeda := '';
              While not SISCOMEX_AcrescimoValoracao.Eof do begin
                    If SISCOMEX_AcrescimoValoracaoNR_DECLARACAO_IMP.AsString = SISCOMEX_DINR_DECLARACAO_IMP.AsString then begin
                       If mMoeda <> SISCOMEX_AcrescimoValoracaoCD_MD_NEGOC_ACRES.AsString then begin
                          mMoeda := SISCOMEX_AcrescimoValoracaoCD_MD_NEGOC_ACRES.AsString;
                          Moedas.Locate('Codigo', mMoeda, [loCaseInsensitive]);

                          //If Pos('(AD.VAL)', cTaxas.Lines.Text) = 0 then begin
                             cTaxas.Lines.Add(Trim(MoedasNome.Value)+Replicate('.', 20-Length(Trim(MoedasNome.Value)))+ PadR(MoedasSimbolo.ASString,3)+' '+ FormatFloat('#,##0.00000', (SISCOMEX_AcrescimoValoracaoVL_ACRESCIMO_MN.Value/SISCOMEX_AcrescimoValoracaoVL_ACRESCIMO_MNEG.Value))+'(AD.VAL)' );
                             If Cotacao.Locate('Moeda;Data',VarArrayOf([StrtoInt(mMoeda),SISCOMEX_DIData.Value]), [loCaseInsensitive]) = False then
                                Cotacao.Append
                             else
                                Cotacao.Edit;

                             CotacaoMoeda.Value := StrtoInt(mMoeda);
                             CotacaoData.Value  := SISCOMEX_DIData.Value;
                             CotacaoValor.Value := (SISCOMEX_AcrescimoValoracaoVL_ACRESCIMO_MN.Value/SISCOMEX_AcrescimoValoracaoVL_ACRESCIMO_MNEG.Value);
                             Cotacao.Post;
                          //End;
                       End;
                    End;
                    SISCOMEX_AcrescimoValoracao.Next;
              End;

              // Relaciona todos os Fornecedores das adições com os do cadastro de fornecedores.
              SISCOMEX_AdicaoImp.IndexFieldNames := 'NM_FORN_ESTR';
              SISCOMEX_AdicaoImp.Filter          := 'NR_DECLARACAO_IMP = '+SISCOMEX_DINR_DECLARACAO_IMP.AsString;
              SISCOMEX_AdicaoImp.Filtered        := True;
              SISCOMEX_AdicaoImp.First;

              mFornecedor := Trim(Copy(SISCOMEX_AdicaoImpNM_FORN_ESTR.Value, 1, 60));

              SISCOMEX_AdicaoImp.Locate('NR_DECLARACAO_IMP', SISCOMEX_DINR_DECLARACAO_IMP.Value, [loCaseInsensitive]);
              If SimulaImportacao.Locate('DI', SISCOMEX_DINR_DECLARACAO_IMP.Value, [loCaseInsensitive]) = true then begin
                 {
                 cProcesso.Text           := SimulaImportacaoProcesso.Value;
                 cModalidade.KeyValue     := SimulaImportacaoModalidade_Importacao.AsInteger;
                 cIncentivo.KeyValue      := SimulaImportacaoIncentivo_Fiscal.Text;
                 cTipoMercadoria.KeyValue := SimulaImportacaoTipo_Mercadoria.AsInteger;
                 cUFDesembaraco.KeyValue  := SimulaImportacaoUF_Desembaraco.AsString;
                 cProcessoMestre.KeyValue := SimulaImportacaoProcesso_Mestre.AsString;
                 cProcesso.Enabled        := False;
                 cModalidade.Enabled      := False;
                 cDA.Checked              := SimulaImportacaoDA.Value;
                 cEntreposto.Checked      := SimulaImportacaoEntreposto.Value;
                 Fornecedores.Locate('Codigo', SimulaImportacaoFornecedor.Value, [loCaseInsensitive]);
                 cExportador.KeyValue     := SimulaImportacaoFornecedor.AsInteger;

                 corigem.KeyValue         := SimulaImportacaoOrigem_Mercadoria.AsInteger;
                 cValoracao.Checked       := SimulaImportacaoRemover_Valoracao.AsBoolean;
                 cSuspensao.Checked       := SimulaImportacaoSuspensao_Impostos.AsBoolean;
                 cReducaoPIS.Value        := SimulaImportacaoReducao_PIS.Value;
                 cReducaoCOFINS.Value     := SimulaImportacaoReducao_COFINS.Value;
                 cPISNota.Value           := SimulaImportacaoPIS_NFEntrada.Value;
                 cCOFINSNota.Value        := SimulaImportacaoCOFINS_NFEntrada.Value;
                 cPISNotaSaida.Value      := SimulaImportacaoPIS_NFESaida.Value;
                 cCOFINSNotaSaida.Value   := SimulaImportacaoCOFINS_NFESaida.Value;
                 cPISMajorado.Value       := SimulaImportacaoPIS_Majorada.Value;
                 cCOFINSMajorado.Value    := SimulaImportacaoCOFINS_Majorada.Value;
                 }
              end else begin
                 cProcesso.Text := '';

                 If SISCOMEX_DIIN_OPERACAO_FUNDAP.AsBoolean = True then
                    cIncentivo.KeyValue := 'FUNDAP'
                 else
                    cIncentivo.KeyValue := Trim(EmpresasIncentivo_Fiscal.AsString);

                 cProcesso.Enabled   := not EmpresasProcesso_Automatico.Value;
                 cModalidade.Enabled := True;
              End;

              // Carragando os itens para a caixa de seleção do anti-dumping.
              cDumping.Items.Clear;
              While not SISCOMEX_Adicao.Eof do begin
                    cDumping.Items.Add(SISCOMEX_AdicaoNR_OP_IMP.AsString+'/'+PoeZero(4, SISCOMEX_AdicaoNR_SEQ_DETALHE.AsInteger)+ ': '+SISCOMEX_AdicaoTX_DESC_DET_MERC.AsString);
                    SISCOMEX_Adicao.Next;
              End;
         End;

         bImportar.Enabled := False;
         cAvisos.Clear;
         cErros.Clear;
         Pasta.Pages[2].Visible := False;
      End;
end;

procedure TProcesso_SimulacaoDI.SISCOMEX_ADICAOAfterScroll(DataSet: TDataSet);
begin
      Pasta.Pages[1].Caption := '&Itens da Adição('+ InttoStr(SISCOMEX_Adicao.RecordCount)+')';
end;

procedure TProcesso_SimulacaoDI.cEstadoKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TProcesso_SimulacaoDI.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
Var
    curPos   : LongInt;
    gridCoord: TGridCoord;
    mTexto   : String;
    i        : Integer;
    mTam     : Integer;
begin
      with HintInfo do begin
           If HintControl is TDBGrid then
              With TDBGridDescendant(HintControl),gridCoord do begin
                   Application.HideHint;
                   gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                   try
                      curPos := DataLink.ActiveRecord;
                      try
                         DataLink.ActiveRecord := y-1;
                         if not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                            HintStr := '';
                            With Dados do begin
                                 mTexto := Dados.ProdutosDescricao.Value;
                                 mTexto := RemoveCaracter('<{'+Produtos.FieldByName('Codigo').AsString+'}>', '', mTexto);
                                 mTam   := 1;
                                 For i := 1 to Length(mTexto) do begin
                                     HintStr := HintStr + Copy(mTexto, i, 1);
                                     Inc(mTam);
                                     If mTam = 50 then begin
                                        HintStr := HintStr + #13;
                                        mtam    := 1;
                                     End;
                                 End;
                            End;
                         end else
                            HintStr := '\';
                      finally
                         DataLink.ActiveRecord := CurPos
                      end;
                      CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                   except
                      CanShow := False
                   end;
            end;
      end;
end;

procedure TProcesso_SimulacaoDI.BitBtn1Click(Sender: TObject);
var
    i: Integer;
begin
      For i := 0 to cDumping.Count-1 do begin
          cDumping.Checked[i] := true;
      End;
end;

procedure TProcesso_SimulacaoDI.BitBtn2Click(Sender: TObject);
var
    i: Integer;
begin
      For i := 0 to cDumping.Count-1 do begin
          cDumping.Checked[i] := false;
      End;
end;

procedure TProcesso_SimulacaoDI.BitBtn3Click(Sender: TObject);
var
    i      : Integer;
    mAdicao: String;
begin
      mAdicao := InputBox('Nº da Adição','Nº', mAdicao);
      For i := 0 to cDumping.Count-1 do begin
          If Copy(cDumping.Items[i], 1, 3) = PoeZero(3, StrtoInt(mAdicao)) then cDumping.Checked[i] := true;
      End;
end;

procedure TProcesso_SimulacaoDI.mnBuscarClick(Sender: TObject);
begin
     keybd_event(VK_CONTROL,0,KEYEVENTF_EXTENDEDKEY or 0,0);
     keybd_event(ord('C'),0,0,0);
     keybd_event(VK_CONTROL,$45,KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP,0);

     Application.ProcessMessages;
end;

procedure TProcesso_SimulacaoDI.cPISNotaExit(Sender: TObject);
begin
     If cPISNotaSaida.Value <= 0 then begin
        cPISNotaSaida.Value := cPISNota.Value
     End;
end;

procedure TProcesso_SimulacaoDI.cCOFINSNotaExit(Sender: TObject);
begin
     If cCOFINSNotaSaida.Value <= 0 then begin
        cCOFINSNotaSaida.Value := cCOFINSNota.Value
     End;
end;

procedure TProcesso_SimulacaoDI.FormCreate(Sender: TObject);
begin
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.





