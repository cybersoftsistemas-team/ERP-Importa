unit frmInvoice_ItensQtde;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  TInvoice_ItensQtde = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lDI: TStaticText;
    cQuantidade: TCurrencyEdit;
    cPercentualQtde: TCurrencyEdit;
    StaticText6: TStaticText;
    cProduto: TDBEdit;
    bOK: TButton;
    bCancela: TButton;
    procedure bCancelaClick(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure cPercentualQtdeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mQuantidade: real;
  end;

var
  Invoice_ItensQtde: TInvoice_ItensQtde;

implementation

{$R *.dfm}

uses FUNCOES, frmdmDespacho, frmProcesso_InvoiceItens;

procedure TInvoice_ItensQtde.bCancelaClick(Sender: TObject);
begin
     Processo_InvoiceItens.mQuantidade := 0;
     close;
end;

procedure TInvoice_ItensQtde.bOKClick(Sender: TObject);
begin
     Processo_InvoiceItens.mQuantidade := mQuantidade;
     close;
end;

procedure TInvoice_ItensQtde.cPercentualQtdeChange(Sender: TObject);
begin
      cQuantidade.Value := mQuantidade;
      if (cPercentualQtde.Value > 0) and (cPercentualQtde.Value <= 100)  then begin
         cQuantidade.Value := Percentual(mQuantidade, cPercentualQtde.Value);
      end;
end;

end.
