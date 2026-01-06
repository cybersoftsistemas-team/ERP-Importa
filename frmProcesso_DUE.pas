unit frmProcesso_DUE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TProcesso_DUE = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bDUE: TButton;
    cURL: TLabeledEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Memo1: TMemo;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bDUEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_DUE: TProcesso_DUE;


implementation
uses Funcoes;

{$R *.dfm}

procedure TProcesso_DUE.bDUEClick(Sender: TObject);
begin
     Memo1.Clear;

     RESTRequest1.Execute;
     memo1.Lines.add(RESTRequest1.Response.JSONText);
end;

procedure TProcesso_DUE.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TProcesso_DUE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      LimpaMemoria;
      Processo_DUE.Release;
      Processo_DUE:= nil;
end;

end.
