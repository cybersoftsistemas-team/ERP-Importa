unit frmFinanceiro_SolicitacaoPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, DBCtrls, Mask, RXDBCtrl, RXCtrls, Vcl.ExtCtrls,
  DBGrids, Funcoes,RxLookup, Buttons,
  Grids, RxCurrEdit, RxToolEdit, MemDS;

type
  TFinanceiro_SolicitacaoPagamentos = class(TForm)
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
    tProcessos: TMSQuery;
    GroupBox1: TGroupBox;
    lBorderoData: TStaticText;
    StaticText1: TStaticText;
    cProcesso: TComboBox;
    StaticText2: TStaticText;
    cClassificacao: TRxDBLookupCombo;
    bSelecionar: TButton;
    bGerar: TButton;
    bLimpaFiltro: TSpeedButton;
    cSelecionar: TCheckBox;
    Grade: TDBGrid;
    cData: TDateEdit;
    Navega: TDBNavigator;
    tTitulosNumero: TLargeintField;
    StaticText3: TStaticText;
    cBeneficiario: TRxDBLookupCombo;
    tBeneficiarios: TMSQuery;
    dstBeneficiario: TDataSource;
    tBeneficiariosBeneficiario_Codigo: TStringField;
    tBeneficiariosBeneficiario_Nome: TStringField;
    tBeneficiariosBeneficiario_Tipo: TStringField;
    StaticText4: TStaticText;
    cObservacao: TEdit;
    tTitulosValor_Baixado: TCurrencyField;
    tTitulosValor_Total: TCurrencyField;
    bPesquisar: TSpeedButton;
    tRegistro: TMSQuery;
    cQtdeTitulos: TCurrencyEdit;
    StaticText5: TStaticText;
    tTitulosDocumento_Descricao: TStringField;
    tTitulosNumero_Documento: TStringField;
    tTitulosData_Documento: TDateTimeField;
    tTitulosMulta: TCurrencyField;
    tTitulosJuros: TCurrencyField;
    tTitulosDesconto: TCurrencyField;
    tTitulosCambio: TBooleanField;
    tSolicitacao: TMSQuery;
    tTitulosSolicitacao_Pgto: TIntegerField;
    RxLabel1: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bDesmarcarClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bLimpaFiltroClick(Sender: TObject);
    procedure GradeTitleClick(Column: TColumn);
    procedure bGerarClick(Sender: TObject);
    procedure Filtra(Coluna: Integer; Ordem: Boolean);
    procedure GradeKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure GradeCellClick(Column: TColumn);
  private
    procedure GradeSel(pSel: boolean);
    { Private declarations }
  public
    { Public declarations }
    mUltimoClick   : String;
    mContador      : integer;
    mContadorFinal : integer;
    mSelecionou    : boolean;
    mNumeros       : WideString;
  end;

var
  Financeiro_SolicitacaoPagamentos : TFinanceiro_SolicitacaoPagamentos;

implementation

uses frmDados, frmFinanceiro_SPCheque, frmMenu_Principal;

{$R *.dfm}

procedure TFinanceiro_SolicitacaoPagamentos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFinanceiro_SolicitacaoPagamentos.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_SolicitacaoPagamentos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     tTitulos.Close;
     tSolicitacao.Close;
     tBeneficiarios.Close;
     tProcessos.Close;
     Dados.ClassificacaoFinanceira.Close;

     Financeiro_SolicitacaoPagamentos.Release;
     Financeiro_SolicitacaoPagamentos := nil;
end;

procedure TFinanceiro_SolicitacaoPagamentos.bDesmarcarClick(Sender: TObject);
begin
     GradeSel(false);
end;

procedure TFinanceiro_SolicitacaoPagamentos.bSelecionarClick(Sender: TObject);
begin
     GradeSel(true);
end;

procedure TFinanceiro_SolicitacaoPagamentos.GradeSel(pSel: boolean);
var
   mItem: integer;
begin
       with Grade.DataSource.DataSet do begin
            DisableControls;
            First;
            for mItem := 0 to pred(RecordCount) do begin
                Grade.SelectedRows.CurrentRowSelected := pSel;
                Next;
            end;
            EnableControls;
       end;
end;

procedure TFinanceiro_SolicitacaoPagamentos.Filtra(Coluna:Integer; Ordem: Boolean);
begin
     Screen.Cursor := crSQLWait;

     tTitulos.SQL.Clear;
     tTitulos.SQL.Add('SELECT DISTINCT');
     tTitulos.SQL.Add('       Numero,');
     tTitulos.SQL.Add('       PagarReceber.Tipo,');
     If Dados.ConfiguracaoCompartilhar_Classificacao.AsBoolean = false then begin
        tTitulos.SQL.Add('       (SELECT Descricao FROM ClassificacaoFinanceira CF WHERE (CF.Codigo = Classificacao)) AS Classificacao,');
        tTitulos.SQL.Add('       (SELECT Cambio    FROM ClassificacaoFinanceira CF WHERE (CF.Codigo = Classificacao)) AS Cambio,');
     end else begin
        tTitulos.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE (CF.Codigo = Classificacao)) AS Classificacao,');
        tTitulos.SQL.Add('       (SELECT Cambio    FROM Cybersoft_Cadastros.dbo.ClassificacaoFinanceira CF WHERE (CF.Codigo = Classificacao)) AS Cambio,');
     End;
     tTitulos.SQL.Add('       Data_Vencimento,');
     tTitulos.SQL.Add('       Processo,');
     tTitulos.SQL.Add('       Valor_Documento,');
     tTitulos.SQL.Add('       Valor_Parcela,');
     tTitulos.SQL.Add('       Valor_Total,');
     tTitulos.SQL.Add('       Multa,');
     tTitulos.SQL.Add('       Juros,');
     tTitulos.SQL.Add('       Desconto,');
     tTitulos.SQL.Add('       Valor_Operacao,');
     tTitulos.SQL.Add('       Valor_Baixado,');
     tTitulos.SQL.Add('       Parcela,');
     tTitulos.SQL.Add('       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.TiposDocumentos WHERE(Codigo = PagarReceber.Documento)) AS Documento_Descricao,');
     tTitulos.SQL.Add('       Numero_Documento,');
     tTitulos.SQL.Add('       Data_Documento,');
     tTitulos.SQL.Add('       CASE WHEN Fornecedor <> 0    THEN ( SELECT Nome FROM Fornecedores WHERE (Fornecedores.Codigo = Fornecedor) )');
     tTitulos.SQL.Add('            WHEN Cliente    <> 0    THEN ( SELECT Nome FROM Clientes     WHERE (Clientes.Codigo     = Cliente) )');
     tTitulos.SQL.Add('            WHEN Orgao      <> '''' THEN ( SELECT Nome FROM Cybersoft_Cadastros.dbo.OrgaosPublicos WHERE (Cybersoft_Cadastros.dbo.OrgaosPublicos.Codigo = Orgao) )');
     tTitulos.SQL.Add('       END AS Beneficiario,');
     tTitulos.SQL.Add('       Solicitacao_Pgto');
     tTitulos.SQL.Add('FROM   PagarReceber');
     tTitulos.SQL.Add('WHERE (Valor_Baixado < Valor_Parcela OR Valor_Baixado IS NULL ) AND (PagarReceber.Tipo = ''P'') AND (Nivel <= :pNivel) ');
     tTitulos.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;

     // Filtra pela Data.
     If Trim(RemoveCaracter('/', '',cData.Text)) <> '' then begin
        If Length(Trim(RemoveCaracter('/', '',cData.Text))) <> 7 then begin
           tTitulos.SQL.Add(' AND (Data_Vencimento = :pData)');
           tTitulos.ParamByName('pData').AsDate := cData.Date;
        End;
     End;

     // Filtra pelo Processo.
     If Trim(cProcesso.Text) <> '' then begin
        tTitulos.SQL.Add(' AND (Processo = :pProcesso)');
        tTitulos.ParamByName('pProcesso').AsString := cProcesso.Text;
     End;

     // Filtra pelo Classificacao Financeira.
     If Trim(cClassificacao.Text) <> '' then begin
        tTitulos.SQL.Add(' AND (Classificacao = :pClassificacao)');
        tTitulos.ParamByName('pClassificacao').AsString := Dados.ClassificacaoFinanceiraCodigo.Value;
     End;

     // Filtra pelo Beneficiario.
     If Trim(cBeneficiario.Text) <> '' then begin
        If tBeneficiarios.FieldByName('Beneficiario_Tipo').AsString = 'F' then tTitulos.SQL.Add(' AND (Fornecedor = :pBeneficiario)');
        If tBeneficiarios.FieldByName('Beneficiario_Tipo').AsString = 'C' then tTitulos.SQL.Add(' AND (Cliente    = :pBeneficiario)');
        If tBeneficiarios.FieldByName('Beneficiario_Tipo').AsString = 'O' then tTitulos.SQL.Add(' AND (Orgao      = :pBeneficiario)');
        tTitulos.ParamByName('pBeneficiario').AsString := tBeneficiarios.FieldByName('Beneficiario_Codigo').AsString;
     End;

     // Filtra pelo observação.
     If Trim(cObservacao.Text) <> '' then begin
        tTitulos.SQL.Add(' AND (Observacao LIKE '+QuotedStr('%'+Trim(cObservacao.Text)+'%')+')');
     End;

     If Ordem = True then begin
        If mUltimoClick <> Grade.Columns[Coluna].FieldName then begin
           tTitulos.SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' ASC');
           mUltimoClick := Grade.Columns[Coluna].FieldName;
        end else begin
           tTitulos.SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' DESC');
           mUltimoClick := '';
        End;
     end else begin
        tTitulos.SQL.Add('ORDER BY '+Grade.Columns[Coluna].FieldName+' DESC');
     End;
     tTitulos.Open;
     cQtdeTitulos.Value := tTitulos.RecordCount;

     If cSelecionar.Checked then GradeSel(true);

     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_SolicitacaoPagamentos.bLimpaFiltroClick(Sender: TObject);
begin
      cData.Clear;
      cClassificacao.KeyValue := -1;
      cProcesso.ItemIndex     := -1;
      cBeneficiario.KeyValue  := -1;
      cObservacao.Clear;
      Filtra(1, true);
end;

procedure TFinanceiro_SolicitacaoPagamentos.GradeTitleClick(Column: TColumn);
begin
      Filtra(Column.Index, True);
end;

procedure TFinanceiro_SolicitacaoPagamentos.bGerarClick(Sender: TObject);
Var
    mSel    : Integer;
    mTotal  : Currency;
begin
     If Grade.SelectedRows.Count = 0 then begin
        ShowMessage('Não há nenhum título selecionado para baixar!'+#13+#13+'Mamtenha a tecla <Ctrl> pressionada para selecionar mais de um título.');
        Abort;
     End;

     tSolicitacao.SQL.Clear;
     tSolicitacao.SQL.Add('SELECT MAX(Solicitacao_Pgto) AS Solicitacao FROM PagarReceber');
     tSolicitacao.Open;

     mTotal := 0;
     With Dados do begin
          mNumeros := '';
          For mSel := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
              mNumeros := mNumeros + tTitulos.FieldByName('Numero').AsString;
              mTotal := mTotal + tTitulos.FieldByName('Valor_Total').AsCurrency;
              If mSel < Grade.SelectedRows.Count-1 then mNumeros := mNumeros + ',';
          End;
     End;

     Financeiro_SPCheque := TFinanceiro_SPCheque.Create(Self);
     Financeiro_SPCheque.Caption      := Caption;
     Financeiro_SPCheque.lValor.Value := mTotal;
     Financeiro_SPCheque.ShowModal;

     Filtra(0, True);
end;

procedure TFinanceiro_SolicitacaoPagamentos.GradeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If (mSelecionou = true) and (Key = 16) and (Grade.DataSource.DataSet.RecNo > mContador) then begin
        mContadorfinal := Grade.DataSource.DataSet.RecNo;
        Grade.DataSource.DataSet.RecNo := mContador;
        Repeat
             Grade.SelectedRows.CurrentRowSelected := true;
             Grade.DataSource.DataSet.Next
        until
             Grade.DataSource.DataSet.RecNo = mContadorFinal;
     end;
     mContador      := 0;
     mContadorfinal := 0;
     mSelecionou    := false;
end;

procedure TFinanceiro_SolicitacaoPagamentos.FormShow(Sender: TObject);
begin
     Screen.Cursor   := crSQLWait;
     With Dados do begin
          tProcessos.SQL.Clear;
          tProcessos.SQL.Add('SELECT DISTINCT Processo FROM PagarReceber ORDER BY Processo');
          tProcessos.Open;
          tProcessos.First;
          cProcesso.Clear;

          While not tProcessos.Eof do begin
                If Trim(tProcessos.FieldByName('Processo').AsString) <> '' then
                   cProcesso.Items.Add(tProcessos.FieldByName('Processo').AsString);
                tProcessos.Next;
          End;
          
          ClassificacaoFinanceira.SQL.Clear;
          ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) ORDER BY Descricao');
          ClassificacaoFinanceira.Open;

          tBeneficiarios.Open;

          Configuracao.Open;
     End;
     Filtra(1, True);
     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_SolicitacaoPagamentos.bPesquisarClick(Sender: TObject);
begin
     Filtra(1, False);
end;

procedure TFinanceiro_SolicitacaoPagamentos.GradeCellClick(Column: TColumn);
begin
      If (mSelecionou = false) then begin
         mSelecionou := true;
         mContador   := Grade.DataSource.DataSet.RecNo;
      End;
end;

end.
