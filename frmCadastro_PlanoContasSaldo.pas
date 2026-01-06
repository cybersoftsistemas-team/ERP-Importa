unit frmCadastro_PlanoContasSaldo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Funcoes, Mask;

type
  TCadastro_PlanoContasSaldo = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    StaticText6: TStaticText;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    mSaldo : Currency;
  end;

var
  Cadastro_PlanoContasSaldo: TCadastro_PlanoContasSaldo;

implementation

uses frmDMContab;

{$R *.dfm}

procedure TCadastro_PlanoContasSaldo.Button1Click(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_PlanoContasSaldo.FormShow(Sender: TObject);
begin
        mSaldo := dmContab.PlanoContasSaldo_Anterior.Value;
end;

procedure TCadastro_PlanoContasSaldo.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Cadastro_PlanoContasSaldo.Release;
     Cadastro_PlanoContasSaldo := nil;
end;

end.
