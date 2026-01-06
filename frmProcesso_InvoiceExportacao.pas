unit frmProcesso_InvoiceExportacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Menus, DB, DBAccess, MSAccess, Vcl.StdCtrls, RxLookup,
  DBCtrls, Mask, RXDBCtrl, Vcl.ExtCtrls, Vcl.ComCtrls, RXCtrls, Funcoes, Grids, DBGrids, Buttons, RxCurrEdit, MemDS, system.UITypes, RxToolEdit;

type
  TProcesso_InvoiceExportacao = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bPesquisa: TButton;
    Paginas: TPageControl;
    TabSheet2: TTabSheet;
    RxDBGrid1: TDBGrid;
    cPesquisa: TEdit;
    StaticText5: TStaticText;
    tTemp: TMSQuery;
    bImprimir: TButton;
    Navega: TDBNavigator;
    bProcesso: TButton;
    TabSheet1: TTabSheet;
    cGrupoFatura: TPanel;
    StaticText12: TStaticText;
    cProcesso: TDBEdit;
    StaticText34: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    StaticText44: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    DBEdit10: TDBEdit;
    StaticText19: TStaticText;
    DBEdit14: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText16: TStaticText;
    StaticText46: TStaticText;
    StaticText53: TStaticText;
    DBEdit20: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    DBEdit13: TDBEdit;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    DBEdit15: TDBEdit;
    StaticText22: TStaticText;
    DBEdit16: TDBEdit;
    StaticText23: TStaticText;
    DBEdit17: TDBEdit;
    StaticText24: TStaticText;
    DBEdit18: TDBEdit;
    StaticText25: TStaticText;
    DBEdit19: TDBEdit;
    StaticText26: TStaticText;
    DBEdit21: TDBEdit;
    cQtdePallets: TDBEdit;
    StaticText29: TStaticText;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    DBEdit26: TDBEdit;
    StaticText32: TStaticText;
    DBEdit27: TDBEdit;
    cMoeda: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    StaticText33: TStaticText;
    cPallets: TCurrencyEdit;
    StaticText37: TStaticText;
    DBEdit29: TDBEdit;
    StaticText38: TStaticText;
    DBEdit30: TDBEdit;
    StaticText39: TStaticText;
    DBEdit31: TDBEdit;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    DBEdit32: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    StaticText43: TStaticText;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    StaticText45: TStaticText;
    cCondicaoCambio: TRxDBLookupCombo;
    StaticText35: TStaticText;
    cNumero: TDBEdit;
    StaticText48: TStaticText;
    cData: TDBDateEdit;
    cExportador: TDBLookupComboBox;
    StaticText49: TStaticText;
    DBLookupComboBox11: TDBLookupComboBox;
    StaticText50: TStaticText;
    StaticText52: TStaticText;
    DBLookupComboBox12: TDBLookupComboBox;
    StaticText47: TStaticText;
    DBLookupComboBox8: TDBLookupComboBox;
    StaticText54: TStaticText;
    DBMemo1: TDBMemo;
    StaticText55: TStaticText;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    StaticText56: TStaticText;
    cData_BL: TDBDateEdit;
    StaticText58: TStaticText;
    DBDateEdit3: TDBDateEdit;
    StaticText59: TStaticText;
    StaticText60: TStaticText;
    DBEdit35: TDBEdit;
    StaticText61: TStaticText;
    DBEdit36: TDBEdit;
    StaticText62: TStaticText;
    DBEdit37: TDBEdit;
    cProposta: TRxDBLookupCombo;
    TabSheet3: TTabSheet;
    pItens: TGroupBox;
    bPesqProd: TSpeedButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    DBEdit8: TDBEdit;
    cNome: TDBEdit;
    cUnitario: TDBEdit;
    StaticText4: TStaticText;
    cCodigo: TDBEdit;
    cProduto: TDBLookupComboBox;
    GradeItens: TDBGrid;
    Panel3: TPanel;
    Navegaitens: TDBNavigator;
    StaticText6: TStaticText;
    lTotal: TStaticText;
    cValorTotal: TCurrencyEdit;
    cItensTotal: TCurrencyEdit;
    tTemp2: TMSQuery;
    StaticText7: TStaticText;
    cTotalItem: TCurrencyEdit;
    StaticText8: TStaticText;
    DBMemo2: TDBMemo;
    StaticText9: TStaticText;
    cRecinto_Alfandegao: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    StaticText36: TStaticText;
    StaticText10: TStaticText;
    DBEdit1: TDBEdit;
    StaticText11: TStaticText;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bImprimirClick(Sender: TObject);
    procedure cPropostaChange(Sender: TObject);
    procedure cNumeroChange(Sender: TObject);
    procedure NavegaitensClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaitensBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cCodigoExit(Sender: TObject);
    procedure cProdutoExit(Sender: TObject);
    procedure cUnitarioExit(Sender: TObject);
    procedure cNomeExit(Sender: TObject);
  private
    procedure TotalizaItens;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_InvoiceExportacao: TProcesso_InvoiceExportacao;

implementation

uses frmDados, frmMenu_Principal, frmImpressao_ProcessosOP_InvoiceExp, frmDMDespacho;

{$R *.dfm}

procedure TProcesso_InvoiceExportacao.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      Paginas.ActivePageIndex := 0;

      with Dados, dmDespacho do begin
           with Empresas do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
                Open;
           end;
           with Fornecedores do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM Fornecedores WHERE (Pais <> ''1058'' OR CNPJ = :pCNPJ) ORDER BY Nome');
                ParamByName('pCNPJ').AsString := EmpresasCNPJ.Value;
                Open;
           end;
           with Clientes do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Clientes');
                Open;
           end;
           with Paises do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Paises ORDER BY Nome');
                Open;
           end;
           with INCOTERMS do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM INCOTERMS ORDER BY Codigo');
                Open;
           end;
           with Moedas do begin
                SQL.Clear;
                SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
                Open;
           end;
           with Produtos do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM Produtos WHERE Desativado <> 1');
                Open;
           end;
           with Invoice do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM Invoice WHERE Imp_Exp = :pImpExp ORDER BY Numero');
                ParamByName('pImpExp').AsString := 'E';
                Open;
           end;
           with InvoiceItens do begin 
                SQL.Clear;
                SQL.Add('SELECT *');
                SQL.Add('FROM InvoiceItens');
                SQL.Add('WHERE Invoice = :pInvoice');
                SQL.Add('ORDER BY Codigo_Mercadoria');
                ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                Open;
           end;
           with Cotacao do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM Cotacao WHERE(Moeda = :pMoeda) AND (Data = :pData)');
                ParamByName('pMoeda').AsInteger := InvoiceMoeda.AsInteger;
                ParamByName('pData').AsDate     := InvoiceData.AsDateTime;
                Open;
           end;
           with CondicaoCambial do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM CondicaoCambial ORDER BY Descricao' );
                Open;
           end;
           with ProcessosDOC do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Desativado <> 1) ORDER BY Processo');
                Open;
           end;
           with Bancos do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM Bancos ORDER BY Nome');
                Open;
           end;
           with ViaTransporte do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM ViaTransporte ORDER BY Descricao');
                Open;
           end;
           with PropostaExp do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM PropostaExp ORDER BY Processo, Proposta');
                Open;
           end;
           with RecintosAduaneiros do begin 
                SQL.Clear;
                SQL.Add('SELECT * FROM RecintosAduaneiros ORDER BY Descricao, Codigo');
                Open;
           end;
      end;
      Screen.Cursor := crDefault;
end;

procedure TProcesso_InvoiceExportacao.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TProcesso_InvoiceExportacao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados, nil, nil, nil);
      LimpaMemoria;
      Processo_InvoiceExportacao.Release;
      Processo_InvoiceExportacao := nil;
end;

procedure TProcesso_InvoiceExportacao.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_InvoiceExportacao.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If Button = nbPost then begin
              If Trim(InvoiceNUmero.AsString) = '' then begin
                 MessageDlg('O número da "Invoice" é campo obrigatório.', mtError, [mbok], 0);
                 cNumero.SetFocus;
                 Abort;
              End;
              If Trim(InvoiceProcesso.AsString) = '' then begin
                 MessageDlg('O número do "Processo" é campo obrigatório.', mtError, [mbok], 0);
                 cProcesso.SetFocus;
                 Abort;
              End;
              If Trim(RemoveCaracter('/', '', InvoiceData.AsString)) = '' then begin
                 MessageDlg('A "Data" é campo obrigatório.', mtError, [mbok], 0);
                 cData.SetFocus;
                 Abort;
              End;
              If Trim(InvoiceMoeda_Exp.AsString) = '' then begin
                 MessageDlg('A "Moeda" é campo obrigatório.', mtError, [mbok], 0);
                 cMoeda.SetFocus;
                 Abort;
              End;
              If Trim(InvoiceExportador.AsString) = '' then begin
                 MessageDlg('O "Exportador" é campo obrigatório.', mtError, [mbok], 0);
                 cExportador.SetFocus;
                 Abort;
              End;
              If InvoiceCondicao_Cambio.AsInteger = 0 then begin
                 MessageDlg('A "Condição de Venda" é campo obrigatório.', mtError, [mbok], 0);
                 cCondicaoCambio.SetFocus;
                 Abort;
              End;
              If Trim(RemoveCaracter('/', '', InvoiceData_BL.AsString)) = '' then begin
                 MessageDlg('A "Datado BL" é campo obrigatório.', mtError, [mbok], 0);
                 cData_BL.SetFocus;
                 Abort;
              End;

              // Gera o número da invoice quando inclusão.
              if Invoice.State = dsInsert then begin
                 with tTemp do begin 
                      SQL.Clear;
                      SQL.Add('SELECT Registro = (SELECT ISNULL(MAX(Registro), 0)+1 FROM Invoice)');
                      open;
                      InvoiceRegistro.Value := FieldByName('Registro').AsInteger;
                 end;

                 // Pega os itens de todas as propostas pelo número do process.
                 if trim(InvoiceProposta.asstring) <> '' then begin
                    with tTemp do begin
                         SQL.Clear;
                         SQL.Add('SELECT Item               =  row_number() over (order by Produto_Codigo)');
                         SQL.Add('      ,Produto_Codigo');
                         SQL.Add('      ,Unidade_Quantidade = Quantidade_Unidade');
                         SQL.Add('      ,Unidade_Peso       = Unidade');
                         SQL.Add('      ,Unidade');
                         SQL.Add('      ,Quantidade');
                         SQL.Add('      ,Valor_UnitarioME   = FOB_Unitario');
                         SQL.Add('      ,Peso_Liquido       = (SELECT Peso_Liquido FROM Produtos WHERE Codigo = Produto_Codigo)');
                         SQL.Add('      ,Peso_Bruto         = (SELECT Peso_Bruto   FROM Produtos WHERE Codigo = Produto_Codigo)');
                         SQL.Add('      ,Valor_Unitario     = FOB_Unitario * Cotacao_Exp');
                         SQL.Add('      ,NCM                = (SELECT NCM FROM Produtos WHERE Codigo = Produto_Codigo)');
                         SQL.Add('FROM  PropostaExp');
                         SQL.Add('WHERE Processo = :pProc');
                         ParamByName('pProc').AsString := cProcesso.Text;
                         Open;
                    end;
                    with tTemp2 do begin
                         SQL.Clear;
                         SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM InvoiceItens');
                    end;

                    tTemp.First;
                    while not tTemp.eof do begin
                          tTemp2.Open;
                          InvoiceItens.Append;
                                       InvoiceItensRegistro.value           := tTemp2.FieldByName('Registro').AsInteger;
                                       InvoiceItensItem.value               := tTemp.FieldByName('Item').AsInteger;
                                       InvoiceItensInvoice.value            := Invoice.FieldByName('Numero').Value;
                                       InvoiceItensCodigo_Mercadoria.value  := tTemp.FieldByName('Produto_Codigo').AsInteger;
                                       InvoiceItensUnidade_Quantidade.value := tTemp.FieldByName('Unidade_Quantidade').AsString;
                                       InvoiceItensUnidade_Peso.value       := tTemp.FieldByName('Unidade_Peso').AsString;
                                       InvoiceItensUnidade.value            := tTemp.FieldByName('Unidade').AsString;
                                       InvoiceItensQuantidade.value         := tTemp.FieldByName('Quantidade').AsFloat;
                                       InvoiceItensValor_Unitario.value     := tTemp.FieldByName('Valor_Unitario').AsCurrency;
                                       InvoiceItensPeso_Liquido.value       := tTemp.FieldByName('Peso_Liquido').AsFloat;
                                       InvoiceItensPeso_Bruto.value         := tTemp.FieldByName('Peso_Bruto').AsFloat;
                                       InvoiceItensValor_UnitarioME.value   := tTemp.FieldByName('Valor_UnitarioME').AsCurrency;
                                       InvoiceItensNCM.value                := tTemp.FieldByName('NCM').AsString;
                                       InvoiceItensImp_Exp.value            := 'E';
                          InvoiceItens.Post;
                          tTemp2.close;
                          tTemp.Next;
                    end;

                    // Totaliza a invoice.
                    TotalizaItens;
                    InvoiceTotal_FaturaME.value := cValorTotal.Value;
                    InvoiceTotal_Fatura.value   := cValorTotal.Value * InvoiceCotacao_Exp.asfloat;;
                 end;
              end;

              // Modifica os dados do processo.
              If ProcessosDOC.Locate('Processo', InvoiceProcesso.AsString, [loCaseInsensitive]) = true then begin
                 ProcessosDOC.Edit;
                              ProcessosDOCNumero_Fatura.AsString := InvoiceNumero.AsString;
                              ProcessosDOCData_Fatura.Value      := InvoiceData.Value;
                              ProcessosDOCFornecedor.Value       := InvoiceExportador.Value;
                              ProcessosDOCCondicao_Cambio.Value  := InvoiceCondicao_Cambio.Value;
                              ProcessosDOCValor_FaturaME.Value   := InvoiceTotal_FaturaME.Value;
                              ProcessosDOCData_BL.Value          := InvoiceData_BL.Value;
                 ProcessosDOC.Post;
              End;
           End;
           If Button = nbDelete then begin
              If MessageDlg('Deseja realmente excluir esta "Fatura"', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              End;
              InvoiceItens.SQL.Clear;
              InvoiceItens.SQL.Add('DELETE FROM InvoiceItens WHERE(Invoice = :pInvoice)');
              InvoiceItens.ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
              InvoiceItens.Execute;
              InvoiceItens.SQL.Clear;
              InvoiceItens.SQL.Add('SELECT * FROM InvoiceItens WHERE(Invoice = :pInvoice)');
              InvoiceItens.ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
              InvoiceItens.Open;
           End;
      End;
end;

procedure TProcesso_InvoiceExportacao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i: Integer;
begin
     Screen.Cursor := crSQLWait;
     with Dados do begin
          TabSheet3.Enabled := (Button <> nbEdit) and (Button <> nbInsert);
          if (Button = nbEdit) or (Button = nbInsert) then begin
             Paginas.ActivePageIndex := 0;
             for i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             end;
             cGrupoFatura.Enabled := true;
             cNumero.SetFocus
          end;
          if (Button = nbInsert) then begin
             InvoicePais_Destino.Value := '1058';
             InvoiceImp_Exp.Value      := 'E';
             InvoiceData.Value         := Date;
             cExportador.KeyValue      := EmpresasCodigo.Value;
          end;
          if (Button = nbPost) or (Button = nbCancel) then Begin
             cGrupoFatura.Enabled := false;
          end;
          if (Button = nbDelete) then begin
             Invoice.Refresh;
          end;
     end;
     Screen.Cursor := crDefault;
end;

procedure TProcesso_InvoiceExportacao.bImprimirClick(Sender: TObject);
begin
      Impressao_ProcessosOP_InvoiceExp := TImpressao_ProcessosOP_InvoiceExp.Create(Self);
      Impressao_ProcessosOP_InvoiceExp.Caption := Caption;
      Impressao_ProcessosOP_InvoiceExp.ShowModal;
end;

procedure TProcesso_InvoiceExportacao.cProdutoExit(Sender: TObject);
begin
      with Dados, InvoiceItens do begin
           cTotalItem.Value := FieldByName('Quantidade').AsFloat * FieldByName('Valor_Unitario').AsCurrency; 
           FieldByName('Peso_Liquido').value := Produtos.FieldByName('Peso_Liquido').asfloat;
           FieldByName('Peso_Bruto').value   := Produtos.FieldByName('Peso_Bruto').asfloat;
      end;
end;

procedure TProcesso_InvoiceExportacao.cPropostaChange(Sender: TObject);
begin
      with Dados do begin
           cProcesso.Enabled               := Trim(cProposta.Text) = '';
           InvoiceProcesso.Value           := PropostaExp.FieldByName('Processo').AsString;
           InvoiceImportador.Value         := PropostaExp.FieldByName('Cliente').AsInteger;
           InvoiceINCOTERMS.Value          := PropostaExp.FieldByName('INCOTERMS').AsString;
           InvoicePais_Origem.Value        := '1058';
           InvoicePais_Destino.Value       := PropostaExp.FieldByName('Pais_Destino').AsString;
           InvoiceVia_Transporte.Value     := PropostaExp.FieldByName('Via_Transporte').AsInteger;
           InvoiceMoeda.Value              := PropostaExp.FieldByName('Moeda_Exp').AsInteger;
           InvoiceTaxa_Cambio.Value        := PropostaExp.FieldByName('Cotacao_Exp').AsFloat;
           InvoiceLocal_Chegada.Value      := PropostaExp.FieldByName('Local_Entrega').AsString;
           InvoiceLocal_Embarque.Value     := PropostaExp.FieldByName('Local_Embarque').AsString;
           InvoiceVolumes_Quantidade.Value := PropostaExp.FieldByName('Volume_Qtde').AsFloat;
           InvoicePeso_Liquido.Value       := PropostaExp.FieldByName('Peso_Liquido').AsFloat;
           InvoicePeso_Bruto.Value         := PropostaExp.FieldByName('Peso_Bruto').AsFloat;
           InvoiceTotal_FaturaME.Value     := PropostaExp.FieldByName('FOB_Unitario').AsCurrency * (PropostaExp.FieldByName('Quantidade').AsFloat * PropostaExp.FieldByName('Quantidade_Unidade').AsFloat);
           InvoiceTotal_Fatura.Value       := Invoice.FieldByName('Total_FaturaME').AsCurrency * PropostaExp.FieldByName('Cotacao_Exp').AsFloat;
           InvoiceCondicao_Cambio.Value    := PropostaExp.FieldByName('Condicao_Cambio').AsInteger;
           InvoiceTransbordo.value         := PropostaExp.FieldByName('Transbordo').AsString;
           InvoiceTransit_Time.value       := PropostaExp.FieldByName('Transit_Time').AsString;
           InvoiceFrequencia.value         := PropostaExp.FieldByName('Frequencia').AsString;
           InvoiceArmador.value            := PropostaExp.FieldByName('Armador').AsString;
           InvoiceContainer.value          := PropostaExp.FieldByName('Container').AsString;
           InvoiceUnidade.value            := PropostaExp.FieldByName('Unidade').AsString;
           InvoiceTipo_Embalagem.value     := PropostaExp.FieldByName('Tipo_Embalagem').AsString;
           InvoiceVolume.value             := PropostaExp.FieldByName('Volume').AsString;
           InvoicePallets.value            := PropostaExp.FieldByName('Pallets').AsInteger;
           InvoiceComissao_Recebida.value  := PropostaExp.FieldByName('Comissao_Recebida').AsFloat;
           InvoiceComissao_Paga.value      := PropostaExp.FieldByName('Comissao_Paga').AsFloat;
           InvoiceQuantidade_Unidade.value := PropostaExp.FieldByName('Quantidade_Unidade').AsFloat;
           InvoiceFator.value              := PropostaExp.FieldByName('Fator').AsFloat;
           InvoiceMoeda_Exp.value          := PropostaExp.FieldByName('Moeda_Exp').AsInteger;
           InvoiceCotacao_Exp.value        := PropostaExp.FieldByName('Cotacao_Exp').AsFloat;
           InvoiceMoeda_Imp.value          := PropostaExp.FieldByName('Moeda_Imp').AsInteger;
           InvoiceCotacao_Imp.value        := PropostaExp.FieldByName('Cotacao_Imp').AsFloat;
           InvoiceFrete_Prepaid.value      := PropostaExp.FieldByName('Frete_Inter').ASCurrency;
           InvoiceMoeda_Frete.value        := PropostaExp.FieldByName('Moeda_Frete').AsInteger;
           InvoiceCotacao_Frete.value      := PropostaExp.FieldByName('Cotacao_Frete').AsFloat;
           InvoiceIRPJ.value               := PropostaExp.FieldByName('IRPJ').AsFloat;
           InvoiceCSLL.value               := PropostaExp.FieldByName('CSLL').AsFloat;
           InvoiceBase_Comissao.value      := PropostaExp.FieldByName('Base_Comissao').AsString;
           InvoiceCliente.Value            := PropostaExp.FieldByName('Cliente').AsInteger;
           InvoiceCondicao_Frete.Value     := PropostaExp.FieldByName('Condicao_Frete').asstring;
      end;
end;

procedure TProcesso_InvoiceExportacao.cUnitarioExit(Sender: TObject);
begin
     with Dados, InvoiceItens do begin
          cTotalItem.Value := FieldByName('Quantidade').AsFloat * FieldByName('Valor_Unitario').AsCurrency; 
     end;
end;

procedure TProcesso_InvoiceExportacao.cCodigoExit(Sender: TObject);
begin
      with Dados, InvoiceItens do begin
           cTotalItem.Value := FieldByName('Quantidade').AsFloat * FieldByName('Valor_Unitario').AsCurrency; 
           FieldByName('Peso_Liquido').value := Produtos.FieldByName('Peso_Liquido').asfloat;
           FieldByName('Peso_Bruto').value   := Produtos.FieldByName('Peso_Bruto').asfloat;
      end;
end;

procedure TProcesso_InvoiceExportacao.cNomeExit(Sender: TObject);
begin
     with Dados, InvoiceItens do begin
          cTotalItem.Value := FieldByName('Quantidade').AsFloat * FieldByName('Valor_Unitario').AsCurrency; 
     end;
end;

procedure TProcesso_InvoiceExportacao.cNumeroChange(Sender: TObject);
begin
      with Dados do begin
           Cotacao.SQL.Clear;
           Cotacao.SQL.Add('SELECT * FROM Cotacao WHERE(Moeda = :pMoeda) AND (Data = :pData)');
           Cotacao.ParamByName('pMoeda').AsInteger := InvoiceMoeda.AsInteger;
           Cotacao.ParamByName('pData').AsDate     := InvoiceData.AsDateTime;
           Cotacao.Open;

           InvoiceItens.SQL.Clear;
           InvoiceItens.SQL.Add('SELECT * FROM InvoiceItens WHERE Invoice = :pInvoice AND Imp_Exp = ''E'' ORDER BY Codigo_Mercadoria');
           InvoiceItens.ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
           InvoiceItens.Open;

           TotalizaItens;
      end;
end;

procedure TProcesso_InvoiceExportacao.NavegaitensBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     with Dados do begin
          if Button = nbPost then begin
             if InvoiceItens.State = dsInsert then begin
                tTemp2.SQL.Clear;
                tTemp2.SQL.Add('SELECT Registro = (SELECT ISNULL(MAX(Registro), 0)+1 FROM InvoiceItens)');
                tTemp2.SQL.Add('      ,Item     = (SELECT ISNULL(MAX(Item), 0)+1     FROM InvoiceItens WHERE Imp_Exp = ''E'' AND Invoice = :pInv)');
                tTemp2.ParamByName('pInv').asstring := InvoiceNumero.Asstring;
                tTemp2.Open;
                InvoiceItensRegistro.value := tTemp2.FieldByName('Registro').Asinteger;
                InvoiceItensItem.value     := tTemp2.FieldByName('Item').Asinteger;
             end;
             InvoiceItensNCM.value := Produtos.FieldByName('NCM').asstring;
          end;
     end;
     if Button in[nbPost, nbCancel] then begin
        pItens.Enabled := false;
     end;
end;

procedure TProcesso_InvoiceExportacao.NavegaitensClick(Sender: TObject;Button: TNavigateBtn);
var
    i: Integer;
begin
      Screen.Cursor := crSQLWait;
      with Dados do begin
           if (Button = nbEdit) or (Button = nbInsert) then begin
              if Button = nbInsert then begin
                 InvoiceItensInvoice.Value := Invoice.FieldByName('Numero').Value;
                 InvoiceItensImp_Exp.Value := 'E';
              end;
              for i := 0 to 6 do begin
                  NavegaItens.Controls[i].Enabled := False;
              end;
              pItens.Enabled := true;
              cCodigo.SetFocus
           end;
           if (Button = nbPost) or (Button = nbCancel) then Begin
              TotalizaItens;
              Invoice.edit;
                      InvoiceTotal_FaturaME.value := cValorTotal.Value;
                      InvoiceTotal_Fatura.value   := cValorTotal.Value * InvoiceCotacao_Exp.asfloat;;
                      InvoicePeso_Liquido.value   := tTemp.FieldByName('Peso_Liquido').AsFloat;
                      InvoicePeso_Bruto.value     := tTemp.FieldByName('Peso_Bruto').AsFloat;
              Invoice.Post;
           end;
      end;
      Screen.Cursor := crDefault;
end;

procedure TProcesso_InvoiceExportacao.TotalizaItens;
begin
      with Dados do begin
           with tTemp do begin
                SQL.Clear;
                SQL.Add('select Total = isnull(sum(Valor_Unitario * Quantidade), 0)');
                SQL.Add('      ,Itens = count(*)');
                SQL.Add('      ,Peso_Liquido = isnull(sum(Peso_Liquido * Quantidade), 0)');
                SQL.Add('      ,Peso_Bruto   = isnull(sum(Peso_Bruto * Quantidade), 0)');
                SQL.Add('from   InvoiceItens');
                SQL.Add('where  Invoice = :pInvoice');
                SQL.Add('and    Imp_Exp = ''E'' ');
                ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                //SQL.SaveToFile('c:\temp\Totaliza_InvoiceExportacao.sql');
                Open;
                cItensTotal.Value := FieldByName('Itens').Value;
                cValorTotal.Value := FieldByName('Total').AsCurrency;
           end;
      end;
end;


end.
