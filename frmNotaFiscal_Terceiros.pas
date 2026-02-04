unit frmNotaFiscal_Terceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.ComCtrls, RXCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, Mask, Buttons, RXDBCtrl, DB, DBGrids, FUNCOES, DBAccess, MSAccess, ClipBrd, RxLookup, RxDBComb, DateUtils, Grids,
  RxCurrEdit, RxToolEdit, system.UITypes, MemDS, NFe_util_2G_tlb;

type
  TNotaFiscal_Terceiros = class(TForm)
    cXML: TOpenDialog;
    tExiste: TMSQuery;
    tDeletaItens: TMSQuery;
    tItens: TMSQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    cNota: TDBEdit;
    cCodigoNatureza: TDBEdit;
    cDataEmissao: TDBDateEdit;
    cDataEntrada: TDBDateEdit;
    StaticText1: TStaticText;
    lNatureza: TStaticText;
    lFornecedor: TStaticText;
    StaticText11: TStaticText;
    StaticText2: TStaticText;
    StaticText9: TStaticText;
    cProcesso: TDBComboBox;
    StaticText13: TStaticText;
    DBEdit12: TDBEdit;
    StaticText16: TStaticText;
    DBEdit13: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    GroupBox1: TGroupBox;
    StaticText14: TStaticText;
    cBaseICMS: TDBEdit;
    StaticText15: TStaticText;
    cValorICMS: TDBEdit;
    StaticText4: TStaticText;
    cIsentasICMS: TDBEdit;
    StaticText5: TStaticText;
    cOutrasICMS: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    StaticText10: TStaticText;
    StaticText12: TStaticText;
    GroupBox5: TGroupBox;
    StaticText20: TStaticText;
    DBEdit11: TDBEdit;
    StaticText29: TStaticText;
    DBEdit21: TDBEdit;
    cObservacao: TDBMemo;
    StaticText24: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText18: TStaticText;
    DBEdit5: TDBEdit;
    StaticText19: TStaticText;
    DBEdit8: TDBEdit;
    StaticText6: TStaticText;
    cEspecie: TDBEdit;
    StaticText23: TStaticText;
    cNatureza: TDBLookupComboBox;
    cChaveNFE: TDBEdit;
    StaticText3: TStaticText;
    cModelo: TRxDBLookupCombo;
    cReferencia: TRxDBLookupCombo;
    cCentroCusto: TRxDBLookupCombo;
    cFornecedor: TRxDBLookupCombo;
    Panel3: TPanel;
    bFiltrar: TSpeedButton;
    bLimpar: TSpeedButton;
    StaticText17: TStaticText;
    cFiltraNotaIni: TCurrencyEdit;
    StaticText27: TStaticText;
    cFiltraNotaFim: TCurrencyEdit;
    StaticText28: TStaticText;
    cFiltraEmiIni: TDateEdit;
    StaticText30: TStaticText;
    cFiltraEmiFim: TDateEdit;
    StaticText31: TStaticText;
    cFiltraEntIni: TDateEdit;
    StaticText32: TStaticText;
    cFiltraEntFim: TDateEdit;
    StaticText33: TStaticText;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    cFiltraForn: TRxDBLookupCombo;
    cFiltraRef: TRxDBLookupCombo;
    cFiltraNat: TRxDBLookupCombo;
    cFiltraProc: TEdit;
    DBCheckBox1: TDBCheckBox;
    StaticText37: TStaticText;
    cModalidade: TRxDBComboBox;
    StaticText38: TStaticText;
    cNaturezaFrete: TRxDBComboBox;
    StaticText39: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    tTransportador: TMSQuery;
    tTransportadorCodigo: TIntegerField;
    tTransportadorNome: TStringField;
    tTransportadorCNPJ: TStringField;
    dstTransportador: TDataSource;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image1: TImage;
    Image3: TImage;
    Label6: TLabel;
    lItens: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    tTotaliza: TMSQuery;
    tLancamento: TMSQuery;
    Image9: TImage;
    Label7: TLabel;
    DBText6: TDBText;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GradeSerial: TDBGrid;
    GradeLote: TDBGrid;
    bAlterar: TButton;
    StaticText40: TStaticText;
    cMunOrigem: TRxDBLookupCombo;
    cMunDest: TStaticText;
    cMunDestino: TRxDBLookupCombo;
    TabSheet5: TTabSheet;
    GradeManif: TDBGrid;
    tManifesto: TMSQuery;
    dstManifesto: TDataSource;
    tManifestoNota: TIntegerField;
    tManifestoData_Emissao: TDateTimeField;
    tManifestoNFe_cNF: TStringField;
    tManifestoFornecedor: TStringField;
    bSelTodos: TButton;
    bSelNehum: TButton;
    bManifestar: TButton;
    Panel4: TPanel;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    lJustificativa: TStaticText;
    cJustificativa: TEdit;
    cData: TDateEdit;
    cHora: TMaskEdit;
    StaticText44: TStaticText;
    cMotivo: TComboBox;
    cSit: TRadioGroup;
    cMensagens: TMemo;
    bManiFora: TButton;
    Button1: TButton;
    StaticText51: TStaticText;
    cIncentivo: TRxDBLookupCombo;
    GroupBox6: TGroupBox;
    StaticText43: TStaticText;
    DBEdit3: TDBEdit;
    StaticText45: TStaticText;
    cPgto: TRxDBComboBox;
    DBCheckBox2: TDBCheckBox;
    tTmp: TMSQuery;
    tTmp2: TMSQuery;
    StaticText46: TStaticText;
    cArmazem: TRxDBLookupCombo;
    tArmazem: TMSQuery;
    dstArmazem: TDataSource;
    tArmazemCodigo: TIntegerField;
    tArmazemNome: TStringField;
    tArmazemCNPJ: TStringField;
    Panel1: TPanel;
    bItens: TButton;
    bDuplicatas: TButton;
    bImportaXMLNFe: TButton;
    bEfetivar: TButton;
    bImportaXMLCTe: TButton;
    bCredito: TButton;
    bVincular: TButton;
    Panel5: TPanel;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    bSair: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bItensClick(Sender: TObject);
    procedure cFornecedorExit(Sender: TObject);
    procedure lFornecedorClick(Sender: TObject);
    procedure lNaturezaClick(Sender: TObject);
    procedure cDataReferenciaExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure StaticText7Click(Sender: TObject);
    procedure cReferenciaCloseUp(Sender: TObject);
    procedure StaticText18Click(Sender: TObject);
    procedure cCodigoNaturezaChange(Sender: TObject);
    procedure StaticText6Click(Sender: TObject);
    procedure bDuplicatasClick(Sender: TObject);
    procedure StaticText23Click(Sender: TObject);
    procedure bImportaXMLNFeClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cEspecieChange(Sender: TObject);
    procedure cChaveNFEExit(Sender: TObject);
    procedure ContaItens;
    procedure bFiltrarClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bEfetivarClick(Sender: TObject);
    procedure VerBaixa;
    procedure bImportaXMLCTeClick(Sender: TObject);
    procedure cNotaChange(Sender: TObject);
    procedure GradeSerialDblClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    function  ChecaItem:Boolean;
    procedure bSelTodosClick(Sender: TObject);
    procedure bSelNehumClick(Sender: TObject);
    procedure cSitClick(Sender: TObject);
    procedure bManifestarClick(Sender: TObject);
    procedure cMotivoChange(Sender: TObject);
    procedure BuscarSefaz;
    procedure Button1Click(Sender: TObject);
    procedure bManiForaClick(Sender: TObject);
    procedure bCreditoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bVincularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mDataEmiAntiga: TDate;
    mDataEntAntiga: TDate;
    mFornecedorAntigo,
    mNotaAntes,
    mReferenciaAntiga: Integer;
    mContaDebito,
    mContaCredito,
    mNaturezaAntiga,
    mProcessoAntigo,
    mTipo,
    mEspecieAntiga: String;
    mProvisoria: Boolean;
  end;

var
  NotaFiscal_Terceiros: TNotaFiscal_Terceiros;

implementation

uses frmDados, frmDMFiscal, frmDMContab, frmCadastro_Fornecedores, frmCadastro_NaturezaOperacao,frmNotaFiscal_TerceirosItens, frmCadastro_TiposDocumentos,
     frmMenu_Principal, frmCadastro_ICMS, frmModalidadePgto_Parcelas, frmJanela_Processamento, frmCadastro_CentroCusto, frmUtilitarios_Importar_NFe_Terceiros,
     frmUtilitarios_Importar_NFe_TerceirosProv, frmConfig_TipoNotaTerceiros, frmNotaFiscal_TerceirosEfetivar, frmUtilitarios_Importar_CTe_Terceiros,
     frmNotaFiscal_TerceirosAlteraChassi, frmNotaFiscal_TerceirosCredito, frmNotaFiscal_TerceirosVinculo;

{$R *.dfm}

procedure TNotaFiscal_Terceiros.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TNotaFiscal_Terceiros.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     With Dados, dmFiscal, dmContab do begin
          Configuracao.Open;

          Natureza.SQL.Clear;
          Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) and (Codigo BETWEEN :pIni AND :pFim) ORDER BY Descricao_NF');
          Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_EntradaIni.Value;
          Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_EntradaFim.Value;
          Natureza.Open;

          bEfetivar.Enabled := mProvisoria;

          with NotasTerceiros do begin
               close;
               sql.clear;
               if mProvisoria = false then begin
                  sql.Add('select * from NotasTerceiros where isnull(Servico, '''') = '''' and (isnull(Provisoria, 0) <> 1)');
               end else begin
                  sql.Add('select * from NotasTerceiros where isnull(Provisoria,0) = 1');
               end;
               SQL.Add('order by Data_Entrada, Nota');
               Open;
          end;

          TabSheet1.Caption := 'Dados da Nota Fiscal ['+ InttoStr(NotasTerceiros.RecordCount)+']';

          bItens.Enabled := NotasTerceiros.RecordCount > 0;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
          Fornecedores.Open;

          Estados.SQL.Clear;
          Estados.SQL.Add('SELECT * FROM Estados');
          Estados.Open;

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios ORDER BY Nome');
          Municipios.Open;

          ICMS.SQL.Clear;
          ICMS.SQL.Add('SELECT * FROM ICMS');
          ICMS.Open;

          ProcessosDOC.SQL.Clear;
          ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos' );
          ProcessosDOC.Open;
          ProcessosDOC.First;
          While not ProcessosDoc.Eof do begin
                cProcesso.Items.Add(ProcessosDOCProcesso.AsString);
                ProcessosDOC.Next;
          End;
          ProcessosDOC.First;

          ICMS.Locate('UF', FornecedoresEstado.Value, [loCaseInsensitive] );

          with Empresas do begin
               sql.Clear;
               sql.Add('select * from Empresas where Codigo = :pEmpresa');
               parambyname('pEmpresa').asinteger := Menu_Principal.mEmpresa;
               open;
          end;

          ModalidadesPgto.SQL.Clear;
          ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Descricao');
          ModalidadesPgto.Open;

          TiposDocumentos.SQL.Clear;
          TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE (Sintegra = 1)');
          TiposDocumentos.Open;

          ReferenciasFiscais.SQL.Clear;
          ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE Ativo = 1 ORDER BY Descricao');
          ReferenciasFiscais.Open;

          Historicos.SQL.Clear;
          Historicos.SQL.Add('SELECT * FROM HistoricoPadrao');
          Historicos.Open;

          CentroCusto.SQL.Clear;
          CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Codigo');
          CentroCusto.Open;

          ModelosDocumentos.SQL.Clear;
          ModelosDocumentos.SQL.Add('SELECT * FROM ModelosDocumentos ORDER BY Descricao');
          ModelosDocumentos.Open;

          with tTransportador do begin
               sql.clear;
               sql.add('select Codigo');
               sql.add('      ,Nome');
               sql.add('      ,CNPJ');
               sql.add('from Fornecedores');
               sql.add('where (select Descricao from RamoAtividade where Codigo =  Ramo_Atividade) like ''%TRANSP%'' ');
               sql.add('and (select Modulo_NotaFiscalTerceiros from RamoAtividade where Codigo =  Ramo_Atividade) = 1');
               open;
          end;
          with tArmazem do begin
               sql.clear;
               sql.add('select Codigo');
               sql.add('      ,Nome');
               sql.add('      ,CNPJ');
               sql.add('from Fornecedores');
               sql.add('where (select Descricao from RamoAtividade where Codigo =  Ramo_Atividade) like ''%ARMAZ%'' ');
               open;
          end;

          IncentivosFiscais.SQL.Clear;
          IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
          IncentivosFiscais.Open;

          mDataEmiAntiga    := NotasTerceirosData_Emissao.AsDateTime;
          mNaturezaAntiga   := NotasTerceirosNatureza_Codigo.AsString;
          mDataEntAntiga    := NotasTerceirosData_Entrada.AsDateTime;
          mProcessoAntigo   := NotasTerceirosProcesso.AsString;
          mFornecedorAntigo := NotasTerceirosFornecedor.AsInteger;
          mEspecieAntiga    := NotasTerceirosTipo.AsString;
          mReferenciaAntiga := NotasTerceirosReferencia_Fiscal.AsInteger;
     End;
     bDuplicatas.Enabled    := (dmFiscal.NotasTerceirosValor_TotalNota.Value > 0);
     //bImportaXMLCTe.Visible := Dados.EmpresasModulo_XMLCTe.AsBoolean;

     cSit.ItemIndex    := 0;
     cData.Date        := Date;
     cHora.Text        := TimetoStr(Time);
     cMotivo.ItemIndex := 0;
     cJustificativa.Clear;

     GradeManif.SelectedRows.CurrentRowSelected := True;

     // Desabilita o botão de exclusão para notas provisórias, habilita apenas para o "ADMINISTRADOR".
     If (mProvisoria = true) AND (Menu_Principal.mUsuarioNome <> 'ADMINISTRADOR') then begin
        Navega.Controls[5].Enabled := false;
     End;

     PageControl1.ActivePageIndex := 0;

     ContaItens;
     Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Terceiros.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      Screen.Cursor := crSQLWait;

      With Dados, dmFiscal do begin
           ContaItens;
           ICMS.Locate('UF', FornecedoresEstado.Value, [loCaseInsensitive] );
           If (Button = nbEdit) or (Button = nbInsert) then begin
              If Button = nbInsert then NotasTerceirosProcesso.Value := '';
              For i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              End;

              bItens.Enabled         := false;
              bPesquisa.Enabled      := false;
              bDuplicatas.Enabled    := false;
              bImportaXMLNfe.Enabled := false;
              bImportaXMLCTe.Enabled := false;
              Panel2.Enabled         := True;
              bEfetivar.Enabled      := false;

              If Button = nbInsert then begin
                 NotasTerceirosDesdobramento.Value := False;
                 cNota.SetFocus;
              end else begin
                 cNota.SetFocus;
              End;
              If Button = nbEdit then begin
                 // Verifica se existe lancamento financeiro baixado da nota fiscal.
                 VerBaixa;

                 If tExiste.RecordCount > 0 then begin
                    MessageDlg('Esta nota fiscal não pode ser alterada, pois existe lançamento financeiro baixado'+#13+#13+
                               'Estorne primeiro a baixa para poder alterar esta nota Fiscal.'+#13+#13+
                               'Título: '+ tExiste.FieldByName('Titulo').AsString + '   Vencimento: '+ tExiste.FieldByName('Vencimento').AsString, mtConfirmation, [mbOK], 0);
                    Navega.BtnClick(nbCancel);
                    Abort;
                 End;
              End
           End;
           
           If (Button = nbPost) or (Button = nbCancel) then Begin
              bItens.Enabled         := True;
              bItens.Enabled         := true;
              bPesquisa.Enabled      := true;
              bDuplicatas.Enabled    := true;
              bImportaXMLNfe.Enabled := true;
              bImportaXMLCTe.Enabled := true;
              bEfetivar.Enabled      := mProvisoria;
              Panel2.Enabled         := False;

              If (Button = nbPost) then Begin
                 If Trim(cProcesso.Text) <> '' then begin
                    If not ProcessosDoc.Locate('Processo', cProcesso.text, [loCaseInsensitive]) then begin
                       ProcessosDoc.Append;
                                    ProcessosDocProcesso.Value         := cProcesso.Text;
                                    ProcessosDocTipo.Value             := mTipo;
                                    ProcessosDocIncentivo_Fiscal.Value := ReferenciasFiscaisIncentivo_Fiscal.Value;
                       ProcessosDoc.Post;
                    End;

                    // Atualiza as aliquotas de "ICMS Operacional e Substitutivo" dos itens da nota fiscal.
                    NotasTerceirosItens.SQL.Clear;
                    NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Emissao = :pEmissao) AND (Fornecedor = :pFornecedor) AND (Natureza_Codigo = :pNatureza)');
                    NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                    NotasTerceirosItens.ParamByName('pEmissao').AsDate       := NotasTerceirosData_Emissao.Value;
                    NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                    NotasTerceirosItens.ParamByName('pNatureza').AsString    := NotasTerceirosNatureza_Codigo.AsString;
                    NotasTerceirosItens.Open;
                    NotasTerceirosItens.First;

                    While not NotasTerceirosItens.Eof do begin
                          NotasTerceirosItens.Edit;
                                              NotasTerceirosItensAliquota_ICMSOper.Value := NotasTerceirosAliquota_ICMSOper.Value;
                                              If NotasTerceirosAliquota_ICMSOper.Value <> 0 then
                                                 NotasTerceirosItensValor_ICMSOper.Value := Percentual(NotasTerceirosItensValor_BCICMSOper.Value, NotasTerceirosItensAliquota_ICMSOper.Value)
                                              else
                                                 NotasTerceirosItensValor_ICMSOper.Value := 0;

                                              NotasTerceirosItensAliquota_ICMSSub.Value  := NotasTerceirosAliquota_ICMSSub.Value;
                                              If NotasTerceirosAliquota_ICMSSub .Value <> 0 then
                                                 NotasTerceirosItensValor_ICMSSub.Value := Percentual(NotasTerceirosItensValor_BCICMSSub.Value, NotasTerceirosItensAliquota_ICMSSub.Value)
                                              else
                                                 NotasTerceirosItensValor_ICMSSub.Value := 0;
                          NotasTerceirosItens.Post;
                          NotasTerceirosItens.Next;
                    End;
                 End;
              End;
           End;

           bDuplicatas.Enabled := (NotasTerceirosValor_TotalNota.Value > 0) and (NotasTerceiros.State <> dsInsert) and (NotasTerceiros.State <> dsEdit) ;
           mDataEmiAntiga      := NotasTerceirosData_Emissao.AsDateTime;
           mNaturezaAntiga     := NotasTerceirosNatureza_Codigo.AsString;
           mDataEntAntiga      := NotasTerceirosData_Entrada.AsDateTime;
           mProcessoAntigo     := NotasTerceirosProcesso.AsString;
           mFornecedorAntigo   := NotasTerceirosFornecedor.AsInteger;
           mEspecieAntiga      := NotasTerceirosTipo.AsString;
           mReferenciaAntiga   := NotasTerceirosReferencia_Fiscal.AsInteger;
           mNotaAntes          := NotasTerceirosNota.Value;
      End;

      // Desabilita o botão de exclusão para notas provisórias, habilita apenas para o "ADMINISTRADOR".
      If (mProvisoria = true) AND (Menu_Principal.mUsuarioNome <> 'ADMINISTRADOR') then begin
         Navega.Controls[5].Enabled := false;
      End;

      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Terceiros.bItensClick(Sender: TObject);
begin
      NotaFiscal_TerceirosItens := TNotaFiscal_TerceirosItens.Create(Self);
      NotaFiscal_TerceirosItens.Caption := Caption;
      NotaFiscal_TerceirosItens.ShowModal;
      bDuplicatas.Enabled := (dmFiscal.NotasTerceirosValor_TotalNota.Value > 0);
      ContaItens;
end;

procedure TNotaFiscal_Terceiros.cFornecedorExit(Sender: TObject);
begin
       With Dados, dmFiscal do begin
            ICMS.Locate('UF', FornecedoresEstado.Value, [loCaseInsensitive] );
            If NotasTerceirosFornecedor.Value > 0 then begin
               If (FornecedoresEstado.Value =  EmpresasEstado.Value) then
                  NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Dentro.Value
               else
                  NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Fora.Value;
            end;
       end;
end;

procedure TNotaFiscal_Terceiros.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      if trim(cNota.Text) <> '' then begin
         if not ChecaItem then begin
            if MessageDlg('Atenção!'+#13+#13+'Não foram informados os itens do documento fiscal.'+#13+#13+'Se você sair sem informar os itens do documento, ele será excluído'+#13+#13+'Deseja realmente sair?', mtInformation, [mbYes, mbNo], 0) = mrYes then begin
               dmFiscal.NotasTerceiros.Delete;
            end else begin
               Abort;
            end;
         end;
      end;
      if tManifesto.RecordCount > 0 then begin
         PageControl1.ActivePageIndex := 3;
         if MessageDlg('Atenção!'+#13+#13+
                       'A partir do dia 01/07/2019 a manifestação de Nota Fiscal Eletrônica passou a ser obrigatório'+#13+#13+
                       'Existem notas não manifestadas no banco de dados.'+#13+#13+
                       'Deseja manifesta-las agora?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            PageControl1.ActivePageIndex := 3;
            cMotivo.SetFocus;
            Abort;
         end;
      end;

      FecharTabelas(Dados, dmFiscal, dmContab, nil);

      LimpaMemoria;
      NotaFiscal_Terceiros.Release;
      NotaFiscal_TerceirosItens := nil;
end;

procedure TNotaFiscal_Terceiros.lFornecedorClick(Sender: TObject);
begin
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.ShowModal;
      Dados.Fornecedores.Open;
end;

procedure TNotaFiscal_Terceiros.lNaturezaClick(Sender: TObject);
begin
      Cadastro_NaturezaOperacao := TCadastro_NaturezaOperacao.Create(Self);
      Cadastro_NaturezaOperacao.Caption := Caption;
      Cadastro_NaturezaOperacao.ShowModal;
      Dados.Natureza.Open;
end;

procedure TNotaFiscal_Terceiros.cDataReferenciaExit(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     With dmFiscal, Dados do Begin
          If NotasTerceirosNota_Referencia.Value > 0 then begin
             Notas.Close;
             Notas.SQL.Clear;
             Notas.SQL.Add('SELECT * FROM NotasFiscais WHERE (Numero = :pNumero) AND (Data_Emissao = :pData)');
             Notas.ParamByName('pNumero').AsInteger := dmFiscal.NotasTerceirosNota_Referencia.Value;
             Notas.ParamByName('pData').AsDate      := dmFiscal.NotasTerceirosData_Referencia.Value;
             Notas.Open;

             If Notas.RecordCount = 0 then begin
                ShowMessage('Nenhuma Nota Fiscal encontrada com este número na data informada!');
                dmFiscal.NotasTerceiros.Cancel;
                Panel2.Enabled := False;
             end else begin
                If NotasCancelada.Value <> True then begin
                   If NaturezaCodigo_Devolucao.Value = '' then begin
                      ShowMessage('Natureza da operação de devolução para ('+NotasNatureza_Codigo.Value +' - '+Dados.NaturezaDescricao_NF.Value+')'+#13+'não informada na tabela.');
                      Navega.BtnClick(nbCancel);
                      Abort;
                   End;
                   NotasTerceirosProcesso.Value          := NotasProcesso.Value;
                   NotasTerceirosNatureza_Codigo.Value   := Dados.NaturezaCodigo_Devolucao.Value;
                   NotasTerceirosAliquota_ICMSOper.Value := NotasAliquota_ICMSOper.Value;
                   Natureza.RefreshRecord;
                End else begin
                   ShowMessage('Nota Fiscal cancelada!'+#13+#13+'Motivo: '+NotasMotivo_Cancelamento.Value);
                   dmFiscal.NotasTerceiros.Cancel;
                   Panel2.Enabled := False;
                End;
             End;
          End;
     End;
     Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Terceiros.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
var
   mQtdeUni: Integer;
   mItens:widestring;
begin
       With Dados, dmFiscal, dmContab do begin
            if trim(cNota.Text) <> '' then begin
               if (NotasTerceiros.State <> dsInsert) and (NotasTerceiros.State <> dsEdit) then begin
                  if (Button <> nbEdit) and (Button <> nbInsert) and (Button <> nbDelete) then begin
                     if not ChecaItem then begin
                        if MessageDlg('Atenção!'+#13+#13+'Não foram informados os itens do documento fiscal.'+#13+#13+'Se você sair sem informar os itens do documento, ele será excluído'+#13+#13+'Deseja realmente sair?', mtInformation, [mbYes, mbNo], 0) = mrYes then begin
                           NotasTerceiros.Delete;
                        end else begin
                           Abort;
                        end;
                     end;
                  end;
               end;
            end;

            Navega.SetFocus;
            If (Button = nbEdit) or (Button = nbDelete) or (Button = nbPost) then begin
               // Verifica se o período fiscal esta bloqueado.
               tExiste.SQL.Clear;
               tExiste.SQL.Add('SELECT COUNT(*) AS Qtde FROM FechamentoFiscal WHERE Ano = :pAno AND Mes = :pMes AND Fechado = 1');
               tExiste.ParamByName('pAno').AsInteger := YearOf(NotasTerceirosData_Entrada.Value);
               tExiste.ParamByName('pMes').AsInteger := MonthOf(NotasTerceirosData_Entrada.Value);
               tExiste.Open;
               If tExiste.FieldByName('Qtde').AsInteger > 0 then begin
                  If (Button = nbEdit) then
                     MessageDlg('Nota Fiscal não pode ser alterada!'+#13+#13+'Nota Fiscal esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                  If (Button = nbDelete) then
                     MessageDlg('Nota Fiscal não pode ser excluída!'+#13+#13+'Nota Fiscal esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                  If (Button = nbPost) then begin
                     MessageDlg('Data de Entrada da nota fiscal esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                     cDataEntrada.SetFocus;
                  End;
                  Abort;
               End;
            End;

            If (Button = nbPost) then begin
               // Verifica todos os campos obrigatórios do documento.
               If NotasTerceirosNota.Value = 0 then begin
                  MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o número do documento.', mtError, [mbOK], 0);
                  cNota.SetFocus;
                  Abort;
               End;
               If RemoveCaracter('/','',NotasTerceirosData_Emissao.AsString) = '' then begin
                  MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a data da emissão do documento.', mtError, [mbOK], 0);
                  cDataEmissao.SetFocus;
                  Abort;
               End;
               If RemoveCaracter('/','',NotasTerceirosData_Entrada.AsString) = '' then begin
                  MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a data da entrada no documento.', mtError, [mbOK], 0);
                  cDataEntrada.SetFocus;
                  Abort;
               End;
               If NotasTerceirosReferencia_Fiscal.Value = 0 then begin
                  MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a referência fiscal.', mtError, [mbOK], 0);
                  cReferencia.SetFocus;
                  Abort;
               End;
               If NotasTerceirosFornecedor.Value = 0 then begin
                  MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o fornecedor.', mtError, [mbOK], 0);
                  cFornecedor.SetFocus;
                  Abort;
               End;
               If NotasTerceirosNatureza_Codigo.Value = '' then begin
                  MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a natureza da operação.'+#13+#13+'Falta informar a natureza da operação no cadastro das referências fiscais.', mtError, [mbOK], 0);
                  cReferencia.SetFocus;
                  Abort;
               End;
               If Trim(NotasTerceirosModelo.AsString) = '' then begin
                  MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o modelo do documento fiscal.', mtError, [mbOK], 0);
                  cModelo.SetFocus;
                  Abort;
               End;
               If NotasTerceirosData_Emissao.Value > NotasTerceirosData_Entrada.Value then begin
                  MessageDlg('Data Invalida!'+#13+#13+'A "Data de Emissão" não pode ser maior que a "Data de Entrada".', mtError, [mbOK], 0);
                  cDataEmissao.SetFocus;
                  Abort;
               End;
               If (Trim(NotasTerceirosNFe_cNF.AsString) = '') and  (NotasTerceirosModelo.AsString = '55') then begin
                  MessageDlg('Chave de NF-e Inválida!'+#13+#13+'Para "Modelo 55 Nota Fiscal Eletrônica" o campo "Chave NF-e" é obrigatório.', mtError, [mbOK], 0);
                  cChaveNFE.SetFocus;
                  Abort;
               End;
               If (ReferenciasFiscaisApuracao_PISCOFINS.AsBoolean = true) and (NaturezaApuracao_PISCOFINS.AsBoolean = false) then begin
                  ShowMessage('Divergência na Opção de "PIS/COFINS" entre a "Referência Fiscal" e a "Natureza da Operação".'+#13+#13+'Se a "Referência Fiscal" apura PIS/COFINS a "Natureza da Operação" também deve apurar.');
                  cCodigoNatureza.SetFocus;
                  Abort;
               End;
               If cModalidade.ItemIndex = -1 then begin
                  ShowMessage('Modalidade de frete é campo obrigatório!'+#13+#13+'Selecione uma modalidade para salvar a nota fiscal.');
                  cModalidade.SetFocus;
                  Abort;
               End;
               If (cNaturezaFrete.Enabled) AND (cNaturezaFrete.ItemIndex = -1) then begin
                  ShowMessage('Natureza do Frete é campo obrigatório para "Conhecimentos de Transporte"!'+#13+#13+'Selecione uma "Natureza do Frete" para salvar o "Conhecimentos de Transporte".');
                  cNaturezaFrete.SetFocus;
                  Abort;
               End;
               If ((cEspecie.Text = 'CTR') or (cEspecie.Text = 'CTE')) and (Trim(cMunOrigem.Text) = '') then begin
                  ShowMessage('Municipio de "Origem" é campo obrigatório para "Conhecimentos de Transporte"!'+#13+#13+'Informe o município de origem para salvar o "Conhecimentos de Transporte".');
                  cMunOrigem.SetFocus;
                  Abort;
               End;
               If ((cEspecie.Text = 'CTR') or (cEspecie.Text = 'CTE')) and (Trim(cMunDestino.Text) = '') then begin
                  ShowMessage('Municipio de "Destino" é campo obrigatório para "Conhecimentos de Transporte"!'+#13+#13+'Informe o município de origem para salvar o "Conhecimentos de Transporte".');
                  cMunDestino.SetFocus;
                  Abort;
               End;
               if trim(cIncentivo.Text) = '' then begin
                  ShowMessage('Campo "Incentivo Fiscal" é campo obrigatório!'+#13+#13);
                  cIncentivo.SetFocus;
                  Abort;
               end;
               if Trim(cPgto.Text) = '' then begin
                  ShowMessage('"Tipo de Pagamento" não informado.');
                  cPgto.SetFocus;
                  Abort;
               end;

               // Verifica se já existe nota com o mesmo número, data, fornecedor e CFOP no cadastro.
               Screen.Cursor := crSQLWait;
               tExiste.SQL.Clear;
               tExiste.SQL.Add('SELECT * FROM NotasTerceiros WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor) AND (Natureza_Codigo = :pNatureza)');
               tExiste.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
               tExiste.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.AsDateTime;
               tExiste.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
               tExiste.ParamByName('pNatureza').AsString    := NotasTerceirosNatureza_Codigo.AsString;
               tExiste.Open;
               Screen.Cursor := crDefault;

               If (NotasTerceiros.State = dsInsert)  and (tExiste.RecordCount > 0) then begin
                  MessageDlg('Duplicidade de Nota!'+#13+#13+'Não pode haver duas notas com "Número, Data de Emissão, Fornecedor e CFOP" iguais.'+FornecedoresNome.AsString, mtError, [mbOK], 0);
                  cNota.SetFocus;
                  Abort;
               End;
               If (NotasTerceiros.State = dsEdit)  and (tExiste.RecordCount > 1) then begin
                  MessageDlg('Duplicidade de Nota!'+#13+#13+'Não pode haver duas notas com "Número, Data de Emissão, Fornecedor e CFOP" iguais.'+FornecedoresNome.AsString, mtError, [mbOK], 0);
                  cNota.SetFocus;
                  Abort;
               End;

               // Verifica o último período contabil encerrado.
               If NotasTerceirosData_Entrada.Value <= EmpresasUltimo_Encerramento.Value then begin
                  MessageDlg('Lançamento inválido!'+#13+#13+'Data da entrada da nota fiscal é maior que o último período contabil encerrado.'+#13+#13+'O último período encerrado foi '+EmpresasUltimo_Encerramento.AsString, mtError, [mbOK], 0);
                  cDataEntrada.SetFocus;
                  Abort;
               End;
               // Verifica a chave da nfe.
               If (Trim(NotasTerceirosNFe_cNF.Value) <> '') and ( (Length(NotasTerceirosNFe_cNF.AsString) > 1) and (Length(NotasTerceirosNFe_cNF.AsString) < 44) ) then begin
                  MessageDlg('Chave de NF-e inválido!'+#13+#13+'A Chave da NF-e deve conter 44 dígitos.', mtError, [mbOK], 0);
                  cChaveNFE.SetFocus;
                  Abort;
               End;

               NotasTerceirosEstado.Value     := Dados.FornecedoresEstado.Value;
               NotasTerceirosProvisoria.Value := mProvisoria;

               // Armazena o código da classificação financeira da tabela de referências fiscais para a nota fiscal.
               NotasTerceirosClassificacao.Value := ReferenciasFiscaisClassificacao_TotalNota.Value;

               // Pergunta ao usúario qual o tipo do processo.
               if Trim(NotasTerceirosProcesso.Value) <> '' then begin
                  NotasTerceirosAliquota_PIS.Value    := 0;
                  NotasTerceirosAliquota_COFINS.Value := 0;
                  if not ProcessosDOC.Locate('Processo', cProcesso.Text, [loCaseInsensitive]) then begin
                     NotasTerceirosFUNDAP.Value := False;
                     if MessageDlg('Processo não encontrado!'+#13+#13'É um processo de Exportação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                        mTipo := 'EXPORTAÇÃO';
                     end else begin
                        mTipo := 'COMPRA INTERNA';
                        NotasTerceirosAliquota_PIS.Value    := ConfiguracaoPIS_CTR.Value;
                        NotasTerceirosAliquota_COFINS.Value := ConfiguracaoCOFINS_CTR.Value;
                     End;
                  end else begin
                     If (Dados.ProcessosDOCModalidade_Importacao.Value = 2) or (Dados.ProcessosDOCModalidade_Importacao.Value = 3) then begin
                        NotasTerceirosAliquota_PIS.Value    := ConfiguracaoPIS_CTR.Value;
                        NotasTerceirosAliquota_COFINS.Value := ConfiguracaoCOFINS_CTR.Value;
                     end;
                  End;
               end else begin
                  NotasTerceirosFUNDAP.Value := False;
               end;

               // Atualiza os itens da nota fiscal com os dados da capa.
               If (NotasTerceiros.State = dsEdit) then begin
                  Screen.Cursor := crSQLWait;

                  NotasTerceirosItens.SQL.Clear;
                  NotasTerceirosItens.SQL.Add('UPDATE NotasTerceirosItens SET  Data_Entrada         = :pEntrada');
                  NotasTerceirosItens.SQL.Add('                               ,Data_Emissao         = :pEmissao');
                  NotasTerceirosItens.SQL.Add('                               ,Natureza_Codigo      = :pNatureza');
                  NotasTerceirosItens.SQL.Add('                               ,Processo             = :pProcesso');
                  NotasTerceirosItens.SQL.Add('                               ,Fornecedor           = :pFornecedor');
                  NotasTerceirosItens.SQL.Add('                               ,Tipo                 = :pTipo');
                  NotasTerceirosItens.SQL.Add('                               ,Referencia_Fiscal    = :pReferencia');
                  NotasTerceirosItens.SQL.Add('                               ,CST_IPI              = :pCSTIPI');
                  NotasTerceirosItens.SQL.Add('                               ,CST_PIS              = :pCSTPIS');
                  NotasTerceirosItens.SQL.Add('                               ,CST_COFINS           = :pCSTCOFINS');
                  NotasTerceirosItens.SQL.Add('                               ,CodigoTrib_TabA      = :pTabA');
                  NotasTerceirosItens.SQL.Add('                               ,CodigoTrib_TabB      = :pTabB');
                  NotasTerceirosItens.SQL.Add('                               ,Movimenta_Estoque    = :pEstoque');
                  NotasTerceirosItens.SQL.Add('                               ,Movimenta_Inventario = :pInventario');
                  NotasTerceirosItens.SQL.Add('                               ,Apuracao_PISCOFINS   = :pPisCofins');
                  NotasTerceirosItens.SQL.Add('                               ,Nota                 = :pNota');
                  NotasTerceirosItens.SQL.Add('WHERE (Nota = :pNotaAntes) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedorAnt) AND (Natureza_Codigo = :pNaturezaAnt)');
                  NotasTerceirosItens.ParamByName('pNota').AsInteger          := NotasTerceirosNota.AsInteger;
                  NotasTerceirosItens.ParamByName('pData').AsDate             := mDataEmiAntiga;
                  NotasTerceirosItens.ParamByName('pFornecedorAnt').AsInteger := mFornecedorAntigo;
                  NotasTerceirosItens.ParamByName('pEntrada').AsDate          := NotasTerceirosData_Entrada.Value;
                  NotasTerceirosItens.ParamByName('pEmissao').AsDate          := NotasTerceirosData_Emissao.Value;
                  NotasTerceirosItens.ParamByName('pNatureza').AsString       := NotasTerceirosNatureza_Codigo.Value;
                  NotasTerceirosItens.ParamByName('pNaturezaAnt').AsString    := mNaturezaAntiga;
                  NotasTerceirosItens.ParamByName('pProcesso').AsString       := NotasTerceirosProcesso.Value;
                  NotasTerceirosItens.ParamByName('pFornecedor').AsInteger    := NotasTerceirosFornecedor.Value;
                  NotasTerceirosItens.ParamByName('pTipo').AsString           := NotasTerceirosTipo.Value;
                  NotasTerceirosItens.ParamByName('pReferencia').AsInteger    := ReferenciasFiscaisCodigo.AsInteger;
                  NotasTerceirosItens.ParamByName('pCSTIPI').AsString         := ReferenciasFiscaisCSTIPI.AsString;
                  NotasTerceirosItens.ParamByName('pCSTPIS').AsString         := ReferenciasFiscaisCSTPIS.AsString;
                  NotasTerceirosItens.ParamByName('pCSTCOFINS').AsString      := ReferenciasFiscaisCSTCOFINS.AsString;
                  NotasTerceirosItens.ParamByName('pTabA').AsString           := Copy(ReferenciasFiscaisCSTICMS.AsString,1,1);
                  NotasTerceirosItens.ParamByName('pTabB').AsString           := Copy(ReferenciasFiscaisCSTICMS.AsString,2,2);
                  NotasTerceirosItens.ParamByName('pEstoque').AsBoolean       := ReferenciasFiscaisMovimenta_Estoque.AsBoolean;
                  NotasTerceirosItens.ParamByName('pInventario').AsBoolean    := ReferenciasFiscaisMovimenta_Inventario.AsBoolean;
                  NotasTerceirosItens.ParamByName('pPisCofins').AsBoolean     := Dados.ReferenciasFiscaisApuracao_PISCOFINS.AsBoolean;
                  NotasTerceirosItens.ParamByName('pNotaAntes').AsInteger     := mNotaAntes;
                  //NotasTerceirosItens.SQL.SaveToFile('c:\temp\NotasTerceiros_Ateração.sql');
                  NotasTerceirosItens.Execute;

                  NotasTerceirosItens.SQL.Clear;
                  NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor) AND (Natureza_Codigo = :pNatureza)');
                  NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
                  NotasTerceirosItens.ParamByName('pData').AsDate          := mDataEmiAntiga;
                  NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
                  NotasTerceirosItens.ParamByName('pNatureza').AsString    := NotasTerceirosNatureza_Codigo.Value;
                  NotasTerceirosItens.Open;
                  NotasTerceirosItens.First;

                  Screen.Cursor := crDefault;
               End;
            End;

            If Button = nbDelete then begin
               // Verifica se existe lancamento financeiro baixado da nota fiscal.
               VerBaixa;
               
               If tExiste.RecordCount > 0 then begin
                  MessageDlg('Esta nota fiscal não pode ser excluída, pois existe lançamento financeiro baixado'+#13+#13+
                             'Estorne primeiro a baixa para poder excluir esta nota Fiscal.'+#13+#13+
                             'Título: '+ tExiste.FieldByName('Titulo').AsString + '   Vencimento: '+ tExiste.FieldByName('Vencimento').AsString, mtConfirmation, [mbOK], 0);
                  Abort;
               End;
               // Verifica se houve movimentação dos produtos com data superior a data de entrada da nota fiscal (NF DE SAIDA).
               if Dados.ReferenciasFiscaisMovimenta_Estoque.asboolean then begin
                  mItens := '';
                  with NotasTerceirosItens do begin
                       SQL.Clear;
                       SQL.Add('SELECT * FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pEmissao AND Fornecedor = :pFornecedor');
                       ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                       ParamByName('pEmissao').AsDate       := NotasTerceirosData_Emissao.Value;
                       ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                       Open;
                       First;
                       while not eof do begin
                             if (EstoqueProduto(FieldByName('Codigo_Mercadoria').AsInteger) - FieldByName('Quantidade').AsFloat) < 0 then begin
                                mItens := mItens + FieldByName('Codigo_Mercadoria').AsString+#13;
                             end;
                             next;
                       end;
                  end;
                  if mItens <> '' then begin
                     MessageDlg('Nota Fiscal não pode ser "Excluída" !'+#13+#13+'Os seguintes produtos já foram movimentados e ficarão com estoque negativo.'+#13+#13+mItens, mtError, [mbOK], 0);
                     Abort;
                  end;
               end;

               // Verifica se houve movimentação dos produtos com data superior a data de entrada da nota fiscal (PEDIDOS).
               tExiste.SQL.Clear;
               tExiste.SQL.Add('SELECT COUNT(Pedido) AS Qtde');
               tExiste.SQL.Add('FROM   PedidosItens');
               tExiste.SQL.Add('WHERE Codigo_Mercadoria IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn)');
               tExiste.SQL.Add('  AND Saida_Entrada=1');
               tExiste.ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
               tExiste.ParamByName('pData').AsDate    := NotasTerceirosData_Entrada.AsDateTime;
               tExiste.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
               tExiste.Open;
               if tExiste.FieldByName('Qtde').AsInteger > 0 then begin
                  MessageDlg('Nota Fiscal não pode ser "Excluída" !'+#13+#13+'Alguns produtos constam em pedidos de nota fiscal existentes.', mtError, [mbOK], 0);
                  Abort;
               end;

               // Verifica se houve movimentação dos produtos com data superior a data de entrada da nota fiscal (TRANSFERÊNCIAS).
               tExiste.SQL.Clear;
               tExiste.SQL.Add('SELECT COUNT(Produto_Saida) AS Qtde');
               tExiste.SQL.Add('FROM   ProdutosTransferencia');
               tExiste.SQL.Add('WHERE  Produto_Saida IN(SELECT DISTINCT Codigo_Mercadoria FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn)');
               tExiste.SQL.Add('  AND  Data_Transferencia >= :pData ');
               tExiste.ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
               tExiste.ParamByName('pData').AsDate    := NotasTerceirosData_Entrada.AsDateTime;
               tExiste.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
               tExiste.Open;
               if tExiste.FieldByName('Qtde').AsInteger > 0 then begin
                  MessageDlg('Nota Fiscal não pode ser "Excluída" !'+#13+#13+'Existem transferências feitas com alguns produtos que constam da nota fiscal.', mtError, [mbOK], 0);
                  Abort;
               end;

               If MessageDlg('Deseja realmente excluir esta nota fiscal?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                  Screen.Cursor := crSQLWait;
                  NotasTerceirosItens.SQL.Clear;
                  NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
                  NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                  NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
                  NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
                  NotasTerceirosItens.Open;

                  Produtos.SQL.Clear;
                  Produtos.SQL.Add('SELECT * FROM Produtos WHERE Codigo IN((SELECT Codigo_Mercadoria FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)))');
                  Produtos.ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                  Produtos.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
                  Produtos.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
                  Produtos.Open;

                  Notas.SQL.Clear;
                  Notas.SQL.Add('SELECT * FROM NotasFiscais');
                  Notas.SQL.Add('WHERE  (Numero IN(SELECT DISTINCT Nota_Referencia FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Entrada = :pData) AND (Fornecedor = :pFornecedor) ))');
                  Notas.SQL.Add('       AND (Data_Emissao IN(SELECT DISTINCT Data_Referencia FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Entrada = :pData) AND (Fornecedor = :pFornecedor) ))');
                  Notas.ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                  Notas.ParamByName('pData').AsDate          := NotasTerceirosData_Entrada.Value;
                  Notas.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                  Notas.Open;

                  NotasItens.SQL.Clear;
                  NotasItens.SQL.Add('SELECT * FROM NotasItens');
                  NotasItens.SQL.Add('WHERE  (Nota IN(SELECT DISTINCT Nota_Referencia FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Entrada = :pData) AND (Fornecedor = :pFornecedor) ))');
                  NotasItens.SQL.Add('  AND  (Data IN(SELECT DISTINCT Data_Referencia FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Data_Entrada = :pData) AND (Fornecedor = :pFornecedor) ))');
                  NotasItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                  NotasItens.ParamByName('pData').AsDate          := NotasTerceirosData_Entrada.Value;
                  NotasItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                  NotasItens.Open;

                  Adicoes.SQL.Clear;
                  Adicoes.SQL.Add('SELECT * FROM Adicoes');
                  Adicoes.SQL.Add('WHERE  DI IN( SELECT DISTINCT DI FROM NotasFiscais');
                  Adicoes.SQL.Add('              WHERE (Numero IN(SELECT DISTINCT Nota_Referencia FROM NotasTerceirosItens WHERE (Nota = :pNota) AND (Fornecedor = :pFornecedor) AND (Data_Entrada = :pData) )) ) AND (DI <> '''' )' );
                  Adicoes.ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                  Adicoes.ParamByName('pData').AsDate          := NotasTerceirosData_Entrada.Value;
                  Adicoes.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                  Adicoes.Open;

                  Janela_Processamento := TJanela_Processamento.Create(Self);
                  Janela_Processamento.lProcesso.Caption  := 'Removendo todos os itens do nota...Aguarde.';
                  Janela_Processamento.Progresso.Max      := NotasTerceirosItens.RecordCount;
                  Janela_Processamento.Progresso.Position := 0;
                  Janela_Processamento.Show;

                  mItens := '';
                  NotasTerceirosItens.First;
                  While not NotasTerceirosItens.Eof do begin
                        // Procura pelo item na adição para liberar o estoque.
                        mQtdeUni := 0;
                        If Produtos.Locate('Codigo', NotasTerceirosItensCodigo_Mercadoria.Value, [loCaseInsensitive]) = true then begin
                           mQtdeUni := ProdutosQuantidade_Unidade.AsInteger;
                        End;

                        If Adicoes.Locate('Registro', NotasTerceirosItensRegistro_Adicao.Value, [loCaseInsensitive] ) then begin
                           Adicoes.Edit;
                                   AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value - (NotasTerceirosItensQuantidade.Value * mQtdeUni));
                                   If ReferenciasFiscaisFinalidade_Mercadoria.Value = 4 then begin
                                      AdicoesLancado_Terceiros.Value := (AdicoesLancado_Terceiros.Value + (NotasTerceirosItensQuantidade.Value * mQtdeUni));
                                      If AdicoesLancado_Terceiros.Value < 0 then AdicoesLancado_Terceiros.Value := 0;
                                   End;
                           Adicoes.Post;
                        End;

                        // Reprocessa o valor do estoque minímo do produto por percentual caso esteja informado o percentual minímo no cadastro.
                        If ProdutosEstoque_MinimoPerc.AsFloat > 0 then begin
                           Produtos.Edit;
                                    ProdutosEstoque_Minimo.Value := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger)-NotasTerceirosItensQuantidade.AsFloat, ProdutosEstoque_MinimoPerc.AsFloat);
                           Produtos.Post;
                        End;

                        // Pegando a lista de itens da nota fiscal antes de excluir, para reprocessar as fischas de Estoque/Inventario.
                        mItens := mItens + NotasTerceirosItensCodigo_Mercadoria.asstring+',';

                        NotasTerceirosItens.Next;
                        Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                        Application.ProcessMessages;
                  End;
                  mItens := Copy(mItens, 1, Length(mItens)-1);

                  // Indisponibiliza todos os chassis ou seriais com a nota.
                  tDeletaItens.SQL.Clear;
                  tDeletaItens.SQL.Add('UPDATE ProdutosSeriais SET Disponivel = 0');
                  tDeletaItens.SQL.Add('                          ,Nota_Retorno = null');
                  tDeletaItens.SQL.Add('                          ,Data_Retorno = null');
                  tDeletaItens.SQL.Add('WHERE Nota_Retorno = :pNota AND Data_Retorno = :pData AND Produto_Codigo IN(SELECT Codigo_Mercadoria FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn)');
                  tDeletaItens.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                  tDeletaItens.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                  tDeletaItens.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
                  tDeletaItens.Execute;
                  tDeletaItens.SQL.Clear;
                  tDeletaItens.SQL.Add('DELETE FROM ProdutosSeriaisNotas');
                  tDeletaItens.SQL.Add('WHERE  Nota = :pNota AND Data = :pData AND Produto_Codigo IN(SELECT Codigo_Mercadoria FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn)');
                  tDeletaItens.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                  tDeletaItens.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                  tDeletaItens.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
                  tDeletaItens.Execute;
                  tDeletaItens.SQL.Clear;
                  tDeletaItens.SQL.Add('DELETE FROM ProdutosSeriais');
                  tDeletaItens.SQL.Add('WHERE (SELECT COUNT(*) FROM ProdutosSeriaisNotas PSN WHERE PSN.Produto_Codigo = ProdutosSeriais.Produto_Codigo) = 0');
                  tDeletaItens.Execute;
                  
                  // Delete as entrada dos lotes pela nota.
                  tDeletaItens.SQL.Clear;
                  tDeletaItens.SQL.Add('DELETE FROM ProdutosDetalhe');
                  tDeletaItens.SQL.Add('WHERE  Nota_Entrada = :pNota AND Data_Entrada = :pData AND Produto_Codigo IN(SELECT Codigo_Mercadoria FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn)');
                  tDeletaItens.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                  tDeletaItens.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                  tDeletaItens.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
                  tDeletaItens.Execute;

                  // Apaga todos os itens da nota fiscal.
                  tDeletaItens.SQL.Clear;
                  tDeletaItens.SQL.Add('DELETE FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pFornecedor');
                  tDeletaItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                  tDeletaItens.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
                  tDeletaItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
                  tDeletaItens.Execute;

                  NotasTerceirosItens.EnableControls;
                  Janela_Processamento.Close;
                  Screen.Cursor := crDefault;

                  // Apaga todas as parcelas do CIAP da nota fiscal.
                  CIAP.SQL.Clear;
                  CIAP.SQL.Add('DELETE FROM CIAP WHERE (Nota = :pNota) AND (Data_Nota = :pData) AND (Fornecedor = :pFornecedor)');
                  CIAP.ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                  CIAP.ParamByName('pData').AsDate          := NotasTerceirosData_Entrada.Value;
                  CIAP.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                  CIAP.Execute;
                  CIAP.SQL.Clear;
                  CIAP.SQL.Add('SELECT * FROM CIAP');

                  // Apaga os lançamentos do financeiro.
                  PagarReceber.SQL.Clear;
                  PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE (Data_Documento = :pData) AND (Documento = :pDocumento) AND (Numero_Documento = :pNumeroDOC) AND (Tipo_Nota = :pTipo)');
                  PagarReceber.ParamByName('pData').AsDate        := NotasTerceirosData_Emissao.Value;
                  PagarReceber.ParamByName('pDocumento').AsString := NotasTerceirosTipo.Value;
                  PagarReceber.ParamByName('pNumeroDOC').AsString := NotasTerceirosNota.AsString;
                  PagarReceber.ParamByName('pTipo').AsString      := 'NT';
                  PagarReceber.Execute;

                  // Ajusta o controle de navios em caso de devolução.
                  with tTmp do begin
                       // Reduz a quantidade devolvida da nota de referência ja importada para evitar duplicar.
                       sql.clear;
                       sql.add('select distinct Nota_Referencia, Data_Referencia, DI from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Saida_Entrada = 0 and Emissor = ''T'' ');
                       parambyname('pNota').Value := NotasTerceirosNota.AsInteger;
                       parambyname('pData').Value := NotasTerceirosData_Emissao.value;
                       open;
                  end;
                  with tTmp2 do begin
                       sql.clear;
                       sql.add('update NotasItensNavios set Quantidade_Devol = Quantidade_Devol - (select isnull(Quantidade,0) from NotasItensNavios nir where nir.Nota_Referencia = nin.Nota and nir.Data_Emissao = nin.Data_Emissao and nir.DI = nin.DI)');
                       sql.add('from NotasItensNavios as nin');
                       sql.add('where Nota = :pNota');
                       sql.add('and Data_Emissao = :pData');
                       sql.add('and Saida_Entrada = 1');
                       sql.add('and Emissor = ''P'' ');
                       parambyname('pNota').Value := tTmp.fieldbyname('Nota_Referencia').AsInteger;
                       parambyname('pData').Value := tTmp.fieldbyname('Data_Referencia').value;
                       execute;
                       // Deleta a nota ja importada.
                       sql.clear;
                       sql.add('delete from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Saida_Entrada = 0 and Emissor = ''T'' ');
                       parambyname('pNota').value := NotasTerceirosItensNota.asinteger;
                       parambyname('pData').value := NotasTerceirosItensData_Emissao.Value;
                       execute;
                  end;

                  // Apaga os lançamentos da contabilidade.
                  {
                  Lancamentos.SQL.Clear;
                  Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE (Data = :pData) AND (Numero = :pNumero) AND (Tipo_Documento = :pTipo)' );
                  Lancamentos.ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.Value;
                  Lancamentos.ParamByName('pNumero').AsInteger := NotasTerceirosLancamento_Nota.Value;
                  Lancamentos.ParamByName('pTipo').AsString    := 'NT';
                  Lancamentos.Execute;
                  }
                  // Deleta os itens da ficha de estoque e de inventario.
                  // Ficha de Estoque.
                  If ReferenciasFiscaisMovimenta_Estoque.AsBoolean then begin
                     FichaEstoque.SQL.Clear;
                     FichaEstoque.SQL.Add('DELETE FROM FichaEstoque WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
                     FichaEstoque.ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                     FichaEstoque.ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                     FichaEstoque.ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                     FichaEstoque.Execute;
                     FichaEstoque.SQL.Clear;
                     FichaEstoque.SQL.Add('SELECT * FROM FichaEstoque WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
                     FichaEstoque.ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                     FichaEstoque.ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                     FichaEstoque.ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                     FichaEstoque.Open;

                     // Reprocessa os saldos da ficha de estoque.
                     AtualizaEst(mItens);
                  End;
                  // Ficha de inventario.
                  If ReferenciasFiscaisMovimenta_Inventario.AsBoolean then begin
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

                     // Reprocessa os saldos da ficha de inventario.
                     AtualizaInv(mItens);
                  End;
                  Screen.Cursor := crDefault;
               end else begin
                  Abort;
               End;
            End;
       end;
       bDuplicatas.Enabled := (dmFiscal.NotasTerceirosValor_TotalNota.Value > 0);
       Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Terceiros.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then begin
         Image1.Picture.LoadFromFile('fundo_barra.bmp');
         Image3.Picture.LoadFromFile('fundo_barra.bmp');
         Image5.Picture.LoadFromFile('fundo_barra.bmp');
         Image6.Picture.LoadFromFile('fundo_barra.bmp');
         Image7.Picture.LoadFromFile('fundo_barra.bmp');
         Image8.Picture.LoadFromFile('fundo_barra.bmp');
         Image9.Picture.LoadFromFile('fundo_barra.bmp');
      End;
end;

procedure TNotaFiscal_Terceiros.StaticText7Click(Sender: TObject);
begin
      Cadastro_TiposDocumentos := TCadastro_TiposDocumentos.Create(Self);
      Cadastro_TiposDocumentos.Caption := Caption;
      Cadastro_TiposDocumentos.ShowModal;
      With Dados do begin
           TiposDocumentos.SQL.Clear;
           TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE (Sintegra = 1)');
           TiposDocumentos.Open;
      End;
end;

procedure TNotaFiscal_Terceiros.cReferenciaCloseUp(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           NotasTerceirosTipo.Value := ReferenciasFiscaisEspecie.Value;
           If NotasTerceirosFornecedor.Value > 0 then begin
              If (FornecedoresEstado.Value = EmpresasEstado.Value) then begin
                 NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Dentro.Value;
              end else begin
                 NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Fora.Value;
              End;
           End;
      End;
end;

procedure TNotaFiscal_Terceiros.StaticText18Click(Sender: TObject);
begin
      Cadastro_ICMS := TCadastro_ICMS.Create(Self);
      Cadastro_ICMS.Caption := Caption;
      Cadastro_ICMS.ShowModal;
      Dados.ICMS.Open;
end;

procedure TNotaFiscal_Terceiros.cCodigoNaturezaChange(Sender: TObject);
begin
      With Dados, dmFiscal do begin
           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) and (Codigo BETWEEN :pIni AND :pFim) ORDER BY Descricao_NF');
           Natureza.ParamByName('pIni').AsString := ConfiguracaoNatureza_EntradaIni.Value;
           Natureza.ParamByName('pFim').AsString := ConfiguracaoNatureza_EntradaFim.Value;
           Natureza.Open;
      End;      
end;

procedure TNotaFiscal_Terceiros.StaticText6Click(Sender: TObject);
begin
      Config_TipoNotaTerceiros := TConfig_TipoNotaTerceiros.Create(Self);
      Config_TipoNotaTerceiros.Caption := Caption;
      Config_TipoNotaTerceiros.ShowModal;

      Dados.ReferenciasFiscais.Open;
end;

procedure TNotaFiscal_Terceiros.bCreditoClick(Sender: TObject);
begin
     NotaFiscal_TerceirosCredito := TNotaFiscal_TerceirosCredito.create(Self);
     NotaFiscal_TerceirosCredito.caption := caption;
     NotaFiscal_TerceirosCredito.showmodal;
end;

procedure TNotaFiscal_Terceiros.bDuplicatasClick(Sender: TObject);
begin
      ModalidadePgto_Parcelas := TModalidadePgto_Parcelas.Create(Self);
      ModalidadePgto_Parcelas.mTipo   := 'P';
      ModalidadePgto_Parcelas.mTipoNF := 1;
      ModalidadePgto_Parcelas.ShowModal;
end;

procedure TNotaFiscal_Terceiros.StaticText23Click(Sender: TObject);
begin
      Cadastro_CentroCusto := TCadastro_CentroCusto.Create(Self);
      Cadastro_CentroCusto.Caption := Caption;
      Cadastro_CentroCusto.ShowModal;
      Dados.CentroCusto.Open;
end;

procedure TNotaFiscal_Terceiros.bImportaXMLNFeClick(Sender: TObject);
Var
    I       : Integer;
    mNotaXML: TEdit;
begin
     with Dados, dmFiscal do begin
          If mProvisoria = false then begin
             cXML.Execute;
             If cXML.Files.Count > 0 then begin
                Utilitarios_Importar_NFe_Terceiros := TUtilitarios_Importar_NFe_Terceiros.Create(Self);
                Utilitarios_Importar_NFe_Terceiros.Caption := Caption;

                // Preenchendo o vetor com os nomes dos arquivos "XML".
                For I := 0 to cXML.Files.Count-1 do begin
                    Utilitarios_Importar_NFe_Terceiros.mArquivos[I] := cXML.Files.Strings[I];
                End;
                Utilitarios_Importar_NFe_Terceiros.mTamanho := cXML.Files.Count;
                Utilitarios_Importar_NFe_Terceiros.ShowModal;

                NotasTerceiros.SQL.Clear;
                NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE(Servico IS NULL) AND (ISNULL(Provisoria,0) <> 1)');
                NotasTerceiros.SQL.Add('ORDER BY Data_Entrada, Nota');
                NotasTerceiros.Open;

                mNotaXML         := TEdit.Create(NotaFiscal_Terceiros);
                mNotaXML.Visible := False;
                mNotaXML.Parent  := NotaFiscal_Terceiros;
                mNotaXML.PasteFromClipboard;

                NotasTerceiros.Locate('Nota', mNotaXML.Text, [loCaseInsensitive]);
                mNotaXML.Destroy;
             End;
             bDuplicatas.Enabled := (dmFiscal.NotasTerceirosValor_TotalNota.Value > 0);
          end else begin
             cXML.Options := [ofHideReadOnly,ofNoChangeDir,ofEnableSizing];
             cXML.Execute;
             If cXML.Files.Count > 0 then begin
                Utilitarios_Importar_NFe_TerceirosProv := TUtilitarios_Importar_NFe_TerceirosProv.Create(Self);
                Utilitarios_Importar_NFe_TerceirosProv.Caption := Caption;

                //Preenchendo o vetor com os nomes dos arquivos "XML".
                For I := 0 to cXML.Files.Count-1 do begin
                    Utilitarios_Importar_NFe_TerceirosProv.mArquivos[I] := cXML.Files.Strings[I];
                End;
                Utilitarios_Importar_NFe_TerceirosProv.mTamanho  := cXML.Files.Count;
                Utilitarios_Importar_NFe_TerceirosProv.ShowModal;
             End;
          End;
     end;

     ContaItens;
     bItens.Enabled := dmFiscal.NotasTerceiros.RecordCount > 0;
end;

procedure TNotaFiscal_Terceiros.bImportaXMLCTeClick(Sender: TObject);
var
   i:integer;
begin
     cXML.Execute;
     if trim(cXML.FileName) <> '' then begin
        Utilitarios_Importar_CTe_Terceiros := TUtilitarios_Importar_CTe_Terceiros.Create(Self);
        Utilitarios_Importar_CTe_Terceiros.Caption := Caption;
        // Preenchendo o vetor com os nomes dos arquivos "XML".
        for i := 0 to cXML.Files.Count-1 do begin
            Utilitarios_Importar_CTe_Terceiros.cArquivos.Items.Add(cXML.Files.Strings[i]);
        end;
        Utilitarios_Importar_CTe_Terceiros.ShowModal;
     end;
end;

procedure TNotaFiscal_Terceiros.bPesquisaClick(Sender: TObject);
Var
    mPesquisa : String;
begin
      With Dados, dmFiscal do begin
           mPesquisa := InputBox('Pesquisa', 'Nº da Nota:', '');
           If NotasTerceiros.Locate('Nota', mPesquisa, [loCaseInsensitive]) = False then begin
              ShowMessage('Nenhuma nota fiscal encontrada com o número informado!');
              Abort;
           End;

           mDataEmiAntiga    := NotasTerceirosData_Emissao.AsDateTime;
           mNaturezaAntiga   := NotasTerceirosNatureza_Codigo.AsString;
           mDataEntAntiga    := NotasTerceirosData_Entrada.AsDateTime;
           mProcessoAntigo   := NotasTerceirosProcesso.AsString;
           mFornecedorAntigo := NotasTerceirosFornecedor.AsInteger;
           mEspecieAntiga    := NotasTerceirosTipo.AsString;
      End;
      ContaItens;
end;

procedure TNotaFiscal_Terceiros.cEspecieChange(Sender: TObject);
begin
      cCodigoNatureza.Enabled := (cEspecie.Text = 'CTR') or (cEspecie.Text = 'CTE');
      cNatureza.Enabled       := (cEspecie.Text = 'CTR') or (cEspecie.Text = 'CTE');
      cNaturezaFrete.Enabled  := (cEspecie.Text = 'CTR') or (cEspecie.Text = 'CTE');
      cMunOrigem.Enabled      := (cEspecie.Text = 'CTR') or (cEspecie.Text = 'CTE');
      cMunDestino.Enabled     := (cEspecie.Text = 'CTR') or (cEspecie.Text = 'CTE');
end;

procedure TNotaFiscal_Terceiros.cChaveNFEExit(Sender: TObject);
begin
     With dmFiscal do begin
          NotasTerceirosNFe_cNF.Value := RemoveCaracter(' ', '',NotasTerceirosNFe_cNF.Value);
          NotasTerceirosNFe_cNF.Value := RemoveCaracter('.', '',NotasTerceirosNFe_cNF.Value);
          NotasTerceirosNFe_cNF.Value := RemoveCaracter('-', '',NotasTerceirosNFe_cNF.Value);
          NotasTerceirosNFe_cNF.Value := RemoveCaracter(',', '',NotasTerceirosNFe_cNF.Value);
     End;
end;

procedure TNotaFiscal_Terceiros.ContaItens;
begin
     // Contagem dos itens.
     tItens.SQL.Clear;
     tItens.SQL.Add('SELECT COUNT(*) AS Itens FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Fornecedor = :pFornecedor) AND (Data_Emissao = :pEmissao) AND (Natureza_Codigo = :pNatureza)');
     tItens.ParamByName('pNota').AsInteger       := dmFiscal.NotasTerceirosNota.AsInteger;
     tItens.ParamByName('pEmissao').AsDate       := dmFiscal.NotasTerceirosData_Emissao.AsDateTime;
     tItens.ParamByName('pFornecedor').AsInteger := dmFiscal.NotasTerceirosFornecedor.Asinteger;
     tItens.ParamByName('pNatureza').AsString    := dmFiscal.NotasTerceirosNatureza_Codigo.AsString;
     tItens.Open;
     lItens.Caption := tItens.FieldByName('Itens').AsString;
end;

procedure TNotaFiscal_Terceiros.bFiltrarClick(Sender: TObject);
begin
      With dmFiscal do begin
           NotasTerceiros.SQL.Clear;
           NotasTerceiros.SQl.Add('SELECT *');
           NotasTerceiros.SQl.Add('FROM   NotasTerceiros');
           
           If mProvisoria = false then begin
              NotasTerceiros.SQL.Add('WHERE(Servico IS NULL) AND (ISNULL(Provisoria,0) <> 1)');
           end else begin
              NotasTerceiros.SQL.Add('WHERE(ISNULL(Provisoria,0) = 1)');
           End;
           // Numero da nota fiscal.
           If (cFiltraNotaIni.AsInteger > 0) and (cFiltraNotaFim.AsInteger = 0) then begin
              NotasTerceiros.SQl.Add('  AND (Nota = :pNotaIni)');
              NotasTerceiros.ParamByName('pNotaIni').AsInteger := cFiltraNotaIni.AsInteger;
           End;
           If (cFiltraNotaIni.AsInteger = 0) and (cFiltraNotaFim.AsInteger > 0) then begin
              NotasTerceiros.SQl.Add('  AND (Nota = :pNotaFim)');
              NotasTerceiros.ParamByName('pNotaFim').AsInteger := cFiltraNotaFim.AsInteger;
           End;
           If (cFiltraNotaIni.AsInteger > 0) and (cFiltraNotaFim.AsInteger > 0) then begin
              NotasTerceiros.SQl.Add('  AND (Nota BETWEEN :pNotaIni AND :pNotaFim)');
              NotasTerceiros.ParamByName('pNotaIni').AsInteger := cFiltraNotaIni.AsInteger;
              NotasTerceiros.ParamByName('pNotaFim').AsInteger := cFiltraNotaFim.AsInteger;
           End;
           // Data de emissão da nota fiscal.
           If (DataLimpa(cFiltraEmiIni.Text) = false) and (DataLimpa(cFiltraEmiFim.Text) = true) then begin
              NotasTerceiros.SQl.Add('  AND (Data_Emissao = :pEmiIni)');
              NotasTerceiros.ParamByName('pEmiIni').AsDate := cFiltraEmiIni.Date;
           End;
           If (DataLimpa(cFiltraEmiIni.Text) = true) and (DataLimpa(cFiltraEmiFim.Text) = false) then begin
              NotasTerceiros.SQl.Add('  AND (Data_Emissao = :pEmiFim)');
              NotasTerceiros.ParamByName('pEmiFim').AsDate := cFiltraEmiFim.Date;
           End;
           If (DataLimpa(cFiltraEmiIni.Text) = false) and (DataLimpa(cFiltraEmiFim.Text) = false) then begin
              NotasTerceiros.SQl.Add('  AND (Data_Emissao BETWEEN :pEmiIni AND :pEmiFim)');
              NotasTerceiros.ParamByName('pEmiIni').AsDate := cFiltraEmiIni.Date;
              NotasTerceiros.ParamByName('pEmiFim').AsDate := cFiltraEmiFim.Date;
           End;
           // Data de entrada da nota fiscal.
           If (DataLimpa(cFiltraEntIni.Text) = false) and (DataLimpa(cFiltraEntFim.Text) = true) then begin
              NotasTerceiros.SQl.Add('  AND (Data_Entrada = :pEntIni)');
              NotasTerceiros.ParamByName('pEntIni').AsDate := cFiltraEntIni.Date;
           End;
           If (DataLimpa(cFiltraEntIni.Text) = true) and (DataLimpa(cFiltraEntFim.Text) = false) then begin
              NotasTerceiros.SQl.Add('  AND (Data_Entrada = :pEmiFim)');
              NotasTerceiros.ParamByName('pEmiFim').AsDate := cFiltraEntFim.Date;
           End;
           If (DataLimpa(cFiltraEntIni.Text) = false) and (DataLimpa(cFiltraEntFim.Text) = false) then begin
              NotasTerceiros.SQl.Add('  AND (Data_Entrada BETWEEN :pEntIni AND :pEntFim)');
              NotasTerceiros.ParamByName('pEntIni').AsDate := cFiltraEntini.Date;
              NotasTerceiros.ParamByName('pEntFim').AsDate := cFiltraEntFim.Date;
           End;
           // Referência Fiscal.
           If Trim(cFiltraRef.Text) <> '' then begin
              NotasTerceiros.SQl.Add('  AND (Referencia_Fiscal = :pReferencia)');
              NotasTerceiros.ParamByName('pReferencia').AsInteger := cFiltraRef.KeyValue;
           End;
           // Fornecedor.
           If Trim(cFiltraForn.Text) <> '' then begin
              NotasTerceiros.SQl.Add('  AND (Fornecedor = :pFornecedor)');
              NotasTerceiros.ParamByName('pFornecedor').AsInteger := cFiltraForn.KeyValue;
           End;
           // Natureza da Operação.
           If Trim(cFiltraNat.Text) <> '' then begin
              NotasTerceiros.SQl.Add('  AND (Natureza_Codigo = :pNatureza)');
              NotasTerceiros.ParamByName('pNatureza').AsString := cFiltraNat.KeyValue;
           End;
           // Processo.
           If Trim(cFiltraProc.Text) <> '' then begin
              NotasTerceiros.SQl.Add('  AND (Processo = :pProcesso)');
              NotasTerceiros.ParamByName('pProcesso').AsString := cFiltraProc.Text;
           End;

           NotasTerceiros.Open;

           TabSheet1.Caption := 'Dados da Nota Fiscal ['+ InttoStr(NotasTerceiros.RecordCount)+']';
      End;
end;

procedure TNotaFiscal_Terceiros.bLimparClick(Sender: TObject);
begin
      cFiltraNotaIni.Clear;
      cFiltraNotaFim.Clear;
      cFiltraEmiIni.Clear;
      cFiltraEmiFim.Clear;
      cFiltraEntIni.Clear;
      cFiltraEntFim.Clear;
      cFiltraRef.ClearValue;
      cFiltraForn.ClearValue;
      cFiltraNat.ClearValue;
      cFiltraProc.Clear;

      bFiltrarClick(Self);
end;

procedure TNotaFiscal_Terceiros.bEfetivarClick(Sender: TObject);
begin
      NotaFiscal_TerceirosEfetivar := TNotaFiscal_TerceirosEfetivar.Create(Self);
      NotaFiscal_TerceirosEfetivar.Caption := Caption;
      NotaFiscal_TerceirosEfetivar.ShowModal;
end;

procedure TNotaFiscal_Terceiros.VerBaixa;
begin
     Screen.Cursor := crSQLWait;

     tExiste.SQL.Clear;
     tExiste.SQL.Add('SELECT Titulo     = Numero');
     tExiste.SQL.Add('      ,Vencimento = Data');
     tExiste.SQL.Add('FROM   PagarReceberBaixas');
     tExiste.SQL.Add('WHERE  Numero IN( SELECT Numero FROM PagarReceber WHERE(Data_Documento = :pData) AND (Documento = :pDocumento) AND (Numero_Documento = :pNumeroDOC) AND (Tipo_Nota = :pTipo) )');
     tExiste.ParamByName('pData').AsDate        := dmFiscal.NotasTerceirosData_Emissao.Value;
     tExiste.ParamByName('pDocumento').AsString := dmFiscal.NotasTerceirosTipo.Value;
     tExiste.ParamByName('pNumeroDOC').AsString := dmFiscal.NotasTerceirosNota.AsString;
     tExiste.ParamByName('pTipo').AsString      := 'NT';
     //tExiste.SQL.SaveToFile('c:\temp\NotasTerceiros_Existe_Financeiro.SQL');
     tExiste.Open;

     Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Terceiros.cNotaChange(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           ProdutosSeriais.SQL.Clear;
           ProdutosSeriais.SQL.Add('SELECT *');
           ProdutosSeriais.SQL.Add('FROM  ProdutosSeriais');
           ProdutosSeriais.SQL.Add('WHERE Numero IN(SELECT DISTINCT Numero FROM ProdutosSeriaisNotas WHERE Nota = :pNota AND Data = :pData) AND ISNULL(Temp, 0) = 0');
           ProdutosSeriais.SQL.Add('ORDER BY Produto_Codigo, Numero');
           ProdutosSeriais.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
           ProdutosSeriais.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
           ProdutosSeriais.Open;

           TabSheet3.Caption := 'Seriais/Chassis ['+ InttoStr(ProdutosSeriais.RecordCount)+']';
           ProdutosDetalhe.SQL.Clear;
           ProdutosDetalhe.SQL.Add('SELECT *');
           ProdutosDetalhe.SQL.Add('FROM  ProdutosDetalhe');
           ProdutosDetalhe.SQL.Add('WHERE Nota_Entrada = :pNota AND Data_Entrada = :pData');
           ProdutosDetalhe.SQL.Add('ORDER BY Produto_Codigo, Lote');
           ProdutosDetalhe.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
           ProdutosDetalhe.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
           ProdutosDetalhe.Open;
           TabSheet4.Caption := 'Lotes ['+ InttoStr(ProdutosDetalhe.RecordCount)+']';
      end;
end;

procedure TNotaFiscal_Terceiros.GradeSerialDblClick(Sender: TObject);
begin
     bAlterar.Click;
end;

procedure TNotaFiscal_Terceiros.bAlterarClick(Sender: TObject);
begin
      NotaFiscal_TerceirosAlteraChassi := TNotaFiscal_TerceirosAlteraChassi.Create(Self);
      NotaFiscal_TerceirosAlteraChassi.Caption := Caption;
      NotaFiscal_TerceirosAlteraChassi.Showmodal;
end;

function TNotaFiscal_Terceiros.ChecaItem:Boolean;
begin
     //Verifica se foram lançados itens para a nota fiscal, se não comtem itens a nota sera excluída.
     with dmFiscal do begin
          NotasTerceirosItens.SQL.Clear;
          NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
          NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTerceiros.FieldByName('Nota').AsInteger;
          NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTerceiros.FieldByName('Data_Emissao').AsDateTime;
          NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceiros.FieldByName('Fornecedor').AsInteger;
          NotasTerceirosItens.Open;

          result := false;
          if NotasTerceiros.RecordCount > 0 then begin
             result := NotasTerceirosItens.RecordCount <> 0;
          end;
     end;
end;

procedure TNotaFiscal_Terceiros.bSelTodosClick(Sender: TObject);
var
  l:integer;
begin
     with GradeManif.DataSource.DataSet do begin
          First;
          for l := 0 to pred(RecordCount) do begin
              GradeManif.SelectedRows.CurrentRowSelected := True;
              Next;
          end;
          GradeManif.SelectedRows.Refresh;
     end;
end;

procedure TNotaFiscal_Terceiros.bSelNehumClick(Sender: TObject);
var
  l:integer;
begin
     with GradeManif.DataSource.DataSet do begin
          First;
          for l := 0 to pred(RecordCount) do begin
              GradeManif.SelectedRows.CurrentRowSelected := false;
              Next;
          end;
          GradeManif.SelectedRows.Refresh;
     end;
end;

procedure TNotaFiscal_Terceiros.cSitClick(Sender: TObject);
begin
      with tManifesto do begin
           SQL.Clear;
           SQL.Add('select Nota');
           SQL.Add('      ,Data_Emissao');
           SQL.Add('      ,NFe_cNF');
           SQL.Add('      ,Fornecedor = (select Nome from Fornecedores where Codigo = Fornecedor)');
           SQL.Add('from NotasTerceiros');
           SQL.Add('where Modelo IN(''55'') ');
           SQL.Add('and   isnull(Servico, '''') = '''' ');
           SQL.Add('and   isnull(Desdobramento, 0) = 0');
           if cSit.Itemindex = 0 then
              SQL.Add('and   ISNULL(Manifestada, 0) = 0 ')
           else
              SQL.Add('and   ISNULL(Manifestada, 0) = 1');
           SQL.Add('order by Data_Emissao, Nota');
           Open;
      end;
end;

procedure TNotaFiscal_Terceiros.bManifestarClick(Sender: TObject);
var
   mSel,
   tpAmb,
   cStat: Integer;
   Util: NFe_Util_2G_Interface;
   Certificado,
   SiglaWS,
   RetWS,
   Licenca,
   Versao,
   Proxy,
   Usuario,
   Protocolo,
   ProtocoloData,
   ProcEvento,
   Resultado,
   DataHora,
   mPasta,
   Senha: WideString;
   xmlProtocolo:TMemo;
begin
      If not Internet then begin
         MessageDlg('Erro de comunicação!'+#13+#13+'Você esta sem conexão com a Internet.', mtError, [mbOK], 0);
         Abort;
      End;
      If DataLimpa(cData.Text) then begin
         MessageDlg('Erro!'+#13+#13+'Data é campo obrigatório.', mtError, [mbOK], 0);
         cData.SetFocus;
         Abort;
      End;
      If Trim(RemoveCaracter(':', '', cHora.Text)) = '' then begin
         MessageDlg('Erro!'+#13+#13+'Hora é campo obrigatório.', mtError, [mbOK], 0);
         cHora.SetFocus;
         Abort;
      End;
      If Trim(cMotivo.Text) = '' then begin
         MessageDlg('Erro!'+#13+#13+'Motivo da manifestação é campo obrigatório.', mtError, [mbOK], 0);
         cMotivo.SetFocus;
         Abort;
      End;
      If (cMotivo.ItemIndex = 3) and (Trim(cJustificativa.Text) = '') then begin
         MessageDlg('Erro!'+#13+#13+'Para o motivo = "03" "Registro da Operação não Realizada" é obrigatório informar a justificativa.', mtError, [mbOK], 0);
         cJustificativa.SetFocus;
         Abort;
      End;
      If (cMotivo.ItemIndex = 3) and (Length(Trim(cJustificativa.Text)) < 15) then begin
         MessageDlg('Erro!'+#13+#13+'Para o motivo = "03" "Registro da Operação não Realizada" A justificativa deve ter pelo menos 15 caracteres.', mtError, [mbOK], 0);
         cJustificativa.SetFocus;
         Abort;
      End;
      if GradeManif.SelectedRows.Count <= 0 then begin
         MessageDlg('Erro!'+#13+#13+'Nenhuma nota selecionada para manifestar.', mtError, [mbOK], 0);
         GradeManif.SetFocus;
         Abort;
      end;

      Screen.Cursor := crHourGlass;
      cMensagens.clear;

      Panel2.Enabled    := false;

      cMensagens.Clear;
      cMensagens.Lines.Add('Comunicando-se com o servidor da SEFAZ...Aguarde.');
      cMensagens.Lines.Add('');
      cMensagens.Lines.Add('1. Enviando manifestação.');

      Application.ProcessMessages;

      With Dados, dmFiscal do begin
           mPasta := Trim(ConfiguracaoPasta_NFE.Value) + '\'+removecaracter('/', '', Trim(EmpresasRazao_Social.AsString));
           If EmpresasMatriz_Filial.AsBoolean = true then
              mPasta := mPasta + '_Matriz'
           else
              mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);

           mPasta := mPasta + '\Manifesto';
           If not DirectoryExists(mPasta) then ForceDirectories(mPasta);
           
           for mSel := 0 to GradeManif.SelectedRows.Count-1 do begin
               GradeManif.DataSource.DataSet.GotoBookMark((GradeManif.SelectedRows.Items[mSel]));

               cMensagens.Lines.Add('   '+tManifesto.FieldByName('NFE_cNF').asstring);

               Util        := CoUtil.Create;
               Certificado := Trim(EmpresasCertificado_Digital.AsString);
               SiglaWS     := Trim(EmpresasUF_WebServiceManifesto.AsString);
               RetWS       := '';
               tpAmb       := Menu_Principal.Amb_Producao;
               Licenca     := Trim(EmpresasLicensa_NFe_Util.Value);
               Versao      := Trim(EmpresasManifesto_Layout.Value);
               Proxy       := Trim(ConfiguracaoServidor_Proxy.AsString);
               Usuario     := Trim(ConfiguracaoUsuario_Proxy.AsString);
               Senha       := Trim(ConfiguracaoSenha_Proxy.AsString);
               DataHora    := FormatDateTime('yyyy-mm-dd "" hh:mm:ss', StrtoDateTime(cData.Text+cHora.Text));
               cJustificativa.Text := RemoveCaracterXML(cJustificativa.Text);

               ProcEvento := Util.EnviaManDest(SiglaWS
                                              ,tpAmb
                                              ,Certificado
                                              ,Versao
                                              ,MsgDados
                                              ,RetWS
                                              ,cStat
                                              ,Resultado
                                              ,tManifesto.FieldbyName('NFe_cNF').asstring
                                              ,EmpresasCNPJ.AsString
                                              ,DataHora
                                              ,cMotivo.ItemIndex
                                              ,cJustificativa.Text
                                              ,Protocolo
                                              ,ProtocoloData
                                              ,Proxy
                                              ,Usuario
                                              ,Senha
                                              ,Licenca);

               // 135 - Evento registrado e vinculado a NF-e.
               // 136 - Evento registrado, mas nao vinculado a NF-e.
               if (cStat = 135) or (cStat = 136) then begin
                  cMensagens.Lines.Add('2.'+Resultado);
                  cMensagens.Lines.Add('3. Número do Protocolo de homologação : '+Protocolo + '   Data :'+ProtocoloData);
                  cMensagens.Lines.Add('4. Salvando Protocolo no banco de dados.');

                  NotasTerceiros.SQL.Clear;
                  NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE NFe_cNF = :pChave');
                  NotasTerceiros.ParamByName('pChave').AsString := tManifesto.FieldbyName('NFe_cNF').asstring;
                  NotasTerceiros.Open;
                  NotasTerceiros.Edit;
                                 NotasTerceirosManifesto_Protocolo.Value     := Protocolo;
                                 NotasTerceirosManifesto_DataProtocolo.Value := StrtoDateTime(Copy(ProtocoloData,9,2)+'/'+Copy(ProtocoloData,6,2)+'/'+Copy(ProtocoloData,1,4)+' '+Copy(ProtocoloData,12,11));
                                 NotasTerceirosManifesto_Motivo.Value        := cMotivo.ItemIndex;
                                 NotasTerceirosManifesto_Justificativa.Value := cJustificativa.Text;
                                 NotasTerceirosManifestada.Value             := true; 
                  NotasTerceiros.Post;

                  // Salvando o XML do protocolo da manifestação.
                  try
                      cMensagens.Lines.Add('5. Salvando arquivo XML do Protocolo no disco.');
                      xmlProtocolo         := TMemo.Create(NotaFiscal_Terceiros);
                      xmlProtocolo.Visible := False;
                      xmlProtocolo.Parent  := NotaFiscal_Terceiros;
                      xmlProtocolo.Lines.Clear;
                      xmlProtocolo.Lines.Add(MsgDados);
                      xmlProtocolo.Lines.SaveToFile(mPasta+'\NFe_'+tManifesto.FieldbyName('NFe_cNF').asstring+'_Manifestacao'+PoeZero(2,cMotivo.ItemIndex)+'.xml');

                      xmlProtocolo.Lines.Clear;
                      xmlProtocolo.Lines.Add(RetWS);
                      xmlProtocolo.Lines.SaveToFile(mPasta+'\NFe_'+tManifesto.FieldbyName('NFe_cNF').asstring+'_ManifestacaoProtocolo'+PoeZero(2,cMotivo.ItemIndex)+'.xml');
                  except
                      cMensagens.Lines.Add('   Erro ao salvar os arquivos no disco, verifique se as pastas estão corretas nas configurações do sistema.');
                  end;
               end else begin
                  If cStat < 1000 then begin
                     if cStat = 573 then begin // Quando a nota fiscal já foi manifestada.
                        NotasTerceiros.SQL.Clear;
                        NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE NFe_cNF = :pChave');
                        NotasTerceiros.ParamByName('pChave').AsString := tManifesto.FieldbyName('NFe_cNF').asstring;
                        NotasTerceiros.Open;
                        NotasTerceiros.Edit;
                                       if trim(NotasTerceirosManifesto_Protocolo.asstring) = '' then
                                          NotasTerceirosManifesto_Protocolo.Value     := '000000000000000';
                                       NotasTerceirosManifesto_DataProtocolo.Value := Date;
                                       NotasTerceirosManifesto_Motivo.Value        := cMotivo.ItemIndex;
                                       NotasTerceirosManifesto_Justificativa.Value := cJustificativa.Text;
                                       NotasTerceirosManifestada.Value             := true; 
                        NotasTerceiros.Post;
                     end;
                     cMensagens.Lines.Add('2. Evento de Manifestação do destinatário rejeitado pelo WS...');
                     cMensagens.Lines.Add('   '+Resultado);
                  end else begin
                     cMensagens.Lines.Add('2. Falha na chamada do WS...');
                     cMensagens.Lines.Add('   '+Resultado);
                  end;
               end;
           end;
      end;
      tManifesto.close;
      Panel2.Enabled := true;
      tManifesto.Open;
      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Terceiros.cMotivoChange(Sender: TObject);
begin
     if cMotivo.ItemIndex < 3 then cJustificativa.clear;
end;

procedure TNotaFiscal_Terceiros.BuscarSefaz;
var
   Util: NFe_Util_2G_Interface;
   RetWS,
   Resultado,
   msgDados,
   ultNSURec,
   verAplic,
   dhResp,
   maxNSU,
   ultNSU,
   NSUXML,
   schemaXML,
   NSU,
   Evento: widestring;

   qtDocto,
   cStat: Integer;
begin

    with Dados do begin
         RetWS     := '';
         ultNSURec := '0';

         Estados.Locate('Codigo',  Empresas.fieldByName('Estado').asstring, [loCaseInsensitive]);

         Util   := CoUtil.Create;
         {
         Evento := Util.distNSU(
                                'AN'
                                ,Menu_Principal.Amb_Producao
                                ,Trim(EmpresasCertificado_Digital.AsString)
                                ,Trim(EmpresasNFEletronica_Layout.Value)
                                ,msgDados
                                ,msgRetWS
                                ,cStat
                                ,Resultado
                                ,Empresas.FieldByName('CNPJ').asstring
                                ,Estados.fieldByName('Numero').asstring
                                ,ultNSURec
                                ,verAplic
                                ,dhResp
                                ,ultNSU
                                ,maxNSU
                                ,qtDocto
                                ,Trim(ConfiguracaoServidor_Proxy.AsString)
                                ,Trim(ConfiguracaoUsuario_Proxy.AsString)
                                ,Trim(ConfiguracaoSenha_Proxy.AsString)
                                ,Trim(EmpresasLicensa_NFe_Util.Value)
                               );
         mBusca.lines.add('Ultimo NSU Rec: '+ultNSURec);
         mBusca.lines.add('Ultimo NSU    : '+ultNSU);
         mBusca.lines.add('Maximo NSU    : '+maxNSU);
         }

         Evento := Util.consNSU('AN'
                          ,Menu_Principal.Amb_Producao
                          ,Trim(EmpresasCertificado_Digital.AsString)
                          ,Trim(EmpresasNFEletronica_Layout.Value)
                          ,msgDados
                          ,msgRetWS
                          ,cStat
                          ,msgResultado
                          ,Empresas.FieldByName('CNPJ').asstring
                          ,Estados.fieldByName('Numero').asstring
                          ,'5443'
                          ,verAplic
                          ,dhResp
                          ,ultNSU
                          ,maxNSU
                          ,NSUXML
                          ,schemaXML
                          ,Trim(ConfiguracaoServidor_Proxy.AsString)
                          ,Trim(ConfiguracaoUsuario_Proxy.AsString)
                          ,Trim(ConfiguracaoSenha_Proxy.AsString)
                          ,Trim(EmpresasLicensa_NFe_Util.Value)
                          );

         //mBusca.lines.add('Retorno Status: '+inttostr(cStat));
         //mBusca.lines.add('');
         cMensagens.lines.add('Ultimo NSU Rec: '+ultNSURec);
         cMensagens.lines.add('Ultimo NSU    : '+ultNSU);
         cmensagens.lines.add('Maximo NSU    : '+maxNSU);

//         mXML.Lines.Add(NSUXml);
//         mXML.Lines.Add('***************************************************************************************************');
//         mXML.Lines.Add(NSUXML);
//         mXML.lines.Savetofile('c:\temp\Retorno_XML.xml');
    end;

end;

(*
procedure TNotaFiscal_Terceiros.BuscarSefaz;
var
   Util: OleVariant;            
   _msgResultado: widestring;
   _resultado,
   resposta: integer;

   siglaWS: widestring;           // sigla do WS: AN para AmbienteNacional ou RS
   siglaUF:widestring;            // sigla da UF do destinatário
   tipoAmbiente: integer;         // Ambiente: 1-Produção e 2-Homologação
   nomeCertificado: widestring;   // campo assunto do certificado digital
   versao: widestring;            // versão= 1.01
   CNPJ: widestring;              // CNPJ do desinatário

   indNFe: integer;               // 0-todas as notas,
                                  // 1-somente as que não tiveram manifestação concluisva
                                  // 2-todas as que tiveram manifestação

   indEmi: integer;               // 0-todas as NF-e,
                                  // 1-somente as NF-e que não tenham destinatário/remetente
                                  //   com a mesma raiz CNPJ

   ultNSU: widestring;            // último NSU recebido pela empresa
   proxy: widestring;             // IP e porta do proxy, informar se existir proxy
   usuario: widestring;           // usuario do proxy
   senha: widestring;             // senha do proxy
   licenca: widestring;           // licenca de uso, necessário informar para produção
   
   //          DECLARAÇÃO DE PARÂMETROS DE RETORNO DA FUNCIONALIDADE
   msgDados: widestring;          // retorna o XML enviado ao WS
   msgRetWS: widestring;          // retorna o XML de resposta do WS
   cStat:integer;                 // retorna o código do resultado da chamada
   msgResultado: widestring;      // retorna o literal do resultado da chamada
   dhResp: widestring;            // retorna a data e hora da resposta
   indCont: integer;              // retorna o indicador de continuação
                                  //   0-não existem mais NF-e
                                  //   1-existem mais NF-e

   ultNSUConsultado: widestring;  // retorna o Último NSU pesquisado na SEFAZ.
                                  // Se for o caso, o solicitante pode continuar a consulta
                                  // a partir deste NSU para obter novos resultados.

   txtNFe: widestring;            // retorna o TXT com as informações das notas localizadas
   txtNFetemp: widestring;        // string de trabalho


begin
      Screen.Cursor := CrHourGlass;

      siglaWS          := 'AN';
      siglaUF          := 'SC';  // 42
      tipoAmbiente     := 2;
      nomeCertificado  := Trim(Dados.EmpresasCertificado_Digital.AsString);
      versao           := '1.01';
      msgDados         := '';
      msgRetWS         := '';
      cStat            := 0;
      msgResultado     := '';
      CNPJ             := Dados.Empresas.FieldByName('CNPJ').asstring;
      indNFe           := 0;
      indEmi           := 0;
      ultNSU           := '0';
      proxy            := '';
      usuario          := '';
      senha            := '';
      licenca          := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
      dhResp           := '';
      indCont          := 1;
      ultNSUConsultado := '0';
      txtNFe           := '';
      _resultado       := 0;
      _msgResultado    := '';

      Util := CoUtil.Create;

      Repeat
           txtNFeTemp := Util.ConsultaNFDest(siglaWS, siglaUF, tipoAmbiente, nomeCertificado, versao, msgDados, msgRetWS, cStat, msgResultado, CNPJ, indNFe, indEmi, ultNSU, dhResp, indCont, ultNSUConsultado, proxy, usuario, senha, licenca);

           mBusca.lines.add('Codigo Retorno: '+inttostr(cStat) );
           mBusca.lines.add(msgResultado);

           // 137 - Nenhum documento localizado para o destinatário	WS	-
           // 138 - Documento localizado para o destinatário
           if cStat = 138 then begin
              txtNFe := txtNFe + txtNFeTemp;        // acumula txt /   a implementar - caso o usuário queira trabalhar com o XML /  tratar o msgRetWS que tem o XML com a lista de NF-e e eventos.
           end else
             Break;
             if cStat > 1000 then begin
                MessageDlg( 'Falha na chamada do WS...'+#13+#13+msgResultado, mtError, [mbOk], 0);
                indCont := 1;             // para sair do loop
             end else
               if cStat = 656 then begin  //  trata consumo indevido
                  resposta := MessageDlg( 'Ocorreu consumo indevido, necessário aguardar 3 minutos, deseja aguardar 3 minutos ou não? ...'+#13+#13 +msgResultado, mtError, [mbYes,mbNo], 0);
                  if resposta = mrYes then
                     Sleep(180000)
                  else begin
                     MessageDlg( 'Pedido de consulta de NF-e destinadas rejeitada pelo WS...'+#13+#13 +msgResultado, mtError, [mbOk], 0);
                     indCont := 1;             // para sair do loop
                  end;
               end else
                 if cStat <> 137 then begin
                    MessageDlg( 'Pedido de consulta de NF-e destinadas rejeitada pelo WS...'+#13+#13 +msgResultado, mtError, [mbOk], 0);
                    indCont := 1;             // para sair do loop
                 end;

             ultNSU := ultNSUConsultado;                      // atualiza ultNSU com o ultNSUConsultado para persistir na pesquisa
      until indCont <> 1;

      Screen.Cursor := CrDefault;

      //rtfDadosMsg.Text       := Util.IdentaXML(msgDados,_resultado, _msgResultado);
      //rtfRetWs.Text          := Util.IdentaXML(msgRetWS,_resultado, _msgResultado);
      //edUltNSU.Text          := ultNSUConsultado;  // atualiza último NSU Consultado
      //edResultado.Text       := msgResultado;

      //137 - Nenhum documento localizado para o destinatário	WS	-
      //138 - Documento localizado para o destinatário
      if length(txtNFe) > 0 then begin
         mXML.Text := txtNfe;
      end;
end;
*)
procedure TNotaFiscal_Terceiros.Button1Click(Sender: TObject);
begin
     BuscarSefaz;
end;

procedure TNotaFiscal_Terceiros.Button2Click(Sender: TObject);
var
   Util: NFe_Util_2G_Interface;
begin
     {
     string EnviaCancPrestDesacordo(
                                    string siglaWS
                                   , int tipoAmbiente
                                   , string nomeCertificado
                                   , string versao
                                   , out string msgDados
                                   , out string msgRetWS
                                   , out int cStat
                                   , out string msgResultado
                                   , string chaveCTe
                                   , string CNPJTomador
                                   , string nProtEvPrestDes
                                   , string dhEvento
                                   , out string nProtocolo
                                   , out string dProtocolo
                                   , string proxy
                                   , string usuario
                                   , string senha
                                   , string licenca
                                   )
      }
end;

procedure TNotaFiscal_Terceiros.bVincularClick(Sender: TObject);
begin
     NotaFiscal_TerceirosVinculo := TNotaFiscal_TerceirosVinculo.create(self);
     NotaFiscal_TerceirosVinculo.caption := caption;
     NotaFiscal_TerceirosVinculo.showmodal;
end;

procedure TNotaFiscal_Terceiros.bManiForaClick(Sender: TObject);
var
   mSel:integer;
begin
     with dmFiscal do begin
          if MessageDlg('Deseja realmente  manifestar a(s) Nota(s) selecionada(s)?', mtConfirmation, [mbyes, mbno], 0) = mryes then begin
             for mSel := 0 to GradeManif.SelectedRows.Count-1 do begin
                 GradeManif.DataSource.DataSet.GotoBookMark((GradeManif.SelectedRows.Items[mSel]));

                 if Strtoint(difdias(tManifesto.FieldByName('Data_Emissao').Value, Date)) > 180 then begin
                    cMensagens.Lines.Add('   '+tManifesto.FieldByName('NFE_cNF').asstring);

                    NotasTerceiros.SQL.Clear;
                    NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE NFe_cNF = :pChave');
                    NotasTerceiros.ParamByName('pChave').AsString := tManifesto.FieldbyName('NFe_cNF').asstring;
                    NotasTerceiros.Open;

                    if (NotasTerceiros.FieldByName('Manifesto_Protocolo').Asstring = '000000000000000') or (NotasTerceiros.FieldByName('Manifesto_Protocolo').Asstring = '') then begin
                       if not NotasTerceiros.FieldByName('Manifestada').AsBoolean then begin
                          NotasTerceiros.Edit;
                                         NotasTerceiros.FieldByName('Manifestada').AsBoolean            := true;
                                         NotasTerceiros.FieldByName('Manifesto_Protocolo').Asstring     := '000000000000000';
                                         NotasTerceiros.FieldByName('Manifesto_DataProtocolo').Asstring := DatetoStr(Date);
                                         NotasTerceiros.FieldByName('Manifesto_Motivo').Asinteger       := 0;
                                         NotasTerceiros.FieldByName('Manifesto_Justificativa').Asstring := 'Manifesto de Nota Fiscal fora do prazo.';
                          NotasTerceiros.Post;
                       end else begin
                          NotasTerceiros.Edit;
                                         NotasTerceiros.FieldByName('Manifestada').AsBoolean := false;
                                         NotasTerceiros.FieldByName('Manifesto_Protocolo').clear;
                                         NotasTerceiros.FieldByName('Manifesto_DataProtocolo').clear;
                                         NotasTerceiros.FieldByName('Manifesto_Motivo').clear;
                                         NotasTerceiros.FieldByName('Manifesto_Justificativa').clear;
                          NotasTerceiros.Post;
                       end;
                    end;
                 end else begin
                    cMensagens.Lines.Add('Nota Fiscal '+PoeZero(9, tManifesto.FieldByName('Nota').Asinteger)+': Dentro do prazo de 6 meses, utilize a manifestação oficial.');
                 end;
             end;
             tManifesto.close;
             tManifesto.Open;
          end;
     end;
end;

end.

