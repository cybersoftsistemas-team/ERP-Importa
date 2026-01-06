object dmDespacho: TdmDespacho
  OldCreateOrder = False
  Height = 553
  Width = 883
  object PLI: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PLI'
      
        '  (Registro, Data, Numero, Aplicacao, Substituida, LI_Referencia' +
        ', Numero_PEXPAM, Empresa)'
      'VALUES'
      
        '  (:Registro, :Data, :Numero, :Aplicacao, :Substituida, :LI_Refe' +
        'rencia, :Numero_PEXPAM, :Empresa)')
    SQLDelete.Strings = (
      'DELETE FROM PLI'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE PLI'
      'SET'
      
        '  Registro = :Registro, Data = :Data, Numero = :Numero, Aplicaca' +
        'o = :Aplicacao, Substituida = :Substituida, LI_Referencia = :LI_' +
        'Referencia, Numero_PEXPAM = :Numero_PEXPAM, Empresa = :Empresa'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT PLI.Registro, PLI.Data, PLI.Numero, PLI.Aplicacao, PLI.Su' +
        'bstituida, PLI.LI_Referencia, PLI.Numero_PEXPAM, PLI.Empresa FRO' +
        'M PLI'
      'WHERE PLI.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM PLI'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 12
    Top = 18
    object PLIRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object PLIData: TDateTimeField
      FieldName = 'Data'
    end
    object PLINumero: TStringField
      FieldName = 'Numero'
      EditMask = '####/#####;0; '
      Size = 9
    end
    object PLIAplicacao: TSmallintField
      FieldName = 'Aplicacao'
    end
    object PLISubstituida: TBooleanField
      FieldName = 'Substituida'
    end
    object PLILI_Referencia: TStringField
      FieldName = 'LI_Referencia'
      Size = 9
    end
    object PLINumero_PEXPAM: TStringField
      FieldName = 'Numero_PEXPAM'
      Size = 10
    end
    object PLIEmpresa: TSmallintField
      FieldName = 'Empresa'
    end
  end
  object dsPLI: TDataSource
    DataSet = PLI
    Left = 12
    Top = 66
  end
  object PLIItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PLI'
      
        '  (Registro, Data, Numero, Aplicacao, Substituida, LI_Referencia' +
        ', Numero_PEXPAM, Empresa)'
      'VALUES'
      
        '  (:Registro, :Data, :Numero, :Aplicacao, :Substituida, :LI_Refe' +
        'rencia, :Numero_PEXPAM, :Empresa)')
    SQLDelete.Strings = (
      'DELETE FROM PLI'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE PLI'
      'SET'
      
        '  Registro = :Registro, Data = :Data, Numero = :Numero, Aplicaca' +
        'o = :Aplicacao, Substituida = :Substituida, LI_Referencia = :LI_' +
        'Referencia, Numero_PEXPAM = :Numero_PEXPAM, Empresa = :Empresa'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT PLI.Registro, PLI.Data, PLI.Numero, PLI.Aplicacao, PLI.Su' +
        'bstituida, PLI.LI_Referencia, PLI.Numero_PEXPAM, PLI.Empresa FRO' +
        'M PLI'
      'WHERE PLI.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM PLIItens'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 76
    Top = 18
    object IntegerField1: TIntegerField
      FieldName = 'Registro'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Data'
    end
    object StringField1: TStringField
      FieldName = 'Numero'
      EditMask = '####/#####;0; '
      Size = 9
    end
    object SmallintField1: TSmallintField
      FieldName = 'Aplicacao'
    end
    object BooleanField1: TBooleanField
      FieldName = 'Substituida'
    end
    object StringField2: TStringField
      FieldName = 'LI_Referencia'
      Size = 9
    end
    object StringField3: TStringField
      FieldName = 'Numero_PEXPAM'
      Size = 10
    end
    object SmallintField2: TSmallintField
      FieldName = 'Empresa'
    end
  end
  object dsPLIItens: TDataSource
    DataSet = PLIItens
    Left = 76
    Top = 66
  end
  object DI: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DI'
      
        '  (Registro, Situacao, Processo, Data, DI, Qtde_Adicao, Tipo_Dec' +
        'laracao, Motivo_Trans, Tipo_Importador, Modalidade_Despacho, FUN' +
        'DAP, URF_Entrega, URF_Despacho, Modalidade_Importacao, Consignat' +
        'ario, Pais_Procedencia, Via_Transporte, Multimodal, Numero_Veicu' +
        'lo, Nome_Veiculo, Agente_Transportador, Tipo_DocCarga, Numero_Do' +
        'cCarga, Numero_DocCargaMaster, Local_Embarque, Data_Embarque, Pe' +
        'so_Bruto, Peso_Liquido, Data_Chegada, Tipo_Manifesto, Numero_Man' +
        'ifesto, Recinto_Aduaneiro, Frete_PrePaid, Frete_Collect, Frete_R' +
        'eal, Moeda_Frete, Seguro_ME, Seguro_Real, Moeda_Seguro, Despesas' +
        '_ME, Moeda_Despesas, Despesas_Real, Total_MercadoriaME, Indicati' +
        'vo_Conhec, Origem_DI, Sequencia_Retificacao, Numero_Retificacao,' +
        ' Tipo_Pagamento, Banco, Volumes, Total_MercadoriaReal, Total_Acr' +
        'escimoReal, Fundamento_Legal, Motivo_AdmissaoTemp, Recinto_Aduan' +
        'eiroSetor, Tipo_Conhecimento, Documento_Chegada, Agente_Numero, ' +
        'Tipo_Embalagem, Volumes_Embalagem, Frete_TerritorioNac, Regime_T' +
        'ributacaoII, Moeda_FOB, Motivo_SitEspecial, Adquirente, Fatura_N' +
        'umero)'
      'VALUES'
      
        '  (:Registro, :Situacao, :Processo, :Data, :DI, :Qtde_Adicao, :T' +
        'ipo_Declaracao, :Motivo_Trans, :Tipo_Importador, :Modalidade_Des' +
        'pacho, :FUNDAP, :URF_Entrega, :URF_Despacho, :Modalidade_Importa' +
        'cao, :Consignatario, :Pais_Procedencia, :Via_Transporte, :Multim' +
        'odal, :Numero_Veiculo, :Nome_Veiculo, :Agente_Transportador, :Ti' +
        'po_DocCarga, :Numero_DocCarga, :Numero_DocCargaMaster, :Local_Em' +
        'barque, :Data_Embarque, :Peso_Bruto, :Peso_Liquido, :Data_Chegad' +
        'a, :Tipo_Manifesto, :Numero_Manifesto, :Recinto_Aduaneiro, :Fret' +
        'e_PrePaid, :Frete_Collect, :Frete_Real, :Moeda_Frete, :Seguro_ME' +
        ', :Seguro_Real, :Moeda_Seguro, :Despesas_ME, :Moeda_Despesas, :D' +
        'espesas_Real, :Total_MercadoriaME, :Indicativo_Conhec, :Origem_D' +
        'I, :Sequencia_Retificacao, :Numero_Retificacao, :Tipo_Pagamento,' +
        ' :Banco, :Volumes, :Total_MercadoriaReal, :Total_AcrescimoReal, ' +
        ':Fundamento_Legal, :Motivo_AdmissaoTemp, :Recinto_AduaneiroSetor' +
        ', :Tipo_Conhecimento, :Documento_Chegada, :Agente_Numero, :Tipo_' +
        'Embalagem, :Volumes_Embalagem, :Frete_TerritorioNac, :Regime_Tri' +
        'butacaoII, :Moeda_FOB, :Motivo_SitEspecial, :Adquirente, :Fatura' +
        '_Numero)')
    SQLDelete.Strings = (
      'DELETE FROM DI'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE DI'
      'SET'
      
        '  Registro = :Registro, Situacao = :Situacao, Processo = :Proces' +
        'so, Data = :Data, DI = :DI, Qtde_Adicao = :Qtde_Adicao, Tipo_Dec' +
        'laracao = :Tipo_Declaracao, Motivo_Trans = :Motivo_Trans, Tipo_I' +
        'mportador = :Tipo_Importador, Modalidade_Despacho = :Modalidade_' +
        'Despacho, FUNDAP = :FUNDAP, URF_Entrega = :URF_Entrega, URF_Desp' +
        'acho = :URF_Despacho, Modalidade_Importacao = :Modalidade_Import' +
        'acao, Consignatario = :Consignatario, Pais_Procedencia = :Pais_P' +
        'rocedencia, Via_Transporte = :Via_Transporte, Multimodal = :Mult' +
        'imodal, Numero_Veiculo = :Numero_Veiculo, Nome_Veiculo = :Nome_V' +
        'eiculo, Agente_Transportador = :Agente_Transportador, Tipo_DocCa' +
        'rga = :Tipo_DocCarga, Numero_DocCarga = :Numero_DocCarga, Numero' +
        '_DocCargaMaster = :Numero_DocCargaMaster, Local_Embarque = :Loca' +
        'l_Embarque, Data_Embarque = :Data_Embarque, Peso_Bruto = :Peso_B' +
        'ruto, Peso_Liquido = :Peso_Liquido, Data_Chegada = :Data_Chegada' +
        ', Tipo_Manifesto = :Tipo_Manifesto, Numero_Manifesto = :Numero_M' +
        'anifesto, Recinto_Aduaneiro = :Recinto_Aduaneiro, Frete_PrePaid ' +
        '= :Frete_PrePaid, Frete_Collect = :Frete_Collect, Frete_Real = :' +
        'Frete_Real, Moeda_Frete = :Moeda_Frete, Seguro_ME = :Seguro_ME, ' +
        'Seguro_Real = :Seguro_Real, Moeda_Seguro = :Moeda_Seguro, Despes' +
        'as_ME = :Despesas_ME, Moeda_Despesas = :Moeda_Despesas, Despesas' +
        '_Real = :Despesas_Real, Total_MercadoriaME = :Total_MercadoriaME' +
        ', Indicativo_Conhec = :Indicativo_Conhec, Origem_DI = :Origem_DI' +
        ', Sequencia_Retificacao = :Sequencia_Retificacao, Numero_Retific' +
        'acao = :Numero_Retificacao, Tipo_Pagamento = :Tipo_Pagamento, Ba' +
        'nco = :Banco, Volumes = :Volumes, Total_MercadoriaReal = :Total_' +
        'MercadoriaReal, Total_AcrescimoReal = :Total_AcrescimoReal, Fund' +
        'amento_Legal = :Fundamento_Legal, Motivo_AdmissaoTemp = :Motivo_' +
        'AdmissaoTemp, Recinto_AduaneiroSetor = :Recinto_AduaneiroSetor, ' +
        'Tipo_Conhecimento = :Tipo_Conhecimento, Documento_Chegada = :Doc' +
        'umento_Chegada, Agente_Numero = :Agente_Numero, Tipo_Embalagem =' +
        ' :Tipo_Embalagem, Volumes_Embalagem = :Volumes_Embalagem, Frete_' +
        'TerritorioNac = :Frete_TerritorioNac, Regime_TributacaoII = :Reg' +
        'ime_TributacaoII, Moeda_FOB = :Moeda_FOB, Motivo_SitEspecial = :' +
        'Motivo_SitEspecial, Adquirente = :Adquirente, Fatura_Numero = :F' +
        'atura_Numero'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Situacao, Processo, Data, DI, Qtde_Adicao, Tipo' +
        '_Declaracao, Motivo_Trans, Tipo_Importador, Modalidade_Despacho,' +
        ' FUNDAP, URF_Entrega, URF_Despacho, Modalidade_Importacao, Consi' +
        'gnatario, Pais_Procedencia, Via_Transporte, Multimodal, Numero_V' +
        'eiculo, Nome_Veiculo, Agente_Transportador, Tipo_DocCarga, Numer' +
        'o_DocCarga, Numero_DocCargaMaster, Local_Embarque, Data_Embarque' +
        ', Peso_Bruto, Peso_Liquido, Data_Chegada, Tipo_Manifesto, Numero' +
        '_Manifesto, Recinto_Aduaneiro, Frete_PrePaid, Frete_Collect, Fre' +
        'te_Real, Moeda_Frete, Seguro_ME, Seguro_Real, Moeda_Seguro, Desp' +
        'esas_ME, Moeda_Despesas, Despesas_Real, Total_MercadoriaME, Indi' +
        'cativo_Conhec, Origem_DI, Sequencia_Retificacao, Numero_Retifica' +
        'cao, Tipo_Pagamento, Banco, Volumes, Total_MercadoriaReal, Total' +
        '_AcrescimoReal, Fundamento_Legal, Motivo_AdmissaoTemp, Recinto_A' +
        'duaneiroSetor, Tipo_Conhecimento, Documento_Chegada, Agente_Nume' +
        'ro, Tipo_Embalagem, Volumes_Embalagem, Frete_TerritorioNac, Regi' +
        'me_TributacaoII, Moeda_FOB, Motivo_SitEspecial, Adquirente, Fatu' +
        'ra_Numero FROM DI'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM DI'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM DI'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM DI'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 165
    Top = 18
    object DIRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Cybersoft_ALEPH..DI.Registro'
    end
    object DISituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'Cybersoft_ALEPH..DI.Situacao'
      Size = 10
    end
    object DIProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Cybersoft_ALEPH..DI.Processo'
      Size = 15
    end
    object DIData: TDateTimeField
      FieldName = 'Data'
      Origin = 'Cybersoft_ALEPH..DI.Data'
    end
    object DIDI: TStringField
      FieldName = 'DI'
      Size = 15
    end
    object DIQtde_Adicao: TSmallintField
      FieldName = 'Qtde_Adicao'
      Origin = 'Cybersoft_ALEPH..DI.Qtde_Adicao'
    end
    object DITipo_Declaracao: TSmallintField
      FieldName = 'Tipo_Declaracao'
      Origin = 'Cybersoft_ALEPH..DI.Tipo_Declaracao'
    end
    object DIMotivo_Trans: TSmallintField
      FieldName = 'Motivo_Trans'
      Origin = 'Cybersoft_ALEPH..DI.Motivo_Trans'
    end
    object DITipo_Importador: TSmallintField
      FieldName = 'Tipo_Importador'
      Origin = 'Cybersoft_ALEPH..DI.Tipo_Importador'
    end
    object DIModalidade_Despacho: TSmallintField
      FieldName = 'Modalidade_Despacho'
      Origin = 'Cybersoft_ALEPH..DI.Modalidade_Despacho'
    end
    object DIFUNDAP: TBooleanField
      FieldName = 'FUNDAP'
      Origin = 'Cybersoft_ALEPH..DI.FUNDAP'
    end
    object DIURF_Entrega: TStringField
      FieldName = 'URF_Entrega'
      Origin = 'Cybersoft_ALEPH..DI.URF_Entrega'
      Size = 7
    end
    object DIURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Origin = 'Cybersoft_ALEPH..DI.URF_Despacho'
      Size = 7
    end
    object DIModalidade_Importacao: TSmallintField
      FieldName = 'Modalidade_Importacao'
      Origin = 'Cybersoft_ALEPH..DI.Modalidade_Importacao'
    end
    object DIConsignatario: TSmallintField
      FieldName = 'Consignatario'
      Origin = 'Cybersoft_ALEPH..DI.Consignatario'
    end
    object DIVia_Transporte: TSmallintField
      FieldName = 'Via_Transporte'
      Origin = 'Cybersoft_ALEPH..DI.Via_Transporte'
    end
    object DIMultimodal: TBooleanField
      FieldName = 'Multimodal'
      Origin = 'Cybersoft_ALEPH..DI.Multimodal'
    end
    object DINumero_Veiculo: TStringField
      FieldName = 'Numero_Veiculo'
      Origin = 'Cybersoft_ALEPH..DI.Numero_Veiculo'
      Size = 15
    end
    object DINome_Veiculo: TStringField
      FieldName = 'Nome_Veiculo'
      Origin = 'Cybersoft_ALEPH..DI.Nome_Veiculo'
      Size = 30
    end
    object DINumero_DocCarga: TStringField
      FieldName = 'Numero_DocCarga'
      Origin = 'Cybersoft_ALEPH..DI.Numero_DocCarga'
      Size = 18
    end
    object DINumero_DocCargaMaster: TStringField
      FieldName = 'Numero_DocCargaMaster'
      Origin = 'Cybersoft_ALEPH..DI.Numero_DocCargaMaster'
      Size = 18
    end
    object DILocal_Embarque: TStringField
      FieldName = 'Local_Embarque'
      Origin = 'Cybersoft_ALEPH..DI.Local_Embarque'
      Size = 50
    end
    object DIData_Embarque: TDateTimeField
      FieldName = 'Data_Embarque'
      Origin = 'Cybersoft_ALEPH..DI.Data_Embarque'
    end
    object DIPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Cybersoft_ALEPH..DI.Peso_Bruto'
      DisplayFormat = ',##0.000'
    end
    object DIPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Cybersoft_ALEPH..DI.Peso_Liquido'
      DisplayFormat = ',##0.000'
    end
    object DIData_Chegada: TDateTimeField
      FieldName = 'Data_Chegada'
      Origin = 'Cybersoft_ALEPH..DI.Data_Chegada'
    end
    object DITipo_Manifesto: TSmallintField
      FieldName = 'Tipo_Manifesto'
      Origin = 'Cybersoft_ALEPH..DI.Tipo_Manifesto'
    end
    object DINumero_Manifesto: TStringField
      FieldName = 'Numero_Manifesto'
      Origin = 'Cybersoft_ALEPH..DI.Numero_Manifesto'
      Size = 15
    end
    object DIRecinto_Aduaneiro: TStringField
      FieldName = 'Recinto_Aduaneiro'
      Origin = 'Cybersoft_ALEPH..DI.Recinto_Aduaneiro'
      Size = 7
    end
    object DIFrete_PrePaid: TCurrencyField
      FieldName = 'Frete_PrePaid'
      Origin = 'Cybersoft_ALEPH..DI.Frete_PrePaid'
      DisplayFormat = ',##0.00'
    end
    object DIFrete_Collect: TCurrencyField
      FieldName = 'Frete_Collect'
      Origin = 'Cybersoft_ALEPH..DI.Frete_Collect'
      DisplayFormat = ',##0.00'
    end
    object DIFrete_Real: TCurrencyField
      FieldName = 'Frete_Real'
      Origin = 'Cybersoft_ALEPH..DI.Frete_Real'
      DisplayFormat = ',##0.00'
    end
    object DIMoeda_Frete: TSmallintField
      FieldName = 'Moeda_Frete'
      Origin = 'Cybersoft_ALEPH..DI.Moeda_Frete'
    end
    object DISeguro_ME: TCurrencyField
      FieldName = 'Seguro_ME'
      Origin = 'Cybersoft_ALEPH..DI.Seguro_ME'
      DisplayFormat = ',##0.00'
    end
    object DISeguro_Real: TCurrencyField
      FieldName = 'Seguro_Real'
      Origin = 'Cybersoft_ALEPH..DI.Seguro_Real'
      DisplayFormat = ',##0.00'
    end
    object DIMoeda_Seguro: TSmallintField
      FieldName = 'Moeda_Seguro'
      Origin = 'Cybersoft_ALEPH..DI.Moeda_Seguro'
    end
    object DIDespesas_ME: TCurrencyField
      FieldName = 'Despesas_ME'
      Origin = 'Cybersoft_ALEPH..DI.Despesas_ME'
      DisplayFormat = ',##0.00'
    end
    object DIMoeda_Despesas: TSmallintField
      FieldName = 'Moeda_Despesas'
      Origin = 'Cybersoft_ALEPH..DI.Moeda_Despesas'
    end
    object DIDespesas_Real: TCurrencyField
      FieldName = 'Despesas_Real'
      Origin = 'Cybersoft_ALEPH..DI.Despesas_Real'
      DisplayFormat = ',##0.00'
    end
    object DITotal_MercadoriaME: TCurrencyField
      FieldName = 'Total_MercadoriaME'
      Origin = 'Cybersoft_ALEPH..DI.Total_MercadoriaME'
      DisplayFormat = ',##0.00'
    end
    object DIOrigem_DI: TSmallintField
      FieldName = 'Origem_DI'
      Origin = 'Cybersoft_ALEPH..DI.Origem_DI'
    end
    object DISequencia_Retificacao: TSmallintField
      FieldName = 'Sequencia_Retificacao'
      Origin = 'Cybersoft_ALEPH..DI.Sequencia_Retificacao'
    end
    object DINumero_Retificacao: TSmallintField
      FieldName = 'Numero_Retificacao'
      Origin = 'Cybersoft_ALEPH..DI.Numero_Retificacao'
    end
    object DITipo_Pagamento: TSmallintField
      FieldName = 'Tipo_Pagamento'
      Origin = 'Cybersoft_ALEPH..DI.Tipo_Pagamento'
    end
    object DIBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Cybersoft_ALEPH..DI.Banco'
    end
    object DIModalidade_Desc: TStringField
      FieldKind = fkLookup
      FieldName = 'Modalidade_Desc'
      LookupDataSet = Dados.TiposProcesso
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Modalidade_Importacao'
      Lookup = True
    end
    object DITipo_DeclaracaoDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo_DeclaracaoDesc'
      LookupDataSet = TiposDeclaracao
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Tipo_Declaracao'
      Size = 60
      Lookup = True
    end
    object DIPais_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais_Nome'
      LookupDataSet = Dados.Paises
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Pais_Procedencia'
      Size = 60
      Lookup = True
    end
    object DIIndicativo_Conhec: TSmallintField
      FieldName = 'Indicativo_Conhec'
    end
    object DIVolumes: TStringField
      FieldName = 'Volumes'
    end
    object DITotal_AcrescimoReal: TCurrencyField
      FieldName = 'Total_AcrescimoReal'
    end
    object DIFundamento_Legal: TSmallintField
      FieldName = 'Fundamento_Legal'
    end
    object DIMotivo_AdmissaoTemp: TSmallintField
      FieldName = 'Motivo_AdmissaoTemp'
    end
    object DIRecinto_AduaneiroSetor: TSmallintField
      FieldName = 'Recinto_AduaneiroSetor'
    end
    object DITipo_Conhecimento: TSmallintField
      FieldName = 'Tipo_Conhecimento'
    end
    object DIDocumento_Chegada: TStringField
      FieldName = 'Documento_Chegada'
      Size = 15
    end
    object DIAgente_Transportador: TStringField
      FieldName = 'Agente_Transportador'
      Size = 50
    end
    object DIAgente_Numero: TStringField
      FieldName = 'Agente_Numero'
    end
    object DITipo_Embalagem: TSmallintField
      FieldName = 'Tipo_Embalagem'
    end
    object DIVolumes_Embalagem: TSmallintField
      FieldName = 'Volumes_Embalagem'
    end
    object DIFrete_TerritorioNac: TCurrencyField
      FieldName = 'Frete_TerritorioNac'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object DITotal_MercadoriaReal: TCurrencyField
      FieldName = 'Total_MercadoriaReal'
    end
    object DIRegime_TributacaoII: TSmallintField
      FieldName = 'Regime_TributacaoII'
    end
    object DIMoeda_FOB: TSmallintField
      FieldName = 'Moeda_FOB'
    end
    object DITipo_DocCarga: TStringField
      FieldName = 'Tipo_DocCarga'
      Size = 10
    end
    object DIPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 4
    end
    object DIMotivo_SitEspecial: TStringField
      FieldName = 'Motivo_SitEspecial'
      Size = 16
    end
    object DIAdquirente: TSmallintField
      FieldName = 'Adquirente'
    end
    object DIFatura_Numero: TStringField
      FieldName = 'Fatura_Numero'
      Size = 40
    end
  end
  object dsDI: TDataSource
    DataSet = DI
    Left = 164
    Top = 66
  end
  object OrgaosSRF: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO OrgaosSRF'
      '  (Codigo, Orgao, Recinto, Setor, Descricao)'
      'VALUES'
      '  (:Codigo, :Orgao, :Recinto, :Setor, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM OrgaosSRF'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE OrgaosSRF'
      'SET'
      
        '  Codigo = :Codigo, Orgao = :Orgao, Recinto = :Recinto, Setor = ' +
        ':Setor, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT OrgaosSRF.Codigo, OrgaosSRF.Orgao, OrgaosSRF.Recinto, Org' +
        'aosSRF.Setor, OrgaosSRF.Descricao FROM OrgaosSRF'
      'WHERE OrgaosSRF.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM OrgaosSRF'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 252
    Top = 18
    object OrgaosSRFCodigo: TSmallintField
      DisplayWidth = 6
      FieldName = 'Codigo'
      Origin = 'OrgaosSRF.Codigo'
    end
    object OrgaosSRFOrgao: TStringField
      FieldName = 'Orgao'
      Origin = 'OrgaosSRF.Orgao'
      Size = 7
    end
    object OrgaosSRFRecinto: TStringField
      FieldName = 'Recinto'
      Origin = 'OrgaosSRF.Recinto'
      Size = 7
    end
    object OrgaosSRFSetor: TStringField
      FieldName = 'Setor'
      Origin = 'OrgaosSRF.Setor'
      Size = 3
    end
    object OrgaosSRFDescricao: TStringField
      DisplayWidth = 22
      FieldName = 'Descricao'
      Origin = 'OrgaosSRF.Descricao'
      Size = 60
    end
  end
  object dsOrgaosSRF: TDataSource
    DataSet = OrgaosSRF
    Left = 252
    Top = 66
  end
  object RecintosAduaneiros: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO RecintosAduaneiros'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM RecintosAduaneiros'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE RecintosAduaneiros'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM RecintosAduaneiros'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM RecintosAduaneiros'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM RecintosAduaneiros'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM RecintosAduaneiros'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 348
    Top = 18
    object RecintosAduaneirosCodigo: TIntegerField
      DisplayWidth = 8
      FieldName = 'Codigo'
    end
    object RecintosAduaneirosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object dsRecintosAduaneiros: TDataSource
    DataSet = RecintosAduaneiros
    Left = 348
    Top = 66
  end
  object TiposDeclaracao: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TiposDeclaracao'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM TiposDeclaracao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE TiposDeclaracao'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT TiposDeclaracao.Codigo, TiposDeclaracao.Descricao FROM Ti' +
        'posDeclaracao'
      'WHERE TiposDeclaracao.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM TiposDeclaracao'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 454
    Top = 18
    object TiposDeclaracaoCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'TiposDeclaracao.Codigo'
    end
    object TiposDeclaracaoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'TiposDeclaracao.Descricao'
      Size = 60
    end
  end
  object dsTiposDeclaracao: TDataSource
    DataSet = TiposDeclaracao
    Left = 454
    Top = 66
  end
  object PO: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PO'
      
        '  (Registro, Numero, Processo, Data, Requisitante, Via_Transport' +
        'e, Local_Embarque, Local_Entrega, INCOTERMS, Condicao_Cambial, M' +
        'oeda, Observacao, Empresa, Pais_Origem, Modalidade_Importacao, E' +
        'xportador, Responsavel, Cliente, Tipo_Mercadoria)'
      'VALUES'
      
        '  (:Registro, :Numero, :Processo, :Data, :Requisitante, :Via_Tra' +
        'nsporte, :Local_Embarque, :Local_Entrega, :INCOTERMS, :Condicao_' +
        'Cambial, :Moeda, :Observacao, :Empresa, :Pais_Origem, :Modalidad' +
        'e_Importacao, :Exportador, :Responsavel, :Cliente, :Tipo_Mercado' +
        'ria)')
    SQLDelete.Strings = (
      'DELETE FROM PO'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE PO'
      'SET'
      
        '  Registro = :Registro, Numero = :Numero, Processo = :Processo, ' +
        'Data = :Data, Requisitante = :Requisitante, Via_Transporte = :Vi' +
        'a_Transporte, Local_Embarque = :Local_Embarque, Local_Entrega = ' +
        ':Local_Entrega, INCOTERMS = :INCOTERMS, Condicao_Cambial = :Cond' +
        'icao_Cambial, Moeda = :Moeda, Observacao = :Observacao, Empresa ' +
        '= :Empresa, Pais_Origem = :Pais_Origem, Modalidade_Importacao = ' +
        ':Modalidade_Importacao, Exportador = :Exportador, Responsavel = ' +
        ':Responsavel, Cliente = :Cliente, Tipo_Mercadoria = :Tipo_Mercad' +
        'oria'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Numero, Processo, Data, Requisitante, Via_Trans' +
        'porte, Local_Embarque, Local_Entrega, INCOTERMS, Condicao_Cambia' +
        'l, Moeda, Observacao, Empresa, Pais_Origem, Modalidade_Importaca' +
        'o, Exportador, Responsavel, Cliente, Tipo_Mercadoria FROM PO'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM PO'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM PO'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      'FROM  PO')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 565
    Top = 18
    object PORegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'PO.Registro'
    end
    object PONumero: TStringField
      FieldName = 'Numero'
      Origin = 'PO.Numero'
      Size = 15
    end
    object POProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'PO.Processo'
      Size = 15
    end
    object POData: TDateTimeField
      FieldName = 'Data'
      Origin = 'PO.Data'
    end
    object POExportador: TSmallintField
      FieldName = 'Exportador'
      Origin = 'PO.Exportador'
    end
    object PORequisitante: TStringField
      FieldName = 'Requisitante'
      Origin = 'PO.Requisitante'
      Size = 60
    end
    object POVia_Transporte: TSmallintField
      FieldName = 'Via_Transporte'
      Origin = 'PO.Via_Transporte'
    end
    object POLocal_Embarque: TStringField
      FieldName = 'Local_Embarque'
      Origin = 'PO.Local_Embarque'
      Size = 50
    end
    object POLocal_Entrega: TStringField
      FieldName = 'Local_Entrega'
      Origin = 'PO.Local_Entrega'
      Size = 50
    end
    object POINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      Origin = 'PO.INCOTERMS'
      FixedChar = True
      Size = 3
    end
    object POCondicao_Cambial: TSmallintField
      FieldName = 'Condicao_Cambial'
      Origin = 'PO.Condicao_Cambial'
    end
    object POMoeda: TSmallintField
      FieldName = 'Moeda'
      Origin = 'PO.Moeda'
    end
    object POObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'PO.Observacao'
      BlobType = ftMemo
    end
    object POEmpresa: TSmallintField
      FieldName = 'Empresa'
      Origin = 'PO.Empresa'
    end
    object POPais_Origem: TStringField
      FieldName = 'Pais_Origem'
      Origin = 'PO.Pais_Origem'
      Size = 4
    end
    object POModalidade_Importacao: TSmallintField
      FieldName = 'Modalidade_Importacao'
      Origin = 'PO.Modalidade_Importacao'
    end
    object POResponsavel: TStringField
      FieldName = 'Responsavel'
      Origin = 'PO.Responsavel'
      Size = 15
    end
    object POCliente: TSmallintField
      FieldName = 'Cliente'
      Origin = 'PO.Cliente'
    end
    object POTipo_Mercadoria: TSmallintField
      FieldName = 'Tipo_Mercadoria'
      Origin = 'PO.Tipo_Mercadoria'
    end
    object POExportador_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Exportador_Nome'
      LookupDataSet = Dados.Fornecedores
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Exportador'
      Size = 60
      Lookup = True
    end
  end
  object dsPO: TDataSource
    DataSet = PO
    Left = 565
    Top = 66
  end
  object SLI: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SLI'
      
        '  (Registro, Numero, Processo, Invoice, Pais_Procedencia, URF_De' +
        'spacho, URF_Entrada, Inf_Complem, Tipo_Fornecedor, Exportador, C' +
        'ondicao_Mercadoria, Moeda, INCOTERMS, NCM, Processo_Anuente, Org' +
        'ao_Anuente, DrawBack, Regime_Tributacao, Fundamento_Legal, Acord' +
        'o_Tarifario, Cobertura_Cambial, Modalidade_Pgto, Dias_LimitePgto' +
        ', Financiadora, Motivo_ImpCambial)'
      'VALUES'
      
        '  (:Registro, :Numero, :Processo, :Invoice, :Pais_Procedencia, :' +
        'URF_Despacho, :URF_Entrada, :Inf_Complem, :Tipo_Fornecedor, :Exp' +
        'ortador, :Condicao_Mercadoria, :Moeda, :INCOTERMS, :NCM, :Proces' +
        'so_Anuente, :Orgao_Anuente, :DrawBack, :Regime_Tributacao, :Fund' +
        'amento_Legal, :Acordo_Tarifario, :Cobertura_Cambial, :Modalidade' +
        '_Pgto, :Dias_LimitePgto, :Financiadora, :Motivo_ImpCambial)')
    SQLDelete.Strings = (
      'DELETE FROM SLI'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE SLI'
      'SET'
      
        '  Registro = :Registro, Numero = :Numero, Processo = :Processo, ' +
        'Invoice = :Invoice, Pais_Procedencia = :Pais_Procedencia, URF_De' +
        'spacho = :URF_Despacho, URF_Entrada = :URF_Entrada, Inf_Complem ' +
        '= :Inf_Complem, Tipo_Fornecedor = :Tipo_Fornecedor, Exportador =' +
        ' :Exportador, Condicao_Mercadoria = :Condicao_Mercadoria, Moeda ' +
        '= :Moeda, INCOTERMS = :INCOTERMS, NCM = :NCM, Processo_Anuente =' +
        ' :Processo_Anuente, Orgao_Anuente = :Orgao_Anuente, DrawBack = :' +
        'DrawBack, Regime_Tributacao = :Regime_Tributacao, Fundamento_Leg' +
        'al = :Fundamento_Legal, Acordo_Tarifario = :Acordo_Tarifario, Co' +
        'bertura_Cambial = :Cobertura_Cambial, Modalidade_Pgto = :Modalid' +
        'ade_Pgto, Dias_LimitePgto = :Dias_LimitePgto, Financiadora = :Fi' +
        'nanciadora, Motivo_ImpCambial = :Motivo_ImpCambial'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT SLI.Registro, SLI.Numero, SLI.Processo, SLI.Invoice, SLI.' +
        'Pais_Procedencia, SLI.URF_Despacho, SLI.URF_Entrada, SLI.Inf_Com' +
        'plem, SLI.Tipo_Fornecedor, SLI.Exportador, SLI.Condicao_Mercador' +
        'ia, SLI.Moeda, SLI.INCOTERMS, SLI.NCM, SLI.Processo_Anuente, SLI' +
        '.Orgao_Anuente, SLI.DrawBack, SLI.Regime_Tributacao, SLI.Fundame' +
        'nto_Legal, SLI.Acordo_Tarifario, SLI.Cobertura_Cambial, SLI.Moda' +
        'lidade_Pgto, SLI.Dias_LimitePgto, SLI.Financiadora, SLI.Motivo_I' +
        'mpCambial FROM SLI'
      'WHERE SLI.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      'FROM SLI'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 76
    Top = 114
    object SLIRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'SLI.Registro'
      DisplayFormat = '000000'
    end
    object SLINumero: TStringField
      FieldName = 'Numero'
      Origin = 'SLI.Numero'
      Size = 10
    end
    object SLIProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'SLI.Processo'
      Size = 15
    end
    object SLIInvoice: TStringField
      FieldName = 'Invoice'
      Origin = 'SLI.Invoice'
      Size = 15
    end
    object SLIPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Origin = 'SLI.Pais_Procedencia'
      Size = 4
    end
    object SLIURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Origin = 'SLI.URF_Despacho'
      Size = 7
    end
    object SLIURF_Entrada: TStringField
      FieldName = 'URF_Entrada'
      Origin = 'SLI.URF_Entrada'
      Size = 7
    end
    object SLIInf_Complem: TMemoField
      FieldName = 'Inf_Complem'
      Origin = 'SLI.Inf_Complem'
      BlobType = ftMemo
    end
    object SLITipo_Fornecedor: TSmallintField
      FieldName = 'Tipo_Fornecedor'
      Origin = 'SLI.Tipo_Fornecedor'
    end
    object SLIExportador: TSmallintField
      FieldName = 'Exportador'
      Origin = 'SLI.Exportador'
    end
    object SLICondicao_Mercadoria: TSmallintField
      FieldName = 'Condicao_Mercadoria'
      Origin = 'SLI.Condicao_Mercadoria'
    end
    object SLIMoeda: TSmallintField
      FieldName = 'Moeda'
      Origin = 'SLI.Moeda'
    end
    object SLIINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      Origin = 'SLI.INCOTERMS'
      FixedChar = True
      Size = 3
    end
    object SLINCM: TStringField
      DisplayWidth = 4
      FieldName = 'NCM'
      Origin = 'SLI.NCM'
      Size = 8
    end
    object SLIProcesso_Anuente: TStringField
      FieldName = 'Processo_Anuente'
      Origin = 'SLI.Processo_Anuente'
      Size = 15
    end
    object SLIOrgao_Anuente: TStringField
      FieldName = 'Orgao_Anuente'
      Origin = 'SLI.Orgao_Anuente'
      Size = 6
    end
    object SLIDrawBack: TSmallintField
      FieldName = 'DrawBack'
      Origin = 'SLI.DrawBack'
    end
    object SLIRegime_Tributacao: TSmallintField
      FieldName = 'Regime_Tributacao'
      Origin = 'SLI.Regime_Tributacao'
    end
    object SLIFundamento_Legal: TSmallintField
      FieldName = 'Fundamento_Legal'
      Origin = 'SLI.Fundamento_Legal'
    end
    object SLIAcordo_Tarifario: TStringField
      FieldName = 'Acordo_Tarifario'
      Origin = 'SLI.Acordo_Tarifario'
      Size = 5
    end
    object SLICobertura_Cambial: TSmallintField
      FieldName = 'Cobertura_Cambial'
      Origin = 'SLI.Cobertura_Cambial'
    end
    object SLIModalidade_Pgto: TSmallintField
      FieldName = 'Modalidade_Pgto'
      Origin = 'SLI.Modalidade_Pgto'
    end
    object SLIDias_LimitePgto: TSmallintField
      FieldName = 'Dias_LimitePgto'
      Origin = 'SLI.Dias_LimitePgto'
    end
    object SLIFinanciadora: TSmallintField
      FieldName = 'Financiadora'
      Origin = 'SLI.Financiadora'
    end
    object SLIMotivo_ImpCambial: TSmallintField
      FieldName = 'Motivo_ImpCambial'
      Origin = 'SLI.Motivo_ImpCambial'
    end
    object SLIFornecedor_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Exportador_Nome'
      LookupDataSet = Dados.Fornecedores
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Exportador'
      Size = 60
      Lookup = True
    end
  end
  object dsSLI: TDataSource
    DataSet = SLI
    Left = 76
    Top = 161
  end
  object UnidadesRFB: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM UnidadesRFB'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 252
    Top = 114
    object UnidadesRFBCodigo: TStringField
      DisplayWidth = 6
      FieldName = 'Codigo'
      Origin = 'UnidadesRFB.Codigo'
      Size = 7
    end
    object UnidadesRFBDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'UnidadesRFB.Descricao'
      Size = 80
    end
  end
  object dsUnidadesRFB: TDataSource
    DataSet = UnidadesRFB
    Left = 253
    Top = 161
  end
  object OrgaosAnuentes: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO OrgaosAnuentes'
      '  (Codigo, Nome, CNPJ)'
      'VALUES'
      '  (:Codigo, :Nome, :CNPJ)')
    SQLDelete.Strings = (
      'DELETE FROM OrgaosAnuentes'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE OrgaosAnuentes'
      'SET'
      '  Codigo = :Codigo, Nome = :Nome, CNPJ = :CNPJ'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Nome, CNPJ FROM OrgaosAnuentes'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM OrgaosAnuentes'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM OrgaosAnuentes'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM   OrgaosAnuentes'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 348
    Top = 114
    object OrgaosAnuentesCodigo: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object OrgaosAnuentesNome: TStringField
      FieldName = 'Nome'
      Size = 90
    end
    object OrgaosAnuentesCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object dsOrgaosAnuentes: TDataSource
    DataSet = OrgaosAnuentes
    Left = 348
    Top = 161
  end
  object RegimeTributacao: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO RegimeTributacao'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM RegimeTributacao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE RegimeTributacao'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT RegimeTributacao.Codigo, RegimeTributacao.Descricao FROM ' +
        'RegimeTributacao'
      'WHERE RegimeTributacao.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM   RegimeTributacao'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 454
    Top = 114
    object RegimeTributacaoCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object RegimeTributacaoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 35
    end
  end
  object dsRegimeTributacao: TDataSource
    DataSet = RegimeTributacao
    Left = 453
    Top = 161
  end
  object ModalidadesRFB: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ModalidadesRFB'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM ModalidadesRFB'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE ModalidadesRFB'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT ModalidadesRFB.Codigo, ModalidadesRFB.Descricao FROM Moda' +
        'lidadesRFB'
      'WHERE ModalidadesRFB.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM  ModalidadesRFB'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 566
    Top = 114
    object ModalidadesRFBCodigo: TSmallintField
      DisplayWidth = 5
      FieldName = 'Codigo'
    end
    object ModalidadesRFBDescricao: TStringField
      FieldName = 'Descricao'
      Size = 90
    end
  end
  object dsModalidadesRFB: TDataSource
    DataSet = ModalidadesRFB
    Left = 564
    Top = 161
  end
  object Financiadora: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ModalidadesRFB'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM ModalidadesRFB'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE ModalidadesRFB'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT ModalidadesRFB.Codigo, ModalidadesRFB.Descricao FROM Moda' +
        'lidadesRFB'
      'WHERE ModalidadesRFB.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM Financiadora'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 164
    Top = 218
    object FinanciadoraCodigo: TSmallintField
      DisplayWidth = 5
      FieldName = 'Codigo'
    end
    object FinanciadoraDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object dsFinanciadora: TDataSource
    DataSet = Financiadora
    Left = 164
    Top = 265
  end
  object MotivoCambial: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO MotivoCambial'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM MotivoCambial'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE MotivoCambial'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT MotivoCambial.Codigo, MotivoCambial.Descricao FROM Motivo' +
        'Cambial'
      'WHERE MotivoCambial.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM MotivoCambial'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 76
    Top = 218
    object MotivoCambialCodigo: TSmallintField
      DisplayWidth = 5
      FieldName = 'Codigo'
    end
    object MotivoCambialDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object dsMotivoCambial: TDataSource
    DataSet = MotivoCambial
    Left = 76
    Top = 265
  end
  object SLIItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SLIItens'
      
        '  (Registro, LI, Codigo_Mercadoria, Peso_Liquido, Qtde_UnidadeCo' +
        'm, Qtde_MedidaEst, Valor_LocEmbarque, Valor_CondVenda, Item, NCM' +
        ', SLI)'
      'VALUES'
      
        '  (:Registro, :LI, :Codigo_Mercadoria, :Peso_Liquido, :Qtde_Unid' +
        'adeCom, :Qtde_MedidaEst, :Valor_LocEmbarque, :Valor_CondVenda, :' +
        'Item, :NCM, :SLI)')
    SQLDelete.Strings = (
      'DELETE FROM SLIItens'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE SLIItens'
      'SET'
      
        '  Registro = :Registro, LI = :LI, Codigo_Mercadoria = :Codigo_Me' +
        'rcadoria, Peso_Liquido = :Peso_Liquido, Qtde_UnidadeCom = :Qtde_' +
        'UnidadeCom, Qtde_MedidaEst = :Qtde_MedidaEst, Valor_LocEmbarque ' +
        '= :Valor_LocEmbarque, Valor_CondVenda = :Valor_CondVenda, Item =' +
        ' :Item, NCM = :NCM, SLI = :SLI'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT SLIItens.Registro, SLIItens.LI, SLIItens.Codigo_Mercadori' +
        'a, SLIItens.Peso_Liquido, SLIItens.Qtde_UnidadeCom, SLIItens.Qtd' +
        'e_MedidaEst, SLIItens.Valor_LocEmbarque, SLIItens.Valor_CondVend' +
        'a, SLIItens.Item, SLIItens.NCM, SLIItens.SLI FROM SLIItens'
      'WHERE SLIItens.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      'FROM SLIItens'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 164
    Top = 114
    object SLIItensRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'SLIItens.Registro'
    end
    object SLIItensLI: TStringField
      FieldName = 'LI'
      Origin = 'SLIItens.LI'
      Size = 10
    end
    object SLIItensCodigo_Mercadoria: TIntegerField
      DisplayWidth = 5
      FieldName = 'Codigo_Mercadoria'
      Origin = 'SLIItens.Codigo_Mercadoria'
    end
    object SLIItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'SLIItens.Peso_Liquido'
      DisplayFormat = ',##0.000'
    end
    object SLIItensQtde_UnidadeCom: TFloatField
      FieldName = 'Qtde_UnidadeCom'
      Origin = 'SLIItens.Qtde_UnidadeCom'
      DisplayFormat = ',##0.000'
    end
    object SLIItensQtde_MedidaEst: TFloatField
      FieldName = 'Qtde_MedidaEst'
      Origin = 'SLIItens.Qtde_MedidaEst'
      DisplayFormat = ',##0.000'
    end
    object SLIItensValor_LocEmbarque: TCurrencyField
      FieldName = 'Valor_LocEmbarque'
      Origin = 'SLIItens.Valor_LocEmbarque'
      DisplayFormat = ',##0.00'
    end
    object SLIItensValor_CondVenda: TCurrencyField
      FieldName = 'Valor_CondVenda'
      Origin = 'SLIItens.Valor_CondVenda'
      DisplayFormat = ',##0.00'
    end
    object SLIItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'SLIItens.Item'
      DisplayFormat = '00'
    end
    object SLIItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'SLIItens.NCM'
      Size = 8
    end
    object SLIItensSLI: TIntegerField
      FieldName = 'SLI'
      Origin = 'SLIItens.SLI'
    end
    object SLIItensDescricao: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = Dados.Produtos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Mercadoria'
      Size = 200
      Lookup = True
    end
  end
  object dsSLIItens: TDataSource
    DataSet = SLIItens
    Left = 166
    Top = 161
  end
  object ViaTransporte: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ViaTransporte'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM ViaTransporte'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE ViaTransporte'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT ViaTransporte.Codigo, ViaTransporte.Descricao FROM ViaTra' +
        'nsporte'
      'WHERE ViaTransporte.Codigo = :Codigo ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM ViaTransporte'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 252
    Top = 218
    object ViaTransporteCodigo: TSmallintField
      DisplayWidth = 2
      FieldName = 'Codigo'
    end
    object ViaTransporteDescricao: TStringField
      DisplayWidth = 25
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object dsViaTransporte: TDataSource
    DataSet = ViaTransporte
    Left = 252
    Top = 265
  end
  object AnuenteImp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO OrgaoAnuenteImp'
      '  (Codigo, Abrev, Nome)'
      'VALUES'
      '  (:Codigo, :Abrev, :Nome)')
    SQLDelete.Strings = (
      'DELETE FROM OrgaoAnuenteImp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE OrgaoAnuenteImp'
      'SET'
      '  Codigo = :Codigo, Abrev = :Abrev, Nome = :Nome'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Abrev, Nome FROM OrgaoAnuenteImp'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM OrgaoAnuenteImp'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM OrgaoAnuenteImp'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM   OrgaoAnuenteImp'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 348
    Top = 218
    object AnuenteImpCodigo: TSmallintField
      FieldName = 'Codigo'
    end
    object AnuenteImpAbrev: TStringField
      FieldName = 'Abrev'
      Size = 10
    end
    object AnuenteImpNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
  end
  object dsAnuenteImp: TDataSource
    DataSet = AnuenteImp
    Left = 348
    Top = 265
  end
  object AnuenteExp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO OrgaoAnuenteExp'
      '  (Codigo, Abrev, Nome)'
      'VALUES'
      '  (:Codigo, :Abrev, :Nome)')
    SQLDelete.Strings = (
      'DELETE FROM OrgaoAnuenteExp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE OrgaoAnuenteExp'
      'SET'
      '  Codigo = :Codigo, Abrev = :Abrev, Nome = :Nome'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Abrev, Nome FROM OrgaoAnuenteExp'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM OrgaoAnuenteExp'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM OrgaoAnuenteExp'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM   OrgaoAnuenteExp'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 454
    Top = 218
    object AnuenteExpCodigo: TSmallintField
      FieldName = 'Codigo'
    end
    object AnuenteExpAbrev: TStringField
      FieldName = 'Abrev'
      Size = 10
    end
    object AnuenteExpNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
  end
  object dsAnuenteExp: TDataSource
    DataSet = AnuenteExp
    Left = 454
    Top = 265
  end
  object ViaEspecialTransp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ViaEspecialTransp'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM ViaEspecialTransp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE ViaEspecialTransp'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM ViaEspecialTransp'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM ViaEspecialTransp'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM ViaEspecialTransp'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'select * from ViaEspecialTransp')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    BeforePost = POItensBeforePost
    OnCalcFields = POItensCalcFields
    Left = 677
    Top = 218
    object ViaEspecialTranspCodigo: TSmallintField
      FieldName = 'Codigo'
    end
    object ViaEspecialTranspDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
  end
  object dsViaEspecialTransp: TDataSource
    DataSet = ViaEspecialTransp
    Left = 677
    Top = 265
  end
  object EnquadramentoOper: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO EnquadramentoOperacao'
      
        '  (Codigo, Descricao, Indicador_REVinculado, Indicador_DIVincula' +
        'do, Indicador_NumProcesso, Indicador_NumRC, Indicador_NumRV, Ind' +
        'icador_PrazoPgto, Indicador_DSIVinculada, Indicador_CertifOrigem' +
        ', Tipo_Enquadramento, Tipo_EnquadramentoDescr)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Indicador_REVinculado, :Indicador_DIVin' +
        'culado, :Indicador_NumProcesso, :Indicador_NumRC, :Indicador_Num' +
        'RV, :Indicador_PrazoPgto, :Indicador_DSIVinculada, :Indicador_Ce' +
        'rtifOrigem, :Tipo_Enquadramento, :Tipo_EnquadramentoDescr)')
    SQLDelete.Strings = (
      'DELETE FROM EnquadramentoOperacao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE EnquadramentoOperacao'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Indicador_REVinculad' +
        'o = :Indicador_REVinculado, Indicador_DIVinculado = :Indicador_D' +
        'IVinculado, Indicador_NumProcesso = :Indicador_NumProcesso, Indi' +
        'cador_NumRC = :Indicador_NumRC, Indicador_NumRV = :Indicador_Num' +
        'RV, Indicador_PrazoPgto = :Indicador_PrazoPgto, Indicador_DSIVin' +
        'culada = :Indicador_DSIVinculada, Indicador_CertifOrigem = :Indi' +
        'cador_CertifOrigem, Tipo_Enquadramento = :Tipo_Enquadramento, Ti' +
        'po_EnquadramentoDescr = :Tipo_EnquadramentoDescr'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Codigo, Descricao, Indicador_REVinculado, Indicador_DIVin' +
        'culado, Indicador_NumProcesso, Indicador_NumRC, Indicador_NumRV,' +
        ' Indicador_PrazoPgto, Indicador_DSIVinculada, Indicador_CertifOr' +
        'igem, Tipo_Enquadramento, Tipo_EnquadramentoDescr FROM Enquadram' +
        'entoOperacao'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM EnquadramentoOperacao'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM EnquadramentoOperacao'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM   EnquadramentoOperacao'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 565
    Top = 218
    object EnquadramentoOperCodigo: TStringField
      FieldName = 'Codigo'
      Size = 6
    end
    object EnquadramentoOperDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object EnquadramentoOperIndicador_REVinculado: TBooleanField
      FieldName = 'Indicador_REVinculado'
    end
    object EnquadramentoOperIndicador_DIVinculado: TBooleanField
      FieldName = 'Indicador_DIVinculado'
    end
    object EnquadramentoOperIndicador_NumProcesso: TBooleanField
      FieldName = 'Indicador_NumProcesso'
    end
    object EnquadramentoOperIndicador_NumRC: TBooleanField
      FieldName = 'Indicador_NumRC'
    end
    object EnquadramentoOperIndicador_NumRV: TBooleanField
      FieldName = 'Indicador_NumRV'
    end
    object EnquadramentoOperIndicador_PrazoPgto: TBooleanField
      FieldName = 'Indicador_PrazoPgto'
    end
    object EnquadramentoOperIndicador_DSIVinculada: TBooleanField
      FieldName = 'Indicador_DSIVinculada'
    end
    object EnquadramentoOperIndicador_CertifOrigem: TBooleanField
      FieldName = 'Indicador_CertifOrigem'
    end
    object EnquadramentoOperTipo_Enquadramento: TStringField
      FieldName = 'Tipo_Enquadramento'
      Size = 3
    end
    object EnquadramentoOperTipo_EnquadramentoDescr: TStringField
      FieldName = 'Tipo_EnquadramentoDescr'
      Size = 50
    end
  end
  object dsEnquadramentoOper: TDataSource
    DataSet = EnquadramentoOper
    Left = 565
    Top = 265
  end
  object DIAcrescimo: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DIAcrescimo'
      '  (Registro, DI, Codigo, Valor_ME, Moeda, Valor_Real)'
      'VALUES'
      '  (:Registro, :DI, :Codigo, :Valor_ME, :Moeda, :Valor_Real)')
    SQLDelete.Strings = (
      'DELETE FROM DIAcrescimo'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE DIAcrescimo'
      'SET'
      
        '  Registro = :Registro, DI = :DI, Codigo = :Codigo, Valor_ME = :' +
        'Valor_ME, Moeda = :Moeda, Valor_Real = :Valor_Real'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, DI, Codigo, Valor_ME, Moeda, Valor_Real FROM DI' +
        'Acrescimo'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM DIAcrescimo'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM DIAcrescimo'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM DIAcrescimo'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 677
    Top = 114
    object DIAcrescimoRegistro: TIntegerField
      DisplayWidth = 5
      FieldName = 'Registro'
    end
    object DIAcrescimoCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object DIAcrescimoMoeda: TIntegerField
      FieldName = 'Moeda'
    end
    object DIAcrescimoDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = Acrescimos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo'
      Size = 60
      Lookup = True
    end
    object DIAcrescimoMoeda_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Moeda_Nome'
      LookupDataSet = Dados.Moedas
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Moeda'
      Size = 60
      Lookup = True
    end
    object DIAcrescimoValor_ME: TCurrencyField
      FieldName = 'Valor_ME'
      DisplayFormat = ',##0.00'
    end
    object DIAcrescimoValor_Real: TCurrencyField
      FieldName = 'Valor_Real'
      DisplayFormat = ',##0.00'
    end
    object DIAcrescimoDI: TStringField
      FieldName = 'DI'
      Size = 15
    end
  end
  object dsDIAcrescimo: TDataSource
    DataSet = DIAcrescimo
    Left = 677
    Top = 161
  end
  object Acrescimos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Acrescimo'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM Acrescimo'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE Acrescimo'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM Acrescimo'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM Acrescimo'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM Acrescimo'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM Acrescimo'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 76
    Top = 322
    object AcrescimosCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object AcrescimosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
  end
  object dsAcrescimos: TDataSource
    DataSet = Acrescimos
    Left = 76
    Top = 370
  end
  object DIAdicoes: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DIAdicoes'
      
        '  (Registro, DI, LI, Adicao, NCM, NBM, NALADI_NCCA, NALADI_SH, U' +
        'RF_Entrega, Via_Transporte, Exportador, Fabricante, Pais_Aquisic' +
        'ao, Pais_Procedencia, Pais_Origem, Tipo_Fabricante, Peso_Liquido' +
        ', Quantidade, Aplicacao, Moeda_FOB, Moeda_Frete, Moeda_Seguro, M' +
        'oeda_Despesas, INCOTERMS, Local_CondicaoVenda, Valor_Frete, Pari' +
        'dade, Taxa_Cambio, Valor_Seguro, Metodo_Valoracao, Vinculo_CompV' +
        'end, Acordo_TarifarioII, Acordo_ALADI, Regime_Tributario, Fundam' +
        'ento_Legal, Documento_Reducao, Valor_MercadoriaME, Valor_Despesa' +
        'sME, Percentual_RedII, Valor_II, Valor_IIZFM, Cobertura_Cambial,' +
        ' Modalidade_Pgto, Orgao_Financiador, Motivo_SemCobertura, Quanti' +
        'dade_ParcFin, Intervalo_Parcela, Valor_TotalPrazo, Taxa_Juros, T' +
        'axa_JurosCodigo, Valor_TotalFin, Numero_ROF, Pagamento_Variavel,' +
        ' Incidencia_Juros, Percentual_Comissao, Valor_Comissao, Agente, ' +
        'Encomenda, Usado, Complemento, Motivo_Admissao, Valor_DCRME, Ali' +
        'quota_ICMS, Fundamento_LegalReduc, Regime_PIS, Fundamento_LegalP' +
        'IS, Tipo_Certificado, Relacao_ExpFab, Peso_Bruto, Aliquota_COFIN' +
        'S, Aliquota_PIS, Valor_MercadoriaReal, Aliquota_RedCOFINS, Finan' +
        'ciadora, Condicao_Mercadoria, Unidade, Acordo_TarifarioIICod, Al' +
        'iquota_II, Aliquota_ReducaoII, II_Reduzida, Valor_BCII, Aliquota' +
        '_IPI, Valor_BCIPI, Valor_IPI, Valor_BCPIS, Valor_PIS, Valor_BCCO' +
        'FINS, Valor_COFINS, Valor_BCICMS, Valor_ICMS, Aliquota_RedPIS, A' +
        'liquota_IPIEspRec, Aliquota_IPIEspUnid, Reducao_BCPISCOFINS, Reg' +
        'ime_TribII, Aliquota_RedIPI)'
      'VALUES'
      
        '  (:Registro, :DI, :LI, :Adicao, :NCM, :NBM, :NALADI_NCCA, :NALA' +
        'DI_SH, :URF_Entrega, :Via_Transporte, :Exportador, :Fabricante, ' +
        ':Pais_Aquisicao, :Pais_Procedencia, :Pais_Origem, :Tipo_Fabrican' +
        'te, :Peso_Liquido, :Quantidade, :Aplicacao, :Moeda_FOB, :Moeda_F' +
        'rete, :Moeda_Seguro, :Moeda_Despesas, :INCOTERMS, :Local_Condica' +
        'oVenda, :Valor_Frete, :Paridade, :Taxa_Cambio, :Valor_Seguro, :M' +
        'etodo_Valoracao, :Vinculo_CompVend, :Acordo_TarifarioII, :Acordo' +
        '_ALADI, :Regime_Tributario, :Fundamento_Legal, :Documento_Reduca' +
        'o, :Valor_MercadoriaME, :Valor_DespesasME, :Percentual_RedII, :V' +
        'alor_II, :Valor_IIZFM, :Cobertura_Cambial, :Modalidade_Pgto, :Or' +
        'gao_Financiador, :Motivo_SemCobertura, :Quantidade_ParcFin, :Int' +
        'ervalo_Parcela, :Valor_TotalPrazo, :Taxa_Juros, :Taxa_JurosCodig' +
        'o, :Valor_TotalFin, :Numero_ROF, :Pagamento_Variavel, :Incidenci' +
        'a_Juros, :Percentual_Comissao, :Valor_Comissao, :Agente, :Encome' +
        'nda, :Usado, :Complemento, :Motivo_Admissao, :Valor_DCRME, :Aliq' +
        'uota_ICMS, :Fundamento_LegalReduc, :Regime_PIS, :Fundamento_Lega' +
        'lPIS, :Tipo_Certificado, :Relacao_ExpFab, :Peso_Bruto, :Aliquota' +
        '_COFINS, :Aliquota_PIS, :Valor_MercadoriaReal, :Aliquota_RedCOFI' +
        'NS, :Financiadora, :Condicao_Mercadoria, :Unidade, :Acordo_Tarif' +
        'arioIICod, :Aliquota_II, :Aliquota_ReducaoII, :II_Reduzida, :Val' +
        'or_BCII, :Aliquota_IPI, :Valor_BCIPI, :Valor_IPI, :Valor_BCPIS, ' +
        ':Valor_PIS, :Valor_BCCOFINS, :Valor_COFINS, :Valor_BCICMS, :Valo' +
        'r_ICMS, :Aliquota_RedPIS, :Aliquota_IPIEspRec, :Aliquota_IPIEspU' +
        'nid, :Reducao_BCPISCOFINS, :Regime_TribII, :Aliquota_RedIPI)')
    SQLDelete.Strings = (
      'DELETE FROM DIAdicoes'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE DIAdicoes'
      'SET'
      
        '  Registro = :Registro, DI = :DI, LI = :LI, Adicao = :Adicao, NC' +
        'M = :NCM, NBM = :NBM, NALADI_NCCA = :NALADI_NCCA, NALADI_SH = :N' +
        'ALADI_SH, URF_Entrega = :URF_Entrega, Via_Transporte = :Via_Tran' +
        'sporte, Exportador = :Exportador, Fabricante = :Fabricante, Pais' +
        '_Aquisicao = :Pais_Aquisicao, Pais_Procedencia = :Pais_Procedenc' +
        'ia, Pais_Origem = :Pais_Origem, Tipo_Fabricante = :Tipo_Fabrican' +
        'te, Peso_Liquido = :Peso_Liquido, Quantidade = :Quantidade, Apli' +
        'cacao = :Aplicacao, Moeda_FOB = :Moeda_FOB, Moeda_Frete = :Moeda' +
        '_Frete, Moeda_Seguro = :Moeda_Seguro, Moeda_Despesas = :Moeda_De' +
        'spesas, INCOTERMS = :INCOTERMS, Local_CondicaoVenda = :Local_Con' +
        'dicaoVenda, Valor_Frete = :Valor_Frete, Paridade = :Paridade, Ta' +
        'xa_Cambio = :Taxa_Cambio, Valor_Seguro = :Valor_Seguro, Metodo_V' +
        'aloracao = :Metodo_Valoracao, Vinculo_CompVend = :Vinculo_CompVe' +
        'nd, Acordo_TarifarioII = :Acordo_TarifarioII, Acordo_ALADI = :Ac' +
        'ordo_ALADI, Regime_Tributario = :Regime_Tributario, Fundamento_L' +
        'egal = :Fundamento_Legal, Documento_Reducao = :Documento_Reducao' +
        ', Valor_MercadoriaME = :Valor_MercadoriaME, Valor_DespesasME = :' +
        'Valor_DespesasME, Percentual_RedII = :Percentual_RedII, Valor_II' +
        ' = :Valor_II, Valor_IIZFM = :Valor_IIZFM, Cobertura_Cambial = :C' +
        'obertura_Cambial, Modalidade_Pgto = :Modalidade_Pgto, Orgao_Fina' +
        'nciador = :Orgao_Financiador, Motivo_SemCobertura = :Motivo_SemC' +
        'obertura, Quantidade_ParcFin = :Quantidade_ParcFin, Intervalo_Pa' +
        'rcela = :Intervalo_Parcela, Valor_TotalPrazo = :Valor_TotalPrazo' +
        ', Taxa_Juros = :Taxa_Juros, Taxa_JurosCodigo = :Taxa_JurosCodigo' +
        ', Valor_TotalFin = :Valor_TotalFin, Numero_ROF = :Numero_ROF, Pa' +
        'gamento_Variavel = :Pagamento_Variavel, Incidencia_Juros = :Inci' +
        'dencia_Juros, Percentual_Comissao = :Percentual_Comissao, Valor_' +
        'Comissao = :Valor_Comissao, Agente = :Agente, Encomenda = :Encom' +
        'enda, Usado = :Usado, Complemento = :Complemento, Motivo_Admissa' +
        'o = :Motivo_Admissao, Valor_DCRME = :Valor_DCRME, Aliquota_ICMS ' +
        '= :Aliquota_ICMS, Fundamento_LegalReduc = :Fundamento_LegalReduc' +
        ', Regime_PIS = :Regime_PIS, Fundamento_LegalPIS = :Fundamento_Le' +
        'galPIS, Tipo_Certificado = :Tipo_Certificado, Relacao_ExpFab = :' +
        'Relacao_ExpFab, Peso_Bruto = :Peso_Bruto, Aliquota_COFINS = :Ali' +
        'quota_COFINS, Aliquota_PIS = :Aliquota_PIS, Valor_MercadoriaReal' +
        ' = :Valor_MercadoriaReal, Aliquota_RedCOFINS = :Aliquota_RedCOFI' +
        'NS, Financiadora = :Financiadora, Condicao_Mercadoria = :Condica' +
        'o_Mercadoria, Unidade = :Unidade, Acordo_TarifarioIICod = :Acord' +
        'o_TarifarioIICod, Aliquota_II = :Aliquota_II, Aliquota_ReducaoII' +
        ' = :Aliquota_ReducaoII, II_Reduzida = :II_Reduzida, Valor_BCII =' +
        ' :Valor_BCII, Aliquota_IPI = :Aliquota_IPI, Valor_BCIPI = :Valor' +
        '_BCIPI, Valor_IPI = :Valor_IPI, Valor_BCPIS = :Valor_BCPIS, Valo' +
        'r_PIS = :Valor_PIS, Valor_BCCOFINS = :Valor_BCCOFINS, Valor_COFI' +
        'NS = :Valor_COFINS, Valor_BCICMS = :Valor_BCICMS, Valor_ICMS = :' +
        'Valor_ICMS, Aliquota_RedPIS = :Aliquota_RedPIS, Aliquota_IPIEspR' +
        'ec = :Aliquota_IPIEspRec, Aliquota_IPIEspUnid = :Aliquota_IPIEsp' +
        'Unid, Reducao_BCPISCOFINS = :Reducao_BCPISCOFINS, Regime_TribII ' +
        '= :Regime_TribII, Aliquota_RedIPI = :Aliquota_RedIPI'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, DI, LI, Adicao, NCM, NBM, NALADI_NCCA, NALADI_S' +
        'H, URF_Entrega, Via_Transporte, Exportador, Fabricante, Pais_Aqu' +
        'isicao, Pais_Procedencia, Pais_Origem, Tipo_Fabricante, Peso_Liq' +
        'uido, Quantidade, Aplicacao, Moeda_FOB, Moeda_Frete, Moeda_Segur' +
        'o, Moeda_Despesas, INCOTERMS, Local_CondicaoVenda, Valor_Frete, ' +
        'Paridade, Taxa_Cambio, Valor_Seguro, Metodo_Valoracao, Vinculo_C' +
        'ompVend, Acordo_TarifarioII, Acordo_ALADI, Regime_Tributario, Fu' +
        'ndamento_Legal, Documento_Reducao, Valor_MercadoriaME, Valor_Des' +
        'pesasME, Percentual_RedII, Valor_II, Valor_IIZFM, Cobertura_Camb' +
        'ial, Modalidade_Pgto, Orgao_Financiador, Motivo_SemCobertura, Qu' +
        'antidade_ParcFin, Intervalo_Parcela, Valor_TotalPrazo, Taxa_Juro' +
        's, Taxa_JurosCodigo, Valor_TotalFin, Numero_ROF, Pagamento_Varia' +
        'vel, Incidencia_Juros, Percentual_Comissao, Valor_Comissao, Agen' +
        'te, Encomenda, Usado, Complemento, Motivo_Admissao, Valor_DCRME,' +
        ' Aliquota_ICMS, Fundamento_LegalReduc, Regime_PIS, Fundamento_Le' +
        'galPIS, Tipo_Certificado, Relacao_ExpFab, Peso_Bruto, Aliquota_C' +
        'OFINS, Aliquota_PIS, Valor_MercadoriaReal, Aliquota_RedCOFINS, F' +
        'inanciadora, Condicao_Mercadoria, Unidade, Acordo_TarifarioIICod' +
        ', Aliquota_II, Aliquota_ReducaoII, II_Reduzida, Valor_BCII, Aliq' +
        'uota_IPI, Valor_BCIPI, Valor_IPI, Valor_BCPIS, Valor_PIS, Valor_' +
        'BCCOFINS, Valor_COFINS, Valor_BCICMS, Valor_ICMS, Aliquota_RedPI' +
        'S, Aliquota_IPIEspRec, Aliquota_IPIEspUnid, Reducao_BCPISCOFINS,' +
        ' Regime_TribII, Aliquota_RedIPI FROM DIAdicoes'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM DIAdicoes'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM DIAdicoes'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      'FROM DIAdicoes'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 164
    Top = 322
    object DIAdicoesRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object DIAdicoesLI: TStringField
      FieldName = 'LI'
      Size = 10
    end
    object DIAdicoesAdicao: TSmallintField
      FieldName = 'Adicao'
      DisplayFormat = '0000'
    end
    object DIAdicoesNCM: TStringField
      FieldName = 'NCM'
      EditMask = '9999.99.99;0'
      Size = 8
    end
    object DIAdicoesNBM: TStringField
      FieldName = 'NBM'
      Size = 8
    end
    object DIAdicoesNALADI_SH: TStringField
      FieldName = 'NALADI_SH'
      Size = 8
    end
    object DIAdicoesVia_Transporte: TSmallintField
      FieldName = 'Via_Transporte'
    end
    object DIAdicoesExportador: TSmallintField
      FieldName = 'Exportador'
    end
    object DIAdicoesFabricante: TSmallintField
      FieldName = 'Fabricante'
    end
    object DIAdicoesPais_Aquisicao: TSmallintField
      FieldName = 'Pais_Aquisicao'
    end
    object DIAdicoesPais_Procedencia: TSmallintField
      FieldName = 'Pais_Procedencia'
    end
    object DIAdicoesPais_Origem: TSmallintField
      FieldName = 'Pais_Origem'
    end
    object DIAdicoesTipo_Fabricante: TSmallintField
      FieldName = 'Tipo_Fabricante'
    end
    object DIAdicoesPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      DisplayFormat = ',##0.000'
    end
    object DIAdicoesQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object DIAdicoesMoeda_FOB: TSmallintField
      FieldName = 'Moeda_FOB'
    end
    object DIAdicoesMoeda_Frete: TSmallintField
      FieldName = 'Moeda_Frete'
    end
    object DIAdicoesMoeda_Seguro: TSmallintField
      FieldName = 'Moeda_Seguro'
    end
    object DIAdicoesMoeda_Despesas: TSmallintField
      FieldName = 'Moeda_Despesas'
    end
    object DIAdicoesINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      FixedChar = True
      Size = 3
    end
    object DIAdicoesLocal_CondicaoVenda: TStringField
      FieldName = 'Local_CondicaoVenda'
      Size = 60
    end
    object DIAdicoesValor_Frete: TCurrencyField
      FieldName = 'Valor_Frete'
      DisplayFormat = ',##0.00'
    end
    object DIAdicoesParidade: TFloatField
      FieldName = 'Paridade'
    end
    object DIAdicoesTaxa_Cambio: TFloatField
      FieldName = 'Taxa_Cambio'
    end
    object DIAdicoesValor_Seguro: TCurrencyField
      FieldName = 'Valor_Seguro'
      DisplayFormat = ',##0.00'
    end
    object DIAdicoesMetodo_Valoracao: TSmallintField
      FieldName = 'Metodo_Valoracao'
    end
    object DIAdicoesVinculo_CompVend: TSmallintField
      FieldName = 'Vinculo_CompVend'
    end
    object DIAdicoesAcordo_ALADI: TSmallintField
      FieldName = 'Acordo_ALADI'
    end
    object DIAdicoesFundamento_Legal: TSmallintField
      FieldName = 'Fundamento_Legal'
    end
    object DIAdicoesDocumento_Reducao: TStringField
      FieldName = 'Documento_Reducao'
      Size = 8
    end
    object DIAdicoesValor_MercadoriaME: TCurrencyField
      FieldName = 'Valor_MercadoriaME'
      DisplayFormat = ',##0.00'
    end
    object DIAdicoesValor_DespesasME: TCurrencyField
      FieldName = 'Valor_DespesasME'
    end
    object DIAdicoesPercentual_RedII: TFloatField
      FieldName = 'Percentual_RedII'
    end
    object DIAdicoesValor_II: TCurrencyField
      FieldName = 'Valor_II'
    end
    object DIAdicoesValor_IIZFM: TCurrencyField
      FieldName = 'Valor_IIZFM'
    end
    object DIAdicoesCobertura_Cambial: TSmallintField
      FieldName = 'Cobertura_Cambial'
    end
    object DIAdicoesModalidade_Pgto: TSmallintField
      FieldName = 'Modalidade_Pgto'
    end
    object DIAdicoesOrgao_Financiador: TSmallintField
      FieldName = 'Orgao_Financiador'
    end
    object DIAdicoesMotivo_SemCobertura: TSmallintField
      FieldName = 'Motivo_SemCobertura'
    end
    object DIAdicoesQuantidade_ParcFin: TSmallintField
      FieldName = 'Quantidade_ParcFin'
    end
    object DIAdicoesIntervalo_Parcela: TSmallintField
      FieldName = 'Intervalo_Parcela'
    end
    object DIAdicoesValor_TotalPrazo: TCurrencyField
      FieldName = 'Valor_TotalPrazo'
    end
    object DIAdicoesTaxa_Juros: TFloatField
      FieldName = 'Taxa_Juros'
    end
    object DIAdicoesTaxa_JurosCodigo: TSmallintField
      FieldName = 'Taxa_JurosCodigo'
    end
    object DIAdicoesValor_TotalFin: TCurrencyField
      FieldName = 'Valor_TotalFin'
    end
    object DIAdicoesNumero_ROF: TStringField
      FieldName = 'Numero_ROF'
      Size = 8
    end
    object DIAdicoesPagamento_Variavel: TBooleanField
      FieldName = 'Pagamento_Variavel'
    end
    object DIAdicoesIncidencia_Juros: TBooleanField
      FieldName = 'Incidencia_Juros'
    end
    object DIAdicoesPercentual_Comissao: TFloatField
      FieldName = 'Percentual_Comissao'
    end
    object DIAdicoesValor_Comissao: TCurrencyField
      FieldName = 'Valor_Comissao'
    end
    object DIAdicoesAgente: TSmallintField
      FieldName = 'Agente'
    end
    object DIAdicoesEncomenda: TBooleanField
      FieldName = 'Encomenda'
    end
    object DIAdicoesUsado: TBooleanField
      FieldName = 'Usado'
    end
    object DIAdicoesComplemento: TMemoField
      FieldName = 'Complemento'
      BlobType = ftMemo
    end
    object DIAdicoesMotivo_Admissao: TSmallintField
      FieldName = 'Motivo_Admissao'
    end
    object DIAdicoesValor_DCRME: TCurrencyField
      FieldName = 'Valor_DCRME'
    end
    object DIAdicoesAliquota_ICMS: TFloatField
      FieldName = 'Aliquota_ICMS'
    end
    object DIAdicoesFundamento_LegalReduc: TSmallintField
      FieldName = 'Fundamento_LegalReduc'
    end
    object DIAdicoesRegime_PIS: TSmallintField
      FieldName = 'Regime_PIS'
    end
    object DIAdicoesFundamento_LegalPIS: TSmallintField
      FieldName = 'Fundamento_LegalPIS'
    end
    object DIAdicoesTipo_Certificado: TSmallintField
      FieldName = 'Tipo_Certificado'
    end
    object DIAdicoesFabricante_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Fabricante_Nome'
      LookupDataSet = Dados.Fabricantes
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Fabricante'
      Size = 60
      Lookup = True
    end
    object DIAdicoesRelacao_ExpFab: TSmallintField
      FieldName = 'Relacao_ExpFab'
    end
    object DIAdicoesPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object DIAdicoesAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
    end
    object DIAdicoesAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
    end
    object DIAdicoesValor_MercadoriaReal: TCurrencyField
      FieldName = 'Valor_MercadoriaReal'
    end
    object DIAdicoesAliquota_RedCOFINS: TFloatField
      FieldName = 'Aliquota_RedCOFINS'
    end
    object DIAdicoesMetodo_ValNome: TStringField
      FieldKind = fkLookup
      FieldName = 'Metodo_ValNome'
      LookupDataSet = MetodoVal
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Metodo_Valoracao'
      Size = 60
      Lookup = True
    end
    object DIAdicoesFinanciadora: TSmallintField
      FieldName = 'Financiadora'
    end
    object DIAdicoesAplicacao: TStringField
      FieldName = 'Aplicacao'
      Size = 7
    end
    object DIAdicoesNALADI_NCCA: TStringField
      FieldName = 'NALADI_NCCA'
      Size = 7
    end
    object DIAdicoesURF_Entrega: TStringField
      FieldName = 'URF_Entrega'
      Size = 7
    end
    object DIAdicoesCondicao_Mercadoria: TStringField
      FieldName = 'Condicao_Mercadoria'
      Size = 5
    end
    object DIAdicoesUnidade: TStringField
      FieldName = 'Unidade'
      Size = 25
    end
    object DIAdicoesAcordo_TarifarioIICod: TSmallintField
      FieldName = 'Acordo_TarifarioIICod'
    end
    object DIAdicoesAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
    end
    object DIAdicoesAliquota_ReducaoII: TFloatField
      FieldName = 'Aliquota_ReducaoII'
    end
    object DIAdicoesII_Reduzida: TFloatField
      FieldName = 'II_Reduzida'
    end
    object DIAdicoesValor_BCII: TCurrencyField
      FieldName = 'Valor_BCII'
    end
    object DIAdicoesAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
    end
    object DIAdicoesValor_BCIPI: TCurrencyField
      FieldName = 'Valor_BCIPI'
    end
    object DIAdicoesValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
    end
    object DIAdicoesValor_BCPIS: TCurrencyField
      FieldName = 'Valor_BCPIS'
    end
    object DIAdicoesValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
    end
    object DIAdicoesValor_BCCOFINS: TCurrencyField
      FieldName = 'Valor_BCCOFINS'
    end
    object DIAdicoesValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
    end
    object DIAdicoesValor_BCICMS: TCurrencyField
      FieldName = 'Valor_BCICMS'
    end
    object DIAdicoesValor_ICMS: TCurrencyField
      FieldName = 'Valor_ICMS'
    end
    object DIAdicoesAliquota_RedPIS: TFloatField
      FieldName = 'Aliquota_RedPIS'
    end
    object DIAdicoesAliquota_IPIEspRec: TFloatField
      FieldName = 'Aliquota_IPIEspRec'
    end
    object DIAdicoesAliquota_IPIEspUnid: TFloatField
      FieldName = 'Aliquota_IPIEspUnid'
    end
    object DIAdicoesReducao_BCPISCOFINS: TFloatField
      FieldName = 'Reducao_BCPISCOFINS'
    end
    object DIAdicoesRegime_TribII: TSmallintField
      FieldName = 'Regime_TribII'
    end
    object DIAdicoesRegime_Tributario: TSmallintField
      FieldName = 'Regime_Tributario'
    end
    object DIAdicoesAcordo_TarifarioII: TSmallintField
      FieldName = 'Acordo_TarifarioII'
    end
    object DIAdicoesDI: TStringField
      FieldName = 'DI'
      Size = 15
    end
    object DIAdicoesAliquota_RedIPI: TFloatField
      FieldName = 'Aliquota_RedIPI'
    end
  end
  object dsDIAdicoes: TDataSource
    DataSet = DIAdicoes
    Left = 164
    Top = 370
  end
  object MetodoVal: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO MetodoValoracao'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM MetodoValoracao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE MetodoValoracao'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM MetodoValoracao'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM MetodoValoracao'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM MetodoValoracao'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM MetodoValoracao'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 348
    Top = 322
    object MetodoValCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object MetodoValDescricao: TStringField
      DisplayWidth = 60
      FieldName = 'Descricao'
      Size = 60
    end
  end
  object dsMetodoVal: TDataSource
    DataSet = MetodoVal
    Left = 348
    Top = 370
  end
  object AgFinanciadora: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO AgenciaFinanciadora'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM AgenciaFinanciadora'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE AgenciaFinanciadora'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM AgenciaFinanciadora'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM AgenciaFinanciadora'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM AgenciaFinanciadora'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'select * from AgenciaFinanciadora')
    Left = 454
    Top = 322
    object AgFinanciadoraCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object AgFinanciadoraDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object dsAgFinanciadora: TDataSource
    DataSet = AgFinanciadora
    Left = 454
    Top = 370
  end
  object AdicoesAcre: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO AdicoesAcrescimo'
      '  (Registro, DI, Adicao, Codigo, Moeda, Valor_ME, Valor_Real)'
      'VALUES'
      
        '  (:Registro, :DI, :Adicao, :Codigo, :Moeda, :Valor_ME, :Valor_R' +
        'eal)')
    SQLDelete.Strings = (
      'DELETE FROM AdicoesAcrescimo'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE AdicoesAcrescimo'
      'SET'
      
        '  Registro = :Registro, DI = :DI, Adicao = :Adicao, Codigo = :Co' +
        'digo, Moeda = :Moeda, Valor_ME = :Valor_ME, Valor_Real = :Valor_' +
        'Real'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, DI, Adicao, Codigo, Moeda, Valor_ME, Valor_Real' +
        ' FROM AdicoesAcrescimo'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM AdicoesAcrescimo'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM AdicoesAcrescimo'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'use cybersoft_RB'
      'SELECT *'
      'FROM AdicoesAcrescimo'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 251
    Top = 322
    object AdicoesAcreRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object AdicoesAcreDI: TStringField
      FieldName = 'DI'
      Size = 10
    end
    object AdicoesAcreAdicao: TIntegerField
      FieldName = 'Adicao'
    end
    object AdicoesAcreCodigo: TSmallintField
      FieldName = 'Codigo'
    end
    object AdicoesAcreMoeda: TSmallintField
      FieldName = 'Moeda'
    end
    object AdicoesAcreValor_ME: TCurrencyField
      FieldName = 'Valor_ME'
    end
    object AdicoesAcreValor_Real: TCurrencyField
      FieldName = 'Valor_Real'
    end
  end
  object dsAdicaoAcre: TDataSource
    DataSet = AdicoesAcre
    Left = 250
    Top = 370
  end
  object FundamentoLegal: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO FundamentoLegal'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM FundamentoLegal'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE FundamentoLegal'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM FundamentoLegal'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM FundamentoLegal'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM FundamentoLegal'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM FundamentoLegal'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 565
    Top = 322
    object FundamentoLegalCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object FundamentoLegalDescricao: TStringField
      FieldName = 'Descricao'
      Size = 140
    end
  end
  object dsFundamentoLegal: TDataSource
    DataSet = FundamentoLegal
    Left = 565
    Top = 370
  end
  object MotivoAdmissaoTemp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO MotivoAdmissaoTemp'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM MotivoAdmissaoTemp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE MotivoAdmissaoTemp'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM MotivoAdmissaoTemp'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM MotivoAdmissaoTemp'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM MotivoAdmissaoTemp'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM MotivoAdmissaoTemp'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 677
    Top = 18
    object MotivoAdmissaoTempCodigo: TSmallintField
      FieldName = 'Codigo'
    end
    object MotivoAdmissaoTempDescricao: TStringField
      FieldName = 'Descricao'
      Size = 125
    end
  end
  object dsMotivoAdmissaoTemp: TDataSource
    DataSet = MotivoAdmissaoTemp
    Left = 677
    Top = 66
  end
  object RegTribBCPIS: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO MotivoAdmissaoTemp'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM MotivoAdmissaoTemp'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE MotivoAdmissaoTemp'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM MotivoAdmissaoTemp'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM MotivoAdmissaoTemp'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM MotivoAdmissaoTemp'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM RegimePISCOFINS'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 76
    Top = 427
    object RegTribBCPISCodigo: TSmallintField
      FieldName = 'Codigo'
    end
    object RegTribBCPISDescricao: TStringField
      FieldName = 'Descricao'
      Size = 160
    end
  end
  object dsRegTribBCPIS: TDataSource
    DataSet = RegTribBCPIS
    Left = 76
    Top = 476
  end
  object DocInstrucao: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DocumentoInstrucao'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM DocumentoInstrucao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE DocumentoInstrucao'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM DocumentoInstrucao'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM DocumentoInstrucao'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM DocumentoInstrucao'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM DocumentoInstrucao'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 164
    Top = 427
    object DocInstrucaoCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object DocInstrucaoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 65
    end
  end
  object dsDocInstrucao: TDataSource
    DataSet = DocInstrucao
    Left = 164
    Top = 476
  end
  object DIDocumentos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DIDocumentos'
      '  (DI, Codigo, Numero)'
      'VALUES'
      '  (:DI, :Codigo, :Numero)')
    SQLDelete.Strings = (
      'DELETE FROM DIDocumentos'
      'WHERE'
      '  DI = :Old_DI AND Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE DIDocumentos'
      'SET'
      '  DI = :DI, Codigo = :Codigo, Numero = :Numero'
      'WHERE'
      '  DI = :Old_DI AND Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT DI, Codigo, Numero FROM DIDocumentos'
      'WHERE'
      '  DI = :DI AND Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM DIDocumentos'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  DI = :Old_DI AND Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM DIDocumentos'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      'FROM DIDocumentos'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 252
    Top = 427
    object DIDocumentosDI: TStringField
      FieldName = 'DI'
      Size = 15
    end
    object DIDocumentosCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object DIDocumentosNumero: TStringField
      FieldName = 'Numero'
    end
    object DIDocumentosDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = DocInstrucao
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo'
      Size = 65
      Lookup = True
    end
  end
  object dsDIDocumentos: TDataSource
    DataSet = DIDocumentos
    Left = 252
    Top = 476
  end
  object Embalagens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DocumentoInstrucao'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM DocumentoInstrucao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE DocumentoInstrucao'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM DocumentoInstrucao'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM DocumentoInstrucao'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM DocumentoInstrucao'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM TiposEmbalagem'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 348
    Top = 427
    object EmbalagensCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
    end
    object EmbalagensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object dsEmbalagens: TDataSource
    DataSet = Embalagens
    Left = 348
    Top = 476
  end
  object POItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO POItens'
      
        '  (Registro, PO, Codigo_Mercadoria, Item, Quantidade, Valor, Qua' +
        'ntidade_Unidade, Quantidade_Volumes, NCM, Fabricante)'
      'VALUES'
      
        '  (:Registro, :PO, :Codigo_Mercadoria, :Item, :Quantidade, :Valo' +
        'r, :Quantidade_Unidade, :Quantidade_Volumes, :NCM, :Fabricante)')
    SQLDelete.Strings = (
      'DELETE FROM POItens'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE POItens'
      'SET'
      
        '  Registro = :Registro, PO = :PO, Codigo_Mercadoria = :Codigo_Me' +
        'rcadoria, Item = :Item, Quantidade = :Quantidade, Valor = :Valor' +
        ', Quantidade_Unidade = :Quantidade_Unidade, Quantidade_Volumes =' +
        ' :Quantidade_Volumes, NCM = :NCM, Fabricante = :Fabricante'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, PO, Codigo_Mercadoria, Item, Quantidade, Valor,' +
        ' Quantidade_Unidade, Quantidade_Volumes, NCM, Fabricante FROM PO' +
        'Itens'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM POItens'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM POItens'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      '      ,Sel   = cast(1 as bit)'
      
        '      ,Saldo = Quantidade - (select sum(Quantidade) from Invoice' +
        'Itens ini where ini.PO = '#39#39' and ini.Codigo_Mercadoria = poi.Codi' +
        'go_Mercadoria)'
      
        '      ,Descricao = (select Descricao from Produtos prd where prd' +
        '.Codigo = poi.Codigo_Mercadoria)'
      'FROM  POItens poi')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 677
    Top = 427
    object POItensRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object POItensPO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object POItensCodigo_Mercadoria: TSmallintField
      FieldName = 'Codigo_Mercadoria'
    end
    object POItensItem: TSmallintField
      FieldName = 'Item'
    end
    object POItensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object POItensValor: TFloatField
      FieldName = 'Valor'
    end
    object POItensQuantidade_Unidade: TFloatField
      FieldName = 'Quantidade_Unidade'
    end
    object POItensQuantidade_Volumes: TFloatField
      FieldName = 'Quantidade_Volumes'
    end
    object POItensNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object POItensFabricante: TSmallintField
      FieldName = 'Fabricante'
    end
    object POItensSel: TBooleanField
      FieldName = 'Sel'
      ReadOnly = True
    end
    object POItensSaldo: TFloatField
      FieldName = 'Saldo'
      ReadOnly = True
    end
    object POItensDescricao: TStringField
      FieldName = 'Descricao'
      ReadOnly = True
      Size = 5000
    end
  end
  object dsPOItens: TDataSource
    DataSet = POItens
    Left = 677
    Top = 476
  end
  object DocumentoTransp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DocumentoInstrucao'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM DocumentoInstrucao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE DocumentoInstrucao'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM DocumentoInstrucao'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM DocumentoInstrucao'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM DocumentoInstrucao'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT *'
      'FROM DocumentoTransporte'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 454
    Top = 427
    object DocumentoTranspCodigo: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object DocumentoTranspModal: TStringField
      FieldName = 'Modal'
    end
    object DocumentoTranspDescricao: TStringField
      FieldName = 'Descricao'
      Size = 150
    end
  end
  object dsDocumentoTransp: TDataSource
    DataSet = DocumentoTransp
    Left = 454
    Top = 476
  end
  object MotivoSit: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DocumentoInstrucao'
      '  (Codigo, Descricao)'
      'VALUES'
      '  (:Codigo, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM DocumentoInstrucao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE DocumentoInstrucao'
      'SET'
      '  Codigo = :Codigo, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Descricao FROM DocumentoInstrucao'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM DocumentoInstrucao'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM DocumentoInstrucao'
      ')')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM MotivoSituacao'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 565
    Top = 427
    object MotivoSitCodigo: TStringField
      FieldName = 'Codigo'
      Size = 16
    end
    object MotivoSitDescricao: TStringField
      FieldName = 'Descricao'
      Size = 80
    end
  end
  object dsMotivoSit: TDataSource
    DataSet = MotivoSit
    Left = 565
    Top = 476
  end
  object LPCO: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LPCO'
      '  (Orgao_Anuente, Documento, Numero, Data_Inicio, Data_Fim)'
      'VALUES'
      '  (:Orgao_Anuente, :Documento, :Numero, :Data_Inicio, :Data_Fim)'
      'SET :LPCO = SCOPE_IDENTITY()')
    SQLDelete.Strings = (
      'DELETE FROM LPCO'
      'WHERE'
      '  LPCO = :Old_LPCO')
    SQLUpdate.Strings = (
      'UPDATE LPCO'
      'SET'
      
        '  Orgao_Anuente = :Orgao_Anuente, Documento = :Documento, Numero' +
        ' = :Numero, Data_Inicio = :Data_Inicio, Data_Fim = :Data_Fim'
      'WHERE'
      '  LPCO = :Old_LPCO')
    SQLRefresh.Strings = (
      
        'SELECT Orgao_Anuente, Documento, Numero, Data_Inicio, Data_Fim F' +
        'ROM LPCO'
      'WHERE'
      '  LPCO = :LPCO')
    SQLLock.Strings = (
      'SELECT * FROM LPCO'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  LPCO = :Old_LPCO')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM LPCO'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select * '
      '      ,Sel = cast(1 as bit)'
      'from LPCO')
    Active = True
    Left = 678
    Top = 320
    object LPCOLPCO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'LPCO'
      ReadOnly = True
    end
    object LPCOOrgao_Anuente: TStringField
      FieldName = 'Orgao_Anuente'
      Size = 10
    end
    object LPCODocumento: TStringField
      FieldName = 'Documento'
      Size = 30
    end
    object LPCONumero: TStringField
      FieldName = 'Numero'
      Size = 30
    end
    object LPCOData_Inicio: TDateTimeField
      FieldName = 'Data_Inicio'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object LPCOData_Fim: TDateTimeField
      FieldName = 'Data_Fim'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object LPCOSel: TBooleanField
      FieldName = 'Sel'
      DisplayValues = '2'
    end
  end
  object dsLPCO: TDataSource
    DataSet = LPCO
    Left = 677
    Top = 370
  end
  object InvoiceItensLPCO: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO InvoiceItensLPCO'
      '  (Invoice, Codigo_Mercadoria, LPCO)'
      'VALUES'
      '  (:Invoice, :Codigo_Mercadoria, :LPCO)'
      'SET :Registro = SCOPE_IDENTITY()')
    SQLDelete.Strings = (
      'DELETE FROM InvoiceItensLPCO'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE InvoiceItensLPCO'
      'SET'
      
        '  Invoice = :Invoice, Codigo_Mercadoria = :Codigo_Mercadoria, LP' +
        'CO = :LPCO'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      'SELECT Invoice, Codigo_Mercadoria, LPCO FROM InvoiceItensLPCO'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM InvoiceItensLPCO'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM InvoiceItensLPCO'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM InvoiceItensLPCO')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 774
    Top = 427
    object InvoiceItensLPCORegistro: TIntegerField
      FieldName = 'Registro'
      ReadOnly = True
    end
    object InvoiceItensLPCOInvoice: TStringField
      FieldName = 'Invoice'
      Size = 30
    end
    object InvoiceItensLPCOCodigo_Mercadoria: TSmallintField
      FieldName = 'Codigo_Mercadoria'
    end
    object InvoiceItensLPCOLPCO: TIntegerField
      FieldName = 'LPCO'
    end
  end
  object dsInvoiceItensLPCO: TDataSource
    DataSet = InvoiceItensLPCO
    Left = 774
    Top = 476
  end
end
