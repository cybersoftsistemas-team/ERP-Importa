unit frmJanela_Comunicacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,   Vcl.StdCtrls, Vcl.ExtCtrls, Funcoes, Vcl.ComCtrls;

type
  TJanela_Comunicacao = class(TForm)


    lMesagem1: TLabel;
    lTempo: TLabel;
    bCancelar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Janela_Comunicacao: TJanela_Comunicacao;

implementation

{$R *.dfm}

procedure TJanela_Comunicacao.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
        LimpaMemoria;
        Janela_Comunicacao.Release;
        Janela_Comunicacao := nil;
end;

end.
