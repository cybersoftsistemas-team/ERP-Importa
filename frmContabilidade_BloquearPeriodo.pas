unit frmContabilidade_BloquearPeriodo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Menus, Vcl.StdCtrls, RXSpin, Grids,
  DBGrids, RXDBCtrl, Vcl.ExtCtrls, RXCtrls, DateUtils, MemDS, system.UITypes, Vcl.Mask;

type
  TContabilidade_BloquearPeriodo = class(TForm)
    Image2: TImage;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    bBloquearMes: TButton;
    bBloqTudo: TButton;
    bDesTudo: TButton;
    Grade: TRxDBGrid;
    lDataPrevisao: TStaticText;
    StaticText1: TStaticText;
    cFiltroAno: TRxSpinEdit;
    cFiltroMes: TRxSpinEdit;
    cTodosAno: TCheckBox;
    cTodosMes: TCheckBox;
    PopupMenu1: TPopupMenu;
    Bloquears1: TMenuItem;
    N1: TMenuItem;
    BloquearTudo1: TMenuItem;
    DesbloquearTudo1: TMenuItem;
    N3: TMenuItem;
    ExcluirPeriodo1: TMenuItem;
    Cancelar1: TMenuItem;
    FechamentoContabil: TMSQuery;
    dsFechamentoContabil: TDataSource;
    FechamentoContabilAno: TSmallintField;
    FechamentoContabilMes: TSmallintField;
    FechamentoContabilNome_Mes: TStringField;
    FechamentoContabilFechado: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bBloquearMesClick(Sender: TObject);
    procedure bBloqTudoClick(Sender: TObject);
    procedure FiltraFechamento;
    procedure cTodosAnoClick(Sender: TObject);
    procedure cTodosMesClick(Sender: TObject);
    procedure cFiltroAnoChange(Sender: TObject);
    procedure cFiltroMesChange(Sender: TObject);
    procedure FechamentoContabilAfterScroll(DataSet: TDataSet);
    procedure bDesTudoClick(Sender: TObject);
    procedure Bloquears1Click(Sender: TObject);
    procedure BloquearTudo1Click(Sender: TObject);
    procedure DesbloquearTudo1Click(Sender: TObject);
    procedure ExcluirPeriodo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Contabilidade_BloquearPeriodo: TContabilidade_BloquearPeriodo;

implementation



{$R *.dfm}

procedure TContabilidade_BloquearPeriodo.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TContabilidade_BloquearPeriodo.FormShow(Sender: TObject);
begin
       FechamentoContabil.SQL.Clear;
       FechamentoContabil.SQL.Add('INSERT INTO FechamentoContabil (Ano, Mes, Nome_Mes, Fechado)');
       FechamentoContabil.SQL.Add('            SELECT  Ano      = YEAR(Data)');
       FechamentoContabil.SQL.Add('		      ,Mes      = MONTH(Data)');
       FechamentoContabil.SQL.Add('		      ,Nome_Mes = CASE WHEN MONTH(Data) =  1 THEN ''Janeiro'' ');
       FechamentoContabil.SQL.Add('				       WHEN MONTH(Data) =  2 THEN ''Fevereiro'' ');
       FechamentoContabil.SQL.Add('                                    WHEN MONTH(Data) =  3 THEN ''Março'' ');
       FechamentoContabil.SQL.Add('                                    WHEN MONTH(Data) =  4 THEN ''Abril'' ');
       FechamentoContabil.SQL.Add('                                    WHEN MONTH(Data) =  5 THEN ''Maio'' ');
       FechamentoContabil.SQL.Add('                                    WHEN MONTH(Data) =  6 THEN ''Junho'' ');
       FechamentoContabil.SQL.Add('                                    WHEN MONTH(Data) =  7 THEN ''Julho'' ');
       FechamentoContabil.SQL.Add('                                    WHEN MONTH(Data) =  8 THEN ''Agosto'' ');
       FechamentoContabil.SQL.Add('                                    WHEN MONTH(Data) =  9 THEN ''Setembro'' ');
       FechamentoContabil.SQL.Add('                                    WHEN MONTH(Data) = 10 THEN ''Outubro'' ');
       FechamentoContabil.SQL.Add('                                    WHEN MONTH(Data) = 11 THEN ''Novembro'' ');
       FechamentoContabil.SQL.Add('                                    WHEN MONTH(Data) = 12 THEN ''Dezembro'' ');
       FechamentoContabil.SQL.Add('                               END');
       FechamentoContabil.SQL.Add('		      ,Fechado  = 0');
       FechamentoContabil.SQL.Add('            FROM   Lancamentos');
       FechamentoContabil.SQL.Add('            WHERE (SELECT COUNT(*) FROM FechamentoContabil WHERE Ano = YEAR(Data) AND Mes = MONTH(Data)) = 0');
       FechamentoContabil.SQL.Add('            GROUP BY YEAR(Data), MONTH(Data)');
       FechamentoContabil.SQL.Add('            ORDER BY Ano, Mes');
       //FechamentoContabil.SQL.SaveToFile('c:\Temp\Fechamento_Contabil.sql');
       FechamentoContabil.Execute;

       FiltraFechamento;
       
       cFiltroAno.Value := YearOf(Date);
       cFiltroMes.Value := 0;
end;

procedure TContabilidade_BloquearPeriodo.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TContabilidade_BloquearPeriodo.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Contabilidade_BloquearPeriodo.Release;
     Contabilidade_BloquearPeriodo := nil;
end;

procedure TContabilidade_BloquearPeriodo.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
    Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     Icon.Transparent := true;

     If not Odd(FechamentoContabilAno.AsInteger) then
        Grade.Canvas.Brush.Color:= $00C6E2FF
     else
        Grade.Canvas.Brush.Color:= clWhite;

     TDbGrid(Sender).Canvas.font.Color:= clBlack;
     If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
        Brush.Color := $00FFAAB0;
        FillRect(Rect);
        Font.Style := [fsbold];
        Font.Color := clBlack;
     End;
     TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

     If FileExists('CadeadoFechado.bmp') then begin
        If (Column.FieldName = 'Fechado') then begin
           With Grade.Canvas do begin
                Brush.Color := clWhite;
                FillRect(Rect);
                If (FechamentoContabil.FieldByName('Fechado').AsBoolean) then
                   Icon.LoadFromFile('CadeadoFechado.bmp')
                else
                   Icon.LoadFromFile('CadeadoAberto.bmp');
                Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), round((Rect.Top + Rect.Bottom - Icon.Height)/2), Icon);
           End;
        End;
     End;

end;

procedure TContabilidade_BloquearPeriodo.bBloquearMesClick(Sender: TObject);
begin
     If not FechamentoContabilFechado.AsBoolean then begin
        If MessageDlg('Deseja realmente bloquear este mês contabil?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
           Abort;
     end else begin
        If MessageDlg('Deseja realmente desbloquear este mês contabil?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
           Abort;
     End;      

     FechamentoContabil.Edit;
                        FechamentoContabilFechado.Value := not FechamentoContabilFechado.Value;
     FechamentoContabil.Post;
     FechamentoContabil.Refresh;
end;

procedure TContabilidade_BloquearPeriodo.bBloqTudoClick(Sender: TObject);
begin
     If MessageDlg('Deseja realmente bloquear todos os mêses contabeis em aberto?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

     FechamentoContabil.SQL.Clear;
     FechamentoContabil.SQL.Add('UPDATE FechamentoContabil SET Fechado = 1 WHERE ISNULL(Fechado, 0) = 0');
     FechamentoContabil.Execute;

     FechamentoContabil.SQL.Clear;
     FechamentoContabil.SQL.Add('SELECT  Ano');
     FechamentoContabil.SQL.Add('       ,Mes');
     FechamentoContabil.SQL.Add('	,Fechado');
     FechamentoContabil.SQL.Add('	,Nome_Mes');
     FechamentoContabil.SQL.Add('FROM   FechamentoContabil');
     FechamentoContabil.SQL.Add('ORDER BY Ano DESC, Mes DESC');
     FechamentoContabil.Open;
end;

procedure TContabilidade_BloquearPeriodo.FiltraFechamento;
begin
     FechamentoContabil.SQL.Clear;
     FechamentoContabil.SQL.Add('SELECT  Ano');
     FechamentoContabil.SQL.Add('       ,Mes');
     FechamentoContabil.SQL.Add('	,Fechado');
     FechamentoContabil.SQL.Add('	,Nome_Mes');
     FechamentoContabil.SQL.Add('FROM   FechamentoContabil');
     FechamentoContabil.SQL.Add('WHERE  Ano IS NOT NULL');

     If not cTodosAno.Checked then begin
        FechamentoContabil.SQL.Add('AND    Ano = '+cFiltroAno.Text);
     End;
     If not cTodosMes.Checked then begin
        FechamentoContabil.SQL.Add('AND    Mes = '+cFiltroMes.Text);
     End;
     FechamentoContabil.SQL.Add('ORDER BY Ano DESC, Mes DESC');

     FechamentoContabil.Open;
end;


procedure TContabilidade_BloquearPeriodo.cTodosAnoClick(Sender: TObject);
begin
      cFiltroAno.Enabled := not cTodosAno.Checked;
      FiltraFechamento;
end;

procedure TContabilidade_BloquearPeriodo.cTodosMesClick(Sender: TObject);
begin
      cFiltroMes.Enabled := not cTodosMes.Checked;
      FiltraFechamento;
end;

procedure TContabilidade_BloquearPeriodo.cFiltroAnoChange(Sender: TObject);
begin
      FiltraFechamento;
end;

procedure TContabilidade_BloquearPeriodo.cFiltroMesChange(Sender: TObject);
begin
      FiltraFechamento;
end;

procedure TContabilidade_BloquearPeriodo.FechamentoContabilAfterScroll(DataSet: TDataSet);
begin
     If FechamentoContabilFechado.AsBoolean then
        bBloquearMes.Caption := '&Desbl.Mês'
     else
        bBloquearMes.Caption := '&Bloq.Mês'
end;

procedure TContabilidade_BloquearPeriodo.bDesTudoClick(Sender: TObject);
begin
     If MessageDlg('Deseja realmente desbloquear todos os mêses fiscais em aberto?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

     FechamentoContabil.SQL.Clear;
     FechamentoContabil.SQL.Add('UPDATE FechamentoContabil SET Fechado = 0 WHERE ISNULL(Fechado, 0) = 1');
     FechamentoContabil.Execute;

     FechamentoContabil.SQL.Clear;
     FechamentoContabil.SQL.Add('SELECT Ano');
     FechamentoContabil.SQL.Add('       ,Mes');
     FechamentoContabil.SQL.Add('	      ,Fechado');
     FechamentoContabil.SQL.Add('	      ,Nome_Mes');
     FechamentoContabil.SQL.Add('FROM   FechamentoContabil');
     FechamentoContabil.SQL.Add('ORDER BY Ano DESC, Mes DESC');
     FechamentoContabil.Open;
end;

procedure TContabilidade_BloquearPeriodo.Bloquears1Click(Sender: TObject);
begin
     bBloquearMes.Click;
end;

procedure TContabilidade_BloquearPeriodo.BloquearTudo1Click(  Sender: TObject);
begin
     bBloqTudo.Click;
end;

procedure TContabilidade_BloquearPeriodo.DesbloquearTudo1Click(Sender: TObject);
begin
      bDesTudo.Click
end;

procedure TContabilidade_BloquearPeriodo.ExcluirPeriodo1Click(Sender: TObject);
begin
     If MessageDlg('Deseja realmente excluir este mês da relação?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

     FechamentoContabil.Delete;
     FechamentoContabil.Refresh;

     FechamentoContabil.SQL.Clear;
     FechamentoContabil.SQL.Add('SELECT  Ano');
     FechamentoContabil.SQL.Add('       ,Mes');
     FechamentoContabil.SQL.Add('	,Fechado');
     FechamentoContabil.SQL.Add('	,Nome_Mes');
     FechamentoContabil.SQL.Add('FROM   FechamentoContabil');
     FechamentoContabil.SQL.Add('ORDER BY Ano DESC, Mes DESC');
     FechamentoContabil.Open;
end;

end.
