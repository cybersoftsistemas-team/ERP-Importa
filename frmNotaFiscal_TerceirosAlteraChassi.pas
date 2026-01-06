unit frmNotaFiscal_TerceirosAlteraChassi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RxDBComb, DBCtrls,
  RxLookup, Vcl.ExtCtrls, Funcoes, system.UITypes, Mask;

type
  TNotaFiscal_TerceirosAlteraChassi = class(TForm)
    Panel2: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    cNumero: TDBEdit;
    StaticText3: TStaticText;
    cCor: TRxDBLookupCombo;
    StaticText4: TStaticText;
    DBComboBox1: TDBComboBox;
    cNumero2: TDBEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    DBComboBox2: TDBComboBox;
    cNumero3: TDBEdit;
    StaticText7: TStaticText;
    StaticText9: TStaticText;
    DBComboBox3: TDBComboBox;
    StaticText13: TStaticText;
    DBEdit3: TDBEdit;
    StaticText14: TStaticText;
    DBEdit4: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    StaticText15: TStaticText;
    cCodigo: TRxDBLookupCombo;
    Panel1: TPanel;
    bSair: TButton;
    bSalvar: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotaFiscal_TerceirosAlteraChassi: TNotaFiscal_TerceirosAlteraChassi;

implementation

uses frmDados, frmDMFiscal;

{$R *.dfm}

procedure TNotaFiscal_TerceirosAlteraChassi.bSairClick(Sender: TObject);
begin
      Dados.ProdutosSeriais.Cancel;
      Close;
end;

procedure TNotaFiscal_TerceirosAlteraChassi.FormShow(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT *');
          Produtos.SQL.Add('FROM  Produtos');
          Produtos.SQL.Add('WHERE Codigo IN(SELECT Codigo_Mercadoria FROM NotasTerceirosItens WHERE Nota = :pNota AND Data_Emissao = :pData AND Fornecedor = :pForn)');
          Produtos.ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
          Produtos.ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.AsDateTime;
          Produtos.ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.Asinteger;
          Produtos.Open;

          ProdutosSeriais.Edit;
     end;
end;

procedure TNotaFiscal_TerceirosAlteraChassi.bSalvarClick(Sender: TObject);
begin
     if MessageDlg('Deseja realmente salvar as modificações?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
        Dados.ProdutosSeriais.Post;
        Close;
     end;   
end;

procedure TNotaFiscal_TerceirosAlteraChassi.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     LimpaMemoria;
     NotaFiscal_TerceirosAlteraChassi.Release;
     NotaFiscal_TerceirosAlteraChassi := nil;
end;

end.
