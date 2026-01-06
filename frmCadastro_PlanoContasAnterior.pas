unit frmCadastro_PlanoContasAnterior;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Funcoes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RxCtrls;

type
  TCadastro_PlanoContasAnterior = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    cNaturteza: TDBRadioGroup;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText2: TStaticText;
    cConta: TDBEdit;
    StaticText7: TStaticText;
    DBRadioGroup1: TDBRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    bSalvar: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_PlanoContasAnterior: TCadastro_PlanoContasAnterior;

implementation

{$R *.dfm}

uses frmDMContab, frmDados, frmMenu_Principal;

procedure TCadastro_PlanoContasAnterior.bSairClick(Sender: TObject);
begin
      with dmContab do begin
            PlanoContas.cancel;
            close;
      end;
end;

procedure TCadastro_PlanoContasAnterior.bSalvarClick(Sender: TObject);
begin
      with dmContab do begin
            PlanoContas.post;
            close;
      end;
end;

procedure TCadastro_PlanoContasAnterior.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     Cadastro_PlanoContasAnterior.Release;
     Cadastro_PlanoContasAnterior := nil;
end;

procedure TCadastro_PlanoContasAnterior.FormShow(Sender: TObject);
var
   mCNPJ:string;
begin
      Screen.Cursor := crSQLWait;

      with dmContab, Dados do begin
           mCNPJ := copy(Empresas.FieldByName('CNPJ').AsString, 1, 8);
           Empresas.SQL.Clear;
           Empresas.SQL.Add('select * from Empresas where substring(CNPJ, 1, 8) = :pCNPJ');
           Empresas.ParamByName('pCNPJ').Asstring := mCNPJ;
           Empresas.Open;

           PlanoContas.Edit;
      end;

      Screen.Cursor := crDefault;
end;

end.
