unit frmProcesso_Desativar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Grids, DBGrids, RXDBCtrl, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, DB;

type
  TProcesso_Desativar = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GradeCellClick(Column: TColumn);
    procedure bPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_Desativar: TProcesso_Desativar;

implementation

uses frmDados;

{$R *.dfm}

procedure TProcesso_Desativar.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TProcesso_Desativar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Processo_Desativar.Release;
     Processo_Desativar := nil;
end;

procedure TProcesso_Desativar.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
      If Dados.ProcessosDOC.FieldByName('Desativado').Value = True then begin
         Grade.Canvas.Font.Color := clSilver;
         Grade.Canvas.Font.Style := [fsItalic];
      End;
      Grade.DefaultDrawDataCell(Rect, Grade.Columns[Datacol].Field, State);

      Icon := TBitmap.Create;
      With Dados do Begin
           If (Column.FieldName = 'Desativado') then begin
              With Grade.Canvas do begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If (ProcessosDOC.FieldByName('Desativado').Value = True) then ImageList1.GetBitmap(2, Icon);
                   Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
              End;
           End;
      End;
end;

procedure TProcesso_Desativar.GradeCellClick(Column: TColumn);
begin
      With Dados do begin
           ProcessosDOC.Edit;
                        ProcessosDOCDesativado.Value := not ProcessosDOCDesativado.Value;
           ProcessosDOC.Post;
      End;
end;

procedure TProcesso_Desativar.bPesquisaClick(Sender: TObject);
var
    mPesquisa : String;
begin
      mPesquisa := UpperCase(InputBox('Pesquisa de processos', 'PROCESSO/DI/BL/CONTAINER',mPesquisa));
      With Dados do begin
           If ProcessosDOC.Locate('Processo', mPesquisa, [loPartialKey]) = False then begin
              If ProcessosDOC.Locate('Numero_Declaracao', mPesquisa, [loCaseInsensitive]) = False then begin
                 If ProcessosDOC.Locate('Numero_DOC', mPesquisa, [loCaseInsensitive]) = False then begin
                    If ProcessosDOC.Locate('Container_Numero', mPesquisa, [loCaseInsensitive]) = False then begin
                       ShowMessage('Nenhum "PROCESSO, DI, BL ou CONTAINER" encontrados com este número!');
                       Abort; 
                     End;
                 End;
              End;
           End;
      End;
end;

end.
