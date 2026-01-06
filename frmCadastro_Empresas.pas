unit frmCadastro_Empresas;

interface
      
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, Mask, DB, DBAccess, MSAccess, FUNCOES, Vcl.ComCtrls, RXCtrls,
  NFe_Util_2G_Tlb,Buttons, RXDBCtrl, IdTCPConnection, IdSMTP, IdMessage, IdIOHandler, IdSSLOpenSSL, RxDBComb,  IdSSL,  IdIOHandlerStack, Menus, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdIOHandlerSocket, IdBaseComponent, jpeg, idText, RxToolEdit, MemDS, System.UITypes, IdComponent, IdSMTPBase;

type
  TCadastro_Empresas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tCodigo: TMSQuery;
    tCodigoCodigo: TIntegerField;
    Pasta: TPageControl;
    pCadastrais: TTabSheet;
    pParametros: TTabSheet;
    StaticText21: TStaticText;
    cDuplicata: TDBEdit;
    StaticText33: TStaticText;
    cNFServico: TDBEdit;
    StaticText32: TStaticText;
    DBEdit28: TDBEdit;
    StaticText29: TStaticText;
    DBEdit25: TDBEdit;
    StaticText30: TStaticText;
    DBEdit26: TDBEdit;
    StaticText31: TStaticText;
    StaticText24: TStaticText;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    cCodigo: TDBEdit;
    cNome: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    cCNPJ: TDBEdit;
    cIE: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    cEstado: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    StaticText16: TStaticText;
    cComplemento: TDBEdit;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    DBEdit14: TDBEdit;
    DBEdit30: TDBEdit;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    cMatriz: TDBCheckBox;
    cNumero_Filial: TDBEdit;
    StaticText42: TStaticText;
    StaticText43: TStaticText;
    DBEdit7: TDBEdit;
    StaticText45: TStaticText;
    DBEdit36: TDBEdit;
    StaticText44: TStaticText;
    cMunicipio: TDBLookupComboBox;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    DBEdit38: TDBEdit;
    StaticText48: TStaticText;
    DBEdit39: TDBEdit;
    pContabilista: TTabSheet;
    StaticText26: TStaticText;
    cContador_Nome: TDBEdit;
    StaticText27: TStaticText;
    DBEdit23: TDBEdit;
    StaticText28: TStaticText;
    DBEdit24: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    StaticText52: TStaticText;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    StaticText56: TStaticText;
    StaticText57: TStaticText;
    StaticText58: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBDateEdit1: TDBDateEdit;
    StaticText59: TStaticText;
    DBEdit13: TDBEdit;
    StaticText60: TStaticText;
    DBEdit27: TDBEdit;
    DBEdit46: TDBEdit;
    StaticText62: TStaticText;
    StaticText63: TStaticText;
    cBancoDados: TDBEdit;
    StaticText22: TStaticText;
    DBEdit29: TDBEdit;
    cLicenca: TDBMemo;
    StaticText23: TStaticText;
    cProcesso: TDBEdit;
    cProcessoAutomatico: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    pSPEDFiscal: TTabSheet;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    StaticText39: TStaticText;
    DBDateEdit2: TDBDateEdit;
    StaticText64: TStaticText;
    cRegime: TComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    StaticText65: TStaticText;
    DBEdit16: TDBEdit;
    StaticText66: TStaticText;
    DBLookupComboBox5: TDBLookupComboBox;
    StaticText67: TStaticText;
    bCopiaContador: TButton;
    tCopia: TMSQuery;
    pRede: TTabSheet;
    StaticText41: TStaticText;
    cWebService: TDBComboBox;
    GroupBox1: TGroupBox;
    bCertificado: TBitBtn;
    bLimpar: TBitBtn;
    StaticText40: TStaticText;
    cDataDoc: TDBDateEdit;
    DBCheckBox2: TDBCheckBox;
    DBComboBox1: TDBComboBox;
    StaticText73: TStaticText;
    DBEdit33: TDBEdit;
    StaticText76: TStaticText;
    DBComboBox3: TDBComboBox;
    StaticText77: TStaticText;
    DBDateEdit3: TDBDateEdit;
    DBCheckBox3: TDBCheckBox;
    StaticText78: TStaticText;
    DBEdit34: TDBEdit;
    StaticText80: TStaticText;
    DBEdit35: TDBEdit;
    StaticText81: TStaticText;
    DBEdit37: TDBEdit;
    StaticText82: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    DBCheckBox6: TDBCheckBox;
    DBRadioGroup4: TDBRadioGroup;
    StaticText83: TStaticText;
    DBEdit51: TDBEdit;
    StaticText84: TStaticText;
    DBEdit52: TDBEdit;
    StaticText85: TStaticText;
    DBLookupComboBox7: TDBLookupComboBox;
    DBComboBox4: TDBComboBox;
    StaticText86: TStaticText;
    StaticText87: TStaticText;
    DBComboBox5: TDBComboBox;
    StaticText88: TStaticText;
    DBComboBox6: TDBComboBox;
    GroupBox2: TGroupBox;
    StaticText91: TStaticText;
    cLogo: TFilenameEdit;
    StaticText25: TStaticText;
    DBEdit50: TDBEdit;
    Panel2: TPanel;
    iLogo: TImage;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    StaticText92: TStaticText;
    DBComboBox7: TDBComboBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    cAmbNFe: TDBRadioGroup;
    cAmbGNRE: TDBRadioGroup;
    StaticText38: TStaticText;
    DBComboBox8: TDBComboBox;
    StaticText93: TStaticText;
    cQualifica: TRxDBComboBox;
    StaticText94: TStaticText;
    cCRCUF: TDBLookupComboBox;
    StaticText95: TStaticText;
    DBDateEdit4: TDBDateEdit;
    StaticText96: TStaticText;
    DBEdit1: TDBEdit;
    StaticText97: TStaticText;
    DBEdit53: TDBEdit;
    DBDateEdit5: TDBDateEdit;
    pRepresentante: TTabSheet;
    StaticText100: TStaticText;
    cRepresNome: TDBEdit;
    StaticText101: TStaticText;
    DBEdit57: TDBEdit;
    StaticText102: TStaticText;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    StaticText103: TStaticText;
    StaticText104: TStaticText;
    StaticText105: TStaticText;
    StaticText106: TStaticText;
    StaticText107: TStaticText;
    StaticText108: TStaticText;
    StaticText109: TStaticText;
    StaticText110: TStaticText;
    StaticText111: TStaticText;
    StaticText112: TStaticText;
    DBLookupComboBox8: TDBLookupComboBox;
    StaticText113: TStaticText;
    DBLookupComboBox9: TDBLookupComboBox;
    StaticText114: TStaticText;
    RxDBComboBox2: TRxDBComboBox;
    StaticText115: TStaticText;
    DBLookupComboBox10: TDBLookupComboBox;
    StaticText116: TStaticText;
    DBDateEdit6: TDBDateEdit;
    StaticText117: TStaticText;
    DBEdit68: TDBEdit;
    Button1: TButton;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    TabSheet1: TTabSheet;
    cAutCNPJ: TDBMemo;
    Label1: TLabel;
    DBMemo8: TDBMemo;
    StaticText118: TStaticText;
    StaticText119: TStaticText;
    DBMemo9: TDBMemo;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    cPerfil: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    TabSheet3: TTabSheet;
    DBCheckBox7: TDBCheckBox;
    TabSheet4: TTabSheet;
    DBRadioGroup6: TDBRadioGroup;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    DBCheckBox12: TDBCheckBox;
    StaticText98: TStaticText;
    DBEdit54: TDBEdit;
    StaticText99: TStaticText;
    DBEdit55: TDBEdit;
    DBRadioGroup8: TDBRadioGroup;
    TabSheet5: TTabSheet;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    StaticText120: TStaticText;
    cClassTrib: TRxDBComboBox;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup12: TDBRadioGroup;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    DBEdit56: TDBEdit;
    DBEdit69: TDBEdit;
    StaticText121: TStaticText;
    StaticText122: TStaticText;
    RxDBComboBox4: TRxDBComboBox;
    StaticText123: TStaticText;
    StaticText124: TStaticText;
    RxDBComboBox5: TRxDBComboBox;
    StaticText125: TStaticText;
    StaticText126: TStaticText;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    RxDBComboBox6: TRxDBComboBox;
    StaticText127: TStaticText;
    StaticText128: TStaticText;
    RxDBComboBox7: TRxDBComboBox;
    StaticText129: TStaticText;
    DBEdit72: TDBEdit;
    StaticText130: TStaticText;
    DBEdit73: TDBEdit;
    DBCheckBox13: TDBCheckBox;
    StaticText131: TStaticText;
    DBEdit74: TDBEdit;
    StaticText132: TStaticText;
    dbedt8: TDBEdit;
    DBCheckBox14: TDBCheckBox;
    StaticText133: TStaticText;
    DBEdit76: TDBEdit;
    DBRadioGroup13: TDBRadioGroup;
    DBCheckBox15: TDBCheckBox;
    StaticText134: TStaticText;
    DBEdit77: TDBEdit;
    cAss: TGroupBox;
    StaticText135: TStaticText;
    cAssinatura: TFilenameEdit;
    Panel3: TPanel;
    iAssinatura: TImage;
    Shape1: TShape;
    RxDBComboBox3: TRxDBComboBox;
    StaticText136: TStaticText;
    bBloqueio: TBitBtn;
    DBRadioGroup14: TDBRadioGroup;
    DBCheckBox16: TDBCheckBox;
    DBRadioGroup15: TDBRadioGroup;
    StaticText137: TStaticText;
    DBEdit75: TDBEdit;
    StaticText138: TStaticText;
    DBComboBox9: TDBComboBox;
    StaticText139: TStaticText;
    DBMemo1: TDBMemo;
    StaticText140: TStaticText;
    DBComboBox10: TDBComboBox;
    SMTP: TIdSMTP;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;
    EmailMSg: TIdMessage;
    pEmail: TTabSheet;
    StaticText142: TStaticText;
    cEmail: TDBEdit;
    StaticText143: TStaticText;
    StaticText144: TStaticText;
    DBEdit79: TDBEdit;
    StaticText145: TStaticText;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    StaticText146: TStaticText;
    DBMemo10: TDBMemo;
    StaticText147: TStaticText;
    DBMemo11: TDBMemo;
    StaticText148: TStaticText;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    StaticText149: TStaticText;
    StaticText150: TStaticText;
    DBMemo12: TDBMemo;
    StaticText151: TStaticText;
    RxDBComboBox8: TRxDBComboBox;
    StaticText152: TStaticText;
    DBMemo13: TDBMemo;
    StaticText153: TStaticText;
    DBMemo14: TDBMemo;
    StaticText154: TStaticText;
    DBMemo15: TDBMemo;
    RxDBComboBox9: TRxDBComboBox;
    StaticText155: TStaticText;
    StaticText156: TStaticText;
    DBMemo16: TDBMemo;
    bTestarEmail2: TBitBtn;
    DBCheckBox4: TDBCheckBox;
    cConSeg: TDBCheckBox;
    StaticText19: TStaticText;
    DBEdit20: TDBEdit;
    cFCP_Interno: TDBCheckBox;
    bBloqueioPed: TBitBtn;
    StaticText20: TStaticText;
    DBMemo2: TDBMemo;
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure cCNPJExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cIEExit(Sender: TObject);
    procedure cEstadoExit(Sender: TObject);
    procedure cMatrizClick(Sender: TObject);
    procedure bCertificadoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cProcessoAutomaticoClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure bCopiaContadorClick(Sender: TObject);
    procedure bTestarEmail2Click(Sender: TObject);
    procedure cLogoExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bBloqueioClick(Sender: TObject);
    procedure cAssinaturaExit(Sender: TObject);
    procedure bBloqueioPedClick(Sender: TObject);
  private
    { Private declarations }
    mEmail:string;
  public
    { Public declarations }
  end;

var
  Cadastro_Empresas: TCadastro_Empresas;
  mensagem: Widestring;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_Empresas.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_Empresas.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then begin
            Dados.EmpresasProcesso_Automatico.Value := False;
            Dados.EmpresasCodigo_Reduzido.Value     := False;
            Dados.EmpresasAmbiente.Value            := 2;
         End;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         pCadastrais.Enabled    := True;
         pParametros.Enabled    := True;
         pContabilista.Enabled  := True;
         pRepresentante.Enabled := true;
         pSPEDFiscal.Enabled    := True;
         pRede.Enabled          := True;
         pEmail.Enabled         := True;
         Case Pasta.ActivePageIndex of
              0: cNome.SetFocus;
              1: cContador_Nome.SetFocus;
              2: cRepresNome.SetFocus;
              3: cNFServico.SetFocus;
              4: cPerfil.SetFocus;
              5: cWebService.SetFocus;
              6: cEmail.SetFocus;
              7: cAutCNPJ.SetFocus;
         End;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         pCadastrais.Enabled    := False;
         pParametros.Enabled    := False;
         pContabilista.Enabled  := False;
         pRepresentante.Enabled := false;
         pSPEDFiscal.Enabled    := False;
         pRede.Enabled          := False;
         pEmail.Enabled         := false;
      End;
end;

procedure TCadastro_Empresas.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      Pasta.ActivePageIndex := 0;
      With Dados, dmFiscal do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas ORDER BY Razao_Social');
           Empresas.Open;

           Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);
           bBloqueio.Enabled    := EmpresasEmissaoNFE_Bloqueada.AsBoolean;             
           bBloqueioPed.Enabled := EmpresasImportarPlanPed_Bloqueado.AsBoolean;

           Estados.Open;

           Municipios.Close;
           
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado)');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;

           ModelosDocumentos.SQL.Clear;
           ModelosDocumentos.SQL.Add('SELECT * FROM ModelosDocumentos ORDER BY Descricao');
           ModelosDocumentos.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
           IncentivosFiscais.Open;

           EmpresasIE.EditMask        := EstadosMascara_Inscricao.AsString;
           Navega.Controls[7].Enabled := False;
           cLicenca.Enabled           := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';
           cAmbNFe.Enabled            := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';
           cAmbGNRE.Enabled           := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Empresas.cCNPJExit(Sender: TObject);
begin
     If (VerificaCNPJ(cCNPJ.Text) = False) and (Trim(cCNPJ.Text) <> '') then begin
        MessageDlg('Número de CNPJ incorreto!', mtError, [mbok],0);
        Navega.Controls[7].Enabled := False;
        cCNPJ.Color := clRed;
     End else begin
        If (Dados.Empresas.State = dsEdit) or (Dados.Empresas.State = dsInsert) then begin
           Navega.Controls[7].Enabled := True;
        End;
        cCNPJ.Color := clWindow;
     End;
end;

procedure TCadastro_Empresas.bPesquisaClick(Sender: TObject);
Var
    mPesquisa: String;
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Nome', mPesquisa));
     Dados.Empresas.Locate('Razao_Social', mPesquisa, [loPartialKey]);
end;

procedure TCadastro_Empresas.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      if Button = nbPost then begin
         if (Dados.Empresas.State = dsInsert) then begin
            Screen.Cursor := crSQLWait;
            tCodigo.Open;
            Dados.EmpresasCodigo.Value := tCodigoCodigo.Value+1;
            tCodigo.Close;
            Screen.Cursor := crDefault;
         end;
         if Trim(cRegime.Text) <> '' then
            Dados.EmpresasRegime_Apuracao.Value := cRegime.ItemIndex+1
         else
            Dados.EmpresasRegime_Apuracao.Clear;

         Dados.EmpresasLogo.Value       := AnsiString(cLogo.FileName);
         Dados.EmpresasAssinatura.Value := AnsiString(cAssinatura.FileName);

         //LogDados(Dados.Empresas, '('+Dados.EmpresasCodigo.AsString + ') '+Dados.EmpresasRazao_Social.AsString+ ', CNPJ'+Dados.EmpresasCNPJ.AsString, Dados.Empresas.State);
      end;
end;

procedure TCadastro_Empresas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     SetCurrentDir(ExtractFilePath(Application.ExeName));

     Dados.Empresas.SQL.Clear;
     Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
     Dados.Empresas.Execute;
     Dados.Empresas.Close;
     Dados.Estados.Close;
     Dados.Municipios.Close;

     LimpaMemoria;
//     Cadastro_Empresas.Release;
//     Cadastro_Empresas := nil;
end;

procedure TCadastro_Empresas.cIEExit(Sender: TObject);
begin
      If (VerificaIE(Dados.EmpresasEstado.AsString, Dados.EmpresasIE.AsString) = False) and (Trim(Dados.EmpresasIE.AsString) <> '') then begin
         MessageDlg('Inscrição Estadual do Estado '+Dados.EstadosDe_Do.AsString+' '+Dados.EstadosNome.AsString+' incorreta!', mtError, [mbok],0);
         Navega.Controls[7].Enabled := False;
         cIE.Color := clRed;
      End else begin
         If (Dados.Empresas.State = dsEdit) or (Dados.Empresas.State = dsInsert) then begin
            Navega.Controls[7].Enabled := True;
         End;
         cIE.Color := clWindow;
      End;
end;

procedure TCadastro_Empresas.cEstadoExit(Sender: TObject);
begin
      With Dados do Begin 
           EmpresasIE.EditMask := Dados.EstadosMascara_Inscricao.AsString;
           Municipios.Close;
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado)');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;            
      End;
end;

procedure TCadastro_Empresas.cMatrizClick(Sender: TObject);
begin
      cNumero_Filial.Enabled := not cMatriz.Checked;
      if Dados.EmpresasMatriz_Filial.Value = True then begin
         if (Dados.Empresas.State = dsEdit) or (Dados.Empresas.State = dsInsert) then begin
             Dados.EmpresasNUmero_Filial.Value := 0;
         end;
      end;
end;

procedure TCadastro_Empresas.bBloqueioPedClick(Sender: TObject);
begin
      with Dados do begin
           if MessageDlg('Deseja realmente desbloquear a importação de planilhas?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
              EmpresasImportarPlanPed_Bloqueado.value := false;
              bBloqueioPed.Enabled                    := false;
           end;
      end;
end;

procedure TCadastro_Empresas.bCertificadoClick(Sender: TObject);
var
   Util: NFe_Util_2G_Interface;
   i: integer;
   mNome,
   mMensagem,
   mResultado,
   mCNPJ,
   mSerie,
   mEmissor,
   mInicioVal,
   mFimVal,
   mTitular: WideString;
begin
     Util      := CoUtil.Create;
     mNome     := '';
     mMensagem := '';

     i := Util.PegaDadosCertificado(mNome, mResultado, mTitular, mCNPJ, mSerie, mEmissor, mInicioVal, mFimVal);

     if (i = 6001) or (i = 6002) then
        Dados.EmpresasCertificado_Digital.AsString := mNome;
     if i > 6003 then
        MessageDlg( '5404: Erro: Nenhum certificado digital selecionado'+#13+#13 + mNome, mtInformation, [mbOk], 0);

     Util := nil;
end;

procedure TCadastro_Empresas.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Empresas.cProcessoAutomaticoClick(Sender: TObject);
begin
      cProcesso.Enabled := cProcessoAutomatico.Checked;
end;

procedure TCadastro_Empresas.bLimparClick(Sender: TObject);
begin
      Dados.EmpresasCertificado_Digital.Clear;
end;

procedure TCadastro_Empresas.cCodigoChange(Sender: TObject);
begin
      cRegime.ItemIndex    := Dados.EmpresasRegime_Apuracao.Value -1;
      cLogo.FileName       := Dados.EmpresasLogo.AsString;
      cAssinatura.FileName := Dados.EmpresasAssinatura.AsString;
      iLogo.Picture        := nil;
      iAssinatura.Picture  := nil;
      if cLogo.FileName <> '' then begin
         if FileExists(cLogo.FileName) then
            iLogo.Picture.LoadFromFile(cLogo.FileName);
      end;
      if cAssinatura.FileName <> '' then begin
         if FileExists(cAssinatura.FileName) then
            iAssinatura.Picture.LoadFromFile(cAssinatura.FileName);
      end;
end;

procedure TCadastro_Empresas.bCopiaContadorClick(Sender: TObject);
Var
    mEmpresa: String;
begin
      mEmpresa := InputBox('Copiar Dados...', 'CODIGO/CNPJ:', mEmpresa);
      mEmpresa := RemoveCaracter('.', '', mEmpresa);
      mEmpresa := RemoveCaracter('/', '', mEmpresa);
      mEmpresa := RemoveCaracter('-', '', mEmpresa);
      mEmpresa := Trim(mEmpresa);

      if mEmpresa <> '' then begin
         tCopia.SQL.Clear;
         tCopia.SQL.Add('SELECT * FROM Empresas WHERE(CNPJ = :pEmpresa)');
         tCopia.ParamByName('pEmpresa').AsString := mEmpresa;
         tCopia.Open;
         if tCopia.RecordCount = 0 then begin
            tCopia.SQL.Clear;
            tCopia.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pEmpresa)');
            tCopia.ParamByName('pEmpresa').AsString := mEmpresa;
            tCopia.Open;
         end;
         if tCopia.RecordCount = 0 then begin
            ShowMessage('Nenhuma Empresa encontrada no cadastro com "CNPJ" ou "Codigo" informado!');
            Abort;
         end;
         with Dados do begin
              EmpresasContador_Nome.Value        := tCopia.FieldByName('Contador_Nome').AsAnsiString;
              EmpresasContador_CRC.Value         := tCopia.FieldByName('Contador_CRC').AsAnsiString;
              EmpresasContador_CPF.Value         := tCopia.FieldByName('Contador_CPF').AsAnsiString;
              EmpresasContador_CNPJ.Value        := tCopia.FieldByName('Contador_CNPJ').AsAnsiString;
              EmpresasContador_CEP.Value         := tCopia.FieldByName('Contador_CEP').AsAnsiString;
              EmpresasContador_Rua.Value         := tCopia.FieldByName('Contador_Rua').AsAnsiString;
              EmpresasContador_Numero.Value      := tCopia.FieldByName('Contador_Numero').AsAnsiString;
              EmpresasContador_Complemento.Value := tCopia.FieldByName('Contador_Complemento').AsAnsiString;
              EmpresasContador_Bairro.Value      := tCopia.FieldByName('Contador_Bairro').AsAnsiString;
              EmpresasContador_Municipio.Value   := tCopia.FieldByName('Contador_Municipio').AsInteger;
              EmpresasContador_Telefone.Value    := tCopia.FieldByName('Contador_Telefone').AsAnsiString;
              EmpresasContador_FAX.Value         := tCopia.FieldByName('Contador_FAX').AsAnsiString;
              EmpresasContador_Email.Value       := tCopia.FieldByName('Contador_EMail').AsAnsiString;
              EmpresasContador_Estado.Value      := tCopia.FieldByName('Contador_Estado').AsAnsiString;
         end;
      end
end;
{
procedure TCadastro_Empresas.bTestarEmail2Click(Sender: TObject);
begin
      with Dados do begin
           Menu_Principal.IdAntiFreeze1.Active := true;
           If (Dados.EmpresasEmail_Porta.AsInteger <= 0) then begin
              MessageDlg('Teste de E-Mail não executado!'+#13+#13+'Falta informar a porta.', mtError, [mbOK], 0);
              Abort;
           End;
           If (Trim(Dados.EmpresasEmail_SMTP.AsString) = '') then begin
              MessageDlg('Teste de E-Mail não executado!'+#13+#13+'Falta informar o Servidor de envio (SMTP).', mtError, [mbOK], 0);
              Abort;
           End;
           If (Trim(Dados.EmpresasEmail_ID.AsString) = '') then begin
              MessageDlg('Teste de E-Mail não executado!'+#13+#13+'Falta informar o Usuário (ID).', mtError, [mbOK], 0);
              Abort;
           End;
           If (Trim(Dados.EmpresasEmail_Senha.AsString) = '') then begin
              MessageDlg('Teste de E-Mail não executado!'+#13+#13+'Falta informar a Senha.', mtError, [mbOK], 0);
              Abort;
           End;

           mEmail := InputBox('Teste de envio de E-Mail:', 'E-Mail:', mEmail);
           
           Screen.Cursor := crHourGlass;
           with SMTP do begin
                Try
                   Host           := Trim(EmpresasEmail_SMTP.AsString);
                   Port           := EmpresasEmail_Porta.AsInteger;
                   UserName       := Trim(EmpresasEmail_ID.AsString);
                   Password       := Trim(EmpresasEmail_Senha.AsString);
                   ConnectTimeout := 10000;
                   ReadTimeout    := 10000;

                   // SSLOptions method.
                   if EmpresasEmail_Metodo.AsString = 'sslvSSLv2'   then SSLSocket.SSLOptions.Method := sslvSSLv2;
                   if EmpresasEmail_Metodo.AsString = 'sslvSSLv23'  then SSLSocket.SSLOptions.Method := sslvSSLv23;
                   if EmpresasEmail_Metodo.AsString = 'sslvSSLv3'   then SSLSocket.SSLOptions.Method := sslvSSLv3;
                   if EmpresasEmail_Metodo.AsString = 'sslvTLSv1'   then SSLSocket.SSLOptions.Method := sslvTLSv1;
                   if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_1' then SSLSocket.SSLOptions.Method := sslvTLSv1_1;
                   if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_2' then SSLSocket.SSLOptions.Method := sslvTLSv1_2;

                   // Requer autenticação
                   AuthType := satNone;
                   if EmpresasEmail_Autenticacao.AsBoolean then AuthType := satDefault;

                   // Conexão segura SSL
                   IOHandler := nil;
                   if EmpresasEmail_SSL.AsBoolean then IOHandler := SSLSocket;
                   
                   if EmpresasEmail_Criptografia.AsString = 'utNoTLSSupport'   then UseTLS := utNoTLSSupport; 
                   if EmpresasEmail_Criptografia.AsString = 'utUseExplicitTLS' then UseTLS := utUseExplicitTLS; 
                   if EmpresasEmail_Criptografia.AsString = 'utUseImplicitTLS' then UseTLS := utUseImplicitTLS; 
                   if EmpresasEmail_Criptografia.AsString = 'utUseRequireTLS'  then UseTLS := utUseRequireTLS; 
   
                   Connect();
                Except on E:Exception do
                      begin
                          ShowMessage('Teste de conexão falhou!'+#13+#13+e.Message);
                          Screen.Cursor := crDefault;
                          Abort;
                      end;
                End;

                if Trim(mEmail) <> '' then begin
                   try
                       if EmpresasEmail_Autenticacao.AsBoolean then Authenticate;
                       with EmailMSG do begin
                            Clear;
                            From.Address              := Trim(EmpresasEmail_ID.AsString);
                            Recipients.EMailAddresses := mEmail;
                            Subject                   := 'Teste de envio de E-Mail - Cybersoft ERP IMPORTA';
                            CharSet                   := 'iso-8859-1';
                            Encoding                  := MeMIME;
                            ContentType               := 'multipart/related' ;
                            subject                   := 'Teste de envio de E-Mail (Cybersoft ERP Importa).';
                       end;
                       Send(EMailMSG);
                       Showmessage('Teste enviado para o E-Mail informado...');
                   except on E:Exception do
                       begin
                           Screen.Cursor := crDefault;
                           Disconnect;
                           Showmessage('Erro de E-Mail: "Teste" Não foi enviado...'+#13+'Verifique as configurações do E-Mail.'+#13+E.Message);
                       end;
                   end;
                end;
                Disconnect;
           end;

           Menu_Principal.IdAntiFreeze1.Active := false;
           Screen.Cursor:= crDefault;
      end;
end;
}


procedure TCadastro_Empresas.bTestarEmail2Click(Sender: TObject);
var
   IdSMTP1  : TIdSMTP;
   Idmessage: TIdMessage;
   TextoMsg : TidText;
   IdSSL    : TIdSSLIOHandlerSocketOpenSSL;
begin
      Screen.Cursor := crHourGlass;

      with Dados do begin
           Menu_Principal.IdAntiFreeze1.Active := true;
           If (Dados.EmpresasEmail_Porta.AsInteger <= 0) then begin
              MessageDlg('Teste de E-Mail n o executado!'+#13+#13+'Falta informar a porta.', mtError, [mbOK], 0);
              Screen.Cursor := crDefault;
              Abort;
           End;
           If (Trim(Dados.EmpresasEmail_SMTP.AsString) = '') then begin
              MessageDlg('Teste de E-Mail n o executado!'+#13+#13+'Falta informar o Servidor de envio (SMTP).', mtError, [mbOK], 0);
              Screen.Cursor := crDefault;
              Abort;
           End;
           If (Trim(Dados.EmpresasEmail_ID.AsString) = '') then begin
              MessageDlg('Teste de E-Mail n o executado!'+#13+#13+'Falta informar o Usu rio (ID).', mtError, [mbOK], 0);
              Screen.Cursor := crDefault;
              Abort;
           End;
           If (Trim(Dados.EmpresasEmail_Senha.AsString) = '') then begin
              MessageDlg('Teste de E-Mail n o executado!'+#13+#13+'Falta informar a Senha.', mtError, [mbOK], 0);
              Screen.Cursor := crDefault;
              Abort;
           End;

           // Digitar o email de teste para envio.
           mEmail := InputBox('Teste de envio de E-Mail:', 'E-Mail:', mEmail);
           
           with idSMTP1 do begin
                IdSSL          := nil;
                IdSMTP1        := TIdSMTP.create(nil);
                ConnectTimeout := 10000;
                ReadTimeout    := 10000;
                Host           := Trim(EmpresasEmail_SMTP.AsString);
                Username       := Trim(EmpresasEmail_ID.AsString);
                Password       := Trim(EmpresasEmail_Senha.AsString);
           end;
           with idMessage do begin
                IdMessage                 := TIdMessage.create(nil);
                Clear;
                CharSet                   := 'iso-8859-1';
                Encoding                  := MeMIME;
                ContentType               := 'multipart/related' ;
                subject                   := 'Teste de envio de E-Mail (Cybersoft ERP Importa).';
                from.address              := idSMTP1.Username;
                recipients.emailaddresses := mEmail;
           end;
           with TextoMsg do begin
                textomsg    := TIdText.Create(IdMessage.MessageParts);
                Body.Text   := 'E-Mail enviado pelo sistema ERP Importa da Cybersoft Sistemas Ltda.!';
                ContentType := 'text/html';
           end;
           try
              idSMTP1.port      := EmpresasEmail_Porta.AsInteger;
              IdSSL             := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
              IdSMTP1.IOHandler := IdSSL;
              if EmpresasEmail_Criptografia.AsString = 'utNoTLSSupport'   then idSMTP1.UseTLS := utNoTLSSupport; 
              if EmpresasEmail_Criptografia.AsString = 'utUseExplicitTLS' then idSMTP1.UseTLS := utUseExplicitTLS; 
              if EmpresasEmail_Criptografia.AsString = 'utUseImplicitTLS' then idSMTP1.UseTLS := utUseImplicitTLS; 
              if EmpresasEmail_Criptografia.AsString = 'utUseRequireTLS'  then idSMTP1.UseTLS := utUseRequireTLS; 
           except on E: Exception do begin
                     Screen.Cursor     := crDefault;
                     idSMTP1.IOHandler := TIdIOHandler.MakeDefaultIOHandler(nil);
                     idSMTP1.UseTLS    := utNoTLSSupport;
                  end;
           end;

           // SSLOptions method.
           if EmpresasEmail_Metodo.AsString = 'sslvSSLv2'   then IDSSL.SSLOptions.Method := sslvSSLv2;
           if EmpresasEmail_Metodo.AsString = 'sslvSSLv23'  then IDSSL.SSLOptions.Method := sslvSSLv23;
           if EmpresasEmail_Metodo.AsString = 'sslvSSLv3'   then IDSSL.SSLOptions.Method := sslvSSLv3;
           if EmpresasEmail_Metodo.AsString = 'sslvTLSv1'   then IDSSL.SSLOptions.Method := sslvTLSv1;
           if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_1' then IDSSL.SSLOptions.Method := sslvTLSv1_1;
           if EmpresasEmail_Metodo.AsString = 'sslvTLSv1_2' then IDSSL.SSLOptions.Method := sslvTLSv1_2;

           idSMTP1.AuthType := satDefault;
           try
               idSMTP1.Connect;
           except on E: Exception do begin
                     Screen.Cursor     := crDefault;
                     idSMTP1.IOHandler := TIdIOHandler.MakeDefaultIOHandler(nil);
                     idSMTP1.UseTLS    := utNoTLSSupport;
                     Showmessage('Falha na conex o!'+#13+#13+E.Message);
                  end;
           end;

           Screen.Cursor     := crDefault;

           if idSMTP1.Connected then begin
              idSMTP1.send(IdMessage);
              Showmessage('E-Mail enviado corretamento...'+#13+#13+'Verifica a caixa do E-Mail de destino.');
           end else begin
              Showmessage('Falha na conex o!');
           end;

           idSMTP1.Disconnect;
           IdMessage.Free;
           IdSMTP1.Free;

           Menu_Principal.IdAntiFreeze1.Active := false;
           Screen.Cursor:= crDefault;
      end;
end;

procedure TCadastro_Empresas.cLogoExit(Sender: TObject);
begin
      If FileExists(cLogo.Text) then iLogo.Picture.LoadFromFile(cLogo.Text);
end;

procedure TCadastro_Empresas.Button1Click(Sender: TObject);
begin
      with dados do begin
           EmpresasRepresentante_Bairro.Value        := EmpresasContador_Bairro.Value;
           EmpresasRepresentante_CEP.Value           := EmpresasContador_CEP.Value;
           EmpresasRepresentante_CNPJ.Value          := EmpresasContador_CNPJ.Value;
           EmpresasRepresentante_Complemento.Value   := EmpresasContador_Complemento.Value;
           EmpresasRepresentante_CPF.Value           := EmpresasContador_CPF.Value;
           EmpresasRepresentante_CRC.Value           := EmpresasContador_CRC.Value;
           EmpresasRepresentante_CRCData.Value       := EmpresasContador_CRCData.Value;
           EmpresasRepresentante_CRCSequencial.Value := EmpresasContador_CRCSequencial.Value;
           EmpresasRepresentante_CRCUF.Value         := EmpresasContador_CRCUF.Value;
           EmpresasRepresentante_Email.Value         := EmpresasContador_Email.Value;
           EmpresasRepresentante_Estado.Value        := EmpresasContador_Estado.Value;
           EmpresasRepresentante_FAX.Value           := EmpresasContador_FAX.Value;
           EmpresasRepresentante_Municipio.Value     := EmpresasContador_Municipio.Value;
           EmpresasRepresentante_Nome.Value          := EmpresasContador_Nome.Value;
           EmpresasRepresentante_Numero.Value        := EmpresasContador_Numero.Value;
           EmpresasRepresentante_Qualificacao.Value  := EmpresasContador_Qualificacao.Value;
           EmpresasRepresentante_Rua.Value           := EmpresasContador_Rua.Value;
           EmpresasRepresentante_Telefone.Value      := EmpresasContador_Telefone.Value;
      end;
end;

procedure TCadastro_Empresas.bBloqueioClick(Sender: TObject);
var
   mUsu: String;
   mCmp: String;
begin
      with Dados do begin
           mUsu := EmpresasEmissaoNFE_BloqueadaUsuario.AsString;
           mCmp := mUsu;
           mUsu := Copy(mUsu, 1, Pos('(', mUsu)-1);
           mCmp := Copy(mCmp, Pos('(', mCmp), Length(mCmp));
           if MessageDlg('Deseja realmente desbloquear a emissão de notas fiscais?'+#13+#13+'Usuário......... : '+mUsu+#13+'Computador : '+mCmp, mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
              EmpresasEmissaoNFE_Bloqueada.Clear;
              EmpresasEmissaoNFE_BloqueadaUsuario.Clear;
              bBloqueio.Enabled := false;
           end;
      end;
end;

procedure TCadastro_Empresas.cAssinaturaExit(Sender: TObject);
begin
      If FileExists(cAssinatura.Text) then iLogo.Picture.LoadFromFile(cAssinatura.Text);
end;


end.
