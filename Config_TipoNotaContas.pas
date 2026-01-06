unit Config_TipoNotaContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmConfig_TipoNotaContas = class(TForm)
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    StaticText5: TStaticText;
    cCodigo: TDBEdit;
    cDescricao: TDBEdit;
    StaticText1: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure bSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig_TipoNotaContas: TfrmConfig_TipoNotaContas;

implementation

{$R *.dfm}

procedure TfrmConfig_TipoNotaContas.bSairClick(Sender: TObject);
begin
     close;
end;

end.
