unit frmNotaFiscal_MercadoInternoItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, MemDS, DBAccess, MSAccess, mdTabEnter, DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Mask, Grids, DBGrids, RXDBCtrl, FUNCOES;

type
  TNotaFiscal_MercadoInternoItens = class(TForm)
    RxDBGrid1: TRxDBGrid;
    GroupBox1: TGroupBox;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cQuantidade: TDBEdit;
    cValorTotal: TDBEdit;
    cProduto: TDBLookupComboBox;
    StaticText7: TStaticText;
    DBEdit4: TDBEdit;
    StaticText8: TStaticText;
    cDesconto: TDBEdit;
    StaticText1: TStaticText;
    cLiquido: TDBEdit;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    TabEnter1: TTabEnter;
    tRegistro: TMSQuery;
    tRegistroRegistro: TSmallintField;
    GroupBox2: TGroupBox;
    StaticText14: TStaticText;
    DBEdit6: TDBEdit;
    StaticText15: TStaticText;
    DBEdit8: TDBEdit;
    StaticText9: TStaticText;
    cAliquotaICMS: TDBEdit;
    StaticText3: TStaticText;
    DBEdit2: TDBEdit;
    StaticText6: TStaticText;
    DBEdit3: TDBEdit;
    GroupBox3: TGroupBox;
    StaticText10: TStaticText;
    DBEdit7: TDBEdit;
    StaticText11: TStaticText;
    DBEdit9: TDBEdit;
    StaticText12: TStaticText;
    DBEdit10: TDBEdit;
    GroupBox4: TGroupBox;
    StaticText17: TStaticText;
    DBEdit13: TDBEdit;
    StaticText18: TStaticText;
    DBEdit14: TDBEdit;
    StaticText19: TStaticText;
    DBEdit15: TDBEdit;
    StaticText20: TStaticText;
    DBEdit16: TDBEdit;
    StaticText21: TStaticText;
    DBEdit17: TDBEdit;
    cCodigo: TDBEdit;
    DBEdit11: TDBEdit;
    StaticText13: TStaticText;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cProdutoExit(Sender: TObject);
    procedure cDescontoExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cValorTotalExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_MercadoInternoItens: TNotaFiscal_MercadoInternoItens;

implementation

uses frmDMFiscal, frmDados;

{$R *.dfm}

procedure TNotaFiscal_MercadoInternoItens.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_MercadoInternoItens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      With dmFiscal do begin
           NotasConsumoItens.First;
           NotasConsumo.Edit;
           NotasConsumoValor_TotalProdutos.Value  := 0;
           NotasConsumoValor_TotalNota.Value      := 0;
           NotasConsumoValor_BCICMS.Value         := 0;
           NotasConsumoValor_ICMS.Value           := 0;
           NotasConsumoValor_IsentasICMS.Value    := 0;
           NotasConsumoValor_OutrasICMS.Value     := 0;
           NotasConsumoValor_BCICMSSub.Value      := 0;
           NotasConsumoValor_ICMSSub.Value        := 0;
           NotasConsumoValor_IsentasICMSSub.Value := 0;
           NotasConsumoValor_OutrasICMSSub.Value  := 0;
           NotasConsumoValor_BCIPI.Value          := 0;
           NotasConsumoValor_IPI.Value            := 0;
           NotasConsumoValor_IsentasIPI.Value     := 0;
           NotasConsumoValor_OutrasIPI.Value      := 0;
           NotasConsumoValor_TotalLiquido.Value   := 0;
           NotasConsumoValor_TotalDescontos.Value := 0;

           While not NotasConsumoItens.Eof do Begin
                 NotasConsumoValor_TotalProdutos.Value  := NotasConsumoValor_TotalProdutos.Value  + NotasConsumoItensValor_Total.Value;
                 NotasConsumoValor_TotalNota.Value      := NotasConsumoValor_TotalNota.Value      + NotasConsumoItensValor_Total.Value;
                 NotasConsumoValor_BCICMS.Value         := NotasConsumoValor_BCICMS.Value         + NotasConsumoItensValor_BCICMS.Value;
                 NotasConsumoValor_ICMS.Value           := NotasConsumoValor_ICMS.Value           + NotasConsumoItensValor_ICMS.Value;
                 NotasConsumoValor_IsentasICMS.Value    := NotasConsumoValor_IsentasICMS.Value    + NotasConsumoItensValor_IsentasICMS.Value;
                 NotasConsumoValor_OutrasICMS.Value     := NotasConsumoValor_OutrasICMS.Value     + NotasConsumoItensValor_OutrasICMS.Value;
                 NotasConsumoValor_TotalLiquido.Value   := NotasConsumoValor_TotalLiquido.Value   + NotasConsumoItensValor_Liquido.Value;
                 NotasConsumoValor_TotalDescontos.Value := NotasConsumoValor_TotalDescontos.Value + NotasConsumoItensValor_Desconto.Value;
                 NotasConsumoValor_BCICMSSub.Value      := NotasConsumoValor_BCICMSSub.Value      + NotasConsumoItensValor_BCICMSSub.Value;
                 NotasConsumoValor_ICMSSub.Value        := NotasConsumoValor_ICMSSub.Value        + NotasConsumoItensValor_ICMSSub.Value;
                 NotasConsumoValor_BCIPI.Value          := NotasConsumoValor_BCIPI.Value          + NotasConsumoItensValor_BCIPI.Value;
                 NotasConsumoValor_IPI.Value            := NotasConsumoValor_IPI.Value            + NotasConsumoItensValor_IPI.Value;
                 NotasConsumoValor_IsentasIPI.Value     := NotasConsumoValor_IsentasIPI.Value     + NotasConsumoItensValor_IsentasIPI.Value;
                 NotasConsumoValor_OutrasIPI.Value      := NotasConsumoValor_OutrasIPI.Value      + NotasConsumoItensValor_OutrasIPI.Value;
                 NotasConsumoItens.Next;
           End;
           NotasConsumo.Post;
      End;
      Release;
      NotaFiscal_MercadoInternoItens := nil;
end;

procedure TNotaFiscal_MercadoInternoItens.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        Caption := 'Itens da Nota Fiscal de Compra no Mercado Interno';
        With dmFiscal, Dados do begin
             NotasConsumoItens.SQL.Clear;
             NotasConsumoItens.SQL.Add('SELECT * FROM NotasConsumoItens WHERE (Fornecedor = :pFornecedor) AND (Data_Emissao = :pData) AND (Nota = :pNota)');
             NotasConsumoItens.ParamByName('pFornecedor').AsInteger := NotasConsumoFornecedor.AsInteger;
             NotasConsumoItens.ParamByName('pData').AsDate          := NotasConsumoData_Emissao.Value;
             NotasConsumoItens.ParamByName('pNota').AsInteger       := NotasConsumoNota.AsInteger;
             NotasConsumoItens.Open;

             tRegistro.SQL.Clear;
             tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM NotasConsumoItens WHERE (Fornecedor = :pFornecedor) AND (Data_Emissao = :pData) AND (Nota = :pNota)');
             tRegistro.ParamByName('pFornecedor').AsInteger := NotasConsumoFornecedor.AsInteger;
             tRegistro.ParamByName('pData').AsDate          := NotasConsumoData_Emissao.Value;
             tRegistro.ParamByName('pNota').AsInteger       := NotasConsumoNota.AsInteger;

             Produtos.SQL.Clear;
             Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Descricao_Reduzida');
             Produtos.Open;

             NCM.Open;
        End;
        Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_MercadoInternoItens.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then begin
            tRegistro.Open;
                      dmFiscal.NotasConsumoItensRegistro.Value := tRegistroRegistro.Value + 1;
            tRegistro.Close;
            dmFiscal.NotasConsumoItensNota.Value          := dmFiscal.NotasConsumoNota.Value;
            dmFiscal.NotasConsumoItensData_Emissao.Value  := dmFiscal.NotasConsumoData_Emissao.Value;
            dmFiscal.NotasConsumoItensFornecedor.Value    := dmFiscal.NotasConsumoFornecedor.Value;
         End;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         GroupBox1.Enabled := True;
         cProduto.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         dmFiscal.NotasConsumo.Refresh;
         GroupBox1.Enabled := False;
      End;
      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_MercadoInternoItens.cProdutoExit(Sender: TObject);
Var
    mUF : String;
begin
      With Dados, dmFiscal do begin
           If (NotasConsumoItens.State = dsEdit) or (NotasConsumoItens.State = dsInsert) then begin
              If NCM.Locate('NCM', ProdutosNCM.Value, [loCaseInsensitive]) = True then begin
                 mUF                        := Trim(FornecedoresEstado.Value)+'_ICMS';
                 NotasConsumoItensCST.Value := Trim(NCMCodigoTrib_TabA.Value)+Trim(NCMCodigoTrib_TabB.Value);
              end else begin
                 NotasConsumoItensCST.Clear;
              End;
           End;
      End;
end;

procedure TNotaFiscal_MercadoInternoItens.cDescontoExit(Sender: TObject);
begin
        If (dmFIscal.NotasConsumoItens.State = dsEdit) or (dmFIscal.NotasConsumoItens.State = dsInsert) then begin
            With dmFiscal do Begin
                 NotasConsumoItensValor_Liquido.Value := NotasConsumoItensValor_Total.Value - NotasConsumoItensValor_Desconto.Value;
            End;
        End;
end;

procedure TNotaFiscal_MercadoInternoItens.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      If Button = nbPost then begin
         With dmFiscal, Dados do Begin
              NotasConsumoItensUnidade.Value := ProdutosUnidade.Value;
         End;
      End;
end;

procedure TNotaFiscal_MercadoInternoItens.cValorTotalExit(Sender: TObject);
begin
        If (dmFIscal.NotasConsumoItens.State = dsEdit) or (dmFIscal.NotasConsumoItens.State = dsInsert) then begin
            With dmFiscal do Begin
                 NotasConsumoItensValor_Liquido.Value := NotasConsumoItensValor_Total.Value - NotasConsumoItensValor_Desconto.Value;
            End;
        End;    
end;


end.
