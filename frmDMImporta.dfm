object dmImporta: TdmImporta
  OldCreateOrder = False
  Height = 265
  Width = 681
  object Banco_Origem: TMSConnection
    Database = 'Cybersoft_ABRASIL_SANTACATARINA'
    ConnectionTimeout = 3
    Options.KeepDesignConnected = False
    Username = 'sa'
    LoginPrompt = False
    Left = 43
    Top = 11
    EncryptedPassword = '9CFF86FF9DFF9AFF8DFF8CFF90FF99FF8BFFBFFFCEFFCDFFCCFF'
  end
  object iPagarReceber: TMSQuery
    Connection = Banco_Origem
    FetchRows = 1
    Left = 126
    Top = 9
  end
  object dsiPagarReceber: TDataSource
    DataSet = iPagarReceber
    Left = 124
    Top = 57
  end
  object iBeneficiario: TMSQuery
    Connection = Banco_Origem
    SQL.Strings = (
      
        'SELECT '#39'C-'#39'+CAST(Codigo AS VARCHAR(10)) AS Codigo, Nome, CNPJ, '#39 +
        'C'#39' AS Tipo FROM Clientes'
      'UNION ALL'
      
        'SELECT '#39'F-'#39'+CAST(Codigo AS VARCHAR(10)), Nome, CNPJ, '#39'F'#39' FROM Fo' +
        'rnecedores'
      'UNION ALL'
      
        'SELECT '#39'O-'#39'+RTRIM(Codigo), Nome,'#39#39','#39'O'#39' FROM Cybersoft_Cadastros.' +
        'dbo.OrgaosPublicos'
      'UNION ALL'
      'SELECT '#39'B-'#39'+CAST(Codigo AS VARCHAR(10)), Nome,'#39#39','#39'B'#39' FROM Bancos'
      'ORDER BY Nome'
      '')
    Left = 207
    Top = 9
    object iBeneficiarioCodigo: TStringField
      DisplayWidth = 5
      FieldName = 'Codigo'
      Origin = '.'
      ReadOnly = True
      Size = 12
    end
    object iBeneficiarioNome: TStringField
      DisplayWidth = 30
      FieldName = 'Nome'
      Origin = '.'
      Size = 60
    end
    object iBeneficiarioCNPJ: TStringField
      DisplayWidth = 10
      FieldName = 'CNPJ'
      Origin = 'Clientes.CNPJ'
      Size = 14
    end
    object iBeneficiarioTipo: TStringField
      FieldName = 'Tipo'
      Origin = '.'
      ReadOnly = True
      Size = 1
    end
  end
  object dsiBeneficiario: TDataSource
    DataSet = iBeneficiario
    Left = 206
    Top = 57
  end
  object iProcessos: TMSQuery
    Connection = Banco_Origem
    FetchRows = 1
    Left = 279
    Top = 9
  end
  object dsiProcessos: TDataSource
    DataSet = iProcessos
    Left = 278
    Top = 57
  end
  object iClassificacao: TMSQuery
    Connection = Banco_Origem
    FetchRows = 1
    Left = 359
    Top = 9
  end
  object dsiClassificacao: TDataSource
    DataSet = iClassificacao
    Left = 358
    Top = 57
  end
  object iClientes: TMSQuery
    Connection = Banco_Origem
    FetchRows = 1
    Left = 428
    Top = 9
  end
  object dsiClientes: TDataSource
    DataSet = iClientes
    Left = 430
    Top = 57
  end
  object iFornecedores: TMSQuery
    Connection = Banco_Origem
    FetchRows = 1
    Left = 500
    Top = 9
  end
  object dsiFornecedores: TDataSource
    DataSet = iFornecedores
    Left = 502
    Top = 57
  end
  object iCentroCusto: TMSQuery
    Connection = Banco_Origem
    FetchRows = 1
    Left = 588
    Top = 9
  end
  object dsiCentroCusto: TDataSource
    DataSet = iCentroCusto
    Left = 590
    Top = 57
  end
  object iProcessosDOC: TMSQuery
    Connection = Banco_Origem
    FetchRows = 1
    Left = 28
    Top = 113
  end
  object dsiProcessosDOC: TDataSource
    DataSet = iProcessosDOC
    Left = 30
    Top = 161
  end
  object iOrgaos: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 124
    Top = 113
  end
  object dsiOrgaos: TDataSource
    DataSet = iOrgaos
    Left = 126
    Top = 161
  end
  object iCodigo: TMSQuery
    Connection = Banco_Origem
    FetchRows = 1
    Left = 276
    Top = 113
  end
  object iProdutos: TMSQuery
    Connection = Banco_Origem
    FetchRows = 1
    Left = 196
    Top = 113
  end
  object dsiProdutos: TDataSource
    DataSet = iProdutos
    Left = 198
    Top = 161
  end
end
