unit frmUtilitarios_ImportarAPIPUCOMEX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TUtilitarios_ImportarAPIPUCOMEX = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Label1: TLabel;
    Edit2: TEdit;
    Button3: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const
       baseurl_cnpj = 'https://www.receitaws.com.br/v1/cnpj/';
       baseurl_DI   = 'https://val.portalunico.siscomex.gov.br/';

var
  Utilitarios_ImportarAPIPUCOMEX: TUtilitarios_ImportarAPIPUCOMEX;

implementation

{$R *.dfm}

procedure TUtilitarios_ImportarAPIPUCOMEX.Button1Click(Sender: TObject);
begin
     close;
end;

procedure TUtilitarios_ImportarAPIPUCOMEX.Button2Click(Sender: TObject);
begin
     Memo1.lines.clear;
     RESTClient1.BaseURL := baseurl_cnpj + edit1.Text;
     RESTRequest1.Execute;
     memo1.lines.add(RESTRequest1.Response.JSONText);
end;

procedure TUtilitarios_ImportarAPIPUCOMEX.Button3Click(Sender: TObject);
begin
     Memo1.lines.clear;
     RESTClient1.BaseURL := baseurl_DI + edit2.Text;
     RESTRequest1.Execute;
     memo1.lines.add(RESTRequest1.Response.JSONText);
end;

end.
