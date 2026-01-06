unit frmPedido_CompraItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, RxToolEdit, RxDBCtrl, MemDS, DBAccess, MSAccess, Vcl.Buttons;

type
  TPedido_CompraItens = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    cDescricao: TDBEdit;
    cQuantidade: TDBEdit;
    cUnitario: TDBEdit;
    cIPI: TDBEdit;
    cICMS: TDBEdit;
    StaticText2: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText3: TStaticText;
    cUnidade: TDBLookupComboBox;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText8: TStaticText;
    cData: TDBDateEdit;
    tTemp: TMSQuery;
    bPesquisa: TSpeedButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_CompraItens: TPedido_CompraItens;

implementation

{$R *.dfm}

uses frmDMComercial, frmDados, frmPesquisaGerais;

procedure TPedido_CompraItens.bPesquisaClick(Sender: TObject);
begin
     PesquisaGerais         := TPesquisaGerais.Create(Self);
     PesquisaGerais.mTab    := 'Produtos';
     PesquisaGerais.mCampo  := 'Descricao';
     PesquisaGerais.mCampo2 := 'Descricao';
     PesquisaGerais.mBanco  := 'Empresa';
     PesquisaGerais.mTabela := dmComercial.PedidoCompraItens;
     PesquisaGerais.mScript := 'SELECT CAST(Codigo AS varchar(10)) AS Codigo, CAST(Descricao AS varchar(120)) AS Descricao FROM Produtos '+#13+
                                'WHERE Desativado <> 1 AND Descricao Like :pPesq';
     PesquisaGerais.Showmodal;
end;

procedure TPedido_CompraItens.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedido_CompraItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Pedido_CompraItens.release;
     Pedido_CompraItens := nil;
end;

procedure TPedido_CompraItens.FormShow(Sender: TObject);
begin
      with Dados, dmComercial do begin
           PedidoCompraItens.sql.clear;
           PedidoCompraItens.sql.add('select * from PedidoCompraItens where Pedido = :pPedido order by Item');
           PedidoCompraItens.ParamByName('pPedido').asInteger := PedidoCompra.FieldByName('Pedido').AsInteger;
           PedidoCompraItens.Open;

           Unidades.SQL.Clear;
           Unidades.SQL.Add('select * from UnidadeMedida order by Descricao');
           Unidades.Open;

           Produtos.sql.clear;
           Produtos.sql.add('select * from Produtos where Desativado <> 1 order by Descricao_Reduzida');
           Produtos.Open;
      end;
end;

procedure TPedido_CompraItens.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     with dmComercial do begin
          if Button = nbPost then begin
             if PedidoCompraItens.State = dsInsert then begin
                tTemp.sql.clear;
                tTemp.sql.add('select Registro = (select isnull(max(Registro), 0)+1 from PedidoCompraItens)');
                tTemp.sql.add('      ,Item     = (select isnull(max(Item), 0)+1     from PedidoCompraItens where Pedido = :pPed)');
                tTemp.ParamByName('pPed').AsInteger := PedidoCompra.FieldByName('Pedido').asinteger;
                tTemp.open;
                PedidoCompraItensRegistro.value := tTemp.FieldByName('Registro').asinteger;
                PedidoCompraItensItem.value     := tTemp.FieldByName('Item').asinteger;
                PedidoCompraItensPedido.value   := PedidoCompra.FieldByName('Pedido').asinteger;
             end;
          end;
     end;
end;

procedure TPedido_CompraItens.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
   i:integer;
begin
      Panel2.Enabled := (Button = nbInsert) or (Button = nbEdit);
      with Dados, dmComercial do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              cDescricao.SetFocus;
           end;
      end;
end;

end.
