unit frmPedido_CTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, RxDBComb, Vcl.ComCtrls,
  DB, DBAccess, MSAccess, Buttons, DBGrids, RXDBCtrl, OleServer, ComObj, Funcoes, Dateutils, ShellApi, Mask, Grids, MemDS, system.UITypes, RxToolEdit;

type
  TPedido_CTE = class(TForm)
    Panel1: TPanel;
    Navega: TDBNavigator;
    bVisualizar: TButton;
    bPesquisar: TButton;
    bSair: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText6: TStaticText;
    cNatureza: TDBLookupComboBox;
    lNome: TStaticText;
    cRemetente: TDBLookupComboBox;
    StaticText8: TStaticText;
    cDestinatario: TDBLookupComboBox;
    cProcesso: TDBLookupComboBox;
    StaticText11: TStaticText;
    cPedido: TDBEdit;
    cCodigoNatureza: TDBEdit;
    StaticText7: TStaticText;
    cTipoServico: TRxDBComboBox;
    StaticText3: TStaticText;
    cExpedidor: TDBLookupComboBox;
    StaticText4: TStaticText;
    cRecebedor: TDBLookupComboBox;
    StaticText19: TStaticText;
    RxDBComboBox1: TRxDBComboBox;
    StaticText20: TStaticText;
    RxDBComboBox2: TRxDBComboBox;
    Panel3: TPanel;
    StaticText9: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    DBEdit3: TDBEdit;
    StaticText15: TStaticText;
    StaticText23: TStaticText;
    StaticText25: TStaticText;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBMemo1: TDBMemo;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image1: TImage;
    tPedido: TMSQuery;
    StaticText2: TStaticText;
    cTomador: TRxDBComboBox;
    bPesqRem: TSpeedButton;
    bPesqDest: TSpeedButton;
    bPesqExp: TSpeedButton;
    bPesqRec: TSpeedButton;
    bPesqNat: TSpeedButton;
    TabSheet3: TTabSheet;
    RxDBGrid1: TRxDBGrid;
    TabSheet4: TTabSheet;
    cXML: TMemo;
    TabSheet5: TTabSheet;
    Panel4: TPanel;
    StaticText5: TStaticText;
    StaticText24: TStaticText;
    DBEdit11: TDBEdit;
    cPassagem: TDBMemo;
    StaticText10: TStaticText;
    DBEdit12: TDBEdit;
    StaticText21: TStaticText;
    DBEdit13: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    StaticText16: TStaticText;
    DBEdit6: TDBEdit;
    StaticText17: TStaticText;
    RxDBComboBox3: TRxDBComboBox;
    DBDateEdit2: TDBDateEdit;
    StaticText22: TStaticText;
    StaticText26: TStaticText;
    DBEdit7: TDBEdit;
    StaticText27: TStaticText;
    RxDBComboBox5: TRxDBComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    StaticText28: TStaticText;
    DBEdit4: TDBEdit;
    StaticText29: TStaticText;
    DBEdit5: TDBEdit;
    StaticText34: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit16: TDBEdit;
    StaticText35: TStaticText;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    StaticText36: TStaticText;
    DBEdit19: TDBEdit;
    StaticText32: TStaticText;
    StaticText30: TStaticText;
    bComp: TSpeedButton;
    bExcluiComp: TSpeedButton;
    GradeComp: TRxDBGrid;
    StaticText18: TStaticText;
    TabSheet6: TTabSheet;
    GradePedido: TRxDBGrid;
    Panel5: TPanel;
    bRemTodas: TButton;
    bAddTodas: TButton;
    GradeNotas: TRxDBGrid;
    bRemNota: TButton;
    bAddNota: TButton;
    cUnidade: TRxDBComboBox;
    StaticText31: TStaticText;
    StaticText33: TStaticText;
    DBEdit2: TDBEdit;
    StaticText37: TStaticText;
    DBEdit8: TDBEdit;
    StaticText38: TStaticText;
    DBEdit10: TDBEdit;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText41: TStaticText;
    DBMemo2: TDBMemo;
    DBLookupComboBox3: TDBLookupComboBox;
    TabSheet7: TTabSheet;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    cMotorista: TRxDBComboBox;
    tVeiculo: TMSQuery;
    cVeiculoPlaca: TRxDBComboBox;
    cVeiculoDesc: TRxDBComboBox;
    cCarreta1Placa: TRxDBComboBox;
    cCarreta1Desc: TRxDBComboBox;
    StaticText42: TStaticText;
    StaticText43: TStaticText;
    cCarreta2Placa: TRxDBComboBox;
    cCarreta2Desc: TRxDBComboBox;
    StaticText44: TStaticText;
    StaticText50: TStaticText;
    cCarreta3Placa: TRxDBComboBox;
    cCarreta3Desc: TRxDBComboBox;
    StaticText51: TStaticText;
    cVeicPropr: TRxDBComboBox;
    StaticText52: TStaticText;
    DBDateEdit3: TDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesqRemClick(Sender: TObject);
    procedure bPesqDestClick(Sender: TObject);
    procedure bPesqExpClick(Sender: TObject);
    procedure bPesqRecClick(Sender: TObject);
    procedure bPesqTomClick(Sender: TObject);
    procedure bPesqNatClick(Sender: TObject);
    procedure bVisualizarClick(Sender: TObject);
    procedure cPedidoChange(Sender: TObject);
    procedure bCompClick(Sender: TObject);
    procedure bExcluiCompClick(Sender: TObject);
    procedure cDestinatarioExit(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBEdit17Change(Sender: TObject);
    procedure bAddTodasClick(Sender: TObject);
    procedure bRemTodasClick(Sender: TObject);
    procedure bAddNotaClick(Sender: TObject);
    procedure bRemNotaClick(Sender: TObject);
    procedure PegaMotorista;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_CTE: TPedido_CTE;

implementation

uses frmDados, frmMenu_Principal, frmPesquisaGerais, frmPedido_CTEComp,
  frmDMFiscal;

{$R *.dfm}

procedure TPedido_CTE.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra_Roxo.bmp') then Image1.Picture.LoadFromFile('fundo_barra_Roxo.bmp');
end;

procedure TPedido_CTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Pedido_CTE.Release;
      Pedido_CTE := nil;
end;

procedure TPedido_CTE.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_CTE.FormShow(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           PedidoCTE.SQL.Clear;
           PedidoCTE.SQL.Add('SELECT * FROM PedidoCTE ORDER BY Pedido');
           PedidoCTE.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Transportadora = 1');
           Empresas.Open;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza WHERE Ativo = 1 and Servico = 1 ORDER BY Descricao_NF');
           Natureza.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE Ativo = 1 ORDER BY Nome');
           Clientes.Open;

           ProcessosDOC.Close;
           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT *');
           ProcessosDOC.SQL.Add('FROM   ProcessosDocumentos');
           ProcessosDOC.SQL.Add('ORDER  BY Tipo, Processo');
           ProcessosDOC.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios ORDER BY Nome, UF');
           Municipios.Open;

           CSTTabelaB.SQL.Clear;
           CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY CAST(Codigo AS int)');
           CSTTabelaB.Open;

           ICMS.SQL.Clear;
           ICMS.SQL.Add('SELECT * FROM ICMS');
           ICMS.Open;

           PegaMotorista;
      end;
end;

procedure TPedido_CTE.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i:Integer;
begin
      Screen.Cursor       := crSQLWait;
      bSair.Enabled       := true;
      bPesquisar.Enabled  := true;
      bVisualizar.Enabled := true;
      Panel2.Enabled      := false;

      with Dados do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;

              if Button = nbInsert then begin
                 ICMS.Locate('UF', Empresas.FieldByName('Estado').AsString, [loCaseInsensitive]);
                 PedidoCTEAliquota_ICMS.Value     := ICMSICMS_CTe.Value;
                 PedidoCTEIndicador_Tomador.Value := 0;
                 PedidoCTETipo_Servico.Value      := 0;
                 PedidoCTEModal.Value             := 1;
                 PedidoCTEFinalidade.Value        := 0;

                 //PedidoLocalPrest_InicioMun.Value :=

                 if Empresas.RecordCount = 1 then begin
                    PedidoCTEEmissor.Value := Empresas.FieldByName('Codigo').AsInteger;
                 end;

                 tPedido.SQL.Clear;
                 tpedido.SQL.Add('SELECT Codigo, CNPJ, Nome FROM Clientes WHERE CNPJ = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa)+')');
                 tPedido.open;
                 PedidoCTEEmpresa.Value   := Menu_Principal.mEmpresa;
                 PedidoCTERemetente.Value := tPedido.FieldByName('Codigo').AsInteger;
              end;

              bSair.Enabled       := false;
              bPesquisar.Enabled  := false;
              bVisualizar.Enabled := false;
              Panel2.Enabled      := True;
              PageControl1.ActivePageIndex := 1;
              cProcesso.SetFocus;
          end;
          if Button = nbpost then begin
             PegaMotorista;
          end;
      end;
      Screen.Cursor := crDefault;
end;

procedure TPedido_CTE.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
var
   mCli:integer;
begin
      mCli := 0;
      with Dados do begin
           if Button = nbPost then begin
              if PedidoCTE.State = dsInsert then begin
                 tPedido.SQL.Clear;
                 tPedido.SQL.Add('SELECT ISNULL(MAX(Pedido), 0)+1 AS pedido FROM PedidoCTE');
                 tPedido.Open;

                 PedidoCTEPedido.Value  := tPedido.FieldByName('Pedido').AsInteger;
                 tPedido.Close;
              end;

              PedidoCTEData.Value   := Now;
              PedidoCTEModelo.Value := Dados.EmpresasCTE_Modelo.Value;
              PedidoCTESerie.Value  := Dados.EmpresasCTE_Serie.Value;

              if cTomador.ItemIndex = 0 then mCli := PedidoCTE.FieldByName('Remetente').AsInteger;
              if cTomador.ItemIndex = 1 then mCli := PedidoCTE.FieldByName('Expedidor').AsInteger;
              if cTomador.ItemIndex = 2 then mCli := PedidoCTE.FieldByName('Recebedor').AsInteger;
              if cTomador.ItemIndex = 3 then mCli := PedidoCTE.FieldByName('Destinatario').AsInteger;
              if cTomador.ItemIndex = 4 then mCli := PedidoCTE.FieldByName('Destinatario').AsInteger;

              Clientes.Locate('Codigo', mCli, [loCaseInsensitive]);
              ICMS.Locate('UF', Clientes.FieldByName('Estado').AsString, [loCaseInsensitive]);
              PedidoCTEAliquota_ICMSOutro.Value := 0;
              if EmpresasEstado.Value <> ClientesEstado.Value then begin
                 PedidoCTEAliquota_ICMSOutro.Value := ICMSICMS_CTe.Value;
              end;

              case cTomador.ItemIndex of
                   0: PedidoCTE.FieldByName('Tomador').Value := PedidoCTE.FieldByName('Remetente').Value;
                   1: PedidoCTE.FieldByName('Tomador').Value := PedidoCTE.FieldByName('Expedidor').Value;
                   2: PedidoCTE.FieldByName('Tomador').Value := PedidoCTE.FieldByName('Recebedor').Value;
                   3: PedidoCTE.FieldByName('Tomador').Value := PedidoCTE.FieldByName('Destinatario').Value;
                   4: PedidoCTE.FieldByName('Tomador').Value := PedidoCTE.FieldByName('Destinatario').Value;
              end;
           end;

           if Button = nbDelete then begin
              tPedido.SQL.Clear;
              tPedido.SQL.Add('UPDATE NotasFiscais SET CTE = NULL WHERE NFe_cNF IN(SELECT Chave FROM PedidoCTENotas WHERE Pedido = :pPed)');
              tPedido.SQL.Add('DELETE FROM PedidoCTEComp  WHERE Pedido = :pPed');
              tPedido.SQL.Add('DELETE FROM PedidoCTENotas WHERE Pedido = :pPed');
              tPedido.ParamByName('pPed').AsInteger := PedidoCTEPedido.AsInteger;
              tPedido.Execute;
           end;
      end;
end;

procedure TPedido_CTE.bPesqRemClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Clientes';
      PesquisaGerais.mCampo  := 'Remetente';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := Dados.PedidoCTE;
      PesquisaGerais.Showmodal;
end;

procedure TPedido_CTE.bPesqDestClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Clientes';
      PesquisaGerais.mCampo  := 'Destinatario';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := Dados.PedidoCTE;
      PesquisaGerais.Showmodal;
end;

procedure TPedido_CTE.bPesqExpClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Clientes';
      PesquisaGerais.mCampo  := 'Expedidor';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := Dados.PedidoCTE;
      PesquisaGerais.Showmodal;
end;

procedure TPedido_CTE.bPesqRecClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Clientes';
      PesquisaGerais.mCampo  := 'Recebedor';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := Dados.PedidoCTE;
      PesquisaGerais.Showmodal;
end;

procedure TPedido_CTE.bPesqTomClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Clientes';
      PesquisaGerais.mCampo  := 'Tomador';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := Dados.PedidoCTE;
      PesquisaGerais.Showmodal;
end;

procedure TPedido_CTE.bPesqNatClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Natureza';
      PesquisaGerais.mCampo  := 'CFOP';
      PesquisaGerais.mCampo2 := 'Descricao_NF';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := Dados.PedidoCTE;
      PesquisaGerais.Showmodal;
end;

procedure TPedido_CTE.bVisualizarClick(Sender: TObject);
var
   Util:OleVariant;

   mCertif
  ,mcCT
  ,mcDV
  ,mChaveCTE
  ,mCodSeg
  ,mTomador
  ,mident
  ,mEntrega
  ,mCompl
  ,mMsgRes
  ,mPassag
  ,mFluxo
  ,mEmitente
  ,mRemetente
  ,mExpedidor
  ,mRecebedor
  ,mDestinatario
  ,mValServico
  ,mComponentes
  ,mICMS
  ,mICMSUFFim
  ,mInfCarga
  ,mInfCTe
  ,mCarga
  ,mInfQ
  ,mInfNFe
  ,mModalRod
  ,mXML: widestring;

  i
  ,mNumCTE:integer;

  mDentroFora:string;
begin
      Util := CreateOleObject('CTe_Util.util');
      cXML.Clear;

      with Dados do begin
           tPedido.SQL.Clear;
           tPedido.SQL.Add('SELECT');
           tPedido.SQL.Add('    ------------------------------------------------< DADOS DO EMITENTE >-----------------------------------------------');
           tPedido.SQL.Add('	 Empresa');
           tPedido.SQL.Add('	,Empresa_Nome          = (SELECT Razao_Social     FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_NomeFantasia  = (SELECT Nome_Fantasia    FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_Rua           = (SELECT Rua              FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_RuaNumero     = (SELECT Rua_Numero       FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_Bairro        = (SELECT Bairro           FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_Compl         = (SELECT Complemento      FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_CEP           = (SELECT CEP              FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_Telefone      = (SELECT Telefone1        FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_MunicipioCod  = (SELECT Municipio_Codigo FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_MunicipioNome = (SELECT Nome             FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa))');
           tPedido.SQL.Add('	,Empresa_Estado        = (SELECT Estado           FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_EstadoNum     = (SELECT Numero           FROM Cybersoft_Cadastros.dbo.Estados WHERE Codigo = (SELECT Estado FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa))');
           tPedido.SQL.Add('	,Empresa_CNPJ          = (SELECT CNPJ             FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_IE            = (SELECT IE               FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_RNTRC         = (SELECT RNTRC            FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Empresa_IEST          = '''' ');
           tPedido.SQL.Add('	,CTE_Numero            = (SELECT ISNULL(CTE_Numero, 0)+1 FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,CTE_Layout            = (SELECT CTE_Layout              FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Ambiente              = (SELECT Ambiente_CTe            FROM Cybersoft_Cadastros.dbo.Empresas WHERE Codigo = Empresa)');
           tPedido.SQL.Add('	,Processo');
           tPedido.SQL.Add('	,Pedido');
           tPedido.SQL.Add('	,Data');
           tPedido.SQL.Add('	,Modelo');
           tPedido.SQL.Add('	,Serie');
           tPedido.SQL.Add('	,Globalizado');
           tPedido.SQL.Add('	,CFOP');
           tPedido.SQL.Add('	,CFOP_Desc = (SELECT Descricao_NF FROM Cybersoft_Cadastros.dbo.Natureza WHERE Codigo = CFOP)');
           tPedido.SQL.Add('	,Modal');
           tPedido.SQL.Add('	,Tipo_Servico');
           tPedido.SQL.Add('	,Finalidade');
           tPedido.SQL.Add('	,Forma');
           tPedido.SQL.Add('	,CTe_Referenciado');
           tPedido.SQL.Add('	,LocalEmi_UF');
           tPedido.SQL.Add('	,LocalEmi_Mun');
           tPedido.SQL.Add('	,LocalEmi_MunNome          = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = LocalEmi_Mun)');
           tPedido.SQL.Add('	,LocalPrest_InicioUF       = (SELECT UF   FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = LocalPrest_InicioMun)');
           tPedido.SQL.Add('	,LocalPrest_InicioMun');
           tPedido.SQL.Add('	,LocalPrest_InicioMunNome  = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = LocalPrest_InicioMun)');
           tPedido.SQL.Add('	,LocalPrest_TerminoUF      = (SELECT UF   FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = LocalPrest_TerminoMun)');
           tPedido.SQL.Add('	,LocalPrest_TerminoMun');
           tPedido.SQL.Add('	,LocalPrest_TerminoMunNome = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = LocalPrest_TerminoMun)');

           tPedido.SQL.Add('    ------------------------------------------------< DADOS DO TOMADOR DE SERVIÇO >-----------------------------------------------');
           tPedido.SQL.Add('	,Indicador_Tomador');
           tPedido.SQL.Add('	,Papel_Tomador');
           tPedido.SQL.Add('	,Tomador');
           tPedido.SQL.Add('	,Tomador_Nome      = (SELECT Nome               FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_NomeFanta = (SELECT Nome_Fantasia      FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_CNPJ      = (SELECT CNPJ               FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_CPF       = (SELECT CPF                FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_IE        = (SELECT Inscricao_Estadual FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_Fone1     = (SELECT Telefone1          FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_Rua       = (SELECT Rua                FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_RuaNumero = (SELECT Rua_Numero         FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_Bairro    = (SELECT Bairro             FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_Compl     = (SELECT Complemento        FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_MunCod    = (SELECT Municipio_Codigo   FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_MunNome   = (SELECT Nome               FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Clientes WHERE Codigo = Tomador))');
           tPedido.SQL.Add('	,Tomador_CEP       = (SELECT CEP                FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_Estado    = (SELECT Estado             FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_PaisCod   = (SELECT Pais               FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_PaisNome  = (SELECT Nome               FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = (SELECT Pais FROM Clientes WHERE Codigo = Tomador))');
           tPedido.SQL.Add('	,Tomador_Email     = (SELECT Email              FROM Clientes WHERE Codigo = Tomador)');
           tPedido.SQL.Add('	,Tomador_IndIE     = (SELECT Indicador_IE       FROM Clientes WHERE Codigo = Tomador)');

           tPedido.SQL.Add('    -----------------------------------------------------< DADOS DO REMETENTE >---------------------------------------------------');
           tPedido.SQL.Add('	,Indicador_Remetente');
           tPedido.SQL.Add('	,Remetente');
           tPedido.SQL.Add('	,Remetente_Nome      = (SELECT Nome               FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_NomeFanta = (SELECT Nome_Fantasia      FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_CNPJ      = (SELECT CNPJ               FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_CPF       = (SELECT CPF                FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_IE        = (SELECT Inscricao_Estadual FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_Fone1     = (SELECT Telefone1          FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_Rua       = (SELECT Rua                FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_RuaNumero = (SELECT Rua_Numero         FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_Bairro    = (SELECT Bairro             FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_Compl     = (SELECT Complemento        FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_MunCod    = (SELECT Municipio_Codigo   FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_MunNome   = (SELECT Nome               FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Clientes WHERE Codigo = Remetente))');
           tPedido.SQL.Add('	,Remetente_CEP       = (SELECT CEP                FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_Estado    = (SELECT Estado             FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_PaisCod   = (SELECT Pais               FROM Clientes WHERE Codigo = Remetente)');
           tPedido.SQL.Add('	,Remetente_PaisNome  = (SELECT Nome               FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = (SELECT Pais FROM Clientes WHERE Codigo = Remetente))');
           tPedido.SQL.Add('	,Remetente_Email     = (SELECT Email              FROM Clientes WHERE Codigo = Remetente)');

           tPedido.SQL.Add('    -----------------------------------------------------< DADOS DO EXPEDIDOR >---------------------------------------------------');
           tPedido.SQL.Add('	,Expedidor           = ISNULL(Expedidor, 0)');
           tPedido.SQL.Add('	,Expedidor_Nome      = (SELECT Nome               FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_CNPJ      = (SELECT CNPJ               FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_CPF       = (SELECT CPF                FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_IE        = (SELECT Inscricao_Estadual FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_Fone1     = (SELECT Telefone1          FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_Rua       = (SELECT Rua                FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_RuaNumero = (SELECT Rua_Numero         FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_Bairro    = (SELECT Bairro             FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_Compl     = (SELECT Complemento        FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_MunCod    = (SELECT Municipio_Codigo   FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_MunNome   = (SELECT Nome               FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Clientes WHERE Codigo = Expedidor))');
           tPedido.SQL.Add('	,Expedidor_CEP       = (SELECT CEP                FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_Estado    = (SELECT Estado             FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_PaisCod   = (SELECT Pais               FROM Clientes WHERE Codigo = Expedidor)');
           tPedido.SQL.Add('	,Expedidor_PaisNome  = (SELECT Nome               FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = (SELECT Pais FROM Clientes WHERE Codigo = Expedidor))');
           tPedido.SQL.Add('	,Expedidor_Email     = (SELECT Email              FROM Clientes WHERE Codigo = Expedidor)');

           tPedido.SQL.Add('    -----------------------------------------------------< DADOS DO RECEBEDOR >---------------------------------------------------');
           tPedido.SQL.Add('	,Recebedor_Retira');
           tPedido.SQL.Add('	,Detalhe_Retirada');
           tPedido.SQL.Add('	,Recebedor           = ISNULL(Recebedor, 0)');
           tPedido.SQL.Add('	,Recebedor_Nome      = (SELECT Nome               FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_CNPJ      = (SELECT CNPJ               FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_CPF       = (SELECT CPF                FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_IE        = (SELECT Inscricao_Estadual FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_Fone1     = (SELECT Telefone1          FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_Rua       = (SELECT Rua                FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_RuaNumero = (SELECT Rua_Numero         FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_Bairro    = (SELECT Bairro             FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_Compl     = (SELECT Complemento        FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_MunCod    = (SELECT Municipio_Codigo   FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_MunNome   = (SELECT Nome               FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Clientes WHERE Codigo = Recebedor))');
           tPedido.SQL.Add('	,Recebedor_CEP       = (SELECT CEP                FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_Estado    = (SELECT Estado             FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_PaisCod   = (SELECT Pais               FROM Clientes WHERE Codigo = Recebedor)');
           tPedido.SQL.Add('	,Recebedor_PaisNome  = (SELECT Nome               FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = (SELECT Pais FROM Clientes WHERE Codigo = Recebedor))');
           tPedido.SQL.Add('	,Recebedor_Email     = (SELECT Email              FROM Clientes WHERE Codigo = Recebedor)');

           tPedido.SQL.Add('    ---------------------------------------------------< DADOS DO DESTINATARIO >---------------------------------------------------');
           tPedido.SQL.Add('	,Indicador_Destinatario');
           tPedido.SQL.Add('	,Destinatario');
           tPedido.SQL.Add('	,Destinatario_Nome      = (SELECT Nome               FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_CNPJ      = (SELECT CNPJ               FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_CPF       = (SELECT CPF                FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_IE        = (SELECT Inscricao_Estadual FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_Fone1     = (SELECT Telefone1          FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_SUFRAMA   = (SELECT SUFRAMA            FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_Rua       = (SELECT Rua                FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_RuaNumero = (SELECT Rua_Numero         FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_Bairro    = (SELECT Bairro             FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_Compl     = (SELECT Complemento        FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_MunCod    = (SELECT Municipio_Codigo   FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_MunNome   = (SELECT Nome               FROM Cybersoft_Cadastros.dbo.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Clientes WHERE Codigo = Destinatario))');
           tPedido.SQL.Add('	,Destinatario_CEP       = (SELECT CEP                FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_Estado    = (SELECT Estado             FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_PaisCod   = (SELECT Pais               FROM Clientes WHERE Codigo = Destinatario)');
           tPedido.SQL.Add('	,Destinatario_PaisNome  = (SELECT Nome               FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = (SELECT Pais FROM Clientes WHERE Codigo = Destinatario))');
           tPedido.SQL.Add('	,Destinatario_Email     = (SELECT Email              FROM Clientes WHERE Codigo = Destinatario)');

           tPedido.SQL.Add('	,Valor_Servico');
           tPedido.SQL.Add('	,Valor_Receber');
           tPedido.SQL.Add('	,Valor_Tributos');
           tPedido.SQL.Add('	,Dados_Retirada');
           tPedido.SQL.Add('	,CST_ICMS');
           tPedido.SQL.Add('	,Reducao_BCICMS');
           tPedido.SQL.Add('	,Valor_BCICMS');
           tPedido.SQL.Add('	,Aliquota_ICMS');
           tPedido.SQL.Add('	,Valor_ICMS');
           tPedido.SQL.Add('	,Valor_Credito');
           tPedido.SQL.Add('	,Valor_BCICMSRetido');
           tPedido.SQL.Add('	,Aliquota_ICMSRetido');
           tPedido.SQL.Add('	,Valor_ICMSRetido');
           tPedido.SQL.Add('	,Inf_Complementares');
           tPedido.SQL.Add('	,Valor_BCICMSTerm');
           tPedido.SQL.Add('	,Aliquota_ICMSTerm');
           tPedido.SQL.Add('	,Aliquota_ICMSInter');
           tPedido.SQL.Add('	,Partilha_ICMSUFTermino');
           tPedido.SQL.Add('	,Valor_ICMSPartilhaIni');
           tPedido.SQL.Add('	,Valor_ICMSPartilhaTer');
           tPedido.SQL.Add('	,FCP_UFTermino');
           tPedido.SQL.Add('	,FCP_ValorUFTermino');
           tPedido.SQL.Add('	,Caracter_Transporte');
           tPedido.SQL.Add('	,Caracter_Servico');
           tPedido.SQL.Add('	,Funcionario_Emissor');
           tPedido.SQL.Add('	,Municipio_OrigemCalculo');
           tPedido.SQL.Add('	,Municipio_DestinoCalculo');
           tPedido.SQL.Add('	,Programacao_Entrega');
           tPedido.SQL.Add('	,Previsao_Data');
           tPedido.SQL.Add('	,Previsao_DataFim');
           tPedido.SQL.Add('	,Programacao_EntregaHora');
           tPedido.SQL.Add('	,Previsao_Hora');
           tPedido.SQL.Add('	,Previsao_HoraFim');
           tPedido.SQL.Add('	,Fluxo_Origem');
           tPedido.SQL.Add('	,Fluxo_Destino');
           tPedido.SQL.Add('	,Fluxo_Rota');
           tPedido.SQL.Add('	,Fluxo_Passagem');
           tPedido.SQL.Add('	,Total_Carga  = (SELECT SUM(Total_Nota)   FROM PedidoCTENotas WHERE Pedido = :pPedido)');
           tPedido.SQL.Add('	,Volumes      = (SELECT SUM(Volumes)      FROM PedidoCTENotas WHERE Pedido = :pPedido)');
           tPedido.SQL.Add('	,Peso_Liquido = (SELECT SUM(Peso_Liquido) FROM PedidoCTENotas WHERE Pedido = :pPedido)');
           tPedido.SQL.Add('	,Peso_Bruto   = (SELECT SUM(Peso_Bruto)   FROM PedidoCTENotas WHERE Pedido = :pPedido)');
           tPedido.SQL.Add('	,Unidade_Medida');
           tPedido.SQL.Add('	,Observacao');
           tPedido.SQL.Add('	,Carga_OutrasCaract');
           tPedido.SQL.Add('	,Tipo_Medida');
           tPedido.SQL.Add('	,Produto_Predominante');
           tPedido.SQL.Add('FROM PedidoCTE');
           tPedido.SQL.Add('WHERE Pedido = :pPedido');
           tPedido.ParamByName('pPedido').AsInteger := PedidoCTE.FieldByName('Pedido').AsInteger;
           //tPedido.SQL.SaveToFile('c:\temp\Pedido_CTe_XML.sql');
           tPedido.Open;

           PedidoCTEComp.SQL.Clear;
           PedidoCTEComp.SQL.Add('SELECT * FROM PedidoCTEComp WHERE Pedido = :pPed ORDER BY Codigo');
           PedidoCTEComp.ParamByName('pPed').AsInteger := tPedido.FieldByName('Pedido').AsInteger;
           PedidoCTEComp.Open;

           PedidoCTENotas.SQL.Clear;
           PedidoCTENotas.SQL.Add('SELECT * FROM PedidoCTENotas WHERE Pedido = :pPed ORDER BY Chave');
           PedidoCTENotas.ParamByName('pPed').AsInteger := tPedido.FieldByName('Pedido').AsInteger;
           PedidoCTENotas.Open;

           mCodSeg     := 'Cybersoft_'+Trim(tPedido.FieldByName('Empresa_Nome').AsString);
           mDentroFora := 'D';
           mNumCTE     := tPedido.FieldByName('CTE_Numero').AsInteger;

           if tPedido.FieldByName('Indicador_Tomador').AsInteger = 0 then begin
              if tPedido.FieldByName('Empresa_Estado').AsString <> tPedido.FieldByName('Remetente_Estado').AsString then mDentroFora := 'F';
           end;
           if tPedido.FieldByName('Indicador_Tomador').AsInteger = 1 then begin
              if tPedido.FieldByName('Empresa_Estado').AsString <> tPedido.FieldByName('Expedidor_Estado').AsString then mDentroFora := 'F';
           end;
           if tPedido.FieldByName('Indicador_Tomador').AsInteger = 2 then begin
              if tPedido.FieldByName('Empresa_Estado').AsString <> tPedido.FieldByName('Recebedor_Estado').AsString then mDentroFora := 'F';
           end;
           if tPedido.FieldByName('Indicador_Tomador').AsInteger = 3 then begin
              if tPedido.FieldByName('Empresa_Estado').AsString <> tPedido.FieldByName('Destinatario_Estado').AsString then mDentroFora := 'F';
           end;
           if tPedido.FieldByName('Indicador_Tomador').AsInteger = 4 then begin
              if tPedido.FieldByName('Empresa_Estado').AsString <> tPedido.FieldByName('Destinatario_Estado').AsString then mDentroFora := 'F';
           end;

           Util.CriaChaveCTeNovo(tPedido.FieldByName('Empresa_EstadoNum').AsString
                                ,Copy(inttostr(YearOf(Date)), 3, 2)
                                ,Inttostr(MonthOf(Date))
                                ,tPedido.FieldByName('Empresa_CNPJ').AsString
                                ,tPedido.FieldByName('Modelo').AsString
                                ,tPedido.FieldByName('Serie').AsString
                                ,tPedido.FieldByName('CTE_Numero').AsString
                                ,'1'                                                // Tipo de Emissão.
                                ,mCodSeg
                                ,mMsgRes
                                ,mcCT                                               // Retorna o Código Numérico que compõe a Chave de Acesso, deve ser informado na tag cCT.
                                ,mcDV                                               // Retorna o DV da Chave de Acesso, deve ser informado na tag cDV.
                                ,mChaveCTe                                          // Retorna a chave de Acesso do CT-e, deve ser informado no atributo Id da tag infCTe, precedida da literal CTe.
                                );
                                        
           mEmitente := '';
           mEmitente := util.emitente300(tPedido.FieldByName('Empresa_CNPJ').AsString
                                        ,tPedido.FieldByName('Empresa_IE').AsString
                                        ,tPedido.FieldByName('Empresa_IEST').AsString
                                        ,RemoveCaracterXML(tPedido.FieldByName('Empresa_Nome').AsString)
                                        ,RemoveCaracterXML(tPedido.FieldByName('Empresa_NomeFantasia').AsString)
                                        ,RemoveCaracterXML(tPedido.FieldByName('Empresa_Rua').AsString)
                                        ,tPedido.FieldByName('Empresa_RuaNumero').AsString
                                        ,tPedido.FieldByName('Empresa_Compl').AsString
                                        ,RemoveCaracterXML(tPedido.FieldByName('Empresa_Bairro').AsString)
                                        ,tPedido.FieldByName('Empresa_MunicipioCod').AsString
                                        ,RemoveCaracterXML(tPedido.FieldByName('Empresa_MunicipioNome').AsString)
                                        ,tPedido.FieldByName('Empresa_CEP').AsString
                                        ,tPedido.FieldByName('Empresa_Estado').AsString
                                        ,tPedido.FieldByName('Empresa_Telefone').AsString
                                        );

           mTomador := '';
           if tPedido.FieldByName('Tomador').AsInteger > 0 then begin
              mTomador := util.tomador300(tPedido.FieldByName('Indicador_Tomador').AsInteger
                                         ,tPedido.FieldByName('Tomador_CNPJ').AsString
                                         ,tPedido.FieldByName('Tomador_CPF').AsString
                                         ,tPedido.FieldByName('Tomador_IE').AsString
                                         ,RemoveCaracterXML(tPedido.FieldByName('Tomador_Nome').AsString)
                                         ,RemoveCaracterXML(tPedido.FieldByName('Tomador_NomeFanta').AsString)
                                         ,tPedido.FieldByName('Tomador_Fone1').AsString
                                         ,tPedido.FieldByName('Tomador_Rua').AsString
                                         ,tPedido.FieldByName('Tomador_RuaNumero').AsString
                                         ,tPedido.FieldByName('Tomador_Compl').AsString
                                         ,RemoveCaracterXML(tPedido.FieldByName('Tomador_Bairro').AsString)
                                         ,tPedido.FieldByName('Tomador_MunCod').AsString
                                         ,RemoveCaracterXML(tPedido.FieldByName('Tomador_MunNome').AsString)
                                         ,tPedido.FieldByName('Tomador_CEP').AsString
                                         ,tPedido.FieldByName('Tomador_Estado').AsString
                                         ,tPedido.FieldByName('Tomador_PaisCod').AsString
                                         ,RemoveCaracterXML(tPedido.FieldByName('Tomador_PaisNome').AsString)
                                         ,tPedido.FieldByName('Tomador_Email').AsString
                                         );
           end;

           mRemetente := '';
           if tPedido.FieldByName('Remetente').AsInteger > 0 then begin
              mRemetente := util.remetente300(tPedido.FieldByName('Remetente_CNPJ').AsString
                                             ,tPedido.FieldByName('Remetente_CPF').AsString
                                             ,tPedido.FieldByName('Remetente_IE').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Remetente_Nome').AsString)
                                             ,RemoveCaracterXML(tPedido.FieldByName('Remetente_NomeFanta').AsString)
                                             ,tPedido.FieldByName('Remetente_Fone1').AsString
                                             ,tPedido.FieldByName('Remetente_Rua').AsString
                                             ,tPedido.FieldByName('Remetente_RuaNumero').AsString
                                             ,tPedido.FieldByName('Remetente_Compl').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Remetente_Bairro').AsString)
                                             ,tPedido.FieldByName('Remetente_MunCod').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Remetente_MunNome').AsString)
                                             ,tPedido.FieldByName('Remetente_CEP').AsString
                                             ,tPedido.FieldByName('Remetente_Estado').AsString
                                             ,tPedido.FieldByName('Remetente_PaisCod').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Remetente_PaisNome').AsString)
                                             ,tPedido.FieldByName('Remetente_Email').AsString
                                             );
           end;

           mExpedidor := '';
           if tPedido.FieldByName('Expedidor').AsInteger > 0 then begin
              mExpedidor := util.expedidor300(tPedido.FieldByName('Expedidor_CNPJ').AsString
                                             ,tPedido.FieldByName('Expedidor_CPF').AsString
                                             ,tPedido.FieldByName('Expedidor_IE').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Expedidor_Nome').AsString)
                                             ,tPedido.FieldByName('Expedidor_Fone1').AsString
                                             ,tPedido.FieldByName('Expedidor_Rua').AsString
                                             ,tPedido.FieldByName('Expedidor_RuaNumero').AsString
                                             ,tPedido.FieldByName('Expedidor_Compl').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Expedidor_Bairro').AsString)
                                             ,tPedido.FieldByName('Expedidor_MunCod').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Expedidor_MunNome').AsString)
                                             ,tPedido.FieldByName('Expedidor_CEP').AsString
                                             ,tPedido.FieldByName('Expedidor_Estado').AsString
                                             ,tPedido.FieldByName('Expedidor_PaisCod').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Expedidor_PaisNome').AsString)
                                             ,tPedido.FieldByName('Expedidor_Email').AsString
                                             );
           end;

           mRecebedor := '';
           if tPedido.FieldByName('Recebedor').AsInteger > 0 then begin
              mRecebedor := util.recebedor300(tPedido.FieldByName('Recebedor_CNPJ').AsString
                                             ,tPedido.FieldByName('Recebedor_CPF').AsString
                                             ,tPedido.FieldByName('Recebedor_IE').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Recebedor_Nome').AsString)
                                             ,tPedido.FieldByName('Recebedor_Fone1').AsString
                                             ,tPedido.FieldByName('Recebedor_Rua').AsString
                                             ,tPedido.FieldByName('Recebedor_RuaNumero').AsString
                                             ,tPedido.FieldByName('Recebedor_Compl').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Recebedor_Bairro').AsString)
                                             ,tPedido.FieldByName('Recebedor_MunCod').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Recebedor_MunNome').AsString)
                                             ,tPedido.FieldByName('Recebedor_CEP').AsString
                                             ,tPedido.FieldByName('Recebedor_Estado').AsString
                                             ,tPedido.FieldByName('Recebedor_PaisCod').AsString
                                             ,RemoveCaracterXML(tPedido.FieldByName('Recebedor_PaisNome').AsString)
                                             ,tPedido.FieldByName('Recebedor_Email').AsString
                                             );
           end;

           mDestinatario := '';
           if tPedido.FieldByName('Destinatario').AsInteger > 0 then begin
              mDestinatario := util.destinatario300(tPedido.FieldByName('Destinatario_CNPJ').AsString
                                                   ,tPedido.FieldByName('Destinatario_CPF').AsString
                                                   ,tPedido.FieldByName('Destinatario_IE').AsString
                                                   ,RemoveCaracterXML(tPedido.FieldByName('Destinatario_Nome').AsString)
                                                   ,tPedido.FieldByName('Destinatario_Fone1').AsString
                                                   ,tPedido.FieldByName('Destinatario_SUFRAMA').AsString
                                                   ,tPedido.FieldByName('Destinatario_Rua').AsString
                                                   ,tPedido.FieldByName('Destinatario_RuaNumero').AsString
                                                   ,tPedido.FieldByName('Destinatario_Compl').AsString
                                                   ,RemoveCaracterXML(tPedido.FieldByName('Destinatario_Bairro').AsString)
                                                   ,tPedido.FieldByName('Destinatario_MunCod').AsString
                                                   ,RemoveCaracterXML(tPedido.FieldByName('Destinatario_MunNome').AsString)
                                                   ,tPedido.FieldByName('Destinatario_CEP').AsString
                                                   ,tPedido.FieldByName('Destinatario_Estado').AsString
                                                   ,tPedido.FieldByName('Destinatario_PaisCod').AsString
                                                   ,RemoveCaracterXML(tPedido.FieldByName('Destinatario_PaisNome').AsString)
                                                   ,tPedido.FieldByName('Destinatario_Email').AsString
                                                   );
           end;

           mIdent := '';
{
showmessage(
'ESTADO:'+tPedido.FieldByName('Empresa_EstadoNum').asstring+#13+
'MODELO:'+tPedido.FieldByName('Modelo').asstring+#13+
'SERIE:'+tPedido.FieldByName('Serie').asstring+#13+
'NUMERO:'+inttostr(mNumCTE)+#13+
'AMBIENTE:'+Empresas.FieldByName('Ambiente_CTe').asstring+#13+
'MUNICIPIO:'+Empresas.FieldByName('Municipio_Codigo').asstring+#13+
'MODAL:'+tPedido.FieldByName('Modal').asstring+#13
);
}

           mIdent := util.identificador300(tPedido.FieldByName('Empresa_EstadoNum').AsInteger
                                          ,mcCT
                                          ,tPedido.FieldByName('CFOP').AsString
                                          ,RemoveCaracterXML(AnsiUpperCase(tPedido.FieldByName('CFOP_Desc').AsString))
                                          ,tPedido.FieldByName('Modelo').AsInteger
                                          ,tPedido.FieldByName('Serie').AsInteger
                                          ,mNumCTE
                                          ,DataUTC(Now)
                                          ,1                                                           // Formato de impressão do DACTE: 1-Retrato/2-Paisagem.
                                          ,1                                                           // Emissão: 1-Normal/4-EPEC/5-Contingência FSDA/7-Autorização pela SVC-RS/8-Autorização pela SVC-SP.
                                          ,mcDV
                                          ,tPedido.FieldByName('Ambiente').AsInteger
                                          ,0                                                           // informar tipo de Ct-e:0-CT-e Normal/1-CT-e de Complemento de Valores/2-CT-e de Anulação de Valores/3-CT-e Substituto.
                                          ,0
                                          ,Menu_Principal.mVersao_Sistema
                                          ,0                                                           // 1 quando for globalizado e não informar a tag nas demais situações.
                                          ,tPedido.FieldByName('Empresa_MunicipioCod').AsInteger
                                          ,RemoveCaracterXML(tPedido.FieldByName('Empresa_MunicipioNome').AsString)
                                          ,tPedido.FieldByName('Empresa_Estado').AsString
                                          ,tPedido.FieldByName('Modal').AsInteger
                                          ,tPedido.FieldByName('Tipo_Servico').AsInteger
                                          ,tPedido.FieldByName('LocalPrest_InicioMun').AsInteger
                                          ,RemoveCaracterXML(tPedido.FieldByName('LocalPrest_InicioMunNome').AsString)
                                          ,tPedido.FieldByName('LocalPrest_InicioUF').AsString
                                          ,tPedido.FieldByName('LocalPrest_TerminoMun').AsInteger
                                          ,RemoveCaracterXML(tPedido.FieldByName('LocalPrest_TerminoMunNome').AsString)
                                          ,tPedido.FieldByName('LocalPrest_TerminoUF').AsString
                                          ,iif(tPedido.FieldByName('Recebedor_Retira').AsBoolean, 1, 0)
                                          ,RemoveCaracterXML(Trim(Copy(tPedido.FieldByName('Detalhe_Retirada').AsString, 1, 160)))
                                          ,tPedido.FieldByName('Tomador_IndIE').AsInteger
                                          ,mTomador
                                          ,''
                                          ,''
                                          );

           mPassag := '';
           for i := 0 to cPassagem.Lines.Count do begin
               mPassag := mPassag + util.pass(cPassagem.Lines[i]);
           end;

           mFluxo := '';
           mFluxo := util.fluxo300(tPedido.FieldByName('Fluxo_Origem').AsString
                                  ,mPassag
                                  ,tPedido.FieldByName('Fluxo_Destino').AsString
                                  ,tPedido.FieldByName('Fluxo_Rota').AsString
                                  );

           mEntrega := '';
           mEntrega := util.entrega(tPedido.FieldByName('Programacao_Entrega').AsInteger
                                   ,tPedido.FieldByName('Previsao_Data').AsDateTime
                                   ,tPedido.FieldByName('Previsao_DataFim').AsDatetime
                                   ,tPedido.FieldByName('Programacao_EntregaHora').AsString
                                   ,tPedido.FieldByName('Previsao_Hora').AsString
                                   ,tPedido.FieldByName('Previsao_HoraFim').AsString
                                   );

           mCompl := '';
           mCompl := util.compl(RemoveCaracterXML(tPedido.FieldByName('Caracter_Transporte').AsString)
                               ,RemoveCaracterXML(tPedido.FieldByName('Caracter_Servico').AsString)
                               ,RemoveCaracterXML(tPedido.FieldByName('Funcionario_Emissor').AsString)
                               ,mFLuxo
                               ,mEntrega
                               ,RemoveCaracterXML(tPedido.FieldByName('LocalPrest_InicioMunNome').AsString)+' '+tPedido.FieldByName('LocalPrest_InicioUF').AsString
                               ,RemoveCaracterXML(tPedido.FieldByName('LocalPrest_TerminoMunNome').AsString)+' '+tPedido.FieldByName('LocalPrest_TerminoUF').AsString
                               ,RemoveCaracterXML(tPedido.FieldByName('Observacao').AsString)   // string xObs_Opc.
                               ,''                                                              // string obsCont_Opc.
                               ,''                                                              // string ObsFisco_Opc.
                               );

           // Ler da tabela de Componentes do valor do frete.
           PedidoCTEComp.First;
           mComponentes := '';
           while not PedidoCTEComp.eof do begin
                 mComponentes := mComponentes + util.compVPrest(PedidoCTEComp.FieldByName('Descricao').AsString, PedidoCTEComp.FieldByName('Valor').AsString);
                 PedidoCTEComp.Next;
           end;

           mValServico := util.vPrest(tPedido.FieldByName('Valor_Servico').asCurrency
                                     ,tPedido.FieldByName('Valor_Receber').asCurrency
                                     ,mComponentes
                                     );

           mICMS := '';
           if Empresas.FieldByName('Regime_Apuracao').AsInteger = 3 then begin
              if tPedido.FieldByName('CST_ICMS').AsString = '00' then begin
                 mICMS := util.ImpICMS00_NT2015003(tPedido.FieldByName('CST_ICMS').AsString
                                                  ,tPedido.FieldByName('Valor_BCICMS').AsCurrency
                                                  ,tPedido.FieldByName('Aliquota_ICMS').AsFloat
                                                  ,tPedido.FieldByName('Valor_ICMS').AsCurrency
                                                  ,tPedido.FieldByName('Valor_Tributos').AsCurrency
                                                  ,RemoveCaracterXML(tPedido.FieldByName('Inf_Complementares').AsString)
                                                  ,tPedido.FieldByName('Valor_ICMSPartilhaTer').AsCurrency
                                                  );
              end;
              if tPedido.FieldByName('CST_ICMS').AsString = '20' then begin
                 mICMS := util.ImpICMS20_NT2015003(tPedido.FieldByName('CST_ICMS').AsString
                                                  ,tPedido.FieldByName('Reducao_BCICMS').AsFloat
                                                  ,tPedido.FieldByName('Valor_BCICMS').AsCurrency
                                                  ,tPedido.FieldByName('Aliquota_ICMS').AsFloat
                                                  ,tPedido.FieldByName('Valor_ICMS').AsCurrency
                                                  ,tPedido.FieldByName('Valor_Tributos').AsCurrency
                                                  ,RemoveCaracterXML(tPedido.FieldByName('Inf_Complementares').AsString)
                                                  ,tPedido.FieldByName('Valor_ICMSPartilhaTer').AsCurrency
                                                  );
              end;
              if (tPedido.FieldByName('CST_ICMS').AsString = '40') or (tPedido.FieldByName('CST_ICMS').AsString = '41') or (tPedido.FieldByName('CST_ICMS').AsString = '51') then begin
                 mICMSUFFim := '';
                 mICMSUFFim := util.ICMSUFFim(tPedido.FieldByName('Valor_BCICMSTerm').AsCurrency
                                             ,tPedido.FieldByName('FCP_UFTermino').AsCurrency
                                             ,tPedido.FieldByName('Aliquota_ICMSTerm').AsCurrency
                                             ,tPedido.FieldByName('Aliquota_ICMSInter').AsCurrency
                                             ,0
                                             ,tPedido.FieldByName('FCP_ValorUFTermino').AsCurrency
                                             ,tPedido.FieldByName('Valor_ICMSPartilhaTer').AsCurrency
                                             ,tPedido.FieldByName('Valor_ICMSPartilhaIni').AsCurrency
                                             );

                 mICMS := util.ImpICMS45_NT2015003(tPedido.FieldByName('CST_ICMS').AsString
                                                  ,tPedido.FieldByName('Valor_Tributos').AsCurrency
                                                  ,RemoveCaracterXML(tPedido.FieldByName('Inf_Complementares').AsString)
                                                  ,mICMSUFFim
                                                  );
              end;
              if tPedido.FieldByName('CST_ICMS').AsString = '60' then begin
                 mICMS := util.ImpICMS60_NT2015003(tPedido.FieldByName('CST_ICMS').AsString
                                                  ,tPedido.FieldByName('Valor_BCICMSRetido').AsCurrency
                                                  ,tPedido.FieldByName('Aliquota_ICMSRetido').AsFloat
                                                  ,tPedido.FieldByName('Valor_ICMSRetido').AsCurrency
                                                  ,tPedido.FieldByName('Valor_Credito').AsCurrency
                                                  ,tPedido.FieldByName('Valor_Tributos').AsCurrency
                                                  ,RemoveCaracterXML(tPedido.FieldByName('Inf_Complementares').AsString)
                                                  ,0
                                                  );
              end;
              if (tPedido.FieldByName('CST_ICMS').AsString = '90') and (mDentroFora = 'D') then begin
                 mICMS := util.ImpICMS90_NT2015003(tPedido.FieldByName('CST_ICMS').AsString
                                                  ,tPedido.FieldByName('Reducao_BCICMS').AsFloat
                                                  ,tPedido.FieldByName('Valor_BCICMS').AsCurrency
                                                  ,tPedido.FieldByName('Aliquota_ICMS').AsFloat
                                                  ,tPedido.FieldByName('Valor_ICMS').AsCurrency
                                                  ,tPedido.FieldByName('Valor_Credito').AsCurrency
                                                  ,tPedido.FieldByName('Valor_Tributos').AsCurrency
                                                  ,RemoveCaracterXML(tPedido.FieldByName('Inf_Complementares').AsString)
                                                  ,0
                                                  );
              end;
              if (tPedido.FieldByName('CST_ICMS').AsString = '90') and (mDentroFora = 'F') then begin
                 mICMS := util.ImpICMSOutraUF_NT2015003(tPedido.FieldByName('CST_ICMS').AsString
                                                       ,tPedido.FieldByName('Reducao_BCICMS').AsFloat
                                                       ,tPedido.FieldByName('Valor_BCICMS').AsCurrency
                                                       ,tPedido.FieldByName('Aliquota_ICMS').AsFloat
                                                       ,tPedido.FieldByName('Valor_ICMS').AsCurrency
                                                       ,tPedido.FieldByName('Valor_Tributos').AsCurrency
                                                       ,RemoveCaracterXML(tPedido.FieldByName('Inf_Complementares').AsString)
                                                       ,0
                                                       );
              end;
           end else begin
              mICMS := util.ImpICMSSN300(0
                                        ,RemoveCaracterXML(tPedido.FieldByName('Inf_Complementares').AsString)
                                        ,0
                                        );
           end;

           // Informações do CTe...Carga.
           mInfQ := '';
           mInfQ := util.infQ(tPedido.FieldByName('Unidade_Medida').AsString
                             ,RemoveCaracterXML(tPedido.FieldByName('Unidade_Medida').AsString)
                             ,tPedido.FieldByName('Volumes').AsFloat
                             );
           mInfQ := mInfQ + util.infQ('01'
                                     ,'PESO REAL'
                                     ,tPedido.FieldByName('Peso_Liquido').AsFloat
                                     );
           mInfQ := mInfQ + util.infQ('01'
                                     ,'PESO P/CALCULO'
                                     ,tPedido.FieldByName('Peso_Bruto').AsFloat
                                     );

           mCarga := '';
           mCarga := util.infCarga300(tPedido.FieldByName('Total_Carga').AsCurrency                             // Valor total da carga.
                                     ,tPedido.FieldByName('Produto_Predominante').AsString                      // Produto predominante.
                                     ,RemoveCaracterXML(tPedido.FieldByName('Carga_OutrasCaract').AsString)     // Outras características da carga ("FRIA", "GRANEL", "REFRIGERADA", "Medidas:12X12X12").
                                     ,mInfQ                                                                     // Grupo de quantidade da Carga.
                                     ,tPedido.FieldByName('Total_Carga').AsCurrency                             // Valor total da carga para efeito de averbação.
                                     );

           mInfNFe := '';
           PedidoCTENotas.First;
           while not PedidoCTENotas.eof do begin
                 mInfNFe := mInfNFE + util.infNFe_2G(PedidoCTENotas.FieldByName('Chave').AsString
                                                    ,''                                               // PIN SUFRAMA (PIN atribuído pela SUFRAMA para operação).
                                                    ,0                                                // Data prevista de entrega.
                                                    ,''                                               // Dados do grupo unidade de carga de Transporte ou unidade e Transporte.
                                                    );
                 PedidoCTENotas.Next;                                   
           end;

           mModalRod := '';
           mModalRod := util.rod300(tPedido.FieldByName('CTE_Layout').AsString
                                   ,tPedido.FieldByName('Empresa_RNTRC').AsString
                                   ,''
                                   );

           mInfCTe := '';
           mInfCTe := util.infCTeNorm300(mCarga
                                        ,mInfNfe
                                        ,''
                                        ,mModalRod
                                        ,''
                                        ,''
                                        ,''
                                        ,''
                                        ,''
                                        );
           {
           mInfCTe := util.infCTeNorm300(string infCarga
                                        ,string infDoc_Opc
                                        ,string emiDocAnt_Opc
                                        ,string infModal
                                        ,string veicNovos_Opc
                                        ,string cobr_Opc
                                        ,string infCteSub_Opc
                                        ,string infGlobalizado_Opc
                                        ,string infCTeMultimodal_Opc
                                        );
           }
           mXML := util.CTe_v3a(tPedido.FieldByName('CTE_Layout').AsString
                               ,mChaveCTe
                               ,mIdent
                               ,mCompl
                               ,mEmitente
                               ,mRemetente
                               ,mExpedidor
                               ,mRecebedor
                               ,mDestinatario
                               ,mValServico
                               ,mICMS
                               ,mInfCTe   // string infCTe
                               ,''        // string autXML_Opc
                               ,''        // string infRespTec_Opc
                               ,''        // string infCTeSupl_Opc
                               );

cXML.lines.add(mXML);
cXML.Lines.SaveToFile('c:\temp\Cte.xml');
ShellExecute(Handle, 'Open', PChar('c:\temp\cte.xml'), '', '', SW_ShowNormal);

      end;
end;

procedure TPedido_CTE.cPedidoChange(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           PedidoCTEComp.SQL.Clear;
           PedidoCTEComp.SQL.Add('SELECT * FROM PedidoCTEComp WHERE Pedido = :pPed ORDER BY Codigo');
           PedidoCTEComp.ParamByName('pPed').AsInteger := PedidoCTE.FieldByName('Pedido').AsInteger;
           PedidoCTEComp.Open;

           PedidoCTENotas.SQL.Clear;
           PedidoCTENotas.SQL.Add('SELECT * FROM PedidoCTENotas WHERE Pedido = :pPed ORDER BY Chave');
           PedidoCTENotas.ParamByName('pPed').AsInteger := PedidoCTE.FieldByName('Pedido').AsInteger;
           PedidoCTENotas.Open;

           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT *');
           Notas.SQL.Add('FROM  NotasFiscais');
           Notas.SQL.Add('WHERE ISNULL(CTE, 0) <> 1');
           Notas.SQL.Add('AND   Cliente_Codigo = :pCli');
           Notas.SQL.Add('AND   Cancelada <> 1');
           Notas.SQL.Add('AND   NFe_Denegada <> 1');
           Notas.SQL.Add('AND   Complementar <> 1');
           Notas.SQL.Add('AND   Devolucao <> 1');
           Notas.SQL.Add('ORDER BY Data_Emissao desc, Numero Desc');
           Notas.ParamByName('pCli').AsInteger := PedidoCTEDestinatario.AsInteger;
           Notas.Open;
      end;
end;

procedure TPedido_CTE.bCompClick(Sender: TObject);
begin
     Pedido_CTEComp := TPedido_CTEComp.Create(Self);
     Pedido_CTEComp.Caption := Caption;
     Pedido_CTEComp.ShowModal;

     with Dados do begin
          tPedido.SQL.Clear;
          tPedido.SQL.Add('SELECT ISNULL(SUM(Valor), 0) AS Total FROM pedidoCTEComp WHERE Pedido = :pPed');
          tPedido.ParamByName('pPed').AsInteger := PedidoCTE.FieldByName('Pedido').AsInteger;
          tPedido.Open;

          PedidoCTE.Edit;
                    PedidoCTE.FieldByName('Valor_Receber').Value := tPedido.FieldByName('Total').Value + PedidoCTE.FieldByName('Valor_Servico').Value;
                    PedidoCTE.FieldByName('Valor_BCICMS').Value  := PedidoCTE.FieldByName('Valor_Receber').Value;
          PedidoCTE.Post;
     end;
end;

procedure TPedido_CTE.bExcluiCompClick(Sender: TObject);
begin
     if GradeComp.SelCount = 0 then begin
        ShowMessage('Nenhum item selecionado, Selecione um item na grade para excluir!');
        Abort;
     end;
     if MessageDlg('Deseja realmente remover este item do CTE?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        Dados.PedidoCTEComp.Delete;
     end;
end;

procedure TPedido_CTE.cDestinatarioExit(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT *');
           Notas.SQL.Add('FROM  NotasFiscais');
           Notas.SQL.Add('WHERE Cliente_Codigo = :pCli');
           Notas.SQL.Add('AND   Cancelada <> 1');
           Notas.SQL.Add('AND   NFe_Denegada <> 1');
           Notas.SQL.Add('AND   Complementar <> 1');
           Notas.SQL.Add('AND   Devolucao <> 1');
           Notas.SQL.Add('ORDER BY Data_Emissao desc, Numero Desc');
           Notas.ParamByName('pCli').AsInteger := PedidoCTEDestinatario.AsInteger;
           Notas.Open;
      end;
end;

procedure TPedido_CTE.DBEdit5Change(Sender: TObject);
begin
      with Dados do begin
           if (PedidoCTE.State = dsEdit) or (PedidoCTE.State = dsInsert) then begin
              PedidoCTEValor_BCICMS.Value := PedidoCTEValor_Receber.Value;
           end;
      end;
end;

procedure TPedido_CTE.DBEdit17Change(Sender: TObject);
begin
      with Dados do begin
           if (PedidoCTE.State = dsEdit) or (PedidoCTE.State = dsInsert) then begin
              PedidoCTEValor_ICMS.Value := PedidoCTEValor_BCICMS.Value * (PedidoCTEAliquota_ICMS.Value/100);
           end;
      end;
end;

procedure TPedido_CTE.bAddTodasClick(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          if MessageDlg('Deseja realmente "ADICIONAR" todas as notas fiscais ao pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
             Notas.DisableControls;
             PedidoCTENotas.DisableControls;
             tPedido.SQL.Clear;
             tPedido.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PedidoCTENotas');
             while not Notas.Eof do begin
                   tPedido.Open;
                   PedidoCTENotas.Append;
                                  PedidoCTENotasRegistro.Value     := tPedido.FieldByName('Registro').AsInteger;
                                  PedidoCTENotasPedido.Value       := PedidoCTE.FieldByName('Pedido').AsInteger;
                                  PedidoCTENotasChave.Value        := Notas.FieldByName('NFe_cNF').AsString;
                                  PedidoCTENotasNota.Value         := Notas.FieldByName('Numero').AsInteger;
                                  PedidoCTENotasTotal_Nota.Value   := Notas.FieldByName('Valor_TotalNota').AsInteger;
                                  PedidoCTENotasVolumes.Value      := Notas.FieldByName('Volume_Quantidade').AsFloat;
                                  PedidoCTENotasPeso_Liquido.Value := Notas.FieldByName('Volume_PesoLiquido').AsFloat;
                                  PedidoCTENotasPeso_Bruto.Value   := Notas.FieldByName('Volume_PesoBruto').AsFloat;
                   PedidoCTENotas.Post;
                   tPedido.Close;

                   Notas.Edit;
                         NotasCTe.Value := true;
                   Notas.Post;
                   Notas.Next;
             end;
          end;
          Notas.Refresh;
          Notas.EnableControls;
          PedidoCTENotas.EnableControls;
     end;
end;

procedure TPedido_CTE.bRemTodasClick(Sender: TObject);
begin
      if MessageDlg('Deseja realmente "REMOVER" todas as notas fiscais do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         tPedido.SQL.Clear;
         tPedido.SQL.Add('UPDATE NotasFiscais SET CTE = NULL WHERE NFe_cNF IN(SELECT Chave FROM PedidoCTENotas WHERE Pedido = :pPed)');
         tPedido.ParamByName('pPed').AsInteger := Dados.PedidoCTEPedido.AsInteger;
         tPedido.Execute;
         tPedido.SQL.Clear;
         tPedido.SQL.Add('DELETE FROM PedidoCTENotas WHERE Pedido = :pPed');
         tPedido.ParamByName('pPed').AsInteger := Dados.PedidoCTEPedido.AsInteger;
         tPedido.Execute;
         Dados.PedidoCTENotas.Refresh;
         dmFiscal.Notas.Refresh;
      end;
end;

procedure TPedido_CTE.bAddNotaClick(Sender: TObject);
var
   i:integer;
begin
     with Dados, dmFiscal do begin
          tPedido.SQL.Clear;
          tPedido.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PedidoCTENotas');

          for i := 0 to GradeNotas.SelectedRows.Count-1 do begin
              GradeNotas.DataSource.DataSet.GotoBookMark((GradeNotas.SelectedRows.Items[i]));
              tPedido.Open;
              PedidoCTENotas.Append;
                                  PedidoCTENotasRegistro.Value     := tPedido.FieldByName('Registro').AsInteger;
                                  PedidoCTENotasPedido.Value       := PedidoCTE.FieldByName('Pedido').AsInteger;
                                  PedidoCTENotasChave.Value        := Notas.FieldByName('NFe_cNF').AsString;
                                  PedidoCTENotasNota.Value         := Notas.FieldByName('Numero').AsInteger;
                                  PedidoCTENotasTotal_Nota.Value   := Notas.FieldByName('Valor_TotalNota').AsInteger;
                                  PedidoCTENotasVolumes.Value      := Notas.FieldByName('Volume_Quantidade').AsFloat;
                                  PedidoCTENotasPeso_Liquido.Value := Notas.FieldByName('Volume_PesoLiquido').AsFloat;
                                  PedidoCTENotasPeso_Bruto.Value   := Notas.FieldByName('Volume_PesoBruto').AsFloat;
              PedidoCTENotas.Post;
              tPedido.Close;
              Notas.Edit;
                    NotasCTe.Value := true;
              Notas.Post;
          end;
          Notas.Refresh;
          PedidoCTENotas.Refresh;
     end;
end;

procedure TPedido_CTE.bRemNotaClick(Sender: TObject);
var
   i:integer;
begin
     with Dados, dmFiscal do begin
          for i := 0 to GradePedido.SelectedRows.Count-1 do begin
              GradePedido.DataSource.DataSet.GotoBookMark((GradePedido.SelectedRows.Items[i]));

              tPedido.SQL.Clear;
              tPedido.SQL.Add('UPDATE NotasFiscais SET CTE = NULL WHERE NFe_cNF = :pChave');
              tPedido.ParamByName('pChave').AsString := PedidoCTENotasChave.AsString;
              tPedido.Execute;
              
              PedidoCTENotas.Delete;
          end;
          Notas.Refresh;
          PedidoCTENotas.Refresh;
     end;

end;

procedure TPedido_CTE.PegaMotorista;
begin
{
      tVeiculo.SQL.Clear;
      tVeiculo.SQL.Add('SELECT DISTINCT Motorista FROM PedidoCTE ORDER BY Motorista');
      tVeiculo.Open;
      tVeiculo.First;
      cMotorista.Items.Clear;
      while not tVeiculo.eof do begin
            cMotorista.Items.Add(tVeiculo.FieldByName('Motorista').AsString);
            tVeiculo.next;
      end;
      tVeiculo.SQL.Clear;
      tVeiculo.SQL.Add('SELECT DISTINCT Veiculo_Placa FROM PedidoCTE ORDER BY Veiculo_Placa');
      tVeiculo.Open;
      tVeiculo.First;
      cVeiculoPlaca.Items.Clear;
      while not tVeiculo.eof do begin
            cVeiculoPlaca.Items.Add(tVeiculo.FieldByName('Veiculo_Placa').AsString);
            tVeiculo.next;
      end;
      tVeiculo.SQL.Clear;
      tVeiculo.SQL.Add('SELECT DISTINCT Veiculo_Placa FROM PedidoCTE ORDER BY Veiculo_Placa');
      tVeiculo.Open;
      tVeiculo.First;
      cVeiculoPlaca.Items.Clear;
      while not tVeiculo.eof do begin
            cVeiculoPlaca.Items.Add(tVeiculo.FieldByName('Veiculo_Placa').AsString);
            tVeiculo.next;
      end;
      }
      tVeiculo.SQL.Clear;
      tVeiculo.SQL.Add('SELECT DISTINCT Motorista');
      tVeiculo.SQL.Add('               ,Veiculo_Placa');
      tVeiculo.SQL.Add('               ,Veiculo_Descricao');
      tVeiculo.SQL.Add('               ,Carreta1_Placa');
      tVeiculo.SQL.Add('               ,Carreta1_Descricao');
      tVeiculo.SQL.Add('               ,Carreta2_Placa');
      tVeiculo.SQL.Add('               ,Carreta2_Descricao');
      tVeiculo.SQL.Add('               ,Carreta3_Placa');
      tVeiculo.SQL.Add('               ,Carreta3_Descricao');
      tVeiculo.SQL.Add('               ,Veiculo_Proprietario');
      tVeiculo.SQL.Add('FROM PedidoCTE');
      tVeiculo.SQL.Add('ORDER BY Motorista');
      tVeiculo.Open;
      tVeiculo.First;

      cMotorista.Items.Clear;
      cVeiculoPlaca.Items.Clear;
      cVeiculoDesc.Items.Clear;
      cCarreta1Placa.Items.Clear;
      cCarreta1Desc.Items.Clear;
      cCarreta2Placa.Items.Clear;
      cCarreta2Desc.Items.Clear;
      cCarreta3Placa.Items.Clear;
      cCarreta3Desc.Items.Clear;
      cVeicPropr.Items.Clear;

      while not tVeiculo.eof do begin
            cMotorista.Items.Add(tVeiculo.FieldByName('Motorista').AsString);
            cVeiculoPlaca.Items.Add(tVeiculo.FieldByName('Veiculo_Placa').AsString);
            cVeiculoDesc.Items.Add(tVeiculo.FieldByName('Veiculo_Descricao').AsString);
            cCarreta1Placa.Items.Add(tVeiculo.FieldByName('Carreta1_Placa').AsString);
            cCarreta1Desc.Items.Add(tVeiculo.FieldByName('Carreta1_Descricao').AsString);
            cCarreta2Placa.Items.Add(tVeiculo.FieldByName('Carreta2_Placa').AsString);
            cCarreta2Desc.Items.Add(tVeiculo.FieldByName('Carreta2_Descricao').AsString);
            cCarreta3Placa.Items.Add(tVeiculo.FieldByName('Carreta3_Placa').AsString);
            cCarreta3Desc.Items.Add(tVeiculo.FieldByName('Carreta3_Descricao').AsString);
            cVeicPropr.Items.Add(tVeiculo.FieldByName('Veiculo_Proprietario').AsString);
            tVeiculo.next;
      end;

end;

end.







