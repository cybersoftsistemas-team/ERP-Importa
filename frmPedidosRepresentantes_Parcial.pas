unit frmPedidosRepresentantes_Parcial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, RxDBCtrl, MemDS, DBAccess, MSAccess, Vcl.Mask, RxToolEdit, RxCurrEdit, system.UITypes, Vcl.Menus;

type
  TPedidosRepresentantes_Parcial = class(TForm)
    Panel2: TPanel;
    bSair: TButton;
    bLiberar: TButton;
    Grade: TDBGrid;
    tItens: TMSQuery;
    dstItens: TDataSource;
    tItensItem: TSmallintField;
    tItensCodigo_Mercadoria: TIntegerField;
    tItensDescricao: TStringField;
    tItensQuantidade: TFloatField;
    tItensValor_Unitario: TCurrencyField;
    Panel1: TPanel;
    bAplicar: TButton;
    cPerc: TCurrencyEdit;
    Label1: TLabel;
    tItensValor_Total: TFloatField;
    Label2: TLabel;
    cValor: TCurrencyEdit;
    Label3: TLabel;
    cTotal: TCurrencyEdit;
    tCopia: TMSQuery;
    Label4: TLabel;
    cPedido: TEdit;
    tTmp: TMSQuery;
    tTmp2: TMSQuery;
    tItensSaldo: TFloatField;
    tItensPedido: TStringField;
    tItensQtde_Parcial: TFloatField;
    Label5: TLabel;
    cQtde: TCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bAplicarClick(Sender: TObject);
    procedure GradeColExit(Sender: TObject);
    procedure cPercExit(Sender: TObject);
    procedure cValorExit(Sender: TObject);
    procedure bLiberarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PedidosRepresentantes_Parcial: TPedidosRepresentantes_Parcial;

implementation

{$R *.dfm}

uses frmDados, frmFinanceiro_PedidosRepresentantes, Funcoes;

procedure TPedidosRepresentantes_Parcial.bLiberarClick(Sender: TObject);
var
   i:integer;
   p
  ,mped:string;
begin
     // Verifica se tem itens com quantidade informada.
     with tItens do begin 
          first;
          i := 0;
          while not eof do begin
                if fieldbyname('Qtde_Parcial').AsFloat > 0 then inc(i);
                next;
          end;
          first;
          if i = 0 then begin
             messageDlg('Nenhuma quantidade informada para gerar o pedido!'+#13+#13+'Pedido não será gerado.', mtinformation, [mbok], 0);
             Abort;
          end;
     end;
     if MessageDlg('Deseja realmente libera o pedido?', mtConfirmation, [mbYes,mbno], 0) = mrno then begin
        Abort;
     end;
     // Duplica a capa do pedido.
     with tCopia do begin
          sql.Clear;
          sql.Add('select * from PedidosRepresentantes where Pedido = :pPed');
          parambyname('pPed').Value := cPedido.Text;
          open;
     end;
     with tTmp do begin
          sql.Clear;
          sql.Add('select * from PedidosRepresentantes where Registro = (select isnull(max(Registro), 0)+1 from PedidosRepresentantes)');
          open;
          Append;
               for i := 0 to pred(tCopia.FieldCount) do begin
                   Fields[i].Value := tCopia.Fields[i].Value;
               end;
               for i := 65 to 90 do begin
                   p := chr(i);
                   with tTmp2 do begin
                        sql.Clear;
                        sql.Add('select count(*) as qtde from PedidosRepresentantes where Pedido_Pai = :pPed and Parcial = :pParc');
                        parambyname('pPed').value  := cPedido.text;
                        parambyname('pParc').value := p;
                        open;
                        if fieldbyname('Qtde').AsInteger = 0 then break;
                   end;
               end;
               with tTmp2 do begin
                    sql.Clear;
                    sql.Add('select Reg = isnull(max(Registro), 0)+1');
                    sql.Add('      ,Ped = isnull(max(cast(substring(Pedido, 2, len(Pedido)-1) as int)), 0)+1');
                    sql.add('from PedidosRepresentantes');
                    open;
               end;
               mPed := copy(cPedido.text, 1, 1)+tTmp2.FieldByName('Ped').asstring;
               fieldbyName('Registro').Value   := tTmp2.FieldByName('Reg').AsInteger;
               fieldbyName('Pedido').Value     := mPed;
               fieldbyName('Pedido_Pai').Value := cPedido.Text;
               fieldbyName('Parcial').Value    := p;
               fieldbyName('Local').Value      := 1;
               fieldbyName('Observacao').Value := 'PEDIDO PARCIAL A PARTIR DO PEDIDO PAI: '+cPedido.Text;
          Post;
     end;
     // Duplica os itens do pedido.
     with tCopia do begin
          sql.Clear;
          sql.Add('select * from PedidosRepresentantesItens  where Pedido = :pPed');
          parambyname('pPed').Value := cPedido.Text;
          open;
     end;
     with Dados do begin
          with tTmp do begin
               sql.Clear;
               sql.Add('select * ');
               sql.add('from PedidosRepresentantesitens');
               sql.add('where Pedido = :pPed');
               sql.add('and Item = isnull((select max(Item) from PedidosRepresentantesItens where Pedido = :pPed), 0)+1');
               parambyname('pPed').Value := cPedido.Text;
               open;
               while not tCopia.eof do begin
                     tItens.Locate('Item', fieldbyname('Item').asinteger, [loCaseInsensitive]);
                     if titens.fieldbyname('Qtde_Parcial').asfloat > 0 then begin
                        Append;
                             for i := 0 to pred(tCopia.FieldCount) do begin
                                 Fields[i].value := tCopia.Fields[i].value;
                             end;
                             fieldbyName('Pedido').Value              := mPed;
                             fieldbyName('Pedido_Pai').Value          := cPedido.Text;
                             fieldbyName('Quantidade').Value          := tItens.fieldbyname('Qtde_Parcial').value;
                             fieldbyName('Quantidade_Original').Value := tItens.fieldbyname('Qtde_Parcial').value;
                        post;
                     end;
                     tCopia.next;
               end;
          end;
          // Totalizando o Pedido filho.
          with tTmp do begin
               sql.Clear;
               sql.Add('update PedidosRepresentantes set Total_Pedido         = (select sum(Valor_Unitario * Quantidade) from PedidosRepresentantesItens where Pedido = :pPed)');
               sql.Add('                                ,Total_PedidoOriginal = (select sum(Valor_Unitario * Quantidade) from PedidosRepresentantesItens where Pedido = :pPed)');
               sql.add('where Pedido = :pPed');
               parambyname('pPed').Value := mPed;
               execute;
          end;
          // Totalizando o Pedido PAI.
          with tTmp do begin
               sql.Clear;
               sql.Add('update PedidosRepresentantesitens set Quantidade = Quantidade - :pParcial');
               sql.add('where Pedido = :pPed');
               parambyname('pPed').Value     := cPedido.Text;
               parambyname('pParcial').Value := tItens.fieldbyname('Qtde_Parcial').value;
               execute;
               sql.Clear;
               sql.Add('update PedidosRepresentantes set Total_Pedido = (select sum(Valor_Unitario * Quantidade) from PedidosRepresentantesItens where Pedido = :pPed)');
               sql.add('where Pedido = :pPed');
               parambyname('pPed').Value     := cPedido.Text;
               execute;
          end;
     end;
     bSairClick(self)
end;

procedure TPedidosRepresentantes_Parcial.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedidosRepresentantes_Parcial.cPercExit(Sender: TObject);
begin
     cValor.Value := iif(cPerc.Value > 0, 0, cValor.Value);
end;

procedure TPedidosRepresentantes_Parcial.cValorExit(Sender: TObject);
begin
     cPerc.Value := iif(cValor.Value > 0, 0, cPerc.Value);
end;

procedure TPedidosRepresentantes_Parcial.bAplicarClick(Sender: TObject);
begin
     with tItens do begin
          sql.clear;
          sql.add('select Pedido');
          sql.add('      ,Item');
          sql.add('      ,Codigo_Mercadoria');
          sql.add('      ,Descricao = (select Descricao from Produtos prd where prd.Codigo = pri.Codigo_Mercadoria)');
          sql.add('      ,Valor_Unitario');
          sql.Add('      ,Valor_Total = Valor_Unitario * Quantidade');
          sql.add('      ,Quantidade');
          sql.add('      ,Saldo = Quantidade - isnull((select sum(Quantidade) from PedidosRepresentantesItens ite where ite.Pedido_Pai = pri.Pedido and ite.Codigo_Mercadoria = pri.Codigo_Mercadoria and ite.Item = pri.Item), 0)');
          sql.add('      ,Qtde_Parcial = cast(0 as float)');
          sql.add('into #temp');
          sql.add('from PedidosRepresentantesItens pri');
          sql.add('where pri.Pedido = :pPedido');
          if cPerc.Value > 0 then begin
             sql.add('update #temp set Qtde_Parcial = (:pPerc*Saldo)/100');
             parambyname('pPerc').value := cPerc.Value;
          end;
          if cValor.Value > 0  then begin
             sql.add('update #temp set Qtde_Parcial = :pValor / Valor_Unitario');
             parambyname('pValor').value := cValor.Value;
          end;
          if cQtde.Value > 0 then begin
             sql.add('update #temp set Qtde_Parcial = :pQtde');
             parambyname('pQtde').value := cQtde.Value;
          end;
          sql.add('select * from #temp order by Item');
          parambyname('pPedido').value := Financeiro_PedidosRepresentantes.PedidosRep.fieldbyname('Pedido').asstring;
          //sql.savetofile('c:\temp\Pedidos_Representantes_Itens_Parcial.sql');
          open;
     end;
end;

procedure TPedidosRepresentantes_Parcial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      PedidosRepresentantes_Parcial.Release;
      PedidosRepresentantes_Parcial := nil;
end;

procedure TPedidosRepresentantes_Parcial.FormShow(Sender: TObject);
begin
     cPedido.text := Financeiro_PedidosRepresentantes.PedidosRep.fieldbyname('Pedido').asstring;
     cTotal.Value := Financeiro_PedidosRepresentantes.PedidosRep.fieldbyname('Total_Pedido').ascurrency;
     bAplicarClick(self);
end;

procedure TPedidosRepresentantes_Parcial.GradeColExit(Sender: TObject);
begin
     with tItens do begin
          if fieldbyname('Qtde_Parcial').asfloat > fieldbyname('Quantidade').asfloat then begin
             MessageDlg('Quantidade "Liberada" não pode ser maior que a quantidade "Pedida"!', mterror, [mbok], 0);
             Abort;
          end;
     end;
end;


end.
