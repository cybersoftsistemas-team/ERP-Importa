unit frmNotaFiscal_Reimpressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, mdTabEnter, DB, MSAccess, MemDS, DBAccess,
  DBCtrls, Grids, DBGrids, RXDBCtrl, ATStandard, RXCtrls, Funcoes, MaskUtils;

type
  TNotaFiscal_Reimpressao = class(TForm)
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
    bImprimir: TButton;
    cInfComplementares: TDBMemo;
    tTabela: TMSTable;
    ImprimeBase: TMSQuery;
    ImprimeBaseReg: TSmallintField;
    ImprimeBaseTipoNota: TSmallintField;
    ImprimeBaseTabela: TStringField;
    ImprimeBaseCampo: TStringField;
    ImprimeBaseTamanho: TSmallintField;
    ImprimeBaseLinha: TSmallintField;
    ImprimeBaseColuna: TSmallintField;
    ImprimeBaseTipo: TStringField;
    ImprimeBaseLinha_Memo: TSmallintField;
    ImprimeBaseMascara: TStringField;
    ImprimeBaseDescricao: TStringField;
    ImprimeBaseImprimir: TBooleanField;
    ImprimeBaseValor_Padrao: TStringField;
    ImprimeBasePosicao: TStringField;
    ImprimeBaseSaida_Entrada: TSmallintField;
    ImprimeItens: TMSQuery;
    ImprimeItensReg: TSmallintField;
    ImprimeItensTipoNota: TSmallintField;
    ImprimeItensTabela: TStringField;
    ImprimeItensCampo: TStringField;
    ImprimeItensTamanho: TSmallintField;
    ImprimeItensLinha: TSmallintField;
    ImprimeItensColuna: TSmallintField;
    ImprimeItensTipo: TStringField;
    ImprimeItensLinha_Memo: TSmallintField;
    ImprimeItensMascara: TStringField;
    ImprimeItensDescricao: TStringField;
    ImprimeItensImprimir: TBooleanField;
    ImprimeItensValor_Padrao: TStringField;
    ImprimeItensPosicao: TStringField;
    ImprimeItensSaida_Entrada: TSmallintField;
    ImprimeTopo: TMSQuery;
    ImprimeTopoReg: TSmallintField;
    ImprimeTopoTipoNota: TSmallintField;
    ImprimeTopoTabela: TStringField;
    ImprimeTopoCampo: TStringField;
    ImprimeTopoTamanho: TSmallintField;
    ImprimeTopoLinha: TSmallintField;
    ImprimeTopoColuna: TSmallintField;
    ImprimeTopoTipo: TStringField;
    ImprimeTopoLinha_Memo: TSmallintField;
    ImprimeTopoMascara: TStringField;
    ImprimeTopoDescricao: TStringField;
    ImprimeTopoImprimir: TBooleanField;
    ImprimeTopoValor_Padrao: TStringField;
    ImprimeTopoPosicao: TStringField;
    ImprimeTopoSaida_Entrada: TSmallintField;
    DataSource1: TDataSource;
    TabEnter1: TTabEnter;
    cTipo: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cTipoClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ImprimirTopo;
    procedure ImprimirItens;
    procedure ImprimirBase(Quebra: Boolean);
    procedure FormCreate(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    mNomeArq    : String;
    Arquivo     : TextFile;
    mValor      : String;
    mTipo       : String;
    mMascara    : String;
    mLinha      : Integer;
    mDescricao  : String;
    mQtdeLinha  : Integer;
    mPosDesc    : Integer;
    mPagina     : Integer;
  end;

var
  NotaFiscal_Reimpressao: TNotaFiscal_Reimpressao;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento,
  frmImpressao_Visualizar;

{$R *.dfm}

procedure TNotaFiscal_Reimpressao.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
	With Dados, dmFiscal do begin
             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pSaida_Entrada) AND (Cancelada <> 1)');
             Notas.SQL.Add('ORDER BY Data_Emissao DESC');
             Notas.ParamByName('pSaida_Entrada').AsInteger := cTipo.ItemIndex;
             Notas.Open;

             Clientes.SQL.Clear;
             Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Codigo');
             Clientes.Open;

             Fornecedores.SQL.Clear;
             Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Codigo');
             Fornecedores.Open;
        End;
        Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Reimpressao.bSairClick(Sender: TObject);
begin
	Close;
end;

procedure TNotaFiscal_Reimpressao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      dmFiscal.Notas.Close;
      NotaFiscal_Reimpressao.Release;
      NotaFiscal_Reimpressao := nil;
end;

procedure TNotaFiscal_Reimpressao.cTipoClick(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
	With Dados, dmFiscal do begin
             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Saida_Entrada = :pSaida_Entrada) AND (Cancelada <> 1)');
             Notas.ParamByName('pSaida_Entrada').AsInteger := cTipo.ItemIndex;
             Notas.SQL.Add('ORDER BY Data_Emissao, Numero DESC');
             Notas.Open;

             If cTipo.ItemIndex = 0 then begin
                Grade.Columns[3].FieldName     := 'Fornecedor_Nome';
                Grade.Columns[3].Title.Caption := 'Fornecedor';
             end else begin
                Grade.Columns[3].FieldName     := 'Cliente_Nome';
                Grade.Columns[3].Title.Caption := 'Cliente';
             End;
        End;
        Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Reimpressao.bImprimirClick(Sender: TObject);
Var
    mSel : Integer;
begin
       ImprimeItens.SQL.Clear;
       ImprimeItens.SQL.Add('SELECT * FROM Impressao WHERE (Posicao = '+QuotedStr('C')+') and (TipoNota = :pTipoNota) and (Imprimir = 1) ORDER BY Linha,Coluna');
       ImprimeItens.ParamByName('pTipoNota').AsInteger := dmFiscal.NotasTipo_Nota.Value;
       ImprimeItens.Open;

       cInfComplementares.Height := 189;
       cInfComplementares.Width  := 481;

       Dados.TipoNota.SQL.Clear;
       Dados.TipoNota.SQL.Add('SELECT * FROM TipoNota WHERE (Saida_Entrada = :pSaida_Entrada) ORDER BY Codigo');
       Dados.TipoNota.ParamByName('pSaida_Entrada').AsInteger := cTipo.ItemIndex;
       Dados.TipoNota.Open;

       Dados.Configuracao.Open;

       Janela_Processamento := TJanela_Processamento.Create(Self);
       Janela_Processamento.Progresso.Max       := Grade.SelCount;
       Janela_Processamento.Progresso.Position  := 0;
       Janela_Processamento.Show;

       For mSel := 0 to Grade.SelectedRows.Count-1 do begin
           Janela_Processamento.lProcesso.Caption := 'Reimprimindo a Nota Fiscal:'+PoeZero(6,dmFiscal.NotasNumero.Value)+'   Formulário:001';
           Application.ProcessMessages;
           Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
           Dados.TipoNota.Locate('Codigo', dmFiscal.NotasTipo_Nota.Value, [loCaseInsensitive]);
           If cTipo.ItemIndex = 0 then
              mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF_ENTRADA'
           else
              mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF_SAIDA';

           mNomeArq := mNomeArq + PoeZero(6, dmFiscal.NotasNumero.Value)+'_F0001.TXT';
           AssignFile(Arquivo, mNomeArq);
           ReWrite(Arquivo);

           LinhaAtual  := 1;
           ColunaAtual := 0;

           ImprimirTopo;
           ImprimirItens;
           ImprimirBase(False);

           Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
           CloseFile(Arquivo);
           If Funcoes.Cancelado = True then begin
              ShowMessage('Operação cancelada pelo usúario!');
              Exit;
           End;
       End;
       Janela_Processamento.Close;
       Grade.GotoSelection(0);
       Grade.UnselectAll;
//       WinExec( PChar('NotePad.exe '+mNomeArq), SW_MAXIMIZE );

      // Gerando a visualização do arquivo.
      If cTipo.ItemIndex = 0 then
         mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF_ENTRADA'
      else
         mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF_SAIDA';
//      mNomeArq := mNomeArq + PoeZero(6, dmFiscal.NotasNumero.Value)+'_F001.TXT';
      Impressao_Visualizar := TImpressao_Visualizar.Create(Self);
      Impressao_Visualizar.mNome    := mNomeArq + PoeZero(6, dmFiscal.NotasNumero.Value)+'_F';
      Impressao_Visualizar.mArquivo := mNomeArq + PoeZero(6, dmFiscal.NotasNumero.Value)+'_F0001.TXT';
      If cTipo.ItemIndex = 0 then
         Impressao_Visualizar.mTitulo  := 'Nota Fiscal de Entrada'
      else
         Impressao_Visualizar.mTitulo  := 'Nota Fiscal de Saída';

      Impressao_Visualizar.mPaginas := mPagina;
      Impressao_Visualizar.mPag     := 1;
      Impressao_Visualizar.ShowModal;

end;
//
// Rotina de impressão do topo da nota fiscal.
//
procedure TNotaFiscal_Reimpressao.ImprimirTopo;
begin
     Write(Arquivo, #27, #67 , Char(Dados.TipoNotaLinhas.Value) );
     Write(Arquivo, #27, #103, Char(15));    // Pitch 15ppp
     ImprimeTopo.SQL.Clear;
     ImprimeTopo.SQL.Add('SELECT * FROM Impressao WHERE (TipoNota = :pTipoNota) and (Posicao = '+QuotedStr('T')+') and (Imprimir = 1) ORDER BY Linha,Coluna');
     ImprimeTopo.ParamByName('pTipoNota').AsInteger := dmFiscal.NotasTipo_Nota.Value;
     ImprimeTopo.Open;
     ImprimeTopo.First;
     While not ImprimeTopo.Eof do Begin
           tTabela.Close;
           tTabela.Filtered  := False;
           tTabela.Filter    := '';
           tTabela.TableName := ImprimeTopoTabela.Value;

           If UpperCase(ImprimeTopoTabela.Value) = 'PEDIDOS'         then tTabela.TableName := 'NOTASFISCAIS';
           If UpperCase(ImprimeTopoTabela.Value) = 'TRANSPORTADORES' then tTabela.TableName := 'FORNECEDORES';
           If UpperCase(ImprimeTopoTabela.Value) = 'PEDIDOSFATURA'   then tTabela.TableName := 'DUPLICATAS';
           tTabela.Open;
           If UpperCase(ImprimeTopoTabela.Value) = 'CLIENTES'        then tTabela.Locate('Codigo', dmFiscal.NotasCliente_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeTopoTabela.Value) = 'FORNECEDORES'    then tTabela.Locate('Codigo', dmFiscal.NotasFornecedor_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeTopoTabela.Value) = 'NATUREZA'        then tTabela.Locate('Codigo', dmFiscal.NotasNatureza_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeTopoTabela.Value) = 'PEDIDOS'         then tTabela.Locate('Numero', dmFiscal.NotasNumero.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeTopoTabela.Value) = 'TRANSPORTADORES' then tTabela.Locate('Codigo', dmFiscal.NotasTransportador_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeTopoTabela.Value) = 'PEDIDOSFATURA'   then begin
              tTabela.Close;
              tTabela.Filtered := False;
              tTabela.Filter   := 'Nota = ' + InttoStr(dmFiscal.NotasNumero.Value) + ' and Linha = '+ InttoStr(ImprimeTopoLinha_Memo.Value);
              tTabela.Filtered := True;
              tTabela.Open;
           End;

           mValor := ImprimeTopoValor_Padrao.Value;
           If mValor = '' then begin
              If tTabela.FieldByName(ImprimeTopoCampo.Value).AsString <> '' then begin
                 If (UpperCase(ImprimeTopoTipo.Value) = 'MEMO') then begin
                    mValor := Copy( cInfComplementares.Lines[ImprimeTopoLinha_Memo.Value], 1, ImprimeTopoTamanho.Value );
                 End else begin
                    mTipo := UpperCase(ImprimeTopoTipo.Value);
                    If ImprimeTopoMascara.Value <> '' then mMascara := ImprimeTopoMascara.Value else mMascara := '!;0; ';
                       If (mTipo = 'STRING') or (mTipo = 'DATE') then begin
                          mValor := FormatMaskText( mMascara, tTabela.FieldByName(ImprimeTopoCampo.Value).AsString);
                       End;
                       If (mTipo = 'FLOAT') or (mTipo = 'INTEGER') or (mTipo = 'CURRENCY') then begin
                          mValor := PadR(FormatFloat( mMascara, tTabela.FieldByName(ImprimeTopoCampo.Value).AsFloat), ImprimeTopoTamanho.Value);
                       End;
                 End;
              End;
           End;
           If UpperCase(ImprimeTopoCampo.Value) = 'NUMERO' then begin
              Say( ImprimeTopoLinha.Value, ImprimeTopoColuna.Value, Arquivo, #14+#27+#69+Copy(mValor,1,ImprimeTopoTamanho.Value)+#20+#27+#70 );
           end else
              Say( ImprimeTopoLinha.Value, ImprimeTopoColuna.Value, Arquivo,Copy(mValor,1,ImprimeTopoTamanho.Value) );

           ImprimeTopo.Next;
     End;
End;
//
// Rotina de impressão dos itens da nota fiscal.
//
procedure TNotaFiscal_Reimpressao.ImprimirItens;
Var
    i       : Integer;
    mFracao : Real;
    mInteiro: Real;
    mItem   : Integer;
begin
      tTabela.Close;
      tTabela.Filtered  := False;
      tTabela.TableName := ImprimeItensTabela.Value;
      If UpperCase(ImprimeItensTabela.Value) = 'PEDIDOSITENS' then tTabela.TableName := 'NOTASITENS';
      tTabela.Filter    := '(Nota = '+dmFiscal.NotasNumero.AsString+') AND (Data = '+QuotedStr(dmFiscal.NotasData_Emissao.AsString)+')';
      tTabela.Filtered  := True;
      tTabela.Open;
      mLinha  := ImprimeItensLinha.Value;
      mPagina := 1;

      While not tTabela.Eof do begin
            ImprimeItens.First;
            While not ImprimeItens.Eof do begin
                  If UpperCase(ImprimeItensCampo.Value) <> 'DESCRICAO_MERCADORIA' then begin
                     mTipo := UpperCase( ImprimeItensTipo.Value );
                     If ImprimeItensMascara.Value <> '' then mMascara := ImprimeItensMascara.Value else mMascara := '!;0; ';
                     If (mTipo = 'STRING') or (mTipo = 'DATE') then begin
                        mValor := FormatMaskText( mMascara, tTabela.FieldByName(ImprimeItensCampo.Value).AsString);
                     End;
                     If (mTipo = 'FLOAT') or (mTipo = 'INTEGER') or (mTipo = 'CURRENCY') then begin
                        mValor := PadR(FormatFloat( mMascara, tTabela.FieldByName(ImprimeItensCampo.Value).AsFloat), ImprimeItensTamanho.Value);
                     End;
                     Say( mLinha, ImprimeItensColuna.Value, Arquivo, Copy(mValor,1,ImprimeItensTamanho.Value) );
                  End else Begin
                     // Remove caracteres de controle como quebra de linha. . .
                     mDescricao := Trim(tTabela.FieldByName(ImprimeItensCampo.Value).AsString);
                     mDescricao := RemoveCaracter(#13, '', mDescricao);
                     mDescricao := RemoveCaracter(#12, '', mDescricao);
                     mDescricao := RemoveCaracter(#10, '', mDescricao);
                     // Remove o código do produto de importação do SISCOMEX.
                     mDescricao := RemoveCaracter('<{'+tTabela.FieldByName('Codigo_Mercadoria').AsString+'}>', '', mDescricao);
                     mInteiro   := Int(Length(mDescricao)/ImprimeItensTamanho.Value);
                     mFracao    := Frac(Length(mDescricao)/ImprimeItensTamanho.Value);

                     If (mInteiro > 0) and (mFracao > 0)                then mQtdeLinha := Round(mInteiro+1);
                     If Length(mDescricao) <= ImprimeItensTamanho.Value then mQtdeLinha := 1;
                     If mQtdeLinha < 1                                  then mQtdeLinha := 1;

                     mPosDesc := 1;
                     For i := 1 to mQtdeLinha do begin
                         Say( mLinha, ImprimeItensColuna.Value, Arquivo, Copy(mDescricao, mPosDesc, ImprimeItensTamanho.Value ) );
                         Inc(mPosDesc,ImprimeItensTamanho.Value);
                         If i < mQtdeLinha then Inc(mLinha);

                         If mLinha > (ImprimeItensLinha.Value+(Dados.TipoNotaLinhas_Itens.Value-1)) then begin
                            mItem := tTabela.FieldByName('Item').AsInteger;
                            ImprimirBase(True);
                            CloseFile(Arquivo);
                            Inc(mPagina);
                            mLinha      := ImprimeItensLinha.Value;
                            LinhaAtual  := 1;
                            ColunaAtual := 0;

                            Janela_Processamento.lProcesso.Caption := 'Reimprimindo a Nota Fiscal:'+PoeZero(6,dmFiscal.NotasNumero.Value)+'   Formulário:'+PoeZero(4, mPagina);
                            Application.ProcessMessages;
                            
                            If cTipo.ItemIndex = 0 then
                               mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF_ENTRADA'+PoeZero(6,dmFiscal.NotasNumero.Value)+'_F'+PoeZero(4,mPagina)+'.TXT'
                            else
                               mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF_SAIDA'  +PoeZero(6,dmFiscal.NotasNumero.Value)+'_F'+PoeZero(4,mPagina)+'.TXT';

                            AssignFile(Arquivo, mNomeArq);
                            ReWrite(Arquivo);

                            ImprimirTopo;

                            tTabela.Close;
                            tTabela.Filtered  := False;
                            tTabela.TableName := ImprimeItensTabela.Value;
                            If UpperCase(ImprimeItensTabela.Value) = 'PEDIDOSITENS' then tTabela.TableName := 'NOTASITENS';
                            tTabela.Filter    := '(Nota = '+dmFiscal.NotasNumero.AsString+') AND (Data = '+QuotedStr(dmFiscal.NotasData_Emissao.AsString)+')';
                            tTabela.Filtered  := True;
                            tTabela.Open;
                            tTabela.Locate('Item', mItem, [loCaseInsensitive]);
                         End;
                     End;
                  End;
                  ImprimeItens.Next;
            End;
            tTabela.Next;
            Inc(mLinha);

            If mLinha > (ImprimeItensLinha.Value+(Dados.TipoNotaLinhas_Itens.Value-1)) then begin
               mItem := tTabela.FieldByName('Item').AsInteger;
               ImprimirBase(True);
               CloseFile(Arquivo);
               Inc(mPagina);
               mLinha      := ImprimeItensLinha.Value;
               LinhaAtual  := 1;
               ColunaAtual := 0;
               If cTipo.ItemIndex = 0 then
                  mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF_ENTRADA'+PoeZero(6,dmFiscal.NotasNumero.Value)+'_F'+PoeZero(4,mPagina)+'.TXT'
               else
                  mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF_SAIDA'  +PoeZero(6,dmFiscal.NotasNumero.Value)+'_F'+PoeZero(4,mPagina)+'.TXT';

               AssignFile(Arquivo, mNomeArq);
               ReWrite(Arquivo);

               ImprimirTopo;

               tTabela.Close;
               tTabela.Filtered  := False;
               tTabela.TableName := ImprimeItensTabela.Value;
               If UpperCase(ImprimeItensTabela.Value) = 'PEDIDOSITENS' then tTabela.TableName := 'NOTASITENS';
               tTabela.Filter    := '(Nota = '+dmFiscal.NotasNumero.AsString+') AND (Data = '+QuotedStr(dmFiscal.NotasData_Emissao.AsString)+')';
               tTabela.Filtered  := True;
               tTabela.Open;
               tTabela.Locate('Item', mItem, [loCaseInsensitive]);
            End;
            
      End;
End;
//
// Rotina de impressão da base da nota fiscal.
//
procedure TNotaFiscal_Reimpressao.ImprimirBase(Quebra: Boolean);
begin
     ImprimeBase.SQL.Clear;
     ImprimeBase.SQL.Add('SELECT * FROM Impressao WHERE (TipoNota = :pTipoNota) and (Posicao = '+QuotedStr('B')+') and (Imprimir = 1) ORDER BY Linha,Coluna');
     ImprimeBase.ParamByName('pTipoNota').AsInteger := dmFiscal.NotasTipo_Nota.Value;
     ImprimeBase.Open;
     ImprimeBase.First;
     tTabela.Filtered := False;
     tTabela.Filter   := '';
     While not ImprimeBase.Eof do Begin
           tTabela.Close;
           tTabela.Filtered  := False;
           tTabela.Filter    := '';
           tTabela.TableName := ImprimeBaseTabela.Value;
           If UpperCase(ImprimeBaseTabela.Value) = 'PEDIDOS'         then tTabela.TableName := 'NOTASFISCAIS';
           If UpperCase(ImprimeBaseTabela.Value) = 'TRANSPORTADORES' then tTabela.TableName := 'FORNECEDORES';
           If UpperCase(ImprimeBaseTabela.Value) = 'PEDIDOSFATURA'   then tTabela.TableName := 'DUPLICATAS';
           tTabela.Open;
           If UpperCase(ImprimeBaseTabela.Value) = 'CLIENTES'        then tTabela.Locate('Codigo', dmfiscal.NotasCliente_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeBaseTabela.Value) = 'FORNECEDORES'    then tTabela.Locate('Codigo', dmFiscal.NotasFornecedor_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeBaseTabela.Value) = 'NATUREZA'        then tTabela.Locate('Codigo', dmFiscal.NotasNatureza_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeBaseTabela.Value) = 'PEDIDOS'         then tTabela.Locate('Numero;Data_Emissao', VarArrayOf([dmFiscal.NotasNumero.Value, dmFiscal.NotasData_Emissao.Value]) , [loCaseInsensitive]);
           If UpperCase(ImprimeBaseTabela.Value) = 'TRANSPORTADORES' then tTabela.Locate('Codigo', dmFiscal.NotasTransportador_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeBaseTabela.Value) = 'PEDIDOSFATURA'   then begin
              tTabela.Close;
              tTabela.Filtered := False;
              tTabela.Filter   := 'Nota = ' + InttoStr(Dados.PedidosNumero.Value) + 'and Linha = '+ InttoStr(ImprimeBaseLinha_Memo.Value);
              tTabela.Filtered := True;
              tTabela.Open;
           End;

           mValor := ImprimeBaseValor_Padrao.Value;
           If mValor = '' then begin
              If tTabela.FieldByName(ImprimeBaseCampo.Value).AsString <> '' then begin
                 If (UpperCase(ImprimeBaseTipo.Value) = 'MEMO') then begin
                    mValor := Copy( cInfComplementares.Lines[ImprimeBaseLinha_Memo.Value], 1, ImprimeBaseTamanho.Value );
                 End else begin
                    mTipo := UpperCase(ImprimeBaseTipo.Value);
                    If ImprimeBaseMascara.Value <> '' then mMascara := ImprimeBaseMascara.Value else mMascara := '!;0; ';
                    If (mTipo = 'STRING') or (mTipo = 'DATE') then begin
                       mValor := FormatMaskText( mMascara, tTabela.FieldByName(ImprimeBaseCampo.Value).AsString);
                    End;
                    If (mTipo = 'FLOAT') or (mTipo = 'INTEGER') then begin
                       mValor := PadR(FormatFloat( mMascara, tTabela.FieldByName(ImprimeBaseCampo.Value).AsFloat), ImprimeBaseTamanho.Value)
                    End;
                    If (mTipo = 'CURRENCY') then begin
                       If Quebra <> True then begin
                          mValor := PadR(FormatFloat( mMascara, tTabela.FieldByName(ImprimeBaseCampo.Value).AsFloat), ImprimeBaseTamanho.Value);
                       end else begin
                          mValor := '***.***.***.**,**';
                       end;
                    End;
                 End;
              End;
           End;
           If UpperCase(ImprimeBaseCampo.Value) = 'NUMERO' then
              Say( ImprimeBaseLinha.Value, ImprimeBaseColuna.Value, Arquivo, #14+#27+#69+Copy(mValor,1,ImprimeBaseTamanho.Value)+#20+#27+#70 )
           else
              Say( ImprimeBaseLinha.Value, ImprimeBaseColuna.Value, Arquivo, Copy(mValor,1,ImprimeBaseTamanho.Value) );

           ImprimeBase.Next;
     End;
     Write(Arquivo,#12);
End;


procedure TNotaFiscal_Reimpressao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

end.

