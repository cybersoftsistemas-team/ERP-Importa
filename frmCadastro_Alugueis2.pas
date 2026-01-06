unit frmCadastro_Alugueis2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXDBCtrl, Vcl.StdCtrls, DBCtrls, DBGrids, Vcl.ExtCtrls, RXCtrls,
  Mask, Grids, Data.DB, RxToolEdit;

type
  TCadastro_Alugueis2 = class(TForm)
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
    StaticText3: TStaticText;
    DBEdit5: TDBEdit;
    StaticText8: TStaticText;
    DBEdit6: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit1: TDBEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Alugueis2: TCadastro_Alugueis2;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_Alugueis2.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_Alugueis2.Release;
      Cadastro_Alugueis2 := nil;
end;

procedure TCadastro_Alugueis2.FormShow(Sender: TObject);
begin
      With Dados do begin
           Alugueis.SQL.Clear;
           Alugueis.SQL.Add('SELECT * FROM Alugueis ORDER BY Descricao');
           Alugueis.Open;
      End;
end;

procedure TCadastro_Alugueis2.NavegaClick(Sender: TObject;Button: TNavigateBtn);
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

procedure TCadastro_Alugueis2.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TCadastro_Alugueis2.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.
