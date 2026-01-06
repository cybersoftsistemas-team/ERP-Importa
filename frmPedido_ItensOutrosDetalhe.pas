unit frmPedido_ItensOutrosDetalhe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXDBCtrl, RxLookup,
    DB, DBAccess, MSAccess, Funcoes, Mask, Grids,
  DBGrids, RxCurrEdit, MemDS, RxToolEdit;

type
  TPedido_ItensOutrosDetalhe = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    cQuantidade: TDBEdit;
    cCodigo: TDBEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cMinimo: TCurrencyEdit;
    cDisponivel: TCurrencyEdit;
    cDisponivelDetalhe: TCurrencyEdit;
    StaticText23: TStaticText;
    DBEdit15: TDBEdit;
    lDetalhe: TStaticText;
    cDetalhe: TRxDBLookupCombo;
    tEstoque: TMSQuery;
    tRegistro: TMSQuery;
    tProdutosDetalhe: TMSQuery;
    dstProdutosDetalhe: TDataSource;
    tProdutosDetalheNome_Detalhe: TStringField;
    tProdutosDetalheDetalhe: TSmallintField;
    lLote: TStaticText;
    cLote: TRxDBLookupCombo;
    dsProdutosLote: TDataSource;
    tProdutosLoteLote: TStringField;
    tProdutosLoteDescricao: TStringField;
    tProdutosLote: TMSQuery;
    tItem: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cDetalheChange(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cLoteChange(Sender: TObject);
    procedure ApuraEstoque;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_ItensOutrosDetalhe: TPedido_ItensOutrosDetalhe;

implementation

uses frmPedido_ItensOutros, frmDados;

{$R *.dfm}

procedure TPedido_ItensOutrosDetalhe.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TPedido_ItensOutrosDetalhe.FormClose(Sender: TObject;var Action: TCloseAction);
var
    mTextoLimpo: WideString;
    mDetalhes  : WideString;
    mQuant     : Real;
begin
      With Dados do begin
           // Remove caracteres de controle da descrição do produto.
           mTextoLimpo := RemoveCaracter(#13,'', ProdutosDescricao.Value);
           mTextoLimpo := RemoveCaracter(#12,'', mTextoLimpo);
           mTextoLimpo := RemoveCaracter(#10,'', mTextoLimpo);
           mTextoLimpo := RemoveCaracter('<{'+Trim(ProdutosCodigo.AsString)+'}>', '', mTextoLimpo);

           mDetalhes := '';
           mQuant    := 0;

           PedidosItensDetalhe.First;
           While not PedidosItensDetalhe.Eof do begin
                 if cDetalhe.Enabled then begin
                    ProdutosDetalhe.SQL.Clear;
                    ProdutosDetalhe.SQL.Add('SELECT * FROM ProdutosDetalhe WHERE Detalhe = :pDet');
                    ProdutosDetalhe.ParamByName('pDet').AsInteger := PedidosItensDetalhe.FieldByName('Detalhe').AsInteger;
                    ProdutosDetalhe.Open;

                    mQuant    := mQuant + PedidosItensDetalheQuantidade.AsFloat;
                    mDetalhes := mDetalhes + Trim(PedidosItensDetalheDetalhe_Descricao.AsString)+ ' = '+FormatFloat(',##0.000', PedidosItensDetalheQuantidade.AsFloat)+ '  VAL.: '+DatetoStr(ProdutosDetalheData_Validade.Value);
                 end else begin
                    ProdutosDetalhe.SQL.Clear;
                    ProdutosDetalhe.SQL.Add('SELECT * FROM ProdutosDetalhe WHERE Lote = :pLote');
                    ProdutosDetalhe.ParamByName('pLote').AsString := PedidosItensDetalhe.FieldByName('Lote').AsString;
                    ProdutosDetalhe.Open;

                    mQuant    := mQuant + PedidosItensDetalheQuantidade.AsFloat;
                    mDetalhes := mDetalhes + 'LOTE  '+PedidosItensDetalheLote.AsString + ' = '+FormatFloat(',##0.000', PedidosItensDetalheQuantidade.AsFloat)+ '  VAL.: '+DatetoStr(ProdutosDetalheData_Validade.Value);
                 end;
                 PedidosItensDetalhe.Next;
                 If not PedidosItensDetalhe.Eof then mDetalhes := mDetalhes + ' /';
           End;

           PedidosItensDescricao_Mercadoria.Value := mTextoLimpo+#13+#13+mDetalhes;

           // Desabilita o campo de quantidade se houver detalhes informados.
           PedidosItensQuantidade.Value           := mQuant;
           Pedido_ItensOutros.cQuantidade.Enabled := PedidosItensDetalhe.RecordCount = 0;
      End;

      Pedido_ItensOutrosDetalhe.Release;
      Pedido_ItensOutrosDetalhe := nil;
end;

procedure TPedido_ItensOutrosDetalhe.FormShow(Sender: TObject);
begin
      With Dados do begin
//           cDisponivel.Value := Pedido_ItensOutros.cEstoqueDisp.Value;
           cMinimo.Value     := Pedido_ItensOutros.cMinimo.Value;

           PedidosItensDetalhe.SQL.Clear;
           PedidosItensDetalhe.SQL.Add('SELECT * FROM PedidosItensDetalhe WHERE(Pedido = :pPedido) AND (Produto_Codigo = :pProduto) ORDER BY Registro');
           PedidosItensDetalhe.ParamByName('pPedido').AsInteger  := PedidosNumero.AsInteger;
           PedidosItensDetalhe.ParamByName('pProduto').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
           PedidosItensDetalhe.Open;

           tProdutosDetalhe.SQL.Clear;
           tProdutosDetalhe.SQL.Add('SELECT DISTINCT');
           tProdutosDetalhe.SQL.Add('       Detalhe');
           tProdutosDetalhe.SQL.Add('      ,Nome_Detalhe = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.Detalhes WHERE Codigo = Detalhe)');
           tProdutosDetalhe.SQL.Add('FROM   ProdutosDetalhe');
           tProdutosDetalhe.SQL.Add('WHERE  Produto_Codigo = :pProduto');
           tProdutosDetalhe.SQL.Add('AND    Detalhe IS NOT NULL');
           tProdutosDetalhe.SQL.Add('ORDER BY Nome_Detalhe');
           tProdutosDetalhe.ParamByName('pProduto').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
           //tProdutosDetalhe.SQL.SaveToFile('c:\temp\Pedidos_ItensOutrosDetalhe.sql');
           tProdutosDetalhe.Open;

           lDetalhe.Enabled := ProdutosSerial_Obrigatorio.AsBoolean;
           cDetalhe.Enabled := lDetalhe.Enabled;

           tProdutosLote.Open;
           tProdutosLote.SQL.Clear;
           tProdutosLote.SQL.Add('SELECT DISTINCT');
           tProdutosLote.SQL.Add('       Lote');
           tProdutosLote.SQL.Add('      ,Descricao');
           tProdutosLote.SQL.Add('FROM  ProdutosDetalhe');
           tProdutosLote.SQL.Add('WHERE Produto_Codigo = :pProduto');
           tProdutosLote.SQL.Add('AND   (  SELECT ISNULL(SUM(Quantidade_Entrada),0) FROM ProdutosDetalhe     WHERE Produto_Codigo = :pProduto AND Lote = ProdutosDetalhe.Lote ) -');
           tProdutosLote.SQL.Add('      ( (SELECT ISNULL(SUM(Quantidade),0)         FROM NotasItensDetalhe   WHERE Produto_Codigo = :pProduto AND Lote = ProdutosDetalhe.Lote AND ISNULL(Cancelada, 0) = 0 AND ISNULL(Denegada, 0) = 0) +');
           tProdutosLote.SQL.Add('        (SELECT ISNULL(SUM(Quantidade),0)         FROM PedidosItensDetalhe WHERE Produto_Codigo = :pProduto AND Lote = ProdutosDetalhe.Lote) ) > 0');
           tProdutosLote.SQL.Add('ORDER BY Lote');
           tProdutosLote.ParamByName('pProduto').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
           //tProdutosLote.SQL.SaveToFile('c:\temp\Pedidos_ItensOutrosLote.sql');
           tProdutosLote.Open;

           lLote.Enabled := ProdutosLote_Obrigatorio.AsBoolean;
           cLote.Enabled := lLote.Enabled;

           ApuraEstoque;
      End;
end;

procedure TPedido_ItensOutrosDetalhe.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i:Integer;
begin
      with Dados do begin
           if (Button = nbInsert) then begin
              PedidosItensDetalhePedido.Value         := PedidosNumero.Value;
              PedidosItensDetalheProduto_Codigo.Value := PedidosItensCodigo_Mercadoria.Value;
           end;
           if (Button = nbInsert) or (Button = nbEdit) then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              Panel2.Enabled := true;
              if cDetalhe.Enabled then
                 cDetalhe.SetFocus
              else
                 cLote.SetFocus;
           end else begin
              Panel2.Enabled := false;
           end;
           if (Button = nbPost) or (Button = nbCancel) then begin
              Panel2.Enabled := false;
           end;
           ApuraEstoque;
      end;
end;

procedure TPedido_ItensOutrosDetalhe.cDetalheChange(Sender: TObject);
begin
      // Calculando o estoque disponível do detalhe do item.
      With Dados do begin
           ApuraEstoque;

           If (PedidosItensDetalhe.State = dsInsert) or (PedidosItensDetalhe.State = dsEdit) then begin
              PedidosItensDetalheDetalhe_Descricao.Value := cDetalhe.DisplayValue;
           End;
      End;
end;

procedure TPedido_ItensOutrosDetalhe.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      ActiveControl := nil;
      with Dados do begin
           If (Button = nbPost) and ((PedidosItensDetalhe.State = dsInsert) or (PedidosItensDetalhe.State = dsEdit)) then begin
              If (PedidosItensDetalheQuantidade.Value > cDisponivelDetalhe.Value) and (Button <> nbCancel) then begin
                 ShowMessage('Quantidade invalída, maior que a quantidade disponível para este Lote/detalhe');
                 cQuantidade.SetFocus;
                 Abort;
              End;
              If (PedidosItensDetalheQuantidade.AsFloat <= 0) and (Button <> nbCancel) then begin
                 ShowMessage('Quantidade invalída, digite uma quantidade valida para este Lote/detalhe');
                 cQuantidade.SetFocus;
                 Abort;
              End;

              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM PedidosItensDetalhe');
              tRegistro.Open;

              tItem.SQL.Clear;
              tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM PedidosItens WHERE(Pedido = :pPedido)');
              tItem.ParamByName('pPedido').AsInteger := Pedidos.FieldByName('Numero').AsInteger;
              tItem.Open;

              PedidosItensDetalheRegistro.Value       := tRegistro.FieldByName('Registro').AsInteger;
              PedidosItensDetalheItem.Value           := tItem.FieldByName('Item').AsInteger;
              PedidosItensDetalheSaida_Entrada.Value  := Pedidos.FieldByName('Saida_Entrada').AsInteger;
              PedidosItensDetalhePedido.Value         := Pedidos.FieldByName('Numero').AsInteger;
              PedidosItensDetalheProduto_Codigo.Value := PedidosItens.FieldByName('Codigo_Mercadoria').AsInteger;
          End;
      end;
end;

procedure TPedido_ItensOutrosDetalhe.cLoteChange(Sender: TObject);
begin
      // Calculando o estoque disponível do lote.
      With Dados do begin
           ApuraEstoque;
      End;
end;

procedure TPedido_ItensOutrosDetalhe.ApuraEstoque;
begin
      // Calculando o estoque disponível do lote.
      with Dados do begin
           tEstoque.SQL.Clear;
           tEstoque.SQL.Add('SELECT Disponivel = (SELECT ISNULL(SUM(Quantidade_Entrada),0) FROM ProdutosDetalhe     WHERE Produto_Codigo = :pProduto AND Lote = :pLote) -');
           tEstoque.SQL.Add('                  ( (SELECT ISNULL(SUM(Quantidade),0)         FROM NotasItensDetalhe   WHERE Produto_Codigo = :pProduto AND Lote = :pLote AND ISNULL(Cancelada, 0) = 0 AND ISNULL(Denegada, 0) = 0) +');
           tEstoque.SQL.Add('                    (SELECT ISNULL(SUM(Quantidade),0)         FROM PedidosItensDetalhe WHERE Produto_Codigo = :pProduto AND Lote = :pLote) )');
           tEstoque.ParamByName('pProduto').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
           tEstoque.ParamByName('pLote').AsString     := PedidosItensDetalheLote.AsString;
           tEstoque.SQL.SavetoFile('c:\temp\PedidosItensOutros_EstoqueLote.sql');
           tEstoque.Open;

           cDisponivelDetalhe.Value := tEstoque.FieldByName('Disponivel').AsFloat;
           if PedidosItensDetalhe.State = dsEdit then begin
              cDisponivelDetalhe.Value := cDisponivelDetalhe.Value + PedidosItensDetalheQuantidade.Value;
           end;
      end;
end;

end.
