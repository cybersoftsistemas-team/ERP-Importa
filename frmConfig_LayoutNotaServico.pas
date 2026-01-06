unit frmConfig_LayoutNotaServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl, RXCtrls, Buttons, RXSpin, Menus, DB,
  DBAccess, MSAccess, Funcoes, MemDS, Vcl.Mask;

type
  TConfig_LayoutNotaServico = class(TForm)
    Grade: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    PopupMenu1: TPopupMenu;
    AumentarLinhaemtodososcampos1: TMenuItem;
    ReduzirLinhasemtodososcampos1: TMenuItem;
    cLinha: TRxSpinEdit;
    bLinhas: TSpeedButton;
    cColuna: TRxSpinEdit;
    bColunas: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    tImpressao: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image1: TImage;
    procedure GradeDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bLinhasClick(Sender: TObject);
    procedure bColunasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Config_LayoutNotaServico: TConfig_LayoutNotaServico;

implementation

uses frmDados, frmConfig_LayoutNotaServicoInformar;

{$R *.dfm}

procedure TConfig_LayoutNotaServico.GradeDblClick(Sender: TObject);
begin
      Config_LayoutNotaServicoInformar := TConfig_LayoutNotaServicoInformar.Create(Self);
      Config_LayoutNotaServicoInformar.Caption := Caption;
      Config_LayoutNotaServicoInformar.ShowModal;
      Dados.ImpressaoServico.Refresh;
end;

procedure TConfig_LayoutNotaServico.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados do begin
           ImpressaoServico.SQL.Clear;
           ImpressaoServico.SQL.Add('SELECT * FROM ImpressaoServico ORDER BY Linha,Coluna');
           ImpressaoServico.Open;
      End;     
      Screen.Cursor := crDefault;
end;

procedure TConfig_LayoutNotaServico.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TConfig_LayoutNotaServico.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.ImpressaoServico.Close;
      LimpaMemoria;
      Config_LayoutNotaServico.Release;
      Config_LayoutNotaServico := nil;
end;

procedure TConfig_LayoutNotaServico.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With Dados do Begin
          If (Column.FieldName = 'Imprimir') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (ImpressaoServico.FieldByName('Imprimir').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TConfig_LayoutNotaServico.NavegaClick(Sender: TObject;Button: TNavigateBtn);
begin
      If (Button = nbEdit) or (Button = nbInsert) then GradeDblClick(nil);
end;

procedure TConfig_LayoutNotaServico.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TConfig_LayoutNotaServico.NavegaBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
      Navega.SetFocus;
end;

procedure TConfig_LayoutNotaServico.bLinhasClick(Sender: TObject);
begin
      With Dados do begin
           tImpressao.SQL.Clear;
           tImpressao.SQL.Add('UPDATE ImpressaoServico SET Linha = (Linha + :pLinha)');
           tImpressao.ParamByName('pLinha').AsInteger := cLinha.AsInteger;
           tImpressao.Execute;
           ImpressaoServico.Refresh;
      End;
end;

procedure TConfig_LayoutNotaServico.bColunasClick(Sender: TObject);
begin
      With Dados do begin
           tImpressao.SQL.Clear;
           tImpressao.SQL.Add('UPDATE ImpressaoServico SET Coluna = (Coluna + :pColuna)');
           tImpressao.ParamByName('pColuna').AsInteger := cColuna.AsInteger;
           tImpressao.Execute;
           ImpressaoServico.Refresh;
      End;
end;

end.

