unit frmUtilitarios_Importar_NFe_TerceirosLotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXDBCtrl, RxLookup, Vcl.StdCtrls, Mask, DBCtrls,
  Grids, Vcl.ExtCtrls, Funcoes, DBGrids, RxCurrEdit, MemDS, system.UITypes, RxToolEdit;

type
  TUtilitarios_Importar_NFe_TerceirosLotes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    RxDBGrid1: TRxDBGrid;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText11: TStaticText;
    StaticText8: TStaticText;
    cDescricao: TDBEdit;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    cQtdeEntrada: TDBEdit;
    cDetalhe: TRxDBLookupCombo;
    StaticText6: TStaticText;
    cLote: TDBEdit;
    StaticText7: TStaticText;
    cDataVal: TDBDateEdit;
    StaticText9: TStaticText;
    cDataFab: TDBDateEdit;
    cTotalEntradas: TCurrencyEdit;
    StaticText3: TStaticText;
    cSaldo: TCurrencyEdit;
    StaticText5: TStaticText;
    tRegistro: TMSQuery;
    tTotal: TMSQuery;
    tTotalEntradas: TMSQuery;
    cCodigo: TRxDBLookupCombo;
    cNota: TDBEdit;
    StaticText2: TStaticText;
    DBDateEdit1: TDBDateEdit;
    cProduto: TRxDBLookupCombo;
    StaticText4: TStaticText;
    StaticText10: TStaticText;
    StaticText14: TStaticText;
    cQtdeNota: TCurrencyEdit;
    cQtdeSaldo: TCurrencyEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Totaliza;
    procedure Filtro;
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cCodigoChange(Sender: TObject);
    procedure cProdutoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mLista:WideString;
  end;

var
  Utilitarios_Importar_NFe_TerceirosLotes: TUtilitarios_Importar_NFe_TerceirosLotes;

implementation

uses frmDados, frmDMFiscal, frmUtilitarios_Importar_NFe_Terceiros;

{$R *.dfm}

procedure TUtilitarios_Importar_NFe_TerceirosLotes.bSairClick(Sender: TObject);
begin
      close;
end;

procedure TUtilitarios_Importar_NFe_TerceirosLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      LimpaMemoria;
      Utilitarios_Importar_NFe_TerceirosLotes.Release;
      Utilitarios_Importar_NFe_TerceirosLotes := nil;
end;

procedure TUtilitarios_Importar_NFe_TerceirosLotes.FormShow(Sender: TObject);
begin
     With Dados, dmFiscal do begin
          Produtos.Locate('Codigo', StrtoInt(Utilitarios_Importar_NFe_Terceiros.GradeCadastro.Cells[03, 01]), [loCaseInsensitive]);
          cProduto.KeyValue := ProdutosCodigo.AsInteger;

          // Atualiza campo de saídas.
          ProdutosDetalhe.SQL.Clear;
          ProdutosDetalhe.SQL.Add('UPDATE ProdutosDetalhe SET Quantidade_Saida = ISNULL((');
          ProdutosDetalhe.SQL.Add('                                                      SELECT SUM(Quantidade)');
          ProdutosDetalhe.SQL.Add('                                                      FROM   NotasItensDetalhe NID');
          ProdutosDetalhe.SQL.Add('                                                      WHERE NID.Produto_Codigo    = ProdutosDetalhe.Produto_Codigo');
          ProdutosDetalhe.SQL.Add('                                                      AND   (SELECT DISTINCT Movimenta_Estoque FROM NotasItens NI WHERE NI.Nota = NID.Nota AND NI.Data = NID.Data_Emissao) = 1');
          ProdutosDetalhe.SQL.Add('                                                      AND   (SELECT Cancelada FROM NotasFiscais NF WHERE NF.Numero = NID.Nota AND NF.Data_Emissao = NID.Data_Emissao) <> 1');
          ProdutosDetalhe.SQL.Add('                                                      AND   NID.Saida_Entrada     = 1');
          ProdutosDetalhe.SQL.Add('                                                      AND   NID.Lote = ProdutosDetalhe.Lote');
          ProdutosDetalhe.SQL.Add('                                                     ), 0)');
          ProdutosDetalhe.SQL.Add('WHERE Produto_Codigo = :pCodigo');
          ProdutosDetalhe.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
          ProdutosDetalhe.Execute;

          ProdutosDetalhe.SQL.Clear;
          ProdutosDetalhe.SQL.Add('SELECT * FROM ProdutosDetalhe WHERE(Produto_Codigo = :pCodigo)');
          ProdutosDetalhe.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
          ProdutosDetalhe.Open;

          Cores.SQL.Clear;
          Cores.SQL.Add('SELECT * FROM Cores ORDER BY Descricao');
          Cores.Open;

          Detalhes.SQL.Clear;
          Detalhes.SQL.Add('SELECT * FROM Detalhes ORDER BY Descricao');
          Detalhes.Open;

          Totaliza;

          Filtro;
     End;
end;

procedure TUtilitarios_Importar_NFe_TerceirosLotes.Totaliza;
begin
      With Dados do begin
           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT SUM(Quantidade_Entrada) AS Quantidade_Entrada,');
           tTotal.SQL.Add('       SUM(Quantidade_Saida)   AS Quantidade_Saida');
           tTotal.SQL.Add('FROM   ProdutosDetalhe');
           tTotal.SQL.Add('WHERE  (Produto_Codigo = :pCodigo)');
           tTotal.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
           tTotal.Open;
           cTotalEntradas.Value := tTotal.FieldByName('Quantidade_Entrada').AsFloat;
           cSaldo.Value         := tTotal.FieldByName('Quantidade_Entrada').AsFloat;
      End;
end;

procedure TUtilitarios_Importar_NFe_TerceirosLotes.Filtro;
var
   i:integer;
begin
     with Dados do begin
          with Utilitarios_Importar_NFe_Terceiros.GradeCadastro do begin
               mLista := '';
               for i := 1 to RowCount -1 do begin
                   if (Trim(Cells[3, i]) <> '') then begin
                      mLista := mLista + Cells[3, i]+',';
                   end;
               end;
               mLista := Copy(mLista, 1, Length(mLista)-1);
          end;

          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT *');
          Produtos.SQL.Add('FROM  Produtos');
          Produtos.SQL.Add('WHERE Codigo IN('+mLista+')');
          Produtos.Open;
     end;
end;

procedure TUtilitarios_Importar_NFe_TerceirosLotes.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
    i:integer;
begin
     with Dados do begin
          Panel2.Enabled := false;
          if (Button = nbInsert) or (Button = nbEdit) then begin
             for i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             end;
             Panel2.Enabled := true;
             ProdutosDetalheProduto_Codigo.Value := cProduto.KeyValue;
             ProdutosDetalheNota_Entrada.Value   := StrtoInt(Utilitarios_Importar_NFe_Terceiros.cnNF.Text);
             ProdutosDetalheData_Entrada.Value   := StrtoDate(Utilitarios_Importar_NFe_Terceiros.cdEmi.Text);
             ProdutosDetalheProcesso.Value       := Utilitarios_Importar_NFe_Terceiros.cProcesso.Text;
             ProdutosDetalheTemp.Value           := true;
             cDetalhe.SetFocus;

             with Utilitarios_Importar_NFe_Terceiros.GradeCadastro do begin
                  for i := 1 to RowCount -1 do begin
                      if Trim(Cells[3, i]) <> '' then begin
                         if Strtoint(Trim(Cells[3, i])) = cProduto.KeyValue then begin
                            tTotal.SQL.Clear;
                            tTotal.SQL.Add('SELECT Total = ISNULL(SUM(Quantidade_Entrada), 0) FROM ProdutosDetalhe WHERE Produto_Codigo = :pCodigo and Nota_Entrada = :pNota');
                            tTotal.ParamByName('pCodigo').AsInteger := cProduto.KeyValue;
                            tTotal.ParamByName('pNota').AsInteger   := StrtoInt(Utilitarios_Importar_NFe_Terceiros.cnNF.Text);
                            tTotal.Open;

                            cQtdeNota.Value  := StrtoFloat(Cells[6, i]);
                            cQtdeSaldo.Value := cQtdeNota.Value - tTotal.FieldByName('Total').AsFloat;
                            Break;
                         end;
                     end;
                  end;
                  if Button = nbEdit then begin
                     cQtdeSaldo.Value := cQtdeNota.Value - tTotal.FieldByName('Total').AsFloat + ProdutosDetalheQuantidade_Entrada.Value;;
                  end;
             end;
          end;

          if Button = nbPost then begin
             with Utilitarios_Importar_NFe_Terceiros.GradeCadastro do begin
                  for i := 1 to Pred(RowCount) do begin
                      if Trim(Cells[3, i]) <> '' then begin
                         if Strtoint(Trim(Cells[3, i])) = cProduto.KeyValue then begin
                            Cells[8, i] := ProdutosDetalheQuantidade_Entrada.AsString;
                         end;
                      end;
                  end;
             end;

             Filtro;
          end;
     end;
end;

procedure TUtilitarios_Importar_NFe_TerceirosLotes.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
    i:integer;
begin
      ActiveControl := nil;
      with Dados, dmFiscal do begin
          if (Button = nbInsert) or (Button = nbEdit) then begin
             if cProduto.DisplayValue = '' then begin
                MessageDlg('Nenhum produto selecionado para adicionar!', mtError, [mbOK], 0);
                cProduto.SetFocus;
                Abort;
             end;
           end;

           if Button = nbPost then begin
              if (ProdutosDetalheDetalhe.AsInteger = 0) and (ProdutosDetalheLote.AsString = '') then begin
                 MessageDlg('Erro!'+#13+#13+'É necessário informar ou o "Detalhe" ou o "Número de lote".', mtError, [mbOK], 0);
                 cDetalhe.SetFocus;
                 Abort;
              end;
              If ProdutosDetalheQuantidade_Entrada.AsFloat <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Quantidade de entrada inválida.', mtError, [mbOK], 0);
                 cQtdeEntrada.SetFocus;
                 Abort;
              end;
              If DataLimpa(cDataFab.Text) then begin
                 MessageDlg('Erro!'+#13+#13+'É necessário informar a data de fabricação do lote.', mtError, [mbOK], 0);
                 cDataFab.SetFocus;
                 Abort;
              end;
              If DataLimpa(cDataVal.Text) then begin
                 MessageDlg('Erro!'+#13+#13+'É necessário informar a data de validade do lote.', mtError, [mbOK], 0);
                 cDataVal.SetFocus;
                 Abort;
              end;
              // Verificando se o lote ja esta cadastrado.
              if ProdutosDetalhe.State = dsInsert then begin
                 tTotal.SQL.Clear;
                 tTotal.SQL.Add('SELECT Total = ISNULL(SUM(Quantidade_Entrada), 0) FROM ProdutosDetalhe WHERE Produto_Codigo = :pCodigo and Nota_Entrada = :pNota');
                 tTotal.ParamByName('pCodigo').AsInteger := cProduto.KeyValue;
                 tTotal.ParamByName('pNota').AsInteger   := StrtoInt(Utilitarios_Importar_NFe_Terceiros.cnNF.Text);
                 tTotal.Open;
                 if ProdutosDetalhe.FieldByName('Quantidade_Entrada').Value > cQtdeSaldo.Value then begin
                    MessageDlg('Erro!'+#13+#13+'Quantidade informada superior a quantidade da nota fiscal.', mtError, [mbOK], 0);
                    Abort;
                 end;
              end;
              if ProdutosDetalhe.State = dsEdit then begin
                 tTotal.SQL.Clear;
                 tTotal.SQL.Add('SELECT Total = ISNULL(SUM(Quantidade_Entrada), 0) FROM ProdutosDetalhe WHERE Produto_Codigo = :pCodigo and Nota_Entrada = :pNota and Registro <> :pReg');
                 tTotal.ParamByName('pCodigo').AsInteger := cProduto.KeyValue;
                 tTotal.ParamByName('pNota').AsInteger   := StrtoInt(Utilitarios_Importar_NFe_Terceiros.cnNF.Text);
                 tTotal.ParamByName('pReg').AsInteger    := ProdutosDetalheRegistro.AsInteger;
                 tTotal.Open;
                 if (tTotal.FieldByName('Total').Value+ProdutosDetalhe.FieldByName('Quantidade_Entrada').Value) > cQtdeSaldo.Value then begin
                    MessageDlg('Erro!'+#13+#13+'Quantidade informada superior a quantidade da nota fiscal.', mtError, [mbOK], 0);
                    Abort;
                 end;
              end;

              if ProdutosDetalhe.State = dsInsert then begin
                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM ProdutosDetalhe');
                 tRegistro.Open;

                 ProdutosDetalheRegistro.Value := tRegistro.FieldByName('Registro').AsInteger + 1;
              end;
           end;

           if Button = nbDelete then begin
              tTotal.SQL.Clear;
              tTotal.SQL.Add('SELECT COUNT(*) AS Qtde');
              tTotal.SQL.Add('FROM   NotasItensDetalhe');
              tTotal.SQL.Add('WHERE  Produto_Codigo = :pCodigo');
              tTotal.SQL.Add('AND    Saida_Entrada = 1');
              tTotal.SQL.Add('AND    Lote = :pLote');
              tTotal.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
              tTotal.ParamByName('pLote').AsString    := ProdutosDetalheLote.AsString;
              tTotal.Open;

              if tTotal.FieldByName('Qtde').AsInteger > 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Lote ja foi movimentado, não pode ser exclído!.', mtError, [mbOK], 0);
                 Abort;
              end;
           end;

           if (Button = nbPost) and (ProdutosDetalhe.State = dsInsert) then begin
              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosDetalhe');
              tRegistro.Open;

              ProdutosDetalheRegistro.Value := tRegistro.FieldByName('Registro').AsInteger;
           end;
      end;
end;

procedure TUtilitarios_Importar_NFe_TerceirosLotes.cCodigoChange(Sender: TObject);
var
   i:integer;
begin
      with Dados do begin
           with Utilitarios_Importar_NFe_Terceiros do begin
                for i := 1 to GradeItens.RowCount -1 do begin
                    if Trim(GradeCadastro.Cells[3, i]) <> '' then begin
                       if StrtoInt(Trim(GradeCadastro.Cells[3, i])) = ProdutosCodigo.AsInteger then begin
                          ProdutosDetalheQuantidade_Entrada.Value := ProdutosDetalheQuantidade_Entrada.Value + StrtoFloat(GradeItens.Cells[08,i]);
                          ProdutosDetalheItem.Value               := StrtoInt(GradeItens.Cells[0,i]);
                          ProdutosDetalheNota_Item.Value          := Trim(cnNF.Text)+(InttoStr(StrtoInt(GradeItens.Cells[0,i])));
                       end;
                    end;
                end;
           end;
      end;
end;

procedure TUtilitarios_Importar_NFe_TerceirosLotes.cProdutoChange(Sender: TObject);
begin
      with Dados do begin
           ProdutosDetalhe.SQL.Clear;
           ProdutosDetalhe.SQL.Add('SELECT * FROM ProdutosDetalhe WHERE(Produto_Codigo = :pCodigo)');
           ProdutosDetalhe.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
           ProdutosDetalhe.Open;
      end;
end;

end.
