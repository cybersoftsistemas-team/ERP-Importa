unit frmCadastro_Transportadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, MemDS, DBAccess, MSAccess, mdTabEnter, Vcl.StdCtrls, Mask,
  DBCtrls, Vcl.ExtCtrls, ATStandard, FUNCOES, Vcl.ComCtrls, RXCtrls;

type
  TCadastro_Transportadores = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    cNome: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    cCNPJ: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    TabEnter1: TTabEnter;
    tCodigo: TMSQuery;
    tCodigoCodigo: TIntegerField;
    XPPanel1: TXPPanel;
    Image2: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cCNPJExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Transportadores: TCadastro_Transportadores;

implementation

Uses frmDados;
{$R *.dfm}

procedure TCadastro_Transportadores.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Transportadores.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cNome.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Transportadores.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_Transportadores.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        Dados.Transportadores.Open;
        Dados.Estados.Open;
        Screen.Cursor := crDefault;
end;

procedure TCadastro_Transportadores.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.Transportadores.Close;
      Dados.Estados.Close;
      Release;
end;

procedure TCadastro_Transportadores.cCNPJExit(Sender: TObject);
begin
        If ((CNPJ(cCNPJ.Text)) = False) and (Trim(cCNPJ.Text) <> '') then begin
           MessageDlg('Número de CNPJ incorreto!', mtError, [mbok],0);
           Navega.Controls[7].Enabled := False;
           cCNPJ.Color := clRed;
        End else begin
           Navega.Controls[7].Enabled := True;
           cCNPJ.Color := clWindow;
        End;
end;

procedure TCadastro_Transportadores.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      If (Button = nbPost) and (Dados.Transportadores.State = dsInsert) then begin
         Screen.Cursor := crSQLWait;
         tCodigo.Open;
         Dados.TransportadoresCodigo.Value := tCodigoCodigo.Value+1;
         tCodigo.Close;
         Screen.Cursor := crDefault;
     End;
end;

procedure TCadastro_Transportadores.bPesquisaClick(Sender: TObject);
Var
    mPesquisa : String;
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Nome', mPesquisa));
     Dados.Transportadores.Locate('Nome', mPesquisa, [loPartialKey]);
end;

end.
