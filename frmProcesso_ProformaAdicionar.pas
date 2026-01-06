unit frmProcesso_ProformaAdicionar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl, DB, MemDS,
  DBAccess, MSAccess, DBCtrls, Mask;

type
  TProcesso_ProformaAdicionar = class(TForm)
    RxDBGrid1: TRxDBGrid;
    StaticText1: TStaticText;
    cPesquisa: TEdit;
    Panel2: TPanel;
    bOK: TButton;
    tPesquisa: TMSQuery;
    bCancelar: TButton;
    Panel3: TPanel;
    StaticText4: TStaticText;
    cCodigo: TDBEdit;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    cDescricao: TDBMemo;
    tRegistro: TMSQuery;
    procedure bOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure RxDBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_ProformaAdicionar: TProcesso_ProformaAdicionar;

implementation

uses frmDados;

{$R *.dfm}

procedure TProcesso_ProformaAdicionar.bOKClick(Sender: TObject);
begin
      tRegistro.SQL.Clear;
      tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0) AS Registro FROM ProformaItens');
      tRegistro.Open;
      
      Dados.ProformaItensRegistro.Value := tRegistro.FieldByName('Registro').AsInteger + 1;
      Dados.ProformaItensProforma.Value := Dados.Proforma.FieldByName('Numero').Value;
      Dados.ProformaItens.Post;
      Dados.ProformaItens.Refresh;
      
      Close;
end;

procedure TProcesso_ProformaAdicionar.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Processo_ProformaAdicionar.Release;
      Processo_ProformaAdicionar := nil;
end;

procedure TProcesso_ProformaAdicionar.cPesquisaChange(Sender: TObject);
begin
      tPesquisa.SQL.Clear;
      tPesquisa.SQL.Add('SELECT Codigo FROM Produtos WHERE Descricao LIKE '+QuotedStr('%'+Trim(cPesquisa.Text)+'%')+' AND (Fornecedor = :pVendedor) AND (Desativado <> 1) ORDER BY Descricao');
      tPesquisa.ParamByName('pVendedor').AsInteger := Dados.ProformaVendedor.AsInteger;
      tPesquisa.Open;
      With Dados do begin
           Produtos.Locate('Codigo', tPesquisa.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
           ProformaItensCodigo_Mercadoria.Value := ProdutosCodigo.Value;
      End;     
end;

procedure TProcesso_ProformaAdicionar.FormShow(Sender: TObject);
begin
      With Dados do begin
           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos ORDER BY Codigo');
           Produtos.Open;

           ProformaItens.Append;
           ProformaItensCodigo_Mercadoria.Value := Dados.ProdutosCodigo.Value;
      End;
end;

procedure TProcesso_ProformaAdicionar.bCancelarClick(Sender: TObject);
begin
      Dados.ProformaItens.Cancel;
      Close;
end;

procedure TProcesso_ProformaAdicionar.RxDBGrid1CellClick(Column: TColumn);
begin
      Dados.ProformaItensCodigo_Mercadoria.Value := Dados.ProdutosCodigo.Value;
end;

end.
