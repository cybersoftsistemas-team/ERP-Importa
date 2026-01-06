unit frmCadastro_ProdutosLinhas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, DBAccess, MSAccess, RXCtrls, Vcl.ExtCtrls,
  RXDBCtrl, Vcl.StdCtrls, DBCtrls, Funcoes, Grids, DBGrids, Mask, MemDS, system.UITypes;

type
  TCadastro_ProdutosLinhas = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cCodigo: TDBEdit;
    StaticText5: TStaticText;
    cDescricao: TDBEdit;
    Grade: TDBGrid;
    tCodigo: TMSQuery;
    bRelacionar: TButton;
    tPesquisa: TMSQuery;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Image1: TImage;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bRelacionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_ProdutosLinhas: TCadastro_ProdutosLinhas;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_ProdutosLinhas.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TCadastro_ProdutosLinhas.bSairClick(Sender: TObject);
begin
       Close;
end;

procedure TCadastro_ProdutosLinhas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Cadastro_ProdutosLinhas.Release;
     Cadastro_ProdutosLinhas := nil;
end;

procedure TCadastro_ProdutosLinhas.FormShow(Sender: TObject);
begin
      With Dados do begin
           ProdutosLinhas.SQL.Clear;
           ProdutosLinhas.SQL.Add('SELECT * FROM ProdutosLinhas ORDER BY Codigo');
           ProdutosLinhas.Open;
      End;
end;

procedure TCadastro_ProdutosLinhas.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
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
         Dados.ProdutosLinhas.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TCadastro_ProdutosLinhas.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) and (ProdutosLinhas.State = dsInsert) then begin
              tCodigo.SQL.Clear;
              tCodigo.SQl.Add('SELECT MAX(Codigo) AS Codigo FROM ProdutosLinhas');
              tCodigo.Open;
              ProdutosLinhasCodigo.Value := tCodigo.FieldByName('Codigo').AsInteger + 1;
              tCodigo.Close;
           End;
      End;
end;

procedure TCadastro_ProdutosLinhas.bRelacionarClick(Sender: TObject);
Var
   mNCM: String;
begin
      If MessageDlg('Atenção!'+#13+#13+'Isso irá relacionar a linha atual em todos os produtos com a NCM informada.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         mNCM := InputBox('Relação de Produtos', 'Digite o nº da NCM:', mNCM);
         mNCM := Trim(RemoveCaracter('.', '', mNCM));

         If mNCM = '' then Abort;

         With Dados do begin
              tPesquisa.SQL.Clear;
              tPesquisa.SQL.Add('SELECT COUNT(*) AS QTDE FROM Produtos WHERE(NCM = :pNCM)');
              tPesquisa.ParamByName('pNCM').AsString := mNCM;
              tPesquisa.Open;
              If tPesquisa.FieldByName('QTDE').AsInteger > 0 then begin
                 tPesquisa.SQL.Clear;
                 tPesquisa.SQL.Add('UPDATE Produtos SET Linha = :pLinha WHERE(NCM = :pNCM)');
                 tPesquisa.ParamByName('pLinha').AsInteger := ProdutosLinhasCodigo.AsInteger;
                 tPesquisa.ParamByName('pNCM').AsString    := mNCM;
                 tPesquisa.Execute;
                 tPesquisa.SQL.Clear;
              end else begin
                 ShowMessage('Nenhum produto encontrado com a NCM informada?');
              End; 
         End;
      End;
end;

end.
