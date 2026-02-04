unit frmPedido_DevolucaoItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXDBCtrl, Vcl.StdCtrls, DB, DBAccess, MSAccess, CalcExpress,
  Menus, Vcl.ComCtrls, RXCtrls, Vcl.ExtCtrls, DBCtrls, FUNCOES, Math, system.UITypes,
  Mask, Grids, DBGrids, RxCurrEdit, RxToolEdit, MemDS;

type
  TPedido_DevolucaoItens = class(TForm)
    GroupBox2: TGroupBox;
    Grade: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bInclui_Item: TButton;
    bInclui_Todos: TButton;
    bRemove_Item: TButton;
    bRemove_Todos: TButton;
    mMacro: TCalcExpress;
    tItem: TMSQuery;
    cNotaRef: TCurrencyEdit;
    cDataRef: TDateEdit;
    StaticText1: TStaticText;
    StaticText22: TStaticText;
    bBuscar: TButton;
    GroupBox1: TGroupBox;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    tNotas: TMSQuery;
    tEstoque: TMSQuery;
    cFormula: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GradeRef: TDBGrid;
    RxDBGrid1: TRxDBGrid;
    TabSheet3: TTabSheet;
    RxDBGrid2: TRxDBGrid;
    tTmp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdicionaUm(pQtde: Real);
    procedure bInclui_ItemClick(Sender: TObject);
    procedure bRemove_TodosClick(Sender: TObject);
    procedure bInclui_TodosClick(Sender: TObject);
    procedure bRemove_ItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Function  CalculaMacro(Campo:String):Real;
    procedure FormCreate(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure GradeRefDblClick(Sender: TObject);
    procedure GradeRefMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure GradeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GradeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    mTotal: real;
  end;

var
  Pedido_DevolucaoItens: TPedido_DevolucaoItens;

implementation

uses frmDMFiscal, frmDados, frmJanela_Processamento, frmPedido_Devolucao;

{$R *.dfm}

procedure TPedido_DevolucaoItens.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_DevolucaoItens.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos');
           Produtos.Open;

           Campos.SQL.Clear;
           Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
           Campos.Open;

           CSTIPI.SQL.Clear;
           CSTIPI.SQL.Add('SELECT * FROM CSTIPI ORDER BY Classificacao');
           CSTIPI.Open;

           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido)');
           PedidosItens.ParamByName('pPedido').AsInteger := Dados.PedidosNumero.Value;
           PedidosItens.Open;

           PedidosItens.First;
           Produtos.Open;

           PageControl1.ActivePageIndex := 0;
      End;
      Screen.Cursor := crDefault;
end;

procedure TPedido_DevolucaoItens.bInclui_ItemClick(Sender: TObject);
Var
    mQtdeInput : String;
    mQuantidade: Real;
begin
      mQtdeInput  := '';
      try
          mQuantidade := StrtoFloat( InputBox('Quantidade devolvida','Quantidade:',mQtdeInput) );
      except
          mQuantidade := 0;
      end;
      If mQuantidade = 0 then begin
          Abort;
      end;
      if (mQuantidade > dmFiscal.NotasItensDisponivel.Value) or (mQuantidade <= 0 ) then begin
         ShowMessage('A quantidade informada para este item é invalida!');
         Abort;
      end;

      AdicionaUm(mQuantidade);
      bBuscarClick(Self);

      bRemove_Todos.Enabled := Dados.PedidosItens.RecordCount <> 0;
      bRemove_Item.Enabled  := Dados.PedidosItens.RecordCount <> 0;
end;

procedure TPedido_DevolucaoItens.AdicionaUm(pQtde: Real);
var
    mCSTPIS,
    mCSTCOFINS,
    mCSTIPI,
    mCST: ansiString;
begin
      With Dados, dmFiscal do begin
           Produtos.Locate('Codigo', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]);

           // Pegando o numero do item.
           tItem.SQL.Clear;
           tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM PedidosItens WHERE Pedido = :pPedido');
           tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           tItem.Open;

           // Código de situação tributaria do IPI.
           mCST := '';
           If (NotasItensValor_IPI.Value > 0) or (NotasItensAliquota_IPI.Value > 0) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IPI';
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
           mCSTIPI := CSTIPICodigo.asstring;

           // Código de situação tributaria do PIS/COFINS.
           CSTPIS.SQL.Clear;
           CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE Tipo_Operacao = :pTipo ORDER BY Codigo');
           CSTPIS.ParamByName('pTipo').AsInteger := PedidosSaida_Entrada.AsInteger;
           CSTPIS.Open;

           CSTCOFINS.SQL.Clear;
           CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE Tipo_Operacao = :pTipo ORDER BY Codigo');
           CSTCOFINS.ParamByName('pTipo').AsInteger := PedidosSaida_Entrada.AsInteger;
           CSTCOFINS.Open;
           mCST := '';

           If PedidosSaida_Entrada.AsInteger = 1 then begin
              If (ProdutosPIS_NotaSaida.AsFloat         > 0) and (ProdutosPIS_NotaSaida.AsFloat  = ConfiguracaoPIS_AliquotaBasicaSaida.AsFloat) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+B';   // 01.
              If (ProdutosPIS_NotaSaida.AsFloat         > 0) and (ProdutosPIS_NotaSaida.AsFloat <> ConfiguracaoPIS_AliquotaBasicaSaida.Value)   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+D';   // 02.
              If (TipoNotaCSTPIS_AliquotaUM.AsBoolean   = true) or (ProdutosCSTPIS_AliquotaUM.AsBoolean   = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+UM';                                // 03.
              If (TipoNotaCSTPIS_Monofasica.AsBoolean   = true) or (ProdutosCSTPIS_Monofasica.AsBoolean   = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+MONO+A0';                           // 04.
              If (TipoNotaCSTPIS_AliquotaZero.AsBoolean = true) or (ProdutosCSTPIS_AliquotaZero.AsBoolean = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';                                // 06.
              If (TipoNotaCSTPIS_Isenta.AsBoolean       = true) or (ProdutosCSTPIS_Isenta.AsBoolean       = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';                               // 07.
              If (TipoNotaCSTPIS_SemIncidencia.AsBoolean= true) or (ProdutosCSTPIS_SemIncidencia.AsBoolean= true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC';                              // 08.
              If (TipoNotaCSTPIS_Suspensao.AsBoolean    = true) or (ProdutosCSTPIS_Suspensao.AsBoolean    = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';                               // 09.
              If (TipoNotaCSTPIS_Outras.AsBoolean       = true) or (ProdutosCSTPIS_Outras.AsBoolean       = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';                                 // Outras.
              If CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
                 mCST := '<>';
                 CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]);
                 CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]);
              End;
              mCSTPIS    := CSTPISCodigo.asstring;
              mCSTCOFINS := CSTPISCodigo.asstring;
           end else begin
              mCSTPIS    := Dados.TipoNotaCST_PIS.AsString;
              mCSTCOFINS := Dados.TipoNotaCST_COFINS.AsString;
           End;

           If PedidosSaida_Entrada.AsInteger = 0 then begin
              PedidosItens.Append;
                           PedidosItensPedido.Value                := PedidosNumero.Value;
                           PedidosItensItem.Value                  := tItem.FieldByName('Item').Value;
                           tItem.Close;
                           PedidosItensCodigo_Mercadoria.Value     := NotasItensCodigo_Mercadoria.Value;
                           PedidosItensCodigo_Fabricante.Value     := RemoveCaracterXML(NotasItensCodigo_Fabricante.Value);
                           PedidosItensDescricao_Mercadoria.Value  := RemoveCaracterXML(NotasItensDescricao_Mercadoria.Value);
                           PedidosItensNCM.Value                   := NotasItensNCM.Value;
                           PedidosItensUnidade_Medida.Value        := NotasItensUnidade_Medida.Value;
                           PedidosItensQuantidade.Value            := pQtde;
                           PedidosItensValor_Unitario.Value        := NotasItensValor_Unitario.Value;
                           PedidosItensValor_Total.Value           := Roundto((NotasItensValor_Total.Value / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensCodigoTrib_TabA.Value       := NotasItensCodigoTrib_TabA.Value;
                           PedidosItensCodigoTrib_TabB.Value       := NotasItensCodigoTrib_TabB.Value;
                           if TipoNotaCalculo_CST.asboolean then begin
                              PedidosItensCodigoTrib_TabA.Value := '1';
                              PedidosItensCodigoTrib_TabB.Value := '90';
                           end;
                           PedidosItensAliquota_IPI.Value          := NotasItensAliquota_IPI.Value;
                           PedidosItensValor_BCIPI.Value           := Roundto((NotasItensValor_BCIPI.Value / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensValor_IPI.Value             := Roundto((NotasItensValor_IPI.Value   / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensTotal_IPI.Value             := Roundto((NotasItensTotal_IPI.Value   / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensAdicao.Value                := NotasItensAdicao.Value;
                           PedidosItensSequencia_SISCOMEX.Value    := NotasItensSequencia_SISCOMEX.AsInteger;
                           PedidosItensAliquota_II.Value           := NotasItensAliquota_II.Value;
                           PedidosItensValor_II.Value              := 0;
                           PedidosItensAliquota_ICMSOper.Value     := NotasItensAliquota_ICMSOper.Value;
                           PedidosItensValor_BCICMSOper.Value      := Roundto((NotasItensValor_BCICMSOper.Value / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensValor_ICMSOper.Value        := Roundto((NotasItensValor_ICMSOper.Value / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensAliquota_ICMSSub.Value      := NotasItensAliquota_ICMSSub.Value;
                           PedidosItensValor_BCICMSSub.Value       := Roundto((NotasItensValor_BCICMSSub.Value / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensValor_ICMSSub.Value         := Roundto((NotasItensValor_ICMSSub.Value / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensAliquota_MVA.Value          := NotasItensAliquota_MVA.Value;
                           PedidosItensValor_MVA.Value             := Roundto((NotasItensValor_MVA.Value / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensAliquota_ICMSReducao.Value  := NotasItensAliquota_ICMSReducao.Value;
                           PedidosItensValor_ICMSReducao.Value     := Roundto((NotasItensValor_ICMSReducao.Value / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensValor_Seguro.Value          := Roundto((NotasItensValor_Seguro.Value / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensValor_Frete.Value           := Roundto((NotasItensValor_Frete.Value / NotasItensQuantidade.Value) * pQtde, -2);
                           PedidosItensValor_Despesa.Value         := (NotasItensValor_Despesa.Value / NotasItensQuantidade.Value) * pQtde;
                           PedidosItensValor_DespesasOutros.Value  := (NotasItensValor_DespesasOutros.Value/ NotasItensQuantidade.Value) * pQtde;
                           PedidosItensAliquota_PIS.Value          := NotasItensAliquota_PIS.Value;
                           PedidosItensAliquota_COFINS.Value       := NotasItensAliquota_COFINS.Value;
                           PedidosItensPeso_Liquido.Value          := NotasItensPeso_Liquido.Value;
                           PedidosItensPeso_Bruto.Value            := NotasItensPeso_Bruto.Value;
                           PedidosItensVeiculo.Value               := NotasItensVeiculo.Value;
                           PedidosItensSaida_Entrada.Value         := PedidosSaida_Entrada.Value;
                           PedidosItensModalidade_BCICMS.Value     := NotasItensModalidade_BCICMS.Value;
                           PedidosItensModalidade_BCICMSST.Value   := NotasItensModalidade_BCICMSST.Value;
                           PedidosItensMovimenta_Inventario.Value  := NotasItensMovimenta_Inventario.Value;
                           PedidosItensMovimenta_Estoque.Value     := NotasItensMovimenta_Estoque.Value;
                           PedidosItensMovimenta_EstoqueRep.Value  := NotasItensMovimenta_EstoqueRep.Value;
                           PedidosItensCSTPIS.Value                := mCSTPIS;
                           PedidosItensCSTCOFINS.Value             := mCSTPIS;
                           PedidosItensCSTIPI.Value                := mCSTIPI;
                           PedidosItensEXTIPI.Value                := NotasItensEXTIPI.Value;
                           PedidosItensProcesso.Value              := NotasItensProcesso.Value;
                           PedidosItensDI.Value                    := NotasItensDI.Value;
                           PedidosItensValor_OutrasICMS.Value      := NotasItensValor_OutrasICMS.Value;
                           PedidosItensValor_IsentasICMS.Value     := NotasItensValor_IsentasICMS.Value;
                           PedidosItensValor_OutrasIPI.Value       := NotasItensValor_OutrasIPI.Value;
                           PedidosItensValor_IsentasIPI.Value      := NotasItensValor_IsentasIPI.Value;
                           PedidosItensSequencia.Value             := PedidosItensItem.Value;
                           PedidosItensAliquota_PISRed.Value       := NotasItensAliquota_PISRed.Value;
                           PedidosItensAliquota_COFINSRed.Value    := NotasItensAliquota_COFINSRed.Value;
                           PedidosItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.Value;
                           PedidosItensRegistro_Adicao.Value       := NotasItensRegistro_Adicao.Value;
                           PedidosItensTipo_Nota.Value             := PedidosTipo_Nota.Value;
                           if TipoNotaApuracao_PISCOFINS.asboolean then begin
                              PedidosItensValor_BCPIS.Value        := Roundto((NotasItensValor_BCPIS.Value / NotasItensQuantidade.Value) * pQtde, -2);
                              PedidosItensValor_PIS.Value          := Roundto((NotasItensValor_PIS.Value / NotasItensQuantidade.Value) * pQtde, -2);
                              PedidosItensValor_COFINS.Value       := Roundto((NotasItensValor_COFINS.Value / NotasItensQuantidade.Value) * pQtde, -2);
                              PedidosItensApuracao_PISCOFINS.Value := NotasItensApuracao_PISCOFINS.Value;
                           end;
                           PedidosItensDesconto.Value       := NotasItensDesconto.Value;
                           PedidosItensDesconto_Valor.Value := NotasItensDesconto_Valor.Value;

                           // Zerando os campos que estão marcados para não imprimir.
                           Pedido_Devolucao.tTipoNota.Locate('Codigo', Dados.PedidosTipo_Nota.Value, [loCaseInsensitive]);

                           If Pedido_Devolucao.tTipoNotaVisiveis_ICMSOper.Value = False then begin
                              PedidosItensValor_ICMSOper.Value    := 0;
                              PedidosItensValor_BCICMSOper.Value  := 0;
                              PedidosItensAliquota_ICMSOper.Value := 0;
                           End;
                           If Pedido_Devolucao.tTipoNotaVisiveis_ICMSSub.Value = False then begin
                              PedidosItensValor_ICMSSub.Value    := 0;
                              PedidosItensValor_BCICMSSub.Value  := 0;
                              PedidosItensAliquota_ICMSSub.Value := 0;
                           End;
                           If Pedido_Devolucao.tTipoNotaVisiveis_Frete.Value = False then
                              PedidosItensValor_Frete.Value := 0;
                           If Pedido_Devolucao.tTipoNotaVisiveis_Seguro.Value = False then
                              PedidosItensValor_Seguro.Value := 0;
                           If Pedido_Devolucao.tTipoNotaVisiveis_Despesas.Value = False then
                              PedidosItensValor_Despesa.Value := 0;
                           If Pedido_Devolucao.tTipoNotaVisiveis_IPI.Value = False then begin
                              PedidosItensAliquota_IPI.Value := 0;
                              PedidosItensValor_IPI.Value    := 0;
                              PedidosItensTotal_IPI.Value    := 0;
                              PedidosItensAliquota_II.Value  := 0;
                              PedidosItensValor_II.Value     := 0;
                           End;
                           PedidosItensDevolucao.Value         := true;
                           PedidosItensNota_Referencia.Value   := NotasNFe_cNF.Value;
                           PedidosItensData_Referencia.Value   := NotasData_Emissao.Value;
                           PedidosItensNumero_Referencia.Value := cNotaRef.AsInteger;
                           PedidosItensCEST.Value              := NotasItensCEST.Value;

                           // Pegando o valor de inventario da ficha de estoque.
                           tEstoque.SQL.Clear;
                           tEstoque.SQL.Add('SELECT ISNULL(Unitario_Saida, 0) AS Unitario_Saida');
                           tEstoque.SQL.Add('FROM   FichaInventario');
                           tEstoque.SQL.Add('WHERE  Nota = :pNota AND Data = :pData AND Codigo = :pCodigo');
                           tEstoque.ParamByName('pNota').AsInteger   := PedidosItensNumero_Referencia.AsInteger;
                           tEstoque.ParamByName('pData').AsDate      := PedidosItensData_Referencia.AsDateTime;
                           tEstoque.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                           tEstoque.Open;

                           PedidosItensValor_Inventario.Value     := tEstoque.FieldByName('Unitario_Saida').AsFloat;
                           PedidosItensNatureza_Codigo.Value      := Pedidos.FieldByName('Natureza_Codigo').Value;
                           PedidosItensValor_ICMSDesonerado.Value := NotasItens.FieldByName('Valor_ICMSDesonerado').asfloat;
                           PedidosItensValor_AFRMM.Value          := NotasItensValor_AFRMM.Value;
                           // Valor do IPI na devolução.
                           if TipoNotaIPI_Devolucao.asboolean then begin
                              PedidosItensValor_IPIDevol.Value      := PedidosItensTotal_IPI.Value;
                              PedidosItensPercentual_IPIDevol.Value := roundto((PedidosItensQuantidade.Value / NotasItensQuantidade.value)*100, -2);
                           end;
                           
                           // CBS / IBS.
                           PedidosItensAliquota_CBS.Value := iif(NotasItens.FieldByName('Aliquota_CBS').asfloat > 0, NotasItens.FieldByName('Aliquota_CBS').asfloat, 0.9);
                           PedidosItensValor_BCCBS.Value  := NotasItens.FieldByName('Valor_BCCBS').ascurrency;
                           PedidosItensValor_CBS.Value    := NotasItens.FieldByName('Valor_CBS').ascurrency;
                           PedidosItensAliquota_IBS.Value := iif(NotasItens.FieldByName('Aliquota_IBS').asfloat > 0, NotasItens.FieldByName('Aliquota_IBS').asfloat, 0.1);
                           PedidosItensValor_BCIBS.Value  := NotasItens.FieldByName('Valor_BCIBS').ascurrency;
                           PedidosItensValor_IBS.Value    := NotasItens.FieldByName('Valor_IBS').ascurrency;
                           PedidosItensAliquota_IS.Value  := NotasItens.FieldByName('Aliquota_IS').asfloat;
                           PedidosItensValor_BCIS.Value   := NotasItens.FieldByName('Valor_BCIS').ascurrency;
                           PedidosItensValor_IS.Value     := NotasItens.FieldByName('Valor_IS').ascurrency;
                           PedidosItensCSTCBS.Value       := iif(NotasItens.FieldByName('CSTCBS').asstring <> '', NotasItens.FieldByName('CSTCBS').asstring,'410');                           
                           PedidosItensCSTIBS.Value       := iif(NotasItens.FieldByName('CSTIBS').asstring <> '', NotasItens.FieldByName('CSTIBS').asstring,'410');                           
              PedidosItens.Post;
           end else begin
              PedidosItens.Append;
                           PedidosItensPedido.Value                := PedidosNumero.Value;
                           PedidosItensItem.Value                  := tItem.FieldByName('Item').Value;
                           tItem.Close;
                           PedidosItensCodigo_Mercadoria.Value     := NotasItensCodigo_Mercadoria.Value;
                           PedidosItensCodigo_Fabricante.Value     := RemoveCaracterXML(NotasItensCodigo_Fabricante.Value);
                           PedidosItensDescricao_Mercadoria.Value  := RemoveCaracterXML(NotasItensDescricao_Mercadoria.Value);
                           PedidosItensNCM.Value                   := NotasItensNCM.Value;
                           PedidosItensUnidade_Medida.Value        := NotasItensUnidade_Medida.Value;
                           PedidosItensQuantidade.Value            := pQtde;
                           PedidosItensValor_Unitario.Value        := NotasItensValor_Unitario.AsFloat;
                           PedidosItensCodigoTrib_TabA.Value       := NotasItensCodigoTrib_TabA.Value;
                           PedidosItensCodigoTrib_TabB.Value       := NotasItensCodigoTrib_TabB.Value;
                           if TipoNotaCalculo_CST.asboolean then begin
                              PedidosItensCodigoTrib_TabA.Value := '1';
                              PedidosItensCodigoTrib_TabB.Value := '90';
                           end;
                           PedidosItensAliquota_IPI.Value          := NotasItensAliquota_IPI.Value;
                           PedidosItensValor_BCIPI.Value           := (NotasItensValor_BCIPI.Value / NotasItensQuantidade.Value) * pQtde;
                           PedidosItensValor_IPI.Value             := (NotasItensTotal_IPI.Value   / NotasItensQuantidade.Value);
                           PedidosItensTotal_IPI.Value             := (NotasItensTotal_IPI.Value   / NotasItensQuantidade.Value) * pQtde;
                           PedidosItensAdicao.Value                := NotasItensAdicao.Value;
                           PedidosItensSequencia_SISCOMEX.Value    := NotasItensSequencia_SISCOMEX.AsInteger;
                           PedidosItensAliquota_II.Value           := NotasItensAliquota_II.Value;
                           PedidosItensValor_II.Value              := (NotasItensValor_II.Value / NotasItensQuantidade.Value) * pQtde;
                           PedidosItensAliquota_ICMSOper.Value     := NotasItensAliquota_ICMSOper.Value;
                           PedidosItensValor_BCICMSOper.Value      := (NotasItensValor_BCICMSOper.Value / NotasItensQuantidade.Value) * pQtde;
                           PedidosItensValor_ICMSOper.Value        := (NotasItensValor_ICMSOper.Value / NotasItensQuantidade.Value) * pQtde;
                           PedidosItensAliquota_ICMSSub.Value      := NotasItensAliquota_ICMSSub.Value;
                           PedidosItensValor_BCICMSSub.Value       := (NotasItensValor_BCICMSSub.Value / NotasItensQuantidade.Value) * pQtde;
                           PedidosItensValor_ICMSSub.Value         := (NotasItensValor_ICMSSub.Value / NotasItensQuantidade.Value) * pQtde;
                           PedidosItensAliquota_MVA.Value          := NotasItensAliquota_MVA.Value;
                           PedidosItensValor_MVA.Value             := (NotasItensValor_MVA.Value / NotasItensQuantidade.Value) * pQtde;
                           PedidosItensAliquota_ICMSReducao.Value  := NotasItensAliquota_ICMSReducao.Value;
                           PedidosItensValor_ICMSReducao.Value     := Roundto((NotasItensValor_ICMSReducao.Value / NotasItensQuantidade.Value) * pQtde, -4);
                           PedidosItensValor_Seguro.Value          := Roundto((NotasItensValor_Seguro.Value / NotasItensQuantidade.Value) * pQtde, -4);
                           PedidosItensValor_Frete.Value           := Roundto((NotasItensValor_Frete.Value / NotasItensQuantidade.Value) * pQtde, -4);
                           PedidosItensValor_Despesa.Value         := (NotasItensValor_Despesa.Value / NotasItensQuantidade.Value) * pQtde;
                           PedidosItensValor_DespesasOutros.Value  := (NotasItensValor_DespesasOutros.Value/ NotasItensQuantidade.Value) * pQtde;
                           PedidosItensAliquota_PIS.Value          := NotasItensAliquota_PIS.Value;
                           PedidosItensAliquota_COFINS.Value       := NotasItensAliquota_COFINS.Value;
                           PedidosItensPeso_Liquido.Value          := NotasItensPeso_Liquido.Value;
                           PedidosItensPeso_Bruto.Value            := NotasItensPeso_Bruto.Value;
                           PedidosItensVeiculo.Value               := NotasItensVeiculo.Value;
                           PedidosItensSaida_Entrada.Value         := PedidosSaida_Entrada.Value;
                           PedidosItensModalidade_BCICMS.Value     := NotasItensModalidade_BCICMS.Value;
                           PedidosItensModalidade_BCICMSST.Value   := NotasItensModalidade_BCICMSST.Value;
                           PedidosItensMovimenta_Inventario.Value  := NotasItensMovimenta_Inventario.Value;
                           PedidosItensMovimenta_Estoque.Value     := NotasItensMovimenta_Estoque.Value;
                           PedidosItensMovimenta_EstoqueRep.Value  := NotasItensMovimenta_EstoqueRep.Value;
                           PedidosItensCSTPIS.Value                := mCSTPIS;
                           PedidosItensCSTCOFINS.Value             := mCSTPIS;
                           PedidosItensCSTIPI.Value                := mCSTIPI;
                           PedidosItensEXTIPI.Value                := NotasItensEXTIPI.Value;
                           If Trim(PedidosProcesso.Value) = '' then
                              PedidosItensProcesso.Value := NotasItensProcesso.Value
                           else
                              PedidosItensProcesso.Value := PedidosProcesso.Value;
                           PedidosItensDI.Value                    := NotasItensDI.Value;
                           PedidosItensValor_OutrasICMS.Value      := NotasItensValor_OutrasICMS.Value;
                           PedidosItensValor_IsentasICMS.Value     := NotasItensValor_IsentasICMS.Value;
                           PedidosItensValor_OutrasIPI.Value       := NotasItensValor_OutrasIPI.Value;
                           PedidosItensValor_IsentasIPI.Value      := NotasItensValor_IsentasIPI.Value;
                           PedidosItensSequencia.Value             := PedidosItensItem.Value;
                           PedidosItensAliquota_PISRed.Value       := NotasItensAliquota_PISRed.Value;
                           PedidosItensAliquota_COFINSRed.Value    := NotasItensAliquota_COFINSRed.Value;
                           PedidosItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.Value;
                           PedidosItensRegistro_Adicao.Value       := NotasItensRegistro_Adicao.Value;
                           PedidosItensTipo_Nota.Value             := PedidosTipo_Nota.Value;
                           if TipoNotaApuracao_PISCOFINS.asboolean then begin
                              PedidosItensValor_BCPIS.Value        := (NotasItensValor_BCPIS.Value / NotasItensQuantidade.Value) * pQtde;
                              PedidosItensValor_PIS.Value          := (NotasItensValor_PIS.Value / NotasItensQuantidade.Value) * pQtde;
                              PedidosItensValor_COFINS.Value       := (NotasItensValor_COFINS.Value / NotasItensQuantidade.Value) * pQtde;
                              PedidosItensApuracao_PISCOFINS.Value := NotasItensApuracao_PISCOFINS.Value;
                           end;
                           PedidosItensDesconto.Value       := NotasItensDesconto.Value;
                           PedidosItensDesconto_Valor.Value := NotasItensDesconto_Valor.Value;

                           // Calculo da mercadoria com impostos.
                           If Trim(TipoNotaCalculo_Mercadoria.AsString) <> '' then begin
                              PedidosItensValor_Unitario.Value := CalculaMacro('Calculo_Mercadoria');
                           End;
                           If Trim(TipoNotaCalculo_MercadoriaImp.AsString) <> '' then begin
                              PedidosItensValor_Unitario.Value := CalculaMacro('Calculo_MercadoriaImp');
                           End;
                           PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value, -2);

                           // Zerando os campos que estão marcados para não imprimir.
                           Pedido_Devolucao.tTipoNota.Locate('Codigo', Dados.PedidosTipo_Nota.Value, [loCaseInsensitive]);

                           If Pedido_Devolucao.tTipoNotaVisiveis_ICMSOper.Value = False then begin
                              PedidosItensValor_ICMSOper.Value    := 0;
                              PedidosItensValor_BCICMSOper.Value  := 0;
                              PedidosItensAliquota_ICMSOper.Value := 0;
                           End;

                           If Pedido_Devolucao.tTipoNotaVisiveis_ICMSSub.Value = False then begin
                              PedidosItensValor_ICMSSub.Value    := 0;
                              PedidosItensValor_BCICMSSub.Value  := 0;
                              PedidosItensAliquota_ICMSSub.Value := 0;
                           End;

                           If Pedido_Devolucao.tTipoNotaVisiveis_Frete.Value = False then
                              PedidosItensValor_Frete.Value := 0;

                           If Pedido_Devolucao.tTipoNotaVisiveis_Seguro.Value = False then
                              PedidosItensValor_Seguro.Value := 0;

                           If Pedido_Devolucao.tTipoNotaVisiveis_Despesas.Value = False then
                              PedidosItensValor_Despesa.Value := 0;

                           If Pedido_Devolucao.tTipoNotaVisiveis_IPI.Value = False then begin
                              PedidosItensAliquota_IPI.Value := 0;
                              PedidosItensValor_IPI.Value    := 0;
                              PedidosItensTotal_IPI.Value    := 0;
                              PedidosItensAliquota_II.Value  := 0;
                              PedidosItensValor_II.Value     := 0;
                              PedidosItensValor_PIS.Value    := 0;
                              PedidosItensValor_COFINS.Value := 0;
                           End;

                           PedidosItensDevolucao.Value         := true;
                           PedidosItensNota_Referencia.Value   := NotasNFe_cNF.Value;
                           PedidosItensData_Referencia.Value   := NotasData_Emissao.Value;
                           PedidosItensNumero_Referencia.Value := cNotaRef.AsInteger;
                           PedidosItensCEST.Value              := NotasItensCEST.Value;

                           // Pegando o valor de inventario da ficha de estoque.
                           tEstoque.SQL.Clear;
                           tEstoque.SQL.Add('SELECT ISNULL(Unitario_Saida, 0) AS Unitario_Saida');
                           tEstoque.SQL.Add('FROM   FichaInventario');
                           tEstoque.SQL.Add('WHERE  Nota = :pNota AND Data = :pData AND Codigo = :pCodigo');
                           tEstoque.ParamByName('pNota').AsInteger   := PedidosItensNumero_Referencia.AsInteger;
                           tEstoque.ParamByName('pData').AsDate      := PedidosItensData_Referencia.AsDateTime;
                           tEstoque.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                           tEstoque.Open;

                           PedidosItensValor_Inventario.Value := tEstoque.FieldByName('Unitario_Saida').AsFloat;
                           PedidosItensNatureza_Codigo.Value  := Pedidos.FieldByName('Natureza_Codigo').Value;
                           PedidosItensValor_AFRMM.Value      := NotasItensValor_AFRMM.value;
                           // Valor do IPI na devolução.
                           if TipoNotaIPI_Devolucao.asboolean then begin
                              PedidosItensValor_IPIDevol.Value      := PedidosItensTotal_IPI.Value;
                              PedidosItensPercentual_IPIDevol.Value := roundto((PedidosItensQuantidade.Value / NotasItensQuantidade.value)*100, -2);
                           end;
                           // CBS / IBS.
                           PedidosItensAliquota_CBS.Value := iif(NotasItens.FieldByName('Aliquota_CBS').asfloat > 0, NotasItens.FieldByName('Aliquota_CBS').asfloat, 0.9);
                           PedidosItensValor_BCCBS.Value  := NotasItens.FieldByName('Valor_BCCBS').ascurrency;
                           PedidosItensValor_CBS.Value    := NotasItens.FieldByName('Valor_CBS').ascurrency;
                           PedidosItensAliquota_IBS.Value := iif(NotasItens.FieldByName('Aliquota_IBS').asfloat > 0, NotasItens.FieldByName('Aliquota_IBS').asfloat, 0.1);
                           PedidosItensValor_BCIBS.Value  := NotasItens.FieldByName('Valor_BCIBS').ascurrency;
                           PedidosItensValor_IBS.Value    := NotasItens.FieldByName('Valor_IBS').ascurrency;
                           PedidosItensAliquota_IS.Value  := NotasItens.FieldByName('Aliquota_IS').asfloat;
                           PedidosItensValor_BCIS.Value   := NotasItens.FieldByName('Valor_BCIS').ascurrency;
                           PedidosItensValor_IS.Value     := NotasItens.FieldByName('Valor_IS').ascurrency;
                           PedidosItensCSTCBS.Value       := iif(NotasItens.FieldByName('CSTCBS').asstring <> '', NotasItens.FieldByName('CSTCBS').asstring,'410');                           
                           PedidosItensCSTIBS.Value       := iif(NotasItens.FieldByName('CSTIBS').asstring <> '', NotasItens.FieldByName('CSTIBS').asstring,'410');                           
              PedidosItens.Post;
           end;

           // Adicionando a nota a tabela de movimentação dos lotes.
           if ProdutosLote_Obrigatorio.AsBoolean then begin
              PedidosItensDetalhe.SQL.Clear;
              PedidosItensDetalhe.SQL.Add('SELECT * FROM PedidosItensDetalhe WHERE Produto_Codigo = :pCodigo');
              PedidosItensDetalhe.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
              PedidosItensDetalhe.Open;

              tItem.SQL.Clear;
              tItem.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PedidosItensDetalhe');
              tItem.Open;

              NotasItensDetalhe.Locate('Produto_Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);

              PedidosItensDetalhe.Append;
                                  PedidosItensDetalheRegistro.Value          := tItem.FieldByName('Registro').AsInteger;
                                  PedidosItensDetalheItem.Value              := PedidosItensItem.AsInteger;
                                  PedidosItensDetalhePedido.Value            := PedidosItensPedido.AsInteger;
                                  PedidosItensDetalheProduto_Codigo.Value    := NotasItensDetalheProduto_Codigo.AsInteger;
                                  PedidosItensDetalheDetalhe.Value           := NotasItensDetalheDetalhe.AsInteger;
                                  PedidosItensDetalheDetalhe_Descricao.Value := NotasItensDetalheDetalhe_Descricao.AsString;
                                  PedidosItensDetalheQuantidade.Value        := PedidosItensQuantidade.AsFloat;
                                  PedidosItensDetalheSaida_Entrada.Value     := PedidosItensSaida_Entrada.AsInteger;
                                  PedidosItensDetalheLote.Value              := NotasItensDetalheLote.Value;
              PedidosItensDetalhe.Post;
           end;

           // Marcando os seriais como utilizados no pedido.
           if ProdutosSerial_Obrigatorio.AsBoolean then begin
              ProdutosSeriaisNotas.Open;
              if ProdutosSeriaisNotas.Locate('Produto_Codigo;Nota;Data;Emissor', VarArrayOf([PedidosItensCodigo_Mercadoria.Value, NotasItensNota.Value, NotasItensData.Value, 'P']), [loCaseInsensitive]) then begin
                 ProdutosSeriais.Open;
                 if ProdutosSeriais.Locate('Produto_Codigo; Numero', VarArrayOf([PedidosItensCodigo_Mercadoria.Value, ProdutosSeriaisNotasNumero.AsString]), [loCaseInsensitive]) then begin
                    ProdutosSeriais.Edit;
                                    ProdutosSeriaisPedido.Value := PedidosNumero.AsInteger;
                    ProdutosSeriais.Post;
                 end;
              end;
           end;

           bRemove_Todos.Enabled := PedidosItens.RecordCount <> 0;
           bRemove_Item.Enabled  := PedidosItens.RecordCount <> 0;
      End;
end;

procedure TPedido_DevolucaoItens.bRemove_TodosClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      If MessageDlg('Deseja realmente remover todos os item do pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
         With Dados do begin
              // Remove os lotes do pedido do controle de lotes.
              PedidosItensDetalhe.SQL.Clear;
              PedidosItensDetalhe.SQL.Add('DELETE FROM PedidosItensDetalhe WHERE Pedido = :pPedido');
              PedidosItensDetalhe.ParamByName('pPedido').AsInteger := PedidosItensPedido.AsInteger;
              PedidosItensDetalhe.Execute;
              PedidosItensDetalhe.SQL.Clear;
              PedidosItensDetalhe.SQL.Add('SELECT * FROM PedidosItensDetalhe WHERE Produto_Codigo = :pCodigo AND Pedido = :pPedido');
              PedidosItensDetalhe.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
              PedidosItensDetalhe.Open;

              PedidosItens.SQL.Clear;
              PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE (Pedido = :pPedido)');
              PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
              PedidosItens.Execute;
              PedidosItens.SQL.Clear;
              PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
              PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
              PedidosItens.Open;

              if cNotaRef.AsInteger > 0 then bBuscarClick(Self);
         End;
      End;
      bRemove_Todos.Enabled := Dados.PedidosItens.RecordCount <> 0;
      bRemove_Item.Enabled  := Dados.PedidosItens.RecordCount <> 0;
      Screen.Cursor         := crDefault;
end;

procedure TPedido_DevolucaoItens.bInclui_TodosClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := NotasItens.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando todos os itens ao pedido...';
           Janela_Processamento.Show;

           NotasItens.First;
           NotasItens.DisableControls;
           //PedidosItens.DisableControls;
           While not NotasItens.Eof do begin
                 AdicionaUm(NotasItensDisponivel.Value);
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 NotasItens.Next;
                 Application.ProcessMessages;
           End;
           NotasItens.EnableControls;
           bBuscarClick(Self);

           PedidosItens.First;
           Janela_Processamento.Close;

           bRemove_Todos.Enabled := PedidosItens.RecordCount <> 0;
           bRemove_Item.Enabled  := PedidosItens.RecordCount <> 0;
      End;
end;

procedure TPedido_DevolucaoItens.bRemove_ItemClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente remover o item do pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
         Screen.Cursor := crSQLWait;

         with Dados, dmFiscal do begin
              // Remove os lotes do pedido do controle de lotes.
              PedidosItensDetalhe.SQL.Clear;
              PedidosItensDetalhe.SQL.Add('DELETE FROM PedidosItensDetalhe WHERE Produto_Codigo = :pCodigo AND Pedido = :pPedido');
              PedidosItensDetalhe.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
              PedidosItensDetalhe.ParamByName('pPedido').AsInteger := PedidosItensPedido.AsInteger;
              PedidosItensDetalhe.Execute;
              PedidosItensDetalhe.SQL.Clear;
              PedidosItensDetalhe.SQL.Add('SELECT * FROM PedidosItensDetalhe WHERE Produto_Codigo = :pCodigo AND Pedido = :pPedido');
              PedidosItensDetalhe.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
              PedidosItensDetalhe.Open;

              PedidosItens.Delete;
         end;

         bBuscarClick(Self);
      End;
      bRemove_Todos.Enabled := Dados.PedidosItens.RecordCount <> 0;
      bRemove_Item.Enabled  := Dados.PedidosItens.RecordCount <> 0;
      Screen.Cursor := crDefault;
end;

procedure TPedido_DevolucaoItens.FormClose(Sender: TObject;var Action: TCloseAction);
Var
    mNotas : WideString;
begin
      Screen.Cursor := crSQLWait;
      With Dados do Begin
           If PedidosItens.RecordCount <> 0 then begin
              // Zera todos os campos de totais que são calculados por macro.
              Pedidos.Edit;
                      PedidosValor_TotalProdutos.Value    := 0;
                      PedidosValor_TotalIPI.Value         := 0;
                      PedidosBCIPI.Value                  := 0;
                      PedidosBCICMS.Value                 := 0;
                      PedidosValor_ICMS.Value             := 0;
                      PedidosBCICMS_Substitutivo.Value    := 0;
                      PedidosValorICMS_Substitutivo.Value := 0;
                      PedidosTotal_Frete.Value            := 0;
                      PedidosValor_Seguro.Value           := 0;
                      PedidosValor_TotalNota.Value        := 0;
                      PedidosValor_TotalMVA.Value         := 0;
                      PedidosValor_OutrasIPI.Value        := 0;
                      PedidosValor_IsentasIPI.Value       := 0;
                      PedidosValor_OutrasICMS.Value       := 0;
                      PedidosValor_IsentasICMS.Value      := 0;
                      PedidosVolume_PesoLiquido.Value     := 0;
                      PedidosVolume_PesoBruto.Value       := 0;
                      PedidosValor_COFINS.Value           := 0;
                      PedidosValor_PIS.Value              := 0;
                      PedidosValor_BCII.Value             := 0;
                      PedidosValor_TotalII.Value          := 0;
                      PedidosTotal_Descontos.Value        := 0;
                      PedidosValor_OutrasDespesas.Value   := 0;
                      //PedidosValor_DespesasOutros.Value   := 0;
                      PedidosValor_BCICMSMono.Value       := 0;
                      PedidosValor_ICMSMono.Value         := 0;
                      PedidosValor_BCICMSMonoRet.Value    := 0;
                      PedidosValor_ICMSMonoRet.Value      := 0;
                      PedidosValor_AFRMM.Value            := 0;
                      PedidosValor_IPIDevol.Value         := 0;
              Pedidos.Post;

              // Totaliza os PRODUTOS e o total do IPI via macro e atualiza a tabela de pedidos.
              Janela_Processamento := TJanela_Processamento.Create(Self);
              Janela_Processamento.Progresso.Position := 0;
              Janela_Processamento.Progresso.Max      := PedidosItens.RecordCount;
              Janela_Processamento.Show;

              tNotas.SQL.Clear;
              tNotas.SQL.Add('SELECT DISTINCT Numero_Referencia, Data_Referencia FROM PedidosItens WHERE Pedido = :pPedido');
              tNotas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
              tNotas.Open;

              While not tNotas.Eof do begin
                    mNotas := mNotas + tNotas.FieldByName('Numero_Referencia').AsString+' '+tNotas.FieldByName('Data_Referencia').AsString + ' / ';
                    tNotas.Next;
              End;

              // Rateando o valor adicional da despesa informado na capa do pedido.
              if PedidosValor_DespesasOutros.AsCurrency > 0 then begin
                 with tTmp do begin
                      sql.Clear;
                      sql.Add('select Total = sum(Valor_Total) from PedidosItens where Pedido = :pPed');
                      parambyname('pPed').value  := PedidosNumero.Value;
                      open;
                      mTotal := fieldbyname('Total').value;
                      sql.Clear;
                      sql.Add('update PedidosItens set Valor_Despesa = Valor_Despesa + ((:pDesp/:pTotal) * Valor_Unitario)');
                      sql.Add('where Pedido = :pPed');
                      parambyname('pPed').value   := PedidosNumero.Value;
                      parambyname('pDesp').value  := PedidosValor_DespesasOutros .Value;
                      parambyname('pTotal').value := mTotal;
                      execute;
                 end;
              end;
              
              with PedidosItens do begin
                   sql.clear;
                   sql.add('select * from PedidosItens where Pedido = :pPed order by Item');
                   parambyname('pPed').value := PedidosNumero.Value;
                   open;
                   First;
                   DisableControls;
              end;
              Pedidos.DisableControls;
              While not PedidosItens.Eof do Begin
                    Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
                    Pedidos.Edit;
                            PedidosValor_TotalProdutos.Value    := Roundto(PedidosValor_TotalProdutos.Value + PedidosItensValor_Total.Value, -4);
                            PedidosValor_BCII.Value             := PedidosValor_BCII.Value + (PedidosItensValor_BCII.Value * PedidosItensQuantidade.value);
                            PedidosValor_TotalII.Value          := PedidosValor_TotalII.Value + (roundto(PedidosItensValor_II.Value, -4) * PedidosItensQuantidade.value);
                            PedidosBCIPI.Value                  := PedidosBCIPI.Value + PedidosItensValor_BCIPI.Value;
                            PedidosValor_TotalIPI.Value         := PedidosValor_TotalIPI.Value + PedidosItensTotal_IPI.Value;
                            PedidosBCICMS.Value                 := PedidosBCICMS.Value + PedidosItensValor_BCICMSOper.Value;
                            PedidosValor_ICMS.Value             := PedidosValor_ICMS.Value + PedidosItensValor_ICMSOper.Value;
                            PedidosBCICMS_Substitutivo.Value    := PedidosBCICMS_Substitutivo.Value + PedidosItensValor_BCICMSSub.Value;
                            PedidosValorICMS_Substitutivo.Value := PedidosValorICMS_Substitutivo.Value + PedidosItensValor_ICMSSub.Value;
                            PedidosValor_TotalMVA.Value         := PedidosValor_TotalMVA.Value + PedidosItensValor_MVA.Value;
                            PedidosVolume_PesoLiquido.Value     := PedidosVolume_PesoLiquido.Value + (PedidosItensPeso_Liquido.Value * PedidosItensQuantidade.Value);
                            PedidosVolume_PesoBruto.Value       := PedidosVolume_PesoBruto.Value + (PedidosItensPeso_Bruto.Value * PedidosItensQuantidade.Value);
                            PedidosValor_BCPIS.Value            := PedidosValor_BCPIS.Value + PedidosItensValor_BCPIS.Value;
                            PedidosValor_PIS.Value              := PedidosValor_PIS.Value + PedidosItensValor_PIS.Value;
                            PedidosValor_COFINS.Value           := PedidosValor_COFINS.Value + PedidosItensValor_COFINS.Value;
                            PedidosValor_OutrasIPI.Value        := PedidosValor_OutrasIPI.Value + PedidosItensValor_OutrasIPI.Value;
                            PedidosValor_IsentasIPI.Value       := PedidosValor_IsentasIPI.Value + PedidosItensValor_IsentasIPI.Value;
                            PedidosValor_OutrasICMS.Value       := PedidosValor_OutrasICMS.Value + PedidosItensValor_OutrasICMS.Value;
                            PedidosValor_IsentasICMS.Value      := PedidosValor_IsentasICMS.Value + PedidosItensValor_IsentasICMS.Value;
                            PedidosTotal_Frete.Value            := PedidosTotal_Frete.Value + PedidosItensValor_Frete.Value;
                            PedidosValor_Seguro.Value           := PedidosValor_Seguro.Value + PedidosItensValor_Seguro.Value;
                            PedidosVolume_Quantidade.Value      := PedidosVolume_Quantidade.Value + (PedidosItensQuantidade.Value / ProdutosQuantidade_Volumes.Value);
                            If not TipoNotaNFe_Estorno.AsBoolean then begin
                               PedidosInf_Complementares.Value := dmFiscal.NotasInf_Complementares.Value;
                            end else begin
                               PedidosInf_Complementares.Value := 'NOTA FISCAL DE ESTORNO REFERENTE A(s) NF(s) '+mNotas;
                            End;
                            PedidosTotal_Descontos.Value := PedidosTotal_Descontos.Value + (PedidosItensDesconto_Valor.Value * PedidosItensQuantidade.Value);

                            PedidosValor_DespesasOutros.Value := PedidosValor_DespesasOutros.Value + (PedidosItensValor_DespesasOutros.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                            If ProdutosTipo_Conversao.Value <> 'D' then
                               PedidosValor_OutrasDespesas.Value := PedidosValor_OutrasDespesas.Value + Roundto((PedidosItensValor_Despesa.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -2)
                            else
                               PedidosValor_OutrasDespesas.Value := PedidosValor_OutrasDespesas.Value + Roundto((PedidosItensValor_Despesa.Value / (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -2);

                            PedidosValor_BCICMSMono.Value    := PedidosValor_BCICMSMono.Value + PedidosItensValor_BCICMSMono.Value;
                            PedidosValor_ICMSMono.Value      := PedidosValor_ICMSMono.Value + PedidosItensValor_ICMSMono.Value;
                            PedidosValor_BCICMSMonoRet.Value := PedidosValor_BCICMSMonoRet.Value + PedidosItensValor_BCICMSMonoRet.Value;
                            PedidosValor_ICMSMonoRet.Value   := PedidosValor_ICMSMonoRet.Value + PedidosItensValor_ICMSMonoRet.Value;
                            If ProdutosTipo_Conversao.Value <> 'D' then
                               PedidosValor_AFRMM.Value := PedidosValor_AFRMM.Value + (PedidosItensValor_AFRMM.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                            else
                               PedidosValor_AFRMM.Value := PedidosValor_AFRMM.Value + (PedidosItensValor_AFRMM.Value / (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                            PedidosValor_IPIDevol.Value := PedidosValor_IPIDevol.Value + PedidosItensValor_IPIDevol.Value;

                            PedidosValor_BCCBS.value := PedidosItensValor_BCCBS.value + PedidosValor_BCCBS.value;
                            PedidosValor_CBS.value   := PedidosItensValor_CBS.value + PedidosValor_CBS.value;
                            PedidosValor_BCIBS.Value := PedidosItensValor_BCIBS.value + PedidosValor_BCIBS.value;
                            PedidosValor_IBS.value   := PedidosItensValor_IBS.value + PedidosValor_IBS.value;
                            PedidosValor_BCIS.value  := PedidosItensValor_BCIS.value + PedidosValor_BCIS.value;
                            PedidosValor_IS.value    := PedidosItensValor_IS.value + PedidosValor_IS.value;
                    Pedidos.Post;
                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                    PedidosItens.Next;
                    Application.ProcessMessages;
              End;

              TipoNota.Locate('Codigo', PedidosTipo_Nota.Value, [loCaseInsensitive]);
              If TipoNotaCalculo_TotalPedido.Value <> '' then begin
                 Pedidos.Edit;
                         PedidosValor_TotalNota.Value := Roundto(CalculaMacro('Calculo_TotalPedido'), -2);
                 Pedidos.Post;
              End;

              PedidosItens.EnableControls;
              Pedidos.EnableControls;
              Janela_Processamento.Close;
           End else begin
              Pedidos.Edit;
              PedidosValor_TotalProdutos.Value    := 0;
              PedidosValor_TotalIPI.Value         := 0;
              PedidosBCICMS.Value                 := 0;
              PedidosValor_ICMS.Value             := 0;
              PedidosBCICMS_Substitutivo.Value    := 0;
              PedidosValorICMS_Substitutivo.Value := 0;
              PedidosTotal_Frete.Value            := 0;
              PedidosValor_TotalNota.Value        := 0;
              PedidosValor_TotalNota.Value        := 0;
              PedidosValor_TotalMVA.Value         := 0;
              PedidosVolume_PesoLiquido.Value     := 0;
              PedidosVolume_PesoBruto.Value       := 0;
              PedidosValor_OutrasDespesas.Value   := 0;
              Pedidos.Post;
              ShowMessage('Nenhum item informado, o pedido foi zerado.');
           End;
      End;

      dmFiscal.NotasItens.Close;
      Screen.Cursor := crDefault;

      LimpaMemoria;
      Pedido_DevolucaoItens.Release;
      Pedido_DevolucaoItens := nil;
end;

Function TPedido_DevolucaoItens.CalculaMacro(Campo:String):Real;
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
          // Convertendo a formulas do campo.
          mFormula := RemoveCaracter(#13,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#12,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#10,'',TipoNota.FieldByName(Campo).AsString);

          Campos.First;
          While not Campos.Eof do begin
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

     If (Campo = 'Calculo_Mercadoria') or (Campo = 'Calculo_MercadoriaImp') then begin
        cFormula.Lines.Add(Replicate('=',129));
        cFormula.Lines.Add('      ITEM: '+Dados.PedidosItensItem.AsString);
        cFormula.Lines.Add('   PRODUTO: '+Dados.PedidosItensCodigo_Mercadoria.AsString + ' - '+Copy(Dados.PedidosItensDescricao_Mercadoria.AsString,1,100));
        cFormula.Lines.Add('QUANTIDADE: '+FormatFloat('###,###,##0.00000000', Dados.PedidosItensQuantidade.ASFloat));
        cFormula.Lines.Add('QTDE P/UNI: '+FormatFloat('###,###,##0.00000000', Dados.ProdutosQuantidade_Unidade.AsFloat));
        cFormula.Lines.Add('  UNITARIO: '+FormatFloat('###,###,##0.00000000', mMacro.Calc([0])));
        cFormula.Lines.Add('     TOTAL: '+FormatFloat('###,###,##0.00000000', mMacro.Calc([0]) * Dados.PedidosItensQuantidade.AsFloat));
        cFormula.Lines.Add('');
     End;
     cFormula.Lines.Add('     CAMPO: '+Campo);
     cFormula.Lines.Add('   FÓRMULA: '+RemoveCaracter(#13,'',Dados.TipoNota.FieldByName(Campo).AsString));
     cFormula.Lines.Add('   VALORES: '+mFormula);
     cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', mResultado ));
     cFormula.Lines.Add('');

     Result := mResultado;
end;

procedure TPedido_DevolucaoItens.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TPedido_DevolucaoItens.bBuscarClick(Sender: TObject);
var
   mLista:string;
begin
      with dmFiscal, Dados do begin
           with tTmp do begin
                sql.Clear ;
                sql.Add('UPDATE NotasItens SET Disponivel = Quantidade -');
                sql.Add('                                   (ISNULL((SELECT SUM(Quantidade) FROM NotasItens NI WHERE Saida_Entrada = 0 AND Numero_Referencia = :pNota AND Data_Referencia = :pData AND NI.Codigo_Mercadoria = NotasItens.Codigo_Mercadoria');
                sql.Add('                                   AND NI.Cancelada <> 1 AND NI.Nfe_Denegada <> 1), 0) +');
                sql.Add('                                   ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens NI WHERE Nota_Referencia = :pNota AND Data_Referencia = :pData AND NI.Codigo_Mercadoria = NotasItens.Codigo_Mercadoria), 0) +');
                sql.Add('                                   ISNULL((SELECT SUM(Quantidade) FROM PedidosItens PDI WHERE Saida_Entrada = 0 AND Numero_Referencia = :pNota AND PDI.Codigo_Mercadoria = NotasItens.Codigo_Mercadoria), 0))');
                sql.Add('WHERE Nota = :pNota');
                sql.Add('AND   Data = :pData');
                ParamByName('pNota').AsInteger := cNotaRef.AsInteger;
                ParamByName('pData').AsDate    := cDataRef.Date;
                //SQL.SaveToFile('c:\temp\Pedido_Devolucao_Disponivel.sql');
                Execute;
           end;
           with NotasItens do begin
                sql.Clear;
                sql.Add('select * from NotasItens where Nota = :pNota AND Data = :pData and Disponivel > 0 order by Item');
                paramByName('pNota').AsInteger := cNotaRef.AsInteger;
                paramByName('pData').AsDate    := cDataRef.Date;
                open;
           end;
           if NotasItens.RecordCount = 0 then begin
              with tNotas do begin
                   SQL.Clear;
                   SQL.Add('select Nota, Data, Quantidade');
                   SQL.Add('from NotasItens NI');
                   SQL.Add('where Numero_Referencia = :pNota');
                   SQL.Add('and Data_Referencia = :pData');
                   SQL.Add('and Saida_Entrada = 0');
                   SQL.Add('and Cancelada <> 1');
                   SQL.Add('and Nfe_Denegada <> 1');
                   SQL.Add('order by Numero_Referencia');
                   ParamByName('pNota').AsInteger := cNotaRef.AsInteger;
                   ParamByName('pData').AsDate    := cDataRef.Date;
                   //sql.SaveToFile('c:\temp\Devolucao_itens.sql');
                   Open;
                   if RecordCount > 0 then begin
                      while not eof do begin
                            mLista := mLista + 'Nota Fiscal: '+fieldbyname('Nota').AsString+' de '+fieldbyname('Data').AsString+'  Quantide: '+fieldbyname('Quantidade').AsString+#13;
                            Next;
                      end;
                      ShowMessage('Sem saldo para devolução!'+#13+#13+'Nota Fiscal já informada nas seguintes notas fiscais:'+#13+#13+trim(mlista));
                      Abort;
                    end;
              end;
           end;

           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE Numero = :pNota AND Data_Emissao = :pData');
           Notas.ParamByName('pNota').AsInteger := cNotaRef.AsInteger;
           Notas.ParamByName('pData').AsDate    := cDataRef.Date;
           Notas.Open;

           NotasItensDetalhe.SQL.Clear;
           NotasItensDetalhe.SQL.Add('SELECT * FROM NotasItensDetalhe WHERE Nota = :pNota AND Data_Emissao = :pData ORDER BY Produto_Codigo');
           NotasItensDetalhe.ParamByName('pNota').AsInteger := cNotaRef.AsInteger;
           NotasItensDetalhe.ParamByName('pData').AsDate    := cDataRef.Date;
           NotasItensDetalhe.Open;
           
           ProdutosSeriaisNotas.SQL.Clear;
           ProdutosSeriaisNotas.SQL.Add('SELECT *');
           ProdutosSeriaisNotas.SQL.Add('       ,Tipo         = CASE WHEN Saida_Entrada = 0     THEN ''ENTRADA''   ELSE ''SAÍDA''   END');
           ProdutosSeriaisNotas.SQL.Add('       ,Emissor_Nome = CASE WHEN Emissor       = ''T'' THEN ''TERCEIROS'' ELSE ''PRÓPRIO'' END');
           ProdutosSeriaisNotas.SQL.Add('FROM  ProdutosSeriaisNotas');
           ProdutosSeriaisNotas.SQL.Add('WHERE Nota = :pNota AND Data = :pData');
           ProdutosSeriaisNotas.SQL.Add('ORDER BY Produto_Codigo');
           ProdutosSeriaisNotas.ParamByName('pNota').AsInteger := cNotaRef.AsInteger;
           ProdutosSeriaisNotas.ParamByName('pData').AsDate    := cDataRef.Date;
           ProdutosSeriaisNotas.Open;
      end;
end;

procedure TPedido_DevolucaoItens.GradeRefDblClick(Sender: TObject);
begin
      bInclui_Item.Click;
end;

procedure TPedido_DevolucaoItens.GradeRefMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      GradeRef.BeginDrag(True);
end;

procedure TPedido_DevolucaoItens.GradeDragDrop(Sender, Source: TObject; X,Y: Integer);
begin
      bInclui_Item.Click;
end;

procedure TPedido_DevolucaoItens.GradeDragOver(Sender, Source: TObject; X,Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

procedure TPedido_DevolucaoItens.FormKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      cFormula.Align := alClient;
      if TeclaPressionada(VK_MENU) and TeclaPressionada(72) then Begin
         if cFormula.Visible = False then begin
            cFormula.Visible  := true;
         end else begin
            cFormula.Visible  := False;
         end;
      end;
end;


end.
