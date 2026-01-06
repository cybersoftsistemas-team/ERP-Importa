unit frmPedidosOutra_LoteItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Grids, DBGrids, RXDBCtrl, Vcl.StdCtrls, Funcoes,
  Vcl.ExtCtrls, DB, DBAccess, MSAccess, Vcl.ComCtrls, system.UITypes, Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TPedidosOutra_LoteItens = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bImportar: TButton;
    bSair: TButton;
    tTemp: TMSQuery;
    Progresso: TProgressBar;
    lProgresso: TLabel;
    bSelTodos: TButton;
    bDesmarcar: TButton;
    bRefazer: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    cValor: TCurrencyEdit;
    bAplicar: TButton;
    Label5: TLabel;
    cDesconto: TCurrencyEdit;
    bDesconto: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cQtNotas: TCurrencyEdit;
    cQtItens: TCurrencyEdit;
    cSel: TCurrencyEdit;
    cTotal: TCurrencyEdit;
    Label6: TLabel;
    cTotalSel: TCurrencyEdit;
    Panel4: TPanel;
    cCampo: TCheckBox;
    cAgrupar: TCheckBox;
    tGrupo: TMSQuery;
    Progresso2: TProgressBar;
    lProgresso2: TLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cCampoClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure bAplicarClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GradeCellClick(Column: TColumn);
    procedure bSelTodosClick(Sender: TObject);
    procedure bDesmarcarClick(Sender: TObject);
    procedure bRefazerClick(Sender: TObject);
    procedure bDescontoClick(Sender: TObject);
    procedure cDescontoChange(Sender: TObject);
    procedure cValorChange(Sender: TObject);
  private
    { Private declarations }
    procedure SalvaItem(Qtde:Double; Item:integer; Valor:Real; Chave:string; Nota:integer; Data:TDate; Desconto:Real);
  public
    { Public declarations }
  end;

var
  PedidosOutra_LoteItens: TPedidosOutra_LoteItens;

implementation

uses frmDados, frmDMFiscal, frmPedido_ItensOutros;

{$R *.dfm}

procedure TPedidosOutra_LoteItens.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TPedidosOutra_LoteItens.FormShow(Sender: TObject);
begin
      with dmFiscal, Dados do begin
           Grade.FixedCols := 5;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('SELECT COUNT(*) AS Qtde FROM LoteNotas WHERE Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.Open;

           if tTemp.FieldByName('Qtde').AsInteger = 0 then begin
              tTemp.SQL.Clear;
              tTemp.SQL.Add('INSERT INTO LoteNotas SELECT Lote = '+QuotedStr(PedidosLote.AsString));
              tTemp.SQL.Add('                            ,Pedido = NULL');
              tTemp.SQL.Add('                            ,Nota');
              tTemp.SQL.Add('                            ,Data');
              tTemp.SQL.Add('                            ,(SELECT NFe_cNF FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data AND NotasFiscais.Saida_Entrada = NotasItens.Saida_Entrada)');
              tTemp.SQL.Add('                            ,Codigo_Mercadoria');
              tTemp.SQL.Add('                            ,Descricao_Mercadoria');
              tTemp.SQL.Add('                            ,Item');
              tTemp.SQL.Add('                            ,Quantidade');
              tTemp.SQL.Add('                            ,Valor = Valor_Unitario');
              tTemp.SQL.Add('                            ,Sel = 1');
              tTemp.SQL.Add('                            ,Desconto = 0');
              tTemp.SQL.Add('                      FROM  NotasItens');
              tTemp.SQL.Add('                      WHERE Nota IN(SELECT Numero FROM NotasFiscais WHERE Lote = '+QuotedStr(PedidosLote.AsString)+' AND Saida_Entrada = 1 AND Cancelada <> 1 AND Nfe_Denegada <> 1)');
              tTemp.SQL.Add('                      AND   Saida_Entrada = 1');
              tTemp.SQL.Add('                      AND   ISNULL(Numero_Referencia, 0) = 0');
              tTemp.SQL.Add('                      AND   Cancelada <> 1');
              tTemp.SQL.Add('                      AND   Nfe_Denegada <> 1');
              tTemp.SQL.Add('                      ORDER BY Nota, Item');
              //tTemp.SQL.SaveToFile('c:\temp\Lote_Notas.sql');
              tTemp.Execute;
           end;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('UPDATE LoteNotas SET Sel = 1 WHERE Pedido = :pPedido');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Execute;
           
           LoteNotas.SQL.Clear;
           LoteNotas.SQL.Add('SELECT * FROM LoteNotas WHERE Lote = :pLote AND (Pedido IS NULL OR Pedido = :pPedido) ORDER BY Nota, Item');
           LoteNotas.ParamByName('pLote').AsString    := PedidosLote.AsString;
           LoteNotas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           //LoteNotas.SQL.SaveToFile('c:\temp\Lote_Notas.sql');
           LoteNotas.Open;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('SELECT QtItens  = (SELECT ISNULL(COUNT(*), 0)                FROM LoteNotas WHERE Lote = '+QuotedStr(PedidosLote.AsString)+'AND (Pedido = :pPedido OR Pedido IS NULL))');
           tTemp.SQL.Add('      ,QtNotas  = (SELECT ISNULL(COUNT(DISTINCT Nota), 0)    FROM LoteNotas WHERE Lote = '+QuotedStr(PedidosLote.AsString)+'AND (Pedido = :pPedido OR Pedido IS NULL))');
           tTemp.SQL.Add('      ,QtSel    = (SELECT ISNULL(COUNT(*), 0)                FROM LoteNotas WHERE Lote = '+QuotedStr(PedidosLote.AsString)+'AND Sel = 1 AND (Pedido = :pPedido OR Pedido IS NULL))');
           tTemp.SQL.Add('      ,Total    = (SELECT ISNULL(SUM(Valor * Quantidade), 0) FROM LoteNotas WHERE Lote = '+QuotedStr(PedidosLote.AsString)+'AND (Pedido = :pPedido OR Pedido IS NULL))');
           tTemp.SQL.Add('      ,Total_Sel= (SELECT ISNULL(SUM(Valor * Quantidade), 0) FROM LoteNotas WHERE Lote = '+QuotedStr(PedidosLote.AsString)+'AND Sel = 1 AND (Pedido = :pPedido OR Pedido IS NULL))');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Open;

           cSel.Value      := tTemp.FieldByName('QtSel').AsInteger;
           cTotal.Value    := tTemp.FieldByName('Total').Value;
           cTotalSel.Value := tTemp.FieldByName('Total_Sel').Value;
           cQtItens.Text   := tTemp.FieldByName('QtItens').AsString;
           cQtNotas.Text   := tTemp.FieldByName('QtNotas').AsString;
      end;
end;

procedure TPedidosOutra_LoteItens.cCampoClick(Sender: TObject);
begin
     if cCampo.Checked then
        Grade.FixedCols := 4
     else
        Grade.FixedCols := 5;
end;

procedure TPedidosOutra_LoteItens.bImportarClick(Sender: TObject);
var
    mScript:widestring;
begin
      if MessageDlg('Deseja realmente importar estes itens para o pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         abort;

      Screen.Cursor := crSQLWait;

      with Dados, dmFiscal do begin
           tGrupo.DisableControls;
           NotasItens.DisableControls;
           LoteNotas.DisableControls;
           TipoNota.DisableControls;
           Pedidos.DisableControls;
           PedidosItens.DisableControls;
           tTemp.DisableControls;
           
           NotasItens.SQL.Clear;
           NotasItens.SQL.Add('SELECT *');
           NotasItens.SQL.Add('FROM NotasItens');
           NotasItens.SQL.Add('WHERE Nota IN(SELECT Numero FROM NotasFiscais WHERE Lote = '+QuotedStr(PedidosLote.AsString)+')');
           NotasItens.SQL.Add('AND Saida_Entrada = 1');
           NotasItens.SQL.Add('ORDER BY Nota, Item');
           NotasItens.Open;

           Progresso.Visible  := true;
           lProgresso.Visible := true;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('DELETE FROM PedidosItens WHERE Pedido = :pPedido');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Execute;
           tTemp.SQL.Clear;
           tTemp.SQL.Add('DELETE FROM PedidosItensReferencia WHERE Pedido = :pPedido AND Data_Pedido = :pData AND Lote = :pLote');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.ParamByName('pData').AsDate      := PedidosData_Emissao.Value;
           tTemp.ParamByName('pLote').AsString    := PedidosLote.Value;
           tTemp.Execute;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('SELECT Pedido = ISNULL(MAX(Item), 0)+1 FROM PedidosItens WHERE Pedido = :pPedido');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;

           mScript := LoteNotas.SQL.Text;
           PedidosItensReferencia.Open;

           if not cAgrupar.Checked then begin
              Progresso.Max      := LoteNotas.RecordCount;
              Progresso.Position := 0;
              
              LoteNotas.First;
              while not LoteNotas.Eof do begin
                    if LoteNotas.FieldByName('Sel').AsBoolean then begin
                       NotasItens.Locate('Nota;Data;Codigo_Mercadoria;Item'
                                         ,VarArrayOf([LoteNotas.FieldByName('Nota').Value
                                         ,LoteNotas.FieldByName('Data').Value
                                         ,LoteNotas.FieldByName('Codigo_Mercadoria').Value
                                         ,LoteNotas.FieldByName('Item').Value])
                                         ,[loCaseInsensitive]
                                         );
                       LoteNotas.Edit;
                                 LoteNotasPedido.Value := PedidosNumero.Value;
                       LoteNotas.Post;

                       tTemp.Open;

                       SalvaItem(LoteNotas.FieldByName('Quantidade').Value
                                ,LoteNotas.FieldByName('Item').Value
                                ,LoteNotas.FieldByName('Valor').Value
                                ,LoteNotas.FieldByName('Chave').Value
                                ,LoteNotas.FieldByName('Nota').Value
                                ,LoteNotas.FieldByName('Data').Value
                                ,LoteNotas.FieldByName('Desconto').Value
                                );
                       tTemp.Close;

                       PedidosItensReferencia.Append;
                                              PedidosItensReferenciaPedido.Value            := PedidosNumero.Value;
                                              PedidosItensReferenciaData_Pedido.Value       := PedidosData_Emissao.Value;
                                              PedidosItensReferenciaPedido.Value            := PedidosNumero.Value;
                                              PedidosItensReferenciaChave_Referencia.Value  := LoteNotas.FieldByName('Chave').AsString;
                                              PedidosItensReferenciaNota_Referencia.Value   := LoteNotas.FieldByName('Nota').Value;
                                              PedidosItensReferenciaData_Referencia.Value   := LoteNotas.FieldByName('Data').Value;
                                              PedidosItensReferenciaCodigo_Mercadoria.Value := LoteNotas.FieldByName('Codigo_Mercadoria').Value;
                                              PedidosItensReferenciaItem.Value              := LoteNotas.FieldByName('Item').Value;
                                              PedidosItensReferenciaLote.Value              := LoteNotas.FieldByName('Lote').Value;
                       PedidosItensReferencia.Post;
                    end;

                    Progresso.Position := Progresso.Position + 1;
                    Application.ProcessMessages;
                    LoteNotas.Next;
              end;
           end else begin
              // Totalizando os itens por codigo da mercadoria.
              tGrupo.SQL.Clear;
              tGrupo.SQL.Add('SELECT Codigo_Mercadoria');
              tGrupo.SQL.Add('      ,Qtde = SUM(Quantidade)');
              tGrupo.SQL.Add('	    ,Nota = MIN(Nota)');
              tGrupo.SQL.Add('	    ,Data = MIN(Data)');
              tGrupo.SQL.Add('	    ,Valor');
              tGrupo.SQL.Add('	    ,Desconto');
              tGrupo.SQL.Add('FROM LoteNotas');
              tGrupo.SQL.Add('WHERE Lote = '+QuotedStr(PedidosLote.AsString));
              tGrupo.SQL.Add('AND   Sel = 1');
              tGrupo.SQL.Add('GROUP BY Codigo_Mercadoria, Desconto, Valor');
              //tGrupo.SQL.SaveToFile('c:\temp\Grupos.sql');
              tGrupo.Open;

              Progresso.Max      := tGrupo.RecordCount;
              Progresso.Position := 0;

              tGrupo.First;
              while not tGrupo.Eof do begin
                    NotasItens.Locate('Nota;Data;Codigo_Mercadoria;Item'
                                      ,VarArrayOf([tGrupo.FieldByName('Nota').Value
                                      ,LoteNotas.FieldByName('Data').Value
                                      ,LoteNotas.FieldByName('Codigo_Mercadoria').Value
                                      ,1])
                                      ,[loCaseInsensitive]);
                    tTemp.Open;
                    SalvaItem(tGrupo.FieldByName('Qtde').Value
                             ,1
                             ,tGrupo.FieldByName('Valor').Value
                             ,''
                             ,tGrupo.FieldByName('Nota').Value
                             ,tGrupo.FieldByName('Data').Value
                             ,tGrupo.FieldByName('Desconto').Value
                             );
                    tTemp.Close;

                    LoteNotas.SQL.Clear;
                    LoteNotas.SQL.Add('SELECT * FROM LoteNotas');
                    LoteNotas.SQL.Add('WHERE Lote = :pLote');
                    LoteNotas.SQL.Add('AND (Pedido IS NULL OR Pedido = :pPedido)');
                    LoteNotas.SQL.Add('AND Codigo_Mercadoria = :pCodigo');
                    LoteNotas.SQL.Add('AND Sel = 1');
                    LoteNotas.SQL.Add('ORDER BY Nota, Item');
                    LoteNotas.ParamByName('pLote').AsString    := PedidosLote.AsString;
                    LoteNotas.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                    LoteNotas.ParamByName('pCodigo').AsInteger := tGrupo.FieldByName('Codigo_Mercadoria').AsInteger;
                    LoteNotas.Open;
                    LoteNotas.First;

                    Progresso2.Max      := LoteNotas.RecordCount;
                    Progresso2.Position := 0;
                    Progresso2.Visible  := true;
                    lProgresso2.Visible := true;

                    while not LoteNotas.Eof do begin
                          PedidosItensReferencia.Append;
                                                 PedidosItensReferenciaPedido.Value            := PedidosNumero.Value;
                                                 PedidosItensReferenciaData_Pedido.Value       := PedidosData_Emissao.Value;
                                                 PedidosItensReferenciaPedido.Value            := PedidosNumero.Value;
                                                 PedidosItensReferenciaChave_Referencia.Value  := LoteNotas.FieldByName('Chave').AsString;
                                                 PedidosItensReferenciaNota_Referencia.Value   := LoteNotas.FieldByName('Nota').Value;
                                                 PedidosItensReferenciaData_Referencia.Value   := LoteNotas.FieldByName('Data').Value;
                                                 PedidosItensReferenciaCodigo_Mercadoria.Value := LoteNotas.FieldByName('Codigo_Mercadoria').Value;
                                                 PedidosItensReferenciaItem.Value              := LoteNotas.FieldByName('Item').Value;
                                                 PedidosItensReferenciaLote.Value              := LoteNotas.FieldByName('Lote').Value;
                          PedidosItensReferencia.Post;
                          LoteNotas.Next;
                          Progresso2.Position := Progresso2.Position + 1;
                          Application.ProcessMessages;
                    end;
                    Progresso2.Visible  := false;
                    lProgresso2.Visible := false;

                    Progresso.Position := Progresso.Position + 1;
                    Application.ProcessMessages;
                    tGrupo.Next;
              end;
           end;
           PedidosItensReferencia.Close;
           PedidosItens.Refresh;
           LoteNotas.Close;
           LoteNotas.SQL.Clear;
           LoteNotas.SQL.Add(mScript);
           LoteNotas.Open;

           Progresso.Visible  := false;
           lProgresso.Visible := false;

           NotasItens.EnableControls;
           LoteNotas.EnableControls;
           TipoNota.EnableControls;
           Pedidos.EnableControls;
           PedidosItens.EnableControls;
      end;

      Screen.Cursor := crDefault;
      close;
end;

procedure TPedidosOutra_LoteItens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      PedidosOutra_LoteItens.Release;
      PedidosOutra_LoteItens := nil;
end;

procedure TPedidosOutra_LoteItens.bAplicarClick(Sender: TObject);
begin
      if MessageDlg('Deseja realmente aplicar o valor informado a todos os itens do Pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         abort;

      with Dados do begin
           tTemp.SQL.Clear;
           tTemp.SQL.Add('UPDATE LoteNotas SET Valor = :pValor WHERE Sel = 1 AND Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.ParamByName('pValor').AsCurrency := cValor.Value;
           tTemp.Execute;
           LoteNotas.Refresh;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('SELECT QtSel     = ISNULL(COUNT(*), 0)');
           tTemp.SQL.Add('      ,Total_Sel = ISNULL(SUM(Valor * Quantidade), 0)');
           tTemp.SQL.Add('FROM LoteNotas');
           tTemp.SQL.Add('WHERE Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.SQL.Add('AND   Sel = 1');
           tTemp.SQL.Add('AND  (Pedido = :pPedido OR Pedido IS NULL)');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Open;
           
           cSel.Value      := tTemp.FieldByName('QtSel').AsInteger;
           cTotalSel.Value := tTemp.FieldByName('Total_Sel').Value;
      end;
end;

procedure TPedidosOutra_LoteItens.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     with Dados do Begin
          if (Column.FieldName = 'Sel') then begin
             with Grade.Canvas do begin
                  FillRect(Rect);
                  if (LoteNotas.FieldByName('Sel').AsBoolean) then
                     ImageList1.GetBitmap(11, Icon)
                  else
                     ImageList1.GetBitmap(10, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             end;
          end;
     end;
end;

procedure TPedidosOutra_LoteItens.GradeCellClick(Column: TColumn);
begin
      with Dados do begin
           LoteNotas.Edit;
                     LoteNotasSel.Value := not LoteNotasSel.Value;
           LoteNotas.Post;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('SELECT QtSel     = ISNULL(COUNT(*), 0)');
           tTemp.SQL.Add('      ,Total_Sel = ISNULL(SUM(Valor * Quantidade), 0)');
           tTemp.SQL.Add('FROM LoteNotas');
           tTemp.SQL.Add('WHERE Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.SQL.Add('AND   Sel = 1');
           tTemp.SQL.Add('AND  (Pedido = :pPedido OR Pedido IS NULL)');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Open;
           
           cSel.Value      := tTemp.FieldByName('QtSel').AsInteger;
           cTotalSel.Value := tTemp.FieldByName('Total_Sel').Value;
      end;
end;

procedure TPedidosOutra_LoteItens.bSelTodosClick(Sender: TObject);
begin
      with Dados do begin
           tTemp.SQL.Clear;
           tTemp.SQL.Add('UPDATE LoteNotas SET Sel = 1 WHERE Lote = '+QuotedStr(PedidosLote.AsString)+' AND (Pedido = :pPedido OR Pedido IS NULL)');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Execute;

           LoteNotas.Refresh;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('SELECT QtSel     = ISNULL(COUNT(*), 0)');
           tTemp.SQL.Add('      ,Total_Sel = ISNULL(SUM(Valor * Quantidade), 0)');
           tTemp.SQL.Add('FROM LoteNotas');
           tTemp.SQL.Add('WHERE Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.SQL.Add('AND   Sel = 1');
           tTemp.SQL.Add('AND  (Pedido = :pPedido OR Pedido IS NULL)');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Open;
           cSel.Value      := tTemp.FieldByName('QtSel').AsInteger;
           cTotalSel.Value := tTemp.FieldByName('Total_Sel').Value;
      end;
end;

procedure TPedidosOutra_LoteItens.bDesmarcarClick(Sender: TObject);
begin
      with Dados do begin
           tTemp.SQL.Clear;
           tTemp.SQL.Add('UPDATE LoteNotas SET Sel = 0 WHERE Lote = '+QuotedStr(PedidosLote.AsString)+' AND Sel = 1 AND (Pedido = :pPedido OR Pedido IS NULL)');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Execute;
           LoteNotas.Refresh;
           cSel.Value      := 0;
           cTotalSel.Value := 0;
      end;
end;

procedure TPedidosOutra_LoteItens.bRefazerClick(Sender: TObject);
begin
      with Dados do begin
           LoteNotas.Close;
           tTemp.SQL.Clear;
           tTemp.SQL.Add('DELETE FROM LoteNotas WHERE Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.Execute;
           tTemp.SQL.Clear;
           tTemp.SQL.Add('INSERT INTO LoteNotas SELECT Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.SQL.Add('                            ,Pedido = NULL');
           tTemp.SQL.Add('                            ,Nota');
           tTemp.SQL.Add('                            ,Data');
           tTemp.SQL.Add('                            ,(SELECT NFe_cNF FROM NotasFiscais WHERE Numero = Nota AND Data_Emissao = Data AND NotasFiscais.Saida_Entrada = NotasItens.Saida_Entrada)');
           tTemp.SQL.Add('                            ,Codigo_Mercadoria');
           tTemp.SQL.Add('                            ,Descricao_Mercadoria');
           tTemp.SQL.Add('                            ,Item');
           tTemp.SQL.Add('                            ,Quantidade');
           tTemp.SQL.Add('                            ,Valor = Valor_Unitario');
           tTemp.SQL.Add('                            ,Sel = 1');
           tTemp.SQL.Add('                            ,Desconto = 0');
           tTemp.SQL.Add('                      FROM  NotasItens');
           tTemp.SQL.Add('                      WHERE Nota IN(SELECT Numero FROM NotasFiscais WHERE Lote = '+QuotedStr(PedidosLote.AsString)+' AND Saida_Entrada = 1 AND Cancelada <> 1 AND Nfe_Denegada <> 1)');
           tTemp.SQL.Add('                      AND   Saida_Entrada = 1');
           tTemp.SQL.Add('                      AND   ISNULL(Numero_Referencia, 0) = 0');
           tTemp.SQL.Add('                      AND   Cancelada <> 1');
           tTemp.SQL.Add('                      AND   Nfe_Denegada <> 1');
           tTemp.SQL.Add('                      ORDER BY Nota, Item');
           //tTemp.SQL.SaveToFile('c:\temp\Lote_Notas.sql');
           tTemp.Execute;
           LoteNotas.Open;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('SELECT QtSel     = ISNULL(COUNT(*), 0)');
           tTemp.SQL.Add('      ,Total_Sel = ISNULL(SUM(Valor * Quantidade), 0)');
           tTemp.SQL.Add('FROM LoteNotas');
           tTemp.SQL.Add('WHERE Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.SQL.Add('AND   Sel = 1');
           tTemp.SQL.Add('AND  (Pedido = :pPedido OR Pedido IS NULL)');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Open;

           cSel.Value      := tTemp.FieldByName('QtSel').AsInteger;
           cTotalSel.Value := tTemp.FieldByName('Total_Sel').Value;
      end;
end;

procedure TPedidosOutra_LoteItens.bDescontoClick(Sender: TObject);
var
   Fator:Real;
begin
      if MessageDlg('Deseja realmente aplicar o rateio dos descontos a todos os itens do Pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         abort;

      with Dados do begin
           tTemp.SQL.Clear;
           tTemp.SQL.Add('SELECT Total_Sel = ISNULL(SUM(Valor * Quantidade), 0)');
           tTemp.SQL.Add('FROM LoteNotas');
           tTemp.SQL.Add('WHERE Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.SQL.Add('AND   Sel = 1');
           tTemp.SQL.Add('AND  (Pedido = :pPedido OR Pedido IS NULL)');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Open;

           Fator := cDesconto.Value / tTemp.FieldByName('Total_Sel').AsFloat;
           
           tTemp.SQL.Clear;
           tTemp.SQL.Add('UPDATE LoteNotas SET Desconto = ROUND(Valor * :pFator, 4)');
           tTemp.SQL.Add('WHERE Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.SQL.Add('AND   Sel = 1');
           tTemp.SQL.Add('AND  (Pedido = :pPedido OR Pedido IS NULL)');
           tTemp.ParamByName('pFator').AsFloat := Fator;
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Execute;
           LoteNotas.Refresh;

           tTemp.SQL.Clear;
           tTemp.SQL.Add('SELECT QtSel     = ISNULL(COUNT(*), 0)');
           tTemp.SQL.Add('      ,Total_Sel = ISNULL(SUM(Valor * Quantidade), 0)');
           tTemp.SQL.Add('FROM LoteNotas');
           tTemp.SQL.Add('WHERE Lote = '+QuotedStr(PedidosLote.AsString));
           tTemp.SQL.Add('AND   Sel = 1');
           tTemp.SQL.Add('AND  (Pedido = :pPedido OR Pedido IS NULL)');
           tTemp.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           tTemp.Open;
           
           cSel.Value      := tTemp.FieldByName('QtSel').AsInteger;
           cTotalSel.Value := tTemp.FieldByName('Total_Sel').Value;
      end;
end;

procedure TPedidosOutra_LoteItens.cDescontoChange(Sender: TObject);
begin
      bDesconto.Enabled := cDesconto.Value <> 0;
end;

procedure TPedidosOutra_LoteItens.cValorChange(Sender: TObject);
begin
      bAplicar.Enabled := cValor.Value <> 0;
end;

procedure TPedidosOutra_LoteItens.SalvaItem(Qtde:Double; Item:integer; Valor:Real; Chave:string; Nota:integer; Data:TDate; Desconto:Real);
begin
      with Dados, dmFiscal do begin
           PedidosItens.Append;
                        PedidosItensPedido.Value                := PedidosNumero.Value;
                        PedidosItensItem.Value                  := tTemp.FieldByName('Pedido').AsInteger;
                        PedidosItensSequencia_SISCOMEX.Value    := NotasItensSequencia_SISCOMEX.Value;
                        PedidosItensCodigo_Mercadoria.Value     := NotasItensCodigo_Mercadoria.Value;
                        PedidosItensCodigo_Fabricante.Value     := NotasItensCodigo_Fabricante.Value;
                        PedidosItensDescricao_Mercadoria.Value  := NotasItensDescricao_Mercadoria.Value;
                        PedidosItensNCM.Value                   := NotasItensNCM.Value;
                        PedidosItensEXTIPI.Value                := NotasItensEXTIPI.Value;
                        PedidosItensUnidade_Medida.Value        := NotasItensUnidade_Medida.Value;
                        PedidosItensQuantidade.Value            := Qtde;
                        PedidosItensValor_Unitario.Value        := Valor;
                        PedidosItensValor_Total.Value           := 0;
                        PedidosItensAliquota_IPI.Value          := NotasItensAliquota_IPI.Value;
                        PedidosItensValor_IPI.Value             := 0;
                        PedidosItensTotal_IPI.Value             := 0;
                        PedidosItensCodigoTrib_TabA.Value       := NotasItensCodigoTrib_TabA.Value;
                        PedidosItensCodigoTrib_TabB.Value       := NotasItensCodigoTrib_TabB.Value;
                        PedidosItensCSTIPI.Value                := NotasItensCSTIPI.Value;
                        PedidosItensCSTPIS.Value                := NotasItensCSTPIS.Value;
                        PedidosItensCSTCOFINS.Value             := NotasItensCSTCOFINS.Value;
                        PedidosItensAdicao.Value                := NotasItensAdicao.Value;
                        PedidosItensAliquota_II.Value           := NotasItensAliquota_II.Value;
                        PedidosItensValor_II.Value              := 0;
                        PedidosItensValor_BCICMSOper.Value      := 0;
                        PedidosItensAliquota_ICMSOper.Value     := NotasItensAliquota_ICMSOper.Value;
                        PedidosItensValor_ICMSOper.Value        := 0;
                        PedidosItensValor_BCICMSSub.Value       := 0;
                        PedidosItensAliquota_ICMSSub.Value      := NotasItensAliquota_ICMSSub.Value;
                        PedidosItensValor_ICMSSub.Value         := 0;
                        PedidosItensAliquota_MVA.Value          := NotasItensAliquota_MVA.Value;
                        PedidosItensValor_MVA.Value             := 0;
                        PedidosItensAliquota_ICMSReducao.Value  := NotasItensAliquota_ICMSReducao.Value;
                        PedidosItensValor_ICMSReducao.Value     := 0;
                        PedidosItensValor_Seguro.Value          := 0;
                        PedidosItensValor_Frete.Value           := 0;
                        PedidosItensValor_Despesa.Value         := 0;
                        PedidosItensAliquota_PIS.Value          := NotasItensAliquota_PIS.Value;
                        PedidosItensValor_PIS.Value             := 0;
                        PedidosItensAliquota_COFINS.Value       := NotasItensAliquota_COFINS.Value;
                        PedidosItensValor_COFINS.Value          := 0;
                        PedidosItensPeso_Liquido.Value          := NotasItensPeso_Liquido.Value;
                        PedidosItensPeso_Bruto.Value            := NotasItensPeso_Bruto.Value;
                        PedidosItensMovimenta_Inventario.Value  := TipoNotaMovimenta_Inventario.Value;
                        PedidosItensMovimenta_Estoque.Value     := TipoNotaMovimenta_Estoque.Value;
                        PedidosItensMovimenta_EstoqueRep.Value  := TipoNotaMovimenta_EstoqueRep.Value;
                        PedidosItensModalidade_BCICMS.Value     := NotasItensModalidade_BCICMS.Value;
                        PedidosItensModalidade_BCICMSST.Value   := NotasItensModalidade_BCICMSST.Value;
                        PedidosItensValor_IsentasICMS.Value     := 0;
                        PedidosItensValor_OutrasICMS.Value      := 0;
                        PedidosItensValor_IsentasIPI.Value      := 0;
                        PedidosItensValor_OutrasIPI.Value       := 0;
                        PedidosItensLucro.Value                 := 0;
                        PedidosItensLucro_Valor.Value           := 0;
                        PedidosItensValor_BCIPI.Value           := 0;
                        PedidosItensRateio_ICMSProcesso.Value   := 0;
                        PedidosItensProcesso.Value              := NotasItensProcesso.Value;
                        PedidosItensDI.Value                    := NotasItensDI.Value;
                        PedidosItensSaida_Entrada.Value         := PedidosSaida_Entrada.Value;
                        PedidosItensVeiculo.Value               := NotasItensVeiculo.Value;
                        PedidosItensSequencia.Value             := Item;
                        PedidosItensNota_Terceiros.Value        := NotasItensNota_Terceiros.Value;
                        PedidosItensAliquota_ICMSIntegral.Value := NotasItensAliquota_ICMSIntegral.Value;
                        PedidosItensValor_Dumping.Value         := NotasItensValor_Dumping.Value;
                        PedidosItensApuracao_PISCOFINS.Value    := TipoNotaApuracao_PISCOFINS.Value;
                        PedidosItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.Value;
                        PedidosItensAliquota_PISRed.Value       := NotasItensAliquota_PISRed.Value;
                        PedidosItensAliquota_COFINSRed.Value    := NotasItensAliquota_COFINSRed.Value;
                        PedidosItensAliquota_ICMSIntegral.Value := NotasItensAliquota_ICMSIntegral.Value;
                        PedidosItensValor_BCMVA.Value           := NotasItensValor_BCMVA.Value;
                        PedidosItensTotal_Item.Value            := Valor * Qtde;
                        PedidosItensRegistro_Adicao.Value       := NotasItensRegistro_Adicao.Value;
                        PedidosItensTipo_Nota.Value             := PedidosTipo_Nota.Value;
                        PedidosItensValor_BCPIS.Value           := NotasItensValor_BCPIS.Value;
                        PedidosItensTotal_Impostos.Value        := 0;
                        PedidosItensICMSST_Anterior.Value       := NotasItensICMSST_Anterior.Value;
                        PedidosItensComissao.Value              := 0;
                        PedidosItensComissao_Valor.Value        := 0;
                        PedidosItensReducao_ICMSST.Value        := 0;
                        PedidosItensValor_Inventario.Value      := 0;
                        if not cAgrupar.Checked then begin
                           PedidosItensNota_Referencia.Value   := Chave;
                           PedidosItensData_Referencia.Value   := Data;
                           PedidosItensNumero_Referencia.Value := Nota;
                        end;
                        PedidosItensCEST.Value                  := NotasItensCEST.Value;
                        PedidosItensValor_BCICMSDest.Value      := 0;
                        PedidosItensAliquota_ICMSDest.Value     := 0;
                        PedidosItensValor_ICMSDest.Value        := 0;
                        PedidosItensDIFAL_Valor.Value           := 0;
                        PedidosItensDIFAL_PercOrig.Value        := 0;
                        PedidosItensDIFAL_ValorOrig.Value       := 0;
                        PedidosItensDIFAL_PercDest.Value        := 0;
                        PedidosItensDIFAL_ValorDest.Value       := 0;
                        PedidosItensFCP_Aliquota.Value          := 0;
                        PedidosItensFCP_ValorDest.Value         := 0;
                        PedidosItensFCP_ICMSOrig.Value          := 0;
                        PedidosItensFCP_ICMSDest.Value          := 0;
                        PedidosItensNatureza_Codigo.Value       := PedidosNatureza_Codigo.Value;
                        PedidosItensValor_BCFCP.Value           := 0;
                        PedidosItensValor_FCP.Value             := 0;
                        PedidosItensValor_BCFCPST.Value         := 0;
                        PedidosItensValor_FCPST.Value           := 0;
                        PedidosItensValor_ICMSDesonerado.Value  := 0;
                        PedidosItensDesconto_Valor.Value        := Desconto;

                        Pedido_ItensOutros.Recalcula;
           PedidosItens.Post;
      end;
end;


end.
