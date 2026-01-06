unit frmCadastro_ProdutosSeriaisNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RXDBCtrl, DBCtrls,
  RxDBComb, Funcoes, DB, DBAccess, MSAccess, Mask, Grids,
  DBGrids, MemDS, RxToolEdit;

type
  TCadastro_ProdutosSeriaisNotas = class(TForm)
    RxDBGrid1: TRxDBGrid;
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    StaticText1: TStaticText;
    cNotaEntra: TDBEdit;
    StaticText12: TStaticText;
    StaticText16: TStaticText;
    StaticText2: TStaticText;
    Navega: TDBNavigator;
    cTipo: TRxDBComboBox;
    cEmissor: TRxDBComboBox;
    cVencimento: TDBDateEdit;
    tRegistro: TMSQuery;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cTipoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_ProdutosSeriaisNotas: TCadastro_ProdutosSeriaisNotas;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_ProdutosSeriaisNotas.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TCadastro_ProdutosSeriaisNotas.FormShow(Sender: TObject);
begin
      with Dados do begin
           ProdutosSeriaisNotas.SQL.Clear;
           ProdutosSeriaisNotas.SQL.Add('SELECT *');
           ProdutosSeriaisNotas.SQL.Add('      ,Tipo         = CASE WHEN Saida_Entrada = 0     THEN ''ENTRADA''   ELSE ''SAÍDA'' END');
           ProdutosSeriaisNotas.SQL.Add('      ,Emissor_Nome = CASE WHEN Emissor       = ''T'' THEN ''TERCEIROS'' ELSE ''PRÓPRIO'' END');
           ProdutosSeriaisNotas.SQL.Add('FROM ProdutosSeriaisNotas WHERE Produto_Codigo = :pCodigo AND Numero = :pNumero');
           ProdutosSeriaisNotas.ParamByName('pCodigo').AsInteger := ProdutosSeriais.FieldByName('Produto_Codigo').AsInteger;
           ProdutosSeriaisNotas.ParamByName('pNumero').AsString  := ProdutosSeriais.FieldByName('Numero').AsString;
           ProdutosSeriaisNotas.Open;
      end;
end;

procedure TCadastro_ProdutosSeriaisNotas.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      LimpaMemoria;
      Release;
      Cadastro_ProdutosSeriaisNotas := nil;
end;

procedure TCadastro_ProdutosSeriaisNotas.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i: Integer;
begin
      Screen.Cursor := crSQLWait;
      Panel2.Enabled := (Button = nbInsert) or (Button = nbEdit);
      if (Button = nbInsert) or (Button = nbEdit) then begin
         cNotaEntra.SetFocus;
         for i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         end;
      end;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_ProdutosSeriaisNotas.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      if Button = nbPost then begin
         with Dados do begin
              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosSeriaisNotas');
              tRegistro.Open;
              if ProdutosSeriaisNotas.State = dsInsert then begin
                 ProdutosSeriaisNotasRegistro.Value       := tRegistro.FieldByName('Registro').AsInteger;
                 ProdutosSeriaisNotasProduto_Codigo.Value := ProdutosSeriaisProduto_Codigo.Value;
                 ProdutosSeriaisNotasNumero.Value         := ProdutosSeriaisNumero.Value;
              end;
         end;
      end;
end;

procedure TCadastro_ProdutosSeriaisNotas.cTipoChange(Sender: TObject);
begin
      if cTipo.ItemIndex = 1 then begin
         Dados.ProdutosSeriaisNotasEmissor.Value := 'P';
         cEmissor.Enabled := false;
      end else
         cEmissor.Enabled := true;
end;

end.
