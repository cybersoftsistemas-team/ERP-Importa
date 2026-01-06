unit frmPedido_Devolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, DBCtrls, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, RXCtrls,
  RXDBCtrl, FUNCOES, Vcl.ComCtrls, ppDBPipe, ppParameter, ppBands, ppClass, ppMemo, ppReport, ppSubRpt, ppCtrls, ppPrnabl, MaskUtils, RxDBComb, raCodMod, ppDesignLayer, ppModule, ppStrtch, ppCache, ppProd,
  ppDB, ppComm, ppRelatv, system.UITypes, MemDS;
type
  TPedido_Devolucao = class(TForm)
    Panel2: TPanel;
    StaticText10: TStaticText;
    cObservacao: TDBMemo;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tPedido: TMSQuery;
    lNaturezaOperacao: TStaticText;
    cCodigoNatureza: TDBEdit;
    StaticText3: TStaticText;
    DBEdit3: TDBEdit;
    cTipo: TEdit;
    bItens: TButton;
    tItem: TMSQuery;
    tItemItem: TSmallintField;
    tPedidoNumero: TIntegerField;
    lCliente: TStaticText;
    lFornecedor: TStaticText;
    cFornecedor: TDBLookupComboBox;
    StaticText7: TStaticText;
    cTipoNota: TDBLookupComboBox;
    tTipoNota: TMSQuery;
    tTipoNotaVisiveis_ICMSOper: TBooleanField;
    tTipoNotaVisiveis_ICMSSub: TBooleanField;
    tTipoNotaVisiveis_Frete: TBooleanField;
    tTipoNotaVisiveis_Seguro: TBooleanField;
    tTipoNotaVisiveis_Desconto: TBooleanField;
    tTipoNotaVisiveis_Despesas: TBooleanField;
    tTipoNotaVisiveis_IPI: TBooleanField;
    bVisualizar: TButton;
    ppNatureza: TppDBPipeline;
    plEmpresas: TppDBPipeline;
    plItens: TppDBPipeline;
    plPedidos: TppDBPipeline;
    tVisualizar: TMSQuery;
    dstVisualizar: TDataSource;
    StaticText12: TStaticText;
    DBEdit4: TDBEdit;
    StaticText13: TStaticText;
    cVolumes: TDBEdit;
    StaticText16: TStaticText;
    DBEdit5: TDBEdit;
    StaticText14: TStaticText;
    DBEdit6: TDBEdit;
    StaticText15: TStaticText;
    DBEdit7: TDBEdit;
    StaticText17: TStaticText;
    DBEdit9: TDBEdit;
    cCliente: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText1: TStaticText;
    cModalidade: TRxDBComboBox;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    lTransportador: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    GroupBox2: TGroupBox;
    Image6: TImage;
    Image13: TImage;
    Image7: TImage;
    Image3: TImage;
    Label2: TLabel;
    lBCICMSOper: TDBText;
    Image4: TImage;
    lValorICMSOper: TDBText;
    Label4: TLabel;
    Image5: TImage;
    Label3: TLabel;
    lBCICMSSub: TDBText;
    Label1: TLabel;
    lValorICMSSub: TDBText;
    Label5: TLabel;
    lTotalProd: TDBText;
    Image8: TImage;
    Label6: TLabel;
    lValorFrete: TDBText;
    Image9: TImage;
    Label9: TLabel;
    lValorSeguro: TDBText;
    Image10: TImage;
    Label11: TLabel;
    DBText1: TDBText;
    Image11: TImage;
    Image12: TImage;
    Label12: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    lValorIPI: TDBText;
    Label10: TLabel;
    lTotalNota: TDBText;
    Transportadores: TMSQuery;
    TransportadoresCodigo: TIntegerField;
    TransportadoresNome: TStringField;
    TransportadoresTipo_Servico: TStringField;
    TransportadoresCNPJ: TStringField;
    dsTransportadores: TDataSource;
    lJustificativa: TStaticText;
    cJustificativa: TDBMemo;
    StaticText4: TStaticText;
    cProcesso: TDBEdit;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    cFormaPgto: TDBLookupComboBox;
    cPgto: TRxDBComboBox;
    DANFE_RetratoVis: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape58: TppShape;
    ppShape6: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppShape2: TppShape;
    lRazaoSocial: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    lSerie: TppLabel;
    ppLine1: TppLine;
    lQuadroEmpresa: TppShape;
    lEndereco: TppLabel;
    lBairroMunicipio: TppLabel;
    lCEP: TppLabel;
    lEmpresa: TppLabel;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppDBText2: TppDBText;
    lSerie2: TppLabel;
    lNumero_Folha: TppLabel;
    lNumero: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    lIE: TppDBText;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    ppShape11: TppShape;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppLabel74: TppLabel;
    ppLabel3: TppLabel;
    ppShape55: TppShape;
    ppLabel77: TppLabel;
    ppShape57: TppShape;
    ppLabel76: TppLabel;
    ppDBText5: TppDBText;
    ppLabel79: TppLabel;
    ppShape60: TppShape;
    ppLabel85: TppLabel;
    ppDBText26: TppDBText;
    ppDBText37: TppDBText;
    lNatureza: TppLabel;
    ppDBText1: TppDBText;
    iLogo: TppImage;
    ppShape56: TppShape;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText27: TppDBText;
    ppLine12: TppLine;
    ppDBText28: TppDBText;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppDBText30: TppDBText;
    ppLine18: TppLine;
    ppDBText31: TppDBText;
    ppLine20: TppLine;
    ppDBText32: TppDBText;
    ppLine22: TppLine;
    ppDBText33: TppDBText;
    ppLine24: TppLine;
    ppDBText34: TppDBText;
    ppLine26: TppLine;
    ppDBText35: TppDBText;
    ppLine31: TppLine;
    ppDBText36: TppDBText;
    ppLine32: TppLine;
    ppDBText25: TppDBText;
    lItem_CST: TppLabel;
    ppLine7: TppLine;
    ppDBMemo1: TppDBMemo;
    lCodigo: TppDBText;
    pQuantidade: TppDBText;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLine30: TppLine;
    Rodape: TppFooterBand;
    ppLine27: TppLine;
    ppGroup1: TppGroup;
    gDadosNF: TppGroupHeaderBand;
    lHomologacao: TppLabel;
    ppShape21: TppShape;
    ppShape17: TppShape;
    ppShape45: TppShape;
    ppShape40: TppShape;
    ppLabel13: TppLabel;
    ppShape13: TppShape;
    ppLabel14: TppLabel;
    lDestinatario_Nome: TppLabel;
    ppShape14: TppShape;
    ppLabel15: TppLabel;
    ppShape15: TppShape;
    ppLabel16: TppLabel;
    lData_Emissao: TppDBText;
    lDestinatario_CNPJ: TppLabel;
    ppShape16: TppShape;
    ppLabel100: TppLabel;
    lDestinatario_Rua: TppLabel;
    lDestinatario_Bairro: TppLabel;
    ppShape18: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppShape19: TppShape;
    ppLabel17: TppLabel;
    lData_EntradaSaida: TppDBText;
    ppShape20: TppShape;
    ppLabel18: TppLabel;
    lDestinatario_Municipio: TppLabel;
    ppLabel19: TppLabel;
    ppShape22: TppShape;
    ppLabel22: TppLabel;
    lDestinatario_UF: TppLabel;
    ppShape23: TppShape;
    ppLabel24: TppLabel;
    ppShape24: TppShape;
    ppLabel25: TppLabel;
    lHora_Saida: TppDBText;
    ppLabel38: TppLabel;
    ppShape37: TppShape;
    ppLabel39: TppLabel;
    lTransportador_Nome: TppLabel;
    ppShape38: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppShape39: TppShape;
    ppDBText17: TppDBText;
    ppLabel43: TppLabel;
    ppShape41: TppShape;
    ppLabel44: TppLabel;
    ppShape42: TppShape;
    ppLabel46: TppLabel;
    ppShape43: TppShape;
    ppLabel45: TppLabel;
    ppShape44: TppShape;
    ppLabel47: TppLabel;
    lTransportador_Endereco: TppLabel;
    ppLabel49: TppLabel;
    lTransportador_Municipio: TppLabel;
    ppShape46: TppShape;
    ppLabel51: TppLabel;
    lTransportador_UF: TppLabel;
    ppShape47: TppShape;
    ppLabel52: TppLabel;
    lTransportador_CNPJ: TppLabel;
    lTransportador_IE: TppLabel;
    ppShape48: TppShape;
    ppLabel48: TppLabel;
    ppDBText18: TppDBText;
    ppShape49: TppShape;
    ppLabel50: TppLabel;
    ppDBText19: TppDBText;
    ppShape50: TppShape;
    ppLabel53: TppLabel;
    ppDBText20: TppDBText;
    ppShape51: TppShape;
    ppLabel54: TppLabel;
    ppDBText21: TppDBText;
    ppShape52: TppShape;
    ppLabel55: TppLabel;
    ppDBText22: TppDBText;
    ppShape53: TppShape;
    ppLabel56: TppLabel;
    ppDBText23: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    lDestinatario_Telefone: TppLabel;
    lDestinatario_IE: TppLabel;
    lDestinatario_CEP: TppLabel;
    ppShape59: TppShape;
    ppShape12: TppShape;
    ppShape25: TppShape;
    ppLabel26: TppLabel;
    ppLabel12: TppLabel;
    ppLine33: TppLine;
    ppLabel75: TppLabel;
    ppLabel78: TppLabel;
    ppLine34: TppLine;
    lNumDupl1: TppLabel;
    lDataDupl1: TppLabel;
    lValorDupl1: TppLabel;
    ppLabel90: TppLabel;
    ppLine35: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLine36: TppLine;
    ppLabel96: TppLabel;
    ppLine37: TppLine;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine38: TppLine;
    lNumDupl2: TppLabel;
    lNumDupl3: TppLabel;
    lDataDupl2: TppLabel;
    lValorDupl2: TppLabel;
    lValorDupl3: TppLabel;
    lNumDupl4: TppLabel;
    lNumDupl5: TppLabel;
    lNumDupl6: TppLabel;
    lDataDupl4: TppLabel;
    lDataDupl5: TppLabel;
    lDataDupl6: TppLabel;
    lValorDupl4: TppLabel;
    lValorDupl5: TppLabel;
    lValorDupl6: TppLabel;
    lNumDupl7: TppLabel;
    lNumDupl8: TppLabel;
    lNumDupl9: TppLabel;
    lDataDupl7: TppLabel;
    lDataDupl8: TppLabel;
    lDataDupl9: TppLabel;
    lValorDupl7: TppLabel;
    lValorDupl8: TppLabel;
    lValorDupl9: TppLabel;
    lNumDupl10: TppLabel;
    lDataDupl10: TppLabel;
    lNumDupl11: TppLabel;
    lDataDupl11: TppLabel;
    lValorDupl11: TppLabel;
    lNumDupl12: TppLabel;
    lDataDupl12: TppLabel;
    lValorDupl12: TppLabel;
    lValorDupl10: TppLabel;
    lDataDupl3: TppLabel;
    lNumDupl13: TppLabel;
    lNumDupl14: TppLabel;
    lNumDupl15: TppLabel;
    lDataDupl13: TppLabel;
    lDataDupl14: TppLabel;
    lDataDupl15: TppLabel;
    lValorDupl13: TppLabel;
    lValorDupl14: TppLabel;
    lValorDupl15: TppLabel;
    lNumDupl17: TppLabel;
    lNumDupl18: TppLabel;
    lNumDupl19: TppLabel;
    lNumDupl20: TppLabel;
    lNumDupl21: TppLabel;
    lNumDupl22: TppLabel;
    lNumDupl23: TppLabel;
    lDataDupl17: TppLabel;
    lDataDupl18: TppLabel;
    lDataDupl19: TppLabel;
    lDataDupl20: TppLabel;
    lDataDupl21: TppLabel;
    lDataDupl22: TppLabel;
    lDataDupl23: TppLabel;
    lValorDupl17: TppLabel;
    lValorDupl18: TppLabel;
    lValorDupl19: TppLabel;
    lValorDupl20: TppLabel;
    lValorDupl21: TppLabel;
    lValorDupl22: TppLabel;
    lValorDupl23: TppLabel;
    lNumDupl16: TppLabel;
    lDataDupl16: TppLabel;
    lValorDupl16: TppLabel;
    lNumDupl24: TppLabel;
    lDataDupl24: TppLabel;
    lValorDupl24: TppLabel;
    ppShape74: TppShape;
    lTituloEntrega_Retirada: TppLabel;
    ppShape75: TppShape;
    ppLabel103: TppLabel;
    lEntregaNome: TppLabel;
    ppShape76: TppShape;
    ppLabel105: TppLabel;
    ppShape77: TppShape;
    ppLabel106: TppLabel;
    lEntregaCNPJ: TppLabel;
    ppShape78: TppShape;
    ppLabel108: TppLabel;
    lEntregaRua: TppLabel;
    lEntregaBairro: TppLabel;
    ppShape79: TppShape;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppShape81: TppShape;
    ppLabel114: TppLabel;
    lEntregaMunicipio: TppLabel;
    ppShape82: TppShape;
    ppLabel117: TppLabel;
    lEntregaUF: TppLabel;
    ppShape84: TppShape;
    ppLabel120: TppLabel;
    lEntregaCEP: TppLabel;
    lEntregaIE: TppLabel;
    lEntregaTelefone: TppLabel;
    ppLabel27: TppLabel;
    ppLabel57: TppLabel;
    ppShape54: TppShape;
    ppLabel58: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel59: TppLabel;
    ppLine4: TppLine;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine5: TppLine;
    ppLabel62: TppLabel;
    ppLine11: TppLine;
    ppLabel63: TppLabel;
    ppLine13: TppLine;
    ppLabel64: TppLabel;
    ppLine15: TppLine;
    ppLabel65: TppLabel;
    ppLine17: TppLine;
    ppLabel66: TppLabel;
    ppLine19: TppLine;
    ppLabel67: TppLabel;
    ppLine21: TppLine;
    ppLabel68: TppLabel;
    ppLine23: TppLine;
    ppLabel69: TppLabel;
    ppLine25: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLine29: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppShape28: TppShape;
    ppShape31: TppShape;
    ppShape27: TppShape;
    ppShape26: TppShape;
    ppLabel28: TppLabel;
    ppLabel23: TppLabel;
    ppLabel29: TppLabel;
    ppDBText8: TppDBText;
    ppShape29: TppShape;
    ppLabel30: TppLabel;
    ppDBText9: TppDBText;
    ppShape30: TppShape;
    ppLabel31: TppLabel;
    ppDBText10: TppDBText;
    ppLabel32: TppLabel;
    ppDBText11: TppDBText;
    ppShape32: TppShape;
    ppLabel33: TppLabel;
    ppDBText12: TppDBText;
    ppShape33: TppShape;
    ppLabel34: TppLabel;
    ppDBText13: TppDBText;
    ppShape34: TppShape;
    pDescontos: TppDBText;
    ppLabel35: TppLabel;
    ppShape35: TppShape;
    ppDBText15: TppDBText;
    ppLabel36: TppLabel;
    ppShape36: TppShape;
    ppDBText16: TppDBText;
    ppLabel37: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape5: TppShape;
    ppLabel84: TppLabel;
    lII: TppDBText;
    ppShape68: TppShape;
    ppLabel93: TppLabel;
    ppDBText29: TppDBText;
    ppShape67: TppShape;
    ppLabel94: TppLabel;
    ppDBText41: TppDBText;
    ppShape69: TppShape;
    ppLabel95: TppLabel;
    ppShape70: TppShape;
    ppLabel99: TppLabel;
    ppDBText44: TppDBText;
    ppShape71: TppShape;
    ppLabel101: TppLabel;
    ppDBText45: TppDBText;
    ppShape72: TppShape;
    ppLabel102: TppLabel;
    ppDBText46: TppDBText;
    cAFRMM: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppLabel7: TppLabel;
    ppShape80: TppShape;
    ppShape63: TppShape;
    ppShape64: TppShape;
    ppLabel86: TppLabel;
    ppShape65: TppShape;
    ppLabel87: TppLabel;
    ppShape66: TppShape;
    ppLabel88: TppLabel;
    ppLabel80: TppLabel;
    ppLabel89: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppLabel81: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    raCodeModule2: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList1: TppParameterList;
    cTipoProc: TRxDBComboBox;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    StaticText8: TStaticText;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bItensClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lNaturezaOperacaoClick(Sender: TObject);
    procedure lClienteClick(Sender: TObject);
    procedure lFornecedorClick(Sender: TObject);
    procedure bVisualizarClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure DANFE_RetratoVis_OldBeforePrint(Sender: TObject);
    procedure cTipoNotaExit(Sender: TObject);
    procedure lTransportadorClick(Sender: TObject);
  private
    procedure ZerarDupl;
    { Private declarations }
  public
    { Public declarations }
    mNFPropria: Boolean;
    mSaiEntra : Integer;
  end;

Const
   mSETexto : array[0..1] of String = ('Entrada','Saída');

var
  Pedido_Devolucao: TPedido_Devolucao;

implementation

uses frmDados, frmDMFiscal, frmPedido_DevolucaoItens, frmMenu_Principal, frmCadastro_NaturezaOperacao, frmCadastro_Clientes,
     frmCadastro_Fornecedores, frmPedido_DevolucaoItensTerceiros;

{$R *.dfm}

procedure TPedido_Devolucao.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_Devolucao.FormShow(Sender: TObject);
begin
      With Dados do Begin
           FormaPgto.SQL.Clear;
           FormaPgto.SQL.Add('SELECT * FROM FormaPagamento ORDER BY Codigo');
           FormaPgto.Open;
           
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           Municipios.Open;

           TipoNota.Close;
           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE Ativo = 1 AND Finalidade_Mercadoria IN(2, 4, 5, 9)');
           TipoNota.Open;

           tTipoNota.Close;
           tTipoNota.SQL.Clear;
           tTipoNota.SQL.Add('SELECT * FROM TipoNota');
           tTipoNota.Open;

           Clientes.Close;
           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Ativo = 1) ORDER BY Nome');
           Clientes.Open;

           Fornecedores.Close;
           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.Open;

           Transportadores.SQL.Clear;
           Transportadores.SQL.Add('SELECT * FROM Fornecedores, RamoAtividade');
           Transportadores.SQL.Add('WHERE  (Ramo_Atividade = RamoAtividade.Codigo) AND (RamoAtividade.Descricao LIKE ''%TRANSPORT%'') AND (RamoAtividade.Modulo_Pedidos = 1) ORDER BY Nome');
           Transportadores.Open;

           Natureza.Close;
           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza');
           Natureza.SQL.Add('WHERE Ativo = 1');
           Natureza.SQL.Add('  AND Saida_Entrada = :pSaiEntra');
           Natureza.SQL.Add('  AND (Codigo IN(SELECT DISTINCT Codigo_Devolucao FROM Natureza) OR Codigo IN(SELECT DISTINCT Codigo_Estorno FROM Natureza))');
           Natureza.ParamByName('pSaiEntra').AsInteger := mSaiEntra;
           Natureza.Open;

           Configuracao.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('SELECT * FROM Pedidos');
           Pedidos.SQL.Add('WHERE (SELECT Finalidade_Mercadoria FROM TipoNota WHERE Codigo = Tipo_Nota) IN(2, 4, 5, 9)');
           Pedidos.SQL.Add('ORDER  BY Numero');
           Pedidos.Open;

           bItens.Enabled := Pedidos.RecordCount <> 0;
           If mSaiEntra = 0 then
              cTipo.Text := 'DEVOLUÇÃO DE SAÍDA'
           else
              cTipo.Text := 'DEVOLUÇÃO DE ENTRADA';
      End;
end;

procedure TPedido_Devolucao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
   i: Integer;
begin
      If Button = nbInsert then begin
         Dados.PedidosSaida_Entrada.Value := mSaiEntra; 
         If Dados.TipoNota.RecordCount = 0 then begin
            MessageDlg('Não existe tipo de nota de devolução criada!'+#13+#13+'É necessário criar um tipo de nota fiscal de devolução para digitar o pedido.', mtError, [mbOK], 0);
            Abort;
         End;
      End;
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cTipoNota.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled := False;
      End;
      If Dados.PedidosSaida_Entrada.Value = 0 then
         cTipo.Text := 'DEVOLUÇÃO DE SAÍDA'
      else
         cTipo.Text := 'DEVOLUÇÃO DE ENTRADA';

      bItens.Enabled := Dados.Pedidos.RecordCount <> 0;
      Screen.Cursor := crDefault;
end;

procedure TPedido_Devolucao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.TipoNota.Close;
      tTipoNota.Close;
      Dados.Clientes.Close;
      Dados.Configuracao.Close;
      Dados.Fornecedores.Close;
      Dados.Natureza.Close;
      Dados.Pedidos.Close;
      dmFiscal.Notas.Close;
      dmFiscal.NotasItens.Close;

      LimpaMemoria;
      Pedido_Devolucao.Release;
      Pedido_Devolucao := nil;
end;

procedure TPedido_Devolucao.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados, dmFiscal do begin
           If Button = nbPost then begin
              If mSaiEntra = 1 then begin
                 If (ClientesEstado.Value = EmpresasEstado.Value) and (Copy(cCodigoNatureza.Text,1,1) <> '5') then begin
                    ShowMessage('Natureza da operação invalida!'+#13+'Cliente de dentro do próprio estado.');
                    Abort;
                 End;
                 If (ClientesEstado.Value <> EmpresasEstado.Value) and (ClientesEstado.Value <> 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '6') then begin
                    ShowMessage('Natureza da operação invalida!'+#13+'Cliente de fora do estado.');
                    Abort;
                 End;
                 If (ClientesEstado.Value <> EmpresasEstado.Value) and (ClientesEstado.Value = 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '7') then begin
                    ShowMessage('Natureza da operação invalida!'+#13+'Cliente do exterior (Estado = EX).');
                    Abort;
                 End;
              End else begin
                 If (FornecedoresEstado.Value = EmpresasEstado.Value) and (Copy(cCodigoNatureza.Text,1,1) <> '1') then begin
                    ShowMessage('Natureza da operação invalida!'+#13+'Fornecedor de dentro do próprio estado.');
                    Abort;
                 End;
                 If (FornecedoresEstado.Value <> EmpresasEstado.Value) and (FornecedoresEstado.Value <> 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '2') then begin
                    ShowMessage('Natureza da operação invalida!'+#13+'Fornecedor de fora do estado.');
                    Abort;
                 End;
                 If (FornecedoresEstado.Value <> EmpresasEstado.Value) and (FornecedoresEstado.Value = 'EX') and (Copy(cCodigoNatureza.Text,1,1) <> '3') then begin
                    ShowMessage('Natureza da operação invalida!'+#13+'Fornecedor do exterior (Estado = EX).');
                    Abort;
                 End;
              End;
              If Dados.Natureza.Locate('Codigo', cCodigoNatureza.Text, [loCaseInsensitive]) = false then begin
                 MessageDlg('Erro!'+#13+#13+'Código de Natureza da Operação não "Cadastrado" ou "Desativado".', mtError, [mbOK], 0);
                 cCodigoNatureza.SetFocus;
              End;
              If cModalidade.ItemIndex = -1 then begin
                 ShowMessage('Modalidade de frete é campo obrigatório!'+#13+#13+'Selecione uma modalidade para salvar o pedido.');
                 cModalidade.SetFocus;
                 Abort;
              End;
              If (TipoNotaNFE_Estorno.AsBoolean) and (Trim(cJustificativa.Text) = '') then begin
                 MessageDlg('Para Notas Fiscais de "Estorno" é obrigatório informar a justificativa do estorno!', mtError, [mbOK], 0);
                 cJustificativa.SetFocus;
                 Abort;
              End;
              if Trim(cPgto.Text) = '' then begin
                 ShowMessage('"Tipo de Pagamento" não informado.');
                 cPgto.SetFocus;
                 Abort;
              end;
              if Trim(cFormaPgto.Text) = '' then begin
                 ShowMessage('"Forma de Pagamento" não informado.');
                 cFormaPgto.SetFocus;
                 Abort;
              end;

              PedidosData_Emissao.Value       := Date;
              PedidosDevolucao.Value          := TipoNotaFinalidade_Mercadoria.AsInteger = 2;
              PedidosNFE_Estorno.Value        := TipoNotaNFE_Estorno.AsBoolean;
              PedidosAjuste.Value             := TipoNotaNFE_Estorno.AsBoolean;
              PedidosSaida_Entrada.Value      := TipoNotaSaida_Entrada.AsInteger;
              PedidosApuracao_PISCOFINS.Value := TipoNotaApuracao_PISCOFINS.AsBoolean;

              ProcessosDOC.sql.clear;
              ProcessosDOC.sql.add('select * from ProcessosDocumentos where Processo = '+quotedstr(cProcesso.text));
              ProcessosDOC.open;
              ProcessosDOC.Locate('Processo', cProcesso.text, [loCaseInsensitive]);
              PedidosIncentivo_Fiscal.Value   := ProcessosDOCIncentivo_Fiscal.Value;
              PedidosDI.Value                 := ProcessosDOCNumero_Declaracao.Value;
              PedidosData_DI.Value            := ProcessosDOCData_DesembaracoDeclaracao.Value;
              ProcessosDOC.close;

              //If PedidosSaida_Entrada.Value = 0 then begin
              If mSaiEntra = 0 then begin
                 If PedidosFornecedor_Codigo.Value <= 0 then begin
                    MessageDlg('É necessário informar o "Fornecedor" !', mtError, [mbOK], 0);
                    cFornecedor.SetFocus;
                    Abort;
                 End;

                 PedidosEstado.Value         := FornecedoresEstado.Value;
                 PedidosCliente_Codigo.Value := 0;

                 Fornecedores.Locate('Codigo', PedidosFornecedor_Codigo.AsInteger, [loCaseInsensitive]);
                 If Trim(FornecedoresCNPJ.Value) <> '' then begin
                    PedidosDestinatario_CNPJ_CPF.Value := FornecedoresCNPJ.Value;
                    PedidosDestinatario_Juridica.Value := true;
                 end else begin
                    PedidosDestinatario_CNPJ_CPF.Value := FornecedoresCPF.Value;
                    PedidosDestinatario_Juridica.Value := false;
                 End;

                 PedidosDestinatario_Nome.Value          := FornecedoresNome.Value;
                 PedidosDestinatario_Rua.Value           := FornecedoresRua.Value;
                 PedidosDestinatario_RuaNumero.Value     := FornecedoresRua_Numero.Value;
                 PedidosDestinatario_Bairro.Value        := FornecedoresBairro.Value;
                 PedidosDestinatario_Municipio.Value     := FornecedoresMunicipio_Codigo.Value;
                 PedidosDestinatario_MunicipioNome.Value := FornecedoresMunicipio.Value;
                 PedidosDestinatario_Estado.Value        := FornecedoresEstado.Value;
                 PedidosDestinatario_CEP.Value           := FornecedoresCEP.Value;
                 PedidosDestinatario_Pais.Value          := FornecedoresPais.Value;
                 PedidosDestinatario_Telefone1.Value     := FornecedoresTelefone1.Value;

                 If FornecedoresIsento.AsBoolean = false then
                    PedidosDestinatario_IE.Value := FornecedoresInscricao_Estadual.Value
                 else
                    PedidosDestinatario_IE.Value := 'ISENTO';

              end else begin
                 If PedidosCliente_Codigo.Value <= 0 then begin
                    MessageDlg('É necessário informar o "Cliente" !', mtError, [mbOK], 0);
                    cCliente.SetFocus;
                    Abort;
                 End;

                 PedidosEstado.Value            := ClientesEstado.Value;
                 PedidosFornecedor_Codigo.Value := 0;

                 If Trim(ClientesCNPJ.Value) <> '' then begin
                    PedidosDestinatario_CNPJ_CPF.Value := ClientesCNPJ.Value;
                    PedidosDestinatario_Juridica.Value := true;
                 end else begin
                    PedidosDestinatario_CNPJ_CPF.Value := ClientesCPF.Value;
                    PedidosDestinatario_Juridica.Value := false;
                 End;

                 PedidosDestinatario_Nome.Value          := ClientesNome.Value;
                 PedidosDestinatario_Rua.Value           := ClientesRua.Value;
                 PedidosDestinatario_RuaNumero.Value     := ClientesRua_Numero.Value;
                 PedidosDestinatario_Bairro.Value        := ClientesBairro.Value;
                 PedidosDestinatario_Municipio.Value     := ClientesMunicipio_Codigo.Value;
                 PedidosDestinatario_MunicipioNome.Value := FornecedoresMunicipio.Value;
                 PedidosDestinatario_Estado.Value        := ClientesEstado.Value;
                 PedidosDestinatario_CEP.Value           := ClientesCEP.Value;
                 PedidosDestinatario_Pais.Value          := ClientesPais.Value;
                 PedidosDestinatario_Telefone1.Value     := ClientesTelefone1.Value;

                 If ClientesIsento.AsBoolean = false then
                    PedidosDestinatario_IE.Value := ClientesInscricao_Estadual.Value
                 else
                    PedidosDestinatario_IE.Value := 'ISENTO';
              End;

              // Em caso de novo registro adiciona todos os itens da nota de origem no pedido.
              If Pedidos.State = dsInsert then begin
                 tPedido.Open;
                 PedidosNumero.Value := tPedidoNumero.Value + 1;
                 tPedido.Close;

                 PedidosPedido_Nota.Value := EmpresasPedido_Nota.AsInteger + 1;
                 Empresas.Edit;
                          EmpresasPedido_Nota.Value := EmpresasPedido_Nota.Value + 1;
                 Empresas.Post;
              End;

              LogDados(Pedidos, '('+PedidosNumero.AsString+')  DEVOLUÇÃO/RETORNO/ESTORNO '+mSETexto[PedidosSaida_Entrada.AsInteger]+ ' de '+PedidosData_Emissao.AsString+' Processo nº '+PedidosProcesso.AsString, Pedidos.State);
           End;

           If Button = nbDelete then begin
              If MessageDlg('Deseja realmente excluir este pedido?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                 Screen.Cursor := crSQLWait;
                 PedidosItens.SQL.Clear;
                 PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE Pedido = :pPedido');
                 PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                 PedidosItens.Execute;
                 PedidosItens.SQL.Clear;
                 PedidosItens.SQL.Add('SELECT * FROM PedidosItens');
                 PedidosItens.Open;
                 Screen.Cursor := crDefault;

                  LogDados(Pedidos, '('+PedidosNumero.AsString+')  DEVOLUÇÃO/RETORNO/ESTORNO '+mSETexto[PedidosSaida_Entrada.AsInteger]+ ' de '+PedidosData_Emissao.AsString+' Processo nº '+PedidosProcesso.AsString, Pedidos.State);
              end else begin
                 Abort;
              End;
           End;
      End;
end;

procedure TPedido_Devolucao.bItensClick(Sender: TObject);
begin
      If mNFPropria = true then begin
         Pedido_DevolucaoItens := TPedido_DevolucaoItens.Create(Self);
         Pedido_DevolucaoItens.Caption := Caption;
         Pedido_DevolucaoItens.ShowModal;
      end else begin
         Pedido_DevolucaoItensTerceiros := TPedido_DevolucaoItensTerceiros .Create(Self);
         Pedido_DevolucaoItensTerceiros .Caption := Caption;
         Pedido_DevolucaoItensTerceiros .ShowModal;
      End;
end;

procedure TPedido_Devolucao.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image4.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image5.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image6.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image7.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image8.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image9.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image10.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image11.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image12.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image13.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TPedido_Devolucao.lNaturezaOperacaoClick(Sender: TObject);
begin
      Cadastro_NaturezaOperacao := TCadastro_NaturezaOperacao.Create(Self);
      Cadastro_NaturezaOperacao.Caption    := Caption;
      Cadastro_NaturezaOperacao.mTabAberta := true;
      Cadastro_NaturezaOperacao.ShowModal;
      Dados.PedidosNatureza_Codigo.Value := Menu_Principal.mMem_CFOP;
end;

procedure TPedido_Devolucao.lClienteClick(Sender: TObject);
begin
      Cadastro_Clientes := TCadastro_Clientes.Create(Self);
      Cadastro_Clientes.Caption    := Caption;
      Cadastro_Clientes.mTabAberta := true;
      Cadastro_Clientes.ShowModal;
      Dados.PedidosCliente_Codigo.Value := Menu_Principal.mMem_Cliente;

      with Dados do begin
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           Municipios.Open;
      end;
end;

procedure TPedido_Devolucao.lFornecedorClick(Sender: TObject);
begin
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.mTabAberta := true;
      Cadastro_Fornecedores.ShowModal;
      Dados.PedidosFornecedor_Codigo.Value := Menu_Principal.mMem_Fornecedor;

      with Dados do begin
           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           Municipios.Open;
      end;
end;

procedure TPedido_Devolucao.bVisualizarClick(Sender: TObject);
begin
      DANFE_RetratoVis.Print;
      DANFE_RetratoVis.FreeOnRelease;
      DANFE_RetratoVis.Reset;
end;

procedure TPedido_Devolucao.ppHeaderBand1BeforePrint(Sender: TObject);
{
begin
      With Dados, dmFiscal do Begin
           tVisualizar.SQL.Clear;
           tVisualizar.SQL.Add('SELECT * FROM Pedidos WHERE (Numero = :pPedido)');
           tVisualizar.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           tVisualizar.Open;

           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE (Pedido = :pPedido) ORDER BY Item');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.Open;

           PedidosFatura.SQL.Clear;
           PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE (Pedido = :pPedido) AND (Origem_Pedido = 1)');
           PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosFatura.Open;

           PedidosDuplicata.SQL.Clear;
           PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Fatura = :pFatura)');
           PedidosDuplicata.ParamByName('pFatura').AsInteger := PedidosFaturaPedido.Value;
           PedidosDuplicata.Open;

           Natureza.Open;
           Natureza.Locate('Codigo', PedidosNatureza_Codigo.Value, [loCaseInsensitive]);

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

           Clientes.Open;
           Clientes.Locate('Codigo', PedidosCliente_Codigo.Value, [loCaseInsensitive]);

           Fornecedores.Open;
           Fornecedores.Locate('Codigo', PedidosFornecedor_Codigo.Value, [loCaseInsensitive]);

           // Campos do cebeçalho visiveis apenas na primeira pagina.
           gDadosNF.Visible := DANFE_RetratoVis.PageNo = 1;

           if not Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]) then showmessage('erro de municipio');

           lRazaoSocial.Caption     := 'RECEBEMOS DE '+Trim(EmpresasRazao_Social.Value)+' OS PRODUTOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO.';
           lEmpresa.Caption         := Trim(EmpresasRazao_Social.Value);
           lEndereco.Caption        := Trim(EmpresasRua.Value) + ',Nº '+Trim(EmpresasRua_Numero.AsString)+', '+Trim(EmpresasComplemento.AsString);
           lBairroMunicipio.Caption := Trim(EmpresasBairro.Value)+', '+Trim(MunicipiosNome.Value)+' ('+Trim(EmpresasEstado.Value)+')   '+'CEP:'+FormatMaskText('#####-###;0',EmpresasCEP.Value);
           lCEP.Caption             := 'TEL:'+FormatMaskText('(##) #########;0', EmpresasTelefone1.Value)+'  FAX:'+FormatMaskText('(##) #########;0',EmpresasFAX.Value);
           lNumero.Caption          := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, PedidosNumero.AsInteger) );
           lNumero_Folha.Caption    := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, PedidosNumero.AsInteger) )+' FL'+InttoStr(DANFE_RetratoVis.PageNo)+'/'+InttoStr(DANFE_RetratoVis.PageCount);
           lIE.DisplayFormat        := EstadosMascara_Inscricao.Value;
           lNatureza.Caption        := TipoNotaDescricao_CFOP_Nota.AsString;
           lDestinatario_IE.Caption := Trim(PedidosDestinatario_IE.Value);
           If Trim(lNatureza.Caption) = '' then lNatureza.Caption := NaturezaDescricao_NF.AsString;

           If PedidosSaida_Entrada.Value = 0 then begin
              lSerie.Caption                  := 'Série: '+EmpresasNFEletronica_SerieEntrada.AsString;
              lSerie2.Caption                 := 'Série: '+EmpresasNFEletronica_SerieEntrada.AsString;
              lDestinatario_Nome.Caption      := Trim(FornecedoresNome.Value);
              lDestinatario_Rua.Caption       := Trim(FornecedoresRua.Value)+', Nº '+Trim(FornecedoresRua_Numero.Value);
              lDestinatario_Bairro.Caption    := Trim(FornecedoresBairro.Value);
              lDestinatario_CEP.Caption       := FormatMaskText('#####-###;0', FornecedoresCEP.Value);
              lDestinatario_Municipio.Caption := Trim(FornecedoresMunicipio.Value);
              lDestinatario_Telefone.Caption  := FormatMaskText('(##) #########;0', FornecedoresTelefone1.Value)+' / '+FormatMaskText('(##) #########;0', FornecedoresFax.Value);;
              lDestinatario_UF.Caption        := Trim(FornecedoresEstado.Value);
              If Trim(FornecedoresCNPJ.Value) <> '' then  begin
                 lDestinatario_CNPJ.Caption := FormatMaskText('##.###.###/####-##;0', FornecedoresCNPJ.Value);
              end else begin
                 lDestinatario_CNPJ.Caption := FormatMaskText('###.###.###-##;0', FornecedoresCPF.Value);
              end;
           end else begin
              lSerie.Caption                  := 'Série: '+EmpresasNFEletronica_Serie.AsString;
              lSerie2.Caption                 := 'Série: '+EmpresasNFEletronica_Serie.AsString;
              lDestinatario_Nome.Caption      := Trim(ClientesNome.Value);
              lDestinatario_Rua.Caption       := Trim(ClientesRua.Value)+', Nº '+Trim(ClientesRua_Numero.Value)+', '+Trim(ClientesComplemento.AsString);
              lDestinatario_Bairro.Caption    := Trim(ClientesBairro.Value);
              lDestinatario_CEP.Caption       := FormatMaskText('#####-###;0', ClientesCEP.Value);
              lDestinatario_Municipio.Caption := Trim(ClientesMunicipio.Value);
              lDestinatario_Telefone.Caption  := FormatMaskText('(##) #########;0', ClientesTelefone1.Value)+' / '+FormatMaskText('(##) #########;0', ClientesFax.Value);;
              lDestinatario_UF.Caption        := Trim(ClientesEstado.Value);
              If Trim(ClientesCNPJ.Value) <> '' then  begin
                 lDestinatario_CNPJ.Caption := FormatMaskText('##.###.###/####-##;0', ClientesCNPJ.Value);
              end else begin
                 lDestinatario_CNPJ.Caption := FormatMaskText('###.###.###-##;0', ClientesCPF.Value);
              end;
           End;

           // Dados do Transportador.
           lTransportador_CNPJ.Caption      := '';
           lTransportador_Nome.Caption      := '';
           lTransportador_Endereco.Caption  := '';
           lTransportador_Municipio.Caption := '';
           lTransportador_UF.Caption        := '';
           lTransportador_IE.Caption        := '';

           If PedidosTransportador_Codigo.Value <> 0 then begin
              Fornecedores.Locate('Codigo', PedidosTransportador_Codigo.Value, [loCaseInsensitive]);
              If Trim(FornecedoresCNPJ.Value) <> '' then
                 lTransportador_CNPJ.Caption := FormatMaskText('##.###.###/####-##;0', FornecedoresCNPJ.Value)
              else
                 lTransportador_CNPJ.Caption := FormatMaskText('###.###.###-##;0', FornecedoresCPF.Value);

              lTransportador_Nome.Caption      := Trim(FornecedoresNome.Value);
              lTransportador_Endereco.Caption  := Trim(FornecedoresRua.Value) + ',Nº '+Trim(FornecedoresRua_Numero.AsString)+', '+Trim(FornecedoresBairro.Value);
              lTransportador_Municipio.Caption := Trim(FornecedoresMunicipio.Value);
              lTransportador_UF.Caption        := Trim(FornecedoresEstado.Value);
              Estados.Locate('Codigo', FornecedoresEstado.Value, [loCaseInsensitive]);
              lTransportador_IE.Caption        := FormatMaskText(EstadosMascara_Inscricao.Value, FornecedoresInscricao_Estadual.Value);
           End;

           Rodape.PrintOnLastPage := DANFE_RetratoVis.PageCount = 1;
           Rodape.Visible         := DANFE_RetratoVis.PageNo = 1;
      End;
}
      Var
    mParcela : Integer;
begin
      With Dados, dmFiscal do Begin
           with tVisualizar do begin
                sql.Clear;
                sql.Add('select *');
                sql.add('      ,Inf_Compl = concat(Inf_Complementares, Inf_Complementares2)');
                sql.add('from Pedidos');
                sql.add('where Numero = :pPedido');
                parambyname('pPedido').AsInteger := PedidosNumero.Value;
                open;
           end;

           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE (Pedido = :pPedido) ORDER BY Item');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.Open;

           PedidosFatura.SQL.Clear;
           PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE (Pedido = :pPedido) AND (Origem_Pedido = 1)');
           PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosFatura.Open;

           PedidosDuplicata.SQL.Clear;
           PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Fatura = :pFatura) ORDER BY CAST(Duplicata AS int)');
           PedidosDuplicata.ParamByName('pFatura').AsInteger := PedidosFaturaPedido.Value;
           PedidosDuplicata.Open;

           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

           Natureza.Open;
           Natureza.Locate('Codigo', PedidosNatureza_Codigo.Value, [loCaseInsensitive]);

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

           Clientes.Open;
           Clientes.Locate('Codigo', PedidosCliente_Codigo.Value, [loCaseInsensitive]);

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores');
           Fornecedores.Open;
           Fornecedores.Locate('Codigo', PedidosFornecedor_Codigo.Value, [loCaseInsensitive]);

           // Campos do cebeçalho visiveis apenas na primeira pagina.
           gDadosNF.Visible               := DANFE_RetratoVis.PageNo = 1;
           lRazaoSocial.Caption           := 'RECEBEMOS DE '+Trim(EmpresasRazao_Social.Value)+' OS PRODUTOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO.';
           lEmpresa.Caption               := Trim(EmpresasRazao_Social.Value);
           lEndereco.Caption              := Trim(EmpresasRua.Value) + ',Nº '+Trim(EmpresasRua_Numero.AsString)+', '+Trim(EmpresasComplemento.AsString);
           lBairroMunicipio.Caption       := Trim(EmpresasBairro.Value)+', '+Trim(MunicipiosNome.Value)+' ('+Trim(EmpresasEstado.Value)+')   '+'CEP:'+FormatMaskText('#####-###;0',EmpresasCEP.Value);
           lCEP.Caption                   := 'TEL:'+FormatMaskText('(##) #########;0', EmpresasTelefone1.Value)+'  FAX:'+FormatMaskText('(##) #########;0',EmpresasFAX.Value);
           lSerie.Caption                 := 'Série: '+PoeZero(3,EmpresasNFEletronica_Serie.AsInteger);
           lSerie2.Caption                := 'Série: '+PoeZero(3,EmpresasNFEletronica_Serie.AsInteger);
           lNumero.Caption                := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, PedidosNumero.AsInteger) );
           lNumero_Folha.Caption          := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, PedidosNumero.AsInteger) )+' FL'+InttoStr(DANFE_RetratoVis.PageNo)+'/'+InttoStr(DANFE_RetratoVis.PageCount);
           lIE.DisplayFormat              := EstadosMascara_Inscricao.Value;
           lNatureza.Caption              := TipoNotaDescricao_CFOP_Nota.AsString;
           lDestinatario_Telefone.Caption := '';
           lDestinatario_IE.Caption       := Trim(PedidosDestinatario_IE.Value);

           If Trim(lNatureza.Caption) = '' then lNatureza.Caption := NaturezaDescricao_NF.AsString;

           // Dados do destinatário.
           lDestinatario_Nome.Caption      := PedidosDestinatario_Nome.AsString;
           lDestinatario_Rua.Caption       := Trim(PedidosDestinatario_Rua.Value)+', Nº '+Trim(PedidosDestinatario_RuaNumero.Value)+', '+Trim(PedidosDestinatario_Complemento.AsString);
           lDestinatario_Bairro.Caption    := Trim(PedidosDestinatario_Bairro.Value);
           lDestinatario_CEP.Caption       := FormatMaskText('#####-###;0', PedidosDestinatario_CEP.Value);
           lDestinatario_Municipio.Caption := AnsiUpperCase(Trim(PedidosDestinatario_MunicipioNome.Value));
           lDestinatario_Telefone.Caption  := FormatMaskText('(##) #########;0', PedidosDestinatario_Telefone1.Value);
           lDestinatario_UF.Caption        := Trim(PedidosDestinatario_Estado.Value);
           If PedidosDestinatario_Juridica.AsBoolean = true then begin
              lDestinatario_CNPJ.Caption := FormatMaskText('##.###.###/####-##;0', PedidosDestinatario_CNPJ_CPF.Value);
           end else begin
              lDestinatario_CNPJ.Caption := FormatMaskText('###.###.###-##;0', PedidosDestinatario_CNPJ_CPF.Value);
           end;

           // Endereço de entrega / Retirada.
           lTituloEntrega_Retirada.Caption := 'INFORMAÇÕES DO LOCAL DE ENTREGA/RETIRADA';
           lEntregaNome.Caption            := '';
           lEntregaCNPJ.Caption            := '';
           lEntregaIE.Caption              := '';
           lEntregaRua.Caption             := '';
           lEntregaBairro.Caption          := '';
           lEntregaCEP.Caption             := '';
           lEntregaMunicipio.Caption       := '';
           lEntregaUF.Caption              := '';
           lEntregaTelefone.Caption        := '';

           if PedidosEntrega_Retirada.AsString = 'E' then begin
              lTituloEntrega_Retirada.Caption := 'INFORMAÇÕES DO LOCAL DE ENTREGA';
              lEntregaNome.Caption      := Trim(ClientesRecebedor_Entrega.Value);
              if Trim(ClientesCNPJ_Entrega.Value) <> '' then
                 lEntregaCNPJ.Caption := FormatMaskText('##.###.###/####-##;0',ClientesCNPJ_Entrega.Value)
              else
                 lEntregaCNPJ.Caption := FormatMaskText('###.###.###-##;0',ClientesCPF_Entrega.Value);
              lEntregaIE.Caption        := Trim(ClientesIE_Entrega.Value);
              lEntregaRua.Caption       := Trim(ClientesRua_Entrega.Value)+', Nº '+Trim(ClientesRua_EntregaNumero.Value)+', '+Trim(ClientesRua_ComplEntrega.AsString);
              lEntregaBairro.Caption    := Trim(ClientesBairro_Entrega.AsString);
              lEntregaCEP.Caption       := FormatMaskText('#####-###;0', ClientesCEP_Entrega.Value);
              lEntregaMunicipio.Caption := AnsiUpperCase(Trim(ClientesMunicipio_EntregaNome.AsString));
              lEntregaUF.Caption        := Trim(ClientesEstado_Entrega.Value);
              lEntregaTelefone.Caption  := iif(Trim(ClientesTelefone_Entrega.AsString) <> '', FormatMaskText('(##) #########;0', ClientesTelefone_Entrega.Value), '');
           end;
           if PedidosEntrega_Retirada.AsString = 'R' then begin
              Municipios.Locate('Codigo', ClientesMunicipio_Retirada.Value, [loCaseInsensitive]);

              lTituloEntrega_Retirada.Caption := 'INFORMAÇÕES DO LOCAL DE RETIRADA';
              lEntregaNome.Caption      := Trim(ClientesExpedidor_Retirada.Value);
              if Trim(ClientesCNPJ_Retirada.Value) <> '' then
                 lEntregaCNPJ.Caption := FormatMaskText('##.###.###/####-##;0',ClientesCNPJ_Retirada.Value)
              else
                 lEntregaCNPJ.Caption := FormatMaskText('###.###.###-##;0',ClientesCPF_Retirada.Value);

              lEntregaIE.Caption        := Trim(ClientesIE_Retirada.Value);
              lEntregaRua.Caption       := Trim(ClientesRua_Retirada.Value)+', Nº '+Trim(ClientesRua_NumeroRetirada.Value)+', '+Trim(ClientesRua_ComplRetirada.AsString);
              lEntregaBairro.Caption    := Trim(ClientesBairro_Retirada.AsString);
              lEntregaCEP.Caption       := FormatMaskText('#####-###;0', ClientesCEP_Retirada.Value);
              lEntregaMunicipio.Caption := AnsiUpperCase(Trim(MunicipiosNome.AsString));
              lEntregaUF.Caption        := Trim(ClientesEstado_Retirada.Value);
              lEntregaTelefone.Caption  := iif(Trim(ClientesTelefone_Retirada.AsString) <> '', FormatMaskText('(##) #########;0', ClientesTelefone_Retirada.Value), '');
           end;

           // Zera os valores do labels.
           ZerarDupl;

           // Dados do Transportador.
           lTransportador_CNPJ.Caption      := '';
           lTransportador_Nome.Caption      := '';
           lTransportador_Endereco.Caption  := '';
           lTransportador_Municipio.Caption := '';
           lTransportador_UF.Caption        := '';
           lTransportador_IE.Caption        := '';

           If PedidosTransportador_Codigo.Value <> 0 then begin
              Fornecedores.Locate('Codigo', PedidosTransportador_Codigo.Value, [loCaseInsensitive]);
              If Trim(FornecedoresCNPJ.Value) <> '' then
                 lTransportador_CNPJ.Caption := FormatMaskText('##.###.###/####-##;0', FornecedoresCNPJ.Value)
              else
                 lTransportador_CNPJ.Caption := FormatMaskText('###.###.###-##;0', FornecedoresCPF.Value);

              lTransportador_Nome.Caption      := Trim(FornecedoresNome.Value);
              lTransportador_Endereco.Caption  := Trim(FornecedoresRua.Value) + ',Nº '+Trim(FornecedoresRua_Numero.AsString)+', '+Trim(FornecedoresBairro.Value);
              lTransportador_Municipio.Caption := Trim(FornecedoresMunicipio.Value);
              lTransportador_UF.Caption        := Trim(FornecedoresEstado.Value);
              Estados.Locate('Codigo', FornecedoresEstado.Value, [loCaseInsensitive]);
              lTransportador_IE.Caption        := FormatMaskText(EstadosMascara_Inscricao.Value, FornecedoresInscricao_Estadual.Value);
           End;

           ppDBText7.Visible  := not TipoNota.FieldByName('TTD').AsBoolean;
           ppDBText33.Visible := not TipoNota.FieldByName('TTD').AsBoolean;

//           lInf_Complementares.Text  := tVisualizar.FieldByName('Inf_Complementares').AsString+#13+tVisualizar.FieldByName('Inf_Complementares2').AsString;

           Rodape.PrintOnLastPage := DANFE_RetratoVis.PageCount = 1;
           Rodape.Visible         := DANFE_RetratoVis.PageNo = 1;
      End;

end;

procedure TPedido_Devolucao.ppDetailBand2BeforePrint(Sender: TObject);
begin
      // Limpando codigos de controle da descrição do item.
      lItem_CST.Caption := '';
      lItem_CST.Caption := Trim(Dados.PedidosItens.FieldByName('CodigoTrib_TabA').AsString)+Trim(Dados.PedidosItens.FieldByName('CodigoTrib_TabB').AsString);

//      If Trim(Dados.PedidosItens.FieldByName('Codigo_Fabricante').AsString) = '' then
//         lCodigo.DataField := 'Codigo_Mercadoria'
//      else
//         lCodigo.DataField := 'Codigo_Fabricante';

      if Dados.ConfiguracaoNFE_DANFE_CodigoProduto.Asstring = 'I' then
         lCodigo.DataField := 'Codigo_Mercadoria'
      else
         lCodigo.DataField := 'Codigo_Fabricante';

      pQuantidade.Visible := Dados.TipoNotaVisiveis_QuantidadeItem.AsBoolean;
end;

procedure TPedido_Devolucao.DANFE_RetratoVis_OldBeforePrint(Sender: TObject);
begin
      if FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         iLogo.Width := Dados.EmpresasLogomarca_Largura.Value;
         iLogo.Left  := (lQuadroEmpresa.Width - Dados.EmpresasLogomarca_Largura.Value)/2;
      end;
end;

procedure TPedido_Devolucao.cTipoNotaExit(Sender: TObject);
begin
      with dados do begin
           mSaiEntra := TipoNotaSaida_Entrada.Value;
           lJustificativa.Enabled := TipoNotaNFE_Estorno.AsBoolean;
           cJustificativa.Enabled := TipoNotaNFE_Estorno.AsBoolean;
           cFornecedor.Enabled    := TipoNotaSaida_Entrada.Value = 0;
           lFornecedor.Enabled    := TipoNotaSaida_Entrada.Value = 0;
           cCliente.Enabled       := TipoNotaSaida_Entrada.Value = 1;
           lCliente.Enabled       := TipoNotaSaida_Entrada.Value = 1;

           Natureza.Close;
           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza');
           Natureza.SQL.Add('WHERE Ativo = 1');
           Natureza.SQL.Add('  AND Saida_Entrada = :pSaiEntra');
           Natureza.SQL.Add('  AND (Codigo IN(SELECT DISTINCT Codigo_Devolucao FROM Natureza) OR Codigo IN(SELECT DISTINCT Codigo_Estorno FROM Natureza))');
           Natureza.ParamByName('pSaiEntra').AsInteger := TipoNotaSaida_Entrada.Value;
           Natureza.Open;
      end;
end;

procedure TPedido_Devolucao.lTransportadorClick(Sender: TObject);
begin
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.mTabAberta := true;
      Cadastro_Fornecedores.ShowModal;
      Dados.PedidosTransportador_Codigo.Value := Menu_Principal.mMem_Fornecedor;
end;

procedure TPedido_Devolucao.ZerarDupl;
var
   Obj:TObject;
   i:Integer;
begin
      for i := 1 to 24 do begin
          // Zera o numero da duplicata.
          Obj := FindComponent('lNumDupl'+InttoStr(i));
          if Obj <> nil then (Obj as TppLabel).Caption := '';
          // Zera a data da duplicata.
          Obj := FindComponent('lDataDupl'+InttoStr(i));
          if Obj <> nil then (Obj as TppLabel).Caption := '';
          // Zera o valor da duplicata.
          Obj := FindComponent('lValorDupl'+InttoStr(i));
          if Obj <> nil then (Obj as TppLabel).Caption := '';
      end;
      Obj.Free;
end;


end.
