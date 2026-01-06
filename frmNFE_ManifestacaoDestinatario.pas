unit frmNFE_ManifestacaoDestinatario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Mask, Funcoes,
  NFe_util_2G_tlb, DB, DBAccess, MSAccess, RxLookup, RxToolEdit, MemDS, system.UITypes;

type
  TNFE_ManifestacaoDestinatario = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bEnviar: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    lJustificativa: TStaticText;
    cJustificativa: TEdit;
    cData: TDateEdit;
    cHora: TMaskEdit;
    cChave: TMaskEdit;
    Panel3: TPanel;

    cMensagens: TMemo;
    StaticText5: TStaticText;
    cMotivo: TComboBox;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    cChaveLista: TRxDBLookupCombo;
    tNotasNota: TStringField;
    tNotasOrdem: TIntegerField;
    tNotasTipo: TStringField;
    tNotasManifesto: TStringField;
    cDataIni: TDateEdit;
    RxLabel3: TRxLabel;
    cDataFim: TDateEdit;
    bFiltrar: TButton;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    tNotasChave: TStringField;
    tNotasCNPJ: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
    procedure cMotivoChange(Sender: TObject);
    procedure cChaveListaChange(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
    //procedure bEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NFE_ManifestacaoDestinatario: TNFE_ManifestacaoDestinatario;

implementation

uses frmDados, frmMenu_Principal, frmDMFiscal;

{$R *.dfm}

procedure TNFE_ManifestacaoDestinatario.bSairClick(Sender: TObject);
begin
     Dados.Configuracao.Close;
     Close;
end;

procedure TNFE_ManifestacaoDestinatario.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     NFE_ManifestacaoDestinatario.Release;
     NFE_ManifestacaoDestinatario := nil;
end;

procedure TNFE_ManifestacaoDestinatario.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNFE_ManifestacaoDestinatario.FormShow(Sender: TObject);
begin
      cData.Date := Date;
      cHora.Text := TimetoStr(Time);
      cChave.Clear;
      cJustificativa.Clear;
      cMotivo.ItemIndex := 0;
      cJustificativa.Enabled := false;
      lJustificativa.Enabled := false;
      cJustificativa.Color   := clBtnface;

      Dados.Configuracao.Open;

      bFiltrar.Click;
end;

procedure TNFE_ManifestacaoDestinatario.bEnviarClick(Sender: TObject);
var
   tpAmb,
   cStat        : Integer;
   Util         : NFe_Util_2G_Interface;
   Certificado,
   SiglaWS,
   RetWS,
   Licenca,
   Versao,
   Proxy,
   Usuario,
   Protocolo,
   ProtocoloData,
   ProcEvento,
   Resultado,
   DataHora,
   mPasta,
   Senha: WideString;
   xmlProtocolo : TMemo;
begin
      If not Internet then begin
         MessageDlg('Erro de comunicação!'+#13+#13+'Você esta sem conexão com a Internet.', mtError, [mbOK], 0);
         Abort;
      End;

      If DataLimpa(cData.Text) then begin
         MessageDlg('Erro!'+#13+#13+'Data é campo obrigatório.', mtError, [mbOK], 0);
         cData.SetFocus;
         Abort;
      End;
      If Trim(RemoveCaracter(':', '', cHora.Text)) = '' then begin
         MessageDlg('Erro!'+#13+#13+'Hora é campo obrigatório.', mtError, [mbOK], 0);
         cHora.SetFocus;
         Abort;
      End;
      If Trim(cChave.Text) = '' then begin
         MessageDlg('Erro!'+#13+#13+'Chave da nota fiscal eletrônica é campo obrigatório.', mtError, [mbOK], 0);
         cChave.SetFocus;
         Abort;
      End;
      If Trim(cMotivo.Text) = '' then begin
         MessageDlg('Erro!'+#13+#13+'Motivo da manifestação é campo obrigatório.', mtError, [mbOK], 0);
         cMotivo.SetFocus;
         Abort;
      End;
      If (cMotivo.ItemIndex = 3) and (Trim(cJustificativa.Text) = '') then begin
         MessageDlg('Erro!'+#13+#13+'Para o motivo = "03" "Registro da Operação não Realizada" é obrigatório informar a justificativa.', mtError, [mbOK], 0);
         cJustificativa.SetFocus;
         Abort;
      End;
      If (cMotivo.ItemIndex = 3) and (Length(Trim(cJustificativa.Text)) < 15) then begin
         MessageDlg('Erro!'+#13+#13+'Para o motivo = "03" "Registro da Operação não Realizada" A justificativa deve ter pelo menos 15 caracteres.', mtError, [mbOK], 0);
         cJustificativa.SetFocus;
         Abort;
      End;

      Screen.Cursor := crHourGlass;

      With Dados, dmFiscal do begin
           Panel2.Enabled    := false;
           
           

           cMensagens.Clear;
           cMensagens.Lines.Add('Comunicando-se com o servidor da SEFAZ...Aguarde.');
           cMensagens.Lines.Add('');
           cMensagens.Lines.Add('1. Enviando manifestação.');
           Application.ProcessMessages;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Util        := CoUtil.Create;
           Certificado := Trim(EmpresasCertificado_Digital.AsString);
           SiglaWS     := Trim(EmpresasUF_WebServiceManifesto.AsString);
           RetWS       := '';
           tpAmb       := Menu_Principal.Amb_Producao;
           Licenca     := Trim(EmpresasLicensa_NFe_Util.Value);
           Versao      := Trim(EmpresasManifesto_Layout.Value);
           Proxy       := Trim(ConfiguracaoServidor_Proxy.AsString);
           Usuario     := Trim(ConfiguracaoUsuario_Proxy.AsString);
           Senha       := Trim(ConfiguracaoSenha_Proxy.AsString);
           DataHora    := FormatDateTime('yyyy-mm-dd "" hh:mm:ss', StrtoDateTime(cData.Text+cHora.Text));
           cJustificativa.Text := RemoveCaracterXML(cJustificativa.Text);

           ProcEvento := Util.EnviaManDest(SiglaWS, tpAmb, Certificado, Versao, MsgDados, RetWS, cStat, Resultado, cChave.Text, EmpresasCNPJ.AsString, DataHora, cMotivo.ItemIndex, cJustificativa.Text, Protocolo, ProtocoloData, Proxy, Usuario, Senha, Licenca);

           // 135 - Evento registrado e vinculado a NF-e.
           // 136 - Evento registrado, mas nao vinculado a NF-e.
           If (cStat = 135) or (cStat = 136) then begin
              cMensagens.Lines.Add('2.'+Resultado);
              cMensagens.Lines.Add('3. Número do Protocolo de homologação : '+Protocolo + '   Data :'+ProtocoloData);
              cMensagens.Lines.Add('4. Salvando Protocolo no banco de dados.');

              // Notas fiscal de emissão própria.
              Notas.SQL.Clear;
              Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE NFe_cNF = :pChave');
              Notas.ParamByName('pChave').AsString := cChave.Text;
              Notas.Open;
              If Notas.RecordCount > 0 then begin
                 Notas.Edit;
                       NotasManifesto_Protocolo.Value     := Protocolo;
                       NotasManifesto_DataProtocolo.Value := StrtoDateTime(Copy(ProtocoloData,9,2)+'/'+Copy(ProtocoloData,6,2)+'/'+Copy(ProtocoloData,1,4)+' '+Copy(ProtocoloData,12,11));
                       NotasManifesto_Motivo.Value        := cMotivo.ItemIndex;
                       NotasManifesto_Justificativa.Value := cJustificativa.Text;
                 Notas.Post;
              End;

              // Notas fiscal de emissão de terceiros.
              NotasTerceiros.SQL.Clear;
              NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE NFe_cNF = :pChave');
              NotasTerceiros.ParamByName('pChave').AsString := cChave.Text;
              NotasTerceiros.Open;
              If NotasTerceiros.RecordCount > 0 then begin
                 NotasTerceiros.Edit;
                                NotasTerceirosManifesto_Protocolo.Value     := Protocolo;
                                NotasTerceirosManifesto_DataProtocolo.Value := StrtoDateTime(Copy(ProtocoloData,9,2)+'/'+Copy(ProtocoloData,6,2)+'/'+Copy(ProtocoloData,1,4)+' '+Copy(ProtocoloData,12,11));
                                NotasTerceirosManifesto_Motivo.Value        := cMotivo.ItemIndex;
                                NotasTerceirosManifesto_Justificativa.Value := cJustificativa.Text;
                 NotasTerceiros.Post;
              End;

              Configuracao.Open;

              mPasta := Trim(ConfiguracaoPasta_NFE.Value) + '\'+Trim(stringreplace(EmpresasRazao_Social.AsString,'/', '',[rfReplaceAll]));
              If EmpresasMatriz_Filial.AsBoolean = true then
                 mPasta := mPasta + '_Matriz'
              else
                 mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);

              mPasta := mPasta + '\Manifesto';   
              If not DirectoryExists(mPasta) then ForceDirectories(mPasta);
              
              // Salvando o XML do protocolo da manifesstação.
              cMensagens.Lines.Add('5. Salvando arquivo XML do Protocolo no disco.');
              xmlProtocolo         := TMemo.Create(NFE_ManifestacaoDestinatario);
              xmlProtocolo.Visible := False;
              xmlProtocolo.Parent  := NFE_ManifestacaoDestinatario;
              xmlProtocolo.Lines.Clear;
              xmlProtocolo.Lines.Add(MsgDados);
              xmlProtocolo.Lines.SaveToFile(mPasta+'\NFe_'+cChave.Text+'_Manifestacao'+PoeZero(2,cMotivo.ItemIndex)+'.xml');

              xmlProtocolo.Lines.Clear;
              xmlProtocolo.Lines.Add(RetWS);
              xmlProtocolo.Lines.SaveToFile(mPasta+'\NFe_'+cChave.Text+'_ManifestacaoProtocolo'+PoeZero(2,cMotivo.ItemIndex)+'.xml');
           end else begin
              If cStat < 1000 then begin
                 cMensagens.Lines.Add('2. Evento de Manifestação do destinatário rejeitado pelo WS...');
                 cMensagens.Lines.Add('   '+Resultado);
              end else begin
                 cMensagens.Lines.Add('2. Falha klpna chamada do WS...');
                 cMensagens.Lines.Add('   '+Resultado);
              End;
           End;

           Panel2.Enabled    := true;
           
           
      End;

      MessageDlg( 'Envio da manifestação concluído!', mtInformation, [mbOk], 0 );
      Screen.Cursor := crDefault;
end;

procedure TNFE_ManifestacaoDestinatario.cMotivoChange(Sender: TObject);
begin
     cJustificativa.Enabled := false;
     cJustificativa.Color   := clBtnface;
     cJustificativa.Clear;
     lJustificativa.Enabled := false;
     If cMotivo.ItemIndex = 3 then begin
        cJustificativa.Enabled := true;
        cJustificativa.Color   := clWhite;
        lJustificativa.Enabled := true;
        cJustificativa.Setfocus;
     End;
end;

procedure TNFE_ManifestacaoDestinatario.cChaveListaChange(Sender: TObject);
begin
      cChave.Clear;
      If cChaveLista.DisplayValue <> '' then begin
         cChave.Text := tNotas.FieldByName('Chave').AsString;
      End;
end;

procedure TNFE_ManifestacaoDestinatario.bFiltrarClick(Sender: TObject);
begin
      tNotas.SQL.Clear;
      {
      tNotas.SQL.Add('SELECT  LTRIM(RTRIM(CAST(Numero AS VARCHAR(10)))) AS Nota');
      tNotas.SQL.Add('       ,Numero AS Ordem');
      tNotas.SQL.Add('       ,NFE_CNF AS Chave');
      tNotas.SQL.Add('       ,''P'' AS Tipo');
      tNotas.SQL.Add('       ,CASE WHEN ISNULL(Manifesto_Protocolo, '''') <> '''' THEN ''MANIFESTADA'' ELSE '''' END AS Manifesto' );
      tNotas.SQL.Add('       ,CNPJ = Destinatario_CNPJ_CPF');
      tNotas.SQL.Add('FROM   NotasFiscais');
      tNotas.SQL.Add('WHERE  Saida_Entrada = 0 AND Valor_TotalNota >= :pValor AND ISNULL(Cancelada, 0) = 0 AND Estado <> ''EX'' ');
      
      If (not DataLimpa(cDataIni.Text)) and (not DataLimpa(cDataFim.Text)) then begin
         tNotas.SQL.Add('  AND  Data_Emissao BETWEEN :pDataIni AND :pDataFim');
         tNotas.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tNotas.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;

      tNotas.SQL.Add('UNION ALL');
      }
      tNotas.SQL.Add('SELECT LTRIM(RTRIM(CAST(Nota AS VARCHAR(10)))) AS Nota');
      tNotas.SQL.Add('       ,Nota AS Ordem');
      tNotas.SQL.Add('       ,NFE_CNF AS Chave');
      tNotas.SQL.Add('       ,''T'' AS Tipo');
      tNotas.SQL.Add('       ,CASE WHEN ISNULL(Manifesto_Protocolo, '''')  <> '''' THEN ''MANIFESTADA'' ELSE '''' END AS Manifesto');
      tNotas.SQL.Add('       ,CNPJ = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor)');
      tNotas.SQL.Add('FROM   NotasTerceiros');
      tNotas.SQL.Add('WHERE  Valor_TotalNota >= :pValor AND ISNULL(NFe_cNF, '''') <> '''' ');

      If (not DataLimpa(cDataIni.Text)) and (not DataLimpa(cDataFim.Text)) then begin
         tNotas.SQL.Add('  AND  Data_Entrada BETWEEN :pDataIni AND :pDataFim');
         tNotas.ParamByName('pDataIni').AsDate := cDataIni.Date;
         tNotas.ParamByName('pDataFim').AsDate := cDataFim.Date;
      End;
      tNotas.SQL.Add('ORDER BY Ordem');
      tNotas.ParamByName('pValor').AsFloat := Dados.ConfiguracaoValor_ManifestoNFE.AsFloat;
      //tNotas.SQL.SavetoFile('c:\Temp\Manifestacao_Destinatario.sql');
      tNotas.Open;
end;

end.



