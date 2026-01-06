unit frmPedido_Itens;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess,
  Vcl.ComCtrls, Vcl.StdCtrls, DBCtrls, Mask, Vcl.ExtCtrls, Grids, DBGrids, RXCtrls, Menus, CalcExpress, FUNCOES, Clipbrd, Math, strUtils, RxCurrEdit,
  Vcl.Buttons, MemDS, RxToolEdit, system.UITypes, System.Maskutils;

type
  TDBGridDescendant = class(TDBGrid);
  TPedido_Itens = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bInclui_Todos: TButton;
    bInclui_Adicao: TButton;
    GradeItens: TDBGrid;
    gAdicao: TGroupBox;
    Grade: TDBGrid;
    bInclui_Item: TButton;
    bRemove_Item: TButton;
    bRemove_Adicao: TButton;
    bRemove_Todos: TButton;
    PopupMenu1: TPopupMenu;
    mnIncluiItem: TMenuItem;
    mnIncluiAdicao: TMenuItem;
    mnIncluiTodos: TMenuItem;
    N1: TMenuItem;
    mnRemoveItem: TMenuItem;
    mnRemoveAdicao: TMenuItem;
    mnRemoveTodos: TMenuItem;
    N2: TMenuItem;
    mnSair: TMenuItem;
    mMacro: TCalcExpress;
    tPesoAdicao: TMSQuery;
    tPesoAdicaoPeso: TFloatField;
    tItem: TMSQuery;
    tDespesas: TMSQuery;
    gItens: TGroupBox;
    tFOB_DI: TMSQuery;
    GroupBox1: TGroupBox;
    StaticText3: TStaticText;
    StaticText2: TStaticText;
    cUnitario: TCurrencyEdit;
    cLucro: TCurrencyEdit;
    cLucroValor: TCurrencyEdit;
    StaticText4: TStaticText;
    cPercentualQtde: TCurrencyEdit;
    GroupBox2: TGroupBox;
    StaticText1: TStaticText;
    lDI: TStaticText;
    cProcesso: TDBLookupComboBox;
    cDI: TDBEdit;
    cDataDI: TDBEdit;
    StaticText5: TStaticText;
    cDesconto: TCurrencyEdit;
    cDescontoValor: TCurrencyEdit;
    cVolumes: TCheckBox;
    tDumping: TMSQuery;
    tProcessoMestre: TMSQuery;
    Progresso: TProgressBar;
    bCopiarRef: TButton;
    cICMS: TCheckBox;
    tFOB: TMSQuery;
    cFormula: TMemo;
    StaticText23: TStaticText;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit1: TDBEdit;
    StaticText6: TStaticText;
    DBEdit2: TDBEdit;
    tRegistro: TMSQuery;
    cQtdePercentual: TCheckBox;
    bInclui_Codigo: TButton;
    bDividir: TButton;
    tSalvaDesp: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    bRatear: TButton;
    tCambio: TMSQuery;
    tSoma: TMSQuery;
    cFracionar: TCheckBox;
    StaticText8: TStaticText;
    cNavio: TDBLookupComboBox;
    StaticText7: TStaticText;
    cNatureza: TDBLookupComboBox;
    bPesqNav: TSpeedButton;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bInclui_TodosClick(Sender: TObject);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bInclui_ItemClick(Sender: TObject);
    procedure bRemove_ItemClick(Sender: TObject);
    procedure bInclui_AdicaoClick(Sender: TObject);
    procedure bRemove_AdicaoClick(Sender: TObject);
    procedure bRemove_TodosClick(Sender: TObject);
    procedure AdicionaUm;
    procedure LigaBotoes;
    Function  CalculaMacro(Campo:String):Real;
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure GradeEnter(Sender: TObject);
    procedure GradeItensEnter(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure DesLigaTabelas;
    procedure LigaTabelas;
    procedure cUnitarioChange(Sender: TObject);
    procedure FiltraAdicao;
    procedure bCopiarRefClick(Sender: TObject);
    procedure bInclui_CodigoClick(Sender: TObject);
    procedure bDividirClick(Sender: TObject);
    procedure TotalizaPedido;
    procedure bRatearClick(Sender: TObject);
    procedure bPesqNavClick(Sender: TObject);
  private
    procedure CalculaFCP(pAliquotaDIFAL: real);
    { Private declarations }
  public
    { Public declarations }
    mAliquotaDIFAL
   ,mQuantidade: Real;

    mErro: Integer;

    mPISAdicao,
    mCOFINSADicao,
    mTotalFOB,
    mBCIPIInformado,
    mBCICMSOperInformado,
    mBCICMSSubInformado: Currency;

    mDeclaracoes,
    mSeriais,
    mTextoLimpo: WideString;

    mValorInformado,
    mDespesaMestre,
    mDespesaSeletivo,
    mAFRMM,
    mCOFINSDIfer,
    mTUP,
    mFobValoracao: Real;
    mNCM: string;
  end;

var
  Pedido_Itens: TPedido_Itens;

implementation

Uses frmDados, frmPedido, frmDMFiscal, frmPedido_ItensQuantidade, frmPedido_TaxaLucro, frmPedido_ItensDividir, frmPedido_ItensOutrosRateioLucro, frmPesquisaGerais;

{$R *.dfm}

procedure TPedido_Itens.FormShow(Sender: TObject);
begin
      Screen.Cursor  := crSQLWait;
      cFormula.Align := alClient;
      cFormula.BringToFront;

      With Dados, dmFiscal do begin
           cProcesso.KeyValue := ProcessosDOCProcesso.Value;

           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido) ORDER BY Adicao, Item');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.Open;

           cProcessoExit(Self);

           // Totalizando as despesas de custo do processo no financeiro.
           tDespesas.SQL.Clear;
           if PedidosSaida_Entrada.Value = 0 then begin
              if ProcessosDOCEntreposto.AsBoolean = true then begin
                 // Pegando o FOB_ME do Processo MESTRE.
                 {
                 tProcessoMestre.SQL.Clear;
                 tProcessoMestre.SQL.Add('SELECT ISNULL(FOB_ME,0) AS FOB_ME, ISNULL(Seguro_ME,0) AS Seguro_ME, ISNULL(Frete_ME,0) AS Frete_ME, ISNULL(Ad_Valorem,0) AS Ad_Valorem, ISNULL(Taxa_FOB,0) AS Taxa_FOB');
                 tProcessoMestre.SQL.Add('FROM   ProcessosDocumentos WHERE(Processo = :pProcesso)');
                 tProcessoMestre.ParamByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
                 tProcessoMestre.Open;
                 }
                 with tProcessoMestre do begin
                      sql.clear;
                      sql.add('select FOB_ME = isnull(FOB_ME,0)');
                      sql.add('      ,Seguro_ME = isnull(Seguro_ME,0)');
                      sql.add('      ,Frete_ME = isnull(Frete_ME,0)');
                      sql.add('      ,Ad_Valorem = isnull(Ad_Valorem,0)');
                      sql.add('      ,Taxa_FOB = isnull(Taxa_FOB,0)');
                      sql.add('from ProcessosDocumentos pd');
                      sql.add('where pd.Processo = :pProcesso');
                      paramByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
                      open;
                 end;
                 // Somando as despesas do processo "MESTRE e do FILHO".
                 if ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                    tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.Custo_Entrada = 1)), 0)               AS Valor_DespesasMestre');
                 end else begin
                    tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.Custo_Entrada = 1)), 0)               AS Valor_DespesasMestre');
                 end;

                 tDespesas.ParamByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.Value;
              end else begin
                 if ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                    tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                    tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
                 end else begin
                    tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada<> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                    tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
                 end;
              end;
           end else begin
              if ProcessosDOCEntreposto.AsBoolean = true then begin
                 // Pegando o FOB_ME do Processo MESTRE.
                 {
                 tProcessoMestre.SQL.Clear;
                 tProcessoMestre.SQL.Add('SELECT ISNULL(FOB_ME,0) AS FOB_ME, ISNULL(Seguro_ME,0) AS Seguro_ME, ISNULL(Frete_ME,0) AS Frete_ME, ISNULL(Ad_Valorem,0) AS Ad_Valorem, ISNULL(Taxa_FOB,0) AS Taxa_FOB');
                 tProcessoMestre.SQL.Add('FROM   ProcessosDocumentos WHERE(Processo = :pProcesso)');
                 tProcessoMestre.ParamByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
                 tProcessoMestre.Open;
                 }
                 with tProcessoMestre do begin
                      sql.clear;
                      sql.add('select FOB_ME = isnull(FOB_ME,0)');
                      sql.add('      ,Seguro_ME = isnull(Seguro_ME,0)');
                      sql.add('      ,Frete_ME = isnull(Frete_ME,0)');
                      sql.add('      ,Ad_Valorem = isnull(Ad_Valorem,0)');
                      sql.add('      ,Taxa_FOB = isnull(Taxa_FOB,0)');
                      sql.add('from ProcessosDocumentos pd');
                      sql.add('where pd.Processo = :pProcesso');
                      paramByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
                      open;
                 end;
                 
                 // Somando as despesas do processo "MESTRE e do FILHO".
                 If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                    tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.CustoConta = 1)), 0) AS Valor_DespesasMestre');
                 end else begin
                    tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.CustoConta = 1)), 0) AS Valor_DespesasMestre');
                 end;

                 tDespesas.ParamByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.Value;
              end else begin
                 if ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                    tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                    tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
                 end else begin
                    tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                    tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                    tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
                 end;
              end;
           end;
           tDespesas.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
           //tDespesas.sql.SaveToFile('c:\temp\PedidosItens_Despesas.sql');
           tDespesas.Open;

           // Totalizando o fob dos itens que tem Dumping.
           tDumping.SQL.Clear;
           tDumping.SQL.Add('SELECT ISNULL(SUM(Valor_SemAdValorem * Quantidade),0) AS TotalFOB_Dumping FROM Adicoes WHERE DI = :pDI AND Dumping = 1');
           tDumping.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.AsString;
           tDumping.Open;

           // Totalizando todas as DI's do mesmo processo.
           tFOB_DI.SQL.Clear;
           tFOB_DI.SQL.Add('SELECT ISNULL(SUM(FOB), 0) AS Total_FOB FROM ProcessosDocumentos WHERE (Processo = :pProcesso)');
           tFOB_DI.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
           tFOB_DI.Open;
           mTotalFOB := tFOB_DI.FieldByName('Total_FOB').AsCurrency;

           // Pegando o valor do "AFRMM - Marinha Mercante" no financeiro.
           if (PedidosSaida_Entrada.asInteger = 0) and (Trim(PedidosProcesso.AsString) <> '') then begin
              if ProcessosDOCVia_Transporte.AsInteger = 1 then begin
                 with tSoma do begin
                      SQL.Clear;
                      SQL.Add('SELECT Valor_Operacao = SUM(Valor_Operacao)');
                      SQL.Add('FROM   PagarReceber');
                      SQL.Add('WHERE  Processo = :pProcesso');
                      SQL.Add('AND    Classificacao = (SELECT Classificacao_AFRMM FROM TiposProcesso WHERE Codigo = :pModal)');
                      if not ProcessosDOCEntreposto.AsBoolean then begin
                         ParamByName('pProcesso').AsString := PedidosProcesso.AsString;
                      end else begin
                         ParamByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.AsString;
                      end;
                      ParamByName('pModal').AsInteger := ProcessosDOCModalidade_Importacao.asInteger;
                      Open;
                      mAFRMM := FieldByName('Valor_Operacao').AsCurrency;
                 end;
              end;
           end;
           // Pegando o valor da "DIFERENÇA DO COFINS" no financeiro.
           if (PedidosSaida_Entrada.asInteger = 0) and (Trim(PedidosProcesso.AsString) <> '') then begin
              with tSoma do begin
                   SQL.Clear;
                   SQL.Add('select Valor_Operacao = sum(Valor_Operacao)');
                   SQL.Add('from PagarReceber');
                   SQL.Add('where Processo = :pProcesso');
                   SQL.Add('and Classificacao = (select Classificacao_COFINSDifer from TiposProcesso where Codigo = :pModal)');
                   if not ProcessosDOCEntreposto.AsBoolean then begin
                      ParamByName('pProcesso').AsString := PedidosProcesso.AsString;
                   end else begin
                      ParamByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.AsString;
                   end;
                   ParamByName('pModal').AsInteger := ProcessosDOCModalidade_Importacao.asInteger;
                   Open;
                   mCOFINSDifer := FieldByName('Valor_Operacao').AsCurrency;
              end;
           end;
           
           // Pegando o valor do "TUP - Taxa de utilização portuário" no financeiro.
           if (PedidosSaida_Entrada.asInteger = 0) and (Trim(PedidosProcesso.AsString) <> '') then begin
              if ProcessosDOCVia_Transporte.AsInteger = 1 then begin
                 with tSoma do begin
                      SQL.Clear;
                      SQL.Add('select Valor_Operacao = sum(Valor_Operacao)');
                      SQL.Add('from   PagarReceber');
                      SQL.Add('where  Processo = :pProcesso');
                      SQL.Add('and    Classificacao = (SELECT Classificacao_TUP from TiposProcesso where Codigo = :pModal)');
                      if not ProcessosDOCEntreposto.AsBoolean then begin
                         ParamByName('pProcesso').AsString := PedidosProcesso.AsString;
                      end else begin
                         ParamByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.AsString;
                      end;
                      ParamByName('pModal').AsInteger := ProcessosDOCModalidade_Importacao.asInteger;
                      Open;
                      mTUP := FieldByName('Valor_Operacao').AsCurrency;
                 end;
              end;
           end;

           Campos.SQL.Clear;
           Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
           Campos.Open;

           CSTTabelaB.SQL.Clear;
           CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY Classificacao');
           CSTTabelaB.Open;

           CSTIPI.SQL.Clear;
           CSTIPI.SQL.Add('SELECT * FROM CSTIPI ORDER BY Classificacao');
           CSTIPI.Open;

           CSTPIS.SQL.Clear;
           CSTPIS.SQL.Add('SELECT * FROM CSTPIS ORDER BY Codigo');
           CSTPIS.Open;

           CSTCOFINS.SQL.Clear;
           CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS ORDER BY Codigo');
           CSTCOFINS.Open;
           
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

           NotasItens.SQL.Clear;
           NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE(Nota = :pNumeroNota) AND (Data = :pDataNota)');
           NotasItens.ParamByName('pNumeroNota').AsInteger := PedidosNota_Referencia.AsInteger;
           NotasItens.ParamByName('pDataNota').AsDate      := PedidosData_Referencia.AsDateTime;
           NotasItens.Open;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) and SUBSTRING(Codigo, 1, 1) = :pCod ORDER BY Descricao_NF');
           Natureza.ParamByName('pCod').AsString := Copy(PedidosNatureza_Codigo.asstring, 1, 1);
           Natureza.Open;

           with Estados do begin
                sql.clear;
                sql.add('select * from Estados order by Codigo');
                Open;
           end;
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

           cNatureza.KeyValue := PedidosNatureza_Codigo.value;

           cLucro.Value       := NotasItensLucro.Value;
           cVolumes.Checked   := PedidosCalcula_Volumes.AsBoolean;
           gItens.Caption     := 'Itens do Pedido: ['+InttoStr(PedidosItens.RecordCount)+']';
           gAdicao.Caption    := 'Itens da Adição: ['+InttoStr(Adicoes.RecordCount)+']';
           bCopiarRef.Enabled := PedidosNota_Referencia.Value > 0;
      End;

      LigaBotoes;
      Application.ProcessMessages;
      Screen.Cursor := crDefault;
end;

procedure TPedido_Itens.bInclui_TodosClick(Sender: TObject);
Var
   mContaA
  ,mContaI: Integer;
   mSaiEntra  : String;
   mSemEstoque: Widestring;
begin
      if (Dados.ConfiguracaoObrigar_NavioPedido.AsBoolean) and (trim(cNavio.Text) = '') then begin
         MessageDlg('Navio não informado!'+#13+#13+'Informe o "Navio" para poder adicionar os itens.', mterror, [mbok], 0);
         cNavio.SetFocus;
         abort;
      end;
      cFormula.Clear;
      DesligaTabelas;
      with Dados, dmFiscal do begin
           mContaI := PedidosItens.RecordCount;
           mContaA := Adicoes.RecordCount;

           Progresso.Position := 0;
           Progresso.Max      := Adicoes.RecordCount;
           Progresso.Visible  := true;

           Adicoes.First;
           mQuantidade := 0;

           if PedidosSaida_Entrada.Value = 0 then mSaiEntra := 'Lancado_Entrada';
           if PedidosSaida_Entrada.Value = 1 then mSaiEntra := 'Lancado_Saida';

           mSemEstoque := '';

           while (not Adicoes.Eof) and (Funcoes.Cancelado = false) do begin
                 mQuantidade := Adicoes.FieldByName(mSaiEntra).AsFloat;

                 if cQtdePercentual.Checked then
                    mQuantidade := Adicoes.FieldByName('Quantidade').AsFloat;

                 if (cPercentualQtde.Value > 0) and (mQuantidade > 1) then begin
                    if cFracionar.Checked then begin
                       mQuantidade := Roundto(Percentual(mQuantidade, cPercentualQtde.Value), -3);
                    end else begin
                       mQuantidade := trunc(Percentual(mQuantidade, cPercentualQtde.Value));
                    end;
                 end;

                 if TipoNotaMovimenta_Estoque.AsBoolean then begin
                    if mQuantidade <= Adicoes.FieldByName(mSaiEntra).AsFloat then begin
                       if mQuantidade > 0 then
                          AdicionaUm
                    end else begin
                       mSemEstoque := mSemEstoque +#13+ 'O produto '+AdicoesCodigo_Mercadoria.AsString+ ' não tem estoque disponivel.'
                    end;
                 end else begin
                    if mQuantidade > 0 then
                       AdicionaUm;
                 end;

                 Inc(mContaI);
                 Dec(mContaA);
                 gItens.Caption  := 'Itens do Pedido: ['+InttoStr(mContaI)+']';
                 gAdicao.Caption := 'Itens da Adição: ['+InttoStr(mContaA)+']';

                 Adicoes.Next;
                 Progresso.Position := Progresso.Position + 1;
                 Application.ProcessMessages;
           end;
           
           if mErro = 1 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota não encontrada.'       , mtError, [mbOK], 0);
           if mErro = 2 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Operacional, Alíquota não encontrada.'        , mtError, [mbOK], 0);
           if mErro = 3 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota do MVA não encontrada.', mtError, [mbOK], 0);
           if mErro = 5 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do DIFERENCIAL DE ICMS (DIFAL), verifique as alíquotas de FCP e ICMS do estado de ('+PedidosDestinatario_Estado.Value+')'+#13+#13+
                                        'Para consumidor final para fora do estado estas configurações são obrigatórias.', mtError, [mbOK], 0);
           if mErro = 6 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de cálculo na fórmula do DIFERENCIAL DE ICMS (DIFAL), verifique o Percentual de participação (Estado Destino) nas configuraçãoes do sistema.'+#13+#13+
                                        'Para consumidor final para fora do estado estas configurações são obrigatórias.', mtError, [mbOK], 0);
           if mErro = 7 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de cálculo no rateio do Anti-Dumping, verifique os itens na adição.'+#13+#13+
                                        'O processo indica que existe valor Anti-Dumping, mas não há nenhum item selecionado com Anti-Dumping na adição da DI.', mtError, [mbOK], 0);
           if (mErro = 8) or (mNCM <> '') then begin
              ClipBoard.AsText := mNCM;
              MessageDlg('Atenção!'+#13+#13+'As seguintes NCM''s estão sem o "Código do Crédito Presumido".'+#13+#13+mNCM+#13+#13+'Isso irá causar rejeição na nota fiscal pela SEFAZ.'+#13+#13+'NCM''s copiadas para a area de transfência.', mtError, [mbOK], 0);
           end;

           if mSemEstoque <> '' then begin
              Showmessage(mSemEstoque);
           end;

           Progresso.Position := 0;

           Adicoes.Refresh;
           Adicoes.First;
           PedidosItens.Refresh;
           PedidosItens.First;
           gItens.Caption  := 'Itens do Pedido: ['+InttoStr(PedidosItens.RecordCount)+']';
           gAdicao.Caption := 'Itens da Adição: ['+InttoStr(Adicoes.RecordCount)+']';

           // Log de operações.
           LogDados(Dados.PedidosItens, '('+Dados.PedidosItensPedido.AsString+') de '+Dados.PedidosData_Emissao.AsString+' Adicionados todos os produtos.', dsInsert);
      end;

      LigaTabelas;
      LigaBotoes;

      cFormula.SelStart  := 0;
      cFormula.SelLength := 0;
end;

procedure TPedido_Itens.bPesqNavClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ControleNavios';
      PesquisaGerais.mCampo  := 'Ordem';
      PesquisaGerais.mCampo2 := 'Navio';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Status <> ''ENCERRADO'' ';
      PesquisaGerais.Showmodal;
      cNavio.keyValue := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
end;

procedure TPedido_Itens.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
Var
    curPos   : LongInt;
    gridCoord: TGridCoord;
    mTexto   : String;
    i        : Integer;
    mTam     : Integer;
begin
      With HintInfo do begin
           If HintControl is TDBGrid then
              With TDBGridDescendant(HintControl),gridCoord do begin
                   Application.HideHint;
                   gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                   Try
                      curPos := DataLink.ActiveRecord;
                      Try
                         DataLink.ActiveRecord := y-1;
                         If not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                            HintStr := '';
                            With Dados do begin
                                 Produtos.Locate('Codigo', AdicoesCodigo_Mercadoria.Value, [loCaseInsensitive]);

                                 mTexto := Dados.ProdutosDescricao.Value;
                                 mTexto := RemoveCaracter('<{'+Produtos.FieldByName('Codigo').AsString+'}>', '', mTexto);
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
                         End else
                            HintStr := '\';               
                      Finally
                         DataLink.ActiveRecord := CurPos
                      End;
                      CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                   Except
                      CanShow := False
                   End;
           End;
      End;
end;

procedure TPedido_Itens.FormCreate(Sender: TObject);
begin
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
     with Dados.Pedidos do begin
          if (fieldbyname('Saida_Entrada').asinteger = 0) and (FileExists('fundo_barra_Vermelha.bmp')) then begin
             Image1.Picture.LoadFromFile('fundo_barra_Vermelha.bmp');
          end;
          if (fieldbyname('Saida_Entrada').asinteger = 1) and (FileExists('fundo_barra.bmp')) then begin
             Image1.Picture.LoadFromFile('fundo_barra.bmp');
          end;
     end;
end;

procedure TPedido_Itens.bInclui_ItemClick(Sender: TObject);
var
   mSemEstoque: Widestring;
   mSaiEntra  : String;
begin
      if (Dados.ConfiguracaoObrigar_NavioPedido.AsBoolean) and (trim(cNavio.Text) = '') then begin
         MessageDlg('Navio não informado!'+#13+#13+'Informe o "Navio" para poder adicionar os itens.', mterror, [mbok], 0);
         cNavio.SetFocus;
         abort;
      end;
      with Dados do begin
           Pedido_ItensQuantidade         := TPedido_ItensQuantidade.Create(Self);
           Pedido_ItensQuantidade.Caption := Caption;

           if PedidosSaida_Entrada.Value = 0 then mSaiEntra := 'Lancado_Entrada';
           if PedidosSaida_Entrada.Value = 1 then mSaiEntra := 'Lancado_Saida';
           if cQtdePercentual.Checked        then mSaiEntra := 'Quantidade';

           mSemEstoque := '';
           mQuantidade := Adicoes.FieldByName(mSaiEntra).AsFloat;

           Pedido_ItensQuantidade.cQuantidade.Value := mQuantidade;
           Pedido_ItensQuantidade.mQtdeOrig         := mQuantidade;

           if cPercentualQtde.Value > 0 then begin
              Pedido_ItensQuantidade.cPercentualQtde.Enabled := false;
              cQtdePercentual.Checked                        := false;
              Pedido_ItensQuantidade.cPercentualQtde.Value   := cPercentualQtde.Value;
              if cFracionar.Checked then begin
                 Pedido_ItensQuantidade.cQuantidade.Value := Percentual(Pedido_ItensQuantidade.cQuantidade.Value, Pedido_ItensQuantidade.cPercentualQtde.Value);
              end else begin
                 Pedido_ItensQuantidade.cQuantidade.Value := trunc(Percentual(Pedido_ItensQuantidade.cQuantidade.Value, Pedido_ItensQuantidade.cPercentualQtde.Value));
              end;
           end;

           Pedido_ItensQuantidade.ShowModal;

           if mQuantidade <= 0 then begin
              Abort;
           end else begin
             AdicionaUm;
           end;
      end;

      If mErro = 1 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota não encontrada.'       , mtError, [mbOK], 0);
      If mErro = 2 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Operacional, Alíquota não encontrada.'        , mtError, [mbOK], 0);
      If mErro = 3 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota do MVA não encontrada.', mtError, [mbOK], 0);
      If mErro = 5 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do DIFERENCIAL DE ICMS (DIFAL), verifique as alíquotas de FCP e ICMS do estado de ('+Dados.PedidosDestinatario_Estado.Value+')'+#13+#13+
                                   'Para consumidor final para fora do estado estas configurações são obrigatórias.', mtError, [mbOK], 0);
      If mErro = 6 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de cálculo na fórmula do DIFERENCIAL DE ICMS (DIFAL), verifique o Percentual de participação (Estado Destino) nas configuraçãoes do sistema.'+#13+#13+
                                   'Para consumidor final para fora do estado estas configurações são obrigatórias.', mtError, [mbOK], 0);
      if mErro = 7 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de cálculo no rateio do Anti-Dumping, verifique os itens na adição.'+#13+#13+
                                   'O processo indica que existe valor Anti-Dumping, mas não há nenhum item selecionado com Anti-Dumping na adição da DI.', mtError, [mbOK], 0);
      if (mErro = 8) or (mNCM <> '') then begin 
         ClipBoard.AsText := mNCM;
         MessageDlg('Atenção!'+#13+#13+'As seguintes NCM''s estão sem o "Código do Crédito Presumido".'+#13+#13+mNCM+#13+#13+'Isso irá causar rejeição na nota fiscal pela SEFAZ.'+#13+#13+'NCM''s copiadas para a area de transfência.', mtError, [mbOK], 0);
      end;
      Dados.Adicoes.Refresh;
      LigaBotoes;

      // Log de operações.
      LogDados(Dados.PedidosItens, '('+Dados.PedidosItensPedido.AsString+') de '+Dados.PedidosData_Emissao.AsString+' Adicionado produto nº '+Dados.PedidosItensCodigo_Mercadoria.AsString, dsInsert);
end;

procedure TPedido_Itens.AdicionaUm;
Var
   mUF
  ,mBenef
  ,mCredPres
  ,mCST: String;
   mApuracao1
  ,mApuracao2: Currency;
   mTotalItem
  ,mValorFrete
  ,mValorSeguro
  ,mAliqDif: Real;
begin
      mErro          := 0;     // 1=ICMS Subst.,  2=ICMS Operacional,  4=PIS COFINS, 5=ICMS Interno, 6=DIFAL, 7=Rateio do DUMPING, 8=MVA, 4=ICMS Credito Presumido "Codigo".
      mAliquotaDIFAl := 0;
      With Dados, dmFiscal do begin
           Produtos.Locate('Codigo', AdicoesCodigo_Mercadoria.Value, [loCaseInsensitive]);
           NCM.Locate('NCM', AdicoesNCM.Value, [loCaseInsensitive]);
           Incoterms.Locate('Codigo', ProcessosDOCIncoterms.Value, [loCaseInsensitive]);

           If (PedidosNota_Referencia.AsInteger > 0) and (bCopiarRef.Tag = 0) then begin
              NotasItens.Locate('Codigo_Mercadoria; Adicao; Sequencia_SISCOMEX', VarArrayOf([AdicoesCodigo_Mercadoria.Value, AdicoesAdicao.Value, AdicoesSequencia_SISCOMEX.Value]), [loCaseInsensitive] );
           End;

           // Totalizando os contratos de câmbio para gerar o fator de rateio do valor unitário pelo câmbio.
           tCambio.SQL.Clear;
           tCambio.SQL.Add('SELECT Fator = ISNULL(SUM((Valor_ME * Taxa_Cambial)) / SUM(Valor_ME), 0)');
           tCambio.SQL.Add('FROM   ContratoCambioItens');
           tCambio.SQL.Add('WHERE  Processo = :pProcesso');
           tCambio.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
           tCambio.Open;

           // Pegando o numero do item.
           tItem.Close;
           tItem.SQL.Clear;
           tItem.SQL.Add('SELECT MAX(Item) AS Item FROM PedidosItens WHERE(Pedido = :pPedido)');
           tItem.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tItem.Open;
           
           with IncentivosFiscais do begin
                sql.Clear;
                sql.Add('select * from IncentivosFiscais where Nome = '+Quotedstr(PedidosIncentivo_Fiscal.asstring));
                open;
           end;
           
           PedidosItens.Insert;
                        PedidosItensPedido.Value    := PedidosNumero.Value;
                        PedidosItensItem.Value      := tItem.FieldByName('Item').AsInteger+1;
                        PedidosItensSequencia.Value := tItem.FieldByName('Item').AsInteger+1;
                        tItem.Close;

                        PedidosItensSequencia_SISCOMEX.Value    := AdicoesSequencia_SISCOMEX.Value;
                        PedidosItensMovimenta_Inventario.Value  := TipoNotaMovimenta_Inventario.Value;
                        PedidosItensMovimenta_Estoque.Value     := TipoNotaMovimenta_Estoque.Value;
                        PedidosItensMovimenta_EstoqueRep.Value  := TipoNotaMovimenta_EstoqueRep.Value;
                        PedidosItensApuracao_PISCOFINS.Value    := PedidosApuracao_PISCOFINS.Value;
                        PedidosItensProcesso.Value              := ProcessosDOCProcesso.Value;
                        PedidosItensDI.Value                    := ProcessosDOCNUmero_Declaracao.Value;
                        PedidosItensNavio.Value                 := ControleNaviosOrdem.Value;
                        PedidosItensCodigo_Mercadoria.Value     := AdicoesCodigo_Mercadoria.Value;
                        PedidosItensLucro.Value                 := cLucro.Value;
                        PedidosItensLucro_Valor.Value           := cLucroValor.Value;
                        PedidosItensDesconto.Value              := cDesconto.Value;
                        PedidosItensDesconto_Valor.Value        := cDescontoValor.Value;
                        PedidosItensNota_Terceiros.Value        := 0;
                        PedidosItensSaida_Entrada.Value         := PedidosSaida_Entrada.Value;
                        PedidosItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.Value;
                        PedidosItensRegistro_Adicao.Value       := AdicoesRegistro.Value;
                        PedidosItensTipo_Nota.Value             := PedidosTipo_Nota.Value;
                        PedidosItensCEST.Value                  := NCMCEST.Value;
                        PedidosItensPO.Value                    := AdicoesPedido.Value;
                        PedidosItensOrdem.Value                 := AdicoesOrdem.Value;
                        PedidosItensFator_Cambio.Value          := tCambio.FieldByName('Fator').asFloat;
                        PedidosItensPercentual_Beneficio.Value  := IncentivosFiscaisPercentual_Beneficio.AsFloat;

                        If Trim(ProdutosCodigo_Fabricante.Value) <> '' then
                           PedidosItensCodigo_Fabricante.Value := ProdutosCodigo_Fabricante.Value
                        else
                           PedidosItensCodigo_Fabricante.Value := AdicoesCodigo_Mercadoria.AsString;

                        // Remove caracteres de controle da descrição do produto.
                        If bCopiarRef.Tag = 0 then begin
                           mTextoLimpo := '';
                           mTextoLimpo := RemoveCaracter(#13,'', ProdutosDescricao.Value);
                           mTextoLimpo := RemoveCaracter(#12,'', mTextoLimpo);
                           mTextoLimpo := RemoveCaracter(#10,'', mTextoLimpo);
                           mTextoLimpo := RemoveCaracter('<{'+AdicoesCodigo_Mercadoria.AsString+'}>', '', mTextoLimpo);
                           mTextoLimpo := RemoveCaracterXML(mTextoLimpo);
                        End;

                        // Para casos em que o cliente utiliza pedido e ordem do item próprio na nota (PRADOTEX).
                        If (Trim(PedidosItensPO.AsString) <> '') and (Pos(WIDESTRING('PO <['), mTextoLimpo) = 0) then begin
                           mTextoLimpo := mTextoLimpo + 'PO <['+PedidosItensPO.AsString+']> ITEM [<'+PedidosItensOrdem.AsString+'>]';
                        end;

                        If Trim(mSeriais) <> '' then
                           PedidosItensDescricao_Mercadoria.Value := Trim(mTextoLimpo + '     ' + mSeriais)
                        else
                           PedidosItensDescricao_Mercadoria.Value := Trim(mTextoLimpo);

                        mSeriais := '';

                        // Pegando a aliquota do ICMS Operacional.
                        ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]);

                        PedidosItensAliquota_ICMSOper.Value      := 0;
                        PedidosItensAliquota_ICMSIntegral.Value  := 0;
                        PedidosItensFCP_Aliquota.Value           := 0;
                        PedidosItensAliquota_ICMSDest.Value      := 0;
                        PedidosItensAliquota_ICMSEntrada.value   := 0;
                        PedidosItensPercentual_ICMSMono.value    := iif(PedidosItensSaida_Entrada.value = 0, ProdutosPercentual_ICMSMono.AsFloat, ProdutosPercentual_ICMSMonoSai.AsFloat);
                        PedidosItensPercentual_ICMSMonoRet.value := ProdutosPercentual_ICMSMonoRet.AsFloat;
                        PedidosItensAliquota_IBS.Value           := ICMS.FieldbyName('Aliquota_IBS').AsFloat;

                        If TipoNotaSaida_Entrada.Value = 1 then begin
                           mUF := Trim(ClientesEstado.Value)+'_Reducao';
                           PedidosItensAliquota_ICMSReducao.Value := NCM.FieldbyName(mUF).AsFloat;
                           mUF := Trim(ClientesEstado.Value)+'_Reducao2';
                           PedidosItensAliquota_ICMSReducao2.Value := NCM.FieldbyName(mUF).AsFloat;
                           If NCMICMS_Operacional.Value = 0 then begin
                              // Pega a aliquota do ICMS da tabela de ICMS ou da Adiçao.
                              If TipoNotaOrigem_AliquotaICMS.Value = 0 then begin
                                 // Contribuinte.
                                 If ClientesIndicador_IE.Value = '1' then begin
                                    PedidosItensAliquota_ICMSOper.Value     := ICMSImp_Contribuinte.Value;
                                    PedidosItensAliquota_ICMSIntegral.Value := ICMSImp_ContribuinteCheia.Value;
                                 End;
                                 // Contribuinte com nf para consumo.
                                 If (ClientesIndicador_IE.Value = '1') and (TipoNotaFinalidade_Mercadoria.Value = 1) then begin
                                    PedidosItensAliquota_ICMSOper.Value     := ICMSImp_NContribuinte.Value;
                                    PedidosItensAliquota_ICMSIntegral.Value := ICMSImp_NContribuinteCheia.Value;
                                 End;
                                 // Não Contribuinte.
                                 If (ClientesIndicador_IE.Value = '2') or (ClientesIndicador_IE.Value = '9') then begin
                                    PedidosItensAliquota_ICMSOper.Value     := ICMSImp_NContribuinte.Value;
                                    PedidosItensAliquota_ICMSIntegral.Value := ICMSImp_NContribuinteCheia.Value;
                                 End;
                                 // Simples Nacional.
                                 If ClientesSimples_Nacional.AsBoolean then begin
                                    PedidosItensAliquota_ICMSOper.Value := ICMSSimples_Nacional.AsFloat;
                                 End;
                                 // Atacadistas.
                                 If ClientesAtacadista.AsBoolean then begin
                                    PedidosItensAliquota_ICMSOper.Value := ICMSImp_Atacadista.AsFloat;
                                 End;
                                 // Varejistas.
                                 If ClientesVarejista.AsBoolean then begin
                                    PedidosItensAliquota_ICMSOper.Value := ICMSImp_Varejista.AsFloat;
                                 End;
                                 // Não encontrando a estado na tabela de ICMS zera a aliquota do ICMS operacional.
                                 If ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]) = false then begin
                                    PedidosItensAliquota_ICMSOper.Value     := 0;
                                    PedidosItensAliquota_ICMSIntegral.Value := 0;
                                 End;
                              end else begin
                                 PedidosItensAliquota_ICMSOper.Value     := AdicoesAliquota_ICMS.Value;
                                 PedidosItensAliquota_ICMSIntegral.Value := AdicoesAliquota_ICMS.Value;
                              End;

                              // Alíquota do Diferencial de alíquota de ICMS.
                              If PedidosItensAliquota_ICMSOper.Value <> ICMSICMS_Interno.Value then begin                // Aliquota de icms dos estados diferente.
                                 If Clientes.FieldByName('Consumidor_Final').AsBoolean then begin                        // Cliente é consumidor final.
                                    If (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) then begin             // Cliente é de fora do estado.
                                       If ProdutosFCP.AsBoolean then begin                                               // Produto tem incidencia do FCP.
                                          PedidosItensFCP_Aliquota.Value := ICMSFCP.Value;
                                       End;
                                       PedidosItensAliquota_ICMSDest.Value := ICMSICMS_Interno.Value;

                                       If ICMSICMS_Interno.AsFloat <= 0 then
                                          mErro := 5;
                                       If ConfiguracaoDIFAL_ICMSPart.AsFloat <= 0 then
                                          mErro := 6;
                                    End;
                                 End;
                              End;
                           end else begin
                               PedidosItensAliquota_ICMSOper.Value := NCMICMS_Operacional.Value;
                           End;

                           // Verifica se existe alíquota de ICMS informado no cadastro do produto.
                           // Dentro do Estado.
                           If (PedidosDestinatario_Estado.Value = EmpresasEstado.Value) and (ProdutosICMS_DentroEstado.AsFloat > 0) then begin
                              PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_DentroEstado.ASFloat;
                           End;
                           // Fora do Estado.
                           If (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) and (ProdutosICMS_ForaEstado.AsFloat > 0) then begin
                              PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_ForaEstado.ASFloat;
                           End;

                           // Vereifica se o produto esta na tabela CAMEX.
                           If (ProdutosTabela_CAMEX.AsBoolean = true) and (ICMSICMS_CAMEX.AsFloat > 0) then begin
                              PedidosItensAliquota_ICMSOper.Value     := ICMSICMS_CAMEX.AsFloat;
                              PedidosItensAliquota_ICMSIntegral.Value := ICMSICMS_CAMEX.AsFloat;
                           End;
                           
                           // Pegando as aliquota de ICMS na entrada.
                           if (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) then begin             // Cliente é de fora do estado.
                               PedidosItensAliquota_ICMSEntrada.value := ProdutosICMS_ForaEstadoEntrada.AsFloat;
                           end else begin                                                                       // Cliente é de dentro do estado.
                               PedidosItensAliquota_ICMSEntrada.value := ProdutosICMS_EstadoEntrada.AsFloat;
                           end;
                        end else begin
                           mUF := Trim(PedidosDestinatario_Estado.Value)+'_Reducao';
                           PedidosItensAliquota_ICMSReducao.Value := NCM.FieldbyName(mUF).AsFloat;
                           mUF := Trim(PedidosDestinatario_Estado.Value)+'_Reducao2';
                           PedidosItensAliquota_ICMSReducao2.Value := NCM.FieldbyName(mUF).AsFloat;
                           
                           PedidosItensAliquota_ICMSOper.Value     := ProcessosDOCAliquota_ICMS.AsFloat - ProcessosDOCReducao_ICMS.AsFloat;
                           PedidosItensAliquota_ICMSIntegral.Value := ProcessosDOCAliquota_ICMS.AsFloat;
                        end;

                        if TipoNotaVisiveis_DIFAL.AsBoolean then begin
                           // DIFAL.
                           mAliquotaDIFAL := ICMSICMS_Interno.AsFloat;
                           if NCM.FieldbyName(mUF).AsFloat > 0 then begin
                              mAliquotaDIFAL := NCM.FieldbyName(mUF).AsFloat;
                           end;   
                           PedidosItensAliquota_ICMSDest.Value := mAliquotaDIFAL;
                        end;

                        If ProdutosTipo_Conversao.Value <> 'M' then
                           PedidosItensQuantidade.Value := (mQuantidade / ProdutosQuantidade_Unidade.asfloat)
                        else
                           PedidosItensQuantidade.Value := (mQuantidade * ProdutosQuantidade_Unidade.asfloat);

                        PedidosItensNCM.Value            := AdicoesNCM.Value;
                        PedidosItensUnidade_Medida.Value := ProdutosUnidade.Value;

                        // Pegando a aliquota do IPI.
                        PedidosItensAliquota_IPI.Value := 0;
                        If (not NCMIPI_Isento.Value) and (not NCMIPI_Suspensao.Value) and (not TipoNotaNao_Tributada_IPI.Value) and (not TipoNotaImune_IPI.Value) and (not TipoNotaSuspensao_IPI.Value) and (not TipoNotaIsencao_IPI.Value) then begin
                           // Pega a alíquota do IPI com prioridade para a alíquota na seguinte ordem: 1º Acordo Tarifário, 2º Redução, 3º Alíquota Normal.
                           PedidosItensAliquota_IPI.Value := ProdutosAliquota_IPI.Value;
                           If ProdutosReducao_IPI.AsFloat         > 0 then PedidosItensAliquota_IPI.Value := ProdutosReducao_IPI.Value;
                           If ProdutosAcordo_TarifarioIPI.AsFloat > 0 then PedidosItensAliquota_IPI.Value := ProdutosAcordo_TarifarioIPI.Value;
                        End;
                        PedidosItensAliquota_CBS.Value := ProdutosAliquota_CBS.Value;

                        // Pega a alíquota do II com prioridade para a alíquota na seguinte ordem: 1º Acordo Tarifário, 2º Redução, 3º Alíquota Normal.
                        PedidosItensAliquota_II.Value := ProdutosAliquota_II.Value;
                        If ProdutosReducao_II.AsFloat         > 0 then PedidosItensAliquota_II.Value := ProdutosReducao_II.Value;
                        If ProdutosAcordo_TarifarioII.AsFloat > 0 then PedidosItensAliquota_II.Value := ProdutosAcordo_TarifarioII.Value;

                        PedidosItensAliquota_PIS.Value       := 0;
                        PedidosItensAliquota_PISRed.Value    := 0;
                        PedidosItensAliquota_COFINS.Value    := 0;
                        PedidosItensAliquota_COFINSRed.Value := 0;

                        // Código de Situação Tributaria do PIS/COFINS.
                        mCST := '';
                        //mUF  := '';
                        if PedidosSaida_Entrada.AsInteger = 1 then begin
                           //mUF := Trim(ClientesEstado.Value)+'_ICMS';
                           If (ProdutosPIS_NotaSaida.AsFloat > 0) and (ProdutosPIS_NotaSaida.AsFloat = ConfiguracaoPIS_AliquotaBasicaSaida.AsFloat) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+B';                                     // 01.
                           If (ProdutosPIS_NotaSaida.AsFloat > 0) and (ProdutosPIS_NotaSaida.AsFloat <> ConfiguracaoPIS_AliquotaBasicaSaida.Value)   then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+D';                                     // 02.
                           If (TipoNotaCSTPIS_AliquotaUM.AsBoolean) or (ProdutosCSTPIS_AliquotaUM.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+UM';                                    // 03.
                           If (TipoNotaCSTPIS_Monofasica.AsBoolean) or (ProdutosCSTPIS_Monofasica.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+MONO+A0';                               // 04.
                           if (NCMPIS_ST.asboolean) and (ClientesVarejista.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ST';                                    // 05.
                           If (TipoNotaCSTPIS_AliquotaZero.AsBoolean) or (ProdutosCSTPIS_AliquotaZero.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';                                    // 06.
                           If (TipoNotaCSTPIS_Isenta.AsBoolean) or (ProdutosCSTPIS_Isenta.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';                                   // 07.
                           If (TipoNotaCSTPIS_SemIncidencia.AsBoolean) or (ProdutosCSTPIS_SemIncidencia.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC';                                  // 08.
                           If (TipoNotaCSTPIS_Suspensao.AsBoolean) or (ProdutosCSTPIS_Suspensao.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';                                   // 09.
                           If (TipoNotaCSTPIS_Outras.AsBoolean) or (ProdutosCSTPIS_Outras.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';                                     // Outras.
                        end else begin
                           if Trim(ProdutosCSTPIS_Entrada.AsString) <> '' then begin
                              if CSTPIS.Locate('Codigo', ProdutosCSTPIS_Entrada.Value, [loCaseInsensitive]) = true then begin
                                 mCST := CSTPISClassificacao.Value;
                              end;
                           end else begin
                              if Trim(TipoNotaCST_PIS.Value) <> '' then begin
                                 if CSTPIS.Locate('Codigo', TipoNotaCST_PIS.Value, [loCaseInsensitive]) = true then begin
                                    mCST := CSTPISClassificacao.Value;
                                 end;
                              end else begin
                                 If (ProdutosPIS_Nota.AsFloat > 0) then
                                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+RNTNTMIE'; // 56;
                              end;
                           end;

                           If (TipoNotaCSTPIS_Isenta.AsBoolean        = true) or (ProdutosCSTPIS_IsentaEnt.AsBoolean        = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';  // 71.
                           If (TipoNotaCSTPIS_Suspensao.AsBoolean     = true) or (ProdutosCSTPIS_SuspensaoEnt.AsBoolean     = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';  // 72.
                           If (TipoNotaCSTPIS_AliquotaZero.AsBoolean  = true) or (ProdutosCSTPIS_AliquotaZeroEnt.AsBoolean  = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';   // 73.
                           If (TipoNotaCSTPIS_SemIncidencia.AsBoolean = true) or (ProdutosCSTPIS_SemIncidenciaEnt.AsBoolean = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC'; // 74.
                           If (TipoNotaCSTPIS_Outras.AsBoolean        = true) or (ProdutosCSTPIS_OutrasEnt.AsBoolean        = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';    // Outras.
                        end;
                        
                        CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]);
                        if not CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]) then begin
                           mCST := '<>';
                           CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]);
                           CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]);
                        end;

                        PedidosItensCSTPIS.Value    := CSTPISCodigo.Value;
                        PedidosItensCSTCOFINS.Value := CSTPISCodigo.Value;

                        // Pegando as alíquotas de PIS/COFINS.
                        If (CSTPISTributavel.AsBoolean = true) or (CSTPISCodigo.Asstring = '49') then begin
                           If PedidosSaida_Entrada.AsInteger = 0 then begin
                              PedidosItensAliquota_PIS.Value    := ProdutosPIS_Nota.Value;
                              PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_Nota.Value;
                           end else begin
                              PedidosItensAliquota_PIS.Value    := ProdutosPIS_NotaSaida.Value;
                              PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_NotaSaida.Value;
                           End;
                           If ProdutosReducao_PIS.Value > 0 then begin
                              If PedidosSaida_Entrada.AsInteger = 1 then begin
                                 PedidosItensAliquota_PISRed.Value    := ProdutosPIS_NotaSaida.AsFloat - ((ProdutosPIS_NotaSaida.AsFloat * ProdutosReducao_PIS.AsFloat)/100);
                                 PedidosItensAliquota_COFINSRed.Value := ProdutosCOFINS_NotaSaida.AsFloat - ((ProdutosCOFINS_NotaSaida.AsFloat * ProdutosReducao_COFINS.AsFloat)/100);
                              end else begin
                                 PedidosItensAliquota_PISRed.Value    := ProdutosPIS_Nota.AsFloat - ((ProdutosPIS_Nota.AsFloat * ProdutosReducao_PIS.AsFloat   )/100);
                                 PedidosItensAliquota_COFINSRed.Value := ProdutosCOFINS_Nota.AsFloat - ((ProdutosCOFINS_Nota.AsFloat * ProdutosReducao_COFINS.AsFloat)/100);
                              End;
                           End;
                        End;
                        
                        if TipoNotaApuracao_PISCOFINS.AsBoolean then begin
                           if CSTPISTributavel.AsBoolean then begin
                              if (PedidosItensAliquota_PIS.AsFloat+ProdutosValor_PIS.ASFloat+PedidosItensAliquota_COFINS.ASFloat+ ProdutosValor_COFINS.ASFloat) = 0 then begin
                                 if (not CSTPISAliquota_Zero.AsBoolean) and (CSTPISCOdigo.Value <> '99') then begin
                                    mErro := 4;
                                 end;   
                              end;
                           end;
                        end;

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

                        If ConfiguracaoAdicao_PesoLiquido.Value = 0 then
                           PedidosItensPeso_Liquido.Value := AdicoesPeso_Liquido.AsFloat
                        else
                           PedidosItensPeso_Liquido.Value := ProdutosPeso_Liquido.AsFloat;

                        PedidosItensPeso_Bruto.Value := 0;
                        if ProcessosDOCPeso_Liquido.AsFloat > 0 then begin
                           If ConfiguracaoAdicao_PesoLiquido.Value = 0 then
                              PedidosItensPeso_Bruto.Value := (ProcessosDOCPeso_Bruto.AsFloat/ProcessosDOCPeso_Liquido.AsFloat) * (AdicoesPeso_Liquido.AsFloat)
                           else
                              PedidosItensPeso_Bruto.Value := (ProcessosDOCPeso_Bruto.AsFloat/ProcessosDOCPeso_Liquido.AsFloat) * (ProdutosPeso_Liquido.AsFloat);
                        end else begin
                           MessageDlg('Erro!'+#13+#13+'O peso líquido do processo é inválido.'+#13+#13+'Produto :'+ProdutosCodigo.AsString+'  '+ProdutosDescricao.AsString, mtError, [mbOK], 0);
                           PedidosItens.Cancel;
                           Abort;
                        end;

                        PedidosItensValor_Frete.Value   := 0;
                        PedidosItensValor_Seguro.Value  := 0;
                        PedidosItensValor_Despesa.Value := 0;
                        PedidosItensValor_BCPIS.Value   := 0;
                        PedidosItensValor_PIS.Value     := 0;
                        PedidosItensValor_COFINS.Value  := 0;
                        PedidosItensValor_PIS2.Value    := 0;
                        PedidosItensValor_COFINS2.Value := 0;

                        // Calculo do valor da PIS/COFINS da entrada. (Rateio) se o tipo de nota estiver marcado como rateio.
                        //-----------------------------------------------------------------( PIS )----------------------------------------------------------------//
                        if (ProcessosDOCValor_PIS.AsCurrency > 0) and (ProdutosAliquota_PIS.AsFloat > 0) then begin
                           if ConfiguracaoRateio_PIS.Value = 'V' then begin
                              PedidosItensValor_PIS.Value  := RoundTo( (ProcessosDOCValor_PIS.Value  / tFOB.fieldbyname('FOBPISCOFINS_ME').Value) * AdicoesValor_Unitario.Value, -4);
                              PedidosItensValor_PIS2.Value := RoundTo( (ProcessosDOCValor_PIS2.Value / tFOB.fieldbyname('FOBPISCOFINS_ME').Value) * AdicoesValor_Unitario.Value, -4);
                           end;
                           if ConfiguracaoRateio_PIS.Value = 'Q' then begin
                              PedidosItensValor_PIS.Value  := RoundTo((ProcessosDOCValor_PIS.Value  / ProcessosDOCQuantidade.Value), -4);
                              PedidosItensValor_PIS2.Value := RoundTo((ProcessosDOCValor_PIS2.Value / ProcessosDOCQuantidade.Value), -4);
                           end;
                           if ConfiguracaoRateio_PIS.Value = 'P' then begin
                              PedidosItensValor_PIS.Value  := RoundTo(((ProcessosDOCValor_PIS.Value  / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value), -4);
                              PedidosItensValor_PIS2.Value := RoundTo(((ProcessosDOCValor_PIS2.Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value), -4);
                           end;
                        end else begin
                           if mErro = 4 then begin
                              If (ProcessosDOCValor_PIS.AsCurrency > 0)  and (Dados.ProdutosAliquota_PIS.AsFloat <= 0) then
                                 MessageDlg('Atenção!'+#13+#13+'Falta informar a alíquota do PIS no cadastro do produto.'+#13+#13+'Valor do PIS não calculado.', mtError, [mbOK], 0);
                              If (ProcessosDOCValor_PIS.AsCurrency <= 0) and (Dados.ProdutosAliquota_PIS.AsFloat > 0)  then
                                 MessageDlg('Atenção!'+#13+#13+'Falta informar o valor do PIS no cadastro do processo.'+#13+#13+'Valor do PIS não calculado.'  , mtError, [mbOK], 0);
                           end;
                        end;

                        //---------------------------------------------------------------------( COFINS )--------------------------------------------------------------------//
                        If (ProcessosDOCValor_COFINS.AsCurrency > 0) and (Dados.ProdutosAliquota_COFINS.AsFloat > 0) then begin
                           If ConfiguracaoRateio_COFINS.Value = 'V' then begin
                              PedidosItensValor_COFINS.Value  := Roundto((ProcessosDOCValor_COFINS.Value  / tFOB.fieldbyname('FOBPISCOFINS_ME').Value) * AdicoesValor_Unitario.Value, -4);
                              PedidosItensValor_COFINS2.Value := Roundto((ProcessosDOCValor_COFINS2.Value / tFOB.fieldbyname('FOBPISCOFINS_ME').Value) * AdicoesValor_Unitario.Value, -4);
                           End;
                           If ConfiguracaoRateio_COFINS.Value = 'Q' then begin
                              PedidosItensValor_COFINS.Value  := RoundTo((ProcessosDOCValor_COFINS.Value  / ProcessosDOCQuantidade.Value), -4);
                              PedidosItensValor_COFINS2.Value := RoundTo((ProcessosDOCValor_COFINS2.Value / ProcessosDOCQuantidade.Value), -4);
                           End;
                           If ConfiguracaoRateio_COFINS.Value = 'P' then begin
                              PedidosItensValor_COFINS.Value  := RoundTo((ProcessosDOCValor_COFINS.Value  / ProcessosDOCQuantidade.Value), -4);
                              PedidosItensValor_COFINS2.Value := RoundTo((ProcessosDOCValor_COFINS2.Value / ProcessosDOCQuantidade.Value), -4);
                           End;
                        end else begin
                           if mErro = 4 then begin
                              If (ProcessosDOCValor_COFINS.AsCurrency > 0) and (Dados.ProdutosAliquota_COFINS.AsFloat <= 0) then
                                 MessageDlg('Atenção!'+#13+#13+'Falta informar a alíquota da COFINS no cadastro do produto.'+#13+#13+'Valor da COFINS não calculado.', mtError, [mbOK], 0);
                              If (ProcessosDOCValor_COFINS.AsCurrency <= 0) and (Dados.ProdutosAliquota_COFINS.AsFloat > 0) then
                                 MessageDlg('Atenção!'+#13+#13+'Falta informar o valor da COFINS no cadastro do processo.'+#13+#13+'Valor da COFINS não calculado.'  , mtError, [mbOK], 0);
                           end;
                        End;

                        // Calculo do rateio do Frete (Internacional).
                        if IncotermsFrete.AsBoolean then begin
                           if ConfiguracaoRateio_Frete.Value = 'V' then
                              PedidosItensValor_Frete.Value := ((ProcessosDOCFrete.Value / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value);
                           if ConfiguracaoRateio_Frete.Value = 'Q' then
                              PedidosItensValor_Frete.Value := RoundTo((ProcessosDOCFrete.Value / ProcessosDOCQuantidade.Value),-6);
                           if ConfiguracaoRateio_Frete.Value = 'P' then
                              PedidosItensValor_Frete.Value := Roundto((ProcessosDOCFrete.Value / ProcessosDOCPeso_Liquido.Value),-6) * PedidosItensPeso_Liquido.Value;
                        end;

                        // Calculo do rateio do Frete (Em Território nacional).
                        PedidosItensRateio_FreteTerrNac.Value := 0;
                        if ProcessosDOCRemover_FreteNacBC.AsBoolean then begin
                           if ConfiguracaoRateio_Frete.Value = 'V' then
                              PedidosItensRateio_FreteTerrNac.Value := ((ProcessosDOCFrete_NacionalReal.Value / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value);
                           if ConfiguracaoRateio_Frete.Value = 'Q' then
                              PedidosItensRateio_FreteTerrNac.Value := RoundTo((ProcessosDOCFrete_NacionalReal.Value / ProcessosDOCQuantidade.Value),-6);
                           if ConfiguracaoRateio_Frete.Value = 'P' then
                              PedidosItensRateio_FreteTerrNac.Value := Roundto((ProcessosDOCFrete_NacionalReal.Value / ProcessosDOCPeso_Liquido.Value),-6) * PedidosItensPeso_Liquido.Value;
                        end;

                        // Calculo do rateio do Seguro.
                        if IncotermsSeguro.AsBoolean = True then begin
                           if ConfiguracaoRateio_Seguro.Value = 'V' then
                              PedidosItensValor_Seguro.Value := (ProcessosDOCSeguro.Value / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                           if ConfiguracaoRateio_Seguro.Value = 'Q' then
                              PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCQuantidade.Value),-6);
                           if ConfiguracaoRateio_Seguro.Value = 'P' then
                              PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCPeso_Liquido.Value), -6) * PedidosItensPeso_Liquido.Value;
                        end;

                        // Calculando o valor do II
                        SetRoundMode(rmNearest);
                        if Trim(TipoNotaCalculo_BCII.AsString) <> '' then begin
                           PedidosItensValor_BCII.Value := CalculaMacro('Calculo_BCII');
                        end;

                        // Arredonda o II para menos casas para o caso de diferença de centavos.
                        {
                        if not cII.Checked then begin
                           If mValorInformado <= 0 then
                              PedidosItensValor_II.Value := Roundto(Percentual(PedidosItensValor_BCII.Value, PedidosItensAliquota_II.Value), -7)
                           else
                              PedidosItensValor_II.Value := Roundto(Percentual(mValorInformado, PedidosItensAliquota_II.Value), -7);
                        end else begin   
                           If mValorInformado <= 0 then
                              PedidosItensValor_II.Value := Roundto(Percentual(PedidosItensValor_BCII.Value, PedidosItensAliquota_II.Value), -4)
                           else
                              PedidosItensValor_II.Value := Roundto(Percentual(mValorInformado, PedidosItensAliquota_II.Value), -4);
                        end;
                        }
                        If mValorInformado <= 0 then
                           PedidosItensValor_II.Value := Percentual(PedidosItensValor_BCII.Value, PedidosItensAliquota_II.Value)
                        else
                           PedidosItensValor_II.Value := Percentual(mValorInformado, PedidosItensAliquota_II.Value);
                           
                        // Mostra as formulas do II para Alt-H.
                        cFormula.Lines.Add('     CAMPO: Valor do II');
                        if mValorInformado <= 0 then begin
                           cFormula.Lines.Add('   FÓRMULA: Valor_BCII * Aliquota_II'  );
                           cFormula.Lines.Add('   VALORES: '+PedidosItensValor_BCII.AsString+' * '+PedidosItensAliquota_II.AsString+'%');
                        end else begin
                           cFormula.Lines.Add('   FÓRMULA: Valor_Informado' );
                           cFormula.Lines.Add('   VALORES: Percentual(('+FloattoStr(mValorInformado)+', '+PedidosItensAliquota_II.AsString+'%)');
                        end;
                        cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_II.Value));
                        cFormula.Lines.Add('');

                        // Calculo do rateio da taxa do siscomex. "Pelo Valor FOB ou Valor CIF".
                        PedidosItensRateio_SISCOMEX.Value := 0;
                        If Dados.ProcessosDOCTaxa_SISCOMEX.Value > 0 then begin
                           If Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                              PedidosItensRateio_SISCOMEX.Value := (ProcessosDOCTaxa_SISCOMEX.Value / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                           end else begin
                              PedidosItensRateio_SISCOMEX.Value := (ProcessosDOCTaxa_SISCOMEX.Value / tFOB.FieldByName('CIF_Total').Value) * (AdicoesValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                           End;
                        End;

                        // Calculo do rateio da AFRMM. "Pelo Valor FOB ou Valor CIF".
                        PedidosItensValor_AFRMM.Value := 0;
                        if mAFRMM > 0 then begin
                           if not ProcessosDOCEntreposto.AsBoolean then begin
                              if Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                                 PedidosItensValor_AFRMM.Value := (mAFRMM / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                              end else begin
                                 PedidosItensValor_AFRMM.Value := (mAFRMM / tFOB.FieldByName('CIF_Total').Value) * (AdicoesValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                              end;
                           end else begin
                              if Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                                 PedidosItensValor_AFRMM.Value := (mAFRMM / tFOB.FieldByName('FOB_Mestre').Value) * AdicoesValor_SemAdValorem.Value;
                              end else begin
                                 PedidosItensValor_AFRMM.Value := (mAFRMM / tFOB.FieldByName('FOB_Mestre').Value) * (AdicoesValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                              end;
                           end;
                        end;
                        
                        // Calculo do rateio da diferença de COFINS.
                        PedidosItensValor_COFINSDiferenca.Value := 0;
                        if mCOFINSDIfer > 0 then begin
                           if not ProcessosDOCEntreposto.AsBoolean then begin
                              if Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                                 PedidosItensValor_COFINSDiferenca.Value := (mCOFINSDifer / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                              end else begin
                                 PedidosItensValor_COFINSDiferenca.Value := (mCOFINSDifer / tFOB.FieldByName('CIF_Total').Value) * (AdicoesValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                              end;
                           end else begin
                              if Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                                 PedidosItensValor_COFINSDiferenca.Value := (mCOFINSDifer / tFOB.FieldByName('FOB_Mestre').Value) * AdicoesValor_SemAdValorem.Value;
                              end else begin
                                 PedidosItensValor_COFINSDiferenca.Value := (mCOFINSDifer / tFOB.FieldByName('FOB_Mestre').Value) * (AdicoesValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                              end;
                           end;
                        end;

                        // Adicionando o valor do AFRMM na descrição do item "Exigência do estado de RONDÔNIA".
                        if (TipoNotaVisiveis_AFRMM.AsBoolean) and (PedidosItensValor_AFRMM.AsFloat > 0) then begin
                           if ProdutosTipo_Conversao.Value <> 'M' then
                              PedidosItensDescricao_Mercadoria.Value := PedidosItensDescricao_Mercadoria.Value + #13 +'VALOR AFRMM.............: ' + FormatFloat('R$ ,##0.00', PedidosItensValor_AFRMM.AsCurrency * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.asfloat))
                           else
                              PedidosItensDescricao_Mercadoria.Value := PedidosItensDescricao_Mercadoria.Value + #13 +'VALOR AFRMM.............: ' + FormatFloat('R$ ,##0.00', PedidosItensValor_AFRMM.AsCurrency * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.asfloat));
                        end;

                        // Calculo do rateio das Despesas "MESTRE".
                        mDespesaMestre := 0;
                        If (ProcessosDOCEntreposto.AsBoolean = true) then begin
                           If tDespesas.FieldByName('Valor_DespesasMestre').AsCurrency > 0 then begin
                              If (ConfiguracaoRateio_Despesas.Value = 'V') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then begin
                                 If tFOB.FieldByName('FOB_Mestre').Value > 0 then begin
                                    mDespesaMestre := (tDespesas.FieldByName('Valor_DespesasMestre').Value / tFOB.FieldByName('FOB_Mestre').Value) * AdicoesValor_SemAdValorem.Value;
                                 End;
                              End;
                              If (ConfiguracaoRateio_Despesas.Value = 'Q') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then
                                 mDespesaMestre := tDespesas.FieldByName('Valor_DespesasMestre').Value / ProcessosDOCQuantidade.Value;
                              If (ConfiguracaoRateio_Despesas.Value = 'P') or (ProcessosDOCRateia_FretePeso.AsBoolean) then
                                 mDespesaMestre := (tDespesas.FieldByName('Valor_DespesasMestre').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value;
                           End;
                        End;

                        // Calculo do rateio das Despesas "Seletivas".
                        mDespesaSeletivo := 0;
                        If ProdutosCusto_Seletivo.AsBoolean = true then begin
                           If tDespesas.FieldByName('Valor_Seletivo').AsCurrency > 0 then begin
                              If (ConfiguracaoRateio_Despesas.Value = 'V') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then
                                 mDespesaSeletivo := ((tDespesas.FieldByName('Valor_Seletivo').Value / tFOB.FieldByName('FOB_Seletivo').Value) * AdicoesValor_SemAdValorem.Value);
                              If (ConfiguracaoRateio_Despesas.Value = 'Q') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then
                                 mDespesaSeletivo := tDespesas.FieldByName('Valor_Seletivo').Value / ProcessosDOCQuantidade.Value;
                              If (ConfiguracaoRateio_Despesas.Value = 'P') or (ProcessosDOCRateia_FretePeso.AsBoolean) then
                                 mDespesaSeletivo := (tDespesas.FieldByName('Valor_Seletivo').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value;
                           End;
                        End;

                        // Calculo do rateio das Despesas (Entrada/Saida) "FILHO". (Pelo Valor FOB ou Valor CIF).
                        If tDespesas.FieldByName('Valor_Despesas').AsCurrency > 0 then begin
                           If (ConfiguracaoRateio_Despesas.Value = 'V') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then begin
                              If Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                                 PedidosItensValor_Despesa.Value := (tDespesas.FieldByName('Valor_Despesas').AsCurrency / tFOB.FieldByName('FOB_Total').AsCurrency) * AdicoesValor_SemAdValorem.AsCurrency;
                              end else begin
                                 PedidosItensValor_Despesa.Value := (tDespesas.FieldByName('Valor_Despesas').Value / tFOB.FieldByName('CIF_Total').Value) * (AdicoesValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                              End;
                           End;
                           If (ConfiguracaoRateio_Despesas.Value = 'Q') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then begin
                              PedidosItensValor_Despesa.Value := (tDespesas.FieldByName('Valor_Despesas').Value / ProcessosDOCQuantidade.Value);
                           end;
                           If (ConfiguracaoRateio_Despesas.Value = 'P') or (ProcessosDOCRateia_FretePeso.AsBoolean) then begin
                              PedidosItensValor_Despesa.Value := ((tDespesas.FieldByName('Valor_Despesas').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value);
                           end;
                        End;

                        // Calculo do rateio das Despesas (Outros) "FILHO".
                        If tDespesas.FieldByName('Valor_DespesasOutros').AsCurrency > 0 then begin
                           If (ConfiguracaoRateio_Despesas.Value = 'V') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then begin
                              If Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                                 PedidosItensValor_DespesasOutros.Value := (tDespesas.FieldByName('Valor_DespesasOutros').Value / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                              end else begin
                                 PedidosItensValor_DespesasOutros.Value := (tDespesas.FieldByName('Valor_DespesasOutros').Value / tFOB.FieldByName('CIF_Total').Value) * (AdicoesValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                              End;
                           End;
                           If (ConfiguracaoRateio_Despesas.Value = 'Q') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then
                              PedidosItensValor_DespesasOutros.Value := (tDespesas.FieldByName('Valor_DespesasOutros').Value / ProcessosDOCQuantidade.Value);
                           If (ConfiguracaoRateio_Despesas.Value = 'P') or (ProcessosDOCRateia_FretePeso.AsBoolean) then
                              PedidosItensValor_DespesasOutros.Value := (tDespesas.FieldByName('Valor_DespesasOutros').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value;
                        End;

                        // PedidosItensValor_DespesasOutros.Value := PedidosItensValor_DespesasOutros.Value;
                        PedidosItensValor_Despesa.Value := PedidosItensValor_Despesa.Value + mDespesaMestre + mDespesaSeletivo;

                        // Para totais de despesa menores do que um centavo, joga para um centavo pois a NF-e só aceita duas casas decimais.
                        If (PedidosItensValor_Despesa.Value > 0) and ((PedidosItensValor_Despesa.Value * PedidosItensQuantidade.AsFloat) < 0.01) then begin
                           PedidosItensValor_Despesa.Value := 0.01;
                        End;

                        // Calculo do rateio do ICMS do Processo.
                        If ProcessosDOCValor_ICMS.AsCurrency > 0 then begin
                           PedidosItensRateio_ICMSProcesso.Value := (ProcessosDOCValor_ICMS.Value / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                        End;

                        // Calculo do rateio do DUMPING do Processo.
                        If (ProcessosDOCValor_Dumping.AsCurrency > 0) and (ProdutosDumping.AsBoolean = true) then begin
                           If tDumping.FieldByName('TotalFOB_Dumping').AsCurrency > 0 then begin
                              PedidosItensValor_Dumping.Value := (ProcessosDOCValor_Dumping.AsCurrency / tDumping.FieldByName('TotalFOB_Dumping').AsCurrency) * AdicoesValor_SemAdValorem.AsFloat;
                           end else begin
                              mErro := 7;
                           end;
                        End;

                        // Caculando o valor do produto sem impostos.
                        // Se houver valor informado pelo usuario utiliza-o ao inves do valor unitario calculado.
                        PedidosItensValor_Unitario.Value := mValorInformado;
                        if mValorInformado <= 0 then begin
                           if Trim(TipoNotaCalculo_Mercadoria.AsString) <> '' then begin
                              if TipoNotaArredondar_Unitario.AsBoolean then
                                 PedidosItensValor_Unitario.Value := Roundto(CalculaMacro('Calculo_Mercadoria'), -5)
                              else
                                 PedidosItensValor_Unitario.Value := CalculaMacro('Calculo_Mercadoria');
                           end;
                        end;

                        PedidosItensAliquota_IRPJ.Value := PedidosAliquota_IRPJ.Value;
                        PedidosItensAliquota_CSLL.Value := PedidosAliquota_CSLL.Value;

                        // Calculo do valor do IRPJ.
                        If PedidosItensAliquota_IRPJ.AsFloat > 0 then PedidosItensValor_IRPJ.Value := Percentual((PedidosItensValor_Unitario.Value * PedidosItensQuantidade.AsFloat), PedidosItensAliquota_IRPJ.AsFloat);

                        // Calculo do valor do CSLL.
                        If PedidosItensAliquota_CSLL.AsFloat > 0 then PedidosItensValor_CSLL.Value := Percentual((PedidosItensValor_Unitario.Value * PedidosItensQuantidade.AsFloat), PedidosItensAliquota_CSLL.AsFloat);

                        // Calculo do valor de PIS / COFINS da Entrada se o tipo de nota estiver marcado para calcular..
                        If (PedidosSaida_Entrada.AsInteger = 0) and (TipoNotaRateio_PISCOFINSEntrada.AsInteger = 1) then begin
                           If Trim(TipoNotaCalculo_BCPIS.AsString)  <> '' then PedidosItensValor_BCPIS.Value  := CalculaMacro('Calculo_BCPIS');
                           If Trim(TipoNotaCalculo_PIS.AsString)    <> '' then PedidosItensValor_PIS.Value    := RoundTo(CalculaMacro('Calculo_PIS')   , -2);
                           If Trim(TipoNotaCalculo_COFINS.AsString) <> '' then PedidosItensValor_COFINS.Value := RoundTo(CalculaMacro('Calculo_COFINS'), -2);
                        End;
                        
                        // Applicando o desconto no valor unitario(Percentual).
                        If PedidosItensDesconto.Value > 0 then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then begin
                              PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - (Percentual(PedidosItensValor_Unitario.Value, PedidosItensDesconto.Value))) * ProdutosQuantidade_Unidade.Value;
                           end else begin
                              PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - (Percentual(PedidosItensValor_Unitario.Value, PedidosItensDesconto.Value))) / ProdutosQuantidade_Unidade.Value;
                           End;
                        End;

                        // Applicando o desconto no valor unitario(Valor).
                        If PedidosItensDesconto_Valor.Value > 0 then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then
                              PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value) * ProdutosQuantidade_Unidade.Value
                           else
                              PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value) / ProdutosQuantidade_Unidade.Value;
                        End;
                        If ProdutosTipo_Conversao.Value <> 'M' then
                           PedidosItensValor_Total.Value := PedidosItensValor_Unitario.ascurrency * PedidosItensQuantidade.AsFloat
                        else
                           PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.ascurrency * (PedidosItensQuantidade.asfloat / ProdutosQuantidade_Unidade.asfloat), -2);

                        // Calculo do IPI "Verifica se o IPI é por alíquota ou por valor unitario - "Só calula o IPI se houver formula nos casos de alíquota e se não for informado valor.".
                        PedidosItensValor_IPI.Value := 0;
                        PedidosItensTotal_IPI.Value := 0;

                        if (not NCMIPI_Isento.Value) and (not NCMIPI_Suspensao.Value) and (not TipoNotaNao_Tributada_IPI.Value) and (not TipoNotaImune_IPI.Value) and (not TipoNotaSuspensao_IPI.Value) and (not TipoNotaIsencao_IPI.Value) then begin
                           if mBCIPIInformado = 0 then begin
                              if ProdutosValor_IPI.Value = 0 then begin
                                 if Trim(TipoNotaCalculo_BCIPI.AsString) <> '' then begin
                                    PedidosItensValor_BCIPI.Value := CalculaMacro('Calculo_BCIPI');
                                    if ProdutosTipo_Conversao.Value <> 'M' then
                                       PedidosItensValor_IPI.Value := Percentual(PedidosItensValor_BCIPI.value, PedidosItensAliquota_IPI.value) / (PedidosItensQuantidade.asfloat / ProdutosQuantidade_Unidade.value)
                                    else
                                       PedidosItensValor_IPI.Value := Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value) / (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                 end;
                              end else begin
                                 if ProdutosTipo_Conversao.Value <> 'M' then
                                    PedidosItensValor_IPI.Value := ProdutosValor_IPI.Value
                                 else
                                    PedidosItensValor_IPI.Value := ProdutosValor_IPI.Value * ProdutosQuantidade_Unidade.Value;
                              end;

                              PedidosItensTotal_IPI.Value := Roundto(Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value), -2);
                           end else begin
                              PedidosItensValor_BCIPI.Value := mBCIPIInformado;
                              PedidosItensValor_IPI.Value   := Roundto(Percentual(PedidosItensValor_BCIPI.Value, ProdutosAliquota_IPI.Value), -2) / PedidosItensQuantidade.Value;

                              if ProdutosTipo_Conversao.Value <> 'M' then
                                 PedidosItensTotal_IPI.Value := Roundto((PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -2)
                              else
                                 PedidosItensTotal_IPI.Value := Roundto((PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value)), -2);
                           end;
                        end;

                        // Zera a base de cálculo do IPI para produtos com IPI zerados.
                        If PedidosItensValor_IPI.asfloat <= 0 then
                           PedidosItensValor_BCIPI.Value := 0;

                        // Calculando a base do ICMS Operacional.
                        If (not NCMICMS_Isento.AsBoolean) and (not NCMICMS_Suspensao.AsBoolean) and (not TipoNotaNao_Tributada_ICMS.AsBoolean) and (not TipoNotaSuspensao_ICMS.AsBoolean) then begin
                           If mBCICMSOperInformado = 0 then begin
                              If Trim(TipoNotaCalculo_BCICMS.AsString) <> '' then begin
                                 If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                                    PedidosItensValor_BCICMSOper.Value := Roundto(CalculaMacro('Calculo_BCICMS'), -2);
                                 end else begin
                                    mErro                               := 2;
                                    PedidosItensAliquota_ICMSOper.Value := 0;
                                 End;
                              End;
                           end else begin
                              PedidosItensValor_BCICMSOper.Value := mBCICMSOperInformado;
                           End;

                           // Calculando o valor do ICMS Operacional.
                           If Trim(TipoNotaCalculo_VlrICMS.AsString) <> '' then begin
                              If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                                 PedidosItensValor_ICMSOper.Value := Roundto(CalculaMacro('Calculo_VlrICMS'), -2)
                              end else begin
                                 PedidosItensValor_ICMSOper.Value := 0;
                              End;
                           End;
                        End;

                        PedidosItensCodigoTrib_TabB.Value := CSTTabelaBCodigo.Value;
                        if ProdutosOrigem.Value = 'I' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA.Value;
                        if ProdutosOrigem.Value = 'N' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA2.Value;
                        if ProdutosOrigem.Value = 'M' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA3.Value;

                        // Calculo do Diferencial de alíquota do ICMS.
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
                        PedidosItensFCP_ICMSOrig.Value     := 0;
                        PedidosItensFCP_ICMSDest.Value     := 0;
                        PedidosItensValor_BCFCP.Value      := 0;
                        PedidosItensValor_FCP.Value        := 0;
                        PedidosItensValor_BCFCPST.Value    := 0;
                        PedidosItensValor_FCPST.Value      := 0;
                        
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
                        if (TipoNotaSaida_Entrada.Value = 1) then begin
                           if (TipoNotaVisiveis_DIFAL.AsBoolean) then begin  // Nota Fiscal de saída.
                              // DIFAL.
                              mAliquotaDIFAL := ICMSICMS_Interno.AsFloat;
                              mUF            := Trim(ClientesEstado.Value)+'_ICMS';
                              NCM.Locate('NCM', PedidosItensNCM.AsString, [loCaseInsensitive]);;
                              if NCM.FieldbyName(mUF).AsFloat > 0 then begin
                                 mAliquotaDIFAL := NCM.FieldbyName(mUF).AsFloat;
                              end;

                              if not PedidosComplementar.AsBoolean then Begin
                                 if PedidosItensAliquota_ICMSOper.Value <> ICMSICMS_Interno.Value then begin
                                    if (Clientes.FieldByName('Consumidor_Final').AsBoolean) and (not Clientes.FieldByName('MEI').AsBoolean) then begin
                                       if (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) then begin
                                          if TipoNotaFinalidade_Mercadoria.Value = 0 then begin
                                             PedidosItensValor_BCICMSDest.Value := PedidosItensValor_BCICMSOper.Value;
                                             PedidosItensValor_ICMSDest.Value   := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, ICMSICMS_Interno.Value), -2);
                                             PedidosItensValor_BCDIFAL.Value    := CalculaMacro('Calculo_BCDIFAL');
                                             PedidosItensDIFAL_Valor.Value      := CalculaMacro('Calculo_DIFAL');
                                             PedidosItensDIFAL_PercOrig.Value   := 100 - ConfiguracaoDIFAL_ICMSPart.Value;
                                             PedidosItensDIFAL_ValorOrig.Value  := Roundto(Percentual(PedidosItensDIFAL_Valor.Value, (100-ConfiguracaoDIFAL_ICMSPart.Value)), -2);
                                             PedidosItensDIFAL_PercDest.Value   := ConfiguracaoDIFAL_ICMSPart.Value;
                                             PedidosItensDIFAL_ValorDest.Value  := Roundto(Percentual(PedidosItensDIFAL_Valor.Value, ConfiguracaoDIFAL_ICMSPart.Value), -2);
                                          end;
                                       end;
                                    end;
                                 end;
                              end;
                           end;

                           mUF                              := Trim(ClientesEstado.Value)+'_ReducaoST';
                           PedidosItensReducao_ICMSST.Value := NCM.FieldbyName(mUF).AsFloat;

                           if (ProdutosOrigem.Value = 'I') or (ProdutosOrigem.Value = 'M') then begin
                              mUF := Trim(ClientesEstado.Value)+'_MVA';
                           end else begin
                              mUF := Trim(ClientesEstado.Value)+'_MVANac';
                           end;
                           
                           if not NCMMVA_NaoReducao.AsBoolean then begin
                              if Dados.ClientesSimples_Nacional.AsBoolean = false then begin
                                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                              end else begin
                                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
                              end;
                           end else begin
                              PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                           end;
                           If Trim(TipoNotaCalculo_BCMVA.AsString) <> '' then begin
                              PedidosItensValor_BCMVA.Value := CalculaMacro('Calculo_BCMVA');
                              If TipoNotaCalculo_VlrMVA.Value <> '' then begin
                                 If PedidosItensAliquota_MVA.Value <> 0 then
                                    PedidosItensValor_MVA.Value := CalculaMacro('Calculo_VlrMVA')
                                 else begin
                                    PedidosItensValor_MVA.Value := 0;
                                    mErro                       := 3;
                                 End;
                              End;
                           end else begin
                              PedidosItensValor_BCMVA.Value := 0;
                              PedidosItensValor_MVA.Value   := 0;
                           End;

                           // Pegando a aliquota e calculando o ICMS Substitutivo.
                           PedidosItensValor_BCICMSSub.Value  := 0;
                           PedidosItensValor_ICMSSub.Value    := 0;
                           mUF                                := Trim(ClientesEstado.Value)+'_ICMS';
                           PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;

                           If PedidosItensAliquota_ICMSSub.Value > 0 then begin
                              If mBCICMSSubInformado = 0 then begin
                                 If Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '' then begin
                                    PedidosItensValor_BCICMSSub.Value := Roundto(CalculaMacro('Calculo_BCICMSSub'), -2);
                                    If TipoNotaCalculo_VlrICMSSub.Value <> '' then begin
                                       PedidosItensValor_ICMSSub.Value := Roundto(CalculaMacro('Calculo_VlrICMSSub'), -2);
                                    End;
                                 End;
                              end else begin
                                 PedidosItensValor_BCICMSSub.Value := mBCICMSSubInformado;
                              End;
                           end else begin
                              If (Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '') and (mBCICMSSubInformado = 0) then mErro := 1;
                           End;
                        end else begin
                           // Pegando a aliquota e calculando o MVA. (Se o cliente é do "Simples Naciona, verifica redução de alíquota.').
                           mUF := Trim(FornecedoresEstado.Value)+'_ReducaoST';
                           PedidosItensReducao_ICMSST.Value := NCM.FieldbyName(mUF).AsFloat;

                           if (ProdutosOrigem.Value = 'I') or (ProdutosOrigem.Value = 'M') then begin
                              mUF := Trim(FornecedoresEstado.Value)+'_MVA';
                           end else begin
                              mUF := Trim(FornecedoresEstado.Value)+'_MVANac';
                           end;
                           PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;

                           If Trim(TipoNotaCalculo_BCMVA.AsString) <> '' then begin
                              PedidosItensValor_BCMVA.Value := CalculaMacro('Calculo_BCMVA');
                              If Trim(TipoNotaCalculo_VlrMVA.AsString) <> '' then begin
                                 If PedidosItensAliquota_MVA.Value <> 0 then
                                    PedidosItensValor_MVA.Value := CalculaMacro('Calculo_VlrMVA')
                                 else
                                    PedidosItensValor_MVA.Value := 0;
                              End;
                           end else begin
                              PedidosItensValor_BCMVA.Value := 0;
                              PedidosItensValor_MVA.Value   := 0;
                           End;

                           // Pegando a aliquota e calculando o ICMS Substitutivo.
                           PedidosItensValor_BCICMSSub.Value  := 0;
                           PedidosItensValor_ICMSSub.Value    := 0;
                           mUF                                := Trim(FornecedoresEstado.Value)+'_ICMS';
                           PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;
                           If PedidosItensAliquota_ICMSSub.Value > 0 then begin
                              If mBCICMSSubInformado = 0 then begin
                                 If Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '' then begin
                                    PedidosItensValor_BCICMSSub.Value := Roundto(CalculaMacro('Calculo_BCICMSSub'), -2);
                                    If Trim(TipoNotaCalculo_VlrICMSSub.AsString) <> '' then begin
                                       PedidosItensValor_ICMSSub.Value := Roundto(CalculaMacro('Calculo_VlrICMSSub'), -2);
                                    End;
                                 End;
                              end else begin
                                 PedidosItensValor_BCICMSSub.Value := mBCICMSSubInformado;
                              End;
                           end else begin
                              If (Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '') and (mBCICMSSubInformado = 0) then mErro := 1;
                           End;
                        End;

                        if ProdutosFCP.AsBoolean then begin
                           // Cliente é de fora do estado.
                           if PedidosDestinatario_Estado.Value <> EmpresasEstado.Value then begin
                              // Cliente é consumidor final.
                              if (Clientes.FieldByName('Consumidor_Final').AsBoolean) and (not Clientes.FieldByName('MEI').AsBoolean) then begin
                                 if TipoNotaFinalidade_Mercadoria.Value = 0 then begin
                                    PedidosItensFCP_Aliquota.Value  := ICMSFCP.Value;
                                    PedidosItensFCP_ValorDest.Value := Roundto(Percentual(PedidosItensValor_BCDIFAL.Value, ICMSFCP.Value), -2);
                                    PedidosItensFCP_ICMSDest.Value  := Roundto(Percentual(PedidosItensValor_BCDIFAL.Value, mAliquotaDIFAL) - PedidosItensValor_ICMSOper.Value, -2);
                                    PedidosItensFCP_ICMSDest.Value  := Roundto(Percentual(PedidosItensFCP_ICMSDest.Value, ConfiguracaoDIFAL_ICMSPart.Value), -2);
                                    PedidosItensFCP_ICMSOrig.Value  := Roundto(Percentual(PedidosItensValor_BCDIFAL.Value, mAliquotaDIFAL) - PedidosItensValor_ICMSOper.Value, -2);
                                    PedidosItensFCP_ICMSOrig.Value  := Roundto(Percentual(PedidosItensFCP_ICMSOrig.Value, (100-ConfiguracaoDIFAL_ICMSPart.Value)), -2);

                                    // Calculo do FCP pela CST ICMS.
                                    case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['10','20','51','70','90']) of
                                         0..4: PedidosItensValor_BCFCP.Value := PedidosItensValor_BCDIFAL.Value;
                                    end;
                                    case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['00','10','20','51','70','90']) of
                                         0..5: begin
                                                    PedidosItensValor_BCFCP.Value := PedidosItensValor_BCDIFAL.Value;
                                                    PedidosItensValor_FCP.Value   := roundto(Percentual(PedidosItensValor_BCDIFAL.Value, ICMSFCP.Value), -2);
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

                                    cFormula.Lines.Add('     CAMPO: Valor da Base de Cálculo do FCP');
                                    cFormula.Lines.Add('   FÓRMULA: ((Valor BC ICMS Oper - Valor ICMS Oper) / .78)');
                                    cFormula.Lines.Add('   VALORES: (('+PedidosItensValor_BCICMSOper.AsString+' - '+PedidosItensValor_ICMSOper.AsString+') / .78)');
                                    cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_BCFCP.Value * ProdutosQuantidade_Unidade.Value));
                                    cFormula.Lines.Add('');
                                    cFormula.Lines.Add('     CAMPO: Valor do FCP');
                                    cFormula.Lines.Add('   FÓRMULA: Valor BC ICMS Oper * 2%');
                                    cFormula.Lines.Add('   VALORES: '+PedidosItensValor_BCFCP.AsString+' * '+PedidosItensFCP_Aliquota.AsString);
                                    cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_FCP.Value));
                                    cFormula.Lines.Add('');
                                 end;
                              end;
                           end;
                        end;

                        // Calculo do DIAL ST.
                        if TipoNotaFinalidade_Mercadoria.asinteger in[1, 6] then Begin
                           if trim(TipoNotaCalculo_BCDIFALST.asstring) <> '' then begin
                              PedidosItensValor_BCDIFALST.Value := Roundto(CalculaMacro('Calculo_BCDIFALST'), -2);
                              PedidosItensDIFAL_ValorST.Value   := Roundto(CalculaMacro('Calculo_DIFALST'), -2);
                           end;
                        end;

                        If (ProcessosDOCValor_COFINS.AsCurrency > 0) and (Dados.ProdutosAliquota_COFINS.AsFloat > 0) then begin
                           // Mostra os rateios do PIS para Alt-H.
                           cFormula.Lines.Add('     CAMPO: Valor do PIS rateado');
                           cFormula.Lines.Add('   FÓRMULA: RoundTo((ProcessosDOCValor_PIS.Value / tFOB.fieldbyname(''FOBPISCOFINS_ME'').Value) * AdicoesValor_Unitario.Value, -4)');
                           cFormula.Lines.Add('   VALORES: '+ProcessosDOCValor_PIS.AsString+' / ' + tFOB.fieldbyname('FOBPISCOFINS_ME').asstring + ' * ' + AdicoesValor_Unitario.asstring);
                           cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_PIS.Value));
                           cFormula.Lines.Add('');
                           // Mostra os rateios do PIS para Alt-H.
                           cFormula.Lines.Add('     CAMPO: Valor da COFINS rateado');
                           cFormula.Lines.Add('   FÓRMULA: RoundTo((ProcessosDOCValor_COFINS.Value / tFOB.fieldbyname(''FOBPISCOFINS_ME'').Value) * AdicoesValor_Unitario.Value, -4)');
                           cFormula.Lines.Add('   VALORES: '+ProcessosDOCValor_COFINS.AsString+' / ' + tFOB.fieldbyname('FOBPISCOFINS_ME').asstring + ' * ' + AdicoesValor_Unitario.asstring);
                           cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_COFINS.Value));
                           cFormula.Lines.Add('');
                        end;

                        // Recalcula o valor unitario do produto com base no segundo campo de formula.
                        // Calculo_MercadoriaImp = Valores extras calculados sobre o valor do produto.
                        if Trim(TipoNotaCalculo_MercadoriaImp.AsString) <> '' then begin
                           PedidosItensValor_Unitario.Value := CalculaMacro('Calculo_MercadoriaImp');
                        end;
                        if ProdutosTipo_Conversao.Value <> 'M' then begin
                           PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value * ProdutosQuantidade_Unidade.Value;
                        end else begin
                           PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value / ProdutosQuantidade_Unidade.Value;
                        end;
                        PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value, -2);

                        cFormula.Lines.Add('     CAMPO: Valor Unitario quando há conversão de unidade de medida');
                        cFormula.Lines.Add('   FÓRMULA: Valor_Unitario / Quantidade_Unidade');
                        cFormula.Lines.Add('   VALORES: '+PedidosItensValor_Unitario.AsString+' / '+ProdutosQuantidade_Unidade.AsString);
                        cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_Unitario.Value * ProdutosQuantidade_Unidade.Value));
                        cFormula.Lines.Add('');

                        // Cálculo do valor do PIS e da COFINS da saída.
                        if TipoNotaSaida_Entrada.Value = 1 then begin
                           PedidosItensValor_BCPIS.Value  := 0;
                           PedidosItensValor_PIS.Value    := 0;
                           PedidosItensValor_COFINS.Value := 0;

                           If (CSTPISTributavel.AsBoolean = true) or (CSTPISCodigo.AsString = '49') then begin
                              If Trim(TipoNotaCalculo_BCPIS.AsString)  <> '' then PedidosItensValor_BCPIS.Value  := CalculaMacro('Calculo_BCPIS');
                              If Trim(TipoNotaCalculo_PIS.AsString)    <> '' then PedidosItensValor_PIS.Value    := Roundto(CalculaMacro('Calculo_PIS'), -2);
                              If Trim(TipoNotaCalculo_COFINS.AsString) <> '' then PedidosItensValor_COFINS.Value := Roundto(CalculaMacro('Calculo_COFINS'), -2);
                           End;
                           
                           if ClientesVarejista.AsBoolean and ProdutosTributa_PISCOFINSST.AsBoolean then begin
                              If Trim(TipoNotaCalculo_BCPISST.AsString)  <> '' then begin
                                 PedidosItensValor_BCPISST.Value    := CalculaMacro('Calculo_BCPISST');
                                 PedidosItensValor_BCCOFINSST.Value := PedidosItensValor_BCPISST.Value;
                              end;
                              If Trim(TipoNotaCalculo_PISST.AsString)    <> '' then PedidosItensValor_PISST.Value    := RoundTo(CalculaMacro('Calculo_PISST'), -2);
                              If Trim(TipoNotaCalculo_COFINSST.AsString) <> '' then PedidosItensValor_COFINSST.Value := RoundTo(CalculaMacro('Calculo_COFINSST'), -2);
                           end;
                        end;
{
                        if trim(TipoNotaCalculo_BCIS.AsString)   <> '' then PedidosItensValor_BCIS.Value  := RoundTo(CalculaMacro('Calculo_BCIS'), -4);
                        if trim(TipoNotaCalculo_VlrIS.AsString)  <> '' then PedidosItensValor_IS.Value    := RoundTo(CalculaMacro('Calculo_VlrIS'), -2);
                        if trim(TipoNotaCalculo_BCCBS.AsString)  <> '' then PedidosItensValor_BCCBS.Value := RoundTo(CalculaMacro('Calculo_BCCBS'), -4);
                        if trim(TipoNotaCalculo_VlrCBS.AsString) <> '' then PedidosItensValor_CBS.Value   := RoundTo(CalculaMacro('Calculo_VlrCBS'), -2);
                        if trim(TipoNotaCalculo_BCIBS.AsString)  <> '' then PedidosItensValor_BCIBS.Value := RoundTo(CalculaMacro('Calculo_BCIBS'), -4);
                        if trim(TipoNotaCalculo_VlrIBS.AsString) <> '' then PedidosItensValor_IBS.Value   := RoundTo(CalculaMacro('Calculo_VlrIBS'), -2);
}
                        // Calculando o valor da redução do ICMS.
                        If Trim(TipoNotaCalculo_ReducaoICMS.AsString) <> '' then begin
                           PedidosItensValor_ICMSReducao.Value := CalculaMacro('Calculo_ReducaoICMS');
                        End;

                        // Verifica se o IPI é por "Alíquota ou por valor unitario".
                        If ProdutosValor_IPI.Value <> 0 then begin
                           PedidosItensValor_IPI.Value := 0;
                           PedidosItensTotal_IPI.Value := 0;
                        end;

                        if trim(TipoNotaCalculo_BCIS.AsString)   <> '' then PedidosItensValor_BCIS.Value  := RoundTo(CalculaMacro('Calculo_BCIS'), -4);
                        if trim(TipoNotaCalculo_VlrIS.AsString)  <> '' then PedidosItensValor_IS.Value    := RoundTo(CalculaMacro('Calculo_VlrIS'), -4);
                        if trim(TipoNotaCalculo_BCCBS.AsString)  <> '' then PedidosItensValor_BCCBS.Value := RoundTo(CalculaMacro('Calculo_BCCBS'), -4);
                        if trim(TipoNotaCalculo_VlrCBS.AsString) <> '' then PedidosItensValor_CBS.Value   := RoundTo(CalculaMacro('Calculo_VlrCBS'), -4);
                        if trim(TipoNotaCalculo_BCIBS.AsString)  <> '' then PedidosItensValor_BCIBS.Value := RoundTo(CalculaMacro('Calculo_BCIBS'), -4);
                        if trim(TipoNotaCalculo_VlrIBS.AsString) <> '' then PedidosItensValor_IBS.Value   := RoundTo(CalculaMacro('Calculo_VlrIBS'), -4);

                        // Código de situação tributaria do ICMS e apuração de "Isentas e Outras" de ICMS.
                        mCST := '';

                        If EmpresasRegime_Apuracao.AsInteger = 3 then begin
                           // Empresas optantes do Regime normal.
                           If PedidosItensValor_ICMSOper.Value <> 0 then
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
                           If (TipoNotaIsencao_ICMS.AsBoolean   = true)   or  (NCMICMS_Isento.AsBoolean = true)  then mCST := '+I';
                           If TipoNotaNao_Tributada_ICMS.Value  = true                                           then mCST := '+NT';
                           If (TipoNotaSuspensao_ICMS.AsBoolean = true) or  (NCMICMS_Suspensao.AsBoolean = true) then mCST := '+SUS';
                           If (ProcessosDOCICMS_Diferido.Value  = true) and (TipoNotaSaida_Entrada.Value = 0)    then mCST := '+D';
                           If (TipoNotaDiferido_ICMS.AsBoolean  = true) then mCST := '+D';
                           If (cICMS.Checked = True)                                                             then mCST := mCST + '+SD';

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
                           If TipoNotaDiferido_ICMS.AsBoolean                             then mCST := '900';

                           If PedidosSaida_Entrada.AsInteger = 0 then begin
                              If Trim(TipoNotaCSOSN_Entrada.AsString) <> '' then begin
                                 mCST := Trim(TipoNotaCSOSN_Entrada.AsString);
                              End;
                           end else begin
                              If Trim(TipoNotaCSOSN_Saida.AsString) <> '' then begin
                                 mCST := Trim(TipoNotaCSOSN_Saida.AsString);
                              End;
                           End;

                          if TipoNotaMonofasico_Comb.asboolean         then MCST := '02';
                          if TipoNotaMonofasico_CombRetencao.asboolean then MCST := '15';
                          if TipoNotaMonofasico_CombDiferido.asboolean then MCST := '53';
                          if TipoNotaMonofasico_CombAnterior.asboolean then MCST := '61';

                           If not CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]) then begin
                              mCST := 'S<>';
                              CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]);
                           End;
                        End;
                        
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
                        If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_ICMSOPer.Value;
                        If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_ICMSSub.Value;
                        If Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_Frete.Value;
                        If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_Seguro.Value;
                        If (Pos('Valor_PIS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[PIS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin

                           mApuracao2 := mApuracao2 + PedidosItensValor_PIS.Value;
                        End;
                        If (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin

                           mApuracao2 := mApuracao2 + PedidosItensValor_COFINS.Value;
                        End;

                        mApuracao2 := mApuracao2-PedidosItensValor_BCICMSOper.Value - mApuracao1;

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

                        PedidosItensCodigoTrib_TabB.Value := CSTTabelaBCodigo.Value;
                        if ProdutosOrigem.Value = 'I' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA.Value;
                        if ProdutosOrigem.Value = 'N' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA2.Value;
                        if ProdutosOrigem.Value = 'M' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA3.Value;

                        // Calculo do ICMS Desonerado.
                        PedidosItensValor_ICMSDesonerado.Value := 0;
                        if Trim(TipoNotaCalculo_VlrICMSDeson.AsString) <> '' then begin
                           case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['20','30','40','41','50','70','90']) of
                                0..6: PedidosItensValor_ICMSDesonerado.Value := Roundto(CalculaMacro('Calculo_VlrICMSDeson'), -2);
                           end;
                        end;
                        
                        // Código de situação tributaria do IPI e apuração de "Isentas e Outras" de IPI.
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
                        PedidosItensCSTIPI.Value           := CSTIPICodigo.Value;
                        PedidosItensValor_OutrasIPI.Value  := 0;
                        PedidosItensValor_IsentasIPI.Value := 0;
                        mApuracao1                         := 0;

                        // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe.
                        If Pos('Pedidos_[Valor_OutrasDespesas]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao1 := mApuracao1 + (PedidosItensValor_Despesa.Value * PedidosItensQuantidade.Value);
                        If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao1 := mApuracao1 + PedidosItensValor_ICMSOPer.Value;
                        If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao1 := mApuracao1 + PedidosItensValor_ICMSSub.Value;
                        If Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao1 := mApuracao1 + PedidosItensValor_Frete.Value;
                        If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao1 := mApuracao1 + PedidosItensValor_Frete.Value;
                        If (Pos('Valor_PIS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[PIS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                           mApuracao1 := mApuracao1 + PedidosItensValor_PIS.Value;
                        End;
                        If (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                           mApuracao1 := mApuracao1 + PedidosItensValor_COFINS.Value;
                        End;
                        If PedidosItensValor_IPI.Value = 0 then
                           mApuracao1 := mApuracao1 + PedidosItensValor_Total.Value;
                        If CSTIPI.FieldByName('Apuracao').Value = 'O' then
                           PedidosItensValor_OutrasIPI.Value := mApuracao1
                        else
                           PedidosItensValor_IsentasIPI.Value := mApuracao1;
                           
                        If PedidosItensValor_ICMSOper.Value <= 0 then PedidosItensAliquota_ICMSOper.Value := 0;

                        // Zera as alíquota de PIS/COFINS Caso não seja calculado seus valores.
                        If PedidosItensValor_PIS.Value <= 0 then begin
                           PedidosItensAliquota_PIS.Value    := 0;
                           PedidosItensAliquota_COFINS.Value := 0;
                           PedidosItensValor_PIS2.Value      := 0;
                           PedidosItensValor_COFINS.Value    := 0;
                           PedidosItensValor_COFINS2.Value   := 0;
                        End;
                        PedidosItensAdicao.Value              := AdicoesAdicao.Value;
                        PedidosItensEXTIPI.Value              := NCMCodigo_EXTIPI.Value;
                        PedidosItensModalidade_BCICMS.Value   := NCMModalidade_BCICMS.Value;
                        PedidosItensModalidade_BCICMSST.Value := NCMModalidade_BCICMSST.Value;

                        // Remove a valoração do valor unitario.
                        If (TipoNotaValoracao_Produto.AsBoolean = true) and (ProcessosDOCAd_Valorem.AsCurrency > 0) then begin
                           If (IncotermsFrete.Value = True) and (IncotermsSeguro.Value = True) then
                              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value -  ((ProcessosDOC.FieldByName('Ad_Valorem').Value / ProcessosDOCFOB_ME.Value) * AdicoesValor_Unitario.Value);
                           If (IncotermsFrete.Value = True) and (IncotermsSeguro.Value = False) then
                              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value -  ((ProcessosDOC.FieldByName('Ad_Valorem').Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value)) * AdicoesValor_Unitario.Value);
                           If (IncotermsFrete.Value = False) and (IncotermsSeguro.Value = False) then
                              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value -  ((ProcessosDOC.FieldByName('Ad_Valorem').Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value+ProcessosDOCFrete_ME.Value)) * AdicoesValor_Unitario.Value);
                           If (IncotermsFrete.Value = False) and (IncotermsSeguro.Value = True) then
                              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value -  ((ProcessosDOC.FieldByName('Ad_Valorem').Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCFrete_ME.Value)) * AdicoesValor_Unitario.Value);

                           If ProdutosTipo_Conversao.Value <> 'M' then
                              PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value), -4)
                           else
                              PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value), -4);
                        End;

                        // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe e somar por item.
                        mTotalItem := 0;
                        
                        If Pos('Pedidos_[Valor_TotalProdutos]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + Roundto(PedidosItensValor_Total.Value, -2);
                        If Pos('Pedidos_[Valor_OutrasDespesas]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then
                              mTotalItem := mTotalItem + ((RoundTo(PedidosItensValor_Despesa.Value, -4) * PedidosItensQuantidade.AsFloat) * ProdutosQuantidade_Unidade.AsFloat)
                           else
                              mTotalItem := mTotalItem + ((RoundTo(PedidosItensValor_Despesa.Value, -4) * PedidosItensQuantidade.AsFloat) / ProdutosQuantidade_Unidade.AsFloat);
                        End;
                        If Pos('Pedidos_[Valor_TotalIPI]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensTotal_IPI.Value;
                        If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_ICMSOPer.Value;
                        If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_ICMSSub.Value;
                        If Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_Frete.Value;
                        If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_Frete.Value;
                        If (Pos('Valor_PIS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[PIS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin

                           mTotalItem := mTotalItem + PedidosItensValor_PIS.Value;
                        end;
                        if (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin

                           mTotalItem := mTotalItem + PedidosItensValor_COFINS.Value;
                        end;
                        if Pos('Pedidos_[Valor_Dumping]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_Dumping.Value;
                        if Pos('Pedidos_[Valor_TotalII] ', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_II.Value;

                        PedidosItensTotal_Item.Value := mTotalItem;

                        // Verifica se o item tem as Alíquotas de PIS/COFINS quando o tipo de nota apura.
                        if mErro = 4 then begin
                           MessageDlg('Atenção!'+#13+#13+'Se o tipo de nota apura PIS/COFINS, as Alíquotas devem ser informadas.'+#13+#13+'Produtos não sera adicionado', mtError, [mbOK], 0);
                           PedidosItens.Cancel;
                           Abort;
                        end;

                        // Mostra os valores do rateio das despesas.
                        cFormula.Lines.Add('     CAMPO: Valor_Despesa');
                        cFormula.Lines.Add('   FÓRMULA: (Valor_Despesa / FOB_Total) * Valor_SemAdValorem');
                        cFormula.Lines.Add('    RATEIO: ('+tDespesas.FieldByName('Valor_Despesas').AsString+'/'+tFOB.FieldByName('FOB_Total').AsString+') * '+AdicoesValor_SemAdValorem.AsString+' = '+FormatFloat('###,###,###,##0.00000000000000', (tDespesas.FieldByName('Valor_Despesas').Value / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value));
                        cFormula.Lines.Add('   FÓRMULA: Valor_Despesa + mDespesaMestre + mDespesaSeletivo');
                        cFormula.Lines.Add('   VALORES: '+floattostr(PedidosItensValor_Despesa.asfloat-mDespesaMestre-mDespesaSeletivo)+'+'+CurrtoStr(mDespesaMestre)+'+'+CurrtoStr(mDespesaSeletivo));
                        cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', (PedidosItensValor_Despesa.asfloat-mDespesaMestre-mDespesaSeletivo) + mDespesaMestre + mDespesaSeletivo));
                        cFormula.Lines.Add('');

                        // Valor do inventario.
                        mValorFrete  := 0;
                        mValorSeguro := 0;
                        if Trim(TipoNotaCalculo_Inventario.AsString) <> '' then begin
                           // Guardo os valores calculados para recuperar no final para o calculo do inventario.
                           if PedidosItensValor_Frete.AsFloat > 0 then begin
                              mValorFrete                   := PedidosItensValor_Frete.Value;
                              PedidosItensValor_Frete.Value := 0;
                           end else begin
                              // Calculo o rateio do Frete novamente para retirar do valor do inventario quando necessario.
                              if ConfiguracaoRateio_Frete.Value = 'V' then
                                 PedidosItensValor_Frete.Value := ((ProcessosDOCFrete.Value / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value);
                              if ConfiguracaoRateio_Frete.Value = 'Q' then
                                 PedidosItensValor_Frete.Value := RoundTo((ProcessosDOCFrete.Value / ProcessosDOCQuantidade.Value),-6);
                              if ConfiguracaoRateio_Frete.Value = 'P' then
                                 PedidosItensValor_Frete.Value := Roundto((ProcessosDOCFrete.Value / ProcessosDOCPeso_Liquido.Value),-6) * PedidosItensPeso_Liquido.Value;
                           end;

                           // Guardo os valores calculados para recuperar no final para o calculo do inventario.
                           if PedidosItensValor_Seguro.AsFloat > 0 then begin
                              mValorSeguro                   := PedidosItensValor_Seguro.Value;
                              PedidosItensValor_Seguro.Value := 0;
                           end else begin
                              // Calculo o rateio do Seguro novamente para retirar do valor do inventario quando necessario.
                              if ConfiguracaoRateio_Seguro.Value = 'V' then
                                 PedidosItensValor_Seguro.Value := (ProcessosDOCSeguro.Value / tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                              if ConfiguracaoRateio_Seguro.Value = 'Q' then
                                 PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCQuantidade.Value),-6);
                              if ConfiguracaoRateio_Seguro.Value = 'P' then
                                 PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCPeso_Liquido.Value), -6) * PedidosItensPeso_Liquido.Value;
                           end;

                           PedidosItensValor_Inventario.Value := CalculaMacro('Calculo_Inventario');

                           // Zera ou carrega os valores salvos de frete seguro utilizados para calculo do inventario.
                           PedidosItensValor_Frete.Value  := mValorFrete;
                           PedidosItensValor_Seguro.Value := mValorSeguro;
                        end;

                        //PedidosItensNatureza_Codigo.Value := PedidosNatureza_Codigo.Value;
                        PedidosItensNatureza_Codigo.Value := cNatureza.KeyValue;
                        PedidosItensValor_CIF.Value       := (AdicoesValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value);

                        // Valores de PIS/COFINS são zerados ao final dos cálculos, caso haja necessidade de adicionar os valores desses impostos em outro campo.
                        if not CSTPISTributavel.AsBoolean then begin
                           if CSTPISCodigo.Value <> '49' then begin
                              PedidosItensValor_BCPIS.Value   := 0;
                              PedidosItensValor_PIS.Value     := 0;
                              PedidosItensValor_COFINS.Value  := 0;
                              PedidosItensValor_PIS2.Value    := 0;
                              PedidosItensValor_COFINS2.Value := 0;
                           end;
                        end;

                        // Calculo do ICMS diferido pelo beneficio fiscal.
                        PedidosItensValor_ICMSDif.Value    := 0;
                        PedidosItensAliquota_ICMSDif.Value := 0;
                        with IncentivosFiscais do begin
                             if recordcount > 0 then begin
                                mAliqDif := iif(PedidosSaida_Entrada.AsInteger = 0, fieldbyname('ICMS_DiferidoEnt').AsFloat, fieldbyname('ICMS_DiferidoSai').AsFloat);
                                if mAliqDif > 0 then begin
                                   PedidosItensAliquota_ICMSDif.Value := mAliqDif;
                                   PedidosItensValor_ICMSDif.Value    := PedidosItensValor_ICMSOper.AsCurrency - Percentual(PedidosItensValor_ICMSOper.AsCurrency, mAliqDif);
                                end;
                             end;
                        end;

                        // Calculo do ICMS monofasico.
                        PedidosItensValor_ICMSMono.Value      := 0;
                        PedidosItensValor_ICMSMonoRet.Value   := 0;
                        PedidosItensValor_BCICMSMono.Value    := 0;
                        PedidosItensValor_BCICMSMonoRet.Value := 0;
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
                        if PedidosItensValor_ICMSMonoRet.ascurrency = 0 then begin
                           PedidosItensPercentual_ICMSMonoRet.value := 0;
                           PedidosItensValor_BCICMSMonoRet.value    := 0;
                        end;

                        // Calculo do ICMS (Crédito presumido).
                        PedidosItensAliquota_ICMSPresumido.Value := 0;
                        PedidosItensValor_BCICMSPresumido.value  := 0;
                        PedidosItensValor_ICMSPresumido.value    := 0;

                        if Dados.PedidosSaida_Entrada.asinteger = 1 then begin
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
                                      // Verifica se as ncm tem o codigo informado.
                                      PedidosItensCodigo_CredPres.value  := NCMCodigo_CredPres.Value;
                                      if trim(NCMCodigo_CredPres.Value) = '' then begin
                                         if pos(FormatMaskText('####.##.####;0', NCMNCM.AsString), mNCM) = 0 then begin
                                            mErro := 8;
                                            mNCM  := concat(mNCM, FormatMaskText('####.##.####;0', NCMNCM.AsString),'-');
                                         end;
                                      end;
                                   end;
                              end;
                           end;
                        end;

                        // Zerando o PIS/COFINS.
                        if (TipoNotaRateio_PISCOFINSEntrada.AsInteger = 1) and (TipoNotaCalculo_PIS.asstring = '') then begin
                           PedidosItensValor_BCPIS.Value  := 0;
                           PedidosItensValor_COFINS.Value := 0;
                           PedidosItensValor_PIS.Value    := 0;
                           PedidosItensValor_COFINS.Value := 0;
                        end;
                        
                        mBenef                             := trim(iif(TipoNota.FieldByName('Saida_Entrada').Asinteger = 0, Produtos.FieldByName('Beneficio_FiscalEnt').AsString, Produtos.FieldByName('Beneficio_FiscalSai').AsString));
                        PedidosItensBeneficio_Fiscal.value := iif(mBenef <> '', mBenef, TipoNota.FieldByName('Beneficio_Fiscal').AsString);
                        if (PedidosItensCodigoTrib_TabA.asstring <> '1') and (PedidosItensCodigoTrib_TabA.asstring <> '6') then PedidosItensBeneficio_Fiscal.Clear;
           PedidosItens.Post;
           // Marca como registro lançado (Posição de estoque).
           Adicoes.Edit;
                   if TipoNotaMovimenta_Estoque.Value = True then  begin
                      if TipoNotaSaida_Entrada.Value = 0 then AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value - mQuantidade);
                      if TipoNotaSaida_Entrada.Value = 1 then AdicoesLancado_Saida.Value   := (AdicoesLancado_Saida.Value   - mQuantidade);
                   end;
           Adicoes.Post;

           // Alimenta a tabela de controle de navios.
           if ConfiguracaoUtiliza_ControleNavios.asboolean then begin
              if TipoNotaMovimenta_Estoque.AsBoolean then begin
                 with tItem do begin
                      sql.clear;
                      sql.add('select reg = isnull(max(Registro), 0)+1 from PedidosItensNavios');
                      open;
                 end;
                 with PedidosItensNavios do begin
                      open;
                      Append;
                           fieldbyname('Registro').Value          := tItem.fieldbyname('reg').asinteger;
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
      End;
end;

procedure TPedido_Itens.bRemove_ItemClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente remover o item do pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
         Screen.Cursor := crSQLWait;
         With Dados do Begin
              // Setando o registro da adição como não lançado.
              Adicoes.SQL.Clear;
              Adicoes.SQL.Add('SELECT * FROM Adicoes ORDER BY DI,Adicao,NCM,Codigo_Mercadoria');
              Adicoes.Open;
              Adicoes.Locate('DI; Codigo_Mercadoria; NCM; Sequencia_SISCOMEX', VarArrayOf([PedidosItensDI.Value, PedidosItensCodigo_Mercadoria.Value, PedidosItensNCM.Value, PedidosItensSequencia_SISCOMEX.Value]), [loCaseInsensitive] );
              Produtos.Locate( 'Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive] );

              Adicoes.Edit;
                      If TipoNotaMovimenta_Estoque.Value = True then begin
                         If TipoNotaSaida_Entrada.Value = 0 then begin
                            If ProdutosTipo_Conversao.Value <> 'M' then
                               AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                            else
                               AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                         End;
                         If (TipoNotaSaida_Entrada.Value = 1) then begin
                            If ProdutosTipo_Conversao.Value <> 'M' then
                               AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                            else
                               AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                         End;
                      End;
                      If AdicoesLancado_Entrada.Value < 0                       then AdicoesLancado_Entrada.Value := 0;
                      If AdicoesLancado_Entrada.Value > AdicoesQuantidade.Value then AdicoesLancado_Entrada.Value := AdicoesQuantidade.Value;
                      If AdicoesLancado_Saida.Value   < 0                       then AdicoesLancado_Saida.Value   := 0;
                      If AdicoesLancado_Saida.Value   > AdicoesQuantidade.Value then AdicoesLancado_Saida.Value   := AdicoesQuantidade.Value;
              Adicoes.Post;

              // Deleta os números seriais do produto.
              with ProdutosSeriais do begin
                   SQL.Clear;
                   SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL, Disponivel = 1 WHERE(Produto_Codigo = :pCodigo) AND (Pedido = :pPedido)');
                   ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                   ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                   Execute;
                   SQL.Clear;
                   SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Produto_Codigo = :pCodigo) AND (ISNULL(Disponivel, 0) = 1) ORDER BY Cor, Numero');
              end;

              // Remove o item da tabela de controle de navios.
              with tItem do begin
                   sql.clear;
                   sql.add('delete from PedidosItensNavios where Pedido = :pPed and Codigo_Mercadoria = :pCod');
                   parambyname('pPed').AsInteger := PedidosNumero.AsInteger;
                   parambyname('pCod').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                   execute;
              end;

              // Log de operações.
              LogDados(PedidosItens, '('+PedidosNumero.AsString+') de '+PedidosData_Emissao.AsString+' Removido o produto '+PedidosItensCodigo_Mercadoria.AsString, dsInactive);

              // Deletando o item do pedido de nota fiscal.
              PedidosItens.Delete;
              FiltraAdicao;
              LigaBotoes;
         End;
      End;
      Screen.Cursor := crDefault;
      LigaBotoes;
end;

procedure TPedido_Itens.bInclui_AdicaoClick(Sender: TObject);
var
   mAD        : String;
   mAdicao    : Integer;
   mAdicaoFim : Integer;
   mSaiEntra  : String;
   mSemEstoque: Widestring;
begin
      if (Dados.ConfiguracaoObrigar_NavioPedido.AsBoolean) and (trim(cNavio.Text) = '') then begin
         MessageDlg('Navio não informado!'+#13+#13+'Informe o "Navio" para poder adicionar os itens.', mterror, [mbok], 0);
         cNavio.SetFocus;
         abort;
      end;
      try
          mAD := InputBox('Incluir itens da Adição', 'Nº da Adição:', '');
          
          if Pos('-', mAD) <> 0 then begin
             mAdicao    := StrtoInt(Trim(Copy(mAD, 1, Pos('-',mAD)-1)));
             mAdicaoFim := StrtoInt(Trim(Copy(mAD, Pos('-',mAD)+1,20)));
          end else begin
             mAdicao    := StrtoInt(mAD);
             mAdicaoFim := mAdicao;
          end;

          with Dados do begin
               if PedidosSaida_Entrada.Value = 0 then mSaiEntra := 'Lancado_Entrada';
               if PedidosSaida_Entrada.Value = 1 then mSaiEntra := 'Lancado_Saida';

               mSemEstoque := '';

               Adicoes.SQL.Clear;
               Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI) AND (Adicao BETWEEN :pADIni AND :pADFim)');
               Adicoes.ParamByName('pDI').AsString  := ProcessosDOCNumero_Declaracao.Value;
               Adicoes.ParamByName('pADIni').AsInteger := mAdicao;
               Adicoes.ParamByName('pADFim').AsInteger := mAdicaoFim;
               Adicoes.Open;

               Progresso.Position := 0;
               Progresso.Max      := Adicoes.RecordCount;
               Progresso.Visible  := true;
               Adicoes.First;

               DesligaTabelas;

               while not Adicoes.Eof do begin
                     mQuantidade := Adicoes.FieldByName(mSaiEntra).AsFloat;

                     if cQtdePercentual.Checked then
                        mQuantidade := Adicoes.FieldByName('Quantidade').AsFloat;

                     if (cPercentualQtde.Value > 0) and (mQuantidade > 1) then begin
                        if cFracionar.Checked then begin
                           mQuantidade := Roundto(Percentual(mQuantidade, cPercentualQtde.Value), -3);
                        end else begin
                           mQuantidade := trunc(Percentual(mQuantidade, cPercentualQtde.Value));
                        end;
                     end;

                     if (TipoNotaMovimenta_Estoque.AsBoolean) then begin
                        if mQuantidade <= Adicoes.FieldByName(mSaiEntra).AsFloat then begin
                           if mQuantidade > 0 then
                              AdicionaUm
                        end else begin
                           mSemEstoque := mSemEstoque +#13+ 'O produto '+AdicoesCodigo_Mercadoria.AsString+ ' não tem estoque disponivel.';
                        end;
                     end else begin
                        if mQuantidade > 0 then
                           AdicionaUm;
                     end;

                     Progresso.Position := Progresso.Position + 1;
                     Application.ProcessMessages;
                     Adicoes.Next;
               End;
               LigaTabelas;

               Progresso.Position := 0;
               If mErro = 1 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota não encontrada.'       , mtError, [mbOK], 0);
               If mErro = 2 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Operacional, Alíquota não encontrada.'        , mtError, [mbOK], 0);
               If mErro = 3 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota do MVA não encontrada.', mtError, [mbOK], 0);
               If mErro = 5 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do DIFERENCIAL DE ICMS (DIFAL), verifique as alíquotas de FCP e ICMS do estado de ('+PedidosDestinatario_Estado.Value+')'+#13+#13+
                                            'Para consumidor final para fora do estado estas configurações são obrigatórias.', mtError, [mbOK], 0);
               If mErro = 6 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de cálculo na fórmula do DIFERENCIAL DE ICMS (DIFAL), verifique o Percentual de participação (Estado Destino) nas configuraçãoes do sistema.'+#13+#13+
                                            'Para consumidor final para fora do estado estas configurações são obrigatórias.', mtError, [mbOK], 0);
               if mErro = 7 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de cálculo no rateio do Anti-Dumping, verifique os itens na adição.'+#13+#13+
                                            'O processo indica que existe valor Anti-Dumping, mas não há nenhum item selecionado com Anti-Dumping na adição da DI.', mtError, [mbOK], 0);
               if (mErro = 8) or (mNCM <> '') then begin 
                  ClipBoard.AsText := mNCM;
                  MessageDlg('Atenção!'+#13+#13+'As seguintes NCM''s estão sem o "Código do Crédito Presumido".'+#13+#13+mNCM+#13+#13+'Isso irá causar rejeição na nota fiscal pela SEFAZ.'+#13+#13+'NCM''s copiadas para a area de transfência.', mtError, [mbOK], 0);
               end;
               if mSemEstoque <> '' then begin
                  Showmessage(mSemEstoque);
               end;

               Adicoes.SQL.Clear;
               Adicoes.SQL.Add('SELECT * FROM Adicoes ORDER BY DI,Adicao,NCM, Codigo_Mercadoria');
               Adicoes.Open;

               //Adicoes.Refresh;
               Adicoes.First;
               PedidosItens.First;

               gAdicao.Caption := 'Itens da Adição: ['+InttoStr(Adicoes.RecordCount)+']';
               gItens.Caption  := 'Itens do Pedido: ['+InttoStr(PedidosItens.RecordCount)+']';
          End;

          // Log de operações.
          LogDados(Dados.PedidosItens, '('+Dados.PedidosItensPedido.AsString+') de '+Dados.PedidosData_Emissao.AsString+' Adicionado adição nº '+Dados.PedidosItensAdicao.AsString, dsInsert);
      Except
          ShowMessage('Número da Adição inválido!'+#13+Dados.AdicoesCodigo_Mercadoria.AsString+#13+'Adição:'+Dados.AdicoesAdicao.AsString);
      End;

      FiltraAdicao;

      LigaBotoes;
      cFormula.SelStart  := 0;
      cFormula.SelLength := 0;
end;

procedure TPedido_Itens.bRemove_AdicaoClick(Sender: TObject);
Var
     mAD       : String;
     mAdicao   : Integer;
     mAdicaoFim: Integer;
begin
      Try
         mAd := InputBox('Remover os itens desta adição do Pedido?', 'Nº da Adição:', '');
         If Pos('-', mAD) <> 0 then begin
            mAdicao    := StrtoInt(Trim(Copy(mAD, 1, Pos('-',mAD)-1)));
            mAdicaoFim := StrtoInt(Trim(Copy(mAD, Pos('-',mAD)+1,20)));
         end else begin
            mAdicao    := StrtoInt(mAD);
            mAdicaoFim := mAdicao;
         End;

         DesligaTabelas;
         with Dados do Begin
             // Setando o registro da adição como não lançado.
             Adicoes.SQL.Clear;
             Adicoes.SQL.Add('SELECT * FROM Adicoes ORDER BY DI,Adicao,NCM, Codigo_Mercadoria');
             Adicoes.Open;

             Progresso.Position := 0;
             Progresso.Max      := PedidosItens.RecordCount;
             Progresso.Visible  := true;

             PedidosItens.First;
             While not PedidosItens.Eof do begin
                   If (PedidosItensAdicao.Value >= mAdicao) and (PedidosItensAdicao.Value <= mAdicaoFim) then begin
                      If TipoNotaMovimenta_Estoque.Value = True then begin
                         Adicoes.Locate( 'DI; Codigo_Mercadoria; NCM; Sequencia_SISCOMEX', VarArrayOf([PedidosItensDI.Value, PedidosItensCodigo_Mercadoria.Value,PedidosItensNCM.Value, PedidosItensSequencia_SISCOMEX.Value]), [loCaseInsensitive] );
                         Produtos.Locate( 'Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive] );

                         Adicoes.Edit;
                              If TipoNotaSaida_Entrada.Value = 0 then begin
                                 If ProdutosTipo_Conversao.Value <> 'M' then
                                    AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                                 else
                                    AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                              end else begin
                                 If ProdutosTipo_Conversao.Value <> 'M' then
                                    AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                                 else
                                    AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                              End;
                              If AdicoesLancado_Entrada.Value < 0                       then AdicoesLancado_Entrada.Value := 0;
                              If AdicoesLancado_Entrada.Value > AdicoesQuantidade.Value then AdicoesLancado_Entrada.Value := AdicoesQuantidade.Value;
                              If AdicoesLancado_Saida.Value   < 0                       then AdicoesLancado_Saida.Value   := 0;
                              If AdicoesLancado_Saida.Value   > AdicoesQuantidade.Value then AdicoesLancado_Saida.Value   := AdicoesQuantidade.Value;
                         Adicoes.Post;
                      End;
                   End;
                   Progresso.Position := Progresso.Position + 1;
                   Application.ProcessMessages;

                   // Deleta os números seriais do produto.
                   ProdutosSeriais.SQL.Clear;
                   ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL, Disponivel = 1 WHERE(Produto_Codigo = :pCodigo) AND (Pedido = :pPedido)');
                   ProdutosSeriais.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                   ProdutosSeriais.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                   ProdutosSeriais.Execute;
                   ProdutosSeriais.SQL.Clear;
                   ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Produto_Codigo = :pCodigo) AND (ISNULL(Disponivel, 0) = 1) ORDER BY Cor, Numero');

                   PedidosItens.Next;
             End;

             // Remove o item da tabela de controle de navios.
             with tItem do begin
                  sql.clear;
                  sql.add('delete from PedidosItensNavios where Pedido = :pPed and Codigo_Mercadoria in(select Codigo_Mercadoria from PedidosItens where Pedido = :pPed and Adicao between :pAdicao and :pAdicaoFim)');
                  parambyname('pPed').AsInteger       := PedidosNumero.AsInteger;
                  ParamByName('pAdicao').AsInteger    := mAdicao;
                  ParamByName('pAdicaoFim').AsInteger := mAdicaoFim;
                  execute;
             end;

             // Log de operações.
             LogDados(Dados.PedidosItens, '('+Dados.PedidosItensPedido.AsString+') de '+Dados.PedidosData_Emissao.AsString+' Removida adição nº.'+Dados.PedidosItensAdicao.AsString, dsInactive);

             // Removendo itens da adicao dos itens do pedido.
             with PedidosItens do begin
                  sql.Clear;
                  sql.Add('delete from PedidosItens where Pedido = :pPedido and Adicao between :pAdicao and :pAdicaoFim');
                  ParamByName('pPedido').AsInteger    := PedidosNumero.Value;
                  ParamByName('pAdicao').AsInteger    := mAdicao;
                  ParamByName('pAdicaoFim').AsInteger := mAdicaoFim;
                  execute;
                  sql.Clear;
                  sql.Add('select * from PedidosItens where Pedido = :pPedido order by Adicao, Item');
                  ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                  Open;
             end;

             FiltraAdicao;

             If PedidosItens.RecordCount = 0 then begin
                bRemove_Item.Enabled   := False;
                bRemove_Adicao.Enabled := False;
                bRemove_Todos.Enabled  := False;
             End else begin
                bRemove_Item.Enabled   := True;
                bRemove_Adicao.Enabled := True;
                bRemove_Todos.Enabled  := True;
             End;
             LigaBotoes;
         End;
         LigaTabelas;
      except

      end;
      Progresso.Position := 0;
      Progresso.Visible  := false;
      Screen.Cursor := crDefault;
      LigaBotoes;
End;

procedure TPedido_Itens.bRemove_TodosClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;

      Try
          If MessageDlg('Deseja realmente remover todos os item do pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
             cFormula.Clear;
             DesligaTabelas;
             With Dados do begin
                  Adicoes.SQL.Clear;
                  Adicoes.SQL.Add('SELECT * FROM Adicoes ORDER BY DI,Adicao,NCM, Codigo_Mercadoria');
                  Adicoes.Open;
                  
                  Progresso.Position := 0;
                  Progresso.Max      := PedidosItens.RecordCount;
                  Progresso.Visible  := true;

                  PedidosItens.First;

                  While not PedidosItens.Eof do begin
                        If (TipoNotaMovimenta_Estoque.Value = True) then begin
                           Adicoes.Locate('DI; Codigo_Mercadoria; Adicao; Sequencia_SISCOMEX', VarArrayOf([PedidosItensDi.Value, PedidosItensCodigo_Mercadoria.Value,PedidosItensAdicao.Value, PedidosItensSequencia_SISCOMEX.Value]), [loCaseInsensitive] );
                           Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive] );
                           Adicoes.Edit;
                                   If TipoNotaSaida_Entrada.Value = 0 then begin
                                      If ProdutosTipo_Conversao.Value <> 'M' then 
                                         AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                                      else
                                         AdicoesLancado_Entrada.Value := (AdicoesLancado_Entrada.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                                   end else begin
                                      If ProdutosTipo_Conversao.Value <> 'M' then
                                         AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                                      else
                                         AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) );
                                   End;

                                   If AdicoesLancado_Entrada.Value < 0                       then AdicoesLancado_Entrada.Value := 0;
                                   If AdicoesLancado_Entrada.Value > AdicoesQuantidade.Value then AdicoesLancado_Entrada.Value := AdicoesQuantidade.Value;
                                   If AdicoesLancado_Saida.Value   < 0 then AdicoesLancado_Saida.Value := 0;
                                   If AdicoesLancado_Saida.Value   > AdicoesQuantidade.Value then AdicoesLancado_Saida.Value := AdicoesQuantidade.Value;
                           Adicoes.Post;
                        End;

                        // Deleta os números seriais do produto.
                        ProdutosSeriais.SQL.Clear;
                        ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = NULL, Disponivel = 1 WHERE(Produto_Codigo = :pCodigo) AND (Pedido = :pPedido)');
                        ProdutosSeriais.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                        ProdutosSeriais.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                        ProdutosSeriais.Execute;
                        ProdutosSeriais.SQL.Clear;
                        ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Produto_Codigo = :pCodigo) AND ISNULL(Disponivel, 0) = 1 ORDER BY Cor, Numero');

                        PedidosItens.Next;
                        Progresso.Position  := Progresso.Position +1;
                        Application.ProcessMessages;
                  End;

                  // Remove o item da tabela de controle de navios.
                  with tItem do begin
                       sql.clear;
                       sql.add('delete from PedidosItensNavios where Pedido = :pPed');
                       parambyname('pPed').AsInteger := PedidosNumero.AsInteger;
                       execute;
                  end;

                  // Deletando todos os itens do pedido.
                  with PedidosItens do begin
                       sql.clear;
                       sql.add('delete from PedidosItens where Pedido = :pPedido');
                       parambyname('pPedido').asinteger := PedidosNumero.value;
                       execute;
                       sql.clear;
                       sql.add('select * from PedidosItens where Pedido = :pPedido order by Adicao, Item');
                       parambyname('pPedido').asinteger := PedidosNumero.value;
                       open;
                  end;

                  gAdicao.Caption := 'Itens da Adição: ['+InttoStr(Adicoes.RecordCount)+']';
                  gItens.Caption  := 'Itens do Pedido: ['+InttoStr(PedidosItens.RecordCount)+']';
                  
                  FiltraAdicao;
             End;
             LigaTabelas;
          End;

          // Log de operações.
          LogDados(Dados.PedidosItens, '('+Dados.PedidosNumero.AsString+') de '+Dados.PedidosData_Emissao.AsString+' Removidos todos os produtos.', dsInactive);
      Except
          ShowMessage('Número da Adição inválido!');
      End;

      bCopiarRef.Tag     := 0;
      bCopiarRef.Enabled := true;
      Progresso.Position := 0;
      Progresso.Visible  := false;
      Screen.Cursor      := crDefault;
      LigaBotoes;
end;

procedure TPedido_Itens.LigaBotoes;
Begin
      If Dados.PedidosItens.RecordCount = 0 then begin
         bRemove_Item.Enabled   := False;
         bRemove_Adicao.Enabled := False;
         bRemove_Todos.Enabled  := False;
         bCopiarRef.Enabled     := Dados.PedidosNota_Referencia.Value > 0;
      End else begin
         bRemove_Item.Enabled   := True;
         bRemove_Adicao.Enabled := True;
         bRemove_Todos.Enabled  := True;
         bCopiarRef.Enabled     := false;
      End;
      If Dados.Adicoes.RecordCount = 0 then begin
         bInclui_Item.Enabled   := False;
         bInclui_Adicao.Enabled := False;
         bInclui_Todos.Enabled  := False;
      End else begin
         bInclui_Item.Enabled   := True;
         bInclui_Adicao.Enabled := True;
         bInclui_Todos.Enabled  := True;
      End;
      
      mnIncluiItem.Enabled   := bInclui_Item.Enabled;
      mnIncluiAdicao.Enabled := bInclui_Adicao.Enabled;
      mnIncluiTodos.Enabled  := bInclui_Todos.Enabled;
      mnRemoveItem.Enabled   := bRemove_Todos.Enabled;
      mnRemoveAdicao.Enabled := bRemove_Adicao.Enabled;
      mnRemoveTodos.Enabled  := bRemove_Todos.Enabled;
End;

procedure TPedido_Itens.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_Itens.FormClose(Sender: TObject;var Action: TCloseAction);
var
   minf: widestring;
   mTotGas
  ,mDed
  ,mTotGasC
  ,mAdEta
  ,mICMSFECEP
  ,mFECEP: real;
begin
     DesligaTabelas;
     TotalizaPedido;

     // Cria as informações de gasolina para informãções complementares.
     with Dados do begin
          if ProdutosPercentual_FECEP.asfloat > 0 then begin
             if PedidosItensSaida_Entrada.value = 0 then begin
                with tSoma do begin
                     sql.clear;
                     sql.add('select Qtde = sum(Quantidade)');
                     sql.add('      ,Perc_Mono = sum(Percentual_ICMSMono)');
                     sql.add('      ,ICMS_Mono = sum(Valor_ICMSMono)');
                     sql.add('from PedidosItens');
                     sql.add('where Pedido = :pPed');
                     parambyname('pPed').Value := PedidosNumero.AsInteger;
                     open;

                     mAdEta     := (fieldbyname('Qtde').AsFloat/0.73)*0.27;
                     mTotGas    := fieldbyname('Qtde').AsFloat + mAdEta;
                     mFECEP     := mTotGas * ProdutosPercentual_FECEP.asfloat;
                     mTotGasC   := fieldbyname('Qtde').AsFloat + mAdEta;
                     mDed       := fieldbyname('ICMS_Mono').AsFloat + (mAdEta*fieldbyname('Perc_Mono').AsFloat) - mFECEP;
                     mICMSFECEP := mTotGasC * ProdutosPercentual_FECEP.asfloat;

                     mInf := '---------------------------------------------------------------------------'+#13+
                             'ICMS CALCULADO CONFORME CONVÊNIO 15/2023'+#13+
                             'CALCULO DO ICMS REFERENTE GASOLINA A:'+#13+
                             'QUANTIDADE LITROS............: R$ '+padR(formatfloat(',##0.000', fieldbyname('Qtde').AsFloat), 18)+#13+
                             'ALÍQUOTA AD REM..............:    '+padR(formatfloat(',##0.00000000', fieldbyname('Perc_Mono').AsFloat), 18)+#13+
                             'ICMS CALCULADO/DEVIDO........: R$ '+padR(formatfloat(',##0.000', fieldbyname('ICMS_Mono').AsFloat), 18)+#13+
                             '---------------------------------------------------------------------------'+#13+
                             'CALCULO DO ICMS REFERENTE A ADIÇÃO DE ETANOL:'+#13+
                             'QUANTIDADE LITROS ETANOL.....:    '+ padR(formatfloat(',##0.000', (fieldbyname('Qtde').AsFloat/0.73)*0.27), 18) +' (QTD CORRESPONDENTE A 27%)'+#13+
                             'ALÍQUOTA AD REM..............:    '+ padR(formatfloat(',##0.00000000', fieldbyname('Perc_Mono').AsFloat), 18)+#13+
                             'ICMS CALCULADO/DEVIDO ETANOL.: R$ '+ padR(formatfloat(',##0.00', ((fieldbyname('Qtde').AsFloat/0.73)*0.27)*fieldbyname('Perc_Mono').AsFloat), 18)+#13+
                             '---------------------------------------------------------------------------'+#13+
                             'VALOR ICMS COM FECEP DEDUZIDO: R$ '+ padR(formatfloat(',##0.00', mDed), 18)+#13+
                             '---------------------------------------------------------------------------'+#13+
                             'CALCULO DO ICMS PARA RECOLHIMENTO FECEP, COM BASE NO DECRETO Nº 44.650, DE 30 DE JUNHO DE 2017, ALTERADO PELO DECRETO Nº 56369 DE 11/04/2024:'+#13+
                             'ALIQUOTA RECOLHIMENTO FECEP..:    '+ padR(formatfloat(',##0.0000000', ProdutosPercentual_FECEP.asfloat), 18)+#13+
                             'QUANTIDADE GASOLINA C........:    '+ padR(formatfloat(',##0.00', mTotGasC), 18)+#13+
                             'ICMS CALCULADO/DEVIDO FECEP..: R$ '+ padR(formatfloat(',##0.00', mICMSFECEP), 18)+#13+
                             '---------------------------------------------------------------------------'+#13+
                             'VALOR DO ICMS TOTAL..........: R$ '+ padR(formatfloat(',##0.00', fieldbyname('ICMS_Mono').AsFloat + ((fieldbyname('Qtde').AsFloat/0.73)*0.27)*fieldbyname('Perc_Mono').AsFloat), 18);
                end;
             end;
             Pedido.mInfGasol := mInf;
          end;
          PedidosItens.Close;
          Produtos.Close;
          Adicoes.Close;
          PagarReceber.Close;
     End;

     LigaTabelas;
     LimpaMemoria;
     Pedido_Itens.Release;
     Pedido_Itens := nil;
end;

// Executa os calculos dos macro passados como strings.
Function TPedido_Itens.CalculaMacro(Campo:String):Real;
var
    mPos
   ,mTam
   ,mPosFun
   ,i: Integer;
    mResultado: Real;
    mCampo
   ,mSQL
   ,mFormula
   ,mFuncao
   ,mFunTermo1
   ,mFunTermo2
   ,mFunCondic
   ,mSinal
   ,mValorCondic1
   ,mValorCondic2: String;
begin
     with Dados, dmFiscal do begin
          // Convertendo a formula do campo.
          mFormula := RemoveCaracter(#13,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#12,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#10,'',TipoNota.FieldByName(Campo).AsString);

          Campos.First;
          while not Campos.Eof do begin
                mTam   := Length(Trim(CamposCampo.Value));
                mPos   := Pos(CamposCampo.Value, mFormula);
                mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 60);
                mCampo := Trim(Copy(mCampo, 1, Pos(']',mCampo)-1));

                If (CamposPesquisa.Value <> '') and (mPos <> 0) then Begin
                   mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 30);
                   mCampo := Copy(mCampo, 1, Pos(']',mCampo)-1);
                End;
                If (mPos <> 0) then begin
                   Delete(mFormula, mPos, mTam);
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
                      If Trim(ProcessosDOC.FieldByName(mCampo).AsString) <> '' then
                         Insert( ProcessosDOC.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
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
                            mCampo := 'Imp_DentroNContrib'
                         else
                            mCampo := 'Imp_DentroContrib';
                      End else begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_ForaNContrib'
                         else
                            mCampo := 'Imp_ForaContrib';
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
                      end else begin
                         mCampo := CamposCampo_Chave.Value;
                         Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                      End;
                   End;
                End;
                If mPos = 0 then Campos.Next;
          end;

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
     end;

     mMacro.Formula := mFormula;
     mResultado     := mMacro.Calc([0]);
     if mResultado <= 0 then mResultado := 0;

     if Campo = 'Calculo_Mercadoria' then begin
        cFormula.Lines.Add(Replicate('=',129));
        cFormula.Lines.Add('      ITEM: '+Dados.PedidosItensItem.AsString);
        cFormula.Lines.Add('   PRODUTO: '+Dados.PedidosItensCodigo_Mercadoria.AsString + ' - '+Copy(Dados.PedidosItensDescricao_Mercadoria.AsString,1,100));
        cFormula.Lines.Add('QUANTIDADE: '+FormatFloat('###,###,##0.00000000', Dados.PedidosItensQuantidade.ASFloat));
        cFormula.Lines.Add('QTDE P/UNI: '+FormatFloat('###,###,##0.00000000', Dados.ProdutosQuantidade_Unidade.AsFloat));
        cFormula.Lines.Add('  UNITARIO: '+FormatFloat('###,###,##0.00000000', mMacro.Calc([0])));
        cFormula.Lines.Add('     TOTAL: '+FormatFloat('###,###,##0.00000000', mMacro.Calc([0]) * Dados.PedidosItensQuantidade.AsFloat));
        cFormula.Lines.Add('');
     end;
     cFormula.Lines.Add('     CAMPO: '+Campo);
     cFormula.Lines.Add('   FÓRMULA: '+RemoveCaracter(#13,'',Dados.TipoNota.FieldByName(Campo).AsString));
     cFormula.Lines.Add('   VALORES: '+mFormula);
     cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', mResultado ));
     cFormula.Lines.Add('');

     Result := mResultado;
end;

procedure TPedido_Itens.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
     If TeclaPressionada(VK_MENU) and TeclaPressionada(72) then Begin
        If cFormula.Visible = False then begin
           Progresso.Visible   := false;
           cFormula.Visible    := true;
           cFormula.Enabled    := true;
           cFormula.ScrollBars := ssBoth;
           cFormula.ReadOnly   := false;
        end else begin
           cFormula.Visible    := False;
           Progresso.Visible   := true;
           cFormula.Enabled    := false;
           cFormula.ScrollBars := ssnone;
           cFormula.ReadOnly   := true;
        End;
     End;
end;

procedure TPedido_Itens.GradeEnter(Sender: TObject);
begin
     with Dados do begin
          Navega.DataSource := dsAdicoes;
          Adicoes.Refresh;
     end;
end;

procedure TPedido_Itens.GradeItensEnter(Sender: TObject);
begin
     Navega.DataSource := Dados.dsPedidosItens;
end;

procedure TPedido_Itens.cProcessoExit(Sender: TObject);
begin
     With Dados, dmFiscal do begin
          FiltraAdicao;
          Adicoes.Refresh;

          // Totalizando as despesas de custo do processo no financeiro.
          // Totalizando o FOB_ME dos produtos com despesas seletiva.
          tProcessoMestre.SQL.Clear;
          tProcessoMestre.SQL.Add('SELECT Numero_Declaracao FROM ProcessosDocumentos WHERE Processo = :pMestre');
          tProcessoMestre.ParamByName('pMestre').AsString := ProcessosDOCProcesso_Mestre.Value;
          tProcessoMestre.Open;
          {
          tFOB.SQL.Clear;
          tFOB.SQL.Add('SELECT  FOB_Total    = ISNULL((SELECT ROUND(SUM(Valor_SemAdValorem * Quantidade), 2) FROM Adicoes WHERE (DI = :pDI)), 0) ');
          tFOB.SQL.Add('       ,FOB_Seletivo = ISNULL((SELECT ROUND(SUM(Valor_SemAdValorem * Quantidade), 2) FROM Adicoes WHERE DI = :pDI AND (SELECT Custo_Seletivo FROM NCM WHERE(NCM.NCM = Adicoes.NCM)) = 1), 0)');
          tFOB.SQL.Add('       ,FOB_Mestre   = ISNULL((SELECT ROUND(SUM(Valor_SemAdValorem * Quantidade), 2) FROM Adicoes WHERE DI = :pDIMestre), 0)');
          tFOB.SQL.Add('       ,CIF_Total    = ISNULL((SELECT SUM(FOB + Frete + Seguro + II) FROM ProcessosDocumentos WHERE Numero_Declaracao = :pDI), 0)');
          tFOB.SQL.Add('       ,CIF_Mestre   = NULLIF(0,(SELECT SUM(FOB + Frete + Seguro + II) FROM ProcessosDocumentos WHERE Processo = :pProcessoMestre))');
          tFOB.ParamByName('pDI').AsString             := ProcessosDOCNumero_Declaracao.AsString;
          tFOB.ParamByName('pDIMestre').AsString       := tProcessoMestre.FieldByName('Numero_Declaracao').AsString;
          tFOB.ParamByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.AsString;
          //tFOB.SQL.SaveToFile('c:\temp\Pedidos_Itens_tFOB.sql');
          tFOB.Open;
          }
          with tFOB do begin
               sql.Clear;
               sql.Add('select FOB_Total       = isnull((select round(sum(Valor_SemAdValorem * Quantidade), 2) from Adicoes where (DI = :pDI)), 0) ');
               sql.Add('      ,FOB_Seletivo    = isnull((select round(sum(Valor_SemAdValorem * Quantidade), 2) from Adicoes where DI = :pDI and (select Custo_Seletivo from NCM where(NCM.NCM = Adicoes.NCM)) = 1), 0)');
               sql.Add('      ,FOB_Mestre      = isnull((select round(sum(Valor_SemAdValorem * Quantidade), 2) from Adicoes where DI = :pDIMestre), 0)');
               sql.Add('      ,CIF_Total       = isnull((select sum(FOB + Frete + Seguro + II) from ProcessosDocumentos where Numero_Declaracao = :pDI), 0)');
               sql.Add('      ,CIF_Mestre      = nullif(0,(select sum(FOB + Frete + Seguro + II) from ProcessosDocumentos where Processo = :pProcessoMestre))');
               sql.Add('      ,FOBPISCOFINS_ME = isnull((select sum(ad.Valor_Unitario * ad.Quantidade) from Adicoes ad where ad.DI = :pDI and Valor_PIS <> 0), 0)');
               paramByName('pDI').AsString             := ProcessosDOCNumero_Declaracao.AsString;
               paramByName('pDIMestre').AsString       := tProcessoMestre.FieldByName('Numero_Declaracao').AsString;
               paramByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.AsString;
               //sqL.SaveToFile('c:\temp\Pedidos_Itens_tFOB.sql');
               open;
          end;

          // Totalizando as despesas de custo do processo no financeiro.
          tDespesas.SQL.Clear;
          If PedidosSaida_Entrada.Value = 0 then begin
             If ProcessosDOCEntreposto.AsBoolean = true then begin
                // Pegando o FOB_ME do Processo MESTRE.
                {
                tProcessoMestre.SQL.Clear;
                tProcessoMestre.SQL.Add('SELECT ISNULL(FOB_ME,0) AS FOB_ME, ISNULL(Seguro_ME,0) AS Seguro_ME, ISNULL(Frete_ME,0) AS Frete_ME, ISNULL(Ad_Valorem,0) AS Ad_Valorem, ISNULL(Taxa_FOB,0) AS Taxa_FOB');
                tProcessoMestre.SQL.Add('FROM   ProcessosDocumentos WHERE(Processo = :pProcesso)');
                tProcessoMestre.ParamByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
                tProcessoMestre.Open;
                }
                with tProcessoMestre do begin
                     sql.clear;
                     sql.add('select FOB_ME = isnull(FOB_ME,0)');
                     sql.add('      ,Seguro_ME = isnull(Seguro_ME,0)');
                     sql.add('      ,Frete_ME = isnull(Frete_ME,0)');
                     sql.add('      ,Ad_Valorem = isnull(Ad_Valorem,0)');
                     sql.add('      ,Taxa_FOB = isnull(Taxa_FOB,0)');
                     sql.add('from ProcessosDocumentos pd');
                     sql.add('where pd.Processo = :pProcesso');
                     paramByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
                     open;
                end;
                
                // Somando as despesas do processo "MESTRE e do FILHO".
                If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.Custo_Entrada = 1)), 0)               AS Valor_DespesasMestre');
                end else begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.Custo_Entrada = 1)), 0)               AS Valor_DespesasMestre');
                End;

                tDespesas.ParamByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.Value;
             end else begin
                If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                   tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
                end else begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada<> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                   tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
                End;
             End;
          end else begin
             If ProcessosDOCEntreposto.AsBoolean = true then begin
                // Pegando o FOB_ME do Processo MESTRE.
                {
                tProcessoMestre.SQL.Clear;
                tProcessoMestre.SQL.Add('SELECT ISNULL(FOB_ME,0) AS FOB_ME, ISNULL(Seguro_ME,0) AS Seguro_ME, ISNULL(Frete_ME,0) AS Frete_ME, ISNULL(Ad_Valorem,0) AS Ad_Valorem, ISNULL(Taxa_FOB,0) AS Taxa_FOB');
                tProcessoMestre.SQL.Add('FROM   ProcessosDocumentos WHERE(Processo = :pProcesso)');
                tProcessoMestre.ParamByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
                tProcessoMestre.Open;
                 }
                with tProcessoMestre do begin
                     sql.clear;
                     sql.add('select FOB_ME = isnull(FOB_ME,0)');
                     sql.add('      ,Seguro_ME = isnull(Seguro_ME,0)');
                     sql.add('      ,Frete_ME = isnull(Frete_ME,0)');
                     sql.add('      ,Ad_Valorem = isnull(Ad_Valorem,0)');
                     sql.add('      ,Taxa_FOB = isnull(Taxa_FOB,0)');
                     sql.add('from ProcessosDocumentos pd');
                     sql.add('where pd.Processo = :pProcesso');
                     paramByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
                     open;
                end;
                 
                // Somando as despesas do processo "MESTRE e do FILHO".
                If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.CustoConta = 1)), 0) AS Valor_DespesasMestre');
                end else begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.CustoConta = 1)), 0) AS Valor_DespesasMestre');
                End;

                tDespesas.ParamByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.Value;
             end else begin
                If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                   tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
                end else begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                   tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
                End;
             End;
          End;
          tDespesas.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
          tDespesas.Open;

          If (ProcessosDOCEntreposto.AsBoolean = true) then begin
             If tFOB.FieldByName('FOB_Mestre').Value <= 0 then begin
                MessageDlg('Houve falha na soma do "FOB" do Processo "MESTRE"'+#13+#13+'Verifique se existem os itens da "DA/DI".', mtError,[mbOK], 0);
             End;
          End;

          LigaBotoes;
     End;
end;

procedure TPedido_Itens.StaticText2Click(Sender: TObject);
begin
      Pedido_TaxaLucro := TPedido_TaxaLucro.Create(Self);
      Pedido_TaxaLucro.ShowModal;
end;

procedure TPedido_Itens.DesligaTabelas;
begin
      With Dados, dmFiscal do begin
           PedidosItens.DisableControls;
           Produtos.DisableControls;
           NCM.DisableControls;
           Incoterms.DisableControls;
           Pedidos.DisableControls;
           TipoNota.DisableControls;
           Campos.DisableControls;
           tItem.DisableControls;
           Adicoes.DisableControls;
      End;
end;

procedure TPedido_Itens.LigaTabelas;
begin
      With Dados, dmFiscal do begin
           PedidosItens.EnableControls;
           Produtos.EnableControls;
           NCM.EnableControls;
           Incoterms.EnableControls;
           Pedidos.EnableControls;
           TipoNota.EnableControls;
           Campos.EnableControls;
           tItem.EnableControls;
           Adicoes.EnableControls;
      End;
end;

procedure TPedido_Itens.cUnitarioChange(Sender: TObject);
begin
      mValorInformado         := cUnitario.Value;
      cQtdePercentual.Enabled := cPercentualQtde.Value > 0;
      If cPercentualQtde.Value = 0 then cQtdePercentual.Enabled := false;
end;

procedure TPedido_Itens.FiltraAdicao;
begin
      With Dados, dmFiscal do begin
           // Ajusta os valores dos campos de itens disponivel da adição
           If TipoNotaMovimenta_Estoque.Value = True then begin
              Adicoes.SQL.Clear;
              Adicoes.SQL.Add('UPDATE Adicoes SET Lancado_Entrada = (Quantidade - (');
              Adicoes.SQL.Add('                                    (SELECT ISNULL(SUM(Quantidade), 0)');
              Adicoes.SQL.Add('                                    FROM   PedidosItens NI');
              Adicoes.SQL.Add('                                     WHERE  NI.Codigo_Mercadoria = Adicoes.Codigo_Mercadoria');
              Adicoes.SQL.Add('                                      AND  NI.DI = Adicoes.DI');
              Adicoes.SQL.Add('                                      AND  NI.Adicao = Adicoes.Adicao');
              Adicoes.SQL.Add('                                      AND  NI.Sequencia_Siscomex = Adicoes.Sequencia_Siscomex');
              Adicoes.SQL.Add('                                      AND  Saida_Entrada = 0');
              Adicoes.SQL.Add('                                      AND  Movimenta_Estoque = 1)');
              Adicoes.SQL.Add('                                      +');
              Adicoes.SQL.Add('                                      (SELECT ISNULL(SUM(Quantidade), 0)');
              Adicoes.SQL.Add('                                      FROM   NotasItens   NI');
              Adicoes.SQL.Add('                                      WHERE  NI.Codigo_Mercadoria = Adicoes.Codigo_Mercadoria');
              Adicoes.SQL.Add('                                      AND  NI.DI = Adicoes.DI');
              Adicoes.SQL.Add('                                      AND  NI.Adicao = Adicoes.Adicao');
              Adicoes.SQL.Add('                                      AND  NI.Sequencia_Siscomex = Adicoes.Sequencia_Siscomex');
              Adicoes.SQL.Add('                                      AND  Saida_Entrada = 0');
              Adicoes.SQL.Add('                                      AND  Movimenta_Estoque = 1');
              Adicoes.SQL.Add('                                      AND  Cancelada <> 1');
              Adicoes.SQL.Add('                                      AND  NFe_Denegada <> 1))/(select Quantidade_Unidade from Produtos where Codigo = Codigo_mercadoria)');
              Adicoes.SQL.Add(')');
              Adicoes.SQL.Add('              ,Lancado_Saida   = ((');
              Adicoes.SQL.Add('                               (SELECT ISNULL(SUM(Quantidade), 0)');
              Adicoes.SQL.Add('                               FROM  NotasItens   NI');
              Adicoes.SQL.Add('                               WHERE  NI.Codigo_Mercadoria = Adicoes.Codigo_Mercadoria');
              Adicoes.SQL.Add('                               AND  NI.DI = Adicoes.DI');
              Adicoes.SQL.Add('                               AND  NI.Adicao = Adicoes.Adicao');
              Adicoes.SQL.Add('                               AND  NI.Sequencia_Siscomex = Adicoes.Sequencia_Siscomex');
              Adicoes.SQL.Add('                               AND  Saida_Entrada = 0');
              Adicoes.SQL.Add('                               AND  Movimenta_Estoque = 1');
              Adicoes.SQL.Add('                               AND  Cancelada <> 1');
              Adicoes.SQL.Add('                               AND  NFe_Denegada <> 1) + ');
              Adicoes.SQL.Add('                               (SELECT  ISNULL(SUM(Quantidade), 0)');
              Adicoes.SQL.Add('                               FROM   NotasTerceirosItens NI');
              Adicoes.SQL.Add('                               WHERE  NI.Codigo_Mercadoria = Adicoes.Codigo_Mercadoria');
              Adicoes.SQL.Add('                               AND  NI.DI = Adicoes.DI');
              Adicoes.SQL.Add('                               AND  NI.Adicao = Adicoes.Adicao');
              Adicoes.SQL.Add('                               AND  NI.Sequencia_Siscomex = Adicoes.Sequencia_Siscomex');
              Adicoes.SQL.Add('                               AND  Movimenta_Estoque = 1))/(select Quantidade_Unidade from Produtos where Codigo = Codigo_mercadoria)');
              Adicoes.SQL.Add('                    )');
              Adicoes.SQL.Add('                                 -');
              Adicoes.SQL.Add('                                     (');
              Adicoes.SQL.Add('                                      (SELECT ISNULL(SUM(Quantidade), 0)');
              Adicoes.SQL.Add('                                       FROM   PedidosItens NI');
              Adicoes.SQL.Add('                                       WHERE  NI.Codigo_Mercadoria = Adicoes.Codigo_Mercadoria');
              Adicoes.SQL.Add('                                       AND  NI.DI = Adicoes.DI');
              Adicoes.SQL.Add('                                       AND  NI.Adicao = Adicoes.Adicao');
              Adicoes.SQL.Add('                                       AND  NI.Sequencia_Siscomex = Adicoes.Sequencia_Siscomex');
              Adicoes.SQL.Add('                                       AND  Saida_Entrada = 1');
              Adicoes.SQL.Add('                                       AND Movimenta_Estoque = 1)');
              Adicoes.SQL.Add('                                       +');
              Adicoes.SQL.Add('                                    (SELECT ISNULL(SUM(Quantidade), 0)');
              Adicoes.SQL.Add('                                     FROM   NotasItens   NI');
              Adicoes.SQL.Add('                                     WHERE  NI.Codigo_Mercadoria = Adicoes.Codigo_Mercadoria');
              Adicoes.SQL.Add('                                     AND  NI.DI = Adicoes.DI');
              Adicoes.SQL.Add('                                     AND  NI.Adicao = Adicoes.Adicao');
              Adicoes.SQL.Add('                                     AND  NI.Sequencia_Siscomex = Adicoes.Sequencia_Siscomex');
              Adicoes.SQL.Add('                                     AND  Saida_Entrada = 1');
              Adicoes.SQL.Add('                                     AND  Movimenta_Estoque = 1');
              Adicoes.SQL.Add('                                     AND  Cancelada <> 1');
              Adicoes.SQL.Add('                                     AND  NFe_Denegada <> 1)');
              Adicoes.SQL.Add('                                      )/(select Quantidade_Unidade from Produtos where Codigo = Codigo_mercadoria)');
              Adicoes.SQL.Add('WHERE DI = :pDI');
              Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
              //Adicoes.SQL.SaveToFile('c:\temp\Atualiza_Estoque_Adicao.sql');
              Adicoes.Execute;
           end;
           Adicoes.SQL.Clear;
           
           If TipoNotaSaida_Entrada.Value = 0 then begin
              Grade.Columns[4].FieldName := 'Lancado_Entrada';
              If TipoNotaMovimenta_Estoque.Value = True then begin
                 Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI) AND (Lancado_Entrada > 0) AND (Exportador = :pExportador) ORDER BY DI,Adicao,NCM, Codigo_Mercadoria');
                 Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
              end else begin
                 If PedidosNota_Referencia.AsInteger = 0 then begin
                    Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI) AND (Exportador = :pExportador) ORDER BY DI,Adicao,NCM');
                    Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
                 end else begin
                    Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (Codigo_Mercadoria IN(SELECT Codigo_Mercadoria FROM NotasItens WHERE(Nota = :pNumeroNota) AND (Data = :pDataNota))) AND (DI = :pDI) ORDER BY DI,Adicao,NCM, Codigo_Mercadoria');
                    Adicoes.ParamByName('pNumeroNota').AsInteger := PedidosNota_Referencia.AsInteger;
                    Adicoes.ParamByName('pDataNota').AsDate      := PedidosData_Referencia.AsDateTime;
                    Adicoes.ParamByName('pDI').AsString          := PedidosDI.AsString;

                    NotasItens.SQL.Clear;
                    NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE(Nota = :pNumeroNota) AND (Data = :pDataNota)');
                    NotasItens.ParamByName('pNumeroNota').AsInteger := PedidosNota_Referencia.AsInteger;
                    NotasItens.ParamByName('pDataNota').AsDate      := PedidosData_Referencia.AsDateTime;
                    NotasItens.Open;
                 End;
              End;
              Adicoes.ParamByName('pExportador').AsInteger := PedidosFornecedor_Codigo.Value;
           end else begin
              Grade.Columns[4].FieldName := 'Lancado_Saida';
              If TipoNotaMovimenta_Estoque.Value = True then begin
                 Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI) AND (Lancado_Saida > 0) ORDER BY DI,Adicao,NCM, Codigo_Mercadoria');
                 Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
              end else begin
                 If PedidosNota_Referencia.AsInteger = 0 then begin
                    Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI) ORDER BY DI,Adicao,NCM');
                    Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
                 end else begin
                    Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(Codigo_Mercadoria IN(SELECT Codigo_Mercadoria FROM NotasItens WHERE(Nota = :pNumeroNota) AND (Data = :pDataNota))) AND (DI = :pDI) ORDER BY DI,Adicao,NCM, Codigo_Mercadoria');
                    Adicoes.ParamByName('pNumeroNota').AsInteger := PedidosNota_Referencia.AsInteger;
                    Adicoes.ParamByName('pDataNota').AsDate      := PedidosData_Referencia.AsDateTime;
                    Adicoes.ParamByName('pDI').AsString          := PedidosDI.AsString;

                    NotasItens.SQL.Clear;
                    NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE(Nota = :pNumeroNota) AND (Data = :pDataNota)');
                    NotasItens.ParamByName('pNumeroNota').AsInteger := PedidosNota_Referencia.AsInteger;
                    NotasItens.ParamByName('pDataNota').AsDate      := PedidosData_Referencia.AsDateTime;
                    NotasItens.Open;
                 End;
              End;
           End;
           
           Adicoes.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo IN(SELECT Codigo_Mercadoria FROM Adicoes WHERE(DI = :pDI))');
           Produtos.ParamByName('pDI').AsString := cDI.Text;
           Produtos.Open;
      End;
end;

procedure TPedido_Itens.bCopiarRefClick(Sender: TObject);
begin
      if (Dados.ConfiguracaoObrigar_NavioPedido.AsBoolean) and (trim(cNavio.Text) = '') then begin
         MessageDlg('Navio não informado!'+#13+#13+'Informe o "Navio" para poder adicionar os itens.', mterror, [mbok], 0);
         cNavio.SetFocus;
         abort;
      end;
      bCopiarRef.Tag     := 1;
      bCopiarRef.Enabled := false;
      With Dados, dmFiscal do begin
           NotasItens.First;

           While not NotasItens.Eof do begin
                 Adicoes.Locate('DI; Codigo_Mercadoria; NCM; Sequencia_SISCOMEX', VarArrayOf([NotasItensDI.Value, NotasItensCodigo_Mercadoria.Value, NotasItensNCM.Value, NotasItensSequencia_SISCOMEX.Value]), [loCaseInsensitive] );
                 mQuantidade := NotasItensQuantidade.Value;
                 mTextoLimpo := NotasItensDescricao_Mercadoria.AsString;
                 AdicionaUm;
                 NotasItens.Next;
           End;

           // Deleta os números seriais do produto.
           ProdutosSeriais.SQL.Clear;
           ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = :pPedido, Disponivel = 0 WHERE(Nota_Entrada = :pNota)');
           ProdutosSeriais.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           ProdutosSeriais.ParamByName('pNota').AsInteger   := PedidosNota_Referencia.AsInteger;
           ProdutosSeriais.Execute;
           ProdutosSeriais.SQL.Clear;
           ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Produto_Codigo = :pCodigo) AND (ISNULL(Disponivel, 0) = 1) ORDER BY Cor, Numero');

           // Log de operações.
           LogDados(PedidosItens, '('+PedidosItensPedido.AsString+') de '+PedidosData_Emissao.AsString+' Adicionado todos os produto da nota de referência nº '+NotasItensNota.AsString, dsInsert);
      End;
      LigaBotoes;

      bInclui_Item.Enabled   := False;
      bInclui_Adicao.Enabled := False;
      bInclui_Todos.Enabled  := False;
end;

procedure TPedido_Itens.bInclui_CodigoClick(Sender: TObject);
Var
   mCD: String;
   mCod,
   mCodFim: Integer;
   mSaiEntra  : String;
   mSemEstoque: Widestring;
begin
     if (Dados.ConfiguracaoObrigar_NavioPedido.AsBoolean) and (trim(cNavio.Text) = '') then begin
        MessageDlg('Navio não informado!'+#13+#13+'Informe o "Navio" para poder adicionar os itens.', mterror, [mbok], 0);
        cNavio.SetFocus;
        abort;
     end;
     try
          mCD     := InputBox('Incluir itens por intervalo', 'Códigos :', '');
          mCodFim := 0;
          if Pos('-', mCD) <> 0 then begin
             mCod    := StrtoInt(Trim(Copy(mCD , 1, Pos('-',mCD )-1)));
             mCodFim := StrtoInt(Trim(Copy(mCD , Pos('-',mCD )+1,20)));
          end else begin
             mCod := StrtoInt(mCD);
          end;

          with Dados do begin
               if PedidosSaida_Entrada.Value = 0 then mSaiEntra := 'Lancado_Entrada';
               if PedidosSaida_Entrada.Value = 1 then mSaiEntra := 'Lancado_Saida';

               mSemEstoque := '';

               Progresso.Position := 0;
               Progresso.Max      := Adicoes.RecordCount;
               Progresso.Visible  := true;
               Adicoes.First;

               DesligaTabelas;

               while not Adicoes.Eof do begin
                     mQuantidade := Adicoes.FieldByName(mSaiEntra).AsFloat;
                     if cQtdePercentual.Checked then
                        mQuantidade := Adicoes.FieldByName('Quantidade').AsFloat;

                     if (cPercentualQtde.Value > 0) and (mQuantidade > 1) then begin
                        if cFracionar.Checked then begin
                           mQuantidade := Roundto(Percentual(mQuantidade, cPercentualQtde.Value), -3);
                        end else begin
                           mQuantidade := trunc(Percentual(mQuantidade, cPercentualQtde.Value));
                        end;
                     end;

                     if (TipoNotaMovimenta_Estoque.AsBoolean) and (mQuantidade > Adicoes.FieldByName(mSaiEntra).AsFloat) then begin
                        mSemEstoque := mSemEstoque +#13+ 'O produto '+AdicoesCodigo_Mercadoria.AsString+ ' não tem estoque disponivel.'
                     end else begin
                        if mCodFim = 0 then begin
                           if AdicoesCodigo_Mercadoria.Value = mCod then AdicionaUm;
                        end else begin
                           If (AdicoesCodigo_Mercadoria.Value >= mCod) and (AdicoesCodigo_Mercadoria.Value <= mCodFim) then AdicionaUm;
                        end;
                     end;
                     
                     Progresso.Position := Progresso.Position + 1;
                     Application.ProcessMessages;
                     Adicoes.Next;
               end;
               LigaTabelas;

               Progresso.Position := 0;
               If mErro = 1 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota não encontrada.'       , mtError, [mbOK], 0);
               If mErro = 2 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Operacional, Alíquota não encontrada.'        , mtError, [mbOK], 0);
               If mErro = 3 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota do MVA não encontrada.', mtError, [mbOK], 0);
               If mErro = 5 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de calculo na fórmula do DIFERENCIAL DE ICMS (DIFAL), verifique as alíquotas de FCP e ICMS do estado de ('+PedidosDestinatario_Estado.Value+')'+#13+#13+
                                            'Para consumidor final para fora do estado estas configurações são obrigatórias.', mtError, [mbOK], 0);
               If mErro = 6 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de cálculo na fórmula do DIFERENCIAL DE ICMS (DIFAL), verifique o Percentual de participação (Estado Destino) nas configuraçãoes do sistema.'+#13+#13+
                                            'Para consumidor final para fora do estado estas configurações são obrigatórias.', mtError, [mbOK], 0);
               if mErro = 7 then MessageDlg('Atenção!'+#13+#13+'Houve um erro de cálculo no rateio do Anti-Dumping, verifique os itens na adição.'+#13+#13+
                                            'O processo indica que existe valor Anti-Dumping, mas não há nenhum item selecionado com Anti-Dumping na adição da DI.', mtError, [mbOK], 0);
               if (mErro = 8) or (mNCM <> '') then begin 
                  ClipBoard.AsText := mNCM;
                  MessageDlg('Atenção!'+#13+#13+'As seguintes NCM''s estão sem o "Código do Crédito Presumido".'+#13+#13+mNCM+#13+#13+'Isso irá causar rejeição na nota fiscal pela SEFAZ.'+#13+#13+'NCM''s copiadas para a area de transfência.', mtError, [mbOK], 0);
               end;
               
               if mSemEstoque <> '' then begin
                  Showmessage(mSemEstoque);
               end;

               Adicoes.Refresh;
               Adicoes.First;
               PedidosItens.First;

               gAdicao.Caption := 'Itens da Adição: ['+InttoStr(Adicoes.RecordCount)+']';
               gItens.Caption  := 'Itens do Pedido: ['+InttoStr(PedidosItens.RecordCount)+']';
          End;

          // Log de operações.
          LogDados(Dados.PedidosItens, '('+Dados.PedidosItensPedido.AsString+') de '+Dados.PedidosData_Emissao.AsString+' Adicionado adição nº '+Dados.PedidosItensAdicao.AsString, dsInsert);
      Except
          ShowMessage('Verifique os códigos informados!'+#13+mCD);
      End;
      LigaBotoes;
      cFormula.SelStart  := 0;
      cFormula.SelLength := 0;
end;

procedure TPedido_Itens.bDividirClick(Sender: TObject);
begin
      if (Dados.ConfiguracaoObrigar_NavioPedido.AsBoolean) and (trim(cNavio.Text) = '') then begin
         MessageDlg('Navio não informado!'+#13+#13+'Informe o "Navio" para poder adicionar os itens.', mterror, [mbok], 0);
         cNavio.SetFocus;
         abort;
      end;
      Pedido_ItensDividir := TPedido_ItensDividir.Create(Self);
      Pedido_ItensDividir.Caption := Caption;
      Pedido_ItensDividir.ShowModal;
end;

procedure TPedido_Itens.TotalizaPedido;
Var
    mVolume_PesoLiquido,
    mVolume_PesoBruto,
    mRateio_Descontos,
    mVolumes,
    mAliquota_ICMSOper,
    mBCIPI,
    mValor_TotalIPI,
    mBCICMS,
    mValorICMS,
    mValor_TotalProdutos,
    mValorICMS_Substitutivo,
    mBCICMS_Substitutivo,
    mValorICMS_Reducao,
    mValor_TotalMVA,
    mValor_PIS,
    mValor_COFINS,
    mValor_PIS2,
    mValor_COFINS2,
    mValor_PISST,
    mValor_COFINSST,
    mValor_BCII,
    mValor_TotalIINF,
    mValor_TotalIIRateio,
    mValor_TotalDespesas,
    mValor_IsentasICMS,
    mValor_OutrasICMS,
    mValor_IsentasIPI,
    mValor_OutrasIPI,
    mValor_Descontos,
    mValor_DUMPING,
    mDespesasOutros,
    mBCPIS,
    mBCPISST,
    mValor_Seguro,
    mValor_Frete,
    mTotalImpostos,
    mValor_IRPJ,
    mValor_CSLL,
    mValor_Inventario,
    mValor_BCICMSDest,
    mValor_ICMSDest,
    mBCDIFAL,
    mDIFAL_Valor,
    mDIFAL_ValorOrig,
    mDIFAL_ValorDest,
    mFCP_ValorDest,
    mFCP_ICMSDest,
    mFCP_ICMSORIG,
    mValor_BCFCP,
    mValor_FCP,
    mValor_BCFCPST,
    mValor_FCPST,
    mValor_Lucro,
    mValor_CIF,
    mValor_AFRMM,
    mValor_BCICMSMono,
    mValor_BCICMSMonoRet,
    mValor_ICMSMono,
    mValor_ICMSMonoRet,
    mValorICMSDeson,
    mValor_BCICMSPresumido,
    mDifer,
    mValor_BCCBS,
    mValor_CBS,
    mValor_BCIBS,
    mValor_IBS,
    mValor_BCIS,
    mValor_IS,
    mValor_ICMSPresumido: Currency;
begin
     Application.ShowHint := false;

     //DesligaTabelas;
     Screen.Cursor    := crSQLWait;

     cFormula.Visible := False;
     cFormula.Clear;
     Application.ProcessMessages;

     mBCIPI                  := 0;
     mValor_TotalIPI         := 0;
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
     mBCPIS                  := 0;
     mBCPISST                := 0;
     mValor_PIS              := 0;
     mValor_COFINS           := 0;
     mValor_PIS2             := 0;
     mValor_COFINS2          := 0;
     mValor_PISST            := 0;
     mValor_COFINSST         := 0;
     mValor_BCII             := 0;
     mValor_TotalIINF        := 0;
     mValor_TotalIIRateio    := 0;
     mValor_TotalDespesas    := 0;
     mValor_IsentasICMS      := 0;
     mValor_OutrasICMS       := 0;
     mValor_IsentasIPI       := 0;
     mValor_OutrasIPI        := 0;
     mValor_Descontos        := 0;
     mValor_DUMPING          := 0;
     mVolumes                := 0;
     mDespesasOutros         := 0;
     mValor_Seguro           := 0;
     mValor_Frete            := 0;
     mTotalImpostos          := 0;
     mValor_IRPJ             := 0;
     mValor_CSLL             := 0;
     mValor_Inventario       := 0;
     mValor_Lucro            := 0;
     mValor_BCICMSDest       := 0;
     mValor_ICMSDest         := 0;
     mBCDIFAL                := 0;
     mDIFAL_Valor            := 0;
     mDIFAL_ValorOrig        := 0;
     mDIFAL_ValorDest        := 0;
     mFCP_ValorDest          := 0;
     mFCP_ICMSDest           := 0;
     mFCP_ICMSORIG           := 0;
     mValor_BCFCP            := 0;
     mValor_FCP              := 0;
     mValor_BCFCPST          := 0;
     mValor_FCPST            := 0;
     mValorICMSDeson         := 0;
     mValor_CIF              := 0;
     mValor_AFRMM            := 0;
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

     // Calula todos os campos de valores totais do pedido.
     With Dados do Begin
          PedidosItens.SQL.Clear;
          PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido)');
          PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
          PedidosItens.Open;
          
          // Zerando os campos de totais do pedido.
          Pedidos.Edit;
                  PedidosValor_TotalProdutos.Value    := 0;
                  PedidosBCIPI.Value                  := 0;
                  PedidosValor_TotalIPI.Value         := 0;
                  PedidosBCICMS.Value                 := 0;
                  PedidosValor_ICMS.Value             := 0;
                  PedidosBCICMS_Substitutivo.Value    := 0;
                  PedidosValorICMS_Substitutivo.Value := 0;
                  PedidosValor_ICMSReducao.Value      := 0;
                  PedidosTotal_Frete.Value            := 0;
                  PedidosValor_Seguro.Value           := 0;
                  PedidosValor_TotalNota.Value        := 0;
                  PedidosValor_TotalMVA.Value         := 0;
                  PedidosVolume_PesoLiquido.Value     := 0;
                  PedidosVolume_PesoBruto.Value       := 0;
                  PedidosValor_BCPIS.Value            := 0;
                  PedidosValor_PIS.Value              := 0;
                  PedidosValor_COFINS.Value           := 0;
                  PedidosValor_PIS2.Value             := 0;
                  PedidosValor_COFINS2.Value          := 0;
                  PedidosValor_BCPISST.Value          := 0;
                  PedidosValor_PISST.Value            := 0;
                  PedidosValor_COFINSST.Value         := 0;
                  PedidosValor_BCII.Value             := 0;
                  PedidosValor_TotalII.Value          := 0;
                  PedidosValor_OutrasDespesas.Value   := 0;
                  PedidosValor_OutrasICMS.Value       := 0;
                  PedidosValor_IsentasICMS.Value      := 0;
                  PedidosValor_OutrasIPI.Value        := 0;
                  PedidosValor_IsentasIPI.Value       := 0;
                  PedidosValor_DUMPING.Value          := 0;
                  PedidosValor_DespesasOutros.Value   := 0;
                  PedidosTotal_Impostos.Value         := 0;
                  PedidosValor_IRPJ.Value             := 0;
                  PedidosValor_CSLL.Value             := 0;
                  PedidosValor_Inventario.Value       := 0;
                  PedidosLucro_Valor.Value            := 0;
                  PedidosValor_BCICMSDest.Value       := 0;
                  PedidosValor_ICMSDest.Value         := 0;
                  PedidosValor_BCDIFAL.Value          := 0;
                  PedidosDIFAL_Valor.Value            := 0;
                  PedidosDIFAL_ValorOrig.Value        := 0;
                  PedidosDIFAL_ValorDest.Value        := 0;
                  PedidosFCP_ValorDest.Value          := 0;
                  PedidosFCP_ICMSDest.Value           := 0;
                  PedidosFCP_ICMSORIG.Value           := 0;
                  PedidosFCP_ICMSOrig.Value           := 0; 
                  PedidosDIFAL_AliqInterna.Value      := 0; 
                  PedidosValor_BCFCP.Value            := 0;
                  PedidosValor_FCP.Value              := 0;
                  PedidosValor_BCFCPST.Value          := 0;
                  PedidosValor_FCPST.Value            := 0;
                  PedidosValor_ICMSDesonerado.Value   := 0;
                  PedidosValor_CIF.Value              := 0;
                  PedidosValor_AFRMM.Value            := 0;
                  PedidosValor_BCICMSMono.Value       := 0;
                  PedidosValor_ICMSMono.Value         := 0;
                  PedidosValor_BCICMSMonoRet.Value    := 0;
                  PedidosValor_ICMSMonoRet.Value      := 0;
                  PedidosValor_BCICMSPresumido.Value  := 0;
                  PedidosValor_ICMSPresumido.Value    := 0;
          Pedidos.Post;

          Progresso.Position := 0;
          Progresso.Max      := PedidosItens.RecordCount;
          Progresso.Visible  := true;

          If PedidosItens.RecordCount <> 0 then begin
             PedidosItens.First;
             While (not PedidosItens.Eof) and (Funcoes.Cancelado = false) do Begin
                   Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);

                   mValor_BCICMSDest      := mValor_BCICMSDest      + PedidosItensValor_BCICMSDest.Value;
                   mValor_ICMSDest        := mValor_ICMSDest        + PedidosItensValor_ICMSDest.Value;
                   mBCDIFAL               := mBCDIFAL               + PedidosItensValor_BCDIFAL.Value;
                   mDIFAL_Valor           := mDIFAL_Valor           + PedidosItensDIFAL_Valor.Value;
                   mDIFAL_ValorOrig       := mDIFAL_ValorOrig       + PedidosItensDIFAL_ValorOrig.Value;
                   mDIFAL_ValorDest       := mDIFAL_ValorDest       + PedidosItensDIFAL_ValorDest.Value;
                   mFCP_ValorDest         := mFCP_ValorDest         + PedidosItensFCP_ValorDest.Value;
                   mFCP_ICMSDest          := mFCP_ICMSDest          + PedidosItensFCP_ICMSDest.Value;
                   mFCP_ICMSORIG          := mFCP_ICMSORIG          + PedidosItensFCP_ICMSORIG.Value;
                   mValor_BCFCP           := mValor_BCFCP           + PedidosItensValor_BCFCP.AsCurrency;
                   mValor_FCP             := mValor_FCP             + PedidosItensValor_FCP.AsCurrency;
                   mValor_BCFCPST         := mValor_BCFCPST         + PedidosItensValor_BCFCPST.AsCurrency;
                   mValor_FCPST           := mValor_FCPST           + PedidosItensValor_FCPST.AsCurrency;
                   mValorICMSDeson        := mValorICMSDeson        + PedidosItensValor_ICMSDesonerado.AsCurrency;
                   mValor_ICMSMono        := mValor_ICMSMono        + PedidosItensValor_ICMSMono.AsCurrency;
                   mValor_ICMSMonoRet     := mValor_ICMSMonoRet     + PedidosItensValor_ICMSMonoRet.AsCurrency;
                   mValor_BCICMSMono      := mValor_BCICMSMono      + PedidosItensValor_BCICMSMono.AsCurrency;
                   mValor_BCICMSMonoRet   := mValor_BCICMSMonoRet   + PedidosItensValor_BCICMSMonoRet.AsCurrency;
                   mValor_BCICMSPresumido := mValor_BCICMSPresumido + PedidosItensValor_BCICMSPresumido.AsCurrency;
                   mValor_ICMSPresumido   := mValor_ICMSPresumido   + PedidosItensValor_ICMSPresumido.AsCurrency;
                   mValor_BCCBS           := mValor_BCCBS           + PedidosItensValor_BCCBS.ascurrency;
                   mValor_CBS             := mValor_CBS             + PedidosItensValor_CBS.AsCurrency;
                   mValor_BCIBS           := mValor_BCIBS           + PedidosItensValor_BCIBS.AsCurrency;
                   mValor_IBS             := mValor_IBS             + PedidosItensValor_IBS.AsCurrency;
                   mValor_BCIS            := mValor_BCIS            + PedidosItensValor_BCIS.AsCurrency;
                   mValor_IS              := mValor_IS              + PedidosItensValor_IS.AsCurrency;

                   PedidosItens.Edit;
                                mValor_TotalProdutos := Roundto(mValor_TotalProdutos + PedidosItensValor_Total.Value, -4);
                                mValor_Descontos     := mValor_Descontos + PedidosItensDesconto_Valor.Value;
                                mDespesasOutros      := mDespesasOutros + (PedidosItensValor_DespesasOutros.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));

                                If ProdutosTipo_Conversao.Value <> 'M' then begin
                                   mValor_TotalDespesas := mValor_TotalDespesas + Roundto((PedidosItensValor_Despesa.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -2);
                                   mValor_AFRMM         := mValor_AFRMM + Roundto(PedidosItensValor_AFRMM.Value * (PedidosItensQuantidade.asfloat * ProdutosQuantidade_Unidade.asfloat), -4);
                                end else begin
                                   mValor_TotalDespesas := mValor_TotalDespesas + (PedidosItensValor_Despesa.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.Value));
                                   mValor_AFRMM         := mValor_AFRMM + Roundto(PedidosItensValor_AFRMM.value * (PedidosItensQuantidade.asfloat / ProdutosQuantidade_Unidade.asfloat), -4);
                                end;

                                mValor_OutrasICMS  := mValor_OutrasICMS  + PedidosItensValor_OutrasICMS.Value;
                                mValor_IsentasICMS := mValor_IsentasICMS + PedidosItensValor_IsentasICMS.Value;
                                mValor_OutrasIPI   := mValor_OutrasIPI   + PedidosItensValor_OutrasIPI.Value;
                                mValor_IsentasIPI  := mValor_IsentasIPI  + PedidosItensValor_IsentasIPI.Value;
                                mValor_DUMPING     := mValor_DUMPING     + (PedidosItensValor_Dumping.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));

                                // Base de calculo do IPI "Soma dos produtos que tiveram IPI".
                                If TipoNotaVisiveis_IPI.Value = False then begin
                                   PedidosItensAliquota_IPI.Value := 0;
                                   PedidosItensValor_IPI.Value    := 0;
                                   PedidosItensTotal_IPI.Value    := 0;
                                End else begin
                                   mBCIPI          := mBCIPI + RoundTo(PedidosItensValor_BCIPI.Value, -2);
                                   mValor_TotalIPI := mValor_TotalIPI + PedidosItensTotal_IPI.Value;
                                   //mValor_TotalIPI := mValor_TotalIPI + roundto((PedidosItensValor_IPI.value * PedidosItensQUantidade.asfloat), -2);
                                End;

                                // ICMS Operacional.
                                If TipoNotaVisiveis_ICMSOper.Value = False then begin
                                   PedidosItensValor_ICMSOper.Value    := 0;
                                   PedidosItensValor_BCICMSOper.Value  := 0;
                                   PedidosItensAliquota_ICMSOper.Value := 0;
                                   PedidosItensValor_ICMSReducao.Value := 0;
                                End else begin
                                   mBCICMS            := mBCICMS + Roundto(PedidosItensValor_BCICMSOper.Value, -2);
                                   mValorICMS         := mValorICMS + PedidosItensValor_ICMSOper.Value;
                                   mValorICMS_Reducao := mValorICMS_Reducao + PedidosItensValor_ICMSReducao.Value;
                                   If mValorICMS <> 0 then
                                      mAliquota_ICMSOper := PedidosItensAliquota_ICMSOper.Value
                                   else
                                      mAliquota_ICMSOper := 0;
                                End;

                                // ICMS Substitutivo.
                                If TipoNotaVisiveis_ICMSSub.Value = False then begin
                                   PedidosItensValor_ICMSSub.Value    := 0;
                                   PedidosItensValor_BCICMSSub.Value  := 0;
                                   PedidosItensAliquota_ICMSSub.Value := 0;
                                End else begin
                                   mBCICMS_Substitutivo    := Roundto(mBCICMS_Substitutivo + PedidosItensValor_BCICMSSub.Value, -4);
                                   mValorICMS_Substitutivo := mValorICMS_Substitutivo + PedidosItensValor_ICMSSub.Value;
                                End;

                                // Despesas.
                                If TipoNotaVisiveis_Despesas.Value = False then begin
                                   PedidosItensValor_Despesa.Value := 0;
                                end;

                                mValor_TotalMVA := mValor_TotalMVA + (PedidosItensValor_MVA.Value * PedidosItensQuantidade.Value);

                                mBCPIS          := mBCPIS          + Roundto(PedidosItensValor_BCPIS.Value, -2);
                                mBCPISST        := mBCPISST        + Roundto(PedidosItensValor_BCPISST.Value, -2);
                                mValor_PIS      := mValor_PIS      + Roundto(PedidosItensValor_PIS.Value, -2);
                                mValor_COFINS   := mValor_COFINS   + Roundto(PedidosItensValor_COFINS.Value, -2);
                                mValor_PIS2     := mValor_PIS2     + Roundto(PedidosItensValor_PIS2.Value, -2);
                                mValor_COFINS2  := mValor_COFINS2  + Roundto(PedidosItensValor_COFINS2.Value, -2);
                                mValor_PISST    := mValor_PISST    + Roundto(PedidosItensValor_PISST.Value, -2);
                                mValor_COFINSST := mValor_COFINSST + Roundto(PedidosItensValor_COFINSST.Value, -2);
                                mValor_Seguro   := mValor_Seguro   + Roundto((PedidosItensValor_Seguro.Value * PedidosItensQuantidade.AsFloat), -2);
                                mValor_Frete    := mValor_Frete    + Roundto((PedidosItensValor_Frete.Value  * PedidosItensQuantidade.AsFloat), -2);
                                mValor_IRPJ     := mValor_IRPJ     + PedidosItensValor_IRPJ.Value;
                                mValor_CSLL     := mValor_CSLL     + PedidosItensValor_CSLL.Value;
                                mValor_BCII     := mValor_BCII     + Roundto((PedidosItensValor_BCII.Value * PedidosItensQuantidade.AsFloat), -2);

                                If ProdutosTipo_Conversao.asstring <> 'M' then begin
                                   mVolume_PesoLiquido := mVolume_PesoLiquido + (PedidosItensPeso_Liquido.Value  * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                                   mVolume_PesoBruto   := mVolume_PesoBruto   + (PedidosItensPeso_Bruto.Value    * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                                   mValor_TotalIINF    := mValor_TotalIINF    + Roundto((PedidosItensValor_II.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -2);
                                end else begin
                                   mVolume_PesoLiquido := mVolume_PesoLiquido + (PedidosItensPeso_Liquido.Value  * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                                   mVolume_PesoBruto   := mVolume_PesoBruto   + (PedidosItensPeso_Bruto.Value    * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                                   mValor_TotalIINF    := mValor_TotalIINF    + Roundto((PedidosItensValor_II.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value)), -2);
                                End;

                                If cVolumes.Checked = true then begin
                                   mVolumes := mVolumes + (PedidosItensQuantidade.Value / ProdutosQuantidade_Volumes.Value);
                                End;

                                If PedidosItensValor_PIS.Value = 0 then begin
                                   PedidosItensValor_BCPIS.Value        := 0;
                                   PedidosItensAliquota_PIS.Value       := 0;
                                   PedidosItensAliquota_PISRed.Value    := 0;
                                   PedidosItensAliquota_COFINS.Value    := 0;
                                   PedidosItensAliquota_COFINSRed.Value := 0;
                                   PedidosItensValor_BCPISST.Value      := 0;
                                   PedidosItensValor_BCCOFINSST.Value   := 0;
                                End;
//                                mBCPIS   := mBCPIS + RoundTo(PedidosItensValor_BCPIS.Value, -2);
//                                mBCPISST := mBCPISST + RoundTo(PedidosItensValor_BCPISST.Value, -2);

                                PedidosItensTotal_Impostos.Value := 0;
                                If (Clientes.FieldByName('Consumidor_Final').AsBoolean = true) and (PedidosItensSaida_Entrada.AsInteger = 1) then begin
                                   PedidosItensTotal_Impostos.Value := Roundto(PedidosItensTotal_IPI.Value + (PedidosItensValor_II.Value*PedidosItensQuantidade.AsFloat) + PedidosItensValor_ICMSOper.Value + PedidosItensValor_PIS.Value + PedidosItensValor_COFINS.Value, -2);
                                   mTotalImpostos := mTotalImpostos + PedidosItensTotal_Impostos.Value;
                                End;

                                mValor_Inventario := mValor_Inventario + Roundto(PedidosItensValor_Inventario.Value * PedidosItensQuantidade.AsFloat, -2);
                                mValor_Lucro      := mValor_Lucro + (PedidosItensLucro_Valor.Value * PedidosItensQuantidade.Value);
                                mValor_BCFCPST    := mValor_BCFCPST + PedidosItensValor_BCFCPST.AsCurrency;
                                mValor_FCPST      := mValor_FCPST + PedidosItensValor_FCPST.AsCurrency;
                                mValor_CIF        := mValor_CIF + PedidosItensValor_CIF.AsCurrency;
                   PedidosItens.Post;
                   PedidosItens.Next;

                   Progresso.Position := Progresso.Position +1;
                   Application.ProcessMessages;
             End;

             // Rateia o valor do 'DESCONTO COMERCIAL" para todos os itens.
             If (Trim(PedidosDesconto_Tipo.AsString) = 'COMERCIAL') and (PedidosItensDesconto_Valor.Value = 0) then begin
                mRateio_Descontos    := PedidosTotal_Descontos.AsFloat / mValor_TotalProdutos;
                mValor_TotalProdutos := 0;
                PedidosItens.First;

                While not PedidosItens.Eof do Begin
                      PedidosItens.Edit;
                                   PedidosItensDesconto_Valor.Value := mRateio_Descontos * PedidosItensValor_Unitario.AsFloat;
                                   PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value);
                                   PedidosItensValor_Total.Value    := (PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value);
                                   mValor_TotalProdutos             := (mValor_TotalProdutos + PedidosItensValor_Total.Value);
                      PedidosItens.Post;
                      PedidosItens.Next;
                End;
             End;

             Pedidos.Edit;
                     PedidosValor_TotalProdutos.Value    := mValor_TotalProdutos;
                     PedidosBCIPI.Value                  := mBCIPI;
                     PedidosValor_TotalIPI.Value         := mValor_TotalIPI;
                     PedidosBCICMS.Value                 := mBCICMS;
                     PedidosValor_ICMS.Value             := mValorICMS;
                     PedidosAliquota_ICMSOper.Value      := mAliquota_ICMSOper;
                     PedidosBCICMS_Substitutivo.Value    := mBCICMS_Substitutivo;
                     PedidosValorICMS_Substitutivo.Value := mValorICMS_Substitutivo;
                     PedidosValor_ICMSReducao.Value      := mValorICMS_Reducao;
                     PedidosValor_TotalMVA.Value         := mValor_TotalMVA;
                     PedidosVolume_PesoLiquido.Value     := mVolume_PesoLiquido;
                     PedidosVolume_PesoBruto.Value       := mVolume_PesoBruto;

                     If (Trim(PedidosDesconto_Tipo.AsString) <> 'COMERCIAL') and (mValor_Descontos > 0) then PedidosTotal_Descontos.Value := mValor_Descontos;
                     PedidosValor_PIS.Value              := mValor_PIS;
                     PedidosValor_COFINS.Value           := mValor_COFINS;
                     PedidosValor_PIS2.Value             := mValor_PIS2;
                     PedidosValor_COFINS2.Value          := mValor_COFINS2;
                     PedidosValor_PISST.Value            := mValor_PISST;
                     PedidosValor_COFINSST.Value         := mValor_COFINSST;
                     PedidosValor_BCII.Value             := Roundto(mValor_BCII, -4);
                     PedidosValor_TotalII.Value          := Roundto(mValor_TotalIINF, -4);
                     PedidosValor_OutrasDespesas.Value   := mValor_TotalDespesas;
                     PedidosValor_Seguro.Value           := mValor_Seguro;
                     PedidosTotal_Frete.Value            := mValor_Frete;

                     // Verifique quais campos estão desmarcados para impressão e zera no pedido.
                     If TipoNotaVisiveis_ICMSOper.Value = False then begin
                        PedidosAliquota_ICMSOper.Value := 0;
                        PedidosBCICMS.Value            := 0;
                        PedidosValor_ICMS.Value        := 0;
                     End;
                     If TipoNotaVisiveis_ICMSSub.Value = False then begin
                        PedidosAliquota_ICMSSub.Value       := 0;
                        PedidosBCICMS_Substitutivo.Value    := 0;
                        PedidosValorICMS_Substitutivo.Value := 0;
                     End;
                     If TipoNotaVisiveis_Frete.Value    = False then PedidosTotal_Frete.Value          := 0;
                     If TipoNotaVisiveis_Seguro.Value   = False then PedidosValor_Seguro.Value         := 0;
                     //If TipoNotaVisiveis_Despesas.Value = False then PedidosValor_OutrasDespesas.Value := 0;
                     If TipoNotaVisiveis_IPI.Value      = False then PedidosValor_TotalIPI.Value       := 0;

                     PedidosValor_OutrasICMS.Value     := mValor_OutrasICMS;
                     PedidosValor_IsentasICMS.Value    := mValor_IsentasICMS;
                     PedidosValor_OutrasIPI.Value      := mValor_OutrasIPI;
                     PedidosValor_IsentasIPI.Value     := mValor_IsentasIPI;
                     PedidosCalcula_Volumes.Value      := cVolumes.Checked;
                     PedidosValor_ICMSDesonerado.Value := mValorICMSDeson;

                     If cVolumes.Checked = true then begin
                        PedidosVolume_Quantidade.Value := mVolumes;
                     End;
                     PedidosValor_Dumping.Value := mValor_Dumping;

                     // Calculo do valor do 'DESCONTO FINANCEIRO".
                     If (Trim(PedidosDesconto_Tipo.AsString) = 'FINANCEIRO') then begin
                        If (PedidosDesconto_Percentual.Value > 0) then PedidosTotal_Descontos.Value := Percentual(PedidosValor_TotalProdutos.Value, PedidosDesconto_Percentual.Value);
                     End;
                     PedidosValor_DespesasOutros.Value := mDespesasOutros;
                     PedidosValor_BCPIS.Value          := mBCPIS;
                     PedidosValor_BCPISST.Value        := mBCPISST;
                     PedidosValor_BCCOFINSST.Value     := mBCPISST;
                     PedidosTotal_Impostos.Value       := mTotalImpostos;
                     PedidosValor_IRPJ.Value           := mValor_IRPJ;
                     PedidosValor_CSLL.Value           := mValor_CSLL;
                     PedidosValor_Inventario.Value     := mValor_Inventario;
                     PedidosLucro_Valor.Value          := mValor_Lucro;
                     PedidosValor_BCICMSDest.Value     := mValor_BCICMSDest;
                     PedidosValor_ICMSDest.Value       := mValor_ICMSDest;
                     PedidosValor_BCDIFAL.Value        := mBCDIFAL;
                     PedidosDIFAL_Valor.Value          := mDIFAL_Valor;
                     PedidosDIFAL_ValorOrig.Value      := mDIFAL_ValorOrig;
                     PedidosDIFAL_ValorDest.Value      := mDIFAL_ValorDest;
                     PedidosFCP_ValorDest.Value        := mFCP_ValorDest;
                     PedidosFCP_ICMSDest.Value         := mFCP_ICMSDest;
                     PedidosFCP_ICMSOrig.Value         := mFCP_ICMSORIG;
                     PedidosDIFAL_AliqInterna.Value    := ICMSICMS_Interno.Value;
                     PedidosValor_BCFCP.Value          := mValor_BCFCP;
                     PedidosValor_FCP.Value            := mValor_FCP;
                     PedidosValor_BCFCPST.Value        := mValor_BCFCPST;
                     PedidosValor_FCPST.Value          := mValor_FCPST;
                     PedidosValor_CIF.Value            := mValor_CIF;
                     PedidosValor_AFRMM.Value          := mValor_AFRMM;

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
                     
                     PedidosValor_BCCBS.value := mValor_BCCBS;
                     PedidosValor_CBS.value   := mValor_CBS;
                     PedidosValor_BCIBS.Value := mValor_BCIBS;
                     PedidosValor_IBS.value   := mValor_IBS;
                     PedidosValor_BCIS.value  := mValor_BCIS;
                     PedidosValor_IS.value    := mValor_IS;
             Pedidos.Post;

             If Trim(TipoNotaCalculo_OutrasDespesas.AsString) <> '' then begin
                Pedidos.Edit;
                        PedidosValor_OutrasDespesas.Value := roundto(PedidosValor_OutrasDespesas.Value + CalculaMacro('Calculo_OutrasDespesas'), -2);
                Pedidos.Post;
             End;
             If Trim(TipoNotaCalculo_TotalPedido.AsString) <> '' then begin
                Pedidos.Edit;
                        PedidosValor_TotalNota.Value := CalculaMacro('Calculo_TotalPedido');
                Pedidos.Post;
             End;
             If TipoNotaVisiveis_Despesas.Value = False then begin 
                Pedidos.Edit; 
                        PedidosValor_OutrasDespesas.Value := 0;
                Pedidos.Post;
             end;

             // Verifica se o total das despesas rateadas bate com o total das despesas real na NF de Entrada e ajusta no último item caso aja diferença.
             {
             if PedidosValor_OutrasDespesas.ascurrency > 0 then begin
                with tSoma do begin
                     sql.Clear;
                     sql.add('select Difer = round((select Valor_OutrasDespesas from Pedidos where Numero = :pPed) - (select sum(round(Valor_Despesa * Quantidade, 2)) from PedidosItens where Pedido = :pPed), 2)');
                     parambyname('pPed').AsInteger := PedidosNumero.AsInteger;
                     open;
                     mDifer := FieldByName('Difer').AsCurrency;
                     if mDifer < 1 then begin
                        sql.Clear;
                        sql.Add('update PedidosItens set Valor_Despesa = Valor_Despesa + (:pDif/Quantidade) where Pedido = :pPed and Item = (select max(Item) from PedidosItens where Pedido = :pPed)');
                        sql.Add('update Pedidos Set Valor_OutrasDespesas = (select sum(round(Valor_Despesa * Quantidade, 2)) from PedidosItens where Pedido = :pPed)');
                        parambyname('pPed').AsInteger := PedidosNumero.AsInteger;
                        parambyname('pDif').value     := mDifer;
                        execute;
                     end;
                end;
             end;
             }
             // Salva os valores proporcionais de rateios.
             tFOB_DI.SQL.Clear;
             tFOB_DI.SQL.Add('SELECT Quantidade * (SELECT SUM(Valor_SemAdvalorem)     FROM Adicoes AD WHERE(AD.DI = PI.DI) AND (AD.Codigo_Mercadoria = PI.Codigo_Mercadoria) AND (AD.Sequencia_SISCOMEX = PI.Sequencia_SISCOMEX)) AS FOB_Item,');
             tFOB_DI.SQL.Add('       Quantidade * (SELECT SUM(Valor_UnitarioReal) FROM Adicoes AD WHERE(AD.DI = PI.DI) AND (AD.Codigo_Mercadoria = PI.Codigo_Mercadoria) AND (AD.Sequencia_SISCOMEX = PI.Sequencia_SISCOMEX)) AS FOB_ItemReal');
             tFOB_DI.SQL.Add('INTO   #Temp');
             tFOB_DI.SQL.Add('FROM   PedidosItens PI');
             tFOB_DI.SQL.Add('WHERE  (Pedido = :pPedido)');
             tFOB_DI.SQL.Add('SELECT SUM(FOB_Item) AS FOB_Item, SUM(FOB_ItemReal) AS FOB_ItemReal FROM #Temp');
             tFOB_DI.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
             //tFOB_DI.SQL.SaveToFile('c:\temp\PedidosItens_FOB_DI.sql');
             tFOB_DI.Open;

             PedidosRateio.SQL.Clear;
             PedidosRateio.SQL.Add('DELETE FROM PedidosRateio WHERE(Pedido = :pPedido)');
             PedidosRateio.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
             PedidosRateio.Execute;
             PedidosRateio.SQL.Clear;
             PedidosRateio.SQL.Add('SELECT * FROM PedidosRateio WHERE(Pedido = :pPedido)');
             PedidosRateio.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
             PedidosRateio.Open;

             tRegistro.SQL.Clear;
             tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PedidosRateio');
             tRegistro.Open;

             PedidosRateio.Append;
                           PedidosRateioRegistro.Value    := tRegistro.FieldByName('Registro').AsInteger;
                           PedidosRateioPedido.Value      := PedidosNumero.Value;
                           PedidosRateioFOB_ME.Value      := tFOB_DI.FieldByName('FOB_Item').AsCurrency;
                           PedidosRateioFOB_Real.Value    := tFOB_DI.FieldByName('FOB_ItemReal').AsCurrency;
                           PedidosRateioII.Value          := Roundto(PedidosValor_TotalII.value, -4);
                           PedidosRateioDumping.Value     := PedidosValor_Dumping.AsCurrency;
                           PedidosRateioFrete_Real.Value  := mValor_Frete;
                           PedidosRateioSeguro_Real.Value := mValor_Seguro;
                           PedidosRateioSeguro_ME.Value   := 0;
                           PedidosRateioFrete_ME.Value    := 0;

                           if PedidosTaxa_Cambio.AsFloat > 0 then begin
                              PedidosRateioSeguro_ME.Value := mValor_Seguro / PedidosTaxa_Cambio.AsFloat;
                              PedidosRateioFrete_ME.Value  := mValor_Frete  / PedidosTaxa_Cambio.AsFloat;
                           end;
             PedidosRateio.Post;

             // Salva as despesas que foram utilizadas na nota fiscal.
             PedidosDespesas.SQL.Clear;
             PedidosDespesas.SQL.Add('DELETE FROM PedidosDespesas WHERE(Pedido = :pPedido)');
             PedidosDespesas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
             PedidosDespesas.Execute;
             PedidosDespesas.SQL.Clear;
             PedidosDespesas.SQL.Add('SELECT * FROM PedidosDespesas WHERE(Pedido = :pPedido)');
             PedidosDespesas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
             PedidosDespesas.Open;

             tSalvaDesp.SQL.Clear;
             tSalvaDesp.SQL.Add('SELECT Classificacao,');
             tSalvaDesp.SQL.Add('       Processo,');
             If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                tSalvaDesp.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Codigo = PR.Classificacao)) AS Descricao,');
             end else begin
                tSalvaDesp.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = PR.Classificacao)) AS Descricao,');
             End;

             If ConfiguracaoValor_Despesas.AsInteger = 0 then
                tSalvaDesp.SQL.Add('       SUM(ISNULL(Valor_Total,0)) AS Total_Despesa,')
             else
                tSalvaDesp.SQL.Add('       SUM(ISNULL(Valor_Total,0)+ISNULL(Desconto,0)) AS Total_Despesa,');

             tSalvaDesp.SQL.Add('         (SELECT ROUND(SUM(Valor_SemAdValorem * Quantidade), 2) FROM Adicoes WHERE DI IN (SELECT DISTINCT DI FROM PedidosItens WHERE Pedido = :pPedido) ) AS FOB');

             tSalvaDesp.SQL.Add('FROM   PagarReceber PR');
             tSalvaDesp.SQL.Add('WHERE  (Tipo = ''P'')');
             tSalvaDesp.SQL.Add('  AND  (Processo IN(SELECT DISTINCT Processo FROM PedidosItens WHERE(Pedido = :pPedido)))');
             If PedidosSaida_Entrada.AsInteger = 0 then begin
                tSalvaDesp.SQL.Add('  AND  (ISNULL(Custo_Entrada, 0) = 1 OR (ISNULL(Custo_Seletivo, 0) = 1 AND (SELECT COUNT(*) FROM NCM WHERE NCM IN(SELECT NCM FROM PedidosItens WHERE(Pedido = :pPedido)) AND NCM.Custo_Seletivo = 1) > 0 ))');
             end else begin
                tSalvaDesp.SQL.Add('  AND  (ISNULL(CustoConta, 0) = 1 OR (ISNULL(Custo_Seletivo, 0) = 1 AND (SELECT COUNT(*) FROM NCM WHERE NCM IN(SELECT NCM FROM PedidosItens WHERE(Pedido = :pPedido)) AND NCM.Custo_Seletivo = 1) > 0 ))');
             End;
             tSalvaDesp.SQL.Add('GROUP BY Classificacao, Processo');

             tSalvaDesp.SQL.Add('UNION ALL');
             tSalvaDesp.SQL.Add('SELECT Classificacao,');
             tSalvaDesp.SQL.Add('       Processo,');
             If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                tSalvaDesp.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Codigo = PR.Classificacao))+'' (MESTRE)'' AS Descricao,');
             end else begin
                tSalvaDesp.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = PR.Classificacao))+'' (MESTRE)'' AS Descricao,');
             End;
             tSalvaDesp.SQL.Add('       SUM(ISNULL(Valor_Total,0)+ISNULL(Desconto,0)) AS Total_Despesa,');
             tSalvaDesp.SQL.Add('         (SELECT ROUND(SUM(Valor_SemAdValorem * Quantidade), 2) FROM Adicoes WHERE DI IN (SELECT DISTINCT DI FROM PedidosItens WHERE Pedido = :pPedido) ) AS FOB');
             tSalvaDesp.SQL.Add('FROM   PagarReceber PR');
             tSalvaDesp.SQL.Add('WHERE  (Tipo = ''P'')');
             tSalvaDesp.SQL.Add('  AND  ISNULL(Processo, '''') <> '''' AND Processo IN(SELECT DISTINCT Processo_Mestre FROM ProcessosDocumentos WHERE Processo IN (SELECT DISTINCT Processo FROM PedidosItens WHERE Pedido = :pPedido))');
             tSalvaDesp.SQL.Add('  AND  (ISNULL(CustoConta, 0) = 1 OR (ISNULL(Custo_Seletivo, 0) = 1 AND (SELECT COUNT(*) FROM NCM WHERE NCM IN(SELECT NCM FROM PedidosItens WHERE(Pedido = :pPedido)) AND NCM.Custo_Seletivo = 1) > 0 ))');
             tSalvaDesp.SQL.Add('GROUP BY Classificacao, Processo');
             tSalvaDesp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
             //tSalvaDesp.SQL.SaveToFile('c:\temp\PedidosItens_Despesas.sql');
             tSalvaDesp.Open;

             While not tSalvaDesp.Eof do begin
                   If PedidosDespesas.Locate('Pedido; Classificacao; Processo', VarArrayOf([PedidosNumero.Value, tSalvaDesp.FieldByName('Classificacao').AsString, tSalvaDesp.FieldByName('Processo').AsString]), [loCaseInsensitive]) = false then begin
                      PedidosDespesas.Append;
                   end else begin
                      PedidosDespesas.Edit;
                   End;

                   PedidosDespesasPedido.Value        := PedidosNumero.Value;
                   PedidosDespesasClassificacao.Value := tSalvaDesp.FieldByName('Classificacao').AsString;
                   PedidosDespesasProcesso.Value      := tSalvaDesp.FieldByName('Processo').AsString;
                   PedidosDespesasDescricao.Value     := tSalvaDesp.FieldByName('Descricao').AsString;
                   PedidosDespesasValor_Total.Value   := PedidosDespesasValor_Total.Value + tSalvaDesp.FieldByName('Total_Despesa').Value;
                   PedidosDespesasValor_Nota.Value    := PedidosDespesasValor_Nota.ascurrency + ((tSalvaDesp.FieldByName('Total_Despesa').ascurrency / tSalvaDesp.FieldByName('FOB').ascurrency) * tFOB_DI.FieldByName('FOB_Item').AsCurrency);
                   PedidosDespesas.Post;
                   tSalvaDesp.Next;
             End;
          End;

          if PedidosValor_TotalNota.AsCurrency = 0 then begin
             TabParcelas.SQL.Clear;
             TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
             TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(PedidosNumero.Value))+Trim(InttoStr(PedidosCliente_Codigo.Value));
             TabParcelas.Execute;
             TabParcelas.SQL.Clear;
          end;
     End;

     Pedido.cFormula.Visible := false;
     Pedido.cFormula.Clear;
     Pedido.cFormula.Text := cFormula.Text;

     Screen.Cursor := crDefault;
End;

procedure TPedido_Itens.bRatearClick(Sender: TObject);
begin
     Pedido_ItensOutrosRateioValor := TPedido_ItensOutrosRateioValor.Create(Self);
     Pedido_ItensOutrosRateioValor.Caption := Caption;
     Pedido_ItensOutrosRateioValor.ShowModal;
end;

procedure TPedido_Itens.CalculaFCP(pAliquotaDIFAL: real);
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



end.
