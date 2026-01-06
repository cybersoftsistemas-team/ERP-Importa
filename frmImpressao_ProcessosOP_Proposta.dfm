object Impressao_ProcessosOP_Proposta: TImpressao_ProcessosOP_Proposta
  Left = 600
  Top = 259
  BorderStyle = bsDialog
  Caption = 'Impressao_ProcessosOP_Proposta'
  ClientHeight = 489
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = bSairClick
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 789
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 96
    Height = 21
    Caption = 'EXPORTA'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = 4194304
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 8
    Top = 22
    Width = 239
    Height = 18
    Caption = 'Impress'#227'o da Proposta de Exporta'#231#227'o.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    Layout = tlCenter
    ParentFont = False
    ShadowColor = 4194304
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 459
    Width = 789
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      789
      30)
    object bSair: TButton
      Left = 713
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImprimir: TButton
      Left = 639
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirClick
    end
  end
  object Grade: TDBGrid
    Left = 13
    Top = 59
    Width = 764
    Height = 348
    DataSource = dstPropostas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Proposta'
        Title.Alignment = taCenter
        Title.Caption = 'Proposta #'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 358
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Local_Entrega'
        Title.Alignment = taCenter
        Title.Caption = 'Local de Entrega'
        Width = 152
        Visible = True
      end>
  end
  object cExcel: TCheckBox
    Left = 16
    Top = 424
    Width = 149
    Height = 17
    Caption = 'Gerar em sa'#237'da em EXCEL'
    TabOrder = 2
  end
  object dstPropostas: TDataSource
    DataSet = tPropostas
    Left = 377
    Top = 217
  end
  object tPropostas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ProcessosDocumentos'
      
        '  (Processo, Tipo, Incoterms, Entreposto, Numero_Declaracao, Dat' +
        'a_RegistroDeclaracao, Data_DesembaracoDeclaracao, FOB, Frete, Se' +
        'guro, II, ICMS_DIferido, Aliquota_ICMS, Valor_ICMS, Recinto_Alfa' +
        'ndegario, UF_Desembaraco, Quantidade, Volumes, Especie, Quantida' +
        'de_Liberada, Quantidade_Digitada, Peso_Bruto, Peso_Liquido, Nume' +
        'ro_Fatura, FOB_ME, Moeda_FOB, Taxa_FOB, Frete_ME, Moeda_Frete, T' +
        'axa_Frete, Seguro_ME, Moeda_Seguro, Taxa_Seguro, Condicao_Pgto, ' +
        'Tipo_Mercadoria, Nome_Transporte, Origem, Local_Embarque, Local_' +
        'Desembarque, Numero_DOC, Data_DOC, Agencia_Maritima, Navio_DataP' +
        'revista, Navio_DataChegada, Cliente, Processo_Abertura, Processo' +
        '_Fechamento, Conta_Impostos, Conta_Despesas, Bloqueado, Forneced' +
        'or, RE_Numero, RE_DataAverbacao, Despachante, Canal_SISCOMEX, Va' +
        'lor_PIS, Valor_COFINS, Valor_IPI, Data_Fatura, Vencimento_Cambio' +
        ', Courrier, Documento_Carga, Ad_Valorem, Incentivo_Fiscal, Tipo_' +
        'Declaracao, Natureza_Exportacao, Tipo_Conhecimento, Pais, Conta_' +
        'Adiantamento, Modalidade_Importacao, Responsavel, Container_Nume' +
        'ro, Processo_Mestre, CNPJ_Importado, Margem_Lucro, Desconto_Oper' +
        'acional, Desconto_Adicional, Data_Encerramento, Data_BL, Valor_F' +
        'aturaME, Data_PrevFaturamento, Data_PrevRegistro, Local_Desembar' +
        'acoCodigo, Desativado, Fator_FaturamentoValor, Fator_SISCOMEXVal' +
        'or, Margem_LucroValor, Desconto_AdicionalValor, Desconto_Operaci' +
        'onalValor, Valor_Dumping, Condicao_Cambio, Codigo_PaisOrigem, Ta' +
        'xa_SISCOMEX, Reducao_ICMS, Observacao, FOB_MEAdicoes, FOB_Adicoe' +
        's, DA, Reducao_BC, Valor_PIS2, Valor_COFINS2, Memorando_Exportac' +
        'ao, CT_Numero, CT_Data, CT_Modelo, CT_Serie, Origem_Mercadoria, ' +
        'Banco, Reducao_PIS, Reducao_COFINS, PIS_NFEntrada, PIS_NFESaida,' +
        ' COFINS_NFEntrada, COFINS_NFESaida, PIS_Majorada, COFINS_Majorad' +
        'a, Suspensao_Impostos, Remover_Valoracao, Referencia_Cliente, Ad' +
        'missao_Temporaria, Condicao_Pagamento, Data_PrevFrete, Fator_Fre' +
        'teValor, Previsao_FreteTransportador, Fator_SISCOMEXValorReal, F' +
        'ator_FreteValorReal, Fator_FaturamentoValorReal, Data_PrevArmaze' +
        'm, Fator_ArmazemValor, Fator_ArmazemValorReal, Previsao_ArmazemF' +
        'ornecedor, Referencia_DataEntrega, CST_PIS, CST_COFINS, Codigo_B' +
        'CCredito, Apuracao_PISCOFINS, Consignatario_CNPJ, Consignatario_' +
        'UF, AFRMM, Local_Desembaraco, Preco_Venda, Proforma_Numero, Prof' +
        'orma_Data, Condicao_Frete, Seguradora, Proforma_DataTaxa, Data_T' +
        'axaFatura, Data, ROF_Numero, ROF_Emissao, ROF_Dias, Notificar, U' +
        'RF_Despacho, Referencia_Despachante, Via_Transporte, Rateia_Fret' +
        'ePeso)'
      'VALUES'
      
        '  (:Processo, :Tipo, :Incoterms, :Entreposto, :Numero_Declaracao' +
        ', :Data_RegistroDeclaracao, :Data_DesembaracoDeclaracao, :FOB, :' +
        'Frete, :Seguro, :II, :ICMS_DIferido, :Aliquota_ICMS, :Valor_ICMS' +
        ', :Recinto_Alfandegario, :UF_Desembaraco, :Quantidade, :Volumes,' +
        ' :Especie, :Quantidade_Liberada, :Quantidade_Digitada, :Peso_Bru' +
        'to, :Peso_Liquido, :Numero_Fatura, :FOB_ME, :Moeda_FOB, :Taxa_FO' +
        'B, :Frete_ME, :Moeda_Frete, :Taxa_Frete, :Seguro_ME, :Moeda_Segu' +
        'ro, :Taxa_Seguro, :Condicao_Pgto, :Tipo_Mercadoria, :Nome_Transp' +
        'orte, :Origem, :Local_Embarque, :Local_Desembarque, :Numero_DOC,' +
        ' :Data_DOC, :Agencia_Maritima, :Navio_DataPrevista, :Navio_DataC' +
        'hegada, :Cliente, :Processo_Abertura, :Processo_Fechamento, :Con' +
        'ta_Impostos, :Conta_Despesas, :Bloqueado, :Fornecedor, :RE_Numer' +
        'o, :RE_DataAverbacao, :Despachante, :Canal_SISCOMEX, :Valor_PIS,' +
        ' :Valor_COFINS, :Valor_IPI, :Data_Fatura, :Vencimento_Cambio, :C' +
        'ourrier, :Documento_Carga, :Ad_Valorem, :Incentivo_Fiscal, :Tipo' +
        '_Declaracao, :Natureza_Exportacao, :Tipo_Conhecimento, :Pais, :C' +
        'onta_Adiantamento, :Modalidade_Importacao, :Responsavel, :Contai' +
        'ner_Numero, :Processo_Mestre, :CNPJ_Importado, :Margem_Lucro, :D' +
        'esconto_Operacional, :Desconto_Adicional, :Data_Encerramento, :D' +
        'ata_BL, :Valor_FaturaME, :Data_PrevFaturamento, :Data_PrevRegist' +
        'ro, :Local_DesembaracoCodigo, :Desativado, :Fator_FaturamentoVal' +
        'or, :Fator_SISCOMEXValor, :Margem_LucroValor, :Desconto_Adiciona' +
        'lValor, :Desconto_OperacionalValor, :Valor_Dumping, :Condicao_Ca' +
        'mbio, :Codigo_PaisOrigem, :Taxa_SISCOMEX, :Reducao_ICMS, :Observ' +
        'acao, :FOB_MEAdicoes, :FOB_Adicoes, :DA, :Reducao_BC, :Valor_PIS' +
        '2, :Valor_COFINS2, :Memorando_Exportacao, :CT_Numero, :CT_Data, ' +
        ':CT_Modelo, :CT_Serie, :Origem_Mercadoria, :Banco, :Reducao_PIS,' +
        ' :Reducao_COFINS, :PIS_NFEntrada, :PIS_NFESaida, :COFINS_NFEntra' +
        'da, :COFINS_NFESaida, :PIS_Majorada, :COFINS_Majorada, :Suspensa' +
        'o_Impostos, :Remover_Valoracao, :Referencia_Cliente, :Admissao_T' +
        'emporaria, :Condicao_Pagamento, :Data_PrevFrete, :Fator_FreteVal' +
        'or, :Previsao_FreteTransportador, :Fator_SISCOMEXValorReal, :Fat' +
        'or_FreteValorReal, :Fator_FaturamentoValorReal, :Data_PrevArmaze' +
        'm, :Fator_ArmazemValor, :Fator_ArmazemValorReal, :Previsao_Armaz' +
        'emFornecedor, :Referencia_DataEntrega, :CST_PIS, :CST_COFINS, :C' +
        'odigo_BCCredito, :Apuracao_PISCOFINS, :Consignatario_CNPJ, :Cons' +
        'ignatario_UF, :AFRMM, :Local_Desembaraco, :Preco_Venda, :Proform' +
        'a_Numero, :Proforma_Data, :Condicao_Frete, :Seguradora, :Proform' +
        'a_DataTaxa, :Data_TaxaFatura, :Data, :ROF_Numero, :ROF_Emissao, ' +
        ':ROF_Dias, :Notificar, :URF_Despacho, :Referencia_Despachante, :' +
        'Via_Transporte, :Rateia_FretePeso)')
    SQLDelete.Strings = (
      'DELETE FROM ProcessosDocumentos'
      'WHERE'
      '  Processo = :Old_Processo AND Tipo = :Old_Tipo')
    SQLUpdate.Strings = (
      'UPDATE ProcessosDocumentos'
      'SET'
      
        '  Processo = :Processo, Tipo = :Tipo, Incoterms = :Incoterms, En' +
        'treposto = :Entreposto, Numero_Declaracao = :Numero_Declaracao, ' +
        'Data_RegistroDeclaracao = :Data_RegistroDeclaracao, Data_Desemba' +
        'racoDeclaracao = :Data_DesembaracoDeclaracao, FOB = :FOB, Frete ' +
        '= :Frete, Seguro = :Seguro, II = :II, ICMS_DIferido = :ICMS_DIfe' +
        'rido, Aliquota_ICMS = :Aliquota_ICMS, Valor_ICMS = :Valor_ICMS, ' +
        'Recinto_Alfandegario = :Recinto_Alfandegario, UF_Desembaraco = :' +
        'UF_Desembaraco, Quantidade = :Quantidade, Volumes = :Volumes, Es' +
        'pecie = :Especie, Quantidade_Liberada = :Quantidade_Liberada, Qu' +
        'antidade_Digitada = :Quantidade_Digitada, Peso_Bruto = :Peso_Bru' +
        'to, Peso_Liquido = :Peso_Liquido, Numero_Fatura = :Numero_Fatura' +
        ', FOB_ME = :FOB_ME, Moeda_FOB = :Moeda_FOB, Taxa_FOB = :Taxa_FOB' +
        ', Frete_ME = :Frete_ME, Moeda_Frete = :Moeda_Frete, Taxa_Frete =' +
        ' :Taxa_Frete, Seguro_ME = :Seguro_ME, Moeda_Seguro = :Moeda_Segu' +
        'ro, Taxa_Seguro = :Taxa_Seguro, Condicao_Pgto = :Condicao_Pgto, ' +
        'Tipo_Mercadoria = :Tipo_Mercadoria, Nome_Transporte = :Nome_Tran' +
        'sporte, Origem = :Origem, Local_Embarque = :Local_Embarque, Loca' +
        'l_Desembarque = :Local_Desembarque, Numero_DOC = :Numero_DOC, Da' +
        'ta_DOC = :Data_DOC, Agencia_Maritima = :Agencia_Maritima, Navio_' +
        'DataPrevista = :Navio_DataPrevista, Navio_DataChegada = :Navio_D' +
        'ataChegada, Cliente = :Cliente, Processo_Abertura = :Processo_Ab' +
        'ertura, Processo_Fechamento = :Processo_Fechamento, Conta_Impost' +
        'os = :Conta_Impostos, Conta_Despesas = :Conta_Despesas, Bloquead' +
        'o = :Bloqueado, Fornecedor = :Fornecedor, RE_Numero = :RE_Numero' +
        ', RE_DataAverbacao = :RE_DataAverbacao, Despachante = :Despachan' +
        'te, Canal_SISCOMEX = :Canal_SISCOMEX, Valor_PIS = :Valor_PIS, Va' +
        'lor_COFINS = :Valor_COFINS, Valor_IPI = :Valor_IPI, Data_Fatura ' +
        '= :Data_Fatura, Vencimento_Cambio = :Vencimento_Cambio, Courrier' +
        ' = :Courrier, Documento_Carga = :Documento_Carga, Ad_Valorem = :' +
        'Ad_Valorem, Incentivo_Fiscal = :Incentivo_Fiscal, Tipo_Declaraca' +
        'o = :Tipo_Declaracao, Natureza_Exportacao = :Natureza_Exportacao' +
        ', Tipo_Conhecimento = :Tipo_Conhecimento, Pais = :Pais, Conta_Ad' +
        'iantamento = :Conta_Adiantamento, Modalidade_Importacao = :Modal' +
        'idade_Importacao, Responsavel = :Responsavel, Container_Numero =' +
        ' :Container_Numero, Processo_Mestre = :Processo_Mestre, CNPJ_Imp' +
        'ortado = :CNPJ_Importado, Margem_Lucro = :Margem_Lucro, Desconto' +
        '_Operacional = :Desconto_Operacional, Desconto_Adicional = :Desc' +
        'onto_Adicional, Data_Encerramento = :Data_Encerramento, Data_BL ' +
        '= :Data_BL, Valor_FaturaME = :Valor_FaturaME, Data_PrevFaturamen' +
        'to = :Data_PrevFaturamento, Data_PrevRegistro = :Data_PrevRegist' +
        'ro, Local_DesembaracoCodigo = :Local_DesembaracoCodigo, Desativa' +
        'do = :Desativado, Fator_FaturamentoValor = :Fator_FaturamentoVal' +
        'or, Fator_SISCOMEXValor = :Fator_SISCOMEXValor, Margem_LucroValo' +
        'r = :Margem_LucroValor, Desconto_AdicionalValor = :Desconto_Adic' +
        'ionalValor, Desconto_OperacionalValor = :Desconto_OperacionalVal' +
        'or, Valor_Dumping = :Valor_Dumping, Condicao_Cambio = :Condicao_' +
        'Cambio, Codigo_PaisOrigem = :Codigo_PaisOrigem, Taxa_SISCOMEX = ' +
        ':Taxa_SISCOMEX, Reducao_ICMS = :Reducao_ICMS, Observacao = :Obse' +
        'rvacao, FOB_MEAdicoes = :FOB_MEAdicoes, FOB_Adicoes = :FOB_Adico' +
        'es, DA = :DA, Reducao_BC = :Reducao_BC, Valor_PIS2 = :Valor_PIS2' +
        ', Valor_COFINS2 = :Valor_COFINS2, Memorando_Exportacao = :Memora' +
        'ndo_Exportacao, CT_Numero = :CT_Numero, CT_Data = :CT_Data, CT_M' +
        'odelo = :CT_Modelo, CT_Serie = :CT_Serie, Origem_Mercadoria = :O' +
        'rigem_Mercadoria, Banco = :Banco, Reducao_PIS = :Reducao_PIS, Re' +
        'ducao_COFINS = :Reducao_COFINS, PIS_NFEntrada = :PIS_NFEntrada, ' +
        'PIS_NFESaida = :PIS_NFESaida, COFINS_NFEntrada = :COFINS_NFEntra' +
        'da, COFINS_NFESaida = :COFINS_NFESaida, PIS_Majorada = :PIS_Majo' +
        'rada, COFINS_Majorada = :COFINS_Majorada, Suspensao_Impostos = :' +
        'Suspensao_Impostos, Remover_Valoracao = :Remover_Valoracao, Refe' +
        'rencia_Cliente = :Referencia_Cliente, Admissao_Temporaria = :Adm' +
        'issao_Temporaria, Condicao_Pagamento = :Condicao_Pagamento, Data' +
        '_PrevFrete = :Data_PrevFrete, Fator_FreteValor = :Fator_FreteVal' +
        'or, Previsao_FreteTransportador = :Previsao_FreteTransportador, ' +
        'Fator_SISCOMEXValorReal = :Fator_SISCOMEXValorReal, Fator_FreteV' +
        'alorReal = :Fator_FreteValorReal, Fator_FaturamentoValorReal = :' +
        'Fator_FaturamentoValorReal, Data_PrevArmazem = :Data_PrevArmazem' +
        ', Fator_ArmazemValor = :Fator_ArmazemValor, Fator_ArmazemValorRe' +
        'al = :Fator_ArmazemValorReal, Previsao_ArmazemFornecedor = :Prev' +
        'isao_ArmazemFornecedor, Referencia_DataEntrega = :Referencia_Dat' +
        'aEntrega, CST_PIS = :CST_PIS, CST_COFINS = :CST_COFINS, Codigo_B' +
        'CCredito = :Codigo_BCCredito, Apuracao_PISCOFINS = :Apuracao_PIS' +
        'COFINS, Consignatario_CNPJ = :Consignatario_CNPJ, Consignatario_' +
        'UF = :Consignatario_UF, AFRMM = :AFRMM, Local_Desembaraco = :Loc' +
        'al_Desembaraco, Preco_Venda = :Preco_Venda, Proforma_Numero = :P' +
        'roforma_Numero, Proforma_Data = :Proforma_Data, Condicao_Frete =' +
        ' :Condicao_Frete, Seguradora = :Seguradora, Proforma_DataTaxa = ' +
        ':Proforma_DataTaxa, Data_TaxaFatura = :Data_TaxaFatura, Data = :' +
        'Data, ROF_Numero = :ROF_Numero, ROF_Emissao = :ROF_Emissao, ROF_' +
        'Dias = :ROF_Dias, Notificar = :Notificar, URF_Despacho = :URF_De' +
        'spacho, Referencia_Despachante = :Referencia_Despachante, Via_Tr' +
        'ansporte = :Via_Transporte, Rateia_FretePeso = :Rateia_FretePeso'
      'WHERE'
      '  Processo = :Old_Processo AND Tipo = :Old_Tipo')
    SQLRefresh.Strings = (
      
        'SELECT ProcessosDocumentos.Processo, ProcessosDocumentos.Tipo, P' +
        'rocessosDocumentos.Incoterms, ProcessosDocumentos.Entreposto, Pr' +
        'ocessosDocumentos.Numero_Declaracao, ProcessosDocumentos.Data_Re' +
        'gistroDeclaracao, ProcessosDocumentos.Data_DesembaracoDeclaracao' +
        ', ProcessosDocumentos.FOB, ProcessosDocumentos.Frete, ProcessosD' +
        'ocumentos.Seguro, ProcessosDocumentos.II, ProcessosDocumentos.IC' +
        'MS_DIferido, ProcessosDocumentos.Aliquota_ICMS, ProcessosDocumen' +
        'tos.Valor_ICMS, ProcessosDocumentos.Recinto_Alfandegario, Proces' +
        'sosDocumentos.UF_Desembaraco, ProcessosDocumentos.Quantidade, Pr' +
        'ocessosDocumentos.Volumes, ProcessosDocumentos.Especie, Processo' +
        'sDocumentos.Quantidade_Liberada, ProcessosDocumentos.Quantidade_' +
        'Digitada, ProcessosDocumentos.Peso_Bruto, ProcessosDocumentos.Pe' +
        'so_Liquido, ProcessosDocumentos.Numero_Fatura, ProcessosDocument' +
        'os.FOB_ME, ProcessosDocumentos.Moeda_FOB, ProcessosDocumentos.Ta' +
        'xa_FOB, ProcessosDocumentos.Frete_ME, ProcessosDocumentos.Moeda_' +
        'Frete, ProcessosDocumentos.Taxa_Frete, ProcessosDocumentos.Segur' +
        'o_ME, ProcessosDocumentos.Moeda_Seguro, ProcessosDocumentos.Taxa' +
        '_Seguro, ProcessosDocumentos.Condicao_Pgto, ProcessosDocumentos.' +
        'Tipo_Mercadoria, ProcessosDocumentos.Nome_Transporte, ProcessosD' +
        'ocumentos.Origem, ProcessosDocumentos.Local_Embarque, ProcessosD' +
        'ocumentos.Local_Desembarque, ProcessosDocumentos.Numero_DOC, Pro' +
        'cessosDocumentos.Data_DOC, ProcessosDocumentos.Agencia_Maritima,' +
        ' ProcessosDocumentos.Navio_DataPrevista, ProcessosDocumentos.Nav' +
        'io_DataChegada, ProcessosDocumentos.Cliente, ProcessosDocumentos' +
        '.Processo_Abertura, ProcessosDocumentos.Processo_Fechamento, Pro' +
        'cessosDocumentos.Conta_Impostos, ProcessosDocumentos.Conta_Despe' +
        'sas, ProcessosDocumentos.Bloqueado, ProcessosDocumentos.Forneced' +
        'or, ProcessosDocumentos.RE_Numero, ProcessosDocumentos.RE_DataAv' +
        'erbacao, ProcessosDocumentos.Despachante, ProcessosDocumentos.Ca' +
        'nal_SISCOMEX, ProcessosDocumentos.Valor_PIS, ProcessosDocumentos' +
        '.Valor_COFINS, ProcessosDocumentos.Valor_IPI, ProcessosDocumento' +
        's.Data_Fatura, ProcessosDocumentos.Vencimento_Cambio, ProcessosD' +
        'ocumentos.Courrier, ProcessosDocumentos.Documento_Carga, Process' +
        'osDocumentos.Ad_Valorem, ProcessosDocumentos.Incentivo_Fiscal, P' +
        'rocessosDocumentos.Tipo_Declaracao, ProcessosDocumentos.Natureza' +
        '_Exportacao, ProcessosDocumentos.Tipo_Conhecimento, ProcessosDoc' +
        'umentos.Pais, ProcessosDocumentos.Conta_Adiantamento, ProcessosD' +
        'ocumentos.Modalidade_Importacao, ProcessosDocumentos.Responsavel' +
        ', ProcessosDocumentos.Container_Numero, ProcessosDocumentos.Proc' +
        'esso_Mestre, ProcessosDocumentos.CNPJ_Importado, ProcessosDocume' +
        'ntos.Margem_Lucro, ProcessosDocumentos.Desconto_Operacional, Pro' +
        'cessosDocumentos.Desconto_Adicional, ProcessosDocumentos.Data_En' +
        'cerramento, ProcessosDocumentos.Data_BL, ProcessosDocumentos.Val' +
        'or_FaturaME, ProcessosDocumentos.Data_PrevFaturamento, Processos' +
        'Documentos.Data_PrevRegistro, ProcessosDocumentos.Local_Desembar' +
        'acoCodigo, ProcessosDocumentos.Desativado, ProcessosDocumentos.F' +
        'ator_FaturamentoValor, ProcessosDocumentos.Fator_SISCOMEXValor, ' +
        'ProcessosDocumentos.Margem_LucroValor, ProcessosDocumentos.Desco' +
        'nto_AdicionalValor, ProcessosDocumentos.Desconto_OperacionalValo' +
        'r, ProcessosDocumentos.Valor_Dumping, ProcessosDocumentos.Condic' +
        'ao_Cambio, ProcessosDocumentos.Codigo_PaisOrigem, ProcessosDocum' +
        'entos.Taxa_SISCOMEX, ProcessosDocumentos.Reducao_ICMS, Processos' +
        'Documentos.Observacao, ProcessosDocumentos.FOB_MEAdicoes, Proces' +
        'sosDocumentos.FOB_Adicoes, ProcessosDocumentos.DA, ProcessosDocu' +
        'mentos.Reducao_BC, ProcessosDocumentos.Valor_PIS2, ProcessosDocu' +
        'mentos.Valor_COFINS2, ProcessosDocumentos.Memorando_Exportacao, ' +
        'ProcessosDocumentos.CT_Numero, ProcessosDocumentos.CT_Data, Proc' +
        'essosDocumentos.CT_Modelo, ProcessosDocumentos.CT_Serie, Process' +
        'osDocumentos.Origem_Mercadoria, ProcessosDocumentos.Banco, Proce' +
        'ssosDocumentos.Reducao_PIS, ProcessosDocumentos.Reducao_COFINS, ' +
        'ProcessosDocumentos.PIS_NFEntrada, ProcessosDocumentos.PIS_NFESa' +
        'ida, ProcessosDocumentos.COFINS_NFEntrada, ProcessosDocumentos.C' +
        'OFINS_NFESaida, ProcessosDocumentos.PIS_Majorada, ProcessosDocum' +
        'entos.COFINS_Majorada, ProcessosDocumentos.Suspensao_Impostos, P' +
        'rocessosDocumentos.Remover_Valoracao, ProcessosDocumentos.Refere' +
        'ncia_Cliente, ProcessosDocumentos.Admissao_Temporaria, Processos' +
        'Documentos.Condicao_Pagamento, ProcessosDocumentos.Data_PrevFret' +
        'e, ProcessosDocumentos.Fator_FreteValor, ProcessosDocumentos.Pre' +
        'visao_FreteTransportador, ProcessosDocumentos.Fator_SISCOMEXValo' +
        'rReal, ProcessosDocumentos.Fator_FreteValorReal, ProcessosDocume' +
        'ntos.Fator_FaturamentoValorReal, ProcessosDocumentos.Data_PrevAr' +
        'mazem, ProcessosDocumentos.Fator_ArmazemValor, ProcessosDocument' +
        'os.Fator_ArmazemValorReal, ProcessosDocumentos.Previsao_ArmazemF' +
        'ornecedor, ProcessosDocumentos.Referencia_DataEntrega, Processos' +
        'Documentos.CST_PIS, ProcessosDocumentos.CST_COFINS, ProcessosDoc' +
        'umentos.Codigo_BCCredito, ProcessosDocumentos.Apuracao_PISCOFINS' +
        ', ProcessosDocumentos.Consignatario_CNPJ, ProcessosDocumentos.Co' +
        'nsignatario_UF, ProcessosDocumentos.AFRMM, ProcessosDocumentos.L' +
        'ocal_Desembaraco, ProcessosDocumentos.Preco_Venda, ProcessosDocu' +
        'mentos.Proforma_Numero, ProcessosDocumentos.Proforma_Data, Proce' +
        'ssosDocumentos.Condicao_Frete, ProcessosDocumentos.Seguradora, P' +
        'rocessosDocumentos.Proforma_DataTaxa, ProcessosDocumentos.Data_T' +
        'axaFatura, ProcessosDocumentos.Data, ProcessosDocumentos.ROF_Num' +
        'ero, ProcessosDocumentos.ROF_Emissao, ProcessosDocumentos.ROF_Di' +
        'as, ProcessosDocumentos.Notificar, ProcessosDocumentos.URF_Despa' +
        'cho, ProcessosDocumentos.Referencia_Despachante, ProcessosDocume' +
        'ntos.Via_Transporte, ProcessosDocumentos.Rateia_FretePeso FROM P' +
        'rocessosDocumentos'
      
        'WHERE ProcessosDocumentos.Processo = :Processo AND ProcessosDocu' +
        'mentos.Tipo = :Tipo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select *'
      
        '      ,Cliente = (SELECT Nome FROM Clientes WHERE Codigo = Clien' +
        'te)'
      'from PropostaExp'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 379
    Top = 161
  end
  object tImpressao: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      
        '      ,Cliente_Nome   = (SELECT Nome FROM Clientes WHERE Codigo ' +
        '= Cliente)'
      
        '      ,Endereco       = (SELECT Rua+'#39', N'#186' '#39'+Rua_Numero+'#39' - '#39'+Bai' +
        'rro+'#39' - '#39'+RTRIM(Municipio)+'#39'('#39'+Estado+'#39')'#39'+'#39' CEP:'#39'+Cep FROM Clien' +
        'tes WHERE Codigo = Cliente)'
      
        '      ,Telefone       = (SELECT ISNULL(Telefone1,'#39#39')+'#39'/'#39'+ISNULL(' +
        'Telefone2,'#39#39') FROM Clientes WHERE Codigo = Cliente)'
      
        '      ,Email          = (SELECT ISNULL(Email, '#39#39') FROM Clientes ' +
        'WHERE Codigo = Cliente)'
      
        '      ,CNPJ           = (SELECT ISNULL(CNPJ, '#39#39') FROM Clientes W' +
        'HERE Codigo = Cliente)'
      
        '      ,IE             = (SELECT ISNULL(Inscricao_Estadual, '#39#39') F' +
        'ROM Clientes WHERE Codigo = Cliente)'
      
        '      ,MascaraIE      = (SELECT Mascara_Inscricao FROM Cybersoft' +
        '_Cadastros.dbo.Estados WHERE Codigo = (SELECT Estado FROM Client' +
        'es WHERE Codigo = Cliente))'
      
        '      ,Moeda_Simbolo1 = (SELECT Simbolo FROM Cybersoft_Cadastros' +
        '.dbo.Moedas WHERE Codigo = Moeda_Exp)'
      
        '      ,Moeda_Nome1    = (SELECT Nome FROM Cybersoft_Cadastros.db' +
        'o.Moedas WHERE Codigo = Moeda_Exp)'
      
        '      ,Moeda_Simbolo2 = (SELECT Simbolo FROM Cybersoft_Cadastros' +
        '.dbo.Moedas WHERE Codigo = Moeda_Imp)'
      
        '      ,Moeda_Nome2    = (SELECT Nome FROM Cybersoft_Cadastros.db' +
        'o.Moedas WHERE Codigo = Moeda_Imp)'
      
        '      ,Moeda_Simbolo3 = (SELECT Simbolo FROM Cybersoft_Cadastros' +
        '.dbo.Moedas WHERE Codigo = Moeda_Frete)'
      
        '      ,Moeda_Nome3    = (SELECT Nome FROM Cybersoft_Cadastros.db' +
        'o.Moedas WHERE Codigo = Moeda_Frete)'
      
        '      ,INCOTERM_Desc  = (SELECT Descricao FROM Cybersoft_Cadastr' +
        'os.dbo.Incoterms WHERE Codigo = INCOTERMS)'
      
        '      ,Via_Nome       = (SELECT Descricao FROM Cybersoft_Cadastr' +
        'os.dbo.ViaTransporte WHERE Codigo = Via_Transporte)'
      'FROM  PropostaExp'
      '--WHERE Proposta = 1')
    FetchRows = 1
    Active = True
    Left = 520
    Top = 160
  end
  object dstImpressao: TDataSource
    DataSet = tImpressao
    Left = 520
    Top = 216
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 360
    Top = 312
    object pEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 0
    end
    object pEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 28
      Position = 1
    end
    object pEmpresasppField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pEmpresasppField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pEmpresasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pEmpresasppField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object pEmpresasppField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object pEmpresasppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object pEmpresasppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object pEmpresasppField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object pEmpresasppField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object pEmpresasppField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object pEmpresasppField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object pEmpresasppField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pEmpresasppField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pEmpresasppField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object pEmpresasppField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object pEmpresasppField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pEmpresasppField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object pEmpresasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object pEmpresasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object pEmpresasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object pEmpresasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object pEmpresasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pEmpresasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pEmpresasppField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object pEmpresasppField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object pEmpresasppField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object pEmpresasppField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object pEmpresasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pEmpresasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pEmpresasppField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object pEmpresasppField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object pEmpresasppField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object pEmpresasppField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object pEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object pEmpresasppField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object pEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object pEmpresasppField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object pEmpresasppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 39
    end
    object pEmpresasppField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object pEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object pEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object pEmpresasppField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object pEmpresasppField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object pEmpresasppField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object pEmpresasppField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object pEmpresasppField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object pEmpresasppField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object pEmpresasppField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object pEmpresasppField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object pEmpresasppField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object pEmpresasppField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object pEmpresasppField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object pEmpresasppField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object pEmpresasppField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresasppField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object pEmpresasppField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 58
    end
    object pEmpresasppField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 59
    end
    object pEmpresasppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object pEmpresasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pEmpresasppField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 62
    end
    object pEmpresasppField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object pEmpresasppField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object pEmpresasppField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object pEmpresasppField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object pEmpresasppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pEmpresasppField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 68
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object pEmpresasppField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 70
    end
    object pEmpresasppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object pEmpresasppField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object pEmpresasppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pEmpresasppField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object pEmpresasppField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object pEmpresasppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pEmpresasppField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object pEmpresasppField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object pEmpresasppField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 79
    end
    object pEmpresasppField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object pEmpresasppField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 81
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pEmpresasppField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 84
    end
    object pEmpresasppField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object pEmpresasppField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object pEmpresasppField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object pEmpresasppField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object pEmpresasppField90: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 89
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object pEmpresasppField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 97
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 98
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 99
    end
    object pEmpresasppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object pEmpresasppField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object pEmpresasppField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresasppField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pEmpresasppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object pEmpresasppField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 107
    end
    object pEmpresasppField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 108
    end
    object pEmpresasppField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 109
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 110
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 112
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 115
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresasppField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 118
    end
    object pEmpresasppField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresasppField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object pEmpresasppField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 121
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 123
    end
    object pEmpresasppField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 124
    end
    object pEmpresasppField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object pEmpresasppField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresasppField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresasppField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 128
    end
    object pEmpresasppField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object pEmpresasppField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresasppField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object pEmpresasppField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresasppField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 133
    end
    object pEmpresasppField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresasppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object pEmpresasppField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object pEmpresasppField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 137
    end
    object pEmpresasppField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 138
    end
    object pEmpresasppField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object pEmpresasppField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object pEmpresasppField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object pEmpresasppField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object pEmpresasppField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresasppField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object pEmpresasppField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object pEmpresasppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object pEmpresasppField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresasppField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object pEmpresasppField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 149
    end
    object pEmpresasppField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 150
    end
    object pEmpresasppField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 151
    end
    object pEmpresasppField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 152
    end
    object pEmpresasppField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 153
    end
    object pEmpresasppField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 154
    end
    object pEmpresasppField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 155
    end
    object pEmpresasppField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object pEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 157
    end
    object pEmpresasppField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 158
    end
    object pEmpresasppField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object pEmpresasppField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 160
    end
    object pEmpresasppField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 161
    end
    object pEmpresasppField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object pEmpresasppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresasppField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 164
    end
    object pEmpresasppField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object pEmpresasppField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object pEmpresasppField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresasppField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 168
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object pEmpresasppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresasppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresasppField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 173
    end
    object pEmpresasppField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object pEmpresasppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresasppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresasppField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresasppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresasppField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresasppField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresasppField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresasppField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresasppField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object pEmpresasppField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 184
    end
    object pEmpresasppField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 185
    end
    object pEmpresasppField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresasppField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresasppField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresasppField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 189
    end
    object pEmpresasppField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 190
    end
    object pEmpresasppField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 191
    end
    object pEmpresasppField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 192
    end
    object pEmpresasppField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object pEmpresasppField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresasppField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 195
    end
    object pEmpresasppField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 196
    end
    object pEmpresasppField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresasppField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object pEmpresasppField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 199
    end
    object pEmpresasppField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 200
    end
    object pEmpresasppField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 201
    end
    object pEmpresasppField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 202
    end
    object pEmpresasppField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 203
    end
    object pEmpresasppField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 204
    end
    object pEmpresasppField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 205
    end
    object pEmpresasppField207: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresasppField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresasppField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 208
    end
    object pEmpresasppField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 209
    end
    object pEmpresasppField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 210
    end
  end
  object pProposta: TppDBPipeline
    DataSource = dstImpressao
    UserName = 'pImpressao'
    Left = 416
    Top = 312
    object pPropostappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Proposta'
      FieldName = 'Proposta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pPropostappField2: TppField
      FieldAlias = 'Validade'
      FieldName = 'Validade'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pPropostappField3: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object pPropostappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object pPropostappField5: TppField
      FieldAlias = 'INCOTERMS'
      FieldName = 'INCOTERMS'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object pPropostappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Via_Transporte'
      FieldName = 'Via_Transporte'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object pPropostappField7: TppField
      FieldAlias = 'Local_Embarque'
      FieldName = 'Local_Embarque'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object pPropostappField8: TppField
      FieldAlias = 'Local_Entrega'
      FieldName = 'Local_Entrega'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
    object pPropostappField9: TppField
      FieldAlias = 'Transbordo'
      FieldName = 'Transbordo'
      FieldLength = 60
      DisplayWidth = 60
      Position = 8
    end
    object pPropostappField10: TppField
      FieldAlias = 'Transit_Time'
      FieldName = 'Transit_Time'
      FieldLength = 30
      DisplayWidth = 30
      Position = 9
    end
    object pPropostappField11: TppField
      FieldAlias = 'Frequencia'
      FieldName = 'Frequencia'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object pPropostappField12: TppField
      FieldAlias = 'Armador'
      FieldName = 'Armador'
      FieldLength = 60
      DisplayWidth = 60
      Position = 11
    end
    object pPropostappField13: TppField
      FieldAlias = 'Container'
      FieldName = 'Container'
      FieldLength = 60
      DisplayWidth = 60
      Position = 12
    end
    object pPropostappField14: TppField
      FieldAlias = 'Unidade'
      FieldName = 'Unidade'
      FieldLength = 3
      DisplayWidth = 3
      Position = 13
    end
    object pPropostappField15: TppField
      FieldAlias = 'Tipo_Embalagem'
      FieldName = 'Tipo_Embalagem'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object pPropostappField16: TppField
      FieldAlias = 'Volume'
      FieldName = 'Volume'
      FieldLength = 60
      DisplayWidth = 60
      Position = 15
    end
    object pPropostappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volume_Qtde'
      FieldName = 'Volume_Qtde'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object pPropostappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pallets'
      FieldName = 'Pallets'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object pPropostappField19: TppField
      FieldAlias = 'FOB_Unitario'
      FieldName = 'FOB_Unitario'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 18
    end
    object pPropostappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object pPropostappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Liquido'
      FieldName = 'Peso_Liquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object pPropostappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Bruto'
      FieldName = 'Peso_Bruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object pPropostappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_Recebida'
      FieldName = 'Comissao_Recebida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object pPropostappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_Paga'
      FieldName = 'Comissao_Paga'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object pPropostappField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Unidade'
      FieldName = 'Quantidade_Unidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object pPropostappField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator'
      FieldName = 'Fator'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object pPropostappField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Exp'
      FieldName = 'Moeda_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object pPropostappField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cotacao_Exp'
      FieldName = 'Cotacao_Exp'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object pPropostappField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Imp'
      FieldName = 'Moeda_Imp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object pPropostappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cotacao_Imp'
      FieldName = 'Cotacao_Imp'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object pPropostappField31: TppField
      FieldAlias = 'Frete_Inter'
      FieldName = 'Frete_Inter'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 30
    end
    object pPropostappField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Frete'
      FieldName = 'Moeda_Frete'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object pPropostappField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cotacao_Frete'
      FieldName = 'Cotacao_Frete'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object pPropostappField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'IRPJ'
      FieldName = 'IRPJ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object pPropostappField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'CSLL'
      FieldName = 'CSLL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 34
    end
    object pPropostappField36: TppField
      FieldAlias = 'Base_Comissao'
      FieldName = 'Base_Comissao'
      FieldLength = 1
      DisplayWidth = 1
      Position = 35
    end
    object pPropostappField37: TppField
      FieldAlias = 'Pais_Destino'
      FieldName = 'Pais_Destino'
      FieldLength = 4
      DisplayWidth = 4
      Position = 36
    end
    object pPropostappField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'Condicao_Cambio'
      FieldName = 'Condicao_Cambio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object pPropostappField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'Produto_Codigo'
      FieldName = 'Produto_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object pPropostappField40: TppField
      FieldAlias = 'Condicao_Frete'
      FieldName = 'Condicao_Frete'
      FieldLength = 60
      DisplayWidth = 60
      Position = 39
    end
    object pPropostappField41: TppField
      FieldAlias = 'Cliente_Nome'
      FieldName = 'Cliente_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 40
    end
    object pPropostappField42: TppField
      FieldAlias = 'Endereco'
      FieldName = 'Endereco'
      FieldLength = 178
      DisplayWidth = 178
      Position = 41
    end
    object pPropostappField43: TppField
      FieldAlias = 'Telefone'
      FieldName = 'Telefone'
      FieldLength = 31
      DisplayWidth = 31
      Position = 42
    end
    object pPropostappField44: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 43
    end
    object pPropostappField45: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 44
    end
    object pPropostappField46: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 18
      DisplayWidth = 18
      Position = 45
    end
    object pPropostappField47: TppField
      FieldAlias = 'MascaraIE'
      FieldName = 'MascaraIE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 46
    end
    object pPropostappField48: TppField
      FieldAlias = 'Moeda_Simbolo1'
      FieldName = 'Moeda_Simbolo1'
      FieldLength = 10
      DisplayWidth = 10
      Position = 47
    end
    object pPropostappField49: TppField
      FieldAlias = 'Moeda_Nome1'
      FieldName = 'Moeda_Nome1'
      FieldLength = 30
      DisplayWidth = 30
      Position = 48
    end
    object pPropostappField50: TppField
      FieldAlias = 'Moeda_Simbolo2'
      FieldName = 'Moeda_Simbolo2'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object pPropostappField51: TppField
      FieldAlias = 'Moeda_Nome2'
      FieldName = 'Moeda_Nome2'
      FieldLength = 30
      DisplayWidth = 30
      Position = 50
    end
    object pPropostappField52: TppField
      FieldAlias = 'Moeda_Simbolo3'
      FieldName = 'Moeda_Simbolo3'
      FieldLength = 10
      DisplayWidth = 10
      Position = 51
    end
    object pPropostappField53: TppField
      FieldAlias = 'Moeda_Nome3'
      FieldName = 'Moeda_Nome3'
      FieldLength = 30
      DisplayWidth = 30
      Position = 52
    end
    object pPropostappField54: TppField
      FieldAlias = 'INCOTERM_Desc'
      FieldName = 'INCOTERM_Desc'
      FieldLength = 70
      DisplayWidth = 70
      Position = 53
    end
    object pPropostappField55: TppField
      FieldAlias = 'Via_Nome'
      FieldName = 'Via_Nome'
      FieldLength = 30
      DisplayWidth = 30
      Position = 54
    end
  end
  object rProposta: TppReport
    AutoStop = False
    DataPipeline = pProposta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'PROPOSTA DE EXPORTA'#199#195'O'
    PrinterSetup.PaperName = 'Carta 216 x 279 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 4572
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\Proposta_Exporta' +
      'cao.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 480
    Top = 312
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pProposta'
    object ppHeaderBand1: TppHeaderBand
      BeforeGenerate = ppHeaderBand1BeforeGenerate
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 116152
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Email'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresas'
        mmHeight = 4810
        mmLeft = 1321
        mmTop = 19027
        mmWidth = 200470
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Site'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresas'
        mmHeight = 4430
        mmLeft = 1321
        mmTop = 24049
        mmWidth = 200470
        BandType = 0
        LayerName = Foreground
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'iLogo'
        AlignHorizontal = ahLeft
        AlignVertical = avTop
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12842
        mmLeft = 88371
        mmTop = 130
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 1058
        mmLeft = 333
        mmTop = 42447
        mmWidth = 201521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3967
        mmLeft = 1059
        mmTop = 44846
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Cliente_Nome'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3967
        mmLeft = 28136
        mmTop = 44846
        mmWidth = 75495
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 1059
        mmTop = 48748
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Endereco'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 28136
        mmTop = 48914
        mmWidth = 172583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 1059
        mmTop = 52824
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Telefone'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 28136
        mmTop = 52990
        mmWidth = 58032
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'E-Mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 87665
        mmTop = 52990
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Email'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 96661
        mmTop = 52990
        mmWidth = 104229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3967
        mmLeft = 105569
        mmTop = 44846
        mmWidth = 7761
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Inscri'#231#227'o Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 142685
        mmTop = 44867
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground
      end
      object cIE: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'cIE'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'IE'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3967
        mmLeft = 165932
        mmTop = 44846
        mmWidth = 34396
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 1058
        mmLeft = 333
        mmTop = 58794
        mmWidth = 201521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Condi'#231#227'o de Pgto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 1059
        mmTop = 77650
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Condicao_Pgto'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 28136
        mmTop = 77840
        mmWidth = 73261
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Tipo de Embalagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 1059
        mmTop = 96609
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Tipo_Embalagem'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 28136
        mmTop = 96609
        mmWidth = 57150
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 1059
        mmTop = 104564
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Quantidade'
        DataPipeline = pProposta
        DisplayFormat = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 28136
        mmTop = 104564
        mmWidth = 20033
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Local de Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 101600
        mmTop = 61183
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText102'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Local_Entrega'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 123473
        mmTop = 61183
        mmWidth = 77484
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Volumes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 1059
        mmTop = 100706
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Volume_Qtde'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 28136
        mmTop = 100706
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Peso L'#237'quido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 53327
        mmTop = 100706
        mmWidth = 17353
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Peso_Liquido'
        DataPipeline = pProposta
        DisplayFormat = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 70976
        mmTop = 100706
        mmWidth = 21682
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Peso Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 96792
        mmTop = 100706
        mmWidth = 21936
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Peso_Bruto'
        DataPipeline = pProposta
        DisplayFormat = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 119017
        mmTop = 100706
        mmWidth = 23772
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pProposta
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3967
        mmLeft = 113870
        mmTop = 44846
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground
      end
      object rDespesas: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'rDespesas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pDespesas'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 112182
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pDespesas
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'PROPOSTA DE EXPORTA'#199#195'O'
          PrinterSetup.PaperName = 'Carta 216 x 279 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 4572
          PrinterSetup.mmPaperHeight = 279400
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pDespesas'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppLabel61: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label61'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'DESPESAS'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3440
              mmLeft = 0
              mmTop = 0
              mmWidth = 128053
              BandType = 1
              LayerName = Foreground1
            end
            object lTituloValor: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'lTituloValor'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'C'#194'MBIO'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3440
              mmLeft = 168768
              mmTop = 0
              mmWidth = 34585
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label16'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'VALOR'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3440
              mmLeft = 128514
              mmTop = 0
              mmWidth = 39881
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText56: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText56'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Descricao'
              DataPipeline = pDespesas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pDespesas'
              mmHeight = 3260
              mmLeft = 0
              mmTop = 0
              mmWidth = 127706
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText59: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText59'
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Cambio'
              DataPipeline = pDespesas
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pDespesas'
              mmHeight = 3175
              mmLeft = 170663
              mmTop = 0
              mmWidth = 31938
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line2'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3059
              mmLeft = 128241
              mmTop = 88
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line8'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3059
              mmLeft = 168564
              mmTop = -87
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText18'
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Simbolo'
              DataPipeline = pDespesas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pDespesas'
              mmHeight = 3175
              mmLeft = 130024
              mmTop = 0
              mmWidth = 7369
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText36: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText36'
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor'
              DataPipeline = pDespesas
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pDespesas'
              mmHeight = 3175
              mmLeft = 137584
              mmTop = 0
              mmWidth = 29672
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'Moeda'
            DataPipeline = pDespesas
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'pDespesas'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              BeforePrint = ppGroupFooterBand1BeforePrint
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5027
              mmPrintPosition = 0
              object ppLine18: TppLine
                DesignLayer = ppDesignLayer2
                UserName = 'Line18'
                Border.Style = psDot
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Pen.Color = clSilver
                Pen.Style = psDot
                Pen.Width = 0
                mmHeight = 1058
                mmLeft = 0
                mmTop = -20
                mmWidth = 202596
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBCalc1: TppDBCalc
                DesignLayer = ppDesignLayer2
                UserName = 'DBCalc1'
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                Color = clGradientInactiveCaption
                DataField = 'Valor'
                DataPipeline = pDespesas
                DisplayFormat = '#,##0.00'
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                VerticalAlignment = avCenter
                DataPipelineName = 'pDespesas'
                mmHeight = 3853
                mmLeft = 129646
                mmTop = 551
                mmWidth = 37612
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLine21: TppLine
                DesignLayer = ppDesignLayer2
                UserName = 'Line21'
                Border.mmPadding = 0
                Pen.Style = psDot
                Pen.Width = 0
                Position = lpLeft
                mmHeight = 4768
                mmLeft = 168540
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLine22: TppLine
                DesignLayer = ppDesignLayer2
                UserName = 'Line22'
                Border.mmPadding = 0
                Pen.Style = psDot
                Pen.Width = 0
                Position = lpLeft
                mmHeight = 4768
                mmLeft = 128249
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object lSomaDespesas: TppDBCalc
                DesignLayer = ppDesignLayer2
                UserName = 'lSomaDespesas'
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                Color = clGradientInactiveCaption
                DataField = 'Cambio'
                DataPipeline = pDespesas
                DisplayFormat = '#,##0.00'
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                VerticalAlignment = avCenter
                DataPipelineName = 'pDespesas'
                mmHeight = 3853
                mmLeft = 170093
                mmTop = 551
                mmWidth = 32508
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBText37: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText37'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Color = clGradientInactiveCaption
                DataField = 'Simbolo'
                DataPipeline = pDespesas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                VerticalAlignment = avCenter
                DataPipelineName = 'pDespesas'
                mmHeight = 3745
                mmLeft = 101071
                mmTop = 550
                mmWidth = 26044
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLabel26: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label26'
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'TOTAL'
                Color = clGradientInactiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3820
                mmLeft = 86557
                mmTop = 550
                mmWidth = 14554
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLine19: TppLine
                DesignLayer = ppDesignLayer2
                UserName = 'Line19'
                Border.mmPadding = 0
                Pen.Style = psDot
                Pen.Width = 0
                Position = lpLeft
                mmHeight = 4383
                mmLeft = 85461
                mmTop = 0
                mmWidth = 1852
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppLine24: TppLine
                DesignLayer = ppDesignLayer2
                UserName = 'Line24'
                Border.Style = psDot
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Pen.Color = clSilver
                Pen.Style = psDot
                Pen.Width = 0
                mmHeight = 1058
                mmLeft = 0
                mmTop = 4647
                mmWidth = 202596
                BandType = 5
                GroupNo = 0
                LayerName = Foreground1
              end
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object lNumero: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lNumero'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PROPOSTA:   #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 154579
        mmTop = 32719
        mmWidth = 25967
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Porto de Embarque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 1059
        mmTop = 61183
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Local_Embarque'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 28136
        mmTop = 61183
        mmWidth = 71967
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'INCOTERMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 1059
        mmTop = 82097
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'INCOTERM_Desc'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 36686
        mmTop = 81907
        mmWidth = 64727
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 1058
        mmLeft = 499
        mmTop = 90449
        mmWidth = 201521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Transbordo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 1059
        mmTop = 65439
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Transbordo'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 28136
        mmTop = 65439
        mmWidth = 55033
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Armador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 1059
        mmTop = 69646
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText201'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Armador'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 28136
        mmTop = 69646
        mmWidth = 54807
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Transit Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 84931
        mmTop = 65439
        mmWidth = 15192
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Transit_Time'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 100645
        mmTop = 65439
        mmWidth = 35983
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Frequ'#234'ncia Navio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 140494
        mmTop = 65439
        mmWidth = 22090
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Frequencia'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 163181
        mmTop = 65439
        mmWidth = 37719
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 1058
        mmLeft = 333
        mmTop = 75311
        mmWidth = 201521
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresas'
        mmHeight = 5292
        mmLeft = 1321
        mmTop = 13614
        mmWidth = 200470
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = ' CLIENTE '
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 0
        mmTop = 40874
        mmWidth = 19845
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = ' TRANSPORTE '
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 0
        mmTop = 57308
        mmWidth = 19845
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = ' CONDI'#199#213'ES '
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 0
        mmTop = 73742
        mmWidth = 19845
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = ' MERCADORIA '
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 0
        mmTop = 88892
        mmWidth = 19845
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 1059
        mmTop = 92611
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText103'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'INCOTERMS'
        DataPipeline = pProposta
        DisplayFormat = '(AAA) -;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 28136
        mmTop = 82097
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'cIE1'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.mmPadding = 0
        DataField = 'Proposta'
        DataPipeline = pProposta
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 5027
        mmLeft = 180411
        mmTop = 32719
        mmWidth = 21497
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Produto'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 28136
        mmTop = 92611
        mmWidth = 172628
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Container'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 142611
        mmTop = 96609
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText27'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Container'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 155016
        mmTop = 96609
        mmWidth = 45757
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Quantidade Embalagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 86357
        mmTop = 96609
        mmWidth = 28537
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Quantidade_Unidade'
        DataPipeline = pProposta
        DisplayFormat = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 115225
        mmTop = 96609
        mmWidth = 23772
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lNumero1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VALIDADE :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 154782
        mmTop = 37336
        mmWidth = 22655
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText29'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.mmPadding = 0
        DataField = 'Validade'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 5217
        mmLeft = 177600
        mmTop = 37336
        mmWidth = 24356
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#226'mbio Exporta'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 102659
        mmTop = 77650
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText104'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Cotacao_Exp'
        DataPipeline = pProposta
        DisplayFormat = ',##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 126471
        mmTop = 77650
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Moeda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 144649
        mmTop = 77650
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText31'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Moeda_Nome1'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 154948
        mmTop = 77650
        mmWidth = 45693
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#226'mbio Importa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 102659
        mmTop = 81717
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText32'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Cotacao_Imp'
        DataPipeline = pProposta
        DisplayFormat = ',##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 126471
        mmTop = 81717
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Moeda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 144649
        mmTop = 81717
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText33'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Moeda_Nome2'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 154948
        mmTop = 81717
        mmWidth = 45693
        BandType = 0
        LayerName = Foreground
      end
      object lValUnitario: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lValUnitario'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 53364
        mmTop = 104564
        mmWidth = 17353
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'FOB_Unitario'
        DataPipeline = pProposta
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 70976
        mmTop = 104564
        mmWidth = 21682
        BandType = 0
        LayerName = Foreground
      end
      object lTotalME: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalME'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Valor Total ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 96792
        mmTop = 104564
        mmWidth = 21936
        BandType = 0
        LayerName = Foreground
      end
      object lTotalFOBME: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalFOBME'
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 119017
        mmTop = 104564
        mmWidth = 23772
        BandType = 0
        LayerName = Foreground
      end
      object lTotalFOBReal: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalFOB1'
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 169645
        mmTop = 104564
        mmWidth = 30972
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label40'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Valor Total Real'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 149490
        mmTop = 104564
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 1058
        mmLeft = 265
        mmTop = 31885
        mmWidth = 201521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#226'mbio Frete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 102659
        mmTop = 85424
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText38'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Cotacao_Frete'
        DataPipeline = pProposta
        DisplayFormat = ',##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 126471
        mmTop = 85424
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Moeda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 144667
        mmTop = 85424
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText39'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Moeda_Simbolo3'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 154986
        mmTop = 85424
        mmWidth = 45693
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label44'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Frete Inter.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 84931
        mmTop = 69646
        mmWidth = 15192
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText41'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Frete_Inter'
        DataPipeline = pProposta
        DisplayFormat = ',##.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 100542
        mmTop = 69646
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 1058
        mmLeft = -41
        mmTop = 110394
        mmWidth = 203421
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label47'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Condi'#231#227'o Frete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 126027
        mmTop = 69646
        mmWidth = 17818
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText43'
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Condicao_Frete'
        DataPipeline = pProposta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 144638
        mmTop = 69646
        mmWidth = 55917
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Visible = False
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label63'
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 264
        mmWidth = 45509
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 71145
        mmTop = 264
        mmWidth = 49893
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121152
        mmTop = 265
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 48154
        mmTop = -233
        mmWidth = 5821
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 188648
        mmTop = 264
        mmWidth = 12965
        BandType = 8
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 0
        mmTop = -332
        mmWidth = 201521
        BandType = 8
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 182179
        mmTop = -233
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      BeforeGenerate = ppSummaryBand2BeforeGenerate
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 41804
      mmPrintPosition = 0
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label72'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 0.100000001490116100
        Border.mmPadding = 0
        Caption = 'TOTAL DAS DESPESAS'
        Color = clGradientInactiveCaption
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 4143
        mmLeft = 59267
        mmTop = 6085
        mmWidth = 67846
        BandType = 7
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 32695
        mmLeft = 128588
        mmTop = 5027
        mmWidth = 1323
        BandType = 7
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 37229
        mmLeft = 168805
        mmTop = 4575
        mmWidth = 1323
        BandType = 7
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.Style = psDot
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Style = psDot
        Pen.Width = 0
        mmHeight = 298
        mmLeft = 59267
        mmTop = 10319
        mmWidth = 143442
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 0.100000001490116100
        Border.mmPadding = 0
        Caption = 'TOTAL DOS PRODUTOS'
        Color = clGradientInactiveCaption
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4143
        mmLeft = 59267
        mmTop = 15875
        mmWidth = 67846
        BandType = 7
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.Style = psDot
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Style = psDot
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 59267
        mmTop = 19844
        mmWidth = 143442
        BandType = 7
        LayerName = Foreground
      end
      object lTotalProdDespReal: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalProdDespReal'
        AutoSize = False
        Border.Style = psDot
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 19844
        mmWidth = 31938
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label38'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 0.100000001490116100
        Border.mmPadding = 0
        Caption = 'COMISS'#195'O TRADE'
        Color = clGradientInactiveCaption
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 4143
        mmLeft = 59267
        mmTop = 24077
        mmWidth = 47605
        BandType = 7
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.Style = psDot
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Style = psDot
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 59267
        mmTop = 28840
        mmWidth = 143442
        BandType = 7
        LayerName = Foreground
      end
      object lTradeReal: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTradeReal'
        AutoSize = False
        Border.Style = psDot
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 24342
        mmWidth = 31938
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText34'
        Border.mmPadding = 0
        DataField = 'Comissao_Recebida'
        DataPipeline = pProposta
        DisplayFormat = ',##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        DataPipelineName = 'pProposta'
        mmHeight = 4498
        mmLeft = 106892
        mmTop = 24077
        mmWidth = 16251
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label41'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 0.100000001490116100
        Border.mmPadding = 0
        Caption = 'TOTAL (PRODUTOS+DESPESAS+FRETE INTERNACIONAL)'
        Color = clGradientInactiveCaption
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 4143
        mmLeft = 59267
        mmTop = 19844
        mmWidth = 67846
        BandType = 7
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line202'
        Border.Style = psDot
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Style = psDot
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 59267
        mmTop = 24077
        mmWidth = 143442
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label42'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 0.100000001490116100
        Border.mmPadding = 0
        Caption = 'COMISS'#195'O'
        Color = clGradientInactiveCaption
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 4333
        mmLeft = 59267
        mmTop = 28575
        mmWidth = 47606
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'Comissao_Paga'
        DataPipeline = pProposta
        DisplayFormat = ',##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        DataPipelineName = 'pProposta'
        mmHeight = 4498
        mmLeft = 106892
        mmTop = 28575
        mmWidth = 16249
        BandType = 7
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.Style = psDot
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 59267
        mmTop = 37835
        mmWidth = 143442
        BandType = 7
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Style = psDot
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 488
        mmLeft = 59267
        mmTop = 4233
        mmWidth = 143442
        BandType = 7
        LayerName = Foreground
      end
      object lTotalProdReal: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalProdReal'
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 15875
        mmWidth = 31938
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label43'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'TOTAIS (ME)'
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 129382
        mmTop = 2381
        mmWidth = 37798
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label39'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'TOTAIS (REAL)'
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 170392
        mmTop = 2381
        mmWidth = 32313
        BandType = 7
        LayerName = Foreground
      end
      object lComissaoPagaReal: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lComissaoPagaReal'
        AutoSize = False
        Border.Style = psDot
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 28575
        mmWidth = 31938
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 0.100000001490116100
        Border.mmPadding = 0
        Caption = 'FRETE INTERNACIONAL'
        Color = clGradientInactiveCaption
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 4143
        mmLeft = 59267
        mmTop = 10848
        mmWidth = 67846
        BandType = 7
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.Style = psDot
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Style = psDot
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 59267
        mmTop = 15346
        mmWidth = 143442
        BandType = 7
        LayerName = Foreground
      end
      object lFreteIntReal: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalProdReal1'
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 4
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 11113
        mmWidth = 31938
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText40'
        HyperlinkEnabled = False
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.mmPadding = 0
        DataField = 'Frete_Inter'
        DataPipeline = pProposta
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        DataPipelineName = 'pProposta'
        mmHeight = 3969
        mmLeft = 137584
        mmTop = 11377
        mmWidth = 29672
        BandType = 7
        LayerName = Foreground
      end
      object lTotalImpostos: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalProdDespReal1'
        AutoSize = False
        Border.Style = psDot
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 5
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3970
        mmLeft = 170657
        mmTop = 33338
        mmWidth = 31938
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label45'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 0.100000001490116100
        Border.mmPadding = 0
        Caption = 'TOTAL IMPOSTOS'
        Color = clGradientInactiveCaption
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3970
        mmLeft = 59267
        mmTop = 33338
        mmWidth = 47420
        BandType = 7
        LayerName = Foreground
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.Style = psDot
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Color = clSilver
        Pen.Style = psDot
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 59267
        mmTop = 33338
        mmWidth = 143442
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText42'
        Border.mmPadding = 0
        DataField = 'Fator'
        DataPipeline = pProposta
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        DataPipelineName = 'pProposta'
        mmHeight = 3970
        mmLeft = 106627
        mmTop = 33338
        mmWidth = 16710
        BandType = 7
        LayerName = Foreground
      end
      object lTotalGeral: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalGeral'
        AutoSize = False
        Border.Style = psDot
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 6
        Color = clGradientInactiveCaption
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 170657
        mmTop = 37833
        mmWidth = 31938
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label46'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Weight = 0.100000001490116100
        Border.mmPadding = 0
        Caption = 'TOTAL GERAL'
        Color = clGradientInactiveCaption
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3970
        mmLeft = 59002
        mmTop = 37833
        mmWidth = 108289
        BandType = 7
        LayerName = Foreground
      end
      object lTotalDespReal: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalDespReal'
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Style = psDot
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 7
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 6309
        mmWidth = 32015
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object tDespesas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      
        '      ,Moeda_Nome = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Mo' +
        'edas WHERE Codigo = Moeda)      '
      '      ,Cambio = Valor * Cotacao'
      'FROM   PropostaExpDesp'
      'ORDER BY Moeda, Descricao')
    FetchRows = 1
    Active = True
    Left = 448
    Top = 160
  end
  object dstDespesas: TDataSource
    DataSet = tDespesas
    Left = 448
    Top = 216
  end
  object pDespesas: TppDBPipeline
    DataSource = dstDespesas
    UserName = 'pDespesas'
    Left = 296
    Top = 312
    object pDespesasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Proposta'
      FieldName = 'Proposta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pDespesasppField2: TppField
      FieldAlias = 'Classificacao'
      FieldName = 'Classificacao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object pDespesasppField3: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object pDespesasppField4: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object pDespesasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Registro'
      FieldName = 'Registro'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pDespesasppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda'
      FieldName = 'Moeda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object pDespesasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cotacao'
      FieldName = 'Cotacao'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pDespesasppField8: TppField
      FieldAlias = 'Simbolo'
      FieldName = 'Simbolo'
      FieldLength = 5
      DisplayWidth = 5
      Position = 7
    end
    object pDespesasppField9: TppField
      FieldAlias = 'Moeda_Nome'
      FieldName = 'Moeda_Nome'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object pDespesasppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cambio'
      FieldName = 'Cambio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 96
    Top = 216
  end
  object mPlan: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 96
    Top = 280
  end
end
