unit frmCadastro_Alugueis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, DB, MemDS, DBAccess, MSAccess, DBCtrls,
  Vcl.StdCtrls, Mask, Grids, DBGrids, Vcl.ExtCtrls, RXCtrls, RXDBCtrl, Menus;

type
  TCadastro_Alugueis = class(TForm)
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image2: TImage;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    DBEdit3: TDBEdit;
    StaticText6: TStaticText;
    cCodigo: TDBEdit;
    StaticText7: TStaticText;
    XPPanel1: TXPPanel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    StaticText3: TStaticText;
    DBEdit5: TDBEdit;
    StaticText8: TStaticText;
    DBEdit6: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit1: TDBEdit;

    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Alugueis: TCadastro_Alugueis;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_Alugueis.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_Alugueis.FormShow(Sender: TObject);
begin
      Dados.Alugueis.Open;
end;

procedure TCadastro_Alugueis.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := TRUE;
         cCodigo.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Alugueis.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_Alugueis.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_Alugueis.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
end;

procedure TCadastro_Alugueis.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Action            := caFree;
      Cadastro_Alugueis := nil;
end;

procedure TCadastro_Alugueis.MenuClick(Sender: TObject);
begin
     Self.Show;
     Self.WindowState := wsNormal;
end;




end.
