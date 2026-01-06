unit frmCadastro_Despachantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, MemDS, DBAccess, MSAccess, mdTabEnter, Vcl.ExtCtrls, RXCtrls,
  ATXPtask, Vcl.StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TCadastro_Despachantes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cNome: TDBEdit;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    XPPanel1: TXPPanel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    TabEnter1: TTabEnter;
    tCodigo: TMSQuery;
    StaticText3: TStaticText;
    DBEdit2: TDBEdit;
    StaticText4: TStaticText;
    DBEdit3: TDBEdit;
    StaticText6: TStaticText;
    DBEdit4: TDBEdit;
    StaticText7: TStaticText;
    DBEdit5: TDBEdit;
    tCodigoCodigo: TSmallintField;
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Despachantes: TCadastro_Despachantes;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_Despachantes.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Despachantes.NavegaClick(Sender: TObject;Button: TNavigateBtn);
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
         Dados.Despachantes.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;

end;

procedure TCadastro_Despachantes.FormShow(Sender: TObject);
begin
        Screen.Cursor :=crSQLWait; 
        Dados.Despachantes.Open;
        Screen.Cursor :=crDefault; 
end;

procedure TCadastro_Despachantes.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      If (Button = nbPost) and (Dados.Despachantes.State = dsInsert) then begin
         Screen.Cursor := crSQLWait;
         tCodigo.Open;
                Dados.DespachantesCodigo.Value := tCodigoCodigo.Value+1;
         tCodigo.Close;
         Screen.Cursor := crDefault;
     End;
end;

procedure TCadastro_Despachantes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Dados.Despachantes.Close;
     Release;
     Cadastro_Despachantes := nil;
end;

end.
