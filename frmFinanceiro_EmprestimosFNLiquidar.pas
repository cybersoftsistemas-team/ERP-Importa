unit frmFinanceiro_EmprestimosFNLiquidar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RXCtrls, Vcl.ExtCtrls,
  DB, DBAccess, MSAccess, Mask, RxCurrEdit, MemDS, system.UITypes, RxToolEdit;

type
  TFinanceiro_EmprestimosFNLiquidar = class(TForm)
    bCancelar: TButton;
    bLiquidar: TButton;
    Panel1: TPanel;
    RxLabel2: TRxLabel;
    cTaxa: TCurrencyEdit;
    StaticText17: TStaticText;
    tRegistro: TMSQuery;
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bLiquidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_EmprestimosFNLiquidar: TFinanceiro_EmprestimosFNLiquidar;

implementation

uses frmDados;

{$R *.dfm}

procedure TFinanceiro_EmprestimosFNLiquidar.bCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_EmprestimosFNLiquidar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Financeiro_EmprestimosFNLiquidar.Release;
      Financeiro_EmprestimosFNLiquidar := nil;
end;

procedure TFinanceiro_EmprestimosFNLiquidar.bLiquidarClick(Sender: TObject);
Var
   mTotal: Real;
begin
      If MessageDlg('Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Abort;
      End;

      Screen.Cursor := crSQLWait;
      With Dados do begin

           mTotal := 0;

           EmprestimosFINIMP.First;
           While not EmprestimosFINIMP.Eof do begin
                 EmprestimosFINIMP.Edit;
                                   EmprestimosFINIMPTaxa_Cambial.Value := cTaxa.Value;
                 EmprestimosFINIMP.Post;

                 PagarReceber.SQL.Clear;
                 PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE Numero = :pNumero');
                 PagarReceber.ParamByName('pNumero').AsInteger := EmprestimosFINIMPFinanceiro_Numero.AsInteger;
                 PagarReceber.Open;

                 PagarReceber.Edit;
                              PagarReceberValor_Documento.Value := EmprestimosFINIMPValor_ME.AsCurrency * cTaxa.Value;
                              PagarReceberValor_Parcela.Value   := EmprestimosFINIMPValor_ME.AsCurrency * cTaxa.Value;
                              PagarReceberValor_Operacao.Value  := EmprestimosFINIMPValor_ME.AsCurrency * cTaxa.Value;
                              PagarReceberValor_Total.Value     := EmprestimosFINIMPValor_ME.AsCurrency * cTaxa.Value;
                              PagarReceberBanco.Value           := EmprestimosBanco.Value;
                 PagarReceber.Post;

                 // Baixa de liquidação de empréstimos.
                 PagarReceberBaixas.SQL.Clear;
                 PagarReceberBaixas.SQL.Add('SELECT * FROM PagarReceberBaixas WHERE Numero = :pNumero');
                 PagarReceberBaixas.ParamByName('pNumero').AsInteger := EmprestimosFINIMPFinanceiro_Numero.AsInteger;
                 PagarReceberBaixas.Open;

                 Bancos.SQL.Clear;
                 Bancos.SQL.Add('SELECT * FROM Bancos WHERE Codigo = :pCodigo');
                 Bancos.ParamByName('pCodigo').AsInteger := EmprestimosBanco.AsInteger;
                 Bancos.Open;

                 tRegistro.SQL.Clear;
                 tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM PagarReceberBaixas');
                 tRegistro.Open;

                 PagarReceberBaixas.Append;
                                    PagarReceberBaixasRegistro.Value            := tRegistro.FieldByName('Registro').AsInteger + 1;
                                    PagarReceberBaixasNumero.Value              := PagarReceberNumero.AsInteger;
                                    PagarReceberBaixasData.Value                := PagarReceberData_Vencimento.Value;
                                    PagarReceberBaixasTipo.Value                := PagarReceberTipo.AsString;
                                    PagarReceberBaixasValor.Value               := PagarReceberValor_Operacao.Value;
                                    PagarReceberBaixasBanco.Value               := PagarReceberBanco.AsInteger;
                                    PagarReceberBaixasForma_Tipo.Value          := PagarReceberForma_Tipo.Value;
                                    PagarReceberBaixasForma_TipoDocumento.Value := PagarReceberNumero_FormaTipo.AsString;
                                    PagarReceberBaixasObservacao.Value          := 'Liquidação de empréstimo nº '+ EmprestimosNumero_Documento.AsString + ' de '+ EmprestimosData.AsString + '   Processo '+PagarReceberProcesso.AsString;
                                    PagarReceberBaixasBanco_Conta.Value         := BancosConta.AsString;
                 PagarReceberBaixas.Post;
                 tRegistro.Close;

                 // Grava o numero da baixa no titulo.
                 PagarReceber.Edit;
                              PagarReceberBaixa_Numero.Value := PagarReceberBaixasRegistro.Value;
                 PagarReceber.Post;

                 mTotal := mTotal + (EmprestimosFINIMPValor_ME.AsCurrency * cTaxa.Value);

                 EmprestimosFINIMP.Next;
           End;

           // Atualiza a taxa do contrato de câmbio.
           ContratoCambio.SQL.Clear;
           ContratoCambio.SQL.Add('SELECT * FROM ContratoCambio WHERE Numero = :pNumero');
           ContratoCambio.ParamByName('pNumero').AsString := EmprestimosNumero_Documento.AsString;
           ContratoCambio.Open;
           ContratoCambio.Edit;
                          ContratoCambioTaxa_Cambial.Value := cTaxa.Value;
           ContratoCambio.Post;

           Emprestimos.Edit;
                       EmprestimosTaxa_Cambial.Value    := cTaxa.Value;
                       EmprestimosLiquidado.Value       := true;
                       EmprestimosValor_Principal.Value := mTotal;
           Emprestimos.Post;
      End;
      Screen.Cursor     := crDefault;

      MessageDlg('Liquidação de Empréstimo FINIMP concluída!', mtInformation, [mbOK], 0);

      Close;
end;



end.
