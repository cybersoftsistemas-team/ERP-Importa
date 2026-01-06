unit frmCadastro_Bancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess,
  Vcl.StdCtrls, DBCtrls, DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,RXCtrls, ClipBrd, RxLookup, RXDBCtrl, Mask, Grids, MemDS, RxToolEdit, System.UITypes, Vcl.Buttons;

type
  TCadastro_Bancos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Grade: TDBGrid;
    tCodigo: TMSQuery;
    bHistoricos: TButton;
    tContaPlano: TMSQuery;
    tCodigoPlano: TMSQuery;
    tMovimento: TMSQuery;
    tBaixas: TMSQuery;
    tConta: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    cNome: TDBEdit;
    StaticText2: TStaticText;
    cSaldo: TDBEdit;
    StaticText4: TStaticText;
    cConta: TDBEdit;
    StaticText6: TStaticText;
    cAgencia: TDBEdit;
    cCodigo: TDBEdit;
    StaticText7: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    StaticText3: TStaticText;
    cNumeroBanco: TDBEdit;
    StaticText8: TStaticText;
    DBEdit6: TDBEdit;
    StaticText9: TStaticText;
    DBEdit7: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText10: TStaticText;
    DBDateEdit7: TDBDateEdit;
    DBCheckBox1: TDBCheckBox;
    StaticText13: TStaticText;
    cEmpresa: TRxDBLookupCombo;
    cTipo: TDBRadioGroup;
    DBEdit3: TDBEdit;
    StaticText14: TStaticText;
    StaticText19: TStaticText;
    DBEdit10: TDBEdit;
    StaticText23: TStaticText;
    DBEdit14: TDBEdit;
    StaticText24: TStaticText;
    DBEdit15: TDBEdit;
    StaticText15: TStaticText;
    DBEdit4: TDBEdit;
    StaticText20: TStaticText;
    DBEdit11: TDBEdit;
    StaticText17: TStaticText;
    DBEdit8: TDBEdit;
    StaticText16: TStaticText;
    DBEdit5: TDBEdit;
    StaticText12: TStaticText;
    DBEdit1: TDBEdit;
    StaticText21: TStaticText;
    DBEdit12: TDBEdit;
    StaticText11: TStaticText;
    cCarteira: TDBEdit;
    StaticText22: TStaticText;
    DBEdit13: TDBEdit;
    StaticText18: TStaticText;
    DBEdit9: TDBEdit;
    StaticText25: TStaticText;
    DBEdit16: TDBEdit;
    StaticText26: TStaticText;
    DBEdit17: TDBEdit;
    cCarteira2: TDBEdit;
    cCarteira3: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit79: TDBEdit;
    DBLookupComboBox39: TDBLookupComboBox;
    StaticText158: TStaticText;
    DBCheckBox2: TDBCheckBox;
    StaticText27: TStaticText;
    DBDateEdit1: TDBDateEdit;
    cFluxo: TDBCheckBox;
    StaticText28: TStaticText;
    DBEdit18: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    StaticText29: TStaticText;
    DBEdit19: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bHistoricosClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa  : String;
    mContaAntes: String;
  end;

var
  Cadastro_Bancos: TCadastro_Bancos;

implementation

Uses frmDados, frmDMContab, frmCadastro_BancosHistoricos, frmMenu_Principal, frmPesquisaGerais;

{$R *.dfm}

procedure TCadastro_Bancos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Bancos.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         Grade.Enabled := not Grade.Enabled;
         cSaldo.Enabled := (Menu_Principal.mUsuarioNome = 'ADMINISTRADOR') or (Dados.Bancos.State = dsInsert);
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;

         mContaAntes                  := Dados.BancosConta.AsString;
         PageControl1.ActivePageIndex := 0;
         TabSheet1.Enabled            := true;
         TabSheet2.Enabled            := true;
         cEmpresa.SetFocus;
      End;
      If Button = nbInsert then begin
         Dados.BancosDesativado.Value          := false;
         Dados.BancosLancamento_Contabil.Value := true;
         Dados.BancosTipo_Conta.Value          := 'CORRENTE';
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Bancos.Refresh;
         TabSheet1.Enabled := false;
         TabSheet2.Enabled := false;
         Screen.Cursor := crDefault;
         Grade.Enabled := not Grade.Enabled;
      End;
end;

procedure TCadastro_Bancos.SpeedButton2Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'PlanoContas';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      PesquisaGerais.mBanco  := 'Contabil';
      PesquisaGerais.mFiltro := 'AND Sintetica <> 1';
      PesquisaGerais.Showmodal;
      with Dados, Bancos do begin
           if trim(Clipboard.AsText) <> '' then begin
              FieldByName('Plano_Contas').value := Clipboard.asText;
              DBLookupComboBox1.KeyValue := trim(Clipboard.asText);
           end;
      end;
end;

procedure TCadastro_Bancos.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmContab do Begin
           Bancos.SQL.Clear;
           Bancos.SQL.Add('SELECT * FROM Bancos ORDER BY Nome');  
           Bancos.Open;

           if mPesquisa <> '' then Bancos.Locate('Codigo', mPesquisa, [loCaseInsensitive]);

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica <> 1)');
           PlanoContas.Open;

           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Descricao');
           Historicos.Open;

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Nome');
           Fornecedores.Open;

           Clientes.SQL.Clear;
           Clientes.SQL.Add('select * from Clientes order by Nome');
           Clientes.Open;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas ORDER BY Razao_Social');
           Empresas.Open;

           Configuracao.Open;

           If Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean = true then
              tCodigo.Connection := Dados.Banco
           else
              tCodigo.Connection := Dados.Banco_Empresas;

           If Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean = true then
              tConta.Connection := Dados.Banco
           else
              tConta.Connection := Dados.Banco_Empresas;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_Bancos.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
Var
    mGrupo    : String;
    mConta    : String;
    mNomeConta: String;
begin
      Navega.SetFocus;
      With Dados, dmContab do begin
           If (Button = nbPost) then begin
              If Trim(BancosConta.AsString) = '' then begin
                 MessageDlg('O número da conta bancária e campo obrigatório!', mtError, [mbOK], 0);
                 cConta.SetFocus;
                 Abort;
              End;
              If Trim(BancosNumero_Banco.AsString) = '' then begin
                 MessageDlg('O número do banco é campo obrigatório!', mtError, [mbOK], 0);
                 cNumeroBanco.SetFocus;
                 Abort;
              End;
              If Trim(BancosAgencia.AsString) = '' then begin
                 MessageDlg('O número da agencia bancária é campo obrigatório!', mtError, [mbOK], 0);
                 cAgencia.SetFocus;
                 Abort;
              End;
              If Trim(BancosEmpresa.AsString) = '' then begin
                 MessageDlg('A Empresa a quem pertence a conta bancária é campo obrigatório!', mtError, [mbOK], 0);
                 cEmpresa.SetFocus;
                 Abort;
              End;
              If Trim(BancosEmpresa.AsString) = '' then begin
                 MessageDlg('A Empresa a quem pertence a conta bancária é campo obrigatório!', mtError, [mbOK], 0);
                 cEmpresa.SetFocus;
                 Abort;
              End;

              tConta.SQL.Clear;
              tConta.SQL.Add('SELECT Codigo, Conta, Nome FROM Bancos WHERE Conta = :pConta');
              tConta.ParamByName('pConta').AsString := BancosConta.AsString;
              tConta.Open;
              If (tConta.FieldByName('Codigo').AsInteger <> BancosCodigo.AsInteger) and (tConta.FieldByName('Conta').AsString = BancosConta.AsString) then begin
                 MessageDlg('Atenção!'+#13+#13+'Já existe outro banco cadastrado com este número de conta '+tConta.FieldByName('Nome').AsString, mtError, [mbOK], 0);
                 Abort;
              End;

              BancosBanco_Dados.Clear;
              If Trim(cEmpresa.Text) <> '' then BancosBanco_Dados.AsString := EmpresasBanco_Dados.AsString;
           End;

           If (Button = nbPost) and (Dados.Bancos.State = dsInsert) then begin
              Screen.Cursor := crSQLWait;

              tCodigo.SQL.Clear;
              tCodigo.SQL.Add('SELECT MAX(Codigo) AS Codigo FROM Bancos');
              tCodigo.Open;

              BancosCodigo.Value   := tCodigo.FieldByName('Codigo').AsInteger + 1;
              BancosConta.AsString := Trim(BancosConta.AsString);

              tCodigo.Close;
              
              Screen.Cursor := crDefault;

              // Abre a conta do Banco no plano de contas se estiver parâmetrizado.
              PlanoContas.SQL.Clear;
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas');
              PlanoContas.Open;

              PlanoContas.Locate('Codigo', ConfiguracaoContab_GrupoBanco.AsString, [loCaseInsensitive]);
              mGrupo := Trim(PlanoContasConta.AsString);

              If PlanoContasSintetica.Value = False then begin
                 BancosPlano_Contas.Value := PlanoContasCodigo.AsAnsiString;
              end else begin
                 If mGrupo <> '' then begin
                    // Verificando se a conta ja foi cadastrada.
                    mNomeConta := Trim(BancosNome.AsString) + '- C/C: '+ Trim(BancosConta.AsString);
                    PlanoContas.SQL.Clear;
                    PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Conta LIKE :pGrupo) AND (Sintetica = 0) AND (Descricao = :pNome)' );
                    PlanoContas.ParamByName('pGrupo').AsString := mGrupo+'%';
                    PlanoContas.ParamByName('pNome').AsString  := mNomeConta;
                    PlanoContas.Open;

                    If PlanoContas.RecordCount = 0 then begin
                       // Pegando o número da última conta criada.
                       tContaPlano.SQL.Clear;
                       tContaPlano.SQL.Add('SELECT MAX(Conta) AS Conta FROM PlanoContas WHERE (Conta LIKE :pGrupo)' );
                       tContaPlano.ParamByName('pGrupo').AsString := mGrupo+'%';
                       tContaPlano.Open;

                       // Pegando o número do último código criado sem o sexto número (Digito).
                       tCodigoPlano.SQL.Clear;
                       tCodigoPlano.SQL.Add('SELECT MAX(CAST(Codigo AS Int)) AS Codigo FROM PlanoContas' );
                       tCodigoPlano.Open;

                       If Configuracao.FieldByName('Contab_ContaNova').AsBoolean = true then
                          mConta := InttoStr(tContaPlano.FieldByName('Conta').AsInteger + 1)
                       else
                          mConta := tContaPlano.FieldByName('Conta').AsString;

                       PlanoContas.Append;
                                   PlanoContasConta.AsString        := mConta;
                                   PlanoContasCodigo.AsString       := InttoStr(tCodigoPlano.FieldByName('Codigo').AsInteger + 1);
                                   PlanoContasDescricao.AsString    := mNomeConta;
                                   PlanoContasSaldo_Anterior.Value  := 0;
                                   PlanoContasDebito.Value          := 0;
                                   PlanoContasCredito.Value         := 0;
                                   PlanoContasSintetica.Value       := False;
                                   PlanoContasNatureza.Value        := 'D';
                                   PlanoContasLALUR.Value           := False;
                                   PlanoContasMostrar_Balanco.Value := False;
                                   PlanoContasImprimir_Razao.Value  := False;
                       PlanoContas.Post;

                       // Registra a conta aberta no plano no cadastro do cliente.
                       BancosPlano_Contas.Value := PlanoContasCodigo.AsAnsiString;
                    End;
                 End;
              End;
           End;

           // Atualiza a tabela de baixas com a nova conta do banco caso tenha sido alterada.
           If (Button = nbPost) and (Dados.Bancos.State = dsedit) and (Trim(Dados.BancosConta.AsString) <> Trim(mContaAntes)) then begin
              Screen.Cursor := crSQLWait;
              tBaixas.SQL.Clear;
              tBaixas.SQL.Add('UPDATE PagarReceberBaixas SET Banco_Conta = :pContaNova WHERE(Banco = :pBanco)');
              tBaixas.ParamByName('pBanco').AsInteger    := Dados.BancosCodigo.Asinteger;
              tBaixas.ParamByName('pContaNova').AsString := Dados.BancosConta.AsString;
              tBaixas.Execute;
              Screen.Cursor := crDefault;
           End;

           // Verifica se o Banco ja foi utilizado.
           If Button = nbDelete then begin
              tMovimento.SQL.Clear;
              tMovimento.SQL.Add('SELECT (SELECT COUNT(*) FROM PagarReceber WHERE(Banco = :pBanco))+(SELECT COUNT(*) FROM PagarReceberBaixas WHERE(Banco = :pBanco)) AS Movimento');
              tMovimento.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
              tMovimento.Open;
              If tMovimento.FieldByName('Movimento').AsInteger > 0 then begin
                 MessageDlg('Este Banco não pode ser excluido, pois ja foram feitos lançamentos financeiros utilizando-o.', mtInformation, [mbOK], 0);
                 Bancos.Cancel;
                 Abort;
              End;
           End;
      End;
end;

procedure TCadastro_Bancos.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Nome', mPesquisa);
     Dados.Bancos.Locate('Nome', mPesquisa, [loCaseInsensitive,loPartialKey]);
end;

procedure TCadastro_Bancos.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Bancos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Clipboard.AsText := Dados.BancosCodigo.AsString;
      Cadastro_Bancos.Release;
      Cadastro_Bancos := nil;
end;

procedure TCadastro_Bancos.bHistoricosClick(Sender: TObject);
begin
     Cadastro_BancosHistoricos := TCadastro_BancosHistoricos.Create(Self);
     Cadastro_BancosHistoricos.Caption := Caption;
     Cadastro_BancosHistoricos.ShowModal;
end;



end.





