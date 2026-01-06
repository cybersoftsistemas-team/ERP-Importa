unit frmCadastro_ClassificacaoNivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls,
  RXDBCtrl, Vcl.StdCtrls, DBCtrls, Mask, ClipBrd, Grids, DBGrids, MemDS, system.UITypes;

type
  TCadastro_ClassificacaoNivel = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    Grade: TRxDBGrid;
    tCodigo: TMSQuery;
    StaticText2: TStaticText;
    cNivel: TDBEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_ClassificacaoNivel: TCadastro_ClassificacaoNivel;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_ClassificacaoNivel.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_ClassificacaoNivel.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.NivelClassificacaoCodigo.AsString;
      Cadastro_ClassificacaoNivel.Release;
      Cadastro_ClassificacaoNivel := nil;
end;

procedure TCadastro_ClassificacaoNivel.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_ClassificacaoNivel.FormShow(Sender: TObject);
begin
     With Dados do begin
          NivelClassificacao.SQL.Clear;
          NivelClassificacao.SQL.Add('SELECT * FROM NivelClassificacao ORDER BY Descricao, Nivel');
          NivelClassificacao.Open;
     End;
end;

procedure TCadastro_ClassificacaoNivel.NavegaClick(Sender: TObject;  Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cDescricao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.NivelClassificacao.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_ClassificacaoNivel.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) and (Dados.NivelClassificacao.State = dsInsert) then begin
              If Trim(cNivel.Text) = '' then begin
                 MessageDlg('Campo <NÍVEL> não pode ficar em branco.', mtError, [mbOK], 0);
                 cNivel.Setfocus;                                                
                 Abort;
              End; 
              Screen.Cursor := crSQLWait;
              tCodigo.Open;
              tCodigo.SQL.Clear;
              tCodigo.SQl.Add('SELECT MAX(Codigo) AS Codigo FROM NivelClassificacao');
              tCodigo.Open;
              Dados.NivelClassificacaoCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
              tCodigo.Close;
              Screen.Cursor := crDefault;
           End;
      End;
end;

end.
