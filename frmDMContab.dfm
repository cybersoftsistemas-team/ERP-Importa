object dmContab: TdmContab
  OldCreateOrder = False
  Height = 287
  Width = 539
  object dsPlanoContas: TDataSource
    DataSet = PlanoContas
    Left = 49
    Top = 72
  end
  object PlanoContas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PlanoContas'
      
        '  (Conta, Codigo, Descricao, Saldo_Anterior, Debito, Credito, Si' +
        'ntetica, Natureza, LALUR, Mostrar_Balanco, Imprimir_Razao, DRE, ' +
        'Data_Exportacao, Data_Inclusao, Nivel, Conta_Grupo, Origem, Empr' +
        'esa, Tipo_Terceiros, Codigo_Terceiros, Grupo, Conta_ECF, Selecao' +
        ', CNPJ_CPF, Pessoa, Conta_Resultado, Detalha_Pessoa, Detalha_Pro' +
        'cesso, Titulo, Anterior_Empresa, Anterior_Conta, Anterior_Descri' +
        'cao, Anterior_Saldo, Anterior_IndSaldo, Anterior_Situacao)'
      'VALUES'
      
        '  (:Conta, :Codigo, :Descricao, :Saldo_Anterior, :Debito, :Credi' +
        'to, :Sintetica, :Natureza, :LALUR, :Mostrar_Balanco, :Imprimir_R' +
        'azao, :DRE, :Data_Exportacao, :Data_Inclusao, :Nivel, :Conta_Gru' +
        'po, :Origem, :Empresa, :Tipo_Terceiros, :Codigo_Terceiros, :Grup' +
        'o, :Conta_ECF, :Selecao, :CNPJ_CPF, :Pessoa, :Conta_Resultado, :' +
        'Detalha_Pessoa, :Detalha_Processo, :Titulo, :Anterior_Empresa, :' +
        'Anterior_Conta, :Anterior_Descricao, :Anterior_Saldo, :Anterior_' +
        'IndSaldo, :Anterior_Situacao)')
    SQLDelete.Strings = (
      'DELETE FROM PlanoContas'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE PlanoContas'
      'SET'
      
        '  Conta = :Conta, Codigo = :Codigo, Descricao = :Descricao, Sald' +
        'o_Anterior = :Saldo_Anterior, Debito = :Debito, Credito = :Credi' +
        'to, Sintetica = :Sintetica, Natureza = :Natureza, LALUR = :LALUR' +
        ', Mostrar_Balanco = :Mostrar_Balanco, Imprimir_Razao = :Imprimir' +
        '_Razao, DRE = :DRE, Data_Exportacao = :Data_Exportacao, Data_Inc' +
        'lusao = :Data_Inclusao, Nivel = :Nivel, Conta_Grupo = :Conta_Gru' +
        'po, Origem = :Origem, Empresa = :Empresa, Tipo_Terceiros = :Tipo' +
        '_Terceiros, Codigo_Terceiros = :Codigo_Terceiros, Grupo = :Grupo' +
        ', Conta_ECF = :Conta_ECF, Selecao = :Selecao, CNPJ_CPF = :CNPJ_C' +
        'PF, Pessoa = :Pessoa, Conta_Resultado = :Conta_Resultado, Detalh' +
        'a_Pessoa = :Detalha_Pessoa, Detalha_Processo = :Detalha_Processo' +
        ', Titulo = :Titulo, Anterior_Empresa = :Anterior_Empresa, Anteri' +
        'or_Conta = :Anterior_Conta, Anterior_Descricao = :Anterior_Descr' +
        'icao, Anterior_Saldo = :Anterior_Saldo, Anterior_IndSaldo = :Ant' +
        'erior_IndSaldo, Anterior_Situacao = :Anterior_Situacao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Conta, Codigo, Descricao, Saldo_Anterior, Debito, Credito' +
        ', Sintetica, Natureza, LALUR, Mostrar_Balanco, Imprimir_Razao, D' +
        'RE, Data_Exportacao, Data_Inclusao, Nivel, Conta_Grupo, Origem, ' +
        'Empresa, Tipo_Terceiros, Codigo_Terceiros, Grupo, Conta_ECF, Sel' +
        'ecao, CNPJ_CPF, Pessoa, Conta_Resultado, Detalha_Pessoa, Detalha' +
        '_Processo, Titulo, Anterior_Empresa, Anterior_Conta, Anterior_De' +
        'scricao, Anterior_Saldo, Anterior_IndSaldo, Anterior_Situacao FR' +
        'OM PlanoContas'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM PlanoContas'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM PlanoContas'
      ')')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT * FROM PlanoContas ORDER BY Conta')
    FetchRows = 1
    BeforePost = PlanoContasBeforePost
    BeforeDelete = PlanoContasBeforeDelete
    Left = 49
    Top = 24
    object PlanoContasConta: TStringField
      DisplayWidth = 12
      FieldName = 'Conta'
      Origin = 'PlanoContas.Conta'
      Size = 15
    end
    object PlanoContasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'PlanoContas.Codigo'
      Size = 6
    end
    object PlanoContasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'PlanoContas.Descricao'
      Size = 50
    end
    object PlanoContasSaldo_Anterior: TCurrencyField
      FieldName = 'Saldo_Anterior'
      Origin = 'PlanoContas.Saldo_Anterior'
    end
    object PlanoContasDebito: TCurrencyField
      FieldName = 'Debito'
      Origin = 'PlanoContas.Debito'
    end
    object PlanoContasCredito: TCurrencyField
      FieldName = 'Credito'
      Origin = 'PlanoContas.Credito'
    end
    object PlanoContasSintetica: TBooleanField
      FieldName = 'Sintetica'
      Origin = 'PlanoContas.Sintetica'
    end
    object PlanoContasNatureza: TStringField
      FieldName = 'Natureza'
      Origin = 'PlanoContas.Natureza'
      FixedChar = True
      Size = 1
    end
    object PlanoContasLALUR: TBooleanField
      FieldName = 'LALUR'
      Origin = 'PlanoContas.LALUR'
    end
    object PlanoContasMostrar_Balanco: TBooleanField
      FieldName = 'Mostrar_Balanco'
      Origin = 'PlanoContas.Mostrar_Balanco'
    end
    object PlanoContasImprimir_Razao: TBooleanField
      FieldName = 'Imprimir_Razao'
      Origin = 'PlanoContas.Imprimir_Razao'
      DisplayValues = 'a'
    end
    object PlanoContasData_Exportacao: TDateTimeField
      FieldName = 'Data_Exportacao'
      Origin = 'PlanoContas.Data_Exportacao'
    end
    object PlanoContasData_Inclusao: TDateTimeField
      FieldName = 'Data_Inclusao'
      Origin = 'PlanoContas.Data_Inclusao'
    end
    object PlanoContasNivel: TSmallintField
      FieldName = 'Nivel'
      Origin = 'PlanoContas.Nivel'
    end
    object PlanoContasConta_Grupo: TStringField
      FieldName = 'Conta_Grupo'
      Origin = 'PlanoContas.Conta_Grupo'
      Size = 15
    end
    object PlanoContasOrigem: TStringField
      FieldName = 'Origem'
      Origin = 'PlanoContas.Origem'
      Size = 2
    end
    object PlanoContasTipo_Terceiros: TStringField
      FieldName = 'Tipo_Terceiros'
      Origin = 'PlanoContas.Tipo_Terceiros'
      FixedChar = True
      Size = 2
    end
    object PlanoContasCodigo_Terceiros: TStringField
      FieldName = 'Codigo_Terceiros'
      Origin = 'PlanoContas.Codigo_Terceiros'
      Size = 15
    end
    object PlanoContasGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'PlanoContas.Grupo'
      Size = 1
    end
    object PlanoContasConta_ECF: TStringField
      FieldName = 'Conta_ECF'
      Origin = 'PlanoContas.Conta_ECF'
      EditMask = '#.##.##.##.##;0'
      Size = 11
    end
    object PlanoContasSelecao: TBooleanField
      FieldName = 'Selecao'
      Origin = 'PlanoContas.Selecao'
      DisplayValues = 'a'
    end
    object PlanoContasPessoa: TStringField
      FieldName = 'Pessoa'
      Origin = 'PlanoContas.Pessoa'
      Size = 1
    end
    object PlanoContasCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'PlanoContas.CNPJ_CPF'
      Size = 14
    end
    object PlanoContasConta_Resultado: TBooleanField
      FieldName = 'Conta_Resultado'
      Origin = 'PlanoContas.Conta_Resultado'
    end
    object PlanoContasDRE: TBooleanField
      FieldName = 'DRE'
    end
    object PlanoContasEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 14
    end
    object PlanoContasDetalha_Pessoa: TBooleanField
      FieldName = 'Detalha_Pessoa'
    end
    object PlanoContasDetalha_Processo: TBooleanField
      FieldName = 'Detalha_Processo'
    end
    object PlanoContasTitulo: TBooleanField
      FieldName = 'Titulo'
    end
    object PlanoContasAnterior_Empresa: TStringField
      FieldName = 'Anterior_Empresa'
      Size = 14
    end
    object PlanoContasAnterior_Conta: TStringField
      FieldName = 'Anterior_Conta'
      Size = 15
    end
    object PlanoContasAnterior_Descricao: TStringField
      FieldName = 'Anterior_Descricao'
      Size = 60
    end
    object PlanoContasAnterior_Saldo: TCurrencyField
      FieldName = 'Anterior_Saldo'
      DisplayFormat = ',##0.00'
    end
    object PlanoContasAnterior_IndSaldo: TStringField
      FieldName = 'Anterior_IndSaldo'
      FixedChar = True
      Size = 1
    end
    object PlanoContasAnterior_Situacao: TStringField
      FieldName = 'Anterior_Situacao'
      FixedChar = True
      Size = 1
    end
  end
  object dsHistoricos: TDataSource
    DataSet = Historicos
    Left = 241
    Top = 72
  end
  object Historicos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO HistoricoPadrao'
      '  (Codigo, Descricao, Complemento, Macro)'
      'VALUES'
      '  (:Codigo, :Descricao, :Complemento, :Macro)')
    SQLDelete.Strings = (
      'DELETE FROM HistoricoPadrao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE HistoricoPadrao'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Complemento = :Compl' +
        'emento, Macro = :Macro'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT HistoricoPadrao.Codigo, HistoricoPadrao.Descricao, Histor' +
        'icoPadrao.Complemento, HistoricoPadrao.Macro FROM HistoricoPadra' +
        'o'
      'WHERE HistoricoPadrao.Codigo = :Codigo ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT * FROM HistoricoPadrao ORDER BY Codigo')
    FetchRows = 1
    BeforePost = HistoricosBeforePost
    BeforeDelete = HistoricosBeforeDelete
    Left = 241
    Top = 24
    object HistoricosCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = 'HistoricoPadrao.Codigo'
    end
    object HistoricosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'HistoricoPadrao.Descricao'
      Size = 60
    end
    object HistoricosComplemento: TBooleanField
      FieldName = 'Complemento'
      Origin = 'HistoricoPadrao.Complemento'
    end
    object HistoricosMacro: TMemoField
      FieldName = 'Macro'
      Origin = 'HistoricoPadrao.Macro'
      BlobType = ftMemo
    end
  end
  object dsLancamentos: TDataSource
    DataSet = Lancamentos
    Left = 329
    Top = 72
  end
  object dsPesquisa_Lan: TDataSource
    DataSet = Pesquisa_Lan
    Left = 417
    Top = 72
  end
  object Pesquisa_Lan: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Lancamentos'
      
        '  (Data, Numero, Conta_Debito, Conta_Credito, Historico_Codigo, ' +
        'Historico_Complemento, Valor)'
      'VALUES'
      
        '  (:Data, :Numero, :Conta_Debito, :Conta_Credito, :Historico_Cod' +
        'igo, :Historico_Complemento, :Valor)')
    SQLDelete.Strings = (
      'DELETE FROM Lancamentos'
      'WHERE'
      '  Data = :Old_Data AND Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE Lancamentos'
      'SET'
      
        '  Data = :Data, Numero = :Numero, Conta_Debito = :Conta_Debito, ' +
        'Conta_Credito = :Conta_Credito, Historico_Codigo = :Historico_Co' +
        'digo, Historico_Complemento = :Historico_Complemento, Valor = :V' +
        'alor'
      'WHERE'
      '  Data = :Old_Data AND Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT Lancamentos.Data, Lancamentos.Numero, Lancamentos.Conta_D' +
        'ebito, Lancamentos.Conta_Credito, Lancamentos.Historico_Codigo, ' +
        'Lancamentos.Historico_Complemento, Lancamentos.Valor FROM Lancam' +
        'entos'
      'WHERE Lancamentos.Data = :Data AND Lancamentos.Numero = :Numero ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      
        'SELECT * FROM Lancamentos WHERE Numero = 10 ORDER BY Data, Numer' +
        'o')
    FetchRows = 1
    OnCalcFields = Pesquisa_LanCalcFields
    Left = 417
    Top = 24
    object Pesquisa_LanData: TDateTimeField
      FieldName = 'Data'
      Origin = 'Lancamentos.Data'
    end
    object Pesquisa_LanNumero: TSmallintField
      FieldName = 'Numero'
      Origin = 'Lancamentos.Numero'
    end
    object Pesquisa_LanConta_Debito: TStringField
      FieldName = 'Conta_Debito'
      Origin = 'Lancamentos.Conta_Debito'
      FixedChar = True
      Size = 6
    end
    object Pesquisa_LanConta_Credito: TStringField
      FieldName = 'Conta_Credito'
      Origin = 'Lancamentos.Conta_Credito'
      FixedChar = True
      Size = 6
    end
    object Pesquisa_LanHistorico_Codigo: TSmallintField
      FieldName = 'Historico_Codigo'
      Origin = 'Lancamentos.Historico_Codigo'
    end
    object Pesquisa_LanHistorico_Complemento: TMemoField
      FieldName = 'Historico_Complemento'
      Origin = 'Lancamentos.Historico_Complemento'
      OnGetText = Pesquisa_LanHistorico_ComplementoGetText
      BlobType = ftMemo
    end
    object Pesquisa_LanValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'Lancamentos.Valor'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object Pesquisa_LanCtaDebito: TStringField
      FieldKind = fkLookup
      FieldName = 'CtaDebito'
      LookupDataSet = PlanoContas
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Conta'
      KeyFields = 'Conta_Debito'
      Lookup = True
    end
    object Pesquisa_LanCtaCredito: TStringField
      FieldKind = fkLookup
      FieldName = 'CtaCredito'
      LookupDataSet = PlanoContas
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Conta'
      KeyFields = 'Conta_Credito'
      Lookup = True
    end
    object Pesquisa_LanHistorico_Descricao: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'Historico_Descricao'
      LookupDataSet = Historicos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Historico_Codigo'
      Size = 60
      Lookup = True
    end
    object Pesquisa_LanHistCompl: TStringField
      DisplayWidth = 80
      FieldKind = fkCalculated
      FieldName = 'HistCompl'
      Size = 80
      Calculated = True
    end
  end
  object dsPlanoContasECF: TDataSource
    DataSet = PlanoContasECF
    Left = 145
    Top = 72
  end
  object PlanoContasECF: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PlanoContasECF'
      '  (Registro, Conta, Descricao)'
      'VALUES'
      '  (:Registro, :Conta, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM PlanoContasECF'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE PlanoContasECF'
      'SET'
      '  Registro = :Registro, Conta = :Conta, Descricao = :Descricao'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT PlanoContasECF.Registro, PlanoContasECF.Conta, PlanoConta' +
        'sECF.Descricao FROM PlanoContasECF'
      'WHERE PlanoContasECF.Registro = :Registro ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT * FROM PlanoContasECF ORDER BY Conta')
    FetchRows = 1
    Left = 145
    Top = 24
    object PlanoContasECFRegistro: TSmallintField
      FieldName = 'Registro'
      Origin = 'PlanoContasECF.Registro'
    end
    object PlanoContasECFConta: TStringField
      FieldName = 'Conta'
      Origin = 'PlanoContasECF.Conta'
      EditMask = '#.##.##.##.##.##;0'
      Size = 11
    end
    object PlanoContasECFDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'PlanoContasECF.Descricao'
      Size = 180
    end
  end
  object FechamentoContabil: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO FechamentoContabil'
      '  (Ano, Mes, Nome_Mes, Fechado)'
      'VALUES'
      '  (:Ano, :Mes, :Nome_Mes, :Fechado)')
    SQLDelete.Strings = (
      'DELETE FROM FechamentoContabil'
      'WHERE'
      '  Ano = :Old_Ano AND Mes = :Old_Mes')
    SQLUpdate.Strings = (
      'UPDATE FechamentoContabil'
      'SET'
      
        '  Ano = :Ano, Mes = :Mes, Nome_Mes = :Nome_Mes, Fechado = :Fecha' +
        'do'
      'WHERE'
      '  Ano = :Old_Ano AND Mes = :Old_Mes')
    SQLRefresh.Strings = (
      
        'SELECT FechamentoContabil.Ano, FechamentoContabil.Mes, Fechament' +
        'oContabil.Nome_Mes, FechamentoContabil.Fechado FROM FechamentoCo' +
        'ntabil'
      
        'WHERE FechamentoContabil.Ano = :Ano AND FechamentoContabil.Mes =' +
        ' :Mes ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT * FROM FechamentoContabil')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 49
    Top = 125
    object FechamentoContabilAno: TSmallintField
      FieldName = 'Ano'
    end
    object FechamentoContabilMes: TSmallintField
      FieldName = 'Mes'
    end
    object FechamentoContabilNome_Mes: TStringField
      FieldName = 'Nome_Mes'
      Size = 9
    end
    object FechamentoContabilFechado: TBooleanField
      FieldName = 'Fechado'
    end
  end
  object dsFechamentoContabil: TDataSource
    DataSet = FechamentoContabil
    Left = 49
    Top = 172
  end
  object dsErros: TDataSource
    DataSet = Erros
    Left = 145
    Top = 172
  end
  object Erros: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LanErros'
      
        '  (Erro, Origem, Origem_Param, Documento, D_C, Descricao, Conta,' +
        ' Var_Conta, Beneficiario, Banco, Sel, Empresa, Modalidade, Proce' +
        'sso)'
      'VALUES'
      
        '  (:Erro, :Origem, :Origem_Param, :Documento, :D_C, :Descricao, ' +
        ':Conta, :Var_Conta, :Beneficiario, :Banco, :Sel, :Empresa, :Moda' +
        'lidade, :Processo)')
    SQLDelete.Strings = (
      'DELETE FROM LanErros'
      'WHERE'
      '  Erro = :Old_Erro')
    SQLUpdate.Strings = (
      'UPDATE LanErros'
      'SET'
      
        '  Erro = :Erro, Origem = :Origem, Origem_Param = :Origem_Param, ' +
        'Documento = :Documento, D_C = :D_C, Descricao = :Descricao, Cont' +
        'a = :Conta, Var_Conta = :Var_Conta, Beneficiario = :Beneficiario' +
        ', Banco = :Banco, Sel = :Sel, Empresa = :Empresa, Modalidade = :' +
        'Modalidade'
      'WHERE'
      '  Erro = :Old_Erro')
    SQLRefresh.Strings = (
      
        'SELECT Erro, Origem, Origem_Param, Documento, D_C, Descricao, Co' +
        'nta, Var_Conta, Beneficiario, Banco, Sel, Empresa, Modalidade FR' +
        'OM LanErros'
      'WHERE'
      '  Erro = :Erro')
    SQLLock.Strings = (
      'SELECT * FROM LanErros'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Erro = :Old_Erro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM LanErros'
      ')')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT * FROM LanErros')
    FetchRows = 1
    Left = 145
    Top = 125
    object ErrosSel: TBooleanField
      FieldName = 'Sel'
      DisplayValues = 'a'
    end
    object ErrosErro: TIntegerField
      FieldName = 'Erro'
    end
    object ErrosOrigem: TStringField
      FieldName = 'Origem'
      Size = 60
    end
    object ErrosOrigem_Param: TStringField
      FieldName = 'Origem_Param'
      Size = 60
    end
    object ErrosDocumento: TStringField
      FieldName = 'Documento'
      Size = 15
    end
    object ErrosD_C: TStringField
      FieldName = 'D_C'
      FixedChar = True
      Size = 1
    end
    object ErrosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object ErrosConta: TStringField
      FieldName = 'Conta'
      Size = 15
    end
    object ErrosVar_Conta: TStringField
      FieldName = 'Var_Conta'
      Size = 15
    end
    object ErrosBeneficiario: TStringField
      FieldName = 'Beneficiario'
      Size = 15
    end
    object ErrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 10
    end
    object ErrosBanco: TSmallintField
      FieldName = 'Banco'
    end
    object ErrosModalidade: TSmallintField
      FieldName = 'Modalidade'
    end
    object ErrosProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
  end
  object dsDREContabilGrupos: TDataSource
    DataSet = DREContabilGrupos
    Left = 241
    Top = 172
  end
  object DREContabilGrupos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO DREContabilGrupos'
      '  (Codigo, Descricao, Calculo, Totalizador, Codigo_Conta)'
      'VALUES'
      '  (:Codigo, :Descricao, :Calculo, :Totalizador, :Codigo_Conta)')
    SQLDelete.Strings = (
      'DELETE FROM DREContabilGrupos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE DREContabilGrupos'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Calculo = :Calculo, ' +
        'Totalizador = :Totalizador, Codigo_Conta = :Codigo_Conta'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT DREContabilGrupos.Codigo, DREContabilGrupos.Descricao, DR' +
        'EContabilGrupos.Calculo, DREContabilGrupos.Totalizador, DREConta' +
        'bilGrupos.Codigo_Conta FROM DREContabilGrupos'
      'WHERE DREContabilGrupos.Codigo = :Codigo ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT * FROM DREContabilGrupos')
    FetchRows = 1
    Left = 241
    Top = 125
    object DREContabilGruposCodigo: TSmallintField
      DisplayWidth = 3
      FieldName = 'Codigo'
      Origin = 'DREContabilGrupos.Codigo'
    end
    object DREContabilGruposDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DREContabilGrupos.Descricao'
      Size = 60
    end
    object DREContabilGruposCalculo: TStringField
      FieldName = 'Calculo'
      FixedChar = True
      Size = 1
    end
    object DREContabilGruposTotalizador: TSmallintField
      FieldName = 'Totalizador'
    end
    object DREContabilGruposCodigo_Conta: TStringField
      FieldName = 'Codigo_Conta'
      Size = 6
    end
  end
  object dsLotes: TDataSource
    DataSet = Lotes
    Left = 325
    Top = 172
  end
  object Lancamentos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Lancamentos'
      
        '  (Registro, Empresa, Data, Numero, Conta_Debito, Conta_Credito,' +
        ' Historico_Codigo, Historico_Complemento, Valor, Processo_Debito' +
        ', Origem, Documento, Data_Documento, Tipo_Documento, Numero_Fina' +
        'nceiro, Recriar, Lote, Processo_Credito, Tipo_Nota, Beneficiario' +
        ', Contabilizar, Beneficiario_CNPJ)'
      'VALUES'
      
        '  (:Registro, :Empresa, :Data, :Numero, :Conta_Debito, :Conta_Cr' +
        'edito, :Historico_Codigo, :Historico_Complemento, :Valor, :Proce' +
        'sso_Debito, :Origem, :Documento, :Data_Documento, :Tipo_Document' +
        'o, :Numero_Financeiro, :Recriar, :Lote, :Processo_Credito, :Tipo' +
        '_Nota, :Beneficiario, :Contabilizar, :Beneficiario_CNPJ)')
    SQLDelete.Strings = (
      'DELETE FROM Lancamentos'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE Lancamentos'
      'SET'
      
        '  Registro = :Registro, Empresa = :Empresa, Data = :Data, Numero' +
        ' = :Numero, Conta_Debito = :Conta_Debito, Conta_Credito = :Conta' +
        '_Credito, Historico_Codigo = :Historico_Codigo, Historico_Comple' +
        'mento = :Historico_Complemento, Valor = :Valor, Processo_Debito ' +
        '= :Processo_Debito, Origem = :Origem, Documento = :Documento, Da' +
        'ta_Documento = :Data_Documento, Tipo_Documento = :Tipo_Documento' +
        ', Numero_Financeiro = :Numero_Financeiro, Recriar = :Recriar, Lo' +
        'te = :Lote, Processo_Credito = :Processo_Credito, Tipo_Nota = :T' +
        'ipo_Nota, Beneficiario = :Beneficiario, Contabilizar = :Contabil' +
        'izar, Beneficiario_CNPJ = :Beneficiario_CNPJ'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Empresa, Data, Numero, Conta_Debito, Conta_Cred' +
        'ito, Historico_Codigo, Historico_Complemento, Valor, Processo_De' +
        'bito, Origem, Documento, Data_Documento, Tipo_Documento, Numero_' +
        'Financeiro, Recriar, Lote, Processo_Credito, Tipo_Nota, Benefici' +
        'ario, Contabilizar, Beneficiario_CNPJ FROM Lancamentos'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM Lancamentos'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM Lancamentos'
      ')')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT * FROM Lancamentos')
    BeforePost = LancamentosBeforePost
    BeforeDelete = LancamentosBeforeDelete
    Left = 329
    Top = 24
    object LancamentosRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object LancamentosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 14
    end
    object LancamentosLote: TLargeintField
      FieldName = 'Lote'
      DisplayFormat = '00000'
    end
    object LancamentosNumero: TIntegerField
      FieldName = 'Numero'
      DisplayFormat = '00000'
    end
    object LancamentosConta_Debito: TStringField
      FieldName = 'Conta_Debito'
      Size = 6
    end
    object LancamentosConta_Credito: TStringField
      FieldName = 'Conta_Credito'
      Size = 6
    end
    object LancamentosHistorico_Codigo: TSmallintField
      FieldName = 'Historico_Codigo'
    end
    object LancamentosHistorico_Complemento: TMemoField
      FieldName = 'Historico_Complemento'
      BlobType = ftMemo
    end
    object LancamentosValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.00'
    end
    object LancamentosDocumento: TStringField
      FieldName = 'Documento'
      Size = 15
    end
    object LancamentosRecriar: TBooleanField
      FieldName = 'Recriar'
    end
    object LancamentosDescricao_Credito: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Credito'
      LookupDataSet = PlanoContas
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Conta_Credito'
      Size = 50
      Lookup = True
    end
    object LancamentosDescricao_Debito: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao_Debito'
      LookupDataSet = PlanoContas
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Conta_Debito'
      Size = 50
      Lookup = True
    end
    object LancamentosProcesso_Debito: TStringField
      FieldName = 'Processo_Debito'
      Size = 15
    end
    object LancamentosProcesso_Credito: TStringField
      FieldName = 'Processo_Credito'
      Size = 15
    end
    object LancamentosTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
    end
    object LancamentosBeneficiario: TStringField
      FieldName = 'Beneficiario'
      Size = 10
    end
    object LancamentosContabilizar: TBooleanField
      FieldName = 'Contabilizar'
    end
    object LancamentosTipo_Documento: TStringField
      FieldName = 'Tipo_Documento'
      Size = 10
    end
    object LancamentosBeneficiario_CNPJ: TStringField
      FieldName = 'Beneficiario_CNPJ'
      Size = 14
    end
    object LancamentosData_Documento: TDateField
      FieldName = 'Data_Documento'
    end
    object LancamentosNumero_Financeiro: TIntegerField
      FieldName = 'Numero_Financeiro'
    end
    object LancamentosOrigem: TStringField
      FieldName = 'Origem'
      Size = 60
    end
    object LancamentosData: TDateField
      FieldName = 'Data'
    end
  end
  object Lotes: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Lotes'
      
        '  (Registro, Data, Lote, Empresa, Origem, Descricao, Contabiliza' +
        'r, Aberto, Recriar)'
      'VALUES'
      
        '  (:Registro, :Data, :Lote, :Empresa, :Origem, :Descricao, :Cont' +
        'abilizar, :Aberto, :Recriar)')
    SQLDelete.Strings = (
      'DELETE FROM Lotes'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE Lotes'
      'SET'
      
        '  Registro = :Registro, Data = :Data, Lote = :Lote, Empresa = :E' +
        'mpresa, Origem = :Origem, Descricao = :Descricao, Contabilizar =' +
        ' :Contabilizar, Aberto = :Aberto, Recriar = :Recriar'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Data, Lote, Empresa, Origem, Descricao, Contabi' +
        'lizar, Aberto, Recriar FROM Lotes'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM Lotes'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM Lotes'
      ')')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'select * from Lotes')
    Left = 325
    Top = 129
    object LotesRegistro: TIntegerField
      FieldName = 'Registro'
      DisplayFormat = '00000000'
    end
    object LotesLote: TIntegerField
      FieldName = 'Lote'
      DisplayFormat = '00000'
    end
    object LotesEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 14
    end
    object LotesOrigem: TStringField
      FieldName = 'Origem'
      Size = 15
    end
    object LotesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object LotesContabilizar: TBooleanField
      FieldName = 'Contabilizar'
      DisplayValues = 'a'
    end
    object LotesAberto: TBooleanField
      FieldName = 'Aberto'
      DisplayValues = 'a'
    end
    object LotesRecriar: TBooleanField
      FieldName = 'Recriar'
      DisplayValues = 'a'
    end
    object LotesData: TDateTimeField
      FieldName = 'Data'
    end
  end
end
