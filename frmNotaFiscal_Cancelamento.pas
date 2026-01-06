unit frmNotaFiscal_Cancelamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, mdTabEnter, DB, MSAccess, MemDS, DBAccess, Mask, Vcl.StdCtrls,
  DrLabel, DBCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl,
  ATStandard, RXCtrls, FUNCOES, ImgList, ComCtrls, RxCurrEdit, RxToolEdit;

type
  TNotaFiscal_Cancelamento = class(TForm)
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    XPPanel1: TXPPanel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bVoltar: TButton;
    bCancelar: TButton;
    TabEnter1: TTabEnter;
    cTipo: TRadioGroup;
    ImageList1: TImageList;
    Label1: TLabel;
    cNota: TCurrencyEdit;
    cData: TDateEdit;
    bPesquisar: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cTipoClick(Sender: TObject);
    procedure bVoltarClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure bPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mCancela : Boolean;
  end;

var
  NotaFiscal_Cancelamento: TNotaFiscal_Cancelamento;

implementation

uses frmDados, frmDMFiscal, frmNotaFiscal_MotivoCancelamento,
  frmJanela_Processamento;

{$R *.dfm}

procedure TNotaFiscal_Cancelamento.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_Cancelamento.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      dmFiscal.Notas.Close;
      Release;
      NotaFiscal_Cancelamento := nil;
end;

procedure TNotaFiscal_Cancelamento.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With dmFiscal, Dados do begin
             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE Saida_Entrada = :pTipo ORDER BY Data_Emissao,Numero DESC');
             Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
             Notas.Open;
             bCancelar.Enabled := not dmFiscal.NotasCancelada.Value;
             bVoltar.Enabled   := dmFiscal.NotasCancelada.Value;
             If Notas.RecordCount = 0 then begin
                bCancelar.Enabled := False;
                bVoltar.Enabled   := False;
             End;
             Produtos.Close;
             Produtos.SQL.Clear;
             Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
             Produtos.Open;
        End;
        Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Cancelamento.bCancelarClick(Sender: TObject);
Var
    mProcesso : String;
begin
        Screen.Cursor := crSQLWait;
        With dmFiscal, Dados do begin
             If MessageDlg('Atenção!'#13#13+'Você esta cancelando a nota fiscal Nº '+PoeZero(6,NotasNumero.Value)+ ' de '+DatetoStr(NotasData_Emissao.Value)+#13+#13+'Todos os itens da Nota Fiscal voltarão a ficar disponiveis para faturamento.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                mCancela := False;
                NotaFiscal_MotivoCancelamento := TNotaFiscal_MotivoCancelamento.Create(Self);
                NotaFiscal_MotivoCancelamento.Caption := Caption;
                NotaFiscal_MotivoCancelamento.ShowModal;
                If mCancela = False then Abort;
                Notas.Edit;
                      NotasCancelada.Value := True;
                Notas.Post;

                // Marcando os itens da nota como cancelados.
                NotasItens.Close;
                NotasItens.SQL.Clear;
                NotasItens.SQL.Add('UPDATE NotasItens SET Cancelada = 1 WHERE (Nota = :pNota) AND (Data = :pData)');
                NotasItens.ParamByName('pNota').AsInteger := NotasNumero.Value;
                NotasItens.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
                NotasItens.Execute;
                NotasItens.SQL.Clear;
                NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData)');

                // Desbloqueando o processo se não houver mais notas validas.
                mProcesso := NotasProcesso.Value;
                Notas.Close;
                Notas.SQL.Clear;
                Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Processo = :pProcesso) AND (Cancelada <> 1)');
                Notas.ParamByName('pProcesso').AsString := mProcesso;
                Notas.Open;
                If Notas.RecordCount = 0 then begin
                   ProcessosDOC.Open;
                   ProcessosDOC.Locate('Processo', mProcesso, [loCaseInsensitive]);
                   ProcessosDOC.Edit;
                                ProcessosDOCBloqueado.Value := False;
                   ProcessosDOC.Post;
                   ProcessosDOC.Close;
                End;
                Notas.Close;
                Notas.SQL.Clear;
                Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE Saida_Entrada = :pTipo ORDER BY Data_Emissao,Numero DESC');
                Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
                Notas.Open;
             End;
             bCancelar.Enabled := not dmFiscal.NotasCancelada.Value;
             bVoltar.Enabled   := dmFiscal.NotasCancelada.Value;
        End;
        Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Cancelamento.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With dmFiscal do Begin
          If (Column.FieldName = 'Cancelada') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Cancelada').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Complementar') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Complementar').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Devolucao') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Notas.FieldByName('Devolucao').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TNotaFiscal_Cancelamento.cTipoClick(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With dmFiscal do begin
             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE Saida_Entrada = :pTipo ORDER BY Data_Emissao,Numero DESC');
             Notas.ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
             Notas.Open;
        End;
        Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Cancelamento.bVoltarClick(Sender: TObject);
Var
    mProcesso : String;
begin
        With Dados,dmFiscal do begin
             If MessageDlg('Atenção!'#13#13+'Isto irá desfazer o cancelamento da nota fiscal Nº '+PoeZero(6,NotasNumero.Value)+ ' de '+DatetoStr(NotasData_Emissao.Value)+#13+#13+'Todos os itens da Nota Fiscal serão baixados do estoque disponivel para faturamento.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                Screen.Cursor := crSQLWait;

                Notas.Edit;
                      NotasCancelada.Value := False;
                      NotasMotivo_Cancelamento.Clear;
                Notas.Post;
                mProcesso := NotasProcesso.Value;

                // Marcando os itens da nota como cancelados.
                NotasItens.Close;
                NotasItens.SQL.Clear;
                NotasItens.SQL.Add('UPDATE NotasItens SET Cancelada = 0 WHERE (Nota = :pNota) AND (Data = :pData)');
                NotasItens.ParamByName('pNota').AsInteger := NotasNumero.Value;
                NotasItens.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
                NotasItens.Execute;

                ProcessosDOC.Close;
                ProcessosDOC.SQL.Clear;
                ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
                ProcessosDOC.Open;
                ProcessosDOC.Locate('Processo' , NotasProcesso.Value, [loCaseInsensitive]);

                If Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO' then begin
                   Adicoes.Close;
                   Adicoes.SQL.Clear;
                   Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE DI = :pDI');
                   Adicoes.ParamByName('pDI').AsString := NotasDI.Value;
                   Adicoes.Open;
                end else begin
                   NotasTerceirosItens.Close;
                   NotasTerceirosItens.SQL.Clear;
                   NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Processo = :pProcesso)');
                   NotasTerceirosItens.ParamByName('pProcesso').AsString := NotasProcesso.Value;
                   NotasTerceirosItens.Open;
                End;

                TipoNota.Close;
                TipoNota.SQL.Clear;
                TipoNota.SQL.Add('SELECT * FROM TipoNota');
                TipoNota.Open;
                TipoNota.Locate('Codigo', NotasTipo_Nota.Value, [loCaseInsensitive]);

                NotasItens.Close;
                NotasItens.SQL.Clear;
                NotasItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData)');
                NotasItens.ParamByName('pNota').AsInteger := NotasNumero.Value;
                NotasItens.ParamByName('pData').AsDate    := NotasData_Emissao.Value;
                NotasItens.Open;
                NotasItens.First;

                Janela_Processamento := TJanela_Processamento.Create(Self);
                Janela_Processamento.Progresso.Position := 0;
                Janela_Processamento.Progresso.Max      := NotasItens.RecordCount;
                Janela_Processamento.lProcesso.Caption  := 'Disponibilizando o estoque com o itens da nota...';
                Janela_Processamento.Show;

                While not NotasItens.Eof do begin
                      If Trim(ProcessosDOCTipo.Value) = 'IMPORTAÇÃO' then begin
                         // Voltando os itens do estoque na "ADIÇÃO DO PROCESSO" para processos de importação.
                         If TipoNotaMovimenta_Estoque.Value = True then begin
                            If Adicoes.Locate('Codigo_Mercadoria', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                               Adicoes.Edit;
                                       If NotasSaida_Entrada.Value = 0 then
                                          AdicoesLancado_Entrada.Value := AdicoesLancado_Entrada.Value - NotasItensQuantidade.Value
                                       else
                                          AdicoesLancado_Saida.Value := AdicoesLancado_Saida.Value - NotasItensQuantidade.Value;
                                          If AdicoesLancado_Saida.Value < 0 then AdicoesLancado_Saida.Value := 0;
                               Adicoes.Post;
                            End;
                            // Atualizando o estoque se o tipo de nota movimenta o estoque.
                            If Produtos.Locate('Codigo', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                               Produtos.Edit;
                                       If NotasSaida_Entrada.Value = 0 then
                                          ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value + NotasItensQuantidade.Value
                                       else
                                          ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value - NotasItensQuantidade.Value;
                               Produtos.Post;
                            End;
                         End;
                      End else begin
                         // Baixando os itens do estoque nos "ITENS DA NOTA DE TERCEIROS" para processos de compra interna.
                         If TipoNotaMovimenta_Estoque.Value = True then begin
                            If NotasTerceirosItens.Locate('Codigo_Mercadoria', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                               NotasTerceirosItens.Edit;
                                          NotasTerceirosItensDisponivel.Value := NotasTerceirosItensDisponivel.Value - NotasItensQuantidade.Value;
                                          If NotasTerceirosItensDisponivel.Value < 0 then NotasTerceirosItensDisponivel.Value := 0;
                               NotasTerceirosItens.Post;
                            End;
                            // Atualizando o estoque se o tipo de nota movimenta o estoque.
                            If Produtos.Locate('Codigo', NotasItensCodigo_Mercadoria.Value, [loCaseInsensitive]) then begin
                               Produtos.Edit;
                                       If NotasSaida_Entrada.Value = 0 then
                                          ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value + NotasItensQuantidade.Value
                                       else
                                          ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value - NotasItensQuantidade.Value;
                               Produtos.Post;
                            End;
                         End;
                      End;
                      NotasItens.Next;
                      Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                      Application.ProcessMessages;
                End;
                // Bloqueando o processo.
                ProcessosDOC.Open;
                ProcessosDOC.Locate('Processo', mProcesso, [loCaseInsensitive]);
                ProcessosDOC.Edit;
                             ProcessosDOCBloqueado.Value := True;
                ProcessosDOC.Post;
                ProcessosDOC.Close;

                Screen.Cursor := crDefault;
             End;
             Janela_Processamento.Close;
             bCancelar.Enabled := not NotasCancelada.Value;
             bVoltar.Enabled   := NotasCancelada.Value;
        End;
end;

procedure TNotaFiscal_Cancelamento.GradeCellClick(Column: TColumn);
begin
       bCancelar.Enabled := not dmFiscal.NotasCancelada.Value;
       bVoltar.Enabled   := dmFiscal.NotasCancelada.Value;
       If dmFiscal.Notas.RecordCount = 0 then begin
          bCancelar.Enabled := False;
          bVoltar.Enabled   := False;
       End;
end;

procedure TNotaFiscal_Cancelamento.bPesquisarClick(Sender: TObject);
begin
        With dmFiscal do Begin
             If Notas.Locate('Numero; Data_Emissao', VarArrayOf([cNota.Value, cData.Date]), [loCaseInsensitive]) then begin
                Grade.SetFocus;
             end else begin
                If cTipo.ItemIndex = 0 then
                   ShowMessage('Nenhuma nota fiscal de entrada encontrada com o número ou a data informada.')
                else
                   ShowMessage('Nenhuma nota fiscal de saída encontrada com o número ou a data informada.');

                cNota.SetFocus;
             End;
        End;
end;

procedure TNotaFiscal_Cancelamento.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

end.
