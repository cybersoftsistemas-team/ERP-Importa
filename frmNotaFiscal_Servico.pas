unit frmNotaFiscal_Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  RXCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, RXDBCtrl, Mask, Buttons, DB, DBAccess, MSAccess, Funcoes, ClipBrd, DateUtils, RxLookup, Math, Grids,
  DBGrids, RxCurrEdit, RxToolEdit, system.UITypes, MemDS;

type
  TNotaFiscal_Servico = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tProvisao: TMSQuery;
    tLancamentos: TMSQuery;
    IntegerField1: TIntegerField;
    tProvisaoNumero: TLargeintField;
    bXML: TButton;
    tExiste: TMSQuery;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Image6: TImage;
    Image5: TImage;
    Image4: TImage;
    Image3: TImage;
    Label4: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    cValorISS: TDBText;
    Label1: TLabel;
    cTotalImpostos: TLabel;
    Label5: TLabel;
    cTotalLiquido: TDBText;
    StaticText8: TStaticText;
    StaticText4: TStaticText;
    cFornecedor: TDBLookupComboBox;
    cNota: TDBEdit;
    cDataEmissao: TDBDateEdit;
    StaticText1: TStaticText;
    lNome: TStaticText;
    lNota: TStaticText;
    StaticText9: TStaticText;
    DBEdit12: TDBEdit;
    StaticText16: TStaticText;
    DBEdit13: TDBEdit;
    DBMemo1: TDBMemo;
    StaticText24: TStaticText;
    cValor: TDBEdit;
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
    cAliquota_Adicional01: TDBEdit;
    cAliquota_Adicional02: TDBEdit;
    cAliquota_Adicional03: TDBEdit;
    cAliquota_Adicional04: TDBEdit;
    cAliquota_Adicional05: TDBEdit;
    StaticText10: TStaticText;
    StaticText5: TStaticText;
    cProcesso: TDBLookupComboBox;
    cImposto06: TDBLookupComboBox;
    cValor_Adicional06: TDBEdit;
    cAliquota_Adicional06: TDBEdit;
    StaticText7: TStaticText;
    StaticText2: TStaticText;
    cCentroCusto: TDBLookupComboBox;
    lCentroCusto: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    StaticText3: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText6: TStaticText;
    DBEdit2: TDBEdit;
    bFiltrar: TSpeedButton;
    bLimpar: TSpeedButton;
    Panel3: TPanel;
    StaticText17: TStaticText;
    cFiltraNotaIni: TCurrencyEdit;
    StaticText27: TStaticText;
    cFiltraNotaFim: TCurrencyEdit;
    StaticText28: TStaticText;
    cFiltraEmiIni: TDateEdit;
    StaticText30: TStaticText;
    cFiltraEmiFim: TDateEdit;
    StaticText33: TStaticText;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    cFiltraForn: TRxDBLookupCombo;
    cFiltraRef: TRxDBLookupCombo;
    cFiltraNat: TRxDBLookupCombo;
    cFiltraProc: TEdit;
    StaticText12: TStaticText;
    cClass: TDBLookupComboBox;
    bItens: TButton;
    TabSheet3: TTabSheet;
    GradeItens: TRxDBGrid;
    tItem: TMSQuery;
    StaticText13: TStaticText;
    cDataEntrada: TDBDateEdit;
    bDuplicatas: TButton;
    cReferencia: TRxDBLookupCombo;
    bPesqFor: TSpeedButton;
    bPesqMod: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cImposto01Click(Sender: TObject);
    procedure cImposto02Click(Sender: TObject);
    procedure cImposto03Click(Sender: TObject);
    procedure cImposto04Click(Sender: TObject);
    procedure cImposto05Click(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SomaImpostos;
    procedure lNomeClick(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cImposto06Click(Sender: TObject);
    procedure cValorExit(Sender: TObject);
    procedure StaticText7Click(Sender: TObject);
    procedure cReferenciaExit(Sender: TObject);
    procedure cFornecedorExit(Sender: TObject);
    procedure bDuplicatasClick(Sender: TObject);
    procedure lCentroCustoClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure PegaAdicional;
    procedure VerBaixa;
    procedure bLimparClick(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
    procedure bItensClick(Sender: TObject);
    procedure cNotaChange(Sender: TObject);
    function  ChecaNota: Boolean;
    procedure bXMLClick(Sender: TObject);
    procedure bPesqForClick(Sender: TObject);
    procedure bPesqModClick(Sender: TObject);
    procedure cAliquota_Adicional01Change(Sender: TObject);
    procedure cAliquota_Adicional02Change(Sender: TObject);
    procedure cAliquota_Adicional03Change(Sender: TObject);
    procedure cAliquota_Adicional04Change(Sender: TObject);
    procedure cAliquota_Adicional05Change(Sender: TObject);
    procedure cAliquota_Adicional06Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     mTotalImpostos:Currency;
     mFUNDAP:Boolean;
     mIncentivo
    ,mNatAnt:string;
     mCodigos:Array[1..5] of String;
     mDataAnt:TDate;
     mFornAnt:integer;
  end;

var
  NotaFiscal_Servico: TNotaFiscal_Servico;

implementation

uses frmDMFiscal, frmDados, frmCadastro_Fornecedores,frmCadastro_Servicos,frmDMContab, frmModalidadePgto_Parcelas, frmMenu_Principal,
     frmCadastro_CentroCusto, frmConfig_TipoNotaTerceiros, frmNotaFiscal_ServicoItens, frmNotaFiscal_ServicoXML, frmPesquisaGerais;

{$R *.dfm}

procedure TNotaFiscal_Servico.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     With Dados, dmFiscal, dmContab do Begin
          cFiltraNotaIni.Clear;
          cFiltraNotaFim.Clear;
          cFiltraEmiIni.Clear;
          cFiltraEmiFim.Clear;
          cFiltraRef.ClearValue;
          cFiltraForn.ClearValue;
          cFiltraNat.ClearValue;
          cFiltraProc.Clear;

          bFiltrarClick(Self);
          Navega.Controls[6].Enabled := NotasTerceiros.recordcount > 0;

          Servicos.SQL.Clear;
          Servicos.SQL.Add('SELECT * FROM Servicos WHERE (Ativo = 1) ORDER BY Descricao,Codigo');
          Servicos.Open;

          Impostos.SQL.Clear;
          Impostos.SQL.Add('SELECT * FROM Impostos ORDER BY Descricao');
          Impostos.Open;

          Fornecedores.SQL.Clear;
          Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
          Fornecedores.Open;
          
          Natureza.SQL.Clear;
          Natureza.SQL.Add('SELECT * FROM Natureza WHERE (Ativo = 1) AND (Servico = 1) ORDER BY Descricao_NF');
          Natureza.Open;

          ProcessosDOC.SQL.Clear;
          ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
          ProcessosDOC.Open;

          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) ');
          ClassificacaoFinanceira.Open;

          TiposDocumentos.SQL.Clear;
          TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos WHERE (Sintegra = 1)');
          TiposDocumentos.Open;

          with ReferenciasFiscais do begin 
               sql.Clear;
               sql.Add('select *');
               sql.Add('from ReferenciasFiscais');
               sql.Add('where Ativo = 1');
               sql.add('and Servico is not null');
               sql.add('and ((select Saida_Entrada from Cybersoft_Cadastros.dbo.Natureza where Codigo = Natureza_Dentro) = 0');
               sql.add('     or(select Saida_Entrada from Cybersoft_Cadastros.dbo.Natureza where Codigo = Natureza_Fora) = 0)');
               sql.Add('order by Descricao');
               open;
          end;

          Historicos.SQL.Clear;
          Historicos.SQL.Add('SELECT * FROM HistoricoPadrao');
          Historicos.Open;

          CentroCusto.SQL.Clear;
          CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Codigo');
          CentroCusto.Open;

          Empresas.SQL.Clear;
          Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
          Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
          Empresas.Open;
          Empresas.Locate('Codigo', Menu_Principal.mEmpresa, [loCaseInsensitive]);

          ModalidadesPgto.SQL.Clear;
          ModalidadesPgto.SQL.Add('SELECT * FROM ModalidadesPagamento ORDER BY Descricao');
          ModalidadesPgto.Open;

          ModelosDocumentos.SQL.Clear;
          ModelosDocumentos.SQL.Add('SELECT * FROM ModelosDocumentos ORDER BY Descricao');
          ModelosDocumentos.Open;

          ServicosClass.SQL.Clear;
          ServicosClass.SQL.Add('SELECT * FROM ServicosClass ORDER BY Descricao');
          ServicosClass.Open;
     End;
     
     bDuplicatas.Enabled := (dmFiscal.NotasTerceirosValor_TotalNota.Value > 0);
     SomaImpostos;
     Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Servico.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TNotaFiscal_Servico.bXMLClick(Sender: TObject);
begin
     NotaFiscal_ServicoXML := TNotaFiscal_ServicoXML.create(self);
     NotaFiscal_ServicoXML.caption := caption;
     NotaFiscal_ServicoXML.showmodal;
     bFiltrarClick(Self);
end;

procedure TNotaFiscal_Servico.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      mDataAnt := cDataEmissao.Date;
      mFornAnt := dmFiscal.NotasTerceirosFornecedor.AsInteger;
      mNatAnt  := dmFiscal.NotasTerceirosNatureza_Codigo.AsString;

      SomaImpostos;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         PageControl1.ActivePageIndex := 0;
         TabSheet1.Enabled := True;
         if Button = nbInsert then begin
            cNota.Enabled := true;
            cNota.SetFocus;
            dmFiscal.NotasTerceirosRetencao_ISS.value := false;
         end else begin
            cNota.Enabled := false;
            cDataEmissao.SetFocus;
         end;

         bItens.Enabled      := false;
         bPesquisa.Enabled   := false;
         bDuplicatas.Enabled := false;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         TabSheet1.Enabled := False;
         Navega.Controls[6].Enabled := dmFiscal.NotasTerceiros.recordcount > 0;
         bItens.Enabled      := true;
         bPesquisa.Enabled   := true;
         bDuplicatas.Enabled := true;
      End;

      Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Servico.cImposto01Click(Sender: TObject);
begin
       With Dados, dmFiscal do begin
            If (NotasTerceiros.State = dsInsert) or (NotasTerceiros.State = dsEdit) then begin
               Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional01.Value, [loCaseInsensitive]);
               NotasTerceirosAliquota_Adicional01.Value := ImpostosValor.Value;
               NotasTerceirosValor_Adicional01.Value    := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional01.Value)/100), -2);
               SomaImpostos;
            End;
       End;
end;

procedure TNotaFiscal_Servico.cImposto02Click(Sender: TObject);
begin
       With Dados, dmFiscal do begin
            If (NotasTerceiros.State = dsInsert) or (NotasTerceiros.State = dsEdit) then begin
               Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional02.Value, [loCaseInsensitive]);
               NotasTerceirosAliquota_Adicional02.Value := ImpostosValor.Value;
               NotasTerceirosValor_Adicional02.Value    := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional02.Value)/100), -2);
               SomaImpostos;
            End;
       End;
end;

procedure TNotaFiscal_Servico.cImposto03Click(Sender: TObject);
begin
       With Dados, dmFiscal do begin
            If (NotasTerceiros.State = dsInsert) or (NotasTerceiros.State = dsEdit) then begin
               Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional03.Value, [loCaseInsensitive]);
               NotasTerceirosAliquota_Adicional03.Value := ImpostosValor.Value;
               NotasTerceirosValor_Adicional03.Value    := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional03.Value)/100), -2);
               SomaImpostos;
            end;
       End;
end;

procedure TNotaFiscal_Servico.cImposto04Click(Sender: TObject);
begin
       With Dados, dmFiscal do begin
            If (NotasTerceiros.State = dsInsert) or (NotasTerceiros.State = dsEdit) then begin
               Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional04.Value, [loCaseInsensitive]);
               NotasTerceirosAliquota_Adicional04.Value := ImpostosValor.Value;
               NotasTerceirosValor_Adicional04.Value    := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional04.Value)/100), -2);
               SomaImpostos;
            End;
       End;
end;

procedure TNotaFiscal_Servico.cImposto05Click(Sender: TObject);
begin
       With Dados, dmFiscal do begin
            If (NotasTerceiros.State = dsInsert) or (NotasTerceiros.State = dsEdit) then begin
               Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional05.Value, [loCaseInsensitive]);
               NotasTerceirosAliquota_Adicional05.Value := ImpostosValor.Value;
               NotasTerceirosValor_Adicional05.Value    := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional05.Value)/100), -2);
               SomaImpostos;
            End;
       End;
end;

procedure TNotaFiscal_Servico.cImposto06Click(Sender: TObject);
begin
       With Dados, dmFiscal do begin
            If (NotasTerceiros.State = dsInsert) or (NotasTerceiros.State = dsEdit) then begin
               Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional06.Value, [loCaseInsensitive]);
               NotasTerceirosAliquota_Adicional06.Value := ImpostosValor.Value;
               NotasTerceirosValor_Adicional06.Value    := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional06.Value)/100), -2);
               SomaImpostos;
            End;
       End;
end;

procedure TNotaFiscal_Servico.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
   mDeletaAdicional : String;
begin
      Navega.SetFocus;
      With Dados, dmFiscal, dmContab do begin
           if (button = nbFirst) or (button = nbNext) or (button = nblast) or (button = nbPrior) then begin
              if ChecaNota then abort;
           end;
           
           // Verifica se o período fiscal esta bloqueado.
           If (Button = nbEdit) or (Button = nbDelete) or (Button = nbPost) then begin
              tExiste.SQL.Clear;
              tExiste.SQL.Add('SELECT COUNT(*) AS Qtde FROM FechamentoFiscal WHERE Ano = :pAno AND Mes = :pMes AND Fechado = 1');
              tExiste.ParamByName('pAno').AsInteger := YearOf(NotasTerceirosData_Emissao.Value);
              tExiste.ParamByName('pMes').AsInteger := MonthOf(NotasTerceirosData_Emissao.Value);
              tExiste.Open;
              If tExiste.FieldByName('Qtde').AsInteger > 0 then begin
                 If (Button = nbEdit) then
                    MessageDlg('Nota Fiscal não pode ser alterada!'+#13+#13+'Nota Fiscal esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                 If (Button = nbDelete) then
                    MessageDlg('Nota Fiscal não pode ser excluída!'+#13+#13+'Nota Fiscal esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                 If (Button = nbPost) then begin
                    MessageDlg('Data de Entrada da nota fiscal esta dentro de um período bloqueado!', mtError, [mbOK], 0);
                    cDataEmissao.SetFocus;
                 End;
                 Abort;
              End;

              // Verifica se existe lançamento financeiro baixado da nota fiscal.
              if NotasTerceiros.State <> dsInsert then begin
                 VerBaixa;
                 if tExiste.RecordCount > 0 then begin
                    MessageDlg('Esta nota fiscal não pode ser excluída/Alterada, pois existe lançamento financeiro baixado'+#13+#13+
                               'Estorne primeiro a baixa para poder excluir/Alterar esta nota Fiscal.'+#13+#13+
                               'Título: '+ tExiste.FieldByName('Titulo').AsString + '   Vencimento: '+ tExiste.FieldByName('Vencimento').AsString, mtConfirmation, [mbOK], 0);
                    Abort;
                 end;
              end;
           End;

           if Button = nbPost then begin
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
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a data de entrada do documento.', mtError, [mbOK], 0);
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
              If (NotasTerceirosValor_TotalNota.Value <= 0) then begin
                 MessageDlg('Erro de valor!'+#13+#13+'O valor total do documento não pode ser "Negativo" nem igual a "0".', mtError, [mbOK], 0);
                 cValor.SetFocus;
                 Abort;
              End;
              If Trim(ReferenciasFiscaisServico.Value) = '' then begin
                 MessageDlg('Erro na referência fiscal!'+#13+#13+'Deve ser informado o "Serviço" na "Referência Fiscal" informada.', mtError, [mbOK], 0);
                 cReferencia.SetFocus;
                 Abort;
              End;

              // Verifica se o total informado bate com o total dos itens.
              tExiste.SQL.Clear;
              tExiste.SQL.Add('SELECT SUM(Valor_Liquido) AS Total FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn');
              tExiste.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
              tExiste.ParamByName('pData').AsDate    := mDataAnt;
              tExiste.ParamByName('pForn').AsInteger := mFornAnt;
              tExiste.Open;

              if NotasTerceiros.State <> dsInsert then begin
                 if tExiste.FieldByName('Total').Value <> NotasTerceirosValor_TotalNota.Value then begin
                    MessageDlg('Atenção!'+#13+#13+'Valor total dos itens não bate com o total informado na capa na nota fiscal!', mtInformation, [mbOK], 0);
                 end;
              end;
              // Verifica o último período contabil encerrado.
              If NotasTerceirosData_Emissao.Value <= EmpresasUltimo_Encerramento.Value then begin
                 MessageDlg('Lançamento inválido!'+#13+#13+'Data da entrada da nota fiscal é maior que o último período contabil encerrado.'+#13+#13+'O último período encerrado foi '+EmpresasUltimo_Encerramento.AsString, mtError, [mbOK], 0);
                 cDataEmissao.SetFocus;
                 Abort;
              End;
              // Verifica se já existe nota fiscal lançada com o mesmo número.
              If NotasTerceiros.State = dsInsert then begin
                 tExiste.SQL.Clear;
                 tExiste.SQL.Add('SELECT * FROM NotasTerceiros WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pFornecedor');
                 tExiste.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
                 tExiste.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.AsDateTime;
                 tExiste.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 tExiste.Open;

                 If tExiste.RecordCount > 0 then begin
                    MessageDlg('Nota Fiscal já cadastrada!'+#13+#13+'Já exite uma nota com esse número e data deste fornecedor cadastrada.', mtError, [mbOK], 0);
                    cNota.SetFocus;
                    Abort;
                 End;
              End;

              // Atualiza as datas dos itens.
              If NotasTerceiros.State = dsEdit then begin
                 tExiste.SQL.Clear;
                 tExiste.SQL.Add('UPDATE NotasTerceirosItens Set Data_Emissao      = :pDataEmi');
                 tExiste.SQL.Add('                              ,Data_Entrada      = :pDataEnt');
                 tExiste.SQL.Add('                              ,Fornecedor        = :pFornecedor');
                 tExiste.SQL.Add('                              ,Natureza_Codigo   = :pNat');
                 tExiste.SQL.Add('                              ,Referencia_Fiscal = :pRef');
                 tExiste.SQL.Add('                              ,Processo          = :pProc');
                 tExiste.SQL.Add('WHERE Nota            = :pNota');
                 tExiste.SQL.Add('AND   Data_Emissao    = :pDataAnt');
                 tExiste.SQL.Add('AND   Fornecedor      = :pFornAnt');
                 tExiste.SQL.Add('AND   Natureza_Codigo = :pNatAnt');
                 tExiste.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
                 tExiste.ParamByName('pDataAnt').AsDate       := mDataAnt;
                 tExiste.ParamByName('pFornAnt').AsInteger    := mFornAnt;
                 tExiste.ParamByName('pNatAnt').Asstring      := mNatAnt;
                 tExiste.ParamByName('pDataEmi').AsDate       := NotasTerceirosData_Emissao.AsDateTime;
                 tExiste.ParamByName('pDataEnt').AsDate       := NotasTerceirosData_Entrada.AsDateTime;
                 tExiste.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 tExiste.ParamByName('pNat').Asstring         := NotasTerceirosNatureza_Codigo.AsString;
                 tExiste.ParamByName('pRef').Asinteger        := NotasTerceirosReferencia_Fiscal.asinteger;
                 tExiste.ParamByName('pProc').Asstring        := NotasTerceirosProcesso.AsString;
                 tExiste.Execute;
              end;
              NotasTerceirosServico.Value := ReferenciasFiscaisServico.Value;
           end;

           If NotasTerceirosProcesso.Value <> '' then begin
              If ProcessosDOC.Locate('Processo', NotasTerceirosProcesso.Value , [loCaseInsensitive]) = False then begin
                 mFUNDAP    := False;
                 mIncentivo := 'OUTROS';
              end else begin
                 mIncentivo := ProcessosDOCIncentivo_Fiscal.Value;
              End;
           end else begin
              mFUNDAP    := False;
              mIncentivo := 'OUTROS';
           End;

           If Button = nbDelete then begin
              // Verifica se existe lancamento financeiro baixado da nota fiscal.
              {
              VerBaixa;

              If tExiste.RecordCount > 0 then begin
                 MessageDlg('Esta nota fiscal não pode ser excluída, pois existe lançamento financeiro baixado'+#13+#13+
                            'Estorne primeiro a baixa para poder excluir esta nota Fiscal.'+#13+#13+
                            'Título: '+ tExiste.FieldByName('Titulo').AsString + '   Vencimento: '+ tExiste.FieldByName('Vencimento').AsString, mtConfirmation, [mbOK], 0);
                 Abort;
              End;
              }
              NotasTerceirosItens.SQL.Clear;
              NotasTerceirosItens.SQL.Add('DELETE FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
              NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
              NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.AsDateTime;
              NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
              NotasTerceirosItens.Execute;
              NotasTerceirosItens.SQL.Clear;
              NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE(Nota = :pNota) AND (Data_Emissao = :pData) AND (Fornecedor = :pFornecedor)');
              NotasTerceirosItens.ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
              NotasTerceirosItens.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.AsDateTime;
              NotasTerceirosItens.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;

              // Apaga os lançamentos do financeiro e recria novamente.
              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE (Data_Documento = :pData) AND (Fornecedor = :pFornecedor) AND (Fiscal = :pFiscal)' );
              PagarReceber.ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
              PagarReceber.ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
              PagarReceber.ParamByName('pFiscal').AsInteger     := NotasTerceirosNota.Value;
              PagarReceber.Execute;

              // Deleta os valores adicionais "Impostos".
              mDeletaAdicional := ' AND Orgao IN('+QuotedStr(ImpostosOrgao.AsString);
              If Trim(NotasTerceirosCodigo_Adicional01.Value) <> '' then begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional01.Value, [loCaseInsensitive]);
                 mDeletaAdicional :=  mDeletaAdicional + QuotedStr(ImpostosOrgao.AsString);
              End;
              If Trim(NotasTerceirosCodigo_Adicional02.Value) <> '' then begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional02.Value, [loCaseInsensitive]);
                 mDeletaAdicional := mDeletaAdicional + ', '+QuotedStr(ImpostosOrgao.AsString);
              End;
              If Trim(NotasTerceirosCodigo_Adicional03.Value) <> '' then begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional03.Value, [loCaseInsensitive]);
                 mDeletaAdicional := mDeletaAdicional + ', '+QuotedStr(ImpostosOrgao.AsString);
              End;
              If Trim(NotasTerceirosCodigo_Adicional04.Value) <> '' then begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional04.Value, [loCaseInsensitive]);
                 mDeletaAdicional := mDeletaAdicional + ', '+QuotedStr(ImpostosOrgao.AsString);
              End;
              If Trim(NotasTerceirosCodigo_Adicional05.Value) <> '' then begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional05.Value, [loCaseInsensitive]);
                 mDeletaAdicional := mDeletaAdicional + ', '+QuotedStr(ImpostosOrgao.AsString);
              End;
              If Trim(NotasTerceirosCodigo_Adicional06.Value) <> '' then begin
                 Impostos.Locate('Codigo', NotasTerceirosCodigo_Adicional06.Value, [loCaseInsensitive]);
                 mDeletaAdicional := mDeletaAdicional + ', '+QuotedStr(ImpostosOrgao.AsString);
              End;

              mDeletaAdicional := mDeletaAdicional + ')';

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('DELETE FROM PagarReceber WHERE (Data_Documento = :pData) AND (Fiscal = :pFiscal)'+mDeletaAdicional );
              PagarReceber.ParamByName('pData').AsDate      := NotasTerceirosData_Emissao.Value;
              PagarReceber.ParamByName('pFiscal').AsInteger := NotasTerceirosNota.Value;
              //PagarReceber.SQL.SaveToFile('c:\temp\NF_ServicoTomados_Delete.sql');
              PagarReceber.Execute;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Data_Documento = :pData)' );
              PagarReceber.ParamByName('pData').AsDate := NotasTerceirosData_Emissao.Value;
              PagarReceber.Open;
              {
              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('DELETE FROM Lancamentos WHERE Data = :pData AND Numero IN(:pNota, :pAdic1, :pAdic2, :pAdic3, :pAdic4, :pAdic5, :pAdic6)');
              Lancamentos.ParamByName('pData').AsDate     := NotasTerceirosData_Entrada.Value;
              Lancamentos.ParamByName('pNota').AsInteger  := NotasTerceirosLancamento_Nota.Value;
              Lancamentos.ParamByName('pAdic1').AsInteger := NotasTerceirosLancamento_Adicional01.Value;
              Lancamentos.ParamByName('pAdic2').AsInteger := NotasTerceirosLancamento_Adicional02.Value;
              Lancamentos.ParamByName('pAdic3').AsInteger := NotasTerceirosLancamento_Adicional03.Value;
              Lancamentos.ParamByName('pAdic4').AsInteger := NotasTerceirosLancamento_Adicional04.Value;
              Lancamentos.ParamByName('pAdic5').AsInteger := NotasTerceirosLancamento_Adicional05.Value;
              Lancamentos.ParamByName('pAdic6').AsInteger := NotasTerceirosLancamento_Adicional06.Value;
              Lancamentos.Execute;

              Lancamentos.SQL.Clear;
              Lancamentos.SQL.Add('SELECT * FROM Lancamentos WHERE (Data = :pData)');
              Lancamentos.ParamByName('pData').AsDate := NotasTerceirosData_Entrada.Value;
              Lancamentos.Open;
              }
           End;

           If Button = nbPost then begin
              If (FornecedoresEstado.Value = EmpresasEstado.Value) then begin
                 NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Dentro.Value;
              end else begin
                 NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Fora.Value;
              end;
              NotasTerceirosClassificacao.Value      := ReferenciasFiscaisClassificacao_TotalNota.Value;
              NotasTerceirosTipo.Value               := ReferenciasFiscaisEspecie.Value;
              NotasTerceirosValor_TotalLiquido.Value := (NotasTerceirosValor_TotalNota.Value - mTotalImpostos);
              NotasTerceirosEstado.Value             := FornecedoresEstado.Value;
              NotasTerceirosFUNDAP.Value             := mFUNDAP;
              NotasTerceirosIncentivo_Fiscal.Value   := mIncentivo;
              NotasTerceirosValor_OutrasICMS.Value   := NotasTerceirosValor_TotalNota.Value;
              NotasTerceirosValor_OutrasIPI.Value    := NotasTerceirosValor_TotalNota.Value;
           End;
      End;
      bDuplicatas.Enabled := (dmFiscal.NotasTerceirosValor_TotalNota.Value > 0);
end;

procedure TNotaFiscal_Servico.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     with Dados, dmFiscal do Begin
          if not ChecaNota then begin;
             NotasTerceiros.Close;
             Servicos.Close;
             Impostos.Open;
             Fornecedores.Close;
             Natureza.Close;

             LimpaMemoria;
             NotaFiscal_Servico.Release;
             NotaFiscal_Servico := nil;
          end;
     End;
end;

procedure TNotaFiscal_Servico.SomaImpostos;
begin
     With dmFiscal do Begin
          // Limpando os campos dos valores adicionais.
          If (NotasTerceiros.State = dsInsert) or (NotasTerceiros.State = dsEdit) then begin
             If cImposto01.Text = '' then begin
                NotasTerceirosValor_Adicional01.Value    := 0;
                NotasTerceirosAliquota_Adicional01.Value := 0;
             End;
             If cImposto02.Text = '' then begin
                NotasTerceirosValor_Adicional02.Value    := 0;
                NotasTerceirosAliquota_Adicional02.Value := 0;
             End;
             If cImposto03.Text = '' then begin
                NotasTerceirosValor_Adicional03.Value    := 0;
                NotasTerceirosAliquota_Adicional03.Value := 0;
             End;
             If cImposto04.Text = '' then begin
                NotasTerceirosValor_Adicional04.Value    := 0;
                NotasTerceirosAliquota_Adicional04.Value := 0;
             End;
             If cImposto05.Text = '' then begin
                NotasTerceirosValor_Adicional05.Value    := 0;
                NotasTerceirosAliquota_Adicional05.Value := 0;
             End;
             If cImposto06.Text = '' then begin
                NotasTerceirosValor_Adicional06.Value    := 0;
                NotasTerceirosAliquota_Adicional06.Value := 0;
             End;
          End;

          mTotalImpostos := NotasTerceirosValor_Adicional01.Value+NotasTerceirosValor_Adicional02.Value+
                            NotasTerceirosValor_Adicional03.Value+NotasTerceirosValor_Adicional04.Value+
                            NotasTerceirosValor_Adicional05.Value+NotasTerceirosValor_Adicional06.Value;
          cTotalImpostos.Caption := FormatFloat('###,###,###,##0.00', mTotalImpostos);
          
          If (NotasTerceiros.State = dsEdit) or (NotasTerceiros.State = dsInsert) then begin
             NotasTerceirosValor_TotalLiquido.Value := dmFiscal.NotasTerceirosValor_TotalNota.Value - mTotalImpostos;
             NotasTerceirosValor_ISS.Value          := Percentual(NotasTerceirosValor_TotalNota.Value, NotasTerceirosAliquota_ISS.Value);
          End;
     End;
end;

procedure TNotaFiscal_Servico.lNomeClick(Sender: TObject);
begin
     Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
     Cadastro_Fornecedores.Caption := Caption;
     Cadastro_Fornecedores.ShowModal;
     Dados.Fornecedores.Open;
     dmFiscal.NotasTerceirosFornecedor.AsString := Clipboard.AsText;
end;

procedure TNotaFiscal_Servico.StaticText3Click(Sender: TObject);
begin
     Cadastro_Servicos := TCadastro_Servicos.Create(Self);
     Cadastro_Servicos.Caption := Caption;
     Cadastro_Servicos.ShowModal;
     With Dados do Begin
          Servicos.SQL.Clear;
          Servicos.SQL.Add('SELECT * FROM Servicos WHERE (Ativo = 1) ORDER BY Descricao,Codigo');
          Servicos.Open;
          Servicos.Open;
     End;
end;

procedure TNotaFiscal_Servico.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image4.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image5.Picture.LoadFromFile('fundo_barra.bmp');
      If FileExists('fundo_barra.bmp') then Image6.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TNotaFiscal_Servico.cValorExit(Sender: TObject);
Var
    i: Integer;
begin
      With dmFiscal, Dados do begin
           mCodigos[1] := '';
           mCodigos[2] := '';
           mCodigos[3] := '';
           mCodigos[4] := '';
           mCodigos[5] := '';
           i           := 1;

           // Pega o PIS a recolher da tabela de serviços.
           Servicos.Locate('Codigo', ReferenciasFiscaisServico.AsString, [loCaseInsensitive]);
           if (not FornecedoresMEI.AsBoolean) and (not FornecedoresSimples.AsBoolean) then begin
              If NotasTerceirosValor_TotalNota.AsCurrency > ServicosLimite_PIS.Value then begin
                 mCodigos[i] := ServicosPIS_Recolher.Value;
                 Inc(i);
              End;

              // Pega a COFINS a recolher da tabela de serviços.
              If NotasTerceirosValor_TotalNota.AsCurrency > ServicosLimite_COFINS.Value then begin
                 mCodigos[i] := ServicosCOFINS_Recolher.Value;
                 Inc(i);
              End;

              // Pega o IR a recolher da tabela de serviços.
              If NotasTerceirosValor_TotalNota.AsCurrency > ServicosLimite_IR.Value then begin
                 mCodigos[i] := ServicosIR_Recolher.Value;
                 Inc(i);
              End;

              // Pega a CSLL a recolher da tabela de serviços.
              If NotasTerceirosValor_TotalNota.AsCurrency > ServicosLimite_CSLL.Value then begin
                 mCodigos[i] := ServicosCSLL_Recolher.Value;
                 Inc(i);
              End;

              // Pega o INSS a recolher da tabela de serviços.
              If NotasTerceirosValor_TotalNota.AsCurrency > ServicosLimite_INSS.Value then begin
                 mCodigos[i] := ServicosINSS_Recolher.Value;
              End;
              PegaAdicional;
           end;
      End;
      SomaImpostos;
end;

procedure TNotaFiscal_Servico.StaticText7Click(Sender: TObject);
begin
      Config_TipoNotaTerceiros := TConfig_TipoNotaTerceiros.Create(Self);
      Config_TipoNotaTerceiros.Caption := Caption;
      Config_TipoNotaTerceiros.ShowModal;
      Dados.ReferenciasFiscais.Open;
      dmFiscal.NotasTerceirosReferencia_Fiscal.AsInteger := StrtoInt(Clipboard.AsText);
end;

procedure TNotaFiscal_Servico.cReferenciaExit(Sender: TObject);
begin
     With Dados, dmFiscal do begin
          If (NotasTerceiros.State = dsInsert) or (NotasTerceiros.State = dsEdit) then begin
             NotasTerceirosServico.Value := ReferenciasFiscaisServico.Value;
             ClassificacaoFinanceira.Locate('Codigo', ReferenciasFiscaisClassificacao_TotalNota.Value, [loCaseInsensitive]);
             Servicos.Locate('Codigo', ReferenciasFiscaisServico.Value, [loCaseInsensitive]);

             Impostos.Locate('Codigo', 'ISS', [loCaseInsensitive]);
             If NotasTerceirosAliquota_ISS.AsFloat = 0 then NotasTerceirosAliquota_ISS.Value := ImpostosValor.Value;

             If NotasTerceirosFornecedor.Value > 0 then begin
                If (FornecedoresEstado.Value = EmpresasEstado.Value) then begin
                   NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Dentro.Value;
                   Natureza.Locate('Codigo', ReferenciasFiscaisNatureza_Dentro.Value, [loCaseInsensitive]);
                end else begin
                   NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Fora.Value;
                   Natureza.Locate('Codigo', ReferenciasFiscaisNatureza_Fora.Value, [loCaseInsensitive]);
                end;
             end;
          end;
     end;
end;

procedure TNotaFiscal_Servico.cAliquota_Adicional01Change(Sender: TObject);
begin
     with dmFiscal do begin
          if NotasTerceiros.State in[dsEdit, dsInsert] then begin
             NotasTerceirosValor_Adicional01.Value := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional01.Value)/100), -2);
            SomaImpostos;
          end;
     end;
end;

procedure TNotaFiscal_Servico.cAliquota_Adicional02Change(Sender: TObject);
begin
     with dmFiscal do begin
          if NotasTerceiros.State in[dsEdit, dsInsert] then begin
             NotasTerceirosValor_Adicional02.Value := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional02.Value)/100), -2);
             SomaImpostos;
          end;
     end;
end;

procedure TNotaFiscal_Servico.cAliquota_Adicional03Change(Sender: TObject);
begin
     with dmFiscal do begin
          if NotasTerceiros.State in[dsEdit, dsInsert] then begin
             NotasTerceirosValor_Adicional03.Value := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional03.Value)/100), -2);
             SomaImpostos;
          end;
     end;
end;

procedure TNotaFiscal_Servico.cAliquota_Adicional04Change(Sender: TObject);
begin
     with dmFiscal do begin
          if NotasTerceiros.State in[dsEdit, dsInsert] then begin
             NotasTerceirosValor_Adicional04.Value := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional04.Value)/100), -2);
             SomaImpostos;
          end;
     end;
end;

procedure TNotaFiscal_Servico.cAliquota_Adicional05Change(Sender: TObject);
begin
     with dmFiscal do begin
          if NotasTerceiros.State in[dsEdit, dsInsert] then begin
             NotasTerceirosValor_Adicional05.Value := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional05.Value)/100), -2);
             SomaImpostos;
          end;
     end;
end;

procedure TNotaFiscal_Servico.cAliquota_Adicional06Change(Sender: TObject);
begin
     with dmFiscal do begin
          if NotasTerceiros.State in[dsEdit, dsInsert] then begin
             NotasTerceirosValor_Adicional06.Value := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceirosAliquota_Adicional06.Value)/100), -2);
             SomaImpostos;
          end;
     end;
end;

procedure TNotaFiscal_Servico.cFornecedorExit(Sender: TObject);
begin
     With Dados, dmFiscal do begin
          If (NotasTerceiros.State = dsInsert) or (NotasTerceiros.State = dsEdit) then begin
             If NotasTerceirosFornecedor.Value > 0 then begin
                If (FornecedoresEstado.Value = EmpresasEstado.Value) then begin
                   NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Dentro.Value;
                   Natureza.Locate('Codigo', ReferenciasFiscaisNatureza_Dentro.Value, [loCaseInsensitive]);
                end else begin
                   NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Fora.Value;
                   Natureza.Locate('Codigo', ReferenciasFiscaisNatureza_Fora.Value, [loCaseInsensitive]);
                end;
             end;
          end;
     end;
end;

procedure TNotaFiscal_Servico.bDuplicatasClick(Sender: TObject);
begin
      ModalidadePgto_Parcelas := TModalidadePgto_Parcelas.Create(Self);
      ModalidadePgto_Parcelas.mTipo   := 'P';
      ModalidadePgto_Parcelas.mTipoNF := 2;
      ModalidadePgto_Parcelas.ShowModal;
end;

procedure TNotaFiscal_Servico.lCentroCustoClick(Sender: TObject);
begin
      Cadastro_CentroCusto := TCadastro_CentroCusto.Create(Self);
      Cadastro_CentroCusto.Caption := Caption;
      Cadastro_CentroCusto.ShowModal;
      Dados.CentroCusto.Open;
      dmFiscal.NotasTerceirosCentro_Custo.AsString := Clipboard.AsText;
end;

procedure TNotaFiscal_Servico.bPesqForClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Fornecedores';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and isnull(Ativo, 0) = 1';
      PesquisaGerais.Showmodal;
      dmFiscal.NotasTerceirosFornecedor.Value := strtoint(Clipboard.AsText);
end;

procedure TNotaFiscal_Servico.bPesqModClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ModelosDocumentos';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Dados';
      PesquisaGerais.Showmodal;
      dmFiscal.NotasTerceirosModelo.Value := Clipboard.AsText;
end;

procedure TNotaFiscal_Servico.bPesquisaClick(Sender: TObject);
Var
    mPesquisa: String;
begin
      mPesquisa := InputBox('Pesquisa', 'Nº da Nota:', '');
      if dmFiscal.NotasTerceiros.Locate('Nota', mPesquisa, [loCaseInsensitive]) = False then begin
         ShowMessage('Nenhuma nota fiscal encontrada com o número informado!');
      end else begin
         SomaImpostos;
      end;
end;

procedure TNotaFiscal_Servico.PegaAdicional;
Var
    i: Integer;
begin
       With Dados, dmFiscal do begin
            For i := 1 to 5 do begin
                If Trim(mCodigos[i]) <> '' then begin
                   Impostos.Locate('Codigo', mCodigos[i], [loCaseInsensitive]);
                   NotasTerceiros.FieldByName('Codigo_Adicional'+PoeZero(2,i)).Value   := mCodigos[i];
                   NotasTerceiros.FieldByname('Aliquota_Adicional'+PoeZero(2,i)).Value := ImpostosValor.AsFloat;
                   NotasTerceiros.FieldByName('Valor_Adicional'+PoeZero(2,i)).Value    := Roundto(NotasTerceirosValor_TotalNota.Value * ((NotasTerceiros.FieldByName('Aliquota_Adicional'+PoeZero(2,i)).Value)/100), -2);
                end else begin
                   NotasTerceiros.FieldByName('Codigo_Adicional'+PoeZero(2,i)).Value   := null;
                   NotasTerceiros.FieldByname('Aliquota_Adicional'+PoeZero(2,i)).Value := null;
                   NotasTerceiros.FieldByName('Valor_Adicional'+PoeZero(2,i)).Value    := null;
                End;
            End;
       End;
end;

procedure TNotaFiscal_Servico.VerBaixa;
begin
     Screen.Cursor := crSQLWait;
     
     tExiste.SQL.Clear;
     tExiste.SQL.Add('SELECT (SELECT Numero          FROM PagarReceber WHERE(Data_Documento = :pData) AND (Fornecedor = :pFornecedor) AND (Fiscal = :pFiscal) ) AS Titulo,');
     tExiste.SQL.Add('       (SELECT Data_Vencimento FROM PagarReceber WHERE(Data_Documento = :pData) AND (Fornecedor = :pFornecedor) AND (Fiscal = :pFiscal) ) AS Vencimento');
     tExiste.SQL.Add('FROM   PagarReceberBaixas');
     tExiste.SQL.Add('WHERE  Numero IN( SELECT Numero FROM PagarReceber WHERE(Data_Documento = :pData) AND (Fornecedor = :pFornecedor) AND (Fiscal = :pFiscal) )');
     tExiste.ParamByName('pData').AsDate          := dmFiscal.NotasTerceirosData_Emissao.Value;
     tExiste.ParamByName('pFornecedor').AsInteger := dmFiscal.NotasTerceirosFornecedor.Value;
     tExiste.ParamByName('pFiscal').Asstring      := dmFiscal.NotasTerceirosNota.asstring;
     //tExiste.SQL.SaveToFile('c:\temp\Existe.sql');
     tExiste.Open;

     Screen.Cursor := crDefault;
end;

procedure TNotaFiscal_Servico.bLimparClick(Sender: TObject);
begin
      cFiltraNotaIni.Clear;
      cFiltraNotaFim.Clear;
      cFiltraEmiIni.Clear;
      cFiltraEmiFim.Clear;
      cFiltraRef.ClearValue;
      cFiltraForn.ClearValue;
      cFiltraNat.ClearValue;
      cFiltraProc.Clear;

      bFiltrarClick(Self);
end;

procedure TNotaFiscal_Servico.bFiltrarClick(Sender: TObject);
begin
      with dmFiscal do begin
           with NotasTerceiros do begin
                close;
                sql.Clear;
                sql.Add('select * from NotasTerceiros where Servico is not null');
                Open;

                // Numero da nota fiscal.
                If (cFiltraNotaIni.AsInteger > 0) and (cFiltraNotaFim.AsInteger = 0) then begin
                   SQl.Add('  AND (Nota = :pNotaIni)');
                   ParamByName('pNotaIni').AsInteger := cFiltraNotaIni.AsInteger;
                End;
                If (cFiltraNotaIni.AsInteger = 0) and (cFiltraNotaFim.AsInteger > 0) then begin
                   SQl.Add('  AND (Nota = :pNotaFim)');
                   ParamByName('pNotaFim').AsInteger := cFiltraNotaFim.AsInteger;
                End;
                If (cFiltraNotaIni.AsInteger > 0) and (cFiltraNotaFim.AsInteger > 0) then begin
                   SQl.Add('  AND (Nota BETWEEN :pNotaIni AND :pNotaFim)');
                   ParamByName('pNotaIni').AsInteger := cFiltraNotaIni.AsInteger;
                   ParamByName('pNotaFim').AsInteger := cFiltraNotaFim.AsInteger;
                End;
                // Data de emissão da nota fiscal.
                If (DataLimpa(cFiltraEmiIni.Text) = false) and (DataLimpa(cFiltraEmiFim.Text) = true) then begin
                   SQl.Add('  AND (Data_Emissao = :pEmiIni)');
                   ParamByName('pEmiIni').AsDate := cFiltraEmiIni.Date;
                End;
                If (DataLimpa(cFiltraEmiIni.Text) = true) and (DataLimpa(cFiltraEmiFim.Text) = false) then begin
                   SQl.Add('  AND (Data_Emissao = :pEmiFim)');
                   ParamByName('pEmiFim').AsDate := cFiltraEmiFim.Date;
                End;
                If (DataLimpa(cFiltraEmiIni.Text) = false) and (DataLimpa(cFiltraEmiFim.Text) = false) then begin
                   SQl.Add('  AND (Data_Emissao BETWEEN :pEmiIni AND :pEmiFim)');
                   ParamByName('pEmiIni').AsDate := cFiltraEmiIni.Date;
                   ParamByName('pEmiFim').AsDate := cFiltraEmiFim.Date;
                End;
                // Referência Fiscal.
                If Trim(cFiltraRef.Text) <> '' then begin
                   SQl.Add('  AND (Referencia_Fiscal = :pReferencia)');
                   ParamByName('pReferencia').AsInteger := cFiltraRef.KeyValue;
                End;
                // Fornecedor.
                If Trim(cFiltraForn.Text) <> '' then begin
                   SQl.Add('  AND (Fornecedor = :pFornecedor)');
                   ParamByName('pFornecedor').AsInteger := cFiltraForn.KeyValue;
                End;
                // Natureza da Operação.
                If Trim(cFiltraNat.Text) <> '' then begin
                   SQl.Add('  AND (Natureza_Codigo = :pNatureza)');
                   ParamByName('pNatureza').AsString := cFiltraNat.KeyValue;
                End;
                // Processo.
                If Trim(cFiltraProc.Text) <> '' then begin
                   SQl.Add('  AND (Processo = :pProcesso)');
                   ParamByName('pProcesso').AsString := cFiltraProc.Text;
                End;
                Open;
                TabSheet1.Caption := '&Dados da Nota Fiscal ['+ InttoStr(RecordCount)+']';
           end;
      end;
end;

procedure TNotaFiscal_Servico.bItensClick(Sender: TObject);
begin
      NotaFiscal_ServicoItens := TNotaFiscal_ServicoItens.Create(Self);
      NotaFiscal_ServicoItens.Caption := Caption;
      NotaFiscal_ServicoItens.ShowModal;
end;

procedure TNotaFiscal_Servico.cNotaChange(Sender: TObject);
begin
     With Dados, dmFiscal do begin
          NotasTerceirosItens.SQL.Clear;
          NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn');
          NotasTerceirosItens.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
          NotasTerceirosItens.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
          NotasTerceirosItens.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.Value;
          NotasTerceirosItens.Open;
     End;
end;

function TNotaFiscal_Servico.ChecaNota:Boolean;
begin
     result := false;
     with Dados, dmFiscal do Begin
          //Verifica se foram lançados itens para a nota fiscal, se não contem itens a nota sera excluída.
          with tItem do begin
               sql.Clear;
               sql.Add('select count(*) as Qtde, sum(Valor_Liquido) as Total from NotasTerceirosItens where(Nota = :pNota) and (Data_Emissao = :pData) and (Fornecedor = :pFornecedor)');
               ParamByName('pNota').AsInteger       := NotasTerceiros.FieldByName('Nota').AsInteger;
               ParamByName('pData').AsDate          := NotasTerceiros.FieldByName('Data_Emissao').AsDateTime;
               ParamByName('pFornecedor').AsInteger := NotasTerceiros.FieldByName('Fornecedor').AsInteger;
               Open;
          end;
          if (trim(cNota.Text) <> '') and (tItem.FieldByName('Qtde').AsInteger = 0) then begin
             if MessageDlg('Atenção!'+#13+#13+'Não foram informados os itens do documento fiscal.'+#13+#13+'Se você sair sem informar os itens do documento, ele será excluído'+#13+#13+'Deseja realmente sair?', mtInformation, [mbYes, mbNo], 0) = mrYes then begin
                dmFiscal.NotasTerceiros.Delete;
             end;
             result := true;
          end;
          if not result then begin
             //if (trim(cNota.Text) <> '') and (tItem.FieldByName('Total').Value <> dmFiscal.NotasTerceirosValor_TotalLiquido.Value) then begin
             if (trim(cNota.Text) <> '') and (tItem.FieldByName('Total').Value <> dmFiscal.NotasTerceirosValor_TotalNota.Value) then begin
                result :=  true;
                MessageDlg('Valor total dos itens não bate com o total informado na capa na nota fiscal!', mtError, [mbOK], 0);
             end;
          end;
     end;
end;



end.
