unit frmPedido_ItensQuantidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math, Funcoes, DB,
  DBAccess, MSAccess, DBCtrls, IniFiles, Mask, RxCurrEdit, RxToolEdit, system.UITypes;

type
  TPedido_ItensQuantidade = class(TForm)
    GroupBox1: TGroupBox;
    lDI: TStaticText;
    cQuantidade: TCurrencyEdit;
    StaticText1: TStaticText;
    cValor: TCurrencyEdit;
    Label1: TLabel;
    bOK: TButton;
    bCancela: TButton;
    StaticText2: TStaticText;
    cBCIPI: TCurrencyEdit;
    StaticText3: TStaticText;
    cBCICMSOper: TCurrencyEdit;
    StaticText4: TStaticText;
    cBCICMSSub: TCurrencyEdit;
    cPercentualQtde: TCurrencyEdit;
    bSeriais: TButton;
    cTotalNFLucro: TCurrencyEdit;
    cLucro: TCurrencyEdit;
    bLucro: TButton;
    cTotalNota: TCurrencyEdit;
    bPrejuizo: TButton;
    StaticText6: TStaticText;
    cProduto: TDBEdit;
    StaticText5: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    cPrecisao: TCurrencyEdit;
    procedure bCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOKClick(Sender: TObject);
    procedure cValorExit(Sender: TObject);
    procedure cPercentualQtdeExit(Sender: TObject);
    procedure bSeriaisClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cTotalNFLucroChange(Sender: TObject);
    procedure Apura(Tipo: Integer);
    procedure bLucroClick(Sender: TObject);
    procedure bPrejuizoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mQtdeOrig : Real;
  end;

var
  Pedido_ItensQuantidade: TPedido_ItensQuantidade;

implementation

uses frmPedido_Itens, frmDados, frmPedido_ItensSeriais, frmDMFiscal;

{$R *.dfm}

procedure TPedido_ItensQuantidade.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   aIni: TIniFile;
begin
      aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      aIni.WriteFloat('Apura_Lucro', 'Precisao', cPrecisao.Value);
      aIni.Free;

      Pedido_ItensQuantidade.Release;
      Pedido_ItensQuantidade := nil;
end;

procedure TPedido_ItensQuantidade.bCancelaClick(Sender: TObject);
begin
      //Funcoes.Cancelado                 := true;
      Pedido_Itens.mQuantidade          := 0;
      Pedido_Itens.mValorInformado      := 0;
      Pedido_Itens.mBCIPIInformado      := 0;
      Pedido_Itens.mBCICMSOperInformado := 0;
      Pedido_Itens.mBCICMSSubInformado  := 0;
      Close;
end;

procedure TPedido_ItensQuantidade.bOKClick(Sender: TObject);
Var
    mQtde: Real;
begin
     With Dados do begin
          Pedido_Itens.cLucro.Value := cLucro.Value;
          mQtde := 0;
          If (TipoNotaMovimenta_Estoque.Value = true) then begin
             If (PedidosSaida_Entrada.Value = 0) then mQtde := RoundTo(AdicoesLancado_Entrada.Value, -3);
             If (PedidosSaida_Entrada.Value = 1) then mQtde := RoundTo(AdicoesLancado_Saida.Value, -3);
          end else begin
             mQtde := RoundTo(AdicoesQuantidade.Value, -3);
          End;

          If RoundTo(cQuantidade.Value, -3) > Roundto(mQtde, -3) then begin
             MessageDlg('Quantidade informada indisponível para faturamento!'+#13+#13+'A Quantidade disponível é :'+FloattoStr(mQtde), mtError, [mbOK], 0);
             cQuantidade.SetFocus;
             Abort;
          End;
          Pedido_Itens.mQuantidade          := cQuantidade.Value;
          Pedido_Itens.mValorInformado      := cValor.Value;
          Pedido_Itens.mBCIPIInformado      := cBCIPI.Value;
          Pedido_Itens.mBCICMSOperInformado := cBCICMSOper.Value;
          Pedido_Itens.mBCICMSSubInformado  := cBCICMSSub.Value;
          Close;
     End;
end;

procedure TPedido_ItensQuantidade.cValorExit(Sender: TObject);
begin
        cBCIPI.Value := cValor.Value * cQuantidade.Value;
end;

procedure TPedido_ItensQuantidade.cPercentualQtdeExit(Sender: TObject);
begin
      If cPercentualQtde.Value > 0 then cQuantidade.Value := Percentual(mQtdeOrig, cPercentualQtde.Value);
end;

procedure TPedido_ItensQuantidade.bSeriaisClick(Sender: TObject);
begin
      Pedido_ItensSeriais := TPedido_ItensSeriais.Create(Self);
      Pedido_ItensSeriais.Caption := Caption;
      Pedido_ItensSeriais.ShowModal;
end;

procedure TPedido_ItensQuantidade.FormShow(Sender: TObject);
var
    aINI: TIniFile;
begin
      // Carregando o último valor de precisão informado.
      aINI            := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
      cPrecisao.Value := aINI.ReadFloat('Apura_Lucro', 'Precisao', 0.01);
      aINI.Free;

      With Dados do begin
           // Verifica se há números de série e libera o botão "Seriais" caso exista.
           ProdutosSeriais.SQL.Clear;
           ProdutosSeriais.SQL.Add('SELECT *');
           ProdutosSeriais.SQL.Add('FROM  ProdutosSeriais PS');
           ProdutosSeriais.SQL.Add('WHERE PS.Produto_Codigo = :pCodigo');
           ProdutosSeriais.SQL.Add('AND   ISNULL(PS.Pedido,0) = 0');
           ProdutosSeriais.SQL.Add('AND   (SELECT COUNT(*) FROM ProdutosSeriaisNotas PSN WHERE PSN.Numero = PS.Numero AND PSN.Saida_Entrada = 1) = 0');
           ProdutosSeriais.SQL.Add('ORDER BY Cor, Numero');
           ProdutosSeriais.ParamByName('pCodigo').AsInteger := AdicoesCodigo_Mercadoria.AsInteger;
           //ProdutosSeriais.SQL.SaveToFile('c:\temp\Pedidos_Itens_Seriais.sql');
           ProdutosSeriais.Open;

           bSeriais.Enabled := ProdutosSeriais.RecordCount > 0;
           cQuantidade.SetFocus;
           cLucro.Value := Pedido_Itens.cLucro.Value;
      End;
end;

procedure TPedido_ItensQuantidade.Apura(Tipo: Integer);
Var
   mUF           : String;
   mIncremento   : Real;
   mDespesaMestre: Real;
begin
      cLucro.Value := 0;
      With Dados, dmFiscal do begin
           Produtos.DisableControls;
           NCM.DisableControls;
           INCOTERMS.DisableControls;
           Pedidos.DisableControls;

           Produtos.Locate('Codigo', AdicoesCodigo_Mercadoria.Value, [loCaseInsensitive]);
           NCM.Locate('NCM', AdicoesNCM.Value, [loCaseInsensitive]);
           Incoterms.Locate('Codigo', ProcessosDOCIncoterms.Value, [loCaseInsensitive]);

           If PedidosNota_Referencia.AsInteger > 0 then begin
              NotasItens.Locate('Codigo_Mercadoria', AdicoesCodigo_Mercadoria.AsInteger, [loCaseInsensitive]);
           End;

           // Pegando o numero do item.
           Pedido_Itens.tItem.Close;
           Pedido_Itens.tItem.SQL.Clear;
           Pedido_Itens.tItem.SQL.Add('SELECT MAX(Item) AS Item FROM PedidosItens WHERE(Pedido = :pPedido)');
           Pedido_Itens.tItem.ParamByName('pPedido').AsInteger := PedidosNumero.AsInteger;
           Pedido_Itens.tItem.Open;

           If PedidosItens.State <> dsInsert then PedidosItens.Insert;
           
           PedidosItensPedido.Value             := PedidosNumero.Value;
           PedidosItensItem.Value               := Pedido_Itens.tItem.FieldByName('Item').AsInteger+1;
           PedidosItensSequencia.Value          := Pedido_Itens.tItem.FieldByName('Item').AsInteger+1;
           PedidosItensSequencia_SISCOMEX.Value := AdicoesSequencia_SISCOMEX.Value;
           PedidosItensRegistro_Adicao.Value    := AdicoesRegistro.Value;
           PedidosItensCodigo_Mercadoria.Value  := AdicoesCodigo_Mercadoria.Value;
           PedidosItensDesconto.Value           := Pedido_Itens.cDesconto.Value;
           PedidosItensDesconto_Valor.Value     := Pedido_Itens.cDescontoValor.Value;
           PedidosItensSaida_Entrada.Value      := PedidosSaida_Entrada.Value;
           Pedido_Itens.tItem.Close;

           // Pegando a aliquota do ICMS Operacional.
           ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]);
           PedidosItensLucro.Value                 := 0;
           PedidosItensLucro_Valor.Value           := Pedido_Itens.cLucroValor.Value;
           PedidosItensAliquota_ICMSOper.Value     := 0;
           PedidosItensAliquota_ICMSIntegral.Value := 0;

           If TipoNotaSaida_Entrada.Value = 1 then begin
              PedidosItensAliquota_ICMSReducao.Value := ProdutosICMS_Reducao.Value;
              If NCMICMS_Operacional.Value = 0 then begin
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
                  PedidosItensAliquota_ICMSOper.Value := NCMICMS_Operacional.Value;
              End;
           end else begin
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

           PedidosItensNCM.Value            := AdicoesNCM.Value;
           PedidosItensUnidade_Medida.Value := ProdutosUnidade.Value;

           // Pegando a aliquota do IPI.
           PedidosItensAliquota_IPI.Value := 0;
           If (not NCMIPI_Isento.Value) and (not NCMIPI_Suspensao.Value) and (not TipoNotaNao_Tributada_IPI.Value) and (not TipoNotaImune_IPI.Value) and (not TipoNotaSuspensao_IPI.Value) and (not TipoNotaIsencao_IPI.Value) then begin
              PedidosItensAliquota_IPI.Value := ProdutosAliquota_IPI.Value;
           End;

           PedidosItensAliquota_II.Value        := ProdutosAliquota_II.Value;
           PedidosItensAliquota_PIS.Value       := 0;
           PedidosItensAliquota_PISRed.Value    := 0;
           PedidosItensAliquota_COFINS.Value    := 0;
           PedidosItensAliquota_COFINSRed.Value := 0;

           // Pegando as alíquotas de PIS/COFINS.
           If CSTPISTributavel.AsBoolean = true then begin
              PedidosItensAliquota_PIS.Value    := ProdutosPIS_Nota.Value;
              If ProdutosReducao_PIS.Value > 0 then begin
                 PedidosItensAliquota_PISRed.Value := ProdutosAliquota_PIS.AsFloat - ((ProdutosAliquota_PIS.AsFloat * ProdutosReducao_PIS.AsFloat)/100);
              End;
           End;
           If CSTCOFINSTributavel.AsBoolean = true then begin
              PedidosItensAliquota_COFINS.Value    := ProdutosCOFINS_Nota.Value;
              If ProdutosReducao_COFINS.Value > 0 then begin
                 PedidosItensAliquota_COFINSRed.Value := ProdutosAliquota_COFINS.AsFloat - ((ProdutosAliquota_COFINS.AsFloat * ProdutosReducao_COFINS.AsFloat)/100);
              End;
           End;

           PedidosItensPeso_Liquido.Value  := AdicoesPeso_Liquido.AsFloat;
           PedidosItensPeso_Bruto.Value    := (ProcessosDOCPeso_Bruto.AsFloat/ProcessosDOCPeso_Liquido.AsFloat) * (AdicoesPeso_Liquido.AsFloat);
           PedidosItensValor_Frete.Value   := 0;
           PedidosItensValor_Seguro.Value  := 0;
           PedidosItensValor_Despesa.Value := 0;
           PedidosItensValor_PIS.Value     := 0;
           PedidosItensValor_COFINS.Value  := 0;
           PedidosItensValor_PIS2.Value    := 0;
           PedidosItensValor_COFINS2.Value := 0;

           // Calculo do valor do PIS da entrada. (Rateio).
           If TipoNotaRateio_PISCOFINSEntrada.AsInteger = 0 then begin
              If CSTPISTributavel.AsBoolean = true then begin
                 If (ProcessosDOCValor_PIS.AsCurrency > 0) and (Dados.ProdutosAliquota_PIS.AsFloat > 0) then begin
                    If ConfiguracaoRateio_PIS.Value = 'V' then begin
                       If (IncotermsFrete.Value = True) and (IncotermsSeguro.Value = True) then begin
                          PedidosItensValor_PIS.Value  := ((ProcessosDOCValor_PIS.Value / ProcessosDOCFOB_ME.Value) * AdicoesValor_Unitario.Value);
                          PedidosItensValor_PIS2.Value := ((ProcessosDOCValor_PIS2.Value / ProcessosDOCFOB_ME.Value) * AdicoesValor_Unitario.Value);
                       End;
                       If (IncotermsFrete.Value = True) and (IncotermsSeguro.Value = False) then begin
                          PedidosItensValor_PIS.Value  := ((ProcessosDOCValor_PIS.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value)) * AdicoesValor_Unitario.Value);
                          PedidosItensValor_PIS2.Value := ((ProcessosDOCValor_PIS2.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value)) * AdicoesValor_Unitario.Value);
                       End;
                       If (IncotermsFrete.Value = False) and (IncotermsSeguro.Value = False) then begin
                          PedidosItensValor_PIS.Value  := ((ProcessosDOCValor_PIS.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value+ProcessosDOCFrete_ME.Value)) * AdicoesValor_Unitario.Value);
                          PedidosItensValor_PIS2.Value := ((ProcessosDOCValor_PIS2.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value+ProcessosDOCFrete_ME.Value)) * AdicoesValor_Unitario.Value);
                       End;
                       If (IncotermsFrete.Value = False) and (IncotermsSeguro.Value = True) then begin
                          PedidosItensValor_PIS.Value := ((ProcessosDOCValor_PIS.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCFrete_ME.Value)) * AdicoesValor_Unitario.Value);
                          PedidosItensValor_PIS2.Value := ((ProcessosDOCValor_PIS2.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCFrete_ME.Value)) * AdicoesValor_Unitario.Value);
                       End;
                    End;
                    If ConfiguracaoRateio_PIS.Value = 'Q' then begin
                       PedidosItensValor_PIS.Value := RoundTo((ProcessosDOCValor_PIS.Value / ProcessosDOCQuantidade.Value), -6);
                       PedidosItensValor_PIS2.Value := RoundTo((ProcessosDOCValor_PIS2.Value / ProcessosDOCQuantidade.Value), -6);
                    End;
                    If ConfiguracaoRateio_PIS.Value = 'P' then begin
                       PedidosItensValor_PIS.Value := RoundTo(((ProcessosDOCValor_PIS.Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value ), -6);
                       PedidosItensValor_PIS2.Value := RoundTo(((ProcessosDOCValor_PIS2.Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value ), -6);
                    End;
                 end else begin
                    If (ProcessosDOCValor_PIS.AsCurrency > 0)  and (Dados.ProdutosAliquota_PIS.AsFloat <= 0) then MessageDlg('Atenção!'+#13+#13+'Falta informar a alíquota do PIS no cadastro do produto.'+#13+#13+'Valor do PIS não calculado.', mtError, [mbOK], 0);
                    If (ProcessosDOCValor_PIS.AsCurrency <= 0) and (Dados.ProdutosAliquota_PIS.AsFloat > 0)  then MessageDlg('Atenção!'+#13+#13+'Falta informar o valor do PIS no cadastro do processo.'+#13+#13+'Valor do PIS não calculado.'  , mtError, [mbOK], 0);
                 End;
              End;

              //---------------------------------------------( COFINS )--------------------------------------------//
              If CSTCOFINSTributavel.AsBoolean = true then begin
                 If (ProcessosDOCValor_COFINS.AsCurrency > 0) and (Dados.ProdutosAliquota_COFINS.AsFloat > 0) then begin
                    If ConfiguracaoRateio_COFINS.Value = 'V' then begin
                       If (IncotermsFrete.Value = True) and (IncotermsSeguro.Value = True) then begin
                          PedidosItensValor_COFINS.Value  := ((ProcessosDOCValor_COFINS.Value / ProcessosDOCFOB_ME.Value) * AdicoesValor_Unitario.Value);
                          PedidosItensValor_COFINS2.Value := ((ProcessosDOCValor_COFINS2.Value / ProcessosDOCFOB_ME.Value) * AdicoesValor_Unitario.Value);
                       End;
                       If (IncotermsFrete.Value = True) and (IncotermsSeguro.Value = False) then begin
                          PedidosItensValor_COFINS.Value  := ((ProcessosDOCValor_COFINS.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value)) * AdicoesValor_Unitario.Value);
                          PedidosItensValor_COFINS2.Value := ((ProcessosDOCValor_COFINS2.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value)) * AdicoesValor_Unitario.Value);
                       End;
                       If (IncotermsFrete.Value = False) and (IncotermsSeguro.Value = False) then begin
                          PedidosItensValor_COFINS.Value  := ((ProcessosDOCValor_COFINS.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value+ProcessosDOCFrete_ME.Value)) * AdicoesValor_Unitario.Value);
                          PedidosItensValor_COFINS2.Value := ((ProcessosDOCValor_COFINS2.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value+ProcessosDOCFrete_ME.Value)) * AdicoesValor_Unitario.Value);
                       End;
                       If (IncotermsFrete.Value = False) and (IncotermsSeguro.Value = True) then begin
                          PedidosItensValor_COFINS.Value  := ((ProcessosDOCValor_COFINS.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCFrete_ME.Value)) * AdicoesValor_Unitario.Value);
                          PedidosItensValor_COFINS2.Value := ((ProcessosDOCValor_COFINS2.Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCFrete_ME.Value)) * AdicoesValor_Unitario.Value);
                       End;
                    End;
                    If ConfiguracaoRateio_COFINS.Value = 'Q' then begin
                       PedidosItensValor_COFINS.Value  := RoundTo((ProcessosDOCValor_COFINS.Value / ProcessosDOCQuantidade.Value),-6);
                       PedidosItensValor_COFINS2.Value := RoundTo((ProcessosDOCValor_COFINS2.Value / ProcessosDOCQuantidade.Value),-6);
                    End;
                    If ConfiguracaoRateio_COFINS.Value = 'P' then begin
                       PedidosItensValor_COFINS.Value := RoundTo((ProcessosDOCValor_COFINS.Value / ProcessosDOCQuantidade.Value),-6);
                       PedidosItensValor_COFINS2.Value := RoundTo((ProcessosDOCValor_COFINS2.Value / ProcessosDOCQuantidade.Value),-6);
                    End;
                 end else begin
                     If (ProcessosDOCValor_COFINS.AsCurrency > 0) and (Dados.ProdutosAliquota_COFINS.AsFloat <= 0) then MessageDlg('Atenção!'+#13+#13+'Falta informar a alíquota da COFINS no cadastro do produto.'+#13+#13+'Valor da COFINS não calculado.', mtError, [mbOK], 0);
                     If (ProcessosDOCValor_COFINS.AsCurrency <= 0) and (Dados.ProdutosAliquota_COFINS.AsFloat > 0) then MessageDlg('Atenção!'+#13+#13+'Falta informar o valor da COFINS no cadastro do processo.'+#13+#13+'Valor da COFINS não calculado.'  , mtError, [mbOK], 0);
                End;
              End;
           End;

           // Calculo do rateio do frete.
           If IncotermsFrete.Value = True then begin
              If ConfiguracaoRateio_Frete.Value = 'V' then
                 PedidosItensValor_Frete.Value := ((ProcessosDOCFrete.Value / ProcessosDOCFOB_ME.Value) * AdicoesValor_Unitario.Value);
              If ConfiguracaoRateio_Frete.Value = 'Q' then
                 PedidosItensValor_Frete.Value := RoundTo((ProcessosDOCFrete.Value / ProcessosDOCQuantidade.Value),-6);
              If ConfiguracaoRateio_Frete.Value = 'P' then
                 PedidosItensValor_Frete.Value := Roundto((ProcessosDOCFrete.Value / ProcessosDOCPeso_Liquido.Value),-6) * PedidosItensPeso_Liquido.Value;
           End;

           // Calculo do rateio do Seguro.
           If IncotermsSeguro.Value = True then begin
              If ConfiguracaoRateio_Seguro.Value = 'V' then
                 PedidosItensValor_Seguro.Value := (ProcessosDOCSeguro.Value / Pedido_Itens.tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
              If ConfiguracaoRateio_Seguro.Value = 'Q' then
                 PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCQuantidade.Value),-6);
              If ConfiguracaoRateio_Seguro.Value = 'P' then
                 PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCPeso_Liquido.Value), -6) * PedidosItensPeso_Liquido.Value;
           End;


           // Calculo do rateio da taxa do siscomex.
           PedidosItensRateio_SISCOMEX.Value := 0;
           If Dados.ProcessosDOCTaxa_SISCOMEX.Value > 0 then begin
              PedidosItensRateio_SISCOMEX.Value := (ProcessosDOCTaxa_SISCOMEX.Value / Pedido_Itens.tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
           End;

           // Calculo do rateio das Despesas.
           // Calculo do rateio das Despesas "MESTRE".
           mDespesaMestre := 0;
           If (ProcessosDOCEntreposto.AsBoolean = true) then begin
              If Pedido_Itens.tDespesas.FieldByName('Valor_DespesasMestre').AsCurrency > 0 then begin
                 If ConfiguracaoRateio_Despesas.Value = 'V' then begin
                    mDespesaMestre := ((Pedido_Itens.tDespesas.FieldByName('Valor_DespesasMestre').Value / Pedido_Itens.tFOB.FieldByName('FOB_Mestre').Value) * (AdicoesValor_SemAdValorem.Value));
                 End;
                 If ConfiguracaoRateio_Despesas.Value = 'Q' then
                    mDespesaMestre := RoundTo((Pedido_Itens.tDespesas.FieldByName('Valor_DespesasMestre').Value / ProcessosDOCQuantidade.Value), -6);
                 If ConfiguracaoRateio_Despesas.Value = 'P' then
                    mDespesaMestre := RoundTo(((Pedido_Itens.tDespesas.FieldByName('Valor_DespesasMestre').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value),-6);
              End;
           End;

           // Calculo do rateio das Despesas "Seletivas".
           Pedido_Itens.mDespesaSeletivo := 0;
           If ProdutosCusto_Seletivo.AsBoolean = true then begin
              If Pedido_Itens.tDespesas.FieldByName('Valor_Seletivo').AsCurrency > 0 then begin
                 If ConfiguracaoRateio_Despesas.Value = 'V' then
                    Pedido_Itens.mDespesaSeletivo := ((Pedido_Itens.tDespesas.FieldByName('Valor_Seletivo').Value /  Pedido_Itens.tFOB.FieldByName('FOB_Seletivo').Value) * AdicoesValor_SemAdValorem.Value);
                 If ConfiguracaoRateio_Despesas.Value = 'Q' then
                    Pedido_Itens.mDespesaSeletivo := RoundTo((Pedido_Itens.tDespesas.FieldByName('Valor_Seletivo').Value / ProcessosDOCQuantidade.Value), -6);
                 If ConfiguracaoRateio_Despesas.Value = 'P' then
                    Pedido_Itens.mDespesaSeletivo := RoundTo(((Pedido_Itens.tDespesas.FieldByName('Valor_Seletivo').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value),-6);
              End;
           End;

           // Calculo do rateio das Despesas "FILHO" (Entrada/Saída).
           If Pedido_Itens.tDespesas.FieldByName('Valor_Despesas').AsCurrency > 0 then begin
              If ProcessosDOCEntreposto.AsBoolean = false then begin
                 If ConfiguracaoRateio_Despesas.Value = 'V' then begin
                    PedidosItensValor_Despesa.Value := (Pedido_Itens.tDespesas.FieldByName('Valor_Despesas').Value / Pedido_Itens.tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                 End;
                 If ConfiguracaoRateio_Despesas.Value = 'Q' then
                    PedidosItensValor_Despesa.Value := RoundTo((Pedido_Itens.tDespesas.FieldByName('Valor_Despesas').Value / ProcessosDOCQuantidade.Value), -6);
                 If ConfiguracaoRateio_Despesas.Value = 'P' then
                    PedidosItensValor_Despesa.Value := RoundTo(((Pedido_Itens.tDespesas.FieldByName('Valor_Despesas').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value),-6);
              end else begin
                If ConfiguracaoRateio_Despesas.Value = 'V' then begin
                   PedidosItensValor_Despesa.Value := (Pedido_Itens.tDespesas.FieldByName('Valor_Despesas').Value / Pedido_Itens.tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                End;
                If ConfiguracaoRateio_Despesas.Value = 'Q' then
                   PedidosItensValor_Despesa.Value := RoundTo((Pedido_Itens.tDespesas.FieldByName('Valor_Despesas').Value / ProcessosDOCQuantidade.Value), -6);
                If ConfiguracaoRateio_Despesas.Value = 'P' then
                   PedidosItensValor_Despesa.Value := RoundTo(((Pedido_Itens.tDespesas.FieldByName('Valor_Despesas').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value),-6);
              End;
           End;

           // Calculo do rateio das Despesas "FILHO" (Outros).
           If Pedido_Itens.tDespesas.FieldByName('Valor_DespesasOutros').AsCurrency > 0 then begin
              If ProcessosDOCEntreposto.AsBoolean = false then begin
                 If ConfiguracaoRateio_Despesas.Value = 'V' then begin
                    PedidosItensValor_DespesasOutros.Value := (Pedido_Itens.tDespesas.FieldByName('Valor_DespesasOutros').Value / Pedido_Itens.tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                 End;
                 If ConfiguracaoRateio_Despesas.Value = 'Q' then
                    PedidosItensValor_DespesasOutros.Value := RoundTo((Pedido_Itens.tDespesas.FieldByName('Valor_DespesasOutros').Value / ProcessosDOCQuantidade.Value), -6);
                 If ConfiguracaoRateio_Despesas.Value = 'P' then
                    PedidosItensValor_DespesasOutros.Value := RoundTo(((Pedido_Itens.tDespesas.FieldByName('Valor_DespesasOutros').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value),-6);
              end else begin
                If ConfiguracaoRateio_Despesas.Value = 'V' then begin
                   PedidosItensValor_DespesasOutros.Value := (Pedido_Itens.tDespesas.FieldByName('Valor_DespesasOutros').Value / Pedido_Itens.tFOB.FieldByName('FOB_Total').Value) * AdicoesValor_SemAdValorem.Value;
                End;
                If ConfiguracaoRateio_Despesas.Value = 'Q' then
                   PedidosItensValor_DespesasOutros.Value := RoundTo((Pedido_Itens.tDespesas.FieldByName('Valor_DespesasOutros').Value / ProcessosDOCQuantidade.Value), -6);
                If ConfiguracaoRateio_Despesas.Value = 'P' then
                   PedidosItensValor_DespesasOutros.Value := RoundTo(((Pedido_Itens.tDespesas.FieldByName('Valor_DespesasOutros').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value),-6);
              End;
           End;

           PedidosItensValor_Despesa.Value := PedidosItensValor_Despesa.Value + mDespesaMestre + Pedido_Itens.mDespesaSeletivo;

           // Calculo do rateio do ICMS do Processo.
           If ProcessosDOCValor_ICMS.AsCurrency > 0 then begin
              PedidosItensRateio_ICMSProcesso.Value := (ProcessosDOCValor_ICMS.Value / ProcessosDOCFOB_ME.Value) * AdicoesValor_Unitario.Value;
           End;

           // Calculo do rateio do DUMPING do Processo.
           If (ProcessosDOCValor_Dumping.AsCurrency > 0) and (ProdutosDumping.AsBoolean = true) then begin
              PedidosItensValor_Dumping.Value := (ProcessosDOCValor_Dumping.AsCurrency / Pedido_Itens.tDumping.FieldByName('TotalFOB_Dumping').AsCurrency) * AdicoesValor_Unitario.AsFloat;
           End;

           // Calculando o valor do II
           PedidosItensValor_II.Value := Percentual( (AdicoesValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value), ProdutosAliquota_II.Value );

           //cLucro.Value     := Pedido_Itens.cLucro.Value;
           cLucro.Value     := 0;
           cTotalNota.Value := 0;
           //mIncremento      := 0.01;
           mIncremento      := cPrecisao.Value;

           Pedidos.Edit;

           While Funcoes.Cancelado = False do begin
                 // Caculando o valor do produto sem impostos.
                 If Trim(TipoNotaCalculo_Mercadoria.AsString) <> '' then PedidosItensValor_Unitario.Value := Pedido_Itens.CalculaMacro('Calculo_Mercadoria');

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
                             PedidosItensValor_BCIPI.Value := Pedido_Itens.CalculaMacro('Calculo_BCIPI');
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
                             PedidosItensValor_BCICMSOper.Value := Pedido_Itens.CalculaMacro('Calculo_BCICMS');
                          End;
                       End;
                    End;

                    // Calculando o valor do ICMS Operacional.
                    If Trim(TipoNotaCalculo_VlrICMS.Value) <> '' then begin
                       If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                          PedidosItensValor_ICMSOper.Value := Pedido_Itens.CalculaMacro('Calculo_VlrICMS')
                       End;
                    End;
                 End;

                 If TipoNotaSaida_Entrada.Value = 1 then Begin
                    // Pegando a aliquota e calculando o MVA. (Se o cliente é do "Simples Naciona, verifica redução de alíquota.').
                    mUF := Trim(ClientesEstado.Value)+'_MVA';

                    if not NCMMVA_NaoReducao.AsBoolean then begin
                       If Dados.ClientesSimples_Nacional.AsBoolean = false then begin
                          PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                       end else begin
                          PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
                       end;
                    end;
                    
                    If TipoNotaCalculo_BCMVA.Value <> '' then begin
                       PedidosItensValor_BCMVA.Value := Pedido_Itens.CalculaMacro('Calculo_BCMVA');
                       If TipoNotaCalculo_VlrMVA.Value <> '' then begin
                          If PedidosItensAliquota_MVA.Value <> 0 then
                             PedidosItensValor_MVA.Value := Pedido_Itens.CalculaMacro('Calculo_VlrMVA')
                       End;
                    End;

                    // Pegando a aliquota e calculando o ICMS Substitutivo.
                    mUF                                := Trim(ClientesEstado.Value)+'_ICMS';
                    PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;

                    If PedidosItensAliquota_ICMSSub.Value > 0 then begin
                       If TipoNotaCalculo_BCICMSSub.Value <> '' then begin
                          If PedidosItensAliquota_MVA.Value <> 0 then begin
                             PedidosItensValor_BCICMSSub.Value := Pedido_Itens.CalculaMacro('Calculo_BCICMSSub');
                             If TipoNotaCalculo_VlrICMSSub.Value <> '' then
                                PedidosItensValor_ICMSSub.Value := Pedido_Itens.CalculaMacro('Calculo_VlrICMSSub');
                          End;
                       End;
                    End;
                 End;

                 // Recalcula o valor unitario do produto com base no segundo campo de formula.
                 // Calculo_MercadoriaImp = Valores extras calculados sobre o valor do produto.
                 If TipoNotaCalculo_MercadoriaImp.Value <> '' then PedidosItensValor_Unitario.Value := Pedido_Itens.CalculaMacro('Calculo_MercadoriaImp');

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
                    PedidosItensValor_ICMSReducao.Value := Pedido_Itens.CalculaMacro('Calculo_ReducaoICMS');
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
                    PedidosValor_OutrasDespesas.Value := PedidosValor_OutrasDespesas.Value + Pedido_Itens.CalculaMacro('Calculo_OutrasDespesas');
                 End;

                 cTotalNota.Value := SimpleRoundTo(Pedido_Itens.CalculaMacro('Calculo_TotalPedido'), -4);
                 
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
      End;
      Funcoes.Cancelado := false;
end;

procedure TPedido_ItensQuantidade.cTotalNFLucroChange(Sender: TObject);
begin
     bLucro.Enabled    := cTotalNFLucro.Value > 0;
     bPrejuizo.Enabled := cTotalNFLucro.Value > 0;
end;

procedure TPedido_ItensQuantidade.bLucroClick(Sender: TObject);
begin
      Apura(0);
end;

procedure TPedido_ItensQuantidade.bPrejuizoClick(Sender: TObject);
begin
     Apura(1)
end;

end.
