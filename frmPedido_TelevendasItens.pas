unit frmPedido_TelevendasItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXDBCtrl, Vcl.StdCtrls, DBCtrls, RxLookup, Buttons, Vcl.ExtCtrls,
  DB, Vcl.ComCtrls, DBAccess, MSAccess, Funcoes, Math, Grids, system.UITypes, DBGrids, Mask, RxCurrEdit, MemDS, RxToolEdit, ClipBrd;

type
  TPedido_TelevendasItens = class(TForm)
    Panel3: TPanel;
    tPesquisa: TMSQuery;
    tEstoque: TMSQuery;
    tItem: TMSQuery;
    bSair: TButton;
    GroupBox1: TGroupBox;
    Image5: TImage;
    Image1: TImage;
    Label13: TLabel;
    Image2: TImage;
    Label15: TLabel;
    Label16: TLabel;
    Image4: TImage;
    Label19: TLabel;
    Image3: TImage;
    Label21: TLabel;
    lTotalICMS: TLabel;
    lTotalICMSST: TLabel;
    lTotalIPI: TLabel;
    lTotalDesconto: TLabel;
    lTotalProdutos: TLabel;
    tTotal: TMSQuery;
    Image6: TImage;
    Label1: TLabel;
    lTotalImpostos: TLabel;
    Navega: TDBNavigator;
    Panel4: TPanel;
    bPesquisa: TSpeedButton;
    bRecalculo: TSpeedButton;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    cProduto: TRxDBLookupCombo;
    cQuantidade: TDBEdit;
    StaticText8: TStaticText;
    cValor: TDBEdit;
    StaticText9: TStaticText;
    DBEdit12: TDBEdit;
    cTotal: TCurrencyEdit;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    DBEdit3: TDBEdit;
    StaticText3: TStaticText;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    cValorIPI: TCurrencyEdit;
    cValorICMS: TCurrencyEdit;
    StaticText5: TStaticText;
    DBEdit1: TDBEdit;
    cValorICMSST: TCurrencyEdit;
    StaticText10: TStaticText;
    DBEdit2: TDBEdit;
    cTotalIPI: TCurrencyEdit;
    cTotalICMS: TCurrencyEdit;
    cTotalICMSST: TCurrencyEdit;
    StaticText11: TStaticText;
    cValorImpostos: TCurrencyEdit;
    cTotalDesconto: TCurrencyEdit;
    StaticText12: TStaticText;
    cTotalUnitarioIPI: TCurrencyEdit;
    cValorUnitarioIPI: TCurrencyEdit;
    cTotalUnitario: TCurrencyEdit;
    StaticText14: TStaticText;
    cItem: TDBEdit;
    cValorDesconto: TCurrencyEdit;
    StaticText16: TStaticText;
    bCusto: TDBEdit;
    bPromocao: TButton;
    GradeItens: TDBGrid;
    Shape1: TShape;
    cImagem: TImage;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    lMinimo: TLabel;
    Label3: TLabel;
    Image7: TImage;
    lDisponivel: TLabel;
    Label7: TLabel;
    StaticText13: TStaticText;
    cTabela: TRxDBLookupCombo;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cProdutoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cQuantidadeExit(Sender: TObject);
    procedure cValorExit(Sender: TObject);
    procedure ApuraEstoque;
    procedure bPesquisaClick(Sender: TObject);
    procedure cDescontoPercExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bSairClick(Sender: TObject);
    procedure cItemChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Totaliza;
    procedure bPromocaoClick(Sender: TObject);
    procedure bCustoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mUF        : String;
    mValorMVA  : Real;
  end;

var
  Pedido_TelevendasItens: TPedido_TelevendasItens;

implementation

uses frmDados, frmDMFiscal, frmPesquisaGerais, frmDMComercial, frmPedido_TelevendasCatalogo;

{$R *.dfm}

procedure TPedido_TelevendasItens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      // Totalizando o pedido.
      With Dados do begin
           with tTotal do begin
                SQL.Clear;
                SQL.Add('select Total   = sum(isnull(Valor_Unitario, 0) * Quantidade)');
                SQL.Add('      ,Volumes = sum(isnull(Quantidade, 0))');
                SQL.Add('from   PedidosRepresentantesItens');
                SQL.Add('where  Pedido = :pPedido');
                ParamByName('pPedido').AsString := PedidosRepresentantesPedido.AsString;
                Open;
                PedidosRepresentantes.edit;
                                      PedidosRepresentantesTotal_Pedido.value         := FieldByName('Total').AsCurrency;
                                      PedidosRepresentantesTotal_PedidoOriginal.value := FieldByName('Total').AsCurrency;
                                      PedidosRepresentantesVolume_Quantidade.value    := FieldByName('Volumes').value;
                PedidosRepresentantes.post;
           end;
      End;
      Pedido_TelevendasItens.Release;
      Pedido_TelevendasItens := nil;
end;

procedure TPedido_TelevendasItens.cProdutoExit(Sender: TObject);
var
   mVlrVenda: real;
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal, dmComercial do begin
           If (PedidosRepresentantesItens.State = dsInsert) or (PedidosRepresentantesItens.State = dsEdit) then begin
              with NCM do begin
                   sql.clear;
                   sql.add('select * from NCM where NCM = :pNCM');
                   parambyname('pNCM').asstring := produtosncm.asstring;
                   open;
              end;
              with ICMS do begin 
                   sql.clear;
                   sql.add('select * from ICMS where UF = :puf');
                   parambyname('puf').asstring := PedidosRepresentantesCliente_Estado.asstring;
                   open;
              end;

              PedidosRepresentantesItensValor_Tabela.Value   := RoundTo(ProdutosValor_Venda.AsCurrency, -2);
              PedidosRepresentantesItensValor_Unitario.Value := ProdutosValor_Venda.AsCurrency + (ProdutosValor_Venda.AsCurrency * (ModalidadesPgtoPercentual_Venda.asfloat/100));
              if cTabela.Text <> '' then begin
                 mVlrVenda := ProdutosValor_Venda.value + (ProdutosValor_Venda.value * (ModalidadesPgtoPercentual_Venda.asfloat/100));
                 mVlrVenda := mVlrVenda + (mVlrVenda * (TabelaComissoesPercentual_Venda.asfloat/100));
                 PedidosRepresentantesItensValor_Unitario.Value := mVlrvenda;
              end;
              if (ProdutosPromocao.AsBoolean = true) and (ProdutosPromocao_Valor.AsFloat > 0) then begin
                 PedidosRepresentantesItensValor_Unitario.Value := RoundTo(ProdutosPromocao_Valor.AsCurrency, -5);
              end;
              if (ClientesConsumidor_Final.AsBoolean) and (ProdutosValor_ConsumidorFinal.AsCurrency > 0) then begin
                 PedidosRepresentantesItensValor_Unitario.Value := RoundTo(ProdutosValor_ConsumidorFinal.AsCurrency, -5);
              end;
              
              PedidosRepresentantesItensPeso_Unitario.Value := ProdutosPeso_Liquido.Value;
              PedidosRepresentantesItensAliquota_IPI.Value  := ProdutosAliquota_IPI.Value;
              PedidosRepresentantesItensDesconto.Value      := ProdutosDesconto_A.Value;

              // Pega a aliquota do ICMS da tabela de ICMS.
              mUF := Trim(ClientesEstado.Value)+'_Reducao';
              PedidosRepresentantesItensAliquota_ICMSRed.Value := NCM.FieldbyName(mUF).AsFloat;
              
              If NCMICMS_Operacional.Value = 0 then begin
                 //================================================= Mercadoria de origem importada. =================================================
                 // Contribuinte pessoa Juridica.
                 If Trim(NCMCodigoTrib_TabA2.AsString) <> '' then begin
                    If (NCMCodigoTrib_TabA2.AsInteger in[1, 2, 6, 7]) then begin
                       If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value <> True) then begin
                          PedidosRepresentantesItensAliquota_ICMS.Value := ICMSImp_Contribuinte.Value;
                       End;
                       // Não Contribuinte pessoa Juridica.
                       If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value = True) then begin
                          PedidosRepresentantesItensAliquota_ICMS.Value := ICMSImp_NContribuinte.Value;
                       End;
                       // Não Contribuinte pessoa Fisica.
                       If (ClientesCNPJ.Value = '') then begin
                          PedidosRepresentantesItensAliquota_ICMS.Value := ICMSImp_NContribuinte.Value;
                       End;
                    End;

                    //========================= Mercadoria de origem Nacional ou importada adquirida no mercado interno ==============================
                    // Contribuinte pessoa Juridica.
                    If (NCMCodigoTrib_TabA2.AsInteger in[0, 3, 4, 5]) then begin
                       If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value <> True) then begin
                          PedidosRepresentantesItensAliquota_ICMS.Value := ICMSNac_Contribuinte.Value;
                       End;
                       // Não Contribuinte pessoa Juridica.
                       If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value = True) then begin
                          PedidosRepresentantesItensAliquota_ICMS.Value := ICMSNac_NContribuinte.Value;
                       End;
                       // Não Contribuinte pessoa Fisica.
                       If (ClientesCNPJ.Value = '') then begin
                          PedidosRepresentantesItensAliquota_ICMS.Value := ICMSNac_NContribuinte.Value;
                       End;

                       // Simples Nacional.
                       If (ClientesSimples_Nacional.AsBoolean = true) then begin
                          PedidosRepresentantesItensAliquota_ICMS.Value := ICMSSimples_Nacional.AsFloat;
                       End;
                    End;
                 End;

                 // Não encontrando a estado na tabela de ICMS zera a aliquota do ICMS operacional.
                 If ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]) = false then begin
                    PedidosRepresentantesItensAliquota_ICMS.Value := 0;
                 End;
              end else begin
                  PedidosRepresentantesItensAliquota_ICMS.Value := NCMICMS_Operacional.Value;
              End;

              // Verifica se existe alíquota de ICMS informado no cadastro do produto.
              // Dentro do Estado.
              If (ClientesEstado.AsString = EmpresasEstado.AsString) and (ProdutosICMS_DentroEstado.AsFloat > 0) then begin
                 PedidosRepresentantesItensAliquota_ICMS.Value := ProdutosICMS_DentroEstado.ASFloat;
              End;
              // Fora do Estado.
              If (ClientesEstado.AsString <> EmpresasEstado.Value) and (ProdutosICMS_ForaEstado.AsFloat > 0) then begin
                 PedidosRepresentantesItensAliquota_ICMS.Value := ProdutosICMS_ForaEstado.ASFloat;
              End;

              // Verifica se o produto esta na tabela CAMEX.
              If (ProdutosTabela_CAMEX.AsBoolean = true) and (ICMSICMS_CAMEX.AsFloat > 0) then begin
                 PedidosRepresentantesItensAliquota_ICMS.Value := ICMSICMS_CAMEX.AsFloat;
              End;

              // Pegando a aliquota do MVA.
              mUF := Trim(PedidosRepresentantesCliente_Estado.Value)+'_MVA';

              If Dados.ClientesSimples_Nacional.AsBoolean = false then begin
                 PedidosRepresentantesItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
              end else begin
                 PedidosRepresentantesItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
              End;

              // Pegando a aliquota do ICMS Substitutivo.
              mUF := Trim(ClientesEstado.Value)+'_ICMS';
              PedidosRepresentantesItensAliquota_ICMSST.Value := NCM.FieldbyName(mUF).AsFloat;

              ApuraEstoque;
           End;
      End;
      Screen.Cursor := crDefault;
end;

procedure TPedido_TelevendasItens.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     with Dados, dmComercial do begin
          Configuracao.Open;
          with PedidosRepresentantesItens do begin
               sql.Clear;
               sql.Add('select *');
               sql.Add('      ,Descricao_Mercadoria = (select Descricao from Produtos where Codigo = Codigo_Mercadoria)');
               sql.Add('      ,Estoque_Minimo       = (select Estoque_Minimo from Produtos where Codigo = Codigo_Mercadoria)');
               sql.Add('      ,Valor_Total          = Quantidade * Valor_Unitario');
               sql.Add('from   PedidosRepresentantesItens');
               sql.Add('where  Pedido = :pPedido');
               sql.Add('order  by Item');
               ParamByName('pPedido').AsString := PedidosRepresentantes.FieldByName('Pedido').AsString;
               //sql.SaveToFile('c:\temp\Televendas_Itens.sql');
               Open;
               Navega.Controls[6].Enabled := PedidosRepresentantesItens.RecordCount > 0;
          end;
          with Produtos do begin
               sql.clear;
               sql.add('select *');
               sql.add('from  Produtos PD');
               sql.add('where isnull(Desativado, 0) = 0');
               if not ConfiguracaoTelevendas_EstoqueTerceiros.AsBoolean then begin
                  sql.add('  and (((isnull((select sum(Quantidade) from NotasItens ni                 where ni.Codigo_Mercadoria  = pd.Codigo and Saida_Entrada = 0 and Movimenta_Estoque = 1 and Cancelada <> 1 and isnull(ni.Nfe_Denegada, 0) = 0), 0) +');
                  sql.add('        isnull((select sum(Quantidade) from NotasTerceirosItens nti        where nti.Codigo_Mercadoria = pd.Codigo and Movimenta_Estoque = 1), 0) +');
                  sql.add('        isnull((select sum(Quantidade_Entrada) from ProdutosTransferencia  where Produto_Entrada       = pd.Codigo ), 0)) -');
                  sql.add('        (isnull((select sum(Quantidade) from NotasItens ni                 where ni.Codigo_Mercadoria  = pd.Codigo and Saida_Entrada = 1 and Movimenta_Estoque = 1 and Cancelada <> 1 and isnull(ni.Nfe_Denegada, 0) = 0), 0) -');
                  sql.add('        isnull((select sum(Quantidade) from PedidosItens pi                where PI.Codigo_Mercadoria  = pd.Codigo and Saida_Entrada = 1 and Movimenta_Estoque = 1 ), 0)) -');
                  sql.add('        isnull((select sum(Quantidade) from ProdutosTransferencia          where Produto_Saida         = pd.Codigo ), 0) -');
                  sql.add('        isnull((select sum(Quantidade) from PedidosRepresentantesItens PRI where Codigo_Mercadoria     = pd.Codigo and isnull(Faturamento, 0) = 0 and isnull(Faturado, 0) = 0');
                  sql.add('                                                                             and (select Cancelado FROM PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0), 0))');
                  sql.add('        ) > 0');
               end else begin
                  sql.add('  and (((isnull((select sum(quantidade) from NotasItens NI                 where ni.Codigo_Mercadoria  = pd.Codigo and Saida_Entrada = 0 and Movimenta_EstoqueRep = 1 and Cancelada <> 1 and isnull(ni.Nfe_Denegada, 0) = 0), 0) +');
                  sql.add('        isnull((select sum(Quantidade) from NotasTerceirosItens NTI        where nti.Codigo_Mercadoria = pd.Codigo and Movimenta_EstoqueRep = 1), 0) +');
                  sql.add('        isnull((select sum(Quantidade_Entrada) FROM ProdutosTransferencia  where Produto_Entrada       = pd.Codigo ), 0)) -');
                  sql.add('        (isnull((select sumQQuantidade) from NotasItens NI                 where ni.Codigo_Mercadoria  = pd.Codigo and Saida_Entrada = 1 and Movimenta_EstoqueRep = 1 and Cancelada <> 1 and isnull(ni.Nfe_Denegada, 0) = 0), 0) -');
                  sql.add('        isnull((select sum(Quantidade) from PedidosItens PI                where pi.Codigo_Mercadoria  = pd.Codigo and Saida_Entrada = 1 and Movimenta_EstoqueRep = 1 ), 0)) -');
                  sql.add('        isnull((select sum(Quantidade) from ProdutosTransferencia          where Produto_Saida         = pd.Codigo ), 0) -');
                  sql.add('        isnull((select sum(Quantidade) from PedidosRepresentantesItens PRI where Codigo_Mercadoria     = pd.Codigo and isnull(Faturamento, 0) = 0 and isnull(Faturado, 0) = 0');
                  sql.add('                                                                             and (select Cancelado from PedidosRepresentantes pr where PR.Pedido = pri.Pedido) = 0), 0))');
                  sql.add('        ) > 0');
               end;
               open;
          end;
          with TabelaComissoes do begin
               sql.Clear;
               sql.Add('select *');
               sql.Add('from TabelaComissoes');
               sql.Add('order by Descricao');
               //sql.SaveToFile('c:\temp\Televendas_Tabela_Comissoes.sql');
               Open;
          end;

          if PedidosRepresentantesItens.State = dsEdit then begin
             lDisponivel.Caption := FormatFloat(',##0.000', EstoqueProduto(ProdutosCodigo.AsInteger) + PedidosRepresentantesItensQuantidade.Value);
          end else begin
             lDisponivel.Caption := FormatFloat(',##0.000', EstoqueProduto(ProdutosCodigo.AsInteger) );
          end;
          lMinimo.Caption := FormatFloat(',##0.000', ProdutosEstoque_Minimo.Value);
     
          // Carrega a imagem do produtos se existir na pasta de imagens.
          cImagem.Picture := nil;
          if FileExists(ConfiguracaoPasta_Imagens.Value+'\'+ProdutosCodigo.asString+'.jpg') then begin
             try
                cImagem.Picture.LoadFromFile(ConfiguracaoPasta_Imagens.Value+'\'+ProdutosCodigo.asString+'.jpg');
             except
                cImagem.Picture := nil;
                if FileExists(ExtractFilePath(Application.ExeName)+'Produto Sem Foto.jpg') then begin
                   try
                     cImagem.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Produto Sem Foto.jpg');
                   except
                     cImagem.Picture := nil;
                   end;
                end;
             end;
          end else begin
              cImagem.Picture := nil;
              if FileExists(ExtractFilePath(Application.ExeName)+'Produto Sem Foto.jpg') then begin
                 try
                   cImagem.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Produto Sem Foto.jpg');
                 except
                   cImagem.Picture := nil;
                 end;
              end;
          end;
     end;
     Totaliza;
     
     Screen.Cursor := crDefault;
end;

procedure TPedido_TelevendasItens.cQuantidadeExit(Sender: TObject);
begin
     With Dados do begin
          cTotalUnitario.Value    := PedidosRepresentantesItensValor_Unitario.AsFloat * PedidosRepresentantesItensQuantidade.AsFloat;
          cValorIPI.Value         := PedidosRepresentantesItensValor_Unitario.AsFloat - (PedidosRepresentantesItensValor_Unitario.AsFloat / ( 1 + (PedidosRepresentantesItensAliquota_IPI.AsFloat/100)));
          cTotalIPI.Value         := cValorIPI.Value * PedidosRepresentantesItensQuantidade.AsFloat;
          cValorUnitarioIPI.Value := PedidosRepresentantesItensValor_Unitario.Value - cValorIPI.Value;
          cTotalUnitarioIPI.Value := cValorUnitarioIPI.Value * PedidosRepresentantesItensQuantidade.AsFloat;

          cValorDesconto.Value := Percentual(PedidosRepresentantesItensValor_Tabela.AsFloat, PedidosRepresentantesItensDesconto.AsFloat);
          cTotalDesconto.Value := cValorDesconto.Value * PedidosRepresentantesItensQuantidade.AsFloat;

          If ClientesConsumidor_Final.AsBoolean = true then begin
             cValorICMS.Value := Percentual(PedidosRepresentantesItensValor_Unitario.Value, PedidosRepresentantesItensAliquota_ICMS.AsFloat);
          end else begin
             cValorICMS.Value := Percentual(PedidosRepresentantesItensValor_Unitario.Value - cValorIPI.Value, PedidosRepresentantesItensAliquota_ICMS.AsFloat);
             If PedidosRepresentantesItensAliquota_ICMSRed.AsFloat > 0 then begin
                cValorICMS.Value := Percentual((PedidosRepresentantesItensValor_Unitario.Value - cValorIPI.Value), (PedidosRepresentantesItensAliquota_ICMSRed.AsFloat/PedidosRepresentantesItensAliquota_ICMS.AsFloat));
             End;
          End;
          cTotalICMS.Value := cValorICMS.Value * PedidosRepresentantesItensQuantidade.AsFloat;

          mValorMVA := 0;
          If PedidosRepresentantesItensAliquota_ICMSST.AsFloat > 0 then begin
             mValorMVA          := Percentual(PedidosRepresentantesItensValor_Unitario.Value, PedidosRepresentantesItensAliquota_MVA.AsFloat);
             cValorICMSST.Value := Percentual(PedidosRepresentantesItensValor_Unitario.Value + mValorMVA, PedidosRepresentantesItensAliquota_ICMSST.AsFloat) - cValorICMS.Value;
             cTotalICMSST.Value := cValorICMSST.Value * PedidosRepresentantesItensQuantidade.AsFloat;
          End;   

          cValorImpostos.Value := PedidosRepresentantesItensValor_Unitario.AsFloat + cValorICMSST.Value;
          cTotal.Value         := PedidosRepresentantesItensQuantidade.AsFloat * cValorImpostos.Value;
     End;
end;

procedure TPedido_TelevendasItens.cValorExit(Sender: TObject);
begin
      // Calcula o desconto dado pela diferença do valor unitario do cadastro do produto e o valor informado no pedido.
      With Dados do begin
           If PedidosRepresentantesItensValor_Unitario.Value < PedidosRepresentantesItensValor_Tabela.AsFloat then begin
              PedidosRepresentantesItensDesconto.Value := ((PedidosRepresentantesItensValor_Tabela.AsFloat - PedidosRepresentantesItensValor_Unitario.Value) * 100) / PedidosRepresentantesItensValor_Tabela.AsFloat;
           End;
      End;
      
      cQuantidadeExit(Self);
end;

procedure TPedido_TelevendasItens.ApuraEstoque;
begin
      Screen.Cursor := crSQLWait;
      // Calculando o estoque disponível.
      With Dados do begin
           with tEstoque do begin
                if PedidosRepresentantesItens.State = dsEdit then begin
                   lDisponivel.Caption := FormatFloat(',##0.000', EstoqueProduto(ProdutosCodigo.AsInteger) + PedidosRepresentantesItensQuantidade.Value);
                end else begin
                   lDisponivel.Caption := FormatFloat(',##0.000', EstoqueProduto(ProdutosCodigo.AsInteger) );
                end;
               lMinimo.Caption := FormatFloat(',##0.000', ProdutosEstoque_Minimo.Value);
                
               // Carrega a imagem do produtos se existir na pasta de imagens.
               cImagem.Picture := nil;
               if FileExists(ConfiguracaoPasta_Imagens.Value+'\'+ProdutosCodigo.asString+'.jpg') then begin
                  try
                     cImagem.Picture.LoadFromFile(ConfiguracaoPasta_Imagens.Value+'\'+ProdutosCodigo.asString+'.jpg');
                  except
                     cImagem.Picture := nil;
                     if FileExists(ConfiguracaoPasta_Imagens.Value+'\Produto Sem Foto.jpg') then begin
                        try
                          cImagem.Picture.LoadFromFile(ConfiguracaoPasta_Imagens.Value+'\Produto Sem Foto.jpg');
                        except
                          cImagem.Picture := nil;
                        end;
                     end;
                  end;
               end else begin
                  cImagem.Picture := nil;
                  if FileExists(ConfiguracaoPasta_Imagens.Value+'\Produto Sem Foto.jpg') then begin
                     try
                       cImagem.Picture.LoadFromFile(ConfiguracaoPasta_Imagens.Value+'\Produto Sem Foto.jpg');
                     except
                       cImagem.Picture := nil;
                     end;
                  end;
               end;
           end;
      End;
      Screen.Cursor := crDefault;
End;

procedure TPedido_TelevendasItens.bPesquisaClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Produtos';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Desativado <> 1';
      PesquisaGerais.Showmodal;
      cProduto.KeyValue := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
end;

procedure TPedido_TelevendasItens.cDescontoPercExit(Sender: TObject);
begin
     Dados.PedidosRepresentantesItensValor_Desconto.Value := Percentual(Dados.PedidosRepresentantesItensValor_Unitario.AsFloat, Dados.PedidosRepresentantesItensDesconto.AsFloat);
end;

procedure TPedido_TelevendasItens.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados, dmFiscal do begin
           If Button = nbPost then begin
              If PedidosRepresentantesItensCodigo_Mercadoria.Value <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'O código da mercadoria é campo obrigatório!', mtError, [mbOK], 0);
                 cCodigo.SetFocus;
                 Abort;
              End;
              If PedidosRepresentantesItensQuantidade.Value <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Quantidade informada é inválida!', mtError, [mbOK], 0);
                 cQuantidade.SetFocus;
                 Abort;
              End;
              If PedidosRepresentantesItensValor_Unitario.Value <= 0 then begin
                 MessageDlg('Erro!'+#13+#13+'Valor unitário informado é inválido!', mtError, [mbOK], 0);
                 cValor.SetFocus;
                 Abort;
              End;
              If PedidosRepresentantesItensQuantidade.Value > strtofloat(stringreplace(lDisponivel.Caption, '.', '',[rfReplaceAll])) then begin
                 MessageDlg('Erro!'+#13+#13+'Quantidade pedida indisponível no estoque!', mtError, [mbOK], 0);
                 cQuantidade.SetFocus;
                 Abort;
              End;
              If Trim(NCMCodigoTrib_TabA2.AsString) = '' then begin
                 MessageDlg('Falta informar o "CST ICMS Adiq.M.Int (Tab.A)" no cadastro da NCM!', mtError, [mbOK], 0);
                 cCodigo.SetFocus;
                 Abort;
              End;
              If PedidosRepresentantesItens.State = dsInsert then begin
                 with tItem do begin 
                      sql.clear;
                      sql.add('select count(*) as Qtde from PedidosRepresentantesItens where Pedido = :pPedido and Codigo_Mercadoria = :pCodigo');
                      parambyName('pPedido').AsString  := PedidosRepresentantesPedido.AsString;
                      parambyName('pCodigo').AsInteger := PedidosRepresentantesItensCodigo_Mercadoria.AsInteger;
                      open;
                      if tItem.FieldByName('Qtde').AsInteger > 0 then begin
                         MessageDlg('Produto já adicionado a este pedido!', mtError, [mbOK], 0);
                         cCodigo.SetFocus;
                         Abort;
                      end;
                 end;
              End;
              if PedidosRepresentantesItens.State = dsInsert then begin
                 with tItem do begin 
                      sql.clear;
                      sql.add('select isnull(max(Item), 0) as Item from PedidosRepresentantesItens where Pedido = :pPedido');
                      paramByName('pPedido').AsString := PedidosRepresentantesPedido.AsString;
                      open;
                 end;

                 PedidosRepresentantesItensItem.Value   := tItem.FieldByName('Item').AsInteger + 1;
                 PedidosRepresentantesItensPedido.Value := PedidosRepresentantesPedido.asstring;
              end;
              
              PedidosRepresentantesItensData.Value           := PedidosRepresentantesData.Value;
              PedidosRepresentantesItensFaturado.Value       := false;
              PedidosRepresentantesItensValor_Desconto.Value := cValorDesconto.Value;
              PedidosRepresentantesItensValor_ICMS.Value     := cValorICMS.Value;
              PedidosRepresentantesItensValor_ICMSST.Value   := cValorICMSST.Value;
              PedidosRepresentantesItensValor_IPI.Value      := cValorIPI.Value;
              PedidosRepresentantesItensFaturamento.Value    := false;
           End;
           If Button = nbDelete then begin
              If MessageDlg('Deseja realmente remover este item do pedido?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              End;
           End;
      End;
end;

procedure TPedido_TelevendasItens.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel4.Enabled := true;
         cTabela.SetFocus;
         cImagem.Picture := nil;
      end else begin
         Panel4.Enabled := false;
      End;
      If Button = nbPost then begin
         Dados.PedidosRepresentantesItens.Refresh;
         // Apura novamento o estoque para o caso de duas pessoas estarem digitando pedidos juntas.
         ApuraEstoque;
      End;
      If (Button = nbPost) or (Button = nbDelete) then Totaliza;
      Navega.Controls[6].Enabled := Dados.PedidosRepresentantesItens.RecordCount > 0;
      Screen.Cursor := crDefault;
end;

procedure TPedido_TelevendasItens.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_TelevendasItens.Button1Click(Sender: TObject);
begin
      Pedido_TelevendasCatalogo := TPedido_TelevendasCatalogo.create(self);
      Pedido_TelevendasCatalogo.Caption := caption;
      Pedido_TelevendasCatalogo.showmodal;
      Dados.PedidosRepresentantesItens.Refresh;
end;

procedure TPedido_TelevendasItens.cItemChange(Sender: TObject);
begin
      if (Dados.PedidosRepresentantesItens.State <> dsEdit) and (Dados.PedidosRepresentantesItens.State <> dsInsert) then begin
         ApuraEstoque;
         cQuantidadeExit(Self);
      end;
end;

procedure TPedido_TelevendasItens.FormCreate(Sender: TObject);
begin
      If (FileExists('fundo_barra.bmp')) then begin
         Image1.Picture.LoadFromFile('fundo_barra.bmp');
         Image2.Picture.Assign(Image1.Picture);
         Image3.Picture.Assign(Image1.Picture);
         Image4.Picture.Assign(Image1.Picture);
         Image5.Picture.Assign(Image1.Picture);
         Image6.Picture.Assign(Image1.Picture);
      End;
      If (FileExists('Fundo_Barra_Roxo.bmp')) then begin
         Image7.Picture.LoadFromFile('Fundo_Barra_Roxo.bmp');
      end;
end;

procedure TPedido_TelevendasItens.Totaliza;
begin
     Screen.Cursor := crSQLWait;
     // Calculando o estoque disponível.
     with tTotal do begin
          sql.clear;
          sql.add('select Total_IPI      = isnull(sum(isnull(Valor_IPI      * Quantidade, 0)), 0),');
          sql.add('       Total_ICMS     = isnull(sum(isnull(Valor_ICMS     * Quantidade, 0)), 0),');
          sql.add('       Total_ICMSST   = isnull(sum(isnull(Valor_ICMSST   * Quantidade, 0)), 0),');
          sql.add('       Total_Desconto = isnull(sum(isnull(Valor_Desconto * Quantidade, 0)), 0),');
          sql.add('       Total_Produtos = isnull(sum(isnull(Valor_Unitario * Quantidade, 0)), 0),');
          sql.add('       Total_Impostos = SUM((isnull(Valor_Unitario, 0) + isnull(Valor_ICMSST, 0)) * Quantidade)');
          sql.add('from PedidosRepresentantesItens');
          sql.add('where Pedido = :pPedido');
          paramByName('pPedido').AsString := Dados.PedidosRepresentantesPedido.AsString;
          open;

          lTotalIPI.Caption      := FormatFloat(',##0.00', FieldByName('Total_IPI').AsCurrency);
          lTotalICMS.Caption     := FormatFloat(',##0.00', FieldByName('Total_ICMS').AsCurrency);
          lTotalICMSST.Caption   := FormatFloat(',##0.00', FieldByName('Total_ICMSST').AsCurrency);
          lTotalDesconto.Caption := FormatFloat(',##0.00', FieldByName('Total_Desconto').AsCurrency);
          lTotalProdutos.Caption := FormatFloat(',##0.00', FieldByName('Total_Produtos').AsCurrency);
          lTotalImpostos.Caption := FormatFloat(',##0.00', FieldByName('Total_Impostos').AsCurrency);
     end;
     Screen.Cursor := crDefault;
End;


procedure TPedido_TelevendasItens.bPromocaoClick(Sender: TObject);
begin
      Dados.PedidosRepresentantesItensValor_Unitario.Value := RoundTo(Dados.ProdutosValor_CustoMedio.AsCurrency, -5);
end;

procedure TPedido_TelevendasItens.bCustoChange(Sender: TObject);
begin
      bPromocao.Enabled := Dados.ProdutosValor_CustoMedio.AsCurrency > 0;
end;

end.

