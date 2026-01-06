unit frmCadastro_TiposContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, MemDS, DBAccess,
  MSAccess, mdTabEnter, Vcl.StdCtrls, Mask,  DBCtrls, Grids, DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, ATStandard, RXDBCtrl,
  RXCtrls, ImgList, Funcoes;

type
  TCadastro_TiposContas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    TabEnter1: TTabEnter;
    StaticText2: TStaticText;
    DBRadioGroup1: TDBRadioGroup;
    Grade: TRxDBGrid;
    DBCheckBox1: TDBCheckBox;
    XPPanel1: TXPPanel;
    Image2: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    StaticText8: TStaticText;
    DBCheckBox2: TDBCheckBox;
    ImageList1: TImageList;
    Barra: TStatusBar;
    Progresso: TProgressBar;
    StaticText3: TStaticText;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPesquisaClick(Sender: TObject);
    procedure GradeDrawColumnCell(Sender: TObject; const Rect: TRect;DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    mCustoOriginal : Boolean;
  end;

var
  Cadastro_TiposContas: TCadastro_TiposContas;

implementation

Uses frmDados, frmDMContab ;
{$R *.dfm}

procedure TCadastro_TiposContas.FormShow(Sender: TObject);
Var
    mConta : Integer;
begin
        Screen.Cursor := crSQLWait;
        With dmContab, Dados do begin
             ClassificacaoFinanceira.Open;
             Empresas.Open;
             mConta := Length(RemoveCaracter('.', '', EmpresasMascara_PlanoContas.Value));
             PlanoContas.SQL.Clear;
             PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE ( LEN(Conta) = :pConta)');
             PlanoContas.ParamByName('pConta').AsInteger := mConta;
             PlanoContas.Open;
        End;     
        Screen.Cursor := crDefault;
end;

procedure TCadastro_TiposContas.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_TiposContas.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
    mSQL : String;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         mCustoOriginal := Dados.ClassificacaoFinanceiraCusto.Value;
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cCodigo.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
          Screen.Cursor := crSQLWait;
          With Dados do begin
                If Button = nbPost then begin
                   mSQL := PagarReceber.SQL.Text;
                   PagarReceber.Close;
                   PagarReceber.SQL.Clear;
                   PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Tipo_Conta = :pCodigo)' );
                   PagarReceber.ParamByName('pCodigo').AsString := ClassificacaoFinanceiraCodigo.Value;
                   PagarReceber.Open;
                   Progresso.Position := 0;
                   Progresso.Max      := PagarReceber.RecordCount;
                   PagarReceber.First;
                   Progresso.Visible  := True;
                   While not PagarReceber.Eof do begin
                         PagarReceber.Edit;
                                      PagarReceberCustoConta.Value := ClassificacaoFinanceiraCusto.Value;
                         PagarReceber.Post;
                         PagarReceber.Next;
                         Progresso.Position := Progresso.Position + 1;
                   End;
                   PagarReceber.Close;
                   PagarReceber.SQL.Clear;
                   PagarReceber.SQL.Add(mSQL);
                   PagarReceber.Open;
                   Progresso.Visible  := False;
                End;
           End;
           Dados.ClassificacaoFinanceira.Refresh;
           Panel2.Enabled := False;
           Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_TiposContas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Dados.ClassificacaoFinanceira.Close;
      Release;
end;

procedure TCadastro_TiposContas.bPesquisaClick(Sender: TObject);
Var
    mPesquisa : String;
begin
     mPesquisa := UpperCase(InputBox('Pesquisa', 'Codigo:', mPesquisa));
     Dados.ClassificacaoFinanceira.Locate('Codigo', mPesquisa, [loPartialKey]);
end;

procedure TCadastro_TiposContas.GradeDrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
var
   Icon: TBitmap;
begin
     Icon := TBitmap.Create;
     With Dados do Begin
          If (Column.FieldName = 'Custo') then begin
             With Grade.Canvas do begin
                  Brush.Color := clWhite;
                  FillRect(Rect);
                  If (ClassificacaoFinanceira.FieldByName('Custo').Value = True) then ImageList1.GetBitmap(2, Icon);
                  Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
             End;
          End;
     End;
end;

end.

