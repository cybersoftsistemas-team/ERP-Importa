unit frmNfe_Inutilizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RXCtrls, Vcl.ExtCtrls, RXSpin, 
  NFe_Util_2G_TLB, DateUtils, DB, Funcoes, system.UITypes, Vcl.Mask;

type
  TNFe_Inutilizacao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bInutilizar: TButton;
    Panel2: TPanel;
    StaticText2: TStaticText;
    cNumeroInicial: TRxSpinEdit;
    cNumeroFinal: TRxSpinEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cJustificativa: TMemo;
    StaticText4: TStaticText;
    cAno: TRxSpinEdit;
    Label2: TStaticText;
    cModelo: TEdit;
    StaticText5: TStaticText;
    cSerie: TEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    cMensagens: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bInutilizarClick(Sender: TObject);
    procedure cJustificativaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Inutilizar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   SiglaWS,
   NomeCertificado,
   CabMsg,
   DadosMsg,
   RetWS,
   Msg,
   Proxy,
   Usuario,
   Senha,
   Licenca,
   mVersaoNFE,
   NumeroProtocolo,
   DataProtocolo,
   procInutilizaNfe: Widestring;
   cStat,
   tpAmb           : integer;
   NFe_Inutilizacao: TNFe_Inutilizacao;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal, frmJanela_Comunicacao;

{$R *.dfm}

procedure TNFe_Inutilizacao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNFe_Inutilizacao.FormShow(Sender: TObject);
begin
       With Dados, dmFiscal do begin
            Empresas.SQL.Clear;
            Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
            Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
            Empresas.Open;

            Estados.SQL.Clear;
            Estados.SQL.Add('SELECT * FROM Estados');
            Estados.Open;
            Estados.Locate('Codigo', EmpresasEstado.AsString, [loCaseInsensitive]);
                        
            Configuracao.Open;

            cAno.Text    := Copy(InttoStr(Yearof(Date)), 3, 2);
            //cSerie.Text  := Dados.EmpresasNFEletronica_Serie.AsString;
            //cModelo.Text := Dados.EmpresasNFEletronica_Modelo.AsString;
            cSerie.Text  := '';
            cModelo.Text := '';
       End;
end;

procedure TNFe_Inutilizacao.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNFe_Inutilizacao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Nfe_Inutilizacao.Release;
     Nfe_Inutilizacao := nil;
end;

procedure TNFe_Inutilizacao.bInutilizarClick(Sender: TObject);
begin
     If not Internet then begin
        MessageDlg('Erro de comunicação!'+#13+#13+'Você esta sem conexão com a Internet.', mtError, [mbOK], 0);
        Abort;
     End;

     With dmFiscal, Dados do begin
          If Trim(EmpresasCertificado_Digital.AsString ) = '' then begin
             MessageDlg( 'Certificado digital não informado no cadastro da empresa!'+#13+#13+'Não é possivel executar a operação desejada.', mtError, [mbOk], 0);
             Abort;
          End;

          // Verifica numeros inicial e final.
          If cNumeroInicial.AsInteger > cNumeroFinal.AsInteger then begin
             MessageDlg('Erro de numeração!'+#13+#13+'Número inicial não pode ser maior que o número final.', mtError, [mbOK], 0);
             cNumeroFinal.SetFocus;
             Abort;
          End;
          If cNumeroInicial.AsInteger < 1 then begin
             MessageDlg('Erro de numeração!'+#13+#13+'Número inicial inválido.', mtError, [mbOK], 0);
             cNumeroInicial.SetFocus;
             Abort;
          End;
          If cNumeroFinal.AsInteger < 1 then begin
             MessageDlg('Erro de numeração!'+#13+#13+'Número final inválido.', mtError, [mbOK], 0);
             cNumeroFinal.SetFocus;
             Abort;
          End;

          // Verificando se existe alguma nota emitida com o intevalo informado.
          Notas.SQL.Clear;
          Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Numero BETWEEN :pInicial AND :pFinal)');
          Notas.ParamByName('pInicial').AsInteger := cNumeroInicial.AsInteger;
          Notas.ParamByName('pFinal').AsInteger   := cNumeroFinal.AsInteger;
          Notas.Open;

          If Notas.RecordCount > 0 then begin
             MessageDlg('Erro de intervalo!'+#13+#13+'Existe nota fiscal válida no intervalo informado.', mtError, [mbOK], 0);
             cNumeroInicial.SetFocus;
             Abort;
          End;
          If cModelo.Text = '' then begin
             MessageDlg('Erro de modelo!'+#13+#13+'É necessário informar o modelo da nota fiscal.', mtError, [mbOK], 0);
             cModelo.SetFocus;
             Abort;
          End;
          If cSerie.Text = '' then begin
             MessageDlg('Erro de série!'+#13+#13+'É necessário informar a série da nota fiscal.', mtError, [mbOK], 0);
             cSerie.SetFocus;
             Abort;
          End;

          // Verifica se a justificativa foi informada
          If cJustificativa.Text = '' then begin
             MessageDlg('Erro de justificativa!'+#13+#13+'É necessário informar a justificativa da inutilização dos números.', mtError, [mbOK], 0);
             cJustificativa.SetFocus;
             Abort;
          End;
          If (Length(Trim(cJustificativa.Lines.Text)) < 15) or (Length(Trim(cJustificativa.Lines.Text)) > 255) then begin
             MessageDlg('Erro de tamanho justificativa!'+#13+#13+'A justificativa deve conter no mínimo <15> e no máximo <255> caracteres.', mtError, [mbOK], 0);
             cJustificativa.SetFocus;
             Abort;
          End;
     End;

     Inutilizar;
end;

procedure TNFe_Inutilizacao.cJustificativaChange(Sender: TObject);
begin
     StaticText3.Caption := 'Justificativa    Tamanho:'+InttoStr(Length(Trim(cJustificativa.Lines.Text)));
end;

procedure TNFe_Inutilizacao.Inutilizar;
var
    Util        : NFe_Util_2G_Interface;
    mPasta      : String;
    xmlProtocolo: TMemo;
begin
      Util                := CoUtil.Create;
      NomeCertificado     := Trim(Dados.EmpresasCertificado_Digital.AsString);
      SiglaWS             := Trim(Dados.EmpresasUF_WebService.AsString);
      RetWS               := '';
      CabMsg              := '';
      DadosMsg            := '';
      Msg                 := '';
      tpAmb               := Menu_Principal.Amb_Producao;
      Licenca             := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
      mVersaoNFE          := Trim(Dados.EmpresasNFEletronica_Layout.Value);
      cJustificativa.Text := RemoveCaracterXML(cJustificativa.Text);
      Proxy               := Trim(Dados.ConfiguracaoServidor_Proxy.AsString);
      Usuario             := Trim(Dados.ConfiguracaoUsuario_Proxy.AsString);
      Senha               := Trim(Dados.ConfiguracaoSenha_Proxy.AsString);

      Screen.Cursor := crHourGlass;
      Janela_Comunicacao := TJanela_Comunicacao.Create(Self);
      Janela_Comunicacao.Show;
      Application.ProcessMessages;

      ProcInutilizaNfe := Util.InutilizaNroNF2G(SiglaWS, tpAmb, NomeCertificado, mVersaoNFE, DadosMsg, MsgRetWS, cStat, MsgResultado, Dados.EstadosNumero.AsString, Trim(cAno.Text), Dados.EmpresasCNPJ.AsString, cModelo.Text, cSerie.Text, cNumeroInicial.Text, cNumeroFinal.Text, cJustificativa.Lines.Text, NumeroProtocolo, DataProtocolo, Proxy, Usuario, Senha, Licenca);
      Janela_Comunicacao.Close;

      cMensagens.Clear;
      cMensagens.Lines.Add(MsgResultado);

      If cStat = 102 then begin
         mPasta := Trim(Dados.ConfiguracaoPasta_NFE.Value) + '\'+Trim(stringreplace(Dados.EmpresasRazao_Social.AsString, '/', '', [rfReplaceAll]));
         If Dados.EmpresasMatriz_Filial.AsBoolean = true then
            mPasta := mPasta + '_Matriz'
         else
            mPasta := mPasta + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
         If not DirectoryExists(mPasta) then ForceDirectories(mPasta);
         mPasta := mPasta + '\NFe_Inutilizacao_'+ PoeZero(9, cNumeroInicial.AsInteger)+'_a_'+PoeZero(9, cNumeroFinal.AsInteger)+'.xml';

         xmlProtocolo         := TMemo.Create(NFe_Inutilizacao);
         xmlProtocolo.Visible := False;
         xmlProtocolo.Parent  := NFe_Inutilizacao;
         xmlProtocolo.Lines.Add(ProcInutilizaNfe);
         xmlProtocolo.Lines.SaveToFile(mPasta);
         xmlProtocolo.Destroy;

         cMensagens.Lines.Add('Protocolo de inutilização: '+NumeroProtocolo);
         cMensagens.Lines.Add('Data e Hora              : '+DataProtocolo);
      end else begin
         If cStat < 1000 then
             cMensagens.Lines.Add('Mensagem de Inutilização rejeitada pelo WS...')
         else
             cMensagens.Lines.Add('Falha na chamada do WS...');
      End;
      Screen.Cursor := crDefault;
      Util          := nil;
end;


end.
