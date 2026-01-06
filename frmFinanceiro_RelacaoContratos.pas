unit frmFinanceiro_RelacaoContratos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, DBGrids, Vcl.ExtCtrls, DB, DBAccess,
  MSAccess, DBCtrls, Grids, MemDS;

type
  TFinanceiro_RelacaoContratos = class(TForm)
    GroupBox1: TGroupBox;
    Grade: TDBGrid;
    Panel1: TPanel;
    bCancelar: TButton;
    bOK: TButton;
    tContratoCambio: TMSQuery;
    dstContrataCambio: TDataSource;
    tContratoCambioData: TDateTimeField;
    tContratoCambioTipo: TStringField;
    tContratoCambioDI: TStringField;
    tContratoCambioProcesso: TStringField;
    tContratoCambioTaxa_Cambial: TFloatField;
    tContratoCambioNome_Exportador: TStringField;
    tContratoCambioNome_Banco: TStringField;
    tContratoCambioNome_Moeda: TStringField;
    tContratoCambioNumero: TStringField;
    lBeneficiario: TStaticText;
    cFornecedor: TDBLookupComboBox;
    tContratoCambioExportador: TIntegerField;
    tContratoCambioBanco: TSmallintField;
    tContratoCambioTotal_ME: TCurrencyField;
    procedure bCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Filtra;
    procedure cFornecedorClick(Sender: TObject);
    procedure cFornecedorExit(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Financeiro_RelacaoContratos: TFinanceiro_RelacaoContratos;

implementation

uses frmDados;

{$R *.dfm}

procedure TFinanceiro_RelacaoContratos.bCancelarClick(Sender: TObject);
begin
        Close;
end;

procedure TFinanceiro_RelacaoContratos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     Financeiro_RelacaoContratos.Release;
     Financeiro_RelacaoContratos := nil;
end;

procedure TFinanceiro_RelacaoContratos.FormShow(Sender: TObject);
begin
     Filtra
end;

procedure TFinanceiro_RelacaoContratos.Filtra;
begin
     Screen.Cursor := crSQLWait;
     tContratoCambio.SQL.Clear;
     {
     tContratoCambio.SQL.Add('SELECT ContratoCambio.*,');
     tContratoCambio.SQL.Add('       (SELECT Fornecedores.Nome FROM Fornecedores WHERE(Fornecedores.Codigo = ContratoCambio.Exportador)) AS Nome_Exportador,');
     tContratoCambio.SQL.Add('       (SELECT Bancos.Nome FROM Bancos WHERE(Bancos.Codigo = ContratoCambio.Banco)) AS Nome_Banco,');
     tContratoCambio.SQL.Add('       (SELECT Cybersoft_Cadastros.dbo.Moedas.Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Cybersoft_Cadastros.dbo.Moedas.Codigo = ContratoCambio.Moeda)) AS Nome_Moeda');
     tContratoCambio.SQL.Add('FROM ContratoCambio');
     }
     tContratoCambio.SQL.Add('SELECT CC.*,');
     tContratoCambio.SQL.Add('       CCI.*,');
     tContratoCambio.SQL.Add('       (SELECT Fornecedores.Nome FROM Fornecedores WHERE(Fornecedores.Codigo = CC.Exportador)) AS Nome_Exportador,');
     tContratoCambio.SQL.Add('       (SELECT Bancos.Nome FROM Bancos WHERE(Bancos.Codigo = CC.Banco)) AS Nome_Banco,');
     tContratoCambio.SQL.Add('       (SELECT Cybersoft_Cadastros.dbo.Moedas.Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Cybersoft_Cadastros.dbo.Moedas.Codigo = CC.Moeda)) AS Nome_Moeda');
     tContratoCambio.SQL.Add('FROM ContratoCambio CC, ContratoCambioItens CCI');
     tContratoCambio.SQL.Add('WHERE(CCI.Contrato = CC.Numero)');
     If Trim(cFornecedor.Text) <> '' then begin
        tContratoCambio.SQL.Add('AND (Exportador = :pExportador)');
        tContratoCambio.ParamByName('pExportador').AsInteger := Dados.FornecedoresCodigo.AsInteger;
     End;
     tContratoCambio.SQL.Add('ORDER  BY Exportador, Numero');
     tContratoCambio.Open;
     Screen.Cursor := crDefault;
end;

procedure TFinanceiro_RelacaoContratos.cFornecedorClick(Sender: TObject);
begin
     Filtra;
end;

procedure TFinanceiro_RelacaoContratos.cFornecedorExit(Sender: TObject);
begin
      Filtra;
end;

procedure TFinanceiro_RelacaoContratos.bOKClick(Sender: TObject);
begin
     With Dados do begin
          PagarReceberProcesso.Value         := tContratoCambioProcesso.AsString;
          PagarReceberData_Documento.Value   := tContratoCambioData.AsDateTime;
          PagarReceberNumero_Documento.Value := tContratoCambioNumero.AsString;
          PagarReceberDocumento.Value        := ConfiguracaoDocumento_Cambio.AsString;
          PagarReceberData_Documento.Value   := tContratoCambioData.AsDateTime;
          PagarReceberNumero_Documento.Value := tContratoCambioNumero.AsString;
          PagarReceberValor_Documento.Value  := tContratoCambioTotal_ME.AsCurrency * tContratoCambioTaxa_Cambial.AsFloat;
          PagarReceberFornecedor.Value       := tContratoCambioExportador.AsInteger;
          PagarReceberModalidade_Pgto.Value  := 1;
     End;
     Close;
end;

procedure TFinanceiro_RelacaoContratos.GradeDblClick(Sender: TObject);
begin
       bOK.Click;
end;

end.
