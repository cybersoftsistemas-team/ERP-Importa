unit frmLogistica_ConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, Grids, DBGrids, RXDBCtrl, DB,
  DBAccess, MSAccess, Mask, DBCtrls, MemDS, RxCurrEdit, RxToolEdit;

type
  TLogistica_ConsultaProdutos = class(TForm)
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    bSair: TButton;
    StaticText18: TStaticText;
    cPesquisa: TEdit;
    Grade: TRxDBGrid;
    cEncontrados: TCurrencyEdit;
    StaticText1: TStaticText;
    tProdutos: TMSQuery;
    dstProdutos: TDataSource;
    tEstoque: TMSQuery;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    dstEstoque: TDataSource;
    cCodigo: TCurrencyEdit;
    cEstoque: TCurrencyEdit;
    StaticText4: TStaticText;
    cPrecoVenda: TCurrencyEdit;
    StaticText5: TStaticText;
    cPrecoEntrada: TCurrencyEdit;
    StaticText6: TStaticText;
    cVolumes: TCurrencyEdit;
    StaticText8: TStaticText;
    cQtdeVol: TCurrencyEdit;
    cUnidade: TEdit;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    cDataEntrada: TMaskEdit;
    cDataSaida: TMaskEdit;
    GroupBox5: TGroupBox;
    StaticText51: TStaticText;
    StaticText55: TStaticText;
    StaticText56: TStaticText;
    StaticText57: TStaticText;
    cArmazem: TCurrencyEdit;
    cRua: TCurrencyEdit;
    cPrateleira: TCurrencyEdit;
    cPosicao: TCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cPesquisaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure tProdutosAfterScroll(DataSet: TDataSet);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Logistica_ConsultaProdutos: TLogistica_ConsultaProdutos;

implementation

uses frmDados;

{$R *.dfm}

procedure TLogistica_ConsultaProdutos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TLogistica_ConsultaProdutos.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TLogistica_ConsultaProdutos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Logistica_ConsultaProdutos.Release;
      Logistica_ConsultaProdutos := nil;
end;

procedure TLogistica_ConsultaProdutos.cPesquisaChange(Sender: TObject);
begin
          Grade.DisableScroll;
          If tProdutos.Locate('Codigo', cPesquisa.Text, [loCaseInsensitive]) = False then begin
             If tProdutos.Locate('Codigo_Fabricante', cPesquisa.Text, [loCaseInsensitive]) = False then begin
                tProdutos.SQL.Clear;
                //tProdutos.SQL.Add('SELECT * FROM Produtos WHERE NCM <> '''' AND (Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
                tProdutos.SQL.Add('SELECT  Codigo');
                tProdutos.SQL.Add('       ,Codigo_Fabricante');
                tProdutos.SQL.Add('       ,NCM');
                tProdutos.SQL.Add('       ,Descricao');
                tProdutos.SQL.Add('       ,Valor_Entrada');
                tProdutos.SQL.Add('       ,Valor_Venda');
                tProdutos.SQL.Add('       ,Quantidade_Volumes');
                tProdutos.SQL.Add('       ,Unidade');
                tProdutos.SQL.Add('       ,Armazem_Nome');
                tProdutos.SQL.Add('       ,Armazem_Rua');
                tProdutos.SQL.Add('       ,Armazem_Prateleira');
                tProdutos.SQL.Add('       ,Armazem_Posicao');
                tProdutos.SQL.Add('FROM   Produtos');
                tProdutos.SQL.Add('WHERE  NCM <> '''' ');
                tProdutos.SQL.Add('  AND (Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
                tProdutos.Open;
             End;
             cEncontrados.Value := tProdutos.RecordCount;
          End;
          Grade.EnableScroll;
end;

procedure TLogistica_ConsultaProdutos.FormActivate(Sender: TObject);
begin
       With Dados do begin
            tProdutos.SQL.Clear;
            tProdutos.SQL.Add('SELECT  Codigo');
            tProdutos.SQL.Add('       ,Codigo_Fabricante');
            tProdutos.SQL.Add('       ,NCM');
            tProdutos.SQL.Add('       ,Descricao');
            tProdutos.SQL.Add('       ,Valor_Entrada');
            tProdutos.SQL.Add('       ,Valor_Venda');
            tProdutos.SQL.Add('       ,Quantidade_Volumes');
            tProdutos.SQL.Add('       ,Unidade');
            tProdutos.SQL.Add('       ,Armazem_Nome');
            tProdutos.SQL.Add('       ,Armazem_Rua');
            tProdutos.SQL.Add('       ,Armazem_Prateleira');
            tProdutos.SQL.Add('       ,Armazem_Posicao');
            tProdutos.SQL.Add('FROM   Produtos');
            tProdutos.SQL.Add('WHERE  NCM <> '''' ');
            tProdutos.Open;

            cEncontrados.Value := tProdutos.RecordCount;
            cCodigo.Value      := tProdutos.FieldByName('Codigo').AsInteger;
            cArmazem.Text      := tProdutos.FieldByName('Armazem_Nome').AsString;
            cRua.Text          := tProdutos.FieldByName('Armazem_Rua').AsString;
            cPrateleira.Text   := tProdutos.FieldByName('Armazem_Prateleira').AsString;
            cPosicao.Text      := tProdutos.FieldByName('Armazem_Posicao').AsString;
       End;
end;

procedure TLogistica_ConsultaProdutos.cCodigoChange(Sender: TObject);
begin
      tEstoque.SQL.Clear;
      tEstoque.SQL.Add('SELECT ');
      tEstoque.SQL.Add('       Estoque_Disponivel = CAST(');
      tEstoque.SQL.Add('                                 (SELECT ISNULL(SUM(Quantidade), 0) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0)) +');
      tEstoque.SQL.Add('                                 (SELECT ISNULL(SUM(Quantidade), 0) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Estoque = 1)) +');
      tEstoque.SQL.Add('                                 (SELECT ISNULL(SUM(Quantidade_Entrada), 0) FROM ProdutosTransferencia WHERE(Produto_Entrada   = :pCodigo)) -');
      tEstoque.SQL.Add('                                 (SELECT ISNULL(SUM(Quantidade), 0) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(Nfe_Denegada, 0) = 0)) -');
      tEstoque.SQL.Add('                                 (SELECT ISNULL(SUM(Quantidade), 0) FROM ProdutosTransferencia WHERE(Produto_Saida     = :pCodigo))');
      tEstoque.SQL.Add('                            AS DECIMAL(14,3))');
      tEstoque.SQL.Add('       ,Ultima_Entrada    = CASE WHEN (SELECT MAX(Data) FROM NotasItens WHERE Codigo_Mercadoria = :pCodigo AND Saida_Entrada = 0 AND Cancelada <> 1) > (SELECT MAX(Data_Entrada) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = :pCodigo) THEN');
      tEstoque.SQL.Add('                                 (SELECT MAX(Data) FROM NotasItens WHERE Codigo_Mercadoria = :pCodigo AND Saida_Entrada = 0 AND Cancelada <> 1)');
      tEstoque.SQL.Add('                            ELSE');
      tEstoque.SQL.Add('                                 (SELECT MAX(Data_Entrada) FROM NotasTerceirosItens WHERE Codigo_Mercadoria = :pCodigo)');
      tEstoque.SQL.Add('                            END');
      tEstoque.SQL.Add('      ,Ultima_Venda       = (SELECT MAX(Data) FROM Notasitens WHERE Codigo_Mercadoria = :pCodigo AND Saida_Entrada = 1 AND Cancelada = 0 AND Nfe_Denegada = 0)');
      tEstoque.ParamByName('pCodigo').AsInteger := tProdutos.FieldByName('Codigo').AsInteger;
      tEstoque.Open;

      cEstoque.Value    := tEstoque.FieldByName('Estoque_Disponivel').AsFloat;
      cVolumes.Value    := tEstoque.FieldByName('Estoque_Disponivel').AsFloat / tProdutos.FieldByName('Quantidade_Volumes').AsFloat;
      cDataEntrada.Text := tEstoque.FieldByName('Ultima_Entrada').AsString;
      cDataSaida.Text   := tEstoque.FieldByName('Ultima_Venda').AsString;
end;

procedure TLogistica_ConsultaProdutos.tProdutosAfterScroll(DataSet: TDataSet);
begin
      cCodigo.Value       := tProdutos.FieldByName('Codigo').AsInteger;
      cPrecoEntrada.Value := tProdutos.FieldByName('Valor_Entrada').AsFloat;
      cPrecoVenda.Value   := tProdutos.FieldByName('Valor_Venda').AsFloat;
      cQtdeVol.Value      := tProdutos.FieldByName('Quantidade_Volumes').AsFloat;
      cUnidade.Text       := tProdutos.FieldByName('Unidade').AsString;
      cCodigo.Value       := tProdutos.FieldByName('Codigo').AsInteger;
      cArmazem.Text       := tProdutos.FieldByName('Armazem_Nome').AsString;
      cRua.Text           := tProdutos.FieldByName('Armazem_Rua').AsString;
      cPrateleira.Text    := tProdutos.FieldByName('Armazem_Prateleira').AsString;
      cPosicao.Text       := tProdutos.FieldByName('Armazem_Posicao').AsString;
end;

procedure TLogistica_ConsultaProdutos.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
    Icon: TBitmap;
begin
      With Dados do begin
           If Odd(tProdutos.RecNo) then
              Grade.Canvas.Brush.Color:= $00FFF4F4
           else
              Grade.Canvas.Brush.Color:= clWhite;

           TDbGrid(Sender).Canvas.font.Color:= clBlack;

           If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              //Brush.Color := $00FFAAB0;
              Brush.Color := clNavy;
              FillRect(Rect);
              Font.Style := [fsbold];
              //Font.Color := clBlack;
              Font.Color := clWhite;
           End;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
           
      End;
end;

end.
