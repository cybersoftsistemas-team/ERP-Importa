unit frmFinanceiro_ControleCheques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls,
   Vcl.ExtCtrls, RXCtrls, DBCtrls, RXDBCtrl, Grids, DBGrids, Funcoes,
  Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TFinanceiro_ControleCheques = class(TForm)
    Image2: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    tRegistro: TMSQuery;
    Panel2: TPanel;
    StaticText6: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    lForma: TStaticText;
    StaticText8: TStaticText;
    cNumero: TDBEdit;
    Navega: TDBNavigator;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Grade: TRxDBGrid;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    cTotalAberto: TCurrencyEdit;
    cTotalComp: TCurrencyEdit;
    tTotal: TMSQuery;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    cVencimento: TDBDateEdit;
    cBanco: TDBComboBox;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_ControleCheques: TFinanceiro_ControleCheques;

implementation

uses frmDados;

{$R *.dfm}

procedure TFinanceiro_ControleCheques.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_ControleCheques.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Financeiro_ControleCheques.Release;
      Financeiro_ControleCheques := nil;
end;

procedure TFinanceiro_ControleCheques.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
      
      with Dados do begin
           cBanco.Clear;
           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT DISTINCT Banco FROM Cheques');
           tRegistro.Open;
           while not tRegistro.Eof do begin
                 cBanco.Items.Add(tRegistro.FieldByName('Banco').AsString);
                 tRegistro.Next;
           end;
      end;
end;

procedure TFinanceiro_ControleCheques.FormShow(Sender: TObject);
begin
      with Dados do begin
           Cheques.SQL.Clear;
           Cheques.SQL.Add('SELECT * FROM Cheques ORDER BY Banco, Numero');
           Cheques.Open;

           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT Total_Aberto = (SELECT SUM(Valor) FROM Cheques WHERE Data_Compensacao IS NULL)');
           tTotal.SQL.Add('      ,Total_Comp   = (SELECT SUM(Valor) FROM Cheques WHERE Data_Compensacao IS NOT NULL)');
           tTotal.Open;

           cTotalAberto.Value := tTotal.FieldByName('Total_Aberto').AsCurrency;
           cTotalComp.Value   := tTotal.FieldByName('Total_Comp').AsCurrency;
      end;
end;

procedure TFinanceiro_ControleCheques.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
    Icon: TBitmap;
begin
      Icon := TBitmap.Create;
      with Dados do begin
           with Grade.Canvas do begin
                font.color  := clWindowText;
                font.Style  := [];
                Brush.Color := clWindow;
                if not DataLimpa(Cheques.FieldByName('Data_Compensacao').AsString) then begin
                   font.color  := clBlue;
                   font.Style  := [fsItalic];
                   Brush.Color := $00BFFFFF;
                end;
                If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
                   Brush.Color := $00FFAAB0;
                   FillRect(Rect);
                   Font.Style := [fsbold];
                   Font.Color := clBlack;
                End;
                TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
                
                if (Column.FieldName = 'Sustado') then begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If Cheques.FieldByName('Sustado').AsBoolean then ImageList1.GetBitmap(2, Icon);
                end;
                if (Column.FieldName = 'Devolvido') then begin
                   Brush.Color := clWhite;
                   FillRect(Rect);
                   If Cheques.FieldByName('Devolvido').AsBoolean then ImageList1.GetBitmap(2, Icon);
                end;
                Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top+1, Icon);
           end;
      end;
end;

procedure TFinanceiro_ControleCheques.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         Panel2.Enabled := true;;
         cNumero.SetFocus;

         if Button = nbInsert then begin
            Dados.ChequesDevolvido.Value := false;
            Dados.ChequesSustado.Value   := false;
         end;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Cheques.Refresh;
         Panel2.Enabled := false;
         Screen.Cursor := crDefault;

         tRegistro.SQL.Clear;
         tRegistro.SQL.Add('SELECT DISTINCT Banco FROM Cheques');
         tRegistro.Open;
         cBanco.Clear;

         while not tRegistro.Eof do begin
               cBanco.Items.Add(tRegistro.FieldByName('Banco').AsString);
               tRegistro.Next;
         end;
         cBanco.Refresh;
      end;
end;

procedure TFinanceiro_ControleCheques.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      with Dados do begin
           if (Button = nbPost) and (Cheques.State = dsInsert) then begin
              Screen.Cursor := crSQLWait;

              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM Cheques');
              tRegistro.Open;

              ChequesRegistro.Value := tRegistro.FieldbyName('Registro').AsInteger;
           end;   
      end;
end;

end.
