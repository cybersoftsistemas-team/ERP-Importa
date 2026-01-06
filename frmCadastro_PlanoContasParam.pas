unit frmCadastro_PlanoContasParam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Grids, DBGrids, RXDBCtrl, DB, MemDS, DBAccess, MSAccess,
  DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, Mask;

type
  TCadastro_PlanoContasParam = class(TForm)
    RxDBGrid1: TRxDBGrid;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    XPPAnel1: TXPPanel;
    Image2: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_PlanoContasParam: TCadastro_PlanoContasParam;

implementation

uses frmDMContab, frmDados;

{$R *.dfm}

procedure TCadastro_PlanoContasParam.FormShow(Sender: TObject);
begin
        With dmContab do begin
             PlanoContas.SQL.Clear;
             PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE (Titulo = 1) ORDER BY Conta, Codigo');
             PlanoContas.Open;
             Origens.Open;
        End;
end;

procedure TCadastro_PlanoContasParam.bSairClick(Sender: TObject);
begin
        Close;
end;

end.
