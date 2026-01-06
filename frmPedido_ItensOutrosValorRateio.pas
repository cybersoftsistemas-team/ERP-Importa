unit frmPedido_ItensOutrosValorRateio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DB,
  DBAccess, MSAccess, Funcoes, Vcl.ExtCtrls, Mask, RxCurrEdit, MemDS, RxToolEdit, Math;

type
    TPedido_ItensOutrosValorRateio = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    StaticText1: TStaticText;
    cValorRateio: TCurrencyEdit;
    bOK: TButton;
    bCancela: TButton;
    StaticText2: TStaticText;
    cTotalProdutos: TCurrencyEdit;
    tReferencia: TMSQuery;
    cFator: TCheckBox;
    lFator: TLabel;
    Bevel1: TBevel;
    procedure bCancelaClick(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_ItensOutrosValorRateio: TPedido_ItensOutrosValorRateio;

implementation

uses frmDados, frmJanela_Processamento, frmPedido_ItensOutros;

{$R *.dfm}

procedure TPedido_ItensOutrosValorRateio.bCancelaClick(Sender: TObject);
begin
        Close;
end;

procedure TPedido_ItensOutrosValorRateio.bOKClick(Sender: TObject);
Var
    mRateio: Double;
begin
      With Dados do begin
           tReferencia.DisableControls;
           PedidosItens.DisableControls;

           Janela_Processamento                    := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := tReferencia.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Rateando o valor...Aguarde.';
           Janela_Processamento.Show;

           mRateio := cValorRateio.Value / cTotalProdutos.Value;
           with PedidosItens do begin
                First;
                while not eof do begin
                      Edit;
                         PedidosItensValor_Unitario.Value   := roundto(FieldByName('Valor_Unitario').asfloat * mRateio, -4);
                         PedidosItensValor_Total.Value      := PedidosItensValor_Unitario.Value * PedidosItensQuantidade.AsFloat;
                         PedidosItensValor_IPI.Value        := PedidosItensValor_Unitario.Value * PedidosItensAliquota_IPI.AsFloat;
                         PedidosItensTotal_IPI.Value        := Percentual(PedidosItensValor_Total.Value, PedidosItensAliquota_IPI.Value);
                         PedidosItensValor_BCICMSOper.Value := PedidosItensValor_Total.Value;
                         PedidosItensValor_ICMSOper.Value   := Percentual(PedidosItensValor_BCICMSOper.Value, PedidosItensAliquota_ICMSOper.Value);
                         Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.asinteger, [loCaseInsensitive]);
                         Pedido_ItensOutros.Recalcula;
                      Post;
                      Next;
                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Application.ProcessMessages;
                end;
           end;
           tReferencia.EnableControls;
           PedidosItens.EnableControls;
           Janela_Processamento.Close;
      End;

      Close;
end;

procedure TPedido_ItensOutrosValorRateio.FormShow(Sender: TObject);
begin
      with Dados do begin
           (*
           with tReferencia do begin
                SQL.Clear;
                SQL.Add('SELECT SUM(Valor_TotalProdutos) AS Valor_TotalProdutos');
                SQL.Add('FROM   NotasFiscais');
                SQL.Add('WHERE Processo = :pProcesso');
                SQL.Add('AND Saida_Entrada = 1');
                SQL.Add('AND Cancelada <> 1');
                SQL.Add('AND (SELECT Gerar_Financeiro FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1');
                ParamByName('pProcesso').AsString := PedidosProcesso.AsString;
                //sql.savetofile('c:\temp\Saidas_Outras_Rateio.sql');
                Open;
           end;
           *)
           with tReferencia do begin
                SQL.Clear;
                SQL.Add('select Valor_Total = sum(Valor_Total)');
                SQL.Add('from   PedidosItens');
                SQL.Add('where Pedido = :pPed');
                ParamByName('pPed').value := PedidosNumero.asinteger;
                //sql.savetofile('c:\temp\Saidas_Outras_Rateio.sql');
                Open;
           end;
           cTotalProdutos.Value := tReferencia.FieldByName('Valor_Total').AsCurrency;
           lFator.Caption       := 'Fator = '+FloattoStr(100-(PedidosItensAliquota_ICMSOper.AsFloat+PedidosItensAliquota_PISRed.AsFloat+PedidosItensAliquota_COFINSRed.AsFloat));
      end;
end;

procedure TPedido_ItensOutrosValorRateio.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Pedido_ItensOutrosValorRateio.Release;
     Pedido_ItensOutrosValorRateio := nil;     
end;

end.
