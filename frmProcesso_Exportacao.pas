unit frmProcesso_Exportacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, DBCtrls, Vcl.StdCtrls, Grids, DBGrids, RXDBCtrl, Mask,
  ImgList, DB, MaskUtils, DBAccess, MSAccess, Funcoes, RxLookup, Buttons, RxDBComb, Vcl.ComCtrls, DateUtils, xmldom, XMLIntf, msxmldom, XMLDoc, ShellApi, MemDS, jpeg, Menus, RxCurrEdit, system.UITypes,
  RxToolEdit;

type
  TProcesso_Exportacao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tCodigoPlano: TMSQuery;
    tContaPlano: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    StaticText108: TStaticText;
    DBEdit49: TDBEdit;
    StaticText109: TStaticText;
    StaticText110: TStaticText;
    StaticText111: TStaticText;
    DBEdit50: TDBEdit;
    StaticText112: TStaticText;
    DBEdit51: TDBEdit;
    StaticText113: TStaticText;
    DBEdit52: TDBEdit;
    StaticText114: TStaticText;
    cOrigem: TDBEdit;
    DBLookupComboBox12: TDBLookupComboBox;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    StaticText115: TStaticText;
    StaticText116: TStaticText;
    StaticText117: TStaticText;
    DBEdit55: TDBEdit;
    DBLookupComboBox13: TDBLookupComboBox;
    GroupBox10: TGroupBox;
    bTodosTotais: TSpeedButton;
    StaticText119: TStaticText;
    DBDateEdit11: TDBDateEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    StaticText120: TStaticText;
    cDataPrevRegistro: TDBDateEdit;
    StaticText121: TStaticText;
    StaticText122: TStaticText;
    StaticText123: TStaticText;
    cDataPrevFaturamento: TDBDateEdit;
    StaticText125: TStaticText;
    StaticText126: TStaticText;
    StaticText127: TStaticText;
    DBDateEdit12: TDBDateEdit;
    StaticText128: TStaticText;
    DBEdit58: TDBEdit;
    StaticText129: TStaticText;
    DBEdit59: TDBEdit;
    StaticText130: TStaticText;
    cDataPrevFrete: TDBDateEdit;
    StaticText131: TStaticText;
    StaticText132: TStaticText;
    StaticText133: TStaticText;
    DBLookupComboBox14: TDBLookupComboBox;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    StaticText134: TStaticText;
    cDataPrevArmazem: TDBDateEdit;
    StaticText135: TStaticText;
    StaticText136: TStaticText;
    StaticText137: TStaticText;
    DBLookupComboBox15: TDBLookupComboBox;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    StaticText138: TStaticText;
    DBEdit68: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText139: TStaticText;
    StaticText140: TStaticText;
    DBMemo2: TDBMemo;
    StaticText141: TStaticText;
    StaticText142: TStaticText;
    cCSTPIS: TRxDBLookupCombo;
    cCSTCOFINS: TRxDBLookupCombo;
    cBCCredito: TRxDBComboBox;
    StaticText143: TStaticText;
    StaticText144: TStaticText;
    cConsignatarioCNPJ: TDBEdit;
    StaticText145: TStaticText;
    cConsignatarioUF: TDBEdit;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    TabSheet8: TTabSheet;
    Grade: TDBGrid;
    StaticText146: TStaticText;
    cPagamentos: TCurrencyEdit;
    StaticText147: TStaticText;
    cTotalDespesasCusto2: TCurrencyEdit;
    StaticText148: TStaticText;
    cRecebimentos: TCurrencyEdit;
    StaticText149: TStaticText;
    cTotalDespesasSeletivo2: TCurrencyEdit;
    StaticText156: TStaticText;
    cTotalDespesasEntrada: TCurrencyEdit;
    StaticText157: TStaticText;
    cTotalDespesasOutros2: TCurrencyEdit;
    TabSheet7: TTabSheet;
    DBGrid2: TDBGrid;
    bCadastroContainer: TButton;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet5: TTabSheet;
    GradeLista: TDBGrid;
    bExcel: TBitBtn;
    TabSheet6: TTabSheet;
    bLimpar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    StaticText158: TStaticText;
    StaticText159: TStaticText;
    StaticText160: TStaticText;
    StaticText161: TStaticText;
    StaticText162: TStaticText;
    StaticText163: TStaticText;
    StaticText164: TStaticText;
    StaticText165: TStaticText;
    cFiltroCondicaoCambio: TRxDBLookupCombo;
    StaticText166: TStaticText;
    cFiltroDataPrevistaIni: TDateEdit;
    cFiltroDataChegadaIni: TDateEdit;
    cFiltroDesembaracoIni: TDateEdit;
    cFiltroCliente: TRxDBLookupCombo;
    cFiltroCondicao: TRxDBLookupCombo;
    cFiltroResponsavel: TRxDBLookupCombo;
    cFiltroExportador: TRxDBLookupCombo;
    cFiltroFatura: TRxDBLookupCombo;
    StaticText167: TStaticText;
    cFiltroDataBLIni: TDateEdit;
    StaticText168: TStaticText;
    cFiltroDataRegistroIni: TDateEdit;
    cFiltroDataPrevistaFim: TDateEdit;
    cFiltroDataChegadaFim: TDateEdit;
    cFiltroDesembaracoFim: TDateEdit;
    cFiltroDataBLFim: TDateEdit;
    cFiltroDataRegistroFim: TDateEdit;
    cFiltroDesativado: TCheckBox;
    cFiltroSituacao: TRadioGroup;
    GroupBox4: TGroupBox;
    StaticText3: TStaticText;
    StaticText14: TStaticText;
    StaticText35: TStaticText;
    cProcesso: TDBEdit;
    StaticText36: TStaticText;
    cDataAbertura: TDBDateEdit;
    DBDateEdit6: TDBDateEdit;
    StaticText13: TStaticText;
    cCondicaoVenda: TDBLookupComboBox;
    StaticText34: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    StaticText44: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    StaticText6: TStaticText;
    DBEdit4: TDBEdit;
    StaticText9: TStaticText;
    DBEdit7: TDBEdit;
    StaticText12: TStaticText;
    StaticText10: TStaticText;
    DBEdit8: TDBEdit;
    StaticText19: TStaticText;
    DBEdit14: TDBEdit;
    lDoc: TStaticText;
    DBEdit10: TDBEdit;
    StaticText15: TStaticText;
    DBEdit12: TDBEdit;
    StaticText16: TStaticText;
    DBDateEdit1: TDBDateEdit;
    StaticText2: TStaticText;
    DBDateEdit2: TDBDateEdit;
    DBEdit18: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    StaticText5: TStaticText;
    StaticText8: TStaticText;
    DBLookupComboBox7: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    StaticText31: TStaticText;
    StaticText38: TStaticText;
    StaticText41: TStaticText;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    StaticText49: TStaticText;
    DBEdit17: TDBEdit;
    DBDateEdit3: TDBDateEdit;
    GroupBox1: TGroupBox;
    StaticText20: TStaticText;
    cMoedaFrete: TDBLookupComboBox;
    cFreteME: TDBEdit;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    cMoedaSeguro: TDBLookupComboBox;
    cSeguroME: TDBEdit;
    StaticText23: TStaticText;
    StaticText30: TStaticText;
    DBEdit13: TDBEdit;
    StaticText39: TStaticText;
    cSeguro: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    StaticText11: TStaticText;
    StaticText32: TStaticText;
    tSoma: TMSQuery;
    StaticText17: TStaticText;
    cMoedaFOB: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    StaticText18: TStaticText;
    DBEdit11: TDBEdit;
    StaticText43: TStaticText;
    StaticText45: TStaticText;
    DBEdit16: TDBEdit;
    GroupBox5: TGroupBox;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    cProforma: TDBEdit;
    DBDateEdit5: TDBDateEdit;
    lCondicaoPgto: TStaticText;
    cCondicaoPgto: TRxDBLookupCombo;
    bItens: TButton;
    StaticText50: TStaticText;
    DBDateEdit7: TDBDateEdit;
    StaticText53: TStaticText;
    DBEdit20: TDBEdit;
    StaticText54: TStaticText;
    DBEdit23: TDBEdit;
    StaticText55: TStaticText;
    DBEdit26: TDBEdit;
    tProcesso: TMSQuery;
    StaticText56: TStaticText;
    DBDateEdit9: TDBDateEdit;
    GroupBox6: TGroupBox;
    StaticText60: TStaticText;
    DBEdit28: TDBEdit;
    StaticText61: TStaticText;
    DBDateEdit14: TDBDateEdit;
    StaticText63: TStaticText;
    DBDateEdit16: TDBDateEdit;
    StaticText51: TStaticText;
    DBLookupComboBox9: TDBLookupComboBox;
    bDUE: TButton;
    XML: TXMLDocument;
    TabSheet9: TTabSheet;
    mXML: TMemo;
    cVia: TDBLookupComboBox;
    StaticText57: TStaticText;
    DBLookupComboBox11: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    StaticText58: TStaticText;
    TabSheet10: TTabSheet;
    bProposta: TButton;
    MenuCusto: TPopupMenu;
    mnMarcarCustoEntrada: TMenuItem;
    mnDesmarcarCustoEntrada: TMenuItem;
    mnMarcarCustoTodosEntrada: TMenuItem;
    mnDesmarcarCustoTodosEntrada: TMenuItem;
    N2: TMenuItem;
    mnMarcarCusto: TMenuItem;
    mnDesmarcarCusto: TMenuItem;
    mnMarcarCustoTodos: TMenuItem;
    mnDesmarcarCustoTodos: TMenuItem;
    N3: TMenuItem;
    mnMarcarCustoOutros: TMenuItem;
    mnDesmarcarCustoOutros: TMenuItem;
    mnMarcarCustoTodosOutros: TMenuItem;
    mnDesmarcarCustoTodosOutros: TMenuItem;
    N1: TMenuItem;
    mnMarcarSeletivo: TMenuItem;
    mnDesmarcarSeletivo: TMenuItem;
    mnMarcarSeletivoTodos: TMenuItem;
    mnDesmarcarSeletivoTodos: TMenuItem;
    GroupBox2: TGroupBox;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText33: TStaticText;
    cDataRegistro_DI: TDBDateEdit;
    StaticText37: TStaticText;
    cDI: TDBEdit;
    DBDateEdit4: TDBDateEdit;
    StaticText1: TStaticText;
    cData_RE: TDBDateEdit;
    StaticText4: TStaticText;
    StaticText7: TStaticText;
    cVolumes: TDBEdit;
    StaticText27: TStaticText;
    DBEdit19: TDBEdit;
    StaticText42: TStaticText;
    DBEdit15: TDBEdit;
    cUFDesembaraco: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    StaticText28: TStaticText;
    cPesoLiquido: TDBEdit;
    StaticText29: TStaticText;
    DBEdit21: TDBEdit;
    DBMemo3: TDBMemo;
    StaticText52: TStaticText;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox16: TDBLookupComboBox;
    StaticText59: TStaticText;
    DBLookupComboBox17: TDBLookupComboBox;
    DBLookupComboBox18: TDBLookupComboBox;
    StaticText62: TStaticText;
    StaticText64: TStaticText;
    DBEdit22: TDBEdit;
    StaticText65: TStaticText;
    DBLookupComboBox19: TDBLookupComboBox;
    cNatureza: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    cTipo: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    TabSheet11: TTabSheet;
    GroupBox7: TGroupBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    cContaDespesas: TDBLookupComboBox;
    cContaImpostos: TDBLookupComboBox;
    cContaAdiant: TDBLookupComboBox;
    cCodImpostos: TDBEdit;
    cCodProcesso: TDBEdit;
    cCodAdiantamento: TDBEdit;
    StaticText66: TStaticText;
    StaticText67: TStaticText;
    StaticText68: TStaticText;
    bContas: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cProcessoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StaticText40Click(Sender: TObject);
    procedure StaticText46Click(Sender: TObject);
    procedure StaticText13Click(Sender: TObject);
    procedure StaticText34Click(Sender: TObject);
    procedure StaticText14Click(Sender: TObject);
    procedure StaticText44Click(Sender: TObject);
    procedure cMoedaFreteExit(Sender: TObject);
    procedure cMoedaSeguroClick(Sender: TObject);
    procedure cFreteMEChange(Sender: TObject);
    procedure cSeguroMEChange(Sender: TObject);
    procedure GradeListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cMoedaFOBExit(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure lCondicaoPgtoClick(Sender: TObject);
    procedure TotalizaDespesas;
    procedure bItensClick(Sender: TObject);
    procedure cProcessoChange(Sender: TObject);
    procedure cProformaExit(Sender: TObject);
    procedure StaticText51Click(Sender: TObject);
    procedure bDUEClick(Sender: TObject);
    procedure GradeListaCellClick(Column: TColumn);
    procedure mnMarcarCustoEntradaClick(Sender: TObject);
    procedure mnDesmarcarCustoEntradaClick(Sender: TObject);
    procedure mnMarcarCustoTodosEntradaClick(Sender: TObject);
    procedure mnDesmarcarCustoTodosEntradaClick(Sender: TObject);
    procedure mnMarcarCustoClick(Sender: TObject);
    procedure mnDesmarcarCustoClick(Sender: TObject);
    procedure mnMarcarCustoTodosClick(Sender: TObject);
    procedure mnDesmarcarCustoTodosClick(Sender: TObject);
    procedure mnMarcarCustoOutrosClick(Sender: TObject);
    procedure mnDesmarcarCustoOutrosClick(Sender: TObject);
    procedure mnMarcarCustoTodosOutrosClick(Sender: TObject);
    procedure mnDesmarcarCustoTodosOutrosClick(Sender: TObject);
    procedure mnMarcarSeletivoClick(Sender: TObject);
    procedure mnDesmarcarSeletivoClick(Sender: TObject);
    procedure mnMarcarSeletivoTodosClick(Sender: TObject);
    procedure mnDesmarcarSeletivoTodosClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bContasClick(Sender: TObject);
  private
    procedure SalvaConta(Campo: integer);
    { Private declarations }
  public
    { Public declarations }
    mNFEProcesso: String;
  end;

var
  Processo_Exportacao: TProcesso_Exportacao;

implementation

uses frmDados, frmDMContab, frmMenu_Principal, frmDMFiscal,frmCadastro_PlanoContas, frmCadastro_Incoterms, frmCadastro_Clientes, frmCadastro_Fornecedores, frmCadastro_CondicaoCambial,
     frmProforma_Itens, frmDMDespacho;

{$R *.dfm}

procedure TProcesso_Exportacao.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TProcesso_Exportacao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      if mNFEProcesso = '' then begin
         with Dados, dmContab do begin
              ProcessosDOC.Close;
              Clientes.Close;
              Fornecedores.Close;
              Moedas.Close;
              Paises.Close;
              Cotacao.Close;
              ClassificacaoFinanceira.Close;
              Incoterms.Close;
              ClassificacaoFinanceira.Close;
              TipoProduto.Close;
              Configuracao.Close;
              PlanoContas.Close;
         end;
      end;
      LimpaMemoria;
      Processo_Exportacao.Release;
      Processo_Exportacao := nil;
end;

procedure TProcesso_Exportacao.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        PageControl1.ActivePageIndex := 0;
        With Dados, dmDespacho, dmContab do Begin
//             ProcessosDOCNumero_Declaracao.EditMask := '9999999999/9;0; ';
             with ProcessosDOC do begin
                  fieldbyname('Numero_Declaracao').EditMask := '';
                  sql.Clear;
                  sql.Add('select * from ProcessosDocumentos where Tipo = '+QuotedStr('EXPORTAÇÃO')+' order by Processo');
                  open;
             end;

             Empresas.SQL.Clear;
             Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
             Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
             Empresas.Open;

             Clientes.Open;

             Fornecedores.SQL.Clear;
             Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
             Fornecedores.Open;

             Despachantes.SQL.Clear;
             Despachantes.SQL.Add('SELECT * FROM Fornecedores WHERE (SELECT Descricao FROM RamoAtividade WHERE Codigo = Ramo_Atividade) LIKE ''%DESPACHANTE%'' ');
             Despachantes.Open;

             Moedas.SQL.Clear;
             Moedas.SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
             Moedas.Open;

             Paises.SQL.Clear;
             Paises.SQL.Add('SELECT * FROM Paises ORDER BY Nome');
             Paises.Open;

             Cotacao.SQL.Clear;
             Cotacao.SQL.Add('SELECT * FROM Cotacao');
             Cotacao.Open;

             ClassificacaoFinanceira.SQL.Clear;
             ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) ORDER BY Descricao');
             ClassificacaoFinanceira.Open;

             Incoterms.SQL.Clear;
             Incoterms.SQL.Add('SELECT * FROM INCOTERMS ORDER BY Codigo');
             Incoterms.Open;

             TipoConhecimento.SQL.Clear;
             TipoConhecimento.SQL.Add('SELECT * FROM TipoConhecimento ORDER BY Descricao');
             TipoConhecimento.Open;

             Estados.SQL.Clear;
             Estados.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
             Estados.Open;

             TipoProduto.Open;

             Configuracao.Open;

             LocalDesembaraco.SQL.Clear;
             LocalDesembaraco.SQL.Add('SELECT * FROM LocalDesembaraco ORDER BY Descricao');
             LocalDesembaraco.Open;

             UnidadesRFB.SQL.Clear;
             UnidadesRFB.SQL.Add('SELECT * FROM UnidadesRFB ORDER BY Descricao');
             UnidadesRFB.Open;

             PlanoContas.SQL.Clear;
             PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 0) ORDER BY Descricao');
             PlanoContas.Open;

             CondicaoCambial.SQL.Clear;
             CondicaoCambial.SQL.Add('SELECT * FROM CondicaoCambial ORDER BY Descricao' );
             CondicaoCambial.Open;

             ViaTransporte.SQL.Clear;
             ViaTransporte.SQL.Add('SELECT * FROM ViaTransporte ORDER BY Descricao');
             ViaTransporte.Open;

             RecintosAduaneiros.SQL.Clear;
             RecintosAduaneiros.SQL.Add('SELECT * FROM RecintosAduaneiros ORDER BY Descricao');
             RecintosAduaneiros.Open;

             ViaEspecialTransp.SQL.Clear;
             ViaEspecialTransp.SQL.Add('SELECT * FROM ViaEspecialTransp ORDER BY Descricao');
             ViaEspecialTransp.Open;

             EnquadramentoOper.SQL.Clear;
             EnquadramentoOper.SQL.Add('SELECT * FROM EnquadramentoOperacao ORDER BY Descricao');
             EnquadramentoOper.Open;

             TotalizaDespesas;
        End;
        Screen.Cursor := crDefault;
end;

procedure TProcesso_Exportacao.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i:integer;
begin
     with Dados do begin
          if (Button = nbEdit) or (Button = nbInsert) then begin
             TabSheet1.Enabled  := True;
             TabSheet3.Enabled  := True;
             TabSheet8.Enabled  := True;
             bPesquisa.Enabled  := false;
             bItens.Enabled     := false;
             PageControl1.ActivePageIndex := 0;
             with TiposProcesso do begin
                  sql.clear;
                  sql.Add('select * from TiposProcesso where Exportacao = 1 order by Codigo');
                  Open;
                  ProcessosDOCModalidade_Importacao.Value := fieldbyname('Codigo').AsInteger;
             end;
             if Button = nbInsert then begin
                ProcessosDOCTipo.Value                := 'EXPORTAÇÃO';
                ProcessosDOCTipo_Declaracao.Value     := 0;
                ProcessosDOCNatureza_Exportacao.Value := 0;
                ProcessosDOCCanal_SISCOMEX.Value      := 'VD';
                ProcessosDOCDesativado.Value          := false;
                // Gerando o número do processo caso esteja automatico.
                if EmpresasProcesso_Automatico.Value then begin
                   if Trim(EmpresasMascara_Processo.AsString) <> '' then begin
                      ProcessosDOCProcesso.Value := NumeroProcesso(EmpresasMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, YearOf(Date), Trim(ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                   end else begin
                      ProcessosDOCProcesso.Value := NumeroProcesso(ClientesMascara_Processo.AsString, EmpresasProcesso.AsInteger+1, YearOf(Date), Trim(ConfiguracaoProcesso_Numero.AsString), ConfiguracaoProcesso_DigitosAno.AsInteger);
                   End;
                   Empresas.Edit;
                            EmpresasProcesso.Value := EmpresasProcesso.Value + 1;
                   Empresas.Post;
                end;
             end;
             for i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             end;
             cProcesso.SetFocus;
          end;
          cProcessoExit(Self);
          if (Button <> nbEdit) and (button <> nbInsert) then TotalizaDespesas;
          if (Button = nbPost) or (Button = nbCancel) then Begin
             TabSheet1.Enabled := False;
             TabSheet2.Enabled := False;
             bPesquisa.Enabled := true;
             bItens.Enabled    := true;
          end;
     end;
end;

procedure TProcesso_Exportacao.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With Dados do Begin
           If Odd(PagarReceber.RecNo) then
              Grade.Canvas.Brush.Color:= $00DEEDDE
           else
              Grade.Canvas.Brush.Color:= clCream;

           TDbGrid(Sender).Canvas.font.Color:= clBlack;
           If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := $00FFAAB0;
              FillRect(Rect);
              Font.Style := [fsbold];
              Font.Color := clBlack;
           End;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

           If (Column.FieldName = 'Custo_Entrada') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (PagarReceber.FieldByName('Custo_Entrada').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
           If (Column.FieldName = 'CustoConta') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (PagarReceber.FieldByName('CustoConta').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
           If (Column.FieldName = 'Custo_Seletivo') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (PagarReceber.FieldByName('Custo_Seletivo').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
           If (Column.FieldName = 'Custo_Outros') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (PagarReceber.FieldByName('Custo_Outros').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
      End;
end;

procedure TProcesso_Exportacao.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
    mConta : Integer;
    mCodigo,
    mGrupo:String;
begin
      With Dados,dmContab, dmFiscal do begin
           If (ProcessosDOC.State = dsInsert) or (ProcessosDOC.State = dsEdit) then begin
              If ProcessosDOCSeguro.AsString = '' then ProcessosDOCSeguro.Value := 0;
              If ProcessosDOCFrete.AsString  = '' then ProcessosDOCFrete.Value  := 0;
           End;

           if ProcessosDOC.State = dsInsert then begin
              if Button = nbPost then begin
                 tProcesso.SQL.Clear;
                 tProcesso.SQL.Add('SELECT Processo FROM ProcessosDocumentos WHERE(Processo = :pProcesso)');
                 tProcesso.ParamByName('pProcesso').AsString := Trim(cProcesso.Text);
                 tProcesso.Open;
                 if tProcesso.RecordCount > 0 then begin
                    ShowMessage('Já existe um processo cadastrado com o número informado!');
                    cProcesso.SetFocus;
                    Abort;
                 end;
              end;
              (*
              // Abre a conta de "Despesas" do processo se estiver parâmetrizado.
              // Pegando o grupo da conta.
              PlanoContas.SQL.Clear;
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 1)');
              PlanoContas.Open;
              //PlanoContas.Locate('Codigo', ParametrosContabeis_ExpDesp.Value, [loCaseInsensitive]);
              mGrupo := PlanoContasConta.Value;

              If mGrupo <> '' then begin
                 // Verifica se já existe uma conta cadastrada com o mesmo nome.
                 PlanoContas.SQL.Clear;
                 PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                 PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                 PlanoContas.ParamByName('pDescricao').AsString := 'DI '+FormatMaskText('##/#######-#;0; ',ProcessosDOCNumero_Declaracao.AsString)+' ('+ProcessosDOCProcesso.Value+')';
                 PlanoContas.Open;

                 If PlanoContas.RecordCount <> 0 then begin
                     // Pegando o número da última conta.
                     tContaPlano.SQL.Clear;
                     tContaPlano.SQL.Add('SELECT MAX(Conta) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' );
                     tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                     tContaPlano.Open;

                     // Se não houver nenhuma conta analítica no plano cria a primeira, caso contrario pega a última.
                     If tContaPlano.FieldByName('Conta').Value = Null then
                        mConta := StrtoInt( CriaAnalitica( mGrupo, EmpresasMascara_PlanoContas.Value ) )
                     else
                        mConta := tContaPlano.FieldByName('Conta').AsInteger + 1;

                     // Pegando o número do último código reduzido sem o último digito.
                     tCodigoPlano.SQL.Clear;
                     tCodigoPlano.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM PlanoContas' );
                     tCodigoPlano.Open;

                     //mCodigo := InttoStr( tCodigoPlano.FieldByName('Codigo').AsInteger + 1 );
                     //mCodigo := mCodigo + DigitoConta(mCodigo);

                     PlanoContas.Append;
                                 PlanoContasConta.Value           := InttoStr(mConta);
                                 PlanoContasCodigo.Value          := InttoStr(tCodigoPlano.FieldByName('Codigo').AsInteger + 1);
                                 PlanoContasDescricao.Value       := 'DI '+FormatMaskText('##/#######-#;0; ',ProcessosDOCNumero_Declaracao.AsString)+' ('+ProcessosDOCProcesso.Value+')';
                                 PlanoContasSaldo_Anterior.Value  := 0;
                                 PlanoContasDebito.Value          := 0;
                                 PlanoContasCredito.Value         := 0;
                                 PlanoContasSintetica.Value       := False;
                                 PlanoContasNatureza.Value        := 'C';
                                 PlanoContasLALUR.Value           := False;
                                 PlanoContasMostrar_Balanco.Value := True;
                                 PlanoContasImprimir_Razao.Value  := False;
                     PlanoContas.Post;

                     // Registra a conta aberta no cadastro do processo.
                     ProcessosDOCConta_Despesas.Value := mCodigo;
                 End;
              End;

              // Abre a conta de "Impostos" do processo se estiver parâmetrizado.

              // Pegando o grupo da conta.
              PlanoContas.SQL.Clear;
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 1)');
              PlanoContas.Open;
              //PlanoContas.Locate('Codigo', ParametrosContabeis_ExpImp.Value, [loCaseInsensitive]);
              mGrupo := PlanoContasConta.Value;

              If mGrupo <> '' then begin
                 // Verifica se já existe uma conta cadastrada com o mesmo nome.
                 PlanoContas.SQL.Clear;
                 PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                 PlanoContas.ParamByName('pGrupo').AsString     := mGrupo+'%';
                 PlanoContas.ParamByName('pDescricao').AsString := 'DI '+FormatMaskText('##/#######-#;0; ',ProcessosDOCNumero_Declaracao.AsString)+' ('+ProcessosDOCProcesso.Value+')';
                 PlanoContas.Open;

                 If PlanoContas.RecordCount <> 0 then begin
                     // Pegando o número da última conta.
                     tContaPlano.SQL.Clear;
                     tContaPlano.SQL.Add('SELECT MAX(Conta) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica <> 1)' );
                     tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                     tContaPlano.Open;

                     // Se não houver nenhuma conta analítica no plano cria a primeira, caso contrario pega a última.
                     If tContaPlano.FieldByName('Conta').Value = Null then
                        mConta := StrtoInt( CriaAnalitica( mGrupo, EmpresasMascara_PlanoContas.Value ) )
                     else
                        mConta := tContaPlano.FieldByName('Conta').AsInteger + 1;

                     // Pegando o número do último código reduzido sem o último digito.
                     tCodigoPlano.SQL.Clear;
                     tCodigoPlano.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM PlanoContas' );
                     tCodigoPlano.Open;

                     PlanoContas.Append;
                                 PlanoContasConta.Value           := InttoStr(mConta);
                                 PlanoContasCodigo.Value          := InttoStr(tCodigoPlano.FieldByName('Codigo').AsInteger + 1);
                                 PlanoContasDescricao.Value       := 'DI '+FormatMaskText('##/#######-#;0; ',ProcessosDOCNumero_Declaracao.AsString)+' ('+ProcessosDOCProcesso.Value+')';
                                 PlanoContasSaldo_Anterior.Value  := 0;
                                 PlanoContasDebito.Value          := 0;
                                 PlanoContasCredito.Value         := 0;
                                 PlanoContasSintetica.Value       := False;
                                 PlanoContasNatureza.Value        := 'C';
                                 PlanoContasLALUR.Value           := False;
                                 PlanoContasMostrar_Balanco.Value := True;
                                 PlanoContasImprimir_Razao.Value  := False;
                     PlanoContas.Post;

                     // Registra a conta aberta no cadastro do processo.
                     ProcessosDOCConta_Impostos.Value := mCodigo;
                 End;
              End;
              *)
           End;

           // Vetrifica movimentação do processo.
           if Button = nbDelete then begin
              // Verifica se o processo contem movimento.
              tProcesso.SQL.Clear;
              tProcesso.SQL.Add('SELECT Qtde = (SELECT COUNT(*) FROM PagarReceber        WHERE(Processo = :pProcesso) AND (LTRIM(RTRIM(Processo)) <> '''') AND (Processo IS NOT NULL)) +');
              tProcesso.SQL.Add('              (SELECT COUNT(*) FROM NotasTerceirosItens WHERE(Processo = :pProcesso) AND (LTRIM(RTRIM(Processo)) <> '''') AND (Processo IS NOT NULL)) +');
              tProcesso.SQL.Add('              (SELECT COUNT(*) FROM NotasItens          WHERE(Processo = :pProcesso) AND (LTRIM(RTRIM(Processo)) <> '''') AND (Processo IS NOT NULL))');
              tProcesso.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
              //tProcesso.sql.SaveToFile('c:\temp\Deleta_Processo_Exportação.sql');
              tProcesso.Open;

              if tProcesso.FieldByName('Qtde').AsInteger > 0 then begin
                 MessageDlg('Atenção!'+#13+#13+'Existe movimento para este processo.'+#13+#13+'O Processo não pode ser excluído.', mtInformation, [mbOK], 0);
                 Abort;
              end;

              if MessageDlg('Deseja realmente excluir este processo?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then begin
                 Abort;
              end;

              // Registra log do usuario.
              LogDados(ProcessosDOC, '('+ProcessosDOCProcesso.AsString+') DI:'+ProcessosDOCNumero_Declaracao.AsString, dsInactive);
           end;
           {
           if Button = nbPost then begin
              if ProcessosDOC.State = dsInsert then begin
                 tProcesso.SQL.Clear;
                 tProcesso.SQL.Add('SELECT MAX(ISNULL(Registro, 0))+1 AS Registro FROM ProcessosTexto');
                 tProcesso.Open;
                 ProcessosTexto.FieldByName('Registro').Value := tProcesso.FieldByName('Registro').AsInteger;
              end;
              ProcessosTexto.Post;
           end;
           }
      End;
end;

procedure TProcesso_Exportacao.cProcessoExit(Sender: TObject);
begin
       // Pegando os despesas do processo no financeiro.
       Screen.Cursor := crSQLWait;
       With Dados do Begin
            {
            PagarReceber.SQL.Clear;
            PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Processo = :pProcesso) AND (RTrim(Processo) <> '''') ORDER BY Classificacao');
            PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
            PagarReceber.Open;

            cTotalDespesasCusto.Value := 0;
            cTotalDespesas.Value      := 0;
            cRecebimentos.Value       := 0;

            PagarReceber.First;
            While not PagarReceber.Eof do Begin
                  If PagarReceberTipo.Value = 'P' then begin
                     cTotalDespesas.Value := cTotalDespesas.Value + PagarReceberValor_Total.Value;
                     If PagarReceberCustoConta.Value = True then begin
                        cTotalDespesasCusto.Value := cTotalDespesasCusto.Value + PagarReceberValor_Documento.Value;
                     End;
                  end else begin
                     cRecebimentos.Value := cRecebimentos.Value + PagarReceberValor_Documento.Value;
                  End;
                  PagarReceber.Next;
            End;
            }
             PagarReceber.SQL.Clear;
             PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Processo = :pProcesso) AND (RTRIM(Processo) <> '''') ORDER BY Classificacao');
             PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
             PagarReceber.Open;

             tSoma.SQL.Clear;
             tSoma.SQL.Add('SELECT Custo_GeralEnt     = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE Processo = :pProcesso AND Tipo = ''P'' AND Custo_Entrada = 1), 0)');
             tSoma.SQL.Add('      ,Custo_GeralSai     = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE Processo = :pProcesso AND Tipo = ''P'' AND CustoConta    = 1), 0)');
             tSoma.SQL.Add('      ,Custo_GeralSEl     = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE Processo = :pProcesso AND Tipo = ''P'' AND Custo_Seletivo= 1), 0)');
             tSoma.SQL.Add('      ,Custo_GeralOut     = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE Processo = :pProcesso AND Tipo = ''P'' AND Custo_Outros  = 1), 0)');
             tSoma.SQL.Add('	  ,Total_Custo        = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE Processo = :pProcesso AND Tipo = ''P'' AND (Custo_Outros  = 1 OR Custo_Entrada = 1 OR Custo_Seletivo = 1)), 0)');
             tSoma.SQL.Add('	  ,Total_Pagamentos   = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE Processo = :pProcesso AND Tipo = ''P''), 0)');
             tSoma.SQL.Add('	  ,Total_Recebimentos = ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE Processo = :pProcesso AND Tipo = ''R''), 0)');
             tSoma.SQL.Add('WHERE :pProcesso <> '''' ');
             tSoma.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
             tSoma.Open;

             cTotalDespesasEntrada.Value   := tSoma.FieldByName('Custo_GeralEnt').AsCurrency;
             cTotalDespesasCusto2.Value    := tSoma.FieldByName('Custo_GeralSai').AsCurrency;
             cTotalDespesasOutros2.Value   := tSoma.FieldByName('Custo_GeralOut').AsCurrency;
             cTotalDespesasSeletivo2.Value := tSoma.FieldByName('Custo_GeralSel').AsCurrency;
             cPagamentos.Value             := tSoma.FieldByName('Total_Pagamentos').AsCurrency;
             cRecebimentos.Value           := tSoma.FieldByName('Total_Recebimentos').AsCurrency;
       End;
       Screen.Cursor := crDefault;
end;

procedure TProcesso_Exportacao.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_Exportacao.StaticText40Click(Sender: TObject);
begin
        Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
        Cadastro_PlanoContas.Caption := Caption;
        Cadastro_PlanoContas.ShowModal;
        With dmContab do begin
             PlanoContas.SQL.Clear;
             PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE ( Sintetica = 0) ORDER BY Descricao');
             PlanoContas.Open;
        End;
end;

procedure TProcesso_Exportacao.StaticText46Click(Sender: TObject);
begin
       Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
       Cadastro_PlanoContas.Caption := Caption;
       Cadastro_PlanoContas.ShowModal;
       With dmContab do begin
            PlanoContas.SQL.Clear;
            PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE ( Sintetica = 0) ORDER BY Descricao');
            PlanoContas.Open;
       End;
end;

procedure TProcesso_Exportacao.StaticText13Click(Sender: TObject);
begin
       Cadastro_Incoterms := TCadastro_Incoterms.Create(Self);
       Cadastro_Incoterms.caption := Caption;
       Cadastro_Incoterms.Showmodal;
       Dados.ProcessosDOCIncoterms.Value := Menu_Principal.mMem_Incoterm;
       Dados.Incoterms.Open;
end;

procedure TProcesso_Exportacao.StaticText34Click(Sender: TObject);
begin
       Cadastro_Clientes := TCadastro_Clientes.Create(Self);
       Cadastro_Clientes.Caption := Caption;
       Cadastro_Clientes.ShowModal;
       Dados.ProcessosDOCCliente.Value := Menu_Principal.mMem_Cliente;
       Dados.Clientes.Open;
end;

procedure TProcesso_Exportacao.StaticText14Click(Sender: TObject);
begin
       Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
       Cadastro_Fornecedores.Caption := Caption;
       Cadastro_Fornecedores.ShowModal;
       Dados.Fornecedores.Open;
end;

procedure TProcesso_Exportacao.StaticText44Click(Sender: TObject);
begin
       Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
       Cadastro_Fornecedores.Caption := Caption;
       Cadastro_Fornecedores.ShowModal;
       Dados.Fornecedores.Open;
end;

procedure TProcesso_Exportacao.cMoedaFreteExit(Sender: TObject);
begin
      With Dados do begin
           If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Frete.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
              ProcessosDOC.FieldByName('Taxa_Frete').AsFloat := Cotacao.FieldByName('Valor').AsFloat;
           End;
      End;
end;

procedure TProcesso_Exportacao.cMoedaSeguroClick(Sender: TObject);
begin
      With Dados do begin
           If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Seguro.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
              ProcessosDOC.FieldByName('Taxa_Seguro').AsFloat := Cotacao.FieldByName('Valor').AsFloat;
           End;
      End;
end;

procedure TProcesso_Exportacao.cFreteMEChange(Sender: TObject);
begin
      With Dados do begin
           If (ProcessosDOC.State = dsInsert) or (ProcessosDOC.State = dsEdit) then
              ProcessosDOCFrete.Value := (ProcessosDOCFrete_ME.AsCurrency * ProcessosDOCTaxa_Frete.AsFloat);
      End;
end;

procedure TProcesso_Exportacao.cSeguroMEChange(Sender: TObject);
begin
      With Dados do begin
           If (ProcessosDOC.State = dsInsert) or (ProcessosDOC.State = dsEdit) then
              ProcessosDOCSeguro.Value := (ProcessosDOCSeguro_ME.AsCurrency * ProcessosDOCTaxa_Seguro.AsFloat);
      End;
end;

procedure TProcesso_Exportacao.GradeListaDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      With Dados do Begin
           If (Column.FieldName = 'Desativado') then begin
              With GradeLista.Canvas do begin
                   If (ProcessosDOC.FieldByName('Desativado').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
           If ProcessosDOC.FieldByName('Desativado').Value = false then begin
              GradeLista.Canvas.Font.Color := clSilver;
              GradeLista.Canvas.Font.Style := [fsItalic];
           End;
      End;

end;

procedure TProcesso_Exportacao.cMoedaFOBExit(Sender: TObject);
begin
      With Dados do begin
           If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_FOB.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
              ProcessosDOC.FieldByName('Taxa_FOB').AsFloat := Cotacao.FieldByName('Valor').AsFloat;
           End;
      End;
end;

procedure TProcesso_Exportacao.DBEdit11Change(Sender: TObject);
begin
      With Dados do begin
           If (ProcessosDOC.State = dsInsert) or (ProcessosDOC.State = dsEdit) then
              ProcessosDOCFOB.Value := (ProcessosDOCFOB_ME.AsCurrency * ProcessosDOCTaxa_FOB.AsFloat);
      End;
end;

procedure TProcesso_Exportacao.lCondicaoPgtoClick(Sender: TObject);
begin
       Cadastro_CondicaoCambial         := TCadastro_CondicaoCambial.Create(Self);
       Cadastro_CondicaoCambial.Caption := Caption;
       Cadastro_CondicaoCambial.ShowModal;
       Dados.CondicaoCambial.Open;
end;

procedure TProcesso_Exportacao.TotalizaDespesas;
begin
      Screen.Cursor := crSQLWait;

      With Dados do Begin
           ProcessosHistorico.SQL.Clear;
           ProcessosHistorico.SQL.Add('SELECT * FROM ProcessosHistorico WHERE (Processo = :pProcesso)');
           ProcessosHistorico.SQL.Add('ORDER BY Data, Hora DESC');
           ProcessosHistorico.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           ProcessosHistorico.Open;

           // Seleciona as despesas do processo.
//           Grade.DisableScroll;
           PagarReceber.SQL.Clear;
           PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Processo = :pProcesso) AND (ISNULL(Processo, '''') <> '''') ORDER BY Classificacao');
           PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           PagarReceber.Open;
           PagarReceber.First;
//           Grade.EnableScroll;

           // Totaliza as despesas do processo.
           tSoma.SQL.Clear;
           If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
              tSoma.SQL.Add('SELECT SUM(CASE WHEN Tipo = ''P'' THEN Valor_Total ELSE 0 END) AS Total_Despesas,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''R'' THEN Valor_Total ELSE 0 END) AS Total_Recebimentos,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND CustoConta     = 1 THEN Valor_Total ELSE 0 END) AS Total_Custo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Seletivo = 1 THEN Valor_Total ELSE 0 END) AS Total_Seletivo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Entrada  = 1 THEN Valor_Total ELSE 0 END) AS Total_Entrada,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Outros   = 1 THEN Valor_Total ELSE 0 END) AS Total_Outros');
           end else begin
              tSoma.SQL.Add('SELECT SUM(CASE WHEN Tipo = ''P'' THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Despesas,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''R'' THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Recebimentos,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND CustoConta     = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Custo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Seletivo = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Seletivo,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Entrada  = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Entrada,');
              tSoma.SQL.Add('       SUM(CASE WHEN Tipo = ''P'' AND Custo_Outros   = 1 THEN Valor_Total+ISNULL(Desconto, 0) ELSE 0 END) AS Total_Outros');
           End;
           tSoma.SQL.Add('FROM   PagarReceber WHERE(Processo = :pProcesso)');
           tSoma.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
           tSoma.Open;

           cTotalDespesasEntrada.Value   := tSoma.FieldByName('Total_Entrada').AsCurrency;
           cTotalDespesasCusto2.Value    := tSoma.FieldByName('Total_Custo').AsCurrency;
           cTotalDespesasOutros2.Value   := tSoma.FieldByName('Total_Outros').AsCurrency;
           cTotalDespesasSeletivo2.Value := tSoma.FieldByName('Total_Seletivo').AsCurrency;
           cPagamentos.Value             := tSoma.FieldByName('Total_Despesas').AsCurrency;
           cRecebimentos.Value           := tSoma.FieldByName('Total_Recebimentos').AsCurrency;
           {
           ProcessosTexto.SQL.Clear;
           ProcessosTexto.SQL.Add('SELECT *');
           ProcessosTexto.SQL.Add('FROM   ProcessosTexto');
           ProcessosTexto.SQL.Add('WHERE  Processo = :pProcesso');
           ProcessosTexto.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
           ProcessosTexto.Open;
           }
      End;

      Screen.Cursor := crDefault;
end;

procedure TProcesso_Exportacao.bItensClick(Sender: TObject);
begin
     if trim(Dados.ProcessosDOCProforma_Numero.AsString) = '' then begin
        MessageDlg('Não foi informado o número da Proforma no processo.'+#13+#13'Informe o número da proforma no processo para poder adicionar os itens.', mtError, [mbOK], 0);
        Navega.BtnClick(nbCancel);
        Abort;
     end;
     Proforma_Itens := TProforma_Itens.Create(Self);
     Proforma_Itens.Caption := Caption;
     Proforma_Itens.ShowModal;
end;

procedure TProcesso_Exportacao.bPesquisaClick(Sender: TObject);
var
   mPesquisa:String;
begin
      mPesquisa := UpperCase(InputBox('Pesquisa de processos', 'PROCESSO/DE/BL/CONTAINER/Obs.',mPesquisa));
      With Dados do begin
           If ProcessosDOC.Locate('Processo', mPesquisa, [loPartialKey]) = False then begin
              If ProcessosDOC.Locate('Numero_Declaracao', mPesquisa, [loCaseInsensitive]) = False then begin
                 If ProcessosDOC.Locate('Numero_DOC', mPesquisa, [loCaseInsensitive]) = False then begin
                    If ProcessosDOC.Locate('Container_Numero', mPesquisa, [loCaseInsensitive]) = False then begin
                       If ProcessosDOC.Locate('Observacao', mPesquisa, [loCaseInsensitive]) = False then begin
                          ShowMessage('Nenhum "PROCESSO, DE, BL CONTAINER ou Observação" encontrados com este número!');
                          Abort;
                       End
                     End;
                 End;
              End;
           End;
      end;
end;

procedure TProcesso_Exportacao.cProcessoChange(Sender: TObject);
begin
       if Dados.ProcessosDOC.State = dsBrowse then begin
          tSoma.SQL.Clear;
          tSoma.SQL.Add('SELECT COUNT(*) AS Itens FROM ProformaItens WHERE Proforma = :pProforma');
          tSoma.ParamByName('pProforma').AsString := Dados.ProcessosDOCProforma_Numero.Value;
          tSoma.Open;
          bItens.Caption := '&Itens ('+tSoma.FieldByName('Itens').AsString+')';
          tSoma.Close;
       end;
end;

procedure TProcesso_Exportacao.cProformaExit(Sender: TObject);
begin
      if Trim(Dados.ProcessosDOCNumero_Fatura.AsString) = '' then begin
         Dados.ProcessosDOCNumero_Fatura.Value := Dados.ProcessosDOCProforma_Numero.AsString;
      end;
end;

procedure TProcesso_Exportacao.StaticText51Click(Sender: TObject);
begin
       Cadastro_Clientes := TCadastro_Clientes.Create(Self);
       Cadastro_Clientes.Caption := Caption;
       Cadastro_Clientes.ShowModal;
       Dados.ProcessosDOCNotificar.Value := Menu_Principal.mMem_Cliente;
       Dados.Clientes.Open;
end;

procedure TProcesso_Exportacao.bDUEClick(Sender: TObject);
var
   nDeclaration
  ,nDeclarationNFe
  ,nWarehouse
  ,nAdditionalInformation
  ,nDeclarationOffice: IXMLNode;
begin
     mXML.Clear;

     with Dados do begin
          with XML do begin
               Active   := true;
               Version  := '1.0';
               Encoding := 'UTF-8';

               nDeclaration := AddChild('Declaration');
               DocumentElement.Attributes['xmlns:ds']           := 'urn:wco:datamodel:WCO:GoodsDeclaration_DS:1';
               DocumentElement.Attributes['xmlns']              := 'urn:wco:datamodel:WCO:GoodsDeclaration:1';
               DocumentElement.Attributes['xmlns:xsi']          := 'http://www.w3.org/2001/XMLSchema-instance';
               DocumentElement.Attributes['xsi:schemaLocation'] := 'urn:wco:datamodel:WCO:GoodsDeclaration:1 GoodsDeclaration_1p0_DUE.xsd';

               nDeclarationNFe    := nDeclaration.AddChild('DeclarationNFe');
               nDeclarationOffice := nDeclarationNFe.AddChild('DeclarationOffice');
               nDeclarationOffice.AddChild('ID').Text        := ProcessosDoc.FieldByName('URF_Despacho').AsString;

               nWarehouse := nDeclarationOffice.AddChild('Warehouse');
               nWareHouse.AddChild('ID').Text       := '7911101';
               nWareHouse.AddChild('TypeCode').Text := '281';

               nAdditionalInformation := nDeclarationNFe.AddChild('DeclarationOffice');
               nAdditionalInformation.AddChild('StatementCode').Text     := '1001';
               nAdditionalInformation.AddChild('StatementTypeCode').Text := 'CUS';



      {
       // A - Dados da Nota Fiscal eletrônica
       NodeNivelA := DocumentElement;
       // Adiciona a Tag
       NodeNivelA.AddChild('infNFe');
       // Adiciona atributo "Id" da Tag anterior
       NodeNivelA.ChildNodes['infNFe'].Attributes['Id'] := 'NFe31232131232132131231221312312312';
       // Adiciona atributo "versao" da Tag anterior
       NodeNivelA.ChildNodes['infNFe'].Attributes['versao'] := '1.10';
      }
          end;
     end;

mXML.Lines.Add(XML.XML.Text);
mXML.Lines.SaveToFile('c:\temp\Due.xml');
ShellExecute(Handle, 'Open', PChar('c:\temp\due.xml'), '', '', SW_ShowNormal);

end;
procedure TProcesso_Exportacao.GradeListaCellClick(Column: TColumn);
begin
     TotalizaDespesas;
end;

procedure TProcesso_Exportacao.mnMarcarCustoEntradaClick(Sender: TObject);
begin
      with Dados do begin
           if MessageDlg('Deseja acrecentar esta despesa ao custo de entrada da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Entrada.Value  := true;
                           PagarReceberCusto_Seletivo.Value := false;
              PagarReceber.Post;
           end;
      end;
      TotalizaDespesas;
end;

procedure TProcesso_Exportacao.mnDesmarcarCustoEntradaClick(Sender: TObject);
begin
      with Dados do begin
           if MessageDlg('Deseja remover esta despesa do Custo de Entrada da Mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Entrada.Value := False;
              PagarReceber.Post;
           end;
      end;
      TotalizaDespesas;
end;

procedure TProcesso_Exportacao.mnMarcarCustoTodosEntradaClick(Sender: TObject);
begin
      if MessageDlg('Deseja selecionar todas as despesas como Custo de Entrada da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
         with Dados do begin
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Entrada = 1, Custo_Seletivo = 0 WHERE(Processo = :pProcesso) ');
              PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
              PagarReceber.Execute;
              TotalizaDespesas;
         end;
      end;
end;

procedure TProcesso_Exportacao.mnDesmarcarCustoTodosEntradaClick(Sender: TObject);
begin
     if MessageDlg('Deseja remover todas as despesas do Custo de Entrada da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
        with Dados do begin
             PagarReceber.SQL.Clear;
             PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Entrada = 0 WHERE(Processo = :pProcesso) ');
             PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
             PagarReceber.Execute;

             TotalizaDespesas;
        end;
     end;
end;

procedure TProcesso_Exportacao.mnMarcarCustoClick(Sender: TObject);
begin
      with Dados do begin
           if MessageDlg('Deseja acrecentar esta despesa do custo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCustoConta.Value     := true;
                           PagarReceberCusto_Seletivo.Value := false;
              PagarReceber.Post;
           end;
      end;
      TotalizaDespesas;
end;

procedure TProcesso_Exportacao.mnDesmarcarCustoClick(Sender: TObject);
begin
      with Dados do begin
           if MessageDlg('Deseja remover esta despesa do custo Geral da Mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCustoConta.Value := False;
              PagarReceber.Post;
           end;
      end;

      TotalizaDespesas;
end;

procedure TProcesso_Exportacao.mnMarcarCustoTodosClick(Sender: TObject);
begin
      if MessageDlg('Deseja selecionar todas as despesas como custo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
         with Dados do begin
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET CustoConta = 1, Custo_Seletivo = 0 WHERE(Processo = :pProcesso) ');
              PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
              PagarReceber.Execute;

              TotalizaDespesas;
         end;
      end;
end;

procedure TProcesso_Exportacao.mnDesmarcarCustoTodosClick(Sender: TObject);
begin
     if MessageDlg('Deseja remover todas as despesas do custo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
        with Dados do begin
             PagarReceber.SQL.Clear;
             PagarReceber.SQL.Add('UPDATE PagarReceber SET CustoConta = 0 WHERE(Processo = :pProcesso) ');
             PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
             PagarReceber.Execute;

             TotalizaDespesas;
        end;
     end;
end;

procedure TProcesso_Exportacao.mnMarcarCustoOutrosClick(Sender: TObject);
begin
      with Dados do begin
           if MessageDlg('Deseja acrecentar esta despesa ao custo (Outros)?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Outros.Value  := true;
              PagarReceber.Post;
           end;
      end;

      TotalizaDespesas;
end;

procedure TProcesso_Exportacao.mnDesmarcarCustoOutrosClick(Sender: TObject);
begin
      with Dados do begin
           if MessageDlg('Deseja remover esta despesa do Custo (Outros)?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Outros.Value := False;
              PagarReceber.Post;
           end;
      end;

      TotalizaDespesas;
end;

procedure TProcesso_Exportacao.mnMarcarCustoTodosOutrosClick(Sender: TObject);
begin
      if MessageDlg('Deseja selecionar todas as despesas como Custo (Outros)?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
         with Dados do begin
//              Grade.DisableScroll;
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Outros = 1 WHERE(Processo = :pProcesso) ');
              PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
              PagarReceber.Execute;

              TotalizaDespesas;
         end;
      end;
end;

procedure TProcesso_Exportacao.mnDesmarcarCustoTodosOutrosClick(Sender: TObject);
begin
     if MessageDlg('Deseja remover todas as despesas do Custo (Outros)?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
        with Dados do begin
             PagarReceber.SQL.Clear;
             PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Outros = 0 WHERE(Processo = :pProcesso) ');
             PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
             PagarReceber.Execute;

             TotalizaDespesas;
        end;
     end;
end;

procedure TProcesso_Exportacao.mnMarcarSeletivoClick(Sender: TObject);
begin
      with Dados do begin
           If MessageDlg('Deseja adicionar esta despesa do Custo Seletivo da Mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Seletivo.Value := true;
                           PagarReceberCustoConta.Value     := false;
                           PagarReceberCusto_Entrada.Value  := false;
              PagarReceber.Post;
           end;
      end;
      TotalizaDespesas;
end;

procedure TProcesso_Exportacao.mnDesmarcarSeletivoClick(Sender: TObject);
begin
      with Dados do begin
           if MessageDlg('Deseja remover esta despesa do Custo Seletivo da Mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
              PagarReceber.Edit;
                           PagarReceberCusto_Seletivo.Value := false;
              PagarReceber.Post;
           end;
      end;
      TotalizaDespesas;
end;

procedure TProcesso_Exportacao.mnMarcarSeletivoTodosClick(Sender: TObject);
begin
      if MessageDlg('Deseja selecionar todas as despesas como Custo Seletivo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
         with Dados do begin
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Seletivo = 1, CustoConta = 0, Custo_Entrada = 0 WHERE(Processo = :pProcesso) ');
              PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
              PagarReceber.Execute;

              TotalizaDespesas;
         end;
      end;
end;

procedure TProcesso_Exportacao.mnDesmarcarSeletivoTodosClick(Sender: TObject);
begin
     if MessageDlg('Deseja remover todas as despesas do Custo Seletivo da mercadoria?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
        with Dados do begin
             PagarReceber.SQL.Clear;
             PagarReceber.SQL.Add('UPDATE PagarReceber SET Custo_Seletivo = 0 WHERE(Processo = :pProcesso) ');
             PagarReceber.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
             PagarReceber.Execute;

             TotalizaDespesas;
        end;
     end;
end;

procedure TProcesso_Exportacao.bContasClick(Sender: TObject);
begin
     if messagedlg('Atenção!'+#13+'Isso ira criar as contas no plano de contas caso não existam.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
        screen.Cursor  := crSqlWait;
        Panel1.Enabled := false;

        // Abre as contas do processo no plano de contas se estiver parâmetrizado nos tipos de processo.
        with Dados, TiposProcesso do begin
             sql.clear;
             sql.Add('select * from TiposProcesso where Exportacao = 1 order by Codigo');
             Open;
        end;

        SalvaConta(1);
        SalvaConta(2);
        SalvaConta(3);

        Panel1.Enabled := true;
        screen.Cursor := crDefault;
     end;
end;

procedure TProcesso_Exportacao.SalvaConta(Campo: integer);
var
    mTerceiros
   ,mnat
   ,mConta: string;
begin
      with Dados, dmContab do begin
           with tContaPlano do begin
                sql.Clear;
                sql.Add('select * from PlanoContas where Codigo = :pCodigo' );
                if Campo = 1 then
                   ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_Despesas').asstring;
                if Campo = 2 then
                   ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_Impostos').asstring;
                if Campo = 3 then
                   ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_Adiantamento').asstring;
                Open;
           end;
           if tContaPlano.RecordCount > 0 then begin
              mNat       := tContaPlano.FieldByName('Natureza').AsString;
              mTerceiros := UpperCase(Trim(tContaPlano.FieldByName('Tipo_Terceiros').AsString));
              mConta     := tContaPlano.FieldByName('Conta').AsString;

              // Pegando o número da última conta criada.
              tContaPlano.SQL.Clear;
              tContaPlano.SQL.Add('select max(cast(Conta as bigint)) as Conta from PlanoContas where (Conta like :pGrupo)' );
              tContaPlano.ParamByName('pGrupo').AsString := mConta;
              tContaPlano.Open;

              if Configuracao.FieldByName('Contab_ContaNova').AsBoolean then
                 mConta := inttostr(tContaPlano.FieldByName('Conta').asinteger + 1)
              else
                 mConta := tContaPlano.FieldByName('Conta').AsString;

              tContaPlano.SQL.Clear;
              tContaPlano.SQL.Add('select Codigo, Conta from PlanoContas where Conta like :pConta and Descricao like :pDesc' );
              tContaPlano.ParamByName('pConta').AsString := AnsiString(mConta);
              tContaPlano.ParamByName('pDesc').AsString  := 'PROCESSO '+trim(ProcessosDOCProcesso.AsString);
              tContaPlano.Open;

              if tContaPlano.RecordCount = 0 then begin
                 // Pegando o número do último código criado no (Plano Principal/Terceiros).
                 tCodigoPlano.SQL.Clear;
                 tCodigoPlano.SQL.Add('select isnull(max(cast(Codigo as int)), 0)+1 as Codigo from PlanoContas where substring(Conta, 1, 1) = :pConta');
                 tCodigoPlano.ParamByName('pConta').AsString := Copy(mConta, 1, 1);
                 tCodigoPlano.Open;

                 PlanoContas.Append;
                             PlanoContasConta.Value             := AnsiString(mConta);
                             PlanoContasCodigo.Value            := tCodigoPlano.FieldByName('Codigo').AsAnsiString;
                             PlanoContasDescricao.Value         := 'PROCESSO '+trim(ProcessosDOCProcesso.AsString);
                             PlanoContasSaldo_Anterior.Value    := 0;
                             PlanoContasDebito.Value            := 0;
                             PlanoContasCredito.Value           := 0;
                             PlanoContasSintetica.Value         := False;
                             PlanoContasNatureza.AsString       := mNat;
                             PlanoContasLALUR.Value             := False;
                             PlanoContasMostrar_Balanco.Value   := False;
                             PlanoContasImprimir_Razao.Value    := False;
                             PlanoContasEmpresa.Value           := EmpresasCNPJ.asstring;
//                             PlanoContasAtualiza_Anterior.Value := 0;
//                             PlanoContasAtualiza_Debito.Value   := 0;
//                             PlanoContasAtualiza_Credito.Value  := 0;
                             PlanoContasData_Inclusao.Value     := Date;
                             PlanoContasOrigem.Value            := PlanoContasOrigem.Value;
                             PlanoContasCodigo_Terceiros.Value  := ProcessosDOC.FieldByName('Processo').AsAnsiString;
                             PlanoContasGrupo.Value             := Copy(PlanoContasConta.Value, 1, 1);
                             PlanoContasTipo_Terceiros.Value    := 'PR';
                             PlanoContasCNPJ_CPF.AsString       := '';
                             PlanoContasPessoa.Value            := '';
                             PlanoContasSelecao.Value           := false;
                             PlanoContasConta_Resultado.Value   := false;
                             PlanoContasDRE.Value               := false;
                             PlanoContasNivel.Value             := NivelConta(AnsiString(mConta), EmpresasMascara_PlanoContas.AsString);
                             PlanoContasConta_Grupo.value       := GrupoConta(AnsiString(mConta), EmpresasMascara_PlanoContas.AsString, PlanoContasNivel.AsInteger);
                 PlanoContas.Post;

                 tCodigoPlano.Close;
                 tContaPlano.Close;

                 // Registra a conta aberta no plano, no cadastro do processo.
                 with ProcessosDOC do begin
                      edit;
                          if Campo = 1 then FieldByName('Conta_Despesas').Value     := PlanoContasCodigo.Value;
                          if Campo = 2 then FieldByName('Conta_Impostos').Value     := PlanoContasCodigo.Value;
                          if Campo = 3 then FieldByName('Conta_Adiantamento').Value := PlanoContasCodigo.Value;
                      Post;
                 end;
              end else begin
                 // Registra a conta aberta no plano, no cadastro do processo.
                 with ProcessosDOC do begin
                      edit;
                          if Campo = 1 then FieldByName('Conta_Despesas').Value     := tContaPlano.fieldbyName('Codigo').asstring;
                          if Campo = 2 then FieldByName('Conta_Impostos').Value     := tContaPlano.fieldbyName('Codigo').asstring;
                          if Campo = 3 then FieldByName('Conta_Adiantamento').Value := tContaPlano.fieldbyName('Codigo').asstring;
                      Post;
                 end;
              end;
           end;
      end;
end;


end.




