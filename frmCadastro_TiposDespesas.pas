unit frmCadastro_TiposDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, MemDS, DBAccess, MSAccess, mdTabEnter, Vcl.StdCtrls, Mask,
  DBCtrls, Grids, DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, ATStandard, RXDBCtrl,
  RXCtrls;

type
  TCadastro_TiposDespesas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    TabEnter1: TTabEnter;
    StaticText2: TStaticText;
    DBRadioGroup1: TDBRadioGroup;
    RxDBGrid1: TRxDBGrid;
    StaticText3: TStaticText;
    DBEdit1: TDBEdit;
    StaticText4: TStaticText;
    DBEdit2: TDBEdit;
    StaticText6: TStaticText;
    DBEdit3: TDBEdit;
    StaticText7: TStaticText;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    XPPanel1: TXPPanel;
    Image2: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_TiposDespesas: TCadastro_TiposDespesas;

implementation

Uses frmDados;
{$R *.dfm}

procedure TCadastro_TiposDespesas.FormShow(Sender: TObject);
begin
        Screen.Cursor :=crSQLWait; 
        Dados.TipoContas.Open;
        Screen.Cursor :=crDefault;
end;
        
procedure TCadastro_TiposDespesas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_TiposDespesas.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cCodigo.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.TipoContas.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_TiposDespesas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.TipoContas.Close;
      Release;
end;

procedure TCadastro_TiposDespesas.bPesquisaClick(Sender: TObject);
Var
    mPesquisa : String;
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Codigo:', mPesquisa));
     Dados.TipoContas.Locate('Codigo', mPesquisa, [loPartialKey]);
end;

end.
