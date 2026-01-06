unit frmPedido_ItensOutrosQuantidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, math, Funcoes,
  Mask, DB, system.UITypes, RxCurrEdit, RxToolEdit;

type
  TPedido_ItensOutrosQuantidade = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lDI: TStaticText;
    cQuantidade: TCurrencyEdit;
    StaticText1: TStaticText;
    cValor: TCurrencyEdit;
    StaticText6: TStaticText;
    bOK: TButton;
    bCancela: TButton;
    cProduto: TCurrencyEdit;
    StaticText5: TStaticText;
    cDisponivel: TCurrencyEdit;
    procedure bCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNota:string;
  end;

var
  Pedido_ItensOutrosQuantidade: TPedido_ItensOutrosQuantidade;

implementation

uses frmDados, frmDMFiscal, frmPedidosOutra_TerceirosReferenciaItens,
     frmPedido_ItensOutros;

{$R *.dfm}

procedure TPedido_ItensOutrosQuantidade.bCancelaClick(Sender: TObject);
begin
      cProduto.Value    := 0;
      cDisponivel.value := 0;
      cQuantidade.Value := 0;
      cValor.Value      := 0;
      
      Close;
end;

procedure TPedido_ItensOutrosQuantidade.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Pedido_ItensOutrosQuantidade.Release;
      Pedido_ItensOutrosQuantidade := nil;
end;

procedure TPedido_ItensOutrosQuantidade.bOKClick(Sender: TObject);
begin
     With Dados do begin
          If RoundTo(cQuantidade.Value, -3) > RoundTo(cDisponivel.Value, -3) then begin
             MessageDlg('Quantidade informada indisponível para faturamento!'+#13+#13+'A Quantidade disponível é :'+cDisponivel.text, mtError, [mbOK], 0);
             cQuantidade.SetFocus;
             Abort;
          End;
          PedidosOutra_TerceirosReferenciaItens.mQtde  := cQuantidade.Value;
          PedidosOutra_TerceirosReferenciaItens.mValor := cValor.Value;

          Close;
     End;
end;

procedure TPedido_ItensOutrosQuantidade.FormShow(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           if mNota = 'Terc' then begin
              cProduto.Value    := NotasTerceirosItensCodigo_Mercadoria.Value;
              cQuantidade.Value := NotasTerceirosItensQuantidade.Value;
              cValor.Value      := NotasTerceirosItensValor_Unitario.Value;
           end else begin
              cProduto.Value    := NotasItensCodigo_Mercadoria.Value;
              cQuantidade.Value := NotasItensQuantidade.Value;
              cValor.Value      := dmFiscal.NotasItensValor_Unitario.Value;
           end;
           cDisponivel.value := EstoqueProduto(cProduto.AsInteger);

           if TipoNotaFormula_Produto.AsBoolean then begin
              Pedidositens.Append;
                           if mNota = 'Terc' then begin
                              PedidosItensCodigo_Mercadoria.Value := NotasTerceirosItensCodigo_Mercadoria.Value;
                           end else begin
                              PedidosItensCodigo_Mercadoria.Value := NotasItensCodigo_Mercadoria.Value;
                           end;
                           Pedido_ItensOutros.cCodigoExit(Self);
                           PedidosItensValor_Unitario.Value := Pedido_ItensOutros.CalculaMacro('Calculo_Mercadoria');
                           cValor.Value                     := PedidosItensValor_Unitario.value;
              PedidosItens.Cancel;
           end;   
      end;
end;

end.
