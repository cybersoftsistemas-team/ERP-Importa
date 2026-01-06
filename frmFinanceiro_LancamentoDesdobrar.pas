unit frmFinanceiro_LancamentoDesdobrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXDBCtrl, DBCtrls, DB, DBAccess, MSAccess,
    Mask, Grids, DBGrids, RxCurrEdit, MemDS, RxToolEdit;

type
  TFinanceiro_LancamentoDesdobrar = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    RxDBGrid1: TRxDBGrid;
    Navega: TDBNavigator;
    tItem: TMSQuery;
    Panel2: TPanel;
    lClassificacao: TStaticText;
    cClassificacao: TDBLookupComboBox;
    lProcesso: TStaticText;
    cProcesso: TDBLookupComboBox;
    lValorDocumento: TStaticText;
    cValorItem: TDBEdit;
    StaticText1: TStaticText;
    cTotal: TCurrencyEdit;
    tTotal: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
    mTipo: String;
  end;

var
  Financeiro_LancamentoDesdobrar: TFinanceiro_LancamentoDesdobrar;

implementation

uses frmDados, frmMenu_Principal, frmFinanceiro_LancamentoNovo2, frmFinanceiro_Lista;

{$R *.dfm}

procedure TFinanceiro_LancamentoDesdobrar.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_LancamentoDesdobrar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     // Deleta os registros de desdobramento e recria novamente.

     Financeiro_LancamentoDesdobrar.Release;
     Financeiro_LancamentoDesdobrar := nil;
end;

procedure TFinanceiro_LancamentoDesdobrar.FormShow(Sender: TObject);
begin
      With Dados do begin
           Desdobramento.SQL.Clear;
           Desdobramento.SQL.Add('SELECT * FROM Desdobramento WHERE(Numero = :pNumero) ORDER BY Registro Desc');
           Desdobramento.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
           Desdobramento.Open;

           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = :pTipo) AND (Titulo = 0) AND (Desativada <> 1) AND (Nivel <= :pNivel) ORDER BY Descricao');
           ClassificacaoFinanceira.ParamByName('pNivel').AsInteger := Menu_Principal.mUsuarioNivel;
           ClassificacaoFinanceira.ParamByName('pTipo').AsString   := mTipo;
           ClassificacaoFinanceira.Open;

           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT SUM(Valor) AS Total FROM Desdobramento WHERE(Numero = :pNumero)');
           tTotal.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
           tTotal.Open;
           cTotal.Value := tTotal.FieldByName('Total').AsCurrency;
      End;
end;

procedure TFinanceiro_LancamentoDesdobrar.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) then begin
              If Desdobramento.State = dsInsert then begin
                 tItem.SQl.Clear;
                 tItem.SQL.Add('SELECT MAX(Registro) AS Item FROM Desdobramento WHERE(Numero = :pNumero)');
                 tItem.ParamByName('pNumero').AsInteger := Financeiro_LancamentoNovo2.mNumero;
                 tItem.Open;
                 DesdobramentoRegistro.Value := tItem.FieldByName('Item').AsInteger + 1;
                 DesdobramentoNumero.Value   := Financeiro_LancamentoNovo2.mNumero;
              End;

              // Verifica a classificação financeira.
              If Trim(DesdobramentoClassificacao.Value) = '' then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a classificação financeira.', mtError, [mbOK], 0);
                 cClassificacao.SetFocus;
                 Abort;
              End;

              // Verifica o valor da parcela.
              If DesdobramentoValor.Value = 0 then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o valor da parcela.', mtError, [mbOK], 0);
                 cValorItem.SetFocus;
                 Abort;
              End;

              // Verifica o processo em caso de classificação do operacional.
              If (Financeiro_Lista.mOperacional = true) and (Trim(DesdobramentoProcesso.AsString) = '') then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'Para usuarios do operacional é necessário informar o número do processo.', mtError, [mbOK], 0);
                 cProcesso.SetFocus;
                 Abort;
              End;
           End;
           
           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT SUM(Valor) AS Total FROM Desdobramento WHERE(Numero = :pNumero)');
           tTotal.ParamByName('pNumero').AsInteger := PagarReceberNumero.AsInteger;
           tTotal.Open;
           cTotal.Value := tTotal.FieldByName('Total').AsCurrency;
      End;     
end;

procedure TFinanceiro_LancamentoDesdobrar.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := TRUE;
         cClassificacao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Bancos.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

end.
