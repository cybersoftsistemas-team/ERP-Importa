unit frmNotaFiscal_TerceirosItensDetalhe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXDBCtrl, RxLookup,
    DB, DBAccess, MSAccess, Funcoes, Mask, Grids,
  DBGrids, MemDS, RxToolEdit;

type
  TNotaFiscal_TerceirosItensDetalhe = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    cQuantidade: TDBEdit;
    cCodigo: TDBEdit;
    StaticText23: TStaticText;
    DBEdit15: TDBEdit;
    lDetalhe: TStaticText;
    cDetalhe: TRxDBLookupCombo;
    tRegistro: TMSQuery;
    cLote: TDBEdit;
    StaticText6: TStaticText;
    StaticText8: TStaticText;
    cDescricao: TDBEdit;
    StaticText9: TStaticText;
    cDataFab: TDBDateEdit;
    StaticText7: TStaticText;
    cDataVal: TDBDateEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_TerceirosItensDetalhe: TNotaFiscal_TerceirosItensDetalhe;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TNotaFiscal_TerceirosItensDetalhe.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TNotaFiscal_TerceirosItensDetalhe.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      with Dados, dmFiscal do begin
           // Totaliza a quantidade de todos os lotes
           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT SUM(Quantidade_Entrada) AS Quantidade FROM ProdutosDetalhe WHERE Nota_Entrada = :pNota AND Data_Entrada = :pData AND Produto_Codigo = :pProduto');
           tRegistro.ParamByName('pNota').AsInteger    := NotasTerceirosNota.AsInteger;
           tRegistro.ParamByName('pData').AsDate       := NotasTerceirosData_Emissao.AsDateTime;
           tRegistro.ParamByName('pProduto').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
           tRegistro.Open;
           
           NotasTerceirosItensQuantidade.Value := tRegistro.FieldByName('Quantidade').AsFloat;
      End;
      LimpaMemoria;
      NotaFiscal_TerceirosItensDetalhe.Release;
      NotaFiscal_TerceirosItensDetalhe := nil;
end;

procedure TNotaFiscal_TerceirosItensDetalhe.FormShow(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           ProdutosDetalhe.SQL.Clear;
           ProdutosDetalhe.SQL.Add('SELECT * FROM ProdutosDetalhe WHERE Nota_Entrada = :pNota AND Data_Entrada = :pData AND Produto_Codigo = :pProduto ORDER BY Registro');
           ProdutosDetalhe.ParamByName('pNota').AsInteger    := NotasTerceirosNota.AsInteger;
           ProdutosDetalhe.ParamByName('pData').AsDate       := NotasTerceirosData_Emissao.AsDateTime;
           ProdutosDetalhe.ParamByName('pProduto').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
           ProdutosDetalhe.Open;

           Detalhes.SQL.Clear;
           Detalhes.SQL.Add('SELECT * FROM Detalhes ORDER BY Descricao');
           Detalhes.Open;
      End;
end;

procedure TNotaFiscal_TerceirosItensDetalhe.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i: Integer;
begin
      If (Button = nbInsert) then begin
         with Dados, dmFiscal do begin
              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT MAX(Item)+1 AS Item FROM NotasTerceirosItens WHERE (Fornecedor = :pFornecedor) AND (Data_Emissao = :pData) AND (Nota = :pNota)');
              tRegistro.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
              tRegistro.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
              tRegistro.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
              tRegistro.Open;

              ProdutosDetalheNota_Entrada.Value   := NotasTerceirosNota.Value;
              ProdutosDetalheData_Entrada.Value   := NotasTerceirosData_Emissao.Value;
              ProdutosDetalheProduto_Codigo.Value := PedidosItensCodigo_Mercadoria.Value;
              NotasTerceirosItensItem.Value       := tRegistro.FieldByName('Item').Value;
         end;
      End;
      If (Button = nbInsert) or (Button = nbEdit) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := true;
         cDetalhe.SetFocus;
      end else begin
         Panel2.Enabled := false;
      End;
      If (Button = nbPost) or (Button = nbCancel) then begin
         Panel2.Enabled := false;
      End;
end;

procedure TNotaFiscal_TerceirosItensDetalhe.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      //ActiveControl := nil;
      with Dados, dmFiscal do begin
           if (Button = nbPost) and ((ProdutosDetalhe.State = dsInsert) or (ProdutosDetalhe.State = dsEdit)) then begin
              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosDetalhe');
              tRegistro.Open;

              ProdutosDetalheRegistro.Value         := tRegistro.FieldByName('Registro').AsInteger;
              ProdutosDetalheProduto_Codigo.Value   := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
              ProdutosDetalheQuantidade_Saida.Value := 0;
              ProdutosDetalheNota_Entrada.Value     := NotasTerceirosItensNota.AsInteger;
              ProdutosDetalheData_Entrada.Value     := NotasTerceirosItensData_Emissao.AsDateTime;
              ProdutosDetalheProcesso.Value         := NotasTerceirosItensProcesso.AsString;
              ProdutosDetalheNota_Item.Value        := Trim(NotasTerceirosItensNota.AsString)+Trim(NotasTerceirosItensItem.AsString);
              ProdutosDetalheItem.Value             := NotasTerceirosItensItem.Value;
          end;
      end;
end;

end.
