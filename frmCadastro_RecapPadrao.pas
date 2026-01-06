unit frmCadastro_RecapPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, DB, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, RxCtrls, MemDS, DBAccess, system.UITypes, MSAccess;

type
  TCadastro_RecapPadrao = class(TForm)
    Image1: TImage;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    StaticText8: TStaticText;
    cCondicao: TDBMemo;
    tmp: TMSQuery;
    StaticText2: TStaticText;
    DBMemo1: TDBMemo;
    StaticText3: TStaticText;
    DBMemo2: TDBMemo;
    StaticText4: TStaticText;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    DBMemo3: TDBMemo;
    StaticText10: TStaticText;
    DBMemo4: TDBMemo;
    StaticText11: TStaticText;
    DBMemo5: TDBMemo;
    StaticText12: TStaticText;
    DBMemo6: TDBMemo;
    StaticText13: TStaticText;
    DBMemo7: TDBMemo;
    StaticText14: TStaticText;
    cDescricao: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_RecapPadrao: TCadastro_RecapPadrao;

implementation

{$R *.dfm}

uses FUNCOES, frmDados;

procedure TCadastro_RecapPadrao.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TCadastro_RecapPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      LimpaMemoria;
      Cadastro_RecapPadrao.Release;
      Cadastro_RecapPadrao := nil;
end;

procedure TCadastro_RecapPadrao.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_RecapPadrao.FormShow(Sender: TObject);
begin
     with Dados do begin
          with RecapPadrao do begin
               sql.Clear;
               sql.Add('select * from RecapPadrao order by Codigo');
               open;
          end;
     end;
end;

procedure TCadastro_RecapPadrao.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
     with Dados do begin
          if Button = nbPost then begin
             if MessageDlg('Deseja realmente salvar estes Dados?', mtConfirmation, [mbyes, mbno], 0) = mrno then Abort;
              if RecapPadrao.State = dsInsert then begin
                with tmp do begin
                     sql.Clear;
                     sql.Add('select isnull(max(Codigo), 0)+1 as Cod from RecapPadrao');
                     open;
                     RecapPadraoCodigo.value := fieldbyname('Cod').AsInteger;
                     close;
                end;
             end;
          end;
     end;
end;

procedure TCadastro_RecapPadrao.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i:integer;
begin
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
         Panel2.Enabled := True;
         cDescricao.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled := False;
      end;
end;

end.
