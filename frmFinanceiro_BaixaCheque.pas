unit frmFinanceiro_BaixaCheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, DBCtrls, DateUtils, Funcoes,
  Mask, RxCurrEdit;

type
  TFinanceiro_BaixaCheque = class(TForm)
    GroupBox1: TGroupBox;
    StaticText20: TStaticText;
    cNominal: TEdit;
    StaticText21: TStaticText;
    cAssinado: TEdit;
    cVisado: TCheckBox;
    cCruzado: TCheckBox;
    Panel1: TPanel;
    bSair: TButton;
    Panel2: TPanel;
    bImprimir: TBitBtn;
    Shape6: TShape;
    DBText1: TDBText;
    DBText2: TDBText;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    LogoBanco: TImage;
    Edit2: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBEdit1: TDBEdit;
    StaticText3: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    DBEdit4: TDBEdit;
    StaticText6: TStaticText;
    DBEdit5: TDBEdit;
    StaticText7: TStaticText;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    DBEdit8: TDBEdit;
    StaticText10: TStaticText;
    DBEdit9: TDBEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    DBEdit11: TDBEdit;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    lDia: TEdit;
    lMes: TEdit;
    lAno: TEdit;
    lExtenso1: TEdit;
    lExtenso2: TEdit;
    lValor: TCurrencyEdit;
    lCheque: TEdit;
    lCidade: TEdit;
    lNominal: TEdit;
    bCopia: TButton;
    StaticText22: TStaticText;
    cCidade: TEdit;
    procedure cNominalChange(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bCopiaClick(Sender: TObject);
    procedure cCidadeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mExtenso : String;
    mLetra   : String;
    mTexto   : String;
    mNome    : String;
  end;

var
  Financeiro_BaixaCheque: TFinanceiro_BaixaCheque;

implementation

uses frmDados, frmFinanceiro_BaixaLoteDados;

{$R *.dfm}

procedure TFinanceiro_BaixaCheque.cNominalChange(Sender: TObject);
begin
        lNominal.Text := cNominal.Text;
end;

procedure TFinanceiro_BaixaCheque.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_BaixaCheque.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Financeiro_BaixaCheque.Release;
     Financeiro_BaixaCheque := nil;
end;

procedure TFinanceiro_BaixaCheque.FormShow(Sender: TObject);
begin
    mLetra         := UpperCase(Copy(mExtenso, 1, 1));
    mExtenso       := '('+mLetra+(Trim(Copy(mExtenso,2,223)))+')';
    lExtenso1.Text := Trim(Copy(mExtenso,   1, 104));
    lExtenso2.Text := Trim(Copy(mExtenso, 105, 120));
    cCidade.Text   := Trim(Dados.Municipios.FieldByName('Nome').AsString);
    lCidade.Text   := cCidade.Text;
    lDia.Text      := InttoStr(DayOf(Financeiro_BaixaLoteDados.cDataBaixa.Date));
    lMes.Text      := NomeMes(MonthOf(Financeiro_BaixaLoteDados.cDataBaixa.Date));
    lAno.Text      := InttoStr(YearOf(Financeiro_BaixaLoteDados.cDataBaixa.Date));

    LogoBanco.Picture := nil;
    mNome := ExtractFilePath(Application.ExeName)+'Imagens\Bancos\';
    If Pos('BRADESCO' , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'BRADESCO.BMP';
    If Pos('BRASIL'   , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'BB.BMP';
    If Pos('CAIXA'    , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'CAIXA.BMP';
    If Pos('BMG'      , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'BMG.BMP';
    If Pos('SANTANDER', Dados.BancosNome.Value) <> 0 then mNome := mNome + 'SANTANDER.BMP';
    If Pos('SAFRA'    , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'SAFRA.BMP';
    If Pos('BANESTES' , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'BANESTES.BMP';
    If Pos('BOSTON'   , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'BOSTON.BMP';
    If Pos('HSBC'     , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'HSBC.BMP';
    If Pos('ITAU'     , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'ITAU.BMP';
    If Pos('ITAÚ'     , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'ITAU.BMP';
    If Pos('MERCANTIL', Dados.BancosNome.Value) <> 0 then mNome := mNome + 'MERCANTIL.BMP';
    If Pos('REAL'     , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'REAL.BMP';
    If Pos('UNIBANCO' , Dados.BancosNome.Value) <> 0 then mNome := mNome + 'UNIBANCO.BMP';
    If FileExists(mNome) then LogoBanco.Picture.LoadFromFile(mNome);
end;

procedure TFinanceiro_BaixaCheque.bImprimirClick(Sender: TObject);
Var
    Arquivo : TextFile;
    mData   : String;
begin
     Dados.Configuracao.Open;
     AssignFile(Arquivo, Dados.ConfiguracaoCaminho_Impressora.AsString);
     ReWrite(Arquivo);

     mData := lCidade.Text + Replicate(' ', 20-Length(lCidade.Text))+lDia.Text + '     ' + lMes.Text + Replicate(' ', 15-Length(lMes.Text)) + lAno.Text;
     Say(0, 80, Arquivo, FormatFloat('###,###,###,##0.00', lValor.Value) );
     Say(2, 10, Arquivo, lExtenso1.Text );
     Say(3, 10, Arquivo, lExtenso2.Text );
     Say(4,  0, Arquivo, cNominal.Text );
     Say(5, 25, Arquivo, mData );
     CloseFile(Arquivo);
     Dados.Configuracao.Close;
end;

procedure TFinanceiro_BaixaCheque.bCopiaClick(Sender: TObject);
begin
      Financeiro_BaixaLoteDados.rCopiaCheque.Print;
      Financeiro_BaixaLoteDados.rCopiaCheque.Reset;
end;

procedure TFinanceiro_BaixaCheque.cCidadeChange(Sender: TObject);
begin
       lCidade.Text := cCidade.Text;
end;

end.
