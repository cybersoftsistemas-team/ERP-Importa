{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para interação com equipa- }
{ mentos de Automação Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2020 Daniel Simoes de Almeida               }
{                                                                              }
{  Você pode obter a última versão desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{  Esta biblioteca é software livre; você pode redistribuí-la e/ou modificá-la }
{ sob os termos da Licença Pública Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a versão 2.1 da Licença, ou (a seu critério) }
{ qualquer versão posterior.                                                   }
{                                                                              }
{  Esta biblioteca é distribuída na expectativa de que seja útil, porém, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia implícita de COMERCIABILIDADE OU      }
{ ADEQUAÇÃO A UMA FINALIDADE ESPECÍFICA. Consulte a Licença Pública Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICENÇA.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Você deve ter recebido uma cópia da Licença Pública Geral Menor do GNU junto}
{ com esta biblioteca; se não, escreva para a Free Software Foundation, Inc.,  }
{ no endereço 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Você também pode obter uma copia da licença em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Simões de Almeida - daniel@projetoacbr.com.br - www.projetoacbr.com.br}
{       Rua Coronel Aureliano de Camargo, 963 - Tatuí - SP - 18270-170         }
{******************************************************************************}

unit Frm_ACBrReinf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Spin, Buttons, ComCtrls, OleCtrls, SHDocVw, ShellAPI, XMLIntf, XMLDoc, zlib, ClipBrd, MSClasses,
  ACBrUtil.Base, ACBrUtil.Strings, ACBrUtil.DateTime, ACBrUtil.FilesIO, ACBrBase, ACBrDFe, ACBrReinf, pcnConversaoReinf, Data.DB, MemDS, DBAccess, MSAccess, Vcl.WinXPickers, Vcl.Mask, RxToolEdit, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls;

type
  TfrmACBrReinf = class(TForm)
    pnlMenus: TPanel;
    pnlCentral: TPanel;
    btnSalvarConfig: TBitBtn;
    pgcBotoes: TPageControl;
    pgRespostas: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    OpenDialog1: TOpenDialog;
    tbsEventos: TTabSheet;
    tsFormaEnvio: TTabSheet;
    ACBrReinf1: TACBrReinf;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    lblRecibo: TLabel;
    lblEvento: TLabel;
    edProtocolo: TEdit;
    edRecibo: TEdit;
    cbEvento: TComboBox;
    ChkRetificadora: TCheckBox;
    rdgOperacao: TRadioGroup;
    mmoDados: TMemo;
    mmoXMLEnv: TMemo;
    mmoXMLRet: TMemo;
    memoLog: TMemo;
    tNotas: TMSQuery;
    tEmpresa: TMSQuery;
    tTotal: TMSQuery;
    Panel1: TPanel;
    bSair: TButton;
    btnGerar: TButton;
    btnLerArqINI: TButton;
    btnLerArqXML: TButton;
    btnValidarAssinatura: TButton;
    btnConsultar: TButton;
    btnConsultarRecibo: TButton;
    btnValidarSchema: TButton;
    btnEnviar: TButton;
    tREINF: TMSQuery;
    tbsREINF: TTabSheet;
    DBGrid1: TDBGrid;
    dstREINF: TDataSource;
    PageControl4: TPageControl;
    TabSheet12: TTabSheet;
    Label12: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    PageControl3: TPageControl;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label39: TLabel;
    edContNome: TEdit;
    edContCPF: TEdit;
    edContFone: TEdit;
    edContCel: TEdit;
    edContEmail: TEdit;
    TabSheet11: TTabSheet;
    Label40: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label13: TLabel;
    edSoftRazao: TEdit;
    edSoftCNPJ: TEdit;
    edSoftEmail: TEdit;
    edSoftFone: TEdit;
    edSoftContato: TEdit;
    cVersao: TEdit;
    edtEmitCNPJ: TEdit;
    cData: TDateEdit;
    cEmpresa: TEdit;
    cFilial: TEdit;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    sbtnPathSalvar: TSpeedButton;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label42: TLabel;
    spPathSchemas: TSpeedButton;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    cbFormaEmissao: TComboBox;
    cbxAtualizarXML: TCheckBox;
    cbxExibirErroSchema: TCheckBox;
    edtFormatoAlerta: TEdit;
    cbxRetirarAcentos: TCheckBox;
    cbVersaoDF: TComboBox;
    edtPathSchemas: TEdit;
    TabSheet3: TTabSheet;
    lSSLLib: TLabel;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    lXmlSign: TLabel;
    gbCertificado: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    sbtnNumSerie: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    btnDataValidade: TButton;
    btnNumSerie: TButton;
    btnSubName: TButton;
    btnCNPJ: TButton;
    btnIssuerName: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    btnSha256: TButton;
    cbAssinar: TCheckBox;
    btnHTTPS: TButton;
    btnLeituraX509: TButton;
    cbSSLLib: TComboBox;
    cbCryptLib: TComboBox;
    cbHttpLib: TComboBox;
    cbXmlSignLib: TComboBox;
    TabSheet7: TTabSheet;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    lTimeOut: TLabel;
    lSSLLib1: TLabel;
    cbxVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    cbxSalvarSOAP: TCheckBox;
    seTimeOut: TSpinEdit;
    cbSSLType: TComboBox;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    gbxRetornoEnvio: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    TabSheet13: TTabSheet;
    sbPathReinf: TSpeedButton;
    Label35: TLabel;
    cbxSalvarArqs: TCheckBox;
    cbxPastaMensal: TCheckBox;
    cbxAdicionaLiteral: TCheckBox;
    cbxEmissaoPathReinf: TCheckBox;
    cbxSalvaPathEvento: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    edtPathReinf: TEdit;
    cbxSepararPorModelo: TCheckBox;
    BitBtn1: TBitBtn;
    chk1000: TToggleSwitch;
    chk1050: TToggleSwitch;
    chk1070: TToggleSwitch;
    chk2010: TToggleSwitch;
    chk2020: TToggleSwitch;
    chk2030: TToggleSwitch;
    chk2040: TToggleSwitch;
    chk2050: TToggleSwitch;
    chk2055: TToggleSwitch;
    chk2060: TToggleSwitch;
    chk2070: TToggleSwitch;
    chk2098: TToggleSwitch;
    chk2099: TToggleSwitch;
    chk3010: TToggleSwitch;
    chk4010: TToggleSwitch;
    chk4020: TToggleSwitch;
    chk4040: TToggleSwitch;
    chk4080: TToggleSwitch;
    chk4099: TToggleSwitch;
    chk1000Limpar: TToggleSwitch;
    chk9000: TToggleSwitch;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure sbPathReinfClick(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnNumSerieClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnDataValidadeClick(Sender: TObject);
    procedure btnNumSerieClick(Sender: TObject);
    procedure btnSubNameClick(Sender: TObject);
    procedure btnCNPJClick(Sender: TObject);
    procedure btnIssuerNameClick(Sender: TObject);
    procedure btnSha256Click(Sender: TObject);
    procedure btnHTTPSClick(Sender: TObject);
    procedure btnLeituraX509Click(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure spPathSchemasClick(Sender: TObject);
    procedure PathClick(Sender: TObject);
    procedure cbSSLTypeChange(Sender: TObject);
    procedure cbSSLLibChange(Sender: TObject);
    procedure cbCryptLibChange(Sender: TObject);
    procedure cbHttpLibChange(Sender: TObject);
    procedure cbXmlSignLibChange(Sender: TObject);
    procedure lblColaboradorClick(Sender: TObject);
    procedure lblPatrocinadorClick(Sender: TObject);
    procedure lblDoar1Click(Sender: TObject);
    procedure lblDoar2Click(Sender: TObject);
    procedure lblMouseEnter(Sender: TObject);
    procedure lblMouseLeave(Sender: TObject);
    procedure ACBrReinf1GerarLog(const ALogLine: String;var Tratado: Boolean);
    procedure ACBrReinf1StatusChange(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnLerArqINIClick(Sender: TObject);
    procedure btnLerArqXMLClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnValidarAssinaturaClick(Sender: TObject);
    procedure btnValidarSchemaClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnConsultarReciboClick(Sender: TObject);
    procedure chk1000AClick(Sender: TObject);
    procedure rdgOperacaoClick(Sender: TObject);
    procedure ACBrReinf1TransmissaoEventos(const AXML: String; ATipo: TEventosReinf);
    procedure bSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }

    {Eventos}
    procedure GerarReinf1000;
    procedure GerarReinf1050;
    procedure GerarReinf1070;
    procedure GerarReinf2010;
    procedure GerarReinf2020;
    procedure GerarReinf2030;
    procedure GerarReinf2040;
    procedure GerarReinf2050;
    procedure GerarReinf2055;
    procedure GerarReinf2060;
    procedure GerarReinf2070;
    procedure GerarReinf2098;
    procedure GerarReinf2099;
    procedure GerarReinf3010;
    procedure GerarReinf4010;
    procedure GerarReinf4020;
    procedure GerarReinf4040;
    procedure GerarReinf4080;
    procedure GerarReinf4099;
    procedure GerarReinf9000;

    procedure PreencherXMLEventos;
    function GetTipoOperacao: TTipoOperacao;

    procedure GravarConfiguracao;
    procedure LerConfiguracao;
    procedure ConfigurarComponente;
    procedure AtualizarSSLLibsCombo;
    procedure PegaNotasPro(pCli: integer);
    procedure PegaNotasTer(Fornecedor: integer);
    function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
    procedure PegaNotasImp(Fornecedor: integer);
  public
    { Public declarations }
    procedure DepoisDeEnviar(const Axml: string);
    procedure AntesDeEnviar(const Axml: string);
  end;

var
  frmACBrReinf: TfrmACBrReinf;
  m2010
 ,m2020
 ,m2030
 ,m2040
 ,m2050
 ,m2060
 ,m2055
 ,m4020: boolean;
 mRegistro:integer;
 mProtocolo: string;

implementation

uses
  blcksock, TypInfo, IniFiles, synacode, strutils, math, DateUtils, FileCtrl, Printers,
  ACBrDFeConfiguracoes, ACBrDFeSSL, pcnConversao, ACBrDFeOpenSSL, Frm_Status, Frm_SelecionarCertificado, frmDados, frmMenu_Principal, FUNCOES; 

const
  SELDIRHELP = 1000;

{$R *.dfm}

{ TfrmACBrReinf }


procedure TfrmACBrReinf.AtualizarSSLLibsCombo;
begin
      cbSSLLib.ItemIndex     := Integer(ACBrReinf1.Configuracoes.Geral.SSLLib);
      cbCryptLib.ItemIndex   := Integer(ACBrReinf1.Configuracoes.Geral.SSLCryptLib);
      cbHttpLib.ItemIndex    := Integer(ACBrReinf1.Configuracoes.Geral.SSLHttpLib);
      cbXmlSignLib.ItemIndex := Integer(ACBrReinf1.Configuracoes.Geral.SSLXmlSignLib);
      cbSSLType.Enabled      := (ACBrReinf1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);
end;

procedure TfrmACBrReinf.BitBtn1Click(Sender: TObject);
begin
     PageControl4.Enabled := not PageControl4.Enabled;
end;

procedure TfrmACBrReinf.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TfrmACBrReinf.btnCNPJClick(Sender: TObject);
begin
  ShowMessage(ACBrReinf1.SSL.CertCNPJ);
end;

procedure TfrmACBrReinf.btnDataValidadeClick(Sender: TObject);
begin
  ShowMessage(FormatDateBr(ACBrReinf1.SSL.CertDataVenc));
end;

procedure TfrmACBrReinf.btnHTTPSClick(Sender: TObject);
var
  Acao: String;
  OldUseCert: Boolean;
begin
      Acao := '<?xml version="1.0" encoding="UTF-8" standalone="no"?>' +
              '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" ' +
              'xmlns:cli="http://cliente.bean.master.sigep.bsb.correios.com.br/"> ' +
              ' <soapenv:Header/>' +
              ' <soapenv:Body>' +
              ' <cli:consultaCEP>' +
              ' <cep>18270-170</cep>' +
              ' </cli:consultaCEP>' +
              ' </soapenv:Body>' +
              ' </soapenv:Envelope>';

      OldUseCert := ACBrReinf1.SSL.UseCertificateHTTP;
      ACBrReinf1.SSL.UseCertificateHTTP := False;

      try
         mmoXMLRet.Lines.Text := ACBrReinf1.SSL.Enviar(Acao, 'https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl', '');
      finally
         ACBrReinf1.SSL.UseCertificateHTTP := OldUseCert;
      end;

      //Respostas.ActivePageIndex := 0;
end;

procedure TfrmACBrReinf.btnIssuerNameClick(Sender: TObject);
begin
 ShowMessage(ACBrReinf1.SSL.CertIssuerName + sLineBreak + sLineBreak + 'Certificadora: ' + ACBrReinf1.SSL.CertCertificadora);
end;

procedure TfrmACBrReinf.btnLeituraX509Click(Sender: TObject);
//var
//  Erro, AName: String;
begin
     with ACBrReinf1.SSL do begin
          CarregarCertificadoPublico(memoLog.Lines.Text);
          memoLog.Lines.Add(CertIssuerName);
          memoLog.Lines.Add(CertRazaoSocial);
          memoLog.Lines.Add(CertCNPJ);
          memoLog.Lines.Add(CertSubjectName);
          memoLog.Lines.Add(CertNumeroSerie);

         //MemoDados.Lines.LoadFromFile('c:\temp\teste2.xml');
         //MemoResp.Lines.Text := Assinar(MemoDados.Lines.Text, 'Entrada', 'Parametros');
         //Erro := '';
         //if VerificarAssinatura(MemoResp.Lines.Text, Erro, 'Parametros' ) then
         //  ShowMessage('OK')
         //else
         //  ShowMessage('ERRO: '+Erro)

         //Respostas.ActivePageIndex := 0;
     end;
end;

procedure TfrmACBrReinf.btnNumSerieClick(Sender: TObject);
begin
     ShowMessage(ACBrReinf1.SSL.CertNumeroSerie);
end;

procedure TfrmACBrReinf.btnSalvarConfigClick(Sender: TObject);
begin
     GravarConfiguracao;
     PageControl4.Enabled := not PageControl4.Enabled;
end;

procedure TfrmACBrReinf.btnSha256Click(Sender: TObject);
var
  Ahash: AnsiString;
begin
     Ahash := ACBrReinf1.SSL.CalcHash(Edit1.Text, dgstSHA256, outBase64, cbAssinar.Checked);
     memoLog.Lines.Add( Ahash );
     //Respostas.ActivePageIndex := 0;
end;

procedure TfrmACBrReinf.btnSubNameClick(Sender: TObject);
begin
     ShowMessage(ACBrReinf1.SSL.CertSubjectName + sLineBreak + sLineBreak + 'Razão Social: ' + ACBrReinf1.SSL.CertRazaoSocial);
end;

procedure TfrmACBrReinf.cbCryptLibChange(Sender: TObject);
begin
     try
        if cbCryptLib.ItemIndex <> -1 then ACBrReinf1.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
     finally
        AtualizarSSLLibsCombo;
     end;
end;

procedure TfrmACBrReinf.cbHttpLibChange(Sender: TObject);
begin
     try
        if cbHttpLib.ItemIndex <> -1 then ACBrReinf1.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
     finally
        AtualizarSSLLibsCombo;
     end;
end;

procedure TfrmACBrReinf.cbSSLLibChange(Sender: TObject);
begin
     try
        if cbSSLLib.ItemIndex <> -1 then ACBrReinf1.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
     finally
        AtualizarSSLLibsCombo;
     end;
end;

procedure TfrmACBrReinf.cbSSLTypeChange(Sender: TObject);
begin
     if cbSSLType.ItemIndex <> -1 then ACBrReinf1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);
end;

procedure TfrmACBrReinf.cbXmlSignLibChange(Sender: TObject);
begin
     try
        if cbXmlSignLib.ItemIndex <> -1 then ACBrReinf1.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
     finally
        AtualizarSSLLibsCombo;
     end;
end;

procedure TfrmACBrReinf.FormCreate(Sender: TObject);
var
  T: TSSLLib;
  I: TpcnTipoEmissao;
  K: TVersaoReinf;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
  
  aServidor: TIniFile;

  mAuth
 ,mServidor
 ,mBanco
 ,mEmpresa
 ,mINI: String;
begin
      cVersao.Text := VersaoEXE(Application.ExeName);
      m2010 := false;
      m2020 := false;
      m2030 := false;
      m2040 := false;
      m2050 := false;
      m2060 := false;
      m2055 := false;
      m4020 := false;

      cbSSLLib.Items.Clear;
      for T := Low(TSSLLib) to High(TSSLLib) do cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) );
      cbSSLLib.ItemIndex := 4;

      cbCryptLib.Items.Clear;
      for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) );
      cbCryptLib.ItemIndex := 0;

      cbHttpLib.Items.Clear;
      for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) );
      cbHttpLib.ItemIndex := 0;

      cbXmlSignLib.Items.Clear;
      for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) );
      cbXmlSignLib.ItemIndex := 0;

      cbSSLType.Items.Clear;
      for Y := Low(TSSLType) to High(TSSLType) do cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) );
      cbSSLType.ItemIndex := 5;

      cbFormaEmissao.Items.Clear;
      for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) );
      cbFormaEmissao.ItemIndex := 0;

      cbVersaoDF.Items.Clear;
      for K := Low(TVersaoReinf) to High(TVersaoReinf) do cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TVersaoReinf), integer(K) ) );
      cbVersaoDF.ItemIndex := 0;

      // Fazendo conexão do banco de dados.
      {
      with Banco do begin
//           mINI := ExtractFilePath(UpperCase(Application.ExeName))+'ImportaServidor.ini';
           mINI := 'c:\sistemas_xe\Faturamento\Codigo_Fonte\ImportaServidor.ini';
           if FileExists(mINI) then begin
              aServidor       := TIniFile.Create(mINI);
              mAuth           := aServidor.ReadString ('SERVIDOR','Autenticacao'   , 'auServer');
              Authentication  := iif(mAuth = 'auServer', auServer, auWindows);
              Server          := aServidor.ReadString  ('SERVIDOR'      , 'Nome'   , '***');
              Username        := aServidor.ReadString  ('BANCO DE DADOS', 'usuario', 'sa');
              Password        := aServidor.ReadString  ('BANCO DE DADOS', 'chc'    , 'sa');
              mEmpresa        := aServidor.ReadString  ('ABERTURA', 'Empresa'      , 'sa');
              cServer.Caption := server;
              
              with tEmpresa do begin
                   sql.Clear;
                   sql.Add('select * from Cybersoft_Cadastros.dbo.Empresas where Codigo = '+mEmpresa);
                   open;
                   cbUF.ItemIndex := cbUF.Items.IndexOf(FieldByName('Estado').AsString);
              end;
              Database      := tEmpresa.FieldByName('Banco_Dados').AsString;
              cEmpresa.Text := tEmpresa.FieldByName('Razao_Social').AsString;
              cFilial.Text  := iif(tEmpresa.FieldByName('Numero_Filial').asinteger = 0, 'MATRIZ', 'FILIAL '+tEmpresa.FieldByName('Numero_Filial').asstring);
           end;

           try
              Connect;
           except
              showmessage('Servidor de banco de dados não configurado corretamente!');
              Abort;
           end;
      end;
      }
      {
      with Banco do begin
           Authentication  := auServer;
           Server          := iif(ParamStr(1) <> '', ParamStr(1), 'SERVER-DADOS');
           Database        := iif(ParamStr(2) <> '', ParamStr(2), 'Cybersoft_Givotrading_Matriz');
           Username        := iif(ParamStr(3) <> '', ParamStr(3), 'sa');
           Password        := iif(ParamStr(4) <> '', ParamStr(4), 'cybersoft@123');
           mEmpresa        := iif(ParamStr(5) <> '', ParamStr(5), '33');
           cServer.Caption := server;
           with tEmpresa do begin
                sql.Clear;
                sql.Add('select * from Cybersoft_Cadastros.dbo.Empresas where Codigo = '+mEmpresa);
                open;
                cbUF.ItemIndex := cbUF.Items.IndexOf(FieldByName('Estado').AsString);
           end;
           cEmpresa.Text := tEmpresa.FieldByName('Razao_Social').AsString;
           cFilial.Text  := iif(tEmpresa.FieldByName('Numero_Filial').asinteger = 0, 'MATRIZ', 'FILIAL '+tEmpresa.FieldByName('Numero_Filial').asstring);
           try
              Connect;
           except
              showmessage('Servidor de banco de dados não configurado corretamente!');
              Abort;
           end;
      end;
      }
      with tEmpresa do begin
           sql.Clear;
           sql.Add('select * from Empresas where Codigo = '+inttostr(Menu_Principal.mEmpresa));
           open;
           cbUF.ItemIndex := cbUF.Items.IndexOf(FieldByName('Estado').AsString);
      end;
      cEmpresa.Text := tEmpresa.FieldByName('Razao_Social').AsString;
      cFilial.Text  := iif(tEmpresa.FieldByName('Numero_Filial').asinteger = 0, 'MATRIZ', 'FILIAL '+tEmpresa.FieldByName('Numero_Filial').asstring);
      with tReinf do begin
           sql.Clear;
           sql.add('select * from REINF order by Registro desc');
           Open
      end;
                                                      
      LerConfiguracao;
end;

procedure TfrmACBrReinf.GravarConfiguracao;
var
  //IniFile: String;
  Ini: TIniFile;
begin
     //IniFile := ChangeFileExt('CybersoftREINF', '.ini');
     //Ini := TIniFile.Create(IniFile);
     Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'CybersoftREINF.ini');     
     try
         Ini.WriteInteger('Certificado', 'SSLLib',     cbSSLLib.ItemIndex);
         Ini.WriteInteger('Certificado', 'CryptLib',   cbCryptLib.ItemIndex);
         Ini.WriteInteger('Certificado', 'HttpLib',    cbHttpLib.ItemIndex);
         Ini.WriteInteger('Certificado', 'XmlSignLib', cbXmlSignLib.ItemIndex);
         Ini.WriteString( 'Certificado', 'Caminho',    edtCaminho.Text);
         Ini.WriteString( 'Certificado', 'Senha',      edtSenha.Text);
         Ini.WriteString( 'Certificado', 'NumSerie',   edtNumSerie.Text);

         Ini.WriteBool(   'Geral', 'AtualizarXML',     cbxAtualizarXML.Checked);
         Ini.WriteBool(   'Geral', 'ExibirErroSchema', cbxExibirErroSchema.Checked);
         Ini.WriteString( 'Geral', 'FormatoAlerta',    edtFormatoAlerta.Text);
         Ini.WriteInteger('Geral', 'FormaEmissao',     cbFormaEmissao.ItemIndex);
         Ini.WriteInteger('Geral', 'VersaoDF',         cbVersaoDF.ItemIndex);
         Ini.WriteBool(   'Geral', 'RetirarAcentos',   cbxRetirarAcentos.Checked);
         Ini.WriteBool(   'Geral', 'Salvar',           ckSalvar.Checked);
         Ini.WriteString( 'Geral', 'PathSalvar',       edtPathLogs.Text);
         Ini.WriteString( 'Geral', 'PathSchemas',      edtPathSchemas.Text);

//         Ini.WriteString( 'WebService', 'UF',         cbUF.Text);
         Ini.WriteInteger('WebService', 'Ambiente',   rgTipoAmb.ItemIndex);
         Ini.WriteBool(   'WebService', 'Visualizar', cbxVisualizar.Checked);
         Ini.WriteBool(   'WebService', 'SalvarSOAP', cbxSalvarSOAP.Checked);
         Ini.WriteBool(   'WebService', 'AjustarAut', cbxAjustarAut.Checked);
         Ini.WriteString( 'WebService', 'Aguardar',   edtAguardar.Text);
         Ini.WriteString( 'WebService', 'Tentativas', edtTentativas.Text);
         Ini.WriteString( 'WebService', 'Intervalo',  edtIntervalo.Text);
         Ini.WriteInteger('WebService', 'TimeOut',    seTimeOut.Value);
         Ini.WriteInteger('WebService', 'SSLType',    cbSSLType.ItemIndex);

         Ini.WriteString('Proxy', 'Host',  edtProxyHost.Text);
         Ini.WriteString('Proxy', 'Porta', edtProxyPorta.Text);
         Ini.WriteString('Proxy', 'User',  edtProxyUser.Text);
         Ini.WriteString('Proxy', 'Pass',  edtProxySenha.Text);

         Ini.WriteBool(  'Arquivos', 'Salvar'          , cbxSalvarArqs.Checked);
         Ini.WriteBool(  'Arquivos', 'PastaMensal'     , cbxPastaMensal.Checked);
         Ini.WriteBool(  'Arquivos', 'AddLiteral'      , cbxAdicionaLiteral.Checked);
         Ini.WriteBool(  'Arquivos', 'EmissaoPathReinf', cbxEmissaoPathReinf.Checked);
         Ini.WriteBool(  'Arquivos', 'SalvarPathEvento', cbxSalvaPathEvento.Checked);
         Ini.WriteBool(  'Arquivos', 'SepararPorCNPJ'  , cbxSepararPorCNPJ.Checked);
         Ini.WriteBool(  'Arquivos', 'SepararPorModelo', cbxSepararPorModelo.Checked);
         Ini.WriteString('Arquivos', 'PathReinf'       , edtPathReinf.Text);
         Ini.WriteString('Arquivos', 'Data'            , cData.Text);
         {
         Ini.WriteString('Emitente','CNPJ',    edtEmitCNPJ.Text);
         Ini.WriteString('Contato' ,'Nome',    edContNome.Text);
         Ini.WriteString('Contato' ,'CPF',     edContCPF.Text);
         Ini.WriteString('Contato' ,'Fone',    edContFone.Text);
         Ini.WriteString('Contato' ,'Celular', edContCel.Text);
         Ini.WriteString('Contato' ,'Email',   edContEmail.Text);
         }
         Ini.WriteString('SofHouse', 'RazaoSocial', edSoftRazao.Text);
         Ini.WriteString('SofHouse', 'CNPJ',        edSoftCNPJ.Text);
         Ini.WriteString('SofHouse', 'Email',       edSoftEmail.Text);
         Ini.WriteString('SofHouse', 'Fone',        edSoftFone.Text);
         Ini.WriteString('SofHouse', 'Contato',     edSoftContato.Text);
         

         Ini.writebool('Opcoes', 'chk1000Limpar', iif(chk1000Limpar.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk1000', iif(chk1000.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk1050', iif(chk1050.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk1070', iif(chk1070.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk2010', iif(chk2010.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk2020', iif(chk2020.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk2030', iif(chk2030.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk2040', iif(chk2040.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk2050', iif(chk2050.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk2055', iif(chk2055.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk2060', iif(chk2060.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk2070', iif(chk2070.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk2098', iif(chk2098.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk2099', iif(chk2099.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk3010', iif(chk3010.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk4010', iif(chk4010.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk4020', iif(chk4020.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk4040', iif(chk4040.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk4080', iif(chk4080.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk4099', iif(chk4099.State = tssOn, true, false));
         Ini.writebool('Opcoes', 'chk9000', iif(chk9000.State = tssOn, true, false));
         
         {
         Ini.writebool('Opcoes', 'chk1000', chk1000.Checked);
         Ini.writebool('Opcoes', 'chk1050', chk1050.Checked);
         Ini.writebool('Opcoes', 'chk1070', chk1070.Checked);
         Ini.writebool('Opcoes', 'chk2010', chk2010.Checked);
         Ini.writebool('Opcoes', 'chk2020', chk2020.Checked);
         Ini.writebool('Opcoes', 'chk2030', chk2030.Checked);
         Ini.writebool('Opcoes', 'chk2040', chk2040.Checked);
         Ini.writebool('Opcoes', 'chk2050', chk2050.Checked);
         Ini.writebool('Opcoes', 'chk2055', chk2055.Checked);
         Ini.writebool('Opcoes', 'chk2060', chk2060.Checked);
         Ini.writebool('Opcoes', 'chk2070', chk2070.Checked);
         Ini.writebool('Opcoes', 'chk2098', chk2098.Checked);
         Ini.writebool('Opcoes', 'chk2099', chk2099.Checked);
         Ini.writebool('Opcoes', 'chk3010', chk3010.Checked);
         Ini.writebool('Opcoes', 'chk4010', chk4010.Checked);
         Ini.writebool('Opcoes', 'chk4020', chk4020.Checked);
         Ini.writebool('Opcoes', 'chk4040', chk4040.Checked);
         Ini.writebool('Opcoes', 'chk4080', chk4080.Checked);
         Ini.writebool('Opcoes', 'chk4099', chk4099.Checked);
         }
         ConfigurarComponente;
     finally
         Ini.Free;
     end;
end;

procedure TfrmACBrReinf.lblColaboradorClick(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/5');
end;

procedure TfrmACBrReinf.lblDoar1Click(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/14');
end;

procedure TfrmACBrReinf.lblDoar2Click(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/14');
end;

procedure TfrmACBrReinf.lblMouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [fsBold,fsUnderline];
end;

procedure TfrmACBrReinf.lblMouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [fsBold];
end;

procedure TfrmACBrReinf.lblPatrocinadorClick(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/5');
end;

procedure TfrmACBrReinf.LerConfiguracao;
var
  //IniFile: String;
  Ini: TIniFile;
begin
  //IniFile := ChangeFileExt('CybersoftREINF', '.ini');
  //Ini     := TIniFile.Create(IniFile);
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'CybersoftREINF.ini');     
  try
    cbSSLLib.ItemIndex     := Ini.ReadInteger('Certificado', 'SSLLib',     4);
    cbCryptLib.ItemIndex   := Ini.ReadInteger('Certificado', 'CryptLib',   0);
    cbHttpLib.ItemIndex    := Ini.ReadInteger('Certificado', 'HttpLib',    0);
    cbXmlSignLib.ItemIndex := Ini.ReadInteger('Certificado', 'XmlSignLib', 0);
    cbSSLLibChange(cbSSLLib);
    edtCaminho.Text        := Ini.ReadString( 'Certificado', 'Caminho',    '');
    edtSenha.Text          := Ini.ReadString( 'Certificado', 'Senha',      '');
    edtNumSerie.Text       := Ini.ReadString( 'Certificado', 'NumSerie',   '');

    cbxAtualizarXML.Checked     := Ini.ReadBool(   'Geral', 'AtualizarXML',     True);
    cbxExibirErroSchema.Checked := Ini.ReadBool(   'Geral', 'ExibirErroSchema', True);
    edtFormatoAlerta.Text       := Ini.ReadString( 'Geral', 'FormatoAlerta',    'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.');
    cbFormaEmissao.ItemIndex    := Ini.ReadInteger('Geral', 'FormaEmissao',     0);

    cbVersaoDF.ItemIndex      := Ini.ReadInteger('Geral', 'VersaoDF',       0);
    ckSalvar.Checked          := Ini.ReadBool(   'Geral', 'Salvar',         True);
    cbxRetirarAcentos.Checked := Ini.ReadBool(   'Geral', 'RetirarAcentos', True);
    edtPathLogs.Text          := Ini.ReadString( 'Geral', 'PathSalvar',     PathWithDelim(ExtractFilePath(Application.ExeName))+'Logs');
    edtPathSchemas.Text       := Ini.ReadString( 'Geral', 'PathSchemas',    PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TVersaoReinf), integer(cbVersaoDF.ItemIndex) ));

//    cbUF.ItemIndex := cbUF.Items.IndexOf(Ini.ReadString('WebService', 'UF', 'SP'));

    rgTipoAmb.ItemIndex   := Ini.ReadInteger('WebService', 'Ambiente',   0);
    cbxVisualizar.Checked := Ini.ReadBool(   'WebService', 'Visualizar', False);
    cbxSalvarSOAP.Checked := Ini.ReadBool(   'WebService', 'SalvarSOAP', False);
    cbxAjustarAut.Checked := Ini.ReadBool(   'WebService', 'AjustarAut', False);
    edtAguardar.Text      := Ini.ReadString( 'WebService', 'Aguardar',   '0');
    edtTentativas.Text    := Ini.ReadString( 'WebService', 'Tentativas', '5');
    edtIntervalo.Text     := Ini.ReadString( 'WebService', 'Intervalo',  '0');
    seTimeOut.Value       := Ini.ReadInteger('WebService', 'TimeOut',    5000);
    cbSSLType.ItemIndex   := Ini.ReadInteger('WebService', 'SSLType',    5);

    edtProxyHost.Text  := Ini.ReadString('Proxy', 'Host',  '');
    edtProxyPorta.Text := Ini.ReadString('Proxy', 'Porta', '');
    edtProxyUser.Text  := Ini.ReadString('Proxy', 'User',  '');
    edtProxySenha.Text := Ini.ReadString('Proxy', 'Pass',  '');

    cbxSalvarArqs.Checked       := Ini.ReadBool('Arquivos', 'Salvar',           false);
    cbxPastaMensal.Checked      := Ini.ReadBool('Arquivos', 'PastaMensal',      false);
    cbxAdicionaLiteral.Checked  := Ini.ReadBool('Arquivos', 'AddLiteral',       false);
    cbxEmissaoPathReinf.Checked := Ini.ReadBool('Arquivos', 'EmissaoPathReinf', false);
    cbxSalvaPathEvento.Checked  := Ini.ReadBool('Arquivos', 'SalvarPathEvento', false);
    cbxSepararPorCNPJ.Checked   := Ini.ReadBool('Arquivos', 'SepararPorCNPJ',   false);
    cbxSepararPorModelo.Checked := Ini.ReadBool('Arquivos', 'SepararPorModelo', false);
    edtPathReinf.Text           := Ini.ReadString('Arquivos', 'PathReinf',        '');
    cData.Text                  := Ini.ReadString('Arquivos', 'Data', '');
    {
    edtEmitCNPJ.Text := Ini.ReadString('Emitente', 'CNPJ', '');
    edContNome.Text  := Ini.ReadString('Contato', 'Nome',    '');
    edContCPF.Text   := Ini.ReadString('Contato', 'CPF',     '');
    edContFone.Text  := Ini.ReadString('Contato', 'Fone',    '');
    edContCel.Text   := Ini.ReadString('Contato', 'Celular', '');
    edContEmail.Text := Ini.ReadString('Contato', 'Email',   '');
    }
    edtEmitCNPJ.Text := tEmpresa.FieldByName('CNPJ').AsString;
    edContNome.Text  := tEmpresa.FieldByName('Representante_Nome').AsString;
    edContCPF.Text   := tEmpresa.FieldByName('Representante_CPF').AsString;
    edContFone.Text  := tEmpresa.FieldByName('Representante_Telefone').AsString;
    edContCel.Text   := tEmpresa.FieldByName('Representante_Telefone').AsString;
    edContEmail.Text := tEmpresa.FieldByName('Representante_Email').AsString;
    {
    edSoftRazao.Text   := Ini.ReadString('SofHouse', 'RazaoSocial', '');
    edSoftCNPJ.Text    := Ini.ReadString('SofHouse', 'CNPJ',        '');
    edSoftEmail.Text   := Ini.ReadString('SofHouse', 'Email',       '');
    edSoftFone.Text    := Ini.ReadString('SofHouse', 'Fone',        '');
    edSoftContato.Text := Ini.ReadString('SofHouse', 'Contato',     '');
    }
    edSoftRazao.Text   := Ini.ReadString('SofHouse', 'RazaoSocial','VITORIA SISTEMAS LTDA');
    edSoftCNPJ.Text    := Ini.ReadString('SofHouse', 'CNPJ'       ,'39940892000146');
    edSoftEmail.Text   := Ini.ReadString('SofHouse', 'Email'      ,'cybersoft@cybersoftsistemas.com.br');
    edSoftFone.Text    := Ini.ReadString('SofHouse', 'Fone'       ,'2732081708');
    edSoftContato.Text := Ini.ReadString('SofHouse', 'Contato'    ,'ELISMAR/EDER');


    chk1000Limpar.State := iif(Ini.readbool('Opcoes', 'chk1000Limpar', false) = false, tssOff, tssOn);
    chk1000.State := iif(Ini.readbool('Opcoes', 'chk1000', false) = false, tssOff, tssOn);
    chk1050.State := iif(Ini.readbool('Opcoes', 'chk1050', false) = false, tssOff, tssOn);
    chk1070.State := iif(Ini.readbool('Opcoes', 'chk1070', false) = false, tssOff, tssOn);
    chk2010.State := iif(Ini.readbool('Opcoes', 'chk2010', false) = false, tssOff, tssOn);
    chk2020.State := iif(Ini.readbool('Opcoes', 'chk2020', false) = false, tssOff, tssOn);
    chk2030.State := iif(Ini.readbool('Opcoes', 'chk2030', false) = false, tssOff, tssOn);
    chk2040.State := iif(Ini.readbool('Opcoes', 'chk2040', false) = false, tssOff, tssOn);
    chk2050.State := iif(Ini.readbool('Opcoes', 'chk2050', false) = false, tssOff, tssOn);
    chk2055.State := iif(Ini.readbool('Opcoes', 'chk2055', false) = false, tssOff, tssOn);
    chk2060.State := iif(Ini.readbool('Opcoes', 'chk2060', false) = false, tssOff, tssOn);
    chk2070.State := iif(Ini.readbool('Opcoes', 'chk2070', false) = false, tssOff, tssOn);
    chk2098.State := iif(Ini.readbool('Opcoes', 'chk2098', false) = false, tssOff, tssOn);
    chk2099.State := iif(Ini.readbool('Opcoes', 'chk2099', false) = false, tssOff, tssOn);
    chk3010.State := iif(Ini.readbool('Opcoes', 'chk3010', false) = false, tssOff, tssOn);
    chk4010.State := iif(Ini.readbool('Opcoes', 'chk4010', false) = false, tssOff, tssOn);
    chk4020.State := iif(Ini.readbool('Opcoes', 'chk4020', false) = false, tssOff, tssOn);
    chk4040.State := iif(Ini.readbool('Opcoes', 'chk4040', false) = false, tssOff, tssOn);
    chk4080.State := iif(Ini.readbool('Opcoes', 'chk4080', false) = false, tssOff, tssOn);
    chk4099.State := iif(Ini.readbool('Opcoes', 'chk4099', false) = false, tssOff, tssOn);
    chk9000.State := iif(Ini.readbool('Opcoes', 'chk9000', false) = false, tssOff, tssOn);

    {
    chk1000.Checked := Ini.readbool('Opcoes', 'chk1000', false);
    chk1050.Checked := Ini.readbool('Opcoes', 'chk1050', false);
    chk1070.Checked := Ini.readbool('Opcoes', 'chk1070', false);
    chk2010.Checked := Ini.readbool('Opcoes', 'chk2010', false);
    chk2020.Checked := Ini.readbool('Opcoes', 'chk2020', false);
    chk2030.Checked := Ini.readbool('Opcoes', 'chk2030', false);
    chk2040.Checked := Ini.readbool('Opcoes', 'chk2040', false);
    chk2050.Checked := Ini.readbool('Opcoes', 'chk2050', false);
    chk2055.Checked := Ini.readbool('Opcoes', 'chk2055', false);
    chk2060.Checked := Ini.readbool('Opcoes', 'chk2060', false);
    chk2070.Checked := Ini.readbool('Opcoes', 'chk2070', false);
    chk2098.Checked := Ini.readbool('Opcoes', 'chk2098', false);
    chk2099.Checked := Ini.readbool('Opcoes', 'chk2099', false);
    chk3010.Checked := Ini.readbool('Opcoes', 'chk3010', false);
    chk4010.Checked := Ini.readbool('Opcoes', 'chk4010', false);
    chk4020.Checked := Ini.readbool('Opcoes', 'chk4020', false);
    chk4040.Checked := Ini.readbool('Opcoes', 'chk4040', false);
    chk4080.Checked := Ini.readbool('Opcoes', 'chk4080', false);
    chk4099.Checked := Ini.readbool('Opcoes', 'chk4099', false);
    }
    ConfigurarComponente;
  finally
    Ini.Free;
  end;
end;

procedure TfrmACBrReinf.ConfigurarComponente;
var
  Ok: Boolean;
  PathMensal: string;
begin
      //ACBrReinf1.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
      ACBrReinf1.Configuracoes.Certificados.DadosPFX    := tEmpresa.FieldByName('Certificado_Digital').AsString;
      ACBrReinf1.Configuracoes.Certificados.Senha       := edtSenha.Text;
      ACBrReinf1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;

      with ACBrReinf1.Configuracoes.Geral do begin
           SSLLib        := TSSLLib(cbSSLLib.ItemIndex);
           SSLCryptLib   := TSSLCryptLib(cbCryptLib.ItemIndex);
           SSLHttpLib    := TSSLHttpLib(cbHttpLib.ItemIndex);
           SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);

           AtualizarSSLLibsCombo;

           Salvar           := ckSalvar.Checked;
           ExibirErroSchema := cbxExibirErroSchema.Checked;
           RetirarAcentos   := cbxRetirarAcentos.Checked;
           FormatoAlerta    := edtFormatoAlerta.Text;
           FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
           VersaoDF         := TVersaoReinf(cbVersaoDF.ItemIndex);

           IdContribuinte   := edtEmitCNPJ.Text;
      end;
      with ACBrReinf1.SSL do begin
           DescarregarCertificado;
           SSLDgst := dgstSHA256;
           SSLType := TSSLType( cbSSLType.ItemIndex );
      end;
      with ACBrReinf1.Configuracoes.WebServices do begin
           UF         := cbUF.Text;
           Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
           Visualizar := cbxVisualizar.Checked;
           Salvar     := cbxSalvarSOAP.Checked;

           AjustaAguardaConsultaRet := cbxAjustarAut.Checked;

           if NaoEstaVazio(edtAguardar.Text)then
              AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text) < 1000, StrToInt(edtAguardar.Text) * 1000, StrToInt(edtAguardar.Text))
           else
              edtAguardar.Text := IntToStr(AguardarConsultaRet);

           if NaoEstaVazio(edtTentativas.Text) then
              Tentativas := StrToInt(edtTentativas.Text)
           else
              edtTentativas.Text := IntToStr(Tentativas);

           if NaoEstaVazio(edtIntervalo.Text) then
              IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text) < 1000, StrToInt(edtIntervalo.Text) * 1000, StrToInt(edtIntervalo.Text))
           else
              edtIntervalo.Text := IntToStr(ACBrReinf1.Configuracoes.WebServices.IntervaloTentativas);

           TimeOut   := seTimeOut.Value;
           ProxyHost := edtProxyHost.Text;
           ProxyPort := edtProxyPorta.Text;
           ProxyUser := edtProxyUser.Text;
           ProxyPass := edtProxySenha.Text;
      end;
      with ACBrReinf1.Configuracoes.Arquivos do begin
           Salvar           := cbxSalvarArqs.Checked;
           SepararPorMes    := cbxPastaMensal.Checked;
           AdicionarLiteral := cbxAdicionaLiteral.Checked;
           EmissaoPathReinf := cbxEmissaoPathReinf.Checked;
           SepararPorCNPJ   := cbxSepararPorCNPJ.Checked;
           SepararPorModelo := cbxSepararPorModelo.Checked;
           PathSchemas      := edtPathSchemas.Text;
           PathReinf        := edtPathReinf.Text;
           PathMensal       := GetPathReinf(0);
           PathSalvar       := PathMensal;
      end;
end;

procedure TfrmACBrReinf.PathClick(Sender: TObject);
var
  Dir: string;
begin
      if Length(TEdit(Sender).Text) <= 0 then
         Dir := ExtractFileDir(application.ExeName)
      else
         Dir := TEdit(Sender).Text;

      if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
         TEdit(Sender).Text := Dir;
end;

procedure TfrmACBrReinf.sbPathReinfClick(Sender: TObject);
begin
     PathClick(edtPathReinf);
end;

procedure TfrmACBrReinf.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';

  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);

  if OpenDialog1.Execute then
     edtCaminho.Text := OpenDialog1.FileName;
end;

procedure TfrmACBrReinf.sbtnGetCertClick(Sender: TObject);
begin
  edtNumSerie.Text := ACBrReinf1.SSL.SelecionarCertificado;
end;

procedure TfrmACBrReinf.sbtnNumSerieClick(Sender: TObject);
var
  I: Integer;
//  ASerie: String;
  AddRow: Boolean;
begin
      ACBrReinf1.SSL.LerCertificadosStore;
      AddRow := False;

      with frmSelecionarCertificado.StringGrid1 do begin
           ColWidths[0] := 220;
           ColWidths[1] := 250;
           ColWidths[2] := 120;
           ColWidths[3] := 80;
           ColWidths[4] := 150;
           Cells[0, 0] := 'Num.Série';
           Cells[1, 0] := 'Razão Social';
           Cells[2, 0] := 'CNPJ';
           Cells[3, 0] := 'Validade';
           Cells[4, 0] := 'Certificadora';
      end;

      for I := 0 to ACBrReinf1.SSL.ListaCertificados.Count-1 do begin
          with ACBrReinf1.SSL.ListaCertificados[I] do begin 
               //ASerie := NumeroSerie;
               if (CNPJ <> '') then begin
                  with frmSelecionarCertificado.StringGrid1 do begin
                    if Addrow then
                       RowCount := RowCount + 1;
                       Cells[0, RowCount-1] := NumeroSerie;
                       Cells[1, RowCount-1] := RazaoSocial;
                       Cells[2, RowCount-1] := CNPJ;
                       Cells[3, RowCount-1] := FormatDateBr(DataVenc);
                       Cells[4, RowCount-1] := Certificadora;
                       AddRow := True;
                  end;
               end;
          end;
      end;

      frmSelecionarCertificado.ShowModal;

      if frmSelecionarCertificado.ModalResult = mrOK then edtNumSerie.Text := frmSelecionarCertificado.StringGrid1.Cells[0, frmSelecionarCertificado.StringGrid1.Row];
end;

procedure TfrmACBrReinf.sbtnPathSalvarClick(Sender: TObject);
begin
     PathClick(edtPathLogs);
end;

procedure TfrmACBrReinf.spPathSchemasClick(Sender: TObject);
begin
     PathClick(edtPathSchemas);
end;

procedure TfrmACBrReinf.ACBrReinf1GerarLog(const ALogLine: String;
var 
     Tratado: Boolean);
begin
     memoLog.Lines.Add(ALogLine);
     Tratado := False;
end;

procedure TfrmACBrReinf.ACBrReinf1StatusChange(Sender: TObject);
begin
     case ACBrReinf1.Status of stIdle:
          begin
              if (frmStatus <> nil) then frmStatus.Hide;
          end;
          stEnvLoteEventos:
          begin
              if (frmStatus = nil) then frmStatus := TfrmStatus.Create(Application);
              frmStatus.lblStatus.Caption := 'Enviando lote do Reinf...';
              frmStatus.Show;
              frmStatus.BringToFront;
          end;
          stConsultaLote:
          begin
              if (frmStatus = nil) then frmStatus := TfrmStatus.Create(Application);
              frmStatus.lblStatus.Caption := 'Consultando lote do Reinf...';
              frmStatus.Show;
              frmStatus.BringToFront;
          end;
     end;

     Application.ProcessMessages;
end;

procedure TfrmACBrReinf.ACBrReinf1TransmissaoEventos(const AXML: String; ATipo: TEventosReinf);
begin
     case ATipo of
          erEnvioLote      : mmoXMLEnv.Lines.Text := AXML;
          erRetornoLote    : mmoXMLEnv.Lines.Text := AXML;
          erEnvioConsulta  : mmoXMLEnv.Lines.Text := AXML;
          erRetornoConsulta: mmoXMLEnv.Lines.Text := AXML;
     end;
end;

procedure TfrmACBrReinf.btnGerarClick(Sender: TObject);
var
  i: Integer;
begin 
      edProtocolo.Text                        := '';
      ACBrReinf1.Configuracoes.Geral.VersaoDF := TVersaoReinf(cbVersaoDF.ItemIndex);

      ACBrReinf1.Eventos.Clear;
      PreencherXMLEventos;

      ACBrReinf1.Eventos.Gerar;            // Somente Gera os XMLs dos Eventos.
      ACBrReinf1.Eventos.Assinar;          // Somente Assina os XMLs.
      ACBrReinf1.Eventos.Validar;          // Somente Valida os XMLs.
      ACBrReinf1.Eventos.SaveToFiles;      // Salva em Disco os XMLs dos Eventos.
      pgRespostas.ActivePageIndex := 4;
      for i := 0 to ACBrReinf1.Eventos.Gerados.Count -1 do begin
          memoLog.Lines.Add('Tipo Evento.: ' + TipoEventoToStr(ACBrReinf1.Eventos.Gerados.Items[i].TipoEvento));
          memoLog.Lines.Add('ID do Evento: ' + ACBrReinf1.Eventos.Gerados.Items[i].IdEvento);
          memoLog.Lines.Add('Evento Salvo: ' + ACBrReinf1.Eventos.Gerados.Items[i].PathNome);

          with tREINF do begin
               sql.clear;
               sql.Add('insert into REINF (Registro, Evento, Evento_ID, Data_Envio, Arquivo) values');
               sql.Add('( (select isnull(max(Registro), 0)+1 from REINF)');
               sql.Add(', '+quotedstr(TipoEventoToStr(ACBrReinf1.Eventos.Gerados.Items[i].TipoEvento)));
               sql.Add(', '+quotedstr(ACBrReinf1.Eventos.Gerados.Items[i].IdEvento));
               sql.Add(', getdate()');
               sql.Add(','+quotedstr(ACBrReinf1.Eventos.Gerados.Items[i].PathNome)+')');
               //sql.SaveToFile('c:\temp\REINF_Envio_Eventos.sql');
               execute;
               sql.clear;
               sql.Add('select * from REINF where Registro = (select max(Registro) from REINF)');
               open;
               mRegistro := fieldbyname('Registro').asinteger;
          end;
      end;
end;

procedure TfrmACBrReinf.btnLerArqINIClick(Sender: TObject);
var
  i: Integer;
begin
      edProtocolo.Text := '';
      ACBrReinf1.Configuracoes.Geral.VersaoDF := TVersaoReinf(cbVersaoDF.ItemIndex);

      OpenDialog1.Title      := 'Selecione o Evento (Arquivo INI)';
      OpenDialog1.DefaultExt := '*.ini';
      OpenDialog1.Filter     := 'Arquivos INI (*.ini)|*.ini|Todos os Arquivos (*.*)|*.*';
      OpenDialog1.InitialDir := ACBrReinf1.Configuracoes.Arquivos.PathSalvar;

      if OpenDialog1.Execute then ACBrReinf1.Eventos.LoadFromINI(OpenDialog1.FileName);

      memoLog.Clear;
      memoLog.Lines.Clear;
      memoLog.Lines.Add('INI de Eventos Carregado com Sucesso!');
      memoLog.Lines.Add(' ');

      for I := 0 to ACBrReinf1.Eventos.Gerados.Count -1 do begin
          memoLog.Lines.Add('Tipo Evento.: ' + TipoEventoToStr(ACBrReinf1.Eventos.Gerados.Items[i].TipoEvento));
          memoLog.Lines.Add('Evento Salvo: ' + ACBrReinf1.Eventos.Gerados.Items[i].PathNome);
      end;
end;

procedure TfrmACBrReinf.btnLerArqXMLClick(Sender: TObject);
var
  i: Integer;
begin
     OpenDialog1.Title      := 'Selecione o Evento (Arquivo XML)';
     OpenDialog1.DefaultExt := '*.xml';
     OpenDialog1.Filter     := 'Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
     OpenDialog1.InitialDir := ACBrReinf1.Configuracoes.Arquivos.PathSalvar;

     if OpenDialog1.Execute then ACBrReinf1.Eventos.LoadFromFile(OpenDialog1.FileName);

     memoLog.Clear;
     memoLog.Lines.Clear;
     memoLog.Lines.Add('XML de Eventos Carregado com Sucesso!');
     memoLog.Lines.Add(' ');

     for I := 0 to ACBrReinf1.Eventos.Gerados.Count -1 do begin
         memoLog.Lines.Add('Tipo Evento.: ' + TipoEventoToStr(ACBrReinf1.Eventos.Gerados.Items[i].TipoEvento));
         memoLog.Lines.Add('Evento Salvo: ' + ACBrReinf1.Eventos.Gerados.Items[i].PathNome);
     end;
end;

procedure TfrmACBrReinf.btnEnviarClick(Sender: TObject);
var
  i, j: Integer;
begin
      // Gera os arquivos XML.
      btnGerarClick(self);
      if ACBrReinf1.Enviar then begin
         memoLog.Clear;
         memoLog.Lines.add('============================================[ ENVIO ]============================================');
         memoLog.Lines.add(ACBrReinf1.WebServices.EnvioLote.RetWS);
         with memoLog.Lines do begin
              with ACBrReinf1.WebServices.EnvioLote.RetEnvioLote do begin
                   Add('ideTransmissor: ' + IdeTransmissor.IdTransmissor);
                   Add('cdStatus      : ' + IntToStr(Status.cdStatus));
                   Add('descRetorno   : ' + Status.descRetorno);
                   Add('');
                   Add('** Ocorrências');
                   for i := 0 to Status.Ocorrencias.Count - 1 do begin
                       with Status.Ocorrencias.Items[i] do begin
                            Add('   tipo: ' + Inttostr(tipo));
                            Add('   localizacaoErroAviso: ' + localizacao);
                            Add('   codigo: ' + inttostr(codigo));
                            Add('   descricao: ' + descricao);
                       end;
                   end;
                   
                   Add('');
                   Add('** dadosRecepcaoLote');
                   Add('   dhRecepcao....: ' + FormatDateBr(dadosRecepcaoLote.dhRecepcao, 'dd-mm-yyyy'));
                   Add('   protocoloEnvio: ' + dadosRecepcaoLote.protocoloEnvio);
                   Add('');
                   Add('retornoEventos');
                   with tREINF do begin
                        sql.clear;
                        sql.Add('update REINF set Recibo = '+quotedstr(dadosRecepcaoLote.protocoloEnvio));
                        sql.add('where Registro = '+inttostr(mRegistro));
                        //sql.SaveToFile('c:\temp\REINF_Envio_Recibo.sql');
                        execute;
                        mProtocolo := dadosRecepcaoLote.protocoloEnvio;
                        sql.clear;
                        sql.Add('select * from REINF where Registro = (select max(Registro) from REINF)');
                        open;
                   end;
                   
                   for i := 0 to evento.Count - 1 do begin
                       with evento.Items[i] do begin
                            Add('');
                            Add('Evento Id: ' + Id);
                            with evtTotal do begin
                                 Add('   Id...........: ' + Id);
                                 Add('   Cód Retorno..: ' + IdeStatus.cdRetorno);
                                 Add('   Descrição....: ' + IdeStatus.descRetorno);
                                 Add('   Nro Recibo...: ' + InfoTotal.nrRecArqBase);
                                 Add('');
                                 Add('** Ocorrências');
                                 for j := 0 to IdeStatus.regOcorrs.Count - 1 do begin
                                     with IdeStatus.regOcorrs.Items[j] do begin
                                          Add('   Tipo............: ' + Inttostr(tpOcorr));
                                          Add('   Local Erro Aviso: ' + localErroAviso);
                                          Add('   Código Resp.... : ' + codResp);
                                          Add('   Descricao Resp..: ' + dscResp);
                                     end;
                                 end;
                                 Add('');
                                 Add('** Informações de processamento dos eventos ');
                                 with InfoRecEv do begin
                                      Add('   Num. Recibo de Entrega do Evento....: ' + nrRecArqBase);
                                      Add('   Num. Protocolo de Entrega do Evento.: ' + nrProtEntr);
                                      Add('   Data/Hora do Processamento do Evento: ' + DateTimeToStr(dhProcess));
                                      Add('   Data/Hora da Recepção do Evento.....: ' + DateTimeToStr(dhRecepcao));
                                      Add('   Tipo do Evento......................: ' + tpEv);
                                      Add('   ID do Evento........................: ' + idEv);
                                      Add('   Hash do arquivo processado..........: ' + hash);
                                 end;
                            end;
                       end;
                   end;
              end;
         end;

         // Efetua a consulta do xml enviado.
         btnConsultarClick(self);
      end else begin
         ShowMessage('Falha');
      end;
end;

procedure TfrmACBrReinf.btnValidarAssinaturaClick(Sender: TObject);
var
  tsAux1: TStringList;
  Erro: String;
begin
      OpenDialog1.Title      := 'Selecione o Arquivo';
      OpenDialog1.DefaultExt := '*.XML';
      OpenDialog1.Filter     := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
      //OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
      OpenDialog1.InitialDir := 'c:\faturamento';
      
      if not OpenDialog1.Execute then exit;

      tsAux1 := TStringList.Create;
      tsAux1.LoadFromFile(OpenDialog1.FileName);

      if ACBrReinf1.SSL.VerificarAssinatura(Copy(tsAux1.Text, 1, Length(tsAux1.Text) - 2), Erro, '', 'Signature') then
         ShowMessage('OK')
      else
         ShowMessage(ifthen(Erro = '', 'Assinatura Inválida', Erro));
      FreeAndNil(tsAux1);
end;

procedure TfrmACBrReinf.btnValidarSchemaClick(Sender: TObject);
var
  tsAux1: TStringList;
  Erro: String;
begin
      OpenDialog1.Title      := 'Selecione o Arquivo';
      OpenDialog1.DefaultExt := '*.XML';
      OpenDialog1.Filter     := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
      OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
      if not OpenDialog1.Execute then exit;

      tsAux1 := TStringList.Create;
      tsAux1.LoadFromFile( OpenDialog1.FileName );

      OpenDialog1.Title      := 'Selecione o Schema';
      OpenDialog1.DefaultExt := '*.XSD';
      OpenDialog1.Filter     := 'Arquivos XSD (*.XSD)|*.XSD|Todos os Arquivos (*.*)|*.*';
      OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
      if not OpenDialog1.Execute then exit;

      ACBrReinf1.SSL.Validar(tsAux1.Text,                    // Copy( tsAux1.Text, 1, Length(tsAux1.Text) - 2 ),
                             OpenDialog1.FileName,
                             Erro);
      FreeAndNil(tsAux1);
      ShowMessage(Erro);
end;

procedure TfrmACBrReinf.btnConsultarClick(Sender: TObject);
var
  Protocolo: string;
  i, j: Integer;
begin
      //Protocolo := mProtocolo;
      Protocolo := tREINF.FieldByName('Recibo').AsString;

      if ACBrReinf1.Consultar(Protocolo) then begin
         memoLog.lines.add('==========================================[ CONSULTA ]===========================================');
         memoLog.lines.add(ACBrReinf1.WebServices.Consultar.RetWS);

         with memoLog.Lines do begin
              if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_01 then begin
                 with ACBrReinf1.WebServices.Consultar.RetEnvioLote do begin
                      Add('ideTransmissor: ' + IdeTransmissor.IdTransmissor);
                      Add('cdStatus      : ' + IntToStr(Status.cdStatus));
                      Add('descRetorno   : ' + Status.descRetorno);
                      Add('');
                      Add('** Ocorrências');
                      for i := 0 to Status.Ocorrencias.Count -1 do begin
                          with Status.Ocorrencias.Items[i] do begin
                               Add('   tipo: ' + Inttostr(tipo));
                               Add('   localizacaoErroAviso: ' + localizacao);
                               Add('   codigo: ' + inttostr(codigo));
                               Add('   descricao: ' + descricao);
                          end;
                      end;
                      Add('');
                      Add('** dadosRecepcaoLote');
                      Add('   dhRecepcao....: ' + FormatDateBr(dadosRecepcaoLote.dhRecepcao, 'dd-mm-yyyy'));
                      Add('   protocoloEnvio: ' + dadosRecepcaoLote.protocoloEnvio);
                      Add('');
                      Add('retornoEventos');
                      for i := 0 to evento.Count -1 do begin
                          with evento.Items[i] do begin
                               if evtTotal.id <> '' then begin
                                  Add('');
                                  Add(' Evento: 9001');
                                  Add(' Evento Id: ' + Id);
                                  with evtTotal do begin
                                       Add('   Id...........: ' + Id);
                                       Add('   Cód Retorno..: ' + IdeStatus.cdRetorno);
                                       Add('   Descrição....: ' + IdeStatus.descRetorno);
                                       Add('   Nro Recibo...: ' + InfoTotal.nrRecArqBase);
                                       Add('');
                                       Add('** Ocorrências');
                                       for j := 0 to IdeStatus.regOcorrs.Count -1 do begin
                                           with IdeStatus.regOcorrs.Items[j] do begin
                                                Add('   Tipo............: ' + Inttostr(tpOcorr));
                                                Add('   Local Erro Aviso: ' + localErroAviso);
                                                Add('   Código Resp.... : ' + codResp);
                                                Add('   Descricao Resp..: ' + dscResp);
                                           end;
                                       end;
                                       Add('');
                                       Add('** Informações de processamento dos eventos ');
                                       with InfoRecEv do begin
                                            Add('   Num. Recibo de Entrega do Evento....: ' + nrRecArqBase);
                                            Add('   Num. Protocolo de Entrega do Evento.: ' + nrProtEntr);
                                            Add('   Data/Hora do Processamento do Evento: ' + DateTimeToStr(dhProcess));
                                            Add('   Data/Hora da Recepção do Evento.....: ' + DateTimeToStr(dhRecepcao));
                                            Add('   Tipo do Evento......................: ' + tpEv);
                                            Add('   ID do Evento........................: ' + idEv);
                                            Add('   Hash do arquivo processado..........: ' + hash);
                                       end;
                                  end;
                               end;
                               if evtRet.Id <> '' then begin
                                  Add('');
                                  Add(' Evento: 9005');
                                  Add(' Evento Id: ' + Id);
                                  with evtRet do begin
                                       Add('   Id...........: ' + Id);
                                       Add('   Cód Retorno..: ' + IdeStatus.cdRetorno);
                                       Add('   Descrição....: ' + IdeStatus.descRetorno);
                                       Add('   Nro Recibo...: ' + InfoTotal.nrRecArqBase);
                                       Add('');
                                       Add('** Ocorrências');
                                       for j := 0 to IdeStatus.regOcorrs.Count - 1 do begin
                                           with IdeStatus.regOcorrs.Items[j] do begin
                                                Add('   Tipo............: ' + Inttostr(tpOcorr));
                                                Add('   Local Erro Aviso: ' + localErroAviso);
                                                Add('   Código Resp.... : ' + codResp);
                                                Add('   Descricao Resp..: ' + dscResp);
                                           end;
                                       end;
                                       Add('');
                                       Add('** Informações de processamento dos eventos ');
                                       with InfoRecEv do begin
                                            Add('   Num. Recibo de Entrega do Evento....: ' + nrRecArqBase);
                                            Add('   Num. Protocolo de Entrega do Evento.: ' + nrProtLote);
                                            Add('   Data/Hora do Processamento do Evento: ' + DateTimeToStr(dhProcess));
                                            Add('   Data/Hora da Recepção do Evento.....: ' + DateTimeToStr(dhRecepcao));
                                            Add('   Tipo do Evento......................: ' + tpEv);
                                            Add('   ID do Evento........................: ' + idEv);
                                            Add('   Hash do arquivo processado..........: ' + hash);
                                       end;
                                  end;
                               end;
                          end;
                      end;
                 end;
                 with ACBrReinf1.WebServices.Consultar.RetConsulta_R9011 do begin
                      if evtTotalContrib.Id <> '' then begin
                         Add('');
                         Add(' Evento: 9011');
                         with evtTotalContrib do begin
                              Add('   Id...........: ' + Id);
                              Add('   Cód Retorno..: ' + IdeStatus.cdRetorno);
                              Add('   Descrição....: ' + IdeStatus.descRetorno);
                              if IdeStatus.regOcorrs.Count > 0 then begin
                                 Add('');
                                 Add('** Ocorrências');

                                 for i := 0 to IdeStatus.regOcorrs.Count - 1 do begin
                                     with IdeStatus.regOcorrs.Items[i] do begin
                                          Add('   Tipo............: ' + IntToStr(tpOcorr));
                                          Add('   Local Erro Aviso: ' + localErroAviso);
                                          Add('   Código Resp.... : ' + codResp);
                                          Add('   Descricao Resp..: ' + dscResp);
                                     end;
                                 end;
                              end;
                              Add('');
                              Add('** Informações de processamento dos eventos ');
                              with InfoRecEv do begin
                                   Add('   Num. Recibo de Entrega do Evento....: ' + nrRecArqBase);
                                   Add('   Num. Protocolo de Entrega do Evento.: ' + nrProtEntr);
                                   Add('   Data/Hora do Processamento do Evento: ' + DateTimeToStr(dhProcess));
                                   Add('   Data/Hora da Recepção do Evento.....: ' + DateTimeToStr(dhRecepcao));
                                   Add('   Tipo do Evento......................: ' + tpEv);
                                   Add('   ID do Evento........................: ' + idEv);
                                   Add('   Hash do arquivo processado..........: ' + hash);
                              end;
                         end;
                      end;
                 end;
                 with ACBrReinf1.WebServices.Consultar.RetConsulta_R9015 do begin
                      if evtRetCons.Id <> '' then begin
                         Add('');
                         Add(' Evento: 9015');
                         with evtRetCons do begin
                              Add('   Id...........: ' + Id);
                              Add('   Cód Retorno..: ' + IdeStatus.cdRetorno);
                              Add('   Descrição....: ' + IdeStatus.descRetorno);
                              if IdeStatus.regOcorrs.Count > 0 then begin
                                 Add('');
                                 Add('** Ocorrências');
                                 for i := 0 to IdeStatus.regOcorrs.Count - 1 do begin
                                     with IdeStatus.regOcorrs.Items[i] do begin
                                          Add('   Tipo............: ' + IntToStr(tpOcorr));
                                          Add('   Local Erro Aviso: ' + localErroAviso);
                                          Add('   Código Resp.... : ' + codResp);
                                          Add('   Descricao Resp..: ' + dscResp);
                                     end;
                                 end;
                              end;
                              Add('');
                              Add('** Informações de processamento dos eventos ');
                              with InfoRecEv do begin
                                   Add('   Num. Recibo de Entrega do Evento....: ' + nrRecArqBase);
                                   Add('   Num. Protocolo de Entrega do Lote...: ' + nrProtLote);
                                   Add('   Data/Hora do Processamento do Evento: ' + DateTimeToStr(dhProcess));
                                   Add('   Data/Hora da Recepção do Evento.....: ' + DateTimeToStr(dhRecepcao));
                                   Add('   Tipo do Evento......................: ' + tpEv);
                                   Add('   ID do Evento........................: ' + idEv);
                                   Add('   Hash do arquivo processado..........: ' + hash);
                                   Add('   Indicativo da Finalidade do Evento..: ' + tpFechRetToStr(fechRet));
                              end;
                         end;
                      end;
                 end;
              end else begin
                 with ACBrReinf1.WebServices.Consultar.RetConsulta_R5011 do begin
                      Add('');
                      Add(' Evento: R5011');
                      with evtTotalContrib do begin
                           Add('   Id...........: ' + Id);
                           Add('   Cód Retorno..: ' + IdeStatus.cdRetorno);
                           Add('   Descrição....: ' + IdeStatus.descRetorno);
                           if IdeStatus.regOcorrs.Count > 0 then begin
                              Add('');
                              Add('** Ocorrências');
                              for i := 0 to IdeStatus.regOcorrs.Count - 1 do begin
                                  with IdeStatus.regOcorrs.Items[i] do begin
                                       Add('   Tipo............: ' + IntToStr(tpOcorr));
                                       Add('   Local Erro Aviso: ' + localErroAviso);
                                       Add('   Código Resp.... : ' + codResp);
                                       Add('   Descricao Resp..: ' + dscResp);
                                  end;
                              end;
                           end;
                           Add('');
                           Add('** Informações de processamento dos eventos ');
                           with InfoRecEv do begin
                                Add('   Num. Recibo de Entrega do Evento....: ' + nrRecArqBase);
                                Add('   Num. Protocolo de Entrega do Evento.: ' + nrProtEntr);
                                Add('   Data/Hora do Processamento do Evento: ' + DateTimeToStr(dhProcess));
                                Add('   Data/Hora da Recepção do Evento.....: ' + DateTimeToStr(dhRecepcao));
                                Add('   Tipo do Evento......................: ' + tpEv);
                                Add('   ID do Evento........................: ' + idEv);
                                Add('   Hash do arquivo processado..........: ' + hash);
                           end;
                      end;
                 end;
              end;

              if not fileexists(edtPathReinf.Text+'\LOG') then begin
                 ForceDirectories(edtPathReinf.Text+'\LOG');
              end;
              SaveToFile(edtPathReinf.Text+'\LOG\REINF_LOG'+inttostr(mRegistro)+'.txt');
         end;
      end;
end;

procedure TfrmACBrReinf.btnConsultarReciboClick(Sender: TObject);
var
  Titulo
 ,PerApur
 ,TipoEvento
 ,nrInscEstab
 ,cnpjPrestador
 ,nrInscTomador,
  DataApur
 ,cpfCnpjBenef
 ,cnpjFonte: string;
  Ok: Boolean;
  i: Integer;
  dtApur: TDateTime;
begin
    Titulo  := 'Consulta Recibo';
    PerApur := FormatDateBr(cData.Date,'yyyy-mm');
    if not (InputQuery(Titulo, 'Período de Apuração (AAAA-MM):', PerApur)) then Exit;
    TipoEvento := '';
    if not (InputQuery(Titulo, 'Tipo do Evento (R-xxxx):', TipoEvento)) then Exit;
    nrInscEstab := edtEmitCNPJ.Text;
    if not (InputQuery(Titulo, 'Nr. Inscrição do Estabelecimento:', nrInscEstab)) then Exit;
    cnpjPrestador := '';
    if not (InputQuery(Titulo, 'Nr. CNPJ do Prestador de Serviço:', cnpjPrestador)) then Exit;
    nrInscTomador := '';
    if not (InputQuery(Titulo, 'Nr. Inscrição do Tomador:', nrInscTomador)) then Exit;
    DataApur := FormatDateBr(cData.Date,'dd/mm/yyyy');
    if not (InputQuery(Titulo, 'Data de Apuração (DD/MM/AAAA):', DataApur)) then Exit;
    cpfCnpjBenef := '';
    if not (InputQuery(Titulo, 'CPF/CNPJ do Beneficiário:', cpfCnpjBenef)) then Exit;
    cnpjFonte := '';
    if not (InputQuery(Titulo, 'CNPJ da Fonte Pagadora:', cnpjFonte)) then Exit;
    dtApur := StrToDateDef(DataApur, 0);
  
    // PerApur e TipoEvento são obrigatórios, os demais são opcionais.
    if ACBrReinf1.ConsultaReciboEvento(PerApur, StrToTipoEvento(Ok, TipoEvento), nrInscEstab, cnpjPrestador, nrInscTomador, dtApur, cpfCnpjBenef, cnpjFonte) then begin
       memoLog.Clear;
       memoLog.Lines.Text := ACBrReinf1.WebServices.Consultar.RetWS;
       with memoLog.Lines do begin
            if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_01 then begin
               with ACBrReinf1.WebServices.ConsultarReciboEvento.RetConsulta_R9011 do begin
                    with evtTotalContrib do begin
                         Add('');
                         Add('** Status');
                         Add('   Cód Retorno..: ' + ideStatus.cdRetorno);
                         Add('   Descrição....: ' + ideStatus.descRetorno);
                         if IdeStatus.regOcorrs.Count > 0 then begin
                            Add('');
                            Add('** Ocorrências');
                            for i := 0 to IdeStatus.regOcorrs.Count - 1 do begin
                                with IdeStatus.regOcorrs.Items[i] do begin
                                     Add('   Tipo............: ' + IntToStr(tpOcorr));
                                     Add('   Local Erro Aviso: ' + localErroAviso);
                                     Add('   Código Resp.... : ' + codResp);
                                     Add('   Descricao Resp..: ' + dscResp);
                                end;
                            end;
                         end;
                         if RetornoEventos.Count > 0 then begin
                            Add('');
                            Add('** Retorno Eventos');
                            for i := 0 to RetornoEventos.Count - 1 do begin
                                with RetornoEventos.Items[i] do begin
                                     Add('   ID................: ' + Id);
                                     Add('   Inicio da Validade: ' + iniValid);
                                     Add('   Fim da Validade...: ' + fimValid);
                                     Add('   Data/Hora Receb...: ' + dtHoraRecebimento);
                                     Add('   Numero do Recibo..: ' + nrRecibo);
                                     Add('   Numero Protocolo..: ' + nrProtocolo);
                                     Add('   Situação do Evento: ' + situacaoEvento);
                                     Add('   Aplicacao Recepção: ' + aplicacaoRecepcao);
                                     Add('   Clas. Ent. ligada.: ' + tpEntLig);
                                     Add('   CNPJ Ent. ligada..: ' + cnpjLig);
                                     Add('   Clas. Ent. ligada.: ' + tpEntLig);
                                     Add('   CNPJ Ent. ligada..: ' + cnpjLig);
                                     Add('   Tipo de Processo..: ' + tpProc);
                                     Add('   Numero do Processo: ' + nrProc);
                                end;
                            end;
                         end;
                    end;
               end;
               
               with ACBrReinf1.WebServices.ConsultarReciboEvento.RetConsulta_R9015 do begin
                    with evtRetCons do begin
                         Add('');
                         Add('** Status');
                         Add('   Cód Retorno..: ' + ideStatus.cdRetorno);
                         Add('   Descrição....: ' + ideStatus.descRetorno);
                         if IdeStatus.regOcorrs.Count > 0 then begin
                            Add('');
                            Add('** Ocorrências');
                            for i := 0 to IdeStatus.regOcorrs.Count - 1 do begin
                                with IdeStatus.regOcorrs.Items[i] do begin
                                     Add('   Tipo............: ' + IntToStr(tpOcorr));
                                     Add('   Local Erro Aviso: ' + localErroAviso);
                                     Add('   Código Resp.... : ' + codResp);
                                     Add('   Descricao Resp..: ' + dscResp);
                                end;
                            end;
                         end;
                         if RetornoEventos.Count > 0 then begin
                            Add('');
                            Add('** Retorno Eventos');
                            for i := 0 to RetornoEventos.Count - 1 do begin
                                with RetornoEventos.Items[i] do begin
                                     Add('   ID................: ' + Id);
                                     Add('   Inicio da Validade: ' + iniValid);
                                     Add('   Data/Hora Receb...: ' + dtHoraRecebimento);
                                     Add('   Numero do Recibo..: ' + nrRecibo);
                                     Add('   Situação do Evento: ' + situacaoEvento);
                                     Add('   Aplicacao Recepção: ' + aplicacaoRecepcao);
                                end;
                            end;
                         end;
                    end;
               end;
            end else begin
               with ACBrReinf1.WebServices.ConsultarReciboEvento.RetConsulta_R5011 do begin
                    with evtTotalContrib do begin
                         Add('');
                         Add('** Status');
                         Add('   Cód Retorno..: ' + ideStatus.cdRetorno);
                         Add('   Descrição....: ' + ideStatus.descRetorno);
                         if IdeStatus.regOcorrs.Count > 0 then begin
                            Add('');
                            Add('** Ocorrências');
                            for i := 0 to IdeStatus.regOcorrs.Count - 1 do begin
                                with IdeStatus.regOcorrs.Items[i] do begin
                                     Add('   Tipo............: ' + IntToStr(tpOcorr));
                                     Add('   Local Erro Aviso: ' + localErroAviso);
                                     Add('   Código Resp.... : ' + codResp);
                                     Add('   Descricao Resp..: ' + dscResp);
                                end;
                            end;
                         end;
                         if RetornoEventos.Count > 0 then begin
                            Add('');
                            Add('** Retorno Eventos');
                            for i := 0 to RetornoEventos.Count - 1 do begin
                                with RetornoEventos.Items[i] do begin
                                     Add('   ID................: ' + Id);
                                     Add('   Inicio da Validade: ' + iniValid);
                                     Add('   Data/Hora Receb...: ' + dtHoraRecebimento);
                                     Add('   Numero do Recibo..: ' + nrRecibo);
                                     Add('   Situação do Evento: ' + situacaoEvento);
                                     Add('   Aplicacao Recepção: ' + aplicacaoRecepcao);
                                end;
                            end;
                         end;
                    end;
               end;
            end
       end;
    end;
end;

procedure TfrmACBrReinf.AntesDeEnviar(const Axml: string);
begin
     mmoXMLEnv.Clear;
     mmoXMLEnv.Lines.Text := Axml;
end;

procedure TfrmACBrReinf.DepoisDeEnviar(const Axml: string);
begin
     memoLog.Clear;
     memoLog.Lines.Text := Axml;
end;

procedure TfrmACBrReinf.PreencherXMLEventos;
begin
      //if chk1000.Checked then begin
      if chk1000.State = tssOn then begin
         // Limpar base de dados para o contribuinte informado
         if ((rgTipoAmb.ItemIndex = 1) and (rdgOperacao.ItemIndex = 1) and (chk1000Limpar.State = tssOn)) then begin
            if (MessageDlg( PChar( '!!! Limpeza de dados do Contribuinte em ambiente Restrito !!!' + #13#13 +
                           'Os dados do Contribuinte serão eliminados do ambiente de Produção Restrita !!!' + #13#13 +
                           'Confirma envio do evento para Limpar base de dados para o contribuinte informado ?' ),
                           mtConfirmation, [ mbYes, mbNo ], 0 ) <> mrYes ) then
               exit;

            GerarReinf1000;
            // Não executa demais eventos
            exit;
        end else
            GerarReinf1000;
      end;

      if chk1050.State = tssOn then GerarReinf1050;
      if chk1070.State = tssOn then GerarReinf1070;
      if chk2010.State = tssOn then GerarReinf2010;
      if chk2020.State = tssOn then GerarReinf2020;
      if chk2030.State = tssOn then GerarReinf2030;
      if chk2040.State = tssOn then GerarReinf2040;
      if chk2050.State = tssOn then GerarReinf2050;
      if chk2055.State = tssOn then GerarReinf2055;
      if chk2060.State = tssOn then GerarReinf2060;
      if chk2070.State = tssOn then GerarReinf2070;
      if chk2098.State = tssOn then GerarReinf2098;
      if chk2099.State = tssOn then GerarReinf2099;
      if chk3010.State = tssOn then GerarReinf3010;
      if chk4010.State = tssOn then GerarReinf4010;
      if chk4020.State = tssOn then GerarReinf4020;
      if chk4040.State = tssOn then GerarReinf4040;
      if chk4080.State = tssOn then GerarReinf4080;
      if chk4099.State = tssOn then GerarReinf4099;
      if chk9000.State = tssOn then GerarReinf9000;
      {
      if chk1050.Checked then GerarReinf1050;
      if chk1070.Checked then GerarReinf1070;
      if chk2010.Checked then GerarReinf2010;
      if chk2020.Checked then GerarReinf2020;
      if chk2030.Checked then GerarReinf2030;
      if chk2040.Checked then GerarReinf2040;
      if chk2050.Checked then GerarReinf2050;
      if chk2055.Checked then GerarReinf2055;
      if chk2060.Checked then GerarReinf2060;
      if chk2070.Checked then GerarReinf2070;
      if chk2098.Checked then GerarReinf2098;
      if chk2099.Checked then GerarReinf2099;
      if chk3010.Checked then GerarReinf3010;
      if chk4010.Checked then GerarReinf4010;
      if chk4020.Checked then GerarReinf4020;
      if chk4040.Checked then GerarReinf4040;
      if chk4080.Checked then GerarReinf4080;
      if chk4099.Checked then GerarReinf4099;
      if chk9000.Checked then GerarReinf9000;
      }
end;

procedure TfrmACBrReinf.GerarReinf1000;
begin
      ACBrReinf1.Eventos.ReinfEventos.R1000.Clear;
      
      with ACBrReinf1.Eventos.ReinfEventos.R1000.New do begin
           with evtInfoContri do begin
                Sequencial     := 0;
                ModoLancamento := GetTipoOperacao;
                with IdeEvento do begin
                     ProcEmi := peAplicEmpregador;
                     VerProc := cVersao.text;
                end;
                with ideContri do begin 
                     TpInsc := tiCNPJ;
                     NrInsc := edtEmitCNPJ.Text;
                end;
                with infoContribuinte do begin
                     IdePeriodo.IniValid := FormatDateBr(cData.Date,'yyyy-mm');
                     IdePeriodo.FimValid := FormatDateBr(cData.Date,'yyyy-mm');
                end;
                with infoContribuinte.InfoCadastro do begin
                     // Limpar base de dados para o contribuinte informado | VerProc = 'RemoverContribuinte' ClassTrib = ct00
                     if ((ModoLancamento = toAlteracao ) and ( chk1000Limpar.State = tssOn) ) then begin
                        IdeEvento.VerProc := 'RemoverContribuinte';
                        ClassTrib         := ct00;
                     end else
                       ClassTrib := ct11;

                     indEscrituracao    := TindEscrituracao(0);
                     indDesoneracao     := TindDesoneracao(0);
                     indAcordoIsenMulta := TindAcordoIsenMulta(0);
                     indSitPJ           := TindSitPJ(0);
                     indUniao           := '';
                     dtTransfFinsLucr   := 0;
                     dtObito            := 0;
                     Contato.NmCtt      := edContNome.Text;
                     Contato.CpfCtt     := edContCPF.Text;
                     Contato.FoneFixo   := edContFone.Text;
                     Contato.FoneCel    := edContCel.Text;
                     Contato.email      := edContEmail.Text;

                     SoftwareHouse.Clear;
                     with SoftwareHouse.New do begin
                          CnpjSoftHouse := edSoftCNPJ.Text;
                          NmRazao       := edSoftRazao.Text;
                          NmCont        := edSoftContato.Text;
                          Telefone      := edSoftFone.Text;
                          email         := edSoftEmail.Text;
                     end;
                end;

                infoContribuinte.NovaValidade.IniValid := FormatDateBr(cData.Date,'yyyy-mm');
                infoContribuinte.NovaValidade.FimValid := FormatDateBr(cData.Date,'yyyy-mm');
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf1050;
begin
      ACBrReinf1.Eventos.ReinfEventos.R1050.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R1050.New do begin
           with evtTabLig do begin
                Sequencial        := 0;
                ModoLancamento    := GetTipoOperacao;
                IdeEvento.ProcEmi := peAplicEmpregador;
                IdeEvento.VerProc := cVersao.text;
                ideContri.TpInsc  := tiCNPJ;
                ideContri.NrInsc  := edtEmitCNPJ.Text;

                with infoLig do begin
                     if rdgOperacao.ItemIndex <> 3 then ideEntLig.tpEntLig := telFundoInvestimento;

                     ideEntLig.cnpjLig  := '12345678000123';
                     ideEntLig.IniValid := FormatDateBr(cData.Date,'yyyy-mm');
                     ideEntLig.FimValid := FormatDateBr(cData.Date,'yyyy-mm');

                     if rdgOperacao.ItemIndex = 1 then begin
                        novaValidade.IniValid := FormatDateBr(cData.Date,'yyyy-mm');
                        novaValidade.FimValid := FormatDateBr(cData.Date,'yyyy-mm');
                     end;  
                end;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf1070;
begin
      ACBrReinf1.Eventos.ReinfEventos.R1070.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R1070.New do begin
           with evtTabProcesso do begin
                Sequencial        := 0;
                ModoLancamento    := GetTipoOperacao;
                IdeEvento.ProcEmi := peAplicEmpregador;
                IdeEvento.VerProc := cVersao.text;
                ideContri.TpInsc  := tiCNPJ;
                ideContri.NrInsc  := edtEmitCNPJ.Text;

                with infoProcesso do begin
                     ideProcesso.tpProc     := tpAdministrativo;
                     ideProcesso.nrProc     := '123';
                     ideProcesso.IniValid   := FormatDateBr(cData.Date,'yyyy-mm');
                     ideProcesso.FimValid   := FormatDateBr(cData.Date,'yyyy-mm');
                     ideProcesso.indAutoria := taContribuinte;

                     with ideProcesso do begin
                          infoSusp.Clear;
                          with infoSusp.New do begin
                               codSusp     := '12345678';
                               indSusp     := siLiminarMandadoSeguranca;
                               dtDecisao   := cData.Date;
                               indDeposito := tpSim;
                          end;

                          DadosProcJud.UfVara   := 'SP';
                          DadosProcJud.codMunic := 1234567;
                          DadosProcJud.idVara   := '12';
                     end;

                     NovaValidade.IniValid := FormatDateBr(cData.Date,'yyyy-mm');
                     NovaValidade.FimValid := FormatDateBr(cData.Date,'yyyy-mm');
                end;
           end;
      end;
end;
(*
procedure TfrmACBrReinf.GerarReinf2010;
begin
      // Pega as notas de serviço tomado.
      PegaNotasTer;
      
      ACBrReinf1.Eventos.ReinfEventos.R2010.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R2010.New do begin
           with evtServTom do begin
                Sequencial         := 0;
                ideEvento.indRetif := trOriginal;
                ideEvento.NrRecibo := '';
                ideEvento.perApur  := FormatDateBr(IncMonth(cData.Date)),'yyyy-mm');
                IdeEvento.ProcEmi  := peAplicEmpregador;
                IdeEvento.VerProc  := cVersao.text;
                ideContri.TpInsc   := tiCNPJ;
                ideContri.NrInsc   := edtEmitCNPJ.Text;

                with infoServTom do begin
                     with ideEstabObra do begin
                          tpInscEstab := tiCNPJ;
                          nrInscEstab := edtEmitCNPJ.Text;
                          indObra     := ioNaoeObraDeConstrucaoCivil;

                          with idePrestServ do begin
                               cnpjPrestador     := '08947074000141';
                               vlrTotalBruto     := 1000.00;
                               vlrTotalBaseRet   := 1000.00;
                               vlrTotalRetPrinc  := 110.00;
                               vlrTotalRetAdic   := 0.00;
                               vlrTotalNRetPrinc := 0.00;
                               vlrTotalNRetAdic  := 0.00;
                               indCPRB           := icNaoContribuintePrevidenciariaReceitaBruta;

                               nfs.Clear;
                               with nfs.New do begin
                                    serie       := '1';
                                    numDocto    := '123';
                                    dtEmissaoNF := IncMonth(cData.Date));
                                    vlrBruto    := 1000.00;
                                    obs         := '';

                                    infoTpServ.Clear;
                                    with infoTpServ.New do begin
                                         tpServico     := '100000003'; {Tabela 06}
                                         vlrBaseRet    := 1000.00;
                                         vlrRetencao   := 110.00;
                                         vlrRetSub     := 0.00;
                                         vlrNRetPrinc  := 0.00;
                                         vlrServicos15 := 0.00;
                                         vlrServicos20 := 0.00;
                                         vlrServicos25 := 0.00;
                                         vlrAdicional  := 0.00;
                                         vlrNRetAdic   := 0.00;
                                    end;
                               end;

                               infoProcRetPr.Clear;
                               //with infoProcRetPr.New do begin
                               //     tpProcRetPrinc := tpAdministrativo;
                               //     nrProcRetPrinc := '1122112';
                               //     codSuspPrinc   := 001;
                               //     valorPrinc     := 100.00;
                               //end;
                               
                               infoProcRetAd.Clear;
                               //with infoProcRetAd.New do begin
                               //     tpProcRetAdic := tpAdministrativo;
                               //     nrProcRetAdic := '1122112';
                               //     codSuspAdic   := 001;
                               //     valorAdic     := 1000.00;
                               //end;
                          end;
                     end;
                end;
           end;
      end;
end;
*)
procedure TfrmACBrReinf.GerarReinf2010;
var
   mSeq: integer;
begin
      // Totaliza as notas de serviço tomado.
      with tTotal do begin 
           sql.Clear;
           sql.add('select Fornecedor');
           sql.Add('      ,CNPJ              = (select CNPJ from Fornecedores where Codigo = NotasTerceiros.Fornecedor)');
           sql.add('      ,vlrTotalBruto     = sum(Valor_TotalNota)');
           sql.add('      ,vlrTotalBaseRet   = sum(Valor_TotalNota)');
           sql.add('      ,vlrTotalRetPrinc  = sum(case when Codigo_Adicional01 = ''INSS'' then Valor_Adicional01');
           sql.add('                                    when Codigo_Adicional02 = ''INSS'' then Valor_Adicional02');
           sql.add('                                    when Codigo_Adicional03 = ''INSS'' then Valor_Adicional03');
           sql.add('                                    when Codigo_Adicional04 = ''INSS'' then Valor_Adicional04');
           sql.add('                                    when Codigo_Adicional05 = ''INSS'' then Valor_Adicional05');
           sql.add('                                    when Codigo_Adicional06 = ''INSS'' then Valor_Adicional06');
           sql.add('                               end)');
           sql.add('      ,vlrTotalRetAdic   = 0');
           sql.add('      ,vlrTotalNRetPrinc = 0');
           sql.add('      ,vlrTotalNRetAdic  = 0');
           sql.add('from  NotasTerceiros');
           sql.add('where Servico is not null');
           sql.Add('and   year(Data_Entrada)  = :pAno');
           sql.add('and   month(Data_Entrada) = :pMes');
           sql.add('and   (Codigo_Adicional01 = ''INSS'' or Codigo_Adicional02 = ''INSS'' or Codigo_Adicional03 = ''INSS'' or Codigo_Adicional04 = ''INSS'' or Codigo_Adicional05 = ''INSS'' or Codigo_Adicional06 = ''INSS'')');
           sql.add('group by Fornecedor');
           sql.add('order by CNPJ');
           ParamByName('pAno').asInteger := yearof(cData.Date);
           ParamByName('pMes').asinteger := monthof(cData.Date);
           //sql.SaveToFile('c:\temp\REINF_2010_Fornecedores.sql');
           open;
           first;
           m2010 := recordCount > 0;
           if recordCount = 0 then Abort;
      end;

      mSeq := 0;
      ACBrReinf1.Eventos.ReinfEventos.R2010.Clear;
      while not tTotal.Eof do begin
            with ACBrReinf1.Eventos.ReinfEventos.R2010.New do begin
                 with evtServTom do begin
                      Sequencial         := mSeq;
                      ideEvento.indRetif := trOriginal;
                      ideEvento.NrRecibo := '';
                      ideEvento.perApur  := FormatDateBr(cData.Date,'yyyy-mm');
                      IdeEvento.ProcEmi  := peAplicEmpregador;
                      IdeEvento.VerProc  := cVersao.text;
                      ideContri.TpInsc   := tiCNPJ;
                      ideContri.NrInsc   := edtEmitCNPJ.Text;

                      with infoServTom do begin
                           with ideEstabObra do begin
                                tpInscEstab := tiCNPJ;
                                nrInscEstab := edtEmitCNPJ.Text;
                                indObra     := ioNaoeObraDeConstrucaoCivil;

                                with idePrestServ do begin
                                     cnpjPrestador     := tTotal.FieldByName('CNPJ').AsString;
                                     vlrTotalBruto     := tTotal.FieldByName('vlrTotalBruto').ascurrency;
                                     vlrTotalBaseRet   := tTotal.FieldByName('vlrTotalBaseRet').ascurrency;
                                     vlrTotalRetPrinc  := tTotal.FieldByName('vlrTotalRetPrinc').ascurrency;
                                     vlrTotalRetAdic   := tTotal.FieldByName('vlrTotalRetAdic').ascurrency;
                                     vlrTotalNRetPrinc := tTotal.FieldByName('vlrTotalNRetPrinc').ascurrency;
                                     vlrTotalNRetAdic  := tTotal.FieldByName('vlrTotalNRetAdic').ascurrency;
                                     indCPRB           := icNaoContribuintePrevidenciariaReceitaBruta;

                                     PegaNotasTer(tTotal.FieldByName('Fornecedor').AsInteger);
                                     
                                     nfs.Clear;
                                     while not tNotas.Eof do begin
                                           with nfs.New do begin
                                                serie       := tNotas.FieldByName('Serie').asstring;
                                                numDocto    := tNotas.FieldByName('Nota').asstring;
                                                dtEmissaoNF := tNotas.FieldByName('Data_Emissao').asdatetime;
                                                vlrBruto    := tNotas.FieldByName('Valor_TotalNota').ascurrency;
                                                obs         := '';

                                                infoTpServ.Clear;
                                                with infoTpServ.New do begin
                                                     tpServico     := tNotas.FieldByName('Servico').asstring;
                                                     vlrBaseRet    := tNotas.FieldByName('Valor_TotalNota').ascurrency;
                                                     vlrRetencao   := tNotas.FieldByName('Valor_INSS').ascurrency;
                                                     vlrRetSub     := 0.00;
                                                     vlrNRetPrinc  := 0.00;
                                                     vlrServicos15 := 0.00;
                                                     vlrServicos20 := 0.00;
                                                     vlrServicos25 := 0.00;
                                                     vlrAdicional  := 0.00;
                                                     vlrNRetAdic   := 0.00;
                                                end;
                                           end;

                                           //infoProcRetPr.Clear;
                                           //with infoProcRetPr.New do begin
                                           //     tpProcRetPrinc := tpAdministrativo;
                                           //     nrProcRetPrinc := '1122112';
                                           //     codSuspPrinc   := 001;
                                           //     valorPrinc     := 100.00;
                                           //end;
                                           //infoProcRetAd.Clear;
                                           //with infoProcRetAd.New do begin
                                           //     tpProcRetAdic := tpAdministrativo;
                                           //     nrProcRetAdic := '1122112';
                                           //     codSuspAdic   := 001;
                                           //     valorAdic     := 1000.00;
                                           //end;
                               
                                           tNotas.Next;
                                     end;
                                end;
                           end;
                      end;
                 end;
                 
                 inc(mSeq);
            end;
            
            tTotal.Next;
      end;
end;

procedure TfrmACBrReinf.GerarReinf2020;
var
   mSeq: integer;
begin
      // Totaliza as notas de serviço Prestado.
      with tTotal do begin
           sql.Clear;
           sql.add('select Cliente');
           sql.Add('      ,CNPJ = (select CNPJ from Clientes cli where cli.Codigo = nts.Cliente)');
           sql.add('      ,vlrTotalBruto     = sum(Total_Nota)');
           sql.add('      ,vlrTotalBaseRet   = sum(Total_Nota)');
           sql.add('      ,vlrTotalRetPrinc  = sum( case when Codigo_Adicional01 = ''INSS'' then Valor_Adicional01');
           sql.add('                                     when Codigo_Adicional02 = ''INSS'' then Valor_Adicional02');
           sql.add('                                     when Codigo_Adicional03 = ''INSS'' then Valor_Adicional03');
           sql.add('                                     when Codigo_Adicional04 = ''INSS'' then Valor_Adicional04');
           sql.add('                                     when Codigo_Adicional05 = ''INSS'' then Valor_Adicional05');
           sql.add('                                     when Codigo_Adicional06 = ''INSS'' then Valor_Adicional06');
           sql.add('                               end )');
           sql.add('      ,vlrTotalRetAdic   = 0');
           sql.add('      ,vlrTotalNRetPrinc = 0');
           sql.add('      ,vlrTotalNRetAdic  = 0');
           sql.add('from  NotasServico nts');
           sql.Add('where year(Data_Emissao)  = :pAno');
           sql.add('and   month(Data_Emissao) = :pMes');
           sql.add('and   (Codigo_Adicional01 = ''INSS'' or Codigo_Adicional02 = ''INSS'' or Codigo_Adicional03 = ''INSS'' or Codigo_Adicional04 = ''INSS'' or Codigo_Adicional05 = ''INSS'' or Codigo_Adicional06 = ''INSS'')');
           sql.add('group by Cliente');
           sql.add('order by CNPJ');
           ParamByName('pAno').asInteger  := yearof(cData.Date);
           ParamByName('pMes').asinteger  := monthof(cData.Date);
           //sql.SaveToFile('c:\temp\REINF_2020_Clientes.sql');
           open;
           first;
           m2020 := recordCount > 0;
           if recordCount = 0 then Abort;
      end;
      
      mSeq := 0;
      ACBrReinf1.Eventos.ReinfEventos.R2020.Clear;
      while not tTotal.Eof do begin
            with ACBrReinf1.Eventos.ReinfEventos.R2020.New do begin
                 with evtServPrest do begin
                      Sequencial         := mSeq;
                      ideEvento.indRetif := trOriginal;
                      ideEvento.NrRecibo := '';
                      ideEvento.perApur  := FormatDateBr(cData.Date,'yyyy-mm');
                      IdeEvento.ProcEmi  := peAplicEmpregador;
                      IdeEvento.VerProc  := cVersao.text;
                      ideContri.TpInsc   := tiCNPJ;
                      ideContri.NrInsc   := edtEmitCNPJ.Text;

                      with infoServPrest do begin
                           with ideEstabPrest do begin
                                tpInscEstabPrest := tiCNPJ;
                                nrInscEstabPrest := edtEmitCNPJ.Text;

                                with ideTomador do begin
                                     tpInscTomador     := tiCNPJ;
                                     nrInscTomador     := tTotal.FieldByName('CNPJ').AsString;
                                     indObra           := ioNaoeObraDeConstrucaoCivil;
                                     vlrTotalBruto     := tTotal.FieldByName('vlrTotalBruto').ascurrency;
                                     vlrTotalBaseRet   := tTotal.FieldByName('vlrTotalBaseRet').ascurrency;
                                     vlrTotalRetPrinc  := tTotal.FieldByName('vlrTotalRetPrinc').ascurrency;
                                     vlrTotalRetAdic   := tTotal.FieldByName('vlrTotalRetAdic').ascurrency;
                                     vlrTotalNRetPrinc := tTotal.FieldByName('vlrTotalNRetPrinc').ascurrency;
                                     vlrTotalNRetAdic  := tTotal.FieldByName('vlrTotalNRetAdic').ascurrency;

                                     PegaNotasPro(tTotal.FieldByName('Cliente').AsInteger);
                                     nfs.Clear;
                                     
                                     tNotas.First;
                                     while not tNotas.Eof do begin
                                           with nfs.New do begin
                                                serie       := tNotas.FieldByName('Serie').asstring;
                                                numDocto    := tNotas.FieldByName('Nota').asstring;
                                                dtEmissaoNF := tNotas.FieldByName('Data_Emissao').asdatetime;
                                                vlrBruto    := tNotas.FieldByName('Valor_TotalNota').ascurrency;
                                                obs         := '';

                                                infoTpServ.Clear;
                                                with infoTpServ.New do begin
                                                     tpServico     := tNotas.FieldByName('Servico').asstring;
                                                     vlrBaseRet    := tNotas.FieldByName('Valor_TotalNota').ascurrency;
                                                     vlrRetencao   := tNotas.FieldByName('Valor_INSS').ascurrency;
                                                     vlrRetSub     := 0.00;
                                                     vlrNRetPrinc  := 0.00;
                                                     vlrServicos15 := 0.00;
                                                     vlrServicos20 := 0.00;
                                                     vlrServicos25 := 0.00;
                                                     vlrAdicional  := 0.00;
                                                     vlrNRetAdic   := 0.00;
                                                end;
                                           end;

                                           infoProcRetPr.Clear;
                                           //with infoProcRetPr.New do begin
                                           //     tpProcRetPrinc := tpAdministrativo;
                                           //     nrProcRetPrinc := '1122112';
                                           //     codSuspPrinc   := 001;
                                           //     valorPrinc     := 100.00;
                                           //end;
                                           infoProcRetAd.Clear;
                                           //with infoProcRetAd.New do begin
                                           //     tpProcRetAdic := tpAdministrativo;
                                           //     nrProcRetAdic := '1122112';
                                           //     codSuspAdic   := 001;
                                           //     valorAdic     := 1000.00;
                                           //end;
                                           
                                           tNotas.next;
                                     end;
                                end;
                           end;
                      end;
                 end;
                 
                 inc(mSeq);
            end;
            
            tTotal.Next;
      end;
end;

procedure TfrmACBrReinf.GerarReinf2030;
begin
      ACBrReinf1.Eventos.ReinfEventos.R2030.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R2030.New do begin
           with evtAssocDespRec do begin
                Sequencial         := 0;
                ideEvento.indRetif := trOriginal;
                ideEvento.NrRecibo := '123';
                ideEvento.perApur  := FormatDateBr(cData.Date,'yyyy-mm');
                IdeEvento.ProcEmi  := peAplicEmpregador;
                IdeEvento.VerProc  := cVersao.text;
                ideContri.TpInsc   := tiCNPJ;
                ideContri.NrInsc   := edtEmitCNPJ.Text;

                with ideEstab do begin
                     tpInscEstab := tiCNPJ;
                     nrInscEstab := edtEmitCNPJ.Text;

                     recursosRec.Clear;
                     with recursosRec.New do begin
                          cnpjOrigRecurso := '12345678000123';

                          if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_02 then begin
                             recEmprExt := '';     // Preencher "S" para empresa do exterior
                             nmEmprExt  := '';     // Preencher nome da empresa quando recEmprExt = S
                          end;

                          vlrTotalRec     := 100.00;
                          vlrTotalRet     := 0;
                          vlrTotalNRet    := 0;

                          infoRecurso.Clear;
                          with infoRecurso.New do begin
                               tpRepasse   := trPatrocinio;
                               descRecurso := 'descricao resumida';
                               vlrBruto    := 100.00;
                               vlrRetApur  := 0.00;
                          end;

                          infoProc.Clear;
                          {
                          with infoProc.New do begin
                               tpProc  := tpAdministrativo;
                               nrProc  := '123';
                               codSusp := '456';
                               vlrNRet := 0.00;
                          end;
                          }
                     end;
                end;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf2040;
begin
      ACBrReinf1.Eventos.ReinfEventos.R2040.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R2040.New do begin
           with evtAssocDespRep do begin
                Sequencial         := 0;
                ideEvento.indRetif := trOriginal;
                ideEvento.NrRecibo := '123';
                ideEvento.perApur  := FormatDateBr(cData.Date,'yyyy-mm');
                IdeEvento.ProcEmi  := peAplicEmpregador;
                IdeEvento.VerProc  := cVersao.text;
                ideContri.TpInsc   := tiCNPJ;
                ideContri.NrInsc   := edtEmitCNPJ.Text;

                with ideEstab do begin
                     tpInscEstab := tiCNPJ;
                     nrInscEstab := edtEmitCNPJ.Text;

                     recursosRep.Clear;
                     with recursosRep.New do begin
                          cnpjAssocDesp := '12345678000123';
                          vlrTotalRep   := 100.00;
                          vlrTotalRet   := 0;
                          vlrTotalNRet  := 0;

                          infoRecurso.Clear;
                          with infoRecurso.New do begin
                               tpRepasse   := trPatrocinio;
                               descRecurso := 'descricao resumida';
                               vlrBruto    := 100.00;
                               vlrRetApur  := 0.00;
                          end;

                          infoProc.Clear;
                          {
                          with infoProc.New do begin
                               tpProc  := tpAdministrativo;
                               nrProc  := '123';
                               codSusp := '456';
                               vlrNRet := 0.00;
                          end;
                          }
                     end;
                end;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf2050;
begin
      ACBrReinf1.Eventos.ReinfEventos.R2050.Clear; 
      with ACBrReinf1.Eventos.ReinfEventos.R2050.New do begin
           with evtComProd do begin
                Sequencial         := 0;
                ideEvento.indRetif := trOriginal;
                ideEvento.NrRecibo := '123';
                ideEvento.perApur  := FormatDateBr(cData.Date,'yyyy-mm');
                IdeEvento.ProcEmi  := peAplicEmpregador;
                IdeEvento.VerProc  := cVersao.text;
                ideContri.TpInsc   := tiCNPJ;
                ideContri.NrInsc   := edtEmitCNPJ.Text;

                with infoComProd.ideEstab do begin
                     tpInscEstab       := tiCNPJ;
                     nrInscEstab       := '12345678000123';
                     vlrRecBrutaTotal  := 1000.00;
                     vlrCPApur         := 0.00;
                     vlrRatApur        := 0.00;
                     vlrSenarApur      := 0.00;
                     vlrCPSuspTotal    := 0.00;
                     vlrRatSuspTotal   := 0.00;
                     vlrSenarSuspTotal := 0.00;

                     tipoCom.Clear;
                     with tipoCom.New do begin
                          indCom      := icProdRural;
                          vlrRecBruta := 1000.00;

                          infoProc.Clear;
                          {
                          with infoProc.New do begin
                               tpProc       := tpAdministrativo;
                               nrProc       := '123';
                               codSusp      := '456';
                               vlrCPSusp    := 0.00;
                               vlrRatSusp   := 0.00;
                               vlrSenarSusp := 0.00;
                          end;
                          }
                     end;
                end;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf2055;
begin
      ACBrReinf1.Eventos.ReinfEventos.R2055.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R2055.New do begin
           with evtAqProd do begin
                Sequencial         := 0;
                ideEvento.indRetif := trOriginal;
                ideEvento.NrRecibo := '123';
                ideEvento.perApur  := FormatDateBr(cData.Date,'yyyy-mm');
                IdeEvento.ProcEmi  := peAplicEmpregador;
                IdeEvento.VerProc  := cVersao.text;
                ideContri.TpInsc   := tiCNPJ;
                ideContri.NrInsc   := edtEmitCNPJ.Text;
                                   
                with infoAquisProd.ideEstabAdquir do begin
                     tpInscAdq  := tiCNPJ;
                     nrInscAdq  := '12345678000123'; // Diferente do nrInscProd
                     tpInscProd := tiCNPJ;
                     nrInscProd := '12345678000234'; // Diferente do nrInscAdq
                     indOpcCP   := 'S';

                     detAquis.Clear;
                     with detAquis.New do begin
                          indAquis     := iaPF;
                          vlrBruto     := 1000.00;
                          vlrCPDescPR  := 0.00;
                          vlrRatDescPR := 0.00;
                          vlrRatDescPR := 0.00;

                          infoProc.Clear;
                          {
                          with infoProc.New do begin
                               nrProc       := '123';
                               codSusp      := '456';
                               vlrCPNRet    := 0.00;
                               vlrRatNRet   := 0.00;
                               vlrSenarNRet := 0.00;
                          end;
                          }
                     end;
                end;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf2060;
begin
      ACBrReinf1.Eventos.ReinfEventos.R2060.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R2060.New do begin
           with evtCPRB do begin
                Sequencial         := 0;
                ideEvento.indRetif := trOriginal;
                ideEvento.NrRecibo := '123';
                ideEvento.perApur  := FormatDateBr(cData.Date,'yyyy-mm');
                IdeEvento.ProcEmi  := peAplicEmpregador;
                IdeEvento.VerProc  := '1.0';
                ideContri.TpInsc   := tiCNPJ;
                ideContri.NrInsc   := edtEmitCNPJ.Text;

                with infoCPRB.ideEstab do begin
                     tpInscEstab      := tiCNPJ;
                     nrInscEstab      := edtEmitCNPJ.Text;
                     vlrRecBrutaTotal := 1000.00;
                     vlrCPApurTotal   := 0.00;
                     vlrCPRBSuspTotal := 0.00;

                     tipoCod.Clear;
                     with tipoCod.New do begin
                          codAtivEcon     := '00000091';
                          vlrRecBrutaAtiv := 1000.00;
                          vlrExcRecBruta  := 0.00;
                          vlrAdicRecBruta := 0.00;
                          vlrBcCPRB       := 1000.00;
                          vlrCPRBapur     := 0.00;

                          tipoAjuste.Clear;
                          with tipoAjuste.New do begin
                               tpAjuste   := taReducao;
                               codAjuste  := caRegimeCaixa;
                               vlrAjuste  := 0.00;
                               descAjuste := 'descricao';
                               dtAjuste   := FormatDateBr(cData.Date,'yyyy-mm');
                          end;

                          infoProc.Clear;
                          {
                          with infoProc.New do begin
                               tpProc      := tpAdministrativo;
                               nrProc      := '123';
                               codSusp     := '456';
                               vlrCPRBSusp := 0.00;
                          end;
                          }
                     end;
                end;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf2070;
begin
      ACBrReinf1.Eventos.ReinfEventos.R2070.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R2070.New do begin
            with evtPgtosDivs do begin
                 Sequencial         := 0;
                 ideEvento.indRetif := trOriginal;
                 ideEvento.NrRecibo := '';
                 ideEvento.perApur  := FormatDateBr(cData.Date,'yyyy-mm');
                 IdeEvento.ProcEmi  := peAplicEmpregador;
                 IdeEvento.VerProc  := cVersao.text;
                 ideContri.TpInsc   := tiCNPJ;
                 ideContri.NrInsc   := edtEmitCNPJ.Text;

                 with ideBenef do begin
                      codPgto      := '123';
                      tpInscBenef  := tiCNPJ;
                      nrInscBenef  := '12345678000123';
                      nmRazaoBenef := 'Nome do Beneficiario';

                      with infoResidExt do begin
                           with infoEnder do begin
                                paisResid := 'Estados Unidos da America';
                                dscLograd := 'avenida';
                                nrLograd  := '100';
                                complem   := '';
                                bairro    := 'centro';
                                cidade    := 'New York';
                                codPostal := '123';
                           end;
                           with infoFiscal do begin
                                indNIF        := nifCom;
                                nifBenef      := '1234';
                                relFontePagad := '1245';
                           end;
                      end;

                      with infoMolestia do begin
                           dtLaudo := cData.Date;
                      end;

                      ideEstab.Clear;
                      with ideEstab.New do begin
                           tpInsc := tiCNPJ;
                           nrInsc := '12345678000112';

                           pgtoPF.Clear;
                           with pgtoPF.New do begin
                                dtPgto            := cData.Date;
                                indSuspExig       := tpSim;
                                indDecTerceiro    := tpSim;
                                vlrRendTributavel := 0.0;

                                detDeducao.Clear;
                                with detDeducao.New do begin
                                     indTpDeducao := itdOficial;
                                     vlrDeducao   := 0.0;
                                end;
                                rendIsento.Clear;
                                with rendIsento.New do begin
                                     tpIsencao      := tiIsenta;
                                     vlrIsento      := 0.0;
                                     descRendimento := '';
                                end;
                                detCompet.Clear;
                                with detCompet.New do begin
                                     indPerReferencia  := iprMensal;
                                     perRefPagto       := '2018-04';
                                     vlrRendTributavel := 0.0;
                                end;
                                with compJud do begin
                                     vlrCompAnoCalend := 0.0;
                                     vlrCompAnoAnt    := 0.0;
                                end;
                                infoRRA.Clear;
                                with infoRRA.New do begin
                                     tpProcRRA   := tpAdministrativo;
                                     nrProcRRA   := '1234';
                                     codSusp     := '12345';
                                     natRRA      := 'natureza';
                                     qtdMesesRRA := 1;

                                     with despProcJud do begin
                                          vlrDespCustas    := 0.0;
                                          vlrDespAdvogados := 0.0;
                                          
                                          ideAdvogado.Clear;
                                          with ideAdvogado.New do begin
                                               tpInscAdvogado := tiCNPJ;
                                               nrInscAdvogado := '12345678000123';
                                               vlrAdvogado    := 0.0;
                                          end;
                                     end;
                                end;

                                infoProcJud.Clear;
                                with infoProcJud.New do begin
                                     nrProcJud         := '1234';
                                     codSusp           := '123';
                                     indOrigemRecursos := iorProprios;

                                     with despProcJud do begin
                                          vlrDespCustas    := 0.0;
                                          vlrDespAdvogados := 0.0;

                                          ideAdvogado.Clear;
                                          with ideAdvogado.New do begin
                                               tpInscAdvogado := tiCNPJ;
                                               nrInscAdvogado := '12345678000123';
                                               vlrAdvogado    := 0.0;
                                          end;
                                     end;
                                     with origemRecursos do begin
                                          cnpjOrigemRecursos := '12345678000123';
                                     end;
                                end;
                                with depJudicial do begin
                                     vlrDepJudicial := 0.0
                                end;
                           end;

                           pgtoPJ.Clear;
                           with pgtoPJ.New do begin
                                dtPagto           := cData.Date;
                                vlrRendTributavel := 0.0;
                                vlrRet            := 0.0;

                                infoProcJud.Clear;
                                with infoProcJud.New do begin
                                     nrProcJud         := '1234';
                                     codSusp           := '123';
                                     indOrigemRecursos := iorProprios;

                                     with despProcJud do begin
                                          vlrDespCustas    := 0.0;
                                          vlrDespAdvogados := 0.0;
                                          ideAdvogado.Clear;
                                          with ideAdvogado.New do begin
                                               tpInscAdvogado := tiCNPJ;
                                               nrInscAdvogado := '12345678000123';
                                               vlrAdvogado    := 0.0;
                                          end;
                                     end;

                                     with origemRecursos do begin
                                          cnpjOrigemRecursos := '12345678000123';
                                     end;
                                end;
                           end;

                           with pgtoResidExt do begin
                                dtPagto         := cData.Date;
                                tpRendimento    := '123';
                                formaTributacao := '123';
                                vlrPgto         := 0.0;
                                vlrRet          := 0.0;
                           end;
                      end;
                 end;
            end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf2098;
begin
      ACBrReinf1.Eventos.ReinfEventos.R2098.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R2098.New do begin
           with evtReabreEvPer do begin
                Sequencial        := 0;
                ideEvento.perApur := FormatDateBr(cData.Date,'yyyy-mm');
                IdeEvento.ProcEmi := peAplicEmpregador;
                IdeEvento.VerProc := cVersao.text;
                ideContri.TpInsc  := tiCNPJ;
                ideContri.NrInsc  := edtEmitCNPJ.Text;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf2099;
begin
      ACBrReinf1.Eventos.ReinfEventos.R2099.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R2099.New do begin
           with evtFechaEvPer do begin
                Sequencial        := 0;
                ideEvento.perApur := FormatDateBr(cData.Date,'yyyy-mm');
                IdeEvento.ProcEmi := peAplicEmpregador;
                IdeEvento.VerProc := cVersao.text;
                ideContri.TpInsc  := tiCNPJ;
                ideContri.NrInsc  := edtEmitCNPJ.Text;

                with ideRespInf do begin
                     nmResp   := edContNome.Text;
                     cpfResp  := edContCPF.Text;
                     telefone := edContFone.Text;
                     email    := edContEmail.Text;
                end;
                with infoFech do begin
                     evtServTm     := iif(m2010, tpSim, tpNao);
                     evtServPr     := iif(m2020, tpSim, tpNao);
                     evtAssDespRec := iif(m2030, tpSim, tpNao);
                     evtAssDespRep := iif(m2040, tpSim, tpNao);
                     evtComProd    := iif(m2050, tpSim, tpNao);
                     evtCPRB       := iif(m2060, tpSim, tpNao);
                     //evtPgtos      :=
                     evtAquis      := iif(m2055, tpSim, tpNao);
                     if (not m2010) and (not m2020) and(not m2030) and(not m2040) and(not m2050) and(not m2060) and(not m2055) then begin
                        compSemMovto  := '2017-01';                {Somente preenchido se os outros valores forem tbNao}
                     end;
                end;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf3010;
begin
      ACBrReinf1.Eventos.ReinfEventos.R3010.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R3010.New do begin
           with evtEspDesportivo do begin
                Sequencial         := 0;
                ideEvento.indRetif := trOriginal;

                if ChkRetificadora.Checked then ideEvento.indRetif := trRetificacao;
                if ideEvento.indRetif = trRetificacao then ideEvento.nrRecibo := edRecibo.Text;

                ideEvento.dtApuracao := StartOfTheMonth(cData.Date);
                IdeEvento.ProcEmi    := peAplicEmpregador;
                IdeEvento.VerProc    := cVersao.text;
                ideContri.TpInsc     := tiCNPJ;
                ideContri.NrInsc     := edtEmitCNPJ.Text;

                ideEstab.Clear;
                with ideEstab.New do begin
                     tpInscEstab := tiCNPJ;
                     nrInscEstab := edtEmitCNPJ.Text;

                     boletim.Clear;
                     with boletim.New do begin
                          nrBoletim       := '1234';
                          tpCompeticao    := ttcOficial;
                          categEvento     := tceLocal;
                          modDesportiva   := 'TESTE';
                          nomeCompeticao  := 'TESTE';
                          cnpjMandante    := edtEmitCNPJ.Text;
                          cnpjVisitante   := '12345678000123';
                          nomeVisitante   := 'TESTE';
                          pracaDesportiva := 'TESTE';
                          codMunic        := 3550308;
                          uf              := 'SP';
                          qtdePagantes    := 999;
                          qtdeNaoPagantes := 999;

                          receitaIngressos.Clear;
                          with receitaIngressos.New do begin
                               tpIngresso       := ttiArquibancada;
                               descIngr         := 'TESTE';
                               qtdeIngrVenda    := 999;
                               qtdeIngrVendidos := 600;
                               qtdeIngrDev      := 0;
                               precoIndiv       := 1;
                               vlrTotal         := 600;
                          end;

                          outrasReceitas.Clear;
                          with outrasReceitas.New do begin
                               tpReceita   := ttrTransmissao;
                               vlrReceita  := 400;
                               descReceita := 'TESTE'
                          end;
                     end;

                     with receitaTotal do begin
                          vlrReceitaTotal  := 1000;
                          vlrCP            := 0;
                          vlrCPSuspTotal   := 0;
                          vlrReceitaClubes := 0;
                          vlrRetParc       := 0;

                          infoProc.Clear;
                          {
                          with infoProc.New do begin
                               tpProc    := tpAdministrativo;
                               nrProc    := '1234567890';
                               codSusp   := '1234';
                               vlrCPSusp := 1234;
                          end;
                          }
                     end;
                end;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf4010;
begin
      ACBrReinf1.Eventos.ReinfEventos.R4010.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R4010.New do begin
           with evtRetPF do begin
                Sequencial         := 0;
                ideEvento.indRetif := trOriginal;

                if ChkRetificadora.Checked then begin
                   ideEvento.indRetif := trRetificacao;
                end;
                if ideEvento.indRetif = trRetificacao then begin 
                   ideEvento.nrRecibo := edRecibo.Text;
                end;

                ideEvento.perApur := FormatDateBr(cData.Date,'yyyy-mm');
                IdeEvento.ProcEmi := peAplicEmpregador;
                IdeEvento.VerProc := cVersao.text;
                ideContri.TpInsc  := tiCNPJ;
                ideContri.NrInsc  := edtEmitCNPJ.Text;
                // Informação  de preenchimento restrito, apenas nos casos em que a natureza jurídica do declarante
                // está desatualizada nas bases do CNPJ na Receita Federal, especialmente em situações de alteração
                // de natureza jurídica e enquanto o CNPJ não é atualizado.
                // Validação: Se informado, deve conter apenas números.
                // ideContri.infoComplContri.NatJur := '1234';

                with ideEstab do begin
                     tpInscEstab := tiCNPJ;
                     nrInscEstab := edtEmitCNPJ.Text;

                     with ideBenef do begin
                          cpfBenef := '98765432100';
                          nmBenef  := '';
                          //if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_02 then ideEvtAdic := '12345678';

                          ideDep.Clear;
                          {
                          with ideDep.New do begin
                               cpfDep := '12345678909';
                               relDep := ttdAgregadoOutros;
                               // Preencher apenas quando relDep = ttdAgregadoOutros
                               descrDep := 'Outros';
                          end;
                          }
                          idePgto.Clear;
                          with idePgto.New do begin
                               natRend := '10001'; // Tabela 01
                               observ  := 'Observações';

                               infoPgto.Clear;
                               with infoPgto.New do begin
                                    dtFG         := cData.Date;
                                    compFP       := cData.Date;
                                    indDecTerc   := 'S';
                                    vlrRendBruto := 100;
                                    vlrRendTrib  := 0;
                                    vlrIR        := 0;
                                    {
                                    indRRA       := 'S';
                                    indFciScp    := '1';
                                    nrInscFciScp := '12345678000123';
                                    percSCP      := 12.3;
                                    indJud       := 'N';
                                    paisResidExt := '063';

                                    if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_02 then begin
                                       //dtEscrCont := IncMonth(Date,-1); // preencher quando natRend = 12052
                                       observ     := 'Observações';
                                    end;

                                    with detDed.New do begin
                                         indTpDeducao   := itdOficial;
                                         vlrDeducao     := 10;
                                         infoEntid      := 'S';
                                         nrInscPrevComp := '12345678000123';
                                         vlrPatrocFunp  := 11;

                                         with benefPen.New do begin
                                              cpfDep   := '98765432100';
                                              vlrDepen := 10;
                                         end;
                                    end;

                                    with rendIsento.New do begin
                                         tpIsencao := tiPensaoAposentadoria;
                                         vlrIsento := 10;
                                         descRendimento := 'Descrição';
                                         dtLaudo := Date - 31;
                                    end;
                                    }
                                    {
                                    with infoProcRet.New do begin
                                         tpProcRet    := tpAdministrativo;
                                         nrProcRet    := '123456789012345678901';
                                         codSusp      := '12345678901234';
                                         vlrNRetido   := 10;
                                         vlrDepJud    := 10;
                                         vlrCmpAnoCal := 10;
                                         vlrCmpAnoAnt := 10;
                                         vlrRendSusp  := 10;
   
                                         with dedSusp.New do begin
                                              indTpDeducao := itdOficial;
                                              vlrDedSusp   := 10;

                                              with benefPenSusp.New do begin
                                                   cpfDep       := '98765432100';
                                                   vlrDepenSusp := 10;
                                              end;
                                         end;
                                    end;
                                    }
                                    {
                                    with infoRRA do begin
                                         tpProcRRA       := tpAdministrativo;
                                         nrProcRRA       := '123456789012345678901';
                                         indOrigRec      := iorProprios;
                                         descRRA         := 'Descrição';
                                         qtdMesesRRA     := 1.0;
                                         cnpjOrigRecurso := '12345678000123';

                                         with despProcJud do begin
                                              vlrDespCustas    := 10;
                                              vlrDespAdvogados := 15;

                                              with ideAdv.New do begin
                                                   tpInscAdv := tiCPF;
                                                   nrInscAdv := '98765432100';
                                                   vlrAdv    := 10;
                                              end;
                                         end;
                                    end;

                                    with infoProcJud do begin
                                         nrProc          := '123456789012345678901';
                                         indOrigRec      := iorProprios;
                                         cnpjOrigRecurso := '12345678000123';
                                         desc            := 'Descrição';

                                         with despProcJud do begin
                                              vlrDespCustas    := 10;
                                              vlrDespAdvogados := 15;

                                              with ideAdv.New do begin
                                                   tpInscAdv := tiCPF;
                                                   nrInscAdv := '98765432100';
                                                  vlrAdv    := 10;
                                              end;
                                         end;
                                    end;

                                    with infoPgtoExt do begin
                                         indNIF    := nifCom;
                                         nifBenef  := '123456789012345678901234567890';
                                         frmTribut := '10'; // Tabela 02

                                          with endExt do begin
                                               dscLograd := 'Logradouro';
                                               nrLograd  := '1234567890';
                                               complem   := 'Complemento';
                                               bairro    := 'Bairro';
                                               cidade    := 'Cidade';
                                               estado    := 'Estado';
                                               codPostal := '01311200';
                                               telef     := '1234567890';
                                          end;
                                    end;
                                    }
                               end;
                          end;
                       {
                       with ideBenef.ideOpSaude.New do begin
                            nrInsc   := '12345678000123';
                            regANS   := '123456';
                            vlrSaude := 10;

                            with infoReemb.New do begin
                                 tpInsc      := tiCNPJ;
                                 nrInsc      := '12345678000123';
                                 vlrReemb    := 10;
                                 vlrReembAnt := 15;
                            end;

                            with infoDependPl.New do begin
                                 cpfDep   := '98765432100';
                                 vlrSaude := 10;

                                 with infoReembDep.New do begin
                                      tpInsc      := tiCNPJ;
                                      nrInsc      := '12345678000123';
                                      vlrReemb    := 10;
                                      vlrReembAnt := 15;
                                 end;
                            end;
                       end;
                       }
                     end;
                end;
           end;
      end;
end;
(*
procedure TfrmACBrReinf.GerarReinf4020;
var
   mSeq: integer;
begin
      // Totaliza as notas de serviço tomado.
      with tTotal do begin 
           sql.Clear;
           sql.add('select Fornecedor');
           sql.add('      ,CNPJ = (select CNPJ from Fornecedores where Codigo = NotasTerceiros.Fornecedor)');
           sql.add('      ,Nome = (select Nome from Fornecedores where Codigo = NotasTerceiros.Fornecedor)');
           sql.Add('      ,Natureza_Rend = (select Codigo from Cybersoft_Cadastros.dbo.NaturezaRendimentos where Codigo = (select Natureza_Rendimento from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico))');
           sql.Add('      ,Valor_Bruto = Valor_TotalNota');
           sql.add('      ,Valor_CSLL = case when Codigo_Adicional01 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when Codigo_Adicional02 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when Codigo_Adicional03 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when Codigo_Adicional04 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when Codigo_Adicional05 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when Codigo_Adicional06 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('      ,Valor_IR   = case when Codigo_Adicional01 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when Codigo_Adicional02 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when Codigo_Adicional03 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when Codigo_Adicional04 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when Codigo_Adicional05 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when Codigo_Adicional06 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('      ,Valor_PIS  = case when Codigo_Adicional01 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when Codigo_Adicional02 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when Codigo_Adicional03 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when Codigo_Adicional04 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when Codigo_Adicional05 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when Codigo_Adicional06 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('      ,Valor_COFINS = case when Codigo_Adicional01 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                           when Codigo_Adicional02 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                           when Codigo_Adicional03 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                           when Codigo_Adicional04 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                           when Codigo_Adicional05 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                           when Codigo_Adicional06 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                      end');
           sql.add('      ,Valor_Agreg = 0');
           sql.add('into  #tmp');
           sql.add('from  NotasTerceiros');
           sql.add('where Servico is not null');
           sql.Add('and   year(Data_Entrada)  = :pAno');
           sql.add('and   month(Data_Entrada) = :pMes');
           sql.add('');
           sql.add('select Fornecedor');
           sql.add('      ,CNPJ');
           sql.add('      ,Nome');
           sql.Add('      ,Natureza_Rend');
           sql.Add('      ,Valor_Bruto  = sum(isnull(Valor_Bruto, 0))');
           sql.add('      ,Valor_CSLL   = sum(isnull(Valor_CSLL, 0))');
           sql.add('      ,Valor_IR     = sum(isnull(Valor_IR, 0))');
           sql.add('      ,Valor_PIS    = sum(isnull(Valor_PIS, 0))');
           sql.add('      ,Valor_COFINS = sum(isnull(Valor_COFINS, 0))');
           sql.add('      ,Valor_Agreg  = sum(Valor_CSLL + Valor_PIS + Valor_COFINS)');
           sql.add('from #tmp');
           sql.add('where isnull(Valor_CSLL, 0)+isnull(valor_IR, 0)+isnull(Valor_PIS, 0)+isnull(Valor_COFINS,0) > 0');
           sql.add('group by Fornecedor, CNPJ, Nome, Natureza_Rend');
           sql.add('order by CNPJ');
           sql.add('');
           sql.add('drop table #tmp');
           ParamByName('pAno').asInteger  := yearof(cData.Date);
           ParamByName('pMes').asinteger  := monthof(cData.Date);
           //sql.SaveToFile('c:\temp\REINF_4020_Fornecedores.sql');
           open;
           first;
           m4020 := recordCount > 0;
           if recordCount = 0 then Abort;
      end;

      ACBrReinf1.Eventos.ReinfEventos.R4020.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R4020.New do begin
            with evtRetPJ do begin
                 mSeq               := 0;
                 ideEvento.indRetif := trOriginal;

                 if ChkRetificadora.Checked then begin
                    ideEvento.indRetif := trRetificacao;
                 end;
                 if ideEvento.indRetif = trRetificacao then begin 
                    ideEvento.nrRecibo := edRecibo.Text;
                 end;

                 ideEvento.perApur := FormatDateBr(cData.Date,'yyyy-mm');
                 IdeEvento.ProcEmi := peAplicEmpregador;
                 IdeEvento.VerProc := cVersao.text;
                 ideContri.TpInsc  := tiCNPJ;
                 ideContri.NrInsc  := edtEmitCNPJ.Text;
                 
                 // Informação de preenchimento restrito, apenas nos casos em que a natureza jurídica  do declarante 
                 // está desatualizada nas bases do CNPJ na Receita Federal, especialmente em situações de alteração 
                 // de natureza jurídica e enquanto o CNPJ não é atualizado.
                 // Validação: Se informado, deve conter apenas números.
                 // ideContri.infoComplContri.NatJur := '1234';

                 with ideEstab do begin
                      tpInscEstab := tiCNPJ;
                      nrInscEstab := edtEmitCNPJ.Text;

                      with tTotal do begin
                           ideBenef.idePgto.Clear;
                           while not eof do begin
                                 inc(mSeq); 
                                 with ideBenef do begin
                                      cnpjBenef := fieldbyname('CNPJ').AsString;
                                      nmBenef   := iif(cnpjBenef = '', fieldbyname('Nome').AsString, '');
                                      isenImun  := tiiNenhum;
                                      //if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_02 then
                                      //  ideEvtAdic:= '12345678';

                                      //idePgto.Clear;
                                      with idePgto.New do begin
                                           natRend := fieldbyname('Natureza_Rend').AsString;
                                           observ  := '';

                                           //infoPgto.Clear;
                                           with infoPgto.New do begin
                                                dtFG     := cData.Date;
                                                vlrBruto := fieldbyname('Valor_Bruto').ascurrency;
                                                
                                                //indFciScp    := '1';
                                                //nrInscFciScp := '12345678000123';
                                                //percSCP      := 12.3;
                                                //indJud       := 'N';
                                                //paisResidExt := '063';
                                                //
                                                //if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_02 then begin
                                                //   //dtEscrCont := IncMonth(Date,-1); // preencher quando natRend = 12052
                                                //   observ     := 'Observações';
                                                //end;
                                           
                                                with retencoes do begin
                                                     vlrBaseIR     := fieldbyname('Valor_Bruto').ascurrency;
                                                     vlrIR         := fieldbyname('Valor_IR').ascurrency;
//                                                     vlrBaseAgreg  := fieldbyname('Valor_Bruto').ascurrency;
//                                                     vlrAgreg      := fieldbyname('Valor_Agreg').ascurrency;
                                                     vlrBaseCSLL   := fieldbyname('Valor_Bruto').ascurrency;
                                                     vlrCSLL       := fieldbyname('Valor_CSLL').ascurrency;;
                                                     vlrBaseCofins := fieldbyname('Valor_Bruto').ascurrency;
                                                     vlrCofins     := fieldbyname('Valor_COFINS').ascurrency;
                                                     vlrBasePP     := fieldbyname('Valor_Bruto').ascurrency;
                                                     vlrPP         := fieldbyname('Valor_PIS').ascurrency;
                                                end;
                                                
                                                //with infoProcRet.New do begin
                                                //     tpProcRet         := tpAdministrativo;
                                                //     nrProcRet         := '123456789012345678901';
                                                //     codSusp           := '12345678901234';
                                                //     vlrBaseSuspIR     := 100;
                                                //     vlrNIR            := 10;
                                                //     vlrDepIR          := 20;
                                                //     vlrBaseSuspCSLL   := 100;
                                                //     vlrNCSLL          := 10;
                                                //     vlrDepCSLL        := 20;
                                                //     vlrBaseSuspCofins := 100;
                                                //     vlrNCofins        := 10;
                                                //     vlrDepCofins      := 20;
                                                //     vlrBaseSuspPP     := 100;
                                                //     vlrNPP            := 10;
                                                //     vlrDepPP          := 20;
                                                //end;
                                                //with infoProcJud do begin
                                                //     nrProc          := '123456789012345678901';
                                                //     indOrigRec      := iorProprios;
                                                //     cnpjOrigRecurso := '12345678000123';
                                                //     desc            := 'Descrição';
                                                //
                                                //     with despProcJud do begin
                                                //         vlrDespCustas    := 10;
                                                //         vlrDespAdvogados := 15;
                                                //
                                                //         with ideAdv.New do begin
                                                //              tpInscAdv := tiCPF;
                                                //              nrInscAdv := '98765432100';
                                                //              vlrAdv    := 10;
                                                //         end;
                                                //     end;
                                                //end;
                                                //with infoPgtoExt do begin
                                                //     indNIF    := nifCom;
                                                //     nifBenef  := '123456789012345678901234567890';
                                                //     relFontPg := '500'; // Tabela 03
                                                //     frmTribut := '10';  // Tabela 02
                                                //     with endExt do begin
                                                //          dscLograd := 'Logradouro';
                                                //          nrLograd  := '1234567890';
                                                //          complem   := 'Complemento';
                                                //          bairro    := 'Bairro';
                                                //          cidade    := 'Cidade';
                                                //          estado    := 'Estado';
                                                //          codPostal := '01311200';
                                                //          telef     := '1234567890';
                                                //     end;
                                                //end;
                                           end;
                                      end;
                                 end;
                                 
                                 next;
                           end;
                      end;
                 end;
            end;
      end;
end;
*)
procedure TfrmACBrReinf.GerarReinf4020;
var
   mSeq: integer;
begin
      // Totaliza as notas de serviço tomado.
      with tTotal do begin 
           sql.Clear;
           sql.add('select Fornecedor');
           sql.add('      ,CNPJ = (select CNPJ from Fornecedores where Codigo = NotasTerceiros.Fornecedor)');
           sql.add('      ,Nome = (select Nome from Fornecedores where Codigo = NotasTerceiros.Fornecedor)');
           sql.Add('      ,Natureza_Rend = (select Codigo   from Cybersoft_Cadastros.dbo.NaturezaRendimentos where Codigo = (select Natureza_Rendimento from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico))');
           sql.Add('      ,Agregado      = (select Agregado from Cybersoft_Cadastros.dbo.NaturezaRendimentos where Codigo = (select Natureza_Rendimento from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico))');
           sql.Add('      ,Valor_Bruto = Valor_TotalNota');
           sql.add('      ,Valor_CSLL = case when Codigo_Adicional01 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when Codigo_Adicional02 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when Codigo_Adicional03 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when Codigo_Adicional04 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when Codigo_Adicional05 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when Codigo_Adicional06 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('      ,Valor_IR   = case when Codigo_Adicional01 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when Codigo_Adicional02 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when Codigo_Adicional03 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when Codigo_Adicional04 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when Codigo_Adicional05 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when Codigo_Adicional06 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('      ,Valor_PIS  = case when Codigo_Adicional01 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when Codigo_Adicional02 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when Codigo_Adicional03 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when Codigo_Adicional04 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when Codigo_Adicional05 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when Codigo_Adicional06 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('      ,Valor_COFINS = case when Codigo_Adicional01 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                           when Codigo_Adicional02 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                           when Codigo_Adicional03 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                           when Codigo_Adicional04 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                           when Codigo_Adicional05 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                           when Codigo_Adicional06 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                      end');
           sql.add('      ,Valor_Agreg = 0');
           sql.add('into  #tmp');
           sql.add('from  NotasTerceiros');
           sql.add('where Servico is not null');
           sql.Add('and   year(Data_Entrada)  = :pAno');
           sql.add('and   month(Data_Entrada) = :pMes');
           sql.add('');
           sql.add('select Fornecedor');
           sql.add('      ,CNPJ');
           sql.add('      ,Nome');
           sql.Add('      ,Natureza_Rend');
           sql.Add('      ,Agregado');
           sql.Add('      ,Valor_Bruto  = sum(isnull(Valor_Bruto, 0))');
           sql.add('      ,Valor_CSLL   = sum(isnull(Valor_CSLL, 0))');
           sql.add('      ,Valor_IR     = sum(isnull(Valor_IR, 0))');
           sql.add('      ,Valor_PIS    = sum(isnull(Valor_PIS, 0))');
           sql.add('      ,Valor_COFINS = sum(isnull(Valor_COFINS, 0))');
           sql.add('      ,Valor_Agreg  = sum(Valor_CSLL + Valor_PIS + Valor_COFINS)');
           sql.add('from #tmp');
           sql.add('where isnull(Valor_CSLL, 0)+isnull(valor_IR, 0)+isnull(Valor_PIS, 0)+isnull(Valor_COFINS,0) > 0');
           sql.add('group by Fornecedor, CNPJ, Nome, Natureza_Rend, Agregado');
           sql.add('order by CNPJ');
           sql.add('');
           sql.add('drop table #tmp');
           ParamByName('pAno').asInteger  := yearof(cData.Date);
           ParamByName('pMes').asinteger  := monthof(cData.Date);
           //sql.SaveToFile('c:\temp\REINF_4020_Fornecedores.sql');
           open;
           first;
           m4020 := recordCount > 0;
           if recordCount = 0 then Abort;
      end;

      ACBrReinf1.Eventos.ReinfEventos.R4020.Clear;
      while not tTotal.eof do begin
            with ACBrReinf1.Eventos.ReinfEventos.R4020.New do begin
                  with evtRetPJ do begin
                       mSeq               := 0;
                       ideEvento.indRetif := trOriginal;

                       if ChkRetificadora.Checked then begin
                          ideEvento.indRetif := trRetificacao;
                       end;
                       if ideEvento.indRetif = trRetificacao then begin 
                          ideEvento.nrRecibo := edRecibo.Text;
                       end;

                       ideEvento.perApur := FormatDateBr(cData.Date,'yyyy-mm');
                       IdeEvento.ProcEmi := peAplicEmpregador;
                       IdeEvento.VerProc := cVersao.text;
                       ideContri.TpInsc  := tiCNPJ;
                       ideContri.NrInsc  := edtEmitCNPJ.Text;
                 
                       // Informação de preenchimento restrito, apenas nos casos em que a natureza jurídica  do declarante 
                       // está desatualizada nas bases do CNPJ na Receita Federal, especialmente em situações de alteração 
                       // de natureza jurídica e enquanto o CNPJ não é atualizado.
                       // Validação: Se informado, deve conter apenas números.
                       // ideContri.infoComplContri.NatJur := '1234';

                       with ideEstab do begin
                            tpInscEstab := tiCNPJ;
                            nrInscEstab := edtEmitCNPJ.Text;

                            with tTotal do begin
                                 ideBenef.idePgto.Clear;
                                 inc(mSeq); 
                                 with ideBenef do begin
                                      cnpjBenef := fieldbyname('CNPJ').AsString;
                                      nmBenef   := iif(cnpjBenef = '', fieldbyname('Nome').AsString, '');
                                      isenImun  := tiiNenhum;
                                      //if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_02 then ideEvtAdic:= '12345678';

                                      idePgto.Clear;
                                      with idePgto.New do begin
                                           natRend := fieldbyname('Natureza_Rend').AsString;
                                           observ  := '';

                                           infoPgto.Clear;
                                           with infoPgto.New do begin
                                                dtFG     := cData.Date;
                                                vlrBruto := fieldbyname('Valor_Bruto').ascurrency;
                                          
                                                //indFciScp    := '1';
                                                //nrInscFciScp := '12345678000123';
                                                //percSCP      := 12.3;
                                                //indJud       := 'N';
                                                //paisResidExt := '063';
                                                //
                                                //if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_02 then begin
                                                //   //dtEscrCont := IncMonth(Date,-1); // preencher quando natRend = 12052
                                                //   observ     := 'Observações';
                                                //end;
                                     
                                                with retencoes do begin
                                                     if fieldbyname('Valor_IR').ascurrency <> 0 then begin
                                                        vlrBaseIR := fieldbyname('Valor_Bruto').ascurrency;
                                                        vlrIR     := fieldbyname('Valor_IR').ascurrency;
                                                     end;
                                                     if not fieldbyname('Agregado').asboolean then begin
                                                        vlrBaseAgreg  := 0;
                                                        vlrAgreg      := 0;
                                                        vlrBaseCSLL   := fieldbyname('Valor_Bruto').ascurrency;
                                                        vlrCSLL       := fieldbyname('Valor_CSLL').ascurrency;;
                                                        vlrBaseCofins := fieldbyname('Valor_Bruto').ascurrency;
                                                        vlrCofins     := fieldbyname('Valor_COFINS').ascurrency;
                                                        vlrBasePP     := fieldbyname('Valor_Bruto').ascurrency;
                                                        vlrPP         := fieldbyname('Valor_PIS').ascurrency;
                                                     end else begin
                                                        vlrBaseAgreg  := fieldbyname('Valor_Bruto').ascurrency;
                                                        vlrAgreg      := fieldbyname('Valor_Agreg').ascurrency;
                                                        vlrBaseCSLL   := 0;
                                                        vlrCSLL       := 0;
                                                        vlrBaseCofins := 0;
                                                        vlrCofins     := 0;
                                                        vlrBasePP     := 0;
                                                        vlrPP         := 0;
                                                     end;
                                                end;
                                          
                                                //with infoProcRet.New do begin
                                                //     tpProcRet         := tpAdministrativo;
                                                //     nrProcRet         := '123456789012345678901';
                                                //     codSusp           := '12345678901234';
                                                //     vlrBaseSuspIR     := 100;
                                                //     vlrNIR            := 10;
                                                //     vlrDepIR          := 20;
                                                //     vlrBaseSuspCSLL   := 100;
                                                //     vlrNCSLL          := 10;
                                                //     vlrDepCSLL        := 20;
                                                //     vlrBaseSuspCofins := 100;
                                                //     vlrNCofins        := 10;
                                                //     vlrDepCofins      := 20;
                                                //     vlrBaseSuspPP     := 100;
                                                //     vlrNPP            := 10;
                                                //     vlrDepPP          := 20;
                                                //end;
                                                //with infoProcJud do begin
                                                //     nrProc          := '123456789012345678901';
                                                //     indOrigRec      := iorProprios;
                                                //     cnpjOrigRecurso := '12345678000123';
                                                //     desc            := 'Descrição';
                                                //
                                                //     with despProcJud do begin
                                                //         vlrDespCustas    := 10;
                                                //         vlrDespAdvogados := 15;
                                                //
                                                //         with ideAdv.New do begin
                                                //              tpInscAdv := tiCPF;
                                                //              nrInscAdv := '98765432100';
                                                //              vlrAdv    := 10;
                                                //         end;
                                                //     end;
                                                //end;
                                                //with infoPgtoExt do begin
                                                //     indNIF    := nifCom;
                                                //     nifBenef  := '123456789012345678901234567890';
                                                //     relFontPg := '500'; // Tabela 03
                                                //     frmTribut := '10';  // Tabela 02
                                                //     with endExt do begin
                                                //          dscLograd := 'Logradouro';
                                                //          nrLograd  := '1234567890';
                                                //          complem   := 'Complemento';
                                                //          bairro    := 'Bairro';
                                                //          cidade    := 'Cidade';
                                                //          estado    := 'Estado';
                                                //          codPostal := '01311200';
                                                //          telef     := '1234567890';
                                                //     end;
                                                //end;
                                           end;
                                      end;
                                 end;
                            end;
                       end;
                  end;
            end;
            
            tTotal.next;
      end;
end;

procedure TfrmACBrReinf.GerarReinf4040;
begin
      ACBrReinf1.Eventos.ReinfEventos.R4040.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R4040.New do begin
           with evtBenefNId do begin
                Sequencial := 0;

                ideEvento.indRetif := trOriginal;

                if ChkRetificadora.Checked then ideEvento.indRetif := trRetificacao;
                if ideEvento.indRetif = trRetificacao then ideEvento.nrRecibo := edRecibo.Text;

                ideEvento.perApur := FormatDateBr(cData.Date,'yyyy-mm');
                IdeEvento.ProcEmi := peAplicEmpregador;
                IdeEvento.VerProc := cVersao.text;

                ideContri.TpInsc := tiCNPJ;
                ideContri.NrInsc := edtEmitCNPJ.Text;

                with ideEstab do begin
                     tpInscEstab := tiCNPJ;
                     nrInscEstab := edtEmitCNPJ.Text;
                     //if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_02 then ideEvtAdic := '12345678';

                     ideNat.Clear;
                     with ideNat.New do begin
                          natRend := '19001';

                          infoPgto.Clear;
                          with infoPgto.New do begin
                               dtFG      := cData.Date;
                               vlrLiq    := 1000;
                               vlrBaseIR := 1538.46;
                               vlrIR     := 0.00;

                               //if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_02 then dtEscrCont := IncMonth(Date,-1); // preencher quando natRend = 12052

                               descr := 'Descrição';
                               {
                               with infoProcRet.New do begin
                                    tpProcRet     := tpAdministrativo;
                                    nrProcRet     := '123456789012345678901';
                                    codSusp       := '12345678901234';
                                    vlrBaseSuspIR := 100;
                                    vlrNIR        := 10;
                                    vlrDepIR      := 20;
                               end;
                               }
                          end;
                     end;
                end;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf4080;
begin
      ACBrReinf1.Eventos.ReinfEventos.R4080.Clear;
      with ACBrReinf1.Eventos.ReinfEventos.R4080.New do begin
           with evtRetRec do begin
                Sequencial := 0;

                ideEvento.indRetif := trOriginal;

                if ChkRetificadora.Checked then ideEvento.indRetif := trRetificacao;
                if ideEvento.indRetif = trRetificacao then ideEvento.nrRecibo := edRecibo.Text;

                ideEvento.perApur := FormatDateBr(cData.Date,'yyyy-mm');
                IdeEvento.ProcEmi := peAplicEmpregador;
                IdeEvento.VerProc := cVersao.text;
                ideContri.TpInsc  := tiCNPJ;
                ideContri.NrInsc  := edtEmitCNPJ.Text;
                
                // Informação de preenchimento restrito, apenas nos casos em que a natureza jurídica do declarante
                // está desatualizada nas bases do CNPJ na Receita Federal, especialmente em situações de
                // alteração de natureza jurídica e enquanto o CNPJ não é atualizado.
                // Validação: Se informado, deve conter apenas números.
                // ideContri.infoComplContri.NatJur := '1234';

                with ideEstab do begin
                     tpInscEstab := tiCNPJ;
                     nrInscEstab := edtEmitCNPJ.Text;

                     with ideFont do begin
                          cnpjFont := '12345678000123';

                          ideRend.Clear;
                          with ideRend.New do begin
                               natRend := '20001'; // Tabela 01
                               observ := 'Observações';

                               infoRec.Clear;
                               with infoRec.New do begin
                                    dtFG      := IncMonth(Date,-1);
                                    vlrBruto  := 1000;
                                    vlrBaseIR := 1000;
                                    vlrIR     := 100;
                                    if ACBrReinf1.Configuracoes.Geral.VersaoDF >= v2_01_02 then observ := 'Observações';
                                    {
                                    with infoProcRet.New do begin
                                         tpProcRet     := tpAdministrativo;
                                         nrProcRet     := '123456789012345678901';
                                         codSusp       := '12345678901234';
                                         vlrBaseSuspIR := 100;
                                         vlrNIR        := 10;
                                         vlrDepIR      := 20;
                                    end;
                                    }
                               end;
                          end;
                     end;
                end;
           end;
      end;
end;

procedure TfrmACBrReinf.GerarReinf4099;
begin
     ACBrReinf1.Eventos.ReinfEventos.R4099.Clear;
     with ACBrReinf1.Eventos.ReinfEventos.R4099.New do begin
          with evtFech do begin
               Sequencial        := 0;
               ideEvento.perApur := FormatDateBr(cData.Date,'yyyy-mm');
               IdeEvento.ProcEmi := peAplicEmpregador;
               IdeEvento.VerProc := cVersao.text;
               ideContri.TpInsc  := tiCNPJ;
               ideContri.NrInsc  := edtEmitCNPJ.Text;
               with ideRespInf do begin
                    nmResp   := edContNome.Text;
                    cpfResp  := edContCPF.Text;
                    telefone := edContFone.Text;
                    email    := edContEmail.Text;
               end;
               with infoFech do begin
                    fechRet := tfrFechamento;
               end;
          end;
     end;
end;

procedure TfrmACBrReinf.GerarReinf9000;
begin
     ACBrReinf1.Eventos.ReinfEventos.R9000.Clear;
     with ACBrReinf1.Eventos.ReinfEventos.R9000.New do begin
          with evtExclusao do begin
               Sequencial        := 0;
               IdeEvento.ProcEmi := peAplicEmpregador;
               IdeEvento.VerProc := cVersao.text;
               ideContri.TpInsc  := tiCNPJ;
               ideContri.NrInsc  := edtEmitCNPJ.Text;

               with infoExclusao do begin
                    tpEvento := cbEvento.Items.Strings[cbEvento.ItemIndex];
                    nrRecEvt := Trim(edRecibo.Text);
                    if (cbEvento.Text = 'R-3010') then
                       perApur := FormatDateBr(StartOfTheMonth(cData.Date),'yyyy-mm-dd')
                    else
                       perApur := FormatDateBr(cData.Date,'yyyy-mm');
               end;
          end;
     end;
end;

function TfrmACBrReinf.GetTipoOperacao: TTipoOperacao;
begin
      case rdgOperacao.ItemIndex of
        1: Result := toAlteracao;
        2: Result := toExclusao;
      else
        Result := toInclusao;
      end;
end;

procedure TfrmACBrReinf.chk1000AClick(Sender: TObject);
begin
//      rdgOperacao.Visible     := (chk1000.Checked or chk1050.Checked or chk1070.Checked);
      {
      ChkRetificadora.Visible := (chk2010.Checked or chk2020.Checked or
                                  chk2030.Checked or chk2040.Checked or
                                  chk2050.Checked or chk2055.Checked or
                                  chk2060.Checked or chk2070.Checked or
                                  chk3010.Checked or chk4010.Checked or
                                  chk4020.Checked or chk4040.Checked);
      edRecibo.Visible := (chk2010.Checked or chk2020.Checked or chk2030.Checked or
                            chk2040.Checked or chk2050.Checked or chk2050.Checked or
                            chk2060.Checked or chk2070.Checked or chk3010.Checked or
                            chk4010.Checked or chk4020.Checked or chk4040.Checked or
                            chk9000.Checked);
      }
      ChkRetificadora.Visible := (chk2010.State = tssOn) or (chk2020.State = tssOn) or
                                 (chk2030.State = tssOn) or (chk2040.State = tssOn) or
                                 (chk2050.State = tssOn) or (chk2055.State = tssOn) or
                                 (chk2060.State = tssOn) or (chk2070.State = tssOn) or
                                 (chk3010.State = tssOn) or (chk4010.State = tssOn) or
                                 (chk4020.State = tssOn) or (chk4040.State = tssOn);

      edRecibo.Visible := (chk2010.State = tssOn) or (chk2020.State = tssOn) or
                          (chk2030.State = tssOn) or (chk2040.State = tssOn) or
                          (chk2050.State = tssOn) or (chk2055.State = tssOn) or
                          (chk2060.State = tssOn) or (chk2070.State = tssOn) or
                          (chk3010.State = tssOn) or (chk4010.State = tssOn) or
                          (chk4020.State = tssOn) or (chk4040.State = tssOn) or
                          (chk9000.State = tssOn);

      lblRecibo.Visible := edRecibo.Visible;
      cbEvento.Visible  := chk9000.State = tsson;
      lblEvento.Visible := cbEvento.Visible;
      rdgOperacaoClick(rgTipoAmb);
end;

procedure TfrmACBrReinf.rdgOperacaoClick(Sender: TObject);
begin
     //chk1000Limpar.Visible := ((chk1000.Checked) and (rgTipoAmb.ItemIndex = 1) and (rdgOperacao.ItemIndex = 1));
     chk1000Limpar.Visible := ((chk1000.State = tssOn) and (rgTipoAmb.ItemIndex = 1) and (rdgOperacao.ItemIndex = 1));
     if (not chk1000Limpar.Visible) then chk1000Limpar.State := tssOff;
end;

procedure TfrmACBrReinf.PegaNotasTer(Fornecedor: integer);
begin
      with tNotas do begin
           close;
           sql.clear;
           sql.add('select CNPJ = (select CNPJ from Fornecedores where Codigo = NotasTerceiros.Fornecedor)');
           sql.add('      ,Nota');
           sql.add('      ,Data_Emissao');
           sql.add('      ,Modelo');
           sql.add('      ,Serie');
           sql.add('      ,Servico = Classificacao_Servico');
           sql.add('      ,Valor_TotalNota');
           sql.add('      ,Valor_INSS = case when Codigo_Adicional01 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when Codigo_Adicional02 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when Codigo_Adicional03 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when Codigo_Adicional04 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when Codigo_Adicional05 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when Codigo_Adicional06 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('from  NotasTerceiros');
           sql.add('where Servico is not null');
           sql.add('  and year(Data_Entrada)  = :pAno');
           sql.add('  and month(Data_Entrada) = :pMes');
           sql.add('  and Fornecedor = :pForn');
           sql.add('  and (');
           sql.add('       Codigo_Adicional01 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) or');
           sql.add('       Codigo_Adicional02 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) or');
           sql.add('       Codigo_Adicional03 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) or');
           sql.add('       Codigo_Adicional04 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) or');
           sql.add('       Codigo_Adicional05 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) or');
           sql.add('       Codigo_Adicional06 = (select INSS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico)');
           sql.add('      )');
           sql.add('order by CNPJ, data_Emissao, Nota');
           ParamByName('pAno').asInteger  := yearof(cData.Date);
           ParamByName('pMes').asinteger  := monthof(cData.Date);
           ParamByName('pForn').asinteger := Fornecedor;
           //sql.SaveToFile('c:\Temp\REINF_2010_Notas_ServTomados.sql');
           Open;
      end;
end;

procedure TfrmACBrReinf.PegaNotasPro(pCli:integer);
begin
      with tNotas do begin
           close;
           sql.clear;
           sql.add('select CNPJ = (select CNPJ FROM Clientes cli WHERE cli.Codigo = nts.Cliente)');
           sql.add('      ,Nota = Numero');
           sql.add('      ,Data_Emissao');
           sql.add('      ,Modelo');
           sql.add('      ,Serie');
           sql.add('      ,Servico = Classificacao_Servico');
           sql.add('      ,Valor_TotalNota = Total_Nota');
           sql.add('      ,Valor_INSS = case when  Codigo_Adicional01 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when  Codigo_Adicional02 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when  Codigo_Adicional03 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when  Codigo_Adicional04 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when  Codigo_Adicional05 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when  Codigo_Adicional06 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('from  NotasServico nts');
           sql.add('where Cliente = :pCli');
           sql.add('  and year(Data_Emissao)  = :pAno');
           sql.add('  and month(Data_Emissao) = :pMes');
           sql.add('  and (');
           sql.add('       Codigo_Adicional01 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) or');
           sql.add('       Codigo_Adicional02 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) or');
           sql.add('       Codigo_Adicional03 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) or');
           sql.add('       Codigo_Adicional04 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) or');
           sql.add('       Codigo_Adicional05 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) or');
           sql.add('       Codigo_Adicional06 = (select INSS_Recuperar from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico)');
           sql.add('     )');
           sql.add('order by Data_Emissao');
           ParamByName('pAno').asInteger := yearof(cData.Date);
           ParamByName('pMes').asinteger := monthof(cData.Date);
           ParamByName('pCli').asinteger := pCli;
           //sql.SaveToFile('c:\Temp\REINF_2020_Notas_ServPrestados.sql');
           Open;
      end;
end;

procedure TfrmACBrReinf.PegaNotasImp(Fornecedor:integer);
begin
      with tNotas do begin
           close;
           sql.clear;
           sql.add('select CNPJ = (select CNPJ from Fornecedores where Codigo = NotasTerceiros.Fornecedor)');
           sql.add('      ,Nota');
           sql.add('      ,Data_Emissao');
           sql.add('      ,Modelo');
           sql.add('      ,Serie');
           sql.add('      ,Servico = Classificacao_Servico');
           sql.add('      ,Valor_TotalNota');
           sql.add('      ,Valor_CSLL = case when Codigo_Adicional01 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when Codigo_Adicional02 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when Codigo_Adicional03 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when Codigo_Adicional04 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when Codigo_Adicional05 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when Codigo_Adicional06 = (select CSLL_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('      ,Valor_IR   = case when Codigo_Adicional01 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when Codigo_Adicional02 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when Codigo_Adicional03 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when Codigo_Adicional04 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when Codigo_Adicional05 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when Codigo_Adicional06 = (select IR_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('      ,Valor_PIS  = case when Codigo_Adicional01 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                         when Codigo_Adicional02 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                         when Codigo_Adicional03 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                         when Codigo_Adicional04 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                         when Codigo_Adicional05 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                         when Codigo_Adicional06 = (select PIS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                    end');
           sql.add('      ,Valor_COFINS = case when Codigo_Adicional01 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional01');
           sql.add('                           when Codigo_Adicional02 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional02');
           sql.add('                           when Codigo_Adicional03 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional03');
           sql.add('                           when Codigo_Adicional04 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional04');
           sql.add('                           when Codigo_Adicional05 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional05');
           sql.add('                           when Codigo_Adicional06 = (select COFINS_Recolher from Cybersoft_Cadastros.dbo.Servicos where Codigo = Servico) then Valor_Adicional06');
           sql.add('                      end');
           sql.add('into #tmp');
           sql.add('from  NotasTerceiros');
           sql.add('where Servico is not null');
           sql.add('and   year(Data_Entrada)  = :pAno');
           sql.add('and   month(Data_Entrada) = :pMes');
           sql.add('and   Fornecedor = :pForn');
           sql.add('Select * from #tmp');
           sql.add('Where isnull(Valor_CSLL, 0)+isnull(valor_IR, 0)+isnull(Valor_PIS, 0)+isnull(Valor_COFINS,0) > 0');
           sql.add('order by CNPJ, data_Emissao, Nota');
           sql.add('drop table #tmp           ');
           ParamByName('pAno').asInteger  := yearof(cData.Date);
           ParamByName('pMes').asinteger  := monthof(cData.Date);
           ParamByName('pForn').asinteger := Fornecedor;
           //sql.SaveToFile('c:\Temp\REINF_2010_Notas_ServTomados.sql');
           Open;
      end;
end;

function TfrmACBrReinf.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
begin
  if Expressao then
     Result := ParteTRUE
  else
     Result := ParteFALSE;
end;


end.
