unit frmProcesso_Fechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, DBCtrls,
  RXDBCtrl, Mask, Grids, DBGrids, DB, DBAccess, MSAccess, Funcoes, Vcl.ComCtrls, Menus, Buttons, Math, system.UITypes, RXSwitch, RxCurrEdit, MemDS, RxToolEdit;

type
  TProcesso_Fechamento = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tCodigo: TMSQuery;
    tCodigoCodigo: TIntegerField;
    tHistorico: TMSQuery;
    cPaginas: TPageControl;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    GradeContratos: TDBGrid;
    GroupBox2: TGroupBox;
    StaticText6: TStaticText;
    cDespesasCusto: TCurrencyEdit;
    GroupBox6: TGroupBox;
    GradeNotas: TDBGrid;
    GroupBox8: TGroupBox;
    StaticText12: TStaticText;
    DBEdit2: TDBEdit;
    StaticText15: TStaticText;
    DBEdit3: TDBEdit;
    StaticText17: TStaticText;
    DBEdit4: TDBEdit;
    StaticText19: TStaticText;
    DBEdit5: TDBEdit;
    StaticText8: TStaticText;
    DBEdit6: TDBEdit;
    StaticText32: TStaticText;
    cTotalImpostosEntrada: TCurrencyEdit;
    StaticText20: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText26: TStaticText;
    StaticText28: TStaticText;
    StaticText30: TStaticText;
    StaticText9: TStaticText;
    cTotalImpostosSaida: TCurrencyEdit;
    StaticText24: TStaticText;
    StaticText34: TStaticText;
    StaticText36: TStaticText;
    StaticText38: TStaticText;
    cDiferIPIReal: TCurrencyEdit;
    cDiferPISReal: TCurrencyEdit;
    cDiferCOFINSReal: TCurrencyEdit;
    StaticText7: TStaticText;
    StaticText41: TStaticText;
    cTotalDiferReal: TCurrencyEdit;
    cDiferICMSReal: TCurrencyEdit;
    StaticText10: TStaticText;
    GroupBox7: TGroupBox;
    StaticText14: TStaticText;
    StaticText16: TStaticText;
    StaticText18: TStaticText;
    cMargemLucro: TDBEdit;
    cDescontoCom: TDBEdit;
    cDescontoAdic: TDBEdit;
    StaticText48: TStaticText;
    cTotalFinanceiro: TCurrencyEdit;
    GroupBox9: TGroupBox;
    RxDBGrid3: TRxDBGrid;
    StaticText44: TStaticText;
    Panel3: TPanel;
    Shape1: TShape;
    lSaldo: TRxLabel;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    StaticText21: TStaticText;
    cICMSEntrada: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    StaticText25: TStaticText;
    StaticText27: TStaticText;
    StaticText29: TStaticText;
    StaticText42: TStaticText;
    cRentTotalICMS: TCurrencyEdit;
    DBEdit23: TDBEdit;
    DBEdit9: TDBEdit;
    StaticText31: TStaticText;
    DBEdit24: TDBEdit;
    GroupBox5: TGroupBox;
    StaticText33: TStaticText;
    StaticText35: TStaticText;
    StaticText37: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    DBEdit17: TDBEdit;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    cTotalRent: TCurrencyEdit;
    StaticText47: TStaticText;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    cTotalRentImp: TCurrencyEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    cRentICMS: TCurrencyEdit;
    cRentMargemLucro: TCurrencyEdit;
    cRentDescAdic: TCurrencyEdit;
    cRentDescCom: TCurrencyEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Panel4: TPanel;
    Shape2: TShape;
    lRentabilidade: TRxLabel;
    TabSheet1: TTabSheet;
    Grade: TDBGrid;
    TabSheet4: TTabSheet;
    GradeDespesas: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    NavegaItens: TDBNavigator;
    bAdicionar: TButton;
    bExcluir: TButton;
    PopupMenu1: TPopupMenu;
    RemoverosItensSelecionados1: TMenuItem;
    RemoverosItensnoSelecionados1: TMenuItem;
    RemoverTodos1: TMenuItem;
    AdicionarDespesas1: TMenuItem;
    tTotalFecha: TMSQuery;
    tTotalSaida: TMSQuery;
    tContratos: TMSQuery;
    tContratosData: TDateTimeField;
    tContratosTaxa_Cambial: TFloatField;
    tContratosValor_Real: TFloatField;
    dstContratos: TDataSource;
    tPagamentos: TMSQuery;
    tPagamentosRegistro: TLargeintField;
    tPagamentosData: TDateTimeField;
    tPagamentosValor: TCurrencyField;
    dstPagamentos: TDataSource;
    Panel5: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    cData: TDBDateEdit;
    cProcesso: TDBLookupComboBox;
    StaticText3: TStaticText;
    DBMemo1: TDBMemo;
    cTotalCliente: TDBEdit;
    cTotalDespesas: TCurrencyEdit;
    StaticText51: TStaticText;
    tTotalBaixas: TMSQuery;
    tTotalCambio: TMSQuery;
    StaticText52: TStaticText;
    DBEdit1: TDBEdit;
    StaticText53: TStaticText;
    DBEdit18: TDBEdit;
    StaticText54: TStaticText;
    cTotalNotas: TDBEdit;
    bCalculoCliente: TSpeedButton;
    bTotalNotas: TSpeedButton;
    bTodosTotais: TSpeedButton;
    cTotalImpostos: TDBEdit;
    bTotalImpostos: TSpeedButton;
    N1: TMenuItem;
    CopiardescriodaClassificao1: TMenuItem;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    GroupBox10: TGroupBox;
    StaticText55: TStaticText;
    StaticText56: TStaticText;
    StaticText57: TStaticText;
    cCorrecaoDespesas: TCurrencyEdit;
    cCorrecaoCambio: TCurrencyEdit;
    cCorrecaoImpostos: TCurrencyEdit;
    StaticText58: TStaticText;
    cTotalCorrecao: TCurrencyEdit;
    cDataCambio: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    DBEdit30: TDBEdit;
    cTaxaCambio: TDBEdit;
    cTaxaDespesas: TDBEdit;
    CopiardatadeCorreoparatodasasdespesas1: TMenuItem;
    CopiarDatadeCorreoparatodasasdespesas2: TMenuItem;
    tCorrecao: TMSQuery;
    tRegistro: TMSQuery;
    tRegistroRegistro: TIntegerField;
    bPesquisar: TButton;
    tProcesso: TMSQuery;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    StaticText60: TStaticText;
    StaticText61: TStaticText;
    StaticText62: TStaticText;
    cICMSSTDif: TCurrencyEdit;
    tICMSST: TMSQuery;
    cComissaoValor: TCurrencyEdit;
    cComissaoAliq: TCurrencyEdit;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    StaticText59: TStaticText;
    DBEdit35: TDBEdit;
    cTotalBCICMS: TCurrencyEdit;
    Trava1: TRxSwitch;
    Trava2: TRxSwitch;
    tContratosContrato: TStringField;
    tContratosValor_ME: TCurrencyField;
    bCalculoComissao: TSpeedButton;
    tData: TMSQuery;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image1: TImage;
    Panel7: TPanel;
    bCalculoCambio: TSpeedButton;
    StaticText4: TStaticText;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    StaticText11: TStaticText;
    lCambioCliME: TCurrencyEdit;
    lCambioCliReal: TCurrencyEdit;
    GroupBox3: TGroupBox;
    StaticText13: TStaticText;
    StaticText43: TStaticText;
    tTransfer: TMSQuery;
    StaticText63: TStaticText;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit36: TDBEdit;
    tTotalEntrada: TMSQuery;
    bDuplic: TButton;
    tTemp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure GradeDespesasDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
    procedure bAdicionarClick(Sender: TObject);
    procedure Totaliza;
    procedure bExcluirClick(Sender: TObject);
    procedure GradeDespesasKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure NavegaItensBeforeAction(Sender: TObject;Button: TNavigateBtn);
    procedure RemoverosItensnoSelecionados1Click(Sender: TObject);
    procedure GradeDespesasKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure RemoverosItensSelecionados1Click(Sender: TObject);
    procedure GradeDespesasCellClick(Column: TColumn);
    procedure RemoverTodos1Click(Sender: TObject);
    procedure AdicionarDespesas1Click(Sender: TObject);
    procedure AbrirTabelas;
    procedure cMargemLucroChange(Sender: TObject);
    procedure RecalculaCambio;
    procedure RecalculaPagamentosCliente;
    procedure RecalculaNotas;
    procedure RecalculaImpostos;
    procedure RecalculaComissao;
    procedure bCalculoCambioClick(Sender: TObject);
    procedure bCalculoClienteClick(Sender: TObject);
    procedure bTotalNotasClick(Sender: TObject);
    procedure bTodosTotaisClick(Sender: TObject);
    procedure bTotalImpostosClick(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure CopiardescriodaClassificao1Click(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure GradeDespesasEditChange(Sender: TObject);
    procedure cTotalCorrecaoChange(Sender: TObject);
    procedure cTaxaDespesasChange(Sender: TObject);
    procedure cTaxaCambioChange(Sender: TObject);
    procedure DBEdit30Change(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure DBDateEdit3Exit(Sender: TObject);
    procedure cDataCambioExit(Sender: TObject);
    procedure NavegaItensClick(Sender: TObject; Button: TNavigateBtn);
    procedure GradeDespesasExit(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure Trava2Click(Sender: TObject);
    procedure Trava1Click(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure bCalculoComissaoClick(Sender: TObject);
    procedure cComissaoValorExit(Sender: TObject);
    procedure bDuplicClick(Sender: TObject);
  private
    procedure RecalculaTransfDev;
    { Private declarations }
  public
    { Public declarations }
    mSelecionou   : Boolean;
    mContador     : Integer;
    mContadorfinal: Integer;
    mPesquisa     : String;
    mComplementar : Boolean;
    CompClass: string;
  end;

var
  Processo_Fechamento: TProcesso_Fechamento;

implementation

uses frmDados, frmMenu_Principal, frmProcesso_FechamentoItensFiltro, frmDMFiscal;

{$R *.dfm}

procedure TProcesso_Fechamento.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TProcesso_Fechamento.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_Fechamento.FormClose(Sender: TObject;var Action: TCloseAction);
var
   i: Integer;
begin
      FecharTabelas(Dados, dmFiscal, nil, nil);

      For i := 0 to Processo_Fechamento.ComponentCount -1 do begin
          If Processo_Fechamento.Components[I] is TMSQuery then TMSQuery(Processo_Fechamento.Components[I]).Close;
      End;

      Processo_Fechamento.Release;
      Processo_Fechamento := nil;
end;

procedure TProcesso_Fechamento.FormShow(Sender: TObject);
begin
      With Dados do begin
           Configuracao.Open;
           CompClass := iif(not ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
           
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE(Codigo = :pCodigo)');
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos WHERE(Data_Encerramento IS NOT NULL) ORDER BY Processo');
           ProcessosDOC.Open;

           ProcessosFechamento.SQL.Clear;
           ProcessosFechamento.SQL.Add('SELECT * FROM ProcessosFechamento WHERE(Complementar = :pCompl) ORDER BY Codigo DESC');
           ProcessosFechamento.ParamByName('pCompl').AsBoolean := mComplementar;
           ProcessosFechamento.Open;

           ProcessosFechamentoItens.SQL.Clear;
           ProcessosFechamentoItens.SQL.Add('SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento) ORDER BY Classificacao');
           ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
           ProcessosFechamentoItens.Open;

           with ClassificacaoFinanceira do begin
                sql.Clear;
                sql.Add('SELECT * FROM '+CompClass+' WHERE Titulo <> 1 AND Desativada <> 1 AND Tipo = ''R''');
                open;
           end;

           cPaginas.ActivePageIndex     := 0;
           cPaginas.Pages[1].TabVisible := ProcessosFechamento.RecordCount <> 0;
           cPaginas.Pages[2].TabVisible := ProcessosFechamento.RecordCount <> 0;
           cPaginas.Pages[3].TabVisible := ProcessosFechamento.RecordCount <> 0;

           AbrirTabelas;
           Totaliza;
      End;
end;

procedure TProcesso_Fechamento.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i:Integer;
begin
      bTodosTotais.Enabled := (Button = nbEdit);
      With Dados do begin
           Panel5.Enabled := (ProcessosFechamento.State = dsInsert) or (ProcessosFechamento.State = dsEdit);
           cPaginas.Pages[1].Enabled := (ProcessosFechamento.State = dsInsert) or (ProcessosFechamento.State = dsEdit);
           cPaginas.Pages[2].Enabled := (ProcessosFechamento.State = dsInsert) or (ProcessosFechamento.State = dsEdit);
           cPaginas.Pages[3].Enabled := (ProcessosFechamento.State = dsInsert) or (ProcessosFechamento.State = dsEdit);

           If (Button = nbEdit) or (Button = nbInsert) then begin
              For i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              End;

              If (Button = nbEdit) then begin
                 If cPaginas.ActivePageIndex = 0 then cProcesso.SetFocus;
                 If cPaginas.ActivePageIndex = 1 then GradeDespesas.SetFocus;
                 If cPaginas.ActivePageIndex = 2 then cTaxaDespesas.SetFocus;
                 If cPaginas.ActivePageIndex = 3 then cICMSEntrada.SetFocus;
              End;

              If Button = nbInsert then begin
                 cPaginas.ActivePageIndex := 0;
                 cProcesso.SetFocus;
              End;
           End;

           If (Button = nbPost) or (Button = nbCancel) then Begin
              Screen.Cursor := crSQLWait;
              ProcessosFechamento.Refresh;
              Screen.Cursor := crDefault;
              RecalculaComissao;
              Totaliza;
           End;

           cPaginas.Pages[1].TabVisible := (Dados.ProcessosFechamento.RecordCount <> 0) and (ProcessosFechamento.State <> dsInsert);
           cPaginas.Pages[2].TabVisible := (Dados.ProcessosFechamento.RecordCount <> 0) and (ProcessosFechamento.State <> dsInsert);
           cPaginas.Pages[3].TabVisible := (Dados.ProcessosFechamento.RecordCount <> 0) and (ProcessosFechamento.State <> dsInsert);

           Trava1.StateOn := not Dados.ProcessosFechamentoTrava_DescontoJuros.AsBoolean;
           Trava2.StateOn := not Dados.ProcessosFechamentoTrava_ComissaoValor.AsBoolean;
           cComissaoAliq.Enabled    := Trava2.StateOn;
           cComissaoValor.Enabled   := Trava2.StateOn;
           bCalculoComissao.Enabled := Trava2.StateOn;
      End;
end;

procedure TProcesso_Fechamento.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      With Dados do begin
           If (Button = nbPost) and (ProcessosFechamento.State = dsInsert) then begin
              tProcesso.SQL.Clear;
              tProcesso.SQL.Add('SELECT COUNT(*) AS Qtde FROM ProcessosFechamento WHERE(Processo = :pProcesso) AND (Complementar = :pCompl)');
              tProcesso.ParamByName('pProcesso').AsString := Dados.ProcessosFechamentoProcesso.AsString;
              tProcesso.ParamByName('pCompl').AsBoolean   := mComplementar;
              tProcesso.Open;

              If tProcesso.FieldByName('Qtde').AsInteger > 0 then begin
                 MessageDlg('Atenção!'+#13+#13+'Já existe um fechamento com o número do processo informado.'+#13+#13+'Informe um número de processo diferente.', mtError, [mbOK], 0);
                 cProcesso.SetFocus;
                 Abort;
              End;
           End;

           If (Button = nbEdit) or (Button = nbInsert) then begin
              // Salva os itens "Despesas" na tabela temporaria.
              ProcessosFechamentoItensTemp.SQL.Clear;
              ProcessosFechamentoItensTemp.SQL.Add('DELETE FROM ProcessosFechamentoItensTemp WHERE(Fechamento = :pFechamento)');
              ProcessosFechamentoItensTemp.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
              ProcessosFechamentoItensTemp.Execute;
              ProcessosFechamentoItensTemp.SQL.Clear;
              ProcessosFechamentoItensTemp.SQL.Add('INSERT INTO ProcessosFechamentoItensTemp SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento)');
              ProcessosFechamentoItensTemp.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
              ProcessosFechamentoItensTemp.Execute;
           End;

           // Volta os itens da tabela temporaria para a tabela de despesas.
           If Button = nbCancel then Begin
              ProcessosFechamentoItensTemp.SQL.Clear;
              ProcessosFechamentoItensTemp.SQL.Add('DELETE FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento)');
              ProcessosFechamentoItensTemp.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
              ProcessosFechamentoItensTemp.Execute;
              ProcessosFechamentoItensTemp.SQL.Clear;
              ProcessosFechamentoItensTemp.SQL.Add('INSERT INTO ProcessosFechamentoItens SELECT * FROM ProcessosFechamentoItensTemp WHERE(Fechamento = :pFechamento)');
              ProcessosFechamentoItensTemp.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
              ProcessosFechamentoItensTemp.Execute;
              ProcessosFechamentoItensTemp.SQL.Clear;
              ProcessosFechamentoItensTemp.SQL.Add('DELETE FROM ProcessosFechamentoItensTemp WHERE(Fechamento = :pFechamento)');
              ProcessosFechamentoItensTemp.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
              ProcessosFechamentoItensTemp.Execute;

              ProcessosFechamentoItens.SQL.Clear;
              ProcessosFechamentoItens.SQL.Add('SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento) ORDER BY Classificacao');
              ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
              ProcessosFechamentoItens.Open;
           End;

           // Verificando os campos obrigatorios do cadastro do fechamento.
           If (Button = nbPost) then begin
              If Trim(RemoveCaracter('/', '', ProcessosFechamentoData.AsString)) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a data do fechamento.', mtError, [mbOK], 0);
                 cData.SetFocus;
                 Abort;
              End;
              If Trim(ProcessosFechamentoProcesso.Value) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o número do processo.', mtError, [mbOK], 0);
                 cProcesso.SetFocus;
                 Abort;
              End;

              // Se o usuário click no botão salvar da barra de navegação principal sem salvar o item executa o post.
              If (ProcessosFechamentoItens.State = dsInsert) or (ProcessosFechamentoItens.State = dsedit) then begin
                 ProcessosFechamentoItens.Post;
                 Totaliza;
              End;

              Clientes.SQL.Clear;
              Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo = :pCodigo)');
              Clientes.ParamByName('pCodigo').AsInteger := ProcessosDOC.FieldByName('Cliente').AsInteger;
              Clientes.Open;

              ProcessosFechamentoCliente.Value            := ProcessosDOCCliente.Value;
              ProcessosFechamentoNome_Cliente.Value       := ClientesNome.Value;
              ProcessosFechamentoComissao_PartValor.Value := cComissaoValor.Value;

              If ProcessosFechamento.State = dsInsert then begin
                 tCodigo.SQL.Clear;
                 tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM ProcessosFechamento');
                 tCodigo.Open;
                 ProcessosFechamentoCodigo.Value       := tCodigo.FieldByName('Codigo').AsInteger + 1;
                 ProcessosFechamentoComplementar.Value := mComplementar;

                 // Adiciona o histórico no follow-up do processo.
                 ProcessosHistorico.SQL.Clear;
                 ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE(Processo = :pProcesso)');
                 ProcessosHistorico.ParamByName('pProcesso').AsString := Trim(ProcessosFechamentoProcesso.AsString);
                 ProcessosHistorico.Open;

                 tHistorico.SQL.Clear;
                 tHistorico.SQL.Add('SELECT MAX(Numero) AS Numero FROM ProcessosHistorico');
                 tHistorico.Open;

                 ProcessosHistorico.Append;
                                    ProcessosHistoricoNumero.Value    := tHistorico.FieldByName('Numero').AsInteger+1;
                                    ProcessosHistoricoData.Value      := Date;
                                    ProcessosHistoricoHora.Value      := TimetoStr(Time);
                                    ProcessosHistoricoProcesso.Value  := ProcessosDOCProcesso.AsString;
                                    ProcessosHistoricoDescricao.Value := 'Fechamento do processo.';
                                    ProcessosHistoricoDocumento.Value := ProcessosFechamentoCodigo.AsString; 
                 ProcessosHistorico.Post;

                 ProcessosFechamentoMargem_Lucro.Value            := ProcessosDOCMargem_Lucro.Value;
                 ProcessosFechamentoMargem_LucroValor.Value       := ProcessosDOCMargem_LucroValor.Value;
                 ProcessosFechamentoDesconto_Operacional.Value    := ProcessosDOCDesconto_Operacional.Value;
                 ProcessosFechamentoDesconto_ComercialValor.Value := ProcessosDOCDesconto_OperacionalValor.Value;
                 ProcessosFechamentoDesconto_Adicional.Value      := ProcessosDOCDesconto_Adicional.Value;
                 ProcessosFechamentoDesconto_AdicionalValor.Value := ProcessosDOCDesconto_AdicionalValor.Value;

                 RecalculaPagamentosCliente;
                 RecalculaCambio;
                 RecalculaImpostos;

                 If ProcessosFechamentoICMS_PagarPercentual.Value  = 0 then ProcessosFechamentoICMS_PagarPercentual.Value  := ConfiguracaoProcesso_FechamentoICMSPagar.Value;
                 If ProcessosFechamentoICMS_FDEPercentual.Value    = 0 then ProcessosFechamentoICMS_FDEPercentual.Value    := ConfiguracaoProcesso_FechamentoFDE.Value;
                 If ProcessosFechamentoAssessoria_Percentual.Value = 0 then ProcessosFechamentoAssessoria_Percentual.Value := Dados.ConfiguracaoProcesso_FechamentoAssAduaneira.Value;

                 If mComplementar = false then begin
                    If ProcessosFechamentoII.AsCurrency           = 0 then ProcessosFechamentoII.Value           := ProcessosDOCII.Value;
                    If ProcessosFechamentoICMS_Entrada.AsCurrency = 0 then ProcessosFechamentoICMS_Entrada.Value := ProcessosDOCValor_ICMS.Value;
                 end else begin
                    ProcessosFechamentoII.AsCurrency           := 0;
                    ProcessosFechamentoICMS_Entrada.AsCurrency := 0;
                 End;

                 // Pegando a alíquota da CSLL.
                 Impostos.SQL.Clear;
                 Impostos.SQL.Add('SELECT * FROM Impostos WHERE(Codigo = :pCSLL)');
                 Impostos.ParamByName('pCSLL').AsString := ConfiguracaoProcesso_FechamentoCSLL.AsString;
                 Impostos.Open;
                 If ProcessosFechamentoCSLL_Percentual.Value = 0 then ProcessosFechamentoCSLL_Percentual.Value := ImpostosValor.Value;

                 // Pegando a alíquota do IRPJ.
                 Impostos.SQL.Clear;
                 Impostos.SQL.Add('SELECT * FROM Impostos WHERE(Codigo = :pIRPJ)');
                 Impostos.ParamByName('pIRPJ').AsString := ConfiguracaoProcesso_FechamentoIRPJ.AsString;
                 Impostos.Open;
                 If ProcessosFechamentoIRPJ_Percentual.Value = 0 then ProcessosFechamentoIRPJ_Percentual.Value := ImpostosValor.Value;

                 // Registra a inclusão no log do sistema.
                 LogDados(ProcessosFechamento, 'Fechamento nº: '+ProcessosFechamentoCodigo.AsString+ ' Processo nº: '+ Trim(ProcessosDOCProcesso.AsString), dsInsert);
              end else begin
                 // Registra a alteração no log do sistema.
                 LogDados(ProcessosFechamento, 'Fechamento nº: '+ProcessosFechamentoCodigo.AsString+ ' Processo nº: '+ Trim(ProcessosDOCProcesso.AsString), dsEdit);
              End;

              // Atualiza a data do fechamento do processo na tabela de processos.
              ProcessosDOC.Edit;
                           ProcessosDOCProcesso_Fechamento.Value := ProcessosFechamentoData.Value;
              ProcessosDOC.Post;

              // Deleta os Itens da tabela temporaria.
              ProcessosFechamentoItensTemp.SQL.Clear;
              ProcessosFechamentoItensTemp.SQL.Add('DELETE FROM ProcessosFechamentoItensTemp WHERE(Fechamento = :pFechamento)');
              ProcessosFechamentoItensTemp.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
              ProcessosFechamentoItensTemp.Execute;

              RecalculaImpostos;
           End;

           If Button = nbDelete then begin
              If MessageDlg('Deseja realmente excluir este fechamento?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                 // Registra a exclusão no log do sistema.
                 GerarLog('('+Menu_Principal.mUsuarioCodigo+') '+Menu_Principal.mUsuarioNome, 'ProcessosFechamento', 'EXCLUSÃO', 'Processo', 'Fechamento nº: '+ProcessosFechamentoCodigo.AsString + ' Processo nº: '+Trim(ProcessosDOCProcesso.AsString), ProcessosFechamentoCodigo.AsString, '', '');

                 ProcessosFechamentoItens.SQL.Clear;
                 ProcessosFechamentoItens.SQL.Add('DELETE FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento)');
                 ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
                 ProcessosFechamentoItens.Execute;
                 ProcessosFechamentoItens.SQL.Clear;
                 ProcessosFechamentoItens.SQL.Add('SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento)');
                 ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;

                 // Remove a data do fechamento do processo na tabela de processos.
                 ProcessosDOC.Edit;
                              ProcessosDOCProcesso_Fechamento.Clear;
                 ProcessosDOC.Post;
              end else begin
                 Abort;
              End;
           End;
      End;
end;

procedure TProcesso_Fechamento.GradeDespesasDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With Dados do begin
           If (Column.FieldName = 'Baixa') then begin
              With GradeDespesas.Canvas do begin
                   Brush.Color := clBtnFace;
                   FillRect(Rect);
                   If (ProcessosFechamentoItens.FieldByName('Baixa').Value = 'T') then ImageList1.GetBitmap(0, Icon);
                   If (ProcessosFechamentoItens.FieldByName('Baixa').Value = 'P') then ImageList1.GetBitmap(9, Icon);
                   Draw(Round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
              End;
           End;
           If (Column.FieldName = 'Custo') then begin
               With GradeDespesas.Canvas do begin
                    Brush.Color := clBtnFace;
                    FillRect(Rect);
                    If (ProcessosFechamentoItens.FieldByName('Custo').Value = True) then Dados.ImageList1.GetBitmap(2, Icon);
                    Draw(Round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
               End;
           End;
      End;
end;

procedure TProcesso_Fechamento.bAdicionarClick(Sender: TObject);
begin
      With Dados do begin
           ProcessosFechamentoItens.DisableControls;
           Processo_FechamentoItensFiltro := TProcesso_FechamentoItensFiltro .Create(Self);
           Processo_FechamentoItensFiltro.Caption := Caption;
           Processo_FechamentoItensFiltro.ShowModal;
           Totaliza;
           ProcessosFechamentoItens.EnableControls;
      End;
end;

procedure TProcesso_Fechamento.bExcluirClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente remover todas as despesas deste fechamento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      With Dados do begin
           ProcessosFechamentoItens.SQL.Clear;
           ProcessosFechamentoItens.SQL.Add('DELETE FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento)');
           ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
           ProcessosFechamentoItens.Execute;
           ProcessosFechamentoItens.SQL.Clear;
           ProcessosFechamentoItens.SQL.Add('SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento) ORDER BY Classificacao');
           ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
           ProcessosFechamentoItens.Open;

           Totaliza;
      End;
end;

procedure TProcesso_Fechamento.GradeDespesasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      With Dados do begin
           If (Key = VK_DOWN) then begin
              If (ProcessosFechamentoItens.State = dsEdit) then ProcessosFechamentoItens.Post;
              ProcessosFechamentoItens.DisableControls;
              ProcessosFechamentoItens.Next;
              If ProcessosFechamentoItens.Eof then
                 Key := 0
              else
                 ProcessosFechamentoItens.Prior;

              ProcessosFechamentoItens.EnableControls;
           End;
           If (Key = VK_RETURN) then begin
              If (ProcessosFechamentoItens.State = dsInsert) or (ProcessosFechamentoItens.State = dsEdit) then ProcessosFechamentoItens.Post;
              Totaliza;
           End;
      End;

      If (ssShift in Shift) then begin
          mSelecionou := true;
      End;
end;

procedure TProcesso_Fechamento.NavegaItensBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      If Button = nbDelete then begin
         If MessageDlg('Deseja realmente excluir este item?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
            Abort;
         End;
      End;
end;

procedure TProcesso_Fechamento.RemoverosItensnoSelecionados1Click(Sender: TObject);
var
   mSel     : Integer;
   mDespesas: WideString;
begin
      If MessageDlg('Deseja realmente remover todas as despesas não selecionadas?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;
      With Dados do begin
           mDespesas := '';
           For mSel := 0 to GradeDespesas.SelectedRows.Count-1 do begin
               GradeDespesas.DataSource.DataSet.GotoBookMark((GradeDespesas.SelectedRows.Items[mSel]));
               If Trim(mDespesas) <> '' then mDespesas := mDespesas + ',';
               mDespesas := mDespesas + ProcessosFechamentoItens.FieldByName('Registro').AsString
           End;
           mDespesas := '('+mDespesas+')';
           ProcessosFechamentoItens.SQL.Clear;
           ProcessosFechamentoItens.SQL.Add('DELETE FROM ProcessosFechamentoItens WHERE(Registro NOT IN'+mDespesas+') AND (Fechamento = :pFechamento)' );
           ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
           ProcessosFechamentoItens.Execute;
           ProcessosFechamentoItens.SQL.Clear;
           ProcessosFechamentoItens.SQL.Add('SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento) ORDER BY Classificacao');
           ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
           ProcessosFechamentoItens.Open;

           Totaliza;
      End;
end;

procedure TProcesso_Fechamento.GradeDespesasKeyUp(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      If (mSelecionou = true) and (Key = 16) and (GradeDespesas.DataSource.DataSet.RecNo > mContador) then begin
         mContadorfinal := GradeDespesas.DataSource.DataSet.RecNo;
         GradeDespesas.DataSource.DataSet.RecNo := mContador;
         Repeat
              GradeDespesas.SelectedRows.CurrentRowSelected := true;
              GradeDespesas.DataSource.DataSet.Next;
         until
              (GradeDespesas.DataSource.DataSet.RecNo = mContadorFinal) or (Dados.ProcessosFechamentoItens.Eof);
      End;
      
      mContador      := 0;
      mContadorfinal := 0;
      mSelecionou    := false;
end;

procedure TProcesso_Fechamento.RemoverosItensSelecionados1Click(Sender: TObject);
var
   mSel     : Integer;
   mDespesas: WideString;
begin
      If MessageDlg('Deseja realmente remover todas as despesas selecionadas?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;
      With Dados do begin
           mDespesas := '';
           For mSel := 0 to GradeDespesas.SelectedRows.Count-1 do begin
               GradeDespesas.DataSource.DataSet.GotoBookMark((GradeDespesas.SelectedRows.Items[mSel]));
               If Trim(mDespesas) <> '' then mDespesas := mDespesas + ',';
               mDespesas := mDespesas + ProcessosFechamentoItens.FieldByName('Registro').AsString
           End;
           mDespesas := '('+mDespesas+')';
           ProcessosFechamentoItens.SQL.Clear;
           ProcessosFechamentoItens.SQL.Add('DELETE FROM ProcessosFechamentoItens WHERE Registro IN'+mDespesas + ' AND (Fechamento = :pFechamento)' );
           ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
           ProcessosFechamentoItens.Execute;
           ProcessosFechamentoItens.SQL.Clear;
           ProcessosFechamentoItens.SQL.Add('SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento) ORDER BY Classificacao');
           ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
           ProcessosFechamentoItens.Open;
           Totaliza;
      End;
end;

procedure TProcesso_Fechamento.GradeDespesasCellClick(Column: TColumn);
begin
      If (mSelecionou = false) then begin
          mContador := GradeDespesas.DataSource.DataSet.RecNo;
      End;
end;

procedure TProcesso_Fechamento.RemoverTodos1Click(Sender: TObject);
begin
      bExcluir.Click;
end;

procedure TProcesso_Fechamento.AdicionarDespesas1Click(Sender: TObject);
begin
      bAdicionar.Click;
end;

procedure TProcesso_Fechamento.AbrirTabelas;
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal do begin
           ProcessosFechamentoItens.SQL.Clear;
           ProcessosFechamentoItens.SQL.Add('SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento) ORDER BY Classificacao');
           ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
           ProcessosFechamentoItens.Open;
           with Notas do begin 
                sql.Clear;
                sql.Add('select * from NotasFiscais');
                sql.Add('where Processo = :pProcesso and Cancelada <> 1 and NFe_Denegada <> 1 and (select Fechamento_Processo from TipoNota where Codigo = Tipo_Nota) = 1');
                if mComplementar = true then begin
                   Notas.SQL.Add('and Complementar = 1');
                end;
                sql.Add('order by Saida_Entrada, Numero');
                parambyname('pProcesso').AsString := cProcesso.Text;
                open;
           end;
           with tContratos do begin
                SQL.Clear;
                SQL.Add('SELECT Contrato,');
                SQL.Add('       Data,');
                SQL.Add('       Valor_ME,');
                SQL.Add('       (SELECT Taxa_Cambial FROM ContratoCambio CC WHERE(CC.Numero = CCI.Contrato)) AS Taxa_Cambial,');
                SQL.Add('       (Valor_ME * (SELECT Taxa_Cambial FROM ContratoCambio CC WHERE(CC.Numero = CCI.Contrato)) ) AS Valor_Real');
                SQL.Add('FROM   ContratoCambioItens CCI');
                SQL.Add('WHERE  Processo IN('+QuotedStr(ProcessosFechamentoProcesso.AsString)+', '+QuotedStr(ProcessosDOCProcesso_Mestre.AsString)+')');
                SQL.add('AND    isnull((SELECT Pago_Cliente FROM ContratoCambio CC WHERE CC.Numero = CCI.Contrato), 0) = 0');
                SQL.add('UNION ALL');
                SQL.Add('SELECT Contrato,');
                SQL.Add('       Data,');
                SQL.Add('       Valor_ME,');
                SQL.Add('       (SELECT Taxa_Cambial FROM ContratoCambio CC WHERE(CC.Numero = CCI.Contrato)) AS Taxa_Cambial,');
                SQL.Add('       (Valor_ME * (SELECT Taxa_Cambial FROM ContratoCambio CC WHERE(CC.Numero = CCI.Contrato)) ) AS Valor_Real');
                SQL.Add('FROM   ContratoCambioItens CCI');
                SQL.Add('WHERE Processo IN('+QuotedStr(ProcessosFechamentoProcesso.AsString)+', '+QuotedStr(ProcessosDOCProcesso_Mestre.AsString)+')');
                SQL.Add('AND   isnull((SELECT Pago_Cliente FROM ContratoCambio CC WHERE CC.Numero = CCI.Contrato), 0) = 1');
                //SQL.SaveToFile('c:\temp\Fechamento_Contrato_Cambio.sql');
                Open;
           end;
           with tPagamentos do begin 
                SQL.Clear;
                SQL.Add('select prb.Registro, prb.Data, prb.Valor ');
                SQL.Add('from   PagarReceberBaixas prb, PagarReceber pr');
                SQL.Add('where  prb.Numero = pr.Numero');
                SQL.Add('and    prb.Tipo = ''R'' ');
                SQL.Add('and    pr.Processo = :pProcesso');
                SQL.Add('and    pr.Classificacao in(select distinct Codigo from '+CompClass+' where Fechamento_Processo = 1)');
                ParamByName('pProcesso').AsString := ProcessosFechamentoProcesso.AsString;
                //sql.SaveToFile('c:\temp\Fechamento_Pagamentos.sql');
                Open;
           end;

           Trava1.StateOn := not Dados.ProcessosFechamentoTrava_DescontoJuros.AsBoolean;
           Trava2.StateOn := not Dados.ProcessosFechamentoTrava_ComissaoValor.AsBoolean;
      End;

      Screen.Cursor := crDefault;
end;

procedure TProcesso_Fechamento.Totaliza;
Var
    mDias: Integer;
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           with tTotalFecha do begin
                 SQL.Clear;
                 SQL.Add('SELECT SUM(Valor_Fechamento) AS Total_Custo FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento) AND (Tipo = ''P'')');
                 ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
                 Open;
           end;
           cTotalDespesas.Value        := tTotalFecha.FieldByName('Total_Custo').AsCurrency;
           cDespesasCusto.Value        := cTotalDespesas.Value;
           cTotalImpostosEntrada.Value := ProcessosFechamentoII.AsCurrency + ProcessosFechamentoIPI_Entrada.AsCurrency + ProcessosFechamentoICMS_Entrada.AsCurrency + ProcessosFechamentoICMS_EntradaST.AsCurrency + Dados.ProcessosFechamentoPIS_Entrada.AsCurrency + Dados.ProcessosFechamentoCOFINS_Entrada.AsCurrency;
           // Calcula a correção das despesas.
           with tCorrecao do begin 
                SQL.Clear;
                SQL.Add('SELECT (Valor_Fechamento * POWER( 1 + :pTaxaCorrecao/100, DATEDIFF(Day, Data_BaixaVenc, Data_CorrecaoDespesa))-Valor_Fechamento) AS Valor_Correcao');
                SQL.Add('INTO #Temp');
                SQL.Add('FROM ProcessosFechamentoItens');
                SQL.Add('WHERE(Fechamento = :pFechamento) AND (Data_CorrecaoDespesa IS NOT NULL)');
                SQL.Add('SELECT SUM(Valor_Correcao) AS Valor_Correcao FROM #Temp');
                ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
                ParamByName('pTaxaCorrecao').AsFloat := ProcessosFechamentoTaxa_CorrecaoDespesas.AsFloat;
                Open;
                cCorrecaoDespesas.Value := FieldByName('Valor_Correcao').AsCurrency;
           end;
           // Calcula a correção dos contratos de cambio.
           with tCorrecao do begin 
                SQL.Clear;
                SQL.Add('SELECT ((Valor_ME * Taxa_Cambial) * POWER( 1 + :pTaxaCorrecao/100, DATEDIFF(Day, Data, :pDataCorrecao)) - (Valor_ME * Taxa_Cambial)) AS Valor');
                SQL.Add('INTO #Temp');
                SQL.Add('FROM ContratoCambioItens');
                SQL.Add('WHERE(Processo = :pProcesso)');
                SQL.Add('SELECT SUM(Valor) AS Valor_Correcao FROM #Temp');
                ParamByName('pProcesso').AsString    := ProcessosFechamentoProcesso.AsString;
                ParamByName('pTaxaCorrecao').AsFloat := ProcessosFechamentoTaxa_CorrecaoCambio.AsFloat;
                ParamByName('pDataCorrecao').AsDate  := ProcessosFechamentoData_CorrecaoCambio.AsDateTime;
                Open;
                cCorrecaoCambio.Value := FieldByName('Valor_Correcao').AsCurrency;
           end;
           // Calcula a correção dos impostos da entrada.
           cCorrecaoImpostos.Value := 0;
           If (Trim(RemoveCaracter('/', '', ProcessosFechamento.FieldByname('Data_CorrecaoImpostos').AsString)) <> '') then begin
              If (ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value <> null) and (ProcessosFechamento.FieldByname('Data_CorrecaoImpostos').Value <> null) then begin
                 mDias                   := StrtoInt(DifDias(ProcessosDOC.FieldByName('Data_RegistroDeclaracao').Value, ProcessosFechamento.FieldByname('Data_CorrecaoImpostos').Value));
                 cCorrecaoImpostos.Value := (ProcessosDOC.FieldByName('II').AsCurrency           * POWER(1 + ProcessosFechamentoTaxa_CorrecaoImpostos.AsFloat/100, mDias)) - ProcessosDOC.FieldByName('II').AsCurrency +            // II.
                                            (ProcessosDOC.FieldByName('Valor_IPI').AsCurrency    * POWER(1 + ProcessosFechamentoTaxa_CorrecaoImpostos.AsFloat/100, mDias)) - ProcessosDOC.FieldByName('Valor_IPI').AsCurrency +     // IPI.
                                            (ProcessosDOC.FieldByName('Valor_ICMS').AsCurrency   * POWER(1 + ProcessosFechamentoTaxa_CorrecaoImpostos.AsFloat/100, mDias)) - ProcessosDOC.FieldByName('Valor_ICMS').AsCurrency +    // ICMS.
                                            (ProcessosDOC.FieldByName('Valor_PIS').AsCurrency    * POWER(1 + ProcessosFechamentoTaxa_CorrecaoImpostos.AsFloat/100, mDias)) - ProcessosDOC.FieldByName('Valor_PIS').AsCurrency  +    // PIS.
                                            (ProcessosDOC.FieldByName('Valor_COFINS').AsCurrency * POWER(1 + ProcessosFechamentoTaxa_CorrecaoImpostos.AsFloat/100, mDias)) - ProcessosDOC.FieldByName('Valor_COFINS').AsCurrency;   // COFINS.
              End;
           End;

           cTotalCorrecao.Value := cCorrecaoDespesas.Value + cCorrecaoCambio.Value + cCorrecaoImpostos.Value;

           // Notas fiscais de entrada "Próprias e Terceiros".
           with tTotalEntrada do begin 
                sql.Clear;
                sql.Add('select sum(Valor_ICMS)      as Total_ICMS,');
                sql.Add('       sum(BCICMS)          as Total_BCICMS,');
                sql.Add('       sum(Valor_TotalIPI)  as Total_IPI,');
                sql.Add('       sum(Valor_PIS) as Total_PIS,');
                sql.Add('       sum(Valor_COFINS) Total_COFINS,');
                sql.Add('       sum(Valor_TotalNota) as Valor_TotalNota');
                sql.Add('into #temp');
                sql.Add('from NotasFiscais');
                sql.Add('where Saida_Entrada = 0');
                sql.Add('and Processo = :pProcesso');
                sql.Add('and Cancelada <> 1');
                sql.Add('and Nfe_Denegada <> 1');
                sql.Add('and (select Fechamento_Processo from TipoNota where Codigo = Tipo_Nota) = 1');
                if mComplementar = true then begin
                   sql.Add('and Complementar = 1');
                end;
                sql.Add('group by tipo_Nota');
                sql.Add('union all');
                sql.Add('select sum(Valor_ICMSOper) as Total_ICMS,');
                sql.Add('       sum(Valor_BCICMSOper) as Total_BCICMS,');
                sql.Add('       sum(Valor_TotalIPI)  as Total_IPI,');
                sql.Add('       case when (select Apuracao_PISCOFINS from ReferenciasFiscais where Codigo = Referencia_Fiscal) = 1 then sum(Valor_PIS)    else 0 end as Total_PIS,');
                sql.Add('       case when (select Apuracao_PISCOFINS from ReferenciasFiscais where Codigo = Referencia_Fiscal) = 1 then sum(Valor_COFINS) else 0 end as Total_COFINS,');
                sql.Add('       sum(Valor_TotalNota) as Valor_TotalNota');
                sql.Add('from NotasTerceiros');
                sql.Add('where Processo = :pProcesso');
                sql.Add('and (select Fechamento_Processo from ReferenciasFiscais where Codigo = Referencia_Fiscal) = 1');
                sql.Add('group by Referencia_Fiscal');
                sql.Add('select sum(Total_ICMS)      as Total_ICMS,');
                sql.Add('       sum(Total_BCICMS)    as Total_BCICMS,');
                sql.Add('       sum(Total_IPI)       as Total_IPI,');
                sql.Add('       sum(Total_PIS)       as Total_PIS,');
                sql.Add('       sum(Total_COFINS)    as Total_COFINS,');
                sql.Add('       sum(Valor_TotalNota) as Valor_TotalNota');
                sql.Add('from #temp');
                sql.Add('drop table #TEMP');
                paramByName('pProcesso').AsString := cProcesso.Text;
                //sql.SaveToFile('c:\temp\Fechamento_Entradas.SQL');
                open;
           end;
           // Notas fiscais de saída "Próprias".
           with tTotalSaida do begin 
                sql.clear;
                sql.add('select sum(Valor_ICMS)      as Total_ICMS,');
                sql.add('       sum(BCICMS)          as Total_BCICMS,');
                sql.add('       sum(Valor_TotalIPI)  as Total_IPI,');
                sql.add('       case when (select Apuracao_PISCOFINS from TipoNota where Codigo = Tipo_Nota) = 1 then sum(Valor_PIS)    else 0 end as Total_PIS,');
                sql.add('       case when (select Apuracao_PISCOFINS from TipoNota where Codigo = Tipo_Nota) = 1 then sum(Valor_COFINS) else 0 end as Total_COFINS,');
                sql.add('       sum(Valor_TotalNota) AS Valor_TotalNota');
                sql.add('into #temp');
                sql.add('from   NotasFiscais');
                sql.add('where Saida_Entrada = 1');
                sql.Add('and Processo = :pProcesso');
                sql.Add('and Cancelada <> 1');
                sql.Add('and Nfe_Denegada <> 1');
                sql.add('and (select Fechamento_Processo from TipoNota where Codigo = Tipo_Nota) = 1');
                if mcomplementar = true then begin
                   sqL.Add('and Complementar = 1');
                end;
                sql.add('group by Tipo_Nota');
                sql.add('select sum(Total_ICMS)      as Total_ICMS,');
                sql.add('       sum(Total_BCICMS)    as Total_BCICMS,');
                sql.add('       sum(Total_IPI)       as Total_IPI,');
                sql.add('       sum(Total_PIS)       as Total_PIS,');
                sql.add('       sum(Total_COFINS)    as Total_COFINS,');
                sql.add('       sum(Valor_TotalNota) as Valor_TotalNota');
                sql.add('from #temp');
                sql.add('drop table #temp');
                paramByName('pProcesso').AsString := cProcesso.Text;
                //sql.SaveToFile('c:\temp\Fechamento_Saidas.SQL');
                open;
           end;

           cTotalBCICMS.Value := tTotalSaida.FieldByName('Total_BCICMS').AsCurrency;
           If (ProcessosFechamento.State = dsInsert) then begin
              ProcessosFechamentoTotal_Notas.Value := tTotalSaida.FieldByName('Valor_TotalNota').AsCurrency;
           End;

           If (ProcessosFechamento.State = dsEdit) or (ProcessosFechamento.State = dsInsert) then begin
              If ProcessosFechamento.FieldByName('Margem_Lucro').AsFloat         > 0 then ProcessosFechamentoMargem_LucroValor.Value       := Percentual(tTotalSaida.FieldByName('Total_BCICMS').AsCurrency, ProcessosFechamento.FieldByName('Margem_Lucro').AsFloat);
              If ProcessosFechamento.FieldByName('Desconto_Operacional').AsFloat > 0 then ProcessosFechamentoDesconto_ComercialValor.Value := Percentual(tTotalSaida.FieldByName('Total_BCICMS').AsCurrency, ProcessosFechamento.FieldByName('Desconto_Operacional').AsFloat) * -1;
              If ProcessosFechamento.FieldByName('Desconto_Adicional').AsFloat   > 0 then ProcessosFechamentoDesconto_AdicionalValor.Value := Percentual(tTotalSaida.FieldByName('Total_BCICMS').AsCurrency, ProcessosFechamento.FieldByName('Desconto_Adicional').AsFloat) *-1;
           End;
           cTotalFinanceiro.Value  := ProcessosFechamentoMargem_LucroValor.Value + ProcessosFechamentoDesconto_ComercialValor.Value + ProcessosFechamentoDesconto_AdicionalValor.Value;

           // Totaliza o ICMS Substitutivo.
           tICMSST.SQL.Clear;
           If mComplementar = false then begin
              tICMSST.SQL.Add('SELECT (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE(Saida_Entrada = 0) AND (Processo = :pProcesso) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1)) AS ICMSST_Ent,');
              tICMSST.SQL.Add('       (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE(Saida_Entrada = 1) AND (Processo = :pProcesso) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1)) AS ICMSST_Sai');
           end else begin
              tICMSST.SQL.Add('SELECT (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE(Saida_Entrada = 0) AND (Complementar = 1) AND (Processo = :pProcesso) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1)) AS ICMSST_Ent,');
              tICMSST.SQL.Add('       (SELECT SUM(ValorICMS_Substitutivo) FROM NotasFiscais WHERE(Saida_Entrada = 1) AND (Complementar = 1) AND (Processo = :pProcesso) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1)) AS ICMSST_Sai');
           End;
           tICMSST.ParamByName('pProcesso').AsString := Dados.ProcessosFechamentoProcesso.AsString;
           //tICMSST.SQL.SaveToFile('c:\temp\tICMSST.sql');
           tICMSST.Open;

           if (ProcessosFechamento.State = dsInsert) or (ProcessosFechamento.State = dsEdit) then begin
              //ProcessosFechamentoICMS_EntradaST.Value := 0;
              //ProcessosFechamentoICMS_EntradaST.Value := tICMSST.FieldByName('ICMSST_Ent').AsCurrency;
              ProcessosFechamentoICMS_EntradaST.Value := iif(ProcessosFechamentoICMS_EntradaST.ascurrency <= 0, tICMSST.FieldByName('ICMSST_Ent').AsCurrency, ProcessosFechamentoICMS_EntradaST.AsCurrency);
              ProcessosFechamentoICMS_SaidaST.Value   := tICMSST.FieldByName('ICMSST_Sai').AsCurrency;
              ProcessosFechamentoICMS_Saida.Value     := tTotalSaida.FieldByName('Total_ICMS').AsCurrency;
              ProcessosFechamentoIPI_Saida.Value      := tTotalSaida.FieldByName('Total_IPI').AsCurrency;

              if mComplementar = false then begin
                 if ProcessosFechamentoICMS_Entrada.Value <= 0 then begin
                    ProcessosFechamentoICMS_Entrada.Value   := tTotalEntrada.FieldByName('Total_ICMS').AsCurrency;
                 end;
                 
                 ProcessosFechamentoIPI_Entrada.Value    := tTotalEntrada.FieldByName('Total_IPI').AsCurrency;
                 ProcessosFechamentoPIS_Entrada.Value    := tTotalEntrada.FieldByName('Total_PIS').AsCurrency;
                 ProcessosFechamentoCOFINS_Entrada.Value := tTotalEntrada.FieldByName('Total_COFINS').AsCurrency;
              end else begin
                 ProcessosFechamentoIPI_Entrada.Value    := 0;
                 ProcessosFechamentoPIS_Entrada.Value    := 0;
                 ProcessosFechamentoCOFINS_Entrada.Value := 0;
              end;

              ProcessosDoc.Locate('Processo', ProcessosFechamento.FieldByName('Processo').asstring, [loCaseInsensitive]);
              if ProcessosDoc.FieldByName('Modalidade_Importacao').asinteger <> 2 then begin
                 ProcessosFechamentoPIS_Saida.Value    := tTotalSaida.FieldByName('Total_PIS').AsCurrency;
                 ProcessosFechamentoCOFINS_Saida.Value := tTotalSaida.FieldByName('Total_COFINS').AsCurrency;
              end else begin
                 ProcessosFechamentoPIS_Saida.Value    := ProcessosFechamentoPIS_Entrada.ascurrency;
                 ProcessosFechamentoCOFINS_Saida.Value := ProcessosFechamentoCOFINS_Entrada.ascurrency;
              end;
           end;

           cICMSSTDif.Value          := ProcessosFechamentoICMS_SaidaST.AsCurrency - ProcessosFechamentoICMS_EntradaST.AsCurrency;
           cTotalImpostosSaida.Value := tTotalSaida.FieldByName('Total_ICMS').AsCurrency + tTotalSaida.FieldByName('Total_IPI').AsCurrency + ProcessosFechamentoPIS_Saida.AsCurrency + ProcessosFechamentoCOFINS_Saida.AsCurrency + tICMSST.FieldByName('ICMSST_Sai').AsCurrency;
           cDiferPISReal.Value       := ProcessosFechamentoPIS_Saida.Value    - ProcessosFechamentoPIS_Entrada.Value;
           cDiferCOFINSReal.Value    := ProcessosFechamentoCOFINS_Saida.Value - ProcessosFechamentoCOFINS_Entrada.Value;
           cDiferICMSReal.Value      := ProcessosFechamentoICMS_Saida.Value   - ProcessosFechamentoICMS_Entrada.Value;
           cDiferIPIReal.Value       := ProcessosFechamentoIPI_Saida.Value    - ProcessosFechamentoIPI_Entrada.Value;
           cTotalDiferReal.Value     := cDiferICMSReal.Value + cDiferIPIReal.Value + cDiferPISReal.Value + cDiferCOFINSReal.Value + cICMSSTDif.Value;

           If (ProcessosFechamento.State = dsEdit) or (ProcessosFechamento.State = dsInsert) then begin
              ProcessosFechamentoICMS_Pagar.Value           := Percentual(ProcessosFechamento.FieldByName('ICMS_Saida').AsCurrency-ProcessosFechamento.FieldByName('ICMS_Entrada').AsCurrency, ProcessosFechamento.FieldByName('ICMS_PagarPercentual').AsFloat);
              ProcessosFechamentoDespachante_Despesas.Value := cDespesasCusto.Value;
           End;

           // Rentabilidade.
           If (ProcessosFechamento.State = dsInsert) then begin
              ProcessosFechamentoICMS_Saida.Value   := tTotalSaida.FieldByName('Total_ICMS').AsCurrency;
              ProcessosFechamentoICMS_FDE.Value     := Percentual(tTotalSaida.FieldByName('Valor_TotalNota').AsCurrency, ProcessosFechamentoICMS_FDEPercentual.AsFloat);
              ProcessosFechamentoPIS_Saida.Value    := tTotalSaida.FieldByName('Total_PIS').AsCurrency;
              ProcessosFechamentoCOFINS_Saida.Value := tTotalSaida.FieldByName('Total_COFINS').AsCurrency;
           End;
           cRentTotalICMS.Value   := ProcessosFechamentoICMS_Saida.Value - (ProcessosFechamentoICMS_Entrada.Value + ProcessosFechamentoICMS_Pagar.Value + ProcessosFechamentoICMS_FDE.Value + ProcessosFechamentoICMS_GLME.Value);
           cRentICMS.Value        := cRentTotalICMS.Value;
           cRentMargemLucro.Value := ProcessosFechamentoMargem_LucroValor.Value;
           cRentDescAdic.Value    := ProcessosFechamentoDesconto_AdicionalValor.Value;
           cRentDescCom.Value     := ProcessosFechamentoDesconto_ComercialValor.Value;

           If (ProcessosFechamento.State = dsEdit) or (ProcessosFechamento.State = dsInsert) then begin
              ProcessosFechamentoAssessoria_Total.Value := ProcessosFechamentoAssessoria_Valor.AsCurrency - Percentual(ProcessosFechamentoAssessoria_Valor.AsCurrency, ProcessosFechamentoAssessoria_Percentual.AsFloat);
           End;

           cTotalRent.Value := cRentICMS.Value + cRentMargemLucro.Value + cRentDescAdic.Value + cRentDescCom.Value + cComissaoValor.Value + ProcessosFechamentoAssessoria_Total.Value;
           If (ProcessosFechamento.State = dsEdit) or (ProcessosFechamento.State = dsInsert) then begin
              ProcessosFechamentoCSLL_Valor.Value         := Percentual(cTotalRent.Value, ProcessosFechamentoCSLL_Percentual.AsFloat);
              ProcessosFechamentoIRPJ_Valor.Value         := Percentual(cTotalRent.Value, ProcessosFechamentoIRPJ_Percentual.AsFloat);
              ProcessosFechamentoComissao_PartValor.Value := cComissaoValor.Value;
           End;

           cTotalRentImp.Value := ProcessosFechamentoCSLL_Valor.Value + ProcessosFechamentoIRPJ_Valor.Value;

           If (ProcessosFechamento.State = dsEdit) or (ProcessosFechamento.State = dsInsert) then begin
              ProcessosFechamentoSaldo.Value := (ProcessosFechamentoTotal_CambioReal.Value + 
                                                 cDespesasCusto.Value +
                                                 ProcessosFechamentoTotal_Impostos.AsCurrency + 
                                                 cTotalFinanceiro.Value + 
                                                 ProcessosFechamentoTransferencia_Efetuada.ascurrency + 
                                                 ProcessosFechamentoDevolucoes.ascurrency) - 
                                                 ProcessosFechamentoPagamento_Cliente.AsCurrency;
              ProcessosFechamentoRentabilidade.Value := cTotalRent.Value-cTotalRentImp.Value;
           End;

           If ProcessosFechamentoSaldo.Value > 0 then begin
              lSaldo.Caption := ' SALDO A FAVOR DA '+Copy(EmpresasRazao_Social.AsString,1, Pos(' ',EmpresasRazao_Social.AsString))+' R$' + PadR(FormatFloat(',##0.00', ProcessosFechamentoSaldo.AsCurrency), 18);
           End else begin
              lSaldo.Caption := ' SALDO A FAVOR DO CLIENTE R$' + PadR(FormatFloat(',##0.00', ProcessosFechamentoSaldo.AsCurrency), 14);
           End;
           lRentabilidade.Caption := ' RENTABILIDADE DO PROCESSO R$' + PadR(FormatFloat(',##0.00', ProcessosFechamentoRentabilidade.AsCurrency), 14);

           If (ProcessosFechamento.State = dsEdit) or (ProcessosFechamento.State = dsInsert) then begin
              If ProcessosFechamentoTrava_DescontoJuros.AsBoolean = false then
                 ProcessosFechamentoValor_DescontoJuros.Value := (ProcessosFechamentoTotal_CambioReal.AsCurrency +
                                                                  cDespesasCusto.Value +
                                                                  ProcessosFechamentoTotal_Impostos.AsCurrency + 
                                                                  cTotalFinanceiro.Value) - 
                                                                  ProcessosFechamentoTotal_Notas.AsCurrency;
           End;
      End;
      
      Screen.Cursor := crDefault;
end;

procedure TProcesso_Fechamento.RecalculaTransfDev;
begin
      // Transferências / Devoluções do processo.
      with Dados, tTransfer do begin
           // Totalizando as transferencias do processo.
           sql.Clear;
           sql.Add('select Total_Pgto = sum(iif(prb.Tipo = ''P'', prb.Valor, 0))');
           sql.Add('      ,Total_Rec  = sum(iif(prb.Tipo = ''R'', prb.Valor, 0))');
           sql.Add('from   PagarReceberBaixas prb, PagarReceber pr');
           sql.Add('where prb.Numero = pr.Numero');
           sql.Add('and   (select Transferencia from '+CompClass+' where Codigo = pr.Classificacao) = 1');
           sql.Add('and   pr.Classificacao in((select distinct Codigo from '+CompClass+' where Fechamento_Processo = 1))');
           sql.Add('and   pr.Processo = :pProcesso');
           ParamByName('pProcesso').AsString := Dados.ProcessosFechamentoProcesso.AsString;
           Open;
           ProcessosFechamentoTransferencia_Efetuada.value := FieldByName('Total_Pgto').AsCurrency;
           ProcessosFechamentoTransferencia_Recebida.value := FieldByName('Total_Rec').AsCurrency;
      
           // Totalizando as devoluções efetuadas do processo.
           sql.Clear;
           sql.Add('select Total_Dev = sum(prb.Valor)');
           sql.Add('from   PagarReceberBaixas prb, PagarReceber pr');
           sql.Add('where prb.Numero = pr.Numero');
           sql.add('and   (select Devolucao from '+CompClass+' where Codigo = pr.Classificacao) = 1');
           sql.Add('and   pr.Classificacao in((select distinct Codigo from '+CompClass+' where Fechamento_Processo = 1))');
           sql.Add('and   pr.Processo = :pProcesso');
           ParamByName('pProcesso').AsString := Dados.ProcessosFechamentoProcesso.AsString;
           Open;
           ProcessosFechamentoDevolucoes.value := FieldByName('Total_Dev').AsCurrency;
      end;
end;

procedure TProcesso_Fechamento.cMargemLucroChange(Sender: TObject);
begin
      if (Dados.ProcessosFechamento.State = dsEdit) or (Dados.ProcessosFechamento.State = dsInsert) then Totaliza;
end;

procedure TProcesso_Fechamento.RecalculaCambio;
Var
    mTCambioFilho
   ,mTCambioMestre
   ,mTCambioFilhoReal
   ,mTCambioMestreReal: Real;
begin
      With Dados do begin
           with tTotalCambio do begin
                SQL.Clear;
                SQL.Add('SELECT Valor_ME AS Total_ME,');
                SQL.Add('       Valor_ME * (SELECT Taxa_Cambial FROM ContratoCambio CC WHERE CC.Numero = CCI.Contrato) AS Total_Real');
                SQL.Add('INTO   #TEMP');
                SQL.Add('FROM   ContratoCambioItens CCI');
                SQL.Add('WHERE  Processo = :pFilho');
                SQL.add('AND    isnull((SELECT Pago_Cliente FROM ContratoCambio CC WHERE CC.Numero = CCI.Contrato), 0) = 1');
                SQL.Add('SELECT ISNULL(SUM(Total_ME)  , 0) AS Total_ME,');
                SQL.Add('       ISNULL(SUM(Total_Real), 0) AS Total_Real');
                SQL.Add('FROM #TEMP');
                SQL.Add('DROP TABLE #TEMP');
                ParamByName('pFilho').AsString := ProcessosFechamentoProcesso.AsString;
                Open;

                lCambioCliME.Value   := FieldByName('Total_ME').AsCurrency;
                lCambioCliReal.Value := FieldByName('Total_Real').AsCurrency;
                
                SQL.Clear;
                SQL.Add('SELECT Valor_ME AS Total_ME,');
                SQL.Add('       Valor_ME * (SELECT Taxa_Cambial FROM ContratoCambio CC WHERE CC.Numero = CCI.Contrato) AS Total_Real');
                SQL.Add('INTO   #TEMP');
                SQL.Add('FROM   ContratoCambioItens CCI');
                SQL.Add('WHERE  Processo = :pFilho');
                SQL.add('AND    isnull((SELECT Pago_Cliente FROM ContratoCambio CC WHERE CC.Numero = CCI.Contrato), 0) = 0');
                SQL.Add('SELECT ISNULL(SUM(Total_ME)  , 0) AS Total_ME,');
                SQL.Add('       ISNULL(SUM(Total_Real), 0) AS Total_Real');
                SQL.Add('FROM #TEMP');
                SQL.Add('DROP TABLE #TEMP');
                ParamByName('pFilho').AsString := ProcessosFechamentoProcesso.AsString;
                Open;

                mTCambioFilho     := FieldByName('Total_ME').AsCurrency;
                mTCambioFilhoReal := FieldByName('Total_Real').AsCurrency;
           
                SQL.Clear;
                SQL.Add('SELECT SUM(Valor_ME) AS Total_ME,');
                SQL.Add('       SUM(Valor_ME * Taxa_Cambial) AS Total_Real');
                SQL.Add('FROM   ContratoCambioItens cci');
                SQL.Add('WHERE  Processo = :pMestre');
                SQL.add('AND    isnull((SELECT Pago_Cliente FROM ContratoCambio CC WHERE CC.Numero = CCI.Contrato), 0) = 0');
                ParamByName('pMestre').AsString := ProcessosDOCProcesso_Mestre.AsString;
                Open;
           end;

           mTCambioMestre     := 0;
           mTCambioMestreReal := 0;

           If tTotalCambio.RecordCount > 0 then begin
              mTCambioMestre     := tTotalCambio.FieldByName('Total_ME').AsFloat;
              mTCambioMestreReal := tTotalCambio.FieldByName('Total_Real').AsFloat;
           End;

           with tTotalCambio do begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT ISNULL(SUM(Valor_ME), 0) AS Total_ME,');
                SQL.Add('       ISNULL(SUM(Valor_ME * Taxa_Cambial), 0) AS Total_Real');
                SQL.Add('FROM   ContratoCambioItens cci');
                SQL.Add('WHERE  Processo = :pMestre');
                SQL.add('AND    isnull((SELECT Pago_Cliente FROM ContratoCambio CC WHERE CC.Numero = CCI.Contrato), 0) = 0');
                ParamByName('pMestre').AsString := ProcessosDOCProcesso_Mestre.AsString;
                Open;
           end;

           If (mTCambioMestre > 0) and (mTCambioFilho > 0) then begin
              ProcessosFechamentoTotal_CambioME.Value   := (mTCambioFilho     / mTCambioMestre    ) * tTotalCambio.FieldByName('Total_ME').AsCurrency;
              ProcessosFechamentoTotal_CambioReal.Value := (mTCambioFilhoReal / mTCambioMestreReal) * tTotalCambio.FieldByName('Total_Real').AsCurrency;
           End;
           If (mTCambioMestre = 0) then begin
              ProcessosFechamentoTotal_CambioME.Value   := mTCambioFilho;
              ProcessosFechamentoTotal_CambioReal.Value := mTCambioFilhoReal;
           End;
           If (mTCambioMestre > 0) and (mTCambioFilho <= 0) then begin
              ProcessosFechamentoTotal_CambioME.Value   := mTCambioMestre;
              ProcessosFechamentoTotal_CambioReal.Value := mTCambioMestreReal;
           End;
      End;
end;

procedure TProcesso_Fechamento.RecalculaPagamentosCliente;
begin
      With Dados do begin
           tTotalBaixas.SQL.Clear;
           tTotalBaixas.SQL.Add('SELECT SUM(Valor) AS Total_Pgto');
           tTotalBaixas.SQL.Add('FROM   PagarReceberBaixas prb, PagarReceber pr');
           tTotalBaixas.SQL.Add('WHERE(prb.Numero = pr.Numero)');
           tTotalBaixas.SQL.Add('AND (prb.Tipo = ''R'')');
           tTotalBaixas.SQL.Add('AND (pr.Classificacao IN(SELECT DISTINCT Codigo FROM '+CompClass+' WHERE(Fechamento_Processo = 1) ))');
           tTotalBaixas.SQL.Add('AND (pr.Processo = :pProcesso)');
           tTotalBaixas.ParamByName('pProcesso').AsString := ProcessosFechamentoProcesso.AsString;
           tTotalBaixas.Open;
           ProcessosFechamentoPagamento_Cliente.AsCurrency := tTotalBaixas.FieldByName('Total_Pgto').AsCurrency;
      End;
end;

procedure TProcesso_Fechamento.RecalculaNotas;
begin
      With Dados do begin
           tTotalSaida.SQL.Clear;
           tTotalSaida.SQL.Add('SELECT SUM(Valor_ICMS)      AS Total_ICMS,');
           tTotalSaida.SQL.Add('       SUM(BCICMS)          AS Total_BCICMS,');
           tTotalSaida.SQL.Add('       SUM(Valor_TotalIPI)  AS Total_IPI,');
           tTotalSaida.SQL.Add('       CASE WHEN (SELECT Apuracao_PISCOFINS FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN SUM(Valor_PIS)    ELSE 0 END AS Total_PIS,');
           tTotalSaida.SQL.Add('       CASE WHEN (SELECT Apuracao_PISCOFINS FROM TipoNota WHERE(Codigo = Tipo_Nota)) = 1 THEN SUM(Valor_COFINS) ELSE 0 END AS Total_COFINS,');
           tTotalSaida.SQL.Add('       SUM(Valor_TotalNota) AS Valor_TotalNota');
           tTotalSaida.SQL.Add('INTO #TEMP');
           tTotalSaida.SQL.Add('FROM   NotasFiscais');
           tTotalSaida.SQL.Add('WHERE(Saida_Entrada = 1) AND (Processo = :pProcesso) AND (Cancelada <> 1) AND (Nfe_Denegada <> 1)');
           tTotalSaida.SQL.Add('       AND (SELECT Fechamento_Processo FROM TipoNota WHERE Codigo = Tipo_Nota) = 1');
           If mComplementar = true then begin
              tTotalSaida.SQL.Add('       AND (Complementar = 1)');
           End;
           tTotalSaida.SQL.Add('GROUP BY Tipo_Nota');
           tTotalSaida.SQL.Add('SELECT SUM(Total_ICMS)      AS Total_ICMS,');
           tTotalSaida.SQL.Add('       SUM(Total_BCICMS)    AS Total_BCICMS,');
           tTotalSaida.SQL.Add('       SUM(Total_IPI)       AS Total_IPI,');
           tTotalSaida.SQL.Add('       SUM(Total_PIS)       AS Total_PIS,');
           tTotalSaida.SQL.Add('       SUM(Total_COFINS)    AS Total_COFINS,');
           tTotalSaida.SQL.Add('       SUM(Valor_TotalNota) AS Valor_TotalNota');
           tTotalSaida.SQL.Add('FROM #TEMP');
           tTotalSaida.SQL.Add('DROP TABLE #TEMP');
           tTotalSaida.ParamByName('pProcesso').AsString := cProcesso.Text;
           //tTotalSaida.SQL.SaveToFile('c:\temp\Fechamento_Saidas.SQL');
           tTotalSaida.Open;

           ProcessosFechamentoTotal_Notas.Value := tTotalSaida.FieldByName('Valor_TotalNota').AsCurrency;
           cTotalBCICMS.Value := tTotalSaida.FieldByName('Total_BCICMS').AsCurrency;

           ProcessosFechamentoICMS_Saida.Value   := tTotalSaida.FieldByName('Total_ICMS').AsCurrency;
           ProcessosFechamentoICMS_FDE.Value     := Percentual(tTotalSaida.FieldByName('Valor_TotalNota').AsCurrency, ProcessosFechamentoICMS_FDEPercentual.AsFloat);
           ProcessosDoc.Locate('Processo', ProcessosFechamento.FieldByName('Processo').asstring, [loCaseInsensitive]);
           if ProcessosDoc.FieldByName('Modalidade_Importacao').asinteger <> 2 then begin
              ProcessosFechamentoPIS_Saida.Value    := tTotalSaida.FieldByName('Total_PIS').AsCurrency;
              ProcessosFechamentoCOFINS_Saida.Value := tTotalSaida.FieldByName('Total_COFINS').AsCurrency;
           end else begin
              ProcessosFechamentoPIS_Saida.Value    := ProcessosFechamentoPIS_Entrada.ascurrency;
              ProcessosFechamentoCOFINS_Saida.Value := ProcessosFechamentoCOFINS_Entrada.ascurrency;
           end;
      End;
end;

procedure TProcesso_Fechamento.RecalculaImpostos;
begin
      With Dados do begin
           cDiferPISReal.Value         := ProcessosFechamentoPIS_Saida.Value    - ProcessosFechamentoPIS_Entrada.Value;
           cDiferCOFINSReal.Value      := ProcessosFechamentoCOFINS_Saida.Value - ProcessosFechamentoCOFINS_Entrada.Value;
           cDiferICMSReal.Value        := ProcessosFechamentoICMS_Saida.Value   - ProcessosFechamentoICMS_Entrada.Value;
           cDiferIPIReal.Value         := ProcessosFechamentoIPI_Saida.Value    - ProcessosFechamentoIPI_Entrada.Value;
           cICMSSTDif.Value            := ProcessosFechamentoICMS_SaidaST.Value - ProcessosFechamentoICMS_EntradaST.Value;
           cTotalDiferReal.Value       := cDiferICMSReal.Value + cDiferIPIReal.Value + cDiferPISReal.Value + cDiferCOFINSReal.Value + cICMSSTDif.Value;
           cTotalImpostosSaida.Value   := ProcessosFechamentoICMS_Saida.Value  + ProcessosFechamentoIPI_Saida.Value    + ProcessosFechamentoPIS_Saida.Value + ProcessosFechamentoCOFINS_Saida.Value + ProcessosFechamentoICMS_SaidaST.AsCurrency;
           cTotalImpostosEntrada.Value := ProcessosFechamentoII.Value          + ProcessosFechamentoICMS_Entrada.Value + ProcessosFechamentoICMS_EntradaST.Value +
                                          ProcessosFechamentoIPI_Entrada.Value + ProcessosFechamentoPIS_Entrada.Value  + ProcessosFechamentoCOFINS_Entrada.Value;
           ProcessosFechamentoTotal_Impostos.Value := cTotalDiferReal.Value + cTotalImpostosEntrada.Value;
      End;
end;

procedure TProcesso_Fechamento.bCalculoCambioClick(Sender: TObject);
begin
      RecalculaCambio;
end;

procedure TProcesso_Fechamento.bCalculoClienteClick(Sender: TObject);
begin
      RecalculaPagamentosCliente;
end;

procedure TProcesso_Fechamento.bTotalNotasClick(Sender: TObject);
begin
      RecalculaNotas;
end;

procedure TProcesso_Fechamento.bTodosTotaisClick(Sender: TObject);
begin
      RecalculaCambio;
      RecalculaPagamentosCliente;
      RecalculaNotas;
      RecalculaImpostos;
      RecalculaTransfDev;
end;

procedure TProcesso_Fechamento.bTotalImpostosClick(Sender: TObject);
begin
      RecalculaImpostos;
end;

procedure TProcesso_Fechamento.cCodigoChange(Sender: TObject);
begin
      AbrirTabelas;
      Totaliza;
end;

procedure TProcesso_Fechamento.CopiardescriodaClassificao1Click(Sender: TObject);
begin
      Dados.ProcessosFechamentoItens.Edit;
      Dados.ProcessosFechamentoItens.FieldByName('Observacao').AsString := Dados.ProcessosFechamentoItens.FieldByName('Descricao').AsString;
end;

procedure TProcesso_Fechamento.cProcessoExit(Sender: TObject);
begin
      AbrirTabelas;
      Totaliza;
      If Dados.ProcessosFechamento.State = dsInsert then RecalculaCambio;

      If (DataLimpa(cData.EditText)) and (cProcesso.Text <> '')then begin
         tData.SQL.Clear;
         tData.SQl.Add('SELECT MAX(Data_Emissao) AS Data FROM NotasFiscais WHERE Saida_Entrada = 1 AND Cancelada <> 1 AND (Nfe_Denegada <> 1) AND Processo = :pProcesso');
         tData.ParamByName('pProcesso').AsString := Dados.ProcessosFechamentoProcesso.Value;
         tData.Open;

         Dados.ProcessosFechamentoData.Value := tData.FieldByName('Data').Value;
      End;
end;

procedure TProcesso_Fechamento.GradeDespesasEditChange(Sender: TObject);
begin
      With Dados do begin
           tCorrecao.SQL.Clear;
           tCorrecao.SQL.Add('SELECT COUNT(*) AS Correcao FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento) AND (Data_CorrecaoDespesa IS NOT NULL)');
           tCorrecao.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
           tCorrecao.Open;

           If tCorrecao.FieldByName('Correcao').AsInteger > 0 then begin
              If ProcessosFechamento.FieldByName('Taxa_CorrecaoDespesas').AsFloat = 0 then begin
                 If (ProcessosFechamento.State = dsInsert) or (ProcessosFechamento.State = dsEdit) then
                    ProcessosFechamento.FieldByName('Taxa_CorrecaoDespesas').Value := Configuracao.FieldByName('Processo_FechamentoCorrecao').AsFloat;
              End;
           End;
      End;
end;

procedure TProcesso_Fechamento.cTotalCorrecaoChange(Sender: TObject);
begin
      // Cria o lançamento de correção nos itens "Despesas".
      With Dados do begin
           If (ProcessosFechamento.State = dsInsert) or (ProcessosFechamento.State = dsEdit) then  begin
              ProcessosFechamentoItens.SQL.Clear;
              ProcessosFechamentoItens.SQL.Add('DELETE FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento) AND (Classificacao = :pClassificacao)');
              ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger   := ProcessosFechamentoCodigo.AsInteger;
              ProcessosFechamentoItens.ParamByName('pClassificacao').AsString := Dados.ConfiguracaoProcesso_FechamentoClassCorrecao.AsString;
              ProcessosFechamentoItens.Execute;
              ProcessosFechamentoItens.SQL.Clear;
              ProcessosFechamentoItens.SQL.Add('SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = :pFechamento)');
              ProcessosFechamentoItens.ParamByName('pFechamento').AsInteger := ProcessosFechamentoCodigo.AsInteger;
              ProcessosFechamentoItens.Open;

              If cTotalCorrecao.Value > 0 then begin
                 ClassificacaoFinanceira.SQL.Clear;
                 ClassificacaoFinanceira.SQL.Add('SELECT * FROM '+CompClass+' WHERE(Codigo = :pCodigo)');
                 ClassificacaoFinanceira.ParamByName('pCodigo').AsString := ConfiguracaoProcesso_FechamentoClassCorrecao.AsString;
                 ClassificacaoFinanceira.Open;

                 tRegistro.Open;
                 ProcessosFechamentoItens.Append;
                                          ProcessosFechamentoItensRegistro.Value         := tRegistroRegistro.AsInteger + 1;
                                          ProcessosFechamentoItensFechamento.Value       := ProcessosFechamentoCodigo.AsInteger;
                                          ProcessosFechamentoItensClassificacao.Value    := ConfiguracaoProcesso_FechamentoClassCorrecao.AsString;
                                          ProcessosFechamentoItensDescricao.Value        := ClassificacaoFinanceiraDescricao.Value;
                                          ProcessosFechamentoItensValor_Fechamento.Value := cTotalCorrecao.Value;
                                          ProcessosFechamentoItensCusto.Value            := false;
                                          ProcessosFechamentoItensTipo.Value             := ClassificacaoFinanceiraTipo.Value;
                                          ProcessosFechamentoItensBaixa.Value            := ' ';
                                          ProcessosFechamentoItensData_BaixaVenc.Value   := Date;
                                          ProcessosFechamentoItensObservacao.Value       := 'Lançamento de Atualização Financeira.';
                 ProcessosFechamentoItens.Post;
                 tRegistro.Close;

                 ClassificacaoFinanceira.SQL.Clear;
                 ClassificacaoFinanceira.SQL.Add('SELECT * FROM '+CompClass+' WHERE(Titulo <> 1) AND (Desativada <> 1) AND (Tipo = ''R'')');
                 ClassificacaoFinanceira.Open;
              End;
           End;
      End;
end;

procedure TProcesso_Fechamento.cTaxaDespesasChange(Sender: TObject);
begin
      Totaliza;
end;

procedure TProcesso_Fechamento.cTaxaCambioChange(Sender: TObject);
begin
      Totaliza;
end;

procedure TProcesso_Fechamento.DBEdit30Change(Sender: TObject);
begin
      Totaliza;
end;

procedure TProcesso_Fechamento.bPesquisarClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa de processos', 'Número/Processo',mPesquisa);
      With Dados do begin
           If ProcessosFechamento.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
              If ProcessosFechamento.Locate('Processo', mPesquisa, [loCaseInsensitive]) = False then begin
                 ShowMessage('Nenhum fechamento encontrado com o "CÓDIGO ou PROCESSO informados!');
              End;
           End;
      End;
end;

procedure TProcesso_Fechamento.DBDateEdit3Exit(Sender: TObject);
begin
      With Dados do begin
           If Trim(RemoveCaracter('/', '', ProcessosFechamento.FieldByName('Data_CorrecaoImpostos').AsString)) <> '' then begin
              If ProcessosFechamento.FieldByName('Taxa_CorrecaoImpostos').AsFloat = 0 then begin
                 If (ProcessosFechamento.State = dsInsert) or (ProcessosFechamento.State = dsEdit) then
                    ProcessosFechamento.FieldByName('Taxa_CorrecaoImpostos').Value := Configuracao.FieldByName('Processo_FechamentoCorrecao').AsFloat;
              End;
           End;
      End;
      Totaliza;
end;

procedure TProcesso_Fechamento.cDataCambioExit(Sender: TObject);
begin
      With Dados do begin
           If Trim(RemoveCaracter('/', '', ProcessosFechamento.FieldByName('Data_CorrecaoCambio').AsString)) <> '' then begin
              If ProcessosFechamento.FieldByName('Taxa_CorrecaoCambio').AsFloat = 0 then begin
                 If (ProcessosFechamento.State = dsInsert) or (ProcessosFechamento.State = dsEdit) then
                    ProcessosFechamento.FieldByName('Taxa_CorrecaoCambio').Value := Configuracao.FieldByName('Processo_FechamentoCorrecao').AsFloat;
              End;
           End;
      End;
      Totaliza;
end;

procedure TProcesso_Fechamento.NavegaItensClick(Sender: TObject;Button: TNavigateBtn);
begin
      If (Button = nbDelete) or (Button = nbPost) then Totaliza;
end;

procedure TProcesso_Fechamento.GradeDespesasExit(Sender: TObject);
begin
      With Dados do begin
           If (ProcessosFechamentoItens.State = dsEdit) or (ProcessosFechamentoItens.State = dsInsert) then
               Dados.ProcessosFechamentoItens.Post;
      End;
      Totaliza;
end;

procedure TProcesso_Fechamento.DBCheckBox1Click(Sender: TObject);
begin
      If (Dados.ProcessosFechamento.State = dsEdit) or (Dados.ProcessosFechamento.State = dsInsert) then
         If DBCheckBox1.Checked = true then Dados.ProcessosFechamentoObservacao.Value := Dados.ConfiguracaoProcesso_FechamentoObsTexto.AsString + ', TX: '+FormatFloat(',##0.0000', Dados.ProcessosDOCTaxa_FOB.AsFloat);
end;

procedure TProcesso_Fechamento.Trava2Click(Sender: TObject);
begin
      Dados.ProcessosFechamentoTrava_ComissaoValor.Value := not Trava2.StateOn;
end;

procedure TProcesso_Fechamento.Trava1Click(Sender: TObject);
begin
      Dados.ProcessosFechamentoTrava_DescontoJuros.Value := not Trava1.StateOn;
      Dados.ProcessosFechamentoTrava_ComissaoValor.Value := not Trava2.StateOn;
      cComissaoAliq.Enabled     := Trava2.StateOn;
      cComissaoValor.Enabled    := Trava2.StateOn;
      bCalculoComissao.Enabled := Trava2.StateOn;
end;

procedure TProcesso_Fechamento.DBEdit9Change(Sender: TObject);
begin
      With Dados do begin
           If (ProcessosFechamento.State = dsInsert) or (ProcessosFechamento.State = dsEdit) then begin
              ProcessosFechamentoICMS_FDE.Value := Percentual(tTotalSaida.FieldByName('Valor_TotalNota').AsCurrency, ProcessosFechamentoICMS_FDEPercentual.AsFloat);
              Totaliza;
           End;
      End;
end;

procedure TProcesso_Fechamento.RecalculaComissao;
Var
    mNegociacao: Real;
begin
     With Dados do begin
          If (Trava2.StateOn = true) then begin
             Clientes.SQL.Clear;
             Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo = :pCodigo)');
             Clientes.ParamByName('pCodigo').AsInteger := ProcessosDOC.FieldByName('Cliente').AsInteger;
             Clientes.Open;

             cComissaoAliq.Value := ClientesTrader_Comissao.AsFloat;

             If Clientes.FieldByName('Tipo_Comissao').AsInteger = 1 then
                cComissaoValor.Value := (Percentual(tTotalSaida.FieldByName('Total_BCICMS').AsCurrency, Clientes.FieldByName('Trader_Comissao').AsFloat)) * -1;
             If Clientes.FieldByName('Tipo_Comissao').AsInteger = 2 then
                cComissaoValor.Value := (Percentual(tTotalSaida.FieldByName('Valor_TotalNota').AsCurrency, Clientes.FieldByName('Trader_Comissao').AsFloat)) * -1;
             If (Clientes.FieldByName('Tipo_Comissao').AsInteger >= 3) and (Clientes.FieldByName('Tipo_Comissao').AsInteger <= 10) then begin
                mNegociacao := cTotalFinanceiro.Value;
                If mNegociacao < 0 then mNegociacao := mNegociacao * -1;
                cComissaoValor.Value := (Percentual((Percentual(tTotalSaida.FieldByName('Total_BCICMS').AsCurrency, 7) - mNegociacao), ClientesTrader_Comissao.AsFloat)) * -1;
             End;
          End;
     End;
end;

procedure TProcesso_Fechamento.bCalculoComissaoClick(Sender: TObject);
Var
    mNegociacao: Real;
begin
     With Dados do begin
          If (Trava2.StateOn = true) then begin
             Clientes.SQL.Clear;
             Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo = :pCodigo)');
             Clientes.ParamByName('pCodigo').AsInteger := ProcessosDOC.FieldByName('Cliente').AsInteger;
             Clientes.Open;

             cComissaoAliq.Value := ClientesTrader_Comissao.AsFloat;

             If Clientes.FieldByName('Tipo_Comissao').AsInteger = 1 then
                cComissaoValor.Value := (Percentual(tTotalSaida.FieldByName('Total_BCICMS').AsCurrency, Clientes.FieldByName('Trader_Comissao').AsFloat)) * -1;
             If Clientes.FieldByName('Tipo_Comissao').AsInteger = 2 then
                cComissaoValor.Value := (Percentual(tTotalSaida.FieldByName('Valor_TotalNota').AsCurrency, Clientes.FieldByName('Trader_Comissao').AsFloat)) * -1;
             If (Clientes.FieldByName('Tipo_Comissao').AsInteger >= 3) and (Clientes.FieldByName('Tipo_Comissao').AsInteger <= 10) then begin
                mNegociacao := cTotalFinanceiro.Value;
                If mNegociacao < 0 then mNegociacao := mNegociacao * -1;
                cComissaoValor.Value := (Percentual((Percentual(tTotalSaida.FieldByName('Total_BCICMS').AsCurrency, 7) - mNegociacao), ClientesTrader_Comissao.AsFloat)) * -1;
             End;
          End;
     End;
     Totaliza;
end;

procedure TProcesso_Fechamento.bDuplicClick(Sender: TObject);
var
  i: integer;
begin
     if MessageDlg('Deseja realmente duplicar  este fechamento?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
        Abort;
     end;
     with Dados do begin
          if ProcessosFechamentoCodigo.AsInteger <> 0 then begin
             with tTemp do begin
                  close;
                  sql.Clear;
                  sql.Add('select * from ProcessosFechamento where Codigo is null');
                  open;
                  Append;
                       for i := 0 to pred(ProcessosFechamento.FieldCount) do begin
                           FieldByName(ProcessosFechamento.Fields[i].FieldName).Value := ProcessosFechamento.FieldByName(ProcessosFechamento.Fields[i].FieldName).Value;
                       end;
                       with tCodigo do begin
                           close;
                           sql.clear;
                           sql.add('select isnull(max(Codigo), 0)+1 as Codigo from ProcessosFechamento');
                           open;
                       end;
                       tTemp.FieldByName('Codigo').Value := tCodigo.fieldbyname('Codigo').AsInteger;
                  Post;
             end;
          end;
          ProcessosFechamento.Refresh;
     end;
     MessageDlg('Fechamento do processo duplicado.', mtinformation, [mbok], 0);
end;

procedure TProcesso_Fechamento.cComissaoValorExit(Sender: TObject);
begin
      Totaliza;
end;



end.





