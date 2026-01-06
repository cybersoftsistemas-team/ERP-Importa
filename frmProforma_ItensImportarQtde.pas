unit frmProforma_ItensImportarQtde;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Funcoes,
  Mask, RxCurrEdit;

type
  TProforma_ItensImportarQtde = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lDI: TStaticText;
    cQuantidade: TCurrencyEdit;
    StaticText1: TStaticText;
    cValor: TCurrencyEdit;
    StaticText6: TStaticText;
    cProduto: TDBEdit;
    bOK: TButton;
    bCancela: TButton;
    procedure bOKClick(Sender: TObject);
    procedure bCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Proforma_ItensImportarQtde: TProforma_ItensImportarQtde;

implementation

uses frmProforma_ItensImportar;

{$R *.dfm}

procedure TProforma_ItensImportarQtde.bOKClick(Sender: TObject);
begin
      Close;
end;

procedure TProforma_ItensImportarQtde.bCancelaClick(Sender: TObject);
begin
     Close;
end;

procedure TProforma_ItensImportarQtde.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Proforma_ItensImportar.mQuantidade := cQuantidade.Value;
     LimpaMemoria;
     Proforma_ItensImportarQtde.Release;
     Proforma_ItensImportarQtde := nil;
end;

end.
