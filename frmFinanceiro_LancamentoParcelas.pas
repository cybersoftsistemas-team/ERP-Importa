unit frmFinanceiro_LancamentoParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, 
  Vcl.ExtCtrls, RXDBCtrl, Grids, DBGrids, Mask, RxCurrEdit;

type
  TFinanceiro_LancamentoParcelas = class(TForm)
    bOK: TButton;
    StaticText1: TStaticText;
    cValor: TCurrencyEdit;
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bCancelar: TButton;
    StaticText2: TStaticText;
    cTotalDocumento: TCurrencyEdit;
    procedure bOKClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_LancamentoParcelas: TFinanceiro_LancamentoParcelas;

implementation

uses frmDados;

{$R *.dfm}

procedure TFinanceiro_LancamentoParcelas.bOKClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_LancamentoParcelas.bCancelarClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_LancamentoParcelas.bSalvarClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_LancamentoParcelas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Financeiro_LancamentoParcelas.Release;
     Financeiro_LancamentoParcelas := nil;
end;

procedure TFinanceiro_LancamentoParcelas.FormShow(Sender: TObject);
begin
      With Dados do begin
           TabParcelas.First;
           cValor.Value := 0;
           While not TabParcelas.Eof do begin
                 cValor.Value := cValor.Value + TabParcelasValor.Value;
                 TabParcelas.Next;
           End;
           TabParcelas.First;
      End;
end;

end.
