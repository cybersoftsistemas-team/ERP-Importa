unit frmFinanceiro_EmprestimosDDData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.WinXCalendars, Vcl.ComCtrls, Vcl.Mask, RxToolEdit;

type
  TFinanceiro_EmprestimosDDData = class(TForm)
    Panel3: TPanel;
    bCancela: TButton;
    bOK: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    cData: TDateEdit;
    procedure bCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_EmprestimosDDData: TFinanceiro_EmprestimosDDData;

implementation

{$R *.dfm}

uses frmDados;

procedure TFinanceiro_EmprestimosDDData.bCancelaClick(Sender: TObject);
begin
     close;
end;

procedure TFinanceiro_EmprestimosDDData.bOKClick(Sender: TObject);
begin
      With Dados do begin
           EmprestimosDuplicatas.Edit;
                                 EmprestimosDuplicatasLiquidar.Value        := true;
                                 EmprestimosDuplicatasData_Liquidacao.Value := cData.Date;
           EmprestimosDuplicatas.Post;
      End;
      close;
end;

procedure TFinanceiro_EmprestimosDDData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Financeiro_EmprestimosDDData.release;
     Financeiro_EmprestimosDDData := nil;
end;

procedure TFinanceiro_EmprestimosDDData.FormShow(Sender: TObject);
begin
     cData.Date := date;
end;

end.
                        