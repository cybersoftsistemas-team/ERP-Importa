unit frmNotaFiscal_ServicoItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Funcoes,
  DB, DBAccess, MSAccess, Grids, DBGrids, Mask, MemDS;

type
  TNotaFiscal_Servicoitens = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cQtde: TDBEdit;
    cUnitario: TDBEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cProduto: TDBLookupComboBox;
    StaticText4: TStaticText;
    cTotal: TDBEdit;
    tItem: TMSQuery;
    StaticText9: TStaticText;
    cProcesso: TDBLookupComboBox;
    GradeItens: TDBGrid;
    bVincular: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cUnitarioChange(Sender: TObject);
    procedure bVincularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_Servicoitens: TNotaFiscal_Servicoitens;

implementation

uses frmDados, frmDMFiscal, frmNotaFiscal_ServicoVinculo;

{$R *.dfm}

procedure TNotaFiscal_Servicoitens.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TNotaFiscal_Servicoitens.FormClose(Sender: TObject;var Action: TCloseAction);
var
    mPIS
   ,mCOFINS:real;
begin
     //Totalizando a nota fiscal.
     mPIS      := 0;
     mCOFINS   := 0;
     with dmFiscal, Dados do begin
          NotasTerceirosItens.First;
          while not NotasTerceirosItens.eof do begin
                mPIS      := mPIS      + NotasTerceirosItens.fieldbyname('Valor_PIS').AsCurrency;
                mCOFINS   := mCOFINS   + NotasTerceirosItens.fieldbyname('Valor_COFINS').AsCurrency;
                NotasTerceirosItens.next;
          end;
          NotasTerceiros.Edit;
                         NotasTerceiros.fieldbyname('Valor_PIS').value      := mPIS;
                         NotasTerceiros.fieldbyname('Valor_COFINS').value   := mCOFINS;
          NotasTerceiros.Post;
     end;

     LimpaMemoria;
     NotaFiscal_ServicoItens.Release;
     NotaFiscal_ServicoItens := nil;
end;

procedure TNotaFiscal_Servicoitens.FormShow(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           NotasTerceirosItens.SQL.Clear;
           NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn');
           NotasTerceirosItens.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
           NotasTerceirosItens.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
           NotasTerceirosItens.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.Value;
           NotasTerceirosItens.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT *');
           Produtos.SQL.Add('FROM   Produtos');
           Produtos.SQL.Add('WHERE  Servico = 1');
           Produtos.SQL.Add('AND    isnull(Desativado, 0) = 0');
           Produtos.SQL.Add('ORDER BY Descricao');
           Produtos.Open;
      end;
end;

procedure TNotaFiscal_Servicoitens.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
   i:Integer;
begin
      Screen.Cursor := crSQLWait;
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         if Button = nbInsert then begin
            dmFiscal.NotasTerceirosItensQuantidade.Value := 1;
         end;

         Panel2.Enabled := True;
         dmFiscal.NotasTerceirosItensProcesso.Value := dmFiscal.NotasTerceirosProcesso.Value;
         cProduto.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled := False;
      end;
      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Servicoitens.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
var
   mApuracaoPISCOFINS:boolean;
begin
     with Dados, dmFiscal do begin
          if (button = nbPost) then begin
             with tItem do begin
                  SQL.Clear;
                  SQL.Add('SELECT Tributavel FROM Cybersoft_Cadastros.dbo.CSTPIS WHERE Codigo = :pCod');
                  ParamByName('pCod').AsString := ProdutosCSTPIS_Entrada.AsString;
                  Open;
                  mApuracaoPISCOFINS := tItem.FieldByName('Tributavel').AsBoolean;

                  SQL.Clear;
                  SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item');
                  SQL.Add('FROM NotasTerceirosItens');
                  SQL.Add('WHERE Nota         = :pNota');
                  SQL.Add('  AND Data_Emissao = :pData');
                  SQL.Add('  AND Fornecedor   = :pForn');
                  SQL.Add('  AND (SELECT ISNULL(Servico, '''') FROM NotasTerceiros WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn) IS NOT NULL');
                  ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                  ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                  ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.Value;
                  Open;
             end;
             
             NotasTerceirosItensItem.Value                 := tItem.FieldByName('Item').AsInteger;
             NotasTerceirosItensNota.Value                 := NotasTerceirosNota.Value;
             NotasTerceirosItensData_Emissao.Value         := NotasTerceirosData_Emissao.Value;
             NotasTerceirosItensData_Entrada.Value         := NotasTerceirosData_Entrada.Value;
             NotasTerceirosItensFornecedor.Value           := NotasTerceirosFornecedor.Value;
             NotasTerceirosItensNatureza_Codigo.Value      := NotasTerceirosNatureza_Codigo.Value;
             NotasTerceirosItensDescricao_Mercadoria.Value := ProdutosDescricao.Value;
             NotasTerceirosItensUnidade_Medida.Value       := ProdutosUnidade.Value;
             NotasTerceirosItensNCM.Value                  := ProdutosNCM.Value;
             NotasTerceirosItensCodigoTrib_TabA.Value      := Copy(ReferenciasFiscaisCSTICMS.AsString,1,1);
             NotasTerceirosItensCodigoTrib_TabB.Value      := Copy(ReferenciasFiscaisCSTICMS.AsString,2,2);
             NotasTerceirosItensDisponivel.Value           := 0;
             NotasTerceirosItensValor_Desconto.Value       := 0;
             NotasTerceirosItensAliquota_ICMSOper.Value    := 0;
             NotasTerceirosItensValor_BCICMSOper.Value     := 0;
             NotasTerceirosItensValor_ICMSOper.Value       := 0;
             NotasTerceirosItensValor_IsentasICMS.Value    := 0;
             NotasTerceirosItensValor_OutrasICMS.Value     := 0;
             NotasTerceirosItensAliquota_ICMSSub.Value     := 0;
             NotasTerceirosItensValor_BCICMSSub.Value      := 0;
             NotasTerceirosItensValor_ICMSSub.Value        := 0;
             NotasTerceirosItensAliquota_IPI.Value         := 0;
             NotasTerceirosItensValor_IPI.Value            := 0;
             NotasTerceirosItensValor_BCIPI.Value          := 0;
             NotasTerceirosItensValor_OutrasIPI.Value      := 0;
             NotasTerceirosItensValor_IsentasIPI.Value     := 0;
             NotasTerceirosItensPeso_Liquido.Value         := 0;
             NotasTerceirosItensPeso_Bruto.Value           := 0;
             NotasTerceirosItensTipo.Value                 := 'NF';
             NotasTerceirosItensValor_BCPIS.Value          := NotasTerceirosItensValor_Liquido.Value;
             NotasTerceirosItensValor_BCCOFINS.Value       := NotasTerceirosItensValor_Liquido.Value;
             NotasTerceirosItensAliquota_PIS.Value         := ProdutosAliquota_PIS.AsFloat;
             NotasTerceirosItensValor_PIS.Value            := NotasTerceirosItensValor_Liquido.Value * (ProdutosAliquota_PIS.Value/100);
             NotasTerceirosItensAliquota_COFINS.Value      := ProdutosAliquota_COFINS.AsFloat;
             NotasTerceirosItensValor_COFINS.Value         := NotasTerceirosItensValor_Liquido.Value * (ProdutosAliquota_COFINS.Value/100);
             NotasTerceirosItensCST_PIS.Value              := ProdutosCSTPIS_Entrada.AsString;
             NotasTerceirosItensCST_COFINS.Value           := ProdutosCSTCOFINS_Entrada.AsString;
             NotasTerceirosItensApuracao_PISCOFINS.Value   := mApuracaoPISCOFINS;
             NotasTerceirosItensConsumo_Energia.Value      := 0;
             NotasTerceirosItensCIAP_BCICMS.Value          := 0;
             NotasTerceirosItensCIAP_AliquotaICMS.Value    := 0;
             NotasTerceirosItensCIAP_ValorICMS.Value       := 0;
             NotasTerceirosItensCIAP_Parcela.Value         := 0;
             NotasTerceirosItensCST_IPI.Value              := ReferenciasFiscaisCSTIPI.AsString;
             NotasTerceirosItensNota_Referencia.Value      := 0;
             NotasTerceirosItensMovimenta_Estoque.Value    := false;
             NotasTerceirosItensMovimenta_Inventario.Value := false;
             NotasTerceirosItensInventario_Terceiros.Value := false;
             NotasTerceirosItensReferencia_Fiscal.Value    := NotasTerceirosReferencia_Fiscal.Value;
          end;
     end;
end;

procedure TNotaFiscal_Servicoitens.bVincularClick(Sender: TObject);
begin
     NotaFiscal_ServicoVinculo := TNotaFiscal_ServicoVinculo.create(self);
     NotaFiscal_ServicoVinculo.caption := caption;
     NotaFiscal_ServicoVinculo.showmodal;
end;

procedure TNotaFiscal_Servicoitens.cUnitarioChange(Sender: TObject);
begin
     with dmFiscal do begin
          if (NotasTerceirosItens.state = dsInsert) or (NotasTerceirosItens.state = dsEdit) then begin
             NotasTerceirosItensValor_Liquido.Value := NotasTerceirosItensValor_Unitario.Value * NotasTerceirosItensQuantidade.Value;
          end;   
     end;
end;



end.
