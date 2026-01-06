unit frmFinanceiro_LancamentoDadosBancarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DBCtrls,
  Mask;

type
  TFinanceiro_LancamentoDadosBancarios = class(TForm)
    Panel1: TPanel;
    bOK: TButton;
    lBanco: TStaticText;
    lBordero: TStaticText;
    cAgencia: TDBEdit;
    StaticText1: TStaticText;
    cConta: TDBEdit;
    cBanco: TDBEdit;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    procedure bOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_LancamentoDadosBancarios: TFinanceiro_LancamentoDadosBancarios;

implementation



{$R *.dfm}

procedure TFinanceiro_LancamentoDadosBancarios.bOKClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_LancamentoDadosBancarios.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Financeiro_LancamentoDadosBancarios.Release;
     Financeiro_LancamentoDadosBancarios := nil;
end;

end.
