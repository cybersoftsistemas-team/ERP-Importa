unit frmMenu_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Menus, Vcl.StdCtrls, Vcl.ExtCtrls, ImgList, Vcl.ComCtrls, Buttons, NFe_Util_2G_TLB, IniFiles,
  Types, OleCtrls, AppEvnts, DB, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, idftpcommon, CalcExpress, DBAccess, MSAccess, jpeg,
  MSClasses, System.ImageList, System.UITypes, mmSystem, vcl.Styles, RxCtrls, shellapi, MemDS, ComObj;

Const
    InputBoxMessage = WM_USER + 200;

type
  TMenu_Principal = class(TForm)
    Menu: TMainMenu;
    mnCadastros: TMenuItem;
    opSair: TMenuItem;
    mnCadastro_Empresas: TMenuItem;
    mnCadastro_Clientes: TMenuItem;
    mnCadastro_Fornecedores: TMenuItem;
    mnCadastro_Natureza: TMenuItem;
    mnCadastro_ICMS: TMenuItem;
    mnCadastro_Moedas: TMenuItem;
    mnCadastro_Cotacao: TMenuItem;
    mnCadastro_Unidades: TMenuItem;
    mnCadastro_TiposProdutos: TMenuItem;
    mnCadastro_Produtos: TMenuItem;
    mnProcesso: TMenuItem;
    mnCadastro_ClassificacaoFinanceira: TMenuItem;
    mnConfiguracao: TMenuItem;
    Configuracao_TiposNota: TMenuItem;
    mnCadastro_ImpostosTaxas: TMenuItem;
    mnCadastro_TabelaNCM: TMenuItem;
    mnNotaFiscal: TMenuItem;
    opSair_Sobre: TMenuItem;
    opSair_Sair: TMenuItem;
    mnCadastro_Financeiro: TMenuItem;
    mnCadastro_Bancos: TMenuItem;
    mnFinanceiro: TMenuItem;
    mnUtilitarios: TMenuItem;
    mnFinanceiro_ContasPagar: TMenuItem;
    mnCadastro_TipoDocumentos: TMenuItem;
    mnProcesso_Importacao: TMenuItem;
    mnProcesso_Container: TMenuItem;
    mnFinanceiro_TransferenciaBancaria: TMenuItem;
    mnCadastro_CentroCusto: TMenuItem;
    mnFinanceiro_TransferenciaSaldo: TMenuItem;
    mnCadastro_Modalidades: TMenuItem;
    Linha6: TMenuItem;
    mnCadastro_Orgaos: TMenuItem;
    mnProcesso_Exportacao: TMenuItem;
    mnCadastro_Incoterms: TMenuItem;
    Linha8: TMenuItem;
    mnConfiguracao_Sistema: TMenuItem;
    mnCadastro_Usuarios: TMenuItem;
    mnCadastro_Fiscal: TMenuItem;
    mnCadastro_Contabeis: TMenuItem;
    mnCadastro_ComercioExterior: TMenuItem;
    mnCadastro_Gerais: TMenuItem;
    mnCadastro_Estoque: TMenuItem;
    mnFaturamento_PedidosDevolucao: TMenuItem;
    mnFaturamento_PedidosCompl: TMenuItem;
    mnImpressao: TMenuItem;
    mnFaturamento_PedidosServico: TMenuItem;
    mnFaturamento_Pedidos: TMenuItem;
    mnProcesso_ContratoCambio: TMenuItem;
    mnFiscal_NotasTerceiros: TMenuItem;
    mnFiscal: TMenuItem;
    Faturamento1: TMenuItem;
    mnCadastro_PlanoContas: TMenuItem;
    mnCadastro_Historicos: TMenuItem;
    opSair_Ajuda: TMenuItem;
    mnContabilidade: TMenuItem;
    mnContabilidade_Lancamentos: TMenuItem;
    Eventos: TApplicationEvents;
    N1: TMenuItem;
    mnFiscal_NotasServico: TMenuItem;
    mnCadastro_Servicos: TMenuItem;
    mnConfiguracao_LayoutNFServico: TMenuItem;
    mnConfiguracao_LayoutMemorando: TMenuItem;
    mnImpressao_Exportacao: TMenuItem;
    mnImpressao_ExportacaoMemorando: TMenuItem;
    mnImpressao_ExportacaoReimpressao: TMenuItem;
    N3: TMenuItem;
    ImpressaoFServico: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    mnUtilitarios_ExportaTexto: TMenuItem;
    mnUtilitarios_SINTEGRA: TMenuItem;
    mnImpressao_Fiscais: TMenuItem;
    mnImpressao_FiscaisRegistroEntrada: TMenuItem;
    mnImpressao_FiscaisRegistroSaida: TMenuItem;
    mnImpressao_FiscaisRegistroEstoque: TMenuItem;
    mnImpressao_FiscaisRegistroInventario: TMenuItem;
    mnImpressao_FiscaisApuracaoICMS: TMenuItem;
    mnFiscal_EstornoDebitos: TMenuItem;
    mnFaturamento_NFe: TMenuItem;
    mnImpressao_FiscaisApuracaoIPI: TMenuItem;
    mnImpressao_FiscaisServicosPrestados: TMenuItem;
    mnCadastro_Municipios: TMenuItem;
    mnFiscal_OutrosValoresIPI: TMenuItem;
    mnFaturamento_NFeNormal: TMenuItem;
    mnFaturamento_NFeInutilizar: TMenuItem;
    mnImpressao_Faturamento_DANFE: TMenuItem;
    mnUtilitarios_SPED_Fiscal: TMenuItem;
    mnImpressao_ApuracaoPISCOFINS: TMenuItem;
    N9: TMenuItem;
    mnImpressao_Contabeis: TMenuItem;
    mnImpressao_ContabeisPlanoContas: TMenuItem;
    mnImpressao_ContabeisCritica: TMenuItem;
    mnCadastro_Alugueis: TMenuItem;
    mnImpressao_ContabeisHistoricos: TMenuItem;
    N10: TMenuItem;
    mnImpressao_ContabeisRazao: TMenuItem;
    mnImpressao_ContabeisDiario: TMenuItem;
    N11: TMenuItem;
    mnImpressao_ContabeisBalancete: TMenuItem;
    mnImpressao_FiscaisCIAP: TMenuItem;
    N12: TMenuItem;
    mnImpressao_Financeiros_Duplicatas: TMenuItem;
    mnUtilitarios_LOG: TMenuItem;
    mnFinanceiro_Duplicatas: TMenuItem;
    mnFaturamento_NFeCancelar: TMenuItem;
    N16: TMenuItem;
    mnFaturamento_NFeConsultar: TMenuItem;
    mnCadastro_Paises: TMenuItem;
    N18: TMenuItem;
    mnCadastro_Parametrizacao: TMenuItem;
    mnFaturamento_NFeDPEC: TMenuItem;
    N2: TMenuItem;
    mnUtilitarios_BACKUP: TMenuItem;
    mnCadastro_Comissoes: TMenuItem;
    mnFaturamento_NFServicoCancelar: TMenuItem;
    mnImpressao_Faturamento_NFServico: TMenuItem;
    mnImpressao_Faturamento_ReNFServico: TMenuItem;
    Financeiros1: TMenuItem;
    mnImpressao_Financeiros_PagarReceber: TMenuItem;
    mnImpressao_Financeiros_ExtratoBancario: TMenuItem;
    mnCadastro_ConsultaCST: TMenuItem;
    mnImpressao_Financeiros_PrestacaoProcesso: TMenuItem;
    mnFaturamento_ModificarNF: TMenuItem;
    Processos1: TMenuItem;
    mnImpressao_Estoque_Processo: TMenuItem;
    Operacional1: TMenuItem;
    mnImpressao_Gerais_DeclaracaoNF: TMenuItem;
    TimerBackup: TTimer;
    mnImpressao_FiscaisRelacaoNCM: TMenuItem;
    N17: TMenuItem;
    N13: TMenuItem;
    mnImpressao_Processos_Dados: TMenuItem;
    N19: TMenuItem;
    mnImpressao_Faturamento_RelacaoNF: TMenuItem;
    mnFinanceiro_BaixaLote: TMenuItem;
    mnImpressao_Financeiros_Cheque: TMenuItem;
    Cadastros1: TMenuItem;
    mnImpressao_CadastrosClassFinanceira: TMenuItem;
    mnImpressao_CadastrosProdutos: TMenuItem;
    N22: TMenuItem;
    mnFaturamento_PedidoEntradas: TMenuItem;
    mnFaturamento_PedidosEntrada: TMenuItem;
    mnFaturamento_PedidosEntrada_Outras: TMenuItem;
    mnFaturamento_PedidoSaidas: TMenuItem;
    mnFaturamento_PedidosSaida: TMenuItem;
    mnFaturamento_PedidosSaida_Outras: TMenuItem;
    mnImpressao_Faturamento_Detalhamento: TMenuItem;
    mnFinanceiro_EstornoBaixa: TMenuItem;
    mnImpressao_FiscaisRelacaoCFOP: TMenuItem;
    mnImpressao_CadastrosClientes: TMenuItem;
    mnImpressao_Financeiros_ComissaoTrader: TMenuItem;
    mnImpressao_CadastrosFornecedores: TMenuItem;
    N24: TMenuItem;
    mnProcesso_Historico: TMenuItem;
    N25: TMenuItem;
    mnProcesso_Simulacao: TMenuItem;
    mnImpressao_Financeiros_ConciliacaoAdiant: TMenuItem;
    mnUtilitarios_Remessa_Duplicatas: TMenuItem;
    mnCadastro_IncentivosFiscais: TMenuItem;
    N26: TMenuItem;
    mnUtilitarios_Retorno_Duplicatas: TMenuItem;
    mnFinanceiro_ConciliacaoBancaria: TMenuItem;
    mnImpressao_Financeiros_FechCambio: TMenuItem;
    mnFaturamento_NFeDPECEnvio: TMenuItem;
    mnUtilitarios_DNF: TMenuItem;
    mnImpressao_Financeiros_FatMensal: TMenuItem;
    mnImpressao_Financeiros_SolNumCli: TMenuItem;
    mnCadastro_TabelaCores: TMenuItem;
    mnConfiguracao_TipoNotaPropria: TMenuItem;
    mnConfiguracao_TipoNotaTerceiros: TMenuItem;
    mnCadastro_TiposProcesso: TMenuItem;
    mnCadastro_RamoAtividade: TMenuItem;
    mnUtilitarios_SPED_PISCOFINS: TMenuItem;
    mnImpressao_Processos_Relacao: TMenuItem;
    mnFaturamento_RecriarXML: TMenuItem;
    mnUtilitarios_DetectarXML: TMenuItem;
    mnImpressao_Processos_FollowUp: TMenuItem;
    mnUtilitarios_ImportarPROSOFT: TMenuItem;
    mnImpressao_Gerais_Recibo: TMenuItem;
    mnFinanceiro_TransferenciaCliente: TMenuItem;
    mnFinanceiro_TransferenciaFornecedor: TMenuItem;
    mnProcesso_AberturaFechamento: TMenuItem;
    mnFinanceiro_SP: TMenuItem;
    mnFinanceiro_SN: TMenuItem;
    mnUtilitarios_ImportarXML: TMenuItem;
    mnUtilitarios_Importacao: TMenuItem;
    mnUtilitarios_Exportacao: TMenuItem;
    mnUtilitarios_Sistema: TMenuItem;
    mnUtilitarios_Importar_Excel: TMenuItem;
    N15: TMenuItem;
    mnFinanceiro_Bloqueio: TMenuItem;
    mnCadastro_Comerciais: TMenuItem;
    mnCadastro_TabelaComissoes: TMenuItem;
    mnImpressao_Processos_Container: TMenuItem;
    N20: TMenuItem;
    mnUtilitarios_Restore: TMenuItem;
    mnUtilitarios_RecriarContabil: TMenuItem;
    N7: TMenuItem;
    mnCadastro_NiveisClassificacao: TMenuItem;
    mnImpressao_Financeiros_ComissoesRep: TMenuItem;
    mnCadastro_LinhasProdutos: TMenuItem;
    mnImpressao_Faturamento_MediaPreco: TMenuItem;
    mnCadastro_OrigensRecursos: TMenuItem;
    mnImpressao_Financeiros_VendasRep: TMenuItem;
    mnImpressao_Processos_ccClientes: TMenuItem;
    mnImpressao_Processos_Fechamento: TMenuItem;
    mnImpressao_Processos_Prazo: TMenuItem;
    mnImpressao_Financeiros_RecDesp: TMenuItem;
    mnUtilitarios_ImportarDadosEmpresa: TMenuItem;
    N31: TMenuItem;
    mnProcesso_Invoice: TMenuItem;
    mnImpressao_Processo_Rentabilidade: TMenuItem;
    N32: TMenuItem;
    mnImpressao_Processo_DemFinanceira: TMenuItem;
    mnImpressao_Processo_ContratosCambio: TMenuItem;
    mnCadastro_LocalDesembaraco: TMenuItem;
    mnImpressao_Faturamento_Previsao: TMenuItem;
    N34: TMenuItem;
    mnFiscal_CIAP: TMenuItem;
    mnImpressao_Processos_Invoice: TMenuItem;
    mnImpressao_Financeiros_Recebiveis: TMenuItem;
    cXML: TOpenDialog;
    mnImpressao_Estoque_VendasProdutos: TMenuItem;
    mnImpressao_Faturamento_PedidoSepara: TMenuItem;
    mnProcesso_AtualizaData: TMenuItem;
    mnImpressao_CadastrosTipoNota: TMenuItem;
    mnCadastro_CondicoesCambiais: TMenuItem;
    mnFiscal_NotasTerceirosProvisoria: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    mnImpressao_Faturamento_DestaqueICMS: TMenuItem;
    Panel3: TPanel;
    Panel2: TPanel;
    mnImpressao_Processos_ControleInvoice: TMenuItem;
    mnFiscal_TransferenciaSaldo: TMenuItem;
    N33: TMenuItem;
    mnImpressao_Estoque_Vendidos: TMenuItem;
    mnImpressao_Estoque_Detalhado: TMenuItem;
    TimerGravacao: TTimer;
    N39: TMenuItem;
    mnUtilitarios_Gravar_Acoes: TMenuItem;
    mnUtilitarios_Assistir_Acoes: TMenuItem;
    mnImpressao_Faturamento_Ranking: TMenuItem;
    mnFaturamento_CartaCorrecao: TMenuItem;
    mnImpressao_Estoque_Resumido: TMenuItem;
    Estoque1: TMenuItem;
    mnImpressao_Financeiros_DRE: TMenuItem;
    mnImpressao_Gerais_CartaCorrecao: TMenuItem;
    mnImpressao_Faturamento_Desdobramento: TMenuItem;
    N40: TMenuItem;
    opSair_TrocarEmpresa: TMenuItem;
    mnUtilitarios_SPED_Contabil: TMenuItem;
    mnUtilitarios_Checagem: TMenuItem;
    mnImpressao_Faturamento_RelacaoPIS: TMenuItem;
    mnContabilidade_Balancete: TMenuItem;
    N37: TMenuItem;
    mnFaturamento_CancelamentoAdm: TMenuItem;
    mnFinanceiro_Boleto: TMenuItem;
    mnImpressao_Faturamento_RelacaoNFServ: TMenuItem;
    mnUtilitarios_ADESCOFIS: TMenuItem;
    mnImpressao_Financeiros_VendasRepProd: TMenuItem;
    mnProcesso_Fechamento: TMenuItem;
    mnProcesso_FechamentoComplementar: TMenuItem;
    mnFinanceiro_TransferenciaClassificacao: TMenuItem;
    mnAtualizar_Sistema: TMenuItem;
    EnviarCartadeCorreo1: TMenuItem;
    AjustarCampodeQuantidade1: TMenuItem;
    pDisplay: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    llabelAmbiente: TRxLabel;
    lEmpresa: TRxLabel;
    lUsuario: TRxLabel;
    lServidor: TRxLabel;
    lFilial: TRxLabel;
    lAmbiente: TRxLabel;
    iBarra: TImage;
    N38: TMenuItem;
    mnProcesso_GLME: TMenuItem;
    mnImpressao_Faturamento_MediaBCR: TMenuItem;
    ComRefernciaemNFPrpria1: TMenuItem;
    ComRefernciaemNFdeTerceiros1: TMenuItem;
    EstoqueMnimo1: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    mnFaturamento_MinutaNF: TMenuItem;
    mnImpressao_Faturamento_RankingProdutos: TMenuItem;
    mnUtilitarios_AjustarDados: TMenuItem;
    mnImpressao_Estoque_Movimentacao: TMenuItem;
    N43: TMenuItem;
    mnFiscal_SaldoAberturaEstoque: TMenuItem;
    mnCadastro_Fabricantes: TMenuItem;
    mnUtilitarios_EnviarDados: TMenuItem;
    N44: TMenuItem;
    mnCadastro_Detalhes: TMenuItem;
    mnImpressao_Faturamento_ComposicaoNFS: TMenuItem;
    mnFinanceiro_Emprestimos: TMenuItem;
    mnFinanceiro_CapitalGiro: TMenuItem;
    mnFinanceiro_DescontoDuplicata: TMenuItem;
    mnFinanceiro_FINIMP: TMenuItem;
    IdAntiFreeze1: TIdAntiFreeze;
    Emprstimos1: TMenuItem;
    DescontodeDuplicatas1: TMenuItem;
    CapitaldeGiro2: TMenuItem;
    FINIMP2: TMenuItem;
    EtiquetasdeVolumes1: TMenuItem;
    N45: TMenuItem;
    mnFaturamento_VerificarEstoque: TMenuItem;
    mnFinanceiro_PedidosRepresentantes: TMenuItem;
    mnPedido_Representantes: TMenuItem;
    mnLogistica: TMenuItem;
    mnLogistica_CTR: TMenuItem;
    mnLogistica_EmissaoNormal: TMenuItem;
    mnCadastro_Logistica: TMenuItem;
    mnCadastros_LogisticaDestinatario: TMenuItem;
    mnCadastros_LogisticaRecebedor: TMenuItem;
    mnCadastros_LogisticaExpedidor: TMenuItem;
    Endividamento1: TMenuItem;
    N48: TMenuItem;
    Documentos1: TMenuItem;
    mnCadastro_AjustarPrecos: TMenuItem;
    FluxodeCaixaMensal1: TMenuItem;
    N49: TMenuItem;
    FluxodeCaixaDetalhado1: TMenuItem;
    PREVISODESPESASDEPROCESSOS1: TMenuItem;
    mnFinanceiro_MensalClientes: TMenuItem;
    mnUtilitarios_Remessa_Boletos: TMenuItem;
    N51: TMenuItem;
    Exclusodepedidos1: TMenuItem;
    mnFaturamento_NFeManifDest: TMenuItem;
    mnPedido_Televendas: TMenuItem;
    N52: TMenuItem;
    mnRelaodePedidos_Nota: TMenuItem;
    DREGerencial1: TMenuItem;
    mnUtilitarios_ImportarRetornoBoletos: TMenuItem;
    N6: TMenuItem;
    N27: TMenuItem;
    Processos2: TMenuItem;
    erceiros1: TMenuItem;
    N23: TMenuItem;
    N54: TMenuItem;
    Demonstrativos1: TMenuItem;
    N55: TMenuItem;
    Inventario1: TMenuItem;
    lRede: TRxLabel;
    RxLabel5: TRxLabel;
    mnLogistica_ConsultaProdutos: TMenuItem;
    mnUtilitarios_ImportarPlanoContas: TMenuItem;
    N46: TMenuItem;
    N53: TMenuItem;
    F1: TMenuItem;
    LivroRegistrodeInventrioNovo1: TMenuItem;
    mnUtilitarios_SISCOMEXWEB: TMenuItem;
    LivroRegistrodeInventrio21: TMenuItem;
    mnCadastros_CodigoReceita: TMenuItem;
    lInternet: TRxLabel;
    mnCadastros_TabelaPISCOFINS: TMenuItem;
    N30: TMenuItem;
    mnFiscal_BloquearMovimento: TMenuItem;
    SaldodeICMSIPI1: TMenuItem;
    mnFiscal_FichaEstoque: TMenuItem;
    N56: TMenuItem;
    mnFiscal_FichaInventario: TMenuItem;
    EstoqueporLote1: TMenuItem;
    LivroRegistrodeServiosTomados1: TMenuItem;
    mnUtilitarios_ExportaArmazem: TMenuItem;
    FichadeInventario1: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    Importao2: TMenuItem;
    Exportao2: TMenuItem;
    N60: TMenuItem;
    mnFiscal_GNRE: TMenuItem;
    ControleDIFAL1: TMenuItem;
    ControledeChassisSeriais1: TMenuItem;
    mnImpressao_Financeiros_JurosMulta: TMenuItem;
    mnCadastro_FinanceiroDRE: TMenuItem;
    mnCadastro_FinanceiroDRETotal: TMenuItem;
    mnCadastro_FinanceiroDREAgrup: TMenuItem;
    mnUtilitarios_DadosDI: TMenuItem;
    N61: TMenuItem;
    mnCadastro_PlanoContasECF: TMenuItem;
    ComposiodoProcesso1: TMenuItem;
    ProformaInvoice1: TMenuItem;
    N62: TMenuItem;
    mnContabilidade_ExcluirLancamentos: TMenuItem;
    mnContabilidade_BloquearMovimento: TMenuItem;
    GerarArquivoSPEDContbilECF1: TMenuItem;
    mnImpressao_Financeiros_ExtratoSintetico: TMenuItem;
    FaturaCommercialInvoice1: TMenuItem;
    PackingList1: TMenuItem;
    mnContabilidade_LancamentosEncerramento: TMenuItem;
    N64: TMenuItem;
    DRE1: TMenuItem;
    mnFinanceiro_ControleCheques: TMenuItem;
    OrdemdeCompraPO1: TMenuItem;
    mnImpressao_Financeiros_ControleCheques: TMenuItem;
    GerarArquivoSPEDREDIF1: TMenuItem;
    N63: TMenuItem;
    mnUtilitarios_ExecutarScript: TMenuItem;
    mnFinanceiro_Agendamentos: TMenuItem;
    Despacho_PLI: TMenuItem;
    mnDespacho_RegistroDI: TMenuItem;
    mnDespacho: TMenuItem;
    mnProcesso_PO: TMenuItem;
    mnDespacho_Iicenca: TMenuItem;
    ImportararquivoXML1: TMenuItem;
    mnDespacho_SLI: TMenuItem;
    mnDespacho_LI: TMenuItem;
    mnCadastro_TaxaSISCOMEX: TMenuItem;
    ProcessosAdministrativosJudicial1: TMenuItem;
    abeladePreos1: TMenuItem;
    tInad: TTimer;
    IdFTP1: TIdFTP;
    mnFinanceiro_ApuracaoImpostos: TMenuItem;
    mnImpressao_ApuracaoICMSRecuperar: TMenuItem;
    Importao3: TMenuItem;
    PropostadeExportao1: TMenuItem;
    ProtpostadeExportao1: TMenuItem;
    Processo_Import: TMenuItem;
    Processo_Export: TMenuItem;
    CommercialInvoiceFatura1: TMenuItem;
    N14: TMenuItem;
    Fundo: TShape;
    ImagemFTP: TImage;
    cFoto: TImage;
    Panel1: TPanel;
    bPagarReceber: TSpeedButton;
    bProcessos: TSpeedButton;
    bExportacao: TSpeedButton;
    bNF_Entrada: TSpeedButton;
    bNF_Saida: TSpeedButton;
    bNF_Outros: TSpeedButton;
    bNFE: TSpeedButton;
    bTelevendas: TSpeedButton;
    bControleNavios: TSpeedButton;
    bSair: TSpeedButton;
    Icones: TImageList;
    mnFinanceiro_OutrasOpcoes: TMenuItem;
    mnFinanceiro_Transferencia: TMenuItem;
    TimerECommerce: TTimer;
    lECommerce: TPanel;
    mnCadastros_LancamentoPadrao: TMenuItem;
    mnFinanceiro_PagamentosMes: TMenuItem;
    mnUtilitarios_PedidoCompra: TMenuItem;
    N8: TMenuItem;
    mnCadastro_Intermediadores: TMenuItem;
    N21: TMenuItem;
    EnviarDUe1: TMenuItem;
    N28: TMenuItem;
    mnUtilitarios_OutrasOpcoes: TMenuItem;
    DesativarProdutossemEstoque1: TMenuItem;
    EnviarNotasFiscaispArmazm1: TMenuItem;
    PedidoparaSeparao1: TMenuItem;
    ImportarPlanodeContasReferncia1: TMenuItem;
    EnviarNotaFiscaldeSada1: TMenuItem;
    N29: TMenuItem;
    RelaodeNotasAnalitico1: TMenuItem;
    N47: TMenuItem;
    MdiadeVendadeProdutos1: TMenuItem;
    SituaodosChassisSeriais1: TMenuItem;
    mnFinanceiro_PedidosAutorizacao: TMenuItem;
    N50: TMenuItem;
    N65: TMenuItem;
    mnProcesso_Navios: TMenuItem;
    N66: TMenuItem;
    ConsultarNFeemitidaparameuCNPJ1: TMenuItem;
    Temp: TMSQuery;
    mnCadastro_RecapPadrao: TMenuItem;
    ExportaodeDadosparaExcel1: TMenuItem;
    LayoutdeNotaFiscaldeServioXML1: TMenuItem;
    mnUtilitarios_ItensNavio: TMenuItem;
    mnImpressao_Estoque_Navio: TMenuItem;
    ConsultarstatusdaNFenaSEFAZ1: TMenuItem;
    bGerenciadorPedidos: TSpeedButton;
    FDa1: TMenuItem;
    ControledeLimitedeRADAR1: TMenuItem;
    Navios1: TMenuItem;
    ControledeNavios1: TMenuItem;
    HistricoBL1: TMenuItem;
    HistricoLaudo1: TMenuItem;
    Teste_mnUtilitarios_APIPUCOMEX: TMenuItem;
    RelaodeNotasFiscais1: TMenuItem;
    CTeCancelamentodePrestaoemdesacordo1: TMenuItem;
    CTeCancelamentodePrestaoemdesacordo2: TMenuItem;
    HistricodePedidosdeVenda1: TMenuItem;
    HistricodoPedidosdeVenda1: TMenuItem;
    EstoqueporNavioDI1: TMenuItem;
    mnCadastro_NCM: TMenuItem;
    mnCadastro_NCMAtributos: TMenuItem;
    VendasporRepresentanteCliente1: TMenuItem;
    GuiaGLME1: TMenuItem;
    ControledeBoletos1: TMenuItem;
    MdiadeVendaMensaldeProdutos1: TMenuItem;
    ExportaodeDadosviaAPI1: TMenuItem;
    mnRelaodePedidos_Vendas: TMenuItem;
    mnImpressao_Financeiros_PagarReceberSimp: TMenuItem;
    ControledeTitulosAbertos1: TMenuItem;
    N67: TMenuItem;
    EnviarDUIMPparaSISCOMEX1: TMenuItem;
    mnCadastro_LPCO: TMenuItem;
    N68: TMenuItem;
    mnFaturamento_Industrial: TMenuItem;
    procedure mnCadastro_EmpresasClick(Sender: TObject);
    procedure mnCadastro_ClientesClick(Sender: TObject);
    procedure mnCadastro_FornecedoresClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnCadastro_NaturezaClick(Sender: TObject);
    procedure mnCadastro_ICMSClick(Sender: TObject);
    procedure mnCadastro_MoedasClick(Sender: TObject);
    procedure mnCadastro_CotacaoClick(Sender: TObject);
    procedure mnCadastro_UnidadesClick(Sender: TObject);
    procedure mnCadastro_TiposProdutosClick(Sender: TObject);
    procedure mnCadastro_ProdutosClick(Sender: TObject);
    procedure mnCadastro_ClassificacaoFinanceiraClick(Sender: TObject);
    procedure mnCadastro_ImpostosTaxasClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure opSair_SobreClick(Sender: TObject);
    procedure opSair_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnCadastro_BancosClick(Sender: TObject);
    procedure mnFinanceiro_ContasPagarClick(Sender: TObject);
    procedure mnCadastro_TipoDocumentosClick(Sender: TObject);
    procedure mnProcesso_ImportacaoClick(Sender: TObject);
    procedure mnProcesso_ContainerClick(Sender: TObject);
    procedure mnCadastro_CentroCustoClick(Sender: TObject);
    procedure mnCadastro_ModalidadesClick(Sender: TObject);
    procedure mnCadastro_OrgaosClick(Sender: TObject);
    procedure mnCadastro_IncotermsClick(Sender: TObject);
    procedure mnConfiguracao_SistemaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnCadastro_UsuariosClick(Sender: TObject);
    procedure mnFiscal_NotasTerceirosClick(Sender: TObject);
    procedure mnProcesso_ContratoCambioClick(Sender: TObject);
    procedure mnProcesso_ExportacaoClick(Sender: TObject);
    procedure mnCadastro_PlanoContasClick(Sender: TObject);
    procedure mnCadastro_HistoricosClick(Sender: TObject);
    procedure opSair_AjudaClick(Sender: TObject);
    procedure mnContabilidade_LancamentosClick(Sender: TObject);
    procedure EventosException(Sender: TObject;E: Exception);
    procedure mnFiscal_NotasServicoClick(Sender: TObject);
    procedure mnCadastro_ServicosClick(Sender: TObject);
    procedure mnConfiguracao_LayoutMemorandoClick(Sender: TObject);
    procedure mnImpressao_ExportacaoMemorandoClick(Sender: TObject);
    procedure mnFaturamento_PedidosServicoClick(Sender: TObject);
    procedure mnConfiguracao_LayoutNFServicoClick(Sender: TObject);
    procedure mnUtilitarios_ExportaTextoClick(Sender: TObject);
    procedure mnUtilitarios_SINTEGRAClick(Sender: TObject);
    procedure mnImpressao_FiscaisRegistroEntradaClick(Sender: TObject);
    procedure mnImpressao_FiscaisRegistroSaidaClick(Sender: TObject);
    procedure mnImpressao_FiscaisRegistroEstoqueClick(Sender: TObject);
    procedure mnImpressao_FiscaisRegistroInventarioClick(Sender: TObject);
    procedure mnImpressao_FiscaisApuracaoICMSClick(Sender: TObject);
    procedure mnFiscal_EstornoDebitosClick(Sender: TObject);
    procedure mnImpressao_FiscaisApuracaoIPIClick(Sender: TObject);
    procedure mnImpressao_FiscaisServicosPrestadosClick(Sender: TObject);
    procedure mnCadastro_MunicipiosClick(Sender: TObject);
    procedure mnFiscal_OutrosValoresIPIClick(Sender: TObject);
    procedure mnFaturamento_NFeNormalClick(Sender: TObject);
    procedure mnUtilitarios_SPED_FiscalClick(Sender: TObject);
    procedure mnImpressao_ApuracaoPISCOFINSClick(Sender: TObject);
    procedure mnImpressao_ContabeisPlanoContasClick(Sender: TObject);
    procedure mnImpressao_ContabeisCriticaClick(Sender: TObject);
    procedure mnCadastro_AlugueisClick(Sender: TObject);
    procedure mnImpressao_ContabeisHistoricosClick(Sender: TObject);
    procedure mnImpressao_ContabeisRazaoClick(Sender: TObject);
    procedure mnImpressao_ContabeisBalanceteClick(Sender: TObject);
    procedure mnImpressao_FiscaisCIAPClick(Sender: TObject);
    procedure mnImpressao_ContabeisDiarioClick(Sender: TObject);
    procedure mnUtilitarios_LOGClick(Sender: TObject);
    procedure mnImpressao_Financeiros_DuplicatasClick(Sender: TObject);
    procedure mnFaturamento_NFeCancelarClick(Sender: TObject);
    procedure mnFaturamento_NFeInutilizarClick(Sender: TObject);
    procedure mnFaturamento_NFeConsultarClick(Sender: TObject);
    procedure mnImpressao_Faturamento_DANFEClick(Sender: TObject);
    procedure mnCadastro_PaisesClick(Sender: TObject);
    procedure mnUtilitarios_BACKUPClick(Sender: TObject);
    procedure mnFaturamento_NFeDPECClick(Sender: TObject);
    procedure mnCadastro_ComissoesClick(Sender: TObject);
    procedure mnImpressao_Faturamento_NFServicoClick(Sender: TObject);
    procedure mnImpressao_Faturamento_ReNFServicoClick(Sender: TObject);
    procedure mnFaturamento_NFServicoCancelarClick(Sender: TObject);
    procedure mnImpressao_Financeiros_PagarReceberClick(Sender: TObject);
    procedure mnImpressao_Financeiros_ExtratoBancarioClick(Sender: TObject);
    procedure mnCadastro_ConsultaCSTClick(Sender: TObject);
    procedure mnFinanceiro_DuplicatasClick(Sender: TObject);
    procedure mnImpressao_Financeiros_PrestacaoProcessoClick(Sender: TObject);
    procedure mnImpressao_Estoque_ProcessoClick(Sender: TObject);
    procedure mnImpressao_Gerais_DeclaracaoNFClick(Sender: TObject);
    procedure TimerBackupTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure mnImpressao_FiscaisRelacaoNCMClick(Sender: TObject);
    procedure mnImpressao_Processos_DadosClick(Sender: TObject);
    procedure mnImpressao_Faturamento_RelacaoNFClick(Sender: TObject);
    procedure mnFinanceiro_TransferenciaBancariaClick(Sender: TObject);
    procedure mnImpressao_Financeiros_ChequeClick(Sender: TObject);
    procedure mnImpressao_CadastrosClassFinanceiraClick(Sender: TObject);
    procedure mnImpressao_CadastrosProdutosClick(Sender: TObject);
    procedure mnFaturamento_PedidosEntradaClick(Sender: TObject);
    procedure mnFaturamento_PedidosEntrada_OutrasClick(Sender: TObject);
    procedure mnFaturamento_PedidosSaidaClick(Sender: TObject);
    procedure mnFaturamento_PedidosSaida_OutrasClick(Sender: TObject);
    procedure mnImpressao_Faturamento_DetalhamentoClick(Sender: TObject);
    procedure mnFinanceiro_EstornoBaixaClick(Sender: TObject);
    procedure mnImpressao_FiscaisRelacaoCFOPClick(Sender: TObject);
    procedure mnImpressao_CadastrosClientesClick(Sender: TObject);
    procedure mnImpressao_Financeiros_ComissaoTraderClick(Sender: TObject);
    procedure mnImpressao_CadastrosFornecedoresClick(Sender: TObject);
    procedure mnProcesso_HistoricoClick(Sender: TObject);
    procedure mnProcesso_SimulacaoClick(Sender: TObject);
    procedure mnImpressao_Financeiros_ConciliacaoAdiantClick(Sender: TObject);
    procedure mnUtilitarios_Remessa_DuplicatasClick(Sender: TObject);
    procedure mnCadastro_IncentivosFiscaisClick(Sender: TObject);
    procedure mnFinanceiro_ConciliacaoBancariaClick(Sender: TObject);
    procedure mnImpressao_Financeiros_FechCambioClick(Sender: TObject);
    procedure mnUtilitarios_DNFClick(Sender: TObject);
    procedure mnImpressao_Financeiros_FatMensalClick(Sender: TObject);
    procedure mnImpressao_Financeiros_SolNumCliClick(Sender: TObject);
    procedure mnCadastro_TabelaCoresClick(Sender: TObject);
    procedure mnConfiguracao_TipoNotaPropriaClick(Sender: TObject);
    procedure mnConfiguracao_TipoNotaTerceirosClick(Sender: TObject);
    procedure mnCadastro_TiposProcessoClick(Sender: TObject);
    procedure mnCadastro_RamoAtividadeClick(Sender: TObject);
    procedure mnUtilitarios_SPED_PISCOFINSClick(Sender: TObject);
    procedure mnImpressao_Processos_RelacaoClick(Sender: TObject);
    procedure mnFaturamento_RecriarXMLClick(Sender: TObject);
    procedure mnUtilitarios_DetectarXMLClick(Sender: TObject);
    procedure mnImpressao_Processos_FollowUpClick(Sender: TObject);
    procedure mnUtilitarios_ImportarPROSOFTClick(Sender: TObject);
    procedure mnImpressao_Gerais_ReciboClick(Sender: TObject);
    procedure mnFinanceiro_TransferenciaClienteClick(Sender: TObject);
    procedure mnFinanceiro_TransferenciaFornecedorClick(Sender: TObject);
    procedure mnFaturamento_NFeDPECEnvioClick(Sender: TObject);
    procedure mnFinanceiro_SPClick(Sender: TObject);
    procedure mnFinanceiro_BaixaLoteClick(Sender: TObject);
    procedure mnFinanceiro_SNClick(Sender: TObject);
    procedure mnUtilitarios_ImportarXMLClick(Sender: TObject);
    procedure mnUtilitarios_Importar_ExcelClick(Sender: TObject);
    procedure mnFinanceiro_BloqueioClick(Sender: TObject);
    procedure mnCadastro_TabelaComissoesClick(Sender: TObject);
    procedure mnImpressao_Processos_ContainerClick(Sender: TObject);
    procedure mnUtilitarios_RestoreClick(Sender: TObject);
    procedure mnUtilitarios_RecriarContabilClick(Sender: TObject);
    procedure mnUtilitarios_ImportarDadosEmpresaClick(Sender: TObject);
    procedure mnCadastro_NiveisClassificacaoClick(Sender: TObject);
    procedure mnImpressao_Financeiros_ComissoesRepClick(Sender: TObject);
    procedure mnCadastro_LinhasProdutosClick(Sender: TObject);
    procedure mnImpressao_Faturamento_MediaPrecoClick(Sender: TObject);
    procedure mnCadastro_OrigensRecursosClick(Sender: TObject);
    procedure mnImpressao_Financeiros_VendasRepClick(Sender: TObject);
    procedure mnImpressao_Processos_ccClientesClick(Sender: TObject);
    procedure mnImpressao_Processos_FechamentoClick(Sender: TObject);
    procedure mnImpressao_Processos_PrazoClick(Sender: TObject);
    procedure mnImpressao_Financeiros_RecDespClick(Sender: TObject);
    procedure mnImpressao_Processo_RentabilidadeClick(Sender: TObject);
    procedure mnImpressao_Processo_DemFinanceiraClick(Sender: TObject);
    procedure mnImpressao_Processo_ContratosCambioClick(Sender: TObject);
    procedure mnCadastro_LocalDesembaracoClick(Sender: TObject);
    procedure mnImpressao_Faturamento_PrevisaoClick(Sender: TObject);
    procedure mnFiscal_CIAPClick(Sender: TObject);
    procedure mnImpressao_Financeiros_RecebiveisClick(Sender: TObject);
    procedure mnImpressao_Estoque_VendasProdutosClick(Sender: TObject);
    procedure mnImpressao_Faturamento_PedidoSeparaClick(Sender: TObject);
    procedure mnProcesso_AtualizaDataClick(Sender: TObject);
    procedure mnImpressao_CadastrosTipoNotaClick(Sender: TObject);
    procedure mnCadastro_CondicoesCambiaisClick(Sender: TObject);
    procedure mnFiscal_NotasTerceirosProvisoriaClick(Sender: TObject);
    procedure mnImpressao_Faturamento_DestaqueICMSClick(Sender: TObject);
    procedure mnImpressao_Processos_ControleInvoiceClick(Sender: TObject);
    procedure mnFiscal_TransferenciaSaldoClick(Sender: TObject);
    procedure mnImpressao_Estoque_VendidosClick(Sender: TObject);
    procedure mnImpressao_Estoque_DetalhadoClick(Sender: TObject);
    procedure TimerGravacaoTimer(Sender: TObject);
    procedure mnUtilitarios_Gravar_AcoesClick(Sender: TObject);
    procedure mnUtilitarios_Assistir_AcoesClick(Sender: TObject);
    procedure mnImpressao_Faturamento_RankingClick(Sender: TObject);
    procedure mnImpressao_Estoque_ResumidoClick(Sender: TObject);
    procedure mnImpressao_Financeiros_DREClick(Sender: TObject);
    procedure mnImpressao_Gerais_CartaCorrecaoClick(Sender: TObject);
    procedure mnImpressao_Faturamento_DesdobramentoClick(Sender: TObject);
    procedure opSair_TrocarEmpresaClick(Sender: TObject);
    procedure mnUtilitarios_SPED_ContabilClick(Sender: TObject);
    procedure mnUtilitarios_ChecagemClick(Sender: TObject);
    procedure mnImpressao_Faturamento_RelacaoPISClick(Sender: TObject);
    procedure mnContabilidade_BalanceteClick(Sender: TObject);
    procedure mnFaturamento_CancelamentoAdmClick(Sender: TObject);
    procedure mnFinanceiro_BoletoClick(Sender: TObject);
    procedure mnUtilitarios_ADESCOFISClick(Sender: TObject);
    procedure mnImpressao_Faturamento_RelacaoNFServClick(Sender: TObject);
    procedure mnImpressao_Financeiros_VendasRepProdClick(Sender: TObject);
    procedure mnProcesso_FechamentoClick(Sender: TObject);
    procedure mnProcesso_FechamentoComplementarClick(Sender: TObject);
    procedure mnFinanceiro_TransferenciaClassificacaoClick(Sender: TObject);
    procedure mnAtualizar_SistemaClick(Sender: TObject);
    procedure EnviarCartadeCorreo1Click(Sender: TObject);
    procedure AjustarCampodeQuantidade1Click(Sender: TObject);
    procedure lEmpresaClick(Sender: TObject);
    procedure mnProcesso_GLMEClick(Sender: TObject);
    procedure mnImpressao_Faturamento_MediaBCRClick(Sender: TObject);
    procedure ComRefernciaemNFPrpria1Click(Sender: TObject);
    procedure ComRefernciaemNFdeTerceiros1Click(Sender: TObject);
    procedure mnFaturamento_MinutaNFClick(Sender: TObject);
    procedure mnImpressao_ExportacaoReimpressaoClick(Sender: TObject);
    procedure mnImpressao_Faturamento_RankingProdutosClick(Sender: TObject);
    procedure mnUtilitarios_AjustarDadosClick(Sender: TObject);
    procedure mnImpressao_Estoque_MovimentacaoClick(Sender: TObject);
    procedure mnFiscal_SaldoAberturaEstoqueClick(Sender: TObject);
    procedure mnCadastro_FabricantesClick(Sender: TObject);
    procedure mnUtilitarios_EnviarDadosClick(Sender: TObject);
    procedure mnCadastro_DetalhesClick(Sender: TObject);
    procedure mnImpressao_Faturamento_ComposicaoNFSClick(Sender: TObject);
    procedure CarregaAtual;
    procedure mnFinanceiro_CapitalGiroClick(Sender: TObject);
    procedure mnFinanceiro_DescontoDuplicataClick(Sender: TObject);
    procedure DescontodeDuplicatas1Click(Sender: TObject);
    procedure EtiquetasdeVolumes1Click(Sender: TObject);
    procedure mnFaturamento_VerificarEstoqueClick(Sender: TObject);
    procedure mnFinanceiro_PedidosRepresentantesClick(Sender: TObject);
    procedure mnPedido_RepresentantesClick(Sender: TObject);
    procedure mnLogistica_EmissaoNormalClick(Sender: TObject);
    procedure mnCadastros_LogisticaDestinatarioClick(Sender: TObject);
    procedure mnCadastros_LogisticaExpedidorClick(Sender: TObject);
    procedure mnCadastros_LogisticaRecebedorClick(Sender: TObject);
    procedure Endividamento1Click(Sender: TObject);
    procedure mnCadastro_AjustarPrecosClick(Sender: TObject);
    procedure mnFinanceiro_FINIMPClick(Sender: TObject);
    procedure CapitaldeGiro2Click(Sender: TObject);
    procedure FluxodeCaixaMensal1Click(Sender: TObject);
    procedure FINIMP2Click(Sender: TObject);
    procedure FluxodeCaixaDetalhado1Click(Sender: TObject);
    procedure PREVISODESPESASDEPROCESSOS1Click(Sender: TObject);
    procedure mnFinanceiro_MensalClientesClick(Sender: TObject);
    procedure mnUtilitarios_Remessa_BoletosClick(Sender: TObject);
    procedure Exclusodepedidos1Click(Sender: TObject);
    procedure mnFaturamento_NFeManifDestClick(Sender: TObject);
    procedure mnPedido_TelevendasClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure mnRelaodePedidos_NotaClick(Sender: TObject);
    procedure DREGerencial1Click(Sender: TObject);
    procedure mnUtilitarios_ImportarRetornoBoletosClick(Sender: TObject);
    procedure Inventario1Click(Sender: TObject);
    procedure mnLogistica_ConsultaProdutosClick(Sender: TObject);
    procedure mnUtilitarios_ImportarPlanoContasClick(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure LivroRegistrodeInventrioNovo1Click(Sender: TObject);
    procedure bControleNaviosClick(Sender: TObject);
    procedure LivroRegistrodeInventrio21Click(Sender: TObject);
    procedure mnCadastros_CodigoReceitaClick(Sender: TObject);
    procedure mnCadastros_TabelaPISCOFINSClick(Sender: TObject);
    procedure mnFiscal_BloquearMovimentoClick(Sender: TObject);
    procedure SaldodeICMSIPI1Click(Sender: TObject);
    procedure mnFiscal_FichaEstoqueClick(Sender: TObject);
    procedure mnFiscal_FichaInventarioClick(Sender: TObject);
    procedure EstoqueporLote1Click(Sender: TObject);
    procedure LivroRegistrodeServiosTomados1Click(Sender: TObject);
    procedure FichadeInventario1Click(Sender: TObject);
    procedure Importao2Click(Sender: TObject);
    procedure Exportao2Click(Sender: TObject);
    procedure mnFiscal_GNREClick(Sender: TObject);
    procedure ControleDIFAL1Click(Sender: TObject);
    procedure ControledeChassisSeriais1Click(Sender: TObject);
    procedure mnImpressao_Financeiros_JurosMultaClick(Sender: TObject);
    procedure mnCadastro_FinanceiroDRETotalClick(Sender: TObject);
    procedure mnCadastro_FinanceiroDREAgrupClick(Sender: TObject);
    procedure mnUtilitarios_DadosDIClick(Sender: TObject);
    procedure mnCadastro_PlanoContasECFClick(Sender: TObject);
    procedure ComposiodoProcesso1Click(Sender: TObject);
    procedure ProformaInvoice1Click(Sender: TObject);
    procedure mnContabilidade_BloquearMovimentoClick(Sender: TObject);
    procedure mnContabilidade_ExcluirLancamentosClick(Sender: TObject);
    procedure GerarArquivoSPEDContbilECF1Click(Sender: TObject);
    procedure mnImpressao_Financeiros_ExtratoSinteticoClick(Sender: TObject);
    procedure FaturaCommercialInvoice1Click(Sender: TObject);
    procedure PackingList1Click(Sender: TObject);
    procedure mnContabilidade_LancamentosEncerramentoClick(Sender: TObject);
    procedure mnCadastro_ParametrizacaoClick(Sender: TObject);
    procedure DRE1Click(Sender: TObject);
    procedure mnFinanceiro_ControleChequesClick(Sender: TObject);
    procedure OrdemdeCompraPO1Click(Sender: TObject);
    procedure mnImpressao_Financeiros_ControleChequesClick(Sender: TObject);
    procedure GerarArquivoSPEDREDIF1Click(Sender: TObject);
    procedure mnUtilitarios_ExecutarScriptClick(Sender: TObject);
    procedure mnFinanceiro_AgendamentosClick(Sender: TObject);
    procedure Despacho_PLIClick(Sender: TObject);
    procedure mnDespacho_RegistroDIClick(Sender: TObject);
    procedure mnProcesso_POClick(Sender: TObject);
    procedure ImportararquivoXML1Click(Sender: TObject);
    procedure bCteClick(Sender: TObject);
    procedure mnCadastro_TaxaSISCOMEXClick(Sender: TObject);
    procedure ProcessosAdministrativosJudicial1Click(Sender: TObject);
    procedure abeladePreos1Click(Sender: TObject);
    procedure tInadTimer(Sender: TObject);
    procedure mnFinanceiro_ApuracaoImpostosClick(Sender: TObject);
    procedure InputBoxPass(var Msg: TMessage); message InputBoxMessage;
    procedure mnImpressao_ApuracaoICMSRecuperarClick(Sender: TObject);
    procedure PropostadeExportao1Click(Sender: TObject);
    procedure ProtpostadeExportao1Click(Sender: TObject);
    procedure mnProcesso_InvoiceClick(Sender: TObject);
    procedure CommercialInvoiceFatura1Click(Sender: TObject);
    procedure TimerECommerceTimer(Sender: TObject);
    procedure mnCadastros_LancamentoPadraoClick(Sender: TObject);
    procedure mnFinanceiro_PagamentosMesClick(Sender: TObject);
    procedure mnUtilitarios_PedidoCompraClick(Sender: TObject);
    procedure mnCadastro_IntermediadoresClick(Sender: TObject);
    procedure EnviarDUe1Click(Sender: TObject);
    procedure DesativarProdutossemEstoque1Click(Sender: TObject);
    procedure EnviarNotasFiscaispArmazm1Click(Sender: TObject);
    procedure PedidoparaSeparao1Click(Sender: TObject);
    procedure ImportarPlanodeContasReferncia1Click(Sender: TObject);
    procedure EnviarNotaFiscaldeSada1Click(Sender: TObject);
    procedure RelaodeNotasAnalitico1Click(Sender: TObject);
    procedure mnDespacho_LIClick(Sender: TObject);
    procedure MdiadeVendadeProdutos1Click(Sender: TObject);
    procedure SituaodosChassisSeriais1Click(Sender: TObject);
    procedure mnFinanceiro_PedidosAutorizacaoClick(Sender: TObject);
    procedure mnProcesso_NaviosClick(Sender: TObject);
    procedure mnCadastro_RecapPadraoClick(Sender: TObject);
    procedure LayoutdeNotaFiscaldeServioXML1Click(Sender: TObject);
    procedure mnUtilitarios_ItensNavioClick(Sender: TObject);
    procedure mnImpressao_Estoque_NavioClick(Sender: TObject);
    procedure FDa1Click(Sender: TObject);
    procedure ControledeLimitedeRADAR1Click(Sender: TObject);
    procedure ConsultarNFeemitidaparameuCNPJ1Click(Sender: TObject);
    procedure ControledeNavios1Click(Sender: TObject);
    procedure HistricoBL1Click(Sender: TObject);
    procedure HistricoLaudo1Click(Sender: TObject);
    procedure Teste_mnUtilitarios_APIPUCOMEXClick(Sender: TObject);
    procedure RelaodeNotasFiscais1Click(Sender: TObject);
    procedure CTeCancelamentodePrestaoemdesacordo2Click(Sender: TObject);
    procedure CTeCancelamentodePrestaoemdesacordo1Click(Sender: TObject);
    procedure HistricodoPedidosdeVenda1Click(Sender: TObject);
    procedure EstoqueporNavioDI1Click(Sender: TObject);
    procedure mnCadastro_NCMClick(Sender: TObject);
    procedure mnCadastro_NCMAtributosClick(Sender: TObject);
    procedure VendasporRepresentanteCliente1Click(Sender: TObject);
    procedure GuiaGLME1Click(Sender: TObject);
    procedure ControledeBoletos1Click(Sender: TObject);
    procedure MdiadeVendaMensaldeProdutos1Click(Sender: TObject);
    procedure mnUtilitarios_SISCOMEXWEBClick(Sender: TObject);
    procedure ExportaodeDadosviaAPI1Click(Sender: TObject);
    procedure mnRelaodePedidos_VendasClick(Sender: TObject);
    procedure mnImpressao_Financeiros_PagarReceberSimpClick(Sender: TObject);
    procedure ControledeTitulosAbertos1Click(Sender: TObject);
    procedure EnviarDUIMPparaSISCOMEX1Click(Sender: TObject);
    procedure mnCadastro_LPCOClick(Sender: TObject);
    procedure mnFaturamento_IndustrialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mMem_Cliente,
    mMem_Fornecedor,
    mMem_TipoProduto,
    mMem_CondicaoCambio,
    mMem_TipoProcesso,
    mMem_Fabricante,
    nsu,
    mEmpresa,
    mUsuarioNivel,
    Amb_Producao: Integer;

    mMem_PlanoContas,
    mMem_Cor,
    mMem_Incoterm,
    mMem_CFOP,
    mUsuarioCodigo,
    mUsuarioNome,
    mVersao_Sistema,
    mBancoUsuario,
    mBancoSenha,
    mHoraBK,
    mIPSuporte: AnsiString;

    mAtualiza: string;

    mDataBk: TDate;

    mBackup,
    mMSG: Boolean;
    
    mVersaoNFE,
    Certificado: Widestring;
  end;
var
   Menu_Principal: TMenu_Principal;
   MsgDados                        // Retorna com a mensagem XML enviada ao WS.
  ,MsgRetWS                        // Retorna com a mensagem XML da resposta do WS.
  ,MsgResultado                    // Rretorna com a literal da resultado da chamada da DLL.
  ,SiglaUF                         // Sigla da UF consulta.
  ,SiglaWS                         // Sigla do WS (sigla da UF ou SVAN, SVRS ou SVAN).
  ,Certificado                     // Nome (assunto) do certificado digital, tem que ser um certificado digital de PJ autêntico.
  ,Proxy
  ,Usuario
  ,Senha
  ,tMed: Widestring;
   Ambiente: Integer;              // 1 - ambiente de produção / 2- ambiente de homologação.
   mUltimaAtual: TDatetime;
   corlabel:string;

implementation

uses
     // *-------[ Dados ]-------* //
     frmDados,
     frmDMContab,
     frmDMFiscal,
     frmDMComercial,

     // *------[ Cadastros [------* //
     frmCadastro_Empresas,
     frmCadastro_Clientes,
     frmCadastro_Fornecedores,
     frmCadastro_NaturezaOperacao,
     frmCadastro_ICMS,
     frmCadastro_Moedas,
     frmCadastro_Cotacao,
     frmCadastro_UnidadeMedida,
     frmCadastro_TipoProduto,
     frmCadastro_Produtos,
     frmCadastro_ImpostosTaxas,
     frmCadastro_NCM,
     frmCadastro_Bancos,
     frmCadastro_TiposDocumentos,
     frmCadastro_CentroCusto,
     frmCadastro_ModalidadesPagamento,
     frmCadastro_OrgaosPublicos,
     frmCadastro_Incoterms,
     frmCadastro_Usuarios2,
     frmCadastro_PlanoContas,
     frmCadastro_HistoricoPadrao,
     frmCadastro_ClassificacaoFinanceira,
     frmCadastro_Servicos,
     frmCadastro_Municipios,
     frmCadastro_Paises,
     frmCadastro_TiposComissao,
     frmCadastro_ConsultaCST,
     frmCadastro_BeneficiosFiscais,
     frmCadastro_Cores,
     frmCadastro_TiposProcesso,
     frmCadastro_RamoAtividade,
     frmCadastro_TabelaComissoes,
     frmCadastro_ClassificacaoNivel,
     frmCadastro_ProdutosLinhas,
     frmCadastro_Recursos,
     frmCadastro_LocaisDesembaraco,
     frmCadastro_CondicaoCambial,
     frmCadastro_Fabricantes,
     frmCadastro_Detalhes,
     frmCadastro_Destinatarios,
     frmCadastro_Expedidor,
     frmCadastro_Recebedor,
     frmCadastro_AjustarPrecos,
     frmCadastro_Alugueis2,
     frmCadastro_CodigosRFB,
     frmCadastro_Majoracao,
     frmCadastro_DREGrupos,
     frmCadastro_DRE,
     frmCadastro_DREContabil,
     frmCadastros_TaxaSISCOMEX,
     frmCadastro_LancamentoPadrao,
     frmCadastro_Intermediarios,
     frmCadastro_NCMAtributos,

     // *-------[ Pedidos ]-------* //
     frmPedido,
     frmPedido_Devolucao,
     frmPedido_Servico,
     frmPedido_Outros,
     frmPedido_Excluir,
     frmPedido_RepresentantesSimp,

     // *-------[ Processos ]-------* //
     frmProcesso_Exportacao,
     frmProcesso_Importacao ,
     frmProcesso_Historico,
     frmProcesso_SimulacaoCalculo,
     frmProcesso_Fechamento,
     frmProcesso_Invoice,
     frmProcesso_ContratoCambio2,
     frmProcesso_Container,
     frmProcesso_InvoiceExportacao,
     frmProcesso_PLI,
     frmProcesso_RegistroDI,
     frmProcesso_PO,
     frmProcesso_DUE,

     // *--------[ Fiscal ]--------* //
     frmNotaFiscal_Terceiros,
     frmCIAP,
     frmFiscal_TransferenciaEstoque,
     frmFiscal_BloquearPeriodo,
     frmFiscal_SaldoICMSIPI,
     frmFichaInventario,
     frmFiscal_GNRE,
     frmFiscal_ProcessosREINF,

     // *----[ Contabilidade ]-----* //
     frmContabilidade_Lancamentos,
     frmContabilidade_Edicao,
     frmCadastro_PlanoContasECF,
     frmContabilidade_BloquearPeriodo,
     frmContabilidade_Exclusao,
     frmContabilidade_LanEncerramento,
     frmUtilitarios_RecriarContabil,
     frmUtilitarios_RecriarContabil2,

     // *-----[ Configuração ]-----* //
     frmConfig_LayoutMemorando,
     frmConfigsis,
     frmConfig_LayoutNotaServico,
     frmConfig_TipoNotaTerceiros,

     // *------[ Impressão ]-------* //
     frmImpressao_Cadastros_Clientes,
     frmImpressao_Cadastros_Fornecedores,
     frmImpressao_Cadastros_ClassificacaoFinanceira,
     frmImpressao_Cadastros_Produtos,
     frmImpressao_ExportacaoMemorandoOP,
     frmImpressao_NotaFiscalServico,
     frmImpressao_FiscaisOP_LivroSaida,
     frmImpressao_FiscaisOP_LivroEntrada,
     frmImpressao_FiscaisOP_RCPE_P3,
     frmImpressao_FiscaisOP_Inventario_P7,
     frmImpressao_FiscaisOP_RAICMS_P9,
     frmImpressao_Fiscais_ApuracaoPISCOFINS,
     frmImpressao_FiscaisOP_CIAP,
     frmImpressao_FiscaisOP_RAIPI_P9,
     frmImpressao_FiscaisOP_LivroServicoPrestados,
     frmImpressao_FiscaisOP_CFOP,
     frmImpressao_FiscaisOP_NCM,
     frmImpressao_ContabeisOP_PlanoContas,
     frmImpressao_ContabeisOP_Critica,
     frmImpressao_ContabeisOP_Historicos,
     frmImpressao_ContabeisOP_Razao,
     frmImpressao_ContabeisOP_Balancete,
     frmImpressao_ContabeisOP_Diario,
     frmImpressao_Faturamento_OP_NotasEmitidas,
     frmImpressao_Faturamento_DetalhamentoItens,
     frmImpressao_Faturamento_MediaVenda,
     frmImpressao_NotaFiscalServicoReimpressao,
     frmImpressao_Financeiros_Duplicatas,
     frmImpressao_FinanceiroOP_PrestacaoProcesso,
     frmImpressao_FinanceirosOP_ConciliacaoAdiantamento,
     frmImpressao_FinanceirosOP_PagarReceber,
     frmImpressao_FinanceirosOP_ExtratoBanco,
     frmImpressao_FinanceirosOP_Cambio,
     frmImpressao_FinanceirosSN,
     frmImpressao_FinanceirosOP_FaturamentoMensal,
     frmImpressao_FinanceirosOP_VendasRepresentantes,
     frmImpressao_FinanceirosOP_ComissaoTrader,
     frmImpressao_FinanceirosOP_ComissoesPagar,
     frmImpressao_GeraisOP_DeclaracaoNF,
     frmImpressao_Financeiros_CopiaCheque,
     frmImpressao_DANFE,
     frmImpressao_GeraisOP_Recibo,
     frmImpressao_ProcessosOP_ccCliente,
     frmImpressao_ProcessosOP_Dados,
     frmImpressao_ProcessosOP_Fechamento,
     frmImpressao_ProcessosOP_Container,
     frmImpressao_ProcessosOP_Estoque,
     frmImpressao_ProcessosOP_Relacao,
     frmImpressao_ProcessosOP_Acompanhamento,
     frmImpressao_ProcessosOP_Prazo,
     frmImpressao_FinanceirosOP_RecDesp,
     frmImpressao_ProcessosOP_Rentabilidade,
     frmImpressao_ProcessosOP_DemoTX,
     frmImpressao_ProcessosOP_ContratoCambio,
     frmImpressao_ProcessosOP_InvoiceExp,
     frmImpressao_Faturamento_OP_Previsao,
     frmImpressao_Cadastros_TipoNota,
     frmImpressao_FinanceirosOP_Recebiveis,
     frmImpressao_Faturamento_Vendas,
     frmImpressao_Faturamento_Pedidos,
     frmImpressao_Faturamento_OP_NotasSemDestaqueICMS,
     frmImpressao_FaturamentoOP_EstoqueResumido,
     frmImpressao_FaturamentoOP_DesdobDupl,
     frmImpressao_Faturamento_RanckingCliente,
     frmImpressao_Faturamento_OP_Estoque,
     frmImpressao_ProcessosOP_ControleInvoice,
     frmImpressao_ProdutosVendidos,
     frmImpressao_FinanceirosOP_DRE,
     frmImpressao_GeraisOP_CartaCorrecao,
     frmImpressao_Faturamento_DetalhamentoPISCOFINS,
     frmImpressao_Faturamento_OP_NotasEmitidasServ,
     frmImpressao_FinanceirosOP_VendasRepresProdutos,
     frmProcesso_GLME,
     frmImpressao_Faturamento_MediaBCR,
     frmMinuta,
     frmImpressao_ExportacaoReMemorando,
     frmImpressao_ProdutosRanking,
     frmUtilitarios_AjustarEstoqueInventario,
     frmImpressao_ProdutosHistorico,
     frmFiscal_AberturaEstoque,
     frmImpressao_Faturamento_ComposicaoNF,
     frmImpressao_FinanceirosOP_EmprestimoDD,
     frmImpressao_GeraisOP_EtiquetaVolumes,
     frmImpressao_FinanceirosOP_Endividamento,
     frmImpressao_FinanceirosOP_EmprestimoCG,
     frmImpressao_Financeiros_FluxoCaixa,
     frmImpressao_FinanceirosOP_EmprestimoFINIMP,
     frmImpressao_Financeiros_FluxoCaixaDetalhado,
     frmImpressao_Processos_PrevisaoDespesas,
     frmImpressao_Faturamento_RelacaoPedidos,
     frmImpressao_FinanceirosOP_DREGerencial,
     frmImpressao_Estoque_Inventario,
     frmImpressao_Estoque_FichaEstoque,
     frmImpressao_FiscaisOP_Inventario_Novo,
     frmImpressao_FiscaisOP_Inventario_P72,
     frmImpressao_Estoque_Lote,
     frmImpressao_FiscaisOP_LivroServicoTomado,
     frmImpressao_Estoque_FichaInventario,
     frmImpressao_ProcessosOP_InvoiceImp,
     frmImpressao_FiscaisOP_DIFAL,
     frmImpressao_Estoque_Seriais,
     frmImpressao_FinanceirosOP_JurosMulta,
     frmImpressao_FinanceirosOP_ExtratoBancoSint,
     frmImpressao_ProcessosOP_PackingList,
     frmImpressao_Faturamento_ComposicaoProc,
     frmImpressao_ProcessosOP_Proforma,
     frmImpressao_ContabeisOP_DRE,
     frmImpressao_FinanceirosOP_Cheques,
     frmImpressao_Estoque_TabelaPreco,
     frmImpressao_Fiscais_ApuracaoICMSRecuperar,
     frmImpressao_ProcessosOP_Proposta,
     frmImpressao_Faturamento_Analitico,
     frmImpressao_ProcessosOP_PO,
     frmImpressao_Faturamento_VendasMedia,
     frmImpressao_Estoque_SeriaisSit,
     frmImpressao_OP_FaturamentoRecebimento,
     frmImpressao_ProcessosOP_LimiteRADAR,
     frmImpressao_ControleNavios,
     frmImpressao_ControleNaviosBL,
     frmImpressao_ControleNaviosLaudo,
     frmImpressao_ProcessosOP_Navio,
     frmImpressao_FinanceirosOP_ConcAdiant2,
     frmImpressao_ControleNaviosNotas,
     frmImpressao_Financeiros_FluxoCaixaDetalhado2,
     frmImpressao_Faturamento_HistoricoPedidos, 
     frmImpressao_ProcessosOP_Armazem, 
     frmImpressao_Faturamento_VendasClientes, 
     frmImpressao_GeraisOP_DMI, 
     frmImpressao_Financeiros_ContBoletos,
     frmImpressao_Faturamento_RelacaoPedVendas,
     frmImpressao_Estoque_MediaVendas, 

     // *------[ Nota Fiscal ]------* //
     frmNotaFiscal_Servico,
     frmNotaFiscal_EstornoDebitos,
     frmNotaFiscal_OutrosValoresIPI,
     frmNotaServico_Cancelar,
     frmNFe_Cancelamento,
     frmNfe_Inutilizacao,
     frmNotaFiscal_Eletronica2G,
     frmNFe_RecuperarXML,
     frmNFe_CartaCorrecao,
     frmNFe_CancelamentoAdministrativo,
     frmNFe_CartaCorrecaoItem,
     frmNFE_ManifestacaoDestinatario,

     // *------[ Utilitarios ]------* //
     frmUtilitario_ExportaTexto,
     frmUtilitarios_ExportaSINTEGRA,
     frmUtilitarios_ExportaSPED_Fiscal,
     frmUtilitarios_ExportaRemessaDuplicatas,
     frmUtilitarios_ExportaDNF,
     frmUtilitarios_ExportaSPED_PISCOFINS,
     frmUtilitario_ImportarTexto,
     frmUtilitarios_Importar_NFe_Propria,
     frmUtilitarios_ImportaEXCEL,
     frmUtilitario_ImportarEmpresa,
     frmUtilitarios_Restore,
     frmUtilitario_SistemaAcoes,
     frmUtilitarios_ExportaSPED_ECD,
     frmUtilitarios_ExportaADECOFIS,
     frmUtilitarios_EnviarDados,
     frmUtilitarios_ExportaRemessaBoletos,
     frmUtilitarios_ImportaRemessaBoletos,
     frmUtilitarios_ImportarPlanoContas,
     frmUtilitarios_ImportarSISCOMEXWEBXML,
     frmUtilitarios_Exportar_Armazem,
     frmUtilitarios_ImportarDadosDI,
     frmUtilitarios_ExportaSPED_ECF,
     frmUtilitarios_Script,
     frmUtilitarios_ImportarXML,
     frmUtilitarios_OutrosDesativar,
     frmUtilitarios_Exportar_ArmazemPed,
     frmUtilitarios_ImportarPlanoContasRef,
     frmDetectaCaracterXML,
     frmExportar_ArmazemNFSai,
     frmUtilitarios_LayOutXMLNFS,
     frmUtilitarios_ImportarAPIPUCOMEX,
     frmUtilitario_ExportaAPI, 

     // *------[ Financeiros ]------* //
     frmFinanceiro_EstornoBaixa,
     frmFinanceiro_Lista,
     frmFinanceiro_Duplicatas,
     frmFinanceiro_TransferenciaBancaria,
     frmFinanceiro_BaixaLote,
     frmFinanceiro_TransferenciaProcesso,
     frmFinanceiro_SolicitacaoPagamentos,
     frmFinanceiro_SolicitacaoNumerario,
     frmFinanceiro_BloquearPeriodo,
     frmFinanceiro_TransferenciaClassificacao,
     frmFinanceiro_EmprestimosCG,
     frmFinanceiro_EmprestimosDD,
     frmFinanceiro_PedidosRepresentantes,
     frmFinanceiro_EmprestimosFN,
     frmFinanceiro_BoletosGerar,
     frmFinanceiro_RecebimentosClientes,
     frmFinanceiro_ConciliacaoBancaria,
     frmFinanceiro_Agendamento,
     frmFinanceiro_ControleCheques,
     frmFinanceiro_ImpostosMes,
     frmFinanceiro_PagamentosMes,
     frmFinanceiro_PedidosRepAutorizacao,

     // *------[ Diversos ]-------* //
     Funcoes,
     frmSistema_Entrada,
     frmConfig_TipoNota,
     frmSistema_LOG,
     frmJanela_Comunicacao,
     frmJanela_BACKUP,
     frmSobre_Sistema,
     frmSistema_TrocarEmpresa,
     frmChecagem,
     frmAtualiza_Sistema,
     frmEstoque_Minimo,
     frmFichaEstoque2,
     frmPedido_Compra,
     frmBuscarXMLTerceiros,

     // *------[ Logistica ]-------* //
     frmPedido_CTE,
     frmLogistica_ConsultaProdutos,
     frmCTE_CancelamentoPrestacao,
     frmCTE_PrestacaoDesacordo,

     // *------[ Televendas ]------* //
     frmPedido_Televendas,

     // *------[ Despacho ]--------* //
     frmDespacho_LI,
     frmProposta_Exportacao,
     frmCadastro_RecapPadrao,
     
     // *---------[ REINF ]--------* //
     Frm_ACBrReinf,

     // Controle de Embarques.
     frmProcesso_ControleNavios,
     frmUtilitarios_AjustarEstoqueNavio, frmNFE50, frmImpressao_FinanceirosOP_PagarReceberSimp, frmImpressao_FinanceirosOP_ControleAbertos, frmProcesso_DUIMP, frmCadastro_LPCO, frmIndustrializacao;
     

{$R *.dfm}

procedure TMenu_Principal.FormCreate(Sender: TObject);
Var
    iLogo:TImage;
begin
     //Application.OnMessage     := ChamaHelp ;
     Application.HintColor     := $00A8FFFF;                 // muda a cor de fundo
     Application.HintHidePause := 7000 ;                     // Tempo de sustentação.

     // Ajusta a data do windows para o formato dd/MM/yyyy.
     If FormatSettings.ShortDateFormat <> 'dd/MM/yyyy' then begin
        SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, PChar('dd/MM/yyyy'));
        SendMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0, 0);
     End;

     Caption := 'Cybersoft Sistemas - ERP IMPORTA (v '+VersaoEXE(Application.ExeName)+')';
     iBarra.Picture := nil;

     iLogo                    := TImage.Create(Menu_Principal);
     iLogo.Parent             := Menu_Principal;
     iLogo.IncrementalDisplay := false;
     iLogo.AutoSize           := true;
     If FileExists('Fundo_Cybersoft_Logo.jpg') then iLogo.Picture.LoadFromFile('Fundo_Cybersoft_Logo.jpg');

     iLogo.Left := Trunc((Screen.Width  - iLogo.Width )/2);
     iLogo.Top  := Trunc((Screen.Height - iLogo.Height)/2);

     If FileExists('fundo_barra.bmp') then iBarra.Picture.LoadFromFile('fundo_barra.bmp');

     mBackup := false;
     mMSG    := true;
     LimpaMemoria;
end;

procedure TMenu_Principal.mnCadastro_EmpresasClick(Sender: TObject);
begin
      Cadastro_Empresas := TCadastro_Empresas.Create(Self);
      Cadastro_Empresas.Caption := Caption;
      Cadastro_Empresas.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_ClientesClick(Sender: TObject);
begin
      Cadastro_Clientes := TCadastro_Clientes.Create(Self);
      Cadastro_Clientes.Caption := Caption;
      Cadastro_Clientes.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_FornecedoresClick(Sender: TObject);
begin
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_NaturezaClick(Sender: TObject);
begin
      Cadastro_NaturezaOperacao := TCadastro_NaturezaOperacao.Create(Self);
      Cadastro_NaturezaOperacao.Caption := Caption;
      Cadastro_NaturezaOperacao.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_ICMSClick(Sender: TObject);
begin
      Cadastro_ICMS := TCadastro_ICMS.Create(Self);
      Cadastro_ICMS.Caption := Caption;
      Cadastro_ICMS.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_MoedasClick(Sender: TObject);
begin
      Cadastro_Moedas := TCadastro_Moedas.Create(Self);
      Cadastro_Moedas.Caption := Caption;
      Cadastro_Moedas.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_CotacaoClick(Sender: TObject);
begin
      Cadastro_Cotacao := TCadastro_Cotacao.Create(Self);
      Cadastro_Cotacao.Caption := Caption;
      Cadastro_Cotacao.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_UnidadesClick(Sender: TObject);
begin
      Cadastro_UnidadeMedida := TCadastro_UnidadeMedida.Create(Self);
      Cadastro_UnidadeMedida.Caption := Caption;
      Cadastro_UnidadeMedida.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_TiposProdutosClick(Sender: TObject);
begin
      Cadastro_TipoProduto := TCadastro_TipoProduto.Create(Self);
      Cadastro_TipoProduto.Caption := Caption;
      Cadastro_TipoProduto.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_ProdutosClick(Sender: TObject);
begin
      Cadastro_Produtos := TCadastro_Produtos.Create(Self);
      Cadastro_Produtos.Caption := Caption;
      Cadastro_Produtos.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_ClassificacaoFinanceiraClick(Sender: TObject);
begin
      Cadastro_ClassificacaoFinanceira := TCadastro_ClassificacaoFinanceira.Create(Self);
      Cadastro_ClassificacaoFinanceira.Caption := Caption;
      Cadastro_ClassificacaoFinanceira.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_ImpostosTaxasClick(Sender: TObject);
begin
      Cadastro_ImpostosTaxas := TCadastro_ImpostosTaxas.Create(Self);
      Cadastro_ImpostosTaxas.Caption := Caption;
      Cadastro_ImpostosTaxas.ShowModal;
end;

procedure TMenu_Principal.bSairClick(Sender: TObject);
begin
      Close;
end;

procedure TMenu_Principal.opSair_SobreClick(Sender: TObject);
begin
      Sobre_Sistema := TSobre_Sistema.Create(Self);
      Sobre_Sistema.ShowModal;
end;

procedure TMenu_Principal.opSair_SairClick(Sender: TObject);
begin
      Close;
end;

procedure TMenu_Principal.FormClose(Sender: TObject;var Action: TCloseAction);
Var
    mSalvaINI: TIniFile;
    mIni     : String;
begin
     if MessageDlg('Deseja realmente sair do sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        // Salva as informações de atualização para o arquivo de "Inicialização do sistema".
        Screen.Cursor := crHOurGlass;
        try
            mINI      := ExtractFilePath(UpperCase(Application.ExeName))+'ImportaServidor.ini';
            mSalvaINI := TIniFile.Create(mINI);

            mSalvaINI.WriteInteger('ABERTURA','Empresa', mEmpresa);
            if Trim(string(mAtualiza)) <> '' then begin
               mSalvaINI.WriteString('ATUALIZA','Pasta_Atualiza', string(mAtualiza));
            end;

            if Dados.Banco.Connected then begin
               Dados.Configuracao.Open;
                     mSalvaINI.WriteString( 'ATUALIZA'      ,'IP_Suporte', Dados.ConfiguracaoIP_Suporte.AsString);
                     mSalvaINI.WriteInteger( 'BANCO DE DADOS','DataCenter', Dados.ConfiguracaoServidor_Local.AsInteger);
               Dados.Configuracao.Close;
            end;

            Dados.Banco.Disconnect;
            Action := caFree;
        except
             Application.Terminate;
        end;
     end else begin
        Action := caNone;
     end;
end;

procedure TMenu_Principal.mnCadastro_BancosClick(Sender: TObject);
begin
      Cadastro_Bancos := TCadastro_Bancos.Create(Self);
      Cadastro_Bancos.Caption := Caption;
      Cadastro_Bancos.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_ContasPagarClick(Sender: TObject);
begin
     Financeiro_Lista := TFinanceiro_Lista.Create(Self);
     Financeiro_Lista.Caption := Caption;
     Financeiro_Lista.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_TipoDocumentosClick(Sender: TObject);
begin
      Cadastro_TiposDocumentos := TCadastro_TiposDocumentos.Create(Self);
      Cadastro_TiposDocumentos.Caption := Caption;
      Cadastro_TiposDocumentos.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_ImportacaoClick(Sender: TObject);
begin
      if Processo_Importacao = nil then begin
         Processo_Importacao := TProcesso_Importacao.Create(Self);
         Processo_Importacao.Caption := Caption;
         Processo_Importacao.ShowModal;
      end;
end;

procedure TMenu_Principal.mnProcesso_ContainerClick(Sender: TObject);
begin
      Processo_Container := TProcesso_Container.Create(Self);
      Processo_Container.Caption := Caption;
      Processo_Container.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_CentroCustoClick(Sender: TObject);
begin
      Cadastro_CentroCusto := TCadastro_CentroCusto.Create(Self);
      Cadastro_CentroCusto.Caption := Caption;
      Cadastro_CentroCusto.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_ModalidadesClick(Sender: TObject);
begin
      Cadastro_ModalidadesPagamento := TCadastro_ModalidadesPagamento.Create(Self);
      Cadastro_ModalidadesPagamento.Caption := Caption;
      Cadastro_ModalidadesPagamento.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_OrgaosClick(Sender: TObject);
begin
      Cadastro_OrgaosPublicos := TCadastro_OrgaosPublicos.Create(Self);
      Cadastro_OrgaosPublicos.caption := Caption;
      Cadastro_OrgaosPublicos.Showmodal;
end;

procedure TMenu_Principal.mnCadastro_IncotermsClick(Sender: TObject);
begin
      Cadastro_Incoterms := TCadastro_Incoterms.Create(Self);
      Cadastro_Incoterms.caption := Caption;
      Cadastro_Incoterms.Showmodal;
end;

procedure TMenu_Principal.mnConfiguracao_SistemaClick(Sender: TObject);
begin
      Configsis := tConfigsis.Create(Self);
      Configsis.caption := Caption;
      Configsis.ShowModal;
end;

procedure TMenu_Principal.FormShow(Sender: TObject);
Var
   aServidor: TIniFile;
   mAuth,
   mServidor,
   mServidorBox,
   mBanco,
   mNotas,
   mINI: String;
   SR: TSearchRec;
   mMenu,
   i,
   mDataCenter: integer;
   mLista:TStringList;
   Item: TMenuItem;
begin
      mServidor       := Dados.Banco.Server;
      mServidorBox    := Dados.Banco.Server;
      mINI            := ExtractFilePath(UpperCase(Application.ExeName))+'ImportaServidor.ini';
      mVersao_Sistema := 'Cybersoft v2025';
      mDataCenter     := 0;
      corlabel        := ColorToString($006F4A00);

      If FileExists(mINI) then begin
         aServidor := TIniFile.Create(mINI);
         mAuth     := aServidor.ReadString ('SERVIDOR','Autenticacao'  , 'auServer');
         If mAuth = 'auServer' then
            Dados.Banco.Authentication := auServer
         else
            Dados.Banco.Authentication := auWindows;

         Dados.Banco.Database := aServidor.ReadString  ('BANCO DE DADOS', 'Banco_Cadastro', '');
         Dados.Banco.Server   := aServidor.ReadString  ('SERVIDOR'      , 'Nome'          , '***');
         Dados.Banco.Username := aServidor.ReadString  ('BANCO DE DADOS', 'usuario'       , 'sa');
         Dados.Banco.Password := aServidor.ReadString  ('BANCO DE DADOS', 'chc'           , 'sa');
         mDataCenter          := aServidor.ReadInteger ('BANCO DE DADOS', 'DataCenter'    , 0);
         mAtualiza            := aServidor.ReadString  ('ATUALIZA'      , 'Pasta'         , '');
         mUltimaAtual         := aServidor.ReadDateTime('ATUALIZA'      , 'UltimaAtual'   , Date);
         mIPSuporte           := aServidor.ReadString  ('ATUALIZA'      , 'IP_Suporte'    , '');
         mBanco               := aServidor.ReadString  ('BANCO DE DADOS', 'Banco_Cadastro', 'Cybersoft_Cadastros');
         
         If mIPSuporte = '' then aServidor.WriteString( 'ATUALIZA','IP_Suporte', '187.64.130.9');
         If Trim(string(mAtualiza)) = '' then mAtualiza := ExtractFilePath(Application.ExeName)+'Atualizacao';

         mBancoUsuario := Dados.Banco.Username;
         mBancoSenha   := Dados.Banco.PassWord;

         Sistema_Entrada                   := TSistema_Entrada.Create(Self);
         Sistema_Entrada.cEmpresa.KeyValue := aServidor.ReadInteger('ABERTURA','Empresa', 0);
         Sistema_Entrada.cUsuario.Text     := aServidor.ReadString ('ABERTURA','Usuario', '');

         if (NomeComputador = 'NOTE-DED') or (NomeComputador = 'PROGRAMACAO1') or (NomeComputador = 'STUDIO')then begin
            Sistema_Entrada.cSenha.Text := aServidor.ReadString ('ABERTURA','Senha'  , '');
         end;

         // Carrega os nomes dos servidores do arquivo ".ini".
         Sistema_Entrada.cServidor.Enabled := (NomeComputador = 'NOTE-DED') or (NomeComputador = 'PROGRAMACAO');
         Sistema_Entrada.cServidor.Clear;
         Sistema_Entrada.cServidor.Items.Add(aServidor.ReadString('SERVIDOR', 'Nome_STUDIO'    , ''));
         Sistema_Entrada.cServidor.Items.Add(aServidor.ReadString('SERVIDOR', 'Nome_LAPTOP'    , ''));
         Sistema_Entrada.cServidor.Items.Add(aServidor.ReadString('SERVIDOR', 'Nome_DATACENTER', ''));
         Sistema_Entrada.cServidor.Items.Add(aServidor.ReadString('SERVIDOR', 'Nome_CYBER'     , ''));
         Sistema_Entrada.cServidor.Items.Add(aServidor.ReadString('SERVIDOR', 'Nome_PROGRAMACAO'   , ''));
         Sistema_Entrada.cServidor.Text := aServidor.ReadString('SERVIDOR','Nome', '');
      end else begin
         aServidor := TIniFile.Create(mINI);
         mServidorBox := InputBox('Erro de banco de dados', 'SERVIDOR:', mServidorBox);
         aServidor.WriteString( 'SERVIDOR','Autenticacao', 'auServer');
         aServidor.WriteString( 'SERVIDOR','Nome', mServidorBox );
         mBanco := InputBox('Erro de banco de dados', 'BANCO DE DADOS:', mBanco);
         aServidor.WriteString( 'BANCO DE DADOS','Banco_Cadastro', mBanco);
         aServidor.WriteInteger( 'BANCO DE DADOS','DataCenter', 0);

         Dados.Banco.Database := mBanco;
         Dados.Banco.Password := 'sa';
         Dados.Banco.Server   := mServidorBox;

         If Trim(mServidorBox) = '' then begin
            ShowMessage('Erro de dados'+#13+'O sistema não pode ser carregado porque não foi capaz de encontrar o banco de dados informado.'+#13+'Verifique o nome do Banco de Dados e do Servidor de arquivos'+#13+'Se você não sabe como proceder,por favor entre em contato com o administrador do sistema.'+#13+#13+'SERVIDOR             : '+mServidor+#13+'BANCO DE DADOS: '+Dados.Banco.Database);
            FatalExit(0);
         end Else begin
            Dados.Banco.Server := mServidorBox;
         End;
         Sistema_Entrada                   := TSistema_Entrada.Create(Self);
         Sistema_Entrada.cEmpresa.KeyValue := aServidor.ReadInteger('ABERTURA','Empresa', 0);
         Sistema_Entrada.cUsuario.Text     := aServidor.ReadString ('ABERTURA','Usuario', '');
         if (NomeComputador = 'NOTE-DED') or (NomeComputador = 'PROGRAMACAO') then begin
            Sistema_Entrada.cSenha.Text := aServidor.ReadString ('ABERTURA','Senha'  , '');
         end;   
      End;

      aServidor.Free;

      // Muda todas as propriedades "FetchAll" das tabelas para false e FethRow para 1.
      if mDataCenter = 2 then begin
         {                                        
         With Dados do begin
              For i := 0 to Dados.ComponentCount -1 do begin
                  If (Dados.Components[I] is TMSQuery) or (Dados.Components[I] is TMSTable) then begin
                     TMSQuery(Components[I]).Active    := false;
                     TMSQuery(Components[I]).FetchAll  := false;
                     TMSQuery(Components[I]).FetchRows := 500;
                     TMSTable(Components[I]).Active    := false;
                     TMSTable(Components[I]).FetchAll  := false;
                     TMSTable(Components[I]).FetchRows := 500;
                  End;
              End;
         End;
         }
      end;

      // Verifica a conexão com o banco de dados.
      Try
         Dados.Banco.Connected := True;
      Except
         ShowMessage('Atenção!'+#13+#13+'O sistema não pode ser aberto porque não foi capaz de abrir o banco de dados '+Dados.Banco.Database+#13+'localizado em '+Dados.Banco.Server+ #13#13+'Contacte o administrador do sistema.');
         Application.Terminate;
      End;

      Sistema_Entrada.lServidor.Caption := Dados.Banco.Server;
      Sistema_Entrada.ShowModal;
      
      // Habilitando as opções de acesso do "Menu Principal" do usuario.
      {
      with Dados, Usuarios do begin
           sql.Clear;
           sql.Add('select * from Usuarios where Matricula = '+quotedstr(mUsuarioCodigo));
           open;
           for mMenu := 0 to ComponentCount -1 do begin
               If Components[mMenu] is TMenuItem then begin
                  If (Copy(Components[mMenu].Name,1,2) = 'mn') and (Components[mMenu].Tag = 0) then begin
                     try
                        (Components[mMenu] as TMenuItem).Enabled := fieldbyname(Components[mMenu].Name).AsBoolean;
                     except
                        messagedlg('ERRO NO MENU ('+Components[mMenu].Name+')'+#13+#13+'CONTACT O SUPORTE DA CYBERSOFT.', mtError, [mbOK], 0)
                     end;
                  End;
               End;
           End;
      end;
      }
      
      With Dados do begin
           with Empresas do begin
                sql.Clear;
                sql.add('select * from Empresas where Codigo = :pEmpresa');
                parambyname('pEmpresa').AsInteger := mEmpresa;
                open;
           end;
           mnPedido_Televendas.Enabled                := EmpresasModulo_Televendas.AsBoolean         and mnPedido_Televendas.Enabled;
           mnPedido_Representantes.Enabled            := EmpresasModulo_Vendas.AsBoolean             and mnPedido_Representantes.Enabled;
           mnCadastro_Comerciais.Enabled              := EmpresasModulo_Comercial.AsBoolean          and mnCadastro_Comerciais.Enabled;
           mnFinanceiro_Emprestimos.Enabled           := EmpresasModulo_Emprestimos.AsBoolean        and mnFinanceiro_Emprestimos.Enabled;
           mnFinanceiro_PedidosRepresentantes.Enabled := EmpresasModulo_Vendas.AsBoolean             and mnFinanceiro_PedidosRepresentantes.Enabled;
           mnFinanceiro_Boleto.Enabled                := EmpresasModulo_Boleto.AsBoolean             and mnFinanceiro_Boleto.Enabled;
           mnUtilitarios_SISCOMEXWEB.Enabled          := EmpresasModulo_SISCOMEXWEB.AsBoolean        and mnUtilitarios_SISCOMEXWEB.Enabled;
           mnUtilitarios_ImportarPlanoContas.Enabled  := EmpresasModulo_Contabil.AsBoolean           and mnUtilitarios_ImportarPlanoContas.Enabled;
           mnUtilitarios_ExportaArmazem.Enabled       := EmpresasModulo_EnviarArmazem.AsBoolean      and mnUtilitarios_ExportaArmazem.Enabled;
           mnUtilitarios_DadosDI.Enabled              := EmpresasModulo_DadosDI.AsBoolean            and mnUtilitarios_DadosDI.Enabled;
           mnFaturamento_NFeManifDest.Enabled         := EmpresasModulo_ManifestoDest.AsBoolean      and mnFaturamento_NFeManifDest.Enabled  ;
           mnContabilidade.Enabled                    := EmpresasModulo_Contabil.AsBoolean           and mnContabilidade.Enabled;
           mnCadastro_Contabeis.Enabled               := EmpresasModulo_Contabil.AsBoolean           and mnCadastro_Contabeis.Enabled;
           mnFiscal_GNRE.Visible                      := EmpresasModulo_GNRE.AsBoolean               and mnFiscal_GNRE.Visible;
           mnDespacho.Enabled                         := EmpresasModulo_Despacho.AsBoolean           and mnDespacho.Enabled;
           mnCadastro_Logistica.Enabled               := EmpresasModulo_Logistica.AsBoolean          and mnCadastro_Logistica.Enabled;
           mnLogistica.Enabled                        := EmpresasModulo_Logistica.AsBoolean          and mnLogistica.Enabled;
           mnLogistica_CTR.Enabled                    := EmpresasModulo_Logistica.AsBoolean          and mnLogistica_CTR.Enabled;
           mnLogistica_ConsultaProdutos.Enabled       := EmpresasModulo_ConsultaProdutos.AsBoolean   and mnLogistica_ConsultaProdutos.Enabled;
           mnNotaFiscal.Enabled                       := Empresas.fieldbyname('Pagamento').asboolean and mnNotaFiscal.Enabled;
           N60.Visible                                := EmpresasModulo_GNRE.AsBoolean;
           bGerenciadorPedidos.Enabled                := mnPedido_Representantes.Enabled;
           bTelevendas.Enabled                        := mnPedido_Televendas.Enabled;
           bControleNavios.Enabled                    := mnProcesso_Navios.Enabled;
           bGerenciadorPedidos.Enabled                := mnPedido_Representantes.Enabled;
           bPagarReceber.Enabled                      := mnFinanceiro_ContasPagar.Enabled;
           bProcessos.Enabled                         := mnProcesso_Importacao.Enabled;
           bExportacao.Enabled                        := mnProcesso_Exportacao.Enabled;
           bNF_Entrada.Enabled                        := Empresas.fieldbyname('Pagamento').asboolean and mnFaturamento_PedidoEntradas.Enabled;
           bNF_Saida.Enabled                          := Empresas.fieldbyname('Pagamento').asboolean and mnFaturamento_PedidoSaidas.Enabled;
           bNF_Outros.Enabled                         := Empresas.fieldbyname('Pagamento').asboolean and mnFaturamento_PedidoSaidas.Enabled;
           bNFE.Enabled                               := Empresas.fieldbyname('Pagamento').asboolean and mnFaturamento_NFe.Enabled;

           mnImpressao_FiscaisRegistroInventario.Visible := not EmpresasMenu_Inventario.AsBoolean;
           LivroRegistrodeInventrio21.Visible            := not EmpresasMenu_Inventario.AsBoolean;

           lServidor.Caption := Banco.Server;
           lUsuario.Caption  := string(mUsuarioCodigo)+ ': '+string(string(mUsuarioNome));
           lAmbiente.Caption := ' * Erro *';
           If Amb_Producao = 1 then begin
              lAmbiente.Caption := 'Produção';
           End;
           If Amb_Producao = 2 then begin
              lAmbiente.Caption := 'Homologação';
           End;
           lAmbiente.Repaint;

           Configuracao.Open;

           lServidor.Caption := Trim(ConfiguracaoNome_Servidor.AsString);

           If ConfiguracaoServidor_Local.AsInteger = 0 then lRede.Caption := 'REDE INTERNA';
           If ConfiguracaoServidor_Local.AsInteger = 1 then lRede.Caption := 'MÁQUINA LOCAL';
           If ConfiguracaoServidor_Local.AsInteger = 2 then lRede.Caption := 'DATACENTER';
           mnFinanceiro_PedidosAutorizacao.Visible :=  ConfiguracaoAutorizacao_Pedidos.AsBoolean;

           // Muda o banco das tabelas compartilhadas
           ClassificacaoFinanceira.Connection := nil;
           Bancos.Connection                  := nil;
           ClassificacaoFinanceira.close;
           Bancos.Close;
           if ConfiguracaoCompartilhar_Classificacao.AsBoolean = true then
              ClassificacaoFinanceira.Connection := Banco
           else
              ClassificacaoFinanceira.Connection := Dados.Banco_Empresas;
              
           if ConfiguracaoCompartilhar_Bancos.AsBoolean = true then
              Bancos.Connection := Banco
           else
              Bancos.Connection := Banco_Empresas;
              
           // Deleta todos os arquivos de imagem de erro da pasta de log com a data inferior a data atual.
           I := FindFirst(ConfiguracaoPasta_LOG.AsString+'\*.bmp', faAnyFile, SR);
           while I = 0 do begin
                 If FileDateToDateTime(FileAge(ConfiguracaoPasta_LOG.AsString+'\'+ SR.Name)) < Date then begin
                    If (SR.Attr and faDirectory) <> faDirectory then begin
                       If not DeleteFile(ConfiguracaoPasta_LOG.AsString+'\'+ SR.Name) then begin
                          ShowMessage('Não consegui excluir '+ConfiguracaoPasta_LOG.AsString+'\'+ SR.Name);
                       End;
                    End;
                 End;
                 I := FindNext(SR);
           end;

           // Verificando se houve falha durante o envio de alguma nota fiscal e avisando ao usuario.
           with Dados do begin
                Pedidos.sql.clear;
                Pedidos.sql.add('SELECT * FROM Pedidos WHERE ISNULL(OK, 0) > 0');
                Pedidos.Open;
                if pedidos.RecordCount > 0 then begin
                   mNotas := '';
                   mLista := TStringList.Create;
                   mLista.Add('00: Inicio');
                   mLista.Add('01: Capa da Nota Fiscal.');
                   mLista.Add('02: Seriais dos Itens.');
                   mLista.Add('03: CIAP.');
                   mLista.Add('04: Histórico do Processo.');
                   mLista.Add('05: GNRE.');
                   mLista.Add('06: Estoque das Adições');
                   mLista.Add('07: Rateio das Notas.');
                   mLista.Add('08: Despesas das Notas.');
                   mLista.Add('09: Detalhamento dos Itens');
                   mLista.Add('10: Duplicatas e Financeiro');
                   mLista.Add('11: Lançamento do Total da Nota');
                   mLista.Add('12: Lançamento do Total da Nota Comlementar');
                   mLista.Add('13: Lançamentos Contabeis');
                   mLista.Add('14: Lançamentos Contabeis');

                   Pedidos.First;
                   while not Pedidos.eof do begin
                         mNotas := mNotas+#13+'PEDIDO: '+PedidosNumero.AsString+'        Status '+mLista[PedidosOK.asinteger];
                         Pedidos.Next;
                   end;
                   MessageDlg('Atenção!'+#13+#13+'Houve falha para salvar as seguintes notas fiscais no banco de dados.'+#13+#13+
                               mNotas+#13+#13+
                              'É recomendável importar os XML(s) dessas notas caso tenham sido autorizados!'+#13+
                              'Ou entre em contato com o suporte da Cybersoft!', mtError, [mbOK], 0);
                   mLista.Destroy;           
                end;
           end;
      end;
      FecharTabelas(Dados, dmFiscal, dmContab, dmComercial);
end;

procedure TMenu_Principal.mnFiscal_NotasTerceirosClick(Sender: TObject);
begin
      NotaFiscal_Terceiros := TNotaFiscal_Terceiros.Create(Self);
      NotaFiscal_Terceiros.Caption         := Caption;
      NotaFiscal_Terceiros.lTitulo.Caption := 'Registro das Notas Fiscais de Terceiros.';
      NotaFiscal_Terceiros.mProvisoria     := false;
      NotaFiscal_Terceiros.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_ContratoCambioClick(Sender: TObject);
begin
      Processo_ContratoCambio2 := TProcesso_ContratoCambio2.Create(Self);
      Processo_ContratoCambio2.Caption := Caption;
      Processo_ContratoCambio2.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_ExportacaoClick(Sender: TObject);
begin
      if Processo_Exportacao = nil then begin
         Processo_Exportacao := TProcesso_Exportacao.Create(Self);
         Processo_Exportacao.Caption := Caption;
         Processo_Exportacao.ShowModal;
      end;
end;

procedure TMenu_Principal.mnCadastro_PlanoContasClick(Sender: TObject);
begin
      Cadastro_PlanoContas := TCadastro_PlanoContas.Create(Self);
      Cadastro_PlanoContas.Caption := Caption;
      Cadastro_PlanoContas.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_HistoricosClick(Sender: TObject);
begin
      Cadastro_HistoricoPadrao := TCadastro_HistoricoPadrao.Create(Self);
      Cadastro_HistoricoPadrao.Caption := Caption;
      Cadastro_HistoricoPadrao.ShowModal;
end;

procedure TMenu_Principal.opSair_AjudaClick(Sender: TObject);
begin
      Application.HelpCommand(HELP_FINDER, 0);
end;

procedure TMenu_Principal.mnContabilidade_LancamentosClick(Sender: TObject);
begin
      Contabilidade_Lancamentos := TContabilidade_Lancamentos.Create(Self);
      Contabilidade_Lancamentos.Caption := Caption;
      Contabilidade_Lancamentos.Showmodal;
end;

procedure TMenu_Principal.EventosException(Sender: TObject;E: Exception);
var
   Arquivo: TextFile;
   BMPTela: TImage;
   mensagem: string;
   Pos1, Pos2: integer;
begin
      If Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) <> 0 then
         mensagem := 'Data inválida, proceda a correção.'
      else
        If Pos(UpperCase('must have a value'), UpperCase(E.Message)) <> 0 then begin
           Pos1     := Pos('''', E.Message);
           mensagem := E.Message;
           Delete(mensagem, Pos1, 1);
           Pos2     := Pos('''', mensagem);
           mensagem := copy(E.Message, Pos1 + 1, Pos2 - Pos1);
           mensagem := 'É obrigatório o preenchimento do campo '+ mensagem + '.';
        end else
           if Pos(UpperCase('key violation'), UpperCase(E.Message)) <> 0 then
              mensagem := 'Houve violação de Chave. Registro já incluido.'
           else
              if Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0 then
                 mensagem := 'Hora inválida, proceda a correção.'
              else
                 if Pos(UpperCase('is not a valid float'), UpperCase(E.Message)) <> 0 then begin
                    Pos1 :=Pos('''', E.Message);
                    mensagem := E.Message;
                    Delete(mensagem, Pos1, 1);
                    Pos2     := Pos('''', mensagem);
                    mensagem := copy(E.Message, Pos1 + 1, Pos2 - Pos1);
                    mensagem := 'O valor '+ mensagem + ' não é válido.';
                 end else if Pos(UpperCase('field value required'), UpperCase(E.Message)) <> 0 then begin
                    Pos1     := Pos('column ', E.Message) + 7;
                    Pos2     := Pos(',', E.Message);
                    mensagem := copy(E.Message, Pos1, Pos2 - Pos1);
                    mensagem := 'Campo ' + mensagem + ' deve ser preenchido.';
                 end else
                    if Pos(UpperCase('ATTEMPT TO STORE DUPLICATE VALUE'), UpperCase(E.Message)) <> 0 then
                       mensagem := 'Não é permitido valor duplicado. '
                    else
                       if Pos(UpperCase('FOREIGN KEY'), UpperCase(E.Message)) <> 0 then
                          mensagem := 'Operação não permitida, registro vinculado em outra tabela está faltando.'
                       else
                          if Pos('VIOLATION OF PRIMARY OR UNIQUE KEY CONSTRAINT', UpperCase(E.Message)) <> 0 then
                             mensagem := 'Registro Duplicado'+#13#10+Copy(UpperCase(E.Message),Pos('VIOLATION OF PRIMARY OR UNIQUE KEY CONSTRAINT',UpperCase(E.Message))+47,100)
                          else
                             if (Pos(UpperCase('MUST APPLY UPDATES BEFORE REFRESHING DATA'), UpperCase(E.Message)) <> 0) then
                                mensagem := 'É necessário aplicara as alterações antes de atualizar os dados.'
                             else
                                if (Pos(UpperCase('INVALID INPUT VALUE'), UpperCase(E.Message)) <> 0) then
                                   mensagem := 'Valor digitado não é valido conforme a máscara.'
                                else
                                   mensagem := 'Ocorreu o seguinte erro: ' + #13 +UpperCase(E.Message);

      Dados.Configuracao.Open;
      If not DirectoryExists(Dados.ConfiguracaoPasta_LOG.AsString) then
         ForceDirectories(Dados.ConfiguracaoPasta_LOG.AsString);

      AssignFile(Arquivo, Dados.ConfiguracaoPasta_LOG.AsString+'\Cybersoft_Erro.LOG');
      If FileExists(Dados.ConfiguracaoPasta_LOG.AsString+'\Cybersoft_Erro.LOG') then
         Append(Arquivo)   { se existir, apenas adiciona linhas }
      else begin
         ReWrite(Arquivo); { cria um novo se não existir }
         WriteLn(Arquivo, '===============================================================================================================================================================');
         WriteLn(Arquivo, '                                                         REGISTRO DE EVENTOS DO SISTEMA - Cybersoft');
         WriteLn(Arquivo, '===============================================================================================================================================================');
      End;

      Try
         WriteLn(Arquivo, '            SISTEMA: ' + Application.Title);
         WriteLn(Arquivo, '               DATA: ' + DateToStr(Date));
         WriteLn(Arquivo, '               HORA: ' + TimetoStr(Time));
         WriteLn(Arquivo, '            USUARIO: ' + mUsuarioNome);
         WriteLn(Arquivo, '         COMPUTADOR: ' + NomeComputador);
         If RedePresente = True then WriteLn(Arquivo, '               REDE: ATIVA') else WriteLn(Arquivo, '               REDE: NÃO ENCONTRADA');
         WriteLn(Arquivo, '     CONTROLE ATIVO: ' + Screen.ActiveControl.Name);
         WriteLn(Arquivo, '     TITULO DO FORM: ' + Screen.ActiveForm.Caption);
         WriteLn(Arquivo, '         EXECUTAVEL: ' + Application.Exename);
         WriteLn(Arquivo, '             CLASSE: ' + Screen.ActiveForm.ClassName);
         WriteLn(Arquivo, '     ARQUIVO DE LOG: ' + Dados.ConfiguracaoPasta_LOG.Value+'\Cybersoft_Erro.LOG');
         WriteLn(Arquivo, '             MODULO: ' + Screen.ActiveForm.Name);
         WriteLn(Arquivo, '             EVENTO: ' + E.Message);
         WriteLn(Arquivo, '                   : ' + Mensagem);
         WriteLn(Arquivo, '     EMPRESA EM USO: ' + InttoStr(mEmpresa));
         WriteLn(Arquivo, '*---------------------------------------------------------------------------------------------------------------------------------------------------------------*');
         Application.ShowException(E);

         // Salva a imagem da tela na pasta do log
         BMPTela         := TImage.Create(Self);
         BMPTela.Parent  := Menu_Principal;
         BMPTela.Visible := false;
         BMPTela.Picture.Assign(CapturaTela);
         BMPTela.Picture.SaveToFile(Dados.ConfiguracaoPasta_LOG.AsString+'\Tela_Erro_'+NomeComputador+'_'+RemoveCaracter(':', '', TimetoStr(Time))+'.bmp');
         BMPTela.Free;
      Finally
         CloseFile (Arquivo);
      End;
end;

procedure TMenu_Principal.mnFiscal_NotasServicoClick(Sender: TObject);
begin
      NotaFiscal_Servico := TNotaFiscal_Servico.Create(Self);
      NotaFiscal_Servico.Caption := Caption;
      NotaFiscal_Servico.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_ServicosClick(Sender: TObject);
begin
      Cadastro_Servicos := TCadastro_Servicos.Create(Self);
      Cadastro_Servicos.Caption := Caption;
      Cadastro_Servicos.ShowModal;
end;

procedure TMenu_Principal.mnConfiguracao_LayoutMemorandoClick(Sender: TObject);
begin
      Config_LayoutMemorando := TConfig_LayoutMemorando.Create(Self);
      Config_LayoutMemorando.Caption := Caption;
      Config_LayoutMemorando.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_ExportacaoMemorandoClick(Sender: TObject);
begin
      Impressao_ExportacaoMemorandoOp := TImpressao_ExportacaoMemorandoOp.Create(Self);
      Impressao_ExportacaoMemorandoOp.Caption := Caption;
      Impressao_ExportacaoMemorandoOp.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_PedidosServicoClick(Sender: TObject);
begin
      Pedido_Servico := TPedido_Servico.Create(Self);
      Pedido_Servico.Caption := Caption;
      Pedido_Servico.ShowModal;
end;

procedure TMenu_Principal.mnConfiguracao_LayoutNFServicoClick(Sender: TObject);
begin
      Config_LayoutNotaServico := TConfig_LayoutNotaServico.Create(Self);
      Config_LayoutNotaServico.Caption := Caption;
      Config_LayoutNotaServico.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_ExportaTextoClick(Sender: TObject);
begin
      Utilitario_ExportaTexto := TUtilitario_ExportaTexto.Create(Self);
      Utilitario_ExportaTexto.Caption := Caption;
      Utilitario_ExportaTexto.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_SINTEGRAClick(Sender: TObject);
begin
      Utilitarios_ExportaSintegra := TUtilitarios_ExportaSintegra.Create(Self);
      Utilitarios_ExportaSintegra.Caption := Caption;
      Utilitarios_ExportaSintegra.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_SISCOMEXWEBClick(Sender: TObject);
begin
      Utilitarios_ImportarSISCOMEXWEBXML := TUtilitarios_ImportarSISCOMEXWEBXML.Create(Self);
      Utilitarios_ImportarSISCOMEXWEBXML.Caption := Caption;
      Utilitarios_ImportarSISCOMEXWEBXML.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_FiscaisRegistroEntradaClick(Sender: TObject);
begin
      Impressao_FiscaisOP_LivroEntrada := TImpressao_FiscaisOP_LivroEntrada.Create(Self);
      Impressao_FiscaisOP_LivroEntrada.Caption := Caption;
      Impressao_FiscaisOP_LivroEntrada.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_FiscaisRegistroSaidaClick(Sender: TObject);
begin
      Impressao_FiscaisOP_LivroSaida := TImpressao_FiscaisOP_LivroSaida.Create(Self);
      Impressao_FiscaisOP_LivroSaida.Caption := Caption;
      Impressao_FiscaisOP_LivroSaida.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_FiscaisRegistroEstoqueClick(Sender: TObject);
begin
      Impressao_FiscaisOP_RCPE_P3 := TImpressao_FiscaisOP_RCPE_P3.Create(Self);
      Impressao_FiscaisOP_RCPE_P3.Caption := Caption;
      Impressao_FiscaisOP_RCPE_P3.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_FiscaisRegistroInventarioClick(Sender: TObject);
begin
      Impressao_FiscaisOP_Inventario_P7 := TImpressao_FiscaisOP_Inventario_P7.Create(Self);
      Impressao_FiscaisOP_Inventario_P7.Caption := Caption;
      Impressao_FiscaisOP_Inventario_P7.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_FiscaisApuracaoICMSClick(Sender: TObject);
begin
      Impressao_FiscaisOP_RAICMS_P9 := TImpressao_FiscaisOP_RAICMS_P9.Create(Self);
      Impressao_FiscaisOP_RAICMS_P9.Caption := Caption;
      Impressao_FiscaisOP_RAICMS_P9.ShowModal;
end;

procedure TMenu_Principal.mnFiscal_EstornoDebitosClick(Sender: TObject);
begin
      NotaFiscal_EstornoDebitos := TNotaFiscal_EstornoDebitos.Create(Self);
      NotaFiscal_EstornoDebitos.Caption := Caption;
      NotaFiscal_EstornoDebitos.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_FiscaisApuracaoIPIClick(Sender: TObject);
begin
      Impressao_FiscaisOP_RAIPI_P9 := TImpressao_FiscaisOP_RAIPI_P9.Create(Self);
      Impressao_FiscaisOP_RAIPI_P9.Caption := Caption;
      Impressao_FiscaisOP_RAIPI_P9.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_FiscaisServicosPrestadosClick(Sender: TObject);
begin
      Impressao_FiscaisOP_LivroServicoPrestados  := TImpressao_FiscaisOP_LivroServicoPrestados.Create(Self);
      Impressao_FiscaisOP_LivroServicoPrestados.Caption := Caption;
      Impressao_FiscaisOP_LivroServicoPrestados.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_MunicipiosClick(Sender: TObject);
begin
      Cadastro_Municipios := TCadastro_Municipios.Create(Self);
      Cadastro_Municipios.Caption := Caption;
      Cadastro_Municipios.ShowModal;
end;

procedure TMenu_Principal.mnFiscal_OutrosValoresIPIClick(Sender: TObject);
begin
      NotaFiscal_OutrosValoresIPI := TNotaFiscal_OutrosValoresIPI.Create(Self);
      NotaFiscal_OutrosValoresIPI.Caption := Caption;
      NotaFiscal_OutrosValoresIPI.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_NFeNormalClick(Sender: TObject);
begin
      with dmFiscal do begin
           with Notas do begin
                sql.Clear;
                sql.Add('select * from NotasFiscais where DPEC = 1');
                open;
                 If RecordCount > 0 then begin
                    MessageDlg('Atenção!'+#13+#13+
                               'Não é possivel emitir nota fiscal eletrônica.'+#13+#13+
                               'Existe   nota fiscal  emitida  anteriormente  em  contigência,  e  essas  notas fiscais'+#13+
                               'precisam ser enviadas para a SEFAZ pois existe um prazo para entrega das mesmas.'+#13+#13+
                               'Se o servidor da SEFAZ voltou a operar normalmente, envie primeiro essas notas fiscais.'+#13+#13+
                               'Qualquer dúvida contate o suporte técnico do sistema.', mtInformation, [mbOK], 0);
                    Abort;
                 end;
           end;
      end;
      
      If (Amb_Producao <> 1) and (Amb_Producao <> 2) then begin
         MessageDlg('Erro de ambiente!'+#13+#13+'Ambiente da NF-e não definido ou inválido.'+#13+#13+'Contacte o suporte técnico da Cybersoft.', mtError, [mbOK], 0);
         Abort;
      End;

      Dados.Configuracao.Open;
      if Dados.Configuracao.fieldbyname('Layout_NFe').asinteger = 0 then begin
         NotaFiscal_Eletronica2G                    := TNotaFiscal_Eletronica2G.Create(Self);
         NotaFiscal_Eletronica2G.Caption            := Caption;
         NotaFiscal_Eletronica2G.ide_tpEmis         := 1;
         NotaFiscal_Eletronica2G.mTipoEnvio         := 'NORMAL';
         NotaFiscal_Eletronica2G.ShowModal;
      end;
      if Dados.Configuracao.fieldbyname('Layout_NFe').asinteger = 1 then begin
//         NotaFiscal_Eletronica                    := TNotaFiscal_Eletronica.Create(Self);
//         NotaFiscal_Eletronica.Caption            := Caption;
//         NotaFiscal_Eletronica.ide_tpEmis         := 1;
//         NotaFiscal_Eletronica.mTipoEnvio         := 'NORMAL';
//         NotaFiscal_Eletronica.ShowModal;
         NFE50 := TNFE50.Create(Self);
         NFE50.Caption            := Caption;
         NFE50.ide_tpEmis         := 1;
         NFE50.mTipoEnvio         := 'NORMAL';
         NFE50.ShowModal;
      end;
end;

procedure TMenu_Principal.mnUtilitarios_SPED_FiscalClick(Sender: TObject);
begin
      Utilitarios_ExportaSPED_Fiscal := TUtilitarios_ExportaSPED_Fiscal.Create(Self);
      Utilitarios_ExportaSPED_Fiscal.Caption := Caption;
      Utilitarios_ExportaSPED_Fiscal.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_ApuracaoPISCOFINSClick(Sender: TObject);
begin
      Impressao_Fiscais_ApuracaoPISCOFINS := tImpressao_Fiscais_ApuracaoPISCOFINS.Create(Self);
      Impressao_Fiscais_ApuracaoPISCOFINS.Caption := Caption;
      Impressao_Fiscais_ApuracaoPISCOFINS.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_ContabeisPlanoContasClick(Sender: TObject);
begin
      Impressao_ContabeisOP_PlanoContas := tImpressao_ContabeisOP_PlanoContas.Create(Self);
      Impressao_ContabeisOP_PlanoContas.Caption := Caption;
      Impressao_ContabeisOP_PlanoContas.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_ContabeisCriticaClick(Sender: TObject);
begin
      Impressao_ContabeisOP_Critica := tImpressao_ContabeisOP_Critica.Create(Self);
      Impressao_ContabeisOP_Critica.Caption := Caption;
      Impressao_ContabeisOP_Critica.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_AlugueisClick(Sender: TObject);
begin
      Cadastro_Alugueis2 := TCadastro_Alugueis2.Create(Self);
      Cadastro_Alugueis2.Caption := Caption;
      Cadastro_Alugueis2.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_ContabeisHistoricosClick(Sender: TObject);
begin
      Impressao_ContabeisOP_Historicos := tImpressao_ContabeisOP_Historicos.Create(Self);
      Impressao_ContabeisOP_Historicos.Caption := Caption;
      Impressao_ContabeisOP_Historicos.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_ContabeisRazaoClick(Sender: TObject);
begin
      Impressao_ContabeisOP_Razao := TImpressao_ContabeisOP_Razao.Create(Self);
      Impressao_ContabeisOP_Razao.Caption := Caption;
      Impressao_ContabeisOP_Razao.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_ContabeisBalanceteClick(Sender: TObject);
begin
      Impressao_ContabeisOP_Balancete := tImpressao_ContabeisOP_Balancete.Create(Self);
      Impressao_ContabeisOP_Balancete.Caption := Caption;
      Impressao_ContabeisOP_Balancete.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_FiscaisCIAPClick(Sender: TObject);
begin
      Impressao_FiscaisOP_CIAP := tImpressao_FiscaisOP_CIAP.Create(Self);
      Impressao_FiscaisOP_CIAP.Caption := Caption;
      Impressao_FiscaisOP_CIAP.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_ContabeisDiarioClick(Sender: TObject);
begin
      Impressao_ContabeisOP_Diario := TImpressao_ContabeisOP_Diario.Create(Self);
      Impressao_ContabeisOP_Diario.Caption := Caption;
      Impressao_ContabeisOP_Diario.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_LOGClick(Sender: TObject);
begin
      Sistema_LOG := TSistema_Log.Create(Self);
      Sistema_LOG.Caption := Caption;
      Sistema_LOG.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_PedidoCompraClick(Sender: TObject);
begin
      Pedido_Compra := TPedido_Compra.Create(Self);
      Pedido_Compra.Caption := Caption;
      Pedido_Compra.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_DuplicatasClick(Sender: TObject);
begin
      Impressao_Financeiros_Duplicatas := TImpressao_Financeiros_Duplicatas.Create(Self);
      Impressao_Financeiros_Duplicatas.Caption := Caption;
      Impressao_Financeiros_Duplicatas.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_NFeCancelarClick(Sender: TObject);
begin
      If (Amb_Producao <> 1) and (Amb_Producao <> 2) then begin
         MessageDlg('Erro de ambiente!'+#13+#13+'Ambiente da NF-e não definido ou inválido.'+#13+#13+'Contacte o suporte técnico da Cybersoft.', mtError, [mbOK], 0);
         Abort;
      End;
      NFe_Cancelamento := TNFe_Cancelamento.Create(Self);
      NFe_Cancelamento.Caption := Caption;
      NFe_Cancelamento.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_NFeInutilizarClick(Sender: TObject);
begin
      If (Amb_Producao <> 1) and (Amb_Producao <> 2) then begin
         MessageDlg('Erro de ambiente!'+#13+#13+'Ambiente da NF-e não definido ou inválido.'+#13+#13+'Contacte o suporte técnico da Cybersoft.', mtError, [mbOK], 0);
         Abort;
      End;
      NFe_Inutilizacao := TNFe_Inutilizacao.Create(Self);
      NFe_Inutilizacao.Caption := Caption;
      NFe_Inutilizacao.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_NFeConsultarClick(Sender: TObject);
var
   Util: OleVariant;            // acrescentar comObj no uses da aplicaçõa
   siglaWS: widestring;         // informar a siglaWS: UF, SCAN, SVRS, SVC-AN, SVC-RS
   siglaUF: widestring;         // inforamr a sigla da UF
   tipoAmbiente: integer;       // informar o ambiente: 1 - produção ou 2 - homologação
   versao: widestring;          // informar a versao do WS: 2.00, 3.00 ou 3.10
   nomeCertificado: widestring; // informar o nomeCertificado (campo assunto do certificado)
   proxy : widestring;          // informar o proxy se necessário
   usuario : widestring;        // inforamr o usuário do proxy se necessário
   senha : widestring;          // informar a senha se necessário
   //  parâmetros de retorno - inicilizar todas ela
   cStat: integer;              // retorna o cStat do Web Service
   msgDados: widestring;        // retorna o XML enviado ao Web Service
   msgRetWS: widestring;        // retorna o XML da resposta do Web Service
   msgResultado: widestring;    // retorna o literal da resposto do Web Service
begin
     with Dados do begin
          with Empresas do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
               ParamByName('pEmpresa').AsInteger := mEmpresa;
               Open;
          end;
          with Configuracao do begin
               Close;
               Open;
          end;

          Util         := CreateOleObject('NFe_Util_2G.util');
          Certificado  := Trim(EmpresasCertificado_Digital.AsString);
          mVersaoNFE   := Trim(EmpresasNFEletronica_Layout.AsString);
          SiglaWS      := Trim(EmpresasUF_WebService.AsString);
          SiglaUF      := Trim(EmpresasEstado.AsString);
          Ambiente     := Amb_Producao;
          MsgRetWS     := '';
          MsgDados     := '';
          MsgResultado := '';
          Proxy        := Trim(ConfiguracaoServidor_Proxy.AsString);
          Usuario      := Trim(ConfiguracaoUsuario_Proxy.AsString);
          Senha        := Trim(ConfiguracaoSenha_Proxy.AsString);

          cStat := Util.ConsultaStatus2G(siglaWS,
                                         siglaUF,
                                         Ambiente,
                                         Certificado,
                                         mVersaoNFE,
                                         msgDados,
                                         msgRetWS,
                                         msgResultado,
                                         proxy,
                                         usuario,
                                         senha);
     end;

     MessageDlg('Resultado da chamada do WS'+#13+#13+msgResultado+#13+#13+msgRetWS, mtInformation, [mbOk], 0);
end;

procedure TMenu_Principal.mnImpressao_Faturamento_DANFEClick(Sender: TObject);
begin
      Impressao_DANFE := TImpressao_DANFE.Create(Self);
      Impressao_DANFE.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_PaisesClick(Sender: TObject);
begin
      Cadastro_Paises := TCadastro_Paises.Create(Self);
      Cadastro_Paises.Caption := Caption;
      Cadastro_Paises.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_BACKUPClick(Sender: TObject);
Var
    mDia     : array[1..7] of string;
    mDirLocal,
    mDirCopia,
    mIni: String;
    aServidor: TIniFile;
    mAtivo   : Boolean;
    mDataLog : TDate;
begin
      // Pausa de 1 segundo.
      Sleep(1500);
      mINI      := ExtractFilePath(UpperCase(Application.ExeName))+'ImportaServidor.ini';
      aServidor := TIniFile.Create(mINI);
      mAtivo    := aServidor.ReadBool('BANCO DE DADOS','Backup_Ativo', false);

      If mBackup = false then mAtivo := false;

      If mAtivo = false then begin
         aServidor.WriteBool('BANCO DE DADOS','Backup_Ativo', true);

         mDia[1] := 'Domingo';
         mDia[2] := 'Segunda';
         mDia[3] := 'Terca';
         mDia[4] := 'Quarta';
         mDia[5] := 'Quinta';
         mDia[6] := 'Sexta';
         mDia[7] := 'Sabado';

         Janela_Backup := TJanela_Backup.Create(Self);

         With Dados do begin
              Configuracao.Open;

              // Limpa o log de registro do sistemas.
              mDataLog := Date-(ConfiguracaoPrazo_Log.AsInteger * 30);
              Log.Close;
              Log.SQL.Clear;
              Log.SQL.Add('DELETE FROM LOG WHERE Data < :pData');
              Log.ParamByName('pData').AsDate := mDataLog;
              Log.Execute;

              // Verifica se a pasta ja existe, se não existe cria.
              If not DirectoryExists(ConfiguracaoPasta_BACKUP.AsString) then
                 ForceDirectories(ConfiguracaoPasta_BACKUP.AsString);

              mDirLocal := Trim(ConfiguracaoPasta_BACKUP.AsString)+'\'+mDia[DayOfWeek(Date)];
              
              If Trim(ConfiguracaoPasta_BACKUPCopia.AsString) <> '' then
                 mDirCopia := Trim(ConfiguracaoPasta_BACKUPCopia.AsString)+'\'+mDia[DayOfWeek(Date)];

              If not DirectoryExists(mDirLocal) then
                 ForceDirectories(mDirLocal);

              If (mDirLocal <> mDirCopia) and (mDirCopia <> '') then begin
                 If not DirectoryExists(mDirCopia) then
                    ForceDirectories(mDirCopia);
              End;

              Janela_Backup.lServidor.Caption := lServidor.Caption;
              Janela_Backup.lLocal.Caption    := mDirLocal;
              Janela_Backup.lCopia.Caption    := mDirCopia;
              Janela_Backup.Caption           := Caption;
              Janela_Backup.Show;
              Application.ProcessMessages;

              Try
                  // Executando o script de backup no "SERVIDOR.
                  Backup.SQL.Clear;
                  Backup.SQL.Add('DECLARE @name     VARCHAR(50)  -- database name');
                  Backup.SQL.Add('DECLARE @path     VARCHAR(256) -- path for backup files');
                  Backup.SQL.Add('DECLARE @fileName VARCHAR(256) -- filename for backup');
                  Backup.SQL.Add('DECLARE @fileDate VARCHAR(20)  -- used for file name');
                  Backup.SQL.Add('SET @path = '+QuotedStr(mDirLocal+'\') );
                  Backup.SQL.Add('SELECT @fileDate = CONVERT(VARCHAR(20),GETDATE(),112)');
                  Backup.SQL.Add('DECLARE db_cursor CURSOR FOR');
                  Backup.SQL.Add('SELECT Name');
                  Backup.SQL.Add('FROM Master.dbo.sysdatabases');
                  Backup.SQL.Add('WHERE name NOT IN (''master'',''model'',''msdb'',''Northwind'',''pubs'',''tempdb'', ''ReportServer'', ''ReportServerTempDB'')');
                  Backup.SQL.Add('OPEN db_cursor');
                  Backup.SQL.Add('FETCH NEXT FROM db_cursor INTO @name');
                  Backup.SQL.Add('WHILE @@FETCH_STATUS = 0');
                  Backup.SQL.Add('BEGIN');
                  Backup.SQL.Add('       SET @fileName = @path + @name + '+QuotedStr('.bak') );
                  Backup.SQL.Add('       BACKUP DATABASE @name TO DISK = @fileName WITH FORMAT');
                  Backup.SQL.Add('       FETCH NEXT FROM db_cursor INTO @name');
                  Backup.SQL.Add('END');
                  Backup.SQL.Add('CLOSE db_cursor');
                  Backup.SQL.Add('DEALLOCATE db_cursor');
                  //Backup.SQL.SaveToFile('c:\temp\BACKUP.SQL');
                  Backup.Execute;

                  // Executando o script de backup da "CÓPIA".
                  If mDirCopia <> '' then begin
                     Janela_Backup.lAcao.Caption := 'Executando a cópia do BACKUP...';
                     Application.ProcessMessages;

                     Backup.SQL.Clear;
                     Backup.SQL.Add('DECLARE @name     VARCHAR(50)  -- database name');
                     Backup.SQL.Add('DECLARE @path     VARCHAR(256) -- path for backup files');
                     Backup.SQL.Add('DECLARE @fileName VARCHAR(256) -- filename for backup');
                     Backup.SQL.Add('DECLARE @fileDate VARCHAR(20)  -- used for file name');
                     Backup.SQL.Add('SET @path = '+QuotedStr(mDirCopia+'\') );
                     Backup.SQL.Add('SELECT @fileDate = CONVERT(VARCHAR(20),GETDATE(),112)');
                     Backup.SQL.Add('DECLARE db_cursor CURSOR FOR');
                     Backup.SQL.Add('SELECT Name');
                     Backup.SQL.Add('FROM Master.dbo.sysdatabases');
                     Backup.SQL.Add('WHERE name NOT IN (''master'',''model'',''msdb'',''Northwind'',''pubs'',''tempdb'', ''ReportServer'', ''ReportServerTempDB'')' );
                     Backup.SQL.Add('OPEN db_cursor');
                     Backup.SQL.Add('FETCH NEXT FROM db_cursor INTO @name');
                     Backup.SQL.Add('WHILE @@FETCH_STATUS = 0');
                     Backup.SQL.Add('BEGIN');
                     Backup.SQL.Add('       SET @fileName = @path + @name + '+QuotedStr('.bak') );
                     Backup.SQL.Add('       BACKUP DATABASE @name TO DISK = @fileName WITH FORMAT');
                     Backup.SQL.Add('       FETCH NEXT FROM db_cursor INTO @name');
                     Backup.SQL.Add('END');
                     Backup.SQL.Add('CLOSE db_cursor');
                     Backup.SQL.Add('DEALLOCATE db_cursor');
                     Backup.Execute;
                  End;

                  // Registrando a data do último backup.
                  Configuracao.Edit;
                               ConfiguracaoBackup_Ultimo.Value := Date;
                  Configuracao.Post;
                  Configuracao.ApplyUpdates;
                  Configuracao.Refresh;

                  GerarLog(string(mUsuarioCodigo), 'BACKUP', 'EXECUÇÃO' , '', 'Executada rotina de backup do banco de dados.', '', '', '');

                  Screen.Cursor := crDefault;
                  Janela_Backup.Close;

                  If mMSG = true then
                     Application.MessageBox(PChar('Backup terminado.'+#13+#13+'Arquivos de backup salvos em: '+mDirLocal+#13+#13+'Com cópia em: '+mDirCopia),'BackUp', MB_OK or MB_APPLMODAL or MB_ICONINFORMATION);
              except
                  GerarLog(string(mUsuarioCodigo), 'BACKUP', 'EXECUÇÃO' , '', 'Erro na execução da rotina de backup do banco de dados.', '', '', '');
                  Janela_Backup.Close;
                  MessageDlg('Não foi possivel executar o BACKUP do banco de dados!'+#13+#13+'Entre em contato com o suporte técnico.'+#13+#13+'Caminho:'+mDirLocal, mtError, [mbOK], 0);
              End;
              Configuracao.Open;

              aServidor.WriteBool('BANCO DE DADOS','Backup_Ativo', false);
         End;
      End;

      aServidor.Free;
end;

procedure TMenu_Principal.mnFaturamento_NFeDPECClick(Sender: TObject);
begin
      if (Amb_Producao <> 1) and (Amb_Producao <> 2) then begin
         MessageDlg('Erro de ambiente!'+#13+#13+'Ambiente da NF-e não definido ou inválido.'+#13+#13+'Contacte o suporte técnico da Cybersoft.', mtError, [mbOK], 0);
         Abort;
      end;
      with Dados do begin
           Configuracao.Open;
           with Empresas do begin
                sql.Clear;
                sql.Add('select * from Empresas where Codigo = :pEmp');
                parambyname('pEmp').AsInteger := mEmpresa;
                open;
           end;
           NotaFiscal_Eletronica2G                    := TNotaFiscal_Eletronica2G.Create(Self);
           NotaFiscal_Eletronica2G.Caption            := Caption;
           NotaFiscal_Eletronica2G.ide_tpEmis         := iif(Empresas.FieldByName('UF_WEBServiceEPEC').asstring = 'SVC-RS', 7, 6);
           NotaFiscal_Eletronica2G.mTipoEnvio         := iif(Empresas.FieldByName('UF_WEBServiceEPEC').asstring = 'SVC-RS', 'SVC', 'EPEC');
           NotaFiscal_Eletronica2G.lDescricao.Caption := 'Envio das Notas Fiscais eletrônicas em contigência - '+ iif(Empresas.FieldByName('UF_WEBServiceEPEC').asstring = 'SVC-RS', 'SVC', 'EPEC');
           NotaFiscal_Eletronica2G.ShowModal;
      end;
end;

procedure TMenu_Principal.mnCadastro_ComissoesClick(Sender: TObject);
begin
      Cadastro_TiposComissao := TCadastro_TiposComissao.Create(Self);
      Cadastro_TiposComissao.Caption := Caption;
      Cadastro_TiposComissao.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_NFServicoClick(Sender: TObject);
begin
      Impressao_NotaFiscalServico := TImpressao_NotaFiscalServico.Create(Self);
      Impressao_NotaFiscalServico.Caption := Caption;
      Impressao_NotaFiscalServico.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_ReNFServicoClick(Sender: TObject);
begin
      Impressao_NotaFiscalServicoReimpressao := TImpressao_NotaFiscalServicoReimpressao.Create(Self);
      Impressao_NotaFiscalServicoReimpressao.Caption := Caption;
      Impressao_NotaFiscalServicoReimpressao.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_NFServicoCancelarClick(Sender: TObject);
begin
      NotaServico_Cancelar := TNotaServico_Cancelar.Create(Self);
      NotaServico_Cancelar.Caption := Caption;
      NotaServico_Cancelar.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_PagarReceberClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_PagarReceber := TImpressao_FinanceirosOP_PagarReceber.Create(Self);
      Impressao_FinanceirosOP_PagarReceber.Caption := Caption;
      Impressao_FinanceirosOP_PagarReceber.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_ExtratoBancarioClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_ExtratoBanco:= TImpressao_FinanceirosOP_ExtratoBanco.Create(Self);
      Impressao_FinanceirosOP_ExtratoBanco.Caption := Caption;
      Impressao_FinanceirosOP_ExtratoBanco.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_ConsultaCSTClick(Sender: TObject);
begin
      Cadastro_ConsultaCST := TCadastro_ConsultaCST.Create(Self);
      Cadastro_ConsultaCST.Caption := Caption;
      Cadastro_ConsultaCST.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_DuplicatasClick(Sender: TObject);
begin
      Financeiro_Duplicatas := TFinanceiro_Duplicatas.Create(Self);
      Financeiro_Duplicatas.Caption := Caption;
      Financeiro_Duplicatas.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_PrestacaoProcessoClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_PrestacaoProcesso := TImpressao_FinanceirosOP_PrestacaoProcesso.Create(Self);
      Impressao_FinanceirosOP_PrestacaoProcesso.Caption := Caption;
      Impressao_FinanceirosOP_PrestacaoProcesso.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Estoque_ProcessoClick(Sender: TObject);
begin
      Impressao_ProcessosOP_Estoque := TImpressao_ProcessosOP_Estoque.Create(Self);
      Impressao_ProcessosOP_Estoque.Caption := Caption;
      Impressao_ProcessosOP_Estoque.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Gerais_DeclaracaoNFClick(Sender: TObject);
begin
      Impressao_GeraisOP_DeclaracaoNF := TImpressao_GeraisOP_DeclaracaoNF.Create(Self);
      Impressao_GeraisOP_DeclaracaoNF.Caption := Caption;
      Impressao_GeraisOP_DeclaracaoNF.ShowModal;
end;

procedure TMenu_Principal.TimerBackupTimer(Sender: TObject);
var
   h:string;
begin
     TimerBackup.Enabled := false;
     h := Copy(TimetoStr(Time), 1, 5);
     if (h >= string(mHoraBK)) and (mDataBK <> Date) then begin
        mnUtilitarios_BACKUPClick(Self);
     end else begin
        TimerBackup.Enabled := true;
     end;
end;

procedure TMenu_Principal.TimerECommerceTimer(Sender: TObject);
var
   tPed:TMSQuery;
//   MemoJ:TMemo;
begin
    // Verificando se existe pedidos disponiveis no site de vendas.
    TimerECommerce.Enabled := false;
    
//    MemoJ         := TMemo.Create(Menu_Principal);
//    MemoJ.Visible := false;
//    MemoJ.Parent  := Menu_Principal;
//    MemoJ.Clear;

//    RESTClient1.BaseURL := 'https://maturanawinery.com.br/wp-json/wc/v3/orders?after=2020-12-28T09:00:00&consumer_key=ck_69cf6174923833daac17f70d855cfcd53d85600a&consumer_secret=cs_12940db7fa540e55f5c90a38ca18542c6436b2c7';
(*
    RESTClient1.BaseURL := Dados.ConfiguracaoURL_EComm.AsString +
                          'orders?after='+DateTimetoStr(now) +
                          '&consumer_key=' + Dados.ConfiguracaoUsuario_EComm.AsString +
                          '&consumer_secret=' + Dados.ConfiguracaoSenha_EComm.AsString;
    RESTRequest1.Execute;
    MemoJ.Lines.Add(RESTRequest1.Response.JSONText);

//    ParseJson(MemoJ.Text);
//memo1.text := memoj.text;
*)
    tPed := TMSQuery.Create(self);
    with Dados, tPed do begin
         Connection := Banco_Empresas;
         close;  
         sql.Clear;
         sql.Add('select count(*) as Qtde from PedidosRepresentantes where Novo = 1 and Origem_Pedido = ''REPRESENTA'' ');
         open;
         if fieldbyname('Qtde').AsInteger > 0 then begin
            lECommerce.Visible := true;
            lECommerce.Repaint;
            PlaySound(PChar(GetCurrentDir+'\Pedido.wav'), 2, SND_LOOP);
         end;
    end;
    tPed.Free;
    //TimerECommerce.Enabled := true;
end;

procedure TMenu_Principal.FormActivate(Sender: TObject);
begin
      Color := $00404040;
      Dados.Configuracao.Open;

      pDisplay.Width := Screen.Width - (bSair.Left + bSair.Width) - Panel2.Width - 4;
      mHoraBK        := Copy(Dados.ConfiguracaoBackup_Hora.AsAnsiString, 1, 5);
      mDataBK        := Dados.ConfiguracaoBackup_Ultimo.Value;

      Dados.Usuarios.Open;
      Dados.Usuarios.Locate('Matricula', mUsuarioCodigo, [loCaseInsensitive]);
      If Dados.UsuariosChecagem.AsBoolean then begin
         Checagem := TChecagem.Create(Self);
         Checagem.Caption := Caption;
         Checagem.ShowModal;
      End;

      TimerBackup.Enabled     := (Dados.ConfiguracaoBackup_Automatico.AsBoolean and Dados.UsuariosBackup_Automatico.AsBoolean) and (mDataBK <> Date);
      TimerECommerce.Enabled  := Dados.ConfiguracaoAtivar_EComm.AsBoolean;
      TimerECommerce.Interval := Dados.ConfiguracaoTempo_Verificacao.Value * 60000;

      Dados.Usuarios.Close;

      // Mostrar o memo com as ultimas atualizações se estiver selecionado na opção do menu.
      //If MostrarAtual.Checked = true then begin

      //   CarregaAtual;
         //pAtualizacoes.Visible := Trim(cAtualizacoes.Lines.Text) <> '';
      //End;
(*
      // Verificando se houve falha durante o envio de alguma nota fiscal e avisando ao usuario.
      with Dados do begin
           Pedidos.sql.clear;
           Pedidos.sql.add('SELECT * FROM Pedidos WHERE ISNULL(OK, 0) = 1');
           Pedidos.Open;
           mNotas := '';
           if pedidos.RecordCount > 0 then begin
              Pedidos.First;
              while not Pedidos.eof do begin
                    mNotas := 'PEDIDO: '+PedidosNumero.AsString+' NFE: '+ mNotas + PedidosNFe_cNF.AsString+#13;
                    Pedidos.Next;
              end;
              MessageDlg('Atenção!'+#13+#13+'Houve falha para salvar as seguintes notas fiscais no banco de dados.'+#13+#13+
                          mNotas+#13+#13+
                         'É recomendável importar os XML(s) dessas notas caso tenham sido autorizados!'+#13+
                         'Ou entre em contato com o suporte da Cybersoft!', mtError, [mbOK], 0);
           end;
      end;
*)      

end;

procedure TMenu_Principal.mnImpressao_FiscaisRelacaoNCMClick(Sender: TObject);
begin
      Impressao_FiscaisOP_NCM := TImpressao_FiscaisOP_NCM.Create(Self);
      Impressao_FiscaisOP_NCM.Caption := Caption;
      Impressao_FiscaisOP_NCM.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processos_DadosClick(Sender: TObject);
begin
      Impressao_ProcessosOP_Dados := TImpressao_ProcessosOP_Dados.Create(Self);
      Impressao_ProcessosOP_Dados.Caption := Caption;
      Impressao_ProcessosOP_Dados.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_RelacaoNFClick(Sender: TObject);
begin
      Impressao_Faturamento_OP_NotasEmitidas := TImpressao_Faturamento_OP_NotasEmitidas.Create(Self);
      Impressao_Faturamento_OP_NotasEmitidas.Caption := Caption;
      Impressao_Faturamento_OP_NotasEmitidas.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_TransferenciaBancariaClick(Sender: TObject);
begin
      Financeiro_TransferenciaBancaria := TFinanceiro_TransferenciaBancaria.Create(Self);
      Financeiro_TransferenciaBancaria.Caption := Caption;
      Financeiro_TransferenciaBancaria.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_ChequeClick(Sender: TObject);
begin
      Impressao_Financeiros_CopiaCheque := TImpressao_Financeiros_CopiaCheque.Create(Self);
      Impressao_Financeiros_CopiaCheque.Caption := Caption;
      Impressao_Financeiros_CopiaCheque.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_CadastrosClassFinanceiraClick(Sender: TObject);
begin
      Impressao_Cadastros_ClassificacaoFinanceira := TImpressao_Cadastros_ClassificacaoFinanceira.Create(Self);
      Impressao_Cadastros_ClassificacaoFinanceira.Caption := Caption;
      Impressao_Cadastros_ClassificacaoFinanceira.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_CadastrosProdutosClick(Sender: TObject);
begin
      Impressao_Cadastros_Produtos := TImpressao_Cadastros_Produtos.Create(Self);
      Impressao_Cadastros_Produtos.Caption := Caption;
      Impressao_Cadastros_Produtos.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_PedidosEntradaClick(Sender: TObject);
begin
      Pedido                 := TPedido.Create(Self);
      Pedido.Caption         := Caption;
      Pedido.mSai_Entra      := 0;
      Pedido.lTitulo.Caption := 'Entrada (Importação).';
      Pedido.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_PedidosEntrada_OutrasClick(Sender: TObject);
begin
      Pedido_Outros                 := TPedido_Outros.Create(Self);
      Pedido_Outros.Caption         := Caption;
      Pedido_Outros.mSai_Entra      := 0;
      Pedido_Outros.lTitulo.Caption := 'Entrada (Outras).';
      Pedido_Outros.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_PedidosSaidaClick(Sender: TObject);
begin
      Pedido                      := TPedido.Create(Self);
      Pedido.Caption              := Caption;
      Pedido.mSai_Entra           := 1;
      Pedido.cDescPercent.Visible := True;
      Pedido.lDesconto.Visible    := True;
      Pedido.lTitulo.Caption      := 'Saída (Importação).';
      Pedido.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_PedidosSaida_OutrasClick(Sender: TObject);
begin
      Pedido_Outros                 := TPedido_Outros.Create(Self);
      Pedido_Outros.Caption         := Caption;
      Pedido_Outros.mSai_Entra      := 1;
      Pedido_Outros.lTitulo.Caption := 'Saída (Outras).';
      Pedido_Outros.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_DetalhamentoClick(Sender: TObject);
begin
      Impressao_Faturamento_DetalhamentoItens := TImpressao_Faturamento_DetalhamentoItens.Create(Self);
      Impressao_Faturamento_DetalhamentoItens.Caption := Caption;
      Impressao_Faturamento_DetalhamentoItens.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_EstornoBaixaClick(Sender: TObject);
begin
      Financeiro_EstornoBaixa := TFinanceiro_EstornoBaixa.Create(Self);
      Financeiro_EstornoBaixa.Caption := Caption;
      Financeiro_EstornoBaixa.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_FiscaisRelacaoCFOPClick(Sender: TObject);
begin
      Impressao_FiscaisOP_CFOP := TImpressao_FiscaisOP_CFOP.Create(Self);
      Impressao_FiscaisOP_CFOP.Caption := Caption;
      Impressao_FiscaisOP_CFOP.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_CadastrosClientesClick(Sender: TObject);
begin
      Impressao_Cadastros_Clientes         := TImpressao_Cadastros_Clientes.Create(Self);
      Impressao_Cadastros_Clientes.Caption := Caption;
      Impressao_Cadastros_Clientes.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_ComissaoTraderClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_ComissaoTrader := TImpressao_FinanceirosOP_ComissaoTrader.Create(Self);
      Impressao_FinanceirosOP_ComissaoTrader.Caption := Caption;
      Impressao_FinanceirosOP_ComissaoTrader.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_CadastrosFornecedoresClick(Sender: TObject);
begin
      Impressao_Cadastros_Fornecedores         := TImpressao_Cadastros_Fornecedores.Create(Self);
      Impressao_Cadastros_Fornecedores.Caption := Caption;
      Impressao_Cadastros_Fornecedores.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_HistoricoClick(Sender: TObject);
begin
      Processo_Historico := TProcesso_Historico.Create(Self);
      Processo_Historico.Caption := Caption;
      Processo_Historico.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_SimulacaoClick(Sender: TObject);
begin
      Processo_SimulacaoCalculo := TProcesso_SimulacaoCalculo.Create(Self);
      Processo_SimulacaoCalculo.Caption := Caption;
      Processo_SimulacaoCalculo.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_ConciliacaoAdiantClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_ConcAdiant2 := TImpressao_FinanceirosOP_ConcAdiant2.Create(Self);
      Impressao_FinanceirosOP_ConcAdiant2.Caption := Caption;
      Impressao_FinanceirosOP_ConcAdiant2.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_Remessa_DuplicatasClick(Sender: TObject);
begin
      Utilitarios_ExportaRemessaDuplicatas := TUtilitarios_ExportaRemessaDuplicatas.Create(Self);
      Utilitarios_ExportaRemessaDuplicatas.Caption := Caption;
      Utilitarios_ExportaRemessaDuplicatas.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_IncentivosFiscaisClick(Sender: TObject);
begin
      Cadastro_BeneficiosFiscais         := TCadastro_BeneficiosFiscais.Create(Self);
      Cadastro_BeneficiosFiscais.Caption := Caption;
      Cadastro_BeneficiosFiscais.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_ConciliacaoBancariaClick(Sender: TObject);
begin
      Financeiro_ConciliacaoBancaria         := TFinanceiro_ConciliacaoBancaria.Create(Self);
      Financeiro_ConciliacaoBancaria.Caption := Caption;
      Financeiro_ConciliacaoBancaria.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_FechCambioClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_Cambio         := TImpressao_FinanceirosOP_Cambio.Create(Self);
      Impressao_FinanceirosOP_Cambio.Caption := Caption;
      Impressao_FinanceirosOP_Cambio.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_DNFClick(Sender: TObject);
begin
      Utilitarios_ExportaDNF         := TUtilitarios_ExportaDNF.Create(Self);
      Utilitarios_ExportaDNF.Caption := Caption;
      Utilitarios_ExportaDNF.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_FatMensalClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_FaturamentoMensal         := TImpressao_FinanceirosOP_FaturamentoMensal.Create(Self);
      Impressao_FinanceirosOP_FaturamentoMensal.Caption := Caption;
      Impressao_FinanceirosOP_FaturamentoMensal.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_SolNumCliClick(Sender: TObject);
begin
      Impressao_FinanceirosSN         := TImpressao_FinanceirosSN.Create(Self);
      Impressao_FinanceirosSN.Caption := Caption;
      Impressao_FinanceirosSN.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_TabelaCoresClick(Sender: TObject);
begin
      Cadastro_Cores := TCadastro_Cores.Create(Self);
      Cadastro_Cores.Caption := Caption;
      Cadastro_Cores.ShowModal;
end;

procedure TMenu_Principal.mnConfiguracao_TipoNotaPropriaClick(Sender: TObject);
begin
      Config_TipoNota := TConfig_TipoNota.Create(Self);
      Config_TipoNota.Caption := Caption;
      Config_TipoNota.ShowModal;
end;

procedure TMenu_Principal.mnConfiguracao_TipoNotaTerceirosClick(Sender: TObject);
begin
      Config_TipoNotaTerceiros := TConfig_TipoNotaTerceiros.Create(Self);
      Config_TipoNotaTerceiros.Caption := Caption;
      Config_TipoNotaTerceiros.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_TiposProcessoClick(Sender: TObject);
begin
      Cadastro_TiposProcesso := TCadastro_TiposProcesso.Create(Self);
      Cadastro_TiposProcesso.Caption := Caption;
      Cadastro_TiposProcesso.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_RamoAtividadeClick(Sender: TObject);
begin
      Cadastro_RamoAtividade := TCadastro_RamoAtividade.Create(Self);
      Cadastro_RamoAtividade.Caption := Caption;
      Cadastro_RamoAtividade.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_RecapPadraoClick(Sender: TObject);
begin
      Cadastro_RecapPadrao := TCadastro_RecapPadrao.Create(Self);
      Cadastro_RecapPadrao.Caption := Caption;
      Cadastro_RecapPadrao.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_SPED_PISCOFINSClick(Sender: TObject);
begin
      Utilitarios_ExportaSPED_PISCOFINS := TUtilitarios_ExportaSPED_PISCOFINS.Create(Self);
      Utilitarios_ExportaSPED_PISCOFINS.Caption := Caption;
      Utilitarios_ExportaSPED_PISCOFINS.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processos_RelacaoClick(Sender: TObject);
begin
      Impressao_ProcessosOP_Relacao := TImpressao_ProcessosOP_Relacao.Create(Self);
      Impressao_ProcessosOP_Relacao.Caption := Caption;
      Impressao_ProcessosOP_Relacao.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_RecriarXMLClick(Sender: TObject);
begin
      NFe_RecuperarXML := TNFe_RecuperarXML.Create(Self);
      NFe_RecuperarXML.Caption := Caption;
      NFe_RecuperarXML.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_DetectarXMLClick(Sender: TObject);
begin
      DetectaCaracterXML := TDetectaCaracterXML.Create(Self);
      DetectaCaracterXML.Caption := Caption;
      DetectaCaracterXML.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processos_FollowUpClick(Sender: TObject);
begin
      Impressao_ProcessosOP_Acompanhamento := TImpressao_ProcessosOP_Acompanhamento.Create(Self);
      Impressao_ProcessosOP_Acompanhamento.Caption := Caption;
      Impressao_ProcessosOP_Acompanhamento.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_ImportarPROSOFTClick(Sender: TObject);
begin
      Utilitario_ImportarTexto := TUtilitario_ImportarTexto.Create(Self);
      Utilitario_ImportarTexto.Caption := Caption;
      Utilitario_ImportarTexto.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Gerais_ReciboClick(Sender: TObject);
begin
      ImpressaoGeraisOP_Recibo := TImpressaoGeraisOP_Recibo.Create(Self);
      ImpressaoGeraisOP_Recibo.Caption := Caption;
      ImpressaoGeraisOP_Recibo.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_TransferenciaClienteClick(Sender: TObject);
begin
      Financeiro_TransferenciaProcesso := TFinanceiro_TransferenciaProcesso.Create(Self);
      Financeiro_TransferenciaProcesso.Caption     := Caption;
      Financeiro_TransferenciaProcesso.mTipoTransf := 0;
      Financeiro_TransferenciaProcesso.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_TransferenciaFornecedorClick(Sender: TObject);
begin
      Financeiro_TransferenciaProcesso := TFinanceiro_TransferenciaProcesso.Create(Self);
      Financeiro_TransferenciaProcesso.Caption                := Caption;
      Financeiro_TransferenciaProcesso.lFornecedor.Enabled    := true;
      Financeiro_TransferenciaProcesso.cFornecedor.Enabled    := true;
      Financeiro_TransferenciaProcesso.lAdiantamentos.Enabled := true;
      Financeiro_TransferenciaProcesso.lCliente.Enabled       := false;
      Financeiro_TransferenciaProcesso.cCliente.Enabled       := false;
      Financeiro_TransferenciaProcesso.mTipoTransf            := 1;

      Financeiro_TransferenciaProcesso.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_NFeDPECEnvioClick(Sender: TObject);
begin
      If (Amb_Producao <> 1) and (Amb_Producao <> 2) then begin
         MessageDlg('Erro de ambiente!'+#13+#13+'Ambiente da NF-e não definido ou inválido.'+#13+#13+'Contacte o suporte técnico da Cybersoft.', mtError, [mbOK], 0);
         Abort;
      End;

      NotaFiscal_Eletronica2G            := TNotaFiscal_Eletronica2G.Create(Self);
      NotaFiscal_Eletronica2G.Caption    := Caption;
      NotaFiscal_Eletronica2G.ide_tpEmis := 1;
      NotaFiscal_Eletronica2G.mTipoEnvio := 'ENVIO EPEC';
      NotaFiscal_Eletronica2G.lDescricao.Caption := 'Envio das Notas Fiscais eletrônicas emitidas em contigência (EPEC).';
      NotaFiscal_Eletronica2G.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_SPClick(Sender: TObject);
begin
      Financeiro_SolicitacaoPagamentos := TFinanceiro_SolicitacaoPagamentos.Create(Self);
      Financeiro_SolicitacaoPagamentos.Caption := Caption;
      Financeiro_SolicitacaoPagamentos.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_BaixaLoteClick(Sender: TObject);
begin
      Financeiro_BaixaLote         := TFinanceiro_BaixaLote.Create(Self);
      Financeiro_BaixaLote.Caption := Caption;
      Financeiro_baixaLote.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_SNClick(Sender: TObject);
begin
      Financeiro_SolicitacaoNumerario := TFinanceiro_SolicitacaoNumerario.Create(Self);
      Financeiro_SolicitacaoNumerario.Caption := Caption;
      Financeiro_SolicitacaoNumerario.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_ImportarXMLClick(Sender: TObject);
var
  i: Integer;
begin
      cXML.Execute;
      if cXML.Files.Count > 0 then begin
         Utilitarios_Importar_NFe_Propria := TUtilitarios_Importar_NFe_Propria.Create(Self);
         Utilitarios_Importar_NFe_Propria.Caption := Caption;

         // Preenchendo o vetor com os nomes dos arquivos "XML".
         for I := 0 to cXML.Files.Count-1 do begin
             Utilitarios_Importar_NFe_Propria.mArquivos[I] := cXML.Files.Strings[I];
         end;
         Utilitarios_Importar_NFe_Propria.mTamanho  := cXML.Files.Count;
         Utilitarios_Importar_NFe_Propria.ShowModal;
      end;
end;

procedure TMenu_Principal.mnUtilitarios_Importar_ExcelClick(Sender: TObject);
begin
      Utilitarios_ImportaEXCEL := TUtilitarios_ImportaEXCEL.Create(Self);
      Utilitarios_ImportaEXCEL.Caption := Caption;
      Utilitarios_ImportaEXCEL.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_BloqueioClick(Sender: TObject);
begin
      Financeiro_BloquearPeriodo := TFinanceiro_BloquearPeriodo.Create(Self);
      Financeiro_BloquearPeriodo.Caption := Caption;
      Financeiro_BloquearPeriodo.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_TabelaComissoesClick(Sender: TObject);
begin
      Cadastro_TabelaComissoes := TCadastro_TabelaComissoes.Create(Self);
      Cadastro_TabelaComissoes.Caption := Caption;
      Cadastro_TabelaComissoes.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processos_ContainerClick(Sender: TObject);
begin
      Impressao_ProcessosOP_Container := TImpressao_ProcessosOP_Container.Create(Self);
      Impressao_ProcessosOP_Container.Caption := Caption;
      Impressao_ProcessosOP_Container.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_RestoreClick(Sender: TObject);
begin
      Utilitarios_Restore := TUtilitarios_Restore.Create(Self);
      Utilitarios_Restore.Caption := Caption;
      Utilitarios_Restore.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_RecriarContabilClick(Sender: TObject);
begin
      with Dados do begin
           Empresas.SQL.Clear;
           Empresas.SQL.Add('SELECT * FROM Empresas WHERE (Codigo = :pEmpresa)');
           Empresas.ParamByName('pEmpresa').AsInteger := mEmpresa;
           Empresas.Open;

           if EmpresasLancamento_Contabil.AsBoolean then begin
              Utilitarios_RecriarContabil := TUtilitarios_RecriarContabil.Create(Self);
              Utilitarios_RecriarContabil.Caption := Caption;
              Utilitarios_RecriarContabil.ShowModal;
           end else begin
              Utilitarios_RecriarContabil2 := TUtilitarios_RecriarContabil2.Create(Self);
              Utilitarios_RecriarContabil2.Caption := Caption;
              Utilitarios_RecriarContabil2.ShowModal;
           end;
      end;
end;

procedure TMenu_Principal.mnUtilitarios_ImportarDadosEmpresaClick(Sender: TObject);
begin
      Utilitario_ImportarEmpresa := TUtilitario_ImportarEmpresa.Create(Self);
      Utilitario_ImportarEmpresa.Caption := Caption;
      Utilitario_ImportarEmpresa.Show;
end;

procedure TMenu_Principal.mnCadastro_NiveisClassificacaoClick(Sender: TObject);
begin
      Cadastro_ClassificacaoNivel := TCadastro_ClassificacaoNivel.Create(Self);
      Cadastro_ClassificacaoNivel.Caption := Caption;
      Cadastro_ClassificacaoNivel.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_ComissoesRepClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_ComissoesPagar := TImpressao_FinanceirosOP_ComissoesPagar.Create(Self);
      Impressao_FinanceirosOP_ComissoesPagar.Caption := Caption;
      Impressao_FinanceirosOP_ComissoesPagar.Showmodal;
end;

procedure TMenu_Principal.mnCadastro_LinhasProdutosClick(Sender: TObject);
begin
      Cadastro_ProdutosLinhas := TCadastro_ProdutosLinhas.Create(Self);
      Cadastro_ProdutosLinhas.Caption := Caption;
      Cadastro_ProdutosLinhas.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_MediaPrecoClick(Sender: TObject);
begin
      Impressao_Faturamento_MediaVenda := TImpressao_Faturamento_MediaVenda.Create(Self);
      Impressao_Faturamento_MediaVenda.Caption := Caption;
      Impressao_Faturamento_MediaVenda.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_OrigensRecursosClick(Sender: TObject);
begin
      Cadastro_Recursos := TCadastro_Recursos.Create(Self);
      Cadastro_Recursos.Caption := Caption;
      Cadastro_Recursos.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_VendasRepClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_VendasRepresentantes := TImpressao_FinanceirosOP_VendasRepresentantes.Create(Self);
      Impressao_FinanceirosOP_VendasRepresentantes.Caption := Caption;
      Impressao_FinanceirosOP_VendasRepresentantes.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processos_ccClientesClick(Sender: TObject);
begin
      Impressao_ProcessosOP_ccCliente := TImpressao_ProcessosOP_ccCliente.Create(Self);
      Impressao_ProcessosOP_ccCliente.Caption := Caption;
      Impressao_ProcessosOP_ccCliente.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processos_FechamentoClick(Sender: TObject);
begin
      Impressao_ProcessosOP_Fechamento := TImpressao_ProcessosOP_Fechamento.Create(Self);
      Impressao_ProcessosOP_Fechamento.Caption := Caption;
      Impressao_ProcessosOP_Fechamento.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processos_PrazoClick(Sender: TObject);
begin
      Impressao_ProcessosOP_Prazo := TImpressao_ProcessosOP_Prazo.Create(Self);
      Impressao_ProcessosOP_Prazo.Caption := Caption;
      Impressao_ProcessosOP_Prazo.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_RecDespClick(Sender: TObject);
begin
      Impressao_Financeiros_RecDesp := TImpressao_Financeiros_RecDesp.Create(Self);
      Impressao_Financeiros_RecDesp.Caption := Caption;
      Impressao_Financeiros_RecDesp.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processo_RentabilidadeClick(Sender: TObject);
begin
      Impressao_ProcessosOP_Rentabilidade := TImpressao_ProcessosOP_Rentabilidade.Create(Self);
      Impressao_ProcessosOP_Rentabilidade.Caption := Caption;
      Impressao_ProcessosOP_Rentabilidade.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processo_DemFinanceiraClick(Sender: TObject);
begin
      Impressao_ProcessosOP_DemoTX := TImpressao_ProcessosOP_DemoTX.Create(Self);
      Impressao_ProcessosOP_DemoTX.Caption := Caption;
      Impressao_ProcessosOP_DemoTX.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processo_ContratosCambioClick(Sender: TObject);
begin
      Impressao_ProcessosOP_ContratoCambio := TImpressao_ProcessosOP_ContratoCambio.Create(Self);
      Impressao_ProcessosOP_ContratoCambio.Caption := Caption;
      Impressao_ProcessosOP_ContratoCambio.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_LocalDesembaracoClick(Sender: TObject);
begin
      Cadastro_LocaisDesembaraco := TCadastro_LocaisDesembaraco.Create(Self);
      Cadastro_LocaisDesembaraco.Caption := Caption;
      Cadastro_LocaisDesembaraco.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_PrevisaoClick(Sender: TObject);
begin
      Impressao_Faturamento_OP_Previsao := TImpressao_Faturamento_OP_Previsao.Create(Self);
      Impressao_Faturamento_OP_Previsao.Caption := Caption;
      Impressao_Faturamento_OP_Previsao.ShowModal;
end;

procedure TMenu_Principal.mnFiscal_CIAPClick(Sender: TObject);
begin
      CIAP := TCIAP.Create(Self);
      CIAP.Caption := Caption;
      CIAP.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_RecebiveisClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_Recebiveis := TImpressao_FinanceirosOP_Recebiveis.Create(Self);
      Impressao_FinanceirosOP_Recebiveis.Caption := Caption;
      Impressao_FinanceirosOP_Recebiveis.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Estoque_VendasProdutosClick(Sender: TObject);
begin
      Impressao_Faturamento_Vendas := TImpressao_Faturamento_Vendas.Create(Self);
      Impressao_Faturamento_Vendas.Caption := Caption;
      Impressao_Faturamento_Vendas.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_PedidoSeparaClick(Sender: TObject);
begin
      Impressao_Faturamento_Pedidos := TImpressao_Faturamento_Pedidos.Create(Self);
      Impressao_Faturamento_Pedidos.Caption := Caption;
      Impressao_Faturamento_Pedidos.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_AtualizaDataClick(  Sender: TObject);
begin
      if MessageDlg('Atenção!'+#13+#13+'Isso ira atualizar as datas de previsão de chegado dos navios dos processos.'+#13+#13+'Deseja realmente executar a atualização?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         with Dados do begin
              ProcessosDOC.SQL.Clear;
              ProcessosDOC.SQL.Add('UPDATE ProcessosDocumentos');
              ProcessosDOC.SQL.Add('SET    Navio_DataPrevista   = GETDATE(),');
              ProcessosDOC.SQL.Add('       Data_PrevRegistro    = GETDATE() + ISNULL((SELECT MIN(Prazo_Registro)    FROM Cybersoft_Cadastros.dbo.LocalDesembaraco),0),');
              ProcessosDOC.SQL.Add('       Data_PrevFaturamento = GETDATE() + ISNULL((SELECT MIN(Prazo_Registro)    FROM Cybersoft_Cadastros.dbo.LocalDesembaraco),0) + ISNULL((SELECT MIN(Prazo_Faturamento) FROM Cybersoft_Cadastros.dbo.LocalDesembaraco),0) ');
              ProcessosDOC.SQL.Add('WHERE (Navio_DataChegada IS NULL) AND (Navio_DataPrevista IS NOT NULL) AND (Navio_DataPrevista < GETDATE())');
              ProcessosDOC.SQL.Add('SELECT * FROM ProcessosDocumentos');
              ProcessosDOC.Execute;
              ProcessosDOC.SQL.Clear;
              MessageDlg('Atualização concluída!', mtInformation, [mbOK], 0);
         end;
      end;
end;

procedure TMenu_Principal.mnImpressao_CadastrosTipoNotaClick(Sender: TObject);
begin
      Impressao_Cadastros_TipoNota := TImpressao_Cadastros_TipoNota.Create(Self);
      Impressao_Cadastros_TipoNota.Caption := Caption;
      Impressao_Cadastros_TipoNota.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_CondicoesCambiaisClick(Sender: TObject);
begin
      Cadastro_CondicaoCambial         := TCadastro_CondicaoCambial.Create(Self);
      Cadastro_CondicaoCambial.Caption := Caption;
      Cadastro_CondicaoCambial.ShowModal;
end;

procedure TMenu_Principal.mnFiscal_NotasTerceirosProvisoriaClick(Sender: TObject);
begin
      NotaFiscal_Terceiros                 := TNotaFiscal_Terceiros.Create(Self);
      NotaFiscal_Terceiros.Caption         := Caption;
      NotaFiscal_Terceiros.lTitulo.Caption := 'Registro das Notas Fiscais de Terceiros (Provisória).';
      NotaFiscal_Terceiros.mProvisoria     := true;
      NotaFiscal_Terceiros.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_DestaqueICMSClick(Sender: TObject);
begin
      Impressao_Faturamento_OP_NotasSemDestaqueICMS := TImpressao_Faturamento_OP_NotasSemDestaqueICMS.Create(Self);
      Impressao_Faturamento_OP_NotasSemDestaqueICMS.Caption := Caption;
      Impressao_Faturamento_OP_NotasSemDestaqueICMS.ShowModal;
end;

procedure TMenu_Principal.MdiadeVendadeProdutos1Click(Sender: TObject);
begin
      Impressao_Faturamento_VendasMedia := TImpressao_Faturamento_VendasMedia.Create(Self);
      Impressao_Faturamento_VendasMedia.Caption := Caption;
      Impressao_Faturamento_VendasMedia.ShowModal;
end;

procedure TMenu_Principal.MdiadeVendaMensaldeProdutos1Click(Sender: TObject);
begin
      Impressao_Estoque_MediaVendas := TImpressao_Estoque_MediaVendas.Create(Self);
      Impressao_Estoque_MediaVendas.Caption := Caption;
      Impressao_Estoque_MediaVendas.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Processos_ControleInvoiceClick(Sender: TObject);
begin
      Impressao_ProcessosOP_ControleInvoice := TImpressao_ProcessosOP_ControleInvoice.Create(Self);
      Impressao_ProcessosOP_ControleInvoice.Caption := Caption;
      Impressao_ProcessosOP_ControleInvoice.ShowModal;
end;

procedure TMenu_Principal.mnFiscal_TransferenciaSaldoClick(Sender: TObject);
begin
      Fiscal_TransferenciaEstoque := TFiscal_TransferenciaEstoque.Create(Self);
      Fiscal_TransferenciaEstoque.Caption := Caption;
      Fiscal_TransferenciaEstoque.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Estoque_VendidosClick(Sender: TObject);
begin
      Impressao_ProdutosVendidos := TImpressao_ProdutosVendidos.Create(Self);
      Impressao_ProdutosVendidos.Caption := Caption;
      Impressao_ProdutosVendidos.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Estoque_DetalhadoClick(Sender: TObject);
begin
      Impressao_Faturamento_OP_Estoque := TImpressao_Faturamento_OP_Estoque.Create(Self);
      Impressao_Faturamento_OP_Estoque.Caption := Caption;
      Impressao_Faturamento_OP_Estoque.ShowModal;
end;

procedure TMenu_Principal.TimerGravacaoTimer(Sender: TObject);
Var
    BMPTela, BMPTela2: TImage;
begin
      BMPTela         := TImage.Create(Self);
      BMPTela.Parent  := Menu_Principal;
      BMPTela.Enabled := false;
      BMPTela.Visible := false;

      BMPTela.Picture.Assign(CapturaTela);

      BMPTela2         := TImage.Create(Self);
      BMPTela2.Parent  := Menu_Principal;
      BMPTela2.Visible := false;
      BMPTela2.Stretch := True;
      BMPTEla2.Width   := Screen.Width;
      BMPTEla2.Height  := Screen.Height;

      BMPTela2.Canvas.StretchDraw(Rect(0, 0, BMPTela2.Width, BMPTela2.Height), BMPTela.Picture.Bitmap);
      BMPTela2.Picture.SaveToFile('c:\temp\Telas\Tela_Erro_'+RemoveCaracter(':', '', TimetoStr(Time))+'.bmp');
      BMPTela2.Free;
      BMPTela.Free;
end;

procedure TMenu_Principal.mnUtilitarios_Gravar_AcoesClick(Sender: TObject);
begin
      TimerGravacao.Enabled := true;
end;

procedure TMenu_Principal.mnUtilitarios_Assistir_AcoesClick(Sender: TObject);
begin
      Utilitario_SistemaAcoes := TUtilitario_SistemaAcoes.Create(Self);
      Utilitario_SistemaAcoes.Caption := Caption;
      Utilitario_SistemaAcoes.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_RankingClick(Sender: TObject);
begin
      Impressao_Faturamento_RanckingCliente:= TImpressao_Faturamento_RanckingCliente.Create(Self);
      Impressao_Faturamento_RanckingCliente.Caption := Caption;
      Impressao_Faturamento_RanckingCliente.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Estoque_ResumidoClick(Sender: TObject);
begin
      Impressao_FaturamentoOP_EstoqueResumido := TImpressao_FaturamentoOP_EstoqueResumido.Create(Self);
      Impressao_FaturamentoOP_EstoqueResumido.Caption := Caption;
      Impressao_FaturamentoOP_EstoqueResumido.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_DREClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_DRE := TImpressao_FinanceirosOP_DRE.Create(Self);
      Impressao_FinanceirosOP_DRE.Caption := Caption;
      Impressao_FinanceirosOP_DRE.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Gerais_CartaCorrecaoClick(Sender: TObject);
begin
      Impressao_GeraisOP_CartaCorrecao := TImpressao_GeraisOP_CartaCorrecao.Create(Self);
      Impressao_GeraisOP_CartaCorrecao.Caption := Caption;
      Impressao_GeraisOP_CartaCorrecao.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_DesdobramentoClick(Sender: TObject);
begin
      Impressao_FaturamentoOP_DesdobDupl := TImpressao_FaturamentoOP_DesdobDupl.Create(Self);
      Impressao_FaturamentoOP_DesdobDupl.Caption := Caption;
      Impressao_FaturamentoOP_DesdobDupl.ShowModal;
end;

procedure TMenu_Principal.opSair_TrocarEmpresaClick(Sender: TObject);
begin
      Sistema_TrocarEmpresa := TSistema_TrocarEmpresa.Create(Self);
      Sistema_TrocarEmpresa.Caption := Caption;
      Sistema_TrocarEmpresa.ShowModal;
end;

procedure TMenu_Principal.VendasporRepresentanteCliente1Click(Sender: TObject);
begin
      Impressao_Faturamento_VendasClientes := TImpressao_Faturamento_VendasClientes.Create(Self);
      Impressao_Faturamento_VendasClientes.Caption := Caption;
      Impressao_Faturamento_VendasClientes.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_SPED_ContabilClick(Sender: TObject);
begin
      Utilitarios_ExportaSPED_ECD:= TUtilitarios_ExportaSPED_ECD.Create(Self);
      Utilitarios_ExportaSPED_ECD.Caption := Caption;
      Utilitarios_ExportaSPED_ECD.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_ChecagemClick(Sender: TObject);
begin
      Checagem := TChecagem.Create(Self);
      Checagem.Caption := Caption;
      Checagem.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_RelacaoPISClick(Sender: TObject);
begin
      Impressao_Faturamento_DetalhamentoPISCOFINS := tImpressao_Faturamento_DetalhamentoPISCOFINS.Create(Self);
      Impressao_Faturamento_DetalhamentoPISCOFINS.Caption := Caption;
      Impressao_Faturamento_DetalhamentoPISCOFINS.ShowModal;
end;

procedure TMenu_Principal.mnContabilidade_BalanceteClick(Sender: TObject);
begin
      Contabilidade_Edicao := TContabilidade_Edicao.Create(Self);
      Contabilidade_Edicao.Caption := Caption;
      Contabilidade_Edicao.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_CancelamentoAdmClick(Sender: TObject);
begin
      If (Amb_Producao <> 1) and (Amb_Producao <> 2) then begin
         MessageDlg('Erro de ambiente!'+#13+#13+'Ambiente da NF-e não definido ou inválido.'+#13+#13+'Contacte o suporte técnico da Cybersoft.', mtError, [mbOK], 0);
         Abort;
      End;

      NFe_CancelamentoAdministrativo := TNFe_CancelamentoAdministrativo.Create(Self);
      NFe_CancelamentoAdministrativo.Caption := Caption;
      NFe_CancelamentoAdministrativo.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_IndustrialClick(Sender: TObject);
begin
      Industrializacao := TIndustrializacao.Create(self);
      Industrializacao.Caption := caption;
      Industrializacao.showmodal;
end;

procedure TMenu_Principal.mnFinanceiro_BoletoClick(Sender: TObject);
begin
      Financeiro_BoletosGerar := TFinanceiro_BoletosGerar.Create(Self);
      Financeiro_BoletosGerar.Caption := Caption;
      Financeiro_BoletosGerar.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_ADESCOFISClick(Sender: TObject);
begin
      Utilitarios_ExportaADECOFIS := TUtilitarios_ExportaADECOFIS.Create(Self);
      Utilitarios_ExportaADECOFIS.Caption := Caption;
      Utilitarios_ExportaADECOFIS.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_RelacaoNFServClick(Sender: TObject);
begin
      Impressao_Faturamento_OP_NotasEmitidasServ := TImpressao_Faturamento_OP_NotasEmitidasServ.Create(Self);
      Impressao_Faturamento_OP_NotasEmitidasServ.Caption := Caption;
      Impressao_Faturamento_OP_NotasEmitidasServ.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_VendasRepProdClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_VendasRepresProdutos := TImpressao_FinanceirosOP_VendasRepresProdutos.Create(Self);
      Impressao_FinanceirosOP_VendasRepresProdutos.Caption := Caption;
      Impressao_FinanceirosOP_VendasRepresProdutos.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_FechamentoClick(Sender: TObject);
begin
      Processo_Fechamento := TProcesso_Fechamento.Create(Self);
      Processo_Fechamento.Caption         := Caption;
      Processo_Fechamento.lTitulo.Caption := 'Fechamento de Processos';
      Processo_Fechamento.mComplementar   := false;
      Processo_Fechamento.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_FechamentoComplementarClick(Sender: TObject);
begin
      Processo_Fechamento := TProcesso_Fechamento.Create(Self);
      Processo_Fechamento.Caption         := Caption;
      Processo_Fechamento.lTitulo.Caption := 'Fechamento de Processos (Complementar)';
      Processo_Fechamento.mComplementar   := true;
      Processo_Fechamento.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_TransferenciaClassificacaoClick(Sender: TObject);
begin
      Financeiro_TransferenciaClassificacao := TFinanceiro_TransferenciaClassificacao.Create(Self);
      Financeiro_TransferenciaClassificacao.Caption := Caption;
      Financeiro_TransferenciaClassificacao.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_NCMAtributosClick(Sender: TObject);
begin
      Cadastro_NCMAtributos := TCadastro_NCMAtributos.Create(Self);
      Cadastro_NCMAtributos.Caption := Caption;
      Cadastro_NCMAtributos.ShowModal;
end;

procedure TMenu_Principal.mnAtualizar_SistemaClick(Sender: TObject);
begin
      Atualiza_Sistema := TAtualiza_Sistema.Create(Self);
      Atualiza_Sistema.Caption := Caption;
      Atualiza_Sistema.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_PedidosAutorizacaoClick(Sender: TObject);
begin
      Financeiro_PedidosRepAutorizacao := TFinanceiro_PedidosRepAutorizacao.Create(Self);
      Financeiro_PedidosRepAutorizacao.Caption := Caption;
      Financeiro_PedidosRepAutorizacao.ShowModal;
end;

procedure TMenu_Principal.EnviarCartadeCorreo1Click(Sender: TObject);
begin
      If (Amb_Producao <> 1) and (Amb_Producao <> 2) then begin
         MessageDlg('Erro de ambiente!'+#13+#13+'Ambiente da NF-e não definido ou inválido.'+#13+#13+'Contacte o suporte técnico da Cybersoft.', mtError, [mbOK], 0);
         Abort;
      End;
      NFe_CartaCorrecao := TNFe_CartaCorrecao.Create(Self);
      NFe_CartaCorrecao.Caption := Caption;
      NFe_CartaCorrecao.ShowModal;
end;

procedure TMenu_Principal.EnviarDUe1Click(Sender: TObject);
begin
      Processo_DUE := TProcesso_DUE.Create(Self);
      Processo_DUE.Caption := Caption;
      Processo_DUE.ShowModal;
end;

procedure TMenu_Principal.EnviarDUIMPparaSISCOMEX1Click(Sender: TObject);
begin
      Processo_DUIMP := TProcesso_DUIMP.Create(Self);
      Processo_DUIMP.Caption := Caption;
      Processo_DUIMP.ShowModal;
end;

procedure TMenu_Principal.EnviarNotaFiscaldeSada1Click(Sender: TObject);
begin
      Exportar_ArmazemNFSai := TExportar_ArmazemNFSai.Create(Self);
      Exportar_ArmazemNFSai.Caption := Caption;
      Exportar_ArmazemNFSai.ShowModal;
end;

procedure TMenu_Principal.EnviarNotasFiscaispArmazm1Click(Sender: TObject);
begin
      Utilitarios_Exportar_Armazem := TUtilitarios_Exportar_Armazem.Create(Self);
      Utilitarios_Exportar_Armazem.Caption := Caption;
      Utilitarios_Exportar_Armazem.ShowModal;
end;

procedure TMenu_Principal.AjustarCampodeQuantidade1Click(Sender: TObject);
begin
      NFe_CartaCorrecaoItem := TNFe_CartaCorrecaoItem.Create(Self);
      NFe_CartaCorrecaoItem.Caption := Caption;
      NFe_CartaCorrecaoItem.ShowModal;
end;

procedure TMenu_Principal.lEmpresaClick(Sender: TObject);
begin
      Sistema_TrocarEmpresa := TSistema_TrocarEmpresa.Create(Self);
      Sistema_TrocarEmpresa.Caption := Caption;
      Sistema_TrocarEmpresa.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_GLMEClick(Sender: TObject);
begin
      Processo_GLME := TProcesso_GLME.Create(Self);
      Processo_GLME.Caption := Caption;
      Processo_GLME.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_MediaBCRClick(Sender: TObject);
begin
      Impressao_Faturamento_MediaBCR := TImpressao_Faturamento_MediaBCR.Create(Self);
      Impressao_Faturamento_MediaBCR.Caption := Caption;
      Impressao_Faturamento_MediaBCR.ShowModal;
end;

procedure TMenu_Principal.ComRefernciaemNFPrpria1Click(Sender: TObject);
begin
      Pedido_Devolucao            := TPedido_Devolucao.Create(Self);
      Pedido_Devolucao.Caption    := Caption;
      Pedido_Devolucao.mNFPropria := true;
      Pedido_Devolucao.mSaiEntra  := 0;
      Pedido_Devolucao.ShowModal;
end;

procedure TMenu_Principal.ComRefernciaemNFdeTerceiros1Click(Sender: TObject);
begin
      Pedido_Devolucao            := TPedido_Devolucao.Create(Self);
      Pedido_Devolucao.Caption    := Caption;
      Pedido_Devolucao.mNFPropria := false;
      Pedido_Devolucao.mSaiEntra  := 1;
      Pedido_Devolucao.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_MinutaNFClick(Sender: TObject);
begin
      Minuta := TMinuta.Create(Self);
      Minuta.Caption := Caption;
      Minuta.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_ExportacaoReimpressaoClick(Sender: TObject);
begin
      Impressao_ExportacaoReMemorando := TImpressao_ExportacaoReMemorando.Create(Self);
      Impressao_ExportacaoReMemorando.Caption := Caption;
      Impressao_ExportacaoReMemorando.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_RankingProdutosClick(Sender: TObject);
begin
      Impressao_ProdutosRanking := TImpressao_ProdutosRanking.Create(Self);
      Impressao_ProdutosRanking.Caption := Caption;
      Impressao_ProdutosRanking.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_AjustarDadosClick(Sender: TObject);
begin
      If mUsuarioNome <> 'ADMINISTRADOR' then begin
         ShowMessage('Apenas usúario "ADMINISTRADOR" pode utilizar esta opção.');
         Abort;
      End;
      Utilitarios_AjustarEstoqueInventario := TUtilitarios_AjustarEstoqueInventario.Create(Self);
      Utilitarios_AjustarEstoqueInventario.Caption := Caption;
      Utilitarios_AjustarEstoqueInventario.ShowModal;
end;

procedure TMenu_Principal.Teste_mnUtilitarios_APIPUCOMEXClick(Sender: TObject);
begin
      Utilitarios_ImportarAPIPUCOMEX := TUtilitarios_ImportarAPIPUCOMEX.Create(Self);
      Utilitarios_ImportarAPIPUCOMEX.Caption := Caption;
      Utilitarios_ImportarAPIPUCOMEX.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Estoque_MovimentacaoClick(Sender: TObject);
begin
      Impressao_ProdutosHistorico := TImpressao_ProdutosHistorico.Create(Self);
      Impressao_ProdutosHistorico.Caption := Caption;
      Impressao_ProdutosHistorico.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Estoque_NavioClick(Sender: TObject);
begin
      Impressao_ProcessosOP_Navio := TImpressao_ProcessosOP_Navio.Create(Self);
      Impressao_ProcessosOP_Navio.Caption := Caption;
      Impressao_ProcessosOP_Navio.ShowModal;
end;

procedure TMenu_Principal.mnFiscal_SaldoAberturaEstoqueClick(Sender: TObject);
begin
      Fiscal_AberturaEstoque := TFiscal_AberturaEstoque.Create(Self);
      Fiscal_AberturaEstoque.Caption := Caption;
      Fiscal_AberturaEstoque.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_FabricantesClick(Sender: TObject);
begin
      Cadastro_Fabricantes := TCadastro_Fabricantes.Create(Self);
      Cadastro_Fabricantes.Caption := Caption;
      Cadastro_Fabricantes.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_EnviarDadosClick(Sender: TObject);
begin
      Utilitarios_EnviarDados := TUtilitarios_EnviarDados.Create(Self);
      Utilitarios_EnviarDados.Caption := Caption;
      Utilitarios_EnviarDados.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_DetalhesClick(Sender: TObject);
begin
      Cadastro_Detalhes := TCadastro_Detalhes.Create(Self);
      Cadastro_Detalhes.Caption := Caption;
      Cadastro_Detalhes.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Faturamento_ComposicaoNFSClick(Sender: TObject);
begin
      Impressao_Faturamento_ComposicaoNF := TImpressao_Faturamento_ComposicaoNF.Create(Self);
      Impressao_Faturamento_ComposicaoNF.Caption := Caption;
      Impressao_Faturamento_ComposicaoNF.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_NCMClick(Sender: TObject);
begin
      Cadastro_NCM := TCadastro_NCM.Create(Self);
      Cadastro_NCM.Caption := Caption;
      Cadastro_NCM.ShowModal;
end;

procedure TMenu_Principal.CarregaAtual;
Var
    mTexto: TextFile;
    mLinha: String;
    mPasta: String;
begin
      // Mostrar o memo com as ultimas atualizações se estiver selecionado na opção do menu.
      mPasta := ExtractFilePath(Application.ExeName)+'Atualizacao\Atualiza.txt';
      if FileExists(mPasta) then begin
         AssignFile(mTexto, mPasta);
         Reset(mTexto);

         while not Eof (mTexto) do begin
               ReadLn(mTexto, mLinha);
         end;
         CloseFile(mTexto);
      end;
end;

procedure TMenu_Principal.mnFinanceiro_CapitalGiroClick(Sender: TObject);
begin
      Financeiro_EmprestimosCG := TFinanceiro_EmprestimosCG.Create(Self);
      Financeiro_EmprestimosCG.Caption := Caption;
      Financeiro_EmprestimosCG.ShowModal;
end;

procedure TMenu_Principal.DesativarProdutossemEstoque1Click(Sender: TObject);
begin
      If mUsuarioNome <> 'ADMINISTRADOR' then begin
         ShowMessage('Apenas usúario "ADMINISTRADOR" pode utilizar esta opção.');
         Abort;
      End;
      Utilitarios_OutrosDesativar := TUtilitarios_OutrosDesativar.Create(Self);
      Utilitarios_OutrosDesativar.Caption := Caption;
      Utilitarios_OutrosDesativar.Showmodal;
end;

procedure TMenu_Principal.mnFinanceiro_DescontoDuplicataClick(Sender: TObject);
begin
      Financeiro_EmprestimosDD := TFinanceiro_EmprestimosDD.Create(Self);
      Financeiro_EmprestimosDD.Caption := Caption;
      Financeiro_EmprestimosDD.ShowModal;
end;

procedure TMenu_Principal.DescontodeDuplicatas1Click(Sender: TObject);
begin
      Impressao_FinanceirosOP_EmprestimoDD := TImpressao_FinanceirosOP_EmprestimoDD.Create(Self);
      Impressao_FinanceirosOP_EmprestimoDD.Caption := Caption;
      Impressao_FinanceirosOP_EmprestimoDD.ShowModal;
end;

procedure TMenu_Principal.EtiquetasdeVolumes1Click(Sender: TObject);
begin
      Impressao_GeraisOP_EtiquetaVolumes := TImpressao_GeraisOP_EtiquetaVolumes.Create(Self);
      Impressao_GeraisOP_EtiquetaVolumes.Caption := Caption;
      Impressao_GeraisOP_EtiquetaVolumes.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_VerificarEstoqueClick(Sender: TObject);
begin
      Estoque_Minimo := TEstoque_Minimo.Create(Self);
      Estoque_Minimo.Caption := Caption;
      Estoque_Minimo.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_PedidosRepresentantesClick(Sender: TObject);
begin
      Financeiro_PedidosRepresentantes := TFinanceiro_PedidosRepresentantes.Create(Self);
      Financeiro_PedidosRepresentantes.Caption := Caption;
      Financeiro_PedidosRepresentantes.ShowModal;
end;

procedure TMenu_Principal.mnPedido_RepresentantesClick(Sender: TObject);
begin
      Pedido_RepresentantesSimp         := TPedido_RepresentantesSimp.Create(Self);
      Pedido_RepresentantesSimp.Caption := Caption;
      Pedido_RepresentantesSimp.ShowModal;
end;

procedure TMenu_Principal.mnLogistica_EmissaoNormalClick(Sender: TObject);
begin
      Pedido_CTE := TPedido_CTE.Create(Self);
      Pedido_CTE.Caption := Caption;
      Pedido_CTE.ShowModal;
end;

procedure TMenu_Principal.mnCadastros_LogisticaDestinatarioClick(Sender: TObject);
begin
      Cadastro_Destinatarios := TCadastro_Destinatarios.Create(Self);
      Cadastro_Destinatarios.Caption := Caption;
      Cadastro_Destinatarios.ShowModal;
end;

procedure TMenu_Principal.mnCadastros_LogisticaExpedidorClick(Sender: TObject);
begin
      Cadastro_Expedidor := TCadastro_Expedidor.Create(Self);
      Cadastro_Expedidor.Caption := Caption;
      Cadastro_Expedidor.ShowModal;
end;

procedure TMenu_Principal.mnCadastros_LogisticaRecebedorClick(Sender: TObject);
begin
      Cadastro_Recebedor := TCadastro_Recebedor.Create(Self);
      Cadastro_Recebedor.Caption := Caption;
      Cadastro_Recebedor.ShowModal;
end;

procedure TMenu_Principal.Endividamento1Click(Sender: TObject);
begin
      Impressao_FinanceirosOP_Endividamento := TImpressao_FinanceirosOP_Endividamento.Create(Self);
      Impressao_FinanceirosOP_Endividamento.Caption := Caption;
      Impressao_FinanceirosOP_Endividamento.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_AjustarPrecosClick(Sender: TObject);
begin
      Cadastro_AjustarPrecos:= TCadastro_AjustarPrecos.Create(Self);
      Cadastro_AjustarPrecos.Caption := Caption;
      Cadastro_AjustarPrecos.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_FINIMPClick(Sender: TObject);
begin
      Financeiro_EmprestimosFN := TFinanceiro_EmprestimosFN.Create(Self);
      Financeiro_EmprestimosFN.Caption := Caption;
      Financeiro_EmprestimosFN.ShowModal;
end;

procedure TMenu_Principal.CapitaldeGiro2Click(Sender: TObject);
begin
      Impressao_FinanceirosOP_EmprestimoCG := TImpressao_FinanceirosOP_EmprestimoCG.Create(Self);
      Impressao_FinanceirosOP_EmprestimoCG.Caption := Caption;
      Impressao_FinanceirosOP_EmprestimoCG.ShowModal;
end;

procedure TMenu_Principal.FluxodeCaixaMensal1Click(Sender: TObject);
begin
      Impressao_Financeiros_FluxoCaixa := TImpressao_Financeiros_FluxoCaixa.Create(self);
      Impressao_Financeiros_FluxoCaixa.Caption := Caption;
      Impressao_Financeiros_FluxoCaixa.ShowModal;
end;

procedure TMenu_Principal.FINIMP2Click(Sender: TObject);
begin
      Impressao_FinanceirosOP_EmprestimoFINIMP := TImpressao_FinanceirosOP_EmprestimoFINIMP.Create(Self);
      Impressao_FinanceirosOP_EmprestimoFINIMP.Caption := Caption;
      Impressao_FinanceirosOP_EmprestimoFINIMP.ShowModal;
end;

procedure TMenu_Principal.FluxodeCaixaDetalhado1Click(Sender: TObject);
begin
      Impressao_Financeiros_FluxoCaixaDetalhado2 := TImpressao_Financeiros_FluxoCaixaDetalhado2.Create(self);
      Impressao_Financeiros_FluxoCaixaDetalhado2.Caption := Caption;
      Impressao_Financeiros_FluxoCaixaDetalhado2.ShowModal;
end;

procedure TMenu_Principal.PREVISODESPESASDEPROCESSOS1Click(Sender: TObject);
begin
      Impressao_Processos_PrevisaoDespesas := TImpressao_Processos_PrevisaoDespesas.Create(Self);
      Impressao_Processos_PrevisaoDespesas.Caption := Caption;
      Impressao_Processos_PrevisaoDespesas.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_MensalClientesClick(Sender: TObject);
begin
      Financeiro_RecebimentosClientes := TFinanceiro_RecebimentosClientes.Create(Self);
      Financeiro_RecebimentosClientes.Caption := Caption;
      Financeiro_RecebimentosClientes.ShowModal;
end;

procedure TMenu_Principal.GuiaGLME1Click(Sender: TObject);
begin
     Impressao_GeraisOP_DMI := TImpressao_GeraisOP_DMI.create(self);
     Impressao_GeraisOP_DMI.Caption := caption;
     Impressao_GeraisOP_DMI.showmodal;
end;

procedure TMenu_Principal.HistricoBL1Click(Sender: TObject);
begin
     Impressao_ControleNaviosBL := TImpressao_ControleNaviosBL.create(self);
     Impressao_ControleNaviosBL.Caption := caption;
     Impressao_ControleNaviosBL.showmodal;
end;

procedure TMenu_Principal.HistricodoPedidosdeVenda1Click(Sender: TObject);
begin
     Impressao_Faturamento_HistoricoPedidos := TImpressao_Faturamento_HistoricoPedidos.create(self);
     Impressao_Faturamento_HistoricoPedidos.caption := caption;
     Impressao_Faturamento_HistoricoPedidos.showmodal;
end;

procedure TMenu_Principal.HistricoLaudo1Click(Sender: TObject);
begin
     Impressao_ControleNaviosLaudo := TImpressao_ControleNaviosLaudo.create(self);
     Impressao_ControleNaviosLaUDO.Caption := caption;
     Impressao_ControleNaviosLaudo.showmodal;
end;

procedure TMenu_Principal.mnUtilitarios_Remessa_BoletosClick(Sender: TObject);
begin
      Utilitarios_ExportaRemessaBoletos         := TUtilitarios_ExportaRemessaBoletos.Create(Self);
      Utilitarios_ExportaRemessaBoletos.Caption := Caption;
      Utilitarios_ExportaRemessaBoletos.ShowModal;
end;

procedure TMenu_Principal.Exclusodepedidos1Click(Sender: TObject);
begin
      Pedido_Excluir := TPedido_Excluir.Create(Self);
      Pedido_Excluir.Caption := Caption;
      Pedido_Excluir.ShowModal;
end;

procedure TMenu_Principal.mnFaturamento_NFeManifDestClick(Sender: TObject);
begin
      NFE_ManifestacaoDestinatario := TNFE_ManifestacaoDestinatario.Create(Self);
      NFE_ManifestacaoDestinatario.Caption := Caption ;
      NFE_ManifestacaoDestinatario.ShowModal;
end;

procedure TMenu_Principal.mnPedido_TelevendasClick(Sender: TObject);
begin
      Pedido_Televendas := TPedido_Televendas.Create(Self);
      Pedido_Televendas.Caption := Caption;
      Pedido_Televendas.ShowModal;
end;

procedure TMenu_Principal.Image1Click(Sender: TObject);
begin
      Atualiza_Sistema := TAtualiza_Sistema.Create(Self);
      Atualiza_Sistema.Caption     := Caption;
      Atualiza_Sistema.mAutomatico := true;
      Atualiza_Sistema.ShowModal;
end;

procedure TMenu_Principal.RelaodeNotasAnalitico1Click(Sender: TObject);
begin
      Impressao_Faturamento_Analitico := TImpressao_Faturamento_Analitico.Create(Self);
      Impressao_Faturamento_Analitico.Caption := Caption;
      Impressao_Faturamento_Analitico.showmodal;
end;

procedure TMenu_Principal.RelaodeNotasFiscais1Click(Sender: TObject);
begin
      Impressao_ControleNaviosNotas := TImpressao_ControleNaviosNotas.create(self);
      Impressao_ControleNaviosNotas.Caption := Caption;
      Impressao_ControleNaviosNotas.showmodal;
end;

procedure TMenu_Principal.mnRelaodePedidos_NotaClick(Sender: TObject);
begin
      Impressao_Faturamento_RelacaoPedidos := TImpressao_Faturamento_RelacaoPedidos.Create(Self);
      Impressao_Faturamento_RelacaoPedidos.Caption := Caption;
      Impressao_Faturamento_RelacaoPedidos.ShowModal;
end;

procedure TMenu_Principal.mnRelaodePedidos_VendasClick(Sender: TObject);
begin
      Impressao_Faturamento_RelacaoPedVendas := TImpressao_Faturamento_RelacaoPedVendas.Create(Self);
      Impressao_Faturamento_RelacaoPedVendas.Caption := Caption;
      Impressao_Faturamento_RelacaoPedVendas.ShowModal;
end;

procedure TMenu_Principal.DREGerencial1Click(Sender: TObject);
begin
      Impressao_FinanceirosOP_DREGerencial := TImpressao_FinanceirosOP_DREGerencial.Create(Self);
      Impressao_FinanceirosOP_DREGerencial.Caption := Caption;
      Impressao_FinanceirosOP_DREGerencial.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_ImportarRetornoBoletosClick(Sender: TObject);
begin
      Utilitarios_ImportaRemessaBoletos := TUtilitarios_ImportaRemessaBoletos.Create(Self);
      Utilitarios_ImportaRemessaBoletos.Caption := Caption;
      Utilitarios_ImportaRemessaBoletos.ShowModal;
end;

procedure TMenu_Principal.Inventario1Click(Sender: TObject);
begin
      Impressao_Estoque_Inventario := TImpressao_Estoque_Inventario.Create(Self);
      Impressao_Estoque_Inventario.Caption := Caption;
      Impressao_Estoque_Inventario.ShowModal;
end;

procedure TMenu_Principal.mnLogistica_ConsultaProdutosClick(Sender: TObject);
begin
      Logistica_ConsultaProdutos := TLogistica_ConsultaProdutos.Create(Self);
      Logistica_ConsultaProdutos.Caption := Caption;
      Logistica_ConsultaProdutos.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_ImportarPlanoContasClick(Sender: TObject);
begin
      if mUsuarioNome = 'ADMINISTRADOR' then begin
         Utilitarios_ImportarPlanoContas := TUtilitarios_ImportarPlanoContas.Create(Self);
         Utilitarios_ImportarPlanoContas.Caption := Caption;
         Utilitarios_ImportarPlanoContas.ShowModal;
      end else begin
         ShowMessage('Apenas usúario "ADMINISTRADOR" pode utilizar esta opção.');
      end;
end;

procedure TMenu_Principal.F1Click(Sender: TObject);
begin
      Impressao_Estoque_FichaEstoque := TImpressao_Estoque_FichaEstoque.Create(Self);
      Impressao_Estoque_FichaEstoque.Caption;
      Impressao_Estoque_FichaEstoque.ShowModal;
end;

procedure TMenu_Principal.LivroRegistrodeInventrioNovo1Click(Sender: TObject);
begin
      Impressao_FiscaisOP_Inventario_Novo := TImpressao_FiscaisOP_Inventario_Novo.Create(Self);
      Impressao_FiscaisOP_Inventario_Novo.Caption := Caption;
      Impressao_FiscaisOP_Inventario_Novo.Showmodal;
end;

procedure TMenu_Principal.bControleNaviosClick(Sender: TObject);
begin
     Processo_ControleNavios := TProcesso_ControleNavios.create(self);
     Processo_ControleNavios.Caption := Caption;
     Processo_ControleNavios.showmodal;
end;

procedure TMenu_Principal.mnDespacho_LIClick(Sender: TObject);
begin
     Despacho_LI := TDespacho_LI.Create(Self);
     Despacho_LI.Caption := Caption;
     Despacho_LI.ShowModal;
end;

procedure TMenu_Principal.LivroRegistrodeInventrio21Click(Sender: TObject);
begin
      Impressao_FiscaisOP_Inventario_P72 := TImpressao_FiscaisOP_Inventario_P72.Create(Self);
      Impressao_FiscaisOP_Inventario_P72.Caption := Caption;
      Impressao_FiscaisOP_Inventario_P72.ShowModal;
end;

procedure TMenu_Principal.mnCadastros_CodigoReceitaClick(Sender: TObject);
begin
      Cadastro_CodigosRFB := TCadastro_CodigosRFB.Create(Self);
      Cadastro_CodigosRFB.Caption := Caption;
      Cadastro_CodigosRFB.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_ItensNavioClick(Sender: TObject);
begin
      if mUsuarioNome <> 'ADMINISTRADOR' then begin
         ShowMessage('Apenas usúario "ADMINISTRADOR" pode utilizar esta opção.');
         Abort;
      end;
      Utilitarios_AjustarEstoqueNavio := TUtilitarios_AjustarEstoqueNavio.Create(Self);
      Utilitarios_AjustarEstoqueNavio.Caption := Caption;
      Utilitarios_AjustarEstoqueNavio.ShowModal;
end;

procedure TMenu_Principal.mnCadastros_TabelaPISCOFINSClick(Sender: TObject);
begin
      Cadastro_Majoracao := TCadastro_Majoracao.Create(Self);
      Cadastro_Majoracao.Caption := Caption;
      Cadastro_Majoracao.Showmodal;
end;

procedure TMenu_Principal.mnFiscal_BloquearMovimentoClick(Sender: TObject);
begin
      Fiscal_BloquearPeriodo := TFiscal_BloquearPeriodo.Create(Self);
      Fiscal_BloquearPeriodo.Caption := Caption;
      Fiscal_BloquearPeriodo.ShowModal;
end;

procedure TMenu_Principal.SaldodeICMSIPI1Click(Sender: TObject);
begin
      Fiscal_SaldoICMSIPI := TFiscal_SaldoICMSIPI.Create(Self);
      Fiscal_SaldoICMSIPI.Caption := Caption;
      Fiscal_SaldoICMSIPI.ShowModal;
end;

procedure TMenu_Principal.SituaodosChassisSeriais1Click(Sender: TObject);
begin
     Impressao_Estoque_SeriaisSit := TImpressao_Estoque_SeriaisSit.Create(Self);
     Impressao_Estoque_SeriaisSit.Caption := Caption;
     Impressao_Estoque_SeriaisSit.ShowModal;
end;

procedure TMenu_Principal.mnFiscal_FichaEstoqueClick(Sender: TObject);
begin
     FichaEstoque2 := TFichaEstoque2.Create(Self);
     FichaEstoque2.Caption := 'Processamento da Ficha de Estoque';
     FichaEstoque2.ShowModal;
end;

procedure TMenu_Principal.mnFiscal_FichaInventarioClick(Sender: TObject);
begin
     FichaInventario := TFichaInventario.Create(Self);
     FichaInventario.Caption := 'Processamento da Ficha de Inventario';
     FichaInventario.ShowModal;
end;

procedure TMenu_Principal.EstoqueporLote1Click(Sender: TObject);
begin
      Impressao_Estoque_Lote := TImpressao_Estoque_Lote.Create(Self);
      Impressao_Estoque_Lote.Caption := Caption;
      Impressao_Estoque_Lote.ShowModal;
end;

procedure TMenu_Principal.EstoqueporNavioDI1Click(Sender: TObject);
begin
      Impressao_ProcessosOP_Armazem:= TImpressao_ProcessosOP_Armazem.Create(Self);
      Impressao_ProcessosOP_Armazem.Caption := Caption;
      Impressao_ProcessosOP_Armazem.ShowModal;
end;

procedure TMenu_Principal.LivroRegistrodeServiosTomados1Click(Sender: TObject);
begin
      Impressao_FiscaisOP_LivroServicoTomado := TImpressao_FiscaisOP_LivroServicoTomado.Create(Self);
      Impressao_FiscaisOP_LivroServicoTomado.Caption := Caption;
      Impressao_FiscaisOP_LivroServicoTomado.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_LPCOClick(Sender: TObject);
begin
      Cadastro_LPCO := TCadastro_LPCO.Create(Self);
      Cadastro_LPCO.caption := Caption;
      Cadastro_LPCO.Showmodal;
end;

procedure TMenu_Principal.FichadeInventario1Click(Sender: TObject);
begin
      Impressao_Estoque_FichaInventario := TImpressao_Estoque_FichaInventario.Create(Self);
      Impressao_Estoque_FichaInventario.Caption;
      Impressao_Estoque_FichaInventario.ShowModal;
end;

procedure TMenu_Principal.Importao2Click(Sender: TObject);
begin
      Impressao_ProcessosOP_InvoiceImp := TImpressao_ProcessosOP_InvoiceImp.Create(Self);
      Impressao_ProcessosOP_InvoiceImp.Caption := Caption;
      Impressao_ProcessosOP_InvoiceImp.ShowModal;
end;

procedure TMenu_Principal.Exportao2Click(Sender: TObject);
begin
      Impressao_ProcessosOP_InvoiceExp := TImpressao_ProcessosOP_InvoiceExp.Create(Self);
      Impressao_ProcessosOP_InvoiceExp.Caption := Caption;
      Impressao_ProcessosOP_InvoiceExp.ShowModal;
end;

procedure TMenu_Principal.ExportaodeDadosviaAPI1Click(Sender: TObject);
begin
      Utilitario_ExportaAPI := TUtilitario_ExportaAPI.Create(Self);
      Utilitario_ExportaAPI.Caption := Caption;
      Utilitario_ExportaAPI.ShowModal;
end;

procedure TMenu_Principal.mnFiscal_GNREClick(Sender: TObject);
begin
      Fiscal_GNRE := TFiscal_GNRE.Create(Self);
      Fiscal_GNRE.Caption := Caption;
      Fiscal_GNRE.ShowModal;
end;

procedure TMenu_Principal.ControleDIFAL1Click(Sender: TObject);
begin
     Impressao_FiscaisOP_DIFAL := TImpressao_FiscaisOP_DIFAL.Create(Self);
     Impressao_FiscaisOP_DIFAL.Caption := Caption;
     Impressao_FiscaisOP_DIFAL.ShowModal;
end;

procedure TMenu_Principal.CTeCancelamentodePrestaoemdesacordo1Click(Sender: TObject);
begin
     CTE_PrestacaoDesacordo:= TCTE_PrestacaoDesacordo.Create(self);
     CTE_PrestacaoDesacordo.Caption := Caption;
     CTE_PrestacaoDesacordo.showmodal;
end;

procedure TMenu_Principal.CTeCancelamentodePrestaoemdesacordo2Click(Sender: TObject);
begin
     CTE_CancelamentoPrestacao := TCTE_CancelamentoPrestacao.Create(self);
     CTE_CancelamentoPrestacao.Caption := Caption;
     CTE_CancelamentoPrestacao.showmodal;
end;

procedure TMenu_Principal.ConsultarNFeemitidaparameuCNPJ1Click(Sender: TObject);
begin
     BuscarXMLTerceiros := TBuscarXMLTerceiros.Create(Self);
     BuscarXMLTerceiros.Caption := Caption;
     BuscarXMLTerceiros.showmodal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_PagarReceberSimpClick(Sender: TObject);
begin
      Impressao_FinanceirosOP_PagarReceberSimp := TImpressao_FinanceirosOP_PagarReceberSimp.Create(Self);
      Impressao_FinanceirosOP_PagarReceberSimp.Caption := Caption;
      Impressao_FinanceirosOP_PagarReceberSimp.ShowModal;
end;

procedure TMenu_Principal.ControledeBoletos1Click(Sender: TObject);
begin
     Impressao_Financeiros_ContBoletos := TImpressao_Financeiros_ContBoletos.create(self);
     Impressao_Financeiros_ContBoletos.caption := Caption;
     Impressao_Financeiros_ContBoletos.showmodal;
end;

procedure TMenu_Principal.ControledeChassisSeriais1Click(Sender: TObject);
begin
     Impressao_Estoque_Seriais := TImpressao_Estoque_Seriais.Create(Self);
     Impressao_Estoque_Seriais.Caption := Caption;
     Impressao_Estoque_Seriais.ShowModal;
end;

procedure TMenu_Principal.ControledeLimitedeRADAR1Click(Sender: TObject);
begin
     Impressao_ProcessosOP_LimiteRADAR := TImpressao_ProcessosOP_LimiteRADAR.Create(Self);
     Impressao_ProcessosOP_LimiteRADAR.Caption := Caption;
     Impressao_ProcessosOP_LimiteRADAR.ShowModal;
end;

procedure TMenu_Principal.ControledeNavios1Click(Sender: TObject);
begin
     Impressao_ControleNavios := TImpressao_ControleNavios .create(self);
     Impressao_ControleNavios .Caption := Caption;
     Impressao_ControleNavios .showmodal;
end;

procedure TMenu_Principal.ControledeTitulosAbertos1Click(Sender: TObject);
begin
     Impressao_FinanceirosOP_ControleAbertos := TImpressao_FinanceirosOP_ControleAbertos.Create(Self);
     Impressao_FinanceirosOP_ControleAbertos.Caption := Caption;
     Impressao_FinanceirosOP_ControleAbertos.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_NaviosClick(Sender: TObject);
begin
     Processo_ControleNavios := TProcesso_ControleNavios.create(self);
     Processo_ControleNavios.Caption := Caption;
     Processo_ControleNavios.showmodal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_JurosMultaClick(Sender: TObject);
begin
     Impressao_FinanceirosOP_JurosMulta := TImpressao_FinanceirosOP_JurosMulta.Create(Self);
     Impressao_FinanceirosOP_JurosMulta.Caption := Caption;
     Impressao_FinanceirosOP_JurosMulta.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_FinanceiroDRETotalClick(Sender: TObject);
begin
     Cadastro_DREGrupos := TCadastro_DREGrupos.Create(Self);
     Cadastro_DREGrupos.Caption := Caption;
     Cadastro_DREGrupos.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_FinanceiroDREAgrupClick(Sender: TObject);
begin
     Cadastro_DRE := TCadastro_DRE.Create(Self);
     Cadastro_DRE.Caption := Caption;
     Cadastro_DRE.ShowModal;
end;

procedure TMenu_Principal.mnUtilitarios_DadosDIClick(Sender: TObject);
begin
     Utilitarios_ImportarDadosDI := TUtilitarios_ImportarDadosDI.Create(Self);
     Utilitarios_ImportarDadosDI.Caption := Caption;
     Utilitarios_ImportarDadosDI.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_PlanoContasECFClick(Sender: TObject);
begin
     Cadastro_PlanoContasECF := TCadastro_PlanoContasECF.Create(Self);
     Cadastro_PlanoContasECF.Caption := Caption;
     Cadastro_PlanoContasECF.ShowModal;
end;

procedure TMenu_Principal.ComposiodoProcesso1Click(Sender: TObject);
begin
     Impressao_Faturamento_ComposicaoProc := TImpressao_Faturamento_ComposicaoProc.Create(Self);
     Impressao_Faturamento_ComposicaoProc.Caption := Caption;
     Impressao_Faturamento_ComposicaoProc.ShowModal;
end;

procedure TMenu_Principal.ProformaInvoice1Click(Sender: TObject);
begin
     Impressao_ProcessosOP_Proforma := TImpressao_ProcessosOP_Proforma.Create(Self);
     Impressao_ProcessosOP_Proforma.Caption := Caption;
     Impressao_ProcessosOP_Proforma.ShowModal;
end;

procedure TMenu_Principal.mnContabilidade_BloquearMovimentoClick(Sender: TObject);
begin
     Contabilidade_BloquearPeriodo := TContabilidade_BloquearPeriodo.Create(Self);
     Contabilidade_BloquearPeriodo.Caption := RemoveCaracter('(Menu Principal)', '', Caption);
     Contabilidade_BloquearPeriodo.ShowModal;
end;

procedure TMenu_Principal.mnContabilidade_ExcluirLancamentosClick(Sender: TObject);
begin
     Contabilidade_Exclusao := TContabilidade_Exclusao.Create(Self);
     Contabilidade_Exclusao.Caption := RemoveCaracter('(Menu Principal)', '', Caption);
     Contabilidade_Exclusao.ShowModal;
end;

procedure TMenu_Principal.GerarArquivoSPEDContbilECF1Click(Sender: TObject);
begin
     Utilitarios_ExportaSPED_ECF:= TUtilitarios_ExportaSPED_ECF.Create(Self);
     Utilitarios_ExportaSPED_ECF.Caption := Caption;
     Utilitarios_ExportaSPED_ECF.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_ExtratoSinteticoClick(Sender: TObject);
begin
     Impressao_FinanceirosOP_ExtratoBancoSint := TImpressao_FinanceirosOP_ExtratoBancoSint.Create(Self);
     Impressao_FinanceirosOP_ExtratoBancoSint.Caption := Caption;
     Impressao_FinanceirosOP_ExtratoBancoSint.ShowModal;
end;

procedure TMenu_Principal.FaturaCommercialInvoice1Click(Sender: TObject);
begin
     Impressao_ProcessosOP_InvoiceExp := TImpressao_ProcessosOP_InvoiceExp.Create(Self);
     Impressao_ProcessosOP_InvoiceExp.Caption := Caption;
     Impressao_ProcessosOP_InvoiceExp.ShowModal;
end;

procedure TMenu_Principal.FDa1Click(Sender: TObject);
begin
     Impressao_OP_FaturamentoRecebimento := TImpressao_OP_FaturamentoRecebimento.Create(Self);
     Impressao_OP_FaturamentoRecebimento.Caption := Caption;
     Impressao_OP_FaturamentoRecebimento.ShowModal;
end;

procedure TMenu_Principal.PackingList1Click(Sender: TObject);
begin
     Impressao_ProcessosOP_PackingList := TImpressao_ProcessosOP_PackingList.Create(Self);
     Impressao_ProcessosOP_PackingList.Caption := Caption;
     Impressao_ProcessosOP_PackingList.ShowModal;
end;

procedure TMenu_Principal.mnContabilidade_LancamentosEncerramentoClick(Sender: TObject);
begin
     with Dados, Empresas do begin
          sql.clear;
          sql.add('select * from empresas where Codigo = '+inttostr(mEmpresa));
          open;
          if not FieldByName('Matriz_Filial').AsBoolean  then begin
             MessageDlg('Atenção!'+#13+#13+'A empresa corrente é a "FILIAL '+FieldByName('Numero_Filial').asstring+'" Por favor mude para a "MATRIZ" para poder gerar os lançamentos', mtInformation, [mbok], 0);
             Abort;
          end;
     end;
     Contabilidade_LanEncerramento := TContabilidade_LanEncerramento.Create(Self);
     Contabilidade_LanEncerramento.Caption := Caption;
     Contabilidade_LanEncerramento.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_ParametrizacaoClick(Sender: TObject);
begin
     Cadastro_DREContabil := TCadastro_DREContabil.Create(Self);
     Cadastro_DREContabil.Caption := Caption;
     Cadastro_DREContabil.Showmodal;
end;

procedure TMenu_Principal.DRE1Click(Sender: TObject);
begin
     Impressao_ContabeisOP_DRE := tImpressao_ContabeisOP_DRE.Create(Self);
     Impressao_ContabeisOP_DRE.Caption := Caption;
     Impressao_ContabeisOP_DRE.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_ControleChequesClick(Sender: TObject);
begin
     Financeiro_ControleCheques := TFinanceiro_ControleCheques.Create(Self);
     Financeiro_ControleCheques.Caption := Caption;
     Financeiro_ControleCheques.ShowModal;
end;

procedure TMenu_Principal.OrdemdeCompraPO1Click(Sender: TObject);
begin
     Impressao_ProcessosOP_PO := TImpressao_ProcessosOP_PO.Create(Self);
     Impressao_ProcessosOP_PO.Caption := Caption;
     Impressao_ProcessosOP_PO.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_Financeiros_ControleChequesClick(Sender: TObject);
begin
     Impressao_FinanceirosOP_Cheques := TImpressao_FinanceirosOP_Cheques.Create(Self);
     Impressao_FinanceirosOP_Cheques.Caption := Caption;
     Impressao_FinanceirosOP_Cheques.ShowModal;
end;

procedure TMenu_Principal.GerarArquivoSPEDREDIF1Click(Sender: TObject);
begin
     frmACBrReinf := TfrmACBrReinf.create(Self);
     frmACBrReinf.Caption := Caption;
     frmACBrReinf.showmodal;
end;

procedure TMenu_Principal.mnUtilitarios_ExecutarScriptClick(Sender: TObject);
var
   mSenha:string;
begin
      If mUsuarioNome <> 'ADMINISTRADOR' then begin
         ShowMessage('Apenas usúario "ADMINISTRADOR" pode utilizar esta opção.');
         Abort;
      End;
      PostMessage(Handle, InputBoxMessage, 0, 0);

      if (NomeComputador <> 'PROGRAMACAO') and (NomeComputador <> 'NOTE-DED') then
         mSenha := InputBox('Senha', 'Digite a senha :', '')
      else
         mSenha := InputBox('Senha', 'Digite a senha :', 'Cybersoft@Script');

      if mSenha = '' then Abort;
      if mSenha <> 'Cybersoft@Script' then begin
         MessageDlg('Senha inválida!', mtInformation, [mbok], 0);
      end else begin
         Utilitarios_Script := TUtilitarios_Script.Create(Self);
         Utilitarios_Script.Caption := Caption;
         Utilitarios_Script.ShowModal;
      end;
end;

procedure TMenu_Principal.InputBoxPass(var Msg: TMessage);
var
    hInputForm, hEdit: HWND;
begin
    hInputForm := Screen.Forms[0].Handle;
    if (hInputForm <> 0) then begin
       hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
       SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('?'), 0);
    end;
end;

procedure TMenu_Principal.mnCadastro_IntermediadoresClick(Sender: TObject);
begin
      Cadastro_Intermediarios:= TCadastro_Intermediarios.Create(Self);
      Cadastro_Intermediarios.Caption := Caption;
      Cadastro_Intermediarios.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_AgendamentosClick(Sender: TObject);
begin
      Financeiro_Agendamento := TFinanceiro_Agendamento.Create(Self);
      Financeiro_Agendamento.Caption := Caption;
      Financeiro_Agendamento.ShowModal;
end;

procedure TMenu_Principal.Despacho_PLIClick(Sender: TObject);
begin
      Processo_PLI := TProcesso_PLI.Create(Self);
      Processo_PLI.Caption := Caption;
      Processo_PLI.ShowModal;
end;

procedure TMenu_Principal.mnDespacho_RegistroDIClick(Sender: TObject);
begin
      Processo_RegistroDI := TProcesso_RegistroDI.Create(Self);
      Processo_RegistroDI.Caption := Caption;
      Processo_RegistroDI.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_POClick(Sender: TObject);
begin
      Processo_PO := TProcesso_PO.Create(Self);
      Processo_PO.Caption := Caption;
      Processo_PO.ShowModal;
end;

procedure TMenu_Principal.PedidoparaSeparao1Click(Sender: TObject);
begin
      Utilitarios_Exportar_ArmazemPed := TUtilitarios_Exportar_ArmazemPed.Create(Self);
      Utilitarios_Exportar_ArmazemPed.Caption := Caption;
      Utilitarios_Exportar_ArmazemPed.ShowModal;
end;

procedure TMenu_Principal.ImportararquivoXML1Click(Sender: TObject);
begin
      if mUsuarioNome = 'ADMINISTRADOR' then begin
         Utilitarios_ImportarXML := TUtilitarios_ImportarXML.Create(Self);
         Utilitarios_ImportarXML.Caption := Caption;
         Utilitarios_ImportarXML.ShowModal;
      end else begin
         ShowMessage('Apenas usúario "ADMINISTRADOR" pode utilizar esta opção.');
      end;
end;

procedure TMenu_Principal.ImportarPlanodeContasReferncia1Click(Sender: TObject);
begin
      if mUsuarioNome = 'ADMINISTRADOR' then begin
         Utilitarios_ImportarPlanoContasRef := TUtilitarios_ImportarPlanoContasRef.Create(Self);
         Utilitarios_ImportarPlanoContasRef.Caption := Caption;
         Utilitarios_ImportarPlanoContasRef.ShowModal;
      end else begin
         ShowMessage('Apenas usúario "ADMINISTRADOR" pode utilizar esta opção.');
      end;
end;

procedure TMenu_Principal.bCteClick(Sender: TObject);
begin
      Pedido_CTE := TPedido_CTE.Create(Self);
      Pedido_CTE.Caption := Caption;
      Pedido_CTE.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_TaxaSISCOMEXClick(Sender: TObject);
begin
      Cadastro_TaxaSISCOMEX := TCadastro_TaxaSISCOMEX.Create(Self);
      Cadastro_TaxaSISCOMEX.Caption := Caption;
      Cadastro_TaxaSISCOMEX.ShowModal;
end;

procedure TMenu_Principal.ProcessosAdministrativosJudicial1Click(Sender: TObject);
begin
      Fiscal_ProcessosREINF := TFiscal_ProcessosREINF.Create(Self);
      Fiscal_ProcessosREINF.Caption := Caption;
      Fiscal_ProcessosREINF.ShowModal;
end;

procedure TMenu_Principal.abeladePreos1Click(Sender: TObject);
begin
      Impressao_Estoque_TabelaPreco := TImpressao_Estoque_TabelaPreco.Create(Self);
      Impressao_Estoque_TabelaPreco.Caption := Caption;
      Impressao_Estoque_TabelaPreco.ShowModal;
end;

// Verifica se o pagamento da mensalidade foi feito pelo cliente.
procedure TMenu_Principal.tInadTimer(Sender: TObject);
Var
    mCNPJ : WideString;
    mTexto: TextFile;
    mLinha: String;
begin
     tInad.Enabled := false;
     Screen.Cursor := crHourGlass;
     Dados.Configuracao.Open;
     // Executa o download do arquivo de "Inadimplencia.txt" para saber se a empresa esta em dia com o pagamento.
     Menu_Principal.IdAntiFreeze1.Active := true;
     
     IdFtp1.Username := 'cybersoft_importa';
     IdFtp1.Password := 'cybersoft@123';
     IdFtp1.Host     := string(Menu_Principal.mIPSuporte);
     IdFtp1.Passive  := true;
     IdFTP1.Port     := Dados.ConfiguracaoPorta_FTP.AsInteger;

     Menu_Principal.IdAntiFreeze1.Active := true;

     if Internet then begin
        try
            IdFtp1.Connect();
            IdFtp1.TransferType := ftASCII;
            // Arquivo de inadimplencia.
            IdFtp1.Get('\server-cyber\Dados Clientes\Inadimplencia.txt', ExtractFilePath(Application.ExeName)+'Inadimplencia.txt', true, false);

            // Arquivo de clientes encerrados
            IdFtp1.Get('\server-cyber\Dados Clientes\Clientes_Encerrados.txt', ExtractFilePath(Application.ExeName)+'Clientes_Encerrados.txt', true, false);
            IdFtp1.Disconnect;
            Menu_Principal.IdAntiFreeze1.Active := false;
        except
            Menu_Principal.IdAntiFreeze1.Active := false;
            Screen.Cursor := crDefault;
            Abort;
        end;
     end;

     // Verifica se o CNPJ da empresa esta no arquivo texto "Inadimplencia.txt".
     Dados.Empresas.SQL.Clear;
     Dados.Empresas.SQL.Add('UPDATE Empresas SET Pagamento = 1');
     Dados.Empresas.Execute;

     If FileExists('Inadimplencia.txt') then begin
        AssignFile(mTexto, 'Inadimplencia.txt');
        Reset(mTexto);

        mCNPJ := '';
        While not Eof (mTexto) do begin
              ReadLn(mTexto, mLinha);
              If Trim(mLinha) <> '' then begin
                 mCNPJ := mCNPJ + QuotedStr(mLinha)+',';
              End;
        End;
        CloseFile(mTexto);

        mCNPJ := Copy(mCNPJ,1, Length(mCNPJ)-1);

        If Trim(mCNPJ) <> '' then begin
           Dados.Empresas.SQL.Clear;
           Dados.Empresas.SQL.Add('UPDATE Empresas SET Pagamento = 0 WHERE CNPJ IN('+mCNPJ+')');
           Dados.Empresas.Execute;
        End;
        Dados.Empresas.SQL.Clear;
        Dados.Empresas.SQL.Add('SELECT * FROM Empresas WHERE Codigo = :pCodigo');
        Dados.Empresas.ParamByName('pCodigo').AsInteger := Menu_Principal.mEmpresa;
        Dados.Empresas.Open;

        Menu_Principal.mnNotaFiscal.Enabled := Dados.EmpresasPagamento.AsBoolean;
        Menu_Principal.bNF_Entrada.Enabled  := Dados.EmpresasPagamento.AsBoolean;
        Menu_Principal.bNF_Saida.Enabled    := Dados.EmpresasPagamento.AsBoolean;
        Menu_Principal.bNF_Outros.Enabled   := Dados.EmpresasPagamento.AsBoolean;
        Menu_Principal.bNFE.Enabled         := Dados.EmpresasPagamento.AsBoolean;

        DeleteFile(ExtractFilePath(Application.ExeName)+'Inadimplencia.txt');
     End;

     // Verifica se o CNPJ da empresa esta no arquivo texto "Clientes_Encerrados.txt" e desativa atualizações caso esteja.
     If FileExists('Clientes_Encerrados.txt') then begin
        AssignFile(mTexto, 'Clientes_Encerrados.txt');
        Reset(mTexto);

        While not Eof (mTexto) do begin
              ReadLn(mTexto, mLinha);
              If Dados.EmpresasCNPJ.AsString = mLinha then begin
                 Menu_Principal.mnAtualizar_Sistema.Enabled := false;
              End;
        End;
        CloseFile(mTexto);

        DeleteFile(ExtractFilePath(Application.ExeName)+'Clientes_Encerrados.txt');
     End;

     Menu_Principal.IdAntiFreeze1.Active := false;

     tInad.Enabled := true;
     Screen.Cursor := crDefault;
end;

procedure TMenu_Principal.mnFinanceiro_ApuracaoImpostosClick(Sender: TObject);
begin
      Financeiro_ImpostosMes := TFinanceiro_ImpostosMes.Create(Self);
      Financeiro_ImpostosMes.Caption := Caption;
      Financeiro_ImpostosMes.ShowModal;
end;

procedure TMenu_Principal.mnCadastros_LancamentoPadraoClick(Sender: TObject);
begin
     Cadastro_LancamentoPadrao := TCadastro_LancamentoPadrao.Create(Self);
     Cadastro_LancamentoPadrao.Caption := Caption;
     Cadastro_LancamentoPadrao.ShowModal;
end;

procedure TMenu_Principal.mnFinanceiro_PagamentosMesClick(Sender: TObject);
begin
     Financeiro_PagamentosMes := TFinanceiro_PagamentosMes.Create(self);
     Financeiro_PagamentosMes.Caption := Caption;
     Financeiro_PagamentosMes.ShowModal;
end;

procedure TMenu_Principal.LayoutdeNotaFiscaldeServioXML1Click(Sender: TObject);
begin
     Utilitarios_LayOutXMLNFS := TUtilitarios_LayOutXMLNFS.Create(Self);
     Utilitarios_LayOutXMLNFS.Caption := Caption;
     Utilitarios_LayOutXMLNFS.ShowModal;
end;

procedure TMenu_Principal.mnImpressao_ApuracaoICMSRecuperarClick(Sender: TObject);
begin
     Impressao_Fiscais_ApuracaoICMSRecuperar := TImpressao_Fiscais_ApuracaoICMSRecuperar.Create(Self);
     Impressao_Fiscais_ApuracaoICMSRecuperar.Caption := Caption;
     Impressao_Fiscais_ApuracaoICMSRecuperar.ShowModal;
end;

procedure TMenu_Principal.PropostadeExportao1Click(Sender: TObject);
begin
     Impressao_ProcessosOP_Proposta := TImpressao_ProcessosOP_Proposta.Create(Self);
     Impressao_ProcessosOP_Proposta.Caption := Caption;
     Impressao_ProcessosOP_Proposta.ShowModal;
end;

procedure TMenu_Principal.ProtpostadeExportao1Click(Sender: TObject);
begin
     Proposta_Exportacao := TProposta_Exportacao.Create(Self);
     Proposta_Exportacao.Caption := Caption;
     Proposta_Exportacao.ShowModal;
end;

procedure TMenu_Principal.mnProcesso_InvoiceClick(Sender: TObject);
begin
     Processo_Invoice := TProcesso_Invoice.Create(Self);
     Processo_Invoice.Caption := Caption;
     Processo_Invoice.ShowModal;
end;

procedure TMenu_Principal.CommercialInvoiceFatura1Click(Sender: TObject);
begin
     Processo_InvoiceExportacao := TProcesso_InvoiceExportacao.Create(Self);
     Processo_InvoiceExportacao.Caption := Caption;
     Processo_InvoiceExportacao.ShowModal;
end;

procedure TMenu_Principal.mnCadastro_UsuariosClick(Sender: TObject);
begin
      Cadastro_Usuarios2 := TCadastro_Usuarios2.Create(Self);
      Cadastro_Usuarios2.Caption := Caption;
      Cadastro_Usuarios2.ShowModal;
end;



end.

