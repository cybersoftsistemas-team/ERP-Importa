unit frmUtilitarios_Importar_NFe_Terceiros;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mask, Vcl.ExtCtrls, DB, Grids, Vcl.ComCtrls, DBCtrls, Funcoes,
   DBAccess, MSAccess, DateUtils, Math, RxDBComb, XMLDoc,XMLIntf, Menus, ClipBrd, Maskutils, RxLookup, IniFiles, RxCurrEdit, MemDS, RxToolEdit, System.UITypes, Vcl.Buttons;

type
    TUtilitarios_Importar_NFe_Terceiros = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bImportar: TButton;
    cPasta: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cDadosNfe: TGroupBox;
    StaticText3: TStaticText;
    StaticText1: TStaticText;
    StaticText8: TStaticText;
    StaticText13: TStaticText;
    cdEmi: TMaskEdit;
    cdSaiEnt: TMaskEdit;
    StaticText4: TStaticText;
    GroupBox1: TGroupBox;
    StaticText12: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    TabSheet3: TTabSheet;
    ccNF: TMaskEdit;
    cNatOp: TMaskEdit;
    StaticText24: TStaticText;
    ccUF: TMaskEdit;
    cChave: TMaskEdit;
    cnNF: TMaskEdit;
    StaticText35: TStaticText;
    cmod: TMaskEdit;
    StaticText27: TStaticText;
    cSerie: TMaskEdit;
    StaticText32: TStaticText;
    ctpNF: TMaskEdit;
    StaticText34: TStaticText;
    ccMunFG: TMaskEdit;
    ccMunFGNome: TMaskEdit;
    StaticText36: TStaticText;
    ctpEmis: TMaskEdit;
    ctpEmisDesc: TMaskEdit;
    StaticText37: TStaticText;
    ctpAmb: TMaskEdit;
    StaticText38: TStaticText;
    cfinNFe: TMaskEdit;
    cfinNFeDesc: TMaskEdit;
    StaticText39: TStaticText;
    cprocEmi: TMaskEdit;
    cprocEmiDesc: TMaskEdit;
    StaticText40: TStaticText;
    cverProc: TMaskEdit;
    cNotas: TListBox;
    cCNPJ: TMaskEdit;
    cxNome: TMaskEdit;
    cxFant: TMaskEdit;
    cxLgr: TMaskEdit;
    cCpl: TMaskEdit;
    cNro: TMaskEdit;
    cxBairro: TMaskEdit;
    cMun: TMaskEdit;
    cxMun: TMaskEdit;
    cUF: TMaskEdit;
    cCEP: TMaskEdit;
    cPais: TMaskEdit;
    cxPais: TMaskEdit;
    cFone: TMaskEdit;
    StaticText2: TStaticText;
    cIE: TMaskEdit;
    GroupBox2: TGroupBox;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText26: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    StaticText33: TStaticText;
    cDestCNPJ: TMaskEdit;
    cDestxNome: TMaskEdit;
    cDestxLgr: TMaskEdit;
    cDestNro: TMaskEdit;
    cDestxBairro: TMaskEdit;
    cDestcMun: TMaskEdit;
    cDestxMun: TMaskEdit;
    cDestUF: TMaskEdit;
    cDestcPais: TMaskEdit;
    cDestxPais: TMaskEdit;
    cDestIE: TMaskEdit;
    TabSheet4: TTabSheet;
    GradeItens: TStringGrid;
    TabSheet5: TTabSheet;
    GroupBox3: TGroupBox;
    StaticText7: TStaticText;
    StaticText25: TStaticText;
    cBCICMS: TCurrencyEdit;
    cValorICMS: TCurrencyEdit;
    StaticText31: TStaticText;
    StaticText41: TStaticText;
    cBCICMSSub: TCurrencyEdit;
    cValorICMSSub: TCurrencyEdit;
    StaticText42: TStaticText;
    cProdutos: TCurrencyEdit;
    StaticText43: TStaticText;
    cFrete: TCurrencyEdit;
    StaticText44: TStaticText;
    cSeguro: TCurrencyEdit;
    StaticText45: TStaticText;
    cDesconto: TCurrencyEdit;
    StaticText46: TStaticText;
    cII: TCurrencyEdit;
    StaticText47: TStaticText;
    cIPI: TCurrencyEdit;
    StaticText48: TStaticText;
    cPIS: TCurrencyEdit;
    StaticText49: TStaticText;
    cCOFINS: TCurrencyEdit;
    StaticText50: TStaticText;
    cDespesas: TCurrencyEdit;
    StaticText51: TStaticText;
    cTotalNota: TCurrencyEdit;
    StaticText52: TStaticText;
    cIsentasIPI: TCurrencyEdit;
    StaticText53: TStaticText;
    cOutrasIPI: TCurrencyEdit;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    cIsentasICMS: TCurrencyEdit;
    cOutrasICMS: TCurrencyEdit;
    StaticText56: TStaticText;
    cCodigo: TMaskEdit;
    lFornecedor: TLabel;
    tCodigo: TMSQuery;
    tCodigoCodigo: TIntegerField;
    StaticText62: TStaticText;
    cBCIPI: TCurrencyEdit;
    StaticText63: TStaticText;
    cQtdeTotal: TCurrencyEdit;
    StaticText64: TStaticText;
    cLiquido: TCurrencyEdit;
    StaticText65: TStaticText;
    cPesoLiquido: TCurrencyEdit;
    StaticText66: TStaticText;
    cPesoBruto: TCurrencyEdit;
    cProtocolo: TMaskEdit;
    StaticText67: TStaticText;
    tProdutos: TMSQuery;
    GroupBox4: TGroupBox;
    StaticText57: TStaticText;
    cReferencia: TDBLookupComboBox;
    StaticText58: TStaticText;
    cTipoProduto: TDBLookupComboBox;
    StaticText59: TStaticText;
    cCentroCusto: TDBLookupComboBox;
    StaticText60: TStaticText;
    StaticText61: TStaticText;
    cProcesso: TComboBox;
    StaticText68: TStaticText;
    tContaPlano: TMSQuery;
    tCodigoPlano: TMSQuery;
    cRamoAtividade: TDBLookupComboBox;
    TabSheet6: TTabSheet;
    GradeCadastro: TStringGrid;
    tFaturamento: TMSQuery;
    cCIAP: TGroupBox;
    StaticText69: TStaticText;
    StaticText70: TStaticText;
    StaticText71: TStaticText;
    StaticText72: TStaticText;
    cCIAPTipo: TRxDBComboBox;
    cCIAPAliquota: TCurrencyEdit;
    cCIAPBCICMS: TCurrencyEdit;
    cCIAPValor: TCurrencyEdit;
    tProcuraProdutos: TMSQuery;
    dstProcuraProdutos: TDataSource;
    PopupMenu1: TPopupMenu;
    mnBuscar: TMenuItem;
    mnCancelar: TMenuItem;
    TabSheet7: TTabSheet;
    GradeAdicoes: TStringGrid;
    tProcuraDescricao: TMSQuery;
    tCustoMedio: TMSQuery;
    cOrigem: TRxDBLookupCombo;
    StaticText73: TStaticText;
    cTipoMercadoria: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    StaticText74: TStaticText;
    StaticText75: TStaticText;
    StaticText76: TStaticText;
    StaticText77: TStaticText;
    cLucro: TCurrencyEdit;
    cComissao: TCurrencyEdit;
    cCustoFinanceiro: TCurrencyEdit;
    StaticText78: TStaticText;
    cMargem: TCurrencyEdit;
    cCustoFixo: TCurrencyEdit;
    TabSheet8: TTabSheet;
    cPrecoVenda: TListBox;
    TabSheet9: TTabSheet;
    GradeReferencia: TStringGrid;
    tExiste: TMSQuery;
    TabSheet10: TTabSheet;
    GradeLote: TStringGrid;
    GroupBox6: TGroupBox;
    StaticText79: TStaticText;
    StaticText80: TStaticText;
    StaticText81: TStaticText;
    cLayLoteNum: TMaskEdit;
    cLayLoteFab: TMaskEdit;
    cLayLoteVal: TMaskEdit;
    tRegistro: TMSQuery;
    tDetalhe: TMSQuery;
    tItem: TMSQuery;
    tTotaliza: TMSQuery;
    tLancamento: TMSQuery;
    bSeriais: TButton;
    bLotes: TButton;
    TabSheet11: TTabSheet;
    cErros: TMemo;
    GroupBox7: TGroupBox;
    cEscala: TCheckBox;
    cSimples: TCheckBox;
    cZonaFranca: TCheckBox;
    cMEI: TCheckBox;
    N1: TMenuItem;
    cUnidade: TButton;
    cSubst: TCheckBox;
    StaticText82: TStaticText;
    bPesqNav: TSpeedButton;
    cNavio: TDBLookupComboBox;
    tTmp: TMSQuery;
    tTmp2: TMSQuery;
    cDI: TMaskEdit;
    StaticText83: TStaticText;
    StaticText84: TStaticText;
    cDataEnt: TDateEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Sel(Sender: TObject);
    procedure cNotasClick(Sender: TObject);
    procedure cReferenciaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cTipoProdutoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cCentroCustoKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cProcessoExit(Sender: TObject);
    procedure GradeCadastroDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure mnBuscarClick(Sender: TObject);
    procedure GradeCadastroClick(Sender: TObject);
    procedure cReferenciaClick(Sender: TObject);
    procedure GradeLoteDrawCell(Sender: TObject; ACol, ARow: Integer;Rect: TRect; State: TGridDrawState);    
    procedure LancamentoContabil;
    procedure ChecaConta(ContaD, ContaC: String);
    Function  MontaHistorico(Historico: integer): String;
    procedure bSeriaisClick(Sender: TObject);
    procedure bLotesClick(Sender: TObject);
    procedure LerXML;
    procedure cUnidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesqNavClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mArquivos:Array[0..1000] of String;
    mTamanho,
    mLinha: Integer;
    mAliquotaPIS,
    mAliquotaCOFINS: Real;
    mTipo,
    mContaDebito,
    mContaCredito,
    mPesquisa: String;
  end;

var
  Utilitarios_Importar_NFe_Terceiros: TUtilitarios_Importar_NFe_Terceiros;

implementation

uses frmDMFiscal, frmDMContab, frmDados, frmNotaFiscal_Terceiros, frmJanela_Processamento, frmMenu_Principal,
     frmUtilitarios_Importar_NFe_TerceirosSeriais, frmUtilitarios_Importar_NFe_TerceirosLotes, frmCadastro_UnidadeMedida, frmPesquisaGerais;
     
{$R *.dfm}

procedure TUtilitarios_Importar_NFe_Terceiros.bPesqNavClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ControleNavios';
      PesquisaGerais.mCampo  := 'Ordem';
      PesquisaGerais.mCampo2 := 'Navio';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and Status <> ''ENCERRADO'' ';
      PesquisaGerais.Showmodal;
      cNavio.keyvalue := strtointdef(Clipboard.AsText, 0);
end;

procedure TUtilitarios_Importar_NFe_Terceiros.bSairClick(Sender: TObject);
begin
     if trim(cnNF.Text) <> '' then begin
        if bImportar.Tag = 0 then begin
           tProdutos.SQL.Clear;
           tProdutos.SQL.Add('DELETE FROM ProdutosSeriais      WHERE Nota_Entrada = :pNota AND Data_Entrada = :pData AND ISNULL(Temp, 0) = 1');
           tProdutos.SQL.Add('DELETE FROM ProdutosSeriaisNotas WHERE ISNULL(Temp, 0) = 1 AND Nota = :pNota AND Data = :pData');
           tProdutos.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
           tProdutos.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
           tProdutos.Execute;
         end;
      end;
      Close;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   aINI:TIniFile;
begin
      // Apaga os registro de Lotes/Seriais que foram adicionados, mas que a NF não foi importada.
      if trim(cnNF.Text) <> '' then begin
         tProdutos.SQL.Clear;
         tProdutos.SQL.Add('DELETE FROM ProdutosSeriais WHERE Numero IN(SELECT DISTINCT Numero FROM ProdutosSeriaisNotas WHERE Nota = :pNota AND Data = :pData) AND Temp = 1');
         tProdutos.SQL.Add('DELETE ProdutosSeriaisNotas WHERE Nota = :pNota AND Data = :pData AND Temp = 1');
         tProdutos.SQL.Add('DELETE ProdutosDetalhe      WHERE Nota_Entrada = :pNota AND Data_Entrada = :pData AND Temp = 1');
         tProdutos.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
         tProdutos.ParamByName('pData').AsDate    := StrtoDate(cdEmi.Text);
         tProdutos.Execute;

         // Registrando as alíquotas untilizadas para ficar como default.
         aIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
         aINI.WriteFloat( 'IMPORTAR_NFE_TERCEIROS', 'Lucro'           , cLucro.Value);
         aINI.WriteFloat( 'IMPORTAR_NFE_TERCEIROS', 'Comissao'        , cComissao.Value);
         aINI.WriteFloat( 'IMPORTAR_NFE_TERCEIROS', 'Custo_Financeiro', cCustoFinanceiro.Value);
         aINI.WriteFloat( 'IMPORTAR_NFE_TERCEIROS', 'Custo_Fixo'      , cCustoFixo.Value);
         aINI.WriteFloat( 'IMPORTAR_NFE_TERCEIROS', 'Margem'          , cMargem.Value);
         aINI.Free;

         cnNF.SelectAll;
         cnNF.CopyToClipboard;
      end;
      Utilitarios_Importar_NFe_Terceiros.Release;
      Utilitarios_Importar_NFe_Terceiros := nil;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.FormShow(Sender: TObject);
Var
   I   : Integer;
   aINI: TIniFile;
begin
     Screen.Cursor := crSQLWait;

     // Carregando as ultimas alíquota da formação de preço utilizadas.
     aINI                   := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ImportaRelatorios.ini');
     cLucro.Value           := aINI.ReadFloat('IMPORTAR_NFE_TERCEIROS','Lucro'           , 0);
     cComissao.Value        := aINI.ReadFloat('IMPORTAR_NFE_TERCEIROS','Comissao'        , 0);
     cCustoFinanceiro.Value := aINI.ReadFloat('IMPORTAR_NFE_TERCEIROS','Custo_Financeiro', 0);
     cCustoFixo.Value       := aINI.ReadFloat('IMPORTAR_NFE_TERCEIROS','Custo_Fixo'      , 0);
     cMargem.Value          := aINI.ReadFloat('IMPORTAR_NFE_TERCEIROS','Margem'          , 0);
     aINI.Free;

     With Dados, dmFiscal, dmContab do begin
          Clientes.SQL.Clear;
          Clientes.SQL.Add('SELECT * FROM Clientes');
          Clientes.Open;

          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios');
          Municipios.Open;

          Unidades.SQL.Clear;
          Unidades.SQL.Add('SELECT * FROM UnidadeMedida ORDER BY Codigo');
          Unidades.Open;

          EnquadramentoIPI.SQL.Clear;
          EnquadramentoIPI.SQL.Add('SELECT * FROM EnquadramentoIPI');
          EnquadramentoIPI.Open;

          TipoProduto.SQL.Clear;
          TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
          TipoProduto.Open;

          RamoAtividade.SQL.Clear;
          RamoAtividade.SQL.Add('SELECT * FROM RamoAtividade ORDER BY Codigo');
          RamoAtividade.Open;

          CSTTabelaA.SQL.Clear;
          CSTTabelaA.SQL.Add('SELECT * FROM CSTTabelaA ORDER BY Codigo');
          CSTTabelaA.Open;

          CSTTabelaB.SQL.Clear;
          CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY Classificacao');
          CSTTabelaB.Open;

          CSTIPI.SQL.Clear;
          CSTIPI.SQL.Add('SELECT * FROM CSTIPI ORDER BY Codigo');
          CSTIPI.Open;

          NCM.SQL.Clear;
          NCM.SQL.Add('SELECT * FROM NCM ORDER BY NCM');
          NCM.Open;

          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT * FROM Produtos WHERE ISNULL(Desativado, 0) = 0');
          Produtos.Open;

          TipoItem.SQL.Clear;
          TipoItem.SQL.Add('SELECT * FROM TipoItem ORDER BY Descricao');
          TipoItem.Open;

          Impostos.SQL.Clear;
          Impostos.SQL.Add('SELECT * FROM Impostos');
          Impostos.Open;
          
          with ControleNavios do begin 
               sql.Clear;
               sql.Add('select *');
               sql.Add('from  ControleNavios');
               sql.Add('where  Status <> ''ENCERRADO''');
               sql.Add('order  by Navio');
               open;
          end;

          Configuracao.Open;

          cProcesso.Items := NotaFiscal_Terceiros.cProcesso.Items;
     End;

     For I := 0 to High(mArquivos) do begin
         If mArquivos[I] <> '' then cNotas.Items.Add(mArquivos[I]);
     End;
     
     cNotas.ItemIndex := 0;
     cNotasClick(Self);
     cPasta.ActivePageIndex := 0;
     cDataEnt.Date          := date;
     Screen.Cursor          := crDefault;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.Sel(Sender: TObject);
var
    mXML :Integer;
begin
     Janela_Processamento                    := TJanela_Processamento.Create(Self);
     Janela_Processamento.lProcesso.Caption  := 'Importando os arquivos XML...';
     Janela_Processamento.Progresso.Position := 0;
     Janela_Processamento.Top                := Janela_Processamento.Top - 100; 
     Janela_Processamento.Progresso.Max      := cNotas.Items.Count-1;
     Janela_Processamento.Show;
     with dmFiscal, Dados do begin
          NotasTerceiros.DisableControls;
          NotasTerceirosItens.DisableControls;
          Fornecedores.DisableControls;
          Produtos.DisableControls;
          NotasItensNavios.DisableControls;
          Detalhes.DisableControls;
          ProdutosDetalhe.DisableControls;
          ProcessosDOC.DisableControls;
          ProdutosSeriais.DisableControls;
          NCM.DisableControls;
          Imobilizado.DisableControls;
          FichaEstoque.DisableControls;
          FichaInventario.DisableControls;
          
          // Verifica se o período fiscal esta bloqueado.
          with tExiste do begin
               sql.clear;
               sql.add('select count(*) as Qtde from FechamentoFiscal where Ano = :pAno and Mes = :pMes and Fechado = 1');
               parambyName('pAno').AsInteger := YearOf(Date);
               parambyName('pMes').AsInteger := MonthOf(Date);
               open;
          end;
          if tExiste.FieldByName('Qtde').AsInteger > 0 then begin
             MessageDlg('Nota Fiscal não pode ser importada!'+#13+#13+'Nota Fiscal esta dentro de um período bloqueado!', mtError, [mbOK], 0);
             Abort;
          end;
          // Verifica o último período contabil encerrado.
          if StrtoDate(cdSaiEnt.Text) <= EmpresasUltimo_Encerramento.Value then begin
             MessageDlg('Lançamento inválido!'+#13+#13+'Data da entrada da nota fiscal é maior que o último período contabil encerrado.'+#13+#13+'O último período encerrado foi '+EmpresasUltimo_Encerramento.AsString+'.', mtError, [mbOK], 0);
             Abort;
          end;
     end;
     if cNotas.Items.Count > 1 then begin
        // Em caso de importação de mais de um XML simultãneo.
        for mXML := 0 to cNotas.Items.Count-1 do begin
            cNotas.ItemIndex := mXML;
            Application.ProcessMessages;
            cNotasClick(Self);
            LerXML;
            
            Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
            Application.ProcessMessages;
        end;
     end else begin
        // Em caso de importação de apenas um XML (para não recarregar os codigo de amarração alterados pelo usuãrio).
        LerXML;
     end;
     Janela_Processamento.Close;
     
     with dmFiscal, Dados do begin
          NotasTerceiros.EnableControls;
          NotasTerceirosItens.EnableControls;
          Fornecedores.EnableControls;
          Produtos.EnableControls;
          NotasItensNavios.EnableControls;
          Detalhes.EnableControls;
          ProdutosDetalhe.EnableControls;
          ProcessosDOC.EnableControls;
          ProdutosSeriais.EnableControls;
          NCM.EnableControls;
          Imobilizado.EnableControls;
          FichaEstoque.EnableControls;
          FichaInventario.EnableControls;
     end;
     MessageDlg('Nota Fiscal de terceiros importada!', mtInformation, [mbOK], 0);
end;

procedure TUtilitarios_Importar_NFe_Terceiros.LerXML;
Var
    mQtdeItem,
    mReg, i: Integer;
    mConta,
    mCod,
    mGrupo: String;
    mErro : Boolean;
    mCSLL,
    mIRPJ,
    mSaldo,
    mFator:Real;
begin
      With Dados, dmFiscal, dmContab do begin
           // Verifica se o CNPJ do dedstinatário do XML é o mesmo da Empresa em uso.
           If cDestCNPJ.Text <> EmpresasCNPJ.AsString then begin
              cPasta.ActivePageIndex := 2;
              MessageDlg('Erro de CNPJ!'+#13+#13+'CNPJ da Nota Fiscal (NF-e) não confere com o CNPJ da empresa.'+#13+#13+
                         'Nota Fiscal: '+FormatMaskText('##.###.###/####-##;0',cDestCNPJ.Text)+#13+
                         '    Empresa: '+FormatMaskText('##.###.###/####-##;0',EmpresasCNPJ.AsString)+#13+#13+
                         'Nota Fiscal não será importada.', mtError,[mbOK], 0);
              Abort;
           end;

           // Obriga a parametrização de todos os produtos se marcado na referência fiscal.
           mErro := False;
           If ReferenciasFiscaisRelaciona_Produtos.AsBoolean = true then begin
              mQtdeItem := 1;
              While mQtdeItem <= GradeItens.RowCount do begin
                    If (Trim(GradeCadastro.Cells[3,mQtdeItem]) = '') and (Trim(GradeCadastro.Cells[0,mQtdeItem]) <> '') then begin
                       MessageDlg('Erro!'+#13+#13+'Para esta Referência Fiscal é Obrigatório Relacionar todos os produtos.', mtError, [mbOK], 0);
                       mErro := true;
                       Break;
                    End;
                    Inc(mQtdeItem);
              End;
              If mErro then Abort;
           End;

           // Obriga a parametrização das adições para todos os produtos se marcado na referência fiscal.
           mErro := False;
           If ReferenciasFiscaisRelaciona_Produtos.AsBoolean = true then begin
              mQtdeItem := 1;
              While mQtdeItem <= GradeItens.RowCount do begin
                    If (Trim(GradeCadastro.Cells[3,mQtdeItem]) = '') and (Trim(GradeCadastro.Cells[0,mQtdeItem]) <> '') then begin
                       MessageDlg('Erro!'+#13+#13+'Para esta Referência Fiscal é Obrigatório Relacionar todos os produtos.', mtError, [mbOK], 0);
                       mErro := true;
                       Break;
                    End;
                    Inc(mQtdeItem);
              End;
              If mErro then Abort;
           End;

           // Obriga o cadastro dos Seriais/Lotes para todos os produtos se marcado no cadastro para obrigar seriais.
           mErro     := False;
           mQtdeItem := 1;
           cErros.Clear;
           while mQtdeItem <= GradeItens.RowCount do begin
                 if Trim(GradeCadastro.Cells[3,mQtdeItem]) <> '' then begin
                    if Produtos.Locate('Codigo', Trim(GradeCadastro.Cells[3,mQtdeItem]), [loCaseInsensitive]) then begin
                       // Seriais.
                       if ProdutosSerial_Obrigatorio.AsBoolean then begin
                          tTotaliza.SQL.Clear;
                          tTotaliza.SQL.Add('SELECT COUNT(*) AS Qtde FROM ProdutosSeriaisNotas WHERE Produto_Codigo = :pProduto AND Nota = :pNota AND Data = :pData AND ISNULL(Temp, 0) = 1');
                          tTotaliza.ParamByName('pProduto').AsInteger := StrtoInt(GradeCadastro.Cells[3,mQtdeItem]);
                          tTotaliza.ParamByName('pNota').AsInteger    := StrtoInt(cnNF.Text);
                          tTotaliza.ParamByName('pData').AsDate       := StrtoDate(cdEmi.Text);
                          tTotaliza.Open;

                          if StrtoFloat(GradeCadastro.Cells[6,mQtdeItem]) <> tTotaliza.FieldByName('Qtde').AsInteger then begin
                             cErros.Lines.Add('ITEM :'+GradeCadastro.Cells[0,mQtdeItem]+ '  Quantidade de Seriais informados inválida > QTDE NF:'+GradeCadastro.Cells[6,mQtdeItem]+ '  INFORMADO:'+tTotaliza.FieldByName('Qtde').AsString);
                             mErro  := true;
                          end;
                       end;

                       // Lotes.
                       if ProdutosLote_Obrigatorio.AsBoolean then begin
                          if StrtoFloat(GradeCadastro.Cells[6,mQtdeItem]) <> StrtoFloat(GradeCadastro.Cells[8,mQtdeItem]) then begin
                             cErros.Lines.Add('ITEM :'+GradeCadastro.Cells[0,mQtdeItem]+ '  Quantidade de Lotes informados inválida > QTDE NF:'+GradeCadastro.Cells[6,mQtdeItem]+ '  INFORMADO:'+GradeCadastro.Cells[8,mQtdeItem]);
                             mErro  := true;
                          end;
                       end;
                    end;
                 end;
                 Inc(mQtdeItem);
           end;

           If mErro then begin
              MessageDlg('Erro!'+#13+#13+'Existem erros que precisam ser corrigidos antes de importar esta nota fiscal.', mtError, [mbOK], 0);
              cPasta.ActivePageIndex := 10;
              Abort;
           end;   

           // Verifica se há algum produto desativado no relacionamento.
           mErro     := False;
           mQtdeItem := 1;
         
           While mQtdeItem <= GradeItens.RowCount do begin
                 If Trim(GradeCadastro.Cells[03,mQtdeItem]) <> '' then begin
                    tProcuraProdutos.SQL.Clear;
                    tProcuraProdutos.SQL.Add('SELECT Codigo');
                    tProcuraProdutos.SQL.Add('FROM   Produtos');
                    tProcuraProdutos.SQL.Add('WHERE  Codigo = :pCodigo AND Desativado = 1');
                    tProcuraProdutos.ParamByName('pCodigo').AsInteger := StrtoInt(GradeCadastro.Cells[03,mQtdeItem]);
                    tProcuraProdutos.Open;
                    If tProcuraProdutos.RecordCount > 0 then begin
                       mErro := true;
                       Break;
                    End;
                 End;
                 Inc(mQtdeItem);
           End;

           If mErro then begin
              MessageDlg('Erro!'+#13+#13+'Existe produto(s) informado(s) no relacionamento que estão desabilitado(s) no cadastro de produtos.', mtError, [mbOK], 0);
              Abort;
           End;

           // Verifica se todas as aliquota de PIS/COFINS existem na tabela de majoração.
           if ReferenciasFiscaisApuracao_PISCOFINS.AsBoolean then begin
              mCod      := '';
              mQtdeItem := 1;
              while mQtdeItem <= GradeItens.RowCount do begin
                    if Trim(GradeItens.Cells[0,mQtdeItem]) <> '' then begin
                       // Verificando PIS.
                       if Pos(GradeItens.Cells[37,mQtdeItem], mCod) = 0 then begin
                          Majoracao.SQL.Clear;
                          Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''T'' AND Descricao = ''PIS'' AND Majorada = :pAliquota');
                          Majoracao.ParamByName('pAliquota').AsFloat := StrtoFloat(GradeItens.Cells[37,mQtdeItem]);
                          Majoracao.Open;
                          if Majoracao.RecordCount = 0 then begin
                             mCod := mCod + '     Item: '+GradeItens.Cells[00,mQtdeItem]+'  Produto: '+GradeItens.Cells[01,mQtdeItem]+'          Aliquota PIS: '+GradeItens.Cells[37,mQtdeItem]+'  :'+GradeItens.Cells[02,mQtdeItem]+#13;
                          end;
                       end;

                       // Verificando COFINS.
                       if Pos(GradeItens.Cells[41,mQtdeItem], mCod) = 0 then begin
                          Majoracao.SQL.Clear;
                          Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''T'' AND Descricao = ''COFINS'' AND Majorada = :pAliquota');
                          Majoracao.ParamByName('pAliquota').AsFloat := StrtoFloat(GradeItens.Cells[41,mQtdeItem]);
                          Majoracao.Open;
                          if Majoracao.RecordCount = 0 then begin
                             mCod := mCod + '     Item: '+GradeItens.Cells[00,mQtdeItem]+'  Produto: '+GradeItens.Cells[01,mQtdeItem]+ '  Aliquota COFINS: '+GradeItens.Cells[41,mQtdeItem]+'  :'+GradeItens.Cells[02,mQtdeItem]+#13;
                          end;
                       end;
                    end;
                    Inc(mQtdeItem);
              end;
           end;

           if Trim(mCod) <> '' then begin
              MessageDlg('Erro de aliquota de PIS/COFINS!'+#13+#13+
                         'As seguintes alíquotas não foram encontrada na tabela de PIS/COFINS'+#13+#13+mCod+#13+
                         'Nota Fiscal não será importada.', mtError, [mbOK], 0);
              Abort;
           end;

           // Obriga o cadastro das unidades de medida não encontradas.
           mErro     := False;
           mQtdeItem := 1;
           while mQtdeItem <= GradeItens.RowCount do begin
                 if Trim(GradeItens.Cells[7,mQtdeItem]) <> '' then begin
                    if not Unidades.Locate('Codigo', Trim(GradeItens.Cells[7,mQtdeItem]), [loCaseInsensitive]) then begin
                       if not Unidades.Locate('Descricao', Trim(GradeItens.Cells[7,mQtdeItem]), [loCaseInsensitive]) then begin
                          mErro := true;
                          cErros.Lines.Add('ITEM :'+GradeItens.Cells[0,mQtdeItem]+ '  Unidade de Medida não encontrada: Código ('+GradeItens.Cells[7,mQtdeItem]+')');
                       end;
                    end;
                 end;
                 Inc(mQtdeItem);
           end;
           
           if mErro then begin
              MessageDlg('Erro!'+#13+#13+'Existem erros que precisam ser corrigidos antes de importar esta nota fiscal.', mtError, [mbOK], 0);
              cPasta.ActivePageIndex := 10;
              Abort;
           end;

           NotasTerceiros.SQL.Clear;
           NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE (Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
           NotasTerceiros.ParamByName('pNota').AsInteger       := StrtoInt(cnNF.Text);
           NotasTerceiros.ParamByName('pData').AsDate          := StrtoDate(cdEmi.Text);
           NotasTerceiros.ParamByName('pFornecedor').AsInteger := FornecedoresCodigo.Value;
           NotasTerceiros.Open;

           If Trim(cReferencia.Text) = '' then begin
              MessageDlg('Referência fiscal não informada!', mtInformation, [mbOK], 0);
              cReferencia.SetFocus;
              Abort;
           End;

           If cRamoAtividade.KeyValue = -1 then begin
              MessageDlg('Ramo de atividade do fornecedor não informado!', mtInformation, [mbOK], 0);
              cRamoAtividade.SetFocus;
              Abort;
           End;

           If Trim(cOrigem.Text) = '' then begin
              MessageDlg('Origem da mercadoria não informado!', mtInformation, [mbOK], 0);
              cOrigem.SetFocus;
              Abort;
           End;

           If NotasTerceiros.RecordCount > 0 then begin
              if not cSubst.checked then begin
                 If MessageDlg('Ja existe uma nota fiscal cadastrada com este número nesta data deste fornecedor.'+#13+#13+
                               'Deseja substituir a nota fiscal existente?', mtInformation, [mbYes, mbNo], 0) = mrNo then begin
                    Abort;
                 End;
              end;
              NotasTerceiros.Edit;
           end else begin
              NotasTerceiros.Append;
           End;

           // Cadastra o fornecedor se não encontrado.
           If Trim(cCodigo.Text) = '0' then begin
              Fornecedores.Append;
                           tCodigo.Open;
                           FornecedoresCodigo.Value             := tCodigoCodigo.Value+1;
                           tCodigo.Close;
                           FornecedoresNome.Value               := cxNome.Text;
                           FornecedoresNome_Fantasia.Value      := cxNome.Text;
                           FornecedoresPais.Value               := cPais.Text;
                           FornecedoresEstado.Value             := cUF.Text;
                           FornecedoresMunicipio_Codigo.Value   := StrtoInt(cMun.Text);
                           FornecedoresBairro.Value             := cxBairro.Text;
                           FornecedoresRua.Value                := cxLgr.Text;
                           FornecedoresRua_Numero.Value         := cNro.Text;
                           FornecedoresCEP.Value                := cCEP.Text;
                           FornecedoresCNPJ.Value               := cCNPJ.Text;
                           FornecedoresInscricao_Estadual.Value := cIE.Text;

                           If Trim(cIE.Text)='' then
                              FornecedoresIsento.Value:=True
                           else
                              FornecedoresIsento.Value:=False;

                           FornecedoresTelefone1.Value             := cFone.Text;
                           FornecedoresRamo_Atividade.Value        := RamoAtividadeCodigo.AsInteger;
                           FornecedoresTipo_Produto.Value          := TipoProdutoCodigo.Value;
                           FornecedoresAtivo.Value                 := true;
                           FornecedoresIndicador_IE.Value          := '1';
                           FornecedoresLayoutLote_Numero.Value     := cLayLoteNum.Text;
                           FornecedoresLayoutLote_Fabricacao.Value := cLayLoteFab.Text;
                           FornecedoresLayoutLote_Validade.Value   := cLayLoteVal.Text;

                           FornecedoresSimples.Value     := cSimples.Checked;
                           FornecedoresMEI.Value         := cMEI.Checked;
                           FornecedoresZona_Franca.Value := cZonaFranca.Checked;
              Fornecedores.Post;
              cCodigo.Text := FornecedoresCodigo.AsString;

             // Abre a conta do fornecedor no plano de contas se estiver parâmetrizado.
             tContaPlano.SQL.Clear;
             if FornecedoresPais.AsString = '1058' then
                tContaPlano.SQL.Add('SELECT * FROM PlanoContas WHERE Tipo_Terceiros = ''FN'' AND ISNULL(Codigo_Terceiros, 0) = 0 AND ISNULL(Sintetica, 0) = 0')
             else
                tContaPlano.SQL.Add('SELECT * FROM PlanoContas WHERE Tipo_Terceiros = ''FE'' AND ISNULL(Codigo_Terceiros, 0) = 0 AND ISNULL(Sintetica, 0) = 0');
             tContaPlano.Open;

             if tContaPlano.RecordCount > 0 then begin
                // Verificando se a conta ja esta cadastrada.
                tCodigoPlano.SQL.Clear;
                tCodigoPlano.SQL.Add('SELECT COUNT(*) AS Qtde FROM PlanoContas WHERE (Conta LIKE :pConta) AND (Sintetica = 0) AND (Descricao = :pDescricao)' );
                tCodigoPlano.ParamByName('pConta').AsString     := PlanoContasConta.AsString;
                tCodigoPlano.ParamByName('pDescricao').AsString := FornecedoresNome.Value;
                tCodigoPlano.Open;

                if tCodigoPlano.FieldByName('Qtde').AsInteger = 0 then begin
                   tCodigoPlano.SQL.Clear;
                   tCodigoPlano.SQL.Add('SELECT ISNULL(MAX(CAST(Codigo AS int)), 0)+1 AS Codigo FROM PlanoContas WHERE SUBSTRING(Conta, 1, 1) = :pConta');
                   tCodigoPlano.ParamByName('pConta').AsString := Trim(Copy(tContaPlano.FieldByName('Conta').AsString, 1, 1));
                   tCodigoPlano.Open;

                   PlanoContas.SQL.Clear;
                   PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE Codigo = :pCodigo');
                   PlanoContas.ParamByName('pCodigo').AsString := tContaPlano.FieldByName('Codigo').AsString;
                   PlanoContas.Open;

                   PlanoContas.Append;
                               PlanoContasConta.Value             := tContaPlano.FieldByName('Conta').AsString;
                               PlanoContasCodigo.Value            := InttoStr(tCodigoPlano.FieldByName('Codigo').AsInteger);
                               PlanoContasDescricao.Value         := FornecedoresNome.Value;
                               PlanoContasSaldo_Anterior.Value    := 0;
                               PlanoContasDebito.Value            := 0;
                               PlanoContasCredito.Value           := 0;
                               PlanoContasSintetica.Value         := False;
                               PlanoContasNatureza.Value          := tContaPlano.FieldByName('Natureza').AsString;
                               PlanoContasLALUR.Value             := tContaPlano.FieldByName('LALUR').Value;
                               PlanoContasMostrar_Balanco.Value   := tContaPlano.FieldByName('Mostrar_Balanco').Value;
                               PlanoContasImprimir_Razao.Value    := false;
                               PlanoContasData_Inclusao.Value     := Date;
                               PlanoContasNivel.Value             := tContaPlano.FieldByName('Nivel').Value;
                               PlanoContasConta_Grupo.Value       := tContaPlano.FieldByName('Conta_Grupo').Value;
                               PlanoContasOrigem.Value            := tContaPlano.FieldByName('Origem').Value;
                               PlanoContasEmpresa.Value           := EmpresasCNPJ.asstring;
                               PlanoContasTipo_Terceiros.Value    := tContaPlano.FieldByName('Tipo_Terceiros').Value;
                               PlanoContasCodigo_Terceiros.Value  := Fornecedores.FieldByName('Codigo').AsString;
                               PlanoContasGrupo.Value             := tContaPlano.FieldByName('Grupo').Value;
                   PlanoContas.Post;

                   // Registra a conta aberta no plano no cadastro do cliente.
                   Fornecedores.Edit;
                                FornecedoresConta.Value := PlanoContasCodigo.Value;
                   Fornecedores.Post;
                end;
             end;
           end;

           // Importando o cabeçalho da nota fiscal.
           NotasTerceirosNota.Value              := StrtoInt(cnNF.Text);
           NotasTerceirosData_Emissao.Value      := StrtoDate(cdEmi.Text);
           NotasTerceirosData_Entrada.Value      := cDataEnt.Date;
           NotasTerceirosReferencia_Fiscal.Value := ReferenciasFiscaisCodigo.Value;

           if Trim(cCentroCusto.Text) <> '' then
              NotasTerceirosCentro_Custo.Value := CentroCustoCodigo.Value;

           NotasTerceirosFornecedor.Value              := StrtoInt(cCodigo.Text);
           NotasTerceirosEstado.Value                  := FornecedoresEstado.Value;
           NotasTerceirosTIPO.Value                    := 'NF';
           NotasTerceirosModelo.Value                  := cMod.Text;
           NotasTerceirosSerie.Value                   := cSerie.Text;
           NotasTerceirosProcesso.Value                := cProcesso.Text;
           NotasTerceirosValor_TotalProdutos.Value     := 0;
           NotasTerceirosValor_TotalProdutosOrig.Value := 0;
           NotasTerceirosValor_TotalNota.Value         := 0;
           NotasTerceirosValor_BCICMSOper.Value        := 0;
           NotasTerceirosValor_ICMSOper.Value          := 0;
           NotasTerceirosValor_IsentasICMS.Value       := 0;
           NotasTerceirosValor_OutrasICMS.Value        := 0;
           NotasTerceirosValor_BCICMSSub.Value         := 0;
           NotasTerceirosValor_ICMSSub.Value           := 0;
           NotasTerceirosValor_TotalBCIPI.Value        := 0;
           NotasTerceirosValor_TotalIPI.Value          := 0;
           NotasTerceirosValor_IsentasIPI.Value        := 0;
           NotasTerceirosValor_OutrasIPI.Value         := 0;
           NotasTerceirosValor_TotalDescontos.Value    := 0;
           NotasTerceirosValor_TotalLiquido.Value      := 0;
           NotasTerceirosValor_PIS.Value               := 0;
           NotasTerceirosValor_COFINS.Value            := 0;
           NotasTerceirosValor_TotalLiquido.Value      := 0;
           NotasTerceirosTotal_Despesas.Value          := 0;
           NotasTerceirosFUNDAP.Value                  := False;
           NotasTerceirosIncentivo_Fiscal.Value        := 'OUTROS';
           NotasTerceirosQuantidade.Value              := cQtdeTotal.Value;
           NotasTerceirosVolume_PesoLiquido.Value      := cPesoLiquido.Value;
           NotasTerceirosVolume_PesoBruto.Value        := cPesoBruto.Value;
           NotasTerceirosClassificacao.Value           := ReferenciasFiscaisClassificacao_TotalNota.Value;
           NotasTerceirosNFe_cNF.Value                 := cChave.Text;
           NotasTerceirosNFe_Protocolo.Value           := cProtocolo.Text;
           NotasTerceirosProvisoria.Value              := false;
           NotasTerceirosOrigem_Mercadoria.Value       := CSTTabelaACodigo.AsInteger;
           NotasTerceirosNatureza_Codigo.Value         := iif(FornecedoresEstado.Value = EmpresasEstado.Value, ReferenciasFiscaisNatureza_Dentro.Value, ReferenciasFiscaisNatureza_Fora.Value);
           NotasTerceirosArmazem.Value                 := strtointdef(GradeReferencia.Cells[08, 01], 0);

           NotasTerceiros.Post;

           // Criando o processo interno.
           with tExiste do begin
                sql.Clear;
                sql.Add('select Processo from ProcessosDocumentos where Processo = :pProc');
                ParamByName('pProc').Asstring := NotasTerceirosProcesso.asstring;
                open;

                if RecordCount = 0 then begin
                   ProcessosDOC.Append;
                                ProcessosDOCProcesso.Value         := cProcesso.Text;
                                ProcessosDOCTipo.Value             := mTipo;
                                ProcessosDOCIncentivo_Fiscal.Value := 'OUTROS';
                   ProcessosDOC.Post;
                end;
           end;

           NotasTerceirosItens.SQL.Clear;
           NotasTerceirosItens.SQL.Add('DELETE FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
           NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
           NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
           NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
           NotasTerceirosItens.Execute;
           NotasTerceirosItens.SQL.Clear;
           NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE(Nota=:pNota)');
           NotasTerceirositens.ParamByName('pNota').AsInteger := StrtoInt(ccNF.Text);
           NotasTerceirosItens.Open;

           // Deleta os itens da ficha de estoque/inventario caso ja existam.
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

           FichaInventario.SQL.Clear;
           FichaInventario.SQL.Add('DELETE FROM FichaInventario WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
           FichaInventario.ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
           FichaInventario.ParamByName('pData').AsDate    := NotasTerceirosData_Entrada.AsDateTime;
           FichaInventario.ParamByName('pDest').AsInteger := NotasTerceirosFornecedor.AsInteger;
           FichaInventario.Execute;
           FichaInventario.SQL.Clear;
           FichaInventario.SQL.Add('SELECT * FROM FichaInventario WHERE Nota = :pNota AND Data = :pData AND Destinatario_Codigo = :pDest');
           FichaInventario.ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
           FichaInventario.ParamByName('pData').AsDate    := NotasTerceirosData_Entrada.AsDateTime;
           FichaInventario.ParamByName('pDest').AsInteger := NotasTerceirosFornecedor.AsInteger;
           FichaInventario.Open;

           // Deleta a nota importada anteriormente da tabela de navios.
           with tTmp do begin
                sql.clear;
                sql.add('delete from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Saida_Entrada = 0 and Emissor = ''T'' ');
                ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
                ParamByName('pData').AsDate    := NotasTerceirosData_Entrada.Value;
                execute;
           end;
           
           // Importando os itens da nota fiscal.
           cOutrasIPI.Value  := 0;
           cIsentasIPI.Value := 0;

           mQtdeItem := 1;
           While mQtdeItem <= GradeItens.RowCount do begin
                 If Trim(GradeItens.Cells[06,mQtdeItem]) <> '' then begin
                    // Grava a aliquota do ICMS no cabeçalho da nota fiscal.
                    If NotasTerceirosAliquota_ICMSOper.AsFloat = 0 then begin
                       If Trim(GradeItens.Cells[24,mQtdeItem]) <> '' then begin
                          NotasTerceiros.Edit;
                                         NotasTerceirosAliquota_ICMSOper.Value := StrtoFloat(GradeItens.Cells[24,mQtdeItem]);
                          NotasTerceiros.Post;
                       End;
                    End;

                    // Cadastrando novos produtos.
                    If Trim(GradeCadastro.Cells[03,mQtdeItem]) = '' then begin
                       tProdutos.SQL.Clear;
                       tProdutos.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Produtos');
                       tProdutos.Open;

                       Produtos.Append;
                                ProdutosCodigo.Value             := tProdutos.FieldByName('Codigo').AsInteger;
                                ProdutosCodigo_Fabricante.Value  := GradeItens.Cells[01,mQtdeItem];
                                ProdutosDescricao.AsString       := GradeItens.Cells[02,mQtdeItem];
                                ProdutosUnidade.AsString         := GradeItens.Cells[07,mQtdeItem];
                                ProdutosUnidade_Origem.AsString  := GradeItens.Cells[07,mQtdeItem];
                                ProdutosQuantidade_Unidade.Value := 1;
                                ProdutosQuantidade_Volumes.Value := 1;
                                ProdutosNCM.Value                := GradeItens.Cells[04,mQtdeItem];
                                ProdutosEstoque_Disponivel.Value := StrtoFloat(GradeItens.Cells[08,mQtdeItem]);
                                ProdutosDescricao_Reduzida.Value := Copy(GradeItens.Cells[02,mQtdeItem],1,60);

                                if not ReferenciasFiscaisZerar_IPI.AsBoolean then begin
                                   if Trim(GradeItens.Cells[29,mQtdeItem]) <> '' then begin 
                                      ProdutosAliquota_IPI.Value := StrtoFloat(GradeItens.Cells[29,mQtdeItem]);
                                   end;
                                end else begin
                                   ProdutosAliquota_IPI.Value := 0;
                                end;
                                If Trim(GradeItens.Cells[37,mQtdeItem]) <> '' then ProdutosPIS_Nota.Value    := StrtoFloat(GradeItens.Cells[37,mQtdeItem]);
                                If Trim(GradeItens.Cells[41,mQtdeItem]) <> '' then ProdutosCOFINS_Nota.Value := StrtoFloat(GradeItens.Cells[41,mQtdeItem]);
                                If NCM.Locate('NCM', GradeItens.Cells[04,mQtdeItem], [loCaseInsensitive]) = True then ProdutosAliquota_II.Value := dmFiscal.NCMII.Value;

                                ProdutosGTIN.Value               := GradeItens.Cells[ 3, mQtdeItem];
                                ProdutosGTIN_Unidade.Value       := Trim(GradeCadastro.Cells[02,mQtdeItem]);
                                ProdutosFornecedor.Value         := FornecedoresCodigo.Value;
                                ProdutosFabricante.Value         := FornecedoresCodigo.Value;
                                ProdutosDesativado.Value         := false;
                                ProdutosTipo_Item.Value          := TipoItemCodigo.Value;
                                ProdutosEstoque_MinimoPerc.Value := ConfiguracaoEstoque_MinimoPerc.Value;

                                if StrtoInt(Copy(cOrigem.Text,1,1)) in[1, 2, 6, 7] then begin
                                   ProdutosOrigem.Value := 'M';
                                end else begin
                                   ProdutosOrigem.Value := 'N';
                                end;

                                ProdutosEscala_Relevante.Value := cEscala.Checked;
                                if cEscala.Checked then begin
                                   Dados.ProdutosCNPJ_Fabricante.Value := '';
                                end else begin
                                   Dados.ProdutosCNPJ_Fabricante.Value := cCNPJ.Text;
                                end;
                       Produtos.Post;
                       tProdutos.Close;
                    end else begin
                       If Produtos.Locate('Codigo', StrtoInt(GradeCadastro.Cells[03,mQtdeItem]), [loCaseInsensitive]) = true then begin
                          // Atualiza o cadastro do produto com o último valor de entrada e com o custo médio.
                          tCustoMedio.SQL.Clear;
                          tCustoMedio.SQL.Add('SELECT ISNULL(ROUND((SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1) )');
                          tCustoMedio.SQL.Add('             /(SELECT SUM(Quantidade) FROM NotasTerceirosItens WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Inventario = 1) ), 4,0), 0) AS Valor');
                          tCustoMedio.SQL.Add('FROM Produtos');
                          tCustoMedio.SQL.Add('WHERE (Codigo = :pCodigo)');
                          tCustoMedio.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
                          tCustoMedio.Open;

                          Produtos.Edit;
                                   ProdutosCodigo_Fabricante.Value  := GradeItens.Cells[01,mQtdeItem];
                                   If (NotasTerceiros.RecordCount = 0) or (ProdutosEstoque_Disponivel.AsFloat <= 0) then begin
                                      ProdutosEstoque_Disponivel.Value := ProdutosEstoque_Disponivel.Value + StrtoFloat(GradeItens.Cells[08,mQtdeItem]);
                                   End;
                                   If ProdutosFornecedor.AsInteger = 0 then ProdutosFornecedor.Value := FornecedoresCodigo.AsInteger;
                                   If ProdutosFabricante.AsInteger = 0 then ProdutosFabricante.Value := FornecedoresCodigo.AsInteger;
                                   If (ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 0) or (ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 3) or (ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 9) then begin
                                      ProdutosValor_Entrada.Value    := StrtoFloat(GradeItens.Cells[09,mQtdeItem]);
                                      ProdutosValor_CustoMedio.Value := tCustoMedio.FieldByName('Valor').Value;
                                   End;
                                   ProdutosTipo_Item.Value := TipoItemCodigo.Value;

                                   ProdutosEscala_Relevante.Value := cEscala.Checked;
                                   if cEscala.Checked then begin
                                      Dados.ProdutosCNPJ_Fabricante.Value := '';
                                   end else begin
                                      Dados.ProdutosCNPJ_Fabricante.Value := cCNPJ.Text;
                                   end;
                          Produtos.Post;
                       end else begin
                          Produtos.Append;
                                   ProdutosCodigo.Value             := StrtoInt(GradeCadastro.Cells[03,mQtdeItem]);
                                   ProdutosCodigo_Fabricante.Value  := GradeItens.Cells[01,mQtdeItem];
                                   ProdutosDescricao.AsString       := GradeItens.Cells[02,mQtdeItem];
                                   ProdutosUnidade.AsString         := GradeItens.Cells[07,mQtdeItem];
                                   ProdutosUnidade_Origem.AsString  := GradeItens.Cells[07,mQtdeItem];
                                   ProdutosQuantidade_Unidade.Value := 1;
                                   ProdutosQuantidade_Volumes.Value := 1;
                                   ProdutosNCM.Value                := GradeItens.Cells[04,mQtdeItem];
                                   ProdutosEstoque_Disponivel.Value := StrtoFloat(GradeItens.Cells[08,mQtdeItem]);
                                   ProdutosDescricao_Reduzida.Value := Copy(GradeItens.Cells[02,mQtdeItem],1,60);
                                   if not ReferenciasFiscaisZerar_IPI.AsBoolean then begin
                                      if Trim(GradeItens.Cells[29,mQtdeItem]) <> '' then begin 
                                         ProdutosAliquota_IPI.Value := StrtoFloat(GradeItens.Cells[29,mQtdeItem]);
                                      end;
                                   end else begin
                                      ProdutosAliquota_IPI.Value := 0;
                                   end;
                                   If NCM.Locate('NCM', GradeItens.Cells[04,mQtdeItem], [loCaseInsensitive]) = True then ProdutosAliquota_II.Value := dmFiscal.NCMII.Value;
                                   ProdutosGTIN.Value          := GradeItens.Cells[ 3, mQtdeItem];
                                   ProdutosGTIN_Unidade.Value  := Trim(GradeCadastro.Cells[02,mQtdeItem]);
                                   ProdutosFornecedor.Value    := FornecedoresCodigo.Value;
                                   ProdutosFabricante.Value    := FornecedoresCodigo.Value;
                                   If (ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 0) or (ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 3) or (ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 9) then begin
                                      ProdutosValor_Entrada.Value    := StrtoFloat(GradeItens.Cells[09,mQtdeItem]);
                                      ProdutosValor_CustoMedio.Value := StrtoFloat(GradeItens.Cells[09,mQtdeItem]);
                                   End;
                                   ProdutosDesativado.Value         := false;
                                   ProdutosTipo_Item.Value          := TipoItemCodigo.Value;
                                   ProdutosEstoque_MinimoPerc.Value := ConfiguracaoEstoque_MinimoPerc.Value;
                                   if StrtoInt(Copy(cOrigem.Text,1,1)) in[1, 2, 6, 7] then begin
                                      ProdutosOrigem.Value := 'M';
                                   end else begin
                                      ProdutosOrigem.Value := 'N';
                                   end;

                                   ProdutosEscala_Relevante.Value := cEscala.Checked;
                                   if cEscala.Checked then begin
                                      Dados.ProdutosCNPJ_Fabricante.Value := '';
                                   end else begin
                                      Dados.ProdutosCNPJ_Fabricante.Value := cCNPJ.Text;
                                   end;
                          Produtos.Post;
                       End;
                    End;

                    NCM.Locate('NCM', GradeItens.Cells[04,mQtdeItem], [loCaseInsensitive]);
                    Produtos.Edit;
                             if ReferenciasFiscaisProduto_NCM.AsBoolean then begin
                                ProdutosAliquota_PIS.Value     := NCMPIS.Value;
                                ProdutosPIS_Nota.Value         := NCMPIS_Nota.Value;
                                ProdutosPIS_NotaSaida.Value    := NCMPIS_NotaSaida.Value;
                                ProdutosAliquota_COFINS.Value  := NCMCOFINS.Value;
                                ProdutosCOFINS_Nota.Value      := NCMCOFINS_Nota.Value;
                                ProdutosCOFINS_NotaSaida.Value := NCMCOFINS_NotaSaida.Value;
                             end else begin
                                // Busca as alíquotas de PIS para atualozar os produtos.
                                Majoracao.SQL.Clear;
                                Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''T'' AND Descricao = ''PIS'' AND Majorada = :pAliquota');
                                Majoracao.ParamByName('pAliquota').AsFloat := StrtoFloat(GradeItens.Cells[37,mQtdeItem]);
                                Majoracao.Open;
                                if Majoracao.RecordCount > 0 then begin
                                   ProdutosAliquota_PIS.Value  := MajoracaoMajorada.AsFloat;
                                   ProdutosPIS_Nota.Value      := MajoracaoEntrada.AsFloat;
                                   ProdutosPIS_NotaSaida.Value := MajoracaoSaida.AsFloat;
                                end;

                                // Busca as alíquotas de COFINS para atualizar os produtos.
                                Majoracao.SQL.Clear;
                                Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''T'' AND Descricao = ''COFINS'' AND Majorada = :pAliquota');
                                Majoracao.ParamByName('pAliquota').AsFloat := StrtoFloat(GradeItens.Cells[41,mQtdeItem]);
                                Majoracao.Open;
                                if Majoracao.RecordCount > 0 then begin
                                   ProdutosAliquota_COFINS.Value  := MajoracaoMajorada.AsFloat;
                                   ProdutosCOFINS_Nota.Value      := MajoracaoEntrada.AsFloat;
                                   ProdutosCOFINS_NotaSaida.Value := MajoracaoSaida.AsFloat;
                                end;
                             end;
                    Produtos.Post;

                    // Cadastrando dados dos lotes se houverem.
                    If GradeLote.Cells[3,mQtdeItem] <> '' then begin
                       ProdutosDetalhe.SQL.Clear;
                       ProdutosDetalhe.SQL.Add('SELECT * FROM ProdutosDetalhe WHERE Lote = :pLote AND Produto_Codigo = :pCodigo AND Nota_Entrada = :pNota AND Data_Entrada = :pData');
                       ProdutosDetalhe.ParamByName('pLote').AsString    := GradeLote.Cells[3,mQtdeItem];
                       ProdutosDetalhe.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
                       ProdutosDetalhe.ParamByName('pNota').AsInteger   := StrtoInt(cnNF.Text);
                       ProdutosDetalhe.ParamByName('pData').AsDate      := cDataEnt.Date;
                       ProdutosDetalhe.Open;

                       If ProdutosDetalhe.RecordCount = 0 then begin
                          If not Detalhes.Locate('Descricao', 'LOTE '+GradeLote.Cells[3,mQtdeItem], [loCaseInsensitive]) then begin
                             tDetalhe.SQL.Clear;
                             tDetalhe.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM Detalhes');
                             tDetalhe.Open;

                             Detalhes.Append;
                                      DetalhesCodigo.Value    := tDetalhe.FieldByName('Codigo').AsInteger;
                                      DetalhesDescricao.Value := 'LOTE '+GradeLote.Cells[3,mQtdeItem];
                                      DetalhesTipo.Value      := 0;
                             Detalhes.Post;
                          End;

                          tRegistro.SQL.Clear;
                          tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro)+1, 1) AS Registro FROM ProdutosDetalhe');
                          tRegistro.Open;

                          ProdutosDetalhe.Append;

                          ProdutosDetalheRegistro.Value := tRegistro.FieldByName('Registro').AsInteger;
                          tRegistro.Close;
                       end else begin
                          Detalhes.Locate('Descricao', 'LOTE '+GradeLote.Cells[3,mQtdeItem], [loCaseInsensitive]);

                          ProdutosDetalhe.Edit;
                       End;

                       ProdutosDetalheProduto_Codigo.Value     := ProdutosCodigo.Value;
                       ProdutosDetalheDetalhe.Value            := DetalhesCodigo.AsInteger;
                       ProdutosDetalheQuantidade_Entrada.Value := StrtoFloat(GradeItens.Cells[08,mQtdeItem]);
                       ProdutosDetalheNota_Entrada.Value       := StrtoInt(cnNF.Text);
                       ProdutosDetalheData_Entrada.Value       := cDataEnt.Date;
                       ProdutosDetalheProcesso.Value           := cProcesso.Text;
                       ProdutosDetalheLote.Value               := GradeLote.Cells[3,mQtdeItem];
                       If not DataLimpa(GradeLote.Cells[4,mQtdeItem]) then
                          ProdutosDetalheData_Fabricacao.Value := StrtoDate(GradeLote.Cells[4,mQtdeItem]);
                       If not DataLimpa(GradeLote.Cells[5,mQtdeItem]) then
                          ProdutosDetalheData_Validade.Value := StrtoDate(GradeLote.Cells[5,mQtdeItem]);

                       ProdutosDetalhe.Post;
                    End;

                    // Registrando os seriais na tabela de notas dos seriais.
                    ProdutosSeriais.SQL.Clear;
                    ProdutosSeriais.SQL.Add('SELECT * FROM ProdutosSeriais WHERE Produto_Codigo = :pProduto AND Nota_Entrada = :pNota AND Data_Entrada = :pData AND Temp = 1');
                    ProdutosSeriais.ParamByName('pProduto').AsInteger := ProdutosCodigo.AsInteger;
                    ProdutosSeriais.ParamByName('pNota').AsInteger    := NotasTerceirosNota.Value;
                    ProdutosSeriais.ParamByName('pData').AsDate       := NotasTerceirosData_Emissao.Value;
                    ProdutosSeriais.Open;

                    if ProdutosSeriais.RecordCount <> 0 then begin
                       // Deleta os seriais importados anteriormente.
                       tRegistro.SQL.Clear;
                       tRegistro.SQL.Add('DELETE FROM ProdutosSeriaisNotas WHERE Produto_Codigo = :pProduto AND Nota = :pNota AND Data = :pData');
                       tRegistro.ParamByName('pProduto').AsInteger := ProdutosCodigo.AsInteger;
                       tRegistro.ParamByName('pNota').AsInteger    := NotasTerceirosNota.Value;
                       tRegistro.ParamByName('pData').AsDate       := NotasTerceirosData_Emissao.Value;
                       tRegistro.Execute;

                       ProdutosSeriaisNotas.Open;
                       ProdutosSeriais.First;
                       while not ProdutosSeriais.Eof do begin
                             tRegistro.SQL.Clear;
                             tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro)+1, 1) AS Registro FROM ProdutosSeriaisNotas');
                             tRegistro.Open;

                             ProdutosSeriaisNotas.Append;
                                                  ProdutosSeriaisNotasRegistro.Value       := tRegistro.FieldByName('Registro').AsInteger;
                                                  ProdutosSeriaisNotasProduto_Codigo.Value := ProdutosCodigo.AsInteger;
                                                  ProdutosSeriaisNotasNumero.Value         := ProdutosSeriaisNumero.Value;
                                                  ProdutosSeriaisNotasNota.Value           := ProdutosSeriaisNota_Entrada.AsInteger;
                                                  ProdutosSeriaisNotasData.Value           := ProdutosSeriaisData_Entrada.Value;
                                                  ProdutosSeriaisNotasSaida_Entrada.Value  := 0;
                                                  ProdutosSeriaisNotasEmissor.Value        := 'T';
                                                  ProdutosSeriaisNotasTemp.Value           := false;
                             ProdutosSeriaisNotas.Post;

                             ProdutosSeriais.Edit;
                                             ProdutosSeriaisTemp.Value := false;
                             ProdutosSeriais.Post;
                             ProdutosSeriais.Next;
                       end;
                       ProdutosSeriaisNotas.Close;
                    end;

                    // Cadastrando novas NCM's.
                    if NCM.Locate('NCM', trim(GradeItens.Cells[04,mQtdeItem]), [loCaseInsensitive]) = False then begin
                       NCM.Append;
                           NCMNCM.Value     := GradeItens.Cells[04,mQtdeItem];
                           NCMProduto.Value := GradeItens.Cells[02,mQtdeItem];
                           NCMUnidade.Value := GradeItens.Cells[07,mQtdeItem];
                           If Trim(GradeItens.Cells[37,mQtdeItem]) <> '' then NCMPIS.Value    := StrtoFloat(GradeItens.Cells[37,mQtdeItem]);
                           If Trim(GradeItens.Cells[41,mQtdeItem]) <> '' then NCMCOFINS.Value := StrtoFloat(GradeItens.Cells[41,mQtdeItem]);
                           If Trim(GradeItens.Cells[29,mQtdeItem]) <> '' then NCMIPI.Value    := StrtoFloat(GradeItens.Cells[29,mQtdeItem]);
                           NCMII.Value  := 0;
                           NCMDNF.Value := false;

                           if (Copy(cOrigem.Text,1,1) = '2') or (Copy(cOrigem.Text,1,1) = '7') then begin
                              NCMCodigoTrib_TabA3.Value := Copy(cOrigem.Text,1,1);
                           end else begin
                              NCMCodigoTrib_TabA2.Value := Copy(cOrigem.Text,1,1);
                           end;

                           NCMEnquadramento_IPI.Value := Trim(GradeItens.Cells[26,mQtdeItem]);
                       NCM.Post;
                    end else begin
                       NCM.Edit;
                           if (Copy(cOrigem.Text,1,1) = '2') or (Copy(cOrigem.Text,1,1) = '7') then begin
                              NCMCodigoTrib_TabA3.Value := Copy(cOrigem.Text,1,1);
                           end else begin
                              NCMCodigoTrib_TabA2.Value := Copy(cOrigem.Text,1,1);
                           end;
                       NCM.Post;
                    end;

                    // Salvando os itens da nota fiscal.
                    NotasTerceirosItens.Append;
                                        NotasTerceirosItensNota.Value                 := StrtoInt(cnNF.Text);
                                        NotasTerceirosItensItem.Value                 := mQtdeItem;
                                        NotasTerceirosItensData_Emissao.Value         := StrtoDate(cdEmi.Text);
                                        NotasTerceirosItensData_Entrada.Value         := cDataEnt.Date;
                                        NotasTerceirosItensProcesso.Value             := cProcesso.Text;
                                        NotasTerceirosItensFornecedor.Value           := StrtoInt(cCodigo.Text);
                                        NotasTerceirosItensNatureza_Codigo.Value      := NotasTerceirosNatureza_Codigo.Value;
                                        NotasTerceirosItensCodigo_Mercadoria.Value    := ProdutosCodigo.Value;
                                        NotasTerceirosItensDescricao_Mercadoria.Value := ProdutosDescricao.Value;
                                        NotasTerceirosItensAdicao.Value               := StrtoInt(GradeItens.Cells[16,mQtdeItem]);
                                        NotasTerceirosItensNCM.Value                  := GradeItens.Cells[04,mQtdeItem];
                                        NotasTerceirosItensUnidade_Medida.Value       := GradeItens.Cells[07,mQtdeItem];
                                        NotasTerceirosItensCodigoTrib_TabA.Value      := Copy(ReferenciasFiscaisCSTICMS.Text,1,1);
                                        NotasTerceirosItensCodigoTrib_TabB.Value      := Copy(ReferenciasFiscaisCSTICMS.Text,2,2);
                                        NotasTerceirosItensQuantidade.Value           := StrtoFloat(GradeItens.Cells[08,mQtdeItem]);
                                        NotasTerceirosItensDisponivel.Value           := StrtoFloat(GradeItens.Cells[08,mQtdeItem]);
                                        NotasTerceirosItensValor_Unitario.Value       := StrtoFloat(GradeItens.Cells[09,mQtdeItem]);
                                        NotasTerceirosItensValor_UnitarioOrig.Value   := StrtoFloat(GradeItens.Cells[09,mQtdeItem]);
                                        NotasTerceirosItensValor_Desconto.Value       := 0;
                                        NotasTerceirosItensValor_Liquido.Value        := StrtoFloat(GradeItens.Cells[48,mQtdeItem]);
                                        NotasTerceirosItensValor_LiquidoOrig.Value    := StrtoFloat(GradeItens.Cells[48,mQtdeItem]);
                                        NotasTerceirosItensValor_Despesa.Value        := StrtoFloat(GradeItens.Cells[32,mQtdeItem]);

                                        // FRETE.
                                        If Trim(GradeItens.Cells[55,mQtdeItem]) <> '' then NotasTerceirosItensValor_Frete.Value := StrtoFloat(GradeItens.Cells[55,mQtdeItem]);

                                        // ICMS.
                                        If Trim(GradeItens.Cells[24,mQtdeItem]) <> '' then NotasTerceirosItensAliquota_ICMSOper.Value  := StrtoFloat(GradeItens.Cells[24,mQtdeItem]);
                                        If Trim(GradeItens.Cells[23,mQtdeItem]) <> '' then NotasTerceirosItensValor_BCICMSOper.Value   := StrtoFloat(GradeItens.Cells[23,mQtdeItem]);
                                        If Trim(GradeItens.Cells[25,mQtdeItem]) <> '' then NotasTerceirosItensValor_ICMSOper.Value     := StrtoFloat(GradeItens.Cells[25,mQtdeItem]);
                                        If Trim(GradeItens.Cells[25,mQtdeItem]) <> '' then NotasTerceirosItensValor_ICMSOperOrig.Value := StrtoFloat(GradeItens.Cells[25,mQtdeItem]);
                                        If Trim(GradeItens.Cells[49,mQtdeItem]) <> '' then NotasTerceirosItensValor_BCICMSSub.Value    := StrtoFloat(GradeItens.Cells[49,mQtdeItem]);
                                        If Trim(GradeItens.Cells[58,mQtdeItem]) <> '' then NotasTerceirosItensValor_BCICMSSubOrig.Value:= StrtoFloat(GradeItens.Cells[58,mQtdeItem]);
                                        If Trim(GradeItens.Cells[50,mQtdeItem]) <> '' then NotasTerceirosItensAliquota_ICMSSub.Value   := StrtoFloat(GradeItens.Cells[50,mQtdeItem]);
                                        If Trim(GradeItens.Cells[51,mQtdeItem]) <> '' then NotasTerceirosItensValor_ICMSSub.Value      := StrtoFloat(GradeItens.Cells[51,mQtdeItem]);
                                        If Trim(GradeItens.Cells[51,mQtdeItem]) <> '' then NotasTerceirosItensValor_ICMSSubOrig.Value  := StrtoFloat(GradeItens.Cells[51,mQtdeItem]);
                                        If Trim(GradeItens.Cells[52,mQtdeItem]) <> '' then NotasTerceirosItensAliquota_MVA.Value       := StrtoFloat(GradeItens.Cells[52,mQtdeItem]);
                                        If Trim(GradeItens.Cells[43,mQtdeItem]) <> '' then NotasTerceirosItensValor_IsentasICMS.Value  := StrtoFloat(GradeItens.Cells[43,mQtdeItem]);
                                        If Trim(GradeItens.Cells[44,mQtdeItem]) <> '' then NotasTerceirosItensValor_OutrasICMS.Value   := StrtoFloat(GradeItens.Cells[44,mQtdeItem]);

                                        // IPI.
                                        If Trim(GradeItens.Cells[29,mQtdeItem]) <> '' then NotasTerceirosItensAliquota_IPI.Value := StrtoFloat(GradeItens.Cells[29,mQtdeItem]);
                                        If Trim(GradeItens.Cells[28,mQtdeItem]) <> '' then NotasTerceirosItensValor_BCIPI.Value  := StrtoFloat(GradeItens.Cells[28,mQtdeItem]);
                                        NotasTerceirosItensValor_IPI.Value     := Percentual(NotasTerceirosItensValor_BCIPI.Value, NotasTerceirosItensAliquota_IPI.Value);
                                        NotasTerceirosItensValor_IPIOrig.Value := Percentual(NotasTerceirosItensValor_BCIPI.Value, NotasTerceirosItensAliquota_IPI.Value);

                                        NotasTerceirosItensPeso_Liquido.Value := 0;
                                        NotasTerceirosItensPeso_Bruto.Value   := 0;
                                        NotasTerceirosItensTipo.Value         := NotasTerceirosTipo.Value;

                                        If Trim(GradeItens.Cells[42,mQtdeItem]) <> '' then NotasTerceirosItensValor_COFINSOrig.Value := StrtoFloat(GradeItens.Cells[42,mQtdeItem]);
                                        NotasTerceirosItensCST_IPI.Value    := GradeItens.Cells[54,mQtdeItem];
                                        NotasTerceirosItensCST_PIS.Value    := ReferenciasFiscaisCSTPIS.AsString;
                                        NotasTerceirosItensCST_COFINS.Value := ReferenciasFiscaisCSTCOFINS.AsString;

                                        NotasTerceirosItensMovimenta_Estoque.Value    := ReferenciasFiscaisMovimenta_Estoque.Value;
                                        NotasTerceirosItensMovimenta_Inventario.Value := ReferenciasFiscaisMovimenta_Inventario.Value;
                                        NotasTerceirosItensInventario_Terceiros.Value := ReferenciasFiscaisInventario_Terceiros.Value;
                                        NotasTerceirosItensApuracao_PISCOFINS.Value   := ReferenciasFiscaisApuracao_PISCOFINS.Value;
                                        If Trim(GradeItens.Cells[47,mQtdeItem]) <> '' then NotasTerceirosItensValor_Desconto.Value := StrtoFloat(GradeItens.Cells[47,mQtdeItem]);
                                        NotasTerceirosItensCIAP_AliquotaICMS.Value := cCIAPAliquota.Value;
                                        NotasTerceirosItensCIAP_BCICMS.Value       := cCIAPBCICMS.Value;
                                        NotasTerceirosItensCIAP_ValorICMS.Value    := cCIAPValor.Value;
                                        If cCIAPTipo.Text <> '' then NotasTerceirosItensCIAP_TipoItem.Value := StrtoInt(cCIAPTipo.Values[cCIAPTipo.ItemIndex]);
                                        NotasTerceirosItensReferencia_Fiscal.Value := ReferenciasFiscaisCodigo.Value;

                                        // Calcula o valor unitario do produto pela fórmula da referencia fiscal.
                                        NotasTerceirosItensValor_Unitario.Value := CalculaEntrada(ReferenciasFiscaisCodigo.AsInteger);
                                        NotasTerceirosItensValor_Liquido.Value  := (NotasTerceirosItensValor_Unitario.Value * NotasTerceirosItensQuantidade.AsFloat) - NotasTerceirosItensValor_Desconto.Value;

                                        // Busca as alíquotas de PIS para nota de terceiros na tabela de majoração.
                                        NotasTerceirosItensValor_BCPIS.Value := CalculaBCPIS(ReferenciasFiscaisCodigo.AsInteger) * NotasTerceirosItensQuantidade.asfloat;

                                        if Trim(GradeItens.Cells[37,mQtdeItem]) <> '' then begin
                                           if StrtoFloat(Trim(GradeItens.Cells[37,mQtdeItem])) > 0 then begin
                                              NotasTerceirosItensAliquota_PISOrig.Value := StrtoFloat(GradeItens.Cells[37,mQtdeItem]);

                                              Majoracao.SQL.Clear;
                                              Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''T'' AND Descricao = ''PIS'' AND Majorada = :pAliquota');
                                              Majoracao.ParamByName('pAliquota').AsFloat := StrtoFloat(GradeItens.Cells[37,mQtdeItem]);
                                              Majoracao.Open;
                                              if Majoracao.RecordCount > 0 then
                                                 NotasTerceirosItensAliquota_PIS.Value := MajoracaoEntrada.Value
                                              else
                                                 NotasTerceirosItensAliquota_PIS.Value := StrtoFloat(GradeItens.Cells[37,mQtdeItem]);
                                           end;
                                        end;

                                        NotasTerceirosItensValor_PIS.Value := Percentual(NotasTerceirosItensValor_BCPIS.Value, NotasTerceirosItensAliquota_PIS.Value);
                                        If Trim(GradeItens.Cells[38,mQtdeItem]) <> '' then NotasTerceirosItensValor_PISOrig.Value  := StrtoFloat(GradeItens.Cells[38,mQtdeItem]);

                                        // Busca as alíquotas de COFINS para nota de terceiros na tabela de majoração.
                                        NotasTerceirosItensValor_BCCOFINS.Value := CalculaBCPIS(ReferenciasFiscaisCodigo.AsInteger) * NotasTerceirosItensQuantidade.asfloat;
                                        if Trim(GradeItens.Cells[41,mQtdeItem]) <> '' then begin
                                           if StrtoFloat(Trim(GradeItens.Cells[41,mQtdeItem])) > 0 then begin
                                              NotasTerceirosItensAliquota_COFINSOrig.Value := StrtoFloat(GradeItens.Cells[41,mQtdeItem]);

                                              Majoracao.SQL.Clear;
                                              Majoracao.SQL.Add('SELECT * FROM Majoracao WHERE Tipo = ''T'' AND Descricao = ''COFINS'' AND Majorada = :pAliquota');
                                              Majoracao.ParamByName('pAliquota').AsFloat := StrtoFloat(GradeItens.Cells[41,mQtdeItem]);
                                              Majoracao.Open;
                                              if Majoracao.RecordCount > 0 then
                                                 NotasTerceirosItensAliquota_COFINS.Value := MajoracaoEntrada.Value
                                              else
                                                 NotasTerceirosItensAliquota_COFINS.Value := StrtoFloat(GradeItens.Cells[41,mQtdeItem]);
                                           end;
                                        end;
                                        NotasTerceirosItensValor_COFINS.Value := Percentual(NotasTerceirosItensValor_BCCOFINS.Value, NotasTerceirosItensAliquota_COFINS.Value);

                                        If ReferenciasFiscaisSomar_ICMSST.AsBoolean = true then begin
                                           NotasTerceirosItensValor_Unitario.Value    := NotasTerceirosItensValor_Unitario.Value + (RoundTo(StrtoFloat(GradeItens.Cells[51,mQtdeItem]), -4)/StrtoFloat(GradeItens.Cells[08,mQtdeItem]));
                                           NotasTerceirosItensValor_Liquido.Value     := NotasTerceirosItensValor_Unitario.Value * NotasTerceirosItensQuantidade.Value;
                                           NotasTerceirosItensValor_BCICMSOper.Value  := 0;
                                           NotasTerceirosItensValor_ICMSOper.Value    := 0;
                                           NotasTerceirosItensValor_IsentasICMS.Value := 0;
                                           NotasTerceirosItensValor_OutrasICMS.Value  := NotasTerceirosItensValor_Liquido.Value;
                                           NotasTerceirosItensValor_BCICMSSub.Value   := 0;
                                           NotasTerceirosItensValor_ICMSSub.Value     := 0;
                                           NotasTerceirosItensAliquota_IPI.Value      := 0;
                                           NotasTerceirosItensValor_BCIPI.Value       := 0;
                                           NotasTerceirosItensValor_IPI.Value         := 0;
                                           NotasTerceirosItensValor_IsentasIPI.Value  := 0;
                                           NotasTerceirosItensValor_OutrasIPI.Value   := NotasTerceirosItensValor_Liquido.Value;
                                        End;

                                        // Calcula o valor do inventario pela referencia fiscal.
                                        NotasTerceirosItensValor_Inventario.Value := CalculaInventario(ReferenciasFiscaisCodigo.AsInteger);

                                        // Isentas e Outras de IPI.
                                        Dados.CSTIPI.Locate('Codigo', NotasTerceirosItensCST_IPI.Value, [loCaseInsensitive]);
                                        NotasTerceirosItensValor_OutrasIPI.Value  := 0;
                                        NotasTerceirosItensValor_IsentasIPI.Value := 0;
                                        if (not Dados.CSTIPITributavel.AsBoolean) then begin
                                           if (Dados.CSTIPI.FieldByName('Apuracao').Value = 'O') then begin
                                              NotasTerceirosItensValor_OutrasIPI.Value := NotasTerceirosItensValor_Liquido.AsFloat;
                                              cOutrasIPI.Value                         := cOutrasIPI.Value + NotasTerceirosItensValor_Liquido.AsFloat;
                                           end else begin
                                              NotasTerceirosItensValor_IsentasIPI.Value := NotasTerceirosItensValor_Liquido.AsFloat;
                                              cIsentasIPI.Value                         := cIsentasIPI.Value + NotasTerceirosItensValor_Liquido.AsFloat;
                                           end;
                                        end;

                                        // Zera imposto IPI pela CST.
                                        if not CSTIPITributavel.AsBoolean then begin
                                           NotasTerceirosItensValor_BCIPI.Value  := 0;
                                           NotasTerceirosItensAliquota_IPI.Value := 0;
                                           NotasTerceirosItensValor_IPI.Value    := 0;
                                        end;

                                        // Zera imposto PIS pela CST.
                                        CSTPIS.SQL.Clear;
                                        CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE Codigo = :pCodigo');
                                        CSTPIS.ParamByName('pCodigo').AsString := ReferenciasFiscaisCSTPIS.AsString;
                                        CSTPIS.Open;
                                        If not CSTPIS.FieldByName('Tributavel').AsBoolean then begin
                                           NotasTerceirosItensValor_BCPIS.Value  := 0;
                                           NotasTerceirosItensAliquota_PIS.Value := 0;
                                           NotasTerceirosItensValor_PIS.Value    := 0;
                                        end;

                                        // Zera imposto COFINS pela CST.
                                        CSTCOFINS.SQL.Clear;
                                        CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE Codigo = :pCodigo');
                                        CSTCOFINS.ParamByName('pCodigo').AsString := ReferenciasFiscaisCSTCOFINS.AsString;
                                        CSTCOFINS.Open;
                                        if not CSTCOFINS.FieldByName('Tributavel').AsBoolean then begin
                                           NotasTerceirosItensValor_BCCOFINS.Value  := 0;
                                           NotasTerceirosItensAliquota_COFINS.Value := 0;
                                           NotasTerceirosItensValor_COFINS.Value    := 0;
                                        end;

                                        // Zera imposto ICMS pela CST.
                                        CSTTabelaB.SQL.Clear;
                                        CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB WHERE Codigo = :pCodigo');
                                        CSTTabelaB.ParamByName('pCodigo').AsString := Copy(ReferenciasFiscaisCSTICMS.AsString, 2, 3);
                                        CSTTabelaB.Open;

                                        // isentas e outras de ICMS para Simples/ 1.Consumo/ 6.Imobilizado/ 9.Outras.
                                        if (Dados.EmpresasRegime_Apuracao.AsInteger = 1) or (Dados.ReferenciasFiscaisFinalidade_Mercadoria.AsInteger in[1, 6, 9]) then begin
                                           if Dados.CSTTabelaBApuracao2.Value = 'I' then begin
                                              NotasTerceirosItensValor_IsentasICMS.Value := NotasTerceirosItensValor_Liquido.Value;
                                              NotasTerceirosItensValor_OutrasICMS.Value  := 0;
                                           end;
                                           if Dados.CSTTabelaBApuracao2.Value = 'O' then begin
                                              NotasTerceirosItensValor_OutrasICMS.Value  := NotasTerceirosItensValor_Liquido.Value;
                                              NotasTerceirosItensValor_IsentasICMS.Value := 0;
                                           end;
                                           NotasTerceirosItensValor_BCICMSOper.Value  := 0;
                                           NotasTerceirosItensValor_ICMSOper.Value    := 0;
                                           NotasTerceirosItensAliquota_ICMSOper.Value := 0;
                                        end;

                                        // Zera os valores de PIS/COFINS pela referência fiscal.
                                        if (not ReferenciasFiscaisApuracao_PISCOFINS.AsBoolean) or (NotasTerceirosItensAliquota_PIS.AsFloat <> ConfiguracaoPIS_AliquotaBasica.AsFloat) then begin
                                           NotasTerceirosItensValor_BCPIS.Value     := 0;
                                           NotasTerceirosItensAliquota_PIS.Value    := 0;
                                           NotasTerceirosItensValor_PIS.Value       := 0;
                                           NotasTerceirosItensValor_BCCOFINS.Value  := 0;
                                           NotasTerceirosItensAliquota_COFINS.Value := 0;
                                           NotasTerceirosItensValor_COFINS.Value    := 0;
                                        end;
                                        if NotasTerceirosItensAliquota_PIS.AsFloat <> ConfiguracaoPIS_AliquotaBasica.AsFloat then begin
                                           NotasTerceirosItensCST_PIS.Value    := ReferenciasFiscaisCSTPIS_Dif.AsString;
                                           NotasTerceirosItensCST_COFINS.Value := ReferenciasFiscaisCSTCOFINS_Dif.AsString;
                                        end;

                                        //Pegando os dados de Navio/DI /Armazem da grade da nota de referencia.
                                        NotasTerceirosItensNavio.Value := ControleNaviosOrdem.Value;
                                        NotasTerceirosItensDI.Value    := iif(trim(GradeItens.Cells[10,mQtdeItem]) <> '', GradeItens.Cells[10,mQtdeItem], cDI.Text);

                                        // Pegandos os dados do retorno de armazem.
                                        if ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 4 then begin
                                           with GradeReferencia do begin
                                                for i := 1 to RowCount do begin
                                                    if cells[01, i] =  ProdutosCodigo.asstring then begin
                                                       NotasTerceirosItensNavio.Value := strtoint(cells[06, i]);
                                                       NotasTerceirosItensDI.Value    := cells[07, i] ;
                                                    end;
                                                end;
                                           end;
                                        end;
                    NotasTerceirosItens.Post;

                    // Ajusta o tipo de entrada do produto para cálculo de ISENTAS E OUTRAS DE ICMS na saída.
                    Produtos.Edit;
                             If (ReferenciasFiscaisSomar_ICMSST.AsBoolean = true) and (EmpresasDistribuidora.AsBoolean = true) and (NotasTerceirosItensValor_ICMSSub.Value > 0) then
                                ProdutosEntrada_ST.Value := true
                             else
                                ProdutosEntrada_ST.Value := false;

                             // Processa o valor do estoque minímo do produto por percentual caso esteja informado o percentual minímo no cadastro.
                             If (ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 0) or (ReferenciasFiscaisFinalidade_Mercadoria.AsInteger = 3) then begin
                                If ProdutosEstoque_MinimoPerc.AsFloat > 0 then begin
                                   ProdutosEstoque_Minimo.Value := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger), ProdutosEstoque_MinimoPerc.AsFloat);
                                End;
                             End;

                             // Calcula e atualiza o "Preço de venda" no cadastro de produtos.
                             mCSLL := 0;
                             mIRPJ := 0;
                             If Impostos.Locate('Codigo', ReferenciasFiscaisCodigo_CSLL.Value, [loCaseInsensitive]) = true then begin
                                mCSLL := ImpostosValor.Value;
                             End;
                             If Impostos.Locate('Codigo', ReferenciasFiscaisCodigo_IRPJ.Value, [loCaseInsensitive]) = true then begin
                                mIRPJ := ImpostosValor.Value;
                             End;

                             mFator := 0;
                             If ReferenciasFiscaisPreco_Venda.AsInteger = 3 then begin
                                mFator := 1-((NotasTerceirosItensAliquota_PIS.Value    +NotasTerceirosItensAliquota_COFINS.Value    +mCSLL+mIRPJ+cComissao.Value+cCustoFinanceiro.Value+cCustoFixo.Value+NotasTerceirosItensAliquota_ICMSOper.Value+cMargem.Value)/100);
                             End;
                             If ReferenciasFiscaisPreco_Venda.AsInteger = 4 then begin
                                mFator := 1-((ConfiguracaoPIS_AliquotaBasicaSaida.Value+ConfiguracaoCOFINS_AliquotaBasicaSaida.Value+mCSLL+mIRPJ+cComissao.Value+cCustoFinanceiro.Value+cCustoFixo.Value+NotasTerceirosItensAliquota_ICMSOper.Value+cMargem.Value)/100);
                             End;

                             cPrecoVenda.Items.Add('         Produto: '+ProdutosDescricao.AsString);
                             cPrecoVenda.Items.Add('            CSLL: '+FormatFloat(',##0.00', mCSLL));
                             cPrecoVenda.Items.Add('            IRPJ: '+FormatFloat(',##0.00', mIRPJ));
                             cPrecoVenda.Items.Add('Percentual Lucro: '+FormatFloat(',##0.00', cLucro.Value)+'     Valor Lucro: '+FormatFloat(',##0.00', Percentual(NotasTerceirosItensValor_Unitario.Value, cLucro.Value)) );
                             cPrecoVenda.Items.Add('        Comissão: '+FormatFloat(',##0.00', cComissao.Value));
                             cPrecoVenda.Items.Add('Custo Financeiro: '+FormatFloat(',##0.00', cCustoFinanceiro.Value));
                             cPrecoVenda.Items.Add('      Custo Fixo: '+FormatFloat(',##0.00', cCustoFixo.Value));
                             cPrecoVenda.Items.Add('      ICMS Oper.: '+FormatFloat(',##0.00', NotasTerceirosItensAliquota_ICMSOper.Value));
                             cPrecoVenda.Items.Add('          Margem: '+FormatFloat(',##0.00', cMargem.Value));

                             If ReferenciasFiscaisPreco_Venda.AsInteger = 1 then begin
                                ProdutosValor_Venda.Value := NotasTerceirosItensValor_Unitario.Value;
                             End;
                             If ReferenciasFiscaisPreco_Venda.AsInteger = 2 then begin
                                ProdutosValor_Venda.Value := (NotasTerceirosItensValor_Unitario.Value + Percentual(NotasTerceirosItensValor_Unitario.Value, cLucro.Value));
                             End;
                             If ReferenciasFiscaisPreco_Venda.AsInteger = 3 then begin
                                ProdutosValor_Venda.Value := (NotasTerceirosItensValor_Unitario.Value + Percentual(NotasTerceirosItensValor_Unitario.Value, cLucro.Value)) / mFator;
                                cPrecoVenda.Items.Add('             PIS: '+FormatFloat(',##0.00', NotasTerceirosItensAliquota_PIS.Value));
                                cPrecoVenda.Items.Add('          COFINS: '+FormatFloat(',##0.00', NotasTerceirosItensAliquota_COFINS.Value));
                             End;
                             If ReferenciasFiscaisPreco_Venda.AsInteger = 4 then begin
                                ProdutosValor_Venda.Value := (NotasTerceirosItensValor_Unitario.Value + Percentual(NotasTerceirosItensValor_Unitario.Value, cLucro.Value)) / mFator;
                                cPrecoVenda.Items.Add('             PIS: '+FormatFloat(',##0.00', ConfiguracaoPIS_AliquotaBasicaSaida.Value));
                                cPrecoVenda.Items.Add('          COFINS: '+FormatFloat(',##0.00', ConfiguracaoCOFINS_AliquotaBasicaSaida.Value));
                             End;
                             If ReferenciasFiscaisPreco_Venda.AsInteger = 5 then begin
                                ProdutosValor_Venda.Value := (NotasTerceirosItensValor_Unitario.Value + (NotasTerceirosItensValor_IPI.Value/NotasTerceirosItensQuantidade.Value));
                                cPrecoVenda.Items.Add('             IPI: '+FormatFloat(',##0.00', NotasTerceirosItensValor_IPI.Value));
                             End;

                             cPrecoVenda.Items.Add('           Fator: '+FormatFloat(',##0.00000000', mFator) );
                             cPrecoVenda.Items.Add('  Valor Unitario: '+FormatFloat(',##0.0000', NotasTerceirosItensValor_Unitario.Value));
                             cPrecoVenda.Items.Add('     Valor Venda: '+FormatFloat(',##0.0000', ProdutosValor_Venda.Value));
                             cPrecoVenda.Items.Add('************************************************************************************');
                    Produtos.Post;

                    // Cadastrando o item no "Ativo Imobilizado".
                    If (Natureza.Locate('Codigo', NotasTerceirosItensNatureza_Codigo.Value, [loCaseInsensitive]) = true) and (NaturezaImobilizado.AsBoolean = True) then begin
                       If (NotasTerceirosItensValor_Liquido.Value > ConfiguracaoValor_CIAP.Value) then begin
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
                    End;

                    // Adicionando o item a Ficha de estoque.
                    If NotasTerceirosItensMovimenta_Estoque.AsBoolean then begin
                       tEstoque.SQL.Clear;
                       tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
                       tEstoque.SQL.Add('FROM   FichaEstoque');
                       tEstoque.Open;
                       mReg := tEstoque.FieldByName('Registro').AsInteger;

                       tEstoque.SQL.Clear;
                       tEstoque.SQL.Add('SELECT Qtde_Saldo');
                       tEstoque.SQL.Add('      ,Unitario_Saldo');
                       tEstoque.SQL.Add('      ,Total_Saldo');
                       tEstoque.SQL.Add('FROM   FichaEstoque');
                       tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                       tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaEstoque WHERE Codigo = :pCodigo)');
                       tEstoque.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                       tEstoque.Open;

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
                                    FichaEstoqueTotal_Entrada.Value    := NotasTerceirosItensQuantidade.AsFloat * NotasTerceirosItensValor_Inventario.Value;
                                    FichaEstoqueQtde_Saida.Value       := 0;
                                    FichaEstoqueUnitario_Saida.Value   := 0;
                                    FichaEstoqueTotal_Saida.Value      := 0;
                                    If tEstoque.RecordCount > 0 then begin
                                       FichaEstoqueQtde_Saldo.Value  := tEstoque.FieldByName('Qtde_Saldo').AsFloat  + NotasTerceirosItensQuantidade.AsFloat;
                                       FichaEstoqueTotal_Saldo.Value := tEstoque.FieldByName('Total_Saldo').AsFloat + FichaEstoqueTotal_Entrada.AsFloat;
                                    end else begin
                                       FichaEstoqueQtde_Saldo.Value  := NotasTerceirosItensQuantidade.AsFloat;
                                       FichaEstoqueTotal_Saldo.Value := FichaEstoqueTotal_Entrada.AsFloat;
                                    End;

                                    if FichaEstoqueQtde_Saldo.AsFloat > 0 then begin
                                       FichaEstoqueUnitario_Saldo.Value := FichaEstoqueTotal_Saldo.AsFloat / FichaEstoqueQtde_Saldo.AsFloat;
                                    end;

                                    FichaEstoqueOrigem.Value         := 'NFT';
                                    FichaEstoqueProcesso.Value       := NotasTerceirosItensProcesso.Value;
                                    if ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) then begin
                                       FichaEstoqueTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                    end;
                       FichaEstoque.Post;
                    End;

                    // Adicionando o item a Ficha de Inventario.
                    If NotasTerceirosItensMovimenta_Inventario.AsBoolean then begin
                       tEstoque.SQL.Clear;
                       tEstoque.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro');
                       tEstoque.SQL.Add('FROM   FichaInventario');
                       tEstoque.Open;
                       mReg := tEstoque.FieldByName('Registro').AsInteger;

                       tEstoque.SQL.Clear;
                       tEstoque.SQL.Add('SELECT Qtde_Saldo');
                       tEstoque.SQL.Add('      ,Unitario_Saldo');
                       tEstoque.SQL.Add('      ,Total_Saldo');
                       tEstoque.SQL.Add('FROM   FichaInventario');
                       tEstoque.SQL.Add('WHERE  Codigo = :pCodigo');
                       tEstoque.SQL.Add('  AND  Registro = (SELECT MAX(Registro) FROM FichaInventario WHERE Codigo = :pCodigo)');
                       tEstoque.ParamByName('pCodigo').AsInteger := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                       tEstoque.Open;

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
                                       If tEstoque.RecordCount > 0 then begin
                                          FichaInventarioQtde_Saldo.Value  := tEstoque.FieldByName('Qtde_Saldo').AsFloat  + NotasTerceirosItensQuantidade.AsFloat;
                                          FichaInventarioTotal_Saldo.Value := tEstoque.FieldByName('Total_Saldo').AsFloat + FichaInventarioTotal_Entrada.AsFloat;
                                       end else begin
                                          FichaInventarioQtde_Saldo.Value  := NotasTerceirosItensQuantidade.AsFloat;
                                          FichaInventarioTotal_Saldo.Value := FichaInventarioTotal_Entrada.AsFloat;
                                       End;

                                       if FichaInventarioQtde_Saldo.AsFloat > 0 then begin
                                         FichaInventarioUnitario_Saldo.Value := FichaInventarioTotal_Saldo.AsFloat / FichaInventarioQtde_Saldo.AsFloat;
                                       end;

                                       FichaInventarioOrigem.Value   := 'NFT';
                                       FichaInventarioProcesso.Value := NotasTerceirosItensProcesso.Value;
                                       If ProcessosDOC.Locate('Processo', NotasTerceirosItensProcesso.AsString, [loCaseInsensitive]) then begin
                                          FichaInventarioTipo_Processo.Value := Dados.ProcessosDOCModalidade_Importacao.Value;
                                       End;
                       FichaInventario.Post;
                    End;

                    // Adicionar o item a tabela "NotasItensNavios'.
                    if not ReferenciasFiscaisTransferencia.asboolean then begin
                       if NotasTerceirosItensMovimenta_Estoque.AsBoolean then begin
                          with NotasItensNavios do begin
                               sql.clear;
                               sql.add('select * from NotasItensNavios where Registro = (select max(Registro) from NotasItensNavios)+1');
                               open;
                               if trim(GradeReferencia.Cells[03, 01]) <> '' then begin
                                  with tTmp do begin
                                       // Reduz a quantidade devolvida da nota de referência ja importada para evitar duplicar.
                                       sql.clear;
                                       sql.add('update NotasItensNavios set Quantidade_Devol = Quantidade_Devol - (select isnull(Quantidade,0) from NotasItensNavios nir where nir.Nota_Referencia = nin.Nota and nir.Data_Emissao = nin.Data_Emissao and nir.DI = nin.DI)');
                                       sql.add('from NotasItensNavios as nin');
                                       sql.add('where Nota = :pNota');
                                       sql.add('and Data_Emissao = :pData');
                                       sql.add('and Saida_Entrada = 1');
                                       sql.add('and Emissor = ''P'' ');
                                       parambyname('pNota').Value := strtoint(GradeReferencia.Cells[03, 01]);
                                       parambyname('pData').Value := strtodate(GradeReferencia.Cells[04, 01]);
                                       execute;
                                       // Deleta a nota ja importada.
//                                       sql.clear;
//                                       sql.add('delete from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Saida_Entrada = 0 and Emissor = ''T'' ');
//                                       parambyname('pNota').value := NotasTerceirosItensNota.asinteger;
//                                       parambyname('pData').value := NotasTerceirosItensData_Emissao.Value;
//                                       execute;
                                  end;
                               end;
                               with tRegistro do begin
                                    SQL.Clear;
                                    SQL.Add('select isnull(max(Registro), 0)+1 as Registro from NotasItensNavios');
                               end;

                               mSaldo := NotasTerceirosItens.FieldByName('Quantidade').asfloat;
                               while mSaldo > 0 do begin
                                     if cfinNfe.Text = '4' then begin
                                        // Pega a devolução pela ultima saída (Contrario da NF de saída que pega o navio mais antigo).
                                        with tTmp do begin
                                             sql.clear;
                                             sql.add('select Registro');
                                             sql.add('      ,Navio');
                                             sql.add('      ,Quantidade');
                                             sql.add('      ,DI');
                                             sql.add('      ,Nota');
                                             sql.add('      ,Data_Emissao');
                                             sql.add('from NotasItensNavios');
                                             sql.add('where Registro = (select max(Registro) from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Saida_Entrada = 1 and (Quantidade - isnull(Quantidade_Devol, 0)) > 0)');
                                             sql.add('order by Registro desc');
                                             parambyname('pNota').Value := strtoint(GradeReferencia.Cells[03, 01]);
                                             parambyname('pData').Value := strtodate(GradeReferencia.Cells[04, 01]);
                                             open;
                                        end;
                                     end;

                                     if tTmp.recordcount > 0 then begin
                                        // Adiciona nota a tabela "NotasItensNavios".
                                        tRegistro.Open;
                                        Append;
                                             fieldbyname('Registro').Value          := tRegistro.FieldByName('Registro').AsInteger;
                                             fieldbyname('Nota').Value              := NotasTerceirosItensNota.AsInteger;
                                             //fieldbyname('Data_Emissao').Value      := NotasTerceirosItensData_Emissao.Value;
                                             fieldbyname('Data_Emissao').Value      := NotasTerceirosItensData_Entrada.Value;
                                             fieldbyname('Saida_Entrada').Value     := 0;
                                             fieldbyname('Codigo_Mercadoria').Value := NotasTerceirosItensCodigo_Mercadoria.AsInteger;
                                             fieldbyname('Item').Value              := NotasTerceirosItensItem.AsInteger;
                                             fieldbyname('Emissor').Value           := 'T';
                                             fieldbyname('DI').Value                := iif(cfinNfe.text = '4', tTmp.fieldbyname('DI').asstring, null);
                                             fieldbyname('Navio').Value             := iif(cfinNfe.text = '4', tTmp.fieldbyname('Navio').asinteger, ControleNaviosOrdem.asinteger);
                                             fieldbyname('Nota_Referencia').Value   := iif(cfinNfe.text = '4', tTmp.fieldbyname('Nota').asinteger, null);
                                             fieldbyname('Data_Referencia').Value   := iif(cfinNfe.text = '4', tTmp.fieldbyname('Data_Emissao').value, null);
                                             if cfinNfe.Text = '4' then begin
                                                fieldbyname('Quantidade').Value := iif(tTmp.fieldbyname('Quantidade').asfloat < mSaldo, tTmp.fieldbyname('Quantidade').asfloat, mSaldo);
                                                mSaldo                          := mSaldo - tTmp.fieldbyname('Quantidade').asfloat;
                                             end else begin
                                                fieldbyname('Quantidade').Value := mSaldo;
                                                mSaldo                          := mSaldo - mSaldo;
                                             end;
                                        Post;
                                        tRegistro.close;
                                        // Registra a quantidade devolvida na nota de referência.
                                        with tTmp2 do begin
                                             sql.clear;
                                             sql.add('update NotasItensNavios set Quantidade_Devol = isnull(Quantidade_Devol, 0) + :pQtdeDev');
                                             sql.add('where Registro = '+tTmp.fieldbyname('Registro').asstring);
                                             parambyname('pQtdeDev').value := NotasItensNavios.fieldbyname('Quantidade').asfloat;
                                             execute;
                                        end;
                                     end else begin
                                        mSaldo := 0;
                                     end;
                               end;
                          end;
                       end;
                    end;
                 end;

                 Inc(mQtdeItem);
//                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
//                 Application.ProcessMessages;
           End;

           // Totalizando a nota fiscal com os novos valores.
           NotasTerceiros.Edit;
                          NotasTerceirosItens.First;
                          While not NotasTerceirosItens.Eof do Begin
                                NotasTerceirosValor_TotalProdutos.Value     := NotasTerceirosValor_TotalProdutos.Value  + NotasTerceirosItensValor_Liquido.Value;
                                NotasTerceirosValor_TotalProdutosOrig.Value := NotasTerceirosValor_TotalProdutosOrig.Value  + NotasTerceirosItensValor_LiquidoOrig.Value;
                                NotasTerceirosValor_BCICMSOper.Value        := NotasTerceirosValor_BCICMSOper.Value     + NotasTerceirosItensValor_BCICMSOper.Value;
                                NotasTerceirosValor_ICMSOper.Value          := NotasTerceirosValor_ICMSOper.Value       + NotasTerceirosItensValor_ICMSOper.Value;
                                NotasTerceirosValor_IsentasICMS.Value       := NotasTerceirosValor_IsentasICMS.Value    + NotasTerceirosItensValor_IsentasICMS.Value;
                                NotasTerceirosValor_OutrasICMS.Value        := NotasTerceirosValor_OutrasICMS.Value     + NotasTerceirosItensValor_OutrasICMS.Value;
                                NotasTerceirosValor_BCICMSSub.Value         := NotasTerceirosValor_BCICMSSub.Value      + NotasTerceirosItensValor_BCICMSSub.Value;
                                NotasTerceirosValor_ICMSSub.Value           := NotasTerceirosValor_ICMSSub.Value        + NotasTerceirosItensValor_ICMSSub.Value;
                                NotasTerceirosValor_TotalBCIPI.Value        := NotasTerceirosValor_TotalBCIPI.Value     + Roundto(NotasTerceirosItensValor_BCIPI.Value, -2);
                                NotasTerceirosValor_TotalIPI.Value          := NotasTerceirosValor_TotalIPI.Value       + Roundto(NotasTerceirosItensValor_IPI.AsFloat, -2);
                                NotasTerceirosValor_IsentasIPI.Value        := NotasTerceirosValor_IsentasIPI.Value     + NotasTerceirosItensValor_IsentasIPI.Value;
                                NotasTerceirosValor_OutrasIPI.Value         := NotasTerceirosValor_OutrasIPI.Value      + NotasTerceirosItensValor_OutrasIPI.Value;
                                NotasTerceirosValor_TotalDescontos.Value    := NotasTerceirosValor_TotalDescontos.Value + NotasTerceirosItensValor_Desconto.Value;
                                NotasTerceirosQuantidade.Value              := NotasTerceirosQuantidade.Value           + NotasTerceirosItensQuantidade.Value;
                                NotasTerceirosValor_PIS.VAlue               := NotasTerceirosValor_PIS.Value            + NotasTerceirosItensValor_PIS.Value;
                                NotasTerceirosValor_COFINS.Value            := NotasTerceirosValor_COFINS.Value         + NotasTerceirosItensValor_COFINS.Value;
                                NotasTerceirosValor_TotalFrete.Value        := NotasTerceirosValor_TotalFrete.Value     + NotasTerceirosItensValor_Frete.Value;
                                NotasTerceirosTotal_Despesas.Value          := NotasTerceirosTotal_Despesas.Value       + NotasTerceirosItensValor_Despesa.Value;

                                NotasTerceirosItens.Next;
                          End;
                          NotasTerceirosValor_TotalNota.Value    := (NotasTerceirosValor_TotalProdutos.Value + NotasTerceirosValor_ICMSSub.Value + NotasTerceirosValor_TotalIPI.Value + NotasTerceirosValor_TotalFrete.Value + NotasTerceirosTotal_Despesas.Value) - NotasTerceirosValor_TotalDescontos.value ;
                          NotasTerceirosValor_TotalLiquido.Value := NotasTerceirosValor_TotalNota.Value;
           NotasTerceiros.Post;

           // Efetiva os numeros de seriais adicionado como definitivos.
           bImportar.Tag := 1;
           tProdutos.SQL.Clear;
           tProdutos.SQL.Add('UPDATE ProdutosSeriais      SET Temp = NULL WHERE Numero IN(SELECT DISTINCT Numero FROM ProdutosSeriaisNotas WHERE Nota = :pNota AND Data = :pData)');
           tProdutos.SQL.Add('UPDATE ProdutosSeriaisNotas SET Temp = NULL WHERE Nota = :pNota AND Data = :pData');
           tProdutos.SQL.Add('UPDATE ProdutosDetalhe      SET Temp = NULL WHERE Nota_Entrada = :pNota AND Data_Entrada = :pData');
           tProdutos.ParamByName('pNota').AsInteger := StrtoInt(cnNF.Text);
           tProdutos.ParamByName('pData').AsDate    := cDataEnt.Date;
           tProdutos.Execute;

           // Em caso de nota de transferência pega as notas da tabela "NotasItensNavios" da filial de origem.
           if ReferenciasFiscaisTransferencia.asboolean then begin
              with tExiste do begin
                   sql.clear;
                   sql.add('select Banco_Dados from Cybersoft_Cadastros.dbo.Empresas where CNPJ = :pCNPJ');
                   parambyname('pCNPJ').AsString := cCNPJ.Text;
                   open;
              end;
              if tExiste.RecordCount > 0 then begin
                 with tTmp do begin
                      sql.clear;
                      sql.add('select *');
                      sql.add('from '+tExiste.fieldbyname('Banco_Dados').asstring+'.dbo.NotasItensNavios');
                      sql.add('where Nota = :pNota');
                      sql.add('and Emissor  = ''P'' ');
                      sql.add('and Saida_Entrada = 1');
                      parambyname('pNota').asinteger  := strtoint(cnNF.text);
                      //sql.SaveToFile('c:\temp\Importar_XML_Terceiros_Navios.sql');
                      open;
                      first;
                      if recordcount > 0 then begin
                         // deleta as notas fiscais existentes na tabela. para evitar duplicidade.
                         with tRegistro do begin
                              sql.Clear;
                              sql.Add('delete from NotasItensNavios where Nota = :pNota and Emissor = ''T'' and Saida_Entrada = 0');
                              parambyname('pNota').asinteger := strtoint(cnNF.text);
                              execute;
                         end;
                         with NotasItensNavios do begin
                              sql.clear;
                              sql.add('select * from NotasItensNavios where Nota = :pNota and Emissor = ''T'' and Saida_Entrada = 0');
                              open;
                         end;
                         while not eof do begin
                               with tRegistro do begin
                                    sql.Clear;
                                    sql.Add('select isnull(max(Registro), 0)+1 as Registro from NotasItensNavios');
                                    open;
                               end;
                               NotasItensNavios.Append;
                                                NotasItensNaviosRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger;
                                                NotasItensNaviosNota.Value              := fieldbyname('Nota').value;
                                                NotasItensNaviosData_Emissao.Value      := date;
                                                NotasItensNaviosSaida_Entrada.Value     := 0;
                                                NotasItensNaviosCodigo_Mercadoria.Value := FieldByName('Codigo_Mercadoria').value;
                                                NotasItensNaviosItem.Value              := FieldByName('Item').value;
                                                NotasItensNaviosNavio.Value             := FieldByName('Navio').value;
                                                NotasItensNaviosQuantidade.Value        := FieldByName('Quantidade').value;
                                                NotasItensNaviosEmissor.Value           := 'T';
                                                NotasItensNaviosDI.Value                := fieldByName('DI').asstring;
                                                NotasItensNaviosArmazem.Value           := fieldbyname('Armazem').Value;
                               NotasItensNavios.Post;
                               next;
                         end;
                      end;
                 end;
              end;
           end;

           // Gerando os lançamentos contabeis dos impostos da nota fiscal de terceiros.
           //LancamentoContabil;

           NotasTerceiros.SQL.Clear;
           NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros ORDER BY Nota');
           NotasTerceiros.Open;
           NotasTerceiros.Locate('Nota; Data_Emissao', VarArrayOf([StrtoInt(cnNF.Text), cdEmi.Text]), [loCaseInsensitive]);
      end;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.cNotasClick(Sender: TObject);
var
   mXML: TXMLDocument;

   mNodeNFe,
   mNodeInfNFe,
   mNodeIde,
   mNodeEmit,
   mNodeEmitEnd,
   mNodeDest,
   mNodeDestEnd,
   mNodedet,
   mNodeTransp,
   mNodeTranspVol,
   mNodeProtNFe,
   mNodeProtNFeInf,
   mNodedetProd,
   mNodedetProdDI,
   mNodedetProdDIAdi,
   mNodedetProdCompl,
   mNodedetImposto,
   mNodedetImpostoICMS,
   mNodedetImpostoISSQN,
   mNodedetImpostoICMSCST,
   mNodeDetImpostoIPI,
   mNodeDetImpostoIPITrib,
   mNodeDetImpostoII,
   mNodeDetImpostoPIS,
   mNodeDetImpostoPISAliq,
   mNodeDetImpostoCOF,
   mNodeDetImpostoCOFAliq,
   mNodeTotal,
   mNodeIdeRef,
   mNodeTotalICMSTot: IXMLNode;

   mdEmi,
   mdSaiEnt,
   mdDI,
   mdDesemb: WideString;

   mChave,
   mFabricacao,
   mCpl,
   mCodigoCSTICMS,
   mLote,
   mValidade: String;

   mEstado,
   mMunicipio,
   mAmbiente,
   i, p, v, l: Integer;

   mtpEmis    : Array[1..5] of String;
   mfinNFe    : Array[1..4] of String;
   mprocEmi   : Array[0..4] of String;
   mOrigemMerc: Array[0..2] of String;
   mModalidade: Array[0..3] of String;

   mApuracao1,
   mApuracao2,
   mBCICMS,
   mValorTotal: Real;

   mAchouICMS: Boolean;
Const
   mICMSSN : Array[1..10] of String = ('101', '102', '103', '201','202', '203', '300', '400', '500', '900');
begin
       mXML := TXMLDocument.Create(Self);
       mXML.LoadFromFile(cNotas.Items[cNotas.ItemIndex]);
       mXML.Active := True;

       // Verificando se não é um CT-e.
       mNodeNFe := mXML.DocumentElement.ChildNodes.FindNode('CTe');
       if mNodeNFe <> nil then begin
          mXML.Free;
          screen.Cursor := crDefault;
          Showmessage('Arquivo XML invalido, este arquivo XML é um CT-e, click em importar CT-e.');
          Abort;
       end;

       // O XML caso haja caracteres invalidos.
       Try
           // Típos de emissao da NF-e.
           mtpEmis[1] := 'Normal – emissão normal';
           mtpEmis[2] := 'Contingência FS – emissão em contingência com impressão do DANFE em Formulário de Segurança';
           mtpEmis[3] := 'Contingência SCAN – emissão em contingência no Sistema de Contingência do Ambiente Nacional – SCAN';
           mtpEmis[4] := 'Contingência DPEC - emissão em contingência com envio da Declaração Prévia de Emissão em Contingência – DPEC';
           mtpEmis[5] := 'Contingência FS-DA - emissão em contingência c/impressão DANFE Formulário Seg.p/Impressão Doc.Aux.de Doc.Fiscal Eletrônico (FS-DA)';
           // Finalidades de emissão.
           mfinNFe[1] := 'NF-e Normal';
           mfinNFe[2] := 'NF-e Complementar';
           mfinNFe[3] := 'NF-e de Ajuste';
           mfinNFe[4] := 'NF-e de Devolução';
           // Processo de emissão.
           mprocEmi[0] := 'Emissão de NF-e com aplicativo do contribuinte.';
           mprocEmi[1] := 'Emissão de NF-e avulsa pelo Fisco.';
           mprocEmi[2] := 'Emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco.';
           mprocEmi[3] := 'Emissão NF-e pelo contribuinte com aplicativo fornecido pelo Fisco.';
           // Origem da mercadoria.
           mOrigemMerc[0] := 'Nacional';
           mOrigemMerc[1] := 'Estrangeira – Importação direta';
           mOrigemMerc[2] := 'Estrangeira – Adquirida no mercado interno';
           // Modalidade de determinação da BC do ICMS.
           mModalidade[0] := 'Margem Valor Agregado (%)';
           mModalidade[1] := 'Pauta (Valor)';
           mModalidade[2] := 'Preço Tabelado Máx. (valor)';
           mModalidade[3] := 'Valor da operação.';

           for i := 0 to Gradeitens.RowCount -1 do begin
               Gradeitens.Rows[I].Clear;
           end;

           // Posiciona nos nós.
           try
               mNodeNFe          := mXML.DocumentElement.ChildNodes.FindNode('NFe');
               mNodeInfNFe       := mNodeNfe.ChildNodes.FindNode('infNFe');
               mNodeIde          := mNodeinfNFe.ChildNodes.FindNode('ide');
               //mNodeIdeRef       := mNodeide.ChildNodes.FindNode('NFref');
               mNodeEmit         := mNodeinfNFe.ChildNodes.FindNode('emit');
               mNodeEmitEnd      := mNodeEmit.ChildNodes.FindNode('enderEmit');
               mNodeDest         := mNodeinfNFe.ChildNodes.FindNode('dest');
               mNodeDestEnd      := mNodeDest.ChildNodes.FindNode('enderDest');
               mNodeDet          := mNodeinfNFe.ChildNodes.FindNode('det');
               mNodeTransp       := mNodeinfNFe.ChildNodes.FindNode('transp');
               mNodeTranspVol    := mNodeTransp.ChildNodes.FindNode('vol');
               mNodeTotal        := mNodeinfNFe.ChildNodes.FindNode('total');
               mNodeTotalICMSTot := mNodeTotal.ChildNodes.FindNode('ICMSTot');
               mNodeProtNFe      := mXML.DocumentElement.ChildNodes.FindNode('protNFe');
               mNodeProtNFeInf   := mNodeProtNFe.ChildNodes.FindNode('infProt');
               cProtocolo.Text   := mNodeProtNFeInf.ChildNodes.FindNode('nProt').Text;
               cChave.Text       := mNodeProtNFeInf.ChildNodes.FindNode('chNFe').Text;
               mChave            := mNodeInfNFe.AttributeNodes.Nodes[1].Text;
               mEstado           := mNodeIde.ChildNodes['cUF'].NodeValue;
           except
               mNodeInfNFe       := mXML.DocumentElement.ChildNodes.FindNode('infNFe');
               mNodeIde          := mNodeinfNFe.ChildNodes.FindNode('ide');
               mNodeEmit         := mNodeinfNFe.ChildNodes.FindNode('emit');
               mNodeEmitEnd      := mNodeEmit.ChildNodes.FindNode('enderEmit');
               mNodeDest         := mNodeinfNFe.ChildNodes.FindNode('dest');
               mNodeDestEnd      := mNodeDest.ChildNodes.FindNode('enderDest');
               mNodeDet          := mNodeinfNFe.ChildNodes.FindNode('det');
               mNodeDetProd      := mNodeDet.ChildNodes.FindNode('prod');
               mNodeTransp       := mNodeinfNFe.ChildNodes.FindNode('transp');
               mNodeTranspVol    := mNodeTransp.ChildNodes.FindNode('vol');
               mNodeTotal        := mNodeinfNFe.ChildNodes.FindNode('total');
               mNodeTotalICMSTot := mNodeTotal.ChildNodes.FindNode('ICMSTot');
               mChave            := mNodeInfNFe.AttributeNodes.Nodes[1].Text;
               cChave.Text       := ApenasNumeros(mChave);
               mEstado           := mNodeIde.ChildNodes['cUF'].NodeValue;
           end;

           dmFiscal.NotasTerceiros.Locate('NFe_cNF', cChave.Text, [loCaseInsensitive]);
           Dados.Estados.Locate('Numero', mEstado, [loCaseInsensitive]);
           If mNodeIde.ChildNodes['tpNF'].NodeValue = 0 then ctpNF.Text := 'ENTRADA' else ctpNF.Text := 'SAÍDA';

           ccNF.Text     := mNodeIde.ChildNodes['cNF'].text;
           cnNF.Text     := mNodeIde.ChildNodes['nNF'].text;
           ccUF.Text     := Dados.EstadosCodigo.Value;
           cNatOp.Text   := mNodeIde.ChildNodes['natOp'].text;

           If mNodeIde.ChildNodes.FindNode('dEmi') <> nil then
              mdEmi := mNodeIde.ChildNodes['dEmi'].text
           else
              mdEmi := mNodeIde.ChildNodes['dhEmi'].text;
           cdEmi.Text    := Copy(mdEmi, 9,2)+'/'+Copy(mdEmi, 6,2)+'/'+Copy(mdEmi, 1, 4);

           mdSaiEnt      := mNodeIde.ChildNodes['dhSaiEnt'].text;
           cdSaiEnt.Text := Copy(mdSaiEnt, 9,2)+'/'+Copy(mdSaiEnt, 6,2)+'/'+Copy(mdSaiEnt, 1, 4);
           If Trim(RemoveCaracter('/', '', cdSaiEnt.Text)) = '' then begin
              cdSaiEnt.Text := DatetoStr(Date);
           End;   

           cMod.Text    := mNodeIde.ChildNodes['mod'].text;
           cSerie.Text  := mNodeIde.ChildNodes['serie'].text;
           ccMunFG.Text := mNodeIde.ChildNodes['cMunFG'].text;
           mMunicipio   := mNodeIde.ChildNodes['cMunFG'].NodeValue;

           Dados.Municipios.Locate('Codigo; Estado', VarArrayOf([mMunicipio,mEstado]), [loCaseInsensitive]);
           ccMunFGNome.Text := Dados.MunicipiosNome.AsString;
           ctpEmis.Text     := mNodeIde.ChildNodes['tpEmis'].Text;
           ctpEmisDesc.Text := mtpEmis[strtoInt(ctpEmis.Text)];
           mAmbiente        := mNodeIde.ChildNodes['tpAmb'].NodeValue;

           If mAmbiente = 1 then
              ctpAmb.Text := 'PRODUÇÃO'
           else begin
              ctpAmb.Text := 'HOMOLOGAÇÃO';
              ShowMessage('Atenção!'+#13+#13+'A nota fiscal selecionada foi emitida em modo de <HOMOLOGAÇÃO> sem valor fiscal.'+#13+#13+'A nota fiscal não será importada.');
              bImportar.Enabled := False;
           End;

           cfinNFe.Text      := mNodeIde.ChildNodes['finNFe'].Text;
           cfinNFeDesc.Text  := mfinNFe[strtoInt(cfinNFe.Text)];
           cprocEmi.Text     := mNodeIde.ChildNodes['procEmi'].Text;
           cprocEmiDesc.Text := mprocEmi[strtoInt(cprocEmi.Text)];
           cverProc.Text     := mNodeIde.ChildNodes['verProc'].Text;

           // Dados do emitente.
           If Dados.Fornecedores.Locate('CNPJ', mNodeEmit.ChildNodes['CNPJ'].Text, [loCaseInsensitive] ) = True then begin
              cCodigo.Text            := Dados.FornecedoresCodigo.AsString;
              lFornecedor.Caption     := 'Fornecedor já cadastrado.';
              cRamoAtividade.Enabled  := False;
              cRamoAtividade.KeyValue := Dados.FornecedoresRamo_Atividade.AsInteger;
              cTipoProduto.KeyValue   := Dados.FornecedoresTipo_Produto.Value;
              cTipoProduto.Enabled    := False;
              cLayLoteNum.Text        := Dados.FornecedoresLayoutLote_Numero.Value;
              cLayLoteFab.Text        := Dados.FornecedoresLayoutLote_Fabricacao.Value;
              cLayLoteVal.Text        := Dados.FornecedoresLayoutLote_Validade.Value;
           end else begin
              cCodigo.Text            := '0';
              lFornecedor.Caption     := 'Fornecedor Novo.';
              cRamoAtividade.Enabled  := True;
              cTipoProduto.Enabled    := True;
              cLayLoteNum.Text        := 'Lote: ';
              cLayLoteFab.Text        := 'Data Fabricacao: ';
              cLayLoteVal.Text        := 'Data Validade: ';
           End;

           cCNPJ.Text    := mNodeEmit.ChildNodes['CNPJ'].Text;
           cxNome.Text   := mNodeEmit.ChildNodes['xNome'].Text;
           cxFant.Text   := mNodeEmit.ChildNodes['xFant'].Text;
           cIE.Text      := mNodeEmit.ChildNodes['IE'].Text;
           cxLgr.Text    := mNodeEmitEnd.ChildNodes['xLgr'].Text;
           cxLgr.Text    := mNodeEmitEnd.ChildNodes['xLgr'].Text;
           cCpl.Text     := mNodeEmitEnd.ChildNodes['xCpl'].Text;
           cNro.Text     := mNodeEmitEnd.ChildNodes['nro'].Text;
           cxBairro.Text := mNodeEmitEnd.ChildNodes['xBairro'].Text;
           cMun.Text     := mNodeEmitEnd.ChildNodes['cMun'].Text;
           cxMun.Text    := mNodeEmitEnd.ChildNodes['xMun'].Text;
           cUF.Text      := mNodeEmitEnd.ChildNodes['UF'].Text;
           cCEP.Text     := mNodeEmitEnd.ChildNodes['CEP'].Text;
           cPais.Text    := mNodeEmitEnd.ChildNodes['cPais'].Text;
           cxPais.Text   := mNodeEmitEnd.ChildNodes['xPais'].Text;

           If Trim(cPais.Text) = '' then begin
              With Dados do begin
                   Paises.SQL.Clear;
                   Paises.SQL.Add('SELECT * FROM Paises WHERE Nome = '+QuotedStr(cxPais.Text));
                   Paises.Open;
                   cPais.Text := Paises.FieldByName('Codigo').AsString;
                   Paises.Close;
              End;
           End;

           // Dados do destinatario.
           cDestCNPJ.Text    := mNodeDest.ChildNodes['CNPJ'].Text;
           cDestxNome.Text   := mNodeDest.ChildNodes['xNome'].Text;
           cDestIE.Text      := mNodeDest.ChildNodes['IE'].Text;
           cDestxLgr.Text    := mNodeDestEnd.ChildNodes['xLgr'].Text;
           cDestxLgr.Text    := mNodeDestEnd.ChildNodes['xLgr'].Text;
           cDestNro.Text     := mNodeDestEnd.ChildNodes['nro'].Text;
           cDestxBairro.Text := mNodeDestEnd.ChildNodes['xBairro'].Text;
           cDestcMun.Text    := mNodeDestEnd.ChildNodes['cMun'].Text;
           cDestxMun.Text    := mNodeDestEnd.ChildNodes['xMun'].Text;
           cDestUF.Text      := mNodeDestEnd.ChildNodes['UF'].Text;
           cDestxPais.Text   := mNodeDestEnd.ChildNodes['xPais'].Text;
           cDestcPais.Text   := mNodeDestEnd.ChildNodes['cPais'].Text;

           // Dados do volume.
           If mNodeinfNFe.ChildNodes.FindNode('transp').ChildNodes.FindNode('pesoL') <> nil then begin
              cPesoLiquido.Text := RemoveCaracter('.', ',', mNodeTranspVol.ChildNodes['pesoL'].Text);
              cPesoBruto.Text   := RemoveCaracter('.', ',', mNodeTranspVol.ChildNodes['pesoB'].Text);
           End;   

           // Dados do item.
           With GradeItens do begin
                RowCount               := 2;
                GradeCadastro.RowCount := 2;
                FixedRows              := 1;
                ColCount               := 59;
                GradeAdicoes.RowCount  := 2;
                GradeLote.RowCount     := 2;
                GradeLote.ColCount     := 7;

                Cells[00,0]  := 'Item';
                ColWidths[0] := 30;
                Cells[01,0]  := 'Código';
                ColWidths[1] := 120;
                Cells[02,0]  := 'Descrição';
                ColWidths[2] := 400;

                Cells[03,0] := 'EAN';
                Cells[04,0] := 'NCM';
                Cells[05,0] := 'Genero';
                Cells[06,0] := 'CFOP';
                Cells[07,0] := 'Unidade';
                Cells[08,0] := 'Quantidade';
                Cells[09,0] := 'Vlr.Unitário';
                Cells[10,0] := 'Nº DI';
                Cells[11,0] := 'Data DI';
                Cells[12,0] := 'Loc.Des.';
                Cells[13,0] := 'UF Des.';
                Cells[14,0] := 'Data Des.';
                Cells[15,0] := 'Exportador';
                Cells[16,0] := 'Adição';
                Cells[17,0] := 'Seq Ad.';
                Cells[18,0] := 'Fabric.';

                Cells[19,0] := 'Origem';
                Cells[20,0] := 'CST ICMS';
                Cells[21,0] := 'Mod.BC ICMS';
                Cells[22,0] := 'Red.BC ICMS';
                Cells[23,0] := 'Vlr.BC ICMS';
                Cells[24,0] := 'Aliq.ICMS';
                Cells[25,0] := 'Vlr ICMS';

                Cells[26,0] := 'Enquad.IPI';
                Cells[27,0] := 'CST IPI';
                Cells[28,0] := 'BC IPI';
                Cells[29,0] := 'Aliq.IPI';
                Cells[30,0] := 'Vlr.IPI';

                Cells[31,0] := 'BC II';
                Cells[32,0] := 'Vlr Desp.';
                Cells[33,0] := 'Vlr.II';
                Cells[34,0] := 'Vlr.IOF';

                Cells[35,0] := 'CST PIS';
                Cells[36,0] := 'BC PIS';
                Cells[37,0] := 'Aliq.PIS';
                Cells[38,0] := 'Vlr.PIS';

                Cells[39,0] := 'CST COFINS';
                Cells[40,0] := 'BC COFINS';
                Cells[41,0] := 'Aliq.COFINS';
                Cells[42,0] := 'Vlr.COFINS';

                Cells[43,0] := 'Isentas ICMS';
                Cells[44,0] := 'Outras ICMS';
                Cells[45,0] := 'Isentas IPI';
                Cells[46,0] := 'Outras IPI';

                Cells[47,0] := 'Desconto';

                Cells[48,0] := 'Total';

                Cells[49,0] := 'BC ICMS ST';
                Cells[50,0] := '% ICMS ST';
                Cells[51,0] := 'ICMS ST';
                Cells[52,0] := '% MVA';
                Cells[53,0] := 'Informações Adicionais';
                ColWidths[53] := 600;

                Cells[54,0] := 'CST IPI Ent.';
                Cells[55,0] := 'Vlr.Frete';

                Cells[56,0] := 'Peso Liquido';
                Cells[57,0] := 'Peso Bruto';
                Cells[58,0] := 'BC ICMS ST (NF)';

                GradeCadastro.Cells[00,0]  := 'Item';
                GradeCadastro.ColWidths[0] := 30;
                GradeCadastro.Cells[01,0]  := 'Cód.Fornecedor';
                GradeCadastro.ColWidths[1] := 100;
                GradeCadastro.Cells[02,0]  := 'Cód.GTIN';
                GradeCadastro.ColWidths[2] := 100;
                GradeCadastro.Cells[03,0]  := 'Cód.Interno';
                GradeCadastro.ColWidths[3] := 100;
                GradeCadastro.Cells[04,0]  := 'CFOP';
                GradeCadastro.ColWidths[4] := 40;
                GradeCadastro.Cells[05,0]  := 'Descrição';
                GradeCadastro.ColWidths[5] := 600;
                GradeCadastro.Cells[06,0]  := 'Quantidade';
                GradeCadastro.ColWidths[6] := 120;
                GradeCadastro.Cells[07,0]  := 'Serial/Chassi';
                GradeCadastro.ColWidths[7] := 120;
                GradeCadastro.Cells[08,0]  := 'Lotes';
                GradeCadastro.ColWidths[8] := 120;

                GradeAdicoes.Cells[00,0]  := 'Código';
                GradeAdicoes.ColWidths[0] := 100;
                GradeAdicoes.Cells[01,0]  := 'DI';
                GradeAdicoes.ColWidths[2] := 100;
                GradeAdicoes.Cells[02,0]  := 'Adição';
                GradeAdicoes.ColWidths[3] := 100;
                GradeAdicoes.Cells[03,0]  := 'Ordem';
                GradeAdicoes.ColWidths[3] := 100;
                GradeAdicoes.Cells[04,0]  := 'Quantidade';
                GradeAdicoes.ColWidths[1] := 100;
                GradeAdicoes.Cells[05,0]  := 'Valor';
                GradeAdicoes.ColWidths[1] := 100;

                GradeReferencia.Cells[00,0]  := 'Item';
                GradeReferencia.ColWidths[0] := 40;
                GradeReferencia.Cells[01,0]  := 'Código';
                GradeReferencia.ColWidths[1] := 70;
                GradeReferencia.Cells[02,0]  := 'Descrição';
                GradeReferencia.ColWidths[2] := 300;
                GradeReferencia.Cells[03,0]  := 'Nota';
                GradeReferencia.ColWidths[3] := 70;
                GradeReferencia.Cells[04,0]  := 'Data';
                GradeReferencia.ColWidths[4] := 100;
                GradeReferencia.Cells[05,0]  := 'Chave NFE';
                GradeReferencia.ColWidths[5] := 280;
                GradeReferencia.Cells[06,0]  := 'Navio';
                GradeReferencia.ColWidths[6] := 50;
                GradeReferencia.Cells[07,0]  := 'DI';
                GradeReferencia.ColWidths[7] := 80;
                GradeReferencia.Cells[08,0]  := 'ARMAZÉM';
                GradeReferencia.ColWidths[8] := 60;

                GradeLote.Cells[00,0]  := 'Item';
                GradeLote.ColWidths[0] := 30;
                GradeLote.Cells[01,0]  := 'Código';
                GradeLote.ColWidths[1] := 80;
                GradeLote.Cells[02,0]  := 'Descrição';
                GradeLote.ColWidths[2] := 270;
                GradeLote.Cells[03,0]  := 'Lote';
                GradeLote.ColWidths[3] := 80;
                GradeLote.Cells[04,0]  := 'Fabricação';
                GradeLote.ColWidths[4] := 70;
                GradeLote.Cells[05,0]  := 'Validade';
                GradeLote.ColWidths[5] := 70;
                GradeLote.Cells[06,0]  := 'Quantidade';
                GradeLote.ColWidths[6] := 90;

                tProcuraProdutos.SQL.Clear;
                tProcuraProdutos.SQL.Add('SELECT Codigo,');
                tProcuraProdutos.SQL.Add('       ISNULL(Codigo_Fabricante, '''') AS Codigo_Fabricante,');
                tProcuraProdutos.SQL.Add('       ISNULL(GTIN, '''') AS GTIN,');
                tProcuraProdutos.SQL.Add('       ISNULL(GTIN_UNidade, '''') AS GTIN_Unidade');
                tProcuraProdutos.SQL.Add('FROM   Produtos');
                tProcuraProdutos.SQL.Add('WHERE  ((ISNULL(Codigo_Fabricante,'''') <> '''') OR (ISNULL(GTIN_Unidade,'''') <> '''') OR (ISNULL(GTIN,'''') <> '''')) AND (ISNULL(Desativado, 0) <> 1)');
                tProcuraProdutos.SQL.Add('ORDER  BY Codigo');
                tProcuraProdutos.Open;

                mNodeDet.ChildNodes.First;

                cBCIPI.Value     := 0;
                cQtdeTotal.Value := 0;
                l                := 1;  // Número da linha da grade dos lotes.

                // Pegando as notas de referência.
                //if cfinNFE.text = '4' then begin
                   Repeat
                         mNodeIdeRef := mNodeIde.ChildNodes.FindNode('NFref');
                         if mNodeIdeRef <> nil then begin
                            with GradeReferencia do begin
                                 cells[05, rowcount-1] := mNodeIdeRef.ChildNodes['refNFe'].Text;
                                 with tTmp do begin
                                      sql.clear;
                                      sql.add('select Armazem = (select Armazem from NotasFiscais where Nfe_cNF = :pChave)');
                                      sql.Add('      ,Chave = (select Nfe_cNF from NotasFiscais where Nfe_cNF = :pChave)');
                                      sql.add('      ,Nota');
                                      sql.add('      ,Data');
                                      sql.add('      ,Item');
                                      sql.add('      ,Codigo_Mercadoria');
                                      sql.Add('      ,Descricao_Mercadoria');
                                      sql.add('      ,Navio');
                                      sql.add('      ,DI');
                                      sql.add('from NotasItens');
                                      sql.add('where Nota = (select Numero from NotasFiscais where Nfe_cNF = :pChave)');
                                      sql.add('and Data = (select Data_Emissao from NotasFiscais where Nfe_cNF = :pChave)');
                                      parambyname('pChave').AsString := cells[05, rowcount-1];
                                      //sql.savetofile('c:\temp\Importação_Notas_Terceiros_Referencia.sql');
                                      open;
                                      
                                      cells[00, rowcount-1] := fieldbyname('Item').AsString;
                                      cells[01, rowcount-1] := fieldbyname('Codigo_Mercadoria').AsString;
                                      cells[02, rowcount-1] := fieldbyname('Descricao_Mercadoria').AsString;
                                      cells[03, rowcount-1] := fieldbyname('Nota').AsString;
                                      cells[04, rowcount-1] := fieldbyname('Data').AsString;
                                      cells[06, rowcount-1] := fieldbyname('Navio').AsString;
                                      cells[07, rowcount-1] := fieldbyname('DI').AsString;
                                      cells[08, rowcount-1] := fieldbyname('Armazem').AsString;
                                 end;
                            end;
                         end;
                         mNodeIde := mNodeIde.NextSibling;
                   Until mNodeIde = nil;
                //end;

                Repeat
                      mNodeDetProd := mNodeDet.ChildNodes.FindNode('prod');

                      If mNodeDetProd <> nil then begin
                         If mNodeDet.ChildNodes.FindNode('prod').ChildNodes.FindNode('DI') <> nil then begin
                            mNodeDetProdDI    := mNodeDetProd.ChildNodes.FindNode('DI');
                            mNodeDetProdDIAdi := mNodeDetProdDI.ChildNodes.FindNode('adi');
                         End;
                         mNodeDetImposto      := mNodeDet.ChildNodes.FindNode('imposto');
                         mNodeDetImpostoICMS  := mNodeDetImposto.ChildNodes.FindNode('ICMS');
                         mNodeDetImpostoISSQN := mNodeDetImposto.ChildNodes.FindNode('ISSQN');

                         If mNodeDetImposto.ChildNodes.FindNode('IPI') <> nil then begin
                            mNodeDetImpostoIPI := mNodeDetImposto.ChildNodes.FindNode('IPI');
                            If mNodeDetImpostoIPI.ChildNodes.FindNode('IPITrib') <> nil then
                               mNodeDetImpostoIPITrib := mNodeDetImpostoIPI.ChildNodes.FindNode('IPITrib');
                         End;
                         
                         mNodeDetImpostoII  := mNodeDetImposto.ChildNodes.FindNode('II');
                         mNodeDetImpostoPIS := mNodeDetImposto.ChildNodes.FindNode('PIS');
                         
                         If mNodeDetImpostoPIS.ChildNodes.FindNode('PISAliq') <> nil then
                            mNodeDetImpostoPISAliq := mNodeDetImpostoPIS.ChildNodes.FindNode('PISAliq');
                         If mNodeDetImpostoPIS.ChildNodes.FindNode('PISOutr') <> nil then
                            mNodeDetImpostoPISAliq := mNodeDetImpostoPIS.ChildNodes.FindNode('PISOutr');

                         mNodeDetImpostoCOF     := mNodeDetImposto.ChildNodes.FindNode('COFINS');
                         If mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSAliq') <> nil then
                            mNodeDetImpostoCOFAliq := mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSAliq');
                         If mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSOutr') <> nil then
                            mNodeDetImpostoCOFAliq := mNodeDetImpostoCOF.ChildNodes.FindNode('COFINSOutr');

                         // Procurando o campo de ICMS.
                         mAchouICMS := false;

                         if mNodeDetImpostoISSQN = nil then begin
                            with Dados.CSTTabelaB do begin 
                                 SQL.Clear;
                                 SQL.Add('select * from CSTTabelaB order by Classificacao');
                                 Open;
                                 First;
                                 while not Eof do begin
                                       mCodigoCSTICMS := 'ICMS'+Trim(fieldbyname('Codigo').AsString);
                                       if mNodeDetImpostoICMS.ChildNodes.FindNode(mCodigoCSTICMS) <> nil then begin
                                          mNodeDetImpostoICMSCST := mNodeDetImpostoICMS.ChildNodes.FindNode(mCodigoCSTICMS);
                                          mAchouICMS             := true;
                                          Break;
                                       end;
                                       Next;
                                 end;
                            end;
                            // ICMS SN.
                            if not mAChouICMS then begin
                               for i := 1 to 10 do begin
                                    mCodigoCSTICMS := 'ICMSSN'+mICMSSN[i];
                                    if mNodeDetImpostoICMS.ChildNodes.FindNode(mCodigoCSTICMS) <> nil then begin
                                       mNodeDetImpostoICMSCST := mNodeDetImpostoICMS.ChildNodes.FindNode(mCodigoCSTICMS);
                                    end;
                               end;
                            end;

                            // ICMS SEM O CODIGO CST.
                            if not mAchouICMS then begin
                               mNodeDetImpostoICMS.ChildNodes.FindNode('ICMS');
                               if mNodeDetImpostoICMS.ChildNodes.FindNode('ICMSST') <> nil then begin
                                  mNodeDetImpostoICMSCST := mNodeDetImpostoICMS.ChildNodes.FindNode('ICMSST');
                               end;
                            end;

                            // ICMS Part.
                            If not mAchouICMS then begin
                               mCodigoCSTICMS := 'ICMSPart';
                               If mNodeDetImpostoICMS.ChildNodes.FindNode(mCodigoCSTICMS) <> nil then begin
                                  mNodeDetImpostoICMSCST := mNodeDetImpostoICMS.ChildNodes.FindNode(mCodigoCSTICMS);
                               End;
                            End;
                         end;

                         // Dados do produto.
                         Cells[00, RowCount-1] := PoeZero(4,RowCount-1);
                         Cells[01, RowCount-1] := mNodeDetProd.ChildNodes['cProd'].Text;
                         Cells[02, RowCount-1] := mNodeDetProd.ChildNodes['xProd'].Text+' '+mNodeDet.ChildNodes['infAdProd'].Text;
                         Cells[03, RowCount-1] := mNodeDetProd.ChildNodes['cEAN'].Text;
                         Cells[04, RowCount-1] := mNodeDetProd.ChildNodes['NCM'].Text;
                         Cells[05, RowCount-1] := mNodeDetProd.ChildNodes['genero'].Text;
                         Cells[06, RowCount-1] := mNodeDetProd.ChildNodes['CFOP'].Text;
                         Cells[07, RowCount-1] := mNodeDetProd.ChildNodes['uCom'].Text;
                         Cells[08, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['qCom'].Text);
                         Cells[09, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vUnCom'].Text);

                         // Grade Cadastros.
                         GradeCadastro.Cells[ 0, GradeCadastro.RowCount-1] := PoeZero(4,RowCount-1);
                         GradeCadastro.Cells[ 1, GradeCadastro.RowCount-1] := Cells[01, RowCount-1];
                         GradeCadastro.Cells[ 2, GradeCadastro.RowCount-1] := ApenasNumeros(mNodeDetProd.ChildNodes['cEANTrib'].Text);
                         GradeCadastro.Cells[ 5, GradeCadastro.RowCount-1] := mNodeDetProd.ChildNodes['xProd'].Text+' '+mNodeDet.ChildNodes['infAdProd'].Text;

                         //*******************************************[ VINCULA OS PRODUTOS DO XML COM O CADASTRO ]********************************************//
                         // Verifica o código GTIN.
                         If Trim(GradeCadastro.Cells[2, GradeCadastro.RowCount-1]) <> '' then begin
                            If tProcuraProdutos.Locate('GTIN_Unidade', GradeCadastro.Cells[2, GradeCadastro.RowCount-1], [loCaseInsensitive]) = true then begin
                               GradeCadastro.Cells[3, GradeCadastro.RowCount-1] := tProcuraProdutos.FieldByName('Codigo').AsString;
                            End;
                            If Trim(GradeCadastro.Cells[3, GradeCadastro.RowCount-1]) = '' then begin
                               If tProcuraProdutos.Locate('GTIN', GradeCadastro.Cells[2, GradeCadastro.RowCount-1], [loCaseInsensitive]) = true then begin
                                  GradeCadastro.Cells[3, GradeCadastro.RowCount-1] := tProcuraProdutos.FieldByName('Codigo').AsString;
                               End;
                            End;
                         End;
                         // Verifica se o codigo "GTIN Unitário" esta na descrição.
                         If Trim(GradeCadastro.Cells[3, GradeCadastro.RowCount-1]) = '' then begin
                            tProcuraProdutos.First;
                            While not tProcuraProdutos.Eof do begin
                                  If Trim(tProcuraProdutos.FieldByName('GTIN_Unidade').AsString) <> '' then begin
                                     If Pos(Trim(tProcuraProdutos.FieldByName('GTIN_Unidade').AsString), GradeCadastro.Cells[ 5, GradeCadastro.RowCount-1]) <> 0 then begin
                                        GradeCadastro.Cells[ 3, GradeCadastro.RowCount-1] := tProcuraProdutos.FieldByName('Codigo').AsString;
                                        Break;
                                     End;
                                  End;
                                  tProcuraProdutos.Next;
                            End;
                         End;
                         // Verifica se o codigo "GTIN (Caixa)" esta na descrição.
                         If Trim(GradeCadastro.Cells[3, GradeCadastro.RowCount-1]) = '' then begin
                            tProcuraProdutos.First;
                            While not tProcuraProdutos.Eof do begin
                                  If Trim(tProcuraProdutos.FieldByName('GTIN').AsString) <> '' then begin
                                     If Pos(Trim(tProcuraProdutos.FieldByName('GTIN').AsString), GradeCadastro.Cells[ 5, GradeCadastro.RowCount-1]) <> 0 then begin
                                        GradeCadastro.Cells[ 3, GradeCadastro.RowCount-1] := tProcuraProdutos.FieldByName('Codigo').AsString;
                                        Break;
                                     End;
                                  End;
                                  tProcuraProdutos.Next;
                            End;
                         End;
                         // Verifica se o codigo do Fabricante esta na descrição.
                         If Dados.ConfiguracaoXMLTerceiros_Codigo.AsBoolean = true then begin
                            If Trim(GradeCadastro.Cells[3, GradeCadastro.RowCount-1]) = '' then begin
                               tProcuraProdutos.First;
                               While not tProcuraProdutos.Eof do begin
                                     If Trim(tProcuraProdutos.FieldByName('Codigo_Fabricante').AsString) <> '' then begin
                                        If Pos(Trim(tProcuraProdutos.FieldByName('Codigo_Fabricante').AsString)+' ', GradeCadastro.Cells[ 5, GradeCadastro.RowCount-1]) <> 0 then begin
                                           GradeCadastro.Cells[ 3, GradeCadastro.RowCount-1] := tProcuraProdutos.FieldByName('Codigo').AsString;
                                           Break;
                                        End;
                                     End;
                                     tProcuraProdutos.Next;
                               End;
                            End;
                         End;
                         // Não encontrando o produto no cadastro Verifica pelo código do fabricante.
                         if Trim(GradeCadastro.Cells[3, GradeCadastro.RowCount-1]) = '' then begin
                            if Dados.Produtos.Locate('Codigo_Fabricante', Cells[1, GradeCadastro.RowCount-1] , [loCaseInsensitive]) then begin
                               GradeCadastro.Cells[ 3, GradeCadastro.RowCount-1] := Dados.Produtos.FieldByName('Codigo').AsString;
                            end else begin
                               GradeCadastro.Cells[ 3, GradeCadastro.RowCount-1] := '';
                            end;
                         end;
                         // Não encontrando o produto no cadastro Verifica pela descrição.
                         If GradeCadastro.Cells[ 3, GradeCadastro.RowCount-1] = '' then begin
                            tProcuraDescricao.SQL.Clear;
                            tProcuraDescricao.SQL.Add('SELECT *');
                            tProcuraDescricao.SQL.Add('FROM   Produtos');
                            tProcuraDescricao.SQL.Add('WHERE  Descricao LIKE '+QuotedStr(mNodeDetProd.ChildNodes['xProd'].Text+' '+mNodeDet.ChildNodes['infAdProd'].Text) + ' AND (ISNULL(Desativado, 0) <> 1)');
                            tProcuraDescricao.SQL.Add('ORDER  BY Codigo');
                            //tProcuraDescricao.SQL.SavetoFile('c:\temp\XML_Terceiros.SQL');
                            tProcuraDescricao.Open;
                            If tProcuraDescricao.RecordCount > 0 then begin
                               GradeCadastro.Cells[ 3, GradeCadastro.RowCount-1] := tProcuraDescricao.FieldByName('Codigo').AsString;
                            End;
                         End;

                         //*************************************************[ FIM DA VINCULAÇÃO DOS PRODUTOS ]**************************************************//
                         If Trim(GradeCadastro.Cells[ 1, GradeCadastro.RowCount-1]) = '' then begin
                            GradeCadastro.Cells[ 1, GradeCadastro.RowCount-1] := mNodeDetProd.ChildNodes['cProd'].Text;
                         End;

                         GradeCadastro.Cells[ 4, RowCount-1] := mNodeDetProd.ChildNodes['CFOP'].Text;
                         GradeCadastro.Cells[06, RowCount-1] := Cells[08, RowCount-1];
                         GradeCadastro.Cells[07, RowCount-1] := '0';
                         GradeCadastro.Cells[08, RowCount-1] := '0';

                         // Desconto.
                         Cells[47, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vDesc'].Text);

                         // Valor do Frete.
                         Cells[55, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vFrete'].Text);

                         // Líquido.
                         Cells[48, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vProd'].Text);

                         // Despesa.
                         Cells[32, RowCount-1] := RemoveCaracter('.',',',mNodeDetProd.ChildNodes['vOutro'].Text);
                         if trim(Cells[32, RowCount-1]) = '' then Cells[32, RowCount-1] := '0,00';
                         If Trim(Cells[47, RowCount-1]) <> '' then begin
                            Cells[48, RowCount-1] := FloattoStr(StrToFloat(Cells[48, RowCount-1]) - StrToFloat(Cells[47, RowCount-1]));
                         End;

                         cQtdeTotal.Value := cQtdeTotal.Value + StrtoFloat(Cells[ 8, RowCount-1]);

                         // Dados da DI.
                         If mNodeDet.ChildNodes.FindNode('prod').ChildNodes.FindNode('DI') <> nil then begin
                            Cells[10, RowCount-1] := mNodeDetProdDI.ChildNodes['nDI'].Text;
                            mdDI                  := mNodeDetProdDI.ChildNodes['dDI'].Text;
                            Cells[11, RowCount-1] := Copy(mdDI, 9,2)+'/'+Copy(mdDI, 6,2)+'/'+Copy(mdDI, 1, 4);
                            Cells[12, RowCount-1] := mNodeDetProdDI.ChildNodes['xLocDesemb'].Text;
                            Cells[13, RowCount-1] := mNodeDetProdDI.ChildNodes['UFDesemb'].Text;
                            mdDesemb              := mNodeDetProdDI.ChildNodes['dDesemb'].Text;
                            Cells[14, RowCount-1] := Copy(mdDesemb, 9,2)+'/'+Copy(mdDesemb, 6,2)+'/'+Copy(mdDesemb, 1, 4);
                            Cells[15, RowCount-1] := mNodeDetProdDI.ChildNodes['cExportador'].Text;
                            if mNodeDetProdDIAdi.ChildNodes.FindNode('nAdicao') <> nil then begin
                               Cells[16, RowCount-1] := mNodeDetProdDIAdi.ChildNodes['nAdicao'].NodeValue;
                               Cells[17, RowCount-1] := mNodeDetProdDIAdi.ChildNodes['nSeqAdic'].NodeValue;
                               Cells[18, RowCount-1] := mNodeDetProdDIAdi.ChildNodes['cFabricante'].Text;
                            end else begin
                               Cells[16, RowCount-1] := '0';
                               Cells[17, RowCount-1] := '0';
                               Cells[18, RowCount-1] := '0';
                            end;
                         end else begin
                            Cells[16, RowCount-1] := '0';
                            Cells[17, RowCount-1] := '0';
                         End;

                         // Impostos ICMS.
                         if mNodeDetImpostoISSQN = nil then begin
                            Cells[19, RowCount-1] := mNodeDetImpostoICMSCST.ChildNodes['orig'].Text;
                            Cells[20, RowCount-1] := mNodeDetImpostoICMSCST.ChildNodes['CST'].Text;
                            Cells[21, RowCount-1] := mNodeDetImpostoICMSCST.ChildNodes['modBC'].Text;
                            Cells[22, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['pRedBC'].Text);
                            Cells[23, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vBC'].Text);
                            Cells[24, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['pICMS'].Text);
                            Cells[25, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoICMSCST.ChildNodes['vICMS'].Text);
                         end else begin
                            Cells[19, RowCount-1] := '';
                            Cells[20, RowCount-1] := '';
                            Cells[21, RowCount-1] := '';
                            Cells[22, RowCount-1] := '0,00';
                            Cells[23, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoISSQN.ChildNodes['vBC'].Text);
                            Cells[24, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoISSQN.ChildNodes['vAliq'].Text);
                            Cells[25, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoISSQN.ChildNodes['vISSQN'].Text);
                         end;

                         // Impostos IPI.
                         If mNodeDetImposto.ChildNodes.FindNode('IPI') <> nil then begin
                            If mNodeDetImposto.ChildNodes.FindNode('IPI').ChildNodes.FindNode('IPITrib') <> nil then begin
                               Cells[26, RowCount-1] := mNodeDetImpostoIPI.ChildNodes['cEnq'].Text;
                               // Pegando a CST IPI de entrada na tabela de CST.
                               Cells[27, RowCount-1] := mNodeDetImpostoIPITrib.ChildNodes['CST'].Text;
                               Dados.CSTIPI.Locate('Codigo', Cells[27, RowCount-1], [loCaseInsensitive]);
                               if Trim(Dados.ReferenciasFiscaisCSTIPI.AsString) = '' then
                                  Cells[54, RowCount-1] := Dados.CSTIPICST_Inversa.AsString
                               else
                                  Cells[54, RowCount-1] := Dados.ReferenciasFiscaisCSTIPI.AsString;

                               Cells[28, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoIPITrib.ChildNodes['vBC'].Text);
                               Cells[29, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoIPITrib.ChildNodes['pIPI'].Text);
                               Cells[30, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoIPITrib.ChildNodes['vIPI'].Text);
                            End;
                         end else begin
                            Cells[26, RowCount-1] := '';
                            Cells[27, RowCount-1] := '';
                            Cells[28, RowCount-1] := '0,00';
                            Cells[29, RowCount-1] := '0,00';
                            Cells[30, RowCount-1] := '0,00';
                         End;

                         If Trim(Cells[30, RowCount-1]) <> '' then begin
                            If StrtoFloat(Cells[30, RowCount-1]) > 0 then cBCIPI.Value := cBCIPI.Value + StrtoFloat(Cells[28, RowCount-1]);
                         End;

                         // Impostos II.
                         If mNodeDetImposto.ChildNodes.FindNode('II') <> nil then begin
                            Cells[31, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['vBC'].Text);
                            Cells[32, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['pDespAdu'].Text);
                            Cells[33, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['vII'].Text);
                            Cells[34, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoII.ChildNodes['vIOF'].Text);

                            if trim(Cells[31, RowCount-1]) = '' then Cells[31, RowCount-1] := '0,00';
                            if trim(Cells[32, RowCount-1]) = '' then Cells[32, RowCount-1] := '0,00';
                            if trim(Cells[33, RowCount-1]) = '' then Cells[33, RowCount-1] := '0,00';
                            if trim(Cells[34, RowCount-1]) = '' then Cells[34, RowCount-1] := '0,00';
                         End;

                         // Impostos PIS.
                         If mNodeDetImposto.ChildNodes.FindNode('PIS') <> nil then begin
                            If mNodeDetImposto.ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISAliq') <> nil then begin
                               Cells[35, RowCount-1] := mNodeDetImpostoPISAliq.ChildNodes['CST'].Text;
                               Cells[37, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['pPIS'].Text);
                               Cells[38, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vPIS'].Text);
                               If Cells[38, RowCount-1] <> '0,00' then
                                  Cells[36, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vBC'].Text)
                               else
                                  Cells[36, RowCount-1] := '0,00';
                            end;
                            If mNodeDetImposto.ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISOutr') <> nil then begin
                               Cells[35, RowCount-1] := mNodeDetImpostoPISAliq.ChildNodes['CST'].Text;
                               Cells[37, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['pPIS'].Text);
                               Cells[38, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vPIS'].Text);
                               If Cells[38, RowCount-1] <> '0,00' then
                                  Cells[36, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vBC'].Text)
                               else
                                  Cells[36, RowCount-1] := '0,00';
                            end;
                         End;
                         if Cells[36, RowCount-1] = '' then Cells[36, RowCount-1] := '0,00';
                         if Cells[37, RowCount-1] = '' then Cells[37, RowCount-1] := '0,00';
                         if Cells[38, RowCount-1] = '' then Cells[38, RowCount-1] := '0,00';

                         // Impostos COFINS.
                         If mNodeDetImposto.ChildNodes.FindNode('COFINS') <> nil then begin
                            If mNodeDetImposto.ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSAliq') <> nil then begin
                               Cells[39, RowCount-1] := mNodeDetImpostoCOFAliq.ChildNodes['CST'].Text;
                               Cells[41, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['pCOFINS'].Text);
                               Cells[42, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vCOFINS'].Text);
                               If Cells[42, RowCount-1] <> '0,00' then
                                  Cells[40, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vBC'].Text)
                               else
                                  Cells[40, RowCount-1] := '0,00';
                            End;
                            If mNodeDetImposto.ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSOutr') <> nil then begin
                               Cells[39, RowCount-1] := mNodeDetImpostoCOFAliq.ChildNodes['CST'].Text;
                               Cells[41, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['pCOFINS'].Text);
                               Cells[42, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoCOFAliq.ChildNodes['vCOFINS'].Text);
                               If Cells[42, RowCount-1] <> '0,00' then
                                  Cells[40, RowCount-1] := RemoveCaracter('.',',',mNodeDetImpostoPISAliq.ChildNodes['vBC'].Text)
                               else
                                  Cells[40, RowCount-1] := '0,00';
                            End;
                         End;
                         if Cells[40, RowCount-1] = '' then Cells[40, RowCount-1] := '0,00';
                         if Cells[41, RowCount-1] = '' then Cells[41, RowCount-1] := '0,00';
                         if Cells[42, RowCount-1] = '' then Cells[42, RowCount-1] := '0,00';

                         // Isentas e Outras de ICMS.
                         mBCICMS           := 0;
                         cOutrasICMS.Value := 0;
                         If Cells[23, RowCount-1] <> '' then begin
                            mBCICMS := StrtoCurr(Cells[23, RowCount-1]);
                         End;

                         mValorTotal := StrtoFloat(Cells[48, RowCount-1]);
                         mApuracao1  := (mValorTotal - mBCICMS);
                         If mApuracao1 < 0.01 then mApuracao1 := 0;

                         mApuracao2 := mValorTotal - mBCICMS - mApuracao1;
                         If Trim(Cells[30, RowCount-1]) <> '' then begin
                            mApuracao2 := mApuracao2 + StrtoFloat(Cells[30, RowCount-1]);
                         End;

                         If mApuracao2 < 0 then mApuracao2 := 0;

                         Dados.CSTTabelaB.Locate('Codigo', Cells[20, RowCount-1], [loCaseInsensitive]);

                         If Dados.CSTTabelaBApuracao1.Value <> Dados.CSTTabelaBApuracao2.Value then begin
                            If Dados.CSTTabelaBApuracao1.Value = 'I' then begin
                               Cells[43, RowCount-1] := CurrtoStr(mApuracao1);
                               Cells[44, RowCount-1] := CurrtoStr(mApuracao2);
                               cIsentasICMS.Value    := cIsentasICMS.Value + mApuracao1;
                               cOutrasICMS.Value     := cOutrasICMS.Value  + mApuracao2;
                            End;
                            If Dados.CSTTabelaBApuracao1.Value = 'O' then begin
                               Cells[43, RowCount-1] := CurrtoStr(mApuracao2);
                               Cells[44, RowCount-1] := CurrtoStr(mApuracao1);
                               cIsentasICMS.Value    := cIsentasICMS.Value + mApuracao2;
                               cOutrasICMS.Value     := cOutrasICMS.Value  + mApuracao1;
                            End;
                         end else begin
                            If Dados.CSTTabelaBApuracao1.Value = 'I' then begin
                               Cells[43, RowCount-1] := CurrtoStr(mApuracao1 + mApuracao2);
                               Cells[44, RowCount-1] := '0';
                               cIsentasICMS.Value    := cIsentasICMS.Value + mApuracao1 + mApuracao2
                            End;
                            If Dados.CSTTabelaBApuracao1.Value = 'O' then begin
                               Cells[43, RowCount-1] := '0';
                               Cells[44, RowCount-1] := CurrtoStr(mApuracao1 + mApuracao2);
                               cOutrasICMS.Value     := cOutrasICMS.Value + mApuracao1 + mApuracao2;
                            End;
                         End;

                         // isentas e outras para Simples/ 1.Consumo/ 6.Imobilizado/ 7.Outras.
                         Dados.CSTTabelaB.Locate('Codigo', trim(Copy(Dados.ReferenciasFiscaisCSTICMS.AsString, 2, 3)), [loCaseInsensitive]);
                         if (Dados.EmpresasRegime_Apuracao.AsInteger = 1) or (Dados.ReferenciasFiscaisFinalidade_Mercadoria.AsInteger in[1, 6, 7]) then begin
                            if Dados.CSTTabelaBApuracao1.Value = 'I' then begin
                               Cells[43, RowCount-1] := Cells[48, RowCount-1];
                            end;
                            if Dados.CSTTabelaBApuracao1.Value = 'O' then begin
                               Cells[44, RowCount-1] := Cells[48, RowCount-1];
                            end;
                         end;

                         // Isentas e Outras de IPI.
                         Dados.CSTIPI.Locate('Codigo', Cells[27, RowCount-1], [loCaseInsensitive]);
                         mApuracao1       := 0;
                         cOutrasIPI.Value := 0;

                         If Trim(Cells[30, RowCount-1]) = '' then
                            mApuracao1 := mApuracao1 + mValorTotal;

                         If Dados.CSTIPI.FieldByName('Apuracao').Value = 'O' then begin
                            Cells[46, RowCount-1] := CurrtoStr(mApuracao1);
                            cOutrasIPI.Value      := cOutrasIPI.Value + mApuracao1;
                         end else begin
                            Cells[45, RowCount-1] := CurrtoStr(mApuracao1);
                            cIsentasIPI.Value     := cIsentasIPI.Value + mApuracao1;
                         End;

                         // Impostos ICMS ST.
                         if mNodeDetImpostoISSQN = nil then begin
                            Cells[49, RowCount-1] := RemoveCaracter('.', ',', mNodeDetImpostoICMSCST.ChildNodes['vBCST'].Text);
                            Cells[50, RowCount-1] := RemoveCaracter('.', ',', mNodeDetImpostoICMSCST.ChildNodes['pICMSST'].Text);
                            Cells[51, RowCount-1] := RemoveCaracter('.', ',', mNodeDetImpostoICMSCST.ChildNodes['vICMSST'].Text);
                            Cells[52, RowCount-1] := RemoveCaracter('.', ',', mNodeDetImpostoICMSCST.ChildNodes['pMVAST'].Text);
                         end;

                         (*---------------------------------------------------------( DADOS DE LOTE )----------------------------------------------------------*)
                         If mNodeDet.ChildNodes.FindNode('infAdProd') <> nil then begin
                            Cells[53, RowCount-1] := RemoveCaracter('.', ',', mNodeDet.ChildNodes.FindNode('infAdProd').Text);

                            If cLayLoteNum.Text <> '' then begin
                               // Os labels devem ser informados no cadastro de fornecedores exatamente como no texto da nota, inclusive com espaços
                               // que houverem antes da informação a ser capturada.
                               mCpl := Trim(mNodeDet.ChildNodes.FindNode('infAdProd').Text);

                               For v := 1 to Incidencia(cLayLoteNum.Text, mCpl) do begin
                                   // Número do lote.
                                   p := Pos(cLayLoteNum.Text, mCpl) + Length(cLayLoteNum.Text);
                                   For i := p to Length(mCpl) do begin
                                       If (mCpl[i] = ' ') or (mCpl[i] = ',') then break;
                                       mLote := mLote + mCpl[i]
                                   End;
                                   mCpl := Copy(mCpl, i, Length(mCpl));

                                   If Trim(mLote) <> '' then begin
                                      GradeLote.Cells[0, l] := PoeZero(4,RowCount-1);
                                      GradeLote.Cells[1, l] := Cells[01, RowCount-1];
                                      GradeLote.Cells[2, l] := Cells[02, RowCount-1];
                                      GradeLote.Cells[3, l] := mLote;
                                      GradeLote.Cells[6, l] := Cells[08, RowCount-1];
                                      mLote := '';
                                      GradeLote.RowCount := GradeLote.RowCount + 1;
                                   End;

                                   // Data de Fabricação do lote.
                                   mCpl := Trim(mNodeDet.ChildNodes.FindNode('infAdProd').Text);
                                   p    := Pos(cLayLoteFab.Text, mCpl) + Length(cLayLoteFab.Text);
                                   For i := p to Length(mCpl) do begin
                                       If (mCpl[i] = ' ') or (mCpl[i] = ',') then break;
                                       mFabricacao := mFabricacao + mCpl[i]
                                   End;
                                   mCpl := Copy(mCpl, i, Length(mCpl));
                                   If Trim(mFabricacao) <> '' then begin
                                      GradeLote.Cells[4, l] := FormatMaskText('##/##/####;0', ApenasNumeros(mFabricacao));
                                      mFabricacao := '';
                                   End;

                                   // Data de validade do lote.
                                   mCpl := Trim(mNodeDet.ChildNodes.FindNode('infAdProd').Text);
                                   p    := Pos(cLayLoteVal.Text, mCpl) + Length(cLayLoteVal.Text);
                                   For i := p to Length(mCpl) do begin
                                       If (mCpl[i] = ' ') or (mCpl[i] = ',') then break;
                                       mValidade := mValidade + mCpl[i]
                                   End;
                                   mCpl := Copy(mCpl, i, Length(mCpl));
                                   If Trim(mValidade) <> '' then begin
                                      GradeLote.Cells[5, l] := FormatMaskText('##/##/####;0', ApenasNumeros(mValidade));
                                      mValidade := '';
                                   End;
                                   Inc(l);
                               End;
                            End;
                         End;
                         (*----------------------------------------------------( FIM DOS DADOS DO LOTE )-----------------------------------------------------*)
                         RowCount               := RowCount + 1;
                         GradeCadastro.RowCount := GradeCadastro.RowCount + 1;
                         GradeAdicoes.RowCount  := GradeAdicoes.RowCount + 1;
                      End;

                      mNodeDet := mNodeDet.NextSibling;
                Until mNodeDet = nil;
           End;

           GradeLote.RowCount := GradeLote.RowCount-1;
           cBCICMS.Text       := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vBC'].Text);
           cValorICMS.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vICMS'].Text);
           cValorICMS.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vICMS'].Text);
           cBCICMSSub.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vBCST'].Text);
           cValorICMSSub.Text := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vST'].Text);
           cProdutos.Text     := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vProd'].Text);
           cFrete.Text        := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vFrete'].Text);
           cSeguro.Text       := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vSeg'].Text);
           cDesconto.Text     := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vDesc'].Text);
           cII.Text           := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vII'].Text);
           cIPI.Text          := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vIPI'].Text);
           cPIS.Text          := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vPIS'].Text);
           cCOFINS.Text       := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vCOFINS'].Text);
           cDespesas.Text     := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vOutro'].Text);
           cTotalNota.Text    := RemoveCaracter('.',',',mNodeTotalICMSTot.ChildNodes['vNF'].Text);
           cLiquido.Value     := cTotalNota.Value;

           mXML.Free;

           // Verifica se a nota fiscal já existe, se existe pega a referência fiscal.
           With Dados, dmFiscal do begin
                NotasTerceiros.SQL.Clear;
                NotasTerceiros.SQL.Add('SELECT * FROM NotasTerceiros WHERE (Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
                NotasTerceiros.ParamByName('pNota').AsInteger       := StrtoInt(cnNF.Text);
                NotasTerceiros.ParamByName('pData').AsDate          := StrtoDate(cdEmi.Text);
                NotasTerceiros.ParamByName('pFornecedor').AsInteger := FornecedoresCodigo.Value;
                NotasTerceiros.Open;
                If NotasTerceiros.RecordCount <> 0 then begin
                   cReferencia.KeyValue := NotasTerceirosReferencia_Fiscal.Value;
                   cOrigem.KeyValue     := NotasTerceirosOrigem_Mercadoria.Value;
                   cProcesso.Text       := NotasTerceirosProcesso.Value;
                End;
           End;
           bImportar.Enabled := True;
       Except
           bImportar.Enabled := False;
           ShowMessage('Arquivos XML de nota fiscal eletrônica inválido!');
       End;
       If Trim(creferencia.Text) <> '' then begin
          cReferenciaClick(Self);
       End;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.cReferenciaKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then cReferencia.KeyValue := 0;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.cTipoProdutoKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then cTipoProduto.KeyValue := 0;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.cCentroCustoKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If Key = VK_DELETE then cCentroCusto.KeyValue := 0;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.cProcessoExit(Sender: TObject);
Var
    i : Integer;
begin
     With Dados, dmFiscal do begin
          // Pergunta ao usúario qual o tipo do processo.
          If Trim(cProcesso.Text) <> '' then begin
             mAliquotaPIS    := 0;
             mAliquotaCOFINS := 0;
             If ProcessosDOC.Locate('Processo', cProcesso.Text, [loCaseInsensitive]) = False then begin
                If MessageDlg('Processo não encontrado!'+#13+#13'É um processo de Exportação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                   mTipo := 'EXPORTAÇÃO';
                end else begin
                   mTipo           := 'COMPRA INTERNA';
                   mAliquotaPIS    := ConfiguracaoPIS_CTR.Value;
                   mAliquotaCOFINS := ConfiguracaoCOFINS_CTR.Value;
                End;
             end else begin
                If (Dados.ProcessosDOCModalidade_Importacao.Value = 2) or (Dados.ProcessosDOCModalidade_IMportacao.Value = 3) then begin
                   mAliquotaPIS    := ConfiguracaoPIS_CTR.Value;
                   mAliquotaCOFINS := ConfiguracaoCOFINS_CTR.Value;
                End;
             End;
          End;
          
          // Vinculo do produto com o processo "Adições".
          Screen.Cursor := crSQLWait;
          ProcessosDOC.Locate('Processo', cProcesso.Text, [loCaseInsensitive]);

          For i := 1 to GradeCadastro.RowCount-2 do begin
              If Trim(GradeCadastro.Cells[03, i]) <> '' then begin
                 Adicoes.SQL.Clear;
                 Adicoes.SQL.Add('SELECT * FROM Adicoes WHERE(DI = :pDI) AND (Codigo_Mercadoria = :pCodigo)');
                 Adicoes.ParamByName('pDI').AsString      := ProcessosDOCNumero_Declaracao.AsString;
                 Adicoes.ParamByName('pCodigo').AsInteger := StrtoInt(GradeCadastro.Cells[03, i]);
                 Adicoes.Open;

                 GradeAdicoes.Cells[0, i] := GradeCadastro.Cells[ 3, i];                                                     // Codigo do produto.
                 GradeAdicoes.Cells[1, i] := FormatMaskText('99/9999999-9;0; ', ProcessosDOCNumero_Declaracao.AsString);     // Nº da DI.
                 GradeAdicoes.Cells[2, i] := AdicoesAdicao.AsString;                                                         // Nº da Adição.
                 GradeAdicoes.Cells[3, i] := AdicoesSequencia_SISCOMEX.AsString;                                             // Nº do Item (Ordem).
                 GradeAdicoes.Cells[4, i] := AdicoesQuantidade.AsString;                                                     // Quantidade.
                 GradeAdicoes.Cells[5, i] := AdicoesValor_Unitario.AsString;                                                 // Valor.
              End;
          End;
     End;
     Screen.Cursor := crDefault;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.GradeCadastroDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;State: TGridDrawState);
begin
(*
      If (ARow = 0) and (GradeCadastro.Cells[ACol,ARow] <> '') then begin
         With GradeCadastro.Canvas do begin
              FillRect(Rect);
              TextOut(StrToInt(FloatToStr(Int((Rect.Right-Rect.Left-TextWidth(GradeCadastro.Cells[ACol,ARow]))/2)))+Rect.Left,
              Rect.Top+2, GradeCadastro.Cells[ACol,ARow]);
         end;
      End;
*)
end;

procedure TUtilitarios_Importar_NFe_Terceiros.mnBuscarClick(Sender: TObject);
Var
    cCopia: TEdit;
begin
     keybd_event(VK_CONTROL,0,KEYEVENTF_EXTENDEDKEY or 0,0);
     keybd_event(ord('C'),0,0,0);
     keybd_event(VK_CONTROL,$45,KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP,0);

     Application.ProcessMessages;

     cCopia         := TEdit.Create(Utilitarios_Importar_NFe_Terceiros);
     cCopia.Parent  := Utilitarios_Importar_NFe_Terceiros;
     cCopia.Visible := false;
     cCopia.Clear;
     cCopia.PasteFromClipboard;
     
     tProcuraProdutos.SQL.Clear;
     tProcuraProdutos.SQL.Add('SELECT * FROM Produtos WHERE(DESCRICAO LIKE '+ QuotedStr('%'+Trim(cCopia.Text)+'%')+') AND (ISNULL(Desativado, 0) <> 1)');
     tProcuraProdutos.Open;

     If tProcuraProdutos.RecordCount = 0 then begin
        MessageDlg('Produto não encontrado no cadastros!', mtInformation, [mbOK], 0);
     end else begin
        GradeCadastro.Cells[ 1, mLinha] := tProcuraProdutos.FieldByName('Codigo_Fabricante').AsString;
        GradeCadastro.Cells[ 3, mLinha] := tProcuraProdutos.FieldByName('Codigo').AsString;
     End;   
end;

procedure TUtilitarios_Importar_NFe_Terceiros.GradeCadastroClick(Sender: TObject);
begin
      mLinha := GradeCadastro.Row;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.cReferenciaClick(Sender: TObject);
Var
   mQtdeItem  : integer;
   mApuracao1 : Real;
   mValorTotal: Real;
begin
      mQtdeItem := 1;
      with Dados do begin
           while mQtdeItem <= GradeItens.RowCount-1 do begin
                 If Trim(GradeItens.Cells[1, mQtdeItem]) <> '' then begin
                    If Trim(FornecedoresEstado.AsString) = Trim(EmpresasEstado.Value) then begin
                       GradeItens.Cells[6, mQtdeItem]     := ReferenciasFiscaisNatureza_Dentro.AsString;
                       GradeCadastro.Cells[ 4, mQtdeItem] := ReferenciasFiscaisNatureza_Dentro.AsString;
                    end else begin
                       Gradeitens.Cells[6, mQtdeItem]     := ReferenciasFiscaisNatureza_Fora.AsString;
                       GradeCadastro.Cells[ 4, mQtdeItem] := ReferenciasFiscaisNatureza_Fora.AsString;
                    End;

                    Gradeitens.Cells[20, mQtdeItem] := ReferenciasFiscaisCSTICMS.AsString;
                    Gradeitens.Cells[35, mQtdeItem] := ReferenciasFiscaisCSTPIS.AsString;
                    Gradeitens.Cells[39, mQtdeItem] := ReferenciasFiscaisCSTCOFINS.AsString;

                    // Isentas e Outras de IPI.
                    cOutrasIPI.Value := 0;
                    
                    // Pega a CST de IPI da entrada.
                    if Trim(ReferenciasFiscaisCSTIPI.AsString) <> '' then
                       GradeItens.Cells[54, mQtdeItem] := ReferenciasFiscaisCSTIPI.AsString;

                    CSTIPI.Locate('Codigo', GradeItens.Cells[54, mQtdeItem], [loCaseInsensitive]);

                    mValorTotal := 0;
                    If Trim(GradeItens.Cells[48, mQtdeItem]) <> '' then begin
                       mValorTotal := StrtoFloat(GradeItens.Cells[48, mQtdeItem]);
                    End;
                    mApuracao1 := 0;
                    If (Trim(GradeItens.Cells[30, mQtdeItem]) = '') or (Trim(GradeItens.Cells[30, mQtdeItem]) = '0,00') then
                       mApuracao1 := mApuracao1 + mValorTotal;

                    If CSTIPI.FieldByName('Apuracao').Value = 'O' then begin
                       GradeItens.Cells[45, mQtdeItem] := '0';
                       GradeItens.Cells[46, mQtdeItem] := CurrtoStr(mApuracao1);
                       cOutrasIPI.Value                := cOutrasIPI.Value + mApuracao1;
                    end else begin
                       GradeItens.Cells[45, mQtdeItem] := CurrtoStr(mApuracao1);
                       GradeItens.Cells[46, mQtdeItem] := '0';
                       cIsentasIPI.Value               := cIsentasIPI.Value + mApuracao1;
                    End;
                 End;

                 Inc(mQtdeItem);
           end;
      end;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.GradeLoteDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;State: TGridDrawState);
begin
      If (ARow = 0) and (GradeLote.Cells[ACol,ARow] <> '') then begin
         With GradeLote.Canvas do begin
              FillRect(Rect);
              TextOut(StrToInt(FloatToStr(Int((Rect.Right-Rect.Left-TextWidth(GradeLote.Cells[ACol,ARow]))/2)))+Rect.Left,Rect.Top+2, GradeLote.Cells[ACol,ARow]);
         end;
      End;
end;

// Geração dos lançamentos contabeis.
procedure TUtilitarios_Importar_NFe_Terceiros.LancamentoContabil;
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
                               LancamentosProcesso_Debito.Value       := NotasTerceirosProcesso.AsAnsiString;
                               LancamentosOrigem.Value                := 'NF TERCEIROS (ESTOQUE): '+NotasTerceirosNota.AsAnsiString;
                               LancamentosRecriar.Value               := true;
                   Lancamentos.Post;
                   tLancamento.Close;
                end;
             end;
          end;
     end;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.ChecaConta(ContaD:String; ContaC:String);
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

Function TUtilitarios_Importar_NFe_Terceiros.MontaHistorico(Historico: integer):String;
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
                                            ,ProcessosDOCNumero_Declaracao.AsAnsiString
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

procedure TUtilitarios_Importar_NFe_Terceiros.bSeriaisClick(Sender: TObject);
var
    i, e:integer;
begin
      with GradeCadastro do begin
           e := 0;
           for i := 1 to RowCount -1 do begin
               if Trim(Cells[3, i]) <> '' then e := 1;
           end;
      end;

      if e = 0 then begin
         MessageDlg(#13+'Nenhum item relacionado com o cadastro de produtos.'+#13+#13+'Para adicionar os números de "Série/Chassi" é necessário relacionar os produtos.', mtError, [mbOK], 0);
         Abort;
      end;

      Utilitarios_Importar_NFe_TerceirosSeriais := TUtilitarios_Importar_NFe_TerceirosSeriais.Create(Self);
      Utilitarios_Importar_NFe_TerceirosSeriais.Caption := Caption;
      Utilitarios_Importar_NFe_TerceirosSeriais.ShowModal;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.bLotesClick(Sender: TObject);
var
    i, e:integer;
begin
      with GradeCadastro do begin
           e := 0;
           for i := 1 to RowCount -1 do begin
               if Trim(Cells[3, i]) <> '' then e := 1;
           end;
      end;

      if e = 0 then begin
         MessageDlg(#13+'Nenhum item relacionado com o cadastro de produtos.'+#13+#13+'Para adicionar os números de "Lote" é necessário relacionar os produtos.', mtError, [mbOK], 0);
         Abort;
      end;

      Utilitarios_Importar_NFe_TerceirosLotes:= TUtilitarios_Importar_NFe_TerceirosLotes.Create(Self);
      Utilitarios_Importar_NFe_TerceirosLotes.Caption := Caption;
      Utilitarios_Importar_NFe_TerceirosLotes.ShowModal;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.cUnidadeClick(Sender: TObject);
begin
      Cadastro_UnidadeMedida := TCadastro_UnidadeMedida.Create(self);
      Cadastro_UnidadeMedida.Caption := Caption;
      Cadastro_UnidadeMedida.ShowModal;

      with Dados do begin
           Unidades.SQL.Clear;
           Unidades.SQL.Add('SELECT * FROM UnidadeMedida ORDER BY Codigo');
           Unidades.Open;
      end;
end;

procedure TUtilitarios_Importar_NFe_Terceiros.FormCreate(Sender: TObject);
begin
      if Screen.Height <= 768 then begin
         ScaleBy(90, 100);
      end;
end;


end.
