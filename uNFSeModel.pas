unit uNFSeModel;

interface

uses
  System.SysUtils;

type

  TNFSe = class
  public
    // IDENTIFICAÇÃO.
    Arq: string;
    Nota: integer;
    Serie: string;
    Data_Emissao: TDate;
    Estado: string;
    NumeroDFSe: string;

    // EMITENTE.
    EmitCNPJ: string;
    EmitCod: integer;
    EmitNome: string;
    EmitLogr: string;
    Emitnro: string;
    EmitBairro: string;
    EmitMun: string;
    EmitUF: string;
    EmitCEP: string;
    EmitFone: string;
    EmitIM: string;
    EmitEMail: string;
    
    // PRESTADOR.
    TomaCNPJ: string;
    TomaCod: integer;
    TomaNome: string;
    TomaLogr: string;
    Tomanro: string;
    TomaBairro: string;
    TomaMun: string;
    TomaUF: string;
    TomaCEP: string;
    TomaFone: string;
    TomaIM: string;
    TomaEMail: string;

    // SERVIÇO.
    CodServico: string;
    Servico: string;
    Servico_Nacional: string;

    // VALORES TOTAIS.
    Valor_TotalNota: Double;
    Valor_TotalProdutos: Double;
    Valor_TotalLiquido: Double;
    Valor_TotalProdutosOrig: Double;
    Valor_TotalLiquidoOrig: Double;

    // TRIBUTAÇÃO.
    Aliquota_ISS: Double;
    Valor_ISSQN: Double;
    Valor_PIS: Double;
    Valor_COFINS: Double;
    Valor_BCCBS: Double;
    Valor_BCIBS: Double;
    Perc_IBSUF: Double;
    Valor_IBSUF: Double;
    Perc_IBSMun: Double;
    Valor_IBSMun: Double;

    constructor Create;
  end;

implementation

constructor TNFSe.Create;
begin
  inherited Create;

  Nota    := 0;
  Serie   := '';
  Estado  := '';
  Servico := '';
  Servico_Nacional := '';
end;

end.
