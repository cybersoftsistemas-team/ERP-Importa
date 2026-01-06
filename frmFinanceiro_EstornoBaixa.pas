unit frmFinanceiro_EstornoBaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Grids, DBGrids, RXDBCtrl, Vcl.StdCtrls, Mask,
  RxLookup, Vcl.ExtCtrls, RXCtrls, DBCtrls, Buttons, Funcoes, MemDS, RxCurrEdit, RxToolEdit, system.UITypes, ClipBrd;

type
  TFinanceiro_EstornoBaixa = class(TForm)
    bLimpaFiltro: TSpeedButton;
    bPesquisar: TSpeedButton;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    cTipo: TRadioGroup;
    GroupBox1: TGroupBox;
    StaticText1: TStaticText;
    cProcesso: TComboBox;
    StaticText2: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    StaticText3: TStaticText;
    cBeneficiario: TRxDBLookupCombo;
    Grade: TRxDBGrid;
    tTitulos: TMSQuery;
    dstTitulos: TDataSource;
    tProcessos: TMSQuery;
    tBeneficiarios: TMSQuery;
    tBeneficiariosBeneficiario_Tipo: TStringField;
    dstBeneficiario: TDataSource;
    tRegistro: TMSQuery;
    tTitulosNum: TLargeintField;
    tTitulosData: TDateTimeField;
    tTitulosValor: TCurrencyField;
    tTitulosProcesso: TStringField;
    tTitulosClassificacao: TStringField;
    tTitulosBeneficiario: TStringField;
    bEstorno: TButton;
    bSelSP: TButton;
    tSPCheque: TMSQuery;
    tTitulosRegistro: TLargeintField;
    tTitulosNumero_Documento: TStringField;
    StaticText4: TStaticText;
    cData: TDateEdit;
    tTitulosMulta: TCurrencyField;
    tTitulosJuros: TCurrencyField;
    tTitulosDesconto: TCurrencyField;
    tTitulosOrigem_Multa: TStringField;
    tTitulosOrigem_Juros: TStringField;
    tTitulosOrigem_Desconto: TStringField;
    tBeneficiariosBeneficiario_Codigo: TStringField;
    tBeneficiariosBeneficiario_Nome: TStringField;
    tTitulosBanco: TSmallintField;
    cTitulos: TCurrencyEdit;
    StaticText5: TStaticText;
    tBaixas: TMSQuery;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    lBloqueado: TRxLabel;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    tLan: TMSQuery;
    StaticText8: TStaticText;
    cBanco: TRxDBLookupCombo;
    StaticText9: TStaticText;
    cEmpresa: TRxDBLookupCombo;
    tEmpresa: TMSQuery;
    tEmpresaEmpresa: TSmallintField;
    tEmpresaNome: TStringField;
    dstEmpresa: TDataSource;
    tBancos: TMSQuery;
    tBancosConta: TStringField;
    tBancosCodigo: TSmallintField;
    tBancosNome: TStringField;
    tBancosEmpresa: TSmallintField;
    tBancosNome_Emp: TStringField;
    dstBancos: TDataSource;
    bPesqBanco: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    tFiliais: TMSQuery;
    tFiliaisFilial: TSmallintField;
    tFiliaisNome: TStringField;
    tFiliaisCNPJ: TStringField;
    dstFiliais: TDataSource;
    tFiliaisEstado: TStringField;
    StaticText6: TStaticText;
    cFilial: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cDataFim: TDateEdit;
    tTmp: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Filtra(Coluna:Integer; Ordem: Boolean);
    procedure cTipoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure bLimpaFiltroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bEstornoClick(Sender: TObject);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure bSelSPClick(Sender: TObject);
    procedure lBloqueadoClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure GradeTitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
    procedure cEmpresaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure bPesqBancoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mUltimoClick : String;
    Contador     : integer;
    Contadorfinal: integer;
    Selecionou   : boolean;
    mSolicitacao : Integer;
    mCheque      : Integer;
    mFiltra      : Boolean;
    CompClass
   ,CompBanco: string;
  end;
  
var
  Financeiro_EstornoBaixa: TFinanceiro_EstornoBaixa;

implementation

uses frmDados, frmDMContab, frmMenu_Principal, frmFinanceiro_BloquearPeriodo, frmFinanceiro_Pesquisa, frmPesquisaGerais;

{$R *.dfm}

procedure TFinanceiro_EstornoBaixa.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_EstornoBaixa.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Financeiro_EstornoBaixa.Release;
      Financeiro_EstornoBaixa := nil;
end;

procedure TFinanceiro_EstornoBaixa.Filtra(Coluna:Integer; Ordem: Boolean);
begin
     Screen.Cursor := crSQLWait;
     Grade.DisableScroll;
     If mFiltra = true then begin
        with tTitulos do begin
             DisableControls;
             Close;
             SQL.Clear;
             SQL.Add('SELECT PRB.Registro,');
             SQL.Add('       PRB.Numero AS Num,');
             SQL.Add('       PRB.Data,');
             SQL.Add('       PRB.Multa,');
             SQL.Add('       PRB.Origem_Multa,');
             SQL.Add('       PRB.Juros,');
             SQL.Add('       PRB.Origem_Juros,');
             SQL.Add('       PRB.Desconto,');
             SQL.Add('       PRB.Origem_Desconto,');
             SQL.Add('       PRB.Valor,');
             SQL.Add('       PRB.Banco,');
             SQL.Add('       PR.Processo AS Processo, ');
             if Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean then begin
                SQL.Add('       Classificacao = (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira WHERE Codigo = Classificacao),');
             end else begin
                SQL.Add('       Classificacao = (SELECT Descricao FROM ClassificacaoFinanceira WHERE Codigo = Classificacao),');
             end;
             SQL.Add('       CASE WHEN Fornecedor <> 0    THEN ( SELECT Nome FROM Fornecedores WHERE (Fornecedores.Codigo = Fornecedor) )');
             SQL.Add('            WHEN Cliente    <> 0    THEN ( SELECT Nome FROM Clientes     WHERE (Clientes.Codigo     = Cliente) )');
             SQL.Add('            WHEN Orgao      <> '''' THEN ( SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE (Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo = Orgao) )');
             SQL.Add('       END AS Beneficiario,');
             SQL.Add('       PR.Numero_Documento ');
             SQL.Add('FROM  PagarReceberBaixas PRB, PagarReceber PR');
             SQL.Add('WHERE PRB.Numero = PR.Numero ');
             if not DataLimpa(Dados.EmpresasFechamento_Financeiro.Asstring) then begin
                SQL.Add('  AND PRB.Data > :pDataFechamento ');
                ParamByName('pDataFechamento').AsDate := Dados.EmpresasFechamento_Financeiro.AsDateTime;
             end;
             if Dados.ConfiguracaoCompartilhar_Bancos.AsBoolean then begin
                SQL.Add('  AND PRB.Data > CASE WHEN PRB.BANCO > 0 THEN (SELECT ISNULL(Data_Fechamento, 0) FROM Cybersoft_Cadastros.dbo.Bancos WHERE Codigo = PRB.Banco) ELSE 0 END');
             end else begin
                SQL.Add('  AND PRB.Data > CASE WHEN PRB.BANCO > 0 THEN (SELECT ISNULL(Data_Fechamento, 0) FROM Bancos WHERE Codigo = PRB.Banco) ELSE 0 END');
             end;
             SQL.Add('  AND PR.Nivel <= :pNivel ');
             SQL.Add('  AND PR.Numero NOT IN(SELECT ISNULL(Financeiro_Numero, 0) FROM EmprestimosFINIMP)');
             ParamByName('pNivel').AsInteger       := Menu_Principal.mUsuarioNivel;
             // Filtra pelo Tipo.
             If cTipo.ItemIndex = 0 then
                SQL.Add(' AND (PR.Tipo = ''P'')')
             else
                SQL.Add(' AND (PR.Tipo = ''R'')');
             // Filtra pela Data.
             {
             If Trim(RemoveCaracter('/', '',cData.Text)) <> '' then begin
                If Length(Trim(RemoveCaracter('/', '',cData.Text))) <> 7 then begin
                   SQL.Add(' AND (Data = :pData)');
                   ParamByName('pData').AsDateTime := cData.Date;
                End;
             End;
             }
             if not DataLimpa(cData.Text) then begin
                if DataLimpa(cDataFim.Text) then begin
                   sql.Add('AND (Data = :pData)');
                   ParamByName('pData').AsDateTime := cData.Date;
                end else begin
                   sql.Add('AND (Data between :pData and :pDataFim)');
                   ParamByName('pData').AsDateTime    := cData.Date;
                   ParamByName('pDataFim').AsDateTime := cDataFim.Date;
                end;
             End;
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
                SQL.Add(' AND (PR.Solicitacao_Pgto = :pSolicitacao)');
                ParamByName('pSolicitacao').AsInteger := mSolicitacao;
                Grade.SelectAll;
             End;
             // Filtra pelo número do cheque.
             If mCheque > 0 then begin
                SQL.Add(' AND (PR.Numero_FormaTipo = :pCheque)');
                ParamByName('pCheque').AsString := InttoStr(mCheque);
                Grade.SelectAll;
             End;
             // Filtra pelo código da empresa.
             If cEmpresa.DisplayValue <> '' then begin
                SQL.Add('AND (select Empresa from Bancos[ where Codigo = pr.Banco) = :pEmpresa');
                ParamByName('pEmpresa').Asinteger := tEmpresa.FieldByName('Empresa').AsInteger;
                Grade.SelectAll;
             End;
             // Filtra pelo código do banco.
             If cBanco.DisplayValue <> '' then begin
                SQL.Add(' AND (pr.Banco = :pBanco)');
                ParamByName('pBanco').Asinteger := tBancos.FieldByName('Codigo').AsInteger;
                Grade.SelectAll;
             End;
             // Filtra pelo código da filial.
             If cFilial.DisplayValue <> '' then begin
                SQL.Add(' AND (pr.Filial = :pFilial)');
                ParamByName('pFilial').Asinteger := tFiliais.FieldByName('Filial').AsInteger;
                Grade.SelectAll;
             End;
             
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
             //SQL.SaveToFile('c:\Temp\Financeiro_EstornoBaixa.sql');
             Open;

             If (mCheque + mSolicitacao) > 0 then begin
                Grade.SelectAll;
                Grade.Enabled := false;
             end else begin
                Grade.Enabled := true;
             End;

             cTitulos.Value := RecordCount;
             EnableControls;
        end;
     End;
     Grade.EnableScroll;
     Screen.Cursor := crDefault;
End;

procedure TFinanceiro_EstornoBaixa.cEmpresaChange(Sender: TObject);
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

procedure TFinanceiro_EstornoBaixa.cTipoClick(Sender: TObject);
begin
     cBeneficiario.ClearValue;
     If cTipo.ItemIndex = 0 then
        tBeneficiarios.Filter := 'Beneficiario_Tipo <> ''C'' '
     else
        tBeneficiarios.Filter := 'Beneficiario_Tipo = ''C'' ';

     Filtra(1, True);
end;

procedure TFinanceiro_EstornoBaixa.FormShow(Sender: TObject);
begin
     Screen.Cursor   := crSQLWait;
     mFiltra := true;
     With Dados do begin
          Configuracao.Open;
          CompClass := iif(not ConfiguracaoCompartilhar_Classificacao.AsBoolean, 'ClassificacaoFinanceira', 'Cybersoft_Cadastros.dbo.ClassificacaoFinanceira');
          CompBanco := iif(not ConfiguracaoCompartilhar_Bancos.AsBoolean       , 'Bancos'                 , 'Cybersoft_Cadastros.dbo.Bancos');
          with tProcessos do begin
               SQL.Clear;
               SQL.Add('select distinct Processo from PagarReceber where(Valor_Operacao >= Valor_Total) order by Processo');
               Open;
               First;
               cProcesso.Clear;
               while not Eof do begin
                     If Trim(FieldByName('Processo').AsString) <> '' then
                        cProcesso.Items.Add(FieldByName('Processo').AsString);
                     Next;
               end;
          end;
          with ClassificacaoFinanceira do begin
               SQL.Clear;
               SQL.Add('select * from ClassificacaoFinanceira where(Desativada <> 1) order by Descricao');
               Open;
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
               SQL.Clear;
               SQL.Add('select * from Empresas where Codigo = :pEmpresa');
               ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
               Open;
          end;
          with Bancos do begin
               SQL.Clear;
               SQL.Add('select * from Bancos where isnull(Desativado, 0) = 0');
               Open;
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
          with tBancos do begin
               sql.Clear;
               sql.Add('select Conta');
               sql.Add('      ,Codigo');
               sql.Add('      ,Nome');
               sql.Add('      ,Empresa');
               sql.Add('      ,Nome_Emp = (select Razao_Social from Cybersoft_Cadastros.dbo.Empresas where Codigo = Empresa)');
               sql.Add('from '+iif(ConfiguracaoCompartilhar_Bancos.AsBoolean, 'Cybersoft_Cadastros.dbo.Bancos', 'Bancos'));
               sql.Add('where isnull(Desativado, 0) = 0');
               sql.Add('Order by Nome, Empresa');
               open;
          end;

          // Mensagem informando até quando o movimento esta bloqueado.
          If Trim(RemoveCaracter('/', '', Dados.EmpresasFechamento_Financeiro.AsString)) <> '' then begin;
             lBloqueado.Visible := true;
             lBloqueado.Caption :='[MOVIMENTO BLOQUEADO ATÉ '+ Dados.EmpresasFechamento_Financeiro.AsString+']';
          End;
     End;
     cTipo.ItemIndex := 0;
     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_EstornoBaixa.bPesqBancoClick(Sender: TObject);
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

procedure TFinanceiro_EstornoBaixa.bPesquisarClick(Sender: TObject);
begin
     Financeiro_Pesquisa := TFinanceiro_Pesquisa.Create(Self);
     Financeiro_Pesquisa.Caption := Caption;
     Financeiro_Pesquisa.mJanela := 'Estorno';
     Financeiro_Pesquisa.ShowModal;
     cTitulos.Value := tTitulos.RecordCount;
end;

procedure TFinanceiro_EstornoBaixa.bLimpaFiltroClick(Sender: TObject);
begin
      mFiltra                 := false;
      mSolicitacao            :=  0;
      mCheque                 :=  0;
      cClassificacao.KeyValue := -1;
      cProcesso.ItemIndex     := -1;
      cBeneficiario.KeyValue  := -1;
      cData.Clear;
      cEmpresa.KeyValue       := -1; 
      cBanco.KeyValue         := -1;
      mFiltra                 := true;
      Filtra(1, true);
end;

procedure TFinanceiro_EstornoBaixa.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_EstornoBaixa.NavegaClick(Sender: TObject;Button: TNavigateBtn);
begin
      Grade.SetFocus;
end;

procedure TFinanceiro_EstornoBaixa.bEstornoClick(Sender: TObject);
Var
    mSel: Integer;
begin
      If Grade.SelectedRows.Count = 0 then begin
         ShowMessage('Não há nenhum título selecionado para baixar!'+#13+#13+'Mamtenha a tecla <Ctrl> pressionada para selecionar mais de um título.');
         Abort;
      End;

      // Verifica se há algum título selecionado com data menor ou igual a data do fechamento do financeiro ou do banco.
      With Dados do begin
           For mSel := 0 to Grade.SelectedRows.Count-1 do begin
               Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
               Bancos.Locate('Codigo', tTitulos.FieldByName('Banco').AsInteger, [loCaseInsensitive]);
               If (tTitulos.FieldByName('Data').AsDateTime <= EmpresasFechamento_Financeiro.AsDateTime) or (tTitulos.FieldByName('Data').AsDateTime <= BancosData_Fechamento.Value) then begin
                  If (not DataLimpa(EmpresasFechamento_Financeiro.AsString)) and (not DataLimpa(BancosData_Fechamento.AsString)) then begin
                     MessageDlg('Erro de data!'+#13+#13+'Existem títulos selecionados dentro de um período já fechado .'+#13+#13+'Estorno não sera efetuado.', mtError, [mbOK], 0);
                     Abort;
                  end;
               end else begin
                  tBaixas.SQL.Clear;
                  tBaixas.SQL.Add('SELECT COUNT(*) AS Qtde FROM EmprestimosDuplicatas WHERE Financeiro_Numero = :pBaixa');
                  tBaixas.ParamByName('pBaixa').AsInteger := tTitulos.FieldByName('Num').AsInteger;
                  tBaixas.Open;

                  If tBaixas.FieldByName('Qtde').AsInteger > 0 then begin
                     MessageDlg('Erro de lançamento!'+#13+#13+'Lançamentos com origem em empréstimo não podem ser estornados por aqui.'+#13+#13+'Estorno não sera efetuado.', mtError, [mbOK], 0);
                     Abort;
                  End;
               End;
           End;
      End;
      
      If MessageDlg('Deseja realmente estornar as baixas selecionadas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         // Estornando todos os registros selecionados.
         With Dados, dmContab do begin
              For mSel := 0 to Grade.SelectedRows.Count-1 do begin
                  Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));

                  PagarReceber.SQL.Clear;
                  PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE(Numero = :pNumero)');
                  PagarReceber.ParamByName('pNumero').AsInteger := tTitulos.FieldByName('Num').AsInteger;
                  PagarReceber.Open;

                  ClassificacaoFinanceira.Locate('Codigo', PagarReceberClassificacao.AsString, [loCaseInsensitive]);

                  PagarReceber.Edit;
                               PagarReceberValor_Baixado.Value := PagarReceber.FieldByName('Valor_Baixado').ascurrency - tTitulos.FieldByName('Valor').ascurrency;

                               If tTitulos.FieldByName('Origem_Multa').AsString    = 'B' then
                                  PagarReceberMulta.Value := PagarReceber.FieldByName('Multa').ascurrency - tTitulos.FieldByName('Multa').AsCurrency;
                               If tTitulos.FieldByName('Origem_Juros').AsString    = 'B' then
                                  PagarReceberJuros.Value := PagarReceber.FieldByName('Juros').ascurrency - tTitulos.FieldByName('Juros').AsCurrency;
                               If tTitulos.FieldByName('Origem_Desconto').AsString = 'B' then
                                  PagarReceberDesconto.Value := PagarReceber.FieldByName('Desconto').ascurrency - tTitulos.FieldByName('Desconto').AsCurrency;
                               If PagarReceber.FieldByName('Valor_Baixado').AsCurrency < 0 then
                                  PagarReceber.FieldByName('Valor_Baixado').Value := 0;

                               // Zera os valores de variação cambial quando um título de fechamento de câmbio. "Juros / Descontos" do título.
                               If ClassificacaoFinanceiraCambio.AsBoolean = true then begin
                                  PagarReceberJuros.Value    := 0;
                                  PagarReceberDesconto.Value := 0;
                               End;

                               PagarReceberBanco.Value := 0;
                               PagarReceberBanco.Clear;
                               PagarReceberForma_Tipo.Clear;
                               PagarReceberNumero_FormaTipo.Clear;
                               PagarReceberBaixa_Numero.Clear;
                  PagarReceber.Post;

                  // Atualiza o limite de crédito utilizado no cadastro do cliente.
                  If (PagarReceberTipo.Value = 'R') and (PagarReceberCliente.AsInteger > 0) then begin
                     Clientes.SQL.Clear;
                     Clientes.SQL.Add('SELECT * FROM Clientes WHERE(Codigo = :pCodigo)');
                     Clientes.ParamByName('pCodigo').AsInteger := PagarReceberCliente.AsInteger;
                     Clientes.Open;

                     Clientes.Edit;
                              ClientesLimite_Utilizado.Value := ClientesLimite_Utilizado.AsCurrency + PagarReceberBaixasValor.AsCurrency;
                     Clientes.Post;
                  End;
                  {
                  // Deleta o laçamento contabil de pagamento.
                  with tLan do begin
                       sql.Clear;
                       sql.Add('delete from  Lotes');
                       sql.Add('where Empresa = :pEmpresa');
                       sql.Add('and   Data    = :pData');
                       sql.Add('and   Recriar = 1');
                       sql.Add('and   Lote in(select Lote from Lancamentos where Empresa = :pEmpresa and Data = :pData and Recriar = 1 and Numero_Financeiro = :pNumero)');
                       ParamByName('pEmpresa').AsString := Empresas.FieldByName('CNPJ').asstring;
                       ParamByName('pData').AsDateTime  := tTitulos.FieldByName('Data').AsDateTime;
                       ParamByName('pNumero').AsInteger := tTitulos.FieldByName('Num').AsInteger;
                       Execute;
                  end;
                  with tlan do begin
                       sql.Clear;
                       sql.Add('delete from Lancamentos where Empresa = :pEmpresa and Data = :pData and Numero_Financeiro = :pNumero and Recriar = 1');
                       ParamByName('pEmpresa').AsString := Empresas.FieldByName('CNPJ').asstring;
                       ParamByName('pData').AsDateTime  := tTitulos.FieldByName('Data').AsDateTime;
                       ParamByName('pNumero').AsInteger := tTitulos.FieldByName('Num').AsInteger;
                       Execute;
                  end;
                  }
                  // Deixa o boleto em aberto novamente.
                  with tBaixas do begin
                       sql.clear;
                       sql.add('update Boletos set Retorno = 0, Data_Retorno = null, Data_Credito = null where Financeiro_Numero = '+PagarReceber.FieldByName('Numero').asstring);
                       Execute;
                  end;

                  // Estorna o valor do credito do cliente caso haja.
                  with tTmp do begin
                       sql.clear;
                       sql.add('delete from PagarReceberCreditos where Nota = :pNumero and Origem = ''BX'' and Codigo = :pCliente');
                       parambyname('pNumero').AsInteger  := PagarReceber.FieldByName('Numero').asinteger;
                       parambyname('pCliente').AsInteger := PagarReceber.FieldByName('Cliente').asinteger;
                       execute;
                  end;

                  // Registra o log dos lançamentos estornados.
                  GerarLog('('+Menu_Principal.mUsuarioCodigo+') '+Menu_Principal.mUsuarioNome, 'PagarReceberBaixas', 'ESTORNO', 'Numero', 'Registro nº '+tTitulosRegistro.AsString+'  Titulo n° '+tTitulosNum.AsString+' Data Baixa '+tTitulosData.AsString, '', '', tTitulosNum.AsString);

                  tTitulos.Delete;
              End;
              tTitulos.RefreshRecord;
              Grade.UnselectAll;
         End;
      End;
end;

procedure TFinanceiro_EstornoBaixa.GradeKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If (Selecionou = false) and (key = 16) then begin
        Selecionou := true;
        Contador   := Grade.DataSource.DataSet.RecNo;
     End;
end;

procedure TFinanceiro_EstornoBaixa.GradeKeyUp(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
     If (Selecionou = true)  then begin
        ContadorFinal                  := Grade.DataSource.DataSet.RecNo;
        Grade.DataSource.DataSet.RecNo := Contador;

        // Seleção de Cima pra baixo.
        If ContadorFinal > Contador then begin
           Repeat
                 Grade.SelectedRows.CurrentRowSelected := true;
                 Grade.DataSource.DataSet.Next
            Until Grade.DataSource.DataSet.RecNo = Contadorfinal;
        End;

        // Seleção de baixa para Cima.
        If ContadorFinal < Contador then begin
           Repeat
                 Grade.SelectedRows.CurrentRowSelected := true;
                 Grade.DataSource.DataSet.Prior;
           Until Grade.DataSource.DataSet.RecNo = Contadorfinal;
        End
     End;
     Contador      := 0;
     Contadorfinal := 0;
     Selecionou    := false;
end;

procedure TFinanceiro_EstornoBaixa.GradeTitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
begin
      Filtra(aCol, True);
end;

procedure TFinanceiro_EstornoBaixa.bSelSPClick(Sender: TObject);
Var
   mNumero: String;
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

procedure TFinanceiro_EstornoBaixa.lBloqueadoClick(Sender: TObject);
begin
      If Menu_Principal.mnFinanceiro_Bloqueio.Enabled = true then begin
         Financeiro_BloquearPeriodo := TFinanceiro_BloquearPeriodo.Create(Self);
         Financeiro_BloquearPeriodo.Caption := Caption;
         Financeiro_BloquearPeriodo.ShowModal;
      End;
end;

procedure TFinanceiro_EstornoBaixa.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
      With Dados do begin
           If Odd(tTitulos.RecNo) then
              Grade.Canvas.Brush.Color := $00DEEDDE
           else
              Grade.Canvas.Brush.Color := clCream;

           If Grade.SelectedRows.CurrentRowSelected then begin
              TDbGrid(Sender).Canvas.Brush.Color := $004080FF;
              TDbGrid(Sender).Canvas.font.Color  := clBlack;
           end else begin
              TDbGrid(Sender).Canvas.font.Color:= clBlack;
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

procedure TFinanceiro_EstornoBaixa.SpeedButton1Click(Sender: TObject);
begin
     Filtra(1, false);
end;



procedure TFinanceiro_EstornoBaixa.SpeedButton2Click(Sender: TObject);
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

procedure TFinanceiro_EstornoBaixa.SpeedButton3Click(Sender: TObject);
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

end.



