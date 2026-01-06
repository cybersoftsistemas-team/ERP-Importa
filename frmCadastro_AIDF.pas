unit frmCadastro_AIDF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, mdTabEnter, Vcl.StdCtrls, Mask, DBCtrls, Grids, DBGrids, Vcl.ExtCtrls,
  ATXPtask, RXCtrls, RXDBCtrl;

type
  TCadastro_AIDF = class(TForm)
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    XPPanel1: TXPPanel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    RxLabel3: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    TabEnter1: TTabEnter;
    cAutorizacao: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    cDataSaida: TDBDateEdit;
    DBDateEdit1: TDBDateEdit;
    RxDBGrid1: TRxDBGrid;
    StaticText10: TStaticText;
    DBEdit1: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_AIDF: TCadastro_AIDF;

implementation

uses frmDMFiscal, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_AIDF.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TCadastro_AIDF.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      dmFiscal.AIDF.Close;
      Cadastro_AIDF.Release;
      Cadastro_AIDF := nil;
end;

procedure TCadastro_AIDF.FormShow(Sender: TObject);
begin
       Screen.Cursor := crSQLWait;
       With dmFiscal do begin
            AIDF.SQL.Clear;
            AIDF.SQL.Add('SELECT * FROM AIDF');
            AIDF.Open;
       End;
       Screen.Cursor := crDefault;
end;

procedure TCadastro_AIDF.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cAutorizacao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         dmFiscal.AIDF.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_AIDF.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then XPPanel1.BgImage.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_AIDF.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
end;

end.
