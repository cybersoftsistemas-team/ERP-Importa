unit frmNotaFiscal_EstornoCreditos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, MemDS, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, DBCtrls, RXDBCtrl, Mask;

type
  TNotaFiscal_EstornoCreditos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    cExtorno: TDBEdit;
    cDataExtorno: TDBDateEdit;
    StaticText1: TStaticText;
    StaticText11: TStaticText;
    StaticText9: TStaticText;
    StaticText24: TStaticText;
    cNota: TDBEdit;
    StaticText3: TStaticText;
    StaticText17: TStaticText;
    cDataNota: TDBDateEdit;
    StaticText18: TStaticText;
    cValor: TDBEdit;
    cImposto: TDBComboBox;
    cObservacao: TDBEdit;
    XPPanel1: TXPPanel;
    Image2: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    tNumero: TMSQuery;
    tNumeroNumero: TSmallintField;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_EstornoCreditos: TNotaFiscal_EstornoCreditos;

implementation

{$R *.dfm}

procedure TNotaFiscal_EstornoCreditos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TNotaFiscal_EstornoCreditos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     NotaFiscal_EstornoCreditos.Release;
     NotaFiscal_EstornoCreditos := nil;
end;

end.


