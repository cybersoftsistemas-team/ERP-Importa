unit frmPedidosOutra_ProprioReferenciaItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess,
  CalcExpress, Menus,StdCtrls, RXCtrls, Vcl.ExtCtrls, DBCtrls, RXDBCtrl, Math, Funcoes, Mask, Grids, DBGrids, RxCurrEdit, RxToolEdit, system.UITypes, MemDS;

type
  TPedidosOutra_ProprioReferenciaItens = class(TForm)
    GroupBox2: TGroupBox;
    Grade2: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bInclui_Item: TButton;
    bInclui_Todos: TButton;
    GroupBox1: TGroupBox;
    Grade1: TRxDBGrid;
    Panel2: TPanel;
    StaticText3: TStaticText;
    StaticText17: TStaticText;
    cNotaReferencia: TCurrencyEdit;
    cDataReferencia: TDateEdit;
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
    tAdicoes: TMSQuery;
    bBuscar: TButton;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    tEntradaST: TMSQuery;
    StaticText4: TStaticText;
    cPercentualQtde: TCurrencyEdit;
    bInclui_Interv: TButton;
    procedure bBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bInclui_TodosClick(Sender: TObject);
    procedure AdicionaUm(pQtde, pValor: Real);
    procedure bInclui_ItemClick(Sender: TObject);
    procedure bInclui_IntervClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mQtde,
    mValor : Real;
  end;

var
  PedidosOutra_ProprioReferenciaItens: TPedidosOutra_ProprioReferenciaItens;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmPedido_ItensOutros, frmPedido_ItensOutrosQuantidade;

{$R *.dfm}

procedure TPedidosOutra_ProprioReferenciaItens.bBuscarClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Numero = :pNota) AND (Data_Emissao = :pData)');
           Notas.ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
           Notas.ParamByName('pData').AsDate    := cDataReferencia.Date;
           Notas.Open;

           NotasItens.SQL.Clear;
           NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE Nota = :pNota AND Data = :pData ORDER BY item');
           NotasItens.ParamByName('pNota').AsInteger  := cNotaReferencia.AsInteger;
           NotasItens.ParamByName('pData').AsDate     := cDataReferencia.Date;
           NotasItens.Open;
      End;
end;

procedure TPedidosOutra_ProprioReferenciaItens.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TPedidosOutra_ProprioReferenciaItens.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedidosOutra_ProprioReferenciaItens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      dmFiscal.NotasItens.Close;
      dmFiscal.Notas.close;
      PedidosOutra_ProprioReferenciaItens.Release;
      PedidosOutra_ProprioReferenciaItens := nil;
end;

procedure TPedidosOutra_ProprioReferenciaItens.bInclui_TodosClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := NotasItens.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando todos os itens da nota fiscal...';
           Janela_Processamento.Show;

           NotasItens.First;
           PedidosItens.DisableControls;
           While (not NotasItens.Eof) and (Funcoes.Cancelado = false) do begin
                 AdicionaUm(NotasItensQuantidade.Value, NotasItensValor_Unitario.Value);

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 NotasItens.Next;
                 Application.ProcessMessages;
           End;
           PedidosItens.EnableControls;
           Janela_Processamento.Close;
           NotasItens.First;
      End;
      cNotaReferencia.SetFocus;
end;

procedure TPedidosOutra_ProprioReferenciaItens.AdicionaUm(pQtde, pValor: Real);
var
   mCredPres:string;
begin
      With Dados, dmFiscal do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo = :pCodigo)');
           Produtos.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
           Produtos.Open;

           tItem.Close;
           tItem.SQL.Clear;
           tItem.SQL.Add('SELECT MAX(Item) AS Item FROM PedidosItens WHERE (Pedido = :pPedido)');
           tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           tItem.Open;

           if (PedidosSaida_Entrada.AsInteger = 1) and (TipoNotaMovimenta_Estoque.asboolean) then begin
              if pQtde > EstoqueProduto(NotasItensCodigo_Mercadoria.AsInteger) then begin
                 MessageDlg('Quantidade de produtos maior que o estoque existente!'+#13+#13+'Produto:'+NotasItensCodigo_Mercadoria.AsString+#13+NotasItensDescricao_Mercadoria.Value, mtError, [mbOK], 0);
                 Abort;
              end;
           end;

           PedidosItens.Append;
                        PedidosItensPedido.Value               := PedidosNumero.Value;
                        PedidosItensSaida_Entrada.Value        := PedidosSaida_Entrada.Value;
                        PedidosItensItem.Value                 := tItem.FieldByName('Item').AsInteger+1;
                        PedidosItensSequencia_SISCOMEX.Value   := tItem.FieldByName('Item').AsInteger+1;
                        PedidosItensSequencia.Value            := tItem.FieldByName('Item').AsInteger+1;
                        PedidosItensProcesso.Value             := NotasItensProcesso.Value;
                        PedidosItensSequencia_SISCOMEX.Value   := NotasItensSequencia_SISCOMEX.Value;
                        PedidosItensCodigo_Mercadoria.Value    := NotasItensCodigo_Mercadoria.Value;
                        PedidosItensDescricao_Mercadoria.Value := NotasItensDescricao_Mercadoria.Value;
                        PedidosItensDI.Value                   := NotasItensDI.Value;
                        PedidosItensAdicao.Value               := NotasItensAdicao.Value;
                        PedidosItensNCM.Value                  := NotasItensNCM.Value;
                        PedidosItensUnidade_Medida.Value       := NotasItensUnidade_Medida.Value;
                        PedidosItensAliquota_PIS.Value         := NotasItensAliquota_PIS.Value;
                        PedidosItensAliquota_COFINS.Value      := NotasItensAliquota_COFINS.Value;
                        if cPercentualQtde.Value > 0 then
                           PedidosItensQuantidade.Value := Roundto(Percentual(NotasItensQuantidade.Value, cPercentualQtde.Value), -3)
                        else
                           PedidosItensQuantidade.Value := NotasItensQuantidade.Value;
                                                                 
                        PedidosItensValor_PIS.Value              := NotasItensValor_PIS.Value;
                        PedidosItensValor_COFINS.Value           := NotasItensValor_COFINS.Value;
                        PedidosItensAliquota_ICMSOper.Value      := NotasItensAliquota_ICMSOper.Value;
                        PedidosItensValor_BCICMSOper.Value       := (NotasItensValor_BCICMSOper.AsCurrency / NotasItensQuantidade.AsFloat) * pQtde;
                        PedidosItensValor_ICMSOper.Value         := (NotasItensValor_ICMSOper.AsCurrency / NotasItensQuantidade.AsFloat) * pQtde;
                        PedidosItensAliquota_ICMSSub.Value       := NotasItensAliquota_ICMSSub.Value;
                        PedidosItensValor_BCICMSSub.Value        := NotasItensValor_BCICMSSub.Value;
                        PedidosItensValor_ICMSSub.Value          := NotasItensValor_ICMSSub.Value;
                        PedidosItensAliquota_IPI.Value           := NotasItensAliquota_IPI.Value;
                        PedidosItensValor_BCIPI.Value            := NotasItensValor_BCIPI.Value;
                        PedidosItensAliquota_II.Value            := NotasItensAliquota_II.Value;
                        PedidosItensValor_II.Value               := NotasItensValor_II.Value;
                        PedidosItensValor_BCII.Value             := NotasItensValor_BCII.Value;
                        PedidosItensPeso_Liquido.Value           := NotasItensPeso_Liquido.Value;
                        PedidosItensPeso_Bruto.Value             := NotasItensPeso_Bruto.Value;
                        PedidosItensNota_Referencia.Value        := NotasNFe_cNF.Value;
                        PedidosItensNumero_Referencia.Value      := NotasitensNota.Value;
                        PedidosItensData_Referencia.Value        := NotasData_Emissao.Value;
                        PedidosItensValor_IsentasIPI.Value       := (NotasItensValor_IsentasIPI.Value /NotasItensQuantidade.Value) * pQtde;
                        PedidosItensValor_OutrasIPI.Value        := (NotasItensValor_OutrasIPI.Value  /NotasItensQuantidade.Value) * pQtde;
                        PedidosItensValor_IsentasICMS.Value      := (NotasItensValor_IsentasICMS.Value/NotasItensQuantidade.Value) * pQtde;
                        PedidosItensValor_OutrasICMS.Value       := (NotasItensValor_OutrasICMS.Value /NotasItensQuantidade.Value) * pQtde;
                        PedidosItensMovimenta_Inventario.Value   := TipoNotaMovimenta_Inventario.AsBoolean;
                        PedidosItensMovimenta_Estoque.Value      := TipoNotaMovimenta_Estoque.AsBoolean;
                        PedidosItensMovimenta_EstoqueRep.Value   := TipoNotaMovimenta_EstoqueRep.AsBoolean;
                        PedidosItensApuracao_PISCOFINS.Value     := TipoNotaApuracao_PISCOFINS.AsBoolean;
                        PedidosItensTipo_Nota.Value              := PedidosTipo_Nota.Value;
                        PedidosItensRegistro_Adicao.Value        := NotasItensRegistro_Adicao.Value;
                        PedidosItensEXTIPI.Value                 := NCMCodigo_EXTIPI.Value;
                        PedidosItensDevolucao.Value              := PedidosItensDevolucao.Value;
                        PedidosItensCEST.Value                   := NotasItensCEST.Value;
                        PedidosItensNatureza_Codigo.Value        := PedidosNatureza_Codigo.Value;
                        PedidosItensLucro.Value                  := PedidosLucro.Value;
                        PedidosItensValor_Unitario.Value         := pValor;
                        PedidosItensCodigo_CredPres.Value        := NotasItensCodigo_CredPres.Value;
                        PedidosItensBeneficio_Fiscal.Value       := NotasItensBeneficio_Fiscal.Value;
                        PedidosItensValor_BCICMSPresumido.Value  := NotasItensValor_BCICMSPresumido.Value;
                        PedidosItensAliquota_ICMSPresumido.Value := NotasItensAliquota_ICMSPresumido.Value;
                        PedidosItensValor_ICMSPresumido.Value    := NotasItensValor_ICMSPresumido.Value;

                        if TipoNotaFormula_Produto.AsBoolean then begin
                           Pedido_ItensOutros.PegaValorUni;
                           PedidosItensValor_Unitario.Value := Pedido_ItensOutros.CalculaMacro('Calculo_Mercadoria');
                        end else begin
                           Pedido_ItensOutros.Recalcula;
                        end;
                        PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value, -2);
                        
                        // Calculo do ICMS (Crédito presumido).
                        if NotasItensValor_ICMSPresumido.ascurrency <= 0 then begin
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
                                         PedidosItensValor_BCICMSPresumido.value := roundto(Pedido_ItensOutros.CalculaMacro('Calculo_BCICMSPresumido'), -2);
                                      end;
                                      if TipoNotaCalculo_ICMSPresumido.Value <> '' then begin
                                         PedidosItensValor_ICMSPresumido.value := roundto(Pedido_ItensOutros.CalculaMacro('Calculo_ICMSPresumido'), -2);
                                      end;
                                   end;
                              end;
                           end;
                        end;
           PedidosItens.Post;
      End;
end;

procedure TPedidosOutra_ProprioReferenciaItens.bInclui_ItemClick(Sender: TObject);
begin
      With Dados do begin
           mQtde  := 0;
           mValor := 0;

           Pedido_ItensOutrosQuantidade         := TPedido_ItensOutrosQuantidade.Create(Self);
           Pedido_ItensOutrosQuantidade.Caption := Caption;
           Pedido_ItensOutrosQuantidade.mNota   := 'Prop';
           Pedido_ItensOutrosQuantidade.ShowModal;
           if mQtde > 0 then begin
              AdicionaUm(mQtde, mValor);
           end;
      End;
end;

procedure TPedidosOutra_ProprioReferenciaItens.bInclui_IntervClick(Sender: TObject);
Var
    mItens: String;
    mini, mfim:integer;
begin
      with Dados, dmFiscal do begin
           mItens := InputBox('Intervalor de itens Separados por um "-"','Intervalo:','');
           mIni := 0;
           mFim := 0;
           if mItens = '' then begin
              Abort;
           end;

           try
              mIni := strtoint(trim(Copy(mItens,1,pos('-', mItens)-1)));
              mFim := strtoint(trim(Copy(mItens,pos('-', mItens)+1, 50)));
           except
              ShowMessage('Intervalo informado invalído!'+#13+#13+'Informe o número inicial e o número final do item separado por um "-".');
              Abort;
           end;
           
           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := NotasItens.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando todos os itens da nota fiscal...';
           Janela_Processamento.Show;

           NotasItens.First;
           PedidosItens.DisableControls;
           While (not NotasItens.Eof) and (Funcoes.Cancelado = false) do begin
                 if (NotasItensItem.AsInteger >= mIni) and (NotasItensItem.AsInteger <= mFim) then begin
                    AdicionaUm(NotasItensQuantidade.Value, NotasItensValor_Unitario.Value);
                 end;
                 
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 NotasItens.Next;
                 Application.ProcessMessages;
           End;
           PedidosItens.EnableControls;
           Janela_Processamento.Close;
           NotasItens.First;
      End;
      cNotaReferencia.SetFocus;
end;

procedure TPedidosOutra_ProprioReferenciaItens.FormShow(Sender: TObject);
begin
     cnotaReferencia.Setfocus;
end;


end.
