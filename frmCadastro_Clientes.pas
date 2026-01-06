unit frmCadastro_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Mask, DBCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, FUNCOES, RXCtrls, Buttons, Grids, DBGrids, ClipBrd, RXDBCtrl, RxDBComb, Menus, IdHTTP, xmldom, msxmldom, XMLDoc, OleCtrls, ShellApi,
  SOAPHTTPClient, XMLIntf, InvokeRegistry, Rio, RxCurrEdit, RxToolEdit, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, MemDS, System.Net.URLClient,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON, System.UITypes, Vcl.CheckLst;

type
    TCadastro_Clientes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tCodigo: TMSQuery;
    MunicipioEntrega: TMSQuery;
    MunicipioEntregaCodigo: TIntegerField;
    MunicipioEntregaEstado: TSmallintField;
    MunicipioEntregaNome: TStringField;
    EstadoEntrega: TMSQuery;
    EstadoEntregaCodigo: TStringField;
    EstadoEntregaNumero: TSmallintField;
    EstadoEntregaNome: TStringField;
    EstadoEntregaMascara_Inscricao: TStringField;
    EstadoEntregaDe_Do: TStringField;
    dsMunicipioEntrega: TDataSource;
    dsEstadoEntrega: TDataSource;
    tCodigoPlano: TMSQuery;
    tContaPlano: TMSQuery;
    tClientes: TMSQuery;
    bImportar: TButton;
    pPaginas: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    cNome: TDBEdit;
    cLogradouro: TDBEdit;
    cNumero: TDBEdit;
    cBairro: TDBEdit;
    cCEP: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    cCNPJ: TDBEdit;
    cIE: TDBEdit;
    StaticText1: TStaticText;
    lNome: TStaticText;
    lLogradouro: TStaticText;
    lBairro: TStaticText;
    lNumero: TStaticText;
    lCEP: TStaticText;
    lEstado: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    lCNPJ: TStaticText;
    lIE: TStaticText;
    StaticText3: TStaticText;
    DBEdit2: TDBEdit;
    lPais: TStaticText;
    cPais: TDBLookupComboBox;
    StaticText28: TStaticText;
    DBEdit26: TDBEdit;
    cEstado: TDBLookupComboBox;
    cIsento: TDBCheckBox;
    cCPF: TDBEdit;
    cRG: TDBEdit;
    lCPF: TStaticText;
    lRG: TStaticText;
    lMunicipio: TStaticText;
    StaticText32: TStaticText;
    DBEdit16: TDBEdit;
    StaticText37: TStaticText;
    DBEdit23: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    TabSheet3: TTabSheet;
    StaticText16: TStaticText;
    cDesoneracao: TDBLookupComboBox;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBMemo1: TDBMemo;
    StaticText24: TStaticText;
    cPesquisa: TEdit;
    StaticText25: TStaticText;
    TabSheet6: TTabSheet;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    StaticText27: TStaticText;
    StaticText33: TStaticText;
    StaticText34: TStaticText;
    DBEdit15: TDBEdit;
    StaticText21: TStaticText;
    cDuplicata01: TDBLookupComboBox;
    DBEdit18: TDBEdit;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    DBEdit19: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText14: TStaticText;
    TabSheet7: TTabSheet;
    Panel4: TPanel;
    DBEdit24: TDBEdit;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    cDataDoc: TDBDateEdit;
    StaticText71: TStaticText;
    DBEdit17: TDBEdit;
    StaticText61: TStaticText;
    RxDBComboBox1: TRxDBComboBox;
    StaticText68: TStaticText;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit48: TDBEdit;
    StaticText72: TStaticText;
    DBEdit38: TDBEdit;
    StaticText57: TStaticText;
    DBEdit28: TDBEdit;
    StaticText43: TStaticText;
    DBEdit32: TDBEdit;
    StaticText47: TStaticText;
    DBEdit25: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    DBLookupComboBox10: TDBLookupComboBox;
    StaticText64: TStaticText;
    StaticText51: TStaticText;
    DBEdit37: TDBEdit;
    TabSheet8: TTabSheet;
    DBEdit33: TDBEdit;
    StaticText49: TStaticText;
    DBEdit34: TDBEdit;
    StaticText50: TStaticText;
    DBEdit35: TDBEdit;
    StaticText58: TStaticText;
    DBEdit36: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    StaticText59: TStaticText;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    StaticText62: TStaticText;
    DBEdit49: TDBEdit;
    TabSheet9: TTabSheet;
    StaticText74: TStaticText;
    DBEdit56: TDBEdit;
    StaticText75: TStaticText;
    DBEdit57: TDBEdit;
    StaticText76: TStaticText;
    DBEdit58: TDBEdit;
    StaticText77: TStaticText;
    DBEdit59: TDBEdit;
    StaticText78: TStaticText;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    StaticText79: TStaticText;
    StaticText80: TStaticText;
    StaticText81: TStaticText;
    DBEdit63: TDBEdit;
    DBLookupComboBox9: TDBLookupComboBox;
    StaticText82: TStaticText;
    DBLookupComboBox14: TDBLookupComboBox;
    TabSheet10: TTabSheet;
    StaticText87: TStaticText;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    StaticText88: TStaticText;
    StaticText89: TStaticText;
    StaticText90: TStaticText;
    DBEdit69: TDBEdit;
    DBLookupComboBox15: TDBLookupComboBox;
    StaticText91: TStaticText;
    DBLookupComboBox16: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    StaticText69: TStaticText;
    DBEdit55: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit46: TDBEdit;
    DBEdit52: TDBEdit;
    StaticText60: TStaticText;
    StaticText83: TStaticText;
    StaticText84: TStaticText;
    DBDateEdit3: TDBDateEdit;
    DBEdit47: TDBEdit;
    StaticText63: TStaticText;
    DBEdit50: TDBEdit;
    StaticText70: TStaticText;
    GroupBox3: TGroupBox;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    StaticText73: TStaticText;
    StaticText85: TStaticText;
    StaticText86: TStaticText;
    DBDateEdit4: TDBDateEdit;
    DBEdit62: TDBEdit;
    StaticText92: TStaticText;
    DBEdit64: TDBEdit;
    StaticText93: TStaticText;
    GroupBox4: TGroupBox;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    StaticText94: TStaticText;
    StaticText95: TStaticText;
    StaticText96: TStaticText;
    DBDateEdit5: TDBDateEdit;
    DBEdit70: TDBEdit;
    StaticText97: TStaticText;
    DBEdit71: TDBEdit;
    StaticText98: TStaticText;
    GroupBox5: TGroupBox;
    GradeSPC: TRxDBGrid;
    StaticText99: TStaticText;
    StaticText100: TStaticText;
    cDataSPC: TDateEdit;
    bAdicionarSPC: TButton;
    cObservacaoSPC: TEdit;
    tSPC: TMSQuery;
    PopupMenu1: TPopupMenu;
    Adicionar1: TMenuItem;
    Excluir1: TMenuItem;
    Alterar1: TMenuItem;
    DBEdit72: TDBEdit;
    StaticText101: TStaticText;
    StaticText102: TStaticText;
    DBEdit73: TDBEdit;
    cMargemValor: TDBEdit;
    cDescontoOperValor: TDBEdit;
    cDescontoAdiValor: TDBEdit;
    StaticText103: TStaticText;
    StaticText104: TStaticText;
    StaticText105: TStaticText;
    StaticText106: TStaticText;
    cLimite: TDBEdit;
    StaticText107: TStaticText;
    StaticText108: TStaticText;
    cUtilizado: TDBEdit;
    cSaldoLimite: TCurrencyEdit;
    tNotas: TMSQuery;
    bCopiar: TButton;
    XMLBuscaCEP: TXMLDocument;
    bPesquisaCEP: TSpeedButton;
    TabSheet11: TTabSheet;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    DBEdit21: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBMemo2: TDBMemo;
    StaticText2: TStaticText;
    DBEdit4: TDBEdit;
    StaticText18: TStaticText;
    DBLookupComboBox7: TDBLookupComboBox;
    StaticText4: TStaticText;
    DBDateEdit6: TDBDateEdit;
    DBCheckBox4: TDBCheckBox;
    StaticText5: TStaticText;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    StaticText6: TStaticText;
    DBEdit8: TDBEdit;
    StaticText7: TStaticText;
    tRegistro: TMSQuery;
    tRepresentantes: TMSQuery;
    dstRepresentantes: TDataSource;
    TabSheet12: TTabSheet;
    GroupBox6: TGroupBox;
    StaticText12: TStaticText;
    DBLookupComboBox8: TDBLookupComboBox;
    lComissao: TStaticText;
    cTipoComissao: TDBLookupComboBox;
    cComissao: TDBEdit;
    StaticText30: TStaticText;
    GroupBox7: TGroupBox;
    StaticText48: TStaticText;
    StaticText110: TStaticText;
    DBLookupComboBox18: TDBLookupComboBox;
    DBEdit77: TDBEdit;
    StaticText26: TStaticText;
    DBEdit22: TDBEdit;
    StaticText8: TStaticText;
    DBDateEdit7: TDBDateEdit;
    StaticText9: TStaticText;
    DBDateEdit8: TDBDateEdit;
    bFiliais: TButton;
    StaticText13: TStaticText;
    DBEdit20: TDBEdit;
    StaticText109: TStaticText;
    cMunicipio: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    GradeClientes: TDBGrid;
    TabSheet13: TTabSheet;
    OpenDialog1: TOpenDialog;
    bDocumento: TBitBtn;
    BitBtn1: TBitBtn;
    cListaDOC: TListBox;
    StaticText22: TStaticText;
    DBEdit75: TDBEdit;
    StaticText23: TStaticText;
    DBEdit78: TDBEdit;
    StaticText29: TStaticText;
    DBEdit79: TDBEdit;
    StaticText111: TStaticText;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    GroupBox8: TGroupBox;
    StaticText112: TStaticText;
    StaticText113: TStaticText;
    cAtendente: TDBLookupComboBox;
    DBEdit80: TDBEdit;
    tAtendentes: TMSQuery;
    dstAtendentes: TDataSource;
    cClienteDIF: TDBCheckBox;
    DBEdit82: TDBEdit;
    StaticText115: TStaticText;
    cIndicadorIE: TRxDBComboBox;
    StaticText116: TStaticText;
    DBEdit83: TDBEdit;
    StaticText117: TStaticText;
    tPedidos: TMSQuery;
    StaticText118: TStaticText;
    StaticText119: TStaticText;
    DBCheckBox6: TDBCheckBox;
    lModalidade: TStaticText;
    cModalidade: TDBLookupComboBox;
    StaticText15: TStaticText;
    DBEdit3: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    StaticText52: TStaticText;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    StaticText56: TStaticText;
    StaticText65: TStaticText;
    DBLookupComboBox12: TDBLookupComboBox;
    cMunicipioEntregaNome: TDBLookupComboBox;
    StaticText66: TStaticText;
    StaticText67: TStaticText;
    DBEdit51: TDBEdit;
    StaticText114: TStaticText;
    DBEdit81: TDBEdit;
    StaticText120: TStaticText;
    DBEdit84: TDBEdit;
    StaticText121: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit85: TDBEdit;
    StaticText122: TStaticText;
    DBEdit86: TDBEdit;
    StaticText123: TStaticText;
    StaticText124: TStaticText;
    DBEdit87: TDBEdit;
    StaticText125: TStaticText;
    DBEdit88: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    StaticText126: TStaticText;
    StaticText127: TStaticText;
    StaticText128: TStaticText;
    StaticText129: TStaticText;
    StaticText130: TStaticText;
    StaticText131: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox13: TDBLookupComboBox;
    StaticText132: TStaticText;
    StaticText133: TStaticText;
    DBEdit94: TDBEdit;
    StaticText135: TStaticText;
    DBEdit96: TDBEdit;
    StaticText136: TStaticText;
    DBLookupComboBox17: TDBLookupComboBox;
    DBEdit97: TDBEdit;
    StaticText137: TStaticText;
    DBEdit98: TDBEdit;
    StaticText138: TStaticText;
    StaticText139: TStaticText;
    DBEdit99: TDBEdit;
    StaticText140: TStaticText;
    DBEdit100: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    HTTPRIO1: THTTPRIO;
    IdHTTP1: TIdHTTP;
    StaticText134: TStaticText;
    DBEdit95: TDBEdit;
    StaticText141: TStaticText;
    DBEdit101: TDBEdit;
    SpeedButton1: TSpeedButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Panel6: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    StaticText142: TStaticText;
    DBEdit9: TDBEdit;
    StaticText143: TStaticText;
    DBEdit102: TDBEdit;
    StaticText144: TStaticText;
    DBEdit103: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox19: TDBLookupComboBox;
    DBLookupComboBox20: TDBLookupComboBox;
    Panel3: TPanel;
    NavegaConta: TDBNavigator;
    GradeModal: TDBGrid;
    StaticText17: TStaticText;
    cCodModal: TDBLookupComboBox;
    bPlano: TButton;
    bLimite: TButton;
    GroupBox1: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    cAtivo: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    StaticText31: TStaticText;
    DBEdit7: TDBEdit;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure cCNPJExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cIsentoClick(Sender: TObject);
    procedure cIEExit(Sender: TObject);
    procedure cEstadoClick(Sender: TObject);
    procedure cEstadoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure cCPFExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure StaticText31Click(Sender: TObject);
    procedure StaticText17Click(Sender: TObject);
    procedure StaticText38Click(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure cDataSPCChange(Sender: TObject);
    procedure bAdicionarSPCClick(Sender: TObject);
    procedure Adicionar1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure DBEdit14Change(Sender: TObject);
    procedure DBEdit15Change(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure bCopiarClick(Sender: TObject);
    procedure GradeClientesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    //procedure bPesquisaCEPClick(Sender: TObject);
    procedure cCEPChange(Sender: TObject);
    procedure cIEKeyPress(Sender: TObject; var Key: Char);
    //procedure AbreConta;
    procedure bFiliaisClick(Sender: TObject);
    procedure bDocumentoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cListaDOCDblClick(Sender: TObject);
    procedure GradeClientesCellClick(Column: TColumn);
    procedure bPesquisaCEPClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure bPlanoClick(Sender: TObject);
    procedure NavegaContaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaContaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bLimiteClick(Sender: TObject);
    procedure cLimiteExit(Sender: TObject);
  private
    //procedure SalvaConta(Campo: integer);
    { Private declarations }
  public
    { Public declarations }
    mPesquisa  : String;
    mZonaFranca: Boolean;
    mExiste    : Boolean;
    mConta     : String;
    mNFECodigo : Integer;
    mTabAberta : Boolean;
  end;

var
  Cadastro_Clientes: TCadastro_Clientes;
  TSConsulta       : TStringList;

implementation

uses frmDados, frmMenu_Principal, frmDMContab, frmCadastro_PlanoContas, frmCadastro_ClientesFiliais, ConsultaCEP, frmPesquisaGerais;

{$R *.dfm}

procedure TCadastro_Clientes.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i:integer;
begin
      if (Button = nbEdit) or (Button = nbInsert) then begin
         mZonaFranca := Dados.ClientesZona_Franca.AsBoolean;
         for i := 0 to pPaginas.PageCount-1 do begin
             pPaginas.Pages[i].Enabled := true;
         end;

         pPaginas.ActivePageIndex := 0;
         bImportar.Enabled        := false;
         bFiliais.Enabled         := false;
         bPesquisa.Enabled        := false;
         bCopiar.Enabled          := false;
         bImportar.Enabled        := false;
         bPlano.Enabled           := false;

         if Button = nbInsert then begin
            Dados.ClientesData_Cadastro.Value    := Date;
            Dados.ClientesAtivo.Value            := True;
            Dados.ClientesSimples_Nacional.Value := false;
            Dados.ClientesIsento.Value           := false;
            Dados.ClientesEnviar_Email.Value     := true;
            Dados.ClientesConsumidor_Final.Value := false;
            Dados.ClientesMEI.Value              := false;
            Dados.ClientesZona_Franca.Value      := false;
            Dados.ClientesInscricaoST.value      := false;
            Dados.ClientesMicro_Empresa.value    := false;
            Dados.ClientesBloqueado.value        := false;
            Dados.ClientesTerminal.value         := false;
            Dados.ClientesComprador.value        := false;
            Dados.ClientesImportador.value       := false;
            Dados.ClientesProspeccao.value       := false;
         end;
         
         cCNPJ.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         bImportar.Enabled := true;
         bFiliais.Enabled  := true;
         bPesquisa.Enabled := true;
         bCopiar.Enabled   := true;
         bImportar.Enabled := true;
         bPlano.Enabled    := true;
         Screen.Cursor     := crDefault;

         for i := 0 to pPaginas.PageCount-1 do begin
             pPaginas.Pages[i].Enabled := false
         end;
         pPaginas.Pages[7].Enabled  := true;
         pPaginas.Pages[8].Enabled  := true;
         pPaginas.Pages[12].Enabled := true;
      end;

      with Dados do begin
           Estados.Locate('Codigo', ClientesEstado.Value, [loCaseInsensitive]);
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;

           cSaldoLimite.Value := (Dados.ClientesLimite_Credito.Value - Dados.ClientesLimite_Utilizado.Value);
      end;

      MunicipioEntrega.SQL.Clear;
      MunicipioEntrega.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
      MunicipioEntrega.ParamByName('pEstado').AsInteger := EstadoEntregaNumero.Value;
      MunicipioEntrega.Open;

      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
      end;
end;

procedure TCadastro_Clientes.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmContab do Begin
           Empresas.sql.Clear;
           Empresas.sql.Add('select * from Empresas where Codigo = :pCodigo');
           Empresas.paramByName('pCodigo').asinteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           if mPesquisa <> '' then Clientes.Locate('Codigo', mPesquisa, [loCaseInsensitive]);
           If mNFECodigo <> 0 then Clientes.Locate('Codigo', mNFECodigo, [loCaseInsensitive]);

           ClientesDOC.SQL.Clear;
           ClientesDOC.SQL.Add('SELECT * FROM ClientesDocumentos WHERE Cliente = :pCodigo');
           ClientesDOC.ParamByName('pCodigo').AsInteger := ClientesCodigo.AsInteger;
           ClientesDOC.Open;

           Paises.Open;
           Comissoes.Open;
           Estados.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;

           EstadoEntrega.SQL.Clear;
           EstadoEntrega.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
           EstadoEntrega.Open;

           MunicipioEntrega.SQL.Clear;
           MunicipioEntrega.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           MunicipioEntrega.ParamByName('pEstado').AsInteger := EstadoEntregaNumero.Value;
           MunicipioEntrega.Open;

           ClassificacaoDuplicata.SQL.Clear;
           ClassificacaoDuplicata.SQL.Add('SELECT * FROM ClassificacaoDuplicata ORDER BY Descricao');
           ClassificacaoDuplicata.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.SQL.Add('WHERE  (SELECT Modulo_Clientes FROM RamoAtividade WHERE Codigo = Ramo_Atividade AND Comissionado = 1) = 1 AND Ativo = 1');
           Fornecedores.Open;

           tRepresentantes.SQL.Clear;
           tRepresentantes.SQL.Add('SELECT Codigo, Nome, CNPJ, Ramo_Atividade');
           tRepresentantes.SQL.Add('FROM   Fornecedores');
           tRepresentantes.SQL.Add('WHERE  (SELECT Modulo_Clientes FROM RamoAtividade WHERE Codigo = Ramo_Atividade AND Comissionado = 1) = 1 AND Ativo = 1');
           tRepresentantes.Open;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Sintetica <> 1)');
           PlanoContas.SQL.Add('ORDER  BY Descricao, Conta');
           PlanoContas.Open;

           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE(Matricula = :pUsuario)');
           Usuarios.ParamByName('pUsuario').value := Menu_Principal.mUsuarioCodigo;
           Usuarios.Open;

           tAtendentes.SQL.Clear;
           tAtendentes.SQL.Add('SELECT * FROM Usuarios WHERE Call_Center = 1');
           tAtendentes.Open;

           {
           lComissao.Enabled     := Dados.UsuariosmnCadastro_ComissaoTrader.AsBoolean;
           cComissao.Enabled     := Dados.UsuariosmnCadastro_ComissaoTrader.AsBoolean;
           cTipoComissao.Enabled := Dados.UsuariosmnCadastro_ComissaoTrader.AsBoolean;
           }
           
           Desoneracao.SQL.Clear;
           Desoneracao.SQL.Add('SELECT * FROM Desoneracao ORDER BY Codigo');
           Desoneracao.Open;

           RamoAtividade.SQL.Clear;
           RamoAtividade.SQL.Add('SELECT * FROM RamoAtividade ORDER BY Descricao');
           RamoAtividade.Open;

           TiposProcesso.sql.Clear;
           TiposProcesso.sql.Add('select * from TiposProcesso order by Codigo' );
           TiposProcesso.Open;

           cSaldoLimite.Value := (Dados.ClientesLimite_Credito.Value - Dados.ClientesLimite_Utilizado.Value);
      End;
      pPaginas.ActivePageIndex := 0;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Clientes.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_Clientes.bPlanoClick(Sender: TObject);
begin
{
      screen.Cursor := crSqlWait;
      Panel1.Enabled := false;
      AbreConta;
      Panel1.Enabled := true;
      screen.Cursor := crDefault;
}
end;

procedure TCadastro_Clientes.cCNPJExit(Sender: TObject);
begin
      If (VerificaCNPJ(cCNPJ.Text) = False) and (Trim(cCNPJ.Text) <> '') then begin
         MessageDlg('Número de CNPJ inválido!', mtError, [mbok],0);
         cCNPJ.SetFocus;
         Abort;
      End;
end;

procedure TCadastro_Clientes.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
var
    i: Integer;
begin
      Navega.SetFocus;
      If (Button = nbPost) then begin
         With Dados, dmContab do begin
              // Verificando os campos obrigatorios do cadastro do cliente.
              If Trim(ClientesNome.AsString) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o nome do cliente.', mtError, [mbOK], 0);
                 pPaginas.ActivePageIndex := 0;
                 cNome.SetFocus;
                 Abort;
              End;
              if not ClientesProspeccao.asboolean then begin
                 If Trim(ClientesEstado.AsString) = '' then begin
                    MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o estado do cliente.', mtError, [mbOK], 0);
                    pPaginas.ActivePageIndex := 0;
                    cEstado.SetFocus;
                    Abort;
                 End;
                 If ClientesMunicipio_Codigo.Value = 0 then begin
                    MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o município do cliente.'+#13+#13'Em caso de cliente do exterior informar "EXTERIOR" no município.', mtError, [mbOK], 0);
                    pPaginas.ActivePageIndex := 0;
                    cMunicipio.SetFocus;
                    Abort;
                 End;
                 If Trim(ClientesPais.AsString) = '' then begin
                    MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o país do cliente.', mtError, [mbOK], 0);
                    pPaginas.ActivePageIndex := 0;
                    cPais.SetFocus;
                    Abort;
                 End;
                 // Verifica se ao menos uma modalidade esta informa para quem utiliza contabilidade.
                 if (ConfiguracaoParametrizacao_Contabil.asboolean) and (ClientesAtivo.AsBoolean) then begin
                    with tClientes do begin
                         sql.clear;
                         sql.add('select count(*) as Qtde from ClientesModalidades where Cliente = :pCli');
                         paramByName('pCli').asinteger := ClientesCodigo.asinteger;
                         open;
                         if FieldByName('Qtde').asinteger = 0 then begin
                            MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar ao menos uma modalidade de importação do cliente.', mtError, [mbOK], 0);
                            pPaginas.ActivePageIndex := 8;
                            GradeModal.SetFocus;
                            Abort;
                         end;
                    end;
                 end;
                 If (ClientesPais.Value = '1058') and (ClientesAtivo.AsBoolean = true) then begin
                    If (Trim(ClientesCNPJ.AsString) = '') and (Trim(ClientesCPF.AsString) = '') then begin
                       MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o CNPJ do cliente se pessoa jurídica ou o CPF se pessoa física.', mtError, [mbOK], 0);
                       pPaginas.ActivePageIndex := 0;
                       cCNPJ.SetFocus;
                       Abort;
                    End;
                    If (Trim(ClientesCNPJ.AsString) <> '') and (Trim(ClientesCPF.AsString) <> '') then begin
                       MessageDlg('Erro de conteúdo!'+#13+#13+'É necessário informar apenas o CNPJ ou o CPF do cliente.', mtError, [mbOK], 0);
                       pPaginas.ActivePageIndex := 0;
                       cCNPJ.SetFocus;
                       Abort;
                    End;
                    If (Trim(ClientesInscricao_Estadual.AsString) = '') and (ClientesIsento.Value = False) then begin
                       MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a Inscrição Estadual do cliente ou informar se o cliente é Isento.', mtError, [mbOK], 0);
                       pPaginas.ActivePageIndex := 0;
                       cIE.SetFocus;
                       Abort;
                    End;
                 End;
                 If Trim(ClientesIndicador_IE.AsString) = '' then begin
                    MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o indicador da Inscrição Estadual do cliente.', mtError, [mbOK], 0);
                    pPaginas.ActivePageIndex := 0;
                    cIndicadorIE.SetFocus;
                    Abort;
                 End;
                 {
                 If (ClientesDesoneracao.AsInteger = 0) then begin
                    MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o tipo de desoneração do cliente.', mtError, [mbOK], 0);
                    pPaginas.ActivePageIndex := 0;
                    cDesoneracao.SetFocus;
                    Abort;
                 End;
                 }
                 // Verifica se ha outro cliente com o mesmo número de CNPJ.
                 If ClientesEstado.AsString <> 'EX' then begin
                    If Trim(ClientesCNPJ.AsString) <> '' then begin
                       tClientes.SQL.Clear;
                       tClientes.SQL.Add('SELECT * FROM Clientes WHERE(CNPJ = :pCNPJ) AND (Codigo <> :pCodigo) AND (Ativo = 1)');
                       tClientes.ParamByName('pCNPJ').AsString    := Dados.ClientesCNPJ.AsString;
                       tClientes.ParamByName('pCodigo').AsInteger := Dados.ClientesCodigo.AsInteger;
                       tClientes.Open;

                       If tClientes.RecordCount > 0 then begin
                          MessageDlg('Já existe outro cliente cadastrado com este número de CNPJ!    '+#13+#13+'Cliente: '+tClientes.FieldByName('Codigo').AsString+' - '+tClientes.FieldByName('Nome').AsString, mtError, [mbOK], 0);
                          cCNPJ.SetFocus;
                          Abort;
                       End;
                    end else begin
                       tClientes.SQL.Clear;
                       tClientes.SQL.Add('SELECT * FROM Clientes WHERE(CPF = :pCPF) AND (Codigo <> :pCodigo) AND (Ativo = 1)');
                       tClientes.ParamByName('pCPF').AsString     := Dados.ClientesCPF.AsString;
                       tClientes.ParamByName('pCodigo').AsInteger := Dados.ClientesCodigo.AsInteger;
                       tClientes.Open;

                       If tClientes.RecordCount > 0 then begin
                          MessageDlg('Já existe outro cliente cadastrado com este número de CPF!    '+#13+#13+'Cliente: '+tClientes.FieldByName('Codigo').AsString+' - '+tClientes.FieldByName('Nome').AsString, mtError, [mbOK], 0);
                          cCPF.SetFocus;
                          Abort;
                       End;
                    End;
                 End;
              end;
              ClientesMunicipio.AsString             := cMunicipio.Text;
              ClientesMunicipio_EntregaNome.AsString := cMunicipioEntregaNome.Text;
              ClientesAlterado.Value                 := Clientes.State = dsEdit;
              
              If (Trim(ClientesCPF.AsString) <> '') and (Trim(ClientesInscricao_Estadual.AsString) = '') and (ClientesDesoneracao.asinteger = 9) then
                  ClientesConsumidor_Final.Value := true;

              // Gerando o código do cliente.
              If (Clientes.State = dsInsert) then begin
                 tCodigo.SQL.Clear;
                 tCodigo.SQL.Add('SELECT isnull(MAX(Codigo), 0)+1 AS Codigo FROM Clientes');
                 tCodigo.Open;
                 ClientesCodigo.Value := tCodigo.FieldByName('Codigo').asinteger;
                 tCodigo.Close;
              End;

              //If (Clientes.State = dsInsert) then begin
              //   AbreConta;
              //End;

              // Altera o campo de apuração de PIS/COFINS nas notas emitidas caso seja alterado.
              If ClientesZona_Franca.AsBoolean <> mZonaFranca then begin
                 If ClientesZona_Franca.AsBoolean = true then begin
                    tNotas.SQL.Clear;
                    tNotas.SQL.Add('UPDATE NotasItens SET Apuracao_PISCOFINS = 0');
                    tNotas.SQL.Add('WHERE( (SELECT Cliente_Codigo FROM NotasFiscais WHERE(NotasFiscais.Numero = NotasItens.Nota) AND (NotasFiscais.Data_Emissao = NotasItens.Data)) = :pCliente)');
                    tNotas.ParamByName('pCliente').AsInteger  := ClientesCodigo.AsInteger;
                    tNotas.Execute;

                    tNotas.SQL.Clear;
                    tNotas.SQL.Add('UPDATE NotasFiscais SET Apuracao_PISCOFINS = 0');
                    tNotas.SQL.Add('WHERE (Cliente_Codigo = :pCliente)');
                    tNotas.ParamByName('pCliente').AsInteger  := ClientesCodigo.AsInteger;
                    tNotas.Execute;
                 end else begin
                    tNotas.SQL.Clear;
                    tNotas.SQL.Add('UPDATE NotasItens SET Apuracao_PISCOFINS = (SELECT Apuracao_PISCOFINS FROM TipoNota');
                    tNotas.SQL.Add('                                            WHERE(Codigo = (SELECT Tipo_Nota FROM NotasFiscais');
                    tNotas.SQL.Add('                                                            WHERE(NotasFiscais.Numero = NotasItens.Nota) AND (NotasFiscais.Data_Emissao = NotasItens.Data))))');
                    tNotas.SQL.Add('WHERE( (SELECT Cliente_Codigo FROM NotasFiscais WHERE(NotasFiscais.Numero = NotasItens.Nota) AND (NotasFiscais.Data_Emissao = NotasItens.Data)) = :pCliente)');
                    tNotas.ParamByName('pCliente').AsInteger  := ClientesCodigo.AsInteger;
                    tNotas.Execute;

                    tNotas.SQL.Clear;
                    tNotas.SQL.Add('UPDATE NotasFiscais SET Apuracao_PISCOFINS = (SELECT Apuracao_PISCOFINS FROM TipoNota WHERE(Codigo = Tipo_Nota))');
                    tNotas.SQL.Add('WHERE(Cliente_Codigo = :pCliente)');
                    tNotas.ParamByName('pCliente').AsInteger  := ClientesCodigo.AsInteger;
                    tNotas.Execute;
                 End;
              End;

              // Altera os dados do destinatario nos pedidos feitos.
              if not ClientesProspeccao.asboolean then begin
                 tPedidos.SQL.Clear;
                 tPedidos.SQL.Add('UPDATE Pedidos SET Estado                     = :pEstado,');
                 tPedidos.SQL.Add('                   Destinatario_Nome          = :pNome,');
                 tPedidos.SQL.Add('                   Destinatario_CNPJ_CPF      = :pCNPJCPF,');
                 tPedidos.SQL.Add('                   Destinatario_Juridica      = :pJuridica,');
                 tPedidos.SQL.Add('                   Destinatario_Rua           = :pRua,');
                 tPedidos.SQL.Add('                   Destinatario_RuaNumero     = :pRuaNumero,');
                 tPedidos.SQL.Add('                   Destinatario_Complemento   = :pComplemento,');
                 tPedidos.SQL.Add('                   Destinatario_Bairro        = :pBairro,');
                 tPedidos.SQL.Add('                   Destinatario_Municipio     = :pMunicipio,');
                 tPedidos.SQL.Add('                   Destinatario_MunicipioNome = :pMunicipioNome,');
                 tPedidos.SQL.Add('                   Destinatario_Estado        = :pEstado,');
                 tPedidos.SQL.Add('                   Destinatario_CEP           = :pCEP,');
                 tPedidos.SQL.Add('                   Destinatario_Pais          = :pPais,');
                 tPedidos.SQL.Add('                   Destinatario_Telefone1     = :pTelefone1,');
                 tPedidos.SQL.Add('                   Destinatario_IE            = :pIE');
                 tPedidos.SQL.Add('WHERE Cliente_Codigo = :pCodigo');

                 tPedidos.ParamByName('pCodigo').AsInteger := ClientesCodigo.AsInteger;
                 tPedidos.ParamByName('pNome').AsString    := ClientesNome.AsString;
                 tPedidos.ParamByName('pEstado').AsString  := ClientesEstado.AsString;
                 If Trim(ClientesCNPJ.AsString) <> '' then begin
                    tPedidos.ParamByName('pCNPJCPF').AsString   := ClientesCNPJ.AsString;
                    tPedidos.ParamByName('pJuridica').AsBoolean := true;
                 end else begin
                    tPedidos.ParamByName('pCNPJCPF').AsString   := ClientesCPF.AsString;
                    tPedidos.ParamByName('pJuridica').AsBoolean := false;
                 End;
                 tPedidos.ParamByName('pRua').AsString           := ClientesRua.AsString;
                 tPedidos.ParamByName('pRuaNumero').AsString     := ClientesRua_Numero.AsString;
                 tPedidos.ParamByName('pComplemento').AsString   := ClientesComplemento.AsString;
                 tPedidos.ParamByName('pBairro').AsString        := ClientesBairro.AsString;
                 tPedidos.ParamByName('pMunicipio').AsString     := ClientesMunicipio_Codigo.AsString;
                 tPedidos.ParamByName('pMunicipioNome').AsString := ClientesMunicipio.AsString;
                 tPedidos.ParamByName('pEstado').AsString        := ClientesEstado.AsString;
                 tPedidos.ParamByName('pCEP').AsString           := ClientesCEP.AsString;
                 tPedidos.ParamByName('pPais').AsString          := ClientesPais.AsString;
                 tPedidos.ParamByName('pTelefone1').AsString     := ClientesTelefone1.AsString;
                 //Pedidos.ParamByName('pIE').AsString := ClientesInscricao_Estadual.Value;

                 If ClientesIsento.AsBoolean = false then
                    tPedidos.ParamByName('pIE').AsString := ClientesInscricao_Estadual.AsString
                 else
                    tPedidos.ParamByName('pIE').AsString := 'ISENTO';

                 tPedidos.Execute;
              end;

              // Salva a relação de documentos.
              ClientesDOC.SQL.Clear;
              ClientesDOC.SQL.Add('DELETE FROM ClientesDocumentos WHERE Cliente = :pCodigo');
              ClientesDOC.ParamByName('pCodigo').AsInteger := ClientesCodigo.AsInteger;
              ClientesDOC.Execute;
              ClientesDOC.SQL.Clear;
              ClientesDOC.SQL.Add('SELECT * FROM ClientesDocumentos WHERE Cliente = :pCodigo');
              ClientesDOC.ParamByName('pCodigo').AsInteger := ClientesCodigo.AsInteger;
              ClientesDOC.Open;

              For i := 0 to cListaDoc.Items.Count-1 do begin
                  If ClientesDOC.Locate('Documento', cListaDoc.Items[i], [loCaseInsensitive]) = false then begin
                     ClientesDOC.Append;
                                 ClientesDOCCliente.Value      := ClientesCodigo.AsInteger;
                                 ClientesDOCDocumento.AsString := cListaDoc.Items[i];
                     ClientesDOC.Post;
                  End;
              End;

              ClientesDOC.SQL.Clear;
              ClientesDOC.SQL.Add('SELECT * FROM ClientesDocumentos WHERE Cliente = :pCodigo');
              ClientesDOC.ParamByName('pCodigo').AsInteger := ClientesCodigo.AsInteger;
              ClientesDOC.Open;

              cListaDoc.Items.Clear;
              For i := 1 to ClientesDoc.RecordCount do begin
                  cListaDoc.Items.Add(ClientesDocDocumento.AsString);
                  ClientesDoc.Next;
              End;
         End;
      End;

      // Não deixa excluir se ja existe movimento para o cliente.
      if Button = nbDelete then begin
         if MessageDlg('Deseja realmente excluir este Cliente?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
            Abort
         end;

         with Dados, dmContab do begin
              with tClientes do begin
                   sql.Clear;
                   sql.Add('select Utilizado = isnull((select count(*) from NotasFiscais where Cliente_Codigo = :pCliente), 0)+');
                   sql.Add('                   isnull((select count(*) from PagarReceber where Cliente = :pCliente), 0)');
                   ParamByName('pCliente').AsInteger := ClientesCodigo.Value;
                   Open;
                   if FieldByName('Utilizado').AsInteger > 0 then begin
                     MessageDlg('Este Cliente não pode ser excluido, pois existem Movimento "Nota Fiscal/Financeiro".', mtInformation, [mbOK], 0);
                     Clientes.Cancel;
                     Abort;
                  end;
              end;

              // Deleta as modalidades informadas para o cliente.
              with tCodigo do begin
                   sql.clear;
                   sql.add('delete from ClientesModalidades where Cliente = :pCli');
                   ParamByName('pCli').AsInteger := ClientesCodigo.asinteger;
                   execute;
                   sql.clear;
              end;
         end;
      end;

      Screen.Cursor := crDefault;
      bImportar.Enabled := False;
end;

procedure TCadastro_Clientes.bPesquisaClick(Sender: TObject);
begin
      pPaginas.ActivePageIndex := 7;
      mPesquisa := InputBox('Pesquisa', 'Código/CNPJ/CPF Nome',mPesquisa);
      With Dados do begin
           If Clientes.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
              If Clientes.Locate('CNPJ', mPesquisa, [loCaseInsensitive]) = False then begin
                 If Clientes.Locate('CPF', mPesquisa, [loCaseInsensitive]) = False then begin
                    If Clientes.Locate('Nome', mPesquisa, [loCaseInsensitive, loPartialKey]) = False then begin
                       ShowMessage('Nenhum Cliente encontrado com "Código" "CNPJ" ou "Nome" informado !');
                       pPaginas.ActivePageIndex := 7;
                       cPesquisa.SetFocus;
                       Abort;
                    End;
                 End;
              End;
           End;

           Estados.Locate('Codigo', ClientesEstado.Value, [loCaseInsensitive]);
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;
      End;

      cSaldoLimite.Value := (Dados.ClientesLimite_Credito.Value - Dados.ClientesLimite_Utilizado.Value);
end;

procedure TCadastro_Clientes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.ClientesCodigo.AsString;
      Menu_Principal.mMem_Cliente := Dados.ClientesCodigo.Value;
      If mNFECodigo = 0 then begin
         If not mTabAberta then begin
            Dados.Clientes.Close;
            Dados.Paises.Close;
            Dados.Estados.Close;
         End;   
      End;
      
      LimpaMemoria;   
      Cadastro_Clientes.Release;
      Cadastro_Clientes := nil;
end;

procedure TCadastro_Clientes.cIsentoClick(Sender: TObject);
begin
      If (Dados.Clientes.State = dsEdit) or (Dados.Clientes.State = dsInsert) then begin
         If cIsento.Checked = True then begin
            Dados.ClientesInscricao_Estadual.Clear;
         End;
         cIE.Enabled := not cIsento.Checked;
      End;   
end;

procedure TCadastro_Clientes.cIEExit(Sender: TObject);
begin
      If Dados.ClientesEstado.Value <> 'EX' then begin
         If VerificaIE(Dados.ClientesEstado.AsString, Dados.ClientesInscricao_Estadual.AsString) = False then begin
            MessageDlg('Inscrição Estadual do Estado '+Dados.EstadosDe_Do.AsString+' '+Dados.EstadosNome.AsString+' incorreta!', mtError, [mbok],0);
         End;
      End;
end;

procedure TCadastro_Clientes.cEstadoClick(Sender: TObject);
begin
      Dados.ClientesTrader_Comissao.Value := Dados.ComissoesValor.Value;
end;

procedure TCadastro_Clientes.cEstadoExit(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           Municipios.Close;
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;

           If Trim(ClientesTrabalho_Estado.AsString) = '' then ClientesTrabalho_Estado.Value := ClientesEstado.Value;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Clientes.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Clientes.DBLookupComboBox6Exit(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     MunicipioEntrega.SQL.Clear;
     MunicipioEntrega.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
     MunicipioEntrega.ParamByName('pEstado').AsInteger := EstadoEntregaNumero.Value;
     MunicipioEntrega.Open;
     Screen.Cursor := crDefault;
end;

procedure TCadastro_Clientes.NavegaContaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      NavegaConta.SetFocus;
      with Dados, dmContab do begin
           if Button = nbPost then begin
              if Trim(cCodModal.Text) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a modalidade.', mtError, [mbOK], 0);
                 cCodModal.SetFocus;
                 Abort;
              end;
              ClientesModalCliente.value := ClientesCodigo.value;
           end;
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente remover esta modalidade do cliente?', mtConfirmation, [mbYES, mbNO], 0) = mrno then
                 abort;
           end;
           if (Button = nbPost) and (ClientesModal.State = dsInsert) then begin
              with tCodigo do begin
                   sql.Clear;
                   sql.Add('select Count(*) as Qtde from ClientesModalidades where Cliente = :pCli and Codigo = :pCod');
                   ParamByName('pCli').AsInteger := ClientesCodigo.asinteger;
                   ParamByName('pCod').AsInteger := ClientesModal.FieldbyName('Codigo').asinteger;
                   Open;
                   if FieldByName('Qtde').asinteger > 0 then begin
                      MessageDlg('Modalidade ja informada!', mtError, [mbOK], 0);
                      cCodModal.SetFocus;
                      Abort;
                   end;
              end;
           end;
      end;
end;

procedure TCadastro_Clientes.NavegaContaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i: Integer;
begin
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             NavegaConta.Controls[i].Enabled := False;
         end;

         Panel6.Enabled := true;
         Panel1.Enabled := false;
         //bPlano.Enabled := false;
         cCodModal.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Panel6.Enabled := false;
         Panel1.Enabled := true;
         //bPlano.Enabled := true;
      end;
end;

procedure TCadastro_Clientes.cCPFExit(Sender: TObject);
begin
       If (VerificaCPF(cCPF.Text) = False) and (Trim(cCPF.Text) <> '') then begin
          MessageDlg('Número de CPF inválido!', mtError, [mbok],0);
          cCPF.SetFocus;
          Abort;
       End;

       // Verifica se ha outro cliente com o mesmo número de CPF.
       If Dados.ClientesCPF.Value <> '' then begin
          tClientes.SQL.Clear;
          tClientes.SQL.Add('SELECT * FROM Clientes WHERE (Nome <> :pNome) and (CPF = :pCPF)');
          tClientes.ParamByName('pNome').AsString := Dados.ClientesNome.AsString;
          tClientes.ParamByName('pCPF').AsString := Dados.ClientesCPF.AsString;
          tClientes.Open;
          If tClientes.RecordCount <> 0 then begin
             MessageDlg('Já existe outro clientes com este número de CPF.'+#13+#13+tClientes.FieldByName('Nome').AsString, mtError, [mbOK], 0);
             cCPF.SetFocus;
          End;
       End;
end;

procedure TCadastro_Clientes.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      If (Key = VK_INSERT) then begin
          Navega.BtnClick(nbInsert);
      end;
      If (Key = VK_F2) then begin
          Navega.BtnClick(nbEdit);
      end;
      If (Key = VK_ESCAPE) then begin
          Navega.BtnClick(nbCancel);
      end;
end;

procedure TCadastro_Clientes.StaticText31Click(Sender: TObject);
begin
      Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
      Cadastro_PlanoContas.Caption := Caption;
      Cadastro_PlanoContas.ShowModal;
      Dados.ClientesConta_Ativo.value := Menu_Principal.mMem_PlanoContas;
end;

procedure TCadastro_Clientes.SpeedButton1Click(Sender: TObject);
var
  jsonObject: TJsonObject;
begin
     if trim(cCNPJ.Text) = '' then
        abort;

     RESTClient1.BaseURL := 'htpps://receitaws.com.br/v1/cnpj/'+cCNPJ.text;
     RESTRequest1.Execute;
     JsonObject := TJSONObject.ParseJSONValue(RESTRequest1.Response.JSONText) as TJSONObject;
     if pos('Too many requests, please try again later.', RESTRequest1.Response.JSONText) > 0  then begin
        Showmessage('Sobrecarga no site!'+#13+#13+'Tente novamento em alguns minutos.');
        FreeandNil(jsonObject);
        Abort;
     end;

     if JsonObject.GetValue('status').Value = 'ERROR' then begin
        Showmessage('Erro !'+#13+#13+JsonObject.GetValue('message').Value);
     end else begin
        if JsonObject.GetValue('situacao').Value <> 'ATIVA' then begin
           Showmessage('Atenção!'+#13+#13+'A situação desse CNPJ é '+JsonObject.GetValue('situacao').Value);
        end;
        with Dados do begin
             Municipios.SQL.Clear;
             Municipios.SQL.Add('SELECT *');
             Municipios.SQL.Add('FROM   Municipios');
             Municipios.SQL.Add('WHERE  UF = '+QuotedStr(JsonObject.GetValue('uf').Value));
             Municipios.SQL.Add('AND    Nome = '+QuotedStr(JsonObject.GetValue('municipio').Value) +' COLLATE SQL_Latin1_General_CP1_CI_AI');
             Municipios.Open;

             ClientesNome.AsString          := JsonObject.GetValue('nome').Value;
             ClientesEstado.AsString        := JsonObject.GetValue('uf').Value;
             ClientesCEP.AsString           := ApenasNumeros(JsonObject.GetValue('cep').Value);
             ClientesBairro.AsString        := JsonObject.GetValue('bairro').Value;
             ClientesRua.AsString           := JsonObject.GetValue('logradouro').Value;
             ClientesComplemento.AsString   := JsonObject.GetValue('complemento').Value;
             ClientesRua_Numero.AsString    := JsonObject.GetValue('numero').Value;
             ClientesTelefone1.AsString     := ApenasNumeros(JsonObject.GetValue('telefone').Value);
             ClientesEmail.AsString         := JsonObject.GetValue('email').Value;
             ClientesMunicipio_Codigo.Value := MunicipiosCodigo.Value;
             ClientesMunicipio.AsString     := Municipios.FieldByName('Codigo').AsString;
             ClientesNome_Fantasia.AsString := JsonObject.GetValue('fantasia').Value;
             try
                 ClientesCapital_Social.Value   := StrtoCurr(StringReplace(JsonObject.GetValue('capital_social').Value, '.', ',', [rfReplaceAll, rfIgnoreCase]));
             except
                 ClientesCapital_Social.Value   := 0;
             end;
             ClientesPais.AsString          := '1058';
             ClientesMicro_Empresa.value    := JsonObject.GetValue('porte').Value = 'MICRO EMPRESA';
        end;
     end;
     FreeandNil(jsonObject);
     cEstadoExit(self);
end;

procedure TCadastro_Clientes.SpeedButton2Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND Sintetica <> 1';
      PesquisaGerais.Showmodal;
      with Dados, Clientes do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Ativo').value := Clipboard.asText;
           end;
      end;
end;

procedure TCadastro_Clientes.SpeedButton3Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND Sintetica <> 1';
      PesquisaGerais.Showmodal;
      with Dados, Clientes do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Adiantamento').value := Clipboard.asText;
           end;
      end;
end;

procedure TCadastro_Clientes.SpeedButton4Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND Sintetica <> 1';
      PesquisaGerais.Showmodal;
      with Dados, Clientes do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Devolucao').value := Clipboard.asText;
           end;
      end;
end;

procedure TCadastro_Clientes.StaticText17Click(Sender: TObject);
begin
      Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
      Cadastro_PlanoContas.Caption := Caption;
      Cadastro_PlanoContas.ShowModal;
      Dados.ClientesConta_Adiantamento.value := Menu_Principal.mMem_PlanoContas;
end;

procedure TCadastro_Clientes.StaticText38Click(Sender: TObject);
begin
      Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
      Cadastro_PlanoContas.Caption := Caption;
      Cadastro_PlanoContas.ShowModal;
      Dados.ClientesConta_Devolucao.value := Menu_Principal.mMem_PlanoContas;
end;

procedure TCadastro_Clientes.bImportarClick(Sender: TObject);
Var
    mAchou : Boolean;
begin
      mPesquisa := InputBox('Pesquisa Fornecedor', 'CNPJ/Código', mPesquisa);
      mPesquisa := Trim(ApenasNumeros(mPesquisa));

      With Dados do begin
           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.Open;

           If mPesquisa <> '' then begin
              mAchou := Fornecedores.Locate('CNPJ', mPesquisa, [loCaseInsensitive]);
              If mAchou = false then mAchou := Fornecedores.Locate('Codigo', mPesquisa, [loCaseInsensitive]);

              If mAchou = false then
                 ShowMessage('Nenhum fornecedor encontrado com o CÓDIGO ou CNPJ informados!')
              else begin
                 If MessageDlg('Deseja importar os dados de '+FornecedoresNome.AsString+ '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                    Navega.BtnClick(nbInsert);
                    ClientesNome.Value                := FornecedoresNome.Value;
                    ClientesPais.Value                := FornecedoresPais.Value;
                    ClientesEstado.Value              := FornecedoresEstado.Value;
                    ClientesMunicipio_Codigo.Value    := FornecedoresMunicipio_Codigo.Value;
                    ClientesMunicipio.Value           := FornecedoresMunicipio.Value;
                    ClientesBairro.Value              := FornecedoresBairro.Value;
                    ClientesRua.Value                 := FornecedoresRua.Value;
                    ClientesRua_Numero.Value          := FornecedoresRua_Numero.Value;
                    ClientesCEP.Value                 := FornecedoresCEP.Value;
                    ClientesCNPJ.Value                := FornecedoresCNPJ.Value;
                    ClientesInscricao_Estadual.Value  := FornecedoresInscricao_Estadual.Value;
                    ClientesIsento.Value              := FornecedoresIsento.Value;
                    ClientesInscricao_Municipal.Value := FornecedoresInscricao_Municipal.Value;
                    ClientesSUFRAMA.Value             := FornecedoresSUFRAMA.Value;
                    ClientesCPF.Value                 := FornecedoresCPF.Value;
                    ClientesRG.Value                  := FornecedoresRG.Value;
                    ClientesTelefone1.Value           := FornecedoresTelefone1.Value;
                    ClientesFAX.Value                 := FornecedoresFAX.Value;
                    ClientesEMail.Value               := FornecedoresEMail.Value;
                    ClientesIndicador_IE.Value        := FornecedoresIndicador_IE.Value;

                    cNome.SelectAll;

                    Municipios.SQL.Clear;
                    Municipios.SQL.Add('SELECT * FROM Municipios WHERE Estado = :pEstado ORDER BY Nome');
                    Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
                    Municipios.Open;
                 End;
              End;
           End;
      End;
end;

procedure TCadastro_Clientes.DBEdit20Exit(Sender: TObject);
begin
      If (Dados.Clientes.State = dsInsert) and (Trim(Dados.ClientesEnviar_Email.AsString) <> '') then
         Dados.ClientesEnviar_Email.Value := true;
end;

procedure TCadastro_Clientes.cPesquisaChange(Sender: TObject);
begin
      With Dados do begin
           If Clientes.Locate('Nome', cPesquisa.Text, [loPartialKey]) = False then begin
              tClientes.SQL.Clear;
              tClientes.SQL.Add('SELECT * FROM Clientes WHERE(Nome LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
              tClientes.Open;
              Clientes.Locate('Codigo', tClientes.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
           End;
      End;
end;

procedure TCadastro_Clientes.DBEdit1Change(Sender: TObject);
Var
   i:Integer;
begin
      with Dados do begin
           GradeSPC.DisableScroll;
           SPC.SQL.Clear;
           SPC.SQL.Add('SELECT * FROM ConsultaSPC WHERE(Cliente = :pCodigo) ORDER BY Data');
           SPC.ParamByName('pCodigo').AsInteger := ClientesCodigo.AsInteger;
           SPC.Open;
           GradeSPC.EnableScroll;

           ClientesDOC.SQL.Clear;
           ClientesDOC.SQL.Add('SELECT * FROM ClientesDocumentos WHERE Cliente = :pCodigo');
           ClientesDOC.ParamByName('pCodigo').AsInteger := ClientesCodigo.AsInteger;
           ClientesDOC.Open;

           cListaDoc.Items.Clear;
           for i := 1 to ClientesDoc.RecordCount do begin
               cListaDoc.Items.Add(ClientesDocDocumento.AsString);
               ClientesDoc.Next;
           end;

           // Pega modalidades de importação.
           with ClientesModal do begin
                sql.clear;
                sql.add('select * from ClientesModalidades where Cliente = :pCodigo order by Codigo');
                ParamByName('pCodigo').asinteger := ClientesCodigo.asinteger;
                open;
           end;
           cSaldoLimite.Value := (Dados.ClientesLimite_Credito.Value - Dados.ClientesLimite_Utilizado.Value);
      end;
end;

procedure TCadastro_Clientes.cDataSPCChange(Sender: TObject);
begin
      bAdicionarSPC.Enabled := Trim(RemoveCaracter('/', '', cDataSPC.Text)) <> '';
end;

procedure TCadastro_Clientes.bAdicionarSPCClick(Sender: TObject);
begin
      With Dados do begin
           tSPC.SQL.Clear;
           tSPC.SQL.Add('SELECT MAX(Registro) AS Registro FROM ConsultaSPC');
           tSPC.Open;
           SPC.Append;
               SPCRegistro.Value      := tSPC.FieldByName('Registro').AsInteger + 1;
               SPCCliente.Value       := ClientesCodigo.AsInteger;
               SPCData.Value          := cDataSPC.Date;
               SPCObservacao.AsString := cObservacaoSPC.Text;
           SPC.Post;
           tSPC.Close;
      End;
end;

procedure TCadastro_Clientes.Adicionar1Click(Sender: TObject);
begin
      If bAdicionarSPC.Enabled = true then bAdicionarSPC.Click;
end;

procedure TCadastro_Clientes.Excluir1Click(Sender: TObject);
begin
      Dados.SPC.Delete;
end;

procedure TCadastro_Clientes.Alterar1Click(Sender: TObject);
begin
      Dados.SPC.Edit;
      GradeSPC.EditorMode := true;
end;

procedure TCadastro_Clientes.DBEdit14Change(Sender: TObject);
begin
      With Dados do begin
           If (Clientes.State = dsInsert) or (Clientes.State = dsEdit) then begin
              If ClientesDesconto_OperacionalValor.AsFloat <> 0 then begin
                 ClientesDesconto_OperacionalValor.AsFloat := 0;
              End;
           End;
      End;
end;

procedure TCadastro_Clientes.DBEdit15Change(Sender: TObject);
begin
      With Dados do begin
           If (Clientes.State = dsInsert) or (Clientes.State = dsEdit) then begin
              If ClientesDesconto_AdicionalValor.AsFloat <> 0 then begin
                 ClientesDesconto_AdicionalValor.AsFloat := 0;
              End;
           End;
      End;
end;

procedure TCadastro_Clientes.DBEdit13Exit(Sender: TObject);
begin
      With Dados do begin
           If (Clientes.State = dsInsert) or (Clientes.State = dsEdit) then begin
              If ClientesMargem_Lucro.AsFloat <> 0 then begin
                 ClientesMargem_LucroValor.AsFloat := 0;
              End;
           End;
      End;
end;

procedure TCadastro_Clientes.bCopiarClick(Sender: TObject);
var
  i: Integer;
begin
     If MessageDlg('Confirma "COPIAR" os dados deste cliente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        With Dados do begin
             tClientes.SQL.Clear;
             tClientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo = :pCodigo)');
             tClientes.ParamByName('pCodigo').AsInteger := ClientesCodigo.AsInteger;
             tClientes.Open;

             Clientes.Append;
                      For i := 0 to (Clientes.FieldCount -1) do begin
                          Clientes.Fields[i].Value := tClientes.FieldByName(Clientes.Fields[i].FieldName).Value;
                      End;

                      tCodigo.SQL.Clear;
                      tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Clientes');
                      tCodigo.Open;

                      ClientesCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
                      ClientesAtivo.Value  := true;
             Clientes.Post;
             Clientes.Refresh;
             Clientes.Locate('Codigo', tCodigo.FieldByName('Codigo').AsInteger+1, [loCaseInsensitive]);
             pPaginas.ActivePageIndex := 0;
        End;
     End;
end;

procedure TCadastro_Clientes.GradeClientesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
      With Dados do Begin
           If Clientes.FieldByName('Ativo').Value = false then begin
              GradeClientes.Canvas.Font.Color := clSilver;
              GradeClientes.Canvas.Font.Style := [fsItalic];
           End;
           GradeClientes.DefaultDrawDataCell(Rect, GradeClientes.Columns[Datacol].Field, State);
      End;
end;

procedure TCadastro_Clientes.cCEPChange(Sender: TObject);
begin
      bPesquisaCEP.Enabled := Length(Trim(cCEP.Text)) = 8;
end;

procedure TCadastro_Clientes.cIEKeyPress(Sender: TObject; var Key: Char);
begin
//     if not ( CharInSet(Key, ['0'..'9', chr(8)]) ) then Key:=#0;
end;

{
procedure TCadastro_Clientes.AbreConta;
Var
    mNat,
    mTerceiros: String;
    i: Integer;
begin
      with Dados, dmContab do begin
           // Verifica pelo CNPJ se o cliente ja teve conta criada, nos casos em que há varias matrizes.
           mExiste := False;
           if Trim(ClientesCNPJ.AsString) <> '' then begin
              if ConfiguracaoContab_FilialCliente.Value = False then begin
                 tClientes.SQL.Clear;
                 tClientes.SQL.Add('select * from Clientes where substring(CNPJ,1,8) = :pCNPJ and Codigo <> :pCodigo');
                 tClientes.ParamByName('pCNPJ').AsString    := Copy(ClientesCNPJ.AsString,1,8);
                 tClientes.ParamByName('pCodigo').Asinteger := ClientesCodigo.Asinteger;
                 tClientes.Open;
                 mExiste := tClientes.RecordCount <> 0;

                 // Se encontrar um cliente ja cadastrado pelo CNPJ, registra os números das contas no novo.
                 if tClientes.RecordCount <> 0 then begin
                    ClientesConta_Ativo.Value        := tClientes.FieldByName('Conta_Ativo').AsAnsiString;
                    ClientesConta_Adiantamento.Value := tClientes.FieldByName('Conta_Adiantamento').AsAnsiString;
                    ClientesConta_Devolucao.Value    := tClientes.FieldByName('Conta_Devolucao').AsAnsiString;
                 end;
              end;
           end;
           if not mExiste then begin
              // Abre a conta do cliente no plano de contas se estiver parâmetrizado.
              with ClientesModal do begin
                   while not eof do begin
                         TiposProcesso.locate('Codigo', FieldByName('Codigo').asinteger, [loCaseInsensitive]);
                         for i := 1 to 3 do begin
                             SalvaConta(i);
                         end;
                         next;
                   end;
              end;
           end;
      end;
end;
}
procedure TCadastro_Clientes.bFiliaisClick(Sender: TObject);
begin
      Cadastro_ClientesFiliais := TCadastro_ClientesFiliais.Create(Self);
      Cadastro_ClientesFiliais.Caption := Caption;
      Cadastro_ClientesFiliais.ShowModal;
end;

procedure TCadastro_Clientes.bDocumentoClick(Sender: TObject);
Var
   i: Integer;
begin
      With Dados do begin
           If OpenDialog1.Execute then begin
              For i := 0 to OpenDialog1.Files.Count-1 do begin
                  cListaDoc.Items.Add(OpenDialog1.Files[i]);
              End;
           End;
      End;
end;

procedure TCadastro_Clientes.BitBtn1Click(Sender: TObject);
begin
     cListaDoc.Clear;
end;

procedure TCadastro_Clientes.cLimiteExit(Sender: TObject);
begin
     cSaldoLimite.Value := (Dados.ClientesLimite_Credito.Value - Dados.ClientesLimite_Utilizado.Value);
end;

procedure TCadastro_Clientes.cListaDOCDblClick(Sender: TObject);
begin
      ShellExecute(Handle, 'Open', PChar(cListaDoc.Items[cListaDoc.ItemIndex]), '', '', SW_ShowNormal);
end;

procedure TCadastro_Clientes.GradeClientesCellClick(Column: TColumn);
begin
      With Dados do begin
           Estados.Locate('Codigo', ClientesEstado.AsString, [loCaseInsensitive]);

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE(Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;
      End;
end;

procedure TCadastro_Clientes.bLimiteClick(Sender: TObject);
var
   tTemp:TMSQuery;
begin
     if MessageDlg('Atenção!'+#13+#13+'Isso ira atualizar o saldo de limite de crédito de todos os Cliente?'+#13+#13+'Deseja continuar?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
        Abort;
     end;
     try
        tTemp := TMSQuery.Create(nil);
        with tTemp do begin
             Connection := Dados.Banco_Empresas;
             sql.clear;
             sql.add('select Cliente');
             sql.add('      ,Compras = Valor_Total');
             sql.add('      ,Baixas  = isnull((select sum(Valor) from PagarReceberBaixas prb where prb.Numero = pr.Numero), 0)');
             sql.add('into #temp');
             sql.add('from  PagarReceber pr');
             sql.add('where Tipo = ''R'' ');
             sql.add('and isnull((select sum(Valor) from PagarReceberBaixas prb where prb.Numero = pr.Numero), 0) < pr.Valor_Total');
             sql.add('select Cliente');
             sql.add('      ,Utilizado = sum(Compras-Baixas)');
             sql.add('into #temp2');
             sql.add('from #temp');
             sql.add('group by Cliente');
             sql.add('select * from #temp2');
             sql.add('order by Cliente');
             sql.add('update Clientes set Limite_Utilizado = (select Utilizado from #temp2 where #Temp2.Cliente = clientes.Codigo)');
             sql.add('drop table #temp, #temp2');
             execute;
        end;
        messagedlg('Atualização terminada com sucesso!', mtinformation, [mbok], 0);
     except 
        messagedlg('Falha na Atualização, contacte o suporte técnico da Cybersoft!', mterror, [mbok], 0);
     end;
     pPaginas.ActivePage := TabSheet6;
end;

procedure TCadastro_Clientes.bPesquisaCEPClick(Sender: TObject);
var
  ws: AtendeCliente;
  Endereco: TEndereco;
begin
      ws := GetAtendeCliente();
      try
          Endereco := ws.consultaCEP(cCEP.Text);
          with Dados do begin
               ClientesEstado.AsString      := Endereco.uf;
               ClientesRua.AsString         := Endereco.logradouro;
               ClientesBairro.AsString      := Endereco.bairro;
               ClientesComplemento.AsString := Endereco.complemento;
               ClientesMunicipio.AsString   := Endereco.cidade;

               Estados.Locate('Codigo', ClientesEstado.AsString, [loCaseInsensitive]);

               Municipios.SQL.Clear;
               Municipios.SQL.Add('SELECT * FROM Municipios WHERE(Estado = :pEstado) ORDER BY Nome');
               Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
               Municipios.Open;

               Municipios.Locate('Estado;Nome', VarArrayOf([EstadosNumero.Value, ClientesMunicipio.value]), [loCaseInsensitive]);
               ClientesMunicipio_Codigo.Value := MunicipiosCodigo.AsInteger;
               ClientesPais.Value             := '1058';
          end;
      except
          ShowMessage('Atenção! '+#13+#13+
                      'Houve falha na consulta do CEP no site dos CORREIOS.'+#13+#13+
                      'CEP:'+cCEP.Text+' não encontrado.');
      end;
end;
{
procedure TCadastro_Clientes.SalvaConta(Campo: integer);
var
    mTerceiros
   ,mnat:string;
begin
     with Dados, dmContab do begin
          with tContaPlano do begin
               sql.Clear;
               sql.Add('select * from PlanoContas where Codigo = :pCodigo' );
               if Campo = 1 then ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_Cliente').asstring;
               if Campo = 2 then ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_ClienteAdiantamento').asstring;
               if Campo = 3 then ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_ClienteDevolucao').asstring;
               Open;
          end;

          if tContaPlano.RecordCount > 0 then begin
             mNat       := tContaPlano.FieldByName('Natureza').AsString;
             mTerceiros := UpperCase(Trim(tContaPlano.FieldByName('Tipo_Terceiros').AsString));
             mConta     := tContaPlano.FieldByName('Conta').AsString;

             // Pegando o número da última conta criada.
             tContaPlano.SQL.Clear;
             tContaPlano.SQL.Add('select max(cast(Conta as bigint)) as Conta from PlanoContas where (Conta like :pGrupo)' );
             tContaPlano.ParamByName('pGrupo').AsString := mConta;
             tContaPlano.Open;

             If Configuracao.FieldByName('Contab_ContaNova').AsBoolean then
                mConta := inttostr(tContaPlano.FieldByName('Conta').asinteger + 1)
             else
                mConta := tContaPlano.FieldByName('Conta').AsString;

             tContaPlano.SQL.Clear;
             tContaPlano.SQL.Add('select Codigo, Conta from PlanoContas where Conta like :pConta and Descricao like :pDesc' );
             tContaPlano.ParamByName('pConta').value   := AnsiString(mConta);
             tContaPlano.ParamByName('pDesc').AsString := trim(Clientes.FieldByName('Nome').asstring);
             tContaPlano.Open;

             if tContaPlano.RecordCount = 0 then begin
                // Pegando o número do último código criado no (Plano Principal/Terceiros).
//                tCodigoPlano.SQL.Clear;
//                tCodigoPlano.SQL.Add('select isnull(max(cast(Codigo as int)), 0)+1 as Codigo from PlanoContas where substring(Conta, 1, 1) = :pconta');
//                tCodigoPlano.ParamByName('pConta').AsString := Copy(mConta, 1, 1);
//                tCodigoPlano.Open;
                tCodigoPlano.SQL.Clear;
                tCodigoPlano.SQL.Add('select isnull(max(cast(Codigo as int)), 0)+1 as Codigo from PlanoContas');
                tCodigoPlano.Open;

                PlanoContas.Append;
                            PlanoContasConta.Value             := AnsiString(mConta);
                            PlanoContasCodigo.Value            := tCodigoPlano.FieldByName('Codigo').AsAnsiString;
                            PlanoContasDescricao.Value         := ansistring(trim(Clientes.FieldByName('Nome').asstring));
                            PlanoContasSaldo_Anterior.Value    := 0;
                            PlanoContasDebito.Value            := 0;
                            PlanoContasCredito.Value           := 0;
                            PlanoContasSintetica.Value         := False;
                            PlanoContasNatureza.AsString       := mNat;
                            PlanoContasLALUR.Value             := False;
                            PlanoContasMostrar_Balanco.Value   := False;
                            PlanoContasImprimir_Razao.Value    := False;
                            PlanoContasEmpresa.Value           := ansistring(EmpresasCNPJ.asstring);
//                            PlanoContasAtualiza_Anterior.Value := 0;
//                            PlanoContasAtualiza_Debito.Value   := 0;
//                            PlanoContasAtualiza_Credito.Value  := 0;
                            PlanoContasData_Inclusao.Value     := Date;
                            PlanoContasOrigem.value            := ansistring(PoeZero(2, StrtoInt(Copy(mConta, 1,1))));
                            PlanoContasCodigo_Terceiros.Value  := Clientes.FieldByName('Codigo').AsAnsiString;
                            PlanoContasGrupo.Value             := Copy(PlanoContasConta.Value, 1, 1);
                            PlanoContasTipo_Terceiros.Value    := ansistring(iif(ClientesPais.AsInteger = 1058, 'CN', 'CE'));
                            PlanoContasCNPJ_CPF.AsString       := trim(ClientesCNPJ.asstring) + trim(ClientesCPF.asstring);
                            PlanoContasPessoa.Value            := ansistring(iif(trim(ClientesCNPJ.Asstring) <> '', 'J', 'F'));
                            PlanoContasSelecao.Value           := false;
                            PlanoContasConta_Resultado.Value   := false;
                            PlanoContasDRE.Value               := false;
                            PlanoContasNivel.Value             := NivelConta(mConta, EmpresasMascara_PlanoContas.value);
                            PlanoContasConta_Grupo.value       := GrupoConta(mConta, EmpresasMascara_PlanoContas.value, PlanoContasNivel.AsInteger);
                PlanoContas.Post;

                tCodigoPlano.Close;
                tContaPlano.Close;

                // Registra a conta aberta no plano, no cadastro do cliente.
                with ClientesModal do begin
                     edit;
                         if Campo = 1 then FieldByName('Conta_Ativo').Value        := PlanoContasCodigo.Value;
                         if Campo = 2 then FieldByName('Conta_Adiantamento').Value := PlanoContasCodigo.Value;
                         if Campo = 3 then FieldByName('Conta_Devolucao').Value    := PlanoContasCodigo.Value;
                     Post;
                end;
             end else begin
                // Registra a conta aberta no plano, no cadastro do cliente.
                 with ClientesModal do begin
                      edit;
                         if Campo = 1 then FieldByName('Conta_Ativo').Value        := tContaPlano.fieldbyName('Codigo').asstring;
                         if Campo = 2 then FieldByName('Conta_Adiantamento').Value := tContaPlano.fieldbyName('Codigo').asstring;
                         if Campo = 3 then FieldByName('Conta_Devolucao').Value    := tContaPlano.fieldbyName('Codigo').asstring;
                      Post;
                 end;
             end;
          end;
     end;
end;
}

end.
