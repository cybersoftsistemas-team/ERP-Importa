unit frmNFe_CartaCorrecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, MSAccess, DBAccess, Mask, Vcl.StdCtrls, DBCtrls,  Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl,
  RXCtrls, FUNCOES,   Vcl.ComCtrls, NFe_Util_2G_TLB,  IdMessage, system.UITypes, IdSMTP, IniFiles, IdIOHandler, IdSSLOpenSSL, ppCtrls, ppParameter, ppBands, ppProd, ppReport, ppDBPipe, MaskUtils, ppMemo, IdIOHandlerStack, IdSSL,
  IdAttachmentFile, ppTypes, RXSpin, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, RxToolEdit, IdIOHandlerSocket, ppDesignLayer, ppStrtch, ppPrnabl, ppClass, ppCache, ppDB, ppComm, ppRelatv, MemDS, IdBaseComponent,
  IdComponent, IdMessageClient, IdSMTPBase;

type
  TNFe_CartaCorrecao = class(TForm)
    cTipo: TRadioGroup;
    cData: TDateEdit;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Grade: TDBGrid;
    SMTP: TIdSMTP;
    EmailMSG: TIdMessage;
    bEnviar: TButton;
    cCorrecao: TMemo;
    cAcentuacao: TCheckBox;
    StaticText1: TStaticText;
    tCorrecao: TMSQuery;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    cHoraCorrecao: TMaskEdit;
    cDataCorrecao: TDateEdit;
    StaticText3: TStaticText;
    bImprimirSel: TButton;
    pCarta: TppDBPipeline;
    ppEmpresas: TppDBPipeline;
    rCartaCorrecao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppParameterList1: TppParameterList;
    pMunicipios: TppDBPipeline;
    lCidade: TppLabel;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    lTipo: TppLabel;
    ppDBText6: TppDBText;
    pNotas: TppDBPipeline;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppShape1: TppShape;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel12: TppLabel;
    lTexto: TppMemo;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine10: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel15: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    lEndereco: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel16: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppShape2: TppShape;
    ppLine15: TppLine;
    ppDBText4: TppDBText;
    ppLine16: TppLine;
    cMensagens: TMemo;
    Panel2: TPanel;


    bFiltrar: TButton;
    StaticText5: TStaticText;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;
    iLogo: TppImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    cNumeroCarta: TRxSpinEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cTipoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure EnviarEmail(Tipo: String);
    procedure bEnviarClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bImprimirSelClick(Sender: TObject);
    procedure rCartaCorrecaoBeforePrint(Sender: TObject);
    procedure bImprimirPeriodoClick(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure cSpinClick(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
    mNome,
    mNome3,
    mPasta      : String;
    mPastaNFE   : String;
    mPastaCC    : String;
    xmlProtocolo: TMemo;
  end;

var
  NFe_CartaCorrecao: TNFe_CartaCorrecao;
  SiglaWS,
  NomeCertificado,
  MsgDados,
  RetWS,
  MsgResultado,
  ChaveNFe,
  nProtocolo,
  dhProtocolo,
  Justificativa,
  nProtocoloCarta,
  dProtocoloCarta,
  Proxy,
  Usuario,
  Senha,
  mMotivo,
  NroRecibo,
  mNFeAssinada,
  Versao,
  ProcCarta,
  mDataHora,  
  Licenca      : Widestring;
  cStat,
  mResultado,
  tpAmb,
  IndText,
  TipoAmbiente : Integer;
  mCancela     : Boolean;
implementation

uses frmDados, frmDMFiscal, frmMenu_Principal, frmDMContab;

{$R *.dfm}

procedure TNFe_CartaCorrecao.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TNFe_CartaCorrecao.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      // Salva opções da tela de cancelamento.
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.Free;

      FecharTabelas(Dados, dmFiscal, dmContab, nil);
      LimpaMemoria;
      NFe_CartaCorrecao.Release;
      NFe_CartaCorrecao := nil;
end;

procedure TNFe_CartaCorrecao.FormShow(Sender: TObject);
Var
   aINI: TIniFile;
begin
      // Carregando as ultimas opções utilizadas no relatório como default.
      cData.Date := Date;
      aINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.Free;

      Screen.Cursor := crSQLWait;
      With dmFiscal, Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Configuracao.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes');
           Clientes.Open;
      End;

      cDataCorrecao.Date := Date;
      cHoraCorrecao.Text := TimetoStr(Time);
      cTipo.ItemIndex := 0;

      cNumeroCarta.Enabled := Menu_Principal.mUsuarioNome = 'ADMINISTRADOR';

      Screen.Cursor := crDefault;
end;

procedure TNFe_CartaCorrecao.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With dmFiscal, Dados do Begin
          If (Column.FieldName = 'DPEC') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('DPEC').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Cancelada') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Cancelada').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Complementar') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Complementar').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Devolucao') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Devolucao').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Nfe_Denegada') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Nfe_Denegada').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TNFe_CartaCorrecao.cTipoClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With dmFiscal do begin
           Notas.SQL.Clear;
           If Trim(RemoveCaracter('/','',cData.Text)) = '' then
              Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pTipo) AND (Cancelada <> 1) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC')
           else begin
              Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pTipo) AND (Cancelada <> 1) AND (Data_Emissao = :pData) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC');
              Notas.ParamByName('pData').AsDate    := cData.Date;
           end;

           Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
           Notas.Open;
      End;
      GradeCellClick(nil);
      Screen.Cursor := crDefault;
end;

procedure TNFe_CartaCorrecao.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNFe_CartaCorrecao.bPesquisaClick(Sender: TObject);
Var
    mPesquisa : String;
    mTipo     : Integer;
begin
      mTipo     := cTipo.ItemIndex;
      mPesquisa := InputBox('Pesquisar','Nº da Nota:', mPesquisa);
      cData.Clear;
      
      With Dados, dmFiscal do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais ORDER BY Numero DESC');
           Notas.Open;
           If Notas.Locate('Numero', mPesquisa, [loCaseInsensitive]) = False then begin
              ShowMessage('Nenhuma nota fiscal encontrada com o número informado!');
              cTipo.ItemIndex := mTipo;
           end else begin
              cTipo.ItemIndex := NotasSaida_Entrada.AsInteger;
              Notas.Locate('Numero', mPesquisa, [loCaseInsensitive])
           End;
      End;
      GradeCellClick(nil);
      Grade.SetFocus;
end;

procedure TNFe_CartaCorrecao.EnviarEmail(Tipo: String);
Var
    mMensagem: Widestring;
    mEnviar  : Boolean;
begin
      Screen.Cursor    := crAppStart;
      Menu_Principal.IdAntiFreeze1.Active := true;
      mEnviar          := true;
      cMensagens.Width := 814;
      
      If (Dados.EmpresasEmail_Porta.AsInteger <= 0) then begin
         cMensagens.Lines.Add('        E-Mail não enviado : Falta informar a porta no cadastro de empresas.');
         mEnviar := false;
      End;
      If (Trim(Dados.EmpresasEmail_SMTP.AsString) = '') then begin
         cMensagens.Lines.Add('        E-Mail não enviado : Falta informar o Servidor de envio (SMTP) no cadastro de empresas.');
         mEnviar := false;
      End;
      If (Trim(Dados.EmpresasEmail_ID.AsString) = '') then begin
         cMensagens.Lines.Add('        E-Mail não enviado : Falta informar o Usuário (ID) no cadastro de empresas.');
         mEnviar := false;
      End;
      If (Trim(Dados.EmpresasEmail_Senha.AsString) = '') then begin
         cMensagens.Lines.Add('        E-Mail não enviado : Falta informar a Senha no cadastro de empresas.');
         mEnviar := false;
      End;

      If mEnviar = true then begin
         // Configuração do SMTP.
         SMTP.Host     := Dados.EmpresasEmail_SMTP.AsString;
         SMTP.Port     := Dados.EmpresasEmail_Porta.AsInteger;
         SMTP.UserName := Dados.EmpresasEmail_ID.AsString;
         SMTP.Password := Dados.EmpresasEmail_Senha.AsString;

         // SSLOptions method.
         If Dados.EmpresasEmail_Metodo.AsString = 'sslvSSLv2' then
            SSLSocket.SSLOptions.Method := sslvSSLv2;
         If Dados.EmpresasEmail_Metodo.AsString = 'sslvSSLv23' then
            SSLSocket.SSLOptions.Method := sslvSSLv23;
         If Dados.EmpresasEmail_Metodo.AsString = 'sslvSSLv3' then
            SSLSocket.SSLOptions.Method := sslvSSLv3;
         If Dados.EmpresasEmail_Metodo.AsString = 'sslvTLSv1' then
            SSLSocket.SSLOptions.Method := sslvTLSv1;

         // Requer Autenticação.
         If Dados.EmpresasEmail_Autenticacao.AsBoolean then
            SMTP.AuthType := satDefault
         else
            SMTP.AuthType := satNone;

         // Conexao Segura SSL
         If Dados.EmpresasEmail_SSL.AsBoolean then
            SMTP.IOHandler := SSLSocket
         else
            SMTP.IOHandler := nil;
  
         // Montando a mensagem.
         EmailMSG.From.Address := Dados.EmpresasEmail.AsString;

         If Tipo = 'CLIENTE' then begin
            EmailMSG.Recipients.EMailAddresses := Dados.ClientesEmail.AsString;
            EmailMSG.ccList.EMailAddresses     := Dados.EmpresasEmail_Copia.AsString;
            If Trim(Dados.ClientesEmail_Copia.AsString) <> '' then EmailMSG.ccList.EMailAddresses := Trim(Dados.EmpresasEmail_Copia.AsString)+','+Trim(Dados.ClientesEmail_Copia.AsString);
         end else begin
             EmailMSG.Recipients.EMailAddresses := Dados.ConfiguracaoEmail_NFE.AsString;
         End;

         EmailMSG.Subject   := 'Carta de Correção de NF-e '+dmFiscal.NotasNFe_cNF.AsString;
         mMensagem          := RemoveCaracter('<{Numero}>', dmFiscal.NotasNFe_cNF.AsString, Dados.EmpresasEmail_MsgEnvioCCE.AsString);
         EmailMSG.Body.Text := mMensagem;

         // Anexando o XML.
         TIdAttachmentFile.create(EMailMSG.MessageParts, mPastaNFE);
         
         // Anexando o PDF
         TIdAttachmentFile.create(EMailMSG.MessageParts, mPastaCC);

         //enviar email.
         Try
            SMTP.Connect;
            If Dados.EmpresasEmail_Autenticacao.AsBoolean then SMTP.Authenticate;
            SMTP.Send(EMailMSG);
            cMensagens.Lines.Add('XML de Carta de Correção eletrônica enviado por E-Mail.');
            If Tipo = 'CLIENTE' then begin
               cmensagens.Lines.Add('       ' + Dados.EmpresasEmail.AsString + Dados.ClientesEmail.AsString + Dados.EmpresasEmail_Copia.AsString + Dados.ClientesEmail_Copia.AsString + Dados.FornecedoresEmail.AsString + Dados.ConfiguracaoEmail_NFE.AsString);
            end else begin
               cmensagens.Lines.Add('       ' + Dados.ConfiguracaoEmail_NFE.AsString);
            End;
         Except on E:Exception do begin
            cMensagens.Lines.Add('     ERROR DE E-Mail: XML Não foi enviado...');
            cMensagens.Lines.Add('     Verifique as configurações do E-Mail no <Cadastro da Empresa>.');
            cMensagens.Lines.Add('     ' + E.Message);
         End;
         End;
      End;

      Menu_Principal.IdAntiFreeze1.Active := false;
      cMensagens.Width := 863;
      
      Screen.Cursor    := crDefault;
end;

procedure TNFe_CartaCorrecao.bEnviarClick(Sender: TObject);
var
   Util          : OleVariant;
   mCartaCorrecao: WideString;
   mTextoCorrecao: WideString;
   XMLProtocolo  : TMemo;
begin
      If not Internet then begin
         MessageDlg('Erro de comunicação!'+#13+#13+'Você esta sem conexão com a Internet.', mtError, [mbOK], 0);
         Abort;
      End;
      
      Screen.Cursor   := crHourGlass;

      cMensagens.Clear;

      Util            := CoUtil.Create;
      Versao          := Trim(Dados.EmpresasCartaCorrecao_Layout.Value);
      NomeCertificado := Trim(Dados.EmpresasCertificado_Digital.AsString);
      SiglaWS         := Trim(Dados.EmpresasUF_WebService.AsString);
      TipoAmbiente    := Menu_Principal.Amb_Producao;
      nProtocolo      := '';
      MsgDados        := '';
      MsgRetWS        := '';
      MsgResultado    := '';
      ChaveNFe        := Trim(dmFiscal.NotasNFe_cNF.AsString);
      Proxy           := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
      Usuario         := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
      Senha           := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);
      RetWS           := '';
      Licenca         := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
      mDataHora       := RemoveCaracter('/', '-', cDataCorrecao.Text) + ' '+cHoraCorrecao.Text;
      IndText         := 0;
      mTextoCorrecao  := cCorrecao.Lines.Text;

      If cAcentuacao.Checked = true then
         indText := 1
      else begin
         mTextoCorrecao := RemoveCaracterXML(cCorrecao.Lines.Text);
      End;

      
      Application.ProcessMessages;

      mCartaCorrecao := Util.EnviaCCe2G(SiglaWS
                                       ,TipoAmbiente
                                       ,NomeCertificado
                                       ,Versao
                                       ,MsgDados
                                       ,MsgRetWS
                                       ,cStat
                                       ,MsgResultado
                                       ,ChaveNFe
                                       ,mTextoCorrecao
                                       ,indText
                                       ,cNumeroCarta.AsInteger+1
                                       ,mDataHora
                                       ,nProtocolo
                                       ,dhProtocolo
                                       ,proxy
                                       ,Usuario
                                       ,Senha
                                       ,Licenca);

      If cStat = 135 then begin
         // Salva a carta de correção no banco de dados se homologado.
         With dmFiscal, Dados do begin
              // Salva a carta de correção no banco de dados.
              CartaCorrecao.SQL.Clear;
              CartaCorrecao.SQL.Add('SELECT * FROM CartaCorrecao WHERE Chave = '+QuotedStr(NotasNFe_cNF.AsString));
              CartaCorrecao.Open;

              CartaCorrecao.Append;
                            CartaCorrecaoNota.Value           := NotasNumero.AsInteger;
                            CartaCorrecaoData_Emissao.Value   := NotasData_Emissao.Value;
                            CartaCorrecaoChave.Value          := NotasNFe_cNF.Value;
                            CartaCorrecaoAcentuacao.Value     := cAcentuacao.Checked;
                            CartaCorrecaoNumero_Carta.Value   := cNumeroCarta.AsInteger + 1;
                            CartaCorrecaoData_Carta.Value     := cDataCorrecao.Date;
                            CartaCorrecaoProtocolo.Value      := nProtocolo;
                            CartaCorrecaoData_Protocolo.Value := dhProtocolo;
                            CartaCorrecaoDescricao.Value      := mTextoCorrecao;
              CartaCorrecao.Post;

              Notas.Edit;
                    NotasCCE.value := true;
              Notas.Post;

              cMensagens.Lines.Add(MsgResultado);
              cMensagens.Lines.Add('Carta de Correção Nº '+PoeZero(2, cNumeroCarta.AsInteger+1));
              cMensagens.Lines.Add('Número do Protocolo de homologação de registro da CC-e: ' + nProtocolo+'     Data e Hora de registro da CCe: ' + dhProtocolo);
              cMensagens.Lines.Add('Carta de Correção salva no banco de dados...');
              
              // Salvando o conteúdo do memo em um arquivo XML.
              mPasta := Trim(ConfiguracaoPasta_NFE.Value) + '\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
              If EmpresasMatriz_Filial.AsBoolean = true then
                 mPasta := mPasta + '_Matriz'
              else
                 mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);

              If not DirectoryExists(mPasta) then ForceDirectories(mPasta);
              mPastaNFE := mPasta + '\NFe_'+NotasNFe_CNF.Value+'_Carta_Correcao'+PoeZero(2, cNumeroCarta.AsInteger+1)+'.xml';
              mPastaCC  := mPasta + '\NFe_'+NotasNFe_CNF.Value+'_Carta_Correcao'+PoeZero(2, cNumeroCarta.AsInteger+1)+'.PDF';

              xmlProtocolo         := TMemo.Create(NFe_CartaCorrecao);
              xmlProtocolo.Visible := False;
              xmlProtocolo.Parent  := NFe_CartaCorrecao;
              xmlProtocolo.Clear;
              xmlProtocolo.Lines.Add(mCartaCorrecao);
              xmlProtocolo.Lines.SaveToFile(mPastaNFE);
              xmlProtocolo.Free;

              // Salvando o PDF da carta de correção.
              rCartaCorrecao.AllowPrintToFile := True;
              rCartaCorrecao.DeviceType       := dtPDF;
              rCartaCorrecao.TextFileName     := mPastaCC;
              rCartaCorrecao.ShowPrintDialog  := False;
              rCartaCorrecao.Print;
              rCartaCorrecao.FreeOnRelease;
              rCartaCorrecao.Reset;

              // Enviar o E-Mail para o cliente da Nota Fiscal.
              If (NotasSaida_Entrada.AsInteger = 1) then begin
                 If Clientes.Locate('Codigo', NotasCliente_Codigo.AsInteger, [loCaseInsensitive]) = true then begin
                    If Clientes.FieldByName('Enviar_Email').AsBoolean = false then
                       EnviarEmail('CLIENTE');
                 End;
              End;

              // Envio do E-Mail fixo configurado em "Configuração / Faturamento".
              If Trim(ConfiguracaoEmail_NFE.AsString) <> '' then begin
                 Try
                     EnviarEmail('FIXO');
                 Except
                     cMensagens.Lines.Add('       Houve falha no envio do email fixo, contacte o suporte técnico da Cybersoft.');
                 End;
              End;
         End;
      end else begin
          if cStat < 1000 then
             cMensagens.Lines.Add('Carta de Correção eletrônica rejeitada pelo WS...'+ msgResultado)
          else
             cMensagens.Lines.Add('Falha na chamada do WS...'+msgResultado);
      End;

      Screen.Cursor := crDefault;
end;

procedure TNFe_CartaCorrecao.GradeCellClick(Column: TColumn);
begin
      With dmFiscal do begin
           tCorrecao.SQL.Clear;
           tCorrecao.SQL.Add('SELECT ISNULL(MAX(Numero_Carta), 0) AS Numero FROM CartaCorrecao WHERE(Chave = :pChave)');
           tCorrecao.ParamByName('pChave').AsString := NotasNFe_cNF.AsString;
           tCorrecao.Open;
           cNumeroCarta.Value := tCorrecao.FieldByName('Numero').AsInteger;

           // Consolida todas as correções já feitas para a nota fiscal selecionada.
           tCorrecao.SQL.Clear;
           tCorrecao.SQL.Add('SELECT * FROM CartaCorrecao WHERE(Chave = :pChave) ORDER BY Numero_Carta');
           tCorrecao.ParamByName('pChave').AsString := NotasNFe_cNF.AsString;
           tCorrecao.Open;

           cCorrecao.Lines.Clear;

           tCorrecao.First;
           While not tCorrecao.Eof do begin
                 cCorrecao.Lines.Add('('+PoeZero(2, tCorrecao.FieldByName('Numero_Carta').AsInteger)+') - '+tCorrecao.FieldByName('Descricao').AsString);
                 tCorrecao.Next;
           End;
      End;
end;

procedure TNFe_CartaCorrecao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
begin
      GradeCellClick(nil);
end;

procedure TNFe_CartaCorrecao.bImprimirSelClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           with CartaCorrecao do begin
                sql.Clear;
                sql.Add('select * from CartaCorrecao where Nota = :pNota and Data_Emissao = :pData');
                parambyname('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
                parambyname('pData').AsDate    := Notas.FieldByName('Data_Emissao').value;
                open;
           end;
           
           if FileExists(Dados.EmpresasLogo.Value) then iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
           
           rCartaCorrecao.AllowPrintToFile := false;
           rCartaCorrecao.DeviceType       := dtScreen;
           rCartaCorrecao.TextFileName     := '';
           rCartaCorrecao.ShowPrintDialog  := true;
           rCartaCorrecao.Print;
           rCartaCorrecao.FreeOnRelease;
           rCartaCorrecao.Reset;
      End;
end;

procedure TNFe_CartaCorrecao.rCartaCorrecaoBeforePrint(Sender: TObject);
begin
     lTexto.Text := cCorrecao.Text;
end;

procedure TNFe_CartaCorrecao.bImprimirPeriodoClick(Sender: TObject);
begin
      With dmFiscal do begin
           // Consolida todas as correções já feitas para a nota fiscal selecionada.
           tCorrecao.SQL.Clear;
           tCorrecao.SQL.Add('SELECT * FROM CartaCorrecao WHERE(Chave = :pChave) ORDER BY Numero_Carta');
           tCorrecao.ParamByName('pChave').AsString := NotasNFe_cNF.AsString;
           tCorrecao.Open;

           cCorrecao.Lines.Clear;

           tCorrecao.First;
           While not tCorrecao.Eof do begin
                 cCorrecao.Lines.Add('('+PoeZero(2, tCorrecao.FieldByName('Numero_Carta').AsInteger)+') - '+tCorrecao.FieldByName('Descricao').AsString);
                 tCorrecao.Next;
           End;
      End;
end;

procedure TNFe_CartaCorrecao.bFiltrarClick(Sender: TObject);
begin
       With dmFiscal do begin
            If (Trim(RemoveCaracter('/','',cData.Text)) <> '') and (Length(cData.Text) = 10) then begin
               Notas.SQL.Clear;
               Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pTipo) AND (Cancelada <> 1) AND (Data_Emissao = :pData) AND (NFe_cNF IS NOT NULL) ORDER BY Data_Emissao DESC,Numero DESC');
               Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
               Notas.ParamByName('pData').AsDate    := cData.Date;
               Notas.Open;
            End;
       End;
end;

procedure TNFe_CartaCorrecao.ppHeaderBand1BeforePrint(Sender: TObject);
begin
      With Dados do begin
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE(Codigo = :pCodigo)');
           Municipios.ParamByName('pCodigo').AsString := Dados.EmpresasMunicipio_Codigo.AsString;
           Municipios.Open;

           lCidade.Caption   := MunicipiosNome.AsString + ' - '+EmpresasEstado.AsString;
           lTipo.Caption     := 'Nota Fiscal de '+cTipo.Items[cTipo.ItemIndex];
           lEndereco.Caption := EmpresasRua.AsString + ', '+EmpresasComplemento.AsString+' - CEP: '+FormatMaskText('99999-999;0', EmpresasCEP.AsString);
      End;
end;

procedure TNFe_CartaCorrecao.cSpinClick(Sender: TObject;Button: TUDBtnType);
begin
{
      if Button = btPrev then
        cNumeroCarta.AsInteger := cNumeroCarta.AsInteger -1
      else
        cNumeroCarta.AsInteger := cNumeroCarta.AsInteger +1;
}        
end;

end.

