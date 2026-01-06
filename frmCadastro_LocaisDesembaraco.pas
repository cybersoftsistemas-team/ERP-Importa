unit frmCadastro_LocaisDesembaraco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls, RXDBCtrl, Vcl.StdCtrls, DBCtrls,
  Grids, DBGrids, Mask, MemDS;

type
  TCadastro_LocaisDesembaraco = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText3: TStaticText;
    cCodigo: TDBEdit;
    StaticText17: TStaticText;
    DBEdit14: TDBEdit;
    StaticText1: TStaticText;
    cDia: TDBEdit;
    Grade: TRxDBGrid;
    tPesquisa: TMSQuery;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: String;
  end;

var
  Cadastro_LocaisDesembaraco: TCadastro_LocaisDesembaraco;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_LocaisDesembaraco.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_LocaisDesembaraco.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_LocaisDesembaraco.Release;
      Cadastro_LocaisDesembaraco := nil;
end;

procedure TCadastro_LocaisDesembaraco.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_LocaisDesembaraco.FormShow(Sender: TObject);
begin
      With Dados do begin
           LocalDesembaraco.SQL.Clear;
           LocalDesembaraco.SQL.Add('SELECT * FROM LocalDesembaraco ORDER BY Descricao');
           LocalDesembaraco.Open;
      End;
end;

procedure TCadastro_LocaisDesembaraco.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
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
         Dados.LocalDesembaraco.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_LocaisDesembaraco.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Codigo/Descrição', mPesquisa);
     If Dados.LocalDesembaraco.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
        tPesquisa.SQL.Clear;
        tPesquisa.SQL.Add('SELECT * FROM LocalDesembaraco WHERE(Descricao LIKE '+QuotedStr('%'+mPesquisa+'%')+')');
        tPesquisa.Open;

        If tPesquisa.RecordCount = 0 then
           ShowMessage('Nenhum local de embarque encontrado com "Código" ou "Descrição" informados!');

        Dados.LocalDesembaraco.Locate('Codigo', tPesquisa.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
     End;
end;

end.
