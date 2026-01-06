unit frmPedido_ItensOutrosSeriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, DBGrids, RXDBCtrl,
  Funcoes, system.UITypes, DB, DBAccess, MSAccess, Grids, MemDS;

type
  TPedido_ItensOutrosSeriais = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bSelTodos: TButton;
    bProcesso: TButton;
    GroupBox1: TGroupBox;
    Grade: TRxDBGrid;
    bRemTodos: TButton;
    tSeriais: TMSQuery;
    GroupBox2: TGroupBox;
    GradeSel: TRxDBGrid;
    tPedido: TMSQuery;
    dstPedido: TDataSource;
    StaticText16: TStaticText;
    cPesquisa: TEdit;
    tPesquisa: TMSQuery;
    bAdicionar: TButton;
    bRemItem: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSelTodosClick(Sender: TObject);
    procedure GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;       Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure bProcessoClick(Sender: TObject);
    procedure bRemTodosClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure bRemItemClick(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure GradeSelDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure GradeMouseDown(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
    procedure GradeDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure GradeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GradeSelDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    mContador     : Integer;
    mContadorfinal: Integer;
    mSelecionou   : Boolean;
    firstpoint, thispoint: tpoint;
    thisfield : string;
  end;

var
  Pedido_ItensOutrosSeriais: TPedido_ItensOutrosSeriais;

implementation

uses frmDados;

{$R *.dfm}

procedure TPedido_ItensOutrosSeriais.bSairClick(Sender: TObject);
var
    mDescr: widestring;
    mTipo: string;
begin
      with Dados do begin
           // Remove caracteres de controle da descrição do produto.
           mDescr := ProdutosDescricao.AsString;
           mDescr := RemoveCaracter(#13,'', ProdutosDescricao.Value);
           mDescr := RemoveCaracter(#12,'', mDescr);
           mDescr := RemoveCaracter(#10,'', mDescr);
           mDescr := RemoveCaracter('<{'+Trim(ProdutosCodigo.AsString)+'}>', '', mDescr);
           
           if tPedido.RecordCount > 0 then begin
              mTipo  := Trim(tPedido.FieldByName('Tipo').AsString);

              if mTipo = '' then
                 mTipo := Trim(tPedido.FieldByName('Tipo2').AsString);
              if mTipo = '' then
                 mTipo := Trim(tPedido.FieldByName('Tipo3').AsString);

              mDescr := mDescr + ' :'+mTipo;
              
              tPedido.First;
              while not tPedido.eof do begin
                    mDescr := mDescr + ' ' + Trim(tPedido.FieldByName('Numero').AsString)+' ';
                    if Trim(tPedido.FieldByName('Numero2').AsString) <> '' then mDescr := mDescr + ' '+Trim(tPedido.FieldByName('Tipo2').AsString)+' '+Trim(tPedido.FieldByName('Numero2').AsString);
                    if Trim(tPedido.FieldByName('Numero3').AsString) <> '' then mDescr := mDescr + ' '+Trim(tPedido.FieldByName('Tipo3').AsString)+' '+Trim(tPedido.FieldByName('Numero3').AsString);
                    if Trim(tPedido.FieldByName('Ano_Modelo').AsString) <> '' then begin
                       mDescr := mDescr + ' ANO/MODELO '+ tPedido.FieldByName('Ano_Modelo').AsString+'/'+ tPedido.FieldByName('Ano_Fabricacao').AsString;
                    end;
                    if Trim(tPedido.FieldByName('Cor').AsString) <> '' then begin
                       mDescr := mDescr + ' COR: '+ tPedido.FieldByName('Cor_Nome').AsString;
                    end;
                    mTipo  := Trim(tPedido.FieldByName('Tipo').AsString);
                    tPedido.Next;
              end;
           end;

           PedidosItensDescricao_Mercadoria.Value := mDescr;
           PedidosItensQuantidade.Value           := tPedido.RecordCount;
      end;
      Close;
end;

procedure TPedido_ItensOutrosSeriais.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Pedido_ItensOutrosSeriais.Release;
      Pedido_ItensOutrosSeriais := nil;
end;

procedure TPedido_ItensOutrosSeriais.bSelTodosClick(Sender: TObject);
begin
     Grade.SelectAll;
end;

procedure TPedido_ItensOutrosSeriais.GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
       If (mSelecionou = true) and (Key = 16) and (Grade.DataSource.DataSet.RecNo > mContador) then begin
          mContadorfinal := Grade.DataSource.DataSet.RecNo;
          Grade.DataSource.DataSet.RecNo := mContador;
          Repeat
               Grade.SelectedRows.CurrentRowSelected := true;
               Grade.DataSource.DataSet.Next;
          until (Grade.DataSource.DataSet.RecNo = mContadorFinal) or (Dados.ProdutosSeriais.Eof);
       end;
       mContador      := 0;
       mContadorfinal := 0;
       mSelecionou    := false;
end;

procedure TPedido_ItensOutrosSeriais.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      If (ssShift in Shift) then begin
          mSelecionou := true;
      End;
end;

procedure TPedido_ItensOutrosSeriais.FormShow(Sender: TObject);
begin
      with Dados do begin
           tPedido.SQL.Clear;
           tPedido.SQL.Add('SELECT *, Cor_Nome = (SELECT Descricao FROM Cores WHERE Codigo = Cor) FROM ProdutosSeriais WHERE Produto_Codigo = :pProduto AND Pedido = :pPedido');
           tPedido.ParamByName('pProduto').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
           tPedido.ParamByName('pPedido').AsInteger  := PedidosNumero.AsInteger;
           tPedido.Open;

           GroupBox1.Caption := 'Seriais disponíveis para faturamento ['+PoeZero(3, Dados.ProdutosSeriais.RecordCount)+']';
           GroupBox2.Caption := 'Seriais adicionado ao pedido ['+PoeZero(3, tPedido.RecordCount)+']';
     end;
end;

procedure TPedido_ItensOutrosSeriais.bProcessoClick(Sender: TObject);
begin
      with Dados do begin
           ProdutosSeriais.First;
           Grade.UnselectAll;
           mContadorfinal := Grade.DataSource.DataSet.RecNo;
           Grade.DataSource.DataSet.RecNo := 1;
           repeat
                 If ProdutosSeriais.FieldByName('Processo').AsString = ProcessosDOCProcesso.AsString then
                    Grade.SelectedRows.CurrentRowSelected := true;
                    
                 Grade.DataSource.DataSet.Next;
           until
               (Grade.DataSource.DataSet.RecNo = mContadorFinal) or (Dados.ProdutosSeriais.Eof);
      end;
end;

procedure TPedido_ItensOutrosSeriais.bRemTodosClick(Sender: TObject);
begin
      with Dados do begin
           tSeriais.SQL.Clear;
           tSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = null WHERE Produto_Codigo = :pProduto AND Pedido = :pPedido');
           tSeriais.ParamByName('pProduto').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
           tSeriais.ParamByName('pPedido').AsInteger  := PedidosNumero.AsInteger;
           tSeriais.Execute;
           ProdutosSeriais.Refresh;
           tPedido.Refresh;

           PedidosItensQuantidade.Value := 0;
           
           GroupBox1.Caption := 'Seriais disponíveis para faturamento ['+PoeZero(3, Dados.ProdutosSeriais.RecordCount)+']';
           GroupBox2.Caption := 'Seriais adicionado ao pedido ['+PoeZero(3, tPedido.RecordCount)+']';
      end;
end;

procedure TPedido_ItensOutrosSeriais.cPesquisaChange(Sender: TObject);
begin
      tPesquisa.SQL.Clear;
      tPesquisa.SQL.Add('SELECT Registro');
      tPesquisa.SQL.Add('FROM  ProdutosSeriais PS');
      tPesquisa.SQL.Add('WHERE PS.Produto_Codigo = :pCodigo');
      tPesquisa.SQL.Add('AND   ISNULL(PS.Pedido,0) = 0');
      tPesquisa.SQL.Add('AND   (SELECT COUNT(*) FROM ProdutosSeriaisNotas PSN WHERE PSN.Produto_Codigo = :pCodigo AND PSN.Numero = PS.Numero AND PSN.Saida_Entrada = 1) = 0');
      tPesquisa.SQL.Add('AND   Numero LIKE '+QuotedStr('%'+cPesquisa.Text+'%') );
      tPesquisa.SQL.Add('ORDER BY Cor, Numero');
      tPesquisa.ParamByName('pCodigo').AsInteger := Dados.PedidosItensCodigo_Mercadoria.AsInteger;
      tPesquisa.Open;
      if tPesquisa.RecordCount <> 0 then begin
         Repeat
              if Dados.ProdutosSeriais.Locate('Registro', tPesquisa.FieldByName('Registro').AsString, [loCaseInsensitive]) then break;
              tPesquisa.Next
         until not tPesquisa.eof;
      end;
end;


procedure TPedido_ItensOutrosSeriais.bRemItemClick(Sender: TObject);
begin
      with Dados do begin
           tSeriais.SQL.Clear;
           tSeriais.SQL.Add('UPDATE ProdutosSeriais SET Pedido = null WHERE Produto_Codigo = :pProduto AND Pedido = :pPedido AND Numero = :pNumero');
           tSeriais.ParamByName('pProduto').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
           tSeriais.ParamByName('pPedido').AsInteger  := PedidosNumero.AsInteger;
           tSeriais.ParamByName('pNumero').AsString   := tPedido.FieldByName('Numero').AsString;
           tSeriais.Execute;
           ProdutosSeriais.Refresh;
           tPedido.Refresh;
           Grade.UnSelectAll;
           GradeSel.UnSelectAll;
           
           GroupBox1.Caption := 'Seriais disponíveis para faturamento ['+PoeZero(3, Dados.ProdutosSeriais.RecordCount)+']';
           GroupBox2.Caption := 'Seriais adicionado ao pedido ['+PoeZero(3, tPedido.RecordCount)+']';
      end;
end;

procedure TPedido_ItensOutrosSeriais.bAdicionarClick(Sender: TObject);
var
    i: integer;
begin
      // Marca o serial como utilizado.
      with Dados do begin
           if Grade.SelectedRows.Count > 0 then begin
              for i := 0 to Grade.SelectedRows.Count -1 do begin
                  Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));
                  // Marca o serial como utilizado.
                  ProdutosSeriais.Edit;
                                  ProdutosSeriaisPedido.Value := PedidosNumero.AsInteger;
                  ProdutosSeriais.Post;
              end;
           end else begin
              MessageDlg('Nenhum serial item selecionado para adicionar!', mtInformation, [mbOK], 0);
           end;
           
           tPedido.Refresh;
           ProdutosSeriais.Refresh;
           Grade.UnselectAll;
           GradeSel.UnselectAll;

           GroupBox1.Caption := 'Seriais disponíveis para faturamento ['+PoeZero(3, Dados.ProdutosSeriais.RecordCount)+']';
           GroupBox2.Caption := 'Seriais adicionado ao pedido ['+PoeZero(3, tPedido.RecordCount)+']';
      end;
end;

procedure TPedido_ItensOutrosSeriais.GradeSelDragOver(Sender,Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

procedure TPedido_ItensOutrosSeriais.GradeMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      Grade.BeginDrag(True);
end;

procedure TPedido_ItensOutrosSeriais.GradeDragOver(Sender, Source: TObject;X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
      Accept := Source is TRxDBGrid;
end;

procedure TPedido_ItensOutrosSeriais.GradeDragDrop(Sender, Source: TObject;X, Y: Integer);
begin
      bRemItem.Click;
end;

procedure TPedido_ItensOutrosSeriais.GradeSelDragDrop(Sender,Source: TObject; X, Y: Integer);
begin
      bAdicionar.Click;
end;

end.
