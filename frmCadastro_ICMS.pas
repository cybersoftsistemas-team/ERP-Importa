unit frmCadastro_ICMS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, DBCtrls, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, DB, RXCtrls, DBAccess,
  MSAccess, RXDBCtrl, CheckLst, Funcoes, NFe_Util_2G_TLB, xmldom,
  Grids, DBGrids, MemDS;

type
  TCadastro_ICMS = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tICMS: TMSQuery;
    RxDBGrid1: TDBGrid;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StaticText18: TStaticText;
    DBEdit15: TDBEdit;
    StaticText19: TStaticText;
    DBEdit16: TDBEdit;
    StaticText20: TStaticText;
    DBEdit17: TDBEdit;
    StaticText21: TStaticText;
    cCodDIFAL: TDBEdit;
    StaticText22: TStaticText;
    DBEdit19: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    cInscricao: TDBEdit;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    GroupBox1: TGroupBox;
    StaticText5: TStaticText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    StaticText6: TStaticText;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    GroupBox2: TGroupBox;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    StaticText4: TStaticText;
    StaticText1: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    cEstado: TDBLookupComboBox;
    StaticText9: TStaticText;
    DBEdit8: TDBEdit;
    StaticText2: TStaticText;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    StaticText3: TStaticText;
    DBEdit7: TDBEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    DBEdit9: TDBEdit;
    StaticText16: TStaticText;
    cMascara: TDBEdit;
    StaticText17: TStaticText;
    DBEdit14: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    cCampos: TCheckListBox;
    StaticText23: TStaticText;
    cUF: TDBEdit;
    bConfig: TButton;
    StaticText24: TStaticText;
    DBEdit20: TDBEdit;
    StaticText25: TStaticText;
    DBEdit21: TDBEdit;
    StaticText26: TStaticText;
    DBEdit22: TDBEdit;
    StaticText27: TStaticText;
    DBEdit23: TDBEdit;
    GroupBox20: TGroupBox;
    StaticText84: TStaticText;
    DBLookupComboBox27: TDBLookupComboBox;
    StaticText85: TStaticText;
    DBLookupComboBox28: TDBLookupComboBox;
    StaticText86: TStaticText;
    DBLookupComboBox29: TDBLookupComboBox;
    StaticText28: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    StaticText29: TStaticText;
    DBEdit18: TDBEdit;
    StaticText30: TStaticText;
    DBEdit24: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit25: TDBEdit;
    StaticText32: TStaticText;
    DBEdit26: TDBEdit;
    StaticText31: TStaticText;
    GroupBox4: TGroupBox;
    DBEdit27: TDBEdit;
    StaticText33: TStaticText;
    DBEdit28: TDBEdit;
    StaticText34: TStaticText;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox5: TGroupBox;
    DBEdit29: TDBEdit;
    StaticText35: TStaticText;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure LerCamposGNRE;
    procedure SalvarCamposGNRE;
    procedure cUFChange(Sender: TObject);
    procedure bConfigClick(Sender: TObject);
    Function  PegaCampo(Texto: String; Campo, Receita: String): String;
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_ICMS: TCadastro_ICMS;

implementation

Uses frmDados, frmMenu_Principal, frmDMFiscal;
{$R *.dfm}

procedure TCadastro_ICMS.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_ICMS.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.ICMS.Close;
      Dados.Estados.Close;
      
      LimpaMemoria;
      Cadastro_ICMS.Release;
      Cadastro_ICMS := nil;
end;

procedure TCadastro_ICMS.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         PageControl1.ActivePageIndex := 0;
         TabSheet1.Enabled := True;
         TabSheet2.Enabled := True;
         If Button = nbEdit then begin
            cEstado.Enabled := False;
            cInscricao.SetFocus;
         end else begin
            cEstado.Enabled := True;
            cEstado.SetFocus;
         End;
         Dados.Estados.Edit;   
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.ICMS.Refresh;
         TabSheet1.Enabled := False;
         TabSheet2.Enabled := False;
         Screen.Cursor  := crDefault;
         cEstado.Enabled := True;
      End;
end;

procedure TCadastro_ICMS.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Estado', mPesquisa);
     Dados.ICMS.Locate('UF', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TCadastro_ICMS.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_ICMS.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If Button = nbPost then begin
              If ICMS.State = dsInsert then begin
                 tICMS.SQL.Clear;
                 tICMS.SQL.Add('SELECT * FROM ICMS WHERE(UF = :pUF)');
                 tICMS.ParamByName('pUF').AsString := Dados.EstadosCodigo.AsString;
                 tICMS.Open;
                 If tICMS.RecordCount <> 0 then begin
                    ShowMessage('Estado já cadastrado na tabela de ICMS!');
                    ICMS.Cancel;
                    Abort;
                 end;
              end;
              SalvarCamposGNRE;

              // Ajusta o campo de código da GNRE na tabela de GNRE's geradas.
              tICMS.SQL.Clear;
              tICMS.SQL.Add('UPDATE GNRE SET Codigo_Receita = :pCodigo WHERE UF_Favorecido = :pUF AND ISNULL(Autorizada, 0) = 0');
              tICMS.ParamByName('pUF').AsString     := cUF.Text;
              tICMS.ParamByName('pCodigo').AsString := cCodDIFAL.Text;
              tICMS.Execute;
              tICMS.SQL.Clear;
           end;
           If Button = nbDelete then begin
              tICMS.SQL.Clear;
              tICMS.SQL.Add('SELECT COUNT(*) AS Qtde FROM NotasFiscais WHERE Estado = :pEstado');
              tICMS.ParamByName('pEstado').AsString := EstadosCodigo.AsString;
              tICMS.Open;
              if tICMS.FieldByName('Qtde').AsInteger > 0 then begin
                 ShowMessage('Já foram emitidas notas fiscais para o estado, não pode ser excluído!');
                 Abort;
              end;
              If MessageDlg('Deseja realmente excluir este Estado?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;
      end;
      Navega.SetFocus;
end;

procedure TCadastro_ICMS.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           ICMS.SQL.Clear;
           ICMS.SQL.Add('SELECT * FROM ICMS ORDER BY UF');
           ICMS.Open;

           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados');
           Estados.Open;

           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) AND (Titulo <> 1) ORDER BY Descricao,Codigo');
           ClassificacaoFinanceira.Open;

           TiposDocumentos.SQL.Clear;
           TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE(Desativada <> 1) ORDER BY Descricao');
           TiposDocumentos.Open;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto WHERE LEN(Codigo) = 7 ORDER BY Descricao');
           CentroCusto.Open;

           Orgaos.SQL.Clear;
           Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos ORDER BY Nome');
           Orgaos.Open;
           
           cMascara.Enabled := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';
      End;
      Screen.Cursor := crDefault;
      PageControl1.ActivePageIndex := 0;
end;

procedure TCadastro_ICMS.LerCamposGNRE;
var
   i: Integer;
   c: string;
begin
     with Dados do begin
          for i := 0 to cCampos.Count-1 do begin
              c := 'GNRE_'+Copy(cCampos.Items[i],1,3);
              if ICMS.FindField(c) <> nil then begin
                 cCampos.Checked[i] := ICMS.FieldByName(c).AsBoolean;
              end;
          end;
     End;
end;

procedure TCadastro_ICMS.SalvarCamposGNRE;
var
   i: Integer;
   c: string;
begin
     with Dados do begin
          for i := 0 to cCampos.Count-1 do begin
              c := 'GNRE_'+Copy(cCampos.Items[i],1,3);
              ICMS.FieldByName(c).Value := cCampos.Checked[i]; 
          end;
     End;
end;

procedure TCadastro_ICMS.cUFChange(Sender: TObject);
begin
      with Dados do begin
           CodigosReceitaSPED.SQL.Clear;
           CodigosReceitaSPED.SQL.Add('SELECT * FROM CodigosReceitaSPED WHERE Estado = :pEstado or Estado IS NULL ORDER BY Descricao');
           CodigosReceitaSPED.ParamByName('pEstado').asstring := ICMS.fieldByName('UF').asstring;
           CodigosReceitaSPED.Open;
      end;
      LerCamposGNRE;
end;

procedure TCadastro_ICMS.bConfigClick(Sender: TObject);
var
   Util: NFe_Util_2G_Interface;
   cStat:integer;
   RetWS,msg,mRet,mUF:widestring;
   Arq: TextFile;
begin
      if MessageDlg('Atenção!'+#13+#13+'Isto ira buscar as configurações de GNRE da Receita do Estado Seleciona e substituira as informações atuais.'+#13+#13+'Deseja realmente prosseguir?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      end;
      
      With Dados, dmFiscal do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

           mUF := cUF.Text;
           ICMS.First;
           while not ICMS.Eof do begin
                 RetWS := '';
                 Msg   := '';

                 Util := CoUtil.Create;
                 mRet := Util.ConsultaConfigGNRE(1,
                                                 Trim(EmpresasCertificado_Digital.AsString),
                                                 Trim(string(EmpresasGNRE_Layout.Value)),
                                                 msg,
                                                 cUF.Text,
                                                 string(ICMSGNRE_DIFAL.Value),
                                                 cStat,
                                                 RetWS,
                                                 '',
                                                 '',
                                                 '');

                 // Salva o arquivo xml no disco.
                 Configuracao.Open;
                 AssignFile(Arq, ConfiguracaoPasta_GNRE.AsString+'\Consulta_'+cUF.Text+'_'+string(ICMSGNRE_DIFAL.Value)+'.xml');
                 ReWrite(Arq);
                 Write(Arq, LimpaXML(mRet));
                 CloseFile(Arq);

                 ICMS.Edit;
                      cCampos.Checked[00] := PegaCampo(mRet, 'c01', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c01.
                      cCampos.Checked[01] := PegaCampo(mRet, 'c02', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c02.
                      cCampos.Checked[02] := PegaCampo(mRet, 'c03', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c03.
                      cCampos.Checked[03] := PegaCampo(mRet, 'c04', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c04.
                      cCampos.Checked[04] := PegaCampo(mRet, 'c05', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c05.
                      cCampos.Checked[05] := true;                                               // c06. Valor principal.
                      cCampos.Checked[06] := true;                                               // c10. Valor total.
                      cCampos.Checked[07] := PegaCampo(mRet, 'c14', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c14.
                      cCampos.Checked[08] := PegaCampo(mRet, 'c15', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c15.

                      cCampos.Checked[09] := PegaCampo(mRet, 'c03', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c16.
                      cCampos.Checked[10] := Trim(ICMSInscricao.AsString)                <> '' ; // c17 "Quando a empresas tem inscrição na UF destino".
                      cCampos.Checked[11] := PegaCampo(mRet, 'c03', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c18.
                      cCampos.Checked[12] := PegaCampo(mRet, 'c03', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c19.
                      cCampos.Checked[13] := PegaCampo(mRet, 'c03', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c20.
                      cCampos.Checked[14] := PegaCampo(mRet, 'c03', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c21.
                      cCampos.Checked[15] := PegaCampo(mRet, 'c03', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c22.

                      cCampos.Checked[16] := PegaCampo(mRet, 'c25', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c25.
                      cCampos.Checked[17] := PegaCampo(mRet, 'c26', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c26.
                      cCampos.Checked[18] := Trim(ICMSInscricao.AsString)                 = '' ; // c27.
                      cCampos.Checked[19] := PegaCampo(mRet, 'c04', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c28.
                      cCampos.Checked[20] := PegaCampo(mRet, 'c33', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c33.
                      cCampos.Checked[21] := PegaCampo(mRet, 'c34', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c34.
                      cCampos.Checked[22] := PegaCampo(mRet, 'c35', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c35.
                      cCampos.Checked[23] := PegaCampo(mRet, 'c36', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c36.
                      cCampos.Checked[24] := PegaCampo(mRet, 'c37', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c37.
                      cCampos.Checked[25] := PegaCampo(mRet, 'c38', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c38.
                      cCampos.Checked[26] := PegaCampo(mRet, 'c39', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c39.
                      cCampos.Checked[27] := PegaCampo(mRet, 'c42', string(ICMSGNRE_DIFAL.Value)) = 'S'; // c42.

                      SalvarCamposGNRE;
                 ICMS.Post;
                 ICMS.Next;
           end;
           ICMS.Locate('UF', mUF, [loCaseInsensitive]);
      end;
end;

Function TCadastro_ICMS.PegaCampo(Texto: String; Campo, Receita: String): String;
var
   c,f, i: integer;
begin
     c := Pos(Campo, Texto);
     for i := c to Length(Texto) do begin
         if Texto[i] = '>' then begin
            If Texto[i+1] = 'S' then Result := 'S' else Result := 'N';
            Break;
         end;
     end;

     //Emitente - Campo c03
     If Campo = 'c03' then begin
        c := Pos('<exigeContribuinteEmitente>', Texto);
        for i := c to Length(Texto) do begin
            if Texto[i] = '>' then begin
               If Texto[i+1] = 'S' then Result := 'S' else Result := 'N';
               Break;
            end;
        end;
     end;
     // Destinatario - c34/c35/c36/c37/c38.
     If (Campo = 'c34') or (Campo = 'c35') or (Campo = 'c36') or (Campo = 'c37') or (Campo = 'c38') then begin
        c := Pos('<exigeContribuinteDestinatario>', Texto);
        for i := c to Length(Texto) do begin
            if Texto[i] = '>' then begin
               If Texto[i+1] = 'S' then Result := 'S' else Result := 'N';
               Break;
            end;
        end;
     end;


     // Para o campo c39 - Campos adicionais, pega o tipo e o código.
     If (Campo = 'c39') and (Result = 'S') then begin
        c     := Pos('<camposAdicionais>', Texto);
        f     := Pos('</camposAdicionais', Texto)-c;
        Texto := Copy(Texto, c, f);
        c     := Pos('<codigo', Texto);
        for i := c to Length(Texto) do begin
            if Texto[i] = '>' then begin
               f := i + 1;
               Dados.ICMSGNRE_AdicCod.Clear;
               while Texto[f] <> '<' do begin
                     Dados.ICMSGNRE_AdicCod.Value := Dados.ICMSGNRE_AdicCod.asstring+ Texto[f];
                     inc(f);
               end;
               Break;
            end;
        end;
        c := Pos('<tipo', Texto);
        for i := c to Length(Texto) do begin
            if Texto[i] = '>' then begin
               f := i + 1;
               Dados.ICMSGNRE_AdicTipo.Clear;
               while Texto[f] <> '<' do begin
                     Dados.ICMSGNRE_AdicTipo.Value := Dados.ICMSGNRE_AdicTipo.asstring+ Texto[f];
                     inc(f);
               end;
               Break;
            end;
        end;
     end;
end;

end.
