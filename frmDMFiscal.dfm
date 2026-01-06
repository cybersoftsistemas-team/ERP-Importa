object dmFiscal: TdmFiscal
  OldCreateOrder = False
  Height = 450
  Width = 1350
  object dsAIDF: TDataSource
    DataSet = AIDF
    Left = 25
    Top = 64
  end
  object AIDF: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO AIDF'
      
        '  (Autorizacao, Data_Autorizacao, Data_Limite, Qtde_Formularios,' +
        ' Fomulario_Inicio, Formulario_Final, Formulario_Atual, Modelo, P' +
        'edido, Grafica)'
      'VALUES'
      
        '  (:Autorizacao, :Data_Autorizacao, :Data_Limite, :Qtde_Formular' +
        'ios, :Fomulario_Inicio, :Formulario_Final, :Formulario_Atual, :M' +
        'odelo, :Pedido, :Grafica)')
    SQLDelete.Strings = (
      'DELETE FROM AIDF'
      'WHERE'
      '  Autorizacao = :Old_Autorizacao')
    SQLUpdate.Strings = (
      'UPDATE AIDF'
      'SET'
      
        '  Autorizacao = :Autorizacao, Data_Autorizacao = :Data_Autorizac' +
        'ao, Data_Limite = :Data_Limite, Qtde_Formularios = :Qtde_Formula' +
        'rios, Fomulario_Inicio = :Fomulario_Inicio, Formulario_Final = :' +
        'Formulario_Final, Formulario_Atual = :Formulario_Atual, Modelo =' +
        ' :Modelo, Pedido = :Pedido, Grafica = :Grafica'
      'WHERE'
      '  Autorizacao = :Old_Autorizacao')
    SQLRefresh.Strings = (
      
        'SELECT AIDF.Autorizacao, AIDF.Data_Autorizacao, AIDF.Data_Limite' +
        ', AIDF.Qtde_Formularios, AIDF.Fomulario_Inicio, AIDF.Formulario_' +
        'Final, AIDF.Formulario_Atual, AIDF.Modelo, AIDF.Pedido, AIDF.Gra' +
        'fica FROM AIDF'
      'WHERE AIDF.Autorizacao = :Autorizacao ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM AIDF')
    FetchRows = 1
    BeforePost = AIDFBeforePost
    Left = 25
    Top = 16
    object AIDFAutorizacao: TStringField
      FieldName = 'Autorizacao'
      Origin = 'AIDF.Autorizacao'
      FixedChar = True
      Size = 10
    end
    object AIDFData_Autorizacao: TDateTimeField
      FieldName = 'Data_Autorizacao'
      Origin = 'AIDF.Data_Autorizacao'
    end
    object AIDFData_Limite: TDateTimeField
      FieldName = 'Data_Limite'
      Origin = 'AIDF.Data_Limite'
    end
    object AIDFQtde_Formularios: TSmallintField
      FieldName = 'Qtde_Formularios'
      Origin = 'AIDF.Qtde_Formularios'
    end
    object AIDFFomulario_Inicio: TSmallintField
      FieldName = 'Fomulario_Inicio'
      Origin = 'AIDF.Fomulario_Inicio'
    end
    object AIDFFormulario_Final: TSmallintField
      FieldName = 'Formulario_Final'
      Origin = 'AIDF.Formulario_Final'
    end
    object AIDFModelo: TStringField
      FieldName = 'Modelo'
      Origin = 'AIDF.Modelo'
      FixedChar = True
      Size = 10
    end
    object AIDFPedido: TStringField
      FieldName = 'Pedido'
      Origin = 'AIDF.Pedido'
      FixedChar = True
      Size = 10
    end
    object AIDFGrafica: TStringField
      FieldName = 'Grafica'
      Origin = 'AIDF.Grafica'
      Size = 50
    end
    object AIDFFormulario_Atual: TSmallintField
      FieldName = 'Formulario_Atual'
    end
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 73
    Top = 64
  end
  object Notas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasFiscais'
      
        '  (Numero, Pedido, Saida_Entrada, Data_Emissao, Data_EntradaSaid' +
        'a, Hora_EntradaSaida, Tipo_Nota, Serie, Modelo, Processo, FUNDAP' +
        ', Lucro, Lucro_Valor, DI, Data_DI, Natureza_Codigo, Inscricao_Su' +
        'bstituto, Inf_Complementares, Cliente_Codigo, Fornecedor_Codigo,' +
        ' Estado, Transportador_Codigo, Modalidade_Frete, Volume_Quantida' +
        'de, Volume_Especie, Volume_Marca, Volume_Numero, Volume_PesoLiqu' +
        'ido, Volume_PesoBruto, Valor_PIS, Valor_COFINS, Aliquota_ICMSOpe' +
        'r, BCICMS, Valor_ICMS, Aliquota_ICMSSub, BCICMS_Substitutivo, Va' +
        'lorICMS_Substitutivo, Valor_TotalProdutos, Total_Frete, Valor_Se' +
        'guro, Valor_OutrasDespesas, BCIPI, Valor_TotalIPI, Valor_TotalNo' +
        'ta, Rateio_Despesas, Valor_TotalMVA, Valor_ICMSReducao, Valor_To' +
        'talII, Modalidade_Pgto, Desconto_Percentual, Desconto_Tipo, Tota' +
        'l_Descontos, Cancelada, Motivo_Cancelamento, Complementar, Devol' +
        'ucao, Ajuste, Nota_Referencia, Data_Referencia, NFe_cNF, Nfe_cNF' +
        'Ref, NFe_Lote, NFe_Recibo, Nfe_DataRecibo, NFe_Protocolo, NFe_Da' +
        'taProtocolo, Nfe_Denegada, Imprimir_DANFE, DPEC, Operacao_Veicul' +
        'o, Transporte_Placa, Transporte_PlacaUF, Transporte_NomeMotorist' +
        'a, Transporte_RGMotorista, Transporte_CodigoANTT, Taxa_Cambio, V' +
        'alor_IsentasICMS, Valor_OutrasICMS, Valor_IsentasIPI, Valor_Outr' +
        'asIPI, Incentivo_Fiscal, DPEC_Protocolo, DPEC_DataProtocolo, Rep' +
        'resentante, Representante_Comissao, Importacao, Data_Cancelament' +
        'o, Protocolo_Cancelamento, Calcula_Volumes, Valor_BCMVA, Destina' +
        'tario_CNPJ_CPF, Destinatario_Nome, Destinatario_Rua, Destinatari' +
        'o_RuaNumero, Destinatario_Complemento, Destinatario_Bairro, Dest' +
        'inatario_Municipio, Destinatario_Estado, Destinatario_CEP, Desti' +
        'natario_Pais, Destinatario_Telefone1, Destinatario_IE, Destinata' +
        'rio_Juridica, Valor_DUMPING, Pedido_Nota, Reducao_ICMSOper, Apur' +
        'acao_PISCOFINS, Inf_Complementares2, BCICMS_Apuracao, Valor_ICMS' +
        'Apuracao, Media_BCR, Valor_PIS2, Valor_COFINS2, Baixa_Estoque, V' +
        'alor_DespesasOutros, Destinatario_MunicipioNome, ICMS_Destacar, ' +
        'Valor_BCPIS, Total_Impostos, Aliquota_IRPJ, Valor_IRPJ, Aliquota' +
        '_CSLL, Valor_CSLL, Comissao, Comissao_Valor, Pedido_Representant' +
        'e, Manifesto_Protocolo, Manifesto_DataProtocolo, Manifesto_Motiv' +
        'o, Manifesto_Justificativa, Natureza_Correcao, Atendente, Atende' +
        'nte_Comissao, Valor_Inventario, Indicador_Presenca, Veiculo_Rest' +
        'ricao, Ratear_Despesa, NFE_Estorno, Representante_ComissaoGer, V' +
        'endedor, Valor_BCICMSDest, Valor_ICMSDest, DIFAL_Valor, DIFAL_Va' +
        'lorOrig, DIFAL_ValorDest, FCP_ValorDest, FCP_ICMSDest, FCP_ICMSO' +
        'RIG, DIFAL_AliqInterna, Valor_BCFCPST, Valor_FCPST, Aliquota_FCP' +
        'ST, Valor_BCFCP, Aliquota_FCP, Valor_FCP, Tipo_Pagamento, Forma_' +
        'Pagamento, Valor_ICMSDesonerado, Lote, Reboque_Placa, Reboque_UF' +
        ', Reboque_ANTT, Entrega_Retirada, Valor_CIF, CTE, Tipo_Processo,' +
        ' Valor_AFRMM, Indicador_Intermediario, Descricao_Forma, Intermed' +
        'iador, Envio_Armazem, Cancelada_ForaPrazo, Valor_BCDIFAL, Valor_' +
        'ICMSDif, Valor_ICMSMono, Valor_ICMSMonoRet, Valor_BCICMSMono, Va' +
        'lor_BCICMSMonoRet, Transporte_CPFMotorista, Transporte_Lacre, Re' +
        'boque_Lacre, Armazem, Armazem_Nome, Armazem_CNPJ, Armazem_IE, Ar' +
        'mazem_Endereco, Valor_BCII, Remessa, Valor_PISST, Valor_COFINSST' +
        ', Valor_BCICMSPresumido, Valor_ICMSPresumido, CCe, Exonerada, In' +
        'centivo_Codigo, Aliquota_ICMSPresumido, Valor_BCDIFALST, DIFAL_V' +
        'alorST, Valor_BCPISST, Valor_BCCOFINSST, Valor_IPIDevol, Valor_B' +
        'CIBS, Valor_IBS, Valor_BCCBS, Valor_CBS, Valor_BCIS, Valor_IS)'
      'VALUES'
      
        '  (:Numero, :Pedido, :Saida_Entrada, :Data_Emissao, :Data_Entrad' +
        'aSaida, :Hora_EntradaSaida, :Tipo_Nota, :Serie, :Modelo, :Proces' +
        'so, :FUNDAP, :Lucro, :Lucro_Valor, :DI, :Data_DI, :Natureza_Codi' +
        'go, :Inscricao_Substituto, :Inf_Complementares, :Cliente_Codigo,' +
        ' :Fornecedor_Codigo, :Estado, :Transportador_Codigo, :Modalidade' +
        '_Frete, :Volume_Quantidade, :Volume_Especie, :Volume_Marca, :Vol' +
        'ume_Numero, :Volume_PesoLiquido, :Volume_PesoBruto, :Valor_PIS, ' +
        ':Valor_COFINS, :Aliquota_ICMSOper, :BCICMS, :Valor_ICMS, :Aliquo' +
        'ta_ICMSSub, :BCICMS_Substitutivo, :ValorICMS_Substitutivo, :Valo' +
        'r_TotalProdutos, :Total_Frete, :Valor_Seguro, :Valor_OutrasDespe' +
        'sas, :BCIPI, :Valor_TotalIPI, :Valor_TotalNota, :Rateio_Despesas' +
        ', :Valor_TotalMVA, :Valor_ICMSReducao, :Valor_TotalII, :Modalida' +
        'de_Pgto, :Desconto_Percentual, :Desconto_Tipo, :Total_Descontos,' +
        ' :Cancelada, :Motivo_Cancelamento, :Complementar, :Devolucao, :A' +
        'juste, :Nota_Referencia, :Data_Referencia, :NFe_cNF, :Nfe_cNFRef' +
        ', :NFe_Lote, :NFe_Recibo, :Nfe_DataRecibo, :NFe_Protocolo, :NFe_' +
        'DataProtocolo, :Nfe_Denegada, :Imprimir_DANFE, :DPEC, :Operacao_' +
        'Veiculo, :Transporte_Placa, :Transporte_PlacaUF, :Transporte_Nom' +
        'eMotorista, :Transporte_RGMotorista, :Transporte_CodigoANTT, :Ta' +
        'xa_Cambio, :Valor_IsentasICMS, :Valor_OutrasICMS, :Valor_Isentas' +
        'IPI, :Valor_OutrasIPI, :Incentivo_Fiscal, :DPEC_Protocolo, :DPEC' +
        '_DataProtocolo, :Representante, :Representante_Comissao, :Import' +
        'acao, :Data_Cancelamento, :Protocolo_Cancelamento, :Calcula_Volu' +
        'mes, :Valor_BCMVA, :Destinatario_CNPJ_CPF, :Destinatario_Nome, :' +
        'Destinatario_Rua, :Destinatario_RuaNumero, :Destinatario_Complem' +
        'ento, :Destinatario_Bairro, :Destinatario_Municipio, :Destinatar' +
        'io_Estado, :Destinatario_CEP, :Destinatario_Pais, :Destinatario_' +
        'Telefone1, :Destinatario_IE, :Destinatario_Juridica, :Valor_DUMP' +
        'ING, :Pedido_Nota, :Reducao_ICMSOper, :Apuracao_PISCOFINS, :Inf_' +
        'Complementares2, :BCICMS_Apuracao, :Valor_ICMSApuracao, :Media_B' +
        'CR, :Valor_PIS2, :Valor_COFINS2, :Baixa_Estoque, :Valor_Despesas' +
        'Outros, :Destinatario_MunicipioNome, :ICMS_Destacar, :Valor_BCPI' +
        'S, :Total_Impostos, :Aliquota_IRPJ, :Valor_IRPJ, :Aliquota_CSLL,' +
        ' :Valor_CSLL, :Comissao, :Comissao_Valor, :Pedido_Representante,' +
        ' :Manifesto_Protocolo, :Manifesto_DataProtocolo, :Manifesto_Moti' +
        'vo, :Manifesto_Justificativa, :Natureza_Correcao, :Atendente, :A' +
        'tendente_Comissao, :Valor_Inventario, :Indicador_Presenca, :Veic' +
        'ulo_Restricao, :Ratear_Despesa, :NFE_Estorno, :Representante_Com' +
        'issaoGer, :Vendedor, :Valor_BCICMSDest, :Valor_ICMSDest, :DIFAL_' +
        'Valor, :DIFAL_ValorOrig, :DIFAL_ValorDest, :FCP_ValorDest, :FCP_' +
        'ICMSDest, :FCP_ICMSORIG, :DIFAL_AliqInterna, :Valor_BCFCPST, :Va' +
        'lor_FCPST, :Aliquota_FCPST, :Valor_BCFCP, :Aliquota_FCP, :Valor_' +
        'FCP, :Tipo_Pagamento, :Forma_Pagamento, :Valor_ICMSDesonerado, :' +
        'Lote, :Reboque_Placa, :Reboque_UF, :Reboque_ANTT, :Entrega_Retir' +
        'ada, :Valor_CIF, :CTE, :Tipo_Processo, :Valor_AFRMM, :Indicador_' +
        'Intermediario, :Descricao_Forma, :Intermediador, :Envio_Armazem,' +
        ' :Cancelada_ForaPrazo, :Valor_BCDIFAL, :Valor_ICMSDif, :Valor_IC' +
        'MSMono, :Valor_ICMSMonoRet, :Valor_BCICMSMono, :Valor_BCICMSMono' +
        'Ret, :Transporte_CPFMotorista, :Transporte_Lacre, :Reboque_Lacre' +
        ', :Armazem, :Armazem_Nome, :Armazem_CNPJ, :Armazem_IE, :Armazem_' +
        'Endereco, :Valor_BCII, :Remessa, :Valor_PISST, :Valor_COFINSST, ' +
        ':Valor_BCICMSPresumido, :Valor_ICMSPresumido, :CCe, :Exonerada, ' +
        ':Incentivo_Codigo, :Aliquota_ICMSPresumido, :Valor_BCDIFALST, :D' +
        'IFAL_ValorST, :Valor_BCPISST, :Valor_BCCOFINSST, :Valor_IPIDevol' +
        ', :Valor_BCIBS, :Valor_IBS, :Valor_BCCBS, :Valor_CBS, :Valor_BCI' +
        'S, :Valor_IS)')
    SQLDelete.Strings = (
      'DELETE FROM NotasFiscais'
      'WHERE'
      
        '  Numero = :Old_Numero AND Saida_Entrada = :Old_Saida_Entrada AN' +
        'D Data_Emissao = :Old_Data_Emissao')
    SQLUpdate.Strings = (
      'UPDATE NotasFiscais'
      'SET'
      
        '  Numero = :Numero, Pedido = :Pedido, Saida_Entrada = :Saida_Ent' +
        'rada, Data_Emissao = :Data_Emissao, Data_EntradaSaida = :Data_En' +
        'tradaSaida, Hora_EntradaSaida = :Hora_EntradaSaida, Tipo_Nota = ' +
        ':Tipo_Nota, Serie = :Serie, Modelo = :Modelo, Processo = :Proces' +
        'so, FUNDAP = :FUNDAP, Lucro = :Lucro, Lucro_Valor = :Lucro_Valor' +
        ', DI = :DI, Data_DI = :Data_DI, Natureza_Codigo = :Natureza_Codi' +
        'go, Inscricao_Substituto = :Inscricao_Substituto, Inf_Complement' +
        'ares = :Inf_Complementares, Cliente_Codigo = :Cliente_Codigo, Fo' +
        'rnecedor_Codigo = :Fornecedor_Codigo, Estado = :Estado, Transpor' +
        'tador_Codigo = :Transportador_Codigo, Modalidade_Frete = :Modali' +
        'dade_Frete, Volume_Quantidade = :Volume_Quantidade, Volume_Espec' +
        'ie = :Volume_Especie, Volume_Marca = :Volume_Marca, Volume_Numer' +
        'o = :Volume_Numero, Volume_PesoLiquido = :Volume_PesoLiquido, Vo' +
        'lume_PesoBruto = :Volume_PesoBruto, Valor_PIS = :Valor_PIS, Valo' +
        'r_COFINS = :Valor_COFINS, Aliquota_ICMSOper = :Aliquota_ICMSOper' +
        ', BCICMS = :BCICMS, Valor_ICMS = :Valor_ICMS, Aliquota_ICMSSub =' +
        ' :Aliquota_ICMSSub, BCICMS_Substitutivo = :BCICMS_Substitutivo, ' +
        'ValorICMS_Substitutivo = :ValorICMS_Substitutivo, Valor_TotalPro' +
        'dutos = :Valor_TotalProdutos, Total_Frete = :Total_Frete, Valor_' +
        'Seguro = :Valor_Seguro, Valor_OutrasDespesas = :Valor_OutrasDesp' +
        'esas, BCIPI = :BCIPI, Valor_TotalIPI = :Valor_TotalIPI, Valor_To' +
        'talNota = :Valor_TotalNota, Rateio_Despesas = :Rateio_Despesas, ' +
        'Valor_TotalMVA = :Valor_TotalMVA, Valor_ICMSReducao = :Valor_ICM' +
        'SReducao, Valor_TotalII = :Valor_TotalII, Modalidade_Pgto = :Mod' +
        'alidade_Pgto, Desconto_Percentual = :Desconto_Percentual, Descon' +
        'to_Tipo = :Desconto_Tipo, Total_Descontos = :Total_Descontos, Ca' +
        'ncelada = :Cancelada, Motivo_Cancelamento = :Motivo_Cancelamento' +
        ', Complementar = :Complementar, Devolucao = :Devolucao, Ajuste =' +
        ' :Ajuste, Nota_Referencia = :Nota_Referencia, Data_Referencia = ' +
        ':Data_Referencia, NFe_cNF = :NFe_cNF, Nfe_cNFRef = :Nfe_cNFRef, ' +
        'NFe_Lote = :NFe_Lote, NFe_Recibo = :NFe_Recibo, Nfe_DataRecibo =' +
        ' :Nfe_DataRecibo, NFe_Protocolo = :NFe_Protocolo, NFe_DataProtoc' +
        'olo = :NFe_DataProtocolo, Nfe_Denegada = :Nfe_Denegada, Imprimir' +
        '_DANFE = :Imprimir_DANFE, DPEC = :DPEC, Operacao_Veiculo = :Oper' +
        'acao_Veiculo, Transporte_Placa = :Transporte_Placa, Transporte_P' +
        'lacaUF = :Transporte_PlacaUF, Transporte_NomeMotorista = :Transp' +
        'orte_NomeMotorista, Transporte_RGMotorista = :Transporte_RGMotor' +
        'ista, Transporte_CodigoANTT = :Transporte_CodigoANTT, Taxa_Cambi' +
        'o = :Taxa_Cambio, Valor_IsentasICMS = :Valor_IsentasICMS, Valor_' +
        'OutrasICMS = :Valor_OutrasICMS, Valor_IsentasIPI = :Valor_Isenta' +
        'sIPI, Valor_OutrasIPI = :Valor_OutrasIPI, Incentivo_Fiscal = :In' +
        'centivo_Fiscal, DPEC_Protocolo = :DPEC_Protocolo, DPEC_DataProto' +
        'colo = :DPEC_DataProtocolo, Representante = :Representante, Repr' +
        'esentante_Comissao = :Representante_Comissao, Importacao = :Impo' +
        'rtacao, Data_Cancelamento = :Data_Cancelamento, Protocolo_Cancel' +
        'amento = :Protocolo_Cancelamento, Calcula_Volumes = :Calcula_Vol' +
        'umes, Valor_BCMVA = :Valor_BCMVA, Destinatario_CNPJ_CPF = :Desti' +
        'natario_CNPJ_CPF, Destinatario_Nome = :Destinatario_Nome, Destin' +
        'atario_Rua = :Destinatario_Rua, Destinatario_RuaNumero = :Destin' +
        'atario_RuaNumero, Destinatario_Complemento = :Destinatario_Compl' +
        'emento, Destinatario_Bairro = :Destinatario_Bairro, Destinatario' +
        '_Municipio = :Destinatario_Municipio, Destinatario_Estado = :Des' +
        'tinatario_Estado, Destinatario_CEP = :Destinatario_CEP, Destinat' +
        'ario_Pais = :Destinatario_Pais, Destinatario_Telefone1 = :Destin' +
        'atario_Telefone1, Destinatario_IE = :Destinatario_IE, Destinatar' +
        'io_Juridica = :Destinatario_Juridica, Valor_DUMPING = :Valor_DUM' +
        'PING, Pedido_Nota = :Pedido_Nota, Reducao_ICMSOper = :Reducao_IC' +
        'MSOper, Apuracao_PISCOFINS = :Apuracao_PISCOFINS, Inf_Complement' +
        'ares2 = :Inf_Complementares2, BCICMS_Apuracao = :BCICMS_Apuracao' +
        ', Valor_ICMSApuracao = :Valor_ICMSApuracao, Media_BCR = :Media_B' +
        'CR, Valor_PIS2 = :Valor_PIS2, Valor_COFINS2 = :Valor_COFINS2, Ba' +
        'ixa_Estoque = :Baixa_Estoque, Valor_DespesasOutros = :Valor_Desp' +
        'esasOutros, Destinatario_MunicipioNome = :Destinatario_Municipio' +
        'Nome, ICMS_Destacar = :ICMS_Destacar, Valor_BCPIS = :Valor_BCPIS' +
        ', Total_Impostos = :Total_Impostos, Aliquota_IRPJ = :Aliquota_IR' +
        'PJ, Valor_IRPJ = :Valor_IRPJ, Aliquota_CSLL = :Aliquota_CSLL, Va' +
        'lor_CSLL = :Valor_CSLL, Comissao = :Comissao, Comissao_Valor = :' +
        'Comissao_Valor, Pedido_Representante = :Pedido_Representante, Ma' +
        'nifesto_Protocolo = :Manifesto_Protocolo, Manifesto_DataProtocol' +
        'o = :Manifesto_DataProtocolo, Manifesto_Motivo = :Manifesto_Moti' +
        'vo, Manifesto_Justificativa = :Manifesto_Justificativa, Natureza' +
        '_Correcao = :Natureza_Correcao, Atendente = :Atendente, Atendent' +
        'e_Comissao = :Atendente_Comissao, Valor_Inventario = :Valor_Inve' +
        'ntario, Indicador_Presenca = :Indicador_Presenca, Veiculo_Restri' +
        'cao = :Veiculo_Restricao, Ratear_Despesa = :Ratear_Despesa, NFE_' +
        'Estorno = :NFE_Estorno, Representante_ComissaoGer = :Representan' +
        'te_ComissaoGer, Vendedor = :Vendedor, Valor_BCICMSDest = :Valor_' +
        'BCICMSDest, Valor_ICMSDest = :Valor_ICMSDest, DIFAL_Valor = :DIF' +
        'AL_Valor, DIFAL_ValorOrig = :DIFAL_ValorOrig, DIFAL_ValorDest = ' +
        ':DIFAL_ValorDest, FCP_ValorDest = :FCP_ValorDest, FCP_ICMSDest =' +
        ' :FCP_ICMSDest, FCP_ICMSORIG = :FCP_ICMSORIG, DIFAL_AliqInterna ' +
        '= :DIFAL_AliqInterna, Valor_BCFCPST = :Valor_BCFCPST, Valor_FCPS' +
        'T = :Valor_FCPST, Aliquota_FCPST = :Aliquota_FCPST, Valor_BCFCP ' +
        '= :Valor_BCFCP, Aliquota_FCP = :Aliquota_FCP, Valor_FCP = :Valor' +
        '_FCP, Tipo_Pagamento = :Tipo_Pagamento, Forma_Pagamento = :Forma' +
        '_Pagamento, Valor_ICMSDesonerado = :Valor_ICMSDesonerado, Lote =' +
        ' :Lote, Reboque_Placa = :Reboque_Placa, Reboque_UF = :Reboque_UF' +
        ', Reboque_ANTT = :Reboque_ANTT, Entrega_Retirada = :Entrega_Reti' +
        'rada, Valor_CIF = :Valor_CIF, CTE = :CTE, Tipo_Processo = :Tipo_' +
        'Processo, Valor_AFRMM = :Valor_AFRMM, Indicador_Intermediario = ' +
        ':Indicador_Intermediario, Descricao_Forma = :Descricao_Forma, In' +
        'termediador = :Intermediador, Envio_Armazem = :Envio_Armazem, Ca' +
        'ncelada_ForaPrazo = :Cancelada_ForaPrazo, Valor_BCDIFAL = :Valor' +
        '_BCDIFAL, Valor_ICMSDif = :Valor_ICMSDif, Valor_ICMSMono = :Valo' +
        'r_ICMSMono, Valor_ICMSMonoRet = :Valor_ICMSMonoRet, Valor_BCICMS' +
        'Mono = :Valor_BCICMSMono, Valor_BCICMSMonoRet = :Valor_BCICMSMon' +
        'oRet, Transporte_CPFMotorista = :Transporte_CPFMotorista, Transp' +
        'orte_Lacre = :Transporte_Lacre, Reboque_Lacre = :Reboque_Lacre, ' +
        'Armazem = :Armazem, Armazem_Nome = :Armazem_Nome, Armazem_CNPJ =' +
        ' :Armazem_CNPJ, Armazem_IE = :Armazem_IE, Armazem_Endereco = :Ar' +
        'mazem_Endereco, Valor_BCII = :Valor_BCII, Remessa = :Remessa, Va' +
        'lor_PISST = :Valor_PISST, Valor_COFINSST = :Valor_COFINSST, Valo' +
        'r_BCICMSPresumido = :Valor_BCICMSPresumido, Valor_ICMSPresumido ' +
        '= :Valor_ICMSPresumido, CCe = :CCe, Exonerada = :Exonerada, Ince' +
        'ntivo_Codigo = :Incentivo_Codigo, Aliquota_ICMSPresumido = :Aliq' +
        'uota_ICMSPresumido, Valor_BCDIFALST = :Valor_BCDIFALST, DIFAL_Va' +
        'lorST = :DIFAL_ValorST, Valor_BCPISST = :Valor_BCPISST, Valor_BC' +
        'COFINSST = :Valor_BCCOFINSST, Valor_IPIDevol = :Valor_IPIDevol, ' +
        'Valor_BCIBS = :Valor_BCIBS, Valor_IBS = :Valor_IBS, Valor_BCCBS ' +
        '= :Valor_BCCBS, Valor_CBS = :Valor_CBS, Valor_BCIS = :Valor_BCIS' +
        ', Valor_IS = :Valor_IS'
      'WHERE'
      
        '  Numero = :Old_Numero AND Saida_Entrada = :Old_Saida_Entrada AN' +
        'D Data_Emissao = :Old_Data_Emissao')
    SQLRefresh.Strings = (
      
        'SELECT Numero, Pedido, Saida_Entrada, Data_Emissao, Data_Entrada' +
        'Saida, Hora_EntradaSaida, Tipo_Nota, Serie, Modelo, Processo, FU' +
        'NDAP, Lucro, Lucro_Valor, DI, Data_DI, Natureza_Codigo, Inscrica' +
        'o_Substituto, Inf_Complementares, Cliente_Codigo, Fornecedor_Cod' +
        'igo, Estado, Transportador_Codigo, Modalidade_Frete, Volume_Quan' +
        'tidade, Volume_Especie, Volume_Marca, Volume_Numero, Volume_Peso' +
        'Liquido, Volume_PesoBruto, Valor_PIS, Valor_COFINS, Aliquota_ICM' +
        'SOper, BCICMS, Valor_ICMS, Aliquota_ICMSSub, BCICMS_Substitutivo' +
        ', ValorICMS_Substitutivo, Valor_TotalProdutos, Total_Frete, Valo' +
        'r_Seguro, Valor_OutrasDespesas, BCIPI, Valor_TotalIPI, Valor_Tot' +
        'alNota, Rateio_Despesas, Valor_TotalMVA, Valor_ICMSReducao, Valo' +
        'r_TotalII, Modalidade_Pgto, Desconto_Percentual, Desconto_Tipo, ' +
        'Total_Descontos, Cancelada, Motivo_Cancelamento, Complementar, D' +
        'evolucao, Ajuste, Nota_Referencia, Data_Referencia, NFe_cNF, Nfe' +
        '_cNFRef, NFe_Lote, NFe_Recibo, Nfe_DataRecibo, NFe_Protocolo, NF' +
        'e_DataProtocolo, Nfe_Denegada, Imprimir_DANFE, DPEC, Operacao_Ve' +
        'iculo, Transporte_Placa, Transporte_PlacaUF, Transporte_NomeMoto' +
        'rista, Transporte_RGMotorista, Transporte_CodigoANTT, Taxa_Cambi' +
        'o, Valor_IsentasICMS, Valor_OutrasICMS, Valor_IsentasIPI, Valor_' +
        'OutrasIPI, Incentivo_Fiscal, DPEC_Protocolo, DPEC_DataProtocolo,' +
        ' Representante, Representante_Comissao, Importacao, Data_Cancela' +
        'mento, Protocolo_Cancelamento, Calcula_Volumes, Valor_BCMVA, Des' +
        'tinatario_CNPJ_CPF, Destinatario_Nome, Destinatario_Rua, Destina' +
        'tario_RuaNumero, Destinatario_Complemento, Destinatario_Bairro, ' +
        'Destinatario_Municipio, Destinatario_Estado, Destinatario_CEP, D' +
        'estinatario_Pais, Destinatario_Telefone1, Destinatario_IE, Desti' +
        'natario_Juridica, Valor_DUMPING, Pedido_Nota, Reducao_ICMSOper, ' +
        'Apuracao_PISCOFINS, Inf_Complementares2, BCICMS_Apuracao, Valor_' +
        'ICMSApuracao, Media_BCR, Valor_PIS2, Valor_COFINS2, Baixa_Estoqu' +
        'e, Valor_DespesasOutros, Destinatario_MunicipioNome, ICMS_Destac' +
        'ar, Valor_BCPIS, Total_Impostos, Aliquota_IRPJ, Valor_IRPJ, Aliq' +
        'uota_CSLL, Valor_CSLL, Comissao, Comissao_Valor, Pedido_Represen' +
        'tante, Manifesto_Protocolo, Manifesto_DataProtocolo, Manifesto_M' +
        'otivo, Manifesto_Justificativa, Natureza_Correcao, Atendente, At' +
        'endente_Comissao, Valor_Inventario, Indicador_Presenca, Veiculo_' +
        'Restricao, Ratear_Despesa, NFE_Estorno, Representante_ComissaoGe' +
        'r, Vendedor, Valor_BCICMSDest, Valor_ICMSDest, DIFAL_Valor, DIFA' +
        'L_ValorOrig, DIFAL_ValorDest, FCP_ValorDest, FCP_ICMSDest, FCP_I' +
        'CMSORIG, DIFAL_AliqInterna, Valor_BCFCPST, Valor_FCPST, Aliquota' +
        '_FCPST, Valor_BCFCP, Aliquota_FCP, Valor_FCP, Tipo_Pagamento, Fo' +
        'rma_Pagamento, Valor_ICMSDesonerado, Lote, Reboque_Placa, Reboqu' +
        'e_UF, Reboque_ANTT, Entrega_Retirada, Valor_CIF, CTE, Tipo_Proce' +
        'sso, Valor_AFRMM, Indicador_Intermediario, Descricao_Forma, Inte' +
        'rmediador, Envio_Armazem, Cancelada_ForaPrazo, Valor_BCDIFAL, Va' +
        'lor_ICMSDif, Valor_ICMSMono, Valor_ICMSMonoRet, Valor_BCICMSMono' +
        ', Valor_BCICMSMonoRet, Transporte_CPFMotorista, Transporte_Lacre' +
        ', Reboque_Lacre, Armazem, Armazem_Nome, Armazem_CNPJ, Armazem_IE' +
        ', Armazem_Endereco, Valor_BCII, Remessa, Valor_PISST, Valor_COFI' +
        'NSST, Valor_BCICMSPresumido, Valor_ICMSPresumido, CCe, Exonerada' +
        ', Incentivo_Codigo, Aliquota_ICMSPresumido, Valor_BCDIFALST, DIF' +
        'AL_ValorST, Valor_BCPISST, Valor_BCCOFINSST, Valor_IPIDevol, Val' +
        'or_BCIBS, Valor_IBS, Valor_BCCBS, Valor_CBS, Valor_BCIS, Valor_I' +
        'S FROM NotasFiscais'
      'WHERE'
      
        '  Numero = :Numero AND Saida_Entrada = :Saida_Entrada AND Data_E' +
        'missao = :Data_Emissao')
    SQLLock.Strings = (
      'SELECT * FROM NotasFiscais'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      
        '  Numero = :Old_Numero AND Saida_Entrada = :Old_Saida_Entrada AN' +
        'D Data_Emissao = :Old_Data_Emissao')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM NotasFiscais'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * '
      'FROM NotasFiscais '
      '--WHERE Numero < 100'
      'ORDER BY Numero desc')
    FetchRows = 1
    BeforePost = NotasBeforePost
    OnCalcFields = NotasCalcFields
    Left = 73
    Top = 16
    object NotasNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'NotasFiscais.Numero'
      DisplayFormat = '000000000'
      EditFormat = '000000'
    end
    object NotasPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'NotasFiscais.Pedido'
    end
    object NotasSaida_Entrada: TSmallintField
      FieldName = 'Saida_Entrada'
      Origin = 'NotasFiscais.Saida_Entrada'
    end
    object NotasData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'NotasFiscais.Data_Emissao'
    end
    object NotasData_EntradaSaida: TDateTimeField
      FieldName = 'Data_EntradaSaida'
      Origin = 'NotasFiscais.Data_EntradaSaida'
    end
    object NotasHora_EntradaSaida: TStringField
      FieldName = 'Hora_EntradaSaida'
      Origin = 'NotasFiscais.Hora_EntradaSaida'
      FixedChar = True
      Size = 5
    end
    object NotasTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
      Origin = 'NotasFiscais.Tipo_Nota'
    end
    object NotasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'NotasFiscais.Processo'
      Size = 15
    end
    object NotasFUNDAP: TBooleanField
      FieldName = 'FUNDAP'
      Origin = 'NotasFiscais.FUNDAP'
    end
    object NotasLucro: TFloatField
      FieldName = 'Lucro'
      Origin = 'NotasFiscais.Lucro'
    end
    object NotasDI: TStringField
      FieldName = 'DI'
      Origin = 'NotasFiscais.DI'
      EditMask = '##/#######-#;0; '
      Size = 15
    end
    object NotasData_DI: TDateTimeField
      FieldName = 'Data_DI'
      Origin = 'NotasFiscais.Data_DI'
    end
    object NotasInscricao_Substituto: TStringField
      FieldName = 'Inscricao_Substituto'
      Origin = 'NotasFiscais.Inscricao_Substituto'
      Size = 15
    end
    object NotasInf_Complementares: TMemoField
      FieldName = 'Inf_Complementares'
      Origin = 'NotasFiscais.Inf_Complementares'
      BlobType = ftMemo
    end
    object NotasNatureza_Codigo: TStringField
      FieldName = 'Natureza_Codigo'
      Origin = 'NotasFiscais.Natureza_Codigo'
      EditMask = '9.999;0; '
      Size = 4
    end
    object NotasCliente_Codigo: TIntegerField
      FieldName = 'Cliente_Codigo'
      Origin = 'NotasFiscais.Cliente_Codigo'
    end
    object NotasFornecedor_Codigo: TIntegerField
      FieldName = 'Fornecedor_Codigo'
      Origin = 'NotasFiscais.Fornecedor_Codigo'
    end
    object NotasTransportador_Codigo: TIntegerField
      FieldName = 'Transportador_Codigo'
      Origin = 'NotasFiscais.Transportador_Codigo'
    end
    object NotasVolume_Quantidade: TFloatField
      FieldName = 'Volume_Quantidade'
      Origin = 'NotasFiscais.Volume_Quantidade'
    end
    object NotasVolume_Especie: TStringField
      FieldName = 'Volume_Especie'
      Origin = 'NotasFiscais.Volume_Especie'
    end
    object NotasVolume_Marca: TStringField
      FieldName = 'Volume_Marca'
      Origin = 'NotasFiscais.Volume_Marca'
    end
    object NotasVolume_Numero: TStringField
      FieldName = 'Volume_Numero'
      Origin = 'NotasFiscais.Volume_Numero'
    end
    object NotasVolume_PesoLiquido: TFloatField
      FieldName = 'Volume_PesoLiquido'
      Origin = 'NotasFiscais.Volume_PesoLiquido'
      DisplayFormat = '#,##0.###'
      EditFormat = '#,##0.###'
    end
    object NotasVolume_PesoBruto: TFloatField
      FieldName = 'Volume_PesoBruto'
      Origin = 'NotasFiscais.Volume_PesoBruto'
      DisplayFormat = '#,##0.###'
      EditFormat = '#,##0.###'
    end
    object NotasValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'NotasFiscais.Valor_PIS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'NotasFiscais.Valor_COFINS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasAliquota_ICMSOper: TFloatField
      FieldName = 'Aliquota_ICMSOper'
      Origin = 'NotasFiscais.Aliquota_ICMSOper'
    end
    object NotasBCICMS: TCurrencyField
      FieldName = 'BCICMS'
      Origin = 'NotasFiscais.BCICMS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasValor_ICMS: TCurrencyField
      FieldName = 'Valor_ICMS'
      Origin = 'NotasFiscais.Valor_ICMS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasAliquota_ICMSSub: TFloatField
      FieldName = 'Aliquota_ICMSSub'
      Origin = 'NotasFiscais.Aliquota_ICMSSub'
    end
    object NotasBCICMS_Substitutivo: TCurrencyField
      FieldName = 'BCICMS_Substitutivo'
      Origin = 'NotasFiscais.BCICMS_Substitutivo'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasValorICMS_Substitutivo: TCurrencyField
      FieldName = 'ValorICMS_Substitutivo'
      Origin = 'NotasFiscais.ValorICMS_Substitutivo'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasValor_TotalProdutos: TCurrencyField
      FieldName = 'Valor_TotalProdutos'
      Origin = 'NotasFiscais.Valor_TotalProdutos'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasTotal_Frete: TCurrencyField
      FieldName = 'Total_Frete'
      Origin = 'NotasFiscais.Total_Frete'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasValor_Seguro: TCurrencyField
      FieldName = 'Valor_Seguro'
      Origin = 'NotasFiscais.Valor_Seguro'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasValor_OutrasDespesas: TCurrencyField
      FieldName = 'Valor_OutrasDespesas'
      Origin = 'NotasFiscais.Valor_OutrasDespesas'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasBCIPI: TCurrencyField
      FieldName = 'BCIPI'
      Origin = 'NotasFiscais.BCIPI'
    end
    object NotasValor_TotalIPI: TCurrencyField
      FieldName = 'Valor_TotalIPI'
      Origin = 'NotasFiscais.Valor_TotalIPI'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      Origin = 'NotasFiscais.Valor_TotalNota'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasRateio_Despesas: TFloatField
      FieldName = 'Rateio_Despesas'
      Origin = 'NotasFiscais.Rateio_Despesas'
    end
    object NotasValor_TotalMVA: TCurrencyField
      FieldName = 'Valor_TotalMVA'
      Origin = 'NotasFiscais.Valor_TotalMVA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasValor_ICMSReducao: TCurrencyField
      FieldName = 'Valor_ICMSReducao'
      Origin = 'NotasFiscais.Valor_ICMSReducao'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasDesconto_Percentual: TFloatField
      FieldName = 'Desconto_Percentual'
      Origin = 'NotasFiscais.Desconto_Percentual'
    end
    object NotasDesconto_Tipo: TStringField
      FieldName = 'Desconto_Tipo'
      Origin = 'NotasFiscais.Desconto_Tipo'
      Size = 30
    end
    object NotasTotal_Descontos: TCurrencyField
      FieldName = 'Total_Descontos'
      Origin = 'NotasFiscais.Total_Descontos'
    end
    object NotasCancelada: TBooleanField
      DisplayWidth = 2
      FieldName = 'Cancelada'
      Origin = 'NotasFiscais.Cancelada'
      DisplayValues = 'a'
    end
    object NotasComplementar: TBooleanField
      DisplayWidth = 2
      FieldName = 'Complementar'
      Origin = 'NotasFiscais.Complementar'
      DisplayValues = 'a'
    end
    object NotasDevolucao: TBooleanField
      DisplayWidth = 2
      FieldName = 'Devolucao'
      Origin = 'NotasFiscais.Devolucao'
      DisplayValues = 'a'
    end
    object NotasMotivo_Cancelamento: TStringField
      FieldName = 'Motivo_Cancelamento'
      Origin = 'NotasFiscais.Motivo_Cancelamento'
      Size = 60
    end
    object NotasSerie: TStringField
      FieldName = 'Serie'
      Origin = 'NotasFiscais.Serie'
      FixedChar = True
      Size = 2
    end
    object NotasModelo: TStringField
      FieldName = 'Modelo'
      Origin = 'NotasFiscais.Modelo'
      FixedChar = True
      Size = 2
    end
    object NotasEstado: TStringField
      FieldName = 'Estado'
      Origin = 'NotasFiscais.Estado'
      FixedChar = True
      Size = 2
    end
    object NotasCliente_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente_Nome'
      LookupDataSet = Dados.Clientes
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente_Codigo'
      Size = 50
      Lookup = True
    end
    object NotasFornecedor_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Fornecedor_Nome'
      LookupDataSet = Dados.Fornecedores
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Fornecedor_Codigo'
      Size = 50
      Lookup = True
    end
    object NotasNota_Referencia: TSmallintField
      FieldName = 'Nota_Referencia'
      Origin = 'NotasFiscais.Nota_Referencia'
    end
    object NotasData_Referencia: TDateTimeField
      FieldName = 'Data_Referencia'
      Origin = 'NotasFiscais.Data_Referencia'
    end
    object NotasNFe_CNF: TStringField
      FieldName = 'NFe_CNF'
      Origin = 'NotasFiscais.NFe_cNF'
      EditMask = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0'
      Size = 50
    end
    object NotasNfe_CNFRef: TStringField
      FieldName = 'Nfe_CNFRef'
      Origin = 'NotasFiscais.Nfe_cNFRef'
      Size = 50
    end
    object NotasModalidade_Pgto: TSmallintField
      FieldName = 'Modalidade_Pgto'
      Origin = 'NotasFiscais.Modalidade_Pgto'
    end
    object NotasAjuste: TBooleanField
      FieldName = 'Ajuste'
      Origin = 'NotasFiscais.Ajuste'
    end
    object NotasValor_TotalII: TCurrencyField
      FieldName = 'Valor_TotalII'
      Origin = 'NotasFiscais.Valor_TotalII'
    end
    object NotasNFe_Lote: TFloatField
      FieldName = 'NFe_Lote'
      Origin = 'NotasFiscais.NFe_Lote'
    end
    object NotasModalidade_Frete: TSmallintField
      FieldName = 'Modalidade_Frete'
      Origin = 'NotasFiscais.Modalidade_Frete'
    end
    object NotasTransportador_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Transportador_Nome'
      LookupDataSet = Dados.Fornecedores
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Transportador_Codigo'
      Size = 60
      Lookup = True
    end
    object NotasNFe_Recibo: TStringField
      FieldName = 'NFe_Recibo'
      Origin = 'NotasFiscais.NFe_Recibo'
      Size = 15
    end
    object NotasNFe_Protocolo: TStringField
      FieldName = 'NFe_Protocolo'
      Origin = 'NotasFiscais.NFe_Protocolo'
      FixedChar = True
      Size = 15
    end
    object NotasNfe_DataRecibo: TDateTimeField
      FieldName = 'Nfe_DataRecibo'
      Origin = 'NotasFiscais.Nfe_DataRecibo'
    end
    object NotasNFe_DataProtocolo: TDateTimeField
      FieldName = 'NFe_DataProtocolo'
      Origin = 'NotasFiscais.NFe_DataProtocolo'
    end
    object NotasImprimir_DANFE: TBooleanField
      FieldName = 'Imprimir_DANFE'
      Origin = 'NotasFiscais.Imprimir_DANFE'
    end
    object NotasDPEC: TBooleanField
      DisplayWidth = 2
      FieldName = 'DPEC'
      Origin = 'NotasFiscais.DPEC'
      DisplayValues = 'a'
    end
    object NotasOperacao_Veiculo: TStringField
      FieldName = 'Operacao_Veiculo'
      Origin = 'NotasFiscais.Operacao_Veiculo'
      FixedChar = True
      Size = 1
    end
    object NotasNfe_Denegada: TBooleanField
      DisplayWidth = 2
      FieldName = 'Nfe_Denegada'
      Origin = 'NotasFiscais.Nfe_Denegada'
      DisplayValues = 'a'
    end
    object NotasTransporte_PlacaUF: TStringField
      FieldName = 'Transporte_PlacaUF'
      Origin = 'NotasFiscais.Transporte_PlacaUF'
      FixedChar = True
      Size = 2
    end
    object NotasTransporte_CodigoANTT: TStringField
      FieldName = 'Transporte_CodigoANTT'
      Origin = 'NotasFiscais.Transporte_CodigoANTT'
      FixedChar = True
      Size = 15
    end
    object NotasTransporte_RGMotorista: TStringField
      FieldName = 'Transporte_RGMotorista'
      Origin = 'NotasFiscais.Transporte_RGMotorista'
    end
    object NotasTransporte_NomeMotorista: TStringField
      FieldName = 'Transporte_NomeMotorista'
      Origin = 'NotasFiscais.Transporte_NomeMotorista'
      Size = 40
    end
    object NotasLucro_Valor: TCurrencyField
      FieldName = 'Lucro_Valor'
      Origin = 'NotasFiscais.Lucro_Valor'
    end
    object NotasTaxa_Cambio: TFloatField
      FieldName = 'Taxa_Cambio'
      Origin = 'NotasFiscais.Taxa_Cambio'
    end
    object NotasValor_IsentasICMS: TCurrencyField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'NotasFiscais.Valor_IsentasICMS'
    end
    object NotasValor_OutrasICMS: TCurrencyField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'NotasFiscais.Valor_OutrasICMS'
    end
    object NotasValor_IsentasIPI: TCurrencyField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'NotasFiscais.Valor_IsentasIPI'
    end
    object NotasValor_OutrasIPI: TCurrencyField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'NotasFiscais.Valor_OutrasIPI'
    end
    object NotasIncentivo_Fiscal: TStringField
      FieldName = 'Incentivo_Fiscal'
      Origin = 'NotasFiscais.Incentivo_Fiscal'
      Size = 15
    end
    object NotasSaida_EntradaNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Saida_EntradaNome'
      Size = 7
      Calculated = True
    end
    object NotasDPEC_Protocolo: TStringField
      FieldName = 'DPEC_Protocolo'
      Origin = 'NotasFiscais.DPEC_Protocolo'
      Size = 15
    end
    object NotasDPEC_DataProtocolo: TDateTimeField
      FieldName = 'DPEC_DataProtocolo'
      Origin = 'NotasFiscais.DPEC_DataProtocolo'
    end
    object NotasRepresentante: TSmallintField
      FieldName = 'Representante'
      Origin = 'NotasFiscais.Representante'
    end
    object NotasRepresentante_Comissao: TFloatField
      FieldName = 'Representante_Comissao'
      Origin = 'NotasFiscais.Representante_Comissao'
    end
    object NotasImportacao: TBooleanField
      FieldName = 'Importacao'
      Origin = 'NotasFiscais.Importacao'
    end
    object NotasData_Cancelamento: TDateTimeField
      FieldName = 'Data_Cancelamento'
      Origin = 'NotasFiscais.Data_Cancelamento'
    end
    object NotasProtocolo_Cancelamento: TStringField
      FieldName = 'Protocolo_Cancelamento'
      Origin = 'NotasFiscais.Protocolo_Cancelamento'
      Size = 15
    end
    object NotasCalcula_Volumes: TBooleanField
      FieldName = 'Calcula_Volumes'
      Origin = 'NotasFiscais.Calcula_Volumes'
    end
    object NotasValor_BCMVA: TFloatField
      FieldName = 'Valor_BCMVA'
      Origin = 'NotasFiscais.Valor_BCMVA'
    end
    object NotasDestinatario_CNPJ_CPF: TStringField
      FieldName = 'Destinatario_CNPJ_CPF'
      Origin = 'NotasFiscais.Destinatario_CNPJ_CPF'
      Size = 14
    end
    object NotasDestinatario_Nome: TStringField
      FieldName = 'Destinatario_Nome'
      Origin = 'NotasFiscais.Destinatario_Nome'
      Size = 60
    end
    object NotasDestinatario_Rua: TStringField
      FieldName = 'Destinatario_Rua'
      Origin = 'NotasFiscais.Destinatario_Rua'
      Size = 40
    end
    object NotasDestinatario_RuaNumero: TStringField
      FieldName = 'Destinatario_RuaNumero'
      Origin = 'NotasFiscais.Destinatario_RuaNumero'
      Size = 10
    end
    object NotasDestinatario_Bairro: TStringField
      FieldName = 'Destinatario_Bairro'
      Origin = 'NotasFiscais.Destinatario_Bairro'
      Size = 40
    end
    object NotasDestinatario_Estado: TStringField
      FieldName = 'Destinatario_Estado'
      Origin = 'NotasFiscais.Destinatario_Estado'
      Size = 2
    end
    object NotasDestinatario_Telefone1: TStringField
      FieldName = 'Destinatario_Telefone1'
      Origin = 'NotasFiscais.Destinatario_Telefone1'
      Size = 15
    end
    object NotasDestinatario_CEP: TStringField
      FieldName = 'Destinatario_CEP'
      Origin = 'NotasFiscais.Destinatario_CEP'
      Size = 8
    end
    object NotasDestinatario_IE: TStringField
      FieldName = 'Destinatario_IE'
      Origin = 'NotasFiscais.Destinatario_IE'
      Size = 18
    end
    object NotasDestinatario_Municipio: TFloatField
      FieldName = 'Destinatario_Municipio'
      Origin = 'NotasFiscais.Destinatario_Municipio'
    end
    object NotasDestinatario_Complemento: TStringField
      FieldName = 'Destinatario_Complemento'
      Origin = 'NotasFiscais.Destinatario_Complemento'
    end
    object NotasDestinatario_Juridica: TBooleanField
      FieldName = 'Destinatario_Juridica'
      Origin = 'NotasFiscais.Destinatario_Juridica'
    end
    object NotasValor_DUMPING: TCurrencyField
      FieldName = 'Valor_DUMPING'
      Origin = 'NotasFiscais.Valor_DUMPING'
    end
    object NotasPedido_Nota: TIntegerField
      FieldName = 'Pedido_Nota'
      Origin = 'NotasFiscais.Pedido_Nota'
    end
    object NotasApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'NotasFiscais.Apuracao_PISCOFINS'
    end
    object NotasInf_Complementares2: TMemoField
      FieldName = 'Inf_Complementares2'
      Origin = 'NotasFiscais.Inf_Complementares2'
      BlobType = ftMemo
    end
    object NotasDestinatario_Pais: TStringField
      FieldName = 'Destinatario_Pais'
      Origin = 'NotasFiscais.Destinatario_Pais'
      Size = 4
    end
    object NotasBCICMS_Apuracao: TCurrencyField
      FieldName = 'BCICMS_Apuracao'
      Origin = 'NotasFiscais.BCICMS_Apuracao'
    end
    object NotasValor_ICMSApuracao: TCurrencyField
      FieldName = 'Valor_ICMSApuracao'
      Origin = 'NotasFiscais.Valor_ICMSApuracao'
    end
    object NotasMedia_BCR: TCurrencyField
      FieldName = 'Media_BCR'
      Origin = 'NotasFiscais.Media_BCR'
    end
    object NotasValor_PIS2: TFloatField
      FieldName = 'Valor_PIS2'
      Origin = 'NotasFiscais.Valor_PIS2'
    end
    object NotasValor_COFINS2: TFloatField
      FieldName = 'Valor_COFINS2'
      Origin = 'NotasFiscais.Valor_COFINS2'
    end
    object NotasBaixa_Estoque: TBooleanField
      FieldName = 'Baixa_Estoque'
      Origin = 'NotasFiscais.Baixa_Estoque'
    end
    object NotasValor_DespesasOutros: TCurrencyField
      FieldName = 'Valor_DespesasOutros'
      Origin = 'NotasFiscais.Valor_DespesasOutros'
    end
    object NotasDestinatario_MunicipioNome: TStringField
      FieldName = 'Destinatario_MunicipioNome'
      Origin = 'NotasFiscais.Destinatario_MunicipioNome'
      Size = 40
    end
    object NotasICMS_Destacar: TBooleanField
      FieldName = 'ICMS_Destacar'
      Origin = 'NotasFiscais.ICMS_Destacar'
    end
    object NotasValor_BCPIS: TCurrencyField
      FieldName = 'Valor_BCPIS'
      Origin = 'NotasFiscais.Valor_BCPIS'
    end
    object NotasTotal_Impostos: TCurrencyField
      FieldName = 'Total_Impostos'
      Origin = 'NotasFiscais.Total_Impostos'
    end
    object NotasAliquota_IRPJ: TFloatField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'NotasFiscais.Aliquota_IRPJ'
    end
    object NotasValor_IRPJ: TCurrencyField
      FieldName = 'Valor_IRPJ'
      Origin = 'NotasFiscais.Valor_IRPJ'
    end
    object NotasAliquota_CSLL: TFloatField
      FieldName = 'Aliquota_CSLL'
      Origin = 'NotasFiscais.Aliquota_CSLL'
    end
    object NotasValor_CSLL: TCurrencyField
      FieldName = 'Valor_CSLL'
      Origin = 'NotasFiscais.Valor_CSLL'
    end
    object NotasComissao: TFloatField
      FieldName = 'Comissao'
      Origin = 'NotasFiscais.Comissao'
    end
    object NotasComissao_Valor: TCurrencyField
      FieldName = 'Comissao_Valor'
      Origin = 'NotasFiscais.Comissao_Valor'
    end
    object NotasPedido_Representante: TStringField
      FieldName = 'Pedido_Representante'
      Origin = 'NotasFiscais.Pedido_Representante'
      Size = 10
    end
    object NotasManifesto_Protocolo: TStringField
      FieldName = 'Manifesto_Protocolo'
      Origin = 'NotasFiscais.Manifesto_Protocolo'
      FixedChar = True
      Size = 15
    end
    object NotasManifesto_DataProtocolo: TDateTimeField
      FieldName = 'Manifesto_DataProtocolo'
      Origin = 'NotasFiscais.Manifesto_DataProtocolo'
    end
    object NotasManifesto_Motivo: TSmallintField
      FieldName = 'Manifesto_Motivo'
      Origin = 'NotasFiscais.Manifesto_Motivo'
    end
    object NotasManifesto_Justificativa: TMemoField
      FieldName = 'Manifesto_Justificativa'
      Origin = 'NotasFiscais.Manifesto_Justificativa'
      BlobType = ftMemo
    end
    object NotasNatureza_Correcao: TStringField
      FieldName = 'Natureza_Correcao'
      Origin = 'NotasFiscais.Natureza_Correcao'
      Size = 4
    end
    object NotasAtendente: TSmallintField
      FieldName = 'Atendente'
      Origin = 'NotasFiscais.Atendente'
    end
    object NotasAtendente_Comissao: TFloatField
      FieldName = 'Atendente_Comissao'
      Origin = 'NotasFiscais.Atendente_Comissao'
    end
    object NotasValor_Inventario: TFloatField
      FieldName = 'Valor_Inventario'
      Origin = 'NotasFiscais.Valor_Inventario'
    end
    object NotasIndicador_Presenca: TSmallintField
      FieldName = 'Indicador_Presenca'
      Origin = 'NotasFiscais.Indicador_Presenca'
    end
    object NotasVeiculo_Restricao: TStringField
      FieldName = 'Veiculo_Restricao'
      Origin = 'NotasFiscais.Veiculo_Restricao'
      Size = 1
    end
    object NotasRatear_Despesa: TBooleanField
      FieldName = 'Ratear_Despesa'
      Origin = 'NotasFiscais.Ratear_Despesa'
    end
    object NotasNFE_Estorno: TBooleanField
      FieldName = 'NFE_Estorno'
      Origin = 'NotasFiscais.NFE_Estorno'
    end
    object NotasRepresentante_ComissaoGer: TFloatField
      FieldName = 'Representante_ComissaoGer'
      Origin = 'NotasFiscais.Representante_ComissaoGer'
    end
    object NotasVendedor: TStringField
      FieldName = 'Vendedor'
      Origin = 'NotasFiscais.Vendedor'
      Size = 50
    end
    object NotasFCP_ICMSDest: TCurrencyField
      FieldName = 'FCP_ICMSDest'
      Origin = 'NotasFiscais.FCP_ICMSDest'
    end
    object NotasValor_BCICMSDest: TCurrencyField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'NotasFiscais.Valor_BCICMSDest'
    end
    object NotasValor_ICMSDest: TCurrencyField
      FieldName = 'Valor_ICMSDest'
      Origin = 'NotasFiscais.Valor_ICMSDest'
    end
    object NotasDIFAL_Valor: TCurrencyField
      FieldName = 'DIFAL_Valor'
      Origin = 'NotasFiscais.DIFAL_Valor'
    end
    object NotasDIFAL_ValorOrig: TCurrencyField
      FieldName = 'DIFAL_ValorOrig'
      Origin = 'NotasFiscais.DIFAL_ValorOrig'
    end
    object NotasDIFAL_ValorDest: TCurrencyField
      FieldName = 'DIFAL_ValorDest'
      Origin = 'NotasFiscais.DIFAL_ValorDest'
    end
    object NotasFCP_ValorDest: TCurrencyField
      FieldName = 'FCP_ValorDest'
      Origin = 'NotasFiscais.FCP_ValorDest'
    end
    object NotasFCP_ICMSORIG: TCurrencyField
      FieldName = 'FCP_ICMSORIG'
      Origin = 'NotasFiscais.FCP_ICMSORIG'
    end
    object NotasDIFAL_AliqInterna: TFloatField
      FieldName = 'DIFAL_AliqInterna'
      Origin = 'NotasFiscais.DIFAL_AliqInterna'
    end
    object NotasValor_BCFCPST: TCurrencyField
      FieldName = 'Valor_BCFCPST'
      Origin = 'NotasFiscais.Valor_BCFCPST'
    end
    object NotasAliquota_FCPST: TFloatField
      FieldName = 'Aliquota_FCPST'
      Origin = 'NotasFiscais.Aliquota_FCPST'
    end
    object NotasValor_FCPST: TCurrencyField
      FieldName = 'Valor_FCPST'
      Origin = 'NotasFiscais.Valor_FCPST'
    end
    object NotasValor_BCFCP: TCurrencyField
      FieldName = 'Valor_BCFCP'
      Origin = 'NotasFiscais.Valor_BCFCP'
    end
    object NotasAliquota_FCP: TFloatField
      FieldName = 'Aliquota_FCP'
      Origin = 'NotasFiscais.Aliquota_FCP'
    end
    object NotasValor_FCP: TCurrencyField
      FieldName = 'Valor_FCP'
      Origin = 'NotasFiscais.Valor_FCP'
    end
    object NotasTipo_Pagamento: TSmallintField
      FieldName = 'Tipo_Pagamento'
      Origin = 'NotasFiscais.Tipo_Pagamento'
    end
    object NotasForma_Pagamento: TSmallintField
      FieldName = 'Forma_Pagamento'
      Origin = 'NotasFiscais.Forma_Pagamento'
    end
    object NotasValor_ICMSDesonerado: TCurrencyField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'NotasFiscais.Valor_ICMSDesonerado'
    end
    object NotasLote: TStringField
      FieldName = 'Lote'
      Origin = 'NotasFiscais.Lote'
      Size = 15
    end
    object NotasReboque_UF: TStringField
      FieldName = 'Reboque_UF'
      Origin = 'NotasFiscais.Reboque_UF'
      FixedChar = True
      Size = 2
    end
    object NotasReboque_ANTT: TStringField
      FieldName = 'Reboque_ANTT'
      Origin = 'NotasFiscais.Reboque_ANTT'
      FixedChar = True
      Size = 15
    end
    object NotasEntrega_Retirada: TStringField
      FieldName = 'Entrega_Retirada'
      Origin = 'NotasFiscais.Entrega_Retirada'
      FixedChar = True
      Size = 1
    end
    object NotasValor_CIF: TCurrencyField
      FieldName = 'Valor_CIF'
      Origin = 'NotasFiscais.Valor_CIF'
    end
    object NotasCTE: TBooleanField
      FieldName = 'CTE'
      Origin = 'NotasFiscais.CTE'
    end
    object NotasTipo_Processo: TStringField
      FieldName = 'Tipo_Processo'
      FixedChar = True
      Size = 1
    end
    object NotasValor_AFRMM: TCurrencyField
      FieldName = 'Valor_AFRMM'
    end
    object NotasIndicador_Intermediario: TSmallintField
      FieldName = 'Indicador_Intermediario'
    end
    object NotasDescricao_Forma: TStringField
      FieldName = 'Descricao_Forma'
      Size = 60
    end
    object NotasIntermediador: TSmallintField
      FieldName = 'Intermediador'
    end
    object NotasEnvio_Armazem: TBooleanField
      FieldName = 'Envio_Armazem'
    end
    object NotasCancelada_ForaPrazo: TBooleanField
      FieldName = 'Cancelada_ForaPrazo'
    end
    object NotasValor_BCDIFAL: TCurrencyField
      FieldName = 'Valor_BCDIFAL'
    end
    object NotasValor_ICMSDif: TCurrencyField
      FieldName = 'Valor_ICMSDif'
    end
    object NotasValor_ICMSMono: TCurrencyField
      FieldName = 'Valor_ICMSMono'
    end
    object NotasValor_ICMSMonoRet: TCurrencyField
      FieldName = 'Valor_ICMSMonoRet'
    end
    object NotasValor_BCICMSMono: TCurrencyField
      FieldName = 'Valor_BCICMSMono'
    end
    object NotasValor_BCICMSMonoRet: TCurrencyField
      FieldName = 'Valor_BCICMSMonoRet'
    end
    object NotasTransporte_CPFMotorista: TStringField
      FieldName = 'Transporte_CPFMotorista'
      Size = 14
    end
    object NotasArmazem: TSmallintField
      FieldName = 'Armazem'
    end
    object NotasArmazem_Nome: TStringField
      FieldName = 'Armazem_Nome'
      Size = 50
    end
    object NotasArmazem_CNPJ: TStringField
      FieldName = 'Armazem_CNPJ'
      Size = 14
    end
    object NotasArmazem_IE: TStringField
      FieldName = 'Armazem_IE'
      Size = 15
    end
    object NotasArmazem_Endereco: TMemoField
      FieldName = 'Armazem_Endereco'
      BlobType = ftMemo
    end
    object NotasTransporte_Lacre: TMemoField
      FieldName = 'Transporte_Lacre'
      BlobType = ftMemo
    end
    object NotasReboque_Lacre: TMemoField
      FieldName = 'Reboque_Lacre'
      BlobType = ftMemo
    end
    object NotasTransporte_Placa: TStringField
      FieldName = 'Transporte_Placa'
      Size = 30
    end
    object NotasReboque_Placa: TStringField
      FieldName = 'Reboque_Placa'
      Size = 30
    end
    object NotasReducao_ICMSOper: TFloatField
      FieldName = 'Reducao_ICMSOper'
    end
    object NotasValor_BCII: TCurrencyField
      FieldName = 'Valor_BCII'
    end
    object NotasRemessa: TBooleanField
      FieldName = 'Remessa'
    end
    object NotasValor_PISST: TCurrencyField
      FieldName = 'Valor_PISST'
    end
    object NotasValor_COFINSST: TCurrencyField
      FieldName = 'Valor_COFINSST'
    end
    object NotasValor_BCICMSPresumido: TCurrencyField
      FieldName = 'Valor_BCICMSPresumido'
    end
    object NotasValor_ICMSPresumido: TCurrencyField
      FieldName = 'Valor_ICMSPresumido'
    end
    object NotasCCe: TBooleanField
      DisplayWidth = 2
      FieldName = 'CCe'
      DisplayValues = 'a'
    end
    object NotasExonerada: TBooleanField
      FieldName = 'Exonerada'
    end
    object NotasIncentivo_Codigo: TIntegerField
      FieldName = 'Incentivo_Codigo'
    end
    object NotasAliquota_ICMSPresumido: TFloatField
      FieldName = 'Aliquota_ICMSPresumido'
    end
    object NotasValor_BCDIFALST: TCurrencyField
      FieldName = 'Valor_BCDIFALST'
    end
    object NotasDIFAL_ValorST: TCurrencyField
      FieldName = 'DIFAL_ValorST'
    end
    object NotasValor_BCPISST: TCurrencyField
      FieldName = 'Valor_BCPISST'
    end
    object NotasValor_BCCOFINSST: TCurrencyField
      FieldName = 'Valor_BCCOFINSST'
    end
    object NotasValor_IPIDevol: TCurrencyField
      FieldName = 'Valor_IPIDevol'
    end
    object NotasValor_BCIBS: TCurrencyField
      FieldName = 'Valor_BCIBS'
    end
    object NotasValor_IBS: TCurrencyField
      FieldName = 'Valor_IBS'
    end
    object NotasValor_BCCBS: TCurrencyField
      FieldName = 'Valor_BCCBS'
    end
    object NotasValor_CBS: TCurrencyField
      FieldName = 'Valor_CBS'
    end
    object NotasValor_BCIS: TCurrencyField
      FieldName = 'Valor_BCIS'
    end
    object NotasValor_IS: TCurrencyField
      FieldName = 'Valor_IS'
    end
  end
  object dsNotasItens: TDataSource
    DataSet = NotasItens
    Left = 129
    Top = 64
  end
  object NotasItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasItens'
      
        '  (Nota, Data, Item, Sequencia_SISCOMEX, Codigo_Mercadoria, Codi' +
        'go_Fabricante, Descricao_Mercadoria, NCM, EXTIPI, Unidade_Medida' +
        ', Quantidade, Disponivel, Valor_Unitario, Valor_Total, Aliquota_' +
        'IPI, Valor_IPI, Total_IPI, CodigoTrib_TabA, CodigoTrib_TabB, CST' +
        'IPI, CSTPIS, CSTCOFINS, Adicao, Aliquota_II, Valor_II, Valor_BCI' +
        'CMSOper, Aliquota_ICMSOper, Valor_ICMSOper, Valor_BCICMSSub, Ali' +
        'quota_ICMSSub, Valor_ICMSSub, Aliquota_MVA, Valor_MVA, Aliquota_' +
        'ICMSReducao, Valor_ICMSReducao, Valor_Seguro, Valor_Frete, Valor' +
        '_Despesa, Aliquota_PIS, Valor_PIS, Aliquota_COFINS, Valor_COFINS' +
        ', Peso_Liquido, Peso_Bruto, Veiculo, Saida_Entrada, Movimenta_In' +
        'ventario, Movimenta_Estoque, Cancelada, Modalidade_BCICMS, Modal' +
        'idade_BCICMSST, DI, Processo, Valor_IsentasICMS, Valor_OutrasICM' +
        'S, Valor_IsentasIPI, Valor_OutrasIPI, Lucro, Lucro_Valor, Valor_' +
        'BCIPI, Rateio_ICMSProcesso, Sequencia, Nota_Terceiros, Desconto,' +
        ' Desconto_Valor, Apuracao_PISCOFINS, Aliquota_PISRed, Aliquota_C' +
        'OFINSRed, Aliquota_ICMSIntegral, Valor_BCMVA, Valor_Dumping, Fin' +
        'alidade_Mercadoria, Total_Item, Rateio_SISCOMEX, Valor_BCICMSOpe' +
        'rApuracao, Valor_ICMSOperApuracao, Media_BCR, Registro_Adicao, Q' +
        'uantidade_Original, Unidade_Original, Valor_PIS2, Valor_COFINS2,' +
        ' Tipo_Nota, Valor_DespesasOutros, Valor_BCPIS, Total_Impostos, A' +
        'liquota_IRPJ, Valor_IRPJ, Aliquota_CSLL, Valor_CSLL, ICMSST_Ante' +
        'rior, Comissao, Comissao_Valor, NFe_Denegada, Reducao_ICMSST, Va' +
        'lor_Inventario, Nota_Referencia, Data_Referencia, Devolucao, Num' +
        'ero_Referencia, Movimenta_EstoqueRep, CEST, Valor_BCICMSDest, Al' +
        'iquota_ICMSDest, Valor_ICMSDest, DIFAL_Valor, DIFAL_PercOrig, DI' +
        'FAL_ValorOrig, DIFAL_PercDest, DIFAL_ValorDest, FCP_Aliquota, FC' +
        'P_ValorDest, FCP_ICMSOrig, FCP_ICMSDest, Natureza_Codigo, Valor_' +
        'BCFCPST, Valor_FCPST, Valor_BCFCP, Valor_FCP, Valor_ICMSDesonera' +
        'do, PO, Ordem, Valor_ICMSSubAnt, Aliquota_ICMSSubAnt, Valor_ICMS' +
        'Ant, Valor_CIF, Fator_Cambio, Aliquota_ICMSEntrada, Valor_Pauta,' +
        ' Valor_AFRMM, Valor_BCII, Rateio_FreteTerrNac, Valor_BCDIFAL, Be' +
        'neficio_Fiscal, Valor_ICMSDif, Aliquota_ICMSDif, Aliquota_ICMSRe' +
        'ducao2, Percentual_Beneficio, Valor_ICMSMono, Valor_ICMSMonoRet,' +
        ' Percentual_ICMSMono, Percentual_ICMSMonoRet, Valor_BCICMSMono, ' +
        'Valor_BCICMSMonoRet, Navio, BL, Valor_PISST, Valor_COFINSST, Val' +
        'or_BCICMSPresumido, Aliquota_ICMSPresumido, Valor_ICMSPresumido,' +
        ' Valor_BCDIFALST, DIFAL_ValorST, Codigo_CredPres, Valor_BCPISST,' +
        ' Valor_BCCOFINSST, Valor_IPIDevol, Percentual_IPIDevol, Valor_BC' +
        'IBS, Aliquota_IBS, Valor_IBS, Valor_BCCBS, Aliquota_CBS, Valor_C' +
        'BS, Valor_BCIS, Aliquota_IS, Valor_IS, CSTIBS, CSTCBS, Valor_COF' +
        'INSDiferenca)'
      'VALUES'
      
        '  (:Nota, :Data, :Item, :Sequencia_SISCOMEX, :Codigo_Mercadoria,' +
        ' :Codigo_Fabricante, :Descricao_Mercadoria, :NCM, :EXTIPI, :Unid' +
        'ade_Medida, :Quantidade, :Disponivel, :Valor_Unitario, :Valor_To' +
        'tal, :Aliquota_IPI, :Valor_IPI, :Total_IPI, :CodigoTrib_TabA, :C' +
        'odigoTrib_TabB, :CSTIPI, :CSTPIS, :CSTCOFINS, :Adicao, :Aliquota' +
        '_II, :Valor_II, :Valor_BCICMSOper, :Aliquota_ICMSOper, :Valor_IC' +
        'MSOper, :Valor_BCICMSSub, :Aliquota_ICMSSub, :Valor_ICMSSub, :Al' +
        'iquota_MVA, :Valor_MVA, :Aliquota_ICMSReducao, :Valor_ICMSReduca' +
        'o, :Valor_Seguro, :Valor_Frete, :Valor_Despesa, :Aliquota_PIS, :' +
        'Valor_PIS, :Aliquota_COFINS, :Valor_COFINS, :Peso_Liquido, :Peso' +
        '_Bruto, :Veiculo, :Saida_Entrada, :Movimenta_Inventario, :Movime' +
        'nta_Estoque, :Cancelada, :Modalidade_BCICMS, :Modalidade_BCICMSS' +
        'T, :DI, :Processo, :Valor_IsentasICMS, :Valor_OutrasICMS, :Valor' +
        '_IsentasIPI, :Valor_OutrasIPI, :Lucro, :Lucro_Valor, :Valor_BCIP' +
        'I, :Rateio_ICMSProcesso, :Sequencia, :Nota_Terceiros, :Desconto,' +
        ' :Desconto_Valor, :Apuracao_PISCOFINS, :Aliquota_PISRed, :Aliquo' +
        'ta_COFINSRed, :Aliquota_ICMSIntegral, :Valor_BCMVA, :Valor_Dumpi' +
        'ng, :Finalidade_Mercadoria, :Total_Item, :Rateio_SISCOMEX, :Valo' +
        'r_BCICMSOperApuracao, :Valor_ICMSOperApuracao, :Media_BCR, :Regi' +
        'stro_Adicao, :Quantidade_Original, :Unidade_Original, :Valor_PIS' +
        '2, :Valor_COFINS2, :Tipo_Nota, :Valor_DespesasOutros, :Valor_BCP' +
        'IS, :Total_Impostos, :Aliquota_IRPJ, :Valor_IRPJ, :Aliquota_CSLL' +
        ', :Valor_CSLL, :ICMSST_Anterior, :Comissao, :Comissao_Valor, :NF' +
        'e_Denegada, :Reducao_ICMSST, :Valor_Inventario, :Nota_Referencia' +
        ', :Data_Referencia, :Devolucao, :Numero_Referencia, :Movimenta_E' +
        'stoqueRep, :CEST, :Valor_BCICMSDest, :Aliquota_ICMSDest, :Valor_' +
        'ICMSDest, :DIFAL_Valor, :DIFAL_PercOrig, :DIFAL_ValorOrig, :DIFA' +
        'L_PercDest, :DIFAL_ValorDest, :FCP_Aliquota, :FCP_ValorDest, :FC' +
        'P_ICMSOrig, :FCP_ICMSDest, :Natureza_Codigo, :Valor_BCFCPST, :Va' +
        'lor_FCPST, :Valor_BCFCP, :Valor_FCP, :Valor_ICMSDesonerado, :PO,' +
        ' :Ordem, :Valor_ICMSSubAnt, :Aliquota_ICMSSubAnt, :Valor_ICMSAnt' +
        ', :Valor_CIF, :Fator_Cambio, :Aliquota_ICMSEntrada, :Valor_Pauta' +
        ', :Valor_AFRMM, :Valor_BCII, :Rateio_FreteTerrNac, :Valor_BCDIFA' +
        'L, :Beneficio_Fiscal, :Valor_ICMSDif, :Aliquota_ICMSDif, :Aliquo' +
        'ta_ICMSReducao2, :Percentual_Beneficio, :Valor_ICMSMono, :Valor_' +
        'ICMSMonoRet, :Percentual_ICMSMono, :Percentual_ICMSMonoRet, :Val' +
        'or_BCICMSMono, :Valor_BCICMSMonoRet, :Navio, :BL, :Valor_PISST, ' +
        ':Valor_COFINSST, :Valor_BCICMSPresumido, :Aliquota_ICMSPresumido' +
        ', :Valor_ICMSPresumido, :Valor_BCDIFALST, :DIFAL_ValorST, :Codig' +
        'o_CredPres, :Valor_BCPISST, :Valor_BCCOFINSST, :Valor_IPIDevol, ' +
        ':Percentual_IPIDevol, :Valor_BCIBS, :Aliquota_IBS, :Valor_IBS, :' +
        'Valor_BCCBS, :Aliquota_CBS, :Valor_CBS, :Valor_BCIS, :Aliquota_I' +
        'S, :Valor_IS, :CSTIBS, :CSTCBS, :Valor_COFINSDiferenca)')
    SQLDelete.Strings = (
      'DELETE FROM NotasItens'
      'WHERE'
      
        '  Nota = :Old_Nota AND Data = :Old_Data AND Item = :Old_Item AND' +
        ' Sequencia_SISCOMEX = :Old_Sequencia_SISCOMEX AND Codigo_Mercado' +
        'ria = :Old_Codigo_Mercadoria AND Sequencia = :Old_Sequencia')
    SQLUpdate.Strings = (
      'UPDATE NotasItens'
      'SET'
      
        '  Nota = :Nota, Data = :Data, Item = :Item, Sequencia_SISCOMEX =' +
        ' :Sequencia_SISCOMEX, Codigo_Mercadoria = :Codigo_Mercadoria, Co' +
        'digo_Fabricante = :Codigo_Fabricante, Descricao_Mercadoria = :De' +
        'scricao_Mercadoria, NCM = :NCM, EXTIPI = :EXTIPI, Unidade_Medida' +
        ' = :Unidade_Medida, Quantidade = :Quantidade, Disponivel = :Disp' +
        'onivel, Valor_Unitario = :Valor_Unitario, Valor_Total = :Valor_T' +
        'otal, Aliquota_IPI = :Aliquota_IPI, Valor_IPI = :Valor_IPI, Tota' +
        'l_IPI = :Total_IPI, CodigoTrib_TabA = :CodigoTrib_TabA, CodigoTr' +
        'ib_TabB = :CodigoTrib_TabB, CSTIPI = :CSTIPI, CSTPIS = :CSTPIS, ' +
        'CSTCOFINS = :CSTCOFINS, Adicao = :Adicao, Aliquota_II = :Aliquot' +
        'a_II, Valor_II = :Valor_II, Valor_BCICMSOper = :Valor_BCICMSOper' +
        ', Aliquota_ICMSOper = :Aliquota_ICMSOper, Valor_ICMSOper = :Valo' +
        'r_ICMSOper, Valor_BCICMSSub = :Valor_BCICMSSub, Aliquota_ICMSSub' +
        ' = :Aliquota_ICMSSub, Valor_ICMSSub = :Valor_ICMSSub, Aliquota_M' +
        'VA = :Aliquota_MVA, Valor_MVA = :Valor_MVA, Aliquota_ICMSReducao' +
        ' = :Aliquota_ICMSReducao, Valor_ICMSReducao = :Valor_ICMSReducao' +
        ', Valor_Seguro = :Valor_Seguro, Valor_Frete = :Valor_Frete, Valo' +
        'r_Despesa = :Valor_Despesa, Aliquota_PIS = :Aliquota_PIS, Valor_' +
        'PIS = :Valor_PIS, Aliquota_COFINS = :Aliquota_COFINS, Valor_COFI' +
        'NS = :Valor_COFINS, Peso_Liquido = :Peso_Liquido, Peso_Bruto = :' +
        'Peso_Bruto, Veiculo = :Veiculo, Saida_Entrada = :Saida_Entrada, ' +
        'Movimenta_Inventario = :Movimenta_Inventario, Movimenta_Estoque ' +
        '= :Movimenta_Estoque, Cancelada = :Cancelada, Modalidade_BCICMS ' +
        '= :Modalidade_BCICMS, Modalidade_BCICMSST = :Modalidade_BCICMSST' +
        ', DI = :DI, Processo = :Processo, Valor_IsentasICMS = :Valor_Ise' +
        'ntasICMS, Valor_OutrasICMS = :Valor_OutrasICMS, Valor_IsentasIPI' +
        ' = :Valor_IsentasIPI, Valor_OutrasIPI = :Valor_OutrasIPI, Lucro ' +
        '= :Lucro, Lucro_Valor = :Lucro_Valor, Valor_BCIPI = :Valor_BCIPI' +
        ', Rateio_ICMSProcesso = :Rateio_ICMSProcesso, Sequencia = :Seque' +
        'ncia, Nota_Terceiros = :Nota_Terceiros, Desconto = :Desconto, De' +
        'sconto_Valor = :Desconto_Valor, Apuracao_PISCOFINS = :Apuracao_P' +
        'ISCOFINS, Aliquota_PISRed = :Aliquota_PISRed, Aliquota_COFINSRed' +
        ' = :Aliquota_COFINSRed, Aliquota_ICMSIntegral = :Aliquota_ICMSIn' +
        'tegral, Valor_BCMVA = :Valor_BCMVA, Valor_Dumping = :Valor_Dumpi' +
        'ng, Finalidade_Mercadoria = :Finalidade_Mercadoria, Total_Item =' +
        ' :Total_Item, Rateio_SISCOMEX = :Rateio_SISCOMEX, Valor_BCICMSOp' +
        'erApuracao = :Valor_BCICMSOperApuracao, Valor_ICMSOperApuracao =' +
        ' :Valor_ICMSOperApuracao, Media_BCR = :Media_BCR, Registro_Adica' +
        'o = :Registro_Adicao, Quantidade_Original = :Quantidade_Original' +
        ', Unidade_Original = :Unidade_Original, Valor_PIS2 = :Valor_PIS2' +
        ', Valor_COFINS2 = :Valor_COFINS2, Tipo_Nota = :Tipo_Nota, Valor_' +
        'DespesasOutros = :Valor_DespesasOutros, Valor_BCPIS = :Valor_BCP' +
        'IS, Total_Impostos = :Total_Impostos, Aliquota_IRPJ = :Aliquota_' +
        'IRPJ, Valor_IRPJ = :Valor_IRPJ, Aliquota_CSLL = :Aliquota_CSLL, ' +
        'Valor_CSLL = :Valor_CSLL, ICMSST_Anterior = :ICMSST_Anterior, Co' +
        'missao = :Comissao, Comissao_Valor = :Comissao_Valor, NFe_Denega' +
        'da = :NFe_Denegada, Reducao_ICMSST = :Reducao_ICMSST, Valor_Inve' +
        'ntario = :Valor_Inventario, Nota_Referencia = :Nota_Referencia, ' +
        'Data_Referencia = :Data_Referencia, Devolucao = :Devolucao, Nume' +
        'ro_Referencia = :Numero_Referencia, Movimenta_EstoqueRep = :Movi' +
        'menta_EstoqueRep, CEST = :CEST, Valor_BCICMSDest = :Valor_BCICMS' +
        'Dest, Aliquota_ICMSDest = :Aliquota_ICMSDest, Valor_ICMSDest = :' +
        'Valor_ICMSDest, DIFAL_Valor = :DIFAL_Valor, DIFAL_PercOrig = :DI' +
        'FAL_PercOrig, DIFAL_ValorOrig = :DIFAL_ValorOrig, DIFAL_PercDest' +
        ' = :DIFAL_PercDest, DIFAL_ValorDest = :DIFAL_ValorDest, FCP_Aliq' +
        'uota = :FCP_Aliquota, FCP_ValorDest = :FCP_ValorDest, FCP_ICMSOr' +
        'ig = :FCP_ICMSOrig, FCP_ICMSDest = :FCP_ICMSDest, Natureza_Codig' +
        'o = :Natureza_Codigo, Valor_BCFCPST = :Valor_BCFCPST, Valor_FCPS' +
        'T = :Valor_FCPST, Valor_BCFCP = :Valor_BCFCP, Valor_FCP = :Valor' +
        '_FCP, Valor_ICMSDesonerado = :Valor_ICMSDesonerado, PO = :PO, Or' +
        'dem = :Ordem, Valor_ICMSSubAnt = :Valor_ICMSSubAnt, Aliquota_ICM' +
        'SSubAnt = :Aliquota_ICMSSubAnt, Valor_ICMSAnt = :Valor_ICMSAnt, ' +
        'Valor_CIF = :Valor_CIF, Fator_Cambio = :Fator_Cambio, Aliquota_I' +
        'CMSEntrada = :Aliquota_ICMSEntrada, Valor_Pauta = :Valor_Pauta, ' +
        'Valor_AFRMM = :Valor_AFRMM, Valor_BCII = :Valor_BCII, Rateio_Fre' +
        'teTerrNac = :Rateio_FreteTerrNac, Valor_BCDIFAL = :Valor_BCDIFAL' +
        ', Beneficio_Fiscal = :Beneficio_Fiscal, Valor_ICMSDif = :Valor_I' +
        'CMSDif, Aliquota_ICMSDif = :Aliquota_ICMSDif, Aliquota_ICMSReduc' +
        'ao2 = :Aliquota_ICMSReducao2, Percentual_Beneficio = :Percentual' +
        '_Beneficio, Valor_ICMSMono = :Valor_ICMSMono, Valor_ICMSMonoRet ' +
        '= :Valor_ICMSMonoRet, Percentual_ICMSMono = :Percentual_ICMSMono' +
        ', Percentual_ICMSMonoRet = :Percentual_ICMSMonoRet, Valor_BCICMS' +
        'Mono = :Valor_BCICMSMono, Valor_BCICMSMonoRet = :Valor_BCICMSMon' +
        'oRet, Navio = :Navio, BL = :BL, Valor_PISST = :Valor_PISST, Valo' +
        'r_COFINSST = :Valor_COFINSST, Valor_BCICMSPresumido = :Valor_BCI' +
        'CMSPresumido, Aliquota_ICMSPresumido = :Aliquota_ICMSPresumido, ' +
        'Valor_ICMSPresumido = :Valor_ICMSPresumido, Valor_BCDIFALST = :V' +
        'alor_BCDIFALST, DIFAL_ValorST = :DIFAL_ValorST, Codigo_CredPres ' +
        '= :Codigo_CredPres, Valor_BCPISST = :Valor_BCPISST, Valor_BCCOFI' +
        'NSST = :Valor_BCCOFINSST, Valor_IPIDevol = :Valor_IPIDevol, Perc' +
        'entual_IPIDevol = :Percentual_IPIDevol, Valor_BCIBS = :Valor_BCI' +
        'BS, Aliquota_IBS = :Aliquota_IBS, Valor_IBS = :Valor_IBS, Valor_' +
        'BCCBS = :Valor_BCCBS, Aliquota_CBS = :Aliquota_CBS, Valor_CBS = ' +
        ':Valor_CBS, Valor_BCIS = :Valor_BCIS, Aliquota_IS = :Aliquota_IS' +
        ', Valor_IS = :Valor_IS, CSTIBS = :CSTIBS, CSTCBS = :CSTCBS, Valo' +
        'r_COFINSDiferenca = :Valor_COFINSDiferenca'
      'WHERE'
      
        '  Nota = :Old_Nota AND Data = :Old_Data AND Item = :Old_Item AND' +
        ' Sequencia_SISCOMEX = :Old_Sequencia_SISCOMEX AND Codigo_Mercado' +
        'ria = :Old_Codigo_Mercadoria AND Sequencia = :Old_Sequencia')
    SQLRefresh.Strings = (
      
        'SELECT Nota, Data, Item, Sequencia_SISCOMEX, Codigo_Mercadoria, ' +
        'Codigo_Fabricante, Descricao_Mercadoria, NCM, EXTIPI, Unidade_Me' +
        'dida, Quantidade, Disponivel, Valor_Unitario, Valor_Total, Aliqu' +
        'ota_IPI, Valor_IPI, Total_IPI, CodigoTrib_TabA, CodigoTrib_TabB,' +
        ' CSTIPI, CSTPIS, CSTCOFINS, Adicao, Aliquota_II, Valor_II, Valor' +
        '_BCICMSOper, Aliquota_ICMSOper, Valor_ICMSOper, Valor_BCICMSSub,' +
        ' Aliquota_ICMSSub, Valor_ICMSSub, Aliquota_MVA, Valor_MVA, Aliqu' +
        'ota_ICMSReducao, Valor_ICMSReducao, Valor_Seguro, Valor_Frete, V' +
        'alor_Despesa, Aliquota_PIS, Valor_PIS, Aliquota_COFINS, Valor_CO' +
        'FINS, Peso_Liquido, Peso_Bruto, Veiculo, Saida_Entrada, Moviment' +
        'a_Inventario, Movimenta_Estoque, Cancelada, Modalidade_BCICMS, M' +
        'odalidade_BCICMSST, DI, Processo, Valor_IsentasICMS, Valor_Outra' +
        'sICMS, Valor_IsentasIPI, Valor_OutrasIPI, Lucro, Lucro_Valor, Va' +
        'lor_BCIPI, Rateio_ICMSProcesso, Sequencia, Nota_Terceiros, Desco' +
        'nto, Desconto_Valor, Apuracao_PISCOFINS, Aliquota_PISRed, Aliquo' +
        'ta_COFINSRed, Aliquota_ICMSIntegral, Valor_BCMVA, Valor_Dumping,' +
        ' Finalidade_Mercadoria, Total_Item, Rateio_SISCOMEX, Valor_BCICM' +
        'SOperApuracao, Valor_ICMSOperApuracao, Media_BCR, Registro_Adica' +
        'o, Quantidade_Original, Unidade_Original, Valor_PIS2, Valor_COFI' +
        'NS2, Tipo_Nota, Valor_DespesasOutros, Valor_BCPIS, Total_Imposto' +
        's, Aliquota_IRPJ, Valor_IRPJ, Aliquota_CSLL, Valor_CSLL, ICMSST_' +
        'Anterior, Comissao, Comissao_Valor, NFe_Denegada, Reducao_ICMSST' +
        ', Valor_Inventario, Nota_Referencia, Data_Referencia, Devolucao,' +
        ' Numero_Referencia, Movimenta_EstoqueRep, CEST, Valor_BCICMSDest' +
        ', Aliquota_ICMSDest, Valor_ICMSDest, DIFAL_Valor, DIFAL_PercOrig' +
        ', DIFAL_ValorOrig, DIFAL_PercDest, DIFAL_ValorDest, FCP_Aliquota' +
        ', FCP_ValorDest, FCP_ICMSOrig, FCP_ICMSDest, Natureza_Codigo, Va' +
        'lor_BCFCPST, Valor_FCPST, Valor_BCFCP, Valor_FCP, Valor_ICMSDeso' +
        'nerado, PO, Ordem, Valor_ICMSSubAnt, Aliquota_ICMSSubAnt, Valor_' +
        'ICMSAnt, Valor_CIF, Fator_Cambio, Aliquota_ICMSEntrada, Valor_Pa' +
        'uta, Valor_AFRMM, Valor_BCII, Rateio_FreteTerrNac, Valor_BCDIFAL' +
        ', Beneficio_Fiscal, Valor_ICMSDif, Aliquota_ICMSDif, Aliquota_IC' +
        'MSReducao2, Percentual_Beneficio, Valor_ICMSMono, Valor_ICMSMono' +
        'Ret, Percentual_ICMSMono, Percentual_ICMSMonoRet, Valor_BCICMSMo' +
        'no, Valor_BCICMSMonoRet, Navio, BL, Valor_PISST, Valor_COFINSST,' +
        ' Valor_BCICMSPresumido, Aliquota_ICMSPresumido, Valor_ICMSPresum' +
        'ido, Valor_BCDIFALST, DIFAL_ValorST, Codigo_CredPres, Valor_BCPI' +
        'SST, Valor_BCCOFINSST, Valor_IPIDevol, Percentual_IPIDevol, Valo' +
        'r_BCIBS, Aliquota_IBS, Valor_IBS, Valor_BCCBS, Aliquota_CBS, Val' +
        'or_CBS, Valor_BCIS, Aliquota_IS, Valor_IS, CSTIBS, CSTCBS, Valor' +
        '_COFINSDiferenca FROM NotasItens'
      'WHERE'
      
        '  Nota = :Nota AND Data = :Data AND Item = :Item AND Sequencia_S' +
        'ISCOMEX = :Sequencia_SISCOMEX AND Codigo_Mercadoria = :Codigo_Me' +
        'rcadoria AND Sequencia = :Sequencia')
    SQLLock.Strings = (
      'SELECT * FROM NotasItens'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      
        '  Nota = :Old_Nota AND Data = :Old_Data AND Item = :Old_Item AND' +
        ' Sequencia_SISCOMEX = :Old_Sequencia_SISCOMEX AND Codigo_Mercado' +
        'ria = :Old_Codigo_Mercadoria AND Sequencia = :Old_Sequencia')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM NotasItens'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT top 10 *'
      'FROM   NotasItens '
      '')
    FetchRows = 1
    Left = 131
    Top = 16
    object NotasItensNota: TIntegerField
      DisplayWidth = 8
      FieldName = 'Nota'
      Origin = 'NotasItens.Nota'
    end
    object NotasItensData: TDateTimeField
      DisplayWidth = 8
      FieldName = 'Data'
      Origin = 'NotasItens.Data'
    end
    object NotasItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'NotasItens.Item'
      DisplayFormat = '0000'
    end
    object NotasItensDescricao_Mercadoria: TMemoField
      FieldName = 'Descricao_Mercadoria'
      Origin = 'NotasItens.Descricao_Mercadoria'
      OnGetText = NotasItensDescricao_MercadoriaGetText
      BlobType = ftMemo
    end
    object NotasItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NotasItens.NCM'
      EditMask = '####.##.##;0; '
      FixedChar = True
      Size = 8
    end
    object NotasItensUnidade_Medida: TStringField
      FieldName = 'Unidade_Medida'
      Origin = 'NotasItens.Unidade_Medida'
      FixedChar = True
      Size = 3
    end
    object NotasItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'NotasItens.Quantidade'
      DisplayFormat = '###,##0.000'
    end
    object NotasItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = 'NotasItens.Valor_Unitario'
      DisplayFormat = '###,###,###,##0.0000'
      EditFormat = '###,###,###,##0.0000'
    end
    object NotasItensValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'NotasItens.Valor_Total'
      DisplayFormat = ',##0.0000'
      EditFormat = ',##0.0000'
      currency = False
    end
    object NotasItensAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      Origin = 'NotasItens.Aliquota_IPI'
    end
    object NotasItensValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'NotasItens.Valor_IPI'
    end
    object NotasItensTotal_IPI: TCurrencyField
      FieldName = 'Total_IPI'
      Origin = 'NotasItens.Total_IPI'
    end
    object NotasItensCodigoTrib_TabA: TStringField
      FieldName = 'CodigoTrib_TabA'
      Origin = 'NotasItens.CodigoTrib_TabA'
      FixedChar = True
      Size = 2
    end
    object NotasItensCodigoTrib_TabB: TStringField
      FieldName = 'CodigoTrib_TabB'
      Origin = 'NotasItens.CodigoTrib_TabB'
      FixedChar = True
      Size = 3
    end
    object NotasItensAdicao: TSmallintField
      FieldName = 'Adicao'
      Origin = 'NotasItens.Adicao'
    end
    object NotasItensAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
      Origin = 'NotasItens.Aliquota_II'
    end
    object NotasItensValor_II: TCurrencyField
      FieldName = 'Valor_II'
      Origin = 'NotasItens.Valor_II'
    end
    object NotasItensValor_BCICMSOper: TCurrencyField
      FieldName = 'Valor_BCICMSOper'
      Origin = 'NotasItens.Valor_BCICMSOper'
    end
    object NotasItensAliquota_ICMSOper: TFloatField
      FieldName = 'Aliquota_ICMSOper'
      Origin = 'NotasItens.Aliquota_ICMSOper'
    end
    object NotasItensValor_ICMSOper: TCurrencyField
      FieldName = 'Valor_ICMSOper'
      Origin = 'NotasItens.Valor_ICMSOper'
    end
    object NotasItensValor_BCICMSSub: TCurrencyField
      FieldName = 'Valor_BCICMSSub'
      Origin = 'NotasItens.Valor_BCICMSSub'
    end
    object NotasItensAliquota_ICMSSub: TFloatField
      FieldName = 'Aliquota_ICMSSub'
      Origin = 'NotasItens.Aliquota_ICMSSub'
    end
    object NotasItensValor_ICMSSub: TCurrencyField
      FieldName = 'Valor_ICMSSub'
      Origin = 'NotasItens.Valor_ICMSSub'
    end
    object NotasItensAliquota_MVA: TFloatField
      FieldName = 'Aliquota_MVA'
      Origin = 'NotasItens.Aliquota_MVA'
    end
    object NotasItensValor_MVA: TCurrencyField
      FieldName = 'Valor_MVA'
      Origin = 'NotasItens.Valor_MVA'
    end
    object NotasItensAliquota_ICMSReducao: TFloatField
      FieldName = 'Aliquota_ICMSReducao'
      Origin = 'NotasItens.Aliquota_ICMSReducao'
    end
    object NotasItensValor_ICMSReducao: TCurrencyField
      FieldName = 'Valor_ICMSReducao'
      Origin = 'NotasItens.Valor_ICMSReducao'
    end
    object NotasItensValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
      Origin = 'NotasItens.Valor_Seguro'
    end
    object NotasItensValor_Frete: TFloatField
      FieldName = 'Valor_Frete'
      Origin = 'NotasItens.Valor_Frete'
    end
    object NotasItensValor_Despesa: TFloatField
      FieldName = 'Valor_Despesa'
      Origin = 'NotasItens.Valor_Despesa'
    end
    object NotasItensValor_PIS: TFloatField
      FieldName = 'Valor_PIS'
      Origin = 'NotasItens.Valor_PIS'
    end
    object NotasItensValor_COFINS: TFloatField
      FieldName = 'Valor_COFINS'
      Origin = 'NotasItens.Valor_COFINS'
    end
    object NotasItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'NotasItens.Peso_Liquido'
    end
    object NotasItensPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'NotasItens.Peso_Bruto'
    end
    object NotasItensDisponivel: TFloatField
      FieldName = 'Disponivel'
      Origin = 'NotasItens.Disponivel'
      DisplayFormat = '###,##0.000'
    end
    object NotasItensVeiculo: TBooleanField
      FieldName = 'Veiculo'
      Origin = 'NotasItens.Veiculo'
    end
    object NotasItensSaida_Entrada: TSmallintField
      FieldName = 'Saida_Entrada'
      Origin = 'NotasItens.Saida_Entrada'
    end
    object NotasItensMovimenta_Inventario: TBooleanField
      FieldName = 'Movimenta_Inventario'
      Origin = 'NotasItens.Movimenta_Inventario'
    end
    object NotasItensMovimenta_Estoque: TBooleanField
      FieldName = 'Movimenta_Estoque'
      Origin = 'NotasItens.Movimenta_Estoque'
    end
    object NotasItensCancelada: TBooleanField
      FieldName = 'Cancelada'
      Origin = 'NotasItens.Cancelada'
    end
    object NotasItensCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'NotasItens.CSTIPI'
      FixedChar = True
      Size = 2
    end
    object NotasItensCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'NotasItens.CSTPIS'
      FixedChar = True
      Size = 2
    end
    object NotasItensCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'NotasItens.CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object NotasItensEXTIPI: TSmallintField
      FieldName = 'EXTIPI'
      Origin = 'NotasItens.EXTIPI'
    end
    object NotasItensModalidade_BCICMS: TSmallintField
      FieldName = 'Modalidade_BCICMS'
      Origin = 'NotasItens.Modalidade_BCICMS'
    end
    object NotasItensAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'NotasItens.Aliquota_COFINS'
    end
    object NotasItensModalidade_BCICMSST: TSmallintField
      FieldName = 'Modalidade_BCICMSST'
      Origin = 'NotasItens.Modalidade_BCICMSST'
    end
    object NotasItensAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'NotasItens.Aliquota_PIS'
    end
    object NotasItensProcesso: TStringField
      DisplayWidth = 10
      FieldName = 'Processo'
      Origin = 'NotasItens.Processo'
      Size = 15
    end
    object NotasItensDI: TStringField
      FieldName = 'DI'
      Origin = 'NotasItens.DI'
      Size = 15
    end
    object NotasItensSequencia_SISCOMEX: TSmallintField
      FieldName = 'Sequencia_SISCOMEX'
      Origin = 'NotasItens.Sequencia_SISCOMEX'
    end
    object NotasItensCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Origin = 'NotasItens.Codigo_Fabricante'
    end
    object NotasItensValor_IsentasICMS: TCurrencyField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'NotasItens.Valor_IsentasICMS'
    end
    object NotasItensValor_OutrasICMS: TCurrencyField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'NotasItens.Valor_OutrasICMS'
    end
    object NotasItensValor_IsentasIPI: TCurrencyField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'NotasItens.Valor_IsentasIPI'
    end
    object NotasItensValor_OutrasIPI: TCurrencyField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'NotasItens.Valor_OutrasIPI'
    end
    object NotasItensLucro: TFloatField
      FieldName = 'Lucro'
      Origin = 'NotasItens.Lucro'
    end
    object NotasItensLucro_Valor: TCurrencyField
      FieldName = 'Lucro_Valor'
      Origin = 'NotasItens.Lucro_Valor'
    end
    object NotasItensValor_BCIPI: TCurrencyField
      FieldName = 'Valor_BCIPI'
      Origin = 'NotasItens.Valor_BCIPI'
    end
    object NotasItensRateio_ICMSProcesso: TFloatField
      FieldName = 'Rateio_ICMSProcesso'
      Origin = 'NotasItens.Rateio_ICMSProcesso'
    end
    object NotasItensNota_Terceiros: TIntegerField
      FieldName = 'Nota_Terceiros'
      Origin = 'NotasItens.Nota_Terceiros'
    end
    object NotasItensSequencia: TSmallintField
      FieldName = 'Sequencia'
      Origin = 'NotasItens.Sequencia'
    end
    object NotasItensDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'NotasItens.Desconto'
    end
    object NotasItensDesconto_Valor: TCurrencyField
      FieldName = 'Desconto_Valor'
      Origin = 'NotasItens.Desconto_Valor'
    end
    object NotasItensApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'NotasItens.Apuracao_PISCOFINS'
    end
    object NotasItensAliquota_PISRed: TFloatField
      FieldName = 'Aliquota_PISRed'
      Origin = 'NotasItens.Aliquota_PISRed'
    end
    object NotasItensAliquota_COFINSRed: TFloatField
      FieldName = 'Aliquota_COFINSRed'
      Origin = 'NotasItens.Aliquota_COFINSRed'
    end
    object NotasItensAliquota_ICMSIntegral: TFloatField
      FieldName = 'Aliquota_ICMSIntegral'
      Origin = 'NotasItens.Aliquota_ICMSIntegral'
    end
    object NotasItensValor_BCMVA: TFloatField
      FieldName = 'Valor_BCMVA'
      Origin = 'NotasItens.Valor_BCMVA'
    end
    object NotasItensValor_Dumping: TCurrencyField
      FieldName = 'Valor_Dumping'
      Origin = 'NotasItens.Valor_Dumping'
    end
    object NotasItensFinalidade_Mercadoria: TSmallintField
      FieldName = 'Finalidade_Mercadoria'
      Origin = 'NotasItens.Finalidade_Mercadoria'
    end
    object NotasItensTotal_Item: TCurrencyField
      FieldName = 'Total_Item'
      Origin = 'NotasItens.Total_Item'
    end
    object NotasItensRateio_SISCOMEX: TFloatField
      FieldName = 'Rateio_SISCOMEX'
      Origin = 'NotasItens.Rateio_SISCOMEX'
    end
    object NotasItensValor_BCICMSOperApuracao: TCurrencyField
      FieldName = 'Valor_BCICMSOperApuracao'
      Origin = 'NotasItens.Valor_BCICMSOperApuracao'
    end
    object NotasItensValor_ICMSOperApuracao: TCurrencyField
      FieldName = 'Valor_ICMSOperApuracao'
      Origin = 'NotasItens.Valor_ICMSOperApuracao'
    end
    object NotasItensMedia_BCR: TCurrencyField
      FieldName = 'Media_BCR'
      Origin = 'NotasItens.Media_BCR'
    end
    object NotasItensRegistro_Adicao: TIntegerField
      FieldName = 'Registro_Adicao'
      Origin = 'NotasItens.Registro_Adicao'
    end
    object NotasItensQuantidade_Original: TFloatField
      FieldName = 'Quantidade_Original'
      Origin = 'NotasItens.Quantidade_Original'
      DisplayFormat = '###,##0.000'
    end
    object NotasItensUnidade_Original: TStringField
      FieldName = 'Unidade_Original'
      Origin = 'NotasItens.Unidade_Original'
      Size = 3
    end
    object NotasItensValor_PIS2: TFloatField
      FieldName = 'Valor_PIS2'
      Origin = 'NotasItens.Valor_PIS2'
    end
    object NotasItensValor_COFINS2: TFloatField
      FieldName = 'Valor_COFINS2'
      Origin = 'NotasItens.Valor_COFINS2'
    end
    object NotasItensTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
      Origin = 'NotasItens.Tipo_Nota'
    end
    object NotasItensValor_DespesasOutros: TFloatField
      FieldName = 'Valor_DespesasOutros'
      Origin = 'NotasItens.Valor_DespesasOutros'
    end
    object NotasItensValor_BCPIS: TCurrencyField
      FieldName = 'Valor_BCPIS'
      Origin = 'NotasItens.Valor_BCPIS'
      DisplayFormat = ',##0.00'
    end
    object NotasItensTotal_Impostos: TCurrencyField
      FieldName = 'Total_Impostos'
      Origin = 'NotasItens.Total_Impostos'
    end
    object NotasItensAliquota_IRPJ: TFloatField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'NotasItens.Aliquota_IRPJ'
    end
    object NotasItensValor_IRPJ: TCurrencyField
      FieldName = 'Valor_IRPJ'
      Origin = 'NotasItens.Valor_IRPJ'
    end
    object NotasItensAliquota_CSLL: TFloatField
      FieldName = 'Aliquota_CSLL'
      Origin = 'NotasItens.Aliquota_CSLL'
    end
    object NotasItensValor_CSLL: TCurrencyField
      FieldName = 'Valor_CSLL'
      Origin = 'NotasItens.Valor_CSLL'
    end
    object NotasItensICMSST_Anterior: TBooleanField
      FieldName = 'ICMSST_Anterior'
      Origin = 'NotasItens.ICMSST_Anterior'
    end
    object NotasItensComissao: TFloatField
      FieldName = 'Comissao'
      Origin = 'NotasItens.Comissao'
    end
    object NotasItensComissao_Valor: TCurrencyField
      FieldName = 'Comissao_Valor'
      Origin = 'NotasItens.Comissao_Valor'
    end
    object NotasItensNFe_Denegada: TBooleanField
      FieldName = 'NFe_Denegada'
      Origin = 'NotasItens.NFe_Denegada'
    end
    object NotasItensReducao_ICMSST: TFloatField
      FieldName = 'Reducao_ICMSST'
      Origin = 'NotasItens.Reducao_ICMSST'
    end
    object NotasItensValor_Inventario: TFloatField
      FieldName = 'Valor_Inventario'
      Origin = 'NotasItens.Valor_Inventario'
      DisplayFormat = ',##0.00'
    end
    object NotasItensNota_Referencia: TStringField
      FieldName = 'Nota_Referencia'
      Origin = 'NotasItens.Nota_Referencia'
      Size = 44
    end
    object NotasItensData_Referencia: TDateTimeField
      FieldName = 'Data_Referencia'
      Origin = 'NotasItens.Data_Referencia'
    end
    object NotasItensDevolucao: TBooleanField
      FieldName = 'Devolucao'
      Origin = 'NotasItens.Devolucao'
    end
    object NotasItensNumero_Referencia: TIntegerField
      FieldName = 'Numero_Referencia'
      Origin = 'NotasItens.Numero_Referencia'
    end
    object NotasItensMovimenta_EstoqueRep: TBooleanField
      FieldName = 'Movimenta_EstoqueRep'
      Origin = 'NotasItens.Movimenta_EstoqueRep'
    end
    object NotasItensCEST: TStringField
      FieldName = 'CEST'
      Origin = 'NotasItens.CEST'
      Size = 7
    end
    object NotasItensValor_BCICMSDest: TCurrencyField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'NotasItens.Valor_BCICMSDest'
    end
    object NotasItensAliquota_ICMSDest: TFloatField
      FieldName = 'Aliquota_ICMSDest'
      Origin = 'NotasItens.Aliquota_ICMSDest'
    end
    object NotasItensValor_ICMSDest: TCurrencyField
      FieldName = 'Valor_ICMSDest'
      Origin = 'NotasItens.Valor_ICMSDest'
    end
    object NotasItensDIFAL_PercOrig: TFloatField
      FieldName = 'DIFAL_PercOrig'
      Origin = 'NotasItens.DIFAL_PercOrig'
    end
    object NotasItensDIFAL_ValorOrig: TCurrencyField
      FieldName = 'DIFAL_ValorOrig'
      Origin = 'NotasItens.DIFAL_ValorOrig'
    end
    object NotasItensDIFAL_PercDest: TFloatField
      FieldName = 'DIFAL_PercDest'
      Origin = 'NotasItens.DIFAL_PercDest'
    end
    object NotasItensDIFAL_ValorDest: TCurrencyField
      FieldName = 'DIFAL_ValorDest'
      Origin = 'NotasItens.DIFAL_ValorDest'
    end
    object NotasItensFCP_Aliquota: TFloatField
      FieldName = 'FCP_Aliquota'
      Origin = 'NotasItens.FCP_Aliquota'
    end
    object NotasItensFCP_ValorDest: TCurrencyField
      FieldName = 'FCP_ValorDest'
      Origin = 'NotasItens.FCP_ValorDest'
    end
    object NotasItensFCP_ICMSOrig: TFloatField
      FieldName = 'FCP_ICMSOrig'
      Origin = 'NotasItens.FCP_ICMSOrig'
    end
    object NotasItensFCP_ICMSDest: TCurrencyField
      FieldName = 'FCP_ICMSDest'
      Origin = 'NotasItens.FCP_ICMSDest'
    end
    object NotasItensDIFAL_Valor: TCurrencyField
      FieldName = 'DIFAL_Valor'
      Origin = 'NotasItens.DIFAL_Valor'
    end
    object NotasItensNatureza_Codigo: TStringField
      FieldName = 'Natureza_Codigo'
      Origin = 'NotasItens.Natureza_Codigo'
      Size = 4
    end
    object NotasItensValor_BCFCPST: TCurrencyField
      FieldName = 'Valor_BCFCPST'
      Origin = 'NotasItens.Valor_BCFCPST'
    end
    object NotasItensValor_FCPST: TCurrencyField
      FieldName = 'Valor_FCPST'
      Origin = 'NotasItens.Valor_FCPST'
    end
    object NotasItensValor_BCFCP: TCurrencyField
      FieldName = 'Valor_BCFCP'
      Origin = 'NotasItens.Valor_BCFCP'
    end
    object NotasItensValor_FCP: TCurrencyField
      FieldName = 'Valor_FCP'
      Origin = 'NotasItens.Valor_FCP'
    end
    object NotasItensValor_ICMSDesonerado: TCurrencyField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'NotasItens.Valor_ICMSDesonerado'
    end
    object NotasItensPO: TStringField
      FieldName = 'PO'
      Origin = 'NotasItens.PO'
      Size = 15
    end
    object NotasItensOrdem: TIntegerField
      FieldName = 'Ordem'
      Origin = 'NotasItens.Ordem'
    end
    object NotasItensValor_ICMSSubAnt: TCurrencyField
      FieldName = 'Valor_ICMSSubAnt'
      Origin = 'NotasItens.Valor_ICMSSubAnt'
      DisplayFormat = ',##0.0000'
    end
    object NotasItensAliquota_ICMSSubAnt: TFloatField
      FieldName = 'Aliquota_ICMSSubAnt'
      Origin = 'NotasItens.Aliquota_ICMSSubAnt'
      DisplayFormat = '##0.##'
    end
    object NotasItensValor_ICMSAnt: TCurrencyField
      FieldName = 'Valor_ICMSAnt'
      Origin = 'NotasItens.Valor_ICMSAnt'
      DisplayFormat = ',##0.0000'
    end
    object NotasItensValor_CIF: TCurrencyField
      FieldName = 'Valor_CIF'
      Origin = 'NotasItens.Valor_CIF'
    end
    object NotasItensFator_Cambio: TFloatField
      FieldName = 'Fator_Cambio'
      Origin = 'NotasItens.Fator_Cambio'
    end
    object NotasItensValor_Pauta: TCurrencyField
      FieldName = 'Valor_Pauta'
      Origin = 'NotasItens.Valor_Pauta'
    end
    object NotasItensAliquota_ICMSEntrada: TFloatField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'NotasItens.Aliquota_ICMSEntrada'
    end
    object NotasItensValor_BCII: TCurrencyField
      FieldName = 'Valor_BCII'
    end
    object NotasItensRateio_FreteTerrNac: TFloatField
      FieldName = 'Rateio_FreteTerrNac'
    end
    object NotasItensValor_AFRMM: TFloatField
      FieldName = 'Valor_AFRMM'
    end
    object NotasItensValor_BCDIFAL: TCurrencyField
      FieldName = 'Valor_BCDIFAL'
    end
    object NotasItensValor_ICMSDif: TCurrencyField
      FieldName = 'Valor_ICMSDif'
    end
    object NotasItensAliquota_ICMSDif: TFloatField
      FieldName = 'Aliquota_ICMSDif'
    end
    object NotasItensAliquota_ICMSReducao2: TFloatField
      FieldName = 'Aliquota_ICMSReducao2'
    end
    object NotasItensPercentual_Beneficio: TFloatField
      FieldName = 'Percentual_Beneficio'
    end
    object NotasItensValor_ICMSMono: TCurrencyField
      FieldName = 'Valor_ICMSMono'
    end
    object NotasItensValor_ICMSMonoRet: TCurrencyField
      FieldName = 'Valor_ICMSMonoRet'
    end
    object NotasItensPercentual_ICMSMono: TFloatField
      FieldName = 'Percentual_ICMSMono'
    end
    object NotasItensPercentual_ICMSMonoRet: TFloatField
      FieldName = 'Percentual_ICMSMonoRet'
    end
    object NotasItensValor_BCICMSMono: TCurrencyField
      FieldName = 'Valor_BCICMSMono'
    end
    object NotasItensValor_BCICMSMonoRet: TCurrencyField
      FieldName = 'Valor_BCICMSMonoRet'
    end
    object NotasItensNavio: TIntegerField
      FieldName = 'Navio'
    end
    object NotasItensBL: TStringField
      FieldName = 'BL'
      Size = 15
    end
    object NotasItensValor_PISST: TCurrencyField
      FieldName = 'Valor_PISST'
    end
    object NotasItensValor_COFINSST: TCurrencyField
      FieldName = 'Valor_COFINSST'
    end
    object NotasItensValor_BCICMSPresumido: TCurrencyField
      FieldName = 'Valor_BCICMSPresumido'
    end
    object NotasItensValor_ICMSPresumido: TCurrencyField
      FieldName = 'Valor_ICMSPresumido'
    end
    object NotasItensAliquota_ICMSPresumido: TFloatField
      FieldName = 'Aliquota_ICMSPresumido'
    end
    object NotasItensValor_BCDIFALST: TCurrencyField
      FieldName = 'Valor_BCDIFALST'
    end
    object NotasItensDIFAL_ValorST: TCurrencyField
      FieldName = 'DIFAL_ValorST'
    end
    object NotasItensBeneficio_Fiscal: TStringField
      FieldName = 'Beneficio_Fiscal'
      Size = 8
    end
    object NotasItensCodigo_CredPres: TStringField
      FieldName = 'Codigo_CredPres'
      Size = 8
    end
    object NotasItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
    end
    object NotasItensValor_BCPISST: TCurrencyField
      FieldName = 'Valor_BCPISST'
    end
    object NotasItensValor_BCCOFINSST: TCurrencyField
      FieldName = 'Valor_BCCOFINSST'
    end
    object NotasItensValor_IPIDevol: TCurrencyField
      FieldName = 'Valor_IPIDevol'
    end
    object NotasItensPercentual_IPIDevol: TFloatField
      FieldName = 'Percentual_IPIDevol'
    end
    object NotasItensValor_BCIBS: TCurrencyField
      FieldName = 'Valor_BCIBS'
    end
    object NotasItensAliquota_IBS: TFloatField
      FieldName = 'Aliquota_IBS'
    end
    object NotasItensValor_IBS: TCurrencyField
      FieldName = 'Valor_IBS'
    end
    object NotasItensValor_BCCBS: TCurrencyField
      FieldName = 'Valor_BCCBS'
    end
    object NotasItensAliquota_CBS: TFloatField
      FieldName = 'Aliquota_CBS'
    end
    object NotasItensValor_CBS: TCurrencyField
      FieldName = 'Valor_CBS'
    end
    object NotasItensValor_BCIS: TCurrencyField
      FieldName = 'Valor_BCIS'
    end
    object NotasItensAliquota_IS: TFloatField
      FieldName = 'Aliquota_IS'
    end
    object NotasItensValor_IS: TCurrencyField
      FieldName = 'Valor_IS'
    end
    object NotasItensCSTIBS: TStringField
      FieldName = 'CSTIBS'
      Size = 3
    end
    object NotasItensCSTCBS: TStringField
      FieldName = 'CSTCBS'
      Size = 3
    end
    object NotasItensValor_COFINSDiferenca: TCurrencyField
      FieldName = 'Valor_COFINSDiferenca'
    end
  end
  object dsNotasTerceirosItens: TDataSource
    DataSet = NotasTerceirosItens
    Left = 309
    Top = 64
  end
  object NotasTerceirosItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasTerceirosItens'
      
        '  (Nota, Item, Data_Emissao, Data_Entrada, Processo, Fornecedor,' +
        ' Natureza_Codigo, Codigo_Mercadoria, Descricao_Mercadoria, Adica' +
        'o, NCM, Unidade_Medida, CodigoTrib_TabA, CodigoTrib_TabB, Quanti' +
        'dade, Disponivel, Valor_Unitario, Valor_Desconto, Valor_Liquido,' +
        ' Aliquota_ICMSOper, Valor_BCICMSOper, Valor_ICMSOper, Valor_Isen' +
        'tasICMS, Valor_OutrasICMS, Gera_Registro88, Aliquota_ICMSSub, Va' +
        'lor_BCICMSSub, Valor_ICMSSub, Aliquota_IPI, Valor_IPI, Valor_BCI' +
        'PI, Valor_OutrasIPI, Valor_IsentasIPI, Peso_Liquido, Peso_Bruto,' +
        ' Tipo, Aliquota_PIS, Valor_PIS, Aliquota_COFINS, Valor_COFINS, C' +
        'onsumo_Energia, CIAP_BCICMS, CIAP_AliquotaICMS, CIAP_ValorICMS, ' +
        'CIAP_Parcela, CST_IPI, CST_PIS, CST_COFINS, Nota_Referencia, Dat' +
        'a_Referencia, Movimenta_Estoque, DI, Movimenta_Inventario, Inven' +
        'tario_Terceiros, Apuracao_PISCOFINS, EXTIPI, CIAP_TipoItem, Refe' +
        'rencia_Fiscal, Sequencia_SISCOMEX, Registro_Adicao, Valor_Unitar' +
        'ioOrig, Valor_LiquidoOrig, Aliquota_MVA, Item_Referencia, Valor_' +
        'ICMSOperOrig, Valor_ICMSSubOrig, Valor_PISOrig, Valor_COFINSOrig' +
        ', Valor_IPIOrig, Valor_Inventario, Valor_BCPIS, Valor_BCCOFINS, ' +
        'CEST, Aliquota_PISOrig, Aliquota_COFINSOrig, Movimenta_EstoqueRe' +
        'p, Valor_Frete, Valor_BCICMSSubOrig, Trava_ValorInv, Valor_Despe' +
        'sa, Navio, Valor_IR, Valor_CSLL, Valor_INSS, Valor_BCIBS, Aliquo' +
        'ta_IBS, Valor_IBS, Valor_BCCBS, Aliquota_CBS, Valor_CBS, Valor_B' +
        'CIS, Aliquota_IS, Valor_IS, CSTIBS, CSTCBS)'
      'VALUES'
      
        '  (:Nota, :Item, :Data_Emissao, :Data_Entrada, :Processo, :Forne' +
        'cedor, :Natureza_Codigo, :Codigo_Mercadoria, :Descricao_Mercador' +
        'ia, :Adicao, :NCM, :Unidade_Medida, :CodigoTrib_TabA, :CodigoTri' +
        'b_TabB, :Quantidade, :Disponivel, :Valor_Unitario, :Valor_Descon' +
        'to, :Valor_Liquido, :Aliquota_ICMSOper, :Valor_BCICMSOper, :Valo' +
        'r_ICMSOper, :Valor_IsentasICMS, :Valor_OutrasICMS, :Gera_Registr' +
        'o88, :Aliquota_ICMSSub, :Valor_BCICMSSub, :Valor_ICMSSub, :Aliqu' +
        'ota_IPI, :Valor_IPI, :Valor_BCIPI, :Valor_OutrasIPI, :Valor_Isen' +
        'tasIPI, :Peso_Liquido, :Peso_Bruto, :Tipo, :Aliquota_PIS, :Valor' +
        '_PIS, :Aliquota_COFINS, :Valor_COFINS, :Consumo_Energia, :CIAP_B' +
        'CICMS, :CIAP_AliquotaICMS, :CIAP_ValorICMS, :CIAP_Parcela, :CST_' +
        'IPI, :CST_PIS, :CST_COFINS, :Nota_Referencia, :Data_Referencia, ' +
        ':Movimenta_Estoque, :DI, :Movimenta_Inventario, :Inventario_Terc' +
        'eiros, :Apuracao_PISCOFINS, :EXTIPI, :CIAP_TipoItem, :Referencia' +
        '_Fiscal, :Sequencia_SISCOMEX, :Registro_Adicao, :Valor_UnitarioO' +
        'rig, :Valor_LiquidoOrig, :Aliquota_MVA, :Item_Referencia, :Valor' +
        '_ICMSOperOrig, :Valor_ICMSSubOrig, :Valor_PISOrig, :Valor_COFINS' +
        'Orig, :Valor_IPIOrig, :Valor_Inventario, :Valor_BCPIS, :Valor_BC' +
        'COFINS, :CEST, :Aliquota_PISOrig, :Aliquota_COFINSOrig, :Movimen' +
        'ta_EstoqueRep, :Valor_Frete, :Valor_BCICMSSubOrig, :Trava_ValorI' +
        'nv, :Valor_Despesa, :Navio, :Valor_IR, :Valor_CSLL, :Valor_INSS,' +
        ' :Valor_BCIBS, :Aliquota_IBS, :Valor_IBS, :Valor_BCCBS, :Aliquot' +
        'a_CBS, :Valor_CBS, :Valor_BCIS, :Aliquota_IS, :Valor_IS, :CSTIBS' +
        ', :CSTCBS)')
    SQLDelete.Strings = (
      'DELETE FROM NotasTerceirosItens'
      'WHERE'
      
        '  Nota = :Old_Nota AND Item = :Old_Item AND Data_Emissao = :Old_' +
        'Data_Emissao AND Fornecedor = :Old_Fornecedor AND Natureza_Codig' +
        'o = :Old_Natureza_Codigo AND Codigo_Mercadoria = :Old_Codigo_Mer' +
        'cadoria')
    SQLUpdate.Strings = (
      'UPDATE NotasTerceirosItens'
      'SET'
      
        '  Nota = :Nota, Item = :Item, Data_Emissao = :Data_Emissao, Data' +
        '_Entrada = :Data_Entrada, Processo = :Processo, Fornecedor = :Fo' +
        'rnecedor, Natureza_Codigo = :Natureza_Codigo, Codigo_Mercadoria ' +
        '= :Codigo_Mercadoria, Descricao_Mercadoria = :Descricao_Mercador' +
        'ia, Adicao = :Adicao, NCM = :NCM, Unidade_Medida = :Unidade_Medi' +
        'da, CodigoTrib_TabA = :CodigoTrib_TabA, CodigoTrib_TabB = :Codig' +
        'oTrib_TabB, Quantidade = :Quantidade, Disponivel = :Disponivel, ' +
        'Valor_Unitario = :Valor_Unitario, Valor_Desconto = :Valor_Descon' +
        'to, Valor_Liquido = :Valor_Liquido, Aliquota_ICMSOper = :Aliquot' +
        'a_ICMSOper, Valor_BCICMSOper = :Valor_BCICMSOper, Valor_ICMSOper' +
        ' = :Valor_ICMSOper, Valor_IsentasICMS = :Valor_IsentasICMS, Valo' +
        'r_OutrasICMS = :Valor_OutrasICMS, Gera_Registro88 = :Gera_Regist' +
        'ro88, Aliquota_ICMSSub = :Aliquota_ICMSSub, Valor_BCICMSSub = :V' +
        'alor_BCICMSSub, Valor_ICMSSub = :Valor_ICMSSub, Aliquota_IPI = :' +
        'Aliquota_IPI, Valor_IPI = :Valor_IPI, Valor_BCIPI = :Valor_BCIPI' +
        ', Valor_OutrasIPI = :Valor_OutrasIPI, Valor_IsentasIPI = :Valor_' +
        'IsentasIPI, Peso_Liquido = :Peso_Liquido, Peso_Bruto = :Peso_Bru' +
        'to, Tipo = :Tipo, Aliquota_PIS = :Aliquota_PIS, Valor_PIS = :Val' +
        'or_PIS, Aliquota_COFINS = :Aliquota_COFINS, Valor_COFINS = :Valo' +
        'r_COFINS, Consumo_Energia = :Consumo_Energia, CIAP_BCICMS = :CIA' +
        'P_BCICMS, CIAP_AliquotaICMS = :CIAP_AliquotaICMS, CIAP_ValorICMS' +
        ' = :CIAP_ValorICMS, CIAP_Parcela = :CIAP_Parcela, CST_IPI = :CST' +
        '_IPI, CST_PIS = :CST_PIS, CST_COFINS = :CST_COFINS, Nota_Referen' +
        'cia = :Nota_Referencia, Data_Referencia = :Data_Referencia, Movi' +
        'menta_Estoque = :Movimenta_Estoque, DI = :DI, Movimenta_Inventar' +
        'io = :Movimenta_Inventario, Inventario_Terceiros = :Inventario_T' +
        'erceiros, Apuracao_PISCOFINS = :Apuracao_PISCOFINS, EXTIPI = :EX' +
        'TIPI, CIAP_TipoItem = :CIAP_TipoItem, Referencia_Fiscal = :Refer' +
        'encia_Fiscal, Sequencia_SISCOMEX = :Sequencia_SISCOMEX, Registro' +
        '_Adicao = :Registro_Adicao, Valor_UnitarioOrig = :Valor_Unitario' +
        'Orig, Valor_LiquidoOrig = :Valor_LiquidoOrig, Aliquota_MVA = :Al' +
        'iquota_MVA, Item_Referencia = :Item_Referencia, Valor_ICMSOperOr' +
        'ig = :Valor_ICMSOperOrig, Valor_ICMSSubOrig = :Valor_ICMSSubOrig' +
        ', Valor_PISOrig = :Valor_PISOrig, Valor_COFINSOrig = :Valor_COFI' +
        'NSOrig, Valor_IPIOrig = :Valor_IPIOrig, Valor_Inventario = :Valo' +
        'r_Inventario, Valor_BCPIS = :Valor_BCPIS, Valor_BCCOFINS = :Valo' +
        'r_BCCOFINS, CEST = :CEST, Aliquota_PISOrig = :Aliquota_PISOrig, ' +
        'Aliquota_COFINSOrig = :Aliquota_COFINSOrig, Movimenta_EstoqueRep' +
        ' = :Movimenta_EstoqueRep, Valor_Frete = :Valor_Frete, Valor_BCIC' +
        'MSSubOrig = :Valor_BCICMSSubOrig, Trava_ValorInv = :Trava_ValorI' +
        'nv, Valor_Despesa = :Valor_Despesa, Navio = :Navio, Valor_IR = :' +
        'Valor_IR, Valor_CSLL = :Valor_CSLL, Valor_INSS = :Valor_INSS, Va' +
        'lor_BCIBS = :Valor_BCIBS, Aliquota_IBS = :Aliquota_IBS, Valor_IB' +
        'S = :Valor_IBS, Valor_BCCBS = :Valor_BCCBS, Aliquota_CBS = :Aliq' +
        'uota_CBS, Valor_CBS = :Valor_CBS, Valor_BCIS = :Valor_BCIS, Aliq' +
        'uota_IS = :Aliquota_IS, Valor_IS = :Valor_IS, CSTIBS = :CSTIBS, ' +
        'CSTCBS = :CSTCBS'
      'WHERE'
      
        '  Nota = :Old_Nota AND Item = :Old_Item AND Data_Emissao = :Old_' +
        'Data_Emissao AND Fornecedor = :Old_Fornecedor AND Natureza_Codig' +
        'o = :Old_Natureza_Codigo AND Codigo_Mercadoria = :Old_Codigo_Mer' +
        'cadoria')
    SQLRefresh.Strings = (
      
        'SELECT Nota, Item, Data_Emissao, Data_Entrada, Processo, Fornece' +
        'dor, Natureza_Codigo, Codigo_Mercadoria, Descricao_Mercadoria, A' +
        'dicao, NCM, Unidade_Medida, CodigoTrib_TabA, CodigoTrib_TabB, Qu' +
        'antidade, Disponivel, Valor_Unitario, Valor_Desconto, Valor_Liqu' +
        'ido, Aliquota_ICMSOper, Valor_BCICMSOper, Valor_ICMSOper, Valor_' +
        'IsentasICMS, Valor_OutrasICMS, Gera_Registro88, Aliquota_ICMSSub' +
        ', Valor_BCICMSSub, Valor_ICMSSub, Aliquota_IPI, Valor_IPI, Valor' +
        '_BCIPI, Valor_OutrasIPI, Valor_IsentasIPI, Peso_Liquido, Peso_Br' +
        'uto, Tipo, Aliquota_PIS, Valor_PIS, Aliquota_COFINS, Valor_COFIN' +
        'S, Consumo_Energia, CIAP_BCICMS, CIAP_AliquotaICMS, CIAP_ValorIC' +
        'MS, CIAP_Parcela, CST_IPI, CST_PIS, CST_COFINS, Nota_Referencia,' +
        ' Data_Referencia, Movimenta_Estoque, DI, Movimenta_Inventario, I' +
        'nventario_Terceiros, Apuracao_PISCOFINS, EXTIPI, CIAP_TipoItem, ' +
        'Referencia_Fiscal, Sequencia_SISCOMEX, Registro_Adicao, Valor_Un' +
        'itarioOrig, Valor_LiquidoOrig, Aliquota_MVA, Item_Referencia, Va' +
        'lor_ICMSOperOrig, Valor_ICMSSubOrig, Valor_PISOrig, Valor_COFINS' +
        'Orig, Valor_IPIOrig, Valor_Inventario, Valor_BCPIS, Valor_BCCOFI' +
        'NS, CEST, Aliquota_PISOrig, Aliquota_COFINSOrig, Movimenta_Estoq' +
        'ueRep, Valor_Frete, Valor_BCICMSSubOrig, Trava_ValorInv, Valor_D' +
        'espesa, Navio, Valor_IR, Valor_CSLL, Valor_INSS, Valor_BCIBS, Al' +
        'iquota_IBS, Valor_IBS, Valor_BCCBS, Aliquota_CBS, Valor_CBS, Val' +
        'or_BCIS, Aliquota_IS, Valor_IS, CSTIBS, CSTCBS FROM NotasTerceir' +
        'osItens'
      'WHERE'
      
        '  Nota = :Nota AND Item = :Item AND Data_Emissao = :Data_Emissao' +
        ' AND Fornecedor = :Fornecedor AND Natureza_Codigo = :Natureza_Co' +
        'digo AND Codigo_Mercadoria = :Codigo_Mercadoria')
    SQLLock.Strings = (
      'SELECT * FROM NotasTerceirosItens'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      
        '  Nota = :Old_Nota AND Item = :Old_Item AND Data_Emissao = :Old_' +
        'Data_Emissao AND Fornecedor = :Old_Fornecedor AND Natureza_Codig' +
        'o = :Old_Natureza_Codigo AND Codigo_Mercadoria = :Old_Codigo_Mer' +
        'cadoria')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM NotasTerceirosItens'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM NotasTerceirosItens ORDER BY Nota')
    FetchRows = 1
    BeforePost = NotasTerceirosItensBeforePost
    BeforeDelete = NotasTerceirosItensBeforeDelete
    Left = 312
    Top = 16
    object NotasTerceirosItensNota: TIntegerField
      FieldName = 'Nota'
    end
    object NotasTerceirosItensItem: TSmallintField
      FieldName = 'Item'
      DisplayFormat = '0000'
    end
    object NotasTerceirosItensData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
    end
    object NotasTerceirosItensData_Entrada: TDateTimeField
      FieldName = 'Data_Entrada'
    end
    object NotasTerceirosItensProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
    object NotasTerceirosItensFornecedor: TSmallintField
      FieldName = 'Fornecedor'
    end
    object NotasTerceirosItensNatureza_Codigo: TStringField
      FieldName = 'Natureza_Codigo'
      FixedChar = True
      Size = 4
    end
    object NotasTerceirosItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
    end
    object NotasTerceirosItensDescricao_Mercadoria: TMemoField
      FieldName = 'Descricao_Mercadoria'
      OnGetText = NotasTerceirosItensDescricao_MercadoriaGetText
      BlobType = ftMemo
    end
    object NotasTerceirosItensAdicao: TSmallintField
      FieldName = 'Adicao'
    end
    object NotasTerceirosItensNCM: TStringField
      FieldName = 'NCM'
      EditMask = '####.##.##;0; '
      FixedChar = True
      Size = 8
    end
    object NotasTerceirosItensUnidade_Medida: TStringField
      FieldName = 'Unidade_Medida'
      FixedChar = True
      Size = 3
    end
    object NotasTerceirosItensCodigoTrib_TabA: TStringField
      FieldName = 'CodigoTrib_TabA'
      FixedChar = True
      Size = 2
    end
    object NotasTerceirosItensCodigoTrib_TabB: TStringField
      FieldName = 'CodigoTrib_TabB'
      FixedChar = True
      Size = 3
    end
    object NotasTerceirosItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = ',##0.000'
      EditFormat = '0.000'
    end
    object NotasTerceirosItensDisponivel: TFloatField
      FieldName = 'Disponivel'
      DisplayFormat = ',##0.000'
      EditFormat = '0.000'
    end
    object NotasTerceirosItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      DisplayFormat = ',##0.000000'
    end
    object NotasTerceirosItensValor_Desconto: TCurrencyField
      FieldName = 'Valor_Desconto'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_Liquido: TCurrencyField
      FieldName = 'Valor_Liquido'
      DisplayFormat = ',#00.0000'
    end
    object NotasTerceirosItensAliquota_ICMSOper: TFloatField
      FieldName = 'Aliquota_ICMSOper'
      DisplayFormat = '##0.00'
    end
    object NotasTerceirosItensValor_BCICMSOper: TCurrencyField
      FieldName = 'Valor_BCICMSOper'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_ICMSOper: TCurrencyField
      FieldName = 'Valor_ICMSOper'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_IsentasICMS: TCurrencyField
      FieldName = 'Valor_IsentasICMS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_OutrasICMS: TCurrencyField
      FieldName = 'Valor_OutrasICMS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensGera_Registro88: TBooleanField
      FieldName = 'Gera_Registro88'
    end
    object NotasTerceirosItensAliquota_ICMSSub: TFloatField
      FieldName = 'Aliquota_ICMSSub'
      DisplayFormat = '##0.00'
    end
    object NotasTerceirosItensValor_BCICMSSub: TCurrencyField
      FieldName = 'Valor_BCICMSSub'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_ICMSSub: TCurrencyField
      FieldName = 'Valor_ICMSSub'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      DisplayFormat = '##0.00'
    end
    object NotasTerceirosItensValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_BCIPI: TCurrencyField
      FieldName = 'Valor_BCIPI'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_OutrasIPI: TCurrencyField
      FieldName = 'Valor_OutrasIPI'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_IsentasIPI: TCurrencyField
      FieldName = 'Valor_IsentasIPI'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object NotasTerceirosItensPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object NotasTerceirosItensTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 3
    end
    object NotasTerceirosItensAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      DisplayFormat = '##0.00'
    end
    object NotasTerceirosItensValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      DisplayFormat = '##0.00'
    end
    object NotasTerceirosItensValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensConsumo_Energia: TCurrencyField
      FieldName = 'Consumo_Energia'
    end
    object NotasTerceirosItensCIAP_BCICMS: TCurrencyField
      FieldName = 'CIAP_BCICMS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensCIAP_AliquotaICMS: TFloatField
      FieldName = 'CIAP_AliquotaICMS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensCIAP_ValorICMS: TCurrencyField
      FieldName = 'CIAP_ValorICMS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensCIAP_Parcela: TCurrencyField
      FieldName = 'CIAP_Parcela'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensCST_IPI: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 2
    end
    object NotasTerceirosItensCST_PIS: TStringField
      FieldName = 'CST_PIS'
      FixedChar = True
      Size = 2
    end
    object NotasTerceirosItensCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      FixedChar = True
      Size = 2
    end
    object NotasTerceirosItensNota_Referencia: TIntegerField
      FieldName = 'Nota_Referencia'
    end
    object NotasTerceirosItensData_Referencia: TDateTimeField
      FieldName = 'Data_Referencia'
    end
    object NotasTerceirosItensMovimenta_Estoque: TBooleanField
      FieldName = 'Movimenta_Estoque'
    end
    object NotasTerceirosItensDI: TStringField
      FieldName = 'DI'
      Size = 15
    end
    object NotasTerceirosItensMovimenta_Inventario: TBooleanField
      FieldName = 'Movimenta_Inventario'
    end
    object NotasTerceirosItensInventario_Terceiros: TBooleanField
      FieldName = 'Inventario_Terceiros'
    end
    object NotasTerceirosItensApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
    end
    object NotasTerceirosItensEXTIPI: TSmallintField
      FieldName = 'EXTIPI'
    end
    object NotasTerceirosItensCIAP_TipoItem: TSmallintField
      FieldName = 'CIAP_TipoItem'
    end
    object NotasTerceirosItensReferencia_Fiscal: TSmallintField
      FieldName = 'Referencia_Fiscal'
    end
    object NotasTerceirosItensSequencia_SISCOMEX: TSmallintField
      FieldName = 'Sequencia_SISCOMEX'
    end
    object NotasTerceirosItensRegistro_Adicao: TIntegerField
      FieldName = 'Registro_Adicao'
    end
    object NotasTerceirosItensValor_UnitarioOrig: TCurrencyField
      FieldName = 'Valor_UnitarioOrig'
      DisplayFormat = ',##0.000000'
    end
    object NotasTerceirosItensValor_LiquidoOrig: TCurrencyField
      FieldName = 'Valor_LiquidoOrig'
      DisplayFormat = ',##0.000000'
    end
    object NotasTerceirosItensAliquota_MVA: TFloatField
      FieldName = 'Aliquota_MVA'
      DisplayFormat = '##0.00'
    end
    object NotasTerceirosItensItem_Referencia: TSmallintField
      FieldName = 'Item_Referencia'
    end
    object NotasTerceirosItensValor_ICMSOperOrig: TCurrencyField
      FieldName = 'Valor_ICMSOperOrig'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_ICMSSubOrig: TCurrencyField
      FieldName = 'Valor_ICMSSubOrig'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_PISOrig: TCurrencyField
      FieldName = 'Valor_PISOrig'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_COFINSOrig: TCurrencyField
      FieldName = 'Valor_COFINSOrig'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_IPIOrig: TCurrencyField
      FieldName = 'Valor_IPIOrig'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_Inventario: TCurrencyField
      FieldName = 'Valor_Inventario'
      DisplayFormat = ',#00.000000'
    end
    object NotasTerceirosItensValor_BCPIS: TCurrencyField
      FieldName = 'Valor_BCPIS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_BCCOFINS: TCurrencyField
      FieldName = 'Valor_BCCOFINS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object NotasTerceirosItensAliquota_PISOrig: TFloatField
      FieldName = 'Aliquota_PISOrig'
      DisplayFormat = '##0.00'
    end
    object NotasTerceirosItensAliquota_COFINSOrig: TFloatField
      FieldName = 'Aliquota_COFINSOrig'
      DisplayFormat = '##0.00'
    end
    object NotasTerceirosItensMovimenta_EstoqueRep: TBooleanField
      FieldName = 'Movimenta_EstoqueRep'
    end
    object NotasTerceirosItensValor_Frete: TCurrencyField
      FieldName = 'Valor_Frete'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensValor_BCICMSSubOrig: TCurrencyField
      FieldName = 'Valor_BCICMSSubOrig'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensTrava_ValorInv: TBooleanField
      FieldName = 'Trava_ValorInv'
    end
    object NotasTerceirosItensValor_Despesa: TCurrencyField
      FieldName = 'Valor_Despesa'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosItensNavio: TIntegerField
      FieldName = 'Navio'
    end
    object NotasTerceirosItensValor_IR: TCurrencyField
      FieldName = 'Valor_IR'
    end
    object NotasTerceirosItensValor_CSLL: TCurrencyField
      FieldName = 'Valor_CSLL'
    end
    object NotasTerceirosItensValor_INSS: TCurrencyField
      FieldName = 'Valor_INSS'
    end
    object NotasTerceirosItensValor_BCIBS: TCurrencyField
      FieldName = 'Valor_BCIBS'
    end
    object NotasTerceirosItensAliquota_IBS: TFloatField
      FieldName = 'Aliquota_IBS'
    end
    object NotasTerceirosItensValor_IBS: TCurrencyField
      FieldName = 'Valor_IBS'
    end
    object NotasTerceirosItensValor_BCCBS: TCurrencyField
      FieldName = 'Valor_BCCBS'
    end
    object NotasTerceirosItensAliquota_CBS: TFloatField
      FieldName = 'Aliquota_CBS'
    end
    object NotasTerceirosItensValor_CBS: TCurrencyField
      FieldName = 'Valor_CBS'
    end
    object NotasTerceirosItensValor_BCIS: TCurrencyField
      FieldName = 'Valor_BCIS'
    end
    object NotasTerceirosItensAliquota_IS: TFloatField
      FieldName = 'Aliquota_IS'
    end
    object NotasTerceirosItensValor_IS: TCurrencyField
      FieldName = 'Valor_IS'
    end
    object NotasTerceirosItensCSTIBS: TStringField
      FieldName = 'CSTIBS'
      Size = 3
    end
    object NotasTerceirosItensCSTCBS: TStringField
      FieldName = 'CSTCBS'
      Size = 3
    end
  end
  object NotasServico: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasServico'
      
        '  (Numero, Data_Emissao, Modelo, Serie, Processo, FUNDAP, Fatura' +
        '_Numero, Desconto_Percentual, Desconto_Valor, Data_Desconto, Cli' +
        'ente, Natureza_Operacao, Servico, Descricao_Servico, Valor_Servi' +
        'co, Aliquota_ISS, Valor_ISS, Total_Nota, Codigo_Adicional01, Ali' +
        'quota_Adicional01, Valor_Adicional01, Codigo_Adicional02, Aliquo' +
        'ta_Adicional02, Valor_Adicional02, Codigo_Adicional03, Aliquota_' +
        'Adicional03, Valor_Adicional03, Codigo_Adicional04, Aliquota_Adi' +
        'cional04, Valor_Adicional04, Codigo_Adicional05, Aliquota_Adicio' +
        'nal05, Valor_Adicional05, Codigo_Adicional06, Aliquota_Adicional' +
        '06, Valor_Adicional06, Cancelada, Aliquota_PIS, Aliquota_COFINS,' +
        ' Modalidade_Pgto, Centro_Custo, Referencia_Fiscal, Total_Dedutiv' +
        'eis, Total_Servicos, Observacao, Classificacao_Servico)'
      'VALUES'
      
        '  (:Numero, :Data_Emissao, :Modelo, :Serie, :Processo, :FUNDAP, ' +
        ':Fatura_Numero, :Desconto_Percentual, :Desconto_Valor, :Data_Des' +
        'conto, :Cliente, :Natureza_Operacao, :Servico, :Descricao_Servic' +
        'o, :Valor_Servico, :Aliquota_ISS, :Valor_ISS, :Total_Nota, :Codi' +
        'go_Adicional01, :Aliquota_Adicional01, :Valor_Adicional01, :Codi' +
        'go_Adicional02, :Aliquota_Adicional02, :Valor_Adicional02, :Codi' +
        'go_Adicional03, :Aliquota_Adicional03, :Valor_Adicional03, :Codi' +
        'go_Adicional04, :Aliquota_Adicional04, :Valor_Adicional04, :Codi' +
        'go_Adicional05, :Aliquota_Adicional05, :Valor_Adicional05, :Codi' +
        'go_Adicional06, :Aliquota_Adicional06, :Valor_Adicional06, :Canc' +
        'elada, :Aliquota_PIS, :Aliquota_COFINS, :Modalidade_Pgto, :Centr' +
        'o_Custo, :Referencia_Fiscal, :Total_Dedutiveis, :Total_Servicos,' +
        ' :Observacao, :Classificacao_Servico)')
    SQLDelete.Strings = (
      'DELETE FROM NotasServico'
      'WHERE'
      '  Numero = :Old_Numero AND Data_Emissao = :Old_Data_Emissao')
    SQLUpdate.Strings = (
      'UPDATE NotasServico'
      'SET'
      
        '  Numero = :Numero, Data_Emissao = :Data_Emissao, Modelo = :Mode' +
        'lo, Serie = :Serie, Processo = :Processo, FUNDAP = :FUNDAP, Fatu' +
        'ra_Numero = :Fatura_Numero, Desconto_Percentual = :Desconto_Perc' +
        'entual, Desconto_Valor = :Desconto_Valor, Data_Desconto = :Data_' +
        'Desconto, Cliente = :Cliente, Natureza_Operacao = :Natureza_Oper' +
        'acao, Servico = :Servico, Descricao_Servico = :Descricao_Servico' +
        ', Valor_Servico = :Valor_Servico, Aliquota_ISS = :Aliquota_ISS, ' +
        'Valor_ISS = :Valor_ISS, Total_Nota = :Total_Nota, Codigo_Adicion' +
        'al01 = :Codigo_Adicional01, Aliquota_Adicional01 = :Aliquota_Adi' +
        'cional01, Valor_Adicional01 = :Valor_Adicional01, Codigo_Adicion' +
        'al02 = :Codigo_Adicional02, Aliquota_Adicional02 = :Aliquota_Adi' +
        'cional02, Valor_Adicional02 = :Valor_Adicional02, Codigo_Adicion' +
        'al03 = :Codigo_Adicional03, Aliquota_Adicional03 = :Aliquota_Adi' +
        'cional03, Valor_Adicional03 = :Valor_Adicional03, Codigo_Adicion' +
        'al04 = :Codigo_Adicional04, Aliquota_Adicional04 = :Aliquota_Adi' +
        'cional04, Valor_Adicional04 = :Valor_Adicional04, Codigo_Adicion' +
        'al05 = :Codigo_Adicional05, Aliquota_Adicional05 = :Aliquota_Adi' +
        'cional05, Valor_Adicional05 = :Valor_Adicional05, Codigo_Adicion' +
        'al06 = :Codigo_Adicional06, Aliquota_Adicional06 = :Aliquota_Adi' +
        'cional06, Valor_Adicional06 = :Valor_Adicional06, Cancelada = :C' +
        'ancelada, Aliquota_PIS = :Aliquota_PIS, Aliquota_COFINS = :Aliqu' +
        'ota_COFINS, Modalidade_Pgto = :Modalidade_Pgto, Centro_Custo = :' +
        'Centro_Custo, Referencia_Fiscal = :Referencia_Fiscal, Total_Dedu' +
        'tiveis = :Total_Dedutiveis, Total_Servicos = :Total_Servicos, Ob' +
        'servacao = :Observacao, Classificacao_Servico = :Classificacao_S' +
        'ervico'
      'WHERE'
      '  Numero = :Old_Numero AND Data_Emissao = :Old_Data_Emissao')
    SQLRefresh.Strings = (
      
        'SELECT NotasServico.Numero, NotasServico.Data_Emissao, NotasServ' +
        'ico.Modelo, NotasServico.Serie, NotasServico.Processo, NotasServ' +
        'ico.FUNDAP, NotasServico.Fatura_Numero, NotasServico.Desconto_Pe' +
        'rcentual, NotasServico.Desconto_Valor, NotasServico.Data_Descont' +
        'o, NotasServico.Cliente, NotasServico.Natureza_Operacao, NotasSe' +
        'rvico.Servico, NotasServico.Descricao_Servico, NotasServico.Valo' +
        'r_Servico, NotasServico.Aliquota_ISS, NotasServico.Valor_ISS, No' +
        'tasServico.Total_Nota, NotasServico.Codigo_Adicional01, NotasSer' +
        'vico.Aliquota_Adicional01, NotasServico.Valor_Adicional01, Notas' +
        'Servico.Codigo_Adicional02, NotasServico.Aliquota_Adicional02, N' +
        'otasServico.Valor_Adicional02, NotasServico.Codigo_Adicional03, ' +
        'NotasServico.Aliquota_Adicional03, NotasServico.Valor_Adicional0' +
        '3, NotasServico.Codigo_Adicional04, NotasServico.Aliquota_Adicio' +
        'nal04, NotasServico.Valor_Adicional04, NotasServico.Codigo_Adici' +
        'onal05, NotasServico.Aliquota_Adicional05, NotasServico.Valor_Ad' +
        'icional05, NotasServico.Codigo_Adicional06, NotasServico.Aliquot' +
        'a_Adicional06, NotasServico.Valor_Adicional06, NotasServico.Canc' +
        'elada, NotasServico.Aliquota_PIS, NotasServico.Aliquota_COFINS, ' +
        'NotasServico.Modalidade_Pgto, NotasServico.Centro_Custo, NotasSe' +
        'rvico.Referencia_Fiscal, NotasServico.Total_Dedutiveis, NotasSer' +
        'vico.Total_Servicos, NotasServico.Observacao, NotasServico.Class' +
        'ificacao_Servico FROM NotasServico'
      
        'WHERE NotasServico.Numero = :Numero AND NotasServico.Data_Emissa' +
        'o = :Data_Emissao ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM NotasServico')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    BeforePost = NotasServicoBeforePost
    Left = 408
    Top = 16
    object NotasServicoNumero: TIntegerField
      DisplayWidth = 10
      FieldName = 'Numero'
      Origin = 'NotasServico.Numero'
    end
    object NotasServicoData_Emissao: TDateTimeField
      DisplayWidth = 11
      FieldName = 'Data_Emissao'
      Origin = 'NotasServico.Data_Emissao'
    end
    object NotasServicoModelo: TStringField
      DisplayWidth = 5
      FieldName = 'Modelo'
      Origin = 'NotasServico.Modelo'
      FixedChar = True
      Size = 2
    end
    object NotasServicoSerie: TStringField
      DisplayWidth = 4
      FieldName = 'Serie'
      Origin = 'NotasServico.Serie'
      FixedChar = True
      Size = 2
    end
    object NotasServicoProcesso: TStringField
      DisplayWidth = 15
      FieldName = 'Processo'
      Origin = 'NotasServico.Processo'
      FixedChar = True
      Size = 15
    end
    object NotasServicoFUNDAP: TBooleanField
      DisplayWidth = 6
      FieldName = 'FUNDAP'
      Origin = 'NotasServico.FUNDAP'
    end
    object NotasServicoFatura_Numero: TStringField
      DisplayWidth = 11
      FieldName = 'Fatura_Numero'
      Origin = 'NotasServico.Fatura_Numero'
      FixedChar = True
      Size = 10
    end
    object NotasServicoDesconto_Percentual: TFloatField
      DisplayWidth = 15
      FieldName = 'Desconto_Percentual'
      Origin = 'NotasServico.Desconto_Percentual'
    end
    object NotasServicoDesconto_Valor: TCurrencyField
      DisplayWidth = 11
      FieldName = 'Desconto_Valor'
      Origin = 'NotasServico.Desconto_Valor'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasServicoData_Desconto: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Data_Desconto'
      Origin = 'NotasServico.Data_Desconto'
    end
    object NotasServicoCliente: TSmallintField
      DisplayWidth = 10
      FieldName = 'Cliente'
      Origin = 'NotasServico.Cliente'
    end
    object NotasServicoNatureza_Operacao: TStringField
      DisplayWidth = 14
      FieldName = 'Natureza_Operacao'
      Origin = 'NotasServico.Natureza_Operacao'
      EditMask = '#.###;0; '
      FixedChar = True
      Size = 4
    end
    object NotasServicoServico: TStringField
      DisplayWidth = 5
      FieldName = 'Servico'
      Origin = 'NotasServico.Servico'
      FixedChar = True
      Size = 5
    end
    object NotasServicoDescricao_Servico: TMemoField
      DisplayWidth = 13
      FieldName = 'Descricao_Servico'
      Origin = 'NotasServico.Descricao_Servico'
      BlobType = ftMemo
    end
    object NotasServicoValor_Servico: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Valor_Servico'
      Origin = 'NotasServico.Valor_Servico'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasServicoValor_ISS: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Valor_ISS'
      Origin = 'NotasServico.Valor_ISS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasServicoTotal_Nota: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Total_Nota'
      Origin = 'NotasServico.Total_Nota'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasServicoCodigo_Adicional01: TStringField
      DisplayWidth = 14
      FieldName = 'Codigo_Adicional01'
      Origin = 'NotasServico.Codigo_Adicional01'
      FixedChar = True
      Size = 10
    end
    object NotasServicoAliquota_Adicional01: TFloatField
      DisplayWidth = 14
      FieldName = 'Aliquota_Adicional01'
      Origin = 'NotasServico.Aliquota_Adicional01'
    end
    object NotasServicoValor_Adicional01: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Valor_Adicional01'
      Origin = 'NotasServico.Valor_Adicional01'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasServicoCodigo_Adicional02: TStringField
      DisplayWidth = 14
      FieldName = 'Codigo_Adicional02'
      Origin = 'NotasServico.Codigo_Adicional02'
      FixedChar = True
      Size = 10
    end
    object NotasServicoAliquota_Adicional02: TFloatField
      DisplayWidth = 14
      FieldName = 'Aliquota_Adicional02'
      Origin = 'NotasServico.Aliquota_Adicional02'
    end
    object NotasServicoValor_Adicional02: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Valor_Adicional02'
      Origin = 'NotasServico.Valor_Adicional02'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasServicoCodigo_Adicional03: TStringField
      DisplayWidth = 14
      FieldName = 'Codigo_Adicional03'
      Origin = 'NotasServico.Codigo_Adicional03'
      FixedChar = True
      Size = 10
    end
    object NotasServicoAliquota_Adicional03: TFloatField
      DisplayWidth = 14
      FieldName = 'Aliquota_Adicional03'
      Origin = 'NotasServico.Aliquota_Adicional03'
    end
    object NotasServicoValor_Adicional03: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Valor_Adicional03'
      Origin = 'NotasServico.Valor_Adicional03'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasServicoCodigo_Adicional04: TStringField
      DisplayWidth = 14
      FieldName = 'Codigo_Adicional04'
      Origin = 'NotasServico.Codigo_Adicional04'
      FixedChar = True
      Size = 10
    end
    object NotasServicoAliquota_Adicional04: TFloatField
      DisplayWidth = 14
      FieldName = 'Aliquota_Adicional04'
      Origin = 'NotasServico.Aliquota_Adicional04'
    end
    object NotasServicoValor_Adicional04: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Valor_Adicional04'
      Origin = 'NotasServico.Valor_Adicional04'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasServicoCodigo_Adicional05: TStringField
      DisplayWidth = 14
      FieldName = 'Codigo_Adicional05'
      Origin = 'NotasServico.Codigo_Adicional05'
      FixedChar = True
      Size = 10
    end
    object NotasServicoAliquota_Adicional05: TFloatField
      DisplayWidth = 14
      FieldName = 'Aliquota_Adicional05'
      Origin = 'NotasServico.Aliquota_Adicional05'
    end
    object NotasServicoValor_Adicional05: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Valor_Adicional05'
      Origin = 'NotasServico.Valor_Adicional05'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasServicoCodigo_Adicional06: TStringField
      DisplayWidth = 14
      FieldName = 'Codigo_Adicional06'
      Origin = 'NotasServico.Codigo_Adicional06'
      FixedChar = True
      Size = 10
    end
    object NotasServicoAliquota_Adicional06: TFloatField
      DisplayWidth = 14
      FieldName = 'Aliquota_Adicional06'
      Origin = 'NotasServico.Aliquota_Adicional06'
    end
    object NotasServicoValor_Adicional06: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Valor_Adicional06'
      Origin = 'NotasServico.Valor_Adicional06'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object NotasServicoCancelada: TBooleanField
      DisplayWidth = 7
      FieldName = 'Cancelada'
      Origin = 'NotasServico.Cancelada'
    end
    object NotasServicoAliquota_PIS: TFloatField
      DisplayWidth = 10
      FieldName = 'Aliquota_PIS'
      Origin = 'NotasServico.Aliquota_PIS'
    end
    object NotasServicoAliquota_COFINS: TFloatField
      DisplayWidth = 12
      FieldName = 'Aliquota_COFINS'
      Origin = 'NotasServico.Aliquota_COFINS'
    end
    object NotasServicoAliquota_ISS: TFloatField
      DisplayWidth = 10
      FieldName = 'Aliquota_ISS'
      Origin = 'NotasServico.Aliquota_ISS'
    end
    object NotasServicoModalidade_Pgto: TSmallintField
      DisplayWidth = 12
      FieldName = 'Modalidade_Pgto'
      Origin = 'NotasServico.Modalidade_Pgto'
    end
    object NotasServicoClienteNome: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = Dados.Clientes
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 50
      Lookup = True
    end
    object NotasServicoCentro_Custo: TStringField
      DisplayWidth = 10
      FieldName = 'Centro_Custo'
      Origin = 'NotasServico.Centro_Custo'
      Size = 10
    end
    object NotasServicoReferencia_Fiscal: TSmallintField
      DisplayWidth = 12
      FieldName = 'Referencia_Fiscal'
      Origin = 'NotasServico.Referencia_Fiscal'
    end
    object NotasServicoTotal_Dedutiveis: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Total_Dedutiveis'
      Origin = 'NotasServico.Total_Dedutiveis'
    end
    object NotasServicoTotal_Servicos: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Total_Servicos'
      Origin = 'NotasServico.Total_Servicos'
    end
    object NotasServicoObservacao: TMemoField
      DisplayWidth = 10
      FieldName = 'Observacao'
      Origin = 'NotasServico.Observacao'
      BlobType = ftMemo
    end
    object NotasServicoClassificacao_Servico: TIntegerField
      FieldName = 'Classificacao_Servico'
    end
  end
  object dsNotasServico: TDataSource
    DataSet = NotasServico
    Left = 411
    Top = 64
  end
  object Inventario: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Inventario'
      
        '  (Codigo, Codigo_Fabricante, NCM, Descricao, Unidade, Quantidad' +
        'e, Valor_Unitario, Valor_Total, Tipo_Item, Inventario, Participa' +
        'nte, Tipo, CNPJ, IE, Estado, Aliquota_IPI, Processo)'
      'VALUES'
      
        '  (:Codigo, :Codigo_Fabricante, :NCM, :Descricao, :Unidade, :Qua' +
        'ntidade, :Valor_Unitario, :Valor_Total, :Tipo_Item, :Inventario,' +
        ' :Participante, :Tipo, :CNPJ, :IE, :Estado, :Aliquota_IPI, :Proc' +
        'esso)')
    SQLDelete.Strings = (
      'DELETE FROM Inventario'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE Inventario'
      'SET'
      
        '  Codigo = :Codigo, Codigo_Fabricante = :Codigo_Fabricante, NCM ' +
        '= :NCM, Descricao = :Descricao, Unidade = :Unidade, Quantidade =' +
        ' :Quantidade, Valor_Unitario = :Valor_Unitario, Valor_Total = :V' +
        'alor_Total, Tipo_Item = :Tipo_Item, Inventario = :Inventario, Pa' +
        'rticipante = :Participante, Tipo = :Tipo, CNPJ = :CNPJ, IE = :IE' +
        ', Estado = :Estado, Aliquota_IPI = :Aliquota_IPI, Processo = :Pr' +
        'ocesso'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Codigo, Codigo_Fabricante, NCM, Descricao, Unidade, Quant' +
        'idade, Valor_Unitario, Valor_Total, Tipo_Item, Inventario, Parti' +
        'cipante, Tipo, CNPJ, IE, Estado, Aliquota_IPI, Processo FROM Inv' +
        'entario'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM Inventario'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM Inventario'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Inventario')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 486
    Top = 16
    object InventarioCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'Inventario.Codigo'
    end
    object InventarioCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Origin = 'Inventario.Codigo_Fabricante'
      Size = 30
    end
    object InventarioNCM: TStringField
      FieldName = 'NCM'
      Origin = 'Inventario.NCM'
      Size = 10
    end
    object InventarioDescricao: TMemoField
      FieldName = 'Descricao'
      Origin = 'Inventario.Descricao'
      BlobType = ftMemo
    end
    object InventarioUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'Inventario.Unidade'
      Size = 3
    end
    object InventarioQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Inventario.Quantidade'
    end
    object InventarioValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = 'Inventario.Valor_Unitario'
    end
    object InventarioValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'Inventario.Valor_Total'
    end
    object InventarioTipo_Item: TIntegerField
      FieldName = 'Tipo_Item'
      Origin = 'Inventario.Tipo_Item'
    end
    object InventarioInventario: TStringField
      FieldName = 'Inventario'
      Origin = 'Inventario.Inventario'
      Size = 1
    end
    object InventarioParticipante: TStringField
      FieldName = 'Participante'
      Origin = 'Inventario.Participante'
      Size = 10
    end
    object InventarioTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Inventario.Tipo'
      Size = 1
    end
    object InventarioCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'Inventario.CNPJ'
      Size = 14
    end
    object InventarioIE: TStringField
      FieldName = 'IE'
      Origin = 'Inventario.IE'
      Size = 14
    end
    object InventarioEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Inventario.Estado'
      Size = 2
    end
    object InventarioAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
    end
  end
  object dsInventario: TDataSource
    DataSet = Inventario
    Left = 486
    Top = 64
  end
  object CIAP: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO CIAP'
      
        '  (Registro, Codigo_Mercadoria, Nota, Data_Nota, Fornecedor, Par' +
        'cela, Utilizacao, Data_Aquisicao, Origem)'
      'VALUES'
      
        '  (:Registro, :Codigo_Mercadoria, :Nota, :Data_Nota, :Fornecedor' +
        ', :Parcela, :Utilizacao, :Data_Aquisicao, :Origem)')
    SQLDelete.Strings = (
      'DELETE FROM CIAP'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE CIAP'
      'SET'
      
        '  Registro = :Registro, Codigo_Mercadoria = :Codigo_Mercadoria, ' +
        'Nota = :Nota, Data_Nota = :Data_Nota, Fornecedor = :Fornecedor, ' +
        'Parcela = :Parcela, Utilizacao = :Utilizacao, Data_Aquisicao = :' +
        'Data_Aquisicao, Origem = :Origem'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Codigo_Mercadoria, Nota, Data_Nota, Fornecedor,' +
        ' Parcela, Utilizacao, Data_Aquisicao, Origem FROM CIAP'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM CIAP'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM CIAP'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM CIAP')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 550
    Top = 16
    object CIAPRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object CIAPCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
    end
    object CIAPData_Nota: TDateTimeField
      FieldName = 'Data_Nota'
    end
    object CIAPFornecedor: TSmallintField
      FieldName = 'Fornecedor'
    end
    object CIAPParcela: TSmallintField
      FieldName = 'Parcela'
    end
    object CIAPUtilizacao: TStringField
      FieldName = 'Utilizacao'
      FixedChar = True
      Size = 6
    end
    object CIAPNota: TLargeintField
      FieldName = 'Nota'
    end
    object CIAPData_Aquisicao: TDateTimeField
      FieldName = 'Data_Aquisicao'
    end
    object CIAPOrigem: TStringField
      FieldName = 'Origem'
      Size = 2
    end
  end
  object dsCIAP: TDataSource
    DataSet = CIAP
    Left = 550
    Top = 64
  end
  object Estorno: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Estorno'
      
        '  (Numero, Data, Nota_Numero, Nota_Data, Valor, Imposto, Observa' +
        'cao, FUNDAP, Tipo_Nota, Incentivo_Fiscal, Codigo_Ajuste, Tipo_Aj' +
        'uste)'
      'VALUES'
      
        '  (:Numero, :Data, :Nota_Numero, :Nota_Data, :Valor, :Imposto, :' +
        'Observacao, :FUNDAP, :Tipo_Nota, :Incentivo_Fiscal, :Codigo_Ajus' +
        'te, :Tipo_Ajuste)')
    SQLDelete.Strings = (
      'DELETE FROM Estorno'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE Estorno'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Nota_Numero = :Nota_Numero, No' +
        'ta_Data = :Nota_Data, Valor = :Valor, Imposto = :Imposto, Observ' +
        'acao = :Observacao, FUNDAP = :FUNDAP, Tipo_Nota = :Tipo_Nota, In' +
        'centivo_Fiscal = :Incentivo_Fiscal, Codigo_Ajuste = :Codigo_Ajus' +
        'te, Tipo_Ajuste = :Tipo_Ajuste'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT Estorno.Numero, Estorno.Data, Estorno.Nota_Numero, Estorn' +
        'o.Nota_Data, Estorno.Valor, Estorno.Imposto, Estorno.Observacao,' +
        ' Estorno.FUNDAP, Estorno.Tipo_Nota, Estorno.Incentivo_Fiscal, Es' +
        'torno.Codigo_Ajuste, Estorno.Tipo_Ajuste FROM Estorno'
      'WHERE Estorno.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Estorno')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 606
    Top = 16
    object EstornoNumero: TSmallintField
      FieldName = 'Numero'
      Origin = 'ExtornoDebito.Numero'
    end
    object EstornoData: TDateTimeField
      FieldName = 'Data'
      Origin = 'ExtornoDebito.Data'
    end
    object EstornoNota_Numero: TSmallintField
      FieldName = 'Nota_Numero'
      Origin = 'ExtornoDebito.Nota_Numero'
    end
    object EstornoNota_Data: TDateTimeField
      FieldName = 'Nota_Data'
      Origin = 'ExtornoDebito.Nota_Data'
    end
    object EstornoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'ExtornoDebito.Valor'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object EstornoObservacao: TStringField
      FieldName = 'Observacao'
      Origin = 'ExtornoDebito.Observacao'
      Size = 60
    end
    object EstornoTipo_Nota: TStringField
      FieldName = 'Tipo_Nota'
      FixedChar = True
      Size = 1
    end
    object EstornoFUNDAP: TBooleanField
      FieldName = 'FUNDAP'
    end
    object EstornoIncentivo_Fiscal: TStringField
      FieldName = 'Incentivo_Fiscal'
      Size = 15
    end
    object EstornoCodigo_Ajuste: TStringField
      FieldName = 'Codigo_Ajuste'
      Size = 8
    end
    object EstornoTipo_Ajuste: TSmallintField
      FieldName = 'Tipo_Ajuste'
    end
    object EstornoImposto: TStringField
      FieldName = 'Imposto'
      Size = 5
    end
  end
  object dsEstorno: TDataSource
    DataSet = Estorno
    Left = 606
    Top = 64
  end
  object SaldoICMS: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SaldoICMS'
      '  (Mes_Ano, Operacao, Saldo)'
      'VALUES'
      '  (:Mes_Ano, :Operacao, :Saldo)')
    SQLDelete.Strings = (
      'DELETE FROM SaldoICMS'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano AND Operacao = :Old_Operacao')
    SQLUpdate.Strings = (
      'UPDATE SaldoICMS'
      'SET'
      '  Mes_Ano = :Mes_Ano, Operacao = :Operacao, Saldo = :Saldo'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano AND Operacao = :Old_Operacao')
    SQLRefresh.Strings = (
      
        'SELECT SaldoICMS.Mes_Ano, SaldoICMS.Operacao, SaldoICMS.Saldo FR' +
        'OM SaldoICMS'
      
        'WHERE SaldoICMS.Mes_Ano = :Mes_Ano AND SaldoICMS.Operacao = :Ope' +
        'racao ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM SaldoICMS')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 683
    Top = 16
    object SaldoICMSMes_Ano: TStringField
      DisplayWidth = 8
      FieldName = 'Mes_Ano'
      Origin = 'SaldoICMS.Mes_Ano'
      EditMask = '##/####;0'
      FixedChar = True
      Size = 6
    end
    object SaldoICMSOperacao: TSmallintField
      DisplayWidth = 10
      FieldName = 'Operacao'
      Origin = 'SaldoICMS.Operacao'
    end
    object SaldoICMSSaldo: TCurrencyField
      DisplayWidth = 17
      FieldName = 'Saldo'
      Origin = 'SaldoICMS.Saldo'
      DisplayFormat = ',##0.00'
    end
  end
  object dsSaldoICMS: TDataSource
    DataSet = SaldoICMS
    Left = 683
    Top = 64
  end
  object ModalidadeBCICMS: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT ModalidadeBCICMS.Codigo, ModalidadeBCICMS.Descricao FROM ' +
        'ModalidadeBCICMS'
      'WHERE ModalidadeBCICMS.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM ModalidadeBCICMS')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 890
    Top = 14
    object ModalidadeBCICMSCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object ModalidadeBCICMSDescricao: TStringField
      FieldName = 'Descricao'
      Size = 80
    end
  end
  object dsModalidadeBCICMS: TDataSource
    DataSet = ModalidadeBCICMS
    Left = 890
    Top = 62
  end
  object SaldoIPI: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SaldoIPI'
      '  (Mes_Ano, Operacao, Saldo)'
      'VALUES'
      '  (:Mes_Ano, :Operacao, :Saldo)')
    SQLDelete.Strings = (
      'DELETE FROM SaldoIPI'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano AND Operacao = :Old_Operacao')
    SQLUpdate.Strings = (
      'UPDATE SaldoIPI'
      'SET'
      '  Mes_Ano = :Mes_Ano, Operacao = :Operacao, Saldo = :Saldo'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano AND Operacao = :Old_Operacao')
    SQLRefresh.Strings = (
      
        'SELECT SaldoIPI.Mes_Ano, SaldoIPI.Operacao, SaldoIPI.Saldo FROM ' +
        'SaldoIPI'
      
        'WHERE SaldoIPI.Mes_Ano = :Mes_Ano AND SaldoIPI.Operacao = :Opera' +
        'cao ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM SaldoIPI')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 784
    Top = 15
    object SaldoIPIMes_Ano: TStringField
      FieldName = 'Mes_Ano'
      Origin = 'SaldoIPI.Mes_Ano'
      EditMask = '##/####;0'
      FixedChar = True
      Size = 6
    end
    object SaldoIPIOperacao: TSmallintField
      FieldName = 'Operacao'
      Origin = 'SaldoIPI.Operacao'
      DisplayFormat = ',##0.00'
    end
    object SaldoIPISaldo: TCurrencyField
      FieldName = 'Saldo'
      Origin = 'SaldoIPI.Saldo'
      DisplayFormat = ',##0.00'
    end
  end
  object dsSaldoIPI: TDataSource
    DataSet = SaldoIPI
    Left = 784
    Top = 63
  end
  object OutrosValoresIPI: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO OutrosValoresIPI'
      
        '  (Numero, Data, Nota_Numero, Nota_Data, Valor, Imposto, Observa' +
        'cao, Debito_Credito, FUNDAP, Indicador_Origem, Codigo_Ajuste, In' +
        'centivo_Fiscal)'
      'VALUES'
      
        '  (:Numero, :Data, :Nota_Numero, :Nota_Data, :Valor, :Imposto, :' +
        'Observacao, :Debito_Credito, :FUNDAP, :Indicador_Origem, :Codigo' +
        '_Ajuste, :Incentivo_Fiscal)')
    SQLDelete.Strings = (
      'DELETE FROM OutrosValoresIPI'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE OutrosValoresIPI'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Nota_Numero = :Nota_Numero, No' +
        'ta_Data = :Nota_Data, Valor = :Valor, Imposto = :Imposto, Observ' +
        'acao = :Observacao, Debito_Credito = :Debito_Credito, FUNDAP = :' +
        'FUNDAP, Indicador_Origem = :Indicador_Origem, Codigo_Ajuste = :C' +
        'odigo_Ajuste, Incentivo_Fiscal = :Incentivo_Fiscal'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT OutrosValoresIPI.Numero, OutrosValoresIPI.Data, OutrosVal' +
        'oresIPI.Nota_Numero, OutrosValoresIPI.Nota_Data, OutrosValoresIP' +
        'I.Valor, OutrosValoresIPI.Imposto, OutrosValoresIPI.Observacao, ' +
        'OutrosValoresIPI.Debito_Credito, OutrosValoresIPI.FUNDAP, Outros' +
        'ValoresIPI.Indicador_Origem, OutrosValoresIPI.Codigo_Ajuste, Out' +
        'rosValoresIPI.Incentivo_Fiscal FROM OutrosValoresIPI'
      'WHERE OutrosValoresIPI.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM OutrosValoresIPI')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 46
    Top = 120
    object OutrosValoresIPINumero: TSmallintField
      FieldName = 'Numero'
    end
    object OutrosValoresIPIData: TDateTimeField
      FieldName = 'Data'
    end
    object OutrosValoresIPINota_Numero: TSmallintField
      FieldName = 'Nota_Numero'
    end
    object OutrosValoresIPINota_Data: TDateTimeField
      FieldName = 'Nota_Data'
    end
    object OutrosValoresIPIValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object OutrosValoresIPIImposto: TStringField
      FieldName = 'Imposto'
      FixedChar = True
      Size = 4
    end
    object OutrosValoresIPIObservacao: TStringField
      FieldName = 'Observacao'
      Size = 60
    end
    object OutrosValoresIPIDebito_Credito: TSmallintField
      FieldName = 'Debito_Credito'
    end
    object OutrosValoresIPIFUNDAP: TBooleanField
      FieldName = 'FUNDAP'
    end
    object OutrosValoresIPIIndicador_Origem: TSmallintField
      FieldName = 'Indicador_Origem'
    end
    object OutrosValoresIPICodigo_Ajuste: TSmallintField
      FieldName = 'Codigo_Ajuste'
    end
    object OutrosValoresIPIIncentivo_Fiscal: TStringField
      FieldName = 'Incentivo_Fiscal'
      Size = 15
    end
  end
  object dsOutrosValoresIPI: TDataSource
    DataSet = OutrosValoresIPI
    Left = 46
    Top = 168
  end
  object ApuracaoPISCOFINS: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ApuracaoPISCOFINS'
      
        '  (Linha, Ordem, Tipo, Descricao, Aliquota_PIS, Aliquota_COFINS,' +
        ' Valor, Valor_PIS, Valor_COFINS, Grupo, Debito_Credito, Valor_BC' +
        ')'
      'VALUES'
      
        '  (:Linha, :Ordem, :Tipo, :Descricao, :Aliquota_PIS, :Aliquota_C' +
        'OFINS, :Valor, :Valor_PIS, :Valor_COFINS, :Grupo, :Debito_Credit' +
        'o, :Valor_BC)')
    SQLDelete.Strings = (
      'DELETE FROM ApuracaoPISCOFINS'
      'WHERE'
      '  Linha = :Old_Linha')
    SQLUpdate.Strings = (
      'UPDATE ApuracaoPISCOFINS'
      'SET'
      
        '  Linha = :Linha, Ordem = :Ordem, Tipo = :Tipo, Descricao = :Des' +
        'cricao, Aliquota_PIS = :Aliquota_PIS, Aliquota_COFINS = :Aliquot' +
        'a_COFINS, Valor = :Valor, Valor_PIS = :Valor_PIS, Valor_COFINS =' +
        ' :Valor_COFINS, Grupo = :Grupo, Debito_Credito = :Debito_Credito' +
        ', Valor_BC = :Valor_BC'
      'WHERE'
      '  Linha = :Old_Linha')
    SQLRefresh.Strings = (
      
        'SELECT ApuracaoPISCOFINS.Linha, ApuracaoPISCOFINS.Ordem, Apuraca' +
        'oPISCOFINS.Tipo, ApuracaoPISCOFINS.Descricao, ApuracaoPISCOFINS.' +
        'Aliquota_PIS, ApuracaoPISCOFINS.Aliquota_COFINS, ApuracaoPISCOFI' +
        'NS.Valor, ApuracaoPISCOFINS.Valor_PIS, ApuracaoPISCOFINS.Valor_C' +
        'OFINS, ApuracaoPISCOFINS.Grupo, ApuracaoPISCOFINS.Debito_Credito' +
        ', ApuracaoPISCOFINS.Valor_BC FROM ApuracaoPISCOFINS'
      'WHERE ApuracaoPISCOFINS.Linha = :Linha ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ApuracaoPISCOFINS')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 158
    Top = 120
  end
  object dsApuracaoPISCOFINS: TDataSource
    DataSet = ApuracaoPISCOFINS
    Left = 158
    Top = 168
  end
  object SaldoPISCOFINS: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SaldoPISCOFINS'
      '  (Mes_Ano, Saldo_PIS, Saldo_COFINS)'
      'VALUES'
      '  (:Mes_Ano, :Saldo_PIS, :Saldo_COFINS)')
    SQLDelete.Strings = (
      'DELETE FROM SaldoPISCOFINS'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano')
    SQLUpdate.Strings = (
      'UPDATE SaldoPISCOFINS'
      'SET'
      
        '  Mes_Ano = :Mes_Ano, Saldo_PIS = :Saldo_PIS, Saldo_COFINS = :Sa' +
        'ldo_COFINS'
      'WHERE'
      '  Mes_Ano = :Old_Mes_Ano')
    SQLRefresh.Strings = (
      
        'SELECT SaldoPISCOFINS.Mes_Ano, SaldoPISCOFINS.Saldo_PIS, SaldoPI' +
        'SCOFINS.Saldo_COFINS FROM SaldoPISCOFINS'
      'WHERE SaldoPISCOFINS.Mes_Ano = :Mes_Ano ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM SaldoPISCOFINS')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 267
    Top = 120
    object SaldoPISCOFINSMes_Ano: TStringField
      FieldName = 'Mes_Ano'
      Origin = 'SaldoPISCOFINS.Mes_Ano'
      FixedChar = True
      Size = 6
    end
    object SaldoPISCOFINSSaldo_PIS: TCurrencyField
      FieldName = 'Saldo_PIS'
      Origin = 'SaldoPISCOFINS.Saldo_PIS'
    end
    object SaldoPISCOFINSSaldo_COFINS: TCurrencyField
      FieldName = 'Saldo_COFINS'
      Origin = 'SaldoPISCOFINS.Saldo_COFINS'
    end
  end
  object dsSaldoPISCOFINS: TDataSource
    DataSet = SaldoPISCOFINS
    Left = 267
    Top = 168
  end
  object Duplicatas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Duplicatas'
      
        '  (Duplicata, Fatura, Vencimento, Data_Vencimento, Valor, Aliquo' +
        'ta_Desconto, Desconto, Desconto_Data, Valor_Liquido, Parcela, Cl' +
        'assificacao, Data_Emissao, Numero)'
      'VALUES'
      
        '  (:Duplicata, :Fatura, :Vencimento, :Data_Vencimento, :Valor, :' +
        'Aliquota_Desconto, :Desconto, :Desconto_Data, :Valor_Liquido, :P' +
        'arcela, :Classificacao, :Data_Emissao, :Numero)')
    SQLDelete.Strings = (
      'DELETE FROM Duplicatas'
      'WHERE'
      
        '  Duplicata = :Old_Duplicata AND Data_Emissao = :Old_Data_Emissa' +
        'o')
    SQLUpdate.Strings = (
      'UPDATE Duplicatas'
      'SET'
      
        '  Duplicata = :Duplicata, Fatura = :Fatura, Vencimento = :Vencim' +
        'ento, Data_Vencimento = :Data_Vencimento, Valor = :Valor, Aliquo' +
        'ta_Desconto = :Aliquota_Desconto, Desconto = :Desconto, Desconto' +
        '_Data = :Desconto_Data, Valor_Liquido = :Valor_Liquido, Parcela ' +
        '= :Parcela, Classificacao = :Classificacao, Data_Emissao = :Data' +
        '_Emissao, Numero = :Numero'
      'WHERE'
      
        '  Duplicata = :Old_Duplicata AND Data_Emissao = :Old_Data_Emissa' +
        'o')
    SQLRefresh.Strings = (
      
        'SELECT Duplicatas.Duplicata, Duplicatas.Fatura, Duplicatas.Venci' +
        'mento, Duplicatas.Data_Vencimento, Duplicatas.Valor, Duplicatas.' +
        'Aliquota_Desconto, Duplicatas.Desconto, Duplicatas.Desconto_Data' +
        ', Duplicatas.Valor_Liquido, Duplicatas.Parcela, Duplicatas.Class' +
        'ificacao, Duplicatas.Data_Emissao, Duplicatas.Numero FROM Duplic' +
        'atas'
      
        'WHERE Duplicatas.Duplicata = :Duplicata AND Duplicatas.Data_Emis' +
        'sao = :Data_Emissao ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Duplicatas')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 407
    Top = 121
    object DuplicatasDuplicata: TStringField
      FieldName = 'Duplicata'
      FixedChar = True
      Size = 12
    end
    object DuplicatasFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'Duplicatas.Fatura'
      EditMask = '000000000'
      FixedChar = True
      Size = 10
    end
    object DuplicatasVencimento: TStringField
      FieldName = 'Vencimento'
      Origin = 'Duplicatas.Vencimento'
      Size = 10
    end
    object DuplicatasData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'Duplicatas.Data_Vencimento'
    end
    object DuplicatasValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'Duplicatas.Valor'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object DuplicatasAliquota_Desconto: TFloatField
      FieldName = 'Aliquota_Desconto'
      Origin = 'Duplicatas.Aliquota_Desconto'
      DisplayFormat = '##0.00'
    end
    object DuplicatasDesconto: TCurrencyField
      FieldName = 'Desconto'
      Origin = 'Duplicatas.Desconto'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object DuplicatasValor_Liquido: TCurrencyField
      FieldName = 'Valor_Liquido'
      Origin = 'Duplicatas.Valor_Liquido'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object DuplicatasParcela: TStringField
      FieldName = 'Parcela'
      Origin = 'Duplicatas.Parcela'
      Size = 25
    end
    object DuplicatasDesconto_Data: TDateTimeField
      FieldName = 'Desconto_Data'
    end
    object DuplicatasClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 15
    end
    object DuplicatasData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
    end
    object DuplicatasNumero: TStringField
      FieldName = 'Numero'
      Size = 12
    end
  end
  object dsDuplicatas: TDataSource
    DataSet = Duplicatas
    Left = 407
    Top = 169
  end
  object ModalidadeBCICMSST: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT ModalidadeBCICMSST.Codigo, ModalidadeBCICMSST.Descricao F' +
        'ROM ModalidadeBCICMSST'
      'WHERE ModalidadeBCICMSST.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM ModalidadeBCICMSST')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1030
    Top = 5
    object ModalidadeBCICMSSTCodigo: TSmallintField
      FieldName = 'Codigo'
    end
    object ModalidadeBCICMSSTDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
  end
  object dsModalidadeBCICMSST: TDataSource
    DataSet = ModalidadeBCICMSST
    Left = 1006
    Top = 61
  end
  object NCM: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NCM'
      
        '  (NCM, Codigo_EXTIPI, Produto, Unidade, PIS, COFINS, II, IPI_Va' +
        'lor, IPI, DNF, CodigoTrib_TabA, ICMS_Operacional, ICMS_Reducao, ' +
        'ICMS_Isento, ICMS_Suspensao, AC_ICMS, AL_ICMS, AM_ICMS, AP_ICMS,' +
        ' BA_ICMS, CE_ICMS, DF_ICMS, ES_ICMS, GO_ICMS, MA_ICMS, MG_ICMS, ' +
        'MS_ICMS, MT_ICMS, PA_ICMS, PB_ICMS, PE_ICMS, PI_ICMS, PR_ICMS, R' +
        'J_ICMS, RN_ICMS, RO_ICMS, RR_ICMS, RS_ICMS, SC_ICMS, SE_ICMS, SP' +
        '_ICMS, TO_ICMS, AC_MVA, AL_MVA, AM_MVA, AP_MVA, BA_MVA, CE_MVA, ' +
        'DF_MVA, ES_MVA, GO_MVA, MA_MVA, MG_MVA, MS_MVA, MT_MVA, PA_MVA, ' +
        'PB_MVA, PE_MVA, PI_MVA, PR_MVA, RJ_MVA, RN_MVA, RO_MVA, RR_MVA, ' +
        'RS_MVA, SC_MVA, SE_MVA, SP_MVA, TO_MVA, CST_PIS, CST_COFINS, Mod' +
        'alidade_BCICMS, Modalidade_BCICMSST, Enquadramento_IPI, Selo_IPI' +
        ', IPI_Isento, IPI_Suspensao, Codigo_DNF, FatorConv_DNF, Capacida' +
        'deVol_DNF, Genero, IPI_TribAliquotaZero, EX_ICMS, EX_MVA, Reduca' +
        'o_IPI, Reducao_II, Acordo_TarifarioII, Acordo_TarifarioIPI, Cust' +
        'o_Seletivo, PIS_Nota, COFINS_Nota, PIS_Reducao, COFINS_Reducao, ' +
        'CodigoTrib_TabA2, PIS_NotaSaida, COFINS_NotaSaida, AC_Reducao, A' +
        'L_Reducao, AM_Reducao, AP_Reducao, BA_Reducao, CE_Reducao, DF_Re' +
        'ducao, ES_Reducao, GO_Reducao, MA_Reducao, MG_Reducao, MS_Reduca' +
        'o, MT_Reducao, PA_Reducao, PB_Reducao, PE_Reducao, PI_Reducao, P' +
        'R_Reducao, RJ_Reducao, RN_Reducao, RO_Reducao, RR_Reducao, RS_Re' +
        'ducao, SC_Reducao, SE_Reducao, SP_Reducao, TO_Reducao, EX_Reduca' +
        'o, AC_ReducaoST, AL_ReducaoST, AM_ReducaoST, AP_ReducaoST, BA_Re' +
        'ducaoST, CE_ReducaoST, DF_ReducaoST, ES_ReducaoST, GO_ReducaoST,' +
        ' MA_ReducaoST, MG_ReducaoST, MS_ReducaoST, MT_ReducaoST, PA_Redu' +
        'caoST, PB_ReducaoST, PE_ReducaoST, PI_ReducaoST, PR_ReducaoST, R' +
        'J_ReducaoST, RN_ReducaoST, RO_ReducaoST, RR_ReducaoST, RS_Reduca' +
        'oST, SC_ReducaoST, SE_ReducaoST, SP_ReducaoST, TO_ReducaoST, EX_' +
        'ReducaoST, ICMS_Imune, CEST, FCP, MVA_NaoReducao, AC_MVANac, AL_' +
        'MVANac, AM_MVANac, AP_MVANac, BA_MVANac, CE_MVANac, DF_MVANac, E' +
        'S_MVANac, GO_MVANac, MA_MVANac, MG_MVANac, MS_MVANac, MT_MVANac,' +
        ' PA_MVANac, PB_MVANac, PE_MVANac, PI_MVANac, PR_MVANac, RJ_MVANa' +
        'c, RN_MVANac, RO_MVANac, RR_MVANac, RS_MVANac, SC_MVANac, SE_MVA' +
        'Nac, SP_MVANac, TO_MVANac, EX_MVANac, CodigoTrib_TabA3, NALADI, ' +
        'Destaque, NALADI_NCCA, Acordo_TarifarioIICod, II_Reduzida, IPI_A' +
        'liqEspRecip, IPI_AliqEspUnid, Aliquota_RedIPI, ICMS_Importacao, ' +
        'Regime_TribPISCOFINS, Fundamento_RedPISCOFINS, Regime_TribII, AC' +
        '_Reducao2, AL_Reducao2, AM_Reducao2, AP_Reducao2, BA_Reducao2, C' +
        'E_Reducao2, DF_Reducao2, ES_Reducao2, GO_Reducao2, MA_Reducao2, ' +
        'MG_Reducao2, MS_Reducao2, MT_Reducao2, PA_Reducao2, PB_Reducao2,' +
        ' PE_Reducao2, PI_Reducao2, PR_Reducao2, RJ_Reducao2, RN_Reducao2' +
        ', RO_Reducao2, RR_Reducao2, RS_Reducao2, SC_Reducao2, SE_Reducao' +
        '2, SP_Reducao2, TO_Reducao2, EX_Reducao2, PIS_ST, Tratamento_Tri' +
        'bICMS, Codigo_cBenef, Codigo_CredPres, IBS_Isencao, IBS_Imunidad' +
        'e, IBS_Diferido, IBS_Suspensao, CBS_Isencao, CBS_Imunidade, CBS_' +
        'Diferido, CBS_Suspensao, Quantidade_Estatistica, Exige_LPCO)'
      'VALUES'
      
        '  (:NCM, :Codigo_EXTIPI, :Produto, :Unidade, :PIS, :COFINS, :II,' +
        ' :IPI_Valor, :IPI, :DNF, :CodigoTrib_TabA, :ICMS_Operacional, :I' +
        'CMS_Reducao, :ICMS_Isento, :ICMS_Suspensao, :AC_ICMS, :AL_ICMS, ' +
        ':AM_ICMS, :AP_ICMS, :BA_ICMS, :CE_ICMS, :DF_ICMS, :ES_ICMS, :GO_' +
        'ICMS, :MA_ICMS, :MG_ICMS, :MS_ICMS, :MT_ICMS, :PA_ICMS, :PB_ICMS' +
        ', :PE_ICMS, :PI_ICMS, :PR_ICMS, :RJ_ICMS, :RN_ICMS, :RO_ICMS, :R' +
        'R_ICMS, :RS_ICMS, :SC_ICMS, :SE_ICMS, :SP_ICMS, :TO_ICMS, :AC_MV' +
        'A, :AL_MVA, :AM_MVA, :AP_MVA, :BA_MVA, :CE_MVA, :DF_MVA, :ES_MVA' +
        ', :GO_MVA, :MA_MVA, :MG_MVA, :MS_MVA, :MT_MVA, :PA_MVA, :PB_MVA,' +
        ' :PE_MVA, :PI_MVA, :PR_MVA, :RJ_MVA, :RN_MVA, :RO_MVA, :RR_MVA, ' +
        ':RS_MVA, :SC_MVA, :SE_MVA, :SP_MVA, :TO_MVA, :CST_PIS, :CST_COFI' +
        'NS, :Modalidade_BCICMS, :Modalidade_BCICMSST, :Enquadramento_IPI' +
        ', :Selo_IPI, :IPI_Isento, :IPI_Suspensao, :Codigo_DNF, :FatorCon' +
        'v_DNF, :CapacidadeVol_DNF, :Genero, :IPI_TribAliquotaZero, :EX_I' +
        'CMS, :EX_MVA, :Reducao_IPI, :Reducao_II, :Acordo_TarifarioII, :A' +
        'cordo_TarifarioIPI, :Custo_Seletivo, :PIS_Nota, :COFINS_Nota, :P' +
        'IS_Reducao, :COFINS_Reducao, :CodigoTrib_TabA2, :PIS_NotaSaida, ' +
        ':COFINS_NotaSaida, :AC_Reducao, :AL_Reducao, :AM_Reducao, :AP_Re' +
        'ducao, :BA_Reducao, :CE_Reducao, :DF_Reducao, :ES_Reducao, :GO_R' +
        'educao, :MA_Reducao, :MG_Reducao, :MS_Reducao, :MT_Reducao, :PA_' +
        'Reducao, :PB_Reducao, :PE_Reducao, :PI_Reducao, :PR_Reducao, :RJ' +
        '_Reducao, :RN_Reducao, :RO_Reducao, :RR_Reducao, :RS_Reducao, :S' +
        'C_Reducao, :SE_Reducao, :SP_Reducao, :TO_Reducao, :EX_Reducao, :' +
        'AC_ReducaoST, :AL_ReducaoST, :AM_ReducaoST, :AP_ReducaoST, :BA_R' +
        'educaoST, :CE_ReducaoST, :DF_ReducaoST, :ES_ReducaoST, :GO_Reduc' +
        'aoST, :MA_ReducaoST, :MG_ReducaoST, :MS_ReducaoST, :MT_ReducaoST' +
        ', :PA_ReducaoST, :PB_ReducaoST, :PE_ReducaoST, :PI_ReducaoST, :P' +
        'R_ReducaoST, :RJ_ReducaoST, :RN_ReducaoST, :RO_ReducaoST, :RR_Re' +
        'ducaoST, :RS_ReducaoST, :SC_ReducaoST, :SE_ReducaoST, :SP_Reduca' +
        'oST, :TO_ReducaoST, :EX_ReducaoST, :ICMS_Imune, :CEST, :FCP, :MV' +
        'A_NaoReducao, :AC_MVANac, :AL_MVANac, :AM_MVANac, :AP_MVANac, :B' +
        'A_MVANac, :CE_MVANac, :DF_MVANac, :ES_MVANac, :GO_MVANac, :MA_MV' +
        'ANac, :MG_MVANac, :MS_MVANac, :MT_MVANac, :PA_MVANac, :PB_MVANac' +
        ', :PE_MVANac, :PI_MVANac, :PR_MVANac, :RJ_MVANac, :RN_MVANac, :R' +
        'O_MVANac, :RR_MVANac, :RS_MVANac, :SC_MVANac, :SE_MVANac, :SP_MV' +
        'ANac, :TO_MVANac, :EX_MVANac, :CodigoTrib_TabA3, :NALADI, :Desta' +
        'que, :NALADI_NCCA, :Acordo_TarifarioIICod, :II_Reduzida, :IPI_Al' +
        'iqEspRecip, :IPI_AliqEspUnid, :Aliquota_RedIPI, :ICMS_Importacao' +
        ', :Regime_TribPISCOFINS, :Fundamento_RedPISCOFINS, :Regime_TribI' +
        'I, :AC_Reducao2, :AL_Reducao2, :AM_Reducao2, :AP_Reducao2, :BA_R' +
        'educao2, :CE_Reducao2, :DF_Reducao2, :ES_Reducao2, :GO_Reducao2,' +
        ' :MA_Reducao2, :MG_Reducao2, :MS_Reducao2, :MT_Reducao2, :PA_Red' +
        'ucao2, :PB_Reducao2, :PE_Reducao2, :PI_Reducao2, :PR_Reducao2, :' +
        'RJ_Reducao2, :RN_Reducao2, :RO_Reducao2, :RR_Reducao2, :RS_Reduc' +
        'ao2, :SC_Reducao2, :SE_Reducao2, :SP_Reducao2, :TO_Reducao2, :EX' +
        '_Reducao2, :PIS_ST, :Tratamento_TribICMS, :Codigo_cBenef, :Codig' +
        'o_CredPres, :IBS_Isencao, :IBS_Imunidade, :IBS_Diferido, :IBS_Su' +
        'spensao, :CBS_Isencao, :CBS_Imunidade, :CBS_Diferido, :CBS_Suspe' +
        'nsao, :Quantidade_Estatistica, :Exige_LPCO)')
    SQLDelete.Strings = (
      'DELETE FROM NCM'
      'WHERE'
      '  NCM = :Old_NCM')
    SQLUpdate.Strings = (
      'UPDATE NCM'
      'SET'
      
        '  NCM = :NCM, Codigo_EXTIPI = :Codigo_EXTIPI, Produto = :Produto' +
        ', Unidade = :Unidade, PIS = :PIS, COFINS = :COFINS, II = :II, IP' +
        'I_Valor = :IPI_Valor, IPI = :IPI, DNF = :DNF, CodigoTrib_TabA = ' +
        ':CodigoTrib_TabA, ICMS_Operacional = :ICMS_Operacional, ICMS_Red' +
        'ucao = :ICMS_Reducao, ICMS_Isento = :ICMS_Isento, ICMS_Suspensao' +
        ' = :ICMS_Suspensao, AC_ICMS = :AC_ICMS, AL_ICMS = :AL_ICMS, AM_I' +
        'CMS = :AM_ICMS, AP_ICMS = :AP_ICMS, BA_ICMS = :BA_ICMS, CE_ICMS ' +
        '= :CE_ICMS, DF_ICMS = :DF_ICMS, ES_ICMS = :ES_ICMS, GO_ICMS = :G' +
        'O_ICMS, MA_ICMS = :MA_ICMS, MG_ICMS = :MG_ICMS, MS_ICMS = :MS_IC' +
        'MS, MT_ICMS = :MT_ICMS, PA_ICMS = :PA_ICMS, PB_ICMS = :PB_ICMS, ' +
        'PE_ICMS = :PE_ICMS, PI_ICMS = :PI_ICMS, PR_ICMS = :PR_ICMS, RJ_I' +
        'CMS = :RJ_ICMS, RN_ICMS = :RN_ICMS, RO_ICMS = :RO_ICMS, RR_ICMS ' +
        '= :RR_ICMS, RS_ICMS = :RS_ICMS, SC_ICMS = :SC_ICMS, SE_ICMS = :S' +
        'E_ICMS, SP_ICMS = :SP_ICMS, TO_ICMS = :TO_ICMS, AC_MVA = :AC_MVA' +
        ', AL_MVA = :AL_MVA, AM_MVA = :AM_MVA, AP_MVA = :AP_MVA, BA_MVA =' +
        ' :BA_MVA, CE_MVA = :CE_MVA, DF_MVA = :DF_MVA, ES_MVA = :ES_MVA, ' +
        'GO_MVA = :GO_MVA, MA_MVA = :MA_MVA, MG_MVA = :MG_MVA, MS_MVA = :' +
        'MS_MVA, MT_MVA = :MT_MVA, PA_MVA = :PA_MVA, PB_MVA = :PB_MVA, PE' +
        '_MVA = :PE_MVA, PI_MVA = :PI_MVA, PR_MVA = :PR_MVA, RJ_MVA = :RJ' +
        '_MVA, RN_MVA = :RN_MVA, RO_MVA = :RO_MVA, RR_MVA = :RR_MVA, RS_M' +
        'VA = :RS_MVA, SC_MVA = :SC_MVA, SE_MVA = :SE_MVA, SP_MVA = :SP_M' +
        'VA, TO_MVA = :TO_MVA, CST_PIS = :CST_PIS, CST_COFINS = :CST_COFI' +
        'NS, Modalidade_BCICMS = :Modalidade_BCICMS, Modalidade_BCICMSST ' +
        '= :Modalidade_BCICMSST, Enquadramento_IPI = :Enquadramento_IPI, ' +
        'Selo_IPI = :Selo_IPI, IPI_Isento = :IPI_Isento, IPI_Suspensao = ' +
        ':IPI_Suspensao, Codigo_DNF = :Codigo_DNF, FatorConv_DNF = :Fator' +
        'Conv_DNF, CapacidadeVol_DNF = :CapacidadeVol_DNF, Genero = :Gene' +
        'ro, IPI_TribAliquotaZero = :IPI_TribAliquotaZero, EX_ICMS = :EX_' +
        'ICMS, EX_MVA = :EX_MVA, Reducao_IPI = :Reducao_IPI, Reducao_II =' +
        ' :Reducao_II, Acordo_TarifarioII = :Acordo_TarifarioII, Acordo_T' +
        'arifarioIPI = :Acordo_TarifarioIPI, Custo_Seletivo = :Custo_Sele' +
        'tivo, PIS_Nota = :PIS_Nota, COFINS_Nota = :COFINS_Nota, PIS_Redu' +
        'cao = :PIS_Reducao, COFINS_Reducao = :COFINS_Reducao, CodigoTrib' +
        '_TabA2 = :CodigoTrib_TabA2, PIS_NotaSaida = :PIS_NotaSaida, COFI' +
        'NS_NotaSaida = :COFINS_NotaSaida, AC_Reducao = :AC_Reducao, AL_R' +
        'educao = :AL_Reducao, AM_Reducao = :AM_Reducao, AP_Reducao = :AP' +
        '_Reducao, BA_Reducao = :BA_Reducao, CE_Reducao = :CE_Reducao, DF' +
        '_Reducao = :DF_Reducao, ES_Reducao = :ES_Reducao, GO_Reducao = :' +
        'GO_Reducao, MA_Reducao = :MA_Reducao, MG_Reducao = :MG_Reducao, ' +
        'MS_Reducao = :MS_Reducao, MT_Reducao = :MT_Reducao, PA_Reducao =' +
        ' :PA_Reducao, PB_Reducao = :PB_Reducao, PE_Reducao = :PE_Reducao' +
        ', PI_Reducao = :PI_Reducao, PR_Reducao = :PR_Reducao, RJ_Reducao' +
        ' = :RJ_Reducao, RN_Reducao = :RN_Reducao, RO_Reducao = :RO_Reduc' +
        'ao, RR_Reducao = :RR_Reducao, RS_Reducao = :RS_Reducao, SC_Reduc' +
        'ao = :SC_Reducao, SE_Reducao = :SE_Reducao, SP_Reducao = :SP_Red' +
        'ucao, TO_Reducao = :TO_Reducao, EX_Reducao = :EX_Reducao, AC_Red' +
        'ucaoST = :AC_ReducaoST, AL_ReducaoST = :AL_ReducaoST, AM_Reducao' +
        'ST = :AM_ReducaoST, AP_ReducaoST = :AP_ReducaoST, BA_ReducaoST =' +
        ' :BA_ReducaoST, CE_ReducaoST = :CE_ReducaoST, DF_ReducaoST = :DF' +
        '_ReducaoST, ES_ReducaoST = :ES_ReducaoST, GO_ReducaoST = :GO_Red' +
        'ucaoST, MA_ReducaoST = :MA_ReducaoST, MG_ReducaoST = :MG_Reducao' +
        'ST, MS_ReducaoST = :MS_ReducaoST, MT_ReducaoST = :MT_ReducaoST, ' +
        'PA_ReducaoST = :PA_ReducaoST, PB_ReducaoST = :PB_ReducaoST, PE_R' +
        'educaoST = :PE_ReducaoST, PI_ReducaoST = :PI_ReducaoST, PR_Reduc' +
        'aoST = :PR_ReducaoST, RJ_ReducaoST = :RJ_ReducaoST, RN_ReducaoST' +
        ' = :RN_ReducaoST, RO_ReducaoST = :RO_ReducaoST, RR_ReducaoST = :' +
        'RR_ReducaoST, RS_ReducaoST = :RS_ReducaoST, SC_ReducaoST = :SC_R' +
        'educaoST, SE_ReducaoST = :SE_ReducaoST, SP_ReducaoST = :SP_Reduc' +
        'aoST, TO_ReducaoST = :TO_ReducaoST, EX_ReducaoST = :EX_ReducaoST' +
        ', ICMS_Imune = :ICMS_Imune, CEST = :CEST, FCP = :FCP, MVA_NaoRed' +
        'ucao = :MVA_NaoReducao, AC_MVANac = :AC_MVANac, AL_MVANac = :AL_' +
        'MVANac, AM_MVANac = :AM_MVANac, AP_MVANac = :AP_MVANac, BA_MVANa' +
        'c = :BA_MVANac, CE_MVANac = :CE_MVANac, DF_MVANac = :DF_MVANac, ' +
        'ES_MVANac = :ES_MVANac, GO_MVANac = :GO_MVANac, MA_MVANac = :MA_' +
        'MVANac, MG_MVANac = :MG_MVANac, MS_MVANac = :MS_MVANac, MT_MVANa' +
        'c = :MT_MVANac, PA_MVANac = :PA_MVANac, PB_MVANac = :PB_MVANac, ' +
        'PE_MVANac = :PE_MVANac, PI_MVANac = :PI_MVANac, PR_MVANac = :PR_' +
        'MVANac, RJ_MVANac = :RJ_MVANac, RN_MVANac = :RN_MVANac, RO_MVANa' +
        'c = :RO_MVANac, RR_MVANac = :RR_MVANac, RS_MVANac = :RS_MVANac, ' +
        'SC_MVANac = :SC_MVANac, SE_MVANac = :SE_MVANac, SP_MVANac = :SP_' +
        'MVANac, TO_MVANac = :TO_MVANac, EX_MVANac = :EX_MVANac, CodigoTr' +
        'ib_TabA3 = :CodigoTrib_TabA3, NALADI = :NALADI, Destaque = :Dest' +
        'aque, NALADI_NCCA = :NALADI_NCCA, Acordo_TarifarioIICod = :Acord' +
        'o_TarifarioIICod, II_Reduzida = :II_Reduzida, IPI_AliqEspRecip =' +
        ' :IPI_AliqEspRecip, IPI_AliqEspUnid = :IPI_AliqEspUnid, Aliquota' +
        '_RedIPI = :Aliquota_RedIPI, ICMS_Importacao = :ICMS_Importacao, ' +
        'Regime_TribPISCOFINS = :Regime_TribPISCOFINS, Fundamento_RedPISC' +
        'OFINS = :Fundamento_RedPISCOFINS, Regime_TribII = :Regime_TribII' +
        ', AC_Reducao2 = :AC_Reducao2, AL_Reducao2 = :AL_Reducao2, AM_Red' +
        'ucao2 = :AM_Reducao2, AP_Reducao2 = :AP_Reducao2, BA_Reducao2 = ' +
        ':BA_Reducao2, CE_Reducao2 = :CE_Reducao2, DF_Reducao2 = :DF_Redu' +
        'cao2, ES_Reducao2 = :ES_Reducao2, GO_Reducao2 = :GO_Reducao2, MA' +
        '_Reducao2 = :MA_Reducao2, MG_Reducao2 = :MG_Reducao2, MS_Reducao' +
        '2 = :MS_Reducao2, MT_Reducao2 = :MT_Reducao2, PA_Reducao2 = :PA_' +
        'Reducao2, PB_Reducao2 = :PB_Reducao2, PE_Reducao2 = :PE_Reducao2' +
        ', PI_Reducao2 = :PI_Reducao2, PR_Reducao2 = :PR_Reducao2, RJ_Red' +
        'ucao2 = :RJ_Reducao2, RN_Reducao2 = :RN_Reducao2, RO_Reducao2 = ' +
        ':RO_Reducao2, RR_Reducao2 = :RR_Reducao2, RS_Reducao2 = :RS_Redu' +
        'cao2, SC_Reducao2 = :SC_Reducao2, SE_Reducao2 = :SE_Reducao2, SP' +
        '_Reducao2 = :SP_Reducao2, TO_Reducao2 = :TO_Reducao2, EX_Reducao' +
        '2 = :EX_Reducao2, PIS_ST = :PIS_ST, Tratamento_TribICMS = :Trata' +
        'mento_TribICMS, Codigo_cBenef = :Codigo_cBenef, Codigo_CredPres ' +
        '= :Codigo_CredPres, IBS_Isencao = :IBS_Isencao, IBS_Imunidade = ' +
        ':IBS_Imunidade, IBS_Diferido = :IBS_Diferido, IBS_Suspensao = :I' +
        'BS_Suspensao, CBS_Isencao = :CBS_Isencao, CBS_Imunidade = :CBS_I' +
        'munidade, CBS_Diferido = :CBS_Diferido, CBS_Suspensao = :CBS_Sus' +
        'pensao, Quantidade_Estatistica = :Quantidade_Estatistica, Exige_' +
        'LPCO = :Exige_LPCO'
      'WHERE'
      '  NCM = :Old_NCM')
    SQLRefresh.Strings = (
      
        'SELECT NCM, Codigo_EXTIPI, Produto, Unidade, PIS, COFINS, II, IP' +
        'I_Valor, IPI, DNF, CodigoTrib_TabA, ICMS_Operacional, ICMS_Reduc' +
        'ao, ICMS_Isento, ICMS_Suspensao, AC_ICMS, AL_ICMS, AM_ICMS, AP_I' +
        'CMS, BA_ICMS, CE_ICMS, DF_ICMS, ES_ICMS, GO_ICMS, MA_ICMS, MG_IC' +
        'MS, MS_ICMS, MT_ICMS, PA_ICMS, PB_ICMS, PE_ICMS, PI_ICMS, PR_ICM' +
        'S, RJ_ICMS, RN_ICMS, RO_ICMS, RR_ICMS, RS_ICMS, SC_ICMS, SE_ICMS' +
        ', SP_ICMS, TO_ICMS, AC_MVA, AL_MVA, AM_MVA, AP_MVA, BA_MVA, CE_M' +
        'VA, DF_MVA, ES_MVA, GO_MVA, MA_MVA, MG_MVA, MS_MVA, MT_MVA, PA_M' +
        'VA, PB_MVA, PE_MVA, PI_MVA, PR_MVA, RJ_MVA, RN_MVA, RO_MVA, RR_M' +
        'VA, RS_MVA, SC_MVA, SE_MVA, SP_MVA, TO_MVA, CST_PIS, CST_COFINS,' +
        ' Modalidade_BCICMS, Modalidade_BCICMSST, Enquadramento_IPI, Selo' +
        '_IPI, IPI_Isento, IPI_Suspensao, Codigo_DNF, FatorConv_DNF, Capa' +
        'cidadeVol_DNF, Genero, IPI_TribAliquotaZero, EX_ICMS, EX_MVA, Re' +
        'ducao_IPI, Reducao_II, Acordo_TarifarioII, Acordo_TarifarioIPI, ' +
        'Custo_Seletivo, PIS_Nota, COFINS_Nota, PIS_Reducao, COFINS_Reduc' +
        'ao, CodigoTrib_TabA2, PIS_NotaSaida, COFINS_NotaSaida, AC_Reduca' +
        'o, AL_Reducao, AM_Reducao, AP_Reducao, BA_Reducao, CE_Reducao, D' +
        'F_Reducao, ES_Reducao, GO_Reducao, MA_Reducao, MG_Reducao, MS_Re' +
        'ducao, MT_Reducao, PA_Reducao, PB_Reducao, PE_Reducao, PI_Reduca' +
        'o, PR_Reducao, RJ_Reducao, RN_Reducao, RO_Reducao, RR_Reducao, R' +
        'S_Reducao, SC_Reducao, SE_Reducao, SP_Reducao, TO_Reducao, EX_Re' +
        'ducao, AC_ReducaoST, AL_ReducaoST, AM_ReducaoST, AP_ReducaoST, B' +
        'A_ReducaoST, CE_ReducaoST, DF_ReducaoST, ES_ReducaoST, GO_Reduca' +
        'oST, MA_ReducaoST, MG_ReducaoST, MS_ReducaoST, MT_ReducaoST, PA_' +
        'ReducaoST, PB_ReducaoST, PE_ReducaoST, PI_ReducaoST, PR_ReducaoS' +
        'T, RJ_ReducaoST, RN_ReducaoST, RO_ReducaoST, RR_ReducaoST, RS_Re' +
        'ducaoST, SC_ReducaoST, SE_ReducaoST, SP_ReducaoST, TO_ReducaoST,' +
        ' EX_ReducaoST, ICMS_Imune, CEST, FCP, MVA_NaoReducao, AC_MVANac,' +
        ' AL_MVANac, AM_MVANac, AP_MVANac, BA_MVANac, CE_MVANac, DF_MVANa' +
        'c, ES_MVANac, GO_MVANac, MA_MVANac, MG_MVANac, MS_MVANac, MT_MVA' +
        'Nac, PA_MVANac, PB_MVANac, PE_MVANac, PI_MVANac, PR_MVANac, RJ_M' +
        'VANac, RN_MVANac, RO_MVANac, RR_MVANac, RS_MVANac, SC_MVANac, SE' +
        '_MVANac, SP_MVANac, TO_MVANac, EX_MVANac, CodigoTrib_TabA3, NALA' +
        'DI, Destaque, NALADI_NCCA, Acordo_TarifarioIICod, II_Reduzida, I' +
        'PI_AliqEspRecip, IPI_AliqEspUnid, Aliquota_RedIPI, ICMS_Importac' +
        'ao, Regime_TribPISCOFINS, Fundamento_RedPISCOFINS, Regime_TribII' +
        ', AC_Reducao2, AL_Reducao2, AM_Reducao2, AP_Reducao2, BA_Reducao' +
        '2, CE_Reducao2, DF_Reducao2, ES_Reducao2, GO_Reducao2, MA_Reduca' +
        'o2, MG_Reducao2, MS_Reducao2, MT_Reducao2, PA_Reducao2, PB_Reduc' +
        'ao2, PE_Reducao2, PI_Reducao2, PR_Reducao2, RJ_Reducao2, RN_Redu' +
        'cao2, RO_Reducao2, RR_Reducao2, RS_Reducao2, SC_Reducao2, SE_Red' +
        'ucao2, SP_Reducao2, TO_Reducao2, EX_Reducao2, PIS_ST, Tratamento' +
        '_TribICMS, Codigo_cBenef, Codigo_CredPres, IBS_Isencao, IBS_Imun' +
        'idade, IBS_Diferido, IBS_Suspensao, CBS_Isencao, CBS_Imunidade, ' +
        'CBS_Diferido, CBS_Suspensao, Quantidade_Estatistica, Exige_LPCO ' +
        'FROM NCM'
      'WHERE'
      '  NCM = :NCM')
    SQLLock.Strings = (
      'SELECT * FROM NCM'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  NCM = :Old_NCM')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM NCM'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM NCM ORDER BY NCM')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    BeforePost = NCMBeforePost
    Left = 472
    Top = 121
    object NCMNCM: TStringField
      DisplayWidth = 7
      FieldName = 'NCM'
      Origin = 'NCM.NCM'
      EditMask = '9999.99.99;0; '
      FixedChar = True
      Size = 8
    end
    object NCMProduto: TStringField
      FieldName = 'Produto'
      Origin = 'NCM.Produto'
      Size = 60
    end
    object NCMPIS: TFloatField
      FieldName = 'PIS'
      Origin = 'NCM.PIS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object NCMCOFINS: TFloatField
      FieldName = 'COFINS'
      Origin = 'NCM.COFINS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object NCMII: TFloatField
      FieldName = 'II'
      Origin = 'NCM.II'
      DisplayFormat = '#0.00'
    end
    object NCMIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'NCM.IPI'
      DisplayFormat = '#0.00'
    end
    object NCMDNF: TBooleanField
      FieldName = 'DNF'
      Origin = 'NCM.DNF'
    end
    object NCMICMS_Operacional: TFloatField
      FieldName = 'ICMS_Operacional'
      Origin = 'NCM.ICMS_Operacional'
      DisplayFormat = '#0.00'
    end
    object NCMICMS_Reducao: TFloatField
      FieldName = 'ICMS_Reducao'
      Origin = 'NCM.ICMS_Reducao'
      DisplayFormat = '#0.000000'
    end
    object NCMAC_ICMS: TFloatField
      FieldName = 'AC_ICMS'
      Origin = 'NCM.AC_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMAL_ICMS: TFloatField
      FieldName = 'AL_ICMS'
      Origin = 'NCM.AL_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMAM_ICMS: TFloatField
      FieldName = 'AM_ICMS'
      Origin = 'NCM.AM_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMAP_ICMS: TFloatField
      FieldName = 'AP_ICMS'
      Origin = 'NCM.AP_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMBA_ICMS: TFloatField
      FieldName = 'BA_ICMS'
      Origin = 'NCM.BA_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMCE_ICMS: TFloatField
      FieldName = 'CE_ICMS'
      Origin = 'NCM.CE_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMDF_ICMS: TFloatField
      FieldName = 'DF_ICMS'
      Origin = 'NCM.DF_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMES_ICMS: TFloatField
      FieldName = 'ES_ICMS'
      Origin = 'NCM.ES_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMGO_ICMS: TFloatField
      FieldName = 'GO_ICMS'
      Origin = 'NCM.GO_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMMA_ICMS: TFloatField
      FieldName = 'MA_ICMS'
      Origin = 'NCM.MA_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMMG_ICMS: TFloatField
      FieldName = 'MG_ICMS'
      Origin = 'NCM.MG_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMMS_ICMS: TFloatField
      FieldName = 'MS_ICMS'
      Origin = 'NCM.MS_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMMT_ICMS: TFloatField
      FieldName = 'MT_ICMS'
      Origin = 'NCM.MT_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMPA_ICMS: TFloatField
      FieldName = 'PA_ICMS'
      Origin = 'NCM.PA_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMPB_ICMS: TFloatField
      FieldName = 'PB_ICMS'
      Origin = 'NCM.PB_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMPE_ICMS: TFloatField
      FieldName = 'PE_ICMS'
      Origin = 'NCM.PE_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMPI_ICMS: TFloatField
      FieldName = 'PI_ICMS'
      Origin = 'NCM.PI_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMPR_ICMS: TFloatField
      FieldName = 'PR_ICMS'
      Origin = 'NCM.PR_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMRJ_ICMS: TFloatField
      FieldName = 'RJ_ICMS'
      Origin = 'NCM.RJ_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMRN_ICMS: TFloatField
      FieldName = 'RN_ICMS'
      Origin = 'NCM.RN_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMRO_ICMS: TFloatField
      FieldName = 'RO_ICMS'
      Origin = 'NCM.RO_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMRR_ICMS: TFloatField
      FieldName = 'RR_ICMS'
      Origin = 'NCM.RR_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMRS_ICMS: TFloatField
      FieldName = 'RS_ICMS'
      Origin = 'NCM.RS_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMSC_ICMS: TFloatField
      FieldName = 'SC_ICMS'
      Origin = 'NCM.SC_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMSE_ICMS: TFloatField
      FieldName = 'SE_ICMS'
      Origin = 'NCM.SE_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMSP_ICMS: TFloatField
      FieldName = 'SP_ICMS'
      Origin = 'NCM.SP_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMTO_ICMS: TFloatField
      FieldName = 'TO_ICMS'
      Origin = 'NCM.TO_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMAC_MVA: TFloatField
      FieldName = 'AC_MVA'
      Origin = 'NCM.AC_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMAL_MVA: TFloatField
      FieldName = 'AL_MVA'
      Origin = 'NCM.AL_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMAM_MVA: TFloatField
      FieldName = 'AM_MVA'
      Origin = 'NCM.AM_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMAP_MVA: TFloatField
      FieldName = 'AP_MVA'
      Origin = 'NCM.AP_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMBA_MVA: TFloatField
      FieldName = 'BA_MVA'
      Origin = 'NCM.BA_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMCE_MVA: TFloatField
      FieldName = 'CE_MVA'
      Origin = 'NCM.CE_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMDF_MVA: TFloatField
      FieldName = 'DF_MVA'
      Origin = 'NCM.DF_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMES_MVA: TFloatField
      FieldName = 'ES_MVA'
      Origin = 'NCM.ES_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMGO_MVA: TFloatField
      FieldName = 'GO_MVA'
      Origin = 'NCM.GO_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMMA_MVA: TFloatField
      FieldName = 'MA_MVA'
      Origin = 'NCM.MA_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMMG_MVA: TFloatField
      FieldName = 'MG_MVA'
      Origin = 'NCM.MG_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMMS_MVA: TFloatField
      FieldName = 'MS_MVA'
      Origin = 'NCM.MS_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMMT_MVA: TFloatField
      FieldName = 'MT_MVA'
      Origin = 'NCM.MT_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMPA_MVA: TFloatField
      FieldName = 'PA_MVA'
      Origin = 'NCM.PA_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMPB_MVA: TFloatField
      FieldName = 'PB_MVA'
      Origin = 'NCM.PB_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMPE_MVA: TFloatField
      FieldName = 'PE_MVA'
      Origin = 'NCM.PE_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMPI_MVA: TFloatField
      FieldName = 'PI_MVA'
      Origin = 'NCM.PI_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMPR_MVA: TFloatField
      FieldName = 'PR_MVA'
      Origin = 'NCM.PR_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMRJ_MVA: TFloatField
      FieldName = 'RJ_MVA'
      Origin = 'NCM.RJ_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMRN_MVA: TFloatField
      FieldName = 'RN_MVA'
      Origin = 'NCM.RN_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMRO_MVA: TFloatField
      FieldName = 'RO_MVA'
      Origin = 'NCM.RO_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMRR_MVA: TFloatField
      FieldName = 'RR_MVA'
      Origin = 'NCM.RR_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMRS_MVA: TFloatField
      FieldName = 'RS_MVA'
      Origin = 'NCM.RS_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMSC_MVA: TFloatField
      FieldName = 'SC_MVA'
      Origin = 'NCM.SC_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMSP_MVA: TFloatField
      FieldName = 'SP_MVA'
      Origin = 'NCM.SP_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMSE_MVA: TFloatField
      FieldName = 'SE_MVA'
      Origin = 'NCM.SE_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMTO_MVA: TFloatField
      FieldName = 'TO_MVA'
      Origin = 'NCM.TO_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMEX_ICMS: TFloatField
      FieldName = 'EX_ICMS'
      Origin = 'NCM.EX_ICMS'
      DisplayFormat = '#0.00'
    end
    object NCMEX_MVA: TFloatField
      FieldName = 'EX_MVA'
      Origin = 'NCM.EX_MVA'
      DisplayFormat = '#0.00'
    end
    object NCMCodigoTrib_TabA: TStringField
      FieldName = 'CodigoTrib_TabA'
      Origin = 'NCM.CodigoTrib_TabA'
      FixedChar = True
      Size = 2
    end
    object NCMCodigoTrib_TabA2: TStringField
      FieldName = 'CodigoTrib_TabA2'
      Origin = 'NCM.CodigoTrib_TabA2'
      FixedChar = True
      Size = 2
    end
    object NCMUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'NCM.Unidade'
      FixedChar = True
      Size = 3
    end
    object NCMCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'NCM.CST_PIS'
      FixedChar = True
      Size = 2
    end
    object NCMCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'NCM.CST_COFINS'
      FixedChar = True
      Size = 2
    end
    object NCMModalidade_BCICMS: TSmallintField
      FieldName = 'Modalidade_BCICMS'
      Origin = 'NCM.Modalidade_BCICMS'
    end
    object NCMCodigo_EXTIPI: TSmallintField
      FieldName = 'Codigo_EXTIPI'
      Origin = 'NCM.Codigo_EXTIPI'
    end
    object NCMIPI_Valor: TFloatField
      FieldName = 'IPI_Valor'
      Origin = 'NCM.IPI_Valor'
      DisplayFormat = ',##0.00'
    end
    object NCMModalidade_BCICMSST: TSmallintField
      FieldName = 'Modalidade_BCICMSST'
      Origin = 'NCM.Modalidade_BCICMSST'
    end
    object NCMEnquadramento_IPI: TStringField
      FieldName = 'Enquadramento_IPI'
      Origin = 'NCM.Enquadramento_IPI'
      FixedChar = True
      Size = 3
    end
    object NCMSelo_IPI: TStringField
      FieldName = 'Selo_IPI'
      Origin = 'NCM.Selo_IPI'
      FixedChar = True
      Size = 6
    end
    object NCMICMS_Isento: TBooleanField
      FieldName = 'ICMS_Isento'
      Origin = 'NCM.ICMS_Isento'
    end
    object NCMICMS_Suspensao: TBooleanField
      FieldName = 'ICMS_Suspensao'
      Origin = 'NCM.ICMS_Suspensao'
    end
    object NCMIPI_Isento: TBooleanField
      FieldName = 'IPI_Isento'
      Origin = 'NCM.IPI_Isento'
    end
    object NCMIPI_Suspensao: TBooleanField
      FieldName = 'IPI_Suspensao'
      Origin = 'NCM.IPI_Suspensao'
    end
    object NCMCodigo_DNF: TIntegerField
      FieldName = 'Codigo_DNF'
      Origin = 'NCM.Codigo_DNF'
    end
    object NCMFatorConv_DNF: TFloatField
      FieldName = 'FatorConv_DNF'
      Origin = 'NCM.FatorConv_DNF'
    end
    object NCMCapacidadeVol_DNF: TFloatField
      FieldName = 'CapacidadeVol_DNF'
      Origin = 'NCM.CapacidadeVol_DNF'
    end
    object NCMGenero: TSmallintField
      FieldName = 'Genero'
      Origin = 'NCM.Genero'
    end
    object NCMIPI_TribAliquotaZero: TBooleanField
      FieldName = 'IPI_TribAliquotaZero'
      Origin = 'NCM.IPI_TribAliquotaZero'
    end
    object NCMReducao_IPI: TFloatField
      FieldName = 'Reducao_IPI'
      Origin = 'NCM.Reducao_IPI'
      DisplayFormat = '#0.00'
    end
    object NCMReducao_II: TFloatField
      FieldName = 'Reducao_II'
      Origin = 'NCM.Reducao_II'
      DisplayFormat = '#0.00'
    end
    object NCMAcordo_TarifarioII: TFloatField
      FieldName = 'Acordo_TarifarioII'
      Origin = 'NCM.Acordo_TarifarioII'
      DisplayFormat = '#0.00'
    end
    object NCMAcordo_TarifarioIPI: TFloatField
      FieldName = 'Acordo_TarifarioIPI'
      Origin = 'NCM.Acordo_TarifarioIPI'
      DisplayFormat = '#0.00'
    end
    object NCMCusto_Seletivo: TBooleanField
      FieldName = 'Custo_Seletivo'
      Origin = 'NCM.Custo_Seletivo'
    end
    object NCMPIS_Nota: TFloatField
      FieldName = 'PIS_Nota'
      Origin = 'NCM.PIS_Nota'
      DisplayFormat = '##0.00'
    end
    object NCMCOFINS_Nota: TFloatField
      FieldName = 'COFINS_Nota'
      Origin = 'NCM.COFINS_Nota'
      DisplayFormat = '##0.00'
    end
    object NCMPIS_NotaSaida: TFloatField
      FieldName = 'PIS_NotaSaida'
      Origin = 'NCM.PIS_NotaSaida'
      DisplayFormat = '##0.00'
    end
    object NCMCOFINS_NotaSaida: TFloatField
      FieldName = 'COFINS_NotaSaida'
      Origin = 'NCM.COFINS_NotaSaida'
      DisplayFormat = '##0.00'
    end
    object NCMPIS_Reducao: TFloatField
      FieldName = 'PIS_Reducao'
      Origin = 'NCM.PIS_Reducao'
      DisplayFormat = '##0.00'
    end
    object NCMCOFINS_Reducao: TFloatField
      FieldName = 'COFINS_Reducao'
      Origin = 'NCM.COFINS_Reducao'
      DisplayFormat = '##0.00'
    end
    object NCMAC_Reducao: TFloatField
      FieldName = 'AC_Reducao'
      Origin = 'NCM.AC_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMAL_Reducao: TFloatField
      FieldName = 'AL_Reducao'
      Origin = 'NCM.AL_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMAM_Reducao: TFloatField
      FieldName = 'AM_Reducao'
      Origin = 'NCM.AM_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMAP_Reducao: TFloatField
      FieldName = 'AP_Reducao'
      Origin = 'NCM.AP_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMBA_Reducao: TFloatField
      FieldName = 'BA_Reducao'
      Origin = 'NCM.BA_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMCE_Reducao: TFloatField
      FieldName = 'CE_Reducao'
      Origin = 'NCM.CE_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMDF_Reducao: TFloatField
      FieldName = 'DF_Reducao'
      Origin = 'NCM.DF_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMES_Reducao: TFloatField
      FieldName = 'ES_Reducao'
      Origin = 'NCM.ES_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMGO_Reducao: TFloatField
      FieldName = 'GO_Reducao'
      Origin = 'NCM.GO_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMMA_Reducao: TFloatField
      FieldName = 'MA_Reducao'
      Origin = 'NCM.MA_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMMG_Reducao: TFloatField
      FieldName = 'MG_Reducao'
      Origin = 'NCM.MG_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMMS_Reducao: TFloatField
      FieldName = 'MS_Reducao'
      Origin = 'NCM.MS_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMMT_Reducao: TFloatField
      FieldName = 'MT_Reducao'
      Origin = 'NCM.MT_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMPA_Reducao: TFloatField
      FieldName = 'PA_Reducao'
      Origin = 'NCM.PA_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMPB_Reducao: TFloatField
      FieldName = 'PB_Reducao'
      Origin = 'NCM.PB_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMPE_Reducao: TFloatField
      FieldName = 'PE_Reducao'
      Origin = 'NCM.PE_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMPI_Reducao: TFloatField
      FieldName = 'PI_Reducao'
      Origin = 'NCM.PI_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMPR_Reducao: TFloatField
      FieldName = 'PR_Reducao'
      Origin = 'NCM.PR_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMRJ_Reducao: TFloatField
      FieldName = 'RJ_Reducao'
      Origin = 'NCM.RJ_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMRN_Reducao: TFloatField
      FieldName = 'RN_Reducao'
      Origin = 'NCM.RN_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMRO_Reducao: TFloatField
      FieldName = 'RO_Reducao'
      Origin = 'NCM.RO_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMRR_Reducao: TFloatField
      FieldName = 'RR_Reducao'
      Origin = 'NCM.RR_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMRS_Reducao: TFloatField
      FieldName = 'RS_Reducao'
      Origin = 'NCM.RS_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMSC_Reducao: TFloatField
      FieldName = 'SC_Reducao'
      Origin = 'NCM.SC_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMSE_Reducao: TFloatField
      FieldName = 'SE_Reducao'
      Origin = 'NCM.SE_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMSP_Reducao: TFloatField
      FieldName = 'SP_Reducao'
      Origin = 'NCM.SP_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMTO_Reducao: TFloatField
      FieldName = 'TO_Reducao'
      Origin = 'NCM.TO_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMEX_Reducao: TFloatField
      FieldName = 'EX_Reducao'
      Origin = 'NCM.EX_Reducao'
      DisplayFormat = '##0.00000'
    end
    object NCMAC_ReducaoST: TFloatField
      FieldName = 'AC_ReducaoST'
      Origin = 'NCM.AC_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMAL_ReducaoST: TFloatField
      FieldName = 'AL_ReducaoST'
      Origin = 'NCM.AL_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMAM_ReducaoST: TFloatField
      FieldName = 'AM_ReducaoST'
      Origin = 'NCM.AM_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMAP_ReducaoST: TFloatField
      FieldName = 'AP_ReducaoST'
      Origin = 'NCM.AP_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMBA_ReducaoST: TFloatField
      FieldName = 'BA_ReducaoST'
      Origin = 'NCM.BA_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMCE_ReducaoST: TFloatField
      FieldName = 'CE_ReducaoST'
      Origin = 'NCM.CE_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMDF_ReducaoST: TFloatField
      FieldName = 'DF_ReducaoST'
      Origin = 'NCM.DF_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMES_ReducaoST: TFloatField
      FieldName = 'ES_ReducaoST'
      Origin = 'NCM.ES_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMGO_ReducaoST: TFloatField
      FieldName = 'GO_ReducaoST'
      Origin = 'NCM.GO_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMMA_ReducaoST: TFloatField
      FieldName = 'MA_ReducaoST'
      Origin = 'NCM.MA_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMMG_ReducaoST: TFloatField
      FieldName = 'MG_ReducaoST'
      Origin = 'NCM.MG_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMMS_ReducaoST: TFloatField
      FieldName = 'MS_ReducaoST'
      Origin = 'NCM.MS_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMMT_ReducaoST: TFloatField
      FieldName = 'MT_ReducaoST'
      Origin = 'NCM.MT_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMPA_ReducaoST: TFloatField
      FieldName = 'PA_ReducaoST'
      Origin = 'NCM.PA_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMPB_ReducaoST: TFloatField
      FieldName = 'PB_ReducaoST'
      Origin = 'NCM.PB_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMPE_ReducaoST: TFloatField
      FieldName = 'PE_ReducaoST'
      Origin = 'NCM.PE_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMPI_ReducaoST: TFloatField
      FieldName = 'PI_ReducaoST'
      Origin = 'NCM.PI_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMPR_ReducaoST: TFloatField
      FieldName = 'PR_ReducaoST'
      Origin = 'NCM.PR_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMRJ_ReducaoST: TFloatField
      FieldName = 'RJ_ReducaoST'
      Origin = 'NCM.RJ_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMRN_ReducaoST: TFloatField
      FieldName = 'RN_ReducaoST'
      Origin = 'NCM.RN_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMRO_ReducaoST: TFloatField
      FieldName = 'RO_ReducaoST'
      Origin = 'NCM.RO_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMRR_ReducaoST: TFloatField
      FieldName = 'RR_ReducaoST'
      Origin = 'NCM.RR_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMRS_ReducaoST: TFloatField
      FieldName = 'RS_ReducaoST'
      Origin = 'NCM.RS_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMSC_ReducaoST: TFloatField
      FieldName = 'SC_ReducaoST'
      Origin = 'NCM.SC_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMSE_ReducaoST: TFloatField
      FieldName = 'SE_ReducaoST'
      Origin = 'NCM.SE_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMSP_ReducaoST: TFloatField
      FieldName = 'SP_ReducaoST'
      Origin = 'NCM.SP_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMTO_ReducaoST: TFloatField
      FieldName = 'TO_ReducaoST'
      Origin = 'NCM.TO_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMEX_ReducaoST: TFloatField
      FieldName = 'EX_ReducaoST'
      Origin = 'NCM.EX_ReducaoST'
      DisplayFormat = '##0.00000'
    end
    object NCMICMS_Imune: TBooleanField
      FieldName = 'ICMS_Imune'
      Origin = 'NCM.ICMS_Imune'
    end
    object NCMCEST: TStringField
      FieldName = 'CEST'
      Origin = 'NCM.CEST'
      EditMask = '99.999.99;0; '
      Size = 7
    end
    object NCMFCP: TBooleanField
      FieldName = 'FCP'
      Origin = 'NCM.FCP'
    end
    object NCMMVA_NaoReducao: TBooleanField
      FieldName = 'MVA_NaoReducao'
      Origin = 'NCM.MVA_NaoReducao'
    end
    object NCMAC_MVANac: TFloatField
      FieldName = 'AC_MVANac'
      Origin = 'NCM.AC_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMAL_MVANac: TFloatField
      FieldName = 'AL_MVANac'
      Origin = 'NCM.AL_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMAM_MVANac: TFloatField
      FieldName = 'AM_MVANac'
      Origin = 'NCM.AM_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMAP_MVANac: TFloatField
      FieldName = 'AP_MVANac'
      Origin = 'NCM.AP_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMBA_MVANac: TFloatField
      FieldName = 'BA_MVANac'
      Origin = 'NCM.BA_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMCE_MVANac: TFloatField
      FieldName = 'CE_MVANac'
      Origin = 'NCM.CE_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMDF_MVANac: TFloatField
      FieldName = 'DF_MVANac'
      Origin = 'NCM.DF_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMES_MVANac: TFloatField
      FieldName = 'ES_MVANac'
      Origin = 'NCM.ES_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMGO_MVANac: TFloatField
      FieldName = 'GO_MVANac'
      Origin = 'NCM.GO_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMMA_MVANac: TFloatField
      FieldName = 'MA_MVANac'
      Origin = 'NCM.MA_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMMG_MVANac: TFloatField
      FieldName = 'MG_MVANac'
      Origin = 'NCM.MG_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMMS_MVANac: TFloatField
      FieldName = 'MS_MVANac'
      Origin = 'NCM.MS_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMMT_MVANac: TFloatField
      FieldName = 'MT_MVANac'
      Origin = 'NCM.MT_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMPA_MVANac: TFloatField
      FieldName = 'PA_MVANac'
      Origin = 'NCM.PA_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMPB_MVANac: TFloatField
      FieldName = 'PB_MVANac'
      Origin = 'NCM.PB_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMPE_MVANac: TFloatField
      FieldName = 'PE_MVANac'
      Origin = 'NCM.PE_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMPI_MVANac: TFloatField
      FieldName = 'PI_MVANac'
      Origin = 'NCM.PI_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMPR_MVANac: TFloatField
      FieldName = 'PR_MVANac'
      Origin = 'NCM.PR_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMRJ_MVANac: TFloatField
      FieldName = 'RJ_MVANac'
      Origin = 'NCM.RJ_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMRN_MVANac: TFloatField
      FieldName = 'RN_MVANac'
      Origin = 'NCM.RN_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMRO_MVANac: TFloatField
      FieldName = 'RO_MVANac'
      Origin = 'NCM.RO_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMRR_MVANac: TFloatField
      FieldName = 'RR_MVANac'
      Origin = 'NCM.RR_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMRS_MVANac: TFloatField
      FieldName = 'RS_MVANac'
      Origin = 'NCM.RS_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMSC_MVANac: TFloatField
      FieldName = 'SC_MVANac'
      Origin = 'NCM.SC_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMSE_MVANac: TFloatField
      FieldName = 'SE_MVANac'
      Origin = 'NCM.SE_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMSP_MVANac: TFloatField
      FieldName = 'SP_MVANac'
      Origin = 'NCM.SP_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMTO_MVANac: TFloatField
      FieldName = 'TO_MVANac'
      Origin = 'NCM.TO_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMEX_MVANac: TFloatField
      FieldName = 'EX_MVANac'
      Origin = 'NCM.EX_MVANac'
      DisplayFormat = '#0.00'
    end
    object NCMCodigoTrib_TabA3: TStringField
      FieldName = 'CodigoTrib_TabA3'
      FixedChar = True
      Size = 2
    end
    object NCMNALADI: TStringField
      FieldName = 'NALADI'
      EditMask = '9999.99.99;0; '
      Size = 8
    end
    object NCMDestaque: TSmallintField
      FieldName = 'Destaque'
    end
    object NCMNALADI_NCCA: TStringField
      FieldName = 'NALADI_NCCA'
      Size = 7
    end
    object NCMAcordo_TarifarioIICod: TSmallintField
      FieldName = 'Acordo_TarifarioIICod'
    end
    object NCMII_Reduzida: TFloatField
      FieldName = 'II_Reduzida'
    end
    object NCMIPI_AliqEspRecip: TFloatField
      FieldName = 'IPI_AliqEspRecip'
    end
    object NCMIPI_AliqEspUnid: TFloatField
      FieldName = 'IPI_AliqEspUnid'
    end
    object NCMICMS_Importacao: TFloatField
      FieldName = 'ICMS_Importacao'
      DisplayFormat = '##0.00'
    end
    object NCMRegime_TribPISCOFINS: TSmallintField
      FieldName = 'Regime_TribPISCOFINS'
    end
    object NCMFundamento_RedPISCOFINS: TSmallintField
      FieldName = 'Fundamento_RedPISCOFINS'
    end
    object NCMRegime_TribII: TSmallintField
      FieldName = 'Regime_TribII'
    end
    object NCMAliquota_RedIPI: TFloatField
      FieldName = 'Aliquota_RedIPI'
    end
    object NCMAC_Reducao2: TFloatField
      FieldName = 'AC_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMAL_Reducao2: TFloatField
      FieldName = 'AL_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMAM_Reducao2: TFloatField
      FieldName = 'AM_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMAP_Reducao2: TFloatField
      FieldName = 'AP_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMBA_Reducao2: TFloatField
      FieldName = 'BA_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMCE_Reducao2: TFloatField
      FieldName = 'CE_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMDF_Reducao2: TFloatField
      FieldName = 'DF_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMES_Reducao2: TFloatField
      FieldName = 'ES_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMGO_Reducao2: TFloatField
      FieldName = 'GO_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMMA_Reducao2: TFloatField
      FieldName = 'MA_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMMG_Reducao2: TFloatField
      FieldName = 'MG_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMMS_Reducao2: TFloatField
      FieldName = 'MS_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMMT_Reducao2: TFloatField
      FieldName = 'MT_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMPA_Reducao2: TFloatField
      FieldName = 'PA_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMPB_Reducao2: TFloatField
      FieldName = 'PB_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMPE_Reducao2: TFloatField
      FieldName = 'PE_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMPI_Reducao2: TFloatField
      FieldName = 'PI_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMPR_Reducao2: TFloatField
      FieldName = 'PR_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMRJ_Reducao2: TFloatField
      FieldName = 'RJ_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMRN_Reducao2: TFloatField
      FieldName = 'RN_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMRO_Reducao2: TFloatField
      FieldName = 'RO_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMRR_Reducao2: TFloatField
      FieldName = 'RR_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMRS_Reducao2: TFloatField
      FieldName = 'RS_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMSC_Reducao2: TFloatField
      FieldName = 'SC_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMSE_Reducao2: TFloatField
      FieldName = 'SE_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMSP_Reducao2: TFloatField
      FieldName = 'SP_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMTO_Reducao2: TFloatField
      FieldName = 'TO_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMEX_Reducao2: TFloatField
      FieldName = 'EX_Reducao2'
      DisplayFormat = '#0.0000'
    end
    object NCMPIS_ST: TBooleanField
      FieldName = 'PIS_ST'
    end
    object NCMTratamento_TribICMS: TSmallintField
      FieldName = 'Tratamento_TribICMS'
    end
    object NCMCodigo_cBenef: TStringField
      FieldName = 'Codigo_cBenef'
      Size = 8
    end
    object NCMCodigo_CredPres: TStringField
      FieldName = 'Codigo_CredPres'
      Size = 8
    end
    object NCMIBS_Isencao: TBooleanField
      FieldName = 'IBS_Isencao'
    end
    object NCMIBS_Imunidade: TBooleanField
      FieldName = 'IBS_Imunidade'
    end
    object NCMIBS_Diferido: TBooleanField
      FieldName = 'IBS_Diferido'
    end
    object NCMIBS_Suspensao: TBooleanField
      FieldName = 'IBS_Suspensao'
    end
    object NCMCBS_Isencao: TBooleanField
      FieldName = 'CBS_Isencao'
    end
    object NCMCBS_Imunidade: TBooleanField
      FieldName = 'CBS_Imunidade'
    end
    object NCMCBS_Diferido: TBooleanField
      FieldName = 'CBS_Diferido'
    end
    object NCMCBS_Suspensao: TBooleanField
      FieldName = 'CBS_Suspensao'
    end
    object NCMQuantidade_Estatistica: TFloatField
      FieldName = 'Quantidade_Estatistica'
      DisplayFormat = ',##0.000000'
      EditFormat = ',##0.000000'
    end
    object NCMExige_LPCO: TBooleanField
      FieldName = 'Exige_LPCO'
    end
  end
  object dsNCM: TDataSource
    DataSet = NCM
    Left = 472
    Top = 169
  end
  object ConsistenciaNFe: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT ConsistenciaNFe.Tag, ConsistenciaNFe.Campo, ConsistenciaN' +
        'Fe.Grupo, ConsistenciaNFe.Descricao FROM ConsistenciaNFe'
      
        'WHERE ConsistenciaNFe.Tag = :Tag AND ConsistenciaNFe.Campo = :Ca' +
        'mpo AND ConsistenciaNFe.Grupo = :Grupo AND ConsistenciaNFe.Descr' +
        'icao = :Descricao ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM ConsistenciaNFe ORDER BY Tag, Campo')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 545
    Top = 120
    object ConsistenciaNFeTag: TStringField
      FieldName = 'Tag'
      FixedChar = True
      Size = 15
    end
    object ConsistenciaNFeCampo: TStringField
      FieldName = 'Campo'
      FixedChar = True
      Size = 15
    end
    object ConsistenciaNFeGrupo: TStringField
      FieldName = 'Grupo'
      Size = 30
    end
    object ConsistenciaNFeDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object dsConsistenciaNFe: TDataSource
    DataSet = ConsistenciaNFe
    Left = 546
    Top = 168
  end
  object Fatura: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Fatura'
      
        '  (Fatura, Data_Emissao, Nota, Data_Nota, Cliente, Forma_Pgto, V' +
        'alor_Total, Classificacao, Tipo, Centro_Custo, Processo, Observa' +
        'cao, Banco, Origem_Pedido)'
      'VALUES'
      
        '  (:Fatura, :Data_Emissao, :Nota, :Data_Nota, :Cliente, :Forma_P' +
        'gto, :Valor_Total, :Classificacao, :Tipo, :Centro_Custo, :Proces' +
        'so, :Observacao, :Banco, :Origem_Pedido)')
    SQLDelete.Strings = (
      'DELETE FROM Fatura'
      'WHERE'
      '  Fatura = :Old_Fatura AND Data_Emissao = :Old_Data_Emissao')
    SQLUpdate.Strings = (
      'UPDATE Fatura'
      'SET'
      
        '  Fatura = :Fatura, Data_Emissao = :Data_Emissao, Nota = :Nota, ' +
        'Data_Nota = :Data_Nota, Cliente = :Cliente, Forma_Pgto = :Forma_' +
        'Pgto, Valor_Total = :Valor_Total, Classificacao = :Classificacao' +
        ', Tipo = :Tipo, Centro_Custo = :Centro_Custo, Processo = :Proces' +
        'so, Observacao = :Observacao, Banco = :Banco, Origem_Pedido = :O' +
        'rigem_Pedido'
      'WHERE'
      '  Fatura = :Old_Fatura AND Data_Emissao = :Old_Data_Emissao')
    SQLRefresh.Strings = (
      
        'SELECT Fatura.Fatura, Fatura.Data_Emissao, Fatura.Nota, Fatura.D' +
        'ata_Nota, Fatura.Cliente, Fatura.Forma_Pgto, Fatura.Valor_Total,' +
        ' Fatura.Classificacao, Fatura.Tipo, Fatura.Centro_Custo, Fatura.' +
        'Processo, Fatura.Observacao, Fatura.Banco, Fatura.Origem_Pedido ' +
        'FROM Fatura'
      
        'WHERE Fatura.Fatura = :Fatura AND Fatura.Data_Emissao = :Data_Em' +
        'issao ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Fatura')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 345
    Top = 121
    object FaturaFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'Fatura.Fatura'
      FixedChar = True
      Size = 10
    end
    object FaturaData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'Fatura.Data_Emissao'
    end
    object FaturaNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'Fatura.Nota'
      EditFormat = '000000000'
    end
    object FaturaData_Nota: TDateTimeField
      FieldName = 'Data_Nota'
      Origin = 'Fatura.Data_Nota'
    end
    object FaturaCliente: TSmallintField
      FieldName = 'Cliente'
      Origin = 'Fatura.Cliente'
    end
    object FaturaForma_Pgto: TSmallintField
      FieldName = 'Forma_Pgto'
      Origin = 'Fatura.Forma_Pgto'
    end
    object FaturaValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'Fatura.Valor_Total'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object FaturaTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Fatura.Tipo'
      FixedChar = True
      Size = 1
    end
    object FaturaCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'Fatura.Centro_Custo'
      FixedChar = True
      Size = 10
    end
    object FaturaProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Fatura.Processo'
      FixedChar = True
      Size = 15
    end
    object FaturaObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Fatura.Observacao'
      BlobType = ftMemo
    end
    object FaturaClassificacao: TStringField
      FieldName = 'Classificacao'
      Origin = 'Fatura.Classificacao'
      FixedChar = True
      Size = 15
    end
    object FaturaBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Fatura.Banco'
    end
    object FaturaOrigem_Pedido: TBooleanField
      FieldName = 'Origem_Pedido'
    end
  end
  object dsFatura: TDataSource
    DataSet = Fatura
    Left = 345
    Top = 169
  end
  object PedidosFatura: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PedidosFatura'
      
        '  (Fatura, Data_Emissao, Pedido, Data_Pedido, Cliente, Forma_Pgt' +
        'o, Valor_Total, Origem_Pedido, Banco, Centro_Custo)'
      'VALUES'
      
        '  (:Fatura, :Data_Emissao, :Pedido, :Data_Pedido, :Cliente, :For' +
        'ma_Pgto, :Valor_Total, :Origem_Pedido, :Banco, :Centro_Custo)')
    SQLDelete.Strings = (
      'DELETE FROM PedidosFatura'
      'WHERE'
      '  Fatura = :Old_Fatura AND Data_Emissao = :Old_Data_Emissao')
    SQLUpdate.Strings = (
      'UPDATE PedidosFatura'
      'SET'
      
        '  Fatura = :Fatura, Data_Emissao = :Data_Emissao, Pedido = :Pedi' +
        'do, Data_Pedido = :Data_Pedido, Cliente = :Cliente, Forma_Pgto =' +
        ' :Forma_Pgto, Valor_Total = :Valor_Total, Origem_Pedido = :Orige' +
        'm_Pedido, Banco = :Banco, Centro_Custo = :Centro_Custo'
      'WHERE'
      '  Fatura = :Old_Fatura AND Data_Emissao = :Old_Data_Emissao')
    SQLRefresh.Strings = (
      
        'SELECT PedidosFatura.Fatura, PedidosFatura.Data_Emissao, Pedidos' +
        'Fatura.Pedido, PedidosFatura.Data_Pedido, PedidosFatura.Cliente,' +
        ' PedidosFatura.Forma_Pgto, PedidosFatura.Valor_Total, PedidosFat' +
        'ura.Origem_Pedido, PedidosFatura.Banco, PedidosFatura.Centro_Cus' +
        'to FROM PedidosFatura'
      
        'WHERE PedidosFatura.Fatura = :Fatura AND PedidosFatura.Data_Emis' +
        'sao = :Data_Emissao ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM PedidosFatura')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 683
    Top = 120
    object PedidosFaturaFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 10
    end
    object PedidosFaturaData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
    end
    object PedidosFaturaPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object PedidosFaturaData_Pedido: TDateTimeField
      FieldName = 'Data_Pedido'
    end
    object PedidosFaturaCliente: TSmallintField
      FieldName = 'Cliente'
    end
    object PedidosFaturaForma_Pgto: TSmallintField
      FieldName = 'Forma_Pgto'
    end
    object PedidosFaturaValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
    end
    object PedidosFaturaOrigem_Pedido: TBooleanField
      FieldName = 'Origem_Pedido'
    end
    object PedidosFaturaBanco: TSmallintField
      FieldName = 'Banco'
    end
    object PedidosFaturaCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Size = 10
    end
  end
  object dsPedidosFatura: TDataSource
    DataSet = PedidosFatura
    Left = 683
    Top = 168
  end
  object PedidosDuplicata: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PedidosDuplicata'
      
        '  (Duplicata, Fatura, Vencimento, Data_Vencimento, Valor, Aliquo' +
        'ta_Desconto, Desconto, Valor_Liquido, Pedido, Ordem, Valor_Produ' +
        'to, Data_Emissao, Valor_IPI, Numero, Adiantamento)'
      'VALUES'
      
        '  (:Duplicata, :Fatura, :Vencimento, :Data_Vencimento, :Valor, :' +
        'Aliquota_Desconto, :Desconto, :Valor_Liquido, :Pedido, :Ordem, :' +
        'Valor_Produto, :Data_Emissao, :Valor_IPI, :Numero, :Adiantamento' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM PedidosDuplicata'
      'WHERE'
      
        '  Duplicata = :Old_Duplicata AND Data_Vencimento = :Old_Data_Ven' +
        'cimento AND Pedido = :Old_Pedido')
    SQLUpdate.Strings = (
      'UPDATE PedidosDuplicata'
      'SET'
      
        '  Duplicata = :Duplicata, Fatura = :Fatura, Vencimento = :Vencim' +
        'ento, Data_Vencimento = :Data_Vencimento, Valor = :Valor, Aliquo' +
        'ta_Desconto = :Aliquota_Desconto, Desconto = :Desconto, Valor_Li' +
        'quido = :Valor_Liquido, Pedido = :Pedido, Ordem = :Ordem, Valor_' +
        'Produto = :Valor_Produto, Data_Emissao = :Data_Emissao, Valor_IP' +
        'I = :Valor_IPI, Numero = :Numero, Adiantamento = :Adiantamento'
      'WHERE'
      
        '  Duplicata = :Old_Duplicata AND Data_Vencimento = :Old_Data_Ven' +
        'cimento AND Pedido = :Old_Pedido')
    SQLRefresh.Strings = (
      
        'SELECT Duplicata, Fatura, Vencimento, Data_Vencimento, Valor, Al' +
        'iquota_Desconto, Desconto, Valor_Liquido, Pedido, Ordem, Valor_P' +
        'roduto, Data_Emissao, Valor_IPI, Numero, Adiantamento FROM Pedid' +
        'osDuplicata'
      'WHERE'
      
        '  Duplicata = :Duplicata AND Data_Vencimento = :Data_Vencimento ' +
        'AND Pedido = :Pedido')
    SQLLock.Strings = (
      'SELECT * FROM PedidosDuplicata'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      
        '  Duplicata = :Old_Duplicata AND Data_Vencimento = :Old_Data_Ven' +
        'cimento AND Pedido = :Old_Pedido')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM PedidosDuplicata'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM PedidosDuplicata')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 784
    Top = 122
    object PedidosDuplicataDuplicata: TStringField
      FieldName = 'Duplicata'
      FixedChar = True
      Size = 10
    end
    object PedidosDuplicataFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 10
    end
    object PedidosDuplicataVencimento: TStringField
      FieldName = 'Vencimento'
      Size = 10
    end
    object PedidosDuplicataData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object PedidosDuplicataValor: TCurrencyField
      FieldName = 'Valor'
    end
    object PedidosDuplicataAliquota_Desconto: TFloatField
      FieldName = 'Aliquota_Desconto'
    end
    object PedidosDuplicataDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object PedidosDuplicataValor_Liquido: TCurrencyField
      FieldName = 'Valor_Liquido'
    end
    object PedidosDuplicataPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object PedidosDuplicataOrdem: TSmallintField
      FieldName = 'Ordem'
    end
    object PedidosDuplicataValor_Produto: TCurrencyField
      FieldName = 'Valor_Produto'
    end
    object PedidosDuplicataData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
    end
    object PedidosDuplicataValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
    end
    object PedidosDuplicataNumero: TStringField
      FieldName = 'Numero'
      Size = 12
    end
    object PedidosDuplicataAdiantamento: TBooleanField
      FieldName = 'Adiantamento'
    end
  end
  object dsPedidosDuplicata: TDataSource
    DataSet = PedidosDuplicata
    Left = 784
    Top = 168
  end
  object EnquadramentoIPI: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO EnquadramentoIPI'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM EnquadramentoIPI'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE EnquadramentoIPI'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT EnquadramentoIPI.Codigo, EnquadramentoIPI.Descricao FROM ' +
        'EnquadramentoIPI'
      'WHERE EnquadramentoIPI.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM EnquadramentoIPI')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 890
    Top = 121
    object EnquadramentoIPICodigo: TStringField
      DisplayWidth = 3
      FieldName = 'Codigo'
      FixedChar = True
      Size = 5
    end
    object EnquadramentoIPIDescricao: TStringField
      DisplayWidth = 100
      FieldName = 'Descricao'
      Size = 500
    end
  end
  object dsEnquadramentoIPI: TDataSource
    DataSet = EnquadramentoIPI
    Left = 890
    Top = 169
  end
  object ClasseIPI: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ClasseIPI'
      '  (Classe, Valor_IPI)'
      'VALUES'
      '  (:Classe, :Valor_IPI)')
    SQLDelete.Strings = (
      'DELETE FROM ClasseIPI'
      'WHERE'
      '  Classe = :Old_Classe')
    SQLUpdate.Strings = (
      'UPDATE ClasseIPI'
      'SET'
      '  Classe = :Classe, Valor_IPI = :Valor_IPI'
      'WHERE'
      '  Classe = :Old_Classe')
    SQLRefresh.Strings = (
      'SELECT ClasseIPI.Classe, ClasseIPI.Valor_IPI FROM ClasseIPI'
      'WHERE ClasseIPI.Classe = :Classe ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM ClasseIPI')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1006
    Top = 121
    object ClasseIPIClasse: TStringField
      DisplayWidth = 1
      FieldName = 'Classe'
      FixedChar = True
      Size = 1
    end
    object ClasseIPIValor_IPI: TFloatField
      FieldName = 'Valor_IPI'
      DisplayFormat = ',##0.00'
    end
  end
  object dsClasseIPI: TDataSource
    DataSet = ClasseIPI
    Left = 1006
    Top = 169
  end
  object ModelosDocumentos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ModelosDocumentos'
      '  (Codigo, Descricao, Modelo, Registro_Pai)'
      'VALUES'
      '  (:Codigo, :Descricao, :Modelo, :Registro_Pai)')
    SQLDelete.Strings = (
      'DELETE FROM ModelosDocumentos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE ModelosDocumentos'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Modelo = :Modelo, Re' +
        'gistro_Pai = :Registro_Pai'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT ModelosDocumentos.Codigo, ModelosDocumentos.Descricao, Mo' +
        'delosDocumentos.Modelo, ModelosDocumentos.Registro_Pai FROM Mode' +
        'losDocumentos'
      'WHERE ModelosDocumentos.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM ModelosDocumentos')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1120
    Top = 121
    object ModelosDocumentosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 2
    end
    object ModelosDocumentosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object ModelosDocumentosModelo: TStringField
      FieldName = 'Modelo'
      FixedChar = True
      Size = 5
    end
    object ModelosDocumentosRegistro_Pai: TStringField
      FieldName = 'Registro_Pai'
      Size = 50
    end
  end
  object dsModelosDocumentos: TDataSource
    DataSet = ModelosDocumentos
    Left = 1120
    Top = 169
  end
  object Imobilizado: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Imobilizado'
      
        '  (Codigo_Sistema, Codigo, Codigo_Principal, Descricao, Tipo_Mov' +
        'imentacao, Fornecedor, Data_Nota, Nota, Serie, Modelo, ICMS_Prop' +
        'rio, ICMS_ST, ICMS_Frete, ICMS_Dif_Aliquota, Valor_Credito, Orde' +
        'm_Item, Saida_Motivo, Saida_Nota, Saida_DataNota, Saida_Modelo, ' +
        'Saida_Serie, Saida_Item, Saida_Meses, Saida_AliquotaICMS, Funcao' +
        ', Tipo_CalculoCredito, Valor_Aquisicao, Valor_Depreciacao, Aprop' +
        'riacao_Inicial, Apropriacao_Meses, Parcelas, Apropriadas, Fim_Ap' +
        'ropriacao, Tipo_Item, Centro_Custo, Vida_Util, Tipo_Movimentacao' +
        'Saida, Conta_Numero, Conta_Nome, Conta_Natureza, Conta_Tipo, Con' +
        'ta_Nivel, AnoMes_Faturamento, Quantidade, Unidade, Chave_Nota)'
      'VALUES'
      
        '  (:Codigo_Sistema, :Codigo, :Codigo_Principal, :Descricao, :Tip' +
        'o_Movimentacao, :Fornecedor, :Data_Nota, :Nota, :Serie, :Modelo,' +
        ' :ICMS_Proprio, :ICMS_ST, :ICMS_Frete, :ICMS_Dif_Aliquota, :Valo' +
        'r_Credito, :Ordem_Item, :Saida_Motivo, :Saida_Nota, :Saida_DataN' +
        'ota, :Saida_Modelo, :Saida_Serie, :Saida_Item, :Saida_Meses, :Sa' +
        'ida_AliquotaICMS, :Funcao, :Tipo_CalculoCredito, :Valor_Aquisica' +
        'o, :Valor_Depreciacao, :Apropriacao_Inicial, :Apropriacao_Meses,' +
        ' :Parcelas, :Apropriadas, :Fim_Apropriacao, :Tipo_Item, :Centro_' +
        'Custo, :Vida_Util, :Tipo_MovimentacaoSaida, :Conta_Numero, :Cont' +
        'a_Nome, :Conta_Natureza, :Conta_Tipo, :Conta_Nivel, :AnoMes_Fatu' +
        'ramento, :Quantidade, :Unidade, :Chave_Nota)')
    SQLDelete.Strings = (
      'DELETE FROM Imobilizado'
      'WHERE'
      
        '  Codigo = :Old_Codigo AND Fornecedor = :Old_Fornecedor AND Nota' +
        ' = :Old_Nota')
    SQLUpdate.Strings = (
      'UPDATE Imobilizado'
      'SET'
      
        '  Codigo_Sistema = :Codigo_Sistema, Codigo = :Codigo, Codigo_Pri' +
        'ncipal = :Codigo_Principal, Descricao = :Descricao, Tipo_Movimen' +
        'tacao = :Tipo_Movimentacao, Fornecedor = :Fornecedor, Data_Nota ' +
        '= :Data_Nota, Nota = :Nota, Serie = :Serie, Modelo = :Modelo, IC' +
        'MS_Proprio = :ICMS_Proprio, ICMS_ST = :ICMS_ST, ICMS_Frete = :IC' +
        'MS_Frete, ICMS_Dif_Aliquota = :ICMS_Dif_Aliquota, Valor_Credito ' +
        '= :Valor_Credito, Ordem_Item = :Ordem_Item, Saida_Motivo = :Said' +
        'a_Motivo, Saida_Nota = :Saida_Nota, Saida_DataNota = :Saida_Data' +
        'Nota, Saida_Modelo = :Saida_Modelo, Saida_Serie = :Saida_Serie, ' +
        'Saida_Item = :Saida_Item, Saida_Meses = :Saida_Meses, Saida_Aliq' +
        'uotaICMS = :Saida_AliquotaICMS, Funcao = :Funcao, Tipo_CalculoCr' +
        'edito = :Tipo_CalculoCredito, Valor_Aquisicao = :Valor_Aquisicao' +
        ', Valor_Depreciacao = :Valor_Depreciacao, Apropriacao_Inicial = ' +
        ':Apropriacao_Inicial, Apropriacao_Meses = :Apropriacao_Meses, Pa' +
        'rcelas = :Parcelas, Apropriadas = :Apropriadas, Fim_Apropriacao ' +
        '= :Fim_Apropriacao, Tipo_Item = :Tipo_Item, Centro_Custo = :Cent' +
        'ro_Custo, Vida_Util = :Vida_Util, Tipo_MovimentacaoSaida = :Tipo' +
        '_MovimentacaoSaida, Conta_Numero = :Conta_Numero, Conta_Nome = :' +
        'Conta_Nome, Conta_Natureza = :Conta_Natureza, Conta_Tipo = :Cont' +
        'a_Tipo, Conta_Nivel = :Conta_Nivel, AnoMes_Faturamento = :AnoMes' +
        '_Faturamento, Quantidade = :Quantidade, Unidade = :Unidade, Chav' +
        'e_Nota = :Chave_Nota'
      'WHERE'
      
        '  Codigo = :Old_Codigo AND Fornecedor = :Old_Fornecedor AND Nota' +
        ' = :Old_Nota')
    SQLRefresh.Strings = (
      
        'SELECT Codigo_Sistema, Codigo, Codigo_Principal, Descricao, Tipo' +
        '_Movimentacao, Fornecedor, Data_Nota, Nota, Serie, Modelo, ICMS_' +
        'Proprio, ICMS_ST, ICMS_Frete, ICMS_Dif_Aliquota, Valor_Credito, ' +
        'Ordem_Item, Saida_Motivo, Saida_Nota, Saida_DataNota, Saida_Mode' +
        'lo, Saida_Serie, Saida_Item, Saida_Meses, Saida_AliquotaICMS, Fu' +
        'ncao, Tipo_CalculoCredito, Valor_Aquisicao, Valor_Depreciacao, A' +
        'propriacao_Inicial, Apropriacao_Meses, Parcelas, Apropriadas, Fi' +
        'm_Apropriacao, Tipo_Item, Centro_Custo, Vida_Util, Tipo_Moviment' +
        'acaoSaida, Conta_Numero, Conta_Nome, Conta_Natureza, Conta_Tipo,' +
        ' Conta_Nivel, AnoMes_Faturamento, Quantidade, Unidade, Chave_Not' +
        'a FROM Imobilizado'
      'WHERE'
      '  Codigo = :Codigo AND Fornecedor = :Fornecedor AND Nota = :Nota')
    SQLLock.Strings = (
      'SELECT * FROM Imobilizado'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      
        '  Codigo = :Old_Codigo AND Fornecedor = :Old_Fornecedor AND Nota' +
        ' = :Old_Nota')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM Imobilizado'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Imobilizado')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1144
    Top = 4
    object ImobilizadoCodigo_Sistema: TIntegerField
      FieldName = 'Codigo_Sistema'
    end
    object ImobilizadoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object ImobilizadoCodigo_Principal: TStringField
      FieldName = 'Codigo_Principal'
      Size = 30
    end
    object ImobilizadoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object ImobilizadoTipo_Movimentacao: TStringField
      FieldName = 'Tipo_Movimentacao'
      Size = 2
    end
    object ImobilizadoFornecedor: TIntegerField
      FieldName = 'Fornecedor'
    end
    object ImobilizadoData_Nota: TDateTimeField
      FieldName = 'Data_Nota'
    end
    object ImobilizadoNota: TIntegerField
      FieldName = 'Nota'
    end
    object ImobilizadoSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object ImobilizadoModelo: TStringField
      FieldName = 'Modelo'
      Size = 3
    end
    object ImobilizadoICMS_Proprio: TCurrencyField
      FieldName = 'ICMS_Proprio'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object ImobilizadoICMS_ST: TCurrencyField
      FieldName = 'ICMS_ST'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object ImobilizadoICMS_Frete: TCurrencyField
      FieldName = 'ICMS_Frete'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object ImobilizadoICMS_Dif_Aliquota: TFloatField
      FieldName = 'ICMS_Dif_Aliquota'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object ImobilizadoValor_Credito: TCurrencyField
      FieldName = 'Valor_Credito'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object ImobilizadoOrdem_Item: TSmallintField
      FieldName = 'Ordem_Item'
    end
    object ImobilizadoSaida_Nota: TIntegerField
      FieldName = 'Saida_Nota'
    end
    object ImobilizadoSaida_DataNota: TDateTimeField
      FieldName = 'Saida_DataNota'
    end
    object ImobilizadoSaida_Modelo: TStringField
      FieldName = 'Saida_Modelo'
      Size = 3
    end
    object ImobilizadoSaida_Serie: TStringField
      FieldName = 'Saida_Serie'
      Size = 3
    end
    object ImobilizadoSaida_Item: TSmallintField
      FieldName = 'Saida_Item'
    end
    object ImobilizadoSaida_Meses: TSmallintField
      FieldName = 'Saida_Meses'
    end
    object ImobilizadoSaida_AliquotaICMS: TFloatField
      FieldName = 'Saida_AliquotaICMS'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object ImobilizadoFuncao: TStringField
      FieldName = 'Funcao'
      Size = 100
    end
    object ImobilizadoTipo_CalculoCredito: TSmallintField
      FieldName = 'Tipo_CalculoCredito'
    end
    object ImobilizadoValor_Aquisicao: TCurrencyField
      FieldName = 'Valor_Aquisicao'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object ImobilizadoValor_Depreciacao: TCurrencyField
      FieldName = 'Valor_Depreciacao'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object ImobilizadoApropriacao_Inicial: TStringField
      FieldName = 'Apropriacao_Inicial'
      EditMask = '99/9999;0; '
      Size = 7
    end
    object ImobilizadoApropriacao_Meses: TSmallintField
      FieldName = 'Apropriacao_Meses'
    end
    object ImobilizadoParcelas: TSmallintField
      FieldName = 'Parcelas'
    end
    object ImobilizadoApropriadas: TSmallintField
      FieldName = 'Apropriadas'
    end
    object ImobilizadoFim_Apropriacao: TStringField
      FieldName = 'Fim_Apropriacao'
      EditMask = '99/9999;0; '
      Size = 6
    end
    object ImobilizadoTipo_Item: TSmallintField
      FieldName = 'Tipo_Item'
    end
    object ImobilizadoCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Size = 10
    end
    object ImobilizadoVida_Util: TSmallintField
      FieldName = 'Vida_Util'
    end
    object ImobilizadoTipo_MovimentacaoSaida: TStringField
      FieldName = 'Tipo_MovimentacaoSaida'
      Size = 2
    end
    object ImobilizadoSaida_Motivo: TStringField
      FieldName = 'Saida_Motivo'
      Size = 1
    end
    object ImobilizadoConta_Numero: TStringField
      FieldName = 'Conta_Numero'
      Size = 15
    end
    object ImobilizadoConta_Nome: TStringField
      FieldName = 'Conta_Nome'
      Size = 60
    end
    object ImobilizadoConta_Natureza: TStringField
      FieldName = 'Conta_Natureza'
      Size = 2
    end
    object ImobilizadoConta_Tipo: TStringField
      FieldName = 'Conta_Tipo'
      Size = 1
    end
    object ImobilizadoConta_Nivel: TStringField
      FieldName = 'Conta_Nivel'
      Size = 5
    end
    object ImobilizadoAnoMes_Faturamento: TStringField
      FieldName = 'AnoMes_Faturamento'
      Size = 6
    end
    object ImobilizadoQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = ',##0.000'
    end
    object ImobilizadoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 5
    end
    object ImobilizadoChave_Nota: TStringField
      FieldName = 'Chave_Nota'
      EditMask = '##.####.##.###.###/####-##.##.###.#########.###.###.###-#;0; '
      Size = 44
    end
  end
  object dsImobilizado: TDataSource
    DataSet = Imobilizado
    Left = 1120
    Top = 61
  end
  object ProdutosTransferencia: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ProdutosTransferencia'
      
        '  (Registro, Produto_Saida, Produto_Entrada, Quantidade, Inventa' +
        'rio, Data_Transferencia, Observacao, Estoque, Processo_Entrada, ' +
        'Processo_Saida, Motivo, Valor_Unitario, Nota, CFOP, Quantidade_E' +
        'ntrada, Pedido)'
      'VALUES'
      
        '  (:Registro, :Produto_Saida, :Produto_Entrada, :Quantidade, :In' +
        'ventario, :Data_Transferencia, :Observacao, :Estoque, :Processo_' +
        'Entrada, :Processo_Saida, :Motivo, :Valor_Unitario, :Nota, :CFOP' +
        ', :Quantidade_Entrada, :Pedido)')
    SQLDelete.Strings = (
      'DELETE FROM ProdutosTransferencia'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE ProdutosTransferencia'
      'SET'
      
        '  Registro = :Registro, Produto_Saida = :Produto_Saida, Produto_' +
        'Entrada = :Produto_Entrada, Quantidade = :Quantidade, Inventario' +
        ' = :Inventario, Data_Transferencia = :Data_Transferencia, Observ' +
        'acao = :Observacao, Estoque = :Estoque, Processo_Entrada = :Proc' +
        'esso_Entrada, Processo_Saida = :Processo_Saida, Motivo = :Motivo' +
        ', Valor_Unitario = :Valor_Unitario, Nota = :Nota, CFOP = :CFOP, ' +
        'Quantidade_Entrada = :Quantidade_Entrada, Pedido = :Pedido'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Produto_Saida, Produto_Entrada, Quantidade, Inv' +
        'entario, Data_Transferencia, Observacao, Estoque, Processo_Entra' +
        'da, Processo_Saida, Motivo, Valor_Unitario, Nota, CFOP, Quantida' +
        'de_Entrada, Pedido FROM ProdutosTransferencia'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM ProdutosTransferencia'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM ProdutosTransferencia'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ProdutosTransferencia')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    BeforePost = ProdutosTransferenciaBeforePost
    Left = 1240
    Top = 122
    object ProdutosTransferenciaRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'ProdutosTransferencia.Registro'
    end
    object ProdutosTransferenciaProduto_Saida: TIntegerField
      FieldName = 'Produto_Saida'
      Origin = 'ProdutosTransferencia.Produto_Saida'
    end
    object ProdutosTransferenciaProduto_Entrada: TIntegerField
      FieldName = 'Produto_Entrada'
      Origin = 'ProdutosTransferencia.Produto_Entrada'
    end
    object ProdutosTransferenciaQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'ProdutosTransferencia.Quantidade'
      DisplayFormat = ',##0.0000'
    end
    object ProdutosTransferenciaInventario: TBooleanField
      DisplayWidth = 3
      FieldName = 'Inventario'
      Origin = 'ProdutosTransferencia.Inventario'
      DisplayValues = 'Sim;N'#227'o'
    end
    object ProdutosTransferenciaEstoque: TBooleanField
      DisplayWidth = 3
      FieldName = 'Estoque'
      Origin = 'ProdutosTransferencia.Estoque'
      DisplayValues = 'Sim;N'#227'o'
    end
    object ProdutosTransferenciaData_Transferencia: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Data_Transferencia'
      Origin = 'ProdutosTransferencia.Data_Transferencia'
    end
    object ProdutosTransferenciaObservacao: TMemoField
      DisplayWidth = 80
      FieldName = 'Observacao'
      Origin = 'ProdutosTransferencia.Observacao'
      OnGetText = ProdutosTransferenciaObservacaoGetText
      BlobType = ftMemo
    end
    object ProdutosTransferenciaProcesso_Entrada: TStringField
      FieldName = 'Processo_Entrada'
      Origin = 'ProdutosTransferencia.Processo_Entrada'
      Size = 15
    end
    object ProdutosTransferenciaProcesso_Saida: TStringField
      FieldName = 'Processo_Saida'
      Origin = 'ProdutosTransferencia.Processo_Saida'
      Size = 15
    end
    object ProdutosTransferenciaValor_Unitario: TCurrencyField
      FieldName = 'Valor_Unitario'
      Origin = 'ProdutosTransferencia.Valor_Unitario'
      DisplayFormat = ',##0.00'
    end
    object ProdutosTransferenciaNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'ProdutosTransferencia.Nota'
    end
    object ProdutosTransferenciaCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'ProdutosTransferencia.CFOP'
      Size = 4
    end
    object ProdutosTransferenciaQuantidade_Entrada: TFloatField
      FieldName = 'Quantidade_Entrada'
      Origin = 'ProdutosTransferencia.Quantidade_Entrada'
      DisplayFormat = ',##0.0000'
    end
    object ProdutosTransferenciaPedido: TStringField
      FieldName = 'Pedido'
      Size = 15
    end
    object ProdutosTransferenciaMotivo: TStringField
      FieldName = 'Motivo'
      FixedChar = True
      Size = 2
    end
  end
  object dsProdutosTransferencia: TDataSource
    DataSet = ProdutosTransferencia
    Left = 1240
    Top = 169
  end
  object NotasDespesas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasDespesas'
      
        '  (Nota, Data_Emissao, Classificacao, Descricao, Valor_Total, Va' +
        'lor_Nota, Processo)'
      'VALUES'
      
        '  (:Nota, :Data_Emissao, :Classificacao, :Descricao, :Valor_Tota' +
        'l, :Valor_Nota, :Processo)')
    SQLDelete.Strings = (
      'DELETE FROM NotasDespesas'
      'WHERE'
      
        '  Nota = :Old_Nota AND Data_Emissao = :Old_Data_Emissao AND Clas' +
        'sificacao = :Old_Classificacao AND Processo = :Old_Processo')
    SQLUpdate.Strings = (
      'UPDATE NotasDespesas'
      'SET'
      
        '  Nota = :Nota, Data_Emissao = :Data_Emissao, Classificacao = :C' +
        'lassificacao, Descricao = :Descricao, Valor_Total = :Valor_Total' +
        ', Valor_Nota = :Valor_Nota, Processo = :Processo'
      'WHERE'
      
        '  Nota = :Old_Nota AND Data_Emissao = :Old_Data_Emissao AND Clas' +
        'sificacao = :Old_Classificacao AND Processo = :Old_Processo')
    SQLRefresh.Strings = (
      
        'SELECT NotasDespesas.Nota, NotasDespesas.Data_Emissao, NotasDesp' +
        'esas.Classificacao, NotasDespesas.Descricao, NotasDespesas.Valor' +
        '_Total, NotasDespesas.Valor_Nota, NotasDespesas.Processo FROM No' +
        'tasDespesas'
      
        'WHERE NotasDespesas.Nota = :Nota AND NotasDespesas.Data_Emissao ' +
        '= :Data_Emissao AND NotasDespesas.Classificacao = :Classificacao' +
        ' AND NotasDespesas.Processo = :Processo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM NotasDespesas WHERE Nota = 2812')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 238
    Top = 221
    object NotasDespesasNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'NotasDespesas.Nota'
    end
    object NotasDespesasData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'NotasDespesas.Data_Emissao'
    end
    object NotasDespesasClassificacao: TStringField
      FieldName = 'Classificacao'
      Origin = 'NotasDespesas.Classificacao'
      Size = 15
    end
    object NotasDespesasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'NotasDespesas.Descricao'
      Size = 60
    end
    object NotasDespesasValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'NotasDespesas.Valor_Total'
    end
    object NotasDespesasValor_Nota: TCurrencyField
      FieldName = 'Valor_Nota'
      Origin = 'NotasDespesas.Valor_Nota'
    end
    object NotasDespesasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'NotasDespesas.Processo'
      Size = 15
    end
  end
  object dsNotasDespesas: TDataSource
    DataSet = NotasDespesas
    Left = 238
    Top = 268
  end
  object CartaCorrecao: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO CartaCorrecao'
      
        '  (Nota, Data_Emissao, Chave, Acentuacao, Numero_Carta, Data_Car' +
        'ta, Protocolo, Data_Protocolo, Descricao)'
      'VALUES'
      
        '  (:Nota, :Data_Emissao, :Chave, :Acentuacao, :Numero_Carta, :Da' +
        'ta_Carta, :Protocolo, :Data_Protocolo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM CartaCorrecao'
      'WHERE'
      
        '  Nota = :Old_Nota AND Data_Emissao = :Old_Data_Emissao AND Nume' +
        'ro_Carta = :Old_Numero_Carta')
    SQLUpdate.Strings = (
      'UPDATE CartaCorrecao'
      'SET'
      
        '  Nota = :Nota, Data_Emissao = :Data_Emissao, Chave = :Chave, Ac' +
        'entuacao = :Acentuacao, Numero_Carta = :Numero_Carta, Data_Carta' +
        ' = :Data_Carta, Protocolo = :Protocolo, Data_Protocolo = :Data_P' +
        'rotocolo, Descricao = :Descricao'
      'WHERE'
      
        '  Nota = :Old_Nota AND Data_Emissao = :Old_Data_Emissao AND Nume' +
        'ro_Carta = :Old_Numero_Carta')
    SQLRefresh.Strings = (
      
        'SELECT CartaCorrecao.Nota, CartaCorrecao.Data_Emissao, CartaCorr' +
        'ecao.Chave, CartaCorrecao.Acentuacao, CartaCorrecao.Numero_Carta' +
        ', CartaCorrecao.Data_Carta, CartaCorrecao.Protocolo, CartaCorrec' +
        'ao.Data_Protocolo, CartaCorrecao.Descricao FROM CartaCorrecao'
      
        'WHERE CartaCorrecao.Nota = :Nota AND CartaCorrecao.Data_Emissao ' +
        '= :Data_Emissao AND CartaCorrecao.Numero_Carta = :Numero_Carta ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM CartaCorrecao')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1240
    Top = 4
    object CartaCorrecaoNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'CartaCorrecao.Nota'
    end
    object CartaCorrecaoData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'CartaCorrecao.Data_Emissao'
    end
    object CartaCorrecaoChave: TStringField
      FieldName = 'Chave'
      Origin = 'CartaCorrecao.Chave'
      Size = 44
    end
    object CartaCorrecaoAcentuacao: TBooleanField
      FieldName = 'Acentuacao'
      Origin = 'CartaCorrecao.Acentuacao'
    end
    object CartaCorrecaoNumero_Carta: TSmallintField
      FieldName = 'Numero_Carta'
      Origin = 'CartaCorrecao.Numero_Carta'
    end
    object CartaCorrecaoData_Carta: TDateTimeField
      FieldName = 'Data_Carta'
      Origin = 'CartaCorrecao.Data_Carta'
    end
    object CartaCorrecaoProtocolo: TStringField
      FieldName = 'Protocolo'
      Origin = 'CartaCorrecao.Protocolo'
      Size = 15
    end
    object CartaCorrecaoData_Protocolo: TStringField
      FieldName = 'Data_Protocolo'
      Origin = 'CartaCorrecao.Data_Protocolo'
      Size = 15
    end
    object CartaCorrecaoDescricao: TMemoField
      FieldName = 'Descricao'
      Origin = 'CartaCorrecao.Descricao'
      BlobType = ftMemo
    end
  end
  object dsCartaCorrecao: TDataSource
    DataSet = CartaCorrecao
    Left = 1240
    Top = 61
  end
  object NotasItensDetalhe: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasItensDetalhe'
      
        '  (Registro, Nota, Data_Emissao, Produto_Codigo, Detalhe, Detalh' +
        'e_Descricao, Quantidade, Saida_Entrada, Lote, Cancelada, Denegad' +
        'a)'
      'VALUES'
      
        '  (:Registro, :Nota, :Data_Emissao, :Produto_Codigo, :Detalhe, :' +
        'Detalhe_Descricao, :Quantidade, :Saida_Entrada, :Lote, :Cancelad' +
        'a, :Denegada)')
    SQLDelete.Strings = (
      'DELETE FROM NotasItensDetalhe'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE NotasItensDetalhe'
      'SET'
      
        '  Registro = :Registro, Nota = :Nota, Data_Emissao = :Data_Emiss' +
        'ao, Produto_Codigo = :Produto_Codigo, Detalhe = :Detalhe, Detalh' +
        'e_Descricao = :Detalhe_Descricao, Quantidade = :Quantidade, Said' +
        'a_Entrada = :Saida_Entrada, Lote = :Lote, Cancelada = :Cancelada' +
        ', Denegada = :Denegada'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT NotasItensDetalhe.Registro, NotasItensDetalhe.Nota, Notas' +
        'ItensDetalhe.Data_Emissao, NotasItensDetalhe.Produto_Codigo, Not' +
        'asItensDetalhe.Detalhe, NotasItensDetalhe.Detalhe_Descricao, Not' +
        'asItensDetalhe.Quantidade, NotasItensDetalhe.Saida_Entrada, Nota' +
        'sItensDetalhe.Lote, NotasItensDetalhe.Cancelada, NotasItensDetal' +
        'he.Denegada FROM NotasItensDetalhe'
      'WHERE NotasItensDetalhe.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM NotasItensDetalhe')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 54
    Top = 218
    object NotasItensDetalheRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'NotasItensDetalhe.Registro'
    end
    object NotasItensDetalheNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'NotasItensDetalhe.Nota'
    end
    object NotasItensDetalheDetalhe: TSmallintField
      FieldName = 'Detalhe'
      Origin = 'NotasItensDetalhe.Detalhe'
    end
    object NotasItensDetalheProduto_Codigo: TIntegerField
      FieldName = 'Produto_Codigo'
      Origin = 'NotasItensDetalhe.Produto_Codigo'
    end
    object NotasItensDetalheQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'NotasItensDetalhe.Quantidade'
      DisplayFormat = ',##0.000'
    end
    object NotasItensDetalheData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'NotasItensDetalhe.Data_Emissao'
    end
    object NotasItensDetalheDetalhe_Descricao: TStringField
      FieldName = 'Detalhe_Descricao'
      Origin = 'NotasItensDetalhe.Detalhe_Descricao'
      Size = 30
    end
    object NotasItensDetalheSaida_Entrada: TSmallintField
      FieldName = 'Saida_Entrada'
      Origin = 'NotasItensDetalhe.Saida_Entrada'
    end
    object NotasItensDetalheLote: TStringField
      FieldName = 'Lote'
      Origin = 'NotasItensDetalhe.Lote'
      Size = 15
    end
    object NotasItensDetalheCancelada: TBooleanField
      FieldName = 'Cancelada'
      Origin = 'NotasItensDetalhe.Cancelada'
    end
    object NotasItensDetalheDenegada: TBooleanField
      FieldName = 'Denegada'
      Origin = 'NotasItensDetalhe.Denegada'
    end
  end
  object dsNotasItensDetalhe: TDataSource
    DataSet = NotasItensDetalhe
    Left = 54
    Top = 265
  end
  object NotasRateio: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasRateio'
      
        '  (Registro, Nota, Data, FOB_ME, FOB_Real, II, Seguro_ME, Seguro' +
        '_Real, Frete_ME, Frete_Real, Dumping)'
      'VALUES'
      
        '  (:Registro, :Nota, :Data, :FOB_ME, :FOB_Real, :II, :Seguro_ME,' +
        ' :Seguro_Real, :Frete_ME, :Frete_Real, :Dumping)')
    SQLDelete.Strings = (
      'DELETE FROM NotasRateio'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE NotasRateio'
      'SET'
      
        '  Registro = :Registro, Nota = :Nota, Data = :Data, FOB_ME = :FO' +
        'B_ME, FOB_Real = :FOB_Real, II = :II, Seguro_ME = :Seguro_ME, Se' +
        'guro_Real = :Seguro_Real, Frete_ME = :Frete_ME, Frete_Real = :Fr' +
        'ete_Real, Dumping = :Dumping'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT NotasRateio.Registro, NotasRateio.Nota, NotasRateio.Data,' +
        ' NotasRateio.FOB_ME, NotasRateio.FOB_Real, NotasRateio.II, Notas' +
        'Rateio.Seguro_ME, NotasRateio.Seguro_Real, NotasRateio.Frete_ME,' +
        ' NotasRateio.Frete_Real, NotasRateio.Dumping FROM NotasRateio'
      'WHERE NotasRateio.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM NotasRateio WHERE Nota = 1')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 150
    Top = 220
    object NotasRateioRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object NotasRateioNota: TIntegerField
      FieldName = 'Nota'
    end
    object NotasRateioData: TDateTimeField
      FieldName = 'Data'
    end
    object NotasRateioFOB_ME: TCurrencyField
      FieldName = 'FOB_ME'
    end
    object NotasRateioFOB_Real: TCurrencyField
      FieldName = 'FOB_Real'
    end
    object NotasRateioII: TCurrencyField
      FieldName = 'II'
    end
    object NotasRateioSeguro_ME: TCurrencyField
      FieldName = 'Seguro_ME'
    end
    object NotasRateioSeguro_Real: TCurrencyField
      FieldName = 'Seguro_Real'
    end
    object NotasRateioFrete_ME: TCurrencyField
      FieldName = 'Frete_ME'
    end
    object NotasRateioFrete_Real: TCurrencyField
      FieldName = 'Frete_Real'
    end
    object NotasRateioDumping: TCurrencyField
      FieldName = 'Dumping'
    end
  end
  object dsNotasRateio: TDataSource
    DataSet = NotasRateio
    Left = 150
    Top = 267
  end
  object FechamentoFiscal: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO FechamentoFiscal'
      '  (Ano, Mes, Nome_Mes, Fechado)'
      'VALUES'
      '  (:Ano, :Mes, :Nome_Mes, :Fechado)')
    SQLDelete.Strings = (
      'DELETE FROM FechamentoFiscal'
      'WHERE'
      '  Ano = :Old_Ano AND Mes = :Old_Mes')
    SQLUpdate.Strings = (
      'UPDATE FechamentoFiscal'
      'SET'
      
        '  Ano = :Ano, Mes = :Mes, Nome_Mes = :Nome_Mes, Fechado = :Fecha' +
        'do'
      'WHERE'
      '  Ano = :Old_Ano AND Mes = :Old_Mes')
    SQLRefresh.Strings = (
      
        'SELECT FechamentoFiscal.Ano, FechamentoFiscal.Mes, FechamentoFis' +
        'cal.Nome_Mes, FechamentoFiscal.Fechado FROM FechamentoFiscal'
      
        'WHERE FechamentoFiscal.Ano = :Ano AND FechamentoFiscal.Mes = :Me' +
        's ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM FechamentoFiscal')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 342
    Top = 221
    object FechamentoFiscalAno: TSmallintField
      FieldName = 'Ano'
      Origin = 'FechamentoFiscal.Ano'
    end
    object FechamentoFiscalMes: TSmallintField
      FieldName = 'Mes'
      Origin = 'FechamentoFiscal.Mes'
      DisplayFormat = '00'
    end
    object FechamentoFiscalNome_Mes: TStringField
      FieldName = 'Nome_Mes'
      Origin = 'FechamentoFiscal.Nome_Mes'
      Size = 9
    end
    object FechamentoFiscalFechado: TBooleanField
      FieldName = 'Fechado'
      Origin = 'FechamentoFiscal.Fechado'
    end
  end
  object dsFechamentoFiscal: TDataSource
    DataSet = FechamentoFiscal
    Left = 342
    Top = 268
  end
  object ClasseEnquadramentoIPI: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ClasseEnquadramentoIPI'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM ClasseEnquadramentoIPI'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE ClasseEnquadramentoIPI'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT ClasseEnquadramentoIPI.Codigo, ClasseEnquadramentoIPI.Des' +
        'cricao FROM ClasseEnquadramentoIPI'
      'WHERE ClasseEnquadramentoIPI.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM ClasseEnquadramentoIPI')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 467
    Top = 221
    object ClasseEnquadramentoIPICodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'ClasseEnquadramentoIPI.Codigo'
      FixedChar = True
      Size = 5
    end
    object ClasseEnquadramentoIPIDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'ClasseEnquadramentoIPI.Descricao'
      OnGetText = ClasseEnquadramentoIPIDescricaoGetText
      Size = 50
    end
  end
  object dsClasseEnquadramentoIPI: TDataSource
    DataSet = ClasseEnquadramentoIPI
    Left = 468
    Top = 269
  end
  object GNRE: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO GNRE'
      
        '  (Registro, Empresa, Nota, Chave, Data_Nota, UF_Favorecido, UF_' +
        'FavorecidoCod, Destinatario_CNPJ_CPF, Destinatario_IE, Destinata' +
        'rio_RazaoSocial, Destinatario_Municipio, Numero_Convenio, Codigo' +
        '_Receita, Valor, Data_Vencimento, Destinatario_MunicipioCod, Pro' +
        'tocolo_Numero, Protocolo_Data, Selecao, Autorizada, Data_Pagamen' +
        'to, Codigo_Barras, Numero_Controle, Financeiro_Numero, Linha_Dig' +
        'itavel)'
      'VALUES'
      
        '  (:Registro, :Empresa, :Nota, :Chave, :Data_Nota, :UF_Favorecid' +
        'o, :UF_FavorecidoCod, :Destinatario_CNPJ_CPF, :Destinatario_IE, ' +
        ':Destinatario_RazaoSocial, :Destinatario_Municipio, :Numero_Conv' +
        'enio, :Codigo_Receita, :Valor, :Data_Vencimento, :Destinatario_M' +
        'unicipioCod, :Protocolo_Numero, :Protocolo_Data, :Selecao, :Auto' +
        'rizada, :Data_Pagamento, :Codigo_Barras, :Numero_Controle, :Fina' +
        'nceiro_Numero, :Linha_Digitavel)')
    SQLDelete.Strings = (
      'DELETE FROM GNRE'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE GNRE'
      'SET'
      
        '  Registro = :Registro, Empresa = :Empresa, Nota = :Nota, Chave ' +
        '= :Chave, Data_Nota = :Data_Nota, UF_Favorecido = :UF_Favorecido' +
        ', UF_FavorecidoCod = :UF_FavorecidoCod, Destinatario_CNPJ_CPF = ' +
        ':Destinatario_CNPJ_CPF, Destinatario_IE = :Destinatario_IE, Dest' +
        'inatario_RazaoSocial = :Destinatario_RazaoSocial, Destinatario_M' +
        'unicipio = :Destinatario_Municipio, Numero_Convenio = :Numero_Co' +
        'nvenio, Codigo_Receita = :Codigo_Receita, Valor = :Valor, Data_V' +
        'encimento = :Data_Vencimento, Destinatario_MunicipioCod = :Desti' +
        'natario_MunicipioCod, Protocolo_Numero = :Protocolo_Numero, Prot' +
        'ocolo_Data = :Protocolo_Data, Selecao = :Selecao, Autorizada = :' +
        'Autorizada, Data_Pagamento = :Data_Pagamento, Codigo_Barras = :C' +
        'odigo_Barras, Numero_Controle = :Numero_Controle, Financeiro_Num' +
        'ero = :Financeiro_Numero, Linha_Digitavel = :Linha_Digitavel'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT GNRE.Registro, GNRE.Empresa, GNRE.Nota, GNRE.Chave, GNRE.' +
        'Data_Nota, GNRE.UF_Favorecido, GNRE.UF_FavorecidoCod, GNRE.Desti' +
        'natario_CNPJ_CPF, GNRE.Destinatario_IE, GNRE.Destinatario_RazaoS' +
        'ocial, GNRE.Destinatario_Municipio, GNRE.Numero_Convenio, GNRE.C' +
        'odigo_Receita, GNRE.Valor, GNRE.Data_Vencimento, GNRE.Destinatar' +
        'io_MunicipioCod, GNRE.Protocolo_Numero, GNRE.Protocolo_Data, GNR' +
        'E.Selecao, GNRE.Autorizada, GNRE.Data_Pagamento, GNRE.Codigo_Bar' +
        'ras, GNRE.Numero_Controle, GNRE.Financeiro_Numero, GNRE.Linha_Di' +
        'gitavel FROM GNRE'
      'WHERE GNRE.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM GNRE')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 563
    Top = 221
    object GNRERegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'GNRE.Registro'
    end
    object GNREEmpresa: TSmallintField
      FieldName = 'Empresa'
      Origin = 'GNRE.Empresa'
    end
    object GNRENota: TIntegerField
      FieldName = 'Nota'
      Origin = 'GNRE.Nota'
      DisplayFormat = '000000000'
    end
    object GNREChave: TStringField
      FieldName = 'Chave'
      Origin = 'GNRE.Chave'
      Size = 44
    end
    object GNREData_Nota: TDateTimeField
      FieldName = 'Data_Nota'
      Origin = 'GNRE.Data_Nota'
    end
    object GNREUF_Favorecido: TStringField
      FieldName = 'UF_Favorecido'
      Origin = 'GNRE.UF_Favorecido'
      Size = 2
    end
    object GNREUF_FavorecidoCod: TStringField
      FieldName = 'UF_FavorecidoCod'
      Origin = 'GNRE.UF_FavorecidoCod'
      Size = 5
    end
    object GNREDestinatario_CNPJ_CPF: TStringField
      FieldName = 'Destinatario_CNPJ_CPF'
      Origin = 'GNRE.Destinatario_CNPJ_CPF'
      Size = 14
    end
    object GNREDestinatario_IE: TStringField
      FieldName = 'Destinatario_IE'
      Origin = 'GNRE.Destinatario_IE'
      Size = 14
    end
    object GNREDestinatario_RazaoSocial: TStringField
      FieldName = 'Destinatario_RazaoSocial'
      Origin = 'GNRE.Destinatario_RazaoSocial'
      Size = 60
    end
    object GNREDestinatario_Municipio: TStringField
      FieldName = 'Destinatario_Municipio'
      Origin = 'GNRE.Destinatario_Municipio'
      Size = 50
    end
    object GNRENumero_Convenio: TStringField
      FieldName = 'Numero_Convenio'
      Origin = 'GNRE.Numero_Convenio'
      Size = 60
    end
    object GNRECodigo_Receita: TStringField
      FieldName = 'Codigo_Receita'
      Origin = 'GNRE.Codigo_Receita'
      Size = 6
    end
    object GNREValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'GNRE.Valor'
      DisplayFormat = ',##0.00'
    end
    object GNREData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'GNRE.Data_Vencimento'
    end
    object GNREDestinatario_MunicipioCod: TStringField
      FieldName = 'Destinatario_MunicipioCod'
      Origin = 'GNRE.Destinatario_MunicipioCod'
      Size = 5
    end
    object GNREProtocolo_Numero: TStringField
      FieldName = 'Protocolo_Numero'
      Origin = 'GNRE.Protocolo_Numero'
      Size = 15
    end
    object GNREProtocolo_Data: TDateTimeField
      FieldName = 'Protocolo_Data'
      Origin = 'GNRE.Protocolo_Data'
    end
    object GNRESelecao: TBooleanField
      FieldName = 'Selecao'
      Origin = 'GNRE.Selecao'
    end
    object GNREAutorizada: TBooleanField
      FieldName = 'Autorizada'
      Origin = 'GNRE.Autorizada'
    end
    object GNREData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
      Origin = 'GNRE.Data_Pagamento'
    end
    object GNRECodigo_Barras: TStringField
      FieldName = 'Codigo_Barras'
      Origin = 'GNRE.Codigo_Barras'
      Size = 48
    end
    object GNRENumero_Controle: TStringField
      FieldName = 'Numero_Controle'
      Origin = 'GNRE.Numero_Controle'
    end
    object GNREFinanceiro_Numero: TIntegerField
      FieldName = 'Financeiro_Numero'
      Origin = 'GNRE.Financeiro_Numero'
    end
    object GNRELinha_Digitavel: TStringField
      FieldName = 'Linha_Digitavel'
      Origin = 'GNRE.Linha_Digitavel'
      Size = 48
    end
  end
  object dsGNRE: TDataSource
    DataSet = GNRE
    Left = 564
    Top = 269
  end
  object NotasTerceiros: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasTerceiros'
      
        '  (Processo, FUNDAP, Nota, Referencia_Fiscal, Data_Emissao, Nota' +
        '_Referencia, Data_Referencia, Centro_Custo, Fornecedor, Estado, ' +
        'Data_Entrada, Tipo, Modelo, Serie, SubSerie, Natureza_Codigo, Se' +
        'rvico, Quantidade, Valor_BCICMSOper, Aliquota_ICMSOper, Valor_IC' +
        'MSOper, Valor_IsentasICMS, Valor_OutrasICMS, Valor_TotalProdutos' +
        ', Valor_TotalDescontos, Valor_TotalNota, Valor_TotalLiquido, Val' +
        'or_BCICMSSub, Valor_ICMSSub, Aliquota_ICMSSub, Valor_IsentasICMS' +
        'Sub, Valor_OutrasICMSSub, Valor_TotalBCIPI, Valor_TotalIPI, Valo' +
        'r_IsentasIPI, Valor_OutrasIPI, Observacoes, Volume_PesoLiquido, ' +
        'Volume_PesoBruto, Aliquota_PIS, Valor_PIS, Aliquota_COFINS, Valo' +
        'r_COFINS, Classificacao, Codigo_Adicional01, Aliquota_Adicional0' +
        '1, Valor_Adicional01, Codigo_Adicional02, Aliquota_Adicional02, ' +
        'Valor_Adicional02, Codigo_Adicional03, Aliquota_Adicional03, Val' +
        'or_Adicional03, Codigo_Adicional04, Aliquota_Adicional04, Valor_' +
        'Adicional04, Codigo_Adicional05, Aliquota_Adicional05, Valor_Adi' +
        'cional05, Codigo_Adicional06, Aliquota_Adicional06, Valor_Adicio' +
        'nal06, Lancamento_Nota, Lancamento_Adicional01, Lancamento_Adici' +
        'onal02, Lancamento_Adicional03, Lancamento_Adicional04, Lancamen' +
        'to_Adicional05, Lancamento_Adicional06, Modalidade_Pgto, Aliquot' +
        'a_ISS, Valor_ISS, NFe_cNF, NFe_Protocolo, Incentivo_Fiscal, Prov' +
        'isoria, Origem_Mercadoria, Valor_TotalProdutosOrig, Valor_TotalL' +
        'iquidoOrig, Desdobramento, Modalidade_Frete, Manifesto_Protocolo' +
        ', Manifesto_DataProtocolo, Manifesto_Motivo, Manifesto_Justifica' +
        'tiva, Natureza_Frete, Transportador_Codigo, Valor_TotalFrete, Mu' +
        'nicipio_Origem, Municipio_Destino, Manifestada, Classificacao_Se' +
        'rvico, Total_Despesas, Tipo_Pagamento, Complementar, Valor_IR, V' +
        'alor_CSLL, Valor_INSS, Armazem, Retencao_ISS, Valor_BCIBS, Valor' +
        '_IBS, Valor_BCCBS, Valor_CBS, Valor_BCIS, Valor_IS)'
      'VALUES'
      
        '  (:Processo, :FUNDAP, :Nota, :Referencia_Fiscal, :Data_Emissao,' +
        ' :Nota_Referencia, :Data_Referencia, :Centro_Custo, :Fornecedor,' +
        ' :Estado, :Data_Entrada, :Tipo, :Modelo, :Serie, :SubSerie, :Nat' +
        'ureza_Codigo, :Servico, :Quantidade, :Valor_BCICMSOper, :Aliquot' +
        'a_ICMSOper, :Valor_ICMSOper, :Valor_IsentasICMS, :Valor_OutrasIC' +
        'MS, :Valor_TotalProdutos, :Valor_TotalDescontos, :Valor_TotalNot' +
        'a, :Valor_TotalLiquido, :Valor_BCICMSSub, :Valor_ICMSSub, :Aliqu' +
        'ota_ICMSSub, :Valor_IsentasICMSSub, :Valor_OutrasICMSSub, :Valor' +
        '_TotalBCIPI, :Valor_TotalIPI, :Valor_IsentasIPI, :Valor_OutrasIP' +
        'I, :Observacoes, :Volume_PesoLiquido, :Volume_PesoBruto, :Aliquo' +
        'ta_PIS, :Valor_PIS, :Aliquota_COFINS, :Valor_COFINS, :Classifica' +
        'cao, :Codigo_Adicional01, :Aliquota_Adicional01, :Valor_Adiciona' +
        'l01, :Codigo_Adicional02, :Aliquota_Adicional02, :Valor_Adiciona' +
        'l02, :Codigo_Adicional03, :Aliquota_Adicional03, :Valor_Adiciona' +
        'l03, :Codigo_Adicional04, :Aliquota_Adicional04, :Valor_Adiciona' +
        'l04, :Codigo_Adicional05, :Aliquota_Adicional05, :Valor_Adiciona' +
        'l05, :Codigo_Adicional06, :Aliquota_Adicional06, :Valor_Adiciona' +
        'l06, :Lancamento_Nota, :Lancamento_Adicional01, :Lancamento_Adic' +
        'ional02, :Lancamento_Adicional03, :Lancamento_Adicional04, :Lanc' +
        'amento_Adicional05, :Lancamento_Adicional06, :Modalidade_Pgto, :' +
        'Aliquota_ISS, :Valor_ISS, :NFe_cNF, :NFe_Protocolo, :Incentivo_F' +
        'iscal, :Provisoria, :Origem_Mercadoria, :Valor_TotalProdutosOrig' +
        ', :Valor_TotalLiquidoOrig, :Desdobramento, :Modalidade_Frete, :M' +
        'anifesto_Protocolo, :Manifesto_DataProtocolo, :Manifesto_Motivo,' +
        ' :Manifesto_Justificativa, :Natureza_Frete, :Transportador_Codig' +
        'o, :Valor_TotalFrete, :Municipio_Origem, :Municipio_Destino, :Ma' +
        'nifestada, :Classificacao_Servico, :Total_Despesas, :Tipo_Pagame' +
        'nto, :Complementar, :Valor_IR, :Valor_CSLL, :Valor_INSS, :Armaze' +
        'm, :Retencao_ISS, :Valor_BCIBS, :Valor_IBS, :Valor_BCCBS, :Valor' +
        '_CBS, :Valor_BCIS, :Valor_IS)')
    SQLDelete.Strings = (
      'DELETE FROM NotasTerceiros'
      'WHERE'
      
        '  Nota = :Old_Nota AND Referencia_Fiscal = :Old_Referencia_Fisca' +
        'l AND Data_Emissao = :Old_Data_Emissao AND Fornecedor = :Old_For' +
        'necedor')
    SQLUpdate.Strings = (
      'UPDATE NotasTerceiros'
      'SET'
      
        '  Processo = :Processo, FUNDAP = :FUNDAP, Nota = :Nota, Referenc' +
        'ia_Fiscal = :Referencia_Fiscal, Data_Emissao = :Data_Emissao, No' +
        'ta_Referencia = :Nota_Referencia, Data_Referencia = :Data_Refere' +
        'ncia, Centro_Custo = :Centro_Custo, Fornecedor = :Fornecedor, Es' +
        'tado = :Estado, Data_Entrada = :Data_Entrada, Tipo = :Tipo, Mode' +
        'lo = :Modelo, Serie = :Serie, SubSerie = :SubSerie, Natureza_Cod' +
        'igo = :Natureza_Codigo, Servico = :Servico, Quantidade = :Quanti' +
        'dade, Valor_BCICMSOper = :Valor_BCICMSOper, Aliquota_ICMSOper = ' +
        ':Aliquota_ICMSOper, Valor_ICMSOper = :Valor_ICMSOper, Valor_Isen' +
        'tasICMS = :Valor_IsentasICMS, Valor_OutrasICMS = :Valor_OutrasIC' +
        'MS, Valor_TotalProdutos = :Valor_TotalProdutos, Valor_TotalDesco' +
        'ntos = :Valor_TotalDescontos, Valor_TotalNota = :Valor_TotalNota' +
        ', Valor_TotalLiquido = :Valor_TotalLiquido, Valor_BCICMSSub = :V' +
        'alor_BCICMSSub, Valor_ICMSSub = :Valor_ICMSSub, Aliquota_ICMSSub' +
        ' = :Aliquota_ICMSSub, Valor_IsentasICMSSub = :Valor_IsentasICMSS' +
        'ub, Valor_OutrasICMSSub = :Valor_OutrasICMSSub, Valor_TotalBCIPI' +
        ' = :Valor_TotalBCIPI, Valor_TotalIPI = :Valor_TotalIPI, Valor_Is' +
        'entasIPI = :Valor_IsentasIPI, Valor_OutrasIPI = :Valor_OutrasIPI' +
        ', Observacoes = :Observacoes, Volume_PesoLiquido = :Volume_PesoL' +
        'iquido, Volume_PesoBruto = :Volume_PesoBruto, Aliquota_PIS = :Al' +
        'iquota_PIS, Valor_PIS = :Valor_PIS, Aliquota_COFINS = :Aliquota_' +
        'COFINS, Valor_COFINS = :Valor_COFINS, Classificacao = :Classific' +
        'acao, Codigo_Adicional01 = :Codigo_Adicional01, Aliquota_Adicion' +
        'al01 = :Aliquota_Adicional01, Valor_Adicional01 = :Valor_Adicion' +
        'al01, Codigo_Adicional02 = :Codigo_Adicional02, Aliquota_Adicion' +
        'al02 = :Aliquota_Adicional02, Valor_Adicional02 = :Valor_Adicion' +
        'al02, Codigo_Adicional03 = :Codigo_Adicional03, Aliquota_Adicion' +
        'al03 = :Aliquota_Adicional03, Valor_Adicional03 = :Valor_Adicion' +
        'al03, Codigo_Adicional04 = :Codigo_Adicional04, Aliquota_Adicion' +
        'al04 = :Aliquota_Adicional04, Valor_Adicional04 = :Valor_Adicion' +
        'al04, Codigo_Adicional05 = :Codigo_Adicional05, Aliquota_Adicion' +
        'al05 = :Aliquota_Adicional05, Valor_Adicional05 = :Valor_Adicion' +
        'al05, Codigo_Adicional06 = :Codigo_Adicional06, Aliquota_Adicion' +
        'al06 = :Aliquota_Adicional06, Valor_Adicional06 = :Valor_Adicion' +
        'al06, Lancamento_Nota = :Lancamento_Nota, Lancamento_Adicional01' +
        ' = :Lancamento_Adicional01, Lancamento_Adicional02 = :Lancamento' +
        '_Adicional02, Lancamento_Adicional03 = :Lancamento_Adicional03, ' +
        'Lancamento_Adicional04 = :Lancamento_Adicional04, Lancamento_Adi' +
        'cional05 = :Lancamento_Adicional05, Lancamento_Adicional06 = :La' +
        'ncamento_Adicional06, Modalidade_Pgto = :Modalidade_Pgto, Aliquo' +
        'ta_ISS = :Aliquota_ISS, Valor_ISS = :Valor_ISS, NFe_cNF = :NFe_c' +
        'NF, NFe_Protocolo = :NFe_Protocolo, Incentivo_Fiscal = :Incentiv' +
        'o_Fiscal, Provisoria = :Provisoria, Origem_Mercadoria = :Origem_' +
        'Mercadoria, Valor_TotalProdutosOrig = :Valor_TotalProdutosOrig, ' +
        'Valor_TotalLiquidoOrig = :Valor_TotalLiquidoOrig, Desdobramento ' +
        '= :Desdobramento, Modalidade_Frete = :Modalidade_Frete, Manifest' +
        'o_Protocolo = :Manifesto_Protocolo, Manifesto_DataProtocolo = :M' +
        'anifesto_DataProtocolo, Manifesto_Motivo = :Manifesto_Motivo, Ma' +
        'nifesto_Justificativa = :Manifesto_Justificativa, Natureza_Frete' +
        ' = :Natureza_Frete, Transportador_Codigo = :Transportador_Codigo' +
        ', Valor_TotalFrete = :Valor_TotalFrete, Municipio_Origem = :Muni' +
        'cipio_Origem, Municipio_Destino = :Municipio_Destino, Manifestad' +
        'a = :Manifestada, Classificacao_Servico = :Classificacao_Servico' +
        ', Total_Despesas = :Total_Despesas, Tipo_Pagamento = :Tipo_Pagam' +
        'ento, Complementar = :Complementar, Valor_IR = :Valor_IR, Valor_' +
        'CSLL = :Valor_CSLL, Valor_INSS = :Valor_INSS, Armazem = :Armazem' +
        ', Retencao_ISS = :Retencao_ISS, Valor_BCIBS = :Valor_BCIBS, Valo' +
        'r_IBS = :Valor_IBS, Valor_BCCBS = :Valor_BCCBS, Valor_CBS = :Val' +
        'or_CBS, Valor_BCIS = :Valor_BCIS, Valor_IS = :Valor_IS'
      'WHERE'
      
        '  Nota = :Old_Nota AND Referencia_Fiscal = :Old_Referencia_Fisca' +
        'l AND Data_Emissao = :Old_Data_Emissao AND Fornecedor = :Old_For' +
        'necedor')
    SQLRefresh.Strings = (
      
        'SELECT Processo, FUNDAP, Nota, Referencia_Fiscal, Data_Emissao, ' +
        'Nota_Referencia, Data_Referencia, Centro_Custo, Fornecedor, Esta' +
        'do, Data_Entrada, Tipo, Modelo, Serie, SubSerie, Natureza_Codigo' +
        ', Servico, Quantidade, Valor_BCICMSOper, Aliquota_ICMSOper, Valo' +
        'r_ICMSOper, Valor_IsentasICMS, Valor_OutrasICMS, Valor_TotalProd' +
        'utos, Valor_TotalDescontos, Valor_TotalNota, Valor_TotalLiquido,' +
        ' Valor_BCICMSSub, Valor_ICMSSub, Aliquota_ICMSSub, Valor_Isentas' +
        'ICMSSub, Valor_OutrasICMSSub, Valor_TotalBCIPI, Valor_TotalIPI, ' +
        'Valor_IsentasIPI, Valor_OutrasIPI, Observacoes, Volume_PesoLiqui' +
        'do, Volume_PesoBruto, Aliquota_PIS, Valor_PIS, Aliquota_COFINS, ' +
        'Valor_COFINS, Classificacao, Codigo_Adicional01, Aliquota_Adicio' +
        'nal01, Valor_Adicional01, Codigo_Adicional02, Aliquota_Adicional' +
        '02, Valor_Adicional02, Codigo_Adicional03, Aliquota_Adicional03,' +
        ' Valor_Adicional03, Codigo_Adicional04, Aliquota_Adicional04, Va' +
        'lor_Adicional04, Codigo_Adicional05, Aliquota_Adicional05, Valor' +
        '_Adicional05, Codigo_Adicional06, Aliquota_Adicional06, Valor_Ad' +
        'icional06, Lancamento_Nota, Lancamento_Adicional01, Lancamento_A' +
        'dicional02, Lancamento_Adicional03, Lancamento_Adicional04, Lanc' +
        'amento_Adicional05, Lancamento_Adicional06, Modalidade_Pgto, Ali' +
        'quota_ISS, Valor_ISS, NFe_cNF, NFe_Protocolo, Incentivo_Fiscal, ' +
        'Provisoria, Origem_Mercadoria, Valor_TotalProdutosOrig, Valor_To' +
        'talLiquidoOrig, Desdobramento, Modalidade_Frete, Manifesto_Proto' +
        'colo, Manifesto_DataProtocolo, Manifesto_Motivo, Manifesto_Justi' +
        'ficativa, Natureza_Frete, Transportador_Codigo, Valor_TotalFrete' +
        ', Municipio_Origem, Municipio_Destino, Manifestada, Classificaca' +
        'o_Servico, Total_Despesas, Tipo_Pagamento, Complementar, Valor_I' +
        'R, Valor_CSLL, Valor_INSS, Armazem, Retencao_ISS, Valor_BCIBS, V' +
        'alor_IBS, Valor_BCCBS, Valor_CBS, Valor_BCIS, Valor_IS FROM Nota' +
        'sTerceiros'
      'WHERE'
      
        '  Nota = :Nota AND Referencia_Fiscal = :Referencia_Fiscal AND Da' +
        'ta_Emissao = :Data_Emissao AND Fornecedor = :Fornecedor')
    SQLLock.Strings = (
      'SELECT * FROM NotasTerceiros'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      
        '  Nota = :Old_Nota AND Referencia_Fiscal = :Old_Referencia_Fisca' +
        'l AND Data_Emissao = :Old_Data_Emissao AND Fornecedor = :Old_For' +
        'necedor')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM NotasTerceiros'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM NotasTerceiros')
    FetchRows = 1
    BeforePost = NotasTerceirosBeforePost
    Left = 216
    Top = 16
    object NotasTerceirosProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'NotasTerceiros.Processo'
      Size = 15
    end
    object NotasTerceirosFUNDAP: TBooleanField
      FieldName = 'FUNDAP'
      Origin = 'NotasTerceiros.FUNDAP'
    end
    object NotasTerceirosNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'NotasTerceiros.Nota'
    end
    object NotasTerceirosReferencia_Fiscal: TSmallintField
      FieldName = 'Referencia_Fiscal'
      Origin = 'NotasTerceiros.Referencia_Fiscal'
    end
    object NotasTerceirosData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'NotasTerceiros.Data_Emissao'
    end
    object NotasTerceirosNota_Referencia: TIntegerField
      FieldName = 'Nota_Referencia'
      Origin = 'NotasTerceiros.Nota_Referencia'
    end
    object NotasTerceirosData_Referencia: TDateTimeField
      FieldName = 'Data_Referencia'
      Origin = 'NotasTerceiros.Data_Referencia'
    end
    object NotasTerceirosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'NotasTerceiros.Centro_Custo'
      FixedChar = True
      Size = 10
    end
    object NotasTerceirosFornecedor: TSmallintField
      FieldName = 'Fornecedor'
      Origin = 'NotasTerceiros.Fornecedor'
    end
    object NotasTerceirosEstado: TStringField
      FieldName = 'Estado'
      Origin = 'NotasTerceiros.Estado'
      FixedChar = True
      Size = 2
    end
    object NotasTerceirosData_Entrada: TDateTimeField
      FieldName = 'Data_Entrada'
      Origin = 'NotasTerceiros.Data_Entrada'
    end
    object NotasTerceirosTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'NotasTerceiros.Tipo'
      FixedChar = True
      Size = 3
    end
    object NotasTerceirosModelo: TStringField
      FieldName = 'Modelo'
      Origin = 'NotasTerceiros.Modelo'
      FixedChar = True
      Size = 2
    end
    object NotasTerceirosSerie: TStringField
      FieldName = 'Serie'
      Origin = 'NotasTerceiros.Serie'
      FixedChar = True
      Size = 2
    end
    object NotasTerceirosSubSerie: TStringField
      FieldName = 'SubSerie'
      Origin = 'NotasTerceiros.SubSerie'
      FixedChar = True
      Size = 2
    end
    object NotasTerceirosNatureza_Codigo: TStringField
      FieldName = 'Natureza_Codigo'
      Origin = 'NotasTerceiros.Natureza_Codigo'
      Size = 4
    end
    object NotasTerceirosServico: TStringField
      FieldName = 'Servico'
      Origin = 'NotasTerceiros.Servico'
      FixedChar = True
      Size = 5
    end
    object NotasTerceirosQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'NotasTerceiros.Quantidade'
    end
    object NotasTerceirosValor_BCICMSOper: TCurrencyField
      FieldName = 'Valor_BCICMSOper'
      Origin = 'NotasTerceiros.Valor_BCICMSOper'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosAliquota_ICMSOper: TFloatField
      FieldName = 'Aliquota_ICMSOper'
      Origin = 'NotasTerceiros.Aliquota_ICMSOper'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_ICMSOper: TCurrencyField
      FieldName = 'Valor_ICMSOper'
      Origin = 'NotasTerceiros.Valor_ICMSOper'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_IsentasICMS: TCurrencyField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'NotasTerceiros.Valor_IsentasICMS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_OutrasICMS: TCurrencyField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'NotasTerceiros.Valor_OutrasICMS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_TotalProdutos: TCurrencyField
      FieldName = 'Valor_TotalProdutos'
      Origin = 'NotasTerceiros.Valor_TotalProdutos'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_TotalDescontos: TCurrencyField
      FieldName = 'Valor_TotalDescontos'
      Origin = 'NotasTerceiros.Valor_TotalDescontos'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      Origin = 'NotasTerceiros.Valor_TotalNota'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_TotalLiquido: TCurrencyField
      FieldName = 'Valor_TotalLiquido'
      Origin = 'NotasTerceiros.Valor_TotalLiquido'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_BCICMSSub: TCurrencyField
      FieldName = 'Valor_BCICMSSub'
      Origin = 'NotasTerceiros.Valor_BCICMSSub'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_ICMSSub: TCurrencyField
      FieldName = 'Valor_ICMSSub'
      Origin = 'NotasTerceiros.Valor_ICMSSub'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosAliquota_ICMSSub: TFloatField
      FieldName = 'Aliquota_ICMSSub'
      Origin = 'NotasTerceiros.Aliquota_ICMSSub'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_IsentasICMSSub: TCurrencyField
      FieldName = 'Valor_IsentasICMSSub'
      Origin = 'NotasTerceiros.Valor_IsentasICMSSub'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_OutrasICMSSub: TCurrencyField
      FieldName = 'Valor_OutrasICMSSub'
      Origin = 'NotasTerceiros.Valor_OutrasICMSSub'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_TotalBCIPI: TCurrencyField
      FieldName = 'Valor_TotalBCIPI'
      Origin = 'NotasTerceiros.Valor_TotalBCIPI'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_TotalIPI: TCurrencyField
      FieldName = 'Valor_TotalIPI'
      Origin = 'NotasTerceiros.Valor_TotalIPI'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_IsentasIPI: TCurrencyField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'NotasTerceiros.Valor_IsentasIPI'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_OutrasIPI: TCurrencyField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'NotasTerceiros.Valor_OutrasIPI'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosObservacoes: TMemoField
      FieldName = 'Observacoes'
      Origin = 'NotasTerceiros.Observacoes'
      BlobType = ftMemo
    end
    object NotasTerceirosVolume_PesoLiquido: TFloatField
      FieldName = 'Volume_PesoLiquido'
      Origin = 'NotasTerceiros.Volume_PesoLiquido'
      DisplayFormat = ',##0.000'
    end
    object NotasTerceirosVolume_PesoBruto: TFloatField
      FieldName = 'Volume_PesoBruto'
      Origin = 'NotasTerceiros.Volume_PesoBruto'
      DisplayFormat = ',##0.000'
    end
    object NotasTerceirosAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'NotasTerceiros.Aliquota_PIS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'NotasTerceiros.Valor_PIS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'NotasTerceiros.Aliquota_COFINS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'NotasTerceiros.Valor_COFINS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosClassificacao: TStringField
      FieldName = 'Classificacao'
      Origin = 'NotasTerceiros.Classificacao'
      Size = 15
    end
    object NotasTerceirosCodigo_Adicional01: TStringField
      FieldName = 'Codigo_Adicional01'
      Origin = 'NotasTerceiros.Codigo_Adicional01'
      FixedChar = True
      Size = 10
    end
    object NotasTerceirosAliquota_Adicional01: TFloatField
      FieldName = 'Aliquota_Adicional01'
      Origin = 'NotasTerceiros.Aliquota_Adicional01'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_Adicional01: TCurrencyField
      FieldName = 'Valor_Adicional01'
      Origin = 'NotasTerceiros.Valor_Adicional01'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosCodigo_Adicional02: TStringField
      FieldName = 'Codigo_Adicional02'
      Origin = 'NotasTerceiros.Codigo_Adicional02'
      FixedChar = True
      Size = 10
    end
    object NotasTerceirosAliquota_Adicional02: TFloatField
      FieldName = 'Aliquota_Adicional02'
      Origin = 'NotasTerceiros.Aliquota_Adicional02'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_Adicional02: TCurrencyField
      FieldName = 'Valor_Adicional02'
      Origin = 'NotasTerceiros.Valor_Adicional02'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosCodigo_Adicional03: TStringField
      FieldName = 'Codigo_Adicional03'
      Origin = 'NotasTerceiros.Codigo_Adicional03'
      FixedChar = True
      Size = 10
    end
    object NotasTerceirosAliquota_Adicional03: TFloatField
      FieldName = 'Aliquota_Adicional03'
      Origin = 'NotasTerceiros.Aliquota_Adicional03'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_Adicional03: TCurrencyField
      FieldName = 'Valor_Adicional03'
      Origin = 'NotasTerceiros.Valor_Adicional03'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosCodigo_Adicional04: TStringField
      FieldName = 'Codigo_Adicional04'
      Origin = 'NotasTerceiros.Codigo_Adicional04'
      FixedChar = True
      Size = 10
    end
    object NotasTerceirosAliquota_Adicional04: TFloatField
      FieldName = 'Aliquota_Adicional04'
      Origin = 'NotasTerceiros.Aliquota_Adicional04'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_Adicional04: TCurrencyField
      FieldName = 'Valor_Adicional04'
      Origin = 'NotasTerceiros.Valor_Adicional04'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosCodigo_Adicional05: TStringField
      FieldName = 'Codigo_Adicional05'
      Origin = 'NotasTerceiros.Codigo_Adicional05'
      FixedChar = True
      Size = 10
    end
    object NotasTerceirosAliquota_Adicional05: TFloatField
      FieldName = 'Aliquota_Adicional05'
      Origin = 'NotasTerceiros.Aliquota_Adicional05'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_Adicional05: TCurrencyField
      FieldName = 'Valor_Adicional05'
      Origin = 'NotasTerceiros.Valor_Adicional05'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosCodigo_Adicional06: TStringField
      FieldName = 'Codigo_Adicional06'
      Origin = 'NotasTerceiros.Codigo_Adicional06'
      FixedChar = True
      Size = 10
    end
    object NotasTerceirosAliquota_Adicional06: TFloatField
      FieldName = 'Aliquota_Adicional06'
      Origin = 'NotasTerceiros.Aliquota_Adicional06'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_Adicional06: TCurrencyField
      FieldName = 'Valor_Adicional06'
      Origin = 'NotasTerceiros.Valor_Adicional06'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosLancamento_Nota: TSmallintField
      FieldName = 'Lancamento_Nota'
      Origin = 'NotasTerceiros.Lancamento_Nota'
    end
    object NotasTerceirosLancamento_Adicional01: TSmallintField
      FieldName = 'Lancamento_Adicional01'
      Origin = 'NotasTerceiros.Lancamento_Adicional01'
    end
    object NotasTerceirosLancamento_Adicional02: TSmallintField
      FieldName = 'Lancamento_Adicional02'
      Origin = 'NotasTerceiros.Lancamento_Adicional02'
    end
    object NotasTerceirosLancamento_Adicional03: TSmallintField
      FieldName = 'Lancamento_Adicional03'
      Origin = 'NotasTerceiros.Lancamento_Adicional03'
    end
    object NotasTerceirosLancamento_Adicional04: TSmallintField
      FieldName = 'Lancamento_Adicional04'
      Origin = 'NotasTerceiros.Lancamento_Adicional04'
    end
    object NotasTerceirosLancamento_Adicional05: TSmallintField
      FieldName = 'Lancamento_Adicional05'
      Origin = 'NotasTerceiros.Lancamento_Adicional05'
    end
    object NotasTerceirosLancamento_Adicional06: TSmallintField
      FieldName = 'Lancamento_Adicional06'
      Origin = 'NotasTerceiros.Lancamento_Adicional06'
    end
    object NotasTerceirosModalidade_Pgto: TSmallintField
      FieldName = 'Modalidade_Pgto'
      Origin = 'NotasTerceiros.Modalidade_Pgto'
    end
    object NotasTerceirosAliquota_ISS: TFloatField
      FieldName = 'Aliquota_ISS'
      Origin = 'NotasTerceiros.Aliquota_ISS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_ISS: TCurrencyField
      FieldName = 'Valor_ISS'
      Origin = 'NotasTerceiros.Valor_ISS'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosNFe_cNF: TStringField
      FieldName = 'NFe_cNF'
      Origin = 'NotasTerceiros.NFe_cNF'
      EditMask = '##.####.##.###.###/####-##.##.###.#########.###.###.###-#;0; '
      Size = 44
    end
    object NotasTerceirosNFe_Protocolo: TStringField
      FieldName = 'NFe_Protocolo'
      Origin = 'NotasTerceiros.NFe_Protocolo'
      FixedChar = True
      Size = 15
    end
    object NotasTerceirosIncentivo_Fiscal: TStringField
      FieldName = 'Incentivo_Fiscal'
      Origin = 'NotasTerceiros.Incentivo_Fiscal'
      Size = 15
    end
    object NotasTerceirosProvisoria: TBooleanField
      FieldName = 'Provisoria'
      Origin = 'NotasTerceiros.Provisoria'
    end
    object NotasTerceirosOrigem_Mercadoria: TSmallintField
      FieldName = 'Origem_Mercadoria'
      Origin = 'NotasTerceiros.Origem_Mercadoria'
    end
    object NotasTerceirosValor_TotalProdutosOrig: TCurrencyField
      FieldName = 'Valor_TotalProdutosOrig'
      Origin = 'NotasTerceiros.Valor_TotalProdutosOrig'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosValor_TotalLiquidoOrig: TCurrencyField
      FieldName = 'Valor_TotalLiquidoOrig'
      Origin = 'NotasTerceiros.Valor_TotalLiquidoOrig'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosDesdobramento: TBooleanField
      FieldName = 'Desdobramento'
      Origin = 'NotasTerceiros.Desdobramento'
    end
    object NotasTerceirosModalidade_Frete: TSmallintField
      FieldName = 'Modalidade_Frete'
      Origin = 'NotasTerceiros.Modalidade_Frete'
    end
    object NotasTerceirosManifesto_Protocolo: TStringField
      FieldName = 'Manifesto_Protocolo'
      Origin = 'NotasTerceiros.Manifesto_Protocolo'
      FixedChar = True
      Size = 15
    end
    object NotasTerceirosManifesto_DataProtocolo: TDateTimeField
      FieldName = 'Manifesto_DataProtocolo'
      Origin = 'NotasTerceiros.Manifesto_DataProtocolo'
    end
    object NotasTerceirosManifesto_Motivo: TSmallintField
      FieldName = 'Manifesto_Motivo'
      Origin = 'NotasTerceiros.Manifesto_Motivo'
    end
    object NotasTerceirosManifesto_Justificativa: TMemoField
      FieldName = 'Manifesto_Justificativa'
      Origin = 'NotasTerceiros.Manifesto_Justificativa'
      BlobType = ftMemo
    end
    object NotasTerceirosNatureza_Frete: TSmallintField
      FieldName = 'Natureza_Frete'
      Origin = 'NotasTerceiros.Natureza_Frete'
    end
    object NotasTerceirosTransportador_Codigo: TSmallintField
      FieldName = 'Transportador_Codigo'
      Origin = 'NotasTerceiros.Transportador_Codigo'
    end
    object NotasTerceirosValor_TotalFrete: TCurrencyField
      FieldName = 'Valor_TotalFrete'
      Origin = 'NotasTerceiros.Valor_TotalFrete'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosMunicipio_Origem: TIntegerField
      FieldName = 'Municipio_Origem'
      Origin = 'NotasTerceiros.Municipio_Origem'
    end
    object NotasTerceirosMunicipio_Destino: TIntegerField
      FieldName = 'Municipio_Destino'
      Origin = 'NotasTerceiros.Municipio_Destino'
    end
    object NotasTerceirosManifestada: TBooleanField
      FieldName = 'Manifestada'
      Origin = 'NotasTerceiros.Manifestada'
    end
    object NotasTerceirosClassificacao_Servico: TIntegerField
      FieldName = 'Classificacao_Servico'
    end
    object NotasTerceirosTotal_Despesas: TCurrencyField
      FieldName = 'Total_Despesas'
      DisplayFormat = ',##0.00'
    end
    object NotasTerceirosTipo_Pagamento: TSmallintField
      FieldName = 'Tipo_Pagamento'
    end
    object NotasTerceirosComplementar: TBooleanField
      FieldName = 'Complementar'
    end
    object NotasTerceirosValor_IR: TCurrencyField
      FieldName = 'Valor_IR'
    end
    object NotasTerceirosValor_CSLL: TCurrencyField
      FieldName = 'Valor_CSLL'
    end
    object NotasTerceirosValor_INSS: TCurrencyField
      FieldName = 'Valor_INSS'
    end
    object NotasTerceirosArmazem: TSmallintField
      FieldName = 'Armazem'
    end
    object NotasTerceirosRetencao_ISS: TBooleanField
      FieldName = 'Retencao_ISS'
    end
    object NotasTerceirosValor_BCIBS: TCurrencyField
      FieldName = 'Valor_BCIBS'
    end
    object NotasTerceirosValor_IBS: TCurrencyField
      FieldName = 'Valor_IBS'
    end
    object NotasTerceirosValor_BCCBS: TCurrencyField
      FieldName = 'Valor_BCCBS'
    end
    object NotasTerceirosValor_CBS: TCurrencyField
      FieldName = 'Valor_CBS'
    end
    object NotasTerceirosValor_BCIS: TCurrencyField
      FieldName = 'Valor_BCIS'
    end
    object NotasTerceirosValor_IS: TCurrencyField
      FieldName = 'Valor_IS'
    end
  end
  object dsNotasTerceiros: TDataSource
    DataSet = NotasTerceiros
    Left = 216
    Top = 64
  end
  object dsNotasItensReferencia: TDataSource
    DataSet = NotasItensReferencia
    Left = 683
    Top = 272
  end
  object NotasItensReferencia: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasItensReferencia'
      
        '  (Pedido, Data_Pedido, Chave, Nota, Data_Nota, Chave_Referencia' +
        ', Nota_Referencia, Data_Referencia, Codigo_Mercadoria, Item, Lot' +
        'e, Cancelada, Denegada)'
      'VALUES'
      
        '  (:Pedido, :Data_Pedido, :Chave, :Nota, :Data_Nota, :Chave_Refe' +
        'rencia, :Nota_Referencia, :Data_Referencia, :Codigo_Mercadoria, ' +
        ':Item, :Lote, :Cancelada, :Denegada)')
    SQLDelete.Strings = (
      'DELETE FROM NotasItensReferencia'
      'WHERE'
      
        '  Chave = :Old_Chave AND Codigo_Mercadoria = :Old_Codigo_Mercado' +
        'ria AND Item = :Old_Item AND Lote = :Old_Lote')
    SQLUpdate.Strings = (
      'UPDATE NotasItensReferencia'
      'SET'
      
        '  Pedido = :Pedido, Data_Pedido = :Data_Pedido, Chave = :Chave, ' +
        'Nota = :Nota, Data_Nota = :Data_Nota, Chave_Referencia = :Chave_' +
        'Referencia, Nota_Referencia = :Nota_Referencia, Data_Referencia ' +
        '= :Data_Referencia, Codigo_Mercadoria = :Codigo_Mercadoria, Item' +
        ' = :Item, Lote = :Lote, Cancelada = :Cancelada, Denegada = :Dene' +
        'gada'
      'WHERE'
      
        '  Chave = :Old_Chave AND Codigo_Mercadoria = :Old_Codigo_Mercado' +
        'ria AND Item = :Old_Item AND Lote = :Old_Lote')
    SQLRefresh.Strings = (
      
        'SELECT NotasItensReferencia.Pedido, NotasItensReferencia.Data_Pe' +
        'dido, NotasItensReferencia.Chave, NotasItensReferencia.Nota, Not' +
        'asItensReferencia.Data_Nota, NotasItensReferencia.Chave_Referenc' +
        'ia, NotasItensReferencia.Nota_Referencia, NotasItensReferencia.D' +
        'ata_Referencia, NotasItensReferencia.Codigo_Mercadoria, NotasIte' +
        'nsReferencia.Item, NotasItensReferencia.Lote, NotasItensReferenc' +
        'ia.Cancelada, NotasItensReferencia.Denegada FROM NotasItensRefer' +
        'encia'
      
        'WHERE NotasItensReferencia.Chave = :Chave AND NotasItensReferenc' +
        'ia.Codigo_Mercadoria = :Codigo_Mercadoria AND NotasItensReferenc' +
        'ia.Item = :Item AND NotasItensReferencia.Lote = :Lote ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * '
      'FROM   NotasItensReferencia'
      '')
    FetchRows = 1
    Left = 683
    Top = 224
    object NotasItensReferenciaPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object NotasItensReferenciaData_Pedido: TDateTimeField
      FieldName = 'Data_Pedido'
    end
    object NotasItensReferenciaChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object NotasItensReferenciaNota: TIntegerField
      FieldName = 'Nota'
    end
    object NotasItensReferenciaData_Nota: TDateTimeField
      FieldName = 'Data_Nota'
    end
    object NotasItensReferenciaChave_Referencia: TStringField
      FieldName = 'Chave_Referencia'
      Size = 44
    end
    object NotasItensReferenciaNota_Referencia: TIntegerField
      FieldName = 'Nota_Referencia'
    end
    object NotasItensReferenciaData_Referencia: TDateTimeField
      FieldName = 'Data_Referencia'
    end
    object NotasItensReferenciaCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
    end
    object NotasItensReferenciaItem: TSmallintField
      FieldName = 'Item'
    end
    object NotasItensReferenciaLote: TStringField
      FieldName = 'Lote'
      Size = 15
    end
    object NotasItensReferenciaCancelada: TBooleanField
      FieldName = 'Cancelada'
    end
    object NotasItensReferenciaDenegada: TBooleanField
      FieldName = 'Denegada'
    end
  end
  object Estoque: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Estoque'
      
        '  (Codigo, Codigo_Fabricante, NCM, Descricao, Unidade, Quantidad' +
        'e, Valor_Unitario, Valor_Total, Tipo_Item, Estoque, Participante' +
        ', Tipo, CNPJ, IE, Estado)'
      'VALUES'
      
        '  (:Codigo, :Codigo_Fabricante, :NCM, :Descricao, :Unidade, :Qua' +
        'ntidade, :Valor_Unitario, :Valor_Total, :Tipo_Item, :Estoque, :P' +
        'articipante, :Tipo, :CNPJ, :IE, :Estado)')
    SQLDelete.Strings = (
      'DELETE FROM Estoque'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE Estoque'
      'SET'
      
        '  Codigo = :Codigo, Codigo_Fabricante = :Codigo_Fabricante, NCM ' +
        '= :NCM, Descricao = :Descricao, Unidade = :Unidade, Quantidade =' +
        ' :Quantidade, Valor_Unitario = :Valor_Unitario, Valor_Total = :V' +
        'alor_Total, Tipo_Item = :Tipo_Item, Estoque = :Estoque, Particip' +
        'ante = :Participante, Tipo = :Tipo, CNPJ = :CNPJ, IE = :IE, Esta' +
        'do = :Estado'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Estoque.Codigo, Estoque.Codigo_Fabricante, Estoque.NCM, E' +
        'stoque.Descricao, Estoque.Unidade, Estoque.Quantidade, Estoque.V' +
        'alor_Unitario, Estoque.Valor_Total, Estoque.Tipo_Item, Estoque.E' +
        'stoque, Estoque.Participante, Estoque.Tipo, Estoque.CNPJ, Estoqu' +
        'e.IE, Estoque.Estado FROM Estoque'
      'WHERE Estoque.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Estoque')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 784
    Top = 224
    object EstoqueCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object EstoqueCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Size = 30
    end
    object EstoqueNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object EstoqueDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object EstoqueUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object EstoqueQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object EstoqueValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object EstoqueValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
    end
    object EstoqueTipo_Item: TIntegerField
      FieldName = 'Tipo_Item'
    end
    object EstoqueEstoque: TStringField
      FieldName = 'Estoque'
      Size = 1
    end
    object EstoqueParticipante: TStringField
      FieldName = 'Participante'
      Size = 10
    end
    object EstoqueTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object EstoqueCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object EstoqueIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object EstoqueEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
  end
  object dsEstoque: TDataSource
    DataSet = Estoque
    Left = 784
    Top = 272
  end
  object TempFichaInv: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TempFichaInv'
      
        '  (Registro, Item, Codigo, NCM, Descricao, UM, CFOP, Historico, ' +
        'Estoque, Emissor, Origem, Nota, Data, ES, Destinatario_Codigo, D' +
        'estinatario_Nome, Destinatario_CNPJ, Finalidade, Processo, Tipo_' +
        'Processo, Qtde_Entrada, Unitario_Entrada, Total_Entrada, Qtde_Sa' +
        'ida, Unitario_Saida, Total_Saida, Qtde_Saldo, Unitario_Saldo, To' +
        'tal_Saldo)'
      'VALUES'
      
        '  (:Registro, :Item, :Codigo, :NCM, :Descricao, :UM, :CFOP, :His' +
        'torico, :Estoque, :Emissor, :Origem, :Nota, :Data, :ES, :Destina' +
        'tario_Codigo, :Destinatario_Nome, :Destinatario_CNPJ, :Finalidad' +
        'e, :Processo, :Tipo_Processo, :Qtde_Entrada, :Unitario_Entrada, ' +
        ':Total_Entrada, :Qtde_Saida, :Unitario_Saida, :Total_Saida, :Qtd' +
        'e_Saldo, :Unitario_Saldo, :Total_Saldo)')
    SQLDelete.Strings = (
      'DELETE FROM TempFichaInv'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE TempFichaInv'
      'SET'
      
        '  Registro = :Registro, Item = :Item, Codigo = :Codigo, NCM = :N' +
        'CM, Descricao = :Descricao, UM = :UM, CFOP = :CFOP, Historico = ' +
        ':Historico, Estoque = :Estoque, Emissor = :Emissor, Origem = :Or' +
        'igem, Nota = :Nota, Data = :Data, ES = :ES, Destinatario_Codigo ' +
        '= :Destinatario_Codigo, Destinatario_Nome = :Destinatario_Nome, ' +
        'Destinatario_CNPJ = :Destinatario_CNPJ, Finalidade = :Finalidade' +
        ', Processo = :Processo, Tipo_Processo = :Tipo_Processo, Qtde_Ent' +
        'rada = :Qtde_Entrada, Unitario_Entrada = :Unitario_Entrada, Tota' +
        'l_Entrada = :Total_Entrada, Qtde_Saida = :Qtde_Saida, Unitario_S' +
        'aida = :Unitario_Saida, Total_Saida = :Total_Saida, Qtde_Saldo =' +
        ' :Qtde_Saldo, Unitario_Saldo = :Unitario_Saldo, Total_Saldo = :T' +
        'otal_Saldo'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT TempFichaInv.Registro, TempFichaInv.Item, TempFichaInv.Co' +
        'digo, TempFichaInv.NCM, TempFichaInv.Descricao, TempFichaInv.UM,' +
        ' TempFichaInv.CFOP, TempFichaInv.Historico, TempFichaInv.Estoque' +
        ', TempFichaInv.Emissor, TempFichaInv.Origem, TempFichaInv.Nota, ' +
        'TempFichaInv.Data, TempFichaInv.ES, TempFichaInv.Destinatario_Co' +
        'digo, TempFichaInv.Destinatario_Nome, TempFichaInv.Destinatario_' +
        'CNPJ, TempFichaInv.Finalidade, TempFichaInv.Processo, TempFichaI' +
        'nv.Tipo_Processo, TempFichaInv.Qtde_Entrada, TempFichaInv.Unitar' +
        'io_Entrada, TempFichaInv.Total_Entrada, TempFichaInv.Qtde_Saida,' +
        ' TempFichaInv.Unitario_Saida, TempFichaInv.Total_Saida, TempFich' +
        'aInv.Qtde_Saldo, TempFichaInv.Unitario_Saldo, TempFichaInv.Total' +
        '_Saldo FROM TempFichaInv'
      'WHERE TempFichaInv.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM TempFichaInv')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 890
    Top = 219
    object TempFichaInvRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object TempFichaInvItem: TLargeintField
      FieldName = 'Item'
    end
    object TempFichaInvCodigo: TLargeintField
      FieldName = 'Codigo'
    end
    object TempFichaInvNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object TempFichaInvDescricao: TStringField
      FieldName = 'Descricao'
      Size = 250
    end
    object TempFichaInvUM: TStringField
      FieldName = 'UM'
      Size = 3
    end
    object TempFichaInvCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object TempFichaInvHistorico: TStringField
      FieldName = 'Historico'
      Size = 40
    end
    object TempFichaInvEstoque: TStringField
      FieldName = 'Estoque'
      Size = 11
    end
    object TempFichaInvEmissor: TStringField
      FieldName = 'Emissor'
      Size = 1
    end
    object TempFichaInvOrigem: TStringField
      FieldName = 'Origem'
      Size = 3
    end
    object TempFichaInvNota: TIntegerField
      FieldName = 'Nota'
    end
    object TempFichaInvData: TDateTimeField
      FieldName = 'Data'
    end
    object TempFichaInvES: TStringField
      FieldName = 'ES'
      Size = 1
    end
    object TempFichaInvDestinatario_Codigo: TIntegerField
      FieldName = 'Destinatario_Codigo'
    end
    object TempFichaInvDestinatario_Nome: TStringField
      FieldName = 'Destinatario_Nome'
      Size = 60
    end
    object TempFichaInvDestinatario_CNPJ: TStringField
      FieldName = 'Destinatario_CNPJ'
      Size = 14
    end
    object TempFichaInvFinalidade: TIntegerField
      FieldName = 'Finalidade'
    end
    object TempFichaInvProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
    object TempFichaInvTipo_Processo: TSmallintField
      FieldName = 'Tipo_Processo'
    end
    object TempFichaInvQtde_Entrada: TFloatField
      FieldName = 'Qtde_Entrada'
    end
    object TempFichaInvUnitario_Entrada: TFloatField
      FieldName = 'Unitario_Entrada'
    end
    object TempFichaInvTotal_Entrada: TCurrencyField
      FieldName = 'Total_Entrada'
    end
    object TempFichaInvQtde_Saida: TFloatField
      FieldName = 'Qtde_Saida'
    end
    object TempFichaInvUnitario_Saida: TFloatField
      FieldName = 'Unitario_Saida'
    end
    object TempFichaInvTotal_Saida: TCurrencyField
      FieldName = 'Total_Saida'
    end
    object TempFichaInvQtde_Saldo: TFloatField
      FieldName = 'Qtde_Saldo'
    end
    object TempFichaInvUnitario_Saldo: TFloatField
      FieldName = 'Unitario_Saldo'
    end
    object TempFichaInvTotal_Saldo: TCurrencyField
      FieldName = 'Total_Saldo'
    end
  end
  object dsTempFichaInv: TDataSource
    DataSet = TempFichaInv
    Left = 890
    Top = 271
  end
  object TempFichaEst: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TempFichaEst'
      
        '  (Registro, Item, Codigo, Descricao, UM, CFOP, Historico, Estoq' +
        'ue, Emissor, Origem, Nota, Data, ES, Destinatario_Codigo, Destin' +
        'atario_Nome, Destinatario_CNPJ, Finalidade, Processo, Tipo_Proce' +
        'sso, Qtde_Entrada, Unitario_Entrada, Total_Entrada, Qtde_Saida, ' +
        'Unitario_Saida, Total_Saida, Qtde_Saldo, Unitario_Saldo, Total_S' +
        'aldo)'
      'VALUES'
      
        '  (:Registro, :Item, :Codigo, :Descricao, :UM, :CFOP, :Historico' +
        ', :Estoque, :Emissor, :Origem, :Nota, :Data, :ES, :Destinatario_' +
        'Codigo, :Destinatario_Nome, :Destinatario_CNPJ, :Finalidade, :Pr' +
        'ocesso, :Tipo_Processo, :Qtde_Entrada, :Unitario_Entrada, :Total' +
        '_Entrada, :Qtde_Saida, :Unitario_Saida, :Total_Saida, :Qtde_Sald' +
        'o, :Unitario_Saldo, :Total_Saldo)')
    SQLDelete.Strings = (
      'DELETE FROM TempFichaEst'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE TempFichaEst'
      'SET'
      
        '  Registro = :Registro, Item = :Item, Codigo = :Codigo, Descrica' +
        'o = :Descricao, UM = :UM, CFOP = :CFOP, Historico = :Historico, ' +
        'Estoque = :Estoque, Emissor = :Emissor, Origem = :Origem, Nota =' +
        ' :Nota, Data = :Data, ES = :ES, Destinatario_Codigo = :Destinata' +
        'rio_Codigo, Destinatario_Nome = :Destinatario_Nome, Destinatario' +
        '_CNPJ = :Destinatario_CNPJ, Finalidade = :Finalidade, Processo =' +
        ' :Processo, Tipo_Processo = :Tipo_Processo, Qtde_Entrada = :Qtde' +
        '_Entrada, Unitario_Entrada = :Unitario_Entrada, Total_Entrada = ' +
        ':Total_Entrada, Qtde_Saida = :Qtde_Saida, Unitario_Saida = :Unit' +
        'ario_Saida, Total_Saida = :Total_Saida, Qtde_Saldo = :Qtde_Saldo' +
        ', Unitario_Saldo = :Unitario_Saldo, Total_Saldo = :Total_Saldo'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT TempFichaEst.Registro, TempFichaEst.Item, TempFichaEst.Co' +
        'digo, TempFichaEst.Descricao, TempFichaEst.UM, TempFichaEst.CFOP' +
        ', TempFichaEst.Historico, TempFichaEst.Estoque, TempFichaEst.Emi' +
        'ssor, TempFichaEst.Origem, TempFichaEst.Nota, TempFichaEst.Data,' +
        ' TempFichaEst.ES, TempFichaEst.Destinatario_Codigo, TempFichaEst' +
        '.Destinatario_Nome, TempFichaEst.Destinatario_CNPJ, TempFichaEst' +
        '.Finalidade, TempFichaEst.Processo, TempFichaEst.Tipo_Processo, ' +
        'TempFichaEst.Qtde_Entrada, TempFichaEst.Unitario_Entrada, TempFi' +
        'chaEst.Total_Entrada, TempFichaEst.Qtde_Saida, TempFichaEst.Unit' +
        'ario_Saida, TempFichaEst.Total_Saida, TempFichaEst.Qtde_Saldo, T' +
        'empFichaEst.Unitario_Saldo, TempFichaEst.Total_Saldo FROM TempFi' +
        'chaEst'
      'WHERE TempFichaEst.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM TempFichaEst')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1006
    Top = 219
    object TempFichaEstRegistro: TLargeintField
      FieldName = 'Registro'
    end
    object TempFichaEstItem: TLargeintField
      FieldName = 'Item'
    end
    object TempFichaEstCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TempFichaEstDescricao: TStringField
      FieldName = 'Descricao'
      Size = 250
    end
    object TempFichaEstUM: TStringField
      FieldName = 'UM'
      Size = 3
    end
    object TempFichaEstCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object TempFichaEstHistorico: TStringField
      FieldName = 'Historico'
      Size = 40
    end
    object TempFichaEstEstoque: TStringField
      FieldName = 'Estoque'
      Size = 11
    end
    object TempFichaEstEmissor: TStringField
      FieldName = 'Emissor'
      Size = 1
    end
    object TempFichaEstOrigem: TStringField
      FieldName = 'Origem'
      Size = 3
    end
    object TempFichaEstNota: TIntegerField
      FieldName = 'Nota'
    end
    object TempFichaEstData: TDateTimeField
      FieldName = 'Data'
    end
    object TempFichaEstES: TStringField
      FieldName = 'ES'
      Size = 1
    end
    object TempFichaEstDestinatario_Codigo: TIntegerField
      FieldName = 'Destinatario_Codigo'
    end
    object TempFichaEstDestinatario_Nome: TStringField
      FieldName = 'Destinatario_Nome'
      Size = 60
    end
    object TempFichaEstDestinatario_CNPJ: TStringField
      FieldName = 'Destinatario_CNPJ'
      Size = 14
    end
    object TempFichaEstFinalidade: TIntegerField
      FieldName = 'Finalidade'
    end
    object TempFichaEstProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
    object TempFichaEstTipo_Processo: TSmallintField
      FieldName = 'Tipo_Processo'
    end
    object TempFichaEstQtde_Entrada: TFloatField
      FieldName = 'Qtde_Entrada'
    end
    object TempFichaEstUnitario_Entrada: TFloatField
      FieldName = 'Unitario_Entrada'
    end
    object TempFichaEstTotal_Entrada: TCurrencyField
      FieldName = 'Total_Entrada'
    end
    object TempFichaEstQtde_Saida: TFloatField
      FieldName = 'Qtde_Saida'
    end
    object TempFichaEstUnitario_Saida: TFloatField
      FieldName = 'Unitario_Saida'
    end
    object TempFichaEstTotal_Saida: TCurrencyField
      FieldName = 'Total_Saida'
    end
    object TempFichaEstQtde_Saldo: TFloatField
      FieldName = 'Qtde_Saldo'
    end
    object TempFichaEstUnitario_Saldo: TFloatField
      FieldName = 'Unitario_Saldo'
    end
    object TempFichaEstTotal_Saldo: TCurrencyField
      FieldName = 'Total_Saldo'
    end
  end
  object dsTempFichaEst: TDataSource
    DataSet = TempFichaEst
    Left = 1006
    Top = 271
  end
  object ProcessosREINF: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ProcessosREINF'
      
        '  (Registro, Data, Tipo, Processo, Autoria, Codigo_Servico, Data' +
        '_Inicial, Data_Final, UF_SecaoJud, Vara, Municipio)'
      'VALUES'
      
        '  (:Registro, :Data, :Tipo, :Processo, :Autoria, :Codigo_Servico' +
        ', :Data_Inicial, :Data_Final, :UF_SecaoJud, :Vara, :Municipio)')
    SQLDelete.Strings = (
      'DELETE FROM ProcessosREINF'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE ProcessosREINF'
      'SET'
      
        '  Registro = :Registro, Data = :Data, Tipo = :Tipo, Processo = :' +
        'Processo, Autoria = :Autoria, Codigo_Servico = :Codigo_Servico, ' +
        'Data_Inicial = :Data_Inicial, Data_Final = :Data_Final, UF_Secao' +
        'Jud = :UF_SecaoJud, Vara = :Vara, Municipio = :Municipio'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT ProcessosREINF.Registro, ProcessosREINF.Data, ProcessosRE' +
        'INF.Tipo, ProcessosREINF.Processo, ProcessosREINF.Autoria, Proce' +
        'ssosREINF.Codigo_Servico, ProcessosREINF.Data_Inicial, Processos' +
        'REINF.Data_Final, ProcessosREINF.UF_SecaoJud, ProcessosREINF.Var' +
        'a, ProcessosREINF.Municipio FROM ProcessosREINF'
      'WHERE ProcessosREINF.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ProcessosREINF')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1120
    Top = 219
    object ProcessosREINFRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object ProcessosREINFData: TDateTimeField
      FieldName = 'Data'
    end
    object ProcessosREINFTipo: TSmallintField
      FieldName = 'Tipo'
    end
    object ProcessosREINFProcesso: TStringField
      FieldName = 'Processo'
      Size = 21
    end
    object ProcessosREINFAutoria: TSmallintField
      FieldName = 'Autoria'
    end
    object ProcessosREINFCodigo_Servico: TStringField
      FieldName = 'Codigo_Servico'
      Size = 10
    end
    object ProcessosREINFData_Inicial: TStringField
      FieldName = 'Data_Inicial'
      Size = 7
    end
    object ProcessosREINFData_Final: TStringField
      FieldName = 'Data_Final'
      Size = 7
    end
    object ProcessosREINFUF_SecaoJud: TStringField
      FieldName = 'UF_SecaoJud'
      FixedChar = True
      Size = 2
    end
    object ProcessosREINFVara: TStringField
      FieldName = 'Vara'
      Size = 30
    end
    object ProcessosREINFMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 7
    end
  end
  object dsProcessosREINF: TDataSource
    DataSet = ProcessosREINF
    Left = 1120
    Top = 271
  end
  object ProcessosREINFItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ProcessosREINFItens'
      
        '  (Registro, Data_Decisao, Indicador_Suspensao, Codigo_Suspensao' +
        ', Indicativo_Deposito, PIS, COFINS, CSLL, IRPJ, Contrib_Prev, CP' +
        'RB, GILRAT, SENAR)'
      'VALUES'
      
        '  (:Registro, :Data_Decisao, :Indicador_Suspensao, :Codigo_Suspe' +
        'nsao, :Indicativo_Deposito, :PIS, :COFINS, :CSLL, :IRPJ, :Contri' +
        'b_Prev, :CPRB, :GILRAT, :SENAR)')
    SQLDelete.Strings = (
      'DELETE FROM ProcessosREINFItens'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE ProcessosREINFItens'
      'SET'
      
        '  Registro = :Registro, Data_Decisao = :Data_Decisao, Indicador_' +
        'Suspensao = :Indicador_Suspensao, Codigo_Suspensao = :Codigo_Sus' +
        'pensao, Indicativo_Deposito = :Indicativo_Deposito, PIS = :PIS, ' +
        'COFINS = :COFINS, CSLL = :CSLL, IRPJ = :IRPJ, Contrib_Prev = :Co' +
        'ntrib_Prev, CPRB = :CPRB, GILRAT = :GILRAT, SENAR = :SENAR'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT ProcessosREINFItens.Registro, ProcessosREINFItens.Data_De' +
        'cisao, ProcessosREINFItens.Indicador_Suspensao, ProcessosREINFIt' +
        'ens.Codigo_Suspensao, ProcessosREINFItens.Indicativo_Deposito, P' +
        'rocessosREINFItens.PIS, ProcessosREINFItens.COFINS, ProcessosREI' +
        'NFItens.CSLL, ProcessosREINFItens.IRPJ, ProcessosREINFItens.Cont' +
        'rib_Prev, ProcessosREINFItens.CPRB, ProcessosREINFItens.GILRAT, ' +
        'ProcessosREINFItens.SENAR FROM ProcessosREINFItens'
      'WHERE ProcessosREINFItens.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ProcessosREINFItens')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1240
    Top = 218
    object ProcessosREINFItensRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object ProcessosREINFItensData_Decisao: TDateTimeField
      FieldName = 'Data_Decisao'
    end
    object ProcessosREINFItensIndicador_Suspensao: TSmallintField
      FieldName = 'Indicador_Suspensao'
    end
    object ProcessosREINFItensCodigo_Suspensao: TStringField
      FieldName = 'Codigo_Suspensao'
      Size = 14
    end
    object ProcessosREINFItensIndicativo_Deposito: TStringField
      FieldName = 'Indicativo_Deposito'
      FixedChar = True
      Size = 1
    end
    object ProcessosREINFItensPIS: TBooleanField
      FieldName = 'PIS'
    end
    object ProcessosREINFItensCOFINS: TBooleanField
      FieldName = 'COFINS'
    end
    object ProcessosREINFItensCSLL: TBooleanField
      FieldName = 'CSLL'
    end
    object ProcessosREINFItensIRPJ: TBooleanField
      FieldName = 'IRPJ'
    end
    object ProcessosREINFItensContrib_Prev: TBooleanField
      FieldName = 'Contrib_Prev'
    end
    object ProcessosREINFItensCPRB: TBooleanField
      FieldName = 'CPRB'
    end
    object ProcessosREINFItensGILRAT: TBooleanField
      FieldName = 'GILRAT'
    end
    object ProcessosREINFItensSENAR: TBooleanField
      FieldName = 'SENAR'
    end
  end
  object dsProcessosREINFItens: TDataSource
    DataSet = ProcessosREINFItens
    Left = 1240
    Top = 270
  end
  object NotasItensNavios: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasItensNavios'
      
        '  (Registro, Nota, Data_Emissao, Saida_Entrada, Codigo_Mercadori' +
        'a, Item, Navio, Quantidade, Emissor, DI, Quantidade_Devol, Nota_' +
        'Referencia, Data_Referencia, BL, Armazem)'
      'VALUES'
      
        '  (:Registro, :Nota, :Data_Emissao, :Saida_Entrada, :Codigo_Merc' +
        'adoria, :Item, :Navio, :Quantidade, :Emissor, :DI, :Quantidade_D' +
        'evol, :Nota_Referencia, :Data_Referencia, :BL, :Armazem)')
    SQLDelete.Strings = (
      'DELETE FROM NotasItensNavios'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE NotasItensNavios'
      'SET'
      
        '  Registro = :Registro, Nota = :Nota, Data_Emissao = :Data_Emiss' +
        'ao, Saida_Entrada = :Saida_Entrada, Codigo_Mercadoria = :Codigo_' +
        'Mercadoria, Item = :Item, Navio = :Navio, Quantidade = :Quantida' +
        'de, Emissor = :Emissor, DI = :DI, Quantidade_Devol = :Quantidade' +
        '_Devol, Nota_Referencia = :Nota_Referencia, Data_Referencia = :D' +
        'ata_Referencia, BL = :BL, Armazem = :Armazem'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Nota, Data_Emissao, Saida_Entrada, Codigo_Merca' +
        'doria, Item, Navio, Quantidade, Emissor, DI, Quantidade_Devol, N' +
        'ota_Referencia, Data_Referencia, BL, Armazem FROM NotasItensNavi' +
        'os'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM NotasItensNavios'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM NotasItensNavios'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select * from NotasItensNavios')
    BeforePost = NotasItensNaviosBeforePost
    Left = 53
    Top = 325
    object NotasItensNaviosRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object NotasItensNaviosNota: TIntegerField
      FieldName = 'Nota'
      DisplayFormat = '000000000'
    end
    object NotasItensNaviosData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
    end
    object NotasItensNaviosItem: TSmallintField
      FieldName = 'Item'
    end
    object NotasItensNaviosCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
    end
    object NotasItensNaviosNavio: TSmallintField
      FieldName = 'Navio'
    end
    object NotasItensNaviosQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = '#,##0.000'
    end
    object NotasItensNaviosSaida_Entrada: TSmallintField
      FieldName = 'Saida_Entrada'
    end
    object NotasItensNaviosEmissor: TStringField
      FieldName = 'Emissor'
      FixedChar = True
      Size = 1
    end
    object NotasItensNaviosQuantidade_Devol: TFloatField
      FieldName = 'Quantidade_Devol'
      DisplayFormat = '#,##0.000'
    end
    object NotasItensNaviosNota_Referencia: TIntegerField
      FieldName = 'Nota_Referencia'
      DisplayFormat = '000000000'
    end
    object NotasItensNaviosData_Referencia: TDateTimeField
      FieldName = 'Data_Referencia'
    end
    object NotasItensNaviosBL: TStringField
      FieldName = 'BL'
      Size = 15
    end
    object NotasItensNaviosArmazem: TSmallintField
      FieldName = 'Armazem'
    end
    object NotasItensNaviosArmazem_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Armazem_Nome'
      LookupDataSet = Dados.Fornecedores
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Armazem'
      Size = 60
      Lookup = True
    end
    object NotasItensNaviosDI: TStringField
      FieldName = 'DI'
      EditMask = '##/#######-#;0'
      Size = 15
    end
  end
  object dsNotasItensNavios: TMSDataSource
    DataSet = NotasItensNavios
    Left = 53
    Top = 374
  end
  object DARFDUA: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DARFDUA'
      
        '  (Registro, Ano, Mes, Documento, Codigo_Imposto, Descricao_Impo' +
        'sto, Numero_Referencia, CNPJ, Filial, Empresa, Data_Vencimento, ' +
        'IE, Valor, Codigo_Barras)'
      'VALUES'
      
        '  (:Registro, :Ano, :Mes, :Documento, :Codigo_Imposto, :Descrica' +
        'o_Imposto, :Numero_Referencia, :CNPJ, :Filial, :Empresa, :Data_V' +
        'encimento, :IE, :Valor, :Codigo_Barras)')
    SQLDelete.Strings = (
      'DELETE FROM DARFDUA'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE DARFDUA'
      'SET'
      
        '  Registro = :Registro, Ano = :Ano, Mes = :Mes, Documento = :Doc' +
        'umento, Codigo_Imposto = :Codigo_Imposto, Descricao_Imposto = :D' +
        'escricao_Imposto, Numero_Referencia = :Numero_Referencia, CNPJ =' +
        ' :CNPJ, Filial = :Filial, Empresa = :Empresa, Data_Vencimento = ' +
        ':Data_Vencimento, IE = :IE, Valor = :Valor, Codigo_Barras = :Cod' +
        'igo_Barras'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Ano, Mes, Documento, Codigo_Imposto, Descricao_' +
        'Imposto, Numero_Referencia, CNPJ, Filial, Empresa, Data_Vencimen' +
        'to, IE, Valor, Codigo_Barras FROM DARFDUA'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM DARFDUA'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM DARFDUA'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select * from DARFDUA')
    Left = 148
    Top = 325
    object DARFDUARegistro: TIntegerField
      FieldName = 'Registro'
    end
    object DARFDUADocumento: TStringField
      FieldName = 'Documento'
      FixedChar = True
      Size = 4
    end
    object DARFDUANumero_Referencia: TStringField
      FieldName = 'Numero_Referencia'
      Size = 15
    end
    object DARFDUACNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object DARFDUAFilial: TSmallintField
      FieldName = 'Filial'
    end
    object DARFDUAEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 60
    end
    object DARFDUAData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object DARFDUAIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object DARFDUAValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.00'
    end
    object DARFDUAAno: TSmallintField
      FieldName = 'Ano'
    end
    object DARFDUAMes: TSmallintField
      FieldName = 'Mes'
    end
    object DARFDUACodigo_Imposto: TStringField
      FieldName = 'Codigo_Imposto'
      Size = 10
    end
    object DARFDUADescricao_Imposto: TStringField
      FieldName = 'Descricao_Imposto'
      Size = 6
    end
    object DARFDUACodigo_Barras: TStringField
      FieldName = 'Codigo_Barras'
      Size = 44
    end
  end
  object dsDARFDUA: TMSDataSource
    DataSet = DARFDUA
    Left = 149
    Top = 374
  end
  object AtributosNCM: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO AtributosNCM'
      
        '  (Codigo, Nome_Apresentacao, Nome_Atributo, Orientacao_Preenchi' +
        'mento, Tipo_SubDetalhe, Modalidade_Operacao, Multivalorado)'
      'VALUES'
      
        '  (:Codigo, :Nome_Apresentacao, :Nome_Atributo, :Orientacao_Pree' +
        'nchimento, :Tipo_SubDetalhe, :Modalidade_Operacao, :Multivalorad' +
        'o)')
    SQLDelete.Strings = (
      'DELETE FROM AtributosNCM'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE AtributosNCM'
      'SET'
      
        '  Codigo = :Codigo, Nome_Apresentacao = :Nome_Apresentacao, Nome' +
        '_Atributo = :Nome_Atributo, Orientacao_Preenchimento = :Orientac' +
        'ao_Preenchimento, Tipo_SubDetalhe = :Tipo_SubDetalhe, Modalidade' +
        '_Operacao = :Modalidade_Operacao, Multivalorado = :Multivalorado'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Codigo, Nome_Apresentacao, Nome_Atributo, Orientacao_Pree' +
        'nchimento, Tipo_SubDetalhe, Modalidade_Operacao, Multivalorado F' +
        'ROM AtributosNCM'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM AtributosNCM'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM AtributosNCM'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'select * from AtributosNCM')
    Left = 236
    Top = 325
    object AtributosNCMCodigo: TStringField
      FieldName = 'Codigo'
      Size = 25
    end
    object AtributosNCMNome_Apresentacao: TStringField
      FieldName = 'Nome_Apresentacao'
      Size = 40
    end
    object AtributosNCMNome_Atributo: TStringField
      FieldName = 'Nome_Atributo'
      Size = 200
    end
    object AtributosNCMOrientacao_Preenchimento: TStringField
      FieldName = 'Orientacao_Preenchimento'
      Size = 200
    end
    object AtributosNCMTipo_SubDetalhe: TStringField
      FieldName = 'Tipo_SubDetalhe'
    end
    object AtributosNCMModalidade_Operacao: TStringField
      FieldName = 'Modalidade_Operacao'
    end
    object AtributosNCMMultivalorado: TBooleanField
      FieldName = 'Multivalorado'
    end
  end
  object dsAtributosNCM: TMSDataSource
    DataSet = AtributosNCM
    Left = 236
    Top = 374
  end
  object DominiosAtt: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NCMAtributos'
      
        '  (Codigo, Nome_Atributo, Nome_Apresentacao, Modalidade_Operacao' +
        ', Multivalorado, Tipo_Subdetalhe)'
      'VALUES'
      
        '  (:Codigo, :Nome_Atributo, :Nome_Apresentacao, :Modalidade_Oper' +
        'acao, :Multivalorado, :Tipo_Subdetalhe)')
    SQLDelete.Strings = (
      'DELETE FROM NCMAtributos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE NCMAtributos'
      'SET'
      
        '  Codigo = :Codigo, Nome_Atributo = :Nome_Atributo, Nome_Apresen' +
        'tacao = :Nome_Apresentacao, Modalidade_Operacao = :Modalidade_Op' +
        'eracao, Multivalorado = :Multivalorado, Tipo_Subdetalhe = :Tipo_' +
        'Subdetalhe'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Codigo, Nome_Atributo, Nome_Apresentacao, Modalidade_Oper' +
        'acao, Multivalorado, Tipo_Subdetalhe FROM NCMAtributos'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM NCMAtributos'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM NCMAtributos'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'select * from DominiosATT')
    Left = 327
    Top = 325
    object DominiosAttAtributo: TStringField
      FieldName = 'Atributo'
    end
    object DominiosAttCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object DominiosAttDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object dsDominiosAtt: TMSDataSource
    DataSet = DominiosAtt
    Left = 328
    Top = 374
  end
  object NCMAtributos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NCMAtributos'
      '  (NCM, Atributo)'
      'VALUES'
      '  (:NCM, :Atributo)')
    SQLDelete.Strings = (
      'DELETE FROM NCMAtributos'
      'WHERE'
      '  NCM = :Old_NCM')
    SQLUpdate.Strings = (
      'UPDATE NCMAtributos'
      'SET'
      '  NCM = :NCM, Atributo = :Atributo'
      'WHERE'
      '  NCM = :Old_NCM')
    SQLRefresh.Strings = (
      'SELECT NCM, Atributo FROM NCMAtributos'
      'WHERE'
      '  NCM = :NCM')
    SQLLock.Strings = (
      'SELECT * FROM NCMAtributos'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  NCM = :Old_NCM')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM NCMAtributos'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select * from NCMAtributos')
    Left = 420
    Top = 325
    object NCMAtributosNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object NCMAtributosAtributo: TStringField
      FieldName = 'Atributo'
      Size = 25
    end
  end
  object dsNCMAtributos: TMSDataSource
    DataSet = NCMAtributos
    Left = 420
    Top = 374
  end
  object CreditoPresumido: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ICMSCredPres'
      
        '  (Registro, Beneficio, Codigo, Descricao, ICMS, Carga_Efetiva, ' +
        'Credito_Presumido)'
      'VALUES'
      
        '  (:Registro, :Beneficio, :Codigo, :Descricao, :ICMS, :Carga_Efe' +
        'tiva, :Credito_Presumido)')
    SQLDelete.Strings = (
      'DELETE FROM ICMSCredPres'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE ICMSCredPres'
      'SET'
      
        '  Registro = :Registro, Beneficio = :Beneficio, Codigo = :Codigo' +
        ', Descricao = :Descricao, ICMS = :ICMS, Carga_Efetiva = :Carga_E' +
        'fetiva, Credito_Presumido = :Credito_Presumido'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Beneficio, Codigo, Descricao, ICMS, Carga_Efeti' +
        'va, Credito_Presumido FROM ICMSCredPres'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM ICMSCredPres'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM ICMSCredPres'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'select * from ICMSCredPres')
    Left = 517
    Top = 324
    object CreditoPresumidoRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object CreditoPresumidoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object CreditoPresumidoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object CreditoPresumidoICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = ',#0.00%'
    end
    object CreditoPresumidoCarga_Efetiva: TFloatField
      FieldName = 'Carga_Efetiva'
      DisplayFormat = ',#0.00%'
    end
    object CreditoPresumidoCredito_Presumido: TFloatField
      FieldName = 'Credito_Presumido'
      DisplayFormat = ',#0.00%'
    end
    object CreditoPresumidoBeneficio: TStringField
      FieldName = 'Beneficio'
      Size = 15
    end
  end
  object dsCreditoPresumido: TMSDataSource
    DataSet = CreditoPresumido
    Left = 515
    Top = 374
  end
end
