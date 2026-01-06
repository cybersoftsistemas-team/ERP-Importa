unit frmPedido_TerceirosItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Grids, DBGrids, RXDBCtrl, Vcl.StdCtrls, DB, MemDS, DBAccess,
  MSAccess, CalcExpress, Menus, mdTabEnter, Vcl.ComCtrls, RXCtrls, Vcl.ExtCtrls,
  ATXPtask, DBCtrls, FUNCOES;

type
  TPedido_DevolucaoItens = class(TForm)
    GroupBox2: TGroupBox;
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bInclui_Item: TButton;
    bInclui_Todos: TButton;
    bRemove_Item: TButton;
    bRemove_Todos: TButton;
    XPPanel1: TXPPanel;
    Image2: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Barra: TStatusBar;
    Progresso: TProgressBar;
    TabEnter1: TTabEnter;
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
    tItemItem: TSmallintField;
    CalcExpress1: TCalcExpress;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdicionaUm;
    procedure bInclui_ItemClick(Sender: TObject);
    procedure bRemove_TodosClick(Sender: TObject);
    procedure bInclui_TodosClick(Sender: TObject);
    procedure bRemove_ItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Function  CalculaMacro(Campo:String):Currency;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_DevolucaoItens: TPedido_DevolucaoItens;

implementation

uses frmDMFiscal, frmDados, frmPedido_ItensNota;

{$R *.dfm}

procedure TPedido_DevolucaoItens.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TPedido_DevolucaoItens.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With Dados, dmFiscal do begin
             NotasItens.Close;
             NotasItens.SQL.Clear;
             NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE Nota = :pNota');
             NotasItens.ParamByName('pNota').AsInteger := Dados.PedidosNota_Referencia.Value;
             NotasItens.Open;
             Produtos.Open;
             PedidosItens.Close;
             PedidosItens.SQL.Clear;
             PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
             PedidosItens.ParamByName('pPedido').AsInteger := Dados.PedidosNumero.Value;
             PedidosItens.Open;

             // Verifica se os itens estão zerados, se estiver carrega todos os itens da nota de origem.
             If PedidosItens.RecordCount = 0 then
                bInclui_Todos.Click;

             PedidosItens.First;
             Produtos.Open;
        End;
        Screen.Cursor := crDefault;
end;

procedure TPedido_DevolucaoItens.bInclui_ItemClick(Sender: TObject);
begin
       Pedido_ItensNota := TPedido_ItensNota.Create(Self);
       Pedido_ItensNota.Caption := 'Nota Fiscal';
       Pedido_ItensNota.ShowModal;
end;

procedure TPedido_DevolucaoItens.AdicionaUm;
begin
      With Dados, dmFiscal do begin
           // Pegando o numero do item.
           tItem.Close;
           tItem.SQL.Clear;
           tItem.SQL.Add('SELECT MAX(Item) AS Item FROM PedidosItens WHERE Pedido = :pPedido');
           tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           tItem.Open;

           PedidosItens.Append;
                        PedidosItensPedido.Value               := PedidosNumero.Value;
                        PedidosItensItem.Value                 := tItemItem.Value+1;
                        tItem.Close;
                        PedidosItensEmpresa.Value              := NotasItensEmpresa.Value;
                        PedidosItensCodigo_Mercadoria.Value    := NotasItensCodigo_Mercadoria.Value;
                        PedidosItensDescricao_Mercadoria.Value := NotasItensDescricao_Mercadoria.Value ;
                        PedidosItensNCM.Value                  := NotasItensNCM.Value;
                        PedidosItensUnidade_Medida.Value       := NotasItensUnidade_Medida.Value;
//                        PedidosItensQuantidade.Value           := NotasItensDisponivel.Value;
                        PedidosItensQuantidade.Value           := NotasItensQuantidade.Value;
                        PedidosItensValor_Unitario.Value       := NotasItensValor_Unitario.Value;
                        PedidosItensValor_Total.Value          := NotasItensValor_Total.Value;
                        PedidosItensCodigoTrib_TabA            := NotasItensCodigoTrib_TabA;
                        PedidosItensCodigoTrib_TabB            := NotasItensCodigoTrib_TabB;
                        PedidosItensValor_IPI.Value            := NotasItensValor_IPI.Value;
                        PedidosItensAdicao.Value               := NotasItensAdicao.Value;
                        PedidosItensAliquota_II.Value          := NotasItensAliquota_II.Value;
                        PedidosItensValor_II.Value             := NotasItensValor_II.Value;
                        PedidosItensValor_BCICMSOper.Value     := NotasItensValor_BCICMSOper.Value;
                        PedidosItensAliquota_ICMSOper.Value    := NotasItensAliquota_ICMSOper.Value;
                        PedidosItensValor_ICMSOper.Value       := NotasItensValor_ICMSOper.Value;
                        PedidosItensValor_BCICMSSub.Value      := NotasItensValor_BCICMSSub.Value;
                        PedidosItensAliquota_ICMSSub.Value     := NotasItensAliquota_ICMSSub.Value;
                        PedidosItensValor_ICMSSub.Value        := NotasItensValor_ICMSSub.Value;
                        PedidosItensAliquota_MVA.Value         := NotasItensAliquota_MVA.Value;
                        PedidosItensValor_MVA.Value            := NotasItensValor_MVA.Value;
                        PedidosItensAliquota_ICMSReducao.Value := NotasItensAliquota_ICMSReducao.Value;
                        PedidosItensValor_ICMSReducao.Value    := NotasItensValor_ICMSReducao.Value;
                        PedidosItensValor_Seguro.Value         := NotasItensValor_Seguro.Value;
                        PedidosItensValor_Frete.Value          := NotasItensValor_Frete.Value;
                        PedidosItensValor_Despesa.Value        := NotasItensValor_Despesa.Value;
                        PedidosItensValor_PIS.Value            := NotasItensValor_PIS.Value;
                        PedidosItensValor_COFINS.Value         := NotasItensValor_COFINS.Value;
                        PedidosItensPeso_Liquido.Value         := NotasItensPeso_Liquido.Value;
                        PedidosItensPeso_Bruto.Value           := NotasItensPeso_Bruto.Value;
           PedidosItens.Post;
           NotasItens.Edit;
                      NotasItensDisponivel.Value := 0;
           NotasItens.Post;                                                         
      End;
end;

procedure TPedido_DevolucaoItens.bRemove_TodosClick(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      If MessageDlg('Deseja realmente remover todos os item do pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
         With Dados do begin
              Barra.SimpleText := 'Removendo todos os itens do pedido...Aguarde.';
              PedidosItens.DisableControls;

              // Deletando todos os itens do pedido.
              PedidosItens.First;
              While not PedidosItens.Eof do begin
                    dmFiscal.NotasItens.Locate('Codigo_Mercadoria', Dados.PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
                    dmFiscal.NotasItens.Edit;
                             dmFiscal.NotasItensDisponivel.Value := dmFiscal.NotasItensDisponivel.Value + Dados.PedidosItensQuantidade.Value;
                    dmFiscal.NotasItens.Post;
                    PedidosItens.Next;
              End;
              PedidosItens.SQL.Clear;
              PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE (Pedido = :pPedido)');
              PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
              PedidosItens.Execute;
              PedidosItens.SQL.Clear;
              PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
              PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
              PedidosItens.Open;
              PedidosItens.EnableControls;
         End;
      End;
      Barra.SimpleText   := '';
      Progresso.Visible := False;
      Screen.Cursor     := crDefault;
end;

procedure TPedido_DevolucaoItens.bInclui_TodosClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Barra.SimpleText   := 'Adicionando todos os itens ao pedido...Aguarde.';
           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE (Pedido = :pPedido)');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.Execute;
           PedidosItens.SQL.Clear;
           PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
           PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidosItens.Open;
           Progresso.Position := 0;
           Progresso.Max      := NotasItens.RecordCount;
           Progresso.Visible  := True;
           NotasItens.First;
           NotasItens.DisableControls;
           PedidosItens.DisableControls;
           While not NotasItens.Eof do begin
                 AdicionaUm;
                 NotasItens.Next;
                 Progresso.Position := Progresso.Position + 1;
           End;
           NotasItens.EnableControls;
           PedidosItens.EnableControls;
           Progresso.Visible := False;
           NotasItens.Refresh;
           PedidosItens.First;
      End;
      Barra.SimpleText   := '';
end;

procedure TPedido_DevolucaoItens.bRemove_ItemClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente remover o item do pedido?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then begin
         Screen.Cursor := crSQLWait;
         // Atualizando a quantidade disponivel do item na nota fiscal.
         dmFiscal.NotasItens.Locate('Codigo_Mercadoria', Dados.PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
         dmFiscal.NotasItens.Edit;
                  dmFiscal.NotasItensDisponivel.Value := dmFiscal.NotasItensDisponivel.Value + Dados.PedidosItensQuantidade.Value;
         dmFiscal.NotasItens.Post;
         Dados.PedidosItens.Delete;
      End;
      Screen.Cursor := crDefault;
end;

procedure TPedido_DevolucaoItens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
        Screen.Cursor := crSQLWait;
        With Dados do Begin
             If PedidosItens.RecordCount <> 0 then begin
                // Zera todos os campos de totais que são calculados por macro.
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
                Pedidos.Post;

                // Totaliza os PRODUTOS e o total do IPI via macro a atualiza a tabela de pedidos.
                Barra.SimpleText   := 'Totalizando o pedido...Aguarde.';
                Progresso.Position := 0;
                Progresso.Max      := PedidosItens.RecordCount;
                Progresso.Visible  := True;

                PedidosItens.First;
                PedidosItens.DisableControls;
                Pedidos.DisableControls;

                While not PedidosItens.Eof do Begin
                      Pedidos.Edit;
                              PedidosValor_TotalProdutos.Value    := PedidosValor_TotalProdutos.Value + PedidosItensValor_Total.Value;
                              PedidosValor_TotalIPI.Value         := PedidosValor_TotalIPI.Value + (PedidosItensValor_IPI.Value * PedidosItensQuantidade.Value);
                              PedidosBCICMS.Value                 := PedidosBCICMS.Value + (PedidosItensValor_BCICMSOper.Value * PedidosItensQuantidade.Value);
                              PedidosValor_ICMS.Value             := PedidosValor_ICMS.Value + (PedidosItensValor_ICMSOper.Value * PedidosItensQuantidade.Value);
                              PedidosBCICMS_Substitutivo.Value    := PedidosBCICMS_Substitutivo.Value + PedidosItensValor_BCICMSSub.Value;
                              PedidosValorICMS_Substitutivo.Value := PedidosValorICMS_Substitutivo.Value + PedidosItensValor_ICMSSub.Value;
                              PedidosValor_TotalMVA.Value         := PedidosValor_TotalMVA.Value + PedidosItensValor_MVA.Value;
                              PedidosVolume_PesoLiquido.Value     := PedidosVolume_PesoLiquido.Value + (PedidosItensPeso_Liquido.Value * PedidosItensQuantidade.Value);
                              PedidosVolume_PesoBruto.Value       := PedidosVolume_PesoBruto.Value + (PedidosItensPeso_Bruto.Value * PedidosItensQuantidade.Value);
                              PedidosValor_PIS.Value              := PedidosValor_PIS.Value + (PedidosItensValor_PIS.Value * PedidosItensQuantidade.Value);
                              PedidosValor_COFINS.Value           := PedidosValor_COFINS.Value + (PedidosItensValor_COFINS.Value * PedidosItensQuantidade.Value);
                      Pedidos.Post;
                      PedidosItens.Next;
                      Progresso.Position := Progresso.Position +1;
                End;
                TipoNota.Locate('Codigo', PedidosTipo_Nota.Value, [loCaseInsensitive]);
                If TipoNotaCalculo_TotalPedido.Value <> '' then begin
                   Pedidos.Edit;
                   PedidosValor_TotalNota.Value := CalculaMacro('Calculo_TotalPedido');
                   Pedidos.Post;
                End;

                PedidosItens.EnableControls;
                Pedidos.EnableControls;
                Progresso.Position := 0;
           End;
        End;
        Screen.Cursor := crDefault;

        Release;
        Pedido_DevolucaoItens := nil;
end;

//
// Executa os calculos dos macro passados como strings.
//
Function TPedido_DevolucaoItens.CalculaMacro(Campo:String):Currency;
var
    mValores  : array [0..1] of extended; // array de Valores
    mFormula  : String;
    mPos      : Integer;
    mTam      : Integer;
    mCampo    : String;
    mSQL      : String;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
          Campos.Open;
          // Convertendo a formulas do campo.
          mFormula := RemoveCaracter(#13,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#12,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#10,'',TipoNota.FieldByName(Campo).AsString);
          Campos.First;
          While not Campos.Eof do begin
                mTam   := Length(Trim(CamposCampo.Value));
                mPos   := Pos( CamposCampo.Value, mFormula );
                mCampo := Copy( CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 60 );
                mCampo := Trim(Copy( mCampo, 1, Pos(']',mCampo)-1 ));
                If (CamposPesquisa.Value <> '') and (mPos <> 0) then Begin
                   mCampo := Copy( CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 30 );
                   mCampo := Copy( mCampo, 1, Pos(']',mCampo)-1 );
                End;
                If (mPos <> 0) then begin
                   Delete( mFormula, mPos, mTam );
                   If UpperCase(CamposTabela.Value) = 'PEDIDOS' then begin
                      Insert( Pedidos.FieldByName(mCampo).AsString, mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PEDIDOSITENS' then begin
                      Insert( PedidosItens.FieldByName(mCampo).AsString, mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PROCESSOSDOCUMENTOS' then begin
                      Insert( ProcessosDOC.FieldByName(mCampo).AsString, mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'ADICOES' then begin
                      Insert( Adicoes.FieldByName(mCampo).AsString, mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'CLIENTES' then begin
                      Insert( Clientes.FieldByName(mCampo).AsString, mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NCM' then begin
                      Insert( NCM.FieldByName(mCampo).AsString, mFormula, mPos );
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
                end;
                If mPos = 0 then Campos.Next;
          End;
          PagarReceber.Close;
          PagarReceber.SQL.Clear;
          PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Processo = :pProcesso');
          PagarReceber.ParamByName('pProcesso').AsString := PedidosProcesso.Value;
          PagarReceber.Open;
      End;
      mMacro.Formula := mFormula;
      Result         := mMacro.Calc(mValores);
      Screen.Cursor  := crDefault;
end;


end.
