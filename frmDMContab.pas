unit frmDMContab;

interface

uses
  System.SysUtils, System.Classes, DB, MemDS, DBAccess, MSAccess;

type
  TdmContab = class(TDataModule)
    dsPlanoContas: TDataSource;
    PlanoContas: TMSQuery;
    dsHistoricos: TDataSource;
    Historicos: TMSQuery;
    HistoricosDescricao: TStringField;
    HistoricosCodigo: TSmallintField;
    HistoricosComplemento: TBooleanField;
    dsLancamentos: TDataSource;
    dsPesquisa_Lan: TDataSource;
    Pesquisa_Lan: TMSQuery;
    Pesquisa_LanData: TDateTimeField;
    Pesquisa_LanNumero: TSmallintField;
    Pesquisa_LanConta_Debito: TStringField;
    Pesquisa_LanConta_Credito: TStringField;
    Pesquisa_LanHistorico_Codigo: TSmallintField;
    Pesquisa_LanHistorico_Complemento: TMemoField;
    Pesquisa_LanValor: TCurrencyField;
    Pesquisa_LanCtaDebito: TStringField;
    Pesquisa_LanCtaCredito: TStringField;
    Pesquisa_LanHistorico_Descricao: TStringField;
    Pesquisa_LanHistCompl: TStringField;
    HistoricosMacro: TMemoField;
    PlanoContasDescricao: TStringField;
    PlanoContasSaldo_Anterior: TCurrencyField;
    PlanoContasDebito: TCurrencyField;
    PlanoContasCredito: TCurrencyField;
    PlanoContasSintetica: TBooleanField;
    PlanoContasNatureza: TStringField;
    PlanoContasLALUR: TBooleanField;
    PlanoContasMostrar_Balanco: TBooleanField;
    PlanoContasImprimir_Razao: TBooleanField;
    PlanoContasData_Exportacao: TDateTimeField;
    PlanoContasData_Inclusao: TDateTimeField;
    PlanoContasNivel: TSmallintField;
    PlanoContasConta_Grupo: TStringField;
    PlanoContasOrigem: TStringField;
    PlanoContasTipo_Terceiros: TStringField;
    PlanoContasCodigo_Terceiros: TStringField;
    PlanoContasGrupo: TStringField;
    PlanoContasConta: TStringField;
    PlanoContasCodigo: TStringField;
    dsPlanoContasECF: TDataSource;
    PlanoContasECF: TMSQuery;
    PlanoContasECFRegistro: TSmallintField;
    PlanoContasECFDescricao: TStringField;
    PlanoContasECFConta: TStringField;
    PlanoContasConta_ECF: TStringField;
    PlanoContasSelecao: TBooleanField;
    FechamentoContabil: TMSQuery;
    dsFechamentoContabil: TDataSource;
    FechamentoContabilAno: TSmallintField;
    FechamentoContabilMes: TSmallintField;
    FechamentoContabilNome_Mes: TStringField;
    FechamentoContabilFechado: TBooleanField;
    PlanoContasPessoa: TStringField;
    PlanoContasCNPJ_CPF: TStringField;
    dsErros: TDataSource;
    Erros: TMSQuery;
    PlanoContasConta_Resultado: TBooleanField;
    dsDREContabilGrupos: TDataSource;
    DREContabilGrupos: TMSQuery;
    DREContabilGruposCodigo: TSmallintField;
    DREContabilGruposDescricao: TStringField;
    DREContabilGruposCalculo: TStringField;
    DREContabilGruposTotalizador: TSmallintField;
    DREContabilGruposCodigo_Conta: TStringField;
    PlanoContasDRE: TBooleanField;
    dsLotes: TDataSource;
    Lancamentos: TMSQuery;
    LancamentosRegistro: TIntegerField;
    LancamentosEmpresa: TStringField;
    LancamentosLote: TLargeintField;
    LancamentosNumero: TIntegerField;
    LancamentosConta_Debito: TStringField;
    LancamentosConta_Credito: TStringField;
    LancamentosHistorico_Codigo: TSmallintField;
    LancamentosHistorico_Complemento: TMemoField;
    LancamentosValor: TCurrencyField;
    LancamentosDocumento: TStringField;
    LancamentosRecriar: TBooleanField;
    LancamentosDescricao_Credito: TStringField;
    LancamentosDescricao_Debito: TStringField;
    LancamentosProcesso_Debito: TStringField;
    LancamentosProcesso_Credito: TStringField;
    LancamentosTipo_Nota: TSmallintField;
    LancamentosBeneficiario: TStringField;
    LancamentosContabilizar: TBooleanField;
    PlanoContasEmpresa: TStringField;
    LancamentosTipo_Documento: TStringField;
    LancamentosBeneficiario_CNPJ: TStringField;
    LancamentosData_Documento: TDateField;
    ErrosSel: TBooleanField;
    LancamentosNumero_Financeiro: TIntegerField;
    LancamentosOrigem: TStringField;
    ErrosErro: TIntegerField;
    ErrosOrigem: TStringField;
    ErrosOrigem_Param: TStringField;
    ErrosDocumento: TStringField;
    ErrosD_C: TStringField;
    ErrosDescricao: TStringField;
    ErrosConta: TStringField;
    ErrosVar_Conta: TStringField;
    ErrosBeneficiario: TStringField;
    PlanoContasDetalha_Pessoa: TBooleanField;
    PlanoContasDetalha_Processo: TBooleanField;
    PlanoContasTitulo: TBooleanField;
    ErrosEmpresa: TStringField;
    ErrosBanco: TSmallintField;
    ErrosModalidade: TSmallintField;
    ErrosProcesso: TStringField;
    Lotes: TMSQuery;
    LotesRegistro: TIntegerField;
    LotesLote: TIntegerField;
    LotesEmpresa: TStringField;
    LotesOrigem: TStringField;
    LotesDescricao: TStringField;
    LotesContabilizar: TBooleanField;
    LotesAberto: TBooleanField;
    LotesRecriar: TBooleanField;
    LotesData: TDateTimeField;
    LancamentosData: TDateField;
    PlanoContasAnterior_Empresa: TStringField;
    PlanoContasAnterior_Conta: TStringField;
    PlanoContasAnterior_Descricao: TStringField;
    PlanoContasAnterior_Saldo: TCurrencyField;
    PlanoContasAnterior_IndSaldo: TStringField;
    PlanoContasAnterior_Situacao: TStringField;
    procedure LancamentosHistorico_ComplementoGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure Pesquisa_LanHistorico_ComplementoGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure Pesquisa_LanCalcFields(DataSet: TDataSet);
    procedure LancamentosBeforePost(DataSet: TDataSet);
    procedure LancamentosBeforeDelete(DataSet: TDataSet);
    procedure PlanoContasBeforeDelete(DataSet: TDataSet);
    procedure PlanoContasBeforePost(DataSet: TDataSet);
    procedure HistoricosBeforePost(DataSet: TDataSet);
    procedure HistoricosBeforeDelete(DataSet: TDataSet);
    procedure LotesBeforeDelete(DataSet: TDataSet);
    procedure LotesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmContab: TdmContab;

implementation

uses frmDados, Funcoes;

{$R *.dfm}

procedure TdmContab.HistoricosBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, 'Codigo: '+HistoricosCodigo.AsString, DataSet.State);
end;

procedure TdmContab.HistoricosBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, 'Codigo: '+HistoricosCodigo.AsString, DataSet.State);
end;

procedure TdmContab.LancamentosBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, 'Lote:'+LancamentosLote.AsString+' Nº: '+LancamentosNumero.AsString+ ' de '+LancamentosData.AsString+' Valor '+LancamentosValor.AsString, DataSet.State);
end;

procedure TdmContab.LancamentosBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, 'Lote:'+LancamentosLote.AsString+' Nº: '+LancamentosNumero.AsString+ ' de '+LancamentosData.AsString+' Valor '+LancamentosValor.AsString, DataSet.State);
end;

procedure TdmContab.LancamentosHistorico_ComplementoGetText(Sender: TField;var Text: String; DisplayText: Boolean);
begin
      If not Sender.IsNull then Text := Sender.AsString;
end;

procedure TdmContab.LotesBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, 'Lote:'+LotesLote.AsString+' de '+LotesData.AsString, DataSet.State);
end;

procedure TdmContab.LotesBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, 'Lote:'+LotesLote.AsString+' de '+LotesData.AsString, DataSet.State);
end;

procedure TdmContab.Pesquisa_LanHistorico_ComplementoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
      If not Sender.IsNull then Text := Sender.AsString;
end;

procedure TdmContab.PlanoContasBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, 'Conta: '+PlanoContasConta.AsString+' Codigo: '+PlanoContasCodigo.asstring, DataSet.State);
end;

procedure TdmContab.PlanoContasBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, 'Conta: '+PlanoContasConta.AsString+' Codigo: '+PlanoContasCodigo.asstring, DataSet.State);
end;

procedure TdmContab.Pesquisa_LanCalcFields(DataSet: TDataSet);
begin
      Pesquisa_LanHistCompl.AsString := Pesquisa_LanHistorico_Descricao.AsString + Pesquisa_LanHistorico_Complemento.AsString;
end;

end.
