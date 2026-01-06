unit frmCadastro_CentroCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, Grids, DBGrids,
  RXDBCtrl, Vcl.StdCtrls, Mask, DBCtrls, ImgList, DB, ClipBrd, DBAccess, MSAccess, Funcoes, MemDS, system.UITypes;

type
  TCadastro_CentroCusto = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    Grade: TDBGrid;
    StaticText2: TStaticText;
    DBCheckBox1: TDBCheckBox;
    tMovimento: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_CentroCusto: TCadastro_CentroCusto;

implementation

USES frmDados, frmMenu_Principal;

{$R *.dfm}

procedure TCadastro_CentroCusto.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_CentroCusto.FormShow(Sender: TObject);
begin
     With Dados do begin
          CentroCusto.SQL.Clear;
          CentroCusto.SQL.Add('SELECT * FROM CentroCusto ORDER BY Codigo');
          CentroCusto.Open;
     End;
end;

procedure TCadastro_CentroCusto.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.CentroCustoCodigo.AsString;
      Dados.CentroCusto.Close;

      LimpaMemoria;
      Cadastro_CentroCusto.Release;
      Cadastro_CentroCusto := nil;
end;

procedure TCadastro_CentroCusto.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cCodigo.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.CentroCusto.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_CentroCusto.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With Dados do Begin
          If (Column.FieldName = 'Processo') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (CentroCusto.FieldByName('Processo').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TCadastro_CentroCusto.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      With Dados do begin
           if CentroCusto.State = dsInsert then begin
              tMovimento.SQL.Clear;
              tMovimento.SQL.Add('SELECT COUNT(*) AS Existe FROM CentroCusto WHERE Codigo = :pCodigo');
              tMovimento.ParamByName('pCodigo').AsString := cCodigo.Text;
              tMovimento.Open;
              if tMovimento.FieldByName('Existe').AsInteger > 0 then begin
                 MessageDlg('Este código de Centro de Custo já esta cadastrado.', mtError, [mbOK], 0);
                 cCodigo.SetFocus;
                 Abort;
              end;
           end;
           If Button = nbPost then begin
              CentroCustoEmpresa.Value := Menu_Principal.mEmpresa;
           End;
           If Button = nbDelete then begin
              tMovimento.SQL.Clear;
              tMovimento.SQL.Add('SELECT COUNT(*) AS Movimento FROM PagarReceber WHERE(Centro_Custo = :pCentroCusto)');
              tMovimento.ParamByName('pCentroCusto').AsString := Trim(CentroCustoCodigo.AsString);
              tMovimento.Open;
              If tMovimento.FieldByName('Movimento').AsInteger > 0 then begin
                 MessageDlg('Este Centro de Custo não pode ser excluido, pois ja foram feitos lançamentos financeiros utilizando-o.', mtInformation, [mbOK], 0);
                 CentroCusto.Cancel;
                 Abort;
              End;
           End;
      End;
end;

procedure TCadastro_CentroCusto.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_CentroCusto.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Codigo/Descrição', mPesquisa);
     If Dados.CentroCusto.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then
        Dados.CentroCusto.Locate('Descricao', mPesquisa, [loCaseInsensitive,loPartialKey]);
end;

end.
