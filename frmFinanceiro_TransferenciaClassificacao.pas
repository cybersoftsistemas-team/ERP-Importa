unit frmFinanceiro_TransferenciaClassificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxLookup, Vcl.StdCtrls, Vcl.ExtCtrls, RXCtrls, DB, DBAccess,
  MSAccess, system.UITypes, MemDS;

type
  TFinanceiro_TransferenciaClassificacao = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    bTransferir: TButton;
    StaticText6: TStaticText;
    cClass1: TRxDBLookupCombo;
    StaticText1: TStaticText;
    cClass2: TRxDBLookupCombo;
    ClassificacaoDestino: TMSQuery;
    ClassificacaoDestinoCodigo: TStringField;
    ClassificacaoDestinoDescricao: TStringField;
    ClassificacaoDestinoDescricaoTipo: TStringField;
    ClassificacaoDestinoCusto: TBooleanField;
    ClassificacaoDestinoNivel: TSmallintField;
    dsClassificacaoDestino: TDataSource;
    ClassificacaoDestinoTipo: TStringField;
    ClassificacaoDestinoCusto_Seletivo: TBooleanField;
    ClassificacaoDestinoCusto_Entrada: TBooleanField;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    procedure bTransferirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mCusto: Boolean;
    mNivel: Integer;  
  end;

var
  Financeiro_TransferenciaClassificacao: TFinanceiro_TransferenciaClassificacao;

implementation

uses frmDados;

{$R *.dfm}

procedure TFinanceiro_TransferenciaClassificacao.bTransferirClick(Sender: TObject);
begin
      // Altera o código da classificação financeira no financeiro.
      With Dados do begin
           If ClassificacaoFinanceiraTipo.Value <> ClassificacaoDestinoTipo.Value then begin
              MessageDlg('Não é possivel efetuar transferências entre classificações de tipo diferente.', mtError, [mbOK], 0);
              Abort;
           End;
           If ClassificacaoFinanceiraCodigo.Value = ClassificacaoDestinoCodigo.Value then begin
              MessageDlg('Classificação Financeira de Origem e de Destino são iguais.', mtError, [mbOK], 0);
              Abort;
           End;

           If MessageDlg('Atenção!'+#13+#13+'Isto irá alterar as classificações dos lançamentos financeiros'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
              Screen.Cursor := crSQLWait;

              PagarReceber.SQL.Clear;
              PagarReceber.SQL.Add('UPDATE PagarReceber SET Classificacao = :pClassDestino, CustoConta = :pCusto, Nivel = :pNivel WHERE (LTRIM(RTRIM(Classificacao)) = :pClassOrigem)' );
              PagarReceber.ParamByName('pClassOrigem').AsString  := Trim(ClassificacaoFinanceiraCodigo.AsString);
              PagarReceber.ParamByName('pClassDestino').AsString := Trim(ClassificacaoDestinoCodigo.AsString);
              PagarReceber.ParamByName('pCusto').AsBoolean       := ClassificacaoDestinoCusto.AsBoolean;
              PagarReceber.ParamByName('pSeletivo').AsBoolean    := ClassificacaoDestinoCusto_Seletivo.AsBoolean;
              PagarReceber.ParamByName('pEntrada').AsBoolean     := ClassificacaoDestinoCusto_Entrada.AsBoolean;
              PagarReceber.ParamByName('pNivel').AsInteger       := ClassificacaoDestinoNivel.AsInteger;
              PagarReceber.Execute;
              PagarReceber.SQL.Clear;
              PagarReceber.Close;

              MessageDlg('Transferência entre classificaçóes terminada.', mtError, [mbOK], 0);
         End;
      End;

      Screen.Cursor := crDefault;
end;

procedure TFinanceiro_TransferenciaClassificacao.FormShow(Sender: TObject);
begin
      With Dados do begin
           ClassificacaoFinanceira.SQL.Clear;
           ClassificacaoFinanceira.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) AND (Titulo <> 1)');
           ClassificacaoFinanceira.SQL.Add('ORDER BY Descricao, Codigo');
           ClassificacaoFinanceira.Open;

           ClassificacaoDestino.SQL.Clear;
           ClassificacaoDestino.SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1)  AND (Titulo <> 1)');
           ClassificacaoDestino.SQL.Add('ORDER BY Descricao, Codigo');
           ClassificacaoDestino.Open;
      End;
end;

procedure TFinanceiro_TransferenciaClassificacao.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFinanceiro_TransferenciaClassificacao.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      Financeiro_TransferenciaClassificacao.Release;
      Financeiro_TransferenciaClassificacao := nil;
end;

procedure TFinanceiro_TransferenciaClassificacao.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

end.

