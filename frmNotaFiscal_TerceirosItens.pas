unit frmNotaFiscal_TerceirosItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Grids, DBGrids,
  RXDBCtrl, FUNCOES, Math, RxDBComb, DateUtils,Buttons, RXSwitch, Mask, MemDS, system.UITypes, ClipBrd;

type
  TDBGridDescendant = class(TDBGrid);
  TNotaFiscal_TerceirosItens = class(TForm)
    GroupBox1: TGroupBox;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    cQuantidade: TDBEdit;
    cValorUnitario: TDBEdit;
    StaticText8: TStaticText;
    cDesconto: TDBEdit;
    StaticText1: TStaticText;
    cLiquido: TDBEdit;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tItem: TMSQuery;
    GroupBox2: TGroupBox;
    StaticText14: TStaticText;
    DBEdit6: TDBEdit;
    StaticText15: TStaticText;
    cValorICMS: TDBEdit;
    StaticText9: TStaticText;
    cAliquotaICMS: TDBEdit;
    StaticText3: TStaticText;
    DBEdit2: TDBEdit;
    StaticText6: TStaticText;
    DBEdit3: TDBEdit;
    GroupBox3: TGroupBox;
    StaticText10: TStaticText;
    DBEdit7: TDBEdit;
    StaticText11: TStaticText;
    DBEdit9: TDBEdit;
    StaticText12: TStaticText;
    DBEdit10: TDBEdit;
    GroupBox4: TGroupBox;
    StaticText17: TStaticText;
    DBEdit13: TDBEdit;
    StaticText18: TStaticText;
    DBEdit14: TDBEdit;
    StaticText19: TStaticText;
    DBEdit15: TDBEdit;
    StaticText20: TStaticText;
    DBEdit16: TDBEdit;
    StaticText21: TStaticText;
    DBEdit17: TDBEdit;
    cProduto: TDBLookupComboBox;
    cCodigo: TDBEdit;
    GradeItens: TDBGrid;
    DBEdit1: TDBEdit;
    StaticText7: TStaticText;
    StaticText13: TStaticText;
    DBEdit4: TDBEdit;
    StaticText16: TStaticText;
    cEnergia: TDBEdit;
    cNatureza: TDBLookupComboBox;
    cCodigoNatureza: TDBEdit;
    lNatureza: TStaticText;
    cCIAP: TGroupBox;
    StaticText23: TStaticText;
    cBaseCIAP: TDBEdit;
    StaticText24: TStaticText;
    DBEdit12: TDBEdit;
    StaticText27: TStaticText;
    DBEdit18: TDBEdit;
    tCIAP: TMSQuery;
    tCIAPRegistro: TIntegerField;
    GroupBox5: TGroupBox;
    StaticText22: TStaticText;
    DBEdit11: TDBEdit;
    StaticText25: TStaticText;
    DBEdit19: TDBEdit;
    StaticText26: TStaticText;
    DBEdit20: TDBEdit;
    StaticText28: TStaticText;
    DBEdit21: TDBEdit;
    bItens: TButton;
    StaticText31: TStaticText;
    cCSTIPI: TDBLookupComboBox;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    cCSTPIS: TDBLookupComboBox;
    StaticText32: TStaticText;
    cCSTCOFINS: TDBLookupComboBox;
    StaticText33: TStaticText;
    cCSTTabB: TDBLookupComboBox;
    cCSTTabA: TDBLookupComboBox;
    StaticText34: TStaticText;
    cTipo: TRxDBComboBox;
    tFaturamento: TMSQuery;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    DBEdit5: TDBEdit;
    StaticText37: TStaticText;
    DBEdit22: TDBEdit;
    StaticText38: TStaticText;
    DBEdit23: TDBEdit;
    StaticText39: TStaticText;
    cProcesso: TDBComboBox;
    StaticText40: TStaticText;
    DBEdit24: TDBEdit;
    StaticText41: TStaticText;
    DBEdit25: TDBEdit;
    StaticText42: TStaticText;
    cValorIPI: TDBEdit;
    StaticText43: TStaticText;
    DBEdit27: TDBEdit;
    StaticText44: TStaticText;
    DBEdit28: TDBEdit;
    tCustoMedio: TMSQuery;
    StaticText45: TStaticText;
    DBEdit29: TDBEdit;
    StaticText46: TStaticText;
    cBCPIS: TDBEdit;
    cBCCOFINS: TDBEdit;
    tTotaliza: TMSQuery;
    tExiste: TMSQuery;
    tSaldo: TMSQuery;
    StaticText47: TStaticText;
    DBEdit8: TDBEdit;
    StaticText48: TStaticText;
    DBEdit26: TDBEdit;
    tMateriaPrima: TMSQuery;
    tValor: TMSQuery;
    tLancamento: TMSQuery;
    StaticText49: TStaticText;
    DBEdit30: TDBEdit;
    bDetalhe: TButton;
    bSeriais: TButton;
    lBaixada: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    StaticText50: TStaticText;
    DBEdit31: TDBEdit;
    TravaInv: TRxSwitch;
    StaticText51: TStaticText;
    DBEdit32: TDBEdit;
    StaticText52: TStaticText;
    bPesqNav: TSpeedButton;
    cNavio: TDBLookupComboBox;
    ttmp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cProdutoExit(Sender: TObject);
    procedure cDescontoExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cValorUnitarioExit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure cValorICMSExit(Sender: TObject);
    procedure cAliquotaICMSExit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure cCodigoNaturezaChange(Sender: TObject);
    procedure cBaseCIAPExit(Sender: TObject);
    procedure lNaturezaClick(Sender: TObject);
    procedure cLiquidoChange(Sender: TObject);
    procedure DBEdit18Change(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure cQuantidadeExit(Sender: TObject);
    procedure bItensClick(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure cBCPISExit(Sender: TObject);
    procedure ChecaConta(ContaD, ContaC: String);
    procedure LancamentoContabil;
    function  MontaHistorico(Historico: integer): String;
    procedure bDetalheClick(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean;var HintInfo: THintInfo);
    procedure TravaInvClick(Sender: TObject);
    procedure bPesqNavClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mRegistro,
    mCodigo: Integer;
    mQuantidade: Real;
    mContaDebito,
    mContaCredito:String;
  end;

var
  NotaFiscal_TerceirosItens: TNotaFiscal_TerceirosItens;

implementation

uses frmDMFiscal, frmDados, frmCadastro_NaturezaOperacao,frmJanela_Processamento, frmNotaFiscal_TerceirosReferenciaItens, frmNotaFiscal_Terceiros,
     frmDMContab, frmMenu_Principal, frmNotaFiscal_TerceirosItensDetalhe, frmPesquisaGerais;

{$R *.dfm}

procedure TNotaFiscal_TerceirosItens.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     Caption := 'Itens da Nota Fiscal Terceiros';
     With dmFiscal, Dados do begin
          NotasTerceirosItens.SQL.Clear;
          NotasTerceirosItens.SQL.Add('SELECT *');
          NotasTerceirosItens.SQL.Add('FROM NotasTerceirosItens');
          NotasTerceirosItens.SQL.Add('WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor) AND (Referencia_Fiscal = :pReferencia)');
          NotasTerceirosItens.SQL.Add('ORDER BY Item');
          NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
          NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
          NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
          NotasTerceirosItens.ParamByName('pReferencia').AsInteger := NotasTerceirosReferencia_Fiscal.AsInteger;
          //NotasTerceirosItens.sql.SaveToFile('c:\temp\notasterceirositens.sql');
          NotasTerceirosItens.Open;
          GroupBox1.Caption := 'Itens da Nota Fiscal de Terceiros ['+InttoStr(NotasterceirosItens.RecordCount)+']';

          // Desabilita o botão de "Edição" quando não há nenhum item cadastrado.
          Navega.Controls[6].Enabled := NotasTerceirosItens.RecordCount > 0;

          tItem.SQL.Clear;
          tItem.SQL.Add('SELECT COUNT(Item) AS Item FROM NotasTerceirosItens WHERE (Fornecedor = :pFornecedor) AND (Data_Emissao = :pData) AND (Nota = :pNota)');
          tItem.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
          tItem.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
          tItem.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;

          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos WHERE(ISNULL(Desativado,0) <> 1) ORDER BY Descricao_Reduzida');
          Produtos.Open;

          NCM.SQL.Clear;
          NCM.SQL.Add('SELECT * FROM NCM');
          NCM.Open;

          CSTTabelaA.SQL.Clear;
          CSTTabelaA.SQL.Add('SELECT * FROM CSTTabelaA');
          CSTTabelaA.Open;

          CSTTabelaB.SQL.Clear;
          CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB');
          CSTTabelaB.Open;

          CSTIPI.SQL.Clear;
          CSTIPI.SQL.Add('SELECT * FROM CSTIPI WHERE(Codigo < ''50'') OR (Codigo = ''A0'') ORDER BY Codigo');
          CSTIPI.Open;

          CSTPIS.SQL.Clear;
          CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo > 49) ORDER BY Codigo');
          CSTPIS.Open;

          CSTCOFINS.SQL.Clear;
          CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo > 49) ORDER BY Codigo');
          CSTCOFINS.Open;
          
          with ControleNavios do begin 
               sql.Clear;
               sql.Add('select *');
               sql.Add('from  ControleNavios');
               sql.Add('where  Status <> ''ENCERRADO''');
               sql.Add('order  by Navio');
               open;
          end;

          cAliquotaICMS.Enabled := NotasTerceirosAliquota_ICMSOper.AsFloat = 0;

          ProcessosDOC.First;
          While not ProcessosDoc.Eof do begin
                cProcesso.Items.Add(ProcessosDOCProcesso.AsString);
                ProcessosDOC.Next;
          End;
          ProcessosDOC.First;

          NotaFiscal_Terceiros.VerBaixa;
          Navega.Visible   := NotaFiscal_Terceiros.tExiste.RecordCount = 0;
          lBaixada.Visible := NotaFiscal_Terceiros.tExiste.RecordCount > 0;
          bItens.Visible   := NotaFiscal_Terceiros.tExiste.RecordCount = 0;
     End;
     Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_TerceirosItens.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      With dmFiscal, Dados do begin
           mCodigo := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
           
           If (Button = nbInsert) and (ReferenciasFiscaisNota_Referencia.AsBoolean) then begin
              MessageDlg('Para esta referência fiscal, só podem ser adicionados itens pela "Nota Fiscal de Referência".', mtError, [mbOK], 0);
              NotasTerceirosItens.Cancel;
              Navega.Controls[6].Enabled := (NotasTerceirosItens.RecordCount > 0) and (NotasTerceirosItens.State <> dsEdit) and (NotasTerceirosItens.State <> dsInsert);
              Abort;
           End;
      End;
      
      Screen.Cursor := crSQLWait;

      If (Button = nbEdit) or (Button = nbInsert) or (Button = nbDelete) then begin
         Navega.Tag := 1;
      End;

      If (Button = nbEdit) or (Button = nbInsert) then begin
         GradeItens.Enabled := false;
         With dmFiscal, Dados do begin
              NotasTerceirosItensNatureza_Codigo.Value := NotasTerceirosNatureza_Codigo.Value;
              If Button = nbInsert then begin
                 NotasTerceirosItensNota.Value              := NotasTerceirosNota.Value;
                 NotasTerceirosItensData_Emissao.Value      := NotasTerceirosData_Emissao.Value;
                 NotasTerceirosItensData_Entrada.Value      := NotasTerceirosData_Entrada.Value;
                 NotasTerceirosItensFornecedor.Value        := NotasTerceirosFornecedor.Value;
                 NotasTerceirosItensAliquota_ICMSOper.Value := NotasTerceirosAliquota_ICMSOper.Value;
                 NotasTerceirosItensAliquota_ICMSSub.Value  := NotasTerceirosAliquota_ICMSSub.Value;
                 NotasTerceirosItensAdicao.Value            := 1;
                 NotasTerceirosItensCST_IPI.Value           := ReferenciasFiscaisCSTIPI.AsString;
                 NotasTerceirosItensCST_PIS.Value           := ReferenciasFiscaisCSTPIS.AsString;
                 NotasTerceirosItensCST_COFINS.Value        := ReferenciasFiscaisCSTCOFINS.AsString;
                 NotasTerceirosItensReferencia_Fiscal.Value := NotasTerceirosReferencia_Fiscal.Value;
              End;
         End;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         GroupBox1.Enabled := True;
         If Button = nbEdit then begin
            mQuantidade := dmFiscal.NotasTerceirosItensQuantidade.Value;
            cCodigo.SetFocus;
         End else begin
            cCodigoNatureza.SetFocus;
         End;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         GroupBox1.Enabled  := true;
         GradeItens.Enabled := true;
      End;

      Navega.Controls[6].Enabled := (dmFiscal.NotasTerceirosItens.RecordCount > 0) and (dmFiscal.NotasTerceirosItens.State <> dsEdit) and (dmFiscal.NotasTerceirosItens.State <> dsInsert);

      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_TerceirosItens.cProdutoExit(Sender: TObject);
Var
    mUF : String;
begin
      With Dados, dmFiscal do begin
           If (NotasTerceirosItens.State = dsEdit) or (NotasTerceirosItens.State = dsInsert) then begin
              If NCM.Locate('NCM', ProdutosNCM.Value, [loCaseInsensitive]) then begin
                 mUF                                           := Trim(FornecedoresEstado.Value)+'_ICMS';
                 NotasTerceirosItensDescricao_Mercadoria.Value := ProdutosDescricao.Value;
                 NotasTerceirosItensPeso_Liquido.Value         := ProdutosPeso_Liquido.Value;
                 NotasTerceirosItensPeso_Bruto.Value           := ProdutosPeso_Bruto.Value;
                 NotasTerceirosItensAliquota_IPI.Value         := NCMIPI.Value;
                 NotasTerceirosItensNCM.Value                  := NCMNCM.Value;
              end else begin
                 NotasTerceirosItensDescricao_Mercadoria.Value := ProdutosDescricao.Value;
                 NotasTerceirosItensNCM.Value                  := '00000000';
              End;

              NotasTerceirosItensValor_PIS.Value       := 0;
              NotasTerceirosItensValor_COFINS.Value    := 0;
              NotasTerceirosItensAliquota_PIS.Value    := 0;
              NotasTerceirosItensAliquota_COFINS.Value := 0;
              
              If ReferenciasFiscaisApuracao_PISCOFINS.AsBoolean then begin
                 NotasTerceirosItensValor_PIS.Value           := Percentual(NotasTerceirosItensValor_BCPIS.Value   , NotasTerceirosItensAliquota_PIS.AsFloat);
                 NotasTerceirosItensValor_COFINS.Value        := Percentual(NotasTerceirosItensValor_BCCOFINS.Value, NotasTerceirosItensAliquota_COFINS.AsFloat);
                 NotasTerceirosItensAliquota_PISOrig.Value    := ProdutosAliquota_PIS.Value;
                 NotasTerceirosItensAliquota_COFINSOrig.Value := ProdutosAliquota_COFINS.Value;
                 NotasTerceirosItensValor_PISOrig.Value       := Percentual(NotasTerceirosItensValor_BCPIS.Value   , NotasTerceirosItensAliquota_PISOrig.AsFloat);
                 NotasTerceirosItensValor_COFINSOrig.Value    := Percentual(NotasTerceirosItensValor_BCCOFINS.Value, NotasTerceirosItensAliquota_COFINSOrig.AsFloat);
                 NotasTerceirosItensAliquota_PIS.Value        := ProdutosAliquota_PIS.Value;
                 NotasTerceirosItensAliquota_COFINS.Value     := ProdutosAliquota_COFINS.Value;
              End;

              // Verifica se é uma nota de devolução pra pegas as alíquotas de ICMS.
              if ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 2 then begin
                 NotasTerceirosItensAliquota_PISOrig.Value    := ProdutosPIS_NotaSaida.Value;
                 NotasTerceirosItensAliquota_COFINSOrig.Value := ProdutosCOFINS_NotaSaida.Value;
                 NotasTerceirosItensAliquota_PIS.Value        := ProdutosPIS_NotaSaida.Value;
                 NotasTerceirosItensAliquota_COFINS.Value     := ProdutosCOFINS_NotaSaida.Value;
              end;
           End;

           // Habilita botões para o Lote/ Detalhe.
           ProdutosDetalhe.SQL.Clear;
           ProdutosDetalhe.SQL.Add('SELECT *');
           ProdutosDetalhe.SQL.Add('FROM   ProdutosDetalhe');
           ProdutosDetalhe.SQL.Add('WHERE  (Produto_Codigo = :pProduto)');
           ProdutosDetalhe.ParamByName('pProduto').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
           ProdutosDetalhe.Open;

           bDetalhe.Enabled    := (ProdutosDetalhe.RecordCount > 0) or (ProdutosLote_Obrigatorio.AsBoolean);
           cQuantidade.Enabled := not bDetalhe.Enabled;

           ProdutosSeriais.SQL.Clear;
           ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE(Produto_Codigo = :pCodigo) AND (ISNULL(Pedido,0) = 0) AND (ISNULL(Nota_Saida,0) = 0) ORDER BY Cor, Numero');
           ProdutosSeriais.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
           ProdutosSeriais.Open;

           bSeriais.Enabled := ProdutosSeriais.RecordCount > 0;

           If ProdutosLote_Obrigatorio.AsBoolean then begin
              cQuantidade.Enabled := not ProdutosLote_Obrigatorio.AsBoolean;
           end;
      End;
end;

procedure TNotaFiscal_TerceirosItens.cDescontoExit(Sender: TObject);
begin
     If (dmFIscal.NotasTerceirosItens.State = dsEdit) or (dmFIscal.NotasTerceirosItens.State = dsInsert) then begin
         With dmFiscal do Begin
//              NotasTerceirosItensValor_Liquido.Value := (NotasTerceirosItensValor_Unitario.Value * NotasTerceirosItensQuantidade.Value) - NotasTerceirosItensValor_Desconto.Value;
              NotasTerceirosItensValor_Liquido.Value := ((NotasTerceirosItensValor_Unitario.Value * NotasTerceirosItensQuantidade.Value) - NotasTerceirosItensValor_Desconto.Value);
         End;
     End;
end;

procedure TNotaFiscal_TerceirosItens.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
Var
  mParcela
 ,mOpcao: Integer;
  mDisp: Real;  
begin
      Navega.SetFocus;
      ActiveControl := nil;

      With dmFiscal, Dados do Begin
           // Verifica se o período fiscal esta bloqueado.
           if (Button = nbInsert) or (Button = nbEdit) or (Button = nbDelete) then begin
              tExiste.SQL.Clear;
              tExiste.SQL.Add('SELECT COUNT(*) AS Qtde FROM FechamentoFiscal WHERE Ano = :pAno AND Mes = :pMes AND Fechado = 1');
              tExiste.ParamByName('pAno').AsInteger := YearOf(NotasTerceirosData_Entrada.Value);
              tExiste.ParamByName('pMes').AsInteger := MonthOf(NotasTerceirosData_Entrada.Value);
              tExiste.Open;
              if tExiste.FieldByName('Qtde').AsInteger > 0 then begin
                 MessageDlg('Não podem ser "Adicionados/Alterados/Excluídos itens desta nota fiscal!'+#13+#13+'Nota Fiscal esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                 Abort;
              end;
           end;
           If Button = nbPost then begin
              // Verifica todos os campos obrigatórios.
              If not Produtos.Locate('Codigo', NotasTerceirosItensCodigo_Mercadoria.AsInteger, [loCaseInsensitive]) then begin
                 MessageDlg('Código de produto não cadastrado!', mtError, [mbOK], 0);
                 cCodigo.SetFocus;
                 Abort;
              End;
              If NotasTerceirosItensCodigo_Mercadoria.Value <= 0 then begin
                 MessageDlg('Produto inválido!'+#13+#13+'É necessário informar produto.', mtError, [mbOK], 0);
                 cCodigo.SetFocus;
                 Abort;
              End;
              If NotasTerceirosItensQuantidade.Value <= 0 then begin
                 MessageDlg('Quantidade inválida!'+#13+#13+'É necessário informar a quantidade do item.', mtError, [mbOK], 0);
                 cQuantidade.SetFocus;
                 Abort;
              End;
              If NotasTerceirosItensValor_Unitario.Value <= 0 then begin
                 MessageDlg('Valor unitário inválido!'+#13+#13+'É necessário informar o valor unitário do item.', mtError, [mbOK], 0);
                 cValorUnitario.SetFocus;
                 Abort;
              End;
              If Trim(NotasTerceirosItensCodigoTrib_TabA.AsString) = '' then begin
                 MessageDlg('Código de CST de Origem do ICMS inválido!', mtError, [mbOK], 0);
                 cCSTTabA.SetFocus;
                 Abort;
              End;
              If Trim(NotasTerceirosItensCodigoTrib_TabB.AsString) = '' then begin
                 MessageDlg('Código de CST de tributação do ICMS inválido!', mtError, [mbOK], 0);
                 cCSTTabB.SetFocus;
                 Abort;
              End;
              If Trim(NotasTerceirosItensCST_IPI.AsString) = '' then begin
                 MessageDlg('Código de CST do IPI inválido!', mtError, [mbOK], 0);
                 cCSTIPI.SetFocus;
                 Abort;
              End;
              If Trim(NotasTerceirosItensCST_PIS.AsString) = '' then begin
                 MessageDlg('Código de CST do PIS inválido!', mtError, [mbOK], 0);
                 cCSTPIS.SetFocus;
                 Abort;
              End;
              If Trim(NotasTerceirosItensCST_COFINS.AsString) = '' then begin
                 MessageDlg('Código de CST da COFINS inválido!', mtError, [mbOK], 0);
                 cCSTCOFINS.SetFocus;
                 Abort;
              End;
              If NotasTerceirosItensCST_COFINS.AsString <> NotasTerceirosItensCST_PIS.AsString then begin
                 MessageDlg('CST´s de PIS e COFINS devem ser iguais.', mtError, [mbOK], 0);
                 cCSTPIS.SetFocus;
                 Abort;
              End;
              If (NotasTerceirosItensConsumo_Energia.Value = 0) and ((NotasTerceirosItensNatureza_Codigo.Value = '1253') or (NotasTerceirosItensNatureza_Codigo.Value = '2253')) then begin
                 MessageDlg('Para CFOP igual a "1.253" ou "2.253" energia elétrica, é obrigatório informar o campo "Consumo de energia".', mtError, [mbOK], 0);
                 cEnergia.SetFocus;
                 Abort;
              End;
              If (NotasTerceirosItensAliquota_PIS.Value > 0) and (NotasTerceirosItensValor_PIS.Value = 0) then begin
                 MessageDlg('Valor do PIS não informado.', mtError, [mbOK], 0);
                 cBCPIS.SetFocus;
                 Abort;
              End;
              If (NotasTerceirosItensAliquota_COFINS.Value > 0) and (NotasTerceirosItensValor_PIS.Value = 0) then begin
                 MessageDlg('Valor do PIS não informado.', mtError, [mbOK], 0);
                 cBCCOFINS.SetFocus;
                 Abort;
              End;
              If (NotasTerceirosItensAliquota_PIS.Value = 0) and (NotasTerceirosItensValor_PIS.Value > 0) then begin
                 MessageDlg('Alíquota do PIS não informada.', mtError, [mbOK], 0);
                 cBCPIS.SetFocus;
                 Abort;
              End;
              If (NotasTerceirosItensAliquota_COFINS.Value = 0) and (NotasTerceirosItensValor_PIS.Value > 0) then begin
                 MessageDlg('Alíquota da COFINS não informada.', mtError, [mbOK], 0);
                 cBCCOFINS.SetFocus;
                 Abort;
              End;
              If (NotasTerceirosItensValor_ICMSOper.Value + NotasTerceirosItensValor_IsentasICMS.Value + NotasTerceirosItensValor_OutrasICMS.Value) = 0 then begin
                 MessageDlg('Informe o valor do "ICMS" ou o valor de "ISENTAS ICMS" ou o valor "OUTRAS ICMS".', mtError, [mbOK], 0);
                 cValorICMS.SetFocus;
                 Abort;
              End;
              If (NotasTerceirosItensValor_IPI.Value + NotasTerceirosItensValor_IsentasIPI.Value + NotasTerceirosItensValor_OutrasIPI.Value) = 0 then begin
                 MessageDlg('Informe o valor do "IPI" ou o valor de "ISENTAS IPI" ou o valor "OUTRAS IPI".', mtError, [mbOK], 0);
                 cValorIPI.SetFocus;
                 Abort;
              End;
              // Caso a capa da nota esteja sem alíquota do ICMS salva "Se informado no item".
              If (NotasTerceirosItensAliquota_ICMSOper.AsFloat > 0) and (NotasTerceirosAliquota_ICMSOper.AsFloat = 0) then begin
                 NotasTerceiros.Edit;
                                NotasTerceirosAliquota_ICMSOper.Value := NotasTerceirosItensAliquota_ICMSOper.AsFloat;
                 NotasTerceiros.Post;
              End;
              If NotasTerceirosItens.State = dsInsert then begin
                 tItem.Open;
                 NotasTerceirosItensItem.Value := tItem.FieldByName('Item').Value + 1;
              End;
              NotasTerceirosItensUnidade_Medida.Value := ProdutosUnidade.Value;
              NotasTerceirosItensNCM.Value            := ProdutosNCM.Value;
              NotasTerceirosItensDisponivel.Value     := NotasTerceirosItensQuantidade.Value;

              If Trim(NotasTerceirosItensProcesso.AsString) = '' then  begin
                 NotasTerceirosItensProcesso.Value := NotasTerceirosProcesso.Value;
              End;

              NotasTerceirosItensTipo.Value                 := NotasTerceirosTipo.Value;
              NotasTerceirosItensMovimenta_Estoque.Value    := ReferenciasFiscais.FieldByName('Movimenta_Estoque').AsBoolean;
              NotasTerceirosItensMovimenta_Inventario.Value := ReferenciasFiscais.FieldByName('Movimenta_Inventario').AsBoolean;
              NotasTerceirosItensInventario_Terceiros.Value := ReferenciasFiscais.FieldByName('Inventario_Terceiros').AsBoolean;
              NotasTerceirosItensApuracao_PISCOFINS.Value   := Natureza.FieldByName('Apuracao_PISCOFINS').AsBoolean;

              If NotasTerceirosItensValor_UnitarioOrig.AsFloat = 0 then begin
                 NotasTerceirosItensValor_UnitarioOrig.Value := NotasTerceirosItensValor_Unitario.Value;
              End;
              NotasTerceirosItensValor_LiquidoOrig.Value := NotasTerceirosItensValor_UnitarioOrig.Value * NotasTerceirosItensQuantidade.Value;

              // Executa o cálculo do valor do inventario.
              NotasTerceirosItensValor_ICMSOperOrig.Value        := NotasTerceirosItensValor_ICMSOper.Value;
              NotasTerceirosItensValor_ICMSSubOrig.Value         := NotasTerceirosItensValor_ICMSSub.Value;
              dmfiscal.NotasTerceirosItensValor_PISOrig.Value    := NotasTerceirosItensValor_PIS.Value;
              dmfiscal.NotasTerceirosItensValor_COFINSOrig.Value := NotasTerceirosItensValor_COFINS.Value;
              
              // Executa o cálculo do valor do inventario ou busca o valor da ficha de estoque.
              if ReferenciasFiscais.FieldByName('Movimenta_Inventario').AsBoolean then begin
                 // Verifica se o campo do valor do inventário esta desbloqueado para recalculo ou não.
                 if TravaInv.StateOn then begin
                    if not ReferenciasFiscais.FieldByName('Inventario_Estoque').AsBoolean then begin
                       NotasTerceirosItensValor_Inventario.Value := CalculaInventario(ReferenciasFiscaisCodigo.AsInteger);
                    end else begin
                       // Pegando o valor de inventario da ficha de estoque.
                       tValor.SQL.Clear;
                       tValor.SQL.Add('SELECT ISNULL(Unitario_Saida, 0) AS Unitario_Saida');
                       tValor.SQL.Add('FROM   FichaEstoque');
                       tValor.SQL.Add('WHERE  Nota = :pNota AND Data = :pData AND Codigo = :pCodigo');
                       tValor.ParamByName('pNota').AsInteger   := NotasTerceirosItensNota_Referencia.AsInteger;
                       tValor.ParamByName('pData').AsDate      := NotasTerceirosItensData_Referencia.AsDateTime;
                       tValor.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                       tValor.Open;

                       if tValor.RecordCount > 0 then begin
                          NotasTerceirosItensValor_Inventario.Value := tValor.FieldByName('Unitario_Saida').AsFloat;
                       end;
                    end
                 end;
              end;
              
              // Pega o número da "DI" e o número da "Adição".
              Screen.Cursor := crSQLWait;
              If ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) = true then begin
                 Adicoes.SQL.Clear;
                 Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI = :pDI)');
                 Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
                 Adicoes.Open;

                 NotasTerceirosItensDI.Value                 := ProcessosDOCNumero_Declaracao.Value;
                 NotasTerceirosItensAdicao.Value             := AdicoesAdicao.Value;
                 NotasTerceirosItensRegistro_Adicao.Value    := AdicoesRegistro.Value;
                 NotasTerceirosItensSequencia_SISCOMEX.Value := AdicoesSequencia_SISCOMEX.Value;
              End;

              tItem.Close;

              // Criando as 48 parcelas do CIAP.
              If ConfiguracaoValor_CIAP.AsCurrency > 0 then begin
                 If (NotasTerceirosItens.State = dsInsert) and (NaturezaImobilizado.AsBoolean = True) and (NotasTerceirosItensValor_Liquido.Value > ConfiguracaoValor_CIAP.Value) then begin
                    // Pegando o número do último registro gerado.
                    tCIAP.Open;
                    mRegistro := tCIAPRegistro.Value + 1;
                    tCIAP.Close;

                    // Abrindo a tabela para adicionar as 48 parcelas.
                    CIAP.SQL.Clear;
                    CIAP.SQL.Add('SELECT * FROM CIAP WHERE (Registro > :pRegistro)');
                    CIAP.ParamByName('pRegistro').AsInteger := mRegistro;
                    CIAP.Open;

                    Janela_Processamento := TJanela_Processamento.Create(Self);
                    Janela_Processamento.Progresso.Max      := 48;
                    Janela_Processamento.Progresso.Position := 0;
                    Janela_Processamento.lProcesso.Caption  := 'Gerando as 48 parcelas do CIAP...';
                    Janela_Processamento.Show;

                    For mParcela := 1 to 48 do begin
                        CIAP.Append;
                             CIAPRegistro.Value          := mRegistro;
                             CIAPCodigo_Mercadoria.Value := NotasTerceirosItensCodigo_Mercadoria.Value;
                             CIAPNota.Value              := NotasTerceirosNota.Value;
                             CIAPData_Nota.Value         := NotasTerceirosData_Entrada.Value;
                             CIAPFornecedor.Value        := NotasTerceirosFornecedor.Value;
                             CIAPParcela.Value           := mParcela;
                             CIAPData_Aquisicao.Value    := NotasTerceirosData_Entrada.Value;
                             Inc(mRegistro);
                        CIAP.Post;
                        Janela_Processamento.Progresso.Position := mParcela;
                        Application.ProcessMessages;
                    End;
                    Janela_Processamento.Close;
                 End;
              End;

              // Cadastrando o item no Imobilizado - "...Esta rotina substitui a rotina acima que sera eliminada assim que o livro de apuração estiver pronto."
              If (NaturezaImobilizado.AsBoolean = True) and (NotasTerceirosItensValor_Liquido.Value > ConfiguracaoValor_CIAP.Value) then begin
                 Imobilizado.SQL.Clear;
                 Imobilizado.SQL.Add('SELECT * FROM Imobilizado WHERE(Codigo_Sistema = :pCodigo) AND (Fornecedor = :pFornecedor) AND (Nota = :pNota)');
                 Imobilizado.ParamByName('pCodigo').AsInteger     := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                 Imobilizado.ParamByName('pFornecedor').AsInteger := NotasTerceirosItensFornecedor.AsInteger;
                 Imobilizado.ParamByName('pNota').AsInteger       := NotasTerceirosItensNota.AsInteger;
                 Imobilizado.Open;

                 // Verifica se houve faturamento no mês para atualiza o campo "AnoMes_Faturamento" e o campo "Apropriacao".
                 tFaturamento.SQL.Clear;
                 tFaturamento.SQL.Add('SELECT COUNT(*) AS Qtde FROM NotasFiscais WHERE(YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMes) AND (Saida_Entrada = 1) AND (Valor_ICMS > 0) AND (Cancelada <> 1)');
                 tFaturamento.ParamByName('pAno').AsInteger := YearOf(NotasTerceirosItensData_Entrada.AsDateTime);
                 tFaturamento.ParamByName('pMes').AsInteger := MonthOf(NotasTerceirosItensData_Entrada.AsDateTime);
                 tFaturamento.Open;

                 If Imobilizado.RecordCount = 0 then
                    Imobilizado.Append
                 else
                    Imobilizado.Edit;

                 ImobilizadoData_Nota.Value         := NotasTerceirosItensData_Entrada.Value;
                 ImobilizadoCodigo_Sistema.Value    := NotasTerceirosItensCodigo_Mercadoria.Value;
                 ImobilizadoFornecedor.Value        := NotasTerceirosItensFornecedor.Value;
                 ImobilizadoNota.Value              := NotasTerceirosItensNota.Value;
                 ImobilizadoValor_Aquisicao.Value   := NotasTerceirosItensValor_Liquido.Value;
                 ImobilizadoValor_Depreciacao.Value := (NotasTerceirosItensValor_Liquido.Value - NotasTerceirosItensValor_ICMSOper.Value);
                 ImobilizadoICMS_Proprio.Value      := NotasTerceirosItensCIAP_ValorICMS.Value;
                 ImobilizadoICMS_ST.Value           := NotasTerceirosItensValor_ICMSSub.Value;
                 ImobilizadoICMS_Frete.Value        := 0;
                 ImobilizadoICMS_Dif_Aliquota.Value := 0;
                 ImobilizadoValor_Credito.Value     := (NotasTerceirosItensCIAP_ValorICMS.Value + NotasTerceirosItensValor_ICMSSub.Value);
                 ImobilizadoApropriadas.Value       := 0;

                 If tFaturamento.FieldByName('Qtde').AsInteger > 0 then begin
                    ImobilizadoAnoMes_Faturamento.Value := PoeZero(4, YearOf( NotasTerceirosItensData_Entrada.AsDateTime)) + PoeZero(2, MonthOf( NotasTerceirosItensData_Entrada.AsDateTime));
                    ImobilizadoApropriadas.Value        := 1;
                 End;

                 ImobilizadoTipo_Item.Value    := NotasTerceirosItensCIAP_TipoItem.Value;
                 ImobilizadoVida_Util.Value    := 0;
                 ImobilizadoParcelas.Value     := ConfiguracaoParcelas_CIAP.Value;
                 ImobilizadoOrdem_Item.Value   := NotasTerceirosItensItem.Value;
                 ImobilizadoCentro_Custo.Value := NotasTerceirosCentro_Custo.Value;

                 If NotasTerceirosItensCIAP_TipoItem.AsInteger = 1 then ImobilizadoTipo_Movimentacao.Value := 'IM';
                 If NotasTerceirosItensCIAP_TipoItem.AsInteger = 2 then ImobilizadoTipo_Movimentacao.Value := 'IA';

                 ImobilizadoSerie.Value     := NotasTerceirosSerie.Value;
                 ImobilizadoModelo.Value    := NotasTerceirosModelo.Value;
                 ImobilizadoCodigo.Value    := Trim(NotasTerceirosItensCodigo_Mercadoria.AsString);
                 ImobilizadoDescricao.Value := RemoveCaracter('<{'+Trim(NotasTerceirosItensCodigo_Mercadoria.AsString)+'}>', '', Trim(NotasTerceirosItensDescricao_Mercadoria.AsString));
                 Imobilizado.Post;
              End;

              If (NotasTerceirosItens.State = dsEdit) and (NaturezaImobilizado.Value = True) then begin
                 // Verificando se foi utilizado alguma parcela.
                 CIAP.Close;
                 CIAP.SQL.Clear;
                 CIAP.SQL.Add('SELECT * FROM CIAP');
                 CIAP.SQL.Add('WHERE (Codigo_Mercadoria = :pMercadoria) AND (Nota = :pNota) AND (Utilizacao IS NOT NULL)');
                 CIAP.ParamByName('pMercadoria').AsInteger := NotasTerceirosItensCodigo_Mercadoria.Value;
                 CIAP.ParamByName('pNota').AsInteger       := NotasTerceirosItensNota.Value;
                 CIAP.Open;
                 If CIAP.RecordCount <> 0 then begin
                    mOpcao := MessageDlg('Atenção!'+#13+'Você esta alterando um item que ja teve '+InttoStr(CIAP.RecordCount)+' parcela(s) utilizada(s) no CIAP.'+#13+'Alterar também as parcelas utilizadas?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
                    If mOpcao = 6 then begin  // Opção 6 = "SIM'
                       CIAP.SQL.Clear;
                       CIAP.SQL.Add('SELECT * FROM CIAP WHERE (Codigo_Mercadoria = :pMercadoria) AND (Nota = :pNota)' );
                    End;
                    If mOpcao = 7 then begin  // Opção 7 = "NÃO'
                       CIAP.SQL.Clear;
                       CIAP.SQL.Add('SELECT * FROM CIAP WHERE (Codigo_Mercadoria = :pMercadoria) AND (Nota = :pNota) AND (Utilizacao IS NULL)' );
                    End;
                    If mOpcao = 2 then begin  // Opção 2 = "CANCELAR'
                       Navega.BtnClick(nbCancel);
                       Abort;
                    End;
                 End else begin
                    CIAP.SQL.Clear;
                    CIAP.SQL.Add('SELECT * FROM CIAP WHERE (Codigo_Mercadoria = :pMercadoria) AND (Nota = :pNota)' );
                 End;
                 CIAP.ParamByName('pMercadoria').AsInteger := NotasTerceirosItensCodigo_Mercadoria.Value;
                 CIAP.ParamByName('pNota').AsInteger       := NotasTerceirosItensNota.Value;
                 CIAP.Open;

                 Janela_Processamento := TJanela_Processamento.Create(Self);
                 Janela_Processamento.Progresso.Max      := CIAP.RecordCount;
                 Janela_Processamento.Progresso.Position := 0;
                 Janela_Processamento.lProcesso.Caption  := 'Modificando as '+InttoStr(CIAP.RecordCount)+' parcelas do CIAP...';
                 Janela_Processamento.Show;
                 Janela_Processamento.Close;
              End;

              // Atualiza o cadastro do produto com o ultimo valor de entrada e com o custo médio.
              tCustoMedio.SQL.Clear;
              tCustoMedio.SQL.Add('SELECT ISNULL(ROUND((SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1) )');
              tCustoMedio.SQL.Add('             /(SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1) ), 4,0),0) AS Valor');
              tCustoMedio.SQL.Add('FROM Produtos');
              tCustoMedio.SQL.Add('WHERE (Codigo = :pCodigo)');
              tCustoMedio.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
              tCustoMedio.Open;

              If (ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 0) or (ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 3) then begin
                 Produtos.Edit;
                          ProdutosValor_Entrada.Value    := NotasTerceirosItensValor_UnitarioOrig.Value;
                          ProdutosValor_CustoMedio.Value := tCustoMedio.FieldByName('Valor').Value;

                          // Reprocessa o valor do estoque minímo do produto por percentual caso esteja informado o percentual minímo no cadastro.
                          If ProdutosEstoque_MinimoPerc.AsFloat > 0 then begin
                             ProdutosEstoque_Minimo.Value := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger)+NotasTerceirosItensQuantidade.AsFloat-mQuantidade, ProdutosEstoque_MinimoPerc.AsFloat);
                          End;
                 Produtos.Post;
              End;
              
              // Ajusta o produto nos lotes caso haja alteração no item da nota fiscal.
              if NotasTerceirosItensCodigo_Mercadoria.AsInteger <> mCodigo then begin
                 ProdutosDetalhe.SQL.Clear;
                 ProdutosDetalhe.SQL.Add('SELECT * FROM ProdutosDetalhe WHERE Produto_Codigo = :pCodigo AND Nota_Entrada = :pNota AND Data_Entrada = :pData AND Item = :pItem');
                 ProdutosDetalhe.ParamByName('pCodigo').AsInteger := mCodigo;
                 ProdutosDetalhe.ParamByName('pNota').AsInteger   := NotasTerceirosItensNota.AsInteger;
                 ProdutosDetalhe.ParamByName('pData').AsDate      := NotasTerceirosItensData_Emissao.Value;
                 ProdutosDetalhe.ParamByName('pItem').AsInteger   := NotasTerceirosItensItem.Value;
                 ProdutosDetalhe.Open;
                 if ProdutosDetalhe.RecordCount > 0 then begin
                    ProdutosDetalhe.Edit;
                                    ProdutosDetalheProduto_Codigo.Value     := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                                    ProdutosDetalheQuantidade_Entrada.Value := NotasTerceirosItensQuantidade.AsFloat;
                                    ProdutosDetalheProcesso.Value           := NotasTerceirosItensProcesso.AsString;
                    ProdutosDetalhe.Post;
                 end;
              end;
              
              // Adiciona o item na tabela "NotasItensNavios.
              if trim(cNavio.Text) <> '' then begin
                 with NotasItensNavios do begin
                      sql.clear;
                      sql.add('Delete from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Codigo_Mercadoria = :pCodigo and Emissor = ''T'' ');
                      ParamByName('pNota').AsInteger   := NotasTerceirosItensNota.AsInteger;
                      ParamByName('pData').value       := NotasTerceirosItensData_Emissao.value;
                      ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                      execute;
                      sql.clear;
                      sql.add('select * from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Codigo_Mercadoria = :pCodigo and Emissor = ''T'' ');
                      ParamByName('pNota').AsInteger   := NotasTerceirosItensNota.AsInteger;
                      ParamByName('pData').value       := NotasTerceirosItensData_Emissao.value;
                      ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                      open;
                      with tItem do begin
                           sql.clear;
                           sql.add('select isnull(max(Registro), 0)+1 as registro from NotasItensNavios');
                           open;
                      end;
                      Append;
                           NotasItensNaviosRegistro.Value          := tItem.FieldByName('Registro').AsInteger;
                           NotasItensNaviosNota.Value              := NotasTerceirosItensNota.AsInteger;
                           NotasItensNaviosData_Emissao.Value      := NotasTerceirosItensData_Emissao.Value;
                           NotasItensNaviosCodigo_Mercadoria.Value := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                           NotasItensNaviosItem.Value              := NotasTerceirosItensItem.AsInteger; 
                           NotasItensNaviosNavio.Value             := NotasTerceirosItensNavio.AsInteger; 
                           NotasItensNaviosQuantidade.Value        := NotasTerceirosItensQuantidade.AsFloat;
                           NotasItensNaviosSaida_Entrada.Value     := 0;
                           NotasItensNaviosEmissor.Value           := 'T';
                      Post;
                 end;
              end;
           End;

           If Button = nbDelete then begin
              if Messagedlg('Deseja realmente remover este item da nota fiscal?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
                 Abort
              end;
              // Verifica se houve movimentação dos produtos com data superior a data de entrada da nota fiscal (NF DE SAIDA).
              if ReferenciasFiscais.FieldByName('Movimenta_Estoque').AsBoolean then begin
                 if (EstoqueProduto(NotasTerceirosItens.FieldByName('Codigo_Mercadoria').AsInteger) - NotasTerceirosItens.FieldByName('Quantidade').AsFloat) < 0 then begin
                    MessageDlg('Item não pode ser "Excluído" !'+#13+#13+'Pois já foi movimentado e ficara com estoque negativo.', mtError, [mbOK], 0);
                    Abort;
                 end;
              end;

              // Se existe a nota de referencia retorna o item para o estoque disponivel.
              If NotasTerceirosItensNota_Referencia.AsInteger > 0 then begin
                 with tTmp do begin
                      sql.clear;
                      sql.add('select Disponivel from NotasItens where Nota = :pNota and Data = :pData and Codigo_Mercadoria = :pProduto');
                      parambyname('pNota').asinteger    := NotasTerceirosItensNota_Referencia.asinteger;
                      parambyname('pData').asdate       := NotasTerceirosItensData_Referencia.asdatetime;
                      parambyname('pProduto').asinteger := NotasTerceirosItensCodigo_Mercadoria.asinteger;
                      open;
                      mDisp := fieldbyname('Disponivel').asfloat + NotasTerceirosItensQuantidade.AsFloat;
                      sql.clear;
                      sql.add('update NotasItens set Disponivel = :pDisp where Nota = :pNota and Data = :pData and Codigo_Mercadoria = :pProduto');
                      parambyname('pNota').asinteger    := NotasTerceirosItensNota_Referencia.asinteger;
                      parambyname('pData').asdate       := NotasTerceirosItensData_Referencia.asdatetime;
                      parambyname('pProduto').asinteger := NotasTerceirosItensCodigo_Mercadoria.asinteger;
                      parambyname('pDisp').value        := mDisp;
                      execute;
                 end;
                 
                 Adicoes.SQL.Clear;
                 Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(Registro = :pRegistro)');
                 Adicoes.ParamByName('pRegistro').AsInteger := NotasItensRegistro_Adicao.Value;
                 Adicoes.Open;

                 Produtos.Locate('Codigo', NotasTerceirosItensCodigo_Mercadoria.AsInteger, [loCaseInsensitive]);

                 If Adicoes.RecordCount > 0 then begin
                    Adicoes.Edit;
                            AdicoesLancado_Saida.Value := AdicoesLancado_Saida.Value - (NotasTerceirosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                            If AdicoesLancado_Saida.Value < 0 then AdicoesLancado_Saida.Value := 0;

                            If ReferenciasFiscaisFinalidade_Mercadoria.Value = 4 then begin
                               AdicoesLancado_Terceiros.Value :=  AdicoesLancado_Terceiros.Value + (NotasTerceirosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                               If AdicoesLancado_Terceiros.Value < 0 then AdicoesLancado_Terceiros.Value := 0;
                            End;
                    Adicoes.Post;
                 End;

                 // Bloqueia o chassi retornado na nota de terceiros.
                 ProdutosSeriais.SQL.Clear;
                 ProdutosSeriais.SQL.Add('UPDATE ProdutosSeriais SET Disponivel = 0');
                 ProdutosSeriais.SQL.Add('                          ,Nota_Retorno = null');
                 ProdutosSeriais.SQL.Add('                          ,Data_Retorno = null');
                 ProdutosSeriais.SQL.Add('WHERE Nota_Retorno = :pNota AND Data_Retorno = :pData AND Produto_Codigo = :pCodigo');
                 ProdutosSeriais.ParamByName('pNota').AsInteger   := NotasTerceirosNota.Value;
                 ProdutosSeriais.ParamByName('pData').AsDate      := NotasTerceirosData_Emissao.Value;
                 ProdutosSeriais.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                 ProdutosSeriais.Execute;
                 ProdutosSeriais.SQL.Clear;
                 ProdutosSeriais.SQL.Add('SELECT *');
                 ProdutosSeriais.SQL.Add('FROM   ProdutosSeriais');
                 ProdutosSeriais.SQL.Add('WHERE  Produto_Codigo = :pCodigo');
                 ProdutosSeriais.SQL.Add('AND    Nota_Saida     = :pNota');
                 ProdutosSeriais.SQL.Add('AND    Data_Saida     = :pData');
                 ProdutosSeriais.ParamByName('pCodigo').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
                 ProdutosSeriais.ParamByName('pNota').AsInteger   := NotasItensNota.AsInteger;
                 ProdutosSeriais.ParamByName('pData').AsDate      := NotasItensData.AsDateTime;
                 ProdutosSeriais.Open;

                 //Apaga a nota de terceiros da tabela de SeriaisNotas.
                 with tExiste do begin
                      sql.Clear;
                      sql.Add('delete from ProdutosSeriaisNotas where Nota = :pNotaT and Data = :pDataT and Produto_Codigo = :pCodigo');
                      ParamByName('pNotaT').AsInteger  := NotasTerceirosItensNota.Value;
                      ParamByName('pDataT').AsDate     := NotasTerceirosItensData_Emissao.Value;
                      ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                      execute;
                 end;
              End;
              
              // Reprocessa o valor do estoque minímo do produto por percentual caso esteja informado o percentual minímo no cadastro.
              If ProdutosEstoque_MinimoPerc.AsFloat > 0 then begin
                 Produtos.Edit;
                          ProdutosEstoque_Minimo.Value := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger)-NotasTerceirosItensQuantidade.AsFloat, ProdutosEstoque_MinimoPerc.AsFloat);
                 Produtos.Post;
              End;

              // Excluindo as 48 parcelas criadas no CIAP para o item desta nota fiscal.
              // Verificando se foi utilizado alguma parcela.
              CIAP.Close;
              CIAP.SQL.Clear;
              CIAP.SQL.Add('SELECT * FROM CIAP');
              CIAP.SQL.Add('WHERE (Codigo_Mercadoria = :pMercadoria) AND (Nota = :pNota) AND (Utilizacao IS NOT NULL)');
              CIAP.ParamByName('pMercadoria').AsInteger := NotasTerceirosItensCodigo_Mercadoria.Value;
              CIAP.ParamByName('pNota').AsInteger       := NotasTerceirosItensNota.Value;
              CIAP.Open;
              If CIAP.RecordCount <> 0 then begin
                 If MessageDlg('Atenção!'+#13+'Você esta excluindo um item que ja teve '+InttoStr(CIAP.RecordCount)+' parcela(s) utilizada(s) no CIAP.'+#13+'Excluir o item assim mesmo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                    CIAP.Close;
                    CIAP.SQL.Clear;
                    CIAP.SQL.Add('DELETE FROM CIAP WHERE (Codigo_Mercadoria = :pMercadoria) AND (Nota = :pNota)');
                    CIAP.ParamByName('pMercadoria').AsInteger := NotasTerceirosItensCodigo_Mercadoria.Value;
                    CIAP.ParamByName('pNota').AsInteger       := NotasTerceirosItensNota.Value;
                    CIAP.Execute;
                    Navega.ConfirmDelete := False;
                 End else begin
                    Screen.Cursor := crDefault;
                    Abort;
                 End;
              End;

              // Deleta o item do controle de lotes caso haja.
              with ProdutosDetalhe do begin
                   sql.Clear;
                   sql.Add('delete from ProdutosDetalhe where Produto_Codigo = :pCodigo and Nota_Entrada = :pNota and Data_Entrada = :pData and Item = :pItem');
                   ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                   ParamByName('pNota').AsInteger   := NotasTerceirosItensNota.AsInteger;
                   ParamByName('pData').AsDate      := NotasTerceirosItensData_Emissao.AsDateTime;
                   ParamByName('pItem').AsInteger   := NotasTerceirosItensItem.AsInteger;
                   execute;
                   sql.Clear;
              end;

              // Deleta o item da tabela "NotasItensNavios.
              with NotasItensNavios do begin
                   sql.clear;
                   sql.add('Delete from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Codigo_Mercadoria = :pCodigo and Emissor = ''T'' ');
                   ParamByName('pNota').AsInteger   := NotasTerceirosItensNota.AsInteger;
                   ParamByName('pData').AsDate      := NotasTerceirosItensData_Emissao.AsDateTime;
                   ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                   execute;
                   sql.clear;
              end;
           End;
      End;
      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_TerceirosItens.cValorUnitarioExit(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           If (NotasTerceirosItens.State = dsEdit) or (NotasTerceirosItens.State = dsInsert) then begin
//              NotasTerceirosItensValor_Liquido.Value  := (NotasTerceirosItensValor_Unitario.Value * NotasTerceirosItensQuantidade.Value) - NotasTerceirosItensValor_Desconto.Value;
              NotasTerceirosItensValor_Liquido.Value  := (NotasTerceirosItensValor_Unitario.Value * NotasTerceirosItensQuantidade.Value);
              If NaturezaImobilizado.Value = True then begin
                 NotasTerceirosItensCIAP_ValorICMS.Value := Percentual(NotasTerceirosItensCIAP_BCICMS.Value, NotasTerceirosItensCIAP_AliquotaICMS.Value);
              End;

              // B.C. PIS / COFINS.
              NotasTerceirosItensValor_PIS.Value       := 0;
              NotasTerceirosItensValor_COFINS.Value    := 0;
              If ReferenciasFiscaisApuracao_PISCOFINS.AsBoolean then begin
                 NotasTerceirosItensValor_PIS.Value    := Percentual(NotasTerceirosItensValor_BCPIS.Value   , NotasTerceirosItensAliquota_PIS.AsFloat);
                 NotasTerceirosItensValor_COFINS.Value := Percentual(NotasTerceirosItensValor_BCCOFINS.Value, NotasTerceirosItensAliquota_COFINS.AsFloat);
              End;
           End;
      End;
end;

procedure TNotaFiscal_TerceirosItens.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TNotaFiscal_TerceirosItens.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   mFornecedor,
   mNota,
   mReg: Integer;
   mData: TDate;
begin
      Screen.Cursor := crSQLWait;

      With dmFiscal, Dados do begin
           mNota       := NotasTerceirosNota.AsInteger;
           mFornecedor := NotasTerceirosFornecedor.AsInteger;
           mData       := NotasTerceirosData_Emissao.Value;

           tTotaliza.SQL.Clear;
           tTotaliza.SQL.Add('UPDATE NotasTerceiros SET ');
           tTotaliza.SQL.Add('       Valor_TotalProdutos  = (SELECT SUM(ISNULL(Valor_Liquido, 0))     FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_TotalLiquido   = (SELECT SUM(ISNULL(Valor_Liquido, 0))     FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_BCICMSOper     = (SELECT SUM(ISNULL(Valor_BCICMSOper, 0))  FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_ICMSOper       = (SELECT SUM(ISNULL(Valor_ICMSOper, 0))    FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_IsentasICMS    = (SELECT SUM(ISNULL(Valor_IsentasICMS, 0)) FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_OutrasICMS     = (SELECT SUM(ISNULL(Valor_OutrasICMS, 0))  FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_BCICMSSub      = (SELECT SUM(ISNULL(Valor_BCICMSSub, 0))   FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_ICMSSub        = (SELECT SUM(ISNULL(Valor_ICMSSub, 0))     FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_TotalBCIPI     = (SELECT SUM(ISNULL(Valor_BCIPI, 0))       FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_TotalIPI       = (SELECT SUM(ISNULL(Valor_IPI, 0))         FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_IsentasIPI     = (SELECT SUM(ISNULL(Valor_IsentasIPI, 0))  FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_OutrasIPI      = (SELECT SUM(ISNULL(Valor_OutrasIPI, 0))   FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_TotalDescontos = (SELECT SUM(ISNULL(Valor_Desconto, 0))    FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Quantidade           = (SELECT SUM(ISNULL(Quantidade, 0))        FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_PIS            = (SELECT SUM(ISNULL(Valor_PIS, 0))         FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_COFINS         = (SELECT SUM(ISNULL(Valor_COFINS, 0))      FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Valor_TotalFrete     = (SELECT SUM(ISNULL(Valor_Frete, 0))       FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor),');
           tTotaliza.SQL.Add('       Total_Despesas       = (SELECT SUM(ISNULL(Valor_Despesa, 0))     FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota AND NTI.Data_Emissao = NotasTerceiros.Data_Emissao AND NTI.Fornecedor = NotasTerceiros.Fornecedor) ');
           tTotaliza.SQL.Add('WHERE  Nota = :pNota AND Fornecedor = :pFornecedor AND Data_Emissao = :pData');
           tTotaliza.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
           tTotaliza.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
           tTotaliza.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
           //tTotaliza.sql.savetofile('c:\temp\notas_terceiros_itens_totaliza.sql');
           tTotaliza.Execute;

           tTotaliza.SQL.Clear;
           tTotaliza.SQL.Add('UPDATE NotasTerceiros SET Valor_TotalNota = (Valor_TotalProdutos + Valor_ICMSSub + Valor_TotalIPI + Valor_TotalFrete + Total_Despesas) - Valor_TotalDescontos');
           tTotaliza.SQL.Add('WHERE  Nota = :pNota AND Fornecedor = :pFornecedor AND Data_Emissao = :pData');
           tTotaliza.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
           tTotaliza.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
           tTotaliza.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
           tTotaliza.Execute;

           if Navega.Tag = 1 then begin
              // Ficha de estoque - (Entrada Normal).
              if (ReferenciasFiscaisMovimenta_Estoque.AsBoolean) and (not NotaFiscal_Terceiros.mProvisoria) then begin
                 // Remove e Adiciona todos os itens a ficha de estoque/Inventario se a referencia fiscal movimenta estoque.
                 FichaEstoque.SQL.Clear;
                 FichaEstoque.SQL.Add('DELETE FROM FichaEstoque WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
                 FichaEstoque.ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
                 FichaEstoque.ParamByName('pData').AsDate    := NotasTerceirosData_Entrada.AsDateTime;
                 FichaEstoque.ParamByName('pDest').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 FichaEstoque.Execute;
                 FichaEstoque.SQL.Clear;
                 FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
                 FichaEstoque.ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
                 FichaEstoque.ParamByName('pData').AsDate    := NotasTerceirosData_Entrada.AsDateTime;
                 FichaEstoque.ParamByName('pDest').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 FichaEstoque.Open;

                 tValor.SQL.Clear;
                 tValor.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
                 tValor.SQL.Add('FROM   FichaEstoque');
                 tValor.Open;
                 mReg := tValor.FieldByName('Registro').AsInteger;

                 NotasTerceirosItens.First;
                 while not NotasTerceirosItens.Eof do begin
                       tSaldo.SQL.Clear;
                       tSaldo.SQL.Add('SELECT Qtde_Saldo');
                       tSaldo.SQL.Add('      ,Unitario_Saldo');
                       tSaldo.SQL.Add('      ,Total_Saldo');
                       tSaldo.SQL.Add('FROM   FichaEstoque');
                       tSaldo.SQL.Add('WHERE  Codigo = :pCodigo');
                       tSaldo.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaEstoque WHERE Codigo = :pCodigo)');
                       tSaldo.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                       tSaldo.Open;

                       tItem.SQL.Clear;
                       tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM FichaEstoque WHERE Codigo = :pCodigo');
                       tItem.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.Value;
                       tItem.Open;

                       FichaEstoque.Append;
                                    FichaEstoqueRegistro.Value  := mReg;
                                    FichaEstoqueItem.Value      := tItem.FieldByName('Item').AsInteger;
                                    FichaEstoqueCodigo.Value    := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                                    FichaEstoqueDescricao.Value := NotasTerceirosItensDescricao_Mercadoria.AsString;
                                    FichaEstoqueUM.Value        := NotasTerceirosItensUnidade_Medida.AsString;
                                    FichaEstoqueCFOP.Value      := NotasTerceirosItensNatureza_Codigo.AsString;

                                    Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                         0: FichaEstoqueHistorico.Value := 'COMPRA - REVENDA';
                                         1: FichaEstoqueHistorico.Value := 'COMPRA - CONSUMO';
                                         2: FichaEstoqueHistorico.Value := 'DEVOLUÇÃO';
                                         3: FichaEstoqueHistorico.Value := 'EXPORTAÇÃO';
                                         4: FichaEstoqueHistorico.Value := 'PRÓPRIAS EM PODER DE TERCEIROS';
                                         5: FichaEstoqueHistorico.Value := 'TERCEIROS EM PODER DA EMPRESA';
                                         6: FichaEstoqueHistorico.Value := 'COMPRA - IMOBILIZADO';
                                         9: FichaEstoqueHistorico.Value := 'OUTRAS';
                                    End;

                                    Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                         0: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                         1: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                         2: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                         3: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                         4: FichaEstoqueEstoque.Value := '1-ARMAZEM';
                                         5: FichaEstoqueEstoque.Value := '2-TERCEIROS';
                                         6: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                         9: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                    End;

                                    FichaEstoqueEmissor.Value             := 'T';
                                    FichaEstoqueNota.Value                := NotasTerceirosItensNota.AsInteger;
                                    FichaEstoqueData.Value                := NotasTerceirosItensData_Entrada.Value;
                                    FichaEstoqueES.Value                  := 'E';
                                    FichaEstoqueDestinatario_Codigo.Value := NotasTerceirosItensFornecedor.AsInteger;
                                    FichaEstoqueDestinatario_Nome.Value   := FornecedoresNome.AsString;

                                    If FornecedoresCNPJ.AsString <> '' then
                                       FichaEstoqueDestinatario_CNPJ.Value := FornecedoresCNPJ.AsString
                                    else
                                       FichaEstoqueDestinatario_CNPJ.Value := FornecedoresCPF.AsString;

                                    FichaEstoqueFinalidade.Value       := ReferenciasFiscaisFinalidade_Mercadoria.AsInteger;
                                    FichaEstoqueQtde_Entrada.Value     := NotasTerceirosItensQuantidade.AsFloat;
                                    FichaEstoqueUnitario_Entrada.Value := NotasTerceirosItensValor_Inventario.Value;
                                    FichaEstoqueTotal_Entrada.Value    := NotasTerceirosItensQuantidade.AsFloat * NotasTerceirosItensValor_Inventario
                                    .Value;
                                    FichaEstoqueQtde_Saida.Value       := 0;
                                    FichaEstoqueUnitario_Saida.Value   := 0;
                                    FichaEstoqueTotal_Saida.Value      := 0;
                                    If tSaldo.RecordCount > 0 then begin
                                       FichaEstoqueQtde_Saldo.Value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  + NotasTerceirosItensQuantidade.AsFloat;
                                       FichaEstoqueTotal_Saldo.Value := tSaldo.FieldByName('Total_Saldo').AsFloat + FichaEstoqueTotal_Entrada.AsFloat;
                                    end else begin
                                       FichaEstoqueQtde_Saldo.Value  := NotasTerceirosItensQuantidade.AsFloat;
                                       FichaEstoqueTotal_Saldo.Value := FichaEstoqueTotal_Entrada.AsFloat;
                                    End;
                                    If FichaEstoqueQtde_Saldo.AsFloat > 0 then begin
                                       FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsFloat / FichaEstoqueQtde_Saldo.AsFloat;
                                    End;
                                    FichaEstoqueOrigem.Value         := 'NFT';
                                    FichaEstoqueProcesso.Value       := NotasTerceirosItensProcesso.Value;
                                    If ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) then begin
                                       FichaEstoqueTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                    End;
                       FichaEstoque.Post;

                       Inc(mReg);

                       NotasTerceirosItens.Next;
                 end;

                 // Ficha de estoque - "ENTRADA" (Efetua a baixa da matéria prima com a mesma nota de entrada para retorno de industrialização.)
                 if ReferenciasFiscaisMovimenta_EstoqueInd.AsBoolean then begin
                    // Exclui os itens criados na tabela de transferencias anteriormente para a nota fiscal.
                    ProdutosTransferencia.SQL.Clear;
                    ProdutosTransferencia.SQL.Add('DELETE FROM ProdutosTransferencia WHERE Nota = :pNota AND Data_Transferencia = :pData');
                    ProdutosTransferencia.ParamByName('pNota').AsInteger := NotasTerceirosItensNota.AsInteger;
                    ProdutosTransferencia.ParamByName('pData').AsDate    := NotasTerceirosItensData_Entrada.AsDateTime;
                    ProdutosTransferencia.Execute;
                    ProdutosTransferencia.SQL.Clear;
                    ProdutosTransferencia.SQL.Add('SELECT * FROM ProdutosTransferencia WHERE Produto_Entrada = :pProduto');
                    ProdutosTransferencia.ParamByName('pProduto').AsInteger := FichaEstoqueCodigo.AsInteger;
                    ProdutosTransferencia.Open;

                    tValor.SQL.Clear;
                    tValor.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
                    tValor.SQL.Add('FROM   FichaEstoque');
                    tValor.Open;
                    mReg := tValor.FieldByName('Registro').AsInteger;

                    NotasTerceirosItens.First;
                    while not NotasTerceirosItens.Eof do begin
                          tMateriaPrima.SQL.Clear;
                          tMateriaPrima.SQL.Add('SELECT Registro');
                          tMateriaPrima.SQL.Add('      ,Codigo_Produto');
                          tMateriaPrima.SQL.Add('      ,Codigo_MateriaPrima');
                          tMateriaPrima.SQL.Add('      ,Conversao_M2M3');
                          tMateriaPrima.SQL.Add('      ,Quantidade_Utilizada');
                          tMateriaPrima.SQL.Add('      ,Descricao = (SELECT Descricao FROM Produtos WHERE Codigo = Codigo_MateriaPrima)');
                          tMateriaPrima.SQL.Add('      ,Unidade   = (SELECT Unidade   FROM Produtos WHERE Codigo = Codigo_MateriaPrima)');
                          tMateriaPrima.SQL.Add('      ,Altura    = (SELECT Altura    FROM Produtos WHERE Codigo = Codigo_Produto)');
                          tMateriaPrima.SQL.Add('FROM  ProdutosMateriaPrima');
                          tMateriaPrima.SQL.Add('WHERE Codigo_Produto = :pCodigo');
                          tMateriaPrima.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                          tMateriaPrima.Open;

                          while not tMateriaPrima.Eof do begin
                                tSaldo.SQL.Clear;
                                tSaldo.SQL.Add('SELECT Qtde_Saldo');
                                tSaldo.SQL.Add('      ,Unitario_Saldo');
                                tSaldo.SQL.Add('      ,Total_Saldo');
                                tSaldo.SQL.Add('FROM   FichaEstoque');
                                tSaldo.SQL.Add('WHERE  Codigo = :pCodigo');
                                tSaldo.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaEstoque WHERE Codigo = :pCodigo)');
                                tSaldo.ParamByName('pCodigo').AsInteger := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                tSaldo.Open;

                                // Pegando o valor de entrada da ficha de estoque.
                                tValor.SQL.Clear;
                                tValor.SQL.Add('SELECT ISNULL(Unitario_Saida, 0) AS Unitario');
                                tValor.SQL.Add('FROM   FichaEstoque');
                                tValor.SQL.Add('WHERE  Codigo = :pCodigo AND Nota <> :pNota AND Item = (SELECT MAX(Item) FROM FichaEstoque WHERE Codigo = :pCodigo AND Nota <> :pNota) ');
                                tValor.ParamByName('pCodigo').AsInteger := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                tValor.ParamByName('pNota').AsInteger   := NotasTerceirosItensNota.AsInteger;
                                tValor.Open;

                                tItem.SQL.Clear;
                                tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM FichaEstoque WHERE Codigo = :pCodigo');
                                tItem.ParamByName('pCodigo').AsInteger := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                tItem.Open;

                                // Registros de entrada da matéria prima na ficha de estoque.
                                FichaEstoque.Append;
                                             FichaEstoqueRegistro.Value  := mReg;
                                             FichaEstoqueItem.Value      := tItem.FieldByName('Item').AsInteger;
                                             FichaEstoqueCodigo.Value    := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                             FichaEstoqueDescricao.Value := tMateriaPrima.FieldByName('Descricao').AsString;
                                             FichaEstoqueUM.Value        := tMateriaPrima.FieldByName('Unidade').AsString;
                                             FichaEstoqueCFOP.Value      := ReferenciasFiscaisNatureza_IndEntrada.Value;
                                             FichaEstoqueHistorico.Value := 'RETORNO MAT.PRIMA INDUSTRIALIZAÇÃO';

                                             Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                                  0: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  1: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  2: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  3: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  4: FichaEstoqueEstoque.Value := '1-ARMAZEM';
                                                  5: FichaEstoqueEstoque.Value := '2-TERCEIROS';
                                                  6: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  9: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                             End;

                                             FichaEstoqueEmissor.Value             := 'T';
                                             FichaEstoqueNota.Value                := NotasTerceirosItensNota.AsInteger;
                                             FichaEstoqueData.Value                := NotasTerceirosItensData_Entrada.Value;
                                             FichaEstoqueES.Value                  := 'E';
                                             FichaEstoqueDestinatario_Codigo.Value := NotasTerceirosItensFornecedor.AsInteger;
                                             FichaEstoqueDestinatario_Nome.Value   := FornecedoresNome.AsString;

                                             If FornecedoresCNPJ.AsString <> '' then
                                                FichaEstoqueDestinatario_CNPJ.Value := FornecedoresCNPJ.AsString
                                             else
                                                FichaEstoqueDestinatario_CNPJ.Value := FornecedoresCPF.AsString;

                                             FichaEstoqueFinalidade.Value       := ReferenciasFiscaisFinalidade_Mercadoria.AsInteger;
                                             FichaEstoqueQtde_Saida.Value       := 0;
                                             FichaEstoqueUnitario_Saida.Value   := 0;
                                             FichaEstoqueTotal_Saida.Value      := 0;

                                             // Caso esteja marcado na materia prima, efetua a conversão de metro quadrado para metro cubico.
                                             FichaEstoqueQtde_Entrada.Value := NotasTerceirosItensQuantidade.AsFloat;
                                             if tMateriaPrima.FieldByName('Conversao_M2M3').AsBoolean then begin
                                                FichaEstoqueQtde_Entrada.Value := NotasTerceirosItensQuantidade.AsFloat * tMateriaPrima.FieldByName('Altura').AsFloat;
                                             end;

                                             FichaEstoqueUnitario_Entrada.Value := tValor.FieldByName('Unitario').AsCurrency;
                                             FichaEstoqueTotal_Entrada.Value    := FichaEstoqueQtde_Entrada.Value * FichaEstoqueUnitario_Entrada.Value;

                                             If tSaldo.RecordCount > 0 then begin
                                                FichaEstoqueQtde_Saldo.Value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  + FichaEstoqueQtde_Entrada.AsFloat;
                                                FichaEstoqueTotal_Saldo.Value := tSaldo.FieldByName('Total_Saldo').AsFloat + FichaEstoqueTotal_Entrada.AsFloat;
                                             end else begin
                                                FichaEstoqueQtde_Saldo.Value  := FichaEstoqueQtde_Entrada.Value;
                                                FichaEstoqueTotal_Saldo.Value := FichaEstoqueTotal_Entrada.AsFloat;
                                             End;
                                             If FichaEstoqueQtde_Saldo.AsFloat > 0 then begin
                                                FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsFloat / FichaEstoqueQtde_Saldo.AsFloat;
                                             End;

                                             FichaEstoqueOrigem.Value         := 'NFT';
                                             FichaEstoqueProcesso.Value       := NotasTerceirosItensProcesso.Value;
                                             If ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) then begin
                                                FichaEstoqueTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                             End;
                                FichaEstoque.Post;

                                // Adiciona "ENTRADA" na tabela de transferência com tipo 'I' de industrialização para computar nos relatórios de estoque sem nota fiscal.
                                tExiste.SQL.Clear;
                                tExiste.SQL.Add('SELECT MAX(Registro)+1 AS Registro FROM ProdutosTransferencia');
                                tExiste.Open;

                                ProdutosTransferencia.Append;
                                                      ProdutosTransferenciaRegistro.Value           := tExiste.FieldByName('Registro').AsInteger;
                                                      ProdutosTransferenciaProduto_Entrada.Value    := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                                      ProdutosTransferenciaQuantidade.Value         := Roundto(FichaEstoqueQtde_Entrada.Value, -3);
                                                      ProdutosTransferenciaQuantidade_Entrada.Value := Roundto(FichaEstoqueQtde_Entrada.Value, -3);
                                                      ProdutosTransferenciaInventario.Value         := true;
                                                      ProdutosTransferenciaData_Transferencia.Value := FichaEstoqueData.Value;
                                                      ProdutosTransferenciaNota.Value               := NotasTerceirosItensNota.AsInteger;
                                                      ProdutosTransferenciaObservacao.Value         := 'RETORNO DE MATERIA PRIMA DE INDUSTRIALIZAÇÃO NOTA FISCAL:' + FichaEstoqueNota.AsString + ' DE '+FichaEstoqueData.AsString;;
                                                      ProdutosTransferenciaEstoque.Value            := true;
                                                      ProdutosTransferenciaProcesso_Entrada.Value   := NotasTerceirosItensProcesso.AsString;
                                                      ProdutosTransferenciaMotivo.Value             := 'I';
                                                      ProdutosTransferenciaValor_Unitario.Value     := FichaEstoqueUnitario_Entrada.AsCurrency;
                                                      ProdutosTransferenciaCFOP.Value               := ReferenciasFiscaisNatureza_IndEntrada.Value;
                                ProdutosTransferencia.Post;

                                Inc(mReg);

                                // Registros de saída da matéria prima na ficha de estoque.
                                tSaldo.SQL.Clear;
                                tSaldo.SQL.Add('SELECT Qtde_Saldo');
                                tSaldo.SQL.Add('      ,Unitario_Saldo');
                                tSaldo.SQL.Add('      ,Total_Saldo');
                                tSaldo.SQL.Add('FROM   FichaEstoque');
                                tSaldo.SQL.Add('WHERE  Codigo = :pCodigo');
                                tSaldo.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaEstoque WHERE Codigo = :pCodigo)');
                                tSaldo.ParamByName('pCodigo').AsInteger := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                tSaldo.Open;
                                
                                FichaEstoque.Append;
                                             FichaEstoqueRegistro.Value  := mReg;
                                             FichaEstoqueItem.Value      := tItem.FieldByName('Item').AsInteger+1;
                                             FichaEstoqueCodigo.Value    := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                             FichaEstoqueDescricao.Value := tMateriaPrima.FieldByName('Descricao').AsString;
                                             FichaEstoqueUM.Value        := tMateriaPrima.FieldByName('Unidade').AsString;
                                             FichaEstoqueCFOP.Value      := ReferenciasFiscaisNatureza_IndSaida.Value;
                                             FichaEstoqueHistorico.Value := 'RETORNO MAT.PRIMA INDUSTRIALIZAÇÃO';

                                             Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                                  0: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  1: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  2: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  3: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  4: FichaEstoqueEstoque.Value := '1-ARMAZEM';
                                                  5: FichaEstoqueEstoque.Value := '2-TERCEIROS';
                                                  6: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                                  9: FichaEstoqueEstoque.Value := '0-EMPRESA';
                                             End;

                                             FichaEstoqueEmissor.Value             := 'T';
                                             FichaEstoqueNota.Value                := NotasTerceirosItensNota.AsInteger;
                                             FichaEstoqueData.Value                := NotasTerceirosItensData_Entrada.Value;
                                             FichaEstoqueES.Value                  := 'S';
                                             FichaEstoqueDestinatario_Codigo.Value := NotasTerceirosItensFornecedor.AsInteger;
                                             FichaEstoqueDestinatario_Nome.Value   := FornecedoresNome.AsString;

                                             If FornecedoresCNPJ.AsString <> '' then
                                                FichaEstoqueDestinatario_CNPJ.Value := FornecedoresCNPJ.AsString
                                             else
                                                FichaEstoqueDestinatario_CNPJ.Value := FornecedoresCPF.AsString;

                                             FichaEstoqueFinalidade.Value       := ReferenciasFiscaisFinalidade_Mercadoria.AsInteger;
                                             FichaEstoqueQtde_Entrada.Value     := 0;
                                             FichaEstoqueUnitario_Entrada.Value := 0;
                                             FichaEstoqueTotal_Entrada.Value    := 0;

                                             // Caso esteja marcado na materia prima, efetua a conversão de metro quadrado para metro cubico.
                                             FichaEstoqueQtde_Saida.Value := NotasTerceirosItensQuantidade.AsFloat;
                                             if tMateriaPrima.FieldByName('Conversao_M2M3').AsBoolean then begin
                                                FichaEstoqueQtde_Saida.Value := NotasTerceirosItensQuantidade.AsFloat * tMateriaPrima.FieldByName('Altura').AsFloat;
                                             end;

                                             FichaEstoqueUnitario_Saida.Value := tValor.FieldByName('Unitario').AsCurrency;
                                             FichaEstoqueTotal_Saida.Value    := FichaEstoqueQtde_Saida.Value * FichaEstoqueUnitario_Saida.Value;

                                             FichaEstoqueQtde_Saldo.Value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  - FichaEstoqueQtde_Saida.Value;
                                             FichaEstoqueTotal_Saldo.Value := tSaldo.FieldByName('Total_Saldo').AsFloat - FichaEstoqueTotal_Saida.AsFloat;

                                             If (FichaEstoqueTotal_Saldo.AsCurrency > 0) then
                                                FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsCurrency / FichaEstoqueQtde_Saldo.AsFloat
                                             else
                                                FichaEstoqueUnitario_Saldo.Value := 0;

                                             FichaEstoqueOrigem.Value         := 'NFT';
                                             FichaEstoqueProcesso.Value       := NotasTerceirosItensProcesso.Value;
                                             If ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) then begin
                                                FichaEstoqueTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                             End;
                                FichaEstoque.Post;

                                // Adiciona "SAÍDA" na tabela de transferência com tipo 'I' de industrialização para computar nos relatórios de estoque sem nota fiscal.
                                tExiste.SQL.Clear;
                                tExiste.SQL.Add('SELECT MAX(Registro)+1 AS Registro FROM ProdutosTransferencia');
                                tExiste.Open;

                                ProdutosTransferencia.Append;
                                                      ProdutosTransferenciaRegistro.Value           := tExiste.FieldByName('Registro').AsInteger;
                                                      ProdutosTransferenciaProduto_Saida.Value      := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                                      ProdutosTransferenciaQuantidade.Value         := Roundto(FichaEstoqueQtde_Saida.Value, -3);
                                                      ProdutosTransferenciaInventario.Value         := true;
                                                      ProdutosTransferenciaData_Transferencia.Value := FichaEstoqueData.Value;
                                                      ProdutosTransferenciaNota.Value               := NotasTerceirosItensNota.AsInteger;
                                                      ProdutosTransferenciaObservacao.Value         := 'RETORNO DE MATERIA PRIMA DE INDUSTRIALIZAÇÃO NOTA FISCAL:' + FichaEstoqueNota.AsString + ' DE '+FichaEstoqueData.AsString;;
                                                      ProdutosTransferenciaEstoque.Value            := true;
                                                      ProdutosTransferenciaProcesso_Saida.Value     := NotasTerceirosItensProcesso.AsString;
                                                      ProdutosTransferenciaMotivo.Value             := 'I';
                                                      ProdutosTransferenciaValor_Unitario.Value     := FichaEstoqueUnitario_Saida.AsCurrency;
                                                      ProdutosTransferenciaCFOP.Value               := ReferenciasFiscaisNatureza_IndSaida.Value;
                                ProdutosTransferencia.Post;

                                Inc(mReg);

                                tMateriaPrima.Next;
                          end;
                          NotasTerceirosItens.Next;
                    end;
                 end;
              end;

              // Ficha de inventario - (Entrada Normal).
              If (ReferenciasFiscaisMovimenta_Inventario.AsBoolean) and (not NotaFiscal_Terceiros.mProvisoria) then begin
                 FichaInventario.SQL.Clear;
                 FichaInventario.SQL.Add('DELETE FROM FichaInventario WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
                 FichaInventario.ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                 FichaInventario.ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                 FichaInventario.ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                 FichaInventario.Execute;
                 FichaInventario.SQL.Clear;
                 FichaInventario.SQL.Add('SELECT * FROM FichaInventario WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
                 FichaInventario.ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                 FichaInventario.ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                 FichaInventario.ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                 FichaInventario.Open;

                 tSaldo.SQL.Clear;
                 tSaldo.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
                 tSaldo.SQL.Add('FROM   FichaInventario');
                 tSaldo.Open;
                 mReg := tSaldo.FieldByName('Registro').AsInteger;

                 NotasTerceirosItens.First;
                 While not NotasTerceirosItens.Eof do begin
                       tSaldo.SQL.Clear;
                       tSaldo.SQL.Add('SELECT Qtde_Saldo');
                       tSaldo.SQL.Add('      ,Unitario_Saldo');
                       tSaldo.SQL.Add('      ,Total_Saldo');
                       tSaldo.SQL.Add('FROM   FichaInventario');
                       tSaldo.SQL.Add('WHERE  Codigo = :pCodigo');
                       tSaldo.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo)');
                       tSaldo.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                       tSaldo.Open;

                       tItem.SQL.Clear;
                       tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM FichaInventario WHERE Codigo = :pCodigo');
                       tItem.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.Value;
                       tItem.Open;

                       FichaInventario.Append;
                                       FichaInventarioRegistro.Value  := mReg;
                                       FichaInventarioItem.Value      := tItem.FieldByName('Item').AsInteger;
                                       FichaInventarioCodigo.Value    := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                                       FichaInventarioNCM.Value       := NotasTerceirosItensNCM.Value;
                                       FichaInventarioDescricao.Value := NotasTerceirosItensDescricao_Mercadoria.AsString;
                                       FichaInventarioUM.Value        := NotasTerceirosItensUnidade_Medida.AsString;
                                       FichaInventarioCFOP.Value      := NotasTerceirosItensNatureza_Codigo.AsString;

                                       Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                            0: FichaInventarioHistorico.Value := 'COMPRA - REVENDA';
                                            1: FichaInventarioHistorico.Value := 'COMPRA - CONSUMO';
                                            2: FichaInventarioHistorico.Value := 'DEVOLUÇÃO';
                                            3: FichaInventarioHistorico.Value := 'EXPORTAÇÃO';
                                            4: FichaInventarioHistorico.Value := 'PRÓPRIAS EM PODER DE TERCEIROS';
                                            5: FichaInventarioHistorico.Value := 'TERCEIROS EM PODER DA EMPRESA';
                                            6: FichaInventarioHistorico.Value := 'COMPRA - IMOBILIZADO';
                                            9: FichaInventarioHistorico.Value := 'OUTRAS';
                                       End;

                                       Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                            0: FichaInventarioEstoque.Value := '0-EMPRESA';
                                            1: FichaInventarioEstoque.Value := '0-EMPRESA';
                                            2: FichaInventarioEstoque.Value := '0-EMPRESA';
                                            3: FichaInventarioEstoque.Value := '0-EMPRESA';
                                            4: FichaInventarioEstoque.Value := '1-ARMAZEM';
                                            5: FichaInventarioEstoque.Value := '2-TERCEIROS';
                                            6: FichaInventarioEstoque.Value := '0-EMPRESA';
                                            9: FichaInventarioEstoque.Value := '0-EMPRESA';
                                       End;

                                       FichaInventarioEmissor.Value             := 'T';
                                       FichaInventarioNota.Value                := NotasTerceirosItensNota.AsInteger;
                                       FichaInventarioData.Value                := NotasTerceirosItensData_Entrada.Value;
                                       FichaInventarioES.Value                  := 'E';
                                       FichaInventarioDestinatario_Codigo.Value := NotasTerceirosItensFornecedor.AsInteger;
                                       FichaInventarioDestinatario_Nome.Value   := FornecedoresNome.AsString;

                                       If FornecedoresCNPJ.AsString <> '' then
                                          FichaInventarioDestinatario_CNPJ.Value := FornecedoresCNPJ.AsString
                                       else
                                          FichaInventarioDestinatario_CNPJ.Value := FornecedoresCPF.AsString;

                                       FichaInventarioFinalidade.Value       := ReferenciasFiscaisFinalidade_Mercadoria.AsInteger;
                                       FichaInventarioQtde_Entrada.Value     := NotasTerceirosItensQuantidade.AsFloat;
                                       FichaInventarioUnitario_Entrada.Value := NotasTerceirosItensValor_Inventario.Value;
                                       FichaInventarioTotal_Entrada.Value    := NotasTerceirosItensQuantidade.AsFloat * NotasTerceirosItensValor_Inventario.Value;
                                       FichaInventarioQtde_Saida.Value       := 0;
                                       FichaInventarioUnitario_Saida.Value   := 0;
                                       FichaInventarioTotal_Saida.Value      := 0;
                                       If tSaldo.RecordCount > 0 then begin
                                          FichaInventarioQtde_Saldo.Value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  + NotasTerceirosItensQuantidade.AsFloat;
                                          FichaInventarioTotal_Saldo.Value := tSaldo.FieldByName('Total_Saldo').AsFloat + FichaInventarioTotal_Entrada.AsFloat;
                                       end else begin
                                          FichaInventarioQtde_Saldo.Value  := NotasTerceirosItensQuantidade.AsFloat;
                                          FichaInventarioTotal_Saldo.Value := FichaInventarioTotal_Entrada.AsFloat;
                                       End;
                                       If FichaInventarioQtde_Saldo.AsFloat > 0 then begin
                                          FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsFloat / FichaInventarioQtde_Saldo.AsFloat;
                                       End;
                                       FichaInventarioOrigem.Value         := 'NFT';
                                       FichaInventarioProcesso.Value       := NotasTerceirosItensProcesso.Value;
                                       If ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) then begin
                                          FichaInventarioTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                       End;
                       FichaInventario.Post;

                       Inc(mReg);

                       NotasTerceirosItens.Next;
                 end;

                 // Ficha de inventario - (Efetua a movimentação da matéria prima com a mesma nota de entrada para retorno de industrialização.)
                 if ReferenciasFiscaisMovimenta_EstoqueInd.AsBoolean then begin
                    tValor.SQL.Clear;
                    tValor.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
                    tValor.SQL.Add('FROM   FichaInventario');
                    tValor.Open;
                    mReg := tValor.FieldByName('Registro').AsInteger;

                    NotasTerceirosItens.First;
                    while not NotasTerceirosItens.Eof do begin
                          tMateriaPrima.SQL.Clear;
                          tMateriaPrima.SQL.Add('SELECT Registro');
                          tMateriaPrima.SQL.Add('      ,Codigo_Produto');
                          tMateriaPrima.SQL.Add('      ,Codigo_MateriaPrima');
                          tMateriaPrima.SQL.Add('      ,Conversao_M2M3');
                          tMateriaPrima.SQL.Add('      ,Quantidade_Utilizada');
                          tMateriaPrima.SQL.Add('      ,Descricao = (SELECT Descricao FROM Produtos WHERE Codigo = Codigo_MateriaPrima)');
                          tMateriaPrima.SQL.Add('      ,Unidade   = (SELECT Unidade   FROM Produtos WHERE Codigo = Codigo_MateriaPrima)');
                          tMateriaPrima.SQL.Add('      ,Altura    = (SELECT Altura    FROM Produtos WHERE Codigo = Codigo_Produto)');
                          tMateriaPrima.SQL.Add('FROM  ProdutosMateriaPrima');
                          tMateriaPrima.SQL.Add('WHERE Codigo_Produto = :pCodigo');
                          tMateriaPrima.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                          tMateriaPrima.Open;

                          while not tMateriaPrima.Eof do begin
                                tSaldo.SQL.Clear;
                                tSaldo.SQL.Add('SELECT Qtde_Saldo');
                                tSaldo.SQL.Add('      ,Unitario_Saldo');
                                tSaldo.SQL.Add('      ,Total_Saldo');
                                tSaldo.SQL.Add('FROM  FichaInventario');
                                tSaldo.SQL.Add('WHERE Codigo = :pCodigo');
                                tSaldo.SQL.Add('  AND Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo)');
                                tSaldo.ParamByName('pCodigo').AsInteger := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                tSaldo.Open;

                                // Pegando o valor de entrada da ficha de inventario.
                                tValor.SQL.Clear;
                                tValor.SQL.Add('SELECT ISNULL(Unitario_Saida, 0) AS Unitario');
                                tValor.SQL.Add('FROM   FichaInventario');
                                tValor.SQL.Add('WHERE  Codigo = :pCodigo AND Nota <> :pNota AND Item = (SELECT MAX(Item) FROM FichaInventario WHERE Codigo = :pCodigo AND Nota <> :pNota) ');
                                tValor.ParamByName('pCodigo').AsInteger := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                tValor.ParamByName('pNota').AsInteger   := NotasTerceirosItensNota.AsInteger;
                                tValor.Open;

                                tItem.SQL.Clear;
                                tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM FichaInventario WHERE Codigo = :pCodigo');
                                tItem.ParamByName('pCodigo').AsInteger := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                tItem.Open;

                                // Registros de entrada da matéria prima na ficha de inventario.
                                FichaInventario.Append;
                                                FichaInventarioRegistro.Value  := mReg;
                                                FichaInventarioItem.Value      := tItem.FieldByName('Item').AsInteger;
                                                FichaInventarioCodigo.Value    := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                                FichaInventarioNCM.Value       := NotasTerceirosItensNCM.Value;
                                                FichaInventarioDescricao.Value := tMateriaPrima.FieldByName('Descricao').AsString;
                                                FichaInventarioUM.Value        := tMateriaPrima.FieldByName('Unidade').AsString;
                                                FichaInventarioCFOP.Value      := ReferenciasFiscaisNatureza_IndEntrada.Value;
                                                FichaInventarioHistorico.Value := 'RETORNO MAT.PRIMA INDUSTRIALIZAÇÃO';

                                                Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                                     0: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                     1: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                     2: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                     3: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                     4: FichaInventarioEstoque.Value := '1-ARMAZEM';
                                                     5: FichaInventarioEstoque.Value := '2-TERCEIROS';
                                                     6: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                     9: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                End;

                                                FichaInventarioEmissor.Value             := 'T';
                                                FichaInventarioNota.Value                := NotasTerceirosItensNota.AsInteger;
                                                FichaInventarioData.Value                := NotasTerceirosItensData_Entrada.Value;
                                                FichaInventarioES.Value                  := 'E';
                                                FichaInventarioDestinatario_Codigo.Value := NotasTerceirosItensFornecedor.AsInteger;
                                                FichaInventarioDestinatario_Nome.Value   := FornecedoresNome.AsString;

                                                If FornecedoresCNPJ.AsString <> '' then
                                                   FichaInventarioDestinatario_CNPJ.Value := FornecedoresCNPJ.AsString
                                                else
                                                   FichaInventarioDestinatario_CNPJ.Value := FornecedoresCPF.AsString;

                                                FichaInventarioFinalidade.Value       := ReferenciasFiscaisFinalidade_Mercadoria.AsInteger;
                                                FichaInventarioQtde_Saida.Value       := 0;
                                                FichaInventarioUnitario_Saida.Value   := 0;
                                                FichaInventarioTotal_Saida.Value      := 0;

                                                // Caso esteja marcado na materia prima, efetua a conversão de metro quadrado para metro cubico.
                                                FichaInventarioQtde_Entrada.Value := NotasTerceirosItensQuantidade.AsFloat;
                                                if tMateriaPrima.FieldByName('Conversao_M2M3').AsBoolean then begin
                                                   FichaInventarioQtde_Entrada.Value := NotasTerceirosItensQuantidade.AsFloat * tMateriaPrima.FieldByName('Altura').AsFloat;
                                                end;

                                                FichaInventarioUnitario_Entrada.Value := tValor.FieldByName('Unitario').AsCurrency;
                                                FichaInventarioTotal_Entrada.Value    := FichaInventarioQtde_Entrada.Value * FichaInventarioUnitario_Entrada.Value;

                                                If tSaldo.RecordCount > 0 then begin
                                                   FichaInventarioQtde_Saldo.Value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  + FichaInventarioQtde_Entrada.AsFloat;
                                                   FichaInventarioTotal_Saldo.Value := tSaldo.FieldByName('Total_Saldo').AsFloat + FichaInventarioTotal_Entrada.AsFloat;
                                                end else begin
                                                   FichaInventarioQtde_Saldo.Value  := FichaInventarioQtde_Entrada.AsFloat;
                                                   FichaInventarioTotal_Saldo.Value := FichaInventarioTotal_Entrada.AsFloat;
                                                End;
                                                If FichaInventarioQtde_Saldo.AsFloat > 0 then begin
                                                   FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsFloat / FichaInventarioQtde_Saldo.AsFloat;
                                                End;
                                                FichaInventarioOrigem.Value         := 'NFT';
                                                FichaInventarioProcesso.Value       := NotasTerceirosItensProcesso.Value;
                                                If ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) then begin
                                                   FichaInventarioTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                                End;
                                FichaInventario.Post;
                                Inc(mReg);

                                // Registros de saída da matéria prima na ficha de inventario.
                                tSaldo.SQL.Clear;
                                tSaldo.SQL.Add('SELECT Qtde_Saldo');
                                tSaldo.SQL.Add('      ,Unitario_Saldo');
                                tSaldo.SQL.Add('      ,Total_Saldo');
                                tSaldo.SQL.Add('FROM   FichaInventario');
                                tSaldo.SQL.Add('WHERE  Codigo = :pCodigo');
                                tSaldo.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo)');
                                tSaldo.ParamByName('pCodigo').AsInteger := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                tSaldo.Open;
                                
                                FichaInventario.Append;
                                             FichaInventarioRegistro.Value  := mReg;
                                             FichaInventarioItem.Value      := tItem.FieldByName('Item').AsInteger+1;
                                             FichaInventarioCodigo.Value    := tMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                                             FichaInventarioDescricao.Value := tMateriaPrima.FieldByName('Descricao').AsString;
                                             FichaInventarioUM.Value        := tMateriaPrima.FieldByName('Unidade').AsString;
                                             FichaInventarioCFOP.Value      := ReferenciasFiscaisNatureza_IndSaida.Value;
                                             FichaInventarioHistorico.Value := 'RETORNO MAT.PRIMA INDUSTRIALIZAÇÃO';

                                             Case ReferenciasFiscaisFinalidade_Mercadoria.AsInteger of
                                                  0: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                  1: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                  2: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                  3: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                  4: FichaInventarioEstoque.Value := '1-ARMAZEM';
                                                  5: FichaInventarioEstoque.Value := '2-TERCEIROS';
                                                  6: FichaInventarioEstoque.Value := '0-EMPRESA';
                                                  9: FichaInventarioEstoque.Value := '0-EMPRESA';
                                             End;

                                             FichaInventarioEmissor.Value             := 'T';
                                             FichaInventarioNota.Value                := NotasTerceirosItensNota.AsInteger;
                                             FichaInventarioData.Value                := NotasTerceirosItensData_Entrada.Value;
                                             FichaInventarioES.Value                  := 'S';
                                             FichaInventarioDestinatario_Codigo.Value := NotasTerceirosItensFornecedor.AsInteger;
                                             FichaInventarioDestinatario_Nome.Value   := FornecedoresNome.AsString;

                                             If FornecedoresCNPJ.AsString <> '' then
                                                FichaInventarioDestinatario_CNPJ.Value := FornecedoresCNPJ.AsString
                                             else
                                                FichaInventarioDestinatario_CNPJ.Value := FornecedoresCPF.AsString;

                                             FichaInventarioFinalidade.Value       := ReferenciasFiscaisFinalidade_Mercadoria.AsInteger;
                                             FichaInventarioQtde_Entrada.Value     := 0;
                                             FichaInventarioUnitario_Entrada.Value := 0;
                                             FichaInventarioTotal_Entrada.Value    := 0;

                                             // Caso esteja marcado na materia prima, efetua a conversão de metro quadrado para metro cubico.
                                             FichaInventarioQtde_Saida.Value := NotasTerceirosItensQuantidade.AsFloat;
                                             if tMateriaPrima.FieldByName('Conversao_M2M3').AsBoolean then begin
                                                FichaInventarioQtde_Saida.Value := NotasTerceirosItensQuantidade.AsFloat * tMateriaPrima.FieldByName('Altura').AsFloat;
                                             end;

                                             FichaInventarioUnitario_Saida.Value := tValor.FieldByName('Unitario').AsCurrency;
                                             FichaInventarioTotal_Saida.Value    := FichaInventarioQtde_Saida.Value * FichaInventarioUnitario_Saida.Value;

                                             FichaInventarioQtde_Saldo.Value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  - FichaInventarioQtde_Saida.Value;
                                             FichaInventarioTotal_Saldo.Value := tSaldo.FieldByName('Total_Saldo').AsFloat - FichaInventarioTotal_Saida.AsFloat;

                                             If (FichaInventarioQtde_Saldo.AsCurrency > 0) then
                                                FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsCurrency / FichaInventarioQtde_Saldo.AsFloat
                                             else
                                                FichaInventarioUnitario_Saldo.Value := 0;

                                             FichaInventarioOrigem.Value         := 'NFT';
                                             FichaInventarioProcesso.Value       := NotasTerceirosItensProcesso.Value;
                                             If ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) then begin
                                                FichaInventarioTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                             End;
                                FichaInventario.Post;
                                Inc(mReg);

                                tMateriaPrima.Next;
                          end;
                          NotasTerceirosItens.Next;
                    end;
                 end;
              end;

              // Gerando os lançamentos contabeis dos impostos da nota fiscal de terceiros.
              //LancamentoContabil;
           end;

           NotasTerceiros.Refresh;
           NotasTerceiros.Locate('Nota;Fornecedor;Data_Emissao', VarArrayOf([mNota,mFornecedor,mData]), [loCaseInsensitive]);
      End;

      Screen.Cursor := crDefault;

      LimpaMemoria;
      NotaFiscal_TerceirosItens.Release;
      NotaFiscal_TerceirosItens := nil;
end;

procedure TNotaFiscal_TerceirosItens.DBEdit14Exit(Sender: TObject);
Var
    mVlrIPI : Currency;
begin
     mVlrIPI := dmFiscal.NotasTerceirosItensValor_BCIPI.Value * (dmFiscal.NotasTerceirosItensAliquota_IPI.Value / 100);
     If FormatFloat('###,###,###,##0.00',mVlrIPI) <> FormatFloat('###,###,###,##0.00',dmFiscal.NotasTerceirosItensValor_IPI.Value) Then begin
        ShowMessage('Valor do IPI incorreto, Valor correto é R$'+ FormatFloat('###,###,###,##0.00',mVlrIPI));
     End;
end;

procedure TNotaFiscal_TerceirosItens.cValorICMSExit(Sender: TObject);
Var
    mVlrICMSOper : Currency;
begin
     With dmFiscal do begin
          mVlrICMSOper := (NotasTerceirosItensValor_BCICMSOper.Value * (NotasTerceirosItensAliquota_ICMSOper.Value / 100));
          If FormatFloat('###,###,###,##0.00',mVlrICMSOper ) <> FormatFloat('###,###,###,##0.00',dmFiscal.NotasTerceirosItensValor_ICMSOper.Value) Then begin
             ShowMessage('Valor do ICMS Operacional incorreto, Valor correto é R$'+ FormatFloat('###,###,###,##0.00',mVlrICMSOper));
          End;
          If (NotasTerceirosItensValor_BCICMSOper.Value <> NotasTerceirosItensValor_Liquido.Value) and (NotasTerceirosItensValor_BCICMSOper.Value <> 0) then
             NotasTerceirosItensValor_IsentasICMS.Value := Roundto(NotasTerceirosItensValor_Liquido.Value - NotasTerceirosItensValor_BCICMSOper.Value, -2)
          else begin
             NotasTerceirosItensValor_IsentasICMS.Value := 0;
             NotasTerceirosItensValor_OutrasICMS.Value := NotasTerceirosItensValor_Liquido.Value;
          end;
     End;
end;

procedure TNotaFiscal_TerceirosItens.cAliquotaICMSExit(Sender: TObject);
begin
     dmFiscal.NotasTerceirosItensValor_ICMSOper.Value := (dmFiscal.NotasTerceirosItensValor_BCICMSOper.Value * (dmFiscal.NotasTerceirosItensAliquota_ICMSOper.Value / 100));
end;

procedure TNotaFiscal_TerceirosItens.DBEdit15Exit(Sender: TObject);
begin
     dmFiscal.NotasTerceirosItensValor_IPI.Value := (dmFiscal.NotasTerceirosItensValor_BCIPI.Value * (dmFiscal.NotasTerceirosItensAliquota_IPI.Value / 100));
end;

procedure TNotaFiscal_TerceirosItens.DBEdit9Exit(Sender: TObject);
Var
    mVlrICMSSub : Currency;
begin
      With dmFiscal do begin
           mVlrICMSSub := (NotasTerceirosItensValor_BCICMSSub.Value * (NotasTerceirosItensAliquota_ICMSSub.Value / 100));
           If NotasTerceirosItensValor_ICMSSub.Value <> mVlrICMSSub Then begin
              ShowMessage('Valor do ICMS Substitutivo incorreto, Valor correto é R$'+ FormatFloat('###,###,###,##0.00',mVlrICMSSub));
           End;
      End;
end;

procedure TNotaFiscal_TerceirosItens.cCodigoNaturezaChange(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           cCIAP.Enabled := NaturezaImobilizado.Value;
      End;
end;

procedure TNotaFiscal_TerceirosItens.cBaseCIAPExit(Sender: TObject);
begin
      With Dados, dmFiscal do begin
          If (NotasTerceirosItens.State = dsEdit) or (NotasTerceirosItens.State = dsInsert) then begin
             If NaturezaImobilizado.Value = True then begin
                NotasTerceirosItensCIAP_ValorICMS.Value := Percentual(NotasTerceirosItensCIAP_BCICMS.Value, NotasTerceirosItensCIAP_AliquotaICMS.Value);
             End;
          End;
      End;
end;

procedure TNotaFiscal_TerceirosItens.lNaturezaClick(Sender: TObject);
begin
      Cadastro_NaturezaOperacao := TCadastro_NaturezaOperacao.Create(Self);
      Cadastro_NaturezaOperacao.Caption := Caption;
      Cadastro_NaturezaOperacao.ShowModal;
      Dados.Natureza.Open;
end;

procedure TNotaFiscal_TerceirosItens.cLiquidoChange(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           If (NotasTerceirosItens.State = dsInsert) or (NotasTerceirosItens.State = dsEdit) then begin
              If NaturezaImobilizado.Value = True then begin
                 NotasTerceirosItensCIAP_BCICMS.Value := dmFiscal.NotasTerceirosItensValor_Liquido.Value;
              end;
              NotasTerceirosItensValor_BCIPI.Value := 0;
              NotasTerceirosItensValor_IPI.Value   := 0;
              If NCMIPI.Value > 0 then begin
                 NotasTerceirosItensValor_IPI.Value := Percentual(NotasTerceirosItensValor_Liquido.Value, NotasTerceirosItensAliquota_IPI.Value);
              end else begin
                 NotasTerceirosItensValor_OutrasIPI.Value := NotasTerceirosItensValor_Liquido.Value;
              End;
           end;
      End;
end;

procedure TNotaFiscal_TerceirosItens.DBEdit18Change(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           If (NotasTerceirosItens.State = dsInsert) or (NotasTerceirosItens.State = dsEdit) then begin
              If NaturezaImobilizado.Value = True then begin
                 NotasTerceirosItensCIAP_ValorICMS.Value := Percentual( NotasTerceirosItensCIAP_BCICMS.Value, NotasTerceirosItensCIAP_AliquotaICMS.Value);
              end;
           end;
      End;
end;

procedure TNotaFiscal_TerceirosItens.DBEdit18Exit(Sender: TObject);
begin
      With Dados, dmFiscal do begin
          If (NotasTerceirosItens.State = dsEdit) or (NotasTerceirosItens.State = dsInsert) then begin
             If NaturezaImobilizado.Value = True then begin
                NotasTerceirosItensCIAP_ValorICMS.Value := Percentual(NotasTerceirosItensCIAP_BCICMS.Value, NotasTerceirosItensCIAP_AliquotaICMS.Value);
             end;
          End;
      End;
end;

procedure TNotaFiscal_TerceirosItens.cQuantidadeExit(Sender: TObject);
begin
      With Dados, dmFiscal do begin
//           NotasTerceirosItensValor_Liquido.Value := (NotasTerceirosItensValor_Unitario.Value * NotasTerceirosItensQuantidade.Value) - NotasTerceirosItensValor_Desconto.Value;
         //NotasTerceirosItensValor_Liquido.Value := (NotasTerceirosItensValor_Unitario.Value * NotasTerceirosItensQuantidade.Value);
             NotasTerceirosItensValor_Liquido.Value := ((NotasTerceirosItensValor_Unitario.Value * NotasTerceirosItensQuantidade.Value) - NotasTerceirosItensValor_Desconto.Value);
           
           If NaturezaImobilizado.Value = True then begin
              NotasTerceirosItensCIAP_ValorICMS.Value := Percentual(NotasTerceirosItensCIAP_BCICMS.Value, NotasTerceirosItensCIAP_AliquotaICMS.Value);
           end;
      End;
end;

procedure TNotaFiscal_TerceirosItens.bItensClick(Sender: TObject);
begin
      // Verifica se o período fiscal esta bloqueado.
      tExiste.SQL.Clear;
      tExiste.SQL.Add('SELECT COUNT(*) AS Qtde FROM FechamentoFiscal WHERE Ano = :pAno AND Mes = :pMes AND Fechado = 1');
      tExiste.ParamByName('pAno').AsInteger := YearOf(dmFiscal.NotasTerceirosData_Entrada.Value);
      tExiste.ParamByName('pMes').AsInteger := MonthOf(dmFiscal.NotasTerceirosData_Entrada.Value);
      tExiste.Open;
      If tExiste.FieldByName('Qtde').AsInteger > 0 then begin
         MessageDlg('Não podem ser "Adicionados/Alterados/Excluídos itens desta nota fiscal!'+#13+#13+'Nota Fiscal esta dentro de um período bloqueado!', mtError, [mbOK], 0);
         Abort;
      End;

      Navega.Tag := 1;

      NotaFiscal_TerceirosReferenciaItens := TNotaFiscal_TerceirosReferenciaItens.Create(Self);
      NotaFiscal_TerceirosReferenciaItens.Caption := Caption;
      NotaFiscal_TerceirosReferenciaItens.ShowModal;

      Dados.Produtos.SQL.Clear;
      Dados.Produtos.SQL.Add('SELECT * FROM Produtos WHERE(ISNULL(Desativado,0) <> 1) ORDER BY Descricao_Reduzida');
      Dados.Produtos.Open;
end;

procedure TNotaFiscal_TerceirosItens.bPesqNavClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ControleNavios';
      PesquisaGerais.mCampo  := 'Registro';
      PesquisaGerais.mCampo2 := 'Navio';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Status <> ''ENCERRADO'' ';
      PesquisaGerais.Showmodal;
      dmFiscal.NotasTerceirosItensNavio.value := iif(trim(Clipboard.AsText) <> '', strtoint(Clipboard.AsText), null);
end;

procedure TNotaFiscal_TerceirosItens.DBEdit22Exit(Sender: TObject);
begin
      With dmFiscal do begin
           If NotasTerceirositensValor_Unitario.Value = 0 then
              NotasTerceirositensValor_Unitario.Value := NotasTerceirositensValor_UnitarioOrig.Value;
              
           cValorUnitarioExit(Self);
      End;
end;

procedure TNotaFiscal_TerceirosItens.cBCPISExit(Sender: TObject);
begin
      dmFiscal.NotasTerceirosItensValor_BCCOFINS.Value := dmFiscal.NotasTerceirosItensValor_BCPIS.Value; 
end;

// Geração dos lançamentos contabeis.
procedure TNotaFiscal_TerceirosItens.LancamentoContabil;
begin
     with Dados, dmFiscal, dmContab do begin
          Historicos.SQL.Clear;
          Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Codigo');
          Historicos.Open;

          Lancamentos.SQL.Clear;
          Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE Documento = :pDoc AND Tipo_Documento = ''NT'' AND Data_Documento = :pData');
          Lancamentos.ParamByName('pDoc').AsString := NotasTerceirosNota.AsString;
          Lancamentos.ParamByName('pData').AsDate  := NotasTerceirosData_Emissao.AsDateTime;
          Lancamentos.Execute;
          Lancamentos.SQL.Clear;
          Lancamentos.SQL.Add('SELECT * FROM Lancamentos LAN1 WHERE (SELECT MAX(Registro) FROM Lancamentos) = Registro');
          Lancamentos.Open;

          tLancamento.SQL.Clear;
          tLancamento.SQL.Add('SELECT  Numero   = ISNULL((SELECT MAX(Numero)   FROM Lancamentos WHERE YEAR(Data) = :pAno), 0)+ 1');
          tLancamento.SQL.Add('       ,Registro = ISNULL((SELECT MAX(Registro) FROM Lancamentos), 0)+1');
          tLancamento.ParamByName('pAno').AsInteger := YearOf(NotasTerceirosData_Entrada.AsDateTime);
          tLancamento.Open;

          tTotaliza.SQL.Clear;
          tTotaliza.SQL.Add('SELECT SUM(ISNULL(Valor_IPIOrig, 0)) AS Total_IPI');
          tTotaliza.SQL.Add('      ,SUM(ISNULL(Valor_PISOrig, 0)) AS Total_PIS');
          tTotaliza.SQL.Add('      ,SUM(ISNULL(Valor_COFINSOrig, 0)) AS Total_COFINS');
          tTotaliza.SQL.Add('      ,SUM(ISNULL(Valor_UnitarioOrig, 0) * Quantidade) AS Total_Produtos');
          tTotaliza.SQL.Add('      ,SUM(ISNULL(Valor_Inventario, 0)*Quantidade) AS Total_Estoque');
          tTotaliza.SQL.Add('FROM NotasTerceirosItens');
          tTotaliza.SQL.Add('WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn');
          tTotaliza.ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
          tTotaliza.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.AsDateTime;
          tTotaliza.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
          tTotaliza.Open;

          Fornecedores.Locate('Codigo', NotasTerceirosFornecedor.AsInteger, [loCaseInsensitive]);

          // Lancamentos - ICMS Operacional.
          if (NotasTerceirosValor_ICMSOper.Value > 0) and ((Trim(ReferenciasFiscaisConta_ICMSOper_D.Value) <> '') or (Trim(ReferenciasFiscaisConta_ICMSOper_C.Value) <> '')) then begin
             ChecaConta(ReferenciasFiscaisConta_ICMSOper_D.Value, ReferenciasFiscaisConta_ICMSOper_C.Value);
             if (mContaDebito <> '') or (mContaCredito <> '') then begin
                tLancamento.Open;
                Lancamentos.Append;
                            LancamentosRegistro.Value              := tLancamento.FieldByName('Registro').AsInteger;
                            LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger;
                            LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                            LancamentosConta_Debito.Value          := mContaDebito;
                            LancamentosConta_Credito.Value         := mContaCredito;
                            LancamentosValor.Value                 := NotasTerceirosValor_ICMSOper.Value;
                            LancamentosHistorico_Codigo.Value      := ReferenciasFiscaisHistorico_ICMSOper.Value;
                            LancamentosHistorico_Complemento.Value := MontaHistorico(ReferenciasFiscaisHistorico_ICMSOper.Value);
                            LancamentosDocumento.Value             := NotasTerceirosNota.AsString;
                            LancamentosData_Documento.Value        := NotasTerceirosData_Emissao.Value;
                            LancamentosTipo_Documento.Value        := 'NT';
                            LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                            LancamentosProcesso_Debito.Value       := NotasTerceirosProcesso.AsString;
                            LancamentosOrigem.Value                := 'NF TERCEIROS (ICMS): '+NotasTerceirosNota.AsString;
                            LancamentosRecriar.Value               := true;
                Lancamentos.Post;
                tLancamento.Close;
             end;
          end;
          // Lancamentos - ICMS Substitutivo.
          if (NotasTerceirosValor_ICMSSub.Value > 0) and ((Trim(ReferenciasFiscaisConta_ICMSSub_D.Value) <> '') or (Trim(ReferenciasFiscaisConta_ICMSSub_C.Value) <> '')) then begin
             ChecaConta(ReferenciasFiscaisConta_ICMSSub_D.Value, ReferenciasFiscaisConta_ICMSSub_C.Value);
             if (mContaDebito <> '') or (mContaCredito <> '') then begin
                tLancamento.Open;
                Lancamentos.Append;
                            LancamentosRegistro.Value              := tLancamento.FieldByName('Registro').AsInteger;
                            LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger;
                            LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                            LancamentosConta_Debito.Value          := mContaDebito;
                            LancamentosConta_Credito.Value         := mContaCredito;
                            LancamentosValor.Value                 := NotasTerceirosValor_ICMSSub.Value;
                            LancamentosHistorico_Codigo.Value      := ReferenciasFiscaisHistorico_ICMSSub.Value;
                            LancamentosHistorico_Complemento.Value := MontaHistorico(ReferenciasFiscaisHistorico_ICMSSub.Value);
                            LancamentosDocumento.Value             := NotasTerceirosNota.AsString;
                            LancamentosData_Documento.Value        := NotasTerceirosData_Emissao.Value;
                            LancamentosTipo_Documento.Value        := 'NT';
                            LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                            LancamentosProcesso_Debito.Value       := NotasTerceirosProcesso.AsString;
                            LancamentosOrigem.Value                := 'NF TERCEIROS (ICMS ST): '+NotasTerceirosNota.AsString;
                            LancamentosRecriar.Value               := true;
                Lancamentos.Post;
                tLancamento.Close;
             end;
          end;
          // Lancamentos - IPI.
          If (tTotaliza.FieldByName('Total_IPI').Value > 0) and ( (Trim(ReferenciasFiscaisConta_IPI_D.Value) <> '') or (Trim(ReferenciasFiscaisConta_IPI_C.Value) <> '') ) then begin
             ChecaConta(ReferenciasFiscaisConta_IPI_D.Value, ReferenciasFiscaisConta_IPI_C.Value);
             If (mContaDebito <> '') or (mContaCredito <> '') then begin
                tLancamento.Open;
                Lancamentos.Append;
                            LancamentosRegistro.Value              := tLancamento.FieldByName('Registro').AsInteger;
                            LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger;
                            LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                            LancamentosConta_Debito.Value          := mContaDebito;
                            LancamentosConta_Credito.Value         := mContaCredito;
                            LancamentosValor.Value                 := tTotaliza.FieldByName('Total_IPI').Value;
                            LancamentosHistorico_Codigo.Value      := ReferenciasFiscaisHistorico_IPI.Value;
                            LancamentosHistorico_Complemento.Value := MontaHistorico(ReferenciasFiscaisHistorico_IPI.Value);
                            LancamentosDocumento.Value             := NotasTerceirosNota.AsString;
                            LancamentosData_Documento.Value        := NotasTerceirosData_Emissao.Value;
                            LancamentosTipo_Documento.Value        := 'NT';
                            LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                            LancamentosProcesso_Debito.Value       := NotasTerceirosProcesso.AsString;
                            LancamentosOrigem.Value                := 'NF TERCEIROS (IPI): '+NotasTerceirosNota.AsString;
                            LancamentosRecriar.Value               := true;
                Lancamentos.Post;
                tLancamento.Close;
             End;
          End;
          // Lancamentos - PIS.
          If (tTotaliza.FieldByName('Total_PIS').Value > 0) and ( (Trim(ReferenciasFiscaisConta_PIS_D.Value) <> '') or (Trim(ReferenciasFiscaisConta_PIS_C.Value) <> '') ) then begin
             ChecaConta(ReferenciasFiscaisConta_PIS_D.Value, ReferenciasFiscaisConta_PIS_C.Value);
             If (mContaDebito <> '') or (mContaCredito <> '') then begin
                tLancamento.Open;
                Lancamentos.Append;
                            LancamentosRegistro.Value              := tLancamento.FieldByName('Registro').AsInteger;
                            LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger;
                            LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                            LancamentosConta_Debito.Value          := mContaDebito;
                            LancamentosConta_Credito.Value         := mContaCredito;
                            LancamentosValor.Value                 := tTotaliza.FieldByName('Total_PIS').Value;
                            LancamentosHistorico_Codigo.Value      := ReferenciasFiscaisHistorico_PIS.Value;
                            LancamentosHistorico_Complemento.Value := MontaHistorico(ReferenciasFiscaisHistorico_PIS.Value);
                            LancamentosDocumento.Value             := NotasTerceirosNota.AsString;
                            LancamentosData_Documento.Value        := NotasTerceirosData_Emissao.Value;
                            LancamentosTipo_Documento.Value        := 'NT';
                            LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                            LancamentosProcesso_Debito.Value       := NotasTerceirosProcesso.AsString;
                            LancamentosOrigem.Value                := 'NF TERCEIROS (PIS): '+NotasTerceirosNota.AsString;
                            LancamentosRecriar.Value               := true;
                Lancamentos.Post;
                tLancamento.Close;
             End;
          End;
          // Lancamentos - COFINS.
          If (tTotaliza.FieldByName('Total_COFINS').Value > 0) and ( (Trim(ReferenciasFiscaisConta_COFINS_D.Value) <> '') or (Trim(ReferenciasFiscaisConta_COFINS_C.Value) <> '') ) then begin
             ChecaConta(ReferenciasFiscaisConta_COFINS_D.Value, ReferenciasFiscaisConta_COFINS_C.Value);
             If (mContaDebito <> '') or (mContaCredito <> '') then begin
                tLancamento.Open;
                Lancamentos.Append;
                            LancamentosRegistro.Value              := tLancamento.FieldByName('Registro').AsInteger;
                            LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger;
                            LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                            LancamentosConta_Debito.Value          := mContaDebito;
                            LancamentosConta_Credito.Value         := mContaCredito;
                            LancamentosValor.Value                 := tTotaliza.FieldByName('Total_COFINS').Value;
                            LancamentosHistorico_Codigo.Value      := ReferenciasFiscaisHistorico_COFINS.Value;
                            LancamentosHistorico_Complemento.Value := MontaHistorico(ReferenciasFiscaisHistorico_COFINS.Value);
                            LancamentosDocumento.Value             := NotasTerceirosNota.AsString;
                            LancamentosData_Documento.Value        := NotasTerceirosData_Emissao.Value;
                            LancamentosTipo_Documento.Value        := 'NT';
                            LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                            LancamentosProcesso_Debito.Value       := NotasTerceirosProcesso.AsString;
                            LancamentosOrigem.Value                := 'NF TERCEIROS (COFINS): '+NotasTerceirosNota.AsString;
                            LancamentosRecriar.Value               := true;
                Lancamentos.Post;
                tLancamento.Close;
             End;
          End;
          // Lancamentos - Entrada (Total dos Produtos).
          If (tTotaliza.FieldByName('Total_Produtos').Value > 0) and ( (Trim(ReferenciasFiscaisConta_TotalProdutos_D.Value) <> '') or (Trim(ReferenciasFiscaisConta_TotalProdutos_C.Value) <> '') ) then begin
             ChecaConta(ReferenciasFiscaisConta_TotalProdutos_D.Value, ReferenciasFiscaisConta_TotalProdutos_C.Value);
             If (mContaDebito <> '') or (mContaCredito <> '') then begin
                 tLancamento.Open;
                 Lancamentos.Append;
                             LancamentosRegistro.Value              := tLancamento.FieldByName('Registro').AsInteger;
                             LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger;
                             LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                             LancamentosConta_Debito.Value          := mContaDebito;
                             LancamentosConta_Credito.Value         := mContaCredito;
                             LancamentosValor.Value                 := tTotaliza.FieldByName('Total_Produtos').Value;
                             LancamentosHistorico_Codigo.Value      := ReferenciasFiscaisHistorico_TotalProdutos.Value;
                             LancamentosHistorico_Complemento.Value := MontaHistorico(ReferenciasFiscaisHistorico_TotalProdutos.Value);
                             LancamentosDocumento.Value             := NotasTerceirosNota.AsString;
                             LancamentosData_Documento.Value        := NotasTerceirosData_Emissao.Value;
                             LancamentosTipo_Documento.Value        := 'NT';
                             LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                             LancamentosProcesso_Debito.Value       := NotasTerceirosProcesso.AsString;
                             LancamentosOrigem.Value                := 'NF TERCEIROS (PRODUTOS): '+NotasTerceirosNota.AsString;
                             LancamentosRecriar.Value               := true;
                 Lancamentos.Post;
                 tLancamento.Close;
             End;
          End;
          // Lancamentos - Entrada (Total da Nota Fiscal).
          If (NotasTerceiros.FieldByName('Valor_TotalNota').Value > 0) and ( (Trim(ReferenciasFiscaisConta_TotalNota_D.Value) <> '') or (Trim(ReferenciasFiscaisConta_TotalNota_C.Value) <> '') ) then begin
             ChecaConta(ReferenciasFiscaisConta_TotalNota_D.Value, ReferenciasFiscaisConta_TotalNota_C.Value);
             If (mContaDebito <> '') or (mContaCredito <> '') then begin
                 tLancamento.Open;
                 Lancamentos.Append;
                             LancamentosRegistro.Value              := tLancamento.FieldByName('Registro').AsInteger;
                             LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger;
                             LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                             LancamentosConta_Debito.Value          := mContaDebito;
                             LancamentosConta_Credito.Value         := mContaCredito;
                             LancamentosValor.Value                 := NotasTerceiros.FieldByName('Valor_TotalNota').Value;
                             LancamentosHistorico_Codigo.Value      := ReferenciasFiscaisHistorico_TotalNota.Value;
                             LancamentosHistorico_Complemento.Value := MontaHistorico(ReferenciasFiscaisHistorico_TotalNota.Value);
                             LancamentosDocumento.Value             := NotasTerceirosNota.AsString;
                             LancamentosData_Documento.Value        := NotasTerceirosData_Emissao.Value;
                             LancamentosTipo_Documento.Value        := 'NT';
                             LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                             LancamentosProcesso_Debito.Value       := NotasTerceirosProcesso.AsString;
                             LancamentosOrigem.Value                := 'NF TERCEIROS (TOTAL DA NOTA): '+NotasTerceirosNota.AsString;
                             LancamentosRecriar.Value               := true;
                 Lancamentos.Post;
                 tLancamento.Close;
             End;
          End;
          // Lancamentos - Estoque.
          if (ReferenciasFiscaisMovimenta_Estoque.AsBoolean) and (tTotaliza.FieldByName('Total_Estoque').Value > 0) then begin
             if (Trim(ReferenciasFiscaisConta_Estoque_D.Value) <> '') or (Trim(ReferenciasFiscaisConta_Estoque_C.Value) <> '') then begin
                ChecaConta(ReferenciasFiscaisConta_Estoque_D.Value, ReferenciasFiscaisConta_Estoque_C.Value);
                if (mContaDebito <> '') or (mContaCredito <> '') then begin
                   tLancamento.Open;
                   Lancamentos.Append;
                               LancamentosRegistro.Value              := tLancamento.FieldByName('Registro').AsInteger;
                               LancamentosNumero.Value                := tLancamento.FieldByName('Numero').AsInteger;
                               LancamentosData.Value                  := NotasTerceirosData_Entrada.Value;
                               LancamentosConta_Debito.Value          := mContaDebito;
                               LancamentosConta_Credito.Value         := mContaCredito;
                               LancamentosValor.Value                 := tTotaliza.FieldByName('Total_Estoque').Value;
                               LancamentosHistorico_Codigo.Value      := ReferenciasFiscaisHistorico_Estoque.Value;
                               LancamentosHistorico_Complemento.Value := MontaHistorico(ReferenciasFiscaisHistorico_Estoque.Value);
                               LancamentosDocumento.Value             := NotasTerceirosNota.AsString;
                               LancamentosData_Documento.Value        := NotasTerceirosData_Emissao.Value;
                               LancamentosTipo_Documento.Value        := 'NT';
                               LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                               LancamentosProcesso_Debito.Value       := NotasTerceirosProcesso.AsString;
                               LancamentosOrigem.Value                := 'NF TERCEIROS (ESTOQUE): '+NotasTerceirosNota.AsString;
                               LancamentosRecriar.Value               := true;
                   Lancamentos.Post;
                   tLancamento.Close;
                end;
             end;
          end;
     end;
end;

procedure TNotaFiscal_TerceirosItens.ChecaConta(ContaD:String; ContaC:String);
begin
      mContaDebito  := '';
      mContaCredito := '';
      If (ApenasNumeros(ContaD) <> '') then mContaDebito  := Trim(ContaD);
      If (ApenasNumeros(ContaC) <> '') then mContaCredito := Trim(ContaC);
      // Debitos.
      If ContaD = 'PROCESSO'   then mContaDebito  := Trim(Dados.ProcessosDOCConta_Despesas.Value);
      If ContaD = 'CLIENTE'    then mContaDebito  := Trim(Dados.ClientesConta_Ativo.AsString);
      If ContaD = 'FORNECEDOR' then mContaDebito  := Trim(Dados.FornecedoresConta.AsString);
      If ContaD = 'DEVOLUÇÃO ' then mContaDebito  := Trim(Dados.FornecedoresConta_Devolucao.AsString);
      If ContaD = 'BANCO'      then mContaDebito  := Trim(Dados.BancosPlano_Contas.Value);
      // Creditos.
      If ContaC = 'PROCESSO'   then mContaCredito := Trim(Dados.ProcessosDOCConta_Despesas.Value);
      If ContaC = 'CLIENTE'    then mContaCredito := Trim(Dados.ClientesConta_Ativo.AsString);
      If ContaC = 'FORNECEDOR' then mContaCredito := Trim(Dados.FornecedoresConta.AsString);
      If ContaC = 'DEVOLUÇÃO ' then mContaCredito := Trim(Dados.FornecedoresConta_Devolucao.AsString);
      If ContaC = 'BANCO'      then mContaCredito := Trim(Dados.BancosPlano_Contas.Value);
end;

Function TNotaFiscal_TerceirosItens.MontaHistorico(Historico: integer):String;
begin
      with Dados, dmContab, dmFiscal do begin
           if Trim(NotasTerceirosProcesso.AsString) <> '' then begin
              ProcessosDOC.SQL.Clear;
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE Processo = '+QuotedStr(NotasTerceirosProcesso.AsString));
              ProcessosDOC.Open;
           end;
           if Historicos.Locate('Codigo', Historico, [loCaseInsensitive]) then begin
              Result := ComplementoHistorico(
                                             HistoricosMacro.Value
                                            ,FornecedoresNome.Value
                                            ,NotasTerceirosProcesso.Value
                                            ,ProcessosDOCNumero_Declaracao.AsString
                                            ,''
                                            ,'Nota Fiscal'
                                            ,NotasTerceirosNota.AsString
                                            ,NotasTerceirosData_Emissao.AsString
                                            ,''
                                            ,''
                                            );
           end;
      end;
end;

procedure TNotaFiscal_TerceirosItens.bDetalheClick(Sender: TObject);
begin
     NotaFiscal_TerceirosItensDetalhe := TNotaFiscal_TerceirosItensDetalhe.Create(Self);
     NotaFiscal_TerceirosItensDetalhe.Caption := Caption;
     NotaFiscal_TerceirosItensDetalhe.ShowModal;
end;

procedure TNotaFiscal_TerceirosItens.cCodigoChange(Sender: TObject);
begin
      cQuantidade.Enabled := not bDetalhe.Enabled;
end;

procedure TNotaFiscal_TerceirosItens.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
Var
    curPos   : LongInt;
    gridCoord: TGridCoord;
    mTexto   : String;
    i        : Integer;
    mTam     : Integer;
begin
      With HintInfo do begin
           If HintControl is TDBGrid then begin
              With TDBGridDescendant(HintControl),gridCoord do begin
                   Application.HideHint;
                   gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                   Try
                      curPos := DataLink.ActiveRecord;
                      try
                         DataLink.ActiveRecord := y-1;
                         If not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                            HintStr := '';
                            With Dados, dmFiscal do begin
                                 mTexto := Dados.ProdutosDescricao.Value;
                                 mTexto := RemoveCaracter('<{'+Produtos.FieldByName('Codigo').AsString+'}>', '', mTexto);
                                 mTam   := 1;
                                 For i := 1 to Length(mTexto) do begin
                                     HintStr := HintStr + Copy(mTexto, i, 1);
                                     Inc(mTam);
                                     If mTam = 50 then begin
                                        HintStr := HintStr + #13;
                                        mtam    := 1;
                                     End;
                                 End;
                            End;
                         end else
                            HintStr := '\';
                      finally
                         DataLink.ActiveRecord := CurPos;
                      end;
                      CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                   except
                      CanShow := False
                   End;
              End;
           End;
      End;
end;

procedure TNotaFiscal_TerceirosItens.FormCreate(Sender: TObject);
begin
{
      if (Screen.Width < 857) then begin
         ScaleBy(80, 100);
      end;
      if Screen.Height < 768 then begin
         ScaleBy(90, 100);
      end;
}
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
end;

procedure TNotaFiscal_TerceirosItens.TravaInvClick(Sender: TObject);
begin
      dmFiscal.NotasTerceirosItensTrava_ValorInv.Value := not TravaInv.StateOn;
end;

end.

