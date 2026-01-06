unit frmfrmNotaFiscal_ServicoItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Funcoes,
  Mask, Grids, DBGrids, RXDBCtrl;

type
  TNotaFiscal_Servicoitens = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    Panel2: TPanel;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    cProduto: TDBLookupComboBox;
    StaticText4: TStaticText;
    DBEdit3: TDBEdit;
    GradeItens: TRxDBGrid;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_Servicoitens: TNotaFiscal_Servicoitens;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TNotaFiscal_Servicoitens.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TNotaFiscal_Servicoitens.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     NotaFiscal_ServicoItens.Release;
     NotaFiscal_ServicoItens := nil;
end;

procedure TNotaFiscal_Servicoitens.FormShow(Sender: TObject);
begin
      with Dados, dmFiscal do begin
           NotasTerceirosItens.SQL.Clear;
           NotasTerceirosItens.SQL.Add('SELECT * FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn');
           NotasTerceirosItens.ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
           NotasTerceirosItens.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
           NotasTerceirosItens.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.Value;
           NotasTerceirosItens.Open;

           Produtos.SQL.Clear;
           Produtos.SQL.Add('SELECT * FROM Produtos WHERE Servico = 1 ORDER BY Codigo');
           Produtos.Open;
      end;
end;

end.
