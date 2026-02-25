unit frmCadastro_ClassificacaoFinanceira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, system.UITypes,
  MSAccess, Vcl.StdCtrls, Mask,  DBCtrls, Grids, DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, RXDBCtrl, RXCtrls, ImgList, Funcoes, Menus, ClipBrd, RxLookup, Buttons, MemDS, System.ImageList;

type
  TCadastro_ClassificacaoFinanceira = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Grade: TDBGrid;
    ImageList1: TImageList;
    mnVarProv: TPopupMenu;
    Clientes1: TMenuItem;
    FORNECEDORES1: TMenuItem;
    Processo1: TMenuItem;
    tCodigo: TMSQuery;
    tMovimento: TMSQuery;
    PageControl1: TPageControl;
    aDados: TTabSheet;
    aContabil: TTabSheet;
    GroupBox1: TGroupBox;
    StaticText3: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    cProvisaoContaD: TDBEdit;
    cProvisaoContaC: TDBEdit;
    StaticText4: TStaticText;
    DBEdit4: TDBEdit;
    StaticText8: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    lContaPagamento: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    cPagamentoConta: TDBEdit;
    DBEdit5: TDBEdit;
    StaticText9: TStaticText;
    DBLookupComboBox7: TDBLookupComboBox;
    cTipoLancamento: TDBRadioGroup;
    cTipo: TDBRadioGroup;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    GroupBox3: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    cCusto: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    GroupBox4: TGroupBox;
    StaticText2: TStaticText;
    cAliquotaPIS: TDBEdit;
    StaticText6: TStaticText;
    cAliquotaCOFINS: TDBEdit;
    StaticText30: TStaticText;
    cCodigoCSTPIS: TDBEdit;
    StaticText32: TStaticText;
    cCodigoCSTCOFINS: TDBEdit;
    cListaCSTPIS: TDBLookupComboBox;
    cListaCSTCOFINS: TDBLookupComboBox;
    StaticText7: TStaticText;
    StaticText10: TStaticText;
    DBEdit2: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    tPesquisa: TMSQuery;
    DBCheckBox12: TDBCheckBox;
    StaticText11: TStaticText;
    cNivel: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    cCustoSeletivo: TDBCheckBox;
    cCustoEntrada: TDBCheckBox;
    StaticText12: TStaticText;
    DBEdit1: TDBEdit;
    bLimparProvisao: TButton;
    cCustoOutros: TDBCheckBox;
    cBoleto: TDBCheckBox;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    GroupBox5: TGroupBox;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    cMostrar: TRadioGroup;
    Button1: TButton;
    tHistoricos: TMSQuery;
    dstHistoricos: TDataSource;
    tHistoricosCodigo: TSmallintField;
    tHistoricosDescricao: TStringField;
    tHistoricosComplemento: TBooleanField;
    tHistoricosMacro: TMemoField;
    StaticText16: TStaticText;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit3: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    StaticText17: TStaticText;
    DBLookupComboBox10: TDBLookupComboBox;
    Button2: TButton;
    StaticText18: TStaticText;
    cPesq1: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    StaticText65: TStaticText;
    cPesquisa: TEdit;
    StaticText66: TStaticText;
    cPesquisaH: TEdit;
    StaticText19: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBCheckBox2: TDBCheckBox;
    mnVarPag: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesquisaClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure Clientes1Click(Sender: TObject);
    procedure FORNECEDORES1Click(Sender: TObject);
    procedure BANCOS1Click(Sender: TObject);
    procedure Processo1Click(Sender: TObject);
    procedure cProvisaoContaDExit(Sender: TObject);
    procedure cProvisaoContaCExit(Sender: TObject);
    procedure cTipoChange(Sender: TObject);
    procedure cPagamentoContaExit(Sender: TObject);
    procedure StaticText7Click(Sender: TObject);
    procedure cMostrarClick(Sender: TObject);
    procedure StaticText11Click(Sender: TObject);
    procedure cCustoSeletivoClick(Sender: TObject);
    procedure cCustoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bLimparProvisaoClick(Sender: TObject);
    procedure StaticText16Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cPesq1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure cPesquisaHChange(Sender: TObject);
    procedure GradeTitleClick(Column: TColumn);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa     : String;
    mUltimoClick  : String;
    mClassAntes   : String;
    mCodigoAntes  : String;
    mCodigoErro   : String;
  end;

var
  Cadastro_ClassificacaoFinanceira: TCadastro_ClassificacaoFinanceira;

implementation

Uses frmDados, frmDMContab, frmJanela_Processamento, frmCadastro_ClassificacaoNivel, frmMenu_Principal, frmCadastro_TiposProcesso,
     frmCadastro_CodigosRFB, frmCadastro_ClassificacaoFiliais;
{$R *.dfm}

procedure TCadastro_ClassificacaoFinanceira.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With dmContab, Dados do begin
             ClassificacaoFinanceira.SQL.Clear;
             ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(ISNULL(Desativada, 0) <> 1) ORDER BY Descricao, Codigo');
             ClassificacaoFinanceira.Open;
             mUltimoClick := Grade.Columns[0].FieldName;

             if mCodigoErro <> '' then ClassificacaoFinanceira.Locate('Codigo', mCodigoErro, [loCaseInsensitive]);

             tHistoricos.SQL.Clear;
             tHistoricos.SQL.Add('SELECT  Codigo');
             tHistoricos.SQL.Add('       ,Descricao = Descricao + '' ''+ISNULL(CAST(Macro AS VARCHAR(120)), '''')');
             tHistoricos.SQL.Add('       ,Complemento');
             tHistoricos.SQL.Add('       ,Macro');
             tHistoricos.SQL.Add('FROM   HistoricoPadrao');
             tHistoricos.SQL.Add('ORDER  BY Descricao, Codigo');
             tHistoricos.Open;

             PlanoContas.SQL.Clear;
             PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Sintetica = 0) ORDER BY Descricao');
             PlanoContas.Open;

             Natureza.SQL.Clear;
             Natureza.SQL.Add('SELECT * FROM Natureza ORDER BY Descricao_NF');
             Natureza.Open;

             CentroCusto.SQL.Clear;
             CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Descricao');
             CentroCusto.Open;

             CSTPIS.SQL.Clear;
             CSTPIS.SQL.Add('SELECT * FROM CSTPIS ORDER BY Codigo');
             CSTPIS.Open;

             CSTCOFINS.SQL.Clear;
             CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS ORDER BY Codigo');
             CSTCOFINS.Open;

             NivelClassificacao.SQL.Clear;
             NivelClassificacao.SQL.Add('SELECT * FROM NivelClassificacao ORDER BY Nivel, Descricao');
             NivelClassificacao.Open;

             BCCredito.SQL.Clear;
             BCCredito.SQL.Add('SELECT * FROM BCCredito ORDER BY Codigo');
             BCCredito.Open;

             TiposProcesso.SQL.Clear;
             TiposProcesso.SQL.Add('SELECT * FROM TiposProcesso ORDER BY Codigo');
             TiposProcesso.Open;

             DRE.SQL.Clear;
             DRE.SQL.Add('SELECT * FROM DRE ORDER BY Codigo');
             DRE.Open;

             CodigosRFB.SQL.Clear;
             CodigosRFB.SQL.Add('SELECT * FROM CodigosRFB WHERE Ativo = 1 ORDER BY Descricao');
             CodigosRFB.Open;

             TiposDocumentos.SQL.Clear;
             TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos ORDER BY Descricao');
             TiposDocumentos.Open;

             Configuracao.Open;

             If ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
                tCodigo.Connection := Banco
             else
                tCodigo.Connection := Dados.Banco_Empresas;
        End;
        PageControl1.ActivePageIndex := 0;
        Screen.Cursor := crDefault;
end;

procedure TCadastro_ClassificacaoFinanceira.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_ClassificacaoFinanceira.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      cTipo.Enabled   := true;

      If (Button = nbEdit) or (Button = nbInsert) then begin
         mClassAntes    := Trim(Dados.ClassificacaoFinanceiraCodigo.AsString);
         cTipo.Enabled  := Button = nbInsert;
         mCodigoAntes   := Dados.ClassificacaoFinanceiraCodigo.AsString;
         Grade.Enabled  := false;
         
         If Button = nbInsert then begin
            Dados.ClassificacaoFinanceiraTitulo.Value                := False;
            Dados.ClassificacaoFinanceiraSomente_Faturamento.Value   := False;
            Dados.ClassificacaoFinanceiraDevolucao.Value             := False;
            Dados.ClassificacaoFinanceiraProcesso_Obrigatorio.Value  := false;
            Dados.ClassificacaoFinanceiraRelatorio.Value             := False;
            Dados.ClassificacaoFinanceiraCusto.Value                 := False;
            Dados.ClassificacaoFinanceiraCusto_Seletivo.Value        := False;
            Dados.ClassificacaoFinanceiraBaixa_Automatica.Value      := False;
            Dados.ClassificacaoFinanceiraAdiantamento.Value          := False;
            Dados.ClassificacaoFinanceiraCambio.Value                := False;
            Dados.ClassificacaoFinanceiraDespesa_Fixa.Value          := False;
            Dados.ClassificacaoFinanceiraNota_Referencia.Value       := False;
            Dados.ClassificacaoFinanceiraTransferencia.Value         := False;
            Dados.ClassificacaoFinanceiraFechamento_Processo.Value   := False;

            Dados.ClassificacaoFinanceiraDesativada.Value            := False;
            Dados.ClassificacaoFinanceiraTipo_Lancamento.Value       := 'D';
            Dados.ClassificacaoFinanceiraTipo.Value                  := 'P';
            Dados.ClassificacaoFinanceiraModalidade_Importacao.Value := 0;
            cTipoLancamento.ItemIndex                                := 1;
         End;

         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;

         aDados.Enabled    := True;
         aContabil.Enabled := True;
         If PageControl1.ActivePageIndex = 0 then cCodigo.SetFocus;

         If PageControl1.ActivePageIndex = 1 then cProvisaoContaD.SetFocus;
      end else begin
         aDados.Enabled    := false;
         aContabil.Enabled := false;
      End;
end;

procedure TCadastro_ClassificacaoFinanceira.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.ClassificacaoFinanceiraCodigo.AsString;
      Dados.ClassificacaoFinanceira.Close;
      dmContab.Historicos.Close;
      tHistoricos.Close;
      dmContab.PlanoContas.Close;

      LimpaMemoria;
      Cadastro_ClassificacaoFinanceira.Release;
      Cadastro_ClassificacaoFinanceira := nil;
end;

procedure TCadastro_ClassificacaoFinanceira.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Codigo/Descrição:', mPesquisa);
     if mPesquisa <> '' then cPesq1.Clear;
     With Dados do begin
          If ClassificacaoFinanceira.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
             If ClassificacaoFinanceira.Locate('Descricao', mPesquisa, [loPartialKey]) = False then begin
                tPesquisa.SQL.Clear;
                tPesquisa.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Descricao LIKE'+QuotedStr('%'+UpperCase(mPesquisa)+'%')+')');
                tPesquisa.Open;
                ClassificacaoFinanceira.Locate('Codigo', tPesquisa.FieldByName('Codigo').AsString, [loCaseInsensitive]);
             End;
          End;
     End;
end;

procedure TCadastro_ClassificacaoFinanceira.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With Dados do Begin
          If (Column.FieldName = 'Titulo') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (ClassificacaoFinanceira.FieldByName('Titulo').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TCadastro_ClassificacaoFinanceira.GradeTitleClick(Column: TColumn);
begin
      With Dados do begin
           if Column.Index < 2 then begin
              ClassificacaoFinanceira.SQL.Clear;
              ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira ORDER BY ');
              If mUltimoClick <> Grade.Columns[Column.Index].FieldName then begin
                 ClassificacaoFinanceira.SQL.Add(Grade.Columns[Column.Index].FieldName+' ASC');
                 mUltimoClick := Grade.Columns[Column.Index].FieldName;
              end else begin
                 ClassificacaoFinanceira.SQL.Add(Grade.Columns[Column.index].FieldName+' DESC');
                 mUltimoClick := '';
              End;
              ClassificacaoFinanceira.Open;
           end;
      End;

end;

procedure TCadastro_ClassificacaoFinanceira.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_ClassificacaoFinanceira.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      Navega.SetFocus;

      // Verifica se o código da classificação já esta cadastrado.
      with Dados do begin
           If (Button = nbPost) then begin
              If Trim(ClassificacaoFinanceiraCodigo.AsString) = '' then begin
                 MessageDlg('Código da classificação financeira é campo obrigatório.', mtError, [mbok], 0);
                 cCodigo.SetFocus;
                 Abort;
              End;
              If ClassificacaoFinanceiraNivel_Codigo.AsInteger = 0 then begin
                 MessageDlg('Nivel de acesso da classificação financeira é campo obrigatório.', mtError, [mbok], 0);
                 cNivel.SetFocus;
                 Abort;
              End;
              If Trim(ClassificacaoFinanceiraDescricao.AsString) = '' then begin
                 MessageDlg('Descrição da classificação financeira é campo obrigatório.', mtError, [mbok], 0);
                 cDescricao.SetFocus;
                 Abort;
              End;
              If (ClassificacaoFinanceiraAliquota_PIS.Value > 0) and (Trim(ClassificacaoFinanceiraCST_PIS.AsString) = '') then begin
                 MessageDlg('CST de PIS é campo obrigatório quando há alíquota de PIS.', mtError, [mbok], 0);
                 cCodigoCSTPIS.SetFocus;
                 Abort;
              End;
              If (ClassificacaoFinanceiraAliquota_COFINS.Value > 0) and (Trim(ClassificacaoFinanceiraCST_COFINS.AsString) = '') then begin
                 MessageDlg('CST de COFINS é campo obrigatório quando há alíquota de COFINS.', mtError, [mbok], 0);
                 cCodigoCSTCOFINS.SetFocus;
                 Abort;
              End;
              If (Trim(ClassificacaoFinanceiraCST_PIS.AsString) <> '') and (Trim(ClassificacaoFinanceiraCST_COFINS.AsString) = '') then begin
                 MessageDlg('CST de COFINS é campo obrigatório quando há CST de PIS.', mtError, [mbok], 0);
                 cCodigoCSTCOFINS.SetFocus;
                 Abort;
              End;
              If (Trim(ClassificacaoFinanceiraCST_PIS.AsString) = '') and (Trim(ClassificacaoFinanceiraCST_COFINS.AsString) <> '') then begin
                 MessageDlg('CST de PIS é campo obrigatório quando há CST de COFINS.', mtError, [mbok], 0);
                 cCodigoCSTPIS.SetFocus;
                 Abort;
              End;

              ClassificacaoFinanceiraCodigo.Value := Trim(ClassificacaoFinanceiraCodigo.Value);
              ClassificacaoFinanceiraNivel.Value  := Dados.NivelClassificacaoNivel.asinteger;

              tCodigo.SQL.Clear;
              tCodigo.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Codigo = :pCodigo) ');
              tCodigo.ParamByName('pCodigo').AsString := cCodigo.Text;
              tCodigo.Open;
              If (tCodigo.RecordCount > 0) and (tCodigo.FieldByName('Codigo').AsString <> mCodigoAntes ) then begin
                 MessageDlg('Código de classificação financeira "'+cCodigo.Text+'" já utilizado para "'+tCodigo.FieldByName('Descricao').AsString+'".'+#13+#13+'Por favor, informe um código diferente.' , mtError, [mbok], 0);
                 Abort;
              End;

              // Atualiza os lançamentos do financeiro em caso de alteração do código da classificação financeira.
              Screen.Cursor := crSQLWait;
              Janela_Processamento                    := TJanela_Processamento.Create(Self);
              Janela_Processamento.Progresso.Position := 0;
              Janela_Processamento.Progresso.Max      := 100;
              Janela_Processamento.lProcesso.Caption  := 'Atualizando o financeiro...Aguarde';
              Janela_Processamento.Show;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET Classificacao  = :pClassificacao,');
              PagarReceber.SQL.Add('                        CustoConta     = :pCusto,');
              PagarReceber.SQL.Add('                        Custo_Seletivo = :pSeletivo,');
              PagarReceber.SQL.Add('                        Nivel          = :pNivel,');
              PagarReceber.SQL.Add('                        Custo_Entrada  = :pCustoEntrada,');
              PagarReceber.SQL.Add('                        Custo_Outros   = :pCustoOutros');
              PagarReceber.SQL.Add('WHERE (LTRIM(RTRIM(Classificacao)) = :pClassAntes)' );
              PagarReceber.ParamByName('pClassAntes').AsString    := mClassAntes;
              PagarReceber.ParamByName('pClassificacao').AsString := Trim(ClassificacaoFinanceiraCodigo.AsString);
              PagarReceber.ParamByName('pCusto').AsBoolean        := ClassificacaoFinanceiraCusto.AsBoolean;
              PagarReceber.ParamByName('pSeletivo').AsBoolean     := ClassificacaoFinanceiraCusto_Seletivo.AsBoolean;
              PagarReceber.ParamByName('pNivel').AsInteger        := ClassificacaoFinanceiraNivel.Value;
              PagarReceber.ParamByName('pCustoEntrada').AsBoolean := ClassificacaoFinanceiraCusto_Entrada.AsBoolean;
              PagarReceber.ParamByName('pCustoOutros').AsBoolean  := ClassificacaoFinanceiraCusto_Outros.AsBoolean;
              PagarReceber.Execute;
              PagarReceber.SQL.Clear;
              PagarReceber.Close;

              Janela_Processamento.Progresso.Position := 100;
              Application.ProcessMessages;
              Janela_Processamento.Close;
              Screen.Cursor := crDefault;
           End;

           // Verifica se classificacção financeira ja foi utilizada.
           If Button = nbDelete then begin
              tMovimento.SQL.Clear;
              tMovimento.SQL.Add('SELECT COUNT(*) AS Movimento FROM PagarReceber WHERE(Classificacao = :pClass)');
              tMovimento.ParamByName('pClass').AsString := Trim(ClassificacaoFinanceiraCodigo.AsString);
              tMovimento.Open;
              If tMovimento.FieldByName('Movimento').AsInteger > 0 then begin
                 MessageDlg('Esta Classificação Financeira não pode ser excluida, pois ja foram feitos lançamentos financeiros utilizando-a.', mtInformation, [mbOK], 0);
                 ClassificacaoFinanceira.Cancel;
                 Abort;
              End;
              if MessageDlg('Deseja realmente excluir esta classificação?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
           End;
      End;
      Grade.Enabled := true;
end;

procedure TCadastro_ClassificacaoFinanceira.Clientes1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'CLIENTE';
end;

procedure TCadastro_ClassificacaoFinanceira.FORNECEDORES1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'FORNECEDOR';
end;

procedure TCadastro_ClassificacaoFinanceira.BANCOS1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'BANCO';
end;

procedure TCadastro_ClassificacaoFinanceira.Processo1Click(Sender: TObject);
begin
      TCustomEdit(ActiveControl).Text := 'PROCESSO';
end;

procedure TCadastro_ClassificacaoFinanceira.RxDBLookupCombo3Exit(Sender: TObject);
begin
     with Dados, ClassificacaoFinanceira do begin
          FieldByName('Tributo').Value := TiposDocumentos.FieldByName('Tributo').AsBoolean;
     end;
end;

procedure TCadastro_ClassificacaoFinanceira.cProvisaoContaDExit(Sender: TObject);
Var
    mVerifica : String;
begin
      mVerifica := Trim(Dados.ClassificacaoFinanceiraProvisao_ContaD.Value);
      If (mVerifica <> 'CLIENTE') and (mVerifica <> 'FORNECEDOR') and (mVerifica <> 'BANCO') and (mVerifica <> 'PROCESSO') then begin
         If (Trim(mVerifica) <> '') and (ApenasLetras(mVerifica) <> '') then begin
            ShowMessage('Variavel de conta invalida!'+#13+#13+'Digite uma das variaveis: "CLIENTE", "FORNECEDOR", "PROCESSO", "BANCO".'+#13+#13+'Ou click com o botão direito do mous sobre o campo e escolha a variavel.');
            cProvisaoContaD.SetFocus;
         End;
      End;
end;

procedure TCadastro_ClassificacaoFinanceira.cProvisaoContaCExit(Sender: TObject);
Var
    mVerifica : String;
begin
      mVerifica := Trim(Dados.ClassificacaoFinanceiraProvisao_ContaC.Value);
      If (mVerifica <> 'CLIENTE') and (mVerifica <> 'FORNECEDOR') and (mVerifica <> 'BANCO') and (mVerifica <> 'PROCESSO') then begin
         If (Trim(mVerifica) <> '') and (ApenasLetras(mVerifica) <> '') then begin
            ShowMessage('Variavel de conta invalida!'+#13+#13+'Digite uma das variaveis: "CLIENTE", "FORNECEDOR", "PROCESSO", "BANCO".'+#13+#13+'Ou click com o botão direito do mous sobre o campo e escolha a variavel.');
            cProvisaoContaC.SetFocus;
         End;
      End;
end;

procedure TCadastro_ClassificacaoFinanceira.cTipoChange(Sender: TObject);
begin
      If cTipo.ItemIndex = 0 then
         lContaPagamento.Caption := 'Conta Débito';
      If cTipo.ItemIndex = 1 then
         lContaPagamento.Caption := 'Conta Crédito';
      cBoleto.Enabled := cTipo.ItemIndex = 1;
end;

procedure TCadastro_ClassificacaoFinanceira.cPagamentoContaExit(Sender: TObject);
Var
    mVerifica: String;
begin
      mVerifica := Trim(Dados.ClassificacaoFinanceiraPagamento_Conta.Value);
      If (mVerifica <> 'CLIENTE') and (mVerifica <> 'FORNECEDOR') and (mVerifica <> 'PROCESSO') and (mVerifica <> 'BANCO') then begin
         If (Trim(mVerifica) <> '') and (ApenasNumeros(mVerifica) = '') then begin
            ShowMessage('Variavel de conta invalida!'+#13+#13+'Digite uma das variaveis: "CLIENTE", "FORNECEDOR", "PROCESSO"  ou "BANCO".'+#13+#13+'Ou click com o botão direito do mous sobre o campo e escolha a variavel.');
            cPagamentoConta.SetFocus;
         End;
      End;
end;

procedure TCadastro_ClassificacaoFinanceira.StaticText7Click(Sender: TObject);
begin
      Cadastro_ClassificacaoNivel := TCadastro_ClassificacaoNivel.Create(Self);
      Cadastro_ClassificacaoNivel.Caption := Caption;
      Cadastro_ClassificacaoNivel.ShowModal;
      Dados.ClassificacaoFinanceiraNivel.AsString := Clipboard.AsText;
end;

procedure TCadastro_ClassificacaoFinanceira.cMostrarClick(Sender: TObject);
begin
      With Dados do begin
           ClassificacaoFinanceira.SQL.Clear;
           If cMostrar.ItemIndex = 0 then ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada     <> 1)     ORDER BY Codigo');
           If cMostrar.ItemIndex = 1 then ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada     =  1)     ORDER BY Codigo');
           If cMostrar.ItemIndex = 2 then ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Titulo         =  1)     ORDER BY Codigo');
           If cMostrar.ItemIndex = 3 then ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Titulo         <> 1)     ORDER BY Codigo');
           If cMostrar.ItemIndex = 4 then ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Custo_Entrada  =  1)     ORDER BY Codigo');
           If cMostrar.ItemIndex = 5 then ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Custo          =  1)     ORDER BY Codigo');
           If cMostrar.ItemIndex = 6 then ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Custo_Seletivo =  1)     ORDER BY Codigo');
           If cMostrar.ItemIndex = 7 then ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo           =  ''P'') ORDER BY Codigo');
           If cMostrar.ItemIndex = 8 then ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo           =  ''R'') ORDER BY Codigo');
           If cMostrar.ItemIndex = 9 then ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira ORDER BY Codigo');
           ClassificacaoFinanceira.Open;
      End;
end;

procedure TCadastro_ClassificacaoFinanceira.StaticText11Click(  Sender: TObject);
begin
      Cadastro_TiposProcesso := TCadastro_TiposProcesso.Create(Self);
      Cadastro_TiposProcesso.Caption := Caption;
      Cadastro_TiposProcesso.ShowModal;
      Dados.ClassificacaoFinanceiraModalidade_Importacao.AsString := Clipboard.AsText;
end;

procedure TCadastro_ClassificacaoFinanceira.cCustoSeletivoClick(Sender: TObject);
begin
      cCusto.Enabled        := not (cCustoSeletivo.Checked or cCustoEntrada.Checked);
      cCustoEntrada.Enabled := not (cCustoSeletivo.Checked or cCustoEntrada.Checked);
end;

procedure TCadastro_ClassificacaoFinanceira.cCodigoChange(Sender: TObject);
begin
     with Dados do begin
          Clientes1.Enabled     := ClassificacaoFinanceiraTipo.AsString = 'R';
          Fornecedores1.Enabled := ClassificacaoFinanceiraTipo.AsString = 'P';
     end;
end;

procedure TCadastro_ClassificacaoFinanceira.cCustoClick(Sender: TObject);
begin
      cCustoSeletivo.Enabled := not (cCusto.Checked or cCustoEntrada.Checked);
end;

procedure TCadastro_ClassificacaoFinanceira.Button1Click(Sender: TObject);
begin                                                                             
     With Dados do begin
          ClassificacaoFinanceiraDRE_Principal.Clear;
          ClassificacaoFinanceiraDRE_Juros.Clear;
          ClassificacaoFinanceiraDRE_Desconto.Clear;
     End;
end;

procedure TCadastro_ClassificacaoFinanceira.bLimparProvisaoClick(Sender: TObject);
begin
     With Dados do begin
          ClassificacaoFinanceiraProvisao_ContaD.Clear;
          ClassificacaoFinanceiraProvisao_ContaC.Clear;
          ClassificacaoFinanceiraProvisao_Historico.Clear;
     End;
end;

procedure TCadastro_ClassificacaoFinanceira.StaticText16Click( Sender: TObject);
begin
      Cadastro_CodigosRFB := TCadastro_CodigosRFB.Create(Self);
      Cadastro_CodigosRFB.Caption := Caption;
      Cadastro_CodigosRFB.ShowModal;
      Dados.ClassificacaoFinanceiraCodigo_RFB.AsString := Clipboard.AsText;
end;

procedure TCadastro_ClassificacaoFinanceira.Button2Click(Sender: TObject);
begin
      If Menu_Principal.mUsuarioNome <> 'ADMINISTRADOR' then begin
         ShowMessage('Apenas usúario "ADMINISTRADOR" pode utilizar esta opção.');
         Abort;
      End;
     Cadastro_ClassificacaoFiliais := TCadastro_ClassificacaoFiliais.Create(Self);
     Cadastro_ClassificacaoFiliais.Caption := Caption;
     Cadastro_ClassificacaoFiliais.ShowModal;
end;

procedure TCadastro_ClassificacaoFinanceira.cPesq1Change(Sender: TObject);
begin
      with Dados do begin
           ClassificacaoFinanceira.SQL.Clear;
           if Trim(cPesq1.Text) <> '' then
              ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Descricao LIKE'+QuotedStr('%'+cPesq1.Text+'%')+') ORDER BY Descricao')
           else
              ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira ORDER BY Descricao');
           ClassificacaoFinanceira.Open;
      end;
end;

procedure TCadastro_ClassificacaoFinanceira.SpeedButton2Click(Sender: TObject);
begin
      cPesquisa.Clear;
end;

procedure TCadastro_ClassificacaoFinanceira.SpeedButton1Click(Sender: TObject);
begin
      cPesquisaH.Clear;
end;

procedure TCadastro_ClassificacaoFinanceira.cPesquisaChange(Sender: TObject);
begin
      with dmContab do begin
           PlanoContas.SQL.Clear;
           if Trim(cPesquisa.Text) <> '' then
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+') ORDER BY Descricao, Conta, Codigo')
           else
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Descricao, Conta, Codigo');
           PlanoContas.Open;
      end;
end;

procedure TCadastro_ClassificacaoFinanceira.cPesquisaHChange(Sender: TObject);
begin
     tHistoricos.SQL.Clear;
     if Trim(cPesquisaH.Text) <> '' then
        tHistoricos.SQL.Add('SELECT * FROM HistoricoPadrao WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisaH.Text+'%')+') ORDER BY Descricao')
     else
        tHistoricos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Descricao');
     tHistoricos.Open;
end;

end.

