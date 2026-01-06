unit frmCadastro_BancosHistoricos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DB, DBAccess, MSAccess, Vcl.StdCtrls,
  DBCtrls, DBGrids, Vcl.ExtCtrls, RXCtrls, Grids, Mask, MemDS;

type
  TCadastro_BancosHistoricos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    tCodigo: TMSQuery;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    StaticText4: TStaticText;
    cCodigo: TDBEdit;
    cClassificacao: TDBLookupComboBox;
    StaticText2: TStaticText;
    cDocumento: TDBLookupComboBox;
    DBGrid2: TDBGrid;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_BancosHistoricos: TCadastro_BancosHistoricos;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_BancosHistoricos.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TCadastro_BancosHistoricos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Cadastro_BancosHistoricos.Release;
     Cadastro_BancosHistoricos := nil;
end;

procedure TCadastro_BancosHistoricos.FormCreate(Sender: TObject);
begin
        If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_BancosHistoricos.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := false;
         End;
         Panel2.Enabled := true;
         cDescricao.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_BancosHistoricos.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      Navega.SetFocus;
      If (Button = nbPost) and (Dados.HistoricosBancos.State = dsInsert) then begin
         Screen.Cursor := crSQLWait;
         tCodigo.Open;
         Dados.HistoricosBancosCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
         Dados.HistoricosBancosBanco.Value  := Dados.Bancos.FieldByName('Codigo').Value;
         tCodigo.Close;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_BancosHistoricos.FormShow(Sender: TObject);
begin
       With Dados do begin
            HistoricosBancos.SQL.Clear;
            HistoricosBancos.SQL.Add('SELECT * FROM HistoricosBancos WHERE(Banco = :pBanco) ORDER BY Descricao');
            HistoricosBancos.ParamByName('pBanco').AsInteger := BancosCodigo.AsInteger;
            HistoricosBancos.Open;

            ClassificacaoFinanceira.SQL.Clear;
            ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) ORDER BY Descricao');
            ClassificacaoFinanceira.Open;

            TiposDocumentos.SQL.Clear;
            TiposDocumentos.SQL.Add('SELECT * FROM TiposDocumentos ORDER BY Descricao');
            TiposDocumentos.Open;
       End;
end;

end.



