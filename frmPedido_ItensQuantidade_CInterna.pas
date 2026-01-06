unit frmPedido_ItensQuantidade_CInterna;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DB, Math, Funcoes,
  DBCtrls, IniFiles, Mask, system.UITypes, RxCurrEdit, RxToolEdit;

type
  TPedido_ItensQuantidade_CInterna = class(TForm)
    GroupBox1: TGroupBox;
    lDI: TStaticText;
    cQuantidade: TCurrencyEdit;
    StaticText1: TStaticText;
    cValor: TCurrencyEdit;
    bOK: TButton;
    bCancela: TButton;
    StaticText2: TStaticText;
    cBCIPI: TCurrencyEdit;
    StaticText3: TStaticText;
    cBCICMSOper: TCurrencyEdit;
    StaticText4: TStaticText;
    cBCICMSSub: TCurrencyEdit;
    StaticText5: TStaticText;
    cTotalNFLucro: TCurrencyEdit;
    cLucro: TCurrencyEdit;
    bLucro: TButton;
    cTotalNota: TCurrencyEdit;
    Label1: TLabel;
    bPrejuizo: TButton;
    StaticText6: TStaticText;
    cProduto: TDBEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    cPrecisao: TCurrencyEdit;
    procedure bOKClick(Sender: TObject);
    procedure bCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cTotalNFLucroChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Apura(Tipo: Integer);
    procedure bPrejuizoClick(Sender: TObject);
    procedure bLucroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedido_ItensQuantidade_CInterna: TPedido_ItensQuantidade_CInterna;

implementation

uses frmPedido_ItensCompraInterna, frmDados, frmDMFiscal;

{$R *.dfm}

procedure TPedido_ItensQuantidade_CInterna.bOKClick(Sender: TObject);
begin
     With Dados, dmFiscal do begin
          If cQuantidade.Value > NotasTerceirosItensDisponivel.Value then begin
             MessageDlg('Quantidade informada indisponível para faturamento!'+#13+#13+'A Quantidade disponível é :'+FloattoStr(NotasTerceirosItensDisponivel.Value), mtError, [mbOK], 0);
             cQuantidade.SetFocus;
             Abort;
          End;
     End;
     Pedido_ItensCompraInterna.cLucro.Value         := cLucro.Value;
     Pedido_ItensCompraInterna.mQuantidade          := cQuantidade.Value;
     Pedido_ItensCompraInterna.mValorInformado      := cValor.Value;
     Pedido_ItensCompraInterna.mBCIPIInformado      := cBCIPI.Value;
     Pedido_ItensCompraInterna.mBCICMSOperInformado := cBCICMSOper.Value;
     Pedido_ItensCompraInterna.mBCICMSSubInformado  := cBCICMSSub.Value;
     Close;
end;

procedure TPedido_ItensQuantidade_CInterna.bCancelaClick(Sender: TObject);
begin
      Funcoes.Cancelado                         := true;
      Pedido_ItensCompraInterna.mQuantidade     := 0;
      Pedido_ItensCompraInterna.mValorInformado := 0;
      Close;
end;

procedure TPedido_ItensQuantidade_CInterna.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI: TIniFile;
begin
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aINI.WriteFloat('Apura_Lucro', 'Precisao', cPrecisao.Value);
      aINI.Free;

      Pedido_ItensQuantidade_CInterna.Release;
      Pedido_ItensQuantidade_CInterna := nil;
end;


procedure TPedido_ItensQuantidade_CInterna.Apura(Tipo: Integer);
Var
   mUF         : String;
   mCST        : String;
   mIncremento : Real;
begin
      With Dados, dmFiscal do begin
           Produtos.DisableControls;
           NCM.DisableControls;
           INCOTERMS.DisableControls;
           Pedidos.DisableControls;
           PedidosItens.DisableControls;
      
           Produtos.Locate('Codigo', NotasTerceirosItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
           NCM.Locate('NCM', NotasTerceirosItensNCM.Value, [loCaseInsensitive]);

           // Pegando o numero do item.
           Pedido_ItensCompraInterna.tItem.SQL.Clear;
           Pedido_ItensCompraInterna.tItem.SQL.Add('SELECT MAX(Sequencia) AS Sequencia FROM PedidosItens WHERE(Pedido = :pPedido)');
           Pedido_ItensCompraInterna.tItem.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           Pedido_ItensCompraInterna.tItem.Open;

           PedidosItens.Append;
           PedidosItensPedido.Value    := PedidosNumero.Value;
           PedidosItensItem.Value      := NotasTerceirosItensItem.AsInteger;
           PedidosItensSequencia.Value := Pedido_ItensCompraInterna.tItem.FieldByName('Sequencia').AsInteger+1;
           Pedido_ItensCompraInterna.tItem.Close;

           PedidosItensLucro.Value       := cLucro.Value;
           PedidosItensLucro_Valor.Value := Pedido_ItensCompraInterna.cLucroValor.Value;
           
           // Pegando a aliquota do ICMS Operacional.
           ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]);

           If TipoNotaSaida_Entrada.Value = 1 then begin
              PedidosItensAliquota_ICMSReducao.Value := ProdutosICMS_Reducao.Value;
              If NCMICMS_Operacional.Value = 0 then begin
                 // Pega a aliquota do ICMS da tabela de ICMS ou da Nota de Entrada.
                 If TipoNotaOrigem_AliquotaICMS.Value = 0 then begin
                    // Contribuinte pessoa Juridica.
                    If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value <> True) then begin
                       PedidosItensAliquota_ICMSOper.Value     := ICMSImp_Contribuinte.Value;
                       PedidosItensAliquota_ICMSIntegral.Value := ICMSImp_ContribuinteCheia.Value;
                    End;
                    // Não Contribuinte pessoa Juridica "Sem /inscrição".
                    If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value = True) then begin
                       PedidosItensAliquota_ICMSOper.Value     := ICMSImp_NContribuinte.Value;
                       PedidosItensAliquota_ICMSIntegral.Value := ICMSImp_NContribuinteCheia.Value;
                    End;
                    // Não Contribuinte pessoa Juridica "Com Inscrição".
                    If (ClientesCNPJ.Value <> '') and (ClientesIsento.Value = false) and (TipoNotaFinalidade_Mercadoria.Value = 1) then begin
                       PedidosItensAliquota_ICMSOper.Value     := ICMSImp_NContribuinte.Value;
                       PedidosItensAliquota_ICMSIntegral.Value := ICMSImp_NContribuinteCheia.Value;
                    End;
                    // Não Contribuinte pessoa Fisica.
                    If (ClientesCNPJ.Value = '') then begin
                       PedidosItensAliquota_ICMSOper.Value     := ICMSImp_NContribuinte.Value;
                       PedidosItensAliquota_ICMSIntegral.Value := ICMSImp_NContribuinteCheia.Value;
                    End;
                    // Simples Nacional.
                    If (ClientesSimples_Nacional.AsBoolean = true) then begin
                       PedidosItensAliquota_ICMSOper.Value := ICMSSimples_Nacional.AsFloat;
                    End;
                    // Não encontrando a estado na tabela de ICMS zera a aliquota do ICMS operacional.
                    If ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]) = false then begin
                       PedidosItensAliquota_ICMSOper.Value     := 0;
                       PedidosItensAliquota_ICMSIntegral.Value := 0;
                    End;
                 end else begin
                    PedidosItensAliquota_ICMSOper.Value     := NotasTerceirosItensAliquota_ICMSOper.Value;
                    PedidosItensAliquota_ICMSIntegral.Value := NotasTerceirosItensAliquota_ICMSOper.Value;
                 End;
              end else begin
                  PedidosItensAliquota_ICMSOper.Value := NCMICMS_Operacional.Value;
              End;
           End else begin
               PedidosItensAliquota_ICMSOper.Value := ProcessosDOCAliquota_ICMS.Value;
           End;

           // Verifica se existe alíquota de ICMS informado no cadastro do produto.
           // Dentro do Estado.
           If (PedidosDestinatario_Estado.Value = EmpresasEstado.Value) and (ProdutosICMS_DentroEstado.AsFloat > 0) then begin
              PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_DentroEstado.ASFloat;
           End;
           // Fora do Estado.
           If (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) and (ProdutosICMS_ForaEstado.AsFloat > 0) then begin
              PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_ForaEstado.ASFloat;
           End;
           
           If ProdutosTipo_Conversao.Value <> 'M' then
              PedidosItensQuantidade.Value := (cQuantidade.Value / ProdutosQuantidade_Unidade.Value)
           else
              PedidosItensQuantidade.Value := (cQuantidade.Value * ProdutosQuantidade_Unidade.Value);

           PedidosItensNCM.Value             := NotasTerceirosItensNCM.Value;
           PedidosItensUnidade_Medida.Value  := ProdutosUnidade.Value;
           PedidosItensAliquota_IPI.Value    := NCMIPI.Value;
           PedidosItensAliquota_II.Value     := NCMII.Value;
           PedidosItensPeso_Liquido.Value    := NotasTerceirosItensPeso_Liquido.Value;
           PedidosItensPeso_Bruto.Value      := NotasTerceirosItensPeso_Bruto.Value;
           PedidosItensAliquota_PIS.Value    := NCMPIS.Value;
           PedidosItensAliquota_COFINS.Value := NCMCOFINS.Value;
           PedidosItensValor_Frete.Value     := 0;
           PedidosItensValor_Seguro.Value    := 0;
           PedidosItensValor_Despesa.Value   := 0;
           PedidosItensValor_PIS.Value       := 0;
           PedidosItensValor_COFINS.Value    := 0;
           PedidosItensCEST.Value            := NotasTerceirosItensCEST.Value;

           // Código de Situação Tributaria do PIS.
           If PedidosSaida_Entrada.AsInteger = 1 then begin
              mCST := '';
              mUF  := Trim(ClientesEstado.Value)+'_ICMS';
              If (ProdutosAliquota_PIS.AsFloat          > 0) and (ProdutosAliquota_PIS.AsFloat  = ConfiguracaoPIS_AliquotaBasica.AsFloat) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+B'; // 01.
              If (ProdutosAliquota_PIS.AsFloat          > 0) and (ProdutosAliquota_PIS.AsFloat <> ConfiguracaoPIS_AliquotaBasica.Value)   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+D'; // 02.
              If (TipoNotaCSTPIS_AliquotaUM.AsBoolean   = true) or (ProdutosCSTPIS_AliquotaUM.AsBoolean   = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+UM';                        // 03.
              If (TipoNotaCSTPIS_Monofasica.AsBoolean   = true) or (ProdutosCSTPIS_Monofasica.AsBoolean   = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+MONO+A0';                   // 04.
              If (TipoNotaCSTPIS_AliquotaZero.AsBoolean = true) or (ProdutosCSTPIS_AliquotaZero.AsBoolean = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';                        // 06.
              If (TipoNotaCSTPIS_Isenta.AsBoolean       = true) or (ProdutosCSTPIS_Isenta.AsBoolean       = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';                       // 07.
              If (TipoNotaCSTPIS_SemIncidencia.AsBoolean= true) or (ProdutosCSTPIS_SemIncidencia.AsBoolean= true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC';                      // 08.
              If (TipoNotaCSTPIS_Suspensao.AsBoolean    = true) or (ProdutosCSTPIS_Suspensao.AsBoolean    = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';                       // 09.
              If (TipoNotaCSTPIS_Outras.AsBoolean       = true) or (ProdutosCSTPIS_Outras.AsBoolean       = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';                         // Outras.

              If mCST = '' then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+<>';      // 49 / 98
              If CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
                 mCST := '<>';
                 CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]);
              End;

              // Pegando a alíquota do PIS.
              If CSTPISTributavel.AsBoolean = true then begin
                 PedidosItensAliquota_PIS.Value    := ProdutosAliquota_PIS.Value;
                 PedidosItensAliquota_PISRed.Value := ProdutosAliquota_PIS.AsFloat - ((ProdutosAliquota_PIS.AsFloat * ProdutosReducao_PIS.AsFloat)/100);
              End;

              PedidosItensCSTPIS.Value := CSTPISCodigo.Value;

              // Código de Situação Tributaria da COFINS
              mCST := '';
              If (ProdutosAliquota_COFINS.AsFloat <> 0) and (ProdutosAliquota_COFINS.AsFloat  = ConfiguracaoCOFINS_AliquotaBasica.AsFloat) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+B';   // 01.
              If (ProdutosAliquota_COFINS.AsFloat <> 0) and (ProdutosAliquota_COFINS.AsFloat <> ConfiguracaoCOFINS_AliquotaBasica.Value)   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+D';   // 02.
              If (TipoNotaCSTCOFINS_AliquotaUM.AsBoolean   = true) or (ProdutosCSTCOFINS_AliquotaUM.AsBoolean   = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+UM';                     // 03.
              If (TipoNotaCSTCOFINS_Monofasica.AsBoolean   = true) or (ProdutosCSTCOFINS_Monofasica.AsBoolean   = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+MONO+A0';                // 04.
              If (TipoNotaCSTCOFINS_AliquotaZero.AsBoolean = true) or (ProdutosCSTCOFINS_AliquotaZero.AsBoolean = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';                     // 06.
              If (TipoNotaCSTCOFINS_Isenta.AsBoolean       = true) or (ProdutosCSTCOFINS_Isenta.AsBoolean       = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';                    // 07.
              If (TipoNotaCSTCOFINS_SemIncidencia.AsBoolean= true) or (ProdutosCSTCOFINS_SemIncidencia.AsBoolean= true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC';                   // 08.
              If (TipoNotaCSTCOFINS_Suspensao.AsBoolean    = true) or (ProdutosCSTCOFINS_Suspensao.AsBoolean    = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';                    // 09.
              If (TipoNotaCSTCOFINS_Outras.AsBoolean       = true) or (ProdutosCSTCOFINS_Outras.AsBoolean       = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';                      // Outras.

              If mCST = '' then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+<>';      // 49 / 98
              If CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
                 mCST := '<>';
                 CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]);
              End;

              PedidosItensCSTCOFINS.Value := CSTCOFINSCodigo.Value;
           end else begin
              If Trim(ProdutosCSTPIS_Entrada.AsString) <> '' then
                 PedidosItensCSTPIS.Value := ProdutosCSTPIS_Entrada.Value
              else
                 PedidosItensCSTPIS.Value := TipoNotaCST_PIS.Value;

              If Trim(ProdutosCSTCOFINS_Entrada.AsString) <> '' then
                 PedidosItensCSTCOFINS.Value := ProdutosCSTCOFINS_Entrada.Value
              else
                 PedidosItensCSTCOFINS.Value := TipoNotaCST_COFINS.Value;

              CSTPIS.Locate('Codigo', PedidosItensCSTPIS.Value, [loCaseInsensitive]);
              CSTCOFINS.Locate('Codigo', PedidosItensCSTCOFINS.Value, [loCaseInsensitive]);
           End;

           // Pegando a alíquota da COFINS.
           If CSTCOFINSTributavel.AsBoolean = true then begin
              PedidosItensAliquota_COFINS.Value    := ProdutosAliquota_COFINS.Value;
              PedidosItensAliquota_COFINSRed.Value := ProdutosAliquota_COFINS.AsFloat - ((ProdutosAliquota_COFINS.AsFloat * ProdutosReducao_COFINS.AsFloat)/100);
           End;

           // Calculo do rateio das Despesas.
           If ConfiguracaoRateio_Despesas.Value = 'V' then
              PedidosItensValor_Despesa.Value := ( (PedidosValor_OutrasDespesas.Value / Pedido_ItensCompraInterna.mTotalProdutos) * NotasTerceirosItensValor_Unitario.Value );
           If ConfiguracaoRateio_Despesas.Value = 'Q' then
              PedidosItensValor_Despesa.Value := (PedidosValor_OutrasDespesas.Value / NotasTerceirosQuantidade.Value);
           If ConfiguracaoRateio_Despesas.Value = 'P' then
              PedidosItensValor_Despesa.Value := ( (PedidosValor_OutrasDespesas.Value / NotasTerceirosVolume_PesoLiquido.Value) * PedidosItensPeso_Liquido.Value );

           // Calculo do rateio do DUMPING do Processo.
           If ProcessosDOCValor_Dumping.AsCurrency > 0 then begin
              PedidosItensValor_Dumping.Value := (ProcessosDOCValor_Dumping.Value / Pedido_ItensCompraInterna.tDumping.FieldByName('TotalFOB_Dumping').Value) * AdicoesValor_Unitario.Value;
           End;

           // Caculando o valor do produto sem impostos.
           If Pedido_ItensCompraInterna.mValorInformado <= 0 then begin
              If TipoNotaCalculo_Mercadoria.Value <> '' then begin
                 PedidosItensValor_Unitario.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_Mercadoria');
              End;
           end else begin
              PedidosItensValor_Unitario.Value := Pedido_ItensCompraInterna.mValorInformado;
           End;

           // Adicionando o valor do lucro no valor unitario.
           If Pedido_ItensCompraInterna.cLucroValor.Value > 0 then begin
              Pedido_ItensCompraInterna.mRateioLucro   := (PedidosLucro_Valor.Value / Pedido_ItensCompraInterna.mTotalProdutos);
              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value + (PedidosItensValor_Unitario.Value * Pedido_ItensCompraInterna.mRateioLucro);
           End;

           If ProdutosTipo_Conversao.Value <> 'M' then
              PedidosItensValor_Total.Value := (RoundTo(PedidosItensValor_Unitario.Value,-4) * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
           else
              PedidosItensValor_Total.Value := (RoundTo(PedidosItensValor_Unitario.Value,-4) * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));

           // Calculo do rateio do DUMPING do Processo.
           If ProcessosDOCValor_Dumping.AsCurrency > 0 then begin
              PedidosItensValor_Dumping.Value := (ProcessosDOCValor_Dumping.Value / Pedido_ItensCompraInterna.tDumping.FieldByName('TotalFOB_Dumping').Value) * AdicoesValor_Unitario.Value;
           End;

           // Calculo do IPI "Verifica se o IPI é por alíquota ou por valor unitario - "Só calula o IPI se houver formula nos casos de alíquota".
           PedidosItensValor_IPI.Value := 0;
           PedidosItensTotal_IPI.Value := 0;
           If (not NCMIPI_Isento.Value) and (not NCMIPI_Suspensao.Value) and (not TipoNotaNao_Tributada_IPI.Value) and (not TipoNotaImune_IPI.Value) and (not TipoNotaSuspensao_IPI.Value) and (not TipoNotaIsencao_IPI.Value) then begin
              If Pedido_ItensCompraInterna.mBCIPIInformado = 0 then begin
                 If ProdutosValor_IPI.Value = 0 then begin
                    If (TipoNotaCalculo_BCIPI.Value <> '') then begin
                       PedidosItensValor_BCIPI.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_BCIPI');
                       PedidosItensValor_IPI.Value   := Percentual(PedidosItensValor_BCIPI.Value, ProdutosAliquota_IPI.Value);
                    End;
                 end else begin
                    If ProdutosTipo_Conversao.Value <> 'M' then
                       PedidosItensValor_IPI.Value := ProdutosValor_IPI.Value
                    else
                       PedidosItensValor_IPI.Value := ProdutosValor_IPI.Value * ProdutosQuantidade_Unidade.Value;
                 End;
                 If ProdutosTipo_Conversao.Value <> 'M' then
                    PedidosItensTotal_IPI.Value := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                 else
                    PedidosItensTotal_IPI.Value := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
              end else begin
                 PedidosItensValor_BCIPI.Value := Pedido_ItensCompraInterna.mBCIPIInformado;
                 PedidosItensValor_IPI.Value   := Percentual( (PedidosItensValor_BCIPI.Value/PedidosItensQuantidade.AsFloat), ProdutosAliquota_IPI.Value );
                 If ProdutosTipo_Conversao.Value <> 'M' then
                    PedidosItensTotal_IPI.Value   := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                 else
                    PedidosItensTotal_IPI.Value   := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
              End;
           End;

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

           // Código de situação tributaria do IPI.
           mCST := '';
           If PedidosItensValor_IPI.Value <> 0       then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IPI';
           If ProdutosValor_IPI.Value     <> 0       then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+V';
           //If NCMIPI_Isento.Value             = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+I';
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

           // Calculando a base do ICMS Operacional.
           If (not NCMICMS_Isento.AsBoolean) and (not NCMICMS_Suspensao.AsBoolean) and (not TipoNotaNao_Tributada_ICMS.AsBoolean) and (not TipoNotaSuspensao_ICMS.AsBoolean) then begin
              If Pedido_ItensCompraInterna.mBCICMSOperInformado = 0 then begin
                 If TipoNotaCalculo_BCICMS.Value <> '' then begin
                    If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                       PedidosItensValor_BCICMSOper.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_BCICMS')
                    end else begin
                       PedidosItensAliquota_ICMSOper.Value := 0;
                    End;
                 End;
              end else begin
                 PedidosItensValor_BCICMSOper.Value := Pedido_ItensCompraInterna.mBCICMSOperInformado;
              End;

              // Calculando o valor do ICMS Operacional.
              If Trim(TipoNotaCalculo_VlrICMS.Value) <> '' then begin
                 If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                    PedidosItensValor_ICMSOper.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_VlrICMS');
                 end else begin
                    PedidosItensValor_ICMSOper.Value := 0;
                 End;
              End;
           End;

           If TipoNotaSaida_Entrada.Value = 1 then Begin
              If Trim(ClientesEstado.Value) <> 'EX' then begin
                 // Pegando a aliquota e calculando o MVA.
                 mUF := Trim(ClientesEstado.Value)+'_MVA';
                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                 If NCM.FieldbyName(mUF).AsFloat <> 0 then
                    PedidosItensValor_MVA.Value := Percentual( (PedidosItensValor_Total.Value+PedidosItensValor_IPI.Value), PedidosItensAliquota_MVA.Value )
                 else
                    PedidosItensValor_MVA.Value := 0;

                 If Trim(TipoNotaCalculo_BCMVA.AsString) <> '' then begin
                    PedidosItensValor_BCMVA.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_BCMVA');
                    If TipoNotaCalculo_VlrMVA.Value <> '' then begin
                       If PedidosItensAliquota_MVA.Value <> 0 then
                          PedidosItensValor_MVA.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_VlrMVA')
                       else
                          PedidosItensValor_MVA.Value := 0;
                    End;
                 end else begin
                    PedidosItensValor_BCMVA.Value := 0;
                    PedidosItensValor_MVA.Value   := 0;
                 End;

                 // Pegando a aliquota e calculando o ICMS Substitutivo.
                 PedidosItensValor_BCICMSSub.Value  := 0;
                 PedidosItensValor_ICMSSub.Value    := 0;
                 mUF                                := Trim(ClientesEstado.Value)+'_ICMS';
                 PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;

                 If PedidosItensAliquota_ICMSSub.Value <> 0 then begin
                    If Pedido_ItensCompraInterna.mBCICMSSubInformado = 0 then begin
                       If TipoNotaCalculo_BCICMSSub.Value <> '' then begin
                          If PedidosItensAliquota_MVA.Value <> 0 then begin
                             PedidosItensValor_BCICMSSub.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_BCICMSSub');
                             If TipoNotaCalculo_VlrICMSSub.Value <> '' then
                                PedidosItensValor_ICMSSub.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_VlrICMSSub');
                          End;      
                       End;
                    end else begin
                       PedidosItensValor_BCICMSSub.Value := Pedido_ItensCompraInterna.mBCICMSSubInformado;
                    End;
                 End;
              End;
           end else begin
              // Pegando a aliquota e calculando o MVA.
              mUF := Trim(FornecedoresEstado.Value)+'_MVA';
              PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
              If NCM.FieldbyName(mUF).AsFloat <> 0 then
                 PedidosItensValor_MVA.Value := Percentual( (PedidosItensValor_Total.Value+PedidosItensValor_IPI.Value+(PedidosItensValor_Despesa.Value * PedidosItensQuantidade.AsFloat)), PedidosItensAliquota_MVA.Value )
              else
                 PedidosItensValor_MVA.Value := 0;

              // Pegando a aliquota e calculando o ICMS Substitutivo.
              PedidosItensValor_BCICMSSub.Value  := 0;
              PedidosItensValor_ICMSSub.Value    := 0;
              mUF                                := Trim(FornecedoresEstado.Value)+'_ICMS';
              PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;

              If PedidosItensAliquota_ICMSSub.Value <> 0 then begin
                 If Pedido_ItensCompraInterna.mBCICMSSubInformado = 0 then begin
                    If TipoNotaCalculo_BCICMSSub.Value <> '' then begin
                       If PedidosItensAliquota_MVA.Value <> 0 then begin
                          PedidosItensValor_BCICMSSub.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_BCICMSSub');
                          If TipoNotaCalculo_VlrICMSSub.Value <> '' then
                             PedidosItensValor_ICMSSub.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_VlrICMSSub');
                       End;      
                    End;
                 end else begin
                    PedidosItensValor_BCICMSSub.Value := Pedido_ItensCompraInterna.mBCICMSSubInformado;
                 End;
              End;
           End;

           // Calculando o valor da redução do ICMS.
           If TipoNotaCalculo_ReducaoICMS.Value <> '' then begin
              PedidosItensValor_ICMSReducao.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_ReducaoICMS');
           End;

           // Recalcula o valor unitario do produto com base no segundo campo de formula.
           // Calculo_MercadoriaImp = Valores extras calculados sobre o valor do produto.
           If TipoNotaCalculo_MercadoriaImp.Value <> '' then begin
              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value + Pedido_ItensCompraInterna.CalculaMacro('Calculo_MercadoriaImp');

              If ProdutosTipo_Conversao.Value <> 'M' then
                 PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value * ProdutosQuantidade_Unidade.Value
              else
                 PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value / ProdutosQuantidade_Unidade.Value;

              PedidosItensValor_Total.Value    := (RoundTo(PedidosItensValor_Unitario.Value,-2) * PedidosItensQuantidade.Value);
           End;

           PedidosItensValor_PIS.Value       := Percentual(PedidosItensValor_Unitario.Value, PedidosItensAliquota_PIS.Value);
           PedidosItensValor_COFINS.Value    := Percentual(PedidosItensValor_Unitario.Value, PedidosItensAliquota_COFINS.Value);

           //cLucro.Value     := Pedido_ItensCompraInterna.cLucro.Value;
           cLucro.Value     := 0;
           cTotalNota.Value := 0;
           //mIncremento      := 0.01;
           mIncremento      := cPrecisao.Value;

           Pedidos.Edit;

           While Funcoes.Cancelado = False do begin
                 // Caculando o valor do produto sem impostos.
                 If Trim(TipoNotaCalculo_Mercadoria.AsString) <> '' then begin
                    PedidosItensValor_Unitario.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_Mercadoria');
                 End;   

                 // Applicando o desconto no valor unitario(Percentual).
                 If PedidosItensDesconto.Value > 0 then begin
                    If ProdutosTipo_Conversao.Value <> 'M' then begin
                       PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - (Percentual(PedidosItensValor_Unitario.Value, PedidosItensDesconto.Value))) * ProdutosQuantidade_Unidade.Value;
                    end else begin
                       PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - (Percentual(PedidosItensValor_Unitario.Value, PedidosItensDesconto.Value))) / ProdutosQuantidade_Unidade.Value;
                    End;
                 End;

                 // Applicando o desconto no valor unitario(Valor).
                 If PedidosItensDesconto_Valor.Value > 0 then begin
                    If ProdutosTipo_Conversao.Value <> 'M' then
                       PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value) * ProdutosQuantidade_Unidade.Value
                    else
                       PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value) / ProdutosQuantidade_Unidade.Value;
                 End;

                 If ProdutosTipo_Conversao.Value <> 'M' then
                    PedidosItensValor_Total.Value := PedidosItensValor_Unitario.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)
                 else
                    PedidosItensValor_Total.Value := PedidosItensValor_Unitario.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value);
                    
                 // Calculo do IPI "Verifica se o IPI é por alíquota ou por valor unitario - "Só calula o IPI se houver formula nos casos de alíquota e se não for informado valor.".
                 PedidosItensValor_IPI.Value := 0;
                 PedidosItensTotal_IPI.Value := 0;
                 If (not NCMIPI_Isento.Value) and (not NCMIPI_Suspensao.Value) and (not TipoNotaNao_Tributada_IPI.Value) and (not TipoNotaImune_IPI.Value) and (not TipoNotaSuspensao_IPI.Value) and (not TipoNotaIsencao_IPI.Value) then begin
                    If cBCIPI.Value = 0 then begin
                       If ProdutosValor_IPI.Value = 0 then begin
                          If (TipoNotaCalculo_BCIPI.Value <> '') then begin
                             PedidosItensValor_BCIPI.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_BCIPI');
                             PedidosItensValor_IPI.Value   := Percentual( PedidosItensValor_BCIPI.Value, ProdutosAliquota_IPI.Value );
                          End;
                       end else begin
                          If ProdutosTipo_Conversao.Value <> 'M' then
                             PedidosItensValor_IPI.Value := ProdutosValor_IPI.Value
                          else
                             PedidosItensValor_IPI.Value := ProdutosValor_IPI.Value * ProdutosQuantidade_Unidade.Value;
                       End;

                       PedidosItensTotal_IPI.Value := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value));
                    end else begin
                       PedidosItensValor_BCIPI.Value := cBCIPI.Value;
                       PedidosItensValor_IPI.Value   := Percentual( PedidosItensValor_BCIPI.Value, ProdutosAliquota_IPI.Value );

                       If ProdutosTipo_Conversao.Value <> 'M' then
                          PedidosItensTotal_IPI.Value := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value))
                       else
                          PedidosItensTotal_IPI.Value := (PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value));
                    End;
                 End;
                 If PedidosItensValor_IPI.Value <= 0 then PedidosItensValor_BCIPI.Value := 0;

                 // Calculando a base do ICMS Operacional.
                 If (not NCMICMS_Isento.AsBoolean) and (not NCMICMS_Suspensao.AsBoolean) and (not TipoNotaNao_Tributada_ICMS.AsBoolean) and (not TipoNotaSuspensao_ICMS.AsBoolean) then begin
                    If cBCICMSOper.Value = 0 then begin
                       If TipoNotaCalculo_BCICMS.Value <> '' then begin
                          If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                             PedidosItensValor_BCICMSOper.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_BCICMS');
                          End;
                       End;
                    End;

                    // Calculando o valor do ICMS Operacional.
                    If Trim(TipoNotaCalculo_VlrICMS.Value) <> '' then begin
                       If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                          PedidosItensValor_ICMSOper.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_VlrICMS')
                       End;
                    End;
                 End;

                 If TipoNotaSaida_Entrada.Value = 1 then Begin
                    // Pegando a aliquota e calculando o MVA. (Se o cliente é do "Simples Naciona, verifica redução de alíquota.').
                    mUF := Trim(ClientesEstado.Value)+'_MVA';

                    if not NCMMVA_NaoReducao.AsBoolean then begin
                       if Dados.ClientesSimples_Nacional.AsBoolean = false then begin
                          PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                       end else begin
                          PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
                       end;
                    end;

                    If TipoNotaCalculo_BCMVA.Value <> '' then begin
                       PedidosItensValor_BCMVA.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_BCMVA');
                       If TipoNotaCalculo_VlrMVA.Value <> '' then begin
                          If PedidosItensAliquota_MVA.Value <> 0 then
                             PedidosItensValor_MVA.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_VlrMVA')
                       End;
                    End;

                    // Pegando a aliquota e calculando o ICMS Substitutivo.
                    mUF                                := Trim(ClientesEstado.Value)+'_ICMS';
                    PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;

                    If PedidosItensAliquota_ICMSSub.Value > 0 then begin
                       If TipoNotaCalculo_BCICMSSub.Value <> '' then begin
                          If PedidosItensAliquota_MVA.Value <> 0 then begin
                             PedidosItensValor_BCICMSSub.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_BCICMSSub');
                             If TipoNotaCalculo_VlrICMSSub.Value <> '' then
                                PedidosItensValor_ICMSSub.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_VlrICMSSub');
                          End;
                       End;
                    End;
                 End;

                 // Recalcula o valor unitario do produto com base no segundo campo de formula.
                 // Calculo_MercadoriaImp = Valores extras calculados sobre o valor do produto.
                 If TipoNotaCalculo_MercadoriaImp.Value <> '' then PedidosItensValor_Unitario.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_MercadoriaImp');

                 If ProdutosTipo_Conversao.Value <> 'M' then begin
                    PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value * ProdutosQuantidade_Unidade.Value;
                 end else begin
                    PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value / ProdutosQuantidade_Unidade.Value;
                 End;
                 PedidosItensValor_Total.Value := PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value;

                 // Cálculo do valor do PIS e da COFINS da saída.
                 If TipoNotaSaida_Entrada.Value = 1 then begin
                    If CSTPISTributavel.AsBoolean = true then begin
                       If PedidosItensAliquota_PISRed.AsFloat <= 0 then begin
                          PedidosItensValor_PIS.Value := Percentual(PedidosItensValor_Unitario.Value, PedidosItensAliquota_PIS.Value);
                       end else begin
                          PedidosItensValor_PIS.Value := Percentual(PedidosItensValor_Unitario.Value, PedidosItensAliquota_PISRed.Value);
                       End;
                    End;
                    If CSTCOFINSTributavel.AsBoolean = true then begin
                       If PedidosItensAliquota_COFINSRed.AsFloat <= 0 then begin
                          PedidosItensValor_COFINS.Value := Percentual(PedidosItensValor_Unitario.Value, PedidosItensAliquota_COFINS.Value);
                       end else begin
                          PedidosItensValor_COFINS.Value := Percentual(PedidosItensValor_Unitario.Value, PedidosItensAliquota_COFINSRed.Value);
                       End;
                    End;
                 End;

                 // Calculando o valor da redução do ICMS.
                 If TipoNotaCalculo_ReducaoICMS.Value <> '' then begin
                    PedidosItensValor_ICMSReducao.Value := Pedido_ItensCompraInterna.CalculaMacro('Calculo_ReducaoICMS');
                 End;

                 PedidosValor_TotalProdutos.Value    := PedidosItensValor_Total.Value;
                 PedidosBCIPI.Value                  := PedidosItensValor_BCIPI.Value;
                 PedidosValor_TotalIPI.Value         := PedidosItensTotal_IPI.Value;
                 PedidosBCICMS.Value                 := PedidosItensValor_BCICMSOper.Value;
                 PedidosValor_ICMS.Value             := PedidosItensValor_ICMSOper.Value;
                 PedidosAliquota_ICMSOper.Value      := PedidosItensAliquota_ICMSOper.Value;
                 PedidosBCICMS_Substitutivo.Value    := PedidosItensValor_BCICMSSub.Value;
                 PedidosValorICMS_Substitutivo.Value := PedidosItensValor_ICMSSub.Value;
                 PedidosValor_ICMSReducao.Value      := PedidosItensValor_ICMSReducao.Value;
                 PedidosValor_TotalMVA.Value         := PedidosItensValor_MVA.Value;
                 PedidosValor_PIS.Value              := PedidosItensValor_PIS.Value;
                 PedidosValor_COFINS.Value           := PedidosItensValor_COFINS.Value;
                 PedidosValor_TotalII.Value          := PedidosItensValor_II.Value;
                 PedidosValor_OutrasDespesas.Value   := PedidosItensValor_Despesa.Value;

                 If TipoNotaCalculo_OutrasDespesas.Value <> '' then begin
                    PedidosValor_OutrasDespesas.Value := PedidosValor_OutrasDespesas.Value + Pedido_ItensCompraInterna.CalculaMacro('Calculo_OutrasDespesas');
                 End;

                 cTotalNota.Value := SimpleRoundTo(Pedido_ItensCompraInterna.CalculaMacro('Calculo_TotalPedido'), -4);
                 
                 If Tipo = 0 then begin   // Tipo 0 = Lucro.
                    If cTotalNota.Value = cTotalNFLucro.Value then begin
                       Break;
                    End;

                    If (cLucro.Value = 0) and (cTotalNota.Value > cTotalNFLucro.Value) then begin
                       MessageDlg('Valor total informado e menor que o valor calculado!', mtError, [mbOK], 0);
                       Break;
                    End;

                    If cTotalNota.Value < cTotalNFLucro.Value then begin
                       cLucro.Value := cLucro.Value + mIncremento;
                    End;

                    If cTotalNota.Value > cTotalNFLucro.Value then begin
                       cLucro.Value := cLucro.Value - mIncremento;
                       mIncremento  := mIncremento / 10;
                       cLucro.Value := cLucro.Value + mIncremento;
                    End;

                    If cLucro.Value < 0 then begin
                       cLucro.Value := 0;
                       MessageDlg('Valor total informado inválido!', mtError, [mbOK], 0);
                       Break;
                    End;

                    If mIncremento < 0.000001 then begin
                       Break;
                    End;
                 end else begin    // Tipo 1 = Prejuizo.
                    If cTotalNota.Value = cTotalNFLucro.Value then begin
                       Break;
                    End;

                    If cTotalNota.Value > cTotalNFLucro.Value then begin
                       cLucro.Value := cLucro.Value - mIncremento;
                    End;

                    If cTotalNota.Value < cTotalNFLucro.Value then begin
                       cLucro.Value := cLucro.Value + mIncremento;
                       mIncremento  := mIncremento / 10;
                       cLucro.Value := cLucro.Value - mIncremento;
                    End;

                    If mIncremento < 0.000001 then begin
                       Break;
                    End;
                 End;

                 PedidosItensLucro.Value := cLucro.Value;
                 Application.ProcessMessages;
           End;

           PedidosItens.Cancel;

           Produtos.EnableControls;
           NCM.EnableControls;
           INCOTERMS.EnableControls;
           Pedidos.EnableControls;
           PedidosItens.EnableControls;
           //Pedido_ItensCompraInterna.cFormula.Clear;
      End;
      Funcoes.Cancelado := false;
end;


procedure TPedido_ItensQuantidade_CInterna.cTotalNFLucroChange(Sender: TObject);
begin
//     bLucro.Enabled := cTotalNFLucro.Value > 0;
     bLucro.Enabled    := cTotalNFLucro.Value > 0;
     bPrejuizo.Enabled := cTotalNFLucro.Value > 0;
end;

procedure TPedido_ItensQuantidade_CInterna.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
      // Carregando o último valor de precisão informado.
      aINI            := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cPrecisao.Value := aINI.ReadFloat('Apura_Lucro', 'Precisao', 0.01);
      aINI.Free;

      cQuantidade.SetFocus;
      cLucro.Value := Pedido_ItensCompraInterna.cLucro.Value;
end;

procedure TPedido_ItensQuantidade_CInterna.bPrejuizoClick(Sender: TObject);
begin
     Apura(1)
end;

procedure TPedido_ItensQuantidade_CInterna.bLucroClick(Sender: TObject);
begin
     Apura(0);
end;

end.
