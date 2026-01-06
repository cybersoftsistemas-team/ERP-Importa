unit frmCadastro_Fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Mask, DBCtrls, Vcl.ExtCtrls,
  FUNCOES, Vcl.ComCtrls, RXCtrls, RXDBCtrl, ClipBrd, RxLookup, RxDBComb,ShellApi, Buttons, System.UITypes,
  Grids, DBGrids, MemDS, System.JSON, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, Vcl.CheckLst;

type
  TCadastro_Fornecedores = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tCodigo: TMSQuery;
    tFornecedores: TMSQuery;
    tCodigoPlano: TMSQuery;
    tContaPlano: TMSQuery;
    bImportar: TButton;
    pPaginas: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    cNome: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    cBairro: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    cIE: TDBEdit;
    DBEdit21: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText3: TStaticText;
    StaticText14: TStaticText;
    cTipoProduto: TDBLookupComboBox;
    cEstado: TDBLookupComboBox;
    StaticText15: TStaticText;
    cCNPJ: TDBEdit;
    cNomeFantasia: TDBEdit;
    StaticText16: TStaticText;
    DBEdit2: TDBEdit;
    StaticText17: TStaticText;
    cIsento: TDBCheckBox;
    DBEdit3: TDBEdit;
    StaticText18: TStaticText;
    StaticText21: TStaticText;
    cCPF: TDBEdit;
    cMunicipio: TDBLookupComboBox;
    StaticText32: TStaticText;
    DBEdit16: TDBEdit;
    cRamoAtividade: TDBLookupComboBox;
    cPais: TRxDBLookupCombo;
    StaticText27: TStaticText;
    DBEdit15: TDBEdit;
    TabSheet3: TTabSheet;
    GradeClientes: TDBGrid;
    StaticText28: TStaticText;
    cPesquisa: TEdit;
    StaticText29: TStaticText;
    DBMemo1: TDBMemo;
    cAtivo: TDBCheckBox;
    bFiliais: TButton;
    TabSheet4: TTabSheet;
    Panel3: TPanel;
    cSituacao: TRadioGroup;
    StaticText33: TStaticText;
    cFiltroRamo: TDBLookupComboBox;
    StaticText34: TStaticText;
    bFiltrar: TSpeedButton;
    bLimpar: TSpeedButton;
    cFiltroEstado: TEdit;
    StaticText116: TStaticText;
    cIndicadorIE: TRxDBComboBox;
    StaticText115: TStaticText;
    DBEdit82: TDBEdit;
    TabSheet5: TTabSheet;
    cListaDOC: TListBox;
    bDocumento: TBitBtn;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    tPedidos: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    TabSheet6: TTabSheet;
    GroupBox2: TGroupBox;
    StaticText35: TStaticText;
    DBEdit19: TDBEdit;
    StaticText36: TStaticText;
    DBEdit22: TDBEdit;
    StaticText37: TStaticText;
    DBEdit23: TDBEdit;
    GroupBox3: TGroupBox;
    StaticText38: TStaticText;
    DBEdit24: TDBEdit;
    StaticText39: TStaticText;
    DBEdit25: TDBEdit;
    StaticText40: TStaticText;
    DBEdit26: TDBEdit;
    DBCheckBox23: TDBCheckBox;
    GroupBox4: TGroupBox;
    lComissao: TStaticText;
    cComissao: TDBEdit;
    lRegiao: TStaticText;
    cRegiao: TRxDBComboBox;
    lComissaoGerencia: TStaticText;
    cComissaoGerencia: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    TabSheet7: TTabSheet;
    StaticText22: TStaticText;
    DBEdit6: TDBEdit;
    StaticText23: TStaticText;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    StaticText24: TStaticText;
    StaticText41: TStaticText;
    DBEdit27: TDBEdit;
    StaticText42: TStaticText;
    DBEdit28: TDBEdit;
    cRepCodigo: TDBEdit;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    DBEdit18: TDBEdit;
    StaticText43: TStaticText;
    DBEdit29: TDBEdit;
    StaticText44: TStaticText;
    DBEdit30: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    SpeedButton1: TSpeedButton;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    RESTClient1: TRESTClient;
    bPlano: TButton;
    Panel6: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    StaticText142: TStaticText;
    DBEdit13: TDBEdit;
    StaticText143: TStaticText;
    DBEdit102: TDBEdit;
    StaticText144: TStaticText;
    DBEdit103: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox19: TDBLookupComboBox;
    DBLookupComboBox20: TDBLookupComboBox;
    StaticText25: TStaticText;
    cCodModal: TDBLookupComboBox;
    Panel4: TPanel;
    NavegaConta: TDBNavigator;
    Button1: TButton;
    GradeModal: TDBGrid;
    RxDBComboBox1: TRxDBComboBox;
    StaticText26: TStaticText;
    RxDBComboBox2: TRxDBComboBox;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    DBEdit14: TDBEdit;
    lEstadoEX: TStaticText;
    cEstadoEX: TDBEdit;
    DBEdit17: TDBEdit;
    StaticText47: TStaticText;
    DBEdit31: TDBEdit;
    StaticText48: TStaticText;
    DBCheckBox4: TDBCheckBox;
    DBMemo2: TDBMemo;
    DBEdit20: TDBEdit;
    StaticText49: TStaticText;
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure cCNPJExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cIsentoClick(Sender: TObject);
    procedure cIEExit(Sender: TObject);
    procedure cEstadoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cCPFExit(Sender: TObject);
    procedure lContaClick(Sender: TObject);
    procedure StaticText25Click(Sender: TObject);
    procedure StaticText26Click(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure cPaisChange(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure cRamoAtividadeExit(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure cIEKeyPress(Sender: TObject; var Key: Char);
    procedure bFiliaisClick(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bDocumentoClick(Sender: TObject);
    procedure cListaDOCDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure bPlanoClick(Sender: TObject);
    procedure NavegaContaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaContaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    //procedure AbreConta;
    //procedure SalvaConta(Campo: integer);
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
    mTransp   : Integer;
    mNFECodigo: Integer;
    mTabAberta: Boolean;
  end;

var
  Cadastro_Fornecedores: TCadastro_Fornecedores;

implementation

Uses frmDados, frmMenu_Principal, frmDMContab, frmCadastro_PlanoContas, frmDMFiscal, frmCadastro_FornecedoresFiliais, frmPesquisaGerais;

{$R *.dfm}

procedure TCadastro_Fornecedores.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TCadastro_Fornecedores.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
   i:Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to pPaginas.PageCount-1 do begin
             pPaginas.Pages[i].Enabled := true;
         End;
         TabSheet3.Enabled := false;
         TabSheet4.Enabled := false;

         pPaginas.ActivePageIndex := 0;
         bImportar.Enabled        := false;
         bFiliais.Enabled         := false;
         bPesquisa.Enabled        := false;
         bImportar.Enabled        := false;
         bPlano.Enabled           := false;
         TabSheet2.Enabled        := true;

         If button = nbInsert then begin
            Dados.FornecedoresIsento.Value        := false;
            Dados.FornecedoresAtivo.Value         := true;
            Dados.FornecedoresEnviar_Email.Value  := true;
            Dados.FornecedoresMEI.Value           := false;
            Dados.FornecedoresMicro_Empresa.Value := false;
            Dados.FornecedoresSimples.Value       := false;
            Dados.FornecedoresZona_Franca.Value   := false;
         End;

         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cNome.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         For i := 0 to pPaginas.PageCount-1 do begin
             pPaginas.Pages[i].Enabled := false
         End;
         pPaginas.Pages[5].Enabled := true;
         pPaginas.Pages[6].Enabled := true;

         bImportar.Enabled := true;
         bFiliais.Enabled  := true;
         bPesquisa.Enabled := true;
         bImportar.Enabled := true;
         bPlano.Enabled    := true;
         Panel2.Enabled    := False;
      End;
      With Dados, dmContab do begin
           Estados.Locate('Codigo', FornecedoresEstado.Value, [loCaseInsensitive]);

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;

           cComissao.Enabled         := Dados.RamoAtividadeComissionado.AsBoolean;
           cComissaoGerencia.Enabled := Dados.RamoAtividadeComissionado.AsBoolean;
           lComissao.Enabled         := Dados.RamoAtividadeComissionado.AsBoolean;
           lComissaoGerencia.Enabled := Dados.RamoAtividadeComissionado.AsBoolean;
           cRegiao.Enabled           := Dados.RamoAtividadeComissionado.AsBoolean;
           lRegiao.Enabled           := Dados.RamoAtividadeComissionado.AsBoolean;
      End;

      Screen.Cursor := crDefault;
end;

procedure TCadastro_Fornecedores.NavegaContaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      with Dados, dmContab do begin
           if Button = nbPost then begin
              if Trim(cCodModal.Text) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a modalidade.', mtError, [mbOK], 0);
                 cCodModal.SetFocus;
                 Abort;
              end;
              FornecedoresModalFornecedor.value := FornecedoresCodigo.value;
           end;
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente remover esta modalidade do fornecedor?', mtConfirmation, [mbYES, mbNO], 0) = mrno then
                 abort;
           end;
           if (Button = nbPost) and (FornecedoresModal.State = dsInsert) then begin
              with tCodigo do begin
                   sql.Clear;
                   sql.Add('select Count(*) as Qtde from FornecedoresModalidades where Fornecedor = :pFor and Codigo = :pCod');
                   ParamByName('pFor').AsInteger := FornecedoresCodigo.asinteger;
                   ParamByName('pCod').AsInteger := FornecedoresModal.FieldbyName('Codigo').asinteger;
                   Open;
                   if FieldByName('Qtde').asinteger > 0 then begin
                      MessageDlg('Modalidade ja informada!', mtError, [mbOK], 0);
                      cCodModal.SetFocus;
                      Abort;
                   end;
              end;
           end;
      end;
end;

procedure TCadastro_Fornecedores.NavegaContaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i: Integer;
begin
      NavegaConta.SetFocus;
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             NavegaConta.Controls[i].Enabled := False;
         end;

         Panel6.Enabled := true;
         Panel1.Enabled := false;
         bPlano.Enabled := false;
         cCodModal.SetFocus;
      end;
      // Cria as contas contabeis.
      {
      if (Button = nbPost) then Begin
         AbreConta;
      End;
      }
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Panel6.Enabled := false;
         Panel1.Enabled := true;
         bPlano.Enabled := true;
      end;
end;

procedure TCadastro_Fornecedores.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      pPaginas.ActivePageIndex := 0;

      With Dados, dmContab do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pCodigo)' );
           Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;

           If mTransp > 0     then Fornecedores.Locate('Codigo', mTransp, [loCaseInsensitive]);
           If mNFECodigo <> 0 then Fornecedores.Locate('Codigo', mNFECodigo, [loCaseInsensitive]);
           If mPesquisa <> '' then Fornecedores.Locate('Codigo', mPesquisa, [loCaseInsensitive]);

           Clientes.SQL.Clear;
           Clientes.SQL.Add('SELECT * FROM Clientes ORDER BY Nome');
           Clientes.Open;

           TipoProduto.SQL.Clear;
           TipoProduto.SQL.Add('SELECT * FROM TipoProduto ORDER BY Descricao');
           TipoProduto.Open;

           RamoAtividade.SQL.Clear;
           RamoAtividade.SQL.Add('SELECT * FROM RamoAtividade ORDER BY Descricao');
           RamoAtividade.Open;

           Paises.Open;
           Estados.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Sintetica <> 1) ORDER BY Descricao, Conta' );
           PlanoContas.Open;

           TiposProcesso.sql.Clear;
           TiposProcesso.sql.Add('select * from TiposProcesso order by Codigo' );
           TiposProcesso.Open;

           Configuracao.Open;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Fornecedores.cCNPJExit(Sender: TObject);
begin
      If (VerificaCNPJ(cCNPJ.Text) = False) and (Trim(cCNPJ.Text) <> '') then begin
         MessageDlg('Número de CNPJ inválido!', mtError, [mbok],0);
         cCNPJ.SetFocus;
         Abort;
      End;
end;

procedure TCadastro_Fornecedores.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
    i:INteger;
begin
      Navega.SetFocus;
      If (Button = nbPost)  then begin
         With Dados, dmContab do begin
              // Verificando os campos obrigatorios do cadastro do fornecedor.
              pPaginas.ActivePageIndex := 0;
              If Trim(FornecedoresNome.asstring) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o nome do fornecedor.', mtError, [mbOK], 0);
                 cNome.SetFocus;
                 Abort;
              End;
              If Trim(FornecedoresRamo_Atividade.AsString) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o ramo de atividade do Fornecedor.', mtError, [mbOK], 0);
                 cRamoAtividade.SetFocus;
                 Abort;
              End;
              If Trim(FornecedoresPais.AsString) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o país do fornecedor.', mtError, [mbOK], 0);
                 cPais.SetFocus;
                 Abort;
              End;
              If Trim(FornecedoresEstado.Asstring) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o estado do fornecedor.'+#13+#13+'Em caso de fornecedor do exterior informar "EXTERIOR".', mtError, [mbOK], 0);
                 cEstado.SetFocus;
                 Abort;
              End;
              If FornecedoresMunicipio_Codigo.Value = 0 then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o município do fornecedor.'+#13+#13+'Em caso de fornecedor do exterior informar "EXTERIOR".', mtError, [mbOK], 0);
                 cMunicipio.SetFocus;
                 Abort;
              End;
              If Trim(FornecedoresEstado.Asstring) <> 'EX' then begin
                 If (Trim(FornecedoresCNPJ.Asstring) = '') and (Trim(FornecedoresCPF.Asstring) = '') then begin
                    MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o CNPJ do fornecedor se pessoa jurídica ou o CPF se pessoa física.', mtError, [mbOK], 0);
                    cCNPJ.SetFocus;
                    Abort;
                 End;
                 If (Trim(FornecedoresCNPJ.Asstring) <> '') and (Trim(FornecedoresCPF.Asstring) <> '') then begin
                    MessageDlg('Erro de conteúdo!'+#13+#13+'É necessário informar apenas o CNPJ ou o CPF do Fornecedor.', mtError, [mbOK], 0);
                    cCNPJ.SetFocus;
                    Abort;
                 End;
                 If (Trim(FornecedoresInscricao_Estadual.Asstring) = '') and (FornecedoresIsento.Value = False) then begin
                    MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a Inscrição Estadual do Fornecedor ou informar se o Fornecedor é Isento.', mtError, [mbOK], 0);
                    cIE.SetFocus;
                    Abort;
                 End;
              End;
              If Trim(FornecedoresIndicador_IE.Asstring) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o indicador da Inscrição Estadual do Fornecedor.', mtError, [mbOK], 0);
                 cIndicadorIE.SetFocus;
                 Abort;
              End;
              // Verifica se ao menos uma modalidade esta informa para quem utiliza contabilidade.
              if (ConfiguracaoParametrizacao_Contabil.asboolean) and (FornecedoresAtivo.AsBoolean) then begin
                 with tFornecedores do begin
                      sql.clear;
                      sql.add('select count(*) as Qtde from FornecedoresModalidades where Fornecedor = :pFor');
                      paramByName('pFor').asinteger := FornecedoresCodigo.asinteger;
                      open;
                      if FieldByName('Qtde').asinteger = 0 then begin
                         MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar ao menos uma modalidade de importação do fornecedors.', mtError, [mbOK], 0);
                         pPaginas.ActivePageIndex := 3;
                         GradeModal.SetFocus;
                         Abort;
                      end;
                 end;
              end;
              // Verifica se o codigo do representante ja foi informado em outro cadastro.
              with tCodigo do begin
                   sql.clear;
                   sql.add('select Codigo, Nome from Fornecedores');
                   sql.Add('where Representante_Codigo = :pRep');
                   sql.Add('and Codigo <> :pCod');
                   sql.add('and isnull(Representante_Codigo, '''') <> '''' ');
                   paramByName('pRep').asstring  := FornecedoresRepresentante_Codigo.asstring;
                   paramByName('pCod').asinteger := FornecedoresCodigo.asinteger;
                   open;
                   if recordCount > 0 then begin
                      MessageDlg('Já existe outro cadastro com o código do representante informado.'+#13+#13+fieldbyname('Codigo').asstring+' -> '+fieldbyname('Nome').asstring, mtError, [mbOK], 0);
                      pPaginas.ActivePageIndex := 2;
                      cRepCodigo.SetFocus;
                      Abort;
                   end;
              end;

              if FornecedoresPais.Value = '1058' then FornecedoresMunicipio.Value := MunicipiosNome.Value;
              FornecedoresAlterado.Value  := Fornecedores.State = dsEdit;

              If (Fornecedores.State = dsInsert) then begin
                 // Verificando se já existe fornecedor de fora do pais com o mesmo nome cadastrado, pois não há o CNPJ.
                 If FornecedoresPais.Value <> '1058' then begin
                    tFornecedores.SQL.Clear;
                    tFornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE (Nome = :pNome)');
                    tFornecedores.ParamByName('pNome').AsString := FornecedoresNome.Asstring;
                    tFornecedores.Open;
                    If tFornecedores.RecordCount <> 0 then begin
                       MessageDlg('Erro de duplicidade!'+#13+#13+'Já existe um fornecedor de fora do país cadastrado com este nome.'+#13+#13+'Fornecedor: '+tFornecedores.FieldByName('Codigo').AsString +' - '+tFornecedores.FieldByName('Nome').Value, mtError, [mbOK], 0);
                       cNome.SetFocus;
                       Abort;
                    End;
                 End;

                 // Verificando se o CNPJ ou o CPF ja foi utilizado por outro registro, para evitar duplicidade de Fornecedores.
                 If Trim(FornecedoresCNPJ.Asstring) <> '' then begin
                    tFornecedores.SQL.Clear;
                    tFornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE (CNPJ = :pCNPJ)');
                    tFornecedores.ParamByName('pCNPJ').AsString := FornecedoresCNPJ.Asstring;
                    tFornecedores.Open;
                    If tFornecedores.RecordCount <> 0 then begin
                       MessageDlg('Erro de duplicidade!'+#13+#13+'Já existe um fornecedor cadastrado com este número de CNPJ.'+#13+#13+'Fornecedor: '+tFornecedores.FieldByName('Codigo').AsString +' - '+tFornecedores.FieldByName('Nome').Value, mtError, [mbOK], 0);
                       cCNPJ.SetFocus;
                       Abort;
                    End;
                 End else begin
                    If Trim(FornecedoresCPF.AsString) <> '' then begin
                       tFornecedores.SQL.Clear;
                       tFornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE (CPF = :pCPF)');
                       tFornecedores.ParamByName('pCPF').AsString := FornecedoresCPF.Asstring;
                       tFornecedores.Open;
                       If tFornecedores.RecordCount <> 0 then begin
                          MessageDlg('Erro de duplicidade!'+#13+#13+'Já existe um fornecedor cadastrado com este número de CPF.'+#13+#13+'Fornecedor: '+tFornecedores.FieldByName('Codigo').AsString +' - '+tFornecedores.FieldByName('Nome').Value, mtError, [mbOK], 0);
                          cCPF.SetFocus;
                          Abort;
                       End;
                    End;
                 End;

                 Screen.Cursor := crSQLWait;
                 tCodigo.sql.clear;
                 tCodigo.sql.add('SELECT isnull(MAX(Codigo), 0)+1 AS Codigo FROM Fornecedores');
                 tCodigo.Open;
                 FornecedoresCodigo.Value := tCodigo.FieldByName('Codigo').Value;
                 tCodigo.Close;
                 Screen.Cursor := crDefault;
              End;

              tPedidos.SQL.Clear;
              tPedidos.SQL.Add('UPDATE Pedidos SET Estado                   = :pEstado,');
              tPedidos.SQL.Add('                   Destinatario_Nome        = :pNome,');
              tPedidos.SQL.Add('                   Destinatario_CNPJ_CPF    = :pCNPJCPF,');
              tPedidos.SQL.Add('                   Destinatario_Juridica    = :pJuridica,');
              tPedidos.SQL.Add('                   Destinatario_Rua         = :pRua,');
              tPedidos.SQL.Add('                   Destinatario_RuaNumero   = :pRuaNumero,');
              tPedidos.SQL.Add('                   Destinatario_Complemento = :pComplemento,');
              tPedidos.SQL.Add('                   Destinatario_Bairro      = :pBairro,');
              tPedidos.SQL.Add('                   Destinatario_Municipio   = :pMunicipio,');
              tPedidos.SQL.Add('                   Destinatario_Estado      = :pEstado,');
              tPedidos.SQL.Add('                   Destinatario_CEP         = :pCEP,');
              tPedidos.SQL.Add('                   Destinatario_Pais        = :pPais,');
              tPedidos.SQL.Add('                   Destinatario_Telefone1   = :pTelefone1,');
              tPedidos.SQL.Add('                   Destinatario_IE          = :pIE');
              tPedidos.SQL.Add('WHERE Fornecedor_Codigo = :pCodigo');

              tPedidos.ParamByName('pCodigo').AsInteger := FornecedoresCodigo.AsInteger;
              tPedidos.ParamByName('pNome').AsString    := FornecedoresNome.AsString;
              tPedidos.ParamByName('pEstado').AsString  := FornecedoresEstado.AsString;
              If Trim(FornecedoresCNPJ.Asstring) <> '' then begin
                 tPedidos.ParamByName('pCNPJCPF').AsString   := FornecedoresCNPJ.AsString;
                 tPedidos.ParamByName('pJuridica').AsBoolean := true;
              end else begin
                 tPedidos.ParamByName('pCNPJCPF').AsString   := FornecedoresCPF.AsString;
                 tPedidos.ParamByName('pJuridica').AsBoolean := false;
              End;
              tPedidos.ParamByName('pRua').AsString         := FornecedoresRua.AsString;
              tPedidos.ParamByName('pRuaNumero').AsString   := FornecedoresRua_Numero.AsString;
              tPedidos.ParamByName('pComplemento').AsString := FornecedoresComplemento.AsString;
              tPedidos.ParamByName('pBairro').AsString      := FornecedoresBairro.AsString;
              tPedidos.ParamByName('pMunicipio').AsString   := FornecedoresMunicipio_Codigo.AsString;
              tPedidos.ParamByName('pEstado').AsString      := FornecedoresEstado.Asstring;
              tPedidos.ParamByName('pCEP').AsString         := FornecedoresCEP.Asstring;
              tPedidos.ParamByName('pPais').AsString        := FornecedoresPais.Asstring;
              tPedidos.ParamByName('pTelefone1').AsString   := FornecedoresTelefone1.Asstring;
              If FornecedoresIsento.AsBoolean = false then
                 tPedidos.ParamByName('pIE').AsString := FornecedoresInscricao_Estadual.Asstring
              else
                 tPedidos.ParamByName('pIE').AsString := 'ISENTO';
              tPedidos.Execute;

              // Salva a relação de documentos.
              FornecedoresDOC.SQL.Clear;
              FornecedoresDOC.SQL.Add('DELETE FROM FornecedoresDocumentos WHERE Fornecedor = :pCodigo');
              FornecedoresDOC.ParamByName('pCodigo').AsInteger := FornecedoresCodigo.AsInteger;
              FornecedoresDOC.Execute;
              FornecedoresDOC.SQL.Clear;
              FornecedoresDOC.SQL.Add('SELECT * FROM FornecedoresDocumentos WHERE Fornecedor = :pCodigo');
              FornecedoresDOC.ParamByName('pCodigo').AsInteger := FornecedoresCodigo.AsInteger;
              FornecedoresDOC.Open;

              For i := 0 to cListaDoc.Items.Count-1 do begin
                  If FornecedoresDOC.Locate('Documento', cListaDoc.Items[i], [loCaseInsensitive]) = false then begin
                     FornecedoresDOC.Append;
                                     FornecedoresDOCFornecedor.Value := FornecedoresCodigo.AsInteger;
                                     FornecedoresDOCDocumento.Value  := AnsiString(cListaDoc.Items[i]);
                     FornecedoresDOC.Post;
                  End;
              End;

              FornecedoresDOC.SQL.Clear;
              FornecedoresDOC.SQL.Add('SELECT * FROM FornecedoresDocumentos WHERE Fornecedor = :pCodigo');
              FornecedoresDOC.ParamByName('pCodigo').AsInteger := FornecedoresCodigo.AsInteger;
              FornecedoresDOC.Open;

              cListaDoc.Items.Clear;
              for i := 1 to FornecedoresDOC.RecordCount do begin
                  cListaDoc.Items.Add(FornecedoresDOCDocumento.AsString);
                  FornecedoresDOC.Next;
              end;
         end;
      end;

      // Não deixa excluir se ja existe movimento para o fornecedor.
      if Button = nbDelete then begin
         with Dados, dmFiscal, dmContab do begin
              tFornecedores.SQL.Clear;
              tFornecedores.SQL.Add('SELECT (SELECT COUNT(*) FROM NotasFiscais   WHERE(Fornecedor_Codigo = :pFornecedor)) + ');
              tFornecedores.SQL.Add('       (SELECT COUNT(*) FROM NotasTerceiros WHERE(Fornecedor = :pFornecedor)) + ');
              tFornecedores.SQL.Add('       (SELECT COUNT(*) FROM PagarReceber   WHERE(Fornecedor = :pFornecedor)) AS Utilizado');
              tFornecedores.ParamByName('pFornecedor').AsInteger := FornecedoresCodigo.AsInteger;
              tFornecedores.Open;
              if tFornecedores.FieldByName('Utilizado').AsInteger > 0 then begin
                 MessageDlg('Este Fornecedor não pode ser excluido.', mtInformation, [mbOK], 0);
                 Fornecedores.Cancel;
                 Abort;
              end;
              tContaPlano.SQL.Clear;
              tContaPlano.SQL.Add('DELETE FROM PlanoContas WHERE Saldo_Anterior = 0 AND Codigo_Terceiros = :pCodigo');
              tContaPlano.ParamByName('pCodigo').AsString := FornecedoresCodigo.AsString;
              tContaPlano.Execute;

              // Deleta as modalidades informadas para o cliente.
              with tCodigo do begin
                   sql.clear;
                   sql.add('delete from FornecedoresModalidades where Fornecedor = :pFor');
                   ParamByName('pFor').AsInteger := FornecedoresCodigo.asinteger;
                   execute;
                   sql.clear;
              end;
           end;
      end;
end;

procedure TCadastro_Fornecedores.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisa', 'Código/ CNPJ/ Nome',mPesquisa);
      with Dados do begin
           if Fornecedores.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
              if Fornecedores.Locate('CNPJ', mPesquisa, [loCaseInsensitive]) = False then begin
                 if Fornecedores.Locate('Nome', mPesquisa, [loCaseInsensitive, loPartialKey]) = False then begin
                    tFornecedores.SQL.Clear;
                    tFornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE Nome LIKE'+QuotedStr('%'+mPesquisa+'%'));
                    tFornecedores.Open;
                    if tFornecedores.RecordCount > 0 then begin
                       if not Fornecedores.Locate('Codigo', tFornecedores.FieldByName('Codigo').AsInteger, [loCaseInsensitive]) then begin
                          messagedlg('Fornecedor não encontrado!', mtInformation, [mbok], 0);
                       end;
                    end else begin
                       messagedlg('Fornecedor não encontrado!', mtInformation, [mbok], 0);
                    end;
                 end;
              end;
           end;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
           Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
           Municipios.Open;

           cComissao.Enabled         := Dados.RamoAtividadeComissionado.AsBoolean;
           cComissaoGerencia.Enabled := Dados.RamoAtividadeComissionado.AsBoolean;
           lComissao.Enabled         := Dados.RamoAtividadeComissionado.AsBoolean;
           lComissaoGerencia.Enabled := Dados.RamoAtividadeComissionado.AsBoolean;
           cRegiao.Enabled           := Dados.RamoAtividadeComissionado.AsBoolean;
           lRegiao.Enabled           := Dados.RamoAtividadeComissionado.AsBoolean;
      End;
end;

procedure TCadastro_Fornecedores.bPlanoClick(Sender: TObject);
begin
     screen.Cursor := crSqlWait;
     Panel1.Enabled := false;
     //AbreConta;
     Panel1.Enabled := true;
     screen.Cursor := crDefault;
end;

procedure TCadastro_Fornecedores.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.FornecedoresCodigo.AsString;
      Menu_Principal.mMem_Fornecedor := Dados.FornecedoresCodigo.Value;
      If not mTabAberta then begin
         Dados.Fornecedores.Close;
         Dados.TipoProduto.Close;
         Dados.Paises.Close;
         Dados.Estados.Close;
         Dados.Municipios.Close;
      End;  

      LimpaMemoria;
      Cadastro_Fornecedores.Release;
      Cadastro_Fornecedores := nil;
end;

procedure TCadastro_Fornecedores.cIsentoClick(Sender: TObject);
begin
      If (Dados.Fornecedores.State = dsInsert) or (Dados.Fornecedores.State = dsEdit) then begin
         If cIsento.Checked = True then begin
            Dados.FornecedoresInscricao_Estadual.Clear;
         end;
      End;
end;

procedure TCadastro_Fornecedores.cIEExit(Sender: TObject);
begin
        If (VerificaIE(Dados.FornecedoresEstado.AsString, Dados.FornecedoresInscricao_Estadual.AsString) = False) and (Trim(Dados.FornecedoresInscricao_Estadual.AsString) <> '') then begin
           MessageDlg('Inscrição Estadual do Estado do '+Dados.EstadosNome.AsString+' incorreta!', mtError, [mbok],0);
        End;
end;

procedure TCadastro_Fornecedores.cEstadoExit(Sender: TObject);
begin
     if Dados.EstadosCodigo.Value = 'EX' then begin
        Dados.FornecedoresIsento.Value := True;
     end else begin
        Dados.FornecedoresEstado_Nome.Value := Dados.EstadosNome.Value;
     end;
     cIEExit(nil);
     with Dados do begin
          Municipios.Close;
          Municipios.SQL.Clear;
          Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
          Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
          Municipios.Open;
     end;
end;

procedure TCadastro_Fornecedores.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Fornecedores.cCPFExit(Sender: TObject);
begin
      If (VerificaCPF(cCPF.Text) = False) and (Trim(cCPF.Text) <> '') then begin
         MessageDlg('Número de CPF incorreto!', mtError, [mbok],0);
         cCPF.SetFocus;
      End;
end;

procedure TCadastro_Fornecedores.lContaClick(Sender: TObject);
begin
      Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
      Cadastro_PlanoContas.Caption := Caption;
      Cadastro_PlanoContas.ShowModal;
      Dados.FornecedoresConta.Value := Menu_Principal.mMem_PlanoContas;
end;

procedure TCadastro_Fornecedores.SpeedButton1Click(Sender: TObject);
var
   jsonObject: TJsonObject;
begin
     if trim(cCNPJ.Text) = '' then
        Abort;

     RESTClient1.BaseURL := 'htpps://receitaws.com.br/v1/cnpj/'+cCNPJ.text;
     RESTRequest1.Execute;
     JsonObject := TJSONObject.ParseJSONValue(RESTRequest1.Response.JSONText) as TJSONObject;

     if pos('Too many requests, please try again later.', RESTRequest1.Response.JSONText) > 0  then begin
        Showmessage('Sobrecarga no site!'+#13+#13+'Tente novamento em alguns minutos.');
        FreeandNil(jsonObject);
        Abort;
     end;

     if JsonObject.GetValue('status').Value = 'ERROR' then begin
        Showmessage('Erro !'+#13+#13+JsonObject.GetValue('message').Value);
     end else begin
        if JsonObject.GetValue('situacao').Value <> 'ATIVA' then begin
           Showmessage('Atenção!'+#13+#13+'A situação desse CNPJ é '+JsonObject.GetValue('situacao').Value);
        end;
        with Dados do begin
             Municipios.SQL.Clear;
             Municipios.SQL.Add('SELECT *');
             Municipios.SQL.Add('FROM   Municipios');
             Municipios.SQL.Add('WHERE  UF = '+QuotedStr(JsonObject.GetValue('uf').Value));
             Municipios.SQL.Add('AND    Nome = '+QuotedStr(JsonObject.GetValue('municipio').Value) +' COLLATE SQL_Latin1_General_CP1_CI_AI');
             Municipios.Open;

             FornecedoresNome.AsString          := JsonObject.GetValue('nome').Value;
             FornecedoresEstado.AsString        := JsonObject.GetValue('uf').Value;
             FornecedoresCEP.AsString           := ApenasNumeros(JsonObject.GetValue('cep').Value);
             FornecedoresBairro.AsString        := JsonObject.GetValue('bairro').Value;
             FornecedoresRua.AsString           := JsonObject.GetValue('logradouro').Value;
             FornecedoresComplemento.AsString   := JsonObject.GetValue('complemento').Value;
             FornecedoresRua_Numero.AsString    := JsonObject.GetValue('numero').Value;
             FornecedoresTelefone1.AsString     := ApenasNumeros(JsonObject.GetValue('telefone').Value);
             FornecedoresEmail.AsString         := JsonObject.GetValue('email').Value;
             FornecedoresMunicipio_Codigo.Value := MunicipiosCodigo.Value;
             FornecedoresMunicipio.AsString     := Municipios.FieldByName('Codigo').AsString;
             FornecedoresNome_Fantasia.AsString := JsonObject.GetValue('fantasia').Value;
             FornecedoresPais.AsString          := '1058';
             FornecedoresMicro_Empresa.value    := JsonObject.GetValue('porte').Value = 'MICRO EMPRESA';
        end;
     end;
     FreeandNil(jsonObject);
     cEstadoExit(self);
end;

procedure TCadastro_Fornecedores.SpeedButton2Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND Sintetica <> 1';
      PesquisaGerais.Showmodal;
      with Dados, Fornecedores do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Passivo').value := Clipboard.asText;
           end;
      end;
end;

procedure TCadastro_Fornecedores.SpeedButton3Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND Sintetica <> 1';
      PesquisaGerais.Showmodal;
      with Dados, Fornecedores do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Adiantamento').value := Clipboard.asText;
           end;
      end;
end;

procedure TCadastro_Fornecedores.SpeedButton4Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND Sintetica <> 1';
      PesquisaGerais.Showmodal;
      with Dados, Fornecedores do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Conta_Devolucao').value := Clipboard.asText;
           end;
      end;
end;

procedure TCadastro_Fornecedores.StaticText25Click(Sender: TObject);
begin
      Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
      Cadastro_PlanoContas.Caption := Caption;
      Cadastro_PlanoContas.ShowModal;
      Dados.FornecedoresConta_Adiantamento.Value := Menu_Principal.mMem_PlanoContas;
end;

procedure TCadastro_Fornecedores.StaticText26Click(Sender: TObject);
begin
      Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
      Cadastro_PlanoContas.Caption := Caption;
      Cadastro_PlanoContas.ShowModal;
      Dados.FornecedoresConta_Devolucao.Value := Menu_Principal.mMem_PlanoContas;
end;

procedure TCadastro_Fornecedores.bImportarClick(Sender: TObject);
Var
    mAchou : Boolean;
begin
      mPesquisa := InputBox('Pesquisa Cliente', 'CNPJ/Código', mPesquisa);
      mPesquisa := Trim(ApenasNumeros(mPesquisa));

      With Dados do begin
           If mPesquisa <> '' then begin
              mAchou := Clientes.Locate('CNPJ', mPesquisa, [loCaseInsensitive]);
              If mAchou = false then mAchou := Clientes.Locate('Codigo', mPesquisa, [loCaseInsensitive]);

              If mAchou = false then
                 ShowMessage('Nenhum cliente encontrado com o CÓDIGO ou CNPJ informados!')
              else begin
                 If MessageDlg('Deseja importar os dados de '+ClientesNome.AsString+ '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
                    Navega.BtnClick(nbInsert);
                    FornecedoresNome.Value                := ClientesNome.Value;
                    FornecedoresPais.Value                := ClientesPais.Value;
                    FornecedoresEstado.Value              := ClientesEstado.Value;
                    FornecedoresMunicipio_Codigo.Value    := ClientesMunicipio_Codigo.Value;
                    FornecedoresMunicipio.Value           := ClientesMunicipio.Value;
                    FornecedoresBairro.Value              := ClientesBairro.Value;
                    FornecedoresRua.Value                 := ClientesRua.Value;
                    FornecedoresRua_Numero.Value          := ClientesRua_Numero.Value;
                    FornecedoresCEP.Value                 := ClientesCEP.Value;
                    FornecedoresCNPJ.Value                := ClientesCNPJ.Value;
                    FornecedoresIsento.Value              := ClientesIsento.Value;
                    FornecedoresInscricao_Estadual.Value  := ClientesInscricao_Estadual.Value;
                    FornecedoresInscricao_Municipal.Value := ClientesInscricao_Municipal.Value;
                    FornecedoresSUFRAMA.Value             := ClientesSUFRAMA.Value;
                    FornecedoresCPF.Value                 := ClientesCPF.Value;
                    FornecedoresRG.Value                  := ClientesRG.Value;
                    FornecedoresTelefone1.Value           := ClientesTelefone1.Value;
                    FornecedoresFAX.Value                 := ClientesFAX.Value;
                    FornecedoresEMail.Value               := ClientesEMail.Value;
                    FornecedoresIndicador_IE.Value        := ClientesIndicador_IE.Value;
                    FornecedoresConta_Devolucao.Value     := Dados.ClientesConta_Ativo.Value;
                    cNome.SelectAll;
                    
                    Municipios.SQL.Clear;
                    Municipios.SQL.Add('SELECT * FROM Municipios WHERE (Estado = :pEstado) ORDER BY Nome');
                    Municipios.ParamByName('pEstado').AsInteger := EstadosNumero.Value;
                    Municipios.Open;
                 End;
              End;
           End;
      End;
end;

procedure TCadastro_Fornecedores.cPaisChange(Sender: TObject);
begin
      With Dados do begin
           If FornecedoresPais.Value <> '1058' then begin
              FornecedoresEstado.Value           := 'EX';
              FornecedoresMunicipio_Codigo.Value := 9999999;
//              cEstado.Enabled                    := False;
//              cMunicipio.Enabled                 := False;
              cBairro.SetFocus;
           end else begin
//              cEstado.Enabled    := True;
//              cMunicipio.Enabled := True;
           End;
      End;
end;

procedure TCadastro_Fornecedores.DBEdit1Change(Sender: TObject);
Var
   i:Integer;
begin
      with Dados do begin
      {
           if FornecedoresPais.Value <> '1058' then begin
              cEstado.Enabled    := False;
              cMunicipio.Enabled := False;
           end else begin
              cEstado.Enabled    := True;
              cMunicipio.Enabled := True;
           end;
       }
           FornecedoresDOC.SQL.Clear;
           FornecedoresDOC.SQL.Add('SELECT * FROM FornecedoresDocumentos WHERE Fornecedor = :pCodigo');
           FornecedoresDOC.ParamByName('pCodigo').AsInteger := FornecedoresCodigo.AsInteger;
           FornecedoresDOC.Open;

           cListaDoc.Items.Clear;
           for i := 1 to FornecedoresDOC.RecordCount do begin
               cListaDoc.Items.Add(FornecedoresDOCDocumento.AsString);
               FornecedoresDOC.Next;
           end;

           // Pega modalidades de importação.
           with FornecedoresModal do begin
                sql.clear;
                sql.add('select * from FornecedoresModalidades where Fornecedor = :pCodigo order by Codigo');
                ParamByName('pCodigo').asinteger := FornecedoresCodigo.asinteger;
                open;
           end;
      end;
end;

procedure TCadastro_Fornecedores.cRamoAtividadeExit(Sender: TObject);
begin
      cComissao.Enabled := Dados.RamoAtividadeComissionado.AsBoolean;
      cComissaoGerencia.Enabled := Dados.RamoAtividadeComissionado.AsBoolean;
      lComissao.Enabled := Dados.RamoAtividadeComissionado.AsBoolean;
      lComissaoGerencia.Enabled := Dados.RamoAtividadeComissionado.AsBoolean;
      cRegiao.Enabled   := Dados.RamoAtividadeComissionado.AsBoolean;
      lRegiao.Enabled   := Dados.RamoAtividadeComissionado.AsBoolean;
      If cRegiao.Enabled = false then Dados.FornecedoresRegiao.Clear;
end;

procedure TCadastro_Fornecedores.cPesquisaChange(Sender: TObject);
begin
      With Dados do begin
           If Fornecedores.Locate('Nome', cPesquisa.Text, [loPartialKey]) = False then begin
              tFornecedores.SQL.Clear;
              tFornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE(Nome LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
              tFornecedores.Open;
              Fornecedores.Locate('Codigo', tFornecedores.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
           End;
      End;
end;

procedure TCadastro_Fornecedores.cIEKeyPress(Sender: TObject;var Key: Char);
begin
//      If not (Key in ['0'..'9', chr(8)]) then Key:=#0;
end;

procedure TCadastro_Fornecedores.bFiliaisClick(Sender: TObject);
begin
      Cadastro_FornecedoresFiliais := TCadastro_FornecedoresFiliais.Create(Self);
      Cadastro_FornecedoresFiliais.Caption := Caption;
      Cadastro_FornecedoresFiliais.ShowModal;
end;

procedure TCadastro_Fornecedores.bFiltrarClick(Sender: TObject);
begin
      With Dados do begin
           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores WHERE Codigo IS NOT NULL');
           If cSituacao.ItemIndex = 1 then begin
              Fornecedores.SQL.Add('  AND ISNULL(Ativo, 0) = 1');
           End;
           If cSituacao.ItemIndex = 2 then begin
              Fornecedores.SQL.Add('  AND ISNULL(Ativo, 0) <> 1');
           End;
           If Trim(cFiltroRamo.Text) <> '' then begin
              Fornecedores.SQL.Add('  AND Ramo_Atividade = :pRamo');
              Fornecedores.ParamByName('pRamo').AsInteger := cFiltroRamo.KeyValue;
           End;
           If Trim(cFiltroEstado.Text) <> '' then begin
              Fornecedores.SQL.Add('  AND Estado = '+QuotedStr(Trim(cFiltroEstado.Text)));
           End;
           Fornecedores.SQL.Add('ORDER BY Nome');
           Fornecedores.Open;
      End;
end;

procedure TCadastro_Fornecedores.bLimparClick(Sender: TObject);
begin
      cSituacao.ItemIndex  := 0;
      cFiltroRamo.KeyValue := -1;
      cFiltroEstado.Text   := '';

      With Dados do begin
           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;
      End;
end;

procedure TCadastro_Fornecedores.BitBtn1Click(Sender: TObject);
begin
     cListaDoc.Clear;
end;

procedure TCadastro_Fornecedores.bDocumentoClick(Sender: TObject);
Var
   i: Integer;
begin
      With Dados do begin
           If OpenDialog1.Execute then begin
              For i := 0 to OpenDialog1.Files.Count-1 do begin
                  cListaDoc.Items.Add(OpenDialog1.Files[i]);
              End;
           End;
      End;
end;

procedure TCadastro_Fornecedores.cListaDOCDblClick(Sender: TObject);
begin
      ShellExecute(Handle, 'Open', PChar(cListaDoc.Items[cListaDoc.ItemIndex]), '', '', SW_ShowNormal);
end;
{
procedure TCadastro_Fornecedores.AbreConta;
Var
    mNat,
    mTerceiros: String;
    i: Integer;
begin
      with Dados, dmContab do begin
           // Abre as contas do fornecedor no plano de contas se estiver parâmetrizado nos tipos de processo.
           with FornecedoresModal do begin
                sql.clear;
                sql.add('select * from FornecedoresModalidades where Fornecedor = :pCodigo order by Codigo');
                ParamByName('pCodigo').asinteger := FornecedoresCodigo.asinteger;
                open;
                while not eof do begin
                      TiposProcesso.locate('Codigo', FieldByName('Codigo').asinteger, [loCaseInsensitive]);
                      for i := 1 to 3 do begin
                          SalvaConta(i);
                      end;
                      next;
                end;
           end;
      End;
end;
}
{
procedure TCadastro_Fornecedores.SalvaConta(Campo: integer);
var
    mTerceiros
   ,mnat
   ,mConta: string;
begin
      with Dados, dmContab do begin
           with tContaPlano do begin
                sql.Clear;
                sql.Add('select * from PlanoContas where Codigo = :pCodigo' );
                if Campo = 1 then ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_Fornecedor').asstring;
                if Campo = 2 then ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_FornecedorAdiantamento').asstring;
                if Campo = 3 then ParamByName('pCodigo').value := TiposProcesso.FieldByName('Conta_FornecedorDevolucao').asstring;
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
                 mConta := inttostr(tContaPlano.FieldByName('Conta').AsLargeInt + 1)
              else
                 mConta := tContaPlano.FieldByName('Conta').AsString;

              tContaPlano.SQL.Clear;
              tContaPlano.SQL.Add('select Codigo, Conta from PlanoContas where Conta like :pConta and Descricao like :pDesc' );
              tContaPlano.ParamByName('pConta').AsString := String(mConta);
              tContaPlano.ParamByName('pDesc').AsString  := trim(Fornecedores.FieldByName('Nome').asstring);
              tContaPlano.Open;

              if tContaPlano.RecordCount = 0 then begin
                 // Pegando o número do último código criado no (Plano Principal/Terceiros).
//                 tCodigoPlano.SQL.Clear;
//                 tCodigoPlano.SQL.Add('select isnull(max(cast(Codigo as int)), 0)+1 as Codigo from PlanoContas where substring(Conta, 1, 1) = :pConta');
//                 tCodigoPlano.ParamByName('pConta').AsString := Copy(mConta, 1, 1);
//                 tCodigoPlano.Open;
                 tCodigoPlano.SQL.Clear;
                 tCodigoPlano.SQL.Add('select isnull(max(cast(Codigo as int)), 0)+1 as Codigo from PlanoContas');
                 tCodigoPlano.Open;

                 PlanoContas.Append;
                             PlanoContasConta.Value             := AnsiString(mConta);
                             PlanoContasCodigo.Value            := tCodigoPlano.FieldByName('Codigo').AsAnsiString;
                             PlanoContasDescricao.Value         := trim(Fornecedores.FieldByName('Nome').asstring);
                             PlanoContasSaldo_Anterior.Value    := 0;
                             PlanoContasDebito.Value            := 0;
                             PlanoContasCredito.Value           := 0;
                             PlanoContasSintetica.Value         := False;
                             PlanoContasNatureza.AsString       := mNat;
                             PlanoContasLALUR.Value             := False;
                             PlanoContasMostrar_Balanco.Value   := False;
                             PlanoContasImprimir_Razao.Value    := False;
                             PlanoContasEmpresa.Value           := EmpresasCNPJ.value;
                             PlanoContasAtualiza_Anterior.Value := 0;
                             PlanoContasAtualiza_Debito.Value   := 0;
                             PlanoContasAtualiza_Credito.Value  := 0;
                             PlanoContasData_Inclusao.Value     := Date;
                             PlanoContasOrigem.value            := PoeZero(2, StrtoInt(Copy(mConta, 1,1)));
                             PlanoContasCodigo_Terceiros.Value  := Fornecedores.FieldByName('Codigo').AsAnsiString;
                             PlanoContasGrupo.Value             := Copy(PlanoContasConta.Value, 1, 1);
                             PlanoContasTipo_Terceiros.Value    := iif(FornecedoresPais.AsInteger = 1058, 'FN', 'FE');
                             PlanoContasCNPJ_CPF.AsString       := trim(FornecedoresCNPJ.asstring) + trim(FornecedoresCPF.asstring);
                             PlanoContasPessoa.Value            := iif(trim(FornecedoresCNPJ.Asstring) <> '', 'J', 'F');
                             PlanoContasSelecao.Value           := false;
                             PlanoContasConta_Resultado.Value   := false;
                             PlanoContasDRE.Value               := false;
                             PlanoContasNivel.Value             := NivelConta(mConta, EmpresasMascara_PlanoContas.AsString);
                             PlanoContasConta_Grupo.value       := GrupoConta(mConta, EmpresasMascara_PlanoContas.AsString, PlanoContasNivel.AsInteger);
                 PlanoContas.Post;

                 tCodigoPlano.Close;
                 tContaPlano.Close;

                 // Registra a conta aberta no plano, no cadastro do fornecedor
                 with FornecedoresModal do begin
                      edit;
                          if Campo = 1 then FieldByName('Conta_Passivo').Value      := PlanoContasCodigo.Value;
                          if Campo = 2 then FieldByName('Conta_Adiantamento').Value := PlanoContasCodigo.Value;
                          if Campo = 3 then FieldByName('Conta_Devolucao').Value    := PlanoContasCodigo.Value;
                      Post;
                 end;
              end else begin
                 // Registra a conta aberta no plano, no cadastro do fornecedor
                 with FornecedoresModal do begin
                      edit;
                          if Campo = 1 then FieldByName('Conta_Passivo').Value      := tContaPlano.fieldbyName('Codigo').asstring;
                          if Campo = 2 then FieldByName('Conta_Adiantamento').Value := tContaPlano.fieldbyName('Codigo').asstring;
                          if Campo = 3 then FieldByName('Conta_Devolucao').Value    := tContaPlano.fieldbyName('Codigo').asstring;
                      Post;
                 end;
              end;
           end;
      end;
end;
}


end.

