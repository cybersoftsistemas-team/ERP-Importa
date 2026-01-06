unit frmPedido_DevolucaoItensTerceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, CalcExpress, RXCtrls, Vcl.ExtCtrls,
  DBCtrls, Vcl.StdCtrls, RXDBCtrl, Funcoes, system.UITypes, Mask, Grids, DBGrids, RxCurrEdit, RxToolEdit, MemDS;

type
  TPedido_DevolucaoItensTerceiros = class(TForm)
    GroupBox2: TGroupBox;
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bInclui_Item: TButton;
    bInclui_Todos: TButton;
    bRemove_Item: TButton;
    bRemove_Todos: TButton;
    mMacro: TCalcExpress;
    tItem: TMSQuery;
    tItemItem: TSmallintField;
    cNotaRef: TCurrencyEdit;
    cDataRef: TDateEdit;
    StaticText1: TStaticText;
    StaticText22: TStaticText;
    bBuscar: TButton;
    GroupBox1: TGroupBox;
    GradeRef: TRxDBGrid;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bInclui_ItemClick(Sender: TObject);
    procedure AdicionaUm(pQtde: Real);
    procedure bRemove_TodosClick(Sender: TObject);
    procedure bInclui_TodosClick(Sender: TObject);
    procedure bRemove_ItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Function  CalculaMacro(Campo:String):Currency;
    procedure FormCreate(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure GradeRefMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure GradeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GradeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_DevolucaoItensTerceiros: TPedido_DevolucaoItensTerceiros;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento;

{$R *.dfm}

procedure TPedido_DevolucaoItensTerceiros.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TPedido_DevolucaoItensTerceiros.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal do begin
           NotasTerceirosItens.SQL.Clear;
           NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Emissao = :pData)');
           NotasTerceirosItens.ParamByName('pNota').AsInteger := cNotaRef.AsInteger;
           NotasTerceirosItens.ParamByName('pData').AsDate    := cDataRef.Date;
           NotasTerceirosItens.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos');
           Produtos.Open;

           Campos.SQL.Clear;
           Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
           Campos.Open;

           CSTIPI.SQL.Clear;
           CSTIPI.SQL.Add('SELECT * FROM CSTIPI ORDER BY Classificacao');
           CSTIPI.Open;

           CSTPIS.SQL.Clear;
           CSTPIS.SQL.Add('SELECT * FROM CSTPIS ORDER BY Descricao');
           CSTPIS.Open;

           CSTCOFINS.SQL.Clear;
           CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS ORDER BY Descricao');
           CSTCOFINS.Open;

           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido)');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.Open;

           // Verifica se os itens estão zerados, se estiver carrega todos os itens da nota de origem.
           If PedidosItens.RecordCount = 0 then begin
              bInclui_Todos.Click;
           End;   

           PedidosItens.First;
           Produtos.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TPedido_DevolucaoItensTerceiros.bInclui_ItemClick(Sender: TObject);
Var
    mQtdeInput  : String;
    mQuantidade : Real;
begin
      mQtdeInput  := InputBox('Quantidade do item','Quantidade:', dmFiscal.NotasTerceirosItensDisponivel.AsString);
      mQuantidade := 0;

      If mQtdeInput <> '' then
         mQuantidade := StrtoFloat(mQtdeInput)
      else
         Abort;

      If (mQuantidade > dmFiscal.NotasTerceirosItensDisponivel.Value) or (mQuantidade <= 0 ) then begin
         ShowMessage('A quantidade informada para este item é invalida!');
         Abort;
      End;

      AdicionaUm(mQuantidade);

      bBuscarClick(Self);

      bRemove_Todos.Enabled := Dados.PedidosItens.RecordCount <> 0;
      bRemove_Item.Enabled  := Dados.PedidosItens.RecordCount <> 0;
end;

procedure TPedido_DevolucaoItensTerceiros.AdicionaUm(pQtde: Real);
var
    mCST: String;
begin
      With Dados, dmFiscal do begin
           // Pegando o numero do item.
           tItem.SQL.Clear;
           tItem.SQL.Add('SELECT MAX(Item) AS Item FROM PedidosItens WHERE(Pedido = :pPedido)');
           tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           tItem.Open;

           // Código de situação tributaria do IPI.
           mCST := '';
           If PedidosItensValor_IPI.Value     <> 0   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IPI';
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

           // Código de Situação Tributaria do PIS.
           mCST := '';
           If PedidosSaida_Entrada.AsInteger = 1 then begin
              If (ProdutosPIS_NotaSaida.AsFloat          > 0) and (ProdutosPIS_NotaSaida.AsFloat  = ConfiguracaoPIS_AliquotaBasicaSaida.AsFloat) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+B'; // 01.
              If (ProdutosPIS_NotaSaida.AsFloat          > 0) and (ProdutosPIS_NotaSaida.AsFloat <> ConfiguracaoPIS_AliquotaBasicaSaida.AsFloat) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+D'; // 02.
              If (TipoNotaCSTPIS_AliquotaUM.AsBoolean    = true) or (ProdutosCSTPIS_AliquotaUM.AsBoolean   = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+UM';                              // 03.
              If (TipoNotaCSTPIS_Monofasica.AsBoolean    = true) or (ProdutosCSTPIS_Monofasica.AsBoolean   = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+MONO+A0';                         // 04.
              If (TipoNotaCSTPIS_AliquotaZero.AsBoolean  = true) or (ProdutosCSTPIS_AliquotaZero.AsBoolean = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';                              // 06.
              If (TipoNotaCSTPIS_Isenta.AsBoolean        = true) or (ProdutosCSTPIS_Isenta.AsBoolean       = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';                             // 07.
              If (TipoNotaCSTPIS_SemIncidencia.AsBoolean = true) or (ProdutosCSTPIS_SemIncidencia.AsBoolean= true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC';                            // 08.
              If (TipoNotaCSTPIS_Suspensao.AsBoolean     = true) or (ProdutosCSTPIS_Suspensao.AsBoolean    = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';                             // 09.
              If (TipoNotaCSTPIS_Outras.AsBoolean        = true) or (ProdutosCSTPIS_Outras.AsBoolean       = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';                               // Outras.
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

           PedidosItens.Append;
                        PedidosItensPedido.Value                := PedidosNumero.Value;
                        PedidosItensItem.Value                  := tItemItem.Value+1;
                        tItem.Close;
                        PedidosItensCodigo_Mercadoria.Value     := NotasTerceirosItensCodigo_Mercadoria.Value;
                        PedidosItensDescricao_Mercadoria.Value  := NotasTerceirosItensDescricao_Mercadoria.Value ;
                        PedidosItensNCM.Value                   := NotasTerceirosItensNCM.Value;
                        PedidosItensUnidade_Medida.Value        := NotasTerceirosItensUnidade_Medida.Value;
                        PedidosItensQuantidade.Value            := pQtde;
                        PedidosItensValor_Unitario.Value        := NotasTerceirosItensValor_Unitario.Value;
                        PedidosItensValor_Total.Value           := NotasTerceirosItensValor_Liquido.Value;
                        PedidosItensCodigoTrib_TabA.Value       := NotasTerceirosItensCodigoTrib_TabA.Value;
                        PedidosItensCodigoTrib_TabB.Value       := NotasTerceirosItensCodigoTrib_TabB.Value;
                        PedidosItensAliquota_IPI.Value          := NotasTerceirosItensAliquota_IPI.Value;
                        PedidosItensValor_IPI.Value             := NotasTerceirosItensValor_IPI.Value;
                        PedidosItensTotal_IPI.Value             := NotasTerceirosItensValor_IPI.Value;
                        PedidosItensAdicao.Value                := NotasTerceirosItensAdicao.Value;
                        PedidosItensSequencia_SISCOMEX.Value    := NotasTerceirosItensSequencia_SISCOMEX.Value;
                        PedidosItensValor_BCICMSOper.Value      := NotasTerceirosItensValor_BCICMSOper.Value;
                        PedidosItensAliquota_ICMSOper.Value     := NotasTerceirosItensAliquota_ICMSOper.Value;
                        PedidosItensValor_ICMSOper.Value        := NotasTerceirosItensValor_ICMSOper.Value;
                        PedidosItensValor_BCICMSSub.Value       := NotasTerceirosItensValor_BCICMSSub.Value;
                        PedidosItensAliquota_ICMSSub.Value      := NotasTerceirosItensAliquota_ICMSSub.Value;
                        PedidosItensValor_ICMSSub.Value         := NotasTerceirosItensValor_ICMSSub.Value;
                        PedidosItensAliquota_MVA.Value          := NotasTerceirosItensAliquota_MVA.Value;
                        PedidosItensAliquota_PIS.Value          := NotasTerceirosItensAliquota_PIS.Value;
                        PedidosItensValor_PIS.Value             := NotasTerceirosItensValor_PIS.Value;
                        PedidosItensAliquota_COFINS.Value       := NotasTerceirosItensAliquota_COFINS.Value;
                        PedidosItensValor_COFINS.Value          := NotasTerceirosItensValor_COFINS.Value;
                        PedidosItensPeso_Liquido.Value          := NotasTerceirosItensPeso_Liquido.Value;
                        PedidosItensPeso_Bruto.Value            := NotasTerceirosItensPeso_Bruto.Value;
                        PedidosItensSaida_Entrada.Value         := PedidosSaida_Entrada.Value;
                        PedidosItensMovimenta_Inventario.Value  := NotasTerceirosItensMovimenta_Inventario.Value;
                        PedidosItensMovimenta_Estoque.Value     := NotasTerceirosItensMovimenta_Estoque.Value;
                        PedidosItensCSTPIS.Value                := CSTPISCodigo.Value;
                        PedidosItensCSTCOFINS.Value             := CSTPISCodigo.Value;
                        PedidosItensCSTIPI.Value                := CSTIPICodigo.Value;
                        PedidosItensEXTIPI.Value                := NotasTerceirosItensEXTIPI.Value;
                        PedidosItensProcesso.Value              := NotasTerceirosItensProcesso.Value;
                        PedidosItensDI.Value                    := NotasTerceirosItensDI.Value;
                        PedidosItensValor_OutrasICMS.Value      := NotasTerceirosItensValor_OutrasICMS.Value;
                        PedidosItensValor_IsentasICMS.Value     := NotasTerceirosItensValor_IsentasICMS.Value;
                        PedidosItensValor_OutrasIPI.Value       := NotasTerceirosItensValor_OutrasIPI.Value;
                        PedidosItensValor_IsentasIPI.Value      := NotasTerceirosItensValor_IsentasIPI.Value;
                        PedidosItensSequencia.Value             := PedidosItensItem.Value;
                        PedidosItensApuracao_PISCOFINS.Value    := PedidosApuracao_PISCOFINS.Value;
                        PedidosItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.Value;
                        PedidosItensRegistro_Adicao.Value       := NotasTerceirosItensRegistro_Adicao.Value;
                        PedidosItensTipo_Nota.Value             := PedidosTipo_Nota.Value;
                        PedidosItensNota_Referencia.Value       := NotasTerceirosNfe_cNF.Value;
                        PedidosItensData_Referencia.Value       := cDataRef.Date;
                        PedidosItensNumero_Referencia.Value     := cNotaRef.AsInteger;
                        PedidosItensCEST.Value                  := NotasTerceirosItensCEST.Value;
                        PedidosItensDevolucao.Value             := true;

                        // Pegando o valor de inventario da ficha de estoque.
                        tEstoque.SQL.Clear;
                        tEstoque.SQL.Add('SELECT ISNULL(Unitario_Saida, 0) AS Unitario_Saida');
                        tEstoque.SQL.Add('FROM   FichaEstoque');
                        tEstoque.SQL.Add('WHERE  Nota = :pNota AND Data = :pData AND Codigo = :pCodigo');
                        tEstoque.ParamByName('pNota').AsInteger   := PedidosItensNumero_Referencia.AsInteger;
                        tEstoque.ParamByName('pData').AsDate      := PedidosItensData_Referencia.AsDateTime;
                        tEstoque.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                        tEstoque.Open;

                        PedidosItensValor_Inventario.Value := tEstoque.FieldByName('Unitario_Saida').AsFloat;
                        PedidosItensNatureza_Codigo.Value  := Pedidos.FieldByName('Natureza_Codigo').Value;
           PedidosItens.Post;
           
           NotasTerceirosItens.Edit;
                               NotasTerceirosItensDisponivel.Value := 0;
           NotasTerceirosItens.Post;
           
           bRemove_Todos.Enabled := PedidosItens.RecordCount <> 0;
           bRemove_Item.Enabled  := PedidosItens.RecordCount <> 0;
      End;
end;

procedure TPedido_DevolucaoItensTerceiros.bRemove_TodosClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      If MessageDlg('Deseja realmente remover todos os item do pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
         With Dados, dmFiscal do begin
              PedidosItens.SQL.Clear;
              PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE (Pedido = :pPedido)');
              PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
              PedidosItens.Execute;
              PedidosItens.SQL.Clear;
              PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
              PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
              PedidosItens.Open;
              PedidosItens.EnableControls;
              bBuscarClick(Self);
         End;
      End;
      bRemove_Todos.Enabled := Dados.PedidosItens.RecordCount <> 0;
      bRemove_Item.Enabled  := Dados.PedidosItens.RecordCount <> 0;
      Screen.Cursor         := crDefault;
end;

procedure TPedido_DevolucaoItensTerceiros.bInclui_TodosClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE Pedido = :pPedido AND Numero_Referencia = :pNota');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.ParamByName('pNota').AsInteger   := cNotaRef.AsInteger;
           PedidosItens.Execute;
           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido)');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.Open;

           bBuscarClick(Self);

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.Progresso.Max      := NotasTerceirosItens.RecordCount;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando todos os itens ao pedido...';
           Janela_Processamento.Show;

           NotasTerceirosItens.First;
           NotasTerceirosItens.DisableControls;
           PedidosItens.DisableControls;
           While not NotasTerceirosItens.Eof do begin
                 AdicionaUm(NotasTerceirosItensDisponivel.Value);
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 NotasTerceirosItens.Next;
                 Application.ProcessMessages;
           End;
           NotasTerceirosItens.EnableControls;
           PedidosItens.EnableControls;
           NotasTerceirosItens.Refresh;
           PedidosItens.First;
           Janela_Processamento.Close;

           bRemove_Todos.Enabled := PedidosItens.RecordCount <> 0;
           bRemove_Item.Enabled  := PedidosItens.RecordCount <> 0;
      End;
end;

procedure TPedido_DevolucaoItensTerceiros.bRemove_ItemClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente remover o item do pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
         Screen.Cursor := crSQLWait;
         Dados.PedidosItens.Delete;
         bBuscarClick(Self);
      End;
      bRemove_Todos.Enabled := Dados.PedidosItens.RecordCount <> 0;
      bRemove_Item.Enabled  := Dados.PedidosItens.RecordCount <> 0;
      Screen.Cursor := crDefault;
end;

procedure TPedido_DevolucaoItensTerceiros.FormClose(Sender: TObject;var Action: TCloseAction);
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
              Pedidos.Post;

              // Totaliza os PRODUTOS e o total do IPI via macro e atualiza a tabela de pedidos.
              Janela_Processamento := TJanela_Processamento.Create(Self);
              Janela_Processamento.Progresso.Position := 0;
              Janela_Processamento.Progresso.Max      := PedidosItens.RecordCount;
              Janela_Processamento.Show;

              PedidosItens.First;
              PedidosItens.DisableControls;
              Pedidos.DisableControls;

              While not PedidosItens.Eof do Begin
                    Pedidos.Edit;
                            PedidosValor_TotalProdutos.Value    := PedidosValor_TotalProdutos.Value + PedidosItensValor_Total.Value;
                            PedidosBCIPI.Value                  := PedidosBCIPI.Value + PedidosItensValor_BCIPI.Value;
                            PedidosValor_TotalIPI.Value         := PedidosValor_TotalIPI.Value + PedidosItensTotal_IPI.Value;
                            PedidosBCICMS.Value                 := PedidosBCICMS.Value + PedidosItensValor_BCICMSOper.Value;
                            PedidosValor_ICMS.Value             := PedidosValor_ICMS.Value + PedidosItensValor_ICMSOper.Value;
                            PedidosBCICMS_Substitutivo.Value    := PedidosBCICMS_Substitutivo.Value + PedidosItensValor_BCICMSSub.Value;
                            PedidosValorICMS_Substitutivo.Value := PedidosValorICMS_Substitutivo.Value + PedidosItensValor_ICMSSub.Value;
                            PedidosValor_TotalMVA.Value         := PedidosValor_TotalMVA.Value + PedidosItensValor_MVA.Value;
                            PedidosVolume_PesoLiquido.Value     := PedidosVolume_PesoLiquido.Value + (PedidosItensPeso_Liquido.Value * PedidosItensQuantidade.Value);
                            PedidosVolume_PesoBruto.Value       := PedidosVolume_PesoBruto.Value + (PedidosItensPeso_Bruto.Value * PedidosItensQuantidade.Value);
                            PedidosValor_PIS.Value              := PedidosValor_PIS.Value + PedidosItensValor_PIS.Value;
                            PedidosValor_COFINS.Value           := PedidosValor_COFINS.Value + PedidosItensValor_COFINS.Value;
                            PedidosValor_OutrasIPI.Value        := PedidosValor_OutrasIPI.Value + PedidosItensValor_OutrasIPI.Value;
                            PedidosValor_IsentasIPI.Value       := PedidosValor_IsentasIPI.Value + PedidosItensValor_IsentasIPI.Value;
                            PedidosValor_OutrasICMS.Value       := PedidosValor_OutrasICMS.Value + PedidosItensValor_OutrasICMS.Value;
                            PedidosValor_IsentasICMS.Value      := PedidosValor_IsentasICMS.Value + PedidosItensValor_IsentasICMS.Value;
                    Pedidos.Post;
                    Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                    PedidosItens.Next;
                    Application.ProcessMessages;
              End;

              TipoNota.Locate('Codigo', PedidosTipo_Nota.Value, [loCaseInsensitive]);
              
              If TipoNotaCalculo_TotalPedido.Value <> '' then begin
                 Pedidos.Edit;
                 PedidosValor_TotalNota.Value := CalculaMacro('Calculo_TotalPedido');
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
      
      Screen.Cursor := crDefault;
      Pedido_DevolucaoItensTerceiros.Release;
      Pedido_DevolucaoItensTerceiros := nil;
end;

Function TPedido_DevolucaoItensTerceiros.CalculaMacro(Campo:String):Currency;
var
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
    mResultado: Real;
   i
   ,mPos
   ,mTam
   ,mPosFun: Integer;
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
end;

procedure TPedido_DevolucaoItensTerceiros.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TPedido_DevolucaoItensTerceiros.bBuscarClick(Sender: TObject);
begin
      With dmFiscal do begin
           NotasTerceirosItens.SQL.Clear ;
           NotasTerceirosItens.SQL.Add('UPDATE NotasTerceirosItens SET Disponivel = Quantidade -');
           NotasTerceirosItens.SQL.Add('                                   (ISNULL((SELECT SUM(Quantidade) FROM NotasItens   NI  WHERE Numero_Referencia = :pNota AND Data_Referencia = :pData AND NI.Codigo_Mercadoria = NotasTerceirosItens.Codigo_Mercadoria), 0) +');
           NotasTerceirosItens.SQL.Add('                                    ISNULL((SELECT SUM(Quantidade) FROM PedidosItens PDI WHERE Numero_Referencia = :pNota AND PDI.Codigo_Mercadoria = NotasTerceirosItens.Codigo_Mercadoria), 0))');
           NotasTerceirosItens.ParamByName('pNota').AsInteger := cNotaRef.AsInteger;
           NotasTerceirosItens.ParamByName('pData').AsDate    := cDataRef.Date;
           NotasTerceirosItens.Execute;

           NotasTerceirosItens.SQL.Clear;
           NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Disponivel > 0 ORDER BY Item');
           NotasTerceirosItens.ParamByName('pNota').AsInteger := cNotaRef.AsInteger;
           NotasTerceirosItens.ParamByName('pData').AsDate    := cDataRef.Date;
           NotasTerceirosItens.Open;

           NotasTerceiros.SQL.Clear;
           NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE Nota = :pNota and Data_Emissao = :pData');
           NotasTerceiros.ParamByName('pNota').AsInteger := cNotaRef.AsInteger;
           NotasTerceiros.ParamByName('pData').AsDate    := cDataRef.Date;
           NotasTerceiros.Execute;
      End;
end;

procedure TPedido_DevolucaoItensTerceiros.GradeRefMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      GradeRef.BeginDrag(True);
end;

procedure TPedido_DevolucaoItensTerceiros.GradeDragDrop(Sender,Source: TObject; X, Y: Integer);
begin
      bInclui_Item.Click;
end;

procedure TPedido_DevolucaoItensTerceiros.GradeDragOver(Sender,Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

end.
