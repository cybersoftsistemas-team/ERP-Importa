unit frmCadastro_OrgaosPublicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXCtrls, Vcl.ExtCtrls, RXDBCtrl, Vcl.StdCtrls, DBCtrls, ClipBrd, DB,
  DBAccess, MSAccess, Funcoes, Grids, DBGrids, Mask, MemDS, system.UITypes;

type
  TCadastro_OrgaosPublicos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    StaticText5: TStaticText;
    StaticText2: TStaticText;
    cNome: TDBEdit;
    StaticText3: TStaticText;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    lContaPagamento: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    cPagamentoConta: TDBEdit;
    DBEdit5: TDBEdit;
    StaticText9: TStaticText;
    DBLookupComboBox7: TDBLookupComboBox;
    tPesquisa: TMSQuery;
    Navega: TDBNavigator;
    Grade: TDBGrid;
    tPagarReceber: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText12: TStaticText;
    cCNPJ: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
    mErro:String;
  end;

var
  Cadastro_OrgaosPublicos: TCadastro_OrgaosPublicos;

implementation

Uses frmDados, frmDMContab;
{$R *.dfm}

procedure TCadastro_OrgaosPublicos.FormShow(Sender: TObject);
begin
      With Dados, dmContab do begin
           Orgaos.SQL.Clear;
           Orgaos.SQL.Add('SELECT * FROM OrgaosPublicos ORDER BY Codigo');
           Orgaos.Open;

           if mErro <> '' then Orgaos.Locate('Codigo', mErro, [loCaseInsensitive]);

           PlanoContas.SQL.Clear;
           PlanoContas.SQL.Add('SELECT * FROM PlanoContas ORDER BY Conta');
           PlanoContas.Open;

           Historicos.SQL.Clear;
           Historicos.SQL.Add('SELECT * FROM HistoricoPadrao ORDER BY Codigo');
           Historicos.Open;
      End;
end;

procedure TCadastro_OrgaosPublicos.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TCadastro_OrgaosPublicos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      ClipBoard.AsText := Dados.OrgaosCodigo.AsString;
      Dados.Orgaos.Close;

      LimpaMemoria;
      Cadastro_OrgaosPublicos.Release;
      Cadastro_OrgaosPublicos := nil;
end;

procedure TCadastro_OrgaosPublicos.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Panel2.Enabled := True;
         cNome.SetFocus;
         cCodigo.Enabled := Button <> nbEdit;
      End;

      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Dados.Orgaos.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_OrgaosPublicos.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_OrgaosPublicos.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Orgaos.State = dsInsert) and (Button = nbPost) then begin
              tPesquisa.SQL.Clear;
              tPesquisa.SQL.Add('SELECT * FROM OrgaosPublicos WHERE(Codigo = :pCodigo)');
              tPesquisa.ParamByName('pCodigo').AsString := OrgaosCodigo.AsString;
              tPesquisa.Open;
              If tPesquisa.RecordCount > 0 then begin
                 MessageDlg('Erro!'+#13+#13+'O Código que você esta tentando adicionar ja existe.'+#13+#13+tPesquisa.FieldByName('Nome').AsString, mtError, [mbOK], 0);
                 cCodigo.Setfocus;
                 Abort;
              End;
              Navega.SetFocus;
           End;
           If Button = nbDelete then begin
              tPagarReceber.SQL.Clear;
              tPagarReceber.SQL.Add('SELECT COUNT(*) AS Qtde FROM PagarReceber WHERE Orgao = :pCodigo');
              tPagarReceber.ParamByName('pCodigo').AsString := OrgaosCodigo.AsString;
              tPagarReceber.Open;
              If tPagarReceber.FieldByName('Qtde').AsInteger > 0 then begin
                 MessageDlg('Atenção!'+#13+
                            'Existem lançamentos no financeiro utilizando o código que você esta tentando excluir.'+#13+#13+
                            'Este código não pode ser excluído.', mtError, [mbOK], 0);
                 Abort;           
              End;
           End;
      End;
end;

end.
