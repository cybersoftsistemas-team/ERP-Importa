unit frmPedido_ItensOutros;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Grids, DBGrids,
    RXDBCtrl, Mask, DB, Funcoes, DBAccess, MSAccess, CalcExpress, Vcl.ComCtrls, Buttons, Math, Menus, strUtils, RxCurrEdit, MemDS, RxToolEdit, system.UITypes, ClipBrd;

type
    TDBGridDescendant = class(TDBGrid);
    TPedido_ItensOutros = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    gItens: TGroupBox;
    GradeItens: TDBGrid;
    tItem: TMSQuery;
    tPesquisa: TMSQuery;
    mMacro: TCalcExpress;
    bRatear: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    StaticText8: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cQuantidade: TDBEdit;
    cValorUnitario: TDBEdit;
    cProduto: TDBLookupComboBox;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    cAliquotaICMSOper: TDBEdit;
    cValorICMSOper: TDBEdit;
    StaticText3: TStaticText;
    cAliquotaIPI: TDBEdit;
    cValorIPI: TDBEdit;
    StaticText6: TStaticText;
    cAliquotaICMSSub: TDBEdit;
    cValorICMSSub: TDBEdit;
    cBCICMSSub: TDBEdit;
    cBCICMS: TDBEdit;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    cCSTPIS: TDBEdit;
    StaticText31: TStaticText;
    cCSTIPI: TDBEdit;
    StaticText32: TStaticText;
    cCSTCOFINS: TDBEdit;
    cBCIPI: TDBEdit;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    cAliquotaPIS: TDBEdit;
    cValorPIS: TDBEdit;
    StaticText14: TStaticText;
    cAliquotaCOFINS: TDBEdit;
    cValorCOFINS: TDBEdit;
    cValorTotal: TDBEdit;
    StaticText11: TStaticText;
    DBEdit1: TDBEdit;
    StaticText7: TStaticText;
    StaticText13: TStaticText;
    DBEdit4: TDBEdit;
    cTabA: TDBEdit;
    cTabB: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    StaticText12: TStaticText;
    cNCM: TDBEdit;
    StaticText15: TStaticText;
    cUnidade: TDBEdit;
    GradeProdutos: TDBGrid;
    cPesquisa: TEdit;
    StaticText16: TStaticText;
    DBEdit3: TDBEdit;
    StaticText18: TStaticText;
    cValorDesconto: TDBEdit;
    cLucro: TDBEdit;
    cPercentualDesconto: TDBEdit;
    bRemover: TButton;
    StaticText19: TStaticText;
    DBEdit6: TDBEdit;
    tEntradaST: TMSQuery;
    StaticText20: TStaticText;
    cProcesso: TDBLookupComboBox;
    tBCR: TMSQuery;
    cFormulaI: TMemo;
    cMVA: TDBEdit;
    StaticText21: TStaticText;
    Progresso: TProgressBar;
    StaticText22: TStaticText;
    DBEdit12: TDBEdit;
    GroupBox1: TGroupBox;
    cMinimo: TCurrencyEdit;
    StaticText23: TStaticText;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    tDisponivel: TMSQuery;
    StaticText24: TStaticText;
    DBEdit9: TDBEdit;
    StaticText25: TStaticText;
    DBEdit19: TDBEdit;
    lTotalNota: TStaticText;
    cTotalNota: TDBEdit;
    StaticText26: TStaticText;
    DBEdit20: TDBEdit;
    StaticText27: TStaticText;
    DBEdit21: TDBEdit;
    cBCPIS: TDBEdit;
    cBCCOFINS: TDBEdit;
    cDisponivelDetalhe: TCurrencyEdit;
    bDetalhe: TButton;
    cICMS: TDBCheckBox;
    StaticText28: TStaticText;
    StaticText33: TStaticText;
    bImportar: TButton;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    DBEdit2: TDBEdit;
    cVolumes: TCheckBox;
    bSeriais: TButton;
    StaticText34: TStaticText;
    cNatureza: TDBLookupComboBox;
    cCodigoNatureza: TDBEdit;
    tCFOP: TMSQuery;
    dstCFOP: TDataSource;
    tCFOPCodigo: TStringField;
    tCFOPDescricao_NF: TStringField;
    cNotaRef: TDBEdit;
    DBDateEdit4: TDBDateEdit;
    bLote: TButton;
    StaticText35: TStaticText;
    DBEdit5: TDBEdit;
    StaticText36: TStaticText;
    DBEdit7: TDBEdit;
    StaticText37: TStaticText;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    StaticText38: TStaticText;
    StaticText17: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    cLucro2: TCurrencyEdit;
    cValorLucro2: TCurrencyEdit;
    cInventario: TCurrencyEdit;
    StaticText42: TStaticText;
    Button1: TButton;
    cDisponivel: TCurrencyEdit;
    DBEdit14: TDBEdit;
    StaticText43: TStaticText;
    bPesquisa: TButton;
    StaticText44: TStaticText;
    DBEdit17: TDBEdit;
    StaticText45: TStaticText;
    DBEdit18: TDBEdit;
    DBEdit22: TDBEdit;
    StaticText46: TStaticText;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    cBCICMSMono: TDBEdit;
    StaticText47: TStaticText;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    bPesqNav: TSpeedButton;
    StaticText48: TStaticText;
    cNavio: TDBLookupComboBox;
    StaticText49: TStaticText;
    cEstoqueNavio: TCurrencyEdit;
    tTemp: TMSQuery;
    StaticText50: TStaticText;
    DBEdit25: TDBEdit;
    DBEdit29: TDBEdit;
    StaticText51: TStaticText;
    DBEdit30: TDBEdit;
    StaticText52: TStaticText;
    DBEdit31: TDBEdit;
    StaticText53: TStaticText;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    StaticText56: TStaticText;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    StaticText57: TStaticText;
    DBEdit40: TDBEdit;
    StaticText58: TStaticText;
    DBEdit41: TDBEdit;
    StaticText59: TStaticText;
    cAliquotaIBS: TDBEdit;
    cValorIBS: TDBEdit;
    StaticText60: TStaticText;
    cAliquotaCBS: TDBEdit;
    cValorCBS: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    cBCIBS: TDBEdit;
    cBCCBS: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: vcl.Controls.THintInfo);
    procedure cBCIPIChange(Sender: TObject);
    procedure cCodigoExit(Sender: TObject);
    procedure cValorTotalChange(Sender: TObject);
    procedure cValorICMSOperChange(Sender: TObject);
    procedure cProdutoExit(Sender: TObject);
    procedure GradeProdutosDblClick(Sender: TObject);
    procedure StaticText8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure bRemoverClick(Sender: TObject);
    procedure cValorUnitarioExit(Sender: TObject);
    procedure cValorIPIChange(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure Recalcula;
    procedure bRatearClick(Sender: TObject);
    procedure cPercentualDescontoExit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure CalculoBCR;
    procedure cQuantidadeExit(Sender: TObject);
    procedure cAliquotaICMSSubChange(Sender: TObject);
    procedure ApuraEstoque;
    procedure cProdutoClick(Sender: TObject);
    procedure bDetalheClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure bSeriaisClick(Sender: TObject);
    procedure cBCPISExit(Sender: TObject);
    procedure cBCICMSExit(Sender: TObject);
    procedure bLoteClick(Sender: TObject);
    procedure cAliquotaICMSOperExit(Sender: TObject);
    procedure PegaValorUni;
    function  ChecaValor: Boolean;
    procedure cLucroExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure bPesqNavClick(Sender: TObject);
    procedure cNavioClick(Sender: TObject);
    procedure cTabAExit(Sender: TObject);
    procedure cTabBExit(Sender: TObject);
    procedure cValorCBSChange(Sender: TObject);
    procedure cValorIBSChange(Sender: TObject);
  private
    procedure CalculaFCP(pAliquotaDIFAL: real);
    { Private declarations }
  public
    { Public declarations }
    mVlrMinimo
   ,mAliqDif
   ,mAliquotaDIFAL
   ,mQuantidade : Real;
    mFim: Boolean;
    Function CalculaMacro(Campo:String):Real;
    Function CalculoReverso: real;
  end;

var
  Pedido_ItensOutros: TPedido_ItensOutros;

implementation

uses frmDados, frmDMFiscal, frmPedido_ItensOutrosValorRateio, frmPedido_Outros, frmCadastro_ICMS, frmPedido_ItensOutrosDetalhe, frmPedidosOutra_TerceirosReferenciaItens,
     frmPedido_ItensOutrosSeriais, frmPedidosOutra_LoteItens, frmMenu_Principal, frmPedidosOutra_ProprioReferenciaItens, frmPesquisaGerais;

{$R *.dfm}
                                                
procedure TPedido_ItensOutros.bSairClick(Sender: TObject);
begin
      mFim := true;
      Close;
end;

procedure TPedido_ItensOutros.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     PageControl1.ActivePageIndex := 0;
     mFim := false;
     cFormulaI.visible := false;
     cFormulaI.Hide;

     With Dados, dmFiscal do begin
          PedidosItens.SQL.Clear;
          PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido) ORDER BY Item');
          PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
          PedidosItens.Open;

          // Quantidade de itens adicionados ao pedido.
          tItem.SQL.Clear;
          tItem.SQL.Add('SELECT COUNT(*) AS Qtde FROM PedidosItens WHERE(Pedido = :pPedido)');
          tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
          tItem.Open;
          gItens.Caption := 'Itens do Pedido '+PedidosNumero.AsString + ' ['+PoeZero(4, tItem.FieldByName('Qtde').AsInteger)+']';
          tItem.Close;

          Application.ProcessMessages;

          NotasItens.SQL.Clear;
          NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE Nota = :pNota AND Data = :pData AND Codigo_Mercadoria = :pCodigo');
          NotasItens.ParamByName('pNota').AsInteger   := PedidosNota_Referencia.AsInteger;
          NotasItens.ParamByName('pData').AsDate      := PedidosData_Referencia.AsDateTime;
          NotasItens.ParamByName('pCodigo').Asinteger := PedidosItensCodigo_Mercadoria.AsInteger;
          NotasItens.Open;

          Produtos.SQL.Clear;
          If (TipoNotaMovimenta_Estoque.AsBoolean = true) and (Pedido_Outros.mSai_Entra = 1) then begin
             Produtos.SQL.Add('SELECT *');
             Produtos.SQL.Add('FROM   Produtos PD');
             Produtos.SQL.Add('WHERE ISNULL(Desativado, 0) = 0');
             Produtos.SQL.Add('  AND ((ISNULL((SELECT SUM(Quantidade) FROM NotasItens NI           WHERE(NI.Codigo_Mercadoria  = PD.Codigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1)AND (ISNULL(NI.Nfe_Denegada,0) = 0)), 0) +');
             Produtos.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens NTI WHERE(NTI.Codigo_Mercadoria = PD.Codigo) AND (Movimenta_Estoque = 1)), 0) +');
             Produtos.SQL.Add('        ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada = PD.Codigo) ), 0) -');
             Produtos.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens NI           WHERE(NI.Codigo_Mercadoria  = PD.Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NI.Nfe_Denegada, 0) = 0)), 0) -');
             Produtos.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens PI         WHERE(PI.Codigo_Mercadoria  = PD.Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND(Pedido <> :pPedido) ), 0))-');
             Produtos.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia   WHERE(Produto_Saida = PD.Codigo) ), 0)');
             Produtos.SQL.Add('        ) > 0');
             Produtos.ParamByName('pPedido').AsInteger := PedidosItensPedido.AsInteger;
          end else begin
             Produtos.SQL.Add('SELECT * FROM Produtos');
          End;
          Produtos.SQL.Add('ORDER BY Descricao_Reduzida');
          Produtos.Open;

          CSTTabelaB.SQL.Clear;
          CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY Classificacao');
          CSTTabelaB.Open;

          CSTIPI.SQL.Clear;
          if PedidosSaida_Entrada.AsInteger = 0 then begin
             CSTIPI.SQL.Add('SELECT * FROM CSTIPI WHERE Codigo <= ''49'' OR Codigo = ''A0'' ORDER BY Descricao');  // Entrada.
          end else begin
             CSTIPI.SQL.Add('SELECT * FROM CSTIPI WHERE Codigo >= ''50'' OR Codigo = ''A0'' ORDER BY Descricao');  // Saida.
          end;
          CSTIPI.Open;

          CSTPIS.SQL.Clear;
          if PedidosSaida_Entrada.AsInteger = 0 then begin
             CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE Codigo >= 50 ORDER BY Descricao');                         // Entrada.
          end else begin
             CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE (Codigo <= 49 OR Codigo = 99) ORDER BY Descricao');        // Saída.
          end;
          CSTPIS.Open;

          CSTCOFINS.SQL.Clear;
          if PedidosSaida_Entrada.AsInteger = 0 then begin
             CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE Codigo >= 50 ORDER BY Descricao');                   // ENTRADA.
          end else begin
             CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE (Codigo <= 49 OR Codigo = 99) ORDER BY Descricao');  // SAIDA.
          end;
          CSTCOFINS.Open;

          ICMS.SQL.Clear;
          ICMS.SQL.Add('SELECT * FROM ICMS');
          ICMS.Open;

          Estados.SQL.Clear;
          Estados.SQL.Add('SELECT * FROM Estados');
          Estados.Open;

          Campos.SQL.Clear;
          Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
          Campos.Open;

          tCFOP.SQL.Clear;
          tCFOP.SQL.Add('SELECT Codigo, Descricao_NF');
          tCFOP.SQL.Add('FROM   Natureza');
          tCFOP.SQL.Add('WHERE  SUBSTRING(Codigo,1,1) = :pCodigo');
          tCFOP.SQL.Add('AND    Ativo = 1');
          tCFOP.ParamByName('pCodigo').AsString := Copy(Pedidos.FieldByName('Natureza_Codigo').AsString, 1, 1);
          tCFOP.SQL.Add('ORDER  BY Codigo');
          tCFOP.Open;

          with CSTIBS do begin
               sql.clear;
               sql.add('select * from CSTIBS order by Codigo');
               Open;
          end;
          with CSTCBS do begin
               sql.clear;
               sql.add('select * from CSTCBS order by Codigo');
               Open;
          end;

          cVolumes.Checked            := PedidosCalcula_Volumes.AsBoolean;
          lTotalNota.Visible          := TipoNotaComplementar.AsBoolean;
          cTotalNota.Visible          := TipoNotaComplementar.AsBoolean;
          cPercentualDesconto.Enabled := UpperCase(PedidosDesconto_Tipo.AsString) <> UpperCase('COMERCIAL  - Valor Unitario');
          cValorDesconto.Enabled      := UpperCase(PedidosDesconto_Tipo.AsString) <> UpperCase('COMERCIAL  - Valor Unitario');
          Navega.Controls[6].Enabled  := PedidosItens.RecordCount > 0;
     End;
     Screen.Cursor := crDefault;
end;

procedure TPedido_ItensOutros.FormClose(Sender: TObject;var Action: TCloseAction);
Var
    mVolume_PesoLiquido,
    mVolume_PesoBruto,
    mAliquota_ICMSOper, 
    mRateioFrete,       
    mVolumes: real;
    //mAliquotaDIFAL: real;
    
    mBCIPI,
    mValor_TotalIPI,
    mValor_IPIDevol,
    mBCICMS,                
    mValorICMS,
    mValor_TotalProdutos,   
    mValorICMS_Substitutivo,
    mBCICMS_Substitutivo,   
    mValorICMS_Reducao,
    mValor_TotalMVA,
    mValor_PIS,
    mValor_COFINS,
    mValor_PISST,
    mValor_COFINSST,
    mValor_BCII,
    mValor_TotalII,
    mValor_TotalDespesas,
    mTotalFrete,
    mOutrasICMS,
    mIsentasICMS,
    mOutrasIPI,
    mIsentasIPI,
    mTotalDescontos,
    mMediaBCR,
    mTotalNota,
    mBCPIS,
    mBCPISST,
    mTotalImpostos,
    mTotalLucro,
    mValorBCICMSDest,
    mValorICMSDest,
    mDIFALValor,
    mBCDIFAL,
    mDIFALValorOrig,
    mDIFALValorDest,
    mFCPValorDest,
    mFCPICMSDest,
    mFCPICMSOrig,
    mFCPDest,
    mFCPOrig,
    mBCFCP,
    mValorFCP,
    mBCFCPST,
    mValorFCPST,
    mValorICMSDif,
    mValor_BCICMSMono,
    mValor_BCICMSMonoRet,
    mValor_ICMSMono,
    mValor_ICMSMonoRet,
    mValorICMSDeson,
    mValor_BCCBS,
    mValor_CBS,
    mValor_BCIBS,
    mValor_IBS,
    mValor_BCIS,
    mValor_IS,
    mValor_BCICMSPresumido,
    mValor_ICMSPresumido: Currency;
    
    mRateioDespesa: Double;
    mTextoLimpo: WideString;
    mUF: String;
begin
        Screen.Cursor := crSQLWait;
        Application.ProcessMessages;
        mFim := true;
        //cFormulaI.Show;
        cFormulaI.Hide;

        mBCIPI                  := 0;
        mValor_TotalIPI         := 0;
        mValor_IPIDevol         := 0;
        mBCICMS                 := 0;
        mValorICMS              := 0;
        mValor_TotalProdutos    := 0;
        mAliquota_ICMSOper      := 0;
        mValorICMS_Substitutivo := 0;
        mBCICMS_Substitutivo    := 0;
        mValorICMS_Reducao      := 0;
        mValor_TotalMVA         := 0;
        mVolume_PesoLiquido     := 0;
        mVolume_PesoBruto       := 0;
        mValor_PIS              := 0;
        mValor_COFINS           := 0;
        mValor_PISST            := 0;
        mValor_COFINSST         := 0;
        mValor_BCII             := 0;
        mValor_TotalII          := 0;
        mValor_TotalDespesas    := 0;
        mVolumes                := 0;
        mOutrasICMS             := 0;
        mIsentasICMS            := 0;
        mOutrasIPI              := 0;
        mIsentasIPI             := 0;
        mTotalDescontos         := 0;
        mMediaBCR               := 0;
        mTotalNota              := 0;
        mBCPIS                  := 0;
        mBCPISST                := 0;
        mTotalImpostos          := 0;
        mRateioDespesa          := 0;
        mTotalLucro             := 0;
        mValorBCICMSDest        := 0;
        mValorICMSDest          := 0;
        mBCDIFAL                := 0;
        mDIFALValor             := 0;
        mDIFALValorOrig         := 0;
        mDIFALValorDest         := 0;
        mFCPValorDest           := 0;
        mFCPICMSDest            := 0;
        mFCPICMSOrig            := 0;
        mTotalFrete             := 0;
        mBCFCP                  := 0;
        mValorFCP               := 0;
        mBCFCPST                := 0;
        mValorFCPST             := 0;
        mValorICMSDeson         := 0;
        mValorICMSDif           := 0;
        mValor_BCICMSMono       := 0;
        mValor_BCICMSMonoRet    := 0;
        mValor_ICMSMono         := 0;
        mValor_ICMSMonoRet      := 0;
        mValor_BCICMSPresumido  := 0;
        mValor_ICMSPresumido    := 0;
        mValor_BCCBS            := 0;
        mValor_CBS              := 0;
        mValor_BCIBS            := 0;
        mValor_IBS              := 0;
        mValor_BCIS             := 0;
        mValor_IS               := 0;

        // Calcula todos os campos de valores totais do pedido.
        With Dados, dmFiscal do Begin
             Pedidos.DisableControls;
             PedidosItens.DisableControls;
             Produtos.DisableControls;

             // Zerando os campos de totais do pedido.
             Pedidos.Edit;
                     PedidosValor_TotalProdutos.Value    := 0;
                     PedidosTotal_Descontos.Value        := 0;
                     PedidosBCIPI.Value                  := 0;
                     PedidosValor_TotalIPI.Value         := 0;
                     PedidosValor_IPIDevol.Value         := 0;
                     PedidosBCICMS.Value                 := 0;
                     PedidosValor_ICMS.Value             := 0;
                     PedidosBCICMS_Substitutivo.Value    := 0;
                     PedidosValorICMS_Substitutivo.Value := 0;
                     PedidosValor_ICMSReducao.Value      := 0;
                     PedidosValor_Seguro.Value           := 0;
                     PedidosValor_TotalNota.Value        := 0;
                     PedidosValor_TotalMVA.Value         := 0;
                     PedidosVolume_PesoLiquido.Value     := 0;
                     PedidosValor_PIS.Value              := 0;
                     PedidosValor_COFINS.Value           := 0;
                     PedidosValor_BCII.Value             := 0;
                     PedidosValor_TotalII.Value          := 0;
                     PedidosValor_OutrasICMS.Value       := 0;
                     PedidosValor_IsentasICMS.Value      := 0;
                     PedidosValor_OutrasIPI.Value        := 0;
                     PedidosValor_IsentasIPI.Value       := 0;
                     PedidosMedia_BCR.Value              := 0;
                     PedidosValor_BCPIS.Value            := 0;
                     PedidosTotal_Impostos.Value         := 0;
                     PedidosLucro_Valor.Value            := 0;
                     PedidosValor_BCICMSDest.Value       := 0;
                     PedidosValor_ICMSDest.Value         := 0;
                     PedidosValor_BCDIFAL.Value          := 0;
                     PedidosDIFAL_Valor.Value            := 0;
                     PedidosDIFAL_ValorOrig.Value        := 0;
                     PedidosDIFAL_ValorDest.Value        := 0;
                     PedidosFCP_ValorDest.Value          := 0;
                     PedidosFCP_ICMSDest.Value           := 0;
                     PedidosFCP_ICMSOrig.Value           := 0;
                     PedidosDIFAL_AliqInterna.Value      := 0; 
                     PedidosValor_BCFCPST.Value          := 0;
                     PedidosValor_FCPST.Value            := 0;
                     PedidosValor_ICMSDesonerado.Value   := 0;
                     PedidosValor_ICMSDif.Value          := 0;
                     PedidosValor_BCICMSMono.Value       := 0;
                     PedidosValor_ICMSMono.Value         := 0;
                     PedidosValor_BCICMSMonoRet.Value    := 0;
                     PedidosValor_ICMSMonoRet.Value      := 0;
                     PedidosValor_BCICMSPresumido.Value  := 0;
                     PedidosValor_ICMSPresumido.Value    := 0;
                     PedidosValor_BCCBS.Value            := 0;
                     PedidosValor_CBS.Value              := 0;
                     PedidosValor_BCIBS.Value            := 0;
                     PedidosValor_IBS.Value              := 0;
                     PedidosValor_BCIS.Value             := 0;
                     PedidosValor_IS.Value               := 0;
             Pedidos.Post;

             Progresso.Max      := PedidosItens.RecordCount;
             Progresso.Position := 0;
             Progresso.Visible  := true;

             // Exclui todos os itens com valor unitario <= 0.
             If (TipoNotaComplementar.AsBoolean = false) and (TipoNotaBaixa_Estoque.AsBoolean = false) then begin
                PedidosItens.SQL.Clear;
                PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE (Pedido = :pPedido) AND (Valor_Unitario <= 0) OR (Pedido IS NULL)');
                PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                PedidosItens.Execute;
                PedidosItens.SQL.Clear;
                PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido) ORDER BY Item');
                PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                PedidosItens.Open;
             End;

             // Ajusta Isentas e outras de nota complementar.
             If TipoNotaComplementar.AsBoolean then begin
                PedidosItens.SQL.Clear;
                PedidosItens.SQL.Add('UPDATE PedidosItens SET Valor_OutrasICMS = Valor_Despesa');
                PedidosItens.SQL.Add('                       ,Valor_OutrasIPI  = Valor_Despesa');
                PedidosItens.SQL.Add('WHERE Pedido = :pPedido');
                PedidosItens.SQL.Add('AND   (ISNULL(Valor_IsentasICMS, 0)+ISNULL(Valor_IsentasIPI, 0)+ISNULL(Valor_OutrasICMS, 0)+ISNULL(Valor_OutrasIPI, 0)) = 0');
                PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                PedidosItens.Execute;
                PedidosItens.SQL.Clear;
                PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido) ORDER BY Item');
                PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                PedidosItens.Open;
             End;

             // Totaliza os pesos dos produtos para rateio do frete para os itens.
             tItem.SQL.Clear;
             tItem.SQL.Add('SELECT ISNULL(SUM(Peso_Liquido * Quantidade),0) AS Peso_Total FROM PedidosItens WHERE(Pedido = :pPedido)');
             tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
             tItem.Open;

             mRateioFrete := 0;
             If tItem.FieldByName('Peso_Total').AsFloat > 0 then begin
                mRateioFrete := (PedidosTotal_Frete.Value / tItem.FieldByName('Peso_Total').AsFloat);
             End;

             // Totaliza o valor dos produtos para rateio de "Outras Despesas Acessórias".
             tItem.SQL.Clear;
             tItem.SQL.Add('SELECT ISNULL(SUM(Valor_Total),0) AS Valor_Total FROM PedidosItens WHERE(Pedido = :pPedido)');
             tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
             tItem.Open;

             If tItem.FieldByName('Valor_Total').AsFloat > 0 then begin
                mRateioDespesa := (PedidosValor_OutrasDespesas.Value / tItem.FieldByName('Valor_Total').Value);
             End;

             ICMS.Locate('UF', PedidosDestinatario_Estado.AsString, [loCaseInsensitive]);
             Configuracao.Open;

             If PedidosItens.RecordCount <> 0 then begin
                PedidosItens.First;

                While not PedidosItens.Eof do Begin
                      Produtos.SQL.Clear;
                      Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo = :pCodigo');
                      Produtos.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.Value;
                      PRodutos.Open;

                      PedidosItens.Edit;
                                   mValor_TotalProdutos := mValor_TotalProdutos + RoundTo(PedidosItensValor_Total.Value, -2);

                                   // Executa o rateio das despesas caso tenha sido informado na capa do pedido.
                                   If PedidosRatear_Despesa.AsBoolean then begin
                                      PedidosItensValor_Despesa.Value := Roundto(PedidosItensValor_Unitario.Value * mRateioDespesa, -8);
                                   End;

                                   If PedidosItensQuantidade.AsFloat > 0 then begin
                                      If ProdutosTipo_Conversao.Value <> 'M' then
                                         mValor_TotalDespesas := mValor_TotalDespesas + Roundto((PedidosItensValor_Despesa.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -2)
                                      else
                                         mValor_TotalDespesas := mValor_TotalDespesas + Roundto((PedidosItensValor_Despesa.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value)), -2);
                                   end else begin
                                      mValor_TotalDespesas := mValor_TotalDespesas + Roundto(PedidosItensValor_Despesa.Value, -2);
                                   end;

                                   // Base de calculo do IPI "Soma dos produtos que tiveram IPI".
                                   If TipoNotaVisiveis_IPI.Value = False then begin
                                      PedidosItensAliquota_IPI.Value := 0;
                                      PedidosItensValor_IPI.Value    := 0;
                                      PedidosItensTotal_IPI.Value    := 0;
                                   End else begin
                                      If PedidosItensAliquota_IPI.AsFloat > 0 then
                                         mBCIPI := mBCIPI + PedidosItensValor_BCIPI.Value;
                                      mValor_TotalIPI := mValor_TotalIPI + PedidosItensTotal_IPI.Value;
                                   End;
                                   // Valor do IPI na devolução.
                                   mValor_IPIDevol := mValor_IPIDevol + PedidosItensValor_IPIDevol.Value;
                                   if not TipoNotaIPI_Devolucao.asboolean then begin
                                      PedidosItensValor_IPIDevol.Value := 0;
                                   end;

                                   // Rateio do frete.
                                   PedidosItensValor_Frete.Value := ((PedidosItensPeso_Liquido.AsFloat * PedidosItensQuantidade.AsFloat) * mRateioFrete);
                                   mTotalFrete := mTotalFrete + Roundto(PedidosItensValor_Frete.AsCurrency, -2);

                                   // Pegando a alíquota e calculando o MVA.
                                   If PedidosItensValor_ICMSSub.Value > 0 then begin
                                      NCM.SQL.Clear;
                                      NCM.SQL.Add('SELECT * FROM NCM WHERE NCM = :pNCM');
                                      NCM.ParamByName('pNCM').AsString := PedidosItensNCM.AsString;
                                      NCM.Open;

                                      mUF := Trim(ClientesEstado.Value)+'_MVA';
                                      if not NCMMVA_NaoReducao.AsBoolean then begin
                                         If Dados.ClientesSimples_Nacional.AsBoolean = false then begin
                                            PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                                         end else begin
                                            PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
                                         end;
                                      end;

                                      If NCM.FieldbyName(mUF).AsFloat <> 0 then
                                         PedidosItensValor_MVA.Value := Percentual( (PedidosItensValor_Total.Value+PedidosItensTotal_IPI.Value+PedidosItensValor_Frete.Value), PedidosItensAliquota_MVA.Value)
                                      else
                                         PedidosItensValor_MVA.Value := 0;
                                   end else begin
                                      PedidosItensAliquota_MVA.Value := 0;
                                      PedidosItensValor_MVA.Value    := 0;
                                   End;

                                   // ICMS Operacional.
                                   CSTTabelaB.Locate('Codigo', PedidosItens.FieldByName('CodigoTrib_TabB').AsString, [loCaseInsensitive]);
                                   if (TipoNotaVisiveis_ICMSOper.Value = False) or (CSTTabelaBTributavel.AsBoolean = false) then begin
                                      if (CSTTabelaBCodigo.AsString <> '90') and (CSTTabelaBCodigo.AsString <> '900') then begin
                                         PedidosItensValor_ICMSOper.Value    := 0;
                                         PedidosItensValor_BCICMSOper.Value  := 0;
                                         PedidosItensAliquota_ICMSOper.Value := 0;
                                         PedidosItensValor_ICMSReducao.Value := 0;
                                      end;
                                   end else begin
                                      // Executando o Recalculo dos campos de ICMS devido e do PIS/COFINS o rateio do frete.
                                      if PedidosTotal_Frete.Value > 0 then begin
                                         If Trim(TipoNotaCalculo_BCICMS.AsString) <> '' then
                                            Dados.PedidosItensValor_BCICMSOper.Value := Roundto(CalculaMacro('Calculo_BCICMS'), -2);
                                         If Trim(TipoNotaCalculo_VlrICMS.AsString) <> '' then
                                            PedidosItensValor_ICMSOper.Value := Roundto(CalculaMacro('Calculo_VlrICMS'), -2);
                                         If Trim(TipoNotaCalculo_ReducaoICMS.AsString) <> '' then
                                            PedidosItensValor_ICMSReducao.Value := Roundto(CalculaMacro('Calculo_ReducaoICMS'), -2);
                                         If Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '' then
                                            PedidosItensValor_BCICMSSub.Value := Roundto(CalculaMacro('Calculo_BCICMSSub'), -2);
                                         If Trim(TipoNotaCalculo_VlrICMSSub.Value) <> '' then
                                            PedidosItensValor_ICMSSub.Value := Roundto(CalculaMacro('Calculo_VlrICMSSub'), -2);
                                         If Trim(TipoNotaCalculo_BCPIS.AsString)  <> '' then
                                            PedidosItensValor_BCPIS.Value := RoundTo(CalculaMacro('Calculo_BCPIS'), -2);
                                         If Trim(TipoNotaCalculo_PIS.AsString) <> '' then
                                            PedidosItensValor_PIS.Value := RoundTo(CalculaMacro('Calculo_PIS'), -2);
                                         If Trim(TipoNotaCalculo_PISST.AsString) <> '' then
                                            PedidosItensValor_PISST.Value := RoundTo(CalculaMacro('Calculo_PISST'), -2);
                                         If Trim(TipoNotaCalculo_COFINS.AsString) <> '' then
                                            PedidosItensValor_COFINS.Value := RoundTo(CalculaMacro('Calculo_COFINS'), -2);
                                         If Trim(TipoNotaCalculo_COFINSST.AsString) <> '' then
                                            PedidosItensValor_COFINSST.Value := RoundTo(CalculaMacro('Calculo_COFINSST'), -2);
                                      end;

                                      mBCICMS            := mBCICMS + Roundto(PedidosItensValor_BCICMSOper.Value, -2);
                                      mValorICMS         := mValorICMS + PedidosItensValor_ICMSOper.AsCurrency;
                                      mValorICMS_Reducao := mValorICMS_Reducao + PedidosItensValor_ICMSReducao.Value;
                                      if mValorICMS <> 0 then
                                         mAliquota_ICMSOper := PedidosItensAliquota_ICMSOper.Value
                                      else
                                         mAliquota_ICMSOper := 0;
                                   end;

                                   // Totaliza o ICMS monofasico e o ICMS crédito presumido.
                                   mValor_ICMSMono        := mValor_ICMSMono        + PedidosItensValor_ICMSMono.AsCurrency;
                                   mValor_ICMSMonoRet     := mValor_ICMSMonoRet     + PedidosItensValor_ICMSMonoRet.AsCurrency;
                                   mValor_BCICMSMono      := mValor_BCICMSMono      + PedidosItensValor_BCICMSMono.AsCurrency;
                                   mValor_BCICMSMonoRet   := mValor_BCICMSMonoRet   + PedidosItensValor_BCICMSMonoRet.AsCurrency;
                                   mValor_BCICMSPresumido := mValor_BCICMSPresumido + PedidosItensValor_BCICMSPresumido.AsCurrency;
                                   mValor_ICMSPresumido   := mValor_ICMSPresumido   + PedidosItensValor_ICMSPresumido.AsCurrency;

                                   // ICMS Substitutivo.
                                   If TipoNotaVisiveis_ICMSSub.Value = False then begin
                                      PedidosItensValor_ICMSSub.Value    := 0;
                                      PedidosItensValor_BCICMSSub.Value  := 0;
                                      PedidosItensAliquota_ICMSSub.Value := 0;
                                   End else begin
                                      mBCICMS_Substitutivo    := mBCICMS_Substitutivo + PedidosItensValor_BCICMSSub.Value;
                                      mValorICMS_Substitutivo := mValorICMS_Substitutivo + PedidosItensValor_ICMSSub.Value;
                                   End;

                                   mOutrasICMS     := mOutrasICMS     + PedidosItensValor_OutrasICMS.Value;
                                   mIsentasICMS    := mIsentasICMS    + PedidosItensValor_IsentasICMS.Value;
                                   mOutrasIPI      := mOutrasIPI      + PedidosItensValor_OutrasIPI.Value;
                                   mIsentasIPI     := mIsentasIPI     + PedidosItensValor_IsentasIPI.Value;
                                   mTotalDescontos := mTotalDescontos + Roundto(PedidosItensDesconto_Valor.Value * PedidosItensQuantidade.AsFloat, -2);

                                   If TipoNotaVisiveis_Frete.Value    = False then PedidosItensValor_Frete.Value   := 0;
                                   If TipoNotaVisiveis_Seguro.Value   = False then PedidosItensValor_Seguro.Value  := 0;
                                   If TipoNotaVisiveis_Despesas.Value = False then PedidosItensValor_Despesa.Value := 0;

                                   mValor_TotalMVA := mValor_TotalMVA + (PedidosItensValor_MVA.Value * PedidosItensQuantidade.Value);
                                   mValor_PIS      := mValor_PIS      + PedidosItensValor_PIS.Value;
                                   mValor_PISST    := mValor_PISST    + PedidosItensValor_PISST.Value;
                                   mValor_COFINS   := mValor_COFINS   + PedidosItensValor_COFINS.Value;
                                   mValor_COFINSST := mValor_COFINSST + PedidosItensValor_COFINSST.Value;

                                   mValor_BCCBS := mValor_BCCBS + PedidosItensValor_BCCBS.ascurrency;
                                   mValor_CBS   := mValor_CBS   + PedidosItensValor_CBS.AsCurrency;
                                   mValor_BCIBS := mValor_BCIBS + PedidosItensValor_BCIBS.AsCurrency;
                                   mValor_IBS   := mValor_IBS   + PedidosItensValor_IBS.AsCurrency;
                                   mValor_BCIS  := mValor_BCIS  + PedidosItensValor_BCIS.AsCurrency;
                                   mValor_IS    := mValor_IS    + PedidosItensValor_IS.AsCurrency;

                                   If ProdutosTipo_Conversao.Value <> 'M' then begin
                                      mVolume_PesoLiquido := mVolume_PesoLiquido + Roundto((PedidosItensPeso_Liquido.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -3);
                                      mVolume_PesoBruto   := mVolume_PesoBruto   + Roundto((PedidosItensPeso_Bruto.Value   * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -3);
                                      //mValor_TotalII      := mValor_TotalII      + (PedidosItensValor_II.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) );
                                      mValor_TotalII      := mValor_TotalII      + PedidosItensValor_II.Value;
                                      mValor_BCII         := mValor_BCII         + Roundto((PedidosItensValor_BCII.Value * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.Value)), -3);
                                   end else begin
                                      mVolume_PesoLiquido := mVolume_PesoLiquido + Roundto((PedidosItensPeso_Liquido.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value)), -3);
                                      mVolume_PesoBruto   := mVolume_PesoBruto   + Roundto((PedidosItensPeso_Bruto.Value   * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value)), -3);
                                      //mValor_TotalII      := mValor_TotalII      + (PedidosItensValor_II.Value     * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                                      mValor_TotalII      := mValor_TotalII      + PedidosItensValor_II.Value;
                                      mValor_BCII         := mValor_BCII         + Roundto((PedidosItensValor_BCII.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.Value)), -3);
                                   End;

                                   If (PedidosItensValor_PIS.Value = 0) and (PedidosItensCSTPIS.asstring <> '05') then begin
                                      PedidosItensValor_BCPIS.Value        := 0;
                                      PedidosItensAliquota_PIS.Value       := 0;
                                      PedidosItensAliquota_PISRed.Value    := 0;
                                      PedidosItensAliquota_COFINS.Value    := 0;
                                      PedidosItensAliquota_COFINSRed.Value := 0;
                                   End;
                                   mBCPIS    := mBCPIS    + RoundTo(PedidosItensValor_BCPIS.Value, -2);
                                   mBCPISST  := mBCPISST  + RoundTo(PedidosItensValor_BCPISST.Value, -2);
                                   mMediaBCR := mMediaBCR + PedidosItensMedia_BCR.Value;

                                   PedidosItensTotal_Impostos.Value   := 0;
                                   PedidosItensValor_BCICMSDest.Value := 0;
                                   PedidosItensValor_ICMSDest.Value   := 0;
                                   PedidosItensValor_BCDIFAL.Value    := 0;
                                   PedidosItensDIFAL_Valor.Value      := 0;
                                   PedidosItensDIFAL_PercOrig.Value   := 0;
                                   PedidosItensDIFAL_ValorOrig.Value  := 0;
                                   PedidosItensDIFAL_PercDest.Value   := 0;
                                   PedidosItensDIFAL_ValorDest.Value  := 0;
                                   PedidosItensFCP_Aliquota.Value     := 0;
                                   PedidosItensFCP_ValorDest.Value    := 0;
                                   PedidosItensFCP_ICMSDest.Value     := 0;
                                   PedidosItensFCP_ICMSOrig.Value     := 0;
                                   PedidosItensValor_BCFCP.Value      := 0;
                                   PedidosItensValor_FCP.Value        := 0;
                                   PedidosItensValor_BCFCPST.Value    := 0;
                                   PedidosItensValor_FCPST.Value      := 0;
                                   mAliquotaDIFAL                     := 0;
                                   
                                   if TipoNotaVisiveis_DIFAL.AsBoolean then begin
                                      // DIFAL.
                                      mAliquotaDIFAL := ICMSICMS_Interno.AsFloat;
                                      mUF            := Trim(ClientesEstado.Value)+'_ICMS';
                                      
                                      NCM.Locate('NCM', PedidosItensNCM.AsString, [loCaseInsensitive]);;
                                      if NCM.FieldbyName(mUF).AsFloat > 0 then begin
                                         mAliquotaDIFAL := NCM.FieldbyName(mUF).AsFloat;
                                      end;   

                                      PedidosItensValor_BCICMSDest.Value  := PedidosItensValor_BCICMSOper.Value;
                                      PedidosItensValor_ICMSDest.Value    := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, mAliquotaDIFAL), -2);
                                      PedidosItensAliquota_ICMSDest.Value := mAliquotaDIFAL;

                                      if (Clientes.FieldByName('Consumidor_Final').AsBoolean) and (not Clientes.FieldByName('MEI').AsBoolean) then begin  // Cliente é consumidor final.
                                         if PedidosItensSaida_Entrada.AsInteger = 1 then begin
                                            PedidosItensTotal_Impostos.Value := RoundTo(PedidosItensTotal_IPI.AsCurrency+(PedidosItensValor_II.AsCurrency*PedidosItensQuantidade.AsFloat)+PedidosItensValor_ICMSOper.AsCurrency+PedidosItensValor_PIS.AsCurrency+PedidosItensValor_COFINS.AsCurrency, -2);
                                            mTotalImpostos                   := mTotalImpostos + PedidosItensTotal_Impostos.AsCurrency;
                                         end;

                                         // Diferencial de alíquota do ICMS (DIFAL) p/consumidor final.
                                         if (TipoNotaSaida_Entrada.Value = 1) and (TipoNotaVisiveis_DIFAL.AsBoolean) then Begin                   // Nota Fiscal de saída.
                                            if PedidosItensAliquota_ICMSOper.Value <> mAliquotaDIFAL then begin                                   // Aliquota de icms dos estados diferente.
                                               if (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) then begin                           // Cliente é de fora do estado.
                                                  if TipoNotaFinalidade_Mercadoria.Value = 0 then begin
                                                     PedidosItensValor_BCDIFAL.Value   := CalculaMacro('Calculo_BCDIFAL');
                                                     PedidosItensDIFAL_Valor.Value     := CalculaMacro('Calculo_DIFAL');
                                                     PedidosItensDIFAL_PercOrig.Value  := 100 - ConfiguracaoDIFAL_ICMSPart.Value;
                                                     PedidosItensDIFAL_ValorOrig.Value := Roundto(Percentual(PedidosItensDIFAL_Valor.Value, (100-ConfiguracaoDIFAL_ICMSPart.Value)), -2);
                                                     PedidosItensDIFAL_PercDest.Value  := ConfiguracaoDIFAL_ICMSPart.Value;
                                                     PedidosItensDIFAL_ValorDest.Value := Roundto(Percentual(PedidosItensDIFAL_Valor.Value, ConfiguracaoDIFAL_ICMSPart.Value), -2);
                                                  end;
                                               end;
                                            end;
                                         end;
                                      end;
                                      
                                      if ProdutosFCP.AsBoolean then begin
                                         // Cliente é de fora do estado.
                                         if PedidosDestinatario_Estado.Value <> EmpresasEstado.Value then begin
                                            // Cliente é consumidor final.
                                            if (Clientes.FieldByName('Consumidor_Final').AsBoolean) and (not Clientes.FieldByName('MEI').AsBoolean) then begin
                                               if TipoNotaFinalidade_Mercadoria.Value = 0 then begin
                                                  PedidosItensFCP_Aliquota.Value  := ICMSFCP.Value;
                                                  PedidosItensFCP_ValorDest.Value := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, ICMSFCP.Value), -2);
                                                  PedidosItensFCP_ICMSDest.Value  := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, mAliquotaDIFAL) - PedidosItensValor_ICMSOper.Value, -2);
                                                  PedidosItensFCP_ICMSDest.Value  := Roundto(Percentual(PedidosItensFCP_ICMSDest.Value, ConfiguracaoDIFAL_ICMSPart.Value), -2);
                                                  PedidosItensFCP_ICMSOrig.Value  := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, mAliquotaDIFAL) - PedidosItensValor_ICMSOper.Value, -2);
                                                  PedidosItensFCP_ICMSOrig.Value  := Roundto(Percentual(PedidosItensFCP_ICMSOrig.Value, (100-ConfiguracaoDIFAL_ICMSPart.Value)), -2);

                                                  // Calculo do FCP pela CST ICMS.
                                                  case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['10','20','51','70','90']) of
                                                       0..4: PedidosItensValor_BCFCP.Value := PedidosItensValor_BCICMSOper.Value;
                                                  end;
                                                  case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['00','10','20','51','70','90']) of
                                                       0..5: begin
                                                                  PedidosItensValor_BCFCP.Value := PedidosItensValor_BCICMSOper.Value;
                                                                  PedidosItensValor_FCP.Value   := roundto(Percentual(PedidosItensValor_BCICMSOper.Value, ICMSFCP.Value), -2);
                                                             end;
                                                  end;

                                                  // Calculo do FCP ST pela CST ICMS.
                                                  case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['10','30','70','90','201','202','203','900']) of
                                                       0..7: begin
                                                                  PedidosItensValor_BCFCPST.Value := PedidosItensValor_BCICMSSub.Value;
                                                                  PedidosItensValor_FCPST.Value   := Roundto(Percentual(PedidosItensValor_BCICMSSub.Value, ICMSFCP.Value)-PedidosItensValor_FCP.Value, -2);
                                                             end;
                                                  end;
                                                  if PedidosItensValor_FCP.Value > 0 then begin
                                                     PedidosItensFCP_ValorDest.Value := 0;
                                                     PedidosItensFCP_ICMSDest.Value  := 0;
                                                     PedidosItensFCP_ICMSDest.Value  := 0;
                                                     PedidosItensFCP_ICMSOrig.Value  := 0;
                                                     PedidosItensFCP_ICMSOrig.Value  := 0;
                                                  end;
                                               end;
                                            end;
                                         end;
                                      end;
                                   end;
                                   
                                   PedidosItensDevolucao.Value := PedidosDevolucao.Value;
                      PedidosItens.Post;

                      // Totalizadores do DIFAL e FCP
                      mValorBCICMSDest := mValorBCICMSDest + Roundto(PedidosItensValor_BCICMSDest.AsCurrency, -2);
                      mValorICMSDest   := mValorICMSDest   + Roundto(PedidosItensValor_ICMSDest.AsCurrency, -2);
                      mBCDIFAL         := mBCDIFAL         + Roundto(PedidosItensValor_BCDIFAL.AsCurrency, -2);
                      mDIFALValor      := mDIFALValor      + Roundto(PedidosItensDIFAL_Valor.AsCurrency, -2);
                      mDIFALValorOrig  := mDIFALValorOrig  + Roundto(PedidosItensDIFAL_ValorOrig.AsCurrency, -2);
                      mDIFALValorDest  := mDIFALValorDest  + Roundto(PedidosItensDIFAL_ValorDest.AsCurrency, -2);
                      mFCPValorDest    := mFCPValorDest    + Roundto(PedidosItensFCP_ValorDest.AsCurrency, -2);
                      mFCPICMSDest     := mFCPICMSDest     + Roundto(PedidosItensFCP_ICMSDest.AsCurrency, -2);
                      mFCPICMSOrig     := mFCPICMSOrig     + Roundto(PedidosItensFCP_ICMSOrig.AsCurrency, -2);
                      mValorICMSDeson  := mValorICMSDeson  + Roundto(PedidosItensValor_ICMSDesonerado.AsCurrency, -2);
                      mBCFCP           := mBCFCP           + Roundto(PedidosItensValor_BCFCP.AsCurrency, -2);
                      mValorFCP        := mValorFCP        + Roundto(PedidosItensValor_FCP.AsCurrency, -2);
                      mBCFCPST         := mBCFCPST         + Roundto(PedidosItensValor_BCFCPST.AsCurrency, -2);
                      mValorFCPST      := mValorFCPST      + Roundto(PedidosItensValor_FCPST.AsCurrency, -2);
                      mValorICMSDif    := mValorICMSDif    + Roundto(PedidosItensValor_ICMSDif.AsCurrency, -2);

                      // Totaliza o lucro
                      mTotalLucro := PedidosItensLucro_Valor.AsCurrency * PedidosItensQuantidade.asfloat;

                      mTotalNota := mTotalNota + PedidosItensValor_TotalNota.AsCurrency;

                      If cVolumes.Checked = true then begin
                         mVolumes := mVolumes + (PedidosItensQuantidade.Value / ProdutosQuantidade_Volumes.Value);
                      End;

                      Progresso.Position := Progresso.Position +1;
                      Application.ProcessMessages;
                      
                      PedidosItens.Next;
                End;
             End;

             Pedidos.Edit;
                     PedidosValor_TotalProdutos.Value    := mValor_TotalProdutos;
                     PedidosBCIPI.Value                  := mBCIPI;
                     PedidosValor_TotalIPI.Value         := mValor_TotalIPI;
                     PedidosValor_IPIDevol.Value         := mValor_IPIDevol;
                     PedidosBCICMS.Value                 := mBCICMS;
                     PedidosValor_ICMS.Value             := mValorICMS;
                     PedidosAliquota_ICMSOper.Value      := mAliquota_ICMSOper;
                     PedidosBCICMS_Substitutivo.Value    := mBCICMS_Substitutivo;
                     PedidosValorICMS_Substitutivo.Value := mValorICMS_Substitutivo;
                     PedidosValor_TotalMVA.Value         := mValor_TotalMVA;

                     if TipoNotaVisiveis_QuantidadeItem.AsBoolean = true then begin
                        PedidosVolume_PesoLiquido.Value := mVolume_PesoLiquido;
                        if (PedidosVolume_PesoBruto.Value = 0) or (PedidosVolume_PesoBruto.Value < PedidosVolume_PesoLiquido.Value) then begin
                           PedidosVolume_PesoBruto.Value := mVolume_PesoBruto;
                        end;

                        PedidosCalcula_Volumes.Value := cVolumes.Checked;

                        If cVolumes.Checked = true then begin
                          PedidosVolume_Quantidade.Value := mVolumes;
                        End;
                     end else begin
                        PedidosVolume_PesoLiquido.Clear;
                        PedidosVolume_PesoBruto.Clear;
                        PedidosVolume_Quantidade.Clear;
                        PedidosVolume_Especie.Clear;
                        PedidosVolume_Marca.Clear;
                        PedidosVolume_Numero.Clear;
                     end;

                     PedidosValor_PIS.Value      := mValor_PIS;
                     PedidosValor_COFINS.Value   := mValor_COFINS;
                     PedidosValor_PISST.Value    := mValor_PISST;
                     PedidosValor_COFINSST.Value := mValor_COFINSST;
                     PedidosValor_TotalII.Value  := mValor_TotalII;

                     if mValor_TotalDespesas <> 0 then PedidosValor_OutrasDespesas.Value := mValor_TotalDespesas;

                     PedidosValor_OutrasICMS.Value  := mOutrasICMS;
                     PedidosValor_IsentasICMS.Value := mIsentasICMS;
                     PedidosValor_OutrasIPI.Value   := mOutrasIPI;
                     PedidosValor_IsentasIPI.Value  := mIsentasIPI;

                     // Verifique quais campos estão desmarcados para impressão e zera no pedido.
                     if TipoNotaVisiveis_ICMSOper.Value = False then begin
                        PedidosAliquota_ICMSOper.Value := 0;
                        PedidosBCICMS.Value            := 0;
                        PedidosValor_ICMS.Value        := 0;
                     end;
                     if TipoNotaVisiveis_ICMSSub.Value = False then begin
                        PedidosAliquota_ICMSSub.Value       := 0;
                        PedidosBCICMS_Substitutivo.Value    := 0;
                        PedidosValorICMS_Substitutivo.Value := 0;
                     end;
                     If TipoNotaVisiveis_Frete.Value    = False then PedidosTotal_Frete.Value          := 0;
                     If TipoNotaVisiveis_Seguro.Value   = False then PedidosValor_Seguro.Value         := 0;
                     If TipoNotaVisiveis_Despesas.Value = False then PedidosValor_OutrasDespesas.Value := 0;
                     If TipoNotaVisiveis_IPI.Value      = False then PedidosValor_TotalIPI.Value       := 0;
                     If TipoNotaIPI_Devolucao.Value     = False then PedidosValor_IPIDevol.Value       := 0;

                     PedidosTotal_Descontos.Value := mTotalDescontos;
                     If TipoNotaVisiveis_Desconto.Value = False then PedidosTotal_Descontos.Value := 0;

                     // Executando o calculo dos totalizadores do Pedido caso haja formulas.
                     If Trim(TipoNotaCalculo_OutrasDespesas.AsString) <> '' then
                        PedidosValor_OutrasDespesas.Value := PedidosValor_OutrasDespesas.Value + CalculaMacro('Calculo_OutrasDespesas');
                     If Trim(TipoNotaCalculo_TotalProdutos.AsString) <> '' then
                        PedidosValor_TotalProdutos.Value := CalculaMacro('Calculo_TotalProdutos');
                     If Trim(TipoNotaCalculo_TotalBCICMS.AsString) <> '' then
                        PedidosBCICMS.Value := CalculaMacro('Calculo_TotalBCICMS');
                     If Trim(TipoNotaCalculo_TotalVLICMS.AsString) <> '' then
                        PedidosValor_ICMS.Value := CalculaMacro('Calculo_TotalVLICMS');
                     If Trim(TipoNotaCalculo_TotalPedido.Value) <> '' then begin
                        PedidosValor_TotalNota.Value := CalculaMacro('Calculo_TotalPedido');
                        If Trim(PedidosDesconto_Tipo.AsString) = 'FINANCEIRO - Total da Nota' then begin
                           PedidosTotal_Descontos.Value := PedidosValor_TotalNota.Value * (PedidosDesconto_Percentual.Value/100);
                           PedidosValor_TotalNota.Value := PedidosValor_TotalNota.Value - PedidosTotal_Descontos.Value;
                        End;
                     End;

                     PedidosMedia_BCR.Value            := mMediaBCR;
                     PedidosValor_TotalNota.Value      := PedidosValor_TotalNota.Value + mTotalNota;
                     PedidosValor_BCPIS.Value          := mBCPIS;
                     PedidosValor_BCPISST.Value        := mBCPISST;
                     PedidosValor_BCCOFINSST.Value     := mBCPISST;
                     PedidosTotal_Impostos.Value       := mTotalImpostos;
                     PedidosValor_BCICMSDest.Value     := mValorBCICMSDest;
                     PedidosValor_ICMSDest.Value       := mValorICMSDest;
                     PedidosValor_BCDIFAL.Value        := mBCDIFAL;
                     PedidosDIFAL_Valor.Value          := mDIFALValor;
                     PedidosDIFAL_ValorOrig.Value      := mDIFALValorOrig;
                     PedidosDIFAL_ValorDest.Value      := mDIFALValorDest;
                     PedidosFCP_ValorDest.Value        := mFCPValorDest;
                     PedidosFCP_ICMSDest.Value         := mFCPICMSDest;
                     PedidosFCP_ICMSOrig.Value         := mFCPICMSOrig;
                     PedidosDIFAL_AliqInterna.Value    := ICMSICMS_Interno.Value;
                     PedidosTotal_Frete.Value          := mTotalFrete;
                     PedidosValor_BCFCP.Value          := mBCFCP;
                     PedidosValor_FCP.Value            := mValorFCP;
                     PedidosValor_BCFCPST.Value        := mBCFCPST;
                     PedidosValor_FCPST.Value          := mValorFCPST;
                     PedidosValor_ICMSDesonerado.Value := mValorICMSDeson;
                     PedidosValor_ICMSReducao.Value    := mValorICMS_Reducao;
                     PedidosLucro_Valor.Value          := mTotalLucro;
                     PedidosValor_ICMSDif.value        := mValorICMSDif;
                     PedidosValor_BCCBS.value          := mValor_BCCBS;
                     PedidosValor_CBS.value            := mValor_CBS;
                     PedidosValor_BCIBS.Value          := mValor_BCIBS;
                     PedidosValor_IBS.value            := mValor_IBS;
                     PedidosValor_BCIS.value           := mValor_BCIS;
                     PedidosValor_IS.value             := mValor_IS;

                     // Executando o calculo dos totalizadores do Pedido caso haja formulas.
                     If Trim(TipoNotaCalculo_OutrasDespesas.AsString) <> '' then
                        PedidosValor_OutrasDespesas.Value := PedidosValor_OutrasDespesas.Value + CalculaMacro('Calculo_OutrasDespesas');
                     If Trim(TipoNotaCalculo_TotalProdutos.AsString) <> '' then
                        PedidosValor_TotalProdutos.Value := CalculaMacro('Calculo_TotalProdutos');
                     If Trim(TipoNotaCalculo_TotalBCICMS.AsString) <> '' then
                        PedidosBCICMS.Value := CalculaMacro('Calculo_TotalBCICMS');
                     If Trim(TipoNotaCalculo_TotalVLICMS.AsString) <> '' then
                        PedidosValor_ICMS.Value := CalculaMacro('Calculo_TotalVLICMS');
                     If Trim(TipoNotaCalculo_TotalPedido.Value) <> '' then begin
                        PedidosValor_TotalNota.Value := CalculaMacro('Calculo_TotalPedido');
                        If Trim(PedidosDesconto_Tipo.AsString) = 'FINANCEIRO - Total da Nota' then begin
                           PedidosTotal_Descontos.Value := PedidosValor_TotalNota.Value * (PedidosDesconto_Percentual.Value/100);
                           PedidosValor_TotalNota.Value := PedidosValor_TotalNota.Value - PedidosTotal_Descontos.Value;
                        End;
                     End;

                     PedidosAliquota_FCP.Value   := ICMSFCP.Value;
                     PedidosAliquota_FCPST.Value := ICMSFCP.Value;
                     if PedidosValor_FCP.Value = 0 then begin
                        PedidosAliquota_FCP.Value := 0;
                     end;
                     if PedidosValor_FCPST.Value = 0 then begin
                        PedidosAliquota_FCPST.Value := 0;
                     end;
                     
                     PedidosValor_ICMSMono.Value        := mValor_ICMSMono;
                     PedidosValor_ICMSMonoRet.Value     := mValor_ICMSMonoRet;
                     PedidosValor_BCICMSMono.Value      := mValor_BCICMSMono;
                     PedidosValor_BCICMSMonoRet.Value   := mValor_BCICMSMonoRet;
                     PedidosValor_BCICMSPresumido.Value := mValor_BCICMSPresumido;
                     PedidosValor_ICMSPresumido.Value   := mValor_ICMSPresumido;
             Pedidos.Post;

             Pedidos.EnableControls;
             PedidosItens.EnableControls;
             Produtos.EnableControls;

             // Delete todos os detalhes cujo produto não esteja no pedido.
             PedidosItensDetalhe.SQL.Clear;
             PedidosItensDetalhe.SQL.Add('DELETE FROM PedidosItensDetalhe WHERE(Pedido = :pPedido) AND (Produto_Codigo NOT IN(SELECT Codigo_Mercadoria FROM PedidosItens WHERE(Pedido = :pPedido)) )');
             PedidosItensDetalhe.ParamByName('pPedido').AsInteger  := PedidosNumero.AsInteger;
             PedidosItensDetalhe.Execute;
             PedidosItensDetalhe.SQL.Clear;
             PedidosItensDetalhe.SQL.Add('SELECT * FROM PedidosItensDetalhe WHERE(Pedido = :pPedido) AND (Produto_Codigo = :pProduto)');
             PedidosItensDetalhe.ParamByName('pPedido').AsInteger  := PedidosNumero.AsInteger;
             PedidosItensDetalhe.ParamByName('pProduto').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
             PedidosItensDetalhe.Close;
        End;

        Pedido_ItensOutros.Release;
        Pedido_ItensOutros := nil;
        Screen.Cursor      := crDefault;
end;

procedure TPedido_ItensOutros.CalculaFCP(pAliquotaDIFAL: real);
begin
     with Dados do begin
          PedidosItensFCP_Aliquota.Value  := ICMSFCP.Value;
          PedidosItensFCP_ValorDest.Value := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, ICMSFCP.Value), -2);
          PedidosItensFCP_ICMSDest.Value  := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, pAliquotaDIFAL) - PedidosItensValor_ICMSOper.Value, -2);
          PedidosItensFCP_ICMSDest.Value  := Roundto(Percentual(PedidosItensFCP_ICMSDest.Value, ConfiguracaoDIFAL_ICMSPart.Value), -2);
          PedidosItensFCP_ICMSOrig.Value  := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, pAliquotaDIFAL) - PedidosItensValor_ICMSOper.Value, -2);
          PedidosItensFCP_ICMSOrig.Value  := Roundto(Percentual(PedidosItensFCP_ICMSOrig.Value, (100-ConfiguracaoDIFAL_ICMSPart.Value)), -2);

          // Calculo do FCP pela CST ICMS.
          case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['10','20','51','70','90']) of
               0..4: PedidosItensValor_BCFCP.Value  := PedidosItensValor_BCICMSOper.Value;
          end;
          case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['00','10','20','51','70','90']) of
               0..5: begin
                          PedidosItensValor_BCFCP.Value := PedidosItensValor_BCICMSOper.Value;
                          PedidosItensValor_FCP.Value   := roundto(Percentual(PedidosItensValor_BCICMSOper.Value, ICMSFCP.Value), -2);
                     end;
          end;

          // Calculo do FCP ST pela CST ICMS.
          case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['10','30','70','90','201','202','203','900']) of
               0..7: begin
                          PedidosItensValor_BCFCPST.Value := PedidosItensValor_BCICMSSub.Value;
                          PedidosItensValor_FCPST.Value   := Roundto(Percentual(PedidosItensValor_BCICMSSub.Value, ICMSFCP.Value)-PedidosItensValor_FCP.Value, -2);
                     end;
          end;
          if PedidosItensValor_FCP.Value > 0 then begin
             PedidosItensFCP_ValorDest.Value := 0;
             PedidosItensFCP_ICMSDest.Value  := 0;
             PedidosItensFCP_ICMSDest.Value  := 0;
             PedidosItensFCP_ICMSOrig.Value  := 0;
             PedidosItensFCP_ICMSOrig.Value  := 0;
          end;
     end;
end;

procedure TPedido_ItensOutros.FormCreate(Sender: TObject);
begin
      if Screen.Height <= 768 then begin
         ScaleBy(93, 100);
      end;
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
      if FileExists('fundo_barra_Amarela.bmp') then begin
         Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'fundo_barra_Amarela.bmp');
      end;
end;

procedure TPedido_ItensOutros.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      ActiveControl                := nil;
      bDetalhe.Enabled             := false;
      cQuantidade.Enabled          := not bDetalhe.Enabled;
      bSeriais.Enabled             := false;
      PageControl1.ActivePageIndex := 0;

      With Dados do begin
           If (Button = nbEdit) or (Button = nbInsert) then begin
              For i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              End;
              PageControl1.ActivePageIndex := 0;
              PageControl1.Enabled         := true;
              mQuantidade                  := PedidosItensQuantidade.Value;
              PedidosItenstipo_Nota.Value  := PedidosTipo_Nota.Value;
              cMinimo.Value                := 0;
              cDisponivel.Value            := 0;
              GradeItens.Enabled           := false;

              if Trim(PedidosNFe_cNFRef.AsString) <> '' then begin
                 PedidosItensNota_Referencia.Value := PedidosNFe_cNFRef.Value;
                 PedidosItensData_Referencia.Value := PedidosData_Referencia.Value;
              end;

              If Button = nbInsert then begin
                 PedidosItensAliquota_ICMSOper.Value := PedidosAliquota_ICMSOper.Value;
                 PedidosItensQuantidade.Value        := 0;
                 PedidosItensValor_Unitario.Value    := 0;
                 mQuantidade                         := 0;
                 PedidosItensDesconto.Value          := 0;
                 PedidosItensDesconto_Valor.Value    := 0;
                 PedidosItensICMSST_Anterior.Value   := false;
                 PedidosItensNatureza_Codigo.Value   := PedidosNatureza_Codigo.Value;
              End;

              cCodigo.SetFocus;
              cQuantidade.Enabled := true;

              If Button = nbEdit then begin
                 if PedidosItens.RecordCount = 0 then begin
                    MessageDlg('Nenhum registro disponível para alteração!', mtinformation, [mbOK], 0);
                    Abort;
                 end;

                 PedidosItensDetalhe.SQL.Clear;
                 PedidosItensDetalhe.SQL.Add('SELECT * FROM PedidosItensDetalhe WHERE(Pedido = :pPedido) AND (Produto_Codigo = :pProduto) ORDER BY Registro');
                 PedidosItensDetalhe.ParamByName('pPedido').AsInteger  := PedidosNumero.AsInteger;
                 PedidosItensDetalhe.ParamByName('pProduto').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                 PedidosItensDetalhe.Open;

                 if Trim(PedidosItensNatureza_Codigo.AsString) = '' then
                    PedidosItensNatureza_Codigo.Value := PedidosNatureza_Codigo.Value;

                 cQuantidade.Enabled := not ProdutosSerial_Obrigatorio.AsBoolean;
              End;
           end else begin
              PageControl1.Enabled := false;
              GradeItens.Enabled   := true;
           end;

           // Quantidade de itens adicionados ao pedido.
           tItem.SQL.Clear;
           tItem.SQL.Add('SELECT COUNT(*) AS Qtde FROM PedidosItens WHERE(Pedido = :pPedido)');
           tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           tItem.Open;
           gItens.Caption := 'Itens do Pedido '+PedidosNumero.AsString + ' ['+PoeZero(4, tItem.FieldByName('Qtde').AsInteger)+']';
           tItem.Close;

           if Button = nbPost then begin
              // Adiciona o item na tabela "NotasItensNavios".
              if TipoNotaMovimenta_Estoque.AsBoolean then begin
                 with tTemp do begin
                      sql.clear;
                      sql.add('delete from PedidosItensNavios where Pedido = :pPed and Codigo_Mercadoria = :pCod and Saida_Entrada = :pSE');
                      parambyname('pPed').AsInteger := PedidosItens.fieldbyname('Pedido').asinteger;
                      parambyname('pCod').AsInteger := PedidosItens.fieldbyname('Codigo_Mercadoria').asinteger;
                      parambyname('pSE').AsInteger  := PedidosItens.fieldbyname('Saida_Entrada').asinteger;
                      execute;
                      sql.clear;
                      sql.add('select reg = isnull(max(Registro), 0)+1 from PedidosItensNavios');
                      open;
                 end;
                 with PedidosItensNavios do begin
                      open;
                      Append;
                           fieldbyname('Registro').Value          := tTemp.fieldbyname('reg').asinteger;
                           fieldbyname('Pedido').Value            := PedidosItens.fieldbyname('Pedido').asinteger;
                           fieldbyname('Saida_Entrada').Value     := PedidosItens.fieldbyname('Saida_Entrada').asinteger;
                           fieldbyname('Codigo_Mercadoria').Value := PedidosItens.fieldbyname('Codigo_Mercadoria').asinteger;
                           fieldbyname('Item').Value              := PedidosItens.fieldbyname('Item').asinteger;
                           fieldbyname('Navio').Value             := PedidosItens.fieldbyname('Navio').asinteger;
                           fieldbyname('Quantidade').Value        := PedidosItens.fieldbyname('Quantidade').asinteger;
                           fieldbyname('DI').Value                := PedidosItens.fieldbyname('DI').asstring;
                      post;
                      close;
                 end;
              end;
           end;

           Application.ProcessMessages;
      End;

      Screen.Cursor := crDefault;
end;

procedure TPedido_ItensOutros.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
    mDisponivel: Double;
begin
      ActiveControl := nil;
      with Dados, dmFiscal do begin
           if (Button = nbPost) then begin
              if (Dados.ConfiguracaoObrigar_NavioPedido.AsBoolean) and (trim(cNavio.Text) = '') then begin
                 MessageDlg('Navio não informado!'+#13+#13+'Informe o "Navio" para poder adicionar os itens.', mterror, [mbok], 0);
                 cNavio.SetFocus;
                 abort;
              end;
              if PedidosItensCodigo_Mercadoria.AsInteger <= 0 then begin
                 ShowMessage('Código de mercadoria inválido!');
                 cProduto.SetFocus;
                 Abort;
              end;
              if (not TipoNotaComplementar.AsBoolean) and (PedidosItensQuantidade.AsFloat <= 0) then begin
                 ShowMessage('Quantidade do item inválida!');
                 Abort;
              end;
              If (TipoNotaMovimenta_Estoque.Value = true) and (PedidosSaida_Entrada.AsInteger = 1) then begin
                 if not ProdutosEstoque_Navio.asboolean then begin
                    // Executo o script de estoque aqui pois não pode considerar o próprio pedido na conta.
                    with tDisponivel do begin
                         SQL.Clear;
                         SQL.Add('SELECT CAST((ISNULL((SELECT SUM(Quantidade) FROM NotasItens      WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada,0) = 0)), 0) +');
                         SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Estoque = 1)), 0) +');
                         SQL.Add('       ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada   = :pCodigo) ), 0) -');
                         SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
                         SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Pedido <> :pPedido) ), 0)) -');
                         SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = :pCodigo) ), 0) AS DECIMAL(14,3))');
                         SQL.Add('       AS Disponivel');
                         ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                         ParamByName('pPedido').AsInteger := PedidosItensPedido.AsInteger;
                         //SQL.SaveToFile('c:\temp\Disponivel.sql');
                         Open;
                         mDisponivel := FieldByName('Disponivel').AsFloat;
                    end;
                    If (PedidosItensQuantidade.AsFloat > mDisponivel) and (Button <> nbCancel) then begin
                       ShowMessage('Quantidade invalída, maior que a quantidade disponível para este item'+#13+#13+'Estoque Disponível: '+FormatFloat('###,###,###,##0.000', mDisponivel));
                       cQuantidade.SetFocus;
                       Abort;
                    End;
                    If (tDisponivel.FieldByName('Disponivel').AsFloat <= ProdutosEstoque_Minimo.Value) then begin
                       ShowMessage('Ateção!'+#13+#13+'Estoque do produto atingiu estoque mínimo: '+FormatFloat('###,###,###,##0.000', ProdutosEstoque_Minimo.Value));
                    End;
                 end else begin
                    with tDisponivel do begin
                         SQL.Clear;
                         SQL.Add('SELECT CAST((ISNULL((SELECT SUM(Quantidade) FROM NotasItens      WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada,0) = 0)  and (Navio = :pNavio)), 0) +');
                         SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Estoque = 1) and (Navio = :pNavio)), 0) +');
                         SQL.Add('       ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada   = :pCodigo) ), 0) -');
                         SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0) and (Navio = :pNavio)), 0) -');
                         SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Pedido <> :pPedido)  and (Navio = :pNavio)), 0)) -');
                         SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = :pCodigo) ), 0) AS DECIMAL(14,3))');
                         SQL.Add('       AS Disponivel');
                         ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                         ParamByName('pPedido').AsInteger := PedidosItensPedido.AsInteger;
                         ParamByName('pNavio').AsInteger  := PedidosItensNavio.AsInteger;
                         //SQL.SaveToFile('c:\temp\Disponivel.sql');
                         Open;
                         mDisponivel := FieldByName('Disponivel').AsFloat;
                    end;
                    If (PedidosItensQuantidade.AsFloat > mDisponivel) and (Button <> nbCancel) then begin
                       ShowMessage('Quantidade invalída, maior que a quantidade disponível para este navio (ESTOQUE).');
                       cQuantidade.SetFocus;
                       Abort;
                    End;
                 end;
              End;

              if (TipoNotaMovimenta_Inventario.Value) and (PedidosSaida_Entrada.AsInteger = 1) then begin
                 // Executo o script de estoque aqui pois não pode considerar o próprio pedido na conta.
                 with tDisponivel do begin 
                      sql.Clear;
                      sql.Add('SELECT CAST((ISNULL((SELECT SUM(Quantidade) FROM NotasItens      WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 0) AND (Movimenta_Inventario = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada,0) = 0)), 0) +');
                      sql.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1)), 0) +');
                      sql.Add('       ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada   = :pCodigo) ), 0) -');
                      sql.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Inventario = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
                      sql.Add('       ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Inventario = 1) AND (Pedido <> :pPedido) ), 0)) -');
                      sql.Add('       ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = :pCodigo) ), 0) AS DECIMAL(14,3))');
                      sql.Add('       AS Disponivel');
                      ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                      ParamByName('pPedido').AsInteger := PedidosItensPedido.AsInteger;
                      //SQL.SaveToFile('c:\temp\Disponivel.sql');
                      Open;
                      mDisponivel := tDisponivel.FieldByName('Disponivel').AsFloat;
                 end;
                 if (PedidosItensQuantidade.AsFloat > mDisponivel) and (Button <> nbCancel) then begin
                    ShowMessage('Quantidade invalída, maior que a quantidade disponível no inventário para este item'+#13+#13+'Estoque Disponível: '+FormatFloat('###,###,###,##0.000', mDisponivel));
                    cQuantidade.SetFocus;
                    Abort;
                 end;
              end;

              // Verifica se CST de PIS e COFINS são iguais e se estão informadas.
              if (Trim(PedidosItensCSTPIS.AsString) = '') or (Trim(PedidosItensCSTCOFINS.AsString) = '') then begin
                 ShowMessage('CST de PIS/COFINS devem ser informadas para este pedido.');
                 cCSTPIS.SetFocus;
                 Abort;
              end;
              if PedidosItensCSTPIS.Value <> PedidosItensCSTCOFINS.Value then begin
                 ShowMessage('As CST´s de PIS e de COFINS devem ser iguais.');
                 cCSTPIS.SetFocus;
                 Abort;
              end;
             
              // Se o tipo de nota apura PIS/COFINS obriga valores de PIS/COFINS.
              if TipoNotaApuracao_PISCOFINS.AsBoolean then begin
                 if not PedidosComplementar.AsBoolean then begin
                    // Verifica se CST de PIS/COFINS é tributavel ou não e verifica se os valores estão compativeis.
                    if CSTPISCodigo.AsString <> '05' then begin
                       if (CSTPISTributavel.AsBoolean) and (not CSTPISAliquota_Zero.AsBoolean) and (ProdutosDetalhe_Especifico.asstring <> 'C') then begin
                          if (PedidosItensValor_BCPIS.AsCurrency = 0) or (PedidosItensAliquota_PIS.AsFloat = 0) or (PedidosItensValor_PIS.AsCurrency = 0) then begin
                             ShowMessage('CST de PIS é tributável, todos os valores de PIS são obrigatórios.');
                             cBCPIS.SetFocus;
                             Abort;
                          end;
                       end;
                    end;
                    if (not CSTPIS.FieldByName('Tributavel').AsBoolean) or (CSTPIS.FieldByName('Aliquota_Zero').AsBoolean) then begin
                       if (PedidosItensValor_BCPIS.AsCurrency > 0) or (PedidosItensAliquota_PIS.AsFloat > 0) or (PedidosItensValor_PIS.AsCurrency > 0) then begin
                          ShowMessage('Para CST de PIS não tributável ou tributável a alíquota zero, todos os valores de PIS devem ser zerados.');
                          cBCPIS.SetFocus;
                          Abort;
                       end;
                    end;
                    if CSTCOFINSCodigo.AsString <> '05' then begin
                       if CSTCOFINS.FieldByName('Tributavel').AsBoolean and (not CSTPISAliquota_Zero.AsBoolean) and (ProdutosDetalhe_Especifico.asstring <> 'C') then begin
                          if (PedidosItensValor_BCPIS.AsCurrency = 0) or (PedidosItensAliquota_COFINS.AsFloat = 0) or (PedidosItensValor_COFINS.AsCurrency = 0) then begin
                             ShowMessage('CST de COFINS é tributável, todos os valores de COFINS são obrigatórios.');
                             cBCCOFINS.SetFocus;
                             Abort;
                          end;
                       end;
                    end;
                    if (not CSTPIS.FieldByName('Tributavel').AsBoolean) or (CSTPIS.FieldByName('Aliquota_Zero').AsBoolean) then begin
                       if (PedidosItensValor_BCPIS.AsCurrency > 0) or (PedidosItensAliquota_COFINS.AsFloat > 0) or (PedidosItensValor_COFINS.AsCurrency > 0) then begin
                          ShowMessage('Para CST de COFINS não tributável ou tributável a alíquota zero, todos os valores de COFINS devem ser zerados.');
                          cAliquotaCOFINS.SetFocus;
                          Abort;
                       end;
                    end;
                 end;
              end;

              // Verifica se valor e alíquota de ICMS Operacional estão informados.
              If (PedidosItensValor_ICMSOper.Value > 0) and (PedidosItensAliquota_ICMSOper.Value <= 0) then begin
                 ShowMessage('Se existe valor de ICMS deve existir alíquota de ICMS!');
                 cAliquotaICMSOper.SetFocus;
                 Abort;
              End;
              If (PedidosItensValor_ICMSOper.Value <= 0) and (PedidosItensAliquota_ICMSOper.Value > 0) then begin
                 ShowMessage('Se existe alíquota de ICMS Operacional deve existir valor de ICMS Operacional!');
                 cValorICMSOper.SetFocus;
                 Abort;
              End;
              If (PedidosItensValor_ICMSSub.Value > 0) and (PedidosItensAliquota_ICMSSub.Value <= 0) then begin
                 ShowMessage('Se existe valor de ICMS ST deve existir alíquota de ICMS ST!');
                 cAliquotaICMSSub.SetFocus;
                 Abort;
              End;
              If (PedidosItensValor_ICMSSub.Value <= 0) and (PedidosItensAliquota_ICMSSub.Value > 0) then begin
                 ShowMessage('Se existe alíquota de ICMS ST deve existir valor de ICMS ST!');
                 cValorICMSSub.SetFocus;
                 Abort;
              End;
              If (Trim(PedidosItensCodigoTrib_TabA.AsString) = '') or (Trim(PedidosItensCodigoTrib_TabB.AsString) = '') then begin
                 ShowMessage('É preciso informar a CST de ICMS.');
                 cTabA.SetFocus;
                 Abort;
              End;

              // Verifica se CST de ICMS é tributavel ou não e verifica se os valores estão compativeis.
              if (not CSTTabelaB.FieldByName('Monofasico').AsBoolean) then begin
                 if not TipoNota.FieldByName('Complementar').AsBoolean then begin
                    if (CSTTabelaB.FieldByName('Tributavel').AsBoolean) and ((CSTTabelaB.FieldByName('Codigo').AsString <> '90') and (CSTTabelaB.FieldByName('Codigo').AsString <> '900')) then begin
                       if (PedidosItensValor_BCICMSOper.AsCurrency = 0) or (PedidosItensAliquota_ICMSOper.AsFloat = 0) or (PedidosItensValor_ICMSOper.AsCurrency = 0) then begin
                          ShowMessage('CST de ICMS é tributável, todos os valores de ICMS são obrigatórios.');
                          cTabB.SetFocus;
                          Abort;
                       end;
                    end;   
                    if (not CSTTabelaB.FieldByName('Tributavel').AsBoolean) and ((CSTTabelaB.FieldByName('Codigo').AsString <> '90') and (CSTTabelaB.FieldByName('Codigo').AsString <> '900')) then begin
                       if (PedidosItensValor_BCICMSOper.AsCurrency <> 0) or (PedidosItensAliquota_ICMSOper.AsFloat <> 0) or (PedidosItensValor_ICMSOper.AsCurrency <> 0) then begin
                          ShowMessage('CST de ICMS não é tributável, todos os valores de ICMS devem ser zerados.');
                          cTabB.SetFocus;
                          Abort;
                       end;
                    end;
                 end;
              end else begin
                 if trim(TipoNota.FieldByName('Formula_ICMSMono').Asstring) <> '' then begin
                    if (PedidosItensValor_ICMSMono.AsCurrency = 0) and (PedidosItensValor_ICMSMonoRet.AsCurrency = 0) then begin
                       ShowMessage('CST de ICMS não é tributável, todos os valores de ICMS devem ser zerados.');
                       cBCICMSMono.SetFocus;
                       Abort;
                    end;
                 end;
              end;

              // Verifica se CST de IPI é tributavel ou não e verifica se os valores estão compativeis.
              if not TipoNota.FieldByName('Complementar').AsBoolean then begin
                 CSTIPI.Locate('Codigo', PedidosItensCSTIPI.Value, [loCaseInsensitive]);
                 if (CSTIPI.FieldByName('Tributavel').AsBoolean) and ((CSTIPI.FieldByName('Codigo').AsString <> '99') and (CSTIPI.FieldByName('Codigo').AsString <> '49')) then begin
                    if (PedidosItensValor_BCIPI.AsCurrency = 0) or (PedidosItensAliquota_IPI.AsFloat = 0) or (PedidosItensTotal_IPI.AsCurrency = 0) then begin
                       ShowMessage('CST de IPI é tributável, todos os valores de IPI são obrigatórios.');
                       cBCIPI.SetFocus;
                       Abort;
                    end;
                 end;
              end;

              // Verifica se a alíquota de MVA esta informada caso a tipo de nota calcule ICMS ST.
              If Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '' then begin
                 ICMS.Locate('UF', PedidosDestinatario_Estado.Value, [loCaseInsensitive]);
                 Estados.Locate('Codigo', PedidosDestinatario_Estado.Value, [loCaseInsensitive]);
                 If (ICMSMVA.AsBoolean) and (PedidosItensAliquota_MVA.AsFloat <= 0) then begin
                    ShowMessage('O estado "'+EstadosDe_Do.AsString+'" calcula MVA e a alíquota não foi informada na tabela de ICMS!');
                    cMVA.SetFocus;
                    Abort;
                 End;
              End;
              // Verifica se valor e alíquota de IPI estão informados.
              If (PedidosItensTotal_IPI.Value > 0) and (PedidosItensAliquota_IPI.Value <= 0) then begin
                 ShowMessage('Se existe valor de IPI deve existir alíquota de IPI!');
                 cAliquotaIPI.SetFocus;
                 Abort;
              End;
              If (PedidosItensTotal_IPI.Value <= 0) and (PedidosItensAliquota_IPI.Value > 0) then begin
                 ShowMessage('Se existe alíquota de IPI deve existir valor de IPI!');
                 cValorIPI.SetFocus;
                 Abort;
              End;
              If Trim(PedidosItensCSTIPI.AsString) = '' then begin
                 ShowMessage('É preciso informar a CST de IPI.');
                 cCSTIPI.SetFocus;
                 Abort;
              End;
              // Verifica se a CFOP foi informada.
              If Trim(cNatureza.Text) = '' then begin
                 ShowMessage('Código de CFOP informado para item incorreto.');
                 cCodigoNatureza.SetFocus;
                 Abort;
              End;
              // Verifica se o valor informado esta dentro da margem de lucro quando o tipo de nota exige.
              if (TipoNotaBloqueio_Lucro.AsBoolean) and (not ChecaValor) then begin
                 Abort;
              end;

              ICMS.Locate('UF', PedidosDestinatario_Estado.Value, [loCaseInsensitive]);

              If TipoNotaNota_Referencia.AsBoolean then begin
                 If Trim(PedidosItensNota_Referencia.AsString) = '' then begin
                    ShowMessage('É preciso informar a chave da nota fiscal de referência!');
                    cNotaRef.SetFocus;
                    Abort;
                 End;

                 tPesquisa.SQL.Clear;
                 tPesquisa.SQL.Add('SELECT * FROM NotasFiscais WHERE NFe_cNF = :pNotaRef');
                 tPesquisa.ParamByName('pNotaRef').AsString := cNotaRef.Text;
                 tPesquisa.Open;
                 If tPesquisa.RecordCount = 0 then begin
                    tPesquisa.SQL.Clear;
                    tPesquisa.SQL.Add('SELECT * FROM NotasTerceiros WHERE NFe_cNF = :pNotaRef');
                    tPesquisa.ParamByName('pNotaRef').AsString := cNotaRef.Text;
                    tPesquisa.Open;
                 End;
                 If tPesquisa.RecordCount = 0 then begin
                    ShowMessage('Nenhuma nota fiscal própria ou de terceiros encontrada com a chave informada!');
                 End;
              End;

              if TipoNotaMedia_BCR.AsBoolean = true then begin
                 CalculoBCR;
              end;

              If PedidosItens.State = dsInsert then begin
                 Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.AsInteger, [loCaseInsensitive]);
                 PedidosItensCodigo_Fabricante.Value := ProdutosCodigo_Fabricante.Value;

                 tPesquisa.SQL.Clear;
                 tPesquisa.SQL.Add('SELECT * FROM PedidosItens WHERE (Pedido = :pPedido) AND (Codigo_Mercadoria = :pCodigo)');
                 tPesquisa.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                 tPesquisa.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                 tPesquisa.Open;
                 If tPesquisa.RecordCount > 0 then begin
                    ShowMessage('Item ja informado neste pedido de nota fiscal.');
                    Abort;
                 End;
              End;

              If (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
                 If (PedidosItens.State = dsInsert) then begin
                    tItem.SQL.Clear;
                    tItem.SQL.Add('SELECT MAX(Item) AS Item FROM PedidosItens WHERE (Pedido = :pPedido)');
                    tItem.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                    tItem.Open;
                    PedidosItensPedido.Value             := PedidosNumero.Value;
                    PedidosItensItem.Value               := tItem.FieldByName('Item').AsInteger + 1;
                    PedidosItensSequencia_SISCOMEX.Value := PedidosItensItem.Value;
                    PedidosItensSequencia.Value          := tItem.FieldByName('Item').AsInteger + 1;
                 end;

                 if not CSTTabelaBTributavel.AsBoolean then begin
                    PedidosItensAliquota_ICMSOper.Value := 0;
                    PedidosItensValor_BCICMSOper.Value  := 0;
                    PedidosItensValor_ICMSOper.Value    := 0;
                 end;
              End;
              if Trim(TipoNotaFormula_MercadoriaImp.AsString) <> '' then begin
                 PedidosItensValor_Unitario.Value := CalculaMacro('Calculo_MercadoriaImp');
                 Recalcula;
              end;
              if Trim(cProcesso.Text) <> '' then begin
                 PedidosItensDI.Value := ProcessosDocNumero_Declaracao.Value;
              end;

              // Verifica o codigo do credito presumido.
//              if (PedidosItensValor_ICMSPresumido.ascurrency > 0) and (trim(PedidosItensCodigo_CredPres.AsString) = '') then begin
//                 MessageDlg('Atenção!'+#13+#13+'Código da do Credito Presumido não informado na NCM.'#13+#13+'Isso pode causar rejeição da nota fiscal na SEFAZ.', mtWarning, [mbok], 0);
//              end;
              
              // Log de operações do sistema.
              LogDados(Dados.PedidosItens, '('+Dados.PedidosItensPedido.AsString+') '+mSaiEntra[Dados.PedidosItensSaida_Entrada.AsInteger]+ ' [Outras], de '+Dados.PedidosData_Emissao.AsString+' Item '+Dados.PedidosItensItem.AsString+ ' - '+Dados.PedidosItensCodigo_Mercadoria.AsString, Dados.PedidosItens.State);
           End;
           If Button = nbDelete then begin
              with ProdutosSeriais do begin
                   SQL.Clear;
                   SQL.Add('update produtosseriais set pedido = null, disponivel = 1 where(produto_codigo = :pcodigo) and (pedido = :ppedido)');
                   ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                   ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                   Execute;
              end;
              with tDisponivel do begin
                   SQL.Clear;
                   SQL.Add('delete from pedidositensdetalhe where produto_codigo = :pcodigo and pedido = :ppedido');
                   ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                   ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                   Execute;
              end;
              with tTemp do begin
                   sql.Clear;
                   sql.Add('delete from PedidosItensNavios where Pedido = :pPedido and Codigo_Mercadoria = :pCod');
                   ParamByName('pPedido').Asinteger := PedidosItensPedido.asinteger;
                   ParamByName('pCod').Asinteger    := PedidosItensCodigo_Mercadoria.asinteger;
                   execute;
              end;
           end;
      End;
end;

procedure TPedido_ItensOutros.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
Var
    curPos: LongInt;
    gridCoord: TGridCoord;
    mTexto: String;
    i
   ,mTam: Integer;
begin
      With HintInfo do begin
           If HintControl is TDBGrid then begin
              With TDBGridDescendant(HintControl),gridCoord do begin
                   Application.HideHint;
                   gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                   Try
                      curPos := DataLink.ActiveRecord;
                      try
                         DataLink.ActiveRecord := y-1;
                         If not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                            HintStr := '';
                            With Dados do begin
                                 mTexto := Dados.ProdutosDescricao.Value;
                                 mTexto  := RemoveCaracter('<{'+Produtos.FieldByName('Codigo').AsString+'}>', '', mTexto);
                                 mTam   := 1;
                                 For i := 1 to Length(mTexto) do begin
                                     HintStr := HintStr + Copy(mTexto, i, 1);
                                     Inc(mTam);
                                     If mTam = 50 then begin
                                        HintStr := HintStr + #13;
                                        mtam    := 1;
                                     End;
                                 End;
                            End;
                         end else
                            HintStr := '\';
                      finally
                         DataLink.ActiveRecord := CurPos;
                      end;
                      CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                   except
                      CanShow := False
                   End;
              End;
           End;
      End;
end;

procedure TPedido_ItensOutros.cBCIPIChange(Sender: TObject);
begin
      With Dados do begin
           If (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              If (PedidosItensAliquota_IPI.Value > 0) and (PedidosItensQuantidade.AsFloat> 0) then begin
                 PedidosItensValor_IPI.Value := Roundto(Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value)/PedidosItensQuantidade.AsFloat, -2);
                 PedidosItensTotal_IPI.Value := Roundto(Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value), -2);
                 // Valor do IPI na devolução.
                 PedidosItensValor_IPIDevol.Value := 0;
                 if TipoNotaIPI_Devolucao.asboolean then begin
                    PedidosItensValor_IPIDevol.Value := PedidosItensTotal_IPI.Value;
                    with tTemp do begin
                         sql.Clear;
                         sql.Add('select Valor_IPI from NotasItens where)');
                    end;
                 end;
              End;
           End;
      End;
end;

// Executa os calculos dos macro passados como strings.
Function TPedido_ItensOutros.CalculaMacro(Campo:String):Real;
var
    mPos
   ,mTam
   ,mPosFun
   ,i: Integer;
    mResultado: Real;
    mFormula     
   ,mCampo       
   ,mSQL         
   ,mFuncao      
   ,mFunTermo1   
   ,mFunTermo2   
   ,mFunCondic   
   ,mSinal       
   ,mValorCondic1
   ,mValorCondic2: String;
begin
     With Dados, dmFiscal do begin
          Pedidos.DisableControls;

          // Convertendo a formulas do campo.
          TipoNota.Locate('Codigo', PedidosTipo_Nota.AsInteger, [loCaseInsensitive]);

          mFormula := RemoveCaracter(#13,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#12,'',mFormula);
          mFormula := RemoveCaracter(#10,'',mFormula);

          Campos.First;
          While not Campos.Eof do begin
                mTam   := Length(Trim(CamposCampo.Value));
                mPos   := Pos(CamposCampo.Value, mFormula);
                mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 60);
                mCampo := Trim(Copy( mCampo, 1, Pos(']',mCampo)-1));
                If (CamposPesquisa.Value <> '') and (mPos <> 0) then Begin
                   mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 30);
                   mCampo := Copy(mCampo, 1, Pos(']',mCampo)-1);
                End;
                If (mPos <> 0) then begin
                   Delete( mFormula, mPos, mTam );
                   If UpperCase(CamposTabela.Value) = 'PEDIDOS' then begin
                      If Trim(Pedidos.FieldByName(mCampo).AsString) <> '' then
                         Insert( Pedidos.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PEDIDOSITENS' then begin
                      If Trim(PedidosItens.FieldByName(mCampo).AsString) <> '' then begin
                         Insert( PedidosItens.FieldByName(mCampo).AsString, mFormula, mPos );
                      end else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASTERCEIROSITENS' then begin
                      If Trim(NotasTerceirosItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasTerceirosItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASTERCEIROS' then begin
                      If Trim(NotasTerceirosItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasTerceirosItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASITENS' then begin
                      If Trim(NotasItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PROCESSOSDOCUMENTOS' then begin
                      If Trim(PedidosProcesso.AsString) <> '' then begin
                         If Trim(ProcessosDOC.FieldByName(mCampo).AsString) <> '' then 
                            Insert( ProcessosDOC.FieldByName(mCampo).AsString, mFormula, mPos )
                         else
                            Insert( '0', mFormula, mPos );
                      end else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'ADICOES' then begin
                      If Trim(Adicoes.FieldByName(mCampo).AsString) <> '' then
                         Insert( Adicoes.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'CLIENTES' then begin
                      If Trim(Clientes.FieldByName(mCampo).AsString) <> '' then
                         Insert( Clientes.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NCM' then begin
                      If Trim(NCM.FieldByName(mCampo).AsString) <> '' then
                         Insert( NCM.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PRODUTOS' then begin
                      If Trim(Produtos.FieldByName(mCampo).AsString) <> '' then
                         Insert( Produtos.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'FICHAESTOQUE' then begin
                      If Trim(FichaEstoque.FieldByName(mCampo).AsString) <> '' then
                         Insert( FichaEstoque.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'FICHAINVENTARIO' then begin
                      If Trim(FichaInventario.FieldByName(mCampo).AsString) <> '' then
                         Insert( FichaInventario.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'ICMS' then begin
                      If EmpresasEstado.Value = ClientesEstado.Value then begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Nac_NContribuinte'
                         else
                            mCampo := 'Nac_Contribuinte';
                      End else begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_NContribuinte'
                         else
                            mCampo := 'Imp_Contribuinte';
                      End;
                      Insert( ICMS.FieldByName(mCampo).AsString, mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PAGARRECEBER' then begin
                      // Filtra a tabela para pegar o valor do lançamento.
                      If CamposPesquisa.Value <> '' then begin
                         mSQL := PagarReceber.SQL.Text;
                         PagarReceber.SQL.Clear;
                         PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Processo = '+QuotedStr(ProcessosDOCProcesso.Value)+') and ('+CamposCampo_Chave.Value+' = '+QuotedStr(CamposPesquisa.Value)+')' );
                         PagarReceber.Open;

                         // Se não houver lançamento feito insere o valor 0 na formula.
                         If PagarReceber.RecordCount <> 0 then
                            Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                         else
                            Insert( '0', mFormula, mPos );
                      End else begin
                         mCampo := CamposCampo_Chave.Value;
                         Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                      End;
                   End;
                End;
                If mPos = 0 then Campos.Next;
          End;

          while Pos('{', mFormula) > 0 do begin
                mPosFun := Pos('{', mFormula)+1;
                mFuncao := Copy(mFormula, mPosFun, Pos('}', mFormula)-mPosFun);

                // Condição da função.
                mFunCondic := Copy(mFuncao, 1, Pos(';', mFuncao));
                mFuncao    := RemoveCaracter(mFunCondic, '', mFuncao);
                mFunCondic := RemoveCaracter(';', '', mFunCondic);

                // Primeiro termo da função.
                mFunTermo1 := Copy(mFuncao, 1, Pos(';', mFuncao));
                mFuncao    := RemoveCaracter(mFunTermo1, '', mFuncao);
                mFunTermo1 := RemoveCaracter(';', '', mFunTermo1);

                // Segundo termo da função.
                mFunTermo2 := RemoveCaracter(';', '', mFuncao);

                // Sinal utilizado no teste de condição.
                mSinal := '';
                for i := 1 to Length(mFunCondic) do begin
                    If (mFunCondic[i] = '=') or (mFunCondic[i] = '>') or (mFunCondic[i] = '<') then mSinal := mSinal + mFunCondic[i];
                end;

                // Valores da condição.
                mValorCondic1 := Copy(mFunCondic, 1, Pos(mSinal, mFunCondic)-1);
                mValorCondic2 := Copy(mFunCondic, Pos(mSinal, mFunCondic)+Length(mSinal), Length(mFunCondic)-Length(mSinal)-Length(mValorCondic1)) ;
                mFuncao := '';
                for i := Pos('{', mFormula) to Length(mFormula) do begin
                    mFuncao := mFuncao + mFormula[i];
                    If mFormula[i] = '}' then break;
                end;

                if ApenasNumeros(mValorCondic2) <> '' then begin
                   if (mSinal = '=' ) and (StrtoFloat(mValorCondic1) =  StrtoFloat(mValorCondic2)) or
                      (mSinal = '>' ) and (StrtoFloat(mValorCondic1) >  StrtoFloat(mValorCondic2)) or
                      (mSinal = '<' ) and (StrtoFloat(mValorCondic1) <  StrtoFloat(mValorCondic2)) or
                      (mSinal = '<>') and (StrtoFloat(mValorCondic1) <> StrtoFloat(mValorCondic2)) or
                      (mSinal = '<=') and (StrtoFloat(mValorCondic1) <= StrtoFloat(mValorCondic2)) or
                      (mSinal = '>=') and (StrtoFloat(mValorCondic1) >= StrtoFloat(mValorCondic2)) then
                      mFormula := RemoveCaracter(mFuncao, mFunTermo1, mFormula)
                   else
                      mFormula := RemoveCaracter(mFuncao, mFunTermo2, mFormula);
                end else begin
                   if (mSinal = '=' ) and (mValorCondic1 =  mValorCondic2) or
                      (mSinal = '>' ) and (mValorCondic1 >  mValorCondic2) or
                      (mSinal = '<' ) and (mValorCondic1 <  mValorCondic2) or
                      (mSinal = '<>') and (mValorCondic1 <> mValorCondic2) or
                      (mSinal = '<=') and (mValorCondic1 <= mValorCondic2) or
                      (mSinal = '>=') and (mValorCondic1 >= mValorCondic2) then
                      mFormula := RemoveCaracter(mFuncao, mFunTermo1, mFormula)
                   else
                      mFormula := RemoveCaracter(mFuncao, mFunTermo2, mFormula);
                end;
          end;

          Pedidos.EnableControls;
     End;

     mResultado := 0;
     
     Try
        mMacro.Formula := mFormula;
        mResultado     := mMacro.Calc([0]);
        If mResultado <= 0 then mResultado := 0;
     Except
          showmessage('Erro na formula do campo '+Campo);
     end;
     
     cFormulaI.Lines.Add('      ITEM: '+Dados.PedidosItensCodigo_Mercadoria.AsString + ' - '+Copy(Dados.PedidosItensDescricao_Mercadoria.AsString,1,100));
     cFormulaI.Lines.Add('     CAMPO: '+Campo);
     cFormulaI.Lines.Add('   FÓRMULA: '+RemoveCaracter(#13,'',Dados.TipoNota.FieldByName(Campo).AsString));
     cFormulaI.Lines.Add('   VALORES: '+mFormula);
     cFormulaI.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', mResultado));
     cFormulaI.Lines.Add('');
     cFormulaI.Visible := false;

     Pedido_Outros.cFormula.Lines.Add('     CAMPO: '+Campo);
     Pedido_Outros.cFormula.Lines.Add('   FÓRMULA: '+RemoveCaracter(#13,'',Dados.TipoNota.FieldByName(Campo).AsString));
     Pedido_Outros.cFormula.Lines.Add('   VALORES: '+mFormula);
     Pedido_Outros.cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', mResultado ));
     Pedido_Outros.cFormula.Lines.Add('');
     Pedido_Outros.cFormula.Visible := false;

     Result := mResultado;
end;

procedure TPedido_ItensOutros.cCodigoExit(Sender: TObject);
Var
    mTextoLimpo: Widestring;
begin
       if not mFim then begin
          With Dados, dmFiscal do begin
               If (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
                  FichaEstoque.SQL.Clear;
                  FichaEstoque.SQL.Add('SELECT *');
                  FichaEstoque.SQL.Add('FROM   FichaEstoque FE1');
                  FichaEstoque.SQL.Add('WHERE  FE1.Codigo = :pCodigo');
                  FichaEstoque.SQL.Add('AND    Item = (SELECT MAX(Item) FROM FichaEstoque FE2 WHERE FE2.Codigo = FE1.Codigo)');
                  FichaEstoque.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
                  FichaEstoque.Open;

                  FichaInventario.SQL.Clear;
                  FichaInventario.SQL.Add('SELECT *');
                  FichaInventario.SQL.Add('FROM   FichaInventario FI1');
                  FichaInventario.SQL.Add('WHERE  FI1.Codigo = :pCodigo');
                  FichaInventario.SQL.Add('AND    Item = (SELECT MAX(Item) FROM FichaInventario FI2 WHERE FI2.Codigo = FI1.Codigo)');
                  FichaInventario.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
                  FichaInventario.Open;

                  // Calculando o estoque disponível.
                  If (cCodigo.Showing = true) then begin
                     ApuraEstoque;
                  End;

                  // Remove caracteres de controle da descrição do produto.
                  Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.AsInteger, [loCaseInsensitive]);
                  mTextoLimpo := RemoveCaracter(#13,'', ProdutosDescricao.Value);
                  mTextoLimpo := RemoveCaracter(#12,'', mTextoLimpo);
                  mTextoLimpo := RemoveCaracter(#10,'', mTextoLimpo);
                  mTextoLimpo := RemoveCaracter('<{'+Trim(ProdutosCodigo.AsString)+'}>', '', mTextoLimpo);
                  PedidosItensDescricao_Mercadoria.Value := Trim(mTextoLimpo);

                  If CSTPISTributavel.AsBoolean = true then begin
                     If PedidosSaida_Entrada.AsInteger = 0 then
                        PedidosItensAliquota_PIS.Value := ProdutosPIS_Nota.Value
                     else
                        PedidosItensAliquota_PIS.Value := ProdutosPIS_NotaSaida.Value;
                  End;
                  If CSTCOFINSTributavel.AsBoolean = true then begin
                     If PedidosSaida_Entrada.AsInteger = 0 then
                        PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_Nota.Value
                     else
                        PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_NotaSaida.Value;
                  End;

                  PedidosItensMovimenta_Inventario.Value  := TipoNotaMovimenta_Inventario.Value;
                  PedidosItensMovimenta_Estoque.Value     := TipoNotaMovimenta_Estoque.Value;
                  PedidosItensMovimenta_EstoqueRep.Value  := TipoNotaMovimenta_EstoqueRep.Value;
                  PedidosItensApuracao_PISCOFINS.Value    := PedidosApuracao_PISCOFINS.Value;
                  PedidosItensPeso_Liquido.Value          := ProdutosPeso_Liquido.Value;
                  PedidosItensPeso_Bruto.Value            := ProdutosPeso_Bruto.Value;
                  PedidosItensSaida_Entrada.Value         := PedidosSaida_Entrada.Value;
                  PedidosItensNCM.Value                   := ProdutosNCM.Value;
                  PedidosItensUnidade_Medida.Value        := ProdutosUnidade.Value;
                  PedidosItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.Value;

                  if trim(PedidosItensProcesso.AsString) = '' then
                     PedidosItensProcesso.Value := PedidosProcesso.Value;

                  If Trim(cProcesso.Text) <> '' then begin
                     ProcessosDoc.Locate('Processo', CProcesso.Text, [loCaseInsensitive]);
                     PedidosItensDI.Value := ProcessosDocNumero_Declaracao.Value;
                  end;

                  If PedidosItensLucro.AsFloat = 0 then
                     PedidosItensLucro.Value := PedidosLucro.Value;

                  if (cDisponivel.Value > 0) or (PedidosSaida_Entrada.AsInteger = 0) then begin
                     If (PedidosItens.State = dsInsert) then begin
                        If PedidosNota_Referencia.Value > 0     then
                           NotasItens.Locate('Nota; Data', VarArrayOf([PedidosNota_Referencia.Value, PedidosData_Referencia.Value]), [loCaseInsensitive]);
                        If Trim(PedidosProcesso.AsString) <> '' then
                           ProcessosDoc.Locate('Processo', PedidosProcesso.Value, [loCaseInsensitive]);

                        PegaValorUni;

                        If PedidosNota_Referencia.Value > 0 then begin
                           NotasItens.SQL.Clear;
                           NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE Nota = :pNota AND Data = :pData AND Codigo_Mercadoria = :pCodigo');
                           NotasItens.ParamByName('pNota').AsInteger   := PedidosNota_Referencia.AsInteger;
                           NotasItens.ParamByName('pData').AsDate      := PedidosData_Referencia.AsDateTime;
                           NotasItens.ParamByName('pCodigo').Asinteger := PedidosItensCodigo_Mercadoria.AsInteger;
                           NotasItens.Open;

                           PedidosItensAdicao.Value            := NotasItensAdicao.Value;
                           PedidosItensCodigoTrib_TabA.Value   := NotasItensCodigoTrib_TabA.Value;
                           PedidosItensCodigoTrib_TabB.Value   := NotasItensCodigoTrib_TabB.Value;
                           PedidosItensCSTIPI.Value            := NotasItensCSTIPI.Value;
                           PedidosItensCSTPIS.Value            := NotasItensCSTPIS.Value;
                           PedidosItensCSTCOFINS.Value         := NotasItensCSTCOFINS.Value;
                           PedidosItensAliquota_ICMSOper.Value := NotasitensAliquota_ICMSOper.Value;
                           PedidosItensAliquota_IPI.Value      := NotasItensAliquota_IPI.Value;
                           PedidosItensAliquota_PIS.Value      := NotasItensAliquota_PIS.Value;
                           PedidosItensValor_PIS.Value         := NotasItensValor_PIS.Value;
                           PedidosItensValor_PISST.Value       := NotasItensValor_PISST.Value;
                           PedidosItensAliquota_COFINS.Value   := NotasItensAliquota_COFINS.Value;
                           PedidosItensValor_COFINS.Value      := NotasItensValor_COFINS.Value;
                           PedidosItensValor_COFINSST.Value    := NotasItensValor_COFINSST.Value;
                           PedidosItensAliquota_II.Value       := NotasItensAliquota_II.Value;
                           PedidosItensValor_II.Value          := NotasItensValor_II.Value;
                           PedidosItensEXTIPI.Value            := NotasItensEXTIPI.Value;
                           PedidosItensModalidade_BCICMS.Value := NotasItensModalidade_BCICMS.Value;
                           PedidosItensVeiculo.Value           := NotasItensVeiculo.Value;
                           PedidosItensAliquota_CBS.Value      := NotasItensAliquota_CBS.Value;
                           PedidosItensCSTCBS.Value            := NotasItensCSTCBS.Value;
                           PedidosItensAliquota_IBS.Value      := NotasItensAliquota_IBS.Value;
                           PedidosItensCSTIBS.Value            := NotasItensCSTIBS.Value;
                        End;

                        If PedidosItensAdicao.Value = 0 then PedidosItensAdicao.Value := 1;
                     End;

                     bSeriais.Enabled := ProdutosSerial_Obrigatorio.AsBoolean;

                     ProdutosSeriais.SQL.Clear;
                     ProdutosSeriais.SQL.Add('SELECT *');
                     ProdutosSeriais.SQL.Add('FROM  ProdutosSeriais PS');
                     ProdutosSeriais.SQL.Add('WHERE PS.Produto_Codigo = :pCodigo');
                     ProdutosSeriais.SQL.Add('AND   ISNULL(PS.Pedido,0) = 0');
                     ProdutosSeriais.SQL.Add('AND   ((SELECT COUNT(*) FROM ProdutosSeriaisNotas PSN WHERE PSN.Numero = PS.Numero AND PSN.Saida_Entrada = 0)-');
                     ProdutosSeriais.SQL.Add('       (SELECT COUNT(*) FROM ProdutosSeriaisNotas PSN WHERE PSN.Numero = PS.Numero AND PSN.Saida_Entrada = 1)) > 0');
                     ProdutosSeriais.SQL.Add('ORDER BY Cor, Numero');
                     ProdutosSeriais.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                     //ProdutosSeriais.SQL.SaveToFile('c:\temp\Pedidos_Itens_Seriais.sql');
                     ProdutosSeriais.Open;

                     bDetalhe.Enabled := ProdutosLote_Obrigatorio.AsBoolean;
                     If (ProdutosLote_Obrigatorio.AsBoolean) or (ProdutosSerial_Obrigatorio.AsBoolean) then begin
                        cQuantidade.Enabled := false;
                     end;

                     NCM.SQL.Clear;
                     NCM.SQL.Add('SELECT * FROM NCM WHERE NCM = :pNCM');
                     NCM.ParamByName('pNCM').AsString := ProdutosNCM.AsString;
                     NCM.Open;

                     if (Trim(NCMCodigoTrib_TabA.AsString) = '') then begin
                        MessageDlg('A origem da mercadoria "Tabela A (Importado)" não foi informada no cadastro da NCM.', mtError, [mbok], 0);
                        Navega.BtnClick(nbCancel);
                        Abort;
                     end;
                     if (Trim(NCMCodigoTrib_TabA3.AsString) = '') then begin
                        MessageDlg('A origem da mercadoria "Tabela A (Nacional)" não foi informada no cadastro da NCM.', mtError, [mbok], 0);
                        Navega.BtnClick(nbCancel);
                        Abort;
                     end;
                     if (Trim(NCMCodigoTrib_TabA3.AsString) = '') then begin
                        MessageDlg('A origem da mercadoria "Tabela A (Importado Adiquirido Mercado Interno)" não foi informada no cadastro da NCM.', mtError, [mbok], 0);
                        Navega.BtnClick(nbCancel);
                        Abort;
                     end;
                     PedidosItensCEST.Value                := NCMCEST.Value;
                     PedidosItensModalidade_BCICMSST.Value := NCMModalidade_BCICMSST.Value;
                     If TipoNotaMedia_BCR.AsBoolean = true then CalculoBCR;
                  end;
               End;

               ProcessosDOC.Close;
               ProcessosDOC.SQL.Clear;
               ProcessosDOC.SQL.Add('SELECT *');
               ProcessosDOC.SQL.Add('FROM ProcessosDocumentos');
               ProcessosDOC.SQL.Add('WHERE  Numero_Declaracao IN(SELECT DI FROM Adicoes WHERE Codigo_Mercadoria = :pProduto)');
               ProcessosDOC.SQL.Add('ORDER BY Tipo, Processo');
               ProcessosDOC.ParamByname('pProduto').AsInteger := PedidositensCodigo_Mercadoria.AsInteger;
               ProcessosDOC.Open;
          End;
       end;
       //cProdutoExit(Self);
end;

procedure TPedido_ItensOutros.cValorTotalChange(Sender: TObject);
begin
     with Dados do begin
          if mFim = false then begin
             if (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
                 Recalcula;
                 // Zera valores de ICMS caso de CST não tributável.
                 if not CSTTabelaB.fieldbyname('Tributavel').AsBoolean then begin
                    PedidosItensValor_BCICMSOper.Value  := 0;
                    PedidosItensValor_ICMSOper.Value    := 0;
                    PedidosItensAliquota_ICMSOper.Value := 0;
                    PedidosItensValor_ICMSReducao.Value := 0;
                 end;
             end;
          end;
     end;
End;

procedure TPedido_ItensOutros.cValorIBSChange(Sender: TObject);
var
  mCST: string;
begin
      with Dados do begin
           if (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              mCST := '';
              if (PedidosItensValor_IBS.Value > 0) or (PedidosItensAliquota_IBS.Value > 0) then mCST := 'T+I';
              {
              if ProdutosValor_IPI.Value         <> 0   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+V';
              if NCMIPI_TribAliquotaZero.Value   = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+V';
              if (NCMIPI_Isento.AsBoolean) or (TipoNotaIsencao_IPI.AsBoolean) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+I';
              if TipoNotaNao_Tributada_IPI.Value = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+NT';
              if TipoNotaImune_IPI.Value         = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IM';
              if NCMIPI_Suspensao.Value          = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';
              if TipoNotaSuspensao_IPI.Value     = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';
              if mCST                            = ''   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+<>';
              }
              if CSTIBS.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
                 mCST := '<>';
                 CSTIBS.Locate('Classificacao', mCST, [loCaseInsensitive]);
              end;
              if not TipoNotaCalculo_CST.asboolean then begin
                 PedidosItensCSTIBS.Value := CSTIBSCodigo.Value;
              end;   
           end;
      end;
end;

procedure TPedido_ItensOutros.cValorICMSOperChange(Sender: TObject);
Var
    mCST      : String;
    mApuracao1: Currency;
    mApuracao2: Currency;
begin
      if mFim = false then begin
         with Dados, dmFiscal do begin
              if (PedidosItens.State = dsEdit) or (PedidosItens.State = dsInsert) then begin
                  NCM.SQL.Clear;
                  NCM.SQL.Add('SELECT * FROM NCM WHERE NCM = :pNCM');
                  NCM.ParamByName('pNCM').AsString := PedidosItensNCM.AsString;
                  NCM.Open;

                  mCST := '';

                  If EmpresasRegime_Apuracao.AsInteger = 3 then begin
                     // Empresas optantes do Regime normal.
                     If PedidosItensAliquota_ICMSOper.Value <> 0 then
                        mCST := mCST + '+O'
                     else
                        mCST := mCST + '-O';     // ICMS Operacional.

                     If (Int(PedidosItensValor_BCICMSOper.Value) < Int(PedidosItensValor_Total.Value)) and (PedidosItensValor_BCICMSOper.Value > 0) then
                        mCST := mCST + '+R'
                     else
                        mCST := mCST + '-R';     // Reducao de base.

                     If TipoNotaSaida_Entrada.Value = 0 then begin
                        mCST := mCST + '-S';     // ICMS ST na Entrada.
                     end else begin
                        If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat <> 0) and (PedidosItensValor_ICMSSub.Value <> 0) then
                           mCST := mCST + '+S'
                        else
                           mCST := mCST + '-S';  // ICMS ST na Saida.
                     End;
                     If (TipoNotaIsencao_ICMS.AsBoolean = true) or (NCMICMS_Isento.AsBoolean = true) then 
                        mCST := '+I';
                     If TipoNotaNao_Tributada_ICMS.Value  = true then 
                        mCST := '+NT';
                     If (TipoNotaSuspensao_ICMS.AsBoolean = true) or (NCMICMS_Suspensao.AsBoolean = true) then 
                        mCST := '+SUS';
                     If ((ProcessosDOCICMS_Diferido.Value  = true) and (TipoNotaSaida_Entrada.Value = 0)) or (TipoNotaDiferido_ICMS.AsBoolean) then 
                        mCST := '+D';
                     If (cICMS.Checked = True) then 
                        mCST := mCST + '+SD';
                     If (TipoNotaIsencao_ICMS.AsBoolean = true) or (NCMICMS_Isento.AsBoolean = true) then
                        mCST := '+I';
                     If TipoNotaNao_Tributada_ICMS.Value  = true then
                        mCST := '+NT';
                     If (TipoNotaSuspensao_ICMS.AsBoolean = true) or (NCMICMS_Suspensao.AsBoolean = true) then
                        mCST := '+SUS';
                        
                     // CST para Detalhe especifico combustivel.
                     if PedidosSaida_Entrada.AsInteger = 0 then begin
                        if ProdutosCSTICMS_Entrada.asstring <> '' then mCST := ProdutosCSTICMS_Entrada.AsString;
                     end else begin
                        if ProdutosCSTICMS_Saida.asstring <> '' then mCST := ProdutosCSTICMS_Saida.AsString;
                     end;

                     if TipoNotaMonofasico_Comb.asboolean         then MCST := '02';
                     if TipoNotaMonofasico_CombRetencao.asboolean then MCST := '15';
                     if TipoNotaMonofasico_CombDiferido.asboolean then MCST := '53';
                     if TipoNotaMonofasico_CombAnterior.asboolean then MCST := '61';

                     If not CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]) then begin
                        mCST := '<>';
                        CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]);
                     End;
                  end else begin
                     // Empresas optantes do Regime do Simples Nacional.
                     If TipoNotaSaida_Entrada.Value = 1 then begin
                        If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat = 0) and (not ClientesConsumidor_Final.AsBoolean) and (not ClientesSimples_Nacional.AsBoolean) then
                           mCST := '101'
                     End;
                     If TipoNotaSaida_Entrada.Value = 0 then begin
                        If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat = 0) then
                           mCST := '102'
                     end else begin
                        If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat = 0) and ((ClientesConsumidor_Final.AsBoolean) or (ClientesSimples_Nacional.AsBoolean)) then
                           mCST := '102'
                     End;
                     If (TipoNotaIsencao_ICMS.AsBoolean) or (NCMICMS_Isento.AsBoolean) then begin
                        If PedidosSaida_Entrada.AsInteger = 0 then begin         // NF de Entrada.
                           If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat = 0) then
                              mCST := '103'
                        end else begin                                           // NF de Saída.
                            If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat = 0) then
                               mCST := '103'
                        End;
                     End;
                     If TipoNotaSaida_Entrada.Value = 1 then begin
                        If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat > 0) and (not ClientesConsumidor_Final.AsBoolean) and (not ClientesSimples_Nacional.AsBoolean) then
                           mCST := '201'
                     End;
                     If TipoNotaSaida_Entrada.Value = 0 then begin
                        If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat > 0) then
                           mCST := '202'
                     end else begin
                        If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat > 0) and ((ClientesConsumidor_Final.AsBoolean) or (ClientesSimples_Nacional.AsBoolean)) then
                           mCST := '202'
                     End;
                     If (TipoNotaIsencao_ICMS.AsBoolean) or (NCMICMS_Isento.AsBoolean) then begin
                        If PedidosSaida_Entrada.AsInteger = 0 then begin         // NF de Entrada.
                           If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat > 0) then
                              mCST := '203'
                        end else begin                                           // NF de Saída.
                            If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat > 0) then
                               mCST := '203'
                        End;
                     End;
                     If (TipoNotaImune_ICMS.AsBoolean) or (NCMICMS_Imune.AsBoolean) then mCST := '300';
                     If TipoNotaNao_Tributada_ICMS.AsBoolean                        then mCST := '400';
                     If cICMS.Checked                                               then mCST := '500';

                     If PedidosSaida_Entrada.AsInteger = 0 then begin
                        If Trim(TipoNotaCSOSN_Entrada.AsString) <> '' then begin
                           mCST := Trim(TipoNotaCSOSN_Entrada.AsString);
                        End;
                     end else begin
                        If Trim(TipoNotaCSOSN_Saida.AsString) <> '' then begin
                           mCST := Trim(TipoNotaCSOSN_Saida.AsString);
                        End;
                     End;
                     If not CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]) then begin
                        mCST := 'S<>';
                        CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]);
                     End;
                  end;
                  if (PedidosItensValor_Total.Value > 0) and (not TipoNotaCalculo_CST.asboolean) then begin
                     PedidosItensCodigoTrib_TabB.Value := CSTTabelaBCodigo.Value;
                     if ProdutosOrigem.Value = 'I' then
                        PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA.Value;
                     if ProdutosOrigem.Value = 'N' then
                        PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA2.Value;
                     if ProdutosOrigem.Value = 'M' then
                        PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA3.Value;
                  end;
                  mApuracao1 := PedidosItensValor_Total.Value - PedidosItensValor_BCICMSOper.Value;

                  If mApuracao1 < 0 then mApuracao1 := 0;

                  mApuracao2 := 0;

                  // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe.
                  If Pos('Pedidos_[Valor_TotalProdutos]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                     mApuracao2 := mApuracao2 + PedidosItensValor_Total.Value;
                  If Pos('Pedidos_[Valor_OutrasDespesas]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then begin
                     If ProdutosTipo_Conversao.Value <> 'M' then
                        mApuracao2 := mApuracao2 + ((PedidosItensValor_Despesa.Value*PedidosItensQuantidade.AsFloat) * ProdutosQuantidade_Unidade.AsFloat)
                     else
                        mApuracao2 := mApuracao2 + ((PedidosItensValor_Despesa.Value*PedidosItensQuantidade.AsFloat) / ProdutosQuantidade_Unidade.AsFloat);
                  End;
                  If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                     mApuracao2 := mApuracao2 + PedidosItensValor_ICMSOPer.Value;
                  If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                     mApuracao2 := mApuracao2 + PedidosItensValor_ICMSSub.Value;
                  If (Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                     (Pos('Pedidos_[Total_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0) then
                     mApuracao2 := mApuracao2 + PedidosItensValor_Frete.Value;
                  If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                     mApuracao2 := mApuracao2 + PedidosItensValor_Frete.Value;
                  If (Pos('Valor_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                     (Pos('NCM_[PIS]', TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                     (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                     If ProdutosTipo_Conversao.Value <> 'M' then
                        mApuracao2 := mApuracao2 + (PedidosItensValor_PIS.Value * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
                     else
                        mApuracao2 := mApuracao2 + (PedidosItensValor_PIS.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                  End;
                  If (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                     (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                     (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                     If ProdutosTipo_Conversao.Value <> 'M' then
                        mApuracao2 := mApuracao2 + (PedidosItensValor_COFINS.Value * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
                     else
                        mApuracao2 := mApuracao2 + (PedidosItensValor_COFINS.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                  End;

                  // Verifica se a mercadoria entrou com ICMS ST. e se o cliente é de fora do estado.
                  tEntradaST.SQL.Clear;
                  tEntradaST.SQL.Add('SELECT COUNT(*) AS Entradas');
                  tEntradaST.SQL.Add('FROM   NotasTerceirosItens');
                  tEntradaST.SQL.Add('WHERE  (Codigo_Mercadoria = :pCodigo)');
                  tEntradaST.SQL.Add('  AND  (SELECT Somar_ICMSST FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1');
                  tEntradaST.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                  tEntradaST.Open;

                  If (tEntradaST.FieldByName('Entradas').AsInteger > 0) and (EmpresasEstado.Value <> ClientesEstado.Value) then begin
                     PedidosItensValor_IsentasICMS.Value := 0;
                     PedidosItensValor_OutrasICMS.Value  := mApuracao2;
                  end else begin
                     If (EmpresasDistribuidora.AsBoolean = true) and (ProdutosEntrada_ST.AsBoolean = true) then begin
                        mApuracao1 := 0;
                     end else begin
                        mApuracao2 := mApuracao2-PedidosItensValor_BCICMSOper.Value-mApuracao1;
                     End;

                     If mApuracao2 < 0 then mApuracao2 := 0;

                     If CSTTabelaBApuracao1.Value <> CSTTabelaBApuracao2.Value then begin
                        If CSTTabelaBApuracao1.Value = 'I' then begin
                           PedidosItensValor_IsentasICMS.Value := mApuracao1;
                           PedidosItensValor_OutrasICMS.Value  := mApuracao2;
                        End;
                        If CSTTabelaBApuracao1.Value = 'O' then begin
                           PedidosItensValor_IsentasICMS.Value := mApuracao2;
                           PedidosItensValor_OutrasICMS.Value  := mApuracao1;
                        End;
                     end else begin
                        If CSTTabelaBApuracao1.Value = 'I' then begin
                           PedidosItensValor_IsentasICMS.Value := mApuracao1 + mApuracao2;
                           PedidosItensValor_OutrasICMS.Value  := 0;
                        End;
                        If CSTTabelaBApuracao1.Value = 'O' then begin
                           PedidosItensValor_IsentasICMS.Value := 0;
                           PedidosItensValor_OutrasICMS.Value  := mApuracao1+mApuracao2;
                        End;
                     End;
                  End;

                  // Valor de isentas e outras quando selecionado no tipo de nota "Não destacar ICMS".
                  If TipoNotaICMS_Destacar.AsBoolean then begin
                     PedidosItensValor_IsentasICMS.Value := 0;
                     PedidosItensValor_OutrasICMS.Value  := PedidosItensValor_Total.Value;
                     PedidosItensValor_IsentasIPI.Value  := 0;
                     PedidosItensValor_OutrasIPI.Value   := PedidosItensValor_Total.Value;
                  End;

                  // Calculo do ICMS Desonerado.
                  PedidosItensValor_ICMSDesonerado.Value := 0;
                  if PedidosItensValor_ICMSOper.AsCurrency > 0 then begin
                     case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['20','30','40','41','50','70','90']) of
                          0..6: PedidosItensValor_ICMSDesonerado.Value := PedidosItensValor_IsentasICMS.Value + PedidosItensValor_OutrasICMS.Value;
                     end;
                  end;
                  {
                  if PedidosItensFCP_ICMSDest.Value > 0 then begin
                     PedidosItensValor_ICMSDesonerado.Value := 0;
                  end;
                  
                  
                  // Calculo do ICMS diferimento.
                  PedidosItensValor_ICMSDif.Value    := 0;
                  PedidosItensAliquota_ICMSDif.Value := 0;
                  with IncentivosFiscais do begin
                       sql.Clear;
                       sql.Add('select * from IncentivosFiscais where Nome = '+Quotedstr(PedidosIncentivo_Fiscal.asstring));
                       open;
                       if recordcount > 0 then begin
                          mAliqDif := iif(PedidosSaida_Entrada.AsInteger = 0, fieldbyname('ICMS_DiferidoEnt').AsFloat, fieldbyname('ICMS_DiferidoSai').AsFloat);
                          if mAliqDif > 0 then begin
                             PedidosItensAliquota_ICMSDif.Value := mAliqDif;
                             PedidosItensValor_ICMSDif.Value    := PedidosItensValor_ICMSOper.AsCurrency - Percentual(PedidosItensValor_ICMSOper.AsCurrency, mAliqDif);
                          end;
                       end;
                  end;
                  }
              end;
         end;
      end;
 end;

procedure TPedido_ItensOutros.cProdutoExit(Sender: TObject);
var
   mUF
  ,mBenef: String;
begin
      with Dados, dmFiscal do begin
           mBenef                             := trim(iif(TipoNota.FieldByName('Saida_Entrada').Asinteger = 0, Produtos.FieldByName('Beneficio_FiscalEnt').AsString, Produtos.FieldByName('Beneficio_FiscalSai').AsString));
           PedidosItensBeneficio_Fiscal.value := iif(mBenef <> '', mBenef, TipoNota.FieldByName('Beneficio_Fiscal').AsString);
           PedidosItensCodigo_CredPres.value  := NCMCodigo_CredPres.Value;

           // Pegando a aliquota do ICMS Operacional.
           ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]);
           PedidosItensAliquota_IBS.Value := ICMS.FieldbyName('Aliquota_IBS').AsFloat;
           
           if (PedidosItens.State = dsInsert) then begin
              // Pegando a aliquota do ICMS Operacional.
              //ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]);

              NCM.SQL.Clear;
              NCM.SQL.Add('SELECT * FROM NCM WHERE NCM = :pNCM');
              NCM.ParamByName('pNCM').AsString := ProdutosNCM.AsString;
              NCM.Open;

              PedidosItensCEST.Value                 := NCMCEST.Value;
              PedidosItensAliquota_ICMSOper.Value    := 0;
              PedidosItensAliquota_ICMSDest.Value    := 0;
              PedidosItensAliquota_ICMSEntrada.value := 0;

              if TipoNotaSaida_Entrada.Value = 1 then begin
                 mUF := Trim(ClientesEstado.Value)+'_Reducao';
                 PedidosItensAliquota_ICMSReducao.Value := NCM.FieldbyName(mUF).AsFloat;
                 mUF := Trim(ClientesEstado.Value)+'_Reducao2';
                 PedidosItensAliquota_ICMSReducao2.Value := NCM.FieldbyName(mUF).AsFloat;

                 if NCMICMS_Operacional.Value = 0 then begin
                    // Mercadoria de origem importada.
                    if (NCMCodigoTrib_TabA.AsInteger in[1, 6]) and (ProdutosOrigem.AsString = 'I') then begin
                       // Contribuinte.
                       if ClientesIndicador_IE.Value = '1' then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_Contribuinte.Value;
                       end;
                       // Contribuinte com nf para comsumo.
                       if (ClientesIndicador_IE.Value = '1') and (TipoNotaFinalidade_Mercadoria.Value = 1) then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_NContribuinte.Value;
                       end;
                       // Não Contribuinte.
                       if (ClientesIndicador_IE.Value = '2') or (ClientesIndicador_IE.Value = '9') then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_NContribuinte.Value;
                       end;
                       // Atacadistas.
                       If ClientesAtacadista.AsBoolean then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_Atacadista.AsFloat;
                       End;
                       // Varejistas.
                       If ClientesVarejista.AsBoolean then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_Varejista.AsFloat;
                       End;
                    end;
                    // ICMS Operacional.
                    if Trim(PedidosItensCodigoTrib_TabB.AsString) <> '' then begin
                       if not TipoNotaVisiveis_ICMSOper.AsBoolean then begin
                          if (CSTTabelaBCodigo.AsString <> '90') and (CSTTabelaBCodigo.AsString <> '900') and (not CSTTabelaBTributavel.AsBoolean) then begin
                             PedidosItensValor_ICMSOper.Value    := 0;
                             PedidosItensValor_BCICMSOper.Value  := 0;
                             PedidosItensAliquota_ICMSOper.Value := 0;
                             PedidosItensValor_ICMSReducao.Value := 0;
                          end;
                       end;
                    end;
                    // Mercadoria de origem importada adquirida no mercado interno.
                    if (NCMCodigoTrib_TabA3.AsInteger in[2, 7]) and (ProdutosOrigem.AsString = 'M') then begin
                       // Contribuinte.
                       if ClientesIndicador_IE.Value = '1' then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_Contribuinte.Value;
                       end;
                       // Contribuinte com nf para comsumo.
                       if (ClientesIndicador_IE.Value = '1') and (TipoNotaFinalidade_Mercadoria.Value = 1) then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_NContribuinte.Value;
                       end;
                       // Não Contribuinte.
                       if (ClientesIndicador_IE.Value = '2') or (ClientesIndicador_IE.Value = '9') then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_NContribuinte.Value;
                       end;
                       // Atacadistas.
                       If ClientesAtacadista.AsBoolean then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_Atacadista.AsFloat;
                       End;
                       // Varejistas.
                       If ClientesVarejista.AsBoolean then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_Varejista.AsFloat;
                       End;
                    end;
                    // Mercadoria de origem Nacional.
                    if trim(NCMCodigoTrib_TabA2.asstring) = '' then begin
                       showmessage('Código de CST do ICMS da tabela A (Nacional) no cadastrado da "NCM" não informado.'+#13+#13+'NCM :'+NCMNCM.asstring);
                       abort;
                    end;
                    if (NCMCodigoTrib_TabA2.AsInteger in[0, 3, 4, 5]) and (ProdutosOrigem.AsString = 'N') then begin
                       // Contribuinte pessoa Juridica.
                       if ClientesIndicador_IE.Value = '1' then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSNac_Contribuinte.Value;
                       end;
                       // Contribuinte com nf para comsumo.
                       if (ClientesIndicador_IE.Value = '1') and (TipoNotaFinalidade_Mercadoria.Value = 1) then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSNac_NContribuinte.Value;
                       end;
                       // Não Contribuinte.
                       if (ClientesIndicador_IE.Value = '2') or (ClientesIndicador_IE.Value = '9') then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSNac_NContribuinte.Value;
                       end;
                       // Atacadistas.
                       If ClientesAtacadista.AsBoolean then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSNac_Atacadista.AsFloat;
                       End;
                       // Varejistas.
                       If ClientesVarejista.AsBoolean then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSNac_Varejista.AsFloat;
                       End;
                    end;
                    if ClientesSimples_Nacional.AsBoolean = true then begin
                       PedidosItensAliquota_ICMSOper.Value := ICMSSimples_Nacional.AsFloat;
                       if ICMSSimples_Nacional.AsFloat = 0 then begin
                          MessageDlg('Alíquota do ICMS do "SIMPLES" não encontrada na tabela de ICMS dos estados.', mtError, [mbok], 0);
                          Navega.BtnClick(nbCancel);
                          Abort;
                       end;
                    end;

                    // Não encontrando a estado na tabela de ICMS zera a aliquota do ICMS operacional.
                    if ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]) = false then begin
                       PedidosItensAliquota_ICMSOper.Value := 0;
                    end;
                 end else begin
                     PedidosItensAliquota_ICMSOper.Value := NCMICMS_Operacional.Value;
                 end;

                 // Pegando as aliquota de ICMS na entrada.
                 if (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) then begin             // Cliente é de fora do estado.
                     PedidosItensAliquota_ICMSEntrada.value := ProdutosICMS_ForaEstadoEntrada.AsFloat;
                 end else begin                                                                       // Cliente é de dentro do estado.
                     PedidosItensAliquota_ICMSEntrada.value := ProdutosICMS_EstadoEntrada.AsFloat;
                 end;

                 // Pegando o valor de pauta.
                 ProdutosPauta.SQL.Clear;
                 produtosPauta.SQL.Add('SELECT * FROM ProdutosPauta WHERE Produto = :pCodigo');
                 ProdutosPauta.ParamByName('pCodigo').Asinteger := PedidosItensCodigo_Mercadoria.AsInteger;
                 ProdutosPauta.Open;
                 PedidosItensValor_Pauta.Value := ProdutosPauta.FieldByName('Valor').AsCurrency;
              end else begin
                 PedidosItensAliquota_ICMSOper.Value := ProcessosDOCAliquota_ICMS.Value;
              end;

              // Verifica se existe alíquota de ICMS informado no cadastro do produto.
              // Dentro do Estado.
              if (PedidosDestinatario_Estado.Value = EmpresasEstado.Value) and (ProdutosICMS_DentroEstado.AsFloat > 0) then begin
                 // Simples Nacional.
                 if ClientesSimples_Nacional.AsBoolean then begin
                    PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_DentroEstadoSimples.AsFloat;
                 end else begin
                    PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_DentroEstado.ASFloat;
                 end;
              end;
              // Fora do Estado.
              if (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) and (ProdutosICMS_ForaEstado.AsFloat > 0) then begin
                 PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_ForaEstado.ASFloat;
              end;

              // Vereifica se o produto esta na tabela CAMEX.
              if (ProdutosTabela_CAMEX.AsBoolean = true) and (ICMSICMS_CAMEX.AsFloat > 0) then begin
                 PedidosItensAliquota_ICMSOper.Value     := ICMSICMS_CAMEX.AsFloat;
                 PedidosItensAliquota_ICMSIntegral.Value := ICMSICMS_CAMEX.AsFloat;
              end;
           end;
           PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value, -2)-PedidosItensDesconto_Valor.Value;

           if TipoNotaVisiveis_DIFAL.AsBoolean then begin
              // DIFAL.
              mUF := Trim(ClientesEstado.Value)+'_ICMS';
              mAliquotaDIFAL := ICMSICMS_Interno.AsFloat;
              if NCM.FieldbyName(mUF).AsFloat > 0 then begin
                 mAliquotaDIFAL := NCM.FieldbyName(mUF).AsFloat;
              end;   
              PedidosItensAliquota_ICMSDest.Value := mAliquotaDIFAL;
           end;
           
           Recalcula;
           
           if (PedidosItensCodigoTrib_TabA.asstring <> '1') and (PedidosItensCodigoTrib_TabA.asstring <> '6') then begin
              PedidosItensBeneficio_Fiscal.Clear;
              PedidosItensCodigo_CredPres.Clear;
           end else begin
              PedidosItensBeneficio_Fiscal.value := TipoNota.FieldByName('Beneficio_Fiscal').AsString;
              PedidosItensCodigo_CredPres.value  := NCM.FieldByName('Codigo_CredPres').AsString;
           end;
      end;
end;

procedure TPedido_ItensOutros.GradeProdutosDblClick(Sender: TObject);
begin
      With Dados do begin
           PedidosItensCodigo_Mercadoria.Value    := ProdutosCodigo.Value;
           PedidosItensDescricao_Mercadoria.Value := ProdutosDescricao.Value;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
           Produtos.Open;

           If TipoNotaOrigem_ValorUnitario.AsInteger = 0 then
              PedidosItensValor_Unitario.Value := ProdutosValor_Entrada.AsCurrency;
           If TipoNotaOrigem_ValorUnitario.AsInteger = 1 then
              PedidosItensValor_Unitario.Value := ProdutosValor_Venda.AsCurrency;
           If TipoNotaOrigem_ValorUnitario.AsInteger = 2 then
              PedidosItensValor_Unitario.Value := ProdutosValor_CustoMedio.AsCurrency;
           If (ProdutosPromocao.AsBoolean = true) and (ProdutosPromocao_Valor.AsFloat > 0) then
              PedidosItensValor_Unitario.Value := ProdutosPromocao_Valor.AsCurrency;
           If (PedidosItensLucro.AsFloat > 0) then begin
              PedidosItensLucro_Valor.Value    := Percentual(PedidosItensValor_Unitario.Value, PedidosItensLucro.Value);
              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.AsCurrency + PedidosItensLucro_Valor.Value;
           End;

           // Desconto no valor unitário do produto "Sem destaque na nota fiscal".
           If (PedidosDesconto_Tipo.AsString = 'Valor unitário do Produto') then begin
              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value * (1-(PedidosDesconto_Percentual.Value/100));
              PedidosItensDesconto.Value       := 0;
              PedidosItensDesconto_Valor.Value := 0;
           End;

           If CSTPISTributavel.AsBoolean = true then begin
              If PedidosSaida_Entrada.AsInteger = 0 then
                 PedidosItensAliquota_PIS.Value := ProdutosPIS_Nota.Value
              else
                 PedidosItensAliquota_PIS.Value := ProdutosPIS_NotaSaida.Value;
           End;
           If CSTCOFINSTributavel.AsBoolean = true then begin
              If PedidosSaida_Entrada.AsInteger = 0 then
                 PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_Nota.Value
              else
                 PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_NotaSaida.Value;
           End;

           PedidosItensUnidade_Medida.Value := Dados.ProdutosUnidade.AsString;
           PedidosItensNCM.Value            := Dados.ProdutosNCM.Value;
           PedidosItensPeso_Liquido.Value   := Dados.ProdutosPeso_Liquido.Value;
           PedidosItensPeso_Bruto.Value     := Dados.ProdutosPeso_Bruto.Value;

           PageControl1.ActivePageIndex := 0;

           cCodigo.SetFocus;
      End;
end;

procedure TPedido_ItensOutros.StaticText8Click(Sender: TObject);
begin
     Cadastro_ICMS := TCadastro_ICMS.Create(Self);
     Cadastro_ICMS.Caption := Caption;
     Cadastro_ICMS.ShowModal;
     Dados.ICMS.Open;
end;

procedure TPedido_ItensOutros.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
     If TeclaPressionada(VK_MENU) and TeclaPressionada(72) then Begin
        If cFormulaI.Visible = False then begin
           cFormulaI.Align := alClient;
           cFormulaI.BringToFront;
           cFormulaI.ScrollBars := ssBoth;
           cFormulaI.Visible := True;
           cFormulaI.Repaint;
        end else begin
           cFormulaI.Visible := False;
        End;
     End;
end;

procedure TPedido_ItensOutros.bRemoverClick(Sender: TObject);
begin
     if MessageDlg('Deseja realmente remover dos os itens do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
     with Dados, dmFiscal do begin
          with tTemp do begin
               SQL.Clear;
               SQL.Add('DELETE FROM PedidosItens WHERE(Pedido = :pPedido)');
               ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
               Execute;
          end;
          PedidosItens.Refresh;
          with tTemp do begin 
               SQL.Clear;
               SQL.Add('update ProdutosSeriais set Pedido = null, Disponivel = 1 where (Pedido = :pPedido)');
               ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
               Execute;
          end;
          with LoteNotas do begin
               SQL.Clear;
               SQL.Add('UPDATE LoteNotas SET Pedido = NULL, Sel = 0 WHERE Pedido = :pPedido AND Lote = '+QuotedStr(PedidosLote.AsString));
               ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
               Execute;
          end;
          with tTemp do begin 
               SQL.Clear;
               SQL.Add('delete from PedidositensNavios where pedido = :pPedido');
               ParamByName('pPedido').AsInteger := PedidosNumero.Value;
               Execute;
          end;
     end;
end;

procedure TPedido_ItensOutros.cValorUnitarioExit(Sender: TObject);
begin
      with Dados do begin
           PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value, -2)-PedidosItensDesconto_Valor.Value;
           Recalcula;
           if PedidosCalculo_Reverso.AsBoolean then begin
              PedidosItensValor_Unitario.Value := CalculoReverso;
           end;
           PedidosItensValor_Total.Value := Roundto(PedidosItensQuantidade.Value * (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value), -2);
      end;
end;

procedure TPedido_ItensOutros.Recalcula;
Var
   mUF 
  ,mCodPres 
  ,mCredPres
  ,mCST: String;
begin
      With Dados, dmFiscal do begin
           // Efetua o cálculo reverso do valor unitário do produto.
           //If Dados.PedidosCalculo_Reverso.AsBoolean  and (TipoNotaOrigem_ValorUnitario.AsInteger <> 4) then begin
//           If PedidosCalculo_Reverso.AsBoolean then begin
//              PedidosItensValor_Unitario.Value := CalculoReverso;
//           End;

           If PedidosItensValor_Unitario.Value > 0 then begin
              // Calcula o lucro e soma ao valor unitario.
              if (PedidosItensLucro.Value > 0) and (PedidosItensValor_Unitario.Value > 0) then begin
                 PedidosItensLucro_Valor.Value := Percentual(PedidosItensValor_Unitario.Value, PedidosItensLucro.Value);
                 PegaValorUni;
              end;

              cPercentualDesconto.Enabled := true;
              cValorDesconto.Enabled      := true;
              If (PedidosItensDesconto.Value > 0) and (PedidosItensValor_Unitario.Value > 0) then begin
                 If UpperCase(PedidosDesconto_Tipo.AsString) <> 'INCONDICIONAL C/IMPOSTOS' then begin
                    PedidosItensDesconto_Valor.Value := Roundto(Percentual(ProdutosValor_Venda.Value, PedidosItensDesconto.Value), -2);
                 End;
              End;

              If UpperCase(PedidosDesconto_Tipo.AsString) <> UpperCase('COMERCIAL  - VALOR UNITARIO') then begin
                 If PedidosComplementar.AsBoolean = false then begin
                    If UpperCase(PedidosDesconto_Tipo.AsString) <> 'INCONDICIONAL' then begin
                       If PedidosItensQuantidade.Value > 0 then begin
                          If UpperCase(PedidosDesconto_Tipo.AsString) <> 'INCONDICIONAL C/IMPOSTOS' then
                             PedidosItensValor_Total.Value := Roundto(PedidosItensQuantidade.Value * (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value), -2)
                          else
                             PedidosItensValor_Total.Value := Roundto(PedidosItensQuantidade.Value * PedidosItensValor_Unitario.Value, -2);
                       end else
                          PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value, -2);
                    end else begin
                       If UpperCase(PedidosDesconto_Tipo.AsString) <> UpperCase('COMERCIAL  - VALOR UNITARIO') then begin
                          PedidosItensDesconto_Valor.Value := Roundto(Percentual(PedidosItensValor_Unitario.Value, PedidosItensDesconto.Value), -2);
                          If PedidosItensQuantidade.Value > 0 then
                             PedidosItensValor_Total.Value := Roundto(PedidosItensQuantidade.Value * (PedidosItensValor_Unitario.Value), -2)
                          else
                             PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value, -2);
                       end else begin
                          PedidosItensValor_Unitario.Value := Roundto(PedidosItensValor_Unitario.Value * (1-(PedidosItensDesconto.Value/100)), -2);
                       End;
                    End;
                 end else begin
                    If PedidosItensQuantidade.Value > 0 then
                       PedidosItensValor_Total.Value := Roundto(PedidosItensQuantidade.Value * (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value), -2);
                 End;
              end else begin
                 PedidosItensValor_Total.Value := Roundto(PedidosItensQuantidade.Value * (PedidosItensValor_Unitario.Value), -2);
              End;
              PedidosItensAliquota_IPI.Value := ProdutosAliquota_IPI.Value;
              PedidosItensAliquota_CBS.Value := ProdutosAliquota_CBS.Value;

              if ProdutosReducao_IPI.AsFloat         > 0 then PedidosItensAliquota_IPI.Value := ProdutosReducao_IPI.Value;
              if ProdutosAcordo_TarifarioIPI.AsFloat > 0 then PedidosItensAliquota_IPI.Value := ProdutosAcordo_TarifarioIPI.Value;

              if not CSTIPITributavel.AsBoolean then begin
                 PedidosItensAliquota_IPI.Value := 0;
              end;

              If (Trim(TipoNotaCalculo_BCIPI.AsString) <> '') and (PedidosItensAliquota_IPI.Value > 0) then begin
                 If PedidosItensQuantidade.AsFloat > 0 then begin
                    PedidosItensValor_BCIPI.Value    := Roundto(CalculaMacro('Calculo_BCIPI'), -2);
                    PedidosItensValor_IPI.Value      := Roundto(Percentual(PedidosItensValor_BCIPI.AsCurrency, PedidosItensAliquota_IPI.AsFloat)/PedidosItensQuantidade.AsFloat, -2);
                    PedidosItensTotal_IPI.Value      := Roundto(Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value), -2);
                    // Valor do IPI na devolução.
                    PedidosItensValor_IPIDevol.Value := 0;
                    if TipoNotaIPI_Devolucao.asboolean then begin
                       PedidosItensValor_IPIDevol.Value := PedidosItensTotal_IPI.Value;
                    end;
                 end;
              end else begin
                 PedidosItensValor_BCIPI.Value := 0;
                 PedidosItensValor_IPI.Value   := 0;
                 PedidosItensTotal_IPI.Value   := 0;
              End;
              
              PedidosItensValor_BCII.Value := 0;
              PedidosItensValor_II.Value   := 0;
              if (Trim(TipoNotaCalculo_BCII.AsString) <> '') and (PedidosItensAliquota_II.Value > 0) then begin
                 if PedidosItensQuantidade.AsFloat > 0 then begin
                    PedidosItensValor_BCII.Value := Roundto(CalculaMacro('Calculo_BCII'), -2);
                    PedidosItensValor_II.Value   := Roundto(Percentual(PedidosItensValor_BCII.AsCurrency, PedidosItensAliquota_II.AsFloat), -2);
                 end;
              end;

              // Pegando a aliquota e calculando o MVA.
              NCM.Locate('NCM', PedidosItensNCM.AsString, [loCaseInsensitive]);
              mUF := Trim(ClientesEstado.Value)+'_MVA';

              If Dados.ClientesSimples_Nacional.AsBoolean = false then begin
                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
              end else begin
                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
              End;

              if Trim(TipoNotaCalculo_BCMVA.AsString) <> '' then begin
                 PedidosItensValor_BCMVA.Value := CalculaMacro('Calculo_BCMVA');
                 If TipoNotaCalculo_VlrMVA.Value <> '' then begin
                    If PedidosItensAliquota_MVA.Value <> 0 then
                       PedidosItensValor_MVA.Value := CalculaMacro('Calculo_VlrMVA')
                    else begin
                       PedidosItensValor_MVA.Value := 0;
                    End;
                 End;
              end else begin
                 PedidosItensAliquota_MVA.Value := 0;
                 PedidosItensValor_BCMVA.Value  := 0;
                 PedidosItensValor_MVA.Value    := 0;
              end;

              // Pegando a alíquota e calculando o ICMS Substitutivo.
              PedidosItensValor_BCICMSSub.Value  := 0;
              PedidosItensValor_ICMSSub.Value    := 0;
              mUF                                := Trim(ClientesEstado.Value)+'_ICMS';
              PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;
              If PedidosItensAliquota_ICMSSub.Value > 0 then begin
                 If Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '' then begin
                    PedidosItensValor_BCICMSSub.Value := Roundto(CalculaMacro('Calculo_BCICMSSub'), -2);
                    If Trim(TipoNotaCalculo_VlrICMSSub.Value) <> '' then
                       PedidosItensValor_ICMSSub.Value := Roundto(CalculaMacro('Calculo_VlrICMSSub'), -2);
                 end else begin
                    PedidosItensValor_BCICMSSub.Value  := 0;
                    PedidosItensAliquota_ICMSSub.Value := 0;
                 End;
              End;

              // Calculo do DIFAL ST.
              if TipoNotaFinalidade_Mercadoria.asinteger in[1, 6] then Begin
                 if trim(TipoNotaCalculo_BCDIFALST.asstring) <> '' then begin
                    PedidosItensValor_BCDIFALST.Value := Roundto(CalculaMacro('Calculo_BCDIFALST'), -2);
                    PedidosItensDIFAL_ValorST.Value   := Roundto(CalculaMacro('Calculo_DIFALST'), -2);
                 end;
              end;

              if Trim(TipoNotaCalculo_BCICMS.AsString) <> '' then
                 PedidosItensValor_BCICMSOper.Value := Roundto(CalculaMacro('Calculo_BCICMS'), -2);

              PedidosItensValor_ICMSOper.Value := Roundto(Percentual(PedidosItensValor_BCICMSOper.AsCurrency, PedidosItensAliquota_ICMSOper.AsFloat), -2);
              // Ajusta o valor do ICMS para um centavo quando o valor do ICMS e menor que um centavo.
              if (PedidosItensValor_ICMSOper.Value < 0.01) and (PedidosItensValor_BCICMSOper.Value > 0) then begin
                 PedidosItensValor_ICMSOper.Value := 0.01;
              end;

              if Trim(TipoNotaCalculo_ReducaoICMS.AsString) <> '' then
                 PedidosItensValor_ICMSReducao.Value := Roundto(CalculaMacro('Calculo_ReducaoICMS'), -2);

              // Calculo do ICMS monofasico.
              PedidosItensPercentual_ICMSMono.value    := iif(PedidosItensSaida_Entrada.value = 0, ProdutosPercentual_ICMSMono.AsFloat, ProdutosPercentual_ICMSMonoSai.AsFloat);
              PedidosItensPercentual_ICMSMonoRet.value := ProdutosPercentual_ICMSMonoRet.AsFloat;
              PedidosItensValor_ICMSMono.Value         := 0;
              PedidosItensValor_ICMSMonoRet.Value      := 0;
              PedidosItensValor_BCICMSMono.Value       := 0;
              PedidosItensValor_BCICMSMonoRet.Value    := 0;
              if TipoNotaCalculo_BCICMSMono.Value <> '' then begin
                 PedidosItensValor_BCICMSMono.value := roundto(CalculaMacro('Calculo_BCICMSMono'), -2);
              end;
              if TipoNotaCalculo_BCICMSMonoRet.Value <> '' then begin
                 PedidosItensValor_BCICMSMonoRet.value := roundto(CalculaMacro('Calculo_BCICMSMonoRet'), -2);
              end;
              if TipoNotaCalculo_ICMSMono.Value <> '' then begin
                 PedidosItensValor_ICMSMono.value := roundto(CalculaMacro('Calculo_ICMSMono'), -2);
              end;
              if TipoNotaCalculo_ICMSMonoRet.Value <> '' then begin
                 PedidosItensValor_ICMSMonoRet.value := roundto(CalculaMacro('Calculo_ICMSMonoRet'), -2);
              end;
              
              // Casa não tenho valor do ICMS Monofasico calculado zero bases e aliquotas.
              if PedidosItensValor_ICMSMono.ascurrency = 0 then begin                 
                 PedidosItensValor_BCICMSMono.value    := 0;
              end;
              if PedidosItensValor_ICMSMonoRet.ascurrency = 0 then begin                 
                 PedidosItensValor_BCICMSMonoRet.value    := 0;
              end;

              // Calculo do ICMS (Crédito presumido).
              PedidosItensAliquota_ICMSPresumido.Value := 0;
              PedidosItensValor_BCICMSPresumido.value  := 0;
              PedidosItensValor_ICMSPresumido.value    := 0;

              if (PedidosItensCodigoTrib_TabA.value = '1') or (PedidosItensCodigoTrib_TabA.value = '6')  then begin
                 Estados.Locate('Codigo', PedidosDestinatario_Estado.Value, [loCaseInsensitive]);
                 mCredPres := '';
                 if ProdutosTabela_CAMEX.AsBoolean then begin
                    mCredPres := 'CX ';
                    mCredPres := mCredPres + iif(PedidosSaida_Entrada.asinteger = 1, 'SD ', '');
                    mCredPres := mCredPres + iif(PedidosDestinatario_Estado.asstring = EmpresasEstado.asstring, 'DE ', 'FE ');
                    mCredPres := mCredPres + iif(ClientesIndicador_IE.asinteger = 9, 'NCT ', 'CT ');
                    mCredPres := mCredPres + iif(ClientesSimples_Nacional.asboolean, 'SN ', '');
                    mCredPres := mCredPres + iif(PedidosItensValor_ICMSSub.AsCurrency > 0, 'ST ', '');
                    mCredPres := mCredPres + iif(TipoNotaFinalidade_Mercadoria.AsInteger = 0, 'REV ', '');
                    mCredPres := mCredPres + iif(TipoNotaFinalidade_Mercadoria.AsInteger = 1, 'CON ', '');
                    mCredPres := mCredPres + iif((EstadosRegiao_ICMSPresumido.asinteger = 1) and (PedidosDestinatario_Estado.asstring <> EmpresasEstado.asstring), 'SS ', '');
                    mCredPres := mCredPres + iif((EstadosRegiao_ICMSPresumido.asinteger = 2) and (PedidosDestinatario_Estado.asstring <> EmpresasEstado.asstring), 'NN ', '');
                    mCredPres := mCredPres + iif(PedidosDestinatario_Juridica.AsBoolean, 'PJ ', 'PF ');
                    mCredPres := mCredPres + iif((PedidosDestinatario_Juridica.AsBoolean) and (PedidosDestinatario_IE.asstring = 'ISENTO'), 'SIE ', '');
                 end else begin
                    mCredPres := mCredPres + iif(PedidosSaida_Entrada.AsInteger = 1, 'SD ', '');
                    mCredPres := mCredPres + iif(PedidosDestinatario_Estado.asstring = EmpresasEstado.asstring, 'DE ', 'FE ');
                    mCredPres := mCredPres + iif(ClientesIndicador_IE.asinteger = 9, 'NCT ', 'CT ');
                    mCredPres := mCredPres + iif(ClientesSimples_Nacional.asboolean, 'SN ', '');
                    mCredPres := mCredPres + iif(PedidosItensValor_ICMSSub.AsCurrency > 0, 'ST ', '');
                    mCredPres := mCredPres + iif(TipoNotaFinalidade_Mercadoria.AsInteger = 0, 'REV ', '');
                    mCredPres := mCredPres + iif(TipoNotaFinalidade_Mercadoria.AsInteger = 1, 'CON ', '');
                    mCredPres := mCredPres + iif(PedidosDestinatario_Juridica.AsBoolean, 'PJ ', 'PF ');
                    mCredPres := mCredPres + iif((PedidosDestinatario_Juridica.AsBoolean) and (PedidosDestinatario_IE.asstring = 'ISENTO'), 'SIE ', '');
                 end;
                 
                 with CreditoPresumido do begin
                      sql.clear;
                      sql.add('select *');
                      sql.Add('from ICMSCredPres');
                      sql.add('where Beneficio = :pInc');
                      sql.add('and Codigo      = :pCod');
                      sql.add('and ICMS        = :pICMS');
                      parambyname('pInc').Value  := IncentivosFiscais.FieldByName('Codigo_Incentivo').AsString;
                      parambyname('pCod').Value  := mCredPres;
                      parambyname('pICMS').Value := PedidosItensAliquota_ICMSOper.AsFloat;
                      //sql.SaveToFile('c:\temp\Pedidos_Itens_Credito_Presumido.sql');
                      open;
                      if recordcount > 0 then begin
                         PedidosItensAliquota_ICMSPresumido.Value := fieldbyname('Credito_Presumido').AsFloat;
                         if TipoNotaCalculo_BCICMSPresumido.Value <> '' then begin
                            PedidosItensValor_BCICMSPresumido.value := roundto(CalculaMacro('Calculo_BCICMSPresumido'), -2);
                         end;
                         if TipoNotaCalculo_ICMSPresumido.Value <> '' then begin
                            PedidosItensValor_ICMSPresumido.value := roundto(CalculaMacro('Calculo_ICMSPresumido'), -2);
                         end;
                      end;
                 end;
              end;
              
              // Aliquota de PIS/COFINS.
              PedidosItensAliquota_PISRed.Value    := 0;
              PedidosItensAliquota_COFINSRed.Value := 0;

              // CST IPI.
              cValorIPIChange(Self);

              // CST ICMS.
              cValorICMSOperChange(Self);

              // Código de Situação Tributaria do PIS/COFINS.
              mCST := '';
              If PedidosSaida_Entrada.AsInteger = 1 then begin
                 If (ProdutosPIS_NotaSaida.AsFloat          > 0) and (ProdutosPIS_NotaSaida.AsFloat  = ConfiguracaoPIS_AliquotaBasicaSaida.AsFloat) then
                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+B';       // 01.
                 If (ProdutosPIS_NotaSaida.AsFloat          > 0) and (ProdutosPIS_NotaSaida.AsFloat <> ConfiguracaoPIS_AliquotaBasicaSaida.AsFloat) then
                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+D';       // 02.
                 If (TipoNotaCSTPIS_AliquotaUM.AsBoolean    = true) or (ProdutosCSTPIS_AliquotaUM.AsBoolean   = true) then 
                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+UM';      // 03.
                 If (TipoNotaCSTPIS_Monofasica.AsBoolean    = true) or (ProdutosCSTPIS_Monofasica.AsBoolean   = true) then 
                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+MONO+A0'; // 04.
                 If (NCMPIS_ST.asboolean) and (ClientesVarejista.AsBoolean) then
                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ST';      // 05.
                 If (TipoNotaCSTPIS_AliquotaZero.AsBoolean  = true) or (ProdutosCSTPIS_AliquotaZero.AsBoolean = true) then 
                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';      // 06.
                 If (TipoNotaCSTPIS_Isenta.AsBoolean        = true) or (ProdutosCSTPIS_Isenta.AsBoolean       = true) then 
                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';     // 07.
                 If (TipoNotaCSTPIS_SemIncidencia.AsBoolean = true) or (ProdutosCSTPIS_SemIncidencia.AsBoolean= true) then 
                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC';    // 08.
                 If (TipoNotaCSTPIS_Suspensao.AsBoolean     = true) or (ProdutosCSTPIS_Suspensao.AsBoolean    = true) then 
                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';     // 09.
                 If (TipoNotaCSTPIS_Outras.AsBoolean        = true) or (ProdutosCSTPIS_Outras.AsBoolean       = true) then 
                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';       // Outras.
              end else begin
                 If Trim(ProdutosCSTPIS_Entrada.AsString) <> '' then begin
                    If CSTPIS.Locate('Codigo', ProdutosCSTPIS_Entrada.Value, [loCaseInsensitive]) = true then begin
                       mCST := CSTPISClassificacao.Value;
                    End;
                 end else begin
                    If CSTPIS.Locate('Codigo', TipoNotaCST_PIS.Value, [loCaseInsensitive]) = true then begin
                       mCST := CSTPISClassificacao.Value;
                    End;
                 End;

                 If (TipoNotaCSTPIS_Isenta.AsBoolean        = true) or (ProdutosCSTPIS_IsentaEnt.AsBoolean        = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';  // 71.
                 If (TipoNotaCSTPIS_Suspensao.AsBoolean     = true) or (ProdutosCSTPIS_SuspensaoEnt.AsBoolean     = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';  // 72.
                 If (TipoNotaCSTPIS_AliquotaZero.AsBoolean  = true) or (ProdutosCSTPIS_AliquotaZeroEnt.AsBoolean  = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';   // 73.
                 If (TipoNotaCSTPIS_SemIncidencia.AsBoolean = true) or (ProdutosCSTPIS_SemIncidenciaEnt.AsBoolean = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC'; // 74.
                 If (TipoNotaCSTPIS_Outras.AsBoolean        = true) or (ProdutosCSTPIS_OutrasEnt.AsBoolean        = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';    // Outras.
              End;
              If CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
                 mCST := '<>';
                 CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]);
              End;
              If CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
                 mCST := '<>';
                 CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]);
              End;

              if not TipoNotaCalculo_CST.asboolean then begin
                 PedidosItensCSTPIS.Value    := CSTPISCodigo.Value;
                 PedidosItensCSTCOFINS.Value := CSTPISCodigo.Value;
              end;   

              // Pegando a alíquota da COFINS.
              If CSTPISTributavel.AsBoolean = true then begin
                 If PedidosSaida_Entrada.AsInteger = 0 then
                    PedidosItensAliquota_PIS.Value := ProdutosPIS_Nota.Value
                 else
                    PedidosItensAliquota_PIS.Value := ProdutosPIS_NotaSaida.Value;
              End;
              If CSTCOFINSTributavel.AsBoolean = true then begin
                 If PedidosSaida_Entrada.AsInteger = 0 then
                    PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_Nota.Value
                 else
                    PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_NotaSaida.Value;
              End;

              // Calculo dos valores de PIS e COFINS.
              If Trim(TipoNotaCalculo_BCPIS.AsString)    <> '' then PedidosItensValor_BCPIS.Value    := RoundTo(CalculaMacro('Calculo_BCPIS'), -4);
              If Trim(TipoNotaCalculo_PIS.AsString)      <> '' then PedidosItensValor_PIS.Value      := RoundTo(CalculaMacro('Calculo_PIS'), -2);
              If Trim(TipoNotaCalculo_COFINS.AsString)   <> '' then PedidosItensValor_COFINS.Value   := RoundTo(CalculaMacro('Calculo_COFINS'), -2);

              PedidosItensValor_BCPISST.Value    := 0;
              PedidosItensValor_BCCOFINSST.Value := 0;
              if ClientesVarejista.AsBoolean and ProdutosTributa_PISCOFINSST.AsBoolean then begin
                 If Trim(TipoNotaCalculo_BCPISST.AsString)  <> '' then begin
                    PedidosItensValor_BCPISST.Value    := RoundTo(CalculaMacro('Calculo_BCPISST'), -4);
                    PedidosItensValor_BCCOFINSST.Value := PedidosItensValor_BCPISST.Value;
                 end;
                 If Trim(TipoNotaCalculo_PISST.AsString)    <> '' then PedidosItensValor_PISST.Value    := RoundTo(CalculaMacro('Calculo_PISST'), -2);
                 If Trim(TipoNotaCalculo_COFINSST.AsString) <> '' then PedidosItensValor_COFINSST.Value := RoundTo(CalculaMacro('Calculo_COFINSST'), -2);
              end;

              If CSTPISTributavel.AsBoolean = false then begin
                 PedidosItensAliquota_PIS.Value    := 0;
                 PedidosItensAliquota_COFINS.Value := 0;
                 PedidosItensValor_BCPIS.Value     := 0;
                 PedidosItensValor_PIS.Value       := 0;
                 PedidosItensValor_COFINS.Value    := 0;
              End;

              if trim(TipoNotaCalculo_BCIS.AsString)   <> '' then PedidosItensValor_BCIS.Value  := RoundTo(CalculaMacro('Calculo_BCIS'), -2);
              if trim(TipoNotaCalculo_VlrIS.AsString)  <> '' then PedidosItensValor_IS.Value    := RoundTo(CalculaMacro('Calculo_VlrIS'), -2);
              if trim(TipoNotaCalculo_BCCBS.AsString)  <> '' then PedidosItensValor_BCCBS.Value := RoundTo(CalculaMacro('Calculo_BCCBS'), -2);
              if trim(TipoNotaCalculo_VlrCBS.AsString) <> '' then begin 
                 PedidosItensValor_CBS.Value := RoundTo(CalculaMacro('Calculo_VlrCBS'), -2);
                 if PedidosItensValor_CBS.Value < 0.005 then PedidosItensValor_CBS.Value := 0.005;
              end;
              if trim(TipoNotaCalculo_BCIBS.AsString)  <> '' then PedidosItensValor_BCIBS.Value := RoundTo(CalculaMacro('Calculo_BCIBS'), -2);
              if trim(TipoNotaCalculo_VlrIBS.AsString) <> '' then begin
                 PedidosItensValor_IBS.Value := RoundTo(CalculaMacro('Calculo_VlrIBS'), -2);
                 if PedidosItensValor_IBS.Value < 0.005 then PedidosItensValor_IBS.Value := 0.005;
              end;

              If Trim(TipoNotaCalculo_Inventario.AsString) <> '' then begin
                 PedidosItensValor_Inventario.Value := Roundto(CalculaMacro('Calculo_Inventario'), -2);
              End;
              
              // Calculo do ICMS Desonerado.
              PedidosItensValor_ICMSDesonerado.Value := 0;
              if Trim(TipoNotaCalculo_VlrICMSDeson.AsString) <> '' then begin
                 case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['20','30','40','41','50','70','90']) of
                      0..6: PedidosItensValor_ICMSDesonerado.Value := Roundto(CalculaMacro('Calculo_VlrICMSDeson'), -2);
                 end;
              end;
           end else begin
              PedidosItensValor_Total.Value := 0;
           end;
      end;
end;

procedure TPedido_ItensOutros.cValorIPIChange(Sender: TObject);
Var
   mCST      : String;
   mApuracao1: Currency;
begin
      if not mFim then begin
         With Dados, dmFiscal do begin
              If (Pedidositens.State = dsInsert) or (Pedidositens.State = dsEdit) then begin
                 mCST := '';
                 If (PedidosItensValor_IPI.Value > 0) or (PedidosItensAliquota_IPI.Value > 0) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IPI';
                 If ProdutosValor_IPI.Value         <> 0   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+V';
                 If NCMIPI_TribAliquotaZero.Value   = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+V';
                 If (NCMIPI_Isento.AsBoolean) or (TipoNotaIsencao_IPI.AsBoolean) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+I';
                 If TipoNotaNao_Tributada_IPI.Value = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+NT';
                 If TipoNotaImune_IPI.Value         = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IM';
                 If NCMIPI_Suspensao.Value          = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';
                 If TipoNotaSuspensao_IPI.Value     = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';
                 If mCST                            = ''   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+<>';
                 If CSTIPI.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
                    mCST := '<>';
                    CSTIPI.Locate('Classificacao', mCST, [loCaseInsensitive]);
                 End;
                 
                 if not TipoNotaCalculo_CST.asboolean then begin
                    PedidosItensCSTIPI.Value := CSTIPICodigo.Value;
                 end;   

                 If CSTIPITributavel.AsBoolean = false then begin
                    PedidosItensAliquota_IPI.Value := 0;
                 End;

                 PedidosItensValor_OutrasIPI.Value  := 0;
                 PedidosItensValor_IsentasIPI.Value := 0;
                 mApuracao1                         := 0;

                 // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe.
                 If (Pos('Pedidos_[Valor_OutrasDespesas]', TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                    (Pos('Pedidos_[Valor_DespesasOutros]', TipoNotaCalculo_TotalPedido.AsString ) > 0) then
                    mApuracao1 := mApuracao1 + ((PedidosItensValor_Despesa.AsCurrency+PedidosItensValor_DespesasOutros.AsCurrency) * PedidosItensQuantidade.Value);
                 If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                    mApuracao1 := mApuracao1 + PedidosItensValor_ICMSOPer.Value;
                 If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                    mApuracao1 := mApuracao1 + PedidosItensValor_ICMSSub.Value;
                 If (Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                    (Pos('Pedidos_[Total_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0) then
                    mApuracao1 := mApuracao1 + PedidosItensValor_Frete.Value;
                 If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                    mApuracao1 := mApuracao1 + PedidosItensValor_Frete.Value;
                 If (Pos('Valor_PIS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                    (Pos('NCM_[PIS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                    (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                    If ProdutosTipo_Conversao.Value <> 'M' then
                       mApuracao1 := mApuracao1 + (PedidosItensValor_PIS.Value * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
                    else
                       mApuracao1 := mApuracao1 + (PedidosItensValor_PIS.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                 End;
                 If (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                    (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                    (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                    If ProdutosTipo_Conversao.Value <> 'M' then
                       mApuracao1 := mApuracao1 + (PedidosItensValor_COFINS.Value * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
                    else
                       mApuracao1 := mApuracao1 + (PedidosItensValor_COFINS.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                 End;
                 If PedidosItensValor_IPI.Value = 0 then
                     mApuracao1 := mApuracao1 + PedidosItensValor_Total.Value;
                     
                 If CSTIPI.FieldByName('Apuracao').Value = 'O' then
                    PedidosItensValor_OutrasIPI.Value := mApuracao1
                 else
                    PedidosItensValor_IsentasIPI.Value := mApuracao1;
              End;
         End;
      end;
end;

procedure TPedido_ItensOutros.cCodigoChange(Sender: TObject);
begin
     With Dados do begin
          // Calculando o estoque disponível.
          if not mFim then begin
             if (PedidosItens.State <> dsEdit) and (PedidosItens.State <> dsInsert) and (cCodigo.Showing = true) then begin
                ApuraEstoque;
             end;
          end;
     End;
end;

procedure TPedido_ItensOutros.bRatearClick(Sender: TObject);
begin
     Pedido_ItensOutrosValorRateio := TPedido_ItensOutrosValorRateio.Create(Self);
     Pedido_ItensOutrosValorRateio.Caption := Caption;
     Pedido_ItensOutrosValorRateio.ShowModal;
end;

procedure TPedido_ItensOutros.cPercentualDescontoExit(Sender: TObject);
begin
     With Dados do begin
          If (PedidosItens.State = dsInsert) and (PedidosItensDesconto.Value <> 0) then begin
             If UpperCase(PedidosDesconto_Tipo.AsString) <> 'INCONDICIONAL C/IMPOSTOS' then
                PedidosItensDesconto_Valor.Value := Roundto(Percentual(PedidosItensValor_Total.Value, PedidosItensDesconto.Value)/PedidosItensQuantidade.AsFloat, -2);
          End;
     End;
end;

procedure TPedido_ItensOutros.cPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then bPesquisa.Click;
end;

procedure TPedido_ItensOutros.DBEdit3Exit(Sender: TObject);
begin
     // Calcula o lucro e soma ao valor unitario.
     With Dados, dmFiscal do begin
          If (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
             If (PedidosItensLucro_Valor.AsFloat = 0) and (PedidosItensLucro.AsFloat > 0) then begin
                PedidosItensLucro_Valor.Value := Percentual(ProdutosValor_Venda.Value, PedidosItensLucro.Value);

                If TipoNotaOrigem_ValorUnitario.AsInteger = 0 then
                   PedidosItensValor_Unitario.Value := ProdutosValor_Entrada.AsCurrency;
                If TipoNotaOrigem_ValorUnitario.AsInteger = 1 then
                   PedidosItensValor_Unitario.Value := ProdutosValor_Venda.AsCurrency + PedidosItensLucro_Valor.Value;
                If TipoNotaOrigem_ValorUnitario.AsInteger = 2 then
                   PedidosItensValor_Unitario.Value := ProdutosValor_CustoMedio.AsCurrency + PedidosItensLucro_Valor.Value;
                If (ProdutosPromocao.AsBoolean = true) and (ProdutosPromocao_Valor.AsFloat > 0) then begin
                   PedidosItensLucro_Valor.Value    := Percentual(ProdutosPromocao_Valor.Value, PedidosItensLucro.Value);
                   PedidosItensValor_Unitario.Value := ProdutosPromocao_Valor.AsCurrency + PedidosItensLucro_Valor.Value;
                End;

                // Desconto no valor unitário do produto "Sem destaque na nota fiscal".
                If (PedidosDesconto_Tipo.AsString = 'Valor unitário do Produto') then begin
                   PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value * (1-(PedidosDesconto_Percentual.Value/100));
                   PedidosItensDesconto.Value       := 0;
                   PedidosItensDesconto_Valor.Value := 0;
                End;
             End;
          End;
     End;
end;

procedure TPedido_ItensOutros.cValorCBSChange(Sender: TObject);
var
  mCST: string;
begin
      with Dados, dmFiscal do begin
           if (Pedidositens.State = dsInsert) or (Pedidositens.State = dsEdit) then begin
              // CST DO CBS.
              mCST := 'T+I';
              if PedidosItensValor_CBS.Value > 0 then mCST := 'T+I';
              if NCMCBS_Isencao.AsBoolean        then mCST := 'IS';
              if TipoNotaCBS_Isencao.AsBoolean   then mCST := 'IS';
              if NCMCBS_Imunidade.AsBoolean      then mCST := 'I+N+I';
              if TipoNotaCBS_Imunidade.asboolean then mCST := 'I+N+I';
              if NCMCBS_Suspensao.asboolean      then mCST := 'S';
              if TipoNotaCBS_Suspensao.asboolean then mCST := 'S';
              if NCMCBS_Diferido.AsBoolean       then mCST := 'D';
              if TipoNotaCBS_Diferido.AsBoolean  then mCST := 'D';
              CSTCBS.Locate('Classificacao', mCST, [loCaseInsensitive]) ;
              PedidosItensCSTCBS.Value := CSTCBSCodigo.Value;
              // CST DO IBS
              mCST := 'T+I';
              if PedidosItensValor_IBS.Value > 0 then mCST := 'T+I';
              if NCMIBS_Isencao.AsBoolean        then mCST := 'IS';
              if TipoNotaIBS_Isencao.AsBoolean   then mCST := 'IS';
              if NCMIBS_Imunidade.AsBoolean      then mCST := 'I+N+I';
              if TipoNotaIBS_Imunidade.asboolean then mCST := 'I+N+I';
              if NCMIBS_Suspensao.asboolean      then mCST := 'S';
              if TipoNotaIBS_Suspensao.asboolean then mCST := 'S';
              if NCMIBS_Diferido.AsBoolean       then mCST := 'D';
              if TipoNotaIBS_Diferido.AsBoolean  then mCST := 'D';
              CSTIBS.Locate('Classificacao', mCST, [loCaseInsensitive]) ;
              PedidosItensCSTIBS.Value := CSTIBSCodigo.Value;
           end;
      end;
end;

procedure TPedido_ItensOutros.CalculoBCR;
Var
   mUF : String;
   mBCR: Real;
begin
      with Dados, dmFiscal do Begin
           // Calculo do valor da "Média BCR" para as notas fiscais de saída.
           if PedidosSaida_Entrada.AsInteger = 1 then begin
              tBCR.SQL.Clear;
              tBCR.SQL.Add('SELECT ');
              if EmpresasDistribuidora.AsBoolean = false then begin
                 tBCR.SQL.Add('       ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa,0)) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = :pCodigo) AND (Cancelada <> 1) AND (Movimenta_Inventario = 1)), 4,0),0) +');
                 tBCR.SQL.Add('       ISNULL(ROUND((SELECT SUM(ISNULL(Valor_LiquidoOrig, 0)+ISNULL(Valor_IPIOrig,0)) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1) AND (Inventario_Terceiros = 0) ');
                 tBCR.SQL.Add('                     AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0), 4,0),0) AS Total_Entradas,');
                 tBCR.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1)');
                 tBCR.SQL.Add('       AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0 ), 0) AS Estoque,');
                 tBCR.SQL.Add('       ISNULL(ROUND((SELECT SUM(ISNULL(Valor_ICMSOper,0)+ISNULL(Valor_Despesa,0)) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = :pCodigo) AND (Cancelada <> 1) AND (Movimenta_Inventario = 1)), 4,0),0) +');
                 tBCR.SQL.Add('       ISNULL(ROUND((SELECT SUM(Valor_ICMSOperOrig) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1) AND (Inventario_Terceiros = 0) ');
                 tBCR.SQL.Add('                     AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0), 4,0),0) AS Total_ICMS');
              end else begin
                 tBCR.SQL.Add('       ISNULL(ROUND((SELECT SUM(Valor_LiquidoOrig+Valor_IPIOrig) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1)');
                 tBCR.SQL.Add('              AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0), 4, 0), 0) AS Total_Entradas,');
                 tBCR.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1)');
                 tBCR.SQL.Add('       AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0 ), 0) AS Estoque,');
                 tBCR.SQL.Add('       ISNULL(ROUND((SELECT SUM(Valor_ICMSOperOrig) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1)');
                 tBCR.SQL.Add('              AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0), 4, 0), 0) AS Total_ICMS');
              end;
              tBCR.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
              //tBCR.SQL.SaveToFile('c:\temp\Media_BCR.SQL');
              tBCR.Open;

              // Pegando a aliquota do MVA.
              mUF := Trim(ClientesEstado.Value)+'_MVA';
              if ClientesSimples_Nacional.AsBoolean = false then begin
                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
              end else begin
                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
              end;

              mBCR                        := tBCR.FieldByName('Total_Entradas').AsCurrency * (1+(PedidosItensAliquota_MVA.AsFloat/100));
              PedidosItensMedia_BCR.Value := Roundto((mBCR / tBCR.FieldByName('Estoque').Value) * PedidosItensQuantidade.AsFloat, -2);

              //Pegando a aliquota do ICMS.
              mUF                                   := Trim(ClientesEstado.Value)+'_ICMS';
              PedidosItensValor_ICMSSubAnt.Value    := Roundto((PedidosItensMedia_BCR.Value * (NCM.FieldbyName(mUF).AsFloat/100)) - ((Roundto(tBCR.FieldByName('Total_ICMS').AsCurrency, -2) / tBCR.FieldByName('Estoque').Value) * PedidosItensQuantidade.AsFloat), -2);
              PedidosItensAliquota_ICMSSubAnt.Value := NCM.FieldbyName(mUF).AsFloat;
              PedidosItensValor_ICMSAnt.Value       := Roundto((PedidosItensMedia_BCR.Value * (NCM.FieldbyName(mUF).AsFloat/100)), -2);
           end;
      end;
end;

procedure TPedido_ItensOutros.cQuantidadeExit(Sender: TObject);
begin
      with Dados do begin
           if (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              if PedidosItensQuantidade.Value <> mQuantidade then begin
                 Recalcula;
                 mQuantidade := PedidosItensQuantidade.Value;
              end;
              
              if TipoNotaMedia_BCR.AsBoolean = true then CalculoBCR;
           end;
      end;
end;

procedure TPedido_ItensOutros.cTabAExit(Sender: TObject);
begin
{
     with Dados, dmFiscal do begin
          if (PedidosItensCodigoTrib_TabA.asstring <> '1') and (PedidosItensCodigoTrib_TabA.asstring <> '6') then begin
             PedidosItensBeneficio_Fiscal.Clear;
             PedidosItensCodigo_CredPres.Clear;
          end else begin
             PedidosItensBeneficio_Fiscal.value := TipoNota.FieldByName('Beneficio_Fiscal').AsString;
             PedidosItensCodigo_CredPres.value  := NCM.FieldByName('Codigo_CredPres').AsString;
          end;
     end;
}
     with Dados, dmFiscal do begin
          PedidosItensBeneficio_Fiscal.Clear;
          PedidosItensCodigo_CredPres.Clear;
          case AnsiIndexStr((PedidosItensCodigoTrib_TabA.Value+PedidosItensCodigoTrib_TabB.Value), ['100', '120','130','140','141','150','170','190','220','230','240','241','250','270','290', '600']) of
               0..15: begin 
                         PedidosItensBeneficio_Fiscal.value := TipoNota.FieldByName('Beneficio_Fiscal').AsString;
                         PedidosItensCodigo_CredPres.value  := NCM.FieldByName('Codigo_CredPres').AsString;
                     end;
          end;
     end;
end;

procedure TPedido_ItensOutros.cTabBExit(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          PedidosItensBeneficio_Fiscal.Clear;
          PedidosItensCodigo_CredPres.Clear;
          case AnsiIndexStr((PedidosItensCodigoTrib_TabA.Value+PedidosItensCodigoTrib_TabB.Value), ['100', '120','130','140','141','150','170','190','220','230','240','241','250','270','290','600']) of
               0..15: begin 
                         PedidosItensBeneficio_Fiscal.value := TipoNota.FieldByName('Beneficio_Fiscal').AsString;
                         PedidosItensCodigo_CredPres.value  := NCM.FieldByName('Codigo_CredPres').AsString;
                     end;
          end;
     end;
end;

procedure TPedido_ItensOutros.cAliquotaICMSSubChange(Sender: TObject);
begin
      With Dados do begin
           if (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              if Trim(TipoNotaCalculo_VlrICMSSub.AsString) <> '' then begin
                 PedidosItensValor_ICMSSub.Value := Roundto(CalculaMacro('Calculo_VlrICMSSub'), -2);
              end;
           end;
      End;
end;

procedure TPedido_ItensOutros.ApuraEstoque;
begin
      // Calculando o estoque disponível. (Função de apuração de estoque na unit "FUNCOES.PAS").
      With Dados do begin
           cDisponivel.Value := EstoqueProduto(PedidosItensCodigo_Mercadoria.AsInteger);
           cInventario.Value := InventarioProduto(PedidosItensCodigo_Mercadoria.AsInteger);
           cMinimo.Value     := ProdutosEstoque_Minimo.Value;
      End;
End;

procedure TPedido_ItensOutros.cProdutoClick(Sender: TObject);
begin
      cCodigoExit(Self);
end;

procedure TPedido_ItensOutros.bDetalheClick(Sender: TObject);
begin
      Pedido_ItensOutrosDetalhe := TPedido_ItensOutrosDetalhe.Create(Self);
      Pedido_ItensOutrosDetalhe.Caption := Caption;
      Pedido_ItensOutrosDetalhe.ShowModal;
end;

Function TPedido_ItensOutros.CalculoReverso: real;
Var
    mUnitario
   ,mIPI
   ,mBCICMS
   ,mMVA
   ,mICMSST
   ,mICMSOp
   ,mFator: Real;
begin
     With Dados do begin
          if PedidosItensValor_Unitario.ascurrency = 0 then begin
             if TipoNotaOrigem_ValorUnitario.AsInteger = 0 then
                PedidosItensValor_Unitario.Value := ProdutosValor_Entrada.AsCurrency;
             if TipoNotaOrigem_ValorUnitario.AsInteger = 1 then
                PedidosItensValor_Unitario.Value := ProdutosValor_Venda.AsCurrency;
             if TipoNotaOrigem_ValorUnitario.AsInteger = 2 then
                PedidosItensValor_Unitario.Value := ProdutosValor_CustoMedio.AsCurrency;

             if (ProdutosPromocao.AsBoolean = true) and (ProdutosPromocao_Valor.AsFloat > 0) then begin
                PedidosItensValor_Unitario.Value := ProdutosPromocao_Valor.AsCurrency;
             end;

             if UpperCase(PedidosDesconto_Tipo.AsString) = UpperCase('COMERCIAL  - Valor Unitario') then begin
                PedidosItensValor_Unitario.Value := ProdutosValor_Venda.Value * (1-(PedidosItensDesconto.Value/100));
             end;

             // Desconto no valor unitário do produto "Sem destaque na nota fiscal".
             if (PedidosDesconto_Tipo.AsString = 'Valor unitário do Produto') then begin
                PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value * (1-(PedidosDesconto_Percentual.Value/100));
             end;
          end;

          mUnitario := 1.00;
          mIPI      := Percentual(mUnitario, PedidosItensAliquota_IPI.AsFloat);
          mBCICMS   := mUnitario;
          if Pos('Valor do IPI unitario', TipoNotaFormula_BCICMS.AsString) <> 0 then begin
             mBCICMS := mBCICMS + mIPI;
          end;

          mICMSOp := Percentual(mBCICMS , PedidosItensAliquota_ICMSOper.AsFloat);
          mICMSST := 0;

          if Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '' then begin
             mMVA    := Percentual((mUnitario+mIPI)   , PedidosItensAliquota_MVA.AsFloat);
             mICMSST := Percentual(mUnitario+mIPI+mMVA, PedidosItensAliquota_ICMSSub.AsFloat) - mICMSOp;
          end;
          mFator := mUnitario + mIPI + mICMSST;
          Result := PedidosItensValor_Unitario.AsCurrency / mFator;
     end;
end;

procedure TPedido_ItensOutros.bImportarClick(Sender: TObject);
begin
      PedidosOutra_TerceirosReferenciaItens := TPedidosOutra_TerceirosReferenciaItens.Create(Self);
      PedidosOutra_TerceirosReferenciaItens.Caption := Caption;
      PedidosOutra_TerceirosReferenciaItens.Showmodal;
      with Dados do begin
           Produtos.SQL.Clear;
           if (TipoNotaMovimenta_Estoque.AsBoolean = true) and (Pedido_Outros.mSai_Entra = 1) then begin
              Produtos.SQL.Add('SELECT *');
              Produtos.SQL.Add('FROM Produtos PD');
              Produtos.SQL.Add('WHERE ISNULL(Desativado, 0) = 0');
              Produtos.SQL.Add('  AND ((ISNULL((SELECT SUM(Quantidade) FROM NotasItens NI WHERE(NI.Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1)AND (ISNULL(NI.Nfe_Denegada,0) = 0)), 0) +');
              Produtos.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens NTI WHERE(NTI.Codigo_Mercadoria = PD.Codigo) AND (Movimenta_Estoque = 1)), 0) +');
              Produtos.SQL.Add('        ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada = PD.Codigo) ), 0) -');
              Produtos.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens NI WHERE(NI.Codigo_Mercadoria  = PD.Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NI.Nfe_Denegada, 0) = 0)), 0) -');
              Produtos.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens PI WHERE(PI.Codigo_Mercadoria  = PD.Codigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND(Pedido <> :pPedido) ), 0))-');
              Produtos.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida = PD.Codigo) ), 0)');
              Produtos.SQL.Add('        ) > 0');
              Produtos.ParamByName('pPedido').AsInteger := PedidosItensPedido.AsInteger;
           end else begin
              Produtos.SQL.Add('SELECT * FROM Produtos');
           end;
           Produtos.SQL.Add('ORDER BY Descricao_Reduzida');
           Produtos.Open;
      End;
end;

procedure TPedido_ItensOutros.bSeriaisClick(Sender: TObject);
begin
      Pedido_ItensOutrosSeriais := TPedido_ItensOutrosSeriais.Create(Self);
      Pedido_ItensOutrosSeriais.Caption := Caption;
      Pedido_ItensOutrosSeriais.ShowModal;
end;

procedure TPedido_ItensOutros.cBCPISExit(Sender: TObject);
begin
      With Dados do begin
           if PedidosItensCSTPIS.asstring <> '05' then begin
              if (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
                 if PedidosItensAliquota_PIS.Value > 0 then begin
                    PedidosItensValor_PIS.Value    := Roundto(Percentual(PedidosItensValor_BCPIS.Value, PedidosItensAliquota_PIS.Value), -2);
                    PedidosItensValor_COFINS.Value := Roundto(Percentual(PedidosItensValor_BCPIS.Value, PedidosItensAliquota_COFINS.Value), -2);
                 end;
              end;
           end;
      End;
end;

procedure TPedido_ItensOutros.cBCICMSExit(Sender: TObject);
begin
      With Dados do begin
           if (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              if Trim(TipoNotaCalculo_VlrICMS.AsString) <> '' then begin
                 PedidosItensValor_ICMSOper.Value    := Roundto(CalculaMacro('Calculo_VlrICMS'), -2);
              end;
              if Trim(TipoNotaCalculo_ReducaoICMS.AsString) <> '' then begin
                 PedidosItensValor_ICMSReducao.Value := Roundto(CalculaMacro('Calculo_ReducaoICMS'), -2);
              end;
           end;
      End;
end;

procedure TPedido_ItensOutros.bLoteClick(Sender: TObject);
begin
      if Trim(Dados.PedidosLote.AsString) = '' then begin
         Showmessage('Número de lote de notas não informado!'+#13+#13+'Informe o número do lote de notas na capa do pedidos para poder adicionar os itens.');
         Abort;
      end;
      PedidosOutra_LoteItens := TPedidosOutra_LoteItens.Create(Self);
      PedidosOutra_LoteItens.Caption := Caption;
      PedidosOutra_LoteItens.ShowModal;

      // Quantidade de itens adicionados ao pedido.
      tItem.SQL.Clear;
      tItem.SQL.Add('SELECT COUNT(*) AS Qtde FROM PedidosItens WHERE(Pedido = :pPedido)');
      tItem.ParamByName('pPedido').AsInteger := Dados.PedidosNumero.Value;
      tItem.Open;
      gItens.Caption := 'Itens do Pedido '+Dados.PedidosNumero.AsString + ' ['+PoeZero(4, tItem.FieldByName('Qtde').AsInteger)+']';
      tItem.Close;
end;

procedure TPedido_ItensOutros.bPesqNavClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ControleNavios';
      PesquisaGerais.mCampo  := 'Ordem';
      PesquisaGerais.mCampo2 := 'Navio';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Status <> ''ENCERRADO'' ';
      PesquisaGerais.Showmodal;
      Dados.PedidosItensNavio.value := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
end;

procedure TPedido_ItensOutros.bPesquisaClick(Sender: TObject);
begin
     with Dados, Produtos do begin
          SQL.Clear;
          SQL.Add('SELECT * FROM Produtos WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+') ORDER BY Descricao');
          Open;
          First;
     end;
end;

procedure TPedido_ItensOutros.cAliquotaICMSOperExit(Sender: TObject);
begin
      with Dados do begin
           if (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
              if Trim(TipoNotaCalculo_VlrICMS.AsString) <> '' then begin
                 PedidosItensValor_ICMSOper.Value    := Roundto(CalculaMacro('Calculo_VlrICMS'), -2);
              end;
              if Trim(TipoNotaCalculo_ReducaoICMS.AsString) <> '' then begin
                 PedidosItensValor_ICMSReducao.Value := Roundto(CalculaMacro('Calculo_ReducaoICMS'), -2);
              end;
           end;
      end;
end;

procedure TPedido_ItensOutros.PegaValorUni;
begin
      with Dados do begin
           if TipoNotaOrigem_ValorUnitario.AsInteger < 4 then begin
              if (PedidosItens.State = dsInsert) or (PedidosItens.State = dsEdit) then begin
                 if not TipoNotaFormula_Produto.AsBoolean then begin
                    PedidosItensValor_Unitario.Value := 0;

                    if TipoNotaOrigem_ValorUnitario.AsInteger = 0 then
                       PedidosItensValor_Unitario.Value := ProdutosValor_Entrada.AsCurrency;
                
                    if TipoNotaOrigem_ValorUnitario.AsInteger = 1 then begin
                       PedidosItensValor_Unitario.Value := ProdutosValor_Venda.AsCurrency;
                       // Calcula o lucro e soma ao valor unitario.
                       cValorLucro2.Value := PedidosItensLucro_Valor.AsCurrency;
                       cLucro2.Value      := PedidosItensLucro.AsFloat;
                       if (ProdutosValor_Venda.AsCurrency > FichaEstoque.FieldByName('Unitario_Saldo').asCurrency) and (FichaEstoque.FieldByName('Unitario_Saldo').AsCurrency > 0) then begin
                          cValorLucro2.Value := ProdutosValor_Venda.AsCurrency - FichaEstoque.FieldByName('Unitario_Saldo').AsCurrency;
                          cLucro2.Value      := ((ProdutosValor_Venda.AsCurrency - FichaEstoque.FieldByName('Unitario_Saldo').AsCurrency)/FichaEstoque.FieldByName('Unitario_Saldo').AsCurrency)*100;
                       end;
                    end;
                    if TipoNotaOrigem_ValorUnitario.AsInteger = 2 then
                       PedidosItensValor_Unitario.Value := ProdutosValor_CustoMedio.AsCurrency;
                    if TipoNotaOrigem_ValorUnitario.AsInteger = 3 then begin
                       PedidosItensValor_Unitario.Value := FichaEstoque.FieldByName('Unitario_Saldo').AsCurrency;
                    end;
                    if (ProdutosPromocao.AsBoolean = true) and (ProdutosPromocao_Valor.AsFloat > 0) then begin
                       PedidosItensValor_Unitario.Value := ProdutosPromocao_Valor.AsCurrency;
                    end;
                    if (PedidosItensDesconto.AsFloat = 0) and (PedidosDesconto_Percentual.AsFloat <> 0) then begin
                       PedidosItensDesconto.Value       := PedidosDesconto_Percentual.Value;
                       PedidosItensDesconto_Valor.Value := Roundto(Percentual(PedidosItensValor_Unitario.Value, PedidosItensDesconto.Value), -2);
                    end;
                    // Ajusta valor unitário para o tipo de desconto - "COMERCIAL  - Valor Unitario".
                    if UpperCase(PedidosDesconto_Tipo.AsString) = UpperCase('COMERCIAL  - Valor Unitario') then begin
                       PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value * (1-(PedidosItensDesconto.Value/100));
                    end;
                    // Desconto no valor unitário do produto "Sem destaque na nota fiscal".
                    if (PedidosDesconto_Tipo.AsString = 'Valor unitário do Produto') then begin
                       PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value * (1-(PedidosDesconto_Percentual.Value/100));
                       PedidosItensDesconto.Value       := 0;
                       PedidosItensDesconto_Valor.Value := 0;
                    end;
                    // Calcula o lucro e soma ao valor unitario.
                    if PedidosItensLucro.AsFloat > 0 then begin
                       PedidosItensLucro_Valor.Value    := Percentual(PedidosItensValor_Unitario.Value, PedidosItensLucro.Value);
                       PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.AsCurrency + PedidosItensLucro_Valor.Value;
                    end;
                 end else begin
                    PedidosItensValor_Unitario.Value := CalculaMacro('Calculo_Mercadoria');
                 end
              end;
           end;
      end;
end;

function TPedido_ItensOutros.ChecaValor:Boolean;
var
    mLucroMin,
    mVlrUni,
    mLucroMax:Double;
begin
      // Verifica se o valor informado esta dentro da mergem de lucro quando o tipo de nota exige.
      result := true;
      with Dados do begin
           Usuarios.SQL.Clear;
           Usuarios.SQL.Add('SELECT * FROM Usuarios WHERE Matricula = '+QuotedStr(Menu_Principal.mUsuarioCodigo));
           Usuarios.Open;
           
           if (UsuariosLucro_Min.AsFloat > 0) or (UsuariosLucro_Max.AsFloat > 0) then begin
              mVlrUni := 0;
              If TipoNotaOrigem_ValorUnitario.AsInteger = 0 then
                 mVlrUni := ProdutosValor_Entrada.AsCurrency;
              If TipoNotaOrigem_ValorUnitario.AsInteger = 1 then
                 mVlrUni := ProdutosValor_Venda.AsCurrency;
              If TipoNotaOrigem_ValorUnitario.AsInteger = 2 then
                 mVlrUni := ProdutosValor_CustoMedio.AsCurrency;
              If TipoNotaOrigem_ValorUnitario.AsInteger = 3 then
                 mVlrUni := FichaEstoque.FieldByName('Unitario_Saldo').AsCurrency;
              If (ProdutosPromocao.AsBoolean = true) and (ProdutosPromocao_Valor.AsFloat > 0) then
                 mVlrUni := ProdutosPromocao_Valor.AsCurrency;
              If (PedidosItensDesconto.AsFloat = 0) and (PedidosDesconto_Percentual.AsFloat <> 0) then begin
                 PedidosItensDesconto.Value       := PedidosDesconto_Percentual.Value;
                 PedidosItensDesconto_Valor.Value := Roundto(Percentual(PedidosItensValor_Unitario.Value, PedidosItensDesconto.Value), -2);
              End;
              // Ajusta valor unitário para o tipo de desconto - "COMERCIAL  - Valor Unitario".
              If UpperCase(PedidosDesconto_Tipo.AsString) = UpperCase('COMERCIAL  - Valor Unitario') then begin
                 mVlrUni := PedidosItensValor_Unitario.Value * (1-(PedidosItensDesconto.Value/100));
              End;
              // Desconto no valor unitário do produto "Sem destaque na nota fiscal".
              If (PedidosDesconto_Tipo.AsString = 'Valor unitário do Produto') then begin
                 mVlrUni := PedidosItensValor_Unitario.Value * (1-(PedidosDesconto_Percentual.Value/100));
              End;

              if UsuariosLucro_Min.Value > 0 then begin
                 mLucroMin := mVlrUni + Percentual(mVlrUni, UsuariosLucro_Min.AsFloat);
                 if PedidosItensValor_Unitario.Value < mLucroMin then begin
                    result := false;
                    ShowMessage('Valor unitário do produto esta abaixo do valor minimo permitido!');
                    cValorUnitario.SetFocus;
                 end;
              end;
              if UsuariosLucro_Max.Value > 0 then begin
                 mLucroMax := mVlrUni + Percentual(mVlrUni, UsuariosLucro_Max.AsFloat);
                 if PedidosItensValor_Unitario.Value > mLucroMax then begin
                    result := false;
                    ShowMessage('Valor unitário do produto esta acima do valor maximo permitido!');
                    cValorUnitario.SetFocus;
                 end;
              end;
           end;
      end;
end;

procedure TPedido_ItensOutros.cLucroExit(Sender: TObject);
begin
      PegaValorUni;
end;

procedure TPedido_ItensOutros.cNavioClick(Sender: TObject);
begin
     with Dados do begin
          cEstoqueNavio.Value := EstoqueNavio(PedidosItensCodigo_Mercadoria.AsInteger, PedidosItensNavio.AsInteger);
     end;
end;

procedure TPedido_ItensOutros.Button1Click(Sender: TObject);
begin
      PedidosOutra_ProprioReferenciaItens := TPedidosOutra_ProprioReferenciaItens.Create(Self);
      PedidosOutra_ProprioReferenciaItens.Caption := Caption;
      PedidosOutra_ProprioReferenciaItens.Showmodal;
end;



end.
