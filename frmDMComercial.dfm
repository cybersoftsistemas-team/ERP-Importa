object dmComercial: TdmComercial
  OldCreateOrder = False
  Height = 390
  Width = 708
  object TabelaComissoes: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TabelaComissoes'
      
        '  (Codigo, Descricao, Comissao, Desconto, Percentual_Venda, Desa' +
        'tivada, Tabela_Padrao)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Comissao, :Desconto, :Percentual_Venda,' +
        ' :Desativada, :Tabela_Padrao)')
    SQLDelete.Strings = (
      'DELETE FROM TabelaComissoes'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE TabelaComissoes'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Comissao = :Comissao' +
        ', Desconto = :Desconto, Percentual_Venda = :Percentual_Venda, De' +
        'sativada = :Desativada, Tabela_Padrao = :Tabela_Padrao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Codigo, Descricao, Comissao, Desconto, Percentual_Venda, ' +
        'Desativada, Tabela_Padrao FROM TabelaComissoes'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM TabelaComissoes'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM TabelaComissoes'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM TabelaComissoes')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 36
    Top = 22
    object TabelaComissoesCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'TabelaComissoes.Codigo'
    end
    object TabelaComissoesDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'TabelaComissoes.Descricao'
      Size = 50
    end
    object TabelaComissoesComissao: TFloatField
      FieldName = 'Comissao'
      Origin = 'TabelaComissoes.Comissao'
      DisplayFormat = ',##0.0000'
      EditFormat = ',#00.0000'
    end
    object TabelaComissoesDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'TabelaComissoes.Desconto'
      DisplayFormat = ',##0.0000'
      EditFormat = ',#00.0000'
    end
    object TabelaComissoesPercentual_Venda: TFloatField
      FieldName = 'Percentual_Venda'
      DisplayFormat = ',##0.0000'
      EditFormat = ',#00.0000'
    end
    object TabelaComissoesDesativada: TBooleanField
      FieldName = 'Desativada'
    end
    object TabelaComissoesTabela_Padrao: TBooleanField
      FieldName = 'Tabela_Padrao'
    end
  end
  object dsTabelaComissoes: TDataSource
    DataSet = TabelaComissoes
    Left = 36
    Top = 73
  end
  object EComm: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ECommerce'
      
        '  (Registro, Ativo, Tempo_Verificacao, URL, Consumer_Key, consum' +
        'er_Secret, Token, Servico)'
      'VALUES'
      
        '  (:Registro, :Ativo, :Tempo_Verificacao, :URL, :Consumer_Key, :' +
        'consumer_Secret, :Token, :Servico)')
    SQLDelete.Strings = (
      'DELETE FROM ECommerce'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE ECommerce'
      'SET'
      
        '  Registro = :Registro, Ativo = :Ativo, Tempo_Verificacao = :Tem' +
        'po_Verificacao, URL = :URL, Consumer_Key = :Consumer_Key, consum' +
        'er_Secret = :consumer_Secret, Token = :Token, Servico = :Servico'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Ativo, Tempo_Verificacao, URL, Consumer_Key, co' +
        'nsumer_Secret, Token, Servico FROM ECommerce'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM ECommerce'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM ECommerce'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ECommerce')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 126
    Top = 25
    object ECommRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object ECommAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object ECommTempo_Verificacao: TSmallintField
      FieldName = 'Tempo_Verificacao'
    end
    object ECommURL: TStringField
      FieldName = 'URL'
      Size = 160
    end
    object ECommConsumer_Key: TStringField
      FieldName = 'Consumer_Key'
      Size = 60
    end
    object ECommconsumer_Secret: TStringField
      FieldName = 'consumer_Secret'
      Size = 60
    end
    object ECommToken: TMemoField
      FieldName = 'Token'
      BlobType = ftMemo
    end
  end
  object dsEComm: TDataSource
    DataSet = EComm
    Left = 124
    Top = 73
  end
  object PedidoCompra: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PedidoCompra'
      
        '  (Registro, Pedido, Data_Pedido, Empresa, Fornecedor, Usuario, ' +
        'Solicitante, Comprador, Gerente, Diretor, Descricao, Condicao_Pg' +
        'to, Parcelas, Itens, Total_Produtos, Total_IPI, Total_ICMS, Tota' +
        'l_Geral, Obs_Pedido, Obs_Entrega, Fechado, Cancelado, Referencia' +
        '_Cliente)'
      'VALUES'
      
        '  (:Registro, :Pedido, :Data_Pedido, :Empresa, :Fornecedor, :Usu' +
        'ario, :Solicitante, :Comprador, :Gerente, :Diretor, :Descricao, ' +
        ':Condicao_Pgto, :Parcelas, :Itens, :Total_Produtos, :Total_IPI, ' +
        ':Total_ICMS, :Total_Geral, :Obs_Pedido, :Obs_Entrega, :Fechado, ' +
        ':Cancelado, :Referencia_Cliente)')
    SQLDelete.Strings = (
      'DELETE FROM PedidoCompra'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE PedidoCompra'
      'SET'
      
        '  Registro = :Registro, Pedido = :Pedido, Data_Pedido = :Data_Pe' +
        'dido, Empresa = :Empresa, Fornecedor = :Fornecedor, Usuario = :U' +
        'suario, Solicitante = :Solicitante, Comprador = :Comprador, Gere' +
        'nte = :Gerente, Diretor = :Diretor, Descricao = :Descricao, Cond' +
        'icao_Pgto = :Condicao_Pgto, Parcelas = :Parcelas, Itens = :Itens' +
        ', Total_Produtos = :Total_Produtos, Total_IPI = :Total_IPI, Tota' +
        'l_ICMS = :Total_ICMS, Total_Geral = :Total_Geral, Obs_Pedido = :' +
        'Obs_Pedido, Obs_Entrega = :Obs_Entrega, Fechado = :Fechado, Canc' +
        'elado = :Cancelado, Referencia_Cliente = :Referencia_Cliente'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Pedido, Data_Pedido, Empresa, Fornecedor, Usuar' +
        'io, Solicitante, Comprador, Gerente, Diretor, Descricao, Condica' +
        'o_Pgto, Parcelas, Itens, Total_Produtos, Total_IPI, Total_ICMS, ' +
        'Total_Geral, Obs_Pedido, Obs_Entrega, Fechado, Cancelado, Refere' +
        'ncia_Cliente FROM PedidoCompra'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM PedidoCompra'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM PedidoCompra'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM PedidoCompra')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 206
    Top = 25
    object PedidoCompraRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object PedidoCompraPedido: TIntegerField
      Alignment = taCenter
      FieldName = 'Pedido'
      DisplayFormat = '00000000'
    end
    object PedidoCompraData_Pedido: TDateTimeField
      FieldName = 'Data_Pedido'
    end
    object PedidoCompraEmpresa: TSmallintField
      FieldName = 'Empresa'
    end
    object PedidoCompraFornecedor: TSmallintField
      FieldName = 'Fornecedor'
    end
    object PedidoCompraUsuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object PedidoCompraSolicitante: TStringField
      FieldName = 'Solicitante'
      Size = 15
    end
    object PedidoCompraComprador: TStringField
      FieldName = 'Comprador'
      Size = 15
    end
    object PedidoCompraGerente: TStringField
      FieldName = 'Gerente'
      Size = 15
    end
    object PedidoCompraDiretor: TStringField
      FieldName = 'Diretor'
      Size = 15
    end
    object PedidoCompraDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object PedidoCompraParcelas2: TSmallintField
      FieldName = 'Parcelas'
    end
    object PedidoCompraItens2: TSmallintField
      FieldName = 'Itens'
    end
    object PedidoCompraTotal_Produtos: TCurrencyField
      FieldName = 'Total_Produtos'
      DisplayFormat = ',##0.00'
    end
    object PedidoCompraTotal_IPI: TCurrencyField
      FieldName = 'Total_IPI'
      DisplayFormat = ',##0.00'
    end
    object PedidoCompraTotal_ICMS: TCurrencyField
      FieldName = 'Total_ICMS'
      DisplayFormat = ',##0.00'
    end
    object PedidoCompraTotal_Geral: TCurrencyField
      FieldName = 'Total_Geral'
      DisplayFormat = ',##0.00'
    end
    object PedidoCompraObs_Pedido: TMemoField
      FieldName = 'Obs_Pedido'
      BlobType = ftMemo
    end
    object PedidoCompraObs_Entrega: TMemoField
      FieldName = 'Obs_Entrega'
      BlobType = ftMemo
    end
    object PedidoCompraSolicitante_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Solicitante_Nome'
      LookupDataSet = Dados.Usuarios
      LookupKeyFields = 'Matricula'
      LookupResultField = 'Nome'
      KeyFields = 'Solicitante'
      Size = 60
      Lookup = True
    end
    object PedidoCompraFornecedor_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Fornecedor_Nome'
      LookupDataSet = Dados.Fornecedores
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Fornecedor'
      Size = 60
      Lookup = True
    end
    object PedidoCompraFechado: TBooleanField
      FieldName = 'Fechado'
    end
    object PedidoCompraCondicao_Pgto: TSmallintField
      FieldName = 'Condicao_Pgto'
    end
    object PedidoCompraCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object PedidoCompraEmail: TStringField
      FieldKind = fkLookup
      FieldName = 'Email'
      LookupDataSet = Dados.Usuarios
      LookupKeyFields = 'Matricula'
      LookupResultField = 'Email'
      KeyFields = 'Usuario'
      Size = 120
      Lookup = True
    end
    object PedidoCompraReferencia_Cliente: TStringField
      FieldName = 'Referencia_Cliente'
      Size = 15
    end
  end
  object dsPedidoCompra: TDataSource
    DataSet = PedidoCompra
    Left = 204
    Top = 73
  end
  object PedidoCompraItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PedidoCompraItens'
      
        '  (Registro, Pedido, Item, Codigo, Descricao, Data_Entrega, Quan' +
        'tidade, Unidade, Valor_Unitario, Aliquota_IPI, Aliquota_ICMS)'
      'VALUES'
      
        '  (:Registro, :Pedido, :Item, :Codigo, :Descricao, :Data_Entrega' +
        ', :Quantidade, :Unidade, :Valor_Unitario, :Aliquota_IPI, :Aliquo' +
        'ta_ICMS)')
    SQLDelete.Strings = (
      'DELETE FROM PedidoCompraItens'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE PedidoCompraItens'
      'SET'
      
        '  Registro = :Registro, Pedido = :Pedido, Item = :Item, Codigo =' +
        ' :Codigo, Descricao = :Descricao, Data_Entrega = :Data_Entrega, ' +
        'Quantidade = :Quantidade, Unidade = :Unidade, Valor_Unitario = :' +
        'Valor_Unitario, Aliquota_IPI = :Aliquota_IPI, Aliquota_ICMS = :A' +
        'liquota_ICMS'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Pedido, Item, Codigo, Descricao, Data_Entrega, ' +
        'Quantidade, Unidade, Valor_Unitario, Aliquota_IPI, Aliquota_ICMS' +
        ' FROM PedidoCompraItens'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM PedidoCompraItens'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM PedidoCompraItens'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM PedidoCompraItens')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    OnCalcFields = PedidoCompraItensCalcFields
    Left = 318
    Top = 25
    object PedidoCompraItensRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object PedidoCompraItensPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object PedidoCompraItensItem: TSmallintField
      FieldName = 'Item'
    end
    object PedidoCompraItensCodigo: TSmallintField
      FieldName = 'Codigo'
    end
    object PedidoCompraItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object PedidoCompraItensData_Entrega: TDateTimeField
      FieldName = 'Data_Entrega'
    end
    object PedidoCompraItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = ',##0.000'
    end
    object PedidoCompraItensUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 3
    end
    object PedidoCompraItensValor_Unitario: TCurrencyField
      FieldName = 'Valor_Unitario'
      DisplayFormat = ',##0.00'
    end
    object PedidoCompraItensAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      DisplayFormat = ',##0.00%'
    end
    object PedidoCompraItensAliquota_ICMS: TFloatField
      FieldName = 'Aliquota_ICMS'
      DisplayFormat = ',##0.00%'
    end
    object PedidoCompraItensValor_Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor_Total'
      DisplayFormat = ',##0.00'
      Calculated = True
    end
  end
  object dsPedidoCompraItens: TDataSource
    DataSet = PedidoCompraItens
    Left = 316
    Top = 73
  end
  object PedidoCompraParcelas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PedidoCompraParcelas'
      
        '  (Registro, Pedido, Parcela, Data_Vencimento, Percentual_Pgto, ' +
        'Valor_Parcela)'
      'VALUES'
      
        '  (:Registro, :Pedido, :Parcela, :Data_Vencimento, :Percentual_P' +
        'gto, :Valor_Parcela)')
    SQLDelete.Strings = (
      'DELETE FROM PedidoCompraParcelas'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE PedidoCompraParcelas'
      'SET'
      
        '  Registro = :Registro, Pedido = :Pedido, Parcela = :Parcela, Da' +
        'ta_Vencimento = :Data_Vencimento, Percentual_Pgto = :Percentual_' +
        'Pgto, Valor_Parcela = :Valor_Parcela'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Pedido, Parcela, Data_Vencimento, Percentual_Pg' +
        'to, Valor_Parcela FROM PedidoCompraParcelas'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM PedidoCompraParcelas'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM PedidoCompraParcelas'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM PedidoCompraParcelas')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 446
    Top = 25
    object PedidoCompraParcelasRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object PedidoCompraParcelasPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object PedidoCompraParcelasParcela: TSmallintField
      FieldName = 'Parcela'
    end
    object PedidoCompraParcelasData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object PedidoCompraParcelasPercentual_Pgto: TFloatField
      FieldName = 'Percentual_Pgto'
    end
    object PedidoCompraParcelasValor_Parcela: TCurrencyField
      FieldName = 'Valor_Parcela'
    end
  end
  object dsPedidoCompraParcelas: TDataSource
    DataSet = PedidoCompraParcelas
    Left = 444
    Top = 73
  end
end
