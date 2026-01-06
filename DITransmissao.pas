
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 01/08/2019 16:46:18                                  }
{       Generated from: C:\Temp\XML DI\declaracaoImportacaoTransmissao.xsd   }
{   Settings stored in: C:\Temp\XML DI\declaracaoImportacaoTransmissao.xdb   }
{                                                                            }
{****************************************************************************}

unit DITransmissao;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLListaDeclaracoesTransmissao = interface;
  IXMLDeclaracaoImportacaoTransmissao = interface;
  IXMLAdicao = interface;
  IXMLAdicaoList = interface;
  IXMLAdicaoAcrescimoValorAduaneiro = interface;
  IXMLAdicaoAcrescimoValorAduaneiroList = interface;
  IXMLAdicaoDeducaoValorAduaneiro = interface;
  IXMLAdicaoDeducaoValorAduaneiroList = interface;
  IXMLAdicaoDestaqueNCM = interface;
  IXMLAdicaoDestaqueNCMList = interface;
  IXMLAdicaoDocumentoVinculado = interface;
  IXMLAdicaoDocumentoVinculadoList = interface;
  IXMLAdicaoDocumentoMercosul = interface;
  IXMLAdicaoDocumentoMercosulList = interface;
  IXMLAdicaoDetalhamentoMercadoria = interface;
  IXMLAdicaoDetalhamentoMercadoriaList = interface;
  IXMLAdicaoDestaqueTarifario = interface;
  IXMLAdicaoDestaqueTarifarioList = interface;
  IXMLAdicaoTributo = interface;
  IXMLAdicaoTributoList = interface;
  IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira = interface;
  IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList = interface;
  IXMLCargaArmazenada = interface;
  IXMLCargaArmazenadaList = interface;
  IXMLCompensacaoCreditoTributo = interface;
  IXMLCompensacaoCreditoTributoList = interface;
  IXMLDocumentoInstrucaoDespacho = interface;
  IXMLDocumentoInstrucaoDespachoList = interface;
  IXMLEmbalagemCarga = interface;
  IXMLEmbalagemCargaList = interface;
  IXMLInformacaoMercosul = interface;
  IXMLInformacaoMercosulList = interface;
  IXMLPagamentoTributos = interface;
  IXMLPagamentoTributosList = interface;
  IXMLProcessoVinculado = interface;
  IXMLProcessoVinculadoList = interface;

{ IXMLListaDeclaracoesTransmissao }

  IXMLListaDeclaracoesTransmissao = interface(IXMLNodeCollection)
    ['{73569190-3612-4E5D-B7C3-8AB86A445061}']
    { Property Accessors }
    function Get_Declaracao(Index: Integer): IXMLDeclaracaoImportacaoTransmissao;
    { Methods & Properties }
    function Add: IXMLDeclaracaoImportacaoTransmissao;
    function Insert(const Index: Integer): IXMLDeclaracaoImportacaoTransmissao;
    property Declaracao[Index: Integer]: IXMLDeclaracaoImportacaoTransmissao read Get_Declaracao; default;
  end;

{ IXMLDeclaracaoImportacaoTransmissao }

  IXMLDeclaracaoImportacaoTransmissao = interface(IXMLNode)
    ['{F70991F3-C383-4961-BFF0-67D57754649E}']
    { Property Accessors }
    function Get_Adicao: IXMLAdicaoList;
    function Get_Armazem: IXMLCargaArmazenadaList;
    function Get_CargaPesoBruto: WideString;
    function Get_CargaPesoLiquido: WideString;
    function Get_CodigoBandeiraTranspote: WideString;
    function Get_CodigoModalidadeDespacho: WideString;
    function Get_CodigoMoedaDespesas: WideString;
    function Get_CodigoMoedaFrete: WideString;
    function Get_CodigoMoedaSeguro: WideString;
    function Get_CodigoMotivoRetificacao: WideString;
    function Get_CodigoMotivoTransmissao: WideString;
    function Get_CodigoOrigemDI: WideString;
    function Get_CodigoPaisImportador: WideString;
    function Get_CodigoPaisProcedenciaCarga: WideString;
    function Get_CodigoRecintoAlfandegado: WideString;
    function Get_CodigoSetorArmazenamento: WideString;
    function Get_CodigoTipoAgenteCarga: WideString;
    function Get_CodigoTipoConsignatario: WideString;
    function Get_CodigoTipoDeclaracao: WideString;
    function Get_CodigoTipoDocumentoCarga: WideString;
    function Get_CodigoTipoImportador: WideString;
    function Get_CodigoTipoManifesto: WideString;
    function Get_CodigoTipoPagamentoTributario: WideString;
    function Get_CodigoUrfCargaEntrada: WideString;
    function Get_CodigoUrfDespacho: WideString;
    function Get_CodigoUtilizacaoDocumentoCarga: WideString;
    function Get_CodigoViaTransporte: WideString;
    function Get_CompensacaoCredito: IXMLCompensacaoCreditoTributoList;
    function Get_DataChegadaCarga: WideString;
    function Get_DataEmbarque: WideString;
    function Get_DocumentoInstrucaoDespacho: IXMLDocumentoInstrucaoDespachoList;
    function Get_Embalagem: IXMLEmbalagemCargaList;
    function Get_EnderecoBairroImportador: WideString;
    function Get_EnderecoCepImportador: WideString;
    function Get_EnderecoComplementoImportador: WideString;
    function Get_EnderecoLogradouroImportador: WideString;
    function Get_EnderecoMunicipioImportador: WideString;
    function Get_EnderecoNumeroImportador: WideString;
    function Get_EnderecoUfImportador: WideString;
    function Get_IdentificacaoDeclaracaoImportacao: WideString;
    function Get_IndicadorMultimodalViaTransporte: WideString;
    function Get_IndicadorOperacaoFundap: WideString;
    function Get_InformacaoMercosul: IXMLInformacaoMercosulList;
    function Get_InformacoesComplementares: WideString;
    function Get_NomeConsignatario: WideString;
    function Get_NomeImportador: WideString;
    function Get_NomeLocalEmbarque: WideString;
    function Get_NomeTransportadorViaTransporte: WideString;
    function Get_NomeVeiculoViaTransporte: WideString;
    function Get_NumeroAgenteCarga: WideString;
    function Get_NumeroConsignatario: WideString;
    function Get_NumeroContaPagamentoTributario: WideString;
    function Get_NumeroCpfRepresentanteLegal: WideString;
    function Get_NumeroDeclaracaoRetificacao: WideString;
    function Get_NumeroDocumentoCarga: WideString;
    function Get_NumeroDocumentoCargaMaster: WideString;
    function Get_NumeroImportador: WideString;
    function Get_NumeroManifesto: WideString;
    function Get_NumeroSequencialRetificacao: WideString;
    function Get_NumeroTelefoneImportador: WideString;
    function Get_NumeroVeiculoViaTransporte: WideString;
    function Get_Pagamento: IXMLPagamentoTributosList;
    function Get_Processo: IXMLProcessoVinculadoList;
    function Get_TotalAdicoes: WideString;
    function Get_ValorFreteTerritorioNacionalMoedaNegociada: WideString;
    function Get_ValorTotalDespesasMoedaNacional: WideString;
    function Get_ValorTotalDespesasMoedaNegociada: WideString;
    function Get_ValorTotalFreteCollect: WideString;
    function Get_ValorTotalFreteMoedaNacional: WideString;
    function Get_ValorTotalFretePrepaid: WideString;
    function Get_ValorTotalMLEMoedaNacional: WideString;
    function Get_ValorTotalSeguroMoedaNacional: WideString;
    function Get_ValorTotalSeguroMoedaNegociada: WideString;
    procedure Set_CargaPesoBruto(Value: WideString);
    procedure Set_CargaPesoLiquido(Value: WideString);
    procedure Set_CodigoBandeiraTranspote(Value: WideString);
    procedure Set_CodigoModalidadeDespacho(Value: WideString);
    procedure Set_CodigoMoedaDespesas(Value: WideString);
    procedure Set_CodigoMoedaFrete(Value: WideString);
    procedure Set_CodigoMoedaSeguro(Value: WideString);
    procedure Set_CodigoMotivoRetificacao(Value: WideString);
    procedure Set_CodigoMotivoTransmissao(Value: WideString);
    procedure Set_CodigoOrigemDI(Value: WideString);
    procedure Set_CodigoPaisImportador(Value: WideString);
    procedure Set_CodigoPaisProcedenciaCarga(Value: WideString);
    procedure Set_CodigoRecintoAlfandegado(Value: WideString);
    procedure Set_CodigoSetorArmazenamento(Value: WideString);
    procedure Set_CodigoTipoAgenteCarga(Value: WideString);
    procedure Set_CodigoTipoConsignatario(Value: WideString);
    procedure Set_CodigoTipoDeclaracao(Value: WideString);
    procedure Set_CodigoTipoDocumentoCarga(Value: WideString);
    procedure Set_CodigoTipoImportador(Value: WideString);
    procedure Set_CodigoTipoManifesto(Value: WideString);
    procedure Set_CodigoTipoPagamentoTributario(Value: WideString);
    procedure Set_CodigoUrfCargaEntrada(Value: WideString);
    procedure Set_CodigoUrfDespacho(Value: WideString);
    procedure Set_CodigoUtilizacaoDocumentoCarga(Value: WideString);
    procedure Set_CodigoViaTransporte(Value: WideString);
    procedure Set_DataChegadaCarga(Value: WideString);
    procedure Set_DataEmbarque(Value: WideString);
    procedure Set_EnderecoBairroImportador(Value: WideString);
    procedure Set_EnderecoCepImportador(Value: WideString);
    procedure Set_EnderecoComplementoImportador(Value: WideString);
    procedure Set_EnderecoLogradouroImportador(Value: WideString);
    procedure Set_EnderecoMunicipioImportador(Value: WideString);
    procedure Set_EnderecoNumeroImportador(Value: WideString);
    procedure Set_EnderecoUfImportador(Value: WideString);
    procedure Set_IdentificacaoDeclaracaoImportacao(Value: WideString);
    procedure Set_IndicadorMultimodalViaTransporte(Value: WideString);
    procedure Set_IndicadorOperacaoFundap(Value: WideString);
    procedure Set_InformacoesComplementares(Value: WideString);
    procedure Set_NomeConsignatario(Value: WideString);
    procedure Set_NomeImportador(Value: WideString);
    procedure Set_NomeLocalEmbarque(Value: WideString);
    procedure Set_NomeTransportadorViaTransporte(Value: WideString);
    procedure Set_NomeVeiculoViaTransporte(Value: WideString);
    procedure Set_NumeroAgenteCarga(Value: WideString);
    procedure Set_NumeroConsignatario(Value: WideString);
    procedure Set_NumeroContaPagamentoTributario(Value: WideString);
    procedure Set_NumeroCpfRepresentanteLegal(Value: WideString);
    procedure Set_NumeroDeclaracaoRetificacao(Value: WideString);
    procedure Set_NumeroDocumentoCarga(Value: WideString);
    procedure Set_NumeroDocumentoCargaMaster(Value: WideString);
    procedure Set_NumeroImportador(Value: WideString);
    procedure Set_NumeroManifesto(Value: WideString);
    procedure Set_NumeroSequencialRetificacao(Value: WideString);
    procedure Set_NumeroTelefoneImportador(Value: WideString);
    procedure Set_NumeroVeiculoViaTransporte(Value: WideString);
    procedure Set_TotalAdicoes(Value: WideString);
    procedure Set_ValorFreteTerritorioNacionalMoedaNegociada(Value: WideString);
    procedure Set_ValorTotalDespesasMoedaNacional(Value: WideString);
    procedure Set_ValorTotalDespesasMoedaNegociada(Value: WideString);
    procedure Set_ValorTotalFreteCollect(Value: WideString);
    procedure Set_ValorTotalFreteMoedaNacional(Value: WideString);
    procedure Set_ValorTotalFretePrepaid(Value: WideString);
    procedure Set_ValorTotalMLEMoedaNacional(Value: WideString);
    procedure Set_ValorTotalSeguroMoedaNacional(Value: WideString);
    procedure Set_ValorTotalSeguroMoedaNegociada(Value: WideString);
    { Methods & Properties }
    property Adicao: IXMLAdicaoList read Get_Adicao;
    property Armazem: IXMLCargaArmazenadaList read Get_Armazem;
    property CargaPesoBruto: WideString read Get_CargaPesoBruto write Set_CargaPesoBruto;
    property CargaPesoLiquido: WideString read Get_CargaPesoLiquido write Set_CargaPesoLiquido;
    property CodigoBandeiraTranspote: WideString read Get_CodigoBandeiraTranspote write Set_CodigoBandeiraTranspote;
    property CodigoModalidadeDespacho: WideString read Get_CodigoModalidadeDespacho write Set_CodigoModalidadeDespacho;
    property CodigoMoedaDespesas: WideString read Get_CodigoMoedaDespesas write Set_CodigoMoedaDespesas;
    property CodigoMoedaFrete: WideString read Get_CodigoMoedaFrete write Set_CodigoMoedaFrete;
    property CodigoMoedaSeguro: WideString read Get_CodigoMoedaSeguro write Set_CodigoMoedaSeguro;
    property CodigoMotivoRetificacao: WideString read Get_CodigoMotivoRetificacao write Set_CodigoMotivoRetificacao;
    property CodigoMotivoTransmissao: WideString read Get_CodigoMotivoTransmissao write Set_CodigoMotivoTransmissao;
    property CodigoOrigemDI: WideString read Get_CodigoOrigemDI write Set_CodigoOrigemDI;
    property CodigoPaisImportador: WideString read Get_CodigoPaisImportador write Set_CodigoPaisImportador;
    property CodigoPaisProcedenciaCarga: WideString read Get_CodigoPaisProcedenciaCarga write Set_CodigoPaisProcedenciaCarga;
    property CodigoRecintoAlfandegado: WideString read Get_CodigoRecintoAlfandegado write Set_CodigoRecintoAlfandegado;
    property CodigoSetorArmazenamento: WideString read Get_CodigoSetorArmazenamento write Set_CodigoSetorArmazenamento;
    property CodigoTipoAgenteCarga: WideString read Get_CodigoTipoAgenteCarga write Set_CodigoTipoAgenteCarga;
    property CodigoTipoConsignatario: WideString read Get_CodigoTipoConsignatario write Set_CodigoTipoConsignatario;
    property CodigoTipoDeclaracao: WideString read Get_CodigoTipoDeclaracao write Set_CodigoTipoDeclaracao;
    property CodigoTipoDocumentoCarga: WideString read Get_CodigoTipoDocumentoCarga write Set_CodigoTipoDocumentoCarga;
    property CodigoTipoImportador: WideString read Get_CodigoTipoImportador write Set_CodigoTipoImportador;
    property CodigoTipoManifesto: WideString read Get_CodigoTipoManifesto write Set_CodigoTipoManifesto;
    property CodigoTipoPagamentoTributario: WideString read Get_CodigoTipoPagamentoTributario write Set_CodigoTipoPagamentoTributario;
    property CodigoUrfCargaEntrada: WideString read Get_CodigoUrfCargaEntrada write Set_CodigoUrfCargaEntrada;
    property CodigoUrfDespacho: WideString read Get_CodigoUrfDespacho write Set_CodigoUrfDespacho;
    property CodigoUtilizacaoDocumentoCarga: WideString read Get_CodigoUtilizacaoDocumentoCarga write Set_CodigoUtilizacaoDocumentoCarga;
    property CodigoViaTransporte: WideString read Get_CodigoViaTransporte write Set_CodigoViaTransporte;
    property CompensacaoCredito: IXMLCompensacaoCreditoTributoList read Get_CompensacaoCredito;
    property DataChegadaCarga: WideString read Get_DataChegadaCarga write Set_DataChegadaCarga;
    property DataEmbarque: WideString read Get_DataEmbarque write Set_DataEmbarque;
    property DocumentoInstrucaoDespacho: IXMLDocumentoInstrucaoDespachoList read Get_DocumentoInstrucaoDespacho;
    property Embalagem: IXMLEmbalagemCargaList read Get_Embalagem;
    property EnderecoBairroImportador: WideString read Get_EnderecoBairroImportador write Set_EnderecoBairroImportador;
    property EnderecoCepImportador: WideString read Get_EnderecoCepImportador write Set_EnderecoCepImportador;
    property EnderecoComplementoImportador: WideString read Get_EnderecoComplementoImportador write Set_EnderecoComplementoImportador;
    property EnderecoLogradouroImportador: WideString read Get_EnderecoLogradouroImportador write Set_EnderecoLogradouroImportador;
    property EnderecoMunicipioImportador: WideString read Get_EnderecoMunicipioImportador write Set_EnderecoMunicipioImportador;
    property EnderecoNumeroImportador: WideString read Get_EnderecoNumeroImportador write Set_EnderecoNumeroImportador;
    property EnderecoUfImportador: WideString read Get_EnderecoUfImportador write Set_EnderecoUfImportador;
    property IdentificacaoDeclaracaoImportacao: WideString read Get_IdentificacaoDeclaracaoImportacao write Set_IdentificacaoDeclaracaoImportacao;
    property IndicadorMultimodalViaTransporte: WideString read Get_IndicadorMultimodalViaTransporte write Set_IndicadorMultimodalViaTransporte;
    property IndicadorOperacaoFundap: WideString read Get_IndicadorOperacaoFundap write Set_IndicadorOperacaoFundap;
    property InformacaoMercosul: IXMLInformacaoMercosulList read Get_InformacaoMercosul;
    property InformacoesComplementares: WideString read Get_InformacoesComplementares write Set_InformacoesComplementares;
    property NomeConsignatario: WideString read Get_NomeConsignatario write Set_NomeConsignatario;
    property NomeImportador: WideString read Get_NomeImportador write Set_NomeImportador;
    property NomeLocalEmbarque: WideString read Get_NomeLocalEmbarque write Set_NomeLocalEmbarque;
    property NomeTransportadorViaTransporte: WideString read Get_NomeTransportadorViaTransporte write Set_NomeTransportadorViaTransporte;
    property NomeVeiculoViaTransporte: WideString read Get_NomeVeiculoViaTransporte write Set_NomeVeiculoViaTransporte;
    property NumeroAgenteCarga: WideString read Get_NumeroAgenteCarga write Set_NumeroAgenteCarga;
    property NumeroConsignatario: WideString read Get_NumeroConsignatario write Set_NumeroConsignatario;
    property NumeroContaPagamentoTributario: WideString read Get_NumeroContaPagamentoTributario write Set_NumeroContaPagamentoTributario;
    property NumeroCpfRepresentanteLegal: WideString read Get_NumeroCpfRepresentanteLegal write Set_NumeroCpfRepresentanteLegal;
    property NumeroDeclaracaoRetificacao: WideString read Get_NumeroDeclaracaoRetificacao write Set_NumeroDeclaracaoRetificacao;
    property NumeroDocumentoCarga: WideString read Get_NumeroDocumentoCarga write Set_NumeroDocumentoCarga;
    property NumeroDocumentoCargaMaster: WideString read Get_NumeroDocumentoCargaMaster write Set_NumeroDocumentoCargaMaster;
    property NumeroImportador: WideString read Get_NumeroImportador write Set_NumeroImportador;
    property NumeroManifesto: WideString read Get_NumeroManifesto write Set_NumeroManifesto;
    property NumeroSequencialRetificacao: WideString read Get_NumeroSequencialRetificacao write Set_NumeroSequencialRetificacao;
    property NumeroTelefoneImportador: WideString read Get_NumeroTelefoneImportador write Set_NumeroTelefoneImportador;
    property NumeroVeiculoViaTransporte: WideString read Get_NumeroVeiculoViaTransporte write Set_NumeroVeiculoViaTransporte;
    property Pagamento: IXMLPagamentoTributosList read Get_Pagamento;
    property Processo: IXMLProcessoVinculadoList read Get_Processo;
    property TotalAdicoes: WideString read Get_TotalAdicoes write Set_TotalAdicoes;
    property ValorFreteTerritorioNacionalMoedaNegociada: WideString read Get_ValorFreteTerritorioNacionalMoedaNegociada write Set_ValorFreteTerritorioNacionalMoedaNegociada;
    property ValorTotalDespesasMoedaNacional: WideString read Get_ValorTotalDespesasMoedaNacional write Set_ValorTotalDespesasMoedaNacional;
    property ValorTotalDespesasMoedaNegociada: WideString read Get_ValorTotalDespesasMoedaNegociada write Set_ValorTotalDespesasMoedaNegociada;
    property ValorTotalFreteCollect: WideString read Get_ValorTotalFreteCollect write Set_ValorTotalFreteCollect;
    property ValorTotalFreteMoedaNacional: WideString read Get_ValorTotalFreteMoedaNacional write Set_ValorTotalFreteMoedaNacional;
    property ValorTotalFretePrepaid: WideString read Get_ValorTotalFretePrepaid write Set_ValorTotalFretePrepaid;
    property ValorTotalMLEMoedaNacional: WideString read Get_ValorTotalMLEMoedaNacional write Set_ValorTotalMLEMoedaNacional;
    property ValorTotalSeguroMoedaNacional: WideString read Get_ValorTotalSeguroMoedaNacional write Set_ValorTotalSeguroMoedaNacional;
    property ValorTotalSeguroMoedaNegociada: WideString read Get_ValorTotalSeguroMoedaNegociada write Set_ValorTotalSeguroMoedaNegociada;
  end;

{ IXMLAdicao }

  IXMLAdicao = interface(IXMLNode)
    ['{29DB01DF-D1C1-44BA-B44B-7CB774F512B3}']
    { Property Accessors }
    function Get_Acrescimo: IXMLAdicaoAcrescimoValorAduaneiroList;
    function Get_CodigoAcordoAladi: WideString;
    function Get_CodigoAplicacaoMercadoria: WideString;
    function Get_CodigoAusenciaFabricante: WideString;
    function Get_CodigoCoberturaCambial: WideString;
    function Get_CodigoFundamentoLegalReduzido: WideString;
    function Get_CodigoFundamentoLegalRegime: WideString;
    function Get_CodigoFundamentoLegalRegimePisCofins: WideString;
    function Get_CodigoIncotermsVenda: WideString;
    function Get_CodigoMercadoriaNBMSH: WideString;
    function Get_CodigoMercadoriaNCM: WideString;
    function Get_CodigoMercadoriaNaladiNCC: WideString;
    function Get_CodigoMercadoriaNaladiSH: WideString;
    function Get_CodigoMetodoValoracao: WideString;
    function Get_CodigoMoedaFreteMercadoria: WideString;
    function Get_CodigoMoedaNegociada: WideString;
    function Get_CodigoMoedaSeguroMercadoria: WideString;
    function Get_CodigoMotivoAdmissaoTemporaria: WideString;
    function Get_CodigoMotivoSemCobertura: WideString;
    function Get_CodigoOrgaoFinanciamentoInternacional: WideString;
    function Get_CodigoPaisAquisicaoMercadoria: WideString;
    function Get_CodigoPaisOrigemMercadoria: WideString;
    function Get_CodigoPaisProcedenciaMercadoria: WideString;
    function Get_CodigoRegimeTriburarioPisCofins: WideString;
    function Get_CodigoRegimeTributacao: WideString;
    function Get_CodigoTipoAcordoTarifario: WideString;
    function Get_CodigoURFEntradaMercadoria: WideString;
    function Get_CodigoViaTransporte: WideString;
    function Get_CodigoVinculoImportadorExportador: WideString;
    function Get_Deducao: IXMLAdicaoDeducaoValorAduaneiroList;
    function Get_Destaque: IXMLAdicaoDestaqueNCMList;
    function Get_Documento: IXMLAdicaoDocumentoVinculadoList;
    function Get_DocumentoMercosul: IXMLAdicaoDocumentoMercosulList;
    function Get_EnderecoCidadeFabricante: WideString;
    function Get_EnderecoCidadeFornecedorEstrangeiro: WideString;
    function Get_EnderecoComplementoFabricante: WideString;
    function Get_EnderecoComplementoFornecedorEstrangeiro: WideString;
    function Get_EnderecoEstadoFabricante: WideString;
    function Get_EnderecoEstadoFornecedorEstrangeiro: WideString;
    function Get_EnderecoLogradouroFabricante: WideString;
    function Get_EnderecoLogradouroFornecedorEstrangeiro: WideString;
    function Get_EnderecoNumeroFabricante: WideString;
    function Get_EnderecoNumeroFornecedorEstrangeiro: WideString;
    function Get_IndicadorBemEncomenda: WideString;
    function Get_IndicadorMaterialUsado: WideString;
    function Get_IndicadorMultimodal: WideString;
    function Get_IndicadorTipoCertificado: WideString;
    function Get_Mercadoria: IXMLAdicaoDetalhamentoMercadoriaList;
    function Get_NomeFabricanteMercadoria: WideString;
    function Get_NomeFornecedorEstrangeiro: WideString;
    function Get_NomeLocalCondicaoVenda: WideString;
    function Get_NumeroAdicao: WideString;
    function Get_NumeroDocumentoReducao: WideString;
    function Get_NumeroIdentificacaoLI: WideString;
    function Get_NumeroROF: WideString;
    function Get_PercentualCoeficienteReducaoII: WideString;
    function Get_PesoLiquidoMercadoria: WideString;
    function Get_QuantidadeUnidadeEstatistica: WideString;
    function Get_Tarifa: IXMLAdicaoDestaqueTarifarioList;
    function Get_TextoComplementoValorAduaneiro: WideString;
    function Get_TipoAgente: WideString;
    function Get_Tributo: IXMLAdicaoTributoList;
    function Get_ValorAliquotaIcms: WideString;
    function Get_ValorCalculoDCRDolar: WideString;
    function Get_ValorFinanciadoSuperior360: WideString;
    function Get_ValorFreteMercadoriaMoedaNacional: WideString;
    function Get_ValorFreteMercadoriaMoedaNegociada: WideString;
    function Get_ValorIICalculadoDCRMoedaNacional: WideString;
    function Get_ValorIIDevidoZFM: WideString;
    function Get_ValorIIaReceberZFM: WideString;
    function Get_ValorMercadoriaCondicaoVenda: WideString;
    function Get_ValorMercadoriaEmbarqueMoedaNacional: WideString;
    function Get_ValorMercadoriaVendaMoedaNacional: WideString;
    function Get_ValorSeguroMercadoriaMoedaNacional: WideString;
    function Get_ValorSeguroMercadoriaMoedaNegociada: WideString;
    function Get_ValoracaoAduaneira: IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList;
    procedure Set_CodigoAcordoAladi(Value: WideString);
    procedure Set_CodigoAplicacaoMercadoria(Value: WideString);
    procedure Set_CodigoAusenciaFabricante(Value: WideString);
    procedure Set_CodigoCoberturaCambial(Value: WideString);
    procedure Set_CodigoFundamentoLegalReduzido(Value: WideString);
    procedure Set_CodigoFundamentoLegalRegime(Value: WideString);
    procedure Set_CodigoFundamentoLegalRegimePisCofins(Value: WideString);
    procedure Set_CodigoIncotermsVenda(Value: WideString);
    procedure Set_CodigoMercadoriaNBMSH(Value: WideString);
    procedure Set_CodigoMercadoriaNCM(Value: WideString);
    procedure Set_CodigoMercadoriaNaladiNCC(Value: WideString);
    procedure Set_CodigoMercadoriaNaladiSH(Value: WideString);
    procedure Set_CodigoMetodoValoracao(Value: WideString);
    procedure Set_CodigoMoedaFreteMercadoria(Value: WideString);
    procedure Set_CodigoMoedaNegociada(Value: WideString);
    procedure Set_CodigoMoedaSeguroMercadoria(Value: WideString);
    procedure Set_CodigoMotivoAdmissaoTemporaria(Value: WideString);
    procedure Set_CodigoMotivoSemCobertura(Value: WideString);
    procedure Set_CodigoOrgaoFinanciamentoInternacional(Value: WideString);
    procedure Set_CodigoPaisAquisicaoMercadoria(Value: WideString);
    procedure Set_CodigoPaisOrigemMercadoria(Value: WideString);
    procedure Set_CodigoPaisProcedenciaMercadoria(Value: WideString);
    procedure Set_CodigoRegimeTriburarioPisCofins(Value: WideString);
    procedure Set_CodigoRegimeTributacao(Value: WideString);
    procedure Set_CodigoTipoAcordoTarifario(Value: WideString);
    procedure Set_CodigoURFEntradaMercadoria(Value: WideString);
    procedure Set_CodigoViaTransporte(Value: WideString);
    procedure Set_CodigoVinculoImportadorExportador(Value: WideString);
    procedure Set_EnderecoCidadeFabricante(Value: WideString);
    procedure Set_EnderecoCidadeFornecedorEstrangeiro(Value: WideString);
    procedure Set_EnderecoComplementoFabricante(Value: WideString);
    procedure Set_EnderecoComplementoFornecedorEstrangeiro(Value: WideString);
    procedure Set_EnderecoEstadoFabricante(Value: WideString);
    procedure Set_EnderecoEstadoFornecedorEstrangeiro(Value: WideString);
    procedure Set_EnderecoLogradouroFabricante(Value: WideString);
    procedure Set_EnderecoLogradouroFornecedorEstrangeiro(Value: WideString);
    procedure Set_EnderecoNumeroFabricante(Value: WideString);
    procedure Set_EnderecoNumeroFornecedorEstrangeiro(Value: WideString);
    procedure Set_IndicadorBemEncomenda(Value: WideString);
    procedure Set_IndicadorMaterialUsado(Value: WideString);
    procedure Set_IndicadorMultimodal(Value: WideString);
    procedure Set_IndicadorTipoCertificado(Value: WideString);
    procedure Set_NomeFabricanteMercadoria(Value: WideString);
    procedure Set_NomeFornecedorEstrangeiro(Value: WideString);
    procedure Set_NomeLocalCondicaoVenda(Value: WideString);
    procedure Set_NumeroAdicao(Value: WideString);
    procedure Set_NumeroDocumentoReducao(Value: WideString);
    procedure Set_NumeroIdentificacaoLI(Value: WideString);
    procedure Set_NumeroROF(Value: WideString);
    procedure Set_PercentualCoeficienteReducaoII(Value: WideString);
    procedure Set_PesoLiquidoMercadoria(Value: WideString);
    procedure Set_QuantidadeUnidadeEstatistica(Value: WideString);
    procedure Set_TextoComplementoValorAduaneiro(Value: WideString);
    procedure Set_TipoAgente(Value: WideString);
    procedure Set_ValorAliquotaIcms(Value: WideString);
    procedure Set_ValorCalculoDCRDolar(Value: WideString);
    procedure Set_ValorFinanciadoSuperior360(Value: WideString);
    procedure Set_ValorFreteMercadoriaMoedaNacional(Value: WideString);
    procedure Set_ValorFreteMercadoriaMoedaNegociada(Value: WideString);
    procedure Set_ValorIICalculadoDCRMoedaNacional(Value: WideString);
    procedure Set_ValorIIDevidoZFM(Value: WideString);
    procedure Set_ValorIIaReceberZFM(Value: WideString);
    procedure Set_ValorMercadoriaCondicaoVenda(Value: WideString);
    procedure Set_ValorMercadoriaEmbarqueMoedaNacional(Value: WideString);
    procedure Set_ValorMercadoriaVendaMoedaNacional(Value: WideString);
    procedure Set_ValorSeguroMercadoriaMoedaNacional(Value: WideString);
    procedure Set_ValorSeguroMercadoriaMoedaNegociada(Value: WideString);
    { Methods & Properties }
    property Acrescimo: IXMLAdicaoAcrescimoValorAduaneiroList read Get_Acrescimo;
    property CodigoAcordoAladi: WideString read Get_CodigoAcordoAladi write Set_CodigoAcordoAladi;
    property CodigoAplicacaoMercadoria: WideString read Get_CodigoAplicacaoMercadoria write Set_CodigoAplicacaoMercadoria;
    property CodigoAusenciaFabricante: WideString read Get_CodigoAusenciaFabricante write Set_CodigoAusenciaFabricante;
    property CodigoCoberturaCambial: WideString read Get_CodigoCoberturaCambial write Set_CodigoCoberturaCambial;
    property CodigoFundamentoLegalReduzido: WideString read Get_CodigoFundamentoLegalReduzido write Set_CodigoFundamentoLegalReduzido;
    property CodigoFundamentoLegalRegime: WideString read Get_CodigoFundamentoLegalRegime write Set_CodigoFundamentoLegalRegime;
    property CodigoFundamentoLegalRegimePisCofins: WideString read Get_CodigoFundamentoLegalRegimePisCofins write Set_CodigoFundamentoLegalRegimePisCofins;
    property CodigoIncotermsVenda: WideString read Get_CodigoIncotermsVenda write Set_CodigoIncotermsVenda;
    property CodigoMercadoriaNBMSH: WideString read Get_CodigoMercadoriaNBMSH write Set_CodigoMercadoriaNBMSH;
    property CodigoMercadoriaNCM: WideString read Get_CodigoMercadoriaNCM write Set_CodigoMercadoriaNCM;
    property CodigoMercadoriaNaladiNCC: WideString read Get_CodigoMercadoriaNaladiNCC write Set_CodigoMercadoriaNaladiNCC;
    property CodigoMercadoriaNaladiSH: WideString read Get_CodigoMercadoriaNaladiSH write Set_CodigoMercadoriaNaladiSH;
    property CodigoMetodoValoracao: WideString read Get_CodigoMetodoValoracao write Set_CodigoMetodoValoracao;
    property CodigoMoedaFreteMercadoria: WideString read Get_CodigoMoedaFreteMercadoria write Set_CodigoMoedaFreteMercadoria;
    property CodigoMoedaNegociada: WideString read Get_CodigoMoedaNegociada write Set_CodigoMoedaNegociada;
    property CodigoMoedaSeguroMercadoria: WideString read Get_CodigoMoedaSeguroMercadoria write Set_CodigoMoedaSeguroMercadoria;
    property CodigoMotivoAdmissaoTemporaria: WideString read Get_CodigoMotivoAdmissaoTemporaria write Set_CodigoMotivoAdmissaoTemporaria;
    property CodigoMotivoSemCobertura: WideString read Get_CodigoMotivoSemCobertura write Set_CodigoMotivoSemCobertura;
    property CodigoOrgaoFinanciamentoInternacional: WideString read Get_CodigoOrgaoFinanciamentoInternacional write Set_CodigoOrgaoFinanciamentoInternacional;
    property CodigoPaisAquisicaoMercadoria: WideString read Get_CodigoPaisAquisicaoMercadoria write Set_CodigoPaisAquisicaoMercadoria;
    property CodigoPaisOrigemMercadoria: WideString read Get_CodigoPaisOrigemMercadoria write Set_CodigoPaisOrigemMercadoria;
    property CodigoPaisProcedenciaMercadoria: WideString read Get_CodigoPaisProcedenciaMercadoria write Set_CodigoPaisProcedenciaMercadoria;
    property CodigoRegimeTriburarioPisCofins: WideString read Get_CodigoRegimeTriburarioPisCofins write Set_CodigoRegimeTriburarioPisCofins;
    property CodigoRegimeTributacao: WideString read Get_CodigoRegimeTributacao write Set_CodigoRegimeTributacao;
    property CodigoTipoAcordoTarifario: WideString read Get_CodigoTipoAcordoTarifario write Set_CodigoTipoAcordoTarifario;
    property CodigoURFEntradaMercadoria: WideString read Get_CodigoURFEntradaMercadoria write Set_CodigoURFEntradaMercadoria;
    property CodigoViaTransporte: WideString read Get_CodigoViaTransporte write Set_CodigoViaTransporte;
    property CodigoVinculoImportadorExportador: WideString read Get_CodigoVinculoImportadorExportador write Set_CodigoVinculoImportadorExportador;
    property Deducao: IXMLAdicaoDeducaoValorAduaneiroList read Get_Deducao;
    property Destaque: IXMLAdicaoDestaqueNCMList read Get_Destaque;
    property Documento: IXMLAdicaoDocumentoVinculadoList read Get_Documento;
    property DocumentoMercosul: IXMLAdicaoDocumentoMercosulList read Get_DocumentoMercosul;
    property EnderecoCidadeFabricante: WideString read Get_EnderecoCidadeFabricante write Set_EnderecoCidadeFabricante;
    property EnderecoCidadeFornecedorEstrangeiro: WideString read Get_EnderecoCidadeFornecedorEstrangeiro write Set_EnderecoCidadeFornecedorEstrangeiro;
    property EnderecoComplementoFabricante: WideString read Get_EnderecoComplementoFabricante write Set_EnderecoComplementoFabricante;
    property EnderecoComplementoFornecedorEstrangeiro: WideString read Get_EnderecoComplementoFornecedorEstrangeiro write Set_EnderecoComplementoFornecedorEstrangeiro;
    property EnderecoEstadoFabricante: WideString read Get_EnderecoEstadoFabricante write Set_EnderecoEstadoFabricante;
    property EnderecoEstadoFornecedorEstrangeiro: WideString read Get_EnderecoEstadoFornecedorEstrangeiro write Set_EnderecoEstadoFornecedorEstrangeiro;
    property EnderecoLogradouroFabricante: WideString read Get_EnderecoLogradouroFabricante write Set_EnderecoLogradouroFabricante;
    property EnderecoLogradouroFornecedorEstrangeiro: WideString read Get_EnderecoLogradouroFornecedorEstrangeiro write Set_EnderecoLogradouroFornecedorEstrangeiro;
    property EnderecoNumeroFabricante: WideString read Get_EnderecoNumeroFabricante write Set_EnderecoNumeroFabricante;
    property EnderecoNumeroFornecedorEstrangeiro: WideString read Get_EnderecoNumeroFornecedorEstrangeiro write Set_EnderecoNumeroFornecedorEstrangeiro;
    property IndicadorBemEncomenda: WideString read Get_IndicadorBemEncomenda write Set_IndicadorBemEncomenda;
    property IndicadorMaterialUsado: WideString read Get_IndicadorMaterialUsado write Set_IndicadorMaterialUsado;
    property IndicadorMultimodal: WideString read Get_IndicadorMultimodal write Set_IndicadorMultimodal;
    property IndicadorTipoCertificado: WideString read Get_IndicadorTipoCertificado write Set_IndicadorTipoCertificado;
    property Mercadoria: IXMLAdicaoDetalhamentoMercadoriaList read Get_Mercadoria;
    property NomeFabricanteMercadoria: WideString read Get_NomeFabricanteMercadoria write Set_NomeFabricanteMercadoria;
    property NomeFornecedorEstrangeiro: WideString read Get_NomeFornecedorEstrangeiro write Set_NomeFornecedorEstrangeiro;
    property NomeLocalCondicaoVenda: WideString read Get_NomeLocalCondicaoVenda write Set_NomeLocalCondicaoVenda;
    property NumeroAdicao: WideString read Get_NumeroAdicao write Set_NumeroAdicao;
    property NumeroDocumentoReducao: WideString read Get_NumeroDocumentoReducao write Set_NumeroDocumentoReducao;
    property NumeroIdentificacaoLI: WideString read Get_NumeroIdentificacaoLI write Set_NumeroIdentificacaoLI;
    property NumeroROF: WideString read Get_NumeroROF write Set_NumeroROF;
    property PercentualCoeficienteReducaoII: WideString read Get_PercentualCoeficienteReducaoII write Set_PercentualCoeficienteReducaoII;
    property PesoLiquidoMercadoria: WideString read Get_PesoLiquidoMercadoria write Set_PesoLiquidoMercadoria;
    property QuantidadeUnidadeEstatistica: WideString read Get_QuantidadeUnidadeEstatistica write Set_QuantidadeUnidadeEstatistica;
    property Tarifa: IXMLAdicaoDestaqueTarifarioList read Get_Tarifa;
    property TextoComplementoValorAduaneiro: WideString read Get_TextoComplementoValorAduaneiro write Set_TextoComplementoValorAduaneiro;
    property TipoAgente: WideString read Get_TipoAgente write Set_TipoAgente;
    property Tributo: IXMLAdicaoTributoList read Get_Tributo;
    property ValorAliquotaIcms: WideString read Get_ValorAliquotaIcms write Set_ValorAliquotaIcms;
    property ValorCalculoDCRDolar: WideString read Get_ValorCalculoDCRDolar write Set_ValorCalculoDCRDolar;
    property ValorFinanciadoSuperior360: WideString read Get_ValorFinanciadoSuperior360 write Set_ValorFinanciadoSuperior360;
    property ValorFreteMercadoriaMoedaNacional: WideString read Get_ValorFreteMercadoriaMoedaNacional write Set_ValorFreteMercadoriaMoedaNacional;
    property ValorFreteMercadoriaMoedaNegociada: WideString read Get_ValorFreteMercadoriaMoedaNegociada write Set_ValorFreteMercadoriaMoedaNegociada;
    property ValorIICalculadoDCRMoedaNacional: WideString read Get_ValorIICalculadoDCRMoedaNacional write Set_ValorIICalculadoDCRMoedaNacional;
    property ValorIIDevidoZFM: WideString read Get_ValorIIDevidoZFM write Set_ValorIIDevidoZFM;
    property ValorIIaReceberZFM: WideString read Get_ValorIIaReceberZFM write Set_ValorIIaReceberZFM;
    property ValorMercadoriaCondicaoVenda: WideString read Get_ValorMercadoriaCondicaoVenda write Set_ValorMercadoriaCondicaoVenda;
    property ValorMercadoriaEmbarqueMoedaNacional: WideString read Get_ValorMercadoriaEmbarqueMoedaNacional write Set_ValorMercadoriaEmbarqueMoedaNacional;
    property ValorMercadoriaVendaMoedaNacional: WideString read Get_ValorMercadoriaVendaMoedaNacional write Set_ValorMercadoriaVendaMoedaNacional;
    property ValorSeguroMercadoriaMoedaNacional: WideString read Get_ValorSeguroMercadoriaMoedaNacional write Set_ValorSeguroMercadoriaMoedaNacional;
    property ValorSeguroMercadoriaMoedaNegociada: WideString read Get_ValorSeguroMercadoriaMoedaNegociada write Set_ValorSeguroMercadoriaMoedaNegociada;
    property ValoracaoAduaneira: IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList read Get_ValoracaoAduaneira;
  end;

{ IXMLAdicaoList }

  IXMLAdicaoList = interface(IXMLNodeCollection)
    ['{2433FF92-30A9-4DB8-8FC9-CBB06B57415E}']
    { Methods & Properties }
    function Add: IXMLAdicao;
    function Insert(const Index: Integer): IXMLAdicao;
    function Get_Item(Index: Integer): IXMLAdicao;
    property Items[Index: Integer]: IXMLAdicao read Get_Item; default;
  end;

{ IXMLAdicaoAcrescimoValorAduaneiro }

  IXMLAdicaoAcrescimoValorAduaneiro = interface(IXMLNode)
    ['{A2B30A7B-53E0-4196-BAE6-73F6AF71C700}']
    { Property Accessors }
    function Get_CodigoMetodoAcrescimoValor: WideString;
    function Get_CodigoMoedaNegociadaAcrescimo: WideString;
    function Get_ValorAcrescimoMoedaNacional: WideString;
    function Get_ValorAcrescimoMoedaNegociada: WideString;
    procedure Set_CodigoMetodoAcrescimoValor(Value: WideString);
    procedure Set_CodigoMoedaNegociadaAcrescimo(Value: WideString);
    procedure Set_ValorAcrescimoMoedaNacional(Value: WideString);
    procedure Set_ValorAcrescimoMoedaNegociada(Value: WideString);
    { Methods & Properties }
    property CodigoMetodoAcrescimoValor: WideString read Get_CodigoMetodoAcrescimoValor write Set_CodigoMetodoAcrescimoValor;
    property CodigoMoedaNegociadaAcrescimo: WideString read Get_CodigoMoedaNegociadaAcrescimo write Set_CodigoMoedaNegociadaAcrescimo;
    property ValorAcrescimoMoedaNacional: WideString read Get_ValorAcrescimoMoedaNacional write Set_ValorAcrescimoMoedaNacional;
    property ValorAcrescimoMoedaNegociada: WideString read Get_ValorAcrescimoMoedaNegociada write Set_ValorAcrescimoMoedaNegociada;
  end;

{ IXMLAdicaoAcrescimoValorAduaneiroList }

  IXMLAdicaoAcrescimoValorAduaneiroList = interface(IXMLNodeCollection)
    ['{F5046B33-4025-4DAF-90EB-AD1B43FD7468}']
    { Methods & Properties }
    function Add: IXMLAdicaoAcrescimoValorAduaneiro;
    function Insert(const Index: Integer): IXMLAdicaoAcrescimoValorAduaneiro;
    function Get_Item(Index: Integer): IXMLAdicaoAcrescimoValorAduaneiro;
    property Items[Index: Integer]: IXMLAdicaoAcrescimoValorAduaneiro read Get_Item; default;
  end;

{ IXMLAdicaoDeducaoValorAduaneiro }

  IXMLAdicaoDeducaoValorAduaneiro = interface(IXMLNode)
    ['{5C460FDB-468E-4092-B0FC-918AEAE5C625}']
    { Property Accessors }
    function Get_CodigoMetodoDeducaoValor: WideString;
    function Get_CodigoMoedaNegociadaDeducao: WideString;
    function Get_ValorDeducaoMoedaNacional: WideString;
    function Get_ValorDeducaoMoedaNegociada: WideString;
    procedure Set_CodigoMetodoDeducaoValor(Value: WideString);
    procedure Set_CodigoMoedaNegociadaDeducao(Value: WideString);
    procedure Set_ValorDeducaoMoedaNacional(Value: WideString);
    procedure Set_ValorDeducaoMoedaNegociada(Value: WideString);
    { Methods & Properties }
    property CodigoMetodoDeducaoValor: WideString read Get_CodigoMetodoDeducaoValor write Set_CodigoMetodoDeducaoValor;
    property CodigoMoedaNegociadaDeducao: WideString read Get_CodigoMoedaNegociadaDeducao write Set_CodigoMoedaNegociadaDeducao;
    property ValorDeducaoMoedaNacional: WideString read Get_ValorDeducaoMoedaNacional write Set_ValorDeducaoMoedaNacional;
    property ValorDeducaoMoedaNegociada: WideString read Get_ValorDeducaoMoedaNegociada write Set_ValorDeducaoMoedaNegociada;
  end;

{ IXMLAdicaoDeducaoValorAduaneiroList }

  IXMLAdicaoDeducaoValorAduaneiroList = interface(IXMLNodeCollection)
    ['{C78C14ED-D516-4F36-A689-4E1C1D4A9F03}']
    { Methods & Properties }
    function Add: IXMLAdicaoDeducaoValorAduaneiro;
    function Insert(const Index: Integer): IXMLAdicaoDeducaoValorAduaneiro;
    function Get_Item(Index: Integer): IXMLAdicaoDeducaoValorAduaneiro;
    property Items[Index: Integer]: IXMLAdicaoDeducaoValorAduaneiro read Get_Item; default;
  end;

{ IXMLAdicaoDestaqueNCM }

  IXMLAdicaoDestaqueNCM = interface(IXMLNode)
    ['{12AD216D-D5CC-49D1-8016-08BEE410D553}']
    { Property Accessors }
    function Get_NumeroDestaqueNCM: WideString;
    procedure Set_NumeroDestaqueNCM(Value: WideString);
    { Methods & Properties }
    property NumeroDestaqueNCM: WideString read Get_NumeroDestaqueNCM write Set_NumeroDestaqueNCM;
  end;

{ IXMLAdicaoDestaqueNCMList }

  IXMLAdicaoDestaqueNCMList = interface(IXMLNodeCollection)
    ['{DB6F0BF2-1B16-4919-B39F-0A633254DB3D}']
    { Methods & Properties }
    function Add: IXMLAdicaoDestaqueNCM;
    function Insert(const Index: Integer): IXMLAdicaoDestaqueNCM;
    function Get_Item(Index: Integer): IXMLAdicaoDestaqueNCM;
    property Items[Index: Integer]: IXMLAdicaoDestaqueNCM read Get_Item; default;
  end;

{ IXMLAdicaoDocumentoVinculado }

  IXMLAdicaoDocumentoVinculado = interface(IXMLNode)
    ['{601DE6D9-5EA9-4C16-9030-FBCD7EBC97C9}']
    { Property Accessors }
    function Get_CodigoTipoDocumentoVinculado: WideString;
    function Get_NumeroDocumentoVinculado: WideString;
    procedure Set_CodigoTipoDocumentoVinculado(Value: WideString);
    procedure Set_NumeroDocumentoVinculado(Value: WideString);
    { Methods & Properties }
    property CodigoTipoDocumentoVinculado: WideString read Get_CodigoTipoDocumentoVinculado write Set_CodigoTipoDocumentoVinculado;
    property NumeroDocumentoVinculado: WideString read Get_NumeroDocumentoVinculado write Set_NumeroDocumentoVinculado;
  end;

{ IXMLAdicaoDocumentoVinculadoList }

  IXMLAdicaoDocumentoVinculadoList = interface(IXMLNodeCollection)
    ['{0040730E-89F6-4BBD-AB45-0F3F47D0D60E}']
    { Methods & Properties }
    function Add: IXMLAdicaoDocumentoVinculado;
    function Insert(const Index: Integer): IXMLAdicaoDocumentoVinculado;
    function Get_Item(Index: Integer): IXMLAdicaoDocumentoVinculado;
    property Items[Index: Integer]: IXMLAdicaoDocumentoVinculado read Get_Item; default;
  end;

{ IXMLAdicaoDocumentoMercosul }

  IXMLAdicaoDocumentoMercosul = interface(IXMLNode)
    ['{7D6DA945-CB01-4186-84DE-BF9251294EF0}']
    { Property Accessors }
    function Get_CodigoPaisCertificado: WideString;
    function Get_NumeroDEADMercosul: WideString;
    function Get_NumeroDICertificado: WideString;
    function Get_NumeroItemCertificado: WideString;
    function Get_NumeroREADFinal: WideString;
    function Get_NumeroREADInicial: WideString;
    function Get_QuantidadeUnidadeMercosul: WideString;
    procedure Set_CodigoPaisCertificado(Value: WideString);
    procedure Set_NumeroDEADMercosul(Value: WideString);
    procedure Set_NumeroDICertificado(Value: WideString);
    procedure Set_NumeroItemCertificado(Value: WideString);
    procedure Set_NumeroREADFinal(Value: WideString);
    procedure Set_NumeroREADInicial(Value: WideString);
    procedure Set_QuantidadeUnidadeMercosul(Value: WideString);
    { Methods & Properties }
    property CodigoPaisCertificado: WideString read Get_CodigoPaisCertificado write Set_CodigoPaisCertificado;
    property NumeroDEADMercosul: WideString read Get_NumeroDEADMercosul write Set_NumeroDEADMercosul;
    property NumeroDICertificado: WideString read Get_NumeroDICertificado write Set_NumeroDICertificado;
    property NumeroItemCertificado: WideString read Get_NumeroItemCertificado write Set_NumeroItemCertificado;
    property NumeroREADFinal: WideString read Get_NumeroREADFinal write Set_NumeroREADFinal;
    property NumeroREADInicial: WideString read Get_NumeroREADInicial write Set_NumeroREADInicial;
    property QuantidadeUnidadeMercosul: WideString read Get_QuantidadeUnidadeMercosul write Set_QuantidadeUnidadeMercosul;
  end;

{ IXMLAdicaoDocumentoMercosulList }

  IXMLAdicaoDocumentoMercosulList = interface(IXMLNodeCollection)
    ['{A2BBB481-4A03-4723-8FB1-DA078CBD101E}']
    { Methods & Properties }
    function Add: IXMLAdicaoDocumentoMercosul;
    function Insert(const Index: Integer): IXMLAdicaoDocumentoMercosul;
    function Get_Item(Index: Integer): IXMLAdicaoDocumentoMercosul;
    property Items[Index: Integer]: IXMLAdicaoDocumentoMercosul read Get_Item; default;
  end;

{ IXMLAdicaoDetalhamentoMercadoria }

  IXMLAdicaoDetalhamentoMercadoria = interface(IXMLNode)
    ['{8762CD34-1B48-4C70-A243-7A8F2F385E37}']
    { Property Accessors }
    function Get_NomeUnidadeMedidaComercializada: WideString;
    function Get_QuantidadeMercadoriaUnidadeComercializada: WideString;
    function Get_TextoDetalhamentoMercadoria: WideString;
    function Get_ValorUnidadeLocalEmbarque: WideString;
    function Get_ValorUnidadeMedidaCondicaoVenda: WideString;
    procedure Set_NomeUnidadeMedidaComercializada(Value: WideString);
    procedure Set_QuantidadeMercadoriaUnidadeComercializada(Value: WideString);
    procedure Set_TextoDetalhamentoMercadoria(Value: WideString);
    procedure Set_ValorUnidadeLocalEmbarque(Value: WideString);
    procedure Set_ValorUnidadeMedidaCondicaoVenda(Value: WideString);
    { Methods & Properties }
    property NomeUnidadeMedidaComercializada: WideString read Get_NomeUnidadeMedidaComercializada write Set_NomeUnidadeMedidaComercializada;
    property QuantidadeMercadoriaUnidadeComercializada: WideString read Get_QuantidadeMercadoriaUnidadeComercializada write Set_QuantidadeMercadoriaUnidadeComercializada;
    property TextoDetalhamentoMercadoria: WideString read Get_TextoDetalhamentoMercadoria write Set_TextoDetalhamentoMercadoria;
    property ValorUnidadeLocalEmbarque: WideString read Get_ValorUnidadeLocalEmbarque write Set_ValorUnidadeLocalEmbarque;
    property ValorUnidadeMedidaCondicaoVenda: WideString read Get_ValorUnidadeMedidaCondicaoVenda write Set_ValorUnidadeMedidaCondicaoVenda;
  end;

{ IXMLAdicaoDetalhamentoMercadoriaList }

  IXMLAdicaoDetalhamentoMercadoriaList = interface(IXMLNodeCollection)
    ['{9E9661A1-BE92-41E4-B715-CE98A32AF654}']
    { Methods & Properties }
    function Add: IXMLAdicaoDetalhamentoMercadoria;
    function Insert(const Index: Integer): IXMLAdicaoDetalhamentoMercadoria;
    function Get_Item(Index: Integer): IXMLAdicaoDetalhamentoMercadoria;
    property Items[Index: Integer]: IXMLAdicaoDetalhamentoMercadoria read Get_Item; default;
  end;

{ IXMLAdicaoDestaqueTarifario }

  IXMLAdicaoDestaqueTarifario = interface(IXMLNode)
    ['{3CA0C3E2-775C-48A6-8E57-34AF51935686}']
    { Property Accessors }
    function Get_CodigoAssuntoVinculado: WideString;
    function Get_DataAnoAtoVinculado: WideString;
    function Get_NumeroAtoVinculado: WideString;
    function Get_NumeroEXAtoVinculado: WideString;
    function Get_SiglaOrgaoAtoVinculado: WideString;
    function Get_SiglaTipoAtoVinculado: WideString;
    procedure Set_CodigoAssuntoVinculado(Value: WideString);
    procedure Set_DataAnoAtoVinculado(Value: WideString);
    procedure Set_NumeroAtoVinculado(Value: WideString);
    procedure Set_NumeroEXAtoVinculado(Value: WideString);
    procedure Set_SiglaOrgaoAtoVinculado(Value: WideString);
    procedure Set_SiglaTipoAtoVinculado(Value: WideString);
    { Methods & Properties }
    property CodigoAssuntoVinculado: WideString read Get_CodigoAssuntoVinculado write Set_CodigoAssuntoVinculado;
    property DataAnoAtoVinculado: WideString read Get_DataAnoAtoVinculado write Set_DataAnoAtoVinculado;
    property NumeroAtoVinculado: WideString read Get_NumeroAtoVinculado write Set_NumeroAtoVinculado;
    property NumeroEXAtoVinculado: WideString read Get_NumeroEXAtoVinculado write Set_NumeroEXAtoVinculado;
    property SiglaOrgaoAtoVinculado: WideString read Get_SiglaOrgaoAtoVinculado write Set_SiglaOrgaoAtoVinculado;
    property SiglaTipoAtoVinculado: WideString read Get_SiglaTipoAtoVinculado write Set_SiglaTipoAtoVinculado;
  end;

{ IXMLAdicaoDestaqueTarifarioList }

  IXMLAdicaoDestaqueTarifarioList = interface(IXMLNodeCollection)
    ['{044A66E8-B68F-4B80-B99D-0586ADF60850}']
    { Methods & Properties }
    function Add: IXMLAdicaoDestaqueTarifario;
    function Insert(const Index: Integer): IXMLAdicaoDestaqueTarifario;
    function Get_Item(Index: Integer): IXMLAdicaoDestaqueTarifario;
    property Items[Index: Integer]: IXMLAdicaoDestaqueTarifario read Get_Item; default;
  end;

{ IXMLAdicaoTributo }

  IXMLAdicaoTributo = interface(IXMLNode)
    ['{EF5FAFFE-2E81-4662-AC38-8DD95CCE90DB}']
    { Property Accessors }
    function Get_CodigoReceitaImposto: WideString;
    function Get_CodigoTipoAliquotaIPT: WideString;
    function Get_CodigoTipoBeneficioIPI: WideString;
    function Get_CodigoTipoDireito: WideString;
    function Get_CodigoTipoRecipiente: WideString;
    function Get_NomeUnidadeEspecificaAliquotaIPT: WideString;
    function Get_NumeroNotaComplementarTIPI: WideString;
    function Get_PercentualAliquotaAcordoTarifario: WideString;
    function Get_PercentualAliquotaNormalAdval: WideString;
    function Get_PercentualAliquotaReduzida: WideString;
    function Get_PercentualReducaoIPT: WideString;
    function Get_QuantidadeMLRecipiente: WideString;
    function Get_QuantidadeMercadoriaUnidadeAliquotaEspecifica: WideString;
    function Get_ValorAliquotaEspecificaIPT: WideString;
    function Get_ValorBaseCalculoAdval: WideString;
    function Get_ValorCalculadoIIACTarifario: WideString;
    function Get_ValorCalculoIPTEspecifica: WideString;
    function Get_ValorCalculoIptAdval: WideString;
    function Get_ValorIPTaRecolher: WideString;
    function Get_ValorImpostoDevido: WideString;
    procedure Set_CodigoReceitaImposto(Value: WideString);
    procedure Set_CodigoTipoAliquotaIPT(Value: WideString);
    procedure Set_CodigoTipoBeneficioIPI(Value: WideString);
    procedure Set_CodigoTipoDireito(Value: WideString);
    procedure Set_CodigoTipoRecipiente(Value: WideString);
    procedure Set_NomeUnidadeEspecificaAliquotaIPT(Value: WideString);
    procedure Set_NumeroNotaComplementarTIPI(Value: WideString);
    procedure Set_PercentualAliquotaAcordoTarifario(Value: WideString);
    procedure Set_PercentualAliquotaNormalAdval(Value: WideString);
    procedure Set_PercentualAliquotaReduzida(Value: WideString);
    procedure Set_PercentualReducaoIPT(Value: WideString);
    procedure Set_QuantidadeMLRecipiente(Value: WideString);
    procedure Set_QuantidadeMercadoriaUnidadeAliquotaEspecifica(Value: WideString);
    procedure Set_ValorAliquotaEspecificaIPT(Value: WideString);
    procedure Set_ValorBaseCalculoAdval(Value: WideString);
    procedure Set_ValorCalculadoIIACTarifario(Value: WideString);
    procedure Set_ValorCalculoIPTEspecifica(Value: WideString);
    procedure Set_ValorCalculoIptAdval(Value: WideString);
    procedure Set_ValorIPTaRecolher(Value: WideString);
    procedure Set_ValorImpostoDevido(Value: WideString);
    { Methods & Properties }
    property CodigoReceitaImposto: WideString read Get_CodigoReceitaImposto write Set_CodigoReceitaImposto;
    property CodigoTipoAliquotaIPT: WideString read Get_CodigoTipoAliquotaIPT write Set_CodigoTipoAliquotaIPT;
    property CodigoTipoBeneficioIPI: WideString read Get_CodigoTipoBeneficioIPI write Set_CodigoTipoBeneficioIPI;
    property CodigoTipoDireito: WideString read Get_CodigoTipoDireito write Set_CodigoTipoDireito;
    property CodigoTipoRecipiente: WideString read Get_CodigoTipoRecipiente write Set_CodigoTipoRecipiente;
    property NomeUnidadeEspecificaAliquotaIPT: WideString read Get_NomeUnidadeEspecificaAliquotaIPT write Set_NomeUnidadeEspecificaAliquotaIPT;
    property NumeroNotaComplementarTIPI: WideString read Get_NumeroNotaComplementarTIPI write Set_NumeroNotaComplementarTIPI;
    property PercentualAliquotaAcordoTarifario: WideString read Get_PercentualAliquotaAcordoTarifario write Set_PercentualAliquotaAcordoTarifario;
    property PercentualAliquotaNormalAdval: WideString read Get_PercentualAliquotaNormalAdval write Set_PercentualAliquotaNormalAdval;
    property PercentualAliquotaReduzida: WideString read Get_PercentualAliquotaReduzida write Set_PercentualAliquotaReduzida;
    property PercentualReducaoIPT: WideString read Get_PercentualReducaoIPT write Set_PercentualReducaoIPT;
    property QuantidadeMLRecipiente: WideString read Get_QuantidadeMLRecipiente write Set_QuantidadeMLRecipiente;
    property QuantidadeMercadoriaUnidadeAliquotaEspecifica: WideString read Get_QuantidadeMercadoriaUnidadeAliquotaEspecifica write Set_QuantidadeMercadoriaUnidadeAliquotaEspecifica;
    property ValorAliquotaEspecificaIPT: WideString read Get_ValorAliquotaEspecificaIPT write Set_ValorAliquotaEspecificaIPT;
    property ValorBaseCalculoAdval: WideString read Get_ValorBaseCalculoAdval write Set_ValorBaseCalculoAdval;
    property ValorCalculadoIIACTarifario: WideString read Get_ValorCalculadoIIACTarifario write Set_ValorCalculadoIIACTarifario;
    property ValorCalculoIPTEspecifica: WideString read Get_ValorCalculoIPTEspecifica write Set_ValorCalculoIPTEspecifica;
    property ValorCalculoIptAdval: WideString read Get_ValorCalculoIptAdval write Set_ValorCalculoIptAdval;
    property ValorIPTaRecolher: WideString read Get_ValorIPTaRecolher write Set_ValorIPTaRecolher;
    property ValorImpostoDevido: WideString read Get_ValorImpostoDevido write Set_ValorImpostoDevido;
  end;

{ IXMLAdicaoTributoList }

  IXMLAdicaoTributoList = interface(IXMLNodeCollection)
    ['{56088FB3-4FB5-4EA2-B6CE-965581A5F98D}']
    { Methods & Properties }
    function Add: IXMLAdicaoTributo;
    function Insert(const Index: Integer): IXMLAdicaoTributo;
    function Get_Item(Index: Integer): IXMLAdicaoTributo;
    property Items[Index: Integer]: IXMLAdicaoTributo read Get_Item; default;
  end;

{ IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira }

  IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira = interface(IXMLNode)
    ['{EF5AE0BF-C261-4CCD-8A35-F554D565DBEC}']
    { Property Accessors }
    function Get_CodigoAbrangenciaNCM: WideString;
    function Get_CodigoAtributoNCM: WideString;
    function Get_CodigoEspecificacaoNCM: WideString;
    procedure Set_CodigoAbrangenciaNCM(Value: WideString);
    procedure Set_CodigoAtributoNCM(Value: WideString);
    procedure Set_CodigoEspecificacaoNCM(Value: WideString);
    { Methods & Properties }
    property CodigoAbrangenciaNCM: WideString read Get_CodigoAbrangenciaNCM write Set_CodigoAbrangenciaNCM;
    property CodigoAtributoNCM: WideString read Get_CodigoAtributoNCM write Set_CodigoAtributoNCM;
    property CodigoEspecificacaoNCM: WideString read Get_CodigoEspecificacaoNCM write Set_CodigoEspecificacaoNCM;
  end;

{ IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList }

  IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList = interface(IXMLNodeCollection)
    ['{2043D82D-3B15-4DAB-81DC-7D8C38420BC0}']
    { Methods & Properties }
    function Add: IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
    function Insert(const Index: Integer): IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
    function Get_Item(Index: Integer): IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
    property Items[Index: Integer]: IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira read Get_Item; default;
  end;

{ IXMLCargaArmazenada }

  IXMLCargaArmazenada = interface(IXMLNode)
    ['{FA27A570-808A-418B-B51A-84C1951C5078}']
    { Property Accessors }
    function Get_NomeArmazemCarga: WideString;
    procedure Set_NomeArmazemCarga(Value: WideString);
    { Methods & Properties }
    property NomeArmazemCarga: WideString read Get_NomeArmazemCarga write Set_NomeArmazemCarga;
  end;

{ IXMLCargaArmazenadaList }

  IXMLCargaArmazenadaList = interface(IXMLNodeCollection)
    ['{619667AD-7711-4E58-81B6-DFD9991A974F}']
    { Methods & Properties }
    function Add: IXMLCargaArmazenada;
    function Insert(const Index: Integer): IXMLCargaArmazenada;
    function Get_Item(Index: Integer): IXMLCargaArmazenada;
    property Items[Index: Integer]: IXMLCargaArmazenada read Get_Item; default;
  end;

{ IXMLCompensacaoCreditoTributo }

  IXMLCompensacaoCreditoTributo = interface(IXMLNode)
    ['{DE0F4E66-C24F-4FDC-8756-0A2E542C86CA}']
    { Property Accessors }
    function Get_CodigoReceitaCredito: WideString;
    function Get_NumeroDocumentoGeradorCredito: WideString;
    function Get_ValorCompensarCredito: WideString;
    procedure Set_CodigoReceitaCredito(Value: WideString);
    procedure Set_NumeroDocumentoGeradorCredito(Value: WideString);
    procedure Set_ValorCompensarCredito(Value: WideString);
    { Methods & Properties }
    property CodigoReceitaCredito: WideString read Get_CodigoReceitaCredito write Set_CodigoReceitaCredito;
    property NumeroDocumentoGeradorCredito: WideString read Get_NumeroDocumentoGeradorCredito write Set_NumeroDocumentoGeradorCredito;
    property ValorCompensarCredito: WideString read Get_ValorCompensarCredito write Set_ValorCompensarCredito;
  end;

{ IXMLCompensacaoCreditoTributoList }

  IXMLCompensacaoCreditoTributoList = interface(IXMLNodeCollection)
    ['{62BD6618-EE93-4358-BF65-3BF551BEB027}']
    { Methods & Properties }
    function Add: IXMLCompensacaoCreditoTributo;
    function Insert(const Index: Integer): IXMLCompensacaoCreditoTributo;
    function Get_Item(Index: Integer): IXMLCompensacaoCreditoTributo;
    property Items[Index: Integer]: IXMLCompensacaoCreditoTributo read Get_Item; default;
  end;

{ IXMLDocumentoInstrucaoDespacho }

  IXMLDocumentoInstrucaoDespacho = interface(IXMLNode)
    ['{3D568DB7-5E4D-43C3-B80C-BDE5B4A168C9}']
    { Property Accessors }
    function Get_CodigoTipoDocumentoInstrucaoDespacho: WideString;
    function Get_NumeroDocumentoInstrucaoDespacho: WideString;
    procedure Set_CodigoTipoDocumentoInstrucaoDespacho(Value: WideString);
    procedure Set_NumeroDocumentoInstrucaoDespacho(Value: WideString);
    { Methods & Properties }
    property CodigoTipoDocumentoInstrucaoDespacho: WideString read Get_CodigoTipoDocumentoInstrucaoDespacho write Set_CodigoTipoDocumentoInstrucaoDespacho;
    property NumeroDocumentoInstrucaoDespacho: WideString read Get_NumeroDocumentoInstrucaoDespacho write Set_NumeroDocumentoInstrucaoDespacho;
  end;

{ IXMLDocumentoInstrucaoDespachoList }

  IXMLDocumentoInstrucaoDespachoList = interface(IXMLNodeCollection)
    ['{88E2FE8D-7FF4-4335-9CB4-37FA6440B85A}']
    { Methods & Properties }
    function Add: IXMLDocumentoInstrucaoDespacho;
    function Insert(const Index: Integer): IXMLDocumentoInstrucaoDespacho;
    function Get_Item(Index: Integer): IXMLDocumentoInstrucaoDespacho;
    property Items[Index: Integer]: IXMLDocumentoInstrucaoDespacho read Get_Item; default;
  end;

{ IXMLEmbalagemCarga }

  IXMLEmbalagemCarga = interface(IXMLNode)
    ['{E2F6B803-A3A3-4C71-9046-6FCF30338859}']
    { Property Accessors }
    function Get_CodigoTipoEmbalagemCarga: WideString;
    function Get_QuantidadeVolumeCarga: WideString;
    procedure Set_CodigoTipoEmbalagemCarga(Value: WideString);
    procedure Set_QuantidadeVolumeCarga(Value: WideString);
    { Methods & Properties }
    property CodigoTipoEmbalagemCarga: WideString read Get_CodigoTipoEmbalagemCarga write Set_CodigoTipoEmbalagemCarga;
    property QuantidadeVolumeCarga: WideString read Get_QuantidadeVolumeCarga write Set_QuantidadeVolumeCarga;
  end;

{ IXMLEmbalagemCargaList }

  IXMLEmbalagemCargaList = interface(IXMLNodeCollection)
    ['{4DFB8CC9-50BE-4C8D-9CB8-B9DF552CAF62}']
    { Methods & Properties }
    function Add: IXMLEmbalagemCarga;
    function Insert(const Index: Integer): IXMLEmbalagemCarga;
    function Get_Item(Index: Integer): IXMLEmbalagemCarga;
    property Items[Index: Integer]: IXMLEmbalagemCarga read Get_Item; default;
  end;

{ IXMLInformacaoMercosul }

  IXMLInformacaoMercosul = interface(IXMLNode)
    ['{172203B6-4CCD-4C2D-A529-4F21D883EE9E}']
    { Property Accessors }
    function Get_NumeroDEMercosul: WideString;
    function Get_NumeroREFinal: WideString;
    function Get_NumeroREInicial: WideString;
    procedure Set_NumeroDEMercosul(Value: WideString);
    procedure Set_NumeroREFinal(Value: WideString);
    procedure Set_NumeroREInicial(Value: WideString);
    { Methods & Properties }
    property NumeroDEMercosul: WideString read Get_NumeroDEMercosul write Set_NumeroDEMercosul;
    property NumeroREFinal: WideString read Get_NumeroREFinal write Set_NumeroREFinal;
    property NumeroREInicial: WideString read Get_NumeroREInicial write Set_NumeroREInicial;
  end;

{ IXMLInformacaoMercosulList }

  IXMLInformacaoMercosulList = interface(IXMLNodeCollection)
    ['{E1A39040-2DF2-40AE-B942-45D6CF1336DE}']
    { Methods & Properties }
    function Add: IXMLInformacaoMercosul;
    function Insert(const Index: Integer): IXMLInformacaoMercosul;
    function Get_Item(Index: Integer): IXMLInformacaoMercosul;
    property Items[Index: Integer]: IXMLInformacaoMercosul read Get_Item; default;
  end;

{ IXMLPagamentoTributos }

  IXMLPagamentoTributos = interface(IXMLNode)
    ['{D3690381-9A1E-4B9F-A2AC-EAA2DA202F8F}']
    { Property Accessors }
    function Get_CodigoBancoPagamentoTributo: WideString;
    function Get_CodigoReceitaPagamento: WideString;
    function Get_CodigoTipoPagamentoTributo: WideString;
    function Get_DataPagamentoTributo: WideString;
    function Get_NumeroAgenciaPagamentoTributo: WideString;
    function Get_NumeroContaPagamentoTributo: WideString;
    function Get_NumeroSequencialRetificacaoTributo: WideString;
    function Get_ValorJurosPagamentoTributo: WideString;
    function Get_ValorMultaPagamentoTributo: WideString;
    function Get_ValorTributoPago: WideString;
    procedure Set_CodigoBancoPagamentoTributo(Value: WideString);
    procedure Set_CodigoReceitaPagamento(Value: WideString);
    procedure Set_CodigoTipoPagamentoTributo(Value: WideString);
    procedure Set_DataPagamentoTributo(Value: WideString);
    procedure Set_NumeroAgenciaPagamentoTributo(Value: WideString);
    procedure Set_NumeroContaPagamentoTributo(Value: WideString);
    procedure Set_NumeroSequencialRetificacaoTributo(Value: WideString);
    procedure Set_ValorJurosPagamentoTributo(Value: WideString);
    procedure Set_ValorMultaPagamentoTributo(Value: WideString);
    procedure Set_ValorTributoPago(Value: WideString);
    { Methods & Properties }
    property CodigoBancoPagamentoTributo: WideString read Get_CodigoBancoPagamentoTributo write Set_CodigoBancoPagamentoTributo;
    property CodigoReceitaPagamento: WideString read Get_CodigoReceitaPagamento write Set_CodigoReceitaPagamento;
    property CodigoTipoPagamentoTributo: WideString read Get_CodigoTipoPagamentoTributo write Set_CodigoTipoPagamentoTributo;
    property DataPagamentoTributo: WideString read Get_DataPagamentoTributo write Set_DataPagamentoTributo;
    property NumeroAgenciaPagamentoTributo: WideString read Get_NumeroAgenciaPagamentoTributo write Set_NumeroAgenciaPagamentoTributo;
    property NumeroContaPagamentoTributo: WideString read Get_NumeroContaPagamentoTributo write Set_NumeroContaPagamentoTributo;
    property NumeroSequencialRetificacaoTributo: WideString read Get_NumeroSequencialRetificacaoTributo write Set_NumeroSequencialRetificacaoTributo;
    property ValorJurosPagamentoTributo: WideString read Get_ValorJurosPagamentoTributo write Set_ValorJurosPagamentoTributo;
    property ValorMultaPagamentoTributo: WideString read Get_ValorMultaPagamentoTributo write Set_ValorMultaPagamentoTributo;
    property ValorTributoPago: WideString read Get_ValorTributoPago write Set_ValorTributoPago;
  end;

{ IXMLPagamentoTributosList }

  IXMLPagamentoTributosList = interface(IXMLNodeCollection)
    ['{94A4C6AD-E20D-47FA-B71E-4F332C9590A2}']
    { Methods & Properties }
    function Add: IXMLPagamentoTributos;
    function Insert(const Index: Integer): IXMLPagamentoTributos;
    function Get_Item(Index: Integer): IXMLPagamentoTributos;
    property Items[Index: Integer]: IXMLPagamentoTributos read Get_Item; default;
  end;

{ IXMLProcessoVinculado }

  IXMLProcessoVinculado = interface(IXMLNode)
    ['{308BE3B5-BA5D-4238-A44D-E601E5C9EC55}']
    { Property Accessors }
    function Get_CodigoTipoProcesso: WideString;
    function Get_NumeroProcesso: WideString;
    procedure Set_CodigoTipoProcesso(Value: WideString);
    procedure Set_NumeroProcesso(Value: WideString);
    { Methods & Properties }
    property CodigoTipoProcesso: WideString read Get_CodigoTipoProcesso write Set_CodigoTipoProcesso;
    property NumeroProcesso: WideString read Get_NumeroProcesso write Set_NumeroProcesso;
  end;

{ IXMLProcessoVinculadoList }

  IXMLProcessoVinculadoList = interface(IXMLNodeCollection)
    ['{C19D0479-9A4A-4016-A886-639DF38BE2CE}']
    { Methods & Properties }
    function Add: IXMLProcessoVinculado;
    function Insert(const Index: Integer): IXMLProcessoVinculado;
    function Get_Item(Index: Integer): IXMLProcessoVinculado;
    property Items[Index: Integer]: IXMLProcessoVinculado read Get_Item; default;
  end;

{ Forward Decls }

  TXMLListaDeclaracoesTransmissao = class;
  TXMLDeclaracaoImportacaoTransmissao = class;
  TXMLAdicao = class;
  TXMLAdicaoList = class;
  TXMLAdicaoAcrescimoValorAduaneiro = class;
  TXMLAdicaoAcrescimoValorAduaneiroList = class;
  TXMLAdicaoDeducaoValorAduaneiro = class;
  TXMLAdicaoDeducaoValorAduaneiroList = class;
  TXMLAdicaoDestaqueNCM = class;
  TXMLAdicaoDestaqueNCMList = class;
  TXMLAdicaoDocumentoVinculado = class;
  TXMLAdicaoDocumentoVinculadoList = class;
  TXMLAdicaoDocumentoMercosul = class;
  TXMLAdicaoDocumentoMercosulList = class;
  TXMLAdicaoDetalhamentoMercadoria = class;
  TXMLAdicaoDetalhamentoMercadoriaList = class;
  TXMLAdicaoDestaqueTarifario = class;
  TXMLAdicaoDestaqueTarifarioList = class;
  TXMLAdicaoTributo = class;
  TXMLAdicaoTributoList = class;
  TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira = class;
  TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList = class;
  TXMLCargaArmazenada = class;
  TXMLCargaArmazenadaList = class;
  TXMLCompensacaoCreditoTributo = class;
  TXMLCompensacaoCreditoTributoList = class;
  TXMLDocumentoInstrucaoDespacho = class;
  TXMLDocumentoInstrucaoDespachoList = class;
  TXMLEmbalagemCarga = class;
  TXMLEmbalagemCargaList = class;
  TXMLInformacaoMercosul = class;
  TXMLInformacaoMercosulList = class;
  TXMLPagamentoTributos = class;
  TXMLPagamentoTributosList = class;
  TXMLProcessoVinculado = class;
  TXMLProcessoVinculadoList = class;

{ TXMLListaDeclaracoesTransmissao }

  TXMLListaDeclaracoesTransmissao = class(TXMLNodeCollection, IXMLListaDeclaracoesTransmissao)
  protected
    { IXMLListaDeclaracoesTransmissao }
    function Get_Declaracao(Index: Integer): IXMLDeclaracaoImportacaoTransmissao;
    function Add: IXMLDeclaracaoImportacaoTransmissao;
    function Insert(const Index: Integer): IXMLDeclaracaoImportacaoTransmissao;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDeclaracaoImportacaoTransmissao }

  TXMLDeclaracaoImportacaoTransmissao = class(TXMLNode, IXMLDeclaracaoImportacaoTransmissao)
  private
    FAdicao: IXMLAdicaoList;
    FArmazem: IXMLCargaArmazenadaList;
    FCompensacaoCredito: IXMLCompensacaoCreditoTributoList;
    FDocumentoInstrucaoDespacho: IXMLDocumentoInstrucaoDespachoList;
    FEmbalagem: IXMLEmbalagemCargaList;
    FInformacaoMercosul: IXMLInformacaoMercosulList;
    FPagamento: IXMLPagamentoTributosList;
    FProcesso: IXMLProcessoVinculadoList;
  protected
    { IXMLDeclaracaoImportacaoTransmissao }
    function Get_Adicao: IXMLAdicaoList;
    function Get_Armazem: IXMLCargaArmazenadaList;
    function Get_CargaPesoBruto: WideString;
    function Get_CargaPesoLiquido: WideString;
    function Get_CodigoBandeiraTranspote: WideString;
    function Get_CodigoModalidadeDespacho: WideString;
    function Get_CodigoMoedaDespesas: WideString;
    function Get_CodigoMoedaFrete: WideString;
    function Get_CodigoMoedaSeguro: WideString;
    function Get_CodigoMotivoRetificacao: WideString;
    function Get_CodigoMotivoTransmissao: WideString;
    function Get_CodigoOrigemDI: WideString;
    function Get_CodigoPaisImportador: WideString;
    function Get_CodigoPaisProcedenciaCarga: WideString;
    function Get_CodigoRecintoAlfandegado: WideString;
    function Get_CodigoSetorArmazenamento: WideString;
    function Get_CodigoTipoAgenteCarga: WideString;
    function Get_CodigoTipoConsignatario: WideString;
    function Get_CodigoTipoDeclaracao: WideString;
    function Get_CodigoTipoDocumentoCarga: WideString;
    function Get_CodigoTipoImportador: WideString;
    function Get_CodigoTipoManifesto: WideString;
    function Get_CodigoTipoPagamentoTributario: WideString;
    function Get_CodigoUrfCargaEntrada: WideString;
    function Get_CodigoUrfDespacho: WideString;
    function Get_CodigoUtilizacaoDocumentoCarga: WideString;
    function Get_CodigoViaTransporte: WideString;
    function Get_CompensacaoCredito: IXMLCompensacaoCreditoTributoList;
    function Get_DataChegadaCarga: WideString;
    function Get_DataEmbarque: WideString;
    function Get_DocumentoInstrucaoDespacho: IXMLDocumentoInstrucaoDespachoList;
    function Get_Embalagem: IXMLEmbalagemCargaList;
    function Get_EnderecoBairroImportador: WideString;
    function Get_EnderecoCepImportador: WideString;
    function Get_EnderecoComplementoImportador: WideString;
    function Get_EnderecoLogradouroImportador: WideString;
    function Get_EnderecoMunicipioImportador: WideString;
    function Get_EnderecoNumeroImportador: WideString;
    function Get_EnderecoUfImportador: WideString;
    function Get_IdentificacaoDeclaracaoImportacao: WideString;
    function Get_IndicadorMultimodalViaTransporte: WideString;
    function Get_IndicadorOperacaoFundap: WideString;
    function Get_InformacaoMercosul: IXMLInformacaoMercosulList;
    function Get_InformacoesComplementares: WideString;
    function Get_NomeConsignatario: WideString;
    function Get_NomeImportador: WideString;
    function Get_NomeLocalEmbarque: WideString;
    function Get_NomeTransportadorViaTransporte: WideString;
    function Get_NomeVeiculoViaTransporte: WideString;
    function Get_NumeroAgenteCarga: WideString;
    function Get_NumeroConsignatario: WideString;
    function Get_NumeroContaPagamentoTributario: WideString;
    function Get_NumeroCpfRepresentanteLegal: WideString;
    function Get_NumeroDeclaracaoRetificacao: WideString;
    function Get_NumeroDocumentoCarga: WideString;
    function Get_NumeroDocumentoCargaMaster: WideString;
    function Get_NumeroImportador: WideString;
    function Get_NumeroManifesto: WideString;
    function Get_NumeroSequencialRetificacao: WideString;
    function Get_NumeroTelefoneImportador: WideString;
    function Get_NumeroVeiculoViaTransporte: WideString;
    function Get_Pagamento: IXMLPagamentoTributosList;
    function Get_Processo: IXMLProcessoVinculadoList;
    function Get_TotalAdicoes: WideString;
    function Get_ValorFreteTerritorioNacionalMoedaNegociada: WideString;
    function Get_ValorTotalDespesasMoedaNacional: WideString;
    function Get_ValorTotalDespesasMoedaNegociada: WideString;
    function Get_ValorTotalFreteCollect: WideString;
    function Get_ValorTotalFreteMoedaNacional: WideString;
    function Get_ValorTotalFretePrepaid: WideString;
    function Get_ValorTotalMLEMoedaNacional: WideString;
    function Get_ValorTotalSeguroMoedaNacional: WideString;
    function Get_ValorTotalSeguroMoedaNegociada: WideString;
    procedure Set_CargaPesoBruto(Value: WideString);
    procedure Set_CargaPesoLiquido(Value: WideString);
    procedure Set_CodigoBandeiraTranspote(Value: WideString);
    procedure Set_CodigoModalidadeDespacho(Value: WideString);
    procedure Set_CodigoMoedaDespesas(Value: WideString);
    procedure Set_CodigoMoedaFrete(Value: WideString);
    procedure Set_CodigoMoedaSeguro(Value: WideString);
    procedure Set_CodigoMotivoRetificacao(Value: WideString);
    procedure Set_CodigoMotivoTransmissao(Value: WideString);
    procedure Set_CodigoOrigemDI(Value: WideString);
    procedure Set_CodigoPaisImportador(Value: WideString);
    procedure Set_CodigoPaisProcedenciaCarga(Value: WideString);
    procedure Set_CodigoRecintoAlfandegado(Value: WideString);
    procedure Set_CodigoSetorArmazenamento(Value: WideString);
    procedure Set_CodigoTipoAgenteCarga(Value: WideString);
    procedure Set_CodigoTipoConsignatario(Value: WideString);
    procedure Set_CodigoTipoDeclaracao(Value: WideString);
    procedure Set_CodigoTipoDocumentoCarga(Value: WideString);
    procedure Set_CodigoTipoImportador(Value: WideString);
    procedure Set_CodigoTipoManifesto(Value: WideString);
    procedure Set_CodigoTipoPagamentoTributario(Value: WideString);
    procedure Set_CodigoUrfCargaEntrada(Value: WideString);
    procedure Set_CodigoUrfDespacho(Value: WideString);
    procedure Set_CodigoUtilizacaoDocumentoCarga(Value: WideString);
    procedure Set_CodigoViaTransporte(Value: WideString);
    procedure Set_DataChegadaCarga(Value: WideString);
    procedure Set_DataEmbarque(Value: WideString);
    procedure Set_EnderecoBairroImportador(Value: WideString);
    procedure Set_EnderecoCepImportador(Value: WideString);
    procedure Set_EnderecoComplementoImportador(Value: WideString);
    procedure Set_EnderecoLogradouroImportador(Value: WideString);
    procedure Set_EnderecoMunicipioImportador(Value: WideString);
    procedure Set_EnderecoNumeroImportador(Value: WideString);
    procedure Set_EnderecoUfImportador(Value: WideString);
    procedure Set_IdentificacaoDeclaracaoImportacao(Value: WideString);
    procedure Set_IndicadorMultimodalViaTransporte(Value: WideString);
    procedure Set_IndicadorOperacaoFundap(Value: WideString);
    procedure Set_InformacoesComplementares(Value: WideString);
    procedure Set_NomeConsignatario(Value: WideString);
    procedure Set_NomeImportador(Value: WideString);
    procedure Set_NomeLocalEmbarque(Value: WideString);
    procedure Set_NomeTransportadorViaTransporte(Value: WideString);
    procedure Set_NomeVeiculoViaTransporte(Value: WideString);
    procedure Set_NumeroAgenteCarga(Value: WideString);
    procedure Set_NumeroConsignatario(Value: WideString);
    procedure Set_NumeroContaPagamentoTributario(Value: WideString);
    procedure Set_NumeroCpfRepresentanteLegal(Value: WideString);
    procedure Set_NumeroDeclaracaoRetificacao(Value: WideString);
    procedure Set_NumeroDocumentoCarga(Value: WideString);
    procedure Set_NumeroDocumentoCargaMaster(Value: WideString);
    procedure Set_NumeroImportador(Value: WideString);
    procedure Set_NumeroManifesto(Value: WideString);
    procedure Set_NumeroSequencialRetificacao(Value: WideString);
    procedure Set_NumeroTelefoneImportador(Value: WideString);
    procedure Set_NumeroVeiculoViaTransporte(Value: WideString);
    procedure Set_TotalAdicoes(Value: WideString);
    procedure Set_ValorFreteTerritorioNacionalMoedaNegociada(Value: WideString);
    procedure Set_ValorTotalDespesasMoedaNacional(Value: WideString);
    procedure Set_ValorTotalDespesasMoedaNegociada(Value: WideString);
    procedure Set_ValorTotalFreteCollect(Value: WideString);
    procedure Set_ValorTotalFreteMoedaNacional(Value: WideString);
    procedure Set_ValorTotalFretePrepaid(Value: WideString);
    procedure Set_ValorTotalMLEMoedaNacional(Value: WideString);
    procedure Set_ValorTotalSeguroMoedaNacional(Value: WideString);
    procedure Set_ValorTotalSeguroMoedaNegociada(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAdicao }

  TXMLAdicao = class(TXMLNode, IXMLAdicao)
  private
    FAcrescimo: IXMLAdicaoAcrescimoValorAduaneiroList;
    FDeducao: IXMLAdicaoDeducaoValorAduaneiroList;
    FDestaque: IXMLAdicaoDestaqueNCMList;
    FDocumento: IXMLAdicaoDocumentoVinculadoList;
    FDocumentoMercosul: IXMLAdicaoDocumentoMercosulList;
    FMercadoria: IXMLAdicaoDetalhamentoMercadoriaList;
    FTarifa: IXMLAdicaoDestaqueTarifarioList;
    FTributo: IXMLAdicaoTributoList;
    FValoracaoAduaneira: IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList;
  protected
    { IXMLAdicao }
    function Get_Acrescimo: IXMLAdicaoAcrescimoValorAduaneiroList;
    function Get_CodigoAcordoAladi: WideString;
    function Get_CodigoAplicacaoMercadoria: WideString;
    function Get_CodigoAusenciaFabricante: WideString;
    function Get_CodigoCoberturaCambial: WideString;
    function Get_CodigoFundamentoLegalReduzido: WideString;
    function Get_CodigoFundamentoLegalRegime: WideString;
    function Get_CodigoFundamentoLegalRegimePisCofins: WideString;
    function Get_CodigoIncotermsVenda: WideString;
    function Get_CodigoMercadoriaNBMSH: WideString;
    function Get_CodigoMercadoriaNCM: WideString;
    function Get_CodigoMercadoriaNaladiNCC: WideString;
    function Get_CodigoMercadoriaNaladiSH: WideString;
    function Get_CodigoMetodoValoracao: WideString;
    function Get_CodigoMoedaFreteMercadoria: WideString;
    function Get_CodigoMoedaNegociada: WideString;
    function Get_CodigoMoedaSeguroMercadoria: WideString;
    function Get_CodigoMotivoAdmissaoTemporaria: WideString;
    function Get_CodigoMotivoSemCobertura: WideString;
    function Get_CodigoOrgaoFinanciamentoInternacional: WideString;
    function Get_CodigoPaisAquisicaoMercadoria: WideString;
    function Get_CodigoPaisOrigemMercadoria: WideString;
    function Get_CodigoPaisProcedenciaMercadoria: WideString;
    function Get_CodigoRegimeTriburarioPisCofins: WideString;
    function Get_CodigoRegimeTributacao: WideString;
    function Get_CodigoTipoAcordoTarifario: WideString;
    function Get_CodigoURFEntradaMercadoria: WideString;
    function Get_CodigoViaTransporte: WideString;
    function Get_CodigoVinculoImportadorExportador: WideString;
    function Get_Deducao: IXMLAdicaoDeducaoValorAduaneiroList;
    function Get_Destaque: IXMLAdicaoDestaqueNCMList;
    function Get_Documento: IXMLAdicaoDocumentoVinculadoList;
    function Get_DocumentoMercosul: IXMLAdicaoDocumentoMercosulList;
    function Get_EnderecoCidadeFabricante: WideString;
    function Get_EnderecoCidadeFornecedorEstrangeiro: WideString;
    function Get_EnderecoComplementoFabricante: WideString;
    function Get_EnderecoComplementoFornecedorEstrangeiro: WideString;
    function Get_EnderecoEstadoFabricante: WideString;
    function Get_EnderecoEstadoFornecedorEstrangeiro: WideString;
    function Get_EnderecoLogradouroFabricante: WideString;
    function Get_EnderecoLogradouroFornecedorEstrangeiro: WideString;
    function Get_EnderecoNumeroFabricante: WideString;
    function Get_EnderecoNumeroFornecedorEstrangeiro: WideString;
    function Get_IndicadorBemEncomenda: WideString;
    function Get_IndicadorMaterialUsado: WideString;
    function Get_IndicadorMultimodal: WideString;
    function Get_IndicadorTipoCertificado: WideString;
    function Get_Mercadoria: IXMLAdicaoDetalhamentoMercadoriaList;
    function Get_NomeFabricanteMercadoria: WideString;
    function Get_NomeFornecedorEstrangeiro: WideString;
    function Get_NomeLocalCondicaoVenda: WideString;
    function Get_NumeroAdicao: WideString;
    function Get_NumeroDocumentoReducao: WideString;
    function Get_NumeroIdentificacaoLI: WideString;
    function Get_NumeroROF: WideString;
    function Get_PercentualCoeficienteReducaoII: WideString;
    function Get_PesoLiquidoMercadoria: WideString;
    function Get_QuantidadeUnidadeEstatistica: WideString;
    function Get_Tarifa: IXMLAdicaoDestaqueTarifarioList;
    function Get_TextoComplementoValorAduaneiro: WideString;
    function Get_TipoAgente: WideString;
    function Get_Tributo: IXMLAdicaoTributoList;
    function Get_ValorAliquotaIcms: WideString;
    function Get_ValorCalculoDCRDolar: WideString;
    function Get_ValorFinanciadoSuperior360: WideString;
    function Get_ValorFreteMercadoriaMoedaNacional: WideString;
    function Get_ValorFreteMercadoriaMoedaNegociada: WideString;
    function Get_ValorIICalculadoDCRMoedaNacional: WideString;
    function Get_ValorIIDevidoZFM: WideString;
    function Get_ValorIIaReceberZFM: WideString;
    function Get_ValorMercadoriaCondicaoVenda: WideString;
    function Get_ValorMercadoriaEmbarqueMoedaNacional: WideString;
    function Get_ValorMercadoriaVendaMoedaNacional: WideString;
    function Get_ValorSeguroMercadoriaMoedaNacional: WideString;
    function Get_ValorSeguroMercadoriaMoedaNegociada: WideString;
    function Get_ValoracaoAduaneira: IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList;
    procedure Set_CodigoAcordoAladi(Value: WideString);
    procedure Set_CodigoAplicacaoMercadoria(Value: WideString);
    procedure Set_CodigoAusenciaFabricante(Value: WideString);
    procedure Set_CodigoCoberturaCambial(Value: WideString);
    procedure Set_CodigoFundamentoLegalReduzido(Value: WideString);
    procedure Set_CodigoFundamentoLegalRegime(Value: WideString);
    procedure Set_CodigoFundamentoLegalRegimePisCofins(Value: WideString);
    procedure Set_CodigoIncotermsVenda(Value: WideString);
    procedure Set_CodigoMercadoriaNBMSH(Value: WideString);
    procedure Set_CodigoMercadoriaNCM(Value: WideString);
    procedure Set_CodigoMercadoriaNaladiNCC(Value: WideString);
    procedure Set_CodigoMercadoriaNaladiSH(Value: WideString);
    procedure Set_CodigoMetodoValoracao(Value: WideString);
    procedure Set_CodigoMoedaFreteMercadoria(Value: WideString);
    procedure Set_CodigoMoedaNegociada(Value: WideString);
    procedure Set_CodigoMoedaSeguroMercadoria(Value: WideString);
    procedure Set_CodigoMotivoAdmissaoTemporaria(Value: WideString);
    procedure Set_CodigoMotivoSemCobertura(Value: WideString);
    procedure Set_CodigoOrgaoFinanciamentoInternacional(Value: WideString);
    procedure Set_CodigoPaisAquisicaoMercadoria(Value: WideString);
    procedure Set_CodigoPaisOrigemMercadoria(Value: WideString);
    procedure Set_CodigoPaisProcedenciaMercadoria(Value: WideString);
    procedure Set_CodigoRegimeTriburarioPisCofins(Value: WideString);
    procedure Set_CodigoRegimeTributacao(Value: WideString);
    procedure Set_CodigoTipoAcordoTarifario(Value: WideString);
    procedure Set_CodigoURFEntradaMercadoria(Value: WideString);
    procedure Set_CodigoViaTransporte(Value: WideString);
    procedure Set_CodigoVinculoImportadorExportador(Value: WideString);
    procedure Set_EnderecoCidadeFabricante(Value: WideString);
    procedure Set_EnderecoCidadeFornecedorEstrangeiro(Value: WideString);
    procedure Set_EnderecoComplementoFabricante(Value: WideString);
    procedure Set_EnderecoComplementoFornecedorEstrangeiro(Value: WideString);
    procedure Set_EnderecoEstadoFabricante(Value: WideString);
    procedure Set_EnderecoEstadoFornecedorEstrangeiro(Value: WideString);
    procedure Set_EnderecoLogradouroFabricante(Value: WideString);
    procedure Set_EnderecoLogradouroFornecedorEstrangeiro(Value: WideString);
    procedure Set_EnderecoNumeroFabricante(Value: WideString);
    procedure Set_EnderecoNumeroFornecedorEstrangeiro(Value: WideString);
    procedure Set_IndicadorBemEncomenda(Value: WideString);
    procedure Set_IndicadorMaterialUsado(Value: WideString);
    procedure Set_IndicadorMultimodal(Value: WideString);
    procedure Set_IndicadorTipoCertificado(Value: WideString);
    procedure Set_NomeFabricanteMercadoria(Value: WideString);
    procedure Set_NomeFornecedorEstrangeiro(Value: WideString);
    procedure Set_NomeLocalCondicaoVenda(Value: WideString);
    procedure Set_NumeroAdicao(Value: WideString);
    procedure Set_NumeroDocumentoReducao(Value: WideString);
    procedure Set_NumeroIdentificacaoLI(Value: WideString);
    procedure Set_NumeroROF(Value: WideString);
    procedure Set_PercentualCoeficienteReducaoII(Value: WideString);
    procedure Set_PesoLiquidoMercadoria(Value: WideString);
    procedure Set_QuantidadeUnidadeEstatistica(Value: WideString);
    procedure Set_TextoComplementoValorAduaneiro(Value: WideString);
    procedure Set_TipoAgente(Value: WideString);
    procedure Set_ValorAliquotaIcms(Value: WideString);
    procedure Set_ValorCalculoDCRDolar(Value: WideString);
    procedure Set_ValorFinanciadoSuperior360(Value: WideString);
    procedure Set_ValorFreteMercadoriaMoedaNacional(Value: WideString);
    procedure Set_ValorFreteMercadoriaMoedaNegociada(Value: WideString);
    procedure Set_ValorIICalculadoDCRMoedaNacional(Value: WideString);
    procedure Set_ValorIIDevidoZFM(Value: WideString);
    procedure Set_ValorIIaReceberZFM(Value: WideString);
    procedure Set_ValorMercadoriaCondicaoVenda(Value: WideString);
    procedure Set_ValorMercadoriaEmbarqueMoedaNacional(Value: WideString);
    procedure Set_ValorMercadoriaVendaMoedaNacional(Value: WideString);
    procedure Set_ValorSeguroMercadoriaMoedaNacional(Value: WideString);
    procedure Set_ValorSeguroMercadoriaMoedaNegociada(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAdicaoList }

  TXMLAdicaoList = class(TXMLNodeCollection, IXMLAdicaoList)
  protected
    { IXMLAdicaoList }
    function Add: IXMLAdicao;
    function Insert(const Index: Integer): IXMLAdicao;
    function Get_Item(Index: Integer): IXMLAdicao;
  end;

{ TXMLAdicaoAcrescimoValorAduaneiro }

  TXMLAdicaoAcrescimoValorAduaneiro = class(TXMLNode, IXMLAdicaoAcrescimoValorAduaneiro)
  protected
    { IXMLAdicaoAcrescimoValorAduaneiro }
    function Get_CodigoMetodoAcrescimoValor: WideString;
    function Get_CodigoMoedaNegociadaAcrescimo: WideString;
    function Get_ValorAcrescimoMoedaNacional: WideString;
    function Get_ValorAcrescimoMoedaNegociada: WideString;
    procedure Set_CodigoMetodoAcrescimoValor(Value: WideString);
    procedure Set_CodigoMoedaNegociadaAcrescimo(Value: WideString);
    procedure Set_ValorAcrescimoMoedaNacional(Value: WideString);
    procedure Set_ValorAcrescimoMoedaNegociada(Value: WideString);
  end;

{ TXMLAdicaoAcrescimoValorAduaneiroList }

  TXMLAdicaoAcrescimoValorAduaneiroList = class(TXMLNodeCollection, IXMLAdicaoAcrescimoValorAduaneiroList)
  protected
    { IXMLAdicaoAcrescimoValorAduaneiroList }
    function Add: IXMLAdicaoAcrescimoValorAduaneiro;
    function Insert(const Index: Integer): IXMLAdicaoAcrescimoValorAduaneiro;
    function Get_Item(Index: Integer): IXMLAdicaoAcrescimoValorAduaneiro;
  end;

{ TXMLAdicaoDeducaoValorAduaneiro }

  TXMLAdicaoDeducaoValorAduaneiro = class(TXMLNode, IXMLAdicaoDeducaoValorAduaneiro)
  protected
    { IXMLAdicaoDeducaoValorAduaneiro }
    function Get_CodigoMetodoDeducaoValor: WideString;
    function Get_CodigoMoedaNegociadaDeducao: WideString;
    function Get_ValorDeducaoMoedaNacional: WideString;
    function Get_ValorDeducaoMoedaNegociada: WideString;
    procedure Set_CodigoMetodoDeducaoValor(Value: WideString);
    procedure Set_CodigoMoedaNegociadaDeducao(Value: WideString);
    procedure Set_ValorDeducaoMoedaNacional(Value: WideString);
    procedure Set_ValorDeducaoMoedaNegociada(Value: WideString);
  end;

{ TXMLAdicaoDeducaoValorAduaneiroList }

  TXMLAdicaoDeducaoValorAduaneiroList = class(TXMLNodeCollection, IXMLAdicaoDeducaoValorAduaneiroList)
  protected
    { IXMLAdicaoDeducaoValorAduaneiroList }
    function Add: IXMLAdicaoDeducaoValorAduaneiro;
    function Insert(const Index: Integer): IXMLAdicaoDeducaoValorAduaneiro;
    function Get_Item(Index: Integer): IXMLAdicaoDeducaoValorAduaneiro;
  end;

{ TXMLAdicaoDestaqueNCM }

  TXMLAdicaoDestaqueNCM = class(TXMLNode, IXMLAdicaoDestaqueNCM)
  protected
    { IXMLAdicaoDestaqueNCM }
    function Get_NumeroDestaqueNCM: WideString;
    procedure Set_NumeroDestaqueNCM(Value: WideString);
  end;

{ TXMLAdicaoDestaqueNCMList }

  TXMLAdicaoDestaqueNCMList = class(TXMLNodeCollection, IXMLAdicaoDestaqueNCMList)
  protected
    { IXMLAdicaoDestaqueNCMList }
    function Add: IXMLAdicaoDestaqueNCM;
    function Insert(const Index: Integer): IXMLAdicaoDestaqueNCM;
    function Get_Item(Index: Integer): IXMLAdicaoDestaqueNCM;
  end;

{ TXMLAdicaoDocumentoVinculado }

  TXMLAdicaoDocumentoVinculado = class(TXMLNode, IXMLAdicaoDocumentoVinculado)
  protected
    { IXMLAdicaoDocumentoVinculado }
    function Get_CodigoTipoDocumentoVinculado: WideString;
    function Get_NumeroDocumentoVinculado: WideString;
    procedure Set_CodigoTipoDocumentoVinculado(Value: WideString);
    procedure Set_NumeroDocumentoVinculado(Value: WideString);
  end;

{ TXMLAdicaoDocumentoVinculadoList }

  TXMLAdicaoDocumentoVinculadoList = class(TXMLNodeCollection, IXMLAdicaoDocumentoVinculadoList)
  protected
    { IXMLAdicaoDocumentoVinculadoList }
    function Add: IXMLAdicaoDocumentoVinculado;
    function Insert(const Index: Integer): IXMLAdicaoDocumentoVinculado;
    function Get_Item(Index: Integer): IXMLAdicaoDocumentoVinculado;
  end;

{ TXMLAdicaoDocumentoMercosul }

  TXMLAdicaoDocumentoMercosul = class(TXMLNode, IXMLAdicaoDocumentoMercosul)
  protected
    { IXMLAdicaoDocumentoMercosul }
    function Get_CodigoPaisCertificado: WideString;
    function Get_NumeroDEADMercosul: WideString;
    function Get_NumeroDICertificado: WideString;
    function Get_NumeroItemCertificado: WideString;
    function Get_NumeroREADFinal: WideString;
    function Get_NumeroREADInicial: WideString;
    function Get_QuantidadeUnidadeMercosul: WideString;
    procedure Set_CodigoPaisCertificado(Value: WideString);
    procedure Set_NumeroDEADMercosul(Value: WideString);
    procedure Set_NumeroDICertificado(Value: WideString);
    procedure Set_NumeroItemCertificado(Value: WideString);
    procedure Set_NumeroREADFinal(Value: WideString);
    procedure Set_NumeroREADInicial(Value: WideString);
    procedure Set_QuantidadeUnidadeMercosul(Value: WideString);
  end;

{ TXMLAdicaoDocumentoMercosulList }

  TXMLAdicaoDocumentoMercosulList = class(TXMLNodeCollection, IXMLAdicaoDocumentoMercosulList)
  protected
    { IXMLAdicaoDocumentoMercosulList }
    function Add: IXMLAdicaoDocumentoMercosul;
    function Insert(const Index: Integer): IXMLAdicaoDocumentoMercosul;
    function Get_Item(Index: Integer): IXMLAdicaoDocumentoMercosul;
  end;

{ TXMLAdicaoDetalhamentoMercadoria }

  TXMLAdicaoDetalhamentoMercadoria = class(TXMLNode, IXMLAdicaoDetalhamentoMercadoria)
  protected
    { IXMLAdicaoDetalhamentoMercadoria }
    function Get_NomeUnidadeMedidaComercializada: WideString;
    function Get_QuantidadeMercadoriaUnidadeComercializada: WideString;
    function Get_TextoDetalhamentoMercadoria: WideString;
    function Get_ValorUnidadeLocalEmbarque: WideString;
    function Get_ValorUnidadeMedidaCondicaoVenda: WideString;
    procedure Set_NomeUnidadeMedidaComercializada(Value: WideString);
    procedure Set_QuantidadeMercadoriaUnidadeComercializada(Value: WideString);
    procedure Set_TextoDetalhamentoMercadoria(Value: WideString);
    procedure Set_ValorUnidadeLocalEmbarque(Value: WideString);
    procedure Set_ValorUnidadeMedidaCondicaoVenda(Value: WideString);
  end;

{ TXMLAdicaoDetalhamentoMercadoriaList }

  TXMLAdicaoDetalhamentoMercadoriaList = class(TXMLNodeCollection, IXMLAdicaoDetalhamentoMercadoriaList)
  protected
    { IXMLAdicaoDetalhamentoMercadoriaList }
    function Add: IXMLAdicaoDetalhamentoMercadoria;
    function Insert(const Index: Integer): IXMLAdicaoDetalhamentoMercadoria;
    function Get_Item(Index: Integer): IXMLAdicaoDetalhamentoMercadoria;
  end;

{ TXMLAdicaoDestaqueTarifario }

  TXMLAdicaoDestaqueTarifario = class(TXMLNode, IXMLAdicaoDestaqueTarifario)
  protected
    { IXMLAdicaoDestaqueTarifario }
    function Get_CodigoAssuntoVinculado: WideString;
    function Get_DataAnoAtoVinculado: WideString;
    function Get_NumeroAtoVinculado: WideString;
    function Get_NumeroEXAtoVinculado: WideString;
    function Get_SiglaOrgaoAtoVinculado: WideString;
    function Get_SiglaTipoAtoVinculado: WideString;
    procedure Set_CodigoAssuntoVinculado(Value: WideString);
    procedure Set_DataAnoAtoVinculado(Value: WideString);
    procedure Set_NumeroAtoVinculado(Value: WideString);
    procedure Set_NumeroEXAtoVinculado(Value: WideString);
    procedure Set_SiglaOrgaoAtoVinculado(Value: WideString);
    procedure Set_SiglaTipoAtoVinculado(Value: WideString);
  end;

{ TXMLAdicaoDestaqueTarifarioList }

  TXMLAdicaoDestaqueTarifarioList = class(TXMLNodeCollection, IXMLAdicaoDestaqueTarifarioList)
  protected
    { IXMLAdicaoDestaqueTarifarioList }
    function Add: IXMLAdicaoDestaqueTarifario;
    function Insert(const Index: Integer): IXMLAdicaoDestaqueTarifario;
    function Get_Item(Index: Integer): IXMLAdicaoDestaqueTarifario;
  end;

{ TXMLAdicaoTributo }

  TXMLAdicaoTributo = class(TXMLNode, IXMLAdicaoTributo)
  protected
    { IXMLAdicaoTributo }
    function Get_CodigoReceitaImposto: WideString;
    function Get_CodigoTipoAliquotaIPT: WideString;
    function Get_CodigoTipoBeneficioIPI: WideString;
    function Get_CodigoTipoDireito: WideString;
    function Get_CodigoTipoRecipiente: WideString;
    function Get_NomeUnidadeEspecificaAliquotaIPT: WideString;
    function Get_NumeroNotaComplementarTIPI: WideString;
    function Get_PercentualAliquotaAcordoTarifario: WideString;
    function Get_PercentualAliquotaNormalAdval: WideString;
    function Get_PercentualAliquotaReduzida: WideString;
    function Get_PercentualReducaoIPT: WideString;
    function Get_QuantidadeMLRecipiente: WideString;
    function Get_QuantidadeMercadoriaUnidadeAliquotaEspecifica: WideString;
    function Get_ValorAliquotaEspecificaIPT: WideString;
    function Get_ValorBaseCalculoAdval: WideString;
    function Get_ValorCalculadoIIACTarifario: WideString;
    function Get_ValorCalculoIPTEspecifica: WideString;
    function Get_ValorCalculoIptAdval: WideString;
    function Get_ValorIPTaRecolher: WideString;
    function Get_ValorImpostoDevido: WideString;
    procedure Set_CodigoReceitaImposto(Value: WideString);
    procedure Set_CodigoTipoAliquotaIPT(Value: WideString);
    procedure Set_CodigoTipoBeneficioIPI(Value: WideString);
    procedure Set_CodigoTipoDireito(Value: WideString);
    procedure Set_CodigoTipoRecipiente(Value: WideString);
    procedure Set_NomeUnidadeEspecificaAliquotaIPT(Value: WideString);
    procedure Set_NumeroNotaComplementarTIPI(Value: WideString);
    procedure Set_PercentualAliquotaAcordoTarifario(Value: WideString);
    procedure Set_PercentualAliquotaNormalAdval(Value: WideString);
    procedure Set_PercentualAliquotaReduzida(Value: WideString);
    procedure Set_PercentualReducaoIPT(Value: WideString);
    procedure Set_QuantidadeMLRecipiente(Value: WideString);
    procedure Set_QuantidadeMercadoriaUnidadeAliquotaEspecifica(Value: WideString);
    procedure Set_ValorAliquotaEspecificaIPT(Value: WideString);
    procedure Set_ValorBaseCalculoAdval(Value: WideString);
    procedure Set_ValorCalculadoIIACTarifario(Value: WideString);
    procedure Set_ValorCalculoIPTEspecifica(Value: WideString);
    procedure Set_ValorCalculoIptAdval(Value: WideString);
    procedure Set_ValorIPTaRecolher(Value: WideString);
    procedure Set_ValorImpostoDevido(Value: WideString);
  end;

{ TXMLAdicaoTributoList }

  TXMLAdicaoTributoList = class(TXMLNodeCollection, IXMLAdicaoTributoList)
  protected
    { IXMLAdicaoTributoList }
    function Add: IXMLAdicaoTributo;
    function Insert(const Index: Integer): IXMLAdicaoTributo;
    function Get_Item(Index: Integer): IXMLAdicaoTributo;
  end;

{ TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira }

  TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira = class(TXMLNode, IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira)
  protected
    { IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira }
    function Get_CodigoAbrangenciaNCM: WideString;
    function Get_CodigoAtributoNCM: WideString;
    function Get_CodigoEspecificacaoNCM: WideString;
    procedure Set_CodigoAbrangenciaNCM(Value: WideString);
    procedure Set_CodigoAtributoNCM(Value: WideString);
    procedure Set_CodigoEspecificacaoNCM(Value: WideString);
  end;

{ TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList }

  TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList = class(TXMLNodeCollection, IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList)
  protected
    { IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList }
    function Add: IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
    function Insert(const Index: Integer): IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
    function Get_Item(Index: Integer): IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
  end;

{ TXMLCargaArmazenada }

  TXMLCargaArmazenada = class(TXMLNode, IXMLCargaArmazenada)
  protected
    { IXMLCargaArmazenada }
    function Get_NomeArmazemCarga: WideString;
    procedure Set_NomeArmazemCarga(Value: WideString);
  end;

{ TXMLCargaArmazenadaList }

  TXMLCargaArmazenadaList = class(TXMLNodeCollection, IXMLCargaArmazenadaList)
  protected
    { IXMLCargaArmazenadaList }
    function Add: IXMLCargaArmazenada;
    function Insert(const Index: Integer): IXMLCargaArmazenada;
    function Get_Item(Index: Integer): IXMLCargaArmazenada;
  end;

{ TXMLCompensacaoCreditoTributo }

  TXMLCompensacaoCreditoTributo = class(TXMLNode, IXMLCompensacaoCreditoTributo)
  protected
    { IXMLCompensacaoCreditoTributo }
    function Get_CodigoReceitaCredito: WideString;
    function Get_NumeroDocumentoGeradorCredito: WideString;
    function Get_ValorCompensarCredito: WideString;
    procedure Set_CodigoReceitaCredito(Value: WideString);
    procedure Set_NumeroDocumentoGeradorCredito(Value: WideString);
    procedure Set_ValorCompensarCredito(Value: WideString);
  end;

{ TXMLCompensacaoCreditoTributoList }

  TXMLCompensacaoCreditoTributoList = class(TXMLNodeCollection, IXMLCompensacaoCreditoTributoList)
  protected
    { IXMLCompensacaoCreditoTributoList }
    function Add: IXMLCompensacaoCreditoTributo;
    function Insert(const Index: Integer): IXMLCompensacaoCreditoTributo;
    function Get_Item(Index: Integer): IXMLCompensacaoCreditoTributo;
  end;

{ TXMLDocumentoInstrucaoDespacho }

  TXMLDocumentoInstrucaoDespacho = class(TXMLNode, IXMLDocumentoInstrucaoDespacho)
  protected
    { IXMLDocumentoInstrucaoDespacho }
    function Get_CodigoTipoDocumentoInstrucaoDespacho: WideString;
    function Get_NumeroDocumentoInstrucaoDespacho: WideString;
    procedure Set_CodigoTipoDocumentoInstrucaoDespacho(Value: WideString);
    procedure Set_NumeroDocumentoInstrucaoDespacho(Value: WideString);
  end;

{ TXMLDocumentoInstrucaoDespachoList }

  TXMLDocumentoInstrucaoDespachoList = class(TXMLNodeCollection, IXMLDocumentoInstrucaoDespachoList)
  protected
    { IXMLDocumentoInstrucaoDespachoList }
    function Add: IXMLDocumentoInstrucaoDespacho;
    function Insert(const Index: Integer): IXMLDocumentoInstrucaoDespacho;
    function Get_Item(Index: Integer): IXMLDocumentoInstrucaoDespacho;
  end;

{ TXMLEmbalagemCarga }

  TXMLEmbalagemCarga = class(TXMLNode, IXMLEmbalagemCarga)
  protected
    { IXMLEmbalagemCarga }
    function Get_CodigoTipoEmbalagemCarga: WideString;
    function Get_QuantidadeVolumeCarga: WideString;
    procedure Set_CodigoTipoEmbalagemCarga(Value: WideString);
    procedure Set_QuantidadeVolumeCarga(Value: WideString);
  end;

{ TXMLEmbalagemCargaList }

  TXMLEmbalagemCargaList = class(TXMLNodeCollection, IXMLEmbalagemCargaList)
  protected
    { IXMLEmbalagemCargaList }
    function Add: IXMLEmbalagemCarga;
    function Insert(const Index: Integer): IXMLEmbalagemCarga;
    function Get_Item(Index: Integer): IXMLEmbalagemCarga;
  end;

{ TXMLInformacaoMercosul }

  TXMLInformacaoMercosul = class(TXMLNode, IXMLInformacaoMercosul)
  protected
    { IXMLInformacaoMercosul }
    function Get_NumeroDEMercosul: WideString;
    function Get_NumeroREFinal: WideString;
    function Get_NumeroREInicial: WideString;
    procedure Set_NumeroDEMercosul(Value: WideString);
    procedure Set_NumeroREFinal(Value: WideString);
    procedure Set_NumeroREInicial(Value: WideString);
  end;

{ TXMLInformacaoMercosulList }

  TXMLInformacaoMercosulList = class(TXMLNodeCollection, IXMLInformacaoMercosulList)
  protected
    { IXMLInformacaoMercosulList }
    function Add: IXMLInformacaoMercosul;
    function Insert(const Index: Integer): IXMLInformacaoMercosul;
    function Get_Item(Index: Integer): IXMLInformacaoMercosul;
  end;

{ TXMLPagamentoTributos }

  TXMLPagamentoTributos = class(TXMLNode, IXMLPagamentoTributos)
  protected
    { IXMLPagamentoTributos }
    function Get_CodigoBancoPagamentoTributo: WideString;
    function Get_CodigoReceitaPagamento: WideString;
    function Get_CodigoTipoPagamentoTributo: WideString;
    function Get_DataPagamentoTributo: WideString;
    function Get_NumeroAgenciaPagamentoTributo: WideString;
    function Get_NumeroContaPagamentoTributo: WideString;
    function Get_NumeroSequencialRetificacaoTributo: WideString;
    function Get_ValorJurosPagamentoTributo: WideString;
    function Get_ValorMultaPagamentoTributo: WideString;
    function Get_ValorTributoPago: WideString;
    procedure Set_CodigoBancoPagamentoTributo(Value: WideString);
    procedure Set_CodigoReceitaPagamento(Value: WideString);
    procedure Set_CodigoTipoPagamentoTributo(Value: WideString);
    procedure Set_DataPagamentoTributo(Value: WideString);
    procedure Set_NumeroAgenciaPagamentoTributo(Value: WideString);
    procedure Set_NumeroContaPagamentoTributo(Value: WideString);
    procedure Set_NumeroSequencialRetificacaoTributo(Value: WideString);
    procedure Set_ValorJurosPagamentoTributo(Value: WideString);
    procedure Set_ValorMultaPagamentoTributo(Value: WideString);
    procedure Set_ValorTributoPago(Value: WideString);
  end;

{ TXMLPagamentoTributosList }

  TXMLPagamentoTributosList = class(TXMLNodeCollection, IXMLPagamentoTributosList)
  protected
    { IXMLPagamentoTributosList }
    function Add: IXMLPagamentoTributos;
    function Insert(const Index: Integer): IXMLPagamentoTributos;
    function Get_Item(Index: Integer): IXMLPagamentoTributos;
  end;

{ TXMLProcessoVinculado }

  TXMLProcessoVinculado = class(TXMLNode, IXMLProcessoVinculado)
  protected
    { IXMLProcessoVinculado }
    function Get_CodigoTipoProcesso: WideString;
    function Get_NumeroProcesso: WideString;
    procedure Set_CodigoTipoProcesso(Value: WideString);
    procedure Set_NumeroProcesso(Value: WideString);
  end;

{ TXMLProcessoVinculadoList }

  TXMLProcessoVinculadoList = class(TXMLNodeCollection, IXMLProcessoVinculadoList)
  protected
    { IXMLProcessoVinculadoList }
    function Add: IXMLProcessoVinculado;
    function Insert(const Index: Integer): IXMLProcessoVinculado;
    function Get_Item(Index: Integer): IXMLProcessoVinculado;
  end;

{ Global Functions }

function GetListaDeclaracoesTransmissao(Doc: IXMLDocument): IXMLListaDeclaracoesTransmissao;
function LoadListaDeclaracoesTransmissao(const FileName: WideString): IXMLListaDeclaracoesTransmissao;
function NewListaDeclaracoesTransmissao: IXMLListaDeclaracoesTransmissao;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetListaDeclaracoesTransmissao(Doc: IXMLDocument): IXMLListaDeclaracoesTransmissao;
begin
  Result := Doc.GetDocBinding('ListaDeclaracoesTransmissao', TXMLListaDeclaracoesTransmissao, TargetNamespace) as IXMLListaDeclaracoesTransmissao;
end;

function LoadListaDeclaracoesTransmissao(const FileName: WideString): IXMLListaDeclaracoesTransmissao;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ListaDeclaracoesTransmissao', TXMLListaDeclaracoesTransmissao, TargetNamespace) as IXMLListaDeclaracoesTransmissao;
end;

function NewListaDeclaracoesTransmissao: IXMLListaDeclaracoesTransmissao;
begin
  Result := NewXMLDocument.GetDocBinding('ListaDeclaracoesTransmissao', TXMLListaDeclaracoesTransmissao, TargetNamespace) as IXMLListaDeclaracoesTransmissao;
end;

{ TXMLListaDeclaracoesTransmissao }

procedure TXMLListaDeclaracoesTransmissao.AfterConstruction;
begin
  RegisterChildNode('declaracao', TXMLDeclaracaoImportacaoTransmissao);
  ItemTag := 'declaracao';
  ItemInterface := IXMLDeclaracaoImportacaoTransmissao;
  inherited;
end;

function TXMLListaDeclaracoesTransmissao.Get_Declaracao(Index: Integer): IXMLDeclaracaoImportacaoTransmissao;
begin
  Result := List[Index] as IXMLDeclaracaoImportacaoTransmissao;
end;

function TXMLListaDeclaracoesTransmissao.Add: IXMLDeclaracaoImportacaoTransmissao;
begin
  Result := AddItem(-1) as IXMLDeclaracaoImportacaoTransmissao;
end;

function TXMLListaDeclaracoesTransmissao.Insert(const Index: Integer): IXMLDeclaracaoImportacaoTransmissao;
begin
  Result := AddItem(Index) as IXMLDeclaracaoImportacaoTransmissao;
end;

{ TXMLDeclaracaoImportacaoTransmissao }

procedure TXMLDeclaracaoImportacaoTransmissao.AfterConstruction;
begin
  RegisterChildNode('adicao', TXMLAdicao);
  RegisterChildNode('armazem', TXMLCargaArmazenada);
  RegisterChildNode('compensacaoCredito', TXMLCompensacaoCreditoTributo);
  RegisterChildNode('documentoInstrucaoDespacho', TXMLDocumentoInstrucaoDespacho);
  RegisterChildNode('embalagem', TXMLEmbalagemCarga);
  RegisterChildNode('informacaoMercosul', TXMLInformacaoMercosul);
  RegisterChildNode('pagamento', TXMLPagamentoTributos);
  RegisterChildNode('processo', TXMLProcessoVinculado);
  FAdicao := CreateCollection(TXMLAdicaoList, IXMLAdicao, 'adicao') as IXMLAdicaoList;
  FArmazem := CreateCollection(TXMLCargaArmazenadaList, IXMLCargaArmazenada, 'armazem') as IXMLCargaArmazenadaList;
  FCompensacaoCredito := CreateCollection(TXMLCompensacaoCreditoTributoList, IXMLCompensacaoCreditoTributo, 'compensacaoCredito') as IXMLCompensacaoCreditoTributoList;
  FDocumentoInstrucaoDespacho := CreateCollection(TXMLDocumentoInstrucaoDespachoList, IXMLDocumentoInstrucaoDespacho, 'documentoInstrucaoDespacho') as IXMLDocumentoInstrucaoDespachoList;
  FEmbalagem := CreateCollection(TXMLEmbalagemCargaList, IXMLEmbalagemCarga, 'embalagem') as IXMLEmbalagemCargaList;
  FInformacaoMercosul := CreateCollection(TXMLInformacaoMercosulList, IXMLInformacaoMercosul, 'informacaoMercosul') as IXMLInformacaoMercosulList;
  FPagamento := CreateCollection(TXMLPagamentoTributosList, IXMLPagamentoTributos, 'pagamento') as IXMLPagamentoTributosList;
  FProcesso := CreateCollection(TXMLProcessoVinculadoList, IXMLProcessoVinculado, 'processo') as IXMLProcessoVinculadoList;
  inherited;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_Adicao: IXMLAdicaoList;
begin
  Result := FAdicao;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_Armazem: IXMLCargaArmazenadaList;
begin
  Result := FArmazem;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CargaPesoBruto: WideString;
begin
  Result := ChildNodes['cargaPesoBruto'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CargaPesoBruto(Value: WideString);
begin
  ChildNodes['cargaPesoBruto'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CargaPesoLiquido: WideString;
begin
  Result := ChildNodes['cargaPesoLiquido'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CargaPesoLiquido(Value: WideString);
begin
  ChildNodes['cargaPesoLiquido'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoBandeiraTranspote: WideString;
begin
  Result := ChildNodes['codigoBandeiraTranspote'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoBandeiraTranspote(Value: WideString);
begin
  ChildNodes['codigoBandeiraTranspote'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoModalidadeDespacho: WideString;
begin
  Result := ChildNodes['codigoModalidadeDespacho'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoModalidadeDespacho(Value: WideString);
begin
  ChildNodes['codigoModalidadeDespacho'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoMoedaDespesas: WideString;
begin
  Result := ChildNodes['codigoMoedaDespesas'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoMoedaDespesas(Value: WideString);
begin
  ChildNodes['codigoMoedaDespesas'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoMoedaFrete: WideString;
begin
  Result := ChildNodes['codigoMoedaFrete'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoMoedaFrete(Value: WideString);
begin
  ChildNodes['codigoMoedaFrete'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoMoedaSeguro: WideString;
begin
  Result := ChildNodes['codigoMoedaSeguro'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoMoedaSeguro(Value: WideString);
begin
  ChildNodes['codigoMoedaSeguro'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoMotivoRetificacao: WideString;
begin
  Result := ChildNodes['codigoMotivoRetificacao'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoMotivoRetificacao(Value: WideString);
begin
  ChildNodes['codigoMotivoRetificacao'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoMotivoTransmissao: WideString;
begin
  Result := ChildNodes['codigoMotivoTransmissao'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoMotivoTransmissao(Value: WideString);
begin
  ChildNodes['codigoMotivoTransmissao'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoOrigemDI: WideString;
begin
  Result := ChildNodes['codigoOrigemDI'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoOrigemDI(Value: WideString);
begin
  ChildNodes['codigoOrigemDI'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoPaisImportador: WideString;
begin
  Result := ChildNodes['codigoPaisImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoPaisImportador(Value: WideString);
begin
  ChildNodes['codigoPaisImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoPaisProcedenciaCarga: WideString;
begin
  Result := ChildNodes['codigoPaisProcedenciaCarga'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoPaisProcedenciaCarga(Value: WideString);
begin
  ChildNodes['codigoPaisProcedenciaCarga'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoRecintoAlfandegado: WideString;
begin
  Result := ChildNodes['codigoRecintoAlfandegado'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoRecintoAlfandegado(Value: WideString);
begin
  ChildNodes['codigoRecintoAlfandegado'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoSetorArmazenamento: WideString;
begin
  Result := ChildNodes['codigoSetorArmazenamento'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoSetorArmazenamento(Value: WideString);
begin
  ChildNodes['codigoSetorArmazenamento'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoTipoAgenteCarga: WideString;
begin
  Result := ChildNodes['codigoTipoAgenteCarga'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoTipoAgenteCarga(Value: WideString);
begin
  ChildNodes['codigoTipoAgenteCarga'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoTipoConsignatario: WideString;
begin
  Result := ChildNodes['codigoTipoConsignatario'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoTipoConsignatario(Value: WideString);
begin
  ChildNodes['codigoTipoConsignatario'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoTipoDeclaracao: WideString;
begin
  Result := ChildNodes['codigoTipoDeclaracao'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoTipoDeclaracao(Value: WideString);
begin
  ChildNodes['codigoTipoDeclaracao'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoTipoDocumentoCarga: WideString;
begin
  Result := ChildNodes['codigoTipoDocumentoCarga'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoTipoDocumentoCarga(Value: WideString);
begin
  ChildNodes['codigoTipoDocumentoCarga'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoTipoImportador: WideString;
begin
  Result := ChildNodes['codigoTipoImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoTipoImportador(Value: WideString);
begin
  ChildNodes['codigoTipoImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoTipoManifesto: WideString;
begin
  Result := ChildNodes['codigoTipoManifesto'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoTipoManifesto(Value: WideString);
begin
  ChildNodes['codigoTipoManifesto'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoTipoPagamentoTributario: WideString;
begin
  Result := ChildNodes['codigoTipoPagamentoTributario'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoTipoPagamentoTributario(Value: WideString);
begin
  ChildNodes['codigoTipoPagamentoTributario'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoUrfCargaEntrada: WideString;
begin
  Result := ChildNodes['codigoUrfCargaEntrada'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoUrfCargaEntrada(Value: WideString);
begin
  ChildNodes['codigoUrfCargaEntrada'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoUrfDespacho: WideString;
begin
  Result := ChildNodes['codigoUrfDespacho'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoUrfDespacho(Value: WideString);
begin
  ChildNodes['codigoUrfDespacho'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoUtilizacaoDocumentoCarga: WideString;
begin
  Result := ChildNodes['codigoUtilizacaoDocumentoCarga'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoUtilizacaoDocumentoCarga(Value: WideString);
begin
  ChildNodes['codigoUtilizacaoDocumentoCarga'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CodigoViaTransporte: WideString;
begin
  Result := ChildNodes['codigoViaTransporte'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_CodigoViaTransporte(Value: WideString);
begin
  ChildNodes['codigoViaTransporte'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_CompensacaoCredito: IXMLCompensacaoCreditoTributoList;
begin
  Result := FCompensacaoCredito;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_DataChegadaCarga: WideString;
begin
  Result := ChildNodes['dataChegadaCarga'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_DataChegadaCarga(Value: WideString);
begin
  ChildNodes['dataChegadaCarga'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_DataEmbarque: WideString;
begin
  Result := ChildNodes['dataEmbarque'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_DataEmbarque(Value: WideString);
begin
  ChildNodes['dataEmbarque'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_DocumentoInstrucaoDespacho: IXMLDocumentoInstrucaoDespachoList;
begin
  Result := FDocumentoInstrucaoDespacho;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_Embalagem: IXMLEmbalagemCargaList;
begin
  Result := FEmbalagem;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_EnderecoBairroImportador: WideString;
begin
  Result := ChildNodes['enderecoBairroImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_EnderecoBairroImportador(Value: WideString);
begin
  ChildNodes['enderecoBairroImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_EnderecoCepImportador: WideString;
begin
  Result := ChildNodes['enderecoCepImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_EnderecoCepImportador(Value: WideString);
begin
  ChildNodes['enderecoCepImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_EnderecoComplementoImportador: WideString;
begin
  Result := ChildNodes['enderecoComplementoImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_EnderecoComplementoImportador(Value: WideString);
begin
  ChildNodes['enderecoComplementoImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_EnderecoLogradouroImportador: WideString;
begin
  Result := ChildNodes['enderecoLogradouroImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_EnderecoLogradouroImportador(Value: WideString);
begin
  ChildNodes['enderecoLogradouroImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_EnderecoMunicipioImportador: WideString;
begin
  Result := ChildNodes['enderecoMunicipioImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_EnderecoMunicipioImportador(Value: WideString);
begin
  ChildNodes['enderecoMunicipioImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_EnderecoNumeroImportador: WideString;
begin
  Result := ChildNodes['enderecoNumeroImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_EnderecoNumeroImportador(Value: WideString);
begin
  ChildNodes['enderecoNumeroImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_EnderecoUfImportador: WideString;
begin
  Result := ChildNodes['enderecoUfImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_EnderecoUfImportador(Value: WideString);
begin
  ChildNodes['enderecoUfImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_IdentificacaoDeclaracaoImportacao: WideString;
begin
  Result := ChildNodes['identificacaoDeclaracaoImportacao'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_IdentificacaoDeclaracaoImportacao(Value: WideString);
begin
  ChildNodes['identificacaoDeclaracaoImportacao'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_IndicadorMultimodalViaTransporte: WideString;
begin
  Result := ChildNodes['indicadorMultimodalViaTransporte'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_IndicadorMultimodalViaTransporte(Value: WideString);
begin
  ChildNodes['indicadorMultimodalViaTransporte'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_IndicadorOperacaoFundap: WideString;
begin
  Result := ChildNodes['indicadorOperacaoFundap'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_IndicadorOperacaoFundap(Value: WideString);
begin
  ChildNodes['indicadorOperacaoFundap'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_InformacaoMercosul: IXMLInformacaoMercosulList;
begin
  Result := FInformacaoMercosul;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_InformacoesComplementares: WideString;
begin
  Result := ChildNodes['informacoesComplementares'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_InformacoesComplementares(Value: WideString);
begin
  ChildNodes['informacoesComplementares'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NomeConsignatario: WideString;
begin
  Result := ChildNodes['nomeConsignatario'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NomeConsignatario(Value: WideString);
begin
  ChildNodes['nomeConsignatario'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NomeImportador: WideString;
begin
  Result := ChildNodes['nomeImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NomeImportador(Value: WideString);
begin
  ChildNodes['nomeImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NomeLocalEmbarque: WideString;
begin
  Result := ChildNodes['nomeLocalEmbarque'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NomeLocalEmbarque(Value: WideString);
begin
  ChildNodes['nomeLocalEmbarque'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NomeTransportadorViaTransporte: WideString;
begin
  Result := ChildNodes['nomeTransportadorViaTransporte'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NomeTransportadorViaTransporte(Value: WideString);
begin
  ChildNodes['nomeTransportadorViaTransporte'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NomeVeiculoViaTransporte: WideString;
begin
  Result := ChildNodes['nomeVeiculoViaTransporte'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NomeVeiculoViaTransporte(Value: WideString);
begin
  ChildNodes['nomeVeiculoViaTransporte'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroAgenteCarga: WideString;
begin
  Result := ChildNodes['numeroAgenteCarga'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroAgenteCarga(Value: WideString);
begin
  ChildNodes['numeroAgenteCarga'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroConsignatario: WideString;
begin
  Result := ChildNodes['numeroConsignatario'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroConsignatario(Value: WideString);
begin
  ChildNodes['numeroConsignatario'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroContaPagamentoTributario: WideString;
begin
  Result := ChildNodes['numeroContaPagamentoTributario'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroContaPagamentoTributario(Value: WideString);
begin
  ChildNodes['numeroContaPagamentoTributario'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroCpfRepresentanteLegal: WideString;
begin
  Result := ChildNodes['numeroCpfRepresentanteLegal'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroCpfRepresentanteLegal(Value: WideString);
begin
  ChildNodes['numeroCpfRepresentanteLegal'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroDeclaracaoRetificacao: WideString;
begin
  Result := ChildNodes['numeroDeclaracaoRetificacao'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroDeclaracaoRetificacao(Value: WideString);
begin
  ChildNodes['numeroDeclaracaoRetificacao'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroDocumentoCarga: WideString;
begin
  Result := ChildNodes['numeroDocumentoCarga'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroDocumentoCarga(Value: WideString);
begin
  ChildNodes['numeroDocumentoCarga'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroDocumentoCargaMaster: WideString;
begin
  Result := ChildNodes['numeroDocumentoCargaMaster'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroDocumentoCargaMaster(Value: WideString);
begin
  ChildNodes['numeroDocumentoCargaMaster'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroImportador: WideString;
begin
  Result := ChildNodes['numeroImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroImportador(Value: WideString);
begin
  ChildNodes['numeroImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroManifesto: WideString;
begin
  Result := ChildNodes['numeroManifesto'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroManifesto(Value: WideString);
begin
  ChildNodes['numeroManifesto'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroSequencialRetificacao: WideString;
begin
  Result := ChildNodes['numeroSequencialRetificacao'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroSequencialRetificacao(Value: WideString);
begin
  ChildNodes['numeroSequencialRetificacao'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroTelefoneImportador: WideString;
begin
  Result := ChildNodes['numeroTelefoneImportador'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroTelefoneImportador(Value: WideString);
begin
  ChildNodes['numeroTelefoneImportador'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_NumeroVeiculoViaTransporte: WideString;
begin
  Result := ChildNodes['numeroVeiculoViaTransporte'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_NumeroVeiculoViaTransporte(Value: WideString);
begin
  ChildNodes['numeroVeiculoViaTransporte'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_Pagamento: IXMLPagamentoTributosList;
begin
  Result := FPagamento;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_Processo: IXMLProcessoVinculadoList;
begin
  Result := FProcesso;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_TotalAdicoes: WideString;
begin
  Result := ChildNodes['totalAdicoes'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_TotalAdicoes(Value: WideString);
begin
  ChildNodes['totalAdicoes'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_ValorFreteTerritorioNacionalMoedaNegociada: WideString;
begin
  Result := ChildNodes['valorFreteTerritorioNacionalMoedaNegociada'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_ValorFreteTerritorioNacionalMoedaNegociada(Value: WideString);
begin
  ChildNodes['valorFreteTerritorioNacionalMoedaNegociada'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_ValorTotalDespesasMoedaNacional: WideString;
begin
  Result := ChildNodes['valorTotalDespesasMoedaNacional'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_ValorTotalDespesasMoedaNacional(Value: WideString);
begin
  ChildNodes['valorTotalDespesasMoedaNacional'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_ValorTotalDespesasMoedaNegociada: WideString;
begin
  Result := ChildNodes['valorTotalDespesasMoedaNegociada'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_ValorTotalDespesasMoedaNegociada(Value: WideString);
begin
  ChildNodes['valorTotalDespesasMoedaNegociada'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_ValorTotalFreteCollect: WideString;
begin
  Result := ChildNodes['valorTotalFreteCollect'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_ValorTotalFreteCollect(Value: WideString);
begin
  ChildNodes['valorTotalFreteCollect'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_ValorTotalFreteMoedaNacional: WideString;
begin
  Result := ChildNodes['valorTotalFreteMoedaNacional'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_ValorTotalFreteMoedaNacional(Value: WideString);
begin
  ChildNodes['valorTotalFreteMoedaNacional'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_ValorTotalFretePrepaid: WideString;
begin
  Result := ChildNodes['valorTotalFretePrepaid'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_ValorTotalFretePrepaid(Value: WideString);
begin
  ChildNodes['valorTotalFretePrepaid'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_ValorTotalMLEMoedaNacional: WideString;
begin
  Result := ChildNodes['valorTotalMLEMoedaNacional'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_ValorTotalMLEMoedaNacional(Value: WideString);
begin
  ChildNodes['valorTotalMLEMoedaNacional'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_ValorTotalSeguroMoedaNacional: WideString;
begin
  Result := ChildNodes['valorTotalSeguroMoedaNacional'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_ValorTotalSeguroMoedaNacional(Value: WideString);
begin
  ChildNodes['valorTotalSeguroMoedaNacional'].NodeValue := Value;
end;

function TXMLDeclaracaoImportacaoTransmissao.Get_ValorTotalSeguroMoedaNegociada: WideString;
begin
  Result := ChildNodes['valorTotalSeguroMoedaNegociada'].Text;
end;

procedure TXMLDeclaracaoImportacaoTransmissao.Set_ValorTotalSeguroMoedaNegociada(Value: WideString);
begin
  ChildNodes['valorTotalSeguroMoedaNegociada'].NodeValue := Value;
end;

{ TXMLAdicao }

procedure TXMLAdicao.AfterConstruction;
begin
  RegisterChildNode('acrescimo', TXMLAdicaoAcrescimoValorAduaneiro);
  RegisterChildNode('deducao', TXMLAdicaoDeducaoValorAduaneiro);
  RegisterChildNode('destaque', TXMLAdicaoDestaqueNCM);
  RegisterChildNode('documento', TXMLAdicaoDocumentoVinculado);
  RegisterChildNode('documentoMercosul', TXMLAdicaoDocumentoMercosul);
  RegisterChildNode('mercadoria', TXMLAdicaoDetalhamentoMercadoria);
  RegisterChildNode('tarifa', TXMLAdicaoDestaqueTarifario);
  RegisterChildNode('tributo', TXMLAdicaoTributo);
  RegisterChildNode('valoracaoAduaneira', TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira);
  FAcrescimo := CreateCollection(TXMLAdicaoAcrescimoValorAduaneiroList, IXMLAdicaoAcrescimoValorAduaneiro, 'acrescimo') as IXMLAdicaoAcrescimoValorAduaneiroList;
  FDeducao := CreateCollection(TXMLAdicaoDeducaoValorAduaneiroList, IXMLAdicaoDeducaoValorAduaneiro, 'deducao') as IXMLAdicaoDeducaoValorAduaneiroList;
  FDestaque := CreateCollection(TXMLAdicaoDestaqueNCMList, IXMLAdicaoDestaqueNCM, 'destaque') as IXMLAdicaoDestaqueNCMList;
  FDocumento := CreateCollection(TXMLAdicaoDocumentoVinculadoList, IXMLAdicaoDocumentoVinculado, 'documento') as IXMLAdicaoDocumentoVinculadoList;
  FDocumentoMercosul := CreateCollection(TXMLAdicaoDocumentoMercosulList, IXMLAdicaoDocumentoMercosul, 'documentoMercosul') as IXMLAdicaoDocumentoMercosulList;
  FMercadoria := CreateCollection(TXMLAdicaoDetalhamentoMercadoriaList, IXMLAdicaoDetalhamentoMercadoria, 'mercadoria') as IXMLAdicaoDetalhamentoMercadoriaList;
  FTarifa := CreateCollection(TXMLAdicaoDestaqueTarifarioList, IXMLAdicaoDestaqueTarifario, 'tarifa') as IXMLAdicaoDestaqueTarifarioList;
  FTributo := CreateCollection(TXMLAdicaoTributoList, IXMLAdicaoTributo, 'tributo') as IXMLAdicaoTributoList;
  FValoracaoAduaneira := CreateCollection(TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList, IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira, 'valoracaoAduaneira') as IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList;
  inherited;
end;

function TXMLAdicao.Get_Acrescimo: IXMLAdicaoAcrescimoValorAduaneiroList;
begin
  Result := FAcrescimo;
end;

function TXMLAdicao.Get_CodigoAcordoAladi: WideString;
begin
  Result := ChildNodes['codigoAcordoAladi'].Text;
end;

procedure TXMLAdicao.Set_CodigoAcordoAladi(Value: WideString);
begin
  ChildNodes['codigoAcordoAladi'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoAplicacaoMercadoria: WideString;
begin
  Result := ChildNodes['codigoAplicacaoMercadoria'].Text;
end;

procedure TXMLAdicao.Set_CodigoAplicacaoMercadoria(Value: WideString);
begin
  ChildNodes['codigoAplicacaoMercadoria'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoAusenciaFabricante: WideString;
begin
  Result := ChildNodes['codigoAusenciaFabricante'].Text;
end;

procedure TXMLAdicao.Set_CodigoAusenciaFabricante(Value: WideString);
begin
  ChildNodes['codigoAusenciaFabricante'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoCoberturaCambial: WideString;
begin
  Result := ChildNodes['codigoCoberturaCambial'].Text;
end;

procedure TXMLAdicao.Set_CodigoCoberturaCambial(Value: WideString);
begin
  ChildNodes['codigoCoberturaCambial'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoFundamentoLegalReduzido: WideString;
begin
  Result := ChildNodes['codigoFundamentoLegalReduzido'].Text;
end;

procedure TXMLAdicao.Set_CodigoFundamentoLegalReduzido(Value: WideString);
begin
  ChildNodes['codigoFundamentoLegalReduzido'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoFundamentoLegalRegime: WideString;
begin
  Result := ChildNodes['codigoFundamentoLegalRegime'].Text;
end;

procedure TXMLAdicao.Set_CodigoFundamentoLegalRegime(Value: WideString);
begin
  ChildNodes['codigoFundamentoLegalRegime'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoFundamentoLegalRegimePisCofins: WideString;
begin
  Result := ChildNodes['codigoFundamentoLegalRegimePisCofins'].Text;
end;

procedure TXMLAdicao.Set_CodigoFundamentoLegalRegimePisCofins(Value: WideString);
begin
  ChildNodes['codigoFundamentoLegalRegimePisCofins'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoIncotermsVenda: WideString;
begin
  Result := ChildNodes['codigoIncotermsVenda'].Text;
end;

procedure TXMLAdicao.Set_CodigoIncotermsVenda(Value: WideString);
begin
  ChildNodes['codigoIncotermsVenda'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoMercadoriaNBMSH: WideString;
begin
  Result := ChildNodes['codigoMercadoriaNBMSH'].Text;
end;

procedure TXMLAdicao.Set_CodigoMercadoriaNBMSH(Value: WideString);
begin
  ChildNodes['codigoMercadoriaNBMSH'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoMercadoriaNCM: WideString;
begin
  Result := ChildNodes['codigoMercadoriaNCM'].Text;
end;

procedure TXMLAdicao.Set_CodigoMercadoriaNCM(Value: WideString);
begin
  ChildNodes['codigoMercadoriaNCM'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoMercadoriaNaladiNCC: WideString;
begin
  Result := ChildNodes['codigoMercadoriaNaladiNCC'].Text;
end;

procedure TXMLAdicao.Set_CodigoMercadoriaNaladiNCC(Value: WideString);
begin
  ChildNodes['codigoMercadoriaNaladiNCC'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoMercadoriaNaladiSH: WideString;
begin
  Result := ChildNodes['codigoMercadoriaNaladiSH'].Text;
end;

procedure TXMLAdicao.Set_CodigoMercadoriaNaladiSH(Value: WideString);
begin
  ChildNodes['codigoMercadoriaNaladiSH'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoMetodoValoracao: WideString;
begin
  Result := ChildNodes['codigoMetodoValoracao'].Text;
end;

procedure TXMLAdicao.Set_CodigoMetodoValoracao(Value: WideString);
begin
  ChildNodes['codigoMetodoValoracao'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoMoedaFreteMercadoria: WideString;
begin
  Result := ChildNodes['codigoMoedaFreteMercadoria'].Text;
end;

procedure TXMLAdicao.Set_CodigoMoedaFreteMercadoria(Value: WideString);
begin
  ChildNodes['codigoMoedaFreteMercadoria'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoMoedaNegociada: WideString;
begin
  Result := ChildNodes['codigoMoedaNegociada'].Text;
end;

procedure TXMLAdicao.Set_CodigoMoedaNegociada(Value: WideString);
begin
  ChildNodes['codigoMoedaNegociada'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoMoedaSeguroMercadoria: WideString;
begin
  Result := ChildNodes['codigoMoedaSeguroMercadoria'].Text;
end;

procedure TXMLAdicao.Set_CodigoMoedaSeguroMercadoria(Value: WideString);
begin
  ChildNodes['codigoMoedaSeguroMercadoria'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoMotivoAdmissaoTemporaria: WideString;
begin
  Result := ChildNodes['codigoMotivoAdmissaoTemporaria'].Text;
end;

procedure TXMLAdicao.Set_CodigoMotivoAdmissaoTemporaria(Value: WideString);
begin
  ChildNodes['codigoMotivoAdmissaoTemporaria'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoMotivoSemCobertura: WideString;
begin
  Result := ChildNodes['codigoMotivoSemCobertura'].Text;
end;

procedure TXMLAdicao.Set_CodigoMotivoSemCobertura(Value: WideString);
begin
  ChildNodes['codigoMotivoSemCobertura'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoOrgaoFinanciamentoInternacional: WideString;
begin
  Result := ChildNodes['codigoOrgaoFinanciamentoInternacional'].Text;
end;

procedure TXMLAdicao.Set_CodigoOrgaoFinanciamentoInternacional(Value: WideString);
begin
  ChildNodes['codigoOrgaoFinanciamentoInternacional'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoPaisAquisicaoMercadoria: WideString;
begin
  Result := ChildNodes['codigoPaisAquisicaoMercadoria'].Text;
end;

procedure TXMLAdicao.Set_CodigoPaisAquisicaoMercadoria(Value: WideString);
begin
  ChildNodes['codigoPaisAquisicaoMercadoria'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoPaisOrigemMercadoria: WideString;
begin
  Result := ChildNodes['codigoPaisOrigemMercadoria'].Text;
end;

procedure TXMLAdicao.Set_CodigoPaisOrigemMercadoria(Value: WideString);
begin
  ChildNodes['codigoPaisOrigemMercadoria'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoPaisProcedenciaMercadoria: WideString;
begin
  Result := ChildNodes['codigoPaisProcedenciaMercadoria'].Text;
end;

procedure TXMLAdicao.Set_CodigoPaisProcedenciaMercadoria(Value: WideString);
begin
  ChildNodes['codigoPaisProcedenciaMercadoria'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoRegimeTriburarioPisCofins: WideString;
begin
  Result := ChildNodes['codigoRegimeTriburarioPisCofins'].Text;
end;

procedure TXMLAdicao.Set_CodigoRegimeTriburarioPisCofins(Value: WideString);
begin
  ChildNodes['codigoRegimeTriburarioPisCofins'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoRegimeTributacao: WideString;
begin
  Result := ChildNodes['codigoRegimeTributacao'].Text;
end;

procedure TXMLAdicao.Set_CodigoRegimeTributacao(Value: WideString);
begin
  ChildNodes['codigoRegimeTributacao'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoTipoAcordoTarifario: WideString;
begin
  Result := ChildNodes['codigoTipoAcordoTarifario'].Text;
end;

procedure TXMLAdicao.Set_CodigoTipoAcordoTarifario(Value: WideString);
begin
  ChildNodes['codigoTipoAcordoTarifario'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoURFEntradaMercadoria: WideString;
begin
  Result := ChildNodes['codigoURFEntradaMercadoria'].Text;
end;

procedure TXMLAdicao.Set_CodigoURFEntradaMercadoria(Value: WideString);
begin
  ChildNodes['codigoURFEntradaMercadoria'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoViaTransporte: WideString;
begin
  Result := ChildNodes['codigoViaTransporte'].Text;
end;

procedure TXMLAdicao.Set_CodigoViaTransporte(Value: WideString);
begin
  ChildNodes['codigoViaTransporte'].NodeValue := Value;
end;

function TXMLAdicao.Get_CodigoVinculoImportadorExportador: WideString;
begin
  Result := ChildNodes['codigoVinculoImportadorExportador'].Text;
end;

procedure TXMLAdicao.Set_CodigoVinculoImportadorExportador(Value: WideString);
begin
  ChildNodes['codigoVinculoImportadorExportador'].NodeValue := Value;
end;

function TXMLAdicao.Get_Deducao: IXMLAdicaoDeducaoValorAduaneiroList;
begin
  Result := FDeducao;
end;

function TXMLAdicao.Get_Destaque: IXMLAdicaoDestaqueNCMList;
begin
  Result := FDestaque;
end;

function TXMLAdicao.Get_Documento: IXMLAdicaoDocumentoVinculadoList;
begin
  Result := FDocumento;
end;

function TXMLAdicao.Get_DocumentoMercosul: IXMLAdicaoDocumentoMercosulList;
begin
  Result := FDocumentoMercosul;
end;

function TXMLAdicao.Get_EnderecoCidadeFabricante: WideString;
begin
  Result := ChildNodes['enderecoCidadeFabricante'].Text;
end;

procedure TXMLAdicao.Set_EnderecoCidadeFabricante(Value: WideString);
begin
  ChildNodes['enderecoCidadeFabricante'].NodeValue := Value;
end;

function TXMLAdicao.Get_EnderecoCidadeFornecedorEstrangeiro: WideString;
begin
  Result := ChildNodes['enderecoCidadeFornecedorEstrangeiro'].Text;
end;

procedure TXMLAdicao.Set_EnderecoCidadeFornecedorEstrangeiro(Value: WideString);
begin
  ChildNodes['enderecoCidadeFornecedorEstrangeiro'].NodeValue := Value;
end;

function TXMLAdicao.Get_EnderecoComplementoFabricante: WideString;
begin
  Result := ChildNodes['enderecoComplementoFabricante'].Text;
end;

procedure TXMLAdicao.Set_EnderecoComplementoFabricante(Value: WideString);
begin
  ChildNodes['enderecoComplementoFabricante'].NodeValue := Value;
end;

function TXMLAdicao.Get_EnderecoComplementoFornecedorEstrangeiro: WideString;
begin
  Result := ChildNodes['enderecoComplementoFornecedorEstrangeiro'].Text;
end;

procedure TXMLAdicao.Set_EnderecoComplementoFornecedorEstrangeiro(Value: WideString);
begin
  ChildNodes['enderecoComplementoFornecedorEstrangeiro'].NodeValue := Value;
end;

function TXMLAdicao.Get_EnderecoEstadoFabricante: WideString;
begin
  Result := ChildNodes['enderecoEstadoFabricante'].Text;
end;

procedure TXMLAdicao.Set_EnderecoEstadoFabricante(Value: WideString);
begin
  ChildNodes['enderecoEstadoFabricante'].NodeValue := Value;
end;

function TXMLAdicao.Get_EnderecoEstadoFornecedorEstrangeiro: WideString;
begin
  Result := ChildNodes['enderecoEstadoFornecedorEstrangeiro'].Text;
end;

procedure TXMLAdicao.Set_EnderecoEstadoFornecedorEstrangeiro(Value: WideString);
begin
  ChildNodes['enderecoEstadoFornecedorEstrangeiro'].NodeValue := Value;
end;

function TXMLAdicao.Get_EnderecoLogradouroFabricante: WideString;
begin
  Result := ChildNodes['enderecoLogradouroFabricante'].Text;
end;

procedure TXMLAdicao.Set_EnderecoLogradouroFabricante(Value: WideString);
begin
  ChildNodes['enderecoLogradouroFabricante'].NodeValue := Value;
end;

function TXMLAdicao.Get_EnderecoLogradouroFornecedorEstrangeiro: WideString;
begin
  Result := ChildNodes['enderecoLogradouroFornecedorEstrangeiro'].Text;
end;

procedure TXMLAdicao.Set_EnderecoLogradouroFornecedorEstrangeiro(Value: WideString);
begin
  ChildNodes['enderecoLogradouroFornecedorEstrangeiro'].NodeValue := Value;
end;

function TXMLAdicao.Get_EnderecoNumeroFabricante: WideString;
begin
  Result := ChildNodes['enderecoNumeroFabricante'].Text;
end;

procedure TXMLAdicao.Set_EnderecoNumeroFabricante(Value: WideString);
begin
  ChildNodes['enderecoNumeroFabricante'].NodeValue := Value;
end;

function TXMLAdicao.Get_EnderecoNumeroFornecedorEstrangeiro: WideString;
begin
  Result := ChildNodes['enderecoNumeroFornecedorEstrangeiro'].Text;
end;

procedure TXMLAdicao.Set_EnderecoNumeroFornecedorEstrangeiro(Value: WideString);
begin
  ChildNodes['enderecoNumeroFornecedorEstrangeiro'].NodeValue := Value;
end;

function TXMLAdicao.Get_IndicadorBemEncomenda: WideString;
begin
  Result := ChildNodes['indicadorBemEncomenda'].Text;
end;

procedure TXMLAdicao.Set_IndicadorBemEncomenda(Value: WideString);
begin
  ChildNodes['indicadorBemEncomenda'].NodeValue := Value;
end;

function TXMLAdicao.Get_IndicadorMaterialUsado: WideString;
begin
  Result := ChildNodes['indicadorMaterialUsado'].Text;
end;

procedure TXMLAdicao.Set_IndicadorMaterialUsado(Value: WideString);
begin
  ChildNodes['indicadorMaterialUsado'].NodeValue := Value;
end;

function TXMLAdicao.Get_IndicadorMultimodal: WideString;
begin
  Result := ChildNodes['indicadorMultimodal'].Text;
end;

procedure TXMLAdicao.Set_IndicadorMultimodal(Value: WideString);
begin
  ChildNodes['indicadorMultimodal'].NodeValue := Value;
end;

function TXMLAdicao.Get_IndicadorTipoCertificado: WideString;
begin
  Result := ChildNodes['indicadorTipoCertificado'].Text;
end;

procedure TXMLAdicao.Set_IndicadorTipoCertificado(Value: WideString);
begin
  ChildNodes['indicadorTipoCertificado'].NodeValue := Value;
end;

function TXMLAdicao.Get_Mercadoria: IXMLAdicaoDetalhamentoMercadoriaList;
begin
  Result := FMercadoria;
end;

function TXMLAdicao.Get_NomeFabricanteMercadoria: WideString;
begin
  Result := ChildNodes['nomeFabricanteMercadoria'].Text;
end;

procedure TXMLAdicao.Set_NomeFabricanteMercadoria(Value: WideString);
begin
  ChildNodes['nomeFabricanteMercadoria'].NodeValue := Value;
end;

function TXMLAdicao.Get_NomeFornecedorEstrangeiro: WideString;
begin
  Result := ChildNodes['nomeFornecedorEstrangeiro'].Text;
end;

procedure TXMLAdicao.Set_NomeFornecedorEstrangeiro(Value: WideString);
begin
  ChildNodes['nomeFornecedorEstrangeiro'].NodeValue := Value;
end;

function TXMLAdicao.Get_NomeLocalCondicaoVenda: WideString;
begin
  Result := ChildNodes['nomeLocalCondicaoVenda'].Text;
end;

procedure TXMLAdicao.Set_NomeLocalCondicaoVenda(Value: WideString);
begin
  ChildNodes['nomeLocalCondicaoVenda'].NodeValue := Value;
end;

function TXMLAdicao.Get_NumeroAdicao: WideString;
begin
  Result := ChildNodes['numeroAdicao'].Text;
end;

procedure TXMLAdicao.Set_NumeroAdicao(Value: WideString);
begin
  ChildNodes['numeroAdicao'].NodeValue := Value;
end;

function TXMLAdicao.Get_NumeroDocumentoReducao: WideString;
begin
  Result := ChildNodes['numeroDocumentoReducao'].Text;
end;

procedure TXMLAdicao.Set_NumeroDocumentoReducao(Value: WideString);
begin
  ChildNodes['numeroDocumentoReducao'].NodeValue := Value;
end;

function TXMLAdicao.Get_NumeroIdentificacaoLI: WideString;
begin
  Result := ChildNodes['numeroIdentificacaoLI'].Text;
end;

procedure TXMLAdicao.Set_NumeroIdentificacaoLI(Value: WideString);
begin
  ChildNodes['numeroIdentificacaoLI'].NodeValue := Value;
end;

function TXMLAdicao.Get_NumeroROF: WideString;
begin
  Result := ChildNodes['numeroROF'].Text;
end;

procedure TXMLAdicao.Set_NumeroROF(Value: WideString);
begin
  ChildNodes['numeroROF'].NodeValue := Value;
end;

function TXMLAdicao.Get_PercentualCoeficienteReducaoII: WideString;
begin
  Result := ChildNodes['percentualCoeficienteReducaoII'].Text;
end;

procedure TXMLAdicao.Set_PercentualCoeficienteReducaoII(Value: WideString);
begin
  ChildNodes['percentualCoeficienteReducaoII'].NodeValue := Value;
end;

function TXMLAdicao.Get_PesoLiquidoMercadoria: WideString;
begin
  Result := ChildNodes['pesoLiquidoMercadoria'].Text;
end;

procedure TXMLAdicao.Set_PesoLiquidoMercadoria(Value: WideString);
begin
  ChildNodes['pesoLiquidoMercadoria'].NodeValue := Value;
end;

function TXMLAdicao.Get_QuantidadeUnidadeEstatistica: WideString;
begin
  Result := ChildNodes['quantidadeUnidadeEstatistica'].Text;
end;

procedure TXMLAdicao.Set_QuantidadeUnidadeEstatistica(Value: WideString);
begin
  ChildNodes['quantidadeUnidadeEstatistica'].NodeValue := Value;
end;

function TXMLAdicao.Get_Tarifa: IXMLAdicaoDestaqueTarifarioList;
begin
  Result := FTarifa;
end;

function TXMLAdicao.Get_TextoComplementoValorAduaneiro: WideString;
begin
  Result := ChildNodes['textoComplementoValorAduaneiro'].Text;
end;

procedure TXMLAdicao.Set_TextoComplementoValorAduaneiro(Value: WideString);
begin
  ChildNodes['textoComplementoValorAduaneiro'].NodeValue := Value;
end;

function TXMLAdicao.Get_TipoAgente: WideString;
begin
  Result := ChildNodes['tipoAgente'].Text;
end;

procedure TXMLAdicao.Set_TipoAgente(Value: WideString);
begin
  ChildNodes['tipoAgente'].NodeValue := Value;
end;

function TXMLAdicao.Get_Tributo: IXMLAdicaoTributoList;
begin
  Result := FTributo;
end;

function TXMLAdicao.Get_ValorAliquotaIcms: WideString;
begin
  Result := ChildNodes['valorAliquotaIcms'].Text;
end;

procedure TXMLAdicao.Set_ValorAliquotaIcms(Value: WideString);
begin
  ChildNodes['valorAliquotaIcms'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorCalculoDCRDolar: WideString;
begin
  Result := ChildNodes['valorCalculoDCRDolar'].Text;
end;

procedure TXMLAdicao.Set_ValorCalculoDCRDolar(Value: WideString);
begin
  ChildNodes['valorCalculoDCRDolar'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorFinanciadoSuperior360: WideString;
begin
  Result := ChildNodes['valorFinanciadoSuperior360'].Text;
end;

procedure TXMLAdicao.Set_ValorFinanciadoSuperior360(Value: WideString);
begin
  ChildNodes['valorFinanciadoSuperior360'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorFreteMercadoriaMoedaNacional: WideString;
begin
  Result := ChildNodes['valorFreteMercadoriaMoedaNacional'].Text;
end;

procedure TXMLAdicao.Set_ValorFreteMercadoriaMoedaNacional(Value: WideString);
begin
  ChildNodes['valorFreteMercadoriaMoedaNacional'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorFreteMercadoriaMoedaNegociada: WideString;
begin
  Result := ChildNodes['valorFreteMercadoriaMoedaNegociada'].Text;
end;

procedure TXMLAdicao.Set_ValorFreteMercadoriaMoedaNegociada(Value: WideString);
begin
  ChildNodes['valorFreteMercadoriaMoedaNegociada'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorIICalculadoDCRMoedaNacional: WideString;
begin
  Result := ChildNodes['valorIICalculadoDCRMoedaNacional'].Text;
end;

procedure TXMLAdicao.Set_ValorIICalculadoDCRMoedaNacional(Value: WideString);
begin
  ChildNodes['valorIICalculadoDCRMoedaNacional'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorIIDevidoZFM: WideString;
begin
  Result := ChildNodes['valorIIDevidoZFM'].Text;
end;

procedure TXMLAdicao.Set_ValorIIDevidoZFM(Value: WideString);
begin
  ChildNodes['valorIIDevidoZFM'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorIIaReceberZFM: WideString;
begin
  Result := ChildNodes['valorIIaReceberZFM'].Text;
end;

procedure TXMLAdicao.Set_ValorIIaReceberZFM(Value: WideString);
begin
  ChildNodes['valorIIaReceberZFM'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorMercadoriaCondicaoVenda: WideString;
begin
  Result := ChildNodes['valorMercadoriaCondicaoVenda'].Text;
end;

procedure TXMLAdicao.Set_ValorMercadoriaCondicaoVenda(Value: WideString);
begin
  ChildNodes['valorMercadoriaCondicaoVenda'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorMercadoriaEmbarqueMoedaNacional: WideString;
begin
  Result := ChildNodes['valorMercadoriaEmbarqueMoedaNacional'].Text;
end;

procedure TXMLAdicao.Set_ValorMercadoriaEmbarqueMoedaNacional(Value: WideString);
begin
  ChildNodes['valorMercadoriaEmbarqueMoedaNacional'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorMercadoriaVendaMoedaNacional: WideString;
begin
  Result := ChildNodes['valorMercadoriaVendaMoedaNacional'].Text;
end;

procedure TXMLAdicao.Set_ValorMercadoriaVendaMoedaNacional(Value: WideString);
begin
  ChildNodes['valorMercadoriaVendaMoedaNacional'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorSeguroMercadoriaMoedaNacional: WideString;
begin
  Result := ChildNodes['valorSeguroMercadoriaMoedaNacional'].Text;
end;

procedure TXMLAdicao.Set_ValorSeguroMercadoriaMoedaNacional(Value: WideString);
begin
  ChildNodes['valorSeguroMercadoriaMoedaNacional'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValorSeguroMercadoriaMoedaNegociada: WideString;
begin
  Result := ChildNodes['valorSeguroMercadoriaMoedaNegociada'].Text;
end;

procedure TXMLAdicao.Set_ValorSeguroMercadoriaMoedaNegociada(Value: WideString);
begin
  ChildNodes['valorSeguroMercadoriaMoedaNegociada'].NodeValue := Value;
end;

function TXMLAdicao.Get_ValoracaoAduaneira: IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList;
begin
  Result := FValoracaoAduaneira;
end;

{ TXMLAdicaoList }

function TXMLAdicaoList.Add: IXMLAdicao;
begin
  Result := AddItem(-1) as IXMLAdicao;
end;

function TXMLAdicaoList.Insert(const Index: Integer): IXMLAdicao;
begin
  Result := AddItem(Index) as IXMLAdicao;
end;
function TXMLAdicaoList.Get_Item(Index: Integer): IXMLAdicao;
begin
  Result := List[Index] as IXMLAdicao;
end;

{ TXMLAdicaoAcrescimoValorAduaneiro }

function TXMLAdicaoAcrescimoValorAduaneiro.Get_CodigoMetodoAcrescimoValor: WideString;
begin
  Result := ChildNodes['codigoMetodoAcrescimoValor'].Text;
end;

procedure TXMLAdicaoAcrescimoValorAduaneiro.Set_CodigoMetodoAcrescimoValor(Value: WideString);
begin
  ChildNodes['codigoMetodoAcrescimoValor'].NodeValue := Value;
end;

function TXMLAdicaoAcrescimoValorAduaneiro.Get_CodigoMoedaNegociadaAcrescimo: WideString;
begin
  Result := ChildNodes['codigoMoedaNegociadaAcrescimo'].Text;
end;

procedure TXMLAdicaoAcrescimoValorAduaneiro.Set_CodigoMoedaNegociadaAcrescimo(Value: WideString);
begin
  ChildNodes['codigoMoedaNegociadaAcrescimo'].NodeValue := Value;
end;

function TXMLAdicaoAcrescimoValorAduaneiro.Get_ValorAcrescimoMoedaNacional: WideString;
begin
  Result := ChildNodes['valorAcrescimoMoedaNacional'].Text;
end;

procedure TXMLAdicaoAcrescimoValorAduaneiro.Set_ValorAcrescimoMoedaNacional(Value: WideString);
begin
  ChildNodes['valorAcrescimoMoedaNacional'].NodeValue := Value;
end;

function TXMLAdicaoAcrescimoValorAduaneiro.Get_ValorAcrescimoMoedaNegociada: WideString;
begin
  Result := ChildNodes['valorAcrescimoMoedaNegociada'].Text;
end;

procedure TXMLAdicaoAcrescimoValorAduaneiro.Set_ValorAcrescimoMoedaNegociada(Value: WideString);
begin
  ChildNodes['valorAcrescimoMoedaNegociada'].NodeValue := Value;
end;

{ TXMLAdicaoAcrescimoValorAduaneiroList }

function TXMLAdicaoAcrescimoValorAduaneiroList.Add: IXMLAdicaoAcrescimoValorAduaneiro;
begin
  Result := AddItem(-1) as IXMLAdicaoAcrescimoValorAduaneiro;
end;

function TXMLAdicaoAcrescimoValorAduaneiroList.Insert(const Index: Integer): IXMLAdicaoAcrescimoValorAduaneiro;
begin
  Result := AddItem(Index) as IXMLAdicaoAcrescimoValorAduaneiro;
end;
function TXMLAdicaoAcrescimoValorAduaneiroList.Get_Item(Index: Integer): IXMLAdicaoAcrescimoValorAduaneiro;
begin
  Result := List[Index] as IXMLAdicaoAcrescimoValorAduaneiro;
end;

{ TXMLAdicaoDeducaoValorAduaneiro }

function TXMLAdicaoDeducaoValorAduaneiro.Get_CodigoMetodoDeducaoValor: WideString;
begin
  Result := ChildNodes['codigoMetodoDeducaoValor'].Text;
end;

procedure TXMLAdicaoDeducaoValorAduaneiro.Set_CodigoMetodoDeducaoValor(Value: WideString);
begin
  ChildNodes['codigoMetodoDeducaoValor'].NodeValue := Value;
end;

function TXMLAdicaoDeducaoValorAduaneiro.Get_CodigoMoedaNegociadaDeducao: WideString;
begin
  Result := ChildNodes['codigoMoedaNegociadaDeducao'].Text;
end;

procedure TXMLAdicaoDeducaoValorAduaneiro.Set_CodigoMoedaNegociadaDeducao(Value: WideString);
begin
  ChildNodes['codigoMoedaNegociadaDeducao'].NodeValue := Value;
end;

function TXMLAdicaoDeducaoValorAduaneiro.Get_ValorDeducaoMoedaNacional: WideString;
begin
  Result := ChildNodes['valorDeducaoMoedaNacional'].Text;
end;

procedure TXMLAdicaoDeducaoValorAduaneiro.Set_ValorDeducaoMoedaNacional(Value: WideString);
begin
  ChildNodes['valorDeducaoMoedaNacional'].NodeValue := Value;
end;

function TXMLAdicaoDeducaoValorAduaneiro.Get_ValorDeducaoMoedaNegociada: WideString;
begin
  Result := ChildNodes['valorDeducaoMoedaNegociada'].Text;
end;

procedure TXMLAdicaoDeducaoValorAduaneiro.Set_ValorDeducaoMoedaNegociada(Value: WideString);
begin
  ChildNodes['valorDeducaoMoedaNegociada'].NodeValue := Value;
end;

{ TXMLAdicaoDeducaoValorAduaneiroList }

function TXMLAdicaoDeducaoValorAduaneiroList.Add: IXMLAdicaoDeducaoValorAduaneiro;
begin
  Result := AddItem(-1) as IXMLAdicaoDeducaoValorAduaneiro;
end;

function TXMLAdicaoDeducaoValorAduaneiroList.Insert(const Index: Integer): IXMLAdicaoDeducaoValorAduaneiro;
begin
  Result := AddItem(Index) as IXMLAdicaoDeducaoValorAduaneiro;
end;
function TXMLAdicaoDeducaoValorAduaneiroList.Get_Item(Index: Integer): IXMLAdicaoDeducaoValorAduaneiro;
begin
  Result := List[Index] as IXMLAdicaoDeducaoValorAduaneiro;
end;

{ TXMLAdicaoDestaqueNCM }

function TXMLAdicaoDestaqueNCM.Get_NumeroDestaqueNCM: WideString;
begin
  Result := ChildNodes['numeroDestaqueNCM'].Text;
end;

procedure TXMLAdicaoDestaqueNCM.Set_NumeroDestaqueNCM(Value: WideString);
begin
  ChildNodes['numeroDestaqueNCM'].NodeValue := Value;
end;

{ TXMLAdicaoDestaqueNCMList }

function TXMLAdicaoDestaqueNCMList.Add: IXMLAdicaoDestaqueNCM;
begin
  Result := AddItem(-1) as IXMLAdicaoDestaqueNCM;
end;

function TXMLAdicaoDestaqueNCMList.Insert(const Index: Integer): IXMLAdicaoDestaqueNCM;
begin
  Result := AddItem(Index) as IXMLAdicaoDestaqueNCM;
end;
function TXMLAdicaoDestaqueNCMList.Get_Item(Index: Integer): IXMLAdicaoDestaqueNCM;
begin
  Result := List[Index] as IXMLAdicaoDestaqueNCM;
end;

{ TXMLAdicaoDocumentoVinculado }

function TXMLAdicaoDocumentoVinculado.Get_CodigoTipoDocumentoVinculado: WideString;
begin
  Result := ChildNodes['codigoTipoDocumentoVinculado'].Text;
end;

procedure TXMLAdicaoDocumentoVinculado.Set_CodigoTipoDocumentoVinculado(Value: WideString);
begin
  ChildNodes['codigoTipoDocumentoVinculado'].NodeValue := Value;
end;

function TXMLAdicaoDocumentoVinculado.Get_NumeroDocumentoVinculado: WideString;
begin
  Result := ChildNodes['numeroDocumentoVinculado'].Text;
end;

procedure TXMLAdicaoDocumentoVinculado.Set_NumeroDocumentoVinculado(Value: WideString);
begin
  ChildNodes['numeroDocumentoVinculado'].NodeValue := Value;
end;

{ TXMLAdicaoDocumentoVinculadoList }

function TXMLAdicaoDocumentoVinculadoList.Add: IXMLAdicaoDocumentoVinculado;
begin
  Result := AddItem(-1) as IXMLAdicaoDocumentoVinculado;
end;

function TXMLAdicaoDocumentoVinculadoList.Insert(const Index: Integer): IXMLAdicaoDocumentoVinculado;
begin
  Result := AddItem(Index) as IXMLAdicaoDocumentoVinculado;
end;
function TXMLAdicaoDocumentoVinculadoList.Get_Item(Index: Integer): IXMLAdicaoDocumentoVinculado;
begin
  Result := List[Index] as IXMLAdicaoDocumentoVinculado;
end;

{ TXMLAdicaoDocumentoMercosul }

function TXMLAdicaoDocumentoMercosul.Get_CodigoPaisCertificado: WideString;
begin
  Result := ChildNodes['codigoPaisCertificado'].Text;
end;

procedure TXMLAdicaoDocumentoMercosul.Set_CodigoPaisCertificado(Value: WideString);
begin
  ChildNodes['codigoPaisCertificado'].NodeValue := Value;
end;

function TXMLAdicaoDocumentoMercosul.Get_NumeroDEADMercosul: WideString;
begin
  Result := ChildNodes['numeroDEADMercosul'].Text;
end;

procedure TXMLAdicaoDocumentoMercosul.Set_NumeroDEADMercosul(Value: WideString);
begin
  ChildNodes['numeroDEADMercosul'].NodeValue := Value;
end;

function TXMLAdicaoDocumentoMercosul.Get_NumeroDICertificado: WideString;
begin
  Result := ChildNodes['numeroDICertificado'].Text;
end;

procedure TXMLAdicaoDocumentoMercosul.Set_NumeroDICertificado(Value: WideString);
begin
  ChildNodes['numeroDICertificado'].NodeValue := Value;
end;

function TXMLAdicaoDocumentoMercosul.Get_NumeroItemCertificado: WideString;
begin
  Result := ChildNodes['numeroItemCertificado'].Text;
end;

procedure TXMLAdicaoDocumentoMercosul.Set_NumeroItemCertificado(Value: WideString);
begin
  ChildNodes['numeroItemCertificado'].NodeValue := Value;
end;

function TXMLAdicaoDocumentoMercosul.Get_NumeroREADFinal: WideString;
begin
  Result := ChildNodes['numeroREADFinal'].Text;
end;

procedure TXMLAdicaoDocumentoMercosul.Set_NumeroREADFinal(Value: WideString);
begin
  ChildNodes['numeroREADFinal'].NodeValue := Value;
end;

function TXMLAdicaoDocumentoMercosul.Get_NumeroREADInicial: WideString;
begin
  Result := ChildNodes['numeroREADInicial'].Text;
end;

procedure TXMLAdicaoDocumentoMercosul.Set_NumeroREADInicial(Value: WideString);
begin
  ChildNodes['numeroREADInicial'].NodeValue := Value;
end;

function TXMLAdicaoDocumentoMercosul.Get_QuantidadeUnidadeMercosul: WideString;
begin
  Result := ChildNodes['quantidadeUnidadeMercosul'].Text;
end;

procedure TXMLAdicaoDocumentoMercosul.Set_QuantidadeUnidadeMercosul(Value: WideString);
begin
  ChildNodes['quantidadeUnidadeMercosul'].NodeValue := Value;
end;

{ TXMLAdicaoDocumentoMercosulList }

function TXMLAdicaoDocumentoMercosulList.Add: IXMLAdicaoDocumentoMercosul;
begin
  Result := AddItem(-1) as IXMLAdicaoDocumentoMercosul;
end;

function TXMLAdicaoDocumentoMercosulList.Insert(const Index: Integer): IXMLAdicaoDocumentoMercosul;
begin
  Result := AddItem(Index) as IXMLAdicaoDocumentoMercosul;
end;
function TXMLAdicaoDocumentoMercosulList.Get_Item(Index: Integer): IXMLAdicaoDocumentoMercosul;
begin
  Result := List[Index] as IXMLAdicaoDocumentoMercosul;
end;

{ TXMLAdicaoDetalhamentoMercadoria }

function TXMLAdicaoDetalhamentoMercadoria.Get_NomeUnidadeMedidaComercializada: WideString;
begin
  Result := ChildNodes['nomeUnidadeMedidaComercializada'].Text;
end;

procedure TXMLAdicaoDetalhamentoMercadoria.Set_NomeUnidadeMedidaComercializada(Value: WideString);
begin
  ChildNodes['nomeUnidadeMedidaComercializada'].NodeValue := Value;
end;

function TXMLAdicaoDetalhamentoMercadoria.Get_QuantidadeMercadoriaUnidadeComercializada: WideString;
begin
  Result := ChildNodes['quantidadeMercadoriaUnidadeComercializada'].Text;
end;

procedure TXMLAdicaoDetalhamentoMercadoria.Set_QuantidadeMercadoriaUnidadeComercializada(Value: WideString);
begin
  ChildNodes['quantidadeMercadoriaUnidadeComercializada'].NodeValue := Value;
end;

function TXMLAdicaoDetalhamentoMercadoria.Get_TextoDetalhamentoMercadoria: WideString;
begin
  Result := ChildNodes['textoDetalhamentoMercadoria'].Text;
end;

procedure TXMLAdicaoDetalhamentoMercadoria.Set_TextoDetalhamentoMercadoria(Value: WideString);
begin
  ChildNodes['textoDetalhamentoMercadoria'].NodeValue := Value;
end;

function TXMLAdicaoDetalhamentoMercadoria.Get_ValorUnidadeLocalEmbarque: WideString;
begin
  Result := ChildNodes['valorUnidadeLocalEmbarque'].Text;
end;

procedure TXMLAdicaoDetalhamentoMercadoria.Set_ValorUnidadeLocalEmbarque(Value: WideString);
begin
  ChildNodes['valorUnidadeLocalEmbarque'].NodeValue := Value;
end;

function TXMLAdicaoDetalhamentoMercadoria.Get_ValorUnidadeMedidaCondicaoVenda: WideString;
begin
  Result := ChildNodes['valorUnidadeMedidaCondicaoVenda'].Text;
end;

procedure TXMLAdicaoDetalhamentoMercadoria.Set_ValorUnidadeMedidaCondicaoVenda(Value: WideString);
begin
  ChildNodes['valorUnidadeMedidaCondicaoVenda'].NodeValue := Value;
end;

{ TXMLAdicaoDetalhamentoMercadoriaList }

function TXMLAdicaoDetalhamentoMercadoriaList.Add: IXMLAdicaoDetalhamentoMercadoria;
begin
  Result := AddItem(-1) as IXMLAdicaoDetalhamentoMercadoria;
end;

function TXMLAdicaoDetalhamentoMercadoriaList.Insert(const Index: Integer): IXMLAdicaoDetalhamentoMercadoria;
begin
  Result := AddItem(Index) as IXMLAdicaoDetalhamentoMercadoria;
end;
function TXMLAdicaoDetalhamentoMercadoriaList.Get_Item(Index: Integer): IXMLAdicaoDetalhamentoMercadoria;
begin
  Result := List[Index] as IXMLAdicaoDetalhamentoMercadoria;
end;

{ TXMLAdicaoDestaqueTarifario }

function TXMLAdicaoDestaqueTarifario.Get_CodigoAssuntoVinculado: WideString;
begin
  Result := ChildNodes['codigoAssuntoVinculado'].Text;
end;

procedure TXMLAdicaoDestaqueTarifario.Set_CodigoAssuntoVinculado(Value: WideString);
begin
  ChildNodes['codigoAssuntoVinculado'].NodeValue := Value;
end;

function TXMLAdicaoDestaqueTarifario.Get_DataAnoAtoVinculado: WideString;
begin
  Result := ChildNodes['dataAnoAtoVinculado'].Text;
end;

procedure TXMLAdicaoDestaqueTarifario.Set_DataAnoAtoVinculado(Value: WideString);
begin
  ChildNodes['dataAnoAtoVinculado'].NodeValue := Value;
end;

function TXMLAdicaoDestaqueTarifario.Get_NumeroAtoVinculado: WideString;
begin
  Result := ChildNodes['numeroAtoVinculado'].Text;
end;

procedure TXMLAdicaoDestaqueTarifario.Set_NumeroAtoVinculado(Value: WideString);
begin
  ChildNodes['numeroAtoVinculado'].NodeValue := Value;
end;

function TXMLAdicaoDestaqueTarifario.Get_NumeroEXAtoVinculado: WideString;
begin
  Result := ChildNodes['numeroEXAtoVinculado'].Text;
end;

procedure TXMLAdicaoDestaqueTarifario.Set_NumeroEXAtoVinculado(Value: WideString);
begin
  ChildNodes['numeroEXAtoVinculado'].NodeValue := Value;
end;

function TXMLAdicaoDestaqueTarifario.Get_SiglaOrgaoAtoVinculado: WideString;
begin
  Result := ChildNodes['siglaOrgaoAtoVinculado'].Text;
end;

procedure TXMLAdicaoDestaqueTarifario.Set_SiglaOrgaoAtoVinculado(Value: WideString);
begin
  ChildNodes['siglaOrgaoAtoVinculado'].NodeValue := Value;
end;

function TXMLAdicaoDestaqueTarifario.Get_SiglaTipoAtoVinculado: WideString;
begin
  Result := ChildNodes['siglaTipoAtoVinculado'].Text;
end;

procedure TXMLAdicaoDestaqueTarifario.Set_SiglaTipoAtoVinculado(Value: WideString);
begin
  ChildNodes['siglaTipoAtoVinculado'].NodeValue := Value;
end;

{ TXMLAdicaoDestaqueTarifarioList }

function TXMLAdicaoDestaqueTarifarioList.Add: IXMLAdicaoDestaqueTarifario;
begin
  Result := AddItem(-1) as IXMLAdicaoDestaqueTarifario;
end;

function TXMLAdicaoDestaqueTarifarioList.Insert(const Index: Integer): IXMLAdicaoDestaqueTarifario;
begin
  Result := AddItem(Index) as IXMLAdicaoDestaqueTarifario;
end;
function TXMLAdicaoDestaqueTarifarioList.Get_Item(Index: Integer): IXMLAdicaoDestaqueTarifario;
begin
  Result := List[Index] as IXMLAdicaoDestaqueTarifario;
end;

{ TXMLAdicaoTributo }

function TXMLAdicaoTributo.Get_CodigoReceitaImposto: WideString;
begin
  Result := ChildNodes['codigoReceitaImposto'].Text;
end;

procedure TXMLAdicaoTributo.Set_CodigoReceitaImposto(Value: WideString);
begin
  ChildNodes['codigoReceitaImposto'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_CodigoTipoAliquotaIPT: WideString;
begin
  Result := ChildNodes['codigoTipoAliquotaIPT'].Text;
end;

procedure TXMLAdicaoTributo.Set_CodigoTipoAliquotaIPT(Value: WideString);
begin
  ChildNodes['codigoTipoAliquotaIPT'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_CodigoTipoBeneficioIPI: WideString;
begin
  Result := ChildNodes['codigoTipoBeneficioIPI'].Text;
end;

procedure TXMLAdicaoTributo.Set_CodigoTipoBeneficioIPI(Value: WideString);
begin
  ChildNodes['codigoTipoBeneficioIPI'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_CodigoTipoDireito: WideString;
begin
  Result := ChildNodes['codigoTipoDireito'].Text;
end;

procedure TXMLAdicaoTributo.Set_CodigoTipoDireito(Value: WideString);
begin
  ChildNodes['codigoTipoDireito'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_CodigoTipoRecipiente: WideString;
begin
  Result := ChildNodes['codigoTipoRecipiente'].Text;
end;

procedure TXMLAdicaoTributo.Set_CodigoTipoRecipiente(Value: WideString);
begin
  ChildNodes['codigoTipoRecipiente'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_NomeUnidadeEspecificaAliquotaIPT: WideString;
begin
  Result := ChildNodes['nomeUnidadeEspecificaAliquotaIPT'].Text;
end;

procedure TXMLAdicaoTributo.Set_NomeUnidadeEspecificaAliquotaIPT(Value: WideString);
begin
  ChildNodes['nomeUnidadeEspecificaAliquotaIPT'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_NumeroNotaComplementarTIPI: WideString;
begin
  Result := ChildNodes['numeroNotaComplementarTIPI'].Text;
end;

procedure TXMLAdicaoTributo.Set_NumeroNotaComplementarTIPI(Value: WideString);
begin
  ChildNodes['numeroNotaComplementarTIPI'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_PercentualAliquotaAcordoTarifario: WideString;
begin
  Result := ChildNodes['percentualAliquotaAcordoTarifario'].Text;
end;

procedure TXMLAdicaoTributo.Set_PercentualAliquotaAcordoTarifario(Value: WideString);
begin
  ChildNodes['percentualAliquotaAcordoTarifario'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_PercentualAliquotaNormalAdval: WideString;
begin
  Result := ChildNodes['percentualAliquotaNormalAdval'].Text;
end;

procedure TXMLAdicaoTributo.Set_PercentualAliquotaNormalAdval(Value: WideString);
begin
  ChildNodes['percentualAliquotaNormalAdval'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_PercentualAliquotaReduzida: WideString;
begin
  Result := ChildNodes['percentualAliquotaReduzida'].Text;
end;

procedure TXMLAdicaoTributo.Set_PercentualAliquotaReduzida(Value: WideString);
begin
  ChildNodes['percentualAliquotaReduzida'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_PercentualReducaoIPT: WideString;
begin
  Result := ChildNodes['percentualReducaoIPT'].Text;
end;

procedure TXMLAdicaoTributo.Set_PercentualReducaoIPT(Value: WideString);
begin
  ChildNodes['percentualReducaoIPT'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_QuantidadeMLRecipiente: WideString;
begin
  Result := ChildNodes['quantidadeMLRecipiente'].Text;
end;

procedure TXMLAdicaoTributo.Set_QuantidadeMLRecipiente(Value: WideString);
begin
  ChildNodes['quantidadeMLRecipiente'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_QuantidadeMercadoriaUnidadeAliquotaEspecifica: WideString;
begin
  Result := ChildNodes['quantidadeMercadoriaUnidadeAliquotaEspecifica'].Text;
end;

procedure TXMLAdicaoTributo.Set_QuantidadeMercadoriaUnidadeAliquotaEspecifica(Value: WideString);
begin
  ChildNodes['quantidadeMercadoriaUnidadeAliquotaEspecifica'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_ValorAliquotaEspecificaIPT: WideString;
begin
  Result := ChildNodes['valorAliquotaEspecificaIPT'].Text;
end;

procedure TXMLAdicaoTributo.Set_ValorAliquotaEspecificaIPT(Value: WideString);
begin
  ChildNodes['valorAliquotaEspecificaIPT'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_ValorBaseCalculoAdval: WideString;
begin
  Result := ChildNodes['valorBaseCalculoAdval'].Text;
end;

procedure TXMLAdicaoTributo.Set_ValorBaseCalculoAdval(Value: WideString);
begin
  ChildNodes['valorBaseCalculoAdval'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_ValorCalculadoIIACTarifario: WideString;
begin
  Result := ChildNodes['valorCalculadoIIACTarifario'].Text;
end;

procedure TXMLAdicaoTributo.Set_ValorCalculadoIIACTarifario(Value: WideString);
begin
  ChildNodes['valorCalculadoIIACTarifario'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_ValorCalculoIPTEspecifica: WideString;
begin
  Result := ChildNodes['valorCalculoIPTEspecifica'].Text;
end;

procedure TXMLAdicaoTributo.Set_ValorCalculoIPTEspecifica(Value: WideString);
begin
  ChildNodes['valorCalculoIPTEspecifica'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_ValorCalculoIptAdval: WideString;
begin
  Result := ChildNodes['valorCalculoIptAdval'].Text;
end;

procedure TXMLAdicaoTributo.Set_ValorCalculoIptAdval(Value: WideString);
begin
  ChildNodes['valorCalculoIptAdval'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_ValorIPTaRecolher: WideString;
begin
  Result := ChildNodes['valorIPTaRecolher'].Text;
end;

procedure TXMLAdicaoTributo.Set_ValorIPTaRecolher(Value: WideString);
begin
  ChildNodes['valorIPTaRecolher'].NodeValue := Value;
end;

function TXMLAdicaoTributo.Get_ValorImpostoDevido: WideString;
begin
  Result := ChildNodes['valorImpostoDevido'].Text;
end;

procedure TXMLAdicaoTributo.Set_ValorImpostoDevido(Value: WideString);
begin
  ChildNodes['valorImpostoDevido'].NodeValue := Value;
end;

{ TXMLAdicaoTributoList }

function TXMLAdicaoTributoList.Add: IXMLAdicaoTributo;
begin
  Result := AddItem(-1) as IXMLAdicaoTributo;
end;

function TXMLAdicaoTributoList.Insert(const Index: Integer): IXMLAdicaoTributo;
begin
  Result := AddItem(Index) as IXMLAdicaoTributo;
end;
function TXMLAdicaoTributoList.Get_Item(Index: Integer): IXMLAdicaoTributo;
begin
  Result := List[Index] as IXMLAdicaoTributo;
end;

{ TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira }

function TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira.Get_CodigoAbrangenciaNCM: WideString;
begin
  Result := ChildNodes['codigoAbrangenciaNCM'].Text;
end;

procedure TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira.Set_CodigoAbrangenciaNCM(Value: WideString);
begin
  ChildNodes['codigoAbrangenciaNCM'].NodeValue := Value;
end;

function TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira.Get_CodigoAtributoNCM: WideString;
begin
  Result := ChildNodes['codigoAtributoNCM'].Text;
end;

procedure TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira.Set_CodigoAtributoNCM(Value: WideString);
begin
  ChildNodes['codigoAtributoNCM'].NodeValue := Value;
end;

function TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira.Get_CodigoEspecificacaoNCM: WideString;
begin
  Result := ChildNodes['codigoEspecificacaoNCM'].Text;
end;

procedure TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira.Set_CodigoEspecificacaoNCM(Value: WideString);
begin
  ChildNodes['codigoEspecificacaoNCM'].NodeValue := Value;
end;

{ TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList }

function TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList.Add: IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
begin
  Result := AddItem(-1) as IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
end;

function TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList.Insert(const Index: Integer): IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
begin
  Result := AddItem(Index) as IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
end;
function TXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneiraList.Get_Item(Index: Integer): IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
begin
  Result := List[Index] as IXMLAdicaoEspecificacaoMercadoriaValoracaoAduaneira;
end;

{ TXMLCargaArmazenada }

function TXMLCargaArmazenada.Get_NomeArmazemCarga: WideString;
begin
  Result := ChildNodes['nomeArmazemCarga'].Text;
end;

procedure TXMLCargaArmazenada.Set_NomeArmazemCarga(Value: WideString);
begin
  ChildNodes['nomeArmazemCarga'].NodeValue := Value;
end;

{ TXMLCargaArmazenadaList }

function TXMLCargaArmazenadaList.Add: IXMLCargaArmazenada;
begin
  Result := AddItem(-1) as IXMLCargaArmazenada;
end;

function TXMLCargaArmazenadaList.Insert(const Index: Integer): IXMLCargaArmazenada;
begin
  Result := AddItem(Index) as IXMLCargaArmazenada;
end;
function TXMLCargaArmazenadaList.Get_Item(Index: Integer): IXMLCargaArmazenada;
begin
  Result := List[Index] as IXMLCargaArmazenada;
end;

{ TXMLCompensacaoCreditoTributo }

function TXMLCompensacaoCreditoTributo.Get_CodigoReceitaCredito: WideString;
begin
  Result := ChildNodes['codigoReceitaCredito'].Text;
end;

procedure TXMLCompensacaoCreditoTributo.Set_CodigoReceitaCredito(Value: WideString);
begin
  ChildNodes['codigoReceitaCredito'].NodeValue := Value;
end;

function TXMLCompensacaoCreditoTributo.Get_NumeroDocumentoGeradorCredito: WideString;
begin
  Result := ChildNodes['numeroDocumentoGeradorCredito'].Text;
end;

procedure TXMLCompensacaoCreditoTributo.Set_NumeroDocumentoGeradorCredito(Value: WideString);
begin
  ChildNodes['numeroDocumentoGeradorCredito'].NodeValue := Value;
end;

function TXMLCompensacaoCreditoTributo.Get_ValorCompensarCredito: WideString;
begin
  Result := ChildNodes['valorCompensarCredito'].Text;
end;

procedure TXMLCompensacaoCreditoTributo.Set_ValorCompensarCredito(Value: WideString);
begin
  ChildNodes['valorCompensarCredito'].NodeValue := Value;
end;

{ TXMLCompensacaoCreditoTributoList }

function TXMLCompensacaoCreditoTributoList.Add: IXMLCompensacaoCreditoTributo;
begin
  Result := AddItem(-1) as IXMLCompensacaoCreditoTributo;
end;

function TXMLCompensacaoCreditoTributoList.Insert(const Index: Integer): IXMLCompensacaoCreditoTributo;
begin
  Result := AddItem(Index) as IXMLCompensacaoCreditoTributo;
end;
function TXMLCompensacaoCreditoTributoList.Get_Item(Index: Integer): IXMLCompensacaoCreditoTributo;
begin
  Result := List[Index] as IXMLCompensacaoCreditoTributo;
end;

{ TXMLDocumentoInstrucaoDespacho }

function TXMLDocumentoInstrucaoDespacho.Get_CodigoTipoDocumentoInstrucaoDespacho: WideString;
begin
  Result := ChildNodes['codigoTipoDocumentoInstrucaoDespacho'].Text;
end;

procedure TXMLDocumentoInstrucaoDespacho.Set_CodigoTipoDocumentoInstrucaoDespacho(Value: WideString);
begin
  ChildNodes['codigoTipoDocumentoInstrucaoDespacho'].NodeValue := Value;
end;

function TXMLDocumentoInstrucaoDespacho.Get_NumeroDocumentoInstrucaoDespacho: WideString;
begin
  Result := ChildNodes['numeroDocumentoInstrucaoDespacho'].Text;
end;

procedure TXMLDocumentoInstrucaoDespacho.Set_NumeroDocumentoInstrucaoDespacho(Value: WideString);
begin
  ChildNodes['numeroDocumentoInstrucaoDespacho'].NodeValue := Value;
end;

{ TXMLDocumentoInstrucaoDespachoList }

function TXMLDocumentoInstrucaoDespachoList.Add: IXMLDocumentoInstrucaoDespacho;
begin
  Result := AddItem(-1) as IXMLDocumentoInstrucaoDespacho;
end;

function TXMLDocumentoInstrucaoDespachoList.Insert(const Index: Integer): IXMLDocumentoInstrucaoDespacho;
begin
  Result := AddItem(Index) as IXMLDocumentoInstrucaoDespacho;
end;
function TXMLDocumentoInstrucaoDespachoList.Get_Item(Index: Integer): IXMLDocumentoInstrucaoDespacho;
begin
  Result := List[Index] as IXMLDocumentoInstrucaoDespacho;
end;

{ TXMLEmbalagemCarga }

function TXMLEmbalagemCarga.Get_CodigoTipoEmbalagemCarga: WideString;
begin
  Result := ChildNodes['codigoTipoEmbalagemCarga'].Text;
end;

procedure TXMLEmbalagemCarga.Set_CodigoTipoEmbalagemCarga(Value: WideString);
begin
  ChildNodes['codigoTipoEmbalagemCarga'].NodeValue := Value;
end;

function TXMLEmbalagemCarga.Get_QuantidadeVolumeCarga: WideString;
begin
  Result := ChildNodes['quantidadeVolumeCarga'].Text;
end;

procedure TXMLEmbalagemCarga.Set_QuantidadeVolumeCarga(Value: WideString);
begin
  ChildNodes['quantidadeVolumeCarga'].NodeValue := Value;
end;

{ TXMLEmbalagemCargaList }

function TXMLEmbalagemCargaList.Add: IXMLEmbalagemCarga;
begin
  Result := AddItem(-1) as IXMLEmbalagemCarga;
end;

function TXMLEmbalagemCargaList.Insert(const Index: Integer): IXMLEmbalagemCarga;
begin
  Result := AddItem(Index) as IXMLEmbalagemCarga;
end;
function TXMLEmbalagemCargaList.Get_Item(Index: Integer): IXMLEmbalagemCarga;
begin
  Result := List[Index] as IXMLEmbalagemCarga;
end;

{ TXMLInformacaoMercosul }

function TXMLInformacaoMercosul.Get_NumeroDEMercosul: WideString;
begin
  Result := ChildNodes['numeroDEMercosul'].Text;
end;

procedure TXMLInformacaoMercosul.Set_NumeroDEMercosul(Value: WideString);
begin
  ChildNodes['numeroDEMercosul'].NodeValue := Value;
end;

function TXMLInformacaoMercosul.Get_NumeroREFinal: WideString;
begin
  Result := ChildNodes['numeroREFinal'].Text;
end;

procedure TXMLInformacaoMercosul.Set_NumeroREFinal(Value: WideString);
begin
  ChildNodes['numeroREFinal'].NodeValue := Value;
end;

function TXMLInformacaoMercosul.Get_NumeroREInicial: WideString;
begin
  Result := ChildNodes['numeroREInicial'].Text;
end;

procedure TXMLInformacaoMercosul.Set_NumeroREInicial(Value: WideString);
begin
  ChildNodes['numeroREInicial'].NodeValue := Value;
end;

{ TXMLInformacaoMercosulList }

function TXMLInformacaoMercosulList.Add: IXMLInformacaoMercosul;
begin
  Result := AddItem(-1) as IXMLInformacaoMercosul;
end;

function TXMLInformacaoMercosulList.Insert(const Index: Integer): IXMLInformacaoMercosul;
begin
  Result := AddItem(Index) as IXMLInformacaoMercosul;
end;
function TXMLInformacaoMercosulList.Get_Item(Index: Integer): IXMLInformacaoMercosul;
begin
  Result := List[Index] as IXMLInformacaoMercosul;
end;

{ TXMLPagamentoTributos }

function TXMLPagamentoTributos.Get_CodigoBancoPagamentoTributo: WideString;
begin
  Result := ChildNodes['codigoBancoPagamentoTributo'].Text;
end;

procedure TXMLPagamentoTributos.Set_CodigoBancoPagamentoTributo(Value: WideString);
begin
  ChildNodes['codigoBancoPagamentoTributo'].NodeValue := Value;
end;

function TXMLPagamentoTributos.Get_CodigoReceitaPagamento: WideString;
begin
  Result := ChildNodes['codigoReceitaPagamento'].Text;
end;

procedure TXMLPagamentoTributos.Set_CodigoReceitaPagamento(Value: WideString);
begin
  ChildNodes['codigoReceitaPagamento'].NodeValue := Value;
end;

function TXMLPagamentoTributos.Get_CodigoTipoPagamentoTributo: WideString;
begin
  Result := ChildNodes['codigoTipoPagamentoTributo'].Text;
end;

procedure TXMLPagamentoTributos.Set_CodigoTipoPagamentoTributo(Value: WideString);
begin
  ChildNodes['codigoTipoPagamentoTributo'].NodeValue := Value;
end;

function TXMLPagamentoTributos.Get_DataPagamentoTributo: WideString;
begin
  Result := ChildNodes['dataPagamentoTributo'].Text;
end;

procedure TXMLPagamentoTributos.Set_DataPagamentoTributo(Value: WideString);
begin
  ChildNodes['dataPagamentoTributo'].NodeValue := Value;
end;

function TXMLPagamentoTributos.Get_NumeroAgenciaPagamentoTributo: WideString;
begin
  Result := ChildNodes['numeroAgenciaPagamentoTributo'].Text;
end;

procedure TXMLPagamentoTributos.Set_NumeroAgenciaPagamentoTributo(Value: WideString);
begin
  ChildNodes['numeroAgenciaPagamentoTributo'].NodeValue := Value;
end;

function TXMLPagamentoTributos.Get_NumeroContaPagamentoTributo: WideString;
begin
  Result := ChildNodes['numeroContaPagamentoTributo'].Text;
end;

procedure TXMLPagamentoTributos.Set_NumeroContaPagamentoTributo(Value: WideString);
begin
  ChildNodes['numeroContaPagamentoTributo'].NodeValue := Value;
end;

function TXMLPagamentoTributos.Get_NumeroSequencialRetificacaoTributo: WideString;
begin
  Result := ChildNodes['numeroSequencialRetificacaoTributo'].Text;
end;

procedure TXMLPagamentoTributos.Set_NumeroSequencialRetificacaoTributo(Value: WideString);
begin
  ChildNodes['numeroSequencialRetificacaoTributo'].NodeValue := Value;
end;

function TXMLPagamentoTributos.Get_ValorJurosPagamentoTributo: WideString;
begin
  Result := ChildNodes['valorJurosPagamentoTributo'].Text;
end;

procedure TXMLPagamentoTributos.Set_ValorJurosPagamentoTributo(Value: WideString);
begin
  ChildNodes['valorJurosPagamentoTributo'].NodeValue := Value;
end;

function TXMLPagamentoTributos.Get_ValorMultaPagamentoTributo: WideString;
begin
  Result := ChildNodes['valorMultaPagamentoTributo'].Text;
end;

procedure TXMLPagamentoTributos.Set_ValorMultaPagamentoTributo(Value: WideString);
begin
  ChildNodes['valorMultaPagamentoTributo'].NodeValue := Value;
end;

function TXMLPagamentoTributos.Get_ValorTributoPago: WideString;
begin
  Result := ChildNodes['valorTributoPago'].Text;
end;

procedure TXMLPagamentoTributos.Set_ValorTributoPago(Value: WideString);
begin
  ChildNodes['valorTributoPago'].NodeValue := Value;
end;

{ TXMLPagamentoTributosList }

function TXMLPagamentoTributosList.Add: IXMLPagamentoTributos;
begin
  Result := AddItem(-1) as IXMLPagamentoTributos;
end;

function TXMLPagamentoTributosList.Insert(const Index: Integer): IXMLPagamentoTributos;
begin
  Result := AddItem(Index) as IXMLPagamentoTributos;
end;
function TXMLPagamentoTributosList.Get_Item(Index: Integer): IXMLPagamentoTributos;
begin
  Result := List[Index] as IXMLPagamentoTributos;
end;

{ TXMLProcessoVinculado }

function TXMLProcessoVinculado.Get_CodigoTipoProcesso: WideString;
begin
  Result := ChildNodes['codigoTipoProcesso'].Text;
end;

procedure TXMLProcessoVinculado.Set_CodigoTipoProcesso(Value: WideString);
begin
  ChildNodes['codigoTipoProcesso'].NodeValue := Value;
end;

function TXMLProcessoVinculado.Get_NumeroProcesso: WideString;
begin
  Result := ChildNodes['numeroProcesso'].Text;
end;

procedure TXMLProcessoVinculado.Set_NumeroProcesso(Value: WideString);
begin
  ChildNodes['numeroProcesso'].NodeValue := Value;
end;

{ TXMLProcessoVinculadoList }

function TXMLProcessoVinculadoList.Add: IXMLProcessoVinculado;
begin
  Result := AddItem(-1) as IXMLProcessoVinculado;
end;

function TXMLProcessoVinculadoList.Insert(const Index: Integer): IXMLProcessoVinculado;
begin
  Result := AddItem(Index) as IXMLProcessoVinculado;
end;
function TXMLProcessoVinculadoList.Get_Item(Index: Integer): IXMLProcessoVinculado;
begin
  Result := List[Index] as IXMLProcessoVinculado;
end;

end.