unit frmDMImporta;

interface

uses
  System.SysUtils, System.Classes, DB, MemDS, DBAccess, MSAccess;

type
  TdmImporta = class(TDataModule)
    Banco_Origem: TMSConnection;
    iPagarReceber: TMSQuery;
    dsiPagarReceber: TDataSource;
    iBeneficiario: TMSQuery;
    iBeneficiarioCodigo: TStringField;
    iBeneficiarioNome: TStringField;
    iBeneficiarioCNPJ: TStringField;
    iBeneficiarioTipo: TStringField;
    dsiBeneficiario: TDataSource;
    iProcessos: TMSQuery;
    dsiProcessos: TDataSource;
    iClassificacao: TMSQuery;
    dsiClassificacao: TDataSource;
    iClientes: TMSQuery;
    dsiClientes: TDataSource;
    iFornecedores: TMSQuery;
    dsiFornecedores: TDataSource;
    iCentroCusto: TMSQuery;
    dsiCentroCusto: TDataSource;
    iProcessosDOC: TMSQuery;
    dsiProcessosDOC: TDataSource;
    iOrgaos: TMSQuery;
    dsiOrgaos: TDataSource;
    iCodigo: TMSQuery;
    iProdutos: TMSQuery;
    dsiProdutos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmImporta: TdmImporta;

implementation

uses frmDados;

{$R *.dfm}

end.
