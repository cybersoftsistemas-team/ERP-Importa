unit frmProcesso_PO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls,
  Mask, Vcl.ExtCtrls, RXCtrls, Funcoes, RXDBCtrl, Buttons, RxLookup, RxDBComb, DB, DBAccess, MSAccess, Vcl.ComCtrls, DateUtils, MemDS, Grids, DBGrids, RxCurrEdit,
  system.UITypes, RxToolEdit;

type
  TProcesso_PO = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    Navega: TDBNavigator;
    bSair: TButton;
    bImprimir: TButton;
    tReg: TMSQuery;
    pPasta: TPageControl;
    pDados: TTabSheet;
    pProdutos: TTabSheet;
    cPO: TDBEdit;
    cProcesso: TDBEdit;
    cRequis: TDBEdit;
    DBMemo1: TDBMemo;
    StaticText4: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    cData: TDBDateEdit;
    StaticText3: TStaticText;
    cExportador: TRxDBLookupCombo;
    bPesqExp: TSpeedButton;
    StaticText5: TStaticText;
    cCondCambio: TRxDBLookupCombo;
    StaticText6: TStaticText;
    StaticText12: TStaticText;
    StaticText21: TStaticText;
    cLocalEmb: TRxDBComboBox;
    StaticText7: TStaticText;
    cLocalEnt: TRxDBComboBox;
    StaticText13: TStaticText;
    cCondVenda: TRxDBLookupCombo;
    StaticText28: TStaticText;
    cMoeda: TRxDBLookupCombo;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    tPesqMoeda: TSpeedButton;
    pLista: TTabSheet;
    RxDBGrid1: TDBGrid;
    Grade2: TDBGrid;
    Panel2: TPanel;
    cQtde: TDBEdit;
    StaticText17: TStaticText;
    cValor: TDBEdit;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    cCodigo: TDBEdit;
    cProduto: TDBLookupComboBox;
    StaticText20: TStaticText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    cItensQtde: TCurrencyEdit;
    lTotal: TStaticText;
    cItensValor: TCurrencyEdit;
    StaticText26: TStaticText;
    Panel3: TPanel;
    Navegaitens: TDBNavigator;
    StaticText24: TStaticText;
    cPais: TRxDBLookupCombo;
    bPesqPais: TSpeedButton;
    bPesqProd: TSpeedButton;
    cModalidade: TDBLookupComboBox;
    StaticText44: TStaticText;
    DBEdit3: TDBEdit;
    bPesqCli: TSpeedButton;
    lCliente: TStaticText;
    cCliente: TRxDBLookupCombo;
    StaticText8: TStaticText;
    DBEdit4: TDBEdit;
    StaticText25: TStaticText;
    DBMemo2: TDBMemo;
    cVia: TRxDBLookupCombo;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText9: TStaticText;
    Panel4: TPanel;
    cPesquisa: TEdit;
    StaticText10: TStaticText;
    bImportar: TButton;
    DBEdit5: TDBEdit;
    cTotal: TCurrencyEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cPOChange(Sender: TObject);
    procedure NavegaitensClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaitensBeforeAction(Sender: TObject;Button: TNavigateBtn);
    procedure cCodigoChange(Sender: TObject);
    procedure bPesqExpClick(Sender: TObject);
    procedure bPesqPaisClick(Sender: TObject);
    procedure tPesqMoedaClick(Sender: TObject);
    procedure bPesqProdClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure cExportadorChange(Sender: TObject);
    procedure cModalidadeClick(Sender: TObject);
    procedure bPesqCliClick(Sender: TObject);
    procedure cMoedaChange(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure cQtdeChange(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure cClienteChange(Sender: TObject);
  private
    procedure Totaliza;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_PO: TProcesso_PO;

implementation

uses frmdmDespacho, frmDados, frmMenu_Principal, frmPesquisaGerais, frmImpressao_ProcessosOP_PO, frmProcesso_POImportaItens;

{$R *.dfm}

procedure TProcesso_PO.bSairClick(Sender: TObject);
begin
      close;
end;

procedure TProcesso_PO.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados, dmDespacho, nil, nil);
      LimpaMemoria;
      Processo_PO.Release;
      Processo_PO := nil;
end;

procedure TProcesso_PO.FormCreate(Sender: TObject);
begin
      if FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_PO.FormShow(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           PO.SQL.Clear;
           PO.SQL.Add('SELECT * FROM PO ORDER BY Data');
           PO.Open;

           POItens.SQL.Clear;
           POItens.SQL.Add('SELECT *');
           POItens.SQL.Add('      ,Sel   = cast(0 as bit)');
           POItens.sql.add('      ,Saldo = cast(0 as money)');
           POItens.sql.add('      ,Descricao = (select Descricao from Produtos where Codigo = POItens.Codigo_Mercadoria)');
           POItens.SQL.Add('FROM POItens');
           POItens.SQL.Add('WHERE PO = :pPO ORDER BY PO, Item');
           POItens.ParamByName('pPO').asString := PO.FieldByName('Numero').asstring;
           POItens.Open;

           with Produtos do begin
                sql.Clear;
                if POCliente.AsInteger > 0 then begin
                   sql.Add('select * from Produtos where Cliente = :pCliente and Desativado <> 1');
                   parambyname('pCliente').AsInteger := POCliente.AsInteger;
                end else begin
                   sql.Add('select * from Produtos where Desativado <> 1');
                end;
                open;
           end;

           Empresas.SQL.Clear;
           Empresas.SQL.add('SELECT * FROM Empresas WHERE Codigo = :pEmpresa');
           Empresas.ParamByName('pEmpresa').asinteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais WHERE Nome = :pNome');
           IncentivosFiscais.ParamByName('pNome').AsString := Empresas.FieldByName('Incentivo_Fiscal').AsString;
           IncentivosFiscais.Open; 

           Configuracao.SQL.Clear;
           Configuracao.SQL.Add('SELECT * FROM Configuracao');
           Configuracao.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE Estado = ''EX'' AND Ativo = 1 ORDER BY Nome');
           Fornecedores.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes WHERE Importador = 1 ORDER BY Nome');
           Clientes.Open;

           CondicaoCambial.SQL.Clear;
           CondicaoCambial.SQL.Add('SELECT * FROM CondicaoCambial ORDER BY Codigo');
           CondicaoCambial.Open;

           Incoterms.SQL.Clear;
           Incoterms.SQL.Add('SELECT * FROM INCOTERMS ORDER BY Codigo');
           Incoterms.Open;

           Moedas.SQL.Clear;
           Moedas.SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
           Moedas.Open;

           Paises.SQL.Clear;
           Paises.SQL.Add('SELECT * FROM Paises ORDER BY Nome');
           Paises.Open;

           TiposProcesso.SQL.Clear;
           TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
           TiposProcesso.Open;

           ViaTransporte.SQL.Clear;
           ViaTransporte.SQL.Add('SELECT * FROM ViaTransporte ORDER BY Descricao');
           ViaTransporte.Open;

           TipoItem.SQL.Clear;
           TipoItem.SQL.Add('SELECT * FROM TipoItem ORDER BY Descricao');
           TipoItem.Open;

           // Carregando os locais de embarque pré-existentes.
           tReg.SQL.Clear;
           tReg.SQL.Add('SELECT DISTINCT Local_Embarque FROM PO Order BY Local_Embarque');
           tReg.Open;
           cLocalEmb.Items.Clear;
           while not tReg.eof do begin
                 cLocalEmb.Items.add(tReg.FieldByName('Local_Embarque').asString);
                 tReg.Next;
           end;

           // Carregando os locais de entrega pré-existentes.
           tReg.SQL.Clear;
           tReg.SQL.Add('SELECT DISTINCT Local_Entrega FROM PO Order BY Local_Entrega');
           tReg.Open;
           cLocalEnt.Items.Clear;
           while not tReg.eof do begin
                 cLocalEnt.Items.add(tReg.FieldByName('Local_Entrega').asString);
                 tReg.Next;
           end;

           pPasta.ActivePageIndex := 0;
      end;
end;

procedure TProcesso_PO.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
   i:integer;
begin
      with dmDespacho, Dados do begin
           bImportar.Enabled := (Button <> nbEdit) and (Button <> nbInsert);
           bImprimir.Enabled := (Button <> nbEdit) and (Button <> nbInsert);
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;

              pPasta.ActivePageIndex := 1;
              pDados.Enabled         := true;
              pLista.Enabled         := false;
              pProdutos.Enabled      := false;

              // Carregando os locais de embarque pré-existentes.
              tReg.SQL.Clear;
              tReg.SQL.Add('SELECT DISTINCT Local_Embarque FROM PO Order BY Local_Embarque');
              tReg.Open;
              cLocalEmb.Items.Clear;
              while not tReg.eof do begin
                    cLocalEmb.Items.add(tReg.FieldByName('Local_Embarque').asString);
                    tReg.Next;
              end;
              // Carregando os locais de entrega pré-existentes.
              tReg.SQL.Clear;
              tReg.SQL.Add('SELECT DISTINCT Local_Entrega FROM PO Order BY Local_Entrega');
              tReg.Open;
              cLocalEnt.Items.Clear;
              while not tReg.eof do begin
                    cLocalEnt.Items.add(tReg.FieldByName('Local_Entrega').asString);
                    tReg.Next;
              end;

              // Gerando o número do processo caso esteja automatico.
              if Button = nbInsert then begin
                 if EmpresasProcesso_Automatico.asboolean then begin
                    if Trim(EmpresasMascara_Processo.AsString) <> '' then begin
                       POProcesso.Value := NumeroProcesso(EmpresasMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, YearOf(Date), Trim(ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                    end else begin
                       POProcesso.Value := NumeroProcesso(ClientesMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, YearOf(Date), Trim(ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                    end;
                 end;
                 // Gerando o número do PO caso esteja automatico.
                 if EmpresasPO_Automatico.asBoolean then begin
                    if Trim(EmpresasMascara_PO.AsString) <> '' then begin
                       PONumero.Value := NumeroProcesso(EmpresasMascara_PO.AsString, EmpresasPO.AsInteger+1, YearOf(Date), Trim(ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                    end;
                 end;
                 cProcesso.Enabled   := not EmpresasProcesso_Automatico.Value;
                 cPO.Enabled         := not EmpresasPO_Automatico.Value;
                 POData.Value        := now;
                 POResponsavel.Value := Menu_Principal.mUsuarioCodigo;
              end;

              if not EmpresasProcesso_Automatico.Value then begin
                 cProcesso.SetFocus;
              end else begin
                 if not EmpresasPO_Automatico.Value then begin
                    cPO.SetFocus;
                 end else begin
                    cData.Setfocus;
                 end
              end;
           end;

           if (Button = nbPost) or (Button = nbCancel) then begin
              pDados.Enabled    := false;
              pLista.Enabled    := true;
              pProdutos.Enabled := true;
           end;
      end;
end;

procedure TProcesso_PO.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados, dmDespacho do begin
           if Button = nbPost then begin
              // Executando as consistencias dos campos.
              if Trim(PO.FieldByName('Numero').asstring) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'O número do "PO" é campo obrigatório.', mtError, [mbOK], 0);
                 cPO.Setfocus;
                 Abort;
              end;
              if Trim(PO.FieldByName('Processo').asstring) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'O "NÚMERO DO PROCESSO" é campo obrigatório.', mtError, [mbOK], 0);
                 cProcesso.Setfocus;
                 Abort;
              end;
              if DataLimpa(cData.Text) then begin
                 MessageDlg('Erro!'+#13+#13+'A "DATA" do PO é campo obrigatório.', mtError, [mbOK], 0);
                 cData.Setfocus;
                 Abort;
              end;
              if Trim(cExportador.Text) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'O "EXPORTADOR" é campo obrigatório.', mtError, [mbOK], 0);
                 cExportador.Setfocus;
                 Abort;
              end;
              if Trim(cCondCambio.Text) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'O "CONDIÇÃO CAMBIAL" é campo obrigatório.', mtError, [mbOK], 0);
                 cCondCambio.Setfocus;
                 Abort;
              end;
              if Trim(cVia.Text) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'O "VIA DE TRANSPORTE" é campo obrigatório.', mtError, [mbOK], 0);
                 cVia.Setfocus;
                 Abort;
              end;
              if Trim(cLocalEmb.Text) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'O "LOCAL DE EMBARQUE" é campo obrigatório.', mtError, [mbOK], 0);
                 cLocalEmb.Setfocus;
                 Abort;
              end;
              if Trim(cLocalEnt.Text) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'O "LOCAL DE ENTREGA" é campo obrigatório.', mtError, [mbOK], 0);
                 cLocalEnt.Setfocus;
                 Abort;
              end;
              if Trim(cCondVenda.Text) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'A "CONDIÇÃO DE VENDA" é campo obrigatório.', mtError, [mbOK], 0);
                 cCondVenda.Setfocus;
                 Abort;
              end;
              if Trim(cMoeda.Text) = '' then begin
                 MessageDlg('Erro!'+#13+#13+'A "MOEDA" é campo obrigatório.', mtError, [mbOK], 0);
                 cMoeda.Setfocus;
                 Abort;
              end;
              if (POModalidade_Importacao.AsInteger in [2, 3]) and (POCliente.AsInteger = 0) then begin
                 MessageDlg('Erro!'+#13+#13+'O "CLIENTE" é campo obrigatório para modalidade de importação '+QuotedStr(cModalidade.Text), mtError, [mbOK], 0);
                 cModalidade.Setfocus;
                 Abort;
              end;

              POEmpresa.Value := Menu_Principal.mEmpresa;

              ProcessosHistorico.SQL.Clear;
              ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE(Processo = :pProcesso) ORDER BY Data Desc, Hora Desc');
              ProcessosHistorico.ParamByName('pProcesso').AsString := Trim(POProcesso.AsString);
              ProcessosHistorico.Open;

              // Registrando os ultimos números de processo e PO, quando gerando automático.
              if PO.State = dsInsert then begin
                 tReg.SQL.Clear;
                 tReg.SQL.Add('SELECT Reg = ISNULL(MAX(Registro), 0)+1 FROM PO');
                 tReg.Open;
                 PORegistro.Value := tReg.FieldByName('Reg').asinteger;

                 if EmpresasPO_Automatico.Value then begin
                    if Trim(EmpresasMascara_Processo.AsString) <> '' then begin
                       POProcesso.Value := NumeroProcesso(EmpresasMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, YearOf(Date), Trim(ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                    end else begin
                       POProcesso.Value := NumeroProcesso(ClientesMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, YearOf(Date), Trim(ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                    end;
                    Empresas.Edit;
                             EmpresasProcesso.Value := EmpresasProcesso.Value + 1;
                    Empresas.Post;
                 end;
                 if EmpresasPO_Automatico.Value then begin
                    if Trim(EmpresasMascara_PO.AsString) <> '' then begin
                       PONumero.Value := NumeroProcesso(EmpresasMascara_PO.AsString, EmpresasPO.AsInteger+1, YearOf(Date), Trim(ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                    end;
                    Empresas.Edit;
                             EmpresasPO.Value := EmpresasPO.Value + 1;
                    Empresas.Post;
                 end;

                 // Registro do Histórico do processo (FollowUp).
                 tReg.SQL.Clear;
                 tReg.SQL.Add('SELECT ISNULL(MAX(Numero), 0)+1 AS Numero FROM ProcessosHistorico');
                 tReg.Open;

                 ProcessosHistorico.Append;
                                    ProcessosHistoricoNumero.Value    := tReg.FieldByName('Numero').AsInteger;
                                    ProcessosHistoricoData.Value      := Now;
                                    ProcessosHistoricoHora.Value      := TimetoStr(Time);
                                    ProcessosHistoricoProcesso.Value  := POProcesso.AsString;
                                    ProcessosHistoricoDescricao.Value := 'Confecção da Purchase Order (PO).';
                                    ProcessosHistoricoDocumento.Value := PONumero.AsString;
                 ProcessosHistorico.Post;
                 tReg.Close;
                 LogDados(PO, 'Purchase Order (PO): '+cPO.Text, PO.State);
              end;

              // Faz a abertura do processo caso não exista.
              ProcessosDoc.SQL.Clear;
              ProcessosDoc.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE Processo = :pProc');
              ProcessosDoc.ParamByName('pProc').AsString := cProcesso.Text;
              ProcessosDoc.Open;

              if ProcessosDoc.RecordCount = 0 then begin
                 ProcessosDoc.Append;
                              ProcessosDOCTipo.Value                   := 'IMPORTAÇÃO';
                              ProcessosDocProcesso.Value               := cProcesso.Text;
                              ProcessosDocData.Value                   := Now;
                              ProcessosDocResponsavel.Value            := Menu_Principal.mUsuarioCodigo;
                              ProcessosDocFornecedor.Value             := POExportador.Value;
                              ProcessosDOCEntreposto.Value             := false;
                              ProcessosDOCIncentivo_Fiscal.Value       := EmpresasIncentivo_Fiscal.Value;
                              ProcessosDOCCondicao_Cambio.Value        := POCondicao_Cambial.Value;
                              ProcessosDOCTipo_Mercadoria.Value        := POTipo_Mercadoria.Value;
                              ProcessosDOCIncoterms.Value              := POIncoterms.Value;
                              ProcessosDOCDesativado.Value             := False;
                              ProcessosDOCLocal_Embarque.Value         := POLocal_Embarque.Value;
                              ProcessosDOCLocal_Desembarque.Value      := POLocal_Entrega.Value;
                              ProcessosDOCProcesso_Abertura.Value      := now;
                              ProcessosDOCCourrier.Value               := false;
                              ProcessosDOCModalidade_Importacao.Value  := POModalidade_Importacao.Value;
                              ProcessosDOCDA.Value                     := false;
                              ProcessosDOCAdmissao_Temporaria.Value    := false;
                              ProcessosDOCOrigem_Mercadoria.AsInteger  := 1;
                              ProcessosDOCRemover_Valoracao.AsBoolean  := false;
                              ProcessosDOCSuspensao_Impostos.AsBoolean := false;
                              ProcessosDOCReducao_PIS.Value            := 0;
                              ProcessosDOCReducao_COFINS.Value         := 0;
                              ProcessosDOCConsignatario_CNPJ.Value     := ApenasNumeros(EmpresasCNPJ.Value);
                              ProcessosDOCConsignatario_UF.Value       := EmpresasEstado.Value;
                              ProcessosDOCFOB_ME.Value                 := cTotal.value;
                              ProcessosDOCFOB_MEAdicoes.Value          := 0;
                              ProcessosDOCFOB.Value                    := 0;
                              ProcessosDOCFob_Adicoes.Value            := 0;
                              ProcessosDOCValor_ICMS.Value             := 0;
                              ProcessosDOCQuantidade.Value             := 0;
                              ProcessosDOCAFRMM.Value                  := 0;
                              ProcessosDOCTaxa_SISCOMEX.Value          := 0;
                              ProcessosDOCVia_Transporte.Value         := POVia_Transporte.Value;
                              ProcessosDOCCodigo_PaisOrigem.Value      := POPais_Origem.Value;
                              ProcessosDOCOrigem.Value                 := PaisesNome.Value;
                              ProcessosDOCValor_PIS.Value              := 0;
                              ProcessosDOCValor_PIS2.Value             := 0;
                              ProcessosDOCValor_COFINS.Value           := 0;
                              ProcessosDOCValor_COFINS2.Value          := 0;
                              ProcessosDOCVencimento_Cambio.Value      := 0;
                              ProcessosDOCMoeda_Fob.Value              := POMoeda.Value;
                              ProcessosDOCPreco_Venda.Value            := false;
                              ProcessosDOCICMS_Diferido.Value          := IncentivosFiscaisICMS_Diferido.AsBoolean; 


                              if POModalidade_Importacao.AsInteger in [2, 3] then begin
                                 ProcessosDOCCliente.Value              := POCliente.Value;
                                 ProcessosDOCConsignatario_CNPJ.Value   := ApenasNumeros(Clientes.FieldByName('CNPJ').AsString);
                                 ProcessosDOCConsignatario_UF.Value     := Clientes.FieldByName('Estado').AsString;
                                 ProcessosDOCMargem_Lucro.Value         := ClientesMargem_Lucro.Value;
                                 ProcessosDOCDesconto_Operacional.Value := ClientesDesconto_Operacional.Value;
                                 ProcessosDOCDesconto_Adicional.Value   := ClientesDesconto_Adicional.Value;
                              end;
                 ProcessosDoc.Post;

                 // Registro do Histórico do processo (FollowUp).
                 tReg.SQL.Clear;
                 tReg.SQL.Add('SELECT ISNULL(MAX(Numero), 0)+1 AS Numero FROM ProcessosHistorico');
                 tReg.Open;

                 ProcessosHistorico.Append;
                                    ProcessosHistoricoNumero.Value    := tReg.FieldByName('Numero').AsInteger;
                                    ProcessosHistoricoData.Value      := now;
                                    ProcessosHistoricoHora.Value      := TimetoStr(Time);
                                    ProcessosHistoricoProcesso.Value  := POProcesso.AsString;
                                    ProcessosHistoricoDescricao.Value := 'Abertura do processo (Pela PO)';
                                    ProcessosHistoricoDocumento.Value := PONumero.AsString;
                 ProcessosHistorico.Post;
              end;

              if PO.State = dsEdit then begin
                 LogDados(PO, 'Purchase Order (PO): '+cPO.Text, PO.State);
              end;
           end;

           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end else begin
                 tReg.SQL.Clear;
                 tReg.SQL.Add('DELETE FROM POItens WHERE PO = :pPO');
                 tReg.ParamByName('pPO').AsString := PO.FieldByName('Numero').AsString;
                 tReg.Execute;
              end;
              LogDados(PO, 'Purchase Order (PO): '+cPO.Text, dsInactive);
           end;
      end;
end;

procedure TProcesso_PO.cPOChange(Sender: TObject);
begin
     with dmDespacho, Dados do begin
          if (PO.State <> dsInsert) and (PO.State <> dsEdit) then begin
             Totaliza;
          end;
     end;
end;

procedure TProcesso_PO.NavegaitensClick(Sender: TObject;Button: TNavigateBtn);
var
   i:integer;
begin
     if (Button = nbEdit) or (Button = nbInsert) then begin
        for i := 0 to 6 do begin
            NavegaItens.Controls[i].Enabled := False;
        end;
        Panel2.Enabled := true;
        cCodigo.SetFocus;
     end else begin
        Panel2.Enabled := false;
        if Button = nbPost then Totaliza;
     end;
end;

procedure TProcesso_PO.NavegaitensBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
     with Dados, dmDespacho do begin
          if Button = nbPost then begin
             if trim(cProduto.text) = '' then begin
                MessageDlg('Erro!'+#13+#13+'Produto é campo obrigatório.', mtError, [mbOK], 0);
                cCodigo.Setfocus;
                Abort;
             end;
             if POItens.State = dsInsert then begin
                tReg.SQL.Clear;
                tReg.SQL.Add('SELECT Reg  = (SELECT ISNULL(MAX(Registro), 0)+1 FROM POItens)');
                tReg.SQL.Add('      ,Item = (SELECT ISNULL(MAX(Item), 0)+1 FROM POItens WHERE PO = :pNum)');
                tReg.ParamByName('pNum').asstring := PO.FieldByName('Numero').asstring;
                tReg.Open;
                POItensRegistro.Value := tReg.FieldByName('Reg').asinteger;
                POItensItem.Value     := tReg.FieldByName('Item').asinteger;
             end;
             POItensPO.Value         := PONumero.Value;
             POItensFabricante.Value := Produtos.FieldByName('Fabricante').AsInteger;
          end;
     end;
end;

procedure TProcesso_PO.Totaliza;
begin
     with Dados, dmDespacho do begin
          POItens.SQL.Clear;
          POItens.SQL.Add('SELECT *');
          POItens.SQL.Add('      ,Sel   = cast(0 as bit)');
          POItens.sql.add('      ,Saldo = cast(0 as money)');
          POItens.sql.add('      ,Descricao = (select Descricao from Produtos where Codigo = POItens.Codigo_Mercadoria)');
          POItens.SQL.Add('FROM POItens');
          POItens.SQL.Add('WHERE PO = :pPO ORDER BY PO, Item');
          POItens.ParamByName('pPO').asString := PO.FieldByName('Numero').asstring;
          POItens.Open;

          tReg.sql.clear;
          tReg.sql.add('select sum(Valor*Quantidade) as Total from POItens where PO = :pPO');
          tReg.ParamByName('pPO').asstring := PONumero.AsString;
          tReg.open;

          with Produtos do begin
               sql.Clear;
               if POCliente.AsInteger > 0 then begin
                  sql.Add('select * from Produtos where Cliente = :pCliente and Desativado <> 1');
                  parambyname('pCliente').AsInteger := POCliente.AsInteger;
               end else begin
                  sql.Add('select * from Produtos where Desativado <> 1');
               end;
               open;
          end;

          cItensQtde.Value  := POItens.RecordCount;
          cItensValor.Value := tReg.FieldByName('Total').AsCurrency;
          lTotal.Caption    := 'Total em '+MoedasSimbolo.AsString;
          cTotal.Value      := tReg.FieldByName('Total').AsCurrency;
     end;
end;

procedure TProcesso_PO.cClienteChange(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           with Produtos do begin
                sql.Clear;
                if POCliente.AsInteger > 0 then begin
                   sql.Add('select * from Produtos where Cliente = :pCliente and Desativado <> 1');
                   parambyname('pCliente').AsInteger := POCliente.AsInteger;
                end else begin
                   sql.Add('select * from Produtos where Desativado <> 1');
                end;
                open;
           end;
      end;
end;

procedure TProcesso_PO.cCodigoChange(Sender: TObject);
begin
     with Dados, dmDespacho do begin
          if (POItens.State = dsInsert) or (POItens.State = dsEdit) then begin
             POItensQuantidade_Unidade.Value := ProdutosQuantidade_Volumes.asfloat;
             POItensNCM.Value                := ProdutosNCM.Value;
          end;
     end;
end;

procedure TProcesso_PO.bPesqExpClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Fornecedores';
      PesquisaGerais.mCampo  := 'Exportador';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := dmDespacho.PO;
      PesquisaGerais.Showmodal;
      cExportador.Setfocus;
end;

procedure TProcesso_PO.bPesqPaisClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Paises';
      PesquisaGerais.mCampo  := 'Pais_Origem';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.PO;
      PesquisaGerais.Showmodal;
      cPais.Setfocus;
end;

procedure TProcesso_PO.tPesqMoedaClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Moedas';
      PesquisaGerais.mCampo  := 'Moeda';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.mTabela := dmDespacho.PO;
      PesquisaGerais.Showmodal;
      cMoeda.Setfocus;
end;

procedure TProcesso_PO.bPesqProdClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Produtos';
      PesquisaGerais.mCampo  := 'Codigo_Mercadoria';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := dmDespacho.POItens;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_PO.bImprimirClick(Sender: TObject);
begin
      Impressao_ProcessosOP_PO           := TImpressao_ProcessosOP_PO.Create(Self);
      Impressao_ProcessosOP_PO.Caption   := Caption;
      Impressao_ProcessosOP_PO.mpesquisa := cPO.Text;
      Impressao_ProcessosOP_PO.ShowModal;
end;

procedure TProcesso_PO.cProcessoExit(Sender: TObject);
begin
      if (Trim(cPO.Text) = '') and ((dmDespacho.PO.State = dsInsert) or (dmDespacho.PO.State = dsEdit)) then begin
         dmDespacho.PO.FieldByName('Numero').Value := cProcesso.Text;
      end;
end;

procedure TProcesso_PO.cExportadorChange(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           POPais_Origem.Value := FornecedoresPais.Value;
      end;
end;

procedure TProcesso_PO.cModalidadeClick(Sender: TObject);
begin
      with Dados, dmDespacho do begin
           lCliente.Enabled := POModalidade_Importacao.AsInteger > 1;
           cCliente.Enabled := lCliente.Enabled;
           bPesqCli.Enabled := lCliente.Enabled;
      end;
end;

procedure TProcesso_PO.bPesqCliClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Clientes';
      PesquisaGerais.mCampo  := 'Cliente';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mTabela := dmDespacho.PO;
      PesquisaGerais.Showmodal;
      cCliente.Setfocus;
end;

procedure TProcesso_PO.cMoedaChange(Sender: TObject);
begin
     lTotal.Caption := 'Total em '+Dados.MoedasSimbolo.AsString;
end;

procedure TProcesso_PO.cPesquisaChange(Sender: TObject);
Var
    tPesq:TMSQuery;
begin
     tPesq            := TMSQuery.Create(Impressao_ProcessosOP_PO);
     tPesq.Connection := Dados.Banco_Empresas;
     tPesq.SQL.Clear;
     tPesq.SQL.Add('SELECT Numero FROM PO WHERE Numero LIKE '+QuotedStr('%'+Trim(cPesquisa.Text)+'%'));
     tPesq.Open;
     if tPesq.RecordCount = 0 then begin
        tPesq.SQL.Clear;
        tPesq.SQL.Add('SELECT Numero FROM PO WHERE Processo LIKE '+QuotedStr('%'+Trim(cPesquisa.Text)+'%'));
        tPesq.Open;
     end;
     with dmDespacho do begin
          PO.Locate('Numero', tPesq.FieldByName('Numero').AsString, [loCaseInsensitive]);
     end;
     tPesq.Destroy;
end;

procedure TProcesso_PO.cQtdeChange(Sender: TObject);
begin
     with Dados, dmDespacho do begin
          if (POItens.State = dsInsert) or (POItens.State = dsEdit) then begin
             POItensQuantidade_Volumes.Value := POItensQuantidade.Value / ProdutosQuantidade_Volumes.Value;
          end;
     end;
end;

procedure TProcesso_PO.bImportarClick(Sender: TObject);
begin
        Processo_POImportaItens := TProcesso_POImportaItens.Create(Self);
        Processo_POImportaItens.Caption := Caption;
        Processo_POImportaItens.ShowModal;     
        dmDespacho.POItens.Refresh;
end;




end.
