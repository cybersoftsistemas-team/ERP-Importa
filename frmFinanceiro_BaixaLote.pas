unit frmFinanceiro_BaixaLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, DBCtrls, Mask, RXDBCtrl,
  RXCtrls, Vcl.ExtCtrls, Grids, DBGrids, Funcoes, RxLookup, Buttons, MemDS, RxCurrEdit, RxToolEdit, ClipBrd;

type
  TFinanceiro_BaixaLote = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    bDesmarcar: TButton;
    tTitulosTipo: TStringField;
    tTitulosClassificacao: TStringField;
    tTitulosData_Vencimento: TDateTimeField;
    tTitulosProcesso: TStringField;
    tTitulosValor_Documento: TCurrencyField;
    tTitulosValor_Parcela: TCurrencyField;
    tTitulosValor_Operacao: TCurrencyField;
    tTitulosParcela: TStringField;
    tTitulosBeneficiario: TStringField;
    cTipo: TRadioGroup;
    tProcessos: TMSQuery;
    cFiltro: TGroupBox;
    StaticText1: TStaticText;
    cProcesso: TComboBox;
    StaticText2: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    bSelecionar: TButton;
    bBaixar: TButton;
    bLimpaFiltro: TSpeedButton;
    cSelecionar: TCheckBox;
    Grade: TRxDBGrid;
    Navega: TDBNavigator;
    tTitulosNumero: TLargeintField;
    StaticText3: TStaticText;
    cBeneficiario: TRxDBLookupCombo;
    tBeneficiarios: TMSQuery;
    dstBeneficiario: TDataSource;
    tBeneficiariosBeneficiario_Codigo: TStringField;
    tBeneficiariosBeneficiario_Nome: TStringField;
    tBeneficiariosBeneficiario_Tipo: TStringField;
    tTitulosValor_Baixado: TCurrencyField;
    tTitulosValor_Total: TCurrencyField;
    bPesquisar: TSpeedButton;
    tRegistro: TMSQuery;
    tTitulosDocumento_Descricao: TStringField;
    tTitulosNumero_Documento: TStringField;
    tTitulosData_Documento: TDateTimeField;
    tTitulosMulta: TCurrencyField;
    tTitulosJuros: TCurrencyField;
    tTitulosDesconto: TCurrencyField;
    tTitulosCambio: TBooleanField;
    bSelSP: TButton;
    tTitulosSolicitacao_Pgto: TIntegerField;
    tTitulosBanco: TSmallintField;
    tTitulosForma_Tipo: TStringField;
    tTitulosNumero_FormaTipo: TStringField;
    tSPCheque: TMSQuery;
    tTitulosObs_Titulo: TStringField;
    StaticText4: TStaticText;
    cData: TDateEdit;
    cTitulos: TCurrencyEdit;
    StaticText5: TStaticText;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    lBloqueado: TRxLabel;
    Image2: TImage;
    cTotal: TCurrencyEdit;
    StaticText6: TStaticText;
    bFiltrar: TSpeedButton;
    StaticText7: TStaticText;
    cDataFim: TDateEdit;
    cComissao: TCheckBox;
    StaticText8: TStaticText;
    cBanco: TRxDBLookupCombo;
    StaticText9: TStaticText;
    tBancos: TMSQuery;
    dstBancos: TDataSource;
    tBancosConta: TStringField;
    tBancosCodigo: TSmallintField;
    tBancosNome: TStringField;
    tBancosEmpresa: TSmallintField;
    tBancosNome_Emp: TStringField;
    cEmpresa: TRxDBLookupCombo;
    tEmpresa: TMSQuery;
    dstEmpresa: TDataSource;
    tEmpresaEmpresa: TSmallintField;
    tEmpresaNome: TStringField;
    bPesqBanco: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StaticText10: TStaticText;
    cFilial: TRxDBLookupCombo;
    tFiliais: TMSQuery;
    tFiliaisFilial: TSmallintField;
    tFiliaisNome: TStringField;
    tFiliaisCNPJ: TStringField;
    tFiliaisEstado: TStringField;
    dstFiliais: TDataSource;
    tTitulosCNPJ_CPF: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bDesmarcarClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bLimpaFiltroClick(Sender: TObject);
    procedure bBaixarClick(Sender: TObject);
    procedure Filtra(Coluna: Integer; Ordem: Boolean);
    procedure GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
    procedure bSelSPClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure lBloqueadoClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SomaSel;
    procedure bFiltrarClick(Sender: TObject);
    procedure GradeTitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
    procedure cEmpresaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bPesqBancoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mUltimoClick   : String;
    mContador      : integer;
    mContadorFinal : integer;
    mSelecionou    : boolean;
    mSolicitacao   : Integer;
    mCheque        : Integer;
    mFiltra        : Boolean;
    CompClass
   ,CompBanco: string;
  end;

var
  Financeiro_BaixaLote: TFinanceiro_BaixaLote;

implementation

uses frmDados, frmFinanceiro_BaixaLoteDados, frmMenu_Principal, frmFinanceiro_BloquearPeriodo, frmFinanceiro_Pesquisa, frmPesquisaGerais;

{$R *.dfm}

procedure TFinanceiro_BaixaLote.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_BaixaLote.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_BaixaLote.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     tTitulos.Close;
     FecharTabelas(Dados, nil, nil, nil); 
     Financeiro_BaixaLote.Release;
     Financeiro_BaixaLote := nil;
end;

procedure TFinanceiro_BaixaLote.bDesmarcarClick(Sender: TObject);
begin
     Grade.UnselectAll;
end;

procedure TFinanceiro_BaixaLote.bSelecionarClick(Sender: TObject);
begin
     Grade.SelectAll;
end;

procedure TFinanceiro_BaixaLote.Filtra(Coluna:Integer; Ordem: Boolean);
begin
     If mFiltra = true then begin
        Screen.Cursor := crSQLWait;
        Grade.DisableScroll;
        Grade.UnselectAll;
        with tTitulos do begin
             DisableControls;
             SQL.Clear;
             SQL.Add('SELECT DISTINCT');
             SQL.Add('       Numero,');
             SQL.Add('       pr.Tipo,');
             SQL.Add('       (SELECT Descricao FROM '+CompClass+' CF WHERE CF.Codigo = Classificacao) AS Classificacao,');
             SQL.Add('       (SELECT Cambio    FROM '+CompClass+' CF WHERE CF.Codigo = Classificacao) AS Cambio,');
             SQL.Add('       Data_Vencimento,');
             SQL.Add('       Processo,');
             SQL.Add('       Valor_Documento,');
             SQL.Add('       Valor_Parcela,');
             SQL.Add('       Valor_Total,');
             SQL.Add('       Multa,');
             SQL.Add('       Juros,');
             SQL.Add('       Desconto,');
             SQL.Add('       Desconto_Liquidacao,');
             SQL.Add('       Valor_Operacao,');
             SQL.Add('       Valor_Baixado,');
             SQL.Add('       Parcela,');
             SQL.Add('       (SELECT MAX(Descricao) FROM Cybersoft_Cadastros.dbo.TiposDocumentos WHERE(Codigo = pr.Documento)) AS Documento_Descricao,');
             SQL.Add('       Numero_Documento,');
             SQL.Add('       Data_Documento,');
             SQL.Add('       CASE WHEN Fornecedor <> 0    THEN ( SELECT Nome FROM Fornecedores WHERE (Fornecedores.Codigo = Fornecedor) )');
             SQL.Add('            WHEN Cliente    <> 0    THEN ( SELECT Nome FROM Clientes     WHERE (Clientes.Codigo     = Cliente) )');
             SQL.Add('            WHEN Orgao      <> '''' THEN ( SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE (Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo = Orgao) )');
             SQL.Add('       END AS Beneficiario,');
             SQL.Add('       CASE WHEN Fornecedor <> 0    THEN ( SELECT isnull(CNPJ, '''')+isnull(CPF,'''') FROM Fornecedores WHERE (Fornecedores.Codigo = Fornecedor) )');
             SQL.Add('            WHEN Cliente    <> 0    THEN ( SELECT isnull(CNPJ, '''')+isnull(CPF,'''') FROM Clientes     WHERE (Clientes.Codigo     = Cliente) )');
             SQL.Add('            WHEN Orgao      <> '''' THEN ( SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE (Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo = Orgao) )');
             SQL.Add('       END AS CNPJ_CPF,');
             SQL.Add('       Solicitacao_Pgto,');
             SQL.Add('       Banco,');
             SQL.Add('       Forma_Tipo,');
             SQL.Add('       Numero_FormaTipo,');
             SQL.Add('       CAST(Observacao AS VARCHAR(500)) AS Obs_Titulo,');
             SQL.Add('       Comissao = cast(iif(Classificacao in((select Classificacao_Pagamento from Configuracao), (select Classificacao_PagamentoPF from Configuracao)), 1, 0) as bit),');
             SQL.Add('       Quitado  = cast(0 as bit),');
             SQL.Add('       Fiscal');
             SQL.Add('into #Temp');
             SQL.Add('FROM   PagarReceber pr');
             SQL.Add('WHERE  (ISNULL((SELECT SUM(ROUND(prb.Valor, 2)) FROM PagarReceberBaixas prb WHERE(prb.Numero = pr.Numero)),0)) < ROUND(ISNULL(Valor_Parcela,0)+ISNULL(Juros, 0)+ISNULL(Multa,0)-');
             SQL.Add('       (ISNULL(Desconto,0)+ISNULL(Desconto_Liquidacao, 0)), 2)');
             SQL.Add('       AND (Nivel <= :pNivel) ');
             ParamByName('pNivel').AsInteger       := Menu_Principal.mUsuarioNivel;
             // Filtra pelo Tipo.
             If cTipo.ItemIndex = 0 then
                SQL.Add(' AND (pr.Tipo = ''P'')')
             else
                SQL.Add(' AND (pr.Tipo = ''R'')');
             // Filtra pela Data.
             if not DataLimpa(cData.Text) then begin
                if DataLimpa(cDataFim.Text) then begin
                   SQL.Add(' AND (Data_Vencimento = :pData)');
                   ParamByName('pData').AsDate := cData.Date;
                end else begin
                   SQL.Add(' AND (Data_Vencimento between :pDataIni and :pDataFim)');
                   ParamByName('pDataIni').AsDate := cData.Date;
                   ParamByName('pDataFim').AsDate := cDataFim.Date;
                end;
             end;
             // Filtra pelo Processo.
             If Trim(cProcesso.Text) <> '' then begin
                SQL.Add(' AND (Processo = :pProcesso)');
                ParamByName('pProcesso').AsString := cProcesso.Text;
             End;
             // Filtra pelo Classificacao Financeira.
             If Trim(cClassificacao.Text) <> '' then begin
                SQL.Add(' AND (Classificacao = :pClassificacao)');
                ParamByName('pClassificacao').AsString := Dados.ClassificacaoFinanceiraCodigo.Value;
             End;
             // Filtra pelo Beneficiario.
             If Trim(cBeneficiario.Text) <> '' then begin
                If tBeneficiarios.FieldByName('Beneficiario_Tipo').AsString = 'F' then SQL.Add(' AND (Fornecedor = :pBeneficiario)');
                If tBeneficiarios.FieldByName('Beneficiario_Tipo').AsString = 'C' then SQL.Add(' AND (Cliente    = :pBeneficiario)');
                If tBeneficiarios.FieldByName('Beneficiario_Tipo').AsString = 'O' then SQL.Add(' AND (Orgao      = :pBeneficiario)');
                ParamByName('pBeneficiario').AsString := tBeneficiarios.FieldByName('Beneficiario_Codigo').AsString;
             End;
             // Filtra pelo número da solicitação de pagamento.
             If mSolicitacao > 0 then begin
                SQL.Add(' AND (Solicitacao_Pgto = :pSolicitacao)');
                ParamByName('pSolicitacao').AsInteger := mSolicitacao;
                Grade.SelectAll;
             End;
             // Filtra pelo número do cheque.
             If mCheque > 0 then begin
                SQL.Add(' AND (Numero_FormaTipo = :pCheque)');
                ParamByName('pCheque').AsString := InttoStr(mCheque);
                Grade.SelectAll;
             End;
             // Filtra pelo código da empresa.
             If cEmpresa.DisplayValue <> '' then begin
                SQL.Add('AND (select Empresa from Bancos where Codigo = Banco) = :pEmpresa');
                ParamByName('pEmpresa').Asinteger := tEmpresa.FieldByName('Empresa').AsInteger;
                Grade.SelectAll;
             End;
             // Filtra pelo código do banco.
             If cBanco.DisplayValue <> '' then begin
                SQL.Add(' AND (Banco = :pBanco)');
                ParamByName('pBanco').Asinteger := tBancos.FieldByName('Codigo').AsInteger;
                Grade.SelectAll;
             End;
             // Filtra pelo código da filial.
             If cFilial.DisplayValue <> '' then begin
                SQL.Add(' AND (pr.Filial = :pFilial)');
                ParamByName('pFilial').Asinteger := tFiliais.FieldByName('Filial').AsInteger;
                Grade.SelectAll;
             End;
             // Filtra pelas comissões que tem os titulos liquidados.
             if cComissao.Checked then begin
                sql.add('update #temp set Quitado = iif((select sum(Valor) from PagarReceberBaixas prb where prb.Numero in(select Numero from PagarReceber pr where pr.Tipo = ''R'' and pr.Fiscal = #temp.Fiscal)) -');
                sql.add('                               (select sum(Valor_Parcela) from PagarReceber pr where pr.Fiscal = #temp.Fiscal and Tipo = ''R'') = 0, 1, 0)');
                SQL.Add('where Tipo = ''P'' ');
                SQL.Add('and Comissao = 1');
                SQL.Add('select * from #temp where Quitado = 1');
             end else begin
                SQL.Add('select * from #temp');
             end;
             If Ordem = True then begin
                If mUltimoClick <> Grade.Columns[Coluna].FieldName then begin
                   SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' ASC');
                   mUltimoClick := Grade.Columns[Coluna].FieldName;
                end else begin
                   SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' DESC');
                   mUltimoClick := '';
                End;
             end else begin
                SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' DESC');
             End;
             SQL.Add('drop table #temp');
             //SQL.SaveToFile('c:\temp\Filtro_Baixa.sql');
             Open;
        end;
        
        If (mSolicitacao+mCheque) > 0 then begin
           Grade.SelectAll;
           Grade.Enabled := false;
        end else begin
           Grade.Enabled := true;
        End;

        If cSelecionar.Checked = True then begin 
           tTitulos.DisableControls;
           Grade.DisableScroll;
           Grade.SelectAll;
           Grade.EnableScroll;
           tTitulos.EnableControls;
        end;

        Grade.EnableScroll;
        tTitulos.EnableControls;
        cTitulos.Value := tTitulos.RecordCount;
     End;
     SomaSel;
     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_BaixaLote.bLimpaFiltroClick(Sender: TObject);
begin
      mFiltra                 := false;
      cData.Clear;
      cDataFim.Clear;
      mSolicitacao            :=  0;
      mCheque                 :=  0;
      cClassificacao.KeyValue := -1;
      cProcesso.ItemIndex     := -1;
      cBeneficiario.KeyValue  := -1;
      mFiltra                 := True;
      cComissao.Checked       := false;
      cSelecionar.Checked     := false;
      cEmpresa.KeyValue       := -1;
      cBanco.KeyValue         := -1;

      Filtra(1, true);
end;

procedure TFinanceiro_BaixaLote.bBaixarClick(Sender: TObject);
begin
     If Grade.SelectedRows.Count = 0 then begin
        ShowMessage('Não há nenhum título selecionado para baixar!'+#13+#13+'Mamtenha a tecla <Ctrl> pressionada para selecionar mais de um título.');
        Abort;
     End;

     Financeiro_BaixaLoteDados := TFinanceiro_BaixaLoteDados.Create(Self);
     Financeiro_BaixaLoteDados.Caption := Caption;
     If (mSolicitacao+mCheque) > 0 then begin
        Financeiro_BaixaLoteDados.cBanco.KeyValue      := tTitulosBanco.AsInteger;
        Financeiro_BaixaLoteDados.cForma.Text          := tTitulosForma_Tipo.AsString;
        Financeiro_BaixaLoteDados.cForma.ItemIndex     := Financeiro_BaixaLoteDados.cForma.Items.IndexOf(Trim(tTitulos.FieldByName('Forma_Tipo').AsString));
        Financeiro_BaixaLoteDados.cNumeroDOC.Text      := tTitulosNumero_FormaTipo.AsString;
        Financeiro_BaixaLoteDados.bDadosCheque.Enabled := Trim(tTitulos.FieldByName('Forma_Tipo').AsString) = 'CHEQUE';
     End;
     Financeiro_BaixaLoteDados.ShowModal;

     Filtra(1, False);
end;

procedure TFinanceiro_BaixaLote.GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If (mSelecionou = true) and (Key = 16) and (Grade.DataSource.DataSet.RecNo > mContador) then begin
        mContadorfinal                 := Grade.DataSource.DataSet.RecNo;
        Grade.DataSource.DataSet.RecNo := mContador;
        Repeat
             Grade.SelectedRows.CurrentRowSelected := true;
             Grade.DataSource.DataSet.Next
        until
             (Grade.DataSource.DataSet.RecNo = mContadorFinal) or (tTitulos.Eof);
     end;
     mContadorfinal := 0;
     mSelecionou    := false;
     SomaSel;
end;

procedure TFinanceiro_BaixaLote.GradeTitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
begin
     Filtra(ACol, True);
end;

procedure TFinanceiro_BaixaLote.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     mFiltra       := true;
     With Dados do begin
          CompClass := iif(not ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
          CompBanco := iif(not ConfiguracaoCompartilhar_Bancos.AsBoolean       , 'Bancos'                 , 'Cybersoft_Cadastros.dbo.Bancos');
          with tProcessos do begin
               SQL.Clear;
               SQL.Add('SELECT DISTINCT Processo FROM PagarReceber ORDER BY Processo');
               Open;
               First;
               cProcesso.Clear;

               while not Eof do begin
                     if Trim(FieldByName('Processo').AsString) <> '' then
                        cProcesso.Items.Add(FieldByName('Processo').AsString);
                     Next;
               end;
          end;
          with ClassificacaoFinanceira do begin
               sql.Clear;
               sql.Add('select * from '+CompClass+' where Desativada <> 1 order by Descricao');
               open;
          end;
          with tBeneficiarios do begin
               sql.Clear; 
               sql.add('select cast(Codigo as varchar(10)) as Beneficiario_Codigo');
               sql.add('      ,''F'' as Beneficiario_Tipo');
               sql.add('      ,cast(Nome as varchar(50)) as Beneficiario_Nome');
               sql.add('from   Fornecedores');
               sql.add('union all');
               sql.add('select cast(Codigo as varchar(10))');
               sql.add('      ,''C'' ' );
               sql.add('      ,cast(Nome as varchar(50))');
               sql.add('from   Clientes');
               sql.add('union all');
               sql.add('select Codigo'); 
               sql.add('      ,''O'' '); 
               sql.add('      ,cast(Nome as varchar(50))');
               sql.add('from   Cybersoft_Cadastros.dbo.OrgaosPublicos');
               sql.add('order by Beneficiario_Nome');
               open;
          end;
          with Empresas do begin 
               sql.Clear;
               sql.Add('select * from Empresas where Codigo = :pEmpresa');
               parambyname('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
               open;
          end;
          with tEmpresa do begin 
               sql.Clear;
               sql.Add('select distinct Empresa');
               sql.Add('               ,Nome = (select Razao_Social from Cybersoft_Cadastros.dbo.Empresas where Codigo = Empresa)');
               sql.Add('from Bancos');
               sql.Add('where isnull(Desativado, 0) = 0');
               sql.Add('order by Nome');
               open;
          end;
          with tBancos do begin
               sql.Clear;
               sql.Add('select Conta');
               sql.Add('      ,Codigo');
               sql.Add('      ,Nome');
               sql.Add('      ,Empresa');
               sql.Add('      ,Nome_Emp = (select Razao_Social from Cybersoft_Cadastros.dbo.Empresas where Codigo = Empresa)');
               sql.Add('from '+CompBanco);
               sql.Add('where isnull(Desativado, 0) = 0');
               sql.Add('Order by Nome, Empresa');
               open;
          end;
          with tFiliais do begin
               sql.clear;
               sql.add('select Filial = isnull(Numero_Filial, 0)');
               sql.add('      ,Nome   = iif(isnull(Numero_Filial, 0) = 0, ''MATRIZ'', ''FILIAL ''+cast(Numero_Filial as char(2)))');
               sql.add('      ,CNPJ   = substring(CNPJ,1,2)+''.''+substring(CNPJ,3,3)+''.''+substring(CNPJ,6,3)+''/''+substring(CNPJ,9,4)+''-''+substring(CNPJ,13,2)');
               sql.add('      ,Estado');
               sql.add('from Empresas');
               sql.add('where substring(CNPJ, 1, 8) = (select substring(CNPJ, 1, 8) from Cybersoft_Cadastros.dbo.Empresas where Codigo = :pCod)');
               sql.add('order by Filial');
               parambyname('pCod').Asinteger := Menu_Principal.mEmpresa;
               open;
          end;

          Configuracao.Open;

          // Mensagem informando até quando o movimento esta bloqueado.
          If Trim(RemoveCaracter('/', '', Dados.EmpresasFechamento_Financeiro.AsString)) <> '' then begin;
             lBloqueado.Visible := true;
             lBloqueado.Caption :='[MOVIMENTO BLOQUEADO DE '+ Dados.EmpresasFechamento_Financeiro.AsString+' ATÉ '+Dados.EmpresasFechamento_FinanceiroFinal.AsString+']';
          End;
     End;
     cTipo.ItemIndex := 0;
     Screen.Cursor   := crDefault;
end;

procedure TFinanceiro_BaixaLote.bPesqBancoClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'Bancos';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      Dados.Configuracao.Open;
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean, 'Dados', 'Empresa');
      PesquisaGerais.mFiltro := 'and isnull(Desativado, 0) = 0';
      PesquisaGerais.Showmodal;
      cBanco.keyValue := Clipboard.AsText;
end;

procedure TFinanceiro_BaixaLote.bPesquisarClick(Sender: TObject);
begin
     mSolicitacao := 0;
     mCheque      := 0;

     Financeiro_Pesquisa := TFinanceiro_Pesquisa.Create(Self);
     Financeiro_Pesquisa.Caption := Caption;
     Financeiro_Pesquisa.mJanela := 'Baixa';
     Financeiro_Pesquisa.ShowModal;
     cTitulos.Value := tTitulos.RecordCount;
end;

procedure TFinanceiro_BaixaLote.cEmpresaChange(Sender: TObject);
begin
      with tBancos do begin
           sql.Clear;
           sql.Add('select Conta');
           sql.Add('      ,Codigo');
           sql.Add('      ,Nome');
           sql.Add('      ,Empresa');
           sql.Add('      ,Nome_Emp = (select Razao_Social from Cybersoft_Cadastros.dbo.Empresas where Codigo = Empresa)');
           sql.Add('from Bancos');
           sql.Add('where isnull(Desativado, 0) = 0');
           //sql.Add('where Tipo_Conta = ''CORRENTE'' ');
           if cEmpresa.DisplayValue <> '' then begin
              sql.Add('and Empresa = :pEmpresa');
              parambyname('pEmpresa').AsInteger := tEmpresa.FieldByName('Empresa').AsInteger;
           end;
           sql.Add('Order by Nome, Empresa');
           open;
      end;
end;

procedure TFinanceiro_BaixaLote.cTipoClick(Sender: TObject);
begin
     cBeneficiario.ClearValue;
     If cTipo.ItemIndex = 0 then
        tBeneficiarios.Filter := '(Beneficiario_Tipo <> ''C'')'
     else
        tBeneficiarios.Filter := 'Beneficiario_Tipo = ''C'' ';
     Filtra(1, True);
end;

procedure TFinanceiro_BaixaLote.GradeCellClick(Column: TColumn);
begin
      If (mSelecionou = false) then begin
         mSelecionou := true;
         mContador   := Grade.DataSource.DataSet.RecNo;
      End;
      SomaSel;
end;

procedure TFinanceiro_BaixaLote.bSelSPClick(Sender: TObject);
Var
   mNumero:String;
begin
      mNumero := InputBox('Seleção de SP/Cheque', 'SP/Cheque Nº:', mNumero);
      Try
         StrtoInt(mNumero);
      Except
         ShowMessage('Número de solicitação ou cheque inválido.');
         Abort;
      End;

      mSolicitacao := 0;
      mCheque      := 0;
      With Dados do begin
           tSPCheque.SQL.Clear;
           tSPCheque.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceber WHERE(Solicitacao_Pgto = :pSolicitacao)');
           tSPCheque.ParamByName('pSolicitacao').AsInteger := StrtoInt(mNumero);
           tSPCheque.Open;

           If tSPCheque.FieldByName('Qtde').AsInteger > 0 then begin
              mSolicitacao := StrtoInt(mNumero);
              mCheque      := 0;
           end else begin
              tSPCheque.SQL.Clear;
              tSPCheque.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceber WHERE(Numero_FormaTipo = :pCheque)');
              tSPCheque.ParamByName('pCheque').AsString := mNumero;
              tSPCheque.Open;
              If tSPCheque.FieldByName('Qtde').AsInteger > 0 then begin
                 mSolicitacao := 0;
                 mCheque      := StrtoInt(mNumero);
              End;   
           End;
      End;

      Filtra(1, false);
end;

procedure TFinanceiro_BaixaLote.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      If (ssShift in Shift) then
          mSelecionou := true
      else
          mSelecionou := false;
end;

procedure TFinanceiro_BaixaLote.lBloqueadoClick(Sender: TObject);
begin
      If Menu_Principal.mnFinanceiro_Bloqueio.Enabled = true then begin
         Financeiro_BloquearPeriodo := TFinanceiro_BloquearPeriodo.Create(Self);
         Financeiro_BloquearPeriodo.Caption := Caption;
         Financeiro_BloquearPeriodo.ShowModal;
      End;
end;

procedure TFinanceiro_BaixaLote.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
      With Dados do begin
           If Odd(tTitulos.RecNo) then
              Grade.Canvas.Brush.Color:= $00DEEDDE
           else
              Grade.Canvas.Brush.Color:= clCream;

           If Grade.SelectedRows.CurrentRowSelected then begin
              TDbGrid(Sender).Canvas.Brush.Color := $004080FF;
              TDbGrid(Sender).Canvas.font.Color  := clBlack;
           end else begin
              TDbGrid(Sender).Canvas.font.Color := clBlack;
           End;

           If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := $00FFAAB0;
              FillRect(Rect);
              Font.Style := [fsbold];
              Font.Color := clBlack;
           End;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).Columns[Datacol].Field, State);
      End;
end;

procedure TFinanceiro_BaixaLote.SomaSel;
var
   i: Integer;
begin
      cTotal.Value := 0;
      for i := 1 to Grade.SelectedRows.Count do begin
          tTitulos.GotoBookMark((Grade.SelectedRows.Items[i-1]));
          cTotal.Value := cTotal.Value + tTitulos.FieldByName('Valor_Documento').AsCurrency;
      end;
end;

procedure TFinanceiro_BaixaLote.SpeedButton1Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := iif(cTipo.Itemindex = 0, 'Fornecedores', 'Clientes');
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Nome';
      PesquisaGerais.mBanco  := 'Empresa';
      PesquisaGerais.mFiltro := 'and isnull(Ativo, 0) = 1';
      PesquisaGerais.Showmodal;
      cBeneficiario.keyValue := Clipboard.AsText;

end;

procedure TFinanceiro_BaixaLote.SpeedButton2Click(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ClassificacaoFinanceira';
      PesquisaGerais.mCampo  := 'Codigo';
      PesquisaGerais.mCampo2 := 'Descricao';
      Dados.Configuracao.open;
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Classificacao.asboolean, 'Dados','Empresa');
      PesquisaGerais.mFiltro := 'AND Desativada <> 1';
      PesquisaGerais.Showmodal;
      cClassificacao.keyValue := Clipboard.AsText;
end;

procedure TFinanceiro_BaixaLote.bFiltrarClick(Sender: TObject);
begin
     bFiltrar.Enabled := false;
     Filtra(1, False);
     bFiltrar.Enabled := true;
end;

end.
