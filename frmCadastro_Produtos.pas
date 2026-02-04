unit frmCadastro_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.ComCtrls, Vcl.StdCtrls, Mask, DBCtrls, Vcl.ExtCtrls, RxDBComb,
  RxLookup, RXCtrls, funcoes, RXDBCtrl, Grids, DBGrids, Buttons, MemDS, RxCurrEdit, RxToolEdit, ClipBrd;

type
  TDBGridDescendant = class(TDBGrid);
  TCadastro_Produtos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tCodigo: TMSQuery;
    bPesquisa: TButton;
    PageControl1: TPageControl;
    tabProduto: TTabSheet;
    TabValores: TTabSheet;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cTipo: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    cCodigoFabrica: TDBEdit;
    StaticText8: TStaticText;
    cUnidade: TDBLookupComboBox;
    StaticText16: TStaticText;
    cQtdeUM: TDBEdit;
    StaticText17: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText23: TStaticText;
    cFabricante: TDBLookupComboBox;
    StaticText24: TStaticText;
    cFornecedor: TDBLookupComboBox;
    StaticText11: TStaticText;
    cDescricao: TDBMemo;
    StaticText6: TStaticText;
    DBEdit4: TDBEdit;
    TabLista: TTabSheet;
    GradeProdutos: TDBGrid;
    tPesquisa: TMSQuery;
    StaticText29: TStaticText;
    cTipoConversao: TRxDBComboBox;
    StaticText32: TStaticText;
    cLinha: TDBLookupComboBox;
    StaticText33: TStaticText;
    cGTIN: TDBEdit;
    StaticText34: TStaticText;
    cGTINUnidade: TDBEdit;
    StaticText35: TStaticText;
    cUnidadeOrigem: TDBLookupComboBox;
    StaticText36: TStaticText;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    StaticText37: TStaticText;
    DBEdit13: TDBEdit;
    StaticText38: TStaticText;
    StaticText40: TStaticText;
    cQtdeVol: TDBEdit;
    TabCST: TTabSheet;
    cCSTPIS: TStaticText;
    cCSTPISEnt: TDBLookupComboBox;
    cCSTCOFINS: TStaticText;
    cCSTCOFINSEnt: TDBLookupComboBox;
    GrupoPIS: TGroupBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    GrupoCOFINS: TGroupBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    TabParam: TTabSheet;
    DBCheckBox5: TDBCheckBox;
    tEstoque: TMSQuery;
    tUltimas: TMSQuery;
    dstUltimas: TDataSource;
    tUltimasNota: TIntegerField;
    tUltimasData_Entrada: TDateTimeField;
    tUltimasLinha: TIntegerField;
    tUltimasValor_Inventario: TCurrencyField;
    tUltimasValor_Entrada: TCurrencyField;
    Button1: TButton;
    cDetalhe: TDBRadioGroup;
    cDadosDetalhe: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    StaticText41: TStaticText;
    DBEdit16: TDBEdit;
    GroupBox3: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    GroupBox4: TGroupBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    TabSheet6: TTabSheet;
    GradeSeriais: TDBGrid;
    TabSheet7: TTabSheet;
    GradeDetalhes: TDBGrid;
    bNumeros: TButton;
    Button2: TButton;
    GroupBox5: TGroupBox;
    DBEdit25: TDBEdit;
    StaticText51: TStaticText;
    StaticText55: TStaticText;
    DBEdit26: TDBEdit;
    StaticText56: TStaticText;
    DBEdit27: TDBEdit;
    StaticText57: TStaticText;
    DBEdit28: TDBEdit;
    GroupBox6: TGroupBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    TabDesc: TTabSheet;
    GroupBox7: TGroupBox;
    StaticText64: TStaticText;
    cComissaoRep: TDBEdit;
    StaticText65: TStaticText;
    DBEdit35: TDBEdit;
    GroupBox8: TGroupBox;
    StaticText62: TStaticText;
    DBEdit31: TDBEdit;
    StaticText63: TStaticText;
    DBEdit32: TDBEdit;
    StaticText61: TStaticText;
    StaticText66: TStaticText;
    StaticText67: TStaticText;
    DBEdit33: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    StaticText68: TStaticText;
    StaticText69: TStaticText;
    StaticText70: TStaticText;
    StaticText71: TStaticText;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit53: TDBEdit;
    StaticText73: TStaticText;
    StaticText74: TStaticText;
    StaticText75: TStaticText;
    StaticText76: TStaticText;
    StaticText77: TStaticText;
    StaticText78: TStaticText;
    StaticText79: TStaticText;
    StaticText80: TStaticText;
    StaticText81: TStaticText;
    StaticText82: TStaticText;
    StaticText83: TStaticText;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox3: TRxDBComboBox;
    RxDBComboBox4: TRxDBComboBox;
    RxDBComboBox5: TRxDBComboBox;
    StaticText84: TStaticText;
    DBEdit45: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit54: TDBEdit;
    StaticText85: TStaticText;
    StaticText86: TStaticText;
    cModalidade: TDBLookupComboBox;
    StaticText28: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    cFiltroModal: TRadioGroup;
    cQtde: TPanel;
    TabSheet9: TTabSheet;
    GradeMateria: TDBGrid;
    bCadastroMateria: TButton;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBMemo1: TDBMemo;
    StaticText42: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox10: TGroupBox;
    DBEdit17: TDBEdit;
    DBEdit22: TDBEdit;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    StaticText87: TStaticText;
    cDataDoc: TDBDateEdit;
    tProdutosDetalhe: TMSQuery;
    dstProdutosDetalhe: TDataSource;
    tProdutosDetalheLote: TStringField;
    tProdutosDetalheNota_Entra: TIntegerField;
    tProdutosDetalheData_Entra: TDateTimeField;
    tProdutosDetalheQtde_Entra: TFloatField;
    tProdutosDetalheNota_Saida: TIntegerField;
    tProdutosDetalheData_Val: TStringField;
    tProdutosDetalheProcesso: TStringField;
    tProdutosDetalheSaida_Entrada: TIntegerField;
    DBCheckBox44: TDBCheckBox;
    tProdutosDetalheData_Saida: TDateTimeField;
    tProdutosDetalheQtde_Saida: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    cEscalaRelevante: TDBCheckBox;
    cCNPJFab: TDBEdit;
    lCNPJFab: TStaticText;
    DBMemo2: TDBMemo;
    StaticText89: TStaticText;
    StaticText90: TStaticText;
    DBEdit55: TDBEdit;
    StaticText91: TStaticText;
    DBEdit56: TDBEdit;
    StaticText92: TStaticText;
    DBEdit57: TDBEdit;
    StaticText93: TStaticText;
    DBEdit58: TDBEdit;
    tUltimasEmissao: TStringField;
    GroupBox1: TGroupBox;
    cPromocao: TDBCheckBox;
    lValorPromocao: TStaticText;
    cValorPromocao: TDBEdit;
    StaticText95: TStaticText;
    DBEdit15: TDBEdit;
    DBCheckBox45: TDBCheckBox;
    TabSheet1: TTabSheet;
    RxDBGrid1: TDBGrid;
    DBCheckBox46: TDBCheckBox;
    DBLookupComboBox5: TDBLookupComboBox;
    StaticText99: TStaticText;
    DBCheckBox47: TDBCheckBox;
    bAjuste: TButton;
    StaticText100: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    Panel2: TPanel;
    Shape1: TShape;
    cImagem: TImage;
    StaticText101: TStaticText;
    DBLookupComboBox7: TDBLookupComboBox;
    StaticText102: TStaticText;
    DBLookupComboBox8: TDBLookupComboBox;
    StaticText103: TStaticText;
    DBEdit5: TDBEdit;
    StaticText104: TStaticText;
    DBEdit6: TDBEdit;
    StaticText105: TStaticText;
    cPesquisa: TEdit;
    DBEdit62: TDBEdit;
    StaticText106: TStaticText;
    DBCheckBox48: TDBCheckBox;
    TabSheet8: TTabSheet;
    cPeso: TDBEdit;
    StaticText19: TStaticText;
    StaticText3: TStaticText;
    cPesoKG: TDBEdit;
    GroupBox19: TGroupBox;
    StaticText110: TStaticText;
    DBEdit70: TDBEdit;
    StaticText111: TStaticText;
    DBEdit71: TDBEdit;
    StaticText138: TStaticText;
    DBEdit97: TDBEdit;
    StaticText139: TStaticText;
    DBEdit98: TDBEdit;
    StaticText140: TStaticText;
    DBEdit99: TDBEdit;
    GroupBox20: TGroupBox;
    StaticText141: TStaticText;
    DBEdit100: TDBEdit;
    StaticText142: TStaticText;
    DBEdit101: TDBEdit;
    StaticText143: TStaticText;
    DBEdit102: TDBEdit;
    StaticText144: TStaticText;
    cDisponivel: TCurrencyEdit;
    StaticText145: TStaticText;
    cTotalEstoque: TCurrencyEdit;
    GroupBox21: TGroupBox;
    StaticText146: TStaticText;
    DBEdit103: TDBEdit;
    StaticText147: TStaticText;
    DBEdit104: TDBEdit;
    gPauta: TGroupBox;
    DBGrid1: TDBGrid;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    GroupBox23: TGroupBox;
    GradeValores: TDBGrid;
    GroupBox15: TGroupBox;
    cAliquotaII: TDBEdit;
    StaticText113: TStaticText;
    StaticText122: TStaticText;
    DBEdit81: TDBEdit;
    StaticText124: TStaticText;
    DBEdit83: TDBEdit;
    StaticText135: TStaticText;
    DBEdit94: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit72: TDBEdit;
    StaticText112: TStaticText;
    StaticText116: TStaticText;
    DBEdit76: TDBEdit;
    StaticText117: TStaticText;
    StaticText123: TStaticText;
    DBEdit82: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    StaticText125: TStaticText;
    DBEdit84: TDBEdit;
    GroupBox16: TGroupBox;
    StaticText114: TStaticText;
    cAliquotaPIS: TDBEdit;
    DBEdit78: TDBEdit;
    StaticText119: TStaticText;
    StaticText126: TStaticText;
    DBEdit85: TDBEdit;
    StaticText130: TStaticText;
    DBEdit89: TDBEdit;
    StaticText136: TStaticText;
    DBEdit95: TDBEdit;
    GroupBox17: TGroupBox;
    StaticText115: TStaticText;
    cAliquotaCOFINS: TDBEdit;
    DBEdit79: TDBEdit;
    StaticText120: TStaticText;
    StaticText127: TStaticText;
    DBEdit86: TDBEdit;
    StaticText131: TStaticText;
    DBEdit90: TDBEdit;
    StaticText137: TStaticText;
    DBEdit96: TDBEdit;
    GroupBox18: TGroupBox;
    DBEdit80: TDBEdit;
    StaticText121: TStaticText;
    DBEdit87: TDBEdit;
    StaticText128: TStaticText;
    StaticText129: TStaticText;
    DBEdit88: TDBEdit;
    DBEdit91: TDBEdit;
    StaticText132: TStaticText;
    DBEdit92: TDBEdit;
    StaticText133: TStaticText;
    StaticText134: TStaticText;
    DBEdit93: TDBEdit;
    StaticText7: TStaticText;
    DBLookupComboBox9: TDBLookupComboBox;
    StaticText9: TStaticText;
    DBLookupComboBox10: TDBLookupComboBox;
    StaticText10: TStaticText;
    DBEdit1: TDBEdit;
    StaticText12: TStaticText;
    DBEdit2: TDBEdit;
    StaticText13: TStaticText;
    DBEdit7: TDBEdit;
    StaticText14: TStaticText;
    DBEdit8: TDBEdit;
    DBCheckBox49: TDBCheckBox;
    GroupBox2: TGroupBox;
    cDumping: TDBEdit;
    StaticText22: TStaticText;
    StaticText15: TStaticText;
    DBEdit9: TDBEdit;
    StaticText18: TStaticText;
    DBEdit10: TDBEdit;
    StaticText20: TStaticText;
    DBEdit14: TDBEdit;
    tUltimasQuantidade: TFloatField;
    TabSheet10: TTabSheet;
    RxDBGrid2: TDBGrid;
    Button3: TButton;
    bFiliais: TButton;
    DBCheckBox50: TDBCheckBox;
    DBEdit18: TDBEdit;
    StaticText21: TStaticText;
    GroupBox9: TGroupBox;
    DBEdit19: TDBEdit;
    StaticText25: TStaticText;
    GroupBox11: TGroupBox;
    DBEdit20: TDBEdit;
    StaticText26: TStaticText;
    DBEdit21: TDBEdit;
    StaticText27: TStaticText;
    StaticText30: TStaticText;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    StaticText31: TStaticText;
    DBEdit29: TDBEdit;
    StaticText39: TStaticText;
    StaticText43: TStaticText;
    DBEdit30: TDBEdit;
    DBEdit34: TDBEdit;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    DBLookupComboBox11: TDBLookupComboBox;
    bPesq: TSpeedButton;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3Change(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StaticText4Click(Sender: TObject);
    procedure cUnidadeExit(Sender: TObject);
    procedure cClasseIPIClick(Sender: TObject);
    procedure bNumerosClick(Sender: TObject);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure cPromocaoClick(Sender: TObject);
    procedure cGTINExit(Sender: TObject);
    procedure cGTINUnidadeExit(Sender: TObject);
    procedure StaticText24Click(Sender: TObject);
    procedure StaticText23Click(Sender: TObject);
    procedure StaticText28Click(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cDetalheClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cFiltroModalClick(Sender: TObject);
    procedure bCadastroMateriaClick(Sender: TObject);
    procedure cEscalaRelevanteClick(Sender: TObject);
    procedure cImagemClick(Sender: TObject);
    procedure gPautaEditButtonClick(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure gPautaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure bAjusteClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure GradeProdutosTitleClick(Column: TColumn);
    procedure bFiliaisClick(Sender: TObject);
    procedure bPesqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa
   ,mOrdem:String;
    NFECodigo:integer;
  end;

var
  Cadastro_Produtos: TCadastro_Produtos;

implementation

Uses frmDados, frmCadastro_TipoProduto, frmCadastro_NCM, frmDMFiscal, frmCadastro_UnidadeMedida, frmCadastro_ProdutosSeriais, frmDMComercial,
     frmCadastro_Fornecedores, frmCadastro_TabelaComissoes, frmCadastro_ProdutosDetalhes, frmCadastro_ProdutosMateriaPrima, frmJanela_Imagem,
     frmDMDespacho, frmCadastro_ProdutosAtributos, frmCadastro_ProdutosFiliais, frmCadastro_Fabricantes, frmPesquisaGerais;
{$R *.dfm}

procedure TCadastro_Produtos.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_Produtos.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     with Dados, dmFiscal, dmComercial, dmDespacho do begin
          mOrdem := 'desc';
          with Produtos do begin 
               close;
               sql.Clear;
               sql.Add('SELECT * FROM Produtos ORDER BY Descricao');
               open;
               cQtde.Caption := Poezero(6, Produtos.RecordCount);
          end;

          If NFECodigo <> 0 then produtos.Locate('Codigo', NFECodigo, [loCaseInsensitive]);

          TipoProduto.SQL.Clear;
          TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
          TipoProduto.Open;

          Unidades.SQL.Clear;
          Unidades.SQL.Add('SELECT * FROM UnidadeMedida ORDER BY Descricao');
          Unidades.Open;

          ClasseIPI.SQL.Clear;
          ClasseIPI.SQL.Add('SELECT * FROM ClasseIPI');
          ClasseIPI.Open;

          NCM.SQL.Clear;
          NCM.SQL.Add('SELECT * FROM NCM ORDER BY Produto');
          NCM.Open;

          TipoItem.SQL.Clear;
          TipoItem.SQL.Add('SELECT * FROM TipoItem ORDER BY Descricao');
          TipoItem.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Ativo = 1) ORDER BY Nome');
          Fornecedores.Open;

          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes WHERE Ativo = 1 ORDER BY Nome');
          Clientes.Open;

          Fabricantes.SQL.Clear;
          Fabricantes.SQL.Add('SELECT * FROM Fabricantes WHERE(Ativo = 1) ORDER BY Nome');
          Fabricantes.Open;

          TabelaComissoes.SQL.Clear;
          TabelaComissoes.SQL.Add('SELECT * FROM TabelaComissoes ORDER BY Descricao');
          TabelaComissoes.Open;

          ProdutosLinhas.SQL.Clear;
          ProdutosLinhas.SQL.Add('SELECT * FROM ProdutosLinhas ORDER BY Descricao');
          ProdutosLinhas.Open;

          CSTPIS.SQL.Clear;
          CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo > 49) OR (Codigo = 99) ORDER BY Codigo');
          CSTPIS.Open;

          CSTCOFINS.SQL.Clear;
          CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo > 49) OR (Codigo = 99) ORDER BY Codigo');
          CSTCOFINS.Open;

          with Dados.CSTTabelaB do begin
               sql.Clear;
               sql.Add('select * from CSTTabelaB order by Codigo');
               open;
          end;

          Combustiveis.SQL.Clear;
          Combustiveis.SQL.Add('SELECT * FROM Combustiveis ORDER BY Produto');
          Combustiveis.Open;

          TiposProcesso.SQL.Clear;
          TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Descricao');
          TiposProcesso.Open;

          ProdutosPauta.SQL.Clear;
          ProdutosPauta.SQL.Add('SELECT * FROM ProdutosPauta WHERE Produto = :pCodigo ORDER BY UF');
          ProdutosPauta.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
          ProdutosPauta.Open;

          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('SELECT *');
          ClassificacaoFinanceira.SQL.Add('FROM   ClassificacaoFinanceira');
          ClassificacaoFinanceira.SQL.Add('WHERE  Tipo = ''P'' ');
          ClassificacaoFinanceira.SQL.Add('ORDER BY Descricao, Codigo');
          ClassificacaoFinanceira.Open;

          AnuenteImp.SQL.Clear;
          AnuenteImp.SQL.Add('SELECT * FROM OrgaoAnuenteImp ORDER BY Nome');
          AnuenteImp.Open;

          AnuenteExp.SQL.Clear;
          AnuenteExp.SQL.Add('SELECT * FROM OrgaoAnuenteExp ORDER BY Nome');
          AnuenteExp.Open;

          with Servicos do begin
               sql.Clear;
               sql.Add('select * from Servicos order by Codigo');
               open;
          end;

          PageControl1.Pages[4].TabVisible := false;
          PageControl1.ActivePageIndex     := 0;
     end;

     Screen.Cursor := crDefault;
end;

procedure TCadastro_Produtos.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      // Seta com false todas as opções de seleção.
      with Dados do begin
           If (Button = nbInsert) then begin
               PageControl1.ActivePageIndex := 0;
               For i := 0 to Dados.Produtos.FieldCount-1 do begin
                   If Produtos.Fields[i].DataType = ftBoolean then Produtos.Fields[i].Value := false;
               End;
               ProdutosDetalhe_Especifico.Value := 'O';
               ProdutosOrigem.Value             := 'I';
               ProdutosVisivel_representa.Value := false;
               Produtosfcp.Value                := false;
               Produtosmateria_prima.Value      := false;
               ProdutosLote_Obrigatorio.Value   := false;
               ProdutosSerial_Obrigatorio.Value := false;
               ProdutosReciclavel.Value         := false;
               ProdutosEscala_Relevante.Value   := false;
               ProdutosDumping.Value            := false;
               ProdutosEntrada_ST.Value         := false;
               ProdutosCusto_Seletivo.Value     := false;
               ProdutosTabela_CAMEX.Value       := false;
               ProdutosProducao_Nacional.Value  := false;
           End;

           If (Button = nbEdit) or (Button = nbInsert) then begin
              For i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              End;

              TabProduto.Enabled := true;
              TabValores.Enabled := true;
              TabCST.Enabled     := true;
              TabDesc.Enabled    := true;
              TabParam.Enabled   := true;

              If PageControl1.ActivePageIndex = 0 then cCodigoFabrica.SetFocus;
              If PageControl1.ActivePageIndex = 1 then cCSTPISEnt.SetFocus;
              If PageControl1.ActivePageIndex = 2 then cAliquotaII.SetFocus;
              If PageControl1.ActivePageIndex = 4 then cComissaoRep.SetFocus;
              If PageControl1.ActivePageIndex = 5 then cDetalhe.SetFocus;
           End;

           If (Button = nbPost) or (Button = nbCancel) then Begin
              TabProduto.Enabled := false;
              TabValores.Enabled := false;
              TabCST.Enabled     := false;
              TabDesc.Enabled    := false;
              TabParam.Enabled   := false;
           End;
      end;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Produtos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      with Dados, dmComercial, dmFiscal do begin
           Produtos.Filtered := false;
           Produtos.Filter   := '';
      end;
      LimpaMemoria; 
      Cadastro_Produtos.Release;
      Cadastro_Produtos := nil;
end;

procedure TCadastro_Produtos.DBEdit3Change(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           If (Produtos.State = dsEdit) or (Produtos.State = dsInsert) then begin
              ProdutosUnidade.Value := NCMUnidade.Value;
              If ProdutosAliquota_IPI.AsFloat = 0 then
                 ProdutosAliquota_IPI.Value := NCMIPI.Value;
              If ProdutosAliquota_II.AsFloat = 0 then
                 ProdutosAliquota_II.Value := NCMII.Value;
              If ProdutosAliquota_PIS.AsFloat = 0 then
                 ProdutosAliquota_PIS.Value := NCMPIS.Value;
              If ProdutosAliquota_COFINS.AsFloat = 0 then
                 ProdutosAliquota_COFINS.Value := NCMCOFINS.Value;
           End;
      End;
end;

procedure TCadastro_Produtos.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
    mTexto: String;
begin
      // Verifica se os códigos GTIN foram informados em caso de unidades de medida diferentes, caso algum tenha sido informado.
      If Button = nbPost then begin
         If Trim(cUnidadeOrigem .Text) <> Trim(cUnidade.Text) then begin
            If (Trim(cGTIN.Text) <> '') or (Trim(cGTINUnidade.Text) <> '') then begin
               If (Trim(cGTIN.Text) = '') then begin
                  MessageDlg('Atenção!'+#13+#13+'As Unidades de medida de "Origem" e de "Faturamento" são diferentes.'+#13+#13+'Neste caso é obrigatório informar os dois códigos GTIN.', mtInformation, [mbOK], 0);
                  cGTIN.SetFocus;
                  Abort;
               End;
               If (Trim(cGTINUnidade.Text) = '') then begin
                  MessageDlg('Atenção!'+#13+#13+'As Unidades de medida de "Origem" e de "Faturamento" são diferentes.'+#13+#13+'Neste caso é obrigatório informar os dois códigos GTIN.', mtInformation, [mbOK], 0);
                  cGTINUnidade.SetFocus;
                  Abort;
               End;
               If Trim(cGTIN.Text) = Trim(cGTINUnidade.Text) then begin
                  MessageDlg('Atenção!'+#13+#13+'As Unidades de medida de "Origem" e de "Faturamento" são diferentes.'+#13+#13+'Neste caso os códigos GTIN não podem ser iguais.', mtInformation, [mbOK], 0);
                  cGTIN.SetFocus;
                  Abort;
               End;
            End;
         End;

         If (Trim(cUnidade.Text) = '') then begin
            MessageDlg('Atenção!'+#13+#13+'O campo "Unid.Medida (Faturam.)" é obrigatório.', mtInformation, [mbOK], 0);
            cUnidade.SetFocus;
            Abort;
         End;

         if Dados.ProdutosServico.AsBoolean = true then begin
            if Trim(cCSTPISEnt.Text) = '' then begin
               MessageDlg('Atenção!'+#13+#13+'O campo "CST de PIS" é obrigatório.', mtInformation, [mbOK], 0);
               PageControl1.ActivePageIndex := 1;
               cCSTPISEnt.SetFocus;
               Abort;
            end;
            if Trim(cCSTCOFINSEnt.Text) = '' then begin
               MessageDlg('Atenção!'+#13+#13+'O campo "CST de COFINS" é obrigatório.', mtInformation, [mbOK], 0);
               PageControl1.ActivePageIndex := 1;
               cCSTCOFINSEnt.SetFocus;
               Abort;
            end;
            if Dados.CSTPISTributavel.AsBoolean then begin
               if Dados.ProdutosAliquota_PIS.Value = 0 then begin
                  MessageDlg('Atenção!'+#13+#13+'O campo "Alíquota de PIS" é obrigatório quando "Serviço tributavel ao PIS".', mtInformation, [mbOK], 0);
                  PageControl1.ActivePageIndex := 2;
                  cAliquotaPIS.SetFocus;
                  Abort;
               end;
            end;
            if Dados.CSTCOFINSTributavel.AsBoolean then begin
               if Dados.ProdutosAliquota_COFINS.Value = 0 then begin
                  MessageDlg('Atenção!'+#13+#13+'O campo "Alíquota de COFINS" é obrigatório quando "Serviço tributavel ao PIS".', mtInformation, [mbOK], 0);
                  PageControl1.ActivePageIndex := 2;
                  cAliquotaCOFINS.SetFocus;
                  Abort;
               end;   
            end;
         end;

         Screen.Cursor := crSQLWait;
         If Dados.Produtos.State = dsInsert then begin
            tCodigo.SQL.Clear;
            tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo),0) AS Codigo FROM Produtos');
            tCodigo.Open;
            
            Dados.ProdutosCodigo.Value := tCodigo.FieldByName('Codigo').Value + 1;
            if trim(Dados.ProdutosCodigo_SKU.asstring) = '' then begin
               Dados.ProdutosCodigo_SKU.value := Dados.ProdutosCodigo.asstring;
            end;
            tCodigo.Close;
         End;

         mTexto := RemoveCaracter(#13,'',cDescricao.Text);
         mTexto := RemoveCaracter(#12,'',mTexto);
         mTexto := RemoveCaracter(#10,'',mTexto);
         If Pos('<{'+ Dados.ProdutosCodigo.AsString+'}>', mTexto) = 0 then
            Dados.ProdutosDescricao.Value := mTexto + #13+'<{'+ Dados.ProdutosCodigo.AsString+'}>';
         If Dados.ProdutosQuantidade_Unidade.Value < 1 then Dados.ProdutosQuantidade_Unidade.Value := 1;
         If Dados.ProdutosQuantidade_Volumes.Value < 1 then Dados.ProdutosQuantidade_Volumes.Value := 1;

         // Atualiza os pesos liquído do produto nas adições.
         With Dados do begin
              tCodigo.SQL.Clear;
              tCodigo.SQL.Add('UPDATE Adicoes SET Peso_Liquido = :pPeso');
              tCodigo.SQL.Add('WHERE Codigo_Mercadoria = :pCodigo');
              tCodigo.SQL.Add('AND   ISNULL((SELECT DISTINCT Bloqueado FROM ProcessosDocumentos PD WHERE PD.Numero_Declaracao = Adicoes.DI), 0) = 0');
              tCodigo.ParamByName('pPeso').Value   := ProdutosPeso_Liquido.Value;
              tCodigo.ParamByName('pCodigo').Value := ProdutosCodigo.Value;
              //tCodigo.SQL.SaveToFile('c:\temp\Produtos_Adicoes.sql');
              tCodigo.Execute;
         End;
      End;
      If Button = nbDelete then begin
         if MessageDlg('Deseja realmente excluir este Produto?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
            Abort
         end;
         
         tPesquisa.SQL.Clear;
         tPesquisa.SQL.Add('SELECT (SELECT COUNT(*) FROM NotasItens            WHERE (Codigo_Mercadoria = :pCodigo)) +');
         tPesquisa.SQL.Add('       (SELECT COUNT(*) FROM NotasTerceirosItens   WHERE (Codigo_Mercadoria = :pCodigo)) +');
         tPesquisa.SQL.Add('       (SELECT COUNT(*) FROM ProdutosTransferencia WHERE (Produto_Saida = :pCodigo OR Produto_Entrada = :pCodigo))');
         tPesquisa.SQL.Add('       AS Qtde');
         tPesquisa.ParamByName('pCodigo').AsInteger := Dados.ProdutosCodigo.Value;
         tPesquisa.Open;
         If tPesquisa.FieldByName('Qtde').AsInteger > 0 then begin
            MessageDlg('Atenção!'+#13+#13+'O Produtos que você esta tentando excluir já foi utilizado para a emissão de nota fiscal.'+#13+#13+'O produto não sera excluído.', mtInformation, [mbOK], 0);
            Abort;
         End;
      End;

      tPesquisa.SQL.Clear;
      tPesquisa.SQL.Add('SELECT COUNT(*) AS Qtde FROM PedidosItens WHERE Codigo_Mercadoria = :pCodigo');
      tPesquisa.ParamByName('pCodigo').AsInteger := Dados.ProdutosCodigo.Value;
      tPesquisa.Open;
      cQtdeVol.Enabled       := tPesquisa.FieldByName('Qtde').AsInteger = 0;
      cQtdeUM.Enabled        := cQtdeVol.Enabled;
      cTipoConversao.Enabled := cQtdeVol.Enabled;
end;

procedure TCadastro_Produtos.bPesqClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Servicos';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.Showmodal;
      Dados.ProdutosServico_Vinculado.Value := Clipboard.AsText;
end;

procedure TCadastro_Produtos.bPesquisaClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      mPesquisa := InputBox('Pesquisar Produto', 'Codigo/Descrição:', mPesquisa);
      try
         if Dados.Produtos.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
            if Dados.Produtos.Locate('Codigo_Fabricante', mPesquisa, [loCaseInsensitive]) = False then begin
               if Dados.Produtos.Locate('GTIN', mPesquisa, [loCaseInsensitive]) = False then begin
                  if Dados.Produtos.Locate('GTIN_Unidade', mPesquisa, [loCaseInsensitive]) = False then begin
                     if Dados.Produtos.Locate('NCM', mPesquisa, [loCaseInsensitive]) = False then begin
                        if Dados.Produtos.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]) = false then begin
                           tPesquisa.SQL.Clear;
                           tPesquisa.SQL.Add('SELECT * FROM Produtos WHERE(Descricao LIKE'+QuotedStr('%'+mPesquisa+'%')+')');
                           tPesquisa.Open;
                           Dados.Produtos.Locate('Codigo', tPesquisa.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
                        end;
                     end;
                  end;
               end;
            end;
         end;
      except
           MessageDlg('Houve um erro na tabela de produtos, provavelmente um produto com "Codigo" duplicado.'+#13+#13+'Entre em contato com o suporte do sistema para corrigir o problema.', mtError, [mbOK], 0);
      end;
      if PageControl1.ActivePageIndex = 9then GradeProdutos.SetFocus;
      if PageControl1.ActivePageIndex = 7then GradeDetalhes.SetFocus;
      if PageControl1.ActivePageIndex = 8then GradeMateria.SetFocus;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Produtos.StaticText2Click(Sender: TObject);
begin
      Cadastro_TipoProduto := TCadastro_TipoProduto.Create(Self);
      Cadastro_TipoProduto.Caption := Caption;
      Cadastro_TipoProduto.ShowModal;
      Dados.TipoProduto.Open;
end;

procedure TCadastro_Produtos.StaticText5Click(Sender: TObject);
begin
      Cadastro_NCM := TCadastro_NCM.Create(Self);
      Cadastro_NCM.Caption := Caption;
      Cadastro_NCM.ShowModal;
      dmFiscal.NCM.Open;
      Dados.Unidades.Open;
end;

procedure TCadastro_Produtos.FormCreate(Sender: TObject);
begin
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Produtos.StaticText4Click(Sender: TObject);
begin
      Cadastro_UnidadeMedida := TCadastro_UnidadeMedida.Create(Self);
      Cadastro_UnidadeMedida.Caption := Caption;
      Cadastro_UnidadeMedida.ShowModal;
      Dados.Unidades.Open;
end;

procedure TCadastro_Produtos.cUnidadeExit(Sender: TObject);
begin
      if Dados.ProdutosQuantidade_Unidade.Value < 0 then Dados.ProdutosQuantidade_Unidade.Value := 1;
      if Dados.ProdutosQuantidade_Volumes.Value < 0 then Dados.ProdutosQuantidade_Volumes.Value := 1;
end;

procedure TCadastro_Produtos.cClasseIPIClick(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           if (Produtos.State = dsInsert) or (Produtos.State = dsEdit) then begin
              if (ProdutosClasseEnquadra_IPI.Value <> '') and (ProdutosValor_IPI.Value = 0) then begin
                 ProdutosValor_IPI.Value := ClasseIPIValor_IPI.Value;
              end;
           end;
      end;
end;

procedure TCadastro_Produtos.bNumerosClick(Sender: TObject);
begin
      Cadastro_ProdutosSeriais := TCadastro_ProdutosSeriais.Create(Self);
      Cadastro_ProdutosSeriais.Caption := 'Cadastro de números serias dos produtos.';
      Cadastro_ProdutosSeriais.ShowModal;
end;

procedure TCadastro_Produtos.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
Var
    curPos   : LongInt;
    gridCoord: TGridCoord;
    mTexto   : String;
    i        : Integer;
    mTam     : Integer;
begin
      with HintInfo do begin
           if HintControl is TDBGrid then begin
              with TDBGridDescendant(HintControl),gridCoord do begin
                   Application.HideHint;
                   gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                   try
                      curPos := DataLink.ActiveRecord;
                      try
                         DataLink.ActiveRecord := y-1;
                         If not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                            HintStr := '';
                            with Dados do begin
                                 mTexto := Dados.ProdutosDescricao.Value;
                                 mTexto := RemoveCaracter('<{'+Dados.Produtos.FieldByName('Codigo').AsString+'}>', '', mTexto);
                                 mTam   := 1;
                                 for i := 1 to Length(mTexto) do begin
                                     HintStr := HintStr + Copy(mTexto, i, 1);
                                     Inc(mTam);
                                     if mTam = 50 then begin
                                        HintStr := HintStr + #13;
                                        mtam    := 1;
                                     end;
                                 end;
                            end;
                         end else begin
                            HintStr := '\';
                         end;   
                      finally
                         DataLink.ActiveRecord := CurPos
                      end;
                      CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                   except
                      CanShow := False
                   end;   
              end;
           end;
      end;
end;

procedure TCadastro_Produtos.cPesquisaChange(Sender: TObject);
begin
      with Dados, tPesquisa do begin
           sql.Clear;
           sql.Add('select Codigo from Produtos where(Descricao like'+QuotedStr('%'+cPesquisa.text+'%')+')');
           open;
           Produtos.Locate('Codigo', FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
      end;
end;

procedure TCadastro_Produtos.cPromocaoClick(Sender: TObject);
begin
      lValorPromocao.Enabled := cPromocao.Checked;
      cValorPromocao.Enabled := cPromocao.Checked;
end;

procedure TCadastro_Produtos.cGTINExit(Sender: TObject);
Var
    mGTIN: String;
begin
      mGTIN := RemoveCaracter(' ', '', Dados.ProdutosGTIN.AsString);
      mGTIN := RemoveCaracter('-', '', mGTIN);
      mGTIN := RemoveCaracter('.', '', mGTIN);
      mGTIN := RemoveCaracter('/', '', mGTIN);
      mGTIN := RemoveCaracter('_', '', mGTIN);
      mGTIN := RemoveCaracter(',', '', mGTIN);
      mGTIN := RemoveCaracter(';', '', mGTIN);
      mGTIN := Trim(mGTIN);
      if (Dados.Produtos.State = dsInsert) or (Dados.Produtos.State = dsEdit) then begin
         Dados.ProdutosGTIN.Value := mGTIN;
      end;   
end;

procedure TCadastro_Produtos.cGTINUnidadeExit(Sender: TObject);
Var
    mGTIN: String;
begin
      mGTIN := RemoveCaracter(' ', '', Dados.ProdutosGTIN_Unidade.AsString);
      mGTIN := RemoveCaracter('-', '', mGTIN);
      mGTIN := RemoveCaracter('.', '', mGTIN);
      mGTIN := RemoveCaracter('/', '', mGTIN);
      mGTIN := RemoveCaracter('_', '', mGTIN);
      mGTIN := RemoveCaracter(',', '', mGTIN);
      mGTIN := RemoveCaracter(';', '', mGTIN);
      mGTIN := Trim(mGTIN);
      if (Dados.Produtos.State = dsInsert) or (Dados.Produtos.State = dsEdit) then begin
         Dados.ProdutosGTIN_Unidade.Value := mGTIN;
      end;   
end;

procedure TCadastro_Produtos.StaticText24Click(Sender: TObject);
begin
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.ShowModal;
      Dados.Fornecedores.Open;
end;

procedure TCadastro_Produtos.StaticText23Click(Sender: TObject);
begin
      Cadastro_Fabricantes := TCadastro_Fabricantes.Create(Self);
      Cadastro_Fabricantes.Caption := Caption;
      Cadastro_Fabricantes.ShowModal;
      Dados.Fabricantes.Open;
end;

procedure TCadastro_Produtos.StaticText28Click(Sender: TObject);
begin
      Cadastro_TabelaComissoes := TCadastro_TabelaComissoes.Create(Self);
      Cadastro_TabelaComissoes.Caption := Caption;
      Cadastro_TabelaComissoes.ShowModal;
      dmComercial.TabelaComissoes.Open;
end;

procedure TCadastro_Produtos.cCodigoChange(Sender: TObject);
var
   mEstoque: real;
begin
      screen.Cursor := crSQLWait;
      with Dados do begin
           if Produtos.Active then begin
//              GradeSeriais.DisableScroll;
//              GradeDetalhes.DisableScroll;
//              GradeMateria.DisableScroll;

              ProdutosSeriais.SQL.Clear;
              ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Produto_Codigo = :pCodigo) ORDER BY Cor, Numero');
              ProdutosSeriais.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
              ProdutosSeriais.Open;

              ProdutosDetalhe.SQL.Clear;
              ProdutosDetalhe.SQL.Add('SELECT * FROM ProdutosDetalhe WHERE Produto_Codigo = :pCodigo ORDER BY Descricao');
              ProdutosDetalhe.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
              ProdutosDetalhe.Open;

              ProdutosMateriaPrima.SQL.Clear;
              ProdutosMateriaPrima.SQL.Add('SELECT *, Saldo = cast(0 as float) FROM ProdutosMateriaPrima WHERE Codigo_Produto = :pCodigo');
              ProdutosMateriaPrima.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
              ProdutosMateriaPrima.Open;

              ProdutosPauta.SQL.Clear;
              ProdutosPauta.SQL.Add('SELECT * FROM ProdutosPauta WHERE Produto = :pCodigo ORDER BY UF');
              ProdutosPauta.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
              ProdutosPauta.Open;

              // Calculando o estoque disponível.
              if Produtos.State <> dsInsert then begin
                 if (cCodigo.Showing = true) then begin
                    mEstoque := EstoqueProduto(ProdutosCodigo.AsInteger);
                    with tEstoque do begin
                         sql.clear;
                         sql.add('update Produtos set');
                         sql.add('       Estoque_Disponivel = cast(:pEstoque as decimal(14, 3))');
                         sql.add('      ,Estoque_Terceiros  = cast(');
                         sql.add('                                (select isnull(SUM(Quantidade), 0) from NotasItens where(Codigo_Mercadoria = :pCodigo) and (Saida_Entrada = 1) and (Movimenta_Estoque = 1) and (Cancelada <> 1) and (isnull(Nfe_Denegada, 0) = 0)');
                         sql.add('                                and (select Finalidade_Mercadoria from TipoNota where(Codigo = Tipo_Nota)) = 4)  -');
                         sql.add('                                (select isnull(sum(Quantidade), 0) from NotasTerceirosItens where(Codigo_Mercadoria = :pCodigo) and (Movimenta_Estoque = 1) and (SELECT Finalidade_Mercadoria from ReferenciasFiscais where(Codigo = Referencia_Fiscal)) = 4)');
                         sql.add('                            as decimal(14,3))');
                         sql.add('      ,Lancado_Pedidos    = cast((select isnull(sum(Quantidade), 0) from PedidosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1)) as decimal(14,3))');
                         sql.add('where Codigo = :pCodigo');
                         ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
                         ParamByName('pEstoque').asfloat  := mEstoque;
                         //SQL.SaveToFile('c:\temp\Cadastro_Produtos_Estoque.sql');
                         Execute;
                         Close;
                    end;
                    Produtos.RefreshRecord;
                    with tUltimas do begin
                         sqL.Clear;
                         sqL.Add('SELECT DISTINCT');
                         sqL.Add('       Data_Entrada,');
                         sqL.Add('       Nota,');
                         sqL.Add('       Valor_Inventario,');
                         sqL.Add('       Valor_UnitarioOrig AS Valor_Entrada,');
                         sqL.Add('       Quantidade,');
                         sqL.Add('       Emissao = ''TER'' ');
                         sqL.Add('INTO #TEMP');
                         sqL.Add('FROM   NotasTerceirosItens');
                         sqL.Add('WHERE (Codigo_Mercadoria = :pCodigo)');
                         sqL.Add('UNION ALL');
                         sqL.Add('SELECT DISTINCT');
                         sqL.Add('       Data,');
                         sqL.Add('       Nota,');
                         sqL.Add('       Valor_Inventario,');
                         sql.Add('       Valor_Unitario AS Valor_Entrada,');
                         sqL.Add('       Quantidade,');
                         sqL.Add('       Emissao = ''PRO'' ');
                         sqL.Add('FROM   NotasItens');
                         sqL.Add('WHERE (Codigo_Mercadoria = :pCodigo)');
                         sqL.Add('AND   (Saida_Entrada = 0)');
                         sqL.Add('AND   (Cancelada <> 1)');
                         sqL.Add('AND   (Nfe_Denegada <> 1)');
                         sqL.Add('SELECT IDENTITY(int, 1, 1) AS Linha, *');
                         sqL.Add('INTO   #TEMP2');
                         sqL.Add('FROM   #TEMP');
                         sqL.Add('ORDER BY Data_Entrada desc, Valor_Entrada desc');
                         sqL.Add('SELECT * FROM   #TEMP2');
                         sqL.Add('DROP TABLE #TEMP, #TEMP2');
                         paramByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
                         //tUltimas.SQL.SaveToFile('c:\temp\Ultimas.sql');
                         open;
                    end;

                    ProdutosICMS.SQL.Clear;
                    ProdutosICMS.SQL.Add('SELECT * FROM ProdutosICMS WHERE Produto = :pCodigo ORDER BY Descricao');
                    ProdutosICMS.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
                    ProdutosICMS.Open;
                 end;
              end;

              // Carrega a imagem do produtos se existir na pasta de imagens.
              cImagem.Picture := nil;
              if FileExists(ConfiguracaoPasta_Imagens.Value+ProdutosCodigo.asString+'.jpg') then begin
                 cImagem.Picture.LoadFromFile(ConfiguracaoPasta_Imagens.Value+ProdutosCodigo.asString+'.jpg');
              end;   
           end;

           // Calculo do estoque disponivel.
           cTotalEstoque.Value := Dados.ProdutosEstoque_Disponivel.Value + Dados.ProdutosEstoque_Terceiros.Value;
           cDisponivel.Value   := Dados.ProdutosEstoque_Disponivel.Value - Dados.ProdutosLancado_Pedidos.Value;
      end;
      screen.Cursor := crDefault;
end;

procedure TCadastro_Produtos.Button1Click(Sender: TObject);
begin
      if MessageDlg('Atenção!'+#13+#13+'Esta rotina irá tirar todos os produtos da Promoção.'+#13+#13+'Confirma realmente executar esta operação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         Screen.Cursor := crSQLWait;
         tPesquisa.SQL.Clear;
         tPesquisa.SQl.Add('UPDATE Produtos SET Promocao = 0');
         tPesquisa.Execute;
         tPesquisa.SQL.Clear;
         Screen.Cursor := crDefault;
      end;
end;

procedure TCadastro_Produtos.cDetalheClick(Sender: TObject);
begin
      with Dados do begin
           cDadosDetalhe.Enabled := ProdutosDetalhe_Especifico.Value <> 'O';
           cDadosDetalhe.ActivePageIndex := cDetalhe.ItemIndex;
      end;
end;

procedure TCadastro_Produtos.Button2Click(Sender: TObject);
begin
      Cadastro_ProdutosDetalhes := TCadastro_ProdutosDetalhes.Create(Self);
      Cadastro_ProdutosDetalhes.Caption := 'Cadastro do detalhe dos produtos.';
      Cadastro_ProdutosDetalhes.ShowModal;
end;

procedure TCadastro_Produtos.Button3Click(Sender: TObject);
begin
      Cadastro_ProdutosAtributos := TCadastro_ProdutosAtributos.Create(Self);
      Cadastro_ProdutosAtributos.Caption := 'Relação de Atributos.';
      Cadastro_ProdutosAtributos.ShowModal;
end;

procedure TCadastro_Produtos.cFiltroModalClick(Sender: TObject);
begin
     with Dados do begin
          Produtos.Filter   := '';
          Produtos.Filtered := false;
          if (cFiltroModal.ItemIndex > 0) and (cFiltroModal.ItemIndex < 4) then begin
             Produtos.Filter   := 'Modalidade = ' + InttoStr(cFiltroModal.ItemIndex);
             Produtos.Filtered := true;
          end;
          if (cFiltroModal.ItemIndex = 4) then begin
             Produtos.Filter   := 'Servico = true';
             Produtos.Filtered := true;
          end;
          cQtde.Caption := Poezero(6, Produtos.RecordCount);
     end;
end;

procedure TCadastro_Produtos.bCadastroMateriaClick(Sender: TObject);
begin
      Cadastro_ProdutosMateriaPrima := TCadastro_ProdutosMateriaPrima.Create(Self);
      Cadastro_ProdutosMateriaPrima.Caption := 'Relação de Materia Prima Utilizada.';
      Cadastro_ProdutosMateriaPrima.ShowModal;
end;

procedure TCadastro_Produtos.bFiliaisClick(Sender: TObject);
begin
      Cadastro_ProdutosFiliais := TCadastro_ProdutosFiliais.Create(Self);
      Cadastro_ProdutosFiliais.Caption := Caption;
      Cadastro_ProdutosFiliais.ShowModal;
end;

procedure TCadastro_Produtos.cEscalaRelevanteClick(Sender: TObject);
begin
      lCNPJFab.Enabled := cEscalaRelevante.Checked;
      cCNPJFab.Enabled := not cEscalaRelevante.Checked;
end;

procedure TCadastro_Produtos.cImagemClick(Sender: TObject);
begin
      if cImagem.Picture.Graphic <> nil then begin
         Janela_Imagem := TJanela_Imagem.Create(Self);
         Janela_Imagem.cImagem.Picture.Assign(cImagem.Picture);
         Janela_Imagem.ShowModal;
      end;   
end;

procedure TCadastro_Produtos.gPautaEditButtonClick(Sender: TObject);
begin
      Dados.ProdutosPautaProduto.Value := Strtoint(cCodigo.Text);
end;

procedure TCadastro_Produtos.bAdicionarClick(Sender: TObject);
begin
      with Dados do begin
           gPauta.Enabled := true;
           ProdutosPauta.Append;
                         ProdutosPautaProduto.Value := ProdutosCodigo.Value;
           gPauta.Setfocus;
      end;
end;

procedure TCadastro_Produtos.Button4Click(Sender: TObject);
begin
      with Dados do begin
           gPauta.Enabled := false;
           ProdutosPauta.Cancel;
      end;
end;

procedure TCadastro_Produtos.gPautaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
     if key in [vk_down, vk_up] then key := 0;
end;

procedure TCadastro_Produtos.GradeProdutosTitleClick(Column: TColumn);
begin
     with Dados, Produtos do begin 
          close;
          sql.clear;
          sql.add('select * from Produtos');
          sql.add('order by '+column.FieldName+' '+mordem);
          open;
          cQtde.Caption := Poezero(6, Produtos.RecordCount);
          mOrdem := iif(mOrdem = 'asc', 'desc', 'asc');
     end;
end;

procedure TCadastro_Produtos.bAjusteClick(Sender: TObject);
begin
      if MessageDlg('Isso irá remover os espaços excessivos da "Descrição do Produto"'+#13+#13+'Deseja Realmente ajustar a descrição deste produto?', mtConfirmation, [mbyes, mbNo], 0) = mrno then
         Abort;
      with Dados do begin
           Produtos.edit;
                    Produtos.FieldByName('Descricao').Value := EliminaEspaco(produtos.fieldbyname('Descricao').text);
           Produtos.Post;
      end;
end;

end.
