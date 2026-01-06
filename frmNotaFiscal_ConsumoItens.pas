unit frmNotaFiscal_ConsumoItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Grids, DBGrids, RXDBCtrl, Mask, DBCtrls,
   Vcl.ExtCtrls, mdTabEnter, DB, MemDS, DBAccess, MSAccess, ATStandard;

type
  TNotaFiscal_ConsumoItens = class(TForm)
    RxDBGrid1: TRxDBGrid;
    GroupBox1: TGroupBox;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    TabEnter1: TTabEnter;
    cQuantidade: TDBEdit;
    cValor: TDBEdit;
    cProduto: TDBLookupComboBox;
    tRegistro: TMSQuery;
    tRegistroRegistro: TSmallintField;
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
    StaticText7: TStaticText;
    DBEdit4: TDBEdit;
    StaticText8: TStaticText;
    DBEdit5: TDBEdit;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cValorChange(Sender: TObject);
    procedure cAliquotaICMSExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cValorExit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_ConsumoItens: TNotaFiscal_ConsumoItens;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TNotaFiscal_ConsumoItens.FormShow(Sender: TObject);
begin
        Caption := 'Itens da Nota Fiscal de Consumo';
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
             Produtos.SQL.Add('SELECT * FROM Produtos');
             Produtos.Open;
        End;
end;

procedure TNotaFiscal_ConsumoItens.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_ConsumoItens.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then begin
            tRegistro.Open;
                      dmFiscal.NotasConsumoItensRegistro.Value := tRegistroRegistro.Value + 1;
            tRegistro.Close;
            dmFiscal.NotasConsumoItensNota.Value         := dmFiscal.NotasConsumoNota.Value;
            dmFiscal.NotasConsumoItensData_Emissao.Value := dmFiscal.NotasConsumoData_Emissao.Value;
            dmFiscal.NotasConsumoItensFornecedor.Value   := dmFiscal.NotasConsumoFornecedor.Value;
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

procedure TNotaFiscal_ConsumoItens.cValorChange(Sender: TObject);
begin
        If (dmFiscal.NotasConsumoItens.State = dsEdit) or (dmFiscal.NotasConsumoItens.State = dsInsert) then
           dmFiscal.NotasConsumoItensValor_BCICMS.Value := dmFiscal.NotasConsumoItensValor_Liquido.Value;
end;

procedure TNotaFiscal_ConsumoItens.cAliquotaICMSExit(Sender: TObject);
begin
        With dmFiscal do Begin
             If NotasConsumoItensAliquota_ICMS.Value <> 0 then begin
                NotasConsumoItensValor_BCICMS.Value := NotasConsumoItensValor_Liquido.Value;
                NotasConsumoItensValor_ICMS.Value   := NotasConsumoItensValor_BCICMS.Value * (NotasConsumoItensAliquota_ICMS.Value/100);
             end else begin
                NotasConsumoItensValor_BCICMS.Value := 0;
                NotasConsumoItensValor_ICMS.Value   := 0;
             End;
        End;
end;

procedure TNotaFiscal_ConsumoItens.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      If Button = nbPost then begin
         With dmFiscal, Dados do Begin
              NotasConsumoItensUnidade.Value := ProdutosUnidade.Value;
         End;
      End;
end;

procedure TNotaFiscal_ConsumoItens.cValorExit(Sender: TObject);
begin
         With dmFiscal do Begin
              NotasConsumoItensValor_Liquido.Value := NotasConsumoItensValor_Total.Value - NotasConsumoItensValor_Desconto.Value; 
         End;
end;

procedure TNotaFiscal_ConsumoItens.DBEdit5Exit(Sender: TObject);
begin
         With dmFiscal do Begin
              NotasConsumoItensValor_Liquido.Value := NotasConsumoItensValor_Total.Value - NotasConsumoItensValor_Desconto.Value;
         End;
end;

procedure TNotaFiscal_ConsumoItens.FormClose(Sender: TObject;var Action: TCloseAction);
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
                 NotasConsumoItens.Next;
           End;
           NotasConsumo.Post;
      End;
      Release;
      NotaFiscal_ConsumoItens := nil;
end;

end.
