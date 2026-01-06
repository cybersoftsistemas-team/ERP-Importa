unit frmNotaFiscal_Impressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, Vcl.StdCtrls, Grids, DBGrids, RXDBCtrl,
  ATStandard, DB, MSAccess, MemDS, DBAccess, FUNCOES, Vcl.ComCtrls, DBCtrls, Maskutils,
  VrControls, VrSlideShow, VrSystem, VrAnimate, Mask,
   DrLabel, MMSystem, mdTabEnter, RxToolEdit;

type
  TNotaFiscal_Impressao = class(TForm)
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
    bGerar: TButton;
    bTudo: TButton;
    bTitulo: TATLabel;
    ProgressoNF: TProgressBar;
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
    cInfComplementares: TDBMemo;
    DataSource1: TDataSource;
    lProgresso: TLabel;
    Progresso: TProgressBar;
    lFormulario: TLabel;
    cDataEmissao: TDateEdit;
    StaticText2: TStaticText;
    tChecaData: TMSQuery;
    tChecaDataData_Emissao: TDateTimeField;
    cDataEntradaSaida: TDateEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cHora: TMaskEdit;
    TabEnter1: TTabEnter;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bTudoClick(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure ImprimirTopo;
    procedure ImprimirItens;
    procedure ImprimirBase(Quebra: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mEntra_Sai  : Integer;
    mNomeArq    : String;
    Arquivo     : TextFile;
    mValor      : String;
    mTipo       : String;
    mMascara    : String;
    mNota       : Integer;
    mLinha      : Integer;
    mDescricao  : String;
    mQtdeLinha  : Integer;
    mPosDesc    : Integer;
    mPagina     : Integer;
  end;

var
  NotaFiscal_Impressao: TNotaFiscal_Impressao;

implementation

uses frmDados, frmDMFiscal, frmMenu_Principal, frmNotaFiscal_ImpressaoOpcoes;

{$R *.dfm}

procedure TNotaFiscal_Impressao.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TNotaFiscal_Impressao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.Pedidos.Close;
      dmFiscal.AIDF.Close;
      dmFiscal.Notas.Close;
      Dados.ProcessosDOC.Close;
      Release;
      NotaFiscal_Impressao := nil;
end;

procedure TNotaFiscal_Impressao.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do Begin
           Pedidos.SQL.Clear;
           Pedidos.SQL.Add('SELECT * FROM Pedidos WHERE Saida_Entrada = :pSai_Entra');
           Pedidos.ParamByName('pSai_Entra').AsInteger := mEntra_Sai;
           Pedidos.Open;
      End;
      With dmFiscal do Begin
           Notas.SQL.Clear;
           Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE Saida_Entrada = :pSai_Entra ORDER BY Numero DESC');
           Notas.ParamByName('pSai_Entra').AsInteger := mEntra_Sai;
           Notas.Open;
           AIDF.Open;
      End;

      tChecaData.Open;
      If Date >= tChecaDataData_Emissao.Value then begin
         cDataEmissao.Date := Date;
         bGerar.Enabled    := True;
      End else begin
//         bGerar.Enabled := False;
         cDataEmissao.SetFocus;
      End;
      cDataEmissao.Setfocus;
      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Impressao.bTudoClick(Sender: TObject);
begin
       If bTudo.Caption = '&Todos' then begin
          bTudo.Caption := '&Nenhum';
          Grade.SelectAll;
       end else begin
          bTudo.Caption := '&Todos';
          Grade.UnselectAll;
       end;
end;

procedure TNotaFiscal_Impressao.bGerarClick(Sender: TObject);
Var
    mSel        : Integer;
    mVencimento : TDate;
    i           : Integer;
    mCampo      : String;
begin
       tChecaData.Close;
       tChecaData.Open;
       If cDataEmissao.Date < tChecaDataData_Emissao.Value then begin
          If Dados.ConfiguracaoAtivar_Som.Value = True then SndPlaySound('Erro.wav',SND_ASYNC);
          ShowMessage('Atenção!'+#13+'Você não pode gerar Notas Fiscais com data inferior a da última emitida.'+#13+'Data da última Nota Fiscal emitida:'+DatetoStr(tChecaDataData_Emissao.Value));
//          Abort;
       End;

       Screen.Cursor := crSQLWait;
       NotaFiscal_ImpressaoOpcoes := TNotaFiscal_ImpressaoOpcoes.Create(Self);
       cInfComplementares.Height  := 189;
       cInfComplementares.Width   := 481;
       
       Dados.Empresas.SQL.Clear;
       Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
       Dados.Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
       Dados.Empresas.Open;

       If Grade.SelCount = 0 then begin
          ShowMessage('Não há nenhum pedido selecionado para a impressão!');
       end else begin
          ProgressoNF.Visible := True;
          ProgressoNF.Max     := Grade.SelCount;
          ProgressoNF.Repaint;
          Progresso.Visible   := True;
          Progresso.Repaint;
          Progresso.Position  := 0;
          lProgresso.Visible  := True;
          lProgresso.Repaint;
          lFormulario.Visible := True;
          lFormulario.Repaint;

          For mSel := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
              If Dados.EmpresasSincronizar_NumeroNF.Value = False then begin
                 If mEntra_Sai = 0 then  begin
                    mNota := Dados.EmpresasNota_Entrada.Value + 1;
                    Dados.Empresas.Edit;
                          Dados.EmpresasNota_Entrada.Value := mNota;
                    Dados.Empresas.Post;
                 end else begin
                    mNota := Dados.EmpresasNota_Saida.Value + 1;
                    Dados.Empresas.Edit;
                          Dados.EmpresasNota_Saida.Value := mNota;
                    Dados.Empresas.Post;
                 End;
              end else begin
                 mNota := Dados.EmpresasNota_Saida.Value + 1;
                 Dados.Empresas.Edit;
                       Dados.EmpresasNota_Entrada.Value := mNota;
                       Dados.EmpresasNota_Saida.Value   := mNota;
                 Dados.Empresas.Post;
              End;
              If NotaFiscal_ImpressaoOpcoes.cNota.Value = 0 then begin
                 NotaFiscal_ImpressaoOpcoes.cNota.Value    := mNota;
                 NotaFiscal_ImpressaoOpcoes.cNota.MinValue := mNota;
              End;

              // Copiando os dados do pedido para a nota fiscal.
              dmFiscal.Notas.Append;
                             dmFiscal.NotasNumero.Value                 := mNota;
                             dmFiscal.NotasPedido.Value                 := Dados.PedidosNumero.Value;
                             dmFiscal.NotasSaida_Entrada.Value          := Dados.PedidosSaida_Entrada.Value;
                             dmFiscal.NotasData_Emissao.Value           := cDataEmissao.Date;
                             If cDataEntradaSaida.Text <> '  /  /    ' then begin
                                dmFiscal.NotasData_EntradaSaida.Value := cDataEntradaSaida.Date;
                                dmFiscal.NotasHora_EntradaSaida.Value := cHora.Text;
                             End;
                             dmFiscal.NotasTipo_Nota.Value              := Dados.PedidosTipo_Nota.Value;
                             dmFiscal.NotasProcesso.Value               := Dados.PedidosProcesso.Value;
                             dmFiscal.NotasFUNDAP.Value                 := Dados.PedidosFUNDAP.Value;
                             If mEntra_Sai = 0 then begin
                                dmFiscal.NotasModelo.Value := Dados.EmpresasNFEntrada_Modelo.Value;
                                dmFiscal.NotasSerie.Value  := Dados.EmpresasNFEntrada_Serie.Value;
                             end else begin
                                dmFiscal.NotasModelo.Value := Dados.EmpresasNFSaida_Modelo.Value;
                                dmFiscal.NotasSerie.Value  := Dados.EmpresasNFSaida_Serie.Value;
                             end;
                             dmFiscal.NotasLucro.Value                  := Dados.PedidosLucro.Value;
                             dmFiscal.NotasDI.Value                     := Dados.PedidosDI.Value;
                             dmFiscal.NotasData_DI.Value                := Dados.PedidosData_DI.Value;
                             dmFiscal.NotasNatureza_Codigo.Value        := Dados.PedidosNatureza_Codigo.Value;
                             dmFiscal.NotasInscricao_Substituto.Value   := Dados.PedidosInscricao_Substituto.Value;
                             dmFiscal.NotasInf_Complementares.Value     := Dados.PedidosInf_Complementares.Value;
                             dmFiscal.NotasCliente_Codigo.Value         := Dados.PedidosCliente_Codigo.Value;
                             dmFiscal.NotasFornecedor_Codigo.Value      := Dados.PedidosFornecedor_Codigo.Value;
                             dmFiscal.NotasEstado.Value                 := Dados.PedidosEstado.Value;
                             dmFiscal.NotasTransportador_Codigo.Value   := Dados.PedidosTransportador_Codigo.Value;
                             dmFiscal.NotasVolume_Quantidade.Value      := Dados.PedidosVolume_Quantidade.Value;
                             dmFiscal.NotasVolume_Especie.Value         := Dados.PedidosVolume_Especie.Value;
                             dmFiscal.NotasVolume_Marca.Value           := Dados.PedidosVolume_Marca.Value;
                             dmFiscal.NotasVolume_Numero.Value          := Dados.PedidosVolume_Numero.Value;
                             dmFiscal.NotasVolume_PesoLiquido.Value     := Dados.PedidosVolume_PesoLiquido.Value;
                             dmFiscal.NotasVolume_PesoBruto.Value       := Dados.PedidosVolume_PesoBruto.Value;
                             dmFiscal.NotasValor_PIS.Value              := Dados.PedidosValor_PIS.Value;
                             dmFiscal.NotasValor_COFINS.Value           := Dados.PedidosValor_COFINS.Value;
                             dmFiscal.NotasAliquota_ICMSOper.Value      := Dados.PedidosAliquota_ICMSOper.Value;
                             dmFiscal.NotasBCICMS.Value                 := Dados.PedidosBCICMS.Value;
                             dmFiscal.NotasValor_ICMS.Value             := Dados.PedidosValor_ICMS.Value;
                             dmFiscal.NotasAliquota_ICMSSub.Value       := Dados.PedidosAliquota_ICMSSub.Value;
                             dmFiscal.NotasBCICMS_Substitutivo.Value    := Dados.PedidosBCICMS_Substitutivo.Value;
                             dmFiscal.NotasValorICMS_Substitutivo.Value := Dados.PedidosValorICMS_Substitutivo.Value;
                             dmFiscal.NotasValor_TotalProdutos.Value    := Dados.PedidosValor_TotalProdutos.Value;
                             dmFiscal.NotasTotal_Frete.Value            := Dados.PedidosTotal_Frete.Value;
                             dmFiscal.NotasValor_Seguro.Value           := Dados.PedidosValor_Seguro.Value;
                             dmFiscal.NotasValor_OutrasDespesas.Value   := Dados.PedidosValor_OutrasDespesas.Value;
                             dmFiscal.NotasBCIPI.Value                  := Dados.PedidosBCIPI.Value;
                             dmFiscal.NotasValor_TotalIPI.Value         := Dados.PedidosValor_TotalIPI.Value;
                             dmFiscal.NotasValor_TotalII.Value          := Dados.PedidosValor_TotalII.Value;
                             dmFiscal.NotasValor_TotalNota.Value        := Dados.PedidosValor_TotalNota.Value;
                             dmFiscal.NotasRateio_Despesas.Value        := Dados.PedidosRateio_Despesas.Value;
                             dmFiscal.NotasValor_TotalMVA.Value         := Dados.PedidosValor_TotalMVA.Value;
                             dmFiscal.NotasValor_ICMSReducao.Value      := Dados.PedidosValor_ICMSReducao.Value;
                             dmFiscal.NotasDesconto_Percentual.Value    := Dados.PedidosDesconto_Percentual.Value;
                             dmFiscal.NotasDesconto_Tipo.Value          := Dados.PedidosDesconto_Tipo.Value;
                             dmFiscal.NotasNota_Referencia.Value        := Dados.PedidosNota_Referencia.Value;
                             dmFiscal.NotasData_Referencia.Value        := Dados.PedidosData_Referencia.Value;
                             dmFiscal.NotasCancelada.Value              := False;
                             dmFiscal.NotasModalidade_Pgto.Value        := Dados.PedidosModalidade_Pgto.Value;
                             dmFiscal.NotasTotal_Descontos.Value        := Dados.PedidosTotal_Descontos.Value;
              dmFiscal.Notas.Post;

              Dados.Pedidos.Edit;
                    Dados.PedidosData_Emissao.Value := cDataEmissao.Date;
                    If cDataEntradaSaida.Text <> '  /  /    ' then begin
                       Dados.PedidosData_EntradaSaida.Value := cDataEntradaSaida.Date;
                       Dados.PedidosHora_EntradaSaida.Value := cHora.Text;
                    End;
              Dados.Pedidos.Post;

              // Copiando os itens do pedido para os itens da nota fiscal.
              Dados.PedidosItens.Close;
              Dados.PedidosItens.SQL.Clear;
              Dados.PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE Pedido = :pPedido');
              Dados.PedidosItens.ParamByName('pPedido').AsInteger := Dados.PedidosNumero.Value;
              Dados.PedidosItens.Open;

              dmFiscal.NotasItens.Close;
              dmFiscal.NotasItens.SQL.Clear;
              dmFiscal.NotasITens.SQL.Add('SELECT * FROM NotasItens WHERE Nota = :pNota ORDER BY NCM');
              dmFiscal.NotasItens.ParamByName('pNota').AsInteger := mNota;
              dmFiscal.NotasItens.Open;

              // Selecionando os itens da adição da DI para disponibilizar o estoque.
              Dados.Adicoes.Close;
              Dados.Adicoes.SQL.Clear;
              Dados.Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE DI = :pDI');
              Dados.Adicoes.ParamByName('pDI').AsString := Dados.PedidosDI.AsString;
              Dados.Adicoes.Open;

              While not Dados.PedidosItens.Eof do begin
                    // Posiciona na tabela de produtos pelo item atual.
                    Dados.Produtos.Locate('Codigo', Dados.PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);

                    dmFiscal.NotasItens.Append;
                             dmFiscal.NotasItensNota.Value                 := mNota;
                             dmFiscal.NotasItensItem.Value                 := Dados.PedidosItensItem.Value;
                             dmFiscal.NotasItensCodigo_Mercadoria.Value    := Dados.PedidosItensCodigo_Mercadoria.Value;
                             dmFiscal.NotasItensData.Value                 := cDataEmissao.Date;
                             dmFiscal.NotasItensDescricao_Mercadoria.Value := Dados.PedidosItensDescricao_Mercadoria.Value;
                             dmFiscal.NotasItensNCM.Value                  := Dados.PedidosItensNCM.Value;
                             dmFiscal.NotasItensUnidade_Medida.Value       := Dados.PedidosItensUnidade_Medida.Value;
                             dmFiscal.NotasItensQuantidade.Value           := Dados.PedidosItensQuantidade.Value;
                             dmFiscal.NotasItensDisponivel.Value           := Dados.PedidosItensQuantidade.Value;
                             dmFiscal.NotasItensValor_Unitario.Value       := Dados.PedidosItensValor_Unitario.Value;
                             dmFiscal.NotasItensValor_Total.Value          := Dados.PedidosItensValor_Total.Value;
                             dmFiscal.NotasItensAliquota_IPI.Value         := Dados.PedidosItensAliquota_IPI.Value;
                             dmFiscal.NotasItensValor_IPI.Value            := Dados.PedidosItensValor_IPI.Value;
                             dmFiscal.NotasItensTotal_IPI.Value            := Dados.PedidosItensTotal_IPI.Value;
                             dmFiscal.NotasItensCodigoTrib_TabA.Value      := Dados.PedidosItensCodigoTrib_TabA.Value;
                             dmFiscal.NotasItensCodigoTrib_TabB.Value      := Dados.PedidosItensCodigoTrib_TabB.Value;
                             dmFiscal.NotasItensAdicao.Value               := Dados.PedidosItensAdicao.Value;
                             dmFiscal.NotasItensAliquota_II.Value          := Dados.PedidosItensAliquota_II.Value;
                             dmFiscal.NotasItensValor_II.Value             := Dados.PedidosItensValor_II.Value;
                             dmFiscal.NotasItensValor_BCICMSOper.Value     := Dados.PedidosItensValor_BCICMSOper.Value;
                             dmFiscal.NotasItensAliquota_ICMSOper.Value    := Dados.PedidosItensAliquota_ICMSOper.Value;
                             dmFiscal.NotasItensValor_ICMSOper.Value       := Dados.PedidosItensValor_ICMSOper.Value;
                             dmFiscal.NotasItensValor_BCICMSSub.Value      := Dados.PedidosItensValor_BCICMSSub.Value;
                             dmFiscal.NotasItensAliquota_ICMSSub.Value     := Dados.PedidosItensAliquota_ICMSSub.Value;
                             dmFiscal.NotasItensValor_ICMSSub.Value        := Dados.PedidosItensValor_ICMSSub.Value;
                             dmFiscal.NotasItensAliquota_MVA.Value         := Dados.PedidosItensAliquota_MVA.Value;
                             dmFiscal.NotasItensValor_MVA.Value            := Dados.PedidosItensValor_MVA.Value;
                             dmFiscal.NotasItensAliquota_ICMSReducao.Value := Dados.PedidosItensAliquota_ICMSReducao.Value;
                             dmFiscal.NotasItensValor_ICMSReducao.Value    := Dados.PedidosItensValor_ICMSReducao.Value;
                             dmFiscal.NotasItensValor_Seguro.Value         := Dados.PedidosItensValor_Seguro.Value;
                             dmFiscal.NotasItensValor_Frete.Value          := Dados.PedidosItensValor_Frete.Value;
                             dmFiscal.NotasItensValor_Despesa.Value        := Dados.PedidosItensValor_Despesa.Value;
                             dmFiscal.NotasItensAliquota_PIS.Value         := Dados.PedidosItensAliquota_PIS.Value;
                             dmFiscal.NotasItensValor_PIS.Value            := Dados.PedidosItensValor_PIS.Value;
                             dmFiscal.NotasItensAliquota_COFINS.Value      := Dados.PedidosItensAliquota_COFINS.Value;
                             dmFiscal.NotasItensValor_COFINS.Value         := Dados.PedidosItensValor_COFINS.Value;
                             dmFiscal.NotasItensPeso_Liquido.Value         := Dados.PedidosItensPeso_Liquido.Value;
                             dmFiscal.NotasItensPeso_Bruto.Value           := Dados.PedidosItensPeso_Bruto.Value;
                             dmFiscal.NotasItensVeiculo.Value              := Dados.ProdutosVeiculo.Value;
                             dmFiscal.NotasItensSaida_Entrada.Value        := Dados.PedidosSaida_Entrada.Value;
                             dmFiscal.NotasItensMovimenta_Inventario.Value := Dados.PedidosItensMovimenta_Inventario.Value;
                             dmFiscal.NotasItensMovimenta_Estoque.Value    := Dados.PedidosItensMovimenta_Estoque.Value;
                             dmFiscal.NotasItensCancelada.Value            := False;
                    dmFiscal.NotasItens.Post;

                    // Ajusta o estoque nas adições e no cadastro de produtos, quando nota de entrada ou saida.
                    Dados.TipoNota.Open;
                    Dados.TipoNota.Locate('Codigo', Dados.PedidosTipo_Nota.Value, [loCaseInsensitive]);

                    If Dados.TipoNotaMovimenta_Estoque.Value = True then begin
                       If dmFiscal.NotasSaida_Entrada.Value = 0 then begin
                          If Dados.Adicoes.Locate('Codigo_Mercadoria', Dados.PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]) = True then begin
                             Dados.Adicoes.Edit;
                                   Dados.AdicoesLancado_Saida.Value := Dados.AdicoesLancado_Saida.Value + Dados.PedidosItensQuantidade.Value;
                             Dados.Adicoes.Post;
                           End;
                           Dados.Produtos.Edit;
                                          Dados.ProdutosEstoque_Disponivel.Value := Dados.ProdutosEstoque_Disponivel.Value + Dados.PedidosItensQuantidade.Value;
                           Dados.Produtos.Post;
                       End else begin
                           Dados.Produtos.Edit;
                                 Dados.ProdutosEstoque_Disponivel.Value := Dados.ProdutosEstoque_Disponivel.Value - Dados.PedidosItensQuantidade.Value;
                           Dados.Produtos.Post;
                       End;
                    End;
                    Dados.PedidosItens.Next;
              End;

              // Criando as duplicatas definitivas na tabela de duplicatas.
              Dados.PedidosFatura.SQL.Clear;
              Dados.PedidosFatura.SQL.Add('SELECT * FROM PedidosFatura WHERE (Pedido = :pPedido)');
              Dados.PedidosFatura.ParamByName('pPedido').AsInteger := Dados.PedidosNumero.Value;
              Dados.PedidosFatura.Open;
              
              dmFiscal.Duplicatas.SQL.Clear;
              dmFiscal.Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE (Nota = :pNota AND Data_Nota = :pData)');
              dmFiscal.Duplicatas.ParamByName('pNota').AsInteger := mNota;
              dmFiscal.Duplicatas.ParamByName('pData').AsDate    := cDataEmissao.Date;
              dmFiscal.Duplicatas.Open;

              If Dados.PedidosFatura.RecordCount <> 0 then begin
                 Dados.ModalidadesPgto.Open;
                 Dados.ModalidadesPgto.Locate('Codigo', Dados.PedidosModalidade_Pgto.Value, [loCaseInsensitive]);
                 i := 1;
                 While not Dados.PedidosFatura.Eof do begin
                       mCampo      := 'Parcela'+PoeZero(2,i);
                       mVencimento := cDataEmissao.Date + Dados.ModalidadesPgto.FieldbyName(mCampo).AsInteger;

                       // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
                       If (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
                          If (DayOfWeek(mVencimento) = 1) then begin
                             If (Dados.ConfiguracaoDia_Util.Value = '-') then
                                mVencimento := mVencimento -2
                             else
                                mVencimento := mVencimento +1;
                          End;
                          If (DayOfWeek(mVencimento) = 7) then begin
                             If (Dados.ConfiguracaoDia_Util.Value = '-') then
                                mVencimento := mVencimento -1
                             else
                                mVencimento := mVencimento +2;
                          End;
                       End;

                       dmFiscal.Duplicatas.Append;
//                             dmFiscal.DuplicatasDuplicata.Value       := PoeZero(9,mNota)+Char(64+i);
                             dmFiscal.DuplicatasDuplicata.Value       := PoeZero(9,Dados.EmpresasDuplicata.Value+1)+Char(64+i);
                             Dados.Empresas.Edit;
                                   Dados.EmpresasDuplicata.Value := Dados.EmpresasDuplicata.Value + 1;
                             Dados.Empresas.Post;       
                             dmFiscal.DuplicatasFatura.AsInteger      := mNota;
                             dmFiscal.DuplicatasData_Emissao.Value    := cDataEmissao.Date;
                             dmFiscal.DuplicatasNota.Value            :=  mNota;
                             dmFiscal.DuplicatasData_Nota.Value       := cDataEmissao.Date;
                             If Dados.ModalidadesPgto.FieldbyName(mCampo).AsInteger <> 0 then
                                dmFiscal.DuplicatasVencimento.Value      := Dados.ModalidadesPgto.FieldbyName(mCampo).AsString + ' dias'
                             else
                                dmFiscal.DuplicatasVencimento.Value      := 'A VISTA';

                             dmFiscal.DuplicatasData_Vencimento.Value := mVencimento;
                             dmFiscal.DuplicatasCliente.Value         := Dados.PedidosCliente_Codigo.Value;
                             dmFiscal.DuplicatasForma_Pgto.Value      := Dados.PedidosModalidade_Pgto.Value;
                             dmFiscal.DuplicatasValor.Value           := (Dados.PedidosValor_TotalNota.Value / Dados.PedidosFatura.RecordCount);
                             dmFiscal.DuplicatasDesconto.Value        := Percentual(Dados.PedidosValor_TotalNota.Value, Dados.PedidosDesconto_Percentual.Value);
                             dmFiscal.DuplicatasValor_Total.Value     := Dados.PedidosValor_TotalNota.Value;
                             dmFiscal.DuplicatasLinha.Value           := Dados.PedidosFaturaLinha.Value;
                       dmFiscal.Duplicatas.Post;
                       Dados.PedidosFatura.Next;
                       Inc(i);
                 End;
              End;

              // Bloqueia o processo de importação.
              Dados.ProcessosDOC.Open;
              Dados.ProcessosDOC.Locate('Processo', dmFiscal.NotasProcesso.Value, [loCaseInsensitive]);
              Dados.ProcessosDOC.Edit;
                    Dados.ProcessosDOCBloqueado.Value := True;
              Dados.ProcessosDOC.Post;

              Dados.TipoNota.Open;
              Dados.TipoNota.Locate('Codigo', Dados.PedidosTipo_Nota.Value, [loCaseInsensitive]);

              ImprimeItens.SQL.Clear;
              ImprimeItens.SQL.Add('SELECT * FROM Impressao WHERE (Posicao = '+QuotedStr('C')+') and (TipoNota = :pTipoNota) and (Imprimir = 1) ORDER BY Linha,Coluna');
              ImprimeItens.ParamByName('pTipoNota').AsInteger := Dados.PedidosTipo_Nota.Value;
              ImprimeItens.Open;

              mPagina  := 1;
              mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF'+PoeZero(6,dmFiscal.NotasNumero.Value)+'_FRM'+PoeZero(3,mPagina)+'.TXT';
              AssignFile(Arquivo, mNomeArq);
              ReWrite(Arquivo);

              LinhaAtual  := 1;
              ColunaAtual := 0;

              ImprimirTopo;
              ImprimirItens;
              ImprimirBase(False);
              CloseFile(Arquivo);

              ProgressoNF.Position := ProgressoNF.Position + 1;
          End;

          // Deleta o pedido e os itens da tabela de pedido e de itens.
          For mSel := 0 to Grade.SelectedRows.Count-1 do begin
              Dados.PedidosItens.SQL.Clear;
              Dados.PedidosItens.SQL.Add('DELETE FROM PedidosItens WHERE Pedido = :pPedido');
              Dados.PedidosItens.ParamByName('pPedido').AsInteger := Dados.PedidosNumero.Value;
              Dados.PedidosItens.Execute;
              Dados.Pedidos.Delete;
          End;

          NotaFiscal_ImpressaoOpcoes.cNota.MaxValue := mNota;
          NotaFiscal_ImpressaoOpcoes.cUltima.Value  := mNota;
          lProgresso.Repaint;
          NotaFiscal_ImpressaoOpcoes.ShowModal;
       End;

       Progresso.Visible   := False;
       ProgressoNF.Visible := False;
       lProgresso.Visible  := False;
       lFormulario.Visible := False;
       Screen.Cursor       := crDefault;
end;
//
// Rotina de impressão do topo da nota fiscal.
//
procedure TNotaFiscal_Impressao.ImprimirTopo;
begin
     Write(Arquivo, #27, #67 , Char(Dados.TipoNotaLinhas.Value) );
     Write(Arquivo, #27, #103, Char(15));  // Pitch 15ppp
     ImprimeTopo.SQL.Clear;
     ImprimeTopo.SQL.Add('SELECT * FROM Impressao WHERE (TipoNota = :pTipoNota) and (Posicao = '+QuotedStr('T')+') and (Imprimir = 1) ORDER BY Linha,Coluna');
     ImprimeTopo.ParamByName('pTipoNota').AsInteger := Dados.PedidosTipo_Nota.Value;
     ImprimeTopo.Open;
     ImprimeTopo.First;
     While not ImprimeTopo.Eof do Begin
           tTabela.Close;
           tTabela.Filtered  := False;
           tTabela.Filter    := '';
           tTabela.TableName := ImprimeTopoTabela.Value;
           If UpperCase(ImprimeTopoTabela.Value) = 'TRANSPORTADORES' then tTabela.TableName := 'FORNECEDORES';
           tTabela.Open;
           If UpperCase(ImprimeTopoTabela.Value) = 'CLIENTES'        then tTabela.Locate('Codigo', Dados.PedidosCliente_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeTopoTabela.Value) = 'FORNECEDORES'    then tTabela.Locate('Codigo', Dados.PedidosFornecedor_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeTopoTabela.Value) = 'NATUREZA'        then tTabela.Locate('Codigo', Dados.PedidosNatureza_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeTopoTabela.Value) = 'PEDIDOS'         then tTabela.Locate('Numero', Dados.PedidosNumero.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeTopoTabela.Value) = 'DUPLICATAS'      then begin
              tTabela.Close;
              tTabela.Filtered := False;
              tTabela.Filter   := 'Pedido = ' + InttoStr(Dados.PedidosNumero.Value) + 'and Linha = '+ InttoStr(ImprimeTopoLinha_Memo.Value);
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
              Say( ImprimeTopoLinha.Value, ImprimeTopoColuna.Value, Arquivo, #14+#27+#69+PoeZero(6,mNota)+#20+#27+#70 );
              Write(Arquivo, #27,#103, Char(15));    // Pitch 15ppp.
//              Write(Arquivo, #27,#33, Char(4));    // Pitch 17ppp. (Condensado)
           end else
              Say( ImprimeTopoLinha.Value, ImprimeTopoColuna.Value, Arquivo,Copy(mValor,1,ImprimeTopoTamanho.Value) );

           ImprimeTopo.Next;
     End;
End;
//
// Rotina de impressão dos itens da nota fiscal.
//
procedure TNotaFiscal_Impressao.ImprimirItens;
Var
    i       : Integer;
    mPagina : Integer;
    mFracao : Real;
    mInteiro: Real;
    mItem   : Integer;
begin
      tTabela.Close;
      tTabela.Filtered  := False;
      tTabela.TableName := ImprimeItensTabela.Value;
      tTabela.Filter    := 'Pedido = '+Dados.PedidosNumero.AsString;
      tTabela.Filtered  := True;
      tTabela.Open;
      mLinha  := ImprimeItensLinha.Value;
      mPagina := 1;
      Progresso.Position := 0;
      Progresso.Max      := tTabela.RecordCount;
      Progresso.Visible  := True;

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
                            mNomeArq    := Dados.ConfiguracaoPasta_Impressao.Value+'\NF'+PoeZero(6,dmFiscal.NotasNumero.Value)+'_FRM'+PoeZero(3,mPagina)+'.TXT';
                            AssignFile(Arquivo, mNomeArq);
                            ReWrite(Arquivo);
                            ImprimirTopo;
                            tTabela.Close;
                            tTabela.Filtered  := False;
                            tTabela.TableName := ImprimeItensTabela.Value;
                            tTabela.Filter    := 'Pedido = '+Dados.PedidosNumero.AsString;
                            tTabela.Filtered  := True;
                            tTabela.Open;
                            tTabela.Locate('Item', mItem, [loCaseInsensitive]);
                         End;
                     End;
                  End;
                  ImprimeItens.Next;
            End;
            tTabela.Next;
            Progresso.Position := Progresso.Position +1;
            Inc(mLinha);
            If mLinha > (ImprimeItensLinha.Value+(Dados.TipoNotaLinhas_Itens.Value-1)) then begin
               mItem := tTabela.FieldByName('Item').AsInteger;
               ImprimirBase(True);
               CloseFile(Arquivo);
               Inc(mPagina);
               mLinha      := ImprimeItensLinha.Value;
               LinhaAtual  := 1;
               ColunaAtual := 0;
               mNomeArq := Dados.ConfiguracaoPasta_Impressao.Value+'\NF'+PoeZero(6,dmFiscal.NotasNumero.Value)+'_FRM'+PoeZero(3,mPagina)+'.TXT';
               AssignFile(Arquivo, mNomeArq);
               ReWrite(Arquivo);
               ImprimirTopo;
               tTabela.Close;
               tTabela.Filtered  := False;
               tTabela.TableName := ImprimeItensTabela.Value;
               tTabela.Filter    := 'Pedido = '+Dados.PedidosNumero.AsString;
               tTabela.Filtered  := True;
               tTabela.Open;
               tTabela.Locate('Item', mItem, [loCaseInsensitive]);
            End;
      End;
End;
//
// Rotina de impressão da base da nota fiscal.
//
procedure TNotaFiscal_Impressao.ImprimirBase(Quebra: Boolean);
begin
     ImprimeBase.SQL.Clear;
     ImprimeBase.SQL.Add('SELECT * FROM Impressao WHERE (TipoNota = :pTipoNota) and (Posicao = '+QuotedStr('B')+') and (Imprimir = 1) ORDER BY Linha,Coluna');
     ImprimeBase.ParamByName('pTipoNota').AsInteger := Dados.PedidosTipo_Nota.Value;
     ImprimeBase.Open;
     ImprimeBase.First;
     tTabela.Filtered := False;
     tTabela.Filter   := '';
     While not ImprimeBase.Eof do Begin
           tTabela.Close;
           tTabela.Filtered  := False;
           tTabela.Filter    := '';
           tTabela.TableName := ImprimeBaseTabela.Value;
           If UpperCase(ImprimeBaseTabela.Value) = 'TRANSPORTADORES' then tTabela.TableName := 'FORNECEDORES';
           tTabela.Open;
           If UpperCase(ImprimeBaseTabela.Value) = 'CLIENTES'        then tTabela.Locate('Codigo', Dados.PedidosCliente_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeBaseTabela.Value) = 'FORNECEDORES'    then tTabela.Locate('Codigo', Dados.PedidosFornecedor_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeBaseTabela.Value) = 'NATUREZA'        then tTabela.Locate('Codigo', Dados.PedidosNatureza_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeBaseTabela.Value) = 'PEDIDOS'         then tTabela.Locate('Numero', Dados.PedidosNumero.Value, [loCaseInsensitive]);
//           If UpperCase(ImprimeBaseTabela.Value) = 'TRANSPORTADORES' then tTabela.Locate('Codigo', Dados.PedidosTransportador_Codigo.Value, [loCaseInsensitive]);
           If UpperCase(ImprimeBaseTabela.Value) = 'DUPLICATAS'   then begin
              tTabela.Close;
              tTabela.Filtered := False;
              tTabela.Filter   := 'Pedido = ' + InttoStr(Dados.PedidosNumero.Value) + 'and Linha = '+ InttoStr(ImprimeBaseLinha_Memo.Value);
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
              Say( ImprimeBaseLinha.Value, ImprimeBaseColuna.Value, Arquivo, #14+#27+#69+PoeZero(6,mNota)+#20+#27+#70 )
           else
              Say( ImprimeBaseLinha.Value, ImprimeBaseColuna.Value, Arquivo, Copy(mValor,1,ImprimeBaseTamanho.Value) );

           ImprimeBase.Next;
     End;
     Write(Arquivo,#12);
End;


procedure TNotaFiscal_Impressao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

end.
