unit frmPedidosOutra_TerceirosReferenciaItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, CalcExpress, Menus,StdCtrls, Mask, RXCtrls, Vcl.ExtCtrls,
  DBCtrls, Grids, DBGrids, RXDBCtrl, Math, Funcoes, RxCurrEdit, RxToolEdit, MemDS, system.UITypes, strUtils;

type
  TPedidosOutra_TerceirosReferenciaItens = class(TForm)
    GroupBox2: TGroupBox;
    Grade2: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bInclui_Item: TButton;
    bInclui_Todos: TButton;
    GroupBox1: TGroupBox;
    Grade1: TDBGrid;
    Panel2: TPanel;
    StaticText3: TStaticText;
    StaticText17: TStaticText;
    cNotaReferencia: TCurrencyEdit;
    cDataReferencia: TDateEdit;
    PopupMenu1: TPopupMenu;
    mnIncluiItem: TMenuItem;
    mnIncluiAdicao: TMenuItem;
    mnIncluiTodos: TMenuItem;
    N1: TMenuItem;
    mnRemoveItem: TMenuItem;
    mnRemoveAdicao: TMenuItem;
    mnRemoveTodos: TMenuItem;
    N2: TMenuItem;
    mnSair: TMenuItem;
    mMacro: TCalcExpress;
    tItem: TMSQuery;
    tAdicoes: TMSQuery;
    bBuscar: TButton;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    tEntradaST: TMSQuery;
    StaticText4: TStaticText;
    cPercentualQtde: TCurrencyEdit;
    bInclui_Interv: TButton;
    procedure bBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bInclui_TodosClick(Sender: TObject);
    procedure AdicionaUm(pQtde, pValor: Real);
    procedure bInclui_ItemClick(Sender: TObject);
    procedure bInclui_IntervClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure PegaICMS;
    { Private declarations }
  public
    { Public declarations }
    mQtde,
    mValor : Real;
  end;

var
  PedidosOutra_TerceirosReferenciaItens: TPedidosOutra_TerceirosReferenciaItens;

implementation

uses frmDados, frmDMFiscal, frmJanela_Processamento, frmPedido_ItensOutros,
     frmPedido_ItensOutrosQuantidade;

{$R *.dfm}

procedure TPedidosOutra_TerceirosReferenciaItens.bBuscarClick(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           NotasTerceiros.SQL.Clear;
           NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE (Nota = :pNota) AND (Data_Emissao = :pData)');
           NotasTerceiros.ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
           NotasTerceiros.ParamByName('pData').AsDate    := cDataReferencia.Date;
           NotasTerceiros.Open;

           NotasTerceirosItens.SQL.Clear;
           NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Emissao = :pData) ORDER BY Item');
           NotasTerceirosItens.ParamByName('pNota').AsInteger := cNotaReferencia.AsInteger;
           NotasTerceirosItens.ParamByName('pData').AsDate    := cDataReferencia.Date;
           NotasTerceirosItens.Open;

           bInclui_Item.Enabled   := NotasTerceirosItens.RecordCount > 0;
           bInclui_Interv.Enabled := bInclui_Item.Enabled;
           bInclui_Todos.Enabled  := bInclui_Item.Enabled;
      End;
end;

procedure TPedidosOutra_TerceirosReferenciaItens.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TPedidosOutra_TerceirosReferenciaItens.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedidosOutra_TerceirosReferenciaItens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      dmFiscal.NotasTerceirosItens.Close;
      dmFiscal.NotasTerceiros.Close;
      PedidosOutra_TerceirosReferenciaItens.Release;
      PedidosOutra_TerceirosReferenciaItens := nil;
end;

procedure TPedidosOutra_TerceirosReferenciaItens.bInclui_TodosClick(Sender: TObject);
var
   mQtde:real;
begin
      With Dados, dmFiscal do begin
           Janela_Processamento                    := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := NotasTerceirosItens.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando todos os itens da nota fiscal...';
           Janela_Processamento.Show;

           NotasTerceirosItens.First;
           NotasTerceirosItens.DisableControls;
           PedidosItens.DisableControls;

           While not NotasTerceirosItens.Eof and not Funcoes.Cancelado do begin
                 mQtde := NotasTerceirosItensQuantidade.Value;
                 if cPercentualQtde.Value > 0 then begin
                    mQtde := Roundto(Percentual(NotasTerceirosItensQuantidade.Value, cPercentualQtde.Value), -3)
                 end;
                 if TipoNotaVisiveis_IPI.AsBoolean then
                    AdicionaUm(mQtde, NotasTerceirosItensValor_UnitarioOrig.Value)
                 else
                    AdicionaUm(mQtde, NotasTerceirosItensValor_Unitario.Value);
                    
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 NotasTerceirosItens.Next;
                 Application.ProcessMessages;
           End;
           PedidosItens.EnableControls;
           NotasTerceirosItens.EnableControls;
           Janela_Processamento.Close;
           NotasTerceirosItens.First;
      End;
      cNotaReferencia.SetFocus;
end;

procedure TPedidosOutra_TerceirosReferenciaItens.AdicionaUm(pQtde, pValor: Real);
var
   mEst: real;
begin
      With Dados, dmFiscal do begin
           mEst := EstoqueProduto(NotasTerceirosItensCodigo_Mercadoria.AsInteger);
           if (PedidosSaida_Entrada.AsInteger = 1) and TipoNotaMovimenta_Estoque.asboolean then begin
              if Roundto(pQtde, -4) > Roundto(mEst, -4) then begin
                 MessageDlg('Quantidade de produtos maior que o estoque existente!'+#13+#13+'Produto:'+
                             NotasTerceirosItensCodigo_Mercadoria.AsString+#13+
                             NotasTerceirosItensDescricao_Mercadoria.Value+#13+
                             'Quantidade: '+Floattostr(pQtde)+ '   Estoque: '+floattostr(mEst) , mtError, [mbOK], 0);
                 Abort;
              end;
           end;
           
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo = :pCodigo)');
           Produtos.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
           Produtos.Open;

           tItem.Close;
           tItem.SQL.Clear;
           tItem.SQL.Add('SELECT MAX(Item) AS Item FROM PedidosItens WHERE (Pedido = :pPedido)');
           tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           tItem.Open;

           with PedidosItens do begin
                Append;
                     fieldbyname('Pedido').Value               := PedidosNumero.Value;
                     fieldbyname('Item').Value                 := tItem.FieldByName('Item').AsInteger+1;
                     fieldbyname('Sequencia_SISCOMEX').Value   := tItem.FieldByName('Item').AsInteger+1;
                     fieldbyname('Sequencia').Value            := tItem.FieldByName('Item').AsInteger+1;
                     fieldbyname('Processo').Value             := NotasTerceirosItensProcesso.Value;
                     fieldbyname('Sequencia_SISCOMEX').Value   := NotasTerceirosItensSequencia_SISCOMEX.Value;
                     fieldbyname('Codigo_Mercadoria').Value    := NotasTerceirosItensCodigo_Mercadoria.Value;
                     fieldbyname('Descricao_Mercadoria').Value := NotasTerceirosItensDescricao_Mercadoria.Value;
                     fieldbyname('DI').Value                   := NotasTerceirosItensDI.Value;
                     fieldbyname('Adicao').Value               := NotasTerceirosItensAdicao.Value;
                     fieldbyname('NCM').Value                  := NotasTerceirosItensNCM.Value;
                     fieldbyname('Unidade_Medida').Value       := NotasTerceirosItensUnidade_Medida.Value;
                     fieldbyname('Quantidade').Value           := pQtde;
                     fieldbyname('Aliquota_PIS').Value         := NotasTerceirosItensAliquota_PIS.Value;
                     fieldbyname('Aliquota_COFINS').Value      := NotasTerceirosItensAliquota_COFINS.Value;
                     fieldbyname('Valor_PIS').Value            := NotasTerceirosItensValor_PIS.Value;
                     fieldbyname('Valor_COFINS').Value         := NotasTerceirosItensValor_COFINS.Value;
                     fieldbyname('Aliquota_ICMSOper').Value    := NotasTerceirosItensAliquota_ICMSOper.Value;
                     fieldbyname('Valor_BCICMSOper').Value     := (NotasTerceirosItensValor_BCICMSOper.AsCurrency / NotasTerceirosItensQuantidade.AsFloat) * pQtde;
                     fieldbyname('Valor_ICMSOper').Value       := (NotasTerceirosItensValor_ICMSOper.AsCurrency / NotasTerceirosItensQuantidade.AsFloat) * pQtde;
                     fieldbyname('Aliquota_ICMSSub').Value     := NotasTerceirosItensAliquota_ICMSSub.Value;
                     fieldbyname('Valor_BCICMSSub').Value      := NotasTerceirosItensValor_BCICMSSub.Value;
                     fieldbyname('Valor_ICMSSub').Value        := NotasTerceirosItensValor_ICMSSub.Value;
                     fieldbyname('Aliquota_IPI').Value         := NotasTerceirosItensAliquota_IPI.Value;
                     fieldbyname('Valor_BCIPI').Value          := NotasTerceirosItensValor_BCIPI.Value;
                     fieldbyname('Peso_Liquido').Value         := NotasTerceirosItensPeso_Liquido.Value;
                     fieldbyname('Peso_Bruto').Value           := NotasTerceirosItensPeso_Bruto.Value;
                     fieldbyname('Valor_IsentasIPI').Value     := (NotasTerceirosItensValor_IsentasIPI.Value / NotasTerceirosItensQuantidade.Value) * pQtde;
                     fieldbyname('Valor_OutrasIPI').Value      := (NotasTerceirosItensValor_OutrasIPI.Value  / NotasTerceirosItensQuantidade.Value) * pQtde;
                     fieldbyname('Valor_IsentasICMS').Value    := (NotasTerceirosItensValor_IsentasICMS.Value/ NotasTerceirosItensQuantidade.Value) * pQtde;
                     fieldbyname('Valor_OutrasICMS').Value     := (NotasTerceirosItensValor_OutrasICMS.Value / NotasTerceirosItensQuantidade.Value) * pQtde;
                     fieldbyname('Nota_Referencia').Value      := NotasTerceirosNFe_cNF.Value;
                     fieldbyname('Numero_Referencia').Value    := NotasTerceirositensNota.Value;
                     fieldbyname('Nota_Terceiros').Value       := NotasTerceirositensNota.Value;
                     fieldbyname('Data_Referencia').Value      := NotasTerceirosData_Entrada.Value;
                     fieldbyname('Data_Referencia').Value      := NotasTerceirosData_Entrada.Value;
                     fieldbyname('Movimenta_Inventario').Value := TipoNotaMovimenta_Inventario.AsBoolean;
                     fieldbyname('Movimenta_Estoque').Value    := TipoNotaMovimenta_Estoque.AsBoolean;
                     fieldbyname('Movimenta_EstoqueRep').Value := TipoNotaMovimenta_EstoqueRep.AsBoolean;
                     fieldbyname('Apuracao_PISCOFINS').Value   := TipoNotaApuracao_PISCOFINS.AsBoolean;
                     fieldbyname('Tipo_Nota').Value            := PedidosTipo_Nota.Value;
                     fieldbyname('Registro_Adicao').Value      := NotasTerceirosItensRegistro_Adicao.Value;
                     fieldbyname('EXTIPI').Value               := NCMCodigo_EXTIPI.Value;
                     fieldbyname('Devolucao').Value            := PedidosItensDevolucao.Value;
                     fieldbyname('CEST').Value                 := NotasTerceirosItensCEST.Value;
                     fieldbyname('Natureza_Codigo').Value      := PedidosNatureza_Codigo.Value;
                     fieldbyname('Lucro').Value                := PedidosLucro.Value;
                     fieldbyname('Valor_Unitario').Value       := pValor;

                     // Pega a aliquota de ICMS da tabela.
                     PegaICMS;

                     // Calculando valor do produto pela formula.
                     Pedido_ItensOutros.cCodigoExit(Self);
                     {
                             if TipoNotaFormula_Produto.AsBoolean then begin
                                Pedido_ItensOutros.cCodigoExit(Self);
                                Pedido_ItensOutros.PegaValorUni;
                                PedidosItensCodigo_Mercadoria.Value := NotasTerceirosItensCodigo_Mercadoria.Value;
                                PedidosItensValor_Unitario.Value    := Pedido_ItensOutros.CalculaMacro('Calculo_Mercadoria');
                             end;
                       
                             // Calculando valor da BCICMS pela formula.
                             if Trim(TipoNotaCalculo_BCICMS.AsString) <> '' then begin
                                Pedido_ItensOutros.cCodigoExit(Self);
                                Pedido_ItensOutros.PegaValorUni;
                                PedidosItensCodigo_Mercadoria.Value := NotasTerceirosItensCodigo_Mercadoria.Value;
                                PedidosItensValor_BCICMSOper.Value  := Pedido_ItensOutros.CalculaMacro('Calculo_BCICMS');
                                PedidosItensValor_ICMSOper.Value    := Pedido_ItensOutros.CalculaMacro('Calculo_VlrICMS');
                             end;

                             PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value, -2);
                             }
                     Pedido_ItensOutros.Recalcula;
                     Pedido_ItensOutros.cValorCBSChange(nil);
      {
                       // Calculo do ICMS Desonerado.
                       PedidosItensValor_ICMSDesonerado.Value := 0;
                       if PedidosItensValor_ICMSOper.AsCurrency > 0 then begin
                          case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['20','30','40','41','50','70','90']) of
                               0.6: PedidosItensValor_ICMSDesonerado.Value := PedidosItensValor_IsentasICMS.Value + PedidosItensValor_OutrasICMS.Value;
                          end;
                       end;
                       if PedidosItensFCP_ICMSDest.Value > 0 then begin
                          PedidosItensValor_ICMSDesonerado.Value := 0;
                       end;
      }
                Post;
           end;
      End;
end;

procedure TPedidosOutra_TerceirosReferenciaItens.bInclui_ItemClick(Sender: TObject);
begin
      With Dados do begin
           mQtde  := 0;
           mValor := 0;

           Pedido_ItensOutrosQuantidade         := TPedido_ItensOutrosQuantidade.Create(Self);
           Pedido_ItensOutrosQuantidade.Caption := Caption;
           Pedido_ItensOutrosQuantidade.mNota   := 'Terc';
           Pedido_ItensOutrosQuantidade.ShowModal;

           if mQtde > 0 then AdicionaUm(mQtde, mValor);
      End;
end;

procedure TPedidosOutra_TerceirosReferenciaItens.bInclui_IntervClick(Sender: TObject);
Var
    mItens:String;
    mini, mfim:integer;
    mQtde:real;
begin
      with Dados, dmFiscal do begin
           mItens := InputBox('Intervalor de itens Separados por um "-"','Intervalo:','');
           mIni   := 0;
           mFim   := 0;
           if mItens = '' then begin
              Abort;
           end;

           try
              mIni := strtoint(trim(Copy(mItens,1,pos('-', mItens)-1)));
              mFim := strtoint(trim(Copy(mItens,pos('-', mItens)+1, 50)));
           except
              ShowMessage('Intervalo informado invalído!'+#13+#13+'Informe o número inicial e o número final do item separado por um "-".');
              Abort;
           end;

           Janela_Processamento := TJanela_Processamento.Create(Self);
           Janela_Processamento.Progresso.Max      := NotasTerceirosItens.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Adicionando todos os itens da nota fiscal.';
           Janela_Processamento.Show;

           NotasTerceirosItens.First;
           PedidosItens.DisableControls;
           while (not NotasTerceirosItens.Eof) and (Funcoes.Cancelado = false) do begin
                 mQtde := NotasTerceirosItensQuantidade.Value;
                 if cPercentualQtde.Value > 0 then begin
                    mQtde := Roundto(Percentual(NotasTerceirosItensQuantidade.Value, cPercentualQtde.Value), -3)
                 end;
                 if (NotasTerceirosItensItem.AsInteger >= mIni) and (NotasTerceirosItensItem.AsInteger <= mFim) then begin
                    if TipoNotaVisiveis_IPI.AsBoolean then
                       AdicionaUm(mQtde, NotasTerceirosItensValor_UnitarioOrig.Value)
                    else
                       AdicionaUm(mQtde, NotasTerceirosItensValor_Unitario.Value);
                 end;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                 NotasTerceirosItens.Next;
                 Application.ProcessMessages;
           end;
           PedidosItens.EnableControls;
           Janela_Processamento.Close;
           NotasTerceirosItens.First;
      end;
      cNotaReferencia.SetFocus;
end;

procedure TPedidosOutra_TerceirosReferenciaItens.FormShow(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           titem.sql.clear;
           tItem.sql.add('SELECT DISTINCT MAX(Numero_Referencia) AS NR, MAX(Data_Referencia) AS DR FROM PedidosItens WHERE pedido = :pPedido');
           tItem.ParamByName('pPedido').asInteger := PedidosNumero.AsInteger;
           titem.Open;
           if tItem.RecordCount > 0 then begin
              cNotaReferencia.Value := tItem.FieldByname('NR').AsInteger;
              cDataReferencia.Date  := tItem.FieldByname('DR').asDateTime;
              bBuscarClick(self);
           end;
      end;
      cNotaReferencia.setfocus; 
end;

procedure TPedidosOutra_TerceirosReferenciaItens.PegaICMS;
var
   mUF: String;
begin
      with Dados, dmFiscal do begin
           if (PedidosItens.State = dsInsert) then begin
              // Pegando a aliquota do ICMS Operacional.
              ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]);

              NCM.SQL.Clear;
              NCM.SQL.Add('SELECT * FROM NCM WHERE NCM = :pNCM');
              NCM.ParamByName('pNCM').AsString := ProdutosNCM.AsString;
              NCM.Open;

              PedidosItensCEST.Value                 := NCMCEST.Value;
              PedidosItensAliquota_ICMSOper.Value    := 0;
              PedidosItensAliquota_ICMSDest.Value    := 0;
              PedidosItensAliquota_ICMSEntrada.value := 0;

              if TipoNotaSaida_Entrada.Value = 1 then begin
                 mUF := Trim(ClientesEstado.Value)+'_Reducao';
                 PedidosItensAliquota_ICMSReducao.Value := NCM.FieldbyName(mUF).AsFloat;
                 mUF := Trim(ClientesEstado.Value)+'_Reducao2';
                 PedidosItensAliquota_ICMSReducao2.Value := NCM.FieldbyName(mUF).AsFloat;

                 if NCMICMS_Operacional.Value = 0 then begin
                    // Mercadoria de origem importada.
                    if (NCMCodigoTrib_TabA.AsInteger in[1, 6]) and (ProdutosOrigem.AsString = 'I') then begin
                       // Contribuinte.
                       if ClientesIndicador_IE.Value = '1' then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_Contribuinte.Value;
                       end;
                       // Contribuinte com nf para comsumo.
                       if (ClientesIndicador_IE.Value = '1') and (TipoNotaFinalidade_Mercadoria.Value = 1) then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_NContribuinte.Value;
                       end;
                       // Não Contribuinte.
                       if (ClientesIndicador_IE.Value = '2') or (ClientesIndicador_IE.Value = '9') then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_NContribuinte.Value;
                       end;
                    end;
                    // ICMS Operacional.
                    if Trim(PedidosItensCodigoTrib_TabB.AsString) <> '' then begin
                       if not TipoNotaVisiveis_ICMSOper.AsBoolean then begin
                          if (CSTTabelaBCodigo.AsString <> '90') and (CSTTabelaBCodigo.AsString <> '900') and (not CSTTabelaBTributavel.AsBoolean) then begin
                             PedidosItensValor_ICMSOper.Value    := 0;
                             PedidosItensValor_BCICMSOper.Value  := 0;
                             PedidosItensAliquota_ICMSOper.Value := 0;
                             PedidosItensValor_ICMSReducao.Value := 0;
                          end;
                       end;
                    end;
                    // Mercadoria de origem importada adquirida no mercado interno.
                    if (NCMCodigoTrib_TabA3.AsInteger in[2, 7]) and (ProdutosOrigem.AsString = 'M') then begin
                       // Contribuinte.
                       if ClientesIndicador_IE.Value = '1' then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_Contribuinte.Value;
                       end;
                       // Contribuinte com nf para comsumo.
                       if (ClientesIndicador_IE.Value = '1') and (TipoNotaFinalidade_Mercadoria.Value = 1) then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_NContribuinte.Value;
                       end;
                       // Não Contribuinte.
                       if (ClientesIndicador_IE.Value = '2') or (ClientesIndicador_IE.Value = '9') then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSImp_NContribuinte.Value;
                       end;
                    end;

                    // Mercadoria de origem Nacional.
                    if trim(NCMCodigoTrib_TabA2.asstring) = '' then begin
                       showmessage('Código de CST do ICMS da tabela A (Nacional) no cadastrado da "NCM" não informado.'+#13+#13+'NCM :'+NCMNCM.asstring);
                       abort;
                    end;
                    if (NCMCodigoTrib_TabA2.AsInteger in[0, 3, 4, 5]) and (ProdutosOrigem.AsString = 'N') then begin
                       // Contribuinte pessoa Juridica.
                       if ClientesIndicador_IE.Value = '1' then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSNac_Contribuinte.Value;
                       end;
                       // Contribuinte com nf para comsumo.
                       if (ClientesIndicador_IE.Value = '1') and (TipoNotaFinalidade_Mercadoria.Value = 1) then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSNac_NContribuinte.Value;
                       end;
                       // Não Contribuinte.
                       if (ClientesIndicador_IE.Value = '2') or (ClientesIndicador_IE.Value = '9') then begin
                          PedidosItensAliquota_ICMSOper.Value := ICMSNac_NContribuinte.Value;
                       end;
                    end;

                    if (ClientesSimples_Nacional.AsBoolean = true) then begin
                       PedidosItensAliquota_ICMSOper.Value := ICMSSimples_Nacional.AsFloat;
                       if ICMSSimples_Nacional.AsFloat = 0 then begin
                          MessageDlg('Alíquota do ICMS não encontrada na tabela de ICMS dos estados.', mtError, [mbok], 0);
                          Navega.BtnClick(nbCancel);
                          Abort;
                       end;
                    end;

                    // Não encontrando a estado na tabela de ICMS zera a aliquota do ICMS operacional.
                    if ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]) = false then begin
                       PedidosItensAliquota_ICMSOper.Value := 0;
                    end;
                 end else begin
                     PedidosItensAliquota_ICMSOper.Value := NCMICMS_Operacional.Value;
                 end;

                 // Pegando as aliquota de ICMS na entrada.
                 if (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) then begin             // Cliente é de fora do estado.
                     PedidosItensAliquota_ICMSEntrada.value := ProdutosICMS_ForaEstadoEntrada.AsFloat;
                 end else begin                                                                       // Cliente é de dentro do estado.
                     PedidosItensAliquota_ICMSEntrada.value := ProdutosICMS_EstadoEntrada.AsFloat;
                 end;

                 // Pegando o valor de pauta.
                 ProdutosPauta.SQL.Clear;
                 produtosPauta.SQL.Add('SELECT * FROM ProdutosPauta WHERE Produto = :pCodigo');
                 ProdutosPauta.ParamByName('pCodigo').Asinteger := PedidosItensCodigo_Mercadoria.AsInteger;
                 ProdutosPauta.Open;
                 PedidosItensValor_Pauta.Value := ProdutosPauta.FieldByName('Valor').AsCurrency;
              end else begin
                 PedidosItensAliquota_ICMSOper.Value := ProcessosDOCAliquota_ICMS.Value;
              end;

              // Verifica se existe alíquota de ICMS informado no cadastro do produto.
              // Dentro do Estado.
              if (PedidosDestinatario_Estado.Value = EmpresasEstado.Value) and (ProdutosICMS_DentroEstado.AsFloat > 0) then begin
                 // Simples Nacional.
                 if ClientesSimples_Nacional.AsBoolean then begin
                    PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_DentroEstadoSimples.AsFloat;
                 end else begin
                    PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_DentroEstado.ASFloat;
                 end;
              end;
              // Fora do Estado.
              if (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) and (ProdutosICMS_ForaEstado.AsFloat > 0) then begin
                 PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_ForaEstado.ASFloat;
              end;

              // Vereifica se o produto esta na tabela CAMEX.
              if (ProdutosTabela_CAMEX.AsBoolean = true) and (ICMSICMS_CAMEX.AsFloat > 0) then begin
                 PedidosItensAliquota_ICMSOper.Value     := ICMSICMS_CAMEX.AsFloat;
                 PedidosItensAliquota_ICMSIntegral.Value := ICMSICMS_CAMEX.AsFloat;
              end;
           end;
           PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value, -2)-PedidosItensDesconto_Valor.Value;
      end;
end;


end.
