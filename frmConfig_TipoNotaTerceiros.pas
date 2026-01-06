unit frmConfig_TipoNotaTerceiros;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, DBCtrls, Vcl.StdCtrls, Mask, DBGrids, DB, DBAccess,
    MSAccess, ClipBrd, Menus, Vcl.ComCtrls, RxDBComb, RxLookup, Buttons, system.UITypes,  Grids, MemDS;

type
    TConfig_TipoNotaTerceiros = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tCodigo: TMSQuery;
    tCodigoCodigo: TSmallintField;
    mnVariavel: TPopupMenu;
    FORNECEDORES1: TMenuItem;
    DEVOLUO1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText2: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    cCFOPDentro: TDBEdit;
    StaticText3: TStaticText;
    DBLookupComboBox3: TDBLookupComboBox;
    cCFOPFora: TDBEdit;
    StaticText8: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    StaticText9: TStaticText;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    StaticText39: TStaticText;
    StaticText4: TStaticText;
    cCSTICMS: TDBEdit;
    StaticText6: TStaticText;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    lContaTotalNota: TStaticText;
    cContaTotalNota: TDBEdit;
    cContaTotalNota2: TDBLookupComboBox;
    lContaICMSOper: TStaticText;
    cContaICMSOper: TDBEdit;
    cContaICMSOper2: TDBLookupComboBox;
    lContaICMSSub: TStaticText;
    cContaICMSSub: TDBEdit;
    cContaICMSSub2: TDBLookupComboBox;
    lContaIPI: TStaticText;
    cContaIPI: TDBEdit;
    cContaIPI2: TDBLookupComboBox;
    lContaPIS: TStaticText;
    cContaPIS: TDBEdit;
    cContaPIS2: TDBLookupComboBox;
    lContaCOFINS: TStaticText;
    cContaCOFINS: TDBEdit;
    cContaCOFINS2: TDBLookupComboBox;
    lContaISS: TStaticText;
    cContaISS: TDBEdit;
    cContaISS2: TDBLookupComboBox;
    lContaLiquido: TStaticText;
    cContaLiquido: TDBEdit;
    cContaLiquido2: TDBLookupComboBox;
    cCSTIPI: TDBLookupComboBox;
    cFinalidade: TDBRadioGroup;
    StaticText11: TStaticText;
    cTipoCredito: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    cEstoque: TDBCheckBox;
    cApuracaoPISCOFINS: TDBCheckBox;
    cInventario: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    bPesquisar: TButton;
    DBCheckBox2: TDBCheckBox;
    tNotas: TMSQuery;
    cIncentivo: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    StaticText13: TStaticText;
    TabSheet3: TTabSheet;
    fFornula2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lFormula: TLabel;
    cSinalIPI: TRxDBComboBox;
    cSinalICMSOper: TRxDBComboBox;
    cSinalICMSST: TRxDBComboBox;
    cSinalPISDif: TRxDBComboBox;
    cSinalCOFINSDif: TRxDBComboBox;
    cSinalFrete: TRxDBComboBox;
    StaticText12: TStaticText;
    bLimpar1: TBitBtn;
    cPrecoVenda: TDBRadioGroup;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lFormula2: TLabel;
    cSinalEntradaIPI: TRxDBComboBox;
    cSinalEntradaICMSOper: TRxDBComboBox;
    cSinalEntradaICMSST: TRxDBComboBox;
    cSinalEntradaPIS: TRxDBComboBox;
    cSinalEntradaCOFINS: TRxDBComboBox;
    cSinalEntradaFrete: TRxDBComboBox;
    StaticText16: TStaticText;
    bLimpar2: TBitBtn;
    cInventarioEstoque: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    cEstoqueRep: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    cMovimentaInd: TDBCheckBox;
    StaticText17: TStaticText;
    cNaturezaIndEntra2: TDBLookupComboBox;
    cNaturezaIndEntra: TDBEdit;
    StaticText18: TStaticText;
    cNaturezaIndSai2: TDBLookupComboBox;
    cNaturezaIndSai: TDBEdit;
    TabSheet4: TTabSheet;
    StaticText70: TStaticText;
    cPesquisa: TEdit;
    SpeedButton2: TSpeedButton;
    bCopiarContabil: TButton;
    bLimparContabil: TButton;
    tCopia: TMSQuery;
    DBLookupComboBox26: TDBLookupComboBox;
    cEstoqueD: TDBEdit;
    StaticText68: TStaticText;
    cCOFINS_NomeC: TDBLookupComboBox;
    cPIS_NomeC: TDBLookupComboBox;
    cIPI_NomeC: TDBLookupComboBox;
    cICMSSub_NomeC: TDBLookupComboBox;
    cICMSOper_NomeC: TDBLookupComboBox;
    StaticText19: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    cICMSOper_CodD: TDBEdit;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    cICMSSub_CodD: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    cIPI_CodD: TDBEdit;
    DBLookupComboBox9: TDBLookupComboBox;
    lPIS: TStaticText;
    DBLookupComboBox16: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBLookupComboBox17: TDBLookupComboBox;
    lCOFINS: TStaticText;
    DBLookupComboBox18: TDBLookupComboBox;
    DBEdit23: TDBEdit;
    DBLookupComboBox19: TDBLookupComboBox;
    cICMSOper_CodC: TDBEdit;
    cIPI_CodC: TDBEdit;
    cPIS_CodC: TDBEdit;
    cCOFINS_CodC: TDBEdit;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    StaticText28: TStaticText;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    DBLookupComboBox21: TDBLookupComboBox;
    cICMSSub_CodC: TDBEdit;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    StaticText55: TStaticText;
    DBLookupComboBox23: TDBLookupComboBox;
    StaticText62: TStaticText;
    StaticText63: TStaticText;
    StaticText64: TStaticText;
    StaticText65: TStaticText;
    cHistoricoProdutos: TDBLookupComboBox;
    cProdutosD: TDBEdit;
    cProdutosC: TDBEdit;
    DBLookupComboBox25: TDBLookupComboBox;
    cHistoricoEstoque: TDBLookupComboBox;
    StaticText66: TStaticText;
    StaticText67: TStaticText;
    cEstoqueC: TDBEdit;
    DBLookupComboBox27: TDBLookupComboBox;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    StaticText22: TStaticText;
    cPesquisaH: TEdit;
    bCopiarTodos: TButton;
    DBLookupComboBox10: TDBLookupComboBox;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText29: TStaticText;
    DBLookupComboBox11: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBLookupComboBox12: TDBLookupComboBox;
    DBCheckBox9: TDBCheckBox;
    GroupBox5: TGroupBox;
    StaticText7: TStaticText;
    cCSTPIS: TDBLookupComboBox;
    StaticText10: TStaticText;
    cCSTCOFINS: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    StaticText30: TStaticText;
    DBLookupComboBox13: TDBLookupComboBox;
    StaticText31: TStaticText;
    DBLookupComboBox14: TDBLookupComboBox;
    TabSheet5: TTabSheet;
    DBGrid2: TDBGrid;
    Label15: TLabel;
    Label16: TLabel;
    cSinalPIS: TRxDBComboBox;
    cSinalCOFINS: TRxDBComboBox;
    Bevel2: TBevel;
    lFormulaDif: TLabel;
    StaticText34: TStaticText;
    bDuplicar: TButton;
    RxDBComboBox1: TRxDBComboBox;
    Label17: TLabel;
    CLIENTE1: TMenuItem;
    PROCESSO1: TMenuItem;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    lFormulaBC: TLabel;
    cSinalBCIPI: TRxDBComboBox;
    cSinalBCICMSOper: TRxDBComboBox;
    cSinalBCICMSST: TRxDBComboBox;
    cSinalBCFrete: TRxDBComboBox;
    StaticText42: TStaticText;
    BitBtn1: TBitBtn;
    DBCheckBox10: TDBCheckBox;
    StaticText43: TStaticText;
    DBLookupComboBox15: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    StaticText44: TStaticText;
    DBLookupComboBox20: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    bFiliais: TButton;
    DBCheckBox38: TDBCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure StaticText9Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure StaticText8Click(Sender: TObject);
    procedure lContaTotalNotaClick(Sender: TObject);
    procedure StaticText4Click(Sender: TObject);
    procedure StaticText6Click(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure cSinalIPIClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure cCSTPISEnter(Sender: TObject);
    procedure bLimpar1Click(Sender: TObject);
    procedure StaticText14Click(Sender: TObject);
    procedure bLimpar2Click(Sender: TObject);
    procedure cSinalEntradaIPIClick(Sender: TObject);
    procedure cInventarioEstoqueClick(Sender: TObject);
    procedure cMovimentaIndClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure bCopiarContabilClick(Sender: TObject);
    procedure bLimparContabilClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure FORNECEDORES1Click(Sender: TObject);
    procedure DEVOLUO1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cPesquisaHChange(Sender: TObject);
    procedure bCopiarTodosClick(Sender: TObject);
    procedure bDuplicarClick(Sender: TObject);
    procedure CLIENTE1Click(Sender: TObject);
    procedure PROCESSO1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cSinalBCIPIClick(Sender: TObject);
    procedure bFiliaisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNFReferencia: String;
  end;

var
   Config_TipoNotaTerceiros: TConfig_TipoNotaTerceiros;

implementation

uses frmDados, frmDMContab, frmCadastro_ClassificacaoFinanceira,frmCadastro_HistoricoPadrao, frmCadastro_NaturezaOperacao, frmCadastro_PlanoContas, frmCadastro_Servicos,
     frmCadastro_TiposDocumentos, frmDMFiscal, frmCadastro_ImpostosTaxas, frmConfig_ReferenciaFiliais;

{$R *.dfm}

procedure TConfig_TipoNotaTerceiros.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TConfig_TipoNotaTerceiros.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     ClipBoard.AsText := Dados.ReferenciasFiscaisCodigo.AsString;
     Config_TipoNotaTerceiros.Release;
     Config_TipoNotaTerceiros := nil;
end;

procedure TConfig_TipoNotaTerceiros.FormShow(Sender: TObject);
begin
      With Dados, dmContab, dmFiscal do begin
           ReferenciasFiscais.SQL.Clear;
           ReferenciasFiscais.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE(Ativo = 1) ORDER BY Descricao');
           ReferenciasFiscais.Open;

           If mNFReferencia <> '' then ReferenciasFiscais.Locate('Codigo', mNFReferencia, [loCaseInsensitive]);

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 0)');
           PlanoContas.Open;

           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Descricao');
           Historicos.Open;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza ORDER BY Descricao_NF');
           Natureza.Open;

           TiposDocumentos.SQL.Clear;
           TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE(Desativada <> 1) ORDER BY Descricao');
           TiposDocumentos.Open;

           ModelosDocumentos.SQL.Clear;
           ModelosDocumentos.SQL.Add('SELECT * FROM ModelosDocumentos ORDER BY Descricao');
           ModelosDocumentos.Open;

           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(ISNULL(Desativada, 0) = 0) ORDER BY Descricao');
           ClassificacaoFinanceira.Open;

           Servicos.SQL.Clear;
           Servicos.SQL.Add('SELECT * FROM Servicos WHERE (Ativo = 1) ORDER BY Descricao,Codigo');
           Servicos.Open;

           CSTIPI.SQL.Clear;
           CSTIPI.SQL.Add('SELECT * FROM CSTIPI WHERE(Codigo < ''50'') OR (Codigo = ''A0'') ORDER BY Codigo');
           CSTIPI.Open;

           CSTPIS.SQL.Clear;
           If Copy(ReferenciasFiscaisNatureza_Dentro.AsString, 1, 1) < '5' then
              CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo > 49) ORDER BY Codigo')
           else
              CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo < 50) ORDER BY Codigo');
           CSTPIS.Open;

           CSTCOFINS.SQL.Clear;
           If Copy(ReferenciasFiscaisNatureza_Dentro.AsString, 1, 1) < '5' then
              CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo > 49) ORDER BY Codigo')
           else
              CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo < 50) ORDER BY Codigo');
           CSTCOFINS.Open;

           CSTTabelaA.SQL.Clear;
           CSTTabelaA.SQL.Add('SELECT * FROM CSTTabelaA ORDER BY Codigo');
           CSTTabelaA.Open;

           CSTTabelaB.SQL.Clear;
           CSTTabelaB.SQL.Add('SELECT * FROM CSTTabelaB ORDER BY Classificacao');
           CSTTabelaB.Open;

           TiposBCCredito.SQL.Clear;
           TiposBCCredito.SQL.Add('SELECT * FROM BCCredito ORDER BY Codigo');
           TiposBCCredito.Open;

           IncentivosFiscais.SQL.Clear;
           IncentivosFiscais.SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
           IncentivosFiscais.Open;

           Impostos.SQL.Clear;
           Impostos.SQl.Add('SELECT * FROM Impostos ORDER BY Descricao, Codigo');
           Impostos.Open;

           PageControl1.ActivePageIndex := 0;
      End;
end;

procedure TConfig_TipoNotaTerceiros.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         if PageControl1.ActivePageIndex = 4 then PageControl1.ActivePageIndex := 0;
         if PageControl1.ActivePageIndex = 0 then cDescricao.SetFocus;
         if PageControl1.ActivePageIndex = 1 then cInventarioEstoque.SetFocus;
         if PageControl1.ActivePageIndex = 2 then cContaICMSOper.SetFocus;
         if PageControl1.ActivePageIndex = 3 then cICMSOper_CodD.SetFocus;

         If Button = nbInsert then begin
            Dados.ReferenciasFiscaisAtivo.Value := true;
         End;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled := False;
         cPesquisa.Clear;
      End;
      bCopiarContabil.Enabled := (Dados.ReferenciasFiscais.State = dsInsert) or (Dados.ReferenciasFiscais.State = dsEdit);
      bCopiarTodos.Enabled    := (Dados.ReferenciasFiscais.State = dsInsert) or (Dados.ReferenciasFiscais.State = dsEdit);
      bLimparContabil.Enabled := (Dados.ReferenciasFiscais.State = dsInsert) or (Dados.ReferenciasFiscais.State = dsEdit);
end;

procedure TConfig_TipoNotaTerceiros.PROCESSO1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'PROCESSO';
end;

procedure TConfig_TipoNotaTerceiros.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      With Dados, dmFiscal do begin
           If (Button = nbPost) then begin
              If (CSTTabelaA.Locate('Codigo', Copy(ReferenciasFiscaisCSTICMS.AsString,1,1), [loCaseInsensitive]) = false) or (CSTTabelaB.Locate('Codigo', Copy(ReferenciasFiscaisCSTICMS.AsString,2,2), [loCaseInsensitive]) = false) then begin
                 MessageDlg('Erro!'+#13+#13+'CST de ICMS inválida.', mtError, [mbOK], 0);
                 cCSTICMS.SetFocus;
                 Abort;
              End;
              If (ReferenciasFiscaisMovimenta_EstoqueInd.AsBoolean) and ((cNaturezaIndEntra.Text = '') or (cNaturezaIndSai.Text = '')) then begin
                 MessageDlg('Erro!'+#13+#13+'Para Referências Fiscais de Idustrialização é obrigatório informar as CSTs de Entrada/Saída', mtError, [mbOK], 0);
                 cNaturezaIndEntra.SetFocus;
                 Abort;
              End;
           End;

           If (Button = nbPost) and (ReferenciasFiscais.State = dsInsert) then begin
              Screen.Cursor := crSQLWait;
              tCodigo.Open;
              ReferenciasFiscaisCodigo.Value := tCodigoCodigo.Value+1;
              tCodigo.Close;
              Screen.Cursor := crDefault;
           End;

           // Ajusta o campo "Movimenta_Estoque" dos itens das notas de terceiros quando modificado.
           If (Button = nbPost) and (ReferenciasFiscais.State = dsEdit) then begin
              Screen.Cursor := crSQLWait;

              NotasTerceirosItens.SQL.Clear;
              NotasTerceirosItens.SQL.Add('UPDATE NotasTerceirosItens');
              NotasTerceirosItens.SQL.Add('SET    Movimenta_Estoque    = :pMovimentaEstoque,');
              NotasTerceirosItens.SQL.Add('       Movimenta_Inventario = :pMovimentaInventario,');
              NotasTerceirosItens.SQL.Add('       Movimenta_EstoqueRep = :pMovimentaRep,');
              NotasTerceirosItens.SQL.Add('       Inventario_Terceiros = :pMovimentaTerceiros');
              //NotasTerceirosItens.SQL.Add('       Apuracao_PISCOFINS   = :pApuracaoPISCOFINS');
              NotasTerceirosItens.SQL.Add('WHERE  (Referencia_Fiscal = :pReferencia)');
              NotasTerceirosItens.ParamByName('pMovimentaEstoque').AsBoolean    := ReferenciasFiscaisMovimenta_Estoque.AsBoolean;
              NotasTerceirosItens.ParamByName('pMovimentaRep').AsBoolean        := ReferenciasFiscaisMovimenta_EstoqueRep.AsBoolean;
              NotasTerceirosItens.ParamByName('pMovimentaInventario').AsBoolean := ReferenciasFiscaisMovimenta_Inventario.AsBoolean;
              NotasTerceirosItens.ParamByName('pMovimentaTerceiros').AsBoolean  := ReferenciasFiscaisInventario_Terceiros.AsBoolean;
              //NotasTerceirosItens.ParamByName('pApuracaoPISCOFINS').AsBoolean   := ReferenciasFiscaisApuracao_PISCOFINS.AsBoolean;
              NotasTerceirosItens.ParamByName('pReferencia').AsInteger          := ReferenciasFiscaisCodigo.AsInteger;
              NotasTerceirosItens.Execute;
              NotasTerceirosItens.SQL.Clear;
              NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens');

              Screen.Cursor := crDefault;
           End;
           If Button = nbDelete then begin
              tNotas.SQL.Clear;
              tNotas.SQL.Add('SELECT COUNT(*) AS Qtde FROM NotasTerceiros WHERE(Referencia_Fiscal = :pReferencia)');
              tNotas.ParamByName('pReferencia').AsInteger := ReferenciasFiscaisCodigo.AsInteger;
              tNotas.Open;
              If tNotas.FieldByName('Qtde').AsInteger > 0 then begin
                 MessageDlg('Referência Fiscal já utilizada, não pode ser excluída.', mtInformation, [mbOK], 0);
                 Abort;
              End;
           End;
      End;
end;

procedure TConfig_TipoNotaTerceiros.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TConfig_TipoNotaTerceiros.StaticText9Click(Sender: TObject);
begin
      Cadastro_Servicos := TCadastro_Servicos.Create(Self);
      Cadastro_Servicos.Caption := Caption;
      Cadastro_Servicos.ShowModal;;
      Dados.Servicos.SQL.Clear;
      Dados.Servicos.SQL.Add('SELECT * FROM Servicos WHERE (Ativo = 1) ORDER BY Descricao,Codigo');
      Dados.Servicos.Open;
end;

procedure TConfig_TipoNotaTerceiros.StaticText2Click(Sender: TObject);
begin
      Cadastro_NaturezaOperacao := TCadastro_NaturezaOperacao.Create(Self);
      Cadastro_NaturezaOperacao.Caption := Caption;
      Cadastro_NaturezaOperacao.ShowModal;
end;

procedure TConfig_TipoNotaTerceiros.StaticText3Click(Sender: TObject);
begin
      Cadastro_NaturezaOperacao := TCadastro_NaturezaOperacao.Create(Self);
      Cadastro_NaturezaOperacao.Caption := Caption;
      Cadastro_NaturezaOperacao.ShowModal;
end;

procedure TConfig_TipoNotaTerceiros.StaticText8Click(Sender: TObject);
begin
      Cadastro_TiposDocumentos := TCadastro_TiposDocumentos.Create(Self);
      Cadastro_TiposDocumentos.Caption := Caption;
      Cadastro_TiposDocumentos.ShowModal;
end;

procedure TConfig_TipoNotaTerceiros.lContaTotalNotaClick(Sender: TObject);
begin
      Cadastro_ClassificacaoFinanceira := TCadastro_ClassificacaoFinanceira.Create(Self);
      Cadastro_ClassificacaoFinanceira.Caption := Caption;
      Cadastro_ClassificacaoFinanceira.ShowModal;
end;

procedure TConfig_TipoNotaTerceiros.StaticText4Click(Sender: TObject);
begin
      Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
      Cadastro_PlanoContas.Caption := Caption;
      Cadastro_PlanoContas.ShowModal;
end;

procedure TConfig_TipoNotaTerceiros.StaticText6Click(Sender: TObject);
begin
      Cadastro_HistoricoPadrao := TCadastro_HistoricoPadrao.Create(Self);
      Cadastro_HistoricoPadrao.Caption := Caption;
      Cadastro_HistoricoPadrao.ShowModal;
end;

procedure TConfig_TipoNotaTerceiros.DBEdit6Change(Sender: TObject);
begin
      With Dados do begin
           cContaICMSOper.Enabled  := Trim(ReferenciasFiscaisServico.AsString)  = '';
           cContaICMSOper2.Enabled := Trim(ReferenciasFiscaisServico.AsString)  = '';
           lContaICMSOper.Enabled  := Trim(ReferenciasFiscaisServico.AsString)  = '';
           cContaICMSSub.Enabled   := Trim(ReferenciasFiscaisServico.AsString)  = '';
           cContaICMSSub2.Enabled  := Trim(ReferenciasFiscaisServico.AsString)  = '';
           lContaICMSSub.Enabled   := Trim(ReferenciasFiscaisServico.AsString)  = '';
           cContaIPI.Enabled       := Trim(ReferenciasFiscaisServico.AsString)  = '';
           cContaIPI2.Enabled      := Trim(ReferenciasFiscaisServico.AsString)  = '';
           lContaIPI.Enabled       := Trim(ReferenciasFiscaisServico.AsString)  = '';
           cContaPIS.Enabled       := Trim(ReferenciasFiscaisServico.AsString)  = '';
           cContaPIS2.Enabled      := Trim(ReferenciasFiscaisServico.AsString)  = '';
           lContaPIS.Enabled       := Trim(ReferenciasFiscaisServico.AsString)  = '';
           cContaCOFINS.Enabled    := Trim(ReferenciasFiscaisServico.AsString)  = '';
           cContaCOFINS2.Enabled   := Trim(ReferenciasFiscaisServico.AsString)  = '';
           lContaCOFINS.Enabled    := Trim(ReferenciasFiscaisServico.AsString)  = '';
           cContaISS.Enabled       := Trim(ReferenciasFiscaisServico.AsString) <> '';
           cContaISS2.Enabled      := Trim(ReferenciasFiscaisServico.AsString) <> '';
           lContaISS.Enabled       := Trim(ReferenciasFiscaisServico.AsString) <> '';
      End;
end;

procedure TConfig_TipoNotaTerceiros.cCodigoChange(Sender: TObject);
begin
     cSinalIPIClick(Self);
     cSinalEntradaIPIClick(Self);
     cSinalBCIPIClick(Self);
     cMovimentaIndClick(self);
     with Dados do begin
     CSTPIS.SQL.Clear;
     If Copy(ReferenciasFiscaisNatureza_Dentro.AsString, 1, 1) < '5' then
        CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo > 49) ORDER BY Codigo')
     else
        CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo < 50) ORDER BY Codigo');
     CSTPIS.Open;

     CSTCOFINS.SQL.Clear;
     If Copy(ReferenciasFiscaisNatureza_Dentro.AsString, 1, 1) < '5' then
        CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo > 49) ORDER BY Codigo')
     else
        CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo < 50) ORDER BY Codigo');
     CSTCOFINS.Open;
     end;

     if (cFinalidade.ItemIndex = 2) or (copy(cCFOPDentro.Text, 1, 1) = '5') or (copy(cCFOPFora.Text, 1 ,1) = '6') then begin
        Fornecedores1.Caption := '&CLIENTE (Conta do cadastro do cliente)';
     end else begin
        Fornecedores1.Caption := '&FORNECEDOR (Conta do cadastro do fornecedor)';
     end;
end;

procedure TConfig_TipoNotaTerceiros.cSinalIPIClick(Sender: TObject);
begin
     lFormula.Caption  := 'Produto ';
     If (cSinalIPI.Text = '-') or (cSinalIPI.Text = '+') then begin
        lFormula.Caption := lFormula.Caption + cSinalIPI.Text + ' IPI '
     End;
     If (cSinalICMSOper.Text = '-') or (cSinalICMSOper.Text = '+') then begin
        lFormula.Caption := lFormula.Caption + cSinalICMSOper.Text + ' ICMS Oper '
     End;
     If (cSinalICMSST.Text = '-') or (cSinalICMSST.Text = '+') then begin
        lFormula.Caption := lFormula.Caption + cSinalICMSST.Text + ' ICMS ST '
     End;
     lFormulaDif.Caption := lFormula.Caption;
     If (cSinalPIS.Text = '-') or (cSinalPIS.Text = '+') then begin
        lFormula.Caption := lFormula.Caption + cSinalPIS.Text + ' PIS '
     End;
     If (cSinalCOFINS.Text = '-') or (cSinalCOFINS.Text = '+') then begin
        lFormula.Caption := lFormula.Caption + cSinalCOFINS.Text + ' COFINS '
     End;
     If (cSinalPISDif.Text = '-') or (cSinalPISDif.Text = '+') then begin
        lFormulaDif.Caption := lFormulaDif.Caption + cSinalPISDif.Text + ' PIS '
     End;
     If (cSinalCOFINSDif.Text = '-') or (cSinalCOFINSDif.Text = '+') then begin
        lFormulaDif.Caption := lFormulaDif.Caption + cSinalCOFINSDif.Text + ' COFINS '
     End;
     If (cSinalFrete.Text = '-') or (cSinalFrete.Text = '+') then begin
        lFormula.Caption := lFormula.Caption + cSinalFrete.Text + ' Frete '
     End;
end;

procedure TConfig_TipoNotaTerceiros.bPesquisarClick(Sender: TObject);
Var
    mPesquisa: String;
begin
      mPesquisa := InputBox('Pesquisa', 'Codigo', mPesquisa);
      Dados.ReferenciasFiscais.Locate('Codigo', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TConfig_TipoNotaTerceiros.cCSTPISEnter(Sender: TObject);
begin
      With Dados do begin
           CSTPIS.SQL.Clear;
           If Copy(ReferenciasFiscaisNatureza_Dentro.AsString, 1, 1) < '5' then
              CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo > 49) ORDER BY Codigo')
           else
              CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo < 50) ORDER BY Codigo');
           CSTPIS.Open;

           CSTCOFINS.SQL.Clear;
           If Copy(ReferenciasFiscaisNatureza_Dentro.AsString, 1, 1) < '5' then
              CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo > 49) ORDER BY Codigo')
           else
              CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo < 50) ORDER BY Codigo');
           CSTCOFINS.Open;
      End;
end;

procedure TConfig_TipoNotaTerceiros.bLimpar1Click(Sender: TObject);
begin
     With Dados do begin
          With ReferenciasFiscais do begin
               FieldByName('Sinal_IPI').Clear;
               FieldByName('Sinal_IPI').Clear;
               FieldByName('Sinal_ICMSOper').Clear;
               FieldByName('Sinal_ICMSST').Clear;
               FieldByName('Sinal_Frete').Clear;
               FieldByName('Sinal_PIS').Clear;
               FieldByName('Sinal_COFINS').Clear;
               FieldByName('Sinal_PISDif').Clear;
               FieldByName('Sinal_COFINSDif').Clear;
          End;

          cSinalIPIClick(Self);
     End;
end;

procedure TConfig_TipoNotaTerceiros.StaticText14Click(Sender: TObject);
begin
      Cadastro_ImpostosTaxas := TCadastro_ImpostosTaxas.Create(Self);
      Cadastro_ImpostosTaxas.Caption := Caption;
      Cadastro_ImpostosTaxas.ShowModal;;
      Dados.Impostos.SQL.Clear;
      Dados.Impostos.SQL.Add('SELECT * FROM Impostos ORDER BY Descricao,Codigo');
      Dados.Impostos.Open;
end;

procedure TConfig_TipoNotaTerceiros.bLimpar2Click(Sender: TObject);
begin
     With Dados do begin
          With ReferenciasFiscais do begin
               FieldByName('Sinal_EntradaIPI').Clear;
               FieldByName('Sinal_EntradaIPI').Clear;
               FieldByName('Sinal_EntradaICMSOper').Clear;
               FieldByName('Sinal_EntradaICMSST').Clear;
               FieldByName('Sinal_EntradaPIS').Clear;
               FieldByName('Sinal_EntradaCOFINS').Clear;
               FieldByName('Sinal_EntradaFrete').Clear;
          End;

          cSinalEntradaIPIClick(Self);
     End;
end;

procedure TConfig_TipoNotaTerceiros.cSinalBCIPIClick(Sender: TObject);
begin
     lFormulaBC.Caption := 'Produto ';
     If (cSinalBCIPI.Text = '-') or (cSinalBCIPI.Text = '+') then begin
        lFormulaBC.Caption := lFormulaBC.Caption + cSinalBCIPI.Text + ' IPI '
     End;
     If (cSinalBCICMSOper.Text = '-') or (cSinalBCICMSOper.Text = '+') then begin
        lFormulaBC.Caption := lFormulaBC.Caption + cSinalBCICMSOper.Text + ' ICMS Oper '
     End;
     If (cSinalBCICMSST.Text = '-') or (cSinalBCICMSST.Text = '+') then begin
        lFormulaBC.Caption := lFormulaBC.Caption + cSinalBCICMSST.Text + ' ICMS ST '
     End;
     If (cSinalBCFrete.Text = '-') or (cSinalBCFrete.Text = '+') then begin
        lFormulaBC.Caption := lFormulaBC.Caption + cSinalBCFrete.Text + ' Frete '
     End;
end;

procedure TConfig_TipoNotaTerceiros.cSinalEntradaIPIClick(Sender: TObject);
begin
     lFormula2.Caption := 'Produto ';
     If (cSinalEntradaIPI.Text = '-') or (cSinalEntradaIPI.Text = '+') then begin
        lFormula2.Caption := lFormula2.Caption + cSinalEntradaIPI.Text + ' IPI '
     End;
     If (cSinalEntradaICMSOper.Text = '-') or (cSinalEntradaICMSOper.Text = '+') then begin
        lFormula2.Caption := lFormula2.Caption + cSinalEntradaICMSOper.Text + ' ICMS Oper '
     End;
     If (cSinalEntradaICMSST.Text = '-') or (cSinalEntradaICMSST.Text = '+') then begin
        lFormula2.Caption := lFormula2.Caption + cSinalEntradaICMSST.Text + ' ICMS ST '
     End;
     If (cSinalEntradaPIS.Text = '-') or (cSinalEntradaPIS.Text = '+') then begin
        lFormula2.Caption := lFormula2.Caption + cSinalEntradaPIS.Text + ' PIS '
     End;
     If (cSinalEntradaCOFINS.Text = '-') or (cSinalEntradaCOFINS.Text = '+') then begin
        lFormula2.Caption := lFormula2.Caption + cSinalEntradaCOFINS.Text + ' COFINS '
     End;
     If (cSinalEntradaFrete.Text = '-') or (cSinalEntradaFrete.Text = '+') then begin
        lFormula2.Caption := lFormula2.Caption + cSinalEntradaFrete.Text + ' Frete '
     End;
end;

procedure TConfig_TipoNotaTerceiros.cInventarioEstoqueClick(Sender: TObject);
begin
      with Dados do begin
           cSinalIPI.Enabled       := not cInventarioEstoque.Checked;
           cSinalICMSOper.Enabled  := cSinalIPI.Enabled;
           cSinalICMSST.Enabled    := cSinalIPI.Enabled;
           cSinalPIS.Enabled       := cSinalIPI.Enabled;
           cSinalCOFINS.Enabled    := cSinalIPI.Enabled;
           cSinalPISDif.Enabled    := cSinalIPI.Enabled;
           cSinalCOFINSDif.Enabled := cSinalIPI.Enabled;
           cSinalFrete.Enabled     := cSinalIPI.Enabled;
      end;
end;

procedure TConfig_TipoNotaTerceiros.CLIENTE1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'CLIENTE';
end;

procedure TConfig_TipoNotaTerceiros.cMovimentaIndClick(Sender: TObject);
begin
     cNaturezaIndEntra.Enabled  := cMovimentaInd.Checked;
     cNaturezaIndEntra2.Enabled := cMovimentaInd.Checked;
     cNaturezaIndSai.Enabled    := cMovimentaInd.Checked;
     cNaturezaIndSai2.Enabled   := cMovimentaInd.Checked;
end;

procedure TConfig_TipoNotaTerceiros.SpeedButton2Click(Sender: TObject);
begin
     cPesquisa.Clear;
end;

procedure TConfig_TipoNotaTerceiros.bCopiarContabilClick(Sender: TObject);
Var
    mInput : String;
    mTipo,i: Integer;
begin
     mInput := Trim(InputBox('Importar Contas', 'Código da Referência Fiscal de origem:', mInput));
     mTipo  := 0;
     if mInput <> '' then begin
        try
           mTipo := StrtoInt(mInput);
        except
           ShowMessage('Código de Referência Fiscal de origem invalído!'+#13+#13+'Digite apenas números no código da Referência Fiscal.');
           Abort;
        end;

        with Dados do begin
             if mTipo <> ReferenciasFiscaisCodigo.Value then begin
                Screen.Cursor := crSQLWait;
                tCopia.SQL.Clear;
                tCopia.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE Codigo = :pCodigo');
                tCopia.ParamByName('pCodigo').AsInteger := mTipo;
                tCopia.Open;
                Screen.Cursor := crDefault;
                for i := 0 to ReferenciasFiscais.FieldCount -1 do begin
                    if (Copy(ReferenciasFiscais.Fields[i].FieldName, 1, 6) = 'Conta_') or (Copy(ReferenciasFiscais.Fields[i].FieldName, 1, 10) = 'Historico_') then begin
                       ReferenciasFiscais.FieldByName(ReferenciasFiscais.Fields[i].FieldName).Value := tCopia.FieldByName(ReferenciasFiscais.Fields[i].FieldName).Value;
                    end;
                end;
             end else begin
                ShowMessage('Informe o código de um tipo de nota diferente do que você esta editando para importar!');
             end;
        end;
     end;
end;

procedure TConfig_TipoNotaTerceiros.bLimparContabilClick(Sender: TObject);
var
   i: integer;
begin
      if MessageDlg('Deseja realmente limpar as contas contabeis?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         with Dados do begin
              for i := 0 to ReferenciasFiscais.FieldCount -1 do begin
                  if (Copy(ReferenciasFiscais.Fields[i].FieldName, 1, 6) = 'Conta_') or (Copy(ReferenciasFiscais.Fields[i].FieldName, 1, 10) = 'Historico_') then begin
                     ReferenciasFiscais.FieldByName(ReferenciasFiscais.Fields[i].FieldName).Clear;
                  end;
              end;
         end;
      end;
end;

procedure TConfig_TipoNotaTerceiros.cPesquisaChange(Sender: TObject);
begin
      with dmContab do begin
           PlanoContas.SQL.Clear;
           if Trim(cPesquisa.Text) <> '' then
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+') AND Sintetica <> 1 ORDER BY Conta, Codigo')
           else
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Conta, Codigo');
           PlanoContas.Open;
      end;
end;

procedure TConfig_TipoNotaTerceiros.FORNECEDORES1Click(Sender: TObject);
begin
     if (cFinalidade.ItemIndex = 2) or (copy(cCFOPDentro.Text, 1, 1) = '5') or (copy(cCFOPFora.Text, 1 ,1) = '6') then begin
         TCustomEdit(ActiveControl).Text := 'CLIENTE';
     end else begin
         TCustomEdit(ActiveControl).Text := 'FORNECEDOR'
     end;
end;

procedure TConfig_TipoNotaTerceiros.DEVOLUO1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'DEVOLUÇÃO';
end;

procedure TConfig_TipoNotaTerceiros.SpeedButton1Click(Sender: TObject);
begin
     cPesquisaH.Clear;
end;

procedure TConfig_TipoNotaTerceiros.cPesquisaHChange(Sender: TObject);
begin
      with dmContab do begin
           Historicos.SQL.Clear;
           if Trim(cPesquisaH.Text) <> '' then
              Historicos.SQL.Add('SELECT * FROM HistoricoPadrao WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisaH.Text+'%')+') ORDER BY Descricao')
           else
              Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Descricao');
           Historicos.Open;
      end;
end;

procedure TConfig_TipoNotaTerceiros.bCopiarTodosClick(Sender: TObject);
begin
     if MessageDlg('Atenção!'+#13+'Isto ira exportar as contas contábeis desta Referência Fiscal e substituir de todas as outras.'+#13+#13+'Deseja realmente exportar as contas?', mtConfirmation, [mbYes, mbNO], 0) = mrNo then begin
        Abort;
     end;

     With Dados,dmFiscal do begin
          tCopia.SQL.Clear;
          tCopia.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE Codigo <> :pCodigo');
          tCopia.ParamByName('pCodigo').AsInteger := ReferenciasFiscais.FieldByName('Codigo').AsInteger;
          tCopia.Open;

          while not tCopia.Eof do begin
                tCopia.Edit;
                       if Trim(tCopia.FieldByName('Servico').AsString) = '' then begin
                          tCopia.FieldByName('Conta_ICMSOper_D').Value        := ReferenciasFiscais.FieldByName('Conta_ICMSOper_D').Value;
                          tCopia.FieldByName('Conta_ICMSOper_C').Value        := ReferenciasFiscais.FieldByName('Conta_ICMSOper_C').Value;
                          tCopia.FieldByName('Historico_ICMSOper').Value      := ReferenciasFiscais.FieldByName('Historico_ICMSOper').Value;
                          tCopia.FieldByName('Conta_ICMSSub_D').Value         := ReferenciasFiscais.FieldByName('Conta_ICMSSub_D').Value;
                          tCopia.FieldByName('Conta_ICMSSub_C').Value         := ReferenciasFiscais.FieldByName('Conta_ICMSSub_C').Value;
                          tCopia.FieldByName('Historico_ICMSSub').Value       := ReferenciasFiscais.FieldByName('Historico_ICMSSub').Value;
                          tCopia.FieldByName('Conta_IPI_D').Value             := ReferenciasFiscais.FieldByName('Conta_IPI_D').Value;
                          tCopia.FieldByName('Conta_IPI_C').Value             := ReferenciasFiscais.FieldByName('Conta_IPI_C').Value;
                          tCopia.FieldByName('Historico_IPI').Value           := ReferenciasFiscais.FieldByName('Historico_IPI').Value;
                          tCopia.FieldByName('Conta_PIS_D').Value             := ReferenciasFiscais.FieldByName('Conta_PIS_D').Value;
                          tCopia.FieldByName('Conta_PIS_C').Value             := ReferenciasFiscais.FieldByName('Conta_PIS_C').Value;
                          tCopia.FieldByName('Historico_PIS').Value           := ReferenciasFiscais.FieldByName('Historico_PIS').Value;
                          tCopia.FieldByName('Conta_COFINS_D').Value          := ReferenciasFiscais.FieldByName('Conta_COFINS_D').Value;
                          tCopia.FieldByName('Conta_COFINS_C').Value          := ReferenciasFiscais.FieldByName('Conta_COFINS_C').Value;
                          tCopia.FieldByName('Historico_COFINS').Value        := ReferenciasFiscais.FieldByName('Historico_COFINS').Value;
                          tCopia.FieldByName('Conta_TotalProdutos_D').Value   := ReferenciasFiscais.FieldByName('Conta_TotalProdutos_D').Value;
                          tCopia.FieldByName('Conta_TotalProdutos_C').Value   := ReferenciasFiscais.FieldByName('Conta_TotalProdutos_C').Value;
                          tCopia.FieldByName('Historico_TotalProdutos').Value := ReferenciasFiscais.FieldByName('Historico_TotalProdutos').Value;
                          tCopia.FieldByName('Conta_Estoque_D').Value         := ReferenciasFiscais.FieldByName('Conta_Estoque_D').Value;
                          tCopia.FieldByName('Conta_Estoque_C').Value         := ReferenciasFiscais.FieldByName('Conta_Estoque_C').Value;
                          tCopia.FieldByName('Historico_Estoque').Value       := ReferenciasFiscais.FieldByName('Historico_Estoque').Value;
                       end;
                       tCopia.FieldByName('Conta_TotalNota_D').Value       := ReferenciasFiscais.FieldByName('Conta_TotalNota_D').Value;
                       tCopia.FieldByName('Conta_TotalNota_C').Value       := ReferenciasFiscais.FieldByName('Conta_TotalNota_C').Value;
                       tCopia.FieldByName('Historico_TotalNota').Value     := ReferenciasFiscais.FieldByName('Historico_TotalNota').Value;
                tCopia.Post;
                tCopia.Next;
          end;
          ReferenciasFiscais.Refresh;
     end;
end;

procedure TConfig_TipoNotaTerceiros.bDuplicarClick(Sender: TObject);
Var
    i: Integer;
begin
     if MessageDlg('Deseja realmente duplicar esta Referência Fiscal ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        Screen.Cursor := crSQLWait;

        with Dados do begin
             tCopia.SQL.Clear;
             tCopia.SQL.Add('SELECT * FROM ReferenciasFiscais WHERE(Codigo = :pCodigo)');
             tCopia.ParamByName('pCodigo').AsInteger := ReferenciasFiscaisCodigo.Value;
             tCopia.Open;

             ReferenciasFiscais.Append;
                                for i := 0 to (ReferenciasFiscais.FieldCount -1) do begin
                                    ReferenciasFiscais.Fields[i].Value := tCopia.FieldByName(ReferenciasFiscais.Fields[i].FieldName).Value;
                                end;

                                tCodigo.SQL.Clear;
                                tCodigo.SQL.Add('SELECT MAX(ISNULL(Codigo, 0))+1 AS Codigo FROM ReferenciasFiscais');
                                tCodigo.Open;

                                ReferenciasFiscaisCodigo.Value    := tCodigo.FieldByName('Codigo').AsInteger;
                                ReferenciasFiscaisAtivo.Value     := true;
                                ReferenciasFiscaisDescricao.Value := Trim(ReferenciasFiscaisDescricao.Value) + ' (CÓPIA)';
             ReferenciasFiscais.Post;
             ReferenciasFiscais.Refresh;
             ReferenciasFiscais.Locate('Codigo', tCodigo.FieldByName('Codigo').AsInteger+1, [loCaseInsensitive]);
             PageControl1.ActivePageIndex := 0;
        end;

        Screen.Cursor := crDefault;
     End;
end;

procedure TConfig_TipoNotaTerceiros.bFiliaisClick(Sender: TObject);
begin
     Config_ReferenciaFiliais := TConfig_ReferenciaFiliais.Create(Self);
     Config_ReferenciaFiliais.Caption := Caption;
     Config_ReferenciaFiliais.ShowModal;
end;

procedure TConfig_TipoNotaTerceiros.BitBtn1Click(Sender: TObject);
begin
     With Dados do begin
          With ReferenciasFiscais do begin
               FieldByName('Sinal_BCIPI').Clear;
               FieldByName('Sinal_BCICMSOper').Clear;
               FieldByName('Sinal_BCICMSST').Clear;
               FieldByName('Sinal_BCFrete').Clear;
          End;
          cSinalBCIPIClick(Self);
     End;
end;



end.
