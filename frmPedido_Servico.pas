unit frmPedido_Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.ComCtrls, RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, RXDBCtrl, Mask,
  Buttons, DB, FUNCOES, DBAccess, MSAccess, ClipBrd, DateUtils, Menus, system.UITypes, Grids, DBGrids, RxCurrEdit, MemDS, RxToolEdit, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc, ACBrBase, ACBrDFe, ACBrNFSe, ACBrNFSeX;

type
  TPedido_Servico = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tPedido: TMSQuery;
    tPedidoPedido: TSmallintField;
    bDuplicatas: TButton;
    tProvisao: TMSQuery;
    tLancamentos: TMSQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    StaticText8: TStaticText;
    StaticText4: TStaticText;
    cCliente: TDBLookupComboBox;
    cPedido: TDBEdit;
    lCliente: TStaticText;
    StaticText11: TStaticText;
    StaticText9: TStaticText;
    cDescricao: TDBMemo;
    StaticText24: TStaticText;
    cValorServico: TDBEdit;
    cImposto01: TDBLookupComboBox;
    cValor_Adicional01: TDBEdit;
    cImposto02: TDBLookupComboBox;
    cValor_Adicional02: TDBEdit;
    cImposto03: TDBLookupComboBox;
    cValor_Adicional03: TDBEdit;
    cImposto04: TDBLookupComboBox;
    cValor_Adicional04: TDBEdit;
    cImposto05: TDBLookupComboBox;
    cValor_Adicional05: TDBEdit;
    cImposto06: TDBLookupComboBox;
    cValor_Adicional06: TDBEdit;
    cAliquota_Adicional01: TDBEdit;
    cAliquota_Adicional02: TDBEdit;
    cAliquota_Adicional03: TDBEdit;
    cAliquota_Adicional04: TDBEdit;
    cAliquota_Adicional05: TDBEdit;
    cAliquota_Adicional06: TDBEdit;
    StaticText10: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText2: TStaticText;
    cPercentualDesconto: TDBEdit;
    cValorDesconto: TDBEdit;
    cTotalDesconto: TCurrencyEdit;
    cClienteCodigo: TDBEdit;
    lReferencia: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    cReferencia: TDBEdit;
    StaticText1: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    cNota: TDBEdit;
    StaticText6: TStaticText;
    cDataEmissao: TDBDateEdit;
    Grade: TDBGrid;
    PopupMenu1: TPopupMenu;
    ExcluirNotaFiscal1: TMenuItem;
    Cancelar1: TMenuItem;
    lTitulo: TRxLabel;
    RxLabel3: TRxLabel;
    Image1: TImage;
    Label4: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    cValorISS: TDBText;
    Label1: TLabel;
    cTotalImpostos: TLabel;
    Label5: TLabel;
    cTotalNota: TDBText;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    StaticText12: TStaticText;
    cClass: TDBLookupComboBox;
    bImportar: TButton;
    cXML: TOpenDialog;
    Panel3: TPanel;
    Image2: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label6: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText4: TDBText;
    StaticText7: TStaticText;
    StaticText13: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    DBMemo2: TDBMemo;
    StaticText17: TStaticText;
    DBEdit2: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBLookupComboBox8: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    DBLookupComboBox9: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    DBLookupComboBox10: TDBLookupComboBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    StaticText18: TStaticText;
    DBLookupComboBox11: TDBLookupComboBox;
    StaticText19: TStaticText;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    CurrencyEdit1: TCurrencyEdit;
    DBEdit17: TDBEdit;
    StaticText20: TStaticText;
    DBLookupComboBox12: TDBLookupComboBox;
    DBEdit18: TDBEdit;
    StaticText21: TStaticText;
    DBLookupComboBox13: TDBLookupComboBox;
    DBMemo3: TDBMemo;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    DBEdit19: TDBEdit;
    StaticText25: TStaticText;
    DBDateEdit1: TDBDateEdit;
    StaticText26: TStaticText;
    DBLookupComboBox14: TDBLookupComboBox;
    bEnviar: TButton;
    ACBrNFSeX1: TACBrNFSeX;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cImposto01Click(Sender: TObject);
    procedure cImposto02Click(Sender: TObject);
    procedure cImposto03Click(Sender: TObject);
    procedure cImposto04Click(Sender: TObject);
    procedure cImposto05Click(Sender: TObject);
    procedure cImposto06Click(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SomaImpostos;
    procedure cAliquota_Adicional01Change(Sender: TObject);
    procedure cValor_Adicional01Change(Sender: TObject);
    procedure cValorServicoChange(Sender: TObject);
    procedure cPercentualDescontoExit(Sender: TObject);
    procedure cValorDescontoExit(Sender: TObject);
    procedure cValorServicoExit(Sender: TObject);
    procedure cAliquota_Adicional02Change(Sender: TObject);
    procedure cAliquota_Adicional03Change(Sender: TObject);
    procedure cAliquota_Adicional04Change(Sender: TObject);
    procedure cAliquota_Adicional05Change(Sender: TObject);
    procedure cAliquota_Adicional06Change(Sender: TObject);
    procedure cValor_Adicional02Change(Sender: TObject);
    procedure cValor_Adicional03Change(Sender: TObject);
    procedure cValor_Adicional04Change(Sender: TObject);
    procedure cValor_Adicional05Change(Sender: TObject);
    procedure cValor_Adicional06Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lClienteClick(Sender: TObject);
    procedure lFormaPgtoClick(Sender: TObject);
    procedure cReferenciaChange(Sender: TObject);
    procedure cImposto01Exit(Sender: TObject);
    procedure cImposto02Exit(Sender: TObject);
    procedure cImposto03Exit(Sender: TObject);
    procedure cImposto04Exit(Sender: TObject);
    procedure cImposto05Exit(Sender: TObject);
    procedure cImposto06Exit(Sender: TObject);
    procedure lReferenciaClick(Sender: TObject);
    procedure bDuplicatasClick(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure PegaAdicional;
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure SalvarNota;
//    procedure LancamentoContabil;
    procedure ExcluirNotaFiscal1Click(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mTotalImpostos: Currency;
    mParcelas     : Integer;
    mVencimentos  : Array[1..12] of String;
    mValorParcelas: Array[1..12] of Real;
    mCodigos      : Array[1..5] of String;
  end;

var
  Pedido_Servico: TPedido_Servico;

implementation

uses frmDados, frmMenu_Principal, frmCadastro_Clientes, frmDMFiscal, frmCadastro_ModalidadesPagamento, frmModalidadePgto_PedidoParcelas,
     frmCadastro_CentroCusto, frmConfig_TipoNotaTerceiros, frmDMContab, frmPedido_ServicoXML, frmUtilitarios_Importar_NFe_Terceiros;

{$R *.dfm}

procedure TPedido_Servico.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal do Begin
           PedidoServico.SQL.Clear;
           PedidoServico.SQL.Add('SELECT * FROM PedidosServico');
           PedidoServico.Open;

           NotasServico.SQL.Clear;
           NotasServico.SQL.Add('SELECT * FROM NotasServico ORDER BY Data_Emissao Desc');
           NotasServico.Open;

           PedidoServicoParcelas.SQL.Clear;
           PedidoServicoParcelas.SQL.Add('SELECT * FROM PedidoServicoParcelas WHERE (Pedido = :pPedido)');
           PedidoServicoParcelas.ParamByName('pPedido').AsInteger := PedidosNumero.Value;
           PedidoServicoParcelas.Open;

           Servicos.SQL.Clear;
           Servicos.SQL.Add('SELECT * FROM Servicos ORDER BY Descricao,Codigo');
           Servicos.Open;

           Impostos.SQL.Clear;
           Impostos.SQl.Add('SELECT * FROM Impostos');
           Impostos.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Ativo = 1) ORDER BY Nome');
           Clientes.Open;

           ModalidadesPgto.Open;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) AND (Servico = 1) ORDER BY Descricao_NF');
           Natureza.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE (Tipo = :pProcesso) ORDER BY Processo');
           ProcessosDOC.ParamByName('pProcesso').AsString := 'IMPORTAÇÃO';
           ProcessosDOC.Open;
           ProcessosDOCNumero_Declaracao.EditMask := '99/9999999-9;0; ';

           tPedido.SQL.Clear;
           tPedido.SQL.Add('SELECT MAX(Numero) AS Pedido FROM PedidosServico');

//           ReferenciasFiscais.SQL.Clear;
//           ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE Ativo = 1 AND Servico IS NOT NULL AND SUBSTRING(Natureza_Dentro, 1, 1) = ''5'' ORDER BY Descricao');
//           ReferenciasFiscais.Open;
           with ReferenciasFiscais do begin 
                sql.Clear;
                sql.Add('select *');
                sql.Add('from ReferenciasFiscais');
                sql.Add('where Ativo = 1');
                sql.add('and Servico is not null');
                sql.add('and ((select Saida_Entrada from Cybersoft_Cadastros.dbo.Natureza where Codigo = Natureza_Dentro) = 1');
                sql.add('     or(select Saida_Entrada from Cybersoft_Cadastros.dbo.Natureza where Codigo = Natureza_Fora) = 1)');
                sql.Add('order by Descricao');
                open;
           end;

           CentroCusto.SQL.Clear;
           CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
           CentroCusto.Open;

           Configuracao.Open;

           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos WHERE Desativado <> 1 ORDER BY Nome');
           Bancos.Open;

           ServicosClass.SQL.Clear;
           ServicosClass.SQL.Add('SELECT * FROM ServicosClass ORDER BY Descricao');
           ServicosClass.Open;
      End;
      SomaImpostos;
      Screen.Cursor := crDefault;
      PageControl1.ActivePageIndex := 0;
end;

procedure TPedido_Servico.bImportarClick(Sender: TObject);
Var
    i: Integer;
    mNotaXML: TEdit;
begin
     with Dados, dmFiscal do begin
          cXML.Execute;
          if cXML.Files.Count > 0 then begin
             Pedido_ServicoXML         := TPedido_ServicoXML.Create(Self);
             Pedido_ServicoXML.Caption := Caption;

             // Preenchendo o vetor com os nomes dos arquivos "XML".
             for i := 0 to pred(cXML.Files.Count) do begin
                 Pedido_ServicoXML.cNotas.Items.Assign(cXML.Files);
             end;
             //Pedido_ServicoXML .mTamanho := cXML.Files.Count;
             Pedido_ServicoXML .ShowModal;
             
             with NotasServico do begin
                  sql.Clear;
                  sql.Add('select * from NotasServico order by Data_Emissao Desc');
                  open;
             end;
          end;
          bDuplicatas.Enabled := (dmFiscal.NotasTerceirosValor_TotalNota.Value > 0);
     end;
end;

procedure TPedido_Servico.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TPedido_Servico.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         PageControl1.ActivePageIndex := 0; 
         Panel2.Enabled := True;
         cNota.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled := False;
      End;
      SomaImpostos;
      Screen.Cursor := crDefault;

      // Delete pedidos com nota fiscal informada.
      With Dados do begin
           If (PedidoServicoNota.Value > 0) and (PedidoServico.State <> dsInsert) and (PedidoServico.State <> dsEdit) then
              PedidoServico.Delete;
      End;
end;

procedure TPedido_Servico.cImposto01Click(Sender: TObject);
begin
       Dados.PedidoServicoAliquota_Adicional01.Value := Dados.ImpostosValor.Value;
       Dados.PedidoServicoValor_Adicional01.Value    := cTotalDesconto.Value * ((Dados.PedidoServicoAliquota_Adicional01.Value)/100);
       SomaImpostos;
end;

procedure TPedido_Servico.cImposto02Click(Sender: TObject);
begin
       Dados.PedidoServicoAliquota_Adicional02.Value := Dados.ImpostosValor.Value;
       Dados.PedidoServicoValor_Adicional02.Value    := cTotalDesconto.Value * ((Dados.PedidoServicoAliquota_Adicional02.Value)/100);
       SomaImpostos;
end;

procedure TPedido_Servico.cImposto03Click(Sender: TObject);
begin
       Dados.PedidoServicoAliquota_Adicional03.Value := Dados.ImpostosValor.Value;
       Dados.PedidoServicoValor_Adicional03.Value    := cTotalDesconto.Value * ((Dados.PedidoServicoAliquota_Adicional03.Value)/100);
       SomaImpostos;
end;

procedure TPedido_Servico.cImposto04Click(Sender: TObject);
begin
       Dados.PedidoServicoAliquota_Adicional04.Value := Dados.ImpostosValor.Value;
       Dados.PedidoServicoValor_Adicional04.Value    := cTotalDesconto.Value * ((Dados.PedidoServicoAliquota_Adicional04.Value)/100);
       SomaImpostos;
end;

procedure TPedido_Servico.cImposto05Click(Sender: TObject);
begin
       Dados.PedidoServicoAliquota_Adicional05.Value := Dados.ImpostosValor.Value;
       Dados.PedidoServicoValor_Adicional05.Value    := cTotalDesconto.Value * ((Dados.PedidoServicoAliquota_Adicional05.Value)/100);
       SomaImpostos;
end;

procedure TPedido_Servico.cImposto06Click(Sender: TObject);
begin
       Dados.PedidoServicoAliquota_Adicional06.Value := Dados.ImpostosValor.Value;
       Dados.PedidoServicoValor_Adicional06.Value    := cTotalDesconto.Value * ((Dados.PedidoServicoAliquota_Adicional06.Value)/100);
       SomaImpostos;
end;

procedure TPedido_Servico.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) then begin
              If (PedidoServicoNota.Value > 0) and (Trim(RemoveCaracter('/', '', PedidoServicoData_Emissao.AsString)) = '') then begin
                 MessageDlg('Erro!'+#13+#13+'Se o número da nota fiscal é informado a data da emissão também deve ser.', mtError, [mbOK], 0);
                 cDataEmissao.SetFocus;
                 Abort;
              End;
              If (PedidoServicoReferencia_Fiscal.AsInteger = 0) then begin
                 MessageDlg('Erro!'+#13+#13+'"Referência Fiscal" é campo obrigatório.', mtError, [mbOK], 0);
                 cReferencia.SetFocus;
                 Abort;
              End;
              If (PedidoServicoCliente.AsInteger = 0) then begin
                 MessageDlg('Erro!'+#13+#13+'"Cliente" é campo obrigatório.', mtError, [mbOK], 0);
                 cCliente.SetFocus;
                 Abort;
              End;
              If (PedidoServicoValor_Servico.AsFloat <= 0) then begin
                 MessageDlg('Erro!'+#13+#13+'"Valor do Serviço" é campo obrigatório.', mtError, [mbOK], 0);
                 cValorServico.SetFocus;
                 Abort;
              End;
              {
              If trim(PedidoServicoClassificacao_Servico.asstring) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'"Classificação do Serviço" é campo obrigatório.', mtError, [mbOK], 0);
                 cClass.SetFocus;
                 Abort;
              End;
              }
              PedidoServicoAliquota_PIS.Value     := ServicosAliquota_PIS.Value;
              PedidoServicoAliquota_COFINS.Value  := ServicosAliquota_COFINS.Value;
              PedidoServicoTotal_Dedutiveis.Value := PedidoServicoValor_Adicional01.Value + PedidoServicoValor_Adicional02.Value + PedidoServicoValor_Adicional03.Value +
                                                     PedidoServicoValor_Adicional04.Value + PedidoServicoValor_Adicional05.Value + PedidoServicoValor_Adicional06.Value;
              PedidoServicoTotal_Servicos.Value   := PedidoServicoValor_Servico.Value; 

              If ClientesEstado.Value <> EmpresasEstado.Value then begin
                 PedidoServicoNatureza_Operacao.Value := ReferenciasFiscaisNatureza_Fora.Value
              end else begin
                 PedidoServicoNatureza_Operacao.Value := ReferenciasFiscaisNatureza_Dentro.Value;
              End;
              PedidoServicoServico.Value := ReferenciasFiscaisServico.Value;

              If (PedidoServico.State = dsInsert) then begin
                 tPedido.Open;
                         PedidoServicoNumero.Value := tPedidoPedido.Value + 1;
                 tPedido.Close;
              End;

              // Caso seja informado o numero da nota fiscal copia o pedido para a tabela de notas.
              If PedidoServicoNota.AsInteger > 0 then SalvarNota;
           End;
      End;
end;

procedure TPedido_Servico.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados, dmFiscal, nil, nil);

      LimpaMemoria;
      Pedido_Servico.Release;
      Pedido_Servico := nil;
end;

procedure TPedido_Servico.SomaImpostos;
begin
     With Dados do Begin
          // Limpando os campos dos valores adicionais.
          If (PedidoServico.State = dsInsert) or (PedidoServico.State = dsEdit) then begin
             If cImposto01.Text = '' then begin
                PedidoServicoValor_Adicional01.Value    := 0;
                PedidoServicoAliquota_Adicional01.Value := 0;
             End;
             If cImposto02.Text = '' then begin
                PedidoServicoValor_Adicional02.Value    := 0;
                PedidoServicoAliquota_Adicional02.Value := 0;
             End;
             If cImposto03.Text = '' then begin
                PedidoServicoValor_Adicional03.Value    := 0;
                PedidoServicoAliquota_Adicional03.Value := 0;
             End;
             If cImposto04.Text = '' then begin
                PedidoServicoValor_Adicional04.Value    := 0;
                PedidoServicoAliquota_Adicional04.Value := 0;
             End;
             If cImposto05.Text = '' then begin
                PedidoServicoValor_Adicional05.Value    := 0;
                PedidoServicoAliquota_Adicional05.Value := 0;
             End;
             If cImposto06.Text = '' then begin
                PedidoServicoValor_Adicional06.Value    := 0;
                PedidoServicoAliquota_Adicional06.Value := 0;
             End;
          End;

          cTotalDesconto.Value   := PedidoServicoValor_Servico.Value - PedidoServicoDesconto_Valor.Value;
          mTotalImpostos         := PedidoServicoValor_Adicional01.Value+PedidoServicoValor_Adicional02.Value+
                                    PedidoServicoValor_Adicional03.Value+PedidoServicoValor_Adicional04.Value+
                                    PedidoServicoValor_Adicional05.Value+PedidoServicoValor_Adicional06.Value;
          cTotalImpostos.Caption := FormatFloat('###,###,###,##0.00', mTotalImpostos);

          If (PedidoServico.State = dsEdit) or (PedidoServico.State = dsInsert) then begin
             If ReferenciasFiscaisSomar_ImpostosServico.AsBoolean = false then
                PedidoServicoTotal_Nota.Value := cTotalDesconto.Value - mTotalImpostos
             else
                PedidoServicoTotal_Nota.Value := cTotalDesconto.Value + mTotalImpostos;
          End;
    End;
end;

procedure TPedido_Servico.cAliquota_Adicional01Change(Sender: TObject);
begin
       SomaImpostos;
end;

procedure TPedido_Servico.cValor_Adicional01Change(Sender: TObject);
begin
       SomaImpostos;
end;

procedure TPedido_Servico.cValorServicoChange(Sender: TObject);
Var
    mLiga : Boolean;
begin
      mLiga := False;
      If ( (cValorServico.Text <> '') and (StrtoFloat(RemoveCaracter('.','',cValorServico.Text)) <> 0) ) then mLiga := True;

      cImposto01.Enabled         := mLiga;
      cValor_Adicional01.Enabled := mLiga;
      cImposto02.Enabled         := mLiga;
      cValor_Adicional02.Enabled := mLiga;
      cImposto03.Enabled         := mLiga;
      cValor_Adicional03.Enabled := mLiga;
      cImposto04.Enabled         := mLiga;
      cValor_Adicional04.Enabled := mLiga;
      cImposto05.Enabled         := mLiga;
      cValor_Adicional05.Enabled := mLiga;
      cImposto06.Enabled         := mLiga;
      cValor_Adicional06.Enabled := mLiga;
end;

procedure TPedido_Servico.cPercentualDescontoExit(Sender: TObject);
begin
      With Dados do begin
           If (PedidoServico.State = dsEdit) or (PedidoServico.State = dsInsert) then begin
              PedidoServicoDesconto_Valor.Value := PedidoServicoValor_Servico.Value * (PedidoServicoDesconto_Percentual.Value/100);
              cTotalDesconto.Value              := PedidoServicoValor_Servico.Value - PedidoServicoDesconto_Valor.Value;

              PedidoServicoValor_Adicional01.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional01.Value)/100);
              PedidoServicoValor_Adicional02.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional02.Value)/100);
              PedidoServicoValor_Adicional03.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional03.Value)/100);
              PedidoServicoValor_Adicional04.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional04.Value)/100);
              PedidoServicoValor_Adicional05.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional05.Value)/100);
              PedidoServicoValor_Adicional06.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional06.Value)/100);
           end;
           SomaImpostos;
           If (PedidoServico.State = dsInsert) or (PedidoServico.State = dsEdit) then begin
              PedidoServicoAliquota_ISS.Value := ReferenciasFiscaisAliquota_ISS.Value;
              PedidoServicoValor_ISS.Value    := cTotalDesconto.Value * (ReferenciasFiscaisAliquota_ISS.Value/100);
           End;
      end;
end;

procedure TPedido_Servico.cValorDescontoExit(Sender: TObject);
begin
      With Dados do begin
           If (PedidoServico.State = dsInsert) or (PedidoServico.State = dsEdit) then begin
              PedidoServicoDesconto_Percentual.Value := (PedidoServicoDesconto_Valor.Value / PedidoServicoValor_Servico.Value) * 100;
              cTotalDesconto.Value := PedidoServicoValor_Servico.Value - PedidoServicoDesconto_Valor.Value;

              PedidoServicoValor_Adicional01.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional01.Value)/100);
              PedidoServicoValor_Adicional02.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional02.Value)/100);
              PedidoServicoValor_Adicional03.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional03.Value)/100);
              PedidoServicoValor_Adicional04.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional04.Value)/100);
              PedidoServicoValor_Adicional05.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional05.Value)/100);
              PedidoServicoValor_Adicional06.Value := cTotalDesconto.Value * ((PedidoServicoAliquota_Adicional06.Value)/100);
              SomaImpostos;
              PedidoServicoAliquota_ISS.Value := ReferenciasFiscaisAliquota_ISS.Value;
              PedidoServicoValor_ISS.Value    := cTotalDesconto.Value * (ReferenciasFiscaisAliquota_ISS.Value/100);
           End;
      End;
end;

procedure TPedido_Servico.cValorServicoExit(Sender: TObject);
Var
    i: Integer;
begin
       With Dados do begin
            mCodigos[1] := '';
            mCodigos[2] := '';
            mCodigos[3] := '';
            mCodigos[4] := '';
            mCodigos[5] := '';
            i           := 1;

            // Pega o PIS a recuperar da tabela de serviços.
            if (not ClientesMEI.AsBoolean) and (not ClientesSimples_Nacional.AsBoolean) then begin
               If PedidoServicoValor_Servico.AsCurrency > ServicosLimite_PIS.Value then begin
                  mCodigos[i] := ServicosPIS_Recuperar.Value;
                  Inc(i);
               End;

               // Pega a COFINS a Recuperar da tabela de serviços.
               If PedidoServicoValor_Servico.AsCurrency > ServicosLimite_COFINS.Value then begin
                  mCodigos[i] := ServicosCOFINS_Recuperar.Value;
                  Inc(i);
               End;

               // Pega o IR a Recuperar da tabela de serviços.
               If PedidoServicoValor_Servico.AsCurrency > ServicosLimite_IR.Value then begin
                  mCodigos[i] := ServicosIR_Recuperar.Value;
                  Inc(i);
               End;

               // Pega a CSLL a Recuperar da tabela de serviços.
               If PedidoServicoValor_Servico.AsCurrency > ServicosLimite_CSLL.Value then begin
                  mCodigos[i] := ServicosCSLL_Recuperar.Value;
                  Inc(i);
               End;

               // Pega o INSS a Recuperar da tabela de serviços.
               If PedidoServicoValor_Servico.AsCurrency > ServicosLimite_INSS.Value then begin
                  mCodigos[i] := ServicosINSS_Recuperar.Value;
               End;
               PegaAdicional;

               // Calculo do ISS.
               if (PedidoServico.State = dsEdit) or (PedidoServico.State = dsInsert) then begin
                  PedidoServicoDesconto_Valor.Value := Percentual(PedidoServicoValor_Servico.Value, PedidoServicoDesconto_Percentual.Value);
                  SomaImpostos;
                  PedidoServicoValor_ISS.Value    := cTotalDesconto.Value * (ReferenciasFiscaisAliquota_ISS.Value/100);
                  PedidoServicoAliquota_ISS.Value := ReferenciasFiscaisAliquota_ISS.Value;
               end;
            end;
       End;
end;

procedure TPedido_Servico.cAliquota_Adicional02Change(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cAliquota_Adicional03Change(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cAliquota_Adicional04Change(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cAliquota_Adicional05Change(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cAliquota_Adicional06Change(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cValor_Adicional02Change(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cValor_Adicional03Change(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cValor_Adicional04Change(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cValor_Adicional05Change(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cValor_Adicional06Change(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image4.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image5.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image6.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image7.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image8.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image9.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TPedido_Servico.lClienteClick(Sender: TObject);
Var
    mcCliente : TEdit;
begin
      mcCliente := TEdit.Create(Self);
      mcCliente.Visible := False;
      mcCliente.Parent := Pedido_Servico;
      Cadastro_Clientes := TCadastro_Clientes.Create(Self);
      Cadastro_Clientes.Caption := Caption;
      Cadastro_Clientes.ShowModal;
      Dados.Clientes.Open;
      mcCliente.PasteFromClipboard;
      Dados.PedidoServicoCliente.Value := StrtoInt(mcCliente.Text);
end;

procedure TPedido_Servico.lFormaPgtoClick(Sender: TObject);
Var
    mcModalidade : TEdit;
begin
      mcModalidade        := TEdit.Create(Self);
      mcModalidade.Parent := Pedido_Servico;
      mcModalidade.Visible := False;
      Cadastro_ModalidadesPagamento := TCadastro_ModalidadesPagamento.Create(Self);
      Cadastro_ModalidadesPagamento.Caption := Caption;
      Cadastro_ModalidadesPagamento.ShowModal;
      mcModalidade.PasteFromClipboard;
      Dados.ModalidadesPgto.Open;
end;
procedure TPedido_Servico.cReferenciaChange(Sender: TObject);
begin
      With Dados do begin
           If (PedidoServico.State = dsInsert) or (PedidoServico.State = dsEdit) then begin
              PedidoServicoServico.Value := ReferenciasFiscaisServico.Value;
           End;
      End;
end;

procedure TPedido_Servico.cImposto01Exit(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cImposto02Exit(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cImposto03Exit(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cImposto04Exit(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cImposto05Exit(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.cImposto06Exit(Sender: TObject);
begin
      SomaImpostos;
end;

procedure TPedido_Servico.lReferenciaClick(Sender: TObject);
Var
    mcReferencia: TEdit;
begin
      mcReferencia := TEdit.Create(Self);
      mcReferencia.Visible := False;
      mcReferencia.Parent  := Pedido_Servico;

      Config_TipoNotaTerceiros := TConfig_TipoNotaTerceiros.Create(Self);
      Config_TipoNotaTerceiros.Caption := Caption;
      Config_TipoNotaTerceiros.ShowModal;

      With Dados do begin
           ReferenciasFiscais.SQL.Clear;
           ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais ORDER BY Descricao');
           ReferenciasFiscais.Open;
           mcReferencia.PasteFromClipboard;
           PedidoServicoReferencia_Fiscal.AsString := mcReferencia.Text;
      End;
end;

procedure TPedido_Servico.bDuplicatasClick(Sender: TObject);
begin
      ModalidadePgto_PedidoParcelas := TModalidadePgto_PedidoParcelas.Create(Self);
      if PageControl1.ActivePageIndex = 0 then begin
         ModalidadePgto_PedidoParcelas.mTipoNF := 3;
      end else begin
         ModalidadePgto_PedidoParcelas.mTipoNF := 5;
      end;
      ModalidadePgto_PedidoParcelas.mTipo   := 'R';
      ModalidadePgto_PedidoParcelas.ShowModal;
end;

procedure TPedido_Servico.bEnviarClick(Sender: TObject);
begin
{
     with ACBrNFSeX1.Configuracoes.Certificados do begin
          //Tipo    := tcA1;  // Pode ser tcA3 se for o cartão
          ArquivoPFX := 'c:\temp\ROTTA COMERCIAL-senha-11059647-validade-26-02-2026.pfx';
          Senha      := '11059647';
     end;
     with ACBrNFSeX1.Configuracoes.Geral do begin
          Provedor := proPadraoNacional;       // Pode ser outro provedor se for o caso
          Ambiente := taHomologacao;  // ou taProducao, depende do ambiente de testes ou produção
          CodigoMunicipio := 3550308; // São Paulo, por exemplo
          Versao := '3.00';           // A versão do layout da NFSe Nacional
     end;
}     
end;

procedure TPedido_Servico.StaticText1Click(Sender: TObject);
begin
      Cadastro_CentroCusto := TCadastro_CentroCusto.Create(Self);
      Cadastro_CentroCusto.Caption := Caption;
      Cadastro_CentroCusto.ShowModal;
      Dados.CentroCusto.Open;
      Dados.PedidoServicoCentro_Custo.AsString := Clipboard.AsText;
end;

procedure TPedido_Servico.PegaAdicional;
Var
    i: Integer;
begin
      With Dados do begin
           If (PedidoServico.State = dsInsert) or (PedidoServico.State = dsEdit) then begin
              For i := 1 to 5 do begin
                  If Trim(mCodigos[i]) <> '' then begin
                     Impostos.Locate('Codigo', mCodigos[i], [loCaseInsensitive]);
                     PedidoServico.FieldByName('Codigo_Adicional'+PoeZero(2,i)).Value   := mCodigos[i];
                     PedidoServico.FieldByname('Aliquota_Adicional'+PoeZero(2,i)).Value := ImpostosValor.AsFloat;
                     PedidoServico.FieldByName('Valor_Adicional'+PoeZero(2,i)).Value    := PedidoServicoValor_Servico.Value * ((PedidoServico.FieldByName('Aliquota_Adicional'+PoeZero(2,i)).Value)/100);
                  end else begin
                     PedidoServico.FieldByName('Codigo_Adicional'+PoeZero(2,i)).Value   := null;
                     PedidoServico.FieldByname('Aliquota_Adicional'+PoeZero(2,i)).Value := null;
                     PedidoServico.FieldByName('Valor_Adicional'+PoeZero(2,i)).Value    := null;
                  End;
              End;
           End;
      End;
end;

procedure TPedido_Servico.DBLookupComboBox2Exit(Sender: TObject);
begin
      Dados.Servicos.Locate('Codigo', Dados.ReferenciasFiscaisServico.AsString, [loCaseInsensitive]);
end;

procedure TPedido_Servico.SalvarNota;
Var
    mVencISS : TDate;
begin
     With Dados, dmFiscal do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
          Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;

          NotasServico.SQL.Clear;
          NotasServico.SQL.Add('SELECT * FROM NotasServico WHERE(Numero = :pNumero) AND (Data_Emissao = :pData)');
          NotasServico.ParamByName('pNumero').AsInteger := PedidoServicoNota.Value;
          NotasServico.ParamByName('pData').AsDate      := PedidoServicoData_Emissao.Value;
          NotasServico.Open;

          If NotasServico.RecordCount > 0 then begin
             If MessageDlg('Atenção!'+#13+#13+'Já existe uma nota fiscal de serviço com o número e a data informados.'+#13+#13+'Deseja substituir a nota fiscal existente?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                Abort;
             End;
             NotasServico.Delete;
          End;

          NotasServico.Append;
                       NotasServicoNumero.Value               := PedidoServicoNota.Value;
                       NotasServicoData_Emissao.Value         := PedidoServicoData_Emissao.Value;
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
          PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Data_Documento = :pData)');
          PagarReceber.ParamByName('pData').AsDate := NotasServicoData_Emissao.Value;
          PagarReceber.Open;

          PedidoServicoParcelas.SQL.Clear;
          PedidoServicoParcelas.SQL.Add('SELECT * FROM PedidoServicoParcelas WHERE (Pedido = :pPedido) ORDER BY Vencimento');
          PedidoServicoParcelas.ParamByName('pPedido').AsInteger := PedidoServicoNumero.Value;
          PedidoServicoParcelas.Open;

          ReferenciasFiscais.Locate('Codigo', NotasServicoReferencia_Fiscal.Value, [loCaseInsensitive]);

          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Codigo = :pCodigo)');
          ClassificacaoFinanceira.ParamByName('pCodigo').AsString := ReferenciasFiscaisClassificacao_TotalNota.Value;
          ClassificacaoFinanceira.Open;

          // Duplicatas (Parcelas).
          If PedidoServicoParcelas.RecordCount > 0 then begin
             PedidoServicoParcelas.First;
             If Trim(ReferenciasFiscaisClassificacao_TotalNota.AsString) <> '' then begin
                While not PedidoServicoParcelas.Eof do begin
                      tProvisao.SQL.Clear;
                      tProvisao.SQL.Add('SELECT ISNULL(MAX(Numero),0) AS Numero FROM PagarReceber');
                      tProvisao.Open;

                      PagarReceber.Append;
                                   PagarReceberNumero.Value           := tProvisao.FieldByName('Numero').Value + 1;
                                   PagarReceberTipo.Value             := 'R';
                                   PagarReceberClassificacao.Value    := ReferenciasFiscaisClassificacao_TotalNota.Value;
                                   PagarReceberCentro_Custo.Value     := NotasServicoCentro_Custo.Value;
                                   PagarReceberData_Documento.Value   := NotasServicoData_Emissao.Value;
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
             End;

             PedidoServicoParcelas.SQL.Clear;
             PedidoServicoParcelas.SQL.Add('DELETE FROM PedidoServicoParcelas WHERE (Pedido = :pPedido)');
             PedidoServicoParcelas.ParamByName('pPedido').AsInteger := PedidoServicoNumero.Value;
             PedidoServicoParcelas.Execute;
             PedidoServicoParcelas.SQL.Clear;
             PedidoServicoParcelas.SQL.Add('SELECT * FROM PedidoServicoParcelas WHERE (Pedido = :pPedido) ORDER BY Vencimento');
             PedidoServicoParcelas.ParamByName('pPedido').AsInteger := PedidoServicoNumero.Value;

             // Lancamento no financeiro "ISS".
             Impostos.Locate('Codigo', 'ISS', [loCaseInsensitive]);
             
             If Trim(ImpostosClassificacao_Financeira.Value) <> '' then begin
                tProvisao.SQL.Clear;
                tProvisao.SQL.Add('SELECT MAX(Numero) AS Numero FROM PagarReceber');
                tProvisao.Open;

                // Calculo do vencimento com base no dia do vencimento do imposto.
                mVencISS := NotasServicoData_Emissao.Value + ( DayOf(UltimoDiaMes(NotasServicoData_Emissao.Value))-DayOf(NotasServicoData_Emissao.Value) + ImpostosDia_Vencimento.AsInteger);
                mVencISS := DiaUtil(mVencISS, ConfiguracaoDia_Util.AsString);

                PagarReceber.Append;
                             PagarReceberNumero.Value           := tProvisao.FieldByName('Numero').Value + 1;
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
          End;

          NotasServico.SQL.Clear;
          NotasServico.SQL.Add('SELECT * FROM NotasServico ORDER BY Data_Emissao Desc');
          NotasServico.Open;
     End;
end;

(*
procedure TPedido_Servico.LancamentoContabil;
Var
   mContaDebito : String;
   mContaCredito: String;
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
                             LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                             LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
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
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          If Trim(ClassificacaoFinanceiraProvisao_ContaD.Value) = 'CLIENTE' then
                             LancamentosConta_Debito.Value := ClientesConta_Ativo.AsString
                          else
                             LancamentosConta_Debito.Value := ApenasNumeros(ClientesConta_Ativo.AsString);

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
                             LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                             LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                             LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                             LancamentosData.Value                  := cDataEmissao.Date;
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
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                          LancamentosValor.Value                 := NotasServicoValor_Adicional02.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          LancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;

           // Lancamento 05 - Imposto 03
           If NotasServicoCodigo_Adicional03.Value <> '' then begin
              Impostos.Locate('Codigo', NotasServicoCodigo_Adicional03.Value, [loCaseInsensitive]);
              ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

              tLancamentos.Open;
              Lancamentos.Append;
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                          LancamentosValor.Value                 := NotasServicoValor_Adicional03.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          LancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;

           // Lancamento 06 - Imposto 04
           If NotasServicoCodigo_Adicional04.Value <> '' then begin
              Impostos.Locate('Codigo', NotasServicoCodigo_Adicional04.Value, [loCaseInsensitive]);
              ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

              tLancamentos.Open;
              Lancamentos.Append;
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
                          LancamentosEmpresa.Value               := EmpresasCNPJ.Value;
                          LancamentosData.Value                  := cDataEmissao.Date;
                          LancamentosConta_Debito.Value          := ClassificacaoFinanceiraProvisao_ContaD.Value;
                          LancamentosConta_Credito.Value         := ClassificacaoFinanceiraProvisao_ContaC.Value;
                          LancamentosHistorico_Codigo.Value      := ClassificacaoFinanceiraProvisao_Historico.Value;
                          LancamentosHistorico_Complemento.Value := NotasServicoNumero.AsString + ' DE '+ Trim(ClientesNome.AsString);
                          LancamentosValor.Value                 := NotasServicoValor_Adicional04.Value;
                          LancamentosDocumento.Value             := NotasServicoNumero.AsString;
                          LancamentosData_Documento.Value        := NotasServicoData_Emissao.Value;
                          LancamentosTipo_Documento.Value        := 'SP';   // SP = Serviço Prestado.
              Lancamentos.Post;
              tLancamentos.Close;
           End;

           // Lancamento 07 - Imposto 05
           If NotasServicoCodigo_Adicional05.Value <> '' then begin
              Impostos.Locate('Codigo', NotasServicoCodigo_Adicional05.Value, [loCaseInsensitive]);
              ClassificacaoFinanceira.Locate('Codigo', ImpostosClassificacao_Financeira.Value, [loCaseInsensitive]);

              tLancamentos.Open;
              Lancamentos.Append;
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
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
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
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
                          LancamentosRegistro.Value              := tLancamentos.FieldByName('Registro').Value + 1;
                          LancamentosNumero.Value                := tLancamentos.FieldByName('Numero').Value + 1;
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
*)
procedure TPedido_Servico.ExcluirNotaFiscal1Click(Sender: TObject);
begin
     if MessageDlg('Deseja realmente excluir esta "Nota Fiscal de Serviço" ?', mtConfirmation, [mbYes, mbNO], 0) = mrNo then begin
        Abort;
     end;

     if MessageDlg('Deseja recriar o pedido da Nota Fiscal?', mtConfirmation, [mbYes, mbNO], 0) = mrYes then begin
        with Dados, dmFiscal do begin
             ReferenciasFiscais.Locate('Codigo', NotasServicoReferencia_Fiscal.Value, [loCaseInsensitive]);
             tPedido.Open;
             PedidoServico.Append;
                           PedidoServicoNumero.Value               := tPedido.FieldbyName('Pedido').AsInteger + 1;
                           PedidoServicoData_Emissao.Value         := NotasServicoData_Emissao.Value;
                           PedidoServicoProcesso.Value             := NotasServicoProcesso.Value;
                           PedidoServicoFatura_Numero.Value        := NotasServicoFatura_Numero.Value;
                           PedidoServicoDesconto_Percentual.Value  := NotasServicoDesconto_Percentual.Value;
                           PedidoServicoDesconto_Valor.Value       := NotasServicoDesconto_Valor.Value;
                           PedidoServicoData_Desconto.Value        := NotasServicoData_Desconto.Value;
                           PedidoServicoCliente.Value              := NotasServicoCliente.Value;
                           PedidoServicoNatureza_Operacao.Value    := NotasServicoNatureza_Operacao.Value;
                           PedidoServicoServico.Value              := NotasServicoServico.Value;
                           PedidoServicoDescricao_Servico.Value    := NotasServicoDescricao_Servico.Value;
                           PedidoServicoValor_Servico.Value        := NotasServicoValor_Servico.Value;
                           PedidoServicoValor_ISS.Value            := NotasServicoValor_ISS.Value;
                           PedidoServicoTotal_Nota.Value           := NotasServicoTotal_Nota.Value;
                           PedidoServicoCodigo_Adicional01.Value   := NotasServicoCodigo_Adicional01.Value;
                           PedidoServicoAliquota_Adicional01.Value := NotasServicoAliquota_Adicional01.Value;
                           PedidoServicoValor_Adicional01.Value    := NotasServicoValor_Adicional01.Value;
                           PedidoServicoCodigo_Adicional02.Value   := NotasServicoCodigo_Adicional02.Value;
                           PedidoServicoAliquota_Adicional02.Value := NotasServicoAliquota_Adicional02.Value;
                           PedidoServicoValor_Adicional02.Value    := NotasServicoValor_Adicional02.Value;
                           PedidoServicoCodigo_Adicional03.Value   := NotasServicoCodigo_Adicional03.Value;
                           PedidoServicoAliquota_Adicional03.Value := NotasServicoAliquota_Adicional03.Value;
                           PedidoServicoValor_Adicional03.Value    := NotasServicoValor_Adicional03.Value;
                           PedidoServicoCodigo_Adicional04.Value   := NotasServicoCodigo_Adicional04.Value;
                           PedidoServicoAliquota_Adicional04.Value := NotasServicoAliquota_Adicional04.Value;
                           PedidoServicoValor_Adicional04.Value    := NotasServicoValor_Adicional04.Value;
                           PedidoServicoCodigo_Adicional05.Value   := NotasServicoCodigo_Adicional05.Value;
                           PedidoServicoAliquota_Adicional05.Value := NotasServicoAliquota_Adicional05.Value;
                           PedidoServicoValor_Adicional05.Value    := NotasServicoValor_Adicional05.Value;
                           PedidoServicoCodigo_Adicional06.Value   := NotasServicoCodigo_Adicional06.Value;
                           PedidoServicoAliquota_Adicional06.Value := NotasServicoAliquota_Adicional06.Value;
                           PedidoServicoValor_Adicional06.Value    := NotasServicoValor_Adicional06.Value;
                           PedidoServicoAliquota_PIS.Value         := NotasServicoAliquota_PIS.Value;
                           PedidoServicoAliquota_COFINS.Value      := NotasServicoAliquota_COFINS.Value;
                           PedidoServicoCentro_Custo.Value         := NotasServicoCentro_Custo.Value;
                           PedidoServicoTotal_Dedutiveis.Value     := NotasServicoTotal_Dedutiveis.Value;
                           PedidoServicoTotal_Servicos.Value       := NotasServicoTotal_Servicos.Value;
                           PedidoServicoReferencia_Fiscal.Value    := NotasServicoReferencia_Fiscal.Value;
                           PedidoServicoObservacao.Value           := NotasServicoObservacao.Value;
             PedidoServico.Post;
             tPedido.Close;
        end;
     end;

     dmFiscal.NotasServico.Delete;   
end;



end.
