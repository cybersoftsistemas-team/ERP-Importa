unit frmUtilitarios_Importar_NFe_TerceirosSeriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RXDBCtrl, Vcl.StdCtrls, RxDBComb, DBCtrls, RxLookup, Mask, Funcoes, Vcl.ExtCtrls,
  Grids, DB, DBAccess, MSAccess, DBGrids, RxCurrEdit, MemDS, RxToolEdit;

type
  TUtilitarios_Importar_NFe_TerceirosSeriais = class(TForm)
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
    Panel1: TPanel;
    bSair: TButton;
    RxDBGrid1: TRxDBGrid;
    Navega: TDBNavigator;
    tRegistro: TMSQuery;
    cCodigo: TRxDBLookupCombo;
    cTotal: TCurrencyEdit;
    Label1: TLabel;
    bRastrear: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure Filtro;
    procedure bRastrearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mLista:WideString;
  end;

var
  Utilitarios_Importar_NFe_TerceirosSeriais: TUtilitarios_Importar_NFe_TerceirosSeriais;

implementation

uses frmUtilitarios_Importar_NFe_Terceiros, frmDados,
  frmUtilitarios_Importar_NFe_TerceirosRastrearSeriais;

{$R *.dfm}

procedure TUtilitarios_Importar_NFe_TerceirosSeriais.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TUtilitarios_Importar_NFe_TerceirosSeriais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      LimpaMemoria;
      Utilitarios_Importar_NFe_TerceirosSeriais.Release;
      Utilitarios_Importar_NFe_TerceirosSeriais := nil;
end;

procedure TUtilitarios_Importar_NFe_TerceirosSeriais.FormShow(Sender: TObject);
begin
      with Dados do begin
           Cores.SQL.Clear;
           Cores.SQL.Add('SELECT * FROM Cores ORDER BY Descricao');
           Cores.Open;

           Filtro;
      end;
end;

procedure TUtilitarios_Importar_NFe_TerceirosSeriais.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
    i:integer;
begin
     with Dados do begin
          if (Button = nbInsert) or (Button = nbEdit) then begin
             for i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             end;
             Panel2.Enabled := true;
             cCodigo.SetFocus;
          end;
          if Button = nbPost then Filtro;
     end;
end;

procedure TUtilitarios_Importar_NFe_TerceirosSeriais.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      with Dados do begin
           if (Button = nbPost) and (ProdutosSeriais.State = dsInsert) then begin
              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosSeriais');
              tRegistro.Open;

              ProdutosSeriaisRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger;
              ProdutosSeriaisCodigo_Fabricante.Value := ProdutosCodigo_Fabricante.Value;
              ProdutosSeriaisEntrada.Value           := false;
              ProdutosSeriaisSaida.Value             := false;
              ProdutosSeriaisDisponivel.Value        := true;
              ProdutosSeriaisTemp.Value              := true;

              tRegistro.SQL.Clear;
              tRegistro.SQL.Add('SELECT ISNULL(MAX(Registro), 0)+1 AS Registro FROM ProdutosSeriaisNotas');
              tRegistro.Open;

              ProdutosSeriaisNotas.Open;
              ProdutosSeriaisNotas.Append;
                                   ProdutosSeriaisNotasRegistro.Value       := tRegistro.FieldByName('Registro').AsInteger;
                                   ProdutosSeriaisNotasProduto_Codigo.Value := ProdutosCodigo.AsInteger;
                                   ProdutosSeriaisNotasNumero.Value         := cNumero.Text;
                                   ProdutosSeriaisNotasNota.Value           := StrtoInt(Utilitarios_Importar_NFe_Terceiros.cnNF.Text);
                                   ProdutosSeriaisNotasData.Value           := StrtoDate(Utilitarios_Importar_NFe_Terceiros.cdEmi.Text);
                                   ProdutosSeriaisNotasSaida_Entrada.Value  := 0;
                                   ProdutosSeriaisNotasEmissor.Value        := 'T';
                                   ProdutosSeriaisNotasTemp.Value           := true;
              ProdutosSeriaisNotas.Post;
              ProdutosSeriaisNotas.Close;
           end;
      end;
end;

procedure TUtilitarios_Importar_NFe_TerceirosSeriais.Filtro;
var
   i:integer;
begin
     with Dados do begin
          with Utilitarios_Importar_NFe_Terceiros.GradeCadastro do begin
               mLista := '';
               for i := 1 to RowCount -1 do begin
                   if (Trim(Cells[3, i]) <> '') then begin
                      mLista := mLista + Cells[3, i]+',';
                   end;
               end;
               mLista := Copy(mLista, 1, Length(mLista)-1);
          end;

          Produtos.SQL.Clear;
          Produtos.SQL.Add('SELECT *');
          Produtos.SQL.Add('FROM  Produtos');
          Produtos.SQL.Add('WHERE Codigo IN('+mLista+')');
          Produtos.Open;

          ProdutosSeriais.SQL.Clear;
          ProdutosSeriais.SQL.Add('SELECT *');
          ProdutosSeriais.SQL.Add('FROM  ProdutosSeriais');
          ProdutosSeriais.SQL.Add('WHERE Numero IN(SELECT DISTINCT Numero FROM ProdutosSeriaisNotas WHERE Nota = :pNota AND Data = :pData)');
          ProdutosSeriais.ParamByName('pNota').AsInteger := StrtoInt(Utilitarios_Importar_NFe_Terceiros.cnNF.Text);
          ProdutosSeriais.ParamByName('pData').AsDate    := StrtoDate(Utilitarios_Importar_NFe_Terceiros.cdEmi.Text);
          ProdutosSeriais.Open;
          cTotal.Value := ProdutosSeriais.RecordCount;
     end;
end;

procedure TUtilitarios_Importar_NFe_TerceirosSeriais.bRastrearClick(Sender: TObject);
begin
     Utilitarios_Importar_NFe_TerceirosRastrearSeriais := TUtilitarios_Importar_NFe_TerceirosRastrearSeriais.Create(Self);
     Utilitarios_Importar_NFe_TerceirosRastrearSeriais.Caption := Caption;
     Utilitarios_Importar_NFe_TerceirosRastrearSeriais.ShowModal;
end;

end.
