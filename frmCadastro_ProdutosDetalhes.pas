unit frmCadastro_ProdutosDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, DBCtrls, Vcl.StdCtrls, RxLookup,
  RXDBCtrl, Vcl.ExtCtrls, Mask, Grids, DBGrids, RxCurrEdit, MemDS, RxToolEdit, Vcl.Buttons, ClipBrd;

type
  TCadastro_ProdutosDetalhes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    RxDBGrid1: TDBGrid;
    Panel2: TPanel;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    StaticText11: TStaticText;
    StaticText8: TStaticText;
    cDescricao: TDBEdit;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    cQtdeEntrada: TDBEdit;
    cDetalhe: TRxDBLookupCombo;
    tRegistro: TMSQuery;
    tTotal: TMSQuery;
    cTotalEntradas: TCurrencyEdit;
    StaticText3: TStaticText;
    cTotalSaidas: TCurrencyEdit;
    cSaldo: TCurrencyEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    cQtdeSaida: TDBEdit;
    cNota: TRxDBLookupCombo;
    tTotalEntradas: TMSQuery;
    StaticText6: TStaticText;
    cLote: TDBEdit;
    StaticText7: TStaticText;
    cDataVal: TDBDateEdit;
    StaticText9: TStaticText;
    cDataFab: TDBDateEdit;
    tNotas: TMSQuery;
    dstNotas: TDataSource;
    tNotasNota: TIntegerField;
    tNotasData: TDateTimeField;
    tNotasQuantidade: TFloatField;
    tNotasProcesso: TStringField;
    tNotasNota_Item: TStringField;
    tNotasItem: TSmallintField;
    bPesqCla: TSpeedButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure Totaliza;
    procedure cNotaChange(Sender: TObject);
    procedure PegaNotas;
    procedure bPesqClaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_ProdutosDetalhes: TCadastro_ProdutosDetalhes;

implementation

uses frmDados, frmDMFiscal, frmPesquisaGerais;

{$R *.dfm}

procedure TCadastro_ProdutosDetalhes.bPesqClaClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Detalhes';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.Showmodal;

      cDetalhe.KeyValue := Clipboard.asText;
end;

procedure TCadastro_ProdutosDetalhes.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TCadastro_ProdutosDetalhes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_ProdutosDetalhes.Release;
      Cadastro_ProdutosDetalhes := nil;
end;

procedure TCadastro_ProdutosDetalhes.FormShow(Sender: TObject);
begin
     With Dados, dmFiscal do begin
          // Atualiza campo de saídas.
          ProdutosDetalhe.SQL.Clear;
          ProdutosDetalhe.SQL.Add('UPDATE ProdutosDetalhe SET Quantidade_Saida = ISNULL((');
          ProdutosDetalhe.SQL.Add('                                                      SELECT SUM(Quantidade)');
          ProdutosDetalhe.SQL.Add('                                                      FROM   NotasItensDetalhe NID');
          ProdutosDetalhe.SQL.Add('                                                      WHERE NID.Produto_Codigo    = ProdutosDetalhe.Produto_Codigo');
          ProdutosDetalhe.SQL.Add('                                                      AND   (SELECT DISTINCT Movimenta_Estoque FROM NotasItens NI WHERE NI.Nota = NID.Nota AND NI.Data = NID.Data_Emissao) = 1');
          ProdutosDetalhe.SQL.Add('                                                      AND   (SELECT Cancelada FROM NotasFiscais NF WHERE NF.Numero = NID.Nota AND NF.Data_Emissao = NID.Data_Emissao) <> 1');
          ProdutosDetalhe.SQL.Add('                                                      AND   NID.Saida_Entrada     = 1');
          ProdutosDetalhe.SQL.Add('                                                      AND   NID.Lote = ProdutosDetalhe.Lote');
          ProdutosDetalhe.SQL.Add('                                                     ), 0)');
          ProdutosDetalhe.SQL.Add('WHERE Produto_Codigo = :pCodigo');
          ProdutosDetalhe.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
          ProdutosDetalhe.Execute;

          ProdutosDetalhe.SQL.Clear;
          ProdutosDetalhe.SQL.Add('SELECT * FROM ProdutosDetalhe WHERE(Produto_Codigo = :pCodigo)');
          ProdutosDetalhe.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
          ProdutosDetalhe.Open;

          Cores.SQL.Clear;
          Cores.SQL.Add('SELECT * FROM Cores ORDER BY Descricao');
          Cores.Open;

          Detalhes.SQL.Clear;
          Detalhes.SQL.Add('SELECT * FROM Detalhes ORDER BY Descricao');
          Detalhes.Open;

          PegaNotas;

          Totaliza;
     End;
end;

procedure TCadastro_ProdutosDetalhes.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
     With Dados do begin
          Panel2.Enabled := (Button = nbInsert) or (Button = nbEdit);
          If (Button = nbInsert) or (Button = nbEdit) then begin
             PegaNotas;
             For i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             End;
             cDetalhe.SetFocus;
          End;
     End;

     If (Button = nbPost) or (Button = nbDelete) then Totaliza;
end;

procedure TCadastro_ProdutosDetalhes.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      ActiveControl := nil;
      With Dados, dmFiscal do begin
           If Button = nbPost then begin
              If (ProdutosDetalheDetalhe.AsInteger = 0) and (ProdutosDetalheLote.AsString = '') then begin
                 MessageDlg('Erro!'+#13+#13+'É necessário informar ou o "Detalhe" ou o "Número de lote".', mtError, [mbOK], 0);
                 cDetalhe.SetFocus;
                 Abort;
              End;
              If ProdutosDetalheNota_Entrada.AsInteger = 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Número da Nota Fiscal de Entrada é campo obrigatório.', mtError, [mbOK], 0);
                 cNota.SetFocus;
                 Abort;
              End;
              If ProdutosDetalheNota_Entrada.AsInteger <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Nota fiscal de entrada inválida.', mtError, [mbOK], 0);
                 cNota.SetFocus;
                 Abort;
              End;
              If ProdutosDetalheQuantidade_Entrada.AsFloat <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Quantidade de entrada inválida.', mtError, [mbOK], 0);
                 cQtdeEntrada.SetFocus;
                 Abort;
              End;

              tTotal.SQL.Clear;
              tTotal.SQL.Add('SELECT SUM(Quantidade_Entrada) AS Total FROM ProdutosDetalhe WHERE Produto_Codigo = :pCodigo AND Nota_Entrada = :pNota AND Item = :pItem');
              tTotal.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
              tTotal.ParamByName('pNota').AsInteger   := tNotasNota.AsInteger;
              tTotal.ParamByName('pItem').AsInteger   := tNotasItem.AsInteger;
              tTotal.Open;

              If (tTotal.FieldByName('Total').AsFloat+ProdutosDetalheQuantidade_Entrada.AsFloat) > tNotas.FieldByName('Quantidade').AsFloat then begin
                 MessageDlg('Erro!'+#13+#13+'Quantidade de entrada não pode ser maior que a quantidade da nota fiscal.', mtError, [mbOK], 0);
                 cQtdeEntrada.SetFocus;
                 Abort;
              End;

              If ProdutosDetalhe.State = dsInsert then begin
                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM ProdutosDetalhe');
                 tRegistro.Open;

                 ProdutosDetalheRegistro.Value       := tRegistro.FieldByName('Registro').AsInteger + 1;
                 ProdutosDetalheProduto_Codigo.Value := ProdutosCodigo.AsInteger;
                 ProdutosDetalheNota_Entrada.Value   := tNotas.FieldByName('Nota').AsInteger;
                 ProdutosDetalheItem.Value           := tNotas.FieldByName('Item').AsInteger;
              End;
           End;

           If Button = nbDelete then begin
              tTotal.SQL.Clear;
              tTotal.SQL.Add('SELECT COUNT(*) AS Qtde');
              tTotal.SQL.Add('FROM   NotasItensDetalhe');
              tTotal.SQL.Add('WHERE  Produto_Codigo = :pCodigo');
              tTotal.SQL.Add('AND    Saida_Entrada = 1');
              tTotal.SQL.Add('AND    Lote = :pLote');
              tTotal.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
              tTotal.ParamByName('pLote').AsString    := ProdutosDetalheLote.AsString;
              tTotal.Open;

              If tTotal.FieldByName('Qtde').AsInteger > 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Lote ja foi movimentado, não pode ser exclído!.', mtError, [mbOK], 0);
                 Abort;
              End;
           end;
      End;
end;

procedure TCadastro_ProdutosDetalhes.Totaliza;
begin
      With Dados do begin
           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT SUM(Quantidade_Entrada) AS Quantidade_Entrada,');
           tTotal.SQL.Add('       SUM(Quantidade_Saida)   AS Quantidade_Saida');
           tTotal.SQL.Add('FROM   ProdutosDetalhe');
           tTotal.SQL.Add('WHERE  (Produto_Codigo = :pCodigo)');
           tTotal.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
           tTotal.Open;
           cTotalEntradas.Value := tTotal.FieldByName('Quantidade_Entrada').AsFloat;
           cTotalSaidas.Value   := tTotal.FieldByName('Quantidade_Saida').AsFloat;
           cSaldo.Value         := tTotal.FieldByName('Quantidade_Entrada').AsFloat - tTotal.FieldByName('Quantidade_Saida').AsFloat;
      End;
end;

procedure TCadastro_ProdutosDetalhes.cNotaChange(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT SUM(Quantidade_Entrada) AS Total FROM ProdutosDetalhe WHERE Produto_Codigo = :pCodigo AND Nota_Entrada = :pNota AND Item = :pItem');
           tTotal.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
           tTotal.ParamByName('pNota').AsInteger   := tNotasNota.AsInteger;
           tTotal.ParamByName('pItem').AsInteger   := tNotasItem.AsInteger;
           tTotal.Open;

           ProdutosDetalheData_Entrada.Value       := tNotasData.Value;
           ProdutosDetalheProcesso.Value           := tNotasProcesso.Value;
           ProdutosDetalheQuantidade_Entrada.Value := tNotasQuantidade.Value - tTotal.FieldByName('Total').AsFloat;
      End;
end;

procedure TCadastro_ProdutosDetalhes.PegaNotas;
begin
     tNotas.SQL.Clear;
     tNotas.SQL.Add('SELECT Nota');
     tNotas.SQL.Add('      ,Data');
     tNotas.SQL.Add('      ,Quantidade');
     tNotas.SQL.Add('      ,Processo');
     tNotas.SQL.Add('      ,Nota_Item = CAST(NI.Nota AS VARCHAR(10))+CAST(NI.Item AS VARCHAR(10))');
     tNotas.SQL.Add('      ,Item');
     tNotas.SQL.Add('FROM   NotasItens NI');
     tNotas.SQL.Add('WHERE  NI.Saida_Entrada = 0');
     tNotas.SQL.Add('  AND  NI.Codigo_Mercadoria = :pCodigo');
     tNotas.SQL.Add('  AND  NI.Movimenta_Estoque = 1');
     tNotas.SQL.Add('  AND  NI.Cancelada <> 1');
     tNotas.SQL.Add('  AND  ISNULL(NI.Nfe_Denegada, 0) = 0');
     tNotas.SQL.Add('  AND  (SELECT ISNULL(SUM(Quantidade_Entrada),0) FROM ProdutosDetalhe PD WHERE PD.Produto_Codigo = NI.Codigo_Mercadoria AND PD.Item = NI.Item AND PD.Nota_Entrada = NI.Nota) < NI.Quantidade');
     tNotas.SQL.Add('UNION ALL');
     tNotas.SQL.Add('SELECT Nota');
     tNotas.SQL.Add('      ,Data_Entrada');
     tNotas.SQL.Add('      ,Quantidade');
     tNotas.SQL.Add('      ,Processo');
     tNotas.SQL.Add('      ,Nota_Item = CAST(NTI.Nota AS VARCHAR(10))+CAST(NTI.Item AS VARCHAR(10))');
     tNotas.SQL.Add('      ,Item');
     tNotas.SQL.Add('FROM   NotasTerceirosItens NTI');
     tNotas.SQL.Add('WHERE  NTI.Codigo_Mercadoria = :pCodigo');
     tNotas.SQL.Add('  AND  NTI.Movimenta_Estoque = 1');
     tNotas.SQL.Add('  AND  (SELECT ISNULL(SUM(Quantidade_Entrada),0) FROM ProdutosDetalhe PD WHERE PD.Produto_Codigo = NTI.Codigo_Mercadoria AND PD.Item = NTI.Item AND PD.Nota_Entrada = NTI.Nota) < NTI.Quantidade');
     tNotas.ParamByName('pCodigo').AsInteger := Dados.ProdutosCodigo.AsInteger;
     tNotas.SQL.Add('ORDER BY Data, nota, Item');
     //tNotas.SQL.SaveToFile('c:\temp\Detalhes_Produtos_Notas.SQL');
     tNotas.Open;
end;

end.
