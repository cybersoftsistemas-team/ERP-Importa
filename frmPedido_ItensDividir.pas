unit frmPedido_ItensDividir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, RXSpin,
  DB, DBAccess, MSAccess, Funcoes, Math, Mask, RxCurrEdit, MemDS, RxToolEdit, system.UITypes;

type
  TPedido_ItensDividir = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bExecutar: TButton;
    Panel2: TPanel;
    cQtde: TRxSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    cTotal: TCurrencyEdit;
    Progresso: TProgressBar;
    lProgresso: TLabel;
    tCopia: TMSQuery;
    tPedido: TMSQuery;
    Label3: TLabel;
    cPedidos: TCurrencyEdit;
    Label4: TLabel;
    cPercentual: TRxSpinEdit;
    Label5: TLabel;
    cArredondamento: TCurrencyEdit;
    cTipoArred: TRadioGroup;
    Label6: TLabel;
    Label7: TLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bExecutarClick(Sender: TObject);
    procedure cQtdeChange(Sender: TObject);
    procedure DivideQtde;
    procedure DividePerc;
    procedure cTipoArredClick(Sender: TObject);
    procedure cPedidosChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mSemEstoque: widestring;
  end;

var
  Pedido_ItensDividir: TPedido_ItensDividir;

implementation

uses frmDados, frmPedido, frmPedido_Itens;

{$R *.dfm}

procedure TPedido_ItensDividir.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_ItensDividir.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Pedido_ItensDividir.Release;
     Pedido_ItensDividir := nil;
end;

procedure TPedido_ItensDividir.FormShow(Sender: TObject);
begin
     with Dados do begin
          cTotal.Value       := Adicoes.RecordCount;
          cQtde.Value        := 0;
          cQtde.MaxValue     := Adicoes.RecordCount;
          cQtde.MinValue     := 0;
          bExecutar.Enabled  := cTotal.Value > 0;
     end;
end;

procedure TPedido_ItensDividir.bExecutarClick(Sender: TObject);
begin
     if MessageDlg('Deseja realmente criar os "Pedidos" ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
     if cQtde.Value       > 0 then DivideQtde;
     if cPercentual.Value > 0 then DividePerc;

     if mSemEstoque = '' then
        MessageDlg('Operação concluída com exito!', mtInformation, [mbOK], 0)
     else
        MessageDlg('Operação concluída mas com erros!'+#13+mSemEstoque, mterror, [mbOK], 0);
        
     Close;
     Pedido_Itens.bSair.Click;
end;

procedure TPedido_ItensDividir.DivideQtde;
var
    i,c,mQtde: Integer;
begin
        Screen.Cursor := crSQLWait;

        Progresso.Max      := Trunc(cTotal.AsInteger/cQtde.AsInteger);
        Progresso.Position := 0;
        lProgresso.Caption := 'Criando o pedido...'+Dados.PedidosNumero.AsString;
        lProgresso.Visible := true;

        with Dados do begin
             tCopia.SQL.Clear;
             tCopia.SQL.Add('SELECT * FROM Pedidos WHERE Numero = :pPedido');
             tCopia.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
             tCopia.Open;

             Adicoes.First;

             // Adicionando os itens ao pedido nº 1 (Pedido Base).
             with Pedido_Itens do begin
                  mQtde := 1;
                  while (mQtde <= cQtde.AsInteger) and (not Adicoes.Eof) do begin
                        if PedidosSaida_Entrada.Value = 0 then begin
                           mQuantidade := AdicoesLancado_Entrada.Value
                        end else begin
                           mQuantidade := AdicoesLancado_Saida.Value
                        end;

                        AdicionaUm;

                        Adicoes.Next;
                        Inc(mQtde);
                  end;

                  // Efetua a totalização do pedido.
                  TotalizaPedido;

                  with Pedido do begin
                       if Trim(TipoNotaInf_Complementares.AsString) <> '' then begin
                          Pedidos.Edit;
                                  PedidosInf_Complementares.Clear;
                                  PedidosInf_Complementares.Value := MontaComplemento(TipoNotaInf_Complementares.Value, 1);
                          Pedidos.Post;

                          Campos.SQL.Clear;
                          Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
                          Campos.Open;
                       end;
                  end;
             end;

             for c := 1 to Progresso.Max do begin
                 // Copiando a capa do pedido.
                 lProgresso.Caption := 'Criando o pedido...'+Dados.PedidosNumero.AsString;
                 Application.ProcessMessages;

                 Pedidos.Append;
                         for i := 0 to (Pedidos.FieldCount -1) do begin
                             if Pedidos.Fields[i].FieldKind <> fkCalculated then begin
                                Pedidos.Fields[i].Value := tCopia.FieldByName(Pedidos.Fields[i].FieldName).Value;
                             end;
                         end;

                         tPedido.SQL.Clear;
                         tPedido.SQL.Add('SELECT ISNULL(MAX(Numero), 0)+1 AS Numero FROM Pedidos');
                         tPedido.Open;
                         PedidosNumero.Value := tPedido.FieldByName('Numero').AsInteger;
                 Pedidos.Post;

                 // Adicionando os itens ao pedido.
                 with Pedido_Itens do begin
                      mQtde := 1;
                      while (mQtde <= cQtde.AsInteger) and (not Adicoes.Eof) do begin
                            if PedidosSaida_Entrada.Value = 0 then begin
                               mQuantidade := AdicoesLancado_Entrada.Value
                            end else begin
                               mQuantidade := AdicoesLancado_Saida.Value
                            end;

                            AdicionaUm;

                            Adicoes.Next;
                            Inc(mQtde);
                      end;

                      // Efetua a totalização do pedido.
                      PedidosItens.SQL.Clear;
                      PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
                      PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                      PedidosItens.Open;

                      TotalizaPedido;

                      with Pedido do begin
                           If Trim(TipoNotaInf_Complementares.AsString) <> '' then begin
                              Pedidos.Edit;
                                      PedidosInf_Complementares.Clear;
                                      PedidosInf_Complementares.Value := MontaComplemento(TipoNotaInf_Complementares.Value, 1);
                              Pedidos.Post;

                              Campos.SQL.Clear;
                              Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
                              Campos.Open;
                           end;
                      end;
                 end;

                 Progresso.Position := Progresso.Position + 1;
                 Application.ProcessMessages;
             end;
        end;

        lProgresso.Visible := false;
        Screen.Cursor := crDefault;
end;

procedure TPedido_ItensDividir.DividePerc;
Var
    i,c,mQtde : Integer;
    mSaiEntra: String;
begin
        Screen.Cursor := crSQLWait;

        Progresso.Max := cPedidos.AsInteger;
        mQtde         := cPedidos.AsInteger;
        if (cArredondamento.Value > 0) and (cTipoArred.ItemIndex = 1) then Inc(mQtde);

        Progresso.Position := 0;
        lProgresso.Caption := 'Criando o pedido...'+Dados.PedidosNumero.AsString;
        lProgresso.Visible := true;
        mSemEstoque        := '';

        Application.ProcessMessages;

        with Dados do begin
             tCopia.SQL.Clear;
             tCopia.SQL.Add('SELECT * FROM Pedidos WHERE Numero = :pPedido');
             tCopia.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
             tCopia.Open;

             if PedidosSaida_Entrada.Value = 0 then mSaiEntra := 'Lancado_Entrada';
             if PedidosSaida_Entrada.Value = 1 then mSaiEntra := 'Lancado_Saida';

             Adicoes.First;

             // Adicionando os itens ao pedido nº 1 (Pedido Base).
             with Pedido_Itens do begin
                  while not Adicoes.Eof do begin
                        mQuantidade := Roundto(Percentual(Adicoes.FieldByName('Quantidade').AsFloat, cPercentual.Value), -3);
                        AdicionaUm;
                        Adicoes.Next;
                  end;

                  // Efetua a totalização do pedido.
                  TotalizaPedido;

                  with Pedido do begin
                       if Trim(TipoNotaInf_Complementares.AsString) <> '' then begin
                          Pedidos.Edit;
                                  PedidosInf_Complementares.Clear;
                                  PedidosInf_Complementares.Value := MontaComplemento(TipoNotaInf_Complementares.Value, 1);
                          Pedidos.Post;

                          Campos.SQL.Clear;
                          Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
                          Campos.Open;
                       end;
                  end;
             end;

             Progresso.Position := 1;
             Application.ProcessMessages;

             for c := 2 to mQtde do begin
                 // Copiando a capa do pedido.
                 lProgresso.Caption := 'Criando o pedido...'+Dados.PedidosNumero.AsString;
                 Application.ProcessMessages;

                 Pedidos.Append;
                         for i := 0 to (Pedidos.FieldCount -1) do begin
                             if Pedidos.Fields[i].FieldKind <> fkCalculated then begin
                                Pedidos.Fields[i].Value := tCopia.FieldByName(Pedidos.Fields[i].FieldName).Value;
                             end;
                         end;

                         tPedido.SQL.Clear;
                         tPedido.SQL.Add('SELECT ISNULL(MAX(Numero), 0)+1 AS Numero FROM Pedidos');
                         tPedido.Open;
                         PedidosNumero.Value := tPedido.FieldByName('Numero').AsInteger;
                 Pedidos.Post;

                 // Adicionando os itens ao pedido.
                 with Pedido_Itens do begin
                      Adicoes.First;
                      while not Adicoes.Eof do begin
                            mQuantidade := Roundto(Percentual(Adicoes.FieldByName('Quantidade').AsFloat, cPercentual.Value), -3);
                            // Verifica se é o ultímo pedido para somar a diferença de arredondamento quando selecionado a opção 1 de arredondamento.
                            if c = mQtde then begin
                               if cTipoArred.ItemIndex = 0 then begin
                                  //mQuantidade := Roundto(Percentual(Adicoes.FieldByName('Quantidade').AsFloat, cPercentual.Value + cArredondamento.value), -3);
                                  mQuantidade := Adicoes.FieldByName('Lancado_Entrada').AsFloat;
                               end else begin
                                  mQuantidade := Roundto(Percentual(Adicoes.FieldByName('Quantidade').AsFloat, cArredondamento.value), -3);
                               end;
                            end;

                            if mQuantidade <= Adicoes.FieldByName(mSaiEntra).AsFloat then
                               AdicionaUm
                            else
                               mSemEstoque := mSemEstoque +#13+ 'O produto '+AdicoesCodigo_Mercadoria.AsString+ ' não tem estoque disponivel.';

                            Adicoes.Next;
                      end;

                      // Efetua a totalização do pedido.
                      PedidosItens.SQL.Clear;
                      PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
                      PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                      PedidosItens.Open;

                      TotalizaPedido;

                      with Pedido do begin
                           If Trim(TipoNotaInf_Complementares.AsString) <> '' then begin
                              Pedidos.Edit;
                                      PedidosInf_Complementares.Clear;
                                      PedidosInf_Complementares.Value := MontaComplemento(TipoNotaInf_Complementares.Value, 1);
                              Pedidos.Post;

                              Campos.SQL.Clear;
                              Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
                              Campos.Open;
                           end;
                      end;
                 end;

                 Progresso.Position := Progresso.Position + 1;
             end;
        End;

        lProgresso.Visible := false;
        Screen.Cursor := crDefault;
end;

procedure TPedido_ItensDividir.cQtdeChange(Sender: TObject);
begin
      If cQtde.Value > 0 then
         cPedidos.Value := (cTotal.AsInteger / cQtde.Value);

      cPercentual.Enabled := cQtde.Value = 0;
end;

procedure TPedido_ItensDividir.cTipoArredClick(Sender: TObject);
begin
     if cPedidos.AsInteger = 1 then begin
        cTipoArred.ItemIndex := 1;
     end;
end;

procedure TPedido_ItensDividir.cPedidosChange(Sender: TObject);
begin
      If cQtde.Value <= 0 then begin
         cPercentual.Value     := 0;
         cArredondamento.Value := 0;
         if cPedidos.AsInteger > 0 then
            cPercentual.Value := 100 / cPedidos.Value;
         if cPercentual.Value > 0 then begin
            cPedidos.Value   := Trunc(100 / cPercentual.Value);
            cArredondamento.Value := 100 - (cPercentual.Value * cPedidos.Value)
         end;
         cQtde.Enabled := cPercentual.Value = 0;

         if cPedidos.AsInteger = 1 then begin
            cTipoArred.ItemIndex := 1;
         end else begin
            cTipoArred.ItemIndex := 0;
         end;
      end;
end;

end.
