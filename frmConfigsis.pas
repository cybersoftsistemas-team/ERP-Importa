unit frmConfigsis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, Mask, DBCtrls, FUNCOES, Vcl.ComCtrls,
  NFe_Util_2G_TLB, RxDBComb, DB, DBAccess, MSAccess, RXDBCtrl, RxLookup, system.UITypes, RxToolEdit, MemDS, Vcl.Samples.Spin, Vcl.Grids, Vcl.DBGrids, vcl.Themes, vcl.Styles;

type
  TConfigSis = class(TForm)
    Panel1: TPanel;
    bSalvar: TButton;
    bSair: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cLog: TDirectoryEdit;
    cIni: TDirectoryEdit;
    cSISCOMEX: TDirectoryEdit;
    cImpressao: TDirectoryEdit;
    GroupBox3: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    TabSheet4: TTabSheet;
    GroupBox5: TGroupBox;
    cLinhasMemo: TDBEdit;
    DBEdit9: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    GroupBox6: TGroupBox;
    StaticText13: TStaticText;
    DBEdit12: TDBEdit;
    StaticText16: TStaticText;
    DBEdit13: TDBEdit;
    StaticText3: TStaticText;
    DBEdit10: TDBEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText14: TStaticText;
    DBEdit11: TDBEdit;
    StaticText17: TStaticText;
    DBEdit14: TDBEdit;
    StaticText18: TStaticText;
    DBCheckBox7: TDBCheckBox;
    StaticText8: TStaticText;
    DBEdit8: TDBEdit;
    StaticText19: TStaticText;
    cExportacao: TDirectoryEdit;
    StaticText21: TStaticText;
    cSintegra: TDirectoryEdit;
    StaticText22: TStaticText;
    cNFe: TDirectoryEdit;
    StaticText20: TStaticText;
    cSPEDFiscal: TDirectoryEdit;
    TabSheet11: TTabSheet;
    GroupBox2: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    DBComboBox1: TDBComboBox;
    StaticText4: TStaticText;
    GroupBox9: TGroupBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    StaticText9: TStaticText;
    cSkin: TFilenameEdit;
    StaticText23: TStaticText;
    cBACKUP: TDirectoryEdit;
    TabSheet3: TTabSheet;
    DBCheckBox15: TDBCheckBox;
    StaticText42: TStaticText;
    DBEdit16: TDBEdit;
    StaticText53: TStaticText;
    cImportacao: TDirectoryEdit;
    StaticText55: TStaticText;
    cAtualiza: TDirectoryEdit;
    StaticText36: TStaticText;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    GroupBox12: TGroupBox;
    StaticText37: TStaticText;
    StaticText56: TStaticText;
    StaticText57: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    StaticText58: TStaticText;
    StaticText59: TStaticText;
    StaticText60: TStaticText;
    GroupBox13: TGroupBox;
    StaticText61: TStaticText;
    StaticText62: TStaticText;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    GroupBox14: TGroupBox;
    StaticText64: TStaticText;
    DBLookupComboBox11: TDBLookupComboBox;
    StaticText65: TStaticText;
    DBLookupComboBox12: TDBLookupComboBox;
    StaticText63: TStaticText;
    DBLookupComboBox10: TDBLookupComboBox;
    TabSheet7: TTabSheet;
    GroupBox15: TGroupBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBEdit23: TDBEdit;
    DBLookupComboBox14: TDBLookupComboBox;
    StaticText67: TStaticText;
    GroupBox16: TGroupBox;
    StaticText68: TStaticText;
    DBLookupComboBox15: TDBLookupComboBox;
    StaticText69: TStaticText;
    DBLookupComboBox16: TDBLookupComboBox;
    StaticText70: TStaticText;
    cBACKUPCopia: TDirectoryEdit;
    DBComboBox2: TDBComboBox;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    StaticText15: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText28: TStaticText;
    StaticText27: TStaticText;
    cVencimento1: TDBEdit;
    lVencimento1: TStaticText;
    lVencimento2: TStaticText;
    cVencimento2: TDBEdit;
    lVencimento3: TStaticText;
    cVencimento3: TDBEdit;
    cVencimento4: TDBEdit;
    lVencimento4: TStaticText;
    lVencimento5: TStaticText;
    cVencimento5: TDBEdit;
    lVencimento6: TStaticText;
    cVencimento6: TDBEdit;
    StaticText35: TStaticText;
    lVencimento7: TStaticText;
    cVencimento7: TDBEdit;
    StaticText39: TStaticText;
    lVencimento8: TStaticText;
    cVencimento8: TDBEdit;
    cMes1: TDBCheckBox;
    cMes2: TDBCheckBox;
    cMes3: TDBCheckBox;
    cMes4: TDBCheckBox;
    cMes5: TDBCheckBox;
    cMes6: TDBCheckBox;
    cMes7: TDBCheckBox;
    cMes8: TDBCheckBox;
    cDuplicata01: TDBLookupComboBox;
    cDuplicata02: TDBLookupComboBox;
    cDuplicata03: TDBLookupComboBox;
    cDuplicata06: TDBLookupComboBox;
    cDuplicata05: TDBLookupComboBox;
    cDuplicata04: TDBLookupComboBox;
    cDuplicata08: TDBLookupComboBox;
    cDuplicata07: TDBLookupComboBox;
    DBCheckBox22: TDBCheckBox;
    DBRadioGroup6: TDBRadioGroup;
    lClassificacao1: TStaticText;
    lClassificacao2: TStaticText;
    lClassificacao3: TStaticText;
    lClassificacao4: TStaticText;
    lClassificacao5: TStaticText;
    lClassificacao6: TStaticText;
    lClassificacao7: TStaticText;
    lClassificacao8: TStaticText;
    cClassificacao1: TDBLookupComboBox;
    cClassificacao2: TDBLookupComboBox;
    cClassificacao3: TDBLookupComboBox;
    cClassificacao6: TDBLookupComboBox;
    cClassificacao5: TDBLookupComboBox;
    cClassificacao4: TDBLookupComboBox;
    cClassificacao8: TDBLookupComboBox;
    cClassificacao7: TDBLookupComboBox;
    tClassificacaoRec: TMSQuery;
    dstClassificacaoRec: TDataSource;
    tClassificacaoRecCodigo: TStringField;
    tClassificacaoRecDescricao: TStringField;
    tClassificacaoRecTipo: TStringField;
    TabSheet9: TTabSheet;
    StaticText71: TStaticText;
    DBEdit18: TDBEdit;
    GroupBox20: TGroupBox;
    StaticText84: TStaticText;
    DBLookupComboBox27: TDBLookupComboBox;
    StaticText85: TStaticText;
    DBLookupComboBox28: TDBLookupComboBox;
    StaticText86: TStaticText;
    DBLookupComboBox29: TDBLookupComboBox;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    StaticText31: TStaticText;
    DBEdit25: TDBEdit;
    StaticText32: TStaticText;
    DBEdit26: TDBEdit;
    StaticText33: TStaticText;
    DBEdit27: TDBEdit;
    DBCheckBox10: TDBCheckBox;
    TabSheet8: TTabSheet;
    StaticText29: TStaticText;
    DBEdit24: TDBEdit;
    StaticText34: TStaticText;
    DBEdit28: TDBEdit;
    StaticText38: TStaticText;
    cTemporaria: TDirectoryEdit;
    GroupBox22: TGroupBox;
    StaticText40: TStaticText;
    StaticText96: TStaticText;
    StaticText97: TStaticText;
    StaticText98: TStaticText;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit46: TDBEdit;
    StaticText99: TStaticText;
    StaticText100: TStaticText;
    DBEdit51: TDBEdit;
    StaticText101: TStaticText;
    DBEdit52: TDBEdit;
    DBRadioGroup12: TDBRadioGroup;
    GroupBox24: TGroupBox;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    StaticText105: TStaticText;
    DBEdit55: TDBEdit;
    StaticText106: TStaticText;
    DBEdit56: TDBEdit;
    StaticText107: TStaticText;
    DBEdit57: TDBEdit;
    DBCheckBox23: TDBCheckBox;
    DBRadioGroup15: TDBRadioGroup;
    GroupBox25: TGroupBox;
    StaticText102: TStaticText;
    DBLookupComboBox21: TDBLookupComboBox;
    StaticText103: TStaticText;
    StaticText108: TStaticText;
    DBLookupComboBox23: TDBLookupComboBox;
    StaticText109: TStaticText;
    DBLookupComboBox24: TDBLookupComboBox;
    DBLookupComboBox22: TDBLookupComboBox;
    StaticText110: TStaticText;
    cForma: TDBComboBox;
    TabSheet10: TTabSheet;
    GroupBox23: TGroupBox;
    cCompClass: TDBCheckBox;
    cCompBancos: TDBCheckBox;
    StaticText113: TStaticText;
    DBEdit54: TDBEdit;
    StaticText114: TStaticText;
    GroupBox26: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    StaticText117: TStaticText;
    DBEdit60: TDBEdit;
    StaticText118: TStaticText;
    DBEdit61: TDBEdit;
    DBRadioGroup16: TDBRadioGroup;
    GroupBox27: TGroupBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    cSISCOMEXWEB: TDirectoryEdit;
    StaticText122: TStaticText;
    StaticText123: TStaticText;
    DBEdit63: TDBEdit;
    TabSheet14: TTabSheet;
    tTransportadores: TMSQuery;
    dstTransportadores: TDataSource;
    tTransportadoresCodigo: TIntegerField;
    tTransportadoresNome: TStringField;
    tTransportadoresCNPJ: TStringField;
    tNaturezaDentro: TMSQuery;
    dstNaturezaDentro: TDataSource;
    tNaturezaFora: TMSQuery;
    dstNaturezaFora: TDataSource;
    tNaturezaForaCodigo: TStringField;
    tNaturezaForaDescricao_NF: TStringField;
    tNaturezaDentroCodigo: TStringField;
    tNaturezaDentroDescricao_NF: TStringField;
    GroupBox28: TGroupBox;
    lTransportador: TStaticText;
    cTransportador: TDBLookupComboBox;
    StaticText124: TStaticText;
    cTipoNota: TRxDBLookupCombo;
    StaticText125: TStaticText;
    StaticText126: TStaticText;
    StaticText127: TStaticText;
    cModalidadeFrete: TRxDBComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    GroupBox30: TGroupBox;
    StaticText129: TStaticText;
    cMinimo: TDBEdit;
    bMinimo: TButton;
    DBCheckBox28: TDBCheckBox;
    StaticText128: TStaticText;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    StaticText130: TStaticText;
    DBRadioGroup17: TDBRadioGroup;
    DBCheckBox29: TDBCheckBox;
    StaticText131: TStaticText;
    cBoletos: TDirectoryEdit;
    GroupBox31: TGroupBox;
    StaticText132: TStaticText;
    DBLookupComboBox25: TDBLookupComboBox;
    StaticText133: TStaticText;
    DBLookupComboBox26: TDBLookupComboBox;
    StaticText134: TStaticText;
    DBLookupComboBox30: TDBLookupComboBox;
    TabSheet15: TTabSheet;
    DBCheckBox30: TDBCheckBox;
    StaticText136: TStaticText;
    StaticText137: TStaticText;
    StaticText138: TStaticText;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    StaticText139: TStaticText;
    DBEdit66: TDBEdit;
    StaticText140: TStaticText;
    DBComboBox3: TDBComboBox;
    StaticText135: TStaticText;
    DBEdit70: TDBEdit;
    TabSheet16: TTabSheet;
    cmIni: TMemo;
    PageControl3: TPageControl;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    GroupBox8: TGroupBox;
    StaticText41: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText66: TStaticText;
    DBLookupComboBox13: TDBLookupComboBox;
    DBRadioGroup13: TDBRadioGroup;
    DBCheckBox6: TDBCheckBox;
    StaticText121: TStaticText;
    DBEdit62: TDBEdit;
    GroupBox21: TGroupBox;
    StaticText88: TStaticText;
    DBLookupComboBox17: TDBLookupComboBox;
    StaticText89: TStaticText;
    DBLookupComboBox18: TDBLookupComboBox;
    StaticText90: TStaticText;
    DBEdit41: TDBEdit;
    StaticText91: TStaticText;
    DBEdit42: TDBEdit;
    StaticText92: TStaticText;
    DBEdit43: TDBEdit;
    StaticText93: TStaticText;
    DBLookupComboBox19: TDBLookupComboBox;
    StaticText94: TStaticText;
    DBLookupComboBox20: TDBLookupComboBox;
    StaticText95: TStaticText;
    DBEdit44: TDBEdit;
    DBRadioGroup11: TDBRadioGroup;
    TabSheet19: TTabSheet;
    cNumeroProcesso: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    StaticText30: TStaticText;
    DBMemo1: TDBMemo;
    cAFRMMCalc: TDBCheckBox;
    lTarifa: TStaticText;
    cTarifa: TDBEdit;
    lTaxa: TStaticText;
    cTaxa: TDBEdit;
    StaticText141: TStaticText;
    DBEdit67: TDBEdit;
    RxLabel3: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    StaticText143: TStaticText;
    cImagens: TDirectoryEdit;
    DBRadioGroup18: TDBRadioGroup;
    GroupBox32: TGroupBox;
    StaticText144: TStaticText;
    DBLookupComboBox31: TDBLookupComboBox;
    StaticText145: TStaticText;
    DBLookupComboBox32: TDBLookupComboBox;
    StaticText146: TStaticText;
    DBLookupComboBox33: TDBLookupComboBox;
    cVersaoDLL: TLabel;
    StaticText148: TStaticText;
    cModalidade: TRxDBLookupCombo;
    DBEdit74: TDBEdit;
    DBRadioGroup19: TDBRadioGroup;
    StaticText149: TStaticText;
    cGNRE: TDirectoryEdit;
    StaticText150: TStaticText;
    DBLookupComboBox34: TDBLookupComboBox;
    StaticText151: TStaticText;
    DBEdit75: TDBEdit;
    Label1: TLabel;
    GroupBox34: TGroupBox;
    DBEdit76: TDBEdit;
    DBLookupComboBox35: TDBLookupComboBox;
    StaticText152: TStaticText;
    StaticText154: TStaticText;
    cConta: TDBLookupComboBox;
    tContas: TMSQuery;
    dstContas: TDataSource;
    StaticText155: TStaticText;
    DBLookupComboBox36: TDBLookupComboBox;
    StaticText156: TStaticText;
    DBLookupComboBox37: TDBLookupComboBox;
    DBEdit78: TDBEdit;
    DBLookupComboBox38: TDBLookupComboBox;
    StaticText157: TStaticText;
    DBEdit79: TDBEdit;
    DBLookupComboBox39: TDBLookupComboBox;
    StaticText158: TStaticText;
    StaticText153: TStaticText;
    DBEdit77: TDBEdit;
    StaticText159: TStaticText;
    DBEdit80: TDBEdit;
    StaticText160: TStaticText;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    StaticText161: TStaticText;
    DBEdit84: TDBEdit;
    DBCheckBox25: TDBCheckBox;
    PageControl4: TPageControl;
    TabSheet20: TTabSheet;
    TabSheet21: TTabSheet;
    GroupBox11: TGroupBox;
    StaticText52: TStaticText;
    cMes: TComboBox;
    StaticText54: TStaticText;
    DBEdit22: TDBEdit;
    GroupBox18: TGroupBox;
    StaticText74: TStaticText;
    StaticText75: TStaticText;
    DBEdit34: TDBEdit;
    StaticText76: TStaticText;
    StaticText77: TStaticText;
    StaticText78: TStaticText;
    DBEdit35: TDBEdit;
    DBEdit37: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    GroupBox19: TGroupBox;
    StaticText79: TStaticText;
    StaticText80: TStaticText;
    DBEdit36: TDBEdit;
    StaticText81: TStaticText;
    StaticText82: TStaticText;
    StaticText83: TStaticText;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    RxDBComboBox4: TRxDBComboBox;
    GroupBox1: TGroupBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    GroupBox7: TGroupBox;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    StaticText111: TStaticText;
    StaticText112: TStaticText;
    cRamoAtividade: TDBLookupComboBox;
    DBEdit53: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    StaticText72: TStaticText;
    StaticText73: TStaticText;
    StaticText115: TStaticText;
    DBEdit58: TDBEdit;
    StaticText116: TStaticText;
    DBEdit59: TDBEdit;
    GroupBox29: TGroupBox;
    DBEdit40: TDBEdit;
    StaticText87: TStaticText;
    DBEdit45: TDBEdit;
    StaticText104: TStaticText;
    GroupBox10: TGroupBox;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    StaticText43: TStaticText;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    StaticText162: TStaticText;
    StaticText163: TStaticText;
    StaticText164: TStaticText;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    StaticText165: TStaticText;
    StaticText166: TStaticText;
    GroupBox33: TGroupBox;
    DBEdit69: TDBEdit;
    StaticText147: TStaticText;
    DBEdit68: TDBEdit;
    StaticText142: TStaticText;
    cClassICMS: TRxDBLookupCombo;
    StaticText167: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText168: TStaticText;
    RxDBLookupCombo4: TRxDBLookupCombo;
    StaticText169: TStaticText;
    RxDBLookupCombo5: TRxDBLookupCombo;
    StaticText170: TStaticText;
    RxDBLookupCombo6: TRxDBLookupCombo;
    StaticText171: TStaticText;
    RxDBLookupCombo7: TRxDBLookupCombo;
    StaticText172: TStaticText;
    RxDBLookupCombo8: TRxDBLookupCombo;
    StaticText173: TStaticText;
    RxDBLookupCombo9: TRxDBLookupCombo;
    StaticText174: TStaticText;
    RxDBLookupCombo10: TRxDBLookupCombo;
    StaticText175: TStaticText;
    RxDBLookupCombo11: TRxDBLookupCombo;
    StaticText176: TStaticText;
    RxDBLookupCombo12: TRxDBLookupCombo;
    StaticText177: TStaticText;
    RxDBLookupCombo13: TRxDBLookupCombo;
    StaticText178: TStaticText;
    GroupBox35: TGroupBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    GroupBox36: TGroupBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    StaticText179: TStaticText;
    DBEdit90: TDBEdit;
    StaticText180: TStaticText;
    DBEdit91: TDBEdit;
    StaticText119: TStaticText;
    DBDateEdit1: TDBDateEdit;
    StaticText120: TStaticText;
    DBDateEdit2: TDBDateEdit;
    GroupBox37: TGroupBox;
    StaticText182: TStaticText;
    StaticText184: TStaticText;
    StaticText185: TStaticText;
    gEcommerce: TDBGrid;
    bAddEcomm: TButton;
    bSalvarEcomm: TButton;
    cURLEComm: TEdit;
    cKeyEComm: TEdit;
    cSecretEComm: TEdit;
    DBCheckBox31: TDBCheckBox;
    cURLAtiva: TCheckBox;
    tItem: TMSQuery;
    DBCheckBox9: TDBCheckBox;
    StaticText186: TStaticText;
    cToken: TMemo;
    tTmp: TMSQuery;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    StaticText187: TStaticText;
    DBLookupComboBox40: TDBLookupComboBox;
    StaticText188: TStaticText;
    StaticText189: TStaticText;
    DBLookupComboBox41: TDBLookupComboBox;
    DBLookupComboBox42: TDBLookupComboBox;
    StaticText183: TStaticText;
    StaticText181: TStaticText;
    cAtivarEComm: TDBCheckBox;
    DBEdit92: TDBEdit;
    StaticText190: TStaticText;
    DBEdit93: TDBEdit;
    StaticText191: TStaticText;
    DBLookupComboBox43: TDBLookupComboBox;
    cStyle: TDBComboBox;
    DBEdit94: TDBEdit;
    StaticText192: TStaticText;
    StaticText193: TStaticText;
    StaticText194: TStaticText;
    DBEdit95: TDBEdit;
    StaticText195: TStaticText;
    DBEdit96: TDBEdit;
    StaticText196: TStaticText;
    DBEdit97: TDBEdit;
    StaticText198: TStaticText;
    DBEdit99: TDBEdit;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    StaticText197: TStaticText;
    DBEdit98: TDBEdit;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    StaticText199: TStaticText;
    RxDBLookupCombo14: TRxDBLookupCombo;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    StaticText200: TStaticText;
    DBEdit100: TDBEdit;
    StaticText201: TStaticText;
    DBEdit101: TDBEdit;
    StaticText202: TStaticText;
    DBEdit102: TDBEdit;
    StaticText203: TStaticText;
    DBEdit103: TDBEdit;
    StaticText204: TStaticText;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    StaticText205: TStaticText;
    DBCheckBox42: TDBCheckBox;
    GroupBox38: TGroupBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBRadioGroup20: TDBRadioGroup;
    StaticText206: TStaticText;
    DBEdit107: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBRadioGroup3Change(Sender: TObject);
    procedure bMinimoClick(Sender: TObject);
    procedure cVersaoDLLClick(Sender: TObject);
    procedure cAFRMMCalcClick(Sender: TObject);
    procedure gEcommerceCellClick(Column: TColumn);
    procedure gEcommerceDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bSalvarEcommClick(Sender: TObject);
    procedure bAddEcommClick(Sender: TObject);
    procedure cCompClassClick(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mAba: integer;
  end;

var
  ConfigSis: TConfigSis;

implementation

uses frmDados, frmDMContab, frmdmComercial, frmJanela_Processamento, frmMenu_Principal;

{$R *.dfm}

procedure TConfigSis.FormShow(Sender: TObject);
var
    mStyles:string;
begin
       Screen.Cursor := crSQLwait;

       With Dados, dmContab, dmComercial do Begin
            Configuracao.Open;

            cStyle.Clear;
            for mStyles in TStyleManager.StyleNames do begin
                cStyle.Items.Add(mStyles);
            end;
            cStyle.Sorted := true;;

            with Empresas do begin
                 sql.Clear;
                 sql.Add('select * from Empresas Order by Razao_Social, Numero_Filial');
                 open;
            end;

            Servicos.SQL.Clear;
            Servicos.SQL.Add('SELECT * FROM Servicos ORDER BY Descricao,Codigo');
            Servicos.Open;

            ClassificacaoFinanceira.SQL.Clear;
            ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) AND (Titulo <> 1) ORDER BY Descricao,Codigo');
            ClassificacaoFinanceira.Open;

            ClassificacaoDuplicata.SQL.Clear;
            ClassificacaoDuplicata.SQL.Add('SELECT * FROM ClassificacaoDuplicata ORDER BY Descricao');
            ClassificacaoDuplicata.Open;

            PlanoContas.SQL.Clear;
            PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE ISNULL(Sintetica, 0) = 1 ORDER BY Conta, Descricao');
            PlanoContas.Open;
            
            tContas.SQL.Clear;
            tContas.SQL.Add('SELECT * FROM PlanoContas WHERE ISNULL(Sintetica, 0) = 0 ORDER BY Conta, Descricao');
            tContas.Open;

            Historicos.SQL.Clear;
            Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Descricao');
            Historicos.Open;

            Moedas.SQL.Clear;
            Moedas.SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
            Moedas.Open;

            TiposDocumentos.SQL.Clear;
            TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE(Desativada <> 1) ORDER BY Descricao');
            TiposDocumentos.Open;

            RamoAtividade.SQL.Clear;
            RamoAtividade.SQL.Add('SELECT * FROM RamoAtividade ORDER BY Descricao');
            RamoAtividade.Open;

            Impostos.SQL.Clear;
            Impostos.SQL.Add('SELECT * FROM Impostos ORDER BY Descricao');
            Impostos.Open;

            CentroCusto.SQL.Clear;
            CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
            CentroCusto.Open;

            Orgaos.SQL.Clear;
            Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos ORDER BY Nome');
            Orgaos.Open;

            tClassificacaoRec.SQL.Clear;
            tClassificacaoRec.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = ''R'') AND (Titulo <> 1) AND (Desativada <> 1) ');
            tClassificacaoRec.Open;

            tTransportadores.SQL.Clear;
            tTransportadores.SQL.Add('SELECT * FROM Fornecedores');
            tTransportadores.SQL.Add('WHERE  (SELECT Descricao FROM RamoAtividade WHERE Codigo = Ramo_Atividade) LIKE ''%TRANSPOR%'' ');
            tTransportadores.SQL.Add('ORDER BY Nome');
            tTransportadores.Open;

            TipoNota.SQL.Clear;
            TipoNota.SQL.Add('SELECT * FROM TipoNota');
            TipoNota.SQL.Add('ORDER BY Descricao');
            TipoNota.Open;

            tNaturezaDentro.SQL.Clear;
            tNaturezaDentro.SQL.Add('SELECT Codigo, Descricao_NF FROM Natureza WHERE SUBSTRING(Codigo, 1, 1) = ''5'' and Saida_Entrada = 1');
            tNaturezaDentro.SQL.Add('ORDER BY Codigo');
            tNaturezaDentro.Open;

            tNaturezaFora.SQL.Clear;
            tNaturezaFora.SQL.Add('SELECT Codigo, Descricao_NF FROM Natureza WHERE SUBSTRING(Codigo, 1, 1) = ''6'' and Saida_Entrada = 1');
            tNaturezaFora.SQL.Add('ORDER BY Codigo');
            tNaturezaFora.Open;

            ModalidadesPgto.SQL.Clear;
            ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Descricao ');
            ModalidadesPgto.Open;

            DRE.SQL.Clear;
            DRE.SQL.Add('SELECT * FROM DRE ORDER BY Descricao ');
            DRE.Open;

            EComm.SQL.Clear;
            EComm.SQL.Add('SELECT * FROM ECommerce');
            EComm.Open;

            cURLAtiva.Checked := EComm.FieldByName('Ativo').AsBoolean;
            cURLEComm.Text    := EComm.FieldByName('URL').AsString;
            cKeyEComm.Text    := EComm.FieldByName('Consumer_Key').AsString;
            cSecretEComm.Text := EComm.FieldByName('Consumer_Secret').AsString;
            cToken.Text       := EComm.FieldByName('Token').AsWideString;
            cINI.Text         := ConfiguracaoPasta_INI.Value;
            cLOG.Text         := ConfiguracaoPasta_LOG.Text;
            cSISCOMEX.Text    := ConfiguracaoPasta_SISCOMEX.Value;
            cSISCOMEXWEB.Text := ConfiguracaoPasta_SISCOMEXWEB.Value;
            cImpressao.Text   := ConfiguracaoPasta_Impressao.Value;
            cExportacao.Text  := ConfiguracaoPasta_Exportacao.Value;
            cImportacao.Text  := ConfiguracaoPasta_Importacao.Value;
            cSintegra.Text    := ConfiguracaoPasta_Sintegra.Value;
            cSPEDFiscal.Text  := ConfiguracaoPasta_SPEDFiscal.Value;
            cNFe.Text         := ConfiguracaoPasta_NFe.Value;
            cBACKUP.Text      := ConfiguracaoPasta_BACKUP.Value;
            cBACKUPCopia.Text := ConfiguracaoPasta_BACKUPCopia.Value;
            cAtualiza.Text    := ConfiguracaoPasta_Atualizacao.Value;
            cTemporaria.Text  := ConfiguracaoPasta_Temporaria.Value;
            cMes.ItemIndex    := ConfiguracaoSPED_Mes_Inventario.Value-1;
            cBoletos.Text     := ConfiguracaoPasta_Boleto.Value;
            cImagens.Text     := ConfiguracaoPasta_Imagens.Value;
            cGNRE.Text        := ConfiguracaoPasta_GNRE.Value;

            //PageControl1.ActivePageIndex := 0;
            PageControl1.ActivePageIndex := mAba;

            Configuracao.Edit;

            cmIni.Clear;
            cmIni.Lines.LoadFromFile('ImportaServidor.ini');
       End;
       Screen.Cursor := crDefault;
end;

procedure TConfigSis.gEcommerceCellClick(Column: TColumn);
begin
     with dmComercial do begin
          cURLAtiva.Checked := EComm.FieldByName('Ativo').AsBoolean;
//          cTempoEcomm.Text  := EComm.FieldByName('Tempo_Verificacao').AsString;
          cURLEComm.Text    := EComm.FieldByName('URL').AsString;
          cKeyEComm.Text    := EComm.FieldByName('Consumer_Key').AsString;
          cSecretEComm.Text := EComm.FieldByName('Consumer_Secret').AsString;
          cToken.Text       := EComm.FieldByName('Token').value;
     end;
end;

procedure TConfigSis.gEcommerceDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
    Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      with Dados, dmComercial do begin
           if (Column.FieldName = 'Ativo') then begin
              with gECommerce.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   if (EComm.FieldByName('Ativo').AsBoolean) then
                      ImageList1.GetBitmap(0, Icon)
                   else
                     ImageList1.GetBitmap(7, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              end;
           end;
      end;
end;

procedure TConfigSis.bSalvarClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente salvar as modificações nas configurações /Fiscal /Vencimentos dos Impostos.', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
         Abort;
      end;
      With Dados do Begin
           if ConfiguracaoAviso_ExoneracaoICMS.AsInteger > ConfiguracaoPrazo_Exoneracao.AsInteger then begin
              ConfiguracaoAviso_ExoneracaoICMS.AsInteger := ConfiguracaoPrazo_Exoneracao.AsInteger;
           end;
           // Configuração da data do sistema.
           If Copy(ConfiguracaoFormato_Data.Value,3,1) = '/' then FormatSettings.DateSeparator := '/';
           If Copy(ConfiguracaoFormato_Data.Value,3,1) = '.' then FormatSettings.DateSeparator := '.';
           If Copy(ConfiguracaoFormato_Data.Value,3,1) = '-' then FormatSettings.DateSeparator := '-';
           FormatSettings.ShortDateFormat := RemoveCaracter('a', 'y', ConfiguracaoFormato_Data.Value);

           ConfiguracaoPasta_Skin.Value          := RemoveCaracter('"', '' ,cSkin.Text);
           ConfiguracaoPasta_INI.Value           := cINI.Text;
           ConfiguracaoPasta_LOG.Text            := cLOG.Text;
           ConfiguracaoPasta_SISCOMEX.Value      := cSISCOMEX.Text;
           ConfiguracaoPasta_SISCOMEXWEB.Value   := cSISCOMEXWEB.Text;
           ConfiguracaoPasta_Impressao.Value     := cImpressao.Text;
           ConfiguracaoPasta_Exportacao.Value    := cExportacao.Text;
           ConfiguracaoPasta_Importacao.Value    := cImportacao.Text;
           ConfiguracaoPasta_Sintegra.Value      := cSintegra.Text;
           ConfiguracaoPasta_NFe.Value           := cNfe.Text;
           ConfiguracaoPasta_SPEDFiscal.Value    := cSPEDFiscal.Text;
           ConfiguracaoPasta_BACKUP.Value        := cBACKUP.Text;
           ConfiguracaoPasta_BACKUPCopia.Value   := cBACKUPCopia.Text;
           ConfiguracaoPasta_Atualizacao.Value   := cAtualiza.Text;
           ConfiguracaoPasta_Temporaria.Value    := cTemporaria.Text;
           ConfiguracaoSPED_Mes_Inventario.Value := cMes.ItemIndex +1;
           ConfiguracaoPasta_Boleto.Value        := cBoletos.Text;
           ConfiguracaoPasta_Imagens.Value       := cImagens.Text;
           ConfiguracaoPasta_GNRE.Value          := cGNRE.Text;

           LogDados(Configuracao, '('+ConfiguracaoLinha.AsString+') ', dsEdit);
           
           Configuracao.Post;
           Configuracao.ApplyUpdates;
           Configuracao.Refresh;

           cmIni.Lines.SaveToFile('ImportaServidor.ini');

           Menu_Principal.TimerECommerce.Enabled                  := ConfiguracaoAtivar_EComm.AsBoolean;
           Menu_Principal.mnFinanceiro_PedidosAutorizacao.Visible := ConfiguracaoAutorizacao_Pedidos.AsBoolean;

           Configuracao.Edit;
      End;
end;

procedure TConfigSis.bAddEcommClick(Sender: TObject);
begin
     with dmComercial do begin
          tItem.sql.clear;
          tItem.sql.add('SELECT ISNULL(MAX(Registro), 0)+1 AS Reg FROM Ecommerce');
          titem.open;

          EComm.Append;
                EComm.FieldByName('Registro').Value              := tItem.FieldByName('Reg').AsInteger;
                EComm.FieldByName('Ativo').AsBoolean             := cURLAtiva.Checked;
//                EComm.FieldByName('Tempo_Verificacao').AsString  := cTempoEcomm.Text ;
                EComm.FieldByName('URL').AsString                := cURLEComm.Text;
                EComm.FieldByName('Consumer_Key').AsString       := cKeyEComm.Text;
                EComm.FieldByName('Consumer_Secret').AsString    := cSecretEComm.Text;
                EComm.FieldByName('Token').value                 := cToken.Text;
          EComm.post;
     end;
end;

procedure TConfigSis.bSalvarEcommClick(Sender: TObject);
begin
     with dmComercial do begin
          EComm.Edit;
                EComm.FieldByName('Ativo').AsBoolean             := cURLAtiva.Checked;
//                EComm.FieldByName('Tempo_Verificacao').AsString  := cTempoEcomm.Text ;
                EComm.FieldByName('URL').AsString                := cURLEComm.Text;
                EComm.FieldByName('Consumer_Key').AsString       := cKeyEComm.Text;
                EComm.FieldByName('Consumer_Secret').AsString    := cSecretEComm.Text;
                EComm.FieldByName('Token').AsString              := cSecretEComm.Text;
          EComm.post;
     end;
end;

procedure TConfigSis.bCancelarClick(Sender: TObject);
begin
      Dados.Configuracao.Cancel;
end;

procedure TConfigSis.bSairClick(Sender: TObject);
begin
      Dados.Configuracao.Cancel;
      Close;
end;

procedure TConfigSis.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      SetCurrentDir(ExtractFilePath(Application.ExeName));
      Dados.Servicos.Close;
      Dados.Configuracao.Close;

      LimpaMemoria;
      Configsis.Release;
      Configsis := nil;
end;

procedure TConfigSis.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TConfigSis.cCompClassClick(Sender: TObject);
begin
{
      with Dados do begin
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas where Codigo = :pCodigo');
                ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
                open;
           end;
           if cCompClass.Checked then begin
              if MessageDlg('Deseja realmente compartilhar o "Plano Financeiro" ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                 if MessageDlg('Deseja copiar o plano Financeiro da empresa atual?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                    with tTmp do begin
                         try
                            sql.Clear;
                            sql.add('use Cybersoft_Cadastros');
                            sql.Add('');
                            sql.Add('use Cybersoft_Cadastros');
                            sql.Add('drop table ClassificacaoFinanceira');
                            sql.Add('select * into ClassificacaoFinanceira from '+trim(Empresas.FieldByName('Banco_Dados').asstring)+'.dbo.ClassificacaoFinanceira');
                            sql.Add('use '+trim(Empresas.FieldByName('Banco_Dados').asstring));
                            execute;
                         except
                            MessageDlg('Erro!'+#13+#13+'Erro ao copiar o "Plano Financeiro", entre em contato com o suporte do sistema!', mtError, [mbok], 0);
                         end;
                    end;
                 end;
              end else begin
                 cCompClass.Checked := false;
              end;
           end;
      end;
}
end;

procedure TConfigSis.DBCheckBox3Click(Sender: TObject);
begin
     cStyle.Enabled := Dados.ConfiguracaoAtivar_Skin.AsBoolean;
end;

procedure TConfigSis.DBRadioGroup3Change(Sender: TObject);
begin
     DBRadioGroup16.Enabled := DBRadioGroup3.ItemIndex = 1;
end;

procedure TConfigSis.bMinimoClick(Sender: TObject);
begin
     If MessageDlg('Atenção!'+#13+#13+'Esta operação irá reprocessar o valor de estoque minímo de todos os produtos do cadastro.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        With Dados do begin
             Produtos.SQL.Clear;
             Produtos.SQL.Add('SELECT * FROM Produtos WHERE ISNULL(Desativado, 0) = 0');
             Produtos.Open;

             Janela_Processamento                    := TJanela_Processamento.Create(Self);
             Janela_Processamento.Progresso.Max      := Produtos.RecordCount;
             Janela_Processamento.Progresso.Position := 0;
             Janela_Processamento.Show;

             While not Produtos.Eof do begin
                   Produtos.Edit;
                            ProdutosEstoque_MinimoPerc.Value := ConfiguracaoEstoque_MinimoPerc.Value;  
                            ProdutosEstoque_Minimo.Value     := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger), ProdutosEstoque_MinimoPerc.AsFloat);
                   Produtos.Post;

                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                   Application.ProcessMessages;

                   Produtos.Next;
             End;
             Janela_Processamento.Close;
        End;
     End;
end;

procedure TConfigSis.cVersaoDLLClick(Sender: TObject);
var
    Util: NFe_Util_2G_Interface;
begin
     If cVersaoDLL.Caption = 'Versão DLL' then begin
        Application.ProcessMessages;
        Util := NFe_Util_2G_TLB.CoUtil.Create;
        cVersaoDLL.Caption := Util.versao;
        Util := nil;
        cVersaoDLL.Font.Color := clBlack;
        cVersaoDLL.Font.Style := [];
     End;
end;

procedure TConfigSis.cAFRMMCalcClick(Sender: TObject);
begin
      cTarifa.Enabled := cAFRMMCalc.Checked;
      cTaxa.Enabled   := cTarifa.Enabled;
      lTarifa.Enabled := cTaxa.Enabled;
      lTaxa.Enabled   := cTaxa.Enabled;
end;

end.
