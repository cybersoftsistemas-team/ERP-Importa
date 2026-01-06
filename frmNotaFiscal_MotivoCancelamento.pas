unit frmNotaFiscal_MotivoCancelamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, Mask, Vcl.ComCtrls, DB;

type
  TNotaFiscal_MotivoCancelamento = class(TForm)
    Label1: TLabel;
    bOK: TButton;
    bCancelar: TButton;
    cMotivo: TDBEdit;
    Progresso: TProgressBar;
    lProgresso: TLabel;
    procedure bOKClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_MotivoCancelamento: TNotaFiscal_MotivoCancelamento;

implementation

uses frmNotaFiscal_Cancelamento, frmDMFiscal, frmDados;

{$R *.dfm}

procedure TNotaFiscal_MotivoCancelamento.bOKClick(Sender: TObject);
begin
        If dmFiscal.NotasMotivo_Cancelamento.Value <> '' then begin
           Screen.Cursor                    := crSQLWait;
           NotaFiscal_Cancelamento.mCancela := True;
           dmFiscal.Notas.Post;
           With Dados, dmFiscal do begin
                // Em caso de "IMPORTAÇÃO" pega os itens da "ADIÇÃO".
                Adicoes.Close;
                Adicoes.SQL.Clear;
                Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE (DI = :pDI)');
                Adicoes.ParamByName('pDI').AsString := NotasDI.Value;
                Adicoes.Open;

                // Em caso de "COMPRA INTERNA" pega os itens dos "ITENS DA NOTA FISCAL DE TERCEIROS".
                NotasTerceirosItens.Close;
                NotasTerceirosItens.SQL.Clear;
                NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso)');
                NotasTerceirosItens.ParamByName('pProcesso').AsString := NotasProcesso.Value;
                NotasTerceirosItens.Open;

                NotasItens.Close;
                NotasItens.SQL.Clear;
                NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData)');
                NotasItens.ParamByName('pNota').AsInteger := dmFiscal.NotasNumero.Value;
                NotasItens.ParamByName('pData').AsDate    := dmFiscal.NotasData_Emissao.Value;
                NotasItens.Open;
                NotasItens.First;

                Produtos.Close;
                Produtos.SQL.Clear;
                Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
                Produtos.Open;

                TipoNota.Open;
                TipoNota.SQL.Clear;
                TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE (Codigo = :pCodigo)');
                TipoNota.ParamByName('pCodigo').AsInteger := NotasTipo_Nota.Value;
                TipoNota.Open;

                ProcessosDOC.Close;
                ProcessosDOC.SQL.Clear;
                ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
                ProcessosDOC.Open;
                ProcessosDOC.Locate('Processo' , NotasProcesso.Value, [loCaseInsensitive]);

                Progresso.Max      := NotasItens.RecordCount;
                Progresso.Position := 0;
                lProgresso.Visible := True;
                Progresso.Visible  := True;

                If TipoNotaMovimenta_Estoque.Value = True then begin
                   While not NotasItens.Eof do begin
                         // Movimenta os itens da "ADIÇÃO" em casos de processos de IMPORTAÇÃO.
                         If Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO' then begin
                            If Adicoes.Locate('Codigo_Mercadoria', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                                Adicoes.Edit;
                                        If NotasSaida_Entrada.Value = 0 then
                                           AdicoesLancado_Entrada.Value := AdicoesLancado_Entrada.Value + NotasItensQuantidade.Value
                                        else
                                           AdicoesLancado_Saida.Value := AdicoesLancado_Saida.Value + NotasItensQuantidade.Value;
                                Adicoes.Post;
                            End;

                            // Atualizando o estoque no cadastro do produto.
                            If Produtos.Locate('Codigo', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                               Produtos.Edit;
                                       If NotasSaida_Entrada.Value = 0 then
                                          ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value - NotasItensQuantidade.Value
                                       else
                                          ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value + NotasItensQuantidade.Value;
                               Produtos.Post;
                            End;
                         End else begin
                            // Movimenta os itens da "NOTA FISCAL DE TERCEIROS" em casos de processos de COMPRA INTERNA.
                            If NotasTerceirosItens.Locate('Codigo_Mercadoria', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                               NotasTerceirosItens.Edit;
                                          NotasTerceirosItensDisponivel.Value := NotasTerceirosItensDisponivel.Value + NotasItensQuantidade.Value;
                               NotasTerceirosItens.Post;
                            End;

                            // Atualizando o estoque se o tipo de nota movimenta o estoque.
                            If Produtos.Locate('Codigo', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                               Produtos.Edit;
                                        ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value + NotasItensQuantidade.Value;
                               Produtos.Post;
                            End;
                         End;
                         NotasItens.Next;
                         Progresso.Position := Progresso.Position + 1;
                   End;
                End;
           End;
           Screen.Cursor := crDefault;
           Close;
        end else begin
           ShowMessage('É preciso informar o motivo pelo qual se deseja cancelar a Nota Fiscal!');
           cMotivo.SetFocus;
           Abort;
        End;
end;

procedure TNotaFiscal_MotivoCancelamento.bCancelarClick(Sender: TObject);
begin
        dmFiscal.Notas.Cancel;
        Close;
end;

procedure TNotaFiscal_MotivoCancelamento.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Release;
      NotaFiscal_MotivoCancelamento := nil;
end;

procedure TNotaFiscal_MotivoCancelamento.FormShow(Sender: TObject);
begin
        cMotivo.SetFocus;
        dmFiscal.Notas.Edit;
end;

end.
