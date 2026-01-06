unit frmPedido_TelevendasCatalogoItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MSAccess, RxLookup;

type
  TPedido_TelevendasCatalogoItem = class(TForm)
    Panel3: TPanel;
    bCancelar: TButton;
    bAdicionar: TButton;
    Panel1: TPanel;
    cValor: TCurrencyEdit;
    cQtde: TCurrencyEdit;
    StaticText12: TStaticText;
    StaticText1: TStaticText;
    StaticText13: TStaticText;
    cTabela: TRxDBLookupCombo;
    Panel2: TPanel;
    cFoto: TImage;
    Panel5: TPanel;
    Image7: TImage;
    Label3: TLabel;
    lMinimo: TLabel;
    lDisponivel: TLabel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    tItem: TMSQuery;
    procedure bCancelarClick(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cTabelaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_TelevendasCatalogoItem: TPedido_TelevendasCatalogoItem;

implementation

{$R *.dfm}

uses frmDados, frmPedido_TelevendasCatalogo, frmDMFiscal, frmDMComercial, FUNCOES;

procedure TPedido_TelevendasCatalogoItem.bCancelarClick(Sender: TObject);
begin
     close;
end;

procedure TPedido_TelevendasCatalogoItem.cTabelaChange(Sender: TObject);
var
   mVlrVenda: real;
begin
     with Dados, dmComercial do begin
          with PedidosRepresentantesItens do begin
               cValor.Value := ProdutosValor_Venda.AsCurrency + (ProdutosValor_Venda.AsCurrency * (ModalidadesPgtoPercentual_Venda.asfloat/100));
               if cTabela.Text <> '' then begin
                  mVlrVenda := ProdutosValor_Venda.AsCurrency + (ProdutosValor_Venda.AsCurrency * (ModalidadesPgtoPercentual_Venda.asfloat/100));
                  mVlrVenda := mVlrVenda + (mVlrVenda * (TabelaComissoesPercentual_Venda.asfloat/100));
                  cValor.Value := mVlrvenda;
               end;
               if (ProdutosPromocao.AsBoolean = true) and (ProdutosPromocao_Valor.AsFloat > 0) then begin
                  cValor.Value := RoundTo(ProdutosPromocao_Valor.AsCurrency, -5);
               end;
               if (ClientesConsumidor_Final.AsBoolean) and (ProdutosValor_ConsumidorFinal.AsCurrency > 0) then begin
                  cValor.Value := RoundTo(ProdutosValor_ConsumidorFinal.AsCurrency, -5);
               end;
          end;
     end;
end;

procedure TPedido_TelevendasCatalogoItem.bAdicionarClick(Sender: TObject);
var
   mUF: string;
begin
     Screen.Cursor := crSQLWait;
     with Dados, dmFiscal, dmComercial, Pedido_TelevendasCatalogo do begin
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
          with Produtos do begin
               sql.clear;
               sql.add('select * from Produtos where Codigo = :pCod');
               parambyname('pCod').asinteger := PedidosRepresentantesItensCodigo_Mercadoria.asinteger;
               open;
          end;
          // Fazendo as consistências do item.
          if cQtde.Value <= 0 then begin
             MessageDlg('Erro!'+#13+#13+'Quantidade pedida indisponível no estoque!', mtError, [mbOK], 0);
             cQtde.SetFocus;
             Abort;
          end;
          if cQtde.Value > strtofloat(stringreplace(lDisponivel.Caption, '.', '',[rfReplaceAll])) then begin
             MessageDlg('Erro!'+#13+#13+'Quantidade pedida indisponível no estoque!', mtError, [mbOK], 0);
             cQtde.SetFocus;
             Abort;
          end;
          if Trim(NCMCodigoTrib_TabA2.AsString) = '' then begin
             MessageDlg('Falta informar o "CST ICMS Adiq.M.Int (Tab.A)" no cadastro da NCM!', mtError, [mbOK], 0);
             Abort;
          end;
          with tItem do begin 
               sql.clear;
               sql.add('select count(*) as Qtde from PedidosRepresentantesItens where Pedido = :pPedido and Codigo_Mercadoria = :pCodigo');
               parambyName('pPedido').AsString  := PedidosRepresentantesPedido.AsString;
               parambyName('pCodigo').AsInteger := PedidosRepresentantesItensCodigo_Mercadoria.AsInteger;
               open;
               if tItem.FieldByName('Qtde').AsInteger > 0 then begin
                  MessageDlg('Produto já adicionado a este pedido!', mtError, [mbOK], 0);
                  Abort;
               end;
          end;
          
          with tItem do begin
               sql.clear;
               sql.add('select isnull(max(Item), 0)+1 as Item from PedidosRepresentantesItens where Pedido = :pPedido');
               paramByName('pPedido').AsString := PedidosRepresentantesPedido.AsString;
               open;
          end;
          with PedidosRepresentantesItens do begin
               append;
                    fieldbyname('Pedido').Value            := PedidosRepresentantesPedido.Value;
                    fieldbyname('Data').Value              := PedidosRepresentantesData.Value;
                    fieldbyname('Item').Value              := tItem.FieldByName('Item').Value;
                    fieldbyname('Codigo_Mercadoria').Value := tItens.FieldByName('Codigo').Value;
                    fieldbyname('Valor_Unitario').Value    := cValor.Value;
                    fieldbyname('Quantidade').Value        := cQtde.value;
                    fieldbyname('Aliquota_IPI').Value      := tItens.FieldByName('Aliquota_IPI').Value;
                    fieldbyname('Peso_Unitario').Value     := tItens.FieldByName('Peso_Liquido').Value;
                    fieldbyname('Cancelado').Value         := false;
                    fieldbyname('Faturado').Value          := false;
                    fieldbyname('Desconto').Value          := tItens.FieldByName('Desconto_A').Value;
                    fieldbyname('Valor_Desconto').Value    := 0;
                    fieldbyname('Faturado').Value          := false;
                    fieldbyname('Faturamento').Value       := false;
                    fieldbyname('Valor_Tabela').Value      := RoundTo(ProdutosValor_Venda.AsCurrency, -2);
                    fieldbyname('Valor_Unitario').Value    := ProdutosValor_Venda.AsCurrency + (ProdutosValor_Venda.AsCurrency * (ModalidadesPgtoPercentual_Venda.asfloat/100));
                    if cTabela.Text <> '' then begin
                       PedidosRepresentantesItensValor_Unitario.Value := ProdutosValor_Venda.AsCurrency + (ProdutosValor_Venda.AsCurrency * (ModalidadesPgtoPercentual_Venda.asfloat/100)) + (ProdutosValor_Venda.AsCurrency * (TabelaComissoesPercentual_Venda.asfloat/100));
                    end;
                    if (ProdutosPromocao.AsBoolean = true) and (ProdutosPromocao_Valor.AsFloat > 0) then begin
                       fieldbyname('Valor_Unitario').Value := RoundTo(ProdutosPromocao_Valor.AsCurrency, -5);
                    end;
                    if (ClientesConsumidor_Final.AsBoolean) and (ProdutosValor_ConsumidorFinal.AsCurrency > 0) then begin
                       fieldbyname('Valor_Unitario').Value := RoundTo(ProdutosValor_ConsumidorFinal.AsCurrency, -5);
                    end;

                    fieldbyname('Peso_Unitario').value := ProdutosPeso_Liquido.Value;
                    fieldbyname('Aliquota_IPI').value  := ProdutosAliquota_IPI.Value;
                    fieldbyname('Desconto').value      := ProdutosDesconto_A.Value;

                    // Pega a aliquota do ICMS da tabela de ICMS.
                    mUF := Trim(ClientesEstado.Value)+'_Reducao';
                    fieldbyname('Aliquota_ICMSRed').Value := NCM.FieldbyName(mUF).AsFloat;

                    If NCMICMS_Operacional.Value = 0 then begin
                       //================================================= Mercadoria de origem importada. =================================================
                       // Contribuinte pessoa Juridica.
                       If Trim(NCMCodigoTrib_TabA2.AsString) <> '' then begin
                          If (NCMCodigoTrib_TabA2.AsInteger in[1, 2, 6, 7]) then begin
                             If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value <> True) then begin
                                fieldbyname('Aliquota_ICMS').value := ICMSImp_Contribuinte.Value;
                             End;
                             // Não Contribuinte pessoa Juridica.
                             If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value = True) then begin
                                fieldbyname('Aliquota_ICMS').value := ICMSImp_NContribuinte.Value;
                             End;
                             // Não Contribuinte pessoa Fisica.
                             If (ClientesCNPJ.Value = '') then begin
                                fieldbyname('Aliquota_ICMS').value := ICMSImp_NContribuinte.Value;
                             End;
                          End;

                          //========================= Mercadoria de origem Nacional ou importada adquirida no mercado interno ==============================
                          // Contribuinte pessoa Juridica.
                          If (NCMCodigoTrib_TabA2.AsInteger in[0, 3, 4, 5]) then begin
                             If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value <> True) then begin
                                fieldbyname('Aliquota_ICMS').value := ICMSNac_Contribuinte.Value;
                             End;
                             // Não Contribuinte pessoa Juridica.
                             If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value = True) then begin
                                fieldbyname('Aliquota_ICMS').value := ICMSNac_NContribuinte.Value;
                             End;
                             // Não Contribuinte pessoa Fisica.
                             If (ClientesCNPJ.Value = '') then begin
                                fieldbyname('Aliquota_ICMS').value := ICMSNac_NContribuinte.Value;
                             End;

                             // Simples Nacional.
                             If (ClientesSimples_Nacional.AsBoolean = true) then begin
                                fieldbyname('Aliquota_ICMS').value := ICMSSimples_Nacional.AsFloat;
                             End;
                          End;
                       End;

                       // Não encontrando a estado na tabela de ICMS zera a aliquota do ICMS operacional.
                       If ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]) = false then begin
                          fieldbyname('Aliquota_ICMS').value := 0;
                       End;
                    end else begin
                        fieldbyname('Aliquota_ICMS').value := NCMICMS_Operacional.Value;
                    End;

                    // Verifica se existe alíquota de ICMS informado no cadastro do produto.
                    // Dentro do Estado.
                    If (ClientesEstado.AsString = EmpresasEstado.AsString) and (ProdutosICMS_DentroEstado.AsFloat > 0) then begin
                       fieldbyname('Aliquota_ICMS').value := ProdutosICMS_DentroEstado.ASFloat;
                    End;
                    // Fora do Estado.
                    If (ClientesEstado.AsString <> EmpresasEstado.Value) and (ProdutosICMS_ForaEstado.AsFloat > 0) then begin
                       fieldbyname('Aliquota_ICMS').value := ProdutosICMS_ForaEstado.ASFloat;
                    End;

                    // Verifica se o produto esta na tabela CAMEX.
                    If (ProdutosTabela_CAMEX.AsBoolean = true) and (ICMSICMS_CAMEX.AsFloat > 0) then begin
                       fieldbyname('Aliquota_ICMS').value := ICMSICMS_CAMEX.AsFloat;
                    End;

                    // Pegando a aliquota do MVA.
                    mUF := Trim(PedidosRepresentantesCliente_Estado.Value)+'_MVA';

                    If Dados.ClientesSimples_Nacional.AsBoolean = false then begin
                       fieldbyname('Aliquota_MVA').value := NCM.FieldbyName(mUF).AsFloat;
                    end else begin
                       fieldbyname('Aliquota_MVA').value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
                    End;

                    // Pegando a aliquota do ICMS Substitutivo.
                    mUF := Trim(ClientesEstado.Value)+'_ICMS';
                    fieldbyname('Aliquota_ICMSST').value := NCM.FieldbyName(mUF).AsFloat;
               post;
          end;
     end;
     screen.Cursor := crDefault;
     close;
end;

procedure TPedido_TelevendasCatalogoItem.FormCreate(Sender: TObject);
begin
     cFoto.Picture.Assign(Pedido_TelevendasCatalogo.cImagem.Picture);
     If (FileExists('Fundo_Barra_Roxo.bmp')) then begin
        Image7.Picture.LoadFromFile('Fundo_Barra_Roxo.bmp');
     end;
end;

procedure TPedido_TelevendasCatalogoItem.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//    if key = 27 then bCancelar.click;
    if key = 13 then bAdicionar.click;
end;

procedure TPedido_TelevendasCatalogoItem.FormShow(Sender: TObject);
begin
     with dmComercial, Pedido_TelevendasCatalogo do begin
          with TabelaComissoes do begin
               sql.Clear;
               sql.Add('select *');
               sql.Add('from TabelaComissoes');
               sql.Add('order by Descricao');
               //sql.SaveToFile('c:\temp\Televendas_Tabela_Comissoes.sql');
               Open;
          end;
          //cTabela.KeyValue    := TabelaComissoes.FieldByName('Codigo').Value;
          //cPrecoTab.Value     := tItens.FieldByName('Valor').Value;
          cValor.Value        := tItens.fieldbyname('Valor').AsCurrency + (tItens.fieldbyname('Valor').AsCurrency * (TabelaComissoesPercentual_Venda.asfloat/100)) + (tItens.fieldbyname('Valor').AsCurrency * (TabelaComissoesPercentual_Venda.asfloat/100));
          lMinimo.Caption     := FormatFloat(',##0.000', tItens.fieldbyname('Minimo').asfloat);
          //lDisponivel.Caption := FormatFloat(',##0.000', EstoqueProduto(tItens.FieldByName('Codigo').asinteger));
          lDisponivel.Caption := FormatFloat(',##0.000', tItens.FieldByName('Estoque').asfloat);
     end;
     cTabela.SetFocus;
end;


end.
