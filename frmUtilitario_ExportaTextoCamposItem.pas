unit frmUtilitario_ExportaTextoCamposItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, RXSpin, Mask;

type
  TUtilitario_ExportaTextoCamposItem = class(TForm)
    Panel2: TPanel;
    cCampo: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    cMascara: TDBEdit;
    bOK: TButton;
    bCancelar: TButton;
    cColuna: TDBEdit;
    cTamanho: TDBEdit;
    RxSpinButton1: TRxSpinButton;
    RxSpinButton2: TRxSpinButton;
    procedure bCancelarClick(Sender: TObject);
    procedure RxSpinButton1BottomClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utilitario_ExportaTextoCamposItem: TUtilitario_ExportaTextoCamposItem;

implementation

uses frmDados;

{$R *.dfm}

procedure TUtilitario_ExportaTextoCamposItem.bCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitario_ExportaTextoCamposItem.RxSpinButton1BottomClick(Sender: TObject);
begin
      With Dados do begin
           LayoutExportacaoItensColuna.Value := LayoutExportacaoItensColuna.Value + 1;
      End;
end;

procedure TUtilitario_ExportaTextoCamposItem.FormCreate(Sender: TObject);
begin
        Dados.LayoutExportacaoItens.Append;
end;

end.
