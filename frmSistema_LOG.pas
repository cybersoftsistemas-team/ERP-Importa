unit frmSistema_LOG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RXCtrls, DBCtrls, Vcl.StdCtrls, Grids, DBGrids,
  RXDBCtrl, RxLookup, Mask, DB, DBAccess, MSAccess, Funcoes, system.UITypes, Buttons, Vcl.ComCtrls, MemDS, RxToolEdit;

type
  TSistema_LOG = class(TForm)
    Panel1: TPanel;
    Navega: TDBNavigator;
    bSair: TButton;
    Grade: TDBGrid;
    GroupBox1: TGroupBox;
    cDataIni: TDateEdit;
    StaticText1: TStaticText;
    cDataFim: TDateEdit;
    cUsuario: TRxDBLookupCombo;
    StaticText2: TStaticText;
    tUsuarios: TMSQuery;
    dstUsuarios: TDataSource;
    tUsuariosUsuario: TStringField;
    bLimpar: TSpeedButton;
    bFiltrar: TSpeedButton;
    cGrupoLimpar: TGroupBox;
    cApagar: TSpeedButton;
    cData: TDateEdit;
    StaticText3: TStaticText;
    cApagarTudo: TCheckBox;
    cLimparLog: TCheckBox;
    Barra: TStatusBar;
    Image3: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GradeTitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure Filtra;
    procedure bLimparClick(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
    procedure cApagarClick(Sender: TObject);
    procedure cDataChange(Sender: TObject);
    procedure cLimparLogClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sistema_LOG: TSistema_LOG;

implementation

uses frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TSistema_LOG.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TSistema_LOG.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     Sistema_LOG.Release;
     Sistema_LOG := nil;
end;

procedure TSistema_LOG.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;

     cDataIni.Date := Date;
     cDataFim.Date := Date;

     With Dados do begin
          Filtra;
          tUsuarios.SQL.Clear;
          tUsuarios.SQL.Add('SELECT DISTINCT Usuario FROM LOG');
          tUsuarios.Open;
     End;
     Screen.Cursor := crDefault;
end;

procedure TSistema_LOG.GradeTitleClick(Column: TColumn);
Var
    i : Integer;
begin
     Grade.Cursor := crSQLWait;
     with Dados do begin
          for i := 0 to 9 do begin
              Grade.Columns[I].Title.Color      := clBtnFace;
              Grade.Columns[I].Title.Font.Color := clBlack;
              Grade.Columns[I].Color            := clWhite;
          end;
          Column.Title.Color      := clNavy;
          Column.Title.Font.Color := clYellow;
          Column.Color            := $00FFD2D2;
          if Pos('DESC', Log.SQL.Text) <> 0 then begin
              Log.SQL.Delete(3);
              if (Column.FieldName <> 'Data') and (Column.FieldName <> 'Hora') then begin
                 Log.SQL.Add('ORDER By '+Column.FieldName+' ASC, Data ASC, Hora ASC');
              end;
              if (Column.FieldName = 'Data') then begin
                 Log.SQL.Add('ORDER By '+Column.FieldName+' ASC, Hora ASC');
              end;
              if (Column.FieldName = 'Hora') then begin
                 Log.SQL.Add('ORDER By '+Column.FieldName+' ASC, Data ASC');
              end;
          end else begin
             Log.SQL.Delete(3);
              if (Column.FieldName <> 'Data') and (Column.FieldName <> 'Hora') then begin
                 Log.SQL.Add('ORDER By '+Column.FieldName+' DESC, Data DESC, Hora DESC');
              end;
              if (Column.FieldName = 'Data') then begin
                 Log.SQL.Add('ORDER By '+Column.FieldName+' DESC, Hora DESC');
              end;
              if (Column.FieldName = 'Hora') then begin
                 Log.SQL.Add('ORDER By '+Column.FieldName+' DESC, Data DESC');
              end;
          end;
          Log.Open;
     end;
     Grade.Cursor := crDefault;
end;

procedure TSistema_LOG.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image3.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TSistema_LOG.Filtra;
begin
     Screen.Cursor := crSQLWait;
     With Dados do begin
          Log.SQL.Clear;
          Log.SQL.Add('SELECT * FROM Log WHERE(Usuario IS NOT NULL)');
          If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/','', cDataFim.Text)) <> '') then begin
             Log.SQL.Add('AND Data BETWEEN :pDataIni AND :pDataFim');
             Log.ParamByName('pDataIni').AsDate := cDataIni.Date;
             Log.ParamByName('pDataFim').AsDate := cDataFim.Date;
          End;
          If (Trim(RemoveCaracter('/', '', cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/','', cDataFim.Text)) = '') then begin
             Log.SQL.Add('AND Data = :pDataIni');
             Log.ParamByName('pDataIni').AsDate := cDataIni.Date;
          End;
          If (Trim(RemoveCaracter('/', '', cDataIni.Text)) = '') and (Trim(RemoveCaracter('/','', cDataFim.Text)) <> '') then begin
             Log.SQL.Add('AND Data = :pDataFim');
             Log.ParamByName('pDataFim').AsDate := cDataFim.Date;
          End;
          If (Trim(RemoveCaracter('/', '', cDataIni.Text)) = '') and (Trim(RemoveCaracter('/','', cDataFim.Text)) = '') then begin
             Log.SQL.Add('');
          End;

          If Trim(cUsuario.Text) <> '' then begin
             Log.SQL.Add('AND Usuario = :pUsuario');
             Log.ParamByName('pUsuario').AsString := cUsuario.Text;
          end else begin
             Log.SQL.Add('');
          End;
          Log.SQL.Add('ORDER BY Data DESC, Hora DESC, Usuario');
          Log.Open;

          Barra.Panels[2].Text := InttoStr(Log.RecordCount);
     End;
     Screen.Cursor := crDefault;
end;

procedure TSistema_LOG.bLimparClick(Sender: TObject);
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cUsuario.ClearValue;
end;

procedure TSistema_LOG.bFiltrarClick(Sender: TObject);
begin
      Filtra;
end;

procedure TSistema_LOG.cApagarClick(Sender: TObject);
begin
     if Menu_Principal.mUsuarioNome = 'ADMINISTRADOR' then begin
        if MessageDlg('Confirma realmente apagar as informações do log do sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
           with Dados do begin
                LOG.SQL.Clear;
                If cApagarTudo.Checked = true then
                   LOG.SQL.Add('DELETE FROM LOG')
                else begin
                   LOG.SQL.Add('DELETE FROM LOG WHERE(Data < :pData)');
                   LOG.ParamByName('pData').AsDate := cData.Date;
                end;
                LOG.Execute;
                LogDados(LOG, 'Limpeza de log efetuada ['+trim(cData.text)+']', dsInactive);

                LOG.SQL.Clear;
                Filtra;
                ShowMessage('LOG do sistema limpo com sucesso!');
           end;
        end;
     end else begin
        MessageDlg('Apenas usuário "ADMINISTRADOR" pode apagar as informações do log do sistema!', mtInformation, [mbOk], 0);
     end;
end;

procedure TSistema_LOG.cDataChange(Sender: TObject);
begin
      cApagarTudo.Enabled := Trim(RemoveCaracter('/', '', cData.Text)) = '';
end;

procedure TSistema_LOG.cLimparLogClick(Sender: TObject);
begin
      cGrupoLimpar.Enabled := cLimparLog.Checked;
end;

procedure TSistema_LOG.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{
      With Dados do begin
           If Odd(Log.RecNo) then
              Grade.Canvas.Brush.Color:= $00FFD7D7
           else
              Grade.Canvas.Brush.Color:= clCream;

           TDbGrid(Sender).Canvas.font.Color:= clBlack;
           If gdSelected in State then with (Sender as TDBGrid).Canvas do begin
              Brush.Color := clSilver;//$00FFAAB0;
              FillRect(Rect);
              Font.Style := [fsbold];
              Font.Color := clBlack;
           End;
           TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      End;
}      
end;


end.
