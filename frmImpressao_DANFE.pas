unit frmImpressao_DANFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, ppDBPipe, ppParameter, ppBands, ppClass, ppMemo, ppReport, ppSubRpt, ppBarCod, ppCtrls,
  ppPrnabl, DBAccess, MSAccess, Vcl.StdCtrls, Mask, DBCtrls, Vcl.ExtCtrls, Grids, DBGrids, RXDBCtrl, RXCtrls, MaskUtils, Funcoes,
  ImgList, ppVar, RxLookup, ComObj, Buttons, CheckLst, raCodMod,
  jpeg, ppDesignLayer, RxToolEdit, ppDB, MemDS, ppModule, ppStrtch, ppCache, ppComm, ppRelatv, ppProd;

type
  TImpressao_DANFE = class(TForm)
    Panel1: TPanel;
    bSair: TButton;
    Navega: TDBNavigator;
    bDANFE: TButton;
    DANFE_Reimpressao: TppReport;
    ppParameterList1: TppParameterList;
    ppNotas: TppDBPipeline;
    ppItens: TppDBPipeline;
    tbItens: TMSQuery;
    dsItens: TDataSource;
    ppEmpresas: TppDBPipeline;
    tbNotas: TMSQuery;
    dsNotas: TDataSource;
    tbNotasNumero: TIntegerField;
    tbNotasNatureza_Codigo: TStringField;
    tbNotasPedido: TIntegerField;
    tbNotasSaida_Entrada: TSmallintField;
    tbNotasData_Emissao: TDateTimeField;
    tbNotasData_EntradaSaida: TDateTimeField;
    tbNotasHora_EntradaSaida: TStringField;
    tbNotasTipo_Nota: TSmallintField;
    tbNotasSerie: TStringField;
    tbNotasModelo: TStringField;
    tbNotasProcesso: TStringField;
    tbNotasFUNDAP: TBooleanField;
    tbNotasLucro: TFloatField;
    tbNotasDI: TStringField;
    tbNotasData_DI: TDateTimeField;
    tbNotasInscricao_Substituto: TStringField;
    tbNotasInf_Complementares: TMemoField;
    tbNotasCliente_Codigo: TIntegerField;
    tbNotasFornecedor_Codigo: TIntegerField;
    tbNotasEstado: TStringField;
    tbNotasTransportador_Codigo: TIntegerField;
    tbNotasModalidade_Frete: TSmallintField;
    tbNotasVolume_Quantidade: TFloatField;
    tbNotasVolume_Especie: TStringField;
    tbNotasVolume_Marca: TStringField;
    tbNotasVolume_Numero: TStringField;
    tbNotasVolume_PesoLiquido: TFloatField;
    tbNotasVolume_PesoBruto: TFloatField;
    tbNotasValor_PIS: TCurrencyField;
    tbNotasValor_COFINS: TCurrencyField;
    tbNotasAliquota_ICMSOper: TFloatField;
    tbNotasBCICMS: TCurrencyField;
    tbNotasValor_ICMS: TCurrencyField;
    tbNotasAliquota_ICMSSub: TFloatField;
    tbNotasBCICMS_Substitutivo: TCurrencyField;
    tbNotasValorICMS_Substitutivo: TCurrencyField;
    tbNotasValor_TotalProdutos: TCurrencyField;
    tbNotasTotal_Frete: TCurrencyField;
    tbNotasValor_Seguro: TCurrencyField;
    tbNotasValor_OutrasDespesas: TCurrencyField;
    tbNotasBCIPI: TCurrencyField;
    tbNotasValor_TotalIPI: TCurrencyField;
    tbNotasValor_TotalNota: TCurrencyField;
    tbNotasRateio_Despesas: TFloatField;
    tbNotasValor_TotalMVA: TCurrencyField;
    tbNotasValor_ICMSReducao: TCurrencyField;
    tbNotasValor_TotalII: TCurrencyField;
    tbNotasModalidade_Pgto: TSmallintField;
    tbNotasDesconto_Percentual: TFloatField;
    tbNotasDesconto_Tipo: TStringField;
    tbNotasTotal_Descontos: TCurrencyField;
    tbNotasCancelada: TBooleanField;
    tbNotasMotivo_Cancelamento: TStringField;
    tbNotasComplementar: TBooleanField;
    tbNotasDevolucao: TBooleanField;
    tbNotasAjuste: TBooleanField;
    tbNotasNota_Referencia: TSmallintField;
    tbNotasData_Referencia: TDateTimeField;
    tbNotasNFe_cNF: TStringField;
    tbNotasNfe_cNFRef: TStringField;
    tbNotasNFe_Lote: TFloatField;
    tbNotasNFe_Recibo: TStringField;
    tbNotasNfe_DataRecibo: TDateTimeField;
    tbNotasNFe_Protocolo: TStringField;
    tbNotasNFe_DataProtocolo: TDateTimeField;
    ppNatureza: TppDBPipeline;
    Grade: TDBGrid;
    bPesquisar: TButton;
    tbNotasNfe_Denegada: TBooleanField;
    tbNotasImprimir_DANFE: TBooleanField;
    tbNotasDPEC: TBooleanField;
    tbNotasOperacao_Veiculo: TStringField;
    tbNotasTransporte_Placa: TStringField;
    tbNotasTransporte_PlacaUF: TStringField;
    tbNotasTransporte_RGMotorista: TStringField;
    tbNotasTransporte_CodigoANTT: TStringField;
    tbNotasTransporte_NomeMotorista: TStringField;
    Button2: TButton;
    Button3: TButton;
    tbNotasLucro_Valor: TCurrencyField;
    tbNotasTaxa_Cambio: TFloatField;
    tbNotasValor_IsentasICMS: TCurrencyField;
    tbNotasValor_OutrasICMS: TCurrencyField;
    tbNotasValor_IsentasIPI: TCurrencyField;
    tbNotasValor_OutrasIPI: TCurrencyField;
    tbNotasIncentivo_Fiscal: TStringField;
    tbNotasDPEC_Protocolo: TStringField;
    tbNotasDPEC_DataProtocolo: TDateTimeField;
    tbNotasRepresentante: TSmallintField;
    tbNotasRepresentante_Comissao: TFloatField;
    tbNotasImportacao: TBooleanField;
    tbNotasData_Cancelamento: TDateTimeField;
    tbNotasProtocolo_Cancelamento: TStringField;
    tbNotasCalcula_Volumes: TBooleanField;
    tbNotasValor_BCMVA: TFloatField;
    tbNotasDestinatario_CNPJ_CPF: TStringField;
    tbNotasDestinatario_Nome: TStringField;
    tbNotasDestinatario_Rua: TStringField;
    tbNotasDestinatario_RuaNumero: TStringField;
    tbNotasDestinatario_Bairro: TStringField;
    tbNotasDestinatario_Municipio: TFloatField;
    tbNotasDestinatario_Estado: TStringField;
    tbNotasDestinatario_CEP: TStringField;
    tbNotasDestinatario_Telefone1: TStringField;
    tbNotasDestinatario_IE: TStringField;
    tbNotasDestinatario_Complemento: TStringField;
    tbNotasDestinatario_Juridica: TBooleanField;
    tBeneficiario: TMSQuery;
    dstBeneficiario: TDataSource;
    tbNotasValor_DUMPING: TCurrencyField;
    tbNotasPedido_Nota: TIntegerField;
    tbNotasReducao_ICMSOper: TFloatField;
    tbNotasApuracao_PISCOFINS: TBooleanField;
    tbNotasInf_Complementares2: TMemoField;
    tbNotasDestinatario_Pais: TStringField;
    tbNotasDestinatario_MunicipioNome: TStringField;
    GroupBox1: TGroupBox;
    cTipo: TRadioGroup;
    cDataIni: TDateEdit;
    StaticText2: TStaticText;
    cDataFim: TDateEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    cProcesso: TRxDBLookupCombo;
    StaticText4: TStaticText;
    cBeneficiario: TRxDBLookupCombo;
    cPessoa: TRadioGroup;
    StaticText5: TStaticText;
    cTipoNota: TRxDBLookupCombo;
    StaticText6: TStaticText;
    cEstado: TRxDBLookupCombo;
    StaticText7: TStaticText;
    cCFOP: TRxDBLookupCombo;
    tbNotasBCICMS_Apuracao: TCurrencyField;
    tbNotasValor_ICMSApuracao: TCurrencyField;
    tbNotasMedia_BCR: TCurrencyField;
    tbNotasValor_PIS2: TFloatField;
    tbNotasValor_COFINS2: TFloatField;
    tbNotasBaixa_Estoque: TBooleanField;
    tbNotasValor_DespesasOutros: TCurrencyField;
    tbNotasICMS_Destacar: TBooleanField;
    tbNotasValor_BCPIS: TCurrencyField;
    tbNotasTotal_Impostos: TCurrencyField;
    tbNotasAliquota_IRPJ: TFloatField;
    tbNotasValor_IRPJ: TCurrencyField;
    tbNotasAliquota_CSLL: TFloatField;
    tbNotasValor_CSLL: TCurrencyField;
    tbNotasComissao: TFloatField;
    tbNotasComissao_Valor: TCurrencyField;
    tbNotasPedido_Representante: TStringField;
    tbNotasManifesto_Protocolo: TStringField;
    tbNotasManifesto_DataProtocolo: TDateTimeField;
    tbNotasManifesto_Motivo: TSmallintField;
    tbNotasManifesto_Justificativa: TMemoField;
    tbNotasNatureza_Correcao: TStringField;
    tBeneficiarioCodigo: TStringField;
    tBeneficiarioCodigo_Fornecedor: TIntegerField;
    tBeneficiarioCodigo_Cliente: TIntegerField;
    tBeneficiarioCodigo_Orgao: TStringField;
    tBeneficiarioNome: TStringField;
    tBeneficiarioCNPJ: TStringField;
    tBeneficiarioTipo: TStringField;
    StaticText10: TStaticText;
    cRamoAtividade: TCheckListBox;
    bSelecionar: TBitBtn;
    bDesmarcar: TBitBtn;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Image2: TImage;
    tbNotasAtendente: TSmallintField;
    tbNotasAtendente_Comissao: TFloatField;
    tbNotasValor_Inventario: TFloatField;
    tbNotasIndicador_Presenca: TSmallintField;
    tbNotasVeiculo_Restricao: TStringField;
    tbNotasRatear_Despesa: TBooleanField;
    tbNotasNFE_Estorno: TBooleanField;
    tbNotasRepresentante_ComissaoGer: TFloatField;
    tbNotasVendedor: TStringField;
    tbNotasValor_BCICMSDest: TCurrencyField;
    tbNotasValor_ICMSDest: TCurrencyField;
    tbNotasDIFAL_Valor: TCurrencyField;
    tbNotasDIFAL_ValorOrig: TCurrencyField;
    tbNotasDIFAL_ValorDest: TCurrencyField;
    tbNotasFCP_ValorDest: TCurrencyField;
    tbNotasFCP_ICMSDest: TCurrencyField;
    tbNotasFCP_ICMSORIG: TCurrencyField;
    tbNotasDIFAL_AliqInterna: TFloatField;
    tbNotasValor_BCFCPST: TCurrencyField;
    tbNotasValor_FCPST: TCurrencyField;
    tbNotasAliquota_FCPST: TFloatField;
    tbNotasValor_BCFCP: TCurrencyField;
    tbNotasAliquota_FCP: TFloatField;
    tbNotasValor_FCP: TCurrencyField;
    tbNotasTipo_Pagamento: TSmallintField;
    tbNotasForma_Pagamento: TSmallintField;
    tbNotasValor_ICMSDesonerado: TCurrencyField;
    tbNotasLote: TStringField;
    tbNotasReboque_Placa: TStringField;
    tbNotasReboque_UF: TStringField;
    tbNotasReboque_ANTT: TStringField;
    tbNotasEntrega_Retirada: TStringField;
    tbNotasValor_CIF: TCurrencyField;
    tbNotasCTE: TBooleanField;
    tbNotasTipo_Processo: TStringField;
    tbNotasValor_AFRMM: TCurrencyField;
    Button4: TButton;
    tbNotasIndicador_Intermediario: TSmallintField;
    tbNotasDescricao_Forma: TStringField;
    tbNotasIntermediador: TSmallintField;
    tbNotasEnvio_Armazem: TBooleanField;
    tbNotasCancelada_ForaPrazo: TBooleanField;
    tbNotasValor_BCDIFAL: TCurrencyField;
    tbNotasValor_ICMSDif: TCurrencyField;
    tbNotasValor_ICMSMono: TCurrencyField;
    tbNotasValor_ICMSMonoRet: TCurrencyField;
    tbNotasValor_BCICMSMono: TCurrencyField;
    tbNotasValor_BCICMSMonoRet: TCurrencyField;
    tbNotasInf_Compl: TMemoField;
    ppHeaderBand1: TppHeaderBand;
    ppShape6: TppShape;
    CodigoBarras: TppDBBarCode;
    ppShape60: TppShape;
    ppShape58: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppShape2: TppShape;
    lRazaoSocial: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    lSerie: TppLabel;
    ppLine1: TppLine;
    lQuadroEmpresa: TppShape;
    lEndereco: TppLabel;
    lBairroMunicipio: TppLabel;
    lCEP: TppLabel;
    lEmpresa: TppLabel;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppDBText2: TppDBText;
    lSerie2: TppLabel;
    lNumero_Folha: TppLabel;
    lNumero: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppShape9: TppShape;
    ppLabel9: TppLabel;
    ppShape10: TppShape;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    ppShape11: TppShape;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppLabel74: TppLabel;
    ppLabel3: TppLabel;
    ppShape55: TppShape;
    ppLabel77: TppLabel;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppLabel76: TppLabel;
    ppDBText5: TppDBText;
    lIE: TppDBText;
    ppMemo1: TppMemo;
    ppLabel81: TppLabel;
    lProtocolo: TppDBText;
    lDataProtocolo: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    lNatureza: TppLabel;
    ppDBText1: TppDBText;
    lDPEC: TppLabel;
    lHomologacao: TppLabel;
    iLogo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText27: TppDBText;
    ppLine12: TppLine;
    ppDBText28: TppDBText;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppDBText30: TppDBText;
    ppLine18: TppLine;
    ppDBText31: TppDBText;
    ppLine20: TppLine;
    ppDBText32: TppDBText;
    ppLine22: TppLine;
    ppDBText33: TppDBText;
    ppLine24: TppLine;
    ppDBText34: TppDBText;
    ppLine26: TppLine;
    ppDBText35: TppDBText;
    ppLine31: TppLine;
    ppDBText36: TppDBText;
    ppLine32: TppLine;
    ppDBText25: TppDBText;
    lItem_CST: TppLabel;
    ppLine7: TppLine;
    ppDBMemo1: TppDBMemo;
    lCodigo: TppDBText;
    lQuantidade: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine28: TppLine;
    ppShape63: TppShape;
    ppShape64: TppShape;
    ppLabel79: TppLabel;
    ppShape65: TppShape;
    ppLabel82: TppLabel;
    ppShape66: TppShape;
    ppLabel83: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppShape80: TppShape;
    ppDBMemo2: TppDBMemo;
    ppLabel89: TppLabel;
    ppLabel113: TppLabel;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    Rodape: TppFooterBand;
    ppGroup2: TppGroup;
    gDadosNF: TppGroupHeaderBand;
    ppShape28: TppShape;
    ppShape45: TppShape;
    ppShape40: TppShape;
    ppLabel13: TppLabel;
    ppShape13: TppShape;
    ppLabel14: TppLabel;
    ppShape14: TppShape;
    ppLabel15: TppLabel;
    ppShape15: TppShape;
    ppLabel16: TppLabel;
    lData_Emissao: TppDBText;
    ppShape16: TppShape;
    lDestinatario_Endereco: TppLabel;
    lDestinatario_Rua: TppLabel;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppShape19: TppShape;
    ppLabel17: TppLabel;
    lData_EntradaSaida: TppDBText;
    ppShape20: TppShape;
    ppLabel18: TppLabel;
    ppShape21: TppShape;
    ppLabel19: TppLabel;
    ppShape22: TppShape;
    ppLabel22: TppLabel;
    ppShape23: TppShape;
    ppLabel24: TppLabel;
    ppShape24: TppShape;
    ppLabel25: TppLabel;
    lHora_Saida: TppDBText;
    ppLabel26: TppLabel;
    ppShape37: TppShape;
    ppLabel39: TppLabel;
    lTransportador_Nome: TppLabel;
    ppShape38: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppShape39: TppShape;
    ppDBText17: TppDBText;
    ppLabel43: TppLabel;
    ppShape41: TppShape;
    ppLabel44: TppLabel;
    ppShape42: TppShape;
    ppLabel46: TppLabel;
    ppShape43: TppShape;
    ppLabel45: TppLabel;
    ppShape44: TppShape;
    ppLabel47: TppLabel;
    lTransportador_Endereco: TppLabel;
    ppLabel49: TppLabel;
    lTransportador_Municipio: TppLabel;
    ppShape46: TppShape;
    ppLabel51: TppLabel;
    lTransportador_UF: TppLabel;
    ppShape47: TppShape;
    ppLabel52: TppLabel;
    lTransportador_CNPJ: TppLabel;
    lTransportador_IE: TppLabel;
    ppShape48: TppShape;
    ppLabel48: TppLabel;
    ppDBText18: TppDBText;
    ppShape49: TppShape;
    ppLabel50: TppLabel;
    ppDBText19: TppDBText;
    ppShape50: TppShape;
    ppLabel53: TppLabel;
    ppDBText20: TppDBText;
    ppShape51: TppShape;
    ppLabel54: TppLabel;
    ppDBText21: TppDBText;
    ppShape52: TppShape;
    ppLabel55: TppLabel;
    ppDBText22: TppDBText;
    ppShape53: TppShape;
    ppLabel56: TppLabel;
    ppDBText23: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText14: TppDBText;
    cDestinatario_CNPJ_CPF: TppDBText;
    ppDBText26: TppDBText;
    ppDBText37: TppDBText;
    ppDBText42: TppDBText;
    ppDBText85: TppDBText;
    lDestinatario_IE: TppDBText;
    lDestinatario_Municipio: TppLabel;
    ppShape59: TppShape;
    ppShape12: TppShape;
    ppShape25: TppShape;
    ppLabel12: TppLabel;
    ppLine33: TppLine;
    ppLabel75: TppLabel;
    ppLabel78: TppLabel;
    ppLine34: TppLine;
    lNumDupl1: TppLabel;
    lDataDupl1: TppLabel;
    lValorDupl1: TppLabel;
    ppLabel90: TppLabel;
    ppLine35: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLine36: TppLine;
    ppLabel96: TppLabel;
    ppLine37: TppLine;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine38: TppLine;
    lNumDupl2: TppLabel;
    lNumDupl3: TppLabel;
    lDataDupl2: TppLabel;
    lValorDupl2: TppLabel;
    lValorDupl3: TppLabel;
    lNumDupl4: TppLabel;
    lNumDupl5: TppLabel;
    lNumDupl6: TppLabel;
    lDataDupl4: TppLabel;
    lDataDupl5: TppLabel;
    lDataDupl6: TppLabel;
    lValorDupl4: TppLabel;
    lValorDupl5: TppLabel;
    lValorDupl6: TppLabel;
    lNumDupl7: TppLabel;
    lNumDupl8: TppLabel;
    lNumDupl9: TppLabel;
    lDataDupl7: TppLabel;
    lDataDupl8: TppLabel;
    lDataDupl9: TppLabel;
    lValorDupl7: TppLabel;
    lValorDupl8: TppLabel;
    lValorDupl9: TppLabel;
    lNumDupl10: TppLabel;
    lDataDupl10: TppLabel;
    lNumDupl11: TppLabel;
    lDataDupl11: TppLabel;
    lValorDupl11: TppLabel;
    lNumDupl12: TppLabel;
    lDataDupl12: TppLabel;
    lValorDupl12: TppLabel;
    lValorDupl10: TppLabel;
    lDataDupl3: TppLabel;
    lNumDupl13: TppLabel;
    lNumDupl14: TppLabel;
    lNumDupl15: TppLabel;
    lDataDupl13: TppLabel;
    lDataDupl14: TppLabel;
    lDataDupl15: TppLabel;
    lValorDupl13: TppLabel;
    lValorDupl14: TppLabel;
    lValorDupl15: TppLabel;
    lNumDupl17: TppLabel;
    lNumDupl18: TppLabel;
    lNumDupl19: TppLabel;
    lNumDupl20: TppLabel;
    lNumDupl21: TppLabel;
    lNumDupl22: TppLabel;
    lNumDupl23: TppLabel;
    lDataDupl17: TppLabel;
    lDataDupl18: TppLabel;
    lDataDupl19: TppLabel;
    lDataDupl20: TppLabel;
    lDataDupl21: TppLabel;
    lDataDupl22: TppLabel;
    lDataDupl23: TppLabel;
    lValorDupl17: TppLabel;
    lValorDupl18: TppLabel;
    lValorDupl19: TppLabel;
    lValorDupl20: TppLabel;
    lValorDupl21: TppLabel;
    lValorDupl22: TppLabel;
    lValorDupl23: TppLabel;
    lNumDupl16: TppLabel;
    lDataDupl16: TppLabel;
    lValorDupl16: TppLabel;
    lNumDupl24: TppLabel;
    lDataDupl24: TppLabel;
    lValorDupl24: TppLabel;
    ppShape74: TppShape;
    lTituloEntrega_Retirada: TppLabel;
    ppShape75: TppShape;
    ppLabel103: TppLabel;
    lEntregaNome: TppLabel;
    ppShape76: TppShape;
    ppLabel105: TppLabel;
    ppShape77: TppShape;
    ppLabel106: TppLabel;
    lEntregaCNPJ: TppLabel;
    ppShape78: TppShape;
    ppLabel108: TppLabel;
    lEntregaRua: TppLabel;
    lEntregaBairro: TppLabel;
    ppShape79: TppShape;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppShape81: TppShape;
    ppLabel114: TppLabel;
    lEntregaMunicipio: TppLabel;
    ppShape82: TppShape;
    ppLabel117: TppLabel;
    lEntregaUF: TppLabel;
    ppShape84: TppShape;
    ppLabel120: TppLabel;
    lEntregaCEP: TppLabel;
    lEntregaIE: TppLabel;
    lEntregaTelefone: TppLabel;
    lCancelada: TppLabel;
    ppLabel27: TppLabel;
    ppLabel57: TppLabel;
    ppShape54: TppShape;
    ppLabel58: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel59: TppLabel;
    ppLine4: TppLine;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine5: TppLine;
    ppLabel62: TppLabel;
    ppLine11: TppLine;
    ppLabel63: TppLabel;
    ppLine13: TppLine;
    ppLabel64: TppLabel;
    ppLine15: TppLine;
    ppLabel65: TppLabel;
    ppLine17: TppLine;
    ppLabel66: TppLabel;
    ppLine19: TppLine;
    ppLabel67: TppLabel;
    ppLine21: TppLine;
    ppLabel68: TppLabel;
    ppLine23: TppLine;
    ppLabel69: TppLabel;
    ppLine25: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLine29: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel38: TppLabel;
    ppShape31: TppShape;
    ppShape27: TppShape;
    ppShape26: TppShape;
    ppLabel28: TppLabel;
    ppLabel23: TppLabel;
    ppLabel29: TppLabel;
    ppDBText8: TppDBText;
    ppShape29: TppShape;
    ppLabel30: TppLabel;
    ppDBText9: TppDBText;
    ppShape30: TppShape;
    ppLabel31: TppLabel;
    ppDBText10: TppDBText;
    ppLabel32: TppLabel;
    ppDBText11: TppDBText;
    ppShape32: TppShape;
    ppLabel33: TppLabel;
    ppDBText12: TppDBText;
    ppShape33: TppShape;
    ppLabel34: TppLabel;
    ppDBText13: TppDBText;
    ppShape34: TppShape;
    pDescontos: TppDBText;
    ppLabel35: TppLabel;
    ppShape35: TppShape;
    ppDBText15: TppDBText;
    ppLabel36: TppLabel;
    ppShape36: TppShape;
    ppDBText16: TppDBText;
    ppLabel37: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape5: TppShape;
    ppLabel7: TppLabel;
    lII: TppDBText;
    ppShape68: TppShape;
    ppLabel80: TppLabel;
    ppDBText29: TppDBText;
    ppShape67: TppShape;
    ppLabel93: TppLabel;
    ppDBText41: TppDBText;
    ppShape69: TppShape;
    ppLabel94: TppLabel;
    cAFRMM: TppDBText;
    ppShape70: TppShape;
    ppLabel95: TppLabel;
    ppDBText44: TppDBText;
    ppShape71: TppShape;
    ppLabel99: TppLabel;
    ppDBText45: TppDBText;
    ppShape72: TppShape;
    ppLabel101: TppLabel;
    ppDBText46: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    raCodeModule2: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    tTemp: TMSQuery;
    cExcel: TCheckBox;
    cDataHora: TCheckBox;
    tNavios: TMSQuery;
    cAgruparFilial: TCheckBox;
    bFiltrar: TButton;
    Button1: TButton;
    Bevel1: TBevel;
    StaticText8: TStaticText;
    cRefCliente: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bSairClick(Sender: TObject);
    procedure bDANFEClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure tbNotasAfterScroll(DataSet: TDataSet);
    procedure bPesquisarClick(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DANFE_ReimpressaoBeforePrint(Sender: TObject);
    procedure ExportaEXCEL;
    procedure cTipoClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bDesmarcarClick(Sender: TObject);
    procedure DuplicataDANFE(pParc: integer);
    procedure ZerarDupl;
    procedure gDadosNFBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Impressao_DANFE: TImpressao_DANFE;

implementation

uses frmDMFiscal, frmDados, frmMenu_Principal, frmJanela_Processamento;

{$R *.dfm}

procedure TImpressao_DANFE.FormShow(Sender: TObject);
begin
      Screen.Cursor := crSQLWait;
      With Dados, dmFiscal do begin
           with Notas do begin 
                sql.Clear;
                sql.Add('select * ');
                sql.add('      ,Inf_Compl = concat(Inf_Complementares, Inf_Complementares2)');
                sql.add('from NotasFiscais');
                sql.add('order by Data_Emissao desc, Numero desc');
                open;
           end;

           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := Menu_Principal.mEmpresa;
           Empresas.Open;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza');
           Natureza.Open;

           TipoNota.SQL.Clear;
           TipoNota.SQL.Add('SELECT * FROM TipoNota');
           TipoNota.Open;

           Estados.SQL.Clear;
           Estados.SQL.Add('SELECT * FROM Estados ORDER BY Nome');
           Estados.Open;

           Natureza.SQL.Clear;
           Natureza.SQL.Add('SELECT * FROM Natureza ORDER BY Codigo');
           Natureza.Open;

           ProcessosDOC.SQL.Clear;
           ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos ORDER BY Processo');
           ProcessosDOC.Open;

           RamoAtividade.SQL.Clear;
           RamoAtividade.SQL.Add('SELECT * FROM RamoAtividade ORDER BY Descricao');
           RamoAtividade.Open;

           RamoAtividade.First;
           While not RamoAtividade.Eof do begin
                 cRamoAtividade.Items.Add(RamoAtividadeDescricao.AsString);
                 RamoAtividade.Next;
           End;
           
           Configuracao.Open;
 
           cTipoClick(Self); 
      End;
      Screen.Cursor := crDefault;
end;

procedure TImpressao_DANFE.gDadosNFBeforePrint(Sender: TObject);
begin
      With Dados do begin
           TipoNota.Locate('Codigo', tbNotas.FieldByName('Tipo_Nota').AsInteger, [loCaseInsensitive]);
           lII.Visible      := tbNotas.FieldByName('Saida_Entrada').asinteger = 0;
      End;
end;

procedure TImpressao_DANFE.FormClose(Sender: TObject;var Action: TCloseAction);
begin
      FecharTabelas(Dados, dmFiscal, nil, nil);
      LimpaMemoria;
      Impressao_DANFE.Release;
      Impressao_DANFE := nil;
end;

procedure TImpressao_DANFE.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TImpressao_DANFE.bDANFEClick(Sender: TObject);
Var
    mNotas: WideString;
    mSel  : Integer;
begin
     lData_EntradaSaida.Visible := cDataHora.Checked;
     lHora_Saida.Visible        := cDataHora.Checked;
     with dmFiscal do begin
          Notas.DisableControls;
          mNotas := '';
          screen.Cursor := crSQLWait;
          for mSel := 0 to Grade.SelectedRows.Count-1 do begin
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
              If Trim(mNotas) <> '' then begin
                 mNotas := mNotas + ','+QuotedStr(Trim(NotasNFe_cNF.AsString));
              end else begin
                 mNotas := QuotedStr(Trim(NotasNFe_cNF.AsString));
              End;
          end;
          if mNotas = '' then begin
             ShowMessage('Nenhuma nota fiscal selecionada para impressão!');
             Abort;
          end;
          with tbNotas do begin
               sql.Clear;
               sql.Add('select *');
               sql.add('      ,Inf_Compl = concat(Inf_Complementares, Inf_Complementares2)');
               sql.add('from NotasFiscais');
               sql.add('where NFE_cNF in('+mNotas+')');
               sql.Add('ORDER BY Numero');
               //SQL.SaveToFile('c:\Temp\Reimpressao_DANFE.SQL');
               open;
          end;
          screen.Cursor := crDefault;
          Notas.EnableControls;
     end;
     if cExcel.Checked = false then begin
        DANFE_Reimpressao.Print;
        DANFE_Reimpressao.FreeOnRelease;
        DANFE_Reimpressao.Reset;
     end else begin
        ExportaExcel;
     end;
     tbNotas.Close;
end;

procedure TImpressao_DANFE.FormCreate(Sender: TObject);
begin
     If FileExists('fundo_barra.bmp') then Image2.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TImpressao_DANFE.ppHeaderBand1BeforePrint(Sender: TObject);
Var
    mParcela : Integer;
begin
      With Dados, dmFiscal do Begin
           tbItens.SQL.Clear;
           tbItens.SQL.Add('SELECT Nota,');
           tbItens.SQL.Add('       Data,');
           tbItens.SQL.Add('       Codigo_Mercadoria,');
           tbItens.SQL.Add('       Codigo_Fabricante,');
           tbItens.SQL.Add('       CASE WHEN (Total_Impostos > 0) AND (Valor_Total > 0) THEN');
           tbItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))+ CHAR(13)+CHAR(13)+''                              TRIBUTOS : R$ ''+ CONVERT(VARCHAR, CAST(Total_Impostos AS money),-1) +');
           tbItens.SQL.Add('                 ''  (''+CONVERT(VARCHAR, CAST( ROUND((Total_Impostos/Valor_Total)*100, 2) AS money),-1)+''%)'' ');
           tbItens.SQL.Add('       ELSE');
           tbItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000)) ');
           tbItens.SQL.Add('       END AS Descricao_Mercadoria,');
           tbItens.SQL.Add('       NCM,');
           tbItens.SQL.Add('       Unidade_Medida,');
           tbItens.SQL.Add('       CodigoTrib_TabA,');
           tbItens.SQL.Add('       CodigoTrib_TabB,');
           tbItens.SQL.Add('       CSTIPI,');
           tbItens.SQL.Add('       CSTPIS,');
           tbItens.SQL.Add('       CSTCOFINS,');
           tbItens.SQL.Add('       Quantidade,');
           tbItens.SQL.Add('       Valor_Unitario,');
           tbItens.SQL.Add('       Valor_Total,');
           tbItens.SQL.Add('       Aliquota_IPI,');
           tbItens.SQL.Add('       Valor_IPI,');
           tbItens.SQL.Add('       Total_IPI,');
           tbItens.SQL.Add('       Aliquota_ICMSOper,');
           tbItens.SQL.Add('       Valor_BCICMSOper,');
           tbItens.SQL.Add('       Valor_ICMSOper,');
           tbItens.SQL.Add('       Valor_BCICMSSub,');
           tbItens.SQL.Add('       Aliquota_ICMSSub,');
           tbItens.SQL.Add('       Valor_ICMSSub,');
           tbItens.SQL.Add('       Aliquota_PIS,');
           tbItens.SQL.Add('       Valor_PIS,');
           tbItens.SQL.Add('       Aliquota_COFINS,');
           tbItens.SQL.Add('       Valor_COFINS,');
           tbItens.SQL.Add('       Total_Item,');
           tbItens.SQL.Add('       Total_Impostos,');
           tbItens.SQL.Add('       Natureza_Codigo,');
           tbItens.SQL.Add('       DI');
           tbItens.SQL.Add('FROM   NotasItens');
           tbItens.SQL.Add('WHERE  (Nota = :pNota) AND (Data = :pData)');
           tbItens.SQL.Add('ORDER  BY Item');
           tbItens.ParamByName('pNota').AsInteger  := tbNotasNumero.Value;
           tbItens.ParamByName('pData').AsDateTime := tbNotasData_Emissao.AsDateTime;
           tbItens.Open;

           Municipios.SQL.Clear;
           Municipios.SQL.Add('SELECT * FROM Municipios');
           Municipios.Open;
           Municipios.Locate('Codigo', EmpresasMunicipio_Codigo.Value, [loCaseInsensitive]);

           Natureza.Open;
           Natureza.Locate('Codigo', tbNotasNatureza_Codigo.Value, [loCaseInsensitive]);

           Estados.Open;
           Estados.Locate('Codigo', EmpresasEstado.Value, [loCaseInsensitive]);

           Clientes.Open;
           Clientes.Locate('Codigo', tbNotasCliente_Codigo.Value, [loCaseInsensitive]);

           Fornecedores.SQL.Clear;
           Fornecedores.SQL.Add('SELECT * FROM Fornecedores ORDER BY Codigo');
           Fornecedores.Open;
           Fornecedores.Locate('Codigo', tbNotasFornecedor_Codigo.Value, [loCaseInsensitive]);

           TipoNota.Open;
           TipoNota.Locate('Codigo', tbNotasTipo_Nota.Value, [loCaseInsensitive]);

           pDescontos.Visible  := Dados.TipoNotaVisiveis_Desconto.AsBoolean;
           lQuantidade.Visible := Dados.TipoNotaVisiveis_QuantidadeItem.AsBoolean;

           // Campos do cebeçalho visiveis apenas na primeira pagina.
           gDadosNF.Visible := DANFE_Reimpressao.PageNo = 1;
           lDPEC.Visible    := tbNotasDPEC.AsBoolean;
           If tbNotasDPEC.AsBoolean = true then begin
              lProtocolo.DataField     := 'DPEC_Protocolo';
              lDataProtocolo.DataField := 'DPEC_DataProtocolo';
           end else begin
              lProtocolo.DataField     := 'NFe_Protocolo';
              lDataProtocolo.DataField := 'NFe_DataProtocolo';
           End;

           lRazaoSocial.Caption     := 'RECEBEMOS DE '+Trim(EmpresasRazao_Social.Value)+' OS PRODUTOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO.';
           lEmpresa.Caption         := Trim(EmpresasRazao_Social.Value);
           lEndereco.Caption        := Trim(EmpresasRua.Value) + ',Nº '+Trim(EmpresasRua_Numero.AsString)+', '+Trim(EmpresasComplemento.AsString);
           lBairroMunicipio.Caption := Trim(EmpresasBairro.Value)+', '+Trim(MunicipiosNome.Value)+' ('+Trim(EmpresasEstado.Value)+')   '+'CEP:'+FormatMaskText('#####-###;0',EmpresasCEP.Value);
           lCEP.Caption             := 'TEL:'+FormatMaskText('(##) #########;0', EmpresasTelefone1.Value)+'  FAX:'+FormatMaskText('(##) #########;0',EmpresasFAX.Value);
           lNumero.Caption          := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, tbNotasNumero.AsInteger) );
           lNumero_Folha.Caption    := 'Nº '+FormatMaskText('000.000.000;0', PoeZero(9, tbNotasNumero.AsInteger) );
           lIE.DisplayFormat        := EstadosMascara_Inscricao.Value;
           lNatureza.Caption        := TipoNotaDescricao_CFOP_Nota.AsString;

           Municipios.Locate('Codigo', tbNotasDestinatario_Municipio.Value, [loCaseInsensitive]);
           lDestinatario_Rua.Caption            := Trim(tbNotasDestinatario_Rua.Value)+', Nº '+Trim(tbNotasDestinatario_RuaNumero.Value)+', '+Trim(tbNotasDestinatario_Complemento.AsString);
           lDestinatario_Municipio.Caption      := AnsiUpperCase(Trim(MunicipiosNome.Value));
           cDestinatario_CNPJ_CPF.DisplayFormat := '##.###.###/####-##;0; ';
           If tbNotasDestinatario_Juridica.AsBoolean = false then begin
              cDestinatario_CNPJ_CPF.DisplayFormat := '###.###.###-##;0'
           End;
           If Estados.Locate('Codigo', TbNotasDestinatario_Estado.Value, [loCaseInsensitive]) = true then begin
              If (Trim(tbNotasDestinatario_IE.AsString) <> 'ISENTO') and (Trim(tbNotasDestinatario_IE.AsString) <> '') then
                 lDestinatario_IE.DisplayFormat := EstadosMascara_Inscricao.Value;
           End;

           // Endereço de entrega / Retirada.
           lTituloEntrega_Retirada.Caption := 'INFORMAÇÕES DO LOCAL DE ENTREGA/RETIRADA';
           lEntregaNome.Caption            := '';
           lEntregaCNPJ.Caption            := '';
           lEntregaIE.Caption              := '';
           lEntregaRua.Caption             := '';
           lEntregaBairro.Caption          := '';
           lEntregaCEP.Caption             := '';
           lEntregaMunicipio.Caption       := '';
           lEntregaUF.Caption              := '';
           lEntregaTelefone.Caption        := '';
           if tbNotas.fieldbyname('Entrega_Retirada').AsString = 'E' then begin
              lTituloEntrega_Retirada.Caption := 'INFORMAÇÕES DO LOCAL DE ENTREGA';
              lEntregaNome.Caption      := Trim(ClientesRecebedor_Entrega.Value);
              if Trim(ClientesCNPJ_Entrega.Value) <> '' then
                 lEntregaCNPJ.Caption := FormatMaskText('##.###.###/####-##;0',ClientesCNPJ_Entrega.Value)
              else
                 lEntregaCNPJ.Caption := FormatMaskText('###.###.###-##;0',ClientesCPF_Entrega.Value);
              lEntregaIE.Caption        := Trim(ClientesIE_Entrega.Value);
              lEntregaRua.Caption       := Trim(ClientesRua_Entrega.Value)+', Nº '+Trim(ClientesRua_EntregaNumero.Value)+', '+Trim(ClientesRua_ComplEntrega.AsString);
              lEntregaBairro.Caption    := Trim(ClientesBairro_Entrega.AsString);
              lEntregaCEP.Caption       := FormatMaskText('#####-###;0', ClientesCEP_Entrega.Value);
              lEntregaMunicipio.Caption := AnsiUpperCase(Trim(ClientesMunicipio_EntregaNome.AsString));
              lEntregaUF.Caption        := Trim(ClientesEstado_Entrega.Value);
              lEntregaTelefone.Caption  := iif(Trim(ClientesTelefone_Entrega.AsString) <> '', FormatMaskText('(##) #########;0', ClientesTelefone_Entrega.Value), '');
           end;
           if tbNotas.fieldbyname('Entrega_Retirada').AsString = 'R' then begin
              Municipios.Locate('Codigo', ClientesMunicipio_Retirada.Value, [loCaseInsensitive]);

              lTituloEntrega_Retirada.Caption := 'INFORMAÇÕES DO LOCAL DE RETIRADA';
              lEntregaNome.Caption      := Trim(ClientesExpedidor_Retirada.Value);
              if Trim(ClientesCNPJ_Retirada.Value) <> '' then
                 lEntregaCNPJ.Caption := FormatMaskText('##.###.###/####-##;0',ClientesCNPJ_Retirada.Value)
              else
                 lEntregaCNPJ.Caption := FormatMaskText('###.###.###-##;0',ClientesCPF_Retirada.Value);

              lEntregaIE.Caption        := Trim(ClientesIE_Retirada.Value);
              lEntregaRua.Caption       := Trim(ClientesRua_Retirada.Value)+', Nº '+Trim(ClientesRua_NumeroRetirada.Value)+', '+Trim(ClientesRua_ComplRetirada.AsString);
              lEntregaBairro.Caption    := Trim(ClientesBairro_Retirada.AsString);
              lEntregaCEP.Caption       := FormatMaskText('#####-###;0', ClientesCEP_Retirada.Value);
              lEntregaMunicipio.Caption := AnsiUpperCase(Trim(MunicipiosNome.AsString));
              lEntregaUF.Caption        := Trim(ClientesEstado_Retirada.Value);
              lEntregaTelefone.Caption  := iif(Trim(ClientesTelefone_Retirada.AsString) <> '', FormatMaskText('(##) #########;0', ClientesTelefone_Retirada.Value), '');
           end;

           lSerie.Caption  := 'Série: '+PoeZero(3, tbNotasSerie.AsInteger);
           lSerie2.Caption := 'Série: '+PoeZero(3, tbNotasSerie.AsInteger);

           //If (Trim(lNatureza.Caption) = '') or (tbNotasDevolucao.Value = True) then begin
           If (Trim(lNatureza.Caption) = '') then begin
              lNatureza.Caption := NaturezaDescricao_NF.AsString;
           End;
           // Zera os valores do labels.
           ZerarDupl;

           // Dados da Fatura / Duplicata.
           if Fatura.RecordCount <> 0 then begin
              Duplicatas.First;
              mParcela := 1;

              while not Duplicatas.Eof do begin
                    if mParcela < 25 then DuplicataDANFE(mParcela);
                    Duplicatas.Next;
                    Inc(mParcela);
              end;
           end;
           
           // Dados do Transportador.
           lTransportador_CNPJ.Caption      := '';
           lTransportador_Nome.Caption      := '';
           lTransportador_Endereco.Caption  := '';
           lTransportador_Municipio.Caption := '';
           lTransportador_UF.Caption        := '';
           lTransportador_IE.Caption        := '';

           If tbNotasTransportador_Codigo.Value <> 0 then begin
              Fornecedores.Locate('Codigo', tbNotasTransportador_Codigo.Value, [loCaseInsensitive]);
              If Trim(FornecedoresCNPJ.Value) <> '' then
                 lTransportador_CNPJ.Caption := FormatMaskText('##.###.###/####-##;0', FornecedoresCNPJ.Value)
              else
                 lTransportador_CNPJ.Caption := FormatMaskText('###.###.###-##;0', FornecedoresCPF.Value);

              lTransportador_Nome.Caption      := Trim(FornecedoresNome.Value);
              lTransportador_Endereco.Caption  := Trim(FornecedoresRua.Value) + ',Nº '+Trim(FornecedoresRua_Numero.AsString)+', '+Trim(FornecedoresBairro.Value);
              lTransportador_Municipio.Caption := Trim(FornecedoresMunicipio.Value);
              lTransportador_UF.Caption        := Trim(FornecedoresEstado.Value);
              Estados.Locate('Codigo', FornecedoresEstado.Value, [loCaseInsensitive]);
              lTransportador_IE.Caption        := FornecedoresInscricao_Estadual.Value;
              if Trim(EstadosMascara_Inscricao.AsString) <> '' then
                 lTransportador_IE.Caption := FormatMaskText(EstadosMascara_Inscricao.Value, FornecedoresInscricao_Estadual.Value);
           End;

           lHomologacao.Visible   := Menu_Principal.Amb_Producao = 2;
           //lCancelada.Visible     := tbNotas.FieldByName('Cancelada').AsBoolean;
           lCancelada.Visible     := false;
           If tbNotas.FieldByName('Cancelada').AsBoolean then begin
              lCancelada.Text    := '[ CANCELADA ]';
              lCancelada.Font.Color := clRed;
              lCancelada.Reset;
              lCancelada.Visible    := true;
           End;
           If (not tbNotas.FieldByName('Cancelada').AsBoolean) and (tbNotas.FieldByName('Nfe_Denegada').AsBoolean) then begin
              lCancelada.Text    := '[ DENEGADO USO ]';
              lCancelada.Font.Color := $000080FF;
              lCancelada.Reset;
              lCancelada.Visible := true;
           End;
           Rodape.PrintOnLastPage := DANFE_Reimpressao.PageCount = 1;
           Rodape.PrintOnLastPage := DANFE_Reimpressao.PageCount = 1;
           Rodape.Visible         := DANFE_Reimpressao.PageNo    = 1;
      End;
end;

procedure TImpressao_DANFE.ppDetailBand2BeforePrint(Sender: TObject);
begin
      lItem_CST.Caption := '';
      lItem_CST.Caption := Trim(tbItens.FieldByName('CodigoTrib_TabA').AsString)+Trim(tbItens.FieldByName('CodigoTrib_TabB').AsString);
      If Dados.ConfiguracaoNFE_DANFE_CodigoProduto.AsString = 'I' then begin
         lCodigo.DataField := 'Codigo_Mercadoria'
      end else begin
         If Trim(tbItens.FieldByName('Codigo_Fabricante').AsString) = '' then
            lCodigo.DataField := 'Codigo_Mercadoria'
         else
            lCodigo.DataField := 'Codigo_Fabricante';
      End;

      with Dados do begin
           TipoNota.Locate('Codigo', tbNotas.FieldByName('Tipo_Nota').AsInteger, [loCaseInsensitive]);
           cAFRMM.Visible := TipoNotaVisiveis_AFRMM.AsBoolean;
      end;
end;

procedure TImpressao_DANFE.tbNotasAfterScroll(DataSet: TDataSet);
begin
      With Dados, dmFiscal do begin
           tbItens.SQL.Clear;
           tbItens.SQL.Add('SELECT Nota,');
           tbItens.SQL.Add('       Data,');
           tbItens.SQL.Add('       Codigo_Mercadoria,');
           tbItens.SQL.Add('       Codigo_Fabricante,');
           tbItens.SQL.Add('       CASE WHEN (Total_Impostos > 0) AND (Valor_Total > 0) THEN');
           tbItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))+ CHAR(13)+CHAR(13)+''                              TRIBUTOS : R$ ''+ CONVERT(VARCHAR, CAST(Total_Impostos AS money),-1) +');
           tbItens.SQL.Add('                 ''  (''+CONVERT(VARCHAR, CAST( ROUND((Total_Impostos/Valor_Total)*100, 2) AS money),-1)+''%)'' ');
           tbItens.SQL.Add('       ELSE');
           tbItens.SQL.Add('            CAST(Descricao_Mercadoria AS VARCHAR(5000))');
           tbItens.SQL.Add('       END AS Descricao_Mercadoria,');
           tbItens.SQL.Add('       NCM,');
           tbItens.SQL.Add('       Unidade_Medida,');
           tbItens.SQL.Add('       CodigoTrib_TabA,');
           tbItens.SQL.Add('       CodigoTrib_TabB,');
           tbItens.SQL.Add('       CSTIPI,');
           tbItens.SQL.Add('       CSTPIS,');
           tbItens.SQL.Add('       CSTCOFINS,');
           tbItens.SQL.Add('       Quantidade,');
           tbItens.SQL.Add('       Valor_Unitario,');
           tbItens.SQL.Add('       Valor_Total,');
           tbItens.SQL.Add('       Aliquota_IPI,');
           tbItens.SQL.Add('       Valor_IPI,');
           tbItens.SQL.Add('       Total_IPI,');
           tbItens.SQL.Add('       Aliquota_ICMSOper,');
           tbItens.SQL.Add('       Valor_BCICMSOper,');
           tbItens.SQL.Add('       Valor_ICMSOper,');
           tbItens.SQL.Add('       Valor_BCICMSSub,');
           tbItens.SQL.Add('       Aliquota_ICMSSub,');
           tbItens.SQL.Add('       Valor_ICMSSub,');
           tbItens.SQL.Add('       Aliquota_PIS,');
           tbItens.SQL.Add('       Valor_PIS,');
           tbItens.SQL.Add('       Aliquota_COFINS,');
           tbItens.SQL.Add('       Valor_COFINS,');
           tbItens.SQL.Add('       Total_Item,');
           tbItens.SQL.Add('       Total_Impostos');
           tbItens.SQL.Add('FROM   NotasItens');
           tbItens.SQL.Add('WHERE  (Nota = :pNota) AND (Data = :pData)');
           tbItens.SQL.Add('ORDER  BY Item');
           tbItens.ParamByName('pNota').AsInteger := tbNotasNumero.Value;
           tbItens.ParamByName('pData').AsDate    := tbNotasData_Emissao.AsDateTime;
           //tbItens.SQL.SaveToFile('c:\temp\Reimpressao_DANFE_Itens.sql');
           tbItens.Open;

           Fatura.SQL.Clear;
           Fatura.SQL.Add('SELECT * FROM Fatura WHERE(Nota = :pNota) AND (Data_Emissao = :pDataEmissao) AND (Origem_Pedido = 1)');
           Fatura.ParamByName('pNota').AsInteger     := tbNotasNumero.AsInteger;
           Fatura.ParamByName('pDataEmissao').AsDate := tbNotasData_Emissao.AsDateTime;
           Fatura.Open;

           Duplicatas.SQL.Clear;
           Duplicatas.SQL.Add('SELECT * FROM Duplicatas WHERE (Fatura = :pFatura) AND (Data_Emissao = :pDataEmissao) ORDER BY Numero');
           Duplicatas.ParamByName('pFatura').AsInteger   := FaturaNota.Value;
           Duplicatas.ParamByName('pDataEmissao').AsDate := FaturaData_Emissao.Value;
           Duplicatas.Open;

           // Zera os valores do labels.
           lNumDupl1.Caption    := '';
           lDataDupl1.Caption   := '';
           lValorDupl1.Caption  := '';
           lNumDupl2.Caption    := '';
           lDataDupl2.Caption   := '';
           lValorDupl2.Caption  := '';
           lNumDupl3.Caption    := '';
           lDataDupl3.Caption   := '';
           lValorDupl3.Caption  := '';
           lNumDupl4.Caption    := '';
           lDataDupl4.Caption   := '';
           lValorDupl4.Caption  := '';
           lNumDupl5.Caption    := '';
           lDataDupl5.Caption   := '';
           lValorDupl5.Caption  := '';
           lNumDupl6.Caption    := '';
           lDataDupl6.Caption   := '';
           lValorDupl6.Caption  := '';
           lNumDupl7.Caption    := '';
           lDataDupl7.Caption   := '';
           lValorDupl7.Caption  := '';
           lNumDupl8.Caption    := '';
           lDataDupl8.Caption   := '';
           lValorDupl8.Caption  := '';
           lNumDupl9.Caption    := '';
           lDataDupl9.Caption   := '';
           lValorDupl9.Caption  := '';
           lNumDupl10.Caption   := '';
           lDataDupl10.Caption  := '';
           lValorDupl10.Caption := '';
           lNumDupl11.Caption   := '';
           lDataDupl11.Caption  := '';
           lValorDupl11.Caption := '';
           lNumDupl12.Caption   := '';
           lDataDupl12.Caption  := '';
           lValorDupl12.Caption := '';
      End;
end;

procedure TImpressao_DANFE.bPesquisarClick(Sender: TObject);
Var
    mPesquisa : String;
begin
      mPesquisa := InputBox('Pesquisar','Nº da Nota:', mPesquisa);
      If dmFiscal.Notas.Locate('Numero', mPesquisa, [loCaseInsensitive]) = False then begin
         ShowMessage('Nenhuma nota fiscal encontrada com o número informado!');
      end else begin
         Grade.SelectedRows.CurrentRowSelected := true;
      End;
      Grade.SetFocus;
end;

procedure TImpressao_DANFE.bFiltrarClick(Sender: TObject);
Var
    mRamos : String;
    i: integer;
begin
      With dmFiscal, Dados do begin
           with Notas do begin
                sql.Clear;
                sql.Add('select * ');
                sql.add('from NotasFiscais');
                sql.Add('where(Numero is not null)');
                if cTipo.ItemIndex < 2 then begin
                   sql.Add('and Saida_Entrada = :pTipo');
                   ParamByName('pTipo').AsInteger := cTipo.ItemIndex;
                end;
                If (Trim(RemoveCaracter('/','',cDataIni.Text)) <> '') and (Trim(RemoveCaracter('/','',cDataFim.Text)) <> '') then begin
                   SQL.Add('and Data_Emissao between :pDataIni and :pDataFim');
                   ParamByName('pDataIni').AsDate := cDataIni.Date;
                   ParamByName('pDataFim').AsDate := cDataFim.Date;
                End;
                If Trim(cProcesso.DisplayValue) <> '' then begin
                   sql.Add('and Processo = :pProcesso');
                   parambyname('pProcesso').AsString := cProcesso.DisplayValue;
                End;
                If cPessoa.ItemIndex <> 2 then begin
                   sql.Add('and isnull(Destinatario_Juridica, 0) = :pPessoa');
                   parambyname('pPessoa').AsInteger := cPessoa.ItemIndex;
                End;
                If Trim(cCFOP.DisplayValue) <> '' then begin
                   sql.Add('and Natureza_Codigo = :pNatureza');
                   parambyname('pNatureza').AsString := Natureza.FieldByName('Codigo').AsString;
                End;
                If Trim(cEstado.DisplayValue) <> '' then begin
                   sql.Add('and Estado = :pEstado');
                   parambyname('pEstado').AsString := Estados.FieldByName('Codigo').AsString;
                End;
                If Trim(cTipoNota.DisplayValue) <> '' then begin
                   sql.Add('and Tipo_Nota = :pTipoNota');
                   parambyname('pTipoNota').AsInteger := TipoNota.FieldByName('Codigo').AsInteger;
                End;
                If Trim(cRefCliente.text) <> '' then begin
                   sql.Add('and (select Referencia_Cliente from ProcessosDocumentos pd where pd.Processo = NotasFiscais.Processo) = :pRef'); 
                   parambyname('pRef').asstring := cRefCliente.Text;
                End;

                mRamos := '';
                For i := 0 to cRamoAtividade.Items.Count-1 do begin
                    If cRamoAtividade.Checked[i] then begin
                       Dados.RamoAtividade.Locate('Descricao', cRamoAtividade.Items[i], [loCaseInsensitive]);
                       mRamos := mRamos + Dados.RamoAtividadeCodigo.AsString + ',';
                    End;
                End;
                mRamos := '('+Copy(mRamos, 1, Length(mRamos)-1)+')';
                If mRamos <> '()' then begin
                   If cTipo.ItemIndex > 0 then begin
                      sql.Add('and (select Ramo_Atividade from Clientes where Codigo = Cliente_Codigo) in'+mramos);
                   End;
                   If cTipo.ItemIndex <> 1 then begin
                      sql.Add('AND (select Ramo_Atividade from Fornecedores where Codigo = Fornecedor_Codigo) in'+mramos);
                   End;
                End;
                if cAgruparFilial.Checked then begin 
                   if Trim(cBeneficiario.DisplayValue) <> '' then begin
                      sql.Add('and substring(Destinatario_CNPJ_CPF, 1, 8) = :pRaiz');
                      ParamByName('pRaiz').Asstring := copy(tBeneficiarioCNPJ.AsString, 1, 8);
                   end;
                end else begin
                   if Trim(cBeneficiario.DisplayValue) <> '' then begin
                      if tBeneficiario.FieldByName('Tipo').AsString = 'F' then begin
                         sql.Add('and Fornecedor_Codigo = :pCodigo');
                         parambyname('pCodigo').AsInteger := tBeneficiario.FieldByName('Codigo_Fornecedor').AsInteger;
                      end;
                      if tBeneficiario.FieldByName('Tipo').AsString = 'C' then begin
                         sql.Add('and Cliente_Codigo = :pCodigo');
                         parambyname('pCodigo').AsInteger := tBeneficiario.FieldByName('Codigo_Cliente').AsInteger;
                      end;
                   end;
                end;
                sql.Add('order by Data_Emissao desc, Numero desc ');
                sql.SaveToFile('c:\temp\Impressao_DANFE.sql');
                Open;
           end;
      end;
end;

procedure TImpressao_DANFE.Button1Click(Sender: TObject);
Var
    i: integer;
begin
      cDataIni.Clear;
      cDataFim.Clear;
      cTipo.ItemIndex            := 2;
      cProcesso.DisplayValue     := '';
      cBeneficiario.DisplayValue := '';
      cPessoa.ItemIndex          := 2;
      cEstado.DisplayValue       := '';
      cCFOP.DisplayValue         := '';
      cTipoNota.DisplayValue     := '';
      cRefCliente.Text           := '';

      For i := 0 to cRamoAtividade.Items.Count-1 do begin
          cRamoAtividade.Checked[i] := false;
      End;
      
      bFiltrar.Click;
end;

procedure TImpressao_DANFE.Button2Click(Sender: TObject);
var
   l:Integer;
begin
      with Grade.DataSource.DataSet do begin
           DisableControls;
           Screen.Cursor := crSQLWait;
           First;
           for l := 0 to pred(RecordCount) do begin
               Grade.SelectedRows.CurrentRowSelected := True;
               Next;
           end;
           Screen.Cursor := crDefault;
           EnableControls;
      end;
      Grade.SelectedRows.Refresh;
end;

procedure TImpressao_DANFE.Button3Click(Sender: TObject);
begin
      Grade.SelectedRows.Clear;
end;

procedure TImpressao_DANFE.DANFE_ReimpressaoBeforePrint(Sender: TObject);
begin
      If FileExists(Dados.EmpresasLogo.Value) then begin
         iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
         iLogo.Width := Dados.EmpresasLogomarca_Largura.Value;
         iLogo.Left  := (lQuadroEmpresa.Width - Dados.EmpresasLogomarca_Largura.Value)/2;
      End;
      With Dados do begin
           TipoNota.Locate('Codigo', tbNotas.FieldByName('Tipo_Nota').AsInteger, [loCaseInsensitive]);
           lII.Visible      := tbNotas.FieldByName('Saida_Entrada').asinteger = 0;
      End;
end;

// Envia informações para o excel.
procedure TImpressao_DANFE.ExportaEXCEL;
var
     mPlanilha: Variant;
     mLinha
    ,mLinhaItem
    ,mLinhaNav
    ,mSel: Integer;
     mTexto
    ,mListaDI
    ,mListaNavio: WideString;
begin
     With dmFiscal, Dados do begin
          Notas.DisableControls;
          tbItens.DisableControls;
          tNavios.DisableControls;
          
          Janela_Processamento := TJanela_Processamento.Create(Self);
          Janela_Processamento.Progresso.Position := 0;
          Janela_Processamento.Progresso.Max      := Grade.SelectedRows.Count;
          Janela_Processamento.lProcesso.Caption  := 'Enviando dados para o EXCEL...';
          Janela_Processamento.Show;

          mPlanilha := CreateOleObject('Excel.Application');

          mPlanilha.WorkBooks.add(1);
          mPlanilha.Workbooks[1].Sheets.Add;
          mPlanilha.Workbooks[1].Sheets.Add;
          mPlanilha.Workbooks[1].WorkSheets[1].Name := 'DADOS DA NOTA';
          mPlanilha.Workbooks[1].WorkSheets[2].Name := 'ITENS DA NOTA';
          mPlanilha.Workbooks[1].WorkSheets[3].Name := 'NAVIOS DA NOTA';

          mPlanilha.Visible                             := false;
          mPlanilha.Range['A3','AY3'].Interior.Color    := RGB(255, 255, 140);
          mPlanilha.Range['A3','AY3'].Interior.Pattern  := 1;
          mPlanilha.Range['A3','AY3'].Font.Bold         := true;
          mPlanilha.Range['A3','AY3'].Font.Color        := clBlack;
          mPlanilha.Range['A3','AY3'].Borders.LineStyle := 1; //xlContinuous;
          mPlanilha.Range['A3','AY3'].Borders.Weight    := 2; //xlThin;
          mPlanilha.Range['A3','AY3'].Borders.Color     := RGB(0,0,0);

          // Cabeçalho da Nota Fiscals.
          mPlanilha.Cells[3,01] := 'ENTRADA/SAÍDA';               // A.
          mPlanilha.Cells[3,02] := 'NOTA Nº';                     // B.
          mPlanilha.Cells[3,03] := 'CHAVE';                       // C.
          mPlanilha.Cells[3,04] := 'PROTOCOLO';                   // D.
          mPlanilha.Cells[3,05] := 'DATA PROT';                   // E.
          mPlanilha.Cells[3,06] := 'EMISSÃO';                     // F.
          mPlanilha.Cells[3,07] := 'ENT/SAI';                     // G.
          mPlanilha.Cells[3,08] := 'MODELO';                      // H.
          mPlanilha.Cells[3,09] := 'SÉRIE';                       // I.
          mPlanilha.Cells[3,10] := 'CFOP';                        // J.
          mPlanilha.Cells[3,11] := 'INSCRIÇÃO ESTADUAL';          // K.
          mPlanilha.Cells[3,12] := 'CNPJ';                        // L.
          mPlanilha.Cells[3,13] := 'DESTINATARIO NOME';           // M.
          mPlanilha.Cells[3,14] := 'DESTINATARIO CNPJ';           // N.
          mPlanilha.Cells[3,15] := 'DESTINATARIO ENDEREÇO';       // O.
          mPlanilha.Cells[3,16] := 'DESTINATARIO BAIRRO';         // P.
          mPlanilha.Cells[3,17] := 'DESTINATARIO CEP';            // Q.
          mPlanilha.Cells[3,18] := 'DESTINATARIO MUNICÍPIO';      // R.
          mPlanilha.Cells[3,19] := 'DESTINATARIO FONE/FAX';       // S.
          mPlanilha.Cells[3,20] := 'DESTINATARIO ESTADO';         // T.
          mPlanilha.Cells[3,21] := 'DESTINATARIO I.E';            // U.
          mPlanilha.Cells[3,22] := 'B.C.ICMS';                    // V.
          mPlanilha.Cells[3,23] := 'VALOR ICMS';                  // W.
          mPlanilha.Cells[3,24] := 'B.C.ICMS ST';                 // X.
          mPlanilha.Cells[3,25] := 'VALOR ICMS ST';               // Y.
          mPlanilha.Cells[3,26] := 'TOTAL PRODUTOS';              // Z.
          mPlanilha.Cells[3,27] := 'VALOR FRETE';                 // AA.
          mPlanilha.Cells[3,28] := 'TOTAL SEGURO';                // AB.
          mPlanilha.Cells[3,29] := 'VALOR DESCONTO';              // AC.
          mPlanilha.Cells[3,30] := 'VALOR DESPESAS';              // AD.
          mPlanilha.Cells[3,31] := 'VALOR IPI';                   // AE.
          mPlanilha.Cells[3,32] := 'TOTAL DA NOTA';               // AF.
          mPlanilha.Cells[3,33] := 'FRETE P/CONTA';               // AG.
          mPlanilha.Cells[3,34] := 'TRANSPORTADOR NOME';          // AH.
          mPlanilha.Cells[3,35] := 'TRANSPORTADOR CNPJ';          // AI.
          mPlanilha.Cells[3,36] := 'TRANSPORTADOR ENDEREÇO';      // AJ.
          mPlanilha.Cells[3,37] := 'TRANSPORTADOR MUNICÍPIO';     // AK.
          mPlanilha.Cells[3,38] := 'TRANSPORTADOR ESTADO';        // AL.
          mPlanilha.Cells[3,39] := 'TRANSPORTADOR I.E';           // AM.
          mPlanilha.Cells[3,40] := 'VOLUMES';                     // AN.
          mPlanilha.Cells[3,41] := 'ESPÉCIE';                     // AO.
          mPlanilha.Cells[3,42] := 'MARCA';                       // AP.
          mPlanilha.Cells[3,43] := 'NUMERAÇÃO';                   // AQ.
          mPlanilha.Cells[3,44] := 'PESO BRUTO';                  // AR.
          mPlanilha.Cells[3,45] := 'PESO LÍQUIDO';                // AS.
          mPlanilha.Cells[3,46] := 'INFORMAÇÕES COMPLEMENTARES';  // AT.
          mPlanilha.Cells[3,47] := 'PROTOCOLO CANCELAMENTO';      // AU.
          mPlanilha.Cells[3,48] := 'DATA CANCELAMENTO';           // AV.
          mPlanilha.Cells[3,49] := 'Nº DI';                       // AW.Número da DI.
          mPlanilha.Cells[3,50] := 'CODIGO CFOP';                 // AX.Codigo CFOP.
          mPlanilha.Cells[3,51] := 'NAVIO';                       // Nome dos Nabios;

          mPlanilha.Range['A3','AY3'].HorizontalAlignment := 3;
          mPlanilha.Range['A3','AY3'].VerticalAlignment   := 2;
          mPlanilha.Range['A3','AY3'].Font.Size           := 8;

          // Cabeçalho dos itens.
          mPlanilha.WorkSheets[2].Activate;

          mPlanilha.Range['A1','AD1'].Interior.Color    := RGB(255, 255, 140);
          mPlanilha.Range['A1','AD1'].Interior.Pattern  := 1;
          mPlanilha.Range['A1','AD1'].Font.Bold         := true;
          mPlanilha.Range['A1','AD1'].Font.Color        := clBlack;
          mPlanilha.Range['A1','AD1'].Borders.LineStyle := 1; //xlContinuous;
          mPlanilha.Range['A1','AD1'].Borders.Weight    := 2; //xlThin;
          mPlanilha.Range['A1','AD1'].Borders.Color     := RGB(0,0,0);

          mPlanilha.Cells[1,01] := 'Nº NOTA';                  // A.
          mPlanilha.Cells[1,02] := 'DATA NOTA';                // B.
          mPlanilha.Cells[1,03] := 'ITEM';                     // C.
          mPlanilha.Cells[1,04] := 'CODIGO MERCADORIA';        // D.
          mPlanilha.Cells[1,05] := 'CODIGO FABRICANTE';        // E.
          mPlanilha.Cells[1,06] := 'DESCRIÇÃO MERCADORIA';     // F.
          mPlanilha.Cells[1,07] := 'NCM';                      // G.
          mPlanilha.Cells[1,08] := 'UNIDADE';                  // H.
          mPlanilha.Cells[1,09] := 'QUANTIDADE';               // I.
          mPlanilha.Cells[1,10] := 'VLR UNITÁRIO';             // J.
          mPlanilha.Cells[1,11] := 'VLR TOTAL';                // K.
          mPlanilha.Cells[1,12] := 'IPI %';                    // L.
          mPlanilha.Cells[1,13] := 'TOTAL IPI';                // M.
          mPlanilha.Cells[1,14] := 'CST ICMS';                 // N.
          mPlanilha.Cells[1,15] := 'CST IPI';                  // O.
          mPlanilha.Cells[1,16] := 'CST PIS';                  // P.
          mPlanilha.Cells[1,17] := 'CST COFINS';               // Q.
          mPlanilha.Cells[1,18] := 'ICMS %';                   // R.
          mPlanilha.Cells[1,19] := 'VLR ICMS';                 // S.
          mPlanilha.Cells[1,20] := 'ICMS ST %';                // T.
          mPlanilha.Cells[1,21] := 'VLR ICMS ST';              // U.
          mPlanilha.Cells[1,22] := 'ICMS RED %';               // V.
          mPlanilha.Cells[1,23] := 'VLR ICMS RED';             // W.
          mPlanilha.Cells[1,24] := 'PIS %';                    // X.
          mPlanilha.Cells[1,25] := 'VLR PIS';                  // Y.
          mPlanilha.Cells[1,26] := 'COFINS %';                 // Z.
          mPlanilha.Cells[1,27] := 'VLR COFINS';               // AA.
          mPlanilha.Cells[1,28] := 'PESO LÍQUIDO';             // AB.
          mPlanilha.Cells[1,29] := 'PESO BRUTO';               // AC.
          mPlanilha.Cells[1,30] := 'CODIGO CFOP';              // AD.
          mPlanilha.Cells[1,31] := 'DI';                       // AE.

          // Navios.
          mPlanilha.WorkSheets[3].Activate;

          mPlanilha.Range['A1','K1'].Interior.Color    := RGB(255, 255, 140);
          mPlanilha.Range['A1','K1'].Interior.Pattern  := 1;
          mPlanilha.Range['A1','K1'].Font.Bold         := true;
          mPlanilha.Range['A1','K1'].Font.Color        := clBlack;
          mPlanilha.Range['A1','K1'].Borders.LineStyle := 1; //xlContinuous;
          mPlanilha.Range['A1','K1'].Borders.Weight    := 2; //xlThin;
          mPlanilha.Range['A1','K1'].Borders.Color     := RGB(0,0,0);

          mPlanilha.Cells[1,01] := 'Nº NOTA';                  // A.
          mPlanilha.Cells[1,02] := 'DATA NOTA';                // B.
          mPlanilha.Cells[1,03] := 'Nº NAVIO';                 // C.
          mPlanilha.Cells[1,04] := 'NOME DO NAVIO';            // D.
          mPlanilha.Cells[1,05] := 'Nº DA DI';                 // E.
          mPlanilha.Cells[1,06] := 'CÓDIGO ARMAZÉM ';          // F.
          mPlanilha.Cells[1,07] := 'NOME DO ARMAZÉM';          // G.
          mPlanilha.Cells[1,08] := 'Nº BL';                    // H.
          mPlanilha.Cells[1,09] := 'QUANTIDADE';               // I.
          mPlanilha.Cells[1,10] := 'NOTA DE REF';              // J.
          mPlanilha.Cells[1,11] := 'DATA NOTA DE REF';         // K.

          mPlanilha.WorkSheets[1].Activate;

          mLinha     := 4;
          mLinhaItem := 2;
          mLinhaNav  := 2;

          for mSel := 0 to Grade.SelectedRows.Count-1 do begin
              if Funcoes.Cancelado then begin 
                 Notas.EnableControls;
                 abort;
              end;
              {
              with tTemp do begin
                   sql.Clear;
                   sql.Add('select DI');
                   sql.add('      ,Navio = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = nin.Navio)');
                   sql.add('from NotasItensNavios nin');
                   sql.Add('where nin.Nota = :pNota');
                   sql.Add('and nin.Data_Emissao = :pData');
                   parambyname('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
                   parambyname('pData').value     := Notas.FieldByName('Data_Emissao').Value;
                   sql.SaveToFile('c:\temp\Reimpressao_Notas_Lista_DI.sql');
                   open;
                   first;
                   while not eof do begin
                         mListaDI    := mListaDI + formatmasktext('##/#######-#*;0', fieldByName('DI').AsString);
                         mListaNavio := mListaNavio + fieldByName('Navio').AsString+ '*';
                         next;
                   end;
                   mListaDI    := stringreplace(mListaDI   , '*', ' | ', [rfReplaceAll]);
                   mListaNavio := stringreplace(mListaNavio, '*', ' | ', [rfReplaceAll]);
              end;
              }
              mListaDI    := '';
              mListaNavio := '';
              with tTemp do begin
                   sql.Clear;
                   sql.Add('select Distinct DI');
                   sql.add('      ,Navio = (select Navio from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = nin.Navio)');
                   sql.add('from NotasItens nin');
                   sql.Add('where nin.Nota = :pNota');
                   sql.Add('and nin.Data = :pData');
                   parambyname('pNota').AsInteger := Notas.FieldByName('Numero').AsInteger;
                   parambyname('pData').value     := Notas.FieldByName('Data_Emissao').Value;
                   //sql.SaveToFile('c:\temp\Reimpressao_Notas_Lista_DI.sql');
                   open;
                   first;
                   while not eof do begin
                         mListaDI    := concat(mListaDI, formatmasktext('##/#######-#;0', fieldByName('DI').AsString), '|');
                         mListaNavio := mListaNavio + fieldByName('Navio').AsString+ '|';
                         next;
                   end;
                   mListaDI    := copy(mListaDI   , 1, length(mListaDI)   -1);
                   mListaNavio := copy(mListaNavio, 1, length(mListaNavio)-1);
              end;
              Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));

              mPlanilha.Range['A'+InttoStr(mLinha),'AV'+InttoStr(mLinha)].Font.Size := 8;

              Natureza.Locate('Codigo', Notas.FieldByName('Natureza_Codigo').AsString, [loCaseInsensitive]);
              Fornecedores.Locate('Codigo', Notas.FieldByName('Transportador_Codigo').AsInteger, [loCaseInsensitive]);

              mPlanilha.Cells[mLinha,01] := Notas.FieldByName('Saida_Entrada').AsInteger;
              mPlanilha.Cells[mLinha,02] := Notas.FieldByName('Numero').AsInteger;
              mPlanilha.Cells[mLinha,03] := ''''+Notas.FieldByName('NFE_CNF').AsString;
              mPlanilha.Cells[mLinha,04] := ''''+Notas.FieldByName('NFE_Protocolo').AsString;
              mPlanilha.Cells[mLinha,05] := Notas.FieldByName('NFE_DataProtocolo').Value;
              mPlanilha.Cells[mLinha,06] := Notas.FieldByName('Data_Emissao').Value;
              mPlanilha.Cells[mLinha,07] := Notas.FieldByName('Data_EntradaSaida').Value;
              mPlanilha.Cells[mLinha,08] := Notas.FieldByName('Modelo').AsString;
              mPlanilha.Cells[mLinha,09] := Notas.FieldByName('Serie').AsString;
              mPlanilha.Cells[mLinha,10] := Natureza.FieldByName('Descricao_NF').AsString;
              mPlanilha.Cells[mLinha,11] := ''''+Empresas.FieldByName('IE').Value;
              mPlanilha.Cells[mLinha,12] := ''''+Empresas.FieldByName('CNPJ').Value;
              mPlanilha.Cells[mLinha,13] := Notas.FieldByName('Destinatario_Nome').AsString;
              mPlanilha.Cells[mLinha,14] := ''''+Notas.FieldByName('Destinatario_CNPJ_CPF').Value;
              mPlanilha.Cells[mLinha,15] := Trim(Notas.FieldByName('Destinatario_Rua').AsString) + ', Nº '+Trim(Notas.FieldByName('Destinatario_RuaNumero').AsString)+', '+Trim(Notas.FieldByName('Destinatario_Complemento').AsString);
              mPlanilha.Cells[mLinha,16] := Notas.FieldByName('Destinatario_Bairro').AsString;
              mPlanilha.Cells[mLinha,17] := ''''+Notas.FieldByName('Destinatario_CEP').Value;
              mPlanilha.Cells[mLinha,18] := Notas.FieldByName('Destinatario_Municipio').Value;
              mPlanilha.Cells[mLinha,19] := ''''+Notas.FieldByName('Destinatario_Telefone1').Value;
              mPlanilha.Cells[mLinha,20] := Notas.FieldByName('Destinatario_Estado').AsString;
              mPlanilha.Cells[mLinha,21] := ''''+Notas.FieldByName('Destinatario_IE').Value;
              mPlanilha.Cells[mLinha,22] := Notas.FieldByName('BCICMS').AsCurrency;
              mPlanilha.Cells[mLinha,23] := Notas.FieldByName('Valor_ICMS').AsCurrency;
              mPlanilha.Cells[mLinha,24] := Notas.FieldByName('BCICMS_Substitutivo').AsCurrency;
              mPlanilha.Cells[mLinha,25] := Notas.FieldByName('ValorICMS_Substitutivo').AsCurrency;
              mPlanilha.Cells[mLinha,26] := Notas.FieldByName('Valor_TotalProdutos').AsCurrency;
              mPlanilha.Cells[mLinha,27] := Notas.FieldByName('Total_Frete').AsCurrency;
              mPlanilha.Cells[mLinha,28] := Notas.FieldByName('Valor_Seguro').AsCurrency;
              mPlanilha.Cells[mLinha,29] := Notas.FieldByName('Total_Descontos').AsCurrency;
              mPlanilha.Cells[mLinha,30] := Notas.FieldByName('Valor_OutrasDespesas').AsCurrency;
              mPlanilha.Cells[mLinha,31] := Notas.FieldByName('Valor_TotalIPI').AsCurrency;
              mPlanilha.Cells[mLinha,32] := Notas.FieldByName('Valor_TotalNota').AsCurrency;
              mPlanilha.Cells[mLinha,33] := Notas.FieldByName('Modalidade_Frete').Value;
              mPlanilha.Cells[mLinha,34] := Fornecedores.FieldByName('Nome').AsString;
              mPlanilha.Cells[mLinha,35] := ''''+Fornecedores.FieldByName('CNPJ').AsString;
              mPlanilha.Cells[mLinha,36] := Trim(Fornecedores.FieldByName('Rua').AsString) + ', Nº '+Trim(Fornecedores.FieldByName('Rua_Numero').AsString)+', '+Trim(Fornecedores.FieldByName('Complemento').AsString);
              mPlanilha.Cells[mLinha,37] := Fornecedores.FieldByName('Municipio').AsString;
              mPlanilha.Cells[mLinha,38] := Fornecedores.FieldByName('Estado').AsString;
              mPlanilha.Cells[mLinha,39] := ''''+Fornecedores.FieldByName('Inscricao_Estadual').Value;
              mPlanilha.Cells[mLinha,40] := Notas.FieldByName('Volume_Quantidade').Value;
              mPlanilha.Cells[mLinha,41] := Notas.FieldByName('Volume_Especie').AsString;
              mPlanilha.Cells[mLinha,42] := Notas.FieldByName('Volume_Marca').AsString;
              mPlanilha.Cells[mLinha,43] := Notas.FieldByName('Volume_Numero').AsString;
              mPlanilha.Cells[mLinha,44] := Notas.FieldByName('Volume_PesoBruto').AsFloat;
              mPlanilha.Cells[mLinha,45] := Notas.FieldByName('Volume_PesoLiquido').AsFloat;

              mTexto := RemoveCaracter(#13, ' ', Notas.FieldByName('Inf_Complementares').AsString+Notas.FieldByName('Inf_Complementares2').AsString);
              mTexto := RemoveCaracter(#10, ' ', mTexto);
              mTexto := RemoveCaracter(#12, ' ', mTexto);
              mTexto := RemoveCaracter(#9 , ' ', mTexto);
              mPlanilha.Cells[mLinha,46] := mTexto;
              mPlanilha.Cells[mLinha,47] := ''''+Notas.FieldByName('Protocolo_Cancelamento').AsString;
              mPlanilha.Cells[mLinha,48] := Notas.FieldByName('Data_Cancelamento').Value;
              mPlanilha.Cells[mLinha,49] := mListaDI;
              mPlanilha.Cells[mLinha,50] := Notas.FieldByName('Natureza_Codigo').asstring;
              mPlanilha.Cells[mLinha,51] := mListaNavio;

              mPlanilha.Range['V'+InttoStr(mLinha),'AF'+InttoStr(mLinha)].NumberFormat  := '#.##0,00_);(#.##0,00)';
              mPlanilha.Range['AR'+InttoStr(mLinha),'AS'+InttoStr(mLinha)].NumberFormat := '#.##0,000_);(#.##0,000)';

              // Itens da Nota fiscal.
              tbItens.SQL.Clear;
              tbItens.SQL.Add('SELECT * FROM NotasItens WHERE (Nota = :pNota) AND (Data = :pData) ORDER BY Item');
              tbItens.ParamByName('pNota').AsInteger := NotasNumero.Value;
              tbItens.ParamByName('pData').AsDate    := NotasData_Emissao.AsDateTime;
              tbItens.Open;
              tbItens.First;
              mPlanilha.WorkSheets[2].Activate;
              mPlanilha.Range['A1','AD1'].Font.Size := 8;
              While not tbItens.Eof do begin
                    mPlanilha.Range['A'+InttoStr(mLinhaItem),'AU'+InttoStr(mLinhaItem)].Font.Size  := 8;
                    mPlanilha.Range['F'+InttoStr(mLinha),'F'+InttoStr(mLinha)].ColumnWidth         := 50;
                    mPlanilha.Range['F'+InttoStr(mLinha),'F'+InttoStr(mLinha)].WrapText            := true;
                    mPlanilha.Range['A'+InttoStr(mLinha),'B'+InttoStr(mLinha)].VerticalAlignment   := 1;
                    mPlanilha.Range['A'+InttoStr(mLinha),'A'+InttoStr(mLinha)].HorizontalAlignment := 3;
                    mPlanilha.Range['A'+InttoStr(mLinha),'G'+InttoStr(mLinha)].Font.Size           := 10;

                    mPlanilha.Cells[mLinhaItem,01] := tbItens.FieldByName('Nota').AsInteger;
                    mPlanilha.Cells[mLinhaItem,02] := tbItens.FieldByName('Data').Value;
                    mPlanilha.Cells[mLinhaItem,03] := tbItens.FieldByName('Item').AsInteger;
                    mPlanilha.Cells[mLinhaItem,04] := tbItens.FieldByName('Codigo_Mercadoria').Value;
                    mPlanilha.Cells[mLinhaItem,05] := tbItens.FieldByName('Codigo_Fabricante').AsString;
                    mPlanilha.Cells[mLinhaItem,06] := tbItens.FieldByName('Descricao_Mercadoria').AsString;
                    mPlanilha.Cells[mLinhaItem,07] := ''''+tbItens.FieldByName('NCM').AsString;
                    mPlanilha.Cells[mLinhaItem,08] := tbItens.FieldByName('Unidade_Medida').AsString;
                    mPlanilha.Cells[mLinhaItem,09] := tbItens.FieldByName('Quantidade').AsFloat;
                    mPlanilha.Cells[mLinhaItem,10] := tbItens.FieldByName('Valor_Unitario').AsCurrency;
                    mPlanilha.Cells[mLinhaItem,11] := tbItens.FieldByName('Valor_Total').AsCurrency;
                    mPlanilha.Cells[mLinhaItem,12] := tbItens.FieldByName('Aliquota_IPI').AsFloat;
                    mPlanilha.Cells[mLinhaItem,13] := tbItens.FieldByName('Total_IPI').AsCurrency;
                    mPlanilha.Cells[mLinhaItem,14] := Trim(tbItens.FieldByName('CodigoTrib_TabA').AsString)+Trim(tbItens.FieldByName('CodigoTrib_TabB').AsString);
                    mPlanilha.Cells[mLinhaItem,15] := tbItens.FieldByName('CSTIPI').AsString;
                    mPlanilha.Cells[mLinhaItem,16] := tbItens.FieldByName('CSTPIS').AsString;
                    mPlanilha.Cells[mLinhaItem,17] := tbItens.FieldByName('CSTCOFINS').AsString;
                    mPlanilha.Cells[mLinhaItem,18] := tbItens.FieldByName('Aliquota_ICMSOper').AsFloat;
                    mPlanilha.Cells[mLinhaItem,19] := tbItens.FieldByName('Valor_ICMSOper').AsCurrency;
                    mPlanilha.Cells[mLinhaItem,20] := tbItens.FieldByName('Aliquota_ICMSSub').AsFloat;
                    mPlanilha.Cells[mLinhaItem,21] := tbItens.FieldByName('Valor_ICMSSub').AsCurrency;
                    mPlanilha.Cells[mLinhaItem,22] := tbItens.FieldByName('Aliquota_ICMSReducao').AsFloat;
                    mPlanilha.Cells[mLinhaItem,23] := tbItens.FieldByName('Valor_ICMSReducao').AsCurrency;
                    mPlanilha.Cells[mLinhaItem,24] := tbItens.FieldByName('Aliquota_PIS').AsFloat;
                    mPlanilha.Cells[mLinhaItem,25] := tbItens.FieldByName('Valor_PIS').AsCurrency;
                    mPlanilha.Cells[mLinhaItem,26] := tbItens.FieldByName('Aliquota_COFINS').AsFloat;
                    mPlanilha.Cells[mLinhaItem,27] := tbItens.FieldByName('Valor_COFINS').AsCurrency;
                    mPlanilha.Cells[mLinhaItem,28] := tbItens.FieldByName('Peso_Liquido').AsFloat * tbItens.FieldByName('Quantidade').AsFloat;
                    mPlanilha.Cells[mLinhaItem,29] := tbItens.FieldByName('Peso_Bruto').AsFloat * tbItens.FieldByName('Quantidade').AsFloat;
                    mPlanilha.Cells[mLinhaItem,30] := tbItens.FieldByName('Natureza_Codigo').asstring;
                    mPlanilha.Cells[mLinhaItem,31] := formatmasktext('##/#######-#;0', tbItens.fieldByName('DI').AsString);

                    mPlanilha.Range['I'+InttoStr(mLinhaItem) ,'I' +InttoStr(mLinhaItem)].NumberFormat := '#.##0,000_);(#.##0,000)';
                    mPlanilha.Range['J'+InttoStr(mLinhaItem) ,'M' +InttoStr(mLinhaItem)].NumberFormat := '#.##0,000_);(#.##0,000)';
                    mPlanilha.Range['R'+InttoStr(mLinhaItem) ,'AA'+InttoStr(mLinhaItem)].NumberFormat := '#.##0,00_);(#.##0,00)';
                    mPlanilha.Range['AB'+InttoStr(mLinhaItem),'AC'+InttoStr(mLinhaItem)].NumberFormat := '#.##0,000_);(#.##0,000)';

                    Inc(mLinhaItem);
                    tbItens.Next;
              End;
              // Navios dos itens da nota.
              with tNavios do begin
                   sql.clear;
                   sql.add('select Nota');
                   sql.add('      ,Data_Emissao');
                   sql.add('      ,Navio');
                   sql.Add('      ,Navio_Nome = (select cn.Navio from Cybersoft_Cadastros.dbo.ControleNavios cn where cn.Ordem = nin.Navio)');
                   sql.add('      ,DI');
                   sql.add('      ,Armazem');
                   sql.Add('      ,Armazem_Nome = (select Nome from Fornecedores fr where fr.Codigo = nin.Armazem)');
                   sql.add('      ,BL');
                   sql.add('      ,Quantidade');
                   sql.add('      ,Nota_Referencia');
                   sql.add('      ,Data_Referencia');
                   sql.add('from NotasItensNavios nin');
                   sql.add('where Nota = :pNota');
                   sql.add('and Data_Emissao = :pData');
                   sql.add('order by Nota');
                   parambyname('pNota').asinteger := notasnumero.value;
                   parambyname('pData').asdate    := notasdata_emissao.asdatetime;
                   open;
                   first;

                   mPlanilha.WorkSheets[3].Activate;
                   mPlanilha.Range['A1','K1'].Font.Size   := 8;
                   mPlanilha.Range['A1','K1'].ColumnWidth := 13;
                   While not Eof do begin
                         mPlanilha.Range['A'+InttoStr(mLinhaNav),'K'+InttoStr(mLinhaNav)].Font.Size           := 8;
                         mPlanilha.Range['D'+InttoStr(mLinhaNav),'D'+InttoStr(mLinhaNav)].ColumnWidth         := 50;
                         mPlanilha.Range['G'+InttoStr(mLinhaNav),'G'+InttoStr(mLinhaNav)].ColumnWidth         := 50;
                         mPlanilha.Range['A'+InttoStr(mLinhaNav),'B'+InttoStr(mLinhaNav)].VerticalAlignment   := 1;
                         mPlanilha.Range['A'+InttoStr(mLinhaNav),'A'+InttoStr(mLinhaNav)].HorizontalAlignment := 3;
                         mPlanilha.Range['A'+InttoStr(mLinhaNav),'G'+InttoStr(mLinhaNav)].Font.Size           := 8;

                         mPlanilha.Cells[mLinhaNav,01] := FieldByName('Nota').AsInteger;
                         mPlanilha.Cells[mLinhaNav,02] := FieldByName('Data_Emissao').Value;
                         mPlanilha.Cells[mLinhaNav,03] := FieldByName('Navio').value;
                         mPlanilha.Cells[mLinhaNav,04] := FieldByName('Navio_Nome').asstring;
                         mPlanilha.Cells[mLinhaNav,05] := FieldByName('DI').AsString;
                         mPlanilha.Cells[mLinhaNav,06] := FieldByName('Armazem').value;
                         mPlanilha.Cells[mLinhaNav,07] := FieldByName('Armazem_Nome').AsString;
                         mPlanilha.Cells[mLinhaNav,08] := FieldByName('Bl').AsString;
                         mPlanilha.Cells[mLinhaNav,09] := FieldByName('Quantidade').value;
                         mPlanilha.Cells[mLinhaNav,10] := FieldByName('Nota_Referencia').value;
                         mPlanilha.Cells[mLinhaNav,11] := FieldByName('Data_Referencia').value;
                         mPlanilha.Range['I'+InttoStr(mLinhaNav) ,'I' +InttoStr(mLinhaNav)].NumberFormat := '#.##0,000_);(#.##0,000)';
                         inc(mLinhaNav, 1);

                         next;
                   end;
              end;
             
              mPlanilha.WorkSheets[1].Activate;

              Inc(mLinha);
              Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
              Application.ProcessMessages;
          End;

          //Fecha o Excel
          If Funcoes.Cancelado = true then begin
             Abort;
             mPlanilha.Free;
             mPlanilha.Destroy;
          End;

          mPlanilha.WorkSheets[1].Columns.Autofit;
          mPlanilha.WorkSheets[1].Rows.Autofit;
          mPlanilha.WorkSheets[2].Columns.Autofit;
          mPlanilha.WorkSheets[2].Rows.Autofit;

          mPlanilha.Cells[1,01]                := Dados.EmpresasRazao_Social.AsString + '('+Dados.EmpresasEstado.AsString+')';
          mPlanilha.Range['A1','A1'].Font.Size := 14;
          mPlanilha.Range['A1','A1'].Font.Bold := true;
          mPlanilha.Cells[2,01]                := 'Dados das Notas Fiscais Emitidas';
          mPlanilha.Range['A2','A2'].Font.Size := 10;

          Notas.EnableControls;
          tbItens.EnableControls;
          tNavios.EnableControls;
          
     End;
     Janela_Processamento.Close;
     mPlanilha.Visible := true;
end;

procedure TImpressao_DANFE.cTipoClick(Sender: TObject);
begin
     tBeneficiario.SQL.Clear;
     If (cTipo.ItemIndex = 0) or (cTipo.ItemIndex = 2) then begin
        tBeneficiario.SQL.Add('SELECT CAST(Codigo AS VARCHAR(10)) AS Codigo,');
        tBeneficiario.SQL.Add('       Codigo AS Codigo_Fornecedor,');
        tBeneficiario.SQL.Add('       0 AS Codigo_Cliente,');
        tBeneficiario.SQL.Add('       CAST('''' AS VARCHAR(10)) AS Codigo_Orgao,');
        tBeneficiario.SQL.Add('       CAST(Nome AS VARCHAR(60)) AS Nome,');
        tBeneficiario.SQL.Add('       CNPJ,');
        tBeneficiario.SQL.Add('       ''F'' AS Tipo');
        tBeneficiario.SQL.Add('FROM Fornecedores');
     End;
     If (cTipo.ItemIndex = 2) then begin
        tBeneficiario.SQL.Add('UNION ALL');
     End;   
     If (cTipo.ItemIndex = 1) or (cTipo.ItemIndex = 2) then begin
        tBeneficiario.SQL.Add('SELECT CAST(Codigo AS VARCHAR(10)) AS Codigo,');
        tBeneficiario.SQL.Add('       0 AS Codigo_Fornecedor,');
        tBeneficiario.SQL.Add('       Codigo AS Codigo_Cliente,');
        tBeneficiario.SQL.Add('       CAST('''' AS VARCHAR(10)) AS Codigo_Orgao,');
        tBeneficiario.SQL.Add('       CAST(Nome AS VARCHAR(60)) AS Nome,');
        tBeneficiario.SQL.Add('       CNPJ,');
        tBeneficiario.SQL.Add('       ''C'' AS Tipo');
        tBeneficiario.SQL.Add('FROM Clientes');
     End;
     If (cTipo.ItemIndex = 0) or (cTipo.ItemIndex = 2) then begin
        tBeneficiario.SQL.Add('UNION ALL');
        tBeneficiario.SQL.Add('SELECT Codigo,');
        tBeneficiario.SQL.Add('       0 AS Codigo_Fornecedor,');
        tBeneficiario.SQL.Add('       0 AS Codigo_Cliente,');
        tBeneficiario.SQL.Add('       CAST('''' AS VARCHAR(10)) AS Codigo_Orgao,');
        tBeneficiario.SQL.Add('       CAST(Nome AS VARCHAR(60)) AS Nome,');
        tBeneficiario.SQL.Add('       '''',');
        tBeneficiario.SQL.Add('       ''F'' AS Tipo');
        tBeneficiario.SQL.Add('FROM Cybersoft_Cadastros.dbo.OrgaosPublicos');
     End;
     tBeneficiario.SQL.Add('ORDER BY Nome');
     tBeneficiario.Open;
end;

procedure TImpressao_DANFE.bSelecionarClick(Sender: TObject);
Var
    i: integer;
begin
     For i := 0 to cRamoAtividade.Items.Count-1 do begin
         cRamoAtividade.Checked[i] := true;
     End;
end;

procedure TImpressao_DANFE.bDesmarcarClick(Sender: TObject);
Var
    i: integer;
begin
     For i := 0 to cRamoAtividade.Items.Count-1 do begin
         cRamoAtividade.Checked[i] := false;
     End;
end;

procedure TImpressao_DANFE.DuplicataDANFE(pParc:integer);
var
   Obj:TObject;
begin
      // Pega o numero da duplicata.
      Obj := FindComponent('lNumDupl'+InttoStr(pParc));
      if Obj <> nil then begin
         if Dados.ConfiguracaoSequencial_Duplicata.AsInteger = 0 then
            (Obj as TppLabel).Caption := FormatMaskText('999999999-A;0; ',dmFiscal.DuplicatasDuplicata.Value)
         else
            (Obj as TppLabel).Caption := FormatMaskText('999999999-A;0; ',dmFIscal.DuplicatasNumero.Value);
      end;
      // Pega a data da duplicata.
      Obj := FindComponent('lDataDupl'+InttoStr(pParc));
      if Obj <> nil then begin
        (Obj as TppLabel).Caption := dmFiscal.DuplicatasData_Vencimento.AsString;
      end;

      // Pega o valor da duplicata.
      Obj := FindComponent('lValorDupl'+InttoStr(pParc));
      if Obj <> nil then begin
        (Obj as TppLabel).Caption := FormatFloat('###,###,##0.00', dmFiscal.DuplicatasValor_Liquido.Value);
      end;
end;

procedure TImpressao_DANFE.ZerarDupl;
var
   Obj:TObject;
   i:Integer;
begin
      for i := 1 to 24 do begin
          // Zera o numero da duplicata.
          Obj := FindComponent('lNumDupl'+InttoStr(i));
          if Obj <> nil then (Obj as TppLabel).Caption := '';
          // Zera a data da duplicata.
          Obj := FindComponent('lDataDupl'+InttoStr(i));
          if Obj <> nil then (Obj as TppLabel).Caption := '';
          // Zera o valor da duplicata.
          Obj := FindComponent('lValorDupl'+InttoStr(i));
          if Obj <> nil then (Obj as TppLabel).Caption := '';
      end;
end;


end.
