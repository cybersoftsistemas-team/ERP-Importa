unit frmCadastro_ProdutosAtributos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MSAccess, RxCurrEdit, RxToolEdit, RxDBCtrl, RxLookup, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TCadastro_ProdutosAtributos = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bPesquisa: TButton;
    RxDBGrid1: TRxDBGrid;
    Panel2: TPanel;
    cCodigo: TDBEdit;
    StaticText1: TStaticText;
    StaticText11: TStaticText;
    cAtributo: TRxDBLookupCombo;
    StaticText6: TStaticText;
    cLote: TDBEdit;
    tRegistro: TMSQuery;
    Navega: TDBNavigator;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_ProdutosAtributos: TCadastro_ProdutosAtributos;

implementation

{$R *.dfm}

uses frmDados;

procedure TCadastro_ProdutosAtributos.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TCadastro_ProdutosAtributos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Cadastro_ProdutosAtributos.Release;
      Cadastro_ProdutosAtributos := nil;
end;

procedure TCadastro_ProdutosAtributos.NavegaClick(Sender: TObject; Button: TNavigateBtn);
Var
    i: Integer;
begin
     with Dados do begin
          Panel2.Enabled := (Button = nbInsert) or (Button = nbEdit);
          if (Button = nbInsert) or (Button = nbEdit) then begin
             for i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             end;
             cAtributo.SetFocus;
             if Button = nbInsert then begin
                ProdutosAtt.FieldByName('Codigo_Mercadoria').asinteger := ProdutosCodigo.asinteger;
                ProdutosAtt.FieldByName('NCM').asstring := ProdutosNCM.asstring;
             end;
          end;
     end;
end;

end.
