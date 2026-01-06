unit frmCadastro_NCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mask, DBCtrls, Grids, Vcl.ComCtrls, Vcl.ExtCtrls, RXCtrls,
  RXDBCtrl, DB, DBAccess, MSAccess, RxLookup, OleCtrls,SHDocVw, IdHTTP, HTTPApp, IdIOHandler, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  DBGrids, IdIOHandlerSocket, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, MemDS, RxDBComb;

type
  TCadastro_NCM = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    cIPI: TDBEdit;
    cTaxaII: TDBEdit;
    StaticText10: TStaticText;
    StaticText12: TStaticText;
    StaticText9: TStaticText;
    DBEdit5: TDBEdit;
    StaticText15: TStaticText;
    DBEdit6: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText50: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    StaticText51: TStaticText;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    StaticText56: TStaticText;
    DBLookupComboBox10: TDBLookupComboBox;
    StaticText57: TStaticText;
    DBEdit60: TDBEdit;
    GroupBox2: TGroupBox;
    lCodigoDNF: TStaticText;
    cCodigoDNF: TDBEdit;
    lFatorDNF: TStaticText;
    cFatorDNF: TDBEdit;
    lCapacidadeDNF: TStaticText;
    cCapacidadeDNF: TDBEdit;
    StaticText3: TStaticText;
    tNCM: TMSQuery;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    StaticText52: TStaticText;
    DBEdit64: TDBEdit;
    StaticText53: TStaticText;
    DBEdit65: TDBEdit;
    cGenero: TRxDBLookupCombo;
    cDescricao: TDBEdit;
    StaticText54: TStaticText;
    DBEdit66: TDBEdit;
    StaticText58: TStaticText;
    DBEdit67: TDBEdit;
    StaticText59: TStaticText;
    DBEdit68: TDBEdit;
    StaticText60: TStaticText;
    DBEdit69: TDBEdit;
    StaticText62: TStaticText;
    DBEdit70: TDBEdit;
    StaticText63: TStaticText;
    DBEdit71: TDBEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText71: TStaticText;
    cCEST: TDBEdit;
    bAtualizar: TButton;
    TabSheet3: TTabSheet;
    IdHTTP1: TIdHTTP;
    GradeConsulta: TStringGrid;
    bAtualiza2: TButton;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    bPesquisaTEC: TButton;
    bProdutos: TButton;
    GroupBox4: TGroupBox;
    StaticText65: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    StaticText61: TStaticText;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText75: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText76: TStaticText;
    DBEdit155: TDBEdit;
    StaticText77: TStaticText;
    DBEdit156: TDBEdit;
    TabSheet4: TTabSheet;
    cBrowser: TWebBrowser;
    StaticText78: TStaticText;
    DBEdit157: TDBEdit;
    StaticText79: TStaticText;
    DBEdit158: TDBEdit;
    StaticText80: TStaticText;
    DBEdit159: TDBEdit;
    StaticText81: TStaticText;
    DBEdit160: TDBEdit;
    StaticText82: TStaticText;
    DBEdit161: TDBEdit;
    StaticText83: TStaticText;
    DBEdit162: TDBEdit;
    StaticText84: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet5: TTabSheet;
    Grade: TDBGrid;
    RxDBComboBox1: TRxDBComboBox;
    StaticText85: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    StaticText87: TStaticText;
    TabSheet2: TTabSheet;
    StaticText124: TStaticText;
    cAliquotaDifer: TDBEdit;
    StaticText125: TStaticText;
    DBEdit332: TDBEdit;
    StaticText126: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    cICMS_Isento: TDBCheckBox;
    cICMS_Suspensao: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    GroupBox6: TGroupBox;
    cIPI_Isento: TDBCheckBox;
    cIPI_Suspensao: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    DBEdit163: TDBEdit;
    DBEdit164: TDBEdit;
    DBEdit165: TDBEdit;
    DBEdit166: TDBEdit;
    DBEdit167: TDBEdit;
    DBEdit168: TDBEdit;
    DBEdit169: TDBEdit;
    DBEdit170: TDBEdit;
    DBEdit171: TDBEdit;
    StaticText86: TStaticText;
    StaticText88: TStaticText;
    StaticText89: TStaticText;
    StaticText90: TStaticText;
    StaticText91: TStaticText;
    StaticText92: TStaticText;
    StaticText93: TStaticText;
    StaticText94: TStaticText;
    StaticText95: TStaticText;
    DBEdit172: TDBEdit;
    DBEdit173: TDBEdit;
    DBEdit174: TDBEdit;
    DBEdit175: TDBEdit;
    DBEdit176: TDBEdit;
    DBEdit177: TDBEdit;
    DBEdit178: TDBEdit;
    DBEdit179: TDBEdit;
    DBEdit180: TDBEdit;
    DBEdit181: TDBEdit;
    StaticText99: TStaticText;
    DBEdit182: TDBEdit;
    DBEdit183: TDBEdit;
    DBEdit184: TDBEdit;
    DBEdit185: TDBEdit;
    DBEdit186: TDBEdit;
    DBEdit187: TDBEdit;
    DBEdit188: TDBEdit;
    DBEdit189: TDBEdit;
    DBEdit190: TDBEdit;
    DBEdit191: TDBEdit;
    DBEdit192: TDBEdit;
    DBEdit193: TDBEdit;
    DBEdit194: TDBEdit;
    DBEdit195: TDBEdit;
    DBEdit196: TDBEdit;
    DBEdit197: TDBEdit;
    DBEdit198: TDBEdit;
    DBEdit199: TDBEdit;
    DBEdit200: TDBEdit;
    DBEdit201: TDBEdit;
    DBEdit202: TDBEdit;
    DBEdit203: TDBEdit;
    DBEdit204: TDBEdit;
    DBEdit205: TDBEdit;
    DBEdit206: TDBEdit;
    DBEdit207: TDBEdit;
    DBEdit208: TDBEdit;
    DBEdit209: TDBEdit;
    DBEdit210: TDBEdit;
    DBEdit211: TDBEdit;
    DBEdit212: TDBEdit;
    DBEdit213: TDBEdit;
    DBEdit214: TDBEdit;
    DBEdit215: TDBEdit;
    DBEdit216: TDBEdit;
    DBEdit217: TDBEdit;
    DBEdit218: TDBEdit;
    DBEdit219: TDBEdit;
    DBEdit220: TDBEdit;
    DBEdit221: TDBEdit;
    StaticText103: TStaticText;
    StaticText104: TStaticText;
    StaticText105: TStaticText;
    StaticText106: TStaticText;
    StaticText107: TStaticText;
    StaticText108: TStaticText;
    StaticText109: TStaticText;
    StaticText110: TStaticText;
    StaticText111: TStaticText;
    DBEdit222: TDBEdit;
    DBEdit223: TDBEdit;
    DBEdit224: TDBEdit;
    DBEdit225: TDBEdit;
    DBEdit226: TDBEdit;
    DBEdit227: TDBEdit;
    DBEdit228: TDBEdit;
    DBEdit229: TDBEdit;
    DBEdit230: TDBEdit;
    DBEdit231: TDBEdit;
    DBEdit232: TDBEdit;
    DBEdit233: TDBEdit;
    DBEdit234: TDBEdit;
    DBEdit235: TDBEdit;
    DBEdit236: TDBEdit;
    DBEdit237: TDBEdit;
    DBEdit238: TDBEdit;
    DBEdit239: TDBEdit;
    DBEdit240: TDBEdit;
    DBEdit241: TDBEdit;
    DBEdit242: TDBEdit;
    DBEdit243: TDBEdit;
    DBEdit244: TDBEdit;
    DBEdit245: TDBEdit;
    DBEdit246: TDBEdit;
    DBEdit247: TDBEdit;
    DBEdit248: TDBEdit;
    DBEdit249: TDBEdit;
    DBEdit250: TDBEdit;
    DBEdit251: TDBEdit;
    DBEdit252: TDBEdit;
    DBEdit253: TDBEdit;
    DBEdit254: TDBEdit;
    DBEdit255: TDBEdit;
    DBEdit256: TDBEdit;
    DBEdit257: TDBEdit;
    DBEdit258: TDBEdit;
    DBEdit259: TDBEdit;
    DBEdit260: TDBEdit;
    DBEdit261: TDBEdit;
    DBEdit262: TDBEdit;
    DBEdit263: TDBEdit;
    DBEdit264: TDBEdit;
    DBEdit265: TDBEdit;
    DBEdit266: TDBEdit;
    StaticText112: TStaticText;
    StaticText113: TStaticText;
    StaticText114: TStaticText;
    StaticText115: TStaticText;
    StaticText116: TStaticText;
    StaticText117: TStaticText;
    StaticText119: TStaticText;
    StaticText120: TStaticText;
    StaticText121: TStaticText;
    DBEdit267: TDBEdit;
    DBEdit268: TDBEdit;
    DBEdit269: TDBEdit;
    DBEdit270: TDBEdit;
    DBEdit271: TDBEdit;
    DBEdit272: TDBEdit;
    DBEdit273: TDBEdit;
    DBEdit274: TDBEdit;
    DBEdit275: TDBEdit;
    DBEdit276: TDBEdit;
    DBEdit277: TDBEdit;
    DBEdit278: TDBEdit;
    DBEdit279: TDBEdit;
    DBEdit280: TDBEdit;
    DBEdit281: TDBEdit;
    DBEdit282: TDBEdit;
    DBEdit283: TDBEdit;
    DBEdit284: TDBEdit;
    DBEdit285: TDBEdit;
    DBEdit286: TDBEdit;
    DBEdit287: TDBEdit;
    DBEdit288: TDBEdit;
    DBEdit289: TDBEdit;
    DBEdit290: TDBEdit;
    DBEdit291: TDBEdit;
    DBEdit292: TDBEdit;
    DBEdit293: TDBEdit;
    DBEdit294: TDBEdit;
    DBEdit295: TDBEdit;
    DBEdit296: TDBEdit;
    DBEdit297: TDBEdit;
    DBEdit298: TDBEdit;
    DBEdit299: TDBEdit;
    DBEdit300: TDBEdit;
    DBEdit301: TDBEdit;
    DBEdit302: TDBEdit;
    DBEdit303: TDBEdit;
    DBEdit304: TDBEdit;
    DBEdit305: TDBEdit;
    DBEdit306: TDBEdit;
    DBEdit307: TDBEdit;
    DBEdit308: TDBEdit;
    DBEdit309: TDBEdit;
    DBEdit310: TDBEdit;
    DBEdit311: TDBEdit;
    DBEdit312: TDBEdit;
    DBEdit313: TDBEdit;
    DBEdit314: TDBEdit;
    DBEdit315: TDBEdit;
    DBEdit316: TDBEdit;
    DBEdit317: TDBEdit;
    DBEdit318: TDBEdit;
    DBEdit319: TDBEdit;
    DBEdit320: TDBEdit;
    DBEdit321: TDBEdit;
    DBEdit322: TDBEdit;
    DBEdit323: TDBEdit;
    DBEdit324: TDBEdit;
    DBEdit325: TDBEdit;
    DBEdit326: TDBEdit;
    DBEdit327: TDBEdit;
    DBEdit328: TDBEdit;
    DBEdit329: TDBEdit;
    DBEdit330: TDBEdit;
    StaticText96: TStaticText;
    StaticText97: TStaticText;
    StaticText100: TStaticText;
    StaticText101: TStaticText;
    StaticText102: TStaticText;
    StaticText122: TStaticText;
    StaticText123: TStaticText;
    Shape1: TShape;
    StaticText98: TStaticText;
    StaticText127: TStaticText;
    GroupBox1: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    TabSheet6: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Button1: TButton;
    StaticText4: TStaticText;
    RxDBComboBox2: TRxDBComboBox;
    StaticText6: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    StaticText7: TStaticText;
    GroupBox3: TGroupBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    GroupBox7: TGroupBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    StaticText8: TStaticText;
    DBEdit4: TDBEdit;
    DBCheckBox14: TDBCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cIPI_IsentoClick(Sender: TObject);
    procedure cIPI_SuspensaoClick(Sender: TObject);
    procedure cICMS_IsentoClick(Sender: TObject);
    procedure cICMS_SuspensaoClick(Sender: TObject);
    procedure cCodigoExit(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure PesquisaNCM2;
    procedure bAtualiza2Click(Sender: TObject);
    procedure cBrowserDocumentComplete(Sender: TObject;const pDisp: IDispatch; var URL: OleVariant);
    procedure bPesquisaTECClick(Sender: TObject);
    procedure bProdutosClick(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : string;
    mNFENCM   : string;
  end;

var
  Cadastro_NCM: TCadastro_NCM;

implementation

Uses frmDados, frmDMFiscal, frmDMDespacho, FUNCOES, frmMenu_Principal, frmCadastro_NCMConsultaTEC, frmCadastro_NCMAtualizaTEC, frmCadastro_NCMProdutos;

{$R *.dfm}

procedure TCadastro_NCM.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TCadastro_NCM.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
//      cBrowser.Hide;
      with Dados, dmFiscal, dmDespacho do begin
           NCM.SQL.Clear;
           NCM.SQL.Add('SELECT * FROM NCM ORDER BY NCM');
           NCM.Open;

           If mNFENCM <> '' then NCM.Locate('NCM', mNFENCM, [loCaseInsensitive]);

           Unidades.SQL.Clear;
           Unidades.SQL.Add('SELECT * FROM UnidadeMedida ORDER BY Descricao');
           Unidades.Open;

           CSTTabelaA.SQL.Clear;
           CSTTabelaA.SQL.Add('SELECT * FROM CSTTabelaA ORDER BY Codigo');
           CSTTabelaA.Open;

           CSTTabelaB.SQL.Clear;
           CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY Codigo');
           CSTTabelaB.Open;

           CSTIPI.Open;

           CSTPIS.Open;

           CSTCOFINS.Open;

           ModalidadeBCICMS.Open;

           ModalidadeBCICMSST.Open;

           Genero.Open;

           EXTIPI.SQL.Clear;
           EXTIPI.SQL.Add('SELECT * FROM EXTIPI ORDER BY Codigo');
           EXTIPI.Open;

           ClasseEnquadramentoIPI.Open;

           Usuarios.SQL.Clear;
           Usuarios.SQL.Add( 'SELECT * FROM Usuarios WHERE Matricula = '+QuotedStr(Menu_Principal.mUsuarioCodigo) );
           Usuarios.Open;

           with RegTribBCPIS do begin
                sql.clear;
                sql.add('select * from RegimePISCOFINS order by Codigo');
                open;
           end;
           with RegimeTributacao do begin
                sql.clear;
                sql.add('select * from RegimeTributacao order by Codigo');
                open;
           end;
      end;

      Screen.Cursor := crDefault;
      PageControl1.ActivePageIndex := 0;
end;

procedure TCadastro_NCM.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      if cBrowser.Tag = 1 then begin
         cBrowser.Navigate('//www.infoconsult.com.br/tec2015/site/logout');
      end;

      Dados.Unidades.Close;
      dmFiscal.NCM.Close;
      Dados.CSTTabelaB.Close;
      Dados.CSTIPI.Close;
      Dados.CSTPIS.Close;
      Dados.CSTCOFINS.Close;
      dmFiscal.ModalidadeBCICMS.Close;
      dmFiscal.ModalidadeBCICMSST.Close;
      Dados.EXTIPI.Close;

      LimpaMemoria;
      Cadastro_NCM.Release;
      Cadastro_NCM := nil;
end;

procedure TCadastro_NCM.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i: Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         PageControl1.ActivePageIndex := 1;
         TabSheet1.Enabled := True;
         TabSheet2.Enabled := True;
         cCodigo.Enabled   := true;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         If PageControl1.ActivePageIndex = 1 then begin
            cCodigo.SetFocus;
         end Else begin
            cAliquotaDifer.SetFocus;
         End;
         If Button = nbEdit then begin
            cCodigo.Enabled := false;
            cCEST.SetFocus;
         end;
         If Button = nbInsert then begin
            dmFiscal.NCMCodigoTrib_TabA.Value  := '1';
            dmFiscal.NCMCodigoTrib_TabA2.Value := '0';
            dmFiscal.NCMCodigoTrib_TabA3.Value := '2';
         end;
      End;

      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         dmFiscal.NCM.Refresh;
         TabSheet1.Enabled := False;
         TabSheet2.Enabled := False;
         Screen.Cursor     := crDefault;
      End;
end;

procedure TCadastro_NCM.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'NCM', mPesquisa);
     If dmFiscal.NCM.Locate('NCM', mPesquisa, [loCaseInsensitive]) = False then
        dmFiscal.NCM.Locate('Produto', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TCadastro_NCM.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_NCM.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
     // Não deixa excluir se ja existe movimento para a NCM.
     If Button = nbDelete then begin
        tNCM.SQL.Clear;
        tNCM.SQL.Add('SELECT (SELECT COUNT(*) FROM NotasItens WHERE(NCM = :pNCM))+(SELECT COUNT(*) FROM NotasTerceirosItens WHERE(NCM = :pNCM)) AS Notas');
        tNCM.ParamByName('pNCM').AsString := dmFiscal.NCMNCM.AsString;
        tNCM.Open;
        If tNCM.FieldByName('Notas').AsInteger > 0 then begin
           MessageDlg('Esta NCM não pode ser excluída, pois ja foram emitidas notas fiscais utilizando-a.', mtInformation, [mbOK], 0);
           dmFiscal.NCM.Cancel;
           Abort;
        End;
     End;
     With Dados, dmFiscal do begin
          If (Button = nbPost) and (NCM.State = dsInsert) then begin
             tNCM.SQL.Clear;
             tNCM.SQL.Add('SELECT NCM FROM NCM WHERE(NCM = :pNCM)');
             tNCM.ParamByName('pNCM').AsString := cCodigo.Text;
             tNCM.Open;
             If tNCM.RecordCount > 0 then begin
                MessageDlg('Já existe uma NCM cadastrada com o código informado!', mtError, [mbOK], 0);
                PageControl1.TabIndex := 0;
                cCodigo.SetFocus;
                Abort;
             End;
          End;
     End;
     Navega.SetFocus;
end;

procedure TCadastro_NCM.cIPI_IsentoClick(Sender: TObject);
begin
      With dmFiscal do begin
           If (dsNCM.State = dsInsert) or (dsNCM.State = dsEdit) then begin
              If cIPI_Isento.Checked = True then begin
                 cIPI_Suspensao.Checked := False;
                 NCMIPI_Suspensao.Value := False;
              End;
           End;
      End;
end;

procedure TCadastro_NCM.cIPI_SuspensaoClick(Sender: TObject);
begin
      With dmFiscal do begin
           If (dsNCM.State = dsInsert) or (dsNCM.State = dsEdit) then begin
              If cIPI_Suspensao.Checked = True then begin
                 cIPI_Isento.Checked := False;
                 NCMIPI_Isento.Value := False;
              End;
           End;
      End;
end;

procedure TCadastro_NCM.DBGrid2CellClick(Column: TColumn);
begin
      with dmFiscal do begin
           with DominiosAtt do begin
                sql.Clear;
                sql.Add('select * from DominiosAtt where Atributo = :pAtt order by Codigo');
                parambyname('pAtt').AsString := NCMAtributos.FieldByName('Atributo').AsString;
                open;
           end;
      end;
end;

procedure TCadastro_NCM.cICMS_IsentoClick(Sender: TObject);
begin
      With dmFiscal do begin
           If (dsNCM.State = dsInsert) or (dsNCM.State = dsEdit) then begin
              If cICMS_Isento.Checked = True then begin
                 cICMS_Suspensao.Checked := False;
                 NCMICMS_Suspensao.Value := False;
              End;
           End;
      End;
end;

procedure TCadastro_NCM.cICMS_SuspensaoClick(Sender: TObject);
begin
      With dmFiscal do begin
           If (dsNCM.State = dsInsert) or (dsNCM.State = dsEdit) then begin
              If cICMS_Suspensao.Checked = True then begin
                 cICMS_Isento.Checked := False;
                 NCMICMS_Isento.Value := False;
              End;
           End;
      End;
end;

procedure TCadastro_NCM.cCodigoChange(Sender: TObject);
begin
     with dmFiscal do begin
          with NCMAtributos do begin
               sql.Clear;
               sql.Add('select * from NCMAtributos where NCM = :pNCM');
               parambyname('pNCM').AsString := NCMNCM.AsString;
               open;
          end;
     end;
end;

procedure TCadastro_NCM.cCodigoExit(Sender: TObject);
begin
      If trim(dmFiscal.NCMNCM.AsString) <> '' then
         dmFiscal.NCMGenero.Value := StrtoInt(Copy(dmFiscal.NCMNCM.AsString,1,2));
end;

procedure TCadastro_NCM.bAtualizarClick(Sender: TObject);
begin
     Cadastro_NCMAtualizaTEC := TCadastro_NCMAtualizaTEC.Create(Self);
     Cadastro_NCMAtualizaTEC.Caption := Caption;
     Cadastro_NCMAtualizaTEC.ShowModal;
end;

procedure TCadastro_NCM.bAtualiza2Click(Sender: TObject);
var
  EncodedDataString: string;
  PostData: OleVariant;
  Headers: OleVariant;
  i: integer;
begin
      cBrowser.Tag           := 1;
      GradeConsulta.RowCount := 2;
      for i := 0 to 7 do begin
          GradeConsulta.Cells[i,1] := '';
      end;
      // First, create a URL encoded string of the data.
//      EncodedDataString := 'username='+HTTPEncode('leonard.teixeira@gmail.com')+'&'+
//                           'password='+HTTPEncode('4d08tca7zi');
      EncodedDataString := 'LoginForm[username]='+HTTPEncode(Dados.Usuarios.FieldByName('Sistema_ExternoUsuario').AsString)+'&'+
                           'LoginForm[password]='+HTTPEncode(Dados.Usuarios.FieldByName('Sistema_ExternoSenha').AsString);

      PostData := VarArrayCreate([0, length(EncodedDataString)-1], varByte);

      // Now, move the Ordinal value of the character into the PostData array.
      for i := 1 to length(EncodedDataString) do begin
          PostData[i-1] := ord(EncodedDataString[i]);
      end;

      Headers := 'Content-type: application/x-www-form-urlencoded'#10#13;

      // Efetua o login no site de pesquisa.
//      cBrowser.Navigate('http://www.aduaneiras.com.br/Conta/Login',EmptyParam, EmptyParam, PostData, Headers);  // Parameters 2 and 3 are not used, thus EmptyParam is passed.

      cBrowser.Navigate('http://tecwinweb.aduaneiras.com.br/Handlers/Modulos/Usuario/Logout.ashx',EmptyParam, EmptyParam,  EmptyParam,  EmptyParam);

      // Efetua a consulta no site após logar.
      //PesquisaNCM2;
end;

procedure TCadastro_NCM.PesquisaNCM2;
var
  PostData,
  Headers: OleVariant;
  EncodedDataString: string;
  i: Integer;
begin
      EncodedDataString := 'ncm='+HTTPEncode( Copy(dmFiscal.NCMNCM.AsString, 1, 4) );
      PostData          := VarArrayCreate([0, length(EncodedDataString)-1], varByte);

      for i := 1 to length(EncodedDataString) do begin
          PostData[i-1] := ord(EncodedDataString[i]);
      end;

      Headers := 'Content-type: application/x-www-form-urlencoded'#10#13;

      cBrowser.Navigate('//www.infoconsult.com.br/tecweb/iframe_tec.php',EmptyParam, EmptyParam, PostData, Headers);
end;

procedure TCadastro_NCM.cBrowserDocumentComplete(Sender: TObject;const pDisp: IDispatch; var URL: OleVariant);
var
  CurWebrowser,
  TopWebBrowser: IWebBrowser;
  i,
  z:Integer;
  vTables,
  vRows,
  vCols: Variant;
begin
      CurWebrowser  := pDisp as IWebBrowser;
      TopWebBrowser := cBrowser.DefaultInterface;

      if CurWebrowser = TopWebBrowser then begin
         vTables := cBrowser.OleObject.Document.getElementsByTagName('table');
         if vTables.Length > 0 then begin
            vRows := vTables.Item(1).getElementsByTagName('tr');
            for i := 1 to vRows.Length -1 do begin
                vCols := vRows.Item(i).getElementsByTagName('td');
                if Length(vCols.Item(1).innerText) = 10 then begin
                   for z := 0 to vCols.Length -1 do begin
                       if z > 0 then begin
                          GradeConsulta.Cells[z-1, GradeConsulta.RowCount-1] := vCols.Item(z).innerText;
                       end;
                   end;
                   GradeConsulta.RowCount := GradeConsulta.RowCount + 1;
                end;
            end;
         end;
      end;

      // Posiciona o grid na NCM do cadastro.
      with GradeConsulta do begin
           for i := 1 to RowCount-1 do begin
               Row := i;
               if ApenasNumeros(Cells[0, i]) = dmFiscal.NCMNCM.AsString then break;
           end;
      end;
end;

procedure TCadastro_NCM.bPesquisaTECClick(Sender: TObject);
begin
      Cadastro_NCMConsultaTEC := TCadastro_NCMConsultaTEC.Create(Self);
      Cadastro_NCMConsultaTEC.Caption := Caption;
      Cadastro_NCMConsultaTEC.ShowModal;
end;

procedure TCadastro_NCM.bProdutosClick(Sender: TObject);
begin
      Cadastro_NCMProdutos := TCadastro_NCMProdutos.Create(Self);
      Cadastro_NCMPRodutos.Caption := Caption;
      Cadastro_NCMPRodutos.ShowModal;
end;

end.





