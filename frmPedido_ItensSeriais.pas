unit frmPedido_ItensSeriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl, Funcoes;

type
  TPedido_ItensSeriais = class(TForm)
    Panel1: TPanel;
    bCancelar: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Button1: TButton;
    bOK: TButton;
    bProcesso: TButton;
    GroupBox1: TGroupBox;
    Grade: TRxDBGrid;
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bOKClick(Sender: TObject);
    procedure GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure GradeCellClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;       Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure bProcessoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mContador     : Integer;
    mContadorfinal: Integer;
    mSelecionou   : Boolean;
  end;

var
  Pedido_ItensSeriais: TPedido_ItensSeriais;

implementation

uses frmDados, frmPedido_Itens, frmPedido_ItensQuantidade;

{$R *.dfm}

procedure TPedido_ItensSeriais.bCancelarClick(Sender: TObject);
begin
       Grade.UnselectAll;
       Close;
end;

procedure TPedido_ItensSeriais.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Pedido_ItensSeriais.Release;
      Pedido_ItensSeriais := nil;
end;

procedure TPedido_ItensSeriais.Button1Click(Sender: TObject);
begin
     Grade.SelectAll;
end;

procedure TPedido_ItensSeriais.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With Dados do begin
          If (Column.FieldName = 'Entrada') then begin
              With Grade.Canvas do begin
                   Brush.Color := clBtnFace;
                   FillRect(Rect);
                   If (ProdutosSeriais.FieldByName('Entrada').Value = True) then ImageList1.GetBitmap(14, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
          End;
          If (Column.FieldName = 'Saida') then begin
              With Grade.Canvas do begin
                   Brush.Color := clBtnFace;
                   FillRect(Rect);
                   If (ProdutosSeriais.FieldByName('Saida').Value = True) then ImageList1.GetBitmap(14, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
          End;
     End;
end;

procedure TPedido_ItensSeriais.bOKClick(Sender: TObject);
var
    i: integer;
begin
      With Dados do begin
           If Grade.SelectedRows.Count > 0 then begin
              For i := 0 to Grade.SelectedRows.Count -1 do begin
                  Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[i]));

                  Pedido_Itens.mSeriais := Pedido_Itens.mSeriais + Trim(ProdutosSeriaisTipo.AsString) + ':' + Trim(ProdutosSeriaisNumero.AsString) + ' '+
                                           Trim(ProdutosSeriaisTipo2.AsString)+ ':' + Trim(ProdutosSeriaisNumero2.AsString)+ ' '+
                                           Trim(ProdutosSeriaisTipo3.AsString)+ ':' + Trim(ProdutosSeriaisNumero3.AsString)+ ' ';

                  If Trim(ProdutosSeriaisCor.AsString) <> '' then begin
                     Pedido_Itens.mSeriais := Pedido_Itens.mSeriais + ' COR: '+ ProdutosSeriaisCor_Nome.AsString;
                  End;
                  Pedido_Itens.mSeriais := Pedido_Itens.mSeriais + ' / ';

                  // Marca o serial como utilizado.
                  ProdutosSeriais.Edit;
                                  ProdutosSeriaisPedido.Value := PedidosNumero.AsInteger;
                  ProdutosSeriais.Post;
              End;

              If Grade.SelectedRows.Count > 0 then Pedido_ItensQuantidade.cQuantidade.Enabled     := false;
              If Grade.SelectedRows.Count > 0 then Pedido_ItensQuantidade.cPercentualQtde.Enabled := false;

              Pedido_ItensQuantidade.cQuantidade.Value := Grade.SelectedRows.Count;
           End;
      End;
      Grade.UnselectAll;

      Close;
end;

procedure TPedido_ItensSeriais.GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
       If (mSelecionou = true) and (Key = 16) and (Grade.DataSource.DataSet.RecNo > mContador) then begin
          mContadorfinal := Grade.DataSource.DataSet.RecNo;
          Grade.DataSource.DataSet.RecNo := mContador;
          Repeat
               Grade.SelectedRows.CurrentRowSelected := true;
               Grade.DataSource.DataSet.Next;
          until
               (Grade.DataSource.DataSet.RecNo = mContadorFinal) or (Dados.ProdutosSeriais.Eof);
       end;
       mContador      := 0;
       mContadorfinal := 0;
       mSelecionou    := false;
end;

procedure TPedido_ItensSeriais.GradeCellClick(Column: TColumn);
begin
      If (mSelecionou = false) then begin
          mContador := Grade.DataSource.DataSet.RecNo;
      End;
end;

procedure TPedido_ItensSeriais.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      If (ssShift in Shift) then begin
          mSelecionou := true;
      End;
end;

procedure TPedido_ItensSeriais.FormShow(Sender: TObject);
begin
     Grade.ToggleRowSelection;
     GroupBox1.Caption := 'Seriais disponíveis para faturamento ['+PoeZero(3, Dados.ProdutosSeriais.RecordCount)+']';     
end;

procedure TPedido_ItensSeriais.bProcessoClick(Sender: TObject);
begin
      With Dados do begin
           ProdutosSeriais.First;
           Grade.UnselectAll;
           mContadorfinal := Grade.DataSource.DataSet.RecNo;
           Grade.DataSource.DataSet.RecNo := 1;
           Repeat
                 If ProdutosSeriais.FieldByName('Processo').AsString = ProcessosDOCProcesso.AsString then Grade.SelectedRows.CurrentRowSelected := true;
                 Grade.DataSource.DataSet.Next;
           Until
               (Grade.DataSource.DataSet.RecNo = mContadorFinal) or (Dados.ProdutosSeriais.Eof);
      End;
end;

end.
