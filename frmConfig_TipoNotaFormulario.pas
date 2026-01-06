unit frmConfig_TipoNotaFormulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Buttons, ExtCtrls;

type
  TConfig_TipoNotaFormulario = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Config_TipoNotaFormulario: TConfig_TipoNotaFormulario;

implementation

uses frmDados;

{$R *.dfm}

procedure TConfig_TipoNotaFormulario.BitBtn1Click(Sender: TObject);
begin
       With Dados do Begin
            ImpDefault.Close;
            ImpDefault.SQL.Clear;
            ImpDefault.SQL.Add('SELECT * FROM ImpressaoDefault WHERE TipoNota = 80');
            ImpDefault.Open;
            TipoNotaColunas.Value := 80;
       End;
       Close;
end;

procedure TConfig_TipoNotaFormulario.BitBtn2Click(Sender: TObject);
begin
       With Dados do Begin
            ImpDefault.Close;
            ImpDefault.SQL.Clear;
            ImpDefault.SQL.Add('SELECT * FROM ImpressaoDefault WHERE TipoNota = 132');
            ImpDefault.Open;
            TipoNotaColunas.Value := 132;
       End;
       Close;
end;

procedure TConfig_TipoNotaFormulario.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Release;
      Config_TipoNotaFormulario := nil;
end;

end.
