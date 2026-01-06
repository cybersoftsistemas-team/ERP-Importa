unit frmConfig_TipoNotaVisiveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Grids, DBGrids, RXDBCtrl, Vcl.StdCtrls, DBCtrls, ExtCtrls;

type
  TConfig_TipoNotaVisiveis = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Button1: TButton;
    bTodos: TButton;
    Navega: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeCellClick(Column: TColumn);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure bTodosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Config_TipoNotaVisiveis: TConfig_TipoNotaVisiveis;

implementation

uses frmDados, frmConfig_TipoNota;

{$R *.dfm}

procedure TConfig_TipoNotaVisiveis.Button1Click(Sender: TObject);
begin
       Close;
end;

procedure TConfig_TipoNotaVisiveis.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.Impressao.Close;
      Dados.Impressao.SQL.Clear;
      Dados.Impressao.SQL.Add('SELECT * FROM Impressao WHERE (TipoNota = :pTipoNota) AND Visivel = 1 ORDER BY Linha,Coluna');
      Dados.Impressao.ParamByName('pTipoNota').AsInteger := Dados.TipoNotaCodigo.Value;
      Dados.Impressao.Open;

      Config_TipoNotaVisiveis.Release;
      Config_TipoNotaVisiveis := nil;
end;

procedure TConfig_TipoNotaVisiveis.GradeCellClick(Column: TColumn);
begin
      If Column.Field.Name = 'ImpressaoVisivel' then begin
         Dados.Impressao.Edit;
                         Dados.ImpressaoVisivel.Value  := not Dados.ImpressaoVisivel.Value;
                         Dados.ImpressaoImprimir.Value := False;
         Dados.Impressao.Post;
      End;   
end;

procedure TConfig_TipoNotaVisiveis.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With Dados do Begin
          If (Column.FieldName = 'Visivel') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (Impressao.FieldByName('Visivel').Value = True)  then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
                  Icon.Destroy;
             End;
          End;
     End;
end;

procedure TConfig_TipoNotaVisiveis.FormShow(Sender: TObject);
begin
      Dados.Impressao.Close;
      Dados.Impressao.SQL.Clear;
      Dados.Impressao.SQL.Add('SELECT * FROM Impressao WHERE TipoNota = :pTipoNota ORDER BY Linha, Coluna');
      Dados.Impressao.ParamByName('pTipoNota').AsInteger := Dados.TipoNotaCodigo.Value;
      Dados.Impressao.Open;
end;

procedure TConfig_TipoNotaVisiveis.bTodosClick(Sender: TObject);
begin
      With Dados do Begin
           Impressao.First;
           While not Impressao.Eof do begin
                 Impressao.Edit;
                           ImpressaoVisivel.Value := True;
                 Impressao.Post;
                 Impressao.Next;          
           End;
      End;
end;

end.
