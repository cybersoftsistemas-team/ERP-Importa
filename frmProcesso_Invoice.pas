unit frmProcesso_Invoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.ExtCtrls, RXCtrls,
  Vcl.StdCtrls, DBCtrls, RXDBCtrl, Mask, Grids, DBGrids, Vcl.ComCtrls, Funcoes, ClipBrd, Menus, RxLookup, Buttons, RxCurrEdit, MemDS, RxToolEdit, RxDBComb, system.UITypes, Math;

type
  TDBGridDescendant = class(TDBGrid);
  TProcesso_Invoice = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tNumero: TMSQuery;
    Paginas: TPageControl;
    AbaInvoice: TTabSheet;
    AbaLista: TTabSheet;
    lProcesso: TStaticText;
    lExportador: TStaticText;
    lCondicaoPgto: TStaticText;
    lMoeda: TStaticText;
    cData: TDBDateEdit;
    lNumero: TStaticText;
    lPaisOrigem: TStaticText;
    cMoeda: TDBLookupComboBox;
    lData: TStaticText;
    cPaisOrigem: TDBLookupComboBox;
    cNumero: TDBEdit;
    cExportador: TDBLookupComboBox;
    lVia: TStaticText;
    lLocalEmbarque: TStaticText;
    DBEdit1: TDBEdit;
    lBancarios: TStaticText;
    DBMemo1: TDBMemo;
    lNotificar: TStaticText;
    DBMemo2: TDBMemo;
    lLocalChegada: TStaticText;
    DBEdit2: TDBEdit;
    lPesoLiquido: TStaticText;
    DBEdit4: TDBEdit;
    lPesoBruto: TStaticText;
    DBEdit5: TDBEdit;
    lVolumes: TStaticText;
    cVolumes: TDBEdit;
    lMetrosCubicos: TStaticText;
    DBEdit7: TDBEdit;
    StaticText1: TStaticText;
    DBEdit3: TDBEdit;
    StaticText2: TStaticText;
    DBEdit6: TDBEdit;
    cCondicaoCambio: TRxDBLookupCombo;
    cData_BL: TDBDateEdit;
    StaticText4: TStaticText;
    StaticText3: TStaticText;
    DBDateEdit2: TDBDateEdit;
    Grade: TDBGrid;
    cPesquisa: TEdit;
    StaticText5: TStaticText;
    tInvoice: TMSQuery;
    cProcesso: TDBLookupComboBox;
    ttmp: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText10: TStaticText;
    cTaxaCambio: TDBEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    cBL: TDBEdit;
    Abaitens: TTabSheet;
    GradeItens: TDBGrid;
    bPesqTrans: TSpeedButton;
    bPesqPais: TSpeedButton;
    bPesqOrig: TSpeedButton;
    cPO: TDBLookupComboBox;
    lCondicaoVenda: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    StaticText16: TStaticText;
    DBEdit10: TDBEdit;
    StaticText17: TStaticText;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText18: TStaticText;
    cCoberturaCambial: TRxDBComboBox;
    StaticText20: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    cMotivoCambial: TRxDBLookupCombo;
    StaticText21: TStaticText;
    GroupBox1: TGroupBox;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    cTotalFaturaME: TCurrencyEdit;
    cTotalPesoLiquido: TCurrencyEdit;
    cTotalPesoBruto: TCurrencyEdit;
    StaticText9: TStaticText;
    cTotalFaturaReal: TCurrencyEdit;
    StaticText22: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    bPesqTransMoeFrete: TSpeedButton;
    StaticText24: TStaticText;
    DBEdit11: TDBEdit;
    SpeedButton1: TSpeedButton;
    StaticText25: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText26: TStaticText;
    DBEdit12: TDBEdit;
    SpeedButton2: TSpeedButton;
    StaticText27: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    StaticText28: TStaticText;
    cModalidade: TDBLookupComboBox;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    DBComboBox2: TDBComboBox;
    DBEdit13: TDBEdit;
    StaticText31: TStaticText;
    bItens: TButton;
    StaticText33: TStaticText;
    DBEdit9: TDBEdit;
    Panel3: TPanel;
    NavegaItens: TDBNavigator;
    Panel2: TPanel;
    bPesqProd: TSpeedButton;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    cQtde: TDBEdit;
    cNomeFantasia: TDBEdit;
    StaticText19: TStaticText;
    cCodigo: TDBEdit;
    cProduto: TDBLookupComboBox;
    StaticText34: TStaticText;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    StaticText35: TStaticText;
    cIndicador: TDBRadioGroup;
    RxDBComboBox1: TRxDBComboBox;
    tItem: TMSQuery;
    DBGrid1: TDBGrid;
    tLPCO: TMSQuery;
    dstLPCO: TDataSource;
    tTransportador: TMSQuery;
    dstTransportador: TDataSource;
    bLPCO: TButton;
    StaticText15: TStaticText;
    cCertNum: TDBEdit;
    cCertTipo: TDBComboBox;
    StaticText23: TStaticText;
    StaticText32: TStaticText;
    cCertQtde: TDBEdit;
    StaticText36: TStaticText;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    StaticText37: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cExportadorExit(Sender: TObject);
    procedure cMoedaClick(Sender: TObject);
    procedure lExportadorClick(Sender: TObject);
    procedure lMoedaClick(Sender: TObject);
    procedure lCondicaoVendaClick(Sender: TObject);
    procedure cCondicaoCambioChange(Sender: TObject);
    procedure cNumeroChange(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure cProcessoClick(Sender: TObject);
    procedure bPesqPaisClick(Sender: TObject);
    procedure bPesqOrigClick(Sender: TObject);
    procedure bPesqTransClick(Sender: TObject);
    procedure cPOClick(Sender: TObject);
    procedure bPesqProdClick(Sender: TObject);
    procedure NavegaItensClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaItensBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cCoberturaCambialChange(Sender: TObject);
    procedure bPesqTransMoeFreteClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cData_BLChange(Sender: TObject);
    procedure bItensClick(Sender: TObject);
    procedure cCodigoExit(Sender: TObject);
    procedure GradeTitleClick(Column: TColumn);
    procedure cCodigoChange(Sender: TObject);
    procedure bLPCOClick(Sender: TObject);
    procedure cCertNumExit(Sender: TObject);
  private
    procedure PegaItens;
    procedure Totaliza;
    { Private declarations }
  public
    { Public declarations }
    mOrdem: string;
  end;

var
  Processo_Invoice: TProcesso_Invoice;

implementation

uses frmDados, frmMenu_Principal, frmCadastro_Fornecedores, frmCadastro_Cotacao, frmCadastro_Incoterms, frmProcesso_InvoiceQuantidade, frmDMDespacho, frmPesquisaGerais, frmProcesso_InvoiceItens, frmProcesso_InvoiceLPCO;

{$R *.dfm}

procedure TProcesso_Invoice.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
     Application.ShowHint   := True;
     Application.OnShowHint := AppShowHint;
end;

procedure TProcesso_Invoice.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TProcesso_Invoice.bLPCOClick(Sender: TObject);
begin
     Processo_InvoiceLPCO := TProcesso_InvoiceLPCO.create(self);
     Processo_InvoiceLPCo.Caption := Caption;
     Processo_InvoiceLPCO.showModal;
end;

procedure TProcesso_Invoice.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, dmDespacho, nil, nil);
     LimpaMemoria;
     Processo_Invoice.Release;
     Processo_Invoice := nil;
end;

procedure TProcesso_Invoice.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      Paginas.ActivePageIndex := 0;

      with Dados, dmDespacho do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+InttoStr(Menu_Principal.mEmpresa));
           Empresas.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE Estado = ''EX'' ORDER BY Nome');
           Fornecedores.Open;

           with tTransportador do begin
                SQL.Clear;
                SQL.Add('SELECT Codigo, Nome');
                SQL.Add('FROM   Fornecedores');
                SQL.Add('WHERE  Ramo_Atividade IN(SELECT Codigo FROM RamoAtividade WHERE Descricao LIKE ''%TRANSPORT%'') ');
                SQL.Add('ORDER BY Nome');
                Open;
           end;

           Paises.SQL.Clear;
           Paises.SQL.Add('SELECT * FROM Paises ORDER BY Nome');
           Paises.Open;

           INCOTERMS.SQL.Clear;
           INCOTERMS.SQL.Add('SELECT * FROM INCOTERMS ORDER BY Codigo');
           INCOTERMS.Open;

           Moedas.SQL.Clear;
           Moedas.SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
           Moedas.Open;

           Invoice.SQL.Clear;
           Invoice.SQL.Add('SELECT * FROM Invoice WHERE Imp_Exp = :pImpExp ORDER BY Numero');
           Invoice.ParamByName('pImpExp').AsString := 'I';
           Invoice.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE Desativado <> 1');
           Produtos.Open;

           InvoiceItens.SQL.Clear;
           InvoiceItens.SQL.Add('SELECT * FROM InvoiceItens WHERE Invoice = :pInvoice ORDER BY Codigo_Mercadoria');
           InvoiceItens.ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
           InvoiceItens.Open;

           Cotacao.SQL.Clear;
           Cotacao.SQL.Add('SELECT * FROM Cotacao WHERE(Moeda = :pMoeda) AND (Data = :pData)');
           Cotacao.ParamByName('pMoeda').AsInteger := InvoiceMoeda.AsInteger;
           Cotacao.ParamByName('pData').AsDate     := InvoiceData.AsDateTime;
           Cotacao.Open;

           CondicaoCambial.SQL.Clear;
           CondicaoCambial.SQL.Add('SELECT * FROM CondicaoCambial ORDER BY Descricao' );
           CondicaoCambial.Open;

           MetodoVal.SQL.Clear;
           MetodoVal.SQL.Add('select * from MetodoValoracao order by Codigo ' );
           MetodoVal.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Desativado <> 1) ORDER BY Processo');
           ProcessosDOC.Open;

           PO.SQL.Clear;
           PO.SQL.Add('select * from PO where Processo = :pProc');
           PO.ParamByName('pProc').asstring := InvoiceProcesso.AsString;
           PO.Open;

           AgFinanciadora.sql.Clear;
           AgFinanciadora.sql.Add('select * from AgenciaFinanciadora order by Codigo');
           AgFinanciadora.Open;

           MotivoCambial.sql.Clear;
           MotivoCambial.sql.Add('select * from MotivoCambial order by Descricao');
           MotivoCambial.Open;

           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('select * from TiposProcesso order by Codigo');
           TiposProcesso.Open;

           with ViaTransporte do begin
                sql.Clear;
                sql.Add('select * from ViaTransporte order by Descricao');
                Open;
           end;
      End;
      Screen.Cursor := crDefault;
end;

procedure TProcesso_Invoice.GradeTitleClick(Column: TColumn);
begin
     with Dados, Invoice do begin 
          sql.clear;
          sql.add('select * from Invoice where Imp_Exp = :pImpExp');
          if column.FieldName <> 'Exportador_Nome' then begin
             sql.add('order by '+column.FieldName+' '+mordem);
          end else begin
             sql.add('order by Exportador '+mordem);
          end;
          ParamByName('pImpExp').AsString := 'I';
          Open;
          mOrdem := iif(mOrdem = 'asc', 'desc', 'asc');
     end;
end;

procedure TProcesso_Invoice.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i: Integer;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           If (Button = nbEdit) or (Button = nbInsert) then begin
              For i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              End;
              AbaInvoice.Enabled      := true;
              Abaitens.Enabled        := false;
              AbaLista.Enabled        := false;
              Paginas.ActivePageIndex := 1;
              Panel3.Enabled          := false;
              cNumero.SetFocus
           End;
           If Button = nbInsert then begin
              InvoicePais_Destino.Value := '1058';
              InvoiceImp_Exp.Value      := 'I';
              cProcesso.SetFocus;
           End;
           If (Button = nbPost) or (Button = nbCancel) then Begin
              Invoice.Refresh;
              AbaInvoice.Enabled := false;
              Abaitens.Enabled   := true;
              AbaLista.Enabled   := true;
              Panel3.Enabled     := true;
           End;
           If (Button = nbFirst) or (Button = nbPrior) or (Button = nbNext) or (Button = nbLast) then begin
              Cotacao.SQL.Clear;
              Cotacao.SQL.Add('SELECT * FROM Cotacao WHERE(Moeda = :pMoeda) AND (Data = :pData)');
              Cotacao.ParamByName('pMoeda').AsInteger := InvoiceMoeda.AsInteger;
              Cotacao.ParamByName('pData').AsDate     := InvoiceData.AsDateTime;
              Cotacao.Open;
           End;
           If Button = nbDelete then begin
              Invoice.Refresh;
           End;
      End;
      Screen.Cursor := crDefault;
end;

procedure TProcesso_Invoice.NavegaItensBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     ActiveControl := nil;
      with Dados do begin
           if Button = nbPost then begin
              if InvoiceItens.State = dsInsert then begin
                 with ttmp do begin
                      sql.Clear;
                      sql.Add('select isnull(max(Registro), 0)+1 as Reg from InvoiceItens');
                      open;
                      InvoiceItens.FieldByName('Registro').Value := FieldByName('Reg').AsInteger;
                      sql.Clear;
                      sql.Add('select isnull(max(Item), 0)+1 as Item from InvoiceItens where Invoice = :pInv');
                      paramByName('pInv').asstring := InvoiceNumero.AsString;
                      open;
                      InvoiceItens.FieldByName('Item').Value := FieldByName('Item').AsInteger;
                 end;
              end;
              with ttmp do begin
                   sql.Clear;
                   sql.Add('select Exige_LPCO from NCM where NCM = '+quotedstr(Produtos.FieldByName('NCM').AsString));
                   open;
                   if fieldbyname('Exige_LPCO').AsBoolean then begin
                      Processo_InvoiceLPCO := TProcesso_InvoiceLPCO.create(self);
                      Processo_InvoiceLPCo.Caption := Caption;
                      Processo_InvoiceLPCO.showModal;
                      tLPCO.Refresh;
                   end;
              end;
           end;
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir este "Item"?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;
      end;
end;

procedure TProcesso_Invoice.NavegaItensClick(Sender: TObject; Button: TNavigateBtn);
var
   i: integer;
begin
     if Button in[nbEdit, nbInsert] then begin
        for i := 0 to 6 do begin
            NavegaItens.Controls[i].Enabled := False;
        end;
        Panel1.Enabled := false;
        Panel2.Enabled := true;
        cCodigo.SetFocus;
        cCertTipo.Enabled := trim(cCertNum.Text) <> '';
        cCertQtde.Enabled := trim(cCertNum.Text) <> '';
     end else begin
        Panel2.Enabled := false;
        Panel1.Enabled := true;
     end;
     if Button = nbInsert then begin
        cIndicador.ItemIndex := 0;
     end;
     
     // Ajusta o valor total da invoice.
     if Button in[nbPost, nbDelete] then begin
        with ttmp do begin
             SQL.Clear;
             SQL.Add('update Invoice set Volumes_Quantidade = (select isnull(sum(Quantidade), 0) from InvoiceItens where invoice = :pInv)') ;
             SQL.Add('                  ,Peso_Liquido       = (select isnull(sum(Peso_Liquido * Quantidade), 0) from InvoiceItens where invoice = :pInv)') ;
             SQL.Add('                  ,Peso_Bruto         = (select isnull(sum(Peso_Bruto * Quantidade), 0) from InvoiceItens where invoice = :pInv)') ;
             SQL.Add('                  ,Total_FaturaME     = (select isnull(sum(Valor_UnitarioME * Quantidade), 0) from InvoiceItens where invoice = :pInv)') ;
             SQL.Add('                  ,Total_Fatura       = (select isnull(sum(Valor_UnitarioME * Quantidade), 0) from InvoiceItens where invoice = :pInv) * Taxa_Cambio ') ;
             SQL.Add('where Numero = :pInv');
             ParamByName('pInv').Asstring := Dados.InvoiceNumero.Asstring;
             execute;
        end;
        Dados.Invoice.Refresh;
     end;
end;

procedure TProcesso_Invoice.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados, dmDespacho do begin
           if Button = nbPost then begin
              Navega.SetFocus;
              if Trim(cNumero.Text) = '' then begin
                 MessageDlg('O número da "INVOICE" é campo obrigatório.', mtError, [mbok], 0);
                 cNumero.SetFocus;
                 Abort;
              end;
              if Trim(InvoiceProcesso.AsString) = '' then begin
                 MessageDlg('O número do "Processo" é campo obrigatório.', mtError, [mbok], 0);
                 cProcesso.SetFocus;
                 Abort;
              end;
              if Trim(RemoveCaracter('/', '', InvoiceData.AsString)) = '' then begin
                 MessageDlg('A "Data" é campo obrigatório.', mtError, [mbok], 0);
                 cData.SetFocus;
                 Abort;
              end;
              if Trim(InvoiceMoeda.AsString) = '' then begin
                 MessageDlg('A "Moeda" é campo obrigatório.', mtError, [mbok], 0);
                 cMoeda.SetFocus;
                 Abort;
              end;
              if Trim(InvoiceExportador.AsString) = '' then begin
                 MessageDlg('O "Exportador" é campo obrigatório.', mtError, [mbok], 0);
                 cExportador.SetFocus;
                 Abort;
              end;
              if InvoiceCondicao_Cambio.AsInteger = 0 then begin
                 MessageDlg('A "Condição de Venda" é campo obrigatório.', mtError, [mbok], 0);
                 cCondicaoCambio.SetFocus;
                 Abort;
              end;
              if Trim(RemoveCaracter('/', '', InvoiceData_BL.AsString)) = '' then begin
                 MessageDlg('A "Datado BL" é campo obrigatório.', mtError, [mbok], 0);
                 cData_BL.SetFocus;
                 Abort;
              end;
              if Trim(InvoiceBL.AsString) = '' then begin
                 MessageDlg('A "Númerodo BL" é campo obrigatório.', mtError, [mbok], 0);
                 cBL.SetFocus;
                 Abort;
              end;
              if InvoiceTaxa_Cambio.asfloat = 0 then begin
                 MessageDlg('"Taxa do '+cMoeda.Text+'" não informada.', mtError, [mbok], 0);
                 cTaxaCambio.SetFocus;
                 Abort;
              end;
              if Invoice.State = dsInsert then begin
                 tNumero.sql.Clear;
                 tNumero.sql.Add('select isnull(max(Registro), 0)+1 as Registro from Invoice');
                 tNumero.open;
                 InvoiceRegistro.Value := tNumero.FieldByName('Registro').AsInteger;
              end;
              // Modifica os dados do processo.
              if ProcessosDOC.Locate('Processo', InvoiceProcesso.AsString, [loCaseInsensitive]) = true then begin
                 ProcessosDOC.Edit;
                              ProcessosDOCNumero_Fatura.Value   := InvoiceNumero.AsString;
                              ProcessosDOCData_Fatura.Value     := InvoiceData.Value;
                              ProcessosDOCFornecedor.Value      := InvoiceExportador.Value;
                              ProcessosDOCCondicao_Cambio.Value := InvoiceCondicao_Cambio.Value;
                              ProcessosDOCValor_FaturaME.Value  := InvoiceTotal_FaturaME.Value;
                              ProcessosDOCData_BL.Value         := InvoiceData_BL.Value;
                              ProcessosDOCDocumento_Carga.Value := InvoiceBL.Value;
                 ProcessosDOC.Post;
              end;
              if Invoice.State = dsInsert then begin
                 // Importando os itens da PO para a Invoice.
                 InvoiceImp_Exp.Value := 'I';
                 PegaItens;
              end;
           end;

           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir esta "Fatura"?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
              with InvoiceItens do begin
                   SQL.Clear;
                   SQL.Add('delete from InvoiceItens where Invoice = :pInvoice');
                   ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                   Execute;
                   SQL.Clear;
                   SQL.Add('select * from InvoiceItens where Invoice = :pInvoice');
                   ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                   Open;
              end;
           end;
      End;
end;

// Importa os itens da PO para a Invoice.
procedure TProcesso_Invoice.PegaItens;
begin
     with Dados, dmDespacho do begin
          with POItens do begin
               sql.clear;
               sql.add('select *');
               sql.add('      ,Sel = cast(0 as bit)');
               sql.Add('      ,Saldo = Quantidade - (select sum(Quantidade) from InvoiceItens ini where ini.PO = '''' and ini.Codigo_Mercadoria = poi.Codigo_Mercadoria)');
               sql.Add('      ,Descricao = (select Descricao from Produtos prd where prd.Codigo = poi.Codigo_Mercadoria)');
               sql.add('from  POItens poi');
               sql.add('where poi.PO = :pPO');
               sql.add('and   poi.Codigo_Mercadoria not in(select Codigo_Mercadoria from InvoiceItens where PO = :pPO)');
               sql.add('order by Item');
               ParamByName('pPO').AsString  := PONumero.AsString;
               //sql.SaveToFile('c:\temp\Invoice_PegaItens.sql');
               open;

               if POItens.RecordCount > 0 then begin
                  ttmp.SQL.Clear;
                  ttmp.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM InvoiceItens');

                  while not POItens.Eof do begin
                        if Produtos.Locate('Codigo', POItensCodigo_Mercadoria.AsInteger, [loCaseInsensitive]) then begin
                           ttmp.Open;
                           with InvoiceItens do begin
                                Append;
                                     fieldbyname('Registro').Value           := ttmp.FieldByName('Registro').AsInteger;
                                     fieldbyname('Item').Value               := POItensItem.Value;
                                     fieldbyname('Invoice').Value            := InvoiceNumero.Value;
                                     fieldbyname('Codigo_Mercadoria').Value  := POItensCodigo_Mercadoria.Value;
                                     fieldbyname('Unidade').Value            := ProdutosUnidade.Value;
                                     fieldbyname('Quantidade').Value         := POItensQuantidade.Value;
                                     fieldbyname('Valor_UnitarioME').Value   := POItensValor.Value;
                                     fieldbyname('Valor_Unitario').Value     := roundto(POItensValor.Value * InvoiceTaxa_Cambio.Value, -6);
                                     fieldbyname('Peso_Liquido').Value       := ProdutosPeso_Liquido.Value;
                                     fieldbyname('Peso_Bruto').Value         := ProdutosPeso_Bruto.Value;
                                     fieldbyname('NCM').Value                := ProdutosNCM.Value;
                                     fieldbyname('Imp_Exp').Value            := InvoiceImp_Exp.Value;
                                     fieldbyname('Fabricante').Value         := ProdutosFabricante.Value;
                                     fieldbyname('PO').value                 := Invoice.FieldByName('PO').value;
                                     fieldbyname('Unidade_Quantidade').value := POItens.FieldByName('Quantidade_Unidade').value;
                                     fieldbyname('Unidade_Peso').value       := 0;
                                Post;
                           end;
                           ttmp.Close;
                           tItem.Close;
                        end;

                        POItens.Next;
                  end;
                  with Invoiceitens do begin
                       close;
                       SQL.Clear;
                       SQL.Add('select * from InvoiceItens where Invoice = :pInvoice order by Codigo_Mercadoria');
                       ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                       Open;
                  end;
                  with ttmp do begin
                       SQL.Clear;
                       SQL.Add('select Volumes = isnull(sum(Quantidade), 0)');
                       SQL.Add('      ,PesoL   = isnull(sum(Peso_Liquido * Quantidade), 0)');
                       SQL.Add('      ,PesoB   = isnull(sum(Peso_Bruto * Quantidade), 0)');
                       SQL.Add('      ,ValorME = isnull(sum(Valor_UnitarioME * Quantidade), 0)');
                       SQL.Add('from InvoiceItens');
                       SQL.Add('where Invoice = :pInv');
                       ParamByName('pInv').Asstring := InvoiceNumero.Asstring;
                       Open;

                       InvoiceVolumes_Quantidade.Value := FieldByName('Volumes').AsFloat;
                       InvoicePeso_Liquido.Value       := FieldByName('PesoL').AsFloat;
                       InvoicePeso_Bruto.Value         := FieldByName('PesoB').AsFloat;
                       InvoiceTotal_FaturaME.Value     := FieldByName('ValorME').AsFloat;
                       InvoiceTotal_Fatura.Value       := FieldByName('ValorME').AsFloat * InvoiceTaxa_Cambio.AsFloat;
                  end;
               end;
          end;
     end;
end;

procedure TProcesso_Invoice.SpeedButton1Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Moedas';
      PesquisaGerais.mCampo  := 'Moeda_Seguro';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := Dados.Invoice;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_Invoice.SpeedButton2Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Paises';
      PesquisaGerais.mCampo  := 'Pais_Aquisicao';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := Dados.Invoice;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_Invoice.SpeedButton3Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Fornecedores';
      PesquisaGerais.mCampo  := 'Transportador';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := Dados.Invoice;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_Invoice.cCertNumExit(Sender: TObject);
begin
     cCertTipo.Enabled := trim(cCertNum.Text) <> '';
     cCertQtde.Enabled := trim(cCertNum.Text) <> '';
end;

procedure TProcesso_Invoice.cCoberturaCambialChange(Sender: TObject);
begin
     cMotivoCambial.Enabled := cCoberturaCambial.ItemIndex = 3;
end;

procedure TProcesso_Invoice.cCodigoChange(Sender: TObject);
begin
     if cCodigo.Text <> '' then begin
        with Dados, dmDespacho do begin
             with ttmp do begin
                  sql.Clear;
                  sql.Add('select Exige_LPCO');
                  sql.Add('from NCM');
                  sql.Add('where NCM = :pNCM');
                  parambyname('pNCM').value := InvoiceItens.fieldbyname('NCM').asstring;
                  open;
             end;
             bLPCO.Enabled := ttmp.FieldByName('Exige_LPCO').AsBoolean;
             if ttmp.FieldByName('Exige_LPCO').AsBoolean then begin
                with tLPCO do begin
                     sql.Clear;
                     sql.Add('select Orgao_Anuente = (select Nome from Cybersoft_Cadastros.dbo.OrgaosAnuentes where Codigo = LPCO.Orgao_Anuente)');
                     sql.Add('      ,Documento = (select Documento from LPCO where LPCO.LPCO = iil.LPCO)');
                     sql.Add('      ,Numero = (select NUmero from LPCO where LPCO.LPCO = iil.LPCO)');
                     sql.Add('from InvoiceItensLPCO iil, LPCO');
                     sql.Add('where iil.Invoice = :pInvoice');
                     sql.Add('and Codigo_Mercadoria = :pCod');
                     sql.Add('and LPCO.LPCO = iil.LPCO');
                     parambyname('pInvoice').asstring := InvoiceItens.fieldbyname('Invoice').asstring;
                     parambyname('pCod').asinteger    := InvoiceItens.fieldbyname('Codigo_Mercadoria').asinteger;
                     open;
                end;
             end;
        end;
     end;
end;

procedure TProcesso_Invoice.cCodigoExit(Sender: TObject);
begin
     with Dados, InvoiceItens do begin
          FieldByName('Invoice').Value        := InvoiceNumero.Asstring;
          FieldByName('Unidade').Value        := ProdutosUnidade.AsString;
          FieldByName('NCM').Value            := ProdutosNCM.AsString;
          FieldByName('Valor_Unitario').Value := roundto(InvoiceItensValor_UnitarioME.AsCurrency * InvoiceTaxa_Cambio.AsFloat, -7);
          FieldByName('Imp_Exp').Value        := 'I';
          FieldByName('Fabricante').Value     := ProdutosFabricante.Asinteger;
          FieldByName('Peso_Liquido').Value   := iif(FieldByName('Peso_Liquido').asfloat = 0, ProdutosPeso_Liquido.AsFloat, FieldByName('Peso_Liquido').Value);
          FieldByName('Peso_Bruto').Value     := iif(FieldByName('Peso_Bruto').asfloat = 0, ProdutosPeso_Bruto.AsFloat, FieldByName('Peso_Bruto').Value);
     end;
end;

procedure TProcesso_Invoice.cExportadorExit(Sender: TObject);
begin
     with Dados do begin
          if (Invoice.State = dsInsert) or (Invoice.State = dsEdit) then begin
             InvoicePais_Origem.Value := FornecedoresPais.AsString;
          end;
     end;
end;

procedure TProcesso_Invoice.cMoedaClick(Sender: TObject);
begin
      with Dados do begin
           if InvoiceTaxa_Cambio.Value = 0 then begin
              if (Invoice.State = dsInsert) or (Invoice.State = dsEdit) then begin
                 Cotacao.SQL.Clear;
                 Cotacao.SQL.Add('SELECT * FROM Cotacao WHERE Moeda = :pMoeda AND Data = :pData');
                 Cotacao.ParamByName('pMoeda').AsInteger := InvoiceMoeda.AsInteger;
                 Cotacao.ParamByName('pData').AsDate     := InvoiceData.AsDateTime;
                 Cotacao.Open;
                 InvoiceTaxa_Cambio.Value := CotacaoValor.AsFloat;
                 InvoiceData_Vencimento.Clear;
                 if Trim(RemoveCaracter('/', '', cData_BL.Text)) <> '' then begin
                    InvoiceData_Vencimento.Value := InvoiceData_BL.Value + (CondicaoCambialVencimento1.AsInteger+CondicaoCambialVencimento2.AsInteger+CondicaoCambialVencimento3.AsInteger);
                 end;
              end;
           end;
      end;
end;

procedure TProcesso_Invoice.lExportadorClick(Sender: TObject);
begin
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.ShowModal;
      With Dados do begin
           Paises.Open;
           InvoiceExportador.Value := StrtoInt(Clipboard.AsText);
           If Trim(cExportador.Text) = '' then InvoiceExportador.Clear; 
      End;
end;

procedure TProcesso_Invoice.lMoedaClick(Sender: TObject);
begin
      Cadastro_Cotacao := TCadastro_Cotacao.Create(Self);
      Cadastro_Cotacao.Caption := Caption;
      Cadastro_Cotacao.ShowModal;
      Dados.Cotacao.Open;
      Dados.Moedas.Open;
      if trim(ClipBoard.AsText) <> '|' then begin
         Dados.InvoiceMoeda.Value := StrtoInt (Copy(Clipboard.AsText, 1, Pos('|', ClipBoard.AsText)-1));
         Dados.InvoiceData.Value  := StrtoDate(Copy(Clipboard.AsText, Pos('|', ClipBoard.AsText)+1, 10) );
      end;
      cMoeda.SetFocus;
end;

procedure TProcesso_Invoice.lCondicaoVendaClick(Sender: TObject);
begin
      Cadastro_INCOTERMS := TCadastro_INCOTERMS.Create(Self);
      Cadastro_INCOTERMS.Caption := Caption;
      Cadastro_INCOTERMS.ShowModal;
      Dados.INCOTERMS.Open;
      Dados.InvoiceINCOTERMS.Value := Clipboard.AsText;
end;

procedure TProcesso_Invoice.cCondicaoCambioChange(Sender: TObject);
begin
      With Dados do begin
           If Trim(RemoveCaracter('/', '', InvoiceData_BL.AsString)) <> '' then begin
              If (Invoice.State = dsInsert) or (Invoice.State = dsEdit) then begin
                 InvoiceData_Vencimento.Clear;
                 If Trim(RemoveCaracter('/', '', cData_BL.Text)) <> '' then InvoiceData_Vencimento.Value := InvoiceData_BL.Value + (CondicaoCambialVencimento1.AsInteger+CondicaoCambialVencimento2.AsInteger+CondicaoCambialVencimento3.AsInteger);
              End;
           End;
      End;
end;

procedure TProcesso_Invoice.cData_BLChange(Sender: TObject);
begin
      with Dados do begin
           if (Invoice.state = dsEdit) or (Invoice.State = dsInsert) and (Trim(RemoveCaracter('/', '', cData_BL.Text)) <> '') then begin
              InvoiceData_Vencimento.Value := InvoiceData_BL.Value + (CondicaoCambialVencimento1.AsInteger+CondicaoCambialVencimento2.AsInteger+CondicaoCambialVencimento3.AsInteger);
           end;
      end;
end;

procedure TProcesso_Invoice.cNumeroChange(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           if (Invoice.State <> dsInsert) and (Invoice.State <> dsEdit) then begin
              PO.SQL.Clear;
              PO.SQL.Add('SELECT *');
              PO.SQL.Add('FROM  PO');
              PO.SQL.Add('WHERE Processo = :pProc');
              PO.ParamByName('pProc').asstring := cProcesso.Text;
              PO.Open;
              cTotalFaturaME.Clear;
              cTotalFaturaReal.Clear;
              cTotalPesoLiquido.Clear;
              cTotalPesoBruto.Clear;
              if Trim(cNumero.Text) <> '' then begin
                 InvoiceItens.SQL.Clear;
                 InvoiceItens.SQL.Add('SELECT * FROM InvoiceItens WHERE Invoice = :pInvoice ORDER BY Codigo_Mercadoria');
                 InvoiceItens.ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                 InvoiceItens.Open;
                 Totaliza;
              end;
           end;
      end;
end;

procedure TProcesso_Invoice.cPesquisaChange(Sender: TObject);
begin
      With Dados do begin
           If Invoice.Locate('Numero', cPesquisa.Text, [loPartialKey]) = False then begin
              If Invoice.Locate('Processo', cPesquisa.Text, [loPartialKey]) = False then begin
                 tInvoice.SQL.Clear;
                 tInvoice.SQL.Add('SELECT * FROM Invoice WHERE(Numero LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
                 tInvoice.Open;
                 Invoice.Locate('Numero', tInvoice.FieldByName('Numero').AsString, [loCaseInsensitive]);
              End;
           End;          
      End;
end;

procedure TProcesso_Invoice.bPesquisaClick(Sender: TObject);
begin
     Paginas.ActivePageIndex := 0;
     cPesquisa.SetFocus;
end;

procedure TProcesso_Invoice.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
Var
    curPos   : LongInt;
    gridCoord: TGridCoord;
    mTexto   : String;
    i        : Integer;
    mTam     : Integer;
begin
     With HintInfo do begin
          If HintControl is TDBGrid then
             With TDBGridDescendant(HintControl),gridCoord do begin
                  Application.HideHint;
                  gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                  Try
                     curPos := DataLink.ActiveRecord;
                     Try
                        DataLink.ActiveRecord := y-1;
                        If not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                           HintStr := '';
                           With Dados do begin
                                if Processo_InvoiceItens = nil then begin
                                   Produtos.Locate('Codigo', InvoiceItensCodigo_Mercadoria.Value, [loCaseInsensitive])
                                end else begin
                                   if not Processo_InvoiceItens.Visible then begin
                                      Produtos.Locate('Codigo', InvoiceItensCodigo_Mercadoria.Value, [loCaseInsensitive])
                                   end else begin
                                      Produtos.Locate('Codigo', dmDespacho.POItensCodigo_Mercadoria.Value, [loCaseInsensitive]);
                                   end;
                                end;

                                mTexto := Dados.ProdutosDescricao.Value;
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
                        End else
                           HintStr := '\';
                     Finally
                        DataLink.ActiveRecord := CurPos
                     End;
                     CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                  Except
                     CanShow := False
                  End;
          End;
     End;
end;

procedure TProcesso_Invoice.cProcessoClick(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           // Pegando os dados do Processo quando adicionando uma nova invoice e não existe PO.
           if Invoice.State = dsInsert then begin
              PO.SQL.Clear;
              PO.SQL.Add('SELECT *');
              PO.SQL.Add('FROM  PO');
              PO.SQL.Add('WHERE Processo = :pProc');
              PO.ParamByName('pProc').asstring := cProcesso.Text;
              PO.Open;
              
              if PO.RecordCount = 0 then begin
                 if Trim(InvoiceProcesso.AsString) <> '' then begin
                    InvoiceMoeda.Value                 := ProcessosDOCMoeda_FOB.Value;
                    InvoiceExportador.Value            := ProcessosDOCFornecedor.Value;
                    InvoiceINCOTERMS.Value             := ProcessosDOCINCOTERMS.Value;
                    InvoiceCondicao_Cambio.Value       := ProcessosDOCCondicao_Cambio.Value;
                    InvoiceData_BL.Value               := ProcessosDOCData_BL.Value;
                    InvoiceVia_Transporte.Value        := ProcessosDOCVia_Transporte.Value;
                    InvoiceLocal_Embarque.Value        := ProcessosDOCLocal_Embarque.Value;
                    InvoiceModalidade_Importacao.Value := ProcessosDOCModalidade_Importacao.Value;
                 end;
              end;
           end;
      end;
end;

procedure TProcesso_Invoice.bItensClick(Sender: TObject);
begin
     Processo_InvoiceItens := TProcesso_InvoiceItens.create(Self);
     Processo_InvoiceItens.Caption := Caption;
     Processo_InvoiceItens.mPO     := cPO.Text;
     Processo_InvoiceItens.showmodal;
     Totaliza;
end;

procedure TProcesso_Invoice.bPesqPaisClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Fornecedores';
      PesquisaGerais.mCampo  := 'Exportador';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := Dados.Invoice;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_Invoice.bPesqOrigClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Paises';
      PesquisaGerais.mCampo  := 'Pais_Origem';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := Dados.Invoice;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_Invoice.bPesqTransClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Moedas';
      PesquisaGerais.mCampo  := 'Moeda';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := Dados.Invoice;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_Invoice.bPesqTransMoeFreteClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Moedas';
      PesquisaGerais.mCampo  := 'Moeda_Frete';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := Dados.Invoice;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_Invoice.cPOClick(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           // Pegando os dados da PO ou do Processo quando adicionando uma nova invoice.
           if Invoice.State = dsInsert then begin
              if Trim(InvoiceProcesso.AsString) <> '' then begin
                 InvoiceMoeda.Value           := POMoeda.Value;
                 InvoiceExportador.Value      := POExportador.Value;
                 InvoicePO.Value              := PONumero.Value;
                 InvoicePais_Origem.Value     := POPais_Origem.Value;
                 InvoiceINCOTERMS.Value       := POINCOTERMS.Value;
                 InvoiceCondicao_Cambio.Value := POCondicao_Cambial.Value;
                 InvoiceLocal_Embarque.Value  := POLocal_Embarque.Value;
                 InvoiceLocal_Chegada.Value   := POLocal_Entrega.Value;
                 InvoiceVia_Transporte.Value  := POVia_Transporte.Value;
              end;
           end;
      end;    
end;

procedure TProcesso_Invoice.bPesqProdClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Produtos';
      PesquisaGerais.mCampo  := 'Codigo_Mercadoria';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := Dados.InvoiceItens;
      PesquisaGerais.Showmodal;
end;

// Totaliza os itens da invoice.
procedure TProcesso_Invoice.Totaliza;
begin
      with ttmp do begin
           SQL.clear;
           SQL.Add('select isnull(sum(Total_Fatura), 0)   as Total_Real,');
           SQL.Add('       isnull(sum(Total_FaturaME), 0) as Total_ME,');
           SQL.Add('       isnull(sum(Peso_Liquido), 0)   as Total_PesoLiquido,');
           SQL.Add('       isnull(sum(Peso_Bruto), 0)     as Total_PesoBruto');
           SQL.Add('from Invoice');
           SQL.Add('where Processo = :pProcesso');
           ParamByName('pProcesso').AsString := Dados.InvoiceProcesso.AsString;
           Open;

           cTotalFaturaME.Value    := FieldByName('Total_ME').Value;
           cTotalFaturaReal.Value  := FieldByName('Total_Real').Value;
           cTotalPesoLiquido.Value := FieldByName('Total_PesoLiquido').Value;
           cTotalPesoBruto.Value   := FieldByName('Total_PesoBruto').Value;

           SQL.Clear;
           SQL.Add('select isnull(sum(Valor_UnitarioME * Quantidade), 0) as Total_ME,');
           SQL.Add('       isnull(count(*), 0) as Total_Itens');
           SQL.Add('from InvoiceItens');
           SQL.Add('where Invoice = :pInv');
           ParamByName('pInv').AsString := Dados.InvoiceNumero.AsString;
           Open;
      end;
end;


end.



