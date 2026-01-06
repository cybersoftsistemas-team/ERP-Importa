unit frmFiscal_BloquearPeriodo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, DB, DBAccess, MSAccess, system.UITypes, Vcl.StdCtrls, RXDBCtrl, Grids, DBGrids, RXSpin, DateUtils, Menus, MemDS, Vcl.Mask;

type
  TFiscal_BloquearPeriodo = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    RxLabel3: TRxLabel;
    lTitulo: TRxLabel;
    Image2: TImage;
    Grade: TRxDBGrid;
    bBloquearMes: TButton;
    bBloqTudo: TButton;
    lDataPrevisao: TStaticText;
    StaticText1: TStaticText;
    cFiltroAno: TRxSpinEdit;
    cFiltroMes: TRxSpinEdit;
    cTodosAno: TCheckBox;
    cTodosMes: TCheckBox;
    PopupMenu1: TPopupMenu;
    Bloquears1: TMenuItem;
    BloquearTudo1: TMenuItem;
    DesbloquearTudo1: TMenuItem;
    N3: TMenuItem;
    Cancelar1: TMenuItem;
    ExcluirPeriodo1: TMenuItem;
    FechamentoFiscal: TMSQuery;
    FechamentoFiscalAno: TSmallintField;
    FechamentoFiscalMes: TSmallintField;
    FechamentoFiscalNome_Mes: TStringField;
    FechamentoFiscalFechado: TBooleanField;
    dsFechamentoFiscal: TDataSource;
    bDesTudo: TButton;
    N1: TMenuItem;
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
    procedure BloquearAno1Click(Sender: TObject);
    procedure DesbloquearTudo1Click(Sender: TObject);
    procedure FechamentoFiscalAfterScroll(DataSet: TDataSet);
    procedure bDesTudoClick(Sender: TObject);
    procedure Bloquears1Click(Sender: TObject);
    procedure ExcluirPeriodo1Click(Sender: TObject);
    procedure BloquearTudo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fiscal_BloquearPeriodo: TFiscal_BloquearPeriodo;

implementation



{$R *.dfm}

procedure TFiscal_BloquearPeriodo.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TFiscal_BloquearPeriodo.FormShow(Sender: TObject);
begin
       FechamentoFiscal.SQL.Clear;
       FechamentoFiscal.SQL.Add('INSERT INTO FechamentoFiscal (Ano, Mes, Nome_Mes, Fechado)');
       FechamentoFiscal.SQL.Add('       SELECT Ano      = YEAR(Data_Entrada)');
       FechamentoFiscal.SQL.Add('             ,Mes      = MONTH(Data_Entrada)');
       FechamentoFiscal.SQL.Add('             ,Nome_Mes = CASE WHEN MONTH(Data_Entrada) =  1 THEN ''Janeiro'' ');
       FechamentoFiscal.SQL.Add('                              WHEN MONTH(Data_Entrada) =  2 THEN ''Fevereiro'' ');
       FechamentoFiscal.SQL.Add('                                   WHEN MONTH(Data_Entrada) =  3 THEN ''Março'' ');
       FechamentoFiscal.SQL.Add('                                   WHEN MONTH(Data_Entrada) =  4 THEN ''Abril'' ');
       FechamentoFiscal.SQL.Add('                                   WHEN MONTH(Data_Entrada) =  5 THEN ''Maio'' ');
       FechamentoFiscal.SQL.Add('                                   WHEN MONTH(Data_Entrada) =  6 THEN ''Junho'' ');
       FechamentoFiscal.SQL.Add('                                   WHEN MONTH(Data_Entrada) =  7 THEN ''Julho'' ');
       FechamentoFiscal.SQL.Add('                                   WHEN MONTH(Data_Entrada) =  8 THEN ''Agosto'' ');
       FechamentoFiscal.SQL.Add('                                   WHEN MONTH(Data_Entrada) =  9 THEN ''Setembro'' ');
       FechamentoFiscal.SQL.Add('                                   WHEN MONTH(Data_Entrada) = 10 THEN ''Outubro'' ');
       FechamentoFiscal.SQL.Add('                                   WHEN MONTH(Data_Entrada) = 11 THEN ''Novembro'' ');
       FechamentoFiscal.SQL.Add('                                   WHEN MONTH(Data_Entrada) = 12 THEN ''Dezembro'' ');
       FechamentoFiscal.SQL.Add('                              END');
       FechamentoFiscal.SQL.Add('             ,Fechado  = 0');
       FechamentoFiscal.SQL.Add('              FROM   NotasTerceiros');
       FechamentoFiscal.SQL.Add('              WHERE (SELECT COUNT(*) FROM FechamentoFiscal WHERE Ano = YEAR(Data_Entrada) AND Mes = MONTH(Data_Entrada)) = 0');
       FechamentoFiscal.SQL.Add('              GROUP BY YEAR(Data_Entrada), MONTH(Data_Entrada)');
       FechamentoFiscal.SQL.Add('              ORDER BY Ano, Mes');
       //FechamentoFiscal.SQL.SaveToFile('c:\Temp\Fechamento_Fiscal.sql');
       FechamentoFiscal.Execute;

       FiltraFechamento;
       
       cFiltroAno.Value := YearOf(Date);
       cFiltroMes.Value := 0;
end;

procedure TFiscal_BloquearPeriodo.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFiscal_BloquearPeriodo.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Fiscal_BloquearPeriodo.Release;
     Fiscal_BloquearPeriodo := nil;
end;

procedure TFiscal_BloquearPeriodo.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
    Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     Icon.Transparent := true;

     If not Odd(FechamentoFiscalAno.AsInteger) then
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
                If (FechamentoFiscal.FieldByName('Fechado').AsBoolean) then
                   Icon.LoadFromFile('CadeadoFechado.bmp')
                else
                   Icon.LoadFromFile('CadeadoAberto.bmp');
                Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), round((Rect.Top + Rect.Bottom - Icon.Height)/2), Icon);
           End;
        End;
     End;
end;

procedure TFiscal_BloquearPeriodo.bBloquearMesClick(Sender: TObject);
begin
     If not FechamentoFiscalFechado.AsBoolean then begin
        If MessageDlg('Deseja realmente bloquear este mês fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
           Abort;
     end else begin
        If MessageDlg('Deseja realmente desbloquear este mês fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
           Abort;
     End;      

     FechamentoFiscal.Edit;
                      FechamentoFiscalFechado.Value := not FechamentoFiscalFechado.Value;
     FechamentoFiscal.Post;
     FechamentoFiscal.Refresh;
end;

procedure TFiscal_BloquearPeriodo.bBloqTudoClick(Sender: TObject);
begin
     If MessageDlg('Deseja realmente bloquear todos os mêses fiscais em aberto?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

     FechamentoFiscal.SQL.Clear;
     FechamentoFiscal.SQL.Add('UPDATE FechamentoFiscal SET Fechado = 1 WHERE ISNULL(Fechado, 0) = 0');
     FechamentoFiscal.Execute;

     FechamentoFiscal.SQL.Clear;
     FechamentoFiscal.SQL.Add('SELECT  Ano');
     FechamentoFiscal.SQL.Add('       ,Mes');
     FechamentoFiscal.SQL.Add('	      ,Fechado');
     FechamentoFiscal.SQL.Add('	      ,Nome_Mes');
     FechamentoFiscal.SQL.Add('FROM   FechamentoFiscal');
     FechamentoFiscal.SQL.Add('ORDER BY Ano DESC, Mes DESC');
     FechamentoFiscal.Open;
end;

procedure TFiscal_BloquearPeriodo.FiltraFechamento;
begin
     FechamentoFiscal.SQL.Clear;
     FechamentoFiscal.SQL.Add('SELECT  Ano');
     FechamentoFiscal.SQL.Add('       ,Mes');
     FechamentoFiscal.SQL.Add('	      ,Fechado');
     FechamentoFiscal.SQL.Add('	      ,Nome_Mes');
     FechamentoFiscal.SQL.Add('FROM   FechamentoFiscal');
     FechamentoFiscal.SQL.Add('WHERE  Ano IS NOT NULL');

     If not cTodosAno.Checked then begin
        FechamentoFiscal.SQL.Add('AND    Ano = '+cFiltroAno.Text);
     End;
     If not cTodosMes.Checked then begin
        FechamentoFiscal.SQL.Add('AND    Mes = '+cFiltroMes.Text);
     End;
     FechamentoFiscal.SQL.Add('ORDER BY Ano DESC, Mes DESC');

     FechamentoFiscal.Open;
end;

procedure TFiscal_BloquearPeriodo.cTodosAnoClick(Sender: TObject);
begin
      cFiltroAno.Enabled := not cTodosAno.Checked;
      FiltraFechamento;
end;

procedure TFiscal_BloquearPeriodo.cTodosMesClick(Sender: TObject);
begin
      cFiltroMes.Enabled := not cTodosMes.Checked;
      FiltraFechamento;
end;

procedure TFiscal_BloquearPeriodo.cFiltroAnoChange(Sender: TObject);
begin
      FiltraFechamento;
end;

procedure TFiscal_BloquearPeriodo.cFiltroMesChange(Sender: TObject);
begin
      FiltraFechamento;
end;

procedure TFiscal_BloquearPeriodo.BloquearAno1Click(Sender: TObject);
begin
      bBloqTudo.Click
end;

procedure TFiscal_BloquearPeriodo.DesbloquearTudo1Click(Sender: TObject);
begin
      bDesTudo.Click
end;

procedure TFiscal_BloquearPeriodo.FechamentoFiscalAfterScroll(DataSet: TDataSet);
begin
     If FechamentoFiscalFechado.AsBoolean then
        bBloquearMes.Caption := '&Desbl.Mês'
     else
        bBloquearMes.Caption := '&Bloq.Mês'
end;

procedure TFiscal_BloquearPeriodo.bDesTudoClick(Sender: TObject);
begin
     If MessageDlg('Deseja realmente desbloquear todos os mêses fiscais em aberto?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

     FechamentoFiscal.SQL.Clear;
     FechamentoFiscal.SQL.Add('UPDATE FechamentoFiscal SET Fechado = 0 WHERE ISNULL(Fechado, 0) = 1');
     FechamentoFiscal.Execute;

     FechamentoFiscal.SQL.Clear;
     FechamentoFiscal.SQL.Add('SELECT Ano');
     FechamentoFiscal.SQL.Add('       ,Mes');
     FechamentoFiscal.SQL.Add('	      ,Fechado');
     FechamentoFiscal.SQL.Add('	      ,Nome_Mes');
     FechamentoFiscal.SQL.Add('FROM   FechamentoFiscal');
     FechamentoFiscal.SQL.Add('ORDER BY Ano DESC, Mes DESC');
     FechamentoFiscal.Open;
end;

procedure TFiscal_BloquearPeriodo.Bloquears1Click(Sender: TObject);
begin
     bBloquearMes.Click;
end;

procedure TFiscal_BloquearPeriodo.ExcluirPeriodo1Click(Sender: TObject);
begin
     If MessageDlg('Deseja realmente excluir este mês da relação?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;

     FechamentoFiscal.Delete;
     FechamentoFiscal.Refresh;

     FechamentoFiscal.SQL.Clear;
     FechamentoFiscal.SQL.Add('SELECT  Ano');
     FechamentoFiscal.SQL.Add('       ,Mes');
     FechamentoFiscal.SQL.Add('	      ,Fechado');
     FechamentoFiscal.SQL.Add('	      ,Nome_Mes');
     FechamentoFiscal.SQL.Add('FROM   FechamentoFiscal');
     FechamentoFiscal.SQL.Add('ORDER BY Ano DESC, Mes DESC');
     FechamentoFiscal.Open;
end;

procedure TFiscal_BloquearPeriodo.BloquearTudo1Click(Sender: TObject);
begin
     bBloqTudo.Click;
end;

end.




