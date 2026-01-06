unit frmCadastro_ProdutosMateriaPrima;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, RxLookup, Vcl.StdCtrls, DBCtrls, DB, DBAccess,
  MSAccess, RXDBCtrl, Vcl.ExtCtrls, Mask, Grids, DBGrids, MemDS;

type
  TCadastro_ProdutosMateriaPrima = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bPesquisa: TButton;
    RxDBGrid1: TDBGrid;
    tRegistro: TMSQuery;
    Panel2: TPanel;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    StaticText11: TStaticText;
    cDetalhe: TRxDBLookupCombo;
    cCodigoMat: TDBEdit;
    tProdutos: TMSQuery;
    dstProdutos: TDataSource;
    tProdutosCodigo: TIntegerField;
    tProdutosDescricao_Reduzida: TStringField;
    tProdutosNCM: TStringField;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    cConversao: TDBCheckBox;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_ProdutosMateriaPrima: TCadastro_ProdutosMateriaPrima;

implementation

uses frmDados;

{$R *.dfm}

procedure TCadastro_ProdutosMateriaPrima.bSairClick(Sender: TObject);
begin
      Close;
end;


procedure TCadastro_ProdutosMateriaPrima.FormShow(Sender: TObject);
begin
     with dados do begin
          tProdutos.SQL.Clear;
          tProdutos.SQL.Add('SELECT Codigo, NCM, Descricao_Reduzida FROM Produtos ORDER BY Descricao_Reduzida');
          tProdutos.Open;
     end;
end;

procedure TCadastro_ProdutosMateriaPrima.NavegaClick(Sender: TObject;Button: TNavigateBtn);
var
    i: integer;
begin
      Screen.Cursor := crSQLWait;
      with Dados do begin
           if Button = nbInsert then begin
              ProdutosMateriaPrimaCodigo_Produto.Value := ProdutosCodigo.AsInteger;
              ProdutosMateriaPrimaConversao_M2M3.Value := false;
           end;
           if (Button = nbEdit) or (Button = nbInsert) then begin
              for i := 0 to 6 do begin
                  Navega.Controls[i].Enabled := False;
              end;
              cCodigoMat.Setfocus;
           end;
      end;
      Screen.Cursor := crDefault;
end;

procedure TCadastro_ProdutosMateriaPrima.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      Screen.Cursor := crSQLWait;
      with dados do begin
           if Dados.ProdutosMateriaPrima.State = dsInsert then begin
              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro),0)+1 AS Registro FROM ProdutosMateriaPrima');
              tRegistro.Open;
                        ProdutosMateriaPrimaRegistro.Value := tRegistro.FieldByName('Registro').AsInteger;
              tRegistro.Close;
           End;
      end;
      Screen.Cursor := crDefault;
end;

end.
