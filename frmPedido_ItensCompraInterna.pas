unit frmPedido_ItensCompraInterna;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.ComCtrls, Vcl.StdCtrls, DBCtrls, RXDBCtrl, Vcl.ExtCtrls,
  Grids, DBGrids, RXCtrls, Menus, CalcExpress, FUNCOES, Clipbrd, Math, system.UITypes, Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TDBGridDescendant = class(TDBGrid);
  TPedido_ItensCompraInterna = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bInclui_Todos: TButton;
    GradeItens: TRxDBGrid;
    gTerceiros: TGroupBox;
    Grade: TRxDBGrid;
    bInclui_Item: TButton;
    bRemove_Item: TButton;
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
    tItem: TMSQuery;
    gItens: TGroupBox;
    tSoma: TMSQuery;
    cLucro: TCurrencyEdit;
    cLucroValor: TCurrencyEdit;
    tDespesas: TMSQuery;
    tDumping: TMSQuery;
    tFOB_DI: TMSQuery;
    cICMS: TCheckBox;
    Progresso: TProgressBar;
    StaticText5: TStaticText;
    cDesconto: TCurrencyEdit;
    cDescontoValor: TCurrencyEdit;
    StaticText1: TStaticText;
    cFormula: TMemo;
    tFOB: TMSQuery;
    StaticText23: TStaticText;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit1: TDBEdit;
    StaticText6: TStaticText;
    DBEdit2: TDBEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GradeMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure GradeItensDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GradeItensDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure bInclui_TodosClick(Sender: TObject);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bInclui_ItemClick(Sender: TObject);
    procedure bRemove_ItemClick(Sender: TObject);
    procedure bRemove_TodosClick(Sender: TObject);
    procedure AdicionaUm;
    procedure LigaBotoes;
    Function  CalculaMacro(Campo:String):Real;
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure GradeEnter(Sender: TObject);
    procedure GradeItensEnter(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mQuantidade         : Double;
    mErro               : Integer;
    mTotalProdutos      : Currency;
    mRateioLucro        : Currency;
    mValorInformado     : Real;
    mBCIPIInformado     : Currency;
    mBCICMSOperInformado: Currency;
    mBCICMSSubInformado : Currency;
    mTotalFOB           : Currency;
  end;

var
  Pedido_ItensCompraInterna: TPedido_ItensCompraInterna;

implementation

Uses frmDados, frmDMFiscal, frmPedido_ItensQuantidade_CInterna;

{$R *.dfm}

procedure TPedido_ItensCompraInterna.FormShow(Sender: TObject);
begin
        Screen.Cursor  := crSQLWait;
        With Dados, dmFiscal do begin
             PedidosItens.Close;
             PedidosItens.SQL.Clear;
             PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE (Pedido = :pPedido)');
             PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
             PedidosItens.Open;

             // Totalizando o total dos produtos para os rateios.
             tSoma.Close;
             tSoma.SQL.Clear;
             tSoma.SQL.Add('SELECT SUM(Valor_Liquido) AS Total FROM NotasTerceirosItens WHERE (Processo = :pProcesso)');
             tSoma.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
             tSoma.Open;

             mTotalProdutos := tSoma.FieldByName('Total').AsCurrency;

             Produtos.Close;
             Produtos.SQL.Clear;
             Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
             Produtos.Open;

             //-------------------------------------------------------( AJUSTA O CAMPO DISPONÍVEL PARA FATURAMENTO )--------------------------------------------------------
             NotasTerceirosItens.Close;
             NotasTerceirosItens.SQL.Clear;
             NotasTerceirosItens.SQL.Add('UPDATE NotasTerceirosItens SET Disponivel = Quantidade +');
             NotasTerceirosItens.SQL.Add('                                            (');
             NotasTerceirosItens.SQL.Add('                                             SELECT ISNULL(SUM(Quantidade), 0)');
             NotasTerceirosItens.SQL.Add('                                             FROM   NotasItens NI');
             NotasTerceirosItens.SQL.Add('                                             WHERE (NI.Processo = NotasTerceirosItens.Processo)');
             NotasTerceirosItens.SQL.Add('                                               AND (NI.Cancelada <> 1)');
             NotasTerceirosItens.SQL.Add('                                               AND (NI.Movimenta_Estoque = 1)');
             NotasTerceirosItens.SQL.Add('                                               AND (NI.Codigo_Mercadoria = NotasTerceirosItens.Codigo_Mercadoria)');
             NotasTerceirosItens.SQL.Add('                                               AND (NI.Saida_Entrada = 0)');
             NotasTerceirosItens.SQL.Add('                                            )');
             NotasTerceirosItens.SQL.Add('                                            -');
             NotasTerceirosItens.SQL.Add('                                            (');
             NotasTerceirosItens.SQL.Add('                                             SELECT ISNULL(SUM(Quantidade), 0)');
             NotasTerceirosItens.SQL.Add('                                             FROM   NotasItens NI');
             NotasTerceirosItens.SQL.Add('                                             WHERE (NI.Processo = NotasTerceirosItens.Processo)');
             NotasTerceirosItens.SQL.Add('                                               AND (NI.Nota_Terceiros = NotasTerceirosItens.Nota)');
             NotasTerceirosItens.SQL.Add('                                               AND (NI.Cancelada <> 1)');
             NotasTerceirosItens.SQL.Add('                                               AND (NI.Movimenta_Estoque = 1)');
             NotasTerceirosItens.SQL.Add('                                               AND (NI.Codigo_Mercadoria = NotasTerceirosItens.Codigo_Mercadoria)');
             NotasTerceirosItens.SQL.Add('                                               AND (NI.Saida_Entrada = 1)');
             NotasTerceirosItens.SQL.Add('                                            )');
             NotasTerceirosItens.SQL.Add('                                            -');
             NotasTerceirosItens.SQL.Add('                                            (');
             NotasTerceirosItens.SQL.Add('                                             SELECT ISNULL(SUM(Quantidade), 0)');
             NotasTerceirosItens.SQL.Add('                                             FROM   PedidosItens PD');
             NotasTerceirosItens.SQL.Add('                                             WHERE (PD.Processo = NotasTerceirosItens.Processo)');
             NotasTerceirosItens.SQL.Add('                                               AND (PD.Nota_Terceiros = NotasTerceirosItens.Nota)');
             NotasTerceirosItens.SQL.Add('                                               AND (PD.Movimenta_Estoque = 1)');
             NotasTerceirosItens.SQL.Add('                                               AND (PD.Codigo_Mercadoria = NotasTerceirosItens.Codigo_Mercadoria)');
             NotasTerceirosItens.SQL.Add('                                               AND (PD.Saida_Entrada = 1)');
             NotasTerceirosItens.SQL.Add('                                            )');
             NotasTerceirosItens.SQL.Add('WHERE (Processo = :pProcesso)');
             NotasTerceirosItens.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
             NotasTerceirosItens.Execute;
             //------------------------------------------------------------------------------------------------------------------------------------------------------------
             NotasTerceirosItens.SQL.Clear;
             NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso) AND (Disponivel > 0)');
             NotasTerceirosItens.SQL.Add('ORDER BY Codigo_Mercadoria');
             NotasTerceirosItens.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
             NotasTerceirosItens.Open;

             CSTTabelaB.SQL.Clear;
             CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY Classificacao');
             CSTTabelaB.Open;

             CSTIPI.SQL.Clear;
             CSTIPI.SQL.Add('SELECT * FROM CSTIPI ORDER BY Classificacao');
             CSTIPI.Open;

             CSTPIS.SQL.Clear;
             CSTPIS.SQL.Add('SELECT * FROM CSTPIS ORDER BY Classificacao');
             CSTPIS.Open;

             CSTCOFINS.SQL.Clear;
             CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS ORDER BY Classificacao');
             CSTCOFINS.Open;

             Campos.SQL.Clear;
             Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
             Campos.Open;

             // Totalizando as despesas de custo do processo no financeiro.
             tDespesas.SQL.Clear;
             If PedidosSaida_Entrada.AsInteger = 0 then begin
                If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada  = 1) AND (Tipo = ''P'')), 0) +');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (LTRIM(RTRIM(Processo))  <> '''') AND (PagarReceber.Custo_Entrada = 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros   = 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo');
                end else begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto,0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada = 1)  AND (Tipo = ''P'')), 0) +');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto,0)) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (LTRIM(RTRIM(Processo)) <> '''')  AND (PagarReceber.Custo_Entrada = 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto,0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros  = 1)  AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto,0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo');
                End;
             end else begin
                If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta    = 1) AND (Tipo = ''P'')), 0) +');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.CustoConta = 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros  = 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta   <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo');
                end else begin
                   tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto,0)) FROM PagarReceber WHERE (Processo = :pProcesso)       AND (PagarReceber.CustoConta = 1) AND (Tipo = ''P'')), 0) +');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto,0)) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.CustoConta = 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto,0)) FROM PagarReceber WHERE (Processo = :pProcesso)       AND (PagarReceber.Custo_Outros = 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                   tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto,0)) FROM PagarReceber WHERE (Processo = :pProcesso)       AND (PagarReceber.CustoConta <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo');
                End;
             End;
             tDespesas.ParamByName('pProcesso').AsString       := ProcessosDOCProcesso.Value;
             tDespesas.ParamByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.Value;
             tDespesas.Open;

             Pedidos.Edit;
                     PedidosValor_OutrasDespesas.Value := tDespesas.FieldByName('Valor_Despesas').Value;
             Pedidos.Post;

             // Totalizando o fob dos itens que tem Dumping.
             tDumping.SQL.Clear;
             tDumping.SQL.Add('SELECT SUM(Valor_Unitario * Quantidade) AS TotalFOB_Dumping FROM Adicoes WHERE(DI = :pDI) AND (Dumping = 1)');
             tDumping.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.AsString;
             tDumping.Open;

             gTerceiros.Caption := 'Itens Disponíveis: ['+InttoStr(NotasTerceirosItens.RecordCount)+']';
             gItens.Caption     := 'Itens do Pedidos: ['+InttoStr(PedidosItens.RecordCount)+']';
        End;

        LigaBotoes;
        Screen.Cursor := crDefault;
end;

procedure TPedido_ItensCompraInterna.GradeItensDragOver(Sender,Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
        Accept := Source is TRxDBGrid;
end;

procedure TPedido_ItensCompraInterna.GradeMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
        Grade.BeginDrag(True);
end;

procedure TPedido_ItensCompraInterna.GradeItensDragDrop(Sender,Source: TObject; X, Y: Integer);
begin
      bInclui_Item.Click;
      dmFiscal.NotasTerceirosItens.Refresh;
      LigaBotoes;
end;

procedure TPedido_ItensCompraInterna.bInclui_TodosClick(Sender: TObject);
begin
      cFormula.Clear;
      With Dados, dmFiscal do begin
           Progresso.Position := 0;
           Progresso.Max      := NotasTerceirosItens.RecordCount;

           NotasTerceirosItens.First;
           mQuantidade := 0;
           While not NotasTerceirosItens.Eof do begin
                 mQuantidade := NotasTerceirosItensDisponivel.Value;

                 AdicionaUm;
                 NotasTerceirosItens.Next;
                 Progresso.Position  := Progresso.Position +1;
                 Application.ProcessMessages;
           End;
           If mErro = 1 then ShowMessage('Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota não encontrada.');
           If mErro = 2 then ShowMessage('Houve um erro de calculo na fórmula do ICMS Operacional, Alíquota não encontrada.');
           If mErro = 3 then ShowMessage('Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota do MVA não encontrada.');
           NotasTerceirosItens.EnableControls;
           PedidosItens.EnableControls;
           NotasTerceirosItens.Refresh;
           NotasTerceirosItens.First;
           PedidosItens.First;

           gTerceiros.Caption := 'Itens Disponíveis: ['+InttoStr(NotasTerceirosItens.RecordCount)+']';
           gItens.Caption     := 'Itens do Pedidos: ['+InttoStr(PedidosItens.RecordCount)+']';
      End;
      Progresso.Position := 0;
      LigaBotoes;
end;

procedure TPedido_ItensCompraInterna.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
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
                   //Tempo que demora para exibir novamente, se continuar com o mouse sobre o DBGrid, ReshowTimeout := 7000;
                   GridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                   Try
                      curPos := DataLink.ActiveRecord;
                      Try
                         DataLink.ActiveRecord := y-1;
                         if not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                            HintStr := '';
                            With Dados do begin
                                 Produtos.Locate('Codigo', dmFiscal.NotasTerceirosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
                                 mTexto := Dados.ProdutosDescricao.AsString;
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
                      Finally
                         DataLink.ActiveRecord := CurPos;
                      End;
                      CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                   Except
                      CanShow := False
                   End;
           End;
      End;
end;

procedure TPedido_ItensCompraInterna.FormCreate(Sender: TObject);
begin
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;
procedure TPedido_ItensCompraInterna.bInclui_ItemClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Pedido_ItensQuantidade_CInterna := TPedido_ItensQuantidade_CInterna.Create(Self);
           Pedido_ItensQuantidade_CInterna.Caption           := Caption;
           Pedido_ItensQuantidade_CInterna.cQuantidade.Value := NotasTerceirosItensDisponivel.Value;
           Pedido_ItensQuantidade_CInterna.ShowModal;

           If TipoNotaSaida_Entrada.Value = 1 then begin
              If mQuantidade > 0 then begin
                 If TipoNotaMovimenta_Estoque.Value = True then begin
                    If (mQuantidade > NotasTerceirosItensDisponivel.Value) then begin
                       ShowMessage('Quantidade de produto indisponivel.');
                       Abort;
                    End;
                 end else begin
                    If (mQuantidade > NotasTerceirosItensQuantidade.Value) then begin
                       ShowMessage('Quantidade de produto indisponivel.');
                       Abort;
                    End;
                 End;
                 If (mQuantidade < 1) then begin
                    Abort;
                 End;
              end else begin
                 Abort;
              End;
           End
      End;
      AdicionaUm;
      If mErro = 1 then ShowMessage('Houve um erro de calculo na fórmula do ICMS Substitutivo, Alíquota não encontrada.');
      dmFiscal.NotasTerceirosItens.Refresh;
      LigaBotoes;
      mValorInformado := 0;
      mQuantidade     := 0;
end;

procedure TPedido_ItensCompraInterna.AdicionaUm;
Var
   mTextoLimpo: String;
   mUF        : String;
   mCST       : String;
   mApuracao1 : Real;
   mApuracao2 : Real;
begin
      mErro := 0;     // 1=ICMS Subst.,  2=ICMS Operacional,  3=MVA.
      With Dados, dmFiscal do begin
           Produtos.Locate('Codigo', NotasTerceirosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
           NCM.Locate('NCM', NotasTerceirosItensNCM.Value, [loCaseInsensitive]);

           // Pegando o numero do item.
           tItem.SQL.Clear;
           tItem.SQL.Add('SELECT MAX(Sequencia) AS Sequencia FROM PedidosItens WHERE(Pedido = :pPedido)');
           tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           tItem.Open;

           PedidosItens.Append;
                        PedidosItensPedido.Value             := PedidosNumero.Value;
                        PedidosItensItem.Value               := NotasTerceirosItensItem.AsInteger;
                        PedidosItensSequencia.Value          := tItem.FieldByName('Sequencia').AsInteger+1;
                        PedidosItensSequencia_SISCOMEX.Value := 0;
                        PedidosItensRegistro_Adicao.Value    := NotasTerceirosItensRegistro_Adicao.Value;
                        PedidosItensSaida_Entrada.Value      := PedidosSaida_Entrada.Value;
                        tItem.Close;

                        If NotasTerceirosItensAdicao.Value > 0 then
                           PedidosItensAdicao.Value := NotasTerceirosItensAdicao.Value
                        else
                           PedidosItensAdicao.Value := 1;

                        PedidosItensMovimenta_Inventario.Value  := TipoNotaMovimenta_Inventario.Value;
                        PedidosItensMovimenta_Estoque.Value     := TipoNotaMovimenta_Estoque.Value;
                        PedidosItensMovimenta_EstoqueRep.Value  := TipoNotaMovimenta_EstoqueRep.Value;
                        PedidosItensApuracao_PISCOFINS.Value    := PedidosApuracao_PISCOFINS.Value;
                        PedidosItensProcesso.Value              := PedidosProcesso.Value;
                        PedidosItensDI.Value                    := PedidosDI.Value;
                        PedidosItensLucro.Value                 := cLucro.Value;
                        PedidosItensLucro_Valor.Value           := cLucroValor.Value;
                        PedidosItensNota_Terceiros.Value        := NotasTerceirosItensNota.AsInteger;
                        PedidosItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.Value;
                        PedidosItensTipo_Nota.Value             := PedidosTipo_Nota.Value;
                        PedidosItensCodigo_Mercadoria.Value     := NotasTerceirosItensCodigo_Mercadoria.Value;
                        PedidosItensTipo_Nota.Value             := PedidosTipo_Nota.Value;

                        If Trim(ProdutosCodigo_Fabricante.Value) <> '' then
                           PedidosItensCodigo_Fabricante.Value := ProdutosCodigo_Fabricante.Value
                        else
                           PedidosItensCodigo_Fabricante.Value := AdicoesCodigo_Mercadoria.AsString;

                        // Remove caracteres de controle da descrição do produto.
                        mTextoLimpo := RemoveCaracter(#13,'', ProdutosDescricao.Value);
                        mTextoLimpo := RemoveCaracter(#12,'', mTextoLimpo);
                        mTextoLimpo := RemoveCaracter(#10,'', mTextoLimpo);
                        mTextoLimpo := RemoveCaracter('<{'+NotasTerceirosItensCodigo_Mercadoria.AsString+'}>', '', mTextoLimpo);
                        PedidosItensDescricao_Mercadoria.Value := mTextoLimpo;

                        If cFormula.Visible = True then begin
                           cFormula.Lines.Add('   ITEM :'+Dados.PedidosItensCodigo_Mercadoria.AsString + ' - '+Dados.PedidosItensDescricao_Mercadoria.AsString);
                           cFormula.Lines.Add('');
                        End;

                        // Pegando a aliquota do ICMS Operacional.
                        ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]);
                        If TipoNotaSaida_Entrada.Value = 1 then begin
                           PedidosItensAliquota_ICMSReducao.Value := ProdutosICMS_Reducao.Value;
                           If NCMICMS_Operacional.Value = 0 then begin
                              // Pega a aliquota do ICMS da tabela de ICMS ou da Nota de Entrada.
                              If TipoNotaOrigem_AliquotaICMS.Value = 0 then begin
                                 // Contribuinte pessoa Juridica.
                                 If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value <> True) then begin
                                    PedidosItensAliquota_ICMSOper.Value     := ICMSNac_Contribuinte.Value;
                                    PedidosItensAliquota_ICMSIntegral.Value := ICMSNac_ContribuinteCheia.Value;
                                 End;
                                 // Não Contribuinte pessoa Juridica "Sem /inscrição".
                                 If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value = True) then begin
                                    PedidosItensAliquota_ICMSOper.Value     := ICMSNac_NContribuinte.Value;
                                    PedidosItensAliquota_ICMSIntegral.Value := ICMSNac_NContribuinteCheia.Value;
                                 End;
                                 // Não Contribuinte pessoa Juridica "Com Inscrição".
                                 If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value = false) and (TipoNotaFinalidade_Mercadoria.Value = 1) then begin
                                    PedidosItensAliquota_ICMSOper.Value     := ICMSNac_NContribuinte.Value;
                                    PedidosItensAliquota_ICMSIntegral.Value := ICMSNac_NContribuinteCheia.Value;
                                 End;
                                 // Não Contribuinte pessoa Fisica.
                                 If (ClientesCNPJ.Value = '') then begin
                                    PedidosItensAliquota_ICMSOper.Value     := ICMSNac_NContribuinte.Value;
                                    PedidosItensAliquota_ICMSIntegral.Value := ICMSNac_NContribuinteCheia.Value;
                                 End;
                                 // Simples Nacional.
                                 If (ClientesSimples_Nacional.AsBoolean = true) then begin
                                    PedidosItensAliquota_ICMSOper.Value := ICMSSimples_Nacional.AsFloat;
                                 End;
                                 // Não encontrando a estado na tabela de ICMS zera a aliquota do ICMS operacional.
                                 If ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]) = false then begin
                                    PedidosItensAliquota_ICMSOper.Value     := 0;
                                    PedidosItensAliquota_ICMSIntegral.Value := 0;
                                 End;
                              end else begin
                                 PedidosItensAliquota_ICMSOper.Value     := NotasTerceirosItensAliquota_ICMSOper.Value;
                                 PedidosItensAliquota_ICMSIntegral.Value := NotasTerceirosItensAliquota_ICMSOper.Value;
                              End;
                           end else begin
                               PedidosItensAliquota_ICMSOper.Value := NCMICMS_Operacional.Value;
                           End;
                        end else begin
                           PedidosItensAliquota_ICMSOper.Value := ProcessosDOCAliquota_ICMS.AsFloat - ProcessosDOCReducao_ICMS.AsFloat;
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

                        If ProdutosTipo_Conversao.Value <> 'M' then
                           PedidosItensQuantidade.Value := (mQuantidade / ProdutosQuantidade_Unidade.Value)
                        else
                           PedidosItensQuantidade.Value := (mQuantidade * ProdutosQuantidade_Unidade.Value);

                        PedidosItensNCM.Value            := NotasTerceirosItensNCM.Value;
                        PedidosItensUnidade_Medida.Value := ProdutosUnidade.Value;
                        PedidosItensCEST.Value           := NotasTerceirosItensCEST.Value;

                        // Pega a alíquota do IPI com prioridade para a alíquota na seguinte ordem: 1º Acordo Tarifário, 2º Redução, 3º Alíquota Normal.
                        If (not NCMIPI_Isento.Value) and (not NCMIPI_Suspensao.Value) and (not TipoNotaNao_Tributada_IPI.Value) and (not TipoNotaImune_IPI.Value) and (not TipoNotaSuspensao_IPI.Value)  and (not TipoNotaIsencao_IPI.Value) then begin
                           PedidosItensAliquota_IPI.Value := ProdutosAliquota_IPI.Value;
                           If ProdutosReducao_IPI.AsFloat         > 0 then PedidosItensAliquota_IPI.Value := ProdutosReducao_IPI.Value;
                           If ProdutosAcordo_TarifarioIPI.AsFloat > 0 then PedidosItensAliquota_IPI.Value := ProdutosAcordo_TarifarioIPI.Value;
                        End;

                        // Pega a alíquota do II com prioridade para a alíquota na seguinte ordem: 1º Acordo Tarifário, 2º Redução, 3º Alíquota Normal.
                        PedidosItensAliquota_II.Value := ProdutosAliquota_II.Value;
                        If ProdutosReducao_II.AsFloat         > 0 then PedidosItensAliquota_II.Value := ProdutosReducao_II.Value;
                        If ProdutosAcordo_TarifarioII.AsFloat > 0 then PedidosItensAliquota_II.Value := ProdutosAcordo_TarifarioII.Value;

                        If NotasTerceirosItensPeso_Liquido.Value > 0 then begin
                           PedidosItensPeso_Liquido.Value := NotasTerceirosItensPeso_Liquido.Value;
                           PedidosItensPeso_Bruto.Value   := NotasTerceirosItensPeso_Bruto.Value;
                        end else begin
                           PedidosItensPeso_Liquido.Value := ProdutosPeso_Liquido.Value;
                           PedidosItensPeso_Bruto.Value   := ProdutosPeso_Bruto.Value;
                        End;

                        PedidosItensAliquota_PIS.Value    := NCMPIS.Value;
                        PedidosItensAliquota_COFINS.Value := NCMCOFINS.Value;
                        PedidosItensValor_Frete.Value     := 0;
                        PedidosItensValor_Seguro.Value    := 0;
                        PedidosItensValor_Despesa.Value   := 0;
                        PedidosItensValor_PIS.Value       := 0;
                        PedidosItensValor_COFINS.Value    := 0;

                        // Calculo do rateio do Frete.
                        If ProcessosDOCTipo.AsString = 'EXPORTAÇÃO' then begin
                           If IncotermsFrete.Value = True then begin
                              If ConfiguracaoRateio_Frete.Value = 'V' then
                                 PedidosItensValor_Frete.Value := ((ProcessosDOCFrete.Value / mTotalProdutos) * NotasTerceirosItensValor_Unitario.Value );
                              If ConfiguracaoRateio_Frete.Value = 'Q' then
                                 PedidosItensValor_Frete.Value := RoundTo((ProcessosDOCFrete.Value / ProcessosDOCQuantidade.Value),-6);
                              If ConfiguracaoRateio_Frete.Value = 'P' then
                                 PedidosItensValor_Frete.Value := Roundto((ProcessosDOCFrete.Value / ProcessosDOCPeso_Liquido.Value),-6) * PedidosItensPeso_Liquido.Value;
                           End;

                           // Calculo do rateio do Seguro.
                           If IncotermsSeguro.Value = True then begin
                              If ConfiguracaoRateio_Seguro.Value = 'V' then
                                 PedidosItensValor_Seguro.Value := (ProcessosDOCSeguro.Value / mTotalProdutos) * NotasTerceirosItensValor_Unitario.Value;
                              If ConfiguracaoRateio_Seguro.Value = 'Q' then
                                 PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCQuantidade.Value),-6);
                              If ConfiguracaoRateio_Seguro.Value = 'P' then
                                 PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCPeso_Liquido.Value), -6) * PedidosItensPeso_Liquido.Value;
                           End;
                        End;

                        // Código de Situação Tributaria do PIS.
                        mCST := '';
                        If PedidosSaida_Entrada.AsInteger = 1 then begin
                           If (ProdutosAliquota_PIS.AsFloat          > 0) and (ProdutosAliquota_PIS.AsFloat  = ConfiguracaoPIS_AliquotaBasicaSaida.AsFloat) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+B'; // 01.
                           If (ProdutosAliquota_PIS.AsFloat          > 0) and (ProdutosAliquota_PIS.AsFloat <> ConfiguracaoPIS_AliquotaBasicaSaida.Value)   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+D'; // 02.
                           If (TipoNotaCSTPIS_AliquotaUM.AsBoolean   = true) or (ProdutosCSTPIS_AliquotaUM.AsBoolean   = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+UM';                        // 03.
                           If (TipoNotaCSTPIS_Monofasica.AsBoolean   = true) or (ProdutosCSTPIS_Monofasica.AsBoolean   = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+MONO+A0';                   // 04.
                           If (TipoNotaCSTPIS_AliquotaZero.AsBoolean = true) or (ProdutosCSTPIS_AliquotaZero.AsBoolean = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';                        // 06.
                           If (TipoNotaCSTPIS_Isenta.AsBoolean       = true) or (ProdutosCSTPIS_Isenta.AsBoolean       = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';                       // 07.
                           If (TipoNotaCSTPIS_SemIncidencia.AsBoolean= true) or (ProdutosCSTPIS_SemIncidencia.AsBoolean= true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC';                      // 08.
                           If (TipoNotaCSTPIS_Suspensao.AsBoolean    = true) or (ProdutosCSTPIS_Suspensao.AsBoolean    = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';                       // 09.
                           If (TipoNotaCSTPIS_Outras.AsBoolean       = true) or (ProdutosCSTPIS_Outras.AsBoolean       = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';                         // Outras.
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
                           CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]);
                        End;
 
                        PedidosItensCSTPIS.Value    := CSTPISCodigo.Value;
                        PedidosItensCSTCOFINS.Value := CSTPISCodigo.Value;

                        // Verifica se o tipo de nota apura POS/COFINS as alíquota devem existir.
                        If (TipoNotaApuracao_PISCOFINS.AsBoolean = true) and (CSTPISAliquota_Zero.AsBoolean = false) then begin
                           MessageDlg('Erro!'+#13+#13+'Para operações que geram apuração de PIS/COFINS e a CST de PIS/COFINS seja tributável,a alíquota de PIS/COFINS é obrigatória.'+#13+#13+'Verifique a alíquota de PIS no cadastro do produto.'+#13+#13+'Produto não será adicionado.', mtError, [mbOK], 0);
                           PedidosItens.Cancel;
                           Abort;
                        End;

                        // Pegando a alíquota da COFINS.
                        If CSTPISTributavel.AsBoolean = true then begin
                           PedidosItensAliquota_PIS.Value    := ProdutosAliquota_PIS.Value;
                           PedidosItensAliquota_PISRed.Value := ProdutosAliquota_PIS.AsFloat - ((ProdutosAliquota_PIS.AsFloat * ProdutosReducao_PIS.AsFloat)/100);
                        End;
                        If CSTCOFINSTributavel.AsBoolean = true then begin
                           PedidosItensAliquota_COFINS.Value    := ProdutosAliquota_COFINS.Value;
                           PedidosItensAliquota_COFINSRed.Value := ProdutosAliquota_COFINS.AsFloat - ((ProdutosAliquota_COFINS.AsFloat * ProdutosReducao_COFINS.AsFloat)/100);
                        End;

                        // Calculo do rateio das Despesas (Entrada/Saida).
                        If ConfiguracaoRateio_Despesas.Value = 'V' then
                           PedidosItensValor_Despesa.Value := ( (PedidosValor_OutrasDespesas.Value / mTotalProdutos) * NotasTerceirosItensValor_Unitario.Value );
                        If ConfiguracaoRateio_Despesas.Value = 'Q' then
                           PedidosItensValor_Despesa.Value := (PedidosValor_OutrasDespesas.Value / NotasTerceirosQuantidade.Value);
                        If ConfiguracaoRateio_Despesas.Value = 'P' then
                           PedidosItensValor_Despesa.Value := ( (PedidosValor_OutrasDespesas.Value / NotasTerceirosVolume_PesoLiquido.Value) * PedidosItensPeso_Liquido.Value );

                        // Calculo do rateio do DUMPING do Processo.
                        If ProcessosDOCValor_Dumping.AsCurrency > 0 then begin
                           PedidosItensValor_Dumping.Value := (ProcessosDOCValor_Dumping.Value / tDumping.FieldByName('TotalFOB_Dumping').Value) * AdicoesValor_Unitario.Value;
                        End;

                        // Caculando o valor do produto sem impostos.
                        If mValorInformado <= 0 then begin
                           If TipoNotaCalculo_Mercadoria.Value <> '' then begin
                              PedidosItensValor_Unitario.Value := CalculaMacro('Calculo_Mercadoria');
                           End;
                        end else begin
                           PedidosItensValor_Unitario.Value := mValorInformado;
                        End;

                        // Adicionando o valor do lucro no valor unitario.
                        If cLucroValor.Value > 0 then begin
                           mRateioLucro   := (PedidosLucro_Valor.Value / mTotalProdutos);
                           PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value + (PedidosItensValor_Unitario.Value * mRateioLucro);
                        End;

                        If ProdutosTipo_Conversao.Value <> 'M' then
                           PedidosItensValor_Total.Value := (PedidosItensValor_Unitario.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                        else
                           PedidosItensValor_Total.Value := (PedidosItensValor_Unitario.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));

                        // Calculo do rateio do DUMPING do Processo.
                        If ProcessosDOCValor_Dumping.AsCurrency > 0 then begin
                           PedidosItensValor_Dumping.Value := (ProcessosDOCValor_Dumping.Value / tDumping.FieldByName('TotalFOB_Dumping').Value) * AdicoesValor_Unitario.Value;
                        End;

                        // Calculo do IPI "Verifica se o IPI é por alíquota ou por valor unitario - "Só calula o IPI se houver formula nos casos de alíquota".
                        PedidosItensValor_IPI.Value := 0;
                        PedidosItensTotal_IPI.Value := 0;
                        If (not NCMIPI_Isento.Value) and (not NCMIPI_Suspensao.Value) and (not TipoNotaNao_Tributada_IPI.Value) and (not TipoNotaImune_IPI.Value) and (not TipoNotaSuspensao_IPI.Value) and (not TipoNotaIsencao_IPI.Value) then begin
                           If mBCIPIInformado = 0 then begin
                              If ProdutosValor_IPI.Value = 0 then begin
                                 If (TipoNotaCalculo_BCIPI.Value <> '') then begin
                                    PedidosItensValor_BCIPI.Value := CalculaMacro('Calculo_BCIPI');
                                    PedidosItensValor_IPI.Value   := Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value);
                                 End;
                              end else begin
                                 If ProdutosTipo_Conversao.Value <> 'M' then
                                    PedidosItensValor_IPI.Value := ProdutosValor_IPI.Value
                                 else
                                    PedidosItensValor_IPI.Value := ProdutosValor_IPI.Value * ProdutosQuantidade_Unidade.Value;
                              End;
                              If ProdutosTipo_Conversao.Value <> 'M' then
                                 PedidosItensTotal_IPI.Value := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                              else
                                 PedidosItensTotal_IPI.Value := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                           end else begin
                              PedidosItensValor_BCIPI.Value := mBCIPIInformado;
                              PedidosItensValor_IPI.Value   := Percentual((PedidosItensValor_BCIPI.Value/PedidosItensQuantidade.AsFloat), PedidosItensAliquota_IPI.Value );
                              If ProdutosTipo_Conversao.Value <> 'M' then
                                 PedidosItensTotal_IPI.Value   := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                              else
                                 PedidosItensTotal_IPI.Value   := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                           End;
                        End;

                        // Mercadoria de origem importada.
                        If ProdutosOrigem.AsString = 'I' then begin
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA.Value;
                        end;
                        // Mercadoria de origem importada adquirida no mercado interno.
                        If ProdutosOrigem.AsString = 'M' then begin
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA3.Value;
                        end;
                        // Mercadoria de origem nacional.
                        If ProdutosOrigem.AsString = 'N' then begin
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA2.Value;
                        end;

                        PedidosItensCodigoTrib_TabB.Value := CSTTabelaBCodigo.Value;

                        // Código de situação tributaria do IPI.
                        mCST := '';
                        If PedidosItensValor_IPI.Value <> 0       then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IPI';
                        If ProdutosValor_IPI.Value     <> 0       then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+V';
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
                           If ProdutosTipo_Conversao.Value <> 'M' then
                              mApuracao1 := mApuracao1 + (PedidosItensValor_PIS.AsCurrency * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
                           else
                              mApuracao1 := mApuracao1 + (PedidosItensValor_PIS.AsCurrency * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                        End;
                       
                        If (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then
                              mApuracao1 := mApuracao1 + (PedidosItensValor_COFINS.AsCurrency * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
                           else
                              mApuracao1 := mApuracao1 + (PedidosItensValor_COFINS.AsCurrency * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                        End;

                        If PedidosItensValor_IPI.Value = 0 then
                            mApuracao1 := (mApuracao1 + PedidosItensValor_Total.Value);

                        If CSTIPI.FieldByName('Apuracao').Value = 'O' then
                           PedidosItensValor_OutrasIPI.Value := mApuracao1
                        else
                           PedidosItensValor_IsentasIPI.Value := mApuracao1;

                        PedidosItensCSTIPI.Value              := CSTIPICodigo.Value;
                        PedidosItensModalidade_BCICMS.Value   := NCMModalidade_BCICMS.Value;
                        PedidosItensModalidade_BCICMSST.Value := NCMModalidade_BCICMSST.Value;

                        // Calculando a base do ICMS Operacional.
                        If (not NCMICMS_Isento.AsBoolean) and (not NCMICMS_Suspensao.AsBoolean) and (not TipoNotaNao_Tributada_ICMS.AsBoolean) and (not TipoNotaSuspensao_ICMS.AsBoolean) then begin
                           If mBCICMSOperInformado = 0 then begin
                              If TipoNotaCalculo_BCICMS.Value <> '' then begin
                                 If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                                    PedidosItensValor_BCICMSOper.Value := CalculaMacro('Calculo_BCICMS')
                                 end else begin
                                    mErro                               := 2;
                                    PedidosItensAliquota_ICMSOper.Value := 0;
                                 End;
                              End;
                           end else begin
                              PedidosItensValor_BCICMSOper.Value := mBCICMSOperInformado;
                           End;

                           // Calculando o valor do ICMS Operacional.
                           If Trim(TipoNotaCalculo_VlrICMS.Value) <> '' then begin
                              If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                                 PedidosItensValor_ICMSOper.Value := CalculaMacro('Calculo_VlrICMS')
                              end else begin
                                 PedidosItensValor_ICMSOper.Value := 0;
                              End;
                           End;
                        End;

                        If TipoNotaSaida_Entrada.Value = 1 then Begin
                           If Trim(ClientesEstado.Value) <> 'EX' then begin
                              // Pegando a aliquota e calculando o MVA.
                              mUF := Trim(ClientesEstado.Value)+'_MVA';
                              PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                              If NCM.FieldbyName(mUF).AsFloat <> 0 then
                                 PedidosItensValor_MVA.Value := Percentual( (PedidosItensValor_Total.Value+PedidosItensValor_IPI.Value), PedidosItensAliquota_MVA.Value )
                              else
                                 PedidosItensValor_MVA.Value := 0;

                              If Trim(TipoNotaCalculo_BCMVA.AsString) <> '' then begin
                                 PedidosItensValor_BCMVA.Value := CalculaMacro('Calculo_BCMVA');
                                 If TipoNotaCalculo_VlrMVA.Value <> '' then begin
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
                              mUF                                := Trim(ClientesEstado.Value)+'_ICMS';
                              PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;

                              If PedidosItensAliquota_ICMSSub.Value <> 0 then begin
                                 If mBCICMSSubInformado = 0 then begin
                                    If TipoNotaCalculo_BCICMSSub.Value <> '' then begin
                                       If PedidosItensAliquota_MVA.Value <> 0 then begin
                                          PedidosItensValor_BCICMSSub.Value := CalculaMacro('Calculo_BCICMSSub');
                                          If TipoNotaCalculo_VlrICMSSub.Value <> '' then
                                             PedidosItensValor_ICMSSub.Value := CalculaMacro('Calculo_VlrICMSSub');
                                       end else
                                          mErro := 3;
                                    End;
                                 end else begin
                                    PedidosItensValor_BCICMSSub.Value := mBCICMSSubInformado;
                                 End;
                              end else begin
                                 If TipoNotaCalculo_BCICMSSub.Value <> '' then mErro := 1;
                              End;
                           End;
                        end else begin
                           // Pegando a aliquota e calculando o MVA.
                           mUF := Trim(FornecedoresEstado.Value)+'_MVA';
                           PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                           If NCM.FieldbyName(mUF).AsFloat <> 0 then
                              PedidosItensValor_MVA.Value := Percentual( (PedidosItensValor_Total.Value+PedidosItensValor_IPI.Value+(PedidosItensValor_Despesa.Value * PedidosItensQuantidade.AsFloat)), PedidosItensAliquota_MVA.Value )
                           else
                              PedidosItensValor_MVA.Value := 0;

                           // Pegando a aliquota e calculando o ICMS Substitutivo.
                           PedidosItensValor_BCICMSSub.Value  := 0;
                           PedidosItensValor_ICMSSub.Value    := 0;
                           mUF                                := Trim(FornecedoresEstado.Value)+'_ICMS';
                           PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;

                           If PedidosItensAliquota_ICMSSub.Value <> 0 then begin
                              If mBCICMSSubInformado = 0 then begin
                                 If TipoNotaCalculo_BCICMSSub.Value <> '' then begin
                                    If PedidosItensAliquota_MVA.Value <> 0 then begin
                                       PedidosItensValor_BCICMSSub.Value := CalculaMacro('Calculo_BCICMSSub');
                                       If TipoNotaCalculo_VlrICMSSub.Value <> '' then
                                          PedidosItensValor_ICMSSub.Value := CalculaMacro('Calculo_VlrICMSSub');
                                    end else
                                       mErro := 3;
                                 End;
                              end else begin
                                 PedidosItensValor_BCICMSSub.Value := mBCICMSSubInformado;
                              End;
                           end else begin
                              If TipoNotaCalculo_BCICMSSub.Value <> '' then mErro := 1;
                           End;
                        End;

                        // Calculando o valor da redução do ICMS.
                        If TipoNotaCalculo_ReducaoICMS.Value <> '' then begin
                           PedidosItensValor_ICMSReducao.Value := CalculaMacro('Calculo_ReducaoICMS');
                        End;

                        // Recalcula o valor unitario do produto com base no segundo campo de formula.
                        // Calculo_MercadoriaImp = Valores extras calculados sobre o valor do produto.
                        If TipoNotaCalculo_MercadoriaImp.Value <> '' then begin
                           PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value + CalculaMacro('Calculo_MercadoriaImp');

                           If ProdutosTipo_Conversao.Value <> 'M' then
                              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value * ProdutosQuantidade_Unidade.Value
                           else
                              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value / ProdutosQuantidade_Unidade.Value;

                           PedidosItensValor_Total.Value    := (RoundTo(PedidosItensValor_Unitario.Value,-2) * PedidosItensQuantidade.Value);
                        End;

                        // Código de situação tributaria do ICMS (tabela B)
                        mCST := '';
                        If PedidosItensValor_ICMSOper.Value <> 0 then
                           mCST := mCST + '+O'
                        else
                           mCST := mCST + '-O';  // ICMS Operacional.

                        If Int(PedidosItensValor_BCICMSOper.Value) < Int(PedidosItensValor_Total.Value) then 
                           mCST := mCST + '+R'
                        else
                           mCST := mCST + '-R';  // Reducao de base.

                        If TipoNotaSaida_Entrada.Value = 0 then begin
                           mCST := mCST + '-S';                                                                                                 // ICMS ST na Entrada.
                        end else begin
                           If Trim(ClientesEstado.Value) <> 'EX' then begin
                              If NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat <> 0 then mCST := mCST + '+S' else mCST := mCST + '-S';  // ICMS ST na Saida.
                           end else begin
                              mCST := mCST + '-S';                                                                                              // ICMS ST na Entrada.
                           End;
                        End;

                        If (cICMS.Checked = True)                                                            then mCST := mCST + '+SD';
                        If (TipoNotaIsencao_ICMS.AsBoolean = true)   or (NCMICMS_Isento.Value = True)        then mCST := '+I';
                        If TipoNotaNao_Tributada_ICMS.Value  = True                                          then mCST := '+NT';
                        If (TipoNotaSuspensao_ICMS.AsBoolean = true) or (NCMICMS_Suspensao.AsBoolean = true) then mCST := '+SUS';
                        If (ProcessosDOCICMS_Diferido.Value  = True) and (TipoNotaSaida_Entrada.Value = 0)   then mCST := '+D';

                        If CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
                           mCST := '<>';
                           CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]);
                        End;

                        mApuracao1 := (PedidosItensValor_Total.Value - PedidosItensValor_BCICMSOper.Value);
                        If mApuracao1 < 0 then  mApuracao1 := 0;

                        // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe.
                        mApuracao2 := 0;
                        If Pos('Pedidos_[Valor_TotalProdutos]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_Total.Value;
                        If Pos('Pedidos_[Valor_OutrasDespesas]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + (PedidosItensValor_Despesa.Value*PedidosItensQuantidade.Value);
                        If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_ICMSOPer.Value;
                        If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_ICMSSub.Value;
                        If Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_Frete.Value;
                        If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_Frete.Value;
                        If (Pos('Valor_PIS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[PIS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then
                              mApuracao2 := mApuracao2 + (PedidosItensValor_PIS.AsCurrency * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
                           else
                              mApuracao2 := mApuracao2 + (PedidosItensValor_PIS.AsCurrency * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                        End;
                        If (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then
                              mApuracao2 := mApuracao2 + (PedidosItensValor_COFINS.AsCurrency * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
                           else
                              mApuracao2 := mApuracao2 + (PedidosItensValor_COFINS.AsCurrency * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
                        End;
                        mApuracao2 := (mApuracao2-RoundTo(PedidosItensValor_BCICMSOper.Value, -2)-mApuracao1);
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

                        PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA.Value;
                        PedidosItensCodigoTrib_TabB.Value := CSTTabelaBCodigo.Value;

                        If TipoNotaSaida_Entrada.Value = 1 then begin
                           PedidosItensValor_PIS.Value    := 0;
                           PedidosItensValor_COFINS.Value := 0;
                           If (CSTPISTributavel.AsBoolean = true) then begin
                              If (Trim(TipoNotaCalculo_PIS.AsString) <> '') then PedidosItensValor_PIS.Value := CalculaMacro('Calculo_PIS');
                           End;
                           If (CSTCOFINSTributavel.AsBoolean = true) then begin
                              If (Trim(TipoNotaCalculo_COFINS.AsString) <> '') then PedidosItensValor_COFINS.Value := CalculaMacro('Calculo_COFINS');
                           End;
                        End;

                        If PedidosItensValor_PIS.Value = 0 then begin
                           PedidosItensAliquota_PIS.Value    := 0;
                           PedidosItensAliquota_PISRed.Value := 0;
                        End;
                        If PedidosItensValor_COFINS.Value = 0 then begin
                           PedidosItensAliquota_COFINS.Value    := 0;
                           PedidosItensAliquota_COFINSRed.Value := 0;
                        End;
           PedidosItens.Post;

           // Marca como registro lançado (Posição de estoque).
           If (TipoNotaMovimenta_Estoque.Value = True) then begin
              NotasTerceirosItens.Edit;
                                  NotasTerceirosItensDisponivel.Value := (NotasTerceirosItensDisponivel.Value - mQuantidade);
              NotasTerceirosItens.Post;
           End;
      End;
end;

procedure TPedido_ItensCompraInterna.bRemove_ItemClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente remover o item do pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
         Screen.Cursor := crSQLWait;
         With Dados, dmFiscal do Begin
             // Setando o registro da nota como não lançado.
             NotasTerceirosItens.SQL.Clear;
             NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso)');
             NotasTerceirosItens.SQL.Add('ORDER BY Codigo_Mercadoria');
             NotasTerceirosItens.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
             NotasTerceirosItens.Open;

             NotasTerceirosItens.Locate('Nota;Codigo_Mercadoria;NCM;Item', VarArrayOf([PedidosItensNota_Terceiros.AsInteger,PedidosItensCodigo_Mercadoria.Value,PedidosItensNCM.Value,PedidosItensItem.Value]), [loCaseInsensitive]);
             Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive] );

             NotasTerceirosItens.Edit;
                                 If (TipoNotaMovimenta_Estoque.Value = True) then begin
                                    If ProdutosTipo_Conversao.Value <> 'M' then
                                       NotasTerceirosItensDisponivel.Value := (NotasTerceirosItensDisponivel.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value) )
                                    else
                                       NotasTerceirosItensDisponivel.Value := (NotasTerceirosItensDisponivel.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value) )
                                 End;
                                 If NotasTerceirosItensDisponivel.Value > NotasTerceirosItensQuantidade.Value then NotasTerceirosItensDisponivel.Value := NotasTerceirosItensQuantidade.Value;
             NotasTerceirosItens.Post;
             
             NotasTerceirosItens.Close;
             NotasTerceirosItens.SQL.Clear;
             If TipoNotaMovimenta_Estoque.Value = True then begin
                 NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso) AND (Disponivel > 0)');
             End;
             NotasTerceirosItens.SQL.Add('ORDER BY Codigo_Mercadoria');
             NotasTerceirosItens.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
             NotasTerceirosItens.Open;
             // Deletando o item do pedido de nota fiscal.
             PedidosItens.Delete;
         End;
      End;
      Screen.Cursor := crDefault;
      LigaBotoes;
end;

procedure TPedido_ItensCompraInterna.bRemove_TodosClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      Try
          If MessageDlg('Deseja realmente remover todos os item do pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
             With Dados, dmFiscal do begin
                  NotasTerceirosItens.Close;
                  NotasTerceirosItens.SQL.Clear;
                  NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso)');
                  NotasTerceirosItens.SQL.Add('ORDER BY Codigo_Mercadoria');
                  NotasTerceirosItens.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
                  NotasTerceirosItens.Open;

                  Progresso.Position := 0;
                  Progresso.Max      := PedidosItens.RecordCount;

                  PedidosItens.First;
                  While not PedidosItens.Eof do begin
                        NotasTerceirosItens.Locate('Nota;Codigo_Mercadoria;NCM;Item', VarArrayOf([PedidosItensNota_Terceiros.AsInteger, PedidosItensCodigo_Mercadoria.Value,PedidosItensNCM.Value,PedidosItensItem.Value]), [loCaseInsensitive]);
                        Produtos.Locate( 'Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive] );
                        NotasTerceirosItens.Edit;
                        If (TipoNotaMovimenta_Estoque.Value = True) then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then
                              NotasTerceirosItensDisponivel.Value := (NotasTerceirosItensDisponivel.Value + (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                           else
                              NotasTerceirosItensDisponivel.Value := (NotasTerceirosItensDisponivel.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                        End;

                        If NotasTerceirosItensDisponivel.Value > NotasTerceirosItensQuantidade.Value then NotasTerceirosItensDisponivel.Value := NotasTerceirosItensQuantidade.Value;

                        NotasTerceirosItens.Post;
                        PedidosItens.Next;
                        Progresso.Position  := Progresso.Position +1;
                        Application.ProcessMessages;
                  End;
                  NotasTerceirosItens.Close;
                  NotasTerceirosItens.SQL.Clear;
                  PedidosItens.EnableControls;
                  If TipoNotaMovimenta_Estoque.Value = True then begin
                     NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso) AND (Disponivel <> 0)');
                     NotasTerceirosItens.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
                  end else begin
                     NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso)');
                     NotasTerceirosItens.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
                  End;
                  NotasTerceirosItens.SQL.Add('ORDER BY Codigo_Mercadoria');
                  NotasTerceirosItens.Open;

                  // Deletando todos os itens do pedido.
                  PedidosItens.SQL.Clear;
                  PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE (Pedido = :pPedido)');
                  PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                  PedidosItens.Execute;
                  PedidosItens.SQL.Clear;
                  PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
                  PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                  PedidosItens.Open;

                  gTerceiros.Caption := 'Itens Disponíveis: ['+InttoStr(NotasTerceirosItens.RecordCount)+']';
                  gItens.Caption     := 'Itens do Pedidos: ['+InttoStr(PedidosItens.RecordCount)+']';
             End;
          End;
      Except
          ShowMessage('Número da Adição inválido!');
      End;
      Progresso.Position := 0;
      Screen.Cursor      := crDefault;
      LigaBotoes;
end;

procedure TPedido_ItensCompraInterna.LigaBotoes;
Begin
      If Dados.PedidosItens.RecordCount = 0 then begin
         bRemove_Item.Enabled   := False;
         bRemove_Todos.Enabled  := False;
      End else begin
         bRemove_Item.Enabled   := True;
         bRemove_Todos.Enabled  := True;
      End;
      If dmFiscal.NotasTerceirosItens.RecordCount = 0 then begin
         bInclui_Item.Enabled   := False;
         bInclui_Todos.Enabled  := False;
      End else begin
         bInclui_Item.Enabled   := True;
         bInclui_Todos.Enabled  := True;
      End;
      mnIncluiItem.Enabled   := bInclui_Item.Enabled;
      mnIncluiTodos.Enabled  := bInclui_Todos.Enabled;
      mnRemoveItem.Enabled   := bRemove_Todos.Enabled;
      mnRemoveTodos.Enabled  := bRemove_Todos.Enabled;
End;

procedure TPedido_ItensCompraInterna.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TPedido_ItensCompraInterna.FormClose(Sender: TObject;var Action: TCloseAction);
begin
        Screen.Cursor := crSQLWait;
        //cDisplay.Visible := False;
        Application.ProcessMessages;
        // Calula todos os campos de valores totais do pedido.
        With Dados do Begin
             Pedidos.Edit;
                     PedidosValor_TotalProdutos.Value    := 0;
                     PedidosTotal_Descontos.Value        := 0;
                     PedidosBCIPI.Value                  := 0;
                     PedidosValor_TotalIPI.Value         := 0;
                     PedidosBCICMS.Value                 := 0;
                     PedidosValor_ICMS.Value             := 0;
                     PedidosBCICMS_Substitutivo.Value    := 0;
                     PedidosValorICMS_Substitutivo.Value := 0;
                     PedidosTotal_Frete.Value            := 0;
                     PedidosValor_Seguro.Value           := 0;
                     PedidosValor_TotalNota.Value        := 0;
                     PedidosValor_TotalMVA.Value         := 0;
                     PedidosVolume_PesoLiquido.Value     := 0;
                     PedidosVolume_PesoBruto.Value       := 0;
                     PedidosVolume_PesoBruto.Value       := 0;
                     PedidosValor_PIS.Value              := 0;
                     PedidosValor_COFINS.Value           := 0;
                     PedidosValor_TotalII.Value          := 0;
                     PedidosValor_IsentasICMS.Value      := 0;
                     PedidosValor_OutrasICMS.Value       := 0;
                     PedidosValor_IsentasIPI.Value       := 0;
                     PedidosValor_OutrasIPI.Value        := 0;
             Pedidos.Post;
             
             // Zerando os valores dos campos que estão marcados para não imprimir.
             Progresso.Max      := PedidosItens.RecordCount * 2;
             Progresso.Position := 0;

             PedidosItens.First;
             While not PedidosItens.Eof do Begin
                   PedidosItens.Edit;
                                If TipoNotaVisiveis_ICMSOper.Value = False then begin
                                   PedidosItensValor_ICMSOper.Value    := 0;
                                   PedidosItensValor_BCICMSOper.Value  := 0;
                                   PedidosItensAliquota_ICMSOper.Value := 0;
                                End;
                                If TipoNotaVisiveis_ICMSSub.Value = False then begin
                                   PedidosItensValor_ICMSSub.Value    := 0;
                                   PedidosItensValor_BCICMSSub.Value  := 0;
                                   PedidosItensAliquota_ICMSSub.Value := 0;
                                End;
                                If TipoNotaVisiveis_Frete.Value    = False then PedidosItensValor_Frete.Value   := 0;
                                If TipoNotaVisiveis_Seguro.Value   = False then PedidosItensValor_Seguro.Value  := 0;
                                If TipoNotaVisiveis_Despesas.Value = False then PedidosItensValor_Despesa.Value := 0;
                                If TipoNotaVisiveis_IPI.Value      = False then begin
                                   PedidosItensAliquota_IPI.Value := 0;
                                   PedidosItensValor_IPI.Value    := 0;
                                   PedidosItensTotal_IPI.Value    := 0;
                                End;
                   PedidosItens.Post;
                   PedidosItens.Next;
                   
                   Progresso.Position := Progresso.Position +1;
                   Application.ProcessMessages;
             End;

             If PedidosItens.RecordCount <> 0 then begin
                PedidosItens.First;
                While not PedidosItens.Eof do Begin
                      Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
                      Pedidos.Edit;
                              PedidosValor_TotalProdutos.Value    := PedidosValor_TotalProdutos.AsFloat + PedidosItensValor_Total.AsFloat;
                              // Base de calculo do IPI "Soma dos produtos que tiveram IPI".
                              If PedidosItensAliquota_IPI.Value <> 0 then
                                 PedidosBCIPI.Value := PedidosBCIPI.Value + (PedidosItensValor_BCIPI.AsCurrency * PedidosItensQuantidade.AsFloat);

                              PedidosValor_TotalIPI.Value := PedidosValor_TotalIPI.Value + PedidosItensTotal_IPI.Value;
                              PedidosBCICMS.Value         := PedidosBCICMS.Value         + PedidosItensValor_BCICMSOper.Value;
                              PedidosValor_ICMS.Value     := PedidosValor_ICMS.Value     + PedidosItensValor_ICMSOper.Value;

                              If PedidosValor_ICMS.Value <> 0 then
                                 PedidosAliquota_ICMSOper.Value := PedidosItensAliquota_ICMSOper.Value
                              else
                                 PedidosAliquota_ICMSOper.Value := 0;

                              PedidosBCICMS_Substitutivo.Value    := PedidosBCICMS_Substitutivo.Value    + PedidosItensValor_BCICMSSub.Value;
                              PedidosValorICMS_Substitutivo.Value := PedidosValorICMS_Substitutivo.Value + PedidosItensValor_ICMSSub.Value;
                              PedidosValor_TotalMVA.Value         := PedidosValor_TotalMVA.Value         + PedidosItensValor_MVA.Value;
                              PedidosVolume_PesoLiquido.Value     := PedidosVolume_PesoLiquido.Value     + (PedidosItensPeso_Liquido.Value     * PedidosItensQuantidade.Value);
                              PedidosVolume_PesoBruto.Value       := PedidosVolume_PesoBruto.Value       + (PedidosItensPeso_Bruto.Value       * PedidosItensQuantidade.Value);

                              If ProdutosTipo_Conversao.Value <> 'M' then begin
                                 PedidosValor_PIS.Value     := PedidosValor_PIS.Value     + (PedidosItensValor_PIS.Value    * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                                 PedidosValor_COFINS.Value  := PedidosValor_COFINS.Value  + (PedidosItensValor_COFINS.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                                 PedidosValor_TotalII.Value := PedidosValor_TotalII.Value + (PedidosItensValor_II.Value     * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                              end else begin
                                 PedidosValor_PIS.Value     := PedidosValor_PIS.Value     + (PedidosItensValor_PIS.Value    * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                                 PedidosValor_COFINS.Value  := PedidosValor_COFINS.Value  + (PedidosItensValor_COFINS.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                                 PedidosValor_TotalII.Value := PedidosValor_TotalII.Value + (PedidosItensValor_II.Value     * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                              End;
                              PedidosValor_IsentasICMS.Value := PedidosValor_IsentasICMS.Value + PedidosItensValor_IsentasICMS.AsCurrency;
                              PedidosValor_OutrasICMS.Value  := PedidosValor_OutrasICMS.Value  + PedidosItensValor_OutrasICMS.AsCurrency;
                              PedidosValor_OutrasIPI.Value   := PedidosValor_OutrasIPI.Value   + PedidosItensValor_OutrasIPI.AsCurrency;
                              PedidosValor_ISentasIPI.Value  := PedidosValor_IsentasIPI.Value  + PedidosItensValor_IsentasIPI.AsCurrency;

                              PedidosTotal_Frete.Value       := PedidosTotal_Frete.Value + PedidosItensValor_Frete.Value;
                              PedidosValor_Seguro.Value      := PedidosValor_Seguro.Value + (PedidosItensValor_Seguro.Value * PedidosItensQuantidade.AsFloat);
                      Pedidos.Post;
                      PedidosItens.Next;
                      
                      Progresso.Position := Progresso.Position +1;
                      Application.ProcessMessages;
                End;

                Pedidos.Edit;

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
                If TipoNotaVisiveis_Frete.Value = False then PedidosTotal_Frete.Value := 0;
                If TipoNotaVisiveis_Seguro.Value = False then PedidosValor_Seguro.Value := 0;
                If TipoNotaVisiveis_Despesas.Value = False then PedidosValor_OutrasDespesas.Value := 0;
                If TipoNotaVisiveis_IPI.Value = False then PedidosValor_TotalIPI.Value := 0;

                If PedidosDesconto_Percentual.Value <> 0 then
                   PedidosValor_TotalProdutos.Value := PedidosValor_TotalProdutos.Value - ( PedidosValor_TotalProdutos.Value * ( PedidosDesconto_Percentual.Value/100))
                else

                // Calculando valores de Frete/Seguro.
                If TipoNotaCalculo_VlrFrete.Value <> '' then begin
                   PedidosTotal_Frete.Value := CalculaMacro('Calculo_VlrFrete');
                End;
                If TipoNotaCalculo_VlrSeguro.Value <> '' then begin
                   PedidosValor_Seguro.Value := CalculaMacro('Calculo_VlrSeguro');
                End;

                Pedidos.Post;
                If TipoNotaCalculo_OutrasDespesas.Value <> '' then begin
                   Pedidos.Edit;
                           PedidosValor_OutrasDespesas.Value := PedidosValor_OutrasDespesas.Value + CalculaMacro('Calculo_OutrasDespesas');
                   Pedidos.Post;
                End;
                If TipoNotaCalculo_TotalPedido.Value <> '' then begin
                   Pedidos.Edit;
                           PedidosValor_TotalNota.Value := CalculaMacro('Calculo_TotalPedido');
                   Pedidos.Post;
                End;
             End;

             // Salva as despesas que foram utilizadas na nota fiscal.
             PedidosDespesas.SQL.Clear;
             PedidosDespesas.SQL.Add('DELETE FROM PedidosDespesas WHERE(Pedido = :pPedido)');
             PedidosDespesas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
             PedidosDespesas.Execute;
             PedidosDespesas.SQL.Clear;
             PedidosDespesas.SQL.Add('SELECT * FROM PedidosDespesas WHERE(Pedido = :pPedido)');
             PedidosDespesas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
             PedidosDespesas.Open;

             tDespesas.SQL.Clear;
             tDespesas.SQL.Add('SELECT Classificacao,');
             tDespesas.SQL.Add('       Processo,');
             //tDespesas.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Codigo = PR.Classificacao)) AS Descricao,');
             If ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
                tDespesas.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Codigo = PR.Classificacao)) AS Descricao,');
             end else begin
                tDespesas.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE(Codigo = PR.Classificacao)) AS Descricao,');
             End;
             If ConfiguracaoValor_Despesas.AsInteger = 0 then
                tDespesas.SQL.Add('       ISNULL(SUM(Valor_Total), 0) AS Total_Despesa,')
             else
                tDespesas.SQL.Add('       ISNULL(SUM(Valor_Total+ISNULL(Desconto,0)), 0) AS Total_Despesa,');

             tDespesas.SQL.Add('       FOB = :pTotalProdutos');
             tDespesas.SQL.Add('FROM   PagarReceber PR');
             tDespesas.SQL.Add('WHERE  (Processo IN(SELECT DISTINCT Processo FROM PedidosItens WHERE(Pedido = :pPedido))) AND (CustoConta = 1) AND (Tipo = ''P'')');
             tDespesas.SQL.Add('GROUP BY Classificacao, Processo');
             tDespesas.ParamByName('pPedido').AsInteger    := PedidosNumero.AsInteger;
             tDespesas.ParamByName('pTotalProdutos').Value := mTotalProdutos;
             tDespesas.Open;

             tFOB_DI.SQL.Clear;
             tFOB_DI.SQL.Add('SELECT ISNULL(Quantidade * (SELECT Valor_Unitario FROM Adicoes AD WHERE(AD.DI = PI.DI) AND(AD.Codigo_Mercadoria = PI.Codigo_Mercadoria)), 0) AS FOB_Item');
             tFOB_DI.SQL.Add('INTO #Temp');
             tFOB_DI.SQL.Add('FROM   PedidosItens PI');
             tFOB_DI.SQL.Add('WHERE  (Pedido = :pPedido)');
             tFOB_DI.SQL.Add('SELECT SUM(FOB_Item) AS FOB_Item FROM #Temp');
             tFOB_DI.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
             tFOB_DI.Open;

             While not tDespesas.Eof do begin
                   If PedidosDespesas.Locate('Pedido; Classificacao; Processo', VarArrayOf([PedidosNumero.Value, tDespesas.FieldByName('Classificacao').AsString, tDespesas.FieldByName('Processo').AsString]), [loCaseInsensitive]) = false then
                      PedidosDespesas.Append
                   else
                      PedidosDespesas.Edit;
                                   PedidosDespesasPedido.Value        := PedidosNumero.Value;
                                   PedidosDespesasClassificacao.Value := tDespesas.FieldByName('Classificacao').AsString;
                                   PedidosDespesasProcesso.Value      := tDespesas.FieldByName('Processo').AsString;
                                   PedidosDespesasDescricao.Value     := tDespesas.FieldByName('Descricao').AsString;
                                   PedidosDespesasValor_Total.Value   := PedidosDespesasValor_Total.Value + tDespesas.FieldByName('Total_Despesa').Value;
                                   If (tDespesas.FieldByName('FOB').Value > 0) then 
                                      PedidosDespesasValor_Nota.Value    := PedidosDespesasValor_Nota.Value  + ((tDespesas.FieldByName('Total_Despesa').Value / tDespesas.FieldByName('FOB').Value) * tFOB_DI.FieldByName('FOB_Item').AsCurrency);
                   PedidosDespesas.Post;
                   tDespesas.Next;
             End;

             PedidosItens.Close;
             Produtos.Close;
             Adicoes.Close;
             PagarReceber.Close;
        End;

        Screen.Cursor := crDefault;

        LimpaMemoria;
        Pedido_ItensCompraInterna.Release;
        Pedido_ItensCompraInterna := nil;
end;

Function TPedido_ItensCompraInterna.CalculaMacro(Campo:String):Real;
var
    mFormula     : String;
    mPos         : Integer;
    mTam         : Integer;
    mPosFun      : Integer;
    mCampo       : String;
    mSQL         : String;
    mResultado   : Real;
    mFuncao      : String;
    mFunTermo1   : String;
    mFunTermo2   : String;
    mFunCondic   : String;
    mSinal       : String;
    i            : Integer;
    mValorCondic1: String;
    mValorCondic2: String;
begin
     With Dados, dmFiscal do begin
          // Convertendo as formulas do campo.
          mFormula := RemoveCaracter(#13,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#12,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#10,'',TipoNota.FieldByName(Campo).AsString);

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
                      End else begin
                         mCampo := CamposCampo_Chave.Value;
                         Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                      End;
                   End;
                End;
                If mPos = 0 then Campos.Next;
          End;

          While Pos('{', mFormula) > 0 do begin
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
                For i := 1 to Length(mFunCondic) do begin
                    If (mFunCondic[i] = '=') or (mFunCondic[i] = '>') or (mFunCondic[i] = '<') then mSinal := mSinal + mFunCondic[i];
                End;

                // Valores da condição.
                mValorCondic1 := Copy(mFunCondic, 1, Pos(mSinal, mFunCondic)-1);
                mValorCondic2 := Copy(mFunCondic, Pos(mSinal, mFunCondic)+Length(mSinal), Length(mFunCondic)-Length(mSinal)-Length(mValorCondic1)) ;
                mFuncao := '';
                For i := Pos('{', mFormula) to Length(mFormula) do begin
                    mFuncao := mFuncao + mFormula[i];
                    If mFormula[i] = '}' then break;
                End;

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
          End;

          PagarReceber.Close;
          PagarReceber.SQL.Clear;
          PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Processo = :pProcesso');
          PagarReceber.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
          PagarReceber.Open;
     End;

     mMacro.Formula := mFormula;
     mResultado     := mMacro.Calc([0]);

     If mResultado <= 0 then mResultado := 0;
     Result         := mResultado;

     If Campo = 'Calculo_Mercadoria' then begin
        cFormula.Lines.Add(Replicate('=',129));
        cFormula.Lines.Add('      ITEM: '+Dados.PedidosItensCodigo_Mercadoria.AsString + ' - '+Copy(Dados.PedidosItensDescricao_Mercadoria.AsString,1,100));
        cFormula.Lines.Add('QUANTIDADE: '+FormatFloat('###,###,##0.00000000', Dados.PedidosItensQuantidade.ASFloat));
        cFormula.Lines.Add('QTDE P/UNI: '+FormatFloat('###,###,##0.00000000', Dados.ProdutosQuantidade_Unidade.AsFloat));
        cFormula.Lines.Add('  UNITARIO: '+FormatFloat('###,###,##0.00000000', Dados.PedidosItensValor_Unitario.AsFloat));
        cFormula.Lines.Add('');
     End;
     cFormula.Lines.Add('     CAMPO: '+Campo);
     cFormula.Lines.Add('   FÓRMULA: '+RemoveCaracter(#13,'',Dados.TipoNota.FieldByName(Campo).AsString));
     cFormula.Lines.Add('   VALORES: '+mFormula);
     cFormula.Lines.Add(' RESULTADO: '+FormatFloat(',##0.00000000000000', mResultado ));
     cFormula.Lines.Add('');
end;

procedure TPedido_ItensCompraInterna.NavegaClick(Sender: TObject;Button: TNavigateBtn);
begin
      // Totalizando as despesas de custo do processo no financeiro.
      tDespesas.SQL.Clear;
      If Dados.ConfiguracaoValor_Despesas.AsInteger = 0 then begin
         tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta = 1) AND (Tipo = ''P'')), 0) +');
         tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.CustoConta = 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas');
      end else begin
         tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta = 1) AND (Tipo = ''P'')), 0) +');
         tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.CustoConta = 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas');
      End;
      tDespesas.ParamByName('pProcesso').AsString       := Dados.ProcessosDOCProcesso.Value;
      tDespesas.ParamByName('pProcessoMestre').AsString := Dados.ProcessosDOCProcesso_Mestre.Value;
      tDespesas.Open;
      Dados.Pedidos.Edit;
            Dados.PedidosValor_OutrasDespesas.Value := tDespesas.FieldByName('Valor_Despesas').Value;
      Dados.Pedidos.Post;
end;

procedure TPedido_ItensCompraInterna.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
     If TeclaPressionada(VK_MENU) and TeclaPressionada(72) then Begin
        If cFormula.Visible = False then begin
           cFormula.Align  := alClient;
           cFormula.Visible := true;
           cFormula.BringToFront;
           cFormula.Repaint;
        end else begin
           cFormula.Visible := False;
        End;
     End;
end;

procedure TPedido_ItensCompraInterna.GradeEnter(Sender: TObject);
begin
     Navega.DataSource := dmFiscal.dsNotasTerceirosItens;
end;

procedure TPedido_ItensCompraInterna.GradeItensEnter(Sender: TObject);
begin
     Navega.DataSource := Dados.dsPedidosItens;
end;

procedure TPedido_ItensCompraInterna.bFecharClick(Sender: TObject);
begin
     cformula.Visible := False;
end;

end.
