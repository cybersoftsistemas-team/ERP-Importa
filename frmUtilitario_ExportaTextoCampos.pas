unit frmUtilitario_ExportaTextoCampos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, DBGrids, RXDBCtrl, Grids, Mask;

type
  TUtilitario_ExportaTextoCampos = class(TForm)
    Panel2: TPanel;
    cCodigo: TDBEdit;
    cNome: TDBEdit;
    StaticText1: TStaticText;
    Bevel1: TBevel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    DBGrid2: TDBGrid;
    RxDBGrid1: TRxDBGrid;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utilitario_ExportaTextoCampos: TUtilitario_ExportaTextoCampos;

implementation

uses frmUtilitario_ExportaTextoCamposItem;

{$R *.dfm}

procedure TUtilitario_ExportaTextoCampos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TUtilitario_ExportaTextoCampos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Utilitario_ExportaTextoCampos.Release;
     Utilitario_ExportaTextoCampos := nil;
end;

procedure TUtilitario_ExportaTextoCampos.RxDBGrid1DblClick(Sender: TObject);
begin
      Utilitario_ExportaTextoCamposItem := TUtilitario_ExportaTextoCamposItem.Create(Self);
      Utilitario_ExportaTextoCamposItem.ShowModal;
end;

end.
