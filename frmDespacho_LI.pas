unit frmDespacho_LI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ComCtrls, RXCtrls, Vcl.ExtCtrls, Funcoes, DB, DBAccess, MSAccess, RxDBComb, Buttons, RxLookup, system.UITypes,
  RXDBCtrl, Mask, Grids, DBGrids, RxCurrEdit, MemDS, RxToolEdit;

type
  TDespacho_LI = class(TForm)
    Pasta: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StaticText51: TStaticText;
    StaticText59: TStaticText;
    StaticText107: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    DBEdit15: TDBEdit;
    cDias: TDBEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    DBMemo1: TDBMemo;
    StaticText20: TStaticText;
    cProcesso: TDBLookupComboBox;
    Image1: TImage;
    RxLabel4: TRxLabel;
    RxLabel3: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tRegistro: TMSQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    RxDBComboBox1: TRxDBComboBox;
    bPesqPais: TSpeedButton;
    bPesqURFDes: TSpeedButton;
    bPesqURFEnt: TSpeedButton;
    bPesqExp: TSpeedButton;
    RxDBComboBox2: TRxDBComboBox;
    cPaisPro: TRxDBLookupCombo;
    cURFDesp: TRxDBLookupCombo;
    cURFEnt: TRxDBLookupCombo;
    cExport: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    bPesqMoe: TSpeedButton;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    cProcChange: TDBEdit;
    cInvoiceChange: TDBEdit;
    cOrgaoAnuente: TRxDBLookupCombo;
    bPesqOrgao: TSpeedButton;
    RxDBComboBox3: TRxDBComboBox;
    RxDBLookupCombo4: TRxDBLookupCombo;
    cFundamento: TRxDBComboBox;
    RxDBComboBox5: TRxDBComboBox;
    cCobertura: TRxDBComboBox;
    cModalidade: TRxDBLookupCombo;
    cFinanciadora: TRxDBLookupCombo;
    StaticText3: TStaticText;
    StaticText12: TStaticText;
    cMotivo: TRxDBLookupCombo;
    TabSheet3: TTabSheet;
    GradeSLI: TRxDBGrid;
    GradeItens: TRxDBGrid;
    tNCM: TMSQuery;
    StaticText27: TStaticText;
    DBEdit1: TDBEdit;
    tCopia: TMSQuery;
    tItem: TMSQuery;
    StaticText28: TStaticText;
    cRegistro: TDBEdit;
    tSLI: TMSQuery;
    cPesquisa: TEdit;
    StaticText30: TStaticText;
    Panel3: TPanel;
    StaticText21: TStaticText;
    cDescricao: TRxDBLookupCombo;
    cCodigo: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText29: TStaticText;
    DBMemo2: TDBMemo;
    bPesqProd: TSpeedButton;
    Panel4: TPanel;
    NavegaItens: TDBNavigator;
    StaticText31: TStaticText;
    lTotal: TStaticText;
    cItensTotal: TCurrencyEdit;
    cValorTotal: TCurrencyEdit;
    GroupBox1: TGroupBox;
    Image6: TImage;
    Image7: TImage;
    Image4: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    cTotalCond: TDBText;
    cTotalPeso: TDBText;
    cTotalItens: TDBText;
    Image5: TImage;
    Label1: TLabel;
    cTotalEmb: TDBText;
    tTotais: TMSQuery;
    dstTotais: TDataSource;
    tTotaisValor_TotalEmb: TFloatField;
    tTotaisValor_TotalCond: TFloatField;
    tTotaisPeso_Total: TFloatField;
    tTotaisQtde_Total: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cProcessoClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure bPesqExpClick(Sender: TObject);
    procedure bPesqPaisClick(Sender: TObject);
    procedure bPesqURFDesClick(Sender: TObject);
    procedure bPesqURFEntClick(Sender: TObject);
    procedure cProcChangeChange(Sender: TObject);
    procedure cInvoiceChangeChange(Sender: TObject);
    procedure bPesqOrgaoClick(Sender: TObject);
    procedure cCoberturaChange(Sender: TObject);
    procedure cFundamentoChange(Sender: TObject);
    procedure cRegistroChange(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure NavegaItensClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesqProdClick(Sender: TObject);
    procedure NavegaItensBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    { Private declarations }
    SLINova:Boolean;
    procedure CriaSLI;
    procedure CopiaItem;
    procedure CopiaSLI;
  public
    { Public declarations }
  end;

var
  Despacho_LI: TDespacho_LI;

implementation

uses frmDMDespacho, frmDados, frmMenu_Principal, frmPesquisaGerais, frmDMFiscal, frmJanela_Processamento;

{$R *.dfm}

procedure TDespacho_LI.FormCreate(Sender: TObject);
begin
     if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');

     if FileExists('fundo_barra.bmp') then begin
        Image4.Picture.LoadFromFile('fundo_barra.bmp');
        Image5.Picture.LoadFromFile('fundo_barra.bmp');
        Image6.Picture.LoadFromFile('fundo_barra.bmp');
        Image7.Picture.LoadFromFile('fundo_barra.bmp');
     end;
end;

procedure TDespacho_LI.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, dmDespacho, nil, nil);
     LimpaMemoria;
     Despacho_LI.Release;
     Despacho_LI := nil;
end;

procedure TDespacho_LI.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TDespacho_LI.FormShow(Sender: TObject);
begin
     with dmDespacho, Dados, dmFiscal do begin
          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = '+inttostr(Menu_Principal.mEmpresa));
          Empresas.Open;

          SLI.SQL.Clear;
          SLI.SQL.Add('SELECT * FROM SLI ORDER BY Processo, Invoice, Numero, Registro');
          SLI.Open;

          TabSheet3.Caption := 'Lista ['+InttoStr(SLI.RecordCount)+']';

          cRegistroChange(Self);

          ProcessosDOC.SQL.Clear;
          ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Desativado <> 1) ORDER BY Processo');
          ProcessosDOC.Open;

          Invoice.SQL.Clear;
          Invoice.SQL.Add('SELECT * FROM Invoice WHERE Processo = :pProc ORDER BY Numero');
          Invoice.ParamByName('pProc').AsString := SLIProcesso.AsString;
          Invoice.Open;

          Paises.SQL.Clear;
          Paises.SQL.Add('SELECT * FROM Paises ORDER BY Nome');
          Paises.Open;

          UnidadesRFB.SQL.Clear;
          UnidadesRFB.SQL.Add('SELECT * FROM UnidadesRFB ORDER BY Descricao');
          UnidadesRFB.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
          Fornecedores.Open;

          INCOTERMS.SQL.Clear;
          INCOTERMS.SQL.Add('SELECT * FROM INCOTERMS ORDER BY Codigo');
          INCOTERMS.Open;

          Moedas.SQL.Clear;
          Moedas.SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
          Moedas.Open;

          OrgaosAnuentes.SQL.Clear;
          OrgaosAnuentes.SQL.Add('SELECT * FROM OrgaosAnuentes ORDER BY Descricao');
          OrgaosAnuentes.Open;

          RegimeTributacao.SQL.Clear;
          RegimeTributacao.SQL.Add('SELECT * FROM RegimeTributacao ORDER BY Descricao');
          RegimeTributacao.Open;

          ModalidadesRFB.SQL.Clear;
          ModalidadesRFB.SQL.Add('SELECT * FROM ModalidadesRFB ORDER BY Descricao');
          ModalidadesRFB.Open;

          Financiadora.SQL.Clear;
          Financiadora.SQL.Add('SELECT * FROM Financiadora ORDER BY Descricao');
          Financiadora.Open;

          MotivoCambial.SQL.Clear;
          MotivoCambial.SQL.Add('SELECT * FROM MotivoCambial ORDER BY Descricao');
          MotivoCambial.Open;

          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos WHERE ISNULL(Requer_LI, 0) = 1');
          Produtos.Open;

          NCM.SQL.Clear;
          NCM.SQL.Add('SELECT *');
          NCM.SQL.Add('FROM   NCM');
          NCM.SQL.Add('ORDER BY NCM');
          NCM.Open;
     end;
     Pasta.ActivePageIndex := 0;
     cFundamento.Hint := Copy(cFundamento.Text, 1, Length(cFundamento.Text) div 2)+#13+Copy(cFundamento.Text, (Length(cFundamento.Text) div 2)+1, Length(cFundamento.Text) div 2);
end;

procedure TDespacho_LI.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
   i:integer;
begin
      Screen.Cursor := crSQLWait;
      with dmDespacho do begin
           if (Button = nbPost) and (SLINova) then begin
               CriaSLI;
           end;

           TabSheet1.Enabled := (Button = nbEdit) or (Button = nbInsert);
           TabSheet2.Enabled := (Button <> nbEdit) and (Button <> nbInsert);
           TabSheet3.Enabled := (Button <> nbEdit) and (Button <> nbInsert);
           SLINova           := SLI.State = dsInsert;
           
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              Pasta.ActivePageIndex := 1;
              cProcesso.Setfocus;
           end;
      end;

      Screen.Cursor := crDefault;
end;

procedure TDespacho_LI.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados, dmDespacho do begin
           if Button = nbPost then begin
              Navega.SetFocus;

              if SLI.State = dsInsert then begin
                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM SLI');
                 tRegistro.Open;
                 SLIRegistro.Value := tRegistro.FieldByName('Registro').asInteger;
              end;
           end;

           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir esta "SLI"', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                 tItem.SQL.Clear;
                 tItem.SQL.Add('DELETE FROM SLIItens WHERE SLI = :pSLI');
                 tItem.ParamByName('pSLI').AsInteger := SLIRegistro.AsInteger;
                 tItem.Execute;
              end;
           end;
      end;
end;

procedure TDespacho_LI.cProcessoClick(Sender: TObject);
begin
      with Dados, dmDespacho, dmFiscal do begin
      end;
end;

procedure TDespacho_LI.DBLookupComboBox1Click(Sender: TObject);
begin
     with dmDespacho, Dados, dmFiscal do begin
          if SLI.State = dsInsert then begin
             SLIExportador.Value          := InvoiceExportador.Value;
             SLITipo_Fornecedor.Value     := 1;
             SLICondicao_Mercadoria.Value := 0;
             SLIPais_Procedencia.Value    := InvoicePais_Origem.Value;
             SLIMoeda.Value               := InvoiceMoeda.Value;
             SLIINCOTERMS.Value           := InvoiceINCOTERMS.Value;
             SLICondicao_Mercadoria.Value := 0;
          end;
     end;
end;

procedure TDespacho_LI.bPesqExpClick(Sender: TObject);
begin
      cExport.Setfocus;
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Fornecedores';
      PesquisaGerais.mCampo  := 'Exportador';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := dmDespacho.SLI;
      PesquisaGerais.Showmodal;
end;

procedure TDespacho_LI.bPesqPaisClick(Sender: TObject);
begin
      cPaisPro.Setfocus;
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Paises';
      PesquisaGerais.mCampo  := 'Pais_Procedencia';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.SLI;
      PesquisaGerais.Showmodal;
end;

procedure TDespacho_LI.bPesqURFDesClick(Sender: TObject);
begin
      cURFDesp.Setfocus;
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'UnidadesRFB';
      PesquisaGerais.mCampo  := 'URF_Despacho';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.SLI;
      PesquisaGerais.Showmodal;
end;

procedure TDespacho_LI.bPesqURFEntClick(Sender: TObject);
begin
      cURFEnt.Setfocus;
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'UnidadesRFB';
      PesquisaGerais.mCampo  := 'URF_Entrada';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.SLI;
      PesquisaGerais.Showmodal;
end;

procedure TDespacho_LI.cProcChangeChange(Sender: TObject);
begin
     with dmDespacho, Dados, dmFiscal do begin
          Invoice.SQL.Clear;
          Invoice.SQL.Add('SELECT * FROM Invoice WHERE Processo = :pProc ORDER BY Numero');
          Invoice.ParamByName('pProc').AsString := SLIProcesso.AsString;
          Invoice.Open;
     end;
end;

procedure TDespacho_LI.cInvoiceChangeChange(Sender: TObject);
begin
     with dmDespacho, Dados, dmFiscal do begin
          Invoice.SQL.Clear;
          Invoice.SQL.Add('SELECT * FROM Invoice WHERE Processo = :pProc ORDER BY Numero');
          Invoice.ParamByName('pProc').AsString := SLIProcesso.AsString;
          Invoice.Open;
     end;
end;

procedure TDespacho_LI.bPesqOrgaoClick(Sender: TObject);
begin
      cOrgaoAnuente.Setfocus;
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'OrgaosAnuentes';
      PesquisaGerais.mCampo  := 'Orgao_Anuente';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.SLI;
      PesquisaGerais.Showmodal;
end;

procedure TDespacho_LI.cCoberturaChange(Sender: TObject);
begin
     with dmDespacho do begin
          cDias.Enabled         := cCobertura.ItemIndex = 0;
          cModalidade.Enabled   := cCobertura.ItemIndex < 2;
          cFinanciadora.Enabled := cCobertura.ItemIndex = 2;
          cMotivo.Enabled       := cCobertura.ItemIndex = 3;

          cDias.Color         := $00E2E2E2;
          cModalidade.Color   := $00E2E2E2;
          cFinanciadora.Color := $00E2E2E2;
          cMotivo.Color       := $00E2E2E2;

          if cDias.Enabled then cDias.Color := clWhite;
          if cModalidade.Enabled then cModalidade.Color := clWhite;
          if cFinanciadora.Enabled then cFinanciadora.Color := clWhite;
          if cMotivo.Enabled then cMotivo.Color := clWhite;

          if cCobertura.ItemIndex  > 1 then SLIModalidade_Pgto.Clear;
          if cCobertura.ItemIndex  > 0 then SLIDias_LimitePgto.Clear;
          if cCobertura.ItemIndex <> 2 then SLIFinanciadora.Clear;
          if cCobertura.ItemIndex <> 3 then SLIMotivo_ImpCambial.Clear;
     end;
end;

procedure TDespacho_LI.cFundamentoChange(Sender: TObject);
begin
     cFundamento.Hint := Copy(cFundamento.Text, 1, Length(cFundamento.Text) div 2)+#13+Copy(cFundamento.Text, (Length(cFundamento.Text) div 2)+1, Length(cFundamento.Text) div 2);
end;

procedure TDespacho_LI.CriaSLI;
var
  Prim:boolean;
begin
     with Dados, dmDespacho do begin
          tSLI.SQL.Clear;
          tSLI.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM SLI');

          tRegistro.SQL.Clear;
          tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM SLIItens');

          tCopia.SQL.Clear;
          tCopia.SQL.Add('SELECT * FROM SLI WHERE Registro = :pReg');
          tCopia.ParamByName('pReg').AsInteger := SLIRegistro.Value;
          tCopia.Open;

          tNCM.SQL.Clear;
          tNCM.SQL.Add('SELECT NCM');
          tNCM.SQL.Add('FROM  InvoiceItens');
          tNCM.SQL.Add('WHERE Invoice = :pInv');
          tNCM.SQL.Add('GROUP BY NCM');
          tNCM.ParamByName('pInv').asString := SLIInvoice.AsString;
          tNCM.Open;

          Janela_Processamento                    := TJanela_Processamento.Create(Self);
          Janela_Processamento.lProcesso.Caption  := 'Gerando as "SLI(s)" para cadas NCM...Aguarde';
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := tNCM.RecordCount;
          Janela_Processamento.Show;

          Prim := true;
          tNCM.First;
          while not tNCM.eof do begin
                InvoiceItens.SQL.Clear;
                InvoiceItens.SQL.Add('SELECT * FROM InvoiceItens WHERE Invoice = :pInv AND NCM = :pNCM');
                InvoiceItens.ParamByName('pInv').AsString := SLIInvoice.AsString;
                InvoiceItens.ParamByName('pNCM').AsString := tNCM.FieldByName('NCM').AsString;
                InvoiceItens.Open;

                // Criando as Copias da SLI.
                if Prim then begin
                   Prim := false;
                   SLI.Edit;
                       SLINCM.Value := tNCM.FieldByName('NCM').Value;
                   SLI.Post;

                   // Pegando os itens da invoice pela NCM.
                   CopiaItem;
                end else begin
                   CopiaSLI;     // Cria a cópia da SLI.
                   CopiaItem;    // Pega os itens da invoice pela NCM.
                end;
                tNCM.Next;
                Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
          end;
     end;
     Janela_Processamento.Close;
end;

procedure TDespacho_LI.CopiaItem;
var
    mItens:Integer;
begin
     mItens := 1;     // Contador de itens, "Só é permitido 80 itens por SLI".

     with dmDespacho, Dados do begin
          while not InvoiceItens.Eof do begin
                if mItens <= 80 then begin
                   tItem.SQL.Clear;
                   tItem.SQL.Add('SELECT ISNULL(MAX(Item), 0)+1 AS Item FROM SLIItens WHERE SLI = :pSLI');
                   tItem.ParamByName('pSLI').AsInteger := SLIRegistro.AsInteger;
                   tItem.Open;

                   tRegistro.Open;
                   SLIItens.Append;
                            SLIItensRegistro.value          := tRegistro.FieldByName('Registro').AsInteger;
                            SLIItensSLI.value               := SLIRegistro.Value;
                            SLIItensItem.value              := tItem.FieldByName('Item').AsInteger;
                            SLIItensLI.value                := SLINumero.Value;
                            SLIItensCodigo_Mercadoria.value := InvoiceItensCodigo_Mercadoria.Value;
                            SLIItensPeso_Liquido.value      := InvoiceItensPeso_Liquido.Value;
                            SLIItensQtde_UnidadeCom.value   := InvoiceItensQuantidade.Value;
                            SLIItensQtde_MedidaEst.value    := Dados.ProdutosQuantidade_Unidade.Value;
                            SLIItensValor_LocEmbarque.value := InvoiceItensValor_UNitarioME.Value;
                            SLIItensValor_CondVenda.value   := InvoiceItensValor_UNitarioME.Value;
                            SLIItensNCM.value               := InvoiceItensNCM.Value;
                   SLIItens.Post;
                   tRegistro.Close;
                   tItem.Close;

                   InvoiceItens.Next;
                   Inc(mItens);
                end else begin
                   CopiaSLI;
                   mItens := 1;
                end;
          end;
     end;
end;

procedure TDespacho_LI.cRegistroChange(Sender: TObject);
begin
     with dmDespacho, Dados do begin
          GradeItens.DisableScroll;
          SLIItens.SQL.Clear;
          SLIItens.SQL.Add('SELECT * FROM SLIItens WHERE SLI = :pSLI ORDER BY Item');
          SLIItens.ParamByName('pSLI').AsInteger := SLIRegistro.AsInteger;
          SLIItens.Open;
          GradeItens.EnableScroll;

          tTotais.SQL.Clear;
          tTotais.SQL.Add('SELECT SUM(Valor_LocEmbarque * Qtde_UnidadeCom) AS Valor_TotalEmb');
          tTotais.SQL.Add('      ,SUM(Valor_LocEmbarque * Qtde_UnidadeCom) AS Valor_TotalCond');
          tTotais.SQL.Add('      ,SUM(Peso_Liquido) AS Peso_Total');
          tTotais.SQL.Add('      ,COUNT(*) AS Qtde_Total');
          tTotais.SQL.Add('FROM  SLIItens');
          tTotais.SQL.Add('WHERE SLI = :pSLI');
          tTotais.ParamByName('pSLI').AsInteger := SLIRegistro.AsInteger;
          tTotais.Open;

          cItensTotal.Value := tTotais.FieldByName('Qtde_Total').asFloat;
          cValorTotal.Value := tTotais.FieldByName('Valor_TotalEmb').AsCurrency;

          TabSheet2.Caption := 'Itens ['+InttoStr(SLIItens.RecordCount)+']';
     end;
end;

procedure TDespacho_LI.CopiaSLI;
begin
     with Dados, dmDespacho do begin
          tSLI.Open;
          SLI.Append;
              SLIRegistro.value            := tSLI.FieldByName('Registro').value;
              SLINumero.value              := tCopia.FieldByName('Numero').AsString;
              SLIProcesso.value            := tCopia.FieldByName('Processo').AsString;
              SLIInvoice.value             := tCopia.FieldByName('Invoice').AsString;
              SLIPais_Procedencia.value    := tCopia.FieldByName('Pais_Procedencia').AsString;
              SLIURF_Despacho.value        := tCopia.FieldByName('URF_Despacho').AsString;
              SLIURF_Entrada.value         := tCopia.FieldByName('URF_Entrada').AsString;
              SLIInf_Complem.value         := tCopia.FieldByName('Inf_Complem').AsString;
              SLITipo_Fornecedor.value     := tCopia.FieldByName('Tipo_Fornecedor').AsInteger;
              SLIExportador.value          := tCopia.FieldByName('Exportador').AsInteger;
              SLICondicao_Mercadoria.value := tCopia.FieldByName('Condicao_Mercadoria').AsInteger;
              SLIMoeda.value               := tCopia.FieldByName('Moeda').AsInteger;
              SLIINCOTERMS.value           := tCopia.FieldByName('INCOTERMS').AsString;
              SLINCM.value                 := tNCM.FieldByName('NCM').AsString;
              SLIProcesso_Anuente.value    := tCopia.FieldByName('Processo_Anuente').AsString;
              SLIOrgao_Anuente.value       := tCopia.FieldByName('Orgao_Anuente').AsString;
              SLIDrawBack.value            := tCopia.FieldByName('DrawBack').AsInteger;
              SLIRegime_Tributacao.value   := tCopia.FieldByName('Regime_Tributacao').AsInteger;
              SLIFundamento_Legal.value    := tCopia.FieldByName('Fundamento_Legal').AsInteger;
              SLIAcordo_Tarifario.value    := tCopia.FieldByName('Acordo_Tarifario').AsString;
              SLICobertura_Cambial.value   := tCopia.FieldByName('Cobertura_Cambial').AsInteger;
              SLIModalidade_Pgto.value     := tCopia.FieldByName('Modalidade_Pgto').AsInteger;
              SLIDias_LimitePgto.value     := tCopia.FieldByName('Dias_LimitePgto').AsInteger;
              SLIFinanciadora.value        := tCopia.FieldByName('Financiadora').AsInteger;
              SLIMotivo_ImpCambial.value   := tCopia.FieldByName('Motivo_ImpCambial').AsInteger;
          SLI.Post;
          tSLI.Close;
     end;
end;

procedure TDespacho_LI.cPesquisaChange(Sender: TObject);
begin
      with dmDespacho do begin
           tSLI.SQL.Clear;
           tSLI.SQL.Add('SELECT Registro FROM SLI WHERE Numero LIKE '+ QuotedStr('%'+cPesquisa.Text+'%'));
           tSLI.Open;
           if tSLI.RecordCount = 0 then begin
              tSLI.SQL.Clear;
              tSLI.SQL.Add('SELECT Registro FROM SLI WHERE Processo LIKE '+ QuotedStr('%'+cPesquisa.Text+'%'));
              tSLI.Open;
              if tSLI.RecordCount = 0 then begin
                 tSLI.SQL.Clear;
                 tSLI.SQL.Add('SELECT Registro FROM SLI WHERE Invoice LIKE '+ QuotedStr('%'+cPesquisa.Text+'%'));
                 tSLI.Open;
              end;
           end;
           if tSLI.RecordCount > 0 then begin
              SLI.Locate('Registro', tSLI.FieldByName('Registro').AsInteger, [loCaseInsensitive]);
           end;
      end;
end;

procedure TDespacho_LI.NavegaItensClick(Sender: TObject;Button: TNavigateBtn);
var
   i:integer;
begin
      Screen.Cursor := crSQLWait;
      with dmDespacho do begin
           Panel3.Enabled := (Button = nbEdit) or (Button = nbInsert);
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  NavegaItens.Controls[i].Enabled := False;
              end;
              cCodigo.Setfocus;
           end;
      end;

      Screen.Cursor := crDefault;
end;

procedure TDespacho_LI.bPesqProdClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Produtos';
      PesquisaGerais.mCampo  := 'Codigo_Mercadoria';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := dmDespacho.SLIItens;
      PesquisaGerais.mScript := 'SELECT CAST(Codigo AS varchar(10)) AS Codigo, CAST(Descricao AS varchar(90)) AS Descricao FROM Produtos'+#13+
                                'WHERE Requer_LI = 1 AND Descricao Like :pPesq';
      PesquisaGerais.Showmodal;
end;

procedure TDespacho_LI.NavegaItensBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
     with dmDespacho do begin
          if (Button = nbPost) and (SLIItens.State = dsInsert) then begin
             tRegistro.SQL.Clear;
             tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM SLIItens');
             tRegistro.Open;
             SLIItensRegistro.Value := tRegistro.FieldByName('Registro').asInteger;
          end;
     end;
end;

end.


