unit frmCadastro_DREContabil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, DBAccess, MSAccess, Grids, DBGrids, RXDBCtrl,
  Vcl.StdCtrls, DBCtrls, Vcl.ExtCtrls, RXCtrls, Buttons, RxLookup, RxDBComb,
  Mask, MemDS;

type
  TCadastro_DREContabil = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    Grade: TRxDBGrid;
    tCodigo: TMSQuery;
    GradePlano: TRxDBGrid;
    StaticText8: TStaticText;
    cPesquisa: TEdit;
    bLimpar: TSpeedButton;
    GradeSub: TRxDBGrid;
    bAdiciona: TSpeedButton;
    bRemove: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    dsDREContabilSubGrupos: TDataSource;
    DREContabilSubGrupos: TMSQuery;
    DREContabilSubGruposGrupo: TSmallintField;
    DREContabilSubGruposConta: TStringField;
    DREContabilSubGruposDescricao: TStringField;
    StaticText2: TStaticText;
    cCalculo: TDBRadioGroup;
    RxDBComboBox1: TRxDBComboBox;
    StaticText3: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBRadioGroup1: TDBRadioGroup;
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure bPesquisaClick(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bLimparClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradePlanoDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GradePlanoCellClick(Column: TColumn);
    procedure bAdicionaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bRemoveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa: String;
  end;

var
  Cadastro_DREContabil: TCadastro_DREContabil;

implementation

uses frmDMContab, Funcoes, frmDados;

{$R *.dfm}

procedure TCadastro_DREContabil.bSairClick(Sender: TObject);
begin
     Close;
end;

procedure TCadastro_DREContabil.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_DREContabil.FormShow(Sender: TObject);
begin
      With dmContab do begin
           DREContabilGrupos.SQL.Clear;
           DREContabilGrupos.SQL.Add('SELECT * FROM DREContabilGrupos ORDER BY Codigo');
           DREContabilGrupos.Open;

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('UPDATE PlanoContas SET Selecao = 0');
           PlanoContas.Execute;
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE Sintetica = 1 AND DRE IS NULL');
           PlanoContas.SQL.Add('ORDER BY Conta, Descricao');
           PlanoContas.Open;
      End;
end;

procedure TCadastro_DREContabil.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cDescricao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         dmCOntab.DREContabilGrupos.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
      if Button = nbInsert then begin
         dmCOntab.DREContabilGruposCalculo.Value := '+';
      end;
end;

procedure TCadastro_DREContabil.bPesquisaClick(Sender: TObject);
begin
      mPesquisa := InputBox('Pesquisar Grupo', 'Codigo/Descrição:', mPesquisa);
      If dmContab.DREContabilGrupos.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then begin
         dmCOntab.DREContabilGrupos.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
      End;
end;

procedure TCadastro_DREContabil.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      with dmContab do begin
           if Button = nbPost then begin
              If (DREContabilGrupos.State = dsInsert) then begin
                 tCodigo.SQL.Clear;
                 tCodigo.SQL.Add('SELECT ISNULL(MAX(Codigo), 0)+1 AS Codigo FROM DREContabilGrupos');
                 tCodigo.Open;
                 DREContabilGrupos.FieldByName('Codigo').Value := tCodigo.FieldByName('Codigo').Value;
                 tCodigo.Close;
              End;
           end;
      end;
end;

procedure TCadastro_DREContabil.bLimparClick(Sender: TObject);
begin
     cPesquisa.Clear;
end;

procedure TCadastro_DREContabil.cPesquisaChange(Sender: TObject);
begin
      with dmContab do begin
           GradePlano.DisableScroll;
           PlanoContas.SQL.Clear;
           if Trim(cPesquisa.Text) <> '' then
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE Sintetica = 1 AND DRE IS NULL AND (Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+') ORDER BY Conta, Codigo')
           else
              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE Sintetica = 1 AND DRE IS NULL ORDER BY Conta, Codigo');
           PlanoContas.Open;
           GradePlano.EnableScroll;
      end;
end;

procedure TCadastro_DREContabil.cCodigoChange(Sender: TObject);
begin
     DREContabilSubGrupos.Connection := Dados.Banco_Contabilidade;
     GradeSub.DisableScroll;
     DREContabilSubGrupos.SQL.Clear;
     DREContabilSubGrupos.SQL.Add('SELECT Grupo     = DRE');
     DREContabilSubGrupos.SQL.Add('      ,Conta     = Codigo');
     DREContabilSubGrupos.SQL.Add('      ,Descricao = Descricao');
     DREContabilSubGrupos.SQL.Add('FROM PlanoContas');
     DREContabilSubGrupos.SQL.Add('WHERE DRE = :pDRE');
     DREContabilSubGrupos.SQL.Add('ORDER BY Grupo, Conta');
     DREContabilSubGrupos.ParamByName('pDRE').AsInteger := dmContab.DREContabilGruposCodigo.AsInteger;
     DREContabilSubGrupos.Open;
     GradeSub.EnableScroll;
end;

procedure TCadastro_DREContabil.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      with dmCOntab do begin
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('UPDATE PlanoContas SET Selecao = 0');
           PlanoContas.Execute;
           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE Sintetica = 1 AND DRE IS NULL');
           PlanoContas.SQL.Add('ORDER BY Conta, Descricao');
      end;
      LimpaMemoria;
      Cadastro_DREContabil.Release;
      Cadastro_DREContabil := nil;
end;

procedure TCadastro_DREContabil.GradePlanoDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With dmContab do Begin
          If (Column.FieldName = 'Selecao') then begin
             With GradePlano.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (PlanoContas.FieldByName('Selecao').Value = True) then
                     Dados.ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

procedure TCadastro_DREContabil.GradePlanoCellClick(Column: TColumn);
begin
      with dmContab do begin
           PlanoContas.Edit;
                       PlanoContasSelecao.Value := not PlanoContasSelecao.Value;
           PlanoContas.Post;
      end;
end;

procedure TCadastro_DREContabil.bAdicionaClick(Sender: TObject);
begin
     with dmContab do begin
           GradeSub.DisableScroll;
           DREContabilSubGrupos.SQL.Clear;
           DREContabilSubGrupos.SQL.Add('UPDATE PlanoContas SET Selecao = 0, DRE = :pDRE WHERE Selecao = 1');
           DREContabilSubGrupos.ParamByName('pDRE').AsInteger    := DREContabilGruposCodigo.AsInteger;
           DREContabilSubGrupos.Execute;
           DREContabilSubGrupos.SQL.Clear;
           DREContabilSubGrupos.SQL.Add('SELECT Grupo     = DRE');
           DREContabilSubGrupos.SQL.Add('      ,Conta     = Codigo');
           DREContabilSubGrupos.SQL.Add('      ,Descricao = Descricao');
           DREContabilSubGrupos.SQL.Add('FROM PlanoContas');
           DREContabilSubGrupos.SQL.Add('WHERE DRE = :pDRE');
           DREContabilSubGrupos.SQL.Add('ORDER BY Grupo, Conta');
           DREContabilSubGrupos.ParamByName('pDRE').AsInteger := DREContabilGruposCodigo.AsInteger;
           DREContabilSubGrupos.Open;
           GradeSub.EnableScroll;

           PlanoContas.Refresh;
     end;
end;

procedure TCadastro_DREContabil.SpeedButton1Click(Sender: TObject);
begin
           GradeSub.DisableScroll;
           DREContabilSubGrupos.SQL.Clear;
           DREContabilSubGrupos.SQL.Add('UPDATE PlanoContas SET DRE = NULL WHERE DRE = :pDRE');
           DREContabilSubGrupos.ParamByName('pDRE').AsInteger := dmCOntab.DREContabilGruposCodigo.AsInteger;
           DREContabilSubGrupos.Execute;
           DREContabilSubGrupos.SQL.Clear;
           DREContabilSubGrupos.SQL.Add('SELECT Grupo     = DRE');
           DREContabilSubGrupos.SQL.Add('      ,Conta     = Codigo');
           DREContabilSubGrupos.SQL.Add('      ,Descricao = Descricao');
           DREContabilSubGrupos.SQL.Add('FROM PlanoContas');
           DREContabilSubGrupos.SQL.Add('WHERE DRE = :pDRE');
           DREContabilSubGrupos.SQL.Add('ORDER BY Grupo, Conta');
           DREContabilSubGrupos.ParamByName('pDRE').AsInteger := dmCOntab.DREContabilGruposCodigo.AsInteger;
           DREContabilSubGrupos.Open;
           GradeSub.EnableScroll;

           dmContab.PlanoContas.Refresh;
end;

procedure TCadastro_DREContabil.bRemoveClick(Sender: TObject);
begin
     with dmContab do begin
           PlanoContas.Edit;
                       PlanoContasDRE.Clear;
           PlanoContas.Post;
                       
           DREContabilSubGrupos.SQL.Clear;
           DREContabilSubGrupos.SQL.Add('SELECT Grupo     = DRE');
           DREContabilSubGrupos.SQL.Add('      ,Conta     = Codigo');
           DREContabilSubGrupos.SQL.Add('      ,Descricao = Descricao');
           DREContabilSubGrupos.SQL.Add('FROM PlanoContas');
           DREContabilSubGrupos.SQL.Add('WHERE DRE = :pDRE');
           DREContabilSubGrupos.SQL.Add('ORDER BY Grupo, Conta');
           DREContabilSubGrupos.ParamByName('pDRE').AsInteger := DREContabilGruposCodigo.AsInteger;
           DREContabilSubGrupos.Open;

           PlanoContas.Refresh;
     end;
end;

end.
