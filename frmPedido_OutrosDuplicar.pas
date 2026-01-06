unit frmPedido_OutrosDuplicar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, RXSpin, DB, DBAccess, system.UITypes,  MSAccess, Grids, Vcl.ComCtrls, Mask, MemDS;

type
  TPedido_OutrosDuplicar = class(TForm)
    Panel1: TPanel;
    StaticText11: TStaticText;
    cPedido: TDBEdit;
    StaticText1: TStaticText;
    bDuplicar: TButton;
    bCancelar: TButton;
    cCopias: TRxSpinEdit;
    tEstoque: TMSQuery;
    gEstoque: TStringGrid;
    bVerificar: TButton;
    ProgressBar1: TProgressBar;
    lProgresso: TLabel;
    tCopia: TMSQuery;
    titens: TMSQuery;
    tNumero: TMSQuery;
    tCopiaItens: TMSQuery;
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gEstoqueDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure bVerificarClick(Sender: TObject);
    procedure bDuplicarClick(Sender: TObject);
    procedure cCopiasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_OutrosDuplicar: TPedido_OutrosDuplicar;

implementation

uses frmDados;

{$R *.dfm}

procedure TPedido_OutrosDuplicar.bCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_OutrosDuplicar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Pedido_OutrosDuplicar.Release;
     Pedido_OutrosDuplicar := nil;
end;

procedure TPedido_OutrosDuplicar.FormShow(Sender: TObject);
begin
      gEstoque.Cells[0, 0] := 'ITEM';
      gEstoque.Cells[1, 0] := 'CÓDIGO';
      gEstoque.Cells[2, 0] := 'ESTOQUE';
      gEstoque.Cells[3, 0] := 'QUANTIDADE';
      gEstoque.Cells[4, 0] := 'SITUAÇÃO';
end;

procedure TPedido_OutrosDuplicar.gEstoqueDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     with gEstoque.Canvas do begin
          if gEstoque.Cells[4,ARow] = 'INDISPONÍVEL' then begin
             Font.Color  := clYellow;
             Brush.Color := clRed;
             FillRect(Rect);
             TextOut(Rect.Left+2,Rect.Top+2, gEstoque.Cells[acol,arow]);
          end;
     end;
end;

procedure TPedido_OutrosDuplicar.bVerificarClick(Sender: TObject);
Var
   mLinha: Integer;
begin
     If cCopias.AsInteger > 20 then begin
        If MessageDlg('Atenção!'+#13+#13+'A quantidade de cópias é maior que 20 (vinte)'+#13+#13+'Confirma duplicar esta quantidade?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
           Abort;
     End;

     Screen.Cursor := crSQLWait;

     // Limpand o grid.
     With gEstoque do begin
          for mLinha := 1 to RowCount -1 do Rows[mLinha].Clear;
     End;     

     With Dados do begin
          PedidosItens.SQL.Clear;
          PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido ORDER BY Item');
          PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
          PedidosItens.Open;

          tEstoque.SQL.Clear;
          tEstoque.SQL.Add('SELECT CAST((ISNULL((SELECT SUM(Quantidade) FROM NotasItens      WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) +');
          tEstoque.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Estoque = 1)), 0) +');
          tEstoque.SQL.Add('       ISNULL((SELECT SUM(Quantidade_Entrada) FROM ProdutosTransferencia WHERE(Produto_Entrada   = :pCodigo) ), 0) -');
          tEstoque.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
          tEstoque.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) ), 0)) -');
          tEstoque.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = :pCodigo) ), 0) AS DECIMAL(14,3))');
          tEstoque.SQL.Add('       AS Disponivel');

          mLinha                := 1;
          gEstoque.RowCount     := 2;
          bDuplicar.Tag         := 0;
          ProgressBar1.Position := 0;
          ProgressBar1.Max      := PedidosItens.RecordCount;
          lProgresso.Visible    := true;
          ProgressBar1.Visible  := true;

          While not PedidosItens.Eof do begin
                tEstoque.Close;
                tEstoque.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
                tEstoque.Open;

                gEstoque.Cells[0, mLinha] := PedidosItensItem.AsString;
                gEstoque.Cells[1, mLinha] := PedidosItensCodigo_Mercadoria.AsString;
                gEstoque.Cells[2, mLinha] := FormatFloat(',##0.0000', tEstoque.FieldByName('Disponivel').AsFloat);
                gEstoque.Cells[3, mLinha] := FormatFloat(',##0.0000', PedidosItensQuantidade.AsFloat * cCopias.AsInteger);
                If (PedidosItensQuantidade.AsFloat * cCopias.AsInteger) <= tEstoque.FieldByName('Disponivel').AsFloat then
                   gEstoque.Cells[4, mLinha] := 'DISPONÍVEL'
                else begin
                   gEstoque.Cells[4, mLinha] := 'INDISPONÍVEL';
                   bDuplicar.Tag := 1;
                End;
                Inc(mLinha);
                gEstoque.RowCount := mLinha;

                ProgressBar1.Position := ProgressBar1.Position + 1;
                Application.ProcessMessages;
                PedidosItens.Next;
          End;
     End;

     lProgresso.Visible   := false;
     ProgressBar1.Visible := false;
     Screen.Cursor        := crDefault;
     bDuplicar.Enabled    := bDuplicar.Tag <> 1;
end;

procedure TPedido_OutrosDuplicar.bDuplicarClick(Sender: TObject);
Var
   i     : Integer;
   b     : Integer;
   ci    : Integer;
   mItens: WideString;
begin
      mItens := '';
      For i := 1 to gEstoque.RowCount -1 do begin
          mItens := mItens + gEstoque.Cells[0,i]+',';
      End;
      mItens := Copy(mItens, 1, Length(mItens)-1);

      With Dados do begin
           tCopia.SQL.Clear;
           tCopia.SQL.Add('SELECT * FROM Pedidos WHERE Numero = :pNumero');
           tCopia.ParamByName('pNumero').AsInteger := PedidosNumero.AsInteger;
           tCopia.Open;

           tCopiaItens.SQL.Clear;
           tCopiaItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pNumero AND Item IN('+mItens+')');
           tCopiaItens.ParamByName('pNumero').AsInteger := PedidosNumero.AsInteger;
           tCopiaItens.Open;

           tNumero.SQL.Clear;
           tNumero.SQL.Add('SELECT MAX(Numero) AS Numero FROM Pedidos');

           ProgressBar1.Position := 0;
           ProgressBar1.Max      := cCopias.AsInteger;
           lProgresso.Caption    := 'Copiando os pedidos...';
           lProgresso.Visible    := true;
           ProgressBar1.Visible  := true;

           For i := 1 to cCopias.AsInteger do begin
               Pedidos.Append;
                       For b := 0 to (Pedidos.FieldCount -1) do begin
                           If Pedidos.Fields[b].FieldKind <> fkCalculated then
                              Pedidos.Fields[b].Value := tCopia.FieldByName(Pedidos.Fields[b].FieldName).Value;
                       End;

                       tNumero.Open;
                       PedidosNumero.Value := tNumero.FieldByName('Numero').AsInteger + 1;
                       tNumero.Close;

                       PedidosPedido_Nota.Value := EmpresasPedido_Nota.AsInteger + 1;
              Pedidos.Post;

              Empresas.Edit;
                       EmpresasPedido_Nota.Value := EmpresasPedido_Nota.Value + 1;
              Empresas.Post;

              tCopiaItens.First;
              While not tCopiaItens.Eof do begin
                    PedidosItens.Append;
                                 For ci := 0 to (PedidosItens.FieldCount -1) do begin
                                     If PedidosItens.Fields[ci].FieldKind <> fkCalculated then
                                         PedidosItens.Fields[ci].Value := tCopiaItens.FieldByName(PedidosItens.Fields[ci].FieldName).Value;
                                 End;
                                 PedidosItensPedido.Value := PedidosNumero.Value;
                    PedidosItens.Post;
                    PedidosItens.Refresh;
                    tCopiaItens.Next;
              End;

              Pedidos.Refresh;

              ProgressBar1.Position := ProgressBar1.Position + 1;
              Application.ProcessMessages;
           End;
      End;
      lProgresso.Visible   := false;
      ProgressBar1.Visible := false;
      Close;
end;

procedure TPedido_OutrosDuplicar.cCopiasChange(Sender: TObject);
begin
      bDuplicar.Enabled := false;
end;

end.
