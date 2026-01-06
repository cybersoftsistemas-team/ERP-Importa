unit frmFinanceiro_SolicitacaoItensDeleta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, RXSpin, DB, DBAccess, MSAccess, MemDS, Vcl.Mask;

type
  TFinanceiro_SolicitacaoItensDeleta = class(TForm)
    cInicio: TRxSpinEdit;
    lBeneficiario: TStaticText;
    cFinal: TRxSpinEdit;
    StaticText1: TStaticText;
    Label1: TLabel;
    bOK: TButton;
    bCancelar: TButton;
    tItens: TMSQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOKClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_SolicitacaoItensDeleta: TFinanceiro_SolicitacaoItensDeleta;

implementation

uses frmDados;

{$R *.dfm}

procedure TFinanceiro_SolicitacaoItensDeleta.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Financeiro_SolicitacaoItensDeleta.Release;
     Financeiro_SolicitacaoItensDeleta := nil;
end;

procedure TFinanceiro_SolicitacaoItensDeleta.bOKClick(Sender: TObject);
begin
      With Dados do begin
           tItens.SQL.Clear;
           tItens.SQL.Add('DELETE FROM ItensSolicitacao WHERE(Numero = :pNumero) AND (Item BETWEEN :pIni AND :pFim)');
           tItens.ParamByName('pNumero').AsInteger := SNNumero.Value;
           tItens.ParamByName('pIni').AsInteger    := cInicio.AsInteger;
           tItens.ParamByName('pFim').AsInteger    := cFinal.AsInteger;
           tItens.Execute;
           ItensSN.Refresh;
      End;
      Close;
end;

procedure TFinanceiro_SolicitacaoItensDeleta.bCancelarClick(Sender: TObject);
begin
      Close;
end;

end.
