object dmDespacho: TdmDespacho
  OldCreateOrder = False
  Left = 389
  Top = 115
  Height = 426
  Width = 651
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
    Top = 65
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
    Top = 65
  end
  object DI: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DI'
      
        '  (Registro, Situacao, Processo, Data, DI, Qtde_Adicao, Tipo_Dec' +
        'laracao, Motivo_Trans, Tipo_Importador, Modalidade_Despacho, FUN' +
        'DAP, URF_Entrega, URF_Despacho, Modalidade_Importacao, Consignat' +
        'ario, Pais_Procedencia, Via_Transporte, Multimodal, Numero_Veicu' +
        'lo, Nome_Veiculo, Transportador, Agente_Transportador, Tipo_DocC' +
        'arga, Numero_DocCarga, Numero_DocCargaMaster, Local_Embarque, Da' +
        'ta_Embarque, Peso_Bruto, Peso_Liquido, Data_Chegada, Tipo_Manife' +
        'sto, Numero_Manifesto, Recinto_Aduaneiro, Frete_PrePaid, Frete_C' +
        'ollect, Frete_Real, Moeda_Frete, Seguro_ME, Seguro_Real, Moeda_S' +
        'eguro, Despesas_ME, Moeda_Despesas, Despesas_Real, Total_Mercado' +
        'riaME, Origem_DI, Sequencia_Retificacao, Numero_Retificacao, Tip' +
        'o_Pagamento, Banco)'
      'VALUES'
      
        '  (:Registro, :Situacao, :Processo, :Data, :DI, :Qtde_Adicao, :T' +
        'ipo_Declaracao, :Motivo_Trans, :Tipo_Importador, :Modalidade_Des' +
        'pacho, :FUNDAP, :URF_Entrega, :URF_Despacho, :Modalidade_Importa' +
        'cao, :Consignatario, :Pais_Procedencia, :Via_Transporte, :Multim' +
        'odal, :Numero_Veiculo, :Nome_Veiculo, :Transportador, :Agente_Tr' +
        'ansportador, :Tipo_DocCarga, :Numero_DocCarga, :Numero_DocCargaM' +
        'aster, :Local_Embarque, :Data_Embarque, :Peso_Bruto, :Peso_Liqui' +
        'do, :Data_Chegada, :Tipo_Manifesto, :Numero_Manifesto, :Recinto_' +
        'Aduaneiro, :Frete_PrePaid, :Frete_Collect, :Frete_Real, :Moeda_F' +
        'rete, :Seguro_ME, :Seguro_Real, :Moeda_Seguro, :Despesas_ME, :Mo' +
        'eda_Despesas, :Despesas_Real, :Total_MercadoriaME, :Origem_DI, :' +
        'Sequencia_Retificacao, :Numero_Retificacao, :Tipo_Pagamento, :Ba' +
        'nco)')
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
        'eiculo, Transportador = :Transportador, Agente_Transportador = :' +
        'Agente_Transportador, Tipo_DocCarga = :Tipo_DocCarga, Numero_Doc' +
        'Carga = :Numero_DocCarga, Numero_DocCargaMaster = :Numero_DocCar' +
        'gaMaster, Local_Embarque = :Local_Embarque, Data_Embarque = :Dat' +
        'a_Embarque, Peso_Bruto = :Peso_Bruto, Peso_Liquido = :Peso_Liqui' +
        'do, Data_Chegada = :Data_Chegada, Tipo_Manifesto = :Tipo_Manifes' +
        'to, Numero_Manifesto = :Numero_Manifesto, Recinto_Aduaneiro = :R' +
        'ecinto_Aduaneiro, Frete_PrePaid = :Frete_PrePaid, Frete_Collect ' +
        '= :Frete_Collect, Frete_Real = :Frete_Real, Moeda_Frete = :Moeda' +
        '_Frete, Seguro_ME = :Seguro_ME, Seguro_Real = :Seguro_Real, Moed' +
        'a_Seguro = :Moeda_Seguro, Despesas_ME = :Despesas_ME, Moeda_Desp' +
        'esas = :Moeda_Despesas, Despesas_Real = :Despesas_Real, Total_Me' +
        'rcadoriaME = :Total_MercadoriaME, Origem_DI = :Origem_DI, Sequen' +
        'cia_Retificacao = :Sequencia_Retificacao, Numero_Retificacao = :' +
        'Numero_Retificacao, Tipo_Pagamento = :Tipo_Pagamento, Banco = :B' +
        'anco'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT DI.Registro, DI.Situacao, DI.Processo, DI.Data, DI.DI, DI' +
        '.Qtde_Adicao, DI.Tipo_Declaracao, DI.Motivo_Trans, DI.Tipo_Impor' +
        'tador, DI.Modalidade_Despacho, DI.FUNDAP, DI.URF_Entrega, DI.URF' +
        '_Despacho, DI.Modalidade_Importacao, DI.Consignatario, DI.Pais_P' +
        'rocedencia, DI.Via_Transporte, DI.Multimodal, DI.Numero_Veiculo,' +
        ' DI.Nome_Veiculo, DI.Transportador, DI.Agente_Transportador, DI.' +
        'Tipo_DocCarga, DI.Numero_DocCarga, DI.Numero_DocCargaMaster, DI.' +
        'Local_Embarque, DI.Data_Embarque, DI.Peso_Bruto, DI.Peso_Liquido' +
        ', DI.Data_Chegada, DI.Tipo_Manifesto, DI.Numero_Manifesto, DI.Re' +
        'cinto_Aduaneiro, DI.Frete_PrePaid, DI.Frete_Collect, DI.Frete_Re' +
        'al, DI.Moeda_Frete, DI.Seguro_ME, DI.Seguro_Real, DI.Moeda_Segur' +
        'o, DI.Despesas_ME, DI.Moeda_Despesas, DI.Despesas_Real, DI.Total' +
        '_MercadoriaME, DI.Origem_DI, DI.Sequencia_Retificacao, DI.Numero' +
        '_Retificacao, DI.Tipo_Pagamento, DI.Banco FROM DI'
      'WHERE DI.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      ''
      'FROM DI'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 140
    Top = 18
    object DIRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Cybersoft_ALEPH..DI.Registro'
    end
    object DISituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'Cybersoft_ALEPH..DI.Situacao'
      Size = 12
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
      Origin = 'Cybersoft_ALEPH..DI.DI'
      EditMask = '##/#######-#;0; '
      Size = 10
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
    object DIPais_Procedencia: TSmallintField
      FieldName = 'Pais_Procedencia'
      Origin = 'Cybersoft_ALEPH..DI.Pais_Procedencia'
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
    object DITransportador: TSmallintField
      FieldName = 'Transportador'
      Origin = 'Cybersoft_ALEPH..DI.Transportador'
    end
    object DIAgente_Transportador: TSmallintField
      FieldName = 'Agente_Transportador'
      Origin = 'Cybersoft_ALEPH..DI.Agente_Transportador'
    end
    object DITipo_DocCarga: TSmallintField
      FieldName = 'Tipo_DocCarga'
      Origin = 'Cybersoft_ALEPH..DI.Tipo_DocCarga'
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
  end
  object dsDI: TDataSource
    DataSet = DI
    Left = 140
    Top = 65
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
    Left = 196
    Top = 18
    object OrgaosSRFCodigo: TSmallintField
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
    Left = 196
    Top = 65
  end
  object RecintosAduaneiros: TMSQuery
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
      'FROM RecintosAduaneiros'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 292
    Top = 18
    object RecintosAduaneirosCodigo: TStringField
      DisplayWidth = 6
      FieldName = 'Codigo'
      Size = 7
    end
    object RecintosAduaneirosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 90
    end
  end
  object dsRecintosAduaneiros: TDataSource
    DataSet = RecintosAduaneiros
    Left = 292
    Top = 65
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
    Left = 404
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
    Left = 404
    Top = 65
  end
  object PO: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PO'
      
        '  (Registro, Numero, Processo, Data, Exportador, Requisitante, V' +
        'ia_Transporte, Local_Embarque, Local_Entrega, Transportador, INC' +
        'OTERMS, Condicao_Cambial, Moeda, Valor_Produtos, Taxa, Valor_Fre' +
        'te, Valor_Outros, Valor_Total, Observacao, Empresa, Pais_Origem)'
      'VALUES'
      
        '  (:Registro, :Numero, :Processo, :Data, :Exportador, :Requisita' +
        'nte, :Via_Transporte, :Local_Embarque, :Local_Entrega, :Transpor' +
        'tador, :INCOTERMS, :Condicao_Cambial, :Moeda, :Valor_Produtos, :' +
        'Taxa, :Valor_Frete, :Valor_Outros, :Valor_Total, :Observacao, :E' +
        'mpresa, :Pais_Origem)')
    SQLDelete.Strings = (
      'DELETE FROM PO'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE PO'
      'SET'
      
        '  Registro = :Registro, Numero = :Numero, Processo = :Processo, ' +
        'Data = :Data, Exportador = :Exportador, Requisitante = :Requisit' +
        'ante, Via_Transporte = :Via_Transporte, Local_Embarque = :Local_' +
        'Embarque, Local_Entrega = :Local_Entrega, Transportador = :Trans' +
        'portador, INCOTERMS = :INCOTERMS, Condicao_Cambial = :Condicao_C' +
        'ambial, Moeda = :Moeda, Valor_Produtos = :Valor_Produtos, Taxa =' +
        ' :Taxa, Valor_Frete = :Valor_Frete, Valor_Outros = :Valor_Outros' +
        ', Valor_Total = :Valor_Total, Observacao = :Observacao, Empresa ' +
        '= :Empresa, Pais_Origem = :Pais_Origem'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT PO.Registro, PO.Numero, PO.Processo, PO.Data, PO.Exportad' +
        'or, PO.Requisitante, PO.Via_Transporte, PO.Local_Embarque, PO.Lo' +
        'cal_Entrega, PO.Transportador, PO.INCOTERMS, PO.Condicao_Cambial' +
        ', PO.Moeda, PO.Valor_Produtos, PO.Taxa, PO.Valor_Frete, PO.Valor' +
        '_Outros, PO.Valor_Total, PO.Observacao, PO.Empresa, PO.Pais_Orig' +
        'em FROM PO'
      'WHERE PO.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      'FROM PO'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 484
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
    end
    object PORequisitante: TStringField
      FieldName = 'Requisitante'
      Origin = 'PO.Requisitante'
      Size = 60
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
    object POTransportador: TSmallintField
      FieldName = 'Transportador'
      Origin = 'PO.Transportador'
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
    object POValor_Produtos: TCurrencyField
      FieldName = 'Valor_Produtos'
      Origin = 'PO.Valor_Produtos'
      DisplayFormat = ',##0.00'
    end
    object POTaxa: TFloatField
      FieldName = 'Taxa'
      Origin = 'PO.Taxa'
      DisplayFormat = ',##0.0000'
    end
    object POValor_Frete: TCurrencyField
      FieldName = 'Valor_Frete'
      Origin = 'PO.Valor_Frete'
      DisplayFormat = ',##0.00'
    end
    object POValor_Outros: TCurrencyField
      FieldName = 'Valor_Outros'
      Origin = 'PO.Valor_Outros'
      DisplayFormat = ',##0.00'
    end
    object POValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'PO.Valor_Total'
      DisplayFormat = ',##0.00'
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
    object POVia_Transporte: TSmallintField
      FieldName = 'Via_Transporte'
      Origin = 'PO.Via_Transporte'
    end
    object POPais_Origem: TStringField
      FieldName = 'Pais_Origem'
      Origin = 'PO.Pais_Origem'
      FixedChar = True
      Size = 4
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
    Left = 484
    Top = 65
  end
  object POItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO POItens'
      
        '  (Registro, PO, Codigo_Mercadoria, Item, Quantidade, Valor, Qua' +
        'ntidade_Unidade, Quantidade_Volumes)'
      'VALUES'
      
        '  (:Registro, :PO, :Codigo_Mercadoria, :Item, :Quantidade, :Valo' +
        'r, :Quantidade_Unidade, :Quantidade_Volumes)')
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
        ' :Quantidade_Volumes'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT POItens.Registro, POItens.PO, POItens.Codigo_Mercadoria, ' +
        'POItens.Item, POItens.Quantidade, POItens.Valor, POItens.Quantid' +
        'ade_Unidade, POItens.Quantidade_Volumes FROM POItens'
      'WHERE POItens.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      'FROM  POItens')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 531
    Top = 18
    object POItensRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'POItens.Registro'
    end
    object POItensPO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object POItensCodigo_Mercadoria: TSmallintField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'POItens.Codigo_Mercadoria'
    end
    object POItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'POItens.Quantidade'
      DisplayFormat = ',##0.000'
    end
    object POItensValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'POItens.Valor'
      DisplayFormat = ',##0.0000'
    end
    object POItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'POItens.Item'
      DisplayFormat = '0000'
    end
    object POItensQuantidade_Unidade: TFloatField
      FieldName = 'Quantidade_Unidade'
      Origin = 'POItens.Quantidade_Unidade'
    end
    object POItensQuantidade_Volumes: TFloatField
      FieldName = 'Quantidade_Volumes'
      Origin = 'POItens.Quantidade_Volumes'
    end
    object POItensDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = Dados.Produtos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Mercadoria'
      Size = 120
      Lookup = True
    end
  end
  object dsPOItens: TDataSource
    DataSet = POItens
    Left = 533
    Top = 65
  end
end
