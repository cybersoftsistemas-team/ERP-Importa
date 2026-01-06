unit frmPedido_RepresentanteAltera;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, system.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, MemDS, DBAccess, MSAccess;

type
  TPedido_RepresentanteAltera = class(TForm)
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Navega: TDBNavigator;
    bSair: TButton;
    Panel1: TPanel;
    lNome: TStaticText;
    StaticText1: TStaticText;
    cQtde: TDBEdit;
    cValor: TDBEdit;
    tTemp: TMSQuery;
    lTitulo: TLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
    mPedido: string;
  end;

var
  Pedido_RepresentanteAltera: TPedido_RepresentanteAltera;

implementation

{$R *.dfm}

uses frmDados, frmPedido_RepresentantesSimp;

procedure TPedido_RepresentanteAltera.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedido_RepresentanteAltera.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      with Dados, PedidosRepresentantesItens do begin
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir este item do pedido?', mtConfirmation, [mbyes, mbno], 0) = mrno then Abort;
           end;
           if Button = nbPost then begin
              if MessageDlg('Deseja realmente salvar as modificações?', mtConfirmation, [mbyes, mbno], 0) = mrno then Abort;
           end;
      end;
end;

procedure TPedido_RepresentanteAltera.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
    i:integer;
begin
      Screen.Cursor := crSQLWait;
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         Panel1.Enabled := true;
         cQtde.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Panel1.Enabled := false;
      End;
      if (Button = nbPost) or (Button = nbDelete) then begin
         with Dados do begin
              with tTemp do begin
                   sql.Clear;
                   sql.Add('update PedidosRepresentantes set Total_Pedido = (select sum(Valor_Unitario * Quantidade) from PedidosRepresentantesItens pri where pri.Pedido = PedidosRepresentantes.Pedido and pri.Data = PedidosRepresentantes.Data)');
                   sql.Add('      ,Alterado = 1');
                   sql.Add('where Pedido = :pPed');
                   sql.Add('and   Data   = :pData');
                   parambyname('pPed').Value  := PedidosRepresentantesItens.FieldByName('Pedido').AsString;
                   parambyname('pData').value := PedidosRepresentantesItens.FieldByName('Data').value;
                   execute;
              end;
              PedidosRepresentantesItens.refresh;
         end;
      end;

      Screen.Cursor := crDefault;
end;

procedure TPedido_RepresentanteAltera.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Pedido_RepresentanteAltera.Release;
     Pedido_RepresentanteAltera := nil;
end;

procedure TPedido_RepresentanteAltera.FormShow(Sender: TObject);
begin
     with Dados, PedidosRepresentantesItens do begin
          sql.Clear;
          sql.Add('select *');
          sql.add('      ,Descricao_Mercadoria = (select substring(Descricao, 1, charindex(''<{'', Descricao)-1) from Produtos where Codigo = Codigo_Mercadoria)');
          sql.Add('      ,Estoque_Minimo       = (SELECT Estoque_Minimo FROM Produtos WHERE Codigo = Codigo_Mercadoria)');
          sql.Add('      ,Valor_Total          = Valor_Unitario * Quantidade');
          sql.add('from PedidosRepresentantesItens');
          sql.add('where Pedido = :pPedido');
          sql.add('order by Item');
          parambyname('pPedido').AsString := mPedido;
          open;
          lTitulo.Caption := 'ALTERAÇÃO DO PEDIDO ['+mPedido+']';
     end;
end;

end.
