unit frmPedido_ItensOutrosRateioLucro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Mask,
   RxCurrEdit, MemDS, RxToolEdit;

type
  TPedido_ItensOutrosRateioValor = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    StaticText1: TStaticText;
    cRateio: TCurrencyEdit;
    StaticText2: TStaticText;
    cTotal: TCurrencyEdit;
    bOK: TButton;
    bCancela: TButton;
    tTotal: TMSQuery;
    StaticText3: TStaticText;
    cAdicao: TCurrencyEdit;
    procedure bCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_ItensOutrosRateioValor: TPedido_ItensOutrosRateioValor;

implementation

uses frmDados, frmPedido_Itens;

{$R *.dfm}

procedure TPedido_ItensOutrosRateioValor.bCancelaClick(Sender: TObject);
begin
     Close;
end;

procedure TPedido_ItensOutrosRateioValor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Pedido_ItensOutrosRateioValor.Release;
     Pedido_ItensOutrosRateioValor := nil;
end;

procedure TPedido_ItensOutrosRateioValor.FormShow(Sender: TObject);
begin
      With Dados do begin
           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT SUM(Valor_UnitarioReal * Quantidade) AS Total');
           tTotal.SQL.Add('      ,SUM(Lucro * Quantidade) AS Rateio');
           tTotal.SQL.Add('FROM   Adicoes');
           tTotal.SQL.Add('WHERE  DI = :pDI');
           tTotal.ParamByName('pDI').AsString := Pedido_Itens.cDI.Text;
           tTotal.Open;

           cRateio.Value := tTotal.FieldByName('Rateio').AsCurrency;
           cTotal.Value  := tTotal.FieldByName('Total').AsCurrency;
           cAdicao.Value := 0;
      End;
end;

procedure TPedido_ItensOutrosRateioValor.bOKClick(Sender: TObject);
begin
      With Dados do begin
           If cAdicao.AsInteger > 0 then begin
              tTotal.SQL.Clear;
              tTotal.SQL.Add('SELECT SUM(Valor_UnitarioReal * Quantidade) AS Total');
              tTotal.SQL.Add('      ,SUM(Lucro * Quantidade) AS Rateio');
              tTotal.SQL.Add('FROM   Adicoes');
              tTotal.SQL.Add('WHERE  DI = :pDI AND Adicao = :pAdicao');
              tTotal.ParamByName('pDI').AsString      := Pedido_Itens.cDI.Text;
              tTotal.ParamByName('pAdicao').AsInteger := cAdicao.AsInteger;
              tTotal.Open;

              //cRateio.Value := tTotal.FieldByName('Rateio').AsCurrency;
              cTotal.Value  := tTotal.FieldByName('Total').AsCurrency;
           End;

           tTotal.SQL.Clear;
           tTotal.SQL.Add('UPDATE Adicoes SET Lucro = (:pRateio / :pTotal) * Valor_UnitarioReal');
           tTotal.SQL.Add('WHERE DI = :pDI');
           If cAdicao.Value > 0 then begin
              tTotal.SQL.Add('AND Adicao = :pAdicao');
              tTotal.ParamByName('pAdicao').AsInteger := cAdicao.AsInteger;
           End;
           tTotal.ParamByName('pRateio').AsFloat := cRateio.Value;
           tTotal.ParamByName('pTotal').AsFloat  := cTotal.Value;
           tTotal.ParamByName('pDI').AsString    := Pedido_Itens.cDI.Text;
           tTotal.Execute;

           Adicoes.Refresh;
           Adicoes.First;

           Close;
      End;
end;

end.
