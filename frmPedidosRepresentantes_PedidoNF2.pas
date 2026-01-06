unit frmPedidosRepresentantes_PedidoNF2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Math, MaskUtils, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, system.UITypes,
  RxLookup, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, MSAccess, CalcExpress, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RxToolEdit, RxCurrEdit, Datasnap.DBClient, Vcl.ComCtrls, VirtualTable, DateUtils;

type
  TPedidosRepresentantes_PedidoNF2 = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bGerar: TButton;
    tPedidosNF: TMSQuery;
    tPedidosNFItens: TMSQuery;
    tTemp: TMSQuery;
    mMacro: TCalcExpress;
    tCFOPDentro: TMSQuery;
    tCFOPFora: TMSQuery;
    dstCFOPDentro: TDataSource;
    dstCFOPFora: TDataSource;
    tDisponivel: TMSQuery;
    dstDisponivel: TDataSource;
    tDisponivelNavio_Nome: TStringField;
    tDisponivelDisponivel: TFloatField;
    tMenor: TMSQuery;
    dstQuebras: TDataSource;
    tQuebras: TClientDataSet;
    tQuebrasQuantidade: TFloatField;
    Panel3: TPanel;
    cCFOPDentro: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cTipoNota: TRxDBLookupCombo;
    StaticText5: TStaticText;
    cTransp: TRxDBLookupCombo;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    cPedidos: TEdit;
    StaticText3: TStaticText;
    cObs: TMemo;
    cCFOPFora: TRxDBLookupCombo;
    StaticText6: TStaticText;
    tCopia: TMSQuery;
    tTmp2: TMSQuery;
    tItens: TMSQuery;
    tCopiaItens: TMSQuery;
    tEntradaST: TMSQuery;
    tBCR: TMSQuery;
    tDisponivelDI: TStringField;
    Button1: TButton;
    tDuplicatas: TVirtualTable;
    tDuplicatasPedido: TStringField;
    tDuplicatasParcela: TStringField;
    tDuplicatasVencimento: TDateField;
    tDuplicatasValor: TCurrencyField;
    tDuplicatasValor_Produto: TCurrencyField;
    tDuplicatasValor_IPI: TCurrencyField;
    DataSource1: TDataSource;
    tDisponivelData: TWideStringField;
    Armazem: TMSQuery;
    cRich2: TDBRichEdit;
    cRich: TDBRichEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bGerarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cTipoNotaExit(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
  private
    Function MontaComplemento(Texto: String; pCampo:integer):String;
    function CalculaMacro(Campo: String): Real;
    procedure CalculaImpostos;
    procedure CalculoBCR;
    procedure TotalizaPedido;
    procedure CopiaPedidos;
    procedure GeraDuplicatas(Pedido: integer;Valor: real);
    { Private declarations }
  public
    { Public declarations }
    mPedidos
   ,mTextoLimpo: widestring;
    mQtdePed: integer;
    mNomeMot
   ,mRGMot
   ,mCPFMot
   ,mPlacaVei
   ,mUFVei
   ,mANTTVei
   ,mPlacaReb
   ,mUFReb
   ,mANTTReb
   ,mLacreVei
   ,mLacreReb: string;
  end;

var

PedidosRepresentantes_PedidoNF2: TPedidosRepresentantes_PedidoNF2;

implementation

{$R *.dfm}

uses frmDados, frmMenu_Principal, frmJanela_Processamento, FUNCOES, frmDMFiscal, frmPedido_RepresentantesSimp, frmDMContab, frmPedido_RepresentanteVeiculo, frmModalidadePgto_PedidoParcelas, frmCadastro_Fornecedores;

procedure TPedidosRepresentantes_PedidoNF2.bGerarClick(Sender: TObject);
var
  mSaldoDI: real;
  mPedPai, RelDI, mBenef:string;
  libTot:boolean;
begin
     mPedPai := Pedido_RepresentantesSimp.tSeparados.FieldByName('Pedido').AsString;
     if trim(cTipoNota.text) = '' then begin
        MessageDlg('Tipo de nota fiscal não informado.', mtError, [mbOK], 0);
        Abort;
     end;
     if trim(cCFOPDentro.text) = '' then begin
        MessageDlg('Natureza da Operação para notas dentro do estado não informada nas configurações.', mtInformation, [mbOK], 0);
        Abort;
     end;
     if trim(cCFOPFora.text) = '' then begin
        MessageDlg('Natureza da Operação para notas dentro do estado não informada nas configurações.', mtInformation, [mbOK], 0);
        Abort;
     end;
     if MessageDlg('Deseja realmente gerar faturamento dos pedidos selecionados?', mtConfirmation, [mbYes, mbNO], 0) = mrNo then begin
        Abort;
     end;

     Screen.Cursor := crSQLWait;

     //Gera os pedidos de notas fiscal.
     with Dados, dmFiscal do begin
          with Pedidos do begin
               sql.Clear;
               sql.Add('select * from Pedidos where Numero is null');
               Open;
          end;
          with PedidosItens do begin
               sql.Clear;
               sql.Add('select * from PedidosItens where Pedido is null');
               Open;
          end;
          with Empresas do begin
               sql.Clear;
               sql.Add('select * from Empresas where Codigo = :pCodigo');
               parambyname('pCodigo').AsInteger := Menu_Principal.mEmpresa;
               Open;
          end;
          with ICMS do begin
               sql.Clear;
               sql.Add('select * from ICMS');
               Open;
          end;
          with CSTTabelaB do begin
               sql.Clear;
               sql.Add('select * from CSTTabelaB');
               Open;
          end;
          with CSTIPI do begin
               sql.Clear;
               sql.Add('select * from CSTIPI');
               Open;
          end;
          with CSTPIS do begin
               sql.Clear;
               sql.Add('select * from CSTPIS');
               Open;
          end;
          with CSTCOFINS do begin
               sql.Clear;
               sql.Add('select * from CSTCOFINS');
               Open;
          end;
          with tPedidosNF do begin
               sql.clear;
               sql.Add('select *');
               sql.Add('      ,Pessoa = iif(isnull(Cliente_CNPJ, '''') <> '''', ''J'', ''F'')');
               sql.add('from PedidosRepresentantes');
               sql.add('where Pedido in('+mPedidos+')');
               open;

               Janela_Processamento                    := TJanela_Processamento.Create(Self);
               Janela_Processamento.Progresso.Max      := RecordCount;
               Janela_Processamento.Progresso.Position := 0;
               Janela_Processamento.lProcesso.Caption  := 'Gerando os pedidos para faturamento...Aguarde';
               Janela_Processamento.Show;

               First;
               while not eof do begin
                     with ModalidadesPgto do begin
                          sql.Clear;
                          sql.Add('select * from ModalidadesPagamento where Codigo = :pCod');
                          parambyname('pCod').asinteger := tPedidosNF.fieldbyname('Modalidade_Pagamento').asinteger;
                          open;
                     end;
                     with Clientes do begin
                          sql.Clear;
                          sql.Add('select * from Clientes where Codigo = '+tPedidosNF.fieldbyname('Cliente').AsString);
                          Open;
                     end;
                     // Capa do Pedido.
                     with tTemp do begin
                          sql.Clear;
                          sql.Add('select isnull(max(Numero), 0)+1 as Pedido from Pedidos');
                          Open;
                     end;

                     ICMS.Locate('UF', FieldByName('Cliente_Estado').AsString, [loCaseInsensitive]);

                     Pedidos.Append;
                             PedidosNumero.Value                    := tTemp.FieldByName('Pedido').AsInteger;
                             PedidosPedido_Nota.Value               := EmpresasPedido_Nota.AsInteger + 1;
                             PedidosPedido_Representante.Value      := FieldByName('Pedido').AsString;
                             PedidosSaida_Entrada.Value             := 1;
                             PedidosData_Emissao.Value              := Date;
                             PedidosTipo_Nota.Value                 := TipoNota.FieldByName('Codigo').asinteger;
                             PedidosNatureza_Codigo.Value           := iif(FieldByName('Cliente_Estado').AsString = EmpresasEstado.AsString, cCFOPDentro.KeyValue, cCFOPFora.KeyValue);
                             PedidosInscricao_Substituto.Value      := ICMSInscricao.Value;
                             PedidosCliente_Codigo.Value            := FieldByName('Cliente').AsInteger;
                             PedidosEstado.Value                    := FieldByName('Cliente_Estado').AsString;
                             PedidosTransportador_Codigo.Value      := iif(trim(cTransp.Text) = '', FieldByName('Transportador').AsInteger, Fornecedores.FieldByName('Codigo').AsInteger);
                             PedidosModalidade_Frete.Value          := FieldByName('Modalidade_Frete').AsInteger;
                             PedidosVolume_Quantidade.Value         := FieldByName('Volume_Quantidade').AsFloat;
                             PedidosVolume_Especie.Value            := FieldByName('Volume_Especie').AsString;
                             PedidosVolume_PesoLiquido.Value        := FieldByName('Volume_PesoLiquido').AsFloat;
                             PedidosVolume_PesoBruto.Value          := FieldByName('Volume_PesoBruto').AsFloat;
                             PedidosComplementar.Value              := false;
                             PedidosDevolucao.Value                 := false;
                             PedidosAjuste.Value                    := false;
                             PedidosMovimenta_Inventario.Value      := TipoNota.FieldByName('Movimenta_Inventario').Value;
                             PedidosImportacao.Value                := false;
                             PedidosIncentivo_Fiscal.Value          := 'OUTROS';
                             PedidosAguardando.Value                := false;
                             PedidosRepresentante.Value             := FieldByName('Representante').AsInteger;
                             PedidosVendedor.Value                  := tPedidosNF.FieldByName('Vendedor').AsString;
                             PedidosRepresentante_Comissao.Value    := tPedidosNF.FieldByName('Comissao').AsFloat;
                             PedidosRepresentante_ComissaoGer.Value := tPedidosNF.FieldByName('Comissao_Gerencia').AsFloat;
                             PedidosAliquota_ICMSOper.Value         := FieldByName('Aliquota_ICMS').AsFloat;
                             if Trim(tPedidosNF.FieldByName('Cliente_CNPJ').AsString) <> '' then begin
                                PedidosDestinatario_CNPJ_CPF.Value := FieldByName('Cliente_CNPJ').AsString;
                                PedidosDestinatario_Juridica.Value := true;
                             end else begin
                                PedidosDestinatario_CNPJ_CPF.Value := tPedidosNF.FieldByName('Cliente_CPF').AsString;
                                PedidosDestinatario_Juridica.Value := false;
                             end;
                             PedidosDestinatario_Nome.Value        := FieldByName('Cliente_Nome').AsString;
                             PedidosDestinatario_Rua.Value         := FieldByName('Cliente_Rua').AsString;
                             PedidosDestinatario_RuaNumero.Value   := FieldByName('Cliente_RuaNumero').AsString;
                             PedidosDestinatario_Complemento.Value := FieldByName('Cliente_Complemento').AsString;
                             PedidosDestinatario_Bairro.Value      := FieldByName('Cliente_Bairro').AsString;

                             if tPedidosNF.FieldByName('Cliente_Municipio').AsInteger > 0 then begin
                                PedidosDestinatario_Municipio.Value := tPedidosNF.FieldByName('Cliente_Municipio').Value;
                             end else begin
                                with Municipios do begin
                                     SQL.Clear;
                                     SQL.Add('select * from Municipios where UF = :pUF and Nome = :pNome');
                                     ParamByName('pUF').AsString   := tPedidosNF.FieldByName('Cliente_Estado').AsString;
                                     ParamByName('pNome').AsString := tPedidosNF.FieldByName('Cliente_MunicipioNome').AsString;
                                     Open;
                                     PedidosDestinatario_Municipio.Value := MunicipiosCodigo.Value;
                                end;
                             end;

                             PedidosDestinatario_MunicipioNome.Value := FieldByName('Cliente_MunicipioNome').AsString;
                             PedidosDestinatario_Estado.Value        := FieldByName('Cliente_Estado').AsString;
                             PedidosDestinatario_CEP.Value           := FieldByName('Cliente_CEP').AsString;
                             PedidosDestinatario_Pais.Value          := '1058';
                             PedidosDestinatario_Telefone1.Value     := FieldByName('Cliente_Telefone').AsString;
                             PedidosDestinatario_IE.Value            := iif(Trim(tPedidosNF.FieldByName('Cliente_IE').AsString) <> '', FieldByName('Cliente_IE').AsString, 'ISENTO');
                             PedidosApuracao_PISCOFINS.Value         := TipoNota.FieldByName('Apuracao_PISCOFINS').Value;
                             PedidosBaixa_Estoque.Value              := false;
                             PedidosICMS_Destacar.Value              := false;
                             PedidosModalidade_Pgto.Value            := FieldByName('Modalidade_Pagamento').Value;
                             PedidosTotal_Frete.Value                := 0;
                             PedidosIndicador_Presenca.Value         := 9;

                             // Dados do veiculos - Motorista.
                             PedidosArmazem.value                  := FieldByName('Armazem').AsInteger;
                             PedidosTransporte_NomeMotorista.value := mNomeMot;
                             PedidosTransporte_RGMotorista.value   := mRGMot;
                             PedidosTransporte_CPFMotorista.value  := mCPFMot;
                             PedidosTransporte_Placa.value         := mPlacaVei;
                             PedidosTransporte_PlacaUF.value       := mUFVei;
                             PedidosTransporte_CodigoANTT.value    := mANTTVei;
                             PedidosReboque_Placa.value            := mPlacaReb;
                             PedidosReboque_UF.value               := mUFReb;
                             PedidosReboque_ANTT.value             := mANTTReb;
                             PedidosTipo_Pagamento.value           := iif(ModalidadesPgtoGera_Duplicata.asboolean, 1, 0);
                             PedidosForma_Pagamento.value          := 1;

                             // Dados do armazem.
                             if fieldbyname('Armazem').AsInteger <> 0 then begin
                                with Armazem do begin
                                     sql.clear;
                                     sql.add('select Nome');
                                     sql.Add('      ,CNPJ');
                                     sql.Add('      ,Inscricao_Estadual');
                                     sql.Add('      ,Endereco = concat(Rua,'', Nº ''+Rua_Numero,'', '',Bairro,'' - '',Municipio,'' (''+Estado+'') - CEP: ''+substring(CEP,1,5)+''-''+substring(CEP,6,3))');
                                     sql.Add('from Fornecedores');
                                     sql.add('where Codigo = :pArmazem');
                                     parambyname('pArmazem').AsInteger := tPedidosNF.FieldByName('Armazem').AsInteger;
                                     //sql.SaveToFile('c:\temp\Pedidos_RerpresentantesNF_Armazem.sql');
                                     open;

                                     PedidosArmazem_Nome.Value     := FieldByName('Nome').asstring;
                                     PedidosArmazem_CNPJ.Value     := FieldByName('CNPJ').asstring;
                                     PedidosArmazem_IE.Value       := FieldByName('Inscricao_Estadual').asstring;
                                     PedidosArmazem_Endereco.Value := FieldByName('Endereco').asstring;
                                end;
                             end;
                     Pedidos.Post;
                     tTemp.Close;

                     with Campos do begin
                          sql.Clear;
                          sql.Add('select * from Campos where Campo in('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') order by Tabela');
                          Open;
                     end;

                     // Itens do Pedido.
                     with tPedidosNFItens do begin
                          sql.clear;
                          sql.Add('select *');
                          sql.add('from PedidosRepresentantesItens');
                          sql.add('where Pedido = '+quotedstr(tPedidosNF.FieldByName('Pedido').AsString));
                          open;
                          while not Eof do begin
                                PedidosItens.Append;
                                             PedidosItensPedido.Value             := PedidosNumero.Value;
                                             PedidosItensItem.Value               := FieldByName('Item').Value;
                                             PedidosItensSequencia.Value          := FieldByName('Item').Value;
                                             PedidosItensSequencia_SISCOMEX.Value := FieldByName('Item').Value;
                                             PedidosItensCodigo_Mercadoria.Value  := FieldByName('Codigo_Mercadoria').Value;
                                             PedidosItensCodigo_Fabricante.Value  := FieldByName('Codigo_Fabricante').asstring;
                                             with tTemp do begin
                                                  sql.Clear;
                                                  sql.Add('select Codigo');
                                                  sql.Add('      ,NCM');
                                                  sql.Add('      ,Unidade');
                                                  sql.Add('      ,Peso_Liquido');
                                                  sql.Add('      ,Peso_Bruto');
                                                  sql.Add('      ,Aliquota_IPI');
                                                  sql.Add('      ,PIS_NotaSaida');
                                                  sql.Add('      ,COFINS_NotaSaida');
                                                  sql.Add('      ,Descricao');
                                                  sql.Add('      ,Beneficio_FiscalSai');
                                                  sql.Add('from Produtos');
                                                  sql.Add('where Codigo = '+tPedidosNFitens.FieldByName('Codigo_Mercadoria').AsString);
                                                  open;

                                                  // Remove caracteres de controle da descrição do produto.
                                                  mTextoLimpo := RemoveCaracter(#13,'', FieldByName('Descricao').Value);
                                                  mTextoLimpo := RemoveCaracter(#12,'', mTextoLimpo);
                                                  mTextoLimpo := RemoveCaracter(#10,'', mTextoLimpo);
                                                  mTextoLimpo := RemoveCaracter('<{'+Trim(Fieldbyname('Codigo').AsString)+'}>', '', mTextoLimpo);
                                                  mBenef      := FieldByName('Beneficio_FiscalSai').AsString;
                                                  mBenef      := iif(mBenef <> '', mBenef, TipoNota.FieldByName('Beneficio_Fiscal').AsString);
                                             end;
                                             with NCM do begin
                                                  sql.Clear;
                                                  sql.Add('select * from NCM where NCM = '+quotedstr(tTemp.fieldbyname('NCM').Value));
                                                  open;
                                             end;
                                             PedidosItensDescricao_Mercadoria.Value  := Trim(mTextoLimpo);
                                             PedidosItensNCM.Value                   := tTemp.fieldbyname('NCM').Value;
                                             PedidosItensCEST.Value                  := NCMCEST.Value;
                                             PedidosItensUnidade_Medida.Value        := tTemp.fieldbyname('Unidade').Value;
                                             PedidosItensQuantidade.Value            := fieldbyname('Quantidade').asfloat;
                                             PedidosItensValor_Unitario.Value        := fieldbyname('Valor_Unitario').Value;
                                             PedidosItensValor_Total.Value           := fieldbyname('Valor_Unitario').Value * fieldbyname('Quantidade').Value;
                                             PedidosItensPeso_Liquido.Value          := tTemp.fieldbyname('Peso_Liquido').AsFloat;
                                             PedidosItensPeso_Bruto.Value            := tTemp.fieldbyname('Peso_Bruto').AsFloat;
                                             PedidosItensMovimenta_Inventario.Value  := TipoNotaMovimenta_Inventario.Value;
                                             PedidosItensMovimenta_Estoque.Value     := TipoNotaMovimenta_Estoque.Value;
                                             PedidosItensMovimenta_EstoqueRep.Value  := TipoNotaMovimenta_EstoqueRep.Value;
                                             PedidosItensVeiculo.Value               := false;
                                             PedidosItensSaida_Entrada.Value         := 1;
                                             PedidosItensApuracao_PISCOFINS.Value    := TipoNotaApuracao_PISCOFINS.Value;
                                             PedidosItensTipo_Nota.Value             := PedidosTipo_Nota.Value;
                                             PedidosItensAliquota_IPI.Value          := tTemp.fieldbyname('Aliquota_IPI').AsFloat;
                                             PedidosItensFinalidade_Mercadoria.Value := TipoNotaFinalidade_Mercadoria.Value;
                                             PedidosItensAliquota_PIS.Value          := tTemp.fieldbyname('PIS_NotaSaida').AsFloat;
                                             PedidosItensAliquota_COFINS.Value       := tTemp.fieldbyname('COFINS_NotaSaida').AsFloat;
                                             PedidosItensValor_BCIPI.Value           := 0;
                                             PedidosItensValor_IPI.Value             := 0;
                                             PedidosItensTotal_IPI.Value             := 0;
                                             PedidosItensAliquota_ICMSReducao.Value  := 0;
                                             if (Trim(TipoNotaCalculo_BCIPI.AsString) <> '') and (tTemp.fieldbyname('Aliquota_IPI').AsFloat > 0) then begin
                                                PedidosItensValor_BCIPI.Value := CalculaMacro('Calculo_BCIPI');
                                                PedidosItensValor_IPI.Value   := Roundto(Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value)/PedidosItensQuantidade.AsFloat, -2);
                                                PedidosItensTotal_IPI.Value   := Roundto(Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value), -2);
                                             end;
                                             if Trim(TipoNotaCalculo_BCICMS.AsString) <> '' then begin
                                                PedidosItensValor_BCICMSOper.Value := Roundto(CalculaMacro('Calculo_BCICMS'), -2);
                                                PedidosItensValor_ICMSOper.Value   := Roundto(CalculaMacro('Calculo_VlrICMS'), -2);
                                             end;
                                             if Trim(TipoNotaCalculo_BCPIS.AsString)  <> '' then PedidosItensValor_BCPIS.Value  := RoundTo(CalculaMacro('Calculo_BCPIS'), -2);
                                             if Trim(TipoNotaCalculo_PIS.AsString)    <> '' then PedidosItensValor_PIS.Value    := RoundTo(CalculaMacro('Calculo_PIS'), -2);
                                             if Trim(TipoNotaCalculo_COFINS.AsString) <> '' then PedidosItensValor_COFINS.Value := RoundTo(CalculaMacro('Calculo_COFINS'), -2);
                                                
                                             if trim(TipoNotaCalculo_BCIS.AsString)   <> '' then PedidosItensValor_BCIS.Value   := RoundTo(CalculaMacro('Calculo_BCIS'), -4);
                                             if trim(TipoNotaCalculo_VlrIS.AsString)  <> '' then PedidosItensValor_IS.Value     := RoundTo(CalculaMacro('Calculo_VlrIS'), -4);
                                             if trim(TipoNotaCalculo_BCCBS.AsString)  <> '' then PedidosItensValor_BCCBS.Value  := RoundTo(CalculaMacro('Calculo_BCCBS'), -4);
                                             if trim(TipoNotaCalculo_VlrCBS.AsString) <> '' then PedidosItensValor_CBS.Value    := RoundTo(CalculaMacro('Calculo_VlrCBS'), -4);
                                             if trim(TipoNotaCalculo_BCIBS.AsString)  <> '' then PedidosItensValor_BCIBS.Value  := RoundTo(CalculaMacro('Calculo_BCIBS'), -4);
                                             if trim(TipoNotaCalculo_VlrIBS.AsString) <> '' then PedidosItensValor_IBS.Value    := RoundTo(CalculaMacro('Calculo_VlrIBS'), -4);

                                             CalculaImpostos;
                                             if PedidosItensValor_ICMSMonoRet.ascurrency = 0 then begin
                                                PedidosItensPercentual_ICMSMonoRet.value := 0;
                                                PedidosItensValor_BCICMSMonoRet.value    := 0;
                                             end;
                                             PedidosItensBeneficio_Fiscal.value := mBenef;
                                PedidosItens.Post;
                                next;
                          end;
                     end;
                     // Totaliza o pedido.
                     TotalizaPedido;
                     Pedidos.Edit;
                             PedidosInf_Complementares.Clear;
                             if Trim(TipoNotaInf_Complementares.AsString) <> '' then begin
                                PedidosInf_Complementares.Clear;
                                PedidosInf_Complementares.Value := MontaComplemento(TipoNotaInf_Complementares.Value, 1);
                                if trim(TipoNotaInf_Complementares2.asstring) <> '' then begin
                                   PedidosInf_Complementares2.Clear;
                                   PedidosInf_Complementares2.Value := MontaComplemento(TipoNotaInf_Complementares2.Value, 2);
                                end;
                             end;
                     Pedidos.Post;

                     // Gera as duplicatas do pedido caso selecionado.
                     with ModalidadesPgto do begin
                          sql.Clear;
                          sql.Add('select * from ModalidadesPagamento where Codigo = :pCod');
                          parambyname('pCod').asinteger := PedidosModalidade_Pgto.asinteger;
                          open;
                          if fieldbyname('Gera_Duplicata').asboolean then begin
                             tDuplicatas.open;
                             tDuplicatas.clear;
                             GeraDuplicatas(Pedidos.fieldbyname('Numero').asinteger, Pedidos.fieldbyname('Valor_TotalNota').ascurrency);
                          end;
                     end;

                     Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                     Application.ProcessMessages;

                     next;
               end;
          end;

          // Mudando o status dos pedidos.
          with tTemp do begin
               sql.clear;
               sql.Add('update PedidosRepresentantes set Local = 4');
               sql.Add('                                ,Situacao = ''EM FATURAMENTO'' ');
               sql.Add('                                ,Sel = 0');
               sql.Add('                                ,Faturado = 0');
               sql.Add('                                ,Data_Faturamento = null');
               sql.Add('                                ,Usuario = '+quotedstr(Menu_Principal.mUsuarioCodigo));
               sql.Add('where Pedido in ('+mPedidos+')');
               sql.Add('and Local = 3');
               execute;
          end;
          with tTemp do begin
               sql.clear;
               sql.Add('update PedidosRepresentantes set Local = 6');
               sql.Add('                                ,Situacao = ''DESPACHADO'' ');
               sql.Add('                                ,Sel = 0');
               sql.Add('                                ,Faturado = 0');
               sql.Add('                                ,Data_Faturamento = null');
               sql.Add('                                ,Usuario = '+quotedstr(Menu_Principal.mUsuarioCodigo));
               sql.Add('where Pedido = :pPedPai');
               sql.Add('and Local = 3');
               sql.Add('and Total_Pedido = 0');
               parambyname('pPedPai').Value := mPedPai;
               execute;
          end;

          Janela_Processamento.close;
     end;

     Screen.Cursor := crSQLWait;
     close;
end;

procedure TPedidosRepresentantes_PedidoNF2.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TPedidosRepresentantes_PedidoNF2.Button1Click(Sender: TObject);
begin
     Pedido_RepresentanteVeiculo := TPedido_RepresentanteVeiculo.create(self);
     Pedido_RepresentanteVeiculo.caption := caption;
     Pedido_RepresentanteVeiculo.showmodal;
end;

procedure TPedidosRepresentantes_PedidoNF2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     PedidosRepresentantes_PedidoNF2.release;
     PedidosRepresentantes_PedidoNF2 := nil
end;

procedure TPedidosRepresentantes_PedidoNF2.FormShow(Sender: TObject);
begin
      cPedidos.Text   := mPedidos;
      with Dados do begin
           Configuracao.open;
           
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas order by Razao_Social');
                open;
           end;
           with TipoNota do begin
                sql.Clear;
                sql.Add('select *');
                sql.add('from TipoNota');
                sql.add('where Saida_Entrada = 1');
                sql.add('and   Ativo = 1');
                sql.add('and   isnull(Complementar, 0) = 0');
                sql.add('order BY Descricao');
                open;
                //sql.SaveToFile('c:\temp\Gerar_Pedido_Representante_TipoNota.sql');
                cTipoNota.KeyValue := Pedido_RepresentantesSimp.tSeparados.FieldByName('Tipo_Nota').asinteger;
           end;
           with tCFOPDentro do begin
                sql.Clear;
                sql.Add('select Codigo, Descricao_NF');
                sql.Add('from Natureza');
                sql.Add('where Ativo = 1');
                sql.Add('and Saida_Entrada = 1');
                sql.Add('and Substring(Codigo,1,1) = ''5'' ');
                sql.Add('and isnull(Servico, 0) = 0');
                sql.Add('order by Codigo');
                Open;
                cCFOPDentro.KeyValue := Configuracao.FieldByName('Televendas_NaturezaDentro').AsString;
           end;
           with tCFOPFora do begin
                sql.Clear;
                sql.Add('select Codigo, Descricao_NF');
                sql.Add('from Natureza');
                sql.Add('where Ativo = 1');
                sql.Add('and Saida_Entrada = 1');
                sql.Add('and Substring(Codigo,1,1) = ''6'' ');
                sql.Add('and isnull(Servico, 0) = 0');
                sql.Add('order by Codigo');
                Open;
                cCFOPFora.KeyValue := Configuracao.FieldByName('Televendas_NaturezaFora').AsString;
           end;
           with Fornecedores do begin
                sql.Clear;
                sql.Add('select *');
                sql.Add('from Fornecedores');
                sql.Add('where Ativo = 1');
                sql.Add('and Ramo_Atividade in(select Codigo From RamoAtividade where Descricao like ''%TRANSP%'')');
                open;
           end;
           with tTemp do begin
                sql.clear;
                sql.Add('select Pedido, Armazem');
                sql.add('from PedidosRepresentantes');
                sql.add('where Pedido in('+mPedidos+')');
                open;
           end;
      end;
      with Dados do begin
           if Trim(TipoNota.FieldByName('CFOP_Dentro').asstring) <> '' then begin
               cCFOPDentro.KeyValue := TipoNota.FieldByName('CFOP_Dentro').AsString;
           end;
           if Trim(TipoNota.FieldByName('CFOP_fORA').asstring) <> '' then begin
               cCFOPFora.KeyValue := TipoNota.FieldByName('CFOP_Fora').AsString;
           end;
      end;
end;

Function TPedidosRepresentantes_PedidoNF2.MontaComplemento(Texto: String; pCampo:integer):String;
Var
    mTexto,
    mBusca,
    mTroca,
    mCampo,
    mTabela: wideString;
    mAchou : Boolean;
begin
       Screen.Cursor := crAppStart;
       cRich.Width   := 1200;
       if pCampo = 1 then mTexto := cRich.Text;
       if pCampo = 2 then mTexto := cRich2.Text;

       ActiveControl := nil;

       with Dados, dmFiscal, dmContab do Begin
            Tab_Origem.DisableControls;
            Tab_Origem.FetchAll := not Tab_Origem.FetchAll;
            Campos.DisableControls;

            Campos.SQL.Clear;
            Campos.SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, pCampo)+') ORDER BY Tabela');
            //Campos.SQL.SaveToFile('c:\temp\campos.sql');
            Campos.Open;
            
            // Varre toda a tabela de campos para montar o campo de informações complementares.
            Campos.First;
            while not Campos.Eof do begin
                  If CamposTabela.Value <> '' then begin
                     Tab_Origem.Close;
                     If UpperCase(CamposBanco_Dados.Value) = 'CYBERSOFT' then
                        Tab_Origem.Connection := Banco_Empresas;
                     If UpperCase(CamposBanco_Dados.Value) = 'CADASTROS' then
                        Tab_Origem.Connection := Banco;
                     If UpperCase(CamposBanco_Dados.Value) = 'CONTABILIDADE' then
                        Tab_Origem.Connection := Banco_Contabilidade;

                     Tab_Origem.TableName := CamposTabela.Value;
                     Tab_Origem.Open;

                     mTabela := CamposTabela.Value;
                     mAchou  := False;

                     while (CamposTabela.Value = mTabela) and (not Campos.Eof) do begin
                           if Trim(CamposComando_SQL.Value) <> '' then Begin
                              Tab_Origem.Close;
                              Tab_Origem.SQL.Clear;
                              if Trim(CamposTabela_LookUpOrigem.AsString) = '' then begin
                                  Tab_Origem.SQL.Add('SELECT * FROM '+CamposTabela.Value+' '+CamposComando_SQL.AsString);
                                  if Pos('pProcesso', CamposComando_SQL.Value) <> 0 then
                                     Tab_Origem.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
                                  if Pos('pCliente', CamposComando_SQL.Value) <> 0 then
                                     Tab_Origem.ParamByName('pCliente').AsString := ClientesCodigo.AsString;
                                  if Pos('pPedido', CamposComando_SQL.Value) <> 0 then
                                     Tab_Origem.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                                  if Pos('pLocalDesembaraco', CamposComando_SQL.Value) <> 0 then
                                     Tab_Origem.ParamByName('pLocalDesembaraco').AsString := ProcessosDOCLocal_DesembaracoCodigo.AsString;
                                  //Tab_Origem.sql.SaveToFile('c:\temp\Tabela_Origem'+CamposTabela.Value+'.sql');
                                  Tab_Origem.Open;

                                  if (trim(CamposPesquisa.Value) <> '') and (trim(CamposCampo_Chave.Value) <> '') then
                                     mAchou := Tab_Origem.Locate(CamposCampo_Chave.Value, CamposPesquisa.Value, [loCaseInsensitive])
                                  else
                                     mAchou := true;
                              end else begin
                                  Tab_Origem.SQL.Add('SELECT * FROM '+CamposTabela.AsString+' '+CamposComando_SQL.AsString);
                                  If UpperCase(CamposTabela_LookUpOrigem.AsString) = 'PROCESSOSDOCUMENTOS' then
                                     Tab_Origem.ParamByName('pCodigo').AsString := ProcessosDOC.FieldByName(CamposCampo_LookUpPesquisa.AsString).AsString;

                                  Tab_Origem.Open;

                                  If UpperCase(CamposTabela_LookUpOrigem.AsString) = 'PROCESSOSDOCUMENTOS' then
                                     mAChou := Tab_Origem.Locate(CamposCampo_LookUpChave.Value, ProcessosDOC.FieldBYName(CamposCampo_LookUpPesquisa.VAlue).Value, [loCaseInsensitive]);
                              end;
                           end;

                           mBusca := CamposCampo.Value;

                           If Trim(CamposPesquisa.Value) <> '' then Begin
                              mCampo := Copy(mBusca, Pos('[',mBusca)+1, Pos(']',mBusca) - (Pos('[',mBusca)+1) );
                           end else begin
                              If Trim(CamposCampo_Chave.Value) = '' then begin
                                 mCampo := Copy(mBusca, Pos('[',mBusca)+1, Pos(']',mBusca) - (Pos('[',mBusca)+1) );
                              end else
                                 mCampo := CamposCampo_Chave.Value;
                           End;

                           If (UpperCase(CamposTipo.Value) = 'CURRENCY') or (UpperCase(CamposTipo.Value) = 'FLOAT') then begin
                              If Length(Trim(CamposMascara.Value)) <> 0 then begin
                                 If mAchou then
                                    mTroca := FormatFloat(CamposMascara.Value, Tab_Origem.FieldByName(mCampo).AsCurrency)
                                 else
                                    mTroca := FormatFloat(CamposMascara.Value, 0.00 );

                                 mTroca := PadR(mTroca, Length(CamposMascara.Value)-4);
                                 mTexto := RemoveCaracter( mBusca, mTroca, mTexto );
                               End else begin
                                 mTroca := Tab_Origem.FieldByName(mCampo).AsString;
                                 mTexto := RemoveCaracter( mBusca, mTroca, mTexto );
                              End;
                           End else begin
                              if CamposTipo.AsString <> 'Lista' then begin
                                 mTroca := Tab_Origem.FieldByName(mCampo).AsString;
                                 if Length(Trim(CamposMascara.Value)) <> 0 then
                                    mTexto := RemoveCaracter( mBusca, FormatMaskText(CamposMascara.Value,mTroca), mTexto )
                                 else
                                    mTexto := RemoveCaracter( mBusca, mTroca, mTexto );
                              end else begin
                                 mTroca := '';
                                 Tab_Origem.sql.clear;
                                 Tab_Origem.SQL.Add(CamposComando_SQL.AsString);
                                 if Pos(':pProcesso', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
                                 if Pos(':pPedido', CamposComando_SQL.Value) <> 0 then
                                    Tab_Origem.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
                                 Tab_Origem.Open;
                                 Tab_Origem.First;

                                 while not Tab_Origem.eof do begin
                                       if Trim(CamposMascara.AsString) <> '' then
                                          mTroca := mTroca + FormatMaskText(CamposMascara.AsString, Tab_Origem.FieldByName(mCampo).AsString) + ', '
                                       else
                                          mTroca := mTroca + Tab_Origem.FieldByName(mCampo).AsString + ', ';
                                       Tab_Origem.next;
                                 end;
                                 mTroca := Copy(mTroca, 1, Length(mTroca)-2);
                                 mTexto := RemoveCaracter(mBusca, mTroca, mTexto);
                              end;
                           End;

                           Campos.Next;
                     End;
                  End;
            End;

            Campos.EnableControls;
            Tab_Origem.EnableControls;
            Tab_Origem.FetchAll := not Tab_Origem.FetchAll;

            if PedidosDIFAL_Valor.Value > 0 then begin
               if length(trim(mtexto)) > 0 then mTexto := mTexto + CHR(13);
               mTexto := mTexto           + 'DIFAL ICMS RECOLHIDO ESTADO ORIGEM : '+FormatFloat('##0%', 100 - ConfiguracaoDIFAL_ICMSPart.AsFloat) + '  '+FormatFloat('R$ ,##0.00', PedidosDIFAL_ValorOrig.AsFloat);
               mTexto := mTexto + CHR(13) + 'DIFAL ICMS RECOLHIDO ESTADO DESTINO: '+FormatFloat('##0%', ConfiguracaoDIFAL_ICMSPart.AsFloat)       + '  '+FormatFloat('R$ ,##0.00', PedidosDIFAL_ValorDest.AsFloat);
            end;

            if PedidosValor_FCP.Value > 0 then begin
               mTexto := mTexto + CHR(13) + 'FCP RECOLHIDO ESTADO DESTINO       : '+PadR(FormatFloat('##0%', ICMSFCP.AsFloat), 4)+'  '+PadR(FormatFloat(',##0.00', PedidosValor_FCP.AsFloat), 12);
            end;
            if PedidosValor_FCPST.Value > 0 then begin
               mTexto := mTexto + CHR(13) + 'FCP ST RECOLHIDO ESTADO DESTINO    : '+PadR(FormatFloat('##0%', ICMSFCP.AsFloat), 4)+'  '+PadR(FormatFloat(',##0.00', PedidosValor_FCPST.AsFloat), 12);
            end;

            // Monta relação de despesas do processo quando informado no tipo de nota.
            if TipoNota.fieldByName('Mostrar_Despesas').AsBoolean then begin
               with PagarReceber do begin
                    SQL.Clear;
                    SQL.Add('SELECT * FROM PagarReceber WHERE Processo = :pProcesso AND ISNULL(Processo, '''') <> '''' AND Custo_Entrada = 1 ORDER BY Classificacao');
                    ParamByName('pProcesso').AsString := PedidosProcesso.AsString;
                    Open;

                    mAchou := false;

                    first;
                    while not eof do begin
                          mTroca := Trim(Copy(FieldbyName('DescricaoClassificacao').asString, 1, 30));
                          mTroca := mTroca+Replicate('.', 30-Length(mTroca));
                          mTroca := mTroca+':R$'+PadR(FormatFloat(',##0.00', FieldByName('Valor_Total').AsCurrency), 14);
                          if not mAchou then begin
                             mTexto := mTexto + #13 + mTroca;
                          end else begin
                             mTexto := mTexto + '   ' + mTroca;
                          end;
                          mAchou := not mAchou;

                          next;
                    end;
               end;
            end;
       end;
       Screen.Cursor := crDefault;
       Result        := mTexto;
End;

// Executa os calculos dos macro passados como strings.
Function TPedidosRepresentantes_PedidoNF2.CalculaMacro(Campo:String):Real;
var
    mPos   
   ,mTam   
   ,mPosFun
   ,i: Integer;
    mResultado: Real;
    mFormula     
   ,mCampo       
   ,mSQL         
   ,mFuncao      
   ,mFunTermo1   
   ,mFunTermo2   
   ,mFunCondic   
   ,mSinal       
   ,mValorCondic1
   ,mValorCondic2: String;
begin
     with Dados, dmFiscal do begin
          // Convertendo a formula do campo.
          mFormula := RemoveCaracter(#13,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#12,'',TipoNota.FieldByName(Campo).AsString);
          mFormula := RemoveCaracter(#10,'',TipoNota.FieldByName(Campo).AsString);

          Campos.First;
          while not Campos.Eof do begin
                mTam   := Length(Trim(CamposCampo.Value));
                mPos   := Pos(CamposCampo.Value, mFormula);
                mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 60);
                mCampo := Trim(Copy(mCampo, 1, Pos(']',mCampo)-1));

                If (CamposPesquisa.Value <> '') and (mPos <> 0) then Begin
                   mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 30);
                   mCampo := Copy(mCampo, 1, Pos(']',mCampo)-1);
                End;
                
                If (mPos <> 0) then begin
                   Delete(mFormula, mPos, mTam);
                   If UpperCase(CamposTabela.Value) = 'PEDIDOS' then begin
                      If Trim(Pedidos.FieldByName(mCampo).AsString) <> '' then
                         Insert( Pedidos.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PEDIDOSITENS' then begin
                      If Trim(PedidosItens.FieldByName(mCampo).AsString) <> '' then begin
                         Insert( PedidosItens.FieldByName(mCampo).AsString, mFormula, mPos );
                      end else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASTERCEIROSITENS' then begin
                      If Trim(NotasTerceirosItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasTerceirosItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASTERCEIROS' then begin
                      If Trim(NotasTerceirosItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasTerceirosItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASITENS' then begin
                      If Trim(NotasItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PROCESSOSDOCUMENTOS' then begin
                      If Trim(ProcessosDOC.FieldByName(mCampo).AsString) <> '' then
                         Insert( ProcessosDOC.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'ADICOES' then begin
                      If Trim(Adicoes.FieldByName(mCampo).AsString) <> '' then
                         Insert( Adicoes.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'CLIENTES' then begin
                      If Trim(Clientes.FieldByName(mCampo).AsString) <> '' then
                         Insert( Clientes.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NCM' then begin
                      If Trim(NCM.FieldByName(mCampo).AsString) <> '' then
                         Insert( NCM.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PRODUTOS' then begin
                      If Trim(Produtos.FieldByName(mCampo).AsString) <> '' then
                         Insert( Produtos.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'FICHAESTOQUE' then begin
                      If Trim(FichaEstoque.FieldByName(mCampo).AsString) <> '' then
                         Insert( FichaEstoque.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'FICHAINVENTARIO' then begin
                      If Trim(FichaInventario.FieldByName(mCampo).AsString) <> '' then
                         Insert( FichaInventario.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'ICMS' then begin
                      If EmpresasEstado.Value = ClientesEstado.Value then begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_DentroNContrib'
                         else
                            mCampo := 'Imp_DentroContrib';
                      End else begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_ForaNContrib'
                         else
                            mCampo := 'Imp_ForaContrib';
                      End;
                      Insert( ICMS.FieldByName(mCampo).AsString, mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PAGARRECEBER' then begin
                      // Filtra a tabela para pegar o valor do lançamento.
                      If CamposPesquisa.Value <> '' then begin
                         mSQL := PagarReceber.SQL.Text;
                         PagarReceber.SQL.Clear;
                         PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Processo = '+QuotedStr(ProcessosDOCProcesso.Value)+') and ('+CamposCampo_Chave.Value+' = '+QuotedStr(CamposPesquisa.Value)+')' );
                         PagarReceber.Open;

                         // Se não houver lançamento feito insere o valor 0 na formula.
                         If PagarReceber.RecordCount <> 0 then
                            Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                         else
                            Insert( '0', mFormula, mPos );
                      end else begin
                         mCampo := CamposCampo_Chave.Value;
                         Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                      End;
                   End;
                End;
                If mPos = 0 then Campos.Next;
          end;
          while Pos('{', mFormula) > 0 do begin
                mPosFun := Pos('{', mFormula)+1;
                mFuncao := Copy(mFormula, mPosFun, Pos('}', mFormula)-mPosFun);

                // Condição da função.
                mFunCondic := Copy(mFuncao, 1, Pos(';', mFuncao));
                mFuncao    := RemoveCaracter(mFunCondic, '', mFuncao);
                mFunCondic := RemoveCaracter(';', '', mFunCondic);

                // Primeiro termo da função.
                mFunTermo1 := Copy(mFuncao, 1, Pos(';', mFuncao));
                mFuncao    := RemoveCaracter(mFunTermo1, '', mFuncao);
                mFunTermo1 := RemoveCaracter(';', '', mFunTermo1);

                // Segundo termo da função.
                mFunTermo2 := RemoveCaracter(';', '', mFuncao);

                // Sinal utilizado no teste de condição.
                mSinal := '';
                for i := 1 to Length(mFunCondic) do begin
                    if (mFunCondic[i] = '=') or (mFunCondic[i] = '>') or (mFunCondic[i] = '<') then mSinal := mSinal + mFunCondic[i];
                end;

                // Valores da condição.
                mValorCondic1 := Copy(mFunCondic, 1, Pos(mSinal, mFunCondic)-1);
                mValorCondic2 := Copy(mFunCondic, Pos(mSinal, mFunCondic)+Length(mSinal), Length(mFunCondic)-Length(mSinal)-Length(mValorCondic1)) ;
                mFuncao := '';
                for i := Pos('{', mFormula) to Length(mFormula) do begin
                    mFuncao := mFuncao + mFormula[i];
                    If mFormula[i] = '}' then break;
                end;

                if ApenasNumeros(mValorCondic2) <> '' then begin
                   if (mSinal = '=' ) and (StrtoFloat(mValorCondic1) =  StrtoFloat(mValorCondic2)) or
                      (mSinal = '>' ) and (StrtoFloat(mValorCondic1) >  StrtoFloat(mValorCondic2)) or
                      (mSinal = '<' ) and (StrtoFloat(mValorCondic1) <  StrtoFloat(mValorCondic2)) or
                      (mSinal = '<>') and (StrtoFloat(mValorCondic1) <> StrtoFloat(mValorCondic2)) or
                      (mSinal = '<=') and (StrtoFloat(mValorCondic1) <= StrtoFloat(mValorCondic2)) or
                      (mSinal = '>=') and (StrtoFloat(mValorCondic1) >= StrtoFloat(mValorCondic2)) then
                      mFormula := RemoveCaracter(mFuncao, mFunTermo1, mFormula)
                   else
                      mFormula := RemoveCaracter(mFuncao, mFunTermo2, mFormula);
                end else begin
                   if (mSinal = '=' ) and (mValorCondic1 =  mValorCondic2) or
                      (mSinal = '>' ) and (mValorCondic1 >  mValorCondic2) or
                      (mSinal = '<' ) and (mValorCondic1 <  mValorCondic2) or
                      (mSinal = '<>') and (mValorCondic1 <> mValorCondic2) or
                      (mSinal = '<=') and (mValorCondic1 <= mValorCondic2) or
                      (mSinal = '>=') and (mValorCondic1 >= mValorCondic2) then
                      mFormula := RemoveCaracter(mFuncao, mFunTermo1, mFormula)
                   else
                      mFormula := RemoveCaracter(mFuncao, mFunTermo2, mFormula);
                end;
          end;
     end;

     mMacro.Formula := mFormula;
     mResultado     := mMacro.Calc([0]);
     if mResultado <= 0 then mResultado := 0;
     
     with Pedido_RepresentantesSimp do begin 
          if Campo = 'Calculo_Mercadoria' then begin
             cFormula.Lines.Add(Replicate('=',129));
             cFormula.Lines.Add('      ITEM: '+Dados.PedidosItensItem.AsString);
             cFormula.Lines.Add('   PRODUTO: '+Dados.PedidosItensCodigo_Mercadoria.AsString + ' - '+Copy(Dados.PedidosItensDescricao_Mercadoria.AsString,1,100));
             cFormula.Lines.Add('QUANTIDADE: '+FormatFloat('###,###,##0.00000000', Dados.PedidosItensQuantidade.ASFloat));
             cFormula.Lines.Add('QTDE P/UNI: '+FormatFloat('###,###,##0.00000000', Dados.ProdutosQuantidade_Unidade.AsFloat));
             cFormula.Lines.Add('  UNITARIO: '+FormatFloat('###,###,##0.00000000', mMacro.Calc([0])));
             cFormula.Lines.Add('     TOTAL: '+FormatFloat('###,###,##0.00000000', mMacro.Calc([0]) * Dados.PedidosItensQuantidade.AsFloat));
             cFormula.Lines.Add('');
          end;
          cFormula.Lines.Add('     CAMPO: '+Campo);
          cFormula.Lines.Add('   FÓRMULA: '+RemoveCaracter(#13,'',Dados.TipoNota.FieldByName(Campo).AsString));
          cFormula.Lines.Add('   VALORES: '+mFormula);
          cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', mResultado ));
          cFormula.Lines.Add('');
     end;
     
     Result := mResultado;
end;

procedure TPedidosRepresentantes_PedidoNF2.CalculaImpostos;
Var
    mUF,
    mCST: String;
    mApuracao1,
    mApuracao2: Currency;
begin
      With Dados, dmFiscal do begin
           // Pegando a aliquota do ICMS Operacional.
           with Produtos do begin
                sql.clear;
                sql.add('select * from Produtos where Codigo = :pCod');
                parambyname('pCod').AsInteger := PedidosItensCodigo_Mercadoria.asinteger;
                open;
           end;
           
           PedidosItensAliquota_ICMSOper.Value      := PedidosAliquota_ICMSOper.AsFloat;
           PedidosItensAliquota_ICMSReducao.Value   := ProdutosICMS_Reducao.Value;
           PedidosItensPercentual_ICMSMono.value    := ProdutosPercentual_ICMSMonoSai.AsFloat;
           PedidosItensPercentual_ICMSMonoRet.value := ProdutosPercentual_ICMSMonoRet.AsFloat;
           if NCMICMS_Operacional.Value = 0 then begin
              // Mercadoria de origem importada.
              if trim(NCMCodigoTrib_TabA.asstring) = '' then begin
                 Janela_Processamento.Close;
                 messagedlg('Erro!'+#13+#13+'CST ICMS (Tabela A) - "Importado" não informado na NCM.', mtError, [mbok], 0);
                 abort;
              end;
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
                 // Atacadistas.
                 If ClientesAtacadista.AsBoolean then begin
                    PedidosItensAliquota_ICMSOper.Value := ICMSImp_Atacadista.AsFloat;
                 End;
                 // Varejistas.
                 If ClientesVarejista.AsBoolean then begin
                    PedidosItensAliquota_ICMSOper.Value := ICMSImp_Varejista.AsFloat;
                 End;
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
              if trim(NCMCodigoTrib_TabA3.asstring) = '' then begin
                 Janela_Processamento.Close;
                 messagedlg('Erro!'+#13+#13+'CST ICMS (Tabela A) - "Importado Adiquirido Mercado Interno.', mtError, [mbok], 0);
                 abort;
              end;
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
                 // Atacadistas.
                 If ClientesAtacadista.AsBoolean then begin
                    PedidosItensAliquota_ICMSOper.Value := ICMSImp_Atacadista.AsFloat;
                 End;
                 // Varejistas.
                 If ClientesVarejista.AsBoolean then begin
                    PedidosItensAliquota_ICMSOper.Value := ICMSImp_Varejista.AsFloat;
                 End;
              end;
              // Mercadoria de origem Nacional.
              if trim(NCMCodigoTrib_TabA2.asstring) = '' then begin
                 Janela_Processamento.Close;
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
                 // Atacadistas.
                 If ClientesAtacadista.AsBoolean then begin
                    PedidosItensAliquota_ICMSOper.Value := ICMSNac_Atacadista.AsFloat;
                 End;
                 // Varejistas.
                 If ClientesVarejista.AsBoolean then begin
                    PedidosItensAliquota_ICMSOper.Value := ICMSNac_Varejista.AsFloat;
                 End;
              end;
              if ClientesSimples_Nacional.AsBoolean = true then begin
                 PedidosItensAliquota_ICMSOper.Value := ICMSSimples_Nacional.AsFloat;
                 if ICMSSimples_Nacional.AsFloat = 0 then begin
                    MessageDlg('Alíquota do ICMS do "SIMPLES" não encontrada na tabela de ICMS dos estados.', mtError, [mbok], 0);
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
           
           // Verifica se existe alíquota de ICMS informado no cadastro do produto.
           // Dentro do Estado.
           If (PedidosDestinatario_Estado.Value = EmpresasEstado.Value) and (ProdutosICMS_DentroEstado.AsFloat > 0) then begin
              PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_DentroEstado.ASFloat;
           End;
           // Fora do Estado.
           If (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) and (ProdutosICMS_ForaEstado.AsFloat > 0) then begin
              PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_ForaEstado.ASFloat;
           End;

           PedidosItensAliquota_IPI.Value := ProdutosAliquota_IPI.Value;

           If ProdutosReducao_IPI.AsFloat         > 0 then PedidosItensAliquota_IPI.Value := ProdutosReducao_IPI.Value;
           If ProdutosAcordo_TarifarioIPI.AsFloat > 0 then PedidosItensAliquota_IPI.Value := ProdutosAcordo_TarifarioIPI.Value;

           If (Trim(TipoNotaCalculo_BCIPI.AsString) <> '') and (PedidosItensAliquota_IPI.Value > 0) then begin
              PedidosItensValor_BCIPI.Value := CalculaMacro('Calculo_BCIPI');
              PedidosItensValor_IPI.Value   := Roundto(Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value) / PedidosItensQuantidade.AsFloat, -2);
              PedidosItensTotal_IPI.Value   := Roundto(Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value), -2);
           end else begin
              PedidosItensValor_BCIPI.Value := 0;
              PedidosItensValor_IPI.Value   := 0;
              PedidosItensTotal_IPI.Value   := 0;
           End;

           If Trim(TipoNotaCalculo_BCICMS.AsString) <> '' then begin
              PedidosItensValor_BCICMSOper.Value := Roundto(CalculaMacro('Calculo_BCICMS'), -2);
              PedidosItensValor_ICMSOper.Value   := Roundto(CalculaMacro('Calculo_VlrICMS'), -2);
           end else
              PedidosItensValor_BCICMSOper.Value := 0;

           // Pegando a aliquota e calculando o MVA.
           mUF := Trim(ClientesEstado.Value)+'_MVA';

           if not NCMMVA_NaoReducao.AsBoolean then begin
              If ClientesSimples_Nacional.AsBoolean = false then begin
                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
              end else begin
                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
              End;
           end;

           If NCM.FieldbyName(mUF).AsFloat <> 0 then
              PedidosItensValor_MVA.Value := Percentual( (PedidosItensValor_Total.Value+PedidosItensTotal_IPI.Value), PedidosItensAliquota_MVA.Value )
           else
              PedidosItensValor_MVA.Value := 0;

           // Pegando a aliquota e calculando o ICMS Substitutivo.
           PedidosItensValor_BCICMSSub.Value  := 0;
           PedidosItensValor_ICMSSub.Value    := 0;
           mUF                                := Trim(ClientesEstado.Value)+'_ICMS';
           PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;

           If PedidosItensAliquota_ICMSSub.Value > 0 then begin
              If Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '' then begin
                 If PedidosItensAliquota_MVA.Value <> 0 then begin
                    PedidosItensValor_BCICMSSub.Value := CalculaMacro('Calculo_BCICMSSub');
                    If Trim(TipoNotaCalculo_VlrICMSSub.Value) <> '' then PedidosItensValor_ICMSSub.Value := CalculaMacro('Calculo_VlrICMSSub');
                 End;
              End;
           End;

           mCST := '';
           if EmpresasRegime_Apuracao.AsInteger = 3 then begin
              // Empresas optantes do Regime normal.
              If PedidosItensValor_ICMSOper.Value <> 0 then
                 mCST := mCST + '+O'
              else
                 mCST := mCST + '-O';     // ICMS Operacional.

              If (Int(PedidosItensValor_BCICMSOper.Value) < Int(PedidosItensValor_Total.Value)) and (PedidosItensValor_BCICMSOper.Value > 0) then
                 mCST := mCST + '+R'
              else
                 mCST := mCST + '-R';     // Reducao de base.

              If TipoNotaSaida_Entrada.Value = 0 then begin
                 mCST := mCST + '-S';     // ICMS ST na Entrada.
              end else begin
                 If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat <> 0) and (PedidosItensValor_ICMSSub.Value <> 0) then
                    mCST := mCST + '+S'
                 else
                    mCST := mCST + '-S';  // ICMS ST na Saida.
              End;
              If (TipoNotaIsencao_ICMS.AsBoolean   = true)   or  (NCMICMS_Isento.AsBoolean = true)  then mCST := '+I';
              If TipoNotaNao_Tributada_ICMS.Value  = true                                           then mCST := '+NT';
              If (TipoNotaSuspensao_ICMS.AsBoolean = true) or  (NCMICMS_Suspensao.AsBoolean = true) then mCST := '+SUS';
              If (ProcessosDOCICMS_Diferido.Value  = true) and (TipoNotaSaida_Entrada.Value = 0)    then mCST := '+D';
              If (TipoNotaDiferido_ICMS.AsBoolean  = true) then mCST := '+D';

              // CST para Detalhe especifico combustivel.
              if PedidosSaida_Entrada.AsInteger = 0 then begin
                 if ProdutosCSTICMS_Entrada.asstring <> '' then mCST := ProdutosCSTICMS_Entrada.AsString;
              end else begin
                 if ProdutosCSTICMS_Saida.asstring <> '' then mCST := ProdutosCSTICMS_Saida.AsString;
              end;
              if TipoNotaMonofasico_Comb.asboolean         then MCST := '02';
              if TipoNotaMonofasico_CombRetencao.asboolean then MCST := '15';
              if TipoNotaMonofasico_CombDiferido.asboolean then MCST := '53';
              if TipoNotaMonofasico_CombAnterior.asboolean then MCST := '61';

              If not CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]) then begin
                 mCST := '<>';
                 CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]);
              End;
           end else begin
              // Empresas optantes do Regime do Simples Nacional.
              If TipoNotaSaida_Entrada.Value = 1 then begin
                 If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat = 0) and (not ClientesConsumidor_Final.AsBoolean) and (not ClientesSimples_Nacional.AsBoolean) then
                    mCST := '101'
              End;
              If TipoNotaSaida_Entrada.Value = 0 then begin
                 If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat = 0) then
                    mCST := '102'
              end else begin
                 If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat = 0) and ((ClientesConsumidor_Final.AsBoolean) or (ClientesSimples_Nacional.AsBoolean)) then
                    mCST := '102'
              End;
              If (TipoNotaIsencao_ICMS.AsBoolean) or (NCMICMS_Isento.AsBoolean) then begin
                 If PedidosSaida_Entrada.AsInteger = 0 then begin         // NF de Entrada.
                    If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat = 0) then
                       mCST := '103'
                 end else begin                                           // NF de Saída.
                     If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat = 0) then
                        mCST := '103'
                 End;
              End;
              If TipoNotaSaida_Entrada.Value = 1 then begin
                 If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat > 0) and (not ClientesConsumidor_Final.AsBoolean) and (not ClientesSimples_Nacional.AsBoolean) then
                    mCST := '201'
              End;
              If TipoNotaSaida_Entrada.Value = 0 then begin
                 If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat > 0) then
                    mCST := '202'
              end else begin
                 If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat > 0) and ((ClientesConsumidor_Final.AsBoolean) or (ClientesSimples_Nacional.AsBoolean)) then
                    mCST := '202'
              End;
              If (TipoNotaIsencao_ICMS.AsBoolean) or (NCMICMS_Isento.AsBoolean) then begin
                 If PedidosSaida_Entrada.AsInteger = 0 then begin         // NF de Entrada.
                    If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat > 0) then
                       mCST := '203'
                 end else begin                                           // NF de Saída.
                     If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat > 0) then
                        mCST := '203'
                 End;
              End;
              If (TipoNotaImune_ICMS.AsBoolean) or (NCMICMS_Imune.AsBoolean) then mCST := '300';
              If TipoNotaNao_Tributada_ICMS.AsBoolean                        then mCST := '400';
              If TipoNotaDiferido_ICMS.AsBoolean                             then mCST := '900';

              If PedidosSaida_Entrada.AsInteger = 0 then begin
                 If Trim(TipoNotaCSOSN_Entrada.AsString) <> '' then begin
                    mCST := Trim(TipoNotaCSOSN_Entrada.AsString);
                 End;
              end else begin
                 If Trim(TipoNotaCSOSN_Saida.AsString) <> '' then begin
                    mCST := Trim(TipoNotaCSOSN_Saida.AsString);
                 End;
              End;

              if TipoNotaMonofasico_Comb.asboolean         then MCST := '02';
              if TipoNotaMonofasico_CombRetencao.asboolean then MCST := '15';
              if TipoNotaMonofasico_CombDiferido.asboolean then MCST := '53';
              if TipoNotaMonofasico_CombAnterior.asboolean then MCST := '61';

              If not CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]) then begin
                 mCST := 'S<>';
                 CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]);
              End;
           End;
           
           If PedidosItensValor_Total.Value > 0 then begin
              // Mercadoria de origem importada.
              If ProdutosOrigem.AsString = 'I' then begin
                 PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA.Value;
              end;
              // Mercadoria de origem importada adquirida no mercado interno.
              If ProdutosOrigem.AsString = 'M' then begin
                 PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA3.Value;
              end;
              // Mercadoria de origem nacional.
              If ProdutosOrigem.AsString = 'N' then begin
                 PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA2.Value;
              end;
              PedidosItensCodigoTrib_TabB.Value := CSTTabelaBCodigo.Value;
           End;

           mApuracao1 := PedidosItensValor_Total.Value - PedidosItensValor_BCICMSOper.Value;

           If mApuracao1 < 0 then mApuracao1 := 0;

           mApuracao2 := 0;

           // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe.
           If Pos('Pedidos_[Valor_TotalProdutos]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
              mApuracao2 := mApuracao2 + PedidosItensValor_Total.Value;
           If Pos('Pedidos_[Valor_OutrasDespesas]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then begin
              If ProdutosTipo_Conversao.Value <> 'M' then
                 mApuracao2 := mApuracao2 + ((PedidosItensValor_Despesa.Value*PedidosItensQuantidade.AsFloat) * ProdutosQuantidade_Unidade.AsFloat)
              else
                 mApuracao2 := mApuracao2 + ((PedidosItensValor_Despesa.Value*PedidosItensQuantidade.AsFloat) / ProdutosQuantidade_Unidade.AsFloat);
           End;
           If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
              mApuracao2 := mApuracao2 + PedidosItensValor_ICMSOPer.Value;
           If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
              mApuracao2 := mApuracao2 + PedidosItensValor_ICMSSub.Value;
           If (Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0) or
              (Pos('Pedidos_[Total_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0) then
              mApuracao2 := mApuracao2 + PedidosItensValor_Frete.Value;
           If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
              mApuracao2 := mApuracao2 + PedidosItensValor_Frete.Value;
           If (Pos('Valor_PIS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
              (Pos('NCM_[PIS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
              (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
              If ProdutosTipo_Conversao.Value <> 'M' then
                 mApuracao2 := mApuracao2 + (PedidosItensValor_PIS.Value * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
              else
                 mApuracao2 := mApuracao2 + (PedidosItensValor_PIS.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
           End;
           If (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
              (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
              (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
              If ProdutosTipo_Conversao.Value <> 'M' then
                 mApuracao2 := mApuracao2 + (PedidosItensValor_COFINS.Value * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
              else
                 mApuracao2 := mApuracao2 + (PedidosItensValor_COFINS.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
           End;

           // Verifica se a mercadoria entrou com ICMS ST. e se o cliente é de fora do estado.
           tEntradaST.SQL.Clear;
           tEntradaST.SQL.Add('SELECT COUNT(*) AS Entradas');
           tEntradaST.SQL.Add('FROM   NotasTerceirosItens');
           tEntradaST.SQL.Add('WHERE  (Codigo_Mercadoria = :pCodigo)');
           tEntradaST.SQL.Add('  AND  (SELECT Somar_ICMSST FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 1');
           tEntradaST.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
           tEntradaST.Open;

           If (tEntradaST.FieldByName('Entradas').AsInteger > 0) and (EmpresasEstado.Value <> ClientesEstado.Value) then begin
              PedidosItensValor_IsentasICMS.Value := 0;
              PedidosItensValor_OutrasICMS.Value  := mApuracao2;
           end else begin
              If (EmpresasDistribuidora.AsBoolean = true) and (ProdutosEntrada_ST.AsBoolean = true) then begin
                 mApuracao1 := 0;
              end else begin
                 mApuracao2 := mApuracao2-PedidosItensValor_BCICMSOper.Value-mApuracao1;
              End;

              If mApuracao2 < 0 then mApuracao2 := 0;

              If CSTTabelaBApuracao1.Value <> CSTTabelaBApuracao2.Value then begin
                 If CSTTabelaBApuracao1.Value = 'I' then begin
                    PedidosItensValor_IsentasICMS.Value := mApuracao1;
                    PedidosItensValor_OutrasICMS.Value  := mApuracao2;
                 End;
                 If CSTTabelaBApuracao1.Value = 'O' then begin
                    PedidosItensValor_IsentasICMS.Value := mApuracao2;
                    PedidosItensValor_OutrasICMS.Value  := mApuracao1;
                 End;
              end else begin
                 If CSTTabelaBApuracao1.Value = 'I' then begin
                    PedidosItensValor_IsentasICMS.Value := mApuracao1 + mApuracao2;
                    PedidosItensValor_OutrasICMS.Value  := 0;
                 End;
                 If CSTTabelaBApuracao1.Value = 'O' then begin
                    PedidosItensValor_IsentasICMS.Value := 0;
                    PedidosItensValor_OutrasICMS.Value  := mApuracao1+mApuracao2;
                 End;
              End;
           End;

           // Valor de isentas e outras quando selecionado no tipo de nota "Não destacar ICMS".
           If TipoNotaICMS_Destacar.AsBoolean then begin
              PedidosItensValor_IsentasICMS.Value := 0;
              PedidosItensValor_OutrasICMS.Value  := PedidosItensValor_Total.Value;
              PedidosItensValor_IsentasIPI.Value  := 0;
              PedidosItensValor_OutrasIPI.Value   := PedidosItensValor_Total.Value;
           End;

           // CST DE IPI.
           mCST                              := '';
           If PedidosItensValor_IPI.Value     <> 0   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IPI';
           If ProdutosValor_IPI.Value         <> 0   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+V';
           If NCMIPI_TribAliquotaZero.Value   = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+V';
           If (NCMIPI_Isento.AsBoolean) or (TipoNotaIsencao_IPI.AsBoolean) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+I';
           If TipoNotaNao_Tributada_IPI.Value = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+NT';
           If TipoNotaImune_IPI.Value         = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IM';
           If NCMIPI_Suspensao.Value          = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';
           If TipoNotaSuspensao_IPI.Value     = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';
           If mCST                            = ''   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+<>';
           If CSTIPI.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
              mCST := '<>';
              CSTIPI.Locate('Classificacao', mCST, [loCaseInsensitive]);
           End;
           PedidosItensCSTIPI.Value := CSTIPICodigo.Value;

           PedidosItensValor_OutrasIPI.Value  := 0;
           PedidosItensValor_IsentasIPI.Value := 0;
           mApuracao1                         := 0;

           // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe.
           If Pos('Pedidos_[Valor_OutrasDespesas]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
              mApuracao1 := mApuracao1 + (PedidosItensValor_Despesa.Value * PedidosItensQuantidade.Value);
           If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
              mApuracao1 := mApuracao1 + PedidosItensValor_ICMSOPer.Value;
           If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
              mApuracao1 := mApuracao1 + PedidosItensValor_ICMSSub.Value;
           If (Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0) or
              (Pos('Pedidos_[Total_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0) then
              mApuracao1 := mApuracao1 + PedidosItensValor_Frete.Value;
           If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
              mApuracao1 := mApuracao1 + PedidosItensValor_Frete.Value;
           If (Pos('Valor_PIS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
              (Pos('NCM_[PIS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
              (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
              If ProdutosTipo_Conversao.Value <> 'M' then
                 mApuracao1 := mApuracao1 + (PedidosItensValor_PIS.Value * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
              else
                 mApuracao1 := mApuracao1 + (PedidosItensValor_PIS.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
           End;
           If (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
              (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
              (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
              If ProdutosTipo_Conversao.Value <> 'M' then
                 mApuracao1 := mApuracao1 + (PedidosItensValor_COFINS.Value * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.AsFloat))
              else
                 mApuracao1 := mApuracao1 + (PedidosItensValor_COFINS.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.AsFloat));
           End;
           If PedidosItensValor_IPI.Value = 0 then
               mApuracao1 := mApuracao1 + PedidosItensValor_Total.Value;
           If CSTIPI.FieldByName('Apuracao').Value = 'O' then
              PedidosItensValor_OutrasIPI.Value := mApuracao1
           else
              PedidosItensValor_IsentasIPI.Value := mApuracao1;

           PedidosItensAliquota_PISRed.Value    := 0;
           PedidosItensAliquota_COFINSRed.Value := 0;

           // Código de Situação Tributaria do PIS.
           mCST := '';
           if PedidosSaida_Entrada.AsInteger = 1 then begin
              mUF  := Trim(ClientesEstado.Value)+'_ICMS';
              If (ProdutosPIS_NotaSaida.AsFloat > 0) and (ProdutosPIS_NotaSaida.AsFloat = ConfiguracaoPIS_AliquotaBasicaSaida.AsFloat) then
                 mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+B';                                     // 01.
              If (ProdutosPIS_NotaSaida.AsFloat > 0) and (ProdutosPIS_NotaSaida.AsFloat <> ConfiguracaoPIS_AliquotaBasicaSaida.Value)   then
                 mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+D';                                     // 02.
              If (TipoNotaCSTPIS_AliquotaUM.AsBoolean   ) or (ProdutosCSTPIS_AliquotaUM.AsBoolean   ) then
                 mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+UM';                                    // 03.
              If (TipoNotaCSTPIS_Monofasica.AsBoolean   ) or (ProdutosCSTPIS_Monofasica.AsBoolean   ) then
                 mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+MONO+A0';                               // 04.
              If (TipoNotaCSTPIS_AliquotaZero.AsBoolean ) or (ProdutosCSTPIS_AliquotaZero.AsBoolean ) then
                 mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';                                    // 06.
              If (TipoNotaCSTPIS_Isenta.AsBoolean       ) or (ProdutosCSTPIS_Isenta.AsBoolean       ) then
                 mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';                                   // 07.
              If (TipoNotaCSTPIS_SemIncidencia.AsBoolean) or (ProdutosCSTPIS_SemIncidencia.AsBoolean) then
                 mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC';                                  // 08.
              If (TipoNotaCSTPIS_Suspensao.AsBoolean    ) or (ProdutosCSTPIS_Suspensao.AsBoolean    ) then
                 mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';                                   // 09.
              If (TipoNotaCSTPIS_Outras.AsBoolean       ) or (ProdutosCSTPIS_Outras.AsBoolean       ) then
                 mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';                                     // Outras.
           end else begin
              if Trim(ProdutosCSTPIS_Entrada.AsString) <> '' then begin
                 if CSTPIS.Locate('Codigo', ProdutosCSTPIS_Entrada.Value, [loCaseInsensitive]) = true then begin
                    mCST := CSTPISClassificacao.Value;
                 end;
              end else begin
                 if Trim(TipoNotaCST_PIS.Value) <> '' then begin
                    if CSTPIS.Locate('Codigo', TipoNotaCST_PIS.Value, [loCaseInsensitive]) = true then begin
                       mCST := CSTPISClassificacao.Value;
                    end;
                 end else begin
                    If (ProdutosPIS_Nota.AsFloat > 0) then
                       mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+RNTNTMIE'; // 56;
                 end;
              end;

              If (TipoNotaCSTPIS_Isenta.AsBoolean        = true) or (ProdutosCSTPIS_IsentaEnt.AsBoolean        = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';  // 71.
              If (TipoNotaCSTPIS_Suspensao.AsBoolean     = true) or (ProdutosCSTPIS_SuspensaoEnt.AsBoolean     = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';  // 72.
              If (TipoNotaCSTPIS_AliquotaZero.AsBoolean  = true) or (ProdutosCSTPIS_AliquotaZeroEnt.AsBoolean  = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';   // 73.
              If (TipoNotaCSTPIS_SemIncidencia.AsBoolean = true) or (ProdutosCSTPIS_SemIncidenciaEnt.AsBoolean = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC'; // 74.
              If (TipoNotaCSTPIS_Outras.AsBoolean        = true) or (ProdutosCSTPIS_OutrasEnt.AsBoolean        = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';    // Outras.
           end;
           
           If CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
              mCST := '<>';
              CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]);
              CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]);
           End;

           PedidosItensCSTPIS.Value    := CSTPISCodigo.Value;
           PedidosItensCSTCOFINS.Value := CSTPISCodigo.Value;

           // Pegando a alíquota da COFINS.
           If CSTPISTributavel.AsBoolean = true then begin
              If PedidosSaida_Entrada.AsInteger = 0 then
                 PedidosItensAliquota_PIS.Value := ProdutosPIS_Nota.Value
              else
                 PedidosItensAliquota_PIS.Value := ProdutosPIS_NotaSaida.Value;
           End;
           If CSTCOFINSTributavel.AsBoolean = true then begin
              If PedidosSaida_Entrada.AsInteger = 0 then
                 PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_Nota.Value
              else
                 PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_NotaSaida.Value;
           End;

           // Calculo dos valores de PIS e COFINS.
           If Trim(TipoNotaCalculo_BCPIS.AsString)  <> '' then
              PedidosItensValor_BCPIS.Value  := RoundTo(CalculaMacro('Calculo_BCPIS'), -2);
           If Trim(TipoNotaCalculo_PIS.AsString)    <> '' then
              PedidosItensValor_PIS.Value    := RoundTo(CalculaMacro('Calculo_PIS'), -2);
           If Trim(TipoNotaCalculo_COFINS.AsString) <> '' then
              PedidosItensValor_COFINS.Value := RoundTo(CalculaMacro('Calculo_COFINS'), -2);

           If CSTPISTributavel.AsBoolean = false then begin
              PedidosItensAliquota_PIS.Value    := 0;
              PedidosItensAliquota_COFINS.Value := 0;
              PedidosItensValor_BCPIS.Value     := 0;
              PedidosItensValor_PIS.Value       := 0;
              PedidosItensValor_COFINS.Value    := 0;
           End;

           if TipoNotaMedia_BCR.AsBoolean = true then CalculoBCR;
           PedidosItensCEST.Value            := NCM.FieldByName('CEST').AsString;
           PedidosItensNatureza_Codigo.Value := Pedidos.FieldByName('Natureza_Codigo').Value;
           
           // Calculo do ICMS monofasico.
           PedidosItensValor_ICMSMono.Value      := 0;
           PedidosItensValor_ICMSMonoRet.Value   := 0;
           PedidosItensValor_BCICMSMono.Value    := 0;
           PedidosItensValor_BCICMSMonoRet.Value := 0;
           if TipoNotaCalculo_BCICMSMono.Value <> '' then begin
              PedidosItensValor_BCICMSMono.value := roundto(CalculaMacro('Calculo_BCICMSMono'), -2);
           end;
           if TipoNotaCalculo_BCICMSMonoRet.Value <> '' then begin
              PedidosItensValor_BCICMSMonoRet.value := roundto(CalculaMacro('Calculo_BCICMSMonoRet'), -2);
           end;
           if TipoNotaCalculo_ICMSMono.Value <> '' then begin
              PedidosItensValor_ICMSMono.value := roundto(CalculaMacro('Calculo_ICMSMono'), -2);
           end;
           if TipoNotaCalculo_ICMSMonoRet.Value <> '' then begin
              PedidosItensValor_ICMSMonoRet.value := roundto(CalculaMacro('Calculo_ICMSMonoRet'), -2);
           end;
           // Casa não tenha valor do ICMS Monofasico calculado zera bases e aliquotas.
           if PedidosItensValor_ICMSMonoRet.ascurrency = 0 then begin                 
              PedidosItensPercentual_ICMSMonoRet.value := 0;
              PedidosItensValor_BCICMSMonoRet.value    := 0;
           end;
      End;
end;

procedure TPedidosRepresentantes_PedidoNF2.CalculoBCR;
Var
   mUF : String;
   mBCR: Real;
begin
      with Dados, dmFiscal do Begin
           // Calculo do valor da "Média BCR" para as notas fiscais de saída.
           if PedidosSaida_Entrada.AsInteger = 1 then begin
              tBCR.SQL.Clear;
              tBCR.SQL.Add('SELECT ');
              if EmpresasDistribuidora.AsBoolean = false then begin
                 tBCR.SQL.Add('       ISNULL(ROUND((SELECT SUM(ISNULL(Valor_Total,0)+ISNULL(Valor_Despesa,0)) FROM NotasItens WHERE(Saida_Entrada = 0) AND (Codigo_Mercadoria = :pCodigo) AND (Cancelada <> 1) AND (Movimenta_Inventario = 1)), 4,0),0) +');
                 tBCR.SQL.Add('       ISNULL(ROUND((SELECT SUM(Valor_LiquidoOrig) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1) AND (Inventario_Terceiros = 0) ');
                 tBCR.SQL.Add('                     AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0), 4,0),0) AS Total_Entradas,');
                 tBCR.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1)');
                 tBCR.SQL.Add('       AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0 ), 0) AS Estoque');
              end else begin
                 tBCR.SQL.Add('       ISNULL(ROUND((SELECT SUM(Valor_LiquidoOrig) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1)');
                 tBCR.SQL.Add('              AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0 ), 4,0), 0) AS Total_Entradas,');
                 tBCR.SQL.Add('       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Inventario = 1)');
                 tBCR.SQL.Add('       AND (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE(Codigo = Referencia_Fiscal)) = 0 ), 0) AS Estoque');
              end;
              tBCR.ParamByName('pCodigo').AsInteger := PedidosItensCodigo_Mercadoria.AsInteger;
              //tBCR.SQL.SaveToFile('c:\temp\Media_BCR.SQL');
              tBCR.Open;

              // Pegando a aliquota do MVA.
              mUF := Trim(ClientesEstado.Value)+'_MVA';
              if not NCMMVA_NaoReducao.AsBoolean then begin
                 if ClientesSimples_Nacional.AsBoolean = false then begin
                    PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                 end else begin
                    PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
                 end;
              end;

              mBCR := tBCR.FieldByName('Total_Entradas').AsCurrency * (1+(PedidosItensAliquota_MVA.AsFloat/100));
              PedidosItensMedia_BCR.Value := Roundto((mBCR / tBCR.FieldByName('Estoque').Value) * PedidosItensQuantidade.AsFloat, -2);
           end;
      end;
end;

procedure TPedidosRepresentantes_PedidoNF2.TotalizaPedido;
Var
    mVolume_PesoLiquido,
    mVolume_PesoBruto,
    mRateio_Descontos,
    mVolumes,
    mAliquota_ICMSOper,
    mBCIPI,
    mValor_TotalIPI,
    mBCICMS,
    mValorICMS,
    mValor_TotalProdutos,
    mValorICMS_Substitutivo,
    mBCICMS_Substitutivo,
    mValorICMS_Reducao,
    mValor_TotalMVA,
    mValor_PIS,
    mValor_COFINS,
    mValor_PIS2,
    mValor_COFINS2,
    mValor_TotalIINF,
    mValor_TotalIIRateio,
    mValor_TotalDespesas,
    mValor_IsentasICMS,
    mValor_OutrasICMS,
    mValor_IsentasIPI,
    mValor_OutrasIPI,
    mValor_Descontos,
    mValor_DUMPING,
    mDespesasOutros,
    mBCPIS,
    mValor_Seguro,
    mValor_Frete,
    mTotalImpostos,
    mValor_IRPJ,
    mValor_CSLL,
    mValor_Inventario,
    mValor_BCICMSDest,
    mValor_ICMSDest,
    mBCDIFAL,
    mDIFAL_Valor,
    mDIFAL_ValorOrig,
    mDIFAL_ValorDest,
    mFCP_ValorDest,
    mFCP_ICMSDest,
    mFCP_ICMSORIG,
    mValor_BCFCP,
    mValor_FCP,
    mValor_BCFCPST,
    mValor_FCPST,
    mValor_Lucro,
    mValor_CIF,
    mValor_AFRMM,
    mValor_BCICMSMono,
    mValor_BCICMSMonoRet,
    mValor_ICMSMono,
    mValor_ICMSMonoRet,
    mValorICMSDeson: Currency;
begin
     Application.ShowHint := false;

     //DesligaTabelas;
     Screen.Cursor    := crSQLWait;
     Application.ProcessMessages;

     mBCIPI                  := 0;
     mValor_TotalIPI         := 0;
     mBCICMS                 := 0;
     mValorICMS              := 0;
     mValor_TotalProdutos    := 0;
     mAliquota_ICMSOper      := 0;
     mValorICMS_Substitutivo := 0;
     mBCICMS_Substitutivo    := 0;
     mValorICMS_Reducao      := 0;
     mValor_TotalMVA         := 0;
     mVolume_PesoLiquido     := 0;
     mVolume_PesoBruto       := 0;
     mValor_PIS              := 0;
     mValor_COFINS           := 0;
     mValor_PIS2             := 0;
     mValor_COFINS2          := 0;
     mValor_TotalIINF        := 0;
     mValor_TotalIIRateio    := 0;
     mValor_TotalDespesas    := 0;
     mValor_IsentasICMS      := 0;
     mValor_OutrasICMS       := 0;
     mValor_IsentasIPI       := 0;
     mValor_OutrasIPI        := 0;
     mValor_Descontos        := 0;
     mValor_DUMPING          := 0;
     mVolumes                := 0;
     mDespesasOutros         := 0;
     mBCPIS                  := 0;
     mValor_Seguro           := 0;
     mValor_Frete            := 0;
     mTotalImpostos          := 0;
     mValor_IRPJ             := 0;
     mValor_CSLL             := 0;
     mValor_Inventario       := 0;
     mValor_Lucro            := 0;
     mValor_BCICMSDest       := 0;
     mValor_ICMSDest         := 0;
     mBCDIFAL                := 0;
     mDIFAL_Valor            := 0;
     mDIFAL_ValorOrig        := 0;
     mDIFAL_ValorDest        := 0;
     mFCP_ValorDest          := 0;
     mFCP_ICMSDest           := 0;
     mFCP_ICMSORIG           := 0;
     mValor_BCFCP            := 0;
     mValor_FCP              := 0;
     mValor_BCFCPST          := 0;
     mValor_FCPST            := 0;
     mValorICMSDeson         := 0;
     mValor_CIF              := 0;
     mValor_AFRMM            := 0;
     mValor_BCICMSMono       := 0;
     mValor_BCICMSMonoRet    := 0;
     mValor_ICMSMono         := 0;
     mValor_ICMSMonoRet      := 0;

     // Calula todos os campos de valores totais do pedido.
     With Dados do Begin
          PedidosItens.SQL.Clear;
          PedidosItens.SQL.Add('SELECT * FROM PedidosItens WHERE(Pedido = :pPedido)');
          PedidosItens.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
          PedidosItens.Open;
          
          // Zerando os campos de totais do pedido.
          Pedidos.Edit;
                  PedidosValor_TotalProdutos.Value    := 0;
                  PedidosBCIPI.Value                  := 0;
                  PedidosValor_TotalIPI.Value         := 0;
                  PedidosBCICMS.Value                 := 0;
                  PedidosValor_ICMS.Value             := 0;
                  PedidosBCICMS_Substitutivo.Value    := 0;
                  PedidosValorICMS_Substitutivo.Value := 0;
                  PedidosValor_ICMSReducao.Value      := 0;
                  PedidosTotal_Frete.Value            := 0;
                  PedidosValor_Seguro.Value           := 0;
                  PedidosValor_TotalNota.Value        := 0;
                  PedidosValor_TotalMVA.Value         := 0;
                  PedidosVolume_PesoLiquido.Value     := 0;
                  PedidosVolume_PesoBruto.Value       := 0;
                  PedidosValor_PIS.Value              := 0;
                  PedidosValor_COFINS.Value           := 0;
                  PedidosValor_PIS2.Value             := 0;
                  PedidosValor_COFINS2.Value          := 0;
                  PedidosValor_TotalII.Value          := 0;
                  PedidosValor_OutrasDespesas.Value   := 0;
                  PedidosValor_OutrasICMS.Value       := 0;
                  PedidosValor_IsentasICMS.Value      := 0;
                  PedidosValor_OutrasIPI.Value        := 0;
                  PedidosValor_IsentasIPI.Value       := 0;
                  PedidosValor_DUMPING.Value          := 0;
                  PedidosValor_DespesasOutros.Value   := 0;
                  PedidosValor_BCPIS.Value            := 0;
                  PedidosTotal_Impostos.Value         := 0;
                  PedidosValor_IRPJ.Value             := 0;
                  PedidosValor_CSLL.Value             := 0;
                  PedidosValor_Inventario.Value       := 0;
                  PedidosLucro_Valor.Value            := 0;
                  PedidosValor_BCICMSDest.Value       := 0;
                  PedidosValor_ICMSDest.Value         := 0;
                  PedidosValor_BCDIFAL.Value          := 0;
                  PedidosDIFAL_Valor.Value            := 0;
                  PedidosDIFAL_ValorOrig.Value        := 0;
                  PedidosDIFAL_ValorDest.Value        := 0;
                  PedidosFCP_ValorDest.Value          := 0;
                  PedidosFCP_ICMSDest.Value           := 0;
                  PedidosFCP_ICMSORIG.Value           := 0;
                  PedidosFCP_ICMSOrig.Value           := 0; 
                  PedidosDIFAL_AliqInterna.Value      := 0; 
                  PedidosValor_BCFCP.Value            := 0;
                  PedidosValor_FCP.Value              := 0;
                  PedidosValor_BCFCPST.Value          := 0;
                  PedidosValor_FCPST.Value            := 0;
                  PedidosValor_ICMSDesonerado.Value   := 0;
                  PedidosValor_CIF.Value              := 0;
                  PedidosValor_AFRMM.Value            := 0;
                  PedidosValor_BCICMSMono.Value       := 0;
                  PedidosValor_ICMSMono.Value         := 0;
                  PedidosValor_BCICMSMonoRet.Value    := 0;
                  PedidosValor_ICMSMonoRet.Value      := 0;
          Pedidos.Post;

          If PedidosItens.RecordCount <> 0 then begin
             PedidosItens.First;
             While (not PedidosItens.Eof) and (Funcoes.Cancelado = false) do Begin
                   Produtos.Locate('Codigo', PedidosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);

                   mValor_BCICMSDest    := mValor_BCICMSDest    + PedidosItensValor_BCICMSDest.Value;
                   mValor_ICMSDest      := mValor_ICMSDest      + PedidosItensValor_ICMSDest.Value;
                   mBCDIFAL             := mBCDIFAL             + PedidosItensValor_BCDIFAL.Value;
                   mDIFAL_Valor         := mDIFAL_Valor         + PedidosItensDIFAL_Valor.Value;
                   mDIFAL_ValorOrig     := mDIFAL_ValorOrig     + PedidosItensDIFAL_ValorOrig.Value;
                   mDIFAL_ValorDest     := mDIFAL_ValorDest     + PedidosItensDIFAL_ValorDest.Value;
                   mFCP_ValorDest       := mFCP_ValorDest       + PedidosItensFCP_ValorDest.Value;
                   mFCP_ICMSDest        := mFCP_ICMSDest        + PedidosItensFCP_ICMSDest.Value;
                   mFCP_ICMSORIG        := mFCP_ICMSORIG        + PedidosItensFCP_ICMSORIG.Value;
                   mValor_BCFCP         := mValor_BCFCP         + PedidosItensValor_BCFCP.AsCurrency;
                   mValor_FCP           := mValor_FCP           + PedidosItensValor_FCP.AsCurrency;
                   mValor_BCFCPST       := mValor_BCFCPST       + PedidosItensValor_BCFCPST.AsCurrency;
                   mValor_FCPST         := mValor_FCPST         + PedidosItensValor_FCPST.AsCurrency;
                   mValorICMSDeson      := mValorICMSDeson      + PedidosItensValor_ICMSDesonerado.AsCurrency;
                   mValor_ICMSMono      := mValor_ICMSMono      + PedidosItensValor_ICMSMono.AsCurrency;
                   mValor_ICMSMonoRet   := mValor_ICMSMonoRet   + PedidosItensValor_ICMSMonoRet.AsCurrency;
                   mValor_BCICMSMono    := mValor_BCICMSMono    + PedidosItensValor_BCICMSMono.AsCurrency;
                   mValor_BCICMSMonoRet := mValor_BCICMSMonoRet + PedidosItensValor_BCICMSMonoRet.AsCurrency;

                   PedidosItens.Edit;
                                mValor_TotalProdutos := Roundto(mValor_TotalProdutos + PedidosItensValor_Total.Value, -4);
                                mValor_Descontos     := mValor_Descontos + PedidosItensDesconto_Valor.Value;
                                mDespesasOutros      := mDespesasOutros + (PedidosItensValor_DespesasOutros.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                                
                                If ProdutosTipo_Conversao.Value <> 'M' then begin
                                   mValor_TotalDespesas := mValor_TotalDespesas + Roundto((PedidosItensValor_Despesa.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -2);
                                   mValor_AFRMM         := mValor_AFRMM + Roundto(PedidosItensValor_AFRMM.Value * (PedidosItensQuantidade.asfloat * ProdutosQuantidade_Unidade.asfloat), -4);
                                end else begin
                                   mValor_TotalDespesas := mValor_TotalDespesas + (PedidosItensValor_Despesa.Value * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.Value));
                                   mValor_AFRMM         := mValor_AFRMM + Roundto(PedidosItensValor_AFRMM.value * (PedidosItensQuantidade.asfloat / ProdutosQuantidade_Unidade.asfloat), -4);
                                end;

                                mValor_OutrasICMS  := mValor_OutrasICMS  + PedidosItensValor_OutrasICMS.Value;
                                mValor_IsentasICMS := mValor_IsentasICMS + PedidosItensValor_IsentasICMS.Value;
                                mValor_OutrasIPI   := mValor_OutrasIPI   + PedidosItensValor_OutrasIPI.Value;
                                mValor_IsentasIPI  := mValor_IsentasIPI  + PedidosItensValor_IsentasIPI.Value;
                                mValor_DUMPING     := mValor_DUMPING     + (PedidosItensValor_Dumping.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));

                                // Base de calculo do IPI "Soma dos produtos que tiveram IPI".
                                If TipoNotaVisiveis_IPI.Value = False then begin
                                   PedidosItensAliquota_IPI.Value := 0;
                                   PedidosItensValor_IPI.Value    := 0;
                                   PedidosItensTotal_IPI.Value    := 0;
                                End else begin
                                   mBCIPI          := mBCIPI + RoundTo(PedidosItensValor_BCIPI.Value, -2);
                                   mValor_TotalIPI := mValor_TotalIPI + PedidosItensTotal_IPI.Value;
                                End;

                                // ICMS Operacional.
                                If TipoNotaVisiveis_ICMSOper.Value = False then begin
                                   PedidosItensValor_ICMSOper.Value    := 0;
                                   PedidosItensValor_BCICMSOper.Value  := 0;
                                   PedidosItensAliquota_ICMSOper.Value := 0;
                                   PedidosItensValor_ICMSReducao.Value := 0;
                                End else begin
                                   mBCICMS            := mBCICMS + Roundto(PedidosItensValor_BCICMSOper.Value, -2);
                                   mValorICMS         := mValorICMS + PedidosItensValor_ICMSOper.Value;
                                   mValorICMS_Reducao := mValorICMS_Reducao + PedidosItensValor_ICMSReducao.Value;
                                   If mValorICMS <> 0 then
                                      mAliquota_ICMSOper := PedidosItensAliquota_ICMSOper.Value
                                   else
                                      mAliquota_ICMSOper := 0;
                                End;

                                // ICMS Substitutivo.
                                If TipoNotaVisiveis_ICMSSub.Value = False then begin
                                   PedidosItensValor_ICMSSub.Value    := 0;
                                   PedidosItensValor_BCICMSSub.Value  := 0;
                                   PedidosItensAliquota_ICMSSub.Value := 0;
                                End else begin
                                   mBCICMS_Substitutivo    := Roundto(mBCICMS_Substitutivo + PedidosItensValor_BCICMSSub.Value, -4);
                                   mValorICMS_Substitutivo := mValorICMS_Substitutivo + PedidosItensValor_ICMSSub.Value;
                                End;

                                // Despesas.
                                If TipoNotaVisiveis_Despesas.Value = False then begin
                                   PedidosItensValor_Despesa.Value := 0;
                                End;
                                
                                mValor_TotalMVA := mValor_TotalMVA + (PedidosItensValor_MVA.Value * PedidosItensQuantidade.Value);

                                mValor_PIS     := mValor_PIS     + Roundto(PedidosItensValor_PIS.Value, -2);
                                mValor_COFINS  := mValor_COFINS  + Roundto(PedidosItensValor_COFINS.Value, -2);
                                mValor_PIS2    := mValor_PIS2    + Roundto(PedidosItensValor_PIS2.Value, -2);
                                mValor_COFINS2 := mValor_COFINS2 + Roundto(PedidosItensValor_COFINS2.Value, -2);
                                mValor_Seguro  := mValor_Seguro  + Roundto((PedidosItensValor_Seguro.Value * PedidosItensQuantidade.AsFloat), -2);
                                mValor_Frete   := mValor_Frete   + Roundto((PedidosItensValor_Frete.Value  * PedidosItensQuantidade.AsFloat), -2);
                                mValor_IRPJ    := mValor_IRPJ    + PedidosItensValor_IRPJ.Value;
                                mValor_CSLL    := mValor_CSLL    + PedidosItensValor_CSLL.Value;

                                If ProdutosTipo_Conversao.asstring <> 'M' then begin
                                   mVolume_PesoLiquido := mVolume_PesoLiquido + (PedidosItensPeso_Liquido.Value  * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                                   mVolume_PesoBruto   := mVolume_PesoBruto   + (PedidosItensPeso_Bruto.Value    * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                                   mValor_TotalIINF    := mValor_TotalIINF    + Roundto((PedidosItensValor_II.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -2);
                                end else begin
                                   mVolume_PesoLiquido := mVolume_PesoLiquido + (PedidosItensPeso_Liquido.Value  * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                                   mVolume_PesoBruto   := mVolume_PesoBruto   + (PedidosItensPeso_Bruto.Value    * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                                   mValor_TotalIINF    := mValor_TotalIINF    + Roundto((PedidosItensValor_II.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value)), -2);
                                End;

                                mVolumes := mVolumes + (PedidosItensQuantidade.Value / ProdutosQuantidade_Volumes.Value);

                                If PedidosItensValor_PIS.Value = 0 then begin
                                   PedidosItensValor_BCPIS.Value        := 0;
                                   PedidosItensAliquota_PIS.Value       := 0;
                                   PedidosItensAliquota_PISRed.Value    := 0;
                                   PedidosItensAliquota_COFINS.Value    := 0;
                                   PedidosItensAliquota_COFINSRed.Value := 0;
                                End;
                                mBCPIS := mBCPIS + RoundTo(PedidosItensValor_BCPIS.Value, -2);

                                PedidosItensTotal_Impostos.Value := 0;
                                If (Clientes.FieldByName('Consumidor_Final').AsBoolean = true) and (PedidosItensSaida_Entrada.AsInteger = 1) then begin
                                   PedidosItensTotal_Impostos.Value := Roundto(PedidosItensTotal_IPI.Value + (PedidosItensValor_II.Value*PedidosItensQuantidade.AsFloat) + PedidosItensValor_ICMSOper.Value + PedidosItensValor_PIS.Value + PedidosItensValor_COFINS.Value, -2);
                                   mTotalImpostos := mTotalImpostos + PedidosItensTotal_Impostos.Value;
                                End;

                                mValor_Inventario := mValor_Inventario + Roundto(PedidosItensValor_Inventario.Value * PedidosItensQuantidade.AsFloat, -2);
                                mValor_Lucro      := mValor_Lucro + (PedidosItensLucro_Valor.Value * PedidosItensQuantidade.Value);
                                mValor_BCFCPST    := mValor_BCFCPST + PedidosItensValor_BCFCPST.AsCurrency;
                                mValor_FCPST      := mValor_FCPST + PedidosItensValor_FCPST.AsCurrency;
                                mValor_CIF        := mValor_CIF + PedidosItensValor_CIF.AsCurrency;
                   PedidosItens.Post;
                   PedidosItens.Next;

                   Application.ProcessMessages;
             End;

             // Rateia o valor do 'DESCONTO COMERCIAL" para todos os itens.
             If (Trim(PedidosDesconto_Tipo.AsString) = 'COMERCIAL') and (PedidosItensDesconto_Valor.Value = 0) then begin
                mRateio_Descontos    := PedidosTotal_Descontos.AsFloat / mValor_TotalProdutos;
                mValor_TotalProdutos := 0;
                PedidosItens.First;

                While not PedidosItens.Eof do Begin
                      PedidosItens.Edit;
                                   PedidosItensDesconto_Valor.Value := mRateio_Descontos * PedidosItensValor_Unitario.AsFloat;
                                   PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value);
                                   PedidosItensValor_Total.Value    := (PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value);
                                   mValor_TotalProdutos             := (mValor_TotalProdutos + PedidosItensValor_Total.Value);
                      PedidosItens.Post;
                      PedidosItens.Next;
                End;
             End;

             Pedidos.Edit;
                     PedidosValor_TotalProdutos.Value    := mValor_TotalProdutos;
                     PedidosBCIPI.Value                  := mBCIPI;
                     PedidosValor_TotalIPI.Value         := mValor_TotalIPI;
                     PedidosBCICMS.Value                 := mBCICMS;
                     PedidosValor_ICMS.Value             := mValorICMS;
                     PedidosAliquota_ICMSOper.Value      := mAliquota_ICMSOper;
                     PedidosBCICMS_Substitutivo.Value    := mBCICMS_Substitutivo;
                     PedidosValorICMS_Substitutivo.Value := mValorICMS_Substitutivo;
                     PedidosValor_ICMSReducao.Value      := mValorICMS_Reducao;
                     PedidosValor_TotalMVA.Value         := mValor_TotalMVA;
                     PedidosVolume_PesoLiquido.Value     := mVolume_PesoLiquido;
                     PedidosVolume_PesoBruto.Value       := mVolume_PesoBruto;
                     PedidosVolume_Quantidade.Value      := mVolumes;

                     If (Trim(PedidosDesconto_Tipo.AsString) <> 'COMERCIAL') and (mValor_Descontos > 0) then PedidosTotal_Descontos.Value := mValor_Descontos;
                     PedidosValor_PIS.Value              := mValor_PIS;
                     PedidosValor_COFINS.Value           := mValor_COFINS;
                     PedidosValor_PIS2.Value             := mValor_PIS2;
                     PedidosValor_COFINS2.Value          := mValor_COFINS2;
                     PedidosValor_TotalII.Value          := Roundto(mValor_TotalIINF, -4);
                     PedidosValor_OutrasDespesas.Value   := mValor_TotalDespesas;
                     PedidosValor_Seguro.Value           := mValor_Seguro;
                     PedidosTotal_Frete.Value            := mValor_Frete;

                     // Verifique quais campos estão desmarcados para impressão e zera no pedido.
                     If TipoNotaVisiveis_ICMSOper.Value = False then begin
                        PedidosAliquota_ICMSOper.Value := 0;
                        PedidosBCICMS.Value            := 0;
                        PedidosValor_ICMS.Value        := 0;
                     End;
                     If TipoNotaVisiveis_ICMSSub.Value = False then begin
                        PedidosAliquota_ICMSSub.Value       := 0;
                        PedidosBCICMS_Substitutivo.Value    := 0;
                        PedidosValorICMS_Substitutivo.Value := 0;
                     End;
                     If TipoNotaVisiveis_Frete.Value    = False then PedidosTotal_Frete.Value          := 0;
                     If TipoNotaVisiveis_Seguro.Value   = False then PedidosValor_Seguro.Value         := 0;
                     //If TipoNotaVisiveis_Despesas.Value = False then PedidosValor_OutrasDespesas.Value := 0;
                     If TipoNotaVisiveis_IPI.Value      = False then PedidosValor_TotalIPI.Value       := 0;

                     PedidosValor_OutrasICMS.Value     := mValor_OutrasICMS;
                     PedidosValor_IsentasICMS.Value    := mValor_IsentasICMS;
                     PedidosValor_OutrasIPI.Value      := mValor_OutrasIPI;
                     PedidosValor_IsentasIPI.Value     := mValor_IsentasIPI;
                     PedidosValor_ICMSDesonerado.Value := mValorICMSDeson;
                     PedidosValor_Dumping.Value        := mValor_Dumping;

                     // Calculo do valor do 'DESCONTO FINANCEIRO".
                     If (Trim(PedidosDesconto_Tipo.AsString) = 'FINANCEIRO') then begin
                        If (PedidosDesconto_Percentual.Value > 0) then PedidosTotal_Descontos.Value := Percentual(PedidosValor_TotalProdutos.Value, PedidosDesconto_Percentual.Value);
                     End;
                     PedidosValor_DespesasOutros.Value := mDespesasOutros;
                     PedidosValor_BCPIS.Value          := mBCPIS;
                     PedidosTotal_Impostos.Value       := mTotalImpostos;
                     PedidosValor_IRPJ.Value           := mValor_IRPJ;
                     PedidosValor_CSLL.Value           := mValor_CSLL;
                     PedidosValor_Inventario.Value     := mValor_Inventario;
                     PedidosLucro_Valor.Value          := mValor_Lucro;
                     PedidosValor_BCICMSDest.Value     := mValor_BCICMSDest;
                     PedidosValor_ICMSDest.Value       := mValor_ICMSDest;
                     PedidosValor_BCDIFAL.Value        := mBCDIFAL;
                     PedidosDIFAL_Valor.Value          := mDIFAL_Valor;
                     PedidosDIFAL_ValorOrig.Value      := mDIFAL_ValorOrig;
                     PedidosDIFAL_ValorDest.Value      := mDIFAL_ValorDest;
                     PedidosFCP_ValorDest.Value        := mFCP_ValorDest;
                     PedidosFCP_ICMSDest.Value         := mFCP_ICMSDest;
                     PedidosFCP_ICMSOrig.Value         := mFCP_ICMSORIG;
                     PedidosDIFAL_AliqInterna.Value    := ICMSICMS_Interno.Value;
                     PedidosValor_BCFCP.Value          := mValor_BCFCP;
                     PedidosValor_FCP.Value            := mValor_FCP;
                     PedidosValor_BCFCPST.Value        := mValor_BCFCPST;
                     PedidosValor_FCPST.Value          := mValor_FCPST;
                     PedidosValor_CIF.Value            := mValor_CIF;
                     PedidosValor_AFRMM.Value          := mValor_AFRMM;

                     if PedidosValor_FCP.Value = 0 then begin
                        PedidosAliquota_FCP.Value := 0;
                     end;
                     if PedidosValor_FCPST.Value = 0 then begin
                        PedidosAliquota_FCPST.Value := 0;
                     end;
                     PedidosValor_ICMSMono.Value      := mValor_ICMSMono;
                     PedidosValor_ICMSMonoRet.Value   := mValor_ICMSMonoRet;
                     PedidosValor_BCICMSMono.Value    := mValor_BCICMSMono;
                     PedidosValor_BCICMSMonoRet.Value := mValor_BCICMSMonoRet;
             Pedidos.Post;

             If Trim(TipoNotaCalculo_OutrasDespesas.AsString) <> '' then begin
                Pedidos.Edit;
                        PedidosValor_OutrasDespesas.Value := PedidosValor_OutrasDespesas.Value + Roundto(CalculaMacro('Calculo_OutrasDespesas'), -2);
                Pedidos.Post;
             End;
             If Trim(TipoNotaCalculo_TotalPedido.AsString) <> '' then begin
                Pedidos.Edit;
                        PedidosValor_TotalNota.Value := CalculaMacro('Calculo_TotalPedido');
                Pedidos.Post;
             End;
             If TipoNotaVisiveis_Despesas.Value = False then begin 
                Pedidos.Edit; 
                        PedidosValor_OutrasDespesas.Value := 0;
                Pedidos.Post;
             end;
          End;
     End;

     Screen.Cursor := crDefault;
End;

procedure TPedidosRepresentantes_PedidoNF2.StaticText1Click(Sender: TObject);
begin
    Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
    Cadastro_Fornecedores.Caption := Caption;
    Cadastro_Fornecedores.ShowModal;
    Dados.Fornecedores.Open;
    Dados.TipoProduto.Open;

    with Dados, Fornecedores do begin
         sql.Clear;
         sql.Add('select *');
         sql.Add('from Fornecedores');
         sql.Add('where Ativo = 1');
         sql.Add('and Ramo_Atividade in(select Codigo From RamoAtividade where Descricao like ''%TRANSP%'')');
         open;
    end;
end;

procedure TPedidosRepresentantes_PedidoNF2.CopiaPedidos;
var
   i:integer;
   p, mPedNovo, mPedPai:string;
begin
     mPedPai := Pedido_RepresentantesSimp.tSeparados.FieldByName('Pedido').AsString;
     // Duplica a capa do pedido.
     with tCopia do begin
          sql.Clear;
          sql.Add('select * from PedidosRepresentantes where Pedido = :pPed');
          parambyname('pPed').Value := mPedPai;
          open;
     end;

     mPedidos := '';
     tQuebras.first;
     while not tQuebras.Eof do begin 
           with tTemp do begin
                sql.Clear;
                sql.Add('select * from PedidosRepresentantes where Registro = (select isnull(max(Registro), 0)+1 from PedidosRepresentantes)');
                open;
                Append;
                     for i := 0 to pred(tCopia.FieldCount) do begin
                         Fields[i].Value := tCopia.Fields[i].Value;
                     end;
                     for i := 65 to 90 do begin
                         p := chr(i);
                         with tTmp2 do begin
                              sql.Clear;
                              sql.Add('select count(*) as qtde from PedidosRepresentantes where Pedido_Pai = :pPed and Parcial = :pParc');
                              parambyname('pPed').value  := mPedPai;
                              parambyname('pParc').value := p;
                              open;
                              if fieldbyname('Qtde').AsInteger = 0 then break;
                         end;
                     end;
                     with tTmp2 do begin
                          sql.Clear;
                          sql.Add('select Reg = isnull(max(Registro), 0)+1');
                          sql.Add('      ,Ped = isnull(max(cast(substring(Pedido, 2, len(Pedido)-1) as int)), 0)+1');
                          sql.add('from PedidosRepresentantes');
                          open;
                     end;
                     mPedNovo := copy(mPedPai, 1, 1)+tTmp2.FieldByName('Ped').asstring;
                     fieldbyName('Registro').Value     := tTmp2.FieldByName('Reg').AsInteger;
                     fieldbyName('Pedido').Value       := mPedNovo;
                     fieldbyName('Pedido_Pai2').Value  := mPedPai;
                     fieldbyName('Parcial').Value      := p;
                     fieldbyName('Local').Value        := 4;
                     fieldbyName('Observacao').Value   := 'PEDIDO DE NOTA FISCAL FRACIONADO A PARTIR DO PEDIDO PAI: '+mPedPai;
                Post;
           end;
           // Duplica os itens do pedido.
           with tCopiaItens do begin
                sql.Clear;
                sql.Add('select * from PedidosRepresentantesItens where Pedido = :pPed');
                parambyname('pPed').Value := mPedPai;
                open;
           end;
           with tTemp do begin
                sql.Clear;
                sql.Add('select *');
                sql.add('from PedidosRepresentantesItens');
                sql.add('where Pedido = :pPed');
                sql.add('and Item = isnull((select max(Item) from PedidosRepresentantesItens where Pedido = :pPed), 0)+1');
                parambyname('pPed').Value := mPedPai;
                open;
                Append;
                     for i := 0 to pred(tCopiaItens.FieldCount) do begin
                         Fields[i].value := tCopiaItens.Fields[i].value;
                     end;
                     fieldbyName('Pedido').Value      := mPedNovo;
                     fieldbyName('Pedido_Pai2').Value := mPedPai;
                     fieldbyName('Quantidade').Value  := tQuebras.fieldbyname('Quantidade').value;
                post;
                // Totaliza a capa do pedido.
                with tTmp2 do begin
                     sql.Clear;
                     sql.Add('update PedidosRepresentantes set Total_Pedido      = isnull((select sum(Valor_Unitario * Quantidade) from PedidosRepresentantesItens pri where pri.Pedido = :pPed), 0)');
                     sql.Add('                                ,Volume_Quantidade = isnull((select sum(Quantidade) from PedidosRepresentantesItens pri where pri.Pedido = :pPed), 0)');
                     sql.add('where Pedido = :pPed');
                     parambyname('pPed').Value := mPedNovo;
                     execute;
                end;
           end;
           mPedidos := mPedidos + quotedstr(tTemp.fieldbyname('Pedido').asstring) + ',';
           
           tQuebras.next;
     end;
     with tTmp2 do begin
          // Reduz a quantidade do pedido pai.
          sql.Clear;
          sql.Add('update PedidosRepresentantesItens set Quantidade = Quantidade_Original - (select sum(Quantidade) from PedidosRepresentantesItens pri where (pri.Pedido_Pai2 = :pPedPai or pri.Pedido_Pai = :pPedPai) and pri.Codigo_Mercadoria = Codigo_Mercadoria)');
          sql.add('where Pedido = :pPedPai');
          parambyname('pPedPai').Value := mPedPai;
          execute;
          // Totaliza o pedido pai.
          sql.Clear;
          sql.Add('update PedidosRepresentantes set Total_Pedido = Total_PedidoOriginal - isnull((select sum(Valor_Unitario * Quantidade) from PedidosRepresentantesItens pri where (pri.Pedido_Pai2 = :pPedPai or Pedido_Pai = :pPedPai)), 0)');
          sql.add('where Pedido = :pPedPai');
          parambyname('pPedPai').Value := mPedPai;
          execute;
     end;
     mPedidos := copy(mPedidos, 1, length(mPedidos)-1);
end;

procedure TPedidosRepresentantes_PedidoNF2.cTipoNotaExit(Sender: TObject);
begin
      with Dados do begin
           if Trim(TipoNota.FieldByName('CFOP_Dentro').asstring) <> '' then begin
               cCFOPDentro.KeyValue := TipoNota.FieldByName('CFOP_Dentro').AsString;
           end;
           if Trim(TipoNota.FieldByName('CFOP_fORA').asstring) <> '' then begin
               cCFOPFora.KeyValue := TipoNota.FieldByName('CFOP_Fora').AsString;
           end;
      end;
end;

procedure TPedidosRepresentantes_PedidoNF2.GeraDuplicatas(Pedido: integer; Valor: real);
Var
    mValorParcela,
    mValorProduto,
    mValorIPI,
    mTotalParcela,
    mDiferenca: Real;
    i,
    mParcelas
   ,mDiaFixo
   ,mUltimoDia: integer;
    mData: TDate;
begin
      with Dados, dmFiscal, tDuplicatas do begin
           Dados.Configuracao.Open;

           // Gera todas as parcelas de acordo com a modalidade de pagamento.
           mValorProduto := 0;
           mValorIPI     := 0;
           mParcelas     := ModalidadesPgto.fieldbyname('Numero_Parcelas').asinteger;
           mValorParcela := RoundTo((Valor / mParcelas), -2);
           mData         := Date + ModalidadesPgtoPrazo_Primeira.Value;
           mTotalParcela := 0;
           mDiaFixo      := ModalidadesPgtoPrazo_Dia.AsInteger;

           for i := 0 to mParcelas-1 do begin
               if i > 0 then begin
                  mData := mData + ModalidadesPgtoPrazo_Demais.Value;
               end;

               // Antecipando ou adiantando a data do vencimento caso caia em um final de semana.
               if mDiaFixo <= 0 then begin
                  if (Dados.ConfiguracaoDia_Util.Value <> 'N') then begin
                     if (DayOfWeek(mData) = 1) then begin
                        if (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -2
                        else
                           mData := mData +1;
                     end;
                     if (DayOfWeek(mData) = 7) then begin
                        If (Dados.ConfiguracaoDia_Util.Value = '-') then
                           mData := mData -1
                        else
                           mData := mData +2;
                     end;
                  end;
               end else begin
                  if MonthOf(mData) < 12 then begin
                     mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/'+InttoStr(MonthOf(mData)+1)+'/'+InttoStr(YearOf(mData)))))
                  end else begin
                     mUltimoDia := DayOf(UltimoDiaMes(StrtoDate('01/01/'+InttoStr(YearOf(mData)+1))));
                  end;

                  if i > 0 then begin
                     if mUltimoDia > mDiaFixo then begin
                        if MonthOf(mData) < 12 then
                           mData := StrtoDate(InttoStr(mDiaFixo)+'/'+InttoStr(MonthOf(mData)+1)+'/'+InttoStr(YearOf(mData)))
                        else
                           mData := StrtoDate(InttoStr(mDiaFixo)+'/01/'+InttoStr(YearOf(mData)+1))
                     end else begin
                        if MonthOf(mData) < 12 then
                           mData := StrtoDate(InttoStr(mUltimoDia)+'/'+InttoStr(MonthOf(mData)+1)+'/'+InttoStr(YearOf(mData)))
                        else
                           mData := StrtoDate(InttoStr(mUltimoDia)+'/01/'+InttoStr(YearOf(mData)+1))
                     end;
                  end;
               end;

               Append;
                    fieldbyname('Pedido').Value        := Pedido;
                    fieldbyname('Parcela').Value       := AnsiString(InttoStr(i+1)+'/'+InttoStr(mParcelas));
                    fieldbyname('Vencimento').Value    := mData;
                    fieldbyname('Valor').Value         := mValorParcela;
                    fieldbyname('Valor_Produto').Value := mValorProduto;
                    fieldbyname('Valor_IPI').Value     := mValorIPI;
               Post;
               mTotalParcela := mTotalParcela + mValorParcela;
           end;

           // Verifica se há difirença de arradondamento e jogo a diferença na primeira ou na última parcela "Ver configuração".
           if mTotalParcela <> Valor then begin
              mDiferenca := Valor - mTotalParcela;
              if ConfiguracaoDiferenca_Duplicata.AsInteger = 0 then
                 First
              else
                 Last;

              Edit;
                 fieldbyname('Valor').Value := fieldbyname('Valor').Value + mDiferenca;
              Post;
           end;

           // Adiciona as parcelas/duplicatas a tabela do pedidos de nota fiscal.
           with PedidosDuplicata do begin
                sql.Clear;
                sql.Add('delete from PedidosDuplicata where Fatura = :pPedido');
                parambyname('pPedido').AsInteger := Pedido;
                execute;
                sql.Clear;
                sql.Add('select * from PedidosDuplicata where (Fatura = :pPedido)');
                paramByName('pPedido').AsInteger := Pedido;
                open;
           end;
           with PedidosFatura do begin
                sql.Clear;
                sql.Add('delete from PedidosFatura WHERE (Pedido = :pPedido)');
                paramByName('pPedido').AsInteger := Pedido;
                execute;
                sql.Clear;
                sql.Add('select * from PedidosFatura where (Pedido = :pPedido)');
                paramByName('pPedido').AsInteger := Pedido;
                open;

                Append;
                     fieldbyname('Fatura').Value        := Pedido;
                     fieldbyname('Data_Emissao').Value  := Date;
                     fieldbyname('Pedido').Value        := Pedido;
                     fieldbyname('Data_Pedido').Value   := Date;
                     fieldbyname('Forma_Pgto').Value    := ModalidadesPgtoCodigo.Value;
                     fieldbyname('Cliente').Value       := tPedidosNF.fieldbyname('Cliente').Value;
                     fieldbyname('Valor_Total').Value   := tPedidosNF.fieldbyname('Total_Pedido').Value;
                     fieldbyname('Origem_Pedido').Value := true;
                     fieldbyname('Banco').Value         := tPedidosNF.fieldbyname('Banco').AsInteger;
                Post;
           end;

           i := 1;

           tDuplicatas.First;
           while not tDuplicatas.Eof do begin
                 with PedidosDuplicata do begin
                      Append;
                           fieldbyname('Duplicata').Value       := PoeZero(9, Pedido)+InttoStr(i);
                           fieldbyname('Fatura').Value          := Pedido;
                           fieldbyname('Data_Vencimento').Value := tDuplicatas.fieldbyname('Vencimento').Value;
                           fieldbyname('Valor').Value           := tDuplicatas.fieldbyname('Valor').Value;
                           fieldbyname('Valor_Liquido').Value   := tDuplicatas.fieldbyname('Valor').Value;
                           fieldbyname('Valor_Produto').Value   := 0;
                           fieldbyname('Valor_IPI').Value       := 0;
                           fieldbyname('Vencimento').Value      := iif(tDuplicatas.RecordCount > 1, ModalidadesPgto.FieldbyName('Prazo_Demais').AsString + ' dias', 'A VISTA');
                           fieldbyname('Pedido').Value          := Pedido;
                           fieldbyname('Ordem').Value           := i;
                           fieldbyname('Data_Emissao').Value    := Date;
                           fieldbyname('Numero').Value          := PoeZero(9,Pedido)+Chr(64+i);
                      Post;
                 end;
                 tDuplicatas.Next;
                 inc(i);
           end;

           // Salva a modalidade utilizada na nota fiscal de saida.
           Pedidos.Edit;
                   PedidosModalidade_Pgto.Value := ModalidadesPgtoCodigo.Value;
           Pedidos.Post;
      end;
end;



end.
