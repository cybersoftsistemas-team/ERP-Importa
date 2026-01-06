unit frmFinanceiro_SolicitacaoItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXDBCtrl, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, DB,
  DBAccess, MSAccess, Funcoes, ClipBrd, system.UITypes, Grids, DBGrids, Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TFinanceiro_SolicitacaoItens = class(TForm)
    Panel4: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    tNumero: TMSQuery;
    bCopiar: TButton;
    Panel3: TPanel;
    lClassificacao: TStaticText;
    lBeneficiario: TStaticText;
    lValorTitulo: TStaticText;
    lVencimento: TStaticText;
    cValor: TDBEdit;
    lProcesso: TStaticText;
    lDocumento: TStaticText;
    lDataPrevisao: TStaticText;
    cDataPrevisao: TDBDateEdit;
    cVencimento: TDBDateEdit;
    cDocumento: TDBLookupComboBox;
    StaticText3: TStaticText;
    cCentroCusto: TDBLookupComboBox;
    StaticText2: TStaticText;
    cProcesso: TEdit;
    cSN: TCurrencyEdit;
    cClassificacao: TDBLookupComboBox;
    Grade: TDBGrid;
    cNumeroDOC: TDBEdit;
    lDataProvisao: TStaticText;
    lNumeroDOC: TStaticText;
    cDataDoc: TDBDateEdit;
    cObservacao: TDBMemo;
    lObservacao: TStaticText;
    lModalidade: TStaticText;
    cModalidade: TDBLookupComboBox;
    bDeletar: TButton;
    tItens: TMSQuery;
    StaticText1: TStaticText;
    cTotal: TCurrencyEdit;
    cBeneficiario: TDBLookupComboBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure GradeDblClick(Sender: TObject);
    procedure bCopiarClick(Sender: TObject);
    procedure bDeletarClick(Sender: TObject);
    procedure cDocumentoExit(Sender: TObject);
    procedure TrocaBeneficiario;
    procedure lBeneficiarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mCentroCusto : String;
    mDataPrevisao: TDateTime;
    mVencimento  : TDateTime;
  end;

var
  Financeiro_SolicitacaoItens: TFinanceiro_SolicitacaoItens;

implementation

uses frmDados, frmFinanceiro_SolicitacaoProcesso, frmFinanceiro_SolicitacaoItensDeleta, frmCadastro_Fornecedores;

{$R *.dfm}

procedure TFinanceiro_SolicitacaoItens.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_SolicitacaoItens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Financeiro_SolicitacaoItens.Release;
     Financeiro_SolicitacaoItens := nil;
end;

procedure TFinanceiro_SolicitacaoItens.FormShow(Sender: TObject);
begin
      With Dados do begin
           tItens.SQL.Clear;
           tItens.SQL.Add('SELECT SUM(Valor) AS Valor FROM ItensSolicitacao WHERE(Numero = :pNumero)');
           tItens.ParamByName('pNumero').AsInteger := SNNumero.Value;
           tItens.Open;
           cTotal.Value := tItens.FieldByName('Valor').AsCurrency;

           ItensSN.SQL.Clear;
           ItensSN.SQL.Add('SELECT * FROM ItensSolicitacao WHERE(Numero = :pNumero) ORDER BY Item');
           ItensSN.ParamByName('pNumero').AsInteger := SNNumero.Value;
           ItensSN.Open;
           cSN.Value      := SNNumero.Value;
           cProcesso.Text := SNProcesso.Value;
      End;
      TrocaBeneficiario;
end;

procedure TFinanceiro_SolicitacaoItens.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i: Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel3.Enabled := true;
         If Button = nbInsert then begin
            Dados.ItensSNData_Previsao.Value   := Dados.SNData_Previsao.Value;
            Dados.ItensSNData_Vencimento.Value := Dados.SNData_Vencimento.Value;
            Dados.ItensSNModalidade_Pgto.Value := 1;
            cCentroCusto.SetFocus;
         End;
         If Button = nbEdit then cDocumento.SetFocus;
      End;

      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.ItensSN.Refresh;
         Panel3.Enabled := False;
         Screen.Cursor  := crDefault;
      End;
      TrocaBeneficiario;
end;

procedure TFinanceiro_SolicitacaoItens.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados do begin
           if Button = nbPost then begin
              if (ItensSNFornecedor.AsInteger < 1) and (trim(ItensSNOrgao.AsString) = '') then begin
                 MessageDlg('Campo "Fornecedor/ Orgão" é obrigatório.', mtError, [mbOK], 0);
                 cBeneficiario.SetFocus;
                 Abort;
              end;
              if Trim(ItensSNClassificacao.AsString) = '' then begin
                 MessageDlg('Campo "Classificação" é obrigatório.', mtError, [mbOK], 0);
                 cClassificacao.SetFocus;
                 Abort;
              end;
              if DataLimpa(ItensSNData_Vencimento.AsString) then begin
                 MessageDlg('Campo "Data do Vencimento" é obrigatório.', mtError, [mbOK], 0);
                 cVencimento.SetFocus;
                 Abort;
              end;
              if ItensSNValor.AsCurrency <= 0 then begin
                 MessageDlg('Campo "Valor" é obrigatório.', mtError, [mbOK], 0);
                 cValor.SetFocus;
                 Abort;
              end;

              if ItensSN.State = dsInsert then begin
                 tNumero.SQL.Clear;
                 tNumero.SQL.Add('SELECT ISNULL(MAX(Item), 0) AS Item FROM ItensSolicitacao WHERE(Numero = :pNumero)');
                 tNumero.ParamByName('pNumero').AsInteger := cSN.AsInteger;
                 tNumero.Open;
                 
                 ItensSNNumero.Value     := cSN.AsInteger;
                 ItensSNItem.Value       := tNumero.FieldByName('Item').AsInteger + 1;
                 ItensSNCustoConta.Value := ClassificacaoFinanceiraCusto.Value;
                 tNumero.Close;
              end;
           end;
      end;
end;

procedure TFinanceiro_SolicitacaoItens.GradeDblClick(Sender: TObject);
begin
       Navega.BtnClick(nbEdit);
end;

procedure TFinanceiro_SolicitacaoItens.bCopiarClick(Sender: TObject);
begin
       Financeiro_SolicitacaoProcesso := TFinanceiro_SolicitacaoProcesso.Create(Self);
       Financeiro_SolicitacaoProcesso.Caption   := Caption;
       Financeiro_SolicitacaoProcesso.cSN.Value := cSN.Value;
       Financeiro_SolicitacaoProcesso.ShowModal;

       tItens.SQL.Clear;
       tItens.SQL.Add('SELECT SUM(Valor) AS Valor FROM ItensSolicitacao WHERE(Numero = :pNumero)');
       tItens.ParamByName('pNumero').AsInteger := Dados.SNNumero.Value;
       tItens.Open;
       cTotal.Value := tItens.FieldByName('Valor').AsCurrency;
end;

procedure TFinanceiro_SolicitacaoItens.bDeletarClick(Sender: TObject);
begin
     With Dados do begin
          tItens.SQL.Clear;
          tItens.SQL.Add('SELECT MIN(Item) AS Menor, MAX(Item) AS Maior FROM ItensSolicitacao WHERE(Numero = :pNumero)');
          tItens.ParamByName('pNumero').AsInteger := SNNumero.Value;
          tItens.Open;
     End;

     Financeiro_SolicitacaoItensDeleta := TFinanceiro_SolicitacaoItensDeleta.Create(Self);
     Financeiro_SolicitacaoItensDeleta.Caption := Caption;
     Financeiro_SolicitacaoItensDeleta.cInicio.MinValue := tItens.FieldByName('Menor').AsInteger;
     Financeiro_SolicitacaoItensDeleta.cInicio.MaxValue := tItens.FieldByName('Maior').AsInteger;
     Financeiro_SolicitacaoItensDeleta.cFinal.MinValue  := tItens.FieldByName('Menor').AsInteger;
     Financeiro_SolicitacaoItensDeleta.cFinal.MaxValue  := tItens.FieldByName('Maior').AsInteger;
     Financeiro_SolicitacaoItensDeleta.ShowModal;

     tItens.SQL.Clear;
     tItens.SQL.Add('SELECT SUM(Valor) AS Valor FROM ItensSolicitacao WHERE(Numero = :pNumero)');
     tItens.ParamByName('pNumero').AsInteger := Dados.SNNumero.Value;
     tItens.Open;
     cTotal.Value := tItens.FieldByName('Valor').AsCurrency;
end;

procedure TFinanceiro_SolicitacaoItens.cDocumentoExit(Sender: TObject);
begin
      TrocaBeneficiario;
end;

procedure TFinanceiro_SolicitacaoItens.TrocaBeneficiario;
begin
      With Dados do begin
           If (TiposDocumentosTributo.Value = False) then begin
              lBeneficiario.Caption        := 'Fornecedor';
              cBeneficiario.DataField      := 'Fornecedor';
              cBeneficiario.ListField      := 'Codigo;Nome';
              cBeneficiario.ListSource     := Dados.dsFornecedores;
              If (ItensSN.State = dsInsert) or (ItensSN.State = dsEdit) then begin
                 ItensSNOrgao.Clear;
              End;
           end else begin
              lBeneficiario.Caption        := 'Orgão Público';
              cBeneficiario.DataField      := 'Orgao';
              cBeneficiario.ListField      := 'Codigo;Nome';
              cBeneficiario.ListSource     := Dados.dsOrgaos;
              If (ItensSN.State = dsInsert) or (ItensSN.State = dsEdit) then begin
                 ItensSNFornecedor.Clear;
              End;   
           End;
      End;
end;

procedure TFinanceiro_SolicitacaoItens.lBeneficiarioClick(Sender: TObject);
begin
         Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
         Cadastro_Fornecedores.Caption := Caption;
         Cadastro_Fornecedores.ShowModal;
         Dados.Fornecedores.Open;
         Dados.ItensSNFornecedor.AsString := Clipboard.AsText;
         cBeneficiario.Setfocus;
end;

end.
