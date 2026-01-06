unit frmModalidadePgto_PedidoParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls,
  DBCtrls, RXDBCtrl, Funcoes,ExtCtrls, Math, DB, DBAccess, MSAccess, DateUtils,
  Grids, DBGrids, Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TModalidadePgto_PedidoParcelas = class(TForm)
    StaticText1: TStaticText;
    cValor: TCurrencyEdit;
    lFormaPgto: TStaticText;
    cFormaPgto: TDBLookupComboBox;
    Panel1: TPanel;
    bGerar: TButton;
    bCancelar: TButton;
    StaticText2: TStaticText;
    cTotalNota: TCurrencyEdit;
    tProvisao: TMSQuery;
    tProvisaoNumero: TLargeintField;
    tLancamentos: TMSQuery;
    StaticText3: TStaticText;
    cBanco: TDBLookupComboBox;
    mRemover: TButton;
    StaticText4: TStaticText;
    cCentroCusto: TDBLookupComboBox;
    bCalc: TButton;
    Grade: TRxDBGrid;
    procedure bGerarClick(Sender: TObject);
    procedure cFormaPgtoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCancelarClick(Sender: TObject);
    procedure GradeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lFormaPgtoClick(Sender: TObject);
    procedure mRemoverClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bCalcClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
  private
//    procedure LancamentoContabil;
    procedure SomaParcelas;
    { Private declarations }
  public
    { Public declarations }
    mTipo   : String;
    mTipoNF : Integer;  // 1 = Nota Terceiros, 2 = Nota Servico Tomados, 3 = Nota Servico Prestados, 4 = Faturamento Saida.
    mValor  : real;
  end;

var
  ModalidadePgto_PedidoParcelas: TModalidadePgto_PedidoParcelas;

implementation

uses frmDados, frmCadastro_ModalidadesPagamento, frmDMFiscal, frmDMContab, frmMenu_Principal;

{$R *.dfm}

procedure TModalidadePgto_PedidoParcelas.bGerarClick(Sender: TObject);
Var
   i:Integer;
   mVencISS:TDate;
begin
      With Dados, dmFiscal, dmContab do begin
           TabParcelas.First;
           cValor.Value := 0;
           i            := 0;
           While not TabParcelas.eof do begin
                 cValor.Value := cValor.Value + TabParcelasValor.Value;
                 if TabParcelas.FieldByName('Vencimento').AsDateTime < Pedidos.FieldByName('Data_Emissao').AsDateTime then inc(i);
                 TabParcelas.Next;
           End;
           TabParcelas.First;

           If (ConfiguracaoFaturamento_TravaDuplicata.AsBoolean) and (cFormaPgto.KeyValue > 0) and (Roundto(cValor.Value,-2) <> Roundto(cTotalNota.Value,-2)) then begin
              ShowMessage('Valor das parcelas não bate com o total da fatura!');
              Grade.SetFocus;
              Abort;
           End;

           If i > 0 then begin
              ShowMessage('Não pode haver data de vencimento menor que a data do pedido em nenhuma parcela!');
              Grade.SetFocus;
              Abort;
           End;

           // Pedido de nota fiscal de serviço.
           If mTipoNF = 3 then begin
              // Apaga todas as parcelas da modalidade de pagamento.
              PedidoServicoParcelas.SQL.Clear;
              PedidoServicoParcelas.SQL.Add('DELETE FROM PedidoServicoParcelas WHERE (Pedido = :pPedido)');
              PedidoServicoParcelas.ParamByName('pPedido').AsInteger := PedidoServicoNumero.Value;
              PedidoServicoParcelas.Execute;
              PedidoServicoParcelas.SQL.Clear;
              PedidoServicoParcelas.SQL.Add('SELECT * FROM PedidoServicoParcelas WHERE (Pedido = :pPedido)');
              PedidoServicoParcelas.ParamByName('pPedido').AsInteger := PedidoServicoNumero.Value;
              PedidoServicoParcelas.Open;

              If TabParcelas.RecordCount <> 0 then begin
                 TabParcelas.First;
                 While not TabParcelas.Eof do begin
                       PedidoServicoParcelas.Append;
                                             PedidoServicoParcelasPedido.Value     := PedidoServicoNumero.Value;
                                             PedidoServicoParcelasVencimento.Value := TabParcelasVencimento.Value;
                                             PedidoServicoParcelasValor.Value      := TabParcelasValor.Value;
                                             PedidoServicoAdiantamento.Value       := TabParcelasAdiantamento.Value;
                       PedidoServicoParcelas.Post;
                       TabParcelas.Next;
                 End;
              End;
              TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
              TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(PedidoServicoNumero.Value))+Trim(InttoStr(PedidoServicoCliente.Value));
              TabParcelas.Execute;

              // Salva a modalidade utilizada na nota fiscal de saida.
              PedidoServico.Edit;
                            PedidoServicoModalidade_Pgto.Value := ModalidadesPgtoCodigo.Value;
              PedidoServico.Post;
           End;

           // Pedido de nota fiscal de saída.
           if mTipoNF = 4 then begin
              PedidosFatura.SQL.Clear;
              PedidosFatura.SQL.Add('DELETE FROM PedidosFatura WHERE (Pedido = :pPedido)');
              PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
              PedidosFatura.Execute;

              PedidosDuplicata.SQL.Clear;
              PedidosDuplicata.SQL.Add('DELETE FROM PedidosDuplicata WHERE (Fatura = :pPedido)');
              PedidosDuplicata.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
              PedidosDuplicata.Execute;

              PedidosFatura.SQL.Clear;
              PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE (Pedido = :pPedido)');
              PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
              PedidosFatura.Open;

              PedidosDuplicata.SQL.Clear;
              PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Fatura = :pPedido)');
              PedidosDuplicata.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
              PedidosDuplicata.Execute;

              PedidosFatura.Append;
                            PedidosFaturaFatura.Value        := PedidosNumero.AsString;
                            PedidosFaturaData_Emissao.Value  := Date;
                            PedidosFaturaPedido.Value        := PedidosNumero.Value;
                            PedidosFaturaData_Pedido.Value   := Date;
                            PedidosFaturaForma_Pgto.Value    := ModalidadesPgtoCodigo.Value;
                            PedidosFaturaCliente.Value       := PedidosCliente_Codigo.Value;
                            PedidosFaturaValor_Total.Value   := PedidosValor_TotalNota.Value;
                            PedidosFaturaOrigem_Pedido.Value := true;
                            If Trim(cBanco.Text) <> '' then PedidosFaturaBanco.Value := BancosCodigo.AsInteger;
                            if Trim(cCentroCusto.Text) <> '' then begin
                               PedidosFaturaCentro_Custo.Value := CentroCustoCodigo.Value;
                            end;;
              PedidosFatura.Post;

              i := 1;
              TabParcelas.First;
              While not TabParcelas.Eof do begin
                    PedidosDuplicata.Append;
                                     PedidosDuplicataDuplicata.Value       := PoeZero(9,PedidosNumero.Value)+InttoStr(i);
                                     PedidosDuplicataFatura.Value          := PedidosNumero.AsString;
                                     PedidosDuplicataData_Vencimento.Value := TabParcelasVencimento.Value;
                                     PedidosDuplicataValor.Value           := TabParcelasValor.Value;
                                     PedidosDuplicataValor_Liquido.Value   := TabParcelasValor.Value;
                                     PedidosDuplicataValor_Produto.Value   := TabParcelasValor_Produto.Value;
                                     PedidosDuplicataValor_IPI.Value       := TabParcelasValor_IPI.Value;
                                     If TabParcelas.RecordCount > 1 then
                                        PedidosDuplicataVencimento.Value := ModalidadesPgto.FieldbyName('Prazo_Demais').AsString + ' dias'
                                     else
                                        PedidosDuplicataVencimento.Value := 'A VISTA';
                                     PedidosDuplicataPedido.Value        := PedidosNumero.AsInteger;
                                     PedidosDuplicataOrdem.Value         := i;
                                     PedidosDuplicataData_Emissao.Value  := Date;
                                     PedidosDuplicataNumero.Value        := PoeZero(9,PedidosNumero.Value)+Chr(64+i);
                                     PedidosDuplicataAdiantamento.Value  := TabParcelasAdiantamento.Value;
                    PedidosDuplicata.Post;
                    TabParcelas.Next;
                    Inc(i);
              End;

              TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
              TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(PedidosNumero.Value))+Trim(InttoStr(PedidosCliente_Codigo.Value));
              TabParcelas.Execute;

              // Salva a modalidade utilizada na nota fiscal de saida.
              Pedidos.Edit;
                      PedidosModalidade_Pgto.Value := ModalidadesPgtoCodigo.Value;
              Pedidos.Post;
           End;

           // Registro de Nota fiscal de serviço prestado ja emitida.
           if mTipoNF = 5 then begin
              // Gerando contas a receber.
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData)');
              PagarReceber.ParamByName('pData').AsDate := NotasServicoData_Emissao.Value;
              PagarReceber.Open;

              ReferenciasFiscais.Locate('Codigo', NotasServicoReferencia_Fiscal.Value, [loCaseInsensitive]);
              ClassificacaoFinanceira.Locate('Codigo', ReferenciasFiscaisClassificacao_TotalNota.Value, [loCaseInsensitive]);

              // Duplicatas (Parcelas).
              if cValor.Value > 0 then begin
                 while not TabParcelas.Eof do begin
                       tProvisao.SQL.Clear;
                       tProvisao.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
                       tProvisao.Open;

                       PagarReceber.Append;
                                    PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                                    PagarReceberTipo.Value             := 'R';
                                    PagarReceberClassificacao.Value    := ReferenciasFiscaisClassificacao_TotalNota.Value;
                                    PagarReceberCentro_Custo.Value     := NotasServicoCentro_Custo.Value;
                                    PagarReceberData_Documento.Value   := NotasServicoData_Emissao.Value;
                                    PagarReceberData_Vencimento.Value  := TabparcelasVencimento.Value;
                                    PagarReceberValor_Documento.Value  := NotasServicoTotal_Nota.Value;
                                    PagarReceberValor_Parcela.Value    := TabParcelasValor.Value;
                                    PagarReceberMulta.Value            := 0;
                                    PagarReceberJuros.Value            := 0;
                                    PagarReceberDesconto.Value         := 0;
                                    PagarReceberValor_Total.Value      := NotasServicoTotal_Nota.Value;
                                    PagarReceberValor_Operacao.Value   := NotasServicoTotal_Nota.Value;
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
                                    PagarReceberBanco.Value            := BancosCodigo.Value;
                                    PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                    PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                       PagarReceber.Post;
                       tProvisao.Close;
                       TabParcelas.Next;
                 end;

                 // Lancamento no financeiro "ISS".
                 tProvisao.SQL.Clear;
                 tProvisao.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
                 tProvisao.Open;

                 Impostos.Open;
                 Impostos.Locate('Codigo', 'ISS', [loCaseInsensitive]);

                 if ImpostosClassificacao_Financeira.Value <> '' then begin
                    // Calculo do vencimento com base no dia do vencimento do imposto.
                    mVencISS := NotasServicoData_Emissao.Value + ( DayOf(UltimoDiaMes(NotasServicoData_Emissao.Value))-DayOf(NotasServicoData_Emissao.Value) + ImpostosDia_Vencimento.AsInteger);
                    mVencISS := DiaUtil(mVencISS, ConfiguracaoDia_Util.AsString);

                    PagarReceber.Append;
                                 PagarReceberNumero.Value           := tProvisaoNumero.Value + 1;
                                 PagarReceberTipo.Value             := 'P';
                                 PagarReceberClassificacao.Value    := ImpostosClassificacao_Financeira.Value;
                                 PagarReceberCentro_Custo.Value     := NotasServicoCentro_Custo.Value;
                                 PagarReceberData_Documento.Value   := NotasServicoData_Emissao.Value;
                                 PagarReceberData_Vencimento.Value  := mVencISS;
                                 PagarReceberValor_Documento.Value  := NotasServicoValor_ISS.Value;
                                 PagarReceberValor_Parcela.Value    := NotasServicoValor_ISS.Value;
                                 PagarReceberMulta.Value            := 0;
                                 PagarReceberJuros.Value            := 0;
                                 PagarReceberDesconto.Value         := 0;
                                 PagarReceberValor_Total.Value      := NotasServicoValor_ISS.Value;
                                 PagarReceberValor_Operacao.Value   := NotasServicoValor_ISS.Value;
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
                                 PagarReceberBanco.Value            := BancosCodigo.Value;
                                 PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
                                 PagarReceberFilial.Value           := EmpresasNumero_Filial.AsInteger;
                    PagarReceber.Post;
                    tProvisao.Close;
                 end;
              end;

              // Gerando lançamentos contabeis.
              //LancamentoContabil;
           end;
      End;
      Close;
end;

procedure TModalidadePgto_PedidoParcelas.cFormaPgtoClick(Sender: TObject);
begin
      // Gerando as parcelas das duplicatas pela modalidade de pagamento.
      With Dados, dmFiscal do begin
           TabParcelas.SQL.Clear;
           if mTipoNF = 3 then begin
              ModalidadeParcelas(PedidoServicoTotal_Nota.Value, 0, 0, Date, ModalidadesPgtoNumero_Parcelas.Value, ModalidadesPgtoPrazo_Primeira.Value, ModalidadesPgtoPrazo_Demais.Value, PedidoServicoNumero.AsString, PedidoServicoCliente.AsString, ModalidadesPgtoPrazo_Dia.AsInteger, ModalidadesPgtoCodigo.AsInteger);
           end;
           if mTipoNF = 5 then begin
              ModalidadeParcelas(NotasServicoTotal_Nota.Value, 0, 0, Date, ModalidadesPgtoNumero_Parcelas.Value, ModalidadesPgtoPrazo_Primeira.Value, ModalidadesPgtoPrazo_Demais.Value, PedidoServicoNumero.AsString, NotasServicoCliente.AsString, ModalidadesPgtoPrazo_Dia.AsInteger, ModalidadesPgtoCodigo.AsInteger);
           end;
           if (mTipoNF <> 3) and (mTipoNF <> 5) then begin
              ModalidadeParcelas(PedidosValor_TotalNota.Value, PedidosValor_TotalProdutos.Value, PedidosValor_TotalIPI.Value, PedidosData_Emissao.Value, ModalidadesPgtoNumero_Parcelas.Value, ModalidadesPgtoPrazo_Primeira.Value, ModalidadesPgtoPrazo_Demais.Value, PedidosNumero.AsString, PedidosCliente_Codigo.AsString, ModalidadesPgtoPrazo_Dia.AsInteger, ModalidadesPgtoCodigo.AsInteger);
           end;
           TabParcelas.First;
      End;
      SomaParcelas;
      Grade.Enabled := cFormaPgto.Text <> '';
end;

procedure TModalidadePgto_PedidoParcelas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.TabParcelas.Close;
      LimpaMemoria;
      ModalidadePgto_PedidoParcelas.Release;
      ModalidadePgto_PedidoParcelas := nil;
end;

procedure TModalidadePgto_PedidoParcelas.bCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TModalidadePgto_PedidoParcelas.GradeExit(Sender: TObject);
begin
      SomaParcelas;      
end;

procedure TModalidadePgto_PedidoParcelas.FormShow(Sender: TObject);
begin
      With Dados,dmFiscal do begin
           If mTipoNF = 3 then
              cTotalNota.Value := Dados.PedidoServicoTotal_Nota.Value;
           If mTipoNF = 4 then
              cTotalNota.Value := Dados.PedidosValor_TotalNota.Value;
           If mTipoNF = 5 then
              cTotalNota.Value := dmFiscal.NotasServicoTotal_Nota.Value;

           PedidosFatura.SQL.Clear;
           PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE Pedido = :pPedido');
           PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosFatura.Open;

           cFormaPgto.KeyValue   := PedidosFaturaForma_Pgto.Value;
           cBanco.KeyValue       := PedidosFaturaBanco.Value;
           cCentroCusto.KeyValue := PedidosFaturaCentro_Custo.Value;

           PedidosDuplicata.SQL.Clear;
           PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE Pedido = :pPedido');
           PedidosDuplicata.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           PedidosDuplicata.Open;

           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(PedidosFaturaPedido.AsString)+Trim(PedidosFaturaCliente.AsString);
           TabParcelas.Execute;
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('SELECT * FROM TabParcelas WHERE (Registro = :pRegistro) ORDER BY Registro, Parcela');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(PedidosFaturaPedido.AsString)+Trim(PedidosFaturaCliente.AsString);
           TabParcelas.Open;

           While not PedidosDuplicata.Eof do begin
                 TabParcelas.Append;
                             TabParcelasRegistro.Value      := Trim(PedidosFaturaPedido.AsString)+Trim(PedidosFaturaCliente.AsString);
                             TabParcelasParcela.Value       := InttoStr(PedidosDuplicataOrdem.Value)+'/'+InttoStr(PedidosDuplicata.RecordCount);
                             TabParcelasVencimento.Value    := PedidosDuplicataData_Vencimento.Value;
                             TabParcelasValor.Value         := PedidosDuplicataValor.Value;
                             TabParcelasValor_Produto.Value := PedidosDuplicataValor_Produto.Value;
                             TabParcelasValor_IPI.Value     := PedidosDuplicataValor_IPI.Value;
                 TabParcelas.Post;

                 PedidosDuplicata.Next;
           End;
      End;
      bGerar.Enabled := cTotalNota.Value > 0;
end;

procedure TModalidadePgto_PedidoParcelas.lFormaPgtoClick(Sender: TObject);
begin
      Cadastro_ModalidadesPagamento := TCadastro_ModalidadesPagamento.Create(Self);
      Cadastro_ModalidadesPagamento.Caption := Caption;
      Cadastro_ModalidadesPagamento.ShowModal;
      Dados.ModalidadesPgto.Open;
end;

procedure TModalidadePgto_PedidoParcelas.mRemoverClick(Sender: TObject);
begin
      With Dados do begin
           // Pedido de nota fiscal de serviço.
           If mTipoNF = 3 then begin
              // Apaga todas as parcelas da modalidade de pagamento.
              PedidoServicoParcelas.SQL.Clear;
              PedidoServicoParcelas.SQL.Add('DELETE FROM PedidoServicoParcelas WHERE (Pedido = :pPedido)');
              PedidoServicoParcelas.ParamByName('pPedido').AsInteger := PedidoServicoNumero.Value;
              PedidoServicoParcelas.Execute;
              PedidoServicoParcelas.SQL.Clear;
              PedidoServicoParcelas.SQL.Add('SELECT * FROM PedidoServicoParcelas WHERE (Pedido = :pPedido)');
              PedidoServicoParcelas.ParamByName('pPedido').AsInteger := PedidoServicoNumero.Value;
              PedidoServicoParcelas.Open;
              TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
              TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(PedidoServicoNumero.Value))+Trim(InttoStr(PedidoServicoCliente.Value));
              TabParcelas.Execute;

              // Salva a modalidade utilizada na nota fiscal de saida.
              PedidoServico.Edit;
                            PedidoServicoModalidade_Pgto.Clear;
              PedidoServico.Post;
           End;

           // Pedido de nota fiscal de saída.
           If mTipoNF = 4 then begin
              With Dados, dmFiscal do Begin
                   PedidosFatura.SQL.Clear;
                   PedidosFatura.SQL.Add('DELETE FROM PedidosFatura WHERE (Pedido = :pPedido)');
                   PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                   PedidosFatura.Execute;

                   PedidosDuplicata.SQL.Clear;
                   PedidosDuplicata.SQL.Add('DELETE FROM PedidosDuplicata WHERE (Fatura = :pPedido)');
                   PedidosDuplicata.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                   PedidosDuplicata.Execute;

                   PedidosFatura.SQL.Clear;
                   PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE (Pedido = :pPedido)');
                   PedidosFatura.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                   PedidosFatura.Open;

                   PedidosDuplicata.SQL.Clear;
                   PedidosDuplicata.SQL.Add('SELECT * FROM PedidosDuplicata WHERE (Fatura = :pPedido)');
                   PedidosDuplicata.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
                   PedidosDuplicata.Execute;

                   TabParcelas.SQL.Add('DELETE FROM TabParcelas WHERE (Registro = :pRegistro)');
                   TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(PedidosNumero.Value))+Trim(InttoStr(PedidosCliente_Codigo.Value));
                   TabParcelas.Execute;
              End;
           End;
      End;
end;

procedure TModalidadePgto_PedidoParcelas.GradeCellClick(Column: TColumn);
begin
     with Dados do begin
          if Column.FieldName = 'Adiantamento' then begin
             TabParcelas.Edit;
                         TabParcelas.FieldByName('Adiantamento').value := not TabParcelas.FieldByName('Adiantamento').asboolean;
             TabParcelas.post;
          end;
     end;
end;

procedure TModalidadePgto_PedidoParcelas.FormActivate(Sender: TObject);
begin
      With Dados do begin
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('SELECT * FROM TabParcelas WHERE (Registro = :pRegistro)');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(PedidosNumero.Value))+Trim(InttoStr(PedidosCliente_Codigo.Value));
           TabParcelas.Open;
      End;
end;

procedure TModalidadePgto_PedidoParcelas.bCalcClick(Sender: TObject);
begin
      // Recalculo das parcelas com base no primeiro valor.
      with Dados do begin
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('SELECT * FROM TabParcelas WHERE Registro = :pRegistro ORDER BY Vencimento');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(PedidosNumero.Value))+Trim(InttoStr(PedidosCliente_Codigo.Value));
           TabParcelas.Open;
           TabParcelas.First;

           cValor.Value := cTotalNota.Value - TabParcelasValor.Value;
           mValor       := cValor.Value / (ModalidadesPgtoNumero_Parcelas.Value-1);

           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('UPDATE TabParcelas SET Valor = :pValor WHERE Registro = :pRegistro AND SUBSTRING(Parcela, 1, 2) <> ''1/'' ');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(PedidosNumero.Value))+Trim(InttoStr(PedidosCliente_Codigo.Value));
           TabParcelas.ParamByName('pValor').AsFloat     := mValor;
           TabParcelas.Execute;
           TabParcelas.SQL.Clear;
           TabParcelas.SQL.Add('SELECT * FROM TabParcelas WHERE Registro = :pRegistro ORDER BY Vencimento');
           TabParcelas.ParamByName('pRegistro').AsString := Trim(InttoStr(PedidosNumero.Value))+Trim(InttoStr(PedidosCliente_Codigo.Value));
           TabParcelas.Open;

           TabParcelas.First;
           cValor.Value := 0;
           While not TabParcelas.Eof do begin
                 cValor.Value := cValor.Value + TabParcelasValor.Value;
                 TabParcelas.Next;
           End;
           TabParcelas.First;
      end;
end;
(*
procedure TModalidadePgto_PedidoParcelas.LancamentoContabil;
Var
   mContaDebito  : String;
   mContaCredito : String;
begin
      With Dados, dmFiscal, dmContab do begin
           Lancamentos.SQL.Clear;
           Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE (Data = :pData)');
           Lancamentos.ParamByName('pData').AsDate := NotasServicoData_Emissao.Value;
           Lancamentos.Open;

           tLancamentos.SQL.Clear;
           tLancamentos.SQL.Add('SELECT  Numero   = (SELECT MAX(Numero)   FROM Lancamentos WHERE YEAR(Data) = :pAno)');
           tLancamentos.SQL.Add('       ,Registro = (SELECT MAX(Registro) FROM Lancamentos)');
           tLancamentos.ParamByName('pAno').AsInteger := YearOf(NotasServicoData_Emissao.Value);
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
                             LancamentosData.Value                  := NotasServicoData_Emissao.Value;
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
                          LancamentosData.Value                  := NotasServicoData_Emissao.Value;
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
                          LancamentosData.Value                  := NotasServicoData_Emissao.Value;
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
                          LancamentosData.Value                  := NotasServicoData_Emissao.Value;
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
                          LancamentosData.Value                  := NotasServicoData_Emissao.Value;
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
                          LancamentosData.Value                  := NotasServicoData_Emissao.Value;
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
                          LancamentosData.Value                  := NotasServicoData_Emissao.Value;
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
                          LancamentosData.Value                  := NotasServicoData_Emissao.Value;
                          LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := InttoStr(MonthOf(NotasServicoData_Emissao.Value))+'/'+InttoStr(YearOf(NotasServicoData_Emissao.Value));
                          LancamentosValor.Value                 := NotasServicoValor_ISS.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          lancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;
      End;
End;
*)
procedure TModalidadePgto_PedidoParcelas.SomaParcelas;
begin
      with Dados do begin
           TabParcelas.First;
           cValor.Value := 0;
           while not TabParcelas.Eof do begin
                 cValor.Value := cValor.Value + TabParcelasValor.Value;
                 TabParcelas.Next;
           end;
           TabParcelas.First;
      end;
end;

end.

