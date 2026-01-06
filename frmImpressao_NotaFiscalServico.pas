unit frmImpressao_NotaFiscalServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, DBGrids, RXDBCtrl, RXCtrls, DB,
  DBAccess, MSAccess, MMSystem, MaskUtils, FUNCOES, DateUtils, Mask,
  Grids, RxToolEdit, MemDS;

type
    TImpressao_NotaFiscalServico = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    bTudo: TButton;
    cDataEmissao: TDateEdit;
    StaticText2: TStaticText;
    tChecaData: TMSQuery;
    tTabela: TMSTable;
    tChecaDataData_Emissao: TDateTimeField;
    tProvisao: TMSQuery;
    tProvisaoNumero: TLargeintField;
    tLancamentos: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bTudoClick(Sender: TObject);
    procedure Imprimir;
    procedure FormCreate(Sender: TObject);
    procedure LancamentoContabil;
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo      : TextFile;
    mNotaServico : Integer;
    mPagina      : Integer;
    mNomeArq     : String;
    mValor       : String;
    mTipo        : String;
    mMascara     : String;
    mValorExtenso: String;
    mExtensoL1   : String;
    mExtensoL2   : String;
    mExtensoL3   : String;
  end;

var
  Impressao_NotaFiscalServico: TImpressao_NotaFiscalServico;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal, frmNotaFiscal_VisualizarPedido,
     frmJanela_Processamento, frmDMContab;

{$R *.dfm}

procedure TImpressao_NotaFiscalServico.FormShow(Sender: TObject);
begin
        With Dados do Begin
             PedidoServico.SQL.Clear;
             PedidoServico.SQL.Add('SELECT * FROM PedidosServico WHERE(Total_Nota > 0) ORDER BY Numero');
             PedidoServico.Open;
             
             Configuracao.Open;
             
             ClassificacaoFinanceira.SQL.Clear;
             ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) ');
             ClassificacaoFinanceira.Open;

             ReferenciasFiscais.SQL.Clear;
             ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE(Ativo = 1)');
             ReferenciasFiscais.Open;
        End;     
end;

procedure TImpressao_NotaFiscalServico.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TImpressao_NotaFiscalServico.bTudoClick(Sender: TObject);
begin
      If bTudo.Caption = '&Todos' then begin
         Grade.SelectAll;
         bTudo.Caption := '&Nenhum';
      end else begin
         Grade.UnselectAll;
         bTudo.Caption := '&Todos';
      end
end;

procedure TImpressao_NotaFiscalServico.bImprimirClick(Sender: TObject);
Var
    mSel     : Integer;
    mVencISS : TDate;
begin
     tChecaData.Close;
     tChecaData.Open;
     If cDataEmissao.Date < tChecaDataData_Emissao.Value then begin
        If Dados.ConfiguracaoAtivar_Som.Value = True then SndPlaySound('Erro.wav',SND_ASYNC);
        ShowMessage('Atenção!'+#13+'Você não pode gerar Notas Fiscais com data inferior a da última emitida.'+#13+'Data da última Nota Fiscal emitida:'+DatetoStr(tChecaDataData_Emissao.Value));
        Abort;
     End;

     With Dados, dmFiscal do begin
          If Grade.SelCount = 0 then begin
             ShowMessage('Não há nenhum pedido selecionado para a impressão!');
          end else begin
             Janela_Processamento := TJanela_Processamento.Create(Self);
             Janela_Processamento.Progresso.Position := 0;
             Janela_Processamento.Progresso.Max      := Grade.SelCount;
             Janela_Processamento.Show;

             For mSel := 0 to Grade.SelectedRows.Count-1 do begin
                 Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));

                 Empresas.SQL.Clear;
                 Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
                 Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
                 Empresas.Open;
                 Empresas.Edit;
                          mNotaServico               := (EmpresasNota_Servico.Value + 1);
                          EmpresasNota_Servico.Value := mNotaServico;
                 Empresas.Post;
                                        
                 NotasServico.Open;
                 NotasServico.Append;
                              NotasServicoNumero.Value               := mNotaServico;
                              NotasServicoData_Emissao.Value         := cDataEmissao.Date;
                              NotasServicoModelo.Value               := EmpresasNFServico_Modelo.Value;
                              NotasServicoSerie.Value                := EmpresasNFServico_Serie.Value;
                              NotasServicoProcesso.Value             := PedidoServicoProcesso.Value;
                              NotasServicoFatura_Numero.Value        := PedidoServicoFatura_Numero.Value;
                              NotasServicoDesconto_Percentual.Value  := PedidoServicoDesconto_Percentual.Value;
                              NotasServicoDesconto_Valor.Value       := PedidoServicoDesconto_Valor.Value;
                              NotasServicoData_Desconto.Value        := PedidoServicoData_Desconto.Value;
                              NotasServicoCliente.Value              := PedidoServicoCliente.Value;
                              NotasServicoNatureza_Operacao.Value    := PedidoServicoNatureza_Operacao.Value;
                              NotasServicoServico.Value              := PedidoServicoServico.Value;
                              NotasServicoDescricao_Servico.Value    := PedidoServicoDescricao_Servico.Value;
                              NotasServicoValor_Servico.Value        := PedidoServicoValor_Servico.Value;
                              NotasServicoValor_ISS.Value            := PedidoServicoValor_ISS.Value;
                              NotasServicoTotal_Nota.Value           := PedidoServicoTotal_Nota.Value;
                              NotasServicoCodigo_Adicional01.Value   := PedidoServicoCodigo_Adicional01.Value;
                              NotasServicoAliquota_Adicional01.Value := PedidoServicoAliquota_Adicional01.Value;
                              NotasServicoValor_Adicional01.Value    := PedidoServicoValor_Adicional01.Value;
                              NotasServicoCodigo_Adicional02.Value   := PedidoServicoCodigo_Adicional02.Value;
                              NotasServicoAliquota_Adicional02.Value := PedidoServicoAliquota_Adicional02.Value;
                              NotasServicoValor_Adicional02.Value    := PedidoServicoValor_Adicional02.Value;
                              NotasServicoCodigo_Adicional03.Value   := PedidoServicoCodigo_Adicional03.Value;
                              NotasServicoAliquota_Adicional03.Value := PedidoServicoAliquota_Adicional03.Value;
                              NotasServicoValor_Adicional03.Value    := PedidoServicoValor_Adicional03.Value;
                              NotasServicoCodigo_Adicional04.Value   := PedidoServicoCodigo_Adicional04.Value;
                              NotasServicoAliquota_Adicional04.Value := PedidoServicoAliquota_Adicional04.Value;
                              NotasServicoValor_Adicional04.Value    := PedidoServicoValor_Adicional04.Value;
                              NotasServicoCodigo_Adicional05.Value   := PedidoServicoCodigo_Adicional05.Value;
                              NotasServicoAliquota_Adicional05.Value := PedidoServicoAliquota_Adicional05.Value;
                              NotasServicoValor_Adicional05.Value    := PedidoServicoValor_Adicional05.Value;
                              NotasServicoCodigo_Adicional06.Value   := PedidoServicoCodigo_Adicional06.Value;
                              NotasServicoAliquota_Adicional06.Value := PedidoServicoAliquota_Adicional06.Value;
                              NotasServicoValor_Adicional06.Value    := PedidoServicoValor_Adicional06.Value;
                              NotasServicoCancelada.Value            := False;
                              NotasServicoAliquota_PIS.Value         := PedidoServicoAliquota_PIS.Value;
                              NotasServicoAliquota_COFINS.Value      := PedidoServicoAliquota_COFINS.Value;
                              NotasServicoCentro_Custo.Value         := PedidoServicoCentro_Custo.Value;
                              NotasServicoTotal_Dedutiveis.Value     := PedidoServicoTotal_Dedutiveis.Value;
                              NotasServicoTotal_Servicos.Value       := PedidoServicoTotal_Servicos.Value; 
                              NotasServicoReferencia_Fiscal.Value    := PedidoServicoReferencia_Fiscal.Value; 
                              NotasServicoObservacao.Value           := PedidoServicoObservacao.Value; 
                 NotasServico.Post;

                 // Gerando contas a receber.
                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData)');
                 PagarReceber.ParamByName('pData').AsDate := NotasServicoData_Emissao.Value;
                 PagarReceber.Open;

                 PedidoServicoParcelas.SQL.Clear;
                 PedidoServicoParcelas.SQL.Add('SELECT * FROM PedidoServicoParcelas WHERE (Pedido = :pPedido) ORDER BY Vencimento');
                 PedidoServicoParcelas.ParamByName('pPedido').AsInteger := PedidoServicoNumero.Value;
                 PedidoServicoParcelas.Open;

                 ReferenciasFiscais.Locate('Codigo', PedidoServicoReferencia_Fiscal.Value, [loCaseInsensitive]);
                 ClassificacaoFinanceira.Locate('Codigo', ReferenciasFiscaisClassificacao_TotalNota.Value, [loCaseInsensitive]);

                 // Duplicatas (Parcelas).
                 If PedidoServicoParcelas.RecordCount > 0 then begin
                    PedidoServicoParcelas.First;
                    While not PedidoServicoParcelas.Eof do begin
                          tProvisao.SQL.Clear;
                          tProvisao.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
                          tProvisao.Open;

                          PagarReceber.Append;
                                       PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                                       PagarReceberTipo.Value             := 'R';
                                       PagarReceberClassificacao.Value    := ReferenciasFiscaisClassificacao_TotalNota.Value;
                                       PagarReceberCentro_Custo.Value     := NotasServicoCentro_Custo.Value;
                                       PagarReceberData_Documento.Value   := cDataEmissao.Date;
                                       PagarReceberData_Vencimento.Value  := PedidoServicoParcelasVencimento.Value;
                                       PagarReceberValor_Documento.Value  := NotasServicoTotal_Nota.Value;
                                       PagarReceberValor_Parcela.Value    := PedidoServicoParcelasValor.Value;
                                       PagarReceberMulta.Value            := 0;
                                       PagarReceberJuros.Value            := 0;
                                       PagarReceberDesconto.Value         := 0;
                                       PagarReceberValor_Total.Value      := PedidoServicoParcelasValor.Value;
                                       PagarReceberValor_Operacao.Value   := PedidoServicoParcelasValor.Value;
                                       PagarReceberCliente.Value          := NotasServicoCliente.Value;
                                       PagarReceberDocumento.Value        := ReferenciasFiscaisEspecie.Value;
                                       PagarReceberNumero_Documento.Value := NotasServicoNumero.AsString;
                                       PagarReceberProcesso.Value         := NotasServicoProcesso.Value;
                                       PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                       PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceira.FieldByName('Custo_Seletivo').AsBoolean;
                                       PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceira.FieldByName('Custo_Entrada').AsBoolean;
                                       PagarReceberFiscal.Value           := NotasServicoNumero.AsString;
                                       PagarReceberTipo_Nota.Value        := 'SP';
                                       PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                       PagarReceberObservacao.Value       := NotasServicoObservacao.Value;
                                       PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                       PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                          PagarReceber.Post;
                          tProvisao.Close;
                          PedidoServicoParcelas.Next;
                    End;

                    // Lancamento no financeiro "ISS".
                    tProvisao.SQL.Clear;
                    tProvisao.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
                    tProvisao.Open;

                    Impostos.Open;
                    Impostos.Locate('Codigo', 'ISS', [loCaseInsensitive]);

                    // Calculo do vencimento com base no dia do vencimento do imposto.
                    mVencISS := cDataEmissao.Date + ( DayOf(UltimoDiaMes(cDataEmissao.Date))-DayOf(cDataEmissao.Date) + ImpostosDia_Vencimento.AsInteger);
                    mVencISS := DiaUtil(mVencISS, ConfiguracaoDia_Util.AsString);

                    PagarReceber.Append;
                                 PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                                 PagarReceberTipo.Value             := 'P';
                                 PagarReceberClassificacao.Value    := ImpostosClassificacao_Financeira.Value;
                                 PagarReceberCentro_Custo.Value     := NotasServicoCentro_Custo.Value;
                                 PagarReceberData_Documento.Value   := cDataEmissao.Date;
                                 PagarReceberData_Vencimento.Value  := mVencISS;
                                 PagarReceberValor_Documento.Value  := PedidoServicoValor_ISS.Value;
                                 PagarReceberValor_Parcela.Value    := PedidoServicoValor_ISS.Value;
                                 PagarReceberMulta.Value            := 0;
                                 PagarReceberJuros.Value            := 0;
                                 PagarReceberDesconto.Value         := 0;
                                 PagarReceberValor_Total.Value      := PedidoServicoValor_ISS.Value;
                                 PagarReceberValor_Operacao.Value   := PedidoServicoValor_ISS.Value;
                                 PagarReceberCliente.Value          := PedidoServicoCliente.Value;
                                 PagarReceberDocumento.Value        := ReferenciasFiscaisEspecie.Value;
                                 PagarReceberNumero_Documento.Value := NotasServicoNumero.AsString;
                                 PagarReceberProcesso.Value         := NotasServicoProcesso.Value;
                                 PagarReceberCustoConta.Value       := ClassificacaoFinanceiraCusto.Value;
                                 PagarReceberCusto_Seletivo.Value   := ClassificacaoFinanceira.FieldByName('Custo_Seletivo').AsBoolean;
                                 PagarReceberCusto_Entrada.Value    := ClassificacaoFinanceira.FieldByName('Custo_Entrada').AsBoolean;
                                 PagarReceberFiscal.Value           := NotasServicoNumero.AsString;
                                 PagarReceberTipo_Nota.Value        := 'SP';
                                 PagarReceberNivel.Value            := ClassificacaoFinanceiraNivel.Value;
                                 PagarReceberObservacao.Value       := NotasServicoObservacao.Value;
                                 PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                 PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                    PagarReceber.Post;
                    tProvisao.Close;
                    PedidoServicoParcelas.Next;
                 End;

                 // Gerando lançamentos contabeis.
                 //LancamentoContabil;

                 // Gerando o valor total da nota por extenso.
                 mValorExtenso := ValorExtenso(PedidoServicoTotal_Nota.Value, true);
                 If ConfiguracaoExtenso_Maiusculo.Value = True then mValorExtenso := UpperCase(mValorExtenso);

                 // Imprimindo a nota de serviço.
                 mPagina  := 1;
                 mNomeArq := Trim(Dados.ConfiguracaoPasta_Impressao.Value)+'\'+Trim(Dados.EmpresasRazao_Social.AsString);
                 If Dados.EmpresasMatriz_Filial.AsBoolean = true then
                    mNomeArq := mNomeArq + '_Matriz'
                 else
                    mNomeArq := mNomeArq + '_Filial'+PoeZero(2, Dados.EmpresasNumero_Filial.AsInteger);
                 mNomeArq := mNomeArq+'\Impressao';

                 If not DirectoryExists(mNomeArq) then ForceDirectories(mNomeArq);
                 mNomeArq := mNomeArq+'\NFSERVICO'+PoeZero(6,mNotaServico)+'_FRM'+PoeZero(3,mPagina)+'.TXT';

                 AssignFile(Arquivo, mNomeArq);
                 ReWrite(Arquivo);

                 LinhaAtual  := 1;
                 ColunaAtual := 0;

                 Imprimir;

                 CloseFile(Arquivo);

                 PedidoServico.Delete;

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 Application.ProcessMessages;
             End;
          End;

          Janela_Processamento.Close;
          NotaFiscal_VisualizarPedido := TNotaFiscal_VisualizarPedido.Create(Self);
          NotaFiscal_VisualizarPedido.ShowModal;
     End;
end;
//
// Rotina de impressão da nota fiscal de serviço.
//
procedure TImpressao_NotaFiscalServico.Imprimir;
Var
    mDescricao : String;
    mQtdeLinha : Integer;
    mPosDesc   : Integer;
    i          : Integer;
    mLinha     : Integer;
    mCampo     : String;
begin
    With Dados, dmFiscal do Begin
         ImpressaoServico.SQL.Clear;
         ImpressaoServico.SQL.Add('SELECT * FROM ImpressaoServico WHERE (Imprimir = 1) ORDER BY Linha,Coluna');
         ImpressaoServico.Open;
         ImpressaoServico.First;
         mLinha := 0;

         Write(Arquivo, #27, #67 , Char(ConfiguracaoNotaServico_Tamanho.Value) );
         Write(Arquivo, #27, #103, Char(15));  // Pitch 15ppp
         While not ImpressaoServico.Eof do Begin
               If ImpressaoServicoTabela.Value <> '' then begin
                  tTabela.Close;
                  If UpperCase(ImpressaoServicoBanco.Value) = 'BANCO_EMPRESAS' then
                     tTabela.Connection := Banco_Empresas;
                  If UpperCase(ImpressaoServicoBanco.Value) = 'BANCO' then
                     tTabela.Connection := Banco;
                  If UpperCase(ImpressaoServicoBanco.Value) = 'BANCO_CONTABILIDADE' then
                     tTabela.Connection := Banco_Contabilidade;

                  tTabela.TableName := ImpressaoServicoTabela.Value;
                  tTabela.Open;
                  If UpperCase(ImpressaoServicoTabela.Value) = 'CLIENTES'             then tTabela.Locate('Codigo', PedidoServico.FieldByName(ImpressaoServicoPesquisa.Value).AsInteger ,[loCaseInsensitive]);
                  If UpperCase(ImpressaoServicoTabela.Value) = 'IMPOSTOS'             then tTabela.Locate('Codigo', PedidoServico.FieldByName(ImpressaoServicoPesquisa.Value).AsString  ,[loCaseInsensitive]);
                  If UpperCase(ImpressaoServicoTabela.Value) = 'MODALIDADESPAGAMENTO' then tTabela.Locate('Codigo', PedidoServico.FieldByName(ImpressaoServicoPesquisa.Value).AsString ,[loCaseInsensitive]);
                  If UpperCase(ImpressaoServicoTabela.Value) = 'NOTASSERVICO'         then tTabela.Locate('Numero', mNotaServico, [loCaseInsensitive]);
               End;

               mValor := ImpressaoServicoValor_Padrao.Value;
               If mValor = '' then begin
                  If ImpressaoServicoPesquisa.Value = '' then
                     mCampo := ImpressaoServicoCampo.Value
                  else
                     mCampo := ImpressaoServicoPesquisa.Value;

                  If (ImpressaoServicoTabela.Value <> '') and (PedidoServico.FieldByName(mCampo).AsString <> '') then begin
                     mTipo := UpperCase(ImpressaoServicoTipo.Value);

                     If ImpressaoServicoMascara.Value <> '' then
                        mMascara := ImpressaoServicoMascara.Value
                     else
                        mMascara := '!;0; ';

                     If (mTipo = 'STRING') or (mTipo = 'DATE') then begin
                        If Trim(RemoveCaracter('/', '', tTabela.FieldByName(ImpressaoServicoCampo.Value).AsString)) <> '' then begin
                           mValor := FormatMaskText( mMascara, tTabela.FieldByName(ImpressaoServicoCampo.Value).AsString);
                        End;
                     End;
                        
                     If (mTipo = 'FLOAT') or (mTipo = 'INTEGER') or (mTipo = 'CURRENCY') then begin
                        If tTabela.FieldByName(ImpressaoServicoCampo.Value).AsFloat > 0 then begin
                           mValor := PadR(FormatFloat( mMascara, tTabela.FieldByName(ImpressaoServicoCampo.Value).AsFloat), ImpressaoServicoTamanho.Value);
                        End;   
                     End;      

                     If (UpperCase(ImpressaoServicoCampo.Value) = 'DESCRICAO_SERVICO') then begin
                        // Remove caracteres de controle como quebra de linha. . .
                        mDescricao := Trim(tTabela.FieldByName(ImpressaoServicoCampo.Value).AsString);
                        mDescricao := RemoveCaracter(#13, '', mDescricao);
                        mDescricao := RemoveCaracter(#12, '', mDescricao);
                        mDescricao := RemoveCaracter(#10, '', mDescricao);
                        If Length(mDescricao) <= ImpressaoServicoTamanho.Value then
                           mQtdeLinha := 1
                        else
                           mQtdeLinha := Round(Length(mDescricao) / ImpressaoServicoTamanho.Value);

                        mPosDesc := 1;
                        mLinha   := ImpressaoServicoLinha.Value;
                        For i := 1 to mQtdeLinha do begin
                            Say( mLinha, ImpressaoServicoColuna.Value, Arquivo, Copy(mDescricao, mPosDesc, ImpressaoServicoTamanho.Value ) );
                            Inc(mPosDesc,ImpressaoServicoTamanho.Value);
                            If i < mQtdeLinha then Inc(mLinha);
                        End;
                     End;
                     If (UpperCase(ImpressaoServicoCampo.Value) = 'OBSERVACAO') then begin
                        // Remove caracteres de controle como quebra de linha. . .
                        mDescricao := Trim(tTabela.FieldByName(ImpressaoServicoCampo.Value).AsString);
                        mDescricao := RemoveCaracter(#13, '', mDescricao);
                        mDescricao := RemoveCaracter(#12, '', mDescricao);
                        mDescricao := RemoveCaracter(#10, '', mDescricao);
                        If Length(mDescricao) <= ImpressaoServicoTamanho.Value then
                           mQtdeLinha := 1
                        else
                           mQtdeLinha := Round(Length(mDescricao) / ImpressaoServicoTamanho.Value);

                        mPosDesc := 1;
                        mLinha   := ImpressaoServicoLinha.Value;
                        For i := 1 to mQtdeLinha do begin
                            Say( mLinha, ImpressaoServicoColuna.Value, Arquivo, Copy(mDescricao, mPosDesc, ImpressaoServicoTamanho.Value ) );
                            Inc(mPosDesc,ImpressaoServicoTamanho.Value);
                            If i < mQtdeLinha then Inc(mLinha);
                        End;
                     End;
                  End else begin
                     If UpperCase(Copy(ImpressaoServicoCampo.Value,1,7)) = 'EXTENSO' then begin
                        mExtensoL1 := Copy(mValorExtenso,1,ImpressaoServicoTamanho.Value);
                        mExtensoL2 := Copy(mValorExtenso,ImpressaoServicoTamanho.Value+1,ImpressaoServicoTamanho.Value);
                        mExtensoL3 := Copy(mValorExtenso,(ImpressaoServicoTamanho.Value*2)+1,ImpressaoServicoTamanho.Value);
                        If UpperCase(ImpressaoServicoCampo.Value) = 'EXTENSO_LINHA01' then mValor := mExtensoL1;
                        If UpperCase(ImpressaoServicoCampo.Value) = 'EXTENSO_LINHA02' then mValor := mExtensoL2;
                        If UpperCase(ImpressaoServicoCampo.Value) = 'EXTENSO_LINHA03' then mValor := mExtensoL3;
                     End;
                  End
               End;
               If UpperCase(ImpressaoServicoCampo.Value) = 'NUMERO' then begin
                  Say( ImpressaoServicoLinha.Value, ImpressaoServicoColuna.Value, Arquivo, #14+#27+#69+PoeZero(6,mNotaServico)+#20+#27+#70 );
                  Write(Arquivo, #27,#103, Char(15));    // Pitch 15ppp.
               end else begin
                  If UpperCase(ImpressaoServicoCampo.Value) <> 'DESCRICAO_SERVICO' then begin
                     If UpperCase(ImpressaoServicoCampo.Value) = 'VALOR_SERVICO' then
                        Say( mLinha, ImpressaoServicoColuna.Value, Arquivo,Copy(mValor,1,ImpressaoServicoTamanho.Value) )
                     else
                        Say( ImpressaoServicoLinha.Value, ImpressaoServicoColuna.Value, Arquivo,Copy(mValor,1,ImpressaoServicoTamanho.Value) );
                  end;
               End;
               ImpressaoServico.Next;
         End;
    End;
End;

procedure TImpressao_NotaFiscalServico.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_NotaFiscalServico.LancamentoContabil;
Var
   mContaDebito  : String;
   mContaCredito : String;
begin
      With Dados, dmFiscal, dmContab do begin
           Lancamentos.SQL.Clear;
           Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE (Data = :pData)');
           Lancamentos.ParamByName('pData').AsDate := cDataEmissao.Date;
           Lancamentos.Open;

           tLancamentos.SQL.Clear;
           tLancamentos.SQL.Add('SELECT  Numero   = (SELECT MAX(Numero)   FROM Lancamentos WHERE YEAR(Data) = :pAno)');
           tLancamentos.SQL.Add('       ,Registro = (SELECT MAX(Registro) FROM Lancamentos)');
           tLancamentos.ParamByName('pAno').AsInteger := YearOf(cDataEmissao.Date);
           tLancamentos.Open;

           Impostos.SQL.Clear;
           Impostos.SQL.Add('SELECT * FROM Impostos');
           Impostos.Open;

           Clientes.Locate('Codigo', NotasServicoCliente.Value, [loCaseInsensitive]);

           // Lancamento 01 - Total da Nota.
           If Trim(ReferenciasFiscaisClassificacao_TotalNota.AsString) <> '' then begin
              ClassificacaoFinanceira.Locate('Codigo', ReferenciasFiscaisClassificacao_TotalNota.Value, [loCaseInsensitive]);

              mContaDebito  := '';
              mContaCredito := '';
              If Trim(ClassificacaoFinanceiraProvisao_ContaD.AsString) = 'CLIENTE'          then mContaDebito  := Trim(ClientesConta_Ativo.AsString);
              If Length(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaD.AsString)) > 4 then mContaDebito  := Trim(ClassificacaoFinanceiraProvisao_ContaD.AsString);
              If Trim(ClassificacaoFinanceiraProvisao_ContaC.AsString) = 'CLIENTE'          then mContaCredito := Trim(ClientesConta_Ativo.AsString);
              If Length(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaC.AsString)) > 4 then mContaCredito := Trim(ClassificacaoFinanceiraProvisao_ContaC.AsString);

              If (mContaDebito <> '') or (mContaCredito <> '') then begin
                 Lancamentos.Append;
                             LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                             LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                             LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                             LancamentosData.Value                  := cDataEmissao.Date;
                             LancamentosConta_Debito.Value          := mContaDebito;
                             LancamentosConta_Credito.Value         := mContaCredito;
                             LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                             LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                             LancamentosValor.Value                 := NotasServicoValor_Servico.Value;
                             LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                             LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                             lancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
                 Lancamentos.Post;
                 tLancamentos.Close;
              End;
           End;

           // Lancamento 02 - Total Líquido.
           If Trim(ReferenciasFiscaisClassificacao_TotalProdutos.AsString) <> '' then begin
              ClassificacaoFinanceira.Locate('Codigo', ReferenciasFiscaisClassificacao_TotalProdutos.Value, [loCaseInsensitive]);
              mContaDebito  := '';
              mContaCredito := '';
              If Trim(ClassificacaoFinanceiraProvisao_ContaD.AsString) = 'CLIENTE'          then mContaDebito  := Trim(ClientesConta_Ativo.AsString);
              If Length(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaD.AsString)) > 4 then mContaDebito  := Trim(ClassificacaoFinanceiraProvisao_ContaD.AsString);
              If Trim(ClassificacaoFinanceiraProvisao_ContaC.AsString) = 'CLIENTE'          then mContaCredito := Trim(ClientesConta_Ativo.AsString);
              If Length(ApenasNumeros(ClassificacaoFinanceiraProvisao_ContaC.AsString)) > 4 then mContaCredito := Trim(ClassificacaoFinanceiraProvisao_ContaC.AsString);

              tLancamentos.Open;
              Lancamentos.Append;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          If Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) = 'CLIENTE' then
                             LancamentosConta_Debito.Value := ClientesConta_Ativo.AsString
                          else
                             LancamentosConta_Debito.Value := ClientesConta_Ativo.AsString;

                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                          LancamentosValor.Value                 := NotasServicoTotal_Nota.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          lancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;

           // Lancamento 03 - Imposto 01.
           If NotasServicoCodigo_Adicional01.Value <> '' then begin
              Impostos.Locate('Codigo', NotasServicoCodigo_Adicional01.Value, [loCaseInsensitive]);
              If Trim(ImpostosClassificacao_Financeira.AsString) <> '' then begin
                 ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);
                 tLancamentos.Open;
                 Lancamentos.Append;
                             LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                             LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                             LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                             LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                             LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                             LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                             LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                             LancamentosValor.Value                 := NotasServicoValor_Adicional01.Value;
                             LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                             LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                             lancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
                 Lancamentos.Post;
                 tLancamentos.Close;
              End;
           End;

           // Lancamento 04 - Imposto 02
           If NotasServicoCodigo_Adicional02.Value <> '' then begin
              Impostos.Locate('Codigo', NotasServicoCodigo_Adicional02.Value, [loCaseInsensitive]);
              ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

              tLancamentos.Open;
              Lancamentos.Append;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                          LancamentosValor.Value                 := NotasServicoValor_Adicional02.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          lancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;

           // Lancamento 05 - Imposto 03
           If NotasServicoCodigo_Adicional03.Value <> '' then begin
              Impostos.Locate('Codigo', NotasServicoCodigo_Adicional03.Value, [loCaseInsensitive]);
              ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

              tLancamentos.Open;
              Lancamentos.Append;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                          LancamentosValor.Value                 := NotasServicoValor_Adicional03.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          lancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;

           // Lancamento 06 - Imposto 04
           If NotasServicoCodigo_Adicional04.Value <> '' then begin
              Impostos.Locate('Codigo', NotasServicoCodigo_Adicional04.Value, [loCaseInsensitive]);
              ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

              tLancamentos.Open;
              Lancamentos.Append;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                          LancamentosValor.Value                 := NotasServicoValor_Adicional04.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          lancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;

           // Lancamento 07 - Imposto 05
           If NotasServicoCodigo_Adicional05.Value <> '' then begin
              Impostos.Locate('Codigo', NotasServicoCodigo_Adicional05.Value, [loCaseInsensitive]);
              ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

              tLancamentos.Open;
              Lancamentos.Append;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                          LancamentosValor.Value                 := NotasServicoValor_Adicional05.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          lancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;

           // Lancamento 08 - Imposto 06
           If NotasServicoCodigo_Adicional06.Value <> '' then begin
              Impostos.Locate('Codigo', NotasServicoCodigo_Adicional06.Value, [loCaseInsensitive]);
              ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

              tLancamentos.Open;
              Lancamentos.Append;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                          LancamentosValor.Value                 := NotasServicoValor_Adicional06.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          lancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;

           // Lancamento 09 - ISS.
           ClassificacaoFinanceira.Locate('Codigo', ReferenciasFiscaisClassificacao_ISS.Value, [loCaseInsensitive]);

           If (Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) <> '') and (Trim(ClassificacaoFinanceiraProvisao_ContaC.Value ) <> '') then begin
              tLancamentos.Open;
              Lancamentos.Append;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := InttoStr(MonthOf(cDataEmissao.Date))+'/'+InttoStr(YearOf(cDataEmissao.Date));
                          LancamentosValor.Value                 := NotasServicoValor_ISS.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          lancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;
      End;
End;



end.




