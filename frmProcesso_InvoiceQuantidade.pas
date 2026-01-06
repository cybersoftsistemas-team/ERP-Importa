unit frmProcesso_InvoiceQuantidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBCtrls, Grids,
  DBGrids, RXDBCtrl, Vcl.ExtCtrls, DB, DBAccess, MSAccess, Funcoes, Vcl.ComCtrls, system.UITypes, Mask, RxCurrEdit, MemDS, RxToolEdit;

type
  TDBGridDescendant = class(TDBGrid);
  TProcesso_InvoiceQuantidade = class(TForm)
    GroupBox1: TGroupBox;
    GradeItens: TRxDBGrid;
    StaticText2: TStaticText;
    cPesquisa: TEdit;
    GroupBox2: TGroupBox;
    StaticText3: TStaticText;
    cQuantidade: TCurrencyEdit;
    StaticText4: TStaticText;
    cUnitarioReal: TCurrencyEdit;
    lUnitarioME: TStaticText;
    cUnitarioME: TCurrencyEdit;
    Panel1: TPanel;
    bAdicionar: TButton;
    bSair: TButton;
    tPesquisa: TMSQuery;
    StaticText5: TStaticText;
    cTotalReal: TCurrencyEdit;
    lTotalME: TStaticText;
    cTotalME: TCurrencyEdit;
    tRegistro: TMSQuery;
    StaticText1: TStaticText;
    cItens: TCurrencyEdit;
    tTotal: TMSQuery;
    StaticText6: TStaticText;
    cPesoLiquido: TCurrencyEdit;
    StaticText7: TStaticText;
    cPesoBruto: TCurrencyEdit;
    procedure bAdicionarClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cPesquisaChange(Sender: TObject);
    procedure cQuantidadeChange(Sender: TObject);
    procedure cPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cUnitarioMEChange(Sender: TObject);
    procedure GradeItensDblClick(Sender: TObject);
    procedure AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Processo_InvoiceQuantidade: TProcesso_InvoiceQuantidade;

implementation

uses frmDados;

{$R *.dfm}

procedure TProcesso_InvoiceQuantidade.bAdicionarClick(Sender: TObject);
var
    mDescricao: WideString;
begin
      With Dados do begin
           If (cQuantidade.AsInteger <= 0) then begin
              MessageDlg('Erro!'+#13+#13+'Quantidade do item inválida.', mtError, [mbOK], 0);
              cQuantidade.SetFocus;
              Abort;
           End;
           If (cUnitarioReal.Value <= 0) then begin
              MessageDlg('Erro!'+#13+#13+'Valor unitário do item inválido.', mtError, [mbOK], 0);
              cUnitarioReal.SetFocus;
              Abort;
           End;

           mDescricao := RemoveCaracter(#13,'',ProdutosDescricao.Value);
           mDescricao := RemoveCaracter(#12,'',mDescricao);
           mDescricao := RemoveCaracter(#10,'',mDescricao);
           mDescricao := RemoveCaracter('<{'+ProdutosCodigo.AsString+'}>' ,'',mDescricao);

           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT MAX(Registro) AS Registro FROM InvoiceItens');
           tRegistro.Open;
           InvoiceItens.Append;
                        InvoiceItensRegistro.Value          := tRegistro.FieldByName('Registro').AsInteger + 1;
                        InvoiceItensInvoice.Value           := InvoiceNumero.Value;
                        InvoiceItensCodigo_Mercadoria.Value := ProdutosCodigo.AsInteger;
                        //InvoiceItensDescricao.Value         := mDescricao;
                        InvoiceItensUnidade.Value           := ProdutosUnidade.Value;
                        InvoiceItensQuantidade.Value        := cQuantidade.Value;
                        InvoiceItensValor_Unitario.Value    := cUnitarioReal.Value;
                        InvoiceItensValor_UnitarioMe.Value  := cUnitarioME.Value;
                        InvoiceItensPeso_Liquido.Value      := cpesoLiquido.Value;
                        InvoiceItensPeso_Bruto.Value        := cpesoBruto.Value;
           InvoiceItens.Post;
           tRegistro.Close;

           // Totalizando a fatura.
           tTotal.SQL.Clear;
           tTotal.SQL.Add('SELECT SUM(Valor_Unitario * Quantidade) AS Total_Real, SUM(Valor_UnitarioME * Quantidade) AS Total_ME FROM InvoiceItens WHERE(Invoice = :pInvoice)');
           tTotal.ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
           tTotal.Open;
           InvoiceTotal_Fatura.Value   := tTotal.FieldByName('Total_Real').AsCurrency;
           InvoiceTotal_FaturaME.Value := tTotal.FieldByName('Total_ME').AsCurrency;

           tTotal.Close;

           cQuantidade.Clear;
           cUnitarioReal.Clear;
           cTotalReal.Clear;
           cUnitarioME.Clear;
           cTotalME.Clear;

           cItens.Value := InvoiceItens.RecordCount;
           cPesquisa.SetFocus;
      End;
end;

procedure TProcesso_InvoiceQuantidade.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TProcesso_InvoiceQuantidade.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Processo_InvoiceQuantidade.Release;
     Processo_InvoiceQuantidade := nil;
end;

procedure TProcesso_InvoiceQuantidade.cPesquisaChange(Sender: TObject);
begin
      With Dados do begin
           If Produtos.Locate('Codigo', cPesquisa.Text, [loCaseInsensitive]) = False then begin
              If Produtos.Locate('Codigo_Fabricante', cPesquisa.Text, [loCaseInsensitive]) = False then begin
                 If Produtos.Locate('Descricao', cPesquisa.Text, [loCaseInsensitive, loPartialKey]) = false then begin
                    tPesquisa.SQL.Clear;
                    tPesquisa.SQL.Add('SELECT * FROM Produtos WHERE(Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+')');
                    tPesquisa.Open;
                    Produtos.Locate('Codigo', tPesquisa.FieldByName('Codigo').AsInteger, [loCaseInsensitive]);
                 end;
              End;
           End;
           cUnitarioReal.Value := ProdutosValor_Venda.Value;
      End;
end;

procedure TProcesso_InvoiceQuantidade.cQuantidadeChange(Sender: TObject);
begin
      cTotalReal.Value   := cUnitarioReal.Value * cQuantidade.Value;
      bAdicionar.Enabled := (cQuantidade.Value > 0) and (cUnitarioME.Value > 0);
end;

procedure TProcesso_InvoiceQuantidade.cPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
      If Key = #13 then  cQuantidade.SetFocus;
end;

procedure TProcesso_InvoiceQuantidade.FormShow(Sender: TObject);
begin
      cItens.Value := Dados.InvoiceItens.RecordCount;
end;



procedure TProcesso_InvoiceQuantidade.cUnitarioMEChange(Sender: TObject);
begin
      With Dados do begin
           cTotalReal.Value   := cUnitarioReal.Value * cQuantidade.Value;
           If CotacaoValor.Value > 0 then cUnitarioReal.Value := cUnitarioME.Value * CotacaoValor.Value;
           cTotalME.Value     := cUnitarioME.Value * cQuantidade.Value;
           cTotalReal.Value   := cUnitarioReal.Value * cQuantidade.Value;
           bAdicionar.Enabled := (cQuantidade.Value > 0) and (cUnitarioME.Value > 0);
      End;
end;

procedure TProcesso_InvoiceQuantidade.GradeItensDblClick(Sender: TObject);
begin
      With Dados do begin
           cPesoLiquido.Value := ProdutosPeso_Liquido.Value;
           cPesoBruto.Value   := ProdutosPeso_Bruto.Value;
      End;
      cQuantidade.SetFocus;
end;

procedure TProcesso_InvoiceQuantidade.AppShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
Var
    curPos   : LongInt;
    gridCoord: TGridCoord;
    mTexto   : String;
    i        : Integer;
    mTam     : Integer;
begin
     With HintInfo do begin
          If HintControl is TDBGrid then
             With TDBGridDescendant(HintControl),gridCoord do begin
                  Application.HideHint;
                  gridCoord := MouseCoord(CursorPos.x,CursorPos.y);
                  Try
                     curPos := DataLink.ActiveRecord;
                     Try
                        DataLink.ActiveRecord := y-1;
                        If not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount) then begin
                           HintStr := '';
                           With Dados do begin
                                Produtos.Locate('Codigo', AdicoesCodigo_Mercadoria.Value, [loCaseInsensitive]);

                                mTexto := Dados.ProdutosDescricao.Value;
                                //mTexto := RemoveCaracter('<{'+Produtos.FieldByName('Codigo').AsString+'}>', '', mTexto);
                                mTam   := 1;
                                For i := 1 to Length(mTexto) do begin
                                    HintStr := HintStr + Copy(mTexto, i, 1);
                                    Inc(mTam);
                                    If mTam = 50 then begin
                                       HintStr := HintStr + #13;
                                       mtam    := 1;
                                    End;
                                End;
                           End;
                        End else
                           HintStr := '\';
                     Finally
                        DataLink.ActiveRecord := CurPos
                     End;
                     CanShow := not((x-1)< 0) and not((y-1)< 0) and (x-1 <= FieldCount)
                  Except
                     CanShow := False
                  End;
          End;
     End;
end;


procedure TProcesso_InvoiceQuantidade.FormCreate(Sender: TObject);
begin
      Application.ShowHint   := True;
      Application.OnShowHint := AppShowHint;
end;

end.
