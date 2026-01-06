unit frmCadastro_TiposDocumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls, Mask,
  DBCtrls, Grids, DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, RXDBCtrl, RXCtrls, ImgList, ClipBrd, Funcoes, MemDS, System.ImageList, system.UITypes;

type
  TCadastro_TiposDocumentos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    cDescricao: TDBEdit;
    cSINTEGRA: TDBCheckBox;
    StaticText3: TStaticText;
    cCodigo: TDBEdit;
    Grade: TRxDBGrid;
    ImageList1: TImageList;
    StaticText1: TStaticText;
    DBCheckBox2: TDBCheckBox;
    tTipos: TMSQuery;
    tUsado: TMSQuery;
    DBCheckBox10: TDBCheckBox;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText4: TStaticText;
    DBCheckBox1: TDBCheckBox;
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesquisaClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_TiposDocumentos: TCadastro_TiposDocumentos;

implementation

Uses frmDados;

{$R *.dfm}

procedure TCadastro_TiposDocumentos.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      Navega.SetFocus; 
      If (Button = nbEdit) or (Button = nbInsert) then begin
         If Button = nbInsert then Dados.TiposDocumentosSINTEGRA.Value := False;
         cCodigo.Enabled := Button <> nbEdit;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         if cCodigo.Enabled then
            cCodigo.SetFocus
         else
            cDescricao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.TiposDocumentos.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_TiposDocumentos.FormShow(Sender: TObject);
begin
        Screen.Cursor := crSQLWait;
        With Dados do begin
             TiposDocumentos.SQL.Clear;
             TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos Order by Codigo');
             TiposDocumentos.Open;
        End;     
        Screen.Cursor := crDefault;
end;

procedure TCadastro_TiposDocumentos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_TiposDocumentos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.TiposDocumentosCodigo.AsString;
      Dados.TiposDocumentos.Close;

      LimpaMemoria;
      Cadastro_TiposDocumentos.Release;
      Cadastro_TiposDocumentos := nil;
end;

procedure TCadastro_TiposDocumentos.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Descrição:', mPesquisa));
     Dados.TiposDocumentos.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TCadastro_TiposDocumentos.GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With Dados do Begin
          If (Column.FieldName = 'SINTEGRA') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (TiposDocumentos.FieldByName('SINTEGRA').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
          If (Column.FieldName = 'Tributo') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (TiposDocumentos.FieldByName('Tributo').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TCadastro_TiposDocumentos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_TiposDocumentos.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      If (Button = nbPost) and (Dados.TiposDocumentos.State = dsInsert) then begin
         tTipos.SQL.Clear;
         tTipos.SQL.Add('SELECT * FROM TiposDocumentos WHERE(Codigo = :pCodigo)');
         tTipos.ParamByName('pCodigo').AsString := cCodigo.Text;
         tTipos.Open;
         If tTipos.RecordCount > 0 then begin
            MessageDlg('Erro!'+#13+#13+'Já existe um documento cadastrado com o código informado.'+#13+#13+tTipos.FieldByName('Descricao').AsString, mtError, [mbOK], 0);
            Abort;
         End;
      End;

      // Verifica se o tipo de documento ja foi utilizado.
      If (Button = nbDelete) then begin
         tUsado.SQL.Clear;
         tUsado.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceber WHERE(Documento = :pCodigo)');
         tUsado.ParamByName('pCodigo').AsString := Dados.TiposDocumentosCodigo.AsString;
         tUsado.Open;
         If tUsado.FieldByName('Qtde').AsInteger > 0 then begin
            MessageDlg('Atenção!'+#13+#13+'Este tipo de documento já foi utilizado em lançamentos no financeiro e não poderá ser excluído.', mtInformation, [mbOK], 0);
            Abort;
         End;
      End;
      Navega.SetFocus;
end;

end.
