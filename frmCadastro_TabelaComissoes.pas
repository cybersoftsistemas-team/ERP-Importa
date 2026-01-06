unit frmCadastro_TabelaComissoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, RXCtrls, Vcl.ExtCtrls,
  RXDBCtrl, Vcl.StdCtrls, DBCtrls, Funcoes, DB, DBAccess, MSAccess,
  Grids, DBGrids, Mask, MemDS;
  
type
  TCadastro_TabelaComissoes = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    Grade: TDBGrid;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    StaticText3: TStaticText;
    DBEdit2: TDBEdit;
    tCodigo: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText4: TStaticText;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    cPadrao: TDBCheckBox;
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
  Cadastro_TabelaComissoes: TCadastro_TabelaComissoes;

implementation

uses frmDMComercial, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_TabelaComissoes.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_TabelaComissoes.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Cadastro_TabelaComissoes.Release;
      Cadastro_TabelaComissoes := nil;
end;

procedure TCadastro_TabelaComissoes.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_TabelaComissoes.FormShow(Sender: TObject);
begin
      With dmComercial do begin
           TabelaComissoes.SQL.Clear;
           TabelaComissoes.SQL.Add('SELECT * FROM TabelaComissoes ORDER BY Descricao');
           TabelaComissoes.Open;
      End;
end;

procedure TCadastro_TabelaComissoes.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Screen.Cursor := crSQLWait;
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := true;
         cDescricao.SetFocus;
      End;

      If (Button = nbPost) or (Button = nbCancel) then Begin
         dmComercial.TabelaComissoes.Refresh;
         Panel2.Enabled := false;
      End;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_TabelaComissoes.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      With dmComercial do begin
            If TabelaComissoes.State = dsInsert then begin
               tCodigo.SQL.Clear;
               tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo),0) AS Codigo FROM TabelaComissoes');
               tCodigo.Open;
                       TabelaComissoesCodigo.Value := tCodigo.FieldByName('Codigo').Value + 1;
               tCodigo.Close;
            End;
            If (Button = nbPost) then begin
                // Registra log do usuario.
                If TabelaComissoes.State = dsInsert then
                   GerarLog(Menu_Principal.mUsuarioCodigo, 'TabelaComissoes', 'INCLUSÃO' , 'Codigo', 'Inclusão de Item.' , '', TabelaComissoesCodigo.AsString, '')
                else
                   GerarLog(Menu_Principal.mUsuarioCodigo, 'TabelaComissoes', 'ALTERAÇÃO', 'Codigo', 'Alteração de Item.', '', TabelaComissoesCodigo.AsString, '');
            End;

            If Button = nbDelete then
               GerarLog(Menu_Principal.mUsuarioCodigo, 'TabelaComissoes', 'EXCLUSÃO', 'Codigo', 'Exclusão de Item.', TabelaComissoesCodigo.AsString, '', '');
      End;
end;

end.
